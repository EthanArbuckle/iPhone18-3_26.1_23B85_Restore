@interface CAMAnalyticsCaptureEvent
- (CAMAnalyticsCaptureEvent)initWithEvent:(id)event;
- (CAMAnalyticsCaptureEvent)initWithGraphConfiguration:(id)configuration outputToExternalStorage:(BOOL)storage;
- (id)_defaultRangeStringForValue:(float)value lowerBound:(float)bound upperBound:(float)upperBound defaultValue:(float)defaultValue;
- (id)_zoomRangeStringForDisplayZoomValue:(double)value zoomPoints:(id)points mode:(int64_t)mode device:(int64_t)device;
- (void)_populateFromCaptureRequest:(id)request;
- (void)_trackAnchor:(int64_t)anchor;
- (void)populateAEAFLocked:(BOOL)locked;
- (void)populateBurstLength:(int64_t)length;
- (void)populateDesiredFlashMode:(int64_t)mode desiredLivePhotoMode:(int64_t)photoMode desiredHDRMode:(int64_t)rMode timerDuration:(int64_t)duration;
- (void)populateDesiredMacroMode:(int64_t)mode isMacroCapture:(BOOL)capture isMacroSuggested:(BOOL)suggested;
- (void)populateDesiredNightModeControlMode:(unint64_t)mode resolvedNightModeControlMode:(unint64_t)controlMode resolvedNightMode:(int64_t)nightMode nightModeStatus:(int64_t)status;
- (void)populateDesiredTorchMode:(int64_t)mode;
- (void)populateDeviceOrientation:(int64_t)orientation isDeviceOrientationLocked:(BOOL)locked;
- (void)populateDuration:(double)duration;
- (void)populateExposureSliderBias:(float)bias exposureTapAndBias:(float)andBias totalExposureBias:(float)exposureBias;
- (void)populateForTimelapseCaptureOrientation:(int64_t)orientation captureMirrored:(BOOL)mirrored origin:(int64_t)origin pressType:(int64_t)type startDate:(id)date;
- (void)populateFromPanoramaCaptureRequest:(id)request;
- (void)populateFromPanoramaCaptureStoppingReason:(int64_t)reason;
- (void)populateFromStillImageCaptureRequest:(id)request burst:(BOOL)burst preferences:(id)preferences;
- (void)populateFromStillImageCaptureResponse:(id)response;
- (void)populateFromVideoCaptureRequest:(id)request preferences:(id)preferences;
- (void)populateFromVideoCaptureResponse:(id)response;
- (void)populateObjectResultsWithNumberOfFaces:(unint64_t)faces numberOfCats:(unint64_t)cats numberOfDogs:(unint64_t)dogs;
- (void)populatePanoramaDirection:(int64_t)direction;
- (void)populatePanoramaInstruction:(int64_t)instruction;
- (void)populatePortraitStatus:(int64_t)status lightingEffectIntensity:(double)intensity apertureValue:(double)value zoomFactor:(double)factor isDepthSuggestionAllowed:(BOOL)allowed request:(id)request;
- (void)populateSharedLibraryMode:(int64_t)mode;
- (void)populateZoomFieldOfView:(int64_t)view graphConfiguration:(id)configuration smartFramingSource:(int64_t)source;
- (void)populateZoomFromDisplayZoomValue:(double)value zoomPoints:(id)points zoomInteractionType:(int64_t)type;
- (void)populateZoomFromZoomButtonSymbol:(int64_t)symbol zoomInteractionType:(int64_t)type;
- (void)trackFrontRearSimultaneousVideoPIPMoveToAnchor:(int64_t)anchor;
@end

@implementation CAMAnalyticsCaptureEvent

- (CAMAnalyticsCaptureEvent)initWithGraphConfiguration:(id)configuration outputToExternalStorage:(BOOL)storage
{
  configurationCopy = configuration;
  v12.receiver = self;
  v12.super_class = CAMAnalyticsCaptureEvent;
  v7 = [(CAMAnalyticsEvent *)&v12 init];
  if (v7)
  {
    v7->__captureMode = [configurationCopy mode];
    v7->__captureDevice = [configurationCopy device];
    v7->__captureDevicePosition = [configurationCopy devicePosition];
    v7->__captureVideoConfiguration = [configurationCopy videoConfiguration];
    v7->__videoStabilizationStrength = [configurationCopy videoStabilizationStrength];
    v7->__outputToExternalStorage = storage;
    v7->__colorSpace = [configurationCopy colorSpace];
    v7->__frontRearSimultaneousVideoPIPInteractionCount = 0;
    v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    trackedFrontRearSimultaneousVideoAnchors = v7->__trackedFrontRearSimultaneousVideoAnchors;
    v7->__trackedFrontRearSimultaneousVideoAnchors = v8;

    v10 = v7;
  }

  return v7;
}

- (CAMAnalyticsCaptureEvent)initWithEvent:(id)event
{
  eventCopy = event;
  v10.receiver = self;
  v10.super_class = CAMAnalyticsCaptureEvent;
  v5 = [(CAMAnalyticsEvent *)&v10 initWithEvent:eventCopy];
  if (v5)
  {
    v5->__captureMode = [eventCopy _captureMode];
    v5->__captureDevice = [eventCopy _captureDevice];
    v5->__captureDevicePosition = [eventCopy _captureDevicePosition];
    v5->__captureVideoConfiguration = [eventCopy _captureVideoConfiguration];
    v5->__mediaType = [eventCopy _mediaType];
    v5->__isStillDuringVideo = [eventCopy _isStillDuringVideo];
    v5->__outputToExternalStorage = [eventCopy _outputToExternalStorage];
    v5->__colorSpace = [eventCopy _colorSpace];
    v5->__frontRearSimultaneousVideoPIPInteractionCount = 0;
    v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    trackedFrontRearSimultaneousVideoAnchors = v5->__trackedFrontRearSimultaneousVideoAnchors;
    v5->__trackedFrontRearSimultaneousVideoAnchors = v6;

    v8 = v5;
  }

  return v5;
}

- (void)_populateFromCaptureRequest:(id)request
{
  requestCopy = request;
  type = [requestCopy type];
  if (type == 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = type;
    if (type != 1)
    {
      if (type)
      {
        goto LABEL_8;
      }

      ctmCaptureType = [requestCopy ctmCaptureType];
      if (ctmCaptureType >= 3)
      {
        goto LABEL_8;
      }

      v5 = qword_1A3A6AC48[ctmCaptureType];
    }
  }

  [(CAMAnalyticsCaptureEvent *)self set_mediaType:v5];
LABEL_8:
  captureMode = [requestCopy captureMode];
  if (captureMode > 9)
  {
    v8 = 0;
  }

  else
  {
    v8 = off_1E76FE288[captureMode];
  }

  _eventMap = [(CAMAnalyticsEvent *)self _eventMap];
  [_eventMap setObject:v8 forKeyedSubscript:@"captureMode"];

  captureDevice = [requestCopy captureDevice];
  if (captureDevice > 0xB)
  {
    v11 = 0;
  }

  else
  {
    v11 = off_1E76FE458[captureDevice];
  }

  _eventMap2 = [(CAMAnalyticsEvent *)self _eventMap];
  [_eventMap2 setObject:v11 forKeyedSubscript:@"device"];

  captureDevicePosition = [requestCopy captureDevicePosition];
  v14 = @"Front";
  if (captureDevicePosition != 1)
  {
    v14 = 0;
  }

  if (!captureDevicePosition)
  {
    v14 = @"Back";
  }

  v15 = v14;
  _eventMap3 = [(CAMAnalyticsEvent *)self _eventMap];
  [_eventMap3 setObject:v15 forKeyedSubscript:@"devicePosition"];

  captureOrientation = [requestCopy captureOrientation];
  v18 = 0;
  if (captureOrientation <= 4)
  {
    v18 = off_1E76FE4B8[captureOrientation];
  }

  _eventMap4 = [(CAMAnalyticsEvent *)self _eventMap];
  [_eventMap4 setObject:v18 forKeyedSubscript:@"orientation"];

  origin = [requestCopy origin];
  v21 = @"MessagesCamera";
  if (origin != 1)
  {
    v21 = 0;
  }

  if (!origin)
  {
    v21 = @"Camera";
  }

  v22 = v21;
  _eventMap5 = [(CAMAnalyticsEvent *)self _eventMap];
  [_eventMap5 setObject:v22 forKeyedSubscript:@"origin"];

  v24 = +[CAMCaptureCapabilities capabilities];
  hostProcess = [v24 hostProcess];
  v26 = 0;
  if (hostProcess <= 5)
  {
    v26 = off_1E76FE4E0[hostProcess];
  }

  _eventMap6 = [(CAMAnalyticsEvent *)self _eventMap];
  [_eventMap6 setObject:v26 forKeyedSubscript:@"hostProcess"];

  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  _eventMap7 = [(CAMAnalyticsEvent *)self _eventMap];
  [_eventMap7 setObject:bundleIdentifier forKeyedSubscript:@"bundleID"];

  pressType = [requestCopy pressType];
  if (pressType <= 105)
  {
    switch(pressType)
    {
      case 'f':
        v32 = @"Secondary";
        goto LABEL_42;
      case 'g':
        v32 = @"Primary";
        goto LABEL_42;
      case 'h':
        v32 = @"Lock";
        goto LABEL_42;
    }

LABEL_38:
    v32 = @"Other";
    goto LABEL_42;
  }

  if (pressType > 107)
  {
    if (pressType == 108)
    {
      v32 = @"HeadphonesRightButton";
      goto LABEL_42;
    }

    if (pressType == 601)
    {
      v32 = @"CameraCaseShutter";
      goto LABEL_42;
    }

    goto LABEL_38;
  }

  if (pressType == 106)
  {
    v32 = @"CameraButton";
  }

  else
  {
    v32 = @"HeadphonesLeftButton";
  }

LABEL_42:
  _eventMap8 = [(CAMAnalyticsEvent *)self _eventMap];
  [_eventMap8 setObject:v32 forKeyedSubscript:@"pressType"];

  _mediaType = [(CAMAnalyticsCaptureEvent *)self _mediaType];
  v35 = @"Video";
  if (_mediaType != 1)
  {
    v35 = 0;
  }

  if (!_mediaType)
  {
    v35 = @"Photo";
  }

  v36 = v35;
  _eventMap9 = [(CAMAnalyticsEvent *)self _eventMap];
  [_eventMap9 setObject:v36 forKeyedSubscript:@"captureType"];

  v38 = 0;
  v39 = [requestCopy audioConfiguration] - 1;
  if (v39 <= 2)
  {
    v38 = off_1E76FE2D8[v39];
  }

  _eventMap10 = [(CAMAnalyticsEvent *)self _eventMap];
  [_eventMap10 setObject:v38 forKeyedSubscript:@"audioConfiguration"];

  if ([requestCopy captureDevicePosition] == 1)
  {
    v41 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(requestCopy, "isCaptureMirrored")}];
    _eventMap11 = [(CAMAnalyticsEvent *)self _eventMap];
    [_eventMap11 setObject:v41 forKeyedSubscript:@"isCaptureMirrored"];
  }
}

