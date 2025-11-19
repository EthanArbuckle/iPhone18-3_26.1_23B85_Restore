@interface CAMCaptureCapabilities
+ (BOOL)isCameraAppInstalled;
+ (BOOL)isMessagesAppInstalled;
+ (CAMCaptureCapabilities)capabilities;
- ($F24F406B2B787EFB06265DBA3D28CBD5)tripleCameraSwitchOverZoomFactorsForDevicePosition:(int64_t)a3;
- (BOOL)_is1080p120SlomoSupportedForDevice:(int64_t)a3;
- (BOOL)_isLensPositionControlSupportedForMode:(int64_t)a3;
- (BOOL)_isLensPositionControlSupportedForResolvedDevice:(int64_t)a3;
- (BOOL)_isSpatialOverCaptureSupportedForDevice:(int64_t)a3;
- (BOOL)_isSpatialPhotoModeSupportedForDevice:(int64_t)a3;
- (BOOL)_isSpatialVideoModeSupportedForDevice:(int64_t)a3;
- (BOOL)_isSuperWideZoomSupportedForMode:(int64_t)a3 devicePosition:(int64_t)a4 videoConfiguration:(int64_t)a5;
- (BOOL)_needsForcedSingleCameraEmulationForVideoStabilizationStrength:(int64_t)a3 videoConfiguration:(int64_t)a4 mode:(int64_t)a5;
- (BOOL)_shouldAllowCameraToggleForMode:(int64_t)a3 devicePosition:(int64_t)a4 videoConfiguration:(int64_t)a5 videoStabilizationStrength:(int64_t)a6 frontRearSimultaneousVideoEnabled:(BOOL)a7;
- (BOOL)backEnhancedHEICResolutionSupported;
- (BOOL)enhancedHEICResolutionSupported;
- (BOOL)enhancedRAWResolutionSupported;
- (BOOL)fallbackCameraEnabled;
- (BOOL)is1080p120VideoSupportedForDevice:(int64_t)a3;
- (BOOL)is1080p240SupportedForDevice:(int64_t)a3;
- (BOOL)is1080p60VideoSupportedForDevice:(int64_t)a3;
- (BOOL)is4K120VideoSupportedForDevice:(int64_t)a3;
- (BOOL)is4k24VideoSupportedForDevice:(int64_t)a3;
- (BOOL)is4k30VideoSupportedForDevice:(int64_t)a3;
- (BOOL)is4k60VideoSupportedForDevice:(int64_t)a3;
- (BOOL)is720p240SupportedForDevice:(int64_t)a3;
- (BOOL)isActionModeControlSupportedForMode:(int64_t)a3 device:(int64_t)a4 videoConfiguration:(int64_t)a5 videoEncodingBehavior:(int64_t)a6 trueVideoEnabled:(BOOL)a7 prefersHDR10BitVideo:(BOOL)a8 frontRearSimultaneousVideoEnabled:(BOOL)a9;
- (BOOL)isAspectRatioCropSupportedForMode:(int64_t)a3 devicePosition:(int64_t)a4;
- (BOOL)isAutoFPSVideoSupportedForMode:(int64_t)a3 videoConfiguration:(int64_t)a4 videoEncodingBehavior:(int64_t)a5 outputToExternalStorage:(BOOL)a6 prefersHDR10BitVideo:(BOOL)a7 frontRearSimultaneousVideoEnabled:(BOOL)a8;
- (BOOL)isAutoLowLightVideoSupportedForMode:(int64_t)a3 videoConfiguration:(int64_t)a4 videoEncodingBehavior:(int64_t)a5;
- (BOOL)isBurstSupportedForMode:(int64_t)a3 device:(int64_t)a4;
- (BOOL)isCameraSupportedForDevice:(int64_t)a3;
- (BOOL)isCameraSupportedForDevicePosition:(int64_t)a3;
- (BOOL)isCinematicAudioSupportedForMode:(int64_t)a3;
- (BOOL)isCinematicModeSupportedForDevice:(int64_t)a3;
- (BOOL)isCinematicModeSupportedForDevicePosition:(int64_t)a3;
- (BOOL)isCustomLensSupportedForMode:(int64_t)a3 device:(int64_t)a4 isTrueVideo:(BOOL)a5;
- (BOOL)isCustomLensSupportedForPhotoResolution:(int64_t)a3;
- (BOOL)isDeferredProcessingPrewarmingSupportedForMode:(int64_t)a3 devicePosition:(int64_t)a4;
- (BOOL)isDeferredProcessingSupportedForMode:(int64_t)a3 devicePosition:(int64_t)a4;
- (BOOL)isDepthEffectApertureSupportedForMode:(int64_t)a3 devicePosition:(int64_t)a4;
- (BOOL)isDepthEffectApertureSupportedForMode:(int64_t)a3 devicePosition:(int64_t)a4 depthSuggestionEnabled:(BOOL)a5;
- (BOOL)isDualDeviceDisparitySupportedForMode:(int64_t)a3 devicePosition:(int64_t)a4;
- (BOOL)isDualSupported;
- (BOOL)isDualSupportedForDevicePosition:(int64_t)a3;
- (BOOL)isDualSupportedForMode:(int64_t)a3 devicePosition:(int64_t)a4 videoConfiguration:(int64_t)a5 videoStabilizationStrength:(int64_t)a6;
- (BOOL)isDynamicAspectRatioSupportedForMode:(int64_t)a3 devicePosition:(int64_t)a4;
- (BOOL)isDynamicAspectRatioSupportedForMode:(int64_t)a3 videoConfiguration:(int64_t)a4 devicePosition:(int64_t)a5;
- (BOOL)isEnhancedStabilizationSupportedForMode:(int64_t)a3 device:(int64_t)a4 videoConfiguration:(int64_t)a5 videoEncodingBehavior:(int64_t)a6 trueVideoEnabled:(BOOL)a7 prefersHDR10BitVideo:(BOOL)a8 frontRearSimultaneousVideoEnabled:(BOOL)a9;
- (BOOL)isExposureClippingIndicatorSupportedForMode:(int64_t)a3 videoConfiguration:(int64_t)a4;
- (BOOL)isExternalStorageOutputSupportedForMode:(int64_t)a3 videoEncodingBehavior:(int64_t)a4;
- (BOOL)isFlashOrTorchSupportedForMode:(int64_t)a3 devicePosition:(int64_t)a4;
- (BOOL)isFlashSupportedForDevicePosition:(int64_t)a3;
- (BOOL)isFrontRearSimultaneousVideoSupportedForMode:(int64_t)a3;
- (BOOL)isFrontRearSimultaneousVideoSupportedForMode:(int64_t)a3 devicePosition:(int64_t)a4;
- (BOOL)isFrontRearSimultaneousVideoSupportedForVideoConfiguration:(int64_t)a3;
- (BOOL)isHDR10BitSlomoSupportedForDevice:(int64_t)a3;
- (BOOL)isHDR10BitVideoSupportedForVideoConfiguration:(int64_t)a3 videoEncodingBehavior:(int64_t)a4;
- (BOOL)isHDROnSupportedForDevicePosition:(int64_t)a3;
- (BOOL)isHDRSupportedForDevicePosition:(int64_t)a3;
- (BOOL)isHDRSupportedForMode:(int64_t)a3 devicePosition:(int64_t)a4;
- (BOOL)isImageAnalysisSupportedForMode:(int64_t)a3 devicePosition:(int64_t)a4;
- (BOOL)isLensPositionControlSupportedForMode:(int64_t)a3 device:(int64_t)a4 videoConfiguration:(int64_t)a5 videoStabilizationStrength:(int64_t)a6 frontRearSimultaneousVideoEnabled:(BOOL)a7;
- (BOOL)isLightingControlSupportedForMode:(int64_t)a3;
- (BOOL)isLivePhotoSupported;
- (BOOL)isLivePhotoSupportedForDevicePosition:(int64_t)a3;
- (BOOL)isLivePreviewSupportedForLightingType:(int64_t)a3 devicePosition:(int64_t)a4;
- (BOOL)isNightModeSupported;
- (BOOL)isNightModeSupportedForMode:(int64_t)a3 device:(int64_t)a4;
- (BOOL)isNightModeSupportedForMode:(int64_t)a3 device:(int64_t)a4 zoomFactor:(double)a5;
- (BOOL)isNightModeWithDepthSupportedForMode:(int64_t)a3 device:(int64_t)a4;
- (BOOL)isPanoramaSupportedForDevice:(int64_t)a3;
- (BOOL)isPauseVideoSupportedForMode:(int64_t)a3;
- (BOOL)isPearlSupportedForDevicePosition:(int64_t)a3;
- (BOOL)isPearlSupportedForMode:(int64_t)a3 devicePosition:(int64_t)a4;
- (BOOL)isPhotoFormatSupported:(id)a3 forMode:(int64_t)a4 device:(int64_t)a5;
- (BOOL)isPhotoModeDepthSuggestionSupportedForDevicePosition:(int64_t)a3;
- (BOOL)isPhotoResolutionSupported:(int64_t)a3 forLightingType:(int64_t)a4;
- (BOOL)isPhotoResolutionSupported:(int64_t)a3 forMode:(int64_t)a4 device:(int64_t)a5 photoEncoding:(int64_t)a6;
- (BOOL)isPhotoResolutionSupported:(int64_t)a3 forPhotoEncoding:(int64_t)a4;
- (BOOL)isPortraitEffectIntensitySupportedForMode:(int64_t)a3;
- (BOOL)isPortraitModeSupported;
- (BOOL)isPortraitModeSupportedForDevice:(int64_t)a3;
- (BOOL)isPortraitModeSupportedForDevicePosition:(int64_t)a3;
- (BOOL)isPortraitZoomSupportedForDevicePosition:(int64_t)a3;
- (BOOL)isPreserveCreativeControlsSupported;
- (BOOL)isPreviewAspectRatioToggleSupportedForMode:(int64_t)a3;
- (BOOL)isProResVideoSupportedForMode:(int64_t)a3 frontRearSimultaneousVideoEnabled:(BOOL)a4;
- (BOOL)isProResVideoSupportedForMode:(int64_t)a3 videoConfiguration:(int64_t)a4 outputToExternalStorage:(BOOL)a5 frontRearSimultaneousVideoEnabled:(BOOL)a6;
- (BOOL)isQuadraTeleBinningReconfigurationSupportedForMode:(int64_t)a3 devicePosition:(int64_t)a4 videoConfiguration:(int64_t)a5;
- (BOOL)isQuadraWideBinningReconfigurationSupportedForMode:(int64_t)a3 devicePosition:(int64_t)a4 videoConfiguration:(int64_t)a5;
- (BOOL)isQuadraWideSupported;
- (BOOL)isResponsiveShutterSupportedForMode:(int64_t)a3;
- (BOOL)isSemanticDevelopmentSupportedForMode:(int64_t)a3;
- (BOOL)isSingleCameraPortraitModeSupportedForDevicePosition:(int64_t)a3;
- (BOOL)isSlomoSupportedForDevice:(int64_t)a3;
- (BOOL)isSmartFramingSupportedForMode:(int64_t)a3 devicePosition:(int64_t)a4;
- (BOOL)isSmartHDRSupported;
- (BOOL)isSmartHDRSupportedForMode:(int64_t)a3 devicePosition:(int64_t)a4;
- (BOOL)isSmudgeDetectionSupportedForMode:(int64_t)a3;
- (BOOL)isSpatialOverCaptureSupported;
- (BOOL)isStereoAudioRecordingSupportedForMode:(int64_t)a3;
- (BOOL)isSuperWideAutoMacroSupportedForMode:(int64_t)a3 device:(int64_t)a4 videoConfiguration:(int64_t)a5 videoStabilizationStrength:(int64_t)a6 frontRearSimultaneousVideoEnabled:(BOOL)a7;
- (BOOL)isSuperWideSupported;
- (BOOL)isSuperWideSupportedForDevicePosition:(int64_t)a3;
- (BOOL)isSuperWideSupportedForMode:(int64_t)a3 devicePosition:(int64_t)a4 videoConfiguration:(int64_t)a5;
- (BOOL)isSupportedMode:(int64_t)a3 withDevice:(int64_t)a4;
- (BOOL)isSupportedVideoConfiguration:(int64_t)a3 forMode:(int64_t)a4 device:(int64_t)a5;
- (BOOL)isSupportedVideoConfiguration:(int64_t)a3 forMode:(int64_t)a4 device:(int64_t)a5 trueVideoEnabled:(BOOL)a6 frontRearSimultaneousVideoEnabled:(BOOL)a7;
- (BOOL)isSupportedVideoConfiguration:(int64_t)a3 forMode:(int64_t)a4 videoEncodingBehavior:(int64_t)a5 outputToExternalStorage:(BOOL)a6 frontRearSimultaneousVideoEnabled:(BOOL)a7;
- (BOOL)isTelephotoSupported;
- (BOOL)isTelephotoSupportedForDevicePosition:(int64_t)a3;
- (BOOL)isTelephotoSupportedForMode:(int64_t)a3 devicePosition:(int64_t)a4 videoConfiguration:(int64_t)a5;
- (BOOL)isTimeOfFlightSupported;
- (BOOL)isTimeOfFlightSupportedForDevicePosition:(int64_t)a3;
- (BOOL)isTimelapseSupportedForDevice:(int64_t)a3;
- (BOOL)isTorchPatternSupportedForDevicePosition:(int64_t)a3;
- (BOOL)isTorchSupportedForDevicePosition:(int64_t)a3;
- (BOOL)isTripleCameraSupported;
- (BOOL)isTripleCameraSupportedForDevicePosition:(int64_t)a3;
- (BOOL)isTripleCameraSupportedForMode:(int64_t)a3 devicePosition:(int64_t)a4 videoConfiguration:(int64_t)a5 videoStabilizationStrength:(int64_t)a6 frontRearSimultaneousVideoEnabled:(BOOL)a7;
- (BOOL)isVariableFramerateVideoSupportedForMode:(int64_t)a3 videoConfiguration:(int64_t)a4 videoEncodingBehavior:(int64_t)a5 outputToExternalStorage:(BOOL)a6 prefersHDR10BitVideo:(BOOL)a7 frontRearSimultaneousVideoEnabled:(BOOL)a8;
- (BOOL)isVideoStabilizationStrength:(int64_t)a3 supportedForMode:(int64_t)a4 device:(int64_t)a5 videoConfiguration:(int64_t)a6 videoEncodingBehavior:(int64_t)a7 outputToExternalStorage:(BOOL)a8 trueVideoEnabled:(BOOL)a9 prefersHDR10BitVideo:(BOOL)a10 frontRearSimultaneousVideoEnabled:(BOOL)a11;
- (BOOL)isVideoStabilizationStrength:(int64_t)a3 supportedForMode:(int64_t)a4 devicePosition:(int64_t)a5 trueVideoEnabled:(BOOL)a6 frontRearSimultaneousVideoEnabled:(BOOL)a7;
- (BOOL)isWideDualSupported;
- (BOOL)isWideDualSupportedForDevicePosition:(int64_t)a3;
- (BOOL)isWideDualSupportedForMode:(int64_t)a3 devicePosition:(int64_t)a4 videoConfiguration:(int64_t)a5 videoStabilizationStrength:(int64_t)a6;
- (BOOL)isWideSupportedForDevicePosition:(int64_t)a3;
- (BOOL)isWideSupportedForMode:(int64_t)a3 devicePosition:(int64_t)a4 videoConfiguration:(int64_t)a5;
- (BOOL)isZoomAllowedForMode:(int64_t)a3 device:(int64_t)a4 videoConfiguration:(int64_t)a5 videoStabilizationStrength:(int64_t)a6;
- (BOOL)isZoomPIPSupportedForMode:(int64_t)a3 devicePosition:(int64_t)a4 frontRearSimultaneousVideoEnabled:(BOOL)a5;
- (BOOL)isZoomPlatterSupportedForMode:(int64_t)a3 devicePosition:(int64_t)a4 videoConfiguration:(int64_t)a5;
- (BOOL)mirroredFrontCapturesSupportedForMode:(int64_t)a3;
- (BOOL)photoModeDepthSuggestionSupported;
- (BOOL)portraitModeRequiresSubjectForDevicePosition:(int64_t)a3;
- (BOOL)portraitZoomSupported;
- (BOOL)processZoomWithoutUpscaleForDevicePosition:(int64_t)a3;
- (BOOL)shouldAdjustZoomOnOrientationChangeForDevicePosition:(int64_t)a3;
- (BOOL)shouldSuspendVideoHDRForHDRMode:(int64_t)a3 captureMode:(int64_t)a4;
- (BOOL)supportsOverlappingCapturesForResolution:(int64_t)a3;
- (BOOL)usePortraitFrontFacingZoomedCaptureDeviceFormat;
- (BOOL)useSquareFormatForDynamicAspectRatioForMode:(int64_t)a3 videoConfiguration:(int64_t)a4;
- (BOOL)useVideoBinnedForMode:(int64_t)a3 videoConfiguration:(int64_t)a4 devicePosition:(int64_t)a5;
- (BOOL)zoomControlSupported;
- (CAMCaptureCapabilities)initWithHostProcess:(int64_t)a3;
- (CGRect)_cameraButtonFrame;
- (CGRect)_lockButtonFrame;
- (CGRect)_volumeDownButtonFrame;
- (CGRect)_volumeUpButtonFrame;
- (CGRect)frameForPhysicalButton:(int64_t)a3;
- (CGSize)mainScreenSizePixels;
- (CGSize)mainScreenSizePoints;
- (NSArray)defaultCustomLensGroup;
- (NSArray)supportedAspectRatioCropValues;
- (double)_doubleForKey:(id)a3 applicationID:(id)a4;
- (double)captureIntervalForDevice:(int64_t)a3;
- (double)defaultDepthEffectApertureForMode:(int64_t)a3 device:(int64_t)a4 zoomFactor:(double)a5;
- (double)defaultPortraitEffectIntensity;
- (double)defaultZoomFactorForGraphConfiguration:(id)a3 captureOrientation:(int64_t)a4 customLens:(int64_t)a5 outputToExternalStorage:(BOOL)a6 overrodeWithForcedZoomValue:(BOOL *)a7;
- (double)defaultZoomFactorForMode:(int64_t)a3 device:(int64_t)a4 videoConfiguration:(int64_t)a5 captureOrientation:(int64_t)a6;
- (double)defaultZoomFactorForMode:(int64_t)a3 device:(int64_t)a4 videoConfiguration:(int64_t)a5 captureOrientation:(int64_t)a6 videoStabilizationStrength:(int64_t)a7 videoEncodingBehavior:(int64_t)a8 customLens:(int64_t)a9 outputToExternalStorage:(BOOL)a10 isTrueVideo:(BOOL)a11 frontRearSimultaneousVideoEnabled:(BOOL)a12 prefersHDR10BitVideo:(BOOL)a13 smartFramingFieldOfView:(int64_t)a14 overrodeWithForcedZoomValue:(BOOL *)a15;
- (double)maximumDepthEffectApertureForMode:(int64_t)a3 device:(int64_t)a4;
- (double)maximumPortraitEffectIntensity;
- (double)maximumZoomFactorForMode:(int64_t)a3 device:(int64_t)a4 videoConfiguration:(int64_t)a5 videoStabilizationStrength:(int64_t)a6 shouldResolveDevice:(BOOL)a7;
- (double)minimumDepthEffectApertureForMode:(int64_t)a3 device:(int64_t)a4;
- (double)superWideToWideZoomFactorForDevicePosition:(int64_t)a3;
- (double)wideToTelephotoZoomFactorForDevicePosition:(int64_t)a3;
- (double)zoomFactorForCustomLensZoomFactor:(double)a3;
- (double)zoomFactorForSmartFramingFieldOfView:(int64_t)a3;
- (id)captureStyleForCaptureWithSupport:(unint64_t)a3 styles:(id)a4 selectedStyleIndex:(unint64_t)a5 smartStyleSystemStyleIndex:(unint64_t)a6;
- (id)captureStyleForPreviewWithSupport:(unint64_t)a3 styles:(id)a4 selectedStyleIndex:(unint64_t)a5 smartStyleSystemStyleIndex:(unint64_t)a6;
- (id)significantZoomFactorsForMode:(int64_t)a3 device:(int64_t)a4;
- (id)supportedCustomLensGroupForGroup:(id)a3;
- (id)supportedPhotoResolutionsForMode:(int64_t)a3 devicePosition:(int64_t)a4 photoEncoding:(int64_t)a5;
- (int64_t)_forcedBackDeviceForMode:(int64_t)a3 videoConfiguration:(int64_t)a4;
- (int64_t)_knownFramerateForVideoConfiguration:(int64_t)a3;
- (int64_t)_nearestCustomLensToLens:(int64_t)a3 inGroup:(id)a4;
- (int64_t)baseFocalLengthForCustomLens:(int64_t)a3;
- (int64_t)bytesPerMinuteForGraphConfiguration:(id)a3 outputToExternalStorage:(BOOL)a4;
- (int64_t)defaultPhotoResolutionForMode:(int64_t)a3 devicePosition:(int64_t)a4 encodingBehavior:(int64_t)a5;
- (int64_t)effectiveFocalLengthForCustomLens:(int64_t)a3;
- (int64_t)fallbackPrimaryConstituentDeviceSelectionForMode:(int64_t)a3 device:(int64_t)a4 videoConfiguration:(int64_t)a5 videoStabilizationStrength:(int64_t)a6 frontRearSimultaneousVideoEnabled:(BOOL)a7 macroMode:(int64_t)a8;
- (int64_t)maxSupportedPhotoQualityPrioritizationForMode:(int64_t)a3 devicePosition:(int64_t)a4;
- (int64_t)maximumPhotoResolutionForMode:(int64_t)a3 device:(int64_t)a4 encoding:(int64_t)a5;
- (int64_t)preferredDeviceForPosition:(int64_t)a3 mode:(int64_t)a4 videoConfiguration:(int64_t)a5 videoStabilizationStrength:(int64_t)a6 frontRearSimultaneousVideoEnabled:(BOOL)a7;
- (int64_t)resolvedDefaultCustomLens;
- (int64_t)resolvedDeviceForDesiredDevice:(int64_t)a3 mode:(int64_t)a4 videoConfiguration:(int64_t)a5 videoStabilizationStrength:(int64_t)a6 frontRearSimultaneousVideoEnabled:(BOOL)a7;
- (int64_t)resolvedVideoConfigurationForMode:(int64_t)a3 device:(int64_t)a4 videoEncodingBehavior:(int64_t)a5 videoConfiguration:(int64_t)a6 outputToExternalStorage:(BOOL)a7 prefersHDR10BitVideo:(BOOL)a8 frontRearSimultaneousVideoEnabled:(BOOL)a9;
- (int64_t)sanitizeDesiredDevice:(int64_t)a3 forMode:(int64_t)a4;
- (int64_t)supportedCustomLensForLens:(int64_t)a3 inGroup:(id)a4;
- (int64_t)supportedEffectSetForDevicePosition:(int64_t)a3;
- (int64_t)validatedVideoConfigurationForVideoConfiguration:(int64_t)a3 withBlock:(id)a4;
- (unint64_t)_desiredSemanticStyleSupportForMode:(int64_t)a3 devicePosition:(int64_t)a4;
- (unint64_t)_desiredSmartStyleSupportForMode:(int64_t)a3 devicePosition:(int64_t)a4;
- (unint64_t)frontZoomBehaviorForCaptureMode:(int64_t)a3 videoConfiguration:(int64_t)a4;
- (unint64_t)nightModePreviewOverlayStyleForDevicePosition:(int64_t)a3 sensitiveToChangingDisplayFeedback:(BOOL)a4 sensitiveToInitialFeedback:(BOOL)a5 duration:(double)a6;
- (unint64_t)semanticStyleSupportForMode:(int64_t)a3 devicePosition:(int64_t)a4;
- (unint64_t)spatialOverCaptureSupportForMode:(int64_t)a3 device:(int64_t)a4;
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

