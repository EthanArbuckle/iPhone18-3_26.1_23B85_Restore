@interface CAMCaptureConfiguration
+ (id)captureGraphConfigurationUsingConfiguration:(id)a3 outputToExternalStorage:(BOOL)a4 captureOrientation:(int64_t)a5;
+ (id)configuration:(id)a3 withDevice:(int64_t)a4;
+ (int64_t)_fallbackVideoConfigurationForUnsupportedConfiguration:(int64_t)a3 frontRearSimultaneousVideoEnabled:(BOOL)a4;
+ (int64_t)sanitizeVideoConfigurationForDesiredConfiguration:(int64_t)a3 mode:(int64_t)a4 device:(int64_t)a5 trueVideoEnabled:(BOOL)a6 frontRearSimultaneousVideoEnabled:(BOOL)a7;
- (CAMCaptureConfiguration)initWithCaptureMode:(int64_t)a3 captureDevice:(int64_t)a4 videoConfiguration:(int64_t)a5 audioConfiguration:(unint64_t)a6 mixAudioWithOthers:(BOOL)a7 flashMode:(int64_t)a8 torchMode:(int64_t)a9 HDRMode:(int64_t)a10 irisMode:(int64_t)a11 timerDuration:(int64_t)a12 photoModeAspectRatioCrop:(int64_t)a13 photoModeEffectFilterType:(int64_t)a14 squareModeEffectFilterType:(int64_t)a15 portraitModeEffectFilterType:(int64_t)a16 portraitModeLightingEffectType:(int64_t)a17 portraitModeApertureValue:(double)a18 portraitModeIntensityValue:(double)a19 mirrorFrontCameraCaptures:(BOOL)a20 exposureBiasesByMode:(id)a21 macroMode:(int64_t)a22 photoResolution:(int64_t)a23 rawMode:(int64_t)a24 proResVideoMode:(int64_t)a25 semanticStyles:(id)a26 selectedSemanticStyleIndex:(unint64_t)a27 smartStyleSystemStyleIndex:(unint64_t)a28 videoStabilizationMode:(int64_t)a29 zoomPIPEnabled:(BOOL)a30 optionalDepthEffectEnabled:(BOOL)a31 sharedLibraryMode:(int64_t)a32 frontRearSimultaneousVideoEnabled:(BOOL)a33;
- (CAMCaptureConfiguration)initWithConfiguration:(id)a3;
- (NSArray)smartStyles;
- (id)_previewFilters;
- (id)initForPhotoBoothWithCaptureDevice:(int64_t)a3;
@end

@implementation CAMCaptureConfiguration

- (id)_previewFilters
{
  if ([(CAMCaptureConfiguration *)self isPhotoBooth])
  {
    goto LABEL_2;
  }

  v6 = [(CAMCaptureConfiguration *)self mode];
  if (v6 > 5)
  {
    if (v6 == 6)
    {
      v5 = [(CAMCaptureConfiguration *)self portraitModeEffectFilterType];
      v3 = [(CAMCaptureConfiguration *)self portraitModeLightingEffectType];
      v4 = 1;
    }

    else
    {
      v3 = 0;
      v4 = v6 == 7;
      v5 = 0;
    }
  }

  else
  {
    if (v6)
    {
      if (v6 != 4)
      {
LABEL_2:
        v3 = 0;
        v4 = 0;
        v5 = 0;
        goto LABEL_12;
      }

      v7 = [(CAMCaptureConfiguration *)self squareModeEffectFilterType];
    }

    else
    {
      v7 = [(CAMCaptureConfiguration *)self photoModeEffectFilterType];
    }

    v5 = v7;
    v3 = 0;
    v4 = 0;
  }

LABEL_12:

  return [CAMEffectFilterManager filtersForFilterType:v5 lightingType:v3 applyDepthEffect:v4];
}

