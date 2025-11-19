@interface MTAnalytics
+ (void)sendCriticalEvent:(id)a3;
+ (void)submitEvent:(id)a3 eventParameters:(id)a4;
@end

@implementation MTAnalytics

+ (void)submitEvent:(id)a3 eventParameters:(id)a4
{
  v5 = a4;
  v4 = v5;
  AnalyticsSendEventLazy();
}

+ (void)sendCriticalEvent:(id)a3
{
  v8[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 length] && objc_msgSend(v4, "length") <= 0x1F3)
  {
    v7 = @"MTCriticalEventMessage";
    v8[0] = v4;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
    [a1 submitEvent:@"com.apple.MobileTimer.critical" eventParameters:v5];
  }

  v6 = *MEMORY[0x1E69E9840];
}

@end