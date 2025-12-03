@interface CAMCaptureConfiguration
+ (id)captureGraphConfigurationUsingConfiguration:(id)configuration outputToExternalStorage:(BOOL)storage captureOrientation:(int64_t)orientation;
+ (id)configuration:(id)configuration withDevice:(int64_t)device;
+ (int64_t)_fallbackVideoConfigurationForUnsupportedConfiguration:(int64_t)configuration frontRearSimultaneousVideoEnabled:(BOOL)enabled;
+ (int64_t)sanitizeVideoConfigurationForDesiredConfiguration:(int64_t)configuration mode:(int64_t)mode device:(int64_t)device trueVideoEnabled:(BOOL)enabled frontRearSimultaneousVideoEnabled:(BOOL)videoEnabled;
- (CAMCaptureConfiguration)initWithCaptureMode:(int64_t)mode captureDevice:(int64_t)device videoConfiguration:(int64_t)configuration audioConfiguration:(unint64_t)audioConfiguration mixAudioWithOthers:(BOOL)others flashMode:(int64_t)flashMode torchMode:(int64_t)torchMode HDRMode:(int64_t)self0 irisMode:(int64_t)self1 timerDuration:(int64_t)self2 photoModeAspectRatioCrop:(int64_t)self3 photoModeEffectFilterType:(int64_t)self4 squareModeEffectFilterType:(int64_t)self5 portraitModeEffectFilterType:(int64_t)self6 portraitModeLightingEffectType:(int64_t)self7 portraitModeApertureValue:(double)self8 portraitModeIntensityValue:(double)self9 mirrorFrontCameraCaptures:(BOOL)captures exposureBiasesByMode:(id)byMode macroMode:(int64_t)macroMode photoResolution:(int64_t)resolution rawMode:(int64_t)rawMode proResVideoMode:(int64_t)videoMode semanticStyles:(id)styles selectedSemanticStyleIndex:(unint64_t)index smartStyleSystemStyleIndex:(unint64_t)styleIndex videoStabilizationMode:(int64_t)stabilizationMode zoomPIPEnabled:(BOOL)mode0 optionalDepthEffectEnabled:(BOOL)mode1 sharedLibraryMode:(int64_t)mode2 frontRearSimultaneousVideoEnabled:(BOOL)mode3;
- (CAMCaptureConfiguration)initWithConfiguration:(id)configuration;
- (NSArray)smartStyles;
- (id)_previewFilters;
- (id)initForPhotoBoothWithCaptureDevice:(int64_t)device;
@end

@implementation CAMCaptureConfiguration

- (id)_previewFilters
{
  if ([(CAMCaptureConfiguration *)self isPhotoBooth])
  {
    goto LABEL_2;
  }

  mode = [(CAMCaptureConfiguration *)self mode];
  if (mode > 5)
  {
    if (mode == 6)
    {
      portraitModeEffectFilterType = [(CAMCaptureConfiguration *)self portraitModeEffectFilterType];
      portraitModeLightingEffectType = [(CAMCaptureConfiguration *)self portraitModeLightingEffectType];
      v4 = 1;
    }

    else
    {
      portraitModeLightingEffectType = 0;
      v4 = mode == 7;
      portraitModeEffectFilterType = 0;
    }
  }

  else
  {
    if (mode)
    {
      if (mode != 4)
      {
LABEL_2:
        portraitModeLightingEffectType = 0;
        v4 = 0;
        portraitModeEffectFilterType = 0;
        goto LABEL_12;
      }

      squareModeEffectFilterType = [(CAMCaptureConfiguration *)self squareModeEffectFilterType];
    }

    else
    {
      squareModeEffectFilterType = [(CAMCaptureConfiguration *)self photoModeEffectFilterType];
    }

    portraitModeEffectFilterType = squareModeEffectFilterType;
    portraitModeLightingEffectType = 0;
    v4 = 0;
  }

LABEL_12:

  return [CAMEffectFilterManager filtersForFilterType:portraitModeEffectFilterType lightingType:portraitModeLightingEffectType applyDepthEffect:v4];
}

