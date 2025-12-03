@interface DEDCollectionNotification
+ (BOOL)shouldFireNotificationForTransport:(int64_t)transport;
+ (id)log;
+ (void)configureEventStream;
+ (void)fireNotificationWithFinishingMove:(int64_t)move;
+ (void)handleDistributedNotification:(id)notification;
+ (void)postNotificationToNotificationCenterForFinishingMove:(int64_t)move;
@end

@implementation DEDCollectionNotification

+ (id)log
{
  if (log_onceToken_5 != -1)
  {
    +[DEDCollectionNotification log];
  }

  v3 = log_log_4;

  return v3;
}

void __32__DEDCollectionNotification_log__block_invoke()
{
  v2 = +[DEDConfiguration sharedInstance];
  v0 = os_log_create([v2 loggingSubsystem], "collect-notify");
  v1 = log_log_4;
  log_log_4 = v0;
}

+ (BOOL)shouldFireNotificationForTransport:(int64_t)transport
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = +[DEDUtils platform];
  v6 = [v5 isEqualToString:@"macos"];

  if (v6)
  {
    processInfo = [MEMORY[0x277CCAC38] processInfo];
    environment = [processInfo environment];
    v9 = [environment objectForKey:@"DED_FORCE_COLLECT_NOTIFY"];

    if (v9)
    {
      v10 = [self log];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 136315138;
        v14 = "+[DEDCollectionNotification shouldFireNotificationForTransport:]";
        _os_log_impl(&dword_248AD7000, v10, OS_LOG_TYPE_DEFAULT, "%s is forced on, notifications will be forcibly delivered.", &v13, 0xCu);
      }

      result = 1;
    }

    else
    {
      result = transport > 2;
    }
  }

  else
  {
    result = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

+ (void)fireNotificationWithFinishingMove:(int64_t)move
{
  v3 = [self log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [DEDCollectionNotification fireNotificationWithFinishingMove:v3];
  }
}

+ (void)handleDistributedNotification:(id)notification
{
  notificationCopy = notification;
  name = [notificationCopy name];
  v6 = [name isEqualToString:@"com.apple.diagnosticextensionsd.collection-started"];

  if (v6)
  {
    v7 = [self log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [DEDCollectionNotification handleDistributedNotification:v7];
    }

    object = [notificationCopy object];
    uTF8String = [object UTF8String];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:uTF8String];
    if ([v10 isEqualToString:@"FBA"])
    {
      v11 = 1;
    }

    else if ([v10 isEqualToString:@"TTR"])
    {
      v11 = 2;
    }

    else if ([v10 isEqualToString:@"CloudKit"])
    {
      v11 = 3;
    }

    else if ([v10 isEqualToString:@"Testing"])
    {
      v11 = 4;
    }

    else
    {
      v11 = 0;
    }

    [self postNotificationToNotificationCenterForFinishingMove:v11];
  }
}

+ (void)postNotificationToNotificationCenterForFinishingMove:(int64_t)move
{
  v3 = [self log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [DEDCollectionNotification fireNotificationWithFinishingMove:v3];
  }
}

+ (void)configureEventStream
{
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __49__DEDCollectionNotification_configureEventStream__block_invoke;
  handler[3] = &__block_descriptor_40_e33_v16__0__NSObject_OS_xpc_object__8l;
  handler[4] = self;
  xpc_set_event_stream_handler("com.apple.distnoted.matching", MEMORY[0x277D85CD0], handler);
}

void __49__DEDCollectionNotification_configureEventStream__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3 && MEMORY[0x24C1E56F0](v3) == MEMORY[0x277D86468])
  {
    v5 = [*(a1 + 32) log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_248AD7000, v5, OS_LOG_TYPE_DEFAULT, "XPC Event for distnoted received.", v10, 2u);
    }

    string = xpc_dictionary_get_string(v4, "Object");
    v7 = *(a1 + 32);
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:string];
    if ([v8 isEqualToString:@"FBA"])
    {
      v9 = 1;
    }

    else if ([v8 isEqualToString:@"TTR"])
    {
      v9 = 2;
    }

    else if ([v8 isEqualToString:@"CloudKit"])
    {
      v9 = 3;
    }

    else if ([v8 isEqualToString:@"Testing"])
    {
      v9 = 4;
    }

    else
    {
      v9 = 0;
    }

    [v7 postNotificationToNotificationCenterForFinishingMove:v9];
  }
}

@end