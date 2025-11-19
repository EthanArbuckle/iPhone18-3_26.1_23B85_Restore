@interface CAMAnalyticsCaptureEvent
- (CAMAnalyticsCaptureEvent)initWithEvent:(id)a3;
- (CAMAnalyticsCaptureEvent)initWithGraphConfiguration:(id)a3 outputToExternalStorage:(BOOL)a4;
- (id)_defaultRangeStringForValue:(float)a3 lowerBound:(float)a4 upperBound:(float)a5 defaultValue:(float)a6;
- (id)_zoomRangeStringForDisplayZoomValue:(double)a3 zoomPoints:(id)a4 mode:(int64_t)a5 device:(int64_t)a6;
- (void)_populateFromCaptureRequest:(id)a3;
- (void)_trackAnchor:(int64_t)a3;
- (void)populateAEAFLocked:(BOOL)a3;
- (void)populateBurstLength:(int64_t)a3;
- (void)populateDesiredFlashMode:(int64_t)a3 desiredLivePhotoMode:(int64_t)a4 desiredHDRMode:(int64_t)a5 timerDuration:(int64_t)a6;
- (void)populateDesiredMacroMode:(int64_t)a3 isMacroCapture:(BOOL)a4 isMacroSuggested:(BOOL)a5;
- (void)populateDesiredNightModeControlMode:(unint64_t)a3 resolvedNightModeControlMode:(unint64_t)a4 resolvedNightMode:(int64_t)a5 nightModeStatus:(int64_t)a6;
- (void)populateDesiredTorchMode:(int64_t)a3;
- (void)populateDeviceOrientation:(int64_t)a3 isDeviceOrientationLocked:(BOOL)a4;
- (void)populateDuration:(double)a3;
- (void)populateExposureSliderBias:(float)a3 exposureTapAndBias:(float)a4 totalExposureBias:(float)a5;
- (void)populateForTimelapseCaptureOrientation:(int64_t)a3 captureMirrored:(BOOL)a4 origin:(int64_t)a5 pressType:(int64_t)a6 startDate:(id)a7;
- (void)populateFromPanoramaCaptureRequest:(id)a3;
- (void)populateFromPanoramaCaptureStoppingReason:(int64_t)a3;
- (void)populateFromStillImageCaptureRequest:(id)a3 burst:(BOOL)a4 preferences:(id)a5;
- (void)populateFromStillImageCaptureResponse:(id)a3;
- (void)populateFromVideoCaptureRequest:(id)a3 preferences:(id)a4;
- (void)populateFromVideoCaptureResponse:(id)a3;
- (void)populateObjectResultsWithNumberOfFaces:(unint64_t)a3 numberOfCats:(unint64_t)a4 numberOfDogs:(unint64_t)a5;
- (void)populatePanoramaDirection:(int64_t)a3;
- (void)populatePanoramaInstruction:(int64_t)a3;
- (void)populatePortraitStatus:(int64_t)a3 lightingEffectIntensity:(double)a4 apertureValue:(double)a5 zoomFactor:(double)a6 isDepthSuggestionAllowed:(BOOL)a7 request:(id)a8;
- (void)populateSharedLibraryMode:(int64_t)a3;
- (void)populateZoomFieldOfView:(int64_t)a3 graphConfiguration:(id)a4 smartFramingSource:(int64_t)a5;
- (void)populateZoomFromDisplayZoomValue:(double)a3 zoomPoints:(id)a4 zoomInteractionType:(int64_t)a5;
- (void)populateZoomFromZoomButtonSymbol:(int64_t)a3 zoomInteractionType:(int64_t)a4;
- (void)trackFrontRearSimultaneousVideoPIPMoveToAnchor:(int64_t)a3;
@end

@implementation CAMAnalyticsCaptureEvent

- (CAMAnalyticsCaptureEvent)initWithGraphConfiguration:(id)a3 outputToExternalStorage:(BOOL)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = CAMAnalyticsCaptureEvent;
  v7 = [(CAMAnalyticsEvent *)&v12 init];
  if (v7)
  {
    v7->__captureMode = [v6 mode];
    v7->__captureDevice = [v6 device];
    v7->__captureDevicePosition = [v6 devicePosition];
    v7->__captureVideoConfiguration = [v6 videoConfiguration];
    v7->__videoStabilizationStrength = [v6 videoStabilizationStrength];
    v7->__outputToExternalStorage = a4;
    v7->__colorSpace = [v6 colorSpace];
    v7->__frontRearSimultaneousVideoPIPInteractionCount = 0;
    v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    trackedFrontRearSimultaneousVideoAnchors = v7->__trackedFrontRearSimultaneousVideoAnchors;
    v7->__trackedFrontRearSimultaneousVideoAnchors = v8;

    v10 = v7;
  }

  return v7;
}

- (CAMAnalyticsCaptureEvent)initWithEvent:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CAMAnalyticsCaptureEvent;
  v5 = [(CAMAnalyticsEvent *)&v10 initWithEvent:v4];
  if (v5)
  {
    v5->__captureMode = [v4 _captureMode];
    v5->__captureDevice = [v4 _captureDevice];
    v5->__captureDevicePosition = [v4 _captureDevicePosition];
    v5->__captureVideoConfiguration = [v4 _captureVideoConfiguration];
    v5->__mediaType = [v4 _mediaType];
    v5->__isStillDuringVideo = [v4 _isStillDuringVideo];
    v5->__outputToExternalStorage = [v4 _outputToExternalStorage];
    v5->__colorSpace = [v4 _colorSpace];
    v5->__frontRearSimultaneousVideoPIPInteractionCount = 0;
    v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    trackedFrontRearSimultaneousVideoAnchors = v5->__trackedFrontRearSimultaneousVideoAnchors;
    v5->__trackedFrontRearSimultaneousVideoAnchors = v6;

    v8 = v5;
  }

  return v5;
}

