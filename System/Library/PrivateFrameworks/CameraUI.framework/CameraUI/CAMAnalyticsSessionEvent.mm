@interface CAMAnalyticsSessionEvent
+ (id)_bucketCaptureCount:(id)count;
+ (void)_incrementDictionaryCount:(id)count forKey:(id)key;
- (BOOL)_launchEventWithinReasonableTimeInterval;
- (CAMAnalyticsSessionEvent)initWithCapabilities:(id)capabilities availableCaptureModes:(id)modes currentCaptureMode:(int64_t)mode currentCaptureDevice:(int64_t)device callStatusMonitor:(id)monitor;
- (id)_bucketCaptureCountForMediaType:(int64_t)type;
- (id)_bucketCaptureCountForMode:(int64_t)mode;
- (id)_stringForSmudgeDetectionDevicePosition:(int64_t)position;
- (int64_t)_resolveSmudgeDetectionDevicePosition:(int64_t)position forDevicePosition:(int64_t)devicePosition;
- (void)_endSession;
- (void)_handleCallStatusMonitorDidChangeCallActive:(id)active;
- (void)_incrementCaptureForGraphConfiguration:(id)configuration analyticsMediaType:(int64_t)type;
- (void)countEventsFromAnalyticsVisionSession:(id)session;
- (void)didCaptureWithRequest:(id)request currentConfiguration:(id)configuration;
- (void)didChangePortraitLighting;
- (void)didDetectSmudgedLensForDevicePosition:(int64_t)position didNotifyUser:(BOOL)user;
- (void)didDismissCameraRoll;
- (void)didFocusInteraction;
- (void)didFocusLockInteraction;
- (void)didPresentCameraRoll;
- (void)didPresentControlDrawerForReason:(int64_t)reason;
- (void)didPrewarmWithReason:(id)reason;
- (void)didStartPreview;
- (void)didZoomInteraction:(int64_t)interaction;
- (void)publish;
- (void)setFirstConfiguredCaptureMode:(int64_t)mode captureDevice:(int64_t)device;
- (void)updateForLocationController:(id)controller;
@end

@implementation CAMAnalyticsSessionEvent

- (CAMAnalyticsSessionEvent)initWithCapabilities:(id)capabilities availableCaptureModes:(id)modes currentCaptureMode:(int64_t)mode currentCaptureDevice:(int64_t)device callStatusMonitor:(id)monitor
{
  capabilitiesCopy = capabilities;
  modesCopy = modes;
  monitorCopy = monitor;
  v29.receiver = self;
  v29.super_class = CAMAnalyticsSessionEvent;
  v16 = [(CAMAnalyticsEvent *)&v29 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->__capabilities, capabilities);
    v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
    captureCountsByMode = v17->__captureCountsByMode;
    v17->__captureCountsByMode = v18;

    v20 = objc_alloc_init(MEMORY[0x1E695DF90]);
    captureCountsByMediaType = v17->__captureCountsByMediaType;
    v17->__captureCountsByMediaType = v20;

    v17->__cameraRollInteraction = 0;
    v17->__startTime = CFAbsoluteTimeGetCurrent();
    hostProcess = [capabilitiesCopy hostProcess];
    v23 = 0;
    if (hostProcess <= 5)
    {
      v23 = off_1E76FE058[hostProcess];
    }

    hostProcess = v17->__hostProcess;
    v17->__hostProcess = &v23->isa;

    v25 = +[CAMUserPreferences preferences];
    v17->__textDetectionEnabled = [v25 isImageAnalysisEnabled];

    v26 = +[CAMUserPreferences preferences];
    v17->__mrcDetectionEnabled = [v26 shouldShowQRBanners];

    objc_storeStrong(&v17->__availableCaptureModes, modes);
    v17->__firstConfiguredMode = mode;
    v17->__firstConfiguredDevice = device;
    objc_storeStrong(&v17->__callStatusMonitor, monitor);
    if ([monitorCopy isCallActive])
    {
      [(CAMAnalyticsSessionEvent *)v17 set_hadActiveCall:1];
    }

    v27 = +[CAMPriorityNotificationCenter defaultCenter];
    [v27 addObserver:v17 selector:sel__handleCallStatusMonitorDidChangeCallActive_ name:@"CAMCallStatusMonitorDidChangeCallActiveNotification" object:0];
  }

  return v17;
}

