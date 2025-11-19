@interface HFAnalytics
+ (Class)eventClassForEventType:(unint64_t)a3;
+ (id)eventNameForEventType:(unint64_t)a3;
+ (void)_sendEvent:(id)a3;
+ (void)sendEvent:(unint64_t)a3 withData:(id)a4;
@end

@implementation HFAnalytics

+ (id)eventNameForEventType:(unint64_t)a3
{
  if (a3 - 1 > 0x3A)
  {
    return @"com.apple.Home.AppForegroundDuration";
  }

  else
  {
    return off_277DFFC00[a3 - 1];
  }
}

+ (Class)eventClassForEventType:(unint64_t)a3
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__HFAnalytics_eventClassForEventType___block_invoke;
  v7[3] = &__block_descriptor_40_e5__8__0l_0;
  v7[4] = a3;
  v3 = __38__HFAnalytics_eventClassForEventType___block_invoke(v7);
  if ([v3 isSubclassOfClass:objc_opt_class()])
  {
    v4 = v3;
  }

  else
  {
    v5 = NSStringFromClass(v3);
    NSLog(&cfstr_InvalidAnalyti.isa, v5);

    v4 = 0;
  }

  return v4;
}

void *__38__HFAnalytics_eventClassForEventType___block_invoke(void *a1)
{
  v2 = a1[4];
  if (v2 <= 0x3B)
  {
    v3 = *off_277DFFDD8[v2];
    a1 = objc_opt_class();
  }

  return a1;
}

+ (void)sendEvent:(unint64_t)a3 withData:(id)a4
{
  v8 = a4;
  v6 = [a1 eventClassForEventType:a3];
  if (v6)
  {
    v7 = [[v6 alloc] initWithData:v8];
    [a1 _sendEvent:v7];
  }
}

+ (void)_sendEvent:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = HFLogForCategory(6uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v10 = v3;
    _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "Sending analytics event: %@", buf, 0xCu);
  }

  v5 = [v3 name];
  v8 = v3;
  v6 = v3;
  AnalyticsSendEventLazy();

  v7 = *MEMORY[0x277D85DE8];
}

@end