- (void)_populateFromCaptureRequest:(id)a3
{
  v43 = a3;
  v4 = [v43 type];
  if (v4 == 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
    if (v4 != 1)
    {
      if (v4)
      {
        goto LABEL_8;
      }

      v6 = [v43 ctmCaptureType];
      if (v6 >= 3)
      {
        goto LABEL_8;
      }

      v5 = qword_1A3A6AC48[v6];
    }
  }

  [(CAMAnalyticsCaptureEvent *)self set_mediaType:v5];
LABEL_8:
  v7 = [v43 captureMode];
  if (v7 > 9)
  {
    v8 = 0;
  }

  else
  {
    v8 = off_1E76FE288[v7];
  }

  v9 = [(CAMAnalyticsEvent *)self _eventMap];
  [v9 setObject:v8 forKeyedSubscript:@"captureMode"];

  v10 = [v43 captureDevice];
  if (v10 > 0xB)
  {
    v11 = 0;
  }

  else
  {
    v11 = off_1E76FE458[v10];
  }

  v12 = [(CAMAnalyticsEvent *)self _eventMap];
  [v12 setObject:v11 forKeyedSubscript:@"device"];

  v13 = [v43 captureDevicePosition];
  v14 = @"Front";
  if (v13 != 1)
  {
    v14 = 0;
  }

  if (!v13)
  {
    v14 = @"Back";
  }

  v15 = v14;
  v16 = [(CAMAnalyticsEvent *)self _eventMap];
  [v16 setObject:v15 forKeyedSubscript:@"devicePosition"];

  v17 = [v43 captureOrientation];
  v18 = 0;
  if (v17 <= 4)
  {
    v18 = off_1E76FE4B8[v17];
  }

  v19 = [(CAMAnalyticsEvent *)self _eventMap];
  [v19 setObject:v18 forKeyedSubscript:@"orientation"];

  v20 = [v43 origin];
  v21 = @"MessagesCamera";
  if (v20 != 1)
  {
    v21 = 0;
  }

  if (!v20)
  {
    v21 = @"Camera";
  }

  v22 = v21;
  v23 = [(CAMAnalyticsEvent *)self _eventMap];
  [v23 setObject:v22 forKeyedSubscript:@"origin"];

  v24 = +[CAMCaptureCapabilities capabilities];
  v25 = [v24 hostProcess];
  v26 = 0;
  if (v25 <= 5)
  {
    v26 = off_1E76FE4E0[v25];
  }

  v27 = [(CAMAnalyticsEvent *)self _eventMap];
  [v27 setObject:v26 forKeyedSubscript:@"hostProcess"];

  v28 = [MEMORY[0x1E696AAE8] mainBundle];
  v29 = [v28 bundleIdentifier];
  v30 = [(CAMAnalyticsEvent *)self _eventMap];
  [v30 setObject:v29 forKeyedSubscript:@"bundleID"];

  v31 = [v43 pressType];
  if (v31 <= 105)
  {
    switch(v31)
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

  if (v31 > 107)
  {
    if (v31 == 108)
    {
      v32 = @"HeadphonesRightButton";
      goto LABEL_42;
    }

    if (v31 == 601)
    {
      v32 = @"CameraCaseShutter";
      goto LABEL_42;
    }

    goto LABEL_38;
  }

  if (v31 == 106)
  {
    v32 = @"CameraButton";
  }

  else
  {
    v32 = @"HeadphonesLeftButton";
  }

LABEL_42:
  v33 = [(CAMAnalyticsEvent *)self _eventMap];
  [v33 setObject:v32 forKeyedSubscript:@"pressType"];

  v34 = [(CAMAnalyticsCaptureEvent *)self _mediaType];
  v35 = @"Video";
  if (v34 != 1)
  {
    v35 = 0;
  }

  if (!v34)
  {
    v35 = @"Photo";
  }

  v36 = v35;
  v37 = [(CAMAnalyticsEvent *)self _eventMap];
  [v37 setObject:v36 forKeyedSubscript:@"captureType"];

  v38 = 0;
  v39 = [v43 audioConfiguration] - 1;
  if (v39 <= 2)
  {
    v38 = off_1E76FE2D8[v39];
  }

  v40 = [(CAMAnalyticsEvent *)self _eventMap];
  [v40 setObject:v38 forKeyedSubscript:@"audioConfiguration"];

  if ([v43 captureDevicePosition] == 1)
  {
    v41 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v43, "isCaptureMirrored")}];
    v42 = [(CAMAnalyticsEvent *)self _eventMap];
    [v42 setObject:v41 forKeyedSubscript:@"isCaptureMirrored"];
  }
}

- (void)populateFromStillImageCaptureRequest:(id)a3 burst:(BOOL)a4 preferences:(id)a5
{
  v61 = a3;
  v7 = a5;
  v8 = +[CAMCaptureCapabilities capabilities];
  [(CAMAnalyticsCaptureEvent *)self _populateFromCaptureRequest:v61];
  -[CAMAnalyticsCaptureEvent set_isStillDuringVideo:](self, "set_isStillDuringVideo:", [v61 stillDuringVideo]);
  v9 = [v61 captureMode];
  if (![(CAMAnalyticsCaptureEvent *)self _mediaType])
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[CAMAnalyticsCaptureEvent _isStillDuringVideo](self, "_isStillDuringVideo")}];
    v11 = [(CAMAnalyticsEvent *)self _eventMap];
    [v11 setObject:v10 forKeyedSubscript:@"isStillDuringVideo"];

    if (![(CAMAnalyticsCaptureEvent *)self _isStillDuringVideo])
    {
      if ([v8 isLivePhotoSupportedForMode:-[CAMAnalyticsCaptureEvent _captureMode](self devicePosition:{"_captureMode"), -[CAMAnalyticsCaptureEvent _captureDevicePosition](self, "_captureDevicePosition")}])
      {
        v12 = [v61 irisMode];
        if (v12 > 2)
        {
          v13 = 0;
        }

        else
        {
          v13 = off_1E76FE628[v12];
        }

        v14 = [(CAMAnalyticsEvent *)self _eventMap];
        [v14 setObject:v13 forKeyedSubscript:@"resolvedLivePhotoMode"];
      }

      if ([v8 isHDRSupportedForMode:objc_msgSend(v61 devicePosition:{"captureMode"), objc_msgSend(v61, "captureDevicePosition")}])
      {
        v15 = [v61 hdrMode];
        v16 = @"On";
        if (v15 != 1)
        {
          v16 = 0;
        }

        if (!v15)
        {
          v16 = @"Off";
        }

        v17 = v16;
        v18 = [(CAMAnalyticsEvent *)self _eventMap];
        [v18 setObject:v17 forKeyedSubscript:@"resolvedHDRMode"];
      }

      if ([v8 isNightModeSupportedForMode:objc_msgSend(v61 device:{"captureMode"), objc_msgSend(v61, "captureDevice")}])
      {
        v19 = [v61 nightMode];
        if (v19 > 2)
        {
          v20 = 0;
        }

        else
        {
          v20 = off_1E76FE5F0[v19];
        }

        v21 = [(CAMAnalyticsEvent *)self _eventMap];
        [v21 setObject:v20 forKeyedSubscript:@"resolvedLowLightMode"];
      }

      if ([v8 isLightingControlSupportedForMode:{objc_msgSend(v61, "captureMode")}])
      {
        -[CAMAnalyticsCaptureEvent set_lightingEffectType:](self, "set_lightingEffectType:", [v61 lightingEffectType]);
        v22 = [v61 lightingEffectType];
        if (v22 > 6)
        {
          v23 = 0;
        }

        else
        {
          v23 = off_1E76FE2F0[v22];
        }

        v24 = [(CAMAnalyticsEvent *)self _eventMap];
        [v24 setObject:v23 forKeyedSubscript:@"lightingType"];
      }

      if ([v8 semanticStylesSupport])
      {
        v25 = [v61 semanticStyle];

        if (v25)
        {
          v26 = [v61 semanticStyle];
          v27 = [v26 analyticsDictionaryForCapture];

          v28 = [(CAMAnalyticsEvent *)self _eventMap];
          [v28 addEntriesFromDictionary:v27];
        }
      }

      v29 = +[CAMCaptureCapabilities capabilities];
      v30 = [v29 isLinearDNGSupported];

      v31 = [v7 rawControlEnabled];
      if (v30 && v31)
      {
        if ([v61 photoEncodingBehavior] == 2)
        {
          v32 = [MEMORY[0x1E696AD98] numberWithBool:1];
          v33 = [(CAMAnalyticsEvent *)self _eventMap];
          [v33 setObject:v32 forKeyedSubscript:@"linearDNG"];

          v34 = MEMORY[0x1E696AD98];
          v35 = [v61 maximumPhotoResolution] - 1;
          if (v35 > 2)
          {
            v36 = 0;
          }

          else
          {
            v36 = qword_1A3A6AC60[v35];
          }

          v37 = [v34 numberWithInteger:v36];
          v38 = [(CAMAnalyticsEvent *)self _eventMap];
          v39 = v38;
          v40 = @"linearDNGResolution";
        }

        else
        {
          v37 = [MEMORY[0x1E696AD98] numberWithBool:0];
          v38 = [(CAMAnalyticsEvent *)self _eventMap];
          v39 = v38;
          v40 = @"linearDNG";
        }

        [v38 setObject:v37 forKeyedSubscript:v40];
      }

      v41 = [v8 supportedPhotoResolutionsForMode:objc_msgSend(v61 devicePosition:"captureMode") photoEncoding:{objc_msgSend(v61, "captureDevicePosition"), objc_msgSend(v61, "photoEncodingBehavior")}];
      v42 = [v41 count];

      if (v42 >= 2)
      {
        v43 = MEMORY[0x1E696AD98];
        v44 = [v61 maximumPhotoResolution] - 1;
        if (v44 > 2)
        {
          v45 = 0;
        }

        else
        {
          v45 = qword_1A3A6AC60[v44];
        }

        v46 = [v43 numberWithInteger:v45];
        v47 = [(CAMAnalyticsEvent *)self _eventMap];
        [v47 setObject:v46 forKeyedSubscript:@"desiredMaximumResolution"];
      }
    }
  }

  v48 = +[CAMCaptureCapabilities capabilities];
  v49 = [v48 isFlashSupportedForMode:objc_msgSend(v61 devicePosition:{"captureMode"), objc_msgSend(v61, "captureDevicePosition")}];

  if (v49 && ![(CAMAnalyticsCaptureEvent *)self _isStillDuringVideo])
  {
    v50 = [v61 flashMode];
    if (v50 > 2)
    {
      v51 = 0;
    }

    else
    {
      v51 = off_1E76FE628[v50];
    }

    v52 = [(CAMAnalyticsEvent *)self _eventMap];
    [v52 setObject:v51 forKeyedSubscript:@"resolvedFlashMode"];
  }

  v53 = +[CAMCaptureCapabilities capabilities];
  v54 = [v53 isAspectRatioCropSupportedForMode:objc_msgSend(v61 devicePosition:{"captureMode"), objc_msgSend(v61, "captureDevicePosition")}];

  if (v54)
  {
    v55 = [v61 aspectRatioCrop];
    if (v55 > 6)
    {
      v56 = 0;
    }

    else
    {
      v56 = off_1E76FE328[v55];
    }

    v57 = [(CAMAnalyticsEvent *)self _eventMap];
    [v57 setObject:v56 forKeyedSubscript:@"aspectRatio"];
  }

  if (v9 <= 7 && (((0xC0u >> v9) | (0x11u >> v9)) & 1) != 0)
  {
    v58 = [v61 effectFilterType];
    if (v58 > 0x10)
    {
      v59 = 0;
    }

    else
    {
      v59 = off_1E76FE360[v58];
    }

    v60 = [(CAMAnalyticsEvent *)self _eventMap];
    [v60 setObject:v59 forKeyedSubscript:@"filterType"];
  }
}

