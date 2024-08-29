conda create --name mmdet2d python=3.8 -y
conda activate mmdet2d

pip install torch==2.1.2 torchvision==0.16.2 torchaudio==2.1.2
pip install -U openmim
mim install mmengine
pip install mmcv==2.1.0 -f https://download.openmmlab.com/mmcv/dist/cpu/torch2.1/index.html

git clone https://github.com/open-mmlab/mmdetection.git
cd mmdetection
pip install -v -e .

# mim download mmdet --config rtmdet_tiny_8xb32-300e_coco --dest .
# python demo/image_demo.py demo/large_image.jpg rtmdet_tiny_8xb32-300e_coco.py --weights rtmdet_tiny_8xb32-300e_coco_20220902_112414-78e30dcc.pth --device cpu