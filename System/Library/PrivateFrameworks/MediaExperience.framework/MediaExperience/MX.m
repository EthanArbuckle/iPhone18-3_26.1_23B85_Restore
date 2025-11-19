@interface MX
@end

@implementation MX

void __MX_RunningBoardServices_StartMonitoringForPID_block_invoke(uint64_t a1, void *a2)
{
  [a2 setPredicates:{objc_msgSend(*(a1 + 32), "allObjects")}];
  v3 = *(a1 + 32);
}

void __MX_SystemStatus_PublishRecordingClientsInfo_block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  if (dword_1EB75DE40)
  {
    v17 = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v19 = 0;
  v20 = &v19;
  v21 = 0x3052000000;
  v22 = __Block_byref_object_copy__4;
  v23 = __Block_byref_object_dispose__4;
  v24 = dispatch_semaphore_create(0);
  if (!v20[5])
  {
    *type = 0;
    v15 = OS_LOG_TYPE_DEFAULT;
    v3 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __MX_SystemStatus_PublishRecordingClientsInfo_block_invoke_23;
  v13[3] = &unk_1E7AEB2A0;
  v14 = *(a1 + 32);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __MX_SystemStatus_PublishRecordingClientsInfo_block_invoke_2;
  v12[3] = &unk_1E7AE73A0;
  v12[4] = &v19;
  [stMediaStatusDomainPublisher updateVolatileDataWithBlock:v13 completion:{v12, v10, v11}];
  v4 = dispatch_time(0, 3000000000);
  if (dispatch_semaphore_wait(v20[5], v4))
  {
    *type = 0;
    v15 = OS_LOG_TYPE_DEFAULT;
    v5 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v6 = *type;
    if (os_log_type_enabled(v5, v15))
    {
      v7 = v6;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFE;
    }

    if (v7)
    {
      v17 = 136315138;
      v18 = "MX_SystemStatus_PublishRecordingClientsInfo_block_invoke_3";
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexLock();
  v8 = v20[5];
  if (v8)
  {
    dispatch_release(v8);
    v20[5] = 0;
  }

  FigSimpleMutexUnlock();

  _Block_object_dispose(&v19, 8);
  v9 = *MEMORY[0x1E69E9840];
}

uint64_t __MX_SystemStatus_PublishRecordingClientsInfo_block_invoke_23(uint64_t a1, void *a2)
{
  [a2 setMicrophoneAttributions:{objc_msgSend(*(a1 + 32), "allObjects")}];
  v4 = *(a1 + 40);

  return [a2 setMutedAudioRecordingAttributions:v4];
}

uint64_t __MX_SystemStatus_PublishRecordingClientsInfo_block_invoke_2(uint64_t a1)
{
  FigSimpleMutexLock();
  v2 = *(*(*(a1 + 32) + 8) + 40);
  if (v2)
  {
    dispatch_semaphore_signal(v2);
  }

  return FigSimpleMutexUnlock();
}

uint64_t __MX_FeatureFlags_IsSharePlayEnabled_block_invoke()
{
  result = CMSMDeviceState_ItsAHomePod();
  if (result)
  {
    v1 = 0;
  }

  else
  {
    result = TelephonyUtilitiesLibraryCore();
    if (!result)
    {
      return result;
    }

    v5 = 0;
    v6 = &v5;
    v7 = 0x2020000000;
    v2 = getTUSharePlayForceDisabledSymbolLoc_ptr;
    v8 = getTUSharePlayForceDisabledSymbolLoc_ptr;
    if (!getTUSharePlayForceDisabledSymbolLoc_ptr)
    {
      v4[0] = MEMORY[0x1E69E9820];
      v4[1] = 3221225472;
      v4[2] = __getTUSharePlayForceDisabledSymbolLoc_block_invoke;
      v4[3] = &unk_1E7AE73A0;
      v4[4] = &v5;
      __getTUSharePlayForceDisabledSymbolLoc_block_invoke(v4);
      v2 = v6[3];
    }

    _Block_object_dispose(&v5, 8);
    if (!v2)
    {
      v3 = __68__MXBiomeStreams_updateBiomeSilentMode_clientType_untilTime_reason___block_invoke_cold_1();
      _Block_object_dispose(&v5, 8);
      _Unwind_Resume(v3);
    }

    result = v2();
    v1 = result ^ 1;
  }

  MX_FeatureFlags_IsSharePlayEnabled_sharePlayEnabled = v1;
  return result;
}

uint64_t __MX_FeatureFlags_IsAdditiveRoutingEnabled_block_invoke()
{
  v3 = *MEMORY[0x1E69E9840];
  result = _os_feature_enabled_impl();
  MX_FeatureFlags_IsAdditiveRoutingEnabled_additiveRoutingEnabled = result;
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    result = fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __MX_FeatureFlags_IsCorianderEnabled_block_invoke()
{
  v3 = *MEMORY[0x1E69E9840];
  result = _os_feature_enabled_impl();
  MX_FeatureFlags_IsCorianderEnabled_corianderEnabled = result;
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    result = fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __MX_FeatureFlags_IsRelativeVoiceOverVolumeEnabled_block_invoke()
{
  v3 = *MEMORY[0x1E69E9840];
  result = _os_feature_enabled_impl();
  MX_FeatureFlags_IsRelativeVoiceOverVolumeEnabled_relativeVoiceOverVolumeEnabled = result;
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    result = fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __MX_FeatureFlags_IsAlertsRelativeVoiceOverVolumeEnabled_block_invoke()
{
  v3 = *MEMORY[0x1E69E9840];
  if (MX_FeatureFlags_IsRelativeVoiceOverVolumeEnabled_onceToken != -1)
  {
    MX_FeatureFlags_IsRelativeVoiceOverVolumeEnabled_cold_1();
  }

  if (MX_FeatureFlags_IsRelativeVoiceOverVolumeEnabled_relativeVoiceOverVolumeEnabled)
  {
    result = _os_feature_enabled_impl();
  }

  else
  {
    result = 0;
  }

  MX_FeatureFlags_IsAlertsRelativeVoiceOverVolumeEnabled_alertsRelativeVoiceOverVolumeEnabled = result;
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    result = fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __MX_FeatureFlags_IsAirPlayDaemonEnabled_block_invoke()
{
  result = FigIsAirplaydEnabled();
  MX_FeatureFlags_IsAirPlayDaemonEnabled_isAirPlayDaemonEnabled = result != 0;
  return result;
}

uint64_t __MX_FeatureFlags_IsCallManagementMuteControlEnabled_block_invoke()
{
  result = _os_feature_enabled_impl();
  MX_FeatureFlags_IsCallManagementMuteControlEnabled_sCallManagementMuteControlEnabled = result;
  return result;
}

uint64_t __MX_FeatureFlags_IsAVODDiscoveryEnhancementEnabled_block_invoke()
{
  v3 = *MEMORY[0x1E69E9840];
  result = _os_feature_enabled_impl();
  MX_FeatureFlags_IsAVODDiscoveryEnhancementEnabled_sIsDiscoveryEnhancementEnabled = result;
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    result = fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __MX_FeatureFlags_IsCounterfeitDetectionEnabled_block_invoke()
{
  result = _os_feature_enabled_impl();
  MX_FeatureFlags_IsCounterfeitDetectionEnabled_gapaEnabled = result;
  return result;
}

uint64_t __MX_FeatureFlags_IsConversationDetectSupported_block_invoke()
{
  v3 = *MEMORY[0x1E69E9840];
  result = _os_feature_enabled_impl();
  MX_FeatureFlags_IsConversationDetectSupported_conversationDetectSupported = result;
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    result = fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __MX_FeatureFlags_IsSmartRoutingOnActivationEnabled_block_invoke()
{
  v3 = *MEMORY[0x1E69E9840];
  result = _os_feature_enabled_impl();
  MX_FeatureFlags_IsSmartRoutingOnActivationEnabled_sSmartRoutingOnActivationEnabled = result;
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    result = fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __MX_FeatureFlags_IsInterruptOnRouteDisconnectEnabled_block_invoke()
{
  v3 = *MEMORY[0x1E69E9840];
  result = _os_feature_enabled_impl();
  MX_FeatureFlags_IsInterruptOnRouteDisconnectEnabled_sInterruptOnRouteDisconnect = result;
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    result = fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __MX_FeatureFlags_IsInterruptLongFormVideoOnSpeechDetectEnabled_block_invoke()
{
  v3 = *MEMORY[0x1E69E9840];
  result = _os_feature_enabled_impl();
  MX_FeatureFlags_IsInterruptLongFormVideoOnSpeechDetectEnabled_sInterruptLongFormVideoOnSpeechDetect = result;
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    result = fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __MX_FeatureFlags_IsAssertionActivityReportingEnabled_block_invoke()
{
  v3 = *MEMORY[0x1E69E9840];
  result = _os_feature_enabled_impl();
  MX_FeatureFlags_IsAssertionActivityReportingEnabled_sAssertionActivityReportingEnabled = result;
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    result = fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __MX_FeatureFlags_IsAudioFormatArbitrationEnabled_block_invoke()
{
  v3 = *MEMORY[0x1E69E9840];
  result = _os_feature_enabled_impl();
  MX_FeatureFlags_IsAudioFormatArbitrationEnabled_sAudioFormatArbitrationEnabled = result;
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    result = fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __MX_FeatureFlags_IsMXSilentModeEnabled_block_invoke()
{
  v3 = *MEMORY[0x1E69E9840];
  result = _os_feature_enabled_impl();
  MX_FeatureFlags_IsMXSilentModeEnabled_sIsUseMXSilentModeEnabled = result;
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    result = fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __MX_FeatureFlags_IsAdaptiveVolumeControlEnabled_block_invoke()
{
  v3 = *MEMORY[0x1E69E9840];
  result = _os_feature_enabled_impl();
  MX_FeatureFlags_IsAdaptiveVolumeControlEnabled_sAdaptiveVolumeControlEnabled = result;
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    result = fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __MX_FeatureFlags_IsSpeechDetectEnabled_block_invoke()
{
  v3 = *MEMORY[0x1E69E9840];
  result = _os_feature_enabled_impl();
  MX_FeatureFlags_IsSpeechDetectEnabled_sSpeechDetectEnabled = result;
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    result = fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __MX_FeatureFlags_IsKeyboardCHAudioEnabled_block_invoke()
{
  v3 = *MEMORY[0x1E69E9840];
  result = _os_feature_enabled_impl();
  MX_FeatureFlags_IsKeyboardCHAudioEnabled_sIsKeyboardCHAudioEnabled = result;
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    result = fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __MX_FeatureFlags_IsQuiesceableWiredConnectionEnabled_block_invoke()
{
  v4 = *MEMORY[0x1E69E9840];
  v0 = MGGetBoolAnswer();
  if (v0)
  {
    LOBYTE(v0) = _os_feature_enabled_impl();
  }

  MX_FeatureFlags_IsQuiesceableWiredConnectionEnabled_sIsQuiesceableWiredConnectionEnabled = v0;
  result = CMSMDeviceState_ItsAniPhone();
  if (result)
  {
    if (MX_FeatureFlags_IsQuiesceableWiredConnectionEnabled_sIsQuiesceableWiredConnectionEnabled)
    {
      result = _os_feature_enabled_impl();
    }

    else
    {
      result = 0;
    }

    MX_FeatureFlags_IsQuiesceableWiredConnectionEnabled_sIsQuiesceableWiredConnectionEnabled = result;
  }

  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    result = fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __MX_FeatureFlags_IsPublishHostAttributionToSystemStatusEnabled_block_invoke()
{
  v3 = *MEMORY[0x1E69E9840];
  result = _os_feature_enabled_impl();
  MX_FeatureFlags_IsPublishHostAttributionToSystemStatusEnabled_sPublishHostAttributionToSystemStatusEnabled = result;
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    result = fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __MX_FeatureFlags_IsSystemInputPickerEnabled_block_invoke()
{
  v3 = *MEMORY[0x1E69E9840];
  result = _os_feature_enabled_impl();
  MX_FeatureFlags_IsSystemInputPickerEnabled_sIsSystemInputPickerEnabled = result;
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    result = fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __MX_FeatureFlags_IsBufferedBadgingAndCapabilitiesEnabled_block_invoke()
{
  v3 = *MEMORY[0x1E69E9840];
  result = _os_feature_enabled_impl();
  MX_FeatureFlags_IsBufferedBadgingAndCapabilitiesEnabled_isBufferedBadgingAndCapabilitiesEnabled = result;
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    result = fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __MX_FeatureFlags_IsAsyncDuckingEnabled_block_invoke()
{
  v3 = *MEMORY[0x1E69E9840];
  result = _os_feature_enabled_impl();
  MX_FeatureFlags_IsAsyncDuckingEnabled_isAsyncDuckingEnabled = result;
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    result = fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void __MX_FeatureFlags_IsOffloadActivationOffACQEnabled_block_invoke()
{
  v3 = *MEMORY[0x1E69E9840];
  if (_os_feature_enabled_impl())
  {
    if (MX_FeatureFlags_IsAsyncDuckingEnabled_onceToken != -1)
    {
      MX_FeatureFlags_IsAsyncDuckingEnabled_cold_1();
    }

    v0 = MX_FeatureFlags_IsAsyncDuckingEnabled_isAsyncDuckingEnabled != 0;
  }

  else
  {
    v0 = 0;
  }

  MX_FeatureFlags_IsOffloadActivationOffACQEnabled_isOffloadActivationOffACQEnabled = v0;
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v2 = *MEMORY[0x1E69E9840];
}

uint64_t __MX_FeatureFlags_IsSystemRemoteDisplayContextEnabled_block_invoke()
{
  v3 = *MEMORY[0x1E69E9840];
  result = _os_feature_enabled_impl();
  MX_FeatureFlags_IsSystemRemoteDisplayContextEnabled_isSystemRemoteDisplayContextEnabled = result;
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    result = fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __MX_FeatureFlags_IsMaxSpeakerVolumeLimitEnabled_block_invoke()
{
  v3 = *MEMORY[0x1E69E9840];
  result = _os_feature_enabled_impl();
  MX_FeatureFlags_IsMaxSpeakerVolumeLimitEnabled_sIsMaxSpeakerVolumeLimitEnabled = result;
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    result = fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __MX_FeatureFlags_IsOnenessEnabled_block_invoke()
{
  v3 = *MEMORY[0x1E69E9840];
  result = _os_feature_enabled_impl();
  MX_FeatureFlags_IsOnenessEnabled_sIsOnenessEnabled = result;
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    result = fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void __MX_FeatureFlags_IsSystemSoundsMutingBehaviorInOnenessEnabled_block_invoke()
{
  v3 = *MEMORY[0x1E69E9840];
  if (_os_feature_enabled_impl())
  {
    if (MX_FeatureFlags_IsOnenessEnabled_onceToken != -1)
    {
      MX_FeatureFlags_IsOnenessEnabled_cold_1();
    }

    v0 = MX_FeatureFlags_IsOnenessEnabled_sIsOnenessEnabled != 0;
  }

  else
  {
    v0 = 0;
  }

  MX_FeatureFlags_IsSystemSoundsMutingBehaviorInOnenessEnabled_sIsSystemSoundsMutingBehaviorInOnenessEnabled = v0;
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v2 = *MEMORY[0x1E69E9840];
}

void __MX_FeatureFlags_IsInterruptingPlayingSessionsInOnenessEnabled_block_invoke()
{
  v3 = *MEMORY[0x1E69E9840];
  if (_os_feature_enabled_impl())
  {
    if (MX_FeatureFlags_IsOnenessEnabled_onceToken != -1)
    {
      MX_FeatureFlags_IsOnenessEnabled_cold_1();
    }

    v0 = MX_FeatureFlags_IsOnenessEnabled_sIsOnenessEnabled != 0;
  }

  else
  {
    v0 = 0;
  }

  MX_FeatureFlags_IsInterruptingPlayingSessionsInOnenessEnabled_sIsInterruptingPlayingSessionsInOnenessEnabled = v0;
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v2 = *MEMORY[0x1E69E9840];
}

uint64_t __MX_FeatureFlags_IsHangsBufferedSizeHintEnabled_block_invoke()
{
  v3 = *MEMORY[0x1E69E9840];
  result = _os_feature_enabled_impl();
  MX_FeatureFlags_IsHangsBufferedSizeHintEnabled_sHangsBufferedSizeHintEnabled = result;
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    result = fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __MX_FeatureFlags_IsHangsAudioSessionClientCachingEnabled_block_invoke()
{
  v3 = *MEMORY[0x1E69E9840];
  result = _os_feature_enabled_impl();
  MX_FeatureFlags_IsHangsAudioSessionClientCachingEnabled_sHangsAudioSessionClientCachingEnabled = result;
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    result = fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __MX_FeatureFlags_IsCarPlayRingtoneFadeInEnabled_block_invoke()
{
  v3 = *MEMORY[0x1E69E9840];
  result = _os_feature_enabled_impl();
  MX_FeatureFlags_IsCarPlayRingtoneFadeInEnabled_sIsCarPlayRingtoneFadeInEnabled = result;
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    result = fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __MX_FeatureFlags_IsPersonalDevicesMediaVolumeUpdateEnabled_block_invoke()
{
  v3 = *MEMORY[0x1E69E9840];
  result = _os_feature_enabled_impl();
  MX_FeatureFlags_IsPersonalDevicesMediaVolumeUpdateEnabled_sIsPersonalDevicesMediaVolumeUpdateEnabled = result;
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    result = fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __MX_FeatureFlags_IsStartupSequenceChangeEnabled_block_invoke()
{
  v3 = *MEMORY[0x1E69E9840];
  result = _os_feature_enabled_impl();
  MX_FeatureFlags_IsStartupSequenceChangeEnabled_isStartupSequenceChangeEnabled = result;
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    result = fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __MX_FeatureFlags_IsNowPlayingAppStackEnabled_block_invoke()
{
  v3 = *MEMORY[0x1E69E9840];
  result = _os_feature_enabled_impl();
  MX_FeatureFlags_IsNowPlayingAppStackEnabled_sIsNowPlayingAppStackEnabled = result;
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    result = fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __MX_FeatureFlags_IsSessionBasedMutingEnabled_block_invoke()
{
  v3 = *MEMORY[0x1E69E9840];
  result = _os_feature_enabled_impl();
  if (result)
  {
    result = _os_feature_enabled_impl();
  }

  MX_FeatureFlags_IsSessionBasedMutingEnabled_isSessionBasedMutingEnabled = result;
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    result = fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __MX_FeatureFlags_IsProtectedAppsEnabled_block_invoke()
{
  v3 = *MEMORY[0x1E69E9840];
  result = _os_feature_enabled_impl();
  MX_FeatureFlags_IsProtectedAppsEnabled_isProtectedAppsEnabled = result;
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    result = fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __MX_FeatureFlags_IsAllowBackgroundPlaybackEnabled_block_invoke()
{
  v3 = *MEMORY[0x1E69E9840];
  result = _os_feature_enabled_impl();
  MX_FeatureFlags_IsAllowBackgroundPlaybackEnabled_isAllowBackgroundPlaybackEnabled = result;
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    result = fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __MX_FeatureFlags_IsOverdubRecordingEnabled_block_invoke()
{
  v3 = *MEMORY[0x1E69E9840];
  result = _os_feature_enabled_impl();
  MX_FeatureFlags_IsOverdubRecordingEnabled_isOverdubRecordingEnabled = result;
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    result = fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __MX_FeatureFlags_IsMediaMultitaskingEnabled_block_invoke()
{
  v3 = *MEMORY[0x1E69E9840];
  result = _os_feature_enabled_impl();
  MX_FeatureFlags_IsMediaMultitaskingEnabled_isMediaMultitaskingEnabled = result;
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    result = fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __MX_FeatureFlags_IsInputAudioCoexistenceSupportEnabled_block_invoke()
{
  v3 = *MEMORY[0x1E69E9840];
  result = _os_feature_enabled_impl();
  MX_FeatureFlags_IsInputAudioCoexistenceSupportEnabled_isInputAudioCoexistenceSupportEnabled = result;
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    result = fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __MX_FeatureFlags_IsAirPodsStudioVoiceMicEnabled_block_invoke()
{
  v3 = *MEMORY[0x1E69E9840];
  result = _os_feature_enabled_impl();
  MX_FeatureFlags_IsAirPodsStudioVoiceMicEnabled_sIsAirPodsStudioVoiceMicEnabled = result;
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    result = fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __MX_FeatureFlags_IsHighQualityLocalRecordingEnabled_block_invoke()
{
  v3 = *MEMORY[0x1E69E9840];
  result = _os_feature_enabled_impl();
  MX_FeatureFlags_IsHighQualityLocalRecordingEnabled_sIsHighQualityLocalRecordingEnabled = result;
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    result = fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __MX_FeatureFlags_IsPersonalTranslatorEnabled_block_invoke()
{
  v3 = *MEMORY[0x1E69E9840];
  result = _os_feature_enabled_impl();
  MX_FeatureFlags_IsPersonalTranslatorEnabled_isPersonalTranslatorEnabled = result;
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    result = fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __MX_FeatureFlags_IsAirPodsInEarRoutingWithCarsAndSpeakersEnabled_block_invoke()
{
  v3 = *MEMORY[0x1E69E9840];
  result = _os_feature_enabled_impl();
  MX_FeatureFlags_IsAirPodsInEarRoutingWithCarsAndSpeakersEnabled_isAirPodsInEarRoutingWithCarsAndSpeakersEnabled = result;
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    result = fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __MX_FeatureFlags_IsCustomizedRoutingWithCarsAndSpeakersEnabled_block_invoke()
{
  v3 = *MEMORY[0x1E69E9840];
  result = _os_feature_enabled_impl();
  MX_FeatureFlags_IsCustomizedRoutingWithCarsAndSpeakersEnabled_isCustomizedRoutingWithCarsAndSpeakersEnabled = result;
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    result = fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __MX_FeatureFlags_IsRoutingContextReportingEnabled_block_invoke()
{
  v3 = *MEMORY[0x1E69E9840];
  result = _os_feature_enabled_impl();
  MX_FeatureFlags_IsRoutingContextReportingEnabled_isRoutingContextReportingEnabled = result;
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    result = fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __MX_FeatureFlags_IsWHAInstantDiscoveryCachingEnabled_block_invoke()
{
  v3 = *MEMORY[0x1E69E9840];
  result = _os_feature_enabled_impl();
  MX_FeatureFlags_IsWHAInstantDiscoveryCachingEnabled_isWHAInstantDiscoveryCachingEnabled = result;
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    result = fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __MX_FeatureFlags_IsShortFormOutputMutingEnabled_block_invoke()
{
  v3 = *MEMORY[0x1E69E9840];
  result = _os_feature_enabled_impl();
  MX_FeatureFlags_IsShortFormOutputMutingEnabled_isShortFormOutputMutingEnabled = result;
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    result = fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __MX_FeatureFlags_IsCallConnectHapticsEnabled_block_invoke()
{
  v3 = *MEMORY[0x1E69E9840];
  result = _os_feature_enabled_impl();
  MX_FeatureFlags_IsCallConnectHapticsEnabled_isCallConnectHapticsEnabled = result;
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    result = fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __MX_FeatureFlags_IsSynchronizeSiriAlarmVolumesToMediaVolumeEnabled_block_invoke()
{
  v3 = *MEMORY[0x1E69E9840];
  result = _os_feature_enabled_impl();
  MX_FeatureFlags_IsSynchronizeSiriAlarmVolumesToMediaVolumeEnabled_sIsSynchronizeSiriAlarmVolumesToMediaVolumeEnabled = result;
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    result = fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

id __26__MX_TelephonyClient_init__block_invoke(uint64_t a1)
{
  v6[20] = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  result = [*(*(a1 + 32) + 8) getUserDefaultVoiceSubscriptionContext:v6];
  if (v6[0] || result && ((result = [*(*(a1 + 32) + 8) copyMobileSubscriberCountryCode:result error:v6], v6[0]) || result && ((result = objc_msgSend(*(*(a1 + 32) + 8), "copyMobileSubscriberIsoCountryCode:error:", result, v6), v6[0]) || (result ? (v5 = dword_1EB75DE40 == 0) : (v5 = 1), !v5))))
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    result = fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __46__MX_TelephonyClient_copyIsoCountryCodeForMCC__block_invoke(uint64_t a1)
{
  v6[20] = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  result = [*(*(a1 + 32) + 8) getUserDefaultVoiceSubscriptionContext:v6];
  if (v6[0])
  {
    goto LABEL_7;
  }

  if (result)
  {
    result = [*(*(a1 + 32) + 8) copyMobileSubscriberCountryCode:result error:v6];
    if (v6[0])
    {
      goto LABEL_7;
    }

    if (result)
    {
      result = [*(*(a1 + 32) + 8) copyMobileSubscriberIsoCountryCode:result error:v6];
      if (v6[0])
      {
LABEL_7:
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        result = fig_log_call_emit_and_clean_up_after_send_and_compose();
        goto LABEL_8;
      }

      v5 = result;
      if (result)
      {
        result = [result length];
        if (result)
        {
          result = [v5 isEqualToString:&stru_1F2890CF0];
          if ((result & 1) == 0)
          {
            result = [v5 uppercaseString];
            *(*(*(a1 + 40) + 8) + 40) = result;
          }
        }
      }
    }
  }

LABEL_8:
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

id __40__MX_TelephonyClient_getIsInHomeCountry__block_invoke(uint64_t a1)
{
  v5[20] = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  result = [*(*(a1 + 32) + 8) getUserDefaultVoiceSubscriptionContext:v5];
  if (v5[0])
  {
    goto LABEL_4;
  }

  if (result)
  {
    result = [*(*(a1 + 32) + 8) copyIsInHomeCountry:result error:v5];
    if (v5[0])
    {
LABEL_4:
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      result = fig_log_call_emit_and_clean_up_after_send_and_compose();
      goto LABEL_5;
    }

    if (result)
    {
      result = [result BOOLValue];
      *(*(*(a1 + 40) + 8) + 24) = result;
    }
  }

LABEL_5:
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

void __62__MX_TelephonyClient_copyCountryNameFromOperatorCountryBundle__block_invoke(uint64_t a1)
{
  v18[5] = *MEMORY[0x1E69E9840];
  v11 = 0;
  v2 = [*(*(a1 + 32) + 8) getUserDefaultVoiceSubscriptionContext:&v11];
  if (v11)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  else
  {
    v4 = v2;
    if (v2)
    {
      v12 = 0;
      v13 = &v12;
      v14 = 0x3052000000;
      v15 = __Block_byref_object_copy__2;
      v5 = getCTBundleClass_softClass;
      v16 = __Block_byref_object_dispose__2;
      v17 = getCTBundleClass_softClass;
      if (!getCTBundleClass_softClass)
      {
        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3221225472;
        v18[2] = __getCTBundleClass_block_invoke;
        v18[3] = &unk_1E7AE73A0;
        v18[4] = &v12;
        __getCTBundleClass_block_invoke(v18);
        v5 = v13[5];
      }

      _Block_object_dispose(&v12, 8);
      v6 = [[v5 alloc] initWithBundleType:6];
      v7 = [*(*(a1 + 32) + 8) copyCarrierBundleValue:v4 key:@"CountryName" bundleType:v6 error:&v11];
      v8 = v7;
      if (v11)
      {
        v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      else if ([v7 length] && (objc_msgSend(v8, "isEqualToString:", &stru_1F2890CF0) & 1) == 0)
      {
        *(*(*(a1 + 40) + 8) + 40) = v8;
      }
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

MX_TelephonyClient *__mx_telephonyClient_Initialize_block_invoke()
{
  v3 = *MEMORY[0x1E69E9840];
  result = CoreTelephonyLibraryCore();
  if (result)
  {
    result = objc_alloc_init(MX_TelephonyClient);
    gTelephonyClient = result;
    if (!result)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      result = fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void *__MX_CoreServices_Initialize_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/CoreServices.framework/CoreServices", 4);
  gCoreServicesLib = result;
  if (result)
  {
    gLSApplicationProxyClass = objc_getClass("LSApplicationProxy");
    gLSApplicationWorkspaceClass = objc_getClass("LSApplicationWorkspace");
    gLSBundleRecordClass = objc_getClass("LSBundleRecord");
    gLSApplicationExtensionRecordClass = objc_getClass("LSApplicationExtensionRecord");
    gDeviceManagementPolicyCache = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    gObserver = objc_alloc_init(MX_DeviceManagementPolicyDidChangeObserver);
    v1 = [gLSApplicationWorkspaceClass defaultWorkspace];
    result = [v1 addObserver:gObserver];
    gCoreServicesIsInitialized = 1;
  }

  return result;
}

dispatch_queue_t __MX_CoreServices_GetSerialQueue_block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  result = dispatch_queue_create("com.apple.mediaexperience.CoreServices", v0);
  MX_CoreServices_GetSerialQueue_sSerialQueue = result;
  return result;
}

void __78__MX_DeviceManagementPolicyDidChangeObserver_deviceManagementPolicyDidChange___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  if (gCoreServicesIsInitialized == 1)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v1 = *(a1 + 32);
    v2 = [v1 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v2)
    {
      v3 = v2;
      v4 = *v14;
      do
      {
        for (i = 0; i != v3; ++i)
        {
          if (*v14 != v4)
          {
            objc_enumerationMutation(v1);
          }

          v6 = *(*(&v13 + 1) + 8 * i);
          [v6 bundleIdentifier];
          cmsmLSUpdateDeviceManagementCache([v6 deviceManagementPolicy]);
          if ([v6 deviceManagementPolicy])
          {
            if (CMSMUtility_IsCarPlaySessionPresent())
            {
              if (dword_1EB75DE40)
              {
                os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }
            }

            else
            {
              if (dword_1EB75DE40)
              {
                v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }

              CMSMNotificationUtility_PostStopCommandToActiveClientWithDisplayID([v6 bundleIdentifier], 0);
            }
          }
        }

        v3 = [v1 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v3);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

uint64_t __42__MX_GEOCountryConfigurationObserver_init__block_invoke(uint64_t a1)
{
  v14[5] = *MEMORY[0x1E69E9840];
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = __Block_byref_object_copy__7;
  v2 = getGEOCountryConfigurationClass_softClass;
  v12 = __Block_byref_object_dispose__7;
  v13 = getGEOCountryConfigurationClass_softClass;
  if (!getGEOCountryConfigurationClass_softClass)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __getGEOCountryConfigurationClass_block_invoke;
    v14[3] = &unk_1E7AE73A0;
    v14[4] = &v8;
    __getGEOCountryConfigurationClass_block_invoke(v14);
    v2 = v9[5];
  }

  _Block_object_dispose(&v8, 8);
  *(*(a1 + 32) + 16) = [v2 sharedConfiguration];
  *(*(a1 + 32) + 24) = [*(*(a1 + 32) + 16) countryCode];
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  result = [objc_msgSend(MEMORY[0x1E696AD88] defaultCenter];
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __59__MX_GEOCountryConfigurationObserver_getCurrentCountryCode__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 24) length];
  if (result)
  {
    result = [*(*(a1 + 32) + 24) isEqualToString:&stru_1F2890CF0];
    if ((result & 1) == 0)
    {
      *(*(*(a1 + 40) + 8) + 40) = *(*(a1 + 32) + 24);
    }
  }

  return result;
}

uint64_t __91__MX_GEOCountryConfigurationObserver__updateCountryCodeFromCurrentGeoCountryConfiguration___block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  result = [*(*(a1 + 32) + 24) isEqualToString:*(a1 + 40)];
  if ((result & 1) == 0)
  {
    *(*(a1 + 32) + 24) = *(a1 + 40);
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      result = fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

MX_GEOCountryConfigurationObserver *__mx_geoCountryConfigurationObserver_Initialize_block_invoke()
{
  v3 = *MEMORY[0x1E69E9840];
  result = GeoServicesLibraryCore();
  if (result)
  {
    result = objc_alloc_init(MX_GEOCountryConfigurationObserver);
    gGeoCountryConfigurationObserver = result;
    if (!result)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      result = fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void __27__MX_HIDEventObserver_init__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E695E480];
  *(*(a1 + 32) + 8) = IOHIDEventSystemClientCreateWithType();
  if (!*(*(a1 + 32) + 8))
  {
    goto LABEL_5;
  }

  IOHIDEventSystemClientSetMatchingMultiple();
  v3 = *(*(a1 + 32) + 8);
  IOHIDEventSystemClientRegisterEventCallback();
  v4 = *(*(a1 + 32) + 8);
  CFRunLoopGetMain();
  v5 = *MEMORY[0x1E695E8E0];
  IOHIDEventSystemClientScheduleWithRunLoop();
  v6 = *(*(a1 + 32) + 8);
  if (v6)
  {
    v7 = IOHIDEventSystemClientCopyServices(v6);
    SmartCoverState = mx_ioKit_getSmartCoverState(v7, 1);
    v9 = mx_ioKit_getSmartCoverState(v7, 2) | SmartCoverState;
    v10 = v9 == 3;
    gFlap1StateIsEngaged = v9 > 1;
    gOpenStateIsEngaged = v9 & 1;
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (v7)
    {
      CFRelease(v7);
    }
  }

  else
  {
LABEL_5:
    v10 = 0;
  }

  *(*(a1 + 32) + 16) = v10;
  CMSMDeviceState_UpdateSmartCoverState(*(*(a1 + 32) + 16));
  v12 = *MEMORY[0x1E69E9840];
}

void __35__MX_HIDEventObserver_handleEvent___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) smartCoverClosed];
  v3 = *(*(*(a1 + 40) + 8) + 24);
  if (IOHIDEventGetType() == 3)
  {
    [*(a1 + 32) handleButtonEvent:*(*(*(a1 + 40) + 8) + 24)];
  }

  v4 = [*(a1 + 32) smartCoverClosed];
  if (v2 != v4)
  {
    CMSMDeviceState_UpdateSmartCoverState(v4);
  }

  v5 = *(*(*(a1 + 40) + 8) + 24);
  if (v5)
  {

    CFRelease(v5);
  }
}

void __MX_IOKit_Initialize_block_invoke()
{
  v3 = *MEMORY[0x1E69E9840];
  v0 = objc_autoreleasePoolPush();
  gMXHIDEventObserver = objc_alloc_init(MX_HIDEventObserver);
  if (!gMXHIDEventObserver)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  objc_autoreleasePoolPop(v0);
  v2 = *MEMORY[0x1E69E9840];
}

void __MX_RunningBoardServices_StopMonitoringForPID_block_invoke(uint64_t a1, void *a2)
{
  [a2 setPredicates:{objc_msgSend(*(a1 + 32), "allObjects")}];
  v3 = *(a1 + 32);
}

uint64_t __26__MX_NetworkObserver_init__block_invoke(uint64_t a1)
{
  v39 = *MEMORY[0x1E69E9840];
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v2 = getnw_path_monitor_create_with_typeSymbolLoc_ptr;
  v38 = getnw_path_monitor_create_with_typeSymbolLoc_ptr;
  if (!getnw_path_monitor_create_with_typeSymbolLoc_ptr)
  {
    v30 = MEMORY[0x1E69E9820];
    v31 = 3221225472;
    v32 = __getnw_path_monitor_create_with_typeSymbolLoc_block_invoke;
    v33 = &unk_1E7AE73A0;
    v34 = &v35;
    v3 = NetworkLibrary();
    v36[3] = dlsym(v3, "nw_path_monitor_create_with_type");
    getnw_path_monitor_create_with_typeSymbolLoc_ptr = *(v34[1] + 24);
    v2 = v36[3];
  }

  _Block_object_dispose(&v35, 8);
  if (!v2)
  {
    goto LABEL_24;
  }

  *(*(a1 + 32) + 16) = v2(2);
  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __26__MX_NetworkObserver_init__block_invoke_2;
  v29[3] = &unk_1E7AEC6F0;
  v29[4] = v4;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v6 = getnw_path_monitor_set_update_handlerSymbolLoc_ptr;
  v38 = getnw_path_monitor_set_update_handlerSymbolLoc_ptr;
  if (!getnw_path_monitor_set_update_handlerSymbolLoc_ptr)
  {
    v30 = MEMORY[0x1E69E9820];
    v31 = 3221225472;
    v32 = __getnw_path_monitor_set_update_handlerSymbolLoc_block_invoke;
    v33 = &unk_1E7AE73A0;
    v34 = &v35;
    v7 = NetworkLibrary();
    v36[3] = dlsym(v7, "nw_path_monitor_set_update_handler");
    getnw_path_monitor_set_update_handlerSymbolLoc_ptr = *(v34[1] + 24);
    v6 = v36[3];
  }

  _Block_object_dispose(&v35, 8);
  if (!v6)
  {
LABEL_24:
    __68__MXBiomeStreams_updateBiomeSilentMode_clientType_untilTime_reason___block_invoke_cold_1();
    goto LABEL_27;
  }

  v6(v5, v29);
  v8 = *(a1 + 32);
  v10 = *(v8 + 8);
  v9 = *(v8 + 16);
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v11 = getnw_path_monitor_set_queueSymbolLoc_ptr;
  v38 = getnw_path_monitor_set_queueSymbolLoc_ptr;
  if (!getnw_path_monitor_set_queueSymbolLoc_ptr)
  {
    v30 = MEMORY[0x1E69E9820];
    v31 = 3221225472;
    v32 = __getnw_path_monitor_set_queueSymbolLoc_block_invoke;
    v33 = &unk_1E7AE73A0;
    v34 = &v35;
    v12 = NetworkLibrary();
    v13 = dlsym(v12, "nw_path_monitor_set_queue");
    *(v34[1] + 24) = v13;
    getnw_path_monitor_set_queueSymbolLoc_ptr = *(v34[1] + 24);
    v11 = v36[3];
  }

  _Block_object_dispose(&v35, 8);
  if (!v11)
  {
    goto LABEL_26;
  }

  v11(v9, v10);
  v14 = *(*(a1 + 32) + 16);
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v15 = getnw_path_monitor_startSymbolLoc_ptr;
  v38 = getnw_path_monitor_startSymbolLoc_ptr;
  if (!getnw_path_monitor_startSymbolLoc_ptr)
  {
    v30 = MEMORY[0x1E69E9820];
    v31 = 3221225472;
    v32 = __getnw_path_monitor_startSymbolLoc_block_invoke;
    v33 = &unk_1E7AE73A0;
    v34 = &v35;
    v16 = NetworkLibrary();
    v17 = dlsym(v16, "nw_path_monitor_start");
    *(v34[1] + 24) = v17;
    getnw_path_monitor_startSymbolLoc_ptr = *(v34[1] + 24);
    v15 = v36[3];
  }

  _Block_object_dispose(&v35, 8);
  if (!v15)
  {
    goto LABEL_26;
  }

  v15(v14);
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v18 = getnw_path_create_evaluator_for_endpointSymbolLoc_ptr;
  v38 = getnw_path_create_evaluator_for_endpointSymbolLoc_ptr;
  if (!getnw_path_create_evaluator_for_endpointSymbolLoc_ptr)
  {
    v30 = MEMORY[0x1E69E9820];
    v31 = 3221225472;
    v32 = __getnw_path_create_evaluator_for_endpointSymbolLoc_block_invoke;
    v33 = &unk_1E7AE73A0;
    v34 = &v35;
    v19 = NetworkLibrary();
    v20 = dlsym(v19, "nw_path_create_evaluator_for_endpoint");
    *(v34[1] + 24) = v20;
    getnw_path_create_evaluator_for_endpointSymbolLoc_ptr = *(v34[1] + 24);
    v18 = v36[3];
  }

  _Block_object_dispose(&v35, 8);
  if (!v18)
  {
    goto LABEL_26;
  }

  result = (v18)(0, 0);
  v22 = result;
  if (!result)
  {
    goto LABEL_21;
  }

  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v23 = getnw_path_evaluator_copy_pathSymbolLoc_ptr;
  v38 = getnw_path_evaluator_copy_pathSymbolLoc_ptr;
  if (!getnw_path_evaluator_copy_pathSymbolLoc_ptr)
  {
    v30 = MEMORY[0x1E69E9820];
    v31 = 3221225472;
    v32 = __getnw_path_evaluator_copy_pathSymbolLoc_block_invoke;
    v33 = &unk_1E7AE73A0;
    v34 = &v35;
    v24 = NetworkLibrary();
    v25 = dlsym(v24, "nw_path_evaluator_copy_path");
    *(v34[1] + 24) = v25;
    getnw_path_evaluator_copy_pathSymbolLoc_ptr = *(v34[1] + 24);
    v23 = v36[3];
  }

  _Block_object_dispose(&v35, 8);
  if (!v23)
  {
LABEL_26:
    __68__MXBiomeStreams_updateBiomeSilentMode_clientType_untilTime_reason___block_invoke_cold_1();
LABEL_27:
    __break(1u);
  }

  v26 = v23(v22);
  [*(a1 + 32) networkPathUpdate:v26];
  result = soft_nw_release(v26);
LABEL_21:
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    result = fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v28 = *MEMORY[0x1E69E9840];
  return result;
}

MX_NetworkObserver *__mx_networkObserver_Initialize_block_invoke()
{
  v3 = *MEMORY[0x1E69E9840];
  result = NetworkLibraryCore();
  if (result)
  {
    result = objc_alloc_init(MX_NetworkObserver);
    gNetworkObserver = result;
    if (!result)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      result = fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

id __34__MX_BannerManager_sharedInstance__block_invoke()
{
  sharedInstance_sSharedInstance_13 = objc_alloc_init(MX_BannerManager);
  result = objc_alloc_init(MEMORY[0x1E69E58C0]);
  bannerResponseCacheMutex = result;
  return result;
}

dispatch_queue_t __44__MX_BannerManager_getAwaitingDispatchQueue__block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  result = dispatch_queue_create("com.apple.MediaExperience.ConnectBannerAwaitingDispatchQueue", v0);
  sAwaitingDispatchQueue = result;
  return result;
}

dispatch_queue_t __49__MX_BannerManager_getBannerCleanupDispatchQueue__block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  result = dispatch_queue_create("com.apple.MediaExperience.BannerCleanupDispatchQueue", v0);
  sBannerCleanupDispatchQueue = result;
  return result;
}

uint64_t __41__MX_BannerManager_getSharedBannerClient__block_invoke()
{
  result = [MEMORY[0x1E69ADA30] sharedInstance];
  sBannerClient = result;
  return result;
}

uint64_t __34__MX_BannerManager_cleanupBanners__block_invoke(uint64_t a1)
{
  [*(a1 + 32) cleanupBannerCache:*(*(a1 + 32) + 16)];
  v2 = *(a1 + 32);
  v3 = v2[1];

  return [v2 cleanupBannerCache:v3];
}

void __81__MX_BannerManager_cleanupBannersIfNeededForRoute_routeName_endpointManagerType___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%@", *(a1 + 40), *(a1 + 48)];
  [*(a1 + 32) cleanupBannerIfNeededForRoute:v2 routeName:*(a1 + 56) bannerType:1];
  [*(a1 + 32) cleanupBannerIfNeededForRoute:v2 routeName:*(a1 + 56) bannerType:0];
  v3 = *(a1 + 40);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 56);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(a1 + 48);
  if (v5)
  {

    CFRelease(v5);
  }
}

void __62__MX_BannerManager_promptUserResponseForRoute_connectHandler___block_invoke(uint64_t a1, int a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = bannerResponseCacheMutex;
  objc_sync_enter(bannerResponseCacheMutex);
  v5 = *(*(a1 + 64) + 8);
  if (*(v5 + 24) != 1)
  {
    if (!dword_1EB75DE40)
    {
      goto LABEL_14;
    }

LABEL_8:
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_14;
  }

  *(v5 + 24) = 0;
  if (![*(*(a1 + 32) + 8) objectForKey:*(a1 + 40)])
  {
    if (!dword_1EB75DE40)
    {
      goto LABEL_14;
    }

    goto LABEL_8;
  }

  if (dword_1EB75DE40)
  {
    v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v8 = *(a1 + 32);
  v9 = *(a1 + 88);
  v10 = *(*(*(a1 + 72) + 8) + 24);
  v11 = *(*(*(a1 + 80) + 8) + 24);
  if (a2)
  {
    [v8 sendBannerActionToAudioStatistics:0 bannerType:0 targetDeviceType:v9 targetProductID:v10 sourceDeviceType:v11];
    [objc_msgSend(*(*(a1 + 32) + 8) objectForKey:{*(a1 + 40)), "setBannerResponse:", 2}];
    dispatch_semaphore_signal(*(a1 + 48));
  }

  else
  {
    [v8 sendBannerActionToAudioStatistics:1 bannerType:0 targetDeviceType:v9 targetProductID:v10 sourceDeviceType:v11];
    [objc_msgSend(*(*(a1 + 32) + 8) objectForKey:{*(a1 + 40)), "setBannerResponse:", 1}];
    dispatch_semaphore_signal(*(a1 + 48));
    if (dword_1EB75DE40)
    {
      v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v13 = *(a1 + 104);
    v14 = *(a1 + 112);
    (*(*(a1 + 56) + 16))(*(a1 + 56), *(a1 + 96));
  }

LABEL_14:
  objc_sync_exit(v4);
  v15 = *(a1 + 96);
  if (v15)
  {
    CFRelease(v15);
  }

  v16 = *(a1 + 112);
  if (v16)
  {
    CFRelease(v16);
  }

  v17 = *(a1 + 104);
  if (v17)
  {
    CFRelease(v17);
  }

  v18 = *(a1 + 120);
  if (v18)
  {
    CFRelease(v18);
  }

  v19 = *(a1 + 128);
  if (v19)
  {
    CFRelease(v19);
  }

  v20 = *(a1 + 48);
  if (v20)
  {
    dispatch_release(v20);
  }

  v21 = *(*(*(a1 + 72) + 8) + 24);
  if (v21)
  {
    CFRelease(v21);
    *(*(*(a1 + 72) + 8) + 24) = 0;
  }

  v22 = *(*(*(a1 + 80) + 8) + 24);
  if (v22)
  {
    CFRelease(v22);
    *(*(*(a1 + 80) + 8) + 24) = 0;
  }

  v23 = *MEMORY[0x1E69E9840];
}

void __62__MX_BannerManager_promptUserResponseForRoute_connectHandler___block_invoke_101(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v3 = *(a1 + 40);
  v4 = dispatch_time(0, 20000000000);
  v5 = dispatch_semaphore_wait(v3, v4);
  v6 = bannerResponseCacheMutex;
  objc_sync_enter(bannerResponseCacheMutex);
  if ([*(*(a1 + 48) + 8) objectForKey:*(a1 + 32)])
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:{objc_msgSend(objc_msgSend(*(*(a1 + 48) + 8), "objectForKey:", *(a1 + 32)), "bannerResponse")}];
    if (dword_1EB75DE40)
    {
      v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  else
  {
    if (dword_1EB75DE40)
    {
      v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v7 = &unk_1F28AF6E0;
  }

  if (v5)
  {
    if (!dword_1EB75DE40)
    {
      goto LABEL_14;
    }
  }

  else if (!dword_1EB75DE40)
  {
    goto LABEL_14;
  }

  v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_14:
  if ([v7 isEqualToNumber:{&unk_1F28AF6F8, v21, v22}])
  {
    if (dword_1EB75DE40)
    {
      v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v12 = *(a1 + 80);
    v13 = *(a1 + 88);
    (*(*(a1 + 56) + 16))(*(a1 + 56), *(a1 + 72));
  }

  objc_sync_exit(v6);
  v14 = *(a1 + 72);
  if (v14)
  {
    CFRelease(v14);
  }

  v15 = *(a1 + 88);
  if (v15)
  {
    CFRelease(v15);
  }

  v16 = *(a1 + 96);
  if (v16)
  {
    CFRelease(v16);
  }

  v17 = *(a1 + 80);
  if (v17)
  {
    CFRelease(v17);
  }

  v18 = *(a1 + 64);
  if (v18)
  {
    CFRelease(v18);
  }

  v19 = *(a1 + 40);
  if (v19)
  {
    dispatch_release(v19);
  }

  v20 = *MEMORY[0x1E69E9840];
}

void __63__MX_BannerManager_promptUserResponseForUndoRoute_undoHandler___block_invoke(uint64_t a1, int a2)
{
  v58 = *MEMORY[0x1E69E9840];
  v4 = bannerResponseCacheMutex;
  objc_sync_enter(bannerResponseCacheMutex);
  v5 = *(*(a1 + 64) + 8);
  if (*(v5 + 24) != 1)
  {
    if (dword_1EB75DE40)
    {
      LODWORD(cf) = 0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    goto LABEL_67;
  }

  *(v5 + 24) = 0;
  v6 = [*(*(a1 + 32) + 16) objectForKey:*(a1 + 40)];
  if (v6)
  {
    if (dword_1EB75DE40)
    {
      LODWORD(cf) = 0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v10 = [v6 routeSemaphore];
    v11 = *(a1 + 32);
    v12 = *(a1 + 112);
    v13 = *(*(*(a1 + 72) + 8) + 24);
    v14 = *(*(*(a1 + 80) + 8) + 24);
    if (a2)
    {
      [v11 sendBannerActionToAudioStatistics:0 bannerType:1 targetDeviceType:v12 targetProductID:v13 sourceDeviceType:v14];
      [v6 setBannerResponse:2];
      dispatch_semaphore_signal(v10);
      if (dword_1EB75DE40)
      {
        LODWORD(cf) = 0;
        type[0] = OS_LOG_TYPE_DEFAULT;
        v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

LABEL_58:
      v40 = *(a1 + 96);
      if (v40)
      {
        CFRelease(v40);
      }

      v41 = *(a1 + 88);
      if (v41)
      {
        CFRelease(v41);
      }

      v42 = *(a1 + 48);
      if (v42)
      {
        CFRelease(v42);
      }

      v43 = *(a1 + 104);
      if (v43)
      {
        CFRelease(v43);
      }

LABEL_67:
      objc_sync_exit(v4);
      v44 = *(*(*(a1 + 72) + 8) + 24);
      if (v44)
      {
        CFRelease(v44);
        *(*(*(a1 + 72) + 8) + 24) = 0;
      }

      v45 = *(*(*(a1 + 80) + 8) + 24);
      if (v45)
      {
        CFRelease(v45);
        *(*(*(a1 + 80) + 8) + 24) = 0;
      }

      goto LABEL_71;
    }

    [v11 sendBannerActionToAudioStatistics:1 bannerType:1 targetDeviceType:v12 targetProductID:v13 sourceDeviceType:v14];
    [v6 setBannerResponse:1];
    dispatch_semaphore_signal(v10);
    if (dword_1EB75DE40)
    {
      LODWORD(cf) = 0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      v16 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v21 = [*(a1 + 32) copyUndoEndpointsForRoute:{*(a1 + 40), v48, v50}];
    v22 = [objc_msgSend(objc_msgSend(*(a1 + 48) "fromPorts")];
    v23 = [+[MXSessionManager sharedInstance](MXSessionManager isPortHeadphoneAndInEar:"isPortHeadphoneAndInEar:", v22];
    IsPortOfTypeBuiltInSpeakerOrReceiver = CMSMVAUtility_IsPortOfTypeBuiltInSpeakerOrReceiver(v22);
    if (!v23)
    {
      v25 = IsPortOfTypeBuiltInSpeakerOrReceiver;
      if (!MX_FeatureFlags_IsCustomizedRoutingWithCarsAndSpeakersEnabled() || !v25)
      {
        if (dword_1EB75DE40)
        {
          LODWORD(cf) = 0;
          type[0] = OS_LOG_TYPE_DEFAULT;
          v35 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        goto LABEL_56;
      }
    }

    if (v21)
    {
      Count = CFArrayGetCount(v21);
      v27 = Count;
      if (Count || !dword_1EB75DE40)
      {
        if (Count >= 1)
        {
          v28 = 0;
          v53 = *MEMORY[0x1E695E480];
          v51 = *MEMORY[0x1E69621E8];
          v52 = v4;
          do
          {
            CFArrayGetValueAtIndex(v21, v28);
            cf = 0;
            CMBaseObject = FigEndpointGetCMBaseObject();
            v30 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v30)
            {
              v30(CMBaseObject, 0x1F289CDB0, v53, &cf);
            }

            if (cf)
            {
              CMSMVAUtility_GetPortFromCFNumber(cf);
              if (cf)
              {
                CFRelease(cf);
                cf = 0;
              }
            }

            *type = 0;
            v31 = FigEndpointGetCMBaseObject();
            v32 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v32)
            {
              v32(v31, v51, v53, type);
            }

            if (dword_1EB75DE40)
            {
              v33 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
              v4 = v52;
            }

            if (*type)
            {
              CFRelease(*type);
            }

            ++v28;
          }

          while (v27 != v28);
        }

        goto LABEL_48;
      }
    }

    else if (!dword_1EB75DE40)
    {
LABEL_55:
      v39 = *(a1 + 88);
      (*(*(a1 + 56) + 16))(*(a1 + 56), v21);
      [+[MX_BannerManager getSharedBannerClient](MX_BannerManager "getSharedBannerClient")];
LABEL_56:
      if (v21)
      {
        CFRelease(v21);
      }

      goto LABEL_58;
    }

    LODWORD(cf) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    v34 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_48:
    if (dword_1EB75DE40)
    {
      LODWORD(cf) = 0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      v36 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v37 = cf;
      if (os_log_type_enabled(v36, type[0]))
      {
        v38 = v37;
      }

      else
      {
        v38 = v37 & 0xFFFFFFFE;
      }

      if (v38)
      {
        v56 = 136315138;
        v57 = "[MX_BannerManager promptUserResponseForUndoRoute:undoHandler:]_block_invoke";
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    goto LABEL_55;
  }

  if (dword_1EB75DE40)
  {
    LODWORD(cf) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v17 = *(a1 + 88);
  if (v17)
  {
    CFRelease(v17);
  }

  v18 = *(a1 + 96);
  if (v18)
  {
    CFRelease(v18);
  }

  v19 = *(a1 + 48);
  if (v19)
  {
    CFRelease(v19);
  }

  v20 = *(a1 + 104);
  if (v20)
  {
    CFRelease(v20);
  }

  objc_sync_exit(v4);
LABEL_71:
  v46 = *MEMORY[0x1E69E9840];
}

@end