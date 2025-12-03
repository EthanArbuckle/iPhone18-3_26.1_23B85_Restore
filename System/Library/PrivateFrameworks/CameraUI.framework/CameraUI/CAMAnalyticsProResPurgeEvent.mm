@interface CAMAnalyticsProResPurgeEvent
- (CAMAnalyticsProResPurgeEvent)initWithRequestType:(int64_t)type graphConfiguration:(id)configuration totalBytesInSystem:(int64_t)system;
- (void)_updateForIsBeforePurge:(BOOL)purge withFreeBytes:(int64_t)bytes fastPurgeableBytes:(int64_t)purgeableBytes slowPurgeableBytes:(int64_t)slowPurgeableBytes maxRecordingTimeSeconds:(double)seconds;
- (void)publish;
- (void)updateAfterPurgeOperationWithFreeBytes:(int64_t)bytes fastPurgeableBytes:(int64_t)purgeableBytes slowPurgeableBytes:(int64_t)slowPurgeableBytes maxRecordingTimeSeconds:(double)seconds bytesPurged:(int64_t)purged;
- (void)updateBeforePurgeOperationWithFreeBytes:(int64_t)bytes fastPurgeableBytes:(int64_t)purgeableBytes slowPurgeableBytes:(int64_t)slowPurgeableBytes maxRecordingTimeSeconds:(double)seconds;
- (void)updateForCancelRequest;
- (void)updateForSkippedPurgeOperationWithFreeBytes:(int64_t)bytes fastPurgeableBytes:(int64_t)purgeableBytes slowPurgeableBytes:(int64_t)slowPurgeableBytes maxRecordingTimeSeconds:(double)seconds;
@end

@implementation CAMAnalyticsProResPurgeEvent

- (CAMAnalyticsProResPurgeEvent)initWithRequestType:(int64_t)type graphConfiguration:(id)configuration totalBytesInSystem:(int64_t)system
{
  configurationCopy = configuration;
  v36.receiver = self;
  v36.super_class = CAMAnalyticsProResPurgeEvent;
  v10 = [(CAMAnalyticsEvent *)&v36 init];
  if (v10)
  {
    v10->__startTime = CFAbsoluteTimeGetCurrent();
    objc_storeStrong(&v10->__graphConfiguration, configuration);
    v11 = +[CAMCaptureCapabilities capabilities];
    mode = [configurationCopy mode];
    device = [configurationCopy device];
    videoEncodingBehavior = [configurationCopy videoEncodingBehavior];
    videoConfiguration = [configurationCopy videoConfiguration];
    prefersHDR10BitVideo = [configurationCopy prefersHDR10BitVideo];
    LOBYTE(v35) = [configurationCopy frontRearSimultaneousVideoEnabled];
    v17 = [v11 resolvedVideoConfigurationForMode:mode device:device videoEncodingBehavior:videoEncodingBehavior videoConfiguration:videoConfiguration outputToExternalStorage:0 prefersHDR10BitVideo:prefersHDR10BitVideo frontRearSimultaneousVideoEnabled:v35];
    _eventMap = [(CAMAnalyticsEvent *)v10 _eventMap];
    v19 = _eventMap;
    v20 = @"UserInitiated";
    if (type != 1)
    {
      v20 = 0;
    }

    if (type)
    {
      v21 = v20;
    }

    else
    {
      v21 = @"Auto";
    }

    [_eventMap setObject:v21 forKeyedSubscript:@"requestType"];
    if (v17 > 9999)
    {
      v23 = @"ImagePickerVGA";
      v24 = @"ImagePickeriFrame540p";
      if (v17 != 10005)
      {
        v24 = 0;
      }

      if (v17 == 10004)
      {
        v25 = @"ImagePickeriFrame720p";
      }

      else
      {
        v25 = v24;
      }

      if (v17 != 10003)
      {
        v23 = v25;
      }

      v26 = @"ImagePickerMedium";
      v27 = @"ImagePickerLow";
      if (v17 != 10002)
      {
        v27 = 0;
      }

      if (v17 != 10001)
      {
        v26 = v27;
      }

      if (v17 == 10000)
      {
        v28 = @"ImagePickerHigh";
      }

      else
      {
        v28 = v26;
      }

      if (v17 <= 10002)
      {
        v22 = v28;
      }

      else
      {
        v22 = v23;
      }
    }

    else
    {
      switch(v17)
      {
        case 0:
          v22 = @"Auto";
          break;
        case 1:
          v22 = @"1080p60";
          break;
        case 2:
          v22 = @"720p120";
          break;
        case 3:
          v22 = @"720p240";
          break;
        case 4:
          v22 = @"1080p120";
          break;
        case 5:
          v22 = @"4k30";
          break;
        case 6:
          v22 = @"720p30";
          break;
        case 7:
          v22 = @"1080p30";
          break;
        case 8:
          v22 = @"1080p240";
          break;
        case 9:
          v22 = @"4k60";
          break;
        case 10:
          v22 = @"4k24";
          break;
        case 11:
          v22 = @"1080p25";
          break;
        case 12:
          v22 = @"4k25";
          break;
        case 13:
          v22 = @"4k120";
          break;
        case 14:
          v22 = @"4k100";
          break;
        default:
          v22 = 0;
          break;
      }
    }

    [v19 setObject:v22 forKeyedSubscript:@"videoConfiguration"];
    v29 = MEMORY[0x1E696AD98];
    [objc_opt_class() gigabytesForBytes:system];
    v30 = [v29 numberWithDouble:?];
    [v19 setObject:v30 forKeyedSubscript:@"totalSystemGB"];

    v31 = [objc_opt_class() bucketedGigabytesStringForBytes:system allowZero:0 minPositiveValue:64.0 maxValue:4096.0];
    [v19 setObject:v31 forKeyedSubscript:@"totalSystemGBRange"];

    v32 = MEMORY[0x1E695E110];
    [v19 setObject:MEMORY[0x1E695E110] forKeyedSubscript:@"didPurge"];
    [v19 setObject:v32 forKeyedSubscript:@"didCancel"];
    v33 = v10;
  }

  return v10;
}