- (CAMCaptureConfiguration)initWithCaptureMode:(int64_t)mode captureDevice:(int64_t)device videoConfiguration:(int64_t)configuration audioConfiguration:(unint64_t)audioConfiguration mixAudioWithOthers:(BOOL)others flashMode:(int64_t)flashMode torchMode:(int64_t)torchMode HDRMode:(int64_t)self0 irisMode:(int64_t)self1 timerDuration:(int64_t)self2 photoModeAspectRatioCrop:(int64_t)self3 photoModeEffectFilterType:(int64_t)self4 squareModeEffectFilterType:(int64_t)self5 portraitModeEffectFilterType:(int64_t)self6 portraitModeLightingEffectType:(int64_t)self7 portraitModeApertureValue:(double)self8 portraitModeIntensityValue:(double)self9 mirrorFrontCameraCaptures:(BOOL)captures exposureBiasesByMode:(id)byMode macroMode:(int64_t)macroMode photoResolution:(int64_t)resolution rawMode:(int64_t)rawMode proResVideoMode:(int64_t)videoMode semanticStyles:(id)styles selectedSemanticStyleIndex:(unint64_t)index smartStyleSystemStyleIndex:(unint64_t)styleIndex videoStabilizationMode:(int64_t)stabilizationMode zoomPIPEnabled:(BOOL)mode0 optionalDepthEffectEnabled:(BOOL)mode1 sharedLibraryMode:(int64_t)mode2 frontRearSimultaneousVideoEnabled:(BOOL)mode3
{
  byModeCopy = byMode;
  stylesCopy = styles;
  v49.receiver = self;
  v49.super_class = CAMCaptureConfiguration;
  v44 = [(CAMCaptureConfiguration *)&v49 init];
  if (v44)
  {
    v44->_mode = mode;
    v44->_device = device;
    v44->_videoConfiguration = configuration;
    v44->_audioConfiguration = audioConfiguration;
    v44->_mixAudioWithOthers = others;
    v44->_flashMode = flashMode;
    v44->_torchMode = torchMode;
    v44->_HDRMode = rMode;
    v44->_timerDuration = duration;
    v44->_irisMode = irisMode;
    v44->_photoModeAspectRatioCrop = crop;
    v44->_photoModeEffectFilterType = type;
    v44->_squareModeEffectFilterType = filterType;
    v44->_portraitModeEffectFilterType = effectFilterType;
    v44->_portraitModeLightingEffectType = effectType;
    v44->_photoBooth = 0;
    v44->_portraitModeApertureValue = value;
    v44->_portraitModeIntensityValue = intensityValue;
    v44->_mirrorFrontCameraCaptures = captures;
    v45 = [byModeCopy copy];
    exposureBiasesByMode = v44->_exposureBiasesByMode;
    v44->_exposureBiasesByMode = v45;

    v44->_macroMode = macroMode;
    v44->_photoResolution = resolution;
    v44->_rawMode = rawMode;
    v44->_proResVideoMode = videoMode;
    objc_storeStrong(&v44->_semanticStyles, styles);
    v44->_selectedSemanticStyleIndex = index;
    v44->_smartStyleSystemStyleIndex = styleIndex;
    v44->_zoomPIPEnabled = enabled;
    v44->_videoStabilizationMode = stabilizationMode;
    v44->_sharedLibraryMode = libraryMode;
    v44->_optionalDepthEffectEnabled = effectEnabled;
    v44->_frontRearSimultaneousVideoEnabled = videoEnabled;
    v47 = v44;
  }

  return v44;
}

