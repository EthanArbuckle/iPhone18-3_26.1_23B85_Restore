@interface CAMAnalyticsSessionEvent
+ (id)_bucketCaptureCount:(id)a3;
+ (void)_incrementDictionaryCount:(id)a3 forKey:(id)a4;
- (BOOL)_launchEventWithinReasonableTimeInterval;
- (CAMAnalyticsSessionEvent)initWithCapabilities:(id)a3 availableCaptureModes:(id)a4 currentCaptureMode:(int64_t)a5 currentCaptureDevice:(int64_t)a6 callStatusMonitor:(id)a7;
- (id)_bucketCaptureCountForMediaType:(int64_t)a3;
- (id)_bucketCaptureCountForMode:(int64_t)a3;
- (id)_stringForSmudgeDetectionDevicePosition:(int64_t)a3;
- (int64_t)_resolveSmudgeDetectionDevicePosition:(int64_t)a3 forDevicePosition:(int64_t)a4;
- (void)_endSession;
- (void)_handleCallStatusMonitorDidChangeCallActive:(id)a3;
- (void)_incrementCaptureForGraphConfiguration:(id)a3 analyticsMediaType:(int64_t)a4;
- (void)countEventsFromAnalyticsVisionSession:(id)a3;
- (void)didCaptureWithRequest:(id)a3 currentConfiguration:(id)a4;
- (void)didChangePortraitLighting;
- (void)didDetectSmudgedLensForDevicePosition:(int64_t)a3 didNotifyUser:(BOOL)a4;
- (void)didDismissCameraRoll;
- (void)didFocusInteraction;
- (void)didFocusLockInteraction;
- (void)didPresentCameraRoll;
- (void)didPresentControlDrawerForReason:(int64_t)a3;
- (void)didPrewarmWithReason:(id)a3;
- (void)didStartPreview;
- (void)didZoomInteraction:(int64_t)a3;
- (void)publish;
- (void)setFirstConfiguredCaptureMode:(int64_t)a3 captureDevice:(int64_t)a4;
- (void)updateForLocationController:(id)a3;
@end

@implementation CAMAnalyticsSessionEvent

