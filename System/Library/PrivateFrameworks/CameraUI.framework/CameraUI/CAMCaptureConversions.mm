@interface CAMCaptureConversions
+ ($2825F4736939C4A6D3AD43837233062D)CMVideoDimensionsForCAMPhotoResolution:(int64_t)resolution wantsSquareDimensions:(BOOL)dimensions;
+ (id)AVCaptureAspectRatioForCAMDynamicAspectRatio:(int64_t)ratio;
+ (id)AVCaptureDeviceTypeForCAMCaptureDevice:(int64_t)device;
+ (id)AVCaptureSmartFramingFieldOfViewForCAMCaptureSmartFramingFieldOfView:(int64_t)view;
+ (id)AVCaptureSmartStyleForCEKSmartStyle:(id)style;
+ (id)AVSmartStyleCastTypeForCEKCastType:(int64_t)type;
+ (id)CEKSmartStyleForAVCaptureSmartStyle:(id)style;
+ (id)PISemanticStyleCastForCEKCastType:(int64_t)type;
+ (id)previewLayerVideoGravityForPreviewViewAspectMode:(int64_t)mode;
+ (int64_t)AVCaptureColorSpaceForColorSpace:(int64_t)space hasValidConversion:(BOOL *)conversion;
+ (int64_t)AVCaptureDeviceAudioCaptureModeForCAMAudioConfiguration:(unint64_t)configuration;
+ (int64_t)AVCaptureDeviceVideoZoomRampTuningForCAMVideoZoomRampTuning:(int64_t)tuning;
+ (int64_t)AVCapturePhotoQualityPrioritizationForCAMPhotoQualityPrioritization:(int64_t)prioritization;
+ (int64_t)AVDevicePositionForCAMDevicePosition:(int64_t)position;
+ (int64_t)CAMCaptureSmartFramingFieldOfViewForAVCaptureFraming:(id)framing;
+ (int64_t)CAMCaptureSmartFramingFieldOfViewForAVCaptureSmartFramingFieldOfView:(id)view;
+ (int64_t)CAMPhotoQualityPrioritizationForAVCapturePhotoQualityPrioritization:(int64_t)prioritization;
+ (int64_t)CEKSmartStylePresetTypeForAVSmartStyleCastType:(id)type;
+ (int64_t)captureDigitalFlashModeForNightMode:(int64_t)mode;
+ (int64_t)captureExposureModeForExposureMode:(int64_t)mode;
+ (int64_t)captureFlashModeForFlashMode:(int64_t)mode;
+ (int64_t)captureFocusModeForFocusMode:(int64_t)mode isPerformingContrastBasedFocus:(BOOL)focus;
+ (int64_t)captureTorchModeForTorchMode:(int64_t)mode;
+ (int64_t)captureWhiteBalanceModeForWhiteBalanceMode:(int64_t)mode;
+ (int64_t)exposureModeForCaptureExposureMode:(int64_t)mode;
+ (int64_t)flashModeForCaptureFlashMode:(int64_t)mode;
+ (int64_t)flashModeForTorchMode:(int64_t)mode;
+ (int64_t)focusModeForCaptureFocusMode:(int64_t)mode;
+ (int64_t)nightModeStatusForCaptureStatus:(int64_t)status;
+ (int64_t)overCapturePreviewStatusForAVPreviewStatus:(int64_t)status;
+ (int64_t)shallowDepthOfFieldStatusForCaptureStatus:(int64_t)status;
+ (int64_t)stagePreviewStatusForCaptureStatus:(int64_t)status;
+ (int64_t)torchModeForCaptureTorchMode:(int64_t)mode;
+ (int64_t)torchModeForFlashMode:(int64_t)mode;
+ (int64_t)viewContentModeForPreviewViewAspectMode:(int64_t)mode;
+ (int64_t)whiteBalanceModeForCaptureWhiteBalanceMode:(int64_t)mode;
+ (unint64_t)buttonPhaseForCaptureButtonPhase:(unint64_t)phase;
@end

@implementation CAMCaptureConversions