- (CAMCaptureConfiguration)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v14.receiver = self;
  v14.super_class = CAMCaptureConfiguration;
  v5 = [(CAMCaptureConfiguration *)&v14 init];
  if (v5)
  {
    v5->_mode = [configurationCopy mode];
    v5->_device = [configurationCopy device];
    v5->_videoConfiguration = [configurationCopy videoConfiguration];
    v5->_audioConfiguration = [configurationCopy audioConfiguration];
    v5->_mixAudioWithOthers = [configurationCopy mixAudioWithOthers];
    v5->_flashMode = [configurationCopy flashMode];
    v5->_torchMode = [configurationCopy torchMode];
    v5->_HDRMode = [configurationCopy HDRMode];
    v5->_irisMode = [configurationCopy irisMode];
    v5->_timerDuration = [configurationCopy timerDuration];
    v5->_photoModeAspectRatioCrop = [configurationCopy photoModeAspectRatioCrop];
    v5->_photoModeEffectFilterType = [configurationCopy photoModeEffectFilterType];
    v5->_squareModeEffectFilterType = [configurationCopy squareModeEffectFilterType];
    v5->_portraitModeEffectFilterType = [configurationCopy portraitModeEffectFilterType];
    v5->_portraitModeLightingEffectType = [configurationCopy portraitModeLightingEffectType];
    v5->_photoBooth = [configurationCopy isPhotoBooth];
    [configurationCopy portraitModeApertureValue];
    v5->_portraitModeApertureValue = v6;
    [configurationCopy portraitModeIntensityValue];
    v5->_portraitModeIntensityValue = v7;
    v5->_mirrorFrontCameraCaptures = [configurationCopy mirrorFrontCameraCaptures];
    exposureBiasesByMode = [configurationCopy exposureBiasesByMode];
    v9 = [exposureBiasesByMode copy];
    exposureBiasesByMode = v5->_exposureBiasesByMode;
    v5->_exposureBiasesByMode = v9;

    v5->_macroMode = [configurationCopy macroMode];
    v5->_photoResolution = [configurationCopy photoResolution];
    v5->_rawMode = [configurationCopy rawMode];
    v5->_proResVideoMode = [configurationCopy proResVideoMode];
    semanticStyles = [configurationCopy semanticStyles];
    semanticStyles = v5->_semanticStyles;
    v5->_semanticStyles = semanticStyles;

    v5->_selectedSemanticStyleIndex = [configurationCopy selectedSemanticStyleIndex];
    v5->_smartStyleSystemStyleIndex = [configurationCopy smartStyleSystemStyleIndex];
    v5->_videoStabilizationMode = [configurationCopy videoStabilizationMode];
    v5->_zoomPIPEnabled = [configurationCopy zoomPIPEnabled];
    v5->_sharedLibraryMode = [configurationCopy sharedLibraryMode];
    v5->_optionalDepthEffectEnabled = [configurationCopy optionalDepthEffectEnabled];
    v5->_frontRearSimultaneousVideoEnabled = [configurationCopy frontRearSimultaneousVideoEnabled];
  }

  return v5;
}

