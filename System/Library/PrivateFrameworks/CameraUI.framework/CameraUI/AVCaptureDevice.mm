@interface AVCaptureDevice
@end

@implementation AVCaptureDevice

uint64_t __126__AVCaptureDevice_CAMCaptureEngine__cam_highestQualityFormatForConfiguration_colorSpace_enableProResVideo_requireVideoBinned___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  v4 = [v9 cam_supportsVideoConfiguration:*(a1 + 40) colorSpace:*(a1 + 48) enableProResVideo:*(a1 + 56) requireVideoBinned:*(a1 + 57)];
  v5 = v9;
  if (v4)
  {
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    if (v7)
    {
      v4 = [v7 cam_compareUsingQuality:v9];
      v5 = v9;
      if (v4 != -1)
      {
        goto LABEL_6;
      }

      v6 = *(*(a1 + 32) + 8);
    }

    objc_storeStrong((v6 + 40), a2);
    v5 = v9;
  }

LABEL_6:

  return MEMORY[0x1EEE66BB8](v4, v5);
}

void __74__AVCaptureDevice_CAMCaptureEngine__cameraPanoramaFormatForConfiguration___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if ([v7 cam_supportsPanoramaConfiguration:*(a1 + 32)])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

void __75__AVCaptureDevice_CAMCaptureEngine__cam_formatForPortraitFrontFacingZoomed__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if ([v7 cam_supportsPortraitFrontFacingZoomed])
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

void __167__AVCaptureDevice_CAMCaptureEngine__cam_frontFacingFormatForVideoConfiguration_videoEncodingBehavior_colorSpace_dynamicAspectRatio_useSquareFormat_requireVideoBinned___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if ([v7 cam_supportsFrontFacingFormatForVideoConfiguration:*(a1 + 40) colorSpace:*(a1 + 48) enableProResVideo:*(a1 + 64) dynamicAspectRatio:*(a1 + 56) useSquareFormat:*(a1 + 65) requireVideoBinned:*(a1 + 66)])
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

@end