- (void)_endSession
{
  _eventMap = [(CAMAnalyticsEvent *)self _eventMap];
  _hostProcess = [(CAMAnalyticsSessionEvent *)self _hostProcess];
  [_eventMap setObject:_hostProcess forKeyedSubscript:@"hostProcess"];

  Current = CFAbsoluteTimeGetCurrent();
  [(CAMAnalyticsSessionEvent *)self _startTime];
  v6 = Current - v5;
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:v6];
  [_eventMap setObject:v7 forKeyedSubscript:@"totalDuration"];

  if ([(CAMAnalyticsSessionEvent *)self _isInCameraRoll])
  {
    [(CAMAnalyticsSessionEvent *)self didDismissCameraRoll];
  }

  _firstCaptureMode = [(CAMAnalyticsSessionEvent *)self _firstCaptureMode];
  [_eventMap setObject:_firstCaptureMode forKeyedSubscript:@"firstCaptureMode"];

  _firstCaptureDevicePosition = [(CAMAnalyticsSessionEvent *)self _firstCaptureDevicePosition];
  [_eventMap setObject:_firstCaptureDevicePosition forKeyedSubscript:@"firstCaptureDevice"];

  [(CAMAnalyticsSessionEvent *)self _cameraRollTotalTime];
  if (v10 > 0.0)
  {
    v11 = MEMORY[0x1E696AD98];
    [(CAMAnalyticsSessionEvent *)self _cameraRollTotalTime];
    v12 = [v11 numberWithDouble:?];
    [_eventMap setObject:v12 forKeyedSubscript:@"totalCameraRollDuration"];
  }

  v13 = MEMORY[0x1E696AD98];
  [(CAMAnalyticsSessionEvent *)self _cameraRollTotalTime];
  v15 = [v13 numberWithDouble:v6 - v14];
  [_eventMap setObject:v15 forKeyedSubscript:@"totalCameraDuration"];

  [(CAMAnalyticsSessionEvent *)self _previewStartTime];
  if (v16 > 0.0)
  {
    [(CAMAnalyticsSessionEvent *)self _previewStartTime];
    v18 = v17;
    [(CAMAnalyticsSessionEvent *)self _startTime];
    v20 = [MEMORY[0x1E696AD98] numberWithDouble:v18 - v19];
    [_eventMap setObject:v20 forKeyedSubscript:@"timeToPreview"];
  }

  if ([(CAMAnalyticsSessionEvent *)self _cameraRollInteraction])
  {
    _cameraRollInteraction = [(CAMAnalyticsSessionEvent *)self _cameraRollInteraction];
    if (_cameraRollInteraction > 3)
    {
      v22 = 0;
    }

    else
    {
      v22 = off_1E76FE088[_cameraRollInteraction];
    }

    [_eventMap setObject:v22 forKeyedSubscript:@"didInteractWithCameraRoll"];
  }

  if ([(CAMAnalyticsSessionEvent *)self _totalCaptures])
  {
    [(CAMAnalyticsSessionEvent *)self _firstCaptureStartTime];
    v24 = v23;
    [(CAMAnalyticsSessionEvent *)self _startTime];
    v26 = [MEMORY[0x1E696AD98] numberWithDouble:v24 - v25];
    [_eventMap setObject:v26 forKeyedSubscript:@"timeToFirstCapture"];
  }

  v27 = 1;
  v28 = [(CAMAnalyticsSessionEvent *)self _bucketCaptureCountForMode:1];
  [_eventMap setObject:v28 forKeyedSubscript:@"captureCountVideoMode"];

  v29 = [(CAMAnalyticsSessionEvent *)self _bucketCaptureCountForMode:0];
  [_eventMap setObject:v29 forKeyedSubscript:@"captureCountPhotoMode"];

  v30 = [(CAMAnalyticsSessionEvent *)self _bucketCaptureCountForMode:4];
  [_eventMap setObject:v30 forKeyedSubscript:@"captureCountSquareMode"];

  v31 = [(CAMAnalyticsSessionEvent *)self _bucketCaptureCountForMode:2];
  [_eventMap setObject:v31 forKeyedSubscript:@"captureCountSlomoMode"];

  v32 = [(CAMAnalyticsSessionEvent *)self _bucketCaptureCountForMode:6];
  [_eventMap setObject:v32 forKeyedSubscript:@"captureCountPortraitMode"];

  v33 = [(CAMAnalyticsSessionEvent *)self _bucketCaptureCountForMode:7];
  [_eventMap setObject:v33 forKeyedSubscript:@"captureCountCinematicMode"];

  v34 = [(CAMAnalyticsSessionEvent *)self _bucketCaptureCountForMode:3];
  [_eventMap setObject:v34 forKeyedSubscript:@"captureCountPanoramaMode"];

  v35 = [(CAMAnalyticsSessionEvent *)self _bucketCaptureCountForMode:5];
  [_eventMap setObject:v35 forKeyedSubscript:@"captureCountTimelapseMode"];

  v36 = [(CAMAnalyticsSessionEvent *)self _bucketCaptureCountForMode:8];
  [_eventMap setObject:v36 forKeyedSubscript:@"captureCountSpatialVideoMode"];

  v37 = [(CAMAnalyticsSessionEvent *)self _bucketCaptureCountForMode:9];
  [_eventMap setObject:v37 forKeyedSubscript:@"captureCountSpatialPhotoMode"];

  v38 = [(CAMAnalyticsSessionEvent *)self _bucketCaptureCountForMediaType:1];
  [_eventMap setObject:v38 forKeyedSubscript:@"mediaTypeCountVideo"];

  v39 = [(CAMAnalyticsSessionEvent *)self _bucketCaptureCountForMediaType:0];
  [_eventMap setObject:v39 forKeyedSubscript:@"mediaTypeCountPhoto"];

  v40 = objc_opt_class();
  v41 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[CAMAnalyticsSessionEvent _totalCaptures](self, "_totalCaptures")}];
  v42 = [v40 _bucketCaptureCount:v41];
  [_eventMap setObject:v42 forKeyedSubscript:@"captureCountTotal"];

  v43 = [MEMORY[0x1E696AD98] numberWithInt:{-[CAMAnalyticsSessionEvent _totalCaptures](self, "_totalCaptures") != 0}];
  [_eventMap setObject:v43 forKeyedSubscript:@"didCapture"];

  v44 = [MEMORY[0x1E696AD98] numberWithInt:{-[CAMAnalyticsSessionEvent _totalZoomInteractions](self, "_totalZoomInteractions") != 0}];
  [_eventMap setObject:v44 forKeyedSubscript:@"didZoom"];

  v45 = MEMORY[0x1E696AD98];
  if (![(CAMAnalyticsSessionEvent *)self _totalFocusInteractions])
  {
    v27 = [(CAMAnalyticsSessionEvent *)self _totalFocusLockInteractions]!= 0;
  }

  v46 = [v45 numberWithInt:v27];
  [_eventMap setObject:v46 forKeyedSubscript:@"didTapToFocus"];

  _capabilities = [(CAMAnalyticsSessionEvent *)self _capabilities];
  arePortraitEffectsSupported = [_capabilities arePortraitEffectsSupported];

  if (arePortraitEffectsSupported)
  {
    v49 = [MEMORY[0x1E696AD98] numberWithInt:{-[CAMAnalyticsSessionEvent _totalPortraitLightingChanges](self, "_totalPortraitLightingChanges") != 0}];
    [_eventMap setObject:v49 forKeyedSubscript:@"didChangePortraitLighting"];
  }

  if ([(CAMAnalyticsSessionEvent *)self _textDetectionEnabled])
  {
    v50 = [MEMORY[0x1E696AD98] numberWithInt:{-[CAMAnalyticsSessionEvent _totalTextInteractions](self, "_totalTextInteractions") != 0}];
    [_eventMap setObject:v50 forKeyedSubscript:@"didInteractWithText"];
  }

  if ([(CAMAnalyticsSessionEvent *)self _mrcDetectionEnabled])
  {
    v51 = [MEMORY[0x1E696AD98] numberWithInt:{-[CAMAnalyticsSessionEvent _totalMRCInteractions](self, "_totalMRCInteractions") != 0}];
    [_eventMap setObject:v51 forKeyedSubscript:@"didInteractWithMRC"];
  }

  _capabilities2 = [(CAMAnalyticsSessionEvent *)self _capabilities];
  hasSystemTelephonyOfAnyKind = [_capabilities2 hasSystemTelephonyOfAnyKind];

  if (hasSystemTelephonyOfAnyKind)
  {
    v54 = [MEMORY[0x1E696AD98] numberWithBool:{-[CAMAnalyticsSessionEvent _hadActiveCall](self, "_hadActiveCall")}];
    [_eventMap setObject:v54 forKeyedSubscript:@"hadActiveCall"];
  }

  v55 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[CAMAnalyticsSessionEvent _totalControlDrawerOpenings](self, "_totalControlDrawerOpenings")}];
  [_eventMap setObject:v55 forKeyedSubscript:@"totalControlDrawerOpenings"];

  _prewarmLaunchReason = [(CAMAnalyticsSessionEvent *)self _prewarmLaunchReason];

  if (_prewarmLaunchReason)
  {
    _prewarmLaunchReason2 = [(CAMAnalyticsSessionEvent *)self _prewarmLaunchReason];
    [_eventMap setObject:_prewarmLaunchReason2 forKeyedSubscript:@"launchMethod"];
  }

  _firstConfiguredDevice = [(CAMAnalyticsSessionEvent *)self _firstConfiguredDevice];
  if (_firstConfiguredDevice > 0xB)
  {
    v59 = 0;
  }

  else
  {
    v59 = off_1E76FE0A8[_firstConfiguredDevice];
  }

  [_eventMap setObject:v59 forKeyedSubscript:@"firstConfiguredDevice"];
  _firstConfiguredMode = [(CAMAnalyticsSessionEvent *)self _firstConfiguredMode];
  if (_firstConfiguredMode > 9)
  {
    v61 = 0;
  }

  else
  {
    v61 = off_1E76FE108[_firstConfiguredMode];
  }

  [_eventMap setObject:v61 forKeyedSubscript:@"firstConfiguredMode"];
  if ([(CAMAnalyticsSessionEvent *)self _smudgeDetectionStatus])
  {
    v62 = [(CAMAnalyticsSessionEvent *)self _stringForSmudgeDetectionDevicePosition:[(CAMAnalyticsSessionEvent *)self _smudgeDetectionStatus]];
    [_eventMap setObject:v62 forKeyedSubscript:@"smudgeDetectionStatus"];
  }

  if ([(CAMAnalyticsSessionEvent *)self _smudgeDetectionUserNotificationStatus])
  {
    v63 = [(CAMAnalyticsSessionEvent *)self _stringForSmudgeDetectionDevicePosition:[(CAMAnalyticsSessionEvent *)self _smudgeDetectionUserNotificationStatus]];
    [_eventMap setObject:v63 forKeyedSubscript:@"smudgeDetectionUserNotification"];
  }

  v64 = +[CAMPriorityNotificationCenter defaultCenter];
  [v64 removeObserver:self];
}