- (CAMCaptureConfiguration)initWithCaptureMode:(int64_t)a3 captureDevice:(int64_t)a4 videoConfiguration:(int64_t)a5 audioConfiguration:(unint64_t)a6 mixAudioWithOthers:(BOOL)a7 flashMode:(int64_t)a8 torchMode:(int64_t)a9 HDRMode:(int64_t)a10 irisMode:(int64_t)a11 timerDuration:(int64_t)a12 photoModeAspectRatioCrop:(int64_t)a13 photoModeEffectFilterType:(int64_t)a14 squareModeEffectFilterType:(int64_t)a15 portraitModeEffectFilterType:(int64_t)a16 portraitModeLightingEffectType:(int64_t)a17 portraitModeApertureValue:(double)a18 portraitModeIntensityValue:(double)a19 mirrorFrontCameraCaptures:(BOOL)a20 exposureBiasesByMode:(id)a21 macroMode:(int64_t)a22 photoResolution:(int64_t)a23 rawMode:(int64_t)a24 proResVideoMode:(int64_t)a25 semanticStyles:(id)a26 selectedSemanticStyleIndex:(unint64_t)a27 smartStyleSystemStyleIndex:(unint64_t)a28 videoStabilizationMode:(int64_t)a29 zoomPIPEnabled:(BOOL)a30 optionalDepthEffectEnabled:(BOOL)a31 sharedLibraryMode:(int64_t)a32 frontRearSimultaneousVideoEnabled:(BOOL)a33
{
  v42 = a21;
  v43 = a26;
  v49.receiver = self;
  v49.super_class = CAMCaptureConfiguration;
  v44 = [(CAMCaptureConfiguration *)&v49 init];
  if (v44)
  {
    v44->_mode = a3;
    v44->_device = a4;
    v44->_videoConfiguration = a5;
    v44->_audioConfiguration = a6;
    v44->_mixAudioWithOthers = a7;
    v44->_flashMode = a8;
    v44->_torchMode = a9;
    v44->_HDRMode = a10;
    v44->_timerDuration = a12;
    v44->_irisMode = a11;
    v44->_photoModeAspectRatioCrop = a13;
    v44->_photoModeEffectFilterType = a14;
    v44->_squareModeEffectFilterType = a15;
    v44->_portraitModeEffectFilterType = a16;
    v44->_portraitModeLightingEffectType = a17;
    v44->_photoBooth = 0;
    v44->_portraitModeApertureValue = a18;
    v44->_portraitModeIntensityValue = a19;
    v44->_mirrorFrontCameraCaptures = a20;
    v45 = [v42 copy];
    exposureBiasesByMode = v44->_exposureBiasesByMode;
    v44->_exposureBiasesByMode = v45;

    v44->_macroMode = a22;
    v44->_photoResolution = a23;
    v44->_rawMode = a24;
    v44->_proResVideoMode = a25;
    objc_storeStrong(&v44->_semanticStyles, a26);
    v44->_selectedSemanticStyleIndex = a27;
    v44->_smartStyleSystemStyleIndex = a28;
    v44->_zoomPIPEnabled = a30;
    v44->_videoStabilizationMode = a29;
    v44->_sharedLibraryMode = a32;
    v44->_optionalDepthEffectEnabled = a31;
    v44->_frontRearSimultaneousVideoEnabled = a33;
    v47 = v44;
  }

  return v44;
}

- (CAMCaptureConfiguration)initWithConfiguration:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = CAMCaptureConfiguration;
  v5 = [(CAMCaptureConfiguration *)&v14 init];
  if (v5)
  {
    v5->_mode = [v4 mode];
    v5->_device = [v4 device];
    v5->_videoConfiguration = [v4 videoConfiguration];
    v5->_audioConfiguration = [v4 audioConfiguration];
    v5->_mixAudioWithOthers = [v4 mixAudioWithOthers];
    v5->_flashMode = [v4 flashMode];
    v5->_torchMode = [v4 torchMode];
    v5->_HDRMode = [v4 HDRMode];
    v5->_irisMode = [v4 irisMode];
    v5->_timerDuration = [v4 timerDuration];
    v5->_photoModeAspectRatioCrop = [v4 photoModeAspectRatioCrop];
    v5->_photoModeEffectFilterType = [v4 photoModeEffectFilterType];
    v5->_squareModeEffectFilterType = [v4 squareModeEffectFilterType];
    v5->_portraitModeEffectFilterType = [v4 portraitModeEffectFilterType];
    v5->_portraitModeLightingEffectType = [v4 portraitModeLightingEffectType];
    v5->_photoBooth = [v4 isPhotoBooth];
    [v4 portraitModeApertureValue];
    v5->_portraitModeApertureValue = v6;
    [v4 portraitModeIntensityValue];
    v5->_portraitModeIntensityValue = v7;
    v5->_mirrorFrontCameraCaptures = [v4 mirrorFrontCameraCaptures];
    v8 = [v4 exposureBiasesByMode];
    v9 = [v8 copy];
    exposureBiasesByMode = v5->_exposureBiasesByMode;
    v5->_exposureBiasesByMode = v9;

    v5->_macroMode = [v4 macroMode];
    v5->_photoResolution = [v4 photoResolution];
    v5->_rawMode = [v4 rawMode];
    v5->_proResVideoMode = [v4 proResVideoMode];
    v11 = [v4 semanticStyles];
    semanticStyles = v5->_semanticStyles;
    v5->_semanticStyles = v11;

    v5->_selectedSemanticStyleIndex = [v4 selectedSemanticStyleIndex];
    v5->_smartStyleSystemStyleIndex = [v4 smartStyleSystemStyleIndex];
    v5->_videoStabilizationMode = [v4 videoStabilizationMode];
    v5->_zoomPIPEnabled = [v4 zoomPIPEnabled];
    v5->_sharedLibraryMode = [v4 sharedLibraryMode];
    v5->_optionalDepthEffectEnabled = [v4 optionalDepthEffectEnabled];
    v5->_frontRearSimultaneousVideoEnabled = [v4 frontRearSimultaneousVideoEnabled];
  }

  return v5;
}

