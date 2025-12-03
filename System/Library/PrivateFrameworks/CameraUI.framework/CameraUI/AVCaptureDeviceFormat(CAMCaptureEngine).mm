@interface AVCaptureDeviceFormat(CAMCaptureEngine)
- (BOOL)cam_supportsPortraitFrontFacingZoomed;
- (double)cam_maximumFrameRate;
- (uint64_t)cam_compareUsingBinning:()CAMCaptureEngine;
- (uint64_t)cam_compareUsingDimensions:()CAMCaptureEngine;
- (uint64_t)cam_compareUsingMaximumFramerate:()CAMCaptureEngine;
- (uint64_t)cam_compareUsingQuality:()CAMCaptureEngine;
- (uint64_t)cam_supportsFrameDuration:()CAMCaptureEngine;
- (uint64_t)cam_supportsFrameRate:()CAMCaptureEngine;
- (uint64_t)cam_supportsFrameRate:()CAMCaptureEngine width:height:colorSpace:enableProResVideo:requireVideoBinned:;
- (uint64_t)cam_supportsFrontFacingFormatForVideoConfiguration:()CAMCaptureEngine colorSpace:enableProResVideo:dynamicAspectRatio:useSquareFormat:requireVideoBinned:;
- (uint64_t)cam_supportsPanoramaConfiguration:()CAMCaptureEngine;
- (uint64_t)cam_supportsVideoConfiguration:()CAMCaptureEngine colorSpace:enableProResVideo:requireVideoBinned:;
@end

@implementation AVCaptureDeviceFormat(CAMCaptureEngine)

- (uint64_t)cam_supportsVideoConfiguration:()CAMCaptureEngine colorSpace:enableProResVideo:requireVideoBinned:
{
  v9 = 0.0;
  if (a3 <= 8)
  {
    if (a3 <= 3)
    {
      if (a3 != 1)
      {
        if (a3 != 2)
        {
          if (a3 != 3)
          {
            goto LABEL_24;
          }

          goto LABEL_15;
        }

        goto LABEL_20;
      }

LABEL_21:
      v11 = 0x404E000000000000;
      goto LABEL_22;
    }

    if ((a3 - 5) >= 3)
    {
      if (a3 != 4)
      {
        if (a3 != 8)
        {
          goto LABEL_24;
        }

LABEL_15:
        v11 = 0x406E000000000000;
LABEL_22:
        v9 = *&v11;
        goto LABEL_24;
      }

LABEL_20:
      v11 = 0x405E000000000000;
      goto LABEL_22;
    }

LABEL_19:
    v9 = 30.0;
    goto LABEL_24;
  }

  if (a3 > 12)
  {
    switch(a3)
    {
      case 13:
        goto LABEL_20;
      case 14:
        v10 = 100.0;
        goto LABEL_30;
      case 10003:
        goto LABEL_19;
    }
  }

  else
  {
    if ((a3 - 11) < 2)
    {
      v9 = 25.0;
      goto LABEL_24;
    }

    if (a3 == 9)
    {
      goto LABEL_21;
    }

    v10 = 24.0;
    if (a3 == 10)
    {
LABEL_30:
      v12 = 3840;
      v13 = 2160;
      v9 = v10;
      return [self cam_supportsFrameRate:v12 width:v13 height:a4 colorSpace:a5 enableProResVideo:a6 requireVideoBinned:v9];
    }
  }

LABEL_24:
  if (a3 > 0xE)
  {
    goto LABEL_33;
  }

  if (((1 << a3) & 0x7620) != 0)
  {
    v10 = v9;
    goto LABEL_30;
  }

  if (((1 << a3) & 0x992) != 0)
  {
    v12 = 1920;
    v13 = 1080;
    return [self cam_supportsFrameRate:v12 width:v13 height:a4 colorSpace:a5 enableProResVideo:a6 requireVideoBinned:v9];
  }

  if (((1 << a3) & 0x4C) != 0)
  {
    v12 = 1280;
    v13 = 720;
    return [self cam_supportsFrameRate:v12 width:v13 height:a4 colorSpace:a5 enableProResVideo:a6 requireVideoBinned:v9];
  }

LABEL_33:
  if (a3 == 10003)
  {
    v13 = 480;
  }

  else
  {
    v13 = 0;
  }

  if (a3 == 10003)
  {
    v12 = 640;
  }

  else
  {
    v12 = 0;
  }

  return [self cam_supportsFrameRate:v12 width:v13 height:a4 colorSpace:a5 enableProResVideo:a6 requireVideoBinned:v9];
}