- (void)publish
{
  v22 = *MEMORY[0x1E69E9840];
  _eventMap = [(CAMAnalyticsEvent *)self _eventMap];
  Current = CFAbsoluteTimeGetCurrent();
  [(CAMAnalyticsProResPurgeEvent *)self _startTime];
  v6 = Current - v5;
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:v6];
  [_eventMap setObject:v7 forKeyedSubscript:@"duration"];

  v8 = [objc_opt_class() durationRangeStringForDuration:v6];
  [_eventMap setObject:v8 forKeyedSubscript:@"durationRange"];

  v9 = MEMORY[0x1E696AD98];
  [objc_opt_class() gigabytesForBytes:{-[CAMAnalyticsProResPurgeEvent _totalBytesPurged](self, "_totalBytesPurged")}];
  v10 = [v9 numberWithDouble:?];
  [_eventMap setObject:v10 forKeyedSubscript:@"totalPurgedGB"];

  v11 = [objc_opt_class() bucketedGigabytesStringForBytes:{-[CAMAnalyticsProResPurgeEvent _totalBytesPurged](self, "_totalBytesPurged")}];
  [_eventMap setObject:v11 forKeyedSubscript:@"totalPurgedGBRange"];

  v12 = [MEMORY[0x1E696AD98] numberWithInteger:{-[CAMAnalyticsProResPurgeEvent _purgeOperationCount](self, "_purgeOperationCount")}];
  [_eventMap setObject:v12 forKeyedSubscript:@"purgeOperationCount"];

  v13 = [MEMORY[0x1E696AD98] numberWithInteger:{-[CAMAnalyticsProResPurgeEvent _bucketedCount:](self, "_bucketedCount:", -[CAMAnalyticsProResPurgeEvent _purgeOperationCount](self, "_purgeOperationCount"))}];
  [_eventMap setObject:v13 forKeyedSubscript:@"purgeOperationCountRange"];

  v14 = [MEMORY[0x1E696AD98] numberWithInt:{-[CAMAnalyticsProResPurgeEvent _purgeOperationCount](self, "_purgeOperationCount") > 0}];
  [_eventMap setObject:v14 forKeyedSubscript:@"didPurge"];

  v17.receiver = self;
  v17.super_class = CAMAnalyticsProResPurgeEvent;
  [(CAMAnalyticsEvent *)&v17 publish];
  v15 = os_log_create("com.apple.camera", "Camera");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    eventName = [(CAMAnalyticsProResPurgeEvent *)self eventName];
    *buf = 138543618;
    v19 = eventName;
    v20 = 2114;
    v21 = _eventMap;
    _os_log_impl(&dword_1A3640000, v15, OS_LOG_TYPE_DEFAULT, "CoreAnalytics: %{public}@: %{public}@", buf, 0x16u);
  }
}

