@interface CBAnalyticsNightShiftTracker
- (CBAnalyticsNightShiftTracker)init;
- (void)update:(int)a3 isEnabled:(BOOL)a4;
@end

@implementation CBAnalyticsNightShiftTracker

- (CBAnalyticsNightShiftTracker)init
{
  v5 = self;
  v4 = a2;
  v3.receiver = self;
  v3.super_class = CBAnalyticsNightShiftTracker;
  v5 = [(CBAnalyticsNightShiftTracker *)&v3 init];
  if (v5)
  {
    v5->_modeChangeTimestamp = NAN;
  }

  return v5;
}

- (void)update:(int)a3 isEnabled:(BOOL)a4
{
  v10 = self;
  v9 = a2;
  v8 = a3;
  v7 = a4;
  context = objc_autoreleasePoolPush();
  Current = CFAbsoluteTimeGetCurrent();
  modeChangeTimestamp = v10->_modeChangeTimestamp;
  v5 = Current - v10->_modeChangeTimestamp;
  v10->_modeChangeTimestamp = Current;
  [CBAnalytics send:@".NightShift.Usage" withBlock:?];
  v10->_isEnabled = v7;
  objc_autoreleasePoolPop(context);
}

uint64_t __49__CBAnalyticsNightShiftTracker_update_isEnabled___block_invoke(uint64_t a1)
{
  v5[3] = *MEMORY[0x1E69E9840];
  v4[0] = @"mode";
  v5[0] = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 48)];
  v4[1] = @"time";
  v5[1] = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 40) * 1000.0];
  v4[2] = @"enabled";
  v5[2] = [MEMORY[0x1E696AD98] numberWithBool:*(*(a1 + 32) + 16) & 1];
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:3];
  *MEMORY[0x1E69E9840];
  return v3;
}

@end