- (id)initForPhotoBoothWithCaptureDevice:(int64_t)device
{
  v10.receiver = self;
  v10.super_class = CAMCaptureConfiguration;
  v4 = [(CAMCaptureConfiguration *)&v10 init];
  v5 = v4;
  if (v4)
  {
    *(v4 + 2) = 0;
    *(v4 + 3) = device;
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

+ (id)captureGraphConfigurationUsingConfiguration:(id)configuration outputToExternalStorage:(BOOL)storage captureOrientation:(int64_t)orientation
{
  storageCopy = storage;
  configurationCopy = configuration;
  mode = [configurationCopy mode];
  device = [configurationCopy device];
  v8 = device;
  if ((device - 8) < 3 || device == 11 || device == 1)
  {
    v9 = 0;
    v10 = 1;
  }

  else
  {
    v10 = 0;
    v9 = 1;
  }

  isPhotoBooth = [configurationCopy isPhotoBooth];
  v11 = +[CAMCaptureCapabilities capabilities];
  v12 = +[CAMUserPreferences preferences];
  if ([v11 isFrontRearSimultaneousVideoSupportedForMode:mode devicePosition:v10])
  {
    shouldEnableFrontRearSimultaneousVideo = [v12 shouldEnableFrontRearSimultaneousVideo];
  }

  else
  {
    shouldEnableFrontRearSimultaneousVideo = 0;
  }

  if ([configurationCopy zoomPIPEnabled])
  {
    v13 = +[CAMCaptureCapabilities capabilities];
    v67 = [v13 isZoomPIPSupportedForMode:mode devicePosition:v10 frontRearSimultaneousVideoEnabled:shouldEnableFrontRearSimultaneousVideo];
  }

  else
  {
    v67 = 0;
  }

  if ([v11 isCustomLensSupportedForMode:mode device:v8 isTrueVideo:0])
  {
    customLensGroup = [v12 customLensGroup];
  }

  else
  {
    customLensGroup = 0;
  }

  _previewFilters = [configurationCopy _previewFilters];
  videoConfiguration = [configurationCopy videoConfiguration];
  audioConfiguration = [configurationCopy audioConfiguration];
  if (isPhotoBooth)
  {
    v66 = 0;
  }

  else
  {
    v66 = [v12 videoThumbnailOutputConfigurationForMode:mode devicePosition:v10];
  }

  photoEncodingBehavior = [v12 photoEncodingBehavior];
  v78 = [v12 videoEncodingBehaviorForConfiguration:videoConfiguration mode:mode desiredProResVideoMode:objc_msgSend(configurationCopy outputToExternalStorage:"proResVideoMode") frontRearSimultaneousVideoEnabled:{storageCopy, shouldEnableFrontRearSimultaneousVideo}];
  v64 = [v11 shouldSuspendVideoHDRForHDRMode:objc_msgSend(configurationCopy captureMode:{"HDRMode"), mode}];
  if (mode)
  {
    photoModeAspectRatioCrop = 0;
    if (v9)
    {
LABEL_19:
      mirrorFrontCameraCaptures = 0;
      goto LABEL_22;
    }
  }

  else
  {
    photoModeAspectRatioCrop = [configurationCopy photoModeAspectRatioCrop];
    if (v9)
    {
      goto LABEL_19;
    }
  }

  mirrorFrontCameraCaptures = [configurationCopy mirrorFrontCameraCaptures];
LABEL_22:
  v61 = [v12 isAutoFPSVideoEnabledForMode:mode device:v8 videoConfiguration:videoConfiguration encodingBehavior:v78 outputToExternalStorage:storageCopy frontRearSimultaneousVideoEnabled:shouldEnableFrontRearSimultaneousVideo];
  v60 = [v11 maxSupportedPhotoQualityPrioritizationForMode:mode devicePosition:v10];
  if ([v12 rawControlEnabled])
  {
    v72 = [v11 isLinearDNGSupportedForMode:mode];
  }

  else
  {
    v72 = 0;
  }

  v15 = v10;
  v16 = [v11 semanticStyleSupportForMode:mode devicePosition:v10];
  semanticStyles = [configurationCopy semanticStyles];
  v58 = v16;
  v59 = [v11 captureStyleForPreviewWithSupport:v16 styles:semanticStyles selectedStyleIndex:objc_msgSend(configurationCopy smartStyleSystemStyleIndex:{"selectedSemanticStyleIndex"), objc_msgSend(configurationCopy, "smartStyleSystemStyleIndex")}];

  if ([v12 shouldUseContentAwareDistortionCorrection])
  {
    v57 = [v11 isContentAwareDistortionCorrectionSupportedForMode:mode];
  }

  else
  {
    v57 = 0;
  }

  if ([v12 responsiveShutterEnabled])
  {
    v56 = [v11 isResponsiveShutterSupportedForMode:mode];
  }

  else
  {
    v56 = 0;
  }

  v18 = +[CAMUserPreferences preferences];
  LOBYTE(v38) = shouldEnableFrontRearSimultaneousVideo;
  v19 = [v11 isActionModeControlSupportedForMode:mode device:v8 videoConfiguration:videoConfiguration videoEncodingBehavior:v78 trueVideoEnabled:0 prefersHDR10BitVideo:objc_msgSend(v18 frontRearSimultaneousVideoEnabled:{"prefersHDR10BitVideoForCapabilities:", v11), v38}];

  if (v19)
  {
    v20 = v15;
    videoStabilizationMode = [configurationCopy videoStabilizationMode];
  }

  else
  {
    v20 = v15;
    videoStabilizationMode = 0;
  }

  v22 = [v12 videoStabilizationStrengthForVideoStabilizationMode:videoStabilizationMode captureMode:mode];
  v23 = +[CAMUserPreferences preferences];
  BYTE2(v39) = shouldEnableFrontRearSimultaneousVideo;
  BYTE1(v39) = [v23 prefersHDR10BitVideoForCapabilities:v11];
  LOBYTE(v39) = 0;
  v24 = [v11 isVideoStabilizationStrength:v22 supportedForMode:mode device:v8 videoConfiguration:videoConfiguration videoEncodingBehavior:v78 outputToExternalStorage:storageCopy trueVideoEnabled:v39 prefersHDR10BitVideo:? frontRearSimultaneousVideoEnabled:?];

  v77 = [v12 maximumPhotoResolutionForMode:mode device:v8];
  v25 = 0;
  if (v72)
  {
    v25 = [configurationCopy rawMode] == 1;
  }

  v55 = v25;
  v53 = [v12 colorSpaceForMode:mode videoConfiguration:videoConfiguration videoEncodingBehavior:v78 device:v8 preferredProResColorSpace:{objc_msgSend(v12, "explicitProResColorSpace")}];
  v26 = v20;
  v52 = [v11 useVideoBinnedForMode:mode videoConfiguration:videoConfiguration devicePosition:v20];
  shouldUseDepthSuggestionInPhotoMode = [v12 shouldUseDepthSuggestionInPhotoMode];
  v54 = [v12 windRemovalEnabledForAudioConfiguration:audioConfiguration];
  v49 = [v12 prefersHDR10BitVideoForCapabilities:v11];
  v27 = [v11 isDynamicAspectRatioSupportedForMode:mode videoConfiguration:videoConfiguration devicePosition:v20];
  v28 = [v11 isSmartFramingSupportedForMode:mode devicePosition:v26];
  v29 = 1;
  if ((orientation - 3) >= 2)
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

  v48 = isPhotoBooth;
  if (isPhotoBooth)
  {
    v29 = 2;
  }

  v74 = v29;
  v47 = [CAMCaptureGraphConfiguration alloc];
  macroMode = [configurationCopy macroMode];
  mixAudioWithOthers = [configurationCopy mixAudioWithOthers];
  smartStyles = [configurationCopy smartStyles];
  BYTE2(v45) = shouldEnableFrontRearSimultaneousVideo;
  BYTE1(v45) = v49;
  LOBYTE(v45) = 0;
  BYTE2(v44) = v67;
  BYTE1(v44) = shouldUseDepthSuggestionInPhotoMode;
  LOBYTE(v44) = v52;
  BYTE2(v43) = v55;
  BYTE1(v43) = v56;
  LOBYTE(v43) = v57;
  BYTE1(v42) = v72;
  LOBYTE(v42) = mirrorFrontCameraCaptures;
  BYTE1(v41) = v64;
  LOBYTE(v41) = v61;
  LOBYTE(v40) = v54;
  v36 = [CAMCaptureGraphConfiguration initWithCaptureMode:v47 captureDevice:"initWithCaptureMode:captureDevice:macroMode:videoConfiguration:audioConfiguration:mixAudioWithOthers:windNoiseRemovalEnabled:previewConfiguration:previewSampleBufferVideoFormat:previewFilters:videoThumbnailOutputConfiguration:photoEncodingBehavior:videoEncodingBehavior:enableAutoFPSVideo:videoHDRSuspended:aspectRatioCrop:photoQualityPrioritization:captureMirrored:enableRAWCaptureIfSupported:semanticStyleSupport:previewSemanticStyle:smartStyles:enableContentAwareDistortionCorrection:enableResponsiveShutter:suspendLivePhotoCapture:videoStabilizationStrength:maximumPhotoResolution:colorSpace:videoBinned:enableDepthSuggestion:enableZoomPIP:customLensGroup:trueVideoEnabled:prefersHDR10BitVideo:frontRearSimultaneousVideoEnabled:videoDynamicAspectRatio:smartFramingFieldOfView:" macroMode:mode videoConfiguration:v50 audioConfiguration:macroMode mixAudioWithOthers:videoConfiguration windNoiseRemovalEnabled:audioConfiguration previewConfiguration:mixAudioWithOthers previewSampleBufferVideoFormat:v40 previewFilters:v74 videoThumbnailOutputConfiguration:v48 photoEncodingBehavior:_previewFilters videoEncodingBehavior:v66 enableAutoFPSVideo:photoEncodingBehavior videoHDRSuspended:v78 aspectRatioCrop:v41 photoQualityPrioritization:photoModeAspectRatioCrop captureMirrored:v60 enableRAWCaptureIfSupported:v42 semanticStyleSupport:v58 previewSemanticStyle:v59 smartStyles:smartStyles enableContentAwareDistortionCorrection:v43 enableResponsiveShutter:v33 suspendLivePhotoCapture:v77 videoStabilizationStrength:v53 maximumPhotoResolution:v44 colorSpace:customLensGroup videoBinned:v45 enableDepthSuggestion:v32 enableZoomPIP:v31 customLensGroup:? trueVideoEnabled:? prefersHDR10BitVideo:? frontRearSimultaneousVideoEnabled:? videoDynamicAspectRatio:? smartFramingFieldOfView:?];

  return v36;
}

+ (int64_t)sanitizeVideoConfigurationForDesiredConfiguration:(int64_t)configuration mode:(int64_t)mode device:(int64_t)device trueVideoEnabled:(BOOL)enabled frontRearSimultaneousVideoEnabled:(BOOL)videoEnabled
{
  videoEnabledCopy = videoEnabled;
  enabledCopy = enabled;
  v13 = +[CAMCaptureCapabilities capabilities];
  do
  {
    if ([v13 isSupportedVideoConfiguration:configuration forMode:mode device:device trueVideoEnabled:enabledCopy frontRearSimultaneousVideoEnabled:videoEnabledCopy])
    {
      break;
    }

    configuration = [self _fallbackVideoConfigurationForUnsupportedConfiguration:configuration frontRearSimultaneousVideoEnabled:videoEnabledCopy];
  }

  while (configuration);

  return configuration;
}

+ (int64_t)_fallbackVideoConfigurationForUnsupportedConfiguration:(int64_t)configuration frontRearSimultaneousVideoEnabled:(BOOL)enabled
{
  if (configuration > 12)
  {
    v5 = 12;
    if (configuration != 14)
    {
      v5 = 0;
    }

    if (configuration == 13)
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
    if (configuration == 4)
    {
      return 1;
    }

    if (configuration == 9)
    {
      if (enabled)
      {
        return 5;
      }

      return 1;
    }

    return 0;
  }
}

+ (id)configuration:(id)configuration withDevice:(int64_t)device
{
  configurationCopy = configuration;
  v6 = [[CAMCaptureConfiguration alloc] initWithConfiguration:configurationCopy];

  v6->_device = device;

  return v6;
}

- (NSArray)smartStyles
{
  v3 = +[CAMCaptureCapabilities capabilities];
  smartStylesSupported = [v3 smartStylesSupported];

  if (smartStylesSupported)
  {
    semanticStyles = [(CAMCaptureConfiguration *)self semanticStyles];
  }

  else
  {
    semanticStyles = 0;
  }

  return semanticStyles;
}

@end