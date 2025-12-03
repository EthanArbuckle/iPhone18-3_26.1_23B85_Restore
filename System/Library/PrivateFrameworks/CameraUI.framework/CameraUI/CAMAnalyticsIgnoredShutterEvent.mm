@interface CAMAnalyticsIgnoredShutterEvent
- (CAMAnalyticsIgnoredShutterEvent)initWithReasons:(unint64_t)reasons timeSinceLastPress:(double)press dynamicShutterEnabled:(BOOL)enabled responsiveShutterEnabled:(BOOL)shutterEnabled;
- (id)_timeSinceLastPressRangeStringForMilliseconds:(int64_t)milliseconds;
@end

@implementation CAMAnalyticsIgnoredShutterEvent

- (CAMAnalyticsIgnoredShutterEvent)initWithReasons:(unint64_t)reasons timeSinceLastPress:(double)press dynamicShutterEnabled:(BOOL)enabled responsiveShutterEnabled:(BOOL)shutterEnabled
{
  shutterEnabledCopy = shutterEnabled;
  enabledCopy = enabled;
  v31.receiver = self;
  v31.super_class = CAMAnalyticsIgnoredShutterEvent;
  v10 = [(CAMAnalyticsEvent *)&v31 init];
  if (v10)
  {
    if (reasons)
    {
      v11 = 1;
      v12 = MEMORY[0x1E695E118];
      do
      {
        if (reasons)
        {
          _eventMap = [(CAMAnalyticsEvent *)v10 _eventMap];
          v14 = _eventMap;
          v15 = @"disabledReasonPurgingDiskSpace";
          if (v11 != 128)
          {
            v15 = 0;
          }

          if (v11 == 64)
          {
            v15 = @"disabledReasonViewfinderOpening";
          }

          if (v11 == 32)
          {
            v15 = @"disabledReasonPhysicalButtonDown";
          }

          if (v11 == 16)
          {
            v16 = @"disabledReasonModeDisabled";
          }

          else
          {
            v16 = 0;
          }

          if (v11 == 8)
          {
            v16 = @"disabledReasonPreventingAdditionalCaptures";
          }

          if (v11 <= 31)
          {
            v15 = v16;
          }

          if (v11 == 4)
          {
            v17 = @"disabledReasonViewfinderClosed";
          }

          else
          {
            v17 = 0;
          }

          if (v11 == 2)
          {
            v17 = @"disabledReasonOutOfDiskSpace";
          }

          if (v11 == 1)
          {
            v18 = @"disabledReasonCaptureUnavailable";
          }

          else
          {
            v18 = 0;
          }

          if (!v11)
          {
            v18 = @"disabledReasonNone";
          }

          if (v11 <= 1)
          {
            v17 = v18;
          }

          if (v11 <= 7)
          {
            v19 = v17;
          }

          else
          {
            v19 = v15;
          }

          [_eventMap setObject:v12 forKeyedSubscript:v19];
        }

        v11 *= 2;
        v20 = reasons > 1;
        reasons >>= 1;
      }

      while (v20);
    }

    v21 = [MEMORY[0x1E696AD98] numberWithInteger:(press * 1000.0)];
    _eventMap2 = [(CAMAnalyticsEvent *)v10 _eventMap];
    [_eventMap2 setObject:v21 forKeyedSubscript:@"timeSinceLastPress"];

    v23 = [(CAMAnalyticsIgnoredShutterEvent *)v10 _timeSinceLastPressRangeStringForMilliseconds:(press * 1000.0)];
    _eventMap3 = [(CAMAnalyticsEvent *)v10 _eventMap];
    [_eventMap3 setObject:v23 forKeyedSubscript:@"timeSinceLastPressRange"];

    v25 = [MEMORY[0x1E696AD98] numberWithBool:enabledCopy];
    _eventMap4 = [(CAMAnalyticsEvent *)v10 _eventMap];
    [_eventMap4 setObject:v25 forKeyedSubscript:@"dynamicShutter"];

    v27 = [MEMORY[0x1E696AD98] numberWithBool:shutterEnabledCopy];
    _eventMap5 = [(CAMAnalyticsEvent *)v10 _eventMap];
    [_eventMap5 setObject:v27 forKeyedSubscript:@"responsiveShutter"];

    v29 = v10;
  }

  return v10;
}

- (id)_timeSinceLastPressRangeStringForMilliseconds:(int64_t)milliseconds
{
  if (_timeSinceLastPressRangeStringForMilliseconds__onceToken != -1)
  {
    [CAMAnalyticsIgnoredShutterEvent _timeSinceLastPressRangeStringForMilliseconds:];
  }

  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__35;
  v11 = __Block_byref_object_dispose__35;
  v12 = @"5000+";
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __81__CAMAnalyticsIgnoredShutterEvent__timeSinceLastPressRangeStringForMilliseconds___block_invoke_54;
  v6[3] = &unk_1E76FEEB8;
  v6[4] = &v7;
  v6[5] = milliseconds;
  [_timeSinceLastPressRangeStringForMilliseconds__bucketValues enumerateObjectsUsingBlock:v6];
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __81__CAMAnalyticsIgnoredShutterEvent__timeSinceLastPressRangeStringForMilliseconds___block_invoke()
{
  v0 = _timeSinceLastPressRangeStringForMilliseconds__bucketValues;
  _timeSinceLastPressRangeStringForMilliseconds__bucketValues = &unk_1F16C9D88;
}

void __81__CAMAnalyticsIgnoredShutterEvent__timeSinceLastPressRangeStringForMilliseconds___block_invoke_54(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  if (*(a1 + 40) < [v9 intValue])
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%d", objc_msgSend(v9, "intValue")];
    v7 = *(*(a1 + 32) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    *a4 = 1;
  }
}

@end