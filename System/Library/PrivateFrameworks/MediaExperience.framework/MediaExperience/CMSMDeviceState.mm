@interface CMSMDeviceState
@end

@implementation CMSMDeviceState

uint64_t __CMSMDeviceState_IsAudiomxd_block_invoke()
{
  result = [objc_msgSend(objc_msgSend(objc_msgSend(MEMORY[0x1E696AAE8] "mainBundle")];
  CMSMDeviceState_IsAudiomxd_sIsAudiomxd = result;
  return result;
}

uint64_t __CMSMDeviceState_Initialize_block_invoke()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = softLinkBKSHIDServicesGetRingerState[0]();
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  byte_1EB75D361 = v0 != 0;
  v2 = [MXSessionManager sharedInstance:v5];
  [(MXSessionManager *)v2 setSilentModeEnabled:byte_1EB75D361 == 0];
  [+[MXSessionManager sharedInstance](MXSessionManager setSilentModeReason:"setSilentModeReason:", @"MXSessionManager startup HID ringer switch state"];
  result = [+[MXSessionManager sharedInstance](MXSessionManager setSilentModeEnabledUntilTime:"setSilentModeEnabledUntilTime:", 0];
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __CMSMDeviceState_SupportsBeacon_block_invoke()
{
  v3 = *MEMORY[0x1E69E9840];
  result = MGGetBoolAnswer();
  CMSMDeviceState_SupportsBeacon_supportsBeaconMode = result;
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    result = fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void __CMSMDeviceState_CopyHardwareSafetySession_block_invoke()
{
  v9 = *MEMORY[0x1E69E9840];
  if (CMSessionCreate(&qword_1EB75D3C8))
  {
    v0 = 1;
  }

  else
  {
    v0 = qword_1EB75D3C8 == 0;
  }

  if (v0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    if (qword_1EB75D3C8)
    {
      CFRelease(qword_1EB75D3C8);
      qword_1EB75D3C8 = 0;
    }

    v8 = *MEMORY[0x1E69E9840];
  }

  else
  {
    _CMSessionSetProperty(qword_1EB75D3C8, @"ClientName", @"HardwareSafetySession");
    v2 = qword_1EB75D3C8;
    v3 = [MEMORY[0x1E696AD98] numberWithInt:getpid()];
    _CMSessionSetProperty(v2, @"ClientPID", v3);
    _CMSessionSetProperty(qword_1EB75D3C8, @"AudioHardwareControlFlags", [MEMORY[0x1E696AD98] numberWithUnsignedInt:0]);
    _CMSessionSetProperty(qword_1EB75D3C8, @"IAmHardwareSafetySession", [MEMORY[0x1E696AD98] numberWithBool:1]);
    _CMSessionSetProperty(qword_1EB75D3C8, @"DoesntActuallyPlayAudio", [MEMORY[0x1E696AD98] numberWithBool:1]);
    _CMSessionSetProperty(qword_1EB75D3C8, @"InterruptionStyle", [MEMORY[0x1E696AD98] numberWithUnsignedInt:1]);
    _CMSessionSetProperty(qword_1EB75D3C8, @"ClientPriority", [MEMORY[0x1E696AD98] numberWithUnsignedInt:10]);
    _CMSessionSetProperty(qword_1EB75D3C8, @"PrefersSpeechDetectEnabled", [MEMORY[0x1E696AD98] numberWithBool:0]);
    v4 = qword_1EB75D3C8;
    LODWORD(v5) = 1036831949;
    v6 = [MEMORY[0x1E696AD98] numberWithFloat:v5];
    v7 = *MEMORY[0x1E69E9840];

    _CMSessionSetProperty(v4, @"InterruptionFadeDuration", v6);
  }
}

uint64_t __CMSMDeviceState_SupportsMediaMultitasking_block_invoke()
{
  result = MX_FeatureFlags_IsMediaMultitaskingEnabled();
  if (byte_1EB75D321)
  {
    v1 = result == 0;
  }

  else
  {
    v1 = 1;
  }

  v2 = !v1;
  CMSMDeviceState_SupportsMediaMultitasking_supportsMediaMultitasking = v2;
  return result;
}

uint64_t __CMSMDeviceState_SupportsShortFormOutputMutingAudioPolicy_block_invoke()
{
  result = MX_FeatureFlags_IsShortFormOutputMutingEnabled();
  if (result)
  {
    if (byte_1EB75D321)
    {
      v1 = 1;
    }

    else
    {
      v1 = byte_1EB75D322 != 0;
    }
  }

  else
  {
    v1 = 0;
  }

  CMSMDeviceState_SupportsShortFormOutputMutingAudioPolicy_supportsOutputMuting = v1;
  return result;
}

uint64_t __CMSMDeviceState_DeviceHasHardwareRingerSwitch_block_invoke()
{
  v3 = *MEMORY[0x1E69E9840];
  result = MGGetBoolAnswer();
  CMSMDeviceState_DeviceHasHardwareRingerSwitch_hasPhysicalSwitch = result;
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    result = fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void __CMSMDeviceState_UpdateSmartCoverState_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  CMSMUtility_UpdateSecureMicrophonePolicy(0);
  v1 = *MEMORY[0x1E69E9840];
}

uint64_t __CMSMDeviceState_IsHomePodHub_block_invoke()
{
  v3 = *MEMORY[0x1E69E9840];
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    result = fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __CMSMDeviceState_HasMonoSpeakerConfiguration_block_invoke()
{
  v3 = *MEMORY[0x1E69E9840];
  result = MGGetProductType();
  CMSMDeviceState_HasMonoSpeakerConfiguration_hasMonoSpeakerConfiguration = result == 1872992317;
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    result = fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __CMSMDeviceState_DeviceHasExclaveCapability_block_invoke()
{
  v3 = *MEMORY[0x1E69E9840];
  result = MGGetBoolAnswer();
  CMSMDeviceState_DeviceHasExclaveCapability_deviceHasExclaveCapability = result;
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    result = fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

@end