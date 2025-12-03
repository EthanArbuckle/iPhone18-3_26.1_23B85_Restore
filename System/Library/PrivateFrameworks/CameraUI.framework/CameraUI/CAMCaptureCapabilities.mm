@interface CAMCaptureCapabilities
+ (BOOL)isCameraAppInstalled;
+ (BOOL)isMessagesAppInstalled;
+ (CAMCaptureCapabilities)capabilities;
- ($F24F406B2B787EFB06265DBA3D28CBD5)tripleCameraSwitchOverZoomFactorsForDevicePosition:(int64_t)position;
- (BOOL)_is1080p120SlomoSupportedForDevice:(int64_t)device;
- (BOOL)_isLensPositionControlSupportedForMode:(int64_t)mode;
- (BOOL)_isLensPositionControlSupportedForResolvedDevice:(int64_t)device;
- (BOOL)_isSpatialOverCaptureSupportedForDevice:(int64_t)device;
- (BOOL)_isSpatialPhotoModeSupportedForDevice:(int64_t)device;
- (BOOL)_isSpatialVideoModeSupportedForDevice:(int64_t)device;
- (BOOL)_isSuperWideZoomSupportedForMode:(int64_t)mode devicePosition:(int64_t)position videoConfiguration:(int64_t)configuration;
- (BOOL)_needsForcedSingleCameraEmulationForVideoStabilizationStrength:(int64_t)strength videoConfiguration:(int64_t)configuration mode:(int64_t)mode;
- (BOOL)_shouldAllowCameraToggleForMode:(int64_t)mode devicePosition:(int64_t)position videoConfiguration:(int64_t)configuration videoStabilizationStrength:(int64_t)strength frontRearSimultaneousVideoEnabled:(BOOL)enabled;
- (BOOL)backEnhancedHEICResolutionSupported;
- (BOOL)enhancedHEICResolutionSupported;
- (BOOL)enhancedRAWResolutionSupported;
- (BOOL)fallbackCameraEnabled;
- (BOOL)is1080p120VideoSupportedForDevice:(int64_t)device;
- (BOOL)is1080p240SupportedForDevice:(int64_t)device;
- (BOOL)is1080p60VideoSupportedForDevice:(int64_t)device;
- (BOOL)is4K120VideoSupportedForDevice:(int64_t)device;
- (BOOL)is4k24VideoSupportedForDevice:(int64_t)device;
- (BOOL)is4k30VideoSupportedForDevice:(int64_t)device;
- (BOOL)is4k60VideoSupportedForDevice:(int64_t)device;
- (BOOL)is720p240SupportedForDevice:(int64_t)device;
- (BOOL)isActionModeControlSupportedForMode:(int64_t)mode device:(int64_t)device videoConfiguration:(int64_t)configuration videoEncodingBehavior:(int64_t)behavior trueVideoEnabled:(BOOL)enabled prefersHDR10BitVideo:(BOOL)video frontRearSimultaneousVideoEnabled:(BOOL)videoEnabled;
- (BOOL)isAspectRatioCropSupportedForMode:(int64_t)mode devicePosition:(int64_t)position;
- (BOOL)isAutoFPSVideoSupportedForMode:(int64_t)mode videoConfiguration:(int64_t)configuration videoEncodingBehavior:(int64_t)behavior outputToExternalStorage:(BOOL)storage prefersHDR10BitVideo:(BOOL)video frontRearSimultaneousVideoEnabled:(BOOL)enabled;
- (BOOL)isAutoLowLightVideoSupportedForMode:(int64_t)mode videoConfiguration:(int64_t)configuration videoEncodingBehavior:(int64_t)behavior;
- (BOOL)isBurstSupportedForMode:(int64_t)mode device:(int64_t)device;
- (BOOL)isCameraSupportedForDevice:(int64_t)device;
- (BOOL)isCameraSupportedForDevicePosition:(int64_t)position;
- (BOOL)isCinematicAudioSupportedForMode:(int64_t)mode;
- (BOOL)isCinematicModeSupportedForDevice:(int64_t)device;
- (BOOL)isCinematicModeSupportedForDevicePosition:(int64_t)position;
- (BOOL)isCustomLensSupportedForMode:(int64_t)mode device:(int64_t)device isTrueVideo:(BOOL)video;
- (BOOL)isCustomLensSupportedForPhotoResolution:(int64_t)resolution;
- (BOOL)isDeferredProcessingPrewarmingSupportedForMode:(int64_t)mode devicePosition:(int64_t)position;
- (BOOL)isDeferredProcessingSupportedForMode:(int64_t)mode devicePosition:(int64_t)position;
- (BOOL)isDepthEffectApertureSupportedForMode:(int64_t)mode devicePosition:(int64_t)position;
- (BOOL)isDepthEffectApertureSupportedForMode:(int64_t)mode devicePosition:(int64_t)position depthSuggestionEnabled:(BOOL)enabled;
- (BOOL)isDualDeviceDisparitySupportedForMode:(int64_t)mode devicePosition:(int64_t)position;
- (BOOL)isDualSupported;
- (BOOL)isDualSupportedForDevicePosition:(int64_t)position;
- (BOOL)isDualSupportedForMode:(int64_t)mode devicePosition:(int64_t)position videoConfiguration:(int64_t)configuration videoStabilizationStrength:(int64_t)strength;
- (BOOL)isDynamicAspectRatioSupportedForMode:(int64_t)mode devicePosition:(int64_t)position;
- (BOOL)isDynamicAspectRatioSupportedForMode:(int64_t)mode videoConfiguration:(int64_t)configuration devicePosition:(int64_t)position;
- (BOOL)isEnhancedStabilizationSupportedForMode:(int64_t)mode device:(int64_t)device videoConfiguration:(int64_t)configuration videoEncodingBehavior:(int64_t)behavior trueVideoEnabled:(BOOL)enabled prefersHDR10BitVideo:(BOOL)video frontRearSimultaneousVideoEnabled:(BOOL)videoEnabled;
- (BOOL)isExposureClippingIndicatorSupportedForMode:(int64_t)mode videoConfiguration:(int64_t)configuration;
- (BOOL)isExternalStorageOutputSupportedForMode:(int64_t)mode videoEncodingBehavior:(int64_t)behavior;
- (BOOL)isFlashOrTorchSupportedForMode:(int64_t)mode devicePosition:(int64_t)position;
- (BOOL)isFlashSupportedForDevicePosition:(int64_t)position;
- (BOOL)isFrontRearSimultaneousVideoSupportedForMode:(int64_t)mode;
- (BOOL)isFrontRearSimultaneousVideoSupportedForMode:(int64_t)mode devicePosition:(int64_t)position;
- (BOOL)isFrontRearSimultaneousVideoSupportedForVideoConfiguration:(int64_t)configuration;
- (BOOL)isHDR10BitSlomoSupportedForDevice:(int64_t)device;
- (BOOL)isHDR10BitVideoSupportedForVideoConfiguration:(int64_t)configuration videoEncodingBehavior:(int64_t)behavior;
- (BOOL)isHDROnSupportedForDevicePosition:(int64_t)position;
- (BOOL)isHDRSupportedForDevicePosition:(int64_t)position;
- (BOOL)isHDRSupportedForMode:(int64_t)mode devicePosition:(int64_t)position;
- (BOOL)isImageAnalysisSupportedForMode:(int64_t)mode devicePosition:(int64_t)position;
- (BOOL)isLensPositionControlSupportedForMode:(int64_t)mode device:(int64_t)device videoConfiguration:(int64_t)configuration videoStabilizationStrength:(int64_t)strength frontRearSimultaneousVideoEnabled:(BOOL)enabled;
- (BOOL)isLightingControlSupportedForMode:(int64_t)mode;
- (BOOL)isLivePhotoSupported;
- (BOOL)isLivePhotoSupportedForDevicePosition:(int64_t)position;
- (BOOL)isLivePreviewSupportedForLightingType:(int64_t)type devicePosition:(int64_t)position;
- (BOOL)isNightModeSupported;
- (BOOL)isNightModeSupportedForMode:(int64_t)mode device:(int64_t)device;
- (BOOL)isNightModeSupportedForMode:(int64_t)mode device:(int64_t)device zoomFactor:(double)factor;
- (BOOL)isNightModeWithDepthSupportedForMode:(int64_t)mode device:(int64_t)device;
- (BOOL)isPanoramaSupportedForDevice:(int64_t)device;
- (BOOL)isPauseVideoSupportedForMode:(int64_t)mode;
- (BOOL)isPearlSupportedForDevicePosition:(int64_t)position;
- (BOOL)isPearlSupportedForMode:(int64_t)mode devicePosition:(int64_t)position;
- (BOOL)isPhotoFormatSupported:(id)supported forMode:(int64_t)mode device:(int64_t)device;
- (BOOL)isPhotoModeDepthSuggestionSupportedForDevicePosition:(int64_t)position;
- (BOOL)isPhotoResolutionSupported:(int64_t)supported forLightingType:(int64_t)type;
- (BOOL)isPhotoResolutionSupported:(int64_t)supported forMode:(int64_t)mode device:(int64_t)device photoEncoding:(int64_t)encoding;
- (BOOL)isPhotoResolutionSupported:(int64_t)supported forPhotoEncoding:(int64_t)encoding;
- (BOOL)isPortraitEffectIntensitySupportedForMode:(int64_t)mode;
- (BOOL)isPortraitModeSupported;
- (BOOL)isPortraitModeSupportedForDevice:(int64_t)device;
- (BOOL)isPortraitModeSupportedForDevicePosition:(int64_t)position;
- (BOOL)isPortraitZoomSupportedForDevicePosition:(int64_t)position;
- (BOOL)isPreserveCreativeControlsSupported;
- (BOOL)isPreviewAspectRatioToggleSupportedForMode:(int64_t)mode;
- (BOOL)isProResVideoSupportedForMode:(int64_t)mode frontRearSimultaneousVideoEnabled:(BOOL)enabled;
- (BOOL)isProResVideoSupportedForMode:(int64_t)mode videoConfiguration:(int64_t)configuration outputToExternalStorage:(BOOL)storage frontRearSimultaneousVideoEnabled:(BOOL)enabled;
- (BOOL)isQuadraTeleBinningReconfigurationSupportedForMode:(int64_t)mode devicePosition:(int64_t)position videoConfiguration:(int64_t)configuration;
- (BOOL)isQuadraWideBinningReconfigurationSupportedForMode:(int64_t)mode devicePosition:(int64_t)position videoConfiguration:(int64_t)configuration;
- (BOOL)isQuadraWideSupported;
- (BOOL)isResponsiveShutterSupportedForMode:(int64_t)mode;
- (BOOL)isSemanticDevelopmentSupportedForMode:(int64_t)mode;
- (BOOL)isSingleCameraPortraitModeSupportedForDevicePosition:(int64_t)position;
- (BOOL)isSlomoSupportedForDevice:(int64_t)device;
- (BOOL)isSmartFramingSupportedForMode:(int64_t)mode devicePosition:(int64_t)position;
- (BOOL)isSmartHDRSupported;
- (BOOL)isSmartHDRSupportedForMode:(int64_t)mode devicePosition:(int64_t)position;
- (BOOL)isSmudgeDetectionSupportedForMode:(int64_t)mode;
- (BOOL)isSpatialOverCaptureSupported;
- (BOOL)isStereoAudioRecordingSupportedForMode:(int64_t)mode;
- (BOOL)isSuperWideAutoMacroSupportedForMode:(int64_t)mode device:(int64_t)device videoConfiguration:(int64_t)configuration videoStabilizationStrength:(int64_t)strength frontRearSimultaneousVideoEnabled:(BOOL)enabled;
- (BOOL)isSuperWideSupported;
- (BOOL)isSuperWideSupportedForDevicePosition:(int64_t)position;
- (BOOL)isSuperWideSupportedForMode:(int64_t)mode devicePosition:(int64_t)position videoConfiguration:(int64_t)configuration;
- (BOOL)isSupportedMode:(int64_t)mode withDevice:(int64_t)device;
- (BOOL)isSupportedVideoConfiguration:(int64_t)configuration forMode:(int64_t)mode device:(int64_t)device;
- (BOOL)isSupportedVideoConfiguration:(int64_t)configuration forMode:(int64_t)mode device:(int64_t)device trueVideoEnabled:(BOOL)enabled frontRearSimultaneousVideoEnabled:(BOOL)videoEnabled;
- (BOOL)isSupportedVideoConfiguration:(int64_t)configuration forMode:(int64_t)mode videoEncodingBehavior:(int64_t)behavior outputToExternalStorage:(BOOL)storage frontRearSimultaneousVideoEnabled:(BOOL)enabled;
- (BOOL)isTelephotoSupported;
- (BOOL)isTelephotoSupportedForDevicePosition:(int64_t)position;
- (BOOL)isTelephotoSupportedForMode:(int64_t)mode devicePosition:(int64_t)position videoConfiguration:(int64_t)configuration;
- (BOOL)isTimeOfFlightSupported;
- (BOOL)isTimeOfFlightSupportedForDevicePosition:(int64_t)position;
- (BOOL)isTimelapseSupportedForDevice:(int64_t)device;
- (BOOL)isTorchPatternSupportedForDevicePosition:(int64_t)position;
- (BOOL)isTorchSupportedForDevicePosition:(int64_t)position;
- (BOOL)isTripleCameraSupported;
- (BOOL)isTripleCameraSupportedForDevicePosition:(int64_t)position;
- (BOOL)isTripleCameraSupportedForMode:(int64_t)mode devicePosition:(int64_t)position videoConfiguration:(int64_t)configuration videoStabilizationStrength:(int64_t)strength frontRearSimultaneousVideoEnabled:(BOOL)enabled;
- (BOOL)isVariableFramerateVideoSupportedForMode:(int64_t)mode videoConfiguration:(int64_t)configuration videoEncodingBehavior:(int64_t)behavior outputToExternalStorage:(BOOL)storage prefersHDR10BitVideo:(BOOL)video frontRearSimultaneousVideoEnabled:(BOOL)enabled;
- (BOOL)isVideoStabilizationStrength:(int64_t)strength supportedForMode:(int64_t)mode device:(int64_t)device videoConfiguration:(int64_t)configuration videoEncodingBehavior:(int64_t)behavior outputToExternalStorage:(BOOL)storage trueVideoEnabled:(BOOL)enabled prefersHDR10BitVideo:(BOOL)self0 frontRearSimultaneousVideoEnabled:(BOOL)self1;
- (BOOL)isVideoStabilizationStrength:(int64_t)strength supportedForMode:(int64_t)mode devicePosition:(int64_t)position trueVideoEnabled:(BOOL)enabled frontRearSimultaneousVideoEnabled:(BOOL)videoEnabled;
- (BOOL)isWideDualSupported;
- (BOOL)isWideDualSupportedForDevicePosition:(int64_t)position;
- (BOOL)isWideDualSupportedForMode:(int64_t)mode devicePosition:(int64_t)position videoConfiguration:(int64_t)configuration videoStabilizationStrength:(int64_t)strength;
- (BOOL)isWideSupportedForDevicePosition:(int64_t)position;
- (BOOL)isWideSupportedForMode:(int64_t)mode devicePosition:(int64_t)position videoConfiguration:(int64_t)configuration;
- (BOOL)isZoomAllowedForMode:(int64_t)mode device:(int64_t)device videoConfiguration:(int64_t)configuration videoStabilizationStrength:(int64_t)strength;
- (BOOL)isZoomPIPSupportedForMode:(int64_t)mode devicePosition:(int64_t)position frontRearSimultaneousVideoEnabled:(BOOL)enabled;
- (BOOL)isZoomPlatterSupportedForMode:(int64_t)mode devicePosition:(int64_t)position videoConfiguration:(int64_t)configuration;
- (BOOL)mirroredFrontCapturesSupportedForMode:(int64_t)mode;
- (BOOL)photoModeDepthSuggestionSupported;
- (BOOL)portraitModeRequiresSubjectForDevicePosition:(int64_t)position;
- (BOOL)portraitZoomSupported;
- (BOOL)processZoomWithoutUpscaleForDevicePosition:(int64_t)position;
- (BOOL)shouldAdjustZoomOnOrientationChangeForDevicePosition:(int64_t)position;
- (BOOL)shouldSuspendVideoHDRForHDRMode:(int64_t)mode captureMode:(int64_t)captureMode;
- (BOOL)supportsOverlappingCapturesForResolution:(int64_t)resolution;
- (BOOL)usePortraitFrontFacingZoomedCaptureDeviceFormat;
- (BOOL)useSquareFormatForDynamicAspectRatioForMode:(int64_t)mode videoConfiguration:(int64_t)configuration;
- (BOOL)useVideoBinnedForMode:(int64_t)mode videoConfiguration:(int64_t)configuration devicePosition:(int64_t)position;
- (BOOL)zoomControlSupported;
- (CAMCaptureCapabilities)initWithHostProcess:(int64_t)process;
- (CGRect)_cameraButtonFrame;
- (CGRect)_lockButtonFrame;
- (CGRect)_volumeDownButtonFrame;
- (CGRect)_volumeUpButtonFrame;
- (CGRect)frameForPhysicalButton:(int64_t)button;
- (CGSize)mainScreenSizePixels;
- (CGSize)mainScreenSizePoints;
- (NSArray)defaultCustomLensGroup;
- (NSArray)supportedAspectRatioCropValues;
- (double)_doubleForKey:(id)key applicationID:(id)d;
- (double)captureIntervalForDevice:(int64_t)device;
- (double)defaultDepthEffectApertureForMode:(int64_t)mode device:(int64_t)device zoomFactor:(double)factor;
- (double)defaultPortraitEffectIntensity;
- (double)defaultZoomFactorForGraphConfiguration:(id)configuration captureOrientation:(int64_t)orientation customLens:(int64_t)lens outputToExternalStorage:(BOOL)storage overrodeWithForcedZoomValue:(BOOL *)value;
- (double)defaultZoomFactorForMode:(int64_t)mode device:(int64_t)device videoConfiguration:(int64_t)configuration captureOrientation:(int64_t)orientation;
- (double)defaultZoomFactorForMode:(int64_t)mode device:(int64_t)device videoConfiguration:(int64_t)configuration captureOrientation:(int64_t)orientation videoStabilizationStrength:(int64_t)strength videoEncodingBehavior:(int64_t)behavior customLens:(int64_t)lens outputToExternalStorage:(BOOL)self0 isTrueVideo:(BOOL)self1 frontRearSimultaneousVideoEnabled:(BOOL)self2 prefersHDR10BitVideo:(BOOL)self3 smartFramingFieldOfView:(int64_t)self4 overrodeWithForcedZoomValue:(BOOL *)self5;
- (double)maximumDepthEffectApertureForMode:(int64_t)mode device:(int64_t)device;
- (double)maximumPortraitEffectIntensity;
- (double)maximumZoomFactorForMode:(int64_t)mode device:(int64_t)device videoConfiguration:(int64_t)configuration videoStabilizationStrength:(int64_t)strength shouldResolveDevice:(BOOL)resolveDevice;
- (double)minimumDepthEffectApertureForMode:(int64_t)mode device:(int64_t)device;
- (double)superWideToWideZoomFactorForDevicePosition:(int64_t)position;
- (double)wideToTelephotoZoomFactorForDevicePosition:(int64_t)position;
- (double)zoomFactorForCustomLensZoomFactor:(double)factor;
- (double)zoomFactorForSmartFramingFieldOfView:(int64_t)view;
- (id)captureStyleForCaptureWithSupport:(unint64_t)support styles:(id)styles selectedStyleIndex:(unint64_t)index smartStyleSystemStyleIndex:(unint64_t)styleIndex;
- (id)captureStyleForPreviewWithSupport:(unint64_t)support styles:(id)styles selectedStyleIndex:(unint64_t)index smartStyleSystemStyleIndex:(unint64_t)styleIndex;
- (id)significantZoomFactorsForMode:(int64_t)mode device:(int64_t)device;
- (id)supportedCustomLensGroupForGroup:(id)group;
- (id)supportedPhotoResolutionsForMode:(int64_t)mode devicePosition:(int64_t)position photoEncoding:(int64_t)encoding;
- (int64_t)_forcedBackDeviceForMode:(int64_t)mode videoConfiguration:(int64_t)configuration;
- (int64_t)_knownFramerateForVideoConfiguration:(int64_t)configuration;
- (int64_t)_nearestCustomLensToLens:(int64_t)lens inGroup:(id)group;
- (int64_t)baseFocalLengthForCustomLens:(int64_t)lens;
- (int64_t)bytesPerMinuteForGraphConfiguration:(id)configuration outputToExternalStorage:(BOOL)storage;
- (int64_t)defaultPhotoResolutionForMode:(int64_t)mode devicePosition:(int64_t)position encodingBehavior:(int64_t)behavior;
- (int64_t)effectiveFocalLengthForCustomLens:(int64_t)lens;
- (int64_t)fallbackPrimaryConstituentDeviceSelectionForMode:(int64_t)mode device:(int64_t)device videoConfiguration:(int64_t)configuration videoStabilizationStrength:(int64_t)strength frontRearSimultaneousVideoEnabled:(BOOL)enabled macroMode:(int64_t)macroMode;
- (int64_t)maxSupportedPhotoQualityPrioritizationForMode:(int64_t)mode devicePosition:(int64_t)position;
- (int64_t)maximumPhotoResolutionForMode:(int64_t)mode device:(int64_t)device encoding:(int64_t)encoding;
- (int64_t)preferredDeviceForPosition:(int64_t)position mode:(int64_t)mode videoConfiguration:(int64_t)configuration videoStabilizationStrength:(int64_t)strength frontRearSimultaneousVideoEnabled:(BOOL)enabled;
- (int64_t)resolvedDefaultCustomLens;
- (int64_t)resolvedDeviceForDesiredDevice:(int64_t)device mode:(int64_t)mode videoConfiguration:(int64_t)configuration videoStabilizationStrength:(int64_t)strength frontRearSimultaneousVideoEnabled:(BOOL)enabled;
- (int64_t)resolvedVideoConfigurationForMode:(int64_t)mode device:(int64_t)device videoEncodingBehavior:(int64_t)behavior videoConfiguration:(int64_t)configuration outputToExternalStorage:(BOOL)storage prefersHDR10BitVideo:(BOOL)video frontRearSimultaneousVideoEnabled:(BOOL)enabled;
- (int64_t)sanitizeDesiredDevice:(int64_t)device forMode:(int64_t)mode;
- (int64_t)supportedCustomLensForLens:(int64_t)lens inGroup:(id)group;
- (int64_t)supportedEffectSetForDevicePosition:(int64_t)position;
- (int64_t)validatedVideoConfigurationForVideoConfiguration:(int64_t)configuration withBlock:(id)block;
- (unint64_t)_desiredSemanticStyleSupportForMode:(int64_t)mode devicePosition:(int64_t)position;
- (unint64_t)_desiredSmartStyleSupportForMode:(int64_t)mode devicePosition:(int64_t)position;
- (unint64_t)frontZoomBehaviorForCaptureMode:(int64_t)mode videoConfiguration:(int64_t)configuration;
- (unint64_t)nightModePreviewOverlayStyleForDevicePosition:(int64_t)position sensitiveToChangingDisplayFeedback:(BOOL)feedback sensitiveToInitialFeedback:(BOOL)initialFeedback duration:(double)duration;
- (unint64_t)semanticStyleSupportForMode:(int64_t)mode devicePosition:(int64_t)position;
- (unint64_t)spatialOverCaptureSupportForMode:(int64_t)mode device:(int64_t)device;
@end

@implementation CAMCaptureCapabilities

+ (CAMCaptureCapabilities)capabilities
{
  if (capabilities_onceToken != -1)
  {
    +[CAMCaptureCapabilities capabilities];
  }

  v3 = capabilities_sharedInstance;

  return v3;
}

void __38__CAMCaptureCapabilities_capabilities__block_invoke()
{
  v0 = [MEMORY[0x1E696AAE8] mainBundle];
  v4 = [v0 bundleIdentifier];

  if ([v4 isEqualToString:@"com.apple.camera"] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"com.apple.dt.xctest.tool"))
  {
    v1 = 0;
  }

  else if ([v4 isEqualToString:@"com.apple.camera.CameraMessagesApp"])
  {
    v1 = 2;
  }

  else if ([v4 isEqualToString:@"com.apple.MobileSMS"])
  {
    v1 = 1;
  }

  else if ([v4 isEqualToString:@"com.apple.Photo-Booth"])
  {
    v1 = 3;
  }

  else if ([v4 isEqualToString:@"com.apple.camera.lockscreen"])
  {
    v1 = 4;
  }

  else
  {
    v1 = 5;
  }

  v2 = [[CAMCaptureCapabilities alloc] initWithHostProcess:v1];
  v3 = capabilities_sharedInstance;
  capabilities_sharedInstance = v2;
}

- (CAMCaptureCapabilities)initWithHostProcess:(int64_t)process
{
  v460 = *MEMORY[0x1E69E9840];
  CAMSignpostWithIDAndArgs(89, 0xEEEEB0B5B2B2EEEELL, 0, 0, 0, 0);
  v437.receiver = self;
  v437.super_class = CAMCaptureCapabilities;
  v5 = [(CAMCaptureCapabilities *)&v437 init];

  if (!v5)
  {
    goto LABEL_511;
  }

  v5->_hostProcess = process;
  v5->_internalInstall = MGGetBoolAnswer();
  v6 = MGGetSInt32Answer();
  v5->_iPad = v6 == 3;
  v5->_iPhone = v6 == 1;
  v7 = MGGetBoolAnswer();
  v8 = 0;
  v5->_hasDynamicIsland = v7;
  if ((v7 & 1) == 0 && v6 != 3)
  {
    v8 = MGGetBoolAnswer() ^ 1;
  }

  v5->_hasNotch = v8;
  v9 = AVGestaltGetStringAnswerWithDefault();
  v413 = v6;
  if (![v9 length])
  {
    goto LABEL_12;
  }

  v10 = [v9 componentsSeparatedByString:@" "];
  if ([v10 count] != 2)
  {

LABEL_12:
    v18 = 0;
    v5->_shouldPerformSuperWideAutoMacroMigration = 1;
    v13 = 0.0;
    goto LABEL_13;
  }

  v11 = [v10 objectAtIndexedSubscript:1];
  v12 = [v11 componentsSeparatedByString:@"."];
  v13 = 0.0;
  if ([v12 count] >= 2)
  {
    v14 = [v12 objectAtIndexedSubscript:0];
    integerValue = [v14 integerValue];

    v16 = [v12 objectAtIndexedSubscript:1];
    integerValue2 = [v16 integerValue];

    v13 = integerValue2 / 10.0 + integerValue;
  }

  v5->_shouldPerformSuperWideAutoMacroMigration = v13 < 16.0;
  v18 = v13 >= 19.0 && v5->_iPhone;
LABEL_13:
  v5->_shouldAlwaysApplySystemPressureMitigationInPhotoMode = v18;
  v436 = 0;
  v5->_documentScanningMinimumConfidenceLevel = 0.95;
  v5->_smudgeDetectionAutoDismissTimeoutSeconds = 10;
  v5->__forcedBackCamera = 0;
  v5->__forcedInitialZoomDisplayFactor = 0.0;
  v5->_backNightModePreviewOverlayStyle = 0;
  v5->_frontNightModePreviewOverlayStyle = 0;
  v5->_maximumNumberOfInflightRequests = 2;
  processCopy = process;
  v404 = v9;
  if (!v5->_internalInstall)
  {
    v408 = 0;
    v30 = 0;
    v31 = 0;
    v411 = 0;
    v402 = 0;
    v403 = 0;
    v375 = 0;
    v393 = 0;
    v394 = 0;
    v395 = 0;
    v32 = 0;
    v416 = 0;
    v385 = 0;
    v33 = 0;
    v397 = 0;
    v398 = 0;
    v379 = 0;
    v391 = 0;
    v392 = 0;
    v366 = 0;
    v387 = 0;
    v390 = 0;
    v372 = 0;
    obj = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0.0;
    v380 = 0.0;
    v37 = 0.0;
    v38 = 0.0;
    v39 = 0.0;
    v382 = -1;
    v367 = 1;
    v368 = 0;
    v414 = 3;
    v371 = 17;
    v400 = 1;
    v401 = 1;
    v399 = 1;
    v365 = 1;
    v405 = 1;
    v407 = 1;
    goto LABEL_92;
  }

  v19 = CFPreferencesGetAppBooleanValue(@"CAMFeatureDevelopmentAllowHapticsOnModeDialTap", @"com.apple.camera", 0) != 0;
  v386 = CFPreferencesGetAppBooleanValue(@"CAMFeatureDevelopmentApplyNaturalLightingToOriginal", @"com.apple.camera", 0) != 0;
  v20 = CFPreferencesGetAppBooleanValue(@"CAMFeatureDevelopmentUseReticleStroke", @"com.apple.camera", 0) != 0;
  v5->_featureDevelopmentEmulateSuperWide = CFPreferencesGetAppBooleanValue(@"CAMFeatureDevelopmentEmulateSuperWide", @"com.apple.camera", 0) != 0;
  keyExistsAndHasValidFormat = 0;
  if (CFPreferencesGetAppBooleanValue(@"CAMFeatureDevelopmentAllowWideBravo", @"com.apple.camera", &keyExistsAndHasValidFormat))
  {
    _ZF = 1;
  }

  else
  {
    _ZF = keyExistsAndHasValidFormat == 0;
  }

  v22 = _ZF;
  v407 = v22;
  v23 = CFPreferencesGetAppBooleanValue(@"CAMFeatureDevelopmentDebugSemanticDevelopmentFilters", @"com.apple.camera", 0) != 0;
  v434 = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"CAMFeatureDevelopmentAllowExposureClippingIndicator", @"com.apple.camera", &v434);
  if (v434)
  {
    v5->__forceEnableExposureClippingIndicator = AppBooleanValue != 0;
    v5->__forceDisableExposureClippingIndicator = AppBooleanValue == 0;
  }

  v433 = 0;
  v5->_featureDevelopmentForceSingleCamera = CFPreferencesGetAppBooleanValue(@"CAMFeatureDevelopmentForceSingleCamera", @"com.apple.camera", &v433) != 0;
  v432 = 0;
  if (CFPreferencesGetAppBooleanValue(@"CAMFeatureDevelopmentAllowSuperBravo", @"com.apple.camera", &v432))
  {
    v25 = 1;
  }

  else
  {
    v25 = v432 == 0;
  }

  v26 = v25;
  v405 = v26;
  v5->_featureDevelopmentDefaultWideHighStabilization = CFPreferencesGetAppBooleanValue(@"CAMFeatureDevelopmentDefault1xVideoStabilizationHigh", @"com.apple.camera", 0) != 0;
  LOBYTE(v403) = CFPreferencesGetAppBooleanValue(@"CAMFeatureDevelopmentAllowFocalLengthPicker", @"com.apple.camera", 0) != 0;
  BYTE4(v403) = CFPreferencesGetAppBooleanValue(@"CAMFeatureDevelopmentAllowOverlapping48MPCaptures", @"com.apple.camera", 0) != 0;
  v368 = CFPreferencesGetAppBooleanValue(@"CAMFeatureDevelopmentAllow24MP", @"com.apple.camera", 0) != 0;
  v27 = CFPreferencesCopyAppValue(@"CAMFeatureDevelopmentForceBackCamera", @"com.apple.camera");
  lowercaseString = [v27 lowercaseString];

  if ([lowercaseString isEqualToString:@"wide"])
  {
    v29 = 2;
LABEL_42:
    v5->__forcedBackCamera = v29;
    v40 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      forcedBackCamera = v5->__forcedBackCamera;
      if (forcedBackCamera > 0xB)
      {
        v42 = 0;
      }

      else
      {
        v42 = off_1E76FC0A0[forcedBackCamera];
      }

      *buf = 138543362;
      v457 = v42;
      _os_log_impl(&dword_1A3640000, v40, OS_LOG_TYPE_DEFAULT, "Forcing back camera to %{public}@ when possible", buf, 0xCu);
    }

    v5->__allowZoomWithForcedBackCamera = CFPreferencesGetAppBooleanValue(@"CAMFeatureDevelopmentAllowZoomWithForcedCamera", @"com.apple.camera", 0) != 0;
    goto LABEL_48;
  }

  if ([lowercaseString hasPrefix:@"tele"])
  {
    v29 = 3;
    goto LABEL_42;
  }

  if ([lowercaseString isEqualToString:@"superwide"])
  {
    v29 = 5;
    goto LABEL_42;
  }

  if ([lowercaseString isEqualToString:@"bravo"])
  {
    v29 = 4;
    goto LABEL_42;
  }

  if ([lowercaseString isEqualToString:@"widebravo"])
  {
    v29 = 6;
    goto LABEL_42;
  }

  if ([lowercaseString isEqualToString:@"superbravo"])
  {
    v29 = 7;
    goto LABEL_42;
  }

  v5->__forcedBackCamera = 0;