- (void)updateBeforePurgeOperationWithFreeBytes:(int64_t)bytes fastPurgeableBytes:(int64_t)purgeableBytes slowPurgeableBytes:(int64_t)slowPurgeableBytes maxRecordingTimeSeconds:(double)seconds
{
  if (![(CAMAnalyticsProResPurgeEvent *)self _didUpdateForFirstPurgeOperation])
  {
    [(CAMAnalyticsProResPurgeEvent *)self _updateForIsBeforePurge:1 withFreeBytes:bytes fastPurgeableBytes:purgeableBytes slowPurgeableBytes:slowPurgeableBytes maxRecordingTimeSeconds:seconds];

    [(CAMAnalyticsProResPurgeEvent *)self _setDidUpdateForFirstPurgeOperation:1];
  }
}

- (void)updateAfterPurgeOperationWithFreeBytes:(int64_t)bytes fastPurgeableBytes:(int64_t)purgeableBytes slowPurgeableBytes:(int64_t)slowPurgeableBytes maxRecordingTimeSeconds:(double)seconds bytesPurged:(int64_t)purged
{
  [(CAMAnalyticsProResPurgeEvent *)self _updateForIsBeforePurge:0 withFreeBytes:bytes fastPurgeableBytes:purgeableBytes slowPurgeableBytes:slowPurgeableBytes maxRecordingTimeSeconds:seconds];
  [(CAMAnalyticsProResPurgeEvent *)self _setTotalBytesPurged:[(CAMAnalyticsProResPurgeEvent *)self _totalBytesPurged]+ purged];
  v9 = [(CAMAnalyticsProResPurgeEvent *)self _purgeOperationCount]+ 1;

  [(CAMAnalyticsProResPurgeEvent *)self _setPurgeOperationCount:v9];
}

