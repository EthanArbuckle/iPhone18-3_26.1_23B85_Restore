@interface MXSessionIndependentAudioResource
- (MXSessionIndependentAudioResource)init;
- (void)dealloc;
- (void)dumpDebugInfo;
@end

@implementation MXSessionIndependentAudioResource

- (MXSessionIndependentAudioResource)init
{
  v3.receiver = self;
  v3.super_class = MXSessionIndependentAudioResource;
  return [(MXSessionBase *)&v3 init];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MXSessionIndependentAudioResource;
  [(MXSessionBase *)&v2 dealloc];
}

- (void)dumpDebugInfo
{
  v7 = *MEMORY[0x1E69E9840];
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    if (dword_1EB75DE40)
    {
      v3 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      if (dword_1EB75DE40)
      {
        v4 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        if (dword_1EB75DE40)
        {
          v5 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }
      }
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

@end