- (CAMAnalyticsSessionEvent)initWithCapabilities:(id)a3 availableCaptureModes:(id)a4 currentCaptureMode:(int64_t)a5 currentCaptureDevice:(int64_t)a6 callStatusMonitor:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a7;
  v29.receiver = self;
  v29.super_class = CAMAnalyticsSessionEvent;
  v16 = [(CAMAnalyticsEvent *)&v29 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->__capabilities, a3);
    v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
    captureCountsByMode = v17->__captureCountsByMode;
    v17->__captureCountsByMode = v18;

    v20 = objc_alloc_init(MEMORY[0x1E695DF90]);
    captureCountsByMediaType = v17->__captureCountsByMediaType;
    v17->__captureCountsByMediaType = v20;

    v17->__cameraRollInteraction = 0;
    v17->__startTime = CFAbsoluteTimeGetCurrent();
    v22 = [v13 hostProcess];
    v23 = 0;
    if (v22 <= 5)
    {
      v23 = off_1E76FE058[v22];
    }

    hostProcess = v17->__hostProcess;
    v17->__hostProcess = &v23->isa;

    v25 = +[CAMUserPreferences preferences];
    v17->__textDetectionEnabled = [v25 isImageAnalysisEnabled];

    v26 = +[CAMUserPreferences preferences];
    v17->__mrcDetectionEnabled = [v26 shouldShowQRBanners];

    objc_storeStrong(&v17->__availableCaptureModes, a4);
    v17->__firstConfiguredMode = a5;
    v17->__firstConfiguredDevice = a6;
    objc_storeStrong(&v17->__callStatusMonitor, a7);
    if ([v15 isCallActive])
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
  v65 = [(CAMAnalyticsEvent *)self _eventMap];
  v3 = [(CAMAnalyticsSessionEvent *)self _hostProcess];
  [v65 setObject:v3 forKeyedSubscript:@"hostProcess"];

  Current = CFAbsoluteTimeGetCurrent();
  [(CAMAnalyticsSessionEvent *)self _startTime];
  v6 = Current - v5;
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:v6];
  [v65 setObject:v7 forKeyedSubscript:@"totalDuration"];

  if ([(CAMAnalyticsSessionEvent *)self _isInCameraRoll])
  {
    [(CAMAnalyticsSessionEvent *)self didDismissCameraRoll];
  }

  v8 = [(CAMAnalyticsSessionEvent *)self _firstCaptureMode];
  [v65 setObject:v8 forKeyedSubscript:@"firstCaptureMode"];

  v9 = [(CAMAnalyticsSessionEvent *)self _firstCaptureDevicePosition];
  [v65 setObject:v9 forKeyedSubscript:@"firstCaptureDevice"];

  [(CAMAnalyticsSessionEvent *)self _cameraRollTotalTime];
  if (v10 > 0.0)
  {
    v11 = MEMORY[0x1E696AD98];
    [(CAMAnalyticsSessionEvent *)self _cameraRollTotalTime];
    v12 = [v11 numberWithDouble:?];
    [v65 setObject:v12 forKeyedSubscript:@"totalCameraRollDuration"];
  }

  v13 = MEMORY[0x1E696AD98];
  [(CAMAnalyticsSessionEvent *)self _cameraRollTotalTime];
  v15 = [v13 numberWithDouble:v6 - v14];
  [v65 setObject:v15 forKeyedSubscript:@"totalCameraDuration"];

  [(CAMAnalyticsSessionEvent *)self _previewStartTime];
  if (v16 > 0.0)
  {
    [(CAMAnalyticsSessionEvent *)self _previewStartTime];
    v18 = v17;
    [(CAMAnalyticsSessionEvent *)self _startTime];
    v20 = [MEMORY[0x1E696AD98] numberWithDouble:v18 - v19];
    [v65 setObject:v20 forKeyedSubscript:@"timeToPreview"];
  }

  if ([(CAMAnalyticsSessionEvent *)self _cameraRollInteraction])
  {
    v21 = [(CAMAnalyticsSessionEvent *)self _cameraRollInteraction];
    if (v21 > 3)
    {
      v22 = 0;
    }

    else
    {
      v22 = off_1E76FE088[v21];
    }

    [v65 setObject:v22 forKeyedSubscript:@"didInteractWithCameraRoll"];
  }

  if ([(CAMAnalyticsSessionEvent *)self _totalCaptures])
  {
    [(CAMAnalyticsSessionEvent *)self _firstCaptureStartTime];
    v24 = v23;
    [(CAMAnalyticsSessionEvent *)self _startTime];
    v26 = [MEMORY[0x1E696AD98] numberWithDouble:v24 - v25];
    [v65 setObject:v26 forKeyedSubscript:@"timeToFirstCapture"];
  }

  v27 = 1;
  v28 = [(CAMAnalyticsSessionEvent *)self _bucketCaptureCountForMode:1];
  [v65 setObject:v28 forKeyedSubscript:@"captureCountVideoMode"];

  v29 = [(CAMAnalyticsSessionEvent *)self _bucketCaptureCountForMode:0];
  [v65 setObject:v29 forKeyedSubscript:@"captureCountPhotoMode"];

  v30 = [(CAMAnalyticsSessionEvent *)self _bucketCaptureCountForMode:4];
  [v65 setObject:v30 forKeyedSubscript:@"captureCountSquareMode"];

  v31 = [(CAMAnalyticsSessionEvent *)self _bucketCaptureCountForMode:2];
  [v65 setObject:v31 forKeyedSubscript:@"captureCountSlomoMode"];

  v32 = [(CAMAnalyticsSessionEvent *)self _bucketCaptureCountForMode:6];
  [v65 setObject:v32 forKeyedSubscript:@"captureCountPortraitMode"];

  v33 = [(CAMAnalyticsSessionEvent *)self _bucketCaptureCountForMode:7];
  [v65 setObject:v33 forKeyedSubscript:@"captureCountCinematicMode"];

  v34 = [(CAMAnalyticsSessionEvent *)self _bucketCaptureCountForMode:3];
  [v65 setObject:v34 forKeyedSubscript:@"captureCountPanoramaMode"];

  v35 = [(CAMAnalyticsSessionEvent *)self _bucketCaptureCountForMode:5];
  [v65 setObject:v35 forKeyedSubscript:@"captureCountTimelapseMode"];

  v36 = [(CAMAnalyticsSessionEvent *)self _bucketCaptureCountForMode:8];
  [v65 setObject:v36 forKeyedSubscript:@"captureCountSpatialVideoMode"];

  v37 = [(CAMAnalyticsSessionEvent *)self _bucketCaptureCountForMode:9];
  [v65 setObject:v37 forKeyedSubscript:@"captureCountSpatialPhotoMode"];

  v38 = [(CAMAnalyticsSessionEvent *)self _bucketCaptureCountForMediaType:1];
  [v65 setObject:v38 forKeyedSubscript:@"mediaTypeCountVideo"];

  v39 = [(CAMAnalyticsSessionEvent *)self _bucketCaptureCountForMediaType:0];
  [v65 setObject:v39 forKeyedSubscript:@"mediaTypeCountPhoto"];

  v40 = objc_opt_class();
  v41 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[CAMAnalyticsSessionEvent _totalCaptures](self, "_totalCaptures")}];
  v42 = [v40 _bucketCaptureCount:v41];
  [v65 setObject:v42 forKeyedSubscript:@"captureCountTotal"];

  v43 = [MEMORY[0x1E696AD98] numberWithInt:{-[CAMAnalyticsSessionEvent _totalCaptures](self, "_totalCaptures") != 0}];
  [v65 setObject:v43 forKeyedSubscript:@"didCapture"];

  v44 = [MEMORY[0x1E696AD98] numberWithInt:{-[CAMAnalyticsSessionEvent _totalZoomInteractions](self, "_totalZoomInteractions") != 0}];
  [v65 setObject:v44 forKeyedSubscript:@"didZoom"];

  v45 = MEMORY[0x1E696AD98];
  if (![(CAMAnalyticsSessionEvent *)self _totalFocusInteractions])
  {
    v27 = [(CAMAnalyticsSessionEvent *)self _totalFocusLockInteractions]!= 0;
  }

  v46 = [v45 numberWithInt:v27];
  [v65 setObject:v46 forKeyedSubscript:@"didTapToFocus"];

  v47 = [(CAMAnalyticsSessionEvent *)self _capabilities];
  v48 = [v47 arePortraitEffectsSupported];

  if (v48)
  {
    v49 = [MEMORY[0x1E696AD98] numberWithInt:{-[CAMAnalyticsSessionEvent _totalPortraitLightingChanges](self, "_totalPortraitLightingChanges") != 0}];
    [v65 setObject:v49 forKeyedSubscript:@"didChangePortraitLighting"];
  }

  if ([(CAMAnalyticsSessionEvent *)self _textDetectionEnabled])
  {
    v50 = [MEMORY[0x1E696AD98] numberWithInt:{-[CAMAnalyticsSessionEvent _totalTextInteractions](self, "_totalTextInteractions") != 0}];
    [v65 setObject:v50 forKeyedSubscript:@"didInteractWithText"];
  }

  if ([(CAMAnalyticsSessionEvent *)self _mrcDetectionEnabled])
  {
    v51 = [MEMORY[0x1E696AD98] numberWithInt:{-[CAMAnalyticsSessionEvent _totalMRCInteractions](self, "_totalMRCInteractions") != 0}];
    [v65 setObject:v51 forKeyedSubscript:@"didInteractWithMRC"];
  }

  v52 = [(CAMAnalyticsSessionEvent *)self _capabilities];
  v53 = [v52 hasSystemTelephonyOfAnyKind];

  if (v53)
  {
    v54 = [MEMORY[0x1E696AD98] numberWithBool:{-[CAMAnalyticsSessionEvent _hadActiveCall](self, "_hadActiveCall")}];
    [v65 setObject:v54 forKeyedSubscript:@"hadActiveCall"];
  }

  v55 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[CAMAnalyticsSessionEvent _totalControlDrawerOpenings](self, "_totalControlDrawerOpenings")}];
  [v65 setObject:v55 forKeyedSubscript:@"totalControlDrawerOpenings"];

  v56 = [(CAMAnalyticsSessionEvent *)self _prewarmLaunchReason];

  if (v56)
  {
    v57 = [(CAMAnalyticsSessionEvent *)self _prewarmLaunchReason];
    [v65 setObject:v57 forKeyedSubscript:@"launchMethod"];
  }

  v58 = [(CAMAnalyticsSessionEvent *)self _firstConfiguredDevice];
  if (v58 > 0xB)
  {
    v59 = 0;
  }

  else
  {
    v59 = off_1E76FE0A8[v58];
  }

  [v65 setObject:v59 forKeyedSubscript:@"firstConfiguredDevice"];
  v60 = [(CAMAnalyticsSessionEvent *)self _firstConfiguredMode];
  if (v60 > 9)
  {
    v61 = 0;
  }

  else
  {
    v61 = off_1E76FE108[v60];
  }

  [v65 setObject:v61 forKeyedSubscript:@"firstConfiguredMode"];
  if ([(CAMAnalyticsSessionEvent *)self _smudgeDetectionStatus])
  {
    v62 = [(CAMAnalyticsSessionEvent *)self _stringForSmudgeDetectionDevicePosition:[(CAMAnalyticsSessionEvent *)self _smudgeDetectionStatus]];
    [v65 setObject:v62 forKeyedSubscript:@"smudgeDetectionStatus"];
  }

  if ([(CAMAnalyticsSessionEvent *)self _smudgeDetectionUserNotificationStatus])
  {
    v63 = [(CAMAnalyticsSessionEvent *)self _stringForSmudgeDetectionDevicePosition:[(CAMAnalyticsSessionEvent *)self _smudgeDetectionUserNotificationStatus]];
    [v65 setObject:v63 forKeyedSubscript:@"smudgeDetectionUserNotification"];
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
  v7 = [(CAMAnalyticsSessionEvent *)self _cameraRollInteraction];
  if (v7)
  {
    v8 = v7;
    if (v7 != 1)
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

+ (void)_incrementDictionaryCount:(id)a3 forKey:(id)a4
{
  v9 = a3;
  v5 = a4;
  v6 = [v9 objectForKeyedSubscript:v5];
  v7 = v6;
  if (v6)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v6, "unsignedIntValue") + 1}];
    [v9 setObject:v8 forKeyedSubscript:v5];
  }

  else
  {
    [v9 setObject:&unk_1F16C86C0 forKeyedSubscript:v5];
  }
}

