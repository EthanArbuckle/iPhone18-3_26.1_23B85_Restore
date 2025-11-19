@interface MXAudioStatistics
+ (id)sharedInstance;
- (id)initInternal;
- (void)sendSinglePerformanceMessageForAssertion:(const char *)a3 explanation:(id)a4 activity:(id)a5;
- (void)sendSinglePerformanceMessageForRoutine:(const char *)a3 operationTime:(int64_t)a4 details:(id)a5;
- (void)sendSingleUserPreferredInputMessage:(id)a3 hostApplicationDisplayID:(id)a4 clientInitiator:(id)a5 audioRouteName:(id)a6 isInputOverride:(BOOL)a7;
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

- (void)sendSinglePerformanceMessageForRoutine:(const char *)a3 operationTime:(int64_t)a4 details:(id)a5
{
  if (a4 >= 250000000)
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCString:a3 encoding:4];
    v12 = [objc_alloc(MEMORY[0x1E696AD98]) initWithLongLong:a4];
    [v10 setObject:v11 forKey:@"RoutineName"];
    [v10 setObject:v12 forKey:@"OperationDurationInNanoseconds"];
    if (a5)
    {
      [v10 setObject:a5 forKey:@"OperationDetails"];
    }

    (self->mSendSingleMessage)(v10, 13, 11);
  }
}

- (void)sendSinglePerformanceMessageForAssertion:(const char *)a3 explanation:(id)a4 activity:(id)a5
{
  if (MX_FeatureFlags_IsAssertionActivityReportingEnabled())
  {
    v9 = objc_autoreleasePoolPush();
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCString:a3 encoding:4];
    [v10 setObject:v11 forKey:@"RoutineName"];
    [v10 setObject:a4 forKey:@"AssertionExplanation"];
    [v10 setObject:a5 forKey:@"AssertionActivity"];
    (self->mSendSingleMessage)(v10, 13, 11);

    objc_autoreleasePoolPop(v9);
  }
}

- (void)sendSingleUserPreferredInputMessage:(id)a3 hostApplicationDisplayID:(id)a4 clientInitiator:(id)a5 audioRouteName:(id)a6 isInputOverride:(BOOL)a7
{
  v7 = a7;
  v20 = *MEMORY[0x1E69E9840];
  if (MX_FeatureFlags_IsSystemInputPickerEnabled())
  {
    v13 = objc_autoreleasePoolPush();
    v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v14 setObject:a3 forKey:0x1F2898850];
    if (a6)
    {
      [v14 setObject:a6 forKey:0x1F288ED70];
    }

    if (a5)
    {
      [v14 setObject:a5 forKey:0x1F2898A70];
    }

    if (v7)
    {
      [v14 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", 1), 0x1F2898A90}];
    }

    if (a4)
    {
      [v14 setObject:a4 forKey:0x1F2892E10];
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