- (void)populateFromStillImageCaptureRequest:(id)request burst:(BOOL)burst preferences:(id)preferences
{
  requestCopy = request;
  preferencesCopy = preferences;
  v8 = +[CAMCaptureCapabilities capabilities];
  [(CAMAnalyticsCaptureEvent *)self _populateFromCaptureRequest:requestCopy];
  -[CAMAnalyticsCaptureEvent set_isStillDuringVideo:](self, "set_isStillDuringVideo:", [requestCopy stillDuringVideo]);
  captureMode = [requestCopy captureMode];
  if (![(CAMAnalyticsCaptureEvent *)self _mediaType])
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[CAMAnalyticsCaptureEvent _isStillDuringVideo](self, "_isStillDuringVideo")}];
    _eventMap = [(CAMAnalyticsEvent *)self _eventMap];
    [_eventMap setObject:v10 forKeyedSubscript:@"isStillDuringVideo"];

    if (![(CAMAnalyticsCaptureEvent *)self _isStillDuringVideo])
    {
      if ([v8 isLivePhotoSupportedForMode:-[CAMAnalyticsCaptureEvent _captureMode](self devicePosition:{"_captureMode"), -[CAMAnalyticsCaptureEvent _captureDevicePosition](self, "_captureDevicePosition")}])
      {
        irisMode = [requestCopy irisMode];
        if (irisMode > 2)
        {
          v13 = 0;
        }

        else
        {
          v13 = off_1E76FE628[irisMode];
        }

        _eventMap2 = [(CAMAnalyticsEvent *)self _eventMap];
        [_eventMap2 setObject:v13 forKeyedSubscript:@"resolvedLivePhotoMode"];
      }

      if ([v8 isHDRSupportedForMode:objc_msgSend(requestCopy devicePosition:{"captureMode"), objc_msgSend(requestCopy, "captureDevicePosition")}])
      {
        hdrMode = [requestCopy hdrMode];
        v16 = @"On";
        if (hdrMode != 1)
        {
          v16 = 0;
        }

        if (!hdrMode)
        {
          v16 = @"Off";
        }

        v17 = v16;
        _eventMap3 = [(CAMAnalyticsEvent *)self _eventMap];
        [_eventMap3 setObject:v17 forKeyedSubscript:@"resolvedHDRMode"];
      }

      if ([v8 isNightModeSupportedForMode:objc_msgSend(requestCopy device:{"captureMode"), objc_msgSend(requestCopy, "captureDevice")}])
      {
        nightMode = [requestCopy nightMode];
        if (nightMode > 2)
        {
          v20 = 0;
        }

        else
        {
          v20 = off_1E76FE5F0[nightMode];
        }

        _eventMap4 = [(CAMAnalyticsEvent *)self _eventMap];
        [_eventMap4 setObject:v20 forKeyedSubscript:@"resolvedLowLightMode"];
      }

      if ([v8 isLightingControlSupportedForMode:{objc_msgSend(requestCopy, "captureMode")}])
      {
        -[CAMAnalyticsCaptureEvent set_lightingEffectType:](self, "set_lightingEffectType:", [requestCopy lightingEffectType]);
        lightingEffectType = [requestCopy lightingEffectType];
        if (lightingEffectType > 6)
        {
          v23 = 0;
        }

        else
        {
          v23 = off_1E76FE2F0[lightingEffectType];
        }

        _eventMap5 = [(CAMAnalyticsEvent *)self _eventMap];
        [_eventMap5 setObject:v23 forKeyedSubscript:@"lightingType"];
      }

      if ([v8 semanticStylesSupport])
      {
        semanticStyle = [requestCopy semanticStyle];

        if (semanticStyle)
        {
          semanticStyle2 = [requestCopy semanticStyle];
          analyticsDictionaryForCapture = [semanticStyle2 analyticsDictionaryForCapture];

          _eventMap6 = [(CAMAnalyticsEvent *)self _eventMap];
          [_eventMap6 addEntriesFromDictionary:analyticsDictionaryForCapture];
        }
      }

      v29 = +[CAMCaptureCapabilities capabilities];
      isLinearDNGSupported = [v29 isLinearDNGSupported];

      rawControlEnabled = [preferencesCopy rawControlEnabled];
      if (isLinearDNGSupported && rawControlEnabled)
      {
        if ([requestCopy photoEncodingBehavior] == 2)
        {
          v32 = [MEMORY[0x1E696AD98] numberWithBool:1];
          _eventMap7 = [(CAMAnalyticsEvent *)self _eventMap];
          [_eventMap7 setObject:v32 forKeyedSubscript:@"linearDNG"];

          v34 = MEMORY[0x1E696AD98];
          v35 = [requestCopy maximumPhotoResolution] - 1;
          if (v35 > 2)
          {
            v36 = 0;
          }

          else
          {
            v36 = qword_1A3A6AC60[v35];
          }

          v37 = [v34 numberWithInteger:v36];
          _eventMap8 = [(CAMAnalyticsEvent *)self _eventMap];
          v39 = _eventMap8;
          v40 = @"linearDNGResolution";
        }

        else
        {
          v37 = [MEMORY[0x1E696AD98] numberWithBool:0];
          _eventMap8 = [(CAMAnalyticsEvent *)self _eventMap];
          v39 = _eventMap8;
          v40 = @"linearDNG";
        }

        [_eventMap8 setObject:v37 forKeyedSubscript:v40];
      }

      v41 = [v8 supportedPhotoResolutionsForMode:objc_msgSend(requestCopy devicePosition:"captureMode") photoEncoding:{objc_msgSend(requestCopy, "captureDevicePosition"), objc_msgSend(requestCopy, "photoEncodingBehavior")}];
      v42 = [v41 count];

      if (v42 >= 2)
      {
        v43 = MEMORY[0x1E696AD98];
        v44 = [requestCopy maximumPhotoResolution] - 1;
        if (v44 > 2)
        {
          v45 = 0;
        }

        else
        {
          v45 = qword_1A3A6AC60[v44];
        }

        v46 = [v43 numberWithInteger:v45];
        _eventMap9 = [(CAMAnalyticsEvent *)self _eventMap];
        [_eventMap9 setObject:v46 forKeyedSubscript:@"desiredMaximumResolution"];
      }
    }
  }

  v48 = +[CAMCaptureCapabilities capabilities];
  v49 = [v48 isFlashSupportedForMode:objc_msgSend(requestCopy devicePosition:{"captureMode"), objc_msgSend(requestCopy, "captureDevicePosition")}];

  if (v49 && ![(CAMAnalyticsCaptureEvent *)self _isStillDuringVideo])
  {
    flashMode = [requestCopy flashMode];
    if (flashMode > 2)
    {
      v51 = 0;
    }

    else
    {
      v51 = off_1E76FE628[flashMode];
    }

    _eventMap10 = [(CAMAnalyticsEvent *)self _eventMap];
    [_eventMap10 setObject:v51 forKeyedSubscript:@"resolvedFlashMode"];
  }

  v53 = +[CAMCaptureCapabilities capabilities];
  v54 = [v53 isAspectRatioCropSupportedForMode:objc_msgSend(requestCopy devicePosition:{"captureMode"), objc_msgSend(requestCopy, "captureDevicePosition")}];

  if (v54)
  {
    aspectRatioCrop = [requestCopy aspectRatioCrop];
    if (aspectRatioCrop > 6)
    {
      v56 = 0;
    }

    else
    {
      v56 = off_1E76FE328[aspectRatioCrop];
    }

    _eventMap11 = [(CAMAnalyticsEvent *)self _eventMap];
    [_eventMap11 setObject:v56 forKeyedSubscript:@"aspectRatio"];
  }

  if (captureMode <= 7 && (((0xC0u >> captureMode) | (0x11u >> captureMode)) & 1) != 0)
  {
    effectFilterType = [requestCopy effectFilterType];
    if (effectFilterType > 0x10)
    {
      v59 = 0;
    }

    else
    {
      v59 = off_1E76FE360[effectFilterType];
    }

    _eventMap12 = [(CAMAnalyticsEvent *)self _eventMap];
    [_eventMap12 setObject:v59 forKeyedSubscript:@"filterType"];
  }
}