+ (id)_bucketCaptureCount:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  [v3 doubleValue];
  v6 = v5;

  [v4 bucketedPowerOf2ForValue:1 allowZero:v6 minPositiveValue:1.0 maxValue:1024.0];
  v7 = MEMORY[0x1E696AD98];

  return [v7 numberWithDouble:?];
}

- (id)_bucketCaptureCountForMediaType:(int64_t)a3
{
  v4 = [(CAMAnalyticsSessionEvent *)self _captureCountsByMediaType];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v6 = [v4 objectForKeyedSubscript:v5];

  v7 = [objc_opt_class() _bucketCaptureCount:v6];

  return v7;
}

- (id)_bucketCaptureCountForMode:(int64_t)a3
{
  v5 = [(CAMAnalyticsSessionEvent *)self _availableCaptureModes];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v7 = [v5 containsObject:v6];

  if (v7)
  {
    v8 = [(CAMAnalyticsSessionEvent *)self _captureCountsByMode];
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    v10 = [v8 objectForKeyedSubscript:v9];

    v11 = [objc_opt_class() _bucketCaptureCount:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)_incrementCaptureForGraphConfiguration:(id)a3 analyticsMediaType:(int64_t)a4
{
  v6 = [a3 mode];
  v7 = objc_opt_class();
  v8 = [(CAMAnalyticsSessionEvent *)self _captureCountsByMode];
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:v6];
  [v7 _incrementDictionaryCount:v8 forKey:v9];

  v10 = objc_opt_class();
  v11 = [(CAMAnalyticsSessionEvent *)self _captureCountsByMediaType];
  v12 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  [v10 _incrementDictionaryCount:v11 forKey:v12];

  if (![(CAMAnalyticsSessionEvent *)self _totalCaptures])
  {
    [(CAMAnalyticsSessionEvent *)self set_firstCaptureStartTime:CFAbsoluteTimeGetCurrent()];
  }

  v13 = [(CAMAnalyticsSessionEvent *)self _totalCaptures]+ 1;

  [(CAMAnalyticsSessionEvent *)self set_totalCaptures:v13];
}

- (void)didCaptureWithRequest:(id)a3 currentConfiguration:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = [v12 type];
  if (v7 == 1)
  {
    v8 = 1;
  }

  else if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = [v12 ctmCaptureType] == 2;
  }

  [(CAMAnalyticsSessionEvent *)self _incrementCaptureForGraphConfiguration:v6 analyticsMediaType:v8];
  v9 = [(CAMAnalyticsSessionEvent *)self _firstCaptureMode];

  if (!v9)
  {
    v10 = [v6 modeDescription];
    [(CAMAnalyticsSessionEvent *)self set_firstCaptureMode:v10];

    v11 = [v6 devicePositionDescription];
    [(CAMAnalyticsSessionEvent *)self set_firstCaptureDevicePosition:v11];
  }
}

