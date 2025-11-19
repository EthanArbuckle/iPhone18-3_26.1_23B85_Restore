@interface PowerManager
@end

@implementation PowerManager

id __PowerManager_InitializeCPMSForHaptics_block_invoke()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3052000000;
  v7 = __Block_byref_object_copy__8;
  v8 = __Block_byref_object_dispose__8;
  v9 = 0;
  v0 = MXGetSerialQueue();
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __PowerManager_InitializeCPMSForHaptics_block_invoke_2;
  v3[3] = &unk_1E7AE73A0;
  v3[4] = &v4;
  MXDispatchAsyncAndWait("PowerManager_InitializeCPMSForHaptics_block_invoke", "PowerManager_Haptics.m", 244, 0, 0, v0, v3);
  v1 = v5[5];
  _Block_object_dispose(&v4, 8);
  return v1;
}

uint64_t __PowerManager_InitializeCPMSForHaptics_block_invoke_2(uint64_t a1)
{
  result = vaemCopyCPMSPowerBudget(6);
  *(*(*(a1 + 32) + 8) + 40) = result;
  return result;
}

void __PowerManager_InitializeCPMSForHaptics_block_invoke_3(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (dword_1EB75DE40)
  {
    v9 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v4 = a2;
  v5 = MXGetSerialQueue();
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __PowerManager_InitializeCPMSForHaptics_block_invoke_2_6;
  v7[3] = &unk_1E7AE7CE0;
  v7[4] = a2;
  MXDispatchAsync("PowerManager_InitializeCPMSForHaptics_block_invoke", "PowerManager_Haptics.m", 276, 0, 0, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __PowerManager_InitializeCPMSForHaptics_block_invoke_2_6(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2)
  {
    if (qword_1ED6D2F40 && (CFRelease(qword_1ED6D2F40), qword_1ED6D2F40 = 0, (v2 = *(a1 + 32)) == 0))
    {
      v3 = 0;
    }

    else
    {
      v3 = CFRetain(v2);
    }

    qword_1ED6D2F40 = v3;
    PowerManager_SetPowerBudgetOnVAAndSendAcknowledgementToCPMSForResource(6, qword_1ED6D2F30, v3);
  }

  else
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v5 = *MEMORY[0x1E69E9840];
}

id __PowerManager_InitializeCPMSForAudio_block_invoke()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3052000000;
  v7 = __Block_byref_object_copy__14;
  v8 = __Block_byref_object_dispose__14;
  v9 = 0;
  v0 = MXGetSerialQueue();
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __PowerManager_InitializeCPMSForAudio_block_invoke_2;
  v3[3] = &unk_1E7AE73A0;
  v3[4] = &v4;
  MXDispatchAsyncAndWait("PowerManager_InitializeCPMSForAudio_block_invoke", "PowerManager_Audio.m", 176, 0, 0, v0, v3);
  v1 = v5[5];
  _Block_object_dispose(&v4, 8);
  return v1;
}

uint64_t __PowerManager_InitializeCPMSForAudio_block_invoke_2(uint64_t a1)
{
  result = vaemCopyCPMSPowerBudget(5);
  *(*(*(a1 + 32) + 8) + 40) = result;
  return result;
}

void __PowerManager_InitializeCPMSForAudio_block_invoke_3(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (dword_1EB75DE40)
  {
    v9 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v4 = a2;
  v5 = MXGetSerialQueue();
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __PowerManager_InitializeCPMSForAudio_block_invoke_2_6;
  v7[3] = &unk_1E7AE7CE0;
  v7[4] = a2;
  MXDispatchAsync("PowerManager_InitializeCPMSForAudio_block_invoke", "PowerManager_Audio.m", 201, 0, 0, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __PowerManager_InitializeCPMSForAudio_block_invoke_2_6(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2)
  {
    if (sCMSMPowerManagerForAudio_6 && (CFRelease(sCMSMPowerManagerForAudio_6), sCMSMPowerManagerForAudio_6 = 0, (v2 = *(a1 + 32)) == 0))
    {
      v3 = 0;
    }

    else
    {
      v3 = CFRetain(v2);
    }

    sCMSMPowerManagerForAudio_6 = v3;
    PowerManager_SetPowerBudgetOnVAAndSendAcknowledgementToCPMSForResource(5, sCMSMPowerManagerForAudio_2, v3);
  }

  else
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v5 = *MEMORY[0x1E69E9840];
}

@end