LABEL_48:
  [(CAMCaptureCapabilities *)v5 _doubleForKey:@"CAMFeatureDevelopmentInitialZoomFactor" applicationID:@"com.apple.camera"];
  v5->__forcedInitialZoomDisplayFactor = v43;
  v431 = 0;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"CAMFeatureDevelopmentMaxInflightRequests", @"com.apple.camera", &v431);
  if (v431)
  {
    v5->_maximumNumberOfInflightRequests = AppIntegerValue;
  }

  v45 = CFPreferencesGetAppIntegerValue(@"CAMFeatureDevelopmentNightModePreviewStyle", @"com.apple.camera", 0);
  v388 = v19;
  if (v45 >= 4)
  {
    v47 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      [CAMCaptureCapabilities initWithHostProcess:];
    }

    v46 = 0;
  }

  else
  {
    v46 = qword_1A3A6A1C0[v45];
  }

  v5->_backNightModePreviewOverlayStyle = v46;
  v5->_frontNightModePreviewOverlayStyle = v46;
  v5->_forceAllowAllInterfaceOrientations = CFPreferencesGetAppBooleanValue(@"CAMForceAllowAllInterfaceOrientations", @"com.apple.camera", 0) != 0;
  [CAMPreferencesUtilities doubleForKey:@"CAMFeatureDevelopmentTimelapseFirstShotDelay" applicationID:@"com.apple.camera" keyIsValidAndExists:0];
  v39 = v48;
  v5->_imageAnalysisShowsInactiveTextRegions = CFPreferencesGetAppBooleanValue(@"CAMFeatureDevelopmentShowInactiveTextRegions", @"com.apple.camera", 0) != 0;
  CFPreferencesGetAppBooleanValue(@"CAMFeatureDevelopmentForceEnableSuperBravoDevice", @"com.apple.camera", 0);
  CFPreferencesGetAppBooleanValue(@"CAMFeatureDevelopmentForceEnablePortraitBravoDevices", @"com.apple.camera", 0);
  v372 = CFPreferencesGetAppBooleanValue(@"CAMFeatureDevelopmentAllowAllProResConfigurations", @"com.apple.camera", 0) != 0;
  [CAMPreferencesUtilities doubleForKey:@"CAMFeatureDevelopmentProResMinimumAvailableDiskSpaceOverride" applicationID:@"com.apple.camera" keyIsValidAndExists:0];
  v38 = v49;
  v390 = CFPreferencesGetAppIntegerValue(@"CAMFeatureDevelopmentProResMinimumDiskSpaceOverrideMegabytesRelativeToFreeSpace", @"com.apple.camera", 0);
  v387 = CFPreferencesGetAppIntegerValue(@"CAMFeatureDevelopmentZoomPinchScalingMethod", @"com.apple.camera", &v436);
  [CAMPreferencesUtilities doubleForKey:@"CAMFeatureDevelopmentZoomPinchExponentialFactorDistance" applicationID:@"com.apple.camera" keyIsValidAndExists:0];
  v37 = v50;
  [CAMPreferencesUtilities doubleForKey:@"CAMFeatureDevelopmentZoomPinchExponentialFactor" applicationID:@"com.apple.camera" keyIsValidAndExists:0];
  v380 = v51;
  [CAMPreferencesUtilities doubleForKey:@"CAMFeatureDevelopmentZoomPinchHybridLerpDistance" applicationID:@"com.apple.camera" keyIsValidAndExists:0];
  v36 = v52;
  v430 = 0;
  v53 = CFPreferencesGetAppIntegerValue(@"CAMFeatureDevelopmentCacheDeleteUrgency", @"com.apple.camera", &v430);
  v54 = 3;
  if (v430)
  {
    v55 = v53;
    if (v53 <= 4)
    {
      v56 = os_log_create("com.apple.camera", "Camera");
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
      {
        v57 = off_1E76FBFC8[v55 & 7];
        *buf = 138543618;
        v457 = @"High";
        v458 = 2114;
        v459 = v57;
        _os_log_impl(&dword_1A3640000, v56, OS_LOG_TYPE_DEFAULT, "Overriding CacheDeleteUrgency from %{public}@ to %{public}@", buf, 0x16u);
      }

      v54 = v55;
    }
  }

  v414 = v54;
  v383 = lowercaseString;
  obj = v20;
  v5->_shouldEnableUserNotifications = CFPreferencesGetAppBooleanValue(@"CAMDebugSuppressNotifications", @"com.apple.camera", 0) == 0;
  v5->_bypassWelcomeScreens = CFPreferencesGetAppBooleanValue(@"CAMUserPreferenceBypassWelcomeScreens", @"com.apple.camera", 0) != 0;
  v381 = CFPreferencesGetAppBooleanValue(@"CAMFeatureDevelopmentAspectRatioCropThreeTwoSupported", @"com.apple.camera", 0) != 0;
  buf[0] = 0;
  v58 = CFPreferencesGetAppBooleanValue(@"CAMFeatureDevelopmentAllowSmartStyles", @"com.apple.camera", buf);
  v59 = v58;
  LOBYTE(v366) = v58 != 0;
  v378 = buf[0];
  BYTE4(v366) = CFPreferencesGetAppBooleanValue(@"CAMFeatureDevelopmentAllowExtraStylesControls", @"com.apple.camera", 0) != 0;
  LOBYTE(v394) = CFPreferencesGetAppBooleanValue(@"CAMFeatureDevelopmentAllowPortraitSemanticStyles", @"com.apple.camera", 0) != 0;
  BYTE4(v392) = CFPreferencesGetAppBooleanValue(@"CAMFeatureDevelopmentAllowPortraitAspectRatio", @"com.apple.camera", 0) != 0;
  BYTE4(v379) = [CAMPreferencesUtilities BOOLInCameraDomainForKey:@"CAMFeatureDevelopmentAllowContinuousZoomForPortraitMode"];
  LOBYTE(v393) = [CAMPreferencesUtilities BOOLInCameraDomainForKey:@"CAMFeatureDevelopmentAllowDeepFusionForPortraitMode"];
  BYTE4(v393) = [CAMPreferencesUtilities BOOLInCameraDomainForKey:@"CAMFeatureDevelopmentAllowDeepFusionForFrontPortraitMode"];
  LOBYTE(v408) = CFPreferencesGetAppBooleanValue(@"CAMFeatureDevelopmentAllowHalfPressSimulation", @"com.apple.camera", 0) != 0;
  v5->__allowSpatialOverCaptureInPortraitMode = [CAMPreferencesUtilities BOOLInCameraDomainForKey:@"CAMFeatureDevelopmentAllowSpatialOverCaptureInPortraitMode"];
  BYTE4(v391) = [CAMPreferencesUtilities BOOLInCameraDomainForKey:@"CAMFeatureDevelopmentAllowPhotoModeDepth"];
  v5->_featureDevelopmentForceDepthDataCaptureInPhotoMode = [CAMPreferencesUtilities BOOLInCameraDomainForKey:@"CAMFeatureDevelopmentForceDepthDataCaptureInPhotoMode"];
  LOBYTE(v392) = [CAMPreferencesUtilities BOOLInCameraDomainForKey:@"CAMFeatureDevelopmentAllowFrontPhotoModeDepth"];
  LOBYTE(v391) = [CAMPreferencesUtilities BOOLInCameraDomainForKey:@"CAMFeatureDevelopmentAllowPreviewQualityStillImageFilteringForPhotoMode"];
  v5->_featureDevelopmentIgnoreDepthSuggestionInPhotoMode = [CAMPreferencesUtilities BOOLInCameraDomainForKey:@"CAMFeatureDevelopmentIgnoreDepthSuggestionInPhotoMode"];
  v5->_featureDevelopmentForceDepthEffectInPhotoMode = [CAMPreferencesUtilities BOOLInCameraDomainForKey:@"CAMFeatureDevelopmentForceDepthEffectInPhotoMode"];
  LODWORD(v379) = [CAMPreferencesUtilities BOOLInCameraDomainForKey:@"CAMFeatureDevelopmentAllowContinuousZoomForCinematicMode"];
  v398 = CFPreferencesGetAppBooleanValue(@"CAMFeatureDevelopmentAllowZoomPIPForSlomo", @"com.apple.camera", 0) != 0;
  v385 = [CAMPreferencesUtilities BOOLInCameraDomainForKey:@"CAMFeatureDevelopmentAllowPortraitModeOverlappingCaptures"];
  v5->_featureDevelopmentHidePreviewOverlayBars = [CAMPreferencesUtilities BOOLInCameraDomainForKey:@"CAMFeatureDevelopmentHidePreviewOverlayBars"];
  v5->_featureDevelopmentAllowAllHEICOptionsInPhotoPicker = [CAMPreferencesUtilities BOOLInCameraDomainForKey:@"CAMFeatureDevelopmentAllowAllHEICOptionsInPhotoPicker"];
  v5->__disablePortraitFrontFacingZoomedCaptureDeviceFormat = CFPreferencesGetAppBooleanValue(@"CAMFeatureDevelopmentDisableZoomedFFCPortrait", @"com.apple.camera", 0) != 0;
  v416 = [CAMPreferencesUtilities BOOLInCameraDomainForKey:@"CAMFeatureDevelopmentAllowActionModeAggregateDevice4k60"];
  HIDWORD(v402) = [CAMPreferencesUtilities BOOLInCameraDomainForKey:@"CAMFeatureDevelopmentAllowPauseCinematic"];
  v32 = [CAMPreferencesUtilities BOOLInCameraDomainForKey:@"CAMFeatureDevelopmentAllowMixAudioWithOthers"];
  v395 = [CAMPreferencesUtilities BOOLInCameraDomainForKey:@"CAMFeatureDevelopmentAllowPhotoModeNightModePortrait"];
  v60 = CFPreferencesGetAppBooleanValue(@"CAMFeatureDevelopmentDocumentScanningEnabled", @"com.apple.camera", 0);
  BYTE4(v394) = v60 != 0;
  [(CAMCaptureCapabilities *)v5 _doubleForKey:@"CAMFeatureDevelopmentDocumentScanningMininumConfidenceLevel" applicationID:@"com.apple.camera"];
  if (v60 && v61 > 0.0)
  {
    v62 = v61;
    v5->_documentScanningMinimumConfidenceLevel = v62;
  }

  v5->__proResCinematicVideoSupported = CFPreferencesGetAppBooleanValue(@"CAMFeatureDevelopmentCinematicProRes", @"com.apple.camera", 0) != 0;
  v5->__externalStorageSupportedForAllVideoFormats = CFPreferencesGetAppBooleanValue(@"CAMFeatureDevelopmentExternalStorageAllVideoFormats", @"com.apple.camera", 0) != 0;
  v63 = [CAMPreferencesUtilities BOOLInCameraDomainForKey:@"CAMFeatureDevelopmentUnifiedPhotoAndPortraitHidePortraitMode"];
  v429 = 0;
  v64 = CFPreferencesGetAppIntegerValue(@"CAMFeatureDevelopmentPortraitInPhotoModeBehavior", @"com.apple.camera", &v429);
  if (v429)
  {
    v65 = v64;
  }

  else
  {
    v65 = -1;
  }

  v382 = v65;
  v5->_featureDevelopmentShowLockIndicator = [CAMPreferencesUtilities BOOLInCameraDomainForKey:@"CAMFeatureDevelopmentShowLockIndicator"];
  v375 = [CAMPreferencesUtilities BOOLInCameraDomainForKey:@"CAMFeatureDevelopmentFrontRearSimultaneousVideo"];
  v428 = 0;
  v66 = [CAMPreferencesUtilities BOOLInCameraDomainForKey:@"CAMFeatureDevelopmentFrontRearSimultaneousVideoFrontCameraHDR10SupportedOverride" keyIsValidAndExists:&v428];
  v67 = v428 ^ 1;
  LOBYTE(v402) = [CAMPreferencesUtilities BOOLInCameraDomainForKey:@"CAMFeatureDevelopmentFrontRearSimultaneousVideo60FPSSupported"];
  v427 = 0;
  v68 = [CAMPreferencesUtilities BOOLInCameraDomainForKey:@"CAMFeatureDevelopmentFrontRearSimultaneousVideoFrontVideoStabilizationSupported" keyIsValidAndExists:&v427];
  v69 = v427 ^ 1;
  v426 = 0;
  if (CFPreferencesGetAppBooleanValue(@"frsv.disableDeferFrontCamera", @"com.apple.coremedia", &v426))
  {
    v70 = v426 == 0;
  }

  else
  {
    v70 = 1;
  }

  v71 = v70;
  v401 = v71;
  v411 = CFPreferencesGetAppBooleanValue(@"CAMFeatureDevelopmentAllowFrontPanoramaCaptures", @"com.apple.camera", 0) != 0;
  v5->_featureDevelopmentSmudgeDetectionBaseTimeoutSeconds = CFPreferencesGetAppIntegerValue(@"CAMFeatureDevelopmentSmudgeNotificationBaseTimeoutSeconds", @"com.apple.camera", 0);
  v72 = CFPreferencesGetAppIntegerValue(@"CAMFeatureDevelopmentSmudgeDetectionAutoDismissSeconds", @"com.apple.camera", 0);
  if (v72)
  {
    v5->_smudgeDetectionAutoDismissTimeoutSeconds = v72;
  }

  v397 = v23;
  v399 = v67 | v66;
  v400 = v69 | v68;
  v31 = CFPreferencesGetAppBooleanValue(@"CAMFeatureDevelopmentAllowManualFocusControl", @"com.apple.camera", 0) != 0;
  v30 = CFPreferencesGetAppBooleanValue(@"CAMFeatureDevelopmentAllowManualFocusControlForBravo", @"com.apple.camera", 0) != 0;
  BYTE4(v408) = CFPreferencesGetAppBooleanValue(@"CAMFeatureDevelopmentAllowSmallerFocusPointOfInterest", @"com.apple.camera", 0) != 0;
  v425 = 0;
  if (CFPreferencesGetAppBooleanValue(@"CAMDebugShowAlertForBundleMismatch", @"com.apple.camera", &v425))
  {
    v73 = 1;
  }

  else
  {
    v73 = v425 == 0;
  }

  v74 = v73;
  v5->_shouldShowAlertForBundleMismatch = v74;
  v5->__frontFacingVideoModeBinnedSupported = [CAMPreferencesUtilities BOOLInCameraDomainForKey:@"CAMFeatureDevelopmentAllowFrontFacingVideoModeBinned"];
  v367 = v13 <= 26.0 || [CAMPreferencesUtilities BOOLInCameraDomainForKey:@"CAMFeatureDevelopmentAllowSharedLibraryNewHardware"];
  process = processCopy;
  v5->_featureDevelopmentPreserveLastOpenedControlSupported = CFPreferencesGetAppBooleanValue(@"CAMFeatureDevelopmentPreserveLastOpenedControl", @"com.apple.camera", 0) != 0;
  v5->_featureDevelopmentCameraControlHalfPressTipEnabled = CFPreferencesGetAppBooleanValue(@"CAMFeatureDevelopmentCameraControlHalfPressTipEnabled", @"com.apple.camera", 0) != 0;

  if (v59)
  {
    v75 = 1;
  }

  else
  {
    v75 = v378 == 0;
  }

  v76 = v75;
  v365 = v76;
  v77 = 17;
  if (v63)
  {
    v77 = 25;
  }

  v371 = v77;
  v35 = v388;
  v34 = v386;
  v33 = v381;
LABEL_92:
  v78 = CEKDeviceRegionCode();
  deviceRegionCode = v5->_deviceRegionCode;
  v5->_deviceRegionCode = v78;

  if (process <= 4 && ((1 << process) & 0x15) != 0)
  {
    v5->_dynamicAspectRatioSupported = AVGestaltGetBoolAnswer();
    v5->_dynamicAspectRatioZoomSupported = 0;
    buf[0] = 0;
    v80 = CFPreferencesGetAppIntegerValue(@"CAMFeatureDevelopmentUserSelectableAspectRatio", @"com.apple.camera", buf);
    v81 = v80 != 0;
    if (buf[0])
    {
      v5->__dynamicAspectRatioInVideoModeSupported = v80 != 0;
    }

    else if (v5->_dynamicAspectRatioSupported)
    {
      BoolAnswer = AVGestaltGetBoolAnswer();
      v83 = buf[0];
      v5->__dynamicAspectRatioInVideoModeSupported = BoolAnswer;
      if (!v83)
      {
        if (v5->_dynamicAspectRatioSupported)
        {
          v81 = AVGestaltGetBoolAnswer();
        }

        else
        {
          v81 = 0;
        }
      }
    }

    else
    {
      v81 = 0;
      v5->__dynamicAspectRatioInVideoModeSupported = 0;
    }

    v5->__dynamicAspectRatioInCinematicModeSupported = v81;
  }

  v84 = [CAMPreferencesUtilities BOOLInCameraDomainForKey:@"CAMFeatureDevelopmentDisableAudio"];
  v85 = 0;
  v5->_disableAudio = v84;
  if (process > 4)
  {
    v86 = v414;
  }

  else
  {
    v86 = v414;
    if (((1 << process) & 0x15) != 0)
    {
      v85 = v413 != 3 || v32;
    }
  }

  v87 = 0;
  v5->_mixAudioWithOthersSupported = v85;
  if (process > 4)
  {
    v88 = v413;
    v89 = obj;
  }

  else
  {
    v88 = v413;
    v89 = obj;
    if (((1 << process) & 0x15) != 0)
    {
      v87 = v413 != 3;
    }
  }

  v5->_aspectRatioCropSupported = v87;
  v5->__aspectRatioCropThreeTwoSupported = v33;
  v415 = process & 0xFFFFFFFFFFFFFFFBLL;
  v90 = (process & 0xFFFFFFFFFFFFFFFBLL) == 0;
  v5->_cacheDeleteSupported = v90;
  v5->_cacheDeleteUrgency = v86;
  v91 = 1;
  v5->_PALVideoSupported = 1;
  v5->_mirroredFrontVideosSupported = AVGestaltGetBoolAnswer();
  v5->_mirroredFrontCapturesSupported = 1;
  v5->_variableFramerateVideoSupported = AVGestaltGetBoolAnswer();
  v5->_naturalLightingAppliedToOriginal = v34;
  v92 = MGGetBoolAnswer();
  v5->_allowHaptics = v92;
  v5->_allowHapticsOnConfigurationTaps = v92 & v35;
  v5->_backCameraSupported = AVGestaltGetBoolAnswer();
  v93 = AVGestaltGetBoolAnswer();
  v5->_frontCameraSupported = v93;
  if (v93)
  {
    v5->_frontCameraRotationAngle = FigCaptureFrontCameraRotationAngle();
  }

  v5->_squareModeSupported = 1;
  v5->_backFlashSupported = AVGestaltGetBoolAnswer();
  v5->_frontFlashSupported = AVGestaltGetBoolAnswer();
  v5->_backTorchSupported = v5->_backFlashSupported;
  v5->_frontTorchSupported = 0;
  v5->_backHDRSupported = AVGestaltGetBoolAnswer();
  v5->_backHDROnSupported = AVGestaltGetBoolAnswer();
  v5->_frontHDRSupported = AVGestaltGetBoolAnswer();
  v5->_frontHDROnSupported = AVGestaltGetBoolAnswer();
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  v5->_previewSupportedDuringHDR = [currentDevice _graphicsQuality] == 100;

  v5->_backSmartHDRSupported = AVGestaltGetIntegerAnswerWithDefault() > 2;
  v5->_frontSmartHDRSupported = AVGestaltGetBoolAnswer();
  if (![(CAMCaptureCapabilities *)v5 isSmartHDRSupported])
  {
    v91 = AVGestaltGetBoolAnswer();
  }

  v5->_modernHDRSupported = v91;
  v5->_HDRSettingAllowed = v13 < 15.0;
  IntegerAnswerWithDefault = AVGestaltGetIntegerAnswerWithDefault();
  v96 = 1;
  if (IntegerAnswerWithDefault > 59)
  {
    v96 = 2;
  }

  v5->_defaultVFRMode = v96;
  v5->_backBurstSupported = AVGestaltGetBoolAnswer();
  v5->_frontBurstSupported = AVGestaltGetBoolAnswer();
  v5->_maximumBurstLength = AVGestaltGetIntegerAnswerWithDefault();
  v5->__backCaptureInterval = AVGestaltGetIntegerAnswerWithDefault() / 1000.0;
  v5->__frontCaptureInterval = AVGestaltGetIntegerAnswerWithDefault() / 1000.0;
  v97 = AVGestaltGetBoolAnswer();
  v98 = 0;
  v5->_videoSupported = v97;
  if (process <= 4 && ((1 << process) & 0x13) != 0)
  {
    v98 = AVGestaltGetBoolAnswer();
  }

  v5->_stillDuringVideoSupported = v98;
  v5->_back720pMaxFPS = AVGestaltGetIntegerAnswerWithDefault();
  v5->_front720pMaxFPS = AVGestaltGetIntegerAnswerWithDefault();
  v5->_back1080pMaxFPS = AVGestaltGetIntegerAnswerWithDefault();
  v5->_front1080pMaxFPS = AVGestaltGetIntegerAnswerWithDefault();
  v99 = AVGestaltGetIntegerAnswerWithDefault();
  v100 = AVGestaltGetIntegerAnswerWithDefault();
  v5->_back4kMaxFPS = v99;
  v5->_front4kMaxFPS = v100;
  v5->_back4k30VideoSupported = v99 > 29;
  v5->_front4k30VideoSupported = v100 > 29;
  v5->_back4k60VideoSupported = v99 > 59;
  v5->_front4k60VideoSupported = v100 > 59;
  v5->_back4k24VideoSupported = v99 > 59;
  v5->_front4k24VideoSupported = v100 > 59;
  v5->_back4k120VideoSupported = v99 > 119;
  v5->_backSlomoSupported = AVGestaltGetBoolAnswer();
  v5->_frontSlomoSupported = AVGestaltGetBoolAnswer();
  v101 = AVGestaltGetIntegerAnswerWithDefault();
  v102 = AVGestaltGetIntegerAnswerWithDefault();
  v5->_backHighFrameRate4kMaxFPS = AVGestaltGetIntegerAnswerWithDefault();
  v103 = AVGestaltGetIntegerAnswerWithDefault();
  v104 = AVGestaltGetIntegerAnswerWithDefault();
  v5->_backHighFrameRate720pMaxFPS = v101;
  v5->_frontHighFrameRate720pMaxFPS = v103;
  v5->_backHighFrameRate1080pMaxFPS = v102;
  v5->_frontHighFrameRate1080pMaxFPS = v104;
  v105.i64[0] = v103;
  v105.i64[1] = v102;
  v106.i64[0] = v104;
  v106.i64[1] = v102;
  v5->_back720p240Supported = v101 > 239;
  *v105.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vcgtq_s64(v105, xmmword_1A3A6A1A0), vcgtq_s64(v106, xmmword_1A3A6A190))), 0x1000100010001);
  *&v5->_front720p240Supported = vuzp1_s8(*v105.i8, *v105.i8).u32[0];
  v5->_front1080p240Supported = v104 > 239;
  v5->__tripleCamera1080p60Supported = AVGestaltGetIntegerAnswerWithDefault() > 59;
  v5->__backDualCameraVideoCapture4kMaxFPS = AVGestaltGetIntegerAnswerWithDefault();
  v5->__backWideDualCameraVideoCapture4kMaxFPS = AVGestaltGetIntegerAnswerWithDefault();
  v5->__backTripleCameraVideoCapture4kMaxFPS = AVGestaltGetIntegerAnswerWithDefault();
  v5->__actionModeAggregateDevice4k60Supported = v416;
  v107 = v5->_hostProcess - 3;
  v108 = AVGestaltGetBoolAnswer();
  if ((v107 & 0xFFFFFFFFFFFFFFFDLL) != 0)
  {
    v109 = v108;
  }

  else
  {
    v109 = 0;
  }

  v5->_backLivePhotoSupported = v109;
  v5->_frontLivePhotoSupported = v109;
  v110 = AVGestaltGetBoolAnswer();
  if (process > 5)
  {
    v111 = 0;
    v112 = 0;
  }

  else if (((1 << process) & 0x15) != 0)
  {
    v111 = 0;
    v112 = v110;
  }

  else
  {
    v112 = 0;
    v111 = v110;
  }

  v5->_longPressVideoCaptureFromPhotoModeSupported = v112;
  v5->_ctmSupportSuppressed = v111;
  v376 = v110;
  v5->_deviceSupportsCTM = v110;
  v417 = v88 != 3;
  v5->_wantsFullscreenViewfinder = v417;
  v5->_ctmSupported = v112;
  v5->_useReticleStroke = v89;
  v5->_allowControlDrawer = v112;
  if (v415)
  {
    v113 = 0;
  }

  else
  {
    v113 = AVGestaltGetBoolAnswer();
  }

  v5->_responsiveShutterSupported = v113;
  v5->_interactiveVideoFormatControlSupported = 1;
  if (v13 >= 17.0)
  {
    v114 = 1;
  }

  else
  {
    v114 = v112;
  }

  v5->_interactiveVideoFormatControlAlwaysEnabled = v114;
  if (v112)
  {
    v115 = AVGestaltGetBoolAnswer();
  }

  else
  {
    v115 = 0;
  }

  v5->_exposureSliderSupported = v115;
  v5->_smallerFocusPointOfInterestSupported = BYTE4(v408);
  v5->_lensPositionControlSupported = v31;
  v5->__lensPositionControlSupportedForAggregateCameras = v30;
  if (v109)
  {
    v116 = AVGestaltGetBoolAnswer();
  }

  else
  {
    v116 = 0;
  }

  v5->_livePhotoAutoModeSupported = v116;
  v117 = 0;
  v5->_autoLowLightVideoSupported = AVGestaltGetBoolAnswer();
  if (process > 1)
  {
    if (process != 2 && process != 4)
    {
      goto LABEL_152;
    }

    goto LABEL_143;
  }

  if (!process)
  {
LABEL_143:
    v5->_backNightModeSupported = AVGestaltGetBoolAnswer();
    v5->_frontNightModeSupported = AVGestaltGetBoolAnswer();
    v118 = v13 >= 17.0 && (AVGestaltGetBoolAnswer() & 1) != 0 || v395;
    v5->__backPhotoModeNightModeDepthSupported = v118;
    if ([(CAMCaptureCapabilities *)v5 isBackNightModeSupported])
    {
      v119 = CFPreferencesGetAppBooleanValue(@"CAMFeatureDevelopmentAllowSuperWideTeleNightMode", @"com.apple.camera", 0) != 0;
    }

    else
    {
      v119 = 0;
    }

    v5->__backSuperWideTeleNightModeSupported = v119;
    v5->_stereoAudioRecordingSupported = AVGestaltGetBoolAnswer();
    goto LABEL_151;
  }

  if (process != 1)
  {
    goto LABEL_152;
  }

  v5->_stereoAudioRecordingSupported = AVGestaltGetBoolAnswer();
LABEL_151:
  v117 = AVGestaltGetBoolAnswer();
LABEL_152:
  v5->_HEVCEncodingSupported = v117;
  v5->_backPanoramaSupported = AVGestaltGetBoolAnswer();
  v5->_frontPanoramaSupported = AVGestaltGetBoolAnswer() & v411;
  v5->_backTimelapseSupported = v90;
  v5->_frontTimelapseSupported = v90;
  if (AVGestaltGetBoolAnswer())
  {
    v120 = 0x4002666666666666;
  }

  else
  {
    v121 = +[CAMTimelapseSettings sharedInstance];
    [v121 initialCaptureTimeInterval];
    v120 = v122;
  }

  if (v39 != 0.0)
  {
    v123 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v123, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v457 = *&v39;
      _os_log_impl(&dword_1A3640000, v123, OS_LOG_TYPE_DEFAULT, "Overriding time-lapse first shot delay as %f seconds", buf, 0xCu);
    }

    v120 = *&v39;
  }

  *&v5->_timelapseFirstShotDelay = v120;
  *&v5->_backTorchPatternSupported = v5->_backFlashSupported;
  v389 = v38;
  v384 = v36;
  v373 = v111;
  v377 = v117;
  if (MGGetBoolAnswer())
  {
    v124 = 1;
  }

  else
  {
    v124 = MGGetBoolAnswer();
  }

  v412 = v112;
  v5->_splitScreenSupported = v124;
  v5->_lockButtonAppropriateForShutter = 0;
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen _referenceBounds];
  [mainScreen scale];
  v127 = v126;
  CAMMGGetCGRectAnswer(@"VolumeUpButtonNormalizedCGRect", 0.0);
  CEKExpandNormalizedRect();
  UIRectRoundToScale();
  v5->__volumeUpButtonFrame.origin.x = v128;
  v5->__volumeUpButtonFrame.origin.y = v129;
  v5->__volumeUpButtonFrame.size.width = v130;
  v5->__volumeUpButtonFrame.size.height = v131;
  CAMMGGetCGRectAnswer(@"VolumeDownButtonNormalizedCGRect", 0.0);
  CEKExpandNormalizedRect();
  UIRectRoundToScale();
  v5->__volumeDownButtonFrame.origin.x = v132;
  v5->__volumeDownButtonFrame.origin.y = v133;
  v5->__volumeDownButtonFrame.size.width = v134;
  v5->__volumeDownButtonFrame.size.height = v135;
  CAMMGGetCGRectAnswer(@"UserIntentPhysicalButtonNormalizedCGRect", 1.0);
  CEKExpandNormalizedRect();
  UIRectRoundToScale();
  v5->__lockButtonFrame.origin.x = v136;
  v5->__lockButtonFrame.origin.y = v137;
  v5->__lockButtonFrame.size.width = v138;
  v5->__lockButtonFrame.size.height = v139;
  v140 = MGGetBoolAnswer();
  v141 = 4000000000;
  if (v140)
  {
    v141 = 0;
  }

  v5->_maximumRecordedFileSize = v141;
  v5->_forceTouchSupported = MGGetBoolAnswer();
  v142 = AVGestaltGetBoolAnswer();
  v143 = AVGestaltGetBoolAnswer();
  v396 = mainScreen;
  v144 = (AVGestaltGetBoolAnswer() & 1) != 0 || [(CAMCaptureCapabilities *)v5 featureDevelopmentEmulateSuperWide];
  v374 = (process & 0xFFFFFFFFFFFFFFFBLL) == 0;
  v409 = AVGestaltGetBoolAnswer();
  v145 = AVGestaltGetBoolAnswer();
  obja = objc_opt_new();
  if (v143)
  {
    [obja addObject:*MEMORY[0x1E6986928]];
  }

  v146 = v142 & v143;
  v147 = v142 & v144 & v407;
  if (v144)
  {
    [obja addObject:*MEMORY[0x1E6986948]];
  }

  v148 = v146 & v144;
  if (v147)
  {
    [obja addObject:*MEMORY[0x1E6986908]];
  }

  v149 = v148 & v405;
  if (v146)
  {
    [obja addObject:*MEMORY[0x1E6986900]];
  }

  if (v149)
  {
    [obja addObject:*MEMORY[0x1E6986938]];
  }

  v150 = v13 >= 17.0;
  objc_storeStrong(&v5->_expectedSupportedCameraModules, obja);
  v5->_fallbackCameraSupported = v150 && v417;
  v370 = v150 && v417;
  if (v150 && v417)
  {
    v151 = +[CAMFallbackConfiguration readFallbackDevicesFromDisk];
    fallbackCameraModules = v5->_fallbackCameraModules;
    v5->_fallbackCameraModules = v151;

    v153 = v5->_fallbackCameraModules;
    if (v153)
    {
      if (v142)
      {
        v154 = [(NSArray *)v153 count]> 1;
        if ((v143 & 1) == 0)
        {
          goto LABEL_181;
        }
      }

      else
      {
        v154 = 0;
        if ((v143 & 1) == 0)
        {
LABEL_181:
          v143 = 0;
          if (!v144)
          {
            goto LABEL_186;
          }

          goto LABEL_185;
        }
      }

      v143 = [(NSArray *)v5->_fallbackCameraModules containsObject:*MEMORY[0x1E6986928]];
      if (!v144)
      {
LABEL_186:
        LOBYTE(v146) = 0;
        LOBYTE(v147) = v154 & v144 & v407;
        v148 = v154 & v144 & v143;
        LOBYTE(v149) = v148 & v405;
        goto LABEL_187;
      }

LABEL_185:
      v144 = [(NSArray *)v5->_fallbackCameraModules containsObject:*MEMORY[0x1E6986948]];
      goto LABEL_186;
    }
  }

LABEL_187:
  v5->_backQuadraWideSupported = v409;
  v5->_backQuadraTeleSupported = v145;
  v5->_frontQuadraWideSupported = 0;
  v5->__quadraPortraitSupported = v409;
  v155 = 1.0;
  if (v409)
  {
    v155 = 2.0;
  }

  v5->_quadraWideDisplayZoomFactor = v155;
  v5->_quadraWideRelativeZoomFactor = 2.0;
  v5->_backTelephotoSupported = v143 & 1;
  v5->_backDualSupported = v146;
  v5->_backSuperWideSupported = v144;
  v5->_backWideDualSupported = v147;
  v5->_backTripleCameraSupported = v149;
  v156 = AVGestaltGetBoolAnswer();
  v5->_superWideAutoMacroSupported = v156;
  v5->_macroControlEnabledByDefault = v156;
  v5->_frontTelephotoSupported = 0;
  v5->_frontDualSupported = 0;
  if (AVGestaltGetBoolAnswer())
  {
    dynamicAspectRatioSupported = v5->_dynamicAspectRatioSupported;
  }

  else
  {
    dynamicAspectRatioSupported = AVGestaltGetBoolAnswer();
  }

  v158 = v415;
  v5->_frontSuperWideSupported = dynamicAspectRatioSupported;
  v5->_frontWideDualSupported = 0;
  v5->_frontTripleCameraSupported = 0;
  v159 = AVGestaltGetBoolAnswer();
  v160 = 0;
  if (v159)
  {
    v160 = AVGestaltGetBoolAnswer() ^ 1;
  }

  v5->_frontSuperWideZoomControlSupported = v160;
  AVGestaltGetFloatAnswerWithDefault();
  v162 = v161;
  v163 = v161;
  AVGestaltGetFloatAnswerWithDefault();
  v369 = v164;
  v165 = v164;
  v166 = AVGestaltGetIntegerAnswerWithDefault();
  v5->_superWideDisplayZoomFactor = 0.5;
  v5->_wideDisplayZoomFactor = 1.0;
  v5->_telephotoDisplayZoomFactor = round(v163 + v163) * 0.5;
  v5->__backDualCameraSwitchOverZoomFactor = v163;
  v5->__frontDualCameraSwitchOverZoomFactor = 1.0;
  AVGestaltGetFloatAnswerWithDefault();
  v5->__backWideDualCameraSwitchOverZoomFactor = v167;
  v168 = 1.0;
  v169 = 2.0;
  if (!v5->_frontSuperWideSupported)
  {
    v169 = 1.0;
  }

  v5->__frontWideDualCameraSwitchOverZoomFactor = v169;
  AVGestaltGetFloatAnswerWithDefault();
  v5->__backPhotoModeMaximumZoomFactor = v170;
  v5->__frontPhotoModeMaximumZoomFactor = v165;
  v5->__backVideoModeMaximumZoomFactor = AVGestaltGetIntegerAnswerWithDefault();
  v5->__frontVideoModeMaximumZoomFactor = v166;
  v5->_quadraTeleRelativeZoomFactor = 2.0;
  if (v145)
  {
    v168 = v5->_telephotoDisplayZoomFactor + v5->_telephotoDisplayZoomFactor;
  }

  v5->_quadraTeleDisplayZoomFactor = v168;
  v171 = AVGestaltGetIntegerAnswerWithDefault();
  v172 = AVGestaltGetIntegerAnswerWithDefault();
  v173 = v5->_backCameraSupported && v5->_backTelephotoSupported && v5->_backSuperWideSupported;
  v174 = v171 / 100.0;
  __asm { FMOV            V1.2D, #1.0 }

  v179 = v172 / 100.0;
  v406 = _Q1;
  if ((v148 | v173))
  {
    v5->__backTripleCameraPhotoModeMaximumZoomFactor = v174;
    v5->__backTripleCameraVideoModeMaximumZoomFactor = v179;
    [(CAMCaptureCapabilities *)v5 _backWideDualCameraSwitchOverZoomFactor];
    v5->__backDualPhotoModeMaximumZoomFactor = v174 / v180;
    backTripleCameraVideoModeMaximumZoomFactor = v5->__backTripleCameraVideoModeMaximumZoomFactor;
    [(CAMCaptureCapabilities *)v5 _backWideDualCameraSwitchOverZoomFactor];
    _Q1 = v406;
    v179 = backTripleCameraVideoModeMaximumZoomFactor / v182;
  }

  else
  {
    *&v5->__backTripleCameraPhotoModeMaximumZoomFactor = _Q1;
    v5->__backDualPhotoModeMaximumZoomFactor = v174;
  }

  v5->__backDualVideoModeMaximumZoomFactor = v179;
  if (v148)
  {
    v183 = v387;
  }

  else
  {
    if ([(CAMCaptureCapabilities *)v5 isQuadraWideBinningReconfigurationSupportedForMode:1 devicePosition:0 videoConfiguration:0])
    {
      v183 = v387;
      if (![(CAMCaptureCapabilities *)v5 isQuadraWideBinningReconfigurationSupportedForMode:2 devicePosition:0 videoConfiguration:0])
      {
        v179 = v179 / v5->_quadraWideRelativeZoomFactor;
      }
    }

    else
    {
      v183 = v387;
    }

    _Q1 = v406;
  }

  v5->__backDualSlomoModeMaximumZoomFactor = v179;
  *&v5->__frontDualPhotoModeMaximumZoomFactor = _Q1;
  v5->__frontTripleCameraPhotoModeMaximumZoomFactor = 1.0;
  v5->__frontTripleCameraVideoModeMaximumZoomFactor = 1.0;
  AVGestaltGetFloatAnswerWithDefault();
  v185 = v184;
  if (v379)
  {
    v185 = 6.0;
  }

  v5->__backWideDualCinematicModeMaximumZoomFactor = v185;
  v5->_continuousZoomSupportedForCinematicMode = v185 > 1.0;
  v187 = v185 <= 1.0 && v162 <= 3.0;
  v5->__backDualCameraSupportedForCinematic = v187;
  v188 = AVGestaltGetBoolAnswer();
  AVGestaltGetFloatAnswerWithDefault();
  v5->__backPortraitModeMaximumZoomFactor = v189;
  v5->_continuousZoomSupportedForPortraitMode = (v189 > 1.0) | BYTE4(v379) & 1;
  if ([(CAMCaptureCapabilities *)v5 isTripleCameraSupported])
  {
    v190 = 1;
    v191 = v127;
  }

  else
  {
    v190 = v144 && v413 != 3 && v13 >= 13.0 || v5->_backQuadraWideSupported;
    v191 = v127;
  }

  v5->_zoomPlatterSupported = v190 & 1;
  if ([(CAMCaptureCapabilities *)v5 fallbackCameraEnabled])
  {
    getSupportedCameraModules = [(CAMCaptureCapabilities *)v5 getSupportedCameraModules];
    if ([getSupportedCameraModules containsObject:*MEMORY[0x1E6986938]])
    {
      v5->_zoomPlatterSupported = 1;
    }

    else
    {
      getSupportedCameraModules2 = [(CAMCaptureCapabilities *)v5 getSupportedCameraModules];
      v5->_zoomPlatterSupported = [getSupportedCameraModules2 containsObject:*MEMORY[0x1E6986948]];
    }
  }

  v5->_backSuperWideFocalLengthDisplayValue = AVGestaltGetIntegerAnswer();
  v5->_backWideFocalLengthDisplayValue = AVGestaltGetIntegerAnswer();
  IntegerAnswer = AVGestaltGetIntegerAnswer();
  v5->_backTelephotoFocalLengthDisplayValue = IntegerAnswer;
  if (v5->_backQuadraWideSupported)
  {
    v5->_backQuadraWideFocalLengthDisplayValue = 2 * v5->_backWideFocalLengthDisplayValue;
  }

  if (v5->_backQuadraTeleSupported)
  {
    v5->_backQuadraTeleFocalLengthDisplayValue = 2 * IntegerAnswer;
  }

  v195 = MGGetSInt32Answer();
  v196 = MGGetSInt32Answer();
  v197 = v413 == 3;
  v5->_mainScreenSizePixels.width = v195;
  v5->_mainScreenSizePixels.height = v196;
  v5->_mainScreenSizePoints.width = v195 / v191;
  v5->_mainScreenSizePoints.height = v196 / v191;
  if (v413 == 3)
  {
    v198 = 1;
  }

  else
  {
    v198 = v376;
  }

  if (v196 / v195 <= 1.5)
  {
    v197 = 0;
  }

  v5->__previewAspectRatioToggleSupportedForPhotoModes = v197;
  v5->_backPearlSupported = 0;
  v5->_frontPearlSupported = AVGestaltGetBoolAnswer();
  v5->_backTimeOfFlightSupported = AVGestaltGetBoolAnswer();
  v5->_frontTimeOfFlightSupported = 0;
  v199 = (processCopy < 5) & (processCopy ^ 1);
  v5->_backSpatialOverCaptureSupported = v199 & AVGestaltGetBoolAnswer();
  v5->_frontSpatialOverCaptureSupported = v199 & v5->_dynamicAspectRatioSupported;
  if (v198)
  {
    v200 = CAMPreferredLocale();
    v5->_sfCameraFontSupported = CEKIsSFCameraSupportedForLocale();
  }

  else
  {
    v5->_sfCameraFontSupported = 0;
  }

  v5->_overContentFlipButtonSupported = v198;
  v5->_imagePickerUsesModernLayout = v13 >= 14.1 && v417;
  v201 = AVGestaltGetBoolAnswer();
  v202 = 2;
  if (!v201)
  {
    v202 = 0;
  }

  if (v436)
  {
    v203 = v183;
  }

  else
  {
    v203 = v202;
  }

  v5->_zoomPinchScalingMethod = v203;
  v204 = 120.0;
  if (v37 > 0.0)
  {
    v204 = v37;
  }

  v205 = 2.4;
  if (v380 > 0.0)
  {
    v205 = v380;
  }

  v5->_zoomPinchExponentialFactorDistance = v204;
  v5->_zoomPinchExponentialFactor = v205;
  v206 = 180.0;
  if (v384 > 0.0)
  {
    v206 = v384;
  }

  v5->_zoomPinchHybridLerpDistance = v206;
  if (v5->_frontSuperWideZoomControlSupported)
  {
    v454[0] = &unk_1F16C7DD8;
    v454[1] = &unk_1F16C7E08;
    v455[0] = &unk_1F16C7DF0;
    v455[1] = &unk_1F16C7DF0;
    v454[2] = &unk_1F16C7E20;
    v455[2] = &unk_1F16C7E38;
    v207 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v455 forKeys:v454 count:3];
    v208 = v389;
  }

  else
  {
    LODWORD(v206) = 1.0;
    *&v205 = v369;
    v208 = v389;
    if (v369 <= 1.0)
    {
      goto LABEL_261;
    }

    v452 = &unk_1F16C7DD8;
    v453 = &unk_1F16C7E50;
    v207 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v453 forKeys:&v452 count:{1, v206, v205}];
  }

  FFCZoomBehaviorForCaptureMode = v5->__FFCZoomBehaviorForCaptureMode;
  v5->__FFCZoomBehaviorForCaptureMode = v207;