- (void)didStartPreview
{
  [(CAMAnalyticsSessionEvent *)self _previewStartTime];
  if (v3 == 0.0)
  {
    Current = CFAbsoluteTimeGetCurrent();

    [(CAMAnalyticsSessionEvent *)self set_previewStartTime:Current];
  }
}

- (void)didPresentCameraRoll
{
  [(CAMAnalyticsSessionEvent *)self _setInCameraRoll:1];
  Current = CFAbsoluteTimeGetCurrent();

  [(CAMAnalyticsSessionEvent *)self set_cameraRollStartTime:Current];
}

- (void)didDismissCameraRoll
{
  if (![(CAMAnalyticsSessionEvent *)self _isInCameraRoll])
  {
    return;
  }

  [(CAMAnalyticsSessionEvent *)self _setInCameraRoll:0];
  Current = CFAbsoluteTimeGetCurrent();
  [(CAMAnalyticsSessionEvent *)self _cameraRollStartTime];
  v5 = Current - v4;
  [(CAMAnalyticsSessionEvent *)self _cameraRollTotalTime];
  [(CAMAnalyticsSessionEvent *)self set_cameraRollTotalTime:v6 + v5];
  _cameraRollInteraction = [(CAMAnalyticsSessionEvent *)self _cameraRollInteraction];
  if (_cameraRollInteraction)
  {
    v8 = _cameraRollInteraction;
    if (_cameraRollInteraction != 1)
    {
      goto LABEL_10;
    }

    v9 = 3;
  }

  else
  {
    v9 = 2;
  }

  if ([(CAMAnalyticsSessionEvent *)self _totalCaptures])
  {
    v8 = v9;
  }

  else
  {
    v8 = 1;
  }

LABEL_10:

  [(CAMAnalyticsSessionEvent *)self set_cameraRollInteraction:v8];
}