+ (int64_t)captureFlashModeForFlashMode:(int64_t)mode
{
  v3 = 1;
  if (mode != 1)
  {
    v3 = 2;
  }

  if (mode)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

+ (int64_t)flashModeForCaptureFlashMode:(int64_t)mode
{
  v3 = 1;
  if (mode != 1)
  {
    v3 = 2;
  }

  if (mode)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

+ (int64_t)captureTorchModeForTorchMode:(int64_t)mode
{
  v3 = 1;
  if (mode != 1)
  {
    v3 = 2;
  }

  if (mode)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

+ (int64_t)torchModeForCaptureTorchMode:(int64_t)mode
{
  v3 = 1;
  if (mode != 1)
  {
    v3 = 2;
  }

  if (mode)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

+ (int64_t)captureFocusModeForFocusMode:(int64_t)mode isPerformingContrastBasedFocus:(BOOL)focus
{
  focusCopy = 2;
  if (!mode)
  {
    focusCopy = 0;
  }

  if (mode == 1)
  {
    focusCopy = focus;
  }

  if (mode == 2)
  {
    return 1;
  }

  else
  {
    return focusCopy;
  }
}

+ (int64_t)focusModeForCaptureFocusMode:(int64_t)mode
{
  v3 = 2;
  if (mode != 1)
  {
    v3 = 3;
  }

  if (mode)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

+ (int64_t)captureExposureModeForExposureMode:(int64_t)mode
{
  if (mode >= 4)
  {
    return 2;
  }

  else
  {
    return mode;
  }
}

+ (int64_t)exposureModeForCaptureExposureMode:(int64_t)mode
{
  if (mode >= 4)
  {
    return 2;
  }

  else
  {
    return mode;
  }
}

+ (int64_t)captureWhiteBalanceModeForWhiteBalanceMode:(int64_t)mode
{
  v3 = 1;
  if (mode != 1)
  {
    v3 = 2;
  }

  if (mode)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

+ (int64_t)whiteBalanceModeForCaptureWhiteBalanceMode:(int64_t)mode
{
  v3 = 1;
  if (mode != 1)
  {
    v3 = 2;
  }

  if (mode)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

+ (id)previewLayerVideoGravityForPreviewViewAspectMode:(int64_t)mode
{
  if (!mode)
  {
    v4 = MEMORY[0x1E69874F0];
LABEL_5:
    v5 = *v4;

    return v5;
  }

  if (mode == 1)
  {
    v4 = MEMORY[0x1E69874E8];
    goto LABEL_5;
  }

  v5 = 0;

  return v5;
}

+ (int64_t)viewContentModeForPreviewViewAspectMode:(int64_t)mode
{
  if (mode == 1)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

+ (int64_t)shallowDepthOfFieldStatusForCaptureStatus:(int64_t)status
{
  if ((status - 1) >= 0xF)
  {
    return 0;
  }

  else
  {
    return status;
  }
}

+ (int64_t)stagePreviewStatusForCaptureStatus:(int64_t)status
{
  if (status == 2)
  {
    return 2;
  }

  else
  {
    return status == 1;
  }
}

+ (int64_t)AVDevicePositionForCAMDevicePosition:(int64_t)position
{
  if (position)
  {
    return 2 * (position == 1);
  }

  else
  {
    return 1;
  }
}

+ (id)AVCaptureDeviceTypeForCAMCaptureDevice:(int64_t)device
{
  if ((device - 2) > 8)
  {
    v4 = 0;
  }

  else
  {
    v4 = **(&unk_1E76FD870 + device - 2);
  }

  return v4;
}

+ (int64_t)AVCapturePhotoQualityPrioritizationForCAMPhotoQualityPrioritization:(int64_t)prioritization
{
  v3 = 1;
  if (prioritization == 1)
  {
    v3 = 2;
  }

  if (prioritization == 2)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

+ (int64_t)CAMPhotoQualityPrioritizationForAVCapturePhotoQualityPrioritization:(int64_t)prioritization
{
  if (prioritization == 3)
  {
    return 2;
  }

  else
  {
    return prioritization == 2;
  }
}

+ (int64_t)torchModeForFlashMode:(int64_t)mode
{
  if (mode == 2)
  {
    return 2;
  }

  else
  {
    return mode == 1;
  }
}

+ (int64_t)flashModeForTorchMode:(int64_t)mode
{
  if (mode == 2)
  {
    return 2;
  }

  else
  {
    return mode == 1;
  }
}

+ (int64_t)captureDigitalFlashModeForNightMode:(int64_t)mode
{
  if (mode == 2)
  {
    return 2;
  }

  else
  {
    return mode == 1;
  }
}

+ (int64_t)nightModeStatusForCaptureStatus:(int64_t)status
{
  if ((status + 1) >= 4)
  {
    return 0;
  }

  else
  {
    return status;
  }
}

+ (int64_t)overCapturePreviewStatusForAVPreviewStatus:(int64_t)status
{
  if ((status - 1) >= 6)
  {
    return 0;
  }

  else
  {
    return status;
  }
}

+ ($2825F4736939C4A6D3AD43837233062D)CMVideoDimensionsForCAMPhotoResolution:(int64_t)resolution wantsSquareDimensions:(BOOL)dimensions
{
  v4 = 0x17A000000000;
  v5 = 8064;
  v6 = 0x10BC00000000;
  if (dimensions)
  {
    v6 = 0x132000000000;
  }

  v7 = 5712;
  if (dimensions)
  {
    v7 = 4896;
  }

  v8 = 0xBD000000000;
  if (dimensions)
  {
    v8 = 0xFC000000000;
  }

  v9 = 4032;
  if (resolution != 1)
  {
    v8 = 0;
    v9 = 0;
  }

  if (resolution != 2)
  {
    v6 = v8;
    v7 = v9;
  }

  if (resolution != 3)
  {
    v4 = v6;
    v5 = v7;
  }

  return (v5 | v4);
}

+ (int64_t)AVCaptureDeviceVideoZoomRampTuningForCAMVideoZoomRampTuning:(int64_t)tuning
{
  if (tuning == 3)
  {
    return 2;
  }

  else
  {
    return tuning == 2;
  }
}

+ (int64_t)AVCaptureColorSpaceForColorSpace:(int64_t)space hasValidConversion:(BOOL *)conversion
{
  v4 = space != 1;
  if (space == 2)
  {
    v4 = 1;
    v5 = 2;
  }

  else
  {
    v5 = space == 1;
  }

  if (space == 3)
  {
    v4 = 1;
    result = 3;
  }

  else
  {
    result = v5;
  }

  if (conversion)
  {
    *conversion = v4;
  }

  return result;
}

+ (unint64_t)buttonPhaseForCaptureButtonPhase:(unint64_t)phase
{
  v3 = 2;
  if (phase != 1)
  {
    v3 = 3;
  }

  if (phase)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

+ (int64_t)AVCaptureDeviceAudioCaptureModeForCAMAudioConfiguration:(unint64_t)configuration
{
  if (configuration == 3)
  {
    return 2;
  }

  else
  {
    return configuration == 2;
  }
}

+ (id)AVSmartStyleCastTypeForCEKCastType:(int64_t)type
{
  if (type > 0xF)
  {
    v4 = 0;
  }

  else
  {
    v4 = **(&unk_1E76FD8B8 + type);
  }

  return v4;
}

+ (int64_t)CEKSmartStylePresetTypeForAVSmartStyleCastType:(id)type
{
  typeCopy = type;
  if (CEKSmartStylePresetTypeForAVSmartStyleCastType__onceToken != -1)
  {
    +[CAMCaptureConversions CEKSmartStylePresetTypeForAVSmartStyleCastType:];
  }

  v4 = [CEKSmartStylePresetTypeForAVSmartStyleCastType__presetTypeNumberByAVCastType objectForKeyedSubscript:typeCopy];
  v5 = v4;
  if (v4)
  {
    integerValue = [v4 integerValue];
  }

  else
  {
    integerValue = 1;
  }

  return integerValue;
}

void __72__CAMCaptureConversions_CEKSmartStylePresetTypeForAVSmartStyleCastType___block_invoke()
{
  v15 = *MEMORY[0x1E69E9840];
  v0 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v1 = CEKSmartStyleAllPresetTypes();
  v2 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v11;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v10 + 1) + 8 * i);
        v7 = [v6 integerValue];
        if (v7)
        {
          v8 = +[CAMCaptureConversions AVSmartStyleCastTypeForCEKCastType:](CAMCaptureConversions, "AVSmartStyleCastTypeForCEKCastType:", [MEMORY[0x1E6993890] castTypeForPresetType:v7]);
          [v0 setObject:v6 forKeyedSubscript:v8];
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v3);
  }

  v9 = CEKSmartStylePresetTypeForAVSmartStyleCastType__presetTypeNumberByAVCastType;
  CEKSmartStylePresetTypeForAVSmartStyleCastType__presetTypeNumberByAVCastType = v0;
}

+ (id)PISemanticStyleCastForCEKCastType:(int64_t)type
{
  if (type > 0xF)
  {
    v4 = 0;
  }

  else
  {
    v4 = **(&unk_1E76FD938 + type);
  }

  return v4;
}

+ (id)AVCaptureSmartStyleForCEKSmartStyle:(id)style
{
  if (style)
  {
    styleCopy = style;
    v5 = [self AVSmartStyleCastTypeForCEKCastType:{objc_msgSend(styleCopy, "castType")}];
    v6 = MEMORY[0x1E6987120];
    [styleCopy castIntensity];
    v8 = v7;
    [styleCopy toneBias];
    v10 = v9;
    [styleCopy colorBias];
    v12 = v11;

    *&v13 = v12;
    *&v14 = v8;
    *&v15 = v10;
    v16 = [v6 styleWithCast:v5 intensity:v14 toneBias:v15 colorBias:v13];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (id)CEKSmartStyleForAVCaptureSmartStyle:(id)style
{
  if (style)
  {
    styleCopy = style;
    cast = [styleCopy cast];
    v7 = [self CEKSmartStylePresetTypeForAVSmartStyleCastType:cast];

    v8 = objc_alloc(MEMORY[0x1E6993890]);
    [styleCopy intensity];
    v10 = v9;
    [styleCopy toneBias];
    v12 = v11;
    [styleCopy colorBias];
    v14 = v13;

    v15 = [v8 initWithPresetType:v7 castIntensity:v10 toneBias:v12 colorBias:v14];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (int64_t)CAMCaptureSmartFramingFieldOfViewForAVCaptureSmartFramingFieldOfView:(id)view
{
  viewCopy = view;
  if ([viewCopy isEqualToString:*MEMORY[0x1E6986B40]])
  {
    v4 = 1;
  }

  else if ([viewCopy isEqualToString:*MEMORY[0x1E6986B50]])
  {
    v4 = 2;
  }

  else if ([viewCopy isEqualToString:*MEMORY[0x1E6986B48]])
  {
    v4 = 3;
  }

  else if ([viewCopy isEqualToString:*MEMORY[0x1E6986B30]])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)AVCaptureSmartFramingFieldOfViewForCAMCaptureSmartFramingFieldOfView:(int64_t)view
{
  v4 = *MEMORY[0x1E6986B38];
  if ((view - 1) <= 3)
  {
    v5 = **(&unk_1E76FD9B8 + view - 1);

    v4 = v5;
  }

  return v4;
}

+ (int64_t)CAMCaptureSmartFramingFieldOfViewForAVCaptureFraming:(id)framing
{
  framingCopy = framing;
  aspectRatio = [framingCopy aspectRatio];
  v5 = *MEMORY[0x1E69868B8];

  if (aspectRatio == v5)
  {
    [framingCopy zoomFactor];
    v10 = v9;
    v11 = +[CAMCaptureCapabilities capabilities];
    [v11 smartFramingFieldOfViewZoomedOutPortraitZoomFactor];
    v13 = vabdd_f64(v10, v12);

    if (v13 > 0.00000011920929)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  else
  {
    aspectRatio2 = [framingCopy aspectRatio];
    v7 = *MEMORY[0x1E69868B0];

    if (aspectRatio2 == v7)
    {
      [framingCopy zoomFactor];
      v15 = v14;
      v16 = +[CAMCaptureCapabilities capabilities];
      [v16 smartFramingFieldOfViewZoomedOutLandscapeZoomFactor];
      v18 = vabdd_f64(v15, v17);

      if (v18 > 0.00000011920929)
      {
        v8 = 4;
      }

      else
      {
        v8 = 3;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

+ (id)AVCaptureAspectRatioForCAMDynamicAspectRatio:(int64_t)ratio
{
  v4 = *MEMORY[0x1E69868A0];
  if (ratio == 1)
  {
    v5 = *MEMORY[0x1E69868C0];

    v4 = v5;
  }

  return v4;
}

@end