- (void)populateFromVideoCaptureRequest:(id)request preferences:(id)preferences
{
  v79 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  preferencesCopy = preferences;
  v72 = +[CAMCaptureCapabilities capabilities];
  [(CAMAnalyticsCaptureEvent *)self _populateFromCaptureRequest:requestCopy];
  if ([requestCopy trueVideoEnabled] && objc_msgSend(requestCopy, "captureMode") == 8)
  {
    v8 = @"SpatialPhoto";
LABEL_7:
    _eventMap = [(CAMAnalyticsEvent *)self _eventMap];
    [_eventMap setObject:v8 forKeyedSubscript:@"captureMode"];

    goto LABEL_8;
  }

  if ([requestCopy trueVideoEnabled] && objc_msgSend(requestCopy, "captureMode") == 1)
  {
    v8 = @"Photo";
    goto LABEL_7;
  }

LABEL_8:
  if ([v72 isFlashOrTorchSupportedForMode:objc_msgSend(requestCopy devicePosition:{"captureMode"), objc_msgSend(requestCopy, "captureDevicePosition")}])
  {
    torchMode = [requestCopy torchMode];
    if (torchMode > 2)
    {
      v11 = 0;
    }

    else
    {
      v11 = off_1E76FE628[torchMode];
    }

    _eventMap2 = [(CAMAnalyticsEvent *)self _eventMap];
    [_eventMap2 setObject:v11 forKeyedSubscript:@"resolvedTorchMode"];
  }

  v13 = [preferencesCopy prefersHDR10BitVideoForCapabilities:v72];
  captureMode = [requestCopy captureMode];
  captureDevice = [requestCopy captureDevice];
  videoEncodingBehavior = [requestCopy videoEncodingBehavior];
  captureVideoConfiguration = [requestCopy captureVideoConfiguration];
  _outputToExternalStorage = [(CAMAnalyticsCaptureEvent *)self _outputToExternalStorage];
  LOBYTE(v65) = [requestCopy isFrontRearSimultaneousVideoEnabled];
  v69 = v13;
  v19 = [v72 resolvedVideoConfigurationForMode:captureMode device:captureDevice videoEncodingBehavior:videoEncodingBehavior videoConfiguration:captureVideoConfiguration outputToExternalStorage:_outputToExternalStorage prefersHDR10BitVideo:v13 frontRearSimultaneousVideoEnabled:v65];
  if (v19 > 9999)
  {
    if (v19 > 10002)
    {
      v21 = 10003;
      v22 = @"ImagePickerVGA";
      v23 = 10004;
      v24 = @"ImagePickeriFrame720p";
      v25 = 10005;
      v26 = @"ImagePickeriFrame540p";
    }

    else
    {
      v21 = 10000;
      v22 = @"ImagePickerHigh";
      v23 = 10001;
      v24 = @"ImagePickerMedium";
      v25 = 10002;
      v26 = @"ImagePickerLow";
    }

    if (v19 == v25)
    {
      v27 = v26;
    }

    else
    {
      v27 = 0;
    }

    if (v19 == v23)
    {
      v28 = v24;
    }

    else
    {
      v28 = v27;
    }

    if (v19 == v21)
    {
      v20 = v22;
    }

    else
    {
      v20 = v28;
    }
  }

  else
  {
    switch(v19)
    {
      case 0:
        v20 = @"Auto";
        break;
      case 1:
        v20 = @"1080p60";
        break;
      case 2:
        v20 = @"720p120";
        break;
      case 3:
        v20 = @"720p240";
        break;
      case 4:
        v20 = @"1080p120";
        break;
      case 5:
        v20 = @"4k30";
        break;
      case 6:
        v20 = @"720p30";
        break;
      case 7:
        v20 = @"1080p30";
        break;
      case 8:
        v20 = @"1080p240";
        break;
      case 9:
        v20 = @"4k60";
        break;
      case 10:
        v20 = @"4k24";
        break;
      case 11:
        v20 = @"1080p25";
        break;
      case 12:
        v20 = @"4k25";
        break;
      case 13:
        v20 = @"4k120";
        break;
      case 14:
        v20 = @"4k100";
        break;
      default:
        v20 = 0;
        break;
    }
  }

  _eventMap3 = [(CAMAnalyticsEvent *)self _eventMap];
  [_eventMap3 setObject:v20 forKeyedSubscript:@"videoConfiguration"];

  isProResVideoSupported = [v72 isProResVideoSupported];
  isProResControlEnabled = [preferencesCopy isProResControlEnabled];
  if (isProResVideoSupported && isProResControlEnabled)
  {
    v32 = [requestCopy videoEncodingBehavior] == 2;
    v33 = [MEMORY[0x1E696AD98] numberWithBool:v32];
    _eventMap4 = [(CAMAnalyticsEvent *)self _eventMap];
    [_eventMap4 setObject:v33 forKeyedSubscript:@"proRes"];
  }

  captureMode2 = [requestCopy captureMode];
  if (captureMode2 == 2)
  {
    slomoConfiguration = [preferencesCopy slomoConfiguration];
    if (slomoConfiguration <= 9999)
    {
      switch(slomoConfiguration)
      {
        case 0:
LABEL_37:
          v37 = @"Auto";
          break;
        case 1:
LABEL_98:
          v37 = @"1080p60";
          break;
        case 2:
LABEL_95:
          v37 = @"720p120";
          break;
        case 3:
LABEL_96:
          v37 = @"720p240";
          break;
        case 4:
LABEL_92:
          v37 = @"1080p120";
          break;
        case 5:
LABEL_99:
          v37 = @"4k30";
          break;
        case 6:
LABEL_101:
          v37 = @"720p30";
          break;
        case 7:
LABEL_97:
          v37 = @"1080p30";
          break;
        case 8:
LABEL_103:
          v37 = @"1080p240";
          break;
        case 9:
LABEL_94:
          v37 = @"4k60";
          break;
        case 10:
LABEL_102:
          v37 = @"4k24";
          break;
        case 11:
LABEL_91:
          v37 = @"1080p25";
          break;
        case 12:
LABEL_93:
          v37 = @"4k25";
          break;
        case 13:
LABEL_100:
          v37 = @"4k120";
          break;
        case 14:
LABEL_90:
          v37 = @"4k100";
          break;
        default:
LABEL_105:
          v37 = 0;
          break;
      }

      goto LABEL_55;
    }
  }

  else
  {
    if (captureMode2 != 1)
    {
      goto LABEL_56;
    }

    slomoConfiguration = [preferencesCopy videoConfiguration];
    if (slomoConfiguration <= 9999)
    {
      switch(slomoConfiguration)
      {
        case 0:
          goto LABEL_37;
        case 1:
          goto LABEL_98;
        case 2:
          goto LABEL_95;
        case 3:
          goto LABEL_96;
        case 4:
          goto LABEL_92;
        case 5:
          goto LABEL_99;
        case 6:
          goto LABEL_101;
        case 7:
          goto LABEL_97;
        case 8:
          goto LABEL_103;
        case 9:
          goto LABEL_94;
        case 10:
          goto LABEL_102;
        case 11:
          goto LABEL_91;
        case 12:
          goto LABEL_93;
        case 13:
          goto LABEL_100;
        case 14:
          goto LABEL_90;
        default:
          goto LABEL_105;
      }
    }
  }

  v38 = @"ImagePickerVGA";
  v39 = @"ImagePickeriFrame540p";
  if (slomoConfiguration != 10005)
  {
    v39 = 0;
  }

  if (slomoConfiguration == 10004)
  {
    v40 = @"ImagePickeriFrame720p";
  }

  else
  {
    v40 = v39;
  }

  if (slomoConfiguration != 10003)
  {
    v38 = v40;
  }

  v41 = @"ImagePickerMedium";
  v42 = @"ImagePickerLow";
  if (slomoConfiguration != 10002)
  {
    v42 = 0;
  }

  if (slomoConfiguration != 10001)
  {
    v41 = v42;
  }

  if (slomoConfiguration == 10000)
  {
    v43 = @"ImagePickerHigh";
  }

  else
  {
    v43 = v41;
  }

  if (slomoConfiguration <= 10002)
  {
    v37 = v43;
  }

  else
  {
    v37 = v38;
  }

LABEL_55:
  _eventMap5 = [(CAMAnalyticsEvent *)self _eventMap];
  [_eventMap5 setObject:v37 forKeyedSubscript:@"preferredVideoConfiguration"];

LABEL_56:
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v73 = [&unk_1F16C9CC8 countByEnumeratingWithState:&v74 objects:v78 count:16];
  if (v73)
  {
    selfCopy = self;
    v71 = requestCopy;
    v45 = 0;
    v67 = preferencesCopy;
    v68 = *v75;
    do
    {
      for (i = 0; i != v73; ++i)
      {
        if (*v75 != v68)
        {
          objc_enumerationMutation(&unk_1F16C9CC8);
        }

        integerValue = [*(*(&v74 + 1) + 8 * i) integerValue];
        captureMode3 = [v71 captureMode];
        captureDevice2 = [v71 captureDevice];
        captureVideoConfiguration2 = [v71 captureVideoConfiguration];
        videoEncodingBehavior2 = [v71 videoEncodingBehavior];
        _outputToExternalStorage2 = [(CAMAnalyticsCaptureEvent *)selfCopy _outputToExternalStorage];
        trueVideoEnabled = [v71 trueVideoEnabled];
        BYTE2(v66) = [v71 isFrontRearSimultaneousVideoEnabled];
        BYTE1(v66) = v69;
        LOBYTE(v66) = trueVideoEnabled;
        v45 |= [v72 isVideoStabilizationStrength:integerValue supportedForMode:captureMode3 device:captureDevice2 videoConfiguration:captureVideoConfiguration2 videoEncodingBehavior:videoEncodingBehavior2 outputToExternalStorage:_outputToExternalStorage2 trueVideoEnabled:v66 prefersHDR10BitVideo:? frontRearSimultaneousVideoEnabled:?];
      }

      v73 = [&unk_1F16C9CC8 countByEnumeratingWithState:&v74 objects:v78 count:16];
    }

    while (v73);
    self = selfCopy;
    requestCopy = v71;
    preferencesCopy = v67;
    if (v45)
    {
      _videoStabilizationStrength = [(CAMAnalyticsCaptureEvent *)selfCopy _videoStabilizationStrength];
      if (_videoStabilizationStrength > 3)
      {
        v55 = 0;
      }

      else
      {
        v55 = off_1E76FE3E8[_videoStabilizationStrength];
      }

      _eventMap6 = [(CAMAnalyticsEvent *)selfCopy _eventMap];
      [_eventMap6 setObject:v55 forKeyedSubscript:@"videoStabilizationStrength"];
    }
  }

  if ([v72 isExternalStorageOutputSupportedForMode:objc_msgSend(requestCopy videoEncodingBehavior:{"captureMode"), objc_msgSend(requestCopy, "videoEncodingBehavior")}])
  {
    v57 = [MEMORY[0x1E696AD98] numberWithBool:{-[CAMAnalyticsCaptureEvent _outputToExternalStorage](self, "_outputToExternalStorage")}];
    [(CAMAnalyticsEvent *)self _eventMap];
    v59 = v58 = self;
    [v59 setObject:v57 forKeyedSubscript:@"externalStorage"];

    self = v58;
  }

  _colorSpace = [(CAMAnalyticsCaptureEvent *)self _colorSpace];
  if (_colorSpace > 3)
  {
    v61 = 0;
  }

  else
  {
    v61 = off_1E76FE408[_colorSpace];
  }

  _eventMap7 = [(CAMAnalyticsEvent *)self _eventMap];
  [_eventMap7 setObject:v61 forKeyedSubscript:@"colorSpace"];

  if ([v72 isFrontRearSimultaneousVideoSupportedForMode:{objc_msgSend(requestCopy, "captureMode")}])
  {
    v63 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(requestCopy, "isFrontRearSimultaneousVideoEnabled")}];
    _eventMap8 = [(CAMAnalyticsEvent *)self _eventMap];
    [_eventMap8 setObject:v63 forKeyedSubscript:@"frontRearVideoEnabled"];
  }
}