+ (void)_incrementDictionaryCount:(id)count forKey:(id)key
{
  countCopy = count;
  keyCopy = key;
  v6 = [countCopy objectForKeyedSubscript:keyCopy];
  v7 = v6;
  if (v6)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v6, "unsignedIntValue") + 1}];
    [countCopy setObject:v8 forKeyedSubscript:keyCopy];
  }

  else
  {
    [countCopy setObject:&unk_1F16C86C0 forKeyedSubscript:keyCopy];
  }
}

+ (id)_bucketCaptureCount:(id)count
{
  countCopy = count;
  v4 = objc_opt_class();
  [countCopy doubleValue];
  v6 = v5;

  [v4 bucketedPowerOf2ForValue:1 allowZero:v6 minPositiveValue:1.0 maxValue:1024.0];
  v7 = MEMORY[0x1E696AD98];

  return [v7 numberWithDouble:?];
}

- (id)_bucketCaptureCountForMediaType:(int64_t)type
{
  _captureCountsByMediaType = [(CAMAnalyticsSessionEvent *)self _captureCountsByMediaType];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  v6 = [_captureCountsByMediaType objectForKeyedSubscript:v5];

  v7 = [objc_opt_class() _bucketCaptureCount:v6];

  return v7;
}

- (id)_bucketCaptureCountForMode:(int64_t)mode
{
  _availableCaptureModes = [(CAMAnalyticsSessionEvent *)self _availableCaptureModes];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:mode];
  v7 = [_availableCaptureModes containsObject:v6];

  if (v7)
  {
    _captureCountsByMode = [(CAMAnalyticsSessionEvent *)self _captureCountsByMode];
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:mode];
    v10 = [_captureCountsByMode objectForKeyedSubscript:v9];

    v11 = [objc_opt_class() _bucketCaptureCount:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)_incrementCaptureForGraphConfiguration:(id)configuration analyticsMediaType:(int64_t)type
{
  mode = [configuration mode];
  v7 = objc_opt_class();
  _captureCountsByMode = [(CAMAnalyticsSessionEvent *)self _captureCountsByMode];
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:mode];
  [v7 _incrementDictionaryCount:_captureCountsByMode forKey:v9];

  v10 = objc_opt_class();
  _captureCountsByMediaType = [(CAMAnalyticsSessionEvent *)self _captureCountsByMediaType];
  v12 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  [v10 _incrementDictionaryCount:_captureCountsByMediaType forKey:v12];

  if (![(CAMAnalyticsSessionEvent *)self _totalCaptures])
  {
    [(CAMAnalyticsSessionEvent *)self set_firstCaptureStartTime:CFAbsoluteTimeGetCurrent()];
  }

  v13 = [(CAMAnalyticsSessionEvent *)self _totalCaptures]+ 1;

  [(CAMAnalyticsSessionEvent *)self set_totalCaptures:v13];
}

