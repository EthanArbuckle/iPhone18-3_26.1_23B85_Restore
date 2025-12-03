@interface SessionFilterPreferenceProvider
- (BOOL)touchDisabled;
- (SessionFilterPreferenceProvider)init;
- (void)continuousRecordingDeleteForAllServicesWithReply:(id)reply;
- (void)continuousRecordingEnabledWithReply:(id)reply;
- (void)siriRemoteTouchDisabledWithReply:(id)reply;
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
  tvDefaults = [(SessionFilterPreferenceProvider *)self tvDefaults];
  v4 = [tvDefaults objectForKey:@"RemoteClickpadMode"];

  if (v4)
  {
    tvDefaults2 = [(SessionFilterPreferenceProvider *)self tvDefaults];
    v6 = [tvDefaults2 integerForKey:@"RemoteClickpadMode"];

    if (v6)
    {
      if (v6 == 1)
      {
        return 1;
      }

      logHandle = [(SessionFilterPreferenceProvider *)self logHandle];
      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
      {
        [(SessionFilterPreferenceProvider *)v6 touchDisabled];
      }
    }
  }

  return 0;
}

- (void)siriRemoteTouchDisabledWithReply:(id)reply
{
  replyCopy = reply;
  touchDisabled = [(SessionFilterPreferenceProvider *)self touchDisabled];
  logHandle = [(SessionFilterPreferenceProvider *)self logHandle];
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = touchDisabled;
    _os_log_impl(&_mh_execute_header, logHandle, OS_LOG_TYPE_DEFAULT, "Touch disabled: %d", v7, 8u);
  }

  replyCopy[2](replyCopy, touchDisabled);
}

- (void)continuousRecordingEnabledWithReply:(id)reply
{
  replyCopy = reply;
  continuousRecordingDefaults = [(SessionFilterPreferenceProvider *)self continuousRecordingDefaults];
  v6 = [continuousRecordingDefaults objectForKey:@"ContinuousRecordingV3"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bOOLValue = [v6 BOOLValue];
  }

  else if (v6)
  {
    logHandle = [(SessionFilterPreferenceProvider *)self logHandle];
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
    {
      [(SessionFilterPreferenceProvider *)v6 continuousRecordingEnabledWithReply:logHandle];
    }

    bOOLValue = 0;
  }

  else
  {
    bOOLValue = 1;
  }

  replyCopy[2](replyCopy, bOOLValue);
}

- (void)continuousRecordingDeleteForAllServicesWithReply:(id)reply
{
  replyCopy = reply;
  continuousRecordingDefaults = [(SessionFilterPreferenceProvider *)self continuousRecordingDefaults];
  v6 = [continuousRecordingDefaults objectForKey:@"deleteForAllServices"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bOOLValue = [v6 BOOLValue];
  }

  else
  {
    if (v6)
    {
      logHandle = [(SessionFilterPreferenceProvider *)self logHandle];
      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
      {
        [(SessionFilterPreferenceProvider *)v6 continuousRecordingDeleteForAllServicesWithReply:logHandle];
      }
    }

    bOOLValue = 1;
  }

  replyCopy[2](replyCopy, bOOLValue);
}

- (void)touchDisabled
{
  v2 = 134217984;
  selfCopy = self;
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