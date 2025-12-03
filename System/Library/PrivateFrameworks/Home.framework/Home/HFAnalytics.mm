@interface HFAnalytics
+ (Class)eventClassForEventType:(unint64_t)type;
+ (id)eventNameForEventType:(unint64_t)type;
+ (void)_sendEvent:(id)event;
+ (void)sendEvent:(unint64_t)event withData:(id)data;
@end

@implementation HFAnalytics

+ (id)eventNameForEventType:(unint64_t)type
{
  if (type - 1 > 0x3A)
  {
    return @"com.apple.Home.AppForegroundDuration";
  }

  else
  {
    return off_277DFFC00[type - 1];
  }
}

+ (Class)eventClassForEventType:(unint64_t)type
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__HFAnalytics_eventClassForEventType___block_invoke;
  v7[3] = &__block_descriptor_40_e5__8__0l_0;
  v7[4] = type;
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

+ (void)sendEvent:(unint64_t)event withData:(id)data
{
  dataCopy = data;
  v6 = [self eventClassForEventType:event];
  if (v6)
  {
    v7 = [[v6 alloc] initWithData:dataCopy];
    [self _sendEvent:v7];
  }
}

+ (void)_sendEvent:(id)event
{
  v11 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v4 = HFLogForCategory(6uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v10 = eventCopy;
    _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "Sending analytics event: %@", buf, 0xCu);
  }

  name = [eventCopy name];
  v8 = eventCopy;
  v6 = eventCopy;
  AnalyticsSendEventLazy();

  v7 = *MEMORY[0x277D85DE8];
}

@end