- (void)populateFromVideoCaptureRequest:(id)a3 preferences:(id)a4
{
  v79 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v72 = +[CAMCaptureCapabilities capabilities];
  [(CAMAnalyticsCaptureEvent *)self _populateFromCaptureRequest:v6];
  if ([v6 trueVideoEnabled] && objc_msgSend(v6, "captureMode") == 8)
  {
    v8 = @"SpatialPhoto";
LABEL_7:
    v9 = [(CAMAnalyticsEvent *)self _eventMap];
    [v9 setObject:v8 forKeyedSubscript:@"captureMode"];

    goto LABEL_8;
  }

  if ([v6 trueVideoEnabled] && objc_msgSend(v6, "captureMode") == 1)
  {
    v8 = @"Photo";
    goto LABEL_7;
  }

LABEL_8:
  if ([v72 isFlashOrTorchSupportedForMode:objc_msgSend(v6 devicePosition:{"captureMode"), objc_msgSend(v6, "captureDevicePosition")}])
  {
    v10 = [v6 torchMode];
    if (v10 > 2)
    {
      v11 = 0;
    }

    else
    {
      v11 = off_1E76FE628[v10];
    }

    v12 = [(CAMAnalyticsEvent *)self _eventMap];
    [v12 setObject:v11 forKeyedSubscript:@"resolvedTorchMode"];
  }

  v13 = [v7 prefersHDR10BitVideoForCapabilities:v72];
  v14 = [v6 captureMode];
  v15 = [v6 captureDevice];
  v16 = [v6 videoEncodingBehavior];
  v17 = [v6 captureVideoConfiguration];
  v18 = [(CAMAnalyticsCaptureEvent *)self _outputToExternalStorage];
  LOBYTE(v65) = [v6 isFrontRearSimultaneousVideoEnabled];
  v69 = v13;
  v19 = [v72 resolvedVideoConfigurationForMode:v14 device:v15 videoEncodingBehavior:v16 videoConfiguration:v17 outputToExternalStorage:v18 prefersHDR10BitVideo:v13 frontRearSimultaneousVideoEnabled:v65];
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

  v29 = [(CAMAnalyticsEvent *)self _eventMap];
  [v29 setObject:v20 forKeyedSubscript:@"videoConfiguration"];

  v30 = [v72 isProResVideoSupported];
  v31 = [v7 isProResControlEnabled];
  if (v30 && v31)
  {
    v32 = [v6 videoEncodingBehavior] == 2;
    v33 = [MEMORY[0x1E696AD98] numberWithBool:v32];
    v34 = [(CAMAnalyticsEvent *)self _eventMap];
    [v34 setObject:v33 forKeyedSubscript:@"proRes"];
  }

  v35 = [v6 captureMode];
  if (v35 == 2)
  {
    v36 = [v7 slomoConfiguration];
    if (v36 <= 9999)
    {
      switch(v36)
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
    if (v35 != 1)
    {
      goto LABEL_56;
    }

    v36 = [v7 videoConfiguration];
    if (v36 <= 9999)
    {
      switch(v36)
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
  if (v36 != 10005)
  {
    v39 = 0;
  }

  if (v36 == 10004)
  {
    v40 = @"ImagePickeriFrame720p";
  }

  else
  {
    v40 = v39;
  }

  if (v36 != 10003)
  {
    v38 = v40;
  }

  v41 = @"ImagePickerMedium";
  v42 = @"ImagePickerLow";
  if (v36 != 10002)
  {
    v42 = 0;
  }

  if (v36 != 10001)
  {
    v41 = v42;
  }

  if (v36 == 10000)
  {
    v43 = @"ImagePickerHigh";
  }

  else
  {
    v43 = v41;
  }

  if (v36 <= 10002)
  {
    v37 = v43;
  }

  else
  {
    v37 = v38;
  }

LABEL_55:
  v44 = [(CAMAnalyticsEvent *)self _eventMap];
  [v44 setObject:v37 forKeyedSubscript:@"preferredVideoConfiguration"];

LABEL_56:
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v73 = [&unk_1F16C9CC8 countByEnumeratingWithState:&v74 objects:v78 count:16];
  if (v73)
  {
    v70 = self;
    v71 = v6;
    v45 = 0;
    v67 = v7;
    v68 = *v75;
    do
    {
      for (i = 0; i != v73; ++i)
      {
        if (*v75 != v68)
        {
          objc_enumerationMutation(&unk_1F16C9CC8);
        }

        v47 = [*(*(&v74 + 1) + 8 * i) integerValue];
        v48 = [v71 captureMode];
        v49 = [v71 captureDevice];
        v50 = [v71 captureVideoConfiguration];
        v51 = [v71 videoEncodingBehavior];
        v52 = [(CAMAnalyticsCaptureEvent *)v70 _outputToExternalStorage];
        v53 = [v71 trueVideoEnabled];
        BYTE2(v66) = [v71 isFrontRearSimultaneousVideoEnabled];
        BYTE1(v66) = v69;
        LOBYTE(v66) = v53;
        v45 |= [v72 isVideoStabilizationStrength:v47 supportedForMode:v48 device:v49 videoConfiguration:v50 videoEncodingBehavior:v51 outputToExternalStorage:v52 trueVideoEnabled:v66 prefersHDR10BitVideo:? frontRearSimultaneousVideoEnabled:?];
      }

      v73 = [&unk_1F16C9CC8 countByEnumeratingWithState:&v74 objects:v78 count:16];
    }

    while (v73);
    self = v70;
    v6 = v71;
    v7 = v67;
    if (v45)
    {
      v54 = [(CAMAnalyticsCaptureEvent *)v70 _videoStabilizationStrength];
      if (v54 > 3)
      {
        v55 = 0;
      }

      else
      {
        v55 = off_1E76FE3E8[v54];
      }

      v56 = [(CAMAnalyticsEvent *)v70 _eventMap];
      [v56 setObject:v55 forKeyedSubscript:@"videoStabilizationStrength"];
    }
  }

  if ([v72 isExternalStorageOutputSupportedForMode:objc_msgSend(v6 videoEncodingBehavior:{"captureMode"), objc_msgSend(v6, "videoEncodingBehavior")}])
  {
    v57 = [MEMORY[0x1E696AD98] numberWithBool:{-[CAMAnalyticsCaptureEvent _outputToExternalStorage](self, "_outputToExternalStorage")}];
    [(CAMAnalyticsEvent *)self _eventMap];
    v59 = v58 = self;
    [v59 setObject:v57 forKeyedSubscript:@"externalStorage"];

    self = v58;
  }

  v60 = [(CAMAnalyticsCaptureEvent *)self _colorSpace];
  if (v60 > 3)
  {
    v61 = 0;
  }

  else
  {
    v61 = off_1E76FE408[v60];
  }

  v62 = [(CAMAnalyticsEvent *)self _eventMap];
  [v62 setObject:v61 forKeyedSubscript:@"colorSpace"];

  if ([v72 isFrontRearSimultaneousVideoSupportedForMode:{objc_msgSend(v6, "captureMode")}])
  {
    v63 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v6, "isFrontRearSimultaneousVideoEnabled")}];
    v64 = [(CAMAnalyticsEvent *)self _eventMap];
    [v64 setObject:v63 forKeyedSubscript:@"frontRearVideoEnabled"];
  }
}

