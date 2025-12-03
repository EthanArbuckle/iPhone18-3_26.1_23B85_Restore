@interface MXCoreSessionIndependentAudioResource
- (BOOL)requiresExclaveSensor;
- (MXCoreSessionIndependentAudioResource)init;
- (void)activate;
- (void)deactivate;
- (void)dealloc;
@end

@implementation MXCoreSessionIndependentAudioResource

- (MXCoreSessionIndependentAudioResource)init
{
  v3.receiver = self;
  v3.super_class = MXCoreSessionIndependentAudioResource;
  return [(MXCoreSessionBase *)&v3 init];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MXCoreSessionIndependentAudioResource;
  [(MXCoreSessionBase *)&v2 dealloc];
}

- (void)activate
{
  v19 = *MEMORY[0x1E69E9840];
  if (![(MXCoreSessionBase *)self isActive])
  {
    [(MXCoreSessionBase *)self setIsActive:1];
    if (dword_1EB75DE40)
    {
      v17 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [(MXCoreSessionBase *)self setWaitingToResume:0, v10, v11];
    CMSUtility_CreateReporterIDIfNeeded(self);
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    reporterIDs = [(MXCoreSessionBase *)self reporterIDs];
    v5 = [(NSArray *)reporterIDs countByEnumeratingWithState:&v12 objects:v18 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v13;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(reporterIDs);
          }

          CMSUtility_SetAudioServiceTypeForReporterID(self, [*(*(&v12 + 1) + 8 * i) longLongValue]);
        }

        v6 = [(NSArray *)reporterIDs countByEnumeratingWithState:&v12 objects:v18 count:16];
      }

      while (v6);
    }

    CMSUtility_StartReporterWithAudioStatistics(self);
    CMSMVAUtility_UpdateSessionInfoAndReporterIDsOnVA(self, 0);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)deactivate
{
  v7 = *MEMORY[0x1E69E9840];
  if ([(MXCoreSessionBase *)self isActive])
  {
    [(MXCoreSessionIndependentAudioResource *)self updateIsPlaying:0];
    [(MXCoreSessionIndependentAudioResource *)self updateIsRecording:0];
    CMSUtility_StopReporterWithAudioStatistics(self);
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [(MXCoreSessionBase *)self setIsActive:0, v5, v6];
    [(MXCoreSessionBase *)self setIsPlayingStartTime:0];
    [(MXCoreSessionBase *)self setIsPlayingStopTime:0];
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (BOOL)requiresExclaveSensor
{
  if (![(MXCoreSessionBase *)self isRecording]|| [(MXCoreSessionBase *)self isRecordingMuted])
  {
    return 0;
  }

  return [(MXCoreSessionBase *)self isUsingBuiltInMic];
}

@end