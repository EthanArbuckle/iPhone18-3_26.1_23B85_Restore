@interface RegisterForDeviceIsLockedNotification
@end

@implementation RegisterForDeviceIsLockedNotification

uint64_t __cmsmdevicestate_RegisterForDeviceIsLockedNotification_block_invoke()
{
  v4 = *MEMORY[0x1E69E9840];
  if (sMKBGetLockStatus)
  {
    v0 = sMKBGetLockStatus(0) != 0;
  }

  else
  {
    v0 = 0;
  }

  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexLock();
  byte_1EB75D32A = v0;
  result = FigSimpleMutexUnlock();
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

@end