- (void)populateFromPanoramaCaptureRequest:(id)a3
{
  [(CAMAnalyticsCaptureEvent *)self _populateFromCaptureRequest:a3];
  v4 = [(CAMAnalyticsEvent *)self _eventMap];
  v5 = MEMORY[0x1E695E110];
  [v4 setObject:MEMORY[0x1E695E110] forKeyedSubscript:@"slowDownPanoramaInstruction"];

  v6 = [(CAMAnalyticsEvent *)self _eventMap];
  [v6 setObject:v5 forKeyedSubscript:@"moveUpPanoramaInstruction"];

  v7 = [(CAMAnalyticsEvent *)self _eventMap];
  [v7 setObject:v5 forKeyedSubscript:@"moveDownPanoramaInstruction"];

  v8 = [(CAMAnalyticsEvent *)self _eventMap];
  [v8 setObject:@"Shutter" forKeyedSubscript:@"panoramaStopReason"];
}

- (void)populatePanoramaDirection:(int64_t)a3
{
  if (a3 > 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = off_1E76FE428[a3];
  }

  v4 = [(CAMAnalyticsEvent *)self _eventMap];
  [v4 setObject:v3 forKeyedSubscript:@"panoramaCaptureDirection"];
}

- (void)populatePanoramaInstruction:(int64_t)a3
{
  if ((a3 - 3) <= 2)
  {
    v4 = off_1E76FE440[a3 - 3];
    v5 = [(CAMAnalyticsEvent *)self _eventMap];
    [v5 setObject:MEMORY[0x1E695E118] forKeyedSubscript:v4];
  }
}

- (void)populateFromPanoramaCaptureStoppingReason:(int64_t)a3
{
  v4 = @"ReachedMaximumSize";
  if (a3 != -6000)
  {
    v4 = 0;
  }

  if (a3 == -6001)
  {
    v4 = @"ChangedDirection";
  }

  v5 = v4;
  v6 = [(CAMAnalyticsEvent *)self _eventMap];
  [v6 setObject:v5 forKeyedSubscript:@"panoramaStopReason"];
}

- (void)populateForTimelapseCaptureOrientation:(int64_t)a3 captureMirrored:(BOOL)a4 origin:(int64_t)a5 pressType:(int64_t)a6 startDate:(id)a7
{
  v9 = a4;
  v12 = a7;
  [(CAMAnalyticsCaptureEvent *)self set_mediaType:1];
  [(CAMAnalyticsCaptureEvent *)self set_isStillDuringVideo:0];
  v13 = [(CAMAnalyticsEvent *)self _eventMap];
  [v13 setObject:@"Timelapse" forKeyedSubscript:@"captureMode"];

  v14 = [(CAMAnalyticsCaptureEvent *)self _captureDevice];
  if (v14 > 0xB)
  {
    v15 = 0;
  }

  else
  {
    v15 = off_1E76FE458[v14];
  }

  v16 = [(CAMAnalyticsEvent *)self _eventMap];
  [v16 setObject:v15 forKeyedSubscript:@"device"];

  v17 = [(CAMAnalyticsCaptureEvent *)self _captureDevicePosition];
  v18 = @"Front";
  if (v17 != 1)
  {
    v18 = 0;
  }

  if (!v17)
  {
    v18 = @"Back";
  }

  v19 = v18;
  v20 = [(CAMAnalyticsEvent *)self _eventMap];
  [v20 setObject:v19 forKeyedSubscript:@"devicePosition"];

  v21 = 0;
  if (a3 <= 4)
  {
    v21 = off_1E76FE4B8[a3];
  }

  v22 = [(CAMAnalyticsEvent *)self _eventMap];
  [v22 setObject:v21 forKeyedSubscript:@"orientation"];

  v23 = @"MessagesCamera";
  if (a5 != 1)
  {
    v23 = 0;
  }

  if (!a5)
  {
    v23 = @"Camera";
  }

  v24 = v23;
  v25 = [(CAMAnalyticsEvent *)self _eventMap];
  [v25 setObject:v24 forKeyedSubscript:@"origin"];

  v26 = +[CAMCaptureCapabilities capabilities];
  v27 = [v26 hostProcess];
  v28 = 0;
  if (v27 <= 5)
  {
    v28 = off_1E76FE4E0[v27];
  }

  v29 = [(CAMAnalyticsEvent *)self _eventMap];
  [v29 setObject:v28 forKeyedSubscript:@"hostProcess"];

  v30 = [MEMORY[0x1E696AAE8] mainBundle];
  v31 = [v30 bundleIdentifier];
  v32 = [(CAMAnalyticsEvent *)self _eventMap];
  [v32 setObject:v31 forKeyedSubscript:@"bundleID"];

  if (a6 <= 105)
  {
    switch(a6)
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

  if (a6 > 107)
  {
    if (a6 == 108)
    {
      v33 = @"HeadphonesRightButton";
      goto LABEL_32;
    }

    if (a6 == 601)
    {
      v33 = @"CameraCaseShutter";
      goto LABEL_32;
    }

    goto LABEL_28;
  }

  if (a6 == 106)
  {
    v33 = @"CameraButton";
  }

  else
  {
    v33 = @"HeadphonesLeftButton";
  }

LABEL_32:
  v34 = [(CAMAnalyticsEvent *)self _eventMap];
  [v34 setObject:v33 forKeyedSubscript:@"pressType"];

  v35 = [(CAMAnalyticsEvent *)self _eventMap];
  [v35 setObject:@"Video" forKeyedSubscript:@"captureType"];

  v36 = [MEMORY[0x1E695DEE8] currentCalendar];
  v42 = [v36 components:32 fromDate:v12];

  v37 = [v42 hour];
  v38 = [MEMORY[0x1E696AD98] numberWithInteger:v37];
  v39 = [(CAMAnalyticsEvent *)self _eventMap];
  [v39 setObject:v38 forKeyedSubscript:@"userLocalTimeHour"];

  if ([(CAMAnalyticsCaptureEvent *)self _captureDevicePosition]== 1)
  {
    v40 = [MEMORY[0x1E696AD98] numberWithBool:v9];
    v41 = [(CAMAnalyticsEvent *)self _eventMap];
    [v41 setObject:v40 forKeyedSubscript:@"isCaptureMirrored"];
  }
}

- (void)populateFromStillImageCaptureResponse:(id)a3
{
  v15 = a3;
  v4 = [MEMORY[0x1E695DEE8] currentCalendar];
  v5 = [v15 captureDate];
  v6 = [v4 components:32 fromDate:v5];

  v7 = [v6 hour];
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:v7];
  v9 = [(CAMAnalyticsEvent *)self _eventMap];
  [v9 setObject:v8 forKeyedSubscript:@"userLocalTimeHour"];

  v10 = +[CAMCaptureCapabilities capabilities];
  LODWORD(v9) = [v10 isSemanticDevelopmentSupportedForMode:{-[CAMAnalyticsCaptureEvent _captureMode](self, "_captureMode")}];

  v11 = [v15 semanticEnhanceScene];
  if (v9 && v11 && ![(CAMAnalyticsCaptureEvent *)self _isStillDuringVideo])
  {
    v12 = [v15 semanticEnhanceScene] + 1;
    if (v12 > 4)
    {
      v13 = 0;
    }

    else
    {
      v13 = off_1E76FE510[v12];
    }

    v14 = [(CAMAnalyticsEvent *)self _eventMap];
    [v14 setObject:v13 forKeyedSubscript:@"semanticEnhanceScene"];
  }
}