- (void)didZoomInteraction:(int64_t)a3
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

- (void)didPresentControlDrawerForReason:(int64_t)a3
{
  if (a3 != 2)
  {
    v5 = [(CAMAnalyticsSessionEvent *)self _totalControlDrawerOpenings]+ 1;

    [(CAMAnalyticsSessionEvent *)self set_totalControlDrawerOpenings:v5];
  }
}

- (void)countEventsFromAnalyticsVisionSession:(id)a3
{
  v4 = a3;
  -[CAMAnalyticsSessionEvent set_totalMRCInteractions:](self, "set_totalMRCInteractions:", -[CAMAnalyticsSessionEvent _totalMRCInteractions](self, "_totalMRCInteractions") + [v4 totalMRCInteractions]);
  v5 = [v4 totalTextInteractions];

  v6 = [(CAMAnalyticsSessionEvent *)self _totalTextInteractions]+ v5;

  [(CAMAnalyticsSessionEvent *)self set_totalTextInteractions:v6];
}

- (void)publish
{
  [(CAMAnalyticsSessionEvent *)self _endSession];
  v3.receiver = self;
  v3.super_class = CAMAnalyticsSessionEvent;
  [(CAMAnalyticsEvent *)&v3 publish];
}

- (void)_handleCallStatusMonitorDidChangeCallActive:(id)a3
{
  v4 = [(CAMAnalyticsSessionEvent *)self _callStatusMonitor];
  v5 = [v4 isCallActive];

  if (v5)
  {

    [(CAMAnalyticsSessionEvent *)self set_hadActiveCall:1];
  }
}