- (id)initForPhotoBoothWithCaptureDevice:(int64_t)a3
{
  v10.receiver = self;
  v10.super_class = CAMCaptureConfiguration;
  v4 = [(CAMCaptureConfiguration *)&v10 init];
  v5 = v4;
  if (v4)
  {
    *(v4 + 2) = 0;
    *(v4 + 3) = a3;
    v4[8] = 0;
    *(v4 + 2) = 0u;
    *(v4 + 3) = 0u;
    *(v4 + 4) = 0u;
    *(v4 + 5) = 0u;
    *(v4 + 6) = 0u;
    *(v4 + 7) = xmmword_1A3A6A960;
    v4[10] = 1;
    *(v4 + 136) = 0u;
    *(v4 + 152) = 0u;
    *(v4 + 168) = 0u;
    v6 = *(v4 + 23);
    *(v4 + 23) = 0;

    v7.f64[0] = NAN;
    v7.f64[1] = NAN;
    *(v5 + 12) = vnegq_f64(v7);
    *(v5 + 26) = 0;
    *(v5 + 11) = 0;
    v5[13] = 0;
    v8 = v5;
  }

  return v5;
}

+ (id)captureGraphConfigurationUsingConfiguration:(id)a3 outputToExternalStorage:(BOOL)a4 captureOrientation:(int64_t)a5
{
  v76 = a4;
  v5 = a3;
  v6 = [v5 mode];
  v7 = [v5 device];
  v8 = v7;
  if ((v7 - 8) < 3 || v7 == 11 || v7 == 1)
  {
    v9 = 0;
    v10 = 1;
  }

  else
  {
    v10 = 0;
    v9 = 1;
  }

  v73 = [v5 isPhotoBooth];
  v11 = +[CAMCaptureCapabilities capabilities];
  v12 = +[CAMUserPreferences preferences];
  if ([v11 isFrontRearSimultaneousVideoSupportedForMode:v6 devicePosition:v10])
  {
    v79 = [v12 shouldEnableFrontRearSimultaneousVideo];
  }

  else
  {
    v79 = 0;
  }

  if ([v5 zoomPIPEnabled])
  {
    v13 = +[CAMCaptureCapabilities capabilities];
    v67 = [v13 isZoomPIPSupportedForMode:v6 devicePosition:v10 frontRearSimultaneousVideoEnabled:v79];
  }

  else
  {
    v67 = 0;
  }

  if ([v11 isCustomLensSupportedForMode:v6 device:v8 isTrueVideo:0])
  {
    v69 = [v12 customLensGroup];
  }

  else
  {
    v69 = 0;
  }

  v68 = [v5 _previewFilters];
  v14 = [v5 videoConfiguration];
  v75 = [v5 audioConfiguration];
  if (v73)
  {
    v66 = 0;
  }

  else
  {
    v66 = [v12 videoThumbnailOutputConfigurationForMode:v6 devicePosition:v10];
  }

  v65 = [v12 photoEncodingBehavior];
  v78 = [v12 videoEncodingBehaviorForConfiguration:v14 mode:v6 desiredProResVideoMode:objc_msgSend(v5 outputToExternalStorage:"proResVideoMode") frontRearSimultaneousVideoEnabled:{v76, v79}];
  v64 = [v11 shouldSuspendVideoHDRForHDRMode:objc_msgSend(v5 captureMode:{"HDRMode"), v6}];
  if (v6)
  {
    v63 = 0;
    if (v9)
    {
LABEL_19:
      v62 = 0;
      goto LABEL_22;
    }
  }

  else
  {
    v63 = [v5 photoModeAspectRatioCrop];
    if (v9)
    {
      goto LABEL_19;
    }
  }

  v62 = [v5 mirrorFrontCameraCaptures];
LABEL_22:
  v61 = [v12 isAutoFPSVideoEnabledForMode:v6 device:v8 videoConfiguration:v14 encodingBehavior:v78 outputToExternalStorage:v76 frontRearSimultaneousVideoEnabled:v79];
  v60 = [v11 maxSupportedPhotoQualityPrioritizationForMode:v6 devicePosition:v10];
  if ([v12 rawControlEnabled])
  {
    v72 = [v11 isLinearDNGSupportedForMode:v6];
  }

  else
  {
    v72 = 0;
  }

  v15 = v10;
  v16 = [v11 semanticStyleSupportForMode:v6 devicePosition:v10];
  v17 = [v5 semanticStyles];
  v58 = v16;
  v59 = [v11 captureStyleForPreviewWithSupport:v16 styles:v17 selectedStyleIndex:objc_msgSend(v5 smartStyleSystemStyleIndex:{"selectedSemanticStyleIndex"), objc_msgSend(v5, "smartStyleSystemStyleIndex")}];

  if ([v12 shouldUseContentAwareDistortionCorrection])
  {
    v57 = [v11 isContentAwareDistortionCorrectionSupportedForMode:v6];
  }

  else
  {
    v57 = 0;
  }

  if ([v12 responsiveShutterEnabled])
  {
    v56 = [v11 isResponsiveShutterSupportedForMode:v6];
  }

  else
  {
    v56 = 0;
  }

  v18 = +[CAMUserPreferences preferences];
  LOBYTE(v38) = v79;
  v19 = [v11 isActionModeControlSupportedForMode:v6 device:v8 videoConfiguration:v14 videoEncodingBehavior:v78 trueVideoEnabled:0 prefersHDR10BitVideo:objc_msgSend(v18 frontRearSimultaneousVideoEnabled:{"prefersHDR10BitVideoForCapabilities:", v11), v38}];

  if (v19)
  {
    v20 = v15;
    v21 = [v5 videoStabilizationMode];
  }

  else
  {
    v20 = v15;
    v21 = 0;
  }

  v22 = [v12 videoStabilizationStrengthForVideoStabilizationMode:v21 captureMode:v6];
  v23 = +[CAMUserPreferences preferences];
  BYTE2(v39) = v79;
  BYTE1(v39) = [v23 prefersHDR10BitVideoForCapabilities:v11];
  LOBYTE(v39) = 0;
  v24 = [v11 isVideoStabilizationStrength:v22 supportedForMode:v6 device:v8 videoConfiguration:v14 videoEncodingBehavior:v78 outputToExternalStorage:v76 trueVideoEnabled:v39 prefersHDR10BitVideo:? frontRearSimultaneousVideoEnabled:?];

  v77 = [v12 maximumPhotoResolutionForMode:v6 device:v8];
  v25 = 0;
  if (v72)
  {
    v25 = [v5 rawMode] == 1;
  }

  v55 = v25;
  v53 = [v12 colorSpaceForMode:v6 videoConfiguration:v14 videoEncodingBehavior:v78 device:v8 preferredProResColorSpace:{objc_msgSend(v12, "explicitProResColorSpace")}];
  v26 = v20;
  v52 = [v11 useVideoBinnedForMode:v6 videoConfiguration:v14 devicePosition:v20];
  v51 = [v12 shouldUseDepthSuggestionInPhotoMode];
  v54 = [v12 windRemovalEnabledForAudioConfiguration:v75];
  v49 = [v12 prefersHDR10BitVideoForCapabilities:v11];
  v27 = [v11 isDynamicAspectRatioSupportedForMode:v6 videoConfiguration:v14 devicePosition:v20];
  v28 = [v11 isSmartFramingSupportedForMode:v6 devicePosition:v26];
  v29 = 1;
  if ((a5 - 3) >= 2)
  {
    v30 = 1;
  }

  else
  {
    v30 = 2;
  }

  v71 = v12;
  if (v28)
  {
    v31 = v30;
  }

  else
  {
    v31 = 0;
  }

  v50 = v8;
  if (v27)
  {
    v32 = 2;
  }

  else
  {
    v32 = 0;
  }

  if (v24)
  {
    v33 = v22;
  }

  else
  {
    v33 = 0;
  }

  v48 = v73;
  if (v73)
  {
    v29 = 2;
  }

  v74 = v29;
  v47 = [CAMCaptureGraphConfiguration alloc];
  v46 = [v5 macroMode];
  v34 = [v5 mixAudioWithOthers];
  v35 = [v5 smartStyles];
  BYTE2(v45) = v79;
  BYTE1(v45) = v49;
  LOBYTE(v45) = 0;
  BYTE2(v44) = v67;
  BYTE1(v44) = v51;
  LOBYTE(v44) = v52;
  BYTE2(v43) = v55;
  BYTE1(v43) = v56;
  LOBYTE(v43) = v57;
  BYTE1(v42) = v72;
  LOBYTE(v42) = v62;
  BYTE1(v41) = v64;
  LOBYTE(v41) = v61;
  LOBYTE(v40) = v54;
  v36 = [CAMCaptureGraphConfiguration initWithCaptureMode:v47 captureDevice:"initWithCaptureMode:captureDevice:macroMode:videoConfiguration:audioConfiguration:mixAudioWithOthers:windNoiseRemovalEnabled:previewConfiguration:previewSampleBufferVideoFormat:previewFilters:videoThumbnailOutputConfiguration:photoEncodingBehavior:videoEncodingBehavior:enableAutoFPSVideo:videoHDRSuspended:aspectRatioCrop:photoQualityPrioritization:captureMirrored:enableRAWCaptureIfSupported:semanticStyleSupport:previewSemanticStyle:smartStyles:enableContentAwareDistortionCorrection:enableResponsiveShutter:suspendLivePhotoCapture:videoStabilizationStrength:maximumPhotoResolution:colorSpace:videoBinned:enableDepthSuggestion:enableZoomPIP:customLensGroup:trueVideoEnabled:prefersHDR10BitVideo:frontRearSimultaneousVideoEnabled:videoDynamicAspectRatio:smartFramingFieldOfView:" macroMode:v6 videoConfiguration:v50 audioConfiguration:v46 mixAudioWithOthers:v14 windNoiseRemovalEnabled:v75 previewConfiguration:v34 previewSampleBufferVideoFormat:v40 previewFilters:v74 videoThumbnailOutputConfiguration:v48 photoEncodingBehavior:v68 videoEncodingBehavior:v66 enableAutoFPSVideo:v65 videoHDRSuspended:v78 aspectRatioCrop:v41 photoQualityPrioritization:v63 captureMirrored:v60 enableRAWCaptureIfSupported:v42 semanticStyleSupport:v58 previewSemanticStyle:v59 smartStyles:v35 enableContentAwareDistortionCorrection:v43 enableResponsiveShutter:v33 suspendLivePhotoCapture:v77 videoStabilizationStrength:v53 maximumPhotoResolution:v44 colorSpace:v69 videoBinned:v45 enableDepthSuggestion:v32 enableZoomPIP:v31 customLensGroup:? trueVideoEnabled:? prefersHDR10BitVideo:? frontRearSimultaneousVideoEnabled:? videoDynamicAspectRatio:? smartFramingFieldOfView:?];

  return v36;
}