- (void)didCaptureWithRequest:(id)request currentConfiguration:(id)configuration
{
  requestCopy = request;
  configurationCopy = configuration;
  type = [requestCopy type];
  if (type == 1)
  {
    v8 = 1;
  }

  else if (type)
  {
    v8 = 0;
  }

  else
  {
    v8 = [requestCopy ctmCaptureType] == 2;
  }

  [(CAMAnalyticsSessionEvent *)self _incrementCaptureForGraphConfiguration:configurationCopy analyticsMediaType:v8];
  _firstCaptureMode = [(CAMAnalyticsSessionEvent *)self _firstCaptureMode];

  if (!_firstCaptureMode)
  {
    modeDescription = [configurationCopy modeDescription];
    [(CAMAnalyticsSessionEvent *)self set_firstCaptureMode:modeDescription];

    devicePositionDescription = [configurationCopy devicePositionDescription];
    [(CAMAnalyticsSessionEvent *)self set_firstCaptureDevicePosition:devicePositionDescription];
  }
}

- (void)didZoomInteraction:(int64_t)interaction
{
  v4 = [(CAMAnalyticsSessionEvent *)self _totalZoomInteractions]+ 1;

  [(CAMAnalyticsSessionEvent *)self set_totalZoomInteractions:v4];
}