- (void)populateFromPanoramaCaptureRequest:(id)request
{
  [(CAMAnalyticsCaptureEvent *)self _populateFromCaptureRequest:request];
  _eventMap = [(CAMAnalyticsEvent *)self _eventMap];
  v5 = MEMORY[0x1E695E110];
  [_eventMap setObject:MEMORY[0x1E695E110] forKeyedSubscript:@"slowDownPanoramaInstruction"];

  _eventMap2 = [(CAMAnalyticsEvent *)self _eventMap];
  [_eventMap2 setObject:v5 forKeyedSubscript:@"moveUpPanoramaInstruction"];

  _eventMap3 = [(CAMAnalyticsEvent *)self _eventMap];
  [_eventMap3 setObject:v5 forKeyedSubscript:@"moveDownPanoramaInstruction"];

  _eventMap4 = [(CAMAnalyticsEvent *)self _eventMap];
  [_eventMap4 setObject:@"Shutter" forKeyedSubscript:@"panoramaStopReason"];
}

- (void)populatePanoramaDirection:(int64_t)direction
{
  if (direction > 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = off_1E76FE428[direction];
  }

  _eventMap = [(CAMAnalyticsEvent *)self _eventMap];
  [_eventMap setObject:v3 forKeyedSubscript:@"panoramaCaptureDirection"];
}

- (void)populatePanoramaInstruction:(int64_t)instruction
{
  if ((instruction - 3) <= 2)
  {
    v4 = off_1E76FE440[instruction - 3];
    _eventMap = [(CAMAnalyticsEvent *)self _eventMap];
    [_eventMap setObject:MEMORY[0x1E695E118] forKeyedSubscript:v4];
  }
}

- (void)populateFromPanoramaCaptureStoppingReason:(int64_t)reason
{
  v4 = @"ReachedMaximumSize";
  if (reason != -6000)
  {
    v4 = 0;
  }

  if (reason == -6001)
  {
    v4 = @"ChangedDirection";
  }

  v5 = v4;
  _eventMap = [(CAMAnalyticsEvent *)self _eventMap];
  [_eventMap setObject:v5 forKeyedSubscript:@"panoramaStopReason"];
}

- (void)populateForTimelapseCaptureOrientation:(int64_t)orientation captureMirrored:(BOOL)mirrored origin:(int64_t)origin pressType:(int64_t)type startDate:(id)date
{
  mirroredCopy = mirrored;
  dateCopy = date;
  [(CAMAnalyticsCaptureEvent *)self set_mediaType:1];
  [(CAMAnalyticsCaptureEvent *)self set_isStillDuringVideo:0];
  _eventMap = [(CAMAnalyticsEvent *)self _eventMap];
  [_eventMap setObject:@"Timelapse" forKeyedSubscript:@"captureMode"];

  _captureDevice = [(CAMAnalyticsCaptureEvent *)self _captureDevice];
  if (_captureDevice > 0xB)
  {
    v15 = 0;
  }

  else
  {
    v15 = off_1E76FE458[_captureDevice];
  }

  _eventMap2 = [(CAMAnalyticsEvent *)self _eventMap];
  [_eventMap2 setObject:v15 forKeyedSubscript:@"device"];

  _captureDevicePosition = [(CAMAnalyticsCaptureEvent *)self _captureDevicePosition];
  v18 = @"Front";
  if (_captureDevicePosition != 1)
  {
    v18 = 0;
  }

  if (!_captureDevicePosition)
  {
    v18 = @"Back";
  }

  v19 = v18;
  _eventMap3 = [(CAMAnalyticsEvent *)self _eventMap];
  [_eventMap3 setObject:v19 forKeyedSubscript:@"devicePosition"];

  v21 = 0;
  if (orientation <= 4)
  {
    v21 = off_1E76FE4B8[orientation];
  }

  _eventMap4 = [(CAMAnalyticsEvent *)self _eventMap];
  [_eventMap4 setObject:v21 forKeyedSubscript:@"orientation"];

  v23 = @"MessagesCamera";
  if (origin != 1)
  {
    v23 = 0;
  }

  if (!origin)
  {
    v23 = @"Camera";
  }

  v24 = v23;
  _eventMap5 = [(CAMAnalyticsEvent *)self _eventMap];
  [_eventMap5 setObject:v24 forKeyedSubscript:@"origin"];

  v26 = +[CAMCaptureCapabilities capabilities];
  hostProcess = [v26 hostProcess];
  v28 = 0;
  if (hostProcess <= 5)
  {
    v28 = off_1E76FE4E0[hostProcess];
  }

  _eventMap6 = [(CAMAnalyticsEvent *)self _eventMap];
  [_eventMap6 setObject:v28 forKeyedSubscript:@"hostProcess"];

  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  _eventMap7 = [(CAMAnalyticsEvent *)self _eventMap];
  [_eventMap7 setObject:bundleIdentifier forKeyedSubscript:@"bundleID"];

  if (type <= 105)
  {
    switch(type)
    {
      case 'f':
        v33 = @"Secondary";
        goto LABEL_32;
      case 'g':
        v33 = @"Primary";
        goto LABEL_32;
      case 'h':
        v33 = @"Lock";
        goto LABEL_32;
    }

LABEL_28:
    v33 = @"Other";
    goto LABEL_32;
  }

  if (type > 107)
  {
    if (type == 108)
    {
      v33 = @"HeadphonesRightButton";
      goto LABEL_32;
    }

    if (type == 601)
    {
      v33 = @"CameraCaseShutter";
      goto LABEL_32;
    }

    goto LABEL_28;
  }

  if (type == 106)
  {
    v33 = @"CameraButton";
  }

  else
  {
    v33 = @"HeadphonesLeftButton";
  }

LABEL_32:
  _eventMap8 = [(CAMAnalyticsEvent *)self _eventMap];
  [_eventMap8 setObject:v33 forKeyedSubscript:@"pressType"];

  _eventMap9 = [(CAMAnalyticsEvent *)self _eventMap];
  [_eventMap9 setObject:@"Video" forKeyedSubscript:@"captureType"];

  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v42 = [currentCalendar components:32 fromDate:dateCopy];

  hour = [v42 hour];
  v38 = [MEMORY[0x1E696AD98] numberWithInteger:hour];
  _eventMap10 = [(CAMAnalyticsEvent *)self _eventMap];
  [_eventMap10 setObject:v38 forKeyedSubscript:@"userLocalTimeHour"];

  if ([(CAMAnalyticsCaptureEvent *)self _captureDevicePosition]== 1)
  {
    v40 = [MEMORY[0x1E696AD98] numberWithBool:mirroredCopy];
    _eventMap11 = [(CAMAnalyticsEvent *)self _eventMap];
    [_eventMap11 setObject:v40 forKeyedSubscript:@"isCaptureMirrored"];
  }
}