LABEL_261:
  v5->__processZoomWithoutUpscaleBack = 0;
  v5->__processZoomWithoutUpscaleFront = !v5->_frontSuperWideZoomControlSupported;
  v210 = AVGestaltGetBoolAnswer();
  v211 = AVGestaltGetBoolAnswer();
  v5->_backSingleCameraPortraitModeSupported = v210;
  v5->_frontSingleCameraPortraitModeSupported = v211;
  if (v13 < 19.0)
  {
    v212 = v210;
  }

  else
  {
    v212 = 0;
  }

  v5->__backPortraitModeRequiresSubject = v212;
  if (v13 < 19.0)
  {
    v213 = v211;
  }

  else
  {
    v213 = 0;
  }

  v5->__frontPortraitModeRequiresSubject = v213;
  if (processCopy <= 5)
  {
    if (((1 << processCopy) & 0x2E) != 0)
    {
      v5->_HDREV0CaptureSupported = 0;
    }

    else
    {
      v5->_HDREV0CaptureSupported = AVGestaltGetBoolAnswer();
    }
  }

  v214 = AVGestaltGetIntegerAnswerWithDefault();
  v215 = v214 > 0 && v377;
  v5->_HDR10BitVideoSupported = v215;
  v216 = v214 > 59 && v377;
  v5->_HDR10BitVideoSupports60FPS = v216;
  v217 = v214 > 119 && v377;
  v5->__HDR10BitVideoSupports120FPS = v217;
  v218 = v214 > 239 && v377;
  v5->__HDR10BitVideoSupports240FPS = v218;
  v219 = AVGestaltGetBoolAnswer();
  if (v415)
  {
    v220 = 0;
  }

  else
  {
    v220 = v219;
  }

  v5->_proResVideoSupported = v220;
  v5->_proResMinimumDiskSpaceOverrideAsFractionOfSystemTotal = v208;
  v5->_proResMinimumDiskSpaceOverrideMegabytesRelativeToFreeSpace = v390;
  if (v220)
  {
    v221 = MGCopyAnswer();
    v222 = [v221 objectForKeyedSubscript:*MEMORY[0x1E69E5128]];
    unsignedLongLongValue = [v222 unsignedLongLongValue];

    v224 = 30;
    if (unsignedLongLongValue >= 0x1DCD650001)
    {
      v225 = 60;
    }

    else
    {
      v225 = 30;
    }

    if (unsignedLongLongValue < 0x1DCD650001)
    {
      v224 = 0;
    }

    if (v372)
    {
      v225 = 240;
      v224 = 120;
    }

    v5->__proResVideoMaxFPS1080p = v225;
    v5->__proResVideoMaxFPS4k = v224;
    v5->__proResVideoExternalMaxFPS1080p = 60;
    v5->__proResVideoExternalMaxFPS4k = v5->_back4kMaxFPS;
  }

  if (((processCopy < 5) & (processCopy ^ 1)) != 0)
  {
    v5->_backPortraitModeSupported = AVGestaltGetBoolAnswer();
    p_backPortraitModeSupported = &v5->_backPortraitModeSupported;
    v227 = AVGestaltGetBoolAnswer();
  }

  else
  {
    v227 = 0;
    v5->_backPortraitModeSupported = 0;
    p_backPortraitModeSupported = &v5->_backPortraitModeSupported;
  }

  v5->_frontPortraitModeSupported = v227;
  if ([(CAMCaptureCapabilities *)v5 fallbackCameraEnabled]&& *p_backPortraitModeSupported)
  {
    v5->_backPortraitModeSupported = v5->_backWideDualSupported;
  }

  v5->_portraitModeOverlappingCapturesSupported = v385;
  if ((processCopy | 4) == 4)
  {
    v228 = AVGestaltGetBoolAnswer();
  }

  else
  {
    v228 = 0;
  }

  v5->_backCinematicModeSupported = v5->_backCameraSupported & v228;
  fallbackCameraEnabled = [(CAMCaptureCapabilities *)v5 fallbackCameraEnabled];
  backCinematicModeSupported = v5->_backCinematicModeSupported;
  if (fallbackCameraEnabled && v5->_backCinematicModeSupported)
  {
    backCinematicModeSupported = v5->_backWideDualSupported;
    v5->_backCinematicModeSupported = backCinematicModeSupported;
  }

  v231 = v5->_frontCameraSupported & v228;
  v5->_frontCinematicModeSupported = v231;
  v5->_cinematicModeSupported = backCinematicModeSupported || v231;
  if (v228)
  {
    v232 = AVGestaltGetBoolAnswer();
  }

  else
  {
    v232 = 0;
  }

  v5->_cinematic4KSupported = v232;
  v233 = AVGestaltGetBoolAnswer();
  v5->_backLiveStageLightSupported = v233;
  v5->_frontLiveStageLightSupported = v233;
  v5->_hasFilteringEntitlement = (processCopy < 5) & (processCopy ^ 1);
  v5->_hasSystemTelephonyOfAnyKind = MGGetBoolAnswer();
  v5->_lowEndHardware = MGGetBoolAnswer();
  v5->_pipelinedStillImageProcessingSupported = AVGestaltGetBoolAnswer();
  v234 = AVGestaltGetBoolAnswer();
  v5->_portraitEffectsSupported = v234;
  if (!v234)
  {
    v5->__photoModeLightingControlSupported = 0;
    v236 = off_1E76F4000;
    goto LABEL_314;
  }

  v235 = v370 & ((processCopy > 5) | (0x11u >> processCopy));
  v5->__photoModeLightingControlSupported = v235;
  v236 = off_1E76F4000;
  v237 = v371;
  if ((v235 & 1) == 0)
  {
LABEL_314:
    v237 = 0;
  }

  v5->_portraitInPhotoModeBehavior = v237;
  if ((v382 & 0x8000000000000000) == 0)
  {
    v238 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v238, OS_LOG_TYPE_DEFAULT))
    {
      portraitInPhotoModeBehavior = v5->_portraitInPhotoModeBehavior;
      *buf = 134218240;
      v457 = portraitInPhotoModeBehavior;
      v458 = 2048;
      v459 = v382;
      _os_log_impl(&dword_1A3640000, v238, OS_LOG_TYPE_DEFAULT, "Overriding Portrait in Photo mode behavior from %lu to %lu", buf, 0x16u);
    }

    v5->_portraitInPhotoModeBehavior = v382;
  }

  v5->__frontStageLightPortaitEffectsSupported = AVGestaltGetBoolAnswer();
  v5->__backStageLightPortaitEffectsSupported = AVGestaltGetBoolAnswer();
  v240 = AVGestaltGetBoolAnswer();
  v5->_portraitEffectIntensitySupported = v240 & v417;
  portraitEffectsSupported = v5->_portraitEffectsSupported;
  if ((portraitEffectsSupported & v240) != 0)
  {
    portraitEffectsSupported = 2;
  }

  v5->_supportedPortraitLightingVersion = portraitEffectsSupported;
  if (v415)
  {
    v242 = 0;
  }

  else
  {
    v242 = AVGestaltGetBoolAnswer();
  }

  v5->_deferredPortraitRenderingSupported = v242;
  v243 = AVGestaltGetBoolAnswer();
  if (v415)
  {
    v244 = 0;
  }

  else
  {
    v244 = v243;
  }

  v5->_deferredProcessingSupported = v244;
  if (v244)
  {
    LOBYTE(v244) = AVGestaltGetBoolAnswer() ^ 1;
  }

  v5->__frontDeferredProcessingPrewarmingSupported = v244;
  v5->_allowPortraitDescriptionOverlay = v13 < 15.0 && v417;
  v5->__rearPortraitAspectRatioSupported = (AVGestaltGetBoolAnswer() | BYTE4(v392)) & 1;
  v5->__frontPortraitAspectRatioSupported = (AVGestaltGetBoolAnswer() | BYTE4(v392)) & 1;
  v245 = (processCopy < 5) & (processCopy ^ 1);
  v5->_previewQualityStillImageFilteringForPhotoModeSupported = (v415 == 0) & (v188 | v391);
  v5->__rearPhotoModeDepthSuggestionSupported = v245 & (v188 | BYTE4(v391));
  if ([(CAMCaptureCapabilities *)v5 fallbackCameraEnabled]&& v5->__rearPhotoModeDepthSuggestionSupported)
  {
    v5->__rearPhotoModeDepthSuggestionSupported = v5->_backWideDualSupported;
  }

  v5->__frontPhotoModeDepthSuggestionSupported = v245 & (v188 | v392);
  v5->_captureOnTouchDown = (AVGestaltGetBoolAnswer() | v412) & 1;
  v246 = AVGestaltGetBoolAnswer();
  v5->_neuralEngineSupported = v246;
  if ([(CAMCaptureCapabilities *)v5 fallbackCameraEnabled])
  {
    v246 = 0;
    v247 = v397;
  }

  else
  {
    v247 = v397;
    if (!*p_backPortraitModeSupported && !v5->_frontPortraitModeSupported)
    {
      v246 = 0;
    }
  }

  v5->_depthEffectApertureSupported = v246;
  v248 = ((v393 & 1) != 0 || AVGestaltGetBoolAnswer()) && v5->_deferredProcessingSupported;
  v5->__rearPortraitDeferredProcessingSupported = v248;
  v249 = ((v393 & 0x100000000) != 0 || AVGestaltGetBoolAnswer()) && v5->_deferredProcessingSupported;
  v5->__frontPortraitDeferredProcessingSupported = v249;
  v5->__rearPortraitSemanticStylesSupported = (AVGestaltGetBoolAnswer() | v394) & 1;
  v5->__frontPortraitSemanticStylesSupported = (AVGestaltGetBoolAnswer() | v394) & 1;
  v5->_semanticDevelopmentSupported = AVGestaltGetBoolAnswer();
  v5->_enableSemanticDevelopmentFilterDebugging = v247;
  v5->_contentAwareDistortionCorrectionSupported = AVGestaltGetBoolAnswer();
  if ((processCopy | 4) == 4)
  {
    v5->_linearDNGSupported = AVGestaltGetBoolAnswer();
  }

  if (v412 && AVGestaltGetBoolAnswer())
  {
    v5->_semanticStylesSupport = 15;
    v250 = ((AVGestaltGetIntegerAnswerWithDefault() > 0) | v366) & v365;
    v5->_smartStylesSupported = v250 & 1;
    v5->_smartStylesOnboardingSupported = v250 & 1;
    if (v250)
    {
      v251 = _os_feature_enabled_impl();
      smartStylesSupported = v5->_smartStylesSupported;
    }

    else
    {
      smartStylesSupported = 0;
      v251 = 0;
    }

    v5->__smartStylesAdditionalSystemStyleSupport = v251;
    v5->_semanticStylesVersion = smartStylesSupported;
    v5->_smartStylesShowExtraControls = smartStylesSupported & BYTE4(v366) & 1;
    v5->_allowSystemSmartStylesInPicker = smartStylesSupported;
  }

  else
  {
    v5->_semanticStylesSupport = !v373 && AVGestaltGetBoolAnswer();
  }

  if (processCopy >= 3)
  {
    if (processCopy == 3)
    {
      v253 = 1;
      goto LABEL_366;
    }

    if (processCopy != 4)
    {
LABEL_363:
      v253 = 0;
      goto LABEL_366;
    }
  }

  if (v5->_semanticStylesVersion)
  {
    goto LABEL_363;
  }

  v253 = AVGestaltGetBoolAnswer();
LABEL_366:
  v5->_liveFilteringSupported = v253;
  v5->_actionModeControlSupported = AVGestaltGetBoolAnswer();
  v5->_enhancedStabilizationSupported = AVGestaltGetBoolAnswer();
  v5->__preferWideDualPortrait = v5->__quadraPortraitSupported;
  v5->__wideDualPortraitNightModeSupported = AVGestaltGetBoolAnswer();
  v5->_minimumMachineReadableCodeNormalizedHeight = 0.05;
  v254 = v415 == 0 && v5->_neuralEngineSupported;
  v5->_imageAnalysisSupported = v254;
  v5->_documentScanningSupported = v254 & ((v413 == 3) | BYTE4(v394));
  v255 = MGCopyAnswer();
  v256 = 0.0;
  if ([v255 count] >= 2)
  {
    v257 = [v255 objectAtIndexedSubscript:1];
    [v257 doubleValue];
    v256 = v258;
  }

  v259 = [v255 objectAtIndexedSubscript:0];
  [v259 doubleValue];
  v261 = v260;

  v262 = v261 * (MGGetSInt32Answer() / -25.4);
  v5->_frontCameraInset = vcvtd_n_f64_s32(MGGetSInt32Answer(), 1uLL) + v262;
  v264 = v256 > v261 && v255 != 0;
  v5->_frontCameraOnRightEdge = v264;
  v5->_flashMitigationSupported = (processCopy < 5) & (processCopy ^ 1);
  if (!v415)
  {
    v5->_librarySelectionMockAutomationModeEnabled = CFPreferencesGetAppBooleanValue(@"CAMFeatureDevelopmentPeopleProximityMockAutomationMode", @"com.apple.camera", 0) != 0;
    v5->_librarySelectionMockLocationShiftingEnabled = CFPreferencesGetAppBooleanValue(@"CAMFeatureDevelopmentLibrarySelectionMockLocationShiftingEnabled", @"com.apple.camera", 0) != 0;
    v5->_librarySelectionSupported = v367;
    v5->_peopleProximityDetectionSupported = v367;
    if (v367)
    {
      v266 = CFPreferencesCopyAppValue(@"CAMFeatureDevelopmentPeopleProximityDetectAdditionalEmail", @"com.apple.camera");
      peopleProximityDetectAdditionalEmail = v5->_peopleProximityDetectAdditionalEmail;
      v5->_peopleProximityDetectAdditionalEmail = v266;

      buf[0] = 0;
      v5->_peopleProximityUsesDeviceDiscovery = CFPreferencesGetAppBooleanValue(@"CAMFeatureDevelopmentPeopleProximityUseDeviceDiscovery", @"com.apple.camera", buf) != 0;
      if (!buf[0] || v5->_librarySelectionMockAutomationModeEnabled)
      {
        v5->_peopleProximityUsesDeviceDiscovery = 1;
      }

      v268 = CFPreferencesGetAppIntegerValue(@"CAMFeatureDevelopmentPeopleProximityInitialScanDuration", @"com.apple.camera", 0);
      v269 = 5;
      if (v268)
      {
        v269 = v268;
      }

      v5->_peopleProximityInitialScanDuration = v269;
      v270 = CFPreferencesGetAppIntegerValue(@"CAMFeatureDevelopmentPeopleProximitySubsequentScanDuration", @"com.apple.camera", 0);
      v271 = 20;
      if (v270)
      {
        v271 = v270;
      }

      v5->_peopleProximitySubsequentScanDuration = v271;
      v272 = CFPreferencesGetAppIntegerValue(@"CAMFeatureDevelopmentPeopleProximityInitialScanRate", @"com.apple.camera", 0);
      v273 = 30;
      if (v272)
      {
        v273 = v272;
      }

      v5->_peopleProximityInitialScanRate = v273;
      v274 = CFPreferencesGetAppIntegerValue(@"CAMFeatureDevelopmentPeopleProximitySubsequentScanRate", @"com.apple.camera", 0);
      v275 = 10;
      if (v274)
      {
        v275 = v274;
      }

      v5->_peopleProximitySubsequentScanRate = v275;
      v5->_peopleProximityScanWaitInterval = CFPreferencesGetAppIntegerValue(@"CAMFeatureDevelopmentPeopleProximityScanWaitInterval", @"com.apple.camera", 0);
      keyExistsAndHasValidFormat = 0;
      if (CFPreferencesGetAppBooleanValue(@"CAMFeatureDevelopmentPeopleProximityScanIndefinitelyValue", @"com.apple.camera", &keyExistsAndHasValidFormat))
      {
        v276 = keyExistsAndHasValidFormat == 0;
      }

      else
      {
        v276 = 1;
      }

      v277 = !v276;
      v5->_peopleProximityScanIndefinitely = v277;
      v278 = CFPreferencesGetAppIntegerValue(@"CAMFeatureDevelopmentPeopleProximityAutoOnResetTimeout", @"com.apple.camera", 0);
      v279 = v278;
      if (!v278)
      {
        v279 = 300.0;
      }

      v5->_librarySelectionAutoOnResetTimeout = v279;
      v280 = CFPreferencesGetAppIntegerValue(@"CAMFeatureDevelopmentPeopleProximityUserChoiceResetTimeout", @"com.apple.camera", 0);
      v281 = v280;
      if (!v280)
      {
        v281 = 300.0;
      }

      v5->_librarySelectionUserChoiceResetTimeout = v281;
      v282 = CFPreferencesGetAppIntegerValue(@"CAMFeatureDevelopmentPeopleProximitySameLocationResetTimeout", @"com.apple.camera", 0);
      v283 = v282;
      if (!v282)
      {
        v283 = 3600.0;
      }

      v5->_librarySelectionSameLocationResetTimeout = v283;
      v284 = CFPreferencesGetAppIntegerValue(@"CAMFeatureDevelopmentPeopleProximityTripResetTimeout", @"com.apple.camera", 0);
      v285 = v284;
      if (!v284)
      {
        v285 = 86400.0;
      }

      v5->_librarySelectionTripResetTimeout = v285;
      v434 = 0;
      if (CFPreferencesGetAppBooleanValue(@"CAMFeatureDevelopmentPeopleProximityIgnoreNearbyRequirements", @"com.apple.camera", &v434))
      {
        v286 = 1;
      }

      else
      {
        v286 = v434 == 0;
      }

      v287 = v286;
      v5->_peopleProximityIgnoreNearbyRequirements = v287;
    }

    v288 = 0;
    v5->_peopleProximityPersistenceSupported = 0;
    v5->_frontEnhancedHEICResolutionSupported = 0;
    v289 = v409 & (v13 >= 17.0 || v368);
    if (v289 == 1)
    {
      v288 = v5->_dynamicAspectRatioSupported;
    }

    if (v409 && v5->_linearDNGSupported)
    {
      v450 = &unk_1F16C7DD8;
      v451 = &unk_1F16C97A0;
      v290 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v451 forKeys:&v450 count:1];
      backCameraSupportedRAWResolutionsByMode = v5->__backCameraSupportedRAWResolutionsByMode;
      v5->__backCameraSupportedRAWResolutionsByMode = v290;

      v448 = &unk_1F16C7DD8;
      v449 = &unk_1F16C7E68;
      v292 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v449 forKeys:&v448 count:1];
      backCameraDefaultRAWResolutionByMode = v5->__backCameraDefaultRAWResolutionByMode;
      v5->__backCameraDefaultRAWResolutionByMode = v292;

      if (v288)
      {
        v446 = &unk_1F16C7DD8;
        v447 = &unk_1F16C97B8;
        v294 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v447 forKeys:&v446 count:1];
        frontCameraSupportedRAWResolutionsByMode = v5->__frontCameraSupportedRAWResolutionsByMode;
        v5->__frontCameraSupportedRAWResolutionsByMode = v294;

        v444 = &unk_1F16C7DD8;
        v445 = &unk_1F16C7E80;
        v296 = MEMORY[0x1E695DF20];
        v297 = &v445;
        v298 = &v444;
      }

      else
      {
        v442 = &unk_1F16C7DD8;
        v443 = &unk_1F16C97D0;
        v299 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v443 forKeys:&v442 count:1];
        v300 = v5->__frontCameraSupportedRAWResolutionsByMode;
        v5->__frontCameraSupportedRAWResolutionsByMode = v299;

        v440 = &unk_1F16C7DD8;
        v441 = &unk_1F16C7E20;
        v296 = MEMORY[0x1E695DF20];
        v297 = &v441;
        v298 = &v440;
      }

      v301 = [v296 dictionaryWithObjects:v297 forKeys:v298 count:1];
      frontCameraDefaultRAWResolutionByMode = v5->__frontCameraDefaultRAWResolutionByMode;
      v5->__frontCameraDefaultRAWResolutionByMode = v301;
    }

    else if ((v409 & 1) == 0)
    {
      v265 = 0;
      v158 = v415;
      goto LABEL_429;
    }

    v303 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v304 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v418 = v255;
    if (v289)
    {
      [v303 setObject:&unk_1F16C97E8 forKeyedSubscript:&unk_1F16C7E98];
      v305 = &unk_1F16C7E80;
      [v304 setObject:&unk_1F16C7E80 forKeyedSubscript:&unk_1F16C7E98];
      v306 = &unk_1F16C9800;
      v307 = &unk_1F16C9830;
    }

    else
    {
      v306 = &unk_1F16C9818;
      v305 = &unk_1F16C7E20;
      v307 = &unk_1F16C9848;
    }

    [v303 setObject:v306 forKeyedSubscript:&unk_1F16C7DD8];
    [v304 setObject:v305 forKeyedSubscript:&unk_1F16C7DD8];
    [v303 setObject:v307 forKeyedSubscript:&unk_1F16C7EB0];
    [v304 setObject:v305 forKeyedSubscript:&unk_1F16C7EB0];
    objc_storeStrong(&v5->__backCameraSupportedCompressedResolutionsByMode, v303);
    objc_storeStrong(&v5->__backCameraDefaultCompressedResolutionByMode, v304);
    v308 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v309 = objc_alloc_init(MEMORY[0x1E695DF90]);
    if (v288)
    {
      v310 = &unk_1F16C9860;
    }

    else
    {
      v310 = &unk_1F16C9878;
    }

    if (v288)
    {
      v311 = &unk_1F16C7E80;
    }

    else
    {
      v311 = &unk_1F16C7E20;
    }

    [v308 setObject:v310 forKeyedSubscript:&unk_1F16C7DD8];
    [v309 setObject:v311 forKeyedSubscript:&unk_1F16C7DD8];
    objc_storeStrong(&v5->__frontCameraSupportedCompressedResolutionsByMode, v308);
    objc_storeStrong(&v5->__frontCameraDefaultCompressedResolutionByMode, v309);

    v265 = 1;
    v236 = off_1E76F4000;
    v158 = v415;
    v255 = v418;
    goto LABEL_429;
  }

  v265 = 0;
  v5->_frontEnhancedHEICResolutionSupported = 0;
LABEL_429:
  v5->_focalLengthPickerSupported = (AVGestaltGetBoolAnswer() | v403) & 1;
  backWideFocalLengthDisplayValue = v5->_backWideFocalLengthDisplayValue;
  if (backWideFocalLengthDisplayValue == 24)
  {
    v314 = 0;
    v313 = &unk_1F16C98A8;
  }

  else if (backWideFocalLengthDisplayValue == 26)
  {
    v313 = &unk_1F16C98C0;
    v314 = 3;
  }

  else
  {
    v315 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v315, OS_LOG_TYPE_ERROR))
    {
      [CAMCaptureCapabilities initWithHostProcess:];
    }

    v314 = 0;
    v5->_focalLengthPickerSupported = 0;
    v313 = &unk_1F16C9890;
  }

  v5->_baseFocalLengthForWideCamera = v314;
  availableCustomLenses = v5->_availableCustomLenses;
  v5->_availableCustomLenses = v313;

  if (v5->_focalLengthPickerSupported)
  {
    v317 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSArray count](v313, "count") + 1}];
    [v317 addObject:&unk_1F16C98D8];
    v423 = 0u;
    v424 = 0u;
    v421 = 0u;
    v422 = 0u;
    v318 = [(NSArray *)v313 countByEnumeratingWithState:&v421 objects:v439 count:16];
    if (v318)
    {
      v319 = v318;
      v320 = *v422;
      do
      {
        for (i = 0; i != v319; ++i)
        {
          if (*v422 != v320)
          {
            objc_enumerationMutation(v313);
          }

          v322 = *(*(&v421 + 1) + 8 * i);
          if ([v322 integerValue])
          {
            v438[0] = &unk_1F16C7DD8;
            v438[1] = v322;
            v323 = [MEMORY[0x1E695DEC8] arrayWithObjects:v438 count:2];
            [v317 addObject:v323];
          }
        }

        v319 = [(NSArray *)v313 countByEnumeratingWithState:&v421 objects:v439 count:16];
      }

      while (v319);
    }

    [v317 addObject:v313];
    objc_storeStrong(&v5->_supportedCustomLensGroups, v317);

    v236 = off_1E76F4000;
    v158 = v415;
  }

  AVGestaltGetFloatAnswerWithDefault();
  v324 = 0;
  v5->__maximumZoomFactorWithout24MPUpscale = v5->__backWideDualCameraSwitchOverZoomFactor * v325;
  v5->__overlapping48MPCapturesSupported = BYTE4(v403);
  v5->_useFullResolutionThumbnailForRAWCaptures = v265;
  if (processCopy > 4)
  {
    v326 = v404;
  }

  else
  {
    v326 = v404;
    if (((1 << processCopy) & 0x15) != 0)
    {
      v324 = AVGestaltGetBoolAnswer();
    }
  }

  v5->_zoomPIPSupported = v324;
  v5->__zoomPIPSupportedForSlomo = v324 & v398;
  v327 = AVGestaltGetBoolAnswer();
  v328 = _os_feature_enabled_impl();
  if (v158)
  {
    v329 = 0;
  }

  else
  {
    v329 = v328;
  }

  v5->_externalStorageSupported = v329 & v327;
  v5->_pipelinedStillImageProcessingSupported = 1;
  v5->_proResLogColorSpaceSupported = AVGestaltGetBoolAnswer();
  v330 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v331 = v330;
  if (v5->_proResVideoSupported)
  {
    [v330 addObject:&unk_1F16C7E80];
    if (!v5->_back4k120VideoSupported)
    {
      [v331 addObject:&unk_1F16C7DD8];
    }

    if (v5->_proResLogColorSpaceSupported)
    {
      [v331 addObject:&unk_1F16C7E68];
    }
  }

  v332 = [v331 copy];
  supportedProResColorSpaces = v5->_supportedProResColorSpaces;
  v5->_supportedProResColorSpaces = v332;

  v5->_shouldPersistPreferences = 0;
  hostProcess = v5->_hostProcess;
  if (hostProcess <= 4 && ((1 << hostProcess) & 0x13) != 0)
  {
    v5->_shouldPersistPreferences = 1;
  }

  v5->_actionButtonSupported = MGGetBoolAnswer();
  if ((processCopy | 4) != 4)
  {
    LOBYTE(v408) = 0;
  }

  v335 = CAMIsCameraButtonAvailable();
  v336 = v408 & (v335 ^ 1);
  v5->_allowHalfPressSimulation = v336;
  v5->_halfPressSupported = (v408 | v335) & 1;
  v5->_halfPressOverlayInProcess = v336;
  CAMMGGetCGRectAnswer(@"CameraButtonNormalizedCGRect", 0.0);
  CEKExpandNormalizedRect();
  UIRectRoundToScale();
  v5->__cameraButtonFrame.origin.x = v337;
  v5->__cameraButtonFrame.origin.y = v338;
  v5->__cameraButtonFrame.size.width = v339;
  v5->__cameraButtonFrame.size.height = v340;
  v5->_cameraButtonSupported = v5->_halfPressSupported;
  v5->_whiteBalanceLockingForVideoRecordingSupported = (processCopy < 5) & (0x13u >> processCopy);
  v5->_minimumDiskSpaceReserved = AVGestaltGetIntegerAnswerWithDefault();
  v341 = AVGestaltGetBoolAnswer();
  if (v341)
  {
    if (([(__objc2_class *)v236[81] BOOLInCameraDomainForKey:@"CAMFeatureDevelopmentAllowSpatialMode"]& 1) != 0)
    {
      LOBYTE(v341) = 1;
    }

    else
    {
      LOBYTE(v341) = _os_feature_enabled_impl();
    }
  }

  v5->_spatialModeSupported = (v158 == 0) & v341;
  fallbackCameraEnabled2 = [(CAMCaptureCapabilities *)v5 fallbackCameraEnabled];
  spatialModeSupported = v5->_spatialModeSupported;
  if (fallbackCameraEnabled2 && v5->_spatialModeSupported)
  {
    spatialModeSupported = v5->_backWideDualSupported;
    v5->_spatialModeSupported = spatialModeSupported;
  }

  v5->_spatialModeTrueVideoSupported = spatialModeSupported;
  if (processCopy <= 4 && ((1 << processCopy) & 0x15) != 0)
  {
    v344 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v345 = v344;
    if (v412)
    {
      [v344 addObject:&unk_1F16C7E20];
      [v345 addObject:&unk_1F16C7EC8];
    }
  }

  else
  {
    v345 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  }

  if (HIDWORD(v402))
  {
    [v345 addObject:&unk_1F16C7EE0];
  }

  objc_storeStrong(&v5->__supportedModesForPauseResumeVideo, v345);
  v5->_proRawJpegXLSupported = AVGestaltGetBoolAnswer();
  v5->_backQuadraSuperWideSupported = AVGestaltGetBoolAnswer();
  v346 = v5->_frontCameraSupported && AVGestaltGetBoolAnswer() && (_os_feature_enabled_impl() & 1) != 0 || v375;
  v347 = (processCopy < 5) & (processCopy ^ 1) & v346;
  v5->_useMultiCamSession = v347;
  v5->_frontRearSimultaneousVideoSupported = v347;
  v5->_frontRearSimultaneousVideoFrontCameraHDR10Supported = v347 & v399;
  v5->_frontRearSimultaneousVideo60FPSSupported = v347 & v402;
  v5->_frontRearSimultaneousVideoFrontVideoStabilizationSupported = v347 & v400;
  v5->_frontRearSimultaneousVideoDeferredFrontCameraEnabled = v401;
  if ((processCopy | 4) == 4)
  {
    v5->_shouldPreventConnectionHandover = 1;
  }

  if (AVGestaltGetBoolAnswer())
  {
    v348 = 1;
  }

  else
  {
    v348 = [(__objc2_class *)v236[81] BOOLInCameraDomainForKey:@"CAMFeatureDevelopmentAllowCinematicAudio"];
  }

  v5->_cinematicAudioSupported = v348;
  v5->_windRemovalSupported = AVGestaltGetBoolAnswer();
  if (AVGestaltGetBoolAnswer())
  {
    v349 = 1;
  }

  else
  {
    v349 = [(__objc2_class *)v236[81] BOOLInCameraDomainForKey:@"CAMFeatureDevelopmentAllowTrueVideo"];
  }

  v5->_trueVideoSupported = v349;
  v5->_viewportSpringAnimationSupported = [(__objc2_class *)v236[81] BOOLInCameraDomainForKey:@"CAMFeatureDevelopmentAllowViewportSpringAnimation"];
  if (v158)
  {
    v350 = 0;
  }

  else
  {
    v350 = AVGestaltGetBoolAnswer();
  }

  v5->_trueVideoCaptureStillOnCancelEnabled = v350;
  if (MGGetBoolAnswer())
  {
    v351 = 1;
  }

  else
  {
    v351 = [(__objc2_class *)v236[81] BOOLInCameraDomainForKey:@"CAMSimulateForcedShutterSound"];
  }

  v5->_regionalShutterSoundEnabled = v351;
  [(CAMCaptureCapabilities *)v5 _doubleForKey:@"CAMDebugZoomEventReportingInterval" applicationID:@"com.apple.camera"];
  v5->_zoomEventReportingInterval = v352;
  v5->_zoomEventReportAllChanges = [(__objc2_class *)v236[81] BOOLInCameraDomainForKey:@"CAMDebugZoomEventShouldReportAllChanges"];
  v353 = AVGestaltGetBoolAnswer();
  v354 = 0;
  v5->_smudgeDetectionSupported = v353;
  if (processCopy <= 4 && ((1 << processCopy) & 0x15) != 0)
  {
    buf[0] = 0;
    keyExistsAndHasValidFormat = 0;
    v355 = CFPreferencesGetAppBooleanValue(@"CAMFeatureDevelopmentAllowSmartFraming", @"com.apple.camera", buf);
    v356 = CFPreferencesGetAppBooleanValue(@"CAMFeatureDevelopmentAllowAutoSmartFraming", @"com.apple.camera", &keyExistsAndHasValidFormat);
    if (buf[0])
    {
      v357 = v355 != 0;
    }

    else if (AVGestaltGetBoolAnswer())
    {
      v357 = v5->_dynamicAspectRatioSupported;
    }

    else
    {
      v357 = 0;
    }

    v5->_smartFramingSupported = v357;
    if (keyExistsAndHasValidFormat)
    {
      v357 = v356 != 0;
    }

    v5->_autoSmartFramingSupported = v357;
    v434 = 0;
    smartFramingSupported = CFPreferencesGetAppBooleanValue(@"CAMFeatureDevelopmentAllowSmartFramingUsingDynamicAspectRatio", @"com.apple.camera", &v434);
    if (!v434)
    {
      smartFramingSupported = v5->_smartFramingSupported;
    }

    v5->_smartFramingUsingDynamicAspectRatioSupported = smartFramingSupported != 0;
    AVGestaltGetFloatAnswerWithDefault();
    v5->_smartFramingFieldOfViewPortraitZoomFactor = v359;
    AVGestaltGetFloatAnswerWithDefault();
    v5->_smartFramingFieldOfViewLandscapeZoomFactor = v360;
    AVGestaltGetFloatAnswerWithDefault();
    v5->_smartFramingFieldOfViewZoomedOutLandscapeZoomFactor = v361;
    AVGestaltGetFloatAnswerWithDefault();
    v5->_smartFramingFieldOfViewZoomedOutPortraitZoomFactor = v362;
    v354 = v374;
  }

  v5->_expandedModeWheelOnboardingSupported = v354;
  if (processCopy <= 5)
  {
    v5->_multipleCaptureFeaturesSupported = 0x100000001uLL >> (8 * processCopy);
  }

  CAMSignpostWithIDAndArgs(90, 0xEEEEB0B5B2B2EEEELL, 0, 0, 0, 0);
  v363 = v5;