- (void)populateFromVideoCaptureResponse:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    [v4 duration];
  }

  else
  {
    memset(&time, 0, sizeof(time));
  }

  [(CAMAnalyticsCaptureEvent *)self populateDuration:CMTimeGetSeconds(&time)];
  v6 = [MEMORY[0x1E695DEE8] currentCalendar];
  v7 = [v5 captureDate];
  v8 = [v6 components:32 fromDate:v7];

  v9 = [v8 hour];
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:v9];
  v11 = [(CAMAnalyticsEvent *)self _eventMap];
  [v11 setObject:v10 forKeyedSubscript:@"userLocalTimeHour"];

  v12 = [v5 reason] - 1;
  if (v12 <= 4)
  {
    v13 = off_1E76FE538[v12];
    v14 = [(CAMAnalyticsEvent *)self _eventMap];
    [v14 setObject:v13 forKeyedSubscript:@"videoCaptureError"];
  }
}

- (void)populateAEAFLocked:(BOOL)a3
{
  v5 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  v4 = [(CAMAnalyticsEvent *)self _eventMap];
  [v4 setObject:v5 forKeyedSubscript:@"aeafLock"];
}

- (void)populateZoomFromDisplayZoomValue:(double)a3 zoomPoints:(id)a4 zoomInteractionType:(int64_t)a5
{
  v18 = a4;
  v8 = +[CAMCaptureCapabilities capabilities];
  v9 = [v8 isZoomAllowedForMode:-[CAMAnalyticsCaptureEvent _captureMode](self device:"_captureMode") videoConfiguration:-[CAMAnalyticsCaptureEvent _captureDevice](self videoStabilizationStrength:{"_captureDevice"), -[CAMAnalyticsCaptureEvent _captureVideoConfiguration](self, "_captureVideoConfiguration"), -[CAMAnalyticsCaptureEvent _videoStabilizationStrength](self, "_videoStabilizationStrength")}];

  v10 = +[CAMCaptureCapabilities capabilities];
  v11 = [v10 shouldAllowCameraToggleForMode:-[CAMAnalyticsCaptureEvent _captureMode](self devicePosition:"_captureMode") videoConfiguration:-[CAMAnalyticsCaptureEvent _captureDevicePosition](self videoStabilizationStrength:"_captureDevicePosition") frontRearSimultaneousVideoEnabled:{-[CAMAnalyticsCaptureEvent _captureVideoConfiguration](self, "_captureVideoConfiguration"), -[CAMAnalyticsCaptureEvent _videoStabilizationStrength](self, "_videoStabilizationStrength"), 0}];

  if ((v9 & 1) != 0 || v11)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
    v13 = [(CAMAnalyticsEvent *)self _eventMap];
    [v13 setObject:v12 forKeyedSubscript:@"zoomFactor"];

    v14 = [(CAMAnalyticsCaptureEvent *)self _zoomRangeStringForDisplayZoomValue:v18 zoomPoints:[(CAMAnalyticsCaptureEvent *)self _captureMode] mode:[(CAMAnalyticsCaptureEvent *)self _captureDevice] device:a3];
    v15 = [(CAMAnalyticsEvent *)self _eventMap];
    [v15 setObject:v14 forKeyedSubscript:@"zoomFactorRange"];

    if (a5 > 7)
    {
      v16 = 0;
    }

    else
    {
      v16 = off_1E76FE578[a5];
    }

    v17 = [(CAMAnalyticsEvent *)self _eventMap];
    [v17 setObject:v16 forKeyedSubscript:@"zoomInteractionType"];
  }
}

- (void)populateZoomFieldOfView:(int64_t)a3 graphConfiguration:(id)a4 smartFramingSource:(int64_t)a5
{
  v8 = a4;
  v9 = +[CAMCaptureCapabilities capabilities];
  v10 = [v9 isDynamicAspectRatioSupportedForMode:-[CAMAnalyticsCaptureEvent _captureMode](self devicePosition:{"_captureMode"), -[CAMAnalyticsCaptureEvent _captureDevicePosition](self, "_captureDevicePosition")}];

  v11 = [v8 videoDynamicAspectRatio];
  if (v10)
  {
    v12 = @"Wide";
    v13 = @"RotatedWide";
    v14 = @"RotatedNarrow";
    if (a3 != 4)
    {
      v14 = 0;
    }

    if (a3 != 3)
    {
      v13 = v14;
    }

    if (a3 != 2)
    {
      v12 = v13;
    }

    v15 = @"Rotated";
    if (v11 != 1)
    {
      v15 = 0;
    }

    v16 = @"Narrow";
    if (a3 != 1)
    {
      v16 = 0;
    }

    if (a3)
    {
      v15 = v16;
    }

    if (a3 <= 1)
    {
      v17 = v15;
    }

    else
    {
      v17 = v12;
    }

    v18 = [(CAMAnalyticsEvent *)self _eventMap];
    [v18 setObject:v17 forKeyedSubscript:@"frontFacingZoom"];

    if (a3)
    {
      v19 = @"Auto";
      if (a5 != 1)
      {
        v19 = 0;
      }

      if (a5 == 2)
      {
        v19 = @"OverrodeAuto";
      }

      v20 = v19;
      v21 = [(CAMAnalyticsEvent *)self _eventMap];
      [v21 setObject:v20 forKeyedSubscript:@"smartFramingSource"];
    }
  }
}

