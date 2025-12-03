@interface AVCaptureDevice(CAMCaptureEngine)
- (id)cam_formatForPortraitFrontFacingZoomed;
- (id)cam_frontFacingFormatForVideoConfiguration:()CAMCaptureEngine videoEncodingBehavior:colorSpace:dynamicAspectRatio:useSquareFormat:requireVideoBinned:;
- (id)cam_highestQualityFormatForConfiguration:()CAMCaptureEngine colorSpace:enableProResVideo:requireVideoBinned:;
- (id)cameraPanoramaFormatForConfiguration:()CAMCaptureEngine;
- (void)cameraVideoFormat:()CAMCaptureEngine orPreset:forVideoConfiguration:videoEncodingBehavior:colorSpace:requireVideoBinned:;
@end

@implementation AVCaptureDevice(CAMCaptureEngine)

- (void)cameraVideoFormat:()CAMCaptureEngine orPreset:forVideoConfiguration:videoEncodingBehavior:colorSpace:requireVideoBinned:
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __138__AVCaptureDevice_CAMCaptureEngine__cameraVideoFormat_orPreset_forVideoConfiguration_videoEncodingBehavior_colorSpace_requireVideoBinned___block_invoke;
  aBlock[3] = &unk_1E76FAF08;
  aBlock[4] = self;
  aBlock[5] = a7;
  v22 = a6 == 2;
  v23 = a8;
  if (a6 == 2)
  {
    v11 = 1;
  }

  else
  {
    v11 = (a7 < 4) & (0xDu >> (a7 & 0xF));
  }

  v12 = _Block_copy(aBlock);
  v13 = v12;
  v14 = 0;
  if (a5 <= 7)
  {
    if (a5 > 4)
    {
      if (a5 == 5)
      {
        if (v11)
        {
          v16 = *(v12 + 2);
          goto LABEL_11;
        }

        v18 = MEMORY[0x1E6986AD0];
      }

      else if (a5 == 6)
      {
        if (v11)
        {
          v16 = *(v12 + 2);
          goto LABEL_11;
        }

        v18 = MEMORY[0x1E6986AC0];
      }

      else
      {
        if (v11)
        {
          v16 = *(v12 + 2);
          goto LABEL_11;
        }

        v18 = MEMORY[0x1E6986AC8];
      }
    }

    else
    {
      if ((a5 - 2) < 3)
      {
        goto LABEL_10;
      }

      if (!a5)
      {
        if (v11)
        {
          v17 = (*(v12 + 2))(v12, 7);
          if (!v17)
          {
            v17 = v13[2](v13, 6);
          }

          goto LABEL_12;
        }

LABEL_39:
        v18 = MEMORY[0x1E6986AE0];
        goto LABEL_44;
      }

      v15 = 0;
      if (a5 != 1)
      {
        goto LABEL_45;
      }

      if (v11)
      {
        v16 = *(v12 + 2);
        goto LABEL_11;
      }

      v18 = MEMORY[0x1E6986AE8];
    }

LABEL_44:
    v14 = *v18;
    v15 = 0;
    goto LABEL_45;
  }

  if (a5 > 9999)
  {
    if (a5 > 10002)
    {
      if (a5 == 10003)
      {
        v18 = MEMORY[0x1E6986AD8];
      }

      else if (a5 == 10004)
      {
        v18 = MEMORY[0x1E6986B10];
      }

      else
      {
        v15 = 0;
        if (a5 != 10005)
        {
          goto LABEL_45;
        }

        v18 = MEMORY[0x1E6986B18];
      }

      goto LABEL_44;
    }

    if (a5 != 10000)
    {
      if (a5 == 10001)
      {
        v18 = MEMORY[0x1E6986B00];
      }

      else
      {
        v18 = MEMORY[0x1E6986AF8];
      }

      goto LABEL_44;
    }

    goto LABEL_39;
  }

  v15 = 0;
  if ((a5 - 8) < 7)
  {
LABEL_10:
    v16 = *(v12 + 2);
LABEL_11:
    v17 = v16();
LABEL_12:
    v15 = v17;
    v14 = 0;
  }

LABEL_45:
  if (a3)
  {
    v19 = v15;
    *a3 = v15;
  }

  if (a4)
  {
    v20 = v14;
    *a4 = v14;
  }
}

- (id)cam_highestQualityFormatForConfiguration:()CAMCaptureEngine colorSpace:enableProResVideo:requireVideoBinned:
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__9;
  v20 = __Block_byref_object_dispose__9;
  v21 = 0;
  formats = [self formats];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __126__AVCaptureDevice_CAMCaptureEngine__cam_highestQualityFormatForConfiguration_colorSpace_enableProResVideo_requireVideoBinned___block_invoke;
  v13[3] = &unk_1E76FAF30;
  v13[5] = a3;
  v13[6] = a4;
  v14 = a5;
  v15 = a6;
  v13[4] = &v16;
  [formats enumerateObjectsUsingBlock:v13];
  v11 = v17[5];

  _Block_object_dispose(&v16, 8);

  return v11;
}

- (id)cameraPanoramaFormatForConfiguration:()CAMCaptureEngine
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__9;
  v16 = __Block_byref_object_dispose__9;
  v17 = 0;
  formats = [self formats];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __74__AVCaptureDevice_CAMCaptureEngine__cameraPanoramaFormatForConfiguration___block_invoke;
  v9[3] = &unk_1E76FAF58;
  v6 = v4;
  v10 = v6;
  v11 = &v12;
  [formats enumerateObjectsUsingBlock:v9];
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)cam_formatForPortraitFrontFacingZoomed
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__9;
  v9 = __Block_byref_object_dispose__9;
  v10 = 0;
  formats = [self formats];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __75__AVCaptureDevice_CAMCaptureEngine__cam_formatForPortraitFrontFacingZoomed__block_invoke;
  v4[3] = &unk_1E76FAF80;
  v4[4] = &v5;
  [formats enumerateObjectsUsingBlock:v4];
  v2 = v6[5];

  _Block_object_dispose(&v5, 8);

  return v2;
}

- (id)cam_frontFacingFormatForVideoConfiguration:()CAMCaptureEngine videoEncodingBehavior:colorSpace:dynamicAspectRatio:useSquareFormat:requireVideoBinned:
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__9;
  v25 = __Block_byref_object_dispose__9;
  v26 = 0;
  formats = [self formats];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __167__AVCaptureDevice_CAMCaptureEngine__cam_frontFacingFormatForVideoConfiguration_videoEncodingBehavior_colorSpace_dynamicAspectRatio_useSquareFormat_requireVideoBinned___block_invoke;
  v17[3] = &unk_1E76FAFA8;
  v18 = a4 == 2;
  v17[6] = a5;
  v17[7] = a6;
  v19 = a7;
  v20 = a8;
  v17[4] = &v21;
  v17[5] = a3;
  [formats enumerateObjectsUsingBlock:v17];
  v15 = v22[5];

  _Block_object_dispose(&v21, 8);

  return v15;
}

@end