- (void)didFocusInteraction
{
  v3 = [(CAMAnalyticsSessionEvent *)self _totalFocusInteractions]+ 1;

  [(CAMAnalyticsSessionEvent *)self set_totalFocusInteractions:v3];
}

- (void)didFocusLockInteraction
{
  v3 = [(CAMAnalyticsSessionEvent *)self _totalFocusLockInteractions]+ 1;

  [(CAMAnalyticsSessionEvent *)self set_totalFocusLockInteractions:v3];
}

- (void)didChangePortraitLighting
{
  v3 = [(CAMAnalyticsSessionEvent *)self _totalPortraitLightingChanges]+ 1;

  [(CAMAnalyticsSessionEvent *)self set_totalPortraitLightingChanges:v3];
}

- (void)didPresentControlDrawerForReason:(int64_t)reason
{
  if (reason != 2)
  {
    v5 = [(CAMAnalyticsSessionEvent *)self _totalControlDrawerOpenings]+ 1;

    [(CAMAnalyticsSessionEvent *)self set_totalControlDrawerOpenings:v5];
  }
}

- (void)countEventsFromAnalyticsVisionSession:(id)session
{
  sessionCopy = session;
  -[CAMAnalyticsSessionEvent set_totalMRCInteractions:](self, "set_totalMRCInteractions:", -[CAMAnalyticsSessionEvent _totalMRCInteractions](self, "_totalMRCInteractions") + [sessionCopy totalMRCInteractions]);
  totalTextInteractions = [sessionCopy totalTextInteractions];

  v6 = [(CAMAnalyticsSessionEvent *)self _totalTextInteractions]+ totalTextInteractions;

  [(CAMAnalyticsSessionEvent *)self set_totalTextInteractions:v6];
}