- (void)populateZoomFromZoomButtonSymbol:(int64_t)a3 zoomInteractionType:(int64_t)a4
{
  v7 = +[CAMCaptureCapabilities capabilities];
  v8 = [v7 isZoomAllowedForMode:-[CAMAnalyticsCaptureEvent _captureMode](self device:"_captureMode") videoConfiguration:-[CAMAnalyticsCaptureEvent _captureDevice](self videoStabilizationStrength:{"_captureDevice"), -[CAMAnalyticsCaptureEvent _captureVideoConfiguration](self, "_captureVideoConfiguration"), -[CAMAnalyticsCaptureEvent _videoStabilizationStrength](self, "_videoStabilizationStrength")}];

  v9 = +[CAMCaptureCapabilities capabilities];
  v10 = [v9 shouldAllowCameraToggleForMode:-[CAMAnalyticsCaptureEvent _captureMode](self devicePosition:"_captureMode") videoConfiguration:-[CAMAnalyticsCaptureEvent _captureDevicePosition](self videoStabilizationStrength:"_captureDevicePosition") frontRearSimultaneousVideoEnabled:{-[CAMAnalyticsCaptureEvent _captureVideoConfiguration](self, "_captureVideoConfiguration"), -[CAMAnalyticsCaptureEvent _videoStabilizationStrength](self, "_videoStabilizationStrength"), 0}];

  if ((v8 & 1) != 0 || v10)
  {
    if (a3 > 2)
    {
      v11 = 0;
    }

    else
    {
      v11 = off_1E76FE560[a3];
    }

    v12 = [(CAMAnalyticsEvent *)self _eventMap];
    [v12 setObject:v11 forKeyedSubscript:@"frontFacingZoom"];

    if (a4 > 7)
    {
      v13 = 0;
    }

    else
    {
      v13 = off_1E76FE578[a4];
    }

    v14 = [(CAMAnalyticsEvent *)self _eventMap];
    [v14 setObject:v13 forKeyedSubscript:@"zoomInteractionType"];
  }
}

- (void)populateExposureSliderBias:(float)a3 exposureTapAndBias:(float)a4 totalExposureBias:(float)a5
{
  v9 = +[CAMCaptureCapabilities capabilities];
  v10 = [v9 isTapAndBiasSupportedForMode:{-[CAMAnalyticsCaptureEvent _captureMode](self, "_captureMode")}];

  if (v10)
  {
    *&v11 = a4;
    v12 = [MEMORY[0x1E696AD98] numberWithFloat:v11];
    v13 = [(CAMAnalyticsEvent *)self _eventMap];
    [v13 setObject:v12 forKeyedSubscript:@"exposureTapAndBias"];

    LODWORD(v14) = -4.0;
    LODWORD(v15) = 4.0;
    *&v16 = a4;
    v17 = [(CAMAnalyticsCaptureEvent *)self _defaultRangeStringForValue:v16 lowerBound:v14 upperBound:v15 defaultValue:0.0];
    v18 = [(CAMAnalyticsEvent *)self _eventMap];
    [v18 setObject:v17 forKeyedSubscript:@"exposureTapAndBiasRange"];
  }

  v19 = +[CAMCaptureCapabilities capabilities];
  v20 = [v19 isExposureSliderSupportedForMode:{-[CAMAnalyticsCaptureEvent _captureMode](self, "_captureMode")}];

  if (v20)
  {
    *&v21 = a3;
    v22 = [MEMORY[0x1E696AD98] numberWithFloat:v21];
    v23 = [(CAMAnalyticsEvent *)self _eventMap];
    [v23 setObject:v22 forKeyedSubscript:@"exposureSliderBias"];

    *&v24 = a5;
    v25 = [MEMORY[0x1E696AD98] numberWithFloat:v24];
    v26 = [(CAMAnalyticsEvent *)self _eventMap];
    [v26 setObject:v25 forKeyedSubscript:@"exposureTotalBias"];

    LODWORD(v27) = -2.0;
    LODWORD(v28) = 2.0;
    *&v29 = a3;
    v30 = [(CAMAnalyticsCaptureEvent *)self _defaultRangeStringForValue:v29 lowerBound:v27 upperBound:v28 defaultValue:0.0];
    v31 = [(CAMAnalyticsEvent *)self _eventMap];
    [v31 setObject:v30 forKeyedSubscript:@"exposureSliderBiasRange"];

    LODWORD(v32) = -4.0;
    LODWORD(v33) = 4.0;
    *&v34 = a5;
    v36 = [(CAMAnalyticsCaptureEvent *)self _defaultRangeStringForValue:v34 lowerBound:v32 upperBound:v33 defaultValue:0.0];
    v35 = [(CAMAnalyticsEvent *)self _eventMap];
    [v35 setObject:v36 forKeyedSubscript:@"exposureTotalBiasRange"];
  }
}

- (void)populateDesiredFlashMode:(int64_t)a3 desiredLivePhotoMode:(int64_t)a4 desiredHDRMode:(int64_t)a5 timerDuration:(int64_t)a6
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
    if (a3 > 2)
    {
      v20 = 0;
    }

    else
    {
      v20 = off_1E76FE628[a3];
    }

    v21 = [(CAMAnalyticsEvent *)self _eventMap];
    [v21 setObject:v20 forKeyedSubscript:@"desiredFlashMode"];

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

  if (a4 > 2)
  {
    v22 = 0;
  }

  else
  {
    v22 = off_1E76FE628[a4];
  }

  v23 = [(CAMAnalyticsEvent *)self _eventMap];
  [v23 setObject:v22 forKeyedSubscript:@"desiredLivePhotoMode"];

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
  if (a5 != 1)
  {
    v24 = 0;
  }

  if (!a5)
  {
    v24 = @"Off";
  }

  v25 = v24;
  v26 = [(CAMAnalyticsEvent *)self _eventMap];
  [v26 setObject:v25 forKeyedSubscript:@"desiredHDRMode"];

  if (v18)
  {
LABEL_6:
    if (a6 > 3)
    {
      v19 = 0;
    }

    else
    {
      v19 = off_1E76FE5B8[a6];
    }

    v27 = [(CAMAnalyticsEvent *)self _eventMap];
    [v27 setObject:v19 forKeyedSubscript:@"timerDuration"];
  }
}

- (void)populateDesiredMacroMode:(int64_t)a3 isMacroCapture:(BOOL)a4 isMacroSuggested:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = +[CAMCaptureCapabilities capabilities];
  v9 = [v8 isSuperWideAutoMacroSupportedForMode:-[CAMAnalyticsCaptureEvent _captureMode](self device:"_captureMode") videoConfiguration:-[CAMAnalyticsCaptureEvent _captureDevice](self videoStabilizationStrength:"_captureDevice") frontRearSimultaneousVideoEnabled:{-[CAMAnalyticsCaptureEvent _captureVideoConfiguration](self, "_captureVideoConfiguration"), -[CAMAnalyticsCaptureEvent _videoStabilizationStrength](self, "_videoStabilizationStrength"), 0}];

  v10 = +[CAMUserPreferences preferences];
  v11 = [v10 isSuperWideAutoMacroControlAllowed];

  if (v9)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithBool:v6];
    v13 = [(CAMAnalyticsEvent *)self _eventMap];
    [v13 setObject:v12 forKeyedSubscript:@"isMacroCapture"];

    if (v5)
    {
      v14 = @"ButtonOff";
      if (v6)
      {
        v14 = @"ButtonOn";
      }

      if (v11)
      {
        v15 = v14;
      }

      else
      {
        v15 = @"AutoOn";
      }

      v16 = [(CAMAnalyticsEvent *)self _eventMap];
      [v16 setObject:v15 forKeyedSubscript:@"macroBehavior"];
    }
  }
}