- (void)populateFromStillImageCaptureResponse:(id)response
{
  responseCopy = response;
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  captureDate = [responseCopy captureDate];
  v6 = [currentCalendar components:32 fromDate:captureDate];

  hour = [v6 hour];
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:hour];
  _eventMap = [(CAMAnalyticsEvent *)self _eventMap];
  [_eventMap setObject:v8 forKeyedSubscript:@"userLocalTimeHour"];

  v10 = +[CAMCaptureCapabilities capabilities];
  LODWORD(_eventMap) = [v10 isSemanticDevelopmentSupportedForMode:{-[CAMAnalyticsCaptureEvent _captureMode](self, "_captureMode")}];

  semanticEnhanceScene = [responseCopy semanticEnhanceScene];
  if (_eventMap && semanticEnhanceScene && ![(CAMAnalyticsCaptureEvent *)self _isStillDuringVideo])
  {
    v12 = [responseCopy semanticEnhanceScene] + 1;
    if (v12 > 4)
    {
      v13 = 0;
    }

    else
    {
      v13 = off_1E76FE510[v12];
    }

    _eventMap2 = [(CAMAnalyticsEvent *)self _eventMap];
    [_eventMap2 setObject:v13 forKeyedSubscript:@"semanticEnhanceScene"];
  }
}

- (void)populateFromVideoCaptureResponse:(id)response
{
  responseCopy = response;
  v5 = responseCopy;
  if (responseCopy)
  {
    [responseCopy duration];
  }

  else
  {
    memset(&time, 0, sizeof(time));
  }

  [(CAMAnalyticsCaptureEvent *)self populateDuration:CMTimeGetSeconds(&time)];
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  captureDate = [v5 captureDate];
  v8 = [currentCalendar components:32 fromDate:captureDate];

  hour = [v8 hour];
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:hour];
  _eventMap = [(CAMAnalyticsEvent *)self _eventMap];
  [_eventMap setObject:v10 forKeyedSubscript:@"userLocalTimeHour"];

  v12 = [v5 reason] - 1;
  if (v12 <= 4)
  {
    v13 = off_1E76FE538[v12];
    _eventMap2 = [(CAMAnalyticsEvent *)self _eventMap];
    [_eventMap2 setObject:v13 forKeyedSubscript:@"videoCaptureError"];
  }
}

- (void)populateAEAFLocked:(BOOL)locked
{
  v5 = [MEMORY[0x1E696AD98] numberWithBool:locked];
  _eventMap = [(CAMAnalyticsEvent *)self _eventMap];
  [_eventMap setObject:v5 forKeyedSubscript:@"aeafLock"];
}

- (void)populateZoomFromDisplayZoomValue:(double)value zoomPoints:(id)points zoomInteractionType:(int64_t)type
{
  pointsCopy = points;
  v8 = +[CAMCaptureCapabilities capabilities];
  v9 = [v8 isZoomAllowedForMode:-[CAMAnalyticsCaptureEvent _captureMode](self device:"_captureMode") videoConfiguration:-[CAMAnalyticsCaptureEvent _captureDevice](self videoStabilizationStrength:{"_captureDevice"), -[CAMAnalyticsCaptureEvent _captureVideoConfiguration](self, "_captureVideoConfiguration"), -[CAMAnalyticsCaptureEvent _videoStabilizationStrength](self, "_videoStabilizationStrength")}];

  v10 = +[CAMCaptureCapabilities capabilities];
  v11 = [v10 shouldAllowCameraToggleForMode:-[CAMAnalyticsCaptureEvent _captureMode](self devicePosition:"_captureMode") videoConfiguration:-[CAMAnalyticsCaptureEvent _captureDevicePosition](self videoStabilizationStrength:"_captureDevicePosition") frontRearSimultaneousVideoEnabled:{-[CAMAnalyticsCaptureEvent _captureVideoConfiguration](self, "_captureVideoConfiguration"), -[CAMAnalyticsCaptureEvent _videoStabilizationStrength](self, "_videoStabilizationStrength"), 0}];

  if ((v9 & 1) != 0 || v11)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithDouble:value];
    _eventMap = [(CAMAnalyticsEvent *)self _eventMap];
    [_eventMap setObject:v12 forKeyedSubscript:@"zoomFactor"];

    v14 = [(CAMAnalyticsCaptureEvent *)self _zoomRangeStringForDisplayZoomValue:pointsCopy zoomPoints:[(CAMAnalyticsCaptureEvent *)self _captureMode] mode:[(CAMAnalyticsCaptureEvent *)self _captureDevice] device:value];
    _eventMap2 = [(CAMAnalyticsEvent *)self _eventMap];
    [_eventMap2 setObject:v14 forKeyedSubscript:@"zoomFactorRange"];

    if (type > 7)
    {
      v16 = 0;
    }

    else
    {
      v16 = off_1E76FE578[type];
    }

    _eventMap3 = [(CAMAnalyticsEvent *)self _eventMap];
    [_eventMap3 setObject:v16 forKeyedSubscript:@"zoomInteractionType"];
  }
}

- (void)populateZoomFieldOfView:(int64_t)view graphConfiguration:(id)configuration smartFramingSource:(int64_t)source
{
  configurationCopy = configuration;
  v9 = +[CAMCaptureCapabilities capabilities];
  v10 = [v9 isDynamicAspectRatioSupportedForMode:-[CAMAnalyticsCaptureEvent _captureMode](self devicePosition:{"_captureMode"), -[CAMAnalyticsCaptureEvent _captureDevicePosition](self, "_captureDevicePosition")}];

  videoDynamicAspectRatio = [configurationCopy videoDynamicAspectRatio];
  if (v10)
  {
    v12 = @"Wide";
    v13 = @"RotatedWide";
    v14 = @"RotatedNarrow";
    if (view != 4)
    {
      v14 = 0;
    }

    if (view != 3)
    {
      v13 = v14;
    }

    if (view != 2)
    {
      v12 = v13;
    }

    v15 = @"Rotated";
    if (videoDynamicAspectRatio != 1)
    {
      v15 = 0;
    }

    v16 = @"Narrow";
    if (view != 1)
    {
      v16 = 0;
    }

    if (view)
    {
      v15 = v16;
    }

    if (view <= 1)
    {
      v17 = v15;
    }

    else
    {
      v17 = v12;
    }

    _eventMap = [(CAMAnalyticsEvent *)self _eventMap];
    [_eventMap setObject:v17 forKeyedSubscript:@"frontFacingZoom"];

    if (view)
    {
      v19 = @"Auto";
      if (source != 1)
      {
        v19 = 0;
      }

      if (source == 2)
      {
        v19 = @"OverrodeAuto";
      }

      v20 = v19;
      _eventMap2 = [(CAMAnalyticsEvent *)self _eventMap];
      [_eventMap2 setObject:v20 forKeyedSubscript:@"smartFramingSource"];
    }
  }
}

- (void)populateZoomFromZoomButtonSymbol:(int64_t)symbol zoomInteractionType:(int64_t)type
{
  v7 = +[CAMCaptureCapabilities capabilities];
  v8 = [v7 isZoomAllowedForMode:-[CAMAnalyticsCaptureEvent _captureMode](self device:"_captureMode") videoConfiguration:-[CAMAnalyticsCaptureEvent _captureDevice](self videoStabilizationStrength:{"_captureDevice"), -[CAMAnalyticsCaptureEvent _captureVideoConfiguration](self, "_captureVideoConfiguration"), -[CAMAnalyticsCaptureEvent _videoStabilizationStrength](self, "_videoStabilizationStrength")}];

  v9 = +[CAMCaptureCapabilities capabilities];
  v10 = [v9 shouldAllowCameraToggleForMode:-[CAMAnalyticsCaptureEvent _captureMode](self devicePosition:"_captureMode") videoConfiguration:-[CAMAnalyticsCaptureEvent _captureDevicePosition](self videoStabilizationStrength:"_captureDevicePosition") frontRearSimultaneousVideoEnabled:{-[CAMAnalyticsCaptureEvent _captureVideoConfiguration](self, "_captureVideoConfiguration"), -[CAMAnalyticsCaptureEvent _videoStabilizationStrength](self, "_videoStabilizationStrength"), 0}];

  if ((v8 & 1) != 0 || v10)
  {
    if (symbol > 2)
    {
      v11 = 0;
    }

    else
    {
      v11 = off_1E76FE560[symbol];
    }

    _eventMap = [(CAMAnalyticsEvent *)self _eventMap];
    [_eventMap setObject:v11 forKeyedSubscript:@"frontFacingZoom"];

    if (type > 7)
    {
      v13 = 0;
    }

    else
    {
      v13 = off_1E76FE578[type];
    }

    _eventMap2 = [(CAMAnalyticsEvent *)self _eventMap];
    [_eventMap2 setObject:v13 forKeyedSubscript:@"zoomInteractionType"];
  }
}

