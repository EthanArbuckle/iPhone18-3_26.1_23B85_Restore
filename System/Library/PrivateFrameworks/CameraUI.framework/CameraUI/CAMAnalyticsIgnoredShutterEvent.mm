@interface CAMAnalyticsIgnoredShutterEvent
- (CAMAnalyticsIgnoredShutterEvent)initWithReasons:(unint64_t)a3 timeSinceLastPress:(double)a4 dynamicShutterEnabled:(BOOL)a5 responsiveShutterEnabled:(BOOL)a6;
- (id)_timeSinceLastPressRangeStringForMilliseconds:(int64_t)a3;
@end

@implementation CAMAnalyticsIgnoredShutterEvent

- (CAMAnalyticsIgnoredShutterEvent)initWithReasons:(unint64_t)a3 timeSinceLastPress:(double)a4 dynamicShutterEnabled:(BOOL)a5 responsiveShutterEnabled:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v31.receiver = self;
  v31.super_class = CAMAnalyticsIgnoredShutterEvent;
  v10 = [(CAMAnalyticsEvent *)&v31 init];
  if (v10)
  {
    if (a3)
    {
      v11 = 1;
      v12 = MEMORY[0x1E695E118];
      do
      {
        if (a3)
        {
          v13 = [(CAMAnalyticsEvent *)v10 _eventMap];
          v14 = v13;
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

          [v13 setObject:v12 forKeyedSubscript:v19];
        }

        v11 *= 2;
        v20 = a3 > 1;
        a3 >>= 1;
      }

      while (v20);
    }

    v21 = [MEMORY[0x1E696AD98] numberWithInteger:(a4 * 1000.0)];
    v22 = [(CAMAnalyticsEvent *)v10 _eventMap];
    [v22 setObject:v21 forKeyedSubscript:@"timeSinceLastPress"];

    v23 = [(CAMAnalyticsIgnoredShutterEvent *)v10 _timeSinceLastPressRangeStringForMilliseconds:(a4 * 1000.0)];
    v24 = [(CAMAnalyticsEvent *)v10 _eventMap];
    [v24 setObject:v23 forKeyedSubscript:@"timeSinceLastPressRange"];

    v25 = [MEMORY[0x1E696AD98] numberWithBool:v7];
    v26 = [(CAMAnalyticsEvent *)v10 _eventMap];
    [v26 setObject:v25 forKeyedSubscript:@"dynamicShutter"];

    v27 = [MEMORY[0x1E696AD98] numberWithBool:v6];
    v28 = [(CAMAnalyticsEvent *)v10 _eventMap];
    [v28 setObject:v27 forKeyedSubscript:@"responsiveShutter"];

    v29 = v10;
  }

  return v10;
}

- (id)_timeSinceLastPressRangeStringForMilliseconds:(int64_t)a3
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
  v6[5] = a3;
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