- (void)publish
{
  [(CAMAnalyticsSessionEvent *)self _endSession];
  v3.receiver = self;
  v3.super_class = CAMAnalyticsSessionEvent;
  [(CAMAnalyticsEvent *)&v3 publish];
}

- (void)_handleCallStatusMonitorDidChangeCallActive:(id)active
{
  _callStatusMonitor = [(CAMAnalyticsSessionEvent *)self _callStatusMonitor];
  isCallActive = [_callStatusMonitor isCallActive];

  if (isCallActive)
  {

    [(CAMAnalyticsSessionEvent *)self set_hadActiveCall:1];
  }
}

- (void)updateForLocationController:(id)controller
{
  if (controller)
  {
    lastKnownAuthorizationStatus = [controller lastKnownAuthorizationStatus];
    if (lastKnownAuthorizationStatus > 4)
    {
      v5 = 0;
    }

    else
    {
      v5 = off_1E76FE158[lastKnownAuthorizationStatus];
    }

    _eventMap = [(CAMAnalyticsEvent *)self _eventMap];
    [_eventMap setObject:v5 forKeyedSubscript:@"locationAuthorizationStatus"];
  }
}

- (BOOL)_launchEventWithinReasonableTimeInterval
{
  Current = CFAbsoluteTimeGetCurrent();
  [(CAMAnalyticsSessionEvent *)self _startTime];
  return Current - v4 < 0.2;
}

- (void)didPrewarmWithReason:(id)reason
{
  reasonCopy = reason;
  _prewarmLaunchReason = [(CAMAnalyticsSessionEvent *)self _prewarmLaunchReason];

  if (!_prewarmLaunchReason)
  {
    [(CAMAnalyticsSessionEvent *)self set_prewarmLaunchReason:reasonCopy];
  }
}

- (void)setFirstConfiguredCaptureMode:(int64_t)mode captureDevice:(int64_t)device
{
  if ([(CAMAnalyticsSessionEvent *)self _launchEventWithinReasonableTimeInterval])
  {
    [(CAMAnalyticsSessionEvent *)self set_firstConfiguredMode:mode];

    [(CAMAnalyticsSessionEvent *)self set_firstConfiguredDevice:device];
  }
}

- (void)didDetectSmudgedLensForDevicePosition:(int64_t)position didNotifyUser:(BOOL)user
{
  userCopy = user;
  [(CAMAnalyticsSessionEvent *)self set_smudgeDetectionStatus:[(CAMAnalyticsSessionEvent *)self _resolveSmudgeDetectionDevicePosition:[(CAMAnalyticsSessionEvent *)self _smudgeDetectionStatus] forDevicePosition:position]];
  if (userCopy)
  {
    v7 = [(CAMAnalyticsSessionEvent *)self _resolveSmudgeDetectionDevicePosition:[(CAMAnalyticsSessionEvent *)self _smudgeDetectionUserNotificationStatus] forDevicePosition:position];

    [(CAMAnalyticsSessionEvent *)self set_smudgeDetectionUserNotificationStatus:v7];
  }
}

- (int64_t)_resolveSmudgeDetectionDevicePosition:(int64_t)position forDevicePosition:(int64_t)devicePosition
{
  v4 = 3;
  if ((position & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    v4 = 1;
  }

  v5 = 2;
  if (((position - 1) & 0xFFFFFFFFFFFFFFFDLL) == 0)
  {
    v5 = 3;
  }

  if (devicePosition)
  {
    v5 = v4;
  }

  if (devicePosition == 1)
  {
    return v4;
  }

  else
  {
    return v5;
  }
}

- (id)_stringForSmudgeDetectionDevicePosition:(int64_t)position
{
  if ((position - 1) > 2)
  {
    return @"None";
  }

  else
  {
    return off_1E76FE180[position - 1];
  }
}

@end