- (uint64_t)cam_supportsFrameRate:()CAMCaptureEngine width:height:colorSpace:enableProResVideo:requireVideoBinned:
{
  formatDescription = [self formatDescription];
  if (CMFormatDescriptionGetMediaType(formatDescription) != 1986618469)
  {
    return 0;
  }

  v24 = 0;
  v16 = [CAMCaptureConversions AVCaptureColorSpaceForColorSpace:a6 hasValidConversion:&v24];
  if (v24 == 1)
  {
    v17 = v16;
    supportedColorSpaces = [self supportedColorSpaces];
    v19 = [MEMORY[0x1E696AD98] numberWithInteger:v17];
    v20 = [supportedColorSpaces containsObject:v19];

    if (!v20)
    {
      return 0;
    }
  }

  if (a7)
  {
    v21 = 2016686642;
    if (!a8)
    {
      goto LABEL_12;
    }
  }

  else if (a6 > 3)
  {
    v21 = 0;
    if (!a8)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v21 = *&aV024v024024x22[4 * a6];
    if (!a8)
    {
      goto LABEL_12;
    }
  }

  result = [self isVideoBinned];
  if (!result)
  {
    return result;
  }

LABEL_12:
  if (CMFormatDescriptionGetMediaSubType(formatDescription) != v21)
  {
    return 0;
  }

  if (!a4)
  {
    return [self cam_supportsFrameRate:a2];
  }

  if (!a5)
  {
    return [self cam_supportsFrameRate:a2];
  }

  Dimensions = CMVideoFormatDescriptionGetDimensions(formatDescription);
  result = 0;
  if (a5 == Dimensions >> 32 && Dimensions == a4)
  {
    return [self cam_supportsFrameRate:a2];
  }

  return result;
}

- (uint64_t)cam_supportsFrameRate:()CAMCaptureEngine
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  videoSupportedFrameRateRanges = [self videoSupportedFrameRateRanges];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __65__AVCaptureDeviceFormat_CAMCaptureEngine__cam_supportsFrameRate___block_invoke;
  v6[3] = &unk_1E76FE1A0;
  *&v6[5] = a2;
  v6[4] = &v7;
  [videoSupportedFrameRateRanges enumerateObjectsUsingBlock:v6];

  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (uint64_t)cam_supportsFrameDuration:()CAMCaptureEngine
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  videoSupportedFrameRateRanges = [self videoSupportedFrameRateRanges];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __69__AVCaptureDeviceFormat_CAMCaptureEngine__cam_supportsFrameDuration___block_invoke;
  v7[3] = &unk_1E76FE1C8;
  v8 = *a3;
  v9 = *(a3 + 2);
  v7[4] = &v10;
  [videoSupportedFrameRateRanges enumerateObjectsUsingBlock:v7];

  v5 = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  return v5;
}