- (CAMCaptureCapabilities)initWithHostProcess:(int64_t)a3
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

  v5->_hostProcess = a3;
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
    v15 = [v14 integerValue];

    v16 = [v12 objectAtIndexedSubscript:1];
    v17 = [v16 integerValue];

    v13 = v17 / 10.0 + v15;
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
  v410 = a3;
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
  v28 = [v27 lowercaseString];

  if ([v28 isEqualToString:@"wide"])
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

  if ([v28 hasPrefix:@"tele"])
  {
    v29 = 3;
    goto LABEL_42;
  }

  if ([v28 isEqualToString:@"superwide"])
  {
    v29 = 5;
    goto LABEL_42;
  }

  if ([v28 isEqualToString:@"bravo"])
  {
    v29 = 4;
    goto LABEL_42;
  }

  if ([v28 isEqualToString:@"widebravo"])
  {
    v29 = 6;
    goto LABEL_42;
  }

  if ([v28 isEqualToString:@"superbravo"])
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
  v383 = v28;
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
  a3 = v410;
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

  if (a3 <= 4 && ((1 << a3) & 0x15) != 0)
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
  if (a3 > 4)
  {
    v86 = v414;
  }

  else
  {
    v86 = v414;
    if (((1 << a3) & 0x15) != 0)
    {
      v85 = v413 != 3 || v32;
    }
  }

  v87 = 0;
  v5->_mixAudioWithOthersSupported = v85;
  if (a3 > 4)
  {
    v88 = v413;
    v89 = obj;
  }

  else
  {
    v88 = v413;
    v89 = obj;
    if (((1 << a3) & 0x15) != 0)
    {
      v87 = v413 != 3;
    }
  }

  v5->_aspectRatioCropSupported = v87;
  v5->__aspectRatioCropThreeTwoSupported = v33;
  v415 = a3 & 0xFFFFFFFFFFFFFFFBLL;
  v90 = (a3 & 0xFFFFFFFFFFFFFFFBLL) == 0;
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
  v94 = [MEMORY[0x1E69DC938] currentDevice];
  v5->_previewSupportedDuringHDR = [v94 _graphicsQuality] == 100;

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
  if (a3 <= 4 && ((1 << a3) & 0x13) != 0)
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
  if (a3 > 5)
  {
    v111 = 0;
    v112 = 0;
  }

  else if (((1 << a3) & 0x15) != 0)
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
  if (a3 > 1)
  {
    if (a3 != 2 && a3 != 4)
    {
      goto LABEL_152;
    }

    goto LABEL_143;
  }

  if (!a3)
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

  if (a3 != 1)
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
  v125 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v125 _referenceBounds];
  [v125 scale];
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
  v396 = v125;
  v144 = (AVGestaltGetBoolAnswer() & 1) != 0 || [(CAMCaptureCapabilities *)v5 featureDevelopmentEmulateSuperWide];
  v374 = (a3 & 0xFFFFFFFFFFFFFFFBLL) == 0;
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
    v192 = [(CAMCaptureCapabilities *)v5 getSupportedCameraModules];
    if ([v192 containsObject:*MEMORY[0x1E6986938]])
    {
      v5->_zoomPlatterSupported = 1;
    }

    else
    {
      v193 = [(CAMCaptureCapabilities *)v5 getSupportedCameraModules];
      v5->_zoomPlatterSupported = [v193 containsObject:*MEMORY[0x1E6986948]];
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
  v199 = (v410 < 5) & (v410 ^ 1);
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
  if (v410 <= 5)
  {
    if (((1 << v410) & 0x2E) != 0)
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
    v223 = [v222 unsignedLongLongValue];

    v224 = 30;
    if (v223 >= 0x1DCD650001)
    {
      v225 = 60;
    }

    else
    {
      v225 = 30;
    }

    if (v223 < 0x1DCD650001)
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

  if (((v410 < 5) & (v410 ^ 1)) != 0)
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
  if ((v410 | 4) == 4)
  {
    v228 = AVGestaltGetBoolAnswer();
  }

  else
  {
    v228 = 0;
  }

  v5->_backCinematicModeSupported = v5->_backCameraSupported & v228;
  v229 = [(CAMCaptureCapabilities *)v5 fallbackCameraEnabled];
  backCinematicModeSupported = v5->_backCinematicModeSupported;
  if (v229 && v5->_backCinematicModeSupported)
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
  v5->_hasFilteringEntitlement = (v410 < 5) & (v410 ^ 1);
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

  v235 = v370 & ((v410 > 5) | (0x11u >> v410));
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
  v245 = (v410 < 5) & (v410 ^ 1);
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
  if ((v410 | 4) == 4)
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

  if (v410 >= 3)
  {
    if (v410 == 3)
    {
      v253 = 1;
      goto LABEL_366;
    }

    if (v410 != 4)
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
  v5->_flashMitigationSupported = (v410 < 5) & (v410 ^ 1);
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
  if (v410 > 4)
  {
    v326 = v404;
  }

  else
  {
    v326 = v404;
    if (((1 << v410) & 0x15) != 0)
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
  if ((v410 | 4) != 4)
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
  v5->_whiteBalanceLockingForVideoRecordingSupported = (v410 < 5) & (0x13u >> v410);
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
  v342 = [(CAMCaptureCapabilities *)v5 fallbackCameraEnabled];
  spatialModeSupported = v5->_spatialModeSupported;
  if (v342 && v5->_spatialModeSupported)
  {
    spatialModeSupported = v5->_backWideDualSupported;
    v5->_spatialModeSupported = spatialModeSupported;
  }

  v5->_spatialModeTrueVideoSupported = spatialModeSupported;
  if (v410 <= 4 && ((1 << v410) & 0x15) != 0)
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
  v347 = (v410 < 5) & (v410 ^ 1) & v346;
  v5->_useMultiCamSession = v347;
  v5->_frontRearSimultaneousVideoSupported = v347;
  v5->_frontRearSimultaneousVideoFrontCameraHDR10Supported = v347 & v399;
  v5->_frontRearSimultaneousVideo60FPSSupported = v347 & v402;
  v5->_frontRearSimultaneousVideoFrontVideoStabilizationSupported = v347 & v400;
  v5->_frontRearSimultaneousVideoDeferredFrontCameraEnabled = v401;
  if ((v410 | 4) == 4)
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
  if (v410 <= 4 && ((1 << v410) & 0x15) != 0)
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
  if (v410 <= 5)
  {
    v5->_multipleCaptureFeaturesSupported = 0x100000001uLL >> (8 * v410);
  }

  CAMSignpostWithIDAndArgs(90, 0xEEEEB0B5B2B2EEEELL, 0, 0, 0, 0);
  v363 = v5;

LABEL_511:
  return v5;
}

- (double)_doubleForKey:(id)a3 applicationID:(id)a4
{
  v4 = CFPreferencesCopyAppValue(a3, a4);
  v5 = 0.0;
  if (v4 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v4 doubleValue];
    v5 = v6;
  }

  return v5;
}

- (BOOL)isCameraSupportedForDevicePosition:(int64_t)a3
{
  if (a3 == 1)
  {
    return [(CAMCaptureCapabilities *)self isFrontCameraSupported];
  }

  if (a3)
  {
    return 0;
  }

  return [(CAMCaptureCapabilities *)self isBackCameraSupported];
}

- (BOOL)isCameraSupportedForDevice:(int64_t)a3
{
  if ((a3 - 1) > 0xA)
  {
    v5 = 0;
  }

  else
  {
    v5 = qword_1A3A6A2E8[a3 - 1];
  }

  v6 = [(CAMCaptureCapabilities *)self isCameraSupportedForDevicePosition:v5];
  if (!v6)
  {
    return v6;
  }

  if (a3 > 5)
  {
    if (a3 > 8)
    {
      if (a3 == 9)
      {

        LOBYTE(v6) = [(CAMCaptureCapabilities *)self isFrontPearlSupported];
      }

      else if (a3 == 10)
      {

        LOBYTE(v6) = [(CAMCaptureCapabilities *)self isFrontSuperWideSupported];
      }

      else
      {
        LOBYTE(v6) = a3 == 11;
      }
    }

    else if (a3 == 6)
    {

      LOBYTE(v6) = [(CAMCaptureCapabilities *)self isBackWideDualSupported];
    }

    else
    {
      if (a3 != 7)
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
    if (a3 <= 2)
    {
      if (!a3)
      {
LABEL_10:

        LOBYTE(v6) = [(CAMCaptureCapabilities *)self isBackCameraSupported];
        return v6;
      }

      if (a3 != 1)
      {
        LOBYTE(v6) = 0;
        if (a3 != 2)
        {
          return v6;
        }

        goto LABEL_10;
      }

      goto LABEL_16;
    }

    if (a3 == 3)
    {

      LOBYTE(v6) = [(CAMCaptureCapabilities *)self isBackTelephotoSupported];
    }

    else if (a3 == 4)
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

- (CGRect)frameForPhysicalButton:(int64_t)a3
{
  v3 = *MEMORY[0x1E695F058];
  v4 = *(MEMORY[0x1E695F058] + 8);
  v5 = *(MEMORY[0x1E695F058] + 16);
  v6 = *(MEMORY[0x1E695F058] + 24);
  if (a3 > 2)
  {
    if (a3 == 3)
    {
      [(CAMCaptureCapabilities *)self _lockButtonFrame:v3];
    }

    else if (a3 == 6)
    {
      [(CAMCaptureCapabilities *)self _cameraButtonFrame:v3];
    }
  }

  else if (a3 == 1)
  {
    [(CAMCaptureCapabilities *)self _volumeUpButtonFrame:v3];
  }

  else if (a3 == 2)
  {
    [(CAMCaptureCapabilities *)self _volumeDownButtonFrame:v3];
  }

  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (BOOL)mirroredFrontCapturesSupportedForMode:(int64_t)a3
{
  v5 = [(CAMCaptureCapabilities *)self isMirroredFrontCapturesSupported];
  if (v5)
  {
    LOBYTE(v5) = 0;
    if (a3 <= 7)
    {
      if (((1 << a3) & 0x51) != 0)
      {
        LOBYTE(v5) = 1;
      }

      else if (((1 << a3) & 0x86) != 0)
      {

        LOBYTE(v5) = [(CAMCaptureCapabilities *)self isMirroredFrontVideosSupported];
      }
    }
  }

  return v5;
}

- (BOOL)isResponsiveShutterSupportedForMode:(int64_t)a3
{
  result = [(CAMCaptureCapabilities *)self responsiveShutterSupported];
  if ((a3 & 0xFFFFFFFFFFFFFFFBLL) != 0)
  {
    return 0;
  }

  return result;
}

- (BOOL)isFlashSupportedForDevicePosition:(int64_t)a3
{
  if (![(CAMCaptureCapabilities *)self isCameraSupportedForDevicePosition:?])
  {
    return 0;
  }

  if (a3 != 1)
  {
    if (!a3)
    {

      return [(CAMCaptureCapabilities *)self isBackFlashSupported];
    }

    return 0;
  }

  return [(CAMCaptureCapabilities *)self isFrontFlashSupported];
}

- (BOOL)isTorchSupportedForDevicePosition:(int64_t)a3
{
  if (![(CAMCaptureCapabilities *)self isCameraSupportedForDevicePosition:?])
  {
    return 0;
  }

  if (a3 != 1)
  {
    if (!a3)
    {

      return [(CAMCaptureCapabilities *)self isBackTorchSupported];
    }

    return 0;
  }

  return [(CAMCaptureCapabilities *)self isFrontTorchSupported];
}

- (BOOL)isHDRSupportedForDevicePosition:(int64_t)a3
{
  if (![(CAMCaptureCapabilities *)self isCameraSupportedForDevicePosition:?])
  {
    return 0;
  }

  if (a3 != 1)
  {
    if (!a3)
    {

      return [(CAMCaptureCapabilities *)self isBackHDRSupported];
    }

    return 0;
  }

  return [(CAMCaptureCapabilities *)self isFrontHDRSupported];
}

- (BOOL)isHDRSupportedForMode:(int64_t)a3 devicePosition:(int64_t)a4
{
  v5 = [(CAMCaptureCapabilities *)self isHDRSupportedForDevicePosition:a4];
  v6 = 0x251u >> a3;
  if (a3 > 9)
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

- (BOOL)isSmartHDRSupportedForMode:(int64_t)a3 devicePosition:(int64_t)a4
{
  if (![(CAMCaptureCapabilities *)self isHDRSupportedForMode:a3 devicePosition:?])
  {
    return 0;
  }

  if (a4 != 1)
  {
    if (!a4)
    {

      return [(CAMCaptureCapabilities *)self isBackSmartHDRSupported];
    }

    return 0;
  }

  return [(CAMCaptureCapabilities *)self isFrontSmartHDRSupported];
}

- (BOOL)isHDR10BitSlomoSupportedForDevice:(int64_t)a3
{
  result = [(CAMCaptureCapabilities *)self isHDR10BitVideoSupported];
  if ((a3 & 0xFFFFFFFFFFFFFFFDLL) != 0)
  {
    return 0;
  }

  return result;
}

- (BOOL)shouldSuspendVideoHDRForHDRMode:(int64_t)a3 captureMode:(int64_t)a4
{
  v6 = [(CAMCaptureCapabilities *)self isSmartHDRSupported];
  v7 = ((1 << a4) & 0x251) != 0 && a3 == 0;
  if (a4 > 9)
  {
    v7 = 0;
  }

  return v6 && v7;
}

- (BOOL)isLivePhotoSupported
{
  if ([(CAMCaptureCapabilities *)self isBackLivePhotoSupported])
  {
    return 1;
  }

  return [(CAMCaptureCapabilities *)self isFrontLivePhotoSupported];
}

- (BOOL)isLivePhotoSupportedForDevicePosition:(int64_t)a3
{
  if (![(CAMCaptureCapabilities *)self isCameraSupportedForDevicePosition:?])
  {
    return 0;
  }

  if (a3 != 1)
  {
    if (!a3)
    {

      return [(CAMCaptureCapabilities *)self isBackLivePhotoSupported];
    }

    return 0;
  }

  return [(CAMCaptureCapabilities *)self isFrontLivePhotoSupported];
}

- (BOOL)isHDROnSupportedForDevicePosition:(int64_t)a3
{
  if (![(CAMCaptureCapabilities *)self isCameraSupportedForDevicePosition:?])
  {
    return 0;
  }

  if (a3 != 1)
  {
    if (!a3)
    {

      return [(CAMCaptureCapabilities *)self isBackHDROnSupported];
    }

    return 0;
  }

  return [(CAMCaptureCapabilities *)self isFrontHDROnSupported];
}

- (BOOL)isLightingControlSupportedForMode:(int64_t)a3
{
  v5 = [(CAMCaptureCapabilities *)self arePortraitEffectsSupported];
  if (v5)
  {
    if (a3 == 6)
    {
      LOBYTE(v5) = 1;
    }

    else if (a3)
    {
      LOBYTE(v5) = 0;
    }

    else
    {

      LOBYTE(v5) = [(CAMCaptureCapabilities *)self _photoModeLightingControlSupported];
    }
  }

  return v5;
}

- (int64_t)supportedEffectSetForDevicePosition:(int64_t)a3
{
  if (a3 == 1)
  {
    v4 = [(CAMCaptureCapabilities *)self _frontStageLightPortaitEffectsSupported];
    goto LABEL_5;
  }

  if (!a3)
  {
    v4 = [(CAMCaptureCapabilities *)self _backStageLightPortaitEffectsSupported];
LABEL_5:
    v5 = v4;
    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:
  v6 = [(CAMCaptureCapabilities *)self supportedPortraitLightingVersion];
  v7 = [(CAMCaptureCapabilities *)self arePortraitEffectsSupported];
  v8 = 2;
  if (v6 == 2)
  {
    v8 = 3;
  }

  if (!v5)
  {
    v8 = 1;
  }

  if (v7)
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

- (BOOL)isLivePreviewSupportedForLightingType:(int64_t)a3 devicePosition:(int64_t)a4
{
  result = [(CAMCaptureCapabilities *)self isPortraitModeSupportedForDevicePosition:a4];
  if ((a3 - 1) >= 3)
  {
    if ((a3 - 4) >= 3)
    {
      return a3 == 0;
    }

    else if (a4 == 1)
    {

      return [(CAMCaptureCapabilities *)self isFrontLiveStageLightSupported];
    }

    else if (a4)
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

- (BOOL)isBurstSupportedForMode:(int64_t)a3 device:(int64_t)a4
{
  v7 = [(CAMCaptureCapabilities *)self isCameraSupportedForDevice:a4];
  if (v7)
  {
    v8 = a3 & 0xFFFFFFFFFFFFFFFBLL;
    if ((a4 - 8) < 4 || a4 == 1)
    {
      v9 = [(CAMCaptureCapabilities *)self isFrontBurstSupported];
    }

    else
    {
      v9 = [(CAMCaptureCapabilities *)self isBackBurstSupported];
    }

    LOBYTE(v7) = v8 == 0 && v9;
  }

  return v7;
}

- (double)captureIntervalForDevice:(int64_t)a3
{
  v4 = (a3 > 0xB) | (0xFDu >> a3);
  v5 = +[CAMUserPreferences preferences];
  [(CAMCaptureCapabilities *)self _backCaptureInterval];
  v7 = v6;
  [(CAMCaptureCapabilities *)self _frontCaptureInterval];
  v9 = v8;
  v10 = [v5 overriddenBackCaptureInterval];
  v11 = [v5 overriddenFrontCaptureInterval];
  if (v4)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
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

- (BOOL)is4k24VideoSupportedForDevice:(int64_t)a3
{
  v5 = [(CAMCaptureCapabilities *)self isCameraSupportedForDevice:?];
  if (v5)
  {
    if ((a3 - 8) < 4 || a3 == 1)
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

- (BOOL)is4k30VideoSupportedForDevice:(int64_t)a3
{
  v5 = [(CAMCaptureCapabilities *)self isCameraSupportedForDevice:?];
  if (v5)
  {
    if ((a3 - 8) < 4 || a3 == 1)
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

- (BOOL)is1080p60VideoSupportedForDevice:(int64_t)a3
{
  if (a3 > 0xA)
  {
    LOBYTE(v8) = 0;
    return v8;
  }

  v10 = v3;
  if (((1 << a3) & 0x7D) == 0)
  {
    if (((1 << a3) & 0x702) != 0)
    {
      v8 = [(CAMCaptureCapabilities *)self front1080pMaxFPS];
      goto LABEL_6;
    }

    LODWORD(v8) = [(CAMCaptureCapabilities *)self _isTripleCamera1080p60Supported];
    if (!v8)
    {
      return v8;
    }
  }

  v8 = [(CAMCaptureCapabilities *)self back1080pMaxFPS:v4];
LABEL_6:
  LOBYTE(v8) = v8 > 59;
  return v8;
}

- (BOOL)is1080p120VideoSupportedForDevice:(int64_t)a3
{
  v5 = _os_feature_enabled_impl();
  if ((a3 | 2) == 2)
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

- (BOOL)is4k60VideoSupportedForDevice:(int64_t)a3
{
  LODWORD(v5) = [(CAMCaptureCapabilities *)self isCameraSupportedForDevice:?];
  if (!v5)
  {
    return v5;
  }

  LOBYTE(v5) = 0;
  if (a3 <= 4)
  {
    if (a3 > 1)
    {
      if ((a3 - 2) >= 2)
      {
        if (a3 == 4)
        {
          LODWORD(v5) = [(CAMCaptureCapabilities *)self isBack4k60VideoSupported];
          if (v5)
          {
            v5 = [(CAMCaptureCapabilities *)self _backDualCameraVideoCapture4kMaxFPS];
LABEL_26:
            LOBYTE(v5) = v5 > 59;
            return v5;
          }
        }

        return v5;
      }

LABEL_21:

      LOBYTE(v5) = [(CAMCaptureCapabilities *)self isBack4k60VideoSupported];
      return v5;
    }

    if (!a3)
    {
      goto LABEL_21;
    }

    if (a3 != 1)
    {
      return v5;
    }

LABEL_15:

    LOBYTE(v5) = [(CAMCaptureCapabilities *)self isFront4k60VideoSupported];
    return v5;
  }

  if (a3 > 6)
  {
    if (a3 == 7)
    {
      LODWORD(v5) = [(CAMCaptureCapabilities *)self isBack4k60VideoSupported];
      if (v5)
      {
        v5 = [(CAMCaptureCapabilities *)self _backTripleCameraVideoCapture4kMaxFPS];
        goto LABEL_26;
      }

      return v5;
    }

    if (a3 != 8 && a3 != 10)
    {
      return v5;
    }

    goto LABEL_15;
  }

  if (a3 == 5)
  {
    goto LABEL_21;
  }

  LODWORD(v5) = [(CAMCaptureCapabilities *)self isBack4k60VideoSupported];
  if (v5)
  {
    v5 = [(CAMCaptureCapabilities *)self _backWideDualCameraVideoCapture4kMaxFPS];
    goto LABEL_26;
  }

  return v5;
}

- (BOOL)is4K120VideoSupportedForDevice:(int64_t)a3
{
  if (![(CAMCaptureCapabilities *)self isCameraSupportedForDevice:?]|| (a3 | 2) != 2)
  {
    return 0;
  }

  return [(CAMCaptureCapabilities *)self isBack4k120VideoSupported];
}

- (BOOL)isSupportedMode:(int64_t)a3 withDevice:(int64_t)a4
{
  v7 = [(CAMCaptureCapabilities *)self isCameraSupportedForDevice:a4];
  if (v7)
  {
    LOBYTE(v7) = 0;
    if (a3 > 4)
    {
      if (a3 <= 6)
      {
        if (a3 == 5)
        {

          LOBYTE(v7) = [(CAMCaptureCapabilities *)self isTimelapseSupportedForDevice:a4];
        }

        else
        {

          LOBYTE(v7) = [(CAMCaptureCapabilities *)self isPortraitModeSupportedForDevice:a4];
        }
      }

      else
      {
        switch(a3)
        {
          case 7:

            LOBYTE(v7) = [(CAMCaptureCapabilities *)self isCinematicModeSupportedForDevice:a4];
            break;
          case 8:

            LOBYTE(v7) = [(CAMCaptureCapabilities *)self _isSpatialVideoModeSupportedForDevice:a4];
            break;
          case 9:

            LOBYTE(v7) = [(CAMCaptureCapabilities *)self _isSpatialPhotoModeSupportedForDevice:a4];
            break;
        }
      }
    }

    else if (a3 <= 1)
    {
      if (a3)
      {
        if (a3 == 1)
        {

          LOBYTE(v7) = [(CAMCaptureCapabilities *)self isVideoSupported];
        }
      }

      else
      {
        LOBYTE(v7) = 1;
      }
    }

    else if (a3 == 2)
    {

      LOBYTE(v7) = [(CAMCaptureCapabilities *)self isSlomoSupportedForDevice:a4];
    }

    else if (a3 == 3)
    {

      LOBYTE(v7) = [(CAMCaptureCapabilities *)self isPanoramaSupportedForDevice:a4];
    }

    else
    {

      LOBYTE(v7) = [(CAMCaptureCapabilities *)self isSquareModeSupported];
    }
  }

  return v7;
}

- (int64_t)sanitizeDesiredDevice:(int64_t)a3 forMode:(int64_t)a4
{
  v5 = a3;
  v28 = *MEMORY[0x1E69E9840];
  if (![(CAMCaptureCapabilities *)self isSupportedMode:a4 withDevice:a3])
  {
    v7 = v5 - 1;
    if (v5 - 1 > 0xA)
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

    if ([(CAMCaptureCapabilities *)self isSupportedMode:a4 withDevice:v10])
    {
      v11 = os_log_create("com.apple.camera", "Camera");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        if (a4 > 9)
        {
          v12 = 0;
        }

        else
        {
          v12 = off_1E76FC100[a4];
        }

        if (v5 > 0xB)
        {
          v19 = 0;
        }

        else
        {
          v19 = off_1E76FC0A0[v5];
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
      v13 = [(CAMCaptureCapabilities *)self isSupportedMode:a4 withDevice:v10 ^ 1];
      v14 = os_log_create("com.apple.camera", "Camera");
      v11 = v14;
      if (v13)
      {
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          if (a4 > 9)
          {
            v15 = 0;
          }

          else
          {
            v15 = off_1E76FC100[a4];
          }

          if (v5 > 0xB)
          {
            v20 = 0;
          }

          else
          {
            v20 = off_1E76FC0A0[v5];
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
        v16 = CAMDebugStringForCaptureMode(a4);
        v17 = CAMDebugStringForCaptureDevice_1(v5);
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

  return v5;
}

- (BOOL)isSupportedVideoConfiguration:(int64_t)a3 forMode:(int64_t)a4 device:(int64_t)a5
{
  LODWORD(v9) = [(CAMCaptureCapabilities *)self isCameraSupportedForDevice:a5];
  if (v9)
  {
    v10 = a4 == 7 && [(CAMCaptureCapabilities *)self isCinematicModeSupported];
    v11 = [(CAMCaptureCapabilities *)self cinematic4KSupported];
    v12 = [(CAMCaptureCapabilities *)self isHEVCEncodingSupported];
    v9 = [(CAMCaptureCapabilities *)self backHighFrameRate4kMaxFPS];
    v13 = v11 && v10;
    switch(a3)
    {
      case 0:
        if (a4 == 1)
        {
          goto LABEL_11;
        }

        if (a4 == 2)
        {
          goto LABEL_67;
        }

        if (v10)
        {

          LOBYTE(v9) = [(CAMCaptureCapabilities *)self isCinematicModeSupportedForDevice:a5];
        }

        else
        {
          if (a4 != 8)
          {
            goto LABEL_81;
          }

          LOBYTE(v9) = [(CAMCaptureCapabilities *)self _isSpatialVideoModeSupportedForDevice:a5];
        }

        return v9;
      case 1:
        if (a4 != 1)
        {
          goto LABEL_81;
        }

        LOBYTE(v9) = [(CAMCaptureCapabilities *)self is1080p60VideoSupportedForDevice:a5];
        return v9;
      case 2:
        if (a4 != 2)
        {
          goto LABEL_81;
        }

LABEL_67:

        LOBYTE(v9) = [(CAMCaptureCapabilities *)self isSlomoSupportedForDevice:a5];
        return v9;
      case 3:
        if (a4 != 2)
        {
          goto LABEL_81;
        }

        LOBYTE(v9) = [(CAMCaptureCapabilities *)self is720p240SupportedForDevice:a5];
        return v9;
      case 4:
        if (a4 == 1 && v12)
        {

          LOBYTE(v9) = [(CAMCaptureCapabilities *)self is1080p120VideoSupportedForDevice:a5];
        }

        else
        {
          if (a4 != 2)
          {
            goto LABEL_81;
          }

          LOBYTE(v9) = [(CAMCaptureCapabilities *)self _is1080p120SlomoSupportedForDevice:a5];
        }

        return v9;
      case 5:
        if (!((a4 == 1) | v13 & 1))
        {
          goto LABEL_81;
        }

        goto LABEL_47;
      case 6:
        if (((a5 < 0xC) & (0xF02u >> a5)) != 0)
        {
          v18 = [(CAMCaptureCapabilities *)self front720pMaxFPS];
        }

        else
        {
          v18 = [(CAMCaptureCapabilities *)self back720pMaxFPS];
        }

        LOBYTE(v9) = a4 == 1 && v18 > 29;
        return v9;
      case 7:
        if (((a5 < 0xC) & (0xF02u >> a5)) != 0)
        {
          v17 = [(CAMCaptureCapabilities *)self front1080pMaxFPS];
        }

        else
        {
          v17 = [(CAMCaptureCapabilities *)self back1080pMaxFPS];
        }

        v24 = v17;
        v25 = a4 == 8 && [(CAMCaptureCapabilities *)self _isSpatialVideoModeSupportedForDevice:a5];
        LOBYTE(v9) = (a4 == 1 || v10 || v25) && v24 > 29;
        return v9;
      case 8:
        LOBYTE(v9) = 0;
        if (a4 == 2 && v12)
        {

          LOBYTE(v9) = [(CAMCaptureCapabilities *)self is1080p240SupportedForDevice:a5];
        }

        return v9;
      case 9:
        if (a4 != 1 || !v12)
        {
          goto LABEL_81;
        }

        LOBYTE(v9) = [(CAMCaptureCapabilities *)self is4k60VideoSupportedForDevice:a5];
        return v9;
      case 10:
        if (!((a4 == 1) | v13 & 1))
        {
          goto LABEL_81;
        }

        LOBYTE(v9) = [(CAMCaptureCapabilities *)self is4k24VideoSupportedForDevice:a5];
        return v9;
      case 11:
        if (((a5 < 0xC) & (0xF02u >> a5)) != 0)
        {
          v14 = [(CAMCaptureCapabilities *)self front1080pMaxFPS];
        }

        else
        {
          v14 = [(CAMCaptureCapabilities *)self back1080pMaxFPS];
        }

        v20 = v14;
        v21 = [(CAMCaptureCapabilities *)self isPALVideoSupported];
        v23 = a4 == 1 && v20 > 24;
        LOBYTE(v9) = v21 && v23;
        return v9;
      case 12:
        v15 = a4 == 1;
        v16 = [(CAMCaptureCapabilities *)self isPALVideoSupported];
        LOBYTE(v9) = 0;
        if (v16 && ((v15 | v13) & 1) != 0)
        {
LABEL_47:

          LOBYTE(v9) = [(CAMCaptureCapabilities *)self is4k30VideoSupportedForDevice:a5];
        }

        return v9;
      case 13:
      case 14:
        if (a4 == 1)
        {
          if (![(CAMCaptureCapabilities *)self isBack4k120VideoSupported]|| !v12)
          {
LABEL_81:
            LOBYTE(v9) = 0;
            return v9;
          }
        }

        else
        {
          v19 = v9;
          LOBYTE(v9) = 0;
          if (a4 != 2 || v19 < 120 || !v12)
          {
            return v9;
          }
        }

        LOBYTE(v9) = [(CAMCaptureCapabilities *)self is4K120VideoSupportedForDevice:a5];
        break;
      default:
        if ((a3 - 10000) >= 6 || a4 != 1)
        {
          goto LABEL_81;
        }

LABEL_11:
        LODWORD(v9) = [(CAMCaptureCapabilities *)self isCameraSupportedForDevice:a5];
        if (v9)
        {

          LOBYTE(v9) = [(CAMCaptureCapabilities *)self isVideoSupported];
        }

        return v9;
    }
  }

  return v9;
}

- (BOOL)isSupportedVideoConfiguration:(int64_t)a3 forMode:(int64_t)a4 videoEncodingBehavior:(int64_t)a5 outputToExternalStorage:(BOOL)a6 frontRearSimultaneousVideoEnabled:(BOOL)a7
{
  if (a5 == 2)
  {
    return [(CAMCaptureCapabilities *)self isProResVideoSupportedForMode:a4 videoConfiguration:a3 outputToExternalStorage:a6 frontRearSimultaneousVideoEnabled:a7];
  }

  if (a5 == 1)
  {
    return [(CAMCaptureCapabilities *)self isHEVCEncodingSupported:a3];
  }

  v7 = (a3 > 0xE) | (0x1CFFu >> a3);
  if (a5)
  {
    LOBYTE(v7) = 0;
  }

  return v7 & 1;
}

- (BOOL)isSupportedVideoConfiguration:(int64_t)a3 forMode:(int64_t)a4 device:(int64_t)a5 trueVideoEnabled:(BOOL)a6 frontRearSimultaneousVideoEnabled:(BOOL)a7
{
  if (a7 && ![(CAMCaptureCapabilities *)self isFrontRearSimultaneousVideoSupportedForVideoConfiguration:a3])
  {
    return 0;
  }

  if (a3 > 0xE)
  {
    if ((a3 - 10000) >= 6)
    {
      return 0;
    }
  }

  else if (((1 << a3) & 0x1FEF) == 0 && a6)
  {
    return 0;
  }

  return [(CAMCaptureCapabilities *)self isSupportedVideoConfiguration:a3 forMode:a4 device:a5];
}

- (BOOL)isSlomoSupportedForDevice:(int64_t)a3
{
  if (![(CAMCaptureCapabilities *)self isCameraSupportedForDevice:?]|| a3 > 0xA)
  {
    return 0;
  }

  if (((1 << a3) & 0x2D) != 0)
  {

    return [(CAMCaptureCapabilities *)self isBackSlomoSupported];
  }

  if (((1 << a3) & 0x502) == 0)
  {
    return 0;
  }

  return [(CAMCaptureCapabilities *)self isFrontSlomoSupported];
}

- (BOOL)is720p240SupportedForDevice:(int64_t)a3
{
  if (![(CAMCaptureCapabilities *)self isSlomoSupportedForDevice:?]|| a3 > 0xA)
  {
    return 0;
  }

  if (((1 << a3) & 0x2D) != 0)
  {

    return [(CAMCaptureCapabilities *)self isBack720p240Supported];
  }

  if (((1 << a3) & 0x502) == 0)
  {
    return 0;
  }

  return [(CAMCaptureCapabilities *)self isFront720p240Supported];
}

- (BOOL)_is1080p120SlomoSupportedForDevice:(int64_t)a3
{
  if (![(CAMCaptureCapabilities *)self isSlomoSupportedForDevice:?]|| a3 > 0xA)
  {
    return 0;
  }

  if (((1 << a3) & 0x2D) != 0)
  {

    return [(CAMCaptureCapabilities *)self isBack1080p120Supported];
  }

  if (((1 << a3) & 0x502) == 0)
  {
    return 0;
  }

  return [(CAMCaptureCapabilities *)self isFront1080p120Supported];
}

- (BOOL)is1080p240SupportedForDevice:(int64_t)a3
{
  if (![(CAMCaptureCapabilities *)self isSlomoSupportedForDevice:?]|| a3 > 0xA)
  {
    return 0;
  }

  if (((1 << a3) & 0x2D) != 0)
  {

    return [(CAMCaptureCapabilities *)self isBack1080p240Supported];
  }

  if (((1 << a3) & 0x502) == 0)
  {
    return 0;
  }

  return [(CAMCaptureCapabilities *)self isFront1080p240Supported];
}

- (BOOL)isPanoramaSupportedForDevice:(int64_t)a3
{
  if (![(CAMCaptureCapabilities *)self isCameraSupportedForDevice:?]|| a3 > 8)
  {
    return 0;
  }

  if (((1 << a3) & 0x2D) != 0)
  {

    return [(CAMCaptureCapabilities *)self isBackPanoramaSupported];
  }

  if (((1 << a3) & 0x102) == 0)
  {
    return 0;
  }

  return [(CAMCaptureCapabilities *)self isFrontPanoramaSupported];
}

- (BOOL)isTimelapseSupportedForDevice:(int64_t)a3
{
  if (![(CAMCaptureCapabilities *)self isCameraSupportedForDevice:?]|| a3 > 8)
  {
    return 0;
  }

  if (((1 << a3) & 0x2D) != 0)
  {

    return [(CAMCaptureCapabilities *)self isBackTimelapseSupported];
  }

  if (((1 << a3) & 0x102) == 0)
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

- (BOOL)isPortraitModeSupportedForDevicePosition:(int64_t)a3
{
  if (a3 == 1)
  {
    return [(CAMCaptureCapabilities *)self isFrontPortraitModeSupported];
  }

  if (a3)
  {
    return 0;
  }

  return [(CAMCaptureCapabilities *)self isBackPortraitModeSupported];
}

- (BOOL)isPortraitModeSupportedForDevice:(int64_t)a3
{
  v5 = [(CAMCaptureCapabilities *)self isCameraSupportedForDevice:?];
  if (!v5)
  {
    return v5;
  }

  v6 = (a3 - 1) > 0xA ? 0 : qword_1A3A6A2E8[a3 - 1];
  v5 = [(CAMCaptureCapabilities *)self isPortraitModeSupportedForDevicePosition:v6];
  if (!v5)
  {
    return v5;
  }

  LOBYTE(v5) = 0;
  if (a3 <= 4)
  {
    if (a3 < 2)
    {
      LOBYTE(v5) = 1;
      return v5;
    }

    if ((a3 - 2) >= 2)
    {
      if (a3 != 4)
      {
        return v5;
      }

      v5 = [(CAMCaptureCapabilities *)self isBackDualSupported];
      if (!v5)
      {
        return v5;
      }

      goto LABEL_29;
    }

    goto LABEL_15;
  }

  if (a3 <= 7)
  {
    if (a3 != 5)
    {
      if (a3 != 6)
      {

        LOBYTE(v5) = [(CAMCaptureCapabilities *)self isBackTripleCameraSupported];
        return v5;
      }

      v5 = [(CAMCaptureCapabilities *)self isBackWideDualSupported];
      if (!v5)
      {
        return v5;
      }

LABEL_29:
      LOBYTE(v5) = ![(CAMCaptureCapabilities *)self _disablePortraitBravoDevices];
      return v5;
    }

LABEL_15:

    LOBYTE(v5) = [(CAMCaptureCapabilities *)self isBackSingleCameraPortraitModeSupported];
    return v5;
  }

  if (a3 == 8)
  {
    goto LABEL_21;
  }

  if (a3 != 9)
  {
    if (a3 != 10)
    {
      return v5;
    }

LABEL_21:

    LOBYTE(v5) = [(CAMCaptureCapabilities *)self isFrontSingleCameraPortraitModeSupported];
    return v5;
  }

  LOBYTE(v5) = [(CAMCaptureCapabilities *)self isFrontPearlSupported];
  return v5;
}

- (BOOL)isPortraitZoomSupportedForDevicePosition:(int64_t)a3
{
  if (a3)
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

- (BOOL)portraitModeRequiresSubjectForDevicePosition:(int64_t)a3
{
  if (a3 == 1)
  {
    return [(CAMCaptureCapabilities *)self _frontPortraitModeRequiresSubject];
  }

  if (a3)
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

- (BOOL)isAspectRatioCropSupportedForMode:(int64_t)a3 devicePosition:(int64_t)a4
{
  v7 = [(CAMCaptureCapabilities *)self isAspectRatioCropSupported];
  if (v7)
  {
    if (a3 == 6)
    {
      if (a4)
      {

        LOBYTE(v7) = [(CAMCaptureCapabilities *)self _frontPortraitAspectRatioSupported];
      }

      else
      {

        LOBYTE(v7) = [(CAMCaptureCapabilities *)self _rearPortraitAspectRatioSupported];
      }
    }

    else
    {
      LOBYTE(v7) = a3 == 0;
    }
  }

  return v7;
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

- (unint64_t)spatialOverCaptureSupportForMode:(int64_t)a3 device:(int64_t)a4
{
  if (![(CAMCaptureCapabilities *)self _isSpatialOverCaptureSupportedForDevice:a4])
  {
    return 0;
  }

  if (a3)
  {
    if (a3 == 6)
    {
      return [(CAMCaptureCapabilities *)self _allowSpatialOverCaptureInPortraitMode];
    }

    return 0;
  }

  return 3;
}

- (BOOL)_isSpatialOverCaptureSupportedForDevice:(int64_t)a3
{
  if (![(CAMCaptureCapabilities *)self isSpatialOverCaptureSupported]|| a3 > 0xA)
  {
    return 0;
  }

  if (((1 << a3) & 0xD1) != 0)
  {

    return [(CAMCaptureCapabilities *)self isBackSpatialOverCaptureSupported];
  }

  if (((1 << a3) & 0x402) == 0)
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

- (BOOL)isNightModeSupportedForMode:(int64_t)a3 device:(int64_t)a4
{
  if (a3 != 6)
  {
    if (!a3 && a4 <= 0xA)
    {
      if (((1 << a4) & 0xD5) != 0)
      {

        return [(CAMCaptureCapabilities *)self isBackNightModeSupported];
      }

      else if (((1 << a4) & 0x702) != 0)
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

  if (a4 <= 5)
  {
    if (a4 && a4 != 4)
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

  if (a4 == 7)
  {
    goto LABEL_16;
  }

  if (a4 != 6)
  {
    return 0;
  }

LABEL_18:

  return [(CAMCaptureCapabilities *)self _wideDualPortraitNightModeSupported];
}

- (BOOL)isNightModeSupportedForMode:(int64_t)a3 device:(int64_t)a4 zoomFactor:(double)a5
{
  v8 = [(CAMCaptureCapabilities *)self resolvedDeviceForDesiredDevice:a4 mode:a3 videoConfiguration:0 videoStabilizationStrength:0 frontRearSimultaneousVideoEnabled:0];
  v9 = [(CAMCaptureCapabilities *)self isNightModeSupportedForMode:a3 device:v8];
  v10 = 0;
  if ((v8 - 1) <= 0xA)
  {
    v10 = qword_1A3A6A2E8[v8 - 1];
  }

  if ([(CAMCaptureCapabilities *)self isDualDeviceDisparitySupportedForMode:a3 devicePosition:v10])
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

    return v11 >= a5 && v9;
  }

  return v9;
}

- (BOOL)isNightModeWithDepthSupportedForMode:(int64_t)a3 device:(int64_t)a4
{
  v7 = [CAMCaptureCapabilities isNightModeSupportedForMode:"isNightModeSupportedForMode:device:" device:?];
  if (v7)
  {
    if (a3)
    {
      LOBYTE(v7) = a3 == 6;
    }

    else if (a4 - 1) < 0xB && ((0x781u >> (a4 - 1)))
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

- (unint64_t)nightModePreviewOverlayStyleForDevicePosition:(int64_t)a3 sensitiveToChangingDisplayFeedback:(BOOL)a4 sensitiveToInitialFeedback:(BOOL)a5 duration:(double)a6
{
  v7 = a5;
  v8 = a4;
  if (a3 == 1)
  {
    result = [(CAMCaptureCapabilities *)self frontNightModePreviewOverlayStyle];
  }

  else if (a3)
  {
    result = 0;
  }

  else
  {
    result = [(CAMCaptureCapabilities *)self backNightModePreviewOverlayStyle];
  }

  v11 = a6 < 2.0 && a3 == 1;
  v12 = 3;
  if (!v11)
  {
    v12 = 1;
  }

  if (v7)
  {
    v12 = 2;
  }

  if (v8)
  {
    v12 = 4;
  }

  if (!result)
  {
    return v12;
  }

  return result;
}

- (BOOL)isSingleCameraPortraitModeSupportedForDevicePosition:(int64_t)a3
{
  if (a3 == 1)
  {
    return [(CAMCaptureCapabilities *)self isFrontSingleCameraPortraitModeSupported];
  }

  if (a3)
  {
    return 0;
  }

  return [(CAMCaptureCapabilities *)self isBackSingleCameraPortraitModeSupported];
}

- (BOOL)isTorchPatternSupportedForDevicePosition:(int64_t)a3
{
  if (![(CAMCaptureCapabilities *)self isCameraSupportedForDevicePosition:?])
  {
    return 0;
  }

  if (a3 != 1)
  {
    if (!a3)
    {

      return [(CAMCaptureCapabilities *)self isBackTorchPatternSupported];
    }

    return 0;
  }

  return [(CAMCaptureCapabilities *)self isFrontTorchPatternSupported];
}

- (BOOL)isFlashOrTorchSupportedForMode:(int64_t)a3 devicePosition:(int64_t)a4
{
  if ([CAMCaptureCapabilities isFlashSupportedForMode:"isFlashSupportedForMode:devicePosition:" devicePosition:?])
  {
    return 1;
  }

  return [(CAMCaptureCapabilities *)self isTorchSupportedForMode:a3 devicePosition:a4];
}

- (BOOL)isAutoLowLightVideoSupportedForMode:(int64_t)a3 videoConfiguration:(int64_t)a4 videoEncodingBehavior:(int64_t)a5
{
  v9 = [(CAMCaptureCapabilities *)self isAutoLowLightVideoSupported];
  if (v9)
  {
    v9 = [(CAMCaptureCapabilities *)self _isVariableFramerateVideoSupportedForVideoEncodingBehavior:a5];
    if (v9)
    {
      if ((a4 - 10000) < 6 || (v10 = 0, a4 <= 7) && ((1 << a4) & 0xE1) != 0)
      {
        v10 = 1;
      }

      if (a3 == 1)
      {
        LOBYTE(v9) = v10;
      }

      else
      {
        LOBYTE(v9) = 0;
      }
    }
  }

  return v9;
}

- (BOOL)isVariableFramerateVideoSupportedForMode:(int64_t)a3 videoConfiguration:(int64_t)a4 videoEncodingBehavior:(int64_t)a5 outputToExternalStorage:(BOOL)a6 prefersHDR10BitVideo:(BOOL)a7 frontRearSimultaneousVideoEnabled:(BOOL)a8
{
  v9 = a7;
  v10 = a6;
  v15 = [(CAMCaptureCapabilities *)self isVariableFramerateVideoSupported];
  if (v15)
  {
    v15 = [(CAMCaptureCapabilities *)self _isVariableFramerateVideoSupportedForVideoEncodingBehavior:a5];
    if (v15)
    {
      if (a4)
      {
        LOBYTE(v15) = [(CAMCaptureCapabilities *)self _isVariableFramerateVideoSupportedForResolvedVideoConfiguration:a4];
      }

      else
      {
        LOBYTE(v20) = a8;
        v16 = [(CAMCaptureCapabilities *)self resolvedVideoConfigurationForMode:a3 device:1 videoEncodingBehavior:a5 videoConfiguration:0 outputToExternalStorage:v10 prefersHDR10BitVideo:v9 frontRearSimultaneousVideoEnabled:v20];
        LOBYTE(v21) = a8;
        v17 = [(CAMCaptureCapabilities *)self resolvedVideoConfigurationForMode:a3 device:0 videoEncodingBehavior:a5 videoConfiguration:0 outputToExternalStorage:v10 prefersHDR10BitVideo:v9 frontRearSimultaneousVideoEnabled:v21];
        v18 = [(CAMCaptureCapabilities *)self _isVariableFramerateVideoSupportedForResolvedVideoConfiguration:v16];
        v15 = v18 | [(CAMCaptureCapabilities *)self _isVariableFramerateVideoSupportedForResolvedVideoConfiguration:v17];
      }

      LOBYTE(v15) = (a3 == 1) & v15;
    }
  }

  return v15;
}

- (int64_t)resolvedVideoConfigurationForMode:(int64_t)a3 device:(int64_t)a4 videoEncodingBehavior:(int64_t)a5 videoConfiguration:(int64_t)a6 outputToExternalStorage:(BOOL)a7 prefersHDR10BitVideo:(BOOL)a8 frontRearSimultaneousVideoEnabled:(BOOL)a9
{
  v24 = a7;
  v9 = a6;
  v30 = *MEMORY[0x1E69E9840];
  if (!a6)
  {
    if (a3 > 6)
    {
      v15 = &unk_1F16C9938;
      if (a3 != 8)
      {
        v15 = 0;
      }

      if (a3 == 7)
      {
        v14 = &unk_1F16C9998;
      }

      else
      {
        v14 = v15;
      }
    }

    else if (a3 == 1)
    {
      v14 = &unk_1F16C9950;
    }

    else if (a3 == 2)
    {
      if ([(CAMCaptureCapabilities *)self isBack4k120VideoSupported]&& a8)
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
    v16 = [v14 countByEnumeratingWithState:&v25 objects:v29 count:{16, a5}];
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

        v9 = [*(*(&v25 + 1) + 8 * v19) integerValue];
        v20 = [(CAMCaptureCapabilities *)self isSupportedVideoConfiguration:v9 forMode:a3 device:a4];
        v21 = [(CAMCaptureCapabilities *)self isSupportedVideoConfiguration:v9 forMode:a3 videoEncodingBehavior:v23 outputToExternalStorage:v24 frontRearSimultaneousVideoEnabled:a9];
        if (v20 && v21)
        {
          break;
        }

        if (v17 == ++v19)
        {
          v17 = [v14 countByEnumeratingWithState:&v25 objects:v29 count:16];
          v9 = 0;
          if (v17)
          {
            goto LABEL_18;
          }

          return v9;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return v9;
}

- (int64_t)validatedVideoConfigurationForVideoConfiguration:(int64_t)a3 withBlock:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a4;
  if ((v5[2](v5, a3) & 1) == 0)
  {
    if ((a3 - 1) > 0xD)
    {
      v6 = 0;
    }

    else
    {
      v6 = qword_1E76FC150[a3 - 1];
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
          v12 = [v11 intValue];
          if (v5[2](v5, [v11 intValue]))
          {
            a3 = v12;
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

  return a3;
}

- (BOOL)isAutoFPSVideoSupportedForMode:(int64_t)a3 videoConfiguration:(int64_t)a4 videoEncodingBehavior:(int64_t)a5 outputToExternalStorage:(BOOL)a6 prefersHDR10BitVideo:(BOOL)a7 frontRearSimultaneousVideoEnabled:(BOOL)a8
{
  v8 = a8;
  v9 = a7;
  v10 = a6;
  v15 = [CAMCaptureCapabilities isAutoLowLightVideoSupportedForMode:"isAutoLowLightVideoSupportedForMode:videoConfiguration:videoEncodingBehavior:" videoConfiguration:? videoEncodingBehavior:?];
  return (v15 | [(CAMCaptureCapabilities *)self isVariableFramerateVideoSupportedForMode:a3 videoConfiguration:a4 videoEncodingBehavior:a5 outputToExternalStorage:v10 prefersHDR10BitVideo:v9 frontRearSimultaneousVideoEnabled:v8]) & 1;
}

- (BOOL)isHDR10BitVideoSupportedForVideoConfiguration:(int64_t)a3 videoEncodingBehavior:(int64_t)a4
{
  v7 = [(CAMCaptureCapabilities *)self isHDR10BitVideoSupported];
  if (v7)
  {
    v8 = 0;
    v9 = a4 - 1;
    if (a3 > 9)
    {
      if ((a3 - 10000) >= 6 && (a3 - 10) >= 3)
      {
        if ((a3 - 13) >= 2)
        {
          goto LABEL_17;
        }

        goto LABEL_15;
      }

LABEL_16:
      v8 = 1;
      goto LABEL_17;
    }

    if (a3 <= 4)
    {
      if (!a3)
      {
        goto LABEL_16;
      }

      if (a3 != 1)
      {
        if (a3 != 4)
        {
LABEL_17:
          LOBYTE(v7) = v9 < 2 && v8;
          return v7;
        }

LABEL_15:
        v8 = [(CAMCaptureCapabilities *)self _HDR10BitVideoSupports120FPS];
        goto LABEL_17;
      }
    }

    else
    {
      if ((a3 - 5) < 3)
      {
        goto LABEL_16;
      }

      if (a3 == 8)
      {
        v8 = [(CAMCaptureCapabilities *)self _HDR10BitVideoSupports240FPS];
        goto LABEL_17;
      }

      if (a3 != 9)
      {
        goto LABEL_17;
      }
    }

    v8 = [(CAMCaptureCapabilities *)self isHDR10BitVideoSupports60FPS];
    goto LABEL_17;
  }

  return v7;
}

- (BOOL)isProResVideoSupportedForMode:(int64_t)a3 frontRearSimultaneousVideoEnabled:(BOOL)a4
{
  v7 = [(CAMCaptureCapabilities *)self isProResVideoSupported];
  if (v7)
  {
    if (a3 == 7)
    {

      LOBYTE(v7) = [(CAMCaptureCapabilities *)self _isProResCinematicVideoSupported];
    }

    else
    {
      LOBYTE(v7) = a3 == 1 && !a4;
    }
  }

  return v7;
}

- (BOOL)isProResVideoSupportedForMode:(int64_t)a3 videoConfiguration:(int64_t)a4 outputToExternalStorage:(BOOL)a5 frontRearSimultaneousVideoEnabled:(BOOL)a6
{
  v6 = a5;
  v9 = [(CAMCaptureCapabilities *)self isProResVideoSupportedForMode:a3 frontRearSimultaneousVideoEnabled:a6];
  if (v9)
  {
    if (a4 > 0xE)
    {
      LOBYTE(v9) = 0;
    }

    else
    {
      if (((1 << a4) & 0x7620) != 0)
      {
        if (v6)
        {
          v10 = [(CAMCaptureCapabilities *)self _proResVideoExternalMaxFPS4k];
        }

        else
        {
          v10 = [(CAMCaptureCapabilities *)self _proResVideoMaxFPS4k];
        }

        goto LABEL_11;
      }

      if (((1 << a4) & 0x992) != 0)
      {
        if (v6)
        {
          v10 = [(CAMCaptureCapabilities *)self _proResVideoExternalMaxFPS1080p];
        }

        else
        {
          v10 = [(CAMCaptureCapabilities *)self _proResVideoMaxFPS1080p];
        }

LABEL_11:
        LOBYTE(v9) = v10 >= [(CAMCaptureCapabilities *)self _knownFramerateForVideoConfiguration:a4];
        return v9;
      }

      LOBYTE(v9) = a4 == 0;
    }
  }

  return v9;
}

- (int64_t)_knownFramerateForVideoConfiguration:(int64_t)a3
{
  if ((a3 - 1) > 0xD)
  {
    return 0;
  }

  else
  {
    return qword_1A3A6A1E0[a3 - 1];
  }
}

- (BOOL)isStereoAudioRecordingSupportedForMode:(int64_t)a3
{
  v4 = [(CAMCaptureCapabilities *)self isStereoAudioRecordingSupported];
  v5 = 0x186u >> a3;
  if (a3 > 8)
  {
    LOBYTE(v5) = 0;
  }

  if (!v4)
  {
    LOBYTE(v5) = 0;
  }

  return v5 & 1;
}

- (BOOL)isCinematicAudioSupportedForMode:(int64_t)a3
{
  v4 = [(CAMCaptureCapabilities *)self isCinematicAudioSupported];
  v5 = 0x186u >> a3;
  if (a3 > 8)
  {
    LOBYTE(v5) = 0;
  }

  if (!v4)
  {
    LOBYTE(v5) = 0;
  }

  return v5 & 1;
}

- (BOOL)isActionModeControlSupportedForMode:(int64_t)a3 device:(int64_t)a4 videoConfiguration:(int64_t)a5 videoEncodingBehavior:(int64_t)a6 trueVideoEnabled:(BOOL)a7 prefersHDR10BitVideo:(BOOL)a8 frontRearSimultaneousVideoEnabled:(BOOL)a9
{
  BYTE2(v10) = a9;
  BYTE1(v10) = a8;
  LOBYTE(v10) = a7;
  return [CAMCaptureCapabilities isVideoStabilizationStrength:"isVideoStabilizationStrength:supportedForMode:device:videoConfiguration:videoEncodingBehavior:outputToExternalStorage:trueVideoEnabled:prefersHDR10BitVideo:frontRearSimultaneousVideoEnabled:" supportedForMode:3 device:a3 videoConfiguration:a4 videoEncodingBehavior:a5 outputToExternalStorage:a6 trueVideoEnabled:0 prefersHDR10BitVideo:v10 frontRearSimultaneousVideoEnabled:?];
}

- (BOOL)isEnhancedStabilizationSupportedForMode:(int64_t)a3 device:(int64_t)a4 videoConfiguration:(int64_t)a5 videoEncodingBehavior:(int64_t)a6 trueVideoEnabled:(BOOL)a7 prefersHDR10BitVideo:(BOOL)a8 frontRearSimultaneousVideoEnabled:(BOOL)a9
{
  BYTE2(v10) = a9;
  BYTE1(v10) = a8;
  LOBYTE(v10) = a7;
  return [CAMCaptureCapabilities isVideoStabilizationStrength:"isVideoStabilizationStrength:supportedForMode:device:videoConfiguration:videoEncodingBehavior:outputToExternalStorage:trueVideoEnabled:prefersHDR10BitVideo:frontRearSimultaneousVideoEnabled:" supportedForMode:1 device:a3 videoConfiguration:a4 videoEncodingBehavior:a5 outputToExternalStorage:a6 trueVideoEnabled:0 prefersHDR10BitVideo:v10 frontRearSimultaneousVideoEnabled:?];
}

- (BOOL)isVideoStabilizationStrength:(int64_t)a3 supportedForMode:(int64_t)a4 devicePosition:(int64_t)a5 trueVideoEnabled:(BOOL)a6 frontRearSimultaneousVideoEnabled:(BOOL)a7
{
  v13 = [(CAMCaptureCapabilities *)self isEnhancedStabilizationSupported];
  if (!v13)
  {
    return v13;
  }

  if (a4 > 6)
  {
    v15 = a3 == 1;
    if (a4 != 8)
    {
      v15 = 0;
    }

    if (a4 == 7)
    {
      v14 = a3 < 2;
    }

    else
    {
      v14 = v15;
    }

    goto LABEL_16;
  }

  if (a4 == 1)
  {
    if ((a3 - 2) >= 2)
    {
      v14 = a3 <= 1;
      goto LABEL_16;
    }

    if (!a6)
    {
      v14 = [(CAMCaptureCapabilities *)self isActionModeControlSupported];
      goto LABEL_16;
    }

LABEL_15:
    v14 = 0;
    goto LABEL_16;
  }

  if (a4 != 2 || a3 > 1)
  {
    goto LABEL_15;
  }

  v14 = [(CAMCaptureCapabilities *)self back4kMaxFPS]> 119;
LABEL_16:
  v16 = a3 < 2 && a7;
  if (a5 != 1)
  {
    v16 = 0;
  }

  if (a5)
  {
    v17 = v16;
  }

  else
  {
    v17 = 1;
  }

  LOBYTE(v13) = v14 & v17;
  return v13;
}

- (BOOL)isVideoStabilizationStrength:(int64_t)a3 supportedForMode:(int64_t)a4 device:(int64_t)a5 videoConfiguration:(int64_t)a6 videoEncodingBehavior:(int64_t)a7 outputToExternalStorage:(BOOL)a8 trueVideoEnabled:(BOOL)a9 prefersHDR10BitVideo:(BOOL)a10 frontRearSimultaneousVideoEnabled:(BOOL)a11
{
  LOBYTE(v21) = a11;
  v15 = [(CAMCaptureCapabilities *)self resolvedVideoConfigurationForMode:a4 device:a5 videoEncodingBehavior:a7 videoConfiguration:a6 outputToExternalStorage:a8 prefersHDR10BitVideo:a10 frontRearSimultaneousVideoEnabled:v21];
  if ((a5 - 1) > 0xA)
  {
    v16 = 0;
  }

  else
  {
    v16 = qword_1A3A6A2E8[a5 - 1];
  }

  v17 = [(CAMCaptureCapabilities *)self isVideoStabilizationStrength:a3 supportedForMode:a4 devicePosition:v16 trueVideoEnabled:a9 frontRearSimultaneousVideoEnabled:a11];
  v18 = ((1 << v15) & 0x6014) != 0 && a3 < 2;
  v19 = ((1 << v15) & 0x1EE3) != 0 || v18;
  if (v15 > 0xE)
  {
    v19 = 0;
  }

  return v17 & v19;
}

- (BOOL)_needsForcedSingleCameraEmulationForVideoStabilizationStrength:(int64_t)a3 videoConfiguration:(int64_t)a4 mode:(int64_t)a5
{
  LOBYTE(v6) = 0;
  if (a4 > 12)
  {
    if ((a4 - 13) >= 2)
    {
      return ((a3 & 0xFFFFFFFFFFFFFFFELL) == 2) & v6;
    }

LABEL_7:
    LOBYTE(v6) = 1;
    return ((a3 & 0xFFFFFFFFFFFFFFFELL) == 2) & v6;
  }

  switch(a4)
  {
    case 1:
      goto LABEL_7;
    case 4:
      LOBYTE(v6) = a5 == 1;
      break;
    case 9:
      v6 = ![(CAMCaptureCapabilities *)self _isActionModeAggregateDevice4k60Supported:a3];
      break;
  }

  return ((a3 & 0xFFFFFFFFFFFFFFFELL) == 2) & v6;
}

- (int64_t)bytesPerMinuteForGraphConfiguration:(id)a3 outputToExternalStorage:(BOOL)a4
{
  v4 = a4;
  v43 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 mode];
  v8 = [v6 device];
  v9 = [v6 videoEncodingBehavior];
  v10 = [v6 videoConfiguration];
  v11 = [v6 prefersHDR10BitVideo];
  LOBYTE(v40) = [v6 frontRearSimultaneousVideoEnabled];
  v12 = [(CAMCaptureCapabilities *)self resolvedVideoConfigurationForMode:v7 device:v8 videoEncodingBehavior:v9 videoConfiguration:v10 outputToExternalStorage:v4 prefersHDR10BitVideo:v11 frontRearSimultaneousVideoEnabled:v40];
  v13 = [v6 videoEncodingBehavior];
  if (v13 == 2)
  {
    v15 = 0;
    v14 = 1;
  }

  else if (v13 == 1)
  {
    v14 = 0;
    v15 = 1;
  }

  else
  {
    v15 = 0;
    v14 = 0;
  }

  v16 = [v6 colorSpace];
  switch(v12)
  {
    case 1:
      v17 = 3300;
      v18 = 175;
      if (v15)
      {
        v18 = 90;
      }

      v19 = v16 == 2;
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
      v24 = !v4;
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

      if (v16 == 2)
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
      if (v4)
      {
        v25 = 13200;
      }

      v28 = v16 == 2;
      v27 = 400;
      v29 = 440;
      goto LABEL_61;
    case 10:
      v25 = 5280;
      if (v4)
      {
        v25 = 5300;
      }

      v27 = 270;
      if (v15)
      {
        v27 = 135;
      }

      v28 = v16 == 2;
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

      v19 = v16 == 2;
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
      v24 = !v4;
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

      v28 = v16 == 2;
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
      if (v16 == 2)
      {
        v30 = 730;
      }

      v31 = v14 == 0;
      v32 = 26500;
      goto LABEL_45;
    case 14:
      v30 = 570;
      if (v16 == 2)
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
  if ([v6 mode] == 7)
  {
    v38 = (v22 << 20) + 3145728;
  }

  else
  {
    v38 = v22 << 20;
  }

  return v38;
}

- (BOOL)isCinematicModeSupportedForDevicePosition:(int64_t)a3
{
  if (a3 == 1)
  {
    return [(CAMCaptureCapabilities *)self isFrontCinematicModeSupported];
  }

  if (a3)
  {
    return 0;
  }

  return [(CAMCaptureCapabilities *)self isBackCinematicModeSupported];
}

- (BOOL)isCinematicModeSupportedForDevice:(int64_t)a3
{
  v5 = [(CAMCaptureCapabilities *)self isCameraSupportedForDevice:?];
  if (v5)
  {
    v6 = (a3 - 1) > 0xA ? 0 : qword_1A3A6A2E8[a3 - 1];
    v5 = [(CAMCaptureCapabilities *)self isCinematicModeSupportedForDevicePosition:v6];
    if (v5)
    {
      LOBYTE(v5) = 0;
      if (a3 > 5)
      {
        switch(a3)
        {
          case 6:

            LOBYTE(v5) = [(CAMCaptureCapabilities *)self isBackWideDualSupported];
            break;
          case 7:

            LOBYTE(v5) = [(CAMCaptureCapabilities *)self isBackTripleCameraSupported];
            break;
          case 9:

            LOBYTE(v5) = [(CAMCaptureCapabilities *)self isFrontPearlSupported];
            break;
        }
      }

      else if (a3 >= 2)
      {
        if (a3 == 4)
        {
          v5 = [(CAMCaptureCapabilities *)self _backDualCameraSupportedForCinematic];
          if (v5)
          {

            LOBYTE(v5) = [(CAMCaptureCapabilities *)self isBackDualSupported];
          }
        }
      }

      else
      {
        LOBYTE(v5) = 1;
      }
    }
  }

  return v5;
}

- (BOOL)_isSpatialVideoModeSupportedForDevice:(int64_t)a3
{
  v5 = [(CAMCaptureCapabilities *)self isCameraSupportedForDevice:?];
  if (v5)
  {
    v6 = (a3 - 1) > 0xA ? 0 : qword_1A3A6A2E8[a3 - 1];
    v5 = [(CAMCaptureCapabilities *)self _isSpatialVideoSupportedForDevicePosition:v6];
    if (v5)
    {
      v5 = [(CAMCaptureCapabilities *)self isSpatialModeSupported];
      if (v5)
      {
        if (a3)
        {
          if (a3 == 6)
          {

            LOBYTE(v5) = [(CAMCaptureCapabilities *)self isBackWideDualSupported];
          }

          else
          {
            LOBYTE(v5) = 0;
          }
        }

        else
        {
          LOBYTE(v5) = 1;
        }
      }
    }
  }

  return v5;
}

- (BOOL)_isSpatialPhotoModeSupportedForDevice:(int64_t)a3
{
  v5 = [(CAMCaptureCapabilities *)self isCameraSupportedForDevice:?];
  if (v5)
  {
    v5 = [(CAMCaptureCapabilities *)self isSpatialModeSupported];
    if (v5)
    {
      if (a3)
      {
        if (a3 == 6)
        {

          LOBYTE(v5) = [(CAMCaptureCapabilities *)self isBackWideDualSupported];
        }

        else
        {
          LOBYTE(v5) = 0;
        }
      }

      else
      {
        LOBYTE(v5) = 1;
      }
    }
  }

  return v5;
}

- (BOOL)isFrontRearSimultaneousVideoSupportedForMode:(int64_t)a3
{
  result = [(CAMCaptureCapabilities *)self isFrontRearSimultaneousVideoSupported];
  if (a3 != 1)
  {
    return 0;
  }

  return result;
}

- (BOOL)isFrontRearSimultaneousVideoSupportedForMode:(int64_t)a3 devicePosition:(int64_t)a4
{
  v7 = [(CAMCaptureCapabilities *)self isFrontRearSimultaneousVideoSupported];
  if (a4 || !v7)
  {
    return 0;
  }

  return [(CAMCaptureCapabilities *)self isFrontRearSimultaneousVideoSupportedForMode:a3];
}

- (BOOL)isFrontRearSimultaneousVideoSupportedForVideoConfiguration:(int64_t)a3
{
  result = 0;
  if (a3 <= 0xC)
  {
    if (((1 << a3) & 0x1CE1) != 0)
    {
      return 1;
    }

    else if (((1 << a3) & 0x202) != 0)
    {
      return [(CAMCaptureCapabilities *)self isFrontRearSimultaneousVideo60FPSSupported];
    }
  }

  return result;
}

- (BOOL)isDynamicAspectRatioSupportedForMode:(int64_t)a3 videoConfiguration:(int64_t)a4 devicePosition:(int64_t)a5
{
  v8 = [(CAMCaptureCapabilities *)self isDynamicAspectRatioSupportedForMode:a3 devicePosition:a5];
  if (v8)
  {
    v9 = (a4 < 0xD) & (0x1EE3u >> a4);
    if (a3 == 7)
    {
      v10 = [(CAMCaptureCapabilities *)self _dynamicAspectRatioInCinematicModeSupported];
    }

    else
    {
      v10 = a3 == 1 && [(CAMCaptureCapabilities *)self _dynamicAspectRatioInVideoModeSupported];
    }

    LOBYTE(v8) = v9 & v10;
  }

  return v8;
}

- (BOOL)useSquareFormatForDynamicAspectRatioForMode:(int64_t)a3 videoConfiguration:(int64_t)a4
{
  if (a4 == 11 || a4 == 7)
  {
    return a3 != 7;
  }

  else
  {
    return a4 == 6;
  }
}

- (BOOL)useVideoBinnedForMode:(int64_t)a3 videoConfiguration:(int64_t)a4 devicePosition:(int64_t)a5
{
  v6 = (a4 < 0xC) & (0x9DEu >> a4);
  v7 = a5 == 1 && [(CAMCaptureCapabilities *)self _frontFacingVideoModeBinnedSupported];
  if (a3 == 1)
  {
    return v6 & v7;
  }

  else
  {
    return 0;
  }
}

- (BOOL)isWideSupportedForDevicePosition:(int64_t)a3
{
  if (a3 == 1)
  {
    return [(CAMCaptureCapabilities *)self isFrontCameraSupported];
  }

  if (a3)
  {
    return 0;
  }

  return [(CAMCaptureCapabilities *)self isBackCameraSupported];
}

- (BOOL)isWideSupportedForMode:(int64_t)a3 devicePosition:(int64_t)a4 videoConfiguration:(int64_t)a5
{
  v9 = [(CAMCaptureCapabilities *)self isWideSupportedForDevicePosition:a4];
  if (!v9)
  {
    return v9;
  }

  LOBYTE(v9) = 0;
  if (a4)
  {
    v10 = 8 * (a4 == 1);
  }

  else
  {
    v10 = 2;
  }

  if (a3 <= 5)
  {
    if ((a3 - 3) >= 3)
    {
      if ((a3 - 1) < 2)
      {

        LOBYTE(v9) = [(CAMCaptureCapabilities *)self isSupportedVideoConfiguration:a5 forMode:a3 device:v10];
        return v9;
      }

      if (a3)
      {
        return v9;
      }
    }

    LOBYTE(v9) = 1;
    return v9;
  }

  if (a3 > 7)
  {
    if (a3 == 8)
    {

      LOBYTE(v9) = [(CAMCaptureCapabilities *)self _isSpatialVideoModeSupportedForDevice:v10];
    }

    else if (a3 == 9)
    {

      LOBYTE(v9) = [(CAMCaptureCapabilities *)self _isSpatialPhotoModeSupportedForDevice:v10];
    }
  }

  else if (a3 == 6)
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

- (BOOL)isTelephotoSupportedForDevicePosition:(int64_t)a3
{
  if (a3 == 1)
  {
    return [(CAMCaptureCapabilities *)self isFrontTelephotoSupported];
  }

  if (a3)
  {
    return 0;
  }

  return [(CAMCaptureCapabilities *)self isBackTelephotoSupported];
}

- (BOOL)isTelephotoSupportedForMode:(int64_t)a3 devicePosition:(int64_t)a4 videoConfiguration:(int64_t)a5
{
  v9 = [(CAMCaptureCapabilities *)self isTelephotoSupportedForDevicePosition:a4];
  if (!v9)
  {
    return v9;
  }

  if (a4 == 1)
  {
    LOBYTE(v9) = 0;
    return v9;
  }

  LOBYTE(v9) = 0;
  if (a4)
  {
    v10 = 0;
  }

  else
  {
    v10 = 3;
  }

  if (a3 <= 5)
  {
    if ((a3 - 3) < 3)
    {
LABEL_10:
      LOBYTE(v9) = 1;
      return v9;
    }

    if ((a3 - 1) >= 2)
    {
      if (a3)
      {
        return v9;
      }

      goto LABEL_10;
    }

    goto LABEL_23;
  }

  if (a3 > 7)
  {
    if (a3 == 8)
    {
LABEL_23:

      LOBYTE(v9) = [(CAMCaptureCapabilities *)self isSupportedVideoConfiguration:a5 forMode:a3 device:v10];
      return v9;
    }

    if (a3 == 9)
    {

      LOBYTE(v9) = [(CAMCaptureCapabilities *)self _isSpatialPhotoModeSupportedForDevice:v10];
    }
  }

  else if (a3 == 6)
  {

    LOBYTE(v9) = [(CAMCaptureCapabilities *)self isPortraitModeSupportedForDevice:v10];
  }

  else
  {

    LOBYTE(v9) = [(CAMCaptureCapabilities *)self isCinematicModeSupportedForDevice:v10];
  }

  return v9;
}

- (BOOL)_shouldAllowCameraToggleForMode:(int64_t)a3 devicePosition:(int64_t)a4 videoConfiguration:(int64_t)a5 videoStabilizationStrength:(int64_t)a6 frontRearSimultaneousVideoEnabled:(BOOL)a7
{
  v7 = a7;
  if ([(CAMCaptureCapabilities *)self _forcedBackCamera])
  {
    v13 = [(CAMCaptureCapabilities *)self preferredDeviceForPosition:a4 mode:a3 videoConfiguration:a5 videoStabilizationStrength:a6 frontRearSimultaneousVideoEnabled:v7];
    if (v13 == [(CAMCaptureCapabilities *)self _forcedBackCamera])
    {
      goto LABEL_5;
    }
  }

  if ([(CAMCaptureCapabilities *)self isTripleCameraSupportedForMode:a3 devicePosition:a4 videoConfiguration:a5 videoStabilizationStrength:a6 frontRearSimultaneousVideoEnabled:v7]|| [(CAMCaptureCapabilities *)self isDynamicAspectRatioSupportedForMode:a3 videoConfiguration:a5 devicePosition:a4])
  {
    goto LABEL_5;
  }

  v15 = [(CAMCaptureCapabilities *)self isDualSupportedForMode:a3 devicePosition:a4 videoConfiguration:a5 videoStabilizationStrength:a6];
  v16 = [(CAMCaptureCapabilities *)self isWideDualSupportedForMode:a3 devicePosition:a4 videoConfiguration:a5 videoStabilizationStrength:a6];
  if (v15 && v16)
  {
    LOBYTE(v14) = 1;
  }

  else if (v16)
  {
    v14 = [(CAMCaptureCapabilities *)self isQuadraWideZoomButtonSupportedForMode:a3 devicePosition:a4 videoConfiguration:a5];
    if (v14)
    {
      LOBYTE(v14) = ![CAMZoomControlUtilities shouldApplyContinuousZoomForMode:a3 device:6 videoConfiguration:a5 videoStabilizationStrength:a6 frontRearSimultaneousVideoEnabled:v7 zoomFactors:0 displayZoomFactors:0];
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

    v17 = [(CAMCaptureCapabilities *)self isTelephotoSupportedForMode:a3 devicePosition:a4 videoConfiguration:a5];
    v18 = [(CAMCaptureCapabilities *)self _isSuperWideZoomSupportedForMode:a3 devicePosition:a4 videoConfiguration:a5];
    LOBYTE(v14) = 1;
    if (!v17 && !v18)
    {

      LOBYTE(v14) = [(CAMCaptureCapabilities *)self isQuadraWideBinningReconfigurationSupportedForMode:a3 devicePosition:a4 videoConfiguration:a5];
    }
  }

  return v14;
}

- (BOOL)_isSuperWideZoomSupportedForMode:(int64_t)a3 devicePosition:(int64_t)a4 videoConfiguration:(int64_t)a5
{
  if (a4 != 1)
  {
    if (!a4)
    {

      return [CAMCaptureCapabilities isSuperWideSupportedForMode:"isSuperWideSupportedForMode:devicePosition:videoConfiguration:" devicePosition:a3 videoConfiguration:?];
    }

    return 0;
  }

  if (![(CAMCaptureCapabilities *)self isSuperWideSupportedForMode:a3 devicePosition:1 videoConfiguration:a5])
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

- (BOOL)isDualSupportedForDevicePosition:(int64_t)a3
{
  if (a3 == 1)
  {
    return [(CAMCaptureCapabilities *)self isFrontDualSupported];
  }

  if (a3)
  {
    return 0;
  }

  return [(CAMCaptureCapabilities *)self isBackDualSupported];
}

- (BOOL)isDualSupportedForMode:(int64_t)a3 devicePosition:(int64_t)a4 videoConfiguration:(int64_t)a5 videoStabilizationStrength:(int64_t)a6
{
  v11 = [(CAMCaptureCapabilities *)self isDualSupportedForDevicePosition:a4];
  if (!v11)
  {
    return v11;
  }

  if ([(CAMCaptureCapabilities *)self _needsForcedSingleCameraEmulationForVideoStabilizationStrength:a6 videoConfiguration:a5 mode:a3]|| [(CAMCaptureCapabilities *)self featureDevelopmentForceSingleCamera])
  {
    goto LABEL_4;
  }

  LOBYTE(v11) = 0;
  if (a3 <= 5)
  {
    if ((a3 - 1) >= 2)
    {
      if (a3 && a3 != 4)
      {
        return v11;
      }

LABEL_18:
      LOBYTE(v11) = 1;
      return v11;
    }

LABEL_24:
    if (!a4)
    {

      LOBYTE(v11) = [(CAMCaptureCapabilities *)self isSupportedVideoConfiguration:a5 forMode:a3 device:4];
      return v11;
    }

LABEL_4:
    LOBYTE(v11) = 0;
    return v11;
  }

  if (a3 > 7)
  {
    if (a3 == 8)
    {
      goto LABEL_24;
    }

    if (a3 == 9)
    {

      LOBYTE(v11) = [(CAMCaptureCapabilities *)self _isSpatialPhotoModeSupportedForDevice:4];
    }
  }

  else
  {
    if (a3 == 6)
    {
      LOBYTE(v11) = ![(CAMCaptureCapabilities *)self _disablePortraitBravoDevices];
      return v11;
    }

    if (a4 == 1)
    {
      goto LABEL_18;
    }

    if (a4)
    {
      goto LABEL_4;
    }

    LOBYTE(v11) = [(CAMCaptureCapabilities *)self _backDualCameraSupportedForCinematic];
  }

  return v11;
}

- (double)wideToTelephotoZoomFactorForDevicePosition:(int64_t)a3
{
  if (a3 == 1)
  {
    [(CAMCaptureCapabilities *)self _frontDualCameraSwitchOverZoomFactor];
  }

  else if (a3)
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

- (BOOL)isSuperWideSupportedForDevicePosition:(int64_t)a3
{
  if (a3 == 1)
  {
    return [(CAMCaptureCapabilities *)self isFrontSuperWideSupported];
  }

  if (a3)
  {
    return 0;
  }

  return [(CAMCaptureCapabilities *)self isBackSuperWideSupported];
}

- (BOOL)isSuperWideSupportedForMode:(int64_t)a3 devicePosition:(int64_t)a4 videoConfiguration:(int64_t)a5
{
  v9 = [(CAMCaptureCapabilities *)self isSuperWideSupportedForDevicePosition:a4];
  if (!v9)
  {
    return v9;
  }

  LOBYTE(v9) = 0;
  v10 = 10;
  if (a4 != 1)
  {
    v10 = 0;
  }

  if (a4)
  {
    v11 = v10;
  }

  else
  {
    v11 = 5;
  }

  if (a3 <= 4)
  {
    if (a3 > 2)
    {
      if (a3 == 3)
      {
        LOBYTE(v9) = ![(CAMCaptureCapabilities *)self isiPad];
        return v9;
      }

      goto LABEL_18;
    }

    if ((a3 - 1) >= 2)
    {
      if (a3)
      {
        return v9;
      }

LABEL_18:
      LOBYTE(v9) = 1;
      return v9;
    }

    goto LABEL_24;
  }

  if (a3 > 7)
  {
    if (a3 == 8)
    {
LABEL_24:

      LOBYTE(v9) = [(CAMCaptureCapabilities *)self isSupportedVideoConfiguration:a5 forMode:a3 device:v11];
      return v9;
    }

    if (a3 == 9)
    {

      LOBYTE(v9) = [(CAMCaptureCapabilities *)self _isSpatialPhotoModeSupportedForDevice:v11];
    }
  }

  else if ((a3 - 6) >= 2)
  {
    if (a3 == 5)
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

- (BOOL)isSuperWideAutoMacroSupportedForMode:(int64_t)a3 device:(int64_t)a4 videoConfiguration:(int64_t)a5 videoStabilizationStrength:(int64_t)a6 frontRearSimultaneousVideoEnabled:(BOOL)a7
{
  v9 = [(CAMCaptureCapabilities *)self resolvedDeviceForDesiredDevice:a4 mode:a3 videoConfiguration:a5 videoStabilizationStrength:a6 frontRearSimultaneousVideoEnabled:a7];
  v10 = [(CAMCaptureCapabilities *)self isSuperWideAutoMacroSupported];
  v12 = a3 < 2 && (v9 & 0xFFFFFFFFFFFFFFFELL) == 6;
  return v10 && v12;
}

- (BOOL)isWideDualSupported
{
  if ([(CAMCaptureCapabilities *)self isBackWideDualSupported])
  {
    return 1;
  }

  return [(CAMCaptureCapabilities *)self isFrontWideDualSupported];
}

- (BOOL)isWideDualSupportedForDevicePosition:(int64_t)a3
{
  if (a3 == 1)
  {
    return [(CAMCaptureCapabilities *)self isFrontWideDualSupported];
  }

  if (a3)
  {
    return 0;
  }

  return [(CAMCaptureCapabilities *)self isBackWideDualSupported];
}

- (BOOL)isWideDualSupportedForMode:(int64_t)a3 devicePosition:(int64_t)a4 videoConfiguration:(int64_t)a5 videoStabilizationStrength:(int64_t)a6
{
  v11 = [(CAMCaptureCapabilities *)self isWideDualSupportedForDevicePosition:a4];
  if (v11)
  {
    if ([(CAMCaptureCapabilities *)self _needsForcedSingleCameraEmulationForVideoStabilizationStrength:a6 videoConfiguration:a5 mode:a3]|| [(CAMCaptureCapabilities *)self featureDevelopmentForceSingleCamera])
    {
      goto LABEL_4;
    }

    LOBYTE(v11) = 0;
    if (a3 > 9)
    {
      return v11;
    }

    if (((1 << a3) & 0x291) != 0)
    {
      LOBYTE(v11) = 1;
    }

    else if (((1 << a3) & 0x106) != 0)
    {
      if (a4)
      {
LABEL_4:
        LOBYTE(v11) = 0;
        return v11;
      }

      LOBYTE(v11) = [(CAMCaptureCapabilities *)self isSupportedVideoConfiguration:a5 forMode:a3 device:6];
    }

    else if (a3 == 6)
    {
      LOBYTE(v11) = ![(CAMCaptureCapabilities *)self _disablePortraitBravoDevices];
    }
  }

  return v11;
}

- (double)superWideToWideZoomFactorForDevicePosition:(int64_t)a3
{
  if (a3 == 1)
  {
    [(CAMCaptureCapabilities *)self _frontWideDualCameraSwitchOverZoomFactor];
  }

  else if (a3)
  {
    return 1.0;
  }

  else
  {
    [(CAMCaptureCapabilities *)self _backWideDualCameraSwitchOverZoomFactor];
  }

  return result;
}

- (BOOL)isDualDeviceDisparitySupportedForMode:(int64_t)a3 devicePosition:(int64_t)a4
{
  if ((a3 & 0xFFFFFFFFFFFFFFFELL) != 6)
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

- (BOOL)isTripleCameraSupportedForDevicePosition:(int64_t)a3
{
  if (a3 == 1)
  {
    return [(CAMCaptureCapabilities *)self isFrontTripleCameraSupported];
  }

  if (a3)
  {
    return 0;
  }

  return [(CAMCaptureCapabilities *)self isBackTripleCameraSupported];
}

- (BOOL)isTripleCameraSupportedForMode:(int64_t)a3 devicePosition:(int64_t)a4 videoConfiguration:(int64_t)a5 videoStabilizationStrength:(int64_t)a6 frontRearSimultaneousVideoEnabled:(BOOL)a7
{
  v7 = a7;
  v13 = [(CAMCaptureCapabilities *)self isTripleCameraSupportedForDevicePosition:a4];
  if (!v13)
  {
    return v13;
  }

  if ([(CAMCaptureCapabilities *)self _needsForcedSingleCameraEmulationForVideoStabilizationStrength:a6 videoConfiguration:a5 mode:a3]|| v7 && [(CAMCaptureCapabilities *)self _forcedBackCamera]!= 7 || [(CAMCaptureCapabilities *)self featureDevelopmentForceSingleCamera]|| [(CAMCaptureCapabilities *)self _disableSuperBravoDevice])
  {
    goto LABEL_12;
  }

  LOBYTE(v13) = 0;
  if (a3 > 8)
  {
    return v13;
  }

  if (((1 << a3) & 0x106) == 0)
  {
    if (((1 << a3) & 0x11) != 0)
    {
      LOBYTE(v13) = 1;
    }

    else if (a3 == 6)
    {

      LOBYTE(v13) = [(CAMCaptureCapabilities *)self continuousZoomSupportedForPortraitMode];
    }

    return v13;
  }

  if (a4)
  {
LABEL_12:
    LOBYTE(v13) = 0;
    return v13;
  }

  LOBYTE(v13) = [(CAMCaptureCapabilities *)self isSupportedVideoConfiguration:a5 forMode:a3 device:7];
  return v13;
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)tripleCameraSwitchOverZoomFactorsForDevicePosition:(int64_t)a3
{
  v5 = [(CAMCaptureCapabilities *)self isTripleCameraSupportedForDevicePosition:?];
  v6 = 1.0;
  if (v5)
  {
    if (a3 == 1)
    {
      [(CAMCaptureCapabilities *)self _frontWideDualCameraSwitchOverZoomFactor];
      v7 = v10;
      [(CAMCaptureCapabilities *)self _frontDualCameraSwitchOverZoomFactor];
      goto LABEL_7;
    }

    v7 = 1.0;
    if (!a3)
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

- (BOOL)isQuadraWideBinningReconfigurationSupportedForMode:(int64_t)a3 devicePosition:(int64_t)a4 videoConfiguration:(int64_t)a5
{
  if (a4 == 1)
  {
    v8 = [(CAMCaptureCapabilities *)self isFrontQuadraWideSupported];
    goto LABEL_5;
  }

  if (!a4)
  {
    v8 = [(CAMCaptureCapabilities *)self isBackQuadraWideSupported];
LABEL_5:
    v9 = v8;
    goto LABEL_7;
  }

  v9 = 0;
LABEL_7:
  LOBYTE(v10) = 0;
  if (a3 > 4)
  {
    switch(a3)
    {
      case 7:
        LOBYTE(v10) = [(CAMCaptureCapabilities *)self continuousZoomSupportedForCinematicMode];
        return v10 && v9;
      case 6:
        LOBYTE(v10) = [(CAMCaptureCapabilities *)self _isQuadraPortraitSupported];
        return v10 && v9;
      case 5:
        goto LABEL_15;
    }
  }

  else
  {
    if (a3 < 2)
    {
LABEL_15:
      LOBYTE(v10) = [(CAMCaptureCapabilities *)self isQuadraWideSupported];
      return v10 && v9;
    }

    if (a3 != 2)
    {
      if (a3 != 3)
      {
        return v10 && v9;
      }

      goto LABEL_15;
    }

    LOBYTE(v10) = 0;
    if (a5 <= 0xE && ((1 << a5) & 0x6010) != 0)
    {
      v10 = [(CAMCaptureCapabilities *)self isBackQuadraWideSupported];
      if (v10)
      {
        LOBYTE(v10) = [(CAMCaptureCapabilities *)self isBack4k120VideoSupported];
      }
    }
  }

  return v10 && v9;
}

- (BOOL)isQuadraTeleBinningReconfigurationSupportedForMode:(int64_t)a3 devicePosition:(int64_t)a4 videoConfiguration:(int64_t)a5
{
  v9 = [(CAMCaptureCapabilities *)self isBackQuadraTeleSupported];
  v10 = 0;
  if (!a4 && v9)
  {
    v11 = [(CAMCaptureCapabilities *)self isQuadraWideBinningReconfigurationSupportedForMode:a3 devicePosition:0 videoConfiguration:a5];
    v12 = 0x1EEFu >> a5;
    if (a5 > 0xE)
    {
      LOBYTE(v12) = 1;
    }

    if (a3 == 2)
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

- (int64_t)defaultPhotoResolutionForMode:(int64_t)a3 devicePosition:(int64_t)a4 encodingBehavior:(int64_t)a5
{
  if (a5 < 2)
  {
    if (a4)
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

  if (a5 == 2)
  {
    if (a4)
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
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:{a3, a4}];
  v9 = [v7 objectForKeyedSubscript:v8];

  if (v9)
  {
    v10 = [v9 integerValue];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)isPearlSupportedForDevicePosition:(int64_t)a3
{
  if (a3 == 1)
  {
    return [(CAMCaptureCapabilities *)self isFrontPearlSupported];
  }

  if (a3)
  {
    return 0;
  }

  return [(CAMCaptureCapabilities *)self isBackPearlSupported];
}

- (BOOL)isPearlSupportedForMode:(int64_t)a3 devicePosition:(int64_t)a4
{
  v6 = [(CAMCaptureCapabilities *)self isPearlSupportedForDevicePosition:a4];
  if (v6)
  {
    if ((a3 - 6) >= 2)
    {
      if (a3)
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

- (int64_t)fallbackPrimaryConstituentDeviceSelectionForMode:(int64_t)a3 device:(int64_t)a4 videoConfiguration:(int64_t)a5 videoStabilizationStrength:(int64_t)a6 frontRearSimultaneousVideoEnabled:(BOOL)a7 macroMode:(int64_t)a8
{
  v9 = a7;
  if ((a4 - 1) > 0xA)
  {
    v14 = 0;
  }

  else
  {
    v14 = qword_1A3A6A2E8[a4 - 1];
  }

  v15 = [CAMCaptureCapabilities isSuperWideAutoMacroSupportedForMode:"isSuperWideAutoMacroSupportedForMode:device:videoConfiguration:videoStabilizationStrength:frontRearSimultaneousVideoEnabled:" device:a3 videoConfiguration:? videoStabilizationStrength:? frontRearSimultaneousVideoEnabled:?];
  v16 = [(CAMCaptureCapabilities *)self isDualDeviceDisparitySupportedForMode:a3 devicePosition:v14];
  if (v15)
  {
    v17 = 1;
    if (!a8)
    {
      v17 = 2;
    }
  }

  else if (v16)
  {
    v18 = [(CAMCaptureCapabilities *)self isTripleCameraSupportedForMode:a3 devicePosition:v14 videoConfiguration:a5 videoStabilizationStrength:a6 frontRearSimultaneousVideoEnabled:v9];
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

  if ((a3 & 0xFFFFFFFFFFFFFFFELL) == 8)
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

- (BOOL)isTimeOfFlightSupportedForDevicePosition:(int64_t)a3
{
  if (!a3)
  {
    return [(CAMCaptureCapabilities *)self isBackTimeOfFlightSupported];
  }

  if (a3 == 1)
  {
    return [(CAMCaptureCapabilities *)self isFrontTimeOfFlightSupported];
  }

  return 0;
}

- (BOOL)isDepthEffectApertureSupportedForMode:(int64_t)a3 devicePosition:(int64_t)a4
{
  if ((a3 - 6) < 2)
  {
    return [(CAMCaptureCapabilities *)self isDepthEffectApertureSupported];
  }

  if (a3)
  {
    return 0;
  }

  if (a4)
  {
    return [(CAMCaptureCapabilities *)self _frontPhotoModeDepthSuggestionSupported];
  }

  return [(CAMCaptureCapabilities *)self _rearPhotoModeDepthSuggestionSupported];
}

- (BOOL)isDepthEffectApertureSupportedForMode:(int64_t)a3 devicePosition:(int64_t)a4 depthSuggestionEnabled:(BOOL)a5
{
  v7 = [(CAMCaptureCapabilities *)self isDepthEffectApertureSupportedForMode:a3 devicePosition:a4];
  if (a3)
  {
    v8 = 1;
  }

  else
  {
    v8 = a5;
  }

  return v8 && v7;
}

- (BOOL)photoModeDepthSuggestionSupported
{
  if ([(CAMCaptureCapabilities *)self isPhotoModeDepthSuggestionSupportedForDevicePosition:0])
  {
    return 1;
  }

  return [(CAMCaptureCapabilities *)self isPhotoModeDepthSuggestionSupportedForDevicePosition:1];
}

- (BOOL)isPhotoModeDepthSuggestionSupportedForDevicePosition:(int64_t)a3
{
  if (a3 == 1)
  {
    return [(CAMCaptureCapabilities *)self _frontPhotoModeDepthSuggestionSupported];
  }

  if (a3)
  {
    return 0;
  }

  return [(CAMCaptureCapabilities *)self _rearPhotoModeDepthSuggestionSupported];
}

- (double)minimumDepthEffectApertureForMode:(int64_t)a3 device:(int64_t)a4
{
  v5 = [(CAMCaptureCapabilities *)self isDepthEffectApertureSupported:a3];
  result = 1.4;
  if (a3 == 7)
  {
    result = 2.0;
  }

  if (!v5)
  {
    return 0.0;
  }

  return result;
}

- (double)maximumDepthEffectApertureForMode:(int64_t)a3 device:(int64_t)a4
{
  v4 = [(CAMCaptureCapabilities *)self isDepthEffectApertureSupported:a3];
  result = 0.0;
  if (v4)
  {
    return 16.0;
  }

  return result;
}

- (double)defaultDepthEffectApertureForMode:(int64_t)a3 device:(int64_t)a4 zoomFactor:(double)a5
{
  if ((a4 - 1) > 0xA)
  {
    v9 = 0;
  }

  else
  {
    v9 = qword_1A3A6A2E8[a4 - 1];
  }

  v10 = [(CAMCaptureCapabilities *)self isDepthEffectApertureSupportedForMode:a3 devicePosition:v9];
  result = 0.0;
  if (!v10)
  {
    return result;
  }

  v12 = [(CAMCaptureCapabilities *)self resolvedDeviceForDesiredDevice:a4 mode:a3 videoConfiguration:0 videoStabilizationStrength:0 frontRearSimultaneousVideoEnabled:0, 0.0];
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
        v18 = [(CAMCaptureCapabilities *)self significantZoomFactorsForMode:a3 device:v12];
        v22 = [MEMORY[0x1E696AD98] numberWithDouble:a5];
        v23 = [v18 containsObject:v22];

        if ((v23 & (v17 == a5)) != 0)
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

    if (v12 == 10 && [(CAMCaptureCapabilities *)self isDynamicAspectRatioSupportedForMode:a3 devicePosition:v9])
    {
      [(CAMCaptureCapabilities *)self smartFramingFieldOfViewLandscapeZoomFactor];
      if (vabdd_f64(v20, a5) >= 0.00000011920929)
      {
        [(CAMCaptureCapabilities *)self smartFramingFieldOfViewPortraitZoomFactor];
        if (vabdd_f64(v21, a5) >= 0.00000011920929)
        {
          v16 = 2.8;
          goto LABEL_20;
        }
      }

      goto LABEL_15;
    }
  }

LABEL_20:
  v24 = [(CAMCaptureCapabilities *)self continuousZoomSupportedForCinematicMode];
  result = 2.8;
  if (v9)
  {
    result = 4.5;
  }

  if (a3 != 7 || !v24)
  {
    return v16;
  }

  return result;
}

- (double)maximumPortraitEffectIntensity
{
  v2 = [(CAMCaptureCapabilities *)self isPortraitEffectIntensitySupported];
  result = 0.0;
  if (v2)
  {
    return 1.0;
  }

  return result;
}

- (double)defaultPortraitEffectIntensity
{
  v2 = [(CAMCaptureCapabilities *)self isPortraitEffectIntensitySupported];
  result = 0.0;
  if (v2)
  {
    return 0.5;
  }

  return result;
}

- (BOOL)isPortraitEffectIntensitySupportedForMode:(int64_t)a3
{
  v5 = [(CAMCaptureCapabilities *)self isPortraitEffectIntensitySupported];
  if (v5)
  {

    LOBYTE(v5) = [(CAMCaptureCapabilities *)self isLightingControlSupportedForMode:a3];
  }

  return v5;
}

- (BOOL)isExposureClippingIndicatorSupportedForMode:(int64_t)a3 videoConfiguration:(int64_t)a4
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
      v8 = a4 <= 0xC && ((1 << a4) & 0x1CE1) != 0 || (a4 - 10000) < 6;
      LOBYTE(v7) = (a3 < 0xA) & (0x3F3u >> a3) & v8;
    }
  }

  return v7;
}

- (BOOL)isLensPositionControlSupportedForMode:(int64_t)a3 device:(int64_t)a4 videoConfiguration:(int64_t)a5 videoStabilizationStrength:(int64_t)a6 frontRearSimultaneousVideoEnabled:(BOOL)a7
{
  v7 = a7;
  if (![(CAMCaptureCapabilities *)self isLensPositionControlSupported]|| ![(CAMCaptureCapabilities *)self _isLensPositionControlSupportedForMode:a3])
  {
    return 0;
  }

  v13 = [(CAMCaptureCapabilities *)self resolvedDeviceForDesiredDevice:a4 mode:a3 videoConfiguration:a5 videoStabilizationStrength:a6 frontRearSimultaneousVideoEnabled:v7];

  return [(CAMCaptureCapabilities *)self _isLensPositionControlSupportedForResolvedDevice:v13];
}

- (BOOL)_isLensPositionControlSupportedForResolvedDevice:(int64_t)a3
{
  v5 = [(CAMCaptureCapabilities *)self isLensPositionControlSupported];
  if (v5)
  {
    LOBYTE(v5) = 0;
    if (a3 <= 0xA)
    {
      if (((1 << a3) & 0x2C) != 0)
      {
        LOBYTE(v5) = 1;
      }

      else if (((1 << a3) & 0xD0) != 0)
      {

        LOBYTE(v5) = [(CAMCaptureCapabilities *)self _lensPositionControlSupportedForAggregateCameras];
      }

      else if (((1 << a3) & 0x700) != 0)
      {
        LOBYTE(v5) = ![(CAMCaptureCapabilities *)self isiPad];
      }
    }
  }

  return v5;
}

- (BOOL)_isLensPositionControlSupportedForMode:(int64_t)a3
{
  v4 = [(CAMCaptureCapabilities *)self isLensPositionControlSupported];
  v5 = 0x377u >> a3;
  if (a3 > 9)
  {
    LOBYTE(v5) = 0;
  }

  if (!v4)
  {
    LOBYTE(v5) = 0;
  }

  return v5 & 1;
}

- (BOOL)isImageAnalysisSupportedForMode:(int64_t)a3 devicePosition:(int64_t)a4
{
  result = [(CAMCaptureCapabilities *)self isImageAnalysisSupported];
  if (a3 & 0xFFFFFFFFFFFFFFFBLL | a4)
  {
    return 0;
  }

  return result;
}

- (BOOL)isSemanticDevelopmentSupportedForMode:(int64_t)a3
{
  v4 = +[CAMCaptureCapabilities capabilities];
  v5 = [v4 semanticDevelopmentSupported];

  return *&v5 & (a3 < 7) & (0x51u >> a3);
}

- (BOOL)isZoomPlatterSupportedForMode:(int64_t)a3 devicePosition:(int64_t)a4 videoConfiguration:(int64_t)a5
{
  v9 = [(CAMCaptureCapabilities *)self isZoomPlatterSupported];
  result = 0;
  if (!a4 && v9)
  {
    if (a3 > 9)
    {
      return 0;
    }

    else if (a3 == 6)
    {

      return [(CAMCaptureCapabilities *)self isQuadraWideZoomButtonSupportedForMode:6 devicePosition:0 videoConfiguration:a5];
    }

    else
    {
      return 1;
    }
  }

  return result;
}

- (BOOL)isZoomAllowedForMode:(int64_t)a3 device:(int64_t)a4 videoConfiguration:(int64_t)a5 videoStabilizationStrength:(int64_t)a6
{
  [(CAMCaptureCapabilities *)self maximumZoomFactorForMode:a3 device:a4 videoConfiguration:a5 videoStabilizationStrength:a6];
  v10 = v9;
  if (a3 != 6)
  {
    return v10 > 1.0;
  }

  v11 = (a4 - 1) > 0xA ? 0 : qword_1A3A6A2E8[a4 - 1];
  if (![(CAMCaptureCapabilities *)self isDynamicAspectRatioSupportedForMode:6 devicePosition:v11])
  {
    return v10 > 1.0;
  }

  return [(CAMCaptureCapabilities *)self dynamicAspectRatioZoomSupported];
}

- (unint64_t)frontZoomBehaviorForCaptureMode:(int64_t)a3 videoConfiguration:(int64_t)a4
{
  v7 = [(CAMCaptureCapabilities *)self _FFCZoomBehaviorForCaptureMode];
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v9 = [v7 objectForKeyedSubscript:v8];

  if (v9)
  {
    v10 = [v9 unsignedIntegerValue];
  }

  else
  {
    v10 = 0;
  }

  v11 = [(CAMCaptureCapabilities *)self isSmartFramingSupportedForMode:a3 devicePosition:1];
  if ((v11 | [(CAMCaptureCapabilities *)self isDynamicAspectRatioSupportedForMode:a3 videoConfiguration:a4 devicePosition:1]))
  {
    v12 = 0;
  }

  else
  {
    v12 = v10;
  }

  return v12;
}

- (BOOL)shouldAdjustZoomOnOrientationChangeForDevicePosition:(int64_t)a3
{
  if (a3 == 1)
  {
    return ![(CAMCaptureCapabilities *)self isiPad:v3];
  }

  else
  {
    return 0;
  }
}

- (double)maximumZoomFactorForMode:(int64_t)a3 device:(int64_t)a4 videoConfiguration:(int64_t)a5 videoStabilizationStrength:(int64_t)a6 shouldResolveDevice:(BOOL)a7
{
  v8 = a4;
  if ((a4 - 8) >= 3 && a4 != 11 && a4 != 1)
  {
    v12 = 0;
    v11 = 1;
    if (!a7)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v11 = 0;
  v12 = 1;
  if (a7)
  {
LABEL_5:
    v8 = [(CAMCaptureCapabilities *)self resolvedDeviceForDesiredDevice:a4 mode:a3 videoConfiguration:a5 videoStabilizationStrength:a6 frontRearSimultaneousVideoEnabled:0];
  }

LABEL_6:
  if ([(CAMCaptureCapabilities *)self _forcedBackCamera])
  {
    if (v8 == [(CAMCaptureCapabilities *)self _forcedBackCamera])
    {
      v13 = 1.0;
      if (![(CAMCaptureCapabilities *)self _allowZoomWithForcedBackCamera])
      {
        return v13;
      }
    }
  }

  if (v8 > 7)
  {
    LOBYTE(v14) = 0;
    v15 = 0;
    v16 = 0;
    LOBYTE(v17) = 1;
  }

  else
  {
    v14 = 0x80u >> v8;
    v15 = 0x10u >> v8;
    v16 = 0x40u >> v8;
    v17 = 0xF7u >> v8;
  }

  v18 = (a5 <= 0xC && a5 != 4 || (a5 - 10000) < 6) && [(CAMCaptureCapabilities *)self isQuadraWideBinningReconfigurationSupportedForMode:a3 devicePosition:v12 videoConfiguration:a5];
  v13 = 1.0;
  if (a3 > 3)
  {
    if (a3 == 7)
    {
      if ((v11 & v16 & [(CAMCaptureCapabilities *)self continuousZoomSupportedForCinematicMode]) != 1)
      {
        return v13;
      }

      [(CAMCaptureCapabilities *)self _backWideDualCinematicModeMaximumZoomFactor];
      goto LABEL_58;
    }

    if (a3 == 6)
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

    if (a3 != 4)
    {
      return v13;
    }

    goto LABEL_26;
  }

  if (!a3)
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

  if (a3 == 1)
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

    v21 = self;
    if (!v11)
    {
      [(CAMCaptureCapabilities *)self _frontVideoModeMaximumZoomFactor];
      goto LABEL_65;
    }

LABEL_63:
    [(CAMCaptureCapabilities *)v21 _backVideoModeMaximumZoomFactor];
LABEL_65:
    v13 = v20;
    goto LABEL_66;
  }

  if (a3 != 2)
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

    v21 = self;
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

- (double)defaultZoomFactorForGraphConfiguration:(id)a3 captureOrientation:(int64_t)a4 customLens:(int64_t)a5 outputToExternalStorage:(BOOL)a6 overrodeWithForcedZoomValue:(BOOL *)a7
{
  v7 = a3;
  v8 = [v7 mode];
  v9 = [v7 device];
  v10 = [v7 videoConfiguration];
  v11 = [v7 videoStabilizationStrength];
  v12 = [v7 videoEncodingBehavior];
  v13 = [v7 trueVideoEnabled];
  v14 = [v7 frontRearSimultaneousVideoEnabled];
  v15 = [v7 prefersHDR10BitVideo];
  v16 = [v7 smartFramingFieldOfView];

  BYTE3(v18) = v15;
  BYTE2(v18) = v14;
  BYTE1(v18) = v13;
  LOBYTE(v18) = a6;
  [CAMCaptureCapabilities defaultZoomFactorForMode:"defaultZoomFactorForMode:device:videoConfiguration:captureOrientation:videoStabilizationStrength:videoEncodingBehavior:customLens:outputToExternalStorage:isTrueVideo:frontRearSimultaneousVideoEnabled:prefersHDR10BitVideo:smartFramingFieldOfView:overrodeWithForcedZoomValue:" device:v8 videoConfiguration:v9 captureOrientation:v10 videoStabilizationStrength:a4 videoEncodingBehavior:v11 customLens:v12 outputToExternalStorage:a5 isTrueVideo:v18 frontRearSimultaneousVideoEnabled:v16 prefersHDR10BitVideo:a7 smartFramingFieldOfView:? overrodeWithForcedZoomValue:?];
  return result;
}

- (double)defaultZoomFactorForMode:(int64_t)a3 device:(int64_t)a4 videoConfiguration:(int64_t)a5 captureOrientation:(int64_t)a6
{
  LODWORD(v7) = 0;
  [CAMCaptureCapabilities defaultZoomFactorForMode:"defaultZoomFactorForMode:device:videoConfiguration:captureOrientation:videoStabilizationStrength:videoEncodingBehavior:customLens:outputToExternalStorage:isTrueVideo:frontRearSimultaneousVideoEnabled:prefersHDR10BitVideo:smartFramingFieldOfView:overrodeWithForcedZoomValue:" device:a3 videoConfiguration:a4 captureOrientation:a5 videoStabilizationStrength:a6 videoEncodingBehavior:0 customLens:1 outputToExternalStorage:0 isTrueVideo:v7 frontRearSimultaneousVideoEnabled:0 prefersHDR10BitVideo:0 smartFramingFieldOfView:? overrodeWithForcedZoomValue:?];
  return result;
}

- (double)defaultZoomFactorForMode:(int64_t)a3 device:(int64_t)a4 videoConfiguration:(int64_t)a5 captureOrientation:(int64_t)a6 videoStabilizationStrength:(int64_t)a7 videoEncodingBehavior:(int64_t)a8 customLens:(int64_t)a9 outputToExternalStorage:(BOOL)a10 isTrueVideo:(BOOL)a11 frontRearSimultaneousVideoEnabled:(BOOL)a12 prefersHDR10BitVideo:(BOOL)a13 smartFramingFieldOfView:(int64_t)a14 overrodeWithForcedZoomValue:(BOOL *)a15
{
  v74 = *MEMORY[0x1E69E9840];
  v22 = [(CAMCaptureCapabilities *)self resolvedDeviceForDesiredDevice:a4 mode:a3 videoConfiguration:a5 videoStabilizationStrength:a7 frontRearSimultaneousVideoEnabled:?];
  v23 = v22;
  if ((v22 - 8) < 3)
  {
    goto LABEL_4;
  }

  if (v22 == 11)
  {
    [(CAMCaptureCapabilities *)self maximumZoomFactorForMode:a3 device:11 videoConfiguration:a5 videoStabilizationStrength:a7];
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

  [(CAMCaptureCapabilities *)self maximumZoomFactorForMode:a3 device:v22 videoConfiguration:a5 videoStabilizationStrength:a7];
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
    v31 = [(CAMCaptureCapabilities *)self isQuadraWideZoomButtonSupportedForMode:a3 devicePosition:v25 videoConfiguration:a5];
    if (a3 == 6 && v31)
    {
      [(CAMCaptureCapabilities *)self _backWideDualCameraSwitchOverZoomFactor];
      v33 = v32;
      [(CAMCaptureCapabilities *)self quadraWideRelativeZoomFactor];
      v30 = v33 * v34;
    }

    BYTE2(v61) = a12;
    BYTE1(v61) = a13;
    LOBYTE(v61) = a11;
    if (![CAMCaptureCapabilities isVideoStabilizationStrength:"isVideoStabilizationStrength:supportedForMode:device:videoConfiguration:videoEncodingBehavior:outputToExternalStorage:trueVideoEnabled:prefersHDR10BitVideo:frontRearSimultaneousVideoEnabled:" supportedForMode:a7 device:a3 videoConfiguration:a4 videoEncodingBehavior:a5 outputToExternalStorage:a8 trueVideoEnabled:a10 prefersHDR10BitVideo:v61 frontRearSimultaneousVideoEnabled:?])
    {
      v35 = 0;
      v28 = v30;
      if ((v24 & 1) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_35;
    }

    if (a7 != 3)
    {
      if (a7 == 2)
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
    if (v23 == 4 && [(CAMCaptureCapabilities *)self isDualDeviceDisparitySupportedForMode:a3 devicePosition:v25])
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
  if (a3 == 6 && self->_backSingleCameraPortraitModeSupported)
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
  v40 = [(CAMCaptureCapabilities *)self frontZoomBehaviorForCaptureMode:a3 videoConfiguration:a5];
  if (v40 - 1 < 2)
  {
    if ([(CAMCaptureCapabilities *)self shouldAdjustZoomOnOrientationChangeForDevicePosition:1])
    {
      v39 = 0;
      if ((a6 - 1) >= 2)
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
  v41 = [(CAMCaptureCapabilities *)self isDynamicAspectRatioSupportedForMode:a3 devicePosition:1];
  v39 = 0;
  if (a3 == 6 && v41)
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
    v46 = [CAMZoomControlUtilities shouldApplyContinuousZoomForMode:a3 device:v23 videoConfiguration:a5 videoStabilizationStrength:a7 frontRearSimultaneousVideoEnabled:a12 zoomFactors:&v63 displayZoomFactors:&v62];
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
      v53 = [(CAMCaptureCapabilities *)self significantZoomFactorsForMode:a3 device:v23];
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
  if ([(CAMCaptureCapabilities *)self isCustomLensSupportedForMode:a3 device:v23 isTrueVideo:a11]&& !v39)
  {
    if (a9 > 5)
    {
      v56 = NAN;
    }

    else
    {
      v56 = dbl_1A3A6A280[a9] / dbl_1A3A6A250[a9];
    }

    [(CAMCaptureCapabilities *)self zoomFactorForCustomLensZoomFactor:v28 * v56];
    v28 = v57;
  }

  v58 = [(CAMCaptureCapabilities *)self isSmartFramingSupportedForMode:a3 devicePosition:v38];
  if (a14 && v58)
  {
    [(CAMCaptureCapabilities *)self zoomFactorForSmartFramingFieldOfView:a14];
    v28 = v59;
  }

  if (a15)
  {
    *a15 = v39;
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

- (id)significantZoomFactorsForMode:(int64_t)a3 device:(int64_t)a4
{
  v27[1] = *MEMORY[0x1E69E9840];
  if ((a4 - 8) < 3)
  {
    goto LABEL_4;
  }

  if (a4 == 11)
  {
    [(CAMCaptureCapabilities *)self isDualDeviceDisparitySupportedForMode:a3 devicePosition:1];
    v9 = &unk_1F16C9A88;
    goto LABEL_21;
  }

  if (a4 == 1)
  {
LABEL_4:
    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  v8 = [(CAMCaptureCapabilities *)self isDualDeviceDisparitySupportedForMode:a3 devicePosition:v7];
  v9 = &unk_1F16C9A88;
  if (a4 > 5)
  {
    if ((a4 - 6) >= 2)
    {
      goto LABEL_21;
    }

    goto LABEL_12;
  }

  if (a4 == 2)
  {
    goto LABEL_12;
  }

  if (a4 != 3)
  {
    if (a4 != 4)
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
    [CAMZoomControlUtilities zoomScaleFromDevice:2 toDevice:a4];
    v15 = v14;
    v16 = [(CAMCaptureCapabilities *)self isQuadraWideZoomButtonSupportedForMode:a3 devicePosition:v7 videoConfiguration:0];
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

  if (![(CAMCaptureCapabilities *)self isQuadraTeleZoomButtonSupportedForMode:a3 devicePosition:0 videoConfiguration:0])
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

- (BOOL)processZoomWithoutUpscaleForDevicePosition:(int64_t)a3
{
  if (a3 == 1)
  {
    return [(CAMCaptureCapabilities *)self _processZoomWithoutUpscaleFront];
  }

  if (a3)
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

  v3 = [(CAMCaptureCapabilities *)self availableCustomLenses];
  v4 = [v3 firstObject];
  v5 = [v4 integerValue];

  return v5;
}

- (int64_t)effectiveFocalLengthForCustomLens:(int64_t)a3
{
  if (a3 > 5)
  {
    return 0;
  }

  if (((1 << a3) & 0x34) != 0)
  {
    return 2;
  }

  if (((1 << a3) & 0xA) != 0)
  {
    return 1;
  }

  return [(CAMCaptureCapabilities *)self baseFocalLengthForWideCamera];
}

- (int64_t)baseFocalLengthForCustomLens:(int64_t)a3
{
  if ((a3 - 3) < 2)
  {
    return 3;
  }

  if (a3 == 5)
  {
    return 1;
  }

  if (a3)
  {
    return 0;
  }

  return [(CAMCaptureCapabilities *)self baseFocalLengthForWideCamera];
}

- (NSArray)defaultCustomLensGroup
{
  v3 = [(CAMCaptureCapabilities *)self supportedCustomLensGroups];
  v4 = [v3 lastObject];
  if ([v3 count] >= 2 && -[CAMCaptureCapabilities baseFocalLengthForWideCamera](self, "baseFocalLengthForWideCamera") == 3)
  {
    v5 = [v3 objectAtIndexedSubscript:{objc_msgSend(v3, "count") - 2}];

    v4 = v5;
  }

  return v4;
}

- (int64_t)supportedCustomLensForLens:(int64_t)a3 inGroup:(id)a4
{
  v6 = [(CAMCaptureCapabilities *)self supportedCustomLensGroupForGroup:a4];
  v7 = [(CAMCaptureCapabilities *)self _nearestCustomLensToLens:a3 inGroup:v6];

  return v7;
}

- (id)supportedCustomLensGroupForGroup:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 count])
  {
    v5 = v4;
    v6 = [(CAMCaptureCapabilities *)self availableCustomLenses];
    v7 = [(CAMCaptureCapabilities *)self supportedCustomLensGroups];
    if (([v7 containsObject:v5] & 1) == 0)
    {
      v17 = v7;
      v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v5, "count")}];
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v9 = v5;
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

            v14 = [MEMORY[0x1E696AD98] numberWithInteger:{-[CAMCaptureCapabilities _nearestCustomLensToLens:inGroup:](self, "_nearestCustomLensToLens:inGroup:", objc_msgSend(*(*(&v18 + 1) + 8 * i), "integerValue"), v6)}];
            [v8 addObject:v14];
          }

          v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
        }

        while (v11);
      }

      v7 = v17;
      if ([v17 containsObject:v8])
      {
        v15 = v8;
      }

      else
      {
        v15 = [(CAMCaptureCapabilities *)self defaultCustomLensGroup];
      }

      v5 = v15;
    }
  }

  else
  {
    v5 = [(CAMCaptureCapabilities *)self defaultCustomLensGroup];
  }

  return v5;
}

- (int64_t)_nearestCustomLensToLens:(int64_t)a3 inGroup:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [(CAMCaptureCapabilities *)self effectiveFocalLengthForCustomLens:a3];
  v8 = 0.0;
  if (v7 <= 3)
  {
    v8 = dbl_1A3A6A2B0[v7];
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = v6;
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

      v16 = [*(*(&v21 + 1) + 8 * v15) integerValue];
      v17 = [(CAMCaptureCapabilities *)self effectiveFocalLengthForCustomLens:v16];
      v18 = 0.0;
      if (v17 <= 3)
      {
        v18 = dbl_1A3A6A2B0[v17];
      }

      v19 = vabdd_f64(v18, v8);
      if (v19 < v14)
      {
        v12 = v16;
        v14 = v19;
        if (v18 - v8 == 0.0)
        {
          break;
        }
      }

      if (v11 == ++v15)
      {
        v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
        v16 = v12;
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
    v16 = 0;
  }

  return v16;
}

- (BOOL)isCustomLensSupportedForMode:(int64_t)a3 device:(int64_t)a4 isTrueVideo:(BOOL)a5
{
  v8 = [(CAMCaptureCapabilities *)self focalLengthPickerSupported];
  v9 = a3 == 1 && a5;
  if (a3)
  {
    v10 = v9;
  }

  else
  {
    v10 = 1;
  }

  v11 = *&v10 & (a4 < 8) & (0xD5u >> a4);
  if (v8)
  {
    return v11;
  }

  else
  {
    return 0;
  }
}

- (BOOL)isCustomLensSupportedForPhotoResolution:(int64_t)a3
{
  result = [(CAMCaptureCapabilities *)self focalLengthPickerSupported];
  if ((a3 & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    return 0;
  }

  return result;
}

- (double)zoomFactorForCustomLensZoomFactor:(double)a3
{
  [(CAMCaptureCapabilities *)self _maximumZoomFactorWithout24MPUpscale];
  if (vabdd_f64(a3, result) / result >= 0.05)
  {
    return a3;
  }

  return result;
}

- (int64_t)preferredDeviceForPosition:(int64_t)a3 mode:(int64_t)a4 videoConfiguration:(int64_t)a5 videoStabilizationStrength:(int64_t)a6 frontRearSimultaneousVideoEnabled:(BOOL)a7
{
  v7 = a5;
  v32[1] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    if (a3 != 1)
    {
      return 0;
    }

    if ([(CAMCaptureCapabilities *)self isDynamicAspectRatioSupportedForMode:a4 devicePosition:1, a5, a6, a7])
    {
      return 10;
    }

    if ([(CAMCaptureCapabilities *)self isPearlSupportedForMode:a4 devicePosition:1])
    {
      return 9;
    }

    if ([(CAMCaptureCapabilities *)self frontZoomBehaviorForCaptureMode:a4 videoConfiguration:v7]- 1 > 1)
    {
      return 8;
    }

    if ([(CAMCaptureCapabilities *)self isSuperWideSupportedForMode:a4 devicePosition:1 videoConfiguration:v7])
    {
      return 10;
    }

    return 8;
  }

  v11 = a7;
  if (a4 > 5)
  {
    if ((a4 - 8) >= 2)
    {
      if (a4 == 6)
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

      v14 = a4 == 7;
      v15 = &unk_1F16C9B30;
      goto LABEL_22;
    }

    v13 = &unk_1F16C9AA0;
  }

  else
  {
    if ((a4 - 2) >= 4 && a4)
    {
      v15 = &unk_1F16C9AD0;
      if (a7)
      {
        v15 = &unk_1F16C9AB8;
      }

      v14 = a4 == 1;
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
  v16 = [(CAMCaptureCapabilities *)self _forcedBackDeviceForMode:a4 videoConfiguration:v7];
  if (v16)
  {
    v17 = [MEMORY[0x1E696AD98] numberWithInteger:v16];
    v32[0] = v17;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:1];
    v13 = [v18 arrayByAddingObjectsFromArray:v13];
  }

  if ((a6 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v19 = [v13 arrayByAddingObject:&unk_1F16C7F10];

    if ([(CAMCaptureCapabilities *)self _needsForcedSingleCameraEmulationForVideoStabilizationStrength:a6 videoConfiguration:v7 mode:a4])
    {
      v7 = 9;
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

        v25 = [*(*(&v27 + 1) + 8 * i) integerValue];
        v10 = v25;
        if (v25 > 4)
        {
          if (v25 == 5)
          {
            if ([(CAMCaptureCapabilities *)self isSuperWideSupportedForMode:a4 devicePosition:0 videoConfiguration:v7])
            {
              goto LABEL_62;
            }
          }

          else if (v25 == 7)
          {
            if ([(CAMCaptureCapabilities *)self isTripleCameraSupportedForMode:a4 devicePosition:0 videoConfiguration:v7 videoStabilizationStrength:a6 frontRearSimultaneousVideoEnabled:v11])
            {
              goto LABEL_62;
            }
          }

          else if (v25 == 6 && [(CAMCaptureCapabilities *)self isWideDualSupportedForMode:a4 devicePosition:0 videoConfiguration:v7 videoStabilizationStrength:a6])
          {
            goto LABEL_62;
          }
        }

        else if (v25 == 2)
        {
          if ([(CAMCaptureCapabilities *)self isWideSupportedForMode:a4 devicePosition:0 videoConfiguration:v7])
          {
            goto LABEL_62;
          }
        }

        else if (v25 == 3)
        {
          if ([(CAMCaptureCapabilities *)self isTelephotoSupportedForMode:a4 devicePosition:0 videoConfiguration:v7])
          {
            goto LABEL_62;
          }
        }

        else if (v25 == 4 && [(CAMCaptureCapabilities *)self isDualSupportedForMode:a4 devicePosition:0 videoConfiguration:v7 videoStabilizationStrength:a6])
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

- (BOOL)isDynamicAspectRatioSupportedForMode:(int64_t)a3 devicePosition:(int64_t)a4
{
  v7 = [(CAMCaptureCapabilities *)self dynamicAspectRatioSupported];
  if (v7)
  {
    v8 = 0;
    if (a3 <= 1)
    {
      if (a3)
      {
        if (a3 == 1)
        {
          v8 = [(CAMCaptureCapabilities *)self _dynamicAspectRatioInVideoModeSupported];
        }

        goto LABEL_12;
      }
    }

    else if (a3 != 2)
    {
      if (a3 == 7)
      {
        v8 = [(CAMCaptureCapabilities *)self _dynamicAspectRatioInCinematicModeSupported];
        goto LABEL_12;
      }

      if (a3 != 6)
      {
        goto LABEL_12;
      }
    }

    v8 = 1;
LABEL_12:
    LOBYTE(v7) = a4 == 1 && v8;
  }

  return v7;
}

- (int64_t)_forcedBackDeviceForMode:(int64_t)a3 videoConfiguration:(int64_t)a4
{
  v7 = [(CAMCaptureCapabilities *)self _forcedBackCamera];
  [(CAMCaptureCapabilities *)self _forcedInitialZoomDisplayFactor];
  if (!v7)
  {
    v9 = v8;
    if (v8 != 0.0)
    {
      if (a3 == 6)
      {
        if ([(CAMCaptureCapabilities *)self continuousZoomSupportedForPortraitMode])
        {
          return 0;
        }
      }

      else if (a3 == 7 && [(CAMCaptureCapabilities *)self continuousZoomSupportedForCinematicMode])
      {
        return 0;
      }

      if ([(CAMCaptureCapabilities *)self isDualDeviceDisparitySupportedForMode:a3 devicePosition:0])
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

        if ([(CAMCaptureCapabilities *)self isQuadraWideZoomButtonSupportedForMode:a3 devicePosition:0 videoConfiguration:a4])
        {
          [(CAMCaptureCapabilities *)self quadraWideDisplayZoomFactor];
          if (v9 == v14)
          {
            return 6;
          }
        }
      }

      else if ((a3 - 2) < 2 || a3 == 5 || a3 == 1 && (a4 == 4 || a4 == 13 || a4 == 9 && [(CAMCaptureCapabilities *)self _backDualCameraVideoCapture4kMaxFPS]<= 59 && [(CAMCaptureCapabilities *)self _backWideDualCameraVideoCapture4kMaxFPS]<= 59 && [(CAMCaptureCapabilities *)self _backTripleCameraVideoCapture4kMaxFPS]<= 59))
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

        if ([(CAMCaptureCapabilities *)self isQuadraWideZoomButtonSupportedForMode:a3 devicePosition:0 videoConfiguration:a4])
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

  return v7;
}

- (int64_t)resolvedDeviceForDesiredDevice:(int64_t)a3 mode:(int64_t)a4 videoConfiguration:(int64_t)a5 videoStabilizationStrength:(int64_t)a6 frontRearSimultaneousVideoEnabled:(BOOL)a7
{
  v7 = a7;
  result = [(CAMCaptureCapabilities *)self sanitizeDesiredDevice:a3 forMode:?];
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

      return [(CAMCaptureCapabilities *)self preferredDeviceForPosition:v13 mode:a4 videoConfiguration:a5 videoStabilizationStrength:a6 frontRearSimultaneousVideoEnabled:v7];
    }
  }

  return result;
}

- (unint64_t)semanticStyleSupportForMode:(int64_t)a3 devicePosition:(int64_t)a4
{
  if ([(CAMCaptureCapabilities *)self smartStylesSupported])
  {
    v7 = [(CAMCaptureCapabilities *)self _desiredSmartStyleSupportForMode:a3 devicePosition:a4];
  }

  else
  {
    v7 = [(CAMCaptureCapabilities *)self _desiredSemanticStyleSupportForMode:a3 devicePosition:a4];
  }

  return [(CAMCaptureCapabilities *)self semanticStylesSupport]& v7;
}

- (unint64_t)_desiredSemanticStyleSupportForMode:(int64_t)a3 devicePosition:(int64_t)a4
{
  if (a3 <= 3)
  {
    if (a3)
    {
      return a3 == 1;
    }

    return -1;
  }

  if (a3 == 9)
  {
    return 5;
  }

  if (a3 != 6)
  {
    if (a3 != 4)
    {
      return 0;
    }

    return -1;
  }

  if (a4)
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

- (unint64_t)_desiredSmartStyleSupportForMode:(int64_t)a3 devicePosition:(int64_t)a4
{
  result = 0;
  if (a3 <= 5)
  {
    if (a3)
    {
      if (a3 != 1)
      {
        return result;
      }

      return [(CAMCaptureCapabilities *)self _smartStylesAdditionalSystemStyleSupport:v4];
    }

    return -1;
  }

  if (a3 == 7)
  {
    return [(CAMCaptureCapabilities *)self _smartStylesAdditionalSystemStyleSupport:v4];
  }

  if (a3 == 6)
  {
    return -1;
  }

  return result;
}

- (id)captureStyleForCaptureWithSupport:(unint64_t)a3 styles:(id)a4 selectedStyleIndex:(unint64_t)a5 smartStyleSystemStyleIndex:(unint64_t)a6
{
  v8 = a3;
  v10 = a4;
  v11 = v10;
  if ((v8 & 2) != 0)
  {
    if ([v10 count] > a5)
    {
      v13 = v11;
      v14 = a5;
LABEL_7:
      v12 = [v13 objectAtIndexedSubscript:v14];
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
    if (v8)
    {
      v12 = +[CAMSemanticStyle standardStyle];
      goto LABEL_19;
    }

    goto LABEL_13;
  }

  if (v8)
  {
    if ([v11 count] <= a6)
    {
      v17 = os_log_create("com.apple.camera", "Camera");
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [CAMCaptureCapabilities captureStyleForCaptureWithSupport:v11 styles:? selectedStyleIndex:? smartStyleSystemStyleIndex:?];
      }

      v12 = [MEMORY[0x1E6993890] systemStyle];
      goto LABEL_19;
    }

    v13 = v11;
    v14 = a6;
    goto LABEL_7;
  }

  v12 = [MEMORY[0x1E6993890] identityStyle];
LABEL_19:
  v16 = v12;
LABEL_20:

  return v16;
}

- (id)captureStyleForPreviewWithSupport:(unint64_t)a3 styles:(id)a4 selectedStyleIndex:(unint64_t)a5 smartStyleSystemStyleIndex:(unint64_t)a6
{
  v10 = a4;
  if ([(CAMCaptureCapabilities *)self smartStylesSupported])
  {
    v11 = [(CAMCaptureCapabilities *)self captureStyleForCaptureWithSupport:a3 styles:v10 selectedStyleIndex:a5 smartStyleSystemStyleIndex:a6];
LABEL_3:
    v12 = v11;
    goto LABEL_11;
  }

  if ((a3 & 4) != 0)
  {
    if ([v10 count] > a5)
    {
      v11 = [v10 objectAtIndexedSubscript:a5];
      goto LABEL_3;
    }

    v13 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [CAMCaptureCapabilities captureStyleForCaptureWithSupport:v10 styles:? selectedStyleIndex:? smartStyleSystemStyleIndex:?];
    }
  }

  v12 = 0;
LABEL_11:

  return v12;
}

+ (BOOL)isCameraAppInstalled
{
  v2 = [MEMORY[0x1E6963608] defaultWorkspace];
  v3 = [v2 applicationIsInstalled:@"com.apple.camera"];

  return (CFPreferencesGetAppBooleanValue(@"CAMFeatureDevelopmentEmulateAppDeletedSettings", @"com.apple.camera", 0) == 0) & v3;
}

+ (BOOL)isMessagesAppInstalled
{
  v2 = [MEMORY[0x1E6963608] defaultWorkspace];
  v3 = [v2 applicationIsInstalled:@"com.apple.MobileSMS"];

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
  v2 = [(CAMCaptureCapabilities *)self _backCameraSupportedRAWResolutionsByMode];
  v3 = [v2 count] != 0;

  return v3;
}

- (BOOL)backEnhancedHEICResolutionSupported
{
  v2 = [(CAMCaptureCapabilities *)self _backCameraSupportedCompressedResolutionsByMode];
  v3 = [v2 count] != 0;

  return v3;
}

- (BOOL)isPhotoResolutionSupported:(int64_t)a3 forPhotoEncoding:(int64_t)a4
{
  if ([(CAMCaptureCapabilities *)self isPhotoResolutionSupported:a3 forMode:0 device:0 photoEncoding:a4])
  {
    return 1;
  }

  return [(CAMCaptureCapabilities *)self isPhotoResolutionSupported:a3 forMode:0 device:1 photoEncoding:a4];
}

- (BOOL)isPhotoResolutionSupported:(int64_t)a3 forMode:(int64_t)a4 device:(int64_t)a5 photoEncoding:(int64_t)a6
{
  if (!a3)
  {
    return 1;
  }

  if ((a5 - 1) > 0xA)
  {
    v7 = 0;
  }

  else
  {
    v7 = qword_1A3A6A2E8[a5 - 1];
  }

  v9 = [(CAMCaptureCapabilities *)self supportedPhotoResolutionsForMode:a4 devicePosition:v7 photoEncoding:a6];
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v11 = [v9 containsObject:v10];

  return v11;
}

- (BOOL)isPhotoResolutionSupported:(int64_t)a3 forLightingType:(int64_t)a4
{
  if ((a3 - 1) > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = qword_1A3A6A2D0[a3 - 1];
  }

  v5 = 12;
  if (a4 == 1)
  {
    v5 = 24;
  }

  return !a4 || v5 >= v4;
}

- (int64_t)maximumPhotoResolutionForMode:(int64_t)a3 device:(int64_t)a4 encoding:(int64_t)a5
{
  if ((a4 - 1) > 0xA)
  {
    v11 = 0;
  }

  else
  {
    v11 = qword_1A3A6A2E8[a4 - 1];
  }

  v12 = [(CAMCaptureCapabilities *)self supportedPhotoResolutionsForMode:a3 devicePosition:v11 photoEncoding:a5, v8, v7, v6, v5, v9, v10];
  v13 = v12;
  if (v12)
  {
    v14 = [v12 lastObject];
    v15 = [v14 integerValue];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)supportedPhotoResolutionsForMode:(int64_t)a3 devicePosition:(int64_t)a4 photoEncoding:(int64_t)a5
{
  if (a5 < 2)
  {
    if (a4)
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

  if (a5 == 2)
  {
    if (a4)
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
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:{a3, a4}];
  v9 = [v7 objectForKeyedSubscript:v8];

  return v9;
}

- (BOOL)supportsOverlappingCapturesForResolution:(int64_t)a3
{
  if (a3 < 3)
  {
    return 1;
  }

  if (a3 == 3)
  {
    return [(CAMCaptureCapabilities *)self _overlapping48MPCapturesSupported];
  }

  return 0;
}

- (BOOL)isPhotoFormatSupported:(id)a3 forMode:(int64_t)a4 device:(int64_t)a5
{
  var1 = a3.var1;
  var0 = a3.var0;
  if (a3.var0)
  {
    if (a3.var0 == 1)
    {
      if (![(CAMCaptureCapabilities *)self isHEVCEncodingSupported])
      {
        return 0;
      }
    }

    else if (a3.var0 != 2 || ![(CAMCaptureCapabilities *)self isLinearDNGSupported])
    {
      return 0;
    }
  }

  return [(CAMCaptureCapabilities *)self isPhotoResolutionSupported:var1 forMode:a4 device:a5 photoEncoding:var0];
}

- (BOOL)isPreviewAspectRatioToggleSupportedForMode:(int64_t)a3
{
  v5 = [(CAMCaptureCapabilities *)self isiPad];
  if (v5)
  {
    LOBYTE(v5) = 0;
    if (a3 <= 7)
    {
      if (((1 << a3) & 0xA6) != 0)
      {
        LOBYTE(v5) = 1;
      }

      else if (((1 << a3) & 0x41) != 0)
      {

        LOBYTE(v5) = [(CAMCaptureCapabilities *)self _isPreviewAspectRatioToggleSupportedForPhotoModes];
      }
    }
  }

  return v5;
}

- (BOOL)isZoomPIPSupportedForMode:(int64_t)a3 devicePosition:(int64_t)a4 frontRearSimultaneousVideoEnabled:(BOOL)a5
{
  v9 = [(CAMCaptureCapabilities *)self isZoomPIPSupported];
  result = 0;
  if (v9 && !a5)
  {
    if (a3 >= 2)
    {
      v11 = a3 == 2 && [(CAMCaptureCapabilities *)self _zoomPIPSupportedForSlomo];
    }

    else
    {
      v11 = 1;
    }

    return a4 == 0 && v11;
  }

  return result;
}

- (BOOL)isDeferredProcessingSupportedForMode:(int64_t)a3 devicePosition:(int64_t)a4
{
  switch(a3)
  {
    case 9:
      return [(CAMCaptureCapabilities *)self isDeferredProcessingSupported];
    case 6:
      if (a4)
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

- (BOOL)isDeferredProcessingPrewarmingSupportedForMode:(int64_t)a3 devicePosition:(int64_t)a4
{
  v6 = [(CAMCaptureCapabilities *)self isDeferredProcessingSupportedForMode:a3 devicePosition:?];
  if (v6)
  {
    if (a4 == 1)
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

- (int64_t)maxSupportedPhotoQualityPrioritizationForMode:(int64_t)a3 devicePosition:(int64_t)a4
{
  result = 1;
  if (a3 <= 5)
  {
    if (a3 >= 2)
    {
      if (a3 == 5)
      {
        return 0;
      }

      return result;
    }

    goto LABEL_8;
  }

  if (a3 != 6)
  {
    if (a3 != 9)
    {
      return result;
    }

LABEL_8:
    v6 = [(CAMCaptureCapabilities *)self isDeferredProcessingSupported];
    goto LABEL_10;
  }

  v6 = [(CAMCaptureCapabilities *)self isDeferredProcessingSupportedForMode:6 devicePosition:a4];
LABEL_10:
  if (v6)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (BOOL)isExternalStorageOutputSupportedForMode:(int64_t)a3 videoEncodingBehavior:(int64_t)a4
{
  result = 0;
  if (a3 <= 4)
  {
    if (a3 == 1)
    {
      if (a4 >= 2)
      {
        return a4 == 2;
      }
    }

    else if (a3 != 2)
    {
      return result;
    }
  }

  else if (a3 != 5)
  {
    if (a3 == 7)
    {
      if (a4 >= 2)
      {
        if (a4 != 2)
        {
          return 0;
        }

        if ([(CAMCaptureCapabilities *)self _isProResCinematicVideoSupported])
        {
          return 1;
        }
      }
    }

    else if (a3 != 8)
    {
      return result;
    }
  }

  return [(CAMCaptureCapabilities *)self _isExternalStoreSupportedForAllVideoFormats];
}

- (BOOL)isPauseVideoSupportedForMode:(int64_t)a3
{
  v4 = [(CAMCaptureCapabilities *)self _supportedModesForPauseResumeVideo];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v6 = [v4 containsObject:v5];

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

  v3 = [(CAMCaptureCapabilities *)self fallbackCameraModules];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)isSmudgeDetectionSupportedForMode:(int64_t)a3
{
  result = [(CAMCaptureCapabilities *)self isSmudgeDetectionSupported];
  if ((a3 & 0xFFFFFFFFFFFFFFFBLL) != 0)
  {
    return 0;
  }

  return result;
}

- (BOOL)isSmartFramingSupportedForMode:(int64_t)a3 devicePosition:(int64_t)a4
{
  v6 = [(CAMCaptureCapabilities *)self isSmartFramingSupported];
  if (a3)
  {
    v7 = 0;
  }

  else
  {
    v7 = a4 == 1;
  }

  v8 = v7;
  return v6 && v8;
}

- (double)zoomFactorForSmartFramingFieldOfView:(int64_t)a3
{
  if (a3 > 2)
  {
    if (a3 != 3)
    {
      if (a3 == 4)
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
    if (a3 != 1)
    {
      if (a3 == 2)
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