- (void)populateExposureSliderBias:(float)bias exposureTapAndBias:(float)andBias totalExposureBias:(float)exposureBias
{
  v9 = +[CAMCaptureCapabilities capabilities];
  v10 = [v9 isTapAndBiasSupportedForMode:{-[CAMAnalyticsCaptureEvent _captureMode](self, "_captureMode")}];

  if (v10)
  {
    *&v11 = andBias;
    v12 = [MEMORY[0x1E696AD98] numberWithFloat:v11];
    _eventMap = [(CAMAnalyticsEvent *)self _eventMap];
    [_eventMap setObject:v12 forKeyedSubscript:@"exposureTapAndBias"];

    LODWORD(v14) = -4.0;
    LODWORD(v15) = 4.0;
    *&v16 = andBias;
    v17 = [(CAMAnalyticsCaptureEvent *)self _defaultRangeStringForValue:v16 lowerBound:v14 upperBound:v15 defaultValue:0.0];
    _eventMap2 = [(CAMAnalyticsEvent *)self _eventMap];
    [_eventMap2 setObject:v17 forKeyedSubscript:@"exposureTapAndBiasRange"];
  }

  v19 = +[CAMCaptureCapabilities capabilities];
  v20 = [v19 isExposureSliderSupportedForMode:{-[CAMAnalyticsCaptureEvent _captureMode](self, "_captureMode")}];

  if (v20)
  {
    *&v21 = bias;
    v22 = [MEMORY[0x1E696AD98] numberWithFloat:v21];
    _eventMap3 = [(CAMAnalyticsEvent *)self _eventMap];
    [_eventMap3 setObject:v22 forKeyedSubscript:@"exposureSliderBias"];

    *&v24 = exposureBias;
    v25 = [MEMORY[0x1E696AD98] numberWithFloat:v24];
    _eventMap4 = [(CAMAnalyticsEvent *)self _eventMap];
    [_eventMap4 setObject:v25 forKeyedSubscript:@"exposureTotalBias"];

    LODWORD(v27) = -2.0;
    LODWORD(v28) = 2.0;
    *&v29 = bias;
    v30 = [(CAMAnalyticsCaptureEvent *)self _defaultRangeStringForValue:v29 lowerBound:v27 upperBound:v28 defaultValue:0.0];
    _eventMap5 = [(CAMAnalyticsEvent *)self _eventMap];
    [_eventMap5 setObject:v30 forKeyedSubscript:@"exposureSliderBiasRange"];

    LODWORD(v32) = -4.0;
    LODWORD(v33) = 4.0;
    *&v34 = exposureBias;
    v36 = [(CAMAnalyticsCaptureEvent *)self _defaultRangeStringForValue:v34 lowerBound:v32 upperBound:v33 defaultValue:0.0];
    _eventMap6 = [(CAMAnalyticsEvent *)self _eventMap];
    [_eventMap6 setObject:v36 forKeyedSubscript:@"exposureTotalBiasRange"];
  }
}

- (void)populateDesiredFlashMode:(int64_t)mode desiredLivePhotoMode:(int64_t)photoMode desiredHDRMode:(int64_t)rMode timerDuration:(int64_t)duration
{
  if ([(CAMAnalyticsCaptureEvent *)self _isStillDuringVideo])
  {
    return;
  }

  v11 = +[CAMCaptureCapabilities capabilities];
  v12 = [v11 isFlashSupportedForMode:-[CAMAnalyticsCaptureEvent _captureMode](self devicePosition:{"_captureMode"), -[CAMAnalyticsCaptureEvent _captureDevicePosition](self, "_captureDevicePosition")}];

  v13 = +[CAMCaptureCapabilities capabilities];
  v14 = [v13 isLivePhotoSupportedForMode:-[CAMAnalyticsCaptureEvent _captureMode](self devicePosition:{"_captureMode"), -[CAMAnalyticsCaptureEvent _captureDevicePosition](self, "_captureDevicePosition")}];

  v15 = +[CAMCaptureCapabilities capabilities];
  v16 = [v15 isHDRSupportedForMode:-[CAMAnalyticsCaptureEvent _captureMode](self devicePosition:{"_captureMode"), -[CAMAnalyticsCaptureEvent _captureDevicePosition](self, "_captureDevicePosition")}];

  v17 = +[CAMCaptureCapabilities capabilities];
  v18 = [v17 isTimerSupportedForMode:{-[CAMAnalyticsCaptureEvent _captureMode](self, "_captureMode")}];

  if (v12)
  {
    if (mode > 2)
    {
      v20 = 0;
    }

    else
    {
      v20 = off_1E76FE628[mode];
    }

    _eventMap = [(CAMAnalyticsEvent *)self _eventMap];
    [_eventMap setObject:v20 forKeyedSubscript:@"desiredFlashMode"];

    if (!v14)
    {
LABEL_4:
      if (!v16)
      {
        goto LABEL_5;
      }

      goto LABEL_20;
    }
  }

  else if (!v14)
  {
    goto LABEL_4;
  }

  if (photoMode > 2)
  {
    v22 = 0;
  }

  else
  {
    v22 = off_1E76FE628[photoMode];
  }

  _eventMap2 = [(CAMAnalyticsEvent *)self _eventMap];
  [_eventMap2 setObject:v22 forKeyedSubscript:@"desiredLivePhotoMode"];

  if (!v16)
  {
LABEL_5:
    if (!v18)
    {
      return;
    }

    goto LABEL_6;
  }

LABEL_20:
  v24 = @"On";
  if (rMode != 1)
  {
    v24 = 0;
  }

  if (!rMode)
  {
    v24 = @"Off";
  }

  v25 = v24;
  _eventMap3 = [(CAMAnalyticsEvent *)self _eventMap];
  [_eventMap3 setObject:v25 forKeyedSubscript:@"desiredHDRMode"];

  if (v18)
  {
LABEL_6:
    if (duration > 3)
    {
      v19 = 0;
    }

    else
    {
      v19 = off_1E76FE5B8[duration];
    }

    _eventMap4 = [(CAMAnalyticsEvent *)self _eventMap];
    [_eventMap4 setObject:v19 forKeyedSubscript:@"timerDuration"];
  }
}

- (void)populateDesiredMacroMode:(int64_t)mode isMacroCapture:(BOOL)capture isMacroSuggested:(BOOL)suggested
{
  suggestedCopy = suggested;
  captureCopy = capture;
  v8 = +[CAMCaptureCapabilities capabilities];
  v9 = [v8 isSuperWideAutoMacroSupportedForMode:-[CAMAnalyticsCaptureEvent _captureMode](self device:"_captureMode") videoConfiguration:-[CAMAnalyticsCaptureEvent _captureDevice](self videoStabilizationStrength:"_captureDevice") frontRearSimultaneousVideoEnabled:{-[CAMAnalyticsCaptureEvent _captureVideoConfiguration](self, "_captureVideoConfiguration"), -[CAMAnalyticsCaptureEvent _videoStabilizationStrength](self, "_videoStabilizationStrength"), 0}];

  v10 = +[CAMUserPreferences preferences];
  isSuperWideAutoMacroControlAllowed = [v10 isSuperWideAutoMacroControlAllowed];

  if (v9)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithBool:captureCopy];
    _eventMap = [(CAMAnalyticsEvent *)self _eventMap];
    [_eventMap setObject:v12 forKeyedSubscript:@"isMacroCapture"];

    if (suggestedCopy)
    {
      v14 = @"ButtonOff";
      if (captureCopy)
      {
        v14 = @"ButtonOn";
      }

      if (isSuperWideAutoMacroControlAllowed)
      {
        v15 = v14;
      }

      else
      {
        v15 = @"AutoOn";
      }

      _eventMap2 = [(CAMAnalyticsEvent *)self _eventMap];
      [_eventMap2 setObject:v15 forKeyedSubscript:@"macroBehavior"];
    }
  }
}

