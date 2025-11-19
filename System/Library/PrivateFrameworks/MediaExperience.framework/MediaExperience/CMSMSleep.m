@interface CMSMSleep
@end

@implementation CMSMSleep

void __CMSMSleep_HandleIdleSleep_block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) idleSleepPreventorUpdaterTimer])
  {
    dispatch_source_cancel([*(a1 + 32) idleSleepPreventorUpdaterTimer]);
    [*(a1 + 32) setIdleSleepPreventorUpdaterTimer:0];
  }

  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) idleSleepPreventorAllocated];
  if (v2)
  {
    if ((v3 & 1) == 0)
    {
      v4 = 1;
LABEL_8:
      v5 = *(a1 + 32);
      v6 = MXGetSerialQueue();
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __CMSMSleep_HandleIdleSleep_block_invoke_2;
      v7[3] = &unk_1E7AEADD8;
      v7[4] = *(a1 + 32);
      v8 = v4;
      [v5 setIdleSleepPreventorUpdaterTimer:{MXDispatchUtilityCreateOneShotTimer(10.0, "CMSMSleep_HandleIdleSleep_block_invoke", "CMSessionManager_Sleep.m", 254, 0, 0, v6, v7, 0, 0)}];
    }
  }

  else if (v3)
  {
    v4 = 0;
    goto LABEL_8;
  }
}

void __CMSMSleep_ExtendPlaybackProcessAssertion_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = CMSMUtility_CopyMXCoreSessionWithID(*(a1 + 32));
  if (v1)
  {
    v2 = v1;
    if ([v1 extendBackgroundAppAssertionTimer])
    {
      dispatch_source_cancel([v2 extendBackgroundAppAssertionTimer]);
      [v2 setExtendBackgroundAppAssertionTimer:0];
    }

    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (([v2 isPlaying] & 1) == 0)
    {
      CMSMSleep_ReleasePlaybackProcessAssertion(v2);
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __CMSMSleep_FetchTemporaryPlaybackProcessAssertion_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = [MXSessionManagerBase copySessionWithMXCoreSessionID:*(a1 + 32)];
  if (v1)
  {
    v2 = v1;
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if ([v2 resumeBackgroundAppUpdaterTimer])
    {
      dispatch_source_cancel([v2 resumeBackgroundAppUpdaterTimer]);
      [v2 setResumeBackgroundAppUpdaterTimer:0];
    }

    MX_RunningBoardServices_InvalidateAssertion([v2 resumeAssertionRef]);
    [v2 setResumeAssertionRef:0];
    if ([v2 isMemberOfClass:objc_opt_class()])
    {
      [v2 setIsTemporaryAssertionEnabled:0];
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

@end