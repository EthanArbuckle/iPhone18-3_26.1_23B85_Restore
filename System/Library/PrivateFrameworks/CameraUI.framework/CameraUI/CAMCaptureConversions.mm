@interface CAMCaptureConversions
+ ($2825F4736939C4A6D3AD43837233062D)CMVideoDimensionsForCAMPhotoResolution:(int64_t)a3 wantsSquareDimensions:(BOOL)a4;
+ (id)AVCaptureAspectRatioForCAMDynamicAspectRatio:(int64_t)a3;
+ (id)AVCaptureDeviceTypeForCAMCaptureDevice:(int64_t)a3;
+ (id)AVCaptureSmartFramingFieldOfViewForCAMCaptureSmartFramingFieldOfView:(int64_t)a3;
+ (id)AVCaptureSmartStyleForCEKSmartStyle:(id)a3;
+ (id)AVSmartStyleCastTypeForCEKCastType:(int64_t)a3;
+ (id)CEKSmartStyleForAVCaptureSmartStyle:(id)a3;
+ (id)PISemanticStyleCastForCEKCastType:(int64_t)a3;
+ (id)previewLayerVideoGravityForPreviewViewAspectMode:(int64_t)a3;
+ (int64_t)AVCaptureColorSpaceForColorSpace:(int64_t)a3 hasValidConversion:(BOOL *)a4;
+ (int64_t)AVCaptureDeviceAudioCaptureModeForCAMAudioConfiguration:(unint64_t)a3;
+ (int64_t)AVCaptureDeviceVideoZoomRampTuningForCAMVideoZoomRampTuning:(int64_t)a3;
+ (int64_t)AVCapturePhotoQualityPrioritizationForCAMPhotoQualityPrioritization:(int64_t)a3;
+ (int64_t)AVDevicePositionForCAMDevicePosition:(int64_t)a3;
+ (int64_t)CAMCaptureSmartFramingFieldOfViewForAVCaptureFraming:(id)a3;
+ (int64_t)CAMCaptureSmartFramingFieldOfViewForAVCaptureSmartFramingFieldOfView:(id)a3;
+ (int64_t)CAMPhotoQualityPrioritizationForAVCapturePhotoQualityPrioritization:(int64_t)a3;
+ (int64_t)CEKSmartStylePresetTypeForAVSmartStyleCastType:(id)a3;
+ (int64_t)captureDigitalFlashModeForNightMode:(int64_t)a3;
+ (int64_t)captureExposureModeForExposureMode:(int64_t)a3;
+ (int64_t)captureFlashModeForFlashMode:(int64_t)a3;
+ (int64_t)captureFocusModeForFocusMode:(int64_t)a3 isPerformingContrastBasedFocus:(BOOL)a4;
+ (int64_t)captureTorchModeForTorchMode:(int64_t)a3;
+ (int64_t)captureWhiteBalanceModeForWhiteBalanceMode:(int64_t)a3;
+ (int64_t)exposureModeForCaptureExposureMode:(int64_t)a3;
+ (int64_t)flashModeForCaptureFlashMode:(int64_t)a3;
+ (int64_t)flashModeForTorchMode:(int64_t)a3;
+ (int64_t)focusModeForCaptureFocusMode:(int64_t)a3;
+ (int64_t)nightModeStatusForCaptureStatus:(int64_t)a3;
+ (int64_t)overCapturePreviewStatusForAVPreviewStatus:(int64_t)a3;
+ (int64_t)shallowDepthOfFieldStatusForCaptureStatus:(int64_t)a3;
+ (int64_t)stagePreviewStatusForCaptureStatus:(int64_t)a3;
+ (int64_t)torchModeForCaptureTorchMode:(int64_t)a3;
+ (int64_t)torchModeForFlashMode:(int64_t)a3;
+ (int64_t)viewContentModeForPreviewViewAspectMode:(int64_t)a3;
+ (int64_t)whiteBalanceModeForCaptureWhiteBalanceMode:(int64_t)a3;
+ (unint64_t)buttonPhaseForCaptureButtonPhase:(unint64_t)a3;
@end

@implementation CAMCaptureConversions