LABEL_511:
  return v5;
}

- (double)_doubleForKey:(id)key applicationID:(id)d
{
  v4 = CFPreferencesCopyAppValue(key, d);
  v5 = 0.0;
  if (v4 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v4 doubleValue];
    v5 = v6;
  }

  return v5;
}

- (BOOL)isCameraSupportedForDevicePosition:(int64_t)position
{
  if (position == 1)
  {
    return [(CAMCaptureCapabilities *)self isFrontCameraSupported];
  }

  if (position)
  {
    return 0;
  }

  return [(CAMCaptureCapabilities *)self isBackCameraSupported];
}

- (BOOL)isCameraSupportedForDevice:(int64_t)device
{
  if ((device - 1) > 0xA)
  {
    v5 = 0;
  }

  else
  {
    v5 = qword_1A3A6A2E8[device - 1];
  }

  v6 = [(CAMCaptureCapabilities *)self isCameraSupportedForDevicePosition:v5];
  if (!v6)
  {
    return v6;
  }

  if (device > 5)
  {
    if (device > 8)
    {
      if (device == 9)
      {

        LOBYTE(v6) = [(CAMCaptureCapabilities *)self isFrontPearlSupported];
      }

      else if (device == 10)
      {

        LOBYTE(v6) = [(CAMCaptureCapabilities *)self isFrontSuperWideSupported];
      }

      else
      {
        LOBYTE(v6) = device == 11;
      }
    }

    else if (device == 6)
    {

      LOBYTE(v6) = [(CAMCaptureCapabilities *)self isBackWideDualSupported];
    }

    else
    {
      if (device != 7)
      {
LABEL_16:

        LOBYTE(v6) = [(CAMCaptureCapabilities *)self isFrontCameraSupported];
        return v6;
      }

      LOBYTE(v6) = [(CAMCaptureCapabilities *)self isBackTripleCameraSupported];
    }
  }

  else
  {
    if (device <= 2)
    {
      if (!device)
      {
LABEL_10:

        LOBYTE(v6) = [(CAMCaptureCapabilities *)self isBackCameraSupported];
        return v6;
      }

      if (device != 1)
      {
        LOBYTE(v6) = 0;
        if (device != 2)
        {
          return v6;
        }

        goto LABEL_10;
      }

      goto LABEL_16;
    }

    if (device == 3)
    {

      LOBYTE(v6) = [(CAMCaptureCapabilities *)self isBackTelephotoSupported];
    }

    else if (device == 4)
    {

      LOBYTE(v6) = [(CAMCaptureCapabilities *)self isBackDualSupported];
    }

    else
    {

      LOBYTE(v6) = [(CAMCaptureCapabilities *)self isBackSuperWideSupported];
    }
  }

  return v6;
}

