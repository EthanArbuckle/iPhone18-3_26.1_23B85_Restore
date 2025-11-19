@interface SessionFilterPreferenceProvider
- (BOOL)touchDisabled;
- (SessionFilterPreferenceProvider)init;
- (void)continuousRecordingDeleteForAllServicesWithReply:(id)a3;
- (void)continuousRecordingEnabledWithReply:(id)a3;
- (void)siriRemoteTouchDisabledWithReply:(id)a3;
- (void)touchDisabled;
@end

@implementation SessionFilterPreferenceProvider

- (SessionFilterPreferenceProvider)init
{
  v10.receiver = self;
  v10.super_class = SessionFilterPreferenceProvider;
  v2 = [(SessionFilterPreferenceProvider *)&v10 init];
  if (v2)
  {
    v3 = MTLoggingPreferenceProvider();
    logHandle = v2->_logHandle;
    v2->_logHandle = v3;

    v5 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.TVPeripheralServices"];
    tvDefaults = v2->_tvDefaults;
    v2->_tvDefaults = v5;

    v7 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.ContinuousRecording"];
    continuousRecordingDefaults = v2->_continuousRecordingDefaults;
    v2->_continuousRecordingDefaults = v7;
  }

  return v2;
}

- (BOOL)touchDisabled
{
  v3 = [(SessionFilterPreferenceProvider *)self tvDefaults];
  v4 = [v3 objectForKey:@"RemoteClickpadMode"];

  if (v4)
  {
    v5 = [(SessionFilterPreferenceProvider *)self tvDefaults];
    v6 = [v5 integerForKey:@"RemoteClickpadMode"];

    if (v6)
    {
      if (v6 == 1)
      {
        return 1;
      }

      v8 = [(SessionFilterPreferenceProvider *)self logHandle];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [(SessionFilterPreferenceProvider *)v6 touchDisabled];
      }
    }
  }

  return 0;
}

- (void)siriRemoteTouchDisabledWithReply:(id)a3
{
  v4 = a3;
  v5 = [(SessionFilterPreferenceProvider *)self touchDisabled];
  v6 = [(SessionFilterPreferenceProvider *)self logHandle];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Touch disabled: %d", v7, 8u);
  }

  v4[2](v4, v5);
}

- (void)continuousRecordingEnabledWithReply:(id)a3
{
  v4 = a3;
  v5 = [(SessionFilterPreferenceProvider *)self continuousRecordingDefaults];
  v6 = [v5 objectForKey:@"ContinuousRecordingV3"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 BOOLValue];
  }

  else if (v6)
  {
    v8 = [(SessionFilterPreferenceProvider *)self logHandle];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(SessionFilterPreferenceProvider *)v6 continuousRecordingEnabledWithReply:v8];
    }

    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v4[2](v4, v7);
}

- (void)continuousRecordingDeleteForAllServicesWithReply:(id)a3
{
  v4 = a3;
  v5 = [(SessionFilterPreferenceProvider *)self continuousRecordingDefaults];
  v6 = [v5 objectForKey:@"deleteForAllServices"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 BOOLValue];
  }

  else
  {
    if (v6)
    {
      v8 = [(SessionFilterPreferenceProvider *)self logHandle];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [(SessionFilterPreferenceProvider *)v6 continuousRecordingDeleteForAllServicesWithReply:v8];
      }
    }

    v7 = 1;
  }

  v4[2](v4, v7);
}

- (void)touchDisabled
{
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unrecognized remote clickpad mode value %ld", &v2, 0xCu);
}

- (void)continuousRecordingEnabledWithReply:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v2 = 138412802;
  v3 = @"com.apple.ContinuousRecording";
  v4 = 2112;
  v5 = @"ContinuousRecordingV3";
  v6 = 2112;
  v7 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Preference domain %@ key %@ invalid value %@", &v2, 0x20u);
}

- (void)continuousRecordingDeleteForAllServicesWithReply:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v2 = 138412802;
  v3 = @"com.apple.ContinuousRecording";
  v4 = 2112;
  v5 = @"deleteForAllServices";
  v6 = 2112;
  v7 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Preference domain %@ key %@ invalid value %@", &v2, 0x20u);
}

@end