@interface RegisterForDeviceThermalLevelNotification
@end

@implementation RegisterForDeviceThermalLevelNotification

void __cmsmdevicestate_RegisterForDeviceThermalLevelNotification_block_invoke(uint64_t a1, int a2)
{
  v3 = MXGetSerialQueue();
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __cmsmdevicestate_RegisterForDeviceThermalLevelNotification_block_invoke_2;
  v4[3] = &__block_descriptor_36_e5_v8__0l;
  v5 = a2;
  MXDispatchAsync("cmsmdevicestate_RegisterForDeviceThermalLevelNotification_block_invoke", "CMSessionManager_DeviceState.m", 1595, 0, 0, v3, v4);
}

void __cmsmdevicestate_RegisterForDeviceThermalLevelNotification_block_invoke_2(uint64_t a1)
{
  state64[20] = *MEMORY[0x1E69E9840];
  state64[0] = 0;
  if (notify_get_state(*(a1 + 32), state64))
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  else if (state64[0] < 0x28)
  {
    if (dword_1EB75DE40)
    {
      v3 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    CMSMDeviceState_DeactivateHardwareSafetySession(@"non-resumable.thermalLevelDisengaged");
  }

  else
  {
    if (dword_1EB75DE40)
    {
      v2 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    CMSMDeviceState_InterruptAllActiveSessionsAndSystemSounds();
  }

  v4 = *MEMORY[0x1E69E9840];
}

@end