- (void)populateDesiredNightModeControlMode:(unint64_t)mode resolvedNightModeControlMode:(unint64_t)controlMode resolvedNightMode:(int64_t)nightMode nightModeStatus:(int64_t)status
{
  if (![(CAMAnalyticsCaptureEvent *)self _isStillDuringVideo])
  {
    v11 = +[CAMCaptureCapabilities capabilities];
    v12 = [v11 isNightModeSupportedForMode:-[CAMAnalyticsCaptureEvent _captureMode](self device:{"_captureMode"), -[CAMAnalyticsCaptureEvent _captureDevice](self, "_captureDevice")}];

    if (v12)
    {
      if (mode > 2)
      {
        v13 = 0;
      }

      else
      {
        v13 = off_1E76FE5D8[mode];
      }

      _eventMap = [(CAMAnalyticsEvent *)self _eventMap];
      [_eventMap setObject:v13 forKeyedSubscript:@"desiredNightModeControlMode"];

      if (controlMode > 2)
      {
        v15 = 0;
      }

      else
      {
        v15 = off_1E76FE5D8[controlMode];
      }

      _eventMap2 = [(CAMAnalyticsEvent *)self _eventMap];
      [_eventMap2 setObject:v15 forKeyedSubscript:@"resolvedNightModeControlMode"];

      if (nightMode > 2)
      {
        v17 = 0;
      }

      else
      {
        v17 = off_1E76FE5F0[nightMode];
      }

      _eventMap3 = [(CAMAnalyticsEvent *)self _eventMap];
      [_eventMap3 setObject:v17 forKeyedSubscript:@"resolvedLowLightMode"];

      if ((status + 1) > 3)
      {
        v19 = 0;
      }

      else
      {
        v19 = off_1E76FE608[status + 1];
      }

      _eventMap4 = [(CAMAnalyticsEvent *)self _eventMap];
      [_eventMap4 setObject:v19 forKeyedSubscript:@"nightModeStatus"];
    }
  }
}

- (void)populateDesiredTorchMode:(int64_t)mode
{
  if (![(CAMAnalyticsCaptureEvent *)self _isStillDuringVideo])
  {
    v5 = +[CAMCaptureCapabilities capabilities];
    v6 = [v5 isTorchSupportedForMode:-[CAMAnalyticsCaptureEvent _captureMode](self devicePosition:{"_captureMode"), -[CAMAnalyticsCaptureEvent _captureDevicePosition](self, "_captureDevicePosition")}];

    if (v6)
    {
      if (mode > 2)
      {
        v7 = 0;
      }

      else
      {
        v7 = off_1E76FE628[mode];
      }

      _eventMap = [(CAMAnalyticsEvent *)self _eventMap];
      [_eventMap setObject:v7 forKeyedSubscript:@"desiredTorchMode"];
    }
  }
}

- (void)populatePortraitStatus:(int64_t)status lightingEffectIntensity:(double)intensity apertureValue:(double)value zoomFactor:(double)factor isDepthSuggestionAllowed:(BOOL)allowed request:(id)request
{
  allowedCopy = allowed;
  requestCopy = request;
  _captureMode = [(CAMAnalyticsCaptureEvent *)self _captureMode];
  v15 = _captureMode;
  if ((_captureMode - 6) >= 2)
  {
    if (_captureMode || !allowedCopy)
    {
      goto LABEL_26;
    }

    if (status > 0xF)
    {
      v17 = 0;
    }

    else
    {
      v17 = off_1E76FE640[status];
    }

    _eventMap = [(CAMAnalyticsEvent *)self _eventMap];
    [_eventMap setObject:v17 forKeyedSubscript:@"portraitStatus"];
  }

  else
  {
    if (status > 0xF)
    {
      v16 = 0;
    }

    else
    {
      v16 = off_1E76FE640[status];
    }

    _eventMap2 = [(CAMAnalyticsEvent *)self _eventMap];
    [_eventMap2 setObject:v16 forKeyedSubscript:@"portraitStatus"];

    if (!allowedCopy)
    {
      goto LABEL_20;
    }
  }

  if (![requestCopy type])
  {
    v20 = requestCopy;
    adjustmentFilters = [v20 adjustmentFilters];
    v22 = [CAMEffectFilterManager isDepthEffectInFilters:adjustmentFilters];

    if (v22)
    {
      v23 = @"PortraitEnabled";
    }

    else if ([v20 wantsDepthData])
    {
      v23 = @"DepthOnly";
    }

    else
    {
      v23 = @"None";
    }

    _eventMap3 = [(CAMAnalyticsEvent *)self _eventMap];
    [_eventMap3 setObject:v23 forKeyedSubscript:@"portraitInPhotoMode"];
  }

LABEL_20:
  v25 = +[CAMCaptureCapabilities capabilities];
  if ([v25 isPortraitEffectIntensitySupportedForMode:v15])
  {
    v26 = +[CAMCaptureCapabilities capabilities];
    v27 = [v26 isPortraitEffectIntensitySupportedForLightingType:{-[CAMAnalyticsCaptureEvent _lightingEffectType](self, "_lightingEffectType")}];

    if (!v27)
    {
      goto LABEL_24;
    }

    v28 = +[CAMCaptureCapabilities capabilities];
    [v28 minimumPortraitEffectIntensity];
    v30 = v29;

    v31 = +[CAMCaptureCapabilities capabilities];
    [v31 maximumPortraitEffectIntensity];
    v33 = v32;

    v34 = +[CAMCaptureCapabilities capabilities];
    [v34 defaultPortraitEffectIntensity];
    v36 = v35;

    v37 = [MEMORY[0x1E696AD98] numberWithDouble:intensity];
    _eventMap4 = [(CAMAnalyticsEvent *)self _eventMap];
    [_eventMap4 setObject:v37 forKeyedSubscript:@"lightingEffectIntensity"];

    *&v39 = intensity;
    *&v40 = v30;
    *&v41 = v33;
    *&v42 = v36;
    v25 = [(CAMAnalyticsCaptureEvent *)self _defaultRangeStringForValue:v39 lowerBound:v40 upperBound:v41 defaultValue:v42];
    _eventMap5 = [(CAMAnalyticsEvent *)self _eventMap];
    [_eventMap5 setObject:v25 forKeyedSubscript:@"lightingEffectIntensityRange"];
  }

LABEL_24:
  v44 = +[CAMCaptureCapabilities capabilities];
  v45 = [v44 isDepthEffectApertureSupportedForMode:v15 devicePosition:-[CAMAnalyticsCaptureEvent _captureDevicePosition](self depthSuggestionEnabled:{"_captureDevicePosition"), allowedCopy}];

  if (v45)
  {
    v46 = +[CAMCaptureCapabilities capabilities];
    [v46 minimumDepthEffectApertureForMode:v15 device:{-[CAMAnalyticsCaptureEvent _captureDevice](self, "_captureDevice")}];
    v48 = v47;

    v49 = +[CAMCaptureCapabilities capabilities];
    [v49 maximumDepthEffectApertureForMode:v15 device:{-[CAMAnalyticsCaptureEvent _captureDevice](self, "_captureDevice")}];
    v51 = v50;

    v52 = +[CAMCaptureCapabilities capabilities];
    [v52 defaultDepthEffectApertureForMode:v15 device:-[CAMAnalyticsCaptureEvent _captureDevice](self zoomFactor:{"_captureDevice"), factor}];
    v54 = v53;

    v55 = [MEMORY[0x1E696AD98] numberWithDouble:value];
    _eventMap6 = [(CAMAnalyticsEvent *)self _eventMap];
    [_eventMap6 setObject:v55 forKeyedSubscript:@"apertureValue"];

    *&v57 = value;
    *&v58 = v48;
    *&v59 = v51;
    *&v60 = v54;
    v61 = [(CAMAnalyticsCaptureEvent *)self _defaultRangeStringForValue:v57 lowerBound:v58 upperBound:v59 defaultValue:v60];
    _eventMap7 = [(CAMAnalyticsEvent *)self _eventMap];
    [_eventMap7 setObject:v61 forKeyedSubscript:@"apertureRange"];
  }

LABEL_26:
}

- (void)populateDuration:(double)duration
{
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:vcvtpd_s64_f64(duration)];
  _eventMap = [(CAMAnalyticsEvent *)self _eventMap];
  [_eventMap setObject:v5 forKeyedSubscript:@"duration"];

  v8 = [objc_opt_class() durationRangeStringForDuration:duration];
  _eventMap2 = [(CAMAnalyticsEvent *)self _eventMap];
  [_eventMap2 setObject:v8 forKeyedSubscript:@"durationRange"];
}

- (void)populateBurstLength:(int64_t)length
{
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:length];
  _eventMap = [(CAMAnalyticsEvent *)self _eventMap];
  [_eventMap setObject:v5 forKeyedSubscript:@"burstLength"];
}