- (uint64_t)cam_supportsPanoramaConfiguration:()CAMCaptureEngine
{
  v4 = a3;
  formatDescription = [self formatDescription];
  Dimensions = CMVideoFormatDescriptionGetDimensions(formatDescription);
  if ([v4 sampleBufferWidth] == Dimensions && objc_msgSend(v4, "sampleBufferHeight") == Dimensions >> 32 && CMFormatDescriptionGetMediaSubType(formatDescription) == 875704422)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0;
    videoSupportedFrameRateRanges = [self videoSupportedFrameRateRanges];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __77__AVCaptureDeviceFormat_CAMCaptureEngine__cam_supportsPanoramaConfiguration___block_invoke;
    v10[3] = &unk_1E76FE1F0;
    v11 = v4;
    v12 = &v13;
    [videoSupportedFrameRateRanges enumerateObjectsUsingBlock:v10];
    v8 = *(v14 + 24);

    _Block_object_dispose(&v13, 8);
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

- (BOOL)cam_supportsPortraitFrontFacingZoomed
{
  formatDescription = [self formatDescription];
  if (CMVideoFormatDescriptionGetDimensions(formatDescription) != 0x90C00000C10 || CMFormatDescriptionGetMediaSubType(formatDescription) != 875704422)
  {
    return 0;
  }

  supportedDepthDataFormats = [self supportedDepthDataFormats];
  v4 = [supportedDepthDataFormats count] != 0;

  return v4;
}

- (uint64_t)cam_compareUsingDimensions:()CAMCaptureEngine
{
  v4 = a3;
  Dimensions = CMVideoFormatDescriptionGetDimensions([self formatDescription]);
  v6 = Dimensions;
  v7 = HIDWORD(Dimensions);
  formatDescription = [v4 formatDescription];

  v9 = CMVideoFormatDescriptionGetDimensions(formatDescription);
  v10 = v7 < v9.height && v6 < v9.width;
  v11 = v7 <= v9.height || v6 <= v9.width;
  v12 = v10 << 63 >> 63;
  if (v11)
  {
    return v12;
  }

  else
  {
    return 1;
  }
}

- (uint64_t)cam_compareUsingQuality:()CAMCaptureEngine
{
  v4 = a3;
  v5 = [self cam_compareUsingBinning:v4];
  if (!v5)
  {
    v5 = [self cam_compareUsingMaximumFramerate:v4];
  }

  return v5;
}

- (uint64_t)cam_compareUsingBinning:()CAMCaptureEngine
{
  v4 = a3;
  LODWORD(self) = [self isVideoBinned];
  isVideoBinned = [v4 isVideoBinned];

  if (self)
  {
    return isVideoBinned - 1;
  }

  else
  {
    return isVideoBinned & 1;
  }
}

- (uint64_t)cam_compareUsingMaximumFramerate:()CAMCaptureEngine
{
  v4 = a3;
  [self cam_maximumFrameRate];
  v6 = v5;
  [v4 cam_maximumFrameRate];
  v8 = v7;

  v9 = -1;
  if (v6 <= v8)
  {
    v9 = 0;
  }

  if (v6 >= v8)
  {
    return v9;
  }

  else
  {
    return 1;
  }
}

- (double)cam_maximumFrameRate
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  videoSupportedFrameRateRanges = [self videoSupportedFrameRateRanges];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __63__AVCaptureDeviceFormat_CAMCaptureEngine__cam_maximumFrameRate__block_invoke;
  v4[3] = &unk_1E76FE218;
  v4[4] = &v5;
  [videoSupportedFrameRateRanges enumerateObjectsUsingBlock:v4];

  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (uint64_t)cam_supportsFrontFacingFormatForVideoConfiguration:()CAMCaptureEngine colorSpace:enableProResVideo:dynamicAspectRatio:useSquareFormat:requireVideoBinned:
{
  v11 = 0;
  if (a3 > 0xC)
  {
    v12 = 0;
  }

  else if (((1 << a3) & 0x1620) != 0)
  {
    v13 = 3840;
    v14 = 2160;
    v15 = 2160;
    v16 = 3840;
    if (a6 != 1)
    {
      v16 = 0;
      v15 = 0;
    }

    if (a6 != 2)
    {
      v14 = v16;
      v13 = v15;
    }

    if (a7)
    {
      v11 = 3840;
    }

    else
    {
      v11 = v14;
    }

    if (a7)
    {
      v12 = 3840;
    }

    else
    {
      v12 = v13;
    }
  }

  else if (((1 << a3) & 0x882) != 0)
  {
    if (a7)
    {
      v11 = 1920;
      v12 = 1920;
    }

    else if (a6 == 2)
    {
      v12 = 1920;
      v11 = 1080;
    }

    else if (a6 == 1)
    {
      v12 = 1080;
      v11 = 1920;
    }

    else
    {
      v11 = 0;
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
    if (a3 == 6)
    {
      v12 = 1280;
      v11 = 1280;
      goto LABEL_39;
    }
  }

  v17 = 0.0;
  if (a3 <= 8)
  {
    if (a3 <= 3)
    {
      if (a3 != 1)
      {
        if (a3 != 2)
        {
          if (a3 != 3)
          {
            return [self cam_supportsFrameRate:v12 width:v11 height:a4 colorSpace:a5 enableProResVideo:a8 requireVideoBinned:v17];
          }

          goto LABEL_31;
        }

LABEL_36:
        v18 = 0x405E000000000000;
        goto LABEL_47;
      }

LABEL_43:
      v18 = 0x404E000000000000;
      goto LABEL_47;
    }

    if ((a3 - 5) >= 3)
    {
      if (a3 == 4)
      {
        goto LABEL_36;
      }

      if (a3 == 8)
      {
LABEL_31:
        v18 = 0x406E000000000000;
LABEL_47:
        v17 = *&v18;
        return [self cam_supportsFrameRate:v12 width:v11 height:a4 colorSpace:a5 enableProResVideo:a8 requireVideoBinned:v17];
      }

      return [self cam_supportsFrameRate:v12 width:v11 height:a4 colorSpace:a5 enableProResVideo:a8 requireVideoBinned:v17];
    }

LABEL_39:
    v17 = 30.0;
    return [self cam_supportsFrameRate:v12 width:v11 height:a4 colorSpace:a5 enableProResVideo:a8 requireVideoBinned:v17];
  }

  if (a3 > 12)
  {
    if (a3 == 13)
    {
      goto LABEL_36;
    }

    if (a3 == 14)
    {
      v18 = 0x4059000000000000;
      goto LABEL_47;
    }

    if (a3 != 10003)
    {
      return [self cam_supportsFrameRate:v12 width:v11 height:a4 colorSpace:a5 enableProResVideo:a8 requireVideoBinned:v17];
    }

    goto LABEL_39;
  }

  if ((a3 - 11) < 2)
  {
    v17 = 25.0;
  }

  else
  {
    if (a3 == 9)
    {
      goto LABEL_43;
    }

    if (a3 == 10)
    {
      v17 = 24.0;
    }
  }

  return [self cam_supportsFrameRate:v12 width:v11 height:a4 colorSpace:a5 enableProResVideo:a8 requireVideoBinned:v17];
}

@end