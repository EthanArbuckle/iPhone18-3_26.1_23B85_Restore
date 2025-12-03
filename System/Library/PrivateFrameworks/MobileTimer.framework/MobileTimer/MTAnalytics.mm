@interface MTAnalytics
+ (void)sendCriticalEvent:(id)event;
+ (void)submitEvent:(id)event eventParameters:(id)parameters;
@end

@implementation MTAnalytics

+ (void)submitEvent:(id)event eventParameters:(id)parameters
{
  parametersCopy = parameters;
  v4 = parametersCopy;
  AnalyticsSendEventLazy();
}

+ (void)sendCriticalEvent:(id)event
{
  v8[1] = *MEMORY[0x1E69E9840];
  eventCopy = event;
  if ([eventCopy length] && objc_msgSend(eventCopy, "length") <= 0x1F3)
  {
    v7 = @"MTCriticalEventMessage";
    v8[0] = eventCopy;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
    [self submitEvent:@"com.apple.MobileTimer.critical" eventParameters:v5];
  }

  v6 = *MEMORY[0x1E69E9840];
}

@end