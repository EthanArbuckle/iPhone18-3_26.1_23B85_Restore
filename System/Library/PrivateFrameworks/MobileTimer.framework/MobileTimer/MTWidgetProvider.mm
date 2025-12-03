@interface MTWidgetProvider
- (BOOL)throttleTimelineReload;
- (void)throttleTimelineReload;
@end

@implementation MTWidgetProvider

- (BOOL)throttleTimelineReload
{
  lastReloadRequestDate = [(MTBaseAlarmWidgetProvider *)self lastReloadRequestDate];

  if (!lastReloadRequestDate)
  {
    return 0;
  }

  v4 = [MEMORY[0x1E695DF00] now];
  lastReloadRequestDate2 = [(MTBaseAlarmWidgetProvider *)self lastReloadRequestDate];
  [v4 timeIntervalSinceDate:lastReloadRequestDate2];
  v7 = v6;

  if (v7 >= 2.0)
  {
    return 0;
  }

  v8 = MTLogForCategory(3);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [(MTWidgetProvider *)self throttleTimelineReload];
  }

  return 1;
}

- (void)throttleTimelineReload
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  selfCopy = self;
  _os_log_error_impl(&dword_1B1F9F000, a2, OS_LOG_TYPE_ERROR, "%{public}@ widget refresh requested within throttle interval, dropping", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end