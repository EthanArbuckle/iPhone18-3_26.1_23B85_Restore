@interface CMSystemSoundMgr
@end

@implementation CMSystemSoundMgr

void __CMSystemSoundMgr_Initialize_block_invoke()
{
  v0 = MXGetSerialQueue();

  MXDispatchAsyncAndWait("CMSystemSoundMgr_Initialize_block_invoke", "CMSessionManager_SystemSounds.m", 327, 0, 0, v0, &__block_literal_global_4_2);
}

uint64_t __CMSystemSoundMgr_Initialize_block_invoke_2()
{
  v5 = *MEMORY[0x1E69E9840];
  FigSimpleMutexLock();
  v0 = gCMSS_0;
  if (gCMSS_0)
  {
    v1 = dword_1EB75DE40;
    do
    {
      if (v1)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v1 = dword_1EB75DE40;
      }

      v0 = *v0;
    }

    while (v0);
  }

  result = FigSimpleMutexUnlock();
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

@end