- (void)updateForLocationController:(id)a3
{
  if (a3)
  {
    v4 = [a3 lastKnownAuthorizationStatus];
    if (v4 > 4)
    {
      v5 = 0;
    }

    else
    {
      v5 = off_1E76FE158[v4];
    }

    v6 = [(CAMAnalyticsEvent *)self _eventMap];
    [v6 setObject:v5 forKeyedSubscript:@"locationAuthorizationStatus"];
  }
}

- (BOOL)_launchEventWithinReasonableTimeInterval
{
  Current = CFAbsoluteTimeGetCurrent();
  [(CAMAnalyticsSessionEvent *)self _startTime];
  return Current - v4 < 0.2;
}

- (void)didPrewarmWithReason:(id)a3
{
  v5 = a3;
  v4 = [(CAMAnalyticsSessionEvent *)self _prewarmLaunchReason];

  if (!v4)
  {
    [(CAMAnalyticsSessionEvent *)self set_prewarmLaunchReason:v5];
  }
}

- (void)setFirstConfiguredCaptureMode:(int64_t)a3 captureDevice:(int64_t)a4
{
  if ([(CAMAnalyticsSessionEvent *)self _launchEventWithinReasonableTimeInterval])
  {
    [(CAMAnalyticsSessionEvent *)self set_firstConfiguredMode:a3];

    [(CAMAnalyticsSessionEvent *)self set_firstConfiguredDevice:a4];
  }
}

- (void)didDetectSmudgedLensForDevicePosition:(int64_t)a3 didNotifyUser:(BOOL)a4
{
  v4 = a4;
  [(CAMAnalyticsSessionEvent *)self set_smudgeDetectionStatus:[(CAMAnalyticsSessionEvent *)self _resolveSmudgeDetectionDevicePosition:[(CAMAnalyticsSessionEvent *)self _smudgeDetectionStatus] forDevicePosition:a3]];
  if (v4)
  {
    v7 = [(CAMAnalyticsSessionEvent *)self _resolveSmudgeDetectionDevicePosition:[(CAMAnalyticsSessionEvent *)self _smudgeDetectionUserNotificationStatus] forDevicePosition:a3];

    [(CAMAnalyticsSessionEvent *)self set_smudgeDetectionUserNotificationStatus:v7];
  }
}

- (int64_t)_resolveSmudgeDetectionDevicePosition:(int64_t)a3 forDevicePosition:(int64_t)a4
{
  v4 = 3;
  if ((a3 & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    v4 = 1;
  }

  v5 = 2;
  if (((a3 - 1) & 0xFFFFFFFFFFFFFFFDLL) == 0)
  {
    v5 = 3;
  }

  if (a4)
  {
    v5 = v4;
  }

  if (a4 == 1)
  {
    return v4;
  }

  else
  {
    return v5;
  }
}

- (id)_stringForSmudgeDetectionDevicePosition:(int64_t)a3
{
  if ((a3 - 1) > 2)
  {
    return @"None";
  }

  else
  {
    return off_1E76FE180[a3 - 1];
  }
}

@end