+ (int64_t)captureFlashModeForFlashMode:(int64_t)a3
{
  v3 = 1;
  if (a3 != 1)
  {
    v3 = 2;
  }

  if (a3)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

+ (int64_t)flashModeForCaptureFlashMode:(int64_t)a3
{
  v3 = 1;
  if (a3 != 1)
  {
    v3 = 2;
  }

  if (a3)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

+ (int64_t)captureTorchModeForTorchMode:(int64_t)a3
{
  v3 = 1;
  if (a3 != 1)
  {
    v3 = 2;
  }

  if (a3)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

+ (int64_t)torchModeForCaptureTorchMode:(int64_t)a3
{
  v3 = 1;
  if (a3 != 1)
  {
    v3 = 2;
  }

  if (a3)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

+ (int64_t)captureFocusModeForFocusMode:(int64_t)a3 isPerformingContrastBasedFocus:(BOOL)a4
{
  v4 = 2;
  if (!a3)
  {
    v4 = 0;
  }

  if (a3 == 1)
  {
    v4 = a4;
  }

  if (a3 == 2)
  {
    return 1;
  }

  else
  {
    return v4;
  }
}

+ (int64_t)focusModeForCaptureFocusMode:(int64_t)a3
{
  v3 = 2;
  if (a3 != 1)
  {
    v3 = 3;
  }

  if (a3)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

+ (int64_t)captureExposureModeForExposureMode:(int64_t)a3
{
  if (a3 >= 4)
  {
    return 2;
  }

  else
  {
    return a3;
  }
}

+ (int64_t)exposureModeForCaptureExposureMode:(int64_t)a3
{
  if (a3 >= 4)
  {
    return 2;
  }

  else
  {
    return a3;
  }
}

+ (int64_t)captureWhiteBalanceModeForWhiteBalanceMode:(int64_t)a3
{
  v3 = 1;
  if (a3 != 1)
  {
    v3 = 2;
  }

  if (a3)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

+ (int64_t)whiteBalanceModeForCaptureWhiteBalanceMode:(int64_t)a3
{
  v3 = 1;
  if (a3 != 1)
  {
    v3 = 2;
  }

  if (a3)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

+ (id)previewLayerVideoGravityForPreviewViewAspectMode:(int64_t)a3
{
  if (!a3)
  {
    v4 = MEMORY[0x1E69874F0];
LABEL_5:
    v5 = *v4;

    return v5;
  }

  if (a3 == 1)
  {
    v4 = MEMORY[0x1E69874E8];
    goto LABEL_5;
  }

  v5 = 0;

  return v5;
}

+ (int64_t)viewContentModeForPreviewViewAspectMode:(int64_t)a3
{
  if (a3 == 1)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

+ (int64_t)shallowDepthOfFieldStatusForCaptureStatus:(int64_t)a3
{
  if ((a3 - 1) >= 0xF)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

+ (int64_t)stagePreviewStatusForCaptureStatus:(int64_t)a3
{
  if (a3 == 2)
  {
    return 2;
  }

  else
  {
    return a3 == 1;
  }
}

+ (int64_t)AVDevicePositionForCAMDevicePosition:(int64_t)a3
{
  if (a3)
  {
    return 2 * (a3 == 1);
  }

  else
  {
    return 1;
  }
}

+ (id)AVCaptureDeviceTypeForCAMCaptureDevice:(int64_t)a3
{
  if ((a3 - 2) > 8)
  {
    v4 = 0;
  }

  else
  {
    v4 = **(&unk_1E76FD870 + a3 - 2);
  }

  return v4;
}

+ (int64_t)AVCapturePhotoQualityPrioritizationForCAMPhotoQualityPrioritization:(int64_t)a3
{
  v3 = 1;
  if (a3 == 1)
  {
    v3 = 2;
  }

  if (a3 == 2)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

+ (int64_t)CAMPhotoQualityPrioritizationForAVCapturePhotoQualityPrioritization:(int64_t)a3
{
  if (a3 == 3)
  {
    return 2;
  }

  else
  {
    return a3 == 2;
  }
}

+ (int64_t)torchModeForFlashMode:(int64_t)a3
{
  if (a3 == 2)
  {
    return 2;
  }

  else
  {
    return a3 == 1;
  }
}

+ (int64_t)flashModeForTorchMode:(int64_t)a3
{
  if (a3 == 2)
  {
    return 2;
  }

  else
  {
    return a3 == 1;
  }
}

+ (int64_t)captureDigitalFlashModeForNightMode:(int64_t)a3
{
  if (a3 == 2)
  {
    return 2;
  }

  else
  {
    return a3 == 1;
  }
}

+ (int64_t)nightModeStatusForCaptureStatus:(int64_t)a3
{
  if ((a3 + 1) >= 4)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

+ (int64_t)overCapturePreviewStatusForAVPreviewStatus:(int64_t)a3
{
  if ((a3 - 1) >= 6)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

+ ($2825F4736939C4A6D3AD43837233062D)CMVideoDimensionsForCAMPhotoResolution:(int64_t)a3 wantsSquareDimensions:(BOOL)a4
{
  v4 = 0x17A000000000;
  v5 = 8064;
  v6 = 0x10BC00000000;
  if (a4)
  {
    v6 = 0x132000000000;
  }

  v7 = 5712;
  if (a4)
  {
    v7 = 4896;
  }

  v8 = 0xBD000000000;
  if (a4)
  {
    v8 = 0xFC000000000;
  }

  v9 = 4032;
  if (a3 != 1)
  {
    v8 = 0;
    v9 = 0;
  }

  if (a3 != 2)
  {
    v6 = v8;
    v7 = v9;
  }

  if (a3 != 3)
  {
    v4 = v6;
    v5 = v7;
  }

  return (v5 | v4);
}

+ (int64_t)AVCaptureDeviceVideoZoomRampTuningForCAMVideoZoomRampTuning:(int64_t)a3
{
  if (a3 == 3)
  {
    return 2;
  }

  else
  {
    return a3 == 2;
  }
}

+ (int64_t)AVCaptureColorSpaceForColorSpace:(int64_t)a3 hasValidConversion:(BOOL *)a4
{
  v4 = a3 != 1;
  if (a3 == 2)
  {
    v4 = 1;
    v5 = 2;
  }

  else
  {
    v5 = a3 == 1;
  }

  if (a3 == 3)
  {
    v4 = 1;
    result = 3;
  }

  else
  {
    result = v5;
  }

  if (a4)
  {
    *a4 = v4;
  }

  return result;
}

+ (unint64_t)buttonPhaseForCaptureButtonPhase:(unint64_t)a3
{
  v3 = 2;
  if (a3 != 1)
  {
    v3 = 3;
  }

  if (a3)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

+ (int64_t)AVCaptureDeviceAudioCaptureModeForCAMAudioConfiguration:(unint64_t)a3
{
  if (a3 == 3)
  {
    return 2;
  }

  else
  {
    return a3 == 2;
  }
}

+ (id)AVSmartStyleCastTypeForCEKCastType:(int64_t)a3
{
  if (a3 > 0xF)
  {
    v4 = 0;
  }

  else
  {
    v4 = **(&unk_1E76FD8B8 + a3);
  }

  return v4;
}

+ (int64_t)CEKSmartStylePresetTypeForAVSmartStyleCastType:(id)a3
{
  v3 = a3;
  if (CEKSmartStylePresetTypeForAVSmartStyleCastType__onceToken != -1)
  {
    +[CAMCaptureConversions CEKSmartStylePresetTypeForAVSmartStyleCastType:];
  }

  v4 = [CEKSmartStylePresetTypeForAVSmartStyleCastType__presetTypeNumberByAVCastType objectForKeyedSubscript:v3];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 integerValue];
  }

  else
  {
    v6 = 1;
  }

  return v6;
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

+ (id)PISemanticStyleCastForCEKCastType:(int64_t)a3
{
  if (a3 > 0xF)
  {
    v4 = 0;
  }

  else
  {
    v4 = **(&unk_1E76FD938 + a3);
  }

  return v4;
}

+ (id)AVCaptureSmartStyleForCEKSmartStyle:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [a1 AVSmartStyleCastTypeForCEKCastType:{objc_msgSend(v4, "castType")}];
    v6 = MEMORY[0x1E6987120];
    [v4 castIntensity];
    v8 = v7;
    [v4 toneBias];
    v10 = v9;
    [v4 colorBias];
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

+ (id)CEKSmartStyleForAVCaptureSmartStyle:(id)a3
{
  if (a3)
  {
    v5 = a3;
    v6 = [v5 cast];
    v7 = [a1 CEKSmartStylePresetTypeForAVSmartStyleCastType:v6];

    v8 = objc_alloc(MEMORY[0x1E6993890]);
    [v5 intensity];
    v10 = v9;
    [v5 toneBias];
    v12 = v11;
    [v5 colorBias];
    v14 = v13;

    v15 = [v8 initWithPresetType:v7 castIntensity:v10 toneBias:v12 colorBias:v14];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (int64_t)CAMCaptureSmartFramingFieldOfViewForAVCaptureSmartFramingFieldOfView:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:*MEMORY[0x1E6986B40]])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:*MEMORY[0x1E6986B50]])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:*MEMORY[0x1E6986B48]])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:*MEMORY[0x1E6986B30]])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)AVCaptureSmartFramingFieldOfViewForCAMCaptureSmartFramingFieldOfView:(int64_t)a3
{
  v4 = *MEMORY[0x1E6986B38];
  if ((a3 - 1) <= 3)
  {
    v5 = **(&unk_1E76FD9B8 + a3 - 1);

    v4 = v5;
  }

  return v4;
}

+ (int64_t)CAMCaptureSmartFramingFieldOfViewForAVCaptureFraming:(id)a3
{
  v3 = a3;
  v4 = [v3 aspectRatio];
  v5 = *MEMORY[0x1E69868B8];

  if (v4 == v5)
  {
    [v3 zoomFactor];
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
    v6 = [v3 aspectRatio];
    v7 = *MEMORY[0x1E69868B0];

    if (v6 == v7)
    {
      [v3 zoomFactor];
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

+ (id)AVCaptureAspectRatioForCAMDynamicAspectRatio:(int64_t)a3
{
  v4 = *MEMORY[0x1E69868A0];
  if (a3 == 1)
  {
    v5 = *MEMORY[0x1E69868C0];

    v4 = v5;
  }

  return v4;
}

@end