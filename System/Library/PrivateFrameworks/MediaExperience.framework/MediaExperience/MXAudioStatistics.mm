@interface MXAudioStatistics
+ (id)sharedInstance;
- (id)initInternal;
- (void)sendSinglePerformanceMessageForAssertion:(const char *)assertion explanation:(id)explanation activity:(id)activity;
- (void)sendSinglePerformanceMessageForRoutine:(const char *)routine operationTime:(int64_t)time details:(id)details;
- (void)sendSingleUserPreferredInputMessage:(id)message hostApplicationDisplayID:(id)d clientInitiator:(id)initiator audioRouteName:(id)name isInputOverride:(BOOL)override;
@end

@implementation MXAudioStatistics

+ (id)sharedInstance
{
  if (sharedInstance_once != -1)
  {
    +[MXAudioStatistics sharedInstance];
  }

  return gAudioStatistics;
}

void *__35__MXAudioStatistics_sharedInstance__block_invoke()
{
  result = dlopen("/usr/lib/libAudioStatistics.dylib", 1);
  if (result)
  {
    v1 = result;
    gAudioStatistics = [[MXAudioStatistics alloc] initInternal];
    result = dlsym(v1, "CAReportingClientSendSingleMessage");
    *(gAudioStatistics + 8) = result;
  }

  return result;
}

- (id)initInternal
{
  v3.receiver = self;
  v3.super_class = MXAudioStatistics;
  return [(MXAudioStatistics *)&v3 init];
}

- (void)sendSinglePerformanceMessageForRoutine:(const char *)routine operationTime:(int64_t)time details:(id)details
{
  if (time >= 250000000)
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCString:routine encoding:4];
    v12 = [objc_alloc(MEMORY[0x1E696AD98]) initWithLongLong:time];
    [v10 setObject:v11 forKey:@"RoutineName"];
    [v10 setObject:v12 forKey:@"OperationDurationInNanoseconds"];
    if (details)
    {
      [v10 setObject:details forKey:@"OperationDetails"];
    }

    (self->mSendSingleMessage)(v10, 13, 11);
  }
}

- (void)sendSinglePerformanceMessageForAssertion:(const char *)assertion explanation:(id)explanation activity:(id)activity
{
  if (MX_FeatureFlags_IsAssertionActivityReportingEnabled())
  {
    v9 = objc_autoreleasePoolPush();
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCString:assertion encoding:4];
    [v10 setObject:v11 forKey:@"RoutineName"];
    [v10 setObject:explanation forKey:@"AssertionExplanation"];
    [v10 setObject:activity forKey:@"AssertionActivity"];
    (self->mSendSingleMessage)(v10, 13, 11);

    objc_autoreleasePoolPop(v9);
  }
}

- (void)sendSingleUserPreferredInputMessage:(id)message hostApplicationDisplayID:(id)d clientInitiator:(id)initiator audioRouteName:(id)name isInputOverride:(BOOL)override
{
  overrideCopy = override;
  v20 = *MEMORY[0x1E69E9840];
  if (MX_FeatureFlags_IsSystemInputPickerEnabled())
  {
    v13 = objc_autoreleasePoolPush();
    v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v14 setObject:message forKey:0x1F2898850];
    if (name)
    {
      [v14 setObject:name forKey:0x1F288ED70];
    }

    if (initiator)
    {
      [v14 setObject:initiator forKey:0x1F2898A70];
    }

    if (overrideCopy)
    {
      [v14 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", 1), 0x1F2898A90}];
    }

    if (d)
    {
      [v14 setObject:d forKey:0x1F2892E10];
      v15 = kMXUserPreferredInputSelectionLog_SelectionType_App;
    }

    else
    {
      v15 = kMXUserPreferredInputSelectionLog_SelectionType_Default;
    }

    [v14 setObject:*v15 forKey:0x1F2898A10];
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [(MXAudioStatistics *)self sendSingleMessageWithDictionary:v14 eventCategory:3 eventType:0, v18, v19];

    objc_autoreleasePoolPop(v13);
  }

  v17 = *MEMORY[0x1E69E9840];
}

@end