+ (int64_t)sanitizeVideoConfigurationForDesiredConfiguration:(int64_t)a3 mode:(int64_t)a4 device:(int64_t)a5 trueVideoEnabled:(BOOL)a6 frontRearSimultaneousVideoEnabled:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  v13 = +[CAMCaptureCapabilities capabilities];
  do
  {
    if ([v13 isSupportedVideoConfiguration:a3 forMode:a4 device:a5 trueVideoEnabled:v8 frontRearSimultaneousVideoEnabled:v7])
    {
      break;
    }

    a3 = [a1 _fallbackVideoConfigurationForUnsupportedConfiguration:a3 frontRearSimultaneousVideoEnabled:v7];
  }

  while (a3);

  return a3;
}

+ (int64_t)_fallbackVideoConfigurationForUnsupportedConfiguration:(int64_t)a3 frontRearSimultaneousVideoEnabled:(BOOL)a4
{
  if (a3 > 12)
  {
    v5 = 12;
    if (a3 != 14)
    {
      v5 = 0;
    }

    if (a3 == 13)
    {
      return 9;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    if (a3 == 4)
    {
      return 1;
    }

    if (a3 == 9)
    {
      if (a4)
      {
        return 5;
      }

      return 1;
    }

    return 0;
  }
}

+ (id)configuration:(id)a3 withDevice:(int64_t)a4
{
  v5 = a3;
  v6 = [[CAMCaptureConfiguration alloc] initWithConfiguration:v5];

  v6->_device = a4;

  return v6;
}

- (NSArray)smartStyles
{
  v3 = +[CAMCaptureCapabilities capabilities];
  v4 = [v3 smartStylesSupported];

  if (v4)
  {
    v5 = [(CAMCaptureConfiguration *)self semanticStyles];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end