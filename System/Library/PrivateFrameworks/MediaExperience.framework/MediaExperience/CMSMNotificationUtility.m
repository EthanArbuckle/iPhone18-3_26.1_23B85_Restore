@interface CMSMNotificationUtility
@end

@implementation CMSMNotificationUtility

void __CMSMNotificationUtility_PostDisplayLayoutDidChange_block_invoke(uint64_t a1)
{
  CMSMUtility_NotifyEachMatchingSession(0, CMSUtilityPredicate_True, 0, @"DisplayLayoutDidChange", *(a1 + 32), 0);
  v2 = *(a1 + 32);
}

void __CMSMNotificationUtility_PostApplicationStateDidChange_block_invoke(uint64_t *a1)
{
  CMSMUtility_NotifyEachMatchingSession(0, CMSUtilityPredicate_IsAffectedByApplicationStateChange, a1[4], @"ApplicationStateDidChange", a1[5], 0);
  v2 = a1[5];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[6];
  if (v4)
  {

    CFRelease(v4);
  }
}

void __CMSMNotificationUtility_PostReporterIDsDidChange_block_invoke(uint64_t a1)
{
  v3 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{objc_msgSend(*(a1 + 32), "reporterIDs"), @"ReporterIDs", 0}];
  v2 = *(a1 + 32);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [+[MXSessionManagerSidekick sharedInstance](MXSessionManagerSidekick postNotification:"postNotification:toSession:payload:" toSession:@"ReporterIDsDidChange" payload:*(a1 + 32), v3];
  }

  else
  {
    CMSMUtility_PostNotificationToSession(*(a1 + 32), @"ReporterIDsDidChange");
  }
}

void __CMSMNotificationUtility_PostSessionAudioCategoryDidChange_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  Weak = objc_loadWeak((a1 + 40));
  if (Weak)
  {
    v3 = Weak;
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v5 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{objc_msgSend(v3, "audioCategory"), @"AudioCategory", 0}];
    CMSMUtility_PostNotificationToSession(*(a1 + 32), @"AudioCategoryDidChange");
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __CMSMNotificationUtility_PostSessionAudioModeDidChange_block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{objc_msgSend(*(a1 + 32), "audioMode"), @"AudioMode", 0}];
  CMSMUtility_PostNotificationToSession(*(a1 + 32), @"AudioModeDidChange");
}

void __CMSMNotificationUtility_PostPickableRoutesDidChange_block_invoke(uint64_t a1)
{
  CMSMUtility_NotifyEachMatchingSession(0, 0, 0, @"PickableRoutesDidChange", 0, 1);
  if (*(a1 + 32))
  {

    vaemPostAvailableEndpointsChangedNotification(1);
  }
}