- (void)_updateForIsBeforePurge:(BOOL)purge withFreeBytes:(int64_t)bytes fastPurgeableBytes:(int64_t)purgeableBytes slowPurgeableBytes:(int64_t)slowPurgeableBytes maxRecordingTimeSeconds:(double)seconds
{
  purgeCopy = purge;
  _eventMap = [(CAMAnalyticsEvent *)self _eventMap];
  v9 = !purgeCopy;
  if (purgeCopy)
  {
    v10 = @"freeGBBefore";
  }

  else
  {
    v10 = @"freeGBAfter";
  }

  if (purgeCopy)
  {
    v11 = @"freeGBBeforeRange";
  }

  else
  {
    v11 = @"freeGBAfterRange";
  }

  if (purgeCopy)
  {
    v12 = @"fastPurgeableGBBefore";
  }

  else
  {
    v12 = @"fastPurgeableGBAfter";
  }

  if (v9)
  {
    v13 = @"fastPurgeableGBAfterRange";
  }

  else
  {
    v13 = @"fastPurgeableGBBeforeRange";
  }

  if (v9)
  {
    v14 = @"slowPurgeableGBAfter";
  }

  else
  {
    v14 = @"slowPurgeableGBBefore";
  }

  if (v9)
  {
    v15 = @"slowPurgeableGBAfterRange";
  }

  else
  {
    v15 = @"slowPurgeableGBBeforeRange";
  }

  if (v9)
  {
    v16 = @"maxRecordingTimeSecondsAfter";
  }

  else
  {
    v16 = @"maxRecordingTimeSecondsBefore";
  }

  if (v9)
  {
    v17 = @"maxRecordingTimeSecondsAfterRange";
  }

  else
  {
    v17 = @"maxRecordingTimeSecondsBeforeRange";
  }

  v18 = @"captureAllowedBefore";
  if (v9)
  {
    v18 = @"captureAllowedAfter";
  }

  v19 = MEMORY[0x1E696AD98];
  v42 = v18;
  v39 = v17;
  v20 = v16;
  v21 = v15;
  v22 = v14;
  v23 = v13;
  v24 = v12;
  v25 = v11;
  v26 = v10;
  [objc_opt_class() gigabytesForBytes:bytes];
  v27 = [v19 numberWithDouble:?];
  [_eventMap setObject:v27 forKeyedSubscript:v26];

  v28 = [objc_opt_class() bucketedGigabytesStringForBytes:bytes];
  [_eventMap setObject:v28 forKeyedSubscript:v25];

  v29 = MEMORY[0x1E696AD98];
  [objc_opt_class() gigabytesForBytes:purgeableBytes];
  v30 = [v29 numberWithDouble:?];
  [_eventMap setObject:v30 forKeyedSubscript:v24];

  v31 = [objc_opt_class() bucketedGigabytesStringForBytes:purgeableBytes];
  [_eventMap setObject:v31 forKeyedSubscript:v23];

  v32 = MEMORY[0x1E696AD98];
  [objc_opt_class() gigabytesForBytes:slowPurgeableBytes];
  v33 = [v32 numberWithDouble:?];
  [_eventMap setObject:v33 forKeyedSubscript:v22];

  v34 = [objc_opt_class() bucketedGigabytesStringForBytes:slowPurgeableBytes];
  [_eventMap setObject:v34 forKeyedSubscript:v21];

  v35 = [MEMORY[0x1E696AD98] numberWithDouble:seconds];
  [_eventMap setObject:v35 forKeyedSubscript:v20];

  v36 = [objc_opt_class() durationRangeStringForDuration:seconds];
  [_eventMap setObject:v36 forKeyedSubscript:v39];

  v37 = [MEMORY[0x1E696AD98] numberWithInt:seconds > 0.0];
  [_eventMap setObject:v37 forKeyedSubscript:v42];
}

- (void)updateForSkippedPurgeOperationWithFreeBytes:(int64_t)bytes fastPurgeableBytes:(int64_t)purgeableBytes slowPurgeableBytes:(int64_t)slowPurgeableBytes maxRecordingTimeSeconds:(double)seconds
{
  if ([(CAMAnalyticsProResPurgeEvent *)self _didUpdateForFirstPurgeOperation])
  {
    [(CAMAnalyticsProResPurgeEvent *)self _updateForIsBeforePurge:1 withFreeBytes:bytes fastPurgeableBytes:purgeableBytes slowPurgeableBytes:slowPurgeableBytes maxRecordingTimeSeconds:seconds];
    [(CAMAnalyticsProResPurgeEvent *)self _updateForIsBeforePurge:0 withFreeBytes:bytes fastPurgeableBytes:purgeableBytes slowPurgeableBytes:slowPurgeableBytes maxRecordingTimeSeconds:seconds];

    [(CAMAnalyticsProResPurgeEvent *)self _setDidUpdateForFirstPurgeOperation:1];
  }
}

- (void)updateForCancelRequest
{
  _eventMap = [(CAMAnalyticsEvent *)self _eventMap];
  [_eventMap setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"didCancel"];
}

@end