- (CGRect)frameForPhysicalButton:(int64_t)button
{
  v3 = *MEMORY[0x1E695F058];
  v4 = *(MEMORY[0x1E695F058] + 8);
  v5 = *(MEMORY[0x1E695F058] + 16);
  v6 = *(MEMORY[0x1E695F058] + 24);
  if (button > 2)
  {
    if (button == 3)
    {
      [(CAMCaptureCapabilities *)self _lockButtonFrame:v3];
    }

    else if (button == 6)
    {
      [(CAMCaptureCapabilities *)self _cameraButtonFrame:v3];
    }
  }

  else if (button == 1)
  {
    [(CAMCaptureCapabilities *)self _volumeUpButtonFrame:v3];
  }

  else if (button == 2)
  {
    [(CAMCaptureCapabilities *)self _volumeDownButtonFrame:v3];
  }

  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (BOOL)mirroredFrontCapturesSupportedForMode:(int64_t)mode
{
  isMirroredFrontCapturesSupported = [(CAMCaptureCapabilities *)self isMirroredFrontCapturesSupported];
  if (isMirroredFrontCapturesSupported)
  {
    LOBYTE(isMirroredFrontCapturesSupported) = 0;
    if (mode <= 7)
    {
      if (((1 << mode) & 0x51) != 0)
      {
        LOBYTE(isMirroredFrontCapturesSupported) = 1;
      }

      else if (((1 << mode) & 0x86) != 0)
      {

        LOBYTE(isMirroredFrontCapturesSupported) = [(CAMCaptureCapabilities *)self isMirroredFrontVideosSupported];
      }
    }
  }

  return isMirroredFrontCapturesSupported;
}

- (BOOL)isResponsiveShutterSupportedForMode:(int64_t)mode
{
  result = [(CAMCaptureCapabilities *)self responsiveShutterSupported];
  if ((mode & 0xFFFFFFFFFFFFFFFBLL) != 0)
  {
    return 0;
  }

  return result;
}

- (BOOL)isFlashSupportedForDevicePosition:(int64_t)position
{
  if (![(CAMCaptureCapabilities *)self isCameraSupportedForDevicePosition:?])
  {
    return 0;
  }

  if (position != 1)
  {
    if (!position)
    {

      return [(CAMCaptureCapabilities *)self isBackFlashSupported];
    }

    return 0;
  }

  return [(CAMCaptureCapabilities *)self isFrontFlashSupported];
}

- (BOOL)isTorchSupportedForDevicePosition:(int64_t)position
{
  if (![(CAMCaptureCapabilities *)self isCameraSupportedForDevicePosition:?])
  {
    return 0;
  }

  if (position != 1)
  {
    if (!position)
    {

      return [(CAMCaptureCapabilities *)self isBackTorchSupported];
    }

    return 0;
  }

  return [(CAMCaptureCapabilities *)self isFrontTorchSupported];
}

- (BOOL)isHDRSupportedForDevicePosition:(int64_t)position
{
  if (![(CAMCaptureCapabilities *)self isCameraSupportedForDevicePosition:?])
  {
    return 0;
  }

  if (position != 1)
  {
    if (!position)
    {

      return [(CAMCaptureCapabilities *)self isBackHDRSupported];
    }

    return 0;
  }

  return [(CAMCaptureCapabilities *)self isFrontHDRSupported];
}

- (BOOL)isHDRSupportedForMode:(int64_t)mode devicePosition:(int64_t)position
{
  v5 = [(CAMCaptureCapabilities *)self isHDRSupportedForDevicePosition:position];
  v6 = 0x251u >> mode;
  if (mode > 9)
  {
    LOBYTE(v6) = 0;
  }

  if (!v5)
  {
    LOBYTE(v6) = 0;
  }

  return v6 & 1;
}

- (BOOL)isSmartHDRSupported
{
  if ([(CAMCaptureCapabilities *)self isBackSmartHDRSupported])
  {
    return 1;
  }

  return [(CAMCaptureCapabilities *)self isFrontSmartHDRSupported];
}

- (BOOL)isSmartHDRSupportedForMode:(int64_t)mode devicePosition:(int64_t)position
{
  if (![(CAMCaptureCapabilities *)self isHDRSupportedForMode:mode devicePosition:?])
  {
    return 0;
  }

  if (position != 1)
  {
    if (!position)
    {

      return [(CAMCaptureCapabilities *)self isBackSmartHDRSupported];
    }

    return 0;
  }

  return [(CAMCaptureCapabilities *)self isFrontSmartHDRSupported];
}

- (BOOL)isHDR10BitSlomoSupportedForDevice:(int64_t)device
{
  result = [(CAMCaptureCapabilities *)self isHDR10BitVideoSupported];
  if ((device & 0xFFFFFFFFFFFFFFFDLL) != 0)
  {
    return 0;
  }

  return result;
}

- (BOOL)shouldSuspendVideoHDRForHDRMode:(int64_t)mode captureMode:(int64_t)captureMode
{
  isSmartHDRSupported = [(CAMCaptureCapabilities *)self isSmartHDRSupported];
  v7 = ((1 << captureMode) & 0x251) != 0 && mode == 0;
  if (captureMode > 9)
  {
    v7 = 0;
  }

  return isSmartHDRSupported && v7;
}

- (BOOL)isLivePhotoSupported
{
  if ([(CAMCaptureCapabilities *)self isBackLivePhotoSupported])
  {
    return 1;
  }

  return [(CAMCaptureCapabilities *)self isFrontLivePhotoSupported];
}

- (BOOL)isLivePhotoSupportedForDevicePosition:(int64_t)position
{
  if (![(CAMCaptureCapabilities *)self isCameraSupportedForDevicePosition:?])
  {
    return 0;
  }

  if (position != 1)
  {
    if (!position)
    {

      return [(CAMCaptureCapabilities *)self isBackLivePhotoSupported];
    }

    return 0;
  }

  return [(CAMCaptureCapabilities *)self isFrontLivePhotoSupported];
}

- (BOOL)isHDROnSupportedForDevicePosition:(int64_t)position
{
  if (![(CAMCaptureCapabilities *)self isCameraSupportedForDevicePosition:?])
  {
    return 0;
  }

  if (position != 1)
  {
    if (!position)
    {

      return [(CAMCaptureCapabilities *)self isBackHDROnSupported];
    }

    return 0;
  }

  return [(CAMCaptureCapabilities *)self isFrontHDROnSupported];
}

- (BOOL)isLightingControlSupportedForMode:(int64_t)mode
{
  arePortraitEffectsSupported = [(CAMCaptureCapabilities *)self arePortraitEffectsSupported];
  if (arePortraitEffectsSupported)
  {
    if (mode == 6)
    {
      LOBYTE(arePortraitEffectsSupported) = 1;
    }

    else if (mode)
    {
      LOBYTE(arePortraitEffectsSupported) = 0;
    }

    else
    {

      LOBYTE(arePortraitEffectsSupported) = [(CAMCaptureCapabilities *)self _photoModeLightingControlSupported];
    }
  }

  return arePortraitEffectsSupported;
}

- (int64_t)supportedEffectSetForDevicePosition:(int64_t)position
{
  if (position == 1)
  {
    _frontStageLightPortaitEffectsSupported = [(CAMCaptureCapabilities *)self _frontStageLightPortaitEffectsSupported];
    goto LABEL_5;
  }

  if (!position)
  {
    _frontStageLightPortaitEffectsSupported = [(CAMCaptureCapabilities *)self _backStageLightPortaitEffectsSupported];
LABEL_5:
    v5 = _frontStageLightPortaitEffectsSupported;
    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:
  supportedPortraitLightingVersion = [(CAMCaptureCapabilities *)self supportedPortraitLightingVersion];
  arePortraitEffectsSupported = [(CAMCaptureCapabilities *)self arePortraitEffectsSupported];
  v8 = 2;
  if (supportedPortraitLightingVersion == 2)
  {
    v8 = 3;
  }

  if (!v5)
  {
    v8 = 1;
  }

  if (arePortraitEffectsSupported)
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

- (BOOL)isLivePreviewSupportedForLightingType:(int64_t)type devicePosition:(int64_t)position
{
  result = [(CAMCaptureCapabilities *)self isPortraitModeSupportedForDevicePosition:position];
  if ((type - 1) >= 3)
  {
    if ((type - 4) >= 3)
    {
      return type == 0;
    }

    else if (position == 1)
    {

      return [(CAMCaptureCapabilities *)self isFrontLiveStageLightSupported];
    }

    else if (position)
    {
      return 0;
    }

    else
    {

      return [(CAMCaptureCapabilities *)self isBackLiveStageLightSupported];
    }
  }

  return result;
}

- (BOOL)isBurstSupportedForMode:(int64_t)mode device:(int64_t)device
{
  v7 = [(CAMCaptureCapabilities *)self isCameraSupportedForDevice:device];
  if (v7)
  {
    v8 = mode & 0xFFFFFFFFFFFFFFFBLL;
    if ((device - 8) < 4 || device == 1)
    {
      isFrontBurstSupported = [(CAMCaptureCapabilities *)self isFrontBurstSupported];
    }

    else
    {
      isFrontBurstSupported = [(CAMCaptureCapabilities *)self isBackBurstSupported];
    }

    LOBYTE(v7) = v8 == 0 && isFrontBurstSupported;
  }

  return v7;
}

- (double)captureIntervalForDevice:(int64_t)device
{
  v4 = (device > 0xB) | (0xFDu >> device);
  v5 = +[CAMUserPreferences preferences];
  [(CAMCaptureCapabilities *)self _backCaptureInterval];
  v7 = v6;
  [(CAMCaptureCapabilities *)self _frontCaptureInterval];
  v9 = v8;
  overriddenBackCaptureInterval = [v5 overriddenBackCaptureInterval];
  overriddenFrontCaptureInterval = [v5 overriddenFrontCaptureInterval];
  if (v4)
  {
    v12 = overriddenBackCaptureInterval;
  }

  else
  {
    v12 = overriddenFrontCaptureInterval;
  }

  if (v4)
  {
    v13 = v7;
  }

  else
  {
    v13 = v9;
  }

  if (v12 / 1000.0 <= 0.0)
  {
    v14 = v13;
  }

  else
  {
    v14 = v12 / 1000.0;
  }

  return v14;
}

- (BOOL)is4k24VideoSupportedForDevice:(int64_t)device
{
  v5 = [(CAMCaptureCapabilities *)self isCameraSupportedForDevice:?];
  if (v5)
  {
    if ((device - 8) < 4 || device == 1)
    {

      LOBYTE(v5) = [(CAMCaptureCapabilities *)self isFront4k24VideoSupported];
    }

    else
    {

      LOBYTE(v5) = [(CAMCaptureCapabilities *)self isBack4k24VideoSupported];
    }
  }

  return v5;
}

- (BOOL)is4k30VideoSupportedForDevice:(int64_t)device
{
  v5 = [(CAMCaptureCapabilities *)self isCameraSupportedForDevice:?];
  if (v5)
  {
    if ((device - 8) < 4 || device == 1)
    {

      LOBYTE(v5) = [(CAMCaptureCapabilities *)self isFront4k30VideoSupported];
    }

    else
    {

      LOBYTE(v5) = [(CAMCaptureCapabilities *)self isBack4k30VideoSupported];
    }
  }

  return v5;
}

- (BOOL)is1080p60VideoSupportedForDevice:(int64_t)device
{
  if (device > 0xA)
  {
    LOBYTE(front1080pMaxFPS) = 0;
    return front1080pMaxFPS;
  }

  v10 = v3;
  if (((1 << device) & 0x7D) == 0)
  {
    if (((1 << device) & 0x702) != 0)
    {
      front1080pMaxFPS = [(CAMCaptureCapabilities *)self front1080pMaxFPS];
      goto LABEL_6;
    }

    LODWORD(front1080pMaxFPS) = [(CAMCaptureCapabilities *)self _isTripleCamera1080p60Supported];
    if (!front1080pMaxFPS)
    {
      return front1080pMaxFPS;
    }
  }

  front1080pMaxFPS = [(CAMCaptureCapabilities *)self back1080pMaxFPS:v4];
LABEL_6:
  LOBYTE(front1080pMaxFPS) = front1080pMaxFPS > 59;
  return front1080pMaxFPS;
}

- (BOOL)is1080p120VideoSupportedForDevice:(int64_t)device
{
  v5 = _os_feature_enabled_impl();
  if ((device | 2) == 2)
  {
    if (v5)
    {
      LOBYTE(v5) = [(CAMCaptureCapabilities *)self back1080pMaxFPS]> 119;
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (BOOL)is4k60VideoSupportedForDevice:(int64_t)device
{
  LODWORD(_backDualCameraVideoCapture4kMaxFPS) = [(CAMCaptureCapabilities *)self isCameraSupportedForDevice:?];
  if (!_backDualCameraVideoCapture4kMaxFPS)
  {
    return _backDualCameraVideoCapture4kMaxFPS;
  }

  LOBYTE(_backDualCameraVideoCapture4kMaxFPS) = 0;
  if (device <= 4)
  {
    if (device > 1)
    {
      if ((device - 2) >= 2)
      {
        if (device == 4)
        {
          LODWORD(_backDualCameraVideoCapture4kMaxFPS) = [(CAMCaptureCapabilities *)self isBack4k60VideoSupported];
          if (_backDualCameraVideoCapture4kMaxFPS)
          {
            _backDualCameraVideoCapture4kMaxFPS = [(CAMCaptureCapabilities *)self _backDualCameraVideoCapture4kMaxFPS];
LABEL_26:
            LOBYTE(_backDualCameraVideoCapture4kMaxFPS) = _backDualCameraVideoCapture4kMaxFPS > 59;
            return _backDualCameraVideoCapture4kMaxFPS;
          }
        }

        return _backDualCameraVideoCapture4kMaxFPS;
      }

LABEL_21:

      LOBYTE(_backDualCameraVideoCapture4kMaxFPS) = [(CAMCaptureCapabilities *)self isBack4k60VideoSupported];
      return _backDualCameraVideoCapture4kMaxFPS;
    }

    if (!device)
    {
      goto LABEL_21;
    }

    if (device != 1)
    {
      return _backDualCameraVideoCapture4kMaxFPS;
    }

LABEL_15:

    LOBYTE(_backDualCameraVideoCapture4kMaxFPS) = [(CAMCaptureCapabilities *)self isFront4k60VideoSupported];
    return _backDualCameraVideoCapture4kMaxFPS;
  }

  if (device > 6)
  {
    if (device == 7)
    {
      LODWORD(_backDualCameraVideoCapture4kMaxFPS) = [(CAMCaptureCapabilities *)self isBack4k60VideoSupported];
      if (_backDualCameraVideoCapture4kMaxFPS)
      {
        _backDualCameraVideoCapture4kMaxFPS = [(CAMCaptureCapabilities *)self _backTripleCameraVideoCapture4kMaxFPS];
        goto LABEL_26;
      }

      return _backDualCameraVideoCapture4kMaxFPS;
    }

    if (device != 8 && device != 10)
    {
      return _backDualCameraVideoCapture4kMaxFPS;
    }

    goto LABEL_15;
  }

  if (device == 5)
  {
    goto LABEL_21;
  }

  LODWORD(_backDualCameraVideoCapture4kMaxFPS) = [(CAMCaptureCapabilities *)self isBack4k60VideoSupported];
  if (_backDualCameraVideoCapture4kMaxFPS)
  {
    _backDualCameraVideoCapture4kMaxFPS = [(CAMCaptureCapabilities *)self _backWideDualCameraVideoCapture4kMaxFPS];
    goto LABEL_26;
  }

  return _backDualCameraVideoCapture4kMaxFPS;
}

- (BOOL)is4K120VideoSupportedForDevice:(int64_t)device
{
  if (![(CAMCaptureCapabilities *)self isCameraSupportedForDevice:?]|| (device | 2) != 2)
  {
    return 0;
  }

  return [(CAMCaptureCapabilities *)self isBack4k120VideoSupported];
}

- (BOOL)isSupportedMode:(int64_t)mode withDevice:(int64_t)device
{
  v7 = [(CAMCaptureCapabilities *)self isCameraSupportedForDevice:device];
  if (v7)
  {
    LOBYTE(v7) = 0;
    if (mode > 4)
    {
      if (mode <= 6)
      {
        if (mode == 5)
        {

          LOBYTE(v7) = [(CAMCaptureCapabilities *)self isTimelapseSupportedForDevice:device];
        }

        else
        {

          LOBYTE(v7) = [(CAMCaptureCapabilities *)self isPortraitModeSupportedForDevice:device];
        }
      }

      else
      {
        switch(mode)
        {
          case 7:

            LOBYTE(v7) = [(CAMCaptureCapabilities *)self isCinematicModeSupportedForDevice:device];
            break;
          case 8:

            LOBYTE(v7) = [(CAMCaptureCapabilities *)self _isSpatialVideoModeSupportedForDevice:device];
            break;
          case 9:

            LOBYTE(v7) = [(CAMCaptureCapabilities *)self _isSpatialPhotoModeSupportedForDevice:device];
            break;
        }
      }
    }

    else if (mode <= 1)
    {
      if (mode)
      {
        if (mode == 1)
        {

          LOBYTE(v7) = [(CAMCaptureCapabilities *)self isVideoSupported];
        }
      }

      else
      {
        LOBYTE(v7) = 1;
      }
    }

    else if (mode == 2)
    {

      LOBYTE(v7) = [(CAMCaptureCapabilities *)self isSlomoSupportedForDevice:device];
    }

    else if (mode == 3)
    {

      LOBYTE(v7) = [(CAMCaptureCapabilities *)self isPanoramaSupportedForDevice:device];
    }

    else
    {

      LOBYTE(v7) = [(CAMCaptureCapabilities *)self isSquareModeSupported];
    }
  }

  return v7;
}

- (int64_t)sanitizeDesiredDevice:(int64_t)device forMode:(int64_t)mode
{
  deviceCopy = device;
  v28 = *MEMORY[0x1E69E9840];
  if (![(CAMCaptureCapabilities *)self isSupportedMode:mode withDevice:device])
  {
    v7 = deviceCopy - 1;
    if (deviceCopy - 1 > 0xA)
    {
      v10 = 0;
      v9 = @"BackAuto";
      v8 = @"FrontAuto";
    }

    else
    {
      v8 = off_1E76FBFF0[v7];
      v9 = off_1E76FC048[v7];
      v10 = qword_1A3A6A2E8[v7];
    }

    if ([(CAMCaptureCapabilities *)self isSupportedMode:mode withDevice:v10])
    {
      v11 = os_log_create("com.apple.camera", "Camera");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        if (mode > 9)
        {
          v12 = 0;
        }

        else
        {
          v12 = off_1E76FC100[mode];
        }

        if (deviceCopy > 0xB)
        {
          v19 = 0;
        }

        else
        {
          v19 = off_1E76FC0A0[deviceCopy];
        }

        v22 = 138543874;
        v23 = v12;
        v24 = 2114;
        v25 = v19;
        v26 = 2114;
        v27 = v9;
        _os_log_impl(&dword_1A3640000, v11, OS_LOG_TYPE_DEFAULT, "Attempted to change to mode %{public}@ with an unsupported device (%{public}@). Configuring to use Auto device for same position instead (%{public}@).", &v22, 0x20u);
      }
    }

    else
    {
      v13 = [(CAMCaptureCapabilities *)self isSupportedMode:mode withDevice:v10 ^ 1];
      v14 = os_log_create("com.apple.camera", "Camera");
      v11 = v14;
      if (v13)
      {
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          if (mode > 9)
          {
            v15 = 0;
          }

          else
          {
            v15 = off_1E76FC100[mode];
          }

          if (deviceCopy > 0xB)
          {
            v20 = 0;
          }

          else
          {
            v20 = off_1E76FC0A0[deviceCopy];
          }

          v22 = 138543874;
          v23 = v15;
          v24 = 2114;
          v25 = v20;
          v26 = 2114;
          v27 = v8;
          _os_log_impl(&dword_1A3640000, v11, OS_LOG_TYPE_DEFAULT, "Attempted to change to mode %{public}@ with an unsupported device (%{public}@). Configuring to use Auto device for other position instead (%{public}@).", &v22, 0x20u);
        }

        v10 ^= 1uLL;
      }

      else if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v16 = CAMDebugStringForCaptureMode(mode);
        v17 = CAMDebugStringForCaptureDevice_1(deviceCopy);
        v18 = CAMDebugStringForCaptureDevice_1(v10);
        v22 = 138543874;
        v23 = v16;
        v24 = 2114;
        v25 = v17;
        v26 = 2114;
        v27 = v18;
        _os_log_error_impl(&dword_1A3640000, v11, OS_LOG_TYPE_ERROR, "Attempted to change to mode %{public}@ with an unsupported device (%{public}@). Auto device for both positions unsupported, returning Auto device for same position anyway (%{public}@).", &v22, 0x20u);
      }
    }

    return v10;
  }

  return deviceCopy;
}

- (BOOL)isSupportedVideoConfiguration:(int64_t)configuration forMode:(int64_t)mode device:(int64_t)device
{
  LODWORD(backHighFrameRate4kMaxFPS) = [(CAMCaptureCapabilities *)self isCameraSupportedForDevice:device];
  if (backHighFrameRate4kMaxFPS)
  {
    v10 = mode == 7 && [(CAMCaptureCapabilities *)self isCinematicModeSupported];
    cinematic4KSupported = [(CAMCaptureCapabilities *)self cinematic4KSupported];
    isHEVCEncodingSupported = [(CAMCaptureCapabilities *)self isHEVCEncodingSupported];
    backHighFrameRate4kMaxFPS = [(CAMCaptureCapabilities *)self backHighFrameRate4kMaxFPS];
    v13 = cinematic4KSupported && v10;
    switch(configuration)
    {
      case 0:
        if (mode == 1)
        {
          goto LABEL_11;
        }

        if (mode == 2)
        {
          goto LABEL_67;
        }

        if (v10)
        {

          LOBYTE(backHighFrameRate4kMaxFPS) = [(CAMCaptureCapabilities *)self isCinematicModeSupportedForDevice:device];
        }

        else
        {
          if (mode != 8)
          {
            goto LABEL_81;
          }

          LOBYTE(backHighFrameRate4kMaxFPS) = [(CAMCaptureCapabilities *)self _isSpatialVideoModeSupportedForDevice:device];
        }

        return backHighFrameRate4kMaxFPS;
      case 1:
        if (mode != 1)
        {
          goto LABEL_81;
        }

        LOBYTE(backHighFrameRate4kMaxFPS) = [(CAMCaptureCapabilities *)self is1080p60VideoSupportedForDevice:device];
        return backHighFrameRate4kMaxFPS;
      case 2:
        if (mode != 2)
        {
          goto LABEL_81;
        }

LABEL_67:

        LOBYTE(backHighFrameRate4kMaxFPS) = [(CAMCaptureCapabilities *)self isSlomoSupportedForDevice:device];
        return backHighFrameRate4kMaxFPS;
      case 3:
        if (mode != 2)
        {
          goto LABEL_81;
        }

        LOBYTE(backHighFrameRate4kMaxFPS) = [(CAMCaptureCapabilities *)self is720p240SupportedForDevice:device];
        return backHighFrameRate4kMaxFPS;
      case 4:
        if (mode == 1 && isHEVCEncodingSupported)
        {

          LOBYTE(backHighFrameRate4kMaxFPS) = [(CAMCaptureCapabilities *)self is1080p120VideoSupportedForDevice:device];
        }

        else
        {
          if (mode != 2)
          {
            goto LABEL_81;
          }

          LOBYTE(backHighFrameRate4kMaxFPS) = [(CAMCaptureCapabilities *)self _is1080p120SlomoSupportedForDevice:device];
        }

        return backHighFrameRate4kMaxFPS;
      case 5:
        if (!((mode == 1) | v13 & 1))
        {
          goto LABEL_81;
        }

        goto LABEL_47;
      case 6:
        if (((device < 0xC) & (0xF02u >> device)) != 0)
        {
          front720pMaxFPS = [(CAMCaptureCapabilities *)self front720pMaxFPS];
        }

        else
        {
          front720pMaxFPS = [(CAMCaptureCapabilities *)self back720pMaxFPS];
        }

        LOBYTE(backHighFrameRate4kMaxFPS) = mode == 1 && front720pMaxFPS > 29;
        return backHighFrameRate4kMaxFPS;
      case 7:
        if (((device < 0xC) & (0xF02u >> device)) != 0)
        {
          front1080pMaxFPS = [(CAMCaptureCapabilities *)self front1080pMaxFPS];
        }

        else
        {
          front1080pMaxFPS = [(CAMCaptureCapabilities *)self back1080pMaxFPS];
        }

        v24 = front1080pMaxFPS;
        v25 = mode == 8 && [(CAMCaptureCapabilities *)self _isSpatialVideoModeSupportedForDevice:device];
        LOBYTE(backHighFrameRate4kMaxFPS) = (mode == 1 || v10 || v25) && v24 > 29;
        return backHighFrameRate4kMaxFPS;
      case 8:
        LOBYTE(backHighFrameRate4kMaxFPS) = 0;
        if (mode == 2 && isHEVCEncodingSupported)
        {

          LOBYTE(backHighFrameRate4kMaxFPS) = [(CAMCaptureCapabilities *)self is1080p240SupportedForDevice:device];
        }

        return backHighFrameRate4kMaxFPS;
      case 9:
        if (mode != 1 || !isHEVCEncodingSupported)
        {
          goto LABEL_81;
        }

        LOBYTE(backHighFrameRate4kMaxFPS) = [(CAMCaptureCapabilities *)self is4k60VideoSupportedForDevice:device];
        return backHighFrameRate4kMaxFPS;
      case 10:
        if (!((mode == 1) | v13 & 1))
        {
          goto LABEL_81;
        }

        LOBYTE(backHighFrameRate4kMaxFPS) = [(CAMCaptureCapabilities *)self is4k24VideoSupportedForDevice:device];
        return backHighFrameRate4kMaxFPS;
      case 11:
        if (((device < 0xC) & (0xF02u >> device)) != 0)
        {
          front1080pMaxFPS2 = [(CAMCaptureCapabilities *)self front1080pMaxFPS];
        }

        else
        {
          front1080pMaxFPS2 = [(CAMCaptureCapabilities *)self back1080pMaxFPS];
        }

        v20 = front1080pMaxFPS2;
        isPALVideoSupported = [(CAMCaptureCapabilities *)self isPALVideoSupported];
        v23 = mode == 1 && v20 > 24;
        LOBYTE(backHighFrameRate4kMaxFPS) = isPALVideoSupported && v23;
        return backHighFrameRate4kMaxFPS;
      case 12:
        v15 = mode == 1;
        isPALVideoSupported2 = [(CAMCaptureCapabilities *)self isPALVideoSupported];
        LOBYTE(backHighFrameRate4kMaxFPS) = 0;
        if (isPALVideoSupported2 && ((v15 | v13) & 1) != 0)
        {
LABEL_47:

          LOBYTE(backHighFrameRate4kMaxFPS) = [(CAMCaptureCapabilities *)self is4k30VideoSupportedForDevice:device];
        }

        return backHighFrameRate4kMaxFPS;
      case 13:
      case 14:
        if (mode == 1)
        {
          if (![(CAMCaptureCapabilities *)self isBack4k120VideoSupported]|| !isHEVCEncodingSupported)
          {
LABEL_81:
            LOBYTE(backHighFrameRate4kMaxFPS) = 0;
            return backHighFrameRate4kMaxFPS;
          }
        }

        else
        {
          v19 = backHighFrameRate4kMaxFPS;
          LOBYTE(backHighFrameRate4kMaxFPS) = 0;
          if (mode != 2 || v19 < 120 || !isHEVCEncodingSupported)
          {
            return backHighFrameRate4kMaxFPS;
          }
        }

        LOBYTE(backHighFrameRate4kMaxFPS) = [(CAMCaptureCapabilities *)self is4K120VideoSupportedForDevice:device];
        break;
      default:
        if ((configuration - 10000) >= 6 || mode != 1)
        {
          goto LABEL_81;
        }

LABEL_11:
        LODWORD(backHighFrameRate4kMaxFPS) = [(CAMCaptureCapabilities *)self isCameraSupportedForDevice:device];
        if (backHighFrameRate4kMaxFPS)
        {

          LOBYTE(backHighFrameRate4kMaxFPS) = [(CAMCaptureCapabilities *)self isVideoSupported];
        }

        return backHighFrameRate4kMaxFPS;
    }
  }

  return backHighFrameRate4kMaxFPS;
}

- (BOOL)isSupportedVideoConfiguration:(int64_t)configuration forMode:(int64_t)mode videoEncodingBehavior:(int64_t)behavior outputToExternalStorage:(BOOL)storage frontRearSimultaneousVideoEnabled:(BOOL)enabled
{
  if (behavior == 2)
  {
    return [(CAMCaptureCapabilities *)self isProResVideoSupportedForMode:mode videoConfiguration:configuration outputToExternalStorage:storage frontRearSimultaneousVideoEnabled:enabled];
  }

  if (behavior == 1)
  {
    return [(CAMCaptureCapabilities *)self isHEVCEncodingSupported:configuration];
  }

  v7 = (configuration > 0xE) | (0x1CFFu >> configuration);
  if (behavior)
  {
    LOBYTE(v7) = 0;
  }

  return v7 & 1;
}

- (BOOL)isSupportedVideoConfiguration:(int64_t)configuration forMode:(int64_t)mode device:(int64_t)device trueVideoEnabled:(BOOL)enabled frontRearSimultaneousVideoEnabled:(BOOL)videoEnabled
{
  if (videoEnabled && ![(CAMCaptureCapabilities *)self isFrontRearSimultaneousVideoSupportedForVideoConfiguration:configuration])
  {
    return 0;
  }

  if (configuration > 0xE)
  {
    if ((configuration - 10000) >= 6)
    {
      return 0;
    }
  }

  else if (((1 << configuration) & 0x1FEF) == 0 && enabled)
  {
    return 0;
  }

  return [(CAMCaptureCapabilities *)self isSupportedVideoConfiguration:configuration forMode:mode device:device];
}

- (BOOL)isSlomoSupportedForDevice:(int64_t)device
{
  if (![(CAMCaptureCapabilities *)self isCameraSupportedForDevice:?]|| device > 0xA)
  {
    return 0;
  }

  if (((1 << device) & 0x2D) != 0)
  {

    return [(CAMCaptureCapabilities *)self isBackSlomoSupported];
  }

  if (((1 << device) & 0x502) == 0)
  {
    return 0;
  }

  return [(CAMCaptureCapabilities *)self isFrontSlomoSupported];
}

- (BOOL)is720p240SupportedForDevice:(int64_t)device
{
  if (![(CAMCaptureCapabilities *)self isSlomoSupportedForDevice:?]|| device > 0xA)
  {
    return 0;
  }

  if (((1 << device) & 0x2D) != 0)
  {

    return [(CAMCaptureCapabilities *)self isBack720p240Supported];
  }

  if (((1 << device) & 0x502) == 0)
  {
    return 0;
  }

  return [(CAMCaptureCapabilities *)self isFront720p240Supported];
}

- (BOOL)_is1080p120SlomoSupportedForDevice:(int64_t)device
{
  if (![(CAMCaptureCapabilities *)self isSlomoSupportedForDevice:?]|| device > 0xA)
  {
    return 0;
  }

  if (((1 << device) & 0x2D) != 0)
  {

    return [(CAMCaptureCapabilities *)self isBack1080p120Supported];
  }

  if (((1 << device) & 0x502) == 0)
  {
    return 0;
  }

  return [(CAMCaptureCapabilities *)self isFront1080p120Supported];
}

- (BOOL)is1080p240SupportedForDevice:(int64_t)device
{
  if (![(CAMCaptureCapabilities *)self isSlomoSupportedForDevice:?]|| device > 0xA)
  {
    return 0;
  }

  if (((1 << device) & 0x2D) != 0)
  {

    return [(CAMCaptureCapabilities *)self isBack1080p240Supported];
  }

  if (((1 << device) & 0x502) == 0)
  {
    return 0;
  }

  return [(CAMCaptureCapabilities *)self isFront1080p240Supported];
}

- (BOOL)isPanoramaSupportedForDevice:(int64_t)device
{
  if (![(CAMCaptureCapabilities *)self isCameraSupportedForDevice:?]|| device > 8)
  {
    return 0;
  }

  if (((1 << device) & 0x2D) != 0)
  {

    return [(CAMCaptureCapabilities *)self isBackPanoramaSupported];
  }

  if (((1 << device) & 0x102) == 0)
  {
    return 0;
  }

  return [(CAMCaptureCapabilities *)self isFrontPanoramaSupported];
}

- (BOOL)isTimelapseSupportedForDevice:(int64_t)device
{
  if (![(CAMCaptureCapabilities *)self isCameraSupportedForDevice:?]|| device > 8)
  {
    return 0;
  }

  if (((1 << device) & 0x2D) != 0)
  {

    return [(CAMCaptureCapabilities *)self isBackTimelapseSupported];
  }

  if (((1 << device) & 0x102) == 0)
  {
    return 0;
  }

  return [(CAMCaptureCapabilities *)self isFrontTimelapseSupported];
}

- (BOOL)isPortraitModeSupported
{
  if ([(CAMCaptureCapabilities *)self isBackPortraitModeSupported])
  {
    return 1;
  }

  return [(CAMCaptureCapabilities *)self isFrontPortraitModeSupported];
}

- (BOOL)isPortraitModeSupportedForDevicePosition:(int64_t)position
{
  if (position == 1)
  {
    return [(CAMCaptureCapabilities *)self isFrontPortraitModeSupported];
  }

  if (position)
  {
    return 0;
  }

  return [(CAMCaptureCapabilities *)self isBackPortraitModeSupported];
}

- (BOOL)isPortraitModeSupportedForDevice:(int64_t)device
{
  isBackDualSupported = [(CAMCaptureCapabilities *)self isCameraSupportedForDevice:?];
  if (!isBackDualSupported)
  {
    return isBackDualSupported;
  }

  v6 = (device - 1) > 0xA ? 0 : qword_1A3A6A2E8[device - 1];
  isBackDualSupported = [(CAMCaptureCapabilities *)self isPortraitModeSupportedForDevicePosition:v6];
  if (!isBackDualSupported)
  {
    return isBackDualSupported;
  }

  LOBYTE(isBackDualSupported) = 0;
  if (device <= 4)
  {
    if (device < 2)
    {
      LOBYTE(isBackDualSupported) = 1;
      return isBackDualSupported;
    }

    if ((device - 2) >= 2)
    {
      if (device != 4)
      {
        return isBackDualSupported;
      }

      isBackDualSupported = [(CAMCaptureCapabilities *)self isBackDualSupported];
      if (!isBackDualSupported)
      {
        return isBackDualSupported;
      }

      goto LABEL_29;
    }

    goto LABEL_15;
  }

  if (device <= 7)
  {
    if (device != 5)
    {
      if (device != 6)
      {

        LOBYTE(isBackDualSupported) = [(CAMCaptureCapabilities *)self isBackTripleCameraSupported];
        return isBackDualSupported;
      }

      isBackDualSupported = [(CAMCaptureCapabilities *)self isBackWideDualSupported];
      if (!isBackDualSupported)
      {
        return isBackDualSupported;
      }

LABEL_29:
      LOBYTE(isBackDualSupported) = ![(CAMCaptureCapabilities *)self _disablePortraitBravoDevices];
      return isBackDualSupported;
    }

LABEL_15:

    LOBYTE(isBackDualSupported) = [(CAMCaptureCapabilities *)self isBackSingleCameraPortraitModeSupported];
    return isBackDualSupported;
  }

  if (device == 8)
  {
    goto LABEL_21;
  }

  if (device != 9)
  {
    if (device != 10)
    {
      return isBackDualSupported;
    }

LABEL_21:

    LOBYTE(isBackDualSupported) = [(CAMCaptureCapabilities *)self isFrontSingleCameraPortraitModeSupported];
    return isBackDualSupported;
  }

  LOBYTE(isBackDualSupported) = [(CAMCaptureCapabilities *)self isFrontPearlSupported];
  return isBackDualSupported;
}

- (BOOL)isPortraitZoomSupportedForDevicePosition:(int64_t)position
{
  if (position)
  {
    return 0;
  }

  v5 = [(CAMCaptureCapabilities *)self isPortraitModeSupportedForDevice:4];
  v6 = [(CAMCaptureCapabilities *)self isPortraitModeSupportedForDevice:6];
  if (v5 && v6)
  {
    return 1;
  }

  return [(CAMCaptureCapabilities *)self continuousZoomSupportedForPortraitMode];
}

- (BOOL)portraitModeRequiresSubjectForDevicePosition:(int64_t)position
{
  if (position == 1)
  {
    return [(CAMCaptureCapabilities *)self _frontPortraitModeRequiresSubject];
  }

  if (position)
  {
    return 0;
  }

  return [(CAMCaptureCapabilities *)self _backPortraitModeRequiresSubject];
}

- (BOOL)portraitZoomSupported
{
  if ([(CAMCaptureCapabilities *)self isPortraitZoomSupportedForDevicePosition:1])
  {
    return 1;
  }

  return [(CAMCaptureCapabilities *)self isPortraitZoomSupportedForDevicePosition:0];
}

- (BOOL)usePortraitFrontFacingZoomedCaptureDeviceFormat
{
  if ([(CAMCaptureCapabilities *)self _disablePortraitFrontFacingZoomedCaptureDeviceFormat])
  {
    return 0;
  }

  [(CAMCaptureCapabilities *)self maximumZoomFactorForMode:0 device:1 videoConfiguration:0 videoStabilizationStrength:0];
  return v4 > 1.0;
}

- (BOOL)isAspectRatioCropSupportedForMode:(int64_t)mode devicePosition:(int64_t)position
{
  isAspectRatioCropSupported = [(CAMCaptureCapabilities *)self isAspectRatioCropSupported];
  if (isAspectRatioCropSupported)
  {
    if (mode == 6)
    {
      if (position)
      {

        LOBYTE(isAspectRatioCropSupported) = [(CAMCaptureCapabilities *)self _frontPortraitAspectRatioSupported];
      }

      else
      {

        LOBYTE(isAspectRatioCropSupported) = [(CAMCaptureCapabilities *)self _rearPortraitAspectRatioSupported];
      }
    }

    else
    {
      LOBYTE(isAspectRatioCropSupported) = mode == 0;
    }
  }

  return isAspectRatioCropSupported;
}

- (NSArray)supportedAspectRatioCropValues
{
  if (![(CAMCaptureCapabilities *)self isAspectRatioCropSupported])
  {
    return &unk_1F16C98F0;
  }

  if ([(CAMCaptureCapabilities *)self _isAspectRatioCropThreeTwoSupported])
  {
    return &unk_1F16C9908;
  }

  return &unk_1F16C9920;
}

- (BOOL)isSpatialOverCaptureSupported
{
  if ([(CAMCaptureCapabilities *)self isBackSpatialOverCaptureSupported])
  {
    return 1;
  }

  return [(CAMCaptureCapabilities *)self isFrontSpatialOverCaptureSupported];
}

- (unint64_t)spatialOverCaptureSupportForMode:(int64_t)mode device:(int64_t)device
{
  if (![(CAMCaptureCapabilities *)self _isSpatialOverCaptureSupportedForDevice:device])
  {
    return 0;
  }

  if (mode)
  {
    if (mode == 6)
    {
      return [(CAMCaptureCapabilities *)self _allowSpatialOverCaptureInPortraitMode];
    }

    return 0;
  }

  return 3;
}

- (BOOL)_isSpatialOverCaptureSupportedForDevice:(int64_t)device
{
  if (![(CAMCaptureCapabilities *)self isSpatialOverCaptureSupported]|| device > 0xA)
  {
    return 0;
  }

  if (((1 << device) & 0xD1) != 0)
  {

    return [(CAMCaptureCapabilities *)self isBackSpatialOverCaptureSupported];
  }

  if (((1 << device) & 0x402) == 0)
  {
    return 0;
  }

  return [(CAMCaptureCapabilities *)self isFrontSpatialOverCaptureSupported];
}

- (BOOL)isNightModeSupported
{
  if ([(CAMCaptureCapabilities *)self isBackNightModeSupported])
  {
    return 1;
  }

  return [(CAMCaptureCapabilities *)self isFrontNightModeSupported];
}

- (BOOL)isNightModeSupportedForMode:(int64_t)mode device:(int64_t)device
{
  if (mode != 6)
  {
    if (!mode && device <= 0xA)
    {
      if (((1 << device) & 0xD5) != 0)
      {

        return [(CAMCaptureCapabilities *)self isBackNightModeSupported];
      }

      else if (((1 << device) & 0x702) != 0)
      {

        return [(CAMCaptureCapabilities *)self isFrontNightModeSupported];
      }

      else
      {

        return [(CAMCaptureCapabilities *)self _backSuperWideTeleNightModeSupported];
      }
    }

    return 0;
  }

  if (device <= 5)
  {
    if (device && device != 4)
    {
      return 0;
    }

LABEL_16:
    if (![(CAMCaptureCapabilities *)self isBackNightModeSupported]|| ![(CAMCaptureCapabilities *)self continuousZoomSupportedForPortraitMode])
    {
      return 0;
    }

    goto LABEL_18;
  }

  if (device == 7)
  {
    goto LABEL_16;
  }

  if (device != 6)
  {
    return 0;
  }

LABEL_18:

  return [(CAMCaptureCapabilities *)self _wideDualPortraitNightModeSupported];
}

- (BOOL)isNightModeSupportedForMode:(int64_t)mode device:(int64_t)device zoomFactor:(double)factor
{
  v8 = [(CAMCaptureCapabilities *)self resolvedDeviceForDesiredDevice:device mode:mode videoConfiguration:0 videoStabilizationStrength:0 frontRearSimultaneousVideoEnabled:0];
  v9 = [(CAMCaptureCapabilities *)self isNightModeSupportedForMode:mode device:v8];
  v10 = 0;
  if ((v8 - 1) <= 0xA)
  {
    v10 = qword_1A3A6A2E8[v8 - 1];
  }

  if ([(CAMCaptureCapabilities *)self isDualDeviceDisparitySupportedForMode:mode devicePosition:v10])
  {
    if (v8 == 6)
    {
      [(CAMCaptureCapabilities *)self _backWideDualCameraSwitchOverZoomFactor];
    }

    else if (v8 == 4)
    {
      [(CAMCaptureCapabilities *)self _backDualCameraSwitchOverZoomFactor];
    }

    else
    {
      v11 = 1.79769313e308;
    }

    return v11 >= factor && v9;
  }

  return v9;
}

- (BOOL)isNightModeWithDepthSupportedForMode:(int64_t)mode device:(int64_t)device
{
  v7 = [CAMCaptureCapabilities isNightModeSupportedForMode:"isNightModeSupportedForMode:device:" device:?];
  if (v7)
  {
    if (mode)
    {
      LOBYTE(v7) = mode == 6;
    }

    else if (device - 1) < 0xB && ((0x781u >> (device - 1)))
    {
      LOBYTE(v7) = 0;
    }

    else
    {

      LOBYTE(v7) = [(CAMCaptureCapabilities *)self _backPhotoModeNightModeDepthSupported];
    }
  }

  return v7;
}

- (unint64_t)nightModePreviewOverlayStyleForDevicePosition:(int64_t)position sensitiveToChangingDisplayFeedback:(BOOL)feedback sensitiveToInitialFeedback:(BOOL)initialFeedback duration:(double)duration
{
  initialFeedbackCopy = initialFeedback;
  feedbackCopy = feedback;
  if (position == 1)
  {
    result = [(CAMCaptureCapabilities *)self frontNightModePreviewOverlayStyle];
  }

  else if (position)
  {
    result = 0;
  }

  else
  {
    result = [(CAMCaptureCapabilities *)self backNightModePreviewOverlayStyle];
  }

  v11 = duration < 2.0 && position == 1;
  v12 = 3;
  if (!v11)
  {
    v12 = 1;
  }

  if (initialFeedbackCopy)
  {
    v12 = 2;
  }

  if (feedbackCopy)
  {
    v12 = 4;
  }

  if (!result)
  {
    return v12;
  }

  return result;
}

- (BOOL)isSingleCameraPortraitModeSupportedForDevicePosition:(int64_t)position
{
  if (position == 1)
  {
    return [(CAMCaptureCapabilities *)self isFrontSingleCameraPortraitModeSupported];
  }

  if (position)
  {
    return 0;
  }

  return [(CAMCaptureCapabilities *)self isBackSingleCameraPortraitModeSupported];
}

- (BOOL)isTorchPatternSupportedForDevicePosition:(int64_t)position
{
  if (![(CAMCaptureCapabilities *)self isCameraSupportedForDevicePosition:?])
  {
    return 0;
  }

  if (position != 1)
  {
    if (!position)
    {

      return [(CAMCaptureCapabilities *)self isBackTorchPatternSupported];
    }

    return 0;
  }

  return [(CAMCaptureCapabilities *)self isFrontTorchPatternSupported];
}

- (BOOL)isFlashOrTorchSupportedForMode:(int64_t)mode devicePosition:(int64_t)position
{
  if ([CAMCaptureCapabilities isFlashSupportedForMode:"isFlashSupportedForMode:devicePosition:" devicePosition:?])
  {
    return 1;
  }

  return [(CAMCaptureCapabilities *)self isTorchSupportedForMode:mode devicePosition:position];
}

- (BOOL)isAutoLowLightVideoSupportedForMode:(int64_t)mode videoConfiguration:(int64_t)configuration videoEncodingBehavior:(int64_t)behavior
{
  isAutoLowLightVideoSupported = [(CAMCaptureCapabilities *)self isAutoLowLightVideoSupported];
  if (isAutoLowLightVideoSupported)
  {
    isAutoLowLightVideoSupported = [(CAMCaptureCapabilities *)self _isVariableFramerateVideoSupportedForVideoEncodingBehavior:behavior];
    if (isAutoLowLightVideoSupported)
    {
      if ((configuration - 10000) < 6 || (v10 = 0, configuration <= 7) && ((1 << configuration) & 0xE1) != 0)
      {
        v10 = 1;
      }

      if (mode == 1)
      {
        LOBYTE(isAutoLowLightVideoSupported) = v10;
      }

      else
      {
        LOBYTE(isAutoLowLightVideoSupported) = 0;
      }
    }
  }

  return isAutoLowLightVideoSupported;
}

- (BOOL)isVariableFramerateVideoSupportedForMode:(int64_t)mode videoConfiguration:(int64_t)configuration videoEncodingBehavior:(int64_t)behavior outputToExternalStorage:(BOOL)storage prefersHDR10BitVideo:(BOOL)video frontRearSimultaneousVideoEnabled:(BOOL)enabled
{
  videoCopy = video;
  storageCopy = storage;
  isVariableFramerateVideoSupported = [(CAMCaptureCapabilities *)self isVariableFramerateVideoSupported];
  if (isVariableFramerateVideoSupported)
  {
    isVariableFramerateVideoSupported = [(CAMCaptureCapabilities *)self _isVariableFramerateVideoSupportedForVideoEncodingBehavior:behavior];
    if (isVariableFramerateVideoSupported)
    {
      if (configuration)
      {
        LOBYTE(isVariableFramerateVideoSupported) = [(CAMCaptureCapabilities *)self _isVariableFramerateVideoSupportedForResolvedVideoConfiguration:configuration];
      }

      else
      {
        LOBYTE(v20) = enabled;
        v16 = [(CAMCaptureCapabilities *)self resolvedVideoConfigurationForMode:mode device:1 videoEncodingBehavior:behavior videoConfiguration:0 outputToExternalStorage:storageCopy prefersHDR10BitVideo:videoCopy frontRearSimultaneousVideoEnabled:v20];
        LOBYTE(v21) = enabled;
        v17 = [(CAMCaptureCapabilities *)self resolvedVideoConfigurationForMode:mode device:0 videoEncodingBehavior:behavior videoConfiguration:0 outputToExternalStorage:storageCopy prefersHDR10BitVideo:videoCopy frontRearSimultaneousVideoEnabled:v21];
        v18 = [(CAMCaptureCapabilities *)self _isVariableFramerateVideoSupportedForResolvedVideoConfiguration:v16];
        isVariableFramerateVideoSupported = v18 | [(CAMCaptureCapabilities *)self _isVariableFramerateVideoSupportedForResolvedVideoConfiguration:v17];
      }

      LOBYTE(isVariableFramerateVideoSupported) = (mode == 1) & isVariableFramerateVideoSupported;
    }
  }

  return isVariableFramerateVideoSupported;
}

- (int64_t)resolvedVideoConfigurationForMode:(int64_t)mode device:(int64_t)device videoEncodingBehavior:(int64_t)behavior videoConfiguration:(int64_t)configuration outputToExternalStorage:(BOOL)storage prefersHDR10BitVideo:(BOOL)video frontRearSimultaneousVideoEnabled:(BOOL)enabled
{
  storageCopy = storage;
  configurationCopy = configuration;
  v30 = *MEMORY[0x1E69E9840];
  if (!configuration)
  {
    if (mode > 6)
    {
      v15 = &unk_1F16C9938;
      if (mode != 8)
      {
        v15 = 0;
      }

      if (mode == 7)
      {
        v14 = &unk_1F16C9998;
      }

      else
      {
        v14 = v15;
      }
    }

    else if (mode == 1)
    {
      v14 = &unk_1F16C9950;
    }

    else if (mode == 2)
    {
      if ([(CAMCaptureCapabilities *)self isBack4k120VideoSupported]&& video)
      {
        v14 = &unk_1F16C9968;
      }

      else
      {
        v14 = &unk_1F16C9980;
      }
    }

    else
    {
      v14 = 0;
    }

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v16 = [v14 countByEnumeratingWithState:&v25 objects:v29 count:{16, behavior}];
    if (v16)
    {
      v17 = v16;
      v18 = *v26;
LABEL_18:
      v19 = 0;
      while (1)
      {
        if (*v26 != v18)
        {
          objc_enumerationMutation(v14);
        }

        configurationCopy = [*(*(&v25 + 1) + 8 * v19) integerValue];
        v20 = [(CAMCaptureCapabilities *)self isSupportedVideoConfiguration:configurationCopy forMode:mode device:device];
        v21 = [(CAMCaptureCapabilities *)self isSupportedVideoConfiguration:configurationCopy forMode:mode videoEncodingBehavior:v23 outputToExternalStorage:storageCopy frontRearSimultaneousVideoEnabled:enabled];
        if (v20 && v21)
        {
          break;
        }

        if (v17 == ++v19)
        {
          v17 = [v14 countByEnumeratingWithState:&v25 objects:v29 count:16];
          configurationCopy = 0;
          if (v17)
          {
            goto LABEL_18;
          }

          return configurationCopy;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return configurationCopy;
}

- (int64_t)validatedVideoConfigurationForVideoConfiguration:(int64_t)configuration withBlock:(id)block
{
  v20 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  if ((blockCopy[2](blockCopy, configuration) & 1) == 0)
  {
    if ((configuration - 1) > 0xD)
    {
      v6 = 0;
    }

    else
    {
      v6 = qword_1E76FC150[configuration - 1];
    }

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          intValue = [v11 intValue];
          if (blockCopy[2](blockCopy, [v11 intValue]))
          {
            configuration = intValue;
            goto LABEL_17;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v13 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [CAMCaptureCapabilities validatedVideoConfigurationForVideoConfiguration:withBlock:];
    }
  }

LABEL_17:

  return configuration;
}

- (BOOL)isAutoFPSVideoSupportedForMode:(int64_t)mode videoConfiguration:(int64_t)configuration videoEncodingBehavior:(int64_t)behavior outputToExternalStorage:(BOOL)storage prefersHDR10BitVideo:(BOOL)video frontRearSimultaneousVideoEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  videoCopy = video;
  storageCopy = storage;
  v15 = [CAMCaptureCapabilities isAutoLowLightVideoSupportedForMode:"isAutoLowLightVideoSupportedForMode:videoConfiguration:videoEncodingBehavior:" videoConfiguration:? videoEncodingBehavior:?];
  return (v15 | [(CAMCaptureCapabilities *)self isVariableFramerateVideoSupportedForMode:mode videoConfiguration:configuration videoEncodingBehavior:behavior outputToExternalStorage:storageCopy prefersHDR10BitVideo:videoCopy frontRearSimultaneousVideoEnabled:enabledCopy]) & 1;
}

- (BOOL)isHDR10BitVideoSupportedForVideoConfiguration:(int64_t)configuration videoEncodingBehavior:(int64_t)behavior
{
  isHDR10BitVideoSupported = [(CAMCaptureCapabilities *)self isHDR10BitVideoSupported];
  if (isHDR10BitVideoSupported)
  {
    _HDR10BitVideoSupports120FPS = 0;
    v9 = behavior - 1;
    if (configuration > 9)
    {
      if ((configuration - 10000) >= 6 && (configuration - 10) >= 3)
      {
        if ((configuration - 13) >= 2)
        {
          goto LABEL_17;
        }

        goto LABEL_15;
      }

LABEL_16:
      _HDR10BitVideoSupports120FPS = 1;
      goto LABEL_17;
    }

    if (configuration <= 4)
    {
      if (!configuration)
      {
        goto LABEL_16;
      }

      if (configuration != 1)
      {
        if (configuration != 4)
        {
LABEL_17:
          LOBYTE(isHDR10BitVideoSupported) = v9 < 2 && _HDR10BitVideoSupports120FPS;
          return isHDR10BitVideoSupported;
        }

LABEL_15:
        _HDR10BitVideoSupports120FPS = [(CAMCaptureCapabilities *)self _HDR10BitVideoSupports120FPS];
        goto LABEL_17;
      }
    }

    else
    {
      if ((configuration - 5) < 3)
      {
        goto LABEL_16;
      }

      if (configuration == 8)
      {
        _HDR10BitVideoSupports120FPS = [(CAMCaptureCapabilities *)self _HDR10BitVideoSupports240FPS];
        goto LABEL_17;
      }

      if (configuration != 9)
      {
        goto LABEL_17;
      }
    }

    _HDR10BitVideoSupports120FPS = [(CAMCaptureCapabilities *)self isHDR10BitVideoSupports60FPS];
    goto LABEL_17;
  }

  return isHDR10BitVideoSupported;
}

- (BOOL)isProResVideoSupportedForMode:(int64_t)mode frontRearSimultaneousVideoEnabled:(BOOL)enabled
{
  isProResVideoSupported = [(CAMCaptureCapabilities *)self isProResVideoSupported];
  if (isProResVideoSupported)
  {
    if (mode == 7)
    {

      LOBYTE(isProResVideoSupported) = [(CAMCaptureCapabilities *)self _isProResCinematicVideoSupported];
    }

    else
    {
      LOBYTE(isProResVideoSupported) = mode == 1 && !enabled;
    }
  }

  return isProResVideoSupported;
}

- (BOOL)isProResVideoSupportedForMode:(int64_t)mode videoConfiguration:(int64_t)configuration outputToExternalStorage:(BOOL)storage frontRearSimultaneousVideoEnabled:(BOOL)enabled
{
  storageCopy = storage;
  v9 = [(CAMCaptureCapabilities *)self isProResVideoSupportedForMode:mode frontRearSimultaneousVideoEnabled:enabled];
  if (v9)
  {
    if (configuration > 0xE)
    {
      LOBYTE(v9) = 0;
    }

    else
    {
      if (((1 << configuration) & 0x7620) != 0)
      {
        if (storageCopy)
        {
          _proResVideoExternalMaxFPS4k = [(CAMCaptureCapabilities *)self _proResVideoExternalMaxFPS4k];
        }

        else
        {
          _proResVideoExternalMaxFPS4k = [(CAMCaptureCapabilities *)self _proResVideoMaxFPS4k];
        }

        goto LABEL_11;
      }

      if (((1 << configuration) & 0x992) != 0)
      {
        if (storageCopy)
        {
          _proResVideoExternalMaxFPS4k = [(CAMCaptureCapabilities *)self _proResVideoExternalMaxFPS1080p];
        }

        else
        {
          _proResVideoExternalMaxFPS4k = [(CAMCaptureCapabilities *)self _proResVideoMaxFPS1080p];
        }

LABEL_11:
        LOBYTE(v9) = _proResVideoExternalMaxFPS4k >= [(CAMCaptureCapabilities *)self _knownFramerateForVideoConfiguration:configuration];
        return v9;
      }

      LOBYTE(v9) = configuration == 0;
    }
  }

  return v9;
}

- (int64_t)_knownFramerateForVideoConfiguration:(int64_t)configuration
{
  if ((configuration - 1) > 0xD)
  {
    return 0;
  }

  else
  {
    return qword_1A3A6A1E0[configuration - 1];
  }
}

- (BOOL)isStereoAudioRecordingSupportedForMode:(int64_t)mode
{
  isStereoAudioRecordingSupported = [(CAMCaptureCapabilities *)self isStereoAudioRecordingSupported];
  v5 = 0x186u >> mode;
  if (mode > 8)
  {
    LOBYTE(v5) = 0;
  }

  if (!isStereoAudioRecordingSupported)
  {
    LOBYTE(v5) = 0;
  }

  return v5 & 1;
}

- (BOOL)isCinematicAudioSupportedForMode:(int64_t)mode
{
  isCinematicAudioSupported = [(CAMCaptureCapabilities *)self isCinematicAudioSupported];
  v5 = 0x186u >> mode;
  if (mode > 8)
  {
    LOBYTE(v5) = 0;
  }

  if (!isCinematicAudioSupported)
  {
    LOBYTE(v5) = 0;
  }

  return v5 & 1;
}

- (BOOL)isActionModeControlSupportedForMode:(int64_t)mode device:(int64_t)device videoConfiguration:(int64_t)configuration videoEncodingBehavior:(int64_t)behavior trueVideoEnabled:(BOOL)enabled prefersHDR10BitVideo:(BOOL)video frontRearSimultaneousVideoEnabled:(BOOL)videoEnabled
{
  BYTE2(v10) = videoEnabled;
  BYTE1(v10) = video;
  LOBYTE(v10) = enabled;
  return [CAMCaptureCapabilities isVideoStabilizationStrength:"isVideoStabilizationStrength:supportedForMode:device:videoConfiguration:videoEncodingBehavior:outputToExternalStorage:trueVideoEnabled:prefersHDR10BitVideo:frontRearSimultaneousVideoEnabled:" supportedForMode:3 device:mode videoConfiguration:device videoEncodingBehavior:configuration outputToExternalStorage:behavior trueVideoEnabled:0 prefersHDR10BitVideo:v10 frontRearSimultaneousVideoEnabled:?];
}

- (BOOL)isEnhancedStabilizationSupportedForMode:(int64_t)mode device:(int64_t)device videoConfiguration:(int64_t)configuration videoEncodingBehavior:(int64_t)behavior trueVideoEnabled:(BOOL)enabled prefersHDR10BitVideo:(BOOL)video frontRearSimultaneousVideoEnabled:(BOOL)videoEnabled
{
  BYTE2(v10) = videoEnabled;
  BYTE1(v10) = video;
  LOBYTE(v10) = enabled;
  return [CAMCaptureCapabilities isVideoStabilizationStrength:"isVideoStabilizationStrength:supportedForMode:device:videoConfiguration:videoEncodingBehavior:outputToExternalStorage:trueVideoEnabled:prefersHDR10BitVideo:frontRearSimultaneousVideoEnabled:" supportedForMode:1 device:mode videoConfiguration:device videoEncodingBehavior:configuration outputToExternalStorage:behavior trueVideoEnabled:0 prefersHDR10BitVideo:v10 frontRearSimultaneousVideoEnabled:?];
}

- (BOOL)isVideoStabilizationStrength:(int64_t)strength supportedForMode:(int64_t)mode devicePosition:(int64_t)position trueVideoEnabled:(BOOL)enabled frontRearSimultaneousVideoEnabled:(BOOL)videoEnabled
{
  isEnhancedStabilizationSupported = [(CAMCaptureCapabilities *)self isEnhancedStabilizationSupported];
  if (!isEnhancedStabilizationSupported)
  {
    return isEnhancedStabilizationSupported;
  }

  if (mode > 6)
  {
    v15 = strength == 1;
    if (mode != 8)
    {
      v15 = 0;
    }

    if (mode == 7)
    {
      isActionModeControlSupported = strength < 2;
    }

    else
    {
      isActionModeControlSupported = v15;
    }

    goto LABEL_16;
  }

  if (mode == 1)
  {
    if ((strength - 2) >= 2)
    {
      isActionModeControlSupported = strength <= 1;
      goto LABEL_16;
    }

    if (!enabled)
    {
      isActionModeControlSupported = [(CAMCaptureCapabilities *)self isActionModeControlSupported];
      goto LABEL_16;
    }

LABEL_15:
    isActionModeControlSupported = 0;
    goto LABEL_16;
  }

  if (mode != 2 || strength > 1)
  {
    goto LABEL_15;
  }

  isActionModeControlSupported = [(CAMCaptureCapabilities *)self back4kMaxFPS]> 119;
LABEL_16:
  v16 = strength < 2 && videoEnabled;
  if (position != 1)
  {
    v16 = 0;
  }

  if (position)
  {
    v17 = v16;
  }

  else
  {
    v17 = 1;
  }

  LOBYTE(isEnhancedStabilizationSupported) = isActionModeControlSupported & v17;
  return isEnhancedStabilizationSupported;
}

- (BOOL)isVideoStabilizationStrength:(int64_t)strength supportedForMode:(int64_t)mode device:(int64_t)device videoConfiguration:(int64_t)configuration videoEncodingBehavior:(int64_t)behavior outputToExternalStorage:(BOOL)storage trueVideoEnabled:(BOOL)enabled prefersHDR10BitVideo:(BOOL)self0 frontRearSimultaneousVideoEnabled:(BOOL)self1
{
  LOBYTE(v21) = videoEnabled;
  v15 = [(CAMCaptureCapabilities *)self resolvedVideoConfigurationForMode:mode device:device videoEncodingBehavior:behavior videoConfiguration:configuration outputToExternalStorage:storage prefersHDR10BitVideo:video frontRearSimultaneousVideoEnabled:v21];
  if ((device - 1) > 0xA)
  {
    v16 = 0;
  }

  else
  {
    v16 = qword_1A3A6A2E8[device - 1];
  }

  v17 = [(CAMCaptureCapabilities *)self isVideoStabilizationStrength:strength supportedForMode:mode devicePosition:v16 trueVideoEnabled:enabled frontRearSimultaneousVideoEnabled:videoEnabled];
  v18 = ((1 << v15) & 0x6014) != 0 && strength < 2;
  v19 = ((1 << v15) & 0x1EE3) != 0 || v18;
  if (v15 > 0xE)
  {
    v19 = 0;
  }

  return v17 & v19;
}

- (BOOL)_needsForcedSingleCameraEmulationForVideoStabilizationStrength:(int64_t)strength videoConfiguration:(int64_t)configuration mode:(int64_t)mode
{
  LOBYTE(v6) = 0;
  if (configuration > 12)
  {
    if ((configuration - 13) >= 2)
    {
      return ((strength & 0xFFFFFFFFFFFFFFFELL) == 2) & v6;
    }

LABEL_7:
    LOBYTE(v6) = 1;
    return ((strength & 0xFFFFFFFFFFFFFFFELL) == 2) & v6;
  }

  switch(configuration)
  {
    case 1:
      goto LABEL_7;
    case 4:
      LOBYTE(v6) = mode == 1;
      break;
    case 9:
      v6 = ![(CAMCaptureCapabilities *)self _isActionModeAggregateDevice4k60Supported:strength];
      break;
  }

  return ((strength & 0xFFFFFFFFFFFFFFFELL) == 2) & v6;
}

- (int64_t)bytesPerMinuteForGraphConfiguration:(id)configuration outputToExternalStorage:(BOOL)storage
{
  storageCopy = storage;
  v43 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  mode = [configurationCopy mode];
  device = [configurationCopy device];
  videoEncodingBehavior = [configurationCopy videoEncodingBehavior];
  videoConfiguration = [configurationCopy videoConfiguration];
  prefersHDR10BitVideo = [configurationCopy prefersHDR10BitVideo];
  LOBYTE(v40) = [configurationCopy frontRearSimultaneousVideoEnabled];
  v12 = [(CAMCaptureCapabilities *)self resolvedVideoConfigurationForMode:mode device:device videoEncodingBehavior:videoEncodingBehavior videoConfiguration:videoConfiguration outputToExternalStorage:storageCopy prefersHDR10BitVideo:prefersHDR10BitVideo frontRearSimultaneousVideoEnabled:v40];
  videoEncodingBehavior2 = [configurationCopy videoEncodingBehavior];
  if (videoEncodingBehavior2 == 2)
  {
    v15 = 0;
    v14 = 1;
  }

  else if (videoEncodingBehavior2 == 1)
  {
    v14 = 0;
    v15 = 1;
  }

  else
  {
    v15 = 0;
    v14 = 0;
  }

  colorSpace = [configurationCopy colorSpace];
  switch(v12)
  {
    case 1:
      v17 = 3300;
      v18 = 175;
      if (v15)
      {
        v18 = 90;
      }

      v19 = colorSpace == 2;
      v20 = 100;
      goto LABEL_53;
    case 2:
      v23 = 0;
      v22 = 230;
      break;
    case 3:
      v23 = 0;
      v33 = v15 == 0;
      v34 = 300;
      goto LABEL_32;
    case 4:
      v23 = 0;
      v33 = v15 == 0;
      v34 = 350;
LABEL_32:
      if (v33)
      {
        v22 = v34;
      }

      else
      {
        v22 = 170;
      }

      break;
    case 5:
      v24 = !storageCopy;
      v25 = 5700;
      v26 = 6600;
      goto LABEL_17;
    case 6:
      v23 = 0;
      v35 = 60;
      if (v15)
      {
        v35 = 40;
      }

      if (colorSpace == 2)
      {
        v22 = 45;
      }

      else
      {
        v22 = v35;
      }

      break;
    case 7:
      v17 = 1650;
      goto LABEL_50;
    case 8:
      v23 = 0;
      v22 = 480;
      break;
    case 9:
      v25 = 11400;
      if (storageCopy)
      {
        v25 = 13200;
      }

      v28 = colorSpace == 2;
      v27 = 400;
      v29 = 440;
      goto LABEL_61;
    case 10:
      v25 = 5280;
      if (storageCopy)
      {
        v25 = 5300;
      }

      v27 = 270;
      if (v15)
      {
        v27 = 135;
      }

      v28 = colorSpace == 2;
      v29 = 150;
      goto LABEL_61;
    case 11:
      v17 = 1380;
LABEL_50:
      v18 = 130;
      if (v15)
      {
        v18 = 60;
      }

      v19 = colorSpace == 2;
      v20 = 65;
LABEL_53:
      if (v19)
      {
        v18 = v20;
      }

      if (v14)
      {
        v22 = v17;
      }

      else
      {
        v22 = v18;
      }

      goto LABEL_101;
    case 12:
      v24 = !storageCopy;
      v25 = 5470;
      v26 = 5530;
LABEL_17:
      if (!v24)
      {
        v25 = v26;
      }

      v27 = 350;
      if (v15)
      {
        v27 = 170;
      }

      v28 = colorSpace == 2;
      v29 = 190;
LABEL_61:
      if (v28)
      {
        v27 = v29;
      }

      if (v14)
      {
        v22 = v25;
      }

      else
      {
        v22 = v27;
      }

      goto LABEL_66;
    case 13:
      v30 = 670;
      if (colorSpace == 2)
      {
        v30 = 730;
      }

      v31 = v14 == 0;
      v32 = 26500;
      goto LABEL_45;
    case 14:
      v30 = 570;
      if (colorSpace == 2)
      {
        v30 = 630;
      }

      v31 = v14 == 0;
      v32 = 22100;
LABEL_45:
      if (v31)
      {
        v22 = v30;
      }

      else
      {
        v22 = v32;
      }

LABEL_66:
      v23 = v14;
      break;
    default:
      if ((v12 - 10000) < 6)
      {
        v21 = os_log_create("com.apple.camera", "StorageController");
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          [CAMCaptureCapabilities bytesPerMinuteForGraphConfiguration:outputToExternalStorage:];
        }
      }

      v22 = 0;
      v23 = 0;
      break;
  }

  if ((v23 & 1) == 0 && ((v14 ^ 1) & 1) == 0)
  {
    v36 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v37 = 0;
      if (v12 > 9999)
      {
        if (v12 > 10002)
        {
          switch(v12)
          {
            case 10003:
              v37 = @"ImagePickerVGA";
              break;
            case 10004:
              v37 = @"ImagePickeriFrame720p";
              break;
            case 10005:
              v37 = @"ImagePickeriFrame540p";
              break;
          }
        }

        else if (v12 == 10000)
        {
          v37 = @"ImagePickerHigh";
        }

        else if (v12 == 10001)
        {
          v37 = @"ImagePickerMedium";
        }

        else
        {
          v37 = @"ImagePickerLow";
        }
      }

      else
      {
        switch(v12)
        {
          case 0:
            v37 = @"Auto";
            break;
          case 1:
            v37 = @"1080p60";
            break;
          case 2:
            v37 = @"720p120";
            break;
          case 3:
            v37 = @"720p240";
            break;
          case 4:
            v37 = @"1080p120";
            break;
          case 5:
            v37 = @"4k30";
            break;
          case 6:
            v37 = @"720p30";
            break;
          case 7:
            v37 = @"1080p30";
            break;
          case 8:
            v37 = @"1080p240";
            break;
          case 9:
            v37 = @"4k60";
            break;
          case 10:
            v37 = @"4k24";
            break;
          case 11:
            v37 = @"1080p25";
            break;
          case 12:
            v37 = @"4k25";
            break;
          case 13:
            v37 = @"4k120";
            break;
          case 14:
            v37 = @"4k100";
            break;
          default:
            break;
        }
      }

      *buf = 138543362;
      v42 = v37;
      _os_log_impl(&dword_1A3640000, v36, OS_LOG_TYPE_DEFAULT, "CAMCaptureCapabilities: _preferredMinimumBytesForVideoConfiguration did not account for ProRes video for %{public}@", buf, 0xCu);
    }
  }

LABEL_101:
  if ([configurationCopy mode] == 7)
  {
    v38 = (v22 << 20) + 3145728;
  }

  else
  {
    v38 = v22 << 20;
  }

  return v38;
}

- (BOOL)isCinematicModeSupportedForDevicePosition:(int64_t)position
{
  if (position == 1)
  {
    return [(CAMCaptureCapabilities *)self isFrontCinematicModeSupported];
  }

  if (position)
  {
    return 0;
  }

  return [(CAMCaptureCapabilities *)self isBackCinematicModeSupported];
}

- (BOOL)isCinematicModeSupportedForDevice:(int64_t)device
{
  _backDualCameraSupportedForCinematic = [(CAMCaptureCapabilities *)self isCameraSupportedForDevice:?];
  if (_backDualCameraSupportedForCinematic)
  {
    v6 = (device - 1) > 0xA ? 0 : qword_1A3A6A2E8[device - 1];
    _backDualCameraSupportedForCinematic = [(CAMCaptureCapabilities *)self isCinematicModeSupportedForDevicePosition:v6];
    if (_backDualCameraSupportedForCinematic)
    {
      LOBYTE(_backDualCameraSupportedForCinematic) = 0;
      if (device > 5)
      {
        switch(device)
        {
          case 6:

            LOBYTE(_backDualCameraSupportedForCinematic) = [(CAMCaptureCapabilities *)self isBackWideDualSupported];
            break;
          case 7:

            LOBYTE(_backDualCameraSupportedForCinematic) = [(CAMCaptureCapabilities *)self isBackTripleCameraSupported];
            break;
          case 9:

            LOBYTE(_backDualCameraSupportedForCinematic) = [(CAMCaptureCapabilities *)self isFrontPearlSupported];
            break;
        }
      }

      else if (device >= 2)
      {
        if (device == 4)
        {
          _backDualCameraSupportedForCinematic = [(CAMCaptureCapabilities *)self _backDualCameraSupportedForCinematic];
          if (_backDualCameraSupportedForCinematic)
          {

            LOBYTE(_backDualCameraSupportedForCinematic) = [(CAMCaptureCapabilities *)self isBackDualSupported];
          }
        }
      }

      else
      {
        LOBYTE(_backDualCameraSupportedForCinematic) = 1;
      }
    }
  }

  return _backDualCameraSupportedForCinematic;
}

- (BOOL)_isSpatialVideoModeSupportedForDevice:(int64_t)device
{
  isSpatialModeSupported = [(CAMCaptureCapabilities *)self isCameraSupportedForDevice:?];
  if (isSpatialModeSupported)
  {
    v6 = (device - 1) > 0xA ? 0 : qword_1A3A6A2E8[device - 1];
    isSpatialModeSupported = [(CAMCaptureCapabilities *)self _isSpatialVideoSupportedForDevicePosition:v6];
    if (isSpatialModeSupported)
    {
      isSpatialModeSupported = [(CAMCaptureCapabilities *)self isSpatialModeSupported];
      if (isSpatialModeSupported)
      {
        if (device)
        {
          if (device == 6)
          {

            LOBYTE(isSpatialModeSupported) = [(CAMCaptureCapabilities *)self isBackWideDualSupported];
          }

          else
          {
            LOBYTE(isSpatialModeSupported) = 0;
          }
        }

        else
        {
          LOBYTE(isSpatialModeSupported) = 1;
        }
      }
    }
  }

  return isSpatialModeSupported;
}

- (BOOL)_isSpatialPhotoModeSupportedForDevice:(int64_t)device
{
  isSpatialModeSupported = [(CAMCaptureCapabilities *)self isCameraSupportedForDevice:?];
  if (isSpatialModeSupported)
  {
    isSpatialModeSupported = [(CAMCaptureCapabilities *)self isSpatialModeSupported];
    if (isSpatialModeSupported)
    {
      if (device)
      {
        if (device == 6)
        {

          LOBYTE(isSpatialModeSupported) = [(CAMCaptureCapabilities *)self isBackWideDualSupported];
        }

        else
        {
          LOBYTE(isSpatialModeSupported) = 0;
        }
      }

      else
      {
        LOBYTE(isSpatialModeSupported) = 1;
      }
    }
  }

  return isSpatialModeSupported;
}

- (BOOL)isFrontRearSimultaneousVideoSupportedForMode:(int64_t)mode
{
  result = [(CAMCaptureCapabilities *)self isFrontRearSimultaneousVideoSupported];
  if (mode != 1)
  {
    return 0;
  }

  return result;
}

- (BOOL)isFrontRearSimultaneousVideoSupportedForMode:(int64_t)mode devicePosition:(int64_t)position
{
  isFrontRearSimultaneousVideoSupported = [(CAMCaptureCapabilities *)self isFrontRearSimultaneousVideoSupported];
  if (position || !isFrontRearSimultaneousVideoSupported)
  {
    return 0;
  }

  return [(CAMCaptureCapabilities *)self isFrontRearSimultaneousVideoSupportedForMode:mode];
}

- (BOOL)isFrontRearSimultaneousVideoSupportedForVideoConfiguration:(int64_t)configuration
{
  result = 0;
  if (configuration <= 0xC)
  {
    if (((1 << configuration) & 0x1CE1) != 0)
    {
      return 1;
    }

    else if (((1 << configuration) & 0x202) != 0)
    {
      return [(CAMCaptureCapabilities *)self isFrontRearSimultaneousVideo60FPSSupported];
    }
  }

  return result;
}

- (BOOL)isDynamicAspectRatioSupportedForMode:(int64_t)mode videoConfiguration:(int64_t)configuration devicePosition:(int64_t)position
{
  v8 = [(CAMCaptureCapabilities *)self isDynamicAspectRatioSupportedForMode:mode devicePosition:position];
  if (v8)
  {
    v9 = (configuration < 0xD) & (0x1EE3u >> configuration);
    if (mode == 7)
    {
      _dynamicAspectRatioInCinematicModeSupported = [(CAMCaptureCapabilities *)self _dynamicAspectRatioInCinematicModeSupported];
    }

    else
    {
      _dynamicAspectRatioInCinematicModeSupported = mode == 1 && [(CAMCaptureCapabilities *)self _dynamicAspectRatioInVideoModeSupported];
    }

    LOBYTE(v8) = v9 & _dynamicAspectRatioInCinematicModeSupported;
  }

  return v8;
}

- (BOOL)useSquareFormatForDynamicAspectRatioForMode:(int64_t)mode videoConfiguration:(int64_t)configuration
{
  if (configuration == 11 || configuration == 7)
  {
    return mode != 7;
  }

  else
  {
    return configuration == 6;
  }
}

- (BOOL)useVideoBinnedForMode:(int64_t)mode videoConfiguration:(int64_t)configuration devicePosition:(int64_t)position
{
  v6 = (configuration < 0xC) & (0x9DEu >> configuration);
  v7 = position == 1 && [(CAMCaptureCapabilities *)self _frontFacingVideoModeBinnedSupported];
  if (mode == 1)
  {
    return v6 & v7;
  }

  else
  {
    return 0;
  }
}

- (BOOL)isWideSupportedForDevicePosition:(int64_t)position
{
  if (position == 1)
  {
    return [(CAMCaptureCapabilities *)self isFrontCameraSupported];
  }

  if (position)
  {
    return 0;
  }

  return [(CAMCaptureCapabilities *)self isBackCameraSupported];
}

- (BOOL)isWideSupportedForMode:(int64_t)mode devicePosition:(int64_t)position videoConfiguration:(int64_t)configuration
{
  v9 = [(CAMCaptureCapabilities *)self isWideSupportedForDevicePosition:position];
  if (!v9)
  {
    return v9;
  }

  LOBYTE(v9) = 0;
  if (position)
  {
    v10 = 8 * (position == 1);
  }

  else
  {
    v10 = 2;
  }

  if (mode <= 5)
  {
    if ((mode - 3) >= 3)
    {
      if ((mode - 1) < 2)
      {

        LOBYTE(v9) = [(CAMCaptureCapabilities *)self isSupportedVideoConfiguration:configuration forMode:mode device:v10];
        return v9;
      }

      if (mode)
      {
        return v9;
      }
    }

    LOBYTE(v9) = 1;
    return v9;
  }

  if (mode > 7)
  {
    if (mode == 8)
    {

      LOBYTE(v9) = [(CAMCaptureCapabilities *)self _isSpatialVideoModeSupportedForDevice:v10];
    }

    else if (mode == 9)
    {

      LOBYTE(v9) = [(CAMCaptureCapabilities *)self _isSpatialPhotoModeSupportedForDevice:v10];
    }
  }

  else if (mode == 6)
  {

    LOBYTE(v9) = [(CAMCaptureCapabilities *)self isPortraitModeSupportedForDevice:v10];
  }

  else
  {

    LOBYTE(v9) = [(CAMCaptureCapabilities *)self isCinematicModeSupportedForDevice:v10];
  }

  return v9;
}

- (BOOL)isTelephotoSupported
{
  if ([(CAMCaptureCapabilities *)self isBackTelephotoSupported])
  {
    return 1;
  }

  return [(CAMCaptureCapabilities *)self isFrontTelephotoSupported];
}

- (BOOL)isTelephotoSupportedForDevicePosition:(int64_t)position
{
  if (position == 1)
  {
    return [(CAMCaptureCapabilities *)self isFrontTelephotoSupported];
  }

  if (position)
  {
    return 0;
  }

  return [(CAMCaptureCapabilities *)self isBackTelephotoSupported];
}

- (BOOL)isTelephotoSupportedForMode:(int64_t)mode devicePosition:(int64_t)position videoConfiguration:(int64_t)configuration
{
  v9 = [(CAMCaptureCapabilities *)self isTelephotoSupportedForDevicePosition:position];
  if (!v9)
  {
    return v9;
  }

  if (position == 1)
  {
    LOBYTE(v9) = 0;
    return v9;
  }

  LOBYTE(v9) = 0;
  if (position)
  {
    v10 = 0;
  }

  else
  {
    v10 = 3;
  }

  if (mode <= 5)
  {
    if ((mode - 3) < 3)
    {
LABEL_10:
      LOBYTE(v9) = 1;
      return v9;
    }

    if ((mode - 1) >= 2)
    {
      if (mode)
      {
        return v9;
      }

      goto LABEL_10;
    }

    goto LABEL_23;
  }

  if (mode > 7)
  {
    if (mode == 8)
    {
LABEL_23:

      LOBYTE(v9) = [(CAMCaptureCapabilities *)self isSupportedVideoConfiguration:configuration forMode:mode device:v10];
      return v9;
    }

    if (mode == 9)
    {

      LOBYTE(v9) = [(CAMCaptureCapabilities *)self _isSpatialPhotoModeSupportedForDevice:v10];
    }
  }

  else if (mode == 6)
  {

    LOBYTE(v9) = [(CAMCaptureCapabilities *)self isPortraitModeSupportedForDevice:v10];
  }

  else
  {

    LOBYTE(v9) = [(CAMCaptureCapabilities *)self isCinematicModeSupportedForDevice:v10];
  }

  return v9;
}

- (BOOL)_shouldAllowCameraToggleForMode:(int64_t)mode devicePosition:(int64_t)position videoConfiguration:(int64_t)configuration videoStabilizationStrength:(int64_t)strength frontRearSimultaneousVideoEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  if ([(CAMCaptureCapabilities *)self _forcedBackCamera])
  {
    v13 = [(CAMCaptureCapabilities *)self preferredDeviceForPosition:position mode:mode videoConfiguration:configuration videoStabilizationStrength:strength frontRearSimultaneousVideoEnabled:enabledCopy];
    if (v13 == [(CAMCaptureCapabilities *)self _forcedBackCamera])
    {
      goto LABEL_5;
    }
  }

  if ([(CAMCaptureCapabilities *)self isTripleCameraSupportedForMode:mode devicePosition:position videoConfiguration:configuration videoStabilizationStrength:strength frontRearSimultaneousVideoEnabled:enabledCopy]|| [(CAMCaptureCapabilities *)self isDynamicAspectRatioSupportedForMode:mode videoConfiguration:configuration devicePosition:position])
  {
    goto LABEL_5;
  }

  v15 = [(CAMCaptureCapabilities *)self isDualSupportedForMode:mode devicePosition:position videoConfiguration:configuration videoStabilizationStrength:strength];
  v16 = [(CAMCaptureCapabilities *)self isWideDualSupportedForMode:mode devicePosition:position videoConfiguration:configuration videoStabilizationStrength:strength];
  if (v15 && v16)
  {
    LOBYTE(v14) = 1;
  }

  else if (v16)
  {
    v14 = [(CAMCaptureCapabilities *)self isQuadraWideZoomButtonSupportedForMode:mode devicePosition:position videoConfiguration:configuration];
    if (v14)
    {
      LOBYTE(v14) = ![CAMZoomControlUtilities shouldApplyContinuousZoomForMode:mode device:6 videoConfiguration:configuration videoStabilizationStrength:strength frontRearSimultaneousVideoEnabled:enabledCopy zoomFactors:0 displayZoomFactors:0];
    }
  }

  else
  {
    if (v15)
    {
LABEL_5:
      LOBYTE(v14) = 0;
      return v14;
    }

    v17 = [(CAMCaptureCapabilities *)self isTelephotoSupportedForMode:mode devicePosition:position videoConfiguration:configuration];
    v18 = [(CAMCaptureCapabilities *)self _isSuperWideZoomSupportedForMode:mode devicePosition:position videoConfiguration:configuration];
    LOBYTE(v14) = 1;
    if (!v17 && !v18)
    {

      LOBYTE(v14) = [(CAMCaptureCapabilities *)self isQuadraWideBinningReconfigurationSupportedForMode:mode devicePosition:position videoConfiguration:configuration];
    }
  }

  return v14;
}

- (BOOL)_isSuperWideZoomSupportedForMode:(int64_t)mode devicePosition:(int64_t)position videoConfiguration:(int64_t)configuration
{
  if (position != 1)
  {
    if (!position)
    {

      return [CAMCaptureCapabilities isSuperWideSupportedForMode:"isSuperWideSupportedForMode:devicePosition:videoConfiguration:" devicePosition:mode videoConfiguration:?];
    }

    return 0;
  }

  if (![(CAMCaptureCapabilities *)self isSuperWideSupportedForMode:mode devicePosition:1 videoConfiguration:configuration])
  {
    return 0;
  }

  return [(CAMCaptureCapabilities *)self frontSuperWideZoomControlSupported];
}

- (BOOL)isDualSupported
{
  if ([(CAMCaptureCapabilities *)self isBackDualSupported])
  {
    return 1;
  }

  return [(CAMCaptureCapabilities *)self isFrontDualSupported];
}

- (BOOL)isDualSupportedForDevicePosition:(int64_t)position
{
  if (position == 1)
  {
    return [(CAMCaptureCapabilities *)self isFrontDualSupported];
  }

  if (position)
  {
    return 0;
  }

  return [(CAMCaptureCapabilities *)self isBackDualSupported];
}

- (BOOL)isDualSupportedForMode:(int64_t)mode devicePosition:(int64_t)position videoConfiguration:(int64_t)configuration videoStabilizationStrength:(int64_t)strength
{
  v11 = [(CAMCaptureCapabilities *)self isDualSupportedForDevicePosition:position];
  if (!v11)
  {
    return v11;
  }

  if ([(CAMCaptureCapabilities *)self _needsForcedSingleCameraEmulationForVideoStabilizationStrength:strength videoConfiguration:configuration mode:mode]|| [(CAMCaptureCapabilities *)self featureDevelopmentForceSingleCamera])
  {
    goto LABEL_4;
  }

  LOBYTE(v11) = 0;
  if (mode <= 5)
  {
    if ((mode - 1) >= 2)
    {
      if (mode && mode != 4)
      {
        return v11;
      }

LABEL_18:
      LOBYTE(v11) = 1;
      return v11;
    }

LABEL_24:
    if (!position)
    {

      LOBYTE(v11) = [(CAMCaptureCapabilities *)self isSupportedVideoConfiguration:configuration forMode:mode device:4];
      return v11;
    }

LABEL_4:
    LOBYTE(v11) = 0;
    return v11;
  }

  if (mode > 7)
  {
    if (mode == 8)
    {
      goto LABEL_24;
    }

    if (mode == 9)
    {

      LOBYTE(v11) = [(CAMCaptureCapabilities *)self _isSpatialPhotoModeSupportedForDevice:4];
    }
  }

  else
  {
    if (mode == 6)
    {
      LOBYTE(v11) = ![(CAMCaptureCapabilities *)self _disablePortraitBravoDevices];
      return v11;
    }

    if (position == 1)
    {
      goto LABEL_18;
    }

    if (position)
    {
      goto LABEL_4;
    }

    LOBYTE(v11) = [(CAMCaptureCapabilities *)self _backDualCameraSupportedForCinematic];
  }

  return v11;
}

- (double)wideToTelephotoZoomFactorForDevicePosition:(int64_t)position
{
  if (position == 1)
  {
    [(CAMCaptureCapabilities *)self _frontDualCameraSwitchOverZoomFactor];
  }

  else if (position)
  {
    return 1.0;
  }

  else
  {
    [(CAMCaptureCapabilities *)self _backDualCameraSwitchOverZoomFactor];
  }

  return result;
}

- (BOOL)isSuperWideSupported
{
  if ([(CAMCaptureCapabilities *)self isBackSuperWideSupported])
  {
    return 1;
  }

  return [(CAMCaptureCapabilities *)self isFrontSuperWideSupported];
}

- (BOOL)isSuperWideSupportedForDevicePosition:(int64_t)position
{
  if (position == 1)
  {
    return [(CAMCaptureCapabilities *)self isFrontSuperWideSupported];
  }

  if (position)
  {
    return 0;
  }

  return [(CAMCaptureCapabilities *)self isBackSuperWideSupported];
}

- (BOOL)isSuperWideSupportedForMode:(int64_t)mode devicePosition:(int64_t)position videoConfiguration:(int64_t)configuration
{
  v9 = [(CAMCaptureCapabilities *)self isSuperWideSupportedForDevicePosition:position];
  if (!v9)
  {
    return v9;
  }

  LOBYTE(v9) = 0;
  v10 = 10;
  if (position != 1)
  {
    v10 = 0;
  }

  if (position)
  {
    v11 = v10;
  }

  else
  {
    v11 = 5;
  }

  if (mode <= 4)
  {
    if (mode > 2)
    {
      if (mode == 3)
      {
        LOBYTE(v9) = ![(CAMCaptureCapabilities *)self isiPad];
        return v9;
      }

      goto LABEL_18;
    }

    if ((mode - 1) >= 2)
    {
      if (mode)
      {
        return v9;
      }

LABEL_18:
      LOBYTE(v9) = 1;
      return v9;
    }

    goto LABEL_24;
  }

  if (mode > 7)
  {
    if (mode == 8)
    {
LABEL_24:

      LOBYTE(v9) = [(CAMCaptureCapabilities *)self isSupportedVideoConfiguration:configuration forMode:mode device:v11];
      return v9;
    }

    if (mode == 9)
    {

      LOBYTE(v9) = [(CAMCaptureCapabilities *)self _isSpatialPhotoModeSupportedForDevice:v11];
    }
  }

  else if ((mode - 6) >= 2)
  {
    if (mode == 5)
    {

      LOBYTE(v9) = [(CAMCaptureCapabilities *)self isTimelapseSupportedForDevice:v11];
    }
  }

  else
  {

    LOBYTE(v9) = [(CAMCaptureCapabilities *)self isPortraitModeSupportedForDevice:v11];
  }

  return v9;
}

- (BOOL)isSuperWideAutoMacroSupportedForMode:(int64_t)mode device:(int64_t)device videoConfiguration:(int64_t)configuration videoStabilizationStrength:(int64_t)strength frontRearSimultaneousVideoEnabled:(BOOL)enabled
{
  v9 = [(CAMCaptureCapabilities *)self resolvedDeviceForDesiredDevice:device mode:mode videoConfiguration:configuration videoStabilizationStrength:strength frontRearSimultaneousVideoEnabled:enabled];
  isSuperWideAutoMacroSupported = [(CAMCaptureCapabilities *)self isSuperWideAutoMacroSupported];
  v12 = mode < 2 && (v9 & 0xFFFFFFFFFFFFFFFELL) == 6;
  return isSuperWideAutoMacroSupported && v12;
}

- (BOOL)isWideDualSupported
{
  if ([(CAMCaptureCapabilities *)self isBackWideDualSupported])
  {
    return 1;
  }

  return [(CAMCaptureCapabilities *)self isFrontWideDualSupported];
}

- (BOOL)isWideDualSupportedForDevicePosition:(int64_t)position
{
  if (position == 1)
  {
    return [(CAMCaptureCapabilities *)self isFrontWideDualSupported];
  }

  if (position)
  {
    return 0;
  }

  return [(CAMCaptureCapabilities *)self isBackWideDualSupported];
}

- (BOOL)isWideDualSupportedForMode:(int64_t)mode devicePosition:(int64_t)position videoConfiguration:(int64_t)configuration videoStabilizationStrength:(int64_t)strength
{
  v11 = [(CAMCaptureCapabilities *)self isWideDualSupportedForDevicePosition:position];
  if (v11)
  {
    if ([(CAMCaptureCapabilities *)self _needsForcedSingleCameraEmulationForVideoStabilizationStrength:strength videoConfiguration:configuration mode:mode]|| [(CAMCaptureCapabilities *)self featureDevelopmentForceSingleCamera])
    {
      goto LABEL_4;
    }

    LOBYTE(v11) = 0;
    if (mode > 9)
    {
      return v11;
    }

    if (((1 << mode) & 0x291) != 0)
    {
      LOBYTE(v11) = 1;
    }

    else if (((1 << mode) & 0x106) != 0)
    {
      if (position)
      {
LABEL_4:
        LOBYTE(v11) = 0;
        return v11;
      }

      LOBYTE(v11) = [(CAMCaptureCapabilities *)self isSupportedVideoConfiguration:configuration forMode:mode device:6];
    }

    else if (mode == 6)
    {
      LOBYTE(v11) = ![(CAMCaptureCapabilities *)self _disablePortraitBravoDevices];
    }
  }

  return v11;
}

- (double)superWideToWideZoomFactorForDevicePosition:(int64_t)position
{
  if (position == 1)
  {
    [(CAMCaptureCapabilities *)self _frontWideDualCameraSwitchOverZoomFactor];
  }

  else if (position)
  {
    return 1.0;
  }

  else
  {
    [(CAMCaptureCapabilities *)self _backWideDualCameraSwitchOverZoomFactor];
  }

  return result;
}

- (BOOL)isDualDeviceDisparitySupportedForMode:(int64_t)mode devicePosition:(int64_t)position
{
  if ((mode & 0xFFFFFFFFFFFFFFFELL) != 6)
  {
    return 0;
  }

  if ([(CAMCaptureCapabilities *)self isDualSupported])
  {
    return 1;
  }

  return [(CAMCaptureCapabilities *)self isWideDualSupported];
}

- (BOOL)isTripleCameraSupported
{
  if ([(CAMCaptureCapabilities *)self isBackTripleCameraSupported])
  {
    return 1;
  }

  return [(CAMCaptureCapabilities *)self isFrontTripleCameraSupported];
}

- (BOOL)isTripleCameraSupportedForDevicePosition:(int64_t)position
{
  if (position == 1)
  {
    return [(CAMCaptureCapabilities *)self isFrontTripleCameraSupported];
  }

  if (position)
  {
    return 0;
  }

  return [(CAMCaptureCapabilities *)self isBackTripleCameraSupported];
}

- (BOOL)isTripleCameraSupportedForMode:(int64_t)mode devicePosition:(int64_t)position videoConfiguration:(int64_t)configuration videoStabilizationStrength:(int64_t)strength frontRearSimultaneousVideoEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v13 = [(CAMCaptureCapabilities *)self isTripleCameraSupportedForDevicePosition:position];
  if (!v13)
  {
    return v13;
  }

  if ([(CAMCaptureCapabilities *)self _needsForcedSingleCameraEmulationForVideoStabilizationStrength:strength videoConfiguration:configuration mode:mode]|| enabledCopy && [(CAMCaptureCapabilities *)self _forcedBackCamera]!= 7 || [(CAMCaptureCapabilities *)self featureDevelopmentForceSingleCamera]|| [(CAMCaptureCapabilities *)self _disableSuperBravoDevice])
  {
    goto LABEL_12;
  }

  LOBYTE(v13) = 0;
  if (mode > 8)
  {
    return v13;
  }

  if (((1 << mode) & 0x106) == 0)
  {
    if (((1 << mode) & 0x11) != 0)
    {
      LOBYTE(v13) = 1;
    }

    else if (mode == 6)
    {

      LOBYTE(v13) = [(CAMCaptureCapabilities *)self continuousZoomSupportedForPortraitMode];
    }

    return v13;
  }

  if (position)
  {
LABEL_12:
    LOBYTE(v13) = 0;
    return v13;
  }

  LOBYTE(v13) = [(CAMCaptureCapabilities *)self isSupportedVideoConfiguration:configuration forMode:mode device:7];
  return v13;
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)tripleCameraSwitchOverZoomFactorsForDevicePosition:(int64_t)position
{
  v5 = [(CAMCaptureCapabilities *)self isTripleCameraSupportedForDevicePosition:?];
  v6 = 1.0;
  if (v5)
  {
    if (position == 1)
    {
      [(CAMCaptureCapabilities *)self _frontWideDualCameraSwitchOverZoomFactor];
      v7 = v10;
      [(CAMCaptureCapabilities *)self _frontDualCameraSwitchOverZoomFactor];
      goto LABEL_7;
    }

    v7 = 1.0;
    if (!position)
    {
      [(CAMCaptureCapabilities *)self _backWideDualCameraSwitchOverZoomFactor];
      v7 = v8;
      [(CAMCaptureCapabilities *)self _backDualCameraSwitchOverZoomFactor];
LABEL_7:
      v6 = v7 * v9;
    }
  }

  else
  {
    v7 = 1.0;
  }

  v11 = v7;
  result.var1 = v6;
  result.var0 = v11;
  return result;
}

- (BOOL)isQuadraWideSupported
{
  if ([(CAMCaptureCapabilities *)self isBackQuadraWideSupported])
  {
    return 1;
  }

  return [(CAMCaptureCapabilities *)self isFrontQuadraWideSupported];
}

- (BOOL)isQuadraWideBinningReconfigurationSupportedForMode:(int64_t)mode devicePosition:(int64_t)position videoConfiguration:(int64_t)configuration
{
  if (position == 1)
  {
    isFrontQuadraWideSupported = [(CAMCaptureCapabilities *)self isFrontQuadraWideSupported];
    goto LABEL_5;
  }

  if (!position)
  {
    isFrontQuadraWideSupported = [(CAMCaptureCapabilities *)self isBackQuadraWideSupported];
LABEL_5:
    v9 = isFrontQuadraWideSupported;
    goto LABEL_7;
  }

  v9 = 0;
LABEL_7:
  LOBYTE(isBackQuadraWideSupported) = 0;
  if (mode > 4)
  {
    switch(mode)
    {
      case 7:
        LOBYTE(isBackQuadraWideSupported) = [(CAMCaptureCapabilities *)self continuousZoomSupportedForCinematicMode];
        return isBackQuadraWideSupported && v9;
      case 6:
        LOBYTE(isBackQuadraWideSupported) = [(CAMCaptureCapabilities *)self _isQuadraPortraitSupported];
        return isBackQuadraWideSupported && v9;
      case 5:
        goto LABEL_15;
    }
  }

  else
  {
    if (mode < 2)
    {
LABEL_15:
      LOBYTE(isBackQuadraWideSupported) = [(CAMCaptureCapabilities *)self isQuadraWideSupported];
      return isBackQuadraWideSupported && v9;
    }

    if (mode != 2)
    {
      if (mode != 3)
      {
        return isBackQuadraWideSupported && v9;
      }

      goto LABEL_15;
    }

    LOBYTE(isBackQuadraWideSupported) = 0;
    if (configuration <= 0xE && ((1 << configuration) & 0x6010) != 0)
    {
      isBackQuadraWideSupported = [(CAMCaptureCapabilities *)self isBackQuadraWideSupported];
      if (isBackQuadraWideSupported)
      {
        LOBYTE(isBackQuadraWideSupported) = [(CAMCaptureCapabilities *)self isBack4k120VideoSupported];
      }
    }
  }

  return isBackQuadraWideSupported && v9;
}

- (BOOL)isQuadraTeleBinningReconfigurationSupportedForMode:(int64_t)mode devicePosition:(int64_t)position videoConfiguration:(int64_t)configuration
{
  isBackQuadraTeleSupported = [(CAMCaptureCapabilities *)self isBackQuadraTeleSupported];
  v10 = 0;
  if (!position && isBackQuadraTeleSupported)
  {
    v11 = [(CAMCaptureCapabilities *)self isQuadraWideBinningReconfigurationSupportedForMode:mode devicePosition:0 videoConfiguration:configuration];
    v12 = 0x1EEFu >> configuration;
    if (configuration > 0xE)
    {
      LOBYTE(v12) = 1;
    }

    if (mode == 2)
    {
      v10 = v12;
    }

    else
    {
      v10 = 1;
    }

    if (!v11)
    {
      v10 = 0;
    }
  }

  return v10 & 1;
}

- (int64_t)defaultPhotoResolutionForMode:(int64_t)mode devicePosition:(int64_t)position encodingBehavior:(int64_t)behavior
{
  if (behavior < 2)
  {
    if (position)
    {
      [(CAMCaptureCapabilities *)self _frontCameraDefaultCompressedResolutionByMode];
    }

    else
    {
      [(CAMCaptureCapabilities *)self _backCameraDefaultCompressedResolutionByMode];
    }

    v6 = LABEL_4:;
    v7 = v6;
    goto LABEL_11;
  }

  if (behavior == 2)
  {
    if (position)
    {
      [(CAMCaptureCapabilities *)self _frontCameraDefaultRAWResolutionByMode];
    }

    else
    {
      [(CAMCaptureCapabilities *)self _backCameraDefaultRAWResolutionByMode];
    }

    goto LABEL_4;
  }

  v7 = 0;
LABEL_11:
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:{mode, position}];
  v9 = [v7 objectForKeyedSubscript:v8];

  if (v9)
  {
    integerValue = [v9 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

- (BOOL)isPearlSupportedForDevicePosition:(int64_t)position
{
  if (position == 1)
  {
    return [(CAMCaptureCapabilities *)self isFrontPearlSupported];
  }

  if (position)
  {
    return 0;
  }

  return [(CAMCaptureCapabilities *)self isBackPearlSupported];
}

- (BOOL)isPearlSupportedForMode:(int64_t)mode devicePosition:(int64_t)position
{
  v6 = [(CAMCaptureCapabilities *)self isPearlSupportedForDevicePosition:position];
  if (v6)
  {
    if ((mode - 6) >= 2)
    {
      if (mode)
      {
        LOBYTE(v6) = 0;
      }

      else
      {

        LOBYTE(v6) = [(CAMCaptureCapabilities *)self _frontPhotoModeDepthSuggestionSupported];
      }
    }

    else
    {
      LOBYTE(v6) = 1;
    }
  }

  return v6;
}

- (int64_t)fallbackPrimaryConstituentDeviceSelectionForMode:(int64_t)mode device:(int64_t)device videoConfiguration:(int64_t)configuration videoStabilizationStrength:(int64_t)strength frontRearSimultaneousVideoEnabled:(BOOL)enabled macroMode:(int64_t)macroMode
{
  enabledCopy = enabled;
  if ((device - 1) > 0xA)
  {
    v14 = 0;
  }

  else
  {
    v14 = qword_1A3A6A2E8[device - 1];
  }

  v15 = [CAMCaptureCapabilities isSuperWideAutoMacroSupportedForMode:"isSuperWideAutoMacroSupportedForMode:device:videoConfiguration:videoStabilizationStrength:frontRearSimultaneousVideoEnabled:" device:mode videoConfiguration:? videoStabilizationStrength:? frontRearSimultaneousVideoEnabled:?];
  v16 = [(CAMCaptureCapabilities *)self isDualDeviceDisparitySupportedForMode:mode devicePosition:v14];
  if (v15)
  {
    v17 = 1;
    if (!macroMode)
    {
      v17 = 2;
    }
  }

  else if (v16)
  {
    v18 = [(CAMCaptureCapabilities *)self isTripleCameraSupportedForMode:mode devicePosition:v14 videoConfiguration:configuration videoStabilizationStrength:strength frontRearSimultaneousVideoEnabled:enabledCopy];
    v17 = 2;
    if (!v18)
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 1;
  }

  if ((mode & 0xFFFFFFFFFFFFFFFELL) == 8)
  {
    return 0;
  }

  else
  {
    return v17;
  }
}

- (BOOL)isTimeOfFlightSupported
{
  if ([(CAMCaptureCapabilities *)self isFrontTimeOfFlightSupported])
  {
    return 1;
  }

  return [(CAMCaptureCapabilities *)self isBackTimeOfFlightSupported];
}

- (BOOL)isTimeOfFlightSupportedForDevicePosition:(int64_t)position
{
  if (!position)
  {
    return [(CAMCaptureCapabilities *)self isBackTimeOfFlightSupported];
  }

  if (position == 1)
  {
    return [(CAMCaptureCapabilities *)self isFrontTimeOfFlightSupported];
  }

  return 0;
}

- (BOOL)isDepthEffectApertureSupportedForMode:(int64_t)mode devicePosition:(int64_t)position
{
  if ((mode - 6) < 2)
  {
    return [(CAMCaptureCapabilities *)self isDepthEffectApertureSupported];
  }

  if (mode)
  {
    return 0;
  }

  if (position)
  {
    return [(CAMCaptureCapabilities *)self _frontPhotoModeDepthSuggestionSupported];
  }

  return [(CAMCaptureCapabilities *)self _rearPhotoModeDepthSuggestionSupported];
}

- (BOOL)isDepthEffectApertureSupportedForMode:(int64_t)mode devicePosition:(int64_t)position depthSuggestionEnabled:(BOOL)enabled
{
  v7 = [(CAMCaptureCapabilities *)self isDepthEffectApertureSupportedForMode:mode devicePosition:position];
  if (mode)
  {
    enabledCopy = 1;
  }

  else
  {
    enabledCopy = enabled;
  }

  return enabledCopy && v7;
}

- (BOOL)photoModeDepthSuggestionSupported
{
  if ([(CAMCaptureCapabilities *)self isPhotoModeDepthSuggestionSupportedForDevicePosition:0])
  {
    return 1;
  }

  return [(CAMCaptureCapabilities *)self isPhotoModeDepthSuggestionSupportedForDevicePosition:1];
}

- (BOOL)isPhotoModeDepthSuggestionSupportedForDevicePosition:(int64_t)position
{
  if (position == 1)
  {
    return [(CAMCaptureCapabilities *)self _frontPhotoModeDepthSuggestionSupported];
  }

  if (position)
  {
    return 0;
  }

  return [(CAMCaptureCapabilities *)self _rearPhotoModeDepthSuggestionSupported];
}

- (double)minimumDepthEffectApertureForMode:(int64_t)mode device:(int64_t)device
{
  v5 = [(CAMCaptureCapabilities *)self isDepthEffectApertureSupported:mode];
  result = 1.4;
  if (mode == 7)
  {
    result = 2.0;
  }

  if (!v5)
  {
    return 0.0;
  }

  return result;
}

- (double)maximumDepthEffectApertureForMode:(int64_t)mode device:(int64_t)device
{
  v4 = [(CAMCaptureCapabilities *)self isDepthEffectApertureSupported:mode];
  result = 0.0;
  if (v4)
  {
    return 16.0;
  }

  return result;
}

- (double)defaultDepthEffectApertureForMode:(int64_t)mode device:(int64_t)device zoomFactor:(double)factor
{
  if ((device - 1) > 0xA)
  {
    v9 = 0;
  }

  else
  {
    v9 = qword_1A3A6A2E8[device - 1];
  }

  v10 = [(CAMCaptureCapabilities *)self isDepthEffectApertureSupportedForMode:mode devicePosition:v9];
  result = 0.0;
  if (!v10)
  {
    return result;
  }

  v12 = [(CAMCaptureCapabilities *)self resolvedDeviceForDesiredDevice:device mode:mode videoConfiguration:0 videoStabilizationStrength:0 frontRearSimultaneousVideoEnabled:0, 0.0];
  [CAMZoomControlUtilities zoomScaleFromDevice:2 toDevice:v12];
  v14 = v13;
  [(CAMCaptureCapabilities *)self quadraWideRelativeZoomFactor];
  v16 = 0.0;
  if (v12 <= 0xB)
  {
    if (((1 << v12) & 0xB10) != 0)
    {
LABEL_15:
      v16 = 4.5;
      goto LABEL_20;
    }

    if (((1 << v12) & 0xC4) != 0)
    {
      v17 = v14 * v15;
      if ([(CAMCaptureCapabilities *)self continuousZoomSupportedForPortraitMode]|| [(CAMCaptureCapabilities *)self isPhotoModeDepthSuggestionSupportedForDevicePosition:v9])
      {
        CEKProgressClamped();
        CEKInterpolateClamped();
        v18 = [MEMORY[0x1E6993828] closestValidValueForAperture:?];
        [v18 doubleValue];
        v16 = v19;
      }

      else
      {
        v18 = [(CAMCaptureCapabilities *)self significantZoomFactorsForMode:mode device:v12];
        v22 = [MEMORY[0x1E696AD98] numberWithDouble:factor];
        v23 = [v18 containsObject:v22];

        if ((v23 & (v17 == factor)) != 0)
        {
          v16 = 4.5;
        }

        else
        {
          v16 = 2.8;
        }
      }

      goto LABEL_20;
    }

    if (v12 == 10 && [(CAMCaptureCapabilities *)self isDynamicAspectRatioSupportedForMode:mode devicePosition:v9])
    {
      [(CAMCaptureCapabilities *)self smartFramingFieldOfViewLandscapeZoomFactor];
      if (vabdd_f64(v20, factor) >= 0.00000011920929)
      {
        [(CAMCaptureCapabilities *)self smartFramingFieldOfViewPortraitZoomFactor];
        if (vabdd_f64(v21, factor) >= 0.00000011920929)
        {
          v16 = 2.8;
          goto LABEL_20;
        }
      }

      goto LABEL_15;
    }
  }

LABEL_20:
  continuousZoomSupportedForCinematicMode = [(CAMCaptureCapabilities *)self continuousZoomSupportedForCinematicMode];
  result = 2.8;
  if (v9)
  {
    result = 4.5;
  }

  if (mode != 7 || !continuousZoomSupportedForCinematicMode)
  {
    return v16;
  }

  return result;
}

- (double)maximumPortraitEffectIntensity
{
  isPortraitEffectIntensitySupported = [(CAMCaptureCapabilities *)self isPortraitEffectIntensitySupported];
  result = 0.0;
  if (isPortraitEffectIntensitySupported)
  {
    return 1.0;
  }

  return result;
}

- (double)defaultPortraitEffectIntensity
{
  isPortraitEffectIntensitySupported = [(CAMCaptureCapabilities *)self isPortraitEffectIntensitySupported];
  result = 0.0;
  if (isPortraitEffectIntensitySupported)
  {
    return 0.5;
  }

  return result;
}

- (BOOL)isPortraitEffectIntensitySupportedForMode:(int64_t)mode
{
  isPortraitEffectIntensitySupported = [(CAMCaptureCapabilities *)self isPortraitEffectIntensitySupported];
  if (isPortraitEffectIntensitySupported)
  {

    LOBYTE(isPortraitEffectIntensitySupported) = [(CAMCaptureCapabilities *)self isLightingControlSupportedForMode:mode];
  }

  return isPortraitEffectIntensitySupported;
}

- (BOOL)isExposureClippingIndicatorSupportedForMode:(int64_t)mode videoConfiguration:(int64_t)configuration
{
  v7 = [(CAMCaptureCapabilities *)self isExposureSliderSupportedForMode:?];
  if (v7)
  {
    if ([(CAMCaptureCapabilities *)self _forceDisableExposureClippingIndicator])
    {
      LOBYTE(v7) = 0;
    }

    else if ([(CAMCaptureCapabilities *)self _forceEnableExposureClippingIndicator])
    {
      LOBYTE(v7) = 1;
    }

    else
    {
      v8 = configuration <= 0xC && ((1 << configuration) & 0x1CE1) != 0 || (configuration - 10000) < 6;
      LOBYTE(v7) = (mode < 0xA) & (0x3F3u >> mode) & v8;
    }
  }

  return v7;
}

- (BOOL)isLensPositionControlSupportedForMode:(int64_t)mode device:(int64_t)device videoConfiguration:(int64_t)configuration videoStabilizationStrength:(int64_t)strength frontRearSimultaneousVideoEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  if (![(CAMCaptureCapabilities *)self isLensPositionControlSupported]|| ![(CAMCaptureCapabilities *)self _isLensPositionControlSupportedForMode:mode])
  {
    return 0;
  }

  v13 = [(CAMCaptureCapabilities *)self resolvedDeviceForDesiredDevice:device mode:mode videoConfiguration:configuration videoStabilizationStrength:strength frontRearSimultaneousVideoEnabled:enabledCopy];

  return [(CAMCaptureCapabilities *)self _isLensPositionControlSupportedForResolvedDevice:v13];
}

- (BOOL)_isLensPositionControlSupportedForResolvedDevice:(int64_t)device
{
  isLensPositionControlSupported = [(CAMCaptureCapabilities *)self isLensPositionControlSupported];
  if (isLensPositionControlSupported)
  {
    LOBYTE(isLensPositionControlSupported) = 0;
    if (device <= 0xA)
    {
      if (((1 << device) & 0x2C) != 0)
      {
        LOBYTE(isLensPositionControlSupported) = 1;
      }

      else if (((1 << device) & 0xD0) != 0)
      {

        LOBYTE(isLensPositionControlSupported) = [(CAMCaptureCapabilities *)self _lensPositionControlSupportedForAggregateCameras];
      }

      else if (((1 << device) & 0x700) != 0)
      {
        LOBYTE(isLensPositionControlSupported) = ![(CAMCaptureCapabilities *)self isiPad];
      }
    }
  }

  return isLensPositionControlSupported;
}

- (BOOL)_isLensPositionControlSupportedForMode:(int64_t)mode
{
  isLensPositionControlSupported = [(CAMCaptureCapabilities *)self isLensPositionControlSupported];
  v5 = 0x377u >> mode;
  if (mode > 9)
  {
    LOBYTE(v5) = 0;
  }

  if (!isLensPositionControlSupported)
  {
    LOBYTE(v5) = 0;
  }

  return v5 & 1;
}

- (BOOL)isImageAnalysisSupportedForMode:(int64_t)mode devicePosition:(int64_t)position
{
  result = [(CAMCaptureCapabilities *)self isImageAnalysisSupported];
  if (mode & 0xFFFFFFFFFFFFFFFBLL | position)
  {
    return 0;
  }

  return result;
}

- (BOOL)isSemanticDevelopmentSupportedForMode:(int64_t)mode
{
  v4 = +[CAMCaptureCapabilities capabilities];
  semanticDevelopmentSupported = [v4 semanticDevelopmentSupported];

  return *&semanticDevelopmentSupported & (mode < 7) & (0x51u >> mode);
}

- (BOOL)isZoomPlatterSupportedForMode:(int64_t)mode devicePosition:(int64_t)position videoConfiguration:(int64_t)configuration
{
  isZoomPlatterSupported = [(CAMCaptureCapabilities *)self isZoomPlatterSupported];
  result = 0;
  if (!position && isZoomPlatterSupported)
  {
    if (mode > 9)
    {
      return 0;
    }

    else if (mode == 6)
    {

      return [(CAMCaptureCapabilities *)self isQuadraWideZoomButtonSupportedForMode:6 devicePosition:0 videoConfiguration:configuration];
    }

    else
    {
      return 1;
    }
  }

  return result;
}

- (BOOL)isZoomAllowedForMode:(int64_t)mode device:(int64_t)device videoConfiguration:(int64_t)configuration videoStabilizationStrength:(int64_t)strength
{
  [(CAMCaptureCapabilities *)self maximumZoomFactorForMode:mode device:device videoConfiguration:configuration videoStabilizationStrength:strength];
  v10 = v9;
  if (mode != 6)
  {
    return v10 > 1.0;
  }

  v11 = (device - 1) > 0xA ? 0 : qword_1A3A6A2E8[device - 1];
  if (![(CAMCaptureCapabilities *)self isDynamicAspectRatioSupportedForMode:6 devicePosition:v11])
  {
    return v10 > 1.0;
  }

  return [(CAMCaptureCapabilities *)self dynamicAspectRatioZoomSupported];
}

- (unint64_t)frontZoomBehaviorForCaptureMode:(int64_t)mode videoConfiguration:(int64_t)configuration
{
  _FFCZoomBehaviorForCaptureMode = [(CAMCaptureCapabilities *)self _FFCZoomBehaviorForCaptureMode];
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:mode];
  v9 = [_FFCZoomBehaviorForCaptureMode objectForKeyedSubscript:v8];

  if (v9)
  {
    unsignedIntegerValue = [v9 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0;
  }

  v11 = [(CAMCaptureCapabilities *)self isSmartFramingSupportedForMode:mode devicePosition:1];
  if ((v11 | [(CAMCaptureCapabilities *)self isDynamicAspectRatioSupportedForMode:mode videoConfiguration:configuration devicePosition:1]))
  {
    v12 = 0;
  }

  else
  {
    v12 = unsignedIntegerValue;
  }

  return v12;
}

- (BOOL)shouldAdjustZoomOnOrientationChangeForDevicePosition:(int64_t)position
{
  if (position == 1)
  {
    return ![(CAMCaptureCapabilities *)self isiPad:v3];
  }

  else
  {
    return 0;
  }
}

- (double)maximumZoomFactorForMode:(int64_t)mode device:(int64_t)device videoConfiguration:(int64_t)configuration videoStabilizationStrength:(int64_t)strength shouldResolveDevice:(BOOL)resolveDevice
{
  deviceCopy = device;
  if ((device - 8) >= 3 && device != 11 && device != 1)
  {
    v12 = 0;
    v11 = 1;
    if (!resolveDevice)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v11 = 0;
  v12 = 1;
  if (resolveDevice)
  {
LABEL_5:
    deviceCopy = [(CAMCaptureCapabilities *)self resolvedDeviceForDesiredDevice:device mode:mode videoConfiguration:configuration videoStabilizationStrength:strength frontRearSimultaneousVideoEnabled:0];
  }

LABEL_6:
  if ([(CAMCaptureCapabilities *)self _forcedBackCamera])
  {
    if (deviceCopy == [(CAMCaptureCapabilities *)self _forcedBackCamera])
    {
      v13 = 1.0;
      if (![(CAMCaptureCapabilities *)self _allowZoomWithForcedBackCamera])
      {
        return v13;
      }
    }
  }

  if (deviceCopy > 7)
  {
    LOBYTE(v14) = 0;
    v15 = 0;
    v16 = 0;
    LOBYTE(v17) = 1;
  }

  else
  {
    v14 = 0x80u >> deviceCopy;
    v15 = 0x10u >> deviceCopy;
    v16 = 0x40u >> deviceCopy;
    v17 = 0xF7u >> deviceCopy;
  }

  v18 = (configuration <= 0xC && configuration != 4 || (configuration - 10000) < 6) && [(CAMCaptureCapabilities *)self isQuadraWideBinningReconfigurationSupportedForMode:mode devicePosition:v12 videoConfiguration:configuration];
  v13 = 1.0;
  if (mode > 3)
  {
    if (mode == 7)
    {
      if ((v11 & v16 & [(CAMCaptureCapabilities *)self continuousZoomSupportedForCinematicMode]) != 1)
      {
        return v13;
      }

      [(CAMCaptureCapabilities *)self _backWideDualCinematicModeMaximumZoomFactor];
      goto LABEL_58;
    }

    if (mode == 6)
    {
      if (v11)
      {
        [(CAMCaptureCapabilities *)self _backPortraitModeMaximumZoomFactor];
      }

      else
      {
        if (![(CAMCaptureCapabilities *)self isDynamicAspectRatioSupportedForMode:6 devicePosition:v12])
        {
          return v13;
        }

        [(CAMCaptureCapabilities *)self smartFramingFieldOfViewPortraitZoomFactor];
      }

      goto LABEL_58;
    }

    if (mode != 4)
    {
      return v13;
    }

    goto LABEL_26;
  }

  if (!mode)
  {
LABEL_26:
    if (v14)
    {
      if (v11)
      {
        [(CAMCaptureCapabilities *)self _backTripleCameraPhotoModeMaximumZoomFactor];
      }

      else
      {
        [(CAMCaptureCapabilities *)self _frontTripleCameraPhotoModeMaximumZoomFactor];
      }

      goto LABEL_58;
    }

    if ((v15 | v16))
    {
      if (v11)
      {
        [(CAMCaptureCapabilities *)self _backDualPhotoModeMaximumZoomFactor];
      }

      else
      {
        [(CAMCaptureCapabilities *)self _frontDualPhotoModeMaximumZoomFactor];
      }

      goto LABEL_58;
    }

    if (v11)
    {
      [(CAMCaptureCapabilities *)self _backPhotoModeMaximumZoomFactor];
    }

    else
    {
      [(CAMCaptureCapabilities *)self _frontPhotoModeMaximumZoomFactor];
    }

    goto LABEL_65;
  }

  if (mode == 1)
  {
    if (v14)
    {
      if (v11)
      {
        goto LABEL_22;
      }

LABEL_38:
      [(CAMCaptureCapabilities *)self _frontTripleCameraVideoModeMaximumZoomFactor];
      goto LABEL_58;
    }

    if ((v15 | v16))
    {
      if (v11)
      {
        [(CAMCaptureCapabilities *)self _backDualVideoModeMaximumZoomFactor];
        goto LABEL_58;
      }

      goto LABEL_57;
    }

    selfCopy2 = self;
    if (!v11)
    {
      [(CAMCaptureCapabilities *)self _frontVideoModeMaximumZoomFactor];
      goto LABEL_65;
    }

LABEL_63:
    [(CAMCaptureCapabilities *)selfCopy2 _backVideoModeMaximumZoomFactor];
LABEL_65:
    v13 = v20;
    goto LABEL_66;
  }

  if (mode != 2)
  {
    return v13;
  }

  if ((v14 & 1) == 0)
  {
    if ((v15 | v16))
    {
      if (v11)
      {
        [(CAMCaptureCapabilities *)self _backDualSlomoModeMaximumZoomFactor];
        goto LABEL_58;
      }

LABEL_57:
      [(CAMCaptureCapabilities *)self _frontDualVideoModeMaximumZoomFactor];
      goto LABEL_58;
    }

    if (!v11)
    {
LABEL_66:
      if (v18)
      {
        [(CAMCaptureCapabilities *)self quadraWideRelativeZoomFactor];
        v13 = v13 * v26;
      }

      goto LABEL_59;
    }

    selfCopy2 = self;
    goto LABEL_63;
  }

  if (!v11)
  {
    goto LABEL_38;
  }

LABEL_22:
  [(CAMCaptureCapabilities *)self _backTripleCameraVideoModeMaximumZoomFactor];
LABEL_58:
  v13 = v19;
LABEL_59:
  if (!(v17 & 1 | (v13 == 1.0)))
  {
    [(CAMCaptureCapabilities *)self dualCameraSwitchOverZoomFactorForDevicePosition:v12];
    v23 = v22;
    [(CAMCaptureCapabilities *)self telephotoDisplayZoomFactor];
    return v13 * v24 / v23;
  }

  return v13;
}

- (double)defaultZoomFactorForGraphConfiguration:(id)configuration captureOrientation:(int64_t)orientation customLens:(int64_t)lens outputToExternalStorage:(BOOL)storage overrodeWithForcedZoomValue:(BOOL *)value
{
  configurationCopy = configuration;
  mode = [configurationCopy mode];
  device = [configurationCopy device];
  videoConfiguration = [configurationCopy videoConfiguration];
  videoStabilizationStrength = [configurationCopy videoStabilizationStrength];
  videoEncodingBehavior = [configurationCopy videoEncodingBehavior];
  trueVideoEnabled = [configurationCopy trueVideoEnabled];
  frontRearSimultaneousVideoEnabled = [configurationCopy frontRearSimultaneousVideoEnabled];
  prefersHDR10BitVideo = [configurationCopy prefersHDR10BitVideo];
  smartFramingFieldOfView = [configurationCopy smartFramingFieldOfView];

  BYTE3(v18) = prefersHDR10BitVideo;
  BYTE2(v18) = frontRearSimultaneousVideoEnabled;
  BYTE1(v18) = trueVideoEnabled;
  LOBYTE(v18) = storage;
  [CAMCaptureCapabilities defaultZoomFactorForMode:"defaultZoomFactorForMode:device:videoConfiguration:captureOrientation:videoStabilizationStrength:videoEncodingBehavior:customLens:outputToExternalStorage:isTrueVideo:frontRearSimultaneousVideoEnabled:prefersHDR10BitVideo:smartFramingFieldOfView:overrodeWithForcedZoomValue:" device:mode videoConfiguration:device captureOrientation:videoConfiguration videoStabilizationStrength:orientation videoEncodingBehavior:videoStabilizationStrength customLens:videoEncodingBehavior outputToExternalStorage:lens isTrueVideo:v18 frontRearSimultaneousVideoEnabled:smartFramingFieldOfView prefersHDR10BitVideo:value smartFramingFieldOfView:? overrodeWithForcedZoomValue:?];
  return result;
}

- (double)defaultZoomFactorForMode:(int64_t)mode device:(int64_t)device videoConfiguration:(int64_t)configuration captureOrientation:(int64_t)orientation
{
  LODWORD(v7) = 0;
  [CAMCaptureCapabilities defaultZoomFactorForMode:"defaultZoomFactorForMode:device:videoConfiguration:captureOrientation:videoStabilizationStrength:videoEncodingBehavior:customLens:outputToExternalStorage:isTrueVideo:frontRearSimultaneousVideoEnabled:prefersHDR10BitVideo:smartFramingFieldOfView:overrodeWithForcedZoomValue:" device:mode videoConfiguration:device captureOrientation:configuration videoStabilizationStrength:orientation videoEncodingBehavior:0 customLens:1 outputToExternalStorage:0 isTrueVideo:v7 frontRearSimultaneousVideoEnabled:0 prefersHDR10BitVideo:0 smartFramingFieldOfView:? overrodeWithForcedZoomValue:?];
  return result;
}

- (double)defaultZoomFactorForMode:(int64_t)mode device:(int64_t)device videoConfiguration:(int64_t)configuration captureOrientation:(int64_t)orientation videoStabilizationStrength:(int64_t)strength videoEncodingBehavior:(int64_t)behavior customLens:(int64_t)lens outputToExternalStorage:(BOOL)self0 isTrueVideo:(BOOL)self1 frontRearSimultaneousVideoEnabled:(BOOL)self2 prefersHDR10BitVideo:(BOOL)self3 smartFramingFieldOfView:(int64_t)self4 overrodeWithForcedZoomValue:(BOOL *)self5
{
  v74 = *MEMORY[0x1E69E9840];
  v22 = [(CAMCaptureCapabilities *)self resolvedDeviceForDesiredDevice:device mode:mode videoConfiguration:configuration videoStabilizationStrength:strength frontRearSimultaneousVideoEnabled:?];
  v23 = v22;
  if ((v22 - 8) < 3)
  {
    goto LABEL_4;
  }

  if (v22 == 11)
  {
    [(CAMCaptureCapabilities *)self maximumZoomFactorForMode:mode device:11 videoConfiguration:configuration videoStabilizationStrength:strength];
    v27 = v37;
    v35 = 0;
    v28 = 1.0;
    goto LABEL_37;
  }

  if (v22 == 1)
  {
LABEL_4:
    v24 = 0;
    v25 = 1;
  }

  else
  {
    v25 = 0;
    v24 = 1;
  }

  [(CAMCaptureCapabilities *)self maximumZoomFactorForMode:mode device:v22 videoConfiguration:configuration videoStabilizationStrength:strength];
  v27 = v26;
  v28 = 1.0;
  if (v23 > 5)
  {
    if ((v23 - 6) >= 2)
    {
      v35 = v23 == 10;
      if ((v24 & 1) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_35;
    }

    [(CAMCaptureCapabilities *)self wideDualCameraSwitchOverZoomFactorForDevicePosition:v25];
    v30 = v29;
    v31 = [(CAMCaptureCapabilities *)self isQuadraWideZoomButtonSupportedForMode:mode devicePosition:v25 videoConfiguration:configuration];
    if (mode == 6 && v31)
    {
      [(CAMCaptureCapabilities *)self _backWideDualCameraSwitchOverZoomFactor];
      v33 = v32;
      [(CAMCaptureCapabilities *)self quadraWideRelativeZoomFactor];
      v30 = v33 * v34;
    }

    BYTE2(v61) = enabled;
    BYTE1(v61) = bitVideo;
    LOBYTE(v61) = video;
    if (![CAMCaptureCapabilities isVideoStabilizationStrength:"isVideoStabilizationStrength:supportedForMode:device:videoConfiguration:videoEncodingBehavior:outputToExternalStorage:trueVideoEnabled:prefersHDR10BitVideo:frontRearSimultaneousVideoEnabled:" supportedForMode:strength device:mode videoConfiguration:device videoEncodingBehavior:configuration outputToExternalStorage:behavior trueVideoEnabled:storage prefersHDR10BitVideo:v61 frontRearSimultaneousVideoEnabled:?])
    {
      v35 = 0;
      v28 = v30;
      if ((v24 & 1) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_35;
    }

    if (strength != 3)
    {
      if (strength == 2)
      {
        v35 = 0;
        if ([(CAMCaptureCapabilities *)self featureDevelopmentDefaultWideHighStabilization])
        {
          v28 = v30;
        }

        else
        {
          v28 = 1.0;
        }

        if ((v24 & 1) == 0)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v35 = 0;
        v28 = v30;
        if ((v24 & 1) == 0)
        {
          goto LABEL_37;
        }
      }

LABEL_35:
      v38 = 0;
      v39 = 1;
      goto LABEL_53;
    }

LABEL_34:
    v35 = 0;
    if ((v24 & 1) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_35;
  }

  if (v23 != 2)
  {
    if (v23 == 4 && [(CAMCaptureCapabilities *)self isDualDeviceDisparitySupportedForMode:mode devicePosition:v25])
    {
      [(CAMCaptureCapabilities *)self wideToTelephotoZoomFactorForDevicePosition:v25];
      v28 = v36;
    }

    goto LABEL_34;
  }

  if (!self->_backQuadraWideSupported)
  {
    goto LABEL_34;
  }

  v35 = 0;
  if (mode == 6 && self->_backSingleCameraPortraitModeSupported)
  {
    v28 = 2.0;
  }

  else
  {
    v28 = 1.0;
  }

  if (v24)
  {
    goto LABEL_35;
  }

LABEL_37:
  v40 = [(CAMCaptureCapabilities *)self frontZoomBehaviorForCaptureMode:mode videoConfiguration:configuration];
  if (v40 - 1 < 2)
  {
    if ([(CAMCaptureCapabilities *)self shouldAdjustZoomOnOrientationChangeForDevicePosition:1])
    {
      v39 = 0;
      if ((orientation - 1) >= 2)
      {
        v28 = 1.0;
      }

      else
      {
        v28 = v27;
      }

      goto LABEL_52;
    }

    if (v35)
    {
      v38 = 1;
      [(CAMCaptureCapabilities *)self superWideToWideZoomFactorForDevicePosition:1];
      v28 = v43;
      v39 = 0;
      goto LABEL_53;
    }

    goto LABEL_51;
  }

  if (v40)
  {
    if (v40 != 3)
    {
      goto LABEL_48;
    }

LABEL_51:
    v39 = 0;
    v28 = 1.0;
    goto LABEL_52;
  }

  v38 = 1;
  v41 = [(CAMCaptureCapabilities *)self isDynamicAspectRatioSupportedForMode:mode devicePosition:1];
  v39 = 0;
  if (mode == 6 && v41)
  {
    [(CAMCaptureCapabilities *)self smartFramingFieldOfViewPortraitZoomFactor];
    v28 = v42;
LABEL_48:
    v39 = 0;
LABEL_52:
    v38 = 1;
  }

LABEL_53:
  [(CAMCaptureCapabilities *)self _forcedInitialZoomDisplayFactor];
  if (v44 > 0.0)
  {
    v45 = v44;
    v62 = 0;
    v63 = 0;
    v46 = [CAMZoomControlUtilities shouldApplyContinuousZoomForMode:mode device:v23 videoConfiguration:configuration videoStabilizationStrength:strength frontRearSimultaneousVideoEnabled:enabled zoomFactors:&v63 displayZoomFactors:&v62];
    v47 = v63;
    v48 = v62;
    if (!v46)
    {
      if (!v39)
      {
LABEL_70:

        goto LABEL_71;
      }

      [CAMZoomControlUtilities zoomScaleFromDevice:2 toDevice:v23];
      v52 = v45 * v51;
      v53 = [(CAMCaptureCapabilities *)self significantZoomFactorsForMode:mode device:v23];
      v54 = [MEMORY[0x1E696AD98] numberWithDouble:v52];
      v39 = [v53 containsObject:v54];

      if (v39)
      {
        v28 = v52;
      }

LABEL_69:

      goto LABEL_70;
    }

    [CAMZoomControlUtilities piecewiseLinearMappingForX:v48 fromXValues:v47 toYValues:v45];
    v50 = v49;
    if (v49 == v28)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"unchanged from %g", *&v28];
    }

    else
    {
      if (v49 >= 1.0)
      {
        v53 = [MEMORY[0x1E696AEC0] stringWithFormat:@"instead of %g", *&v28];
        v39 = 1;
        goto LABEL_65;
      }

      [MEMORY[0x1E696AEC0] stringWithFormat:@"IGNORING, using default %g", *&v28];
    }
    v53 = ;
    v39 = 0;
LABEL_65:
    v55 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134219010;
      v65 = v45;
      v66 = 2048;
      v67 = v50;
      v68 = 2114;
      v69 = v53;
      v70 = 2114;
      v71 = v48;
      v72 = 2114;
      v73 = v47;
      _os_log_impl(&dword_1A3640000, v55, OS_LOG_TYPE_DEFAULT, "Zoom override: displayFactor=%g -> zoomFactor=%g (%{public}@). displayZoomFactors = %{public}@, zoomFactors = %{public}@", buf, 0x34u);
    }

    if (v39)
    {
      v28 = v50;
    }

    goto LABEL_69;
  }

  v39 = 0;
LABEL_71:
  if ([(CAMCaptureCapabilities *)self isCustomLensSupportedForMode:mode device:v23 isTrueVideo:video]&& !v39)
  {
    if (lens > 5)
    {
      v56 = NAN;
    }

    else
    {
      v56 = dbl_1A3A6A280[lens] / dbl_1A3A6A250[lens];
    }

    [(CAMCaptureCapabilities *)self zoomFactorForCustomLensZoomFactor:v28 * v56];
    v28 = v57;
  }

  v58 = [(CAMCaptureCapabilities *)self isSmartFramingSupportedForMode:mode devicePosition:v38];
  if (view && v58)
  {
    [(CAMCaptureCapabilities *)self zoomFactorForSmartFramingFieldOfView:view];
    v28 = v59;
  }

  if (value)
  {
    *value = v39;
  }

  return v28;
}

- (BOOL)zoomControlSupported
{
  if ([(CAMCaptureCapabilities *)self isDualSupported]|| [(CAMCaptureCapabilities *)self isWideDualSupported]|| [(CAMCaptureCapabilities *)self isTripleCameraSupported]|| [(CAMCaptureCapabilities *)self frontSuperWideZoomControlSupported])
  {
    return 1;
  }

  return [(CAMCaptureCapabilities *)self isBackQuadraWideSupported];
}

- (id)significantZoomFactorsForMode:(int64_t)mode device:(int64_t)device
{
  v27[1] = *MEMORY[0x1E69E9840];
  if ((device - 8) < 3)
  {
    goto LABEL_4;
  }

  if (device == 11)
  {
    [(CAMCaptureCapabilities *)self isDualDeviceDisparitySupportedForMode:mode devicePosition:1];
    v9 = &unk_1F16C9A88;
    goto LABEL_21;
  }

  if (device == 1)
  {
LABEL_4:
    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  v8 = [(CAMCaptureCapabilities *)self isDualDeviceDisparitySupportedForMode:mode devicePosition:v7];
  v9 = &unk_1F16C9A88;
  if (device > 5)
  {
    if ((device - 6) >= 2)
    {
      goto LABEL_21;
    }

    goto LABEL_12;
  }

  if (device == 2)
  {
    goto LABEL_12;
  }

  if (device != 3)
  {
    if (device != 4)
    {
      goto LABEL_21;
    }

    if (v8)
    {
      [(CAMCaptureCapabilities *)self wideToTelephotoZoomFactorForDevicePosition:v7];
      v10 = [MEMORY[0x1E696AD98] numberWithDouble:?];
      v27[0] = v10;
      v11 = MEMORY[0x1E695DEC8];
      v12 = v27;
      v13 = 1;
      goto LABEL_20;
    }

LABEL_12:
    [CAMZoomControlUtilities zoomScaleFromDevice:2 toDevice:device];
    v15 = v14;
    v16 = [(CAMCaptureCapabilities *)self isQuadraWideZoomButtonSupportedForMode:mode devicePosition:v7 videoConfiguration:0];
    v17 = [MEMORY[0x1E696AD98] numberWithDouble:v15];
    v18 = v17;
    if (v16)
    {
      v25[0] = v17;
      v19 = MEMORY[0x1E696AD98];
      [(CAMCaptureCapabilities *)self quadraWideRelativeZoomFactor];
      v21 = [v19 numberWithDouble:v15 * v20];
      v25[1] = v21;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
    }

    else
    {
      v24 = v17;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v24 count:1];
    }

    goto LABEL_21;
  }

  if (![(CAMCaptureCapabilities *)self isQuadraTeleZoomButtonSupportedForMode:mode devicePosition:0 videoConfiguration:0])
  {
    goto LABEL_21;
  }

  v26[0] = &unk_1F16C8C48;
  v22 = MEMORY[0x1E696AD98];
  [(CAMCaptureCapabilities *)self quadraTeleRelativeZoomFactor];
  v10 = [v22 numberWithDouble:?];
  v26[1] = v10;
  v11 = MEMORY[0x1E695DEC8];
  v12 = v26;
  v13 = 2;
LABEL_20:
  v9 = [v11 arrayWithObjects:v12 count:v13];

LABEL_21:

  return v9;
}

- (BOOL)processZoomWithoutUpscaleForDevicePosition:(int64_t)position
{
  if (position == 1)
  {
    return [(CAMCaptureCapabilities *)self _processZoomWithoutUpscaleFront];
  }

  if (position)
  {
    return 0;
  }

  return [(CAMCaptureCapabilities *)self _processZoomWithoutUpscaleBack];
}

- (int64_t)resolvedDefaultCustomLens
{
  if (![(CAMCaptureCapabilities *)self focalLengthPickerSupported])
  {
    return 0;
  }

  availableCustomLenses = [(CAMCaptureCapabilities *)self availableCustomLenses];
  firstObject = [availableCustomLenses firstObject];
  integerValue = [firstObject integerValue];

  return integerValue;
}

- (int64_t)effectiveFocalLengthForCustomLens:(int64_t)lens
{
  if (lens > 5)
  {
    return 0;
  }

  if (((1 << lens) & 0x34) != 0)
  {
    return 2;
  }

  if (((1 << lens) & 0xA) != 0)
  {
    return 1;
  }

  return [(CAMCaptureCapabilities *)self baseFocalLengthForWideCamera];
}

- (int64_t)baseFocalLengthForCustomLens:(int64_t)lens
{
  if ((lens - 3) < 2)
  {
    return 3;
  }

  if (lens == 5)
  {
    return 1;
  }

  if (lens)
  {
    return 0;
  }

  return [(CAMCaptureCapabilities *)self baseFocalLengthForWideCamera];
}

- (NSArray)defaultCustomLensGroup
{
  supportedCustomLensGroups = [(CAMCaptureCapabilities *)self supportedCustomLensGroups];
  lastObject = [supportedCustomLensGroups lastObject];
  if ([supportedCustomLensGroups count] >= 2 && -[CAMCaptureCapabilities baseFocalLengthForWideCamera](self, "baseFocalLengthForWideCamera") == 3)
  {
    v5 = [supportedCustomLensGroups objectAtIndexedSubscript:{objc_msgSend(supportedCustomLensGroups, "count") - 2}];

    lastObject = v5;
  }

  return lastObject;
}

- (int64_t)supportedCustomLensForLens:(int64_t)lens inGroup:(id)group
{
  v6 = [(CAMCaptureCapabilities *)self supportedCustomLensGroupForGroup:group];
  v7 = [(CAMCaptureCapabilities *)self _nearestCustomLensToLens:lens inGroup:v6];

  return v7;
}

- (id)supportedCustomLensGroupForGroup:(id)group
{
  v23 = *MEMORY[0x1E69E9840];
  groupCopy = group;
  if ([groupCopy count])
  {
    defaultCustomLensGroup2 = groupCopy;
    availableCustomLenses = [(CAMCaptureCapabilities *)self availableCustomLenses];
    supportedCustomLensGroups = [(CAMCaptureCapabilities *)self supportedCustomLensGroups];
    if (([supportedCustomLensGroups containsObject:defaultCustomLensGroup2] & 1) == 0)
    {
      v17 = supportedCustomLensGroups;
      v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(defaultCustomLensGroup2, "count")}];
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v9 = defaultCustomLensGroup2;
      v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v19;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v19 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = [MEMORY[0x1E696AD98] numberWithInteger:{-[CAMCaptureCapabilities _nearestCustomLensToLens:inGroup:](self, "_nearestCustomLensToLens:inGroup:", objc_msgSend(*(*(&v18 + 1) + 8 * i), "integerValue"), availableCustomLenses)}];
            [v8 addObject:v14];
          }

          v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
        }

        while (v11);
      }

      supportedCustomLensGroups = v17;
      if ([v17 containsObject:v8])
      {
        defaultCustomLensGroup = v8;
      }

      else
      {
        defaultCustomLensGroup = [(CAMCaptureCapabilities *)self defaultCustomLensGroup];
      }

      defaultCustomLensGroup2 = defaultCustomLensGroup;
    }
  }

  else
  {
    defaultCustomLensGroup2 = [(CAMCaptureCapabilities *)self defaultCustomLensGroup];
  }

  return defaultCustomLensGroup2;
}