- (void)populateDesiredNightModeControlMode:(unint64_t)a3 resolvedNightModeControlMode:(unint64_t)a4 resolvedNightMode:(int64_t)a5 nightModeStatus:(int64_t)a6
{
  if (![(CAMAnalyticsCaptureEvent *)self _isStillDuringVideo])
  {
    v11 = +[CAMCaptureCapabilities capabilities];
    v12 = [v11 isNightModeSupportedForMode:-[CAMAnalyticsCaptureEvent _captureMode](self device:{"_captureMode"), -[CAMAnalyticsCaptureEvent _captureDevice](self, "_captureDevice")}];

    if (v12)
    {
      if (a3 > 2)
      {
        v13 = 0;
      }

      else
      {
        v13 = off_1E76FE5D8[a3];
      }

      v14 = [(CAMAnalyticsEvent *)self _eventMap];
      [v14 setObject:v13 forKeyedSubscript:@"desiredNightModeControlMode"];

      if (a4 > 2)
      {
        v15 = 0;
      }

      else
      {
        v15 = off_1E76FE5D8[a4];
      }

      v16 = [(CAMAnalyticsEvent *)self _eventMap];
      [v16 setObject:v15 forKeyedSubscript:@"resolvedNightModeControlMode"];

      if (a5 > 2)
      {
        v17 = 0;
      }

      else
      {
        v17 = off_1E76FE5F0[a5];
      }

      v18 = [(CAMAnalyticsEvent *)self _eventMap];
      [v18 setObject:v17 forKeyedSubscript:@"resolvedLowLightMode"];

      if ((a6 + 1) > 3)
      {
        v19 = 0;
      }

      else
      {
        v19 = off_1E76FE608[a6 + 1];
      }

      v20 = [(CAMAnalyticsEvent *)self _eventMap];
      [v20 setObject:v19 forKeyedSubscript:@"nightModeStatus"];
    }
  }
}

- (void)populateDesiredTorchMode:(int64_t)a3
{
  if (![(CAMAnalyticsCaptureEvent *)self _isStillDuringVideo])
  {
    v5 = +[CAMCaptureCapabilities capabilities];
    v6 = [v5 isTorchSupportedForMode:-[CAMAnalyticsCaptureEvent _captureMode](self devicePosition:{"_captureMode"), -[CAMAnalyticsCaptureEvent _captureDevicePosition](self, "_captureDevicePosition")}];

    if (v6)
    {
      if (a3 > 2)
      {
        v7 = 0;
      }

      else
      {
        v7 = off_1E76FE628[a3];
      }

      v8 = [(CAMAnalyticsEvent *)self _eventMap];
      [v8 setObject:v7 forKeyedSubscript:@"desiredTorchMode"];
    }
  }
}

- (void)populatePortraitStatus:(int64_t)a3 lightingEffectIntensity:(double)a4 apertureValue:(double)a5 zoomFactor:(double)a6 isDepthSuggestionAllowed:(BOOL)a7 request:(id)a8
{
  v8 = a7;
  v63 = a8;
  v14 = [(CAMAnalyticsCaptureEvent *)self _captureMode];
  v15 = v14;
  if ((v14 - 6) >= 2)
  {
    if (v14 || !v8)
    {
      goto LABEL_26;
    }

    if (a3 > 0xF)
    {
      v17 = 0;
    }

    else
    {
      v17 = off_1E76FE640[a3];
    }

    v19 = [(CAMAnalyticsEvent *)self _eventMap];
    [v19 setObject:v17 forKeyedSubscript:@"portraitStatus"];
  }

  else
  {
    if (a3 > 0xF)
    {
      v16 = 0;
    }

    else
    {
      v16 = off_1E76FE640[a3];
    }

    v18 = [(CAMAnalyticsEvent *)self _eventMap];
    [v18 setObject:v16 forKeyedSubscript:@"portraitStatus"];

    if (!v8)
    {
      goto LABEL_20;
    }
  }

  if (![v63 type])
  {
    v20 = v63;
    v21 = [v20 adjustmentFilters];
    v22 = [CAMEffectFilterManager isDepthEffectInFilters:v21];

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

    v24 = [(CAMAnalyticsEvent *)self _eventMap];
    [v24 setObject:v23 forKeyedSubscript:@"portraitInPhotoMode"];
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

    v37 = [MEMORY[0x1E696AD98] numberWithDouble:a4];
    v38 = [(CAMAnalyticsEvent *)self _eventMap];
    [v38 setObject:v37 forKeyedSubscript:@"lightingEffectIntensity"];

    *&v39 = a4;
    *&v40 = v30;
    *&v41 = v33;
    *&v42 = v36;
    v25 = [(CAMAnalyticsCaptureEvent *)self _defaultRangeStringForValue:v39 lowerBound:v40 upperBound:v41 defaultValue:v42];
    v43 = [(CAMAnalyticsEvent *)self _eventMap];
    [v43 setObject:v25 forKeyedSubscript:@"lightingEffectIntensityRange"];
  }

LABEL_24:
  v44 = +[CAMCaptureCapabilities capabilities];
  v45 = [v44 isDepthEffectApertureSupportedForMode:v15 devicePosition:-[CAMAnalyticsCaptureEvent _captureDevicePosition](self depthSuggestionEnabled:{"_captureDevicePosition"), v8}];

  if (v45)
  {
    v46 = +[CAMCaptureCapabilities capabilities];
    [v46 minimumDepthEffectApertureForMode:v15 device:{-[CAMAnalyticsCaptureEvent _captureDevice](self, "_captureDevice")}];
    v48 = v47;

    v49 = +[CAMCaptureCapabilities capabilities];
    [v49 maximumDepthEffectApertureForMode:v15 device:{-[CAMAnalyticsCaptureEvent _captureDevice](self, "_captureDevice")}];
    v51 = v50;

    v52 = +[CAMCaptureCapabilities capabilities];
    [v52 defaultDepthEffectApertureForMode:v15 device:-[CAMAnalyticsCaptureEvent _captureDevice](self zoomFactor:{"_captureDevice"), a6}];
    v54 = v53;

    v55 = [MEMORY[0x1E696AD98] numberWithDouble:a5];
    v56 = [(CAMAnalyticsEvent *)self _eventMap];
    [v56 setObject:v55 forKeyedSubscript:@"apertureValue"];

    *&v57 = a5;
    *&v58 = v48;
    *&v59 = v51;
    *&v60 = v54;
    v61 = [(CAMAnalyticsCaptureEvent *)self _defaultRangeStringForValue:v57 lowerBound:v58 upperBound:v59 defaultValue:v60];
    v62 = [(CAMAnalyticsEvent *)self _eventMap];
    [v62 setObject:v61 forKeyedSubscript:@"apertureRange"];
  }

LABEL_26:
}

- (void)populateDuration:(double)a3
{
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:vcvtpd_s64_f64(a3)];
  v6 = [(CAMAnalyticsEvent *)self _eventMap];
  [v6 setObject:v5 forKeyedSubscript:@"duration"];

  v8 = [objc_opt_class() durationRangeStringForDuration:a3];
  v7 = [(CAMAnalyticsEvent *)self _eventMap];
  [v7 setObject:v8 forKeyedSubscript:@"durationRange"];
}