- (void)populateObjectResultsWithNumberOfFaces:(unint64_t)faces numberOfCats:(unint64_t)cats numberOfDogs:(unint64_t)dogs
{
  [objc_opt_class() bucketedPowerOf2ForValue:1 allowZero:faces minPositiveValue:1.0 maxValue:10.0];
  v9 = v8;
  [objc_opt_class() bucketedPowerOf2ForValue:1 allowZero:cats minPositiveValue:1.0 maxValue:2.0];
  v11 = v10;
  [objc_opt_class() bucketedPowerOf2ForValue:1 allowZero:dogs minPositiveValue:1.0 maxValue:2.0];
  v13 = v12;
  if (v9)
  {
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v9];
  }

  else
  {
    v14 = 0;
  }

  v15 = v11;
  _eventMap = [(CAMAnalyticsEvent *)self _eventMap];
  [_eventMap setObject:v14 forKeyedSubscript:@"numberOfFaces"];

  if (v9)
  {
  }

  if (v15)
  {
    v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v11];
  }

  else
  {
    v17 = 0;
  }

  v18 = v13;
  _eventMap2 = [(CAMAnalyticsEvent *)self _eventMap];
  [_eventMap2 setObject:v17 forKeyedSubscript:@"numberOfCats"];

  if (v15)
  {
  }

  if (v18)
  {
    v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v13];
  }

  else
  {
    v21 = 0;
  }

  _eventMap3 = [(CAMAnalyticsEvent *)self _eventMap];
  [_eventMap3 setObject:v21 forKeyedSubscript:@"numberOfDogs"];

  if (v18)
  {
  }
}

- (void)populateSharedLibraryMode:(int64_t)mode
{
  v5 = +[CAMUserPreferences preferences];
  sharedLibraryEnabled = [v5 sharedLibraryEnabled];

  if (sharedLibraryEnabled)
  {
    if (mode > 5)
    {
      v7 = 0;
    }

    else
    {
      v7 = off_1E76FE6C0[mode];
    }

    _eventMap = [(CAMAnalyticsEvent *)self _eventMap];
    [_eventMap setObject:v7 forKeyedSubscript:@"sharedLibraryMode"];

    v11 = +[CAMUserPreferences preferences];
    if ([v11 sharedLibraryAutoBehaviorEnabled])
    {
      v9 = @"Auto";
    }

    else
    {
      v9 = @"Manual";
    }

    _eventMap2 = [(CAMAnalyticsEvent *)self _eventMap];
    [_eventMap2 setObject:v9 forKeyedSubscript:@"sharedLibrarySetting"];
  }
}

- (void)populateDeviceOrientation:(int64_t)orientation isDeviceOrientationLocked:(BOOL)locked
{
  lockedCopy = locked;
  if (orientation >= 7)
  {
    orientation = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unexpected:%ld", orientation];
  }

  else
  {
    orientation = off_1E76FE6F0[orientation];
  }

  _eventMap = [(CAMAnalyticsEvent *)self _eventMap];
  [_eventMap setObject:orientation forKeyedSubscript:@"deviceOrientation"];

  v9 = [MEMORY[0x1E696AD98] numberWithBool:lockedCopy];
  _eventMap2 = [(CAMAnalyticsEvent *)self _eventMap];
  [_eventMap2 setObject:v9 forKeyedSubscript:@"deviceOrientationLocked"];
}

- (void)trackFrontRearSimultaneousVideoPIPMoveToAnchor:(int64_t)anchor
{
  _trackedFrontRearSimultaneousVideoAnchors = [(CAMAnalyticsCaptureEvent *)self _trackedFrontRearSimultaneousVideoAnchors];
  v6 = [_trackedFrontRearSimultaneousVideoAnchors count];

  if (v6)
  {
    [(CAMAnalyticsCaptureEvent *)self set_frontRearSimultaneousVideoPIPInteractionCount:[(CAMAnalyticsCaptureEvent *)self _frontRearSimultaneousVideoPIPInteractionCount]+ 1];
    _eventMap2 = [MEMORY[0x1E696AD98] numberWithInteger:{-[CAMAnalyticsCaptureEvent _frontRearSimultaneousVideoPIPInteractionCount](self, "_frontRearSimultaneousVideoPIPInteractionCount")}];
    _eventMap = [(CAMAnalyticsEvent *)self _eventMap];
    [_eventMap setObject:_eventMap2 forKeyedSubscript:@"frontRearVideoPIPInteractionCount"];
  }

  else
  {
    _eventMap2 = [(CAMAnalyticsEvent *)self _eventMap];
    [_eventMap2 setObject:&unk_1F16C8708 forKeyedSubscript:@"frontRearVideoPIPInteractionCount"];
  }

  [(CAMAnalyticsCaptureEvent *)self _trackAnchor:anchor];
}

- (void)_trackAnchor:(int64_t)anchor
{
  if (anchor <= 3)
  {
    v4 = off_1E76FE728[anchor];
    _trackedFrontRearSimultaneousVideoAnchors = [(CAMAnalyticsCaptureEvent *)self _trackedFrontRearSimultaneousVideoAnchors];
    [_trackedFrontRearSimultaneousVideoAnchors addObject:v4];
  }

  _trackedFrontRearSimultaneousVideoAnchors2 = [(CAMAnalyticsCaptureEvent *)self _trackedFrontRearSimultaneousVideoAnchors];
  allObjects = [_trackedFrontRearSimultaneousVideoAnchors2 allObjects];
  v10 = [allObjects sortedArrayUsingSelector:sel_localizedCaseInsensitiveCompare_];

  v8 = [v10 componentsJoinedByString:{@", "}];
  _eventMap = [(CAMAnalyticsEvent *)self _eventMap];
  [_eventMap setObject:v8 forKeyedSubscript:@"frontRearVideoPIPAnchors"];
}

- (id)_defaultRangeStringForValue:(float)value lowerBound:(float)bound upperBound:(float)upperBound defaultValue:(float)defaultValue
{
  valueCopy = value;
  if (bound + 0.01 >= valueCopy)
  {
    return @"Min";
  }

  defaultValueCopy = defaultValue;
  if (defaultValueCopy + -0.01 > valueCopy)
  {
    return @"Low";
  }

  if (defaultValueCopy + 0.01 >= valueCopy)
  {
    return @"Default";
  }

  if (upperBound + -0.01 <= valueCopy)
  {
    return @"Max";
  }

  return @"High";
}

- (id)_zoomRangeStringForDisplayZoomValue:(double)value zoomPoints:(id)points mode:(int64_t)mode device:(int64_t)device
{
  v51 = *MEMORY[0x1E69E9840];
  pointsCopy = points;
  v11 = +[CAMCaptureCapabilities capabilities];
  v12 = v11;
  if ((device - 1) > 0xA)
  {
    v13 = 0;
  }

  else
  {
    v13 = qword_1A3A6AC78[device - 1];
  }

  v14 = [v11 isSuperWideSupportedForDevicePosition:v13];
  v15 = [v12 isTelephotoSupportedForDevicePosition:v13];
  [v12 superWideDisplayZoomFactor];
  v17 = v16;
  [v12 wideDisplayZoomFactor];
  v19 = v18;
  [v12 telephotoDisplayZoomFactor];
  v21 = v20;
  v22 = [v12 isQuadraWideZoomButtonSupportedForMode:mode devicePosition:v13 videoConfiguration:{-[CAMAnalyticsCaptureEvent _captureVideoConfiguration](self, "_captureVideoConfiguration")}];
  [v12 quadraWideDisplayZoomFactor];
  v24 = v23;
  v25 = [v12 isQuadraTeleZoomButtonSupportedForMode:mode devicePosition:v13 videoConfiguration:{-[CAMAnalyticsCaptureEvent _captureVideoConfiguration](self, "_captureVideoConfiguration")}];
  [v12 quadraTeleDisplayZoomFactor];
  v27 = v26;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v28 = pointsCopy;
  v29 = [v28 countByEnumeratingWithState:&v46 objects:v50 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v47;
    while (2)
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v47 != v31)
        {
          objc_enumerationMutation(v28);
        }

        v33 = *(*(&v46 + 1) + 8 * i);
        if ([v33 isCustomLens])
        {
          [v33 displayZoomFactor];
          if (vabdd_f64(value, v34) < 0.001)
          {
            v36 = [v12 effectiveFocalLengthForCustomLens:{objc_msgSend(v33, "customLens")}];
            v37 = 0;
            if (v36 < 4)
            {
              v37 = qword_1A3A6ACD0[v36];
            }

            v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%.fmm", v37];

            goto LABEL_18;
          }
        }
      }

      v30 = [v28 countByEnumeratingWithState:&v46 objects:v50 count:16];
      if (v30)
      {
        continue;
      }

      break;
    }
  }

  if (v19 == value)
  {
    v35 = @"Wide";
  }

  else
  {
    if (v24 == value)
    {
      v39 = v22;
    }

    else
    {
      v39 = 0;
    }

    if (v39)
    {
      v35 = @"QuadraWide";
    }

    else
    {
      if (v27 == value)
      {
        v40 = v25;
      }

      else
      {
        v40 = 0;
      }

      if (v40)
      {
        v35 = @"QuadraTele";
      }

      else
      {
        if (v19 <= value)
        {
          v41 = @">Wide";
          v42 = @"Wide-Telephoto";
          v45 = @">Telephoto";
          if (v21 == value)
          {
            v45 = @"Telephoto";
          }

          if (v21 <= value)
          {
            v42 = v45;
          }

          v44 = v15 == 0;
        }

        else
        {
          v41 = @"<Wide";
          v42 = @"<UltraWide";
          v43 = @"UltraWide-Wide";
          if (v17 == value)
          {
            v43 = @"UltraWide";
          }

          if (v17 <= value)
          {
            v42 = v43;
          }

          v44 = v14 == 0;
        }

        if (v44)
        {
          v35 = v41;
        }

        else
        {
          v35 = v42;
        }
      }
    }
  }

LABEL_18:

  return v35;
}

@end