- (int64_t)_nearestCustomLensToLens:(int64_t)lens inGroup:(id)group
{
  v26 = *MEMORY[0x1E69E9840];
  groupCopy = group;
  v7 = [(CAMCaptureCapabilities *)self effectiveFocalLengthForCustomLens:lens];
  v8 = 0.0;
  if (v7 <= 3)
  {
    v8 = dbl_1A3A6A2B0[v7];
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = groupCopy;
  v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v22;
    v14 = 1.79769313e308;
LABEL_5:
    v15 = 0;
    while (1)
    {
      if (*v22 != v13)
      {
        objc_enumerationMutation(v9);
      }

      integerValue = [*(*(&v21 + 1) + 8 * v15) integerValue];
      v17 = [(CAMCaptureCapabilities *)self effectiveFocalLengthForCustomLens:integerValue];
      v18 = 0.0;
      if (v17 <= 3)
      {
        v18 = dbl_1A3A6A2B0[v17];
      }

      v19 = vabdd_f64(v18, v8);
      if (v19 < v14)
      {
        v12 = integerValue;
        v14 = v19;
        if (v18 - v8 == 0.0)
        {
          break;
        }
      }

      if (v11 == ++v15)
      {
        v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
        integerValue = v12;
        if (v11)
        {
          goto LABEL_5;
        }

        break;
      }
    }
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

- (BOOL)isCustomLensSupportedForMode:(int64_t)mode device:(int64_t)device isTrueVideo:(BOOL)video
{
  focalLengthPickerSupported = [(CAMCaptureCapabilities *)self focalLengthPickerSupported];
  v9 = mode == 1 && video;
  if (mode)
  {
    v10 = v9;
  }

  else
  {
    v10 = 1;
  }

  v11 = *&v10 & (device < 8) & (0xD5u >> device);
  if (focalLengthPickerSupported)
  {
    return v11;
  }

  else
  {
    return 0;
  }
}

- (BOOL)isCustomLensSupportedForPhotoResolution:(int64_t)resolution
{
  result = [(CAMCaptureCapabilities *)self focalLengthPickerSupported];
  if ((resolution & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    return 0;
  }

  return result;
}

- (double)zoomFactorForCustomLensZoomFactor:(double)factor
{
  [(CAMCaptureCapabilities *)self _maximumZoomFactorWithout24MPUpscale];
  if (vabdd_f64(factor, result) / result >= 0.05)
  {
    return factor;
  }

  return result;
}

- (int64_t)preferredDeviceForPosition:(int64_t)position mode:(int64_t)mode videoConfiguration:(int64_t)configuration videoStabilizationStrength:(int64_t)strength frontRearSimultaneousVideoEnabled:(BOOL)enabled
{
  configurationCopy = configuration;
  v32[1] = *MEMORY[0x1E69E9840];
  if (position)
  {
    if (position != 1)
    {
      return 0;
    }

    if ([(CAMCaptureCapabilities *)self isDynamicAspectRatioSupportedForMode:mode devicePosition:1, configuration, strength, enabled])
    {
      return 10;
    }

    if ([(CAMCaptureCapabilities *)self isPearlSupportedForMode:mode devicePosition:1])
    {
      return 9;
    }

    if ([(CAMCaptureCapabilities *)self frontZoomBehaviorForCaptureMode:mode videoConfiguration:configurationCopy]- 1 > 1)
    {
      return 8;
    }

    if ([(CAMCaptureCapabilities *)self isSuperWideSupportedForMode:mode devicePosition:1 videoConfiguration:configurationCopy])
    {
      return 10;
    }

    return 8;
  }

  enabledCopy = enabled;
  if (mode > 5)
  {
    if ((mode - 8) >= 2)
    {
      if (mode == 6)
      {
        if ([(CAMCaptureCapabilities *)self _preferWideDualPortrait])
        {
          v13 = &unk_1F16C9B00;
        }

        else
        {
          v13 = &unk_1F16C9B18;
        }

        goto LABEL_30;
      }

      v14 = mode == 7;
      v15 = &unk_1F16C9B30;
      goto LABEL_22;
    }

    v13 = &unk_1F16C9AA0;
  }

  else
  {
    if ((mode - 2) >= 4 && mode)
    {
      v15 = &unk_1F16C9AD0;
      if (enabled)
      {
        v15 = &unk_1F16C9AB8;
      }

      v14 = mode == 1;
LABEL_22:
      if (v14)
      {
        v13 = v15;
      }

      else
      {
        v13 = 0;
      }

      goto LABEL_30;
    }

    v13 = &unk_1F16C9AE8;
  }

LABEL_30:
  v16 = [(CAMCaptureCapabilities *)self _forcedBackDeviceForMode:mode videoConfiguration:configurationCopy];
  if (v16)
  {
    v17 = [MEMORY[0x1E696AD98] numberWithInteger:v16];
    v32[0] = v17;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:1];
    v13 = [v18 arrayByAddingObjectsFromArray:v13];
  }

  if ((strength & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v19 = [v13 arrayByAddingObject:&unk_1F16C7F10];

    if ([(CAMCaptureCapabilities *)self _needsForcedSingleCameraEmulationForVideoStabilizationStrength:strength videoConfiguration:configurationCopy mode:mode])
    {
      configurationCopy = 9;
    }

    v13 = v19;
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v20 = v13;
  v21 = [v20 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v28;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v28 != v23)
        {
          objc_enumerationMutation(v20);
        }

        integerValue = [*(*(&v27 + 1) + 8 * i) integerValue];
        v10 = integerValue;
        if (integerValue > 4)
        {
          if (integerValue == 5)
          {
            if ([(CAMCaptureCapabilities *)self isSuperWideSupportedForMode:mode devicePosition:0 videoConfiguration:configurationCopy])
            {
              goto LABEL_62;
            }
          }

          else if (integerValue == 7)
          {
            if ([(CAMCaptureCapabilities *)self isTripleCameraSupportedForMode:mode devicePosition:0 videoConfiguration:configurationCopy videoStabilizationStrength:strength frontRearSimultaneousVideoEnabled:enabledCopy])
            {
              goto LABEL_62;
            }
          }

          else if (integerValue == 6 && [(CAMCaptureCapabilities *)self isWideDualSupportedForMode:mode devicePosition:0 videoConfiguration:configurationCopy videoStabilizationStrength:strength])
          {
            goto LABEL_62;
          }
        }

        else if (integerValue == 2)
        {
          if ([(CAMCaptureCapabilities *)self isWideSupportedForMode:mode devicePosition:0 videoConfiguration:configurationCopy])
          {
            goto LABEL_62;
          }
        }

        else if (integerValue == 3)
        {
          if ([(CAMCaptureCapabilities *)self isTelephotoSupportedForMode:mode devicePosition:0 videoConfiguration:configurationCopy])
          {
            goto LABEL_62;
          }
        }

        else if (integerValue == 4 && [(CAMCaptureCapabilities *)self isDualSupportedForMode:mode devicePosition:0 videoConfiguration:configurationCopy videoStabilizationStrength:strength])
        {
          goto LABEL_62;
        }
      }

      v22 = [v20 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v22);
  }

  v10 = 2;
LABEL_62:

  return v10;
}

- (BOOL)isDynamicAspectRatioSupportedForMode:(int64_t)mode devicePosition:(int64_t)position
{
  dynamicAspectRatioSupported = [(CAMCaptureCapabilities *)self dynamicAspectRatioSupported];
  if (dynamicAspectRatioSupported)
  {
    _dynamicAspectRatioInVideoModeSupported = 0;
    if (mode <= 1)
    {
      if (mode)
      {
        if (mode == 1)
        {
          _dynamicAspectRatioInVideoModeSupported = [(CAMCaptureCapabilities *)self _dynamicAspectRatioInVideoModeSupported];
        }

        goto LABEL_12;
      }
    }

    else if (mode != 2)
    {
      if (mode == 7)
      {
        _dynamicAspectRatioInVideoModeSupported = [(CAMCaptureCapabilities *)self _dynamicAspectRatioInCinematicModeSupported];
        goto LABEL_12;
      }

      if (mode != 6)
      {
        goto LABEL_12;
      }
    }

    _dynamicAspectRatioInVideoModeSupported = 1;
LABEL_12:
    LOBYTE(dynamicAspectRatioSupported) = position == 1 && _dynamicAspectRatioInVideoModeSupported;
  }

  return dynamicAspectRatioSupported;
}

- (int64_t)_forcedBackDeviceForMode:(int64_t)mode videoConfiguration:(int64_t)configuration
{
  _forcedBackCamera = [(CAMCaptureCapabilities *)self _forcedBackCamera];
  [(CAMCaptureCapabilities *)self _forcedInitialZoomDisplayFactor];
  if (!_forcedBackCamera)
  {
    v9 = v8;
    if (v8 != 0.0)
    {
      if (mode == 6)
      {
        if ([(CAMCaptureCapabilities *)self continuousZoomSupportedForPortraitMode])
        {
          return 0;
        }
      }

      else if (mode == 7 && [(CAMCaptureCapabilities *)self continuousZoomSupportedForCinematicMode])
      {
        return 0;
      }

      if ([(CAMCaptureCapabilities *)self isDualDeviceDisparitySupportedForMode:mode devicePosition:0])
      {
        [(CAMCaptureCapabilities *)self telephotoDisplayZoomFactor];
        if (v9 == v10)
        {
          return 4;
        }

        [(CAMCaptureCapabilities *)self wideDisplayZoomFactor];
        if (v9 == v12)
        {
          return 6;
        }

        if ([(CAMCaptureCapabilities *)self isQuadraWideZoomButtonSupportedForMode:mode devicePosition:0 videoConfiguration:configuration])
        {
          [(CAMCaptureCapabilities *)self quadraWideDisplayZoomFactor];
          if (v9 == v14)
          {
            return 6;
          }
        }
      }

      else if ((mode - 2) < 2 || mode == 5 || mode == 1 && (configuration == 4 || configuration == 13 || configuration == 9 && [(CAMCaptureCapabilities *)self _backDualCameraVideoCapture4kMaxFPS]<= 59 && [(CAMCaptureCapabilities *)self _backWideDualCameraVideoCapture4kMaxFPS]<= 59 && [(CAMCaptureCapabilities *)self _backTripleCameraVideoCapture4kMaxFPS]<= 59))
      {
        [(CAMCaptureCapabilities *)self wideDisplayZoomFactor];
        if (v9 == v11)
        {
          return 2;
        }

        [(CAMCaptureCapabilities *)self telephotoDisplayZoomFactor];
        if (v9 == v13)
        {
          return 3;
        }

        [(CAMCaptureCapabilities *)self superWideDisplayZoomFactor];
        if (v9 == v15)
        {
          return 5;
        }

        if ([(CAMCaptureCapabilities *)self isQuadraWideZoomButtonSupportedForMode:mode devicePosition:0 videoConfiguration:configuration])
        {
          [(CAMCaptureCapabilities *)self quadraWideDisplayZoomFactor];
          if (v9 == v16)
          {
            return 2;
          }
        }
      }

      return 0;
    }
  }

  return _forcedBackCamera;
}

- (int64_t)resolvedDeviceForDesiredDevice:(int64_t)device mode:(int64_t)mode videoConfiguration:(int64_t)configuration videoStabilizationStrength:(int64_t)strength frontRearSimultaneousVideoEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  result = [(CAMCaptureCapabilities *)self sanitizeDesiredDevice:device forMode:?];
  if ((result - 8) < 3)
  {
    goto LABEL_4;
  }

  if (result == 11)
  {
    return result;
  }

  if (result == 1)
  {
LABEL_4:
    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  if ((result - 2) >= 9)
  {
    if (result > 1)
    {
      return 0;
    }

    else
    {

      return [(CAMCaptureCapabilities *)self preferredDeviceForPosition:v13 mode:mode videoConfiguration:configuration videoStabilizationStrength:strength frontRearSimultaneousVideoEnabled:enabledCopy];
    }
  }

  return result;
}

- (unint64_t)semanticStyleSupportForMode:(int64_t)mode devicePosition:(int64_t)position
{
  if ([(CAMCaptureCapabilities *)self smartStylesSupported])
  {
    v7 = [(CAMCaptureCapabilities *)self _desiredSmartStyleSupportForMode:mode devicePosition:position];
  }

  else
  {
    v7 = [(CAMCaptureCapabilities *)self _desiredSemanticStyleSupportForMode:mode devicePosition:position];
  }

  return [(CAMCaptureCapabilities *)self semanticStylesSupport]& v7;
}

- (unint64_t)_desiredSemanticStyleSupportForMode:(int64_t)mode devicePosition:(int64_t)position
{
  if (mode <= 3)
  {
    if (mode)
    {
      return mode == 1;
    }

    return -1;
  }

  if (mode == 9)
  {
    return 5;
  }

  if (mode != 6)
  {
    if (mode != 4)
    {
      return 0;
    }

    return -1;
  }

  if (position)
  {
    v7 = [(CAMCaptureCapabilities *)self _frontPortraitSemanticStylesSupported:v4];
  }

  else
  {
    v7 = [(CAMCaptureCapabilities *)self _rearPortraitSemanticStylesSupported:v4];
  }

  if (v7)
  {
    return 7;
  }

  else
  {
    return 1;
  }
}

- (unint64_t)_desiredSmartStyleSupportForMode:(int64_t)mode devicePosition:(int64_t)position
{
  result = 0;
  if (mode <= 5)
  {
    if (mode)
    {
      if (mode != 1)
      {
        return result;
      }

      return [(CAMCaptureCapabilities *)self _smartStylesAdditionalSystemStyleSupport:v4];
    }

    return -1;
  }

  if (mode == 7)
  {
    return [(CAMCaptureCapabilities *)self _smartStylesAdditionalSystemStyleSupport:v4];
  }

  if (mode == 6)
  {
    return -1;
  }

  return result;
}

- (id)captureStyleForCaptureWithSupport:(unint64_t)support styles:(id)styles selectedStyleIndex:(unint64_t)index smartStyleSystemStyleIndex:(unint64_t)styleIndex
{
  supportCopy = support;
  stylesCopy = styles;
  v11 = stylesCopy;
  if ((supportCopy & 2) != 0)
  {
    if ([stylesCopy count] > index)
    {
      v13 = v11;
      styleIndexCopy = index;
LABEL_7:
      systemStyle = [v13 objectAtIndexedSubscript:styleIndexCopy];
      goto LABEL_19;
    }

    v15 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [CAMCaptureCapabilities captureStyleForCaptureWithSupport:v11 styles:? selectedStyleIndex:? smartStyleSystemStyleIndex:?];
    }

LABEL_13:
    v16 = 0;
    goto LABEL_20;
  }

  if (![(CAMCaptureCapabilities *)self smartStylesSupported])
  {
    if (supportCopy)
    {
      systemStyle = +[CAMSemanticStyle standardStyle];
      goto LABEL_19;
    }

    goto LABEL_13;
  }

  if (supportCopy)
  {
    if ([v11 count] <= styleIndex)
    {
      v17 = os_log_create("com.apple.camera", "Camera");
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [CAMCaptureCapabilities captureStyleForCaptureWithSupport:v11 styles:? selectedStyleIndex:? smartStyleSystemStyleIndex:?];
      }

      systemStyle = [MEMORY[0x1E6993890] systemStyle];
      goto LABEL_19;
    }

    v13 = v11;
    styleIndexCopy = styleIndex;
    goto LABEL_7;
  }

  systemStyle = [MEMORY[0x1E6993890] identityStyle];
LABEL_19:
  v16 = systemStyle;
LABEL_20:

  return v16;
}