void __CMSMNotificationUtility_PostIsRecordingMutedDidChange_block_invoke(void **a1)
{
  v5 = *MEMORY[0x1E69E9840];
  if (objc_loadWeak(a1 + 6))
  {
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v3 = a1[5];
    CMSMUtility_PostNotificationToSession(a1[4], @"IsRecordingMutedDidChange");
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __CMSMNotificationUtility_PostVolumeDidChangeToVolumeButtonClientsWithPayload_block_invoke(uint64_t a1)
{
  Value = CFDictionaryGetValue(*(a1 + 32), @"AudioCategory");
  CMSMUtility_NotifyEachMatchingSession(0, CMSUtilityPredicate_IsVolumeButtonClient, Value, @"SystemVolumeDidChange", *(a1 + 32), 0);
  v3 = *(a1 + 32);
  if (v3)
  {

    CFRelease(v3);
  }
}

void __CMSMNotificationUtility_PostActiveAudioRouteDidChange_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(a1 + 40);
    CMSMUtility_PostNotificationToSession(v2, @"ActiveAudioRouteDidChange");
  }

  else
  {
    CMSMUtility_NotifyEachMatchingSession(0, CMSUtilityPredicate_IsSessionUsingRoutingContext, *(a1 + 48), @"ActiveAudioRouteDidChange", *(a1 + 40), 0);
  }

  v4 = *(a1 + 40);
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

void __CMSMNotificationUtility_PostAvailableVirtualFormatsDidChange_block_invoke()
{
  keys[1] = *MEMORY[0x1E69E9840];
  cf = 0;
  v0 = *MEMORY[0x1E695E480];
  CMBaseObject = FigEndpointManagerGetCMBaseObject();
  v2 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v2)
  {
    v2(CMBaseObject, 0x1F289B4B0, v0, &cf);
    v2 = cf;
  }

  if (@"Formats")
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  if (v2)
  {
    v4 = @"Formats" != 0;
  }

  else
  {
    v4 = 0;
  }

  if (v2)
  {
    v5 = @"Formats";
  }

  else
  {
    v5 = 0;
  }

  values = v3;
  keys[0] = v5;
  v6 = CFDictionaryCreate(v0, keys, &values, v4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CMSMUtility_NotifyEachMatchingSession(0, CMSUtilityPredicate_True, 0, @"AvailablePhysicalFormatsDidChange", v6, 0);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = @"Formats";
  if (@"Formats")
  {
    v8 = cf;
  }

  else
  {
    v8 = 0;
  }

  if (cf)
  {
    v9 = @"Formats" != 0;
  }

  else
  {
    v9 = 0;
  }

  if (!cf)
  {
    v7 = 0;
  }

  values = v8;
  keys[0] = v7;
  v10 = CFDictionaryCreate(v0, keys, &values, v9, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CMSMUtility_NotifyEachMatchingSession(0, CMSUtilityPredicate_True, 0, @"AvailableFormatsDidChange", v10, 0);
  if (v10)
  {
    CFRelease(v10);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __CMSMNotificationUtility_PostVoicePromptStyleDidChange_block_invoke(uint64_t a1)
{
  CMSMUtility_NotifyEachMatchingSession(0, CMSUtilityPredicate_True, 0, @"VoicePromptStyleDidChange", *(a1 + 32), 0);
  v2 = *(a1 + 32);
}

void __CMSMNotificationUtility_PostSomeOtherPrimaryAudioCategoryIsPlayingDidChange_block_invoke(uint64_t a1)
{
  CMSMUtility_NotifyEachMatchingSession(*(a1 + 32), CMSUtilityPredicate_IsSomeOtherActiveSession, 0, @"SomeOtherNonAmbientSessionIsPlayingDidChange", 0, 0);
  v2 = *(a1 + 32);
}

void __CMSMNotificationUtility_PostSomePrimaryAudioCategoryIsPlayingDidChange_block_invoke(uint64_t a1)
{
  CMSMUtility_NotifyEachMatchingSession(*(a1 + 32), CMSUtilityPredicate_IsSomeOtherForegroundAndActiveSession, 0, @"SomeNonAmbientAudioCategoryClientIsPlayingDidChange", *(a1 + 40), 0);
  v2 = *(a1 + 40);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 32);
}

void __CMSMNotificationUtility_PostSessionPrefersConcurrentAirPlayAudioDidChange_block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  CMSMUtility_NotifyEachSubscribedSession(0, @"PrefersConcurrentAirPlayAudioDidChange", *(a1 + 40), 0);
  v3 = *(a1 + 40);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __CMSMNotificationUtility_PostSessionAudioBehaviourDidChange_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  CMSMUtility_PostNotificationToSession(*(a1 + 32), @"AudioBehaviourDidChange");

  v3 = *MEMORY[0x1E69E9840];
}

void __CMSMNotificationUtility_PostSessionRouteControlFeaturesDidChange_block_invoke(void **a1)
{
  v5 = *MEMORY[0x1E69E9840];
  if (objc_loadWeak(a1 + 6))
  {
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v3 = a1[5];
    CMSMUtility_PostNotificationToSession(a1[4], @"RouteControlFeaturesDidChange");
  }

  v4 = *MEMORY[0x1E69E9840];
}

id __CMSMNotificationUtility_PostSpeechDetectStyleDidChangeIfNeeded_block_invoke()
{
  result = objc_alloc_init(MEMORY[0x1E696AD10]);
  CMSMNotificationUtility_PostSpeechDetectStyleDidChangeIfNeeded_sLastSpeechDetectStyleLock = result;
  return result;
}

void __CMSMNotificationUtility_PostSpeechDetectStyleDidChangeIfNeeded_block_invoke_2(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v3 = objc_alloc(MEMORY[0x1E695DF20]);
  v4 = [v3 initWithObjectsAndKeys:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", *(a1 + 32)), @"SpeechDetectStyle", 0}];
  CMSMUtility_NotifyEachSubscribedSession(0, @"SpeechDetectStyleDidChange", v4, 0);

  v5 = *MEMORY[0x1E69E9840];
}

id __CMSMNotificationUtility_PostSomeSessionIsPlayingDidChange_block_invoke()
{
  result = objc_alloc_init(MEMORY[0x1E696AD10]);
  CMSMNotificationUtility_PostSomeSessionIsPlayingDidChange_sLastNotificationPayloadLock = result;
  return result;
}

id __CMSMNotificationUtility_PostCallIsActiveDidChangeIfNeeded_block_invoke()
{
  result = objc_alloc_init(MEMORY[0x1E696AD10]);
  CMSMNotificationUtility_PostCallIsActiveDidChangeIfNeeded_sActivePhoneCallInfoLock = result;
  return result;
}

void __CMSMNotificationUtility_PostVibeStopped_block_invoke(uint64_t a1)
{
  CMSMUtility_NotifyEachMatchingSession(0, CMSUtilityPredicate_SessionWantsSystemSoundNotifications, 0, @"SystemSoundVibrateDidFinish", *(a1 + 32), 0);
  v2 = *(a1 + 32);
}

void __CMSMNotificationUtility_PostForceSoundCheckDidChange_block_invoke(uint64_t a1)
{
  CMSMUtility_NotifyEachMatchingSession(0, CMSUtilityPredicate_IsSameClient, *(a1 + 32), @"ForceSoundCheckDidChange", *(a1 + 40), 0);
  v2 = *(a1 + 40);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {

    CFRelease(v3);
  }
}

void __CMSMNotificationUtility_PostInputDataSourcesDidChange_block_invoke()
{
  keys[1] = *MEMORY[0x1E69E9840];
  cf = 0;
  v0 = *MEMORY[0x1E695E480];
  CMBaseObject = FigEndpointManagerGetCMBaseObject();
  v2 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v2)
  {
    v2(CMBaseObject, 0x1F289B6B0, v0, &cf);
    v2 = cf;
  }

  if (@"Sources")
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  if (v2)
  {
    v4 = @"Sources" != 0;
  }

  else
  {
    v4 = 0;
  }

  if (v2)
  {
    v5 = @"Sources";
  }

  else
  {
    v5 = 0;
  }

  values = v3;
  keys[0] = v5;
  v6 = CFDictionaryCreate(v0, keys, &values, v4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CMSMUtility_NotifyEachMatchingSession(0, CMSUtilityPredicate_True, 0, @"InputSourcesDidChange", v6, 0);
  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __CMSMNotificationUtility_PostOutputDataDestinationsDidChange_block_invoke()
{
  keys[1] = *MEMORY[0x1E69E9840];
  cf = 0;
  v0 = *MEMORY[0x1E695E480];
  CMBaseObject = FigEndpointManagerGetCMBaseObject();
  v2 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v2)
  {
    v2(CMBaseObject, 0x1F289B6D0, v0, &cf);
    v2 = cf;
  }

  if (@"Destinations")
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  if (v2)
  {
    v4 = @"Destinations" != 0;
  }

  else
  {
    v4 = 0;
  }

  if (v2)
  {
    v5 = @"Destinations";
  }

  else
  {
    v5 = 0;
  }

  values = v3;
  keys[0] = v5;
  v6 = CFDictionaryCreate(v0, keys, &values, v4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CMSMUtility_NotifyEachMatchingSession(0, CMSUtilityPredicate_True, 0, @"OutputDestinationsDidChange", v6, 0);
  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __CMSMNotificationUtility_PostInputGainScalarDidChange_block_invoke()
{
  keys[1] = *MEMORY[0x1E69E9840];
  cf = 0;
  CMBaseObject = FigEndpointManagerGetCMBaseObject();
  v1 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v1)
  {
    v2 = *MEMORY[0x1E695E480];
    if (!v1(CMBaseObject, 0x1F289B790, *MEMORY[0x1E695E480], &cf))
    {
      v3 = @"Gain";
      if (@"Gain")
      {
        v4 = cf;
      }

      else
      {
        v4 = 0;
      }

      if (cf)
      {
        v5 = @"Gain" != 0;
      }

      else
      {
        v5 = 0;
      }

      if (!cf)
      {
        v3 = 0;
      }

      values = v4;
      keys[0] = v3;
      v6 = CFDictionaryCreate(v2, keys, &values, v5, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      CMSMUtility_NotifyEachMatchingSession(0, CMSUtilityPredicate_True, 0, @"InputGainDidChange", v6, 0);
      if (v6)
      {
        CFRelease(v6);
      }
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __CMSMNotificationUtility_PostCurrentRouteHasInputGainControlDidChange_block_invoke(uint64_t a1)
{
  CMSMUtility_NotifyEachMatchingSession(0, CMSUtilityPredicate_True, 0, @"InputGainAvailableDidChange", *(a1 + 32), 0);
  v2 = *(a1 + 32);
  if (v2)
  {

    CFRelease(v2);
  }
}

void __CMSMNotificationUtility_PostNumberOfInputChannelsDidChange_block_invoke(uint64_t a1)
{
  SInt32Payload = CMSMNotificationUtility_CreateSInt32Payload(@"ChannelCount", *(a1 + 32));
  CMSMUtility_NotifyEachMatchingSession(0, CMSUtilityPredicate_True, 0, @"NumberOfInputChannelsDidChange", SInt32Payload, 0);
  if (SInt32Payload)
  {

    CFRelease(SInt32Payload);
  }
}

void __CMSMNotificationUtility_PostNumberOfOutputChannelsDidChange_block_invoke(uint64_t a1)
{
  SInt32Payload = CMSMNotificationUtility_CreateSInt32Payload(@"ChannelCount", *(a1 + 32));
  CMSMUtility_NotifyEachMatchingSession(0, CMSUtilityPredicate_True, 0, @"NumberOfOutputChannelsDidChange", SInt32Payload, 0);
  if (SInt32Payload)
  {

    CFRelease(SInt32Payload);
  }
}

void __CMSMNotificationUtility_PostBadgeTypeDidChange_block_invoke(uint64_t a1)
{
  if (objc_loadWeak((a1 + 40)))
  {
    v2 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{objc_msgSend(*(a1 + 32), "badgeType"), @"BadgeType", 0}];
    CMSMUtility_NotifyEachMatchingSession(0, CMSUtilityPredicate_IsSameClient, [*(a1 + 32) clientPID], @"BadgeTypeDidChange", v2, 0);
  }
}

void __CMSMNotificationUtility_PostSupportedBufferedAudioCapabilitiesDidChange_block_invoke(uint64_t a1)
{
  Weak = objc_loadWeak((a1 + 32));
  if (Weak)
  {
    v2 = Weak;
    v3 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{objc_msgSend(Weak, "supportedOutputChannelLayouts"), @"SupportedOutputChannelLayouts", 0}];
    CMSMUtility_NotifyEachMatchingSession(0, CMSUtilityPredicate_IsSameClient, [v2 clientPID], @"SupportedOutputChannelLayoutsDidChange", v3, 0);
  }
}

void __CMSMNotificationUtility_PostIsOutputMutedDidChange_block_invoke(void **a1)
{
  v5 = *MEMORY[0x1E69E9840];
  if (objc_loadWeak(a1 + 6))
  {
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v3 = a1[5];
    CMSMUtility_PostNotificationToSession(a1[4], @"IsOutputMutedDidChange");
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __CMSMNotificationUtility_PostUserIntentToUnmuteDidChange_block_invoke(void **a1)
{
  v5 = *MEMORY[0x1E69E9840];
  if (objc_loadWeak(a1 + 6))
  {
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v3 = a1[5];
    CMSMUtility_PostNotificationToSession(a1[4], @"UserIntentToUnmuteDidChange");
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __CMSMNotificationUtility_PostAllowEnhancedDialogueDidChange_block_invoke(void **a1)
{
  v5 = *MEMORY[0x1E69E9840];
  if (objc_loadWeak(a1 + 6))
  {
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v3 = a1[5];
    CMSMUtility_PostNotificationToSession(a1[4], @"AllowEnhancedDialogueDidChange");
  }

  v4 = *MEMORY[0x1E69E9840];
}

id __CMSMNotificationUtility_PostHighestArbitrationPriorityForTipiDidChangeIfNeeded_block_invoke()
{
  CMSMNotificationUtility_PostHighestArbitrationPriorityForTipiDidChangeIfNeeded_sOldHighestArbitrationPriorityForTipiInfo = 0;
  result = objc_alloc_init(MEMORY[0x1E696AD10]);
  CMSMNotificationUtility_PostHighestArbitrationPriorityForTipiDidChangeIfNeeded_sOldHighestArbitrationPriorityForTipiInfoLock = result;
  return result;
}

@end