- (void)populateBurstLength:(int64_t)a3
{
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v4 = [(CAMAnalyticsEvent *)self _eventMap];
  [v4 setObject:v5 forKeyedSubscript:@"burstLength"];
}

- (void)populateObjectResultsWithNumberOfFaces:(unint64_t)a3 numberOfCats:(unint64_t)a4 numberOfDogs:(unint64_t)a5
{
  [objc_opt_class() bucketedPowerOf2ForValue:1 allowZero:a3 minPositiveValue:1.0 maxValue:10.0];
  v9 = v8;
  [objc_opt_class() bucketedPowerOf2ForValue:1 allowZero:a4 minPositiveValue:1.0 maxValue:2.0];
  v11 = v10;
  [objc_opt_class() bucketedPowerOf2ForValue:1 allowZero:a5 minPositiveValue:1.0 maxValue:2.0];
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
  v16 = [(CAMAnalyticsEvent *)self _eventMap];
  [v16 setObject:v14 forKeyedSubscript:@"numberOfFaces"];

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
  v19 = [(CAMAnalyticsEvent *)self _eventMap];
  [v19 setObject:v17 forKeyedSubscript:@"numberOfCats"];

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

  v20 = [(CAMAnalyticsEvent *)self _eventMap];
  [v20 setObject:v21 forKeyedSubscript:@"numberOfDogs"];

  if (v18)
  {
  }
}

- (void)populateSharedLibraryMode:(int64_t)a3
{
  v5 = +[CAMUserPreferences preferences];
  v6 = [v5 sharedLibraryEnabled];

  if (v6)
  {
    if (a3 > 5)
    {
      v7 = 0;
    }

    else
    {
      v7 = off_1E76FE6C0[a3];
    }

    v8 = [(CAMAnalyticsEvent *)self _eventMap];
    [v8 setObject:v7 forKeyedSubscript:@"sharedLibraryMode"];

    v11 = +[CAMUserPreferences preferences];
    if ([v11 sharedLibraryAutoBehaviorEnabled])
    {
      v9 = @"Auto";
    }

    else
    {
      v9 = @"Manual";
    }

    v10 = [(CAMAnalyticsEvent *)self _eventMap];
    [v10 setObject:v9 forKeyedSubscript:@"sharedLibrarySetting"];
  }
}

- (void)populateDeviceOrientation:(int64_t)a3 isDeviceOrientationLocked:(BOOL)a4
{
  v4 = a4;
  if (a3 >= 7)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unexpected:%ld", a3];
  }

  else
  {
    v6 = off_1E76FE6F0[a3];
  }

  v7 = [(CAMAnalyticsEvent *)self _eventMap];
  [v7 setObject:v6 forKeyedSubscript:@"deviceOrientation"];

  v9 = [MEMORY[0x1E696AD98] numberWithBool:v4];
  v8 = [(CAMAnalyticsEvent *)self _eventMap];
  [v8 setObject:v9 forKeyedSubscript:@"deviceOrientationLocked"];
}

- (void)trackFrontRearSimultaneousVideoPIPMoveToAnchor:(int64_t)a3
{
  v5 = [(CAMAnalyticsCaptureEvent *)self _trackedFrontRearSimultaneousVideoAnchors];
  v6 = [v5 count];

  if (v6)
  {
    [(CAMAnalyticsCaptureEvent *)self set_frontRearSimultaneousVideoPIPInteractionCount:[(CAMAnalyticsCaptureEvent *)self _frontRearSimultaneousVideoPIPInteractionCount]+ 1];
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:{-[CAMAnalyticsCaptureEvent _frontRearSimultaneousVideoPIPInteractionCount](self, "_frontRearSimultaneousVideoPIPInteractionCount")}];
    v8 = [(CAMAnalyticsEvent *)self _eventMap];
    [v8 setObject:v7 forKeyedSubscript:@"frontRearVideoPIPInteractionCount"];
  }

  else
  {
    v7 = [(CAMAnalyticsEvent *)self _eventMap];
    [v7 setObject:&unk_1F16C8708 forKeyedSubscript:@"frontRearVideoPIPInteractionCount"];
  }

  [(CAMAnalyticsCaptureEvent *)self _trackAnchor:a3];
}

- (void)_trackAnchor:(int64_t)a3
{
  if (a3 <= 3)
  {
    v4 = off_1E76FE728[a3];
    v5 = [(CAMAnalyticsCaptureEvent *)self _trackedFrontRearSimultaneousVideoAnchors];
    [v5 addObject:v4];
  }

  v6 = [(CAMAnalyticsCaptureEvent *)self _trackedFrontRearSimultaneousVideoAnchors];
  v7 = [v6 allObjects];
  v10 = [v7 sortedArrayUsingSelector:sel_localizedCaseInsensitiveCompare_];

  v8 = [v10 componentsJoinedByString:{@", "}];
  v9 = [(CAMAnalyticsEvent *)self _eventMap];
  [v9 setObject:v8 forKeyedSubscript:@"frontRearVideoPIPAnchors"];
}

- (id)_defaultRangeStringForValue:(float)a3 lowerBound:(float)a4 upperBound:(float)a5 defaultValue:(float)a6
{
  v6 = a3;
  if (a4 + 0.01 >= v6)
  {
    return @"Min";
  }

  v7 = a6;
  if (v7 + -0.01 > v6)
  {
    return @"Low";
  }

  if (v7 + 0.01 >= v6)
  {
    return @"Default";
  }

  if (a5 + -0.01 <= v6)
  {
    return @"Max";
  }

  return @"High";
}

- (id)_zoomRangeStringForDisplayZoomValue:(double)a3 zoomPoints:(id)a4 mode:(int64_t)a5 device:(int64_t)a6
{
  v51 = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = +[CAMCaptureCapabilities capabilities];
  v12 = v11;
  if ((a6 - 1) > 0xA)
  {
    v13 = 0;
  }

  else
  {
    v13 = qword_1A3A6AC78[a6 - 1];
  }

  v14 = [v11 isSuperWideSupportedForDevicePosition:v13];
  v15 = [v12 isTelephotoSupportedForDevicePosition:v13];
  [v12 superWideDisplayZoomFactor];
  v17 = v16;
  [v12 wideDisplayZoomFactor];
  v19 = v18;
  [v12 telephotoDisplayZoomFactor];
  v21 = v20;
  v22 = [v12 isQuadraWideZoomButtonSupportedForMode:a5 devicePosition:v13 videoConfiguration:{-[CAMAnalyticsCaptureEvent _captureVideoConfiguration](self, "_captureVideoConfiguration")}];
  [v12 quadraWideDisplayZoomFactor];
  v24 = v23;
  v25 = [v12 isQuadraTeleZoomButtonSupportedForMode:a5 devicePosition:v13 videoConfiguration:{-[CAMAnalyticsCaptureEvent _captureVideoConfiguration](self, "_captureVideoConfiguration")}];
  [v12 quadraTeleDisplayZoomFactor];
  v27 = v26;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v28 = v10;
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
          if (vabdd_f64(a3, v34) < 0.001)
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

  if (v19 == a3)
  {
    v35 = @"Wide";
  }

  else
  {
    if (v24 == a3)
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
      if (v27 == a3)
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
        if (v19 <= a3)
        {
          v41 = @">Wide";
          v42 = @"Wide-Telephoto";
          v45 = @">Telephoto";
          if (v21 == a3)
          {
            v45 = @"Telephoto";
          }

          if (v21 <= a3)
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
          if (v17 == a3)
          {
            v43 = @"UltraWide";
          }

          if (v17 <= a3)
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