- (id)captureStyleForPreviewWithSupport:(unint64_t)support styles:(id)styles selectedStyleIndex:(unint64_t)index smartStyleSystemStyleIndex:(unint64_t)styleIndex
{
  stylesCopy = styles;
  if ([(CAMCaptureCapabilities *)self smartStylesSupported])
  {
    v11 = [(CAMCaptureCapabilities *)self captureStyleForCaptureWithSupport:support styles:stylesCopy selectedStyleIndex:index smartStyleSystemStyleIndex:styleIndex];
LABEL_3:
    v12 = v11;
    goto LABEL_11;
  }

  if ((support & 4) != 0)
  {
    if ([stylesCopy count] > index)
    {
      v11 = [stylesCopy objectAtIndexedSubscript:index];
      goto LABEL_3;
    }

    v13 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [CAMCaptureCapabilities captureStyleForCaptureWithSupport:stylesCopy styles:? selectedStyleIndex:? smartStyleSystemStyleIndex:?];
    }
  }

  v12 = 0;
LABEL_11:

  return v12;
}

+ (BOOL)isCameraAppInstalled
{
  defaultWorkspace = [MEMORY[0x1E6963608] defaultWorkspace];
  v3 = [defaultWorkspace applicationIsInstalled:@"com.apple.camera"];

  return (CFPreferencesGetAppBooleanValue(@"CAMFeatureDevelopmentEmulateAppDeletedSettings", @"com.apple.camera", 0) == 0) & v3;
}

+ (BOOL)isMessagesAppInstalled
{
  defaultWorkspace = [MEMORY[0x1E6963608] defaultWorkspace];
  v3 = [defaultWorkspace applicationIsInstalled:@"com.apple.MobileSMS"];

  return (CFPreferencesGetAppBooleanValue(@"CAMFeatureDevelopmentEmulateAppDeletedSettings", @"com.apple.camera", 0) == 0) & v3;
}

- (BOOL)enhancedHEICResolutionSupported
{
  if ([(CAMCaptureCapabilities *)self frontEnhancedHEICResolutionSupported])
  {
    return 1;
  }

  return [(CAMCaptureCapabilities *)self backEnhancedHEICResolutionSupported];
}

- (BOOL)enhancedRAWResolutionSupported
{
  _backCameraSupportedRAWResolutionsByMode = [(CAMCaptureCapabilities *)self _backCameraSupportedRAWResolutionsByMode];
  v3 = [_backCameraSupportedRAWResolutionsByMode count] != 0;

  return v3;
}

- (BOOL)backEnhancedHEICResolutionSupported
{
  _backCameraSupportedCompressedResolutionsByMode = [(CAMCaptureCapabilities *)self _backCameraSupportedCompressedResolutionsByMode];
  v3 = [_backCameraSupportedCompressedResolutionsByMode count] != 0;

  return v3;
}

- (BOOL)isPhotoResolutionSupported:(int64_t)supported forPhotoEncoding:(int64_t)encoding
{
  if ([(CAMCaptureCapabilities *)self isPhotoResolutionSupported:supported forMode:0 device:0 photoEncoding:encoding])
  {
    return 1;
  }

  return [(CAMCaptureCapabilities *)self isPhotoResolutionSupported:supported forMode:0 device:1 photoEncoding:encoding];
}

- (BOOL)isPhotoResolutionSupported:(int64_t)supported forMode:(int64_t)mode device:(int64_t)device photoEncoding:(int64_t)encoding
{
  if (!supported)
  {
    return 1;
  }

  if ((device - 1) > 0xA)
  {
    v7 = 0;
  }

  else
  {
    v7 = qword_1A3A6A2E8[device - 1];
  }

  v9 = [(CAMCaptureCapabilities *)self supportedPhotoResolutionsForMode:mode devicePosition:v7 photoEncoding:encoding];
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:supported];
  v11 = [v9 containsObject:v10];

  return v11;
}

- (BOOL)isPhotoResolutionSupported:(int64_t)supported forLightingType:(int64_t)type
{
  if ((supported - 1) > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = qword_1A3A6A2D0[supported - 1];
  }

  v5 = 12;
  if (type == 1)
  {
    v5 = 24;
  }

  return !type || v5 >= v4;
}

- (int64_t)maximumPhotoResolutionForMode:(int64_t)mode device:(int64_t)device encoding:(int64_t)encoding
{
  if ((device - 1) > 0xA)
  {
    v11 = 0;
  }

  else
  {
    v11 = qword_1A3A6A2E8[device - 1];
  }

  v12 = [(CAMCaptureCapabilities *)self supportedPhotoResolutionsForMode:mode devicePosition:v11 photoEncoding:encoding, v8, v7, v6, v5, v9, v10];
  v13 = v12;
  if (v12)
  {
    lastObject = [v12 lastObject];
    integerValue = [lastObject integerValue];
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

- (id)supportedPhotoResolutionsForMode:(int64_t)mode devicePosition:(int64_t)position photoEncoding:(int64_t)encoding
{
  if (encoding < 2)
  {
    if (position)
    {
      [(CAMCaptureCapabilities *)self _frontCameraSupportedCompressedResolutionsByMode];
    }

    else
    {
      [(CAMCaptureCapabilities *)self _backCameraSupportedCompressedResolutionsByMode];
    }

    v6 = LABEL_4:;
    v7 = v6;
    goto LABEL_11;
  }

  if (encoding == 2)
  {
    if (position)
    {
      [(CAMCaptureCapabilities *)self _frontCameraSupportedRAWResolutionsByMode];
    }

    else
    {
      [(CAMCaptureCapabilities *)self _backCameraSupportedRAWResolutionsByMode];
    }

    goto LABEL_4;
  }

  v7 = 0;
LABEL_11:
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:{mode, position}];
  v9 = [v7 objectForKeyedSubscript:v8];

  return v9;
}

- (BOOL)supportsOverlappingCapturesForResolution:(int64_t)resolution
{
  if (resolution < 3)
  {
    return 1;
  }

  if (resolution == 3)
  {
    return [(CAMCaptureCapabilities *)self _overlapping48MPCapturesSupported];
  }

  return 0;
}

- (BOOL)isPhotoFormatSupported:(id)supported forMode:(int64_t)mode device:(int64_t)device
{
  var1 = supported.var1;
  var0 = supported.var0;
  if (supported.var0)
  {
    if (supported.var0 == 1)
    {
      if (![(CAMCaptureCapabilities *)self isHEVCEncodingSupported])
      {
        return 0;
      }
    }

    else if (supported.var0 != 2 || ![(CAMCaptureCapabilities *)self isLinearDNGSupported])
    {
      return 0;
    }
  }

  return [(CAMCaptureCapabilities *)self isPhotoResolutionSupported:var1 forMode:mode device:device photoEncoding:var0];
}

- (BOOL)isPreviewAspectRatioToggleSupportedForMode:(int64_t)mode
{
  isiPad = [(CAMCaptureCapabilities *)self isiPad];
  if (isiPad)
  {
    LOBYTE(isiPad) = 0;
    if (mode <= 7)
    {
      if (((1 << mode) & 0xA6) != 0)
      {
        LOBYTE(isiPad) = 1;
      }

      else if (((1 << mode) & 0x41) != 0)
      {

        LOBYTE(isiPad) = [(CAMCaptureCapabilities *)self _isPreviewAspectRatioToggleSupportedForPhotoModes];
      }
    }
  }

  return isiPad;
}

- (BOOL)isZoomPIPSupportedForMode:(int64_t)mode devicePosition:(int64_t)position frontRearSimultaneousVideoEnabled:(BOOL)enabled
{
  isZoomPIPSupported = [(CAMCaptureCapabilities *)self isZoomPIPSupported];
  result = 0;
  if (isZoomPIPSupported && !enabled)
  {
    if (mode >= 2)
    {
      v11 = mode == 2 && [(CAMCaptureCapabilities *)self _zoomPIPSupportedForSlomo];
    }

    else
    {
      v11 = 1;
    }

    return position == 0 && v11;
  }

  return result;
}

- (BOOL)isDeferredProcessingSupportedForMode:(int64_t)mode devicePosition:(int64_t)position
{
  switch(mode)
  {
    case 9:
      return [(CAMCaptureCapabilities *)self isDeferredProcessingSupported];
    case 6:
      if (position)
      {
        return [(CAMCaptureCapabilities *)self _frontPortraitDeferredProcessingSupported];
      }

      else
      {
        return [(CAMCaptureCapabilities *)self _rearPortraitDeferredProcessingSupported];
      }

    case 0:
      return [(CAMCaptureCapabilities *)self isDeferredProcessingSupported];
    default:
      return 0;
  }
}

- (BOOL)isDeferredProcessingPrewarmingSupportedForMode:(int64_t)mode devicePosition:(int64_t)position
{
  v6 = [(CAMCaptureCapabilities *)self isDeferredProcessingSupportedForMode:mode devicePosition:?];
  if (v6)
  {
    if (position == 1)
    {

      LOBYTE(v6) = [(CAMCaptureCapabilities *)self _frontDeferredProcessingPrewarmingSupported];
    }

    else
    {
      LOBYTE(v6) = 1;
    }
  }

  return v6;
}

- (int64_t)maxSupportedPhotoQualityPrioritizationForMode:(int64_t)mode devicePosition:(int64_t)position
{
  result = 1;
  if (mode <= 5)
  {
    if (mode >= 2)
    {
      if (mode == 5)
      {
        return 0;
      }

      return result;
    }

    goto LABEL_8;
  }

  if (mode != 6)
  {
    if (mode != 9)
    {
      return result;
    }

LABEL_8:
    isDeferredProcessingSupported = [(CAMCaptureCapabilities *)self isDeferredProcessingSupported];
    goto LABEL_10;
  }

  isDeferredProcessingSupported = [(CAMCaptureCapabilities *)self isDeferredProcessingSupportedForMode:6 devicePosition:position];
LABEL_10:
  if (isDeferredProcessingSupported)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (BOOL)isExternalStorageOutputSupportedForMode:(int64_t)mode videoEncodingBehavior:(int64_t)behavior
{
  result = 0;
  if (mode <= 4)
  {
    if (mode == 1)
    {
      if (behavior >= 2)
      {
        return behavior == 2;
      }
    }

    else if (mode != 2)
    {
      return result;
    }
  }

  else if (mode != 5)
  {
    if (mode == 7)
    {
      if (behavior >= 2)
      {
        if (behavior != 2)
        {
          return 0;
        }

        if ([(CAMCaptureCapabilities *)self _isProResCinematicVideoSupported])
        {
          return 1;
        }
      }
    }

    else if (mode != 8)
    {
      return result;
    }
  }

  return [(CAMCaptureCapabilities *)self _isExternalStoreSupportedForAllVideoFormats];
}

- (BOOL)isPauseVideoSupportedForMode:(int64_t)mode
{
  _supportedModesForPauseResumeVideo = [(CAMCaptureCapabilities *)self _supportedModesForPauseResumeVideo];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:mode];
  v6 = [_supportedModesForPauseResumeVideo containsObject:v5];

  return v6;
}

- (BOOL)isPreserveCreativeControlsSupported
{
  if ([(CAMCaptureCapabilities *)self isiPad])
  {
    return 0;
  }

  if ([(CAMCaptureCapabilities *)self isLiveFilteringSupported])
  {
    return 1;
  }

  return [(CAMCaptureCapabilities *)self arePortraitEffectsSupported];
}

- (BOOL)fallbackCameraEnabled
{
  if (![(CAMCaptureCapabilities *)self fallbackCameraSupported])
  {
    return 0;
  }

  fallbackCameraModules = [(CAMCaptureCapabilities *)self fallbackCameraModules];
  v4 = fallbackCameraModules != 0;

  return v4;
}

- (BOOL)isSmudgeDetectionSupportedForMode:(int64_t)mode
{
  result = [(CAMCaptureCapabilities *)self isSmudgeDetectionSupported];
  if ((mode & 0xFFFFFFFFFFFFFFFBLL) != 0)
  {
    return 0;
  }

  return result;
}

- (BOOL)isSmartFramingSupportedForMode:(int64_t)mode devicePosition:(int64_t)position
{
  isSmartFramingSupported = [(CAMCaptureCapabilities *)self isSmartFramingSupported];
  if (mode)
  {
    v7 = 0;
  }

  else
  {
    v7 = position == 1;
  }

  v8 = v7;
  return isSmartFramingSupported && v8;
}

- (double)zoomFactorForSmartFramingFieldOfView:(int64_t)view
{
  if (view > 2)
  {
    if (view != 3)
    {
      if (view == 4)
      {
        [(CAMCaptureCapabilities *)self smartFramingFieldOfViewLandscapeZoomFactor];
        return result;
      }

      return 1.0;
    }

    [(CAMCaptureCapabilities *)self smartFramingFieldOfViewZoomedOutLandscapeZoomFactor];
  }

  else
  {
    if (view != 1)
    {
      if (view == 2)
      {
        [(CAMCaptureCapabilities *)self smartFramingFieldOfViewZoomedOutPortraitZoomFactor];
        return result;
      }

      return 1.0;
    }

    [(CAMCaptureCapabilities *)self smartFramingFieldOfViewPortraitZoomFactor];
  }

  return result;
}

- (CGSize)mainScreenSizePixels
{
  width = self->_mainScreenSizePixels.width;
  height = self->_mainScreenSizePixels.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)mainScreenSizePoints
{
  width = self->_mainScreenSizePoints.width;
  height = self->_mainScreenSizePoints.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGRect)_lockButtonFrame
{
  x = self->__lockButtonFrame.origin.x;
  y = self->__lockButtonFrame.origin.y;
  width = self->__lockButtonFrame.size.width;
  height = self->__lockButtonFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)_volumeUpButtonFrame
{
  x = self->__volumeUpButtonFrame.origin.x;
  y = self->__volumeUpButtonFrame.origin.y;
  width = self->__volumeUpButtonFrame.size.width;
  height = self->__volumeUpButtonFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)_volumeDownButtonFrame
{
  x = self->__volumeDownButtonFrame.origin.x;
  y = self->__volumeDownButtonFrame.origin.y;
  width = self->__volumeDownButtonFrame.size.width;
  height = self->__volumeDownButtonFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)_cameraButtonFrame
{
  x = self->__cameraButtonFrame.origin.x;
  y = self->__cameraButtonFrame.origin.y;
  width = self->__cameraButtonFrame.size.width;
  height = self->__cameraButtonFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)captureStyleForCaptureWithSupport:(void *)a1 styles:selectedStyleIndex:smartStyleSystemStyleIndex:.cold.1(void *a1)
{
  [a1 count];
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1_2(&dword_1A3640000, v1, v2, "Selected semantic style index %ld is out of range 0-%ld", v3, v4, v5, v6, v7);
}

- (void)captureStyleForCaptureWithSupport:(void *)a1 styles:selectedStyleIndex:smartStyleSystemStyleIndex:.cold.2(void *a1)
{
  [a1 count];
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1_2(&dword_1A3640000, v1, v2, "System style index %ld is out of range 0-%ld", v3, v4, v5, v6, v7);
}

@end