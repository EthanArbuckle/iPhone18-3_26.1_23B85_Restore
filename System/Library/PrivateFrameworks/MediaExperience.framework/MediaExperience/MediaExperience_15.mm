void sub_1B196F33C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53)
{
  _Block_object_dispose(&a45, 8);
  _Block_object_dispose(&a49, 8);
  _Block_object_dispose(&a53, 8);
  _Block_object_dispose(&STACK[0x210], 8);
  _Unwind_Resume(a1);
}

void cmsReleaseBorrowedStarkMainAudio(void *a1, char a2)
{
  if (qword_1EB75E178 && [a1 starkBorrowCount])
  {
    v10 = 0;
    v8 = 0u;
    v9 = 0u;
    v4 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%@ '%@' stopped using main audio", [a1 clientName], objc_msgSend(a1, "displayID"));
    CMSUtility_GetStarkInterruptionContext(1, a1, &v8);
    while ([a1 starkBorrowCount])
    {
      v5[0] = v8;
      v5[1] = v9;
      v6 = v10;
      v7 = 0x1F288E7B0;
      FigEndpointSessionHandleInterruption(qword_1EB75E178, v5, v4, &v7, a2);
      [a1 setStarkBorrowCount:{objc_msgSend(a1, "starkBorrowCount") - 1}];
    }

    if (v4)
    {
      CFRelease(v4);
    }
  }
}

void __cmsmInitializeLogging_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work();
  fig_note_initialize_category_with_default_work();
  if ((dword_1EB75DE40 & 0x100) != 0)
  {
    dword_1EB75DE40 = 0;
  }

  else if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  CMSMDebugUtility_PrintBuildInfo();
  v1 = *MEMORY[0x1E69E9840];
}

__CFString *cmsCopyDebugDesc(const void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  CFStringAppendFormat(Mutable, 0, @"%p\n", a1);
  return Mutable;
}

uint64_t cmsmUpdateAppsLists(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = CFGetTypeID(result);
    result = CFDictionaryGetTypeID();
    if (v2 == result)
    {
      Value = CFDictionaryGetValue(v1, @"LongFormVideoApps");
      if (Value)
      {
        v4 = Value;
        v5 = CFGetTypeID(Value);
        if (v5 == CFArrayGetTypeID() && cmsmValidateAppsList(v4))
        {
          [+[MXSessionManager sharedInstance](MXSessionManager setLongFormVideoApps:"setLongFormVideoApps:", v4];
          CMSMNotificationUtility_PostSpeechDetectStyleDidChangeIfNeeded(0, 0);
        }
      }

      result = CFDictionaryGetValue(v1, @"NonLongFormMediaApps");
      if (result)
      {
        v6 = result;
        v7 = CFGetTypeID(result);
        result = CFArrayGetTypeID();
        if (v7 == result)
        {
          result = cmsmValidateAppsList(v6);
          if (result)
          {

            return CMSMUtility_SetNonLongFormMediaApps(v6);
          }
        }
      }
    }
  }

  return result;
}

void __cmsmInitializeCMSessionManager_block_invoke_2()
{
  theArray = 0;
  cmsmCopyCurrentActiveRoutesInfoForVADUID(0x1F2893B50, 0, &theArray, 0);
  if (theArray && (Count = CFArrayGetCount(theArray), Count >= 1))
  {
    v1 = Count;
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    v3 = 0;
    v4 = *MEMORY[0x1E69618F8];
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v3);
      v6 = FigRoutingManagerCopyEndpointWithDeviceID(ValueAtIndex, 0, v4, qword_1EB75E190);
      if (v6)
      {
        v7 = v6;
        CFArrayAppendValue(Mutable, v6);
        CFRelease(v7);
      }

      ++v3;
    }

    while (v1 != v3);
  }

  else
  {
    Mutable = 0;
  }

  v8 = FigEndpointDescriptorUtility_CopyDescriptorsForEndpoints(Mutable, 0);
  FigRoutingManagerContextUtilities_SetPickedEndpoints(qword_1EB75E190, Mutable, @"configUpdateReasonEndedBottomUpRouteChange", 0, v8);
  if (v8)
  {
    CFRelease(v8);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (theArray)
  {
    CFRelease(theArray);
  }
}

void cmsmTightSyncUUIDChangedCallback()
{
  v3 = *MEMORY[0x1E69E9840];
  v0 = MXGetSerialQueue();
  MXDispatchAsyncAndWait("cmsmTightSyncUUIDChangedCallback", "CMSessionManager.m", 18277, 0, 0, v0, &__block_literal_global_361);
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v2 = *MEMORY[0x1E69E9840];
}

void cmsmVoiceOverIsOnChangedCallback(uint64_t a1, char a2)
{
  v3 = MXGetSerialQueue();
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __cmsmVoiceOverIsOnChangedCallback_block_invoke;
  v4[3] = &__block_descriptor_33_e5_v8__0l;
  v5 = a2;
  MXDispatchAsyncAndWait("cmsmVoiceOverIsOnChangedCallback", "CMSessionManager.m", 18297, 0, 0, v3, v4);
}

void __cmsmInitializeCMSessionManager_block_invoke_2_40()
{
  v0 = MXGetSerialQueue();

  MXDispatchAsyncAndWait("cmsmInitializeCMSessionManager_block_invoke_2", "CMSessionManager.m", 1098, 0, 0, v0, &__block_literal_global_44_1);
}

uint64_t __cmsmInitializeCMSessionManager_block_invoke_4()
{
  result = MX_FeatureFlags_IsAirPlayDaemonEnabled();
  if (!result)
  {

    return FigRoutingManagerPerformPostInitOperations();
  }

  return result;
}

uint64_t __cmsmInitializeCMSessionManager_block_invoke_5()
{
  result = CMSessionCreate(&qword_1EB75E0F0);
  if (result)
  {
    v1 = 1;
  }

  else
  {
    v1 = qword_1EB75E0F0 == 0;
  }

  if (!v1)
  {
    valuePtr = getpid();
    if (valuePtr)
    {
      v2 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
      if (v2)
      {
        v3 = v2;
        _CMSessionSetProperty(qword_1EB75E0F0, @"ClientPID", v2);
        CFRelease(v3);
      }
    }

    _CMSessionSetProperty(qword_1EB75E0F0, @"ClientName", @"Default");
    _CMSessionSetProperty(qword_1EB75E0F0, @"AudioCategory", @"Audio/Video");
    cmsSetControlFlags(*(qword_1EB75E0F0 + 16), 0x120000u);
    return [*(qword_1EB75E0F0 + 16) updateInterruptionStyle:8];
  }

  return result;
}

__CFArray *cmsmCopyPartnerPortsToMakeRoutable(const __CFArray *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (a1)
  {
    Count = CFArrayGetCount(a1);
    if (Count >= 1)
    {
      v5 = Count;
      for (i = 0; i != v5; ++i)
      {
        FigCFArrayGetInt64AtIndex();
        memset(outData, 0, sizeof(outData));
        PartnersForPort = vaeGetPartnersForPort(0, outData);
        if (PartnersForPort)
        {
          v8 = PartnersForPort;
          v9 = outData;
          do
          {
            if (vaeDoesPortSupportRoutability(*v9))
            {
              if (!vaeIsPortRoutable(*v9))
              {
                v10 = CFNumberCreate(v2, kCFNumberSInt32Type, v9);
                CFArrayAppendValue(Mutable, v10);
                if (v10)
                {
                  CFRelease(v10);
                }
              }
            }

            ++v9;
            --v8;
          }

          while (v8);
        }
      }
    }
  }

  v11 = *MEMORY[0x1E69E9840];
  return Mutable;
}

uint64_t cmsmShouldSetupForCoordinatedInterruptions(uint64_t a1, int a2)
{
  v3 = a1;
  result = vaeDoesPortSupportMultipleConnections(a1);
  if (result)
  {
    DoesBTPortSupportInEarDetection = vaeDoesBTPortSupportInEarDetection(v3);
    BTPortOwnsSharedAudioConnection = vaeGetBTPortOwnsSharedAudioConnection(v3);
    result = (DoesBTPortSupportInEarDetection | BTPortOwnsSharedAudioConnection) == 0;
    if (DoesBTPortSupportInEarDetection)
    {
      if (!BTPortOwnsSharedAudioConnection)
      {
        return !a2 || CMSMVAUtility_IsBTPortKnownToNotBeInEar(v3) == 0;
      }
    }
  }

  return result;
}

uint64_t cmsmGetCurrentAudioRouteInEarStatus(AudioObjectID a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v19 = 0;
  HasUserEnabledInEarDetectionForBTPort = vaeHasUserEnabledInEarDetectionForBTPort(a1, &v19);
  if (v19)
  {
    if (HasUserEnabledInEarDetectionForBTPort)
    {
      BTPortSecondaryBudInEarStatus = vaeGetBTPortSecondaryBudInEarStatus(a1);
      BTPortPrimaryBudInEarStatus = vaeGetBTPortPrimaryBudInEarStatus(a1);
      if (dword_1EB75DE40)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      if (BTPortPrimaryBudInEarStatus == 1 && BTPortSecondaryBudInEarStatus == 1)
      {
        goto LABEL_10;
      }

      v9 = BTPortPrimaryBudInEarStatus == 3 && BTPortSecondaryBudInEarStatus == 1;
      v10 = BTPortSecondaryBudInEarStatus == 3 && BTPortPrimaryBudInEarStatus == 1;
      v6 = 4;
      if (!v10 && !v9)
      {
        v11 = BTPortPrimaryBudInEarStatus == 2 && BTPortSecondaryBudInEarStatus == 1;
        v12 = v11;
        v13 = BTPortSecondaryBudInEarStatus == 2 && BTPortPrimaryBudInEarStatus == 1;
        v6 = 2;
        if (!v13 && !v12)
        {
          v15 = BTPortPrimaryBudInEarStatus == 1 && BTPortSecondaryBudInEarStatus == 0;
          if (BTPortPrimaryBudInEarStatus)
          {
            v16 = 0;
          }

          else
          {
            v16 = BTPortSecondaryBudInEarStatus == 1;
          }

          if (v16)
          {
            v15 = 1;
          }

          if (v15)
          {
            v6 = 5;
          }

          else
          {
            v6 = 3;
          }
        }
      }
    }

    else
    {
      if (!dword_1EB75DE40)
      {
LABEL_10:
        v6 = 1;
        goto LABEL_48;
      }

      v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
      v6 = 1;
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  else
  {
    v6 = 3;
  }

LABEL_48:
  v17 = *MEMORY[0x1E69E9840];
  return v6;
}

void cmsmSendCommandToMediaRemote(uint64_t a1, uint64_t a2, const void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  if (MediaRemoteLibrary_sOnce != -1)
  {
    cmsmSendCommandToMediaRemote_cold_1();
  }

  if (MediaRemoteLibrary_sLib && dlsym(MediaRemoteLibrary_sLib, "MRMediaRemoteSendCommandToApp"))
  {
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (a3)
    {
      v8 = getkMRMediaRemoteOptionRemoteControlInterfaceIdentifier();
      CFDictionarySetValue(Mutable, v8, a3);
    }

    if (MediaRemoteLibrary_sOnce != -1)
    {
      cmsmSendCommandToMediaRemote_cold_2();
    }

    if (MediaRemoteLibrary_sLib && dlsym(MediaRemoteLibrary_sLib, "MRMediaRemoteGetLocalOrigin"))
    {
      LocalOrigin = softLinkMRMediaRemoteGetLocalOrigin();
    }

    else
    {
      LocalOrigin = 0;
    }

    softLinkMRMediaRemoteSendCommandToApp(a2, Mutable, LocalOrigin, a1, 0, 0, 0);
    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

uint64_t MXCoreSessionRemoveResource(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    FigSimpleMutexLock();
    if (a2 && *a2 == a1)
    {
      v4 = 0;
      *a2 = 0;
      a2[1] = 0;
    }

    else
    {
      v4 = 4294954315;
    }

    FigSimpleMutexUnlock();
  }

  else
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v4 = 4294954315;
  }

  v6 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t CMSessionMgrIsVolumeChangeTriggered(int a1)
{
  if ((a1 - 1) > 0xD)
  {
    return 0;
  }

  else
  {
    return byte_1B19D9F04[a1 - 1];
  }
}

void __cmsSetIsActive_block_invoke(uint64_t a1)
{
  v2 = [objc_msgSend(*(a1 + 32) "ID")];
  v3 = *(a1 + 40);

  CMSUtility_DeactivateTimerHandler(v2);
}

uint64_t FigEndpointManagerSetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  CMBaseObject = FigEndpointManagerGetCMBaseObject();
  VTable = CMBaseObjectGetVTable();
  v8 = *(VTable + 8);
  result = VTable + 8;
  v9 = *(v8 + 56);
  if (v9)
  {

    return v9(CMBaseObject, a2, a3);
  }

  return result;
}

double __cmsSetIsPlaying_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  CMSUtility_DeactivateTimerHandler(*(a1 + 32));
  return result;
}

void __cmsSetIsPlaying_block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = [MXSessionManagerBase copySessionWithMXCoreSessionID:*(a1 + 32)];
  if (v1 && (v6 = v1, ([v1 isMemberOfClass:objc_opt_class()] & 1) != 0))
  {
    if ([v6 sessionAssertionAuditTimer])
    {
      dispatch_source_cancel([v6 sessionAssertionAuditTimer]);
      [v6 setSessionAssertionAuditTimer:0];
    }

    v2 = MXGetSessionLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446978;
      v8 = "-CMSessionMgr-";
      v9 = 2082;
      v10 = "cmsSessionAssertionAuditTimeDidFinish";
      v11 = 1024;
      v12 = 6341;
      v13 = 2114;
      v14 = [v6 clientName];
      _os_log_impl(&dword_1B17A2000, v2, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s:%i Timer expired for client %{public}@", buf, 0x26u);
    }

    if (CMSUtility_DoesSessionRemainActiveAfterStoppingPlaying(v6))
    {
      [objc_msgSend(MEMORY[0x1E695DF00] "now")];
      if (v3 >= [v6 assertionAuditTimerDelay])
      {
        [+[MXSessionManager sharedInstance](MXSessionManager cleanupSessionAssertionsIfNeeded:"cleanupSessionAssertionsIfNeeded:cleanupReason:" cleanupReason:v6, 2];
      }
    }

    v4 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v5 = *MEMORY[0x1E69E9840];

    MEMORY[0x1EEE66BB8]();
  }
}

uint64_t cmsmStartAllowedToInitiatePlaybackTemporarilyTimer()
{
  v4 = *MEMORY[0x1E69E9840];
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexLock();
  if (qword_1EB75E128)
  {
    dispatch_source_cancel(qword_1EB75E128);
    if (qword_1EB75E128)
    {
      dispatch_release(qword_1EB75E128);
      qword_1EB75E128 = 0;
    }
  }

  v1 = MXGetSerialQueue();
  qword_1EB75E128 = MXDispatchUtilityCreateOneShotTimer(10.0, "cmsmStartAllowedToInitiatePlaybackTemporarilyTimer", "CMSessionManager.m", 8472, 0, 0, v1, &__block_literal_global_167, 0, 0);
  if (!qword_1EB75E128)
  {
    [+[MXSessionManager sharedInstance](MXSessionManager setAppAllowedToInitiatePlaybackTemporarily:"setAppAllowedToInitiatePlaybackTemporarily:", 0];
  }

  result = FigSimpleMutexUnlock();
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __cmsmStartAllowedToInitiatePlaybackTemporarilyTimer_block_invoke()
{
  v6 = *MEMORY[0x1E69E9840];
  FigSimpleMutexLock();
  v0 = qword_1EB75E128;
  if (qword_1EB75E128)
  {
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v0 = qword_1EB75E128;
    }

    dispatch_source_cancel(v0);
    if (qword_1EB75E128)
    {
      dispatch_release(qword_1EB75E128);
      qword_1EB75E128 = 0;
    }
  }

  [+[MXSessionManager setAppAllowedToInitiatePlaybackTemporarily:v4], "setAppAllowedToInitiatePlaybackTemporarily:", 0];
  result = FigSimpleMutexUnlock();
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t cmsmStartAllowedToFadeInTemporarilyTimer()
{
  v4 = *MEMORY[0x1E69E9840];
  result = MX_FeatureFlags_IsHandoffEnabled();
  if (result)
  {
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    FigSimpleMutexLock();
    if (qword_1EB75E130)
    {
      dispatch_source_cancel(qword_1EB75E130);
      if (qword_1EB75E130)
      {
        dispatch_release(qword_1EB75E130);
        qword_1EB75E130 = 0;
      }
    }

    v2 = MXGetSerialQueue();
    qword_1EB75E130 = MXDispatchUtilityCreateOneShotTimer(5.0, "cmsmStartAllowedToFadeInTemporarilyTimer", "CMSessionManager.m", 8520, 0, 0, v2, &__block_literal_global_169, 0, 0);
    result = FigSimpleMutexUnlock();
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __cmsmStartAllowedToFadeInTemporarilyTimer_block_invoke()
{
  v6 = *MEMORY[0x1E69E9840];
  result = MX_FeatureFlags_IsHandoffEnabled();
  if (result)
  {
    FigSimpleMutexLock();
    v1 = qword_1EB75E130;
    if (qword_1EB75E130)
    {
      if (dword_1EB75DE40)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v1 = qword_1EB75E130;
      }

      dispatch_source_cancel(v1);
      if (qword_1EB75E130)
      {
        dispatch_release(qword_1EB75E130);
        qword_1EB75E130 = 0;
      }
    }

    [+[MXSessionManager setAppAllowedToFadeInTemporarily:v4], "setAppAllowedToFadeInTemporarily:", 0];
    result = FigSimpleMutexUnlock();
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CMSessionMgrRegisterEndpointManager(const void *a1)
{
  if (MXGetSerialQueue())
  {

    return FigRouteDiscoveryManagerRegisterEndpointManager(a1);
  }

  else
  {
    CMSessionMgrRegisterEndpointManager_cold_1(&v3);
    return v3;
  }
}

__CFString *CMSessionMgrGetUpdatedHardwareFormatBasedOnPreferredNumberOfOutputChannelsAndPreferredHardwareFormat(int a1, __CFString *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (vaemIsAC3EncodingSupported())
  {
    v4 = FigCFEqual();
    if (a1 >= 3)
    {
      if (v4)
      {
        if (dword_1EB75DE40)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        a2 = @"AC-3";
      }
    }
  }

  v6 = *MEMORY[0x1E69E9840];
  return a2;
}

void __MXCoreSessionSetProperty_block_invoke()
{
  CMSMUtility_UpdateSomeLongFormVideoClientIsActiveOverAirPlayVideo();
  CMSMUtility_UpdateSomeLongFormVideoClientIsPlayingOverAirPlayVideo();

  CMSMNotificationUtility_PostVideoStreamsDidChange();
}

uint64_t cmsSetDefaultBuiltInRoute(void *a1, const void *a2, void *a3)
{
  if (![a1 allowsDefaultBuiltInRouteCustomization])
  {
    return 4294954315;
  }

  [a1 setDefaultBuiltInRoutePreference:a2];
  [a1 setDefaultBuiltInRoutePreferenceSetByClient:1];
  if (a2)
  {
    if (!CFEqual(a2, @"Speaker") && !CFEqual(a2, @"Receiver"))
    {
      return 4294954315;
    }
  }

  CustomizedCategory = CMSUtility_GetCustomizedCategory(a1);
  [a1 audioCategory];
  if (FigCFEqual())
  {
    return 0;
  }

  v9 = [a1 interruptionStyle];
  if ([a1 interruptionStyleSetByClient])
  {
    v10 = [a3 objectForKey:@"InterruptionStyle"] == 0;
  }

  else
  {
    v10 = 0;
  }

  [+[MXNowPlayingAppManager sharedInstance](MXNowPlayingAppManager setIgnoreNowPlayingAppUpdates:"setIgnoreNowPlayingAppUpdates:", v10];
  v7 = cmsSetAudioCategory(a1, CustomizedCategory, 0, a3);
  [+[MXNowPlayingAppManager sharedInstance](MXNowPlayingAppManager setIgnoreNowPlayingAppUpdates:"setIgnoreNowPlayingAppUpdates:", 0];
  if (v10)
  {
    [a1 setInterruptionStyleAtClientRequest:v9];
  }

  return v7;
}

uint64_t cmsEnableBluetoothRecording(void *a1, int a2, void *a3)
{
  if (![a1 allowsBluetoothRecordingCustomization])
  {
    return 4294954315;
  }

  [a1 setEnableBluetoothRecordingPreference:a2 != 0];
  [a1 setEnableBluetoothRecordingPreferenceSetByClient:1];
  CustomizedCategory = CMSUtility_GetCustomizedCategory(a1);
  [a1 audioCategory];
  if (FigCFEqual())
  {
    return 0;
  }

  v9 = [a1 interruptionStyle];
  if ([a1 interruptionStyleSetByClient])
  {
    v10 = [a3 objectForKey:@"InterruptionStyle"] == 0;
  }

  else
  {
    v10 = 0;
  }

  [+[MXNowPlayingAppManager sharedInstance](MXNowPlayingAppManager setIgnoreNowPlayingAppUpdates:"setIgnoreNowPlayingAppUpdates:", v10];
  v7 = cmsSetAudioCategory(a1, CustomizedCategory, 0, a3);
  [+[MXNowPlayingAppManager sharedInstance](MXNowPlayingAppManager setIgnoreNowPlayingAppUpdates:"setIgnoreNowPlayingAppUpdates:", 0];
  if (v10)
  {
    [a1 setInterruptionStyleAtClientRequest:v9];
  }

  return v7;
}

id __MXCoreSessionSetProperty_block_invoke_190(uint64_t a1)
{
  result = objc_loadWeak((a1 + 32));
  if (result)
  {
    v3 = result;
    [result updateAudioSessionIDAndAudioObject:*(a1 + 40)];
    result = [v3 isActive];
    if (result)
    {

      return [v3 sendSessionConfigurationInfoToVA];
    }
  }

  return result;
}

uint64_t cmsUpdateExcludedPortsList(void *a1, CFTypeRef cf)
{
  if (!a1)
  {
    return 4294954316;
  }

  if (cf)
  {
    v4 = CFGetTypeID(cf);
    if (v4 != CFArrayGetTypeID())
    {
      return 4294954315;
    }

    [a1 setExcludedPortsList:0];
    if (CFArrayGetCount(cf) >= 1)
    {
      v5 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(cf, v5);
        Value = CFDictionaryGetValue(ValueAtIndex, @"PortNumber");
        if (Value)
        {
          v8 = Value;
          v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:{objc_msgSend(a1, "excludedPortsList")}];
          [v9 addObject:v8];
          [a1 setExcludedPortsList:v9];
        }

        ++v5;
      }

      while (CFArrayGetCount(cf) > v5);
    }
  }

  else
  {
    [a1 setExcludedPortsList:0];
  }

  result = [a1 isActive];
  if (result)
  {
    if (([a1 currentlyControllingFlags] & 2) != 0)
    {
      cmsSetCategoryOnPVMAndAudioDevice(a1, 0, 0);
    }

    return 0;
  }

  return result;
}

uint64_t cmsSetOverrideRoute(void *a1, NSDictionary *a2)
{
  if (!a1)
  {
    return 4294954316;
  }

  if (FigCFEqual())
  {
    -[NSDictionary objectForKey:](-[MXSessionManager figCategoryToOutputOverridabilityDict](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance"), "figCategoryToOutputOverridabilityDict"), "objectForKey:", [a1 audioCategory]);
    if (FigCFEqual())
    {
      return 4294954315;
    }
  }

  v5 = [a1 audioCategory];
  v6 = [a1 audioMode];
  VADOutputPortTypeFromFigRouteName = CMSMVAUtility_GetVADOutputPortTypeFromFigRouteName(a2);
  VADInputPortTypeFromFigRouteName = CMSMVAUtility_GetVADInputPortTypeFromFigRouteName(a2);
  if (v5)
  {
    v9 = v5;
  }

  else
  {
    v9 = @"Audio/Video";
  }

  if (!v6)
  {
    v6 = @"Default";
  }

  VADCategoryFromFigCategoryName = CMSMVAUtility_GetVADCategoryFromFigCategoryName(v9);
  VADModeFromFigModeName = CMSMVAUtility_GetVADModeFromFigModeName(v6);
  if (!VADInputPortTypeFromFigRouteName && VADOutputPortTypeFromFigRouteName == 1886613611)
  {
    v12 = VADModeFromFigModeName;
    VADPortIDFromVADPortType = vaemGetVADPortIDFromVADPortType(1886216809);
    if (cmsmInputPortIsConnectedForRouteConfiguration(VADPortIDFromVADPortType, VADCategoryFromFigCategoryName, v12, [a1 allowedPortTypes], objc_msgSend(a1, "prefersBluetoothHighQualityContentCapture")))
    {
      VADInputPortTypeFromFigRouteName = 1886216809;
    }

    else
    {
      VADInputPortTypeFromFigRouteName = 0;
    }
  }

  v14 = vaemGetVADPortIDFromVADPortType(VADOutputPortTypeFromFigRouteName);
  v15 = vaemGetVADPortIDFromVADPortType(VADInputPortTypeFromFigRouteName);
  OverridePortsList = CMSMUtility_CreateOverridePortsList(v15, v14);
  [a1 setOverridePortsList:OverridePortsList];
  if (OverridePortsList)
  {
    CFRelease(OverridePortsList);
  }

  result = [a1 isActive];
  if (result)
  {
    cmsTryToTakeControl(a1);
    return 0;
  }

  return result;
}

uint64_t cmsSetVolume(void *a1, uint64_t a2, float a3)
{
  if ([a1 isActive] && !PVMGetEnabled())
  {
    cmsTryToTakeControl(a1);
  }

  VolumeSequenceNumber = CMSMUtility_GetVolumeSequenceNumber();

  return PVMSetCurrentPreferredVolumeWithRefCon(a2, VolumeSequenceNumber, 0, a3);
}

void CMSessionMgrInterruptVoiceAssistantIfCarSupportsAuxStream()
{
  v0 = MXGetSerialQueue();

  MXDispatchAsyncAndWait("CMSessionMgrInterruptVoiceAssistantIfCarSupportsAuxStream", "CMSessionManager.m", 13038, 0, 0, v0, &__block_literal_global_198);
}

uint64_t __CMSessionMgrInterruptVoiceAssistantIfCarSupportsAuxStream_block_invoke()
{
  result = FigRoutingManager_iOSIsCarPlayAuxStreamSupported();
  if (result)
  {

    return CMSMUtility_InterruptActiveSiriSession();
  }

  return result;
}

uint64_t FigEndpointManagerCopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CMBaseObject = FigEndpointManagerGetCMBaseObject();
  VTable = CMBaseObjectGetVTable();
  v9 = *(*(VTable + 8) + 48);
  if (!v9)
  {
    return 4294954514;
  }

  v10 = *(VTable + 8) + 48;

  return v9(CMBaseObject, a2, a3, a4);
}

uint64_t FigVAEndpointManagerCopyPropertyForRouteConfiguration(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  VTable = CMBaseObjectGetVTable();
  v14 = *(VTable + 24);
  result = VTable + 24;
  v15 = *(v14 + 16);
  if (v15)
  {

    return v15(a1, a2, a3, a4, a5, 0, a6);
  }

  return result;
}

uint64_t FigRoutingContextSelectRoute(uint64_t a1, uint64_t a2)
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(a1, a2, 0);
}

uint64_t CMSessionMgrHasRouteSharingPolicyLongFormVideo(uint64_t a1, _BYTE *a2)
{
  *a2 = 0;
  if (a1)
  {
    v4 = MXGetSerialQueue();
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __CMSessionMgrHasRouteSharingPolicyLongFormVideo_block_invoke;
    v6[3] = &__block_descriptor_48_e5_v8__0l;
    v6[4] = a1;
    v6[5] = a2;
    MXDispatchAsyncAndWait("CMSessionMgrHasRouteSharingPolicyLongFormVideo", "CMSessionManager.m", 15740, 0, 0, v4, v6);
    return 0;
  }

  else
  {
    CMSessionMgrHasRouteSharingPolicyLongFormVideo_cold_1(&v7);
    return v7;
  }
}

void __CMSessionMgrHasRouteSharingPolicyLongFormVideo_block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if ([+[MXSessionManager isLongFormVideoApp:"isLongFormVideoApp:"]
  {
    **(a1 + 40) = 1;
  }

  else
  {
    v2 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v11;
      while (2)
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v11 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = *(*(&v10 + 1) + 8 * i);
          if (v7)
          {
            [*(*(&v10 + 1) + 8 * i) displayID];
            v8 = *(a1 + 32);
            if (FigCFEqual())
            {
              if ([v7 routeSharingPolicy] == 3)
              {
                **(a1 + 40) = 1;
                goto LABEL_15;
              }
            }
          }
        }

        v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }

LABEL_15:
  }

  v9 = *MEMORY[0x1E69E9840];
}

uint64_t CMSessionMgrShouldHijackAudioRoute(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    CMSessionMgrShouldHijackAudioRoute_cold_2(&v12);
    return v12;
  }

  if (!a4)
  {
    CMSessionMgrShouldHijackAudioRoute_cold_1(&v12);
    return v12;
  }

  v8 = MXGetSerialQueue();
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __CMSessionMgrShouldHijackAudioRoute_block_invoke;
  v10[3] = &__block_descriptor_60_e5_v8__0l;
  v11 = a1;
  v10[4] = a2;
  v10[5] = a3;
  v10[6] = a4;
  MXDispatchAsyncAndWait("CMSessionMgrShouldHijackAudioRoute", "CMSessionManager.m", 15770, 0, 0, v8, v10);
  return 0;
}

uint64_t __CMSessionMgrShouldHijackAudioRoute_block_invoke(uint64_t a1)
{
  number[16] = *MEMORY[0x1E69E9840];
  v2 = FigRoutingManagerCopyEndpointWithDeviceID(*(a1 + 32), 1, *MEMORY[0x1E69618F8], 0);
  valuePtr = 0;
  if (!v2)
  {
    goto LABEL_21;
  }

  v3 = v2;
  number[0] = 0;
  CMBaseObject = FigEndpointGetCMBaseObject();
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v5)
  {
    v5(CMBaseObject, 0x1F289CDB0, *MEMORY[0x1E695E480], number);
    if (number[0])
    {
      CFNumberGetValue(number[0], kCFNumberIntType, &valuePtr);
      if (number[0])
      {
        CFRelease(number[0]);
        number[0] = 0;
      }
    }
  }

  CFRelease(v3);
  if (!valuePtr || (v6 = +[MXAudioAccessoryServices sharedInstance], ![(MXAudioAccessoryServices *)v6 isPortManaged:valuePtr]))
  {
LABEL_21:
    **(a1 + 40) = 0;
    **(a1 + 48) = 0x1F2898110;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    goto LABEL_22;
  }

  result = CMSM_GetHighestPriorityOfLocalSessionPlayingToDevice(*(a1 + 32));
  v8 = *(a1 + 56);
  if (v8 >= result)
  {
    v9 = result == 501 && v8 == 501;
    v10 = !v9;
    if (v9)
    {
      v11 = 0x1F28980F0;
    }

    else
    {
      v11 = 0;
    }

    result = CMSMVAUtility_IsBluetoothSharingSessionEnabled(0);
    if (!result)
    {
      goto LABEL_25;
    }

    if (dword_1EB75DE40)
    {
      v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
      result = fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  v10 = 0;
  v11 = 0x1F28980D0;
LABEL_25:
  **(a1 + 40) = v10;
  **(a1 + 48) = v11;
  if (!dword_1EB75DE40)
  {
    goto LABEL_23;
  }

  v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
LABEL_22:
  result = fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_23:
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CMSessionMgrCopyDeviceRouteForRouteConfiguration(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v10 = MXGetSerialQueue();
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __CMSessionMgrCopyDeviceRouteForRouteConfiguration_block_invoke;
  v13[3] = &unk_1E7AEA9A8;
  v13[4] = &v14;
  v13[5] = a1;
  v13[6] = a2;
  v13[7] = a3;
  v13[8] = a4;
  v13[9] = a5;
  MXDispatchAsyncAndWait("CMSessionMgrCopyDeviceRouteForRouteConfiguration", "CMSessionManager.m", 15844, 0, 0, v10, v13);
  v11 = *(v15 + 6);
  _Block_object_dispose(&v14, 8);
  return v11;
}

void sub_1B197279C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __CMSessionMgrCopyDeviceRouteForRouteConfiguration_block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v20 = 0;
  v21 = 0;
  v19 = 0;
  v2 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v15 objects:v22 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v16;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v16 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v7 = *(*(&v15 + 1) + 8 * v6);
      if (([v7 currentlyControllingFlags] & 2) != 0)
      {
        break;
      }

      if (v4 == ++v6)
      {
        v4 = [v2 countByEnumeratingWithState:&v15 objects:v22 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    if (!v7 || ![v7 audioCategory] || !CFEqual(objc_msgSend(v7, "audioCategory"), *(a1 + 40)))
    {
      goto LABEL_31;
    }

    v13 = 0;
    cf = 0;
    v8 = [+[MXSessionManager sharedInstance](MXSessionManager getUncustomizedCategory:"getUncustomizedCategory:", *(a1 + 40)];
    if (!PVMCopyCurrentState(0, &cf, &v13, &v21, &v20, &v19))
    {
      if (*(a1 + 40) && cf && PVMCategoriesAreEquivalent(v8, 0, cf, v13))
      {
        if (cf)
        {
          CFRelease(cf);
        }

        if (v13)
        {
          CFRelease(v13);
        }

        goto LABEL_32;
      }

      if (v21)
      {
        CFRelease(v21);
        v21 = 0;
      }

      if (v20)
      {
        CFRelease(v20);
        v20 = 0;
      }

      if (v19)
      {
        CFRelease(v19);
        v19 = 0;
      }
    }

    if (cf)
    {
      CFRelease(cf);
    }

    if (v13)
    {
      CFRelease(v13);
    }
  }

  else
  {
LABEL_9:
  }

LABEL_31:
  *(*(*(a1 + 32) + 8) + 24) = CMSMUtility_CopyDeviceRouteAtIndexForInactiveRouteConfiguration(*(a1 + 40), *(a1 + 48), 0, 0, 0, &v21, &v20, &v19);
LABEL_32:
  v9 = *(a1 + 56);
  if (v9)
  {
    *v9 = v21;
    v21 = 0;
  }

  v10 = *(a1 + 64);
  if (v10)
  {
    *v10 = v20;
    v20 = 0;
  }

  v11 = *(a1 + 72);
  if (v11)
  {
    *v11 = v20;
    v20 = 0;
  }

  if (v21)
  {
    CFRelease(v21);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  v12 = *MEMORY[0x1E69E9840];
}

__CFString *MXSMGetVolumeRampCategory(const __CFString *a1, const void *a2)
{
  v4 = @"PhoneCall";
  if (!PVMCategoriesAreEquivalent(a1, a2, @"PhoneCall", 0))
  {
    v4 = @"VoiceCommand";
    if (!PVMCategoriesAreEquivalent(a1, a2, @"VoiceCommand", 0))
    {
      v4 = @"Audio/Video";
      if (!PVMCategoriesAreEquivalent(a1, a2, @"Audio/Video", 0))
      {
        return 0;
      }
    }
  }

  return v4;
}

BOOL cmsmShouldUpdateMostRecentSynchronizedVolumeActivityTimestamp(const void *a1)
{
  cf = 0;
  if (a1)
  {
    cf = CFRetain(a1);
  }

  else
  {
    PVMCopyCurrentCategoryAndMode(&cf, 0);
  }

  if (FigCFEqual())
  {
    v1 = [+[MXSessionManager sharedInstance](MXSessionManager isVoiceAssistantPlayingToPersonalAudioDeviceOverMedia];
  }

  else
  {
    v1 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v1;
}

BOOL isRouteInfoInVolumeOperationCurrent(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) && *(a1 + 16) && *(a1 + 24))
  {
    v4 = *(a1 + 16);
    v9[0] = *a1;
    v9[1] = v4;
    v10 = *(a1 + 32);
    result = PVMIsCurrentDeviceRoute(v9);
    if (!result)
    {
      return result;
    }

    v6 = *(a1 + 8);
    if (v6)
    {
      v6 = CFRetain(v6);
    }

    *(a2 + 8) = v6;
    v7 = *(a1 + 24);
    if (v7)
    {
      v7 = CFRetain(v7);
    }

    *(a2 + 24) = v7;
    v8 = *(a1 + 16);
    if (v8)
    {
      v8 = CFRetain(v8);
    }

    *(a2 + 16) = v8;
  }

  else
  {
    PVMCopyCurrentDeviceRoute((a2 + 8), (a2 + 24), (a2 + 16));
  }

  return 1;
}

uint64_t CMSessionManagerPerformVolumeOperationWithSequenceNumber(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, float a9, uint64_t a10, uint64_t a11)
{
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v20 = MXGetSerialQueue();
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __CMSessionManagerPerformVolumeOperationWithSequenceNumber_block_invoke;
  v23[3] = &unk_1E7AED2B0;
  v24 = a1;
  v25 = a9;
  v23[4] = &v27;
  v23[5] = a2;
  v23[6] = a3;
  v23[7] = a4;
  v26 = a6;
  v23[8] = a5;
  v23[9] = a7;
  v23[10] = a8;
  v23[11] = a10;
  v23[12] = a11;
  MXDispatchAsyncAndWait("CMSessionManagerPerformVolumeOperationWithSequenceNumber", "CMSessionManager.m", 17549, 0, 0, v20, v23);
  v21 = *(v28 + 6);
  _Block_object_dispose(&v27, 8);
  return v21;
}

void sub_1B1972D28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __CMSessionManagerPerformVolumeOperationWithSequenceNumber_block_invoke(uint64_t a1)
{
  result = MXSMPerformVolumeOperation(*(a1 + 104), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64), 0, *(a1 + 112), *(a1 + 72), *(a1 + 108), 0.0, 0.0, *(a1 + 80), *(a1 + 88), *(a1 + 96), 0, 0);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t CMSessionMgrPerformVolumeOperation(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, float a9)
{
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v18 = MXGetSerialQueue();
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __CMSessionMgrPerformVolumeOperation_block_invoke;
  v21[3] = &unk_1E7AE7B08;
  v22 = a1;
  v23 = a9;
  v21[4] = &v24;
  v21[5] = a2;
  v21[6] = a3;
  v21[7] = a4;
  v21[8] = a5;
  v21[9] = a6;
  v21[10] = a7;
  v21[11] = a8;
  MXDispatchAsyncAndWait("CMSessionMgrPerformVolumeOperation", "CMSessionManager.m", 17587, 0, 0, v18, v21);
  v19 = *(v25 + 6);
  _Block_object_dispose(&v24, 8);
  return v19;
}

void sub_1B1972ED8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __CMSessionMgrPerformVolumeOperation_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 96);
  v3 = *(a1 + 100);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  v8 = getpid();
  result = MXSMPerformVolumeOperation(v2, v4, v5, v6, v7, 0, v8, *(a1 + 72), v3, 0.0, 0.0, *(a1 + 80), *(a1 + 88), 0, 0, 0);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t _CMSessionMgrCopyPortDescription(const __CFNumber *a1, uint64_t a2, CFDictionaryRef *a3)
{
  if (a1 && (v5 = CFGetTypeID(a1), v5 == CFNumberGetTypeID()))
  {
    PortFromCFNumber = CMSMVAUtility_GetPortFromCFNumber(a1);
    if (a3)
    {
      v7 = cmsmCopyDetailedPortInfoForRouteConfiguration(PortFromCFNumber, 0, 1768776806, 0, 0, 2);
      result = 0;
      *a3 = v7;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    _CMSessionMgrCopyPortDescription_cold_1(&v9);
    return v9;
  }

  return result;
}

__n128 MediaServerCMSessionOneTimeInitialization(uint64_t a1, uint64_t a2)
{
  if (qword_1ED6D2FD0 != -1)
  {
    MediaServerCMSessionOneTimeInitialization_cold_1();
  }

  MXSetSerialQueue(a1);
  *&unk_1EB75E040 = *a2;
  unk_1EB75E050 = *(a2 + 16);
  *&unk_1EB75E060 = *(a2 + 32);
  *&qword_1EB75E070 = *(a2 + 48);
  result = *(a2 + 64);
  *&unk_1EB75E080 = result;
  return result;
}

void MXSessionManagerFadeOutCurrentNowPlayingApp(int a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (MX_FeatureFlags_IsHandoffEnabled())
  {
    v2 = CMSMNP_CopyNowPlayingAppSession();
    if (v2)
    {
      v3 = v2;
      if (dword_1EB75DE40)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      valuePtr[0] = 0;
      if (a1)
      {
        CMSMUtility_GetFadeOutDurationForPlaybackHandoff();
      }

      else
      {
        v5 = 0;
      }

      v13 = v5;
      v6 = CFGetAllocator(v3);
      v7 = CFNumberCreate(v6, kCFNumberFloat32Type, valuePtr);
      v8 = CFGetAllocator(v3);
      v9 = CFNumberCreate(v8, kCFNumberFloat32Type, &v13);
      CMSMUtility_PostNotifyStyleFadeOutAppliedForPlaybackHandoff();
      CMSUtility_PostInterruptionCommandNotification(v3, 2u, [v3 clientName], 0, v7, v9, 0, 0);
      v10 = +[MXSessionManager sharedInstance];
      LODWORD(v11) = v13;
      [(MXSessionManager *)v10 sleepForAsyncDucking:1 duration:v11];
      if (v7)
      {
        CFRelease(v7);
      }

      if (v9)
      {
        CFRelease(v9);
      }
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

void MXSessionManagerFadeInCurrentNowPlayingApp(int a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (MX_FeatureFlags_IsHandoffEnabled())
  {
    v2 = CMSMNP_CopyNowPlayingAppSession();
    if (v2)
    {
      v3 = v2;
      if (dword_1EB75DE40)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      if (a1)
      {
        CMSMUtility_GetFadeInDurationForPlaybackHandoff();
      }

      else
      {
        v5 = 0;
      }

      valuePtr[0] = v5;
      v6 = CFGetAllocator(v3);
      v7 = CFNumberCreate(v6, kCFNumberFloat32Type, valuePtr);
      CMSMUtility_PostNotifyStyleFadeInAppliedForPlaybackHandoff();
      CMSUtility_PostInterruptionCommandNotification(v3, 3u, [v3 clientName], 0, 0, v7, 0, 0);
      v8 = +[MXSessionManager sharedInstance];
      LODWORD(v9) = valuePtr[0];
      [(MXSessionManager *)v8 sleepForAsyncDucking:0 duration:v9];
      if (v7)
      {
        CFRelease(v7);
      }
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

void *__cmsmLoadAudioStatisticsRoutines_block_invoke()
{
  result = dlopen("/usr/lib/libAudioStatistics.dylib", 1);
  if (result)
  {
    v1 = result;
    gCMSessionAudioStatistics = dlsym(result, "CreateSharedCAReportingClient");
    off_1EB75DFF8 = dlsym(v1, "CAReportingClientCreateReporterID");
    off_1EB75E000 = dlsym(v1, "CAReportingClientStartReporter");
    off_1EB75E008 = dlsym(v1, "CAReportingClientStopReporter");
    off_1EB75E010 = dlsym(v1, "CAReportingClientSetAudioServiceType");
    qword_1EB75E018 = dlsym(v1, "CAReportingClientGetAudioServiceType");
    off_1EB75E020 = dlsym(v1, "CAReportingClientSetConfiguration");
    off_1EB75E028 = dlsym(v1, "CAReportingClientSendMessage");
    result = dlsym(v1, "CAReportingClientDestroyReporterID");
    off_1EB75E030 = result;
  }

  return result;
}

__CFString *cmsmAudioPortInEarBluetoothStatusToString(uint64_t a1)
{
  if (a1 >= 4)
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"UNKNOWN (%d)", a1];
  }

  else
  {
    return off_1E7AED310[a1];
  }
}

void cmsmGetCountAndResourceEntriesOfType(uint64_t a1, _DWORD *a2, void *a3)
{
  *a3 = 0;
  *a2 = 0;
  if (dword_1EB75E100 >= 1)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = *(qword_1EB75E108 + v5);
      if (FigCFEqual())
      {
        v8 = qword_1EB75E108 + v5;
        *a2 = *(qword_1EB75E108 + v5 + 8);
        *a3 = *(v8 + 16);
      }

      ++v6;
      v5 += 24;
    }

    while (v6 < dword_1EB75E100);
  }
}

uint64_t (*__cmsmLoadClusterSyncMgrRoutines_block_invoke())(void)
{
  v0 = dlopen("/System/Library/Frameworks/MediaToolbox.framework/MediaToolbox", 4);
  if (!v0)
  {
    return __cmsmLoadClusterSyncMgrRoutines_block_invoke_cold_1();
  }

  result = dlsym(v0, "FigClusterSynchronizationManager_ClientIsPlaying");
  sFigClusterSynchronizationManager_ClientIsPlaying = result;
  if (!result)
  {
    return __cmsmLoadClusterSyncMgrRoutines_block_invoke_cold_1();
  }

  return result;
}

void __cmsChangeGroupableAirPlayRouteFromSystemAudioToSystemMusic_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  CFArrayAppendValue(Mutable, *(a1 + 32));
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v5 = CFDictionaryCreateMutable(v2, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(v5, @"RouteChangeOptionKey_UserPickedRoute", *MEMORY[0x1E695E4C0]);
  FigRoutingManagerPickEndpointsForContext(*(a1 + 40), Mutable, 0, v5);
  if (v5)
  {
    CFRelease(v5);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = *MEMORY[0x1E69E9840];
}

BOOL cmsmValidateAppsList(const __CFArray *a1)
{
  Count = CFArrayGetCount(a1);
  if (Count < 1)
  {
    return 1;
  }

  else
  {
    v3 = Count;
    v4 = 0;
    if (CFArrayGetValueAtIndex(a1, 0))
    {
      v5 = 1;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a1, v5 - 1);
        v7 = CFGetTypeID(ValueAtIndex);
        if (v7 != CFStringGetTypeID())
        {
          break;
        }

        v4 = v5 >= v3;
        if (v3 == v5)
        {
          break;
        }
      }

      while (CFArrayGetValueAtIndex(a1, v5++));
    }
  }

  return v4;
}

void MXSMPostSpeechDetectStyleDidChangeForTriggeredVolumeChange(unsigned int a1, int a2, float a3, float a4)
{
  CurrentOutputPortAtIndex = CMSMUtility_GetCurrentOutputPortAtIndex(0);
  DoesBluetoothSupportFeature = vaeDoesBluetoothSupportFeature(CurrentOutputPortAtIndex);
  if (a1 <= 0xE && ((1 << a1) & 0x5836) != 0 && a3 != a4 && !a2 && DoesBluetoothSupportFeature)
  {

    CMSMNotificationUtility_PostSpeechDetectStyleDidChangeIfNeeded(1, a4 > a3);
  }
}

void __cmsmRegisterForAudioDeviceStartNotifications_block_invoke()
{
  AudioDeviceStart = cmsmGetAudioDeviceStart();
  if (![+[MXSessionManager defaultVADID] sharedInstance]
  {
    return;
  }

  if (AudioDeviceStart)
  {
    if (!FigAtomicCompareAndSwap32())
    {
      return;
    }

    ::AudioDeviceStart([+[MXSessionManager defaultVADID] sharedInstance];
    if (!FigAtomicCompareAndSwap32())
    {
      return;
    }

    v1 = *MEMORY[0x1E695E480];
    Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
    CFStringAppendFormat(Mutable, 0, @"com.apple.appletv.audiostart");
    Current = CFAbsoluteTimeGetCurrent();
    v4 = CFDateCreate(v1, Current);
    v5 = sCMSessionMgrAudioDeviceStartIdleSleepPreventorName;
    sCMSessionMgrAudioDeviceStartIdleSleepPreventorName = Mutable;
    if (Mutable)
    {
      CFRetain(Mutable);
    }

    if (v5)
    {
      CFRelease(v5);
    }

    v6 = sCMSessionMgrAudioDeviceStartIdleSleepPreventorCreationTime;
    sCMSessionMgrAudioDeviceStartIdleSleepPreventorCreationTime = v4;
    if (v4)
    {
      CFRetain(v4);
    }

    if (v6)
    {
      CFRelease(v6);
    }

    PowerLogDataForAppleTV = CMSMPowerLogCreatePowerLogDataForAppleTV(@"AppleTV_Awake", sCMSessionMgrAudioDeviceStartIdleSleepPreventor, sCMSessionMgrAudioDeviceStartIdleSleepPreventorName, sCMSessionMgrAudioDeviceStartIdleSleepPreventorCreationTime);
    sCMSessionMgrAudioDeviceStartIdleSleepPreventorAllocated = CMSMSleep_CreateIdleSleepPreventor(Mutable, @"CoreMedia_AppleTVIdleSleepPreventor", PowerLogDataForAppleTV, &sCMSessionMgrAudioDeviceStartIdleSleepPreventor);
    if (PowerLogDataForAppleTV)
    {
      CFRelease(PowerLogDataForAppleTV);
    }

    if (Mutable)
    {
      CFRelease(Mutable);
      if (!v4)
      {
        return;
      }

      goto LABEL_26;
    }
  }

  else
  {
    if (!FigAtomicCompareAndSwap32())
    {
      return;
    }

    AudioDeviceStop([+[MXSessionManager defaultVADID] sharedInstance];
    if (!FigAtomicCompareAndSwap32())
    {
      return;
    }

    v4 = CMSMPowerLogCreatePowerLogDataForAppleTV(@"AppleTV_Asleep", sCMSessionMgrAudioDeviceStartIdleSleepPreventor, sCMSessionMgrAudioDeviceStartIdleSleepPreventorName, sCMSessionMgrAudioDeviceStartIdleSleepPreventorCreationTime);
    if (!CMSMSleep_ReleaseIdleSleepPreventor(sCMSessionMgrAudioDeviceStartIdleSleepPreventor, @"CoreMedia_AppleTVIdleSleepPreventor", v4))
    {
      sCMSessionMgrAudioDeviceStartIdleSleepPreventorAllocated = 1;
      if (!v4)
      {
        return;
      }

      goto LABEL_26;
    }

    sCMSessionMgrAudioDeviceStartIdleSleepPreventor = 0;
    if (sCMSessionMgrAudioDeviceStartIdleSleepPreventorName)
    {
      CFRelease(sCMSessionMgrAudioDeviceStartIdleSleepPreventorName);
      sCMSessionMgrAudioDeviceStartIdleSleepPreventorName = 0;
    }

    if (sCMSessionMgrAudioDeviceStartIdleSleepPreventorCreationTime)
    {
      CFRelease(sCMSessionMgrAudioDeviceStartIdleSleepPreventorCreationTime);
      sCMSessionMgrAudioDeviceStartIdleSleepPreventorCreationTime = 0;
    }
  }

  if (!v4)
  {
    return;
  }

LABEL_26:

  CFRelease(v4);
}

uint64_t cmsmGetAudioDeviceStart()
{
  state64 = 0;
  if (notify_get_state(_MergedGlobals_13, &state64))
  {
    return gAudioDeviceStartCached;
  }

  result = state64 != 0;
  gAudioDeviceStartCached = state64 != 0;
  return result;
}

void __cmsmTightSyncUUIDChangedCallback_block_invoke()
{
  v16 = *MEMORY[0x1E69E9840];
  v0 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v1 = [v0 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v1)
  {
    v2 = v1;
    v3 = *v12;
    v10 = v0;
    do
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v12 != v3)
        {
          objc_enumerationMutation(v0);
        }

        v5 = *(*(&v11 + 1) + 8 * i);
        if ((-[MXSessionManager isAirPlaySession:](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance", v8, v9), "isAirPlaySession:", v5) || CMSUtility_GetWantsAutomaticClusterPairingOnPlaybackStart(v5)) && [v5 isActive] && objc_msgSend(v5, "isPlaying"))
        {
          if (dword_1EB75DE40)
          {
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
            v0 = v10;
          }

          CMSUtilityApplier_PostNotification_StopCommand(v5, 0);
        }
      }

      v2 = [v0 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v2);
  }

  v7 = *MEMORY[0x1E69E9840];
}

uint64_t __cmsmVoiceOverIsOnChangedCallback_block_invoke(uint64_t a1)
{
  v1 = byte_1EB75E1B8;
  v2 = *(a1 + 32);
  byte_1EB75E1B8 = *(a1 + 32);
  if (MX_FeatureFlags_IsInputAudioCoexistenceSupportEnabled())
  {
    v3 = [+[MXSessionManager sharedInstance](MXSessionManager copyActiveVoiceOverSession];
    [v3 sendSessionConfigurationInfoToVA];
  }

  else
  {
    [+[MXAdditiveRoutingManager sharedInstance](MXAdditiveRoutingManager sendActiveSessionsInfoToVA];
  }

  result = MX_FeatureFlags_IsRelativeVoiceOverVolumeEnabled();
  if (result && v1 != v2)
  {
    [+[MXSessionManager sharedInstance](MXSessionManager startAsyncDuckingOperation];
    [+[MXSessionManager sharedInstance](MXSessionManager updateDuckedSessionsForVoiceOver:"updateDuckedSessionsForVoiceOver:", 0];
    v5 = +[MXSessionManager sharedInstance];

    return [(MXSessionManager *)v5 endAsyncDuckingOperation];
  }

  return result;
}

void *__MediaRemoteLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/MediaRemote.framework/MediaRemote", 2);
  MediaRemoteLibrary_sLib = result;
  return result;
}

uint64_t initValkMRMediaRemoteOptionRemoteControlInterfaceIdentifier()
{
  if (MediaRemoteLibrary_sOnce != -1)
  {
    cmsmSendCommandToMediaRemote_cold_1();
  }

  v0 = dlsym(MediaRemoteLibrary_sLib, "kMRMediaRemoteOptionRemoteControlInterfaceIdentifier");
  if (v0)
  {
    result = *v0;
    constantValkMRMediaRemoteOptionRemoteControlInterfaceIdentifier = result;
  }

  else
  {
    result = constantValkMRMediaRemoteOptionRemoteControlInterfaceIdentifier;
  }

  getkMRMediaRemoteOptionRemoteControlInterfaceIdentifier = kMRMediaRemoteOptionRemoteControlInterfaceIdentifierFunction;
  return result;
}

uint64_t initMRMediaRemoteSendCommandToApp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (MediaRemoteLibrary_sOnce != -1)
  {
    cmsmSendCommandToMediaRemote_cold_1();
  }

  v14 = dlsym(MediaRemoteLibrary_sLib, "MRMediaRemoteSendCommandToApp");
  softLinkMRMediaRemoteSendCommandToApp = v14;

  return (v14)(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t initMRMediaRemoteGetLocalOrigin()
{
  if (MediaRemoteLibrary_sOnce != -1)
  {
    cmsmSendCommandToMediaRemote_cold_1();
  }

  v0 = dlsym(MediaRemoteLibrary_sLib, "MRMediaRemoteGetLocalOrigin");
  softLinkMRMediaRemoteGetLocalOrigin = v0;

  return v0();
}

uint64_t fsmcontroller_CopyCarModesQueue(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    dispatch_retain(*(a1 + 16));
  }

  return v1;
}

uint64_t FigStarkModeControllerCreate(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E695E480];
  if (fsm_stateObjectGetTypeID_sRegisterStateOnce != -1)
  {
    FigStarkModeControllerCreate_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v5 = dispatch_queue_create("com.apple.mediaexperience.carmodes", v4);
  Instance[2] = v5;
  initially_inactive = dispatch_queue_attr_make_initially_inactive(0);
  Instance[3] = dispatch_queue_create_with_target_V2("com.apple.mediaexperience.carmodes-request", initially_inactive, v5);
  Instance[15] = CFArrayCreateMutable(v2, 0, 0);
  v7 = MEMORY[0x1E695E9C0];
  Instance[10] = CFArrayCreateMutable(v2, 0, MEMORY[0x1E695E9C0]);
  Instance[6] = CFArrayCreateMutable(v2, 0, v7);
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work();
  fig_note_initialize_category_with_default_work();
  v16 = 0;
  v15 = 0u;
  v14[5] = 100;
  v14[3] = 0;
  v14[1] = 100;
  Mutable = CFArrayCreateMutable(v2, 0, v7);
  v14[2] = Mutable;
  v14[0] = 0x6400000002;
  v9 = CFArrayCreateMutable(v2, 0, v7);
  v14[6] = v9;
  v14[4] = 0x6400000002;
  v10 = FigStarkModeControllerSetCurrentInternalMode(Instance, v14);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (v10)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    CFRelease(Instance);
    Instance = 0;
  }

  *a1 = Instance;
  v12 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t fsm_verifyResourceState(uint64_t a1)
{
  if (!*a1)
  {
    return 4294949813;
  }

  if (!*(a1 + 4))
  {
    return 4294950560;
  }

  if (!*(a1 + 8))
  {
    return 4294950559;
  }

  v2 = *(a1 + 16);
  if (v2 && CFArrayGetCount(v2))
  {
    if (!*(a1 + 24))
    {
      return 4294950558;
    }
  }

  else if (*(a1 + 24))
  {
    return 4294949812;
  }

  return 0;
}

CFTypeRef __FigStarkModeControllerSetCurrentInternalMode_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 80);
  if (v3)
  {
    CFRelease(v3);
    *(*(a1 + 32) + 80) = 0;
    v2 = *(a1 + 32);
  }

  v4 = *(v2 + 48);
  if (v4)
  {
    CFRelease(v4);
    *(*(a1 + 32) + 48) = 0;
    v2 = *(a1 + 32);
  }

  *(v2 + 32) = *(a1 + 40);
  v5 = *(a1 + 56);
  v6 = *(a1 + 72);
  v7 = *(a1 + 104);
  *(v2 + 80) = *(a1 + 88);
  *(v2 + 96) = v7;
  *(v2 + 48) = v5;
  *(v2 + 64) = v6;
  v8 = *(a1 + 32);
  v9 = *(v8 + 80);
  if (v9)
  {
    v9 = CFRetain(v9);
    v8 = *(a1 + 32);
  }

  *(v8 + 80) = v9;
  v10 = *(a1 + 32);
  result = *(v10 + 48);
  if (result)
  {
    result = CFRetain(result);
    v10 = *(a1 + 32);
  }

  *(v10 + 48) = result;
  return result;
}

void __FigStarkModeControllerSetExecuteChangeHandler_block_invoke(uint64_t a1)
{
  _Block_release(*(*(a1 + 40) + 112));
  v2 = *(a1 + 40);
  v2[14] = *(a1 + 32);

  CFRelease(v2);
}

void __FigStarkModeControllerAddStateChangedHandler_block_invoke(uint64_t a1)
{
  CFArrayAppendValue(*(*(a1 + 32) + 120), *(a1 + 40));
  v2 = *(a1 + 32);

  CFRelease(v2);
}

void FigStarkModeControllerRemoveStateChangedHandler(CFTypeRef cf, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (cf && a2)
  {
    CFRetain(cf);
    v4 = *(a2 + 24);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __FigStarkModeControllerRemoveStateChangedHandler_block_invoke;
    v7[3] = &__block_descriptor_48_e5_v8__0l;
    v7[4] = cf;
    v7[5] = a2;
    MXDispatchAsync("FigStarkModeControllerRemoveStateChangedHandler", "FigStarkMode.m", 1207, 0, 0, v4, v7);
  }

  else
  {
    v9 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __FigStarkModeControllerRemoveStateChangedHandler_block_invoke(uint64_t a1)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v5 = *(a1 + 32);
  v2 = *(v5 + 16);
  v4[2] = __FigStarkModeControllerRemoveStateChangedHandler_block_invoke_2;
  v4[3] = &__block_descriptor_48_e5_v8__0l;
  MXDispatchSync("FigStarkModeControllerRemoveStateChangedHandler_block_invoke", "FigStarkMode.m", 1208, 0, 0, v2, v4);
  v3 = *(a1 + 32);
  if (v3)
  {
    CFRelease(v3);
  }
}

void __FigStarkModeControllerRemoveStateChangedHandler_block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 120);
  v6.length = CFArrayGetCount(v2);
  v6.location = 0;
  FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v2, v6, *(a1 + 40));
  if (FirstIndexOfValue != -1)
  {
    CFArrayRemoveValueAtIndex(*(*(a1 + 32) + 120), FirstIndexOfValue);
    v4 = *(a1 + 40);

    CFRelease(v4);
  }
}

uint64_t FigStarkModeControllerGetCurrentMode(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (MX_FeatureFlags_IsAirPlayDaemonEnabled())
  {
    if (dword_1EB75E258)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v5 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v5)
    {
      v5(a1, a2);
    }
  }

  else
  {
    if (dword_1EB75E258)
    {
      v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    fsmcontroller_GetCurrentMode(a1, a2);
  }

  v6 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t FigStarkModeControllerGetCurrentResourceBorrowConstraint(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = *(a1 + 16);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __FigStarkModeControllerGetCurrentResourceBorrowConstraint_block_invoke;
  v5[3] = &unk_1E7AE7140;
  v5[4] = &v6;
  v5[5] = a2;
  v5[6] = a1;
  MXDispatchSync("FigStarkModeControllerGetCurrentResourceBorrowConstraint", "FigStarkMode.m", 1284, 0, 0, v2, v5);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __FigStarkModeControllerGetCurrentResourceBorrowConstraint_block_invoke(void *a1)
{
  v2 = a1[5];
  result = FigCFEqual();
  if (result)
  {
    v4 = 72;
  }

  else
  {
    v5 = a1[5];
    result = FigCFEqual();
    if (!result)
    {
      return result;
    }

    v4 = 40;
  }

  *(*(a1[4] + 8) + 24) = *(a1[6] + v4);
  return result;
}

uint64_t FigStarkModeControllerRequestModeChange(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x1E69E9840];
  if (MX_FeatureFlags_IsAirPlayDaemonEnabled())
  {
    if (dword_1EB75E258)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v12 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v12)
    {
      result = v12(a1, a2, a3, a4, a5);
    }

    else
    {
      result = 4294954514;
    }
  }

  else
  {
    if (dword_1EB75E258)
    {
      v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    result = fsmcontroller_RequestModeChange(a1, a2, a3, a4, a5);
  }

  v14 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t fsmcontroller_RequestInitialModeChange(uint64_t a1, int *a2, int *a3, __int128 *a4, uint64_t a5, uint64_t a6)
{
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  if (a1)
  {
    if (a4)
    {
      v11 = a4[3];
      v26 = a4[2];
      v27 = v11;
      v28 = *(a4 + 8);
      v12 = a4[1];
      v24 = *a4;
      v25 = v12;
      fsm_validateInitialModeForResource(a2, &v24, 0);
      fsm_validateInitialModeForResource(a3, &v24, 1);
      v13 = *(a1 + 16);
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __fsmcontroller_RequestInitialModeChange_block_invoke;
      v16[3] = &unk_1E7AED3A8;
      v16[6] = a2;
      v16[7] = a3;
      v16[4] = &v29;
      v16[5] = a1;
      v19 = v26;
      v20 = v27;
      v18 = v25;
      v17 = v24;
      v21 = v28;
      v22 = a5;
      v23 = a6;
      MXDispatchSync("fsmcontroller_RequestInitialModeChange", "FigStarkMode.m", 1584, 0, 0, v13, v16);
    }

    dispatch_activate(*(a1 + 24));
    v14 = *(v30 + 6);
  }

  else
  {
    v14 = 4294950566;
    v32 = -16730;
  }

  _Block_object_dispose(&v29, 8);
  return v14;
}

int *fsm_validateInitialModeForResource(int *result, uint64_t a2, int a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = 8;
  if (a3)
  {
    v4 = 32;
  }

  v5 = (a2 + v4);
  if (result)
  {
    v6 = result;
    v7 = *result;
    if (*result)
    {
      v9 = 4 * (a3 != 0);
      if (dword_1EB75E258)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        result = fig_log_call_emit_and_clean_up_after_send_and_compose();
        v7 = *v6;
      }

      if (v7 == 1)
      {
        if (!v6[1])
        {
          if (dword_1EB75E258)
          {
            v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
            result = fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          v6[1] = 100;
        }

        if (!v6[2])
        {
          if (dword_1EB75E258)
          {
            v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
            result = fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          v6[2] = 100;
        }
      }

      if (*v6 == 2)
      {
        if ((*v5 & 0xFFFFFFFE) != 0x14)
        {
          goto LABEL_36;
        }

        if (a3 && *(a2 + v9) == 1)
        {
          *(a2 + 64) = 0;
          *(a2 + 56) = 0;
        }

        *(a2 + v9) = 2;
      }

      else
      {
        if (*v6 != 1)
        {
          goto LABEL_36;
        }

        v14 = *v5;
        if (*v5 != 21)
        {
          if (v14 == 20)
          {
            v5[4] = v6[1];
            v18 = v6[2];
            v5[5] = v18;
            v15 = v5 + 5;
            if (v5[1] != 100 || v6[1] == 100 && v18 == 100)
            {
LABEL_36:
              if (dword_1EB75E258)
              {
                v16 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
                goto LABEL_38;
              }

              goto LABEL_39;
            }

            v5[4] = 100;
LABEL_35:
            *v15 = 100;
            goto LABEL_36;
          }

          if (v14)
          {
            goto LABEL_36;
          }
        }

        *v5 = 0x6400000014;
      }

      v5[4] = 100;
      v15 = v5 + 5;
      goto LABEL_35;
    }
  }

  if (*v5 == 21 || *v5 == 0)
  {
    *v5 = 0x6400000014;
    *(v5 + 2) = 0x6400000064;
    if (dword_1EB75E258)
    {
      v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
LABEL_38:
      result = fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

LABEL_39:
  v17 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t FigStarkModeControllerRequestInitialModeChange(uint64_t a1, int *a2, int *a3, __int128 *a4, uint64_t a5, uint64_t a6)
{
  v17 = *MEMORY[0x1E69E9840];
  if (MX_FeatureFlags_IsAirPlayDaemonEnabled())
  {
    if (dword_1EB75E258)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v14 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v14)
    {
      result = v14(a1, a2, a3, a4, a5, a6);
    }

    else
    {
      result = 4294954514;
    }
  }

  else
  {
    if (dword_1EB75E258)
    {
      v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    result = fsmcontroller_RequestInitialModeChange(a1, a2, a3, a4, a5, a6);
  }

  v16 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t FigStarkModeCopyController(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v6 = 0;
    if (MX_FeatureFlags_IsAirPlayDaemonEnabled())
    {
      result = FigStarkModeControllerRemoteCreate(*MEMORY[0x1E695E480], 0, &v6);
    }

    else
    {
      if (dword_1EB75E258)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      result = CMSMUtility_CopyFigStarkModeController(&v6);
      if (result)
      {
        FigStarkModeCopyController_cold_1(result, &v6, v7);
        result = v7[0];
        goto LABEL_9;
      }
    }

    *a1 = v6;
  }

  else
  {
    LODWORD(v6) = 0;
    v3 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    result = 4294954315;
  }

LABEL_9:
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t FigStarkModeControllerGetClassID()
{
  if (qword_1ED6D3060 != -1)
  {
    FigStarkModeControllerGetClassID_cold_1();
  }

  return qword_1ED6D3068;
}

uint64_t starkModeController_getClassID(uint64_t a1)
{
  ClassID = CMBaseGetClassID();

  return MEMORY[0x1EEDBC160](&starkModeController_getClassID_sClassDesc, ClassID, 1, a1);
}

uint64_t FigStarkModeControllerGetTypeID()
{
  if (qword_1ED6D3060 != -1)
  {
    FigStarkModeControllerGetClassID_cold_1();
  }

  v1 = qword_1ED6D3068;

  return MEMORY[0x1EEDBB488](v1);
}

uint64_t FigStarkModeControllerXPCCreate(uint64_t a1, int a2, void *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    if (qword_1ED6D3060 != -1)
    {
      FigStarkModeControllerGetClassID_cold_1();
    }

    v5 = CMDerivedObjectCreate();
    if (!v5)
    {
      *CMBaseObjectGetDerivedStorage() = a2;
      *a3 = 0;
    }
  }

  else
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v5 = 4294954315;
  }

  v7 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t __fsm_stateObjectGetTypeID_block_invoke()
{
  fsm_stateObjectGetTypeID_sStateClass = 0;
  unk_1EB75DCC0 = "FigStarkModeControllerRefObject";
  qword_1EB75DCC8 = fsm_stateInit;
  unk_1EB75DCD0 = 0;
  qword_1EB75DCD8 = fsm_stateFinalize;
  unk_1EB75DCE0 = 0u;
  unk_1EB75DCF0 = 0u;
  result = _CFRuntimeRegisterClass();
  fsm_stateObjectGetTypeID_sStateID = result;
  return result;
}

double fsm_stateInit(uint64_t a1)
{
  *(a1 + 128) = 0;
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  return result;
}

void fsm_stateFinalize(uint64_t a1)
{
  dispatch_activate(*(a1 + 24));
  v2 = *(a1 + 16);
  if (v2)
  {
    dispatch_release(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    dispatch_release(v3);
    *(a1 + 24) = 0;
  }

  v4 = *(a1 + 120);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 120) = 0;
  }

  _Block_release(*(a1 + 112));
  v5 = *(a1 + 80);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 80) = 0;
  }

  v6 = *(a1 + 48);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 48) = 0;
  }
}

uint64_t __fsm_stateChangedHandlerTokenObjectGetTypeID_block_invoke()
{
  fsm_stateChangedHandlerTokenObjectGetTypeID_sStateChangedHandlerTokenClass = 0;
  *algn_1EB75DD28 = "FigStarkModeStateChangedHandlerTokenRefObject";
  qword_1EB75DD30 = fsm_stateChangedHandlerTokenInit;
  unk_1EB75DD38 = 0;
  qword_1EB75DD40 = fsm_stateChangedHandlerTokenFinalize;
  *algn_1EB75DD48 = 0u;
  *&algn_1EB75DD48[16] = 0u;
  result = _CFRuntimeRegisterClass();
  qword_1ED6D3078 = result;
  return result;
}

void *fsm_stateChangedHandlerTokenInit(void *result)
{
  result[2] = 0;
  result[3] = 0;
  result[4] = 0;
  return result;
}

void fsm_stateChangedHandlerTokenFinalize(uint64_t a1)
{
  *(a1 + 16) = 0;
  v2 = *(a1 + 24);
  if (v2)
  {
    dispatch_release(v2);
    *(a1 + 24) = 0;
  }

  _Block_release(*(a1 + 32));
  *(a1 + 32) = 0;
}

uint64_t mxFigStarkModeController_Finalize(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = *MEMORY[0x1E69E9840];

    return CMBaseObjectGetDerivedStorage();
  }

  else
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    result = fig_log_call_emit_and_clean_up_after_send_and_compose();
    v4 = *MEMORY[0x1E69E9840];
  }

  return result;
}

__CFString *mxFigStarkModeController_CopyDebugDescription(const void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  if (a1)
  {
    v7 = *CMBaseObjectGetDerivedStorage();
    CFStringAppendFormat(Mutable, 0, @"<FigStarkModeController %d>", v7);
  }

  else
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    CFStringAppendFormat(Mutable, 0, @"<FigStarkModeControllerRef NULL>");
  }

  v5 = *MEMORY[0x1E69E9840];
  return Mutable;
}

void FigRoutingManagerUtilities_CopyCurrentlyPickedAirPlayEndpoint(void *a1, void *a2, int a3)
{
  theDict = 0;
  FigRoutingManagerContextUtilities_CopyNonControlPickedContexts(&theDict);
  Count = CFDictionaryGetCount(theDict);
  v7 = malloc_type_calloc(Count, 8uLL, 0x80040B8603338uLL);
  CFDictionaryGetKeysAndValues(theDict, v7, 0);
  if (Count >= 1)
  {
    v19 = a1;
    v20 = a2;
    v8 = *MEMORY[0x1E69622F8];
    v9 = *MEMORY[0x1E695E480];
    v10 = *MEMORY[0x1E69626A8];
    v11 = *MEMORY[0x1E69626B0];
    v12 = v7;
    while (1)
    {
      v13 = *v12;
      v22 = 0;
      FigRoutingManagerContextUtilities_CopyPickedEndpointAtIndex(v13, 0, &v22);
      cf = 0;
      if (v22)
      {
        CMBaseObject = FigEndpointGetCMBaseObject();
        v15 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v15)
        {
          v15(CMBaseObject, v8, v9, &cf);
        }
      }

      if (FigCFEqual())
      {
        break;
      }

      v16 = FigCFEqual();
      if (!a3)
      {
        if (v16)
        {
          break;
        }
      }

      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      if (v22)
      {
        CFRelease(v22);
      }

      ++v12;
      if (!--Count)
      {
        goto LABEL_28;
      }
    }

    if (v19)
    {
      v17 = v22;
      if (v22)
      {
        v17 = CFRetain(v22);
      }

      *v19 = v17;
    }

    if (v20)
    {
      if (v13)
      {
        v18 = CFRetain(v13);
      }

      else
      {
        v18 = 0;
      }

      *v20 = v18;
    }

    if (cf)
    {
      CFRelease(cf);
    }

    goto LABEL_28;
  }

  if (v7)
  {
LABEL_28:
    free(v7);
  }

  if (theDict)
  {
    CFRelease(theDict);
  }
}

BOOL FigRoutingManagerUtilities_IsSystemAudioRoutingToDeviceID(const __CFString *a1)
{
  v8 = 0;
  FigRoutingManagerContextUtilities_CopySystemAudioContextUUID(&v8);
  v7 = 0;
  FigRoutingManagerContextUtilities_CopyMostRecentCurrentlyActivatingEndpoint(v8, &v7);
  if (v7)
  {
    cf = 0;
  }

  else
  {
    FigRoutingManagerContextUtilities_CopyPickedEndpointAtIndex(v8, 0, &v7);
    cf = 0;
    if (!v7)
    {
      goto LABEL_6;
    }
  }

  CMBaseObject = FigEndpointGetCMBaseObject();
  v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v3)
  {
    v3(CMBaseObject, *MEMORY[0x1E69620F8], *MEMORY[0x1E695E480], &cf);
  }

LABEL_6:
  v4 = FigCFEqual() || MXCFStringHasCaseInsensitivePrefix(a1, cf);
  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (v8)
  {
    CFRelease(v8);
    v8 = 0;
  }

  if (v7)
  {
    CFRelease(v7);
  }

  return v4;
}

BOOL FigRoutingManagerUtilities_IsSystemAudioRouteNull()
{
  cf = 0;
  FigRoutingManagerContextUtilities_CopySystemAudioContextUUID(&cf);
  IsContextRoutedToNull = FigRoutingManagerUtilities_IsContextRoutedToNull(cf);
  if (cf)
  {
    CFRelease(cf);
  }

  return IsContextRoutedToNull;
}

BOOL FigRoutingManagerUtilities_IsContextRoutedToNull(uint64_t a1)
{
  theArray = 0;
  FigRoutingManagerContextUtilities_CopyPickedEndpoints(a1, &theArray);
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    if (theArray)
    {
      CFRelease(theArray);
    }
  }

  else
  {
    Count = 0;
  }

  return Count == 0;
}

BOOL FigRoutingManagerUtilities_IsSystemAudioRouteAirPlayLowLatency()
{
  v3 = 0;
  FigRoutingManagerContextUtilities_CopySystemAudioContextUUID(&v3);
  cf = 0;
  FigRoutingManagerContextUtilities_CopyPickedEndpointAtIndex(v3, 0, &cf);
  IsEndpointLowLatencyAirPlay = FigRoutingManagerIsEndpointLowLatencyAirPlay(cf);
  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (v3)
  {
    CFRelease(v3);
  }

  return IsEndpointLowLatencyAirPlay;
}

uint64_t FigRoutingManagerUtilities_CopySidePlayEndpoints()
{
  v5 = 0;
  result = FigRoutingManagerGetEndpointManager(*MEMORY[0x1E69618F0]);
  if (result)
  {
    CMBaseObject = FigEndpointManagerGetCMBaseObject();
    VTable = CMBaseObjectGetVTable();
    v3 = *(*(VTable + 8) + 48);
    if (v3)
    {
      v4 = *(VTable + 8) + 48;
      v3(CMBaseObject, *MEMORY[0x1E69618A8], *MEMORY[0x1E695E480], &v5);
      return v5;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

BOOL FigRoutingManagerUtilities_IsSystemAudioRouteWHAGroupableLocal()
{
  v11 = 0;
  FigRoutingManagerContextUtilities_CopySystemAudioContextUUID(&v11);
  cf = 0;
  FigRoutingManagerContextUtilities_CopyPickedEndpointAtIndex(v11, 0, &cf);
  v0 = *MEMORY[0x1E69626A8];
  IsEndpointOfType = FigRoutingManagerIsEndpointOfType(cf);
  v2 = cf;
  if (IsEndpointOfType)
  {
    v9 = 0;
    CMBaseObject = FigEndpointGetCMBaseObject();
    VTable = CMBaseObjectGetVTable();
    v5 = *(*(VTable + 8) + 48);
    if (v5)
    {
      v6 = *(VTable + 8) + 48;
      v5(CMBaseObject, *MEMORY[0x1E69620F8], *MEMORY[0x1E695E480], &v9);
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    v2 = FigRoutingManagerCopyEndpointWithDeviceID(v9, 0, *MEMORY[0x1E69618F8], 0);
    cf = v2;
    if (v9)
    {
      CFRelease(v9);
      v2 = cf;
    }
  }

  IsEndpointWHAGroupable = FigRoutingManagerIsEndpointWHAGroupable(v2);
  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (v11)
  {
    CFRelease(v11);
  }

  return IsEndpointWHAGroupable;
}

__CFString *FigRoutingManagerUtilities_GetEvaluatedBadgeType()
{
  v29[27] = *MEMORY[0x1E69E9840];
  v28 = 0;
  v29[0] = 0;
  v0 = *MEMORY[0x1E695E4C0];
  v26 = 0;
  v27 = v0;
  FigRoutingManagerContextUtilities_CopySystemAudioContextUUID(&v26);
  v25 = 0;
  FigRoutingManagerContextUtilities_CopySystemMusicContextUUID(&v25);
  v24 = 0;
  FigRoutingManagerContextUtilities_CopyPickedEndpointAtIndex(v26, 0, &v24);
  cf = 0;
  FigRoutingManagerContextUtilities_CopyPickedEndpointAtIndex(v25, 0, &cf);
  if (v24 && FigRoutingManagerUtilities_IsEndpointTypeVehicle(v24))
  {
    v1 = CMSMUtility_CopyStarkEndpointCentral();
    v2 = *MEMORY[0x1E695E480];
    CMBaseObject = FigEndpointGetCMBaseObject();
    v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v4)
    {
      v4(CMBaseObject, *MEMORY[0x1E69620F8], v2, v29);
    }

    v5 = FigEndpointGetCMBaseObject();
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v6)
    {
      v6(v5, *MEMORY[0x1E69621E8], v2, &v28);
    }

    if (v1)
    {
      v7 = FigEndpointGetCMBaseObject();
      v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v8)
      {
        v8(v7, @"SupportsDCXForSpatialAudio", v2, &v27);
      }

      CFRelease(v1);
    }

    if (FigCFEqual())
    {
      v9 = *MEMORY[0x1E695E4D0];
      if (!FigCFEqual())
      {
        goto LABEL_33;
      }

      goto LABEL_29;
    }

    if (FigCFEqual())
    {
      v18 = *MEMORY[0x1E695E4D0];
      if (!FigCFEqual())
      {
        goto LABEL_33;
      }

      goto LABEL_31;
    }
  }

  else
  {
    v10 = 0;
    if (!MX_FeatureFlags_IsBufferedBadgingAndCapabilitiesEnabled() || !cf)
    {
      goto LABEL_35;
    }

    if (!FigRoutingManagerContextUtilities_IsContextSystemMusicAndIndependent(v25))
    {
      goto LABEL_24;
    }

    v11 = *MEMORY[0x1E69626A8];
    if (!FigRoutingManagerIsEndpointOfType(cf))
    {
      v12 = *MEMORY[0x1E69626B0];
      if (!FigRoutingManagerIsEndpointOfType(cf))
      {
        goto LABEL_24;
      }
    }

    v13 = *MEMORY[0x1E695E480];
    v14 = FigEndpointGetCMBaseObject();
    v15 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v15)
    {
      v15(v14, *MEMORY[0x1E69620F8], v13, v29);
    }

    v16 = FigEndpointGetCMBaseObject();
    v17 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v17)
    {
      v17(v16, *MEMORY[0x1E69621E8], v13, &v28);
    }

    if ((FigEndpointGetSupportedFeatures() & 8) == 0)
    {
LABEL_24:
      v10 = 0;
      goto LABEL_35;
    }

    if (FigCFEqual())
    {
LABEL_29:
      v19 = kMXSession_BadgeType_DolbyAtmos;
LABEL_34:
      v10 = *v19;
      goto LABEL_35;
    }

    if (FigCFEqual())
    {
LABEL_31:
      v19 = kMXSession_BadgeType_DolbyAudio;
      goto LABEL_34;
    }
  }

  if (FigCFEqual())
  {
LABEL_33:
    v19 = kMXSession_BadgeType_SpatialAudio;
    goto LABEL_34;
  }

  if (FigCFEqual())
  {
    v19 = kMXSession_BadgeType_Surround;
    goto LABEL_34;
  }

  if (FigCFEqual())
  {
    v10 = @"Stereo";
  }

  else
  {
    v10 = 0;
  }

LABEL_35:
  if (dword_1EB75DF20)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (v24)
  {
    CFRelease(v24);
    v24 = 0;
  }

  if (v26)
  {
    CFRelease(v26);
    v26 = 0;
  }

  if (v25)
  {
    CFRelease(v25);
    v25 = 0;
  }

  if (v27)
  {
    CFRelease(v27);
    v27 = 0;
  }

  if (v28)
  {
    CFRelease(v28);
    v28 = 0;
  }

  if (v29[0])
  {
    CFRelease(v29[0]);
  }

  if (v10)
  {
    result = v10;
  }

  else
  {
    result = @"NotApplicable";
  }

  v22 = *MEMORY[0x1E69E9840];
  return result;
}

void FigRoutingManagerUtilities_PostEndpointNotification()
{
  cf = 0;
  theArray = 0;
  FigRoutingManagerContextUtilities_CopySystemAudioContextUUID(&cf);
  FigRoutingManagerContextUtilities_CopyPickedEndpoints(cf, &theArray);
  if (theArray)
  {
    if (CFArrayGetCount(theArray))
    {
      CFArrayGetValueAtIndex(theArray, 0);
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterPostNotification();
    }

    if (theArray)
    {
      CFRelease(theArray);
      theArray = 0;
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

void __routingManagerUtilities_handleAirPlayAggregateCapabilitiesChangedNotification_block_invoke(uint64_t a1)
{
  CMSMUtility_UpdateSupportedOutputChannelLayouts(*(a1 + 32));
  v2 = *(a1 + 32);
  if (v2)
  {

    CFRelease(v2);
  }
}

uint64_t remoteXPCendpointAgentClient_DeadConnectionCallback()
{
  result = CMBaseObjectGetDerivedStorage();
  *(result + 1) = 1;
  return result;
}

uint64_t remoteXPCendpointAgent_GetObjectID(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    remoteXPCendpointAgent_GetObjectID_cold_1(&v6);
    return v6;
  }

  else
  {
    v4 = DerivedStorage;
    if (DerivedStorage[1])
    {
      remoteXPCendpointAgent_GetObjectID_cold_2(&v7);
      return v7;
    }

    else
    {
      result = 0;
      *a2 = *(v4 + 1);
    }
  }

  return result;
}

uint64_t remoteSystemController_DeadConnectionCallback()
{
  result = CMBaseObjectGetDerivedStorage();
  *(result + 8) = 1;
  return result;
}

uint64_t remoteSystemController_Finalize()
{
  v8 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *DerivedStorage;
  if (dword_1ED6D31D0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigXPCRemoteClientDisassociateObject();
  if (*(DerivedStorage + 8))
  {
    v3 = 1;
  }

  else
  {
    v3 = v1 == 0;
  }

  if (!v3)
  {
    if (FigXPCCreateBasicMessage() || (v4 = FigXPCRemoteClientSendSyncMessage(), FigXPCRemoteClientKillServerOnTimeout(), v4))
    {
      v5 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  result = FigXPCRelease();
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t remoteSystemController_SetInputMute(uint64_t a1, UInt8 *a2, int a3)
{
  v8 = 0;
  v9 = 0;
  if (remoteSystemController_getObjectID(a1, &v8) || FigXPCCreateBasicMessage())
  {
    goto LABEL_7;
  }

  v5 = MEMORY[0x1E695E4C0];
  if (a3)
  {
    v5 = MEMORY[0x1E695E4D0];
  }

  v6 = *v5;
  if (FigXPCMessageSetCFBoolean())
  {
LABEL_7:
    result = FigXPCRelease();
    __break(1u);
  }

  else
  {
    remoteSystemController_SetInputMute_cold_1(a2, &v9, &v8, &v10);
    return v10;
  }

  return result;
}

uint64_t FigEndpointUIAgentStartServer()
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work();
  fig_note_initialize_category_with_default_work();
  v0 = malloc_type_calloc(1uLL, 0x18uLL, 0x20040960023A9uLL);
  if (v0)
  {
    v1 = v0;
    v2 = *MEMORY[0x1E695E480];
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    *(v1 + 8) = Mutable;
    if (Mutable)
    {
      *v1 = FigReentrantMutexCreate();
      gEndpointAgentServerState = v1;
    }

    else if ((FigEndpointUIAgentStartServer_cold_1((v1 + 8), v1, &v9) & 1) == 0)
    {
      return v9;
    }
  }

  else
  {
    v8 = FigSignalErrorAtGM();
    if (v8)
    {
      return v8;
    }

    v2 = *MEMORY[0x1E695E480];
  }

  v4 = CFDictionaryCreateMutable(v2, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v5 = *MEMORY[0x1E6963400];
  FigCFDictionarySetInt32();
  v6 = FigXPCServerStart();
  if (v4)
  {
    CFRelease(v4);
  }

  return v6;
}

void DisposePerUIAgentState(const void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      CFRelease(v2);
    }

    free(a1);
  }
}

void CMSMNotificationUtility_PostPreferHeadphonesOverCarsAndSpeakersDidChange(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E695DF20]);
  v3 = [v2 initWithObjectsAndKeys:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", a1), @"Enabled", 0}];
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [MXSystemController notifyAll:@"PreferHeadphonesOverCarsAndSpeakersDidChange" payload:v3 dontPostIfSuspended:0, v6, v7];

  v5 = *MEMORY[0x1E69E9840];
}

void CMSMNotificationUtility_PostAllowBluetoothAccessoryToRequestAudioRouteDidChangeNotificationIfNeeded()
{
  v3 = *MEMORY[0x1E69E9840];
  v0 = [+[MXSessionManager sharedInstance](MXSessionManager shouldAllowBluetoothAccessoryToRequestAudioRoute];
  if (CMSMVAUtility_IsAnyBluetoothVehicleConnected())
  {
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    CMSMNotificationUtility_PostAllowBluetoothAccessoryToRequestAudioRouteDidChangeNotification(v0);
  }

  v2 = *MEMORY[0x1E69E9840];
}

void CMSMNotificationUtility_PostAllowBluetoothAccessoryToRequestAudioRouteDidChangeNotification(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x1E695DF20]);
  v3 = [v2 initWithObjectsAndKeys:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedChar:", a1), @"IsAllowed", 0}];
  [MXSystemController notifyAll:@"AllowBluetoothAccessoryToRequestAudioRouteDidChange" payload:v3 dontPostIfSuspended:0];
}

void CMSMNotificationUtility_PostSessionPrefersConcurrentAirPlayAudioDidChange(void *a1)
{
  if ([a1 isActive])
  {
    BooleanPayload = CMSMNotificationUtility_CreateBooleanPayload(@"PrefersConcurrentAirPlayAudio", [a1 prefersConcurrentAirPlayAudio]);
    v3 = MXGetNotificationSenderQueue();
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __CMSMNotificationUtility_PostSessionPrefersConcurrentAirPlayAudioDidChange_block_invoke;
    v4[3] = &unk_1E7AEBCA0;
    v4[4] = a1;
    v4[5] = BooleanPayload;
    MXDispatchAsync("CMSMNotificationUtility_PostSessionPrefersConcurrentAirPlayAudioDidChange", "CMSessionManager_NotificationUtilities.m", 119, 0, 0, v3, v4);
  }
}

void CMSMNotificationUtility_PostSessionAudioBehaviourDidChange(void *a1)
{
  v2 = a1;
  v3 = MXGetNotificationSenderQueue();
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __CMSMNotificationUtility_PostSessionAudioBehaviourDidChange_block_invoke;
  v4[3] = &unk_1E7AE7CE0;
  v4[4] = a1;
  MXDispatchAsync("CMSMNotificationUtility_PostSessionAudioBehaviourDidChange", "CMSessionManager_NotificationUtilities.m", 140, 0, 0, v3, v4);
}

void CMSMNotificationUtility_PostSessionRouteControlFeaturesDidChange(void *a1, int a2)
{
  if (a2)
  {
    if ([a1 prefersEchoCancelledInput])
    {
      IsRecordingCategory = CMSMUtility_IsRecordingCategory([a1 audioCategory]);
    }

    else
    {
      IsRecordingCategory = 0;
    }

    v4 = 1;
  }

  else
  {
    IsRecordingCategory = 0;
    v4 = 0;
  }

  v5 = objc_alloc(MEMORY[0x1E695DF20]);
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v4];
  v7 = [v5 initWithObjectsAndKeys:{v6, @"RouteControlFeatures", objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", IsRecordingCategory), @"HasEchoCancelledInput", 0}];
  objc_initWeak(&location, a1);
  v8 = MXGetNotificationSenderQueue();
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __CMSMNotificationUtility_PostSessionRouteControlFeaturesDidChange_block_invoke;
  v9[3] = &unk_1E7AEAD68;
  objc_copyWeak(&v10, &location);
  v9[4] = a1;
  v9[5] = v7;
  MXDispatchAsync("CMSMNotificationUtility_PostSessionRouteControlFeaturesDidChange", "CMSessionManager_NotificationUtilities.m", 164, 0, 0, v8, v9);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void sub_1B1978470(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

__CFDictionary *CMSMNotificationUtility_CreateVolumeNotificationPayload(const void *a1, const void *a2, const void *a3, uint64_t a4, int a5, float a6)
{
  valuePtr = a6;
  value = 0;
  v22 = a4;
  v19 = 0;
  cf = 0;
  v10 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v12 = Mutable;
  if (a1)
  {
    CFDictionarySetValue(Mutable, @"AudioCategory", a1);
  }

  if (a2)
  {
    CFDictionarySetValue(v12, @"Reason", a2);
  }

  if (a3)
  {
    CFDictionarySetValue(v12, @"RefCon", a3);
  }

  v13 = CFNumberCreate(v10, kCFNumberFloat32Type, &valuePtr);
  if (v13)
  {
    v14 = v13;
    CFDictionarySetValue(v12, @"Volume", v13);
    CFRelease(v14);
  }

  v15 = CFNumberCreate(v10, kCFNumberSInt64Type, &v22);
  if (v15)
  {
    v16 = v15;
    CFDictionarySetValue(v12, @"SequenceNumber", v15);
    CFRelease(v16);
  }

  if (MX_FeatureFlags_IsAdaptiveVolumeControlEnabled())
  {
    v17 = MEMORY[0x1E695E4C0];
    if (a5)
    {
      v17 = MEMORY[0x1E695E4D0];
    }

    CFDictionarySetValue(v12, @"SilenceVolumeHUD", *v17);
  }

  PVMCopyCurrentCategoryAndMode(&cf, &v19);
  PVMCopyVolumeCategoryAndMode(cf, v19, &value, 0);
  if (value)
  {
    CFDictionarySetValue(v12, @"ActiveAudioCategory", value);
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (v19)
  {
    CFRelease(v19);
    v19 = 0;
  }

  if (value)
  {
    CFRelease(value);
  }

  return v12;
}

void CMSMNotificationUtility_PostCurrentOutputSampleRateDidChange()
{
  if (MX_FeatureFlags_IsHangsAudioSessionClientCachingEnabled())
  {

    CMSMUtility_NotifyEachMatchingSession(0, 0, 0, @"CurrentOutputSampleRateDidChange", 0, 0);
  }
}

void CMSMNotificationUtility_PostCurrentInputSampleRateDidChange()
{
  if (MX_FeatureFlags_IsHangsAudioSessionClientCachingEnabled())
  {

    CMSMUtility_NotifyEachMatchingSession(0, 0, 0, @"CurrentInputSampleRateDidChange", 0, 0);
  }
}

uint64_t CMSMNotificationUtility_PostNowPlayingAppPIDDidChange()
{
  v0 = [+[MXNowPlayingAppManager sharedInstance](MXNowPlayingAppManager nowPlayingAppPID];
  v1 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", v0), @"PID", 0}];

  return [MXSystemController notifyAll:@"NowPlayingAppPIDDidChange" payload:v1 dontPostIfSuspended:0];
}

uint64_t CMSMNotificationUtility_PostNowPlayingAppDidChange()
{
  v5 = *MEMORY[0x1E69E9840];
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  result = +[MXSystemController notifyAll:payload:dontPostIfSuspended:](MXSystemController, "notifyAll:payload:dontPostIfSuspended:", @"NowPlayingAppDidChange", [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{-[MXNowPlayingAppManager nowPlayingAppDisplayID](+[MXNowPlayingAppManager sharedInstance](MXNowPlayingAppManager, "sharedInstance", v3, v4), "nowPlayingAppDisplayID"), @"DisplayID", 0}], 0);
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CMSMNotificationUtility_PostNowPlayingAppIsPlayingDidChangeDelayed(int a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", a1 != 0), @"State", 0}];
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  result = [MXSystemController notifyAll:@"NowPlayingAppIsPlayingDidChange" payload:v1 dontPostIfSuspended:0, v5, v6];
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CMSMNotificationUtility_PostSomeLongFormVideoClientIsActiveOverAirPlayVideoDidChange(int a1)
{
  v1 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", a1 != 0), @"SomeLongFormVideoClientIsActiveOverAirPlayVideoDidChange_IsActive", 0}];

  return [MXSystemController notifyAll:@"SomeLongFormVideoClientIsActiveOverAirPlayVideoDidChange" payload:v1 dontPostIfSuspended:0];
}

uint64_t CMSMNotificationUtility_PostSomeLongFormVideoClientIsPlayingOverAirPlayVideoDidChange(int a1)
{
  v1 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", a1 != 0), @"SomeLongFormVideoClientIsPlayingOverAirPlayVideo_IsPlaying", 0}];

  return [MXSystemController notifyAll:@"SomeLongFormVideoClientIsPlayingOverAirPlayVideo" payload:v1 dontPostIfSuspended:0];
}

uint64_t CMSMNotificationUtility_PostSomeLongFormVideoClientIsPlayingDidChange(int a1)
{
  v1 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", a1 != 0), @"SomeLongFormVideoClientIsPlayingDidChange_IsPlaying", 0}];

  return [MXSystemController notifyAll:@"SomeLongFormVideoClientIsPlayingDidChange" payload:v1 dontPostIfSuspended:0];
}

uint64_t CMSMNotificationUtility_PostUserMutedDidChange(uint64_t a1, int a2)
{
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", a2 != 0), @"AudioMuted", a1, @"AudioCategory", 0}];

  return [MXSystemController notifyAll:@"DeviceMutedDidChange" payload:v2 dontPostIfSuspended:0];
}

uint64_t CMSMNotificationUtility_PostFullMuteDidChangeToVolumeButtonClientAndAVSystemControllers(int a1)
{
  v1 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", a1 != 0), @"FullMuted", 0}];

  return [MXSystemController notifyAll:@"UserFullMuteDidChange" payload:v1 dontPostIfSuspended:0];
}

uint64_t CMSMNotificationUtility_PostSomeRecordingSessionPresentThatDisallowsSystemSoundsDidChange(int a1)
{
  v1 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", a1 != 0), @"SessionPresent", 0}];

  return [MXSystemController notifyAll:@"SomeRecordingSessionPresentThatDisallowsSystemSounds" payload:v1 dontPostIfSuspended:0];
}

uint64_t CMSMNotificationUtility_PostCarPlayIsConnectedDidChange(int a1)
{
  v1 = a1 != 0;
  [+[MXSessionManager sharedInstance](MXSessionManager setCarPlayIsConnected:"setCarPlayIsConnected:", v1];
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", v1), @"IsConnected", 0}];

  return [MXSystemController notifyAll:@"CarPlayIsConnectedDidChange" payload:v2 dontPostIfSuspended:0];
}

uint64_t CMSMNotificationUtility_PostCarPlayAuxStreamSupportDidChange(int a1)
{
  v1 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", a1 != 0), @"IsSupported", 0}];

  return [MXSystemController notifyAll:@"CarPlayAuxStreamSupportDidChange" payload:v1 dontPostIfSuspended:0];
}

void CMSMNotificationUtility_PostSystemHasAudioInputDeviceDidChange()
{
  [MXSystemController notifyAll:@"SystemHasAudioInputDeviceDidChange" payload:0 dontPostIfSuspended:0];
  v0 = MXGetNotificationSenderQueue();

  MXDispatchAsync("CMSMNotificationUtility_PostSystemHasAudioInputDeviceDidChange", "CMSessionManager_NotificationUtilities.m", 921, 0, 0, v0, &__block_literal_global_26_0);
}

void CMSMNotificationUtility_PostSystemHasAudioInputDeviceExcludingBluetoothDidChange()
{
  [MXSystemController notifyAll:@"SystemHasAudioInputDeviceExcludingBluetoothDidChange" payload:0 dontPostIfSuspended:0];
  v0 = MXGetNotificationSenderQueue();

  MXDispatchAsync("CMSMNotificationUtility_PostSystemHasAudioInputDeviceExcludingBluetoothDidChange", "CMSessionManager_NotificationUtilities.m", 937, 0, 0, v0, &__block_literal_global_28_1);
}

uint64_t CMSMNotificationUtility_PostUplinkMuteDidChange(int a1)
{
  v1 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", a1 != 0), @"UplinkMute", 0}];

  return [MXSystemController notifyAll:@"UplinkMuteDidChange" payload:v1 dontPostIfSuspended:0];
}

void CMSMNotificationUtility_PostVideoStreamsDidChange()
{
  CurrentlyAirPlayingVideoStreamsDictionary = CMSMUtility_CreateCurrentlyAirPlayingVideoStreamsDictionary(@"BundleID", @"VideoRoutes");
  if (!FigCFEqual())
  {
    [MXSystemController notifyAll:@"VideoStreamsDidChange" payload:CurrentlyAirPlayingVideoStreamsDictionary dontPostIfSuspended:0];
    v1 = CMSMNotificationUtility_PostVideoStreamsDidChange_cachedVideoStreamsPayload;
    CMSMNotificationUtility_PostVideoStreamsDidChange_cachedVideoStreamsPayload = CurrentlyAirPlayingVideoStreamsDictionary;
    if (CurrentlyAirPlayingVideoStreamsDictionary)
    {
      CFRetain(CurrentlyAirPlayingVideoStreamsDictionary);
    }

    if (v1)
    {
      CFRelease(v1);
    }
  }

  if (CurrentlyAirPlayingVideoStreamsDictionary)
  {

    CFRelease(CurrentlyAirPlayingVideoStreamsDictionary);
  }
}

void CMSMNotificationUtility_PostVibeStopped(const void *a1)
{
  if (a1)
  {
    v2 = CFGetTypeID(a1);
    if (v2 == CFDictionaryGetTypeID())
    {
      Value = CFDictionaryGetValue(a1, @"VibeStopped_Context");
      if (Value)
      {
        v4 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{Value, @"Context", 0}];
        [MXSystemController notifyAll:@"SystemSoundVibrateDidFinish" payload:v4 dontPostIfSuspended:0];
        v5 = v4;
        v6 = MXGetNotificationSenderQueue();
        v7[0] = MEMORY[0x1E69E9820];
        v7[1] = 3221225472;
        v7[2] = __CMSMNotificationUtility_PostVibeStopped_block_invoke;
        v7[3] = &unk_1E7AE7CE0;
        v7[4] = v4;
        MXDispatchAsync("CMSMNotificationUtility_PostVibeStopped", "CMSessionManager_NotificationUtilities.m", 1037, 0, 0, v6, v7);
      }
    }
  }
}

void CMSMNotificationUtility_PostForceSoundCheckDidChange(int a1, int a2)
{
  valuePtr = a2;
  BooleanPayload = CMSMNotificationUtility_CreateBooleanPayload(@"ForceSoundCheck", a1);
  v3 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  if (BooleanPayload)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v5 = v3;
    v6 = MXGetNotificationSenderQueue();
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __CMSMNotificationUtility_PostForceSoundCheckDidChange_block_invoke;
    v7[3] = &__block_descriptor_48_e5_v8__0l;
    v7[4] = v5;
    v7[5] = BooleanPayload;
    MXDispatchAsync("CMSMNotificationUtility_PostForceSoundCheckDidChange", "CMSessionManager_NotificationUtilities.m", 1089, 0, 0, v6, v7);
  }
}

CFDictionaryRef CMSMNotificationUtility_CreateCFTypePayload(void *a1, void *a2)
{
  keys[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = a2;
  }

  else
  {
    v2 = 0;
  }

  if (a2)
  {
    v3 = a1 != 0;
  }

  else
  {
    v3 = 0;
  }

  if (a2)
  {
    v4 = a1;
  }

  else
  {
    v4 = 0;
  }

  values = v2;
  keys[0] = v4;
  result = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, &values, v3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void CMSMNotificationUtility_PostActiveNeroVisualStreamDidChange()
{
  v0 = MXGetNotificationSenderQueue();

  MXDispatchAsync("CMSMNotificationUtility_PostActiveNeroVisualStreamDidChange", "CMSessionManager_NotificationUtilities.m", 1224, 0, 0, v0, &__block_literal_global_35_2);
}

void CMSMNotificationUtility_PostActiveNeroVisualStreamInfoDidChange()
{
  [MXSystemController notifyAll:@"ActiveNeroVisualStreamInfoDidChange" payload:0 dontPostIfSuspended:0];
  v0 = MXGetNotificationSenderQueue();

  MXDispatchAsync("CMSMNotificationUtility_PostActiveNeroVisualStreamInfoDidChange", "CMSessionManager_NotificationUtilities.m", 1245, 0, 0, v0, &__block_literal_global_37_1);
}

void CMSMNotificationUtility_PostInputDataSourcesDidChange()
{
  v0 = MXGetNotificationSenderQueue();

  MXDispatchAsync("CMSMNotificationUtility_PostInputDataSourcesDidChange", "CMSessionManager_NotificationUtilities.m", 1330, 0, 0, v0, &__block_literal_global_41_1);
}

void CMSMNotificationUtility_PostOutputDataDestinationsDidChange()
{
  v0 = MXGetNotificationSenderQueue();

  MXDispatchAsync("CMSMNotificationUtility_PostOutputDataDestinationsDidChange", "CMSessionManager_NotificationUtilities.m", 1349, 0, 0, v0, &__block_literal_global_43_1);
}

void CMSMNotificationUtility_PostInputGainScalarDidChange()
{
  v0 = MXGetNotificationSenderQueue();

  MXDispatchAsync("CMSMNotificationUtility_PostInputGainScalarDidChange", "CMSessionManager_NotificationUtilities.m", 1369, 0, 0, v0, &__block_literal_global_45_0);
}

void CMSMNotificationUtility_PostCurrentRouteHasInputGainControlDidChange(CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  v2 = MXGetNotificationSenderQueue();
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __CMSMNotificationUtility_PostCurrentRouteHasInputGainControlDidChange_block_invoke;
  v3[3] = &__block_descriptor_40_e5_v8__0l;
  v3[4] = cf;
  MXDispatchAsync("CMSMNotificationUtility_PostCurrentRouteHasInputGainControlDidChange", "CMSessionManager_NotificationUtilities.m", 1392, 0, 0, v2, v3);
}

void CMSMNotificationUtility_PostNumberOfInputChannelsDidChange(int a1)
{
  v2 = MXGetNotificationSenderQueue();
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __CMSMNotificationUtility_PostNumberOfInputChannelsDidChange_block_invoke;
  v3[3] = &__block_descriptor_36_e5_v8__0l;
  v4 = a1;
  MXDispatchAsync("CMSMNotificationUtility_PostNumberOfInputChannelsDidChange", "CMSessionManager_NotificationUtilities.m", 1401, 0, 0, v2, v3);
}

CFDictionaryRef CMSMNotificationUtility_CreateSInt32Payload(void *a1, int a2)
{
  keys[1] = *MEMORY[0x1E69E9840];
  valuePtr = a2;
  v3 = *MEMORY[0x1E695E480];
  v4 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  v5 = v4;
  if (a1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  if (v4)
  {
    v7 = a1 != 0;
  }

  else
  {
    v7 = 0;
  }

  if (v4)
  {
    v8 = a1;
  }

  else
  {
    v8 = 0;
  }

  values = v6;
  keys[0] = v8;
  v9 = CFDictionaryCreate(v3, keys, &values, v7, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (v5)
  {
    CFRelease(v5);
  }

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

void CMSMNotificationUtility_PostNumberOfOutputChannelsDidChange(int a1)
{
  v2 = MXGetNotificationSenderQueue();
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __CMSMNotificationUtility_PostNumberOfOutputChannelsDidChange_block_invoke;
  v3[3] = &__block_descriptor_36_e5_v8__0l;
  v4 = a1;
  MXDispatchAsync("CMSMNotificationUtility_PostNumberOfOutputChannelsDidChange", "CMSessionManager_NotificationUtilities.m", 1411, 0, 0, v2, v3);
}

void CMSMNotificationUtility_PostBadgeTypeDidChange(id val)
{
  objc_initWeak(&location, val);
  v2 = MXGetNotificationSenderQueue();
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __CMSMNotificationUtility_PostBadgeTypeDidChange_block_invoke;
  v3[3] = &unk_1E7AEB360;
  objc_copyWeak(&v4, &location);
  v3[4] = val;
  MXDispatchAsync("CMSMNotificationUtility_PostBadgeTypeDidChange", "CMSessionManager_NotificationUtilities.m", 1427, 0, 0, v2, v3);
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void sub_1B197A654(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void CMSMNotificationUtility_PostSupportedBufferedAudioCapabilitiesDidChange(id val)
{
  objc_initWeak(&location, val);
  v1 = MXGetNotificationSenderQueue();
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __CMSMNotificationUtility_PostSupportedBufferedAudioCapabilitiesDidChange_block_invoke;
  v2[3] = &unk_1E7AEA958;
  objc_copyWeak(&v3, &location);
  MXDispatchAsync("CMSMNotificationUtility_PostSupportedBufferedAudioCapabilitiesDidChange", "CMSessionManager_NotificationUtilities.m", 1443, 0, 0, v1, v2);
  objc_destroyWeak(&v3);
  objc_destroyWeak(&location);
}

void sub_1B197A800(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

uint64_t CMSMNotificationUtility_PostSomeSharePlayCapableCallSessionIsActiveDidChange(uint64_t result)
{
  if (CMSMNotificationUtility_PostSomeSharePlayCapableCallSessionIsActiveDidChange_sCachedValue != result)
  {
    CMSMNotificationUtility_PostSomeSharePlayCapableCallSessionIsActiveDidChange_sCachedValue = result;
    v2 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", result), @"IsActive", 0}];

    return [MXSystemController notifyAll:@"SomeSharePlayCapableCallSessionIsActiveDidChange" payload:v2 dontPostIfSuspended:0];
  }

  return result;
}

void CMSMNotificationUtility_PostIsOutputMutedDidChange(void *a1)
{
  if (CMSMDeviceState_SupportsShortFormOutputMutingAudioPolicy())
  {
    BooleanPayload = CMSMNotificationUtility_CreateBooleanPayload(@"Muted", [a1 isOutputMuted]);
    objc_initWeak(&location, a1);
    v3 = MXGetNotificationSenderQueue();
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __CMSMNotificationUtility_PostIsOutputMutedDidChange_block_invoke;
    v4[3] = &unk_1E7AEAD68;
    objc_copyWeak(&v5, &location);
    v4[4] = a1;
    v4[5] = BooleanPayload;
    MXDispatchAsync("CMSMNotificationUtility_PostIsOutputMutedDidChange", "CMSessionManager_NotificationUtilities.m", 1504, 0, 0, v3, v4);
    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

void sub_1B197AA84(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void CMSMNotificationUtility_PostUserIntentToUnmuteDidChange(void *a1, int a2)
{
  if (CMSMDeviceState_SupportsShortFormOutputMutingAudioPolicy())
  {
    BooleanPayload = CMSMNotificationUtility_CreateBooleanPayload(@"UserIntendsToUnmute", a2);
    objc_initWeak(&location, a1);
    v5 = MXGetNotificationSenderQueue();
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __CMSMNotificationUtility_PostUserIntentToUnmuteDidChange_block_invoke;
    v6[3] = &unk_1E7AEAD68;
    objc_copyWeak(&v7, &location);
    v6[4] = a1;
    v6[5] = BooleanPayload;
    MXDispatchAsync("CMSMNotificationUtility_PostUserIntentToUnmuteDidChange", "CMSessionManager_NotificationUtilities.m", 1526, 0, 0, v5, v6);
    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

void sub_1B197AD28(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void CMSMNotificationUtility_PostAllowEnhancedDialogueDidChange(void *a1)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v9 = @"AllowEnhancedDialogue";
  v10[0] = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(a1, "allowEnhancedDialogue")}];
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v3 = v2;
  objc_initWeak(&location, a1);
  v4 = MXGetNotificationSenderQueue();
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __CMSMNotificationUtility_PostAllowEnhancedDialogueDidChange_block_invoke;
  v6[3] = &unk_1E7AEAD68;
  objc_copyWeak(&v7, &location);
  v6[4] = a1;
  v6[5] = v2;
  MXDispatchAsync("CMSMNotificationUtility_PostAllowEnhancedDialogueDidChange", "CMSessionManager_NotificationUtilities.m", 1546, 0, 0, v4, v6);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B197B020(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void CMSMNotificationUtility_PostWombatEnabledDidChange(uint64_t a1)
{
  v1 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:a1];
  v2 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v1, @"Enabled", 0}];
  [MXSystemController notifyAll:@"WombatEnabledDidChange" payload:v2 dontPostIfSuspended:0];
}

void CMSMNotificationUtility_PostSilentModeEnabledDidChange(uint64_t a1)
{
  v1 = a1;
  v2 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:a1];
  v3 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v2, @"Enabled", 0}];
  [MXSystemController notifyAll:@"SilentModeEnabledDidChange" payload:v3 dontPostIfSuspended:0];
  v4 = MXGetNotificationSenderQueue();
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __CMSMNotificationUtility_PostSilentModeEnabledDidChange_block_invoke;
  v5[3] = &__block_descriptor_33_e5_v8__0l;
  v6 = v1;
  MXDispatchAsync("CMSMNotificationUtility_PostSilentModeEnabledDidChange", "CMSessionManager_NotificationUtilities.m", 1685, 0, 0, v4, v5);
}

void CMSMNotificationUtility_PostMaximumVolumeLimitForBuiltInSpeakerDidChangeIfNeeded(uint64_t a1, float a2)
{
  if (CMSMNotificationUtility_PostMaximumVolumeLimitForBuiltInSpeakerDidChangeIfNeeded_sEnabled != a1 || a1 && *&CMSMNotificationUtility_PostMaximumVolumeLimitForBuiltInSpeakerDidChangeIfNeeded_sCurrentLimit != a2)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v5 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", a1), @"Enabled"}];
    if (a1)
    {
      *&v4 = a2;
      [v5 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithFloat:", v4), @"MaximumSpeakerVolumeLimit"}];
    }

    CMSMNotificationUtility_PostMaximumVolumeLimitForBuiltInSpeakerDidChangeIfNeeded_sEnabled = a1;
    CMSMNotificationUtility_PostMaximumVolumeLimitForBuiltInSpeakerDidChangeIfNeeded_sCurrentLimit = LODWORD(a2);
    [MXSystemController notifyAll:@"MaximumSpeakerVolumeLimitDidChange" payload:v5 dontPostIfSuspended:0];
  }
}

void CMSM_IDSConnection_Initialize()
{
  qword_1EB75CCE0 = FigReentrantMutexCreate();
  qword_1EB75CCD8 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  gIDSConnection = objc_alloc_init(CMSM_IDSConnection);
  global_queue = dispatch_get_global_queue(0, 0);

  MXDispatchAsync("CMSM_IDSConnection_Initialize", "CMSessionManager_IDSConnection.m", 83, 0, 0, global_queue, &__block_literal_global_86);
}

uint64_t CMSM_IDSConnection_IsNearbyPairedDevicePresent()
{
  v0 = [gIDSConnection copyNearbyPairedDevice];
  v1 = [v0 isNearby];

  return v1;
}

uint64_t CMSM_IDSConnection_IsNearbyPairedDevicePresentAndConnected()
{
  v0 = [gIDSConnection copyNearbyPairedDevice];
  if ([v0 isNearby])
  {
    v1 = [v0 isConnected];
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

uint64_t CMSM_IDSConnection_HandleNearbyDeviceStatusChange()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = [gIDSConnection copyNearbyPairedDevice];
  v1 = [v0 isNearby];

  CMSM_IDSConnection_IsNearbyPairedDevicePresentAndConnected();
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (v1)
  {
    CMSM_IDSClient_QueryRemote_BTDeviceConnectionStatus();
    result = CMSM_IDSClient_QueryRemote_PlayingInfo();
  }

  else
  {
    result = CMSM_IDSConnection_DeactivateIDSMXCoreSession(@"non-resumable.noNearbyPairedDevice");
    byte_1EB75CCC8 = 1;
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CMSM_IDSConnection_DeactivateIDSMXCoreSession(const __CFString *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (CMSMUtility_IsIDSSessionActive())
  {
    v2 = CMSM_IDSConnection_CopyMXCoreSession();
    v3 = CMSessionEndInterruption(v2, a1);
    v4 = MXGetNotificationSenderQueue();
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __CMSM_IDSConnection_DeactivateIDSMXCoreSession_block_invoke;
    v9[3] = &__block_descriptor_40_e5_v8__0l;
    v9[4] = v2;
    MXDispatchAsync("CMSM_IDSConnection_DeactivateIDSMXCoreSession", "CMSessionManager_IDSConnection.m", 207, 0, 0, v4, v9);
    v5 = *MEMORY[0x1E69E9840];
    return v3;
  }

  else
  {
    v11 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v8 = *MEMORY[0x1E69E9840];
    return 0;
  }
}

CFTypeRef CMSM_IDSConnection_CopyMXCoreSession()
{
  if (CMSM_IDSConnection_CopyMXCoreSession_onceToken != -1)
  {
    CMSM_IDSConnection_CopyMXCoreSession_cold_1();
  }

  result = sIDSInfo;
  if (sIDSInfo)
  {

    return CFRetain(result);
  }

  return result;
}

uint64_t CMSM_IDSConnection_AddRemotePlayingInfo(const void *a1)
{
  IsSomeClientPlayingOverSharedAudioRouteOnRemote = CMSM_IDSConnection_IsSomeClientPlayingOverSharedAudioRouteOnRemote();
  FigSimpleMutexLock();
  Mutable = qword_1EB75CCB8;
  if (!qword_1EB75CCB8)
  {
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    qword_1EB75CCB8 = Mutable;
  }

  CFArrayAppendValue(Mutable, a1);
  FigSimpleMutexUnlock();
  result = CMSM_IDSConnection_IsSomeClientPlayingOverSharedAudioRouteOnRemote();
  if (IsSomeClientPlayingOverSharedAudioRouteOnRemote != result)
  {

    return cmsm_IDSConnection_UpdateOtherDevicesConnectedInfoInPickableRoutesCache();
  }

  return result;
}

BOOL CMSM_IDSConnection_IsSomeClientPlayingOverSharedAudioRouteOnRemote()
{
  FigSimpleMutexLock();
  v0 = byte_1EB75CCA3 && qword_1EB75CCB8 && CFArrayGetCount(qword_1EB75CCB8) > 0;
  FigSimpleMutexUnlock();
  return v0;
}

uint64_t cmsm_IDSConnection_UpdateOtherDevicesConnectedInfoInPickableRoutesCache()
{
  v32 = *MEMORY[0x1E69E9840];
  -[NSRecursiveLock lock]([+[MXSessionManager sharedInstance](MXSessionManager propertiesLock], "lock");
  v0 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:{-[MXSessionManager pickableRoutesDescriptions](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance"), "pickableRoutesDescriptions")}];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = [+[MXSessionManager sharedInstance](MXSessionManager pickableRoutesDescriptions];
  v18 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v18)
  {
    v16 = *v27;
    v17 = v0;
    do
    {
      v1 = 0;
      do
      {
        if (*v27 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v20 = v1;
        v19 = *(*(&v26 + 1) + 8 * v1);
        v2 = -[NSMutableDictionary objectForKey:]([+[MXSessionManager sharedInstance](MXSessionManager pickableRoutesDescriptions], "objectForKey:", v19);
        v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v21 = v2;
        v4 = [v2 countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v4)
        {
          v5 = v4;
          v6 = *v23;
          do
          {
            for (i = 0; i != v5; ++i)
            {
              if (*v23 != v6)
              {
                objc_enumerationMutation(v21);
              }

              v8 = *(*(&v22 + 1) + 8 * i);
              v9 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:v8];
              v10 = [v8 objectForKey:@"IsBTRoute"];
              if ([v10 isEqualToNumber:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", 1)}])
              {
                [v9 removeObjectForKey:@"OtherDevicesConnected"];
                if (CMSM_IDSConnection_IsSharedAudioRouteConnectedToLocalAndRemote())
                {
                  v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
                  v12 = CMSM_IDSConnection_CopyNearbyPairedDeviceInfo();
                  if (v12)
                  {
                    [v11 addObject:v12];
                    [v9 setObject:v11 forKey:@"OtherDevicesConnected"];
                  }

                  if (CMSM_GetFakeSharedAudioRouteAsPicked())
                  {
                    [v9 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", 1), @"IsCurrentlyPickedOnPairedDevice"}];
                  }
                }
              }

              [v3 addObject:v9];
            }

            v5 = [v21 countByEnumeratingWithState:&v22 objects:v30 count:16];
          }

          while (v5);
        }

        v0 = v17;
        [v17 setObject:v3 forKey:v19];

        v1 = v20 + 1;
      }

      while (v20 + 1 != v18);
      v18 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v18);
  }

  if ([v0 isEqualToDictionary:{-[MXSessionManager pickableRoutesDescriptions](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance"), "pickableRoutesDescriptions")}])
  {

    result = -[NSRecursiveLock unlock]([+[MXSessionManager sharedInstance](MXSessionManager propertiesLock], "unlock");
  }

  else
  {
    [+[MXSessionManager sharedInstance](MXSessionManager setPickableRoutesDescriptions:"setPickableRoutesDescriptions:", v0];

    -[NSRecursiveLock unlock]([+[MXSessionManager sharedInstance](MXSessionManager propertiesLock], "unlock");
    result = CMSMNotificationUtility_PostPickableRoutesDidChange(1);
  }

  v14 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CMSM_IDSConnection_RemoveRemotePlayingInfo(CFIndex a1)
{
  IsSomeClientPlayingOverSharedAudioRouteOnRemote = CMSM_IDSConnection_IsSomeClientPlayingOverSharedAudioRouteOnRemote();
  FigSimpleMutexLock();
  if (qword_1EB75CCB8 && CFArrayGetCount(qword_1EB75CCB8))
  {
    CFArrayRemoveValueAtIndex(qword_1EB75CCB8, a1);
    FigSimpleMutexUnlock();
    result = CMSM_IDSConnection_IsSomeClientPlayingOverSharedAudioRouteOnRemote();
    if (IsSomeClientPlayingOverSharedAudioRouteOnRemote != result)
    {

      return cmsm_IDSConnection_UpdateOtherDevicesConnectedInfoInPickableRoutesCache();
    }
  }

  else
  {

    return FigSimpleMutexUnlock();
  }

  return result;
}

uint64_t CMSM_IDSConnection_ResetRemotePlayingInfo()
{
  IsSomeClientPlayingOverSharedAudioRouteOnRemote = CMSM_IDSConnection_IsSomeClientPlayingOverSharedAudioRouteOnRemote();
  FigSimpleMutexLock();
  if (qword_1EB75CCB8 && CFArrayGetCount(qword_1EB75CCB8))
  {
    CFArrayRemoveAllValues(qword_1EB75CCB8);
    FigSimpleMutexUnlock();
    result = CMSM_IDSConnection_IsSomeClientPlayingOverSharedAudioRouteOnRemote();
    if (IsSomeClientPlayingOverSharedAudioRouteOnRemote != result)
    {

      return cmsm_IDSConnection_UpdateOtherDevicesConnectedInfoInPickableRoutesCache();
    }
  }

  else
  {

    return FigSimpleMutexUnlock();
  }

  return result;
}

uint64_t CMSM_IDSConnection_StartWaitForRemoteToReplyWithInitialPlayingInfoTimer(float a1)
{
  FigSimpleMutexLock();
  if (qword_1EB75CCD0)
  {
    dispatch_source_cancel(qword_1EB75CCD0);
    if (qword_1EB75CCD0)
    {
      dispatch_release(qword_1EB75CCD0);
      qword_1EB75CCD0 = 0;
    }
  }

  FigSimpleMutexUnlock();
  FigSimpleMutexLock();
  v2 = MXGetSerialQueue();
  qword_1EB75CCD0 = MXDispatchUtilityCreateOneShotTimer(a1, "CMSM_IDSConnection_StartWaitForRemoteToReplyWithInitialPlayingInfoTimer", "CMSessionManager_IDSConnection.m", 365, 0, 0, v2, &__block_literal_global_14_0, 0, 0);

  return FigSimpleMutexUnlock();
}

void CMSM_IDSConnection_RouteToSharedAudioRouteUponReceivingOwnership()
{
  v8 = *MEMORY[0x1E69E9840];
  if ([+[MXSessionManager carPlayIsConnected] sharedInstance]
  {
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

LABEL_27:
    v7 = *MEMORY[0x1E69E9840];
    return;
  }

  if (qword_1EB75CC98)
  {
    Copy = CFArrayCreateCopy(*MEMORY[0x1E695E480], qword_1EB75CC98);
    A2DPPort = cmsmGetA2DPPort(Copy);
    if (Copy)
    {
      CFRelease(Copy);
    }
  }

  else
  {
    A2DPPort = cmsmGetA2DPPort(0);
  }

  if (!cmsmShouldRequestOwnershipOnSharedAudioRoute(0, A2DPPort) || vaeRequestOwnershipOnBTPort(A2DPPort))
  {
    goto LABEL_27;
  }

  ArrayFromPortID = CMSMVAUtility_CreateArrayFromPortID(A2DPPort);
  Routable = cmsmCopyPartnerPortsToMakeRoutable(ArrayFromPortID);
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (Routable && CFArrayGetCount(Routable) >= 1)
  {
    v10.length = CFArrayGetCount(Routable);
    v10.location = 0;
    CFArrayAppendArray(Mutable, Routable, v10);
  }

  if (ArrayFromPortID && CFArrayGetCount(ArrayFromPortID) >= 1)
  {
    v11.length = CFArrayGetCount(ArrayFromPortID);
    v11.location = 0;
    CFArrayAppendArray(Mutable, ArrayFromPortID, v11);
  }

  if (!vaeDoesBTPortSupportInEarDetection(A2DPPort) || CMSMVAUtility_ShouldBTPortBeTreatedAsInEar(A2DPPort))
  {
    vaemMakeArrayOfPortsRoutable(Mutable, 1, 0, qword_1EB75E190, 0);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (Routable)
  {
    CFRelease(Routable);
  }

  if (!ArrayFromPortID)
  {
    goto LABEL_27;
  }

  v6 = *MEMORY[0x1E69E9840];

  CFRelease(ArrayFromPortID);
}

void CMSM_IDSConnection_StopWaitForRemoteToReplyWithInitialPlayingInfoTimer()
{
  global_queue = dispatch_get_global_queue(0, 0);

  MXDispatchAsync("CMSM_IDSConnection_StopWaitForRemoteToReplyWithInitialPlayingInfoTimer", "CMSessionManager_IDSConnection.m", 377, 0, 0, global_queue, &__block_literal_global_16_2);
}

id CMSM_IDSConnection_GetRemotePlayingInfo()
{
  FigSimpleMutexLock();
  v0 = objc_alloc(MEMORY[0x1E695DEC8]);
  v1 = [v0 initWithArray:qword_1EB75CCB8 copyItems:1];
  FigSimpleMutexUnlock();
  return v1;
}

uint64_t CMSM_IDSConnection_SetRemotePlayingInfo(const __CFArray *a1)
{
  IsSomeClientPlayingOverSharedAudioRouteOnRemote = CMSM_IDSConnection_IsSomeClientPlayingOverSharedAudioRouteOnRemote();
  FigSimpleMutexLock();
  if (qword_1EB75CCB8)
  {
    CFRelease(qword_1EB75CCB8);
    qword_1EB75CCB8 = 0;
  }

  if (a1)
  {
    qword_1EB75CCB8 = CFArrayCreateMutableCopy(*MEMORY[0x1E695E480], 0, a1);
  }

  FigSimpleMutexUnlock();
  result = CMSM_IDSConnection_IsSomeClientPlayingOverSharedAudioRouteOnRemote();
  if (IsSomeClientPlayingOverSharedAudioRouteOnRemote != result)
  {

    return cmsm_IDSConnection_UpdateOtherDevicesConnectedInfoInPickableRoutesCache();
  }

  return result;
}

BOOL CMSM_IDSConnection_IsTimerForRemotePlayingInfoReplyExpired()
{
  v0 = [gIDSConnection copyNearbyPairedDevice];
  v1 = [v0 isNearby];

  if (!v1)
  {
    return 0;
  }

  FigSimpleMutexLock();
  v2 = qword_1EB75CCD0;
  FigSimpleMutexUnlock();
  return v2 == 0;
}

id CMSM_IDSConnection_CopyNearbyPairedDeviceInfo()
{
  v0 = [gIDSConnection copyNearbyPairedDevice];
  v1 = [v0 isNearby];

  if (!v1)
  {
    return 0;
  }

  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = [gIDSConnection copyNearbyPairedDeviceUniqueID];
  if (v3)
  {
    [v2 setObject:v3 forKey:@"ConnectedDevice_UniqueID"];
  }

  v4 = [gIDSConnection copyNearbyPairedDeviceName];
  if (v4)
  {
    [v2 setObject:v4 forKey:@"ConnectedDevice_Name"];
  }

  v5 = [gIDSConnection copyNearbyPairedDeviceModelIdentifier];
  if (v5)
  {
    [v2 setObject:v5 forKey:@"ConnectedDevice_ModelIdentifier"];
  }

  v6 = [gIDSConnection copyNearbyPairedDeviceProductName];
  if (v6)
  {
    [v2 setObject:v6 forKey:@"ConnectedDevice_ProductName"];
  }

  if (qword_1EB75CCA8)
  {
    v7 = CFRetain(qword_1EB75CCA8);
    if (v7)
    {
      [v2 setObject:v7 forKey:@"ConnectedDevice_RouteUID"];
    }
  }

  else
  {
    v7 = 0;
  }

  [v2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", CMSM_IDSConnection_IsSomeClientPlayingOverSharedAudioRouteOnRemote()), @"ConnectedDevice_Playing"}];
  return v2;
}

void CMSM_IDSConnection_UpdateRemoteCurrentRouteUID(const void *a1)
{
  v1 = qword_1EB75CCA8;
  qword_1EB75CCA8 = a1;
  if (a1)
  {
    CFRetain(a1);
  }

  if (v1)
  {

    CFRelease(v1);
  }
}

void CMSM_IDSConnection_UpdateSharedAudioRouteMacAddressOnLocal(const __CFString *a1, int a2)
{
  if (CMSMDeviceState_ItsAnAppleWatch())
  {
    if (!a1)
    {
      goto LABEL_19;
    }

    if (!qword_1EB75CC90)
    {
      goto LABEL_19;
    }

    if (!FigCFEqual())
    {
      goto LABEL_19;
    }

    v4 = qword_1EB75CC98;
    if (!qword_1EB75CC98)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  if (!a2 || !qword_1EB75CC98)
  {
    if (!a1 || !qword_1EB75CC90 || !FigCFEqual() || (v4 = qword_1EB75CC98) == 0)
    {
LABEL_19:

      cmsm_IDSConnection_updateSharedAudioRoutePortIDsOnLocal(a1);
      return;
    }

LABEL_17:
    if (CFArrayGetCount(v4))
    {
      return;
    }

    goto LABEL_19;
  }

  CFArrayRemoveAllValues(qword_1EB75CC98);
  if (byte_1EB75CCA3)
  {
    byte_1EB75CCA3 = 0;

    cmsm_IDSConnection_UpdateOtherDevicesConnectedInfoInPickableRoutesCache();
  }
}

void cmsm_IDSConnection_updateSharedAudioRoutePortIDsOnLocal(CFStringRef theString)
{
  if (theString)
  {
    v1 = *MEMORY[0x1E695E480];
    MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, theString);
    if (MutableCopy)
    {
      v3 = MutableCopy;
      CFStringAppend(MutableCopy, @"-tacl");
      v4 = FigRoutingManagerCopyEndpointWithDeviceID(v3, 1, *MEMORY[0x1E69618F8], 0);
      if (v4)
      {
        v5 = v4;
        number = 0;
        valuePtr = 0;
        CMBaseObject = FigEndpointGetCMBaseObject();
        VTable = CMBaseObjectGetVTable();
        v8 = *(*(VTable + 8) + 48);
        if (v8)
        {
          v9 = *(VTable + 8) + 48;
          v8(CMBaseObject, 0x1F289CDB0, v1, &number);
          if (number)
          {
            CFNumberGetValue(number, kCFNumberIntType, &valuePtr);
            v10 = +[MXAudioAccessoryServices sharedInstance];
            if (![(MXAudioAccessoryServices *)v10 isPortManaged:valuePtr])
            {
              CMSM_IDSConnection_AddPortToSharedAudioRoutePortIDs(valuePtr, 1, 0);
            }

            if (number)
            {
              CFRelease(number);
            }
          }
        }

        CFRelease(v5);
      }

      CFRelease(v3);
    }
  }
}

uint64_t CMSM_IDSConnection_UpdateRemoteIsUsingSharedAudioRoute(uint64_t result)
{
  if (byte_1EB75CCA3 != result)
  {
    byte_1EB75CCA3 = result;
    return cmsm_IDSConnection_UpdateOtherDevicesConnectedInfoInPickableRoutesCache();
  }

  return result;
}

void CMSM_IDSConnection_DelaySharedAudioRoutingUntilRemoteInitialPlayingInfoIsReceived(const void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (CMSMDeviceState_ItsAnAppleWatch())
  {
    if (dword_1EB75DE40)
    {
      v11 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  else
  {
    v3 = CMSMUtility_CopySystemAudioRoutingContextUUID();
    if (dword_1EB75DE40)
    {
      v11 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v4 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (a1)
    {
      CFRetain(a1);
    }

    if (dword_1EB75DE40)
    {
      v11 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v5 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    byte_1EB75CCA4 = 1;
    v6 = dispatch_time(0, 20000000000);
    global_queue = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __CMSM_IDSConnection_DelaySharedAudioRoutingUntilRemoteInitialPlayingInfoIsReceived_block_invoke;
    block[3] = &__block_descriptor_48_e5_v8__0l;
    block[4] = a1;
    block[5] = v3;
    dispatch_after(v6, global_queue, block);
  }

  v8 = *MEMORY[0x1E69E9840];
}

void CMSM_IDSConnection_AddPortToSharedAudioRoutePortIDs(AudioObjectID a1, int a2, int a3)
{
  v39 = *MEMORY[0x1E69E9840];
  valuePtr = a1;
  v5 = *MEMORY[0x1E695E480];
  v6 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  v7 = vaeCopyDeviceIdentifierFromVADPort(valuePtr);
  cf = 0;
  CMSMUtility_CreateTokensFromDeviceUID(v7, &cf, 0);
  if (!qword_1EB75CC98)
  {
    qword_1EB75CC98 = CFArrayCreateMutable(v5, 0, MEMORY[0x1E695E9C0]);
  }

  v8 = qword_1EB75CC90;
  if (!qword_1EB75CC90)
  {
    qword_1EB75CC90 = cf;
    if (!cf)
    {
      v9 = 0;
      v10 = a2 != 0;
      goto LABEL_16;
    }

    CFRetain(cf);
    v8 = qword_1EB75CC90;
  }

  v9 = 0;
  v10 = a2 != 0;
  if (a2 && v8)
  {
    v11 = FigCFEqual();
    if (a3)
    {
      v12 = v11 == 0;
    }

    else
    {
      v12 = 0;
    }

    v9 = v12;
    v10 = 1;
  }

LABEL_16:
  v34 = v9;
  if (dword_1EB75DE40)
  {
    v37 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v14 = v37;
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v14;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFE;
    }

    if (v15)
    {
      v16 = @"NO";
      if (v34)
      {
        v16 = @"YES";
      }

      LODWORD(outData[0]) = 136315394;
      *(outData + 4) = "CMSM_IDSConnection_AddPortToSharedAudioRoutePortIDs";
      WORD6(outData[0]) = 2114;
      *(outData + 14) = v16;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (FigCFEqual())
  {
    if (FigCFArrayContainsValue() || !vaemIsPortPresentInConnectedOutputPorts(v6))
    {
      goto LABEL_54;
    }

    CFArrayAppendValue(qword_1EB75CC98, v6);
    v17 = a3;
    if (!dword_1EB75DE40)
    {
      goto LABEL_52;
    }

    v18 = v10;
    v19 = v6;
    v37 = 0;
    v20 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v21 = v37;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v22 = v21;
    }

    else
    {
      v22 = v21 & 0xFFFFFFFE;
    }

    if (!v22)
    {
      goto LABEL_50;
    }

    goto LABEL_45;
  }

  if (!a2 && (!vaeDoesBTPortSupportInEarDetection(valuePtr) || !CMSMVAUtility_ShouldBTPortBeTreatedAsInEar(valuePtr)) && vaeDoesBTPortSupportInEarDetection(valuePtr))
  {
    goto LABEL_70;
  }

  CFArrayRemoveAllValues(qword_1EB75CC98);
  if (vaemIsPortPresentInConnectedOutputPorts(v6))
  {
    CFArrayAppendValue(qword_1EB75CC98, v6);
    v23 = qword_1EB75CC90;
    qword_1EB75CC90 = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    v18 = v10;
    if (v23)
    {
      CFRelease(v23);
    }

    v17 = a3;
    if (!dword_1EB75DE40)
    {
      goto LABEL_51;
    }

    v19 = v6;
    v37 = 0;
    v24 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v25 = v37;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v26 = v25;
    }

    else
    {
      v26 = v25 & 0xFFFFFFFE;
    }

    if (!v26)
    {
LABEL_50:
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v6 = v19;
LABEL_51:
      v10 = v18;
LABEL_52:
      if (v17)
      {
        cmsm_IDSConnection_UpdateSharedAudioRouteMacAddressOnRemote(v34, valuePtr);
      }

      goto LABEL_54;
    }

LABEL_45:
    LODWORD(outData[0]) = 136315651;
    *(outData + 4) = "CMSM_IDSConnection_AddPortToSharedAudioRoutePortIDs";
    WORD6(outData[0]) = 1024;
    *(outData + 14) = valuePtr;
    WORD1(outData[1]) = 2113;
    *(&outData[1] + 4) = cf;
    _os_log_send_and_compose_impl();
    goto LABEL_50;
  }

LABEL_54:
  if (v10 && qword_1EB75CC98 && CFArrayGetCount(qword_1EB75CC98) >= 1)
  {
    v33 = v6;
    memset(outData, 0, sizeof(outData));
    PartnersForPort = vaeGetPartnersForPort(valuePtr, outData);
    if (PartnersForPort)
    {
      v28 = PartnersForPort;
      v29 = outData;
      while (1)
      {
        v30 = CFNumberCreate(v5, kCFNumberSInt32Type, v29);
        if (vaemIsPortPresentInConnectedOutputPorts(v30))
        {
          if (!FigCFArrayContainsValue())
          {
            break;
          }
        }

        if (v30)
        {
          goto LABEL_62;
        }

LABEL_63:
        v29 = (v29 + 4);
        if (!--v28)
        {
          goto LABEL_69;
        }
      }

      if (dword_1EB75DE40)
      {
        v31 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      CFArrayAppendValue(qword_1EB75CC98, v30);
      if (!v30)
      {
        goto LABEL_63;
      }

LABEL_62:
      CFRelease(v30);
      goto LABEL_63;
    }

LABEL_69:
    v6 = v33;
  }

LABEL_70:
  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  v32 = *MEMORY[0x1E69E9840];
}

uint64_t cmsm_IDSConnection_UpdateSharedAudioRouteMacAddressOnRemote(int a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  IsSomeClientPlayingOverSharedAudioRouteOnRemote = CMSM_IDSConnection_IsSomeClientPlayingOverSharedAudioRouteOnRemote();
  if (a1 && IsSomeClientPlayingOverSharedAudioRouteOnRemote)
  {
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (qword_1EB75CC98 && CFArrayGetCount(qword_1EB75CC98) == 3)
    {
      CFArrayRemoveAllValues(qword_1EB75CC98);
    }

    result = CMSM_IDSClient_NotifyRemote_UpdateSharedAudioRouteMacAddress(0);
LABEL_21:
    if (byte_1EB75CCA3)
    {
      byte_1EB75CCA3 = 0;
      result = cmsm_IDSConnection_UpdateOtherDevicesConnectedInfoInPickableRoutesCache();
    }

    goto LABEL_25;
  }

  if (dword_1EB75DE40)
  {
    v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (![+[MXAudioAccessoryServices isPortManaged:v15], "isPortManaged:", a2])
  {
    CMSM_IDSClient_NotifyRemote_UpdateSharedAudioRouteMacAddress(qword_1EB75CC90);
  }

  result = CMSMDeviceState_ItsAnAppleWatch();
  if (result)
  {
    if (dword_1EB75DE40)
    {
      v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
      result = fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  else
  {
    v9 = [gIDSConnection copyNearbyPairedDevice];
    v10 = [v9 isNearby];

    if (v10 && (FigSimpleMutexLock(), v11 = qword_1EB75CCD0, FigSimpleMutexUnlock(), !v11) || (result = [objc_msgSend(MEMORY[0x1E69B7DA0] "sharedInstance")], (result & 1) == 0))
    {
      if (dword_1EB75DE40)
      {
        v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      result = CMSM_IDSConnection_IsSomeClientPlayingOverSharedAudioRouteOnRemote();
      if (!result || byte_1EB75E138)
      {
        if (dword_1EB75DE40)
        {
          v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
          result = fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        goto LABEL_21;
      }
    }
  }

LABEL_25:
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

void CMSM_IDSConnection_RemovePortFromSharedAudioRoutePortIDs(int a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (qword_1EB75CC98)
  {
    if (CFArrayGetCount(qword_1EB75CC98) >= 1)
    {
      v2 = 0;
      while (1)
      {
        valuePtr = 0;
        ValueAtIndex = CFArrayGetValueAtIndex(qword_1EB75CC98, v2);
        CFNumberGetValue(ValueAtIndex, kCFNumberSInt32Type, &valuePtr);
        if (valuePtr == a1)
        {
          break;
        }

        if (++v2 >= CFArrayGetCount(qword_1EB75CC98))
        {
          goto LABEL_10;
        }
      }

      if (dword_1EB75DE40)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      CFArrayRemoveValueAtIndex(qword_1EB75CC98, v2);
    }

LABEL_10:
    if (!qword_1EB75CC98 || !CFArrayGetCount(qword_1EB75CC98))
    {
      if (qword_1EB75CC90)
      {
        CFRelease(qword_1EB75CC90);
        qword_1EB75CC90 = 0;
      }
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

uint64_t CMSM_IDSConnection_UpdateSharedAudioRouteIsConnectedToLocal(uint64_t result)
{
  if (byte_1EB75CCA0 != result)
  {
    byte_1EB75CCA0 = result;
    return cmsm_IDSConnection_UpdateOtherDevicesConnectedInfoInPickableRoutesCache();
  }

  return result;
}

uint64_t CMSM_IDSConnection_UpdateSharedAudioRouteIsConnectedToRemote(uint64_t result)
{
  if (byte_1EB75CCA1 != result)
  {
    byte_1EB75CCA1 = result;
    if (result)
    {
    }

    else
    {
      CMSM_IDSConnection_DeactivateIDSMXCoreSession(@"non-resumable.sharedAudioRouteIsNotConnectedToRemote");
    }

    return cmsm_IDSConnection_UpdateOtherDevicesConnectedInfoInPickableRoutesCache();
  }

  return result;
}

uint64_t CMSM_IDSConnection_GetMessagingQueue()
{
  if (CMSM_IDSConnection_GetMessagingQueue_once != -1)
  {
    CMSM_IDSConnection_GetMessagingQueue_cold_1();
  }

  return CMSM_IDSConnection_GetMessagingQueue_messagingQueue;
}

void CMSM_IDSConnection_SetMessageWaitSemaphore(const void *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v3 = dispatch_semaphore_create(0);
  CFDictionarySetValue(Mutable, @"lock", v3);
  if (a1 && Mutable)
  {
    FigSimpleMutexLock();
    CFDictionarySetValue(qword_1EB75CCD8, a1, Mutable);
    FigSimpleMutexUnlock();
LABEL_5:
    CFRelease(Mutable);
    goto LABEL_6;
  }

  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  if (Mutable)
  {
    goto LABEL_5;
  }

LABEL_6:
  dispatch_release(v3);
  v5 = *MEMORY[0x1E69E9840];
}

void CMSM_IDSConnection_WaitForReply(const void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = cmsm_IDSConnection_CopyOutstandingMessage(a1);
  Value = CFDictionaryGetValue(v2, @"lock");
  v4 = dispatch_time(0, 6000000000);
  if (dispatch_semaphore_wait(Value, v4))
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!a1)
  {
    v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    if (!v2)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  FigSimpleMutexLock();
  CFDictionaryRemoveValue(qword_1EB75CCD8, a1);
  FigSimpleMutexUnlock();
  if (v2)
  {
LABEL_5:
    CFRelease(v2);
  }

LABEL_6:
  v6 = *MEMORY[0x1E69E9840];
}

CFTypeRef cmsm_IDSConnection_CopyOutstandingMessage(const void *a1)
{
  FigSimpleMutexLock();
  Value = CFDictionaryGetValue(qword_1EB75CCD8, a1);
  if (Value)
  {
    v3 = CFRetain(Value);
  }

  else
  {
    v3 = 0;
  }

  FigSimpleMutexUnlock();
  return v3;
}

void CMSM_IDSConnection_SetMessageReplyComplete(const void *a1)
{
  v1 = cmsm_IDSConnection_CopyOutstandingMessage(a1);
  if (v1)
  {
    v2 = v1;
    Value = CFDictionaryGetValue(v1, @"lock");
    dispatch_semaphore_signal(Value);

    CFRelease(v2);
  }
}

uint64_t FigRouteDiscoveryManagerCopyFallbackRouteDescriptor(int a1, uint64_t a2, __CFDictionary **a3)
{
  cf[20] = *MEMORY[0x1E69E9840];
  cf[0] = 0;
  if (!a3)
  {
    goto LABEL_20;
  }

  if (a1 != 8 || !MX_FeatureFlags_IsSystemInputPickerEnabled())
  {
    OUTLINED_FUNCTION_2_0();
    v8 = FigSignalErrorAtGM();
    if (!v8)
    {
      v10 = 0;
LABEL_14:
      v9 = 0;
      *a3 = v10;
      goto LABEL_17;
    }

LABEL_8:
    v9 = v8;
    goto LABEL_17;
  }

  EndpointManager = FigRoutingManagerGetEndpointManager(*MEMORY[0x1E69618F8]);
  if (!EndpointManager)
  {
LABEL_20:
    OUTLINED_FUNCTION_2_0();
    v8 = FigSignalErrorAtGM();
    goto LABEL_8;
  }

  v6 = EndpointManager;
  if (dword_1EB75DF60)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v11 = *(*(CMBaseObjectGetVTable() + 24) + 24);
  if (!v11)
  {
    v9 = 4294954514;
LABEL_16:
    OUTLINED_FUNCTION_2_0();
    FigSignalErrorAtGM();
    goto LABEL_17;
  }

  v12 = v11(v6, 0x1F289BB50, *MEMORY[0x1E695E480], a2, 0, cf);
  if (v12)
  {
    v9 = v12;
    goto LABEL_16;
  }

  if (!cf[0])
  {
    v9 = 0;
    goto LABEL_19;
  }

  v10 = FigEndpointDescriptorUtility_CopyDescriptorForEndpoint(cf[0], a2);
  if (v10)
  {
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_2_0();
  FigSignalErrorAtGM();
  v9 = 0;
LABEL_17:
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

LABEL_19:
  v13 = *MEMORY[0x1E69E9840];
  return v9;
}

void discoveryManager_registerEndpointManager_cold_2()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = MXGetAssertionLog();
  if (OUTLINED_FUNCTION_4_3(v0))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1_1(&dword_1B17A2000, v1, v2, "%{public}s %{public}s:%i Something is seriously wrong. Please file a radar to MediaExperience (New Bugs) | All.", v3, v4, v5, v6, 2u);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void discoveryManager_registerEndpointManager_cold_3()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = MXGetAssertionLog();
  if (OUTLINED_FUNCTION_4_3(v0))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1_1(&dword_1B17A2000, v1, v2, "%{public}s %{public}s:%i Something is seriously wrong. Please file a radar to MediaExperience (New Bugs) | All.", v3, v4, v5, v6, 2u);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void discoveryManager_registerEndpointManager_cold_4()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = MXGetAssertionLog();
  if (OUTLINED_FUNCTION_4_3(v0))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1_1(&dword_1B17A2000, v1, v2, "%{public}s %{public}s:%i Something is seriously wrong. Please file a radar to MediaExperience (New Bugs) | All.", v3, v4, v5, v6, 2u);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void FigRouteDiscoveryManagerRegisterEndpointManager_cold_2()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = MXGetAssertionLog();
  if (OUTLINED_FUNCTION_4_3(v0))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1_1(&dword_1B17A2000, v1, v2, "%{public}s %{public}s:%i Something is seriously wrong. Please file a radar to MediaExperience (New Bugs) | All.", v3, v4, v5, v6, 2u);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __routingContextUtilities_getSharedContextUtilities_block_invoke_cold_1()
{
  if (!byte_1EB75CFA8)
  {
    if (qword_1EB75CFA0)
    {
      dispatch_release(qword_1EB75CFA0);
      qword_1EB75CFA0 = 0;
    }

    if (qword_1EB75CF80)
    {
      CFRelease(qword_1EB75CF80);
    }

    v0 = &qword_1EB75CDB8;
    v1 = 15;
    do
    {
      v2 = *(v0 - 2);
      if (v2)
      {
        CFRelease(v2);
      }

      if (*v0)
      {
        CFRelease(*v0);
      }

      v0 += 4;
      --v1;
    }

    while (v1);
    if (qword_1EB75CFF8)
    {
      CFRelease(qword_1EB75CFF8);
      qword_1EB75CFF8 = 0;
    }

    if (qword_1EB75D000)
    {
      CFRelease(qword_1EB75D000);
      qword_1EB75D000 = 0;
    }

    if (qword_1EB75D008)
    {
      CFRelease(qword_1EB75D008);
      qword_1EB75D008 = 0;
    }
  }
}

void FigRoutingManagerInit()
{
  v30 = *MEMORY[0x1E69E9840];
  cf = 0;
  v27 = 0;
  v25 = 0;
  if (_MergedGlobals != -1)
  {
    dispatch_once(&_MergedGlobals, &__block_literal_global_4);
  }

  if (qword_1ED6D2E28)
  {
    routingManager_createSystemContext(&unk_1ED6D2E20, 1, &cf);
    v1 = OUTLINED_FUNCTION_7();
    FigRoutingContextUtilities_LogCurrentState(v1, 1);
    routingManager_createSystemContext(&unk_1ED6D2E20, 2, 0);
    v2 = OUTLINED_FUNCTION_7();
    FigRoutingContextUtilities_LogCurrentState(v2, 2);
    routingManager_createSystemContext(&unk_1ED6D2E20, 9, 0);
    v3 = OUTLINED_FUNCTION_7();
    FigRoutingContextUtilities_LogCurrentState(v3, 9);
    routingManager_createSystemContext(&unk_1ED6D2E20, 3, &v27);
    v4 = OUTLINED_FUNCTION_7();
    FigRoutingContextUtilities_LogCurrentState(v4, 3);
    routingManager_createSystemContext(&unk_1ED6D2E20, 11, 0);
    v5 = OUTLINED_FUNCTION_7();
    FigRoutingContextUtilities_LogCurrentState(v5, 11);
    if (MX_FeatureFlags_IsSystemInputPickerEnabled())
    {
      routingManager_createSystemContext(&unk_1ED6D2E20, 13, 0);
      v6 = OUTLINED_FUNCTION_7();
      FigRoutingContextUtilities_LogCurrentState(v6, 13);
    }

    if (MX_FeatureFlags_IsSystemRemoteDisplayContextEnabled())
    {
      routingManager_createSystemContext(&unk_1ED6D2E20, 14, 0);
      v7 = OUTLINED_FUNCTION_7();
      FigRoutingContextUtilities_LogCurrentState(v7, 14);
    }

    routingManager_createSystemContext(&unk_1ED6D2E20, 12, 0);
    v8 = OUTLINED_FUNCTION_7();
    FigRoutingContextUtilities_LogCurrentState(v8, 12);
    if (dword_1EB75DF20)
    {
      v9 = OUTLINED_FUNCTION_9_1();
      v17 = OUTLINED_FUNCTION_16(v9, v10, v11, v12, v13, v14, v15, v16, v22, v23, v24, SBYTE2(v24), BYTE3(v24), SHIDWORD(v24));
      if (OUTLINED_FUNCTION_3_0(v17))
      {
        v28 = 136315138;
        v29 = "FigRoutingManagerInit";
        OUTLINED_FUNCTION_6();
        OUTLINED_FUNCTION_2();
        _os_log_send_and_compose_impl();
      }

      v18 = *(v0 + 3864);
      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_13();
    }

    FigRoutingContextUtilities_SetLeaderUUIDForContext(v27, cf, 0);
    v19 = FigRoutingManagerContextUtilities_SetDefaultLeaderUUIDForContext(v27, cf);
    FigRoutingContextUtilities_LogCurrentState(v19, v20);
    if (!FigRoutingManagerContextUtilities_CopyRoutingContextForContextUUID(v27, &v25) && !FigRoutingSessionManagerInit(v25))
    {
      MXDebugInstallSysdiagnoseBlock(@"RouteList", &__block_literal_global_22_0);
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v27)
  {
    CFRelease(v27);
  }

  if (v25)
  {
    CFRelease(v25);
  }

  v21 = *MEMORY[0x1E69E9840];
}

uint64_t FigRoutingManagerInternal_CreateAirPlayAggregate(uint64_t a1, const void *a2, unsigned int a3, CFTypeRef *a4)
{
  v28 = *MEMORY[0x1E69E9840];
  cf = 0;
  if (a4 && (v6 = [+[MXEndpointDescriptorCache getEndpointManagerForType:"getEndpointManagerForType:"]!= 0)
  {
    v7 = v6;
    if (MX_FeatureFlags_IsAirPlayDaemonEnabled())
    {
      v8 = MXAggregateEndpointCreateAggregateEndpoint(v7, a2, a3, &cf);
    }

    else
    {
      v9 = 5;
      do
      {
        if (dword_1EB75DF20)
        {
          OUTLINED_FUNCTION_4_4();
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
          {
            v11 = v22;
          }

          else
          {
            v11 = v22 & 0xFFFFFFFE;
          }

          if (v11)
          {
            v24 = 136315394;
            OUTLINED_FUNCTION_14();
            OUTLINED_FUNCTION_1_2();
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v12 = *(*(CMBaseObjectGetVTable() + 16) + 24);
        if (v12)
        {
          v8 = v12(v7, a3, &cf);
          if (!v8)
          {
            v13 = cf;
            if (cf)
            {
              goto LABEL_26;
            }
          }
        }

        else
        {
          v8 = 4294954514;
        }

        OUTLINED_FUNCTION_4_4();
        v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        if (os_log_type_enabled(v14, type))
        {
          v15 = v22;
        }

        else
        {
          v15 = v22 & 0xFFFFFFFE;
        }

        if (v15)
        {
          v24 = 136315650;
          OUTLINED_FUNCTION_14();
          v26 = 1024;
          v27 = v8;
          OUTLINED_FUNCTION_1_2();
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
        MEMORY[0x1B2734EB0](50000);
        --v9;
      }

      while (v9);
    }

    if (v8)
    {
      if (dword_1EB75DF20)
      {
        OUTLINED_FUNCTION_4_4();
        v18 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v19 = os_log_type_enabled(v18, type);
        if (OUTLINED_FUNCTION_10(v19))
        {
          v24 = 136315138;
          v25 = "FigRoutingManagerInternal_CreateAirPlayAggregate";
          OUTLINED_FUNCTION_8_1();
          OUTLINED_FUNCTION_2();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_0_0();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      FigRoutingManagerContextUtilities_SetAggregateEndpoint(a2, 0);
      if (cf)
      {
        CFRelease(cf);
      }
    }

    else
    {
      v13 = cf;
LABEL_26:
      FigRoutingManagerContextUtilities_SetAggregateEndpoint(a2, v13);
      v8 = 0;
      *a4 = cf;
    }
  }

  else
  {
    v8 = 0;
  }

  v16 = *MEMORY[0x1E69E9840];
  return v8;
}

void FigRoutingManagerCreateAndActivateSystemRemotePoolEndpoint()
{
  v19 = *MEMORY[0x1E69E9840];
  if (_MergedGlobals != -1)
  {
    dispatch_once(&_MergedGlobals, &__block_literal_global_4);
  }

  cf = 0;
  v16 = 0;
  v0 = FigRoutingManagerContextUtilities_CopySystemRemotePoolContextUUID(&cf);
  FigRoutingManagerInternal_CreateAirPlayAggregateForSystemRemotePool(v0, cf, &v16);
  if (v16 && MXSystemRemotePool_ActivateAggregateEndpoint(v16, cf) && dword_1EB75DF20)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v10 = OUTLINED_FUNCTION_17(os_log_and_send_and_compose_flags_and_os_log_type, v3, v4, v5, v6, v7, v8, v9, v11, v12, v13, *v14, v14[2], OS_LOG_TYPE_DEFAULT, 0);
    if (OUTLINED_FUNCTION_3_0(v10))
    {
      v17 = 136315138;
      v18 = "FigRoutingManagerCreateAndActivateSystemRemotePoolEndpoint";
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_2();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_13();
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (v16)
  {
    CFRelease(v16);
  }

  v1 = *MEMORY[0x1E69E9840];
}

uint64_t FigRoutingManagerInternal_CreateAirPlayAggregateForSystemRemotePool(uint64_t a1, const void *a2, CFTypeRef *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  cf = 0;
  if (!a3)
  {
    goto LABEL_27;
  }

  v5 = [+[MXEndpointDescriptorCache sharedInstance](MXEndpointDescriptorCache getEndpointManagerForType:"getEndpointManagerForType:", *MEMORY[0x1E69618D0]];
  if (!v5)
  {
    goto LABEL_27;
  }

  v6 = v5;
  if (MX_FeatureFlags_IsAirPlayDaemonEnabled())
  {
    v7 = MXAggregateEndpointCreateAggregateEndpoint(v6, a2, 3, &cf);
  }

  else
  {
    v8 = 5;
    do
    {
      if (dword_1EB75DF20)
      {
        OUTLINED_FUNCTION_12_0();
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
        {
          v10 = v18;
        }

        else
        {
          v10 = v18 & 0xFFFFFFFE;
        }

        if (v10)
        {
          v20 = 136315138;
          v21 = "FigRoutingManagerInternal_CreateAirPlayAggregateForSystemRemotePool";
          OUTLINED_FUNCTION_8_1();
          OUTLINED_FUNCTION_5();
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v11 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (v11)
      {
        v7 = v11(v6, &cf);
        if (!v7)
        {
          v12 = cf;
          if (cf)
          {
            goto LABEL_26;
          }
        }
      }

      else
      {
        v7 = 4294954514;
      }

      OUTLINED_FUNCTION_12_0();
      v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      if (os_log_type_enabled(v13, type))
      {
        v14 = v18;
      }

      else
      {
        v14 = v18 & 0xFFFFFFFE;
      }

      if (v14)
      {
        v20 = 136315394;
        v21 = "FigRoutingManagerInternal_CreateAirPlayAggregateForSystemRemotePool";
        v22 = 1024;
        v23 = v7;
        OUTLINED_FUNCTION_5();
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      MEMORY[0x1B2734EB0](50000);
      --v8;
    }

    while (v8);
  }

  if (!v7)
  {
    v12 = cf;
    if (cf)
    {
LABEL_26:
      FigRoutingManagerContextUtilities_SetAggregateEndpoint(a2, v12);
      v7 = 0;
      *a3 = cf;
      goto LABEL_28;
    }

LABEL_27:
    v7 = 0;
    goto LABEL_28;
  }

  FigRoutingManagerContextUtilities_SetAggregateEndpoint(a2, 0);
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_28:
  v15 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t FigRoutingManagerCreateAggregateForContextIfNecessary(const void *a1, CFIndex a2)
{
  v26 = *MEMORY[0x1E69E9840];
  if (!MX_FeatureFlags_IsAirPlayDaemonEnabled() || !FigRoutingManagerContextUtilities_DoesContextSupportWHAMultiDeviceRouting(a1))
  {
    goto LABEL_22;
  }

  ContextType = FigRoutingManagerContextUtilities_GetContextType(a1);
  if (ContextType == 9)
  {
    if (FigRoutingManagerUtilities_AreAllEndpointsOfTypeAirPlay(a2))
    {
LABEL_5:
      cf = 0;
      FigRoutingManagerContextUtilities_CopyAggregateEndpointAsFigEndpoint(a1, &cf);
      if (cf)
      {
        if (FigRoutingManagerIsEndpointActivated(cf))
        {
          if (dword_1EB75DF20)
          {
            v6 = OUTLINED_FUNCTION_9_1();
            v14 = OUTLINED_FUNCTION_16(v6, v7, v8, v9, v10, v11, v12, v13, v20, v21, v22, SBYTE2(v22), BYTE3(v22), SHIDWORD(v22));
            if (OUTLINED_FUNCTION_3_0(v14))
            {
              v24 = 136315138;
              v25 = "FigRoutingManagerCreateAggregateForContextIfNecessary";
              OUTLINED_FUNCTION_8_1();
              OUTLINED_FUNCTION_2();
              _os_log_send_and_compose_impl();
            }

            v17 = *(v2 + 3864);
            OUTLINED_FUNCTION_0_0();
            OUTLINED_FUNCTION_13();
          }
        }

        else if (ContextType == 9)
        {
          MXSystemRemotePool_ActivateAggregateEndpoint(cf, a1);
        }

        else
        {
          FigRoutingManager_iOSActivateEndpoint(cf, a1, 0, 0);
        }
      }

      else
      {
        FigRoutingManagerCreateAndActivateAggregateEndpointForContext(a1);
      }

      if (cf)
      {
        CFRelease(cf);
      }

      goto LABEL_22;
    }
  }

  else if (FigRoutingManagerUtilities_AreAllEndpointsWHAGroupable(a2))
  {
    goto LABEL_5;
  }

  if (dword_1EB75DF20)
  {
    LODWORD(cf) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v16 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    if (OUTLINED_FUNCTION_3_0(v16))
    {
      v24 = 136315138;
      v25 = "FigRoutingManagerCreateAggregateForContextIfNecessary";
      OUTLINED_FUNCTION_8_1();
      OUTLINED_FUNCTION_2();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_13();
  }

LABEL_22:
  v18 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t routingManager_registerContextInternal(uint64_t a1, const void *a2, uint64_t a3, int a4, const __CFDictionary *a5)
{
  v9 = FigRoutingManagerContextUtilities_AddContext(a2, a3, a4, a5);
  if (v9)
  {
    return v9;
  }

  if (a4 == 4)
  {
    if (CMSMDeviceState_IsHomePodHub())
    {
      cf = 0;
      Value = CFDictionaryGetValue(a5, @"isAudioContextTest");
      if (Value != *MEMORY[0x1E695E4D0])
      {
        FigRoutingManagerInternal_CreateAirPlayAggregate(Value, a2, 0, &cf);
        FigRoutingManagerContextUtilities_SetAggregateEndpoint(a2, cf);
        if (cf)
        {
          IsEndpointActivated = FigRoutingManagerIsEndpointActivated(cf);
          v10 = cf;
          if (IsEndpointActivated)
          {
LABEL_6:
            if (v10)
            {
              CFRelease(v10);
            }

            goto LABEL_10;
          }

          MXAudioContext_ActivateAggregateEndpoint(cf, a2);
LABEL_5:
          v10 = cf;
          goto LABEL_6;
        }
      }
    }
  }

  else if (a4 == 5)
  {
    cf = 0;
    FigRoutingManagerContextUtilities_CopySystemAudioContextUUID(&cf);
    FigRoutingContextUtilities_SetLeaderUUIDForContext(a2, cf, @"configUpdateReasonEndedBottomUpRouteChange");
    FigRoutingManagerContextUtilities_SetDefaultLeaderUUIDForContext(a2, cf);
    goto LABEL_5;
  }

LABEL_10:
  FigRoutingManagerContextUtilities_PostNotificationToClientsOfContextWithUUIDAndItsFollowers(a2, @"currentRouteChanged", 0);
  if (a2)
  {
    CFRetain(a2);
  }

  v12 = *(a1 + 16);
  OUTLINED_FUNCTION_15();
  MXDispatchAsync(v13, v14, v15, v16, v17, v18, v19);
  return v9;
}

uint64_t FigRoutingManagerRegisterContextWithUUID(uint64_t a1, const __CFDictionary *a2, int a3, const void *a4)
{
  if (_MergedGlobals != -1)
  {
    dispatch_once(&_MergedGlobals, &__block_literal_global_4);
  }

  if (a3 - 1) < 0xE && ((0x3F07u >> (a3 - 1)))
  {
    return 4294955276;
  }

  if (qword_1ED6D2E28)
  {
    v9 = &unk_1ED6D2E20;
  }

  else
  {
    v9 = 0;
  }

  result = routingManager_registerContextInternal(v9, a4, a1, a3, a2);
  if (!result)
  {
    FigRoutingContextUtilities_LogCurrentState(result, v10);
    return 0;
  }

  return result;
}

uint64_t FigRoutingManagerUnregisterContext(uint64_t result)
{
  v34 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    ContextType = FigRoutingManagerContextUtilities_GetContextType(result);
    if ((ContextType - 5) > 1)
    {
      if (ContextType == 4 && CMSMDeviceState_IsHomePodHub() && dword_1EB75DF20)
      {
        LODWORD(theArray) = 0;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v15 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        if (OUTLINED_FUNCTION_10(v15))
        {
          v30 = 136315394;
          v31 = "FigRoutingManagerUnregisterContext";
          v32 = 2114;
          v33 = v1;
          OUTLINED_FUNCTION_5();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_0_0();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }

    else
    {
      theArray = 0;
      FigRoutingManagerContextUtilities_CopyActivatedEndpointsInfo(v1, &theArray);
      if (theArray)
      {
        Count = CFArrayGetCount(theArray);
        if (Count >= 1)
        {
          v4 = Count;
          for (i = 0; i != v4; ++i)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
            Value = CFDictionaryGetValue(ValueAtIndex, @"ActivatedEndpointsInfo_Endpoint");
            FigCFDictionaryGetInt64IfPresent();
            if (dword_1EB75DF20)
            {
              v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
              OUTLINED_FUNCTION_0_0();
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            FigRoutingManager_iOSDeactivateEndpoint(Value, 0, 0);
            OUTLINED_FUNCTION_15();
            FigRoutingManagerContextUtilities_SetPickedEndpoints(v9, v10, v11, v12, v13);
          }
        }

        if (theArray)
        {
          CFRelease(theArray);
        }
      }
    }

    if (_MergedGlobals != -1)
    {
      dispatch_once(&_MergedGlobals, &__block_literal_global_4);
    }

    v16 = qword_1ED6D2E28;
    CFRetain(v1);
    v17 = 16;
    if (v16)
    {
      v17 = &qword_1ED6D2E30;
    }

    v18 = *v17;
    OUTLINED_FUNCTION_15();
    MXDispatchAsync(v19, v20, v21, v22, v23, v24, v25);
    v26 = FigRoutingManagerContextUtilities_RemoveContext(v1);
    result = FigRoutingContextUtilities_LogCurrentState(v26, v27);
  }

  v28 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t FigRoutingManagerCopyContextWithUUID(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return FigRoutingManagerContextUtilities_CopyRoutingContextForContextUUID(a1, a2);
  }

  else
  {
    return 4294955276;
  }
}

uint64_t FigRoutingManagerCopyPickedRouteDescriptorForRoutingContext(uint64_t a1, __CFDictionary **a2)
{
  if (_MergedGlobals != -1)
  {
    dispatch_once(&_MergedGlobals, &__block_literal_global_4);
  }

  cf = 0;
  v4 = 4294954516;
  if (a1 && a2)
  {
    v4 = FigRoutingManagerContextUtilities_CopyPickedEndpointAtIndex(a1, 0, &cf);
    v5 = FigEndpointDescriptorUtility_CopyDescriptorForEndpoint(cf, 0);
    if (cf)
    {
      CFRelease(cf);
    }

    *a2 = v5;
  }

  return v4;
}

uint64_t FigRoutingManagerCopyPickedRouteDescriptorsForRoutingContext(uint64_t a1, __CFArray **a2)
{
  cf = 0;
  v2 = 4294954516;
  if (a1 && a2)
  {
    if (_MergedGlobals != -1)
    {
      dispatch_once(&_MergedGlobals, &__block_literal_global_4);
    }

    v2 = routingManager_iOSCopyPickedEndpointsForRoutingContext(a1, &cf);
    *a2 = FigEndpointDescriptorUtility_CopyDescriptorsForEndpoints(cf, 0);
    if (cf)
    {
      CFRelease(cf);
    }
  }

  return v2;
}

uint64_t FigRoutingManagerCopyPickedEndpointForRemoteControl(uint64_t a1, void *a2)
{
  v5 = 0;
  result = 4294954516;
  if (a1)
  {
    if (a2)
    {
      FigRoutingManagerContextUtilities_CopyPickedEndpointForRemoteControl(a1, &v5);
      result = 0;
      *a2 = v5;
    }
  }

  return result;
}

uint64_t FigRoutingManagerSaveCommunicationChannelUUIDForContext(uint64_t a1, uint64_t a2)
{
  if (a1 && a2)
  {
    return FigRoutingManagerContextUtilities_SaveCommChannelUUID(a1, a2);
  }

  else
  {
    return 4294954516;
  }
}

uint64_t FigRoutingManagerPerformPostInitOperations()
{
  v4 = 0;
  if (_MergedGlobals != -1)
  {
    dispatch_once(&_MergedGlobals, &__block_literal_global_4);
  }

  if (FigRoutingManagerDoesDeviceAlwaysHaveAggregateForLocalPlayback())
  {
    FigRoutingManagerCreateAndActivateAggregateEndpointForLocalPlayback();
    v1 = 0;
  }

  else
  {
    cf = 0;
    v0 = FigRoutingManagerContextUtilities_CopySystemMusicContextUUID(&cf);
    FigRoutingManagerInternal_CreateAirPlayAggregate(v0, cf, 0, &v4);
    v1 = 0;
    if (v4)
    {
      v1 = FigRoutingManager_iOSActivateEndpoint(v4, cf, 0, 0);
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    if (v4)
    {
      CFRelease(v4);
      v4 = 0;
    }
  }

  FigRoutingManagerCreateAndActivateSystemRemotePoolEndpoint();
  return v1;
}

void FigRoutingManagerHandleAggregateFailure(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    cf = 0;
    v28 = 0;
    CMBaseObject = FigEndpointGetCMBaseObject();
    VTable = CMBaseObjectGetVTable();
    v3 = *(*(VTable + 8) + 48);
    if (!v3)
    {
      goto LABEL_16;
    }

    v4 = *(VTable + 8) + 48;
    v3(CMBaseObject, *MEMORY[0x1E6962238], *MEMORY[0x1E695E480], &cf);
    v5 = cf;
    if (!cf)
    {
      goto LABEL_16;
    }

    if (dword_1EB75DF20)
    {
      v6 = OUTLINED_FUNCTION_11();
      v7 = os_log_type_enabled(v6, BYTE3(type));
      if (OUTLINED_FUNCTION_10(v7))
      {
        v29 = 136315394;
        v30 = "FigRoutingManagerHandleAggregateFailure";
        v31 = 2114;
        v32 = cf;
        OUTLINED_FUNCTION_6();
        OUTLINED_FUNCTION_5();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_0_0();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v5 = cf;
    }

    FigRoutingManagerContextUtilities_CopyPickedEndpointAtIndex(v5, 0, &v28);
    if (FigCFEqual())
    {
      if (dword_1EB75DF20)
      {
        v8 = OUTLINED_FUNCTION_11();
        v16 = OUTLINED_FUNCTION_17(v8, v9, v10, v11, v12, v13, v14, v15, v23, v24, v25, type, SBYTE2(type), BYTE3(type), SHIDWORD(type));
        if (OUTLINED_FUNCTION_3_0(v16))
        {
          v29 = 136315394;
          v30 = "FigRoutingManagerHandleAggregateFailure";
          v31 = 2114;
          v32 = cf;
          OUTLINED_FUNCTION_6();
          OUTLINED_FUNCTION_2();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_0_0();
        OUTLINED_FUNCTION_13();
      }

      CMSMUtility_InterruptSessionsWithRoutingContextUUID(cf);
      FigRoutingManagerPickEndpointsForContext(cf, 0, 0, 0);
      OUTLINED_FUNCTION_15();
      FigRoutingManagerContextUtilities_SetPickedEndpoints(v17, v18, v19, v20, v21);
    }
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

LABEL_16:
  if (v28)
  {
    CFRelease(v28);
  }

  v22 = *MEMORY[0x1E69E9840];
}

void FigRoutingManagerCopySelectedBufferedEndpoint_cold_1(uint64_t a1, CFTypeRef *a2)
{
  cf = 0;
  FigRoutingContextUtilities_CopyLeaderUUIDForContext(a1, &cf);
  FigRoutingManagerCopyPickedEndpointForRoutingContext(cf, a2);
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t FVIOKit_PlayVibration(CMTime *x0_0, float a2)
{
  if (!gFVInfo)
  {
    return 4294950806;
  }

  if (a2 >= 0.0 && a2 <= 1.0)
  {
    flags = x0_0->flags;
    OUTLINED_FUNCTION_11_0();
    if (!v9 || (v10 = v8, v11 = v7, v12 = v6, OUTLINED_FUNCTION_0_1(), v78 = *MEMORY[0x1E6960CC0], time2 = **&MEMORY[0x1E6960CC0], CMTimeCompare(&time1, &time2) == -1))
    {
      fig_log_get_emitter();
      return FigSignalErrorAtGM();
    }

    else
    {
      v13 = *gFVInfo;
      v14 = FigSimpleMutexLock();
      if (!v14)
      {
        v15 = *(v12 + 12);
        OUTLINED_FUNCTION_11_0();
        if (v9 && (OUTLINED_FUNCTION_7_0(), OUTLINED_FUNCTION_6_0(v130, v16, v17, v18, v19, v20, v21, v78, v94, v103, v108, v117, *&time2.value, time2.epoch, v127, time1.value) == 1) && (v22 = *(v11 + 12), OUTLINED_FUNCTION_11_0(), v9) && (OUTLINED_FUNCTION_2_1(), OUTLINED_FUNCTION_6_0(v131, v23, v24, v25, v26, v27, v28, v78, v94, v103, v108, v117, *&time2.value, time2.epoch, v127, time1.value) == 1))
        {
          OUTLINED_FUNCTION_0_1();
          if (OUTLINED_FUNCTION_4_5(*(v12 + 16), v78, *(&v78 + 1), v94, v103, v108, v117, *v12, *(v12 + 8), time2.epoch, v127, time1.value) == -1 || (OUTLINED_FUNCTION_7_0(), OUTLINED_FUNCTION_4_5(*(v11 + 16), v79, v87, v95, v104, v109, v118, *v11, *(v11 + 8), time2.epoch, v127, time1.value) == -1) || (OUTLINED_FUNCTION_2_1(), OUTLINED_FUNCTION_6_0(v132, v29, v30, v31, v32, v33, v34, v80, v96, v105, v110, v119, *&time2.value, time2.epoch, v127, time1.value) == -1))
          {
            started = 4294950805;
            goto LABEL_56;
          }

          time1 = *v12;
          if (OUTLINED_FUNCTION_4_5(*(gFVInfo + 88), v81, v88, v97, v106, v111, v120, *(gFVInfo + 72), *(gFVInfo + 80), time2.epoch, v127, time1.value) == -1)
          {
            memset(&time1, 0, sizeof(time1));
            time2 = *(gFVInfo + 48);
            CMTimeMultiply(&time1, &time2, 2);
            if (OUTLINED_FUNCTION_10_0(v133, *(v12 + 16), v82, v89, v98, v112, v121, *v12, *(v12 + 8), time2.epoch, v127, *&time1.value, time1.epoch) == -1)
            {
              *v12 = time1;
            }
          }

          else
          {
            OUTLINED_FUNCTION_12_1();
          }

          time1 = *v11;
          v69 = OUTLINED_FUNCTION_4_5(*(gFVInfo + 64), v82, v89, v98, *(&v98 + 1), v112, v121, *(gFVInfo + 48), *(gFVInfo + 56), time2.epoch, v127, time1.value);
          if (v69 == -1)
          {
            v77 = *(gFVInfo + 48);
            *(v11 + 16) = *(gFVInfo + 64);
            *v11 = v77;
          }

          *&time1.timescale = 0;
          time1.epoch = 0;
          OUTLINED_FUNCTION_5_0(v69, v70, v71, v72, v73, v74, v75, v76, v85, v92, v101, v115, v124, *&time2.value, time2.epoch, v127, 0);
          if (OUTLINED_FUNCTION_10_0(v134, *(v11 + 16), v86, v93, v102, v116, v125, *v11, *(v11 + 8), time2.epoch, v127, *&time1.value, time1.epoch) != 1)
          {
LABEL_27:
            if (!*(gFVInfo + 112))
            {
              if (IOPMAssertionCreateWithName(@"NoIdleSleepAssertion", 0xFFu, @"coremedia-vibrating", (gFVInfo + 108)))
              {
                v51 = 0;
              }

              else
              {
                v51 = *(gFVInfo + 108) != 0;
              }

              *(gFVInfo + 104) = v51;
              OUTLINED_FUNCTION_0_1();
              v55 = OUTLINED_FUNCTION_4_5(*(v12 + 16), v84, v91, v100, v107, v114, v123, *v12, *(v12 + 8), time2.epoch, v127, time1.value);
              v56 = gFVInfo;
              if (v55 == 1)
              {
                OUTLINED_FUNCTION_7_0();
                v57 = FVIOKit_ConvertFigTimeToMillisec(&time1);
                OUTLINED_FUNCTION_2_1();
                v58 = FVIOKit_ConvertFigTimeToMillisec(&time1);
                v59 = v57 - v58;
                v60 = v56;
                v61 = a2;
                v62 = 1;
              }

              else
              {
                OUTLINED_FUNCTION_2_1();
                v58 = FVIOKit_ConvertFigTimeToMillisec(&time1);
                v60 = v56;
                v61 = a2;
                v59 = 0;
                v62 = 0;
              }

              started = FVIOKit_StartIOServiceVibration(v60, v58, v59, v62, v61);
              if (started)
              {
                if (*(gFVInfo + 104))
                {
                  IOPMAssertionRelease(*(gFVInfo + 108));
                  v63 = gFVInfo;
                  *(gFVInfo + 104) = 0;
                  *(v63 + 108) = 0;
                }

                goto LABEL_56;
              }

              OUTLINED_FUNCTION_16_0(gFVInfo);
              *(v64 + 120) = v10;
              if (v10)
              {
                CFRetain(v10);
              }

              if (v11)
              {
                CFRelease(v11);
              }

              time2 = *x0_0;
              CMTimeConvertScale(&time1, &time2, 1000000000, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
              *x0_0 = time1;
              v65 = dispatch_time(0, x0_0->value);
              dispatch_source_set_timer(*(gFVInfo + 96), v65, 0xFFFFFFFFFFFFFFFFLL, 0);
              goto LABEL_55;
            }

            if (*(gFVInfo + 192))
            {
              started = 4294950801;
LABEL_56:
              v67 = *gFVInfo;
              FigSimpleMutexUnlock();
              return started;
            }

            Current = CFAbsoluteTimeGetCurrent();
            OUTLINED_FUNCTION_0_1();
            v53 = Current + CMTimeGetSeconds(&time1);
            v54 = gFVInfo;
            if (*(gFVInfo + 192))
            {
              if (*(gFVInfo + 136) < v53)
              {
                OUTLINED_FUNCTION_8_2(gFVInfo, v53);
              }

              if (*(v54 + 208) >= a2)
              {
                goto LABEL_51;
              }
            }

            else
            {
              OUTLINED_FUNCTION_8_2(gFVInfo, v53);
            }

            *(v54 + 208) = a2;
LABEL_51:
            *(v54 + 192) = 1;
            v66 = *(v54 + 200);
            *(v54 + 200) = v10;
            if (v10)
            {
              CFRetain(v10);
            }

            if (v66)
            {
              CFRelease(v66);
            }

LABEL_55:
            started = 0;
            goto LABEL_56;
          }
        }

        else
        {
          OUTLINED_FUNCTION_13_0();
          if (OUTLINED_FUNCTION_4_5(v35[11], v78, *(&v78 + 1), v94, v103, v108, v117, v35[9], v35[10], time2.epoch, v127, time1.value) == -1)
          {
            OUTLINED_FUNCTION_13_0();
            if (OUTLINED_FUNCTION_4_5(v47[8], v83, v90, v99, *(&v99 + 1), v113, v122, v47[6], v47[7], time2.epoch, v127, time1.value) == -1)
            {
              v48 = *(gFVInfo + 48);
              x0_0->epoch = *(gFVInfo + 64);
              *&x0_0->value = v48;
            }

            v49 = *&x0_0->value;
            *(v11 + 16) = x0_0->epoch;
            *v11 = v49;
            OUTLINED_FUNCTION_12_1();
            goto LABEL_27;
          }

          OUTLINED_FUNCTION_0_1();
          Seconds = CMTimeGetSeconds(&time1);
          time1 = *(gFVInfo + 72);
          v37 = ceil(Seconds / CMTimeGetSeconds(&time1));
          OUTLINED_FUNCTION_0_1();
          v38 = CMTimeGetSeconds(&time1);
          v39 = CMTimeMakeWithSeconds(&time1, v38 / v37, 1000);
          *v12 = time1;
          OUTLINED_FUNCTION_5_0(v39, v40, v41, v42, v43, v44, v45, v46, v83, v90, v99, v113, v122, *&time2.value, time2.epoch, v127, time1.value);
        }

        *v11 = time1;
        goto LABEL_27;
      }
    }

    return v14;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t FVIOKit_PlayVibrationWithPattern(const __CFArray *a1, const void *a2, float a3)
{
  v62 = 0;
  v4 = &qword_1EB75D000;
  if (!gFVInfo)
  {
    return 4294950806;
  }

  v6 = a3 < 0.0 || a3 > 1.0;
  if (!v6 && a1)
  {
    cf = a2;
    valuePtr = *(gFVInfo + 72);
    v8 = FVIOKit_ConvertFigTimeToMillisec(&valuePtr);
    valuePtr = *(gFVInfo + 48);
    v62 = FVIOKit_ConvertFigTimeToMillisec(&valuePtr);
    v9 = *gFVInfo;
    v10 = FigSimpleMutexLock();
    if (v10)
    {
      return v10;
    }

    Count = CFArrayGetCount(a1);
    if (Count < 2 || (v12 = Count, (Count & 1) != 0))
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_9();
      v43 = FigSignalErrorAtGM();
      Mutable = 0;
    }

    else
    {
      v13 = *MEMORY[0x1E695E480];
      Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], Count, MEMORY[0x1E695E9C0]);
      if (Mutable)
      {
        v59 = v3;
        v15 = 0;
        v16 = *MEMORY[0x1E695E4C0];
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a1, v15);
          if (!ValueAtIndex)
          {
            goto LABEL_74;
          }

          v18 = ValueAtIndex;
          TypeID = CFBooleanGetTypeID();
          if (TypeID != CFGetTypeID(v18))
          {
            goto LABEL_74;
          }

          if (CFBooleanGetValue(v18) == 1)
          {
            IntensityDictionary = FVIOKit_CreateIntensityDictionary(a3);
            if (!IntensityDictionary)
            {
              goto LABEL_74;
            }

            OUTLINED_FUNCTION_14_0(IntensityDictionary);
            CFRelease(TypeID);
          }

          else
          {
            CFArrayAppendValue(Mutable, v18);
          }

          v21 = CFArrayGetValueAtIndex(a1, v15 | 1);
          if (!v21 || (v22 = v21, v23 = CFNumberGetTypeID(), v23 != CFGetTypeID(v22)))
          {
LABEL_74:
            fig_log_get_emitter();
            OUTLINED_FUNCTION_3_1();
            v43 = FigSignalErrorAtGM();
            v4 = &qword_1EB75D000;
            goto LABEL_71;
          }

          Value = CFBooleanGetValue(v18);
          if (Value == 1)
          {
            OUTLINED_FUNCTION_17_1(1, v25, v26, v27, v28, v29, v30, v31, v59, cf, valuePtr.value);
            if (SLODWORD(valuePtr.value) <= v8)
            {
              if (SLODWORD(valuePtr.value) < v62)
              {
                LODWORD(valuePtr.value) = v62;
              }
            }

            else
            {
              LODWORD(valuePtr.value) = v8;
            }

            v33 = CFNumberCreate(v13, kCFNumberSInt32Type, &valuePtr);
            OUTLINED_FUNCTION_14_0(v33);
            CFRelease(v22);
            v15 += 2;
            if (v15 >= v12)
            {
              v36 = CFArrayGetValueAtIndex(a1, 0);
            }

            else
            {
              v34 = CFArrayGetValueAtIndex(a1, v15);
              if (!v34)
              {
                goto LABEL_74;
              }

              v22 = v34;
              v35 = CFBooleanGetTypeID();
              if (v35 != CFGetTypeID(v22))
              {
                goto LABEL_74;
              }

              v36 = v22;
            }

            if (CFBooleanGetValue(v36) == 1)
            {
              v22 = CFNumberCreate(v13, kCFNumberSInt32Type, &v62);
              CFArrayAppendValue(Mutable, v16);
              CFArrayAppendValue(Mutable, v22);
              if (v22)
              {
                CFRelease(v22);
              }
            }
          }

          else
          {
            OUTLINED_FUNCTION_17_1(Value, v25, v26, v27, v28, v29, v30, v31, v59, cf, valuePtr.value);
            if (SLODWORD(valuePtr.value) < v62)
            {
              LODWORD(valuePtr.value) = v62;
            }

            v32 = CFNumberCreate(v13, kCFNumberSInt32Type, &valuePtr);
            OUTLINED_FUNCTION_14_0(v32);
            CFRelease(v22);
            v15 += 2;
          }
        }

        while (v15 < v12);
        v37 = CFArrayGetCount(Mutable);
        v4 = &qword_1EB75D000;
        if (v37 < 1)
        {
          v39 = 0;
        }

        else
        {
          v22 = v37;
          v38 = 0;
          v39 = 0;
          do
          {
            v40 = CFArrayGetValueAtIndex(Mutable, v38);
            if (v40)
            {
              v41 = v40;
              v42 = CFNumberGetTypeID();
              if (v42 == CFGetTypeID(v41))
              {
                LODWORD(valuePtr.value) = 0;
                CFNumberGetValue(v41, kCFNumberSInt32Type, &valuePtr);
                v39 += LODWORD(valuePtr.value);
              }
            }

            ++v38;
          }

          while (v22 != v38);
        }

        if (*(gFVInfo + 112))
        {
          if (*(gFVInfo + 192))
          {
            v43 = 4294950801;
            goto LABEL_71;
          }

          v47 = CFAbsoluteTimeGetCurrent() + (v39 / 1000.0);
          v48 = gFVInfo;
          if (!*(gFVInfo + 192) || *(gFVInfo + 136) < v47)
          {
            *(gFVInfo + 136) = v47;
            CMTimeMake(&valuePtr, 0, 1);
            v48[7] = valuePtr;
            v49 = gFVInfo;
            CMTimeMake(&valuePtr, 0, 1);
            v49[6] = valuePtr;
            v50 = *(gFVInfo + 128);
            *(gFVInfo + 128) = Mutable;
            CFRetain(Mutable);
            if (v50)
            {
              CFRelease(v50);
            }
          }

          v51 = gFVInfo;
          if (!*(gFVInfo + 192) || *(gFVInfo + 208) < a3)
          {
            *(gFVInfo + 208) = a3;
          }

          *(v51 + 192) = 1;
          v52 = *(v51 + 200);
          *(v51 + 200) = cf;
          if (cf)
          {
            CFRetain(cf);
          }

          if (v52)
          {
            CFRelease(v52);
          }

          goto LABEL_70;
        }

        v44 = IOPMAssertionCreateWithName(@"NoIdleSleepAssertion", 0xFFu, @"coremedia-vibrating", (gFVInfo + 108));
        v45 = gFVInfo;
        if (v44)
        {
          v46 = 0;
        }

        else
        {
          v46 = *(gFVInfo + 108) != 0;
        }

        *(gFVInfo + 104) = v46;
        started = FVIOKit_StartIOServiceVibrationWithPattern(v45, Mutable);
        if (!started)
        {
          OUTLINED_FUNCTION_16_0(gFVInfo);
          *(v55 + 120) = cf;
          if (cf)
          {
            CFRetain(cf);
          }

          if (v22)
          {
            CFRelease(v22);
          }

          v56 = dispatch_time(0, 1000000 * v39);
          dispatch_source_set_timer(*(gFVInfo + 96), v56, 0xFFFFFFFFFFFFFFFFLL, 0);
LABEL_70:
          v43 = 0;
          goto LABEL_71;
        }

        v43 = started;
        if (*(gFVInfo + 104))
        {
          IOPMAssertionRelease(*(gFVInfo + 108));
          v54 = gFVInfo;
          *(gFVInfo + 104) = 0;
          *(v54 + 108) = 0;
        }
      }

      else
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_9();
        v43 = FigSignalErrorAtGM();
      }
    }

LABEL_71:
    v57 = *v4[505];
    FigSimpleMutexUnlock();
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    return v43;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_9();

  return FigSignalErrorAtGM();
}

uint64_t FVIOKit_PlayVibrationEndTimeout()
{
  if (gFVInfo)
  {
    v0 = *gFVInfo;
    result = FigSimpleMutexLock();
    if (result)
    {
      return result;
    }

    v2 = gFVInfo;
    if (*(gFVInfo + 112))
    {
      if (FVIOKit_StopVibrator(gFVInfo))
      {
        goto LABEL_26;
      }

      v2 = gFVInfo;
    }

    if (*(v2 + 192))
    {
      v3 = *(v2 + 136);
      v4 = v3 - CFAbsoluteTimeGetCurrent();
      v5 = *(gFVInfo + 128);
      if (v5)
      {
        started = FVIOKit_StartIOServiceVibrationWithPattern(gFVInfo, v5);
        v7 = *(gFVInfo + 128);
        if (v7)
        {
          CFRelease(v7);
          *(gFVInfo + 128) = 0;
        }
      }

      else
      {
        v34 = *(gFVInfo + 144);
        v10 = *(gFVInfo + 160);
        OUTLINED_FUNCTION_15_0();
        Seconds = CMTimeGetSeconds(v11);
        v13 = gFVInfo;
        v14 = *(gFVInfo + 208);
        if (v4 <= Seconds)
        {
          v37 = *(gFVInfo + 168);
          v25 = *(gFVInfo + 184);
          OUTLINED_FUNCTION_15_0();
          v20 = FVIOKit_ConvertFigTimeToMillisec(v26);
          v22 = v13;
          v23 = v14;
          v21 = 0;
          v24 = 0;
        }

        else
        {
          v35 = *(gFVInfo + 144);
          v15 = *(gFVInfo + 160);
          OUTLINED_FUNCTION_15_0();
          v17 = FVIOKit_ConvertFigTimeToMillisec(v16);
          v36 = *(gFVInfo + 168);
          v18 = *(gFVInfo + 184);
          OUTLINED_FUNCTION_15_0();
          v20 = FVIOKit_ConvertFigTimeToMillisec(v19);
          v21 = v17 - v20;
          v22 = v13;
          v23 = v14;
          v24 = 1;
        }

        started = FVIOKit_StartIOServiceVibration(v22, v20, v21, v24, v23);
      }

      if (started)
      {
        goto LABEL_26;
      }

      v27 = gFVInfo;
      *(gFVInfo + 192) = 0;
      v28 = *(v27 + 120);
      v29 = *(v27 + 200);
      *(v27 + 120) = v29;
      if (v29)
      {
        CFRetain(v29);
      }

      if (v28)
      {
        CFRelease(v28);
      }

      v30 = gFVInfo;
      v31 = *(gFVInfo + 200);
      if (v31)
      {
        CFRelease(v31);
        v30 = gFVInfo;
        *(gFVInfo + 200) = 0;
      }

      v32 = *(v30 + 96);
      v9 = dispatch_time(0, (v4 * 1000000000.0));
      v8 = v32;
    }

    else
    {
      *(v2 + 112) = 0;
      if (*(v2 + 104))
      {
        IOPMAssertionRelease(*(v2 + 108));
        v2 = gFVInfo;
        *(gFVInfo + 104) = 0;
        *(v2 + 108) = 0;
      }

      v8 = *(v2 + 96);
      v9 = -1;
    }

    dispatch_source_set_timer(v8, v9, 0xFFFFFFFFFFFFFFFFLL, 0);
LABEL_26:
    v33 = *gFVInfo;
    return FigSimpleMutexUnlock();
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();

  return FigSignalErrorAtGM();
}

uint64_t FVIOKit_StartIOServiceVibration_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FVIOKit_StartIOServiceVibration_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FVIOKit_StartIOServiceVibration_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FVIOKit_StartIOServiceVibration_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FVIOKit_StartIOServiceVibration_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FVIOKit_StartIOServiceVibrationWithPattern_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FVIOKit_StartIOServiceVibrationWithPattern_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FVIOKit_StartIOServiceVibrationWithPattern_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FVIOKit_StopVibrator_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigStarkModeControllerRemoteCreate(uint64_t a1, uint64_t a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(algn_1ED6D2E74);
  if (_MergedGlobals_0 || !qword_1ED6D2E78)
  {
    v4 = objc_alloc(MEMORY[0x1E695DF20]);
    v5 = [v4 initWithObjectsAndKeys:{@"ServerConnectionDied", *MEMORY[0x1E69633B0], 0}];
    FigNote_AllowInternalDefaultLogs();
    OUTLINED_FUNCTION_5_1();
    fig_note_initialize_category_with_default_work();
    OUTLINED_FUNCTION_5_1();
    fig_note_initialize_category_with_default_work();
    v6 = FigXPCRemoteClientCreate();
    _MergedGlobals_0 = v6;
    if (v6 || !qword_1ED6D2E78)
    {
      MXSimulateCrash([objc_msgSend(MEMORY[0x1E696AEC0] stringWithFormat:@"FigXPCRemoteClientCreate failed with error=%d, gFigStarkModeControllerRemoteClient=%p", v6, qword_1ED6D2E78), "UTF8String"]);
    }
  }

  os_unfair_lock_unlock(algn_1ED6D2E74);
  v7 = _MergedGlobals_0;
  if (!_MergedGlobals_0)
  {
    FigStarkModeControllerGetClassID();
    v8 = CMDerivedObjectCreate();
    if (v8)
    {
      v7 = v8;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    }

    else
    {
      v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
      OUTLINED_FUNCTION_0_2();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v10 = FigXPCCreateBasicMessage();
      if (v10 || (v10 = OUTLINED_FUNCTION_6_1(), v10))
      {
        v7 = v10;
        goto LABEL_18;
      }

      uint64 = xpc_dictionary_get_uint64(0, *MEMORY[0x1E69615A0]);
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      if (*(DerivedStorage + 8))
      {
        v13 = FigSignalErrorAtGM();
      }

      else
      {
        *DerivedStorage = uint64;
        v13 = FigXPCRemoteClientAssociateObject();
      }

      v7 = v13;
      if (!v13)
      {
        *a3 = 0;
        goto LABEL_18;
      }

      v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    }

    OUTLINED_FUNCTION_0_2();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

LABEL_18:
  FigXPCRelease();
  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  v15 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t remoteFigStarkModeController_GetCurrentMode(uint64_t a1, UInt8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = OUTLINED_FUNCTION_4_6(a1, a2, a3, a4, a5, a6, a7, a8, cf, v23, v24, v25);
  if (v9 || (v9 = FigXPCCreateBasicMessage(), v9) || (v9 = OUTLINED_FUNCTION_6_1(), v9))
  {
    v18 = v9;
  }

  else
  {
    v10 = FigXPCMessageCopyCFData();
    v18 = v10;
    if (!v10)
    {
      v19 = OUTLINED_FUNCTION_2_2(v10, v11, v12, v13, v14, v15, v16, v17, cfa);
      CFDataGetBytes(v19, v26, a2);
    }
  }

  FigXPCRelease();
  FigXPCRelease();
  if (cfa)
  {
    CFRelease(cfa);
  }

  FigXPCRemoteClientKillServerOnTimeout();
  return v18;
}

uint64_t remoteFigStarkModeController_RequestModeChange(uint64_t a1, uint64_t a2, uint64_t a3, UInt8 *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a5;
  v10 = a3;
  v12 = OUTLINED_FUNCTION_4_6(a1, a2, a3, a4, a5, a6, a7, a8, cf, v31, v32, v33);
  if (v12 || (v12 = FigXPCCreateBasicMessage(), v12))
  {
    v26 = v12;
    v10 = 0;
    v13 = 0;
    goto LABEL_17;
  }

  if (!a2)
  {
    v13 = 0;
    if (!v10)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v13 = MXCFDataCreate(a2, 72);
  v14 = FigXPCMessageSetCFData();
  if (v14 || *(a2 + 16) && (v14 = FigXPCMessageSetCFString(), v14) || *(a2 + 40) && (v14 = FigXPCMessageSetCFString(), v14))
  {
    v26 = v14;
    v10 = 0;
    goto LABEL_17;
  }

  if (v10)
  {
LABEL_10:
    v10 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v10, 0x8000100u);
    FigXPCMessageSetCFString();
  }

LABEL_11:
  v15 = MEMORY[0x1E695E4C0];
  if (v8)
  {
    v15 = MEMORY[0x1E695E4D0];
  }

  v16 = *v15;
  FigXPCMessageSetCFBoolean();
  v17 = OUTLINED_FUNCTION_6_1();
  if (v17)
  {
    v26 = v17;
  }

  else
  {
    v18 = FigXPCMessageCopyCFData();
    v26 = v18;
    if (a4 && !v18)
    {
      v27 = OUTLINED_FUNCTION_2_2(v18, v19, v20, v21, v22, v23, v24, v25, cfa);
      CFDataGetBytes(v27, v34, a4);
    }
  }

LABEL_17:
  FigXPCRelease();
  FigXPCRelease();
  if (v13)
  {
    CFRelease(v13);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (cfa)
  {
    CFRelease(cfa);
  }

  FigXPCRemoteClientKillServerOnTimeout();
  return v26;
}

uint64_t remoteFigStarkModeController_RequestInitialModeChange(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, UInt8 *a6, uint64_t a7, uint64_t a8)
{
  v9 = a5;
  v11 = a3;
  v12 = a2;
  v13 = OUTLINED_FUNCTION_4_6(a1, a2, a3, a4, a5, a6, a7, a8, cf, v32, v33, v34);
  if (v13 || (v13 = FigXPCCreateBasicMessage(), v13))
  {
    v27 = v13;
    v11 = 0;
    v16 = 0;
    v9 = 0;
    v12 = 0;
    goto LABEL_19;
  }

  if (v12)
  {
    v12 = MXCFDataCreate(v12, 12);
    v14 = FigXPCMessageSetCFData();
    if (v14)
    {
      v27 = v14;
      v11 = 0;
LABEL_37:
      v16 = 0;
      goto LABEL_38;
    }
  }

  if (v11)
  {
    v11 = MXCFDataCreate(v11, 12);
    v15 = FigXPCMessageSetCFData();
    if (v15)
    {
      v27 = v15;
      goto LABEL_37;
    }
  }

  if (a4)
  {
    v16 = MXCFDataCreate(a4, 72);
    v17 = FigXPCMessageSetCFData();
    if (!v17)
    {
      if (!*(a4 + 16) || (v17 = FigXPCMessageSetCFString(), !v17))
      {
        if (!*(a4 + 40) || (v17 = FigXPCMessageSetCFString(), !v17))
        {
          if (!v9)
          {
            goto LABEL_15;
          }

          goto LABEL_14;
        }
      }
    }

    v27 = v17;
LABEL_38:
    v9 = 0;
    goto LABEL_19;
  }

  v16 = 0;
  if (v9)
  {
LABEL_14:
    v9 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v9, 0x8000100u);
    FigXPCMessageSetCFString();
  }

LABEL_15:
  v18 = OUTLINED_FUNCTION_6_1();
  if (v18)
  {
    v27 = v18;
  }

  else
  {
    v19 = FigXPCMessageCopyCFData();
    v27 = v19;
    if (a6 && !v19)
    {
      v28 = OUTLINED_FUNCTION_2_2(v19, v20, v21, v22, v23, v24, v25, v26, cfa);
      CFDataGetBytes(v28, v35, a6);
    }
  }

LABEL_19:
  FigXPCRelease();
  FigXPCRelease();
  if (v12)
  {
    CFRelease(v12);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (cfa)
  {
    CFRelease(cfa);
  }

  FigXPCRemoteClientKillServerOnTimeout();
  return v27;
}

uint64_t remoteXPCStarkModeController_GetObjectID(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 4294954315;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 8))
  {

    return FigSignalErrorAtGM();
  }

  else
  {
    v4 = DerivedStorage;
    result = 0;
    *a2 = *v4;
  }

  return result;
}

uint64_t _central_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {

    return FigSignalErrorAtGM();
  }

  v9 = DerivedStorage;
  v10 = *MEMORY[0x1E6962358];
  v11 = CFEqual(a2, *MEMORY[0x1E6962358]);
  v12 = MEMORY[0x1E6961FF8];
  if (v11 || CFEqual(a2, *MEMORY[0x1E6961FF8]))
  {
    EntityDoingActivity = _FigEndpointCentralGetEntityDoingActivity(a1, @"TurnByTurnNavigation");
    v18 = CFEqual(a2, v10);
    v19 = MEMORY[0x1E695E4D0];
    if (v18)
    {
      v20 = EntityDoingActivity == 2;
    }

    else
    {
      v20 = 0;
    }

    if (!v20)
    {
      v21 = CFEqual(a2, *v12);
      if (EntityDoingActivity != 1 || v21 == 0)
      {
        v19 = MEMORY[0x1E695E4C0];
      }
    }

    v13 = *v19;
    goto LABEL_36;
  }

  if (CFEqual(a2, *MEMORY[0x1E6962000]))
  {
    v26 = _FigEndpointCentralGetEntityDoingActivity(a1, @"Speech");
    v16 = MEMORY[0x1E695E4D0];
    v27 = MEMORY[0x1E695E4C0];
    v28 = v26 == 1;
    goto LABEL_33;
  }

  if (CFEqual(a2, *MEMORY[0x1E6962010]))
  {
    v29 = @"Screen";
LABEL_32:
    v30 = _FigEndpointCentralEntityHoldsResource(a1, @"Car", v29);
    v16 = MEMORY[0x1E695E4C0];
    v27 = MEMORY[0x1E695E4D0];
    v28 = v30 == 0;
LABEL_33:
    if (!v28)
    {
      v16 = v27;
    }

    goto LABEL_35;
  }

  if (CFEqual(a2, *MEMORY[0x1E6962008]))
  {
    v29 = @"MainAudio";
    goto LABEL_32;
  }

  if (!CFEqual(a2, *MEMORY[0x1E6962018]))
  {
    if (!CFEqual(a2, @"IsAnyAirPlayCapableVideoSessionActive"))
    {
      v23 = *(v9 + 1);
      CMBaseObject = FigEndpointGetCMBaseObject();

      return CMBaseObjectCopyProperty_0(CMBaseObject, a2, a3, a4);
    }

    v15 = [+[MXSessionManager sharedInstance](MXSessionManager someAirPlayCapableVideoClientIsActive];
    v16 = MEMORY[0x1E695E4D0];
    if (!v15)
    {
      v16 = MEMORY[0x1E695E4C0];
    }

LABEL_35:
    v13 = *v16;
    goto LABEL_36;
  }

  if (MX_FeatureFlags_IsAirPlayDaemonEnabled())
  {
    v13 = *(v9 + 1);
    if (!v13)
    {
      v14 = 0;
LABEL_37:
      result = 0;
      *a4 = v14;
      return result;
    }

LABEL_36:
    v14 = CFRetain(v13);
    goto LABEL_37;
  }

  return 4294954509;
}

BOOL FigEndpointCreateCentral_cold_1(_DWORD *a1)
{
  v2 = FigSignalErrorAtGM();
  *a1 = v2;
  return v2 == 0;
}

uint64_t _VAEndpointManager_SetProperty(uint64_t a1, const void *a2, const __CFNumber *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2 || *(DerivedStorage + 8))
  {
    return 4294950584;
  }

  if (CFEqual(a2, @"VAEM_DeviceQuietBufferSize"))
  {
    [+[MXSessionManager sharedInstance](MXSessionManager defaultVADID];
    MXCFNumberGetValueUInt32(a3);
    v6 = OUTLINED_FUNCTION_14_1();
    vaemSetDeviceBufferNumPCMFramesQuiet(v6, v7, v8);
    return 0;
  }

  if (CFEqual(a2, @"VAEM_UplinkMute"))
  {
    vaemSetUplinkMuteOnDevice(*MEMORY[0x1E695E4D0] == a3);
    return 0;
  }

  if (CFEqual(a2, @"VAEM_DownlinkMute"))
  {
    if (*MEMORY[0x1E695E4D0] == a3)
    {
      v19 = vaemGetUplinkMute() | 2;
      v9 = qword_1EB75E070;
      if (!qword_1EB75E070)
      {
        return 0;
      }

      p_UplinkMute = &v19;
    }

    else
    {
      UplinkMute = vaemGetUplinkMute();
      v9 = qword_1EB75E070;
      if (!qword_1EB75E070)
      {
        return 0;
      }

      p_UplinkMute = &UplinkMute;
    }

    v9(1, p_UplinkMute);
    return 0;
  }

  if (CFEqual(a2, @"VAEM_BTLowLatencyMode"))
  {
    CurrentOutputPortAtIndex = CMSMUtility_GetCurrentOutputPortAtIndex(0);
    ValueSInt32 = MXCFNumberGetValueSInt32(a3);
    vaeSetBTLowLatencyMode(CurrentOutputPortAtIndex, ValueSInt32);
    return 0;
  }

  if (CFEqual(a2, @"VAEM_CurrentInputDataSource"))
  {
    vaemSetInputDataSource(a3);
    return 0;
  }

  if (CFEqual(a2, @"VAEM_CurrentOutputDataDestination"))
  {
    vaemSetOutputDataDestination(a3);
    return 0;
  }

  if (CFEqual(a2, @"VAEM_DefaultInputGain"))
  {
    vaemSetDefaultInputGain();
    return 0;
  }

  if (CFEqual(a2, @"VAEM_DeviceInputGainScalar"))
  {
    ValueFloat32 = MXCFNumberGetValueFloat32(a3);
    vaemSetDeviceInputGainScalar(*&ValueFloat32);
    return 0;
  }

  if (CFEqual(a2, @"VAEM_ThermalGainAdjustment_Speaker"))
  {
    v15 = MXCFNumberGetValueFloat32(a3);
    if (*&v15 > 1.0)
    {
      *&v15 = 1.0;
    }

    LODWORD(qword_1EB75D188) = LODWORD(v15);
LABEL_35:
    vaemUpdateThermalGainAdjustment();
    return 0;
  }

  if (CFEqual(a2, @"VAEM_ThermalGainAdjustment_Haptics"))
  {
    v16 = MXCFNumberGetValueFloat32(a3);
    if (*&v16 > 1.0)
    {
      *&v16 = 1.0;
    }

    HIDWORD(qword_1EB75D188) = LODWORD(v16);
    goto LABEL_35;
  }

  result = CFEqual(a2, @"VAEM_DisallowAudioFormatChanges");
  if (result)
  {
    v17 = *MEMORY[0x1E695E4D0];
    v18 = FigCFEqual();
    result = 0;
    byte_1EB75D184 = v18;
  }

  return result;
}

uint64_t _VAEndpointManager_SetPropertyForAudioDevice(uint64_t a1, const void *a2, uint64_t a3, unsigned __int8 *a4, const __CFNumber *a5)
{
  CMBaseObjectGetDerivedStorage();
  result = 4294950586;
  if (a2 && a3)
  {
    if (CFEqual(a2, @"VAEM_DeviceVolume"))
    {
      ValueFloat32 = MXCFNumberGetValueFloat32(a5);
      vaemSetDeviceVolume(a3, 0, *&ValueFloat32);
      return 0;
    }

    result = CFEqual(a2, @"VAEM_DeviceFormat");
    if (result)
    {
      if (a4)
      {
        v11 = *a4;
      }

      else
      {
        v11 = 0;
      }

      vaemSetDeviceFormat(a3, a5, v11);
      return 0;
    }
  }

  return result;
}

uint64_t FigVAEndpointManagerCreate_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void endpointUIAgentHelper_UIAgentCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (_MergedGlobals_1 != -1)
  {
    dispatch_once(&_MergedGlobals_1, &__block_literal_global_16);
  }

  if (qword_1ED6D2E88)
  {
    v6 = &unk_1ED6D2EA0;
  }

  else
  {
    v6 = 24;
  }

  if (*v6)
  {
    if (a2)
    {
      v7 = 40;
      if (qword_1ED6D2E88)
      {
        v7 = &unk_1ED6D2EB0;
      }

      v8 = *v7;
      v9 = &unk_1ED6D2EB8;
      if (!qword_1ED6D2E88)
      {
        v9 = 48;
      }

      v10 = *v9;
      v11 = 0;
      v12 = a2;
    }

    else
    {
      if (!a1)
      {
        return;
      }

      v13 = 40;
      if (qword_1ED6D2E88)
      {
        v13 = &unk_1ED6D2EB0;
      }

      v8 = *v13;
      v14 = &unk_1ED6D2EB8;
      if (!qword_1ED6D2E88)
      {
        v14 = 48;
      }

      v10 = *v14;
      v11 = a1;
      v12 = 0;
    }

    (*v6)(v11, v12, a3, v8, v10);
    *v6 = 0;
  }
}

uint64_t FigEndpointUIAgentHelper_CleanupPrompt(const void *a1, uint64_t a2, uint64_t a3, int a4)
{
  if (_MergedGlobals_1 != -1)
  {
    dispatch_once(&_MergedGlobals_1, &__block_literal_global_16);
  }

  v7 = qword_1ED6D2E88;
  if (qword_1ED6D2E88)
  {
    v8 = &qword_1ED6D2E88;
  }

  else
  {
    v8 = 0;
  }

  if (a1 && (a2 || !a4))
  {
    v9 = *v8;
    FigSimpleMutexLock();
    if (v7)
    {
      v10 = &qword_1ED6D2E90;
    }

    else
    {
      v10 = 8;
    }

    v11 = *v10;
    if (*v10 || (endpointUIAgentHelper_updateCurrentUIAgent(v8), (v11 = *v10) != 0))
    {
      v12 = CFRetain(v11);
      v13 = *v8;
      FigSimpleMutexUnlock();
      if (v12)
      {
        Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        if (Mutable)
        {
          v15 = Mutable;
          CFDictionarySetValue(Mutable, @"ATVName", a1);
          v16 = MEMORY[0x1E695E4C0];
          if (a4)
          {
            v16 = MEMORY[0x1E695E4D0];
            v17 = MEMORY[0x1E69621B0];
          }

          else
          {
            v17 = kFigEndpointUIAgentPromptInfo_MACAddress;
          }

          CFDictionarySetValue(v15, @"savePassword", *v16);
          FigCFDictionarySetValue();
          v18 = *v17;
          FigCFDictionarySetValue();
          v19 = *(*(CMBaseObjectGetVTable() + 16) + 32);
          if (v19)
          {
            v19(v12, v15);
          }

          v24 = 0uLL;
          v27 = 0;
          v28 = 0;
          v25 = a2;
          v26 = 0;
          FigEndpointAuthRequestHandler_SetProcessNextRequest(1);
          FigEndpointAuthRequestHandler_ProcessRequest(&v24);
          FigEndpointAuthRequestHandler_SetProcessNextRequest(0);
          if (FigEndpointAuthRequestHandler_IsAuthListEmpty())
          {
            v20 = &unk_1ED6D2EA0;
            if (!v7)
            {
              v20 = 24;
            }

            *v20 = 0;
          }

          CFRelease(v12);
          v21 = v15;
        }

        else
        {
          v21 = v12;
        }

        CFRelease(v21);
      }
    }

    else
    {
      v23 = *v8;
      FigSimpleMutexUnlock();
    }
  }

  return 0;
}

void FigVolumeControllerAddVirtualAudioVolumeNotificationListeners()
{
  cf[20] = *MEMORY[0x1E69E9840];
  cf[0] = 0;
  if (MX_FeatureFlags_IsSystemInputPickerEnabled())
  {
    if (!FigRoutingManagerGetEndpointManager(*MEMORY[0x1E69618F8]) || FigVolumeControllerCopySharedController(cf))
    {
      FigSignalErrorAtGM();
    }

    else
    {
      if (dword_1EB75DEA0)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterAddListener();
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterAddListener();
    }

    if (cf[0])
    {
      CFRelease(cf[0]);
    }
  }

  v1 = *MEMORY[0x1E69E9840];
}

uint64_t volumeController_SetMainVolumeForRoutingContext_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t volumeController_GetMainVolumeForRoutingContext_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t volumeController_IsMainVolumeControlSupportedForRoutingContext_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t __FigRoutingManagerAggregateAddEndpointCompletionCallback_block_invoke_cold_1(uint64_t *a1, uint64_t a2, _DWORD *a3, _DWORD *a4)
{
  if (FigRoutingManagerIsEndpointDissociated(*a1))
  {
    result = 0;
    *a4 = *a3;
  }

  else
  {
    if (*(a2 + 80))
    {
      FigEndpointAggregateGetClassID();
      CMBaseObjectIsMemberOfClass();
    }

    OUTLINED_FUNCTION_0_4();
    return 1;
  }

  return result;
}

uint64_t __FigRoutingManagerAggregateAddEndpointCompletionCallback_block_invoke_cold_2(uint64_t *a1, uint64_t a2)
{
  if (FigRoutingManagerIsEndpointDissociated(*a1))
  {
    return 1;
  }

  if (*(a2 + 80))
  {
    FigEndpointAggregateGetClassID();
    CMBaseObjectIsMemberOfClass();
  }

  OUTLINED_FUNCTION_0_4();
  return 0;
}

uint64_t FigVAEndpointManagerGetPropertyUInt32()
{
  FigEndpointManagerGetCMBaseObject();
  if (*(*(CMBaseObjectGetVTable() + 8) + 48))
  {
    v0 = *MEMORY[0x1E695E480];
    v1 = OUTLINED_FUNCTION_0_5();
    v2(v1);
  }

  return 0;
}

uint64_t FigSTSCreate_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigSTSCreate_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigSTSCreate_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigEndpointUIAgentCreate(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  FigNote_AllowInternalDefaultLogs();
  OUTLINED_FUNCTION_1_7();
  fig_note_initialize_category_with_default_work();
  OUTLINED_FUNCTION_1_7();
  fig_note_initialize_category_with_default_work();
  if (dword_1EB75DFA0 >= 0x100)
  {
    dword_1EB75DFA0 = 0;
  }

  if (a2)
  {
    FigEndpointUIAgentGetClassID();
    if (!CMDerivedObjectCreate())
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v4 = FigReentrantMutexCreate();
      *(DerivedStorage + 8) = v4;
      if (v4)
      {
        if (dword_1EB75DFA0)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          OUTLINED_FUNCTION_0_8();
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        *a2 = 0;
      }
    }
  }

  v6 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t figEndpointUIAgent_setAuthValue(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = *(DerivedStorage + 8);
  FigSimpleMutexLock();
  if (a2 || a3)
  {
    if (*DerivedStorage)
    {
      v9 = 4294950514;
    }

    else
    {
      v7 = *(DerivedStorage + 24);
      if (v7)
      {
        v7(a2, a3, *(DerivedStorage + 16));
      }

      *(DerivedStorage + 24) = 0;
      v8 = *(DerivedStorage + 16);
      if (v8)
      {
        CFRelease(v8);
        v9 = 0;
        *(DerivedStorage + 16) = 0;
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = FigSignalErrorAtGM();
  }

  v10 = *(DerivedStorage + 8);
  FigSimpleMutexUnlock();
  return v9;
}

uint64_t figEndpointUIAgent_finishedWithPrompt(uint64_t a1, const void *a2)
{
  if (!a2)
  {
    return 4294950516;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 4294950513;
  }

  v4 = Mutable;
  CFDictionarySetValue(Mutable, @"finishedWithPromptInfo", a2);
  CMNotificationCenterGetDefaultLocalCenter();
  v5 = CMNotificationCenterPostNotification();
  CFRelease(v4);
  return v5;
}

uint64_t figEndpointUIAgent_showError(uint64_t a1, const void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (dword_1EB75DFA0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_0_8();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (a2)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      v5 = Mutable;
      CFDictionarySetValue(Mutable, @"showErrorPromptInfo", a2);
      FigCFDictionaryGetValue();
      FigCFDictionarySetValue();
      CMNotificationCenterGetDefaultLocalCenter();
      v6 = CMNotificationCenterPostNotification();
      CFRelease(v5);
    }

    else
    {
      v6 = 4294950513;
    }
  }

  else
  {
    v6 = 4294950516;
  }

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t figEndpointUIAgent_copyPasswordFromKeychain(uint64_t a1, const __CFDictionary *a2, const void *a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    return 4294950516;
  }

  v8 = DerivedStorage;
  CFDictionaryGetValue(a2, @"ATVName");
  v9 = *(v8 + 8);
  FigSimpleMutexLock();
  if (*v8)
  {
    v13 = 4294950514;
LABEL_9:
    v15 = *(v8 + 8);
    FigSimpleMutexUnlock();
    return v13;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    v13 = 0;
    goto LABEL_9;
  }

  v11 = Mutable;
  CFDictionarySetValue(Mutable, @"copyPasswordInfo", a2);
  CFDictionarySetValue(v11, @"copyPasswordFromKeychainContext", a3);
  *(v8 + 32) = a4;
  v12 = *(v8 + 8);
  FigSimpleMutexUnlock();
  CMNotificationCenterGetDefaultLocalCenter();
  v13 = CMNotificationCenterPostNotification();
  CFRelease(v11);
  return v13;
}

uint64_t figEndpointUIAgent_setPasswordFromKeychain(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = *(DerivedStorage + 8);
  FigSimpleMutexLock();
  if (*DerivedStorage)
  {
    v9 = 4294950514;
  }

  else
  {
    v7 = *(DerivedStorage + 32);
    if (v7)
    {
      v7(a2, a3);
    }

    *(DerivedStorage + 32) = 0;
    v8 = *(DerivedStorage + 16);
    if (v8)
    {
      CFRelease(v8);
      v9 = 0;
      *(DerivedStorage + 16) = 0;
    }

    else
    {
      v9 = 0;
    }
  }

  v10 = *(DerivedStorage + 8);
  FigSimpleMutexUnlock();
  return v9;
}

__CFArray *MXCFArrayCreateFromCArrayOfSInt32(int *a1, unsigned int a2)
{
  v4 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (a1 && a2)
  {
    v6 = a2;
    do
    {
      v7 = *a1++;
      valuePtr = v7;
      v8 = CFNumberCreate(v4, kCFNumberSInt32Type, &valuePtr);
      if (v8)
      {
        v9 = v8;
        CFArrayAppendValue(Mutable, v8);
        CFRelease(v9);
      }

      --v6;
    }

    while (v6);
  }

  return Mutable;
}

uint64_t CMSMUtility_CopyCurrentPlayingSessionIsRoutedViaCarBT()
{
  v11 = *MEMORY[0x1E69E9840];
  v0 = CMSMUtility_CopyCurrentRouteTypes();
  if (FigCFArrayContainsValue())
  {
    v1 = 1;
  }

  else
  {
    v1 = FigCFArrayContainsValue() != 0;
  }

  v2 = FigRoutingManagerCopyCarBluetoothIDs(qword_1EB75E190);
  v3 = OUTLINED_FUNCTION_0_9();
  v5 = 0;
  if (v3)
  {
    if (v1)
    {
      CurrentDeviceIdentifierAtIndex = CMSMUtility_GetCurrentDeviceIdentifierAtIndex(0);
      if (cmsmIsDeviceIDIncludedInCarBluetoothIDs(CurrentDeviceIdentifierAtIndex, v2))
      {
        v5 = 1;
      }
    }
  }

  v6 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:v5];
  v7 = CMSMUtility_CopyCurrentRouteIdentifiers();
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (v0)
  {
    CFRelease(v0);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  v9 = *MEMORY[0x1E69E9840];
  return v6;
}

__CFArray *CMSMUtility_CopyMostImportantPlayingSession()
{
  v0 = OUTLINED_FUNCTION_0_9();
  if (v0)
  {
    v1 = v0;
    if (CFArrayGetCount(v0) < 1)
    {
      v5 = 0;
      v4 = 0;
      v3 = 0;
    }

    else
    {
      v2 = 0;
      v3 = 0;
      v4 = 0;
      v5 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v1, v2);
        if (([(__CFArray *)ValueAtIndex hasPhoneCallBehavior]& 1) != 0 || CMSUtility_IsAudioCategoryRingtone(ValueAtIndex))
        {
          v5 = ValueAtIndex;
        }

        else if ([(__CFArray *)ValueAtIndex isTheAssistant])
        {
          v4 = ValueAtIndex;
        }

        else
        {
          v3 = ValueAtIndex;
        }

        ++v2;
      }

      while (v2 < CFArrayGetCount(v1));
    }

    if (v4)
    {
      v7 = v4;
    }

    else
    {
      v7 = v3;
    }

    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = v7;
    }

    v10 = v8;
    CFRelease(v1);
    v0 = v10;
  }

  return v0;
}

BOOL CMSMUtility_iOSWillRequestCarMainAudio(int a1)
{
  v2 = OUTLINED_FUNCTION_0_9();
  if (v2)
  {
    v3 = v2;
    if (CFArrayGetCount(v2) < 1)
    {
      v4 = 0;
    }

    else
    {
      v4 = 0;
      v5 = 0;
      v6 = 0;
      v7 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v3, v7);
        if (([ValueAtIndex hasPhoneCallBehavior] & 1) != 0 || CMSUtility_IsAudioCategoryRingtone(ValueAtIndex))
        {
          v6 = ValueAtIndex;
        }

        else if ([ValueAtIndex isTheAssistant])
        {
          v5 = ValueAtIndex;
        }

        else
        {
          v4 = ValueAtIndex;
        }

        ++v7;
      }

      while (v7 < CFArrayGetCount(v3));
      if (v6 | v5)
      {
        v9 = kFigEndpointCentralTransferType_Borrow;
        goto LABEL_19;
      }
    }

    ShouldBorrowCarMainAudio = CMSUtility_ShouldBorrowCarMainAudio(v4);
    v9 = kFigEndpointCentralTransferType_Borrow;
    if (!ShouldBorrowCarMainAudio)
    {
      v9 = &kFigEndpointCentralTransferType_Take;
    }

LABEL_19:
    v10 = *v9;
    CFRelease(v3);
    if (a1)
    {
      goto LABEL_20;
    }

    goto LABEL_15;
  }

  v10 = 0;
  if (a1)
  {
LABEL_20:
    v11 = @"Borrow";
    return v10 == v11;
  }

LABEL_15:
  v11 = @"Take";
  return v10 == v11;
}

void CMSMUtility_CopyFigStarkModeController_cold_1(uint64_t a1, CFTypeRef *a2)
{
  FigSignalErrorAtGM();
  if (*a2)
  {
    CFRelease(*a2);
  }
}

uint64_t HandleStarkModeControllerMessage(uint64_t a1, void *a2)
{
  v3 = objc_autoreleasePoolPush();
  OpCode = FigXPCMessageGetOpCode();
  if (OpCode)
  {
    v7 = OpCode;
  }

  else
  {
    xpc_dictionary_get_uint64(a2, *MEMORY[0x1E69615A0]);
    cf[0] = 0;
    v5 = FigXPCServerLookupAndRetainAssociatedObject();
    if (!v5)
    {
      v5 = FigSignalErrorAtGM();
    }

    v7 = v5;
    if (!v5)
    {
      v7 = 4294951138;
    }
  }

  objc_autoreleasePoolPop(v3);
  return v7;
}

uint64_t stsServer_HandleMessage(uint64_t a1, void *a2)
{
  OpCode = FigXPCMessageGetOpCode();
  if (OpCode)
  {
    return OpCode;
  }

  xpc_dictionary_get_uint64(a2, *MEMORY[0x1E69615A0]);
  OpCode = FigXPCServerLookupAndRetainAssociatedObject();
  if (OpCode)
  {
    return OpCode;
  }

  else
  {
    return 4294951138;
  }
}

uint64_t FigSTSCreateRemote(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  if (a2 && a4)
  {
    if (qword_1ED6D2EE0 != -1)
    {
      dispatch_once(&qword_1ED6D2EE0, &__block_literal_global_31);
    }

    v6 = _MergedGlobals_3;
    if (!_MergedGlobals_3)
    {
      FigSTSGetClassID();
      v7 = CMDerivedObjectCreate();
      if (v7 || (DerivedStorage = CMBaseObjectGetDerivedStorage(), *(DerivedStorage + 8) = CFRetain(a2), v7 = FigXPCCreateBasicMessage(), v7) || (v7 = FigXPCMessageSetCFObject(), v7) || (v7 = FigXPCMessageSetCFDictionary(), v7) || (v7 = OUTLINED_FUNCTION_4_0(), v7))
      {
        v6 = v7;
      }

      else
      {
        uint64 = xpc_dictionary_get_uint64(0, *MEMORY[0x1E69615A0]);
        *CMBaseObjectGetDerivedStorage() = uint64;
        v6 = FigXPCRemoteClientAssociateObject();
        if (!v6)
        {
          *a4 = 0;
        }
      }
    }
  }

  else
  {
    fig_log_get_emitter();
    v6 = FigSignalErrorAtGM();
  }

  FigXPCRelease();
  FigXPCRelease();
  if (qword_1ED6D2ED8)
  {
    FigXPCRemoteClientKillServerOnTimeout();
  }

  return v6;
}

uint64_t remoteSTS_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    FigXPCRemoteClientDisassociateObject();
    if (!*(DerivedStorage + 16) && *DerivedStorage && !FigXPCCreateBasicMessage())
    {
      FigXPCRemoteClientSendSyncMessage();
    }
  }

  v1 = *(DerivedStorage + 8);
  if (v1)
  {
    CFRelease(v1);
    *(DerivedStorage + 8) = 0;
  }

  return FigXPCRelease();
}

uint64_t remoteSTS_CopyProperty(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  if (a2)
  {
    ObjectID = remoteSTS_GetObjectID(a1, &v5);
    if (!ObjectID)
    {
      OUTLINED_FUNCTION_2_6();
      ObjectID = FigXPCSendStdCopyPropertyMessage();
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_12();
    ObjectID = FigSignalErrorAtGM();
  }

  v3 = ObjectID;
  OUTLINED_FUNCTION_3_4();
  return v3;
}

uint64_t remoteSTS_SetProperty(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  if (a2)
  {
    ObjectID = remoteSTS_GetObjectID(a1, &v5);
    if (!ObjectID)
    {
      OUTLINED_FUNCTION_2_6();
      ObjectID = FigXPCSendStdSetPropertyMessage();
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_12();
    ObjectID = FigSignalErrorAtGM();
  }

  v3 = ObjectID;
  OUTLINED_FUNCTION_3_4();
  return v3;
}

uint64_t remoteSTS_SetActive(uint64_t a1, uint64_t a2, int a3)
{
  v7 = 0;
  if (!a2)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_9();
    ObjectID = FigSignalErrorAtGM();
    goto LABEL_8;
  }

  ObjectID = remoteSTS_GetObjectID(a1, &v7);
  if (ObjectID)
  {
LABEL_8:
    v5 = ObjectID;
    goto LABEL_6;
  }

  v5 = FigXPCCreateBasicMessage();
  if (!v5)
  {
    v5 = FigXPCMessageSetCFString();
    if (!v5)
    {
      xpc_dictionary_set_BOOL(0, kFigSTSXPCMsgParam_ActiveState[0], a3 != 0);
      v5 = FigXPCRemoteClientSendSyncMessage();
    }
  }

LABEL_6:
  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v5;
}

uint64_t remoteSTS_GetActive(uint64_t a1, uint64_t a2, BOOL *a3)
{
  v7 = 0;
  if (!a2 || !a3)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_12();
    ObjectID = FigSignalErrorAtGM();
LABEL_10:
    v5 = ObjectID;
    goto LABEL_8;
  }

  ObjectID = remoteSTS_GetObjectID(a1, &v7);
  if (ObjectID)
  {
    goto LABEL_10;
  }

  ObjectID = FigXPCCreateBasicMessage();
  if (ObjectID)
  {
    goto LABEL_10;
  }

  ObjectID = FigXPCMessageSetCFString();
  if (ObjectID)
  {
    goto LABEL_10;
  }

  v5 = OUTLINED_FUNCTION_4_0();
  if (!v5)
  {
    *a3 = xpc_dictionary_get_BOOL(0, kFigSTSXPCMsgParam_ActiveState[0]);
  }

LABEL_8:
  FigXPCRelease();
  FigXPCRelease();
  OUTLINED_FUNCTION_3_4();
  return v5;
}

uint64_t remoteSTS_SetPropertyByLabel(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  if (!a2 || !a3)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_9();
    ObjectID = FigSignalErrorAtGM();
    goto LABEL_12;
  }

  ObjectID = remoteSTS_GetObjectID(a1, &v7);
  if (ObjectID)
  {
LABEL_12:
    v5 = ObjectID;
    goto LABEL_9;
  }

  v4 = FigXPCCreateBasicMessage();
  if (v4 || (v4 = FigXPCMessageSetCFString(), v4) || (v4 = FigXPCMessageSetCFString(), v4) || (v4 = FigXPCMessageSetCFObject(), v4))
  {
    v5 = v4;
  }

  else
  {
    v5 = FigXPCRemoteClientSendSyncMessage();
  }

LABEL_9:
  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v5;
}

uint64_t remoteSTS_CopyPropertyByLabel(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = 0;
  if (!a2 || !a3 || !a4)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_12();
    ObjectID = FigSignalErrorAtGM();
LABEL_13:
    v6 = ObjectID;
    goto LABEL_11;
  }

  ObjectID = remoteSTS_GetObjectID(a1, &v8);
  if (ObjectID)
  {
    goto LABEL_13;
  }

  ObjectID = FigXPCCreateBasicMessage();
  if (ObjectID)
  {
    goto LABEL_13;
  }

  ObjectID = FigXPCMessageSetCFString();
  if (ObjectID)
  {
    goto LABEL_13;
  }

  ObjectID = FigXPCMessageSetCFString();
  if (ObjectID)
  {
    goto LABEL_13;
  }

  ObjectID = OUTLINED_FUNCTION_4_0();
  if (ObjectID)
  {
    goto LABEL_13;
  }

  v6 = FigXPCMessageCopyCFObject();
  if (!v6)
  {
    *a4 = 0;
  }

LABEL_11:
  FigXPCRelease();
  FigXPCRelease();
  OUTLINED_FUNCTION_3_4();
  return v6;
}

uint64_t remoteSTS_CopyShmem(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v7 = 0;
  if (!a2 || !a3)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_9();
LABEL_13:
    ObjectID = FigSignalErrorAtGM();
LABEL_14:
    v5 = ObjectID;
    goto LABEL_9;
  }

  ObjectID = remoteSTS_GetObjectID(a1, &v7);
  if (ObjectID)
  {
    goto LABEL_14;
  }

  ObjectID = FigXPCCreateBasicMessage();
  if (ObjectID)
  {
    goto LABEL_14;
  }

  ObjectID = FigXPCMessageSetCFString();
  if (ObjectID)
  {
    goto LABEL_14;
  }

  ObjectID = OUTLINED_FUNCTION_4_0();
  if (ObjectID)
  {
    goto LABEL_14;
  }

  if (!xpc_dictionary_get_value(0, kFigSTSXPCMsgParam_ShmemObject[0]))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_9();
    goto LABEL_13;
  }

  v5 = 0;
  *a3 = FigXPCRetain();
LABEL_9:
  FigXPCRelease();
  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v5;
}

uint64_t remoteSTS_GetObjectID_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remoteXPCRouteDiscoverer_GetObjectID_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t singletonVolumeController_ChangeMasterVolumeOfRoutingContext(uint64_t a1, const void *a2, float a3)
{
  OUTLINED_FUNCTION_14_2(a1, a2);
  OUTLINED_FUNCTION_13_2();
  v7 = singletonVolumeController_copyRemoteVolumeController(v4, v6);
  if (!v7)
  {
    if (!*(*(CMBaseObjectGetVTable() + 16) + 16))
    {
      v10 = 4294954514;
      if (!v3)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    v8 = OUTLINED_FUNCTION_20();
    v7 = v9(v8, a3);
  }

  v10 = v7;
  if (v3)
  {
LABEL_7:
    CFRelease(v3);
  }

LABEL_8:
  if (cf)
  {
    CFRelease(cf);
  }

  return v10;
}

uint64_t singletonVolumeController_SetMasterVolumeOfRoutingContext(uint64_t a1, const void *a2, float a3)
{
  OUTLINED_FUNCTION_14_2(a1, a2);
  OUTLINED_FUNCTION_13_2();
  v7 = singletonVolumeController_copyRemoteVolumeController(v4, v6);
  if (!v7)
  {
    if (!*(*(CMBaseObjectGetVTable() + 16) + 24))
    {
      v10 = 4294954514;
      if (!v3)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    v8 = OUTLINED_FUNCTION_20();
    v7 = v9(v8, a3);
  }

  v10 = v7;
  if (v3)
  {
LABEL_7:
    CFRelease(v3);
  }

LABEL_8:
  if (cf)
  {
    CFRelease(cf);
  }

  return v10;
}

uint64_t singletonVolumeController_GetMasterVolumeOfRoutingContext(uint64_t a1, const void *a2)
{
  OUTLINED_FUNCTION_15_2(a1, a2);
  OUTLINED_FUNCTION_13_2();
  v5 = singletonVolumeController_copyRemoteVolumeController(v3, v4);
  if (!v5)
  {
    if (!*(*(OUTLINED_FUNCTION_38() + 16) + 32))
    {
      v8 = 4294954514;
      if (!v2)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    v6 = OUTLINED_FUNCTION_17_0();
    v5 = v7(v6);
  }

  v8 = v5;
  if (v2)
  {
LABEL_7:
    CFRelease(v2);
  }

LABEL_8:
  if (cf)
  {
    CFRelease(cf);
  }

  return v8;
}

uint64_t singletonVolumeController_GetVolumeOfEndpointWithID(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_6_4(a1, a2, a3, a4, a5, a6, a7, a8, v13, cf);
  if (v8)
  {
LABEL_4:
    v11 = v8;
    if (!cfa)
    {
      return v11;
    }

    goto LABEL_7;
  }

  if (*(*(CMBaseObjectGetVTable() + 16) + 72))
  {
    v9 = OUTLINED_FUNCTION_4();
    v8 = v10(v9);
    goto LABEL_4;
  }

  v11 = 4294954514;
  if (cfa)
  {
LABEL_7:
    CFRelease(cfa);
  }

  return v11;
}

uint64_t singletonVolumeController_CanSetVolumeOfEndpointWithID(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_6_4(a1, a2, a3, a4, a5, a6, a7, a8, v13, cf);
  if (v8)
  {
LABEL_4:
    v11 = v8;
    if (!cfa)
    {
      return v11;
    }

    goto LABEL_7;
  }

  if (*(*(CMBaseObjectGetVTable() + 16) + 80))
  {
    v9 = OUTLINED_FUNCTION_4();
    v8 = v10(v9);
    goto LABEL_4;
  }

  v11 = 4294954514;
  if (cfa)
  {
LABEL_7:
    CFRelease(cfa);
  }

  return v11;
}

void singletonVolumeController_SetVolumeOfRoomID(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CFTypeRef cf, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_34();
  v21 = v20;
  OUTLINED_FUNCTION_14_2(v22, v23);
  OUTLINED_FUNCTION_13_2();
  if (!singletonVolumeController_copyRemoteVolumeController(v19, v24))
  {
    if (!*(*(CMBaseObjectGetVTable() + 16) + 120))
    {
      if (!cf)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    v25 = OUTLINED_FUNCTION_20();
    v26(v25, v21);
  }

  if (cf)
  {
LABEL_7:
    CFRelease(cf);
  }

LABEL_8:
  if (v18)
  {
    CFRelease(v18);
  }

  OUTLINED_FUNCTION_33();
}

void singletonVolumeController_GetVolumeOfRoomID(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CFTypeRef cf, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_14_2(v20, v21);
  OUTLINED_FUNCTION_13_2();
  if (!singletonVolumeController_copyRemoteVolumeController(v19, v22))
  {
    if (!*(*(CMBaseObjectGetVTable() + 16) + 128))
    {
      if (!cf)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    v23 = OUTLINED_FUNCTION_20();
    v24(v23);
  }

  if (cf)
  {
LABEL_7:
    CFRelease(cf);
  }

LABEL_8:
  if (v18)
  {
    CFRelease(v18);
  }

  OUTLINED_FUNCTION_36();
}

uint64_t singletonVolumeController_SetMuteOfRoutingContext(uint64_t a1, const void *a2)
{
  OUTLINED_FUNCTION_14_2(a1, a2);
  OUTLINED_FUNCTION_13_2();
  v5 = singletonVolumeController_copyRemoteVolumeController(v3, v4);
  if (!v5)
  {
    if (!*(*(CMBaseObjectGetVTable() + 16) + 136))
    {
      v8 = 4294954514;
      if (!cf)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    v6 = OUTLINED_FUNCTION_20();
    v5 = v7(v6);
  }

  v8 = v5;
  if (cf)
  {
LABEL_7:
    CFRelease(cf);
  }

LABEL_8:
  if (v2)
  {
    CFRelease(v2);
  }

  return v8;
}

uint64_t singletonVolumeController_GetMuteOfRoutingContext(uint64_t a1, const void *a2)
{
  OUTLINED_FUNCTION_14_2(a1, a2);
  OUTLINED_FUNCTION_13_2();
  v5 = singletonVolumeController_copyRemoteVolumeController(v3, v4);
  if (!v5)
  {
    if (!*(*(CMBaseObjectGetVTable() + 16) + 144))
    {
      v8 = 4294954514;
      if (!cf)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    v6 = OUTLINED_FUNCTION_20();
    v5 = v7(v6);
  }

  v8 = v5;
  if (cf)
  {
LABEL_7:
    CFRelease(cf);
  }

LABEL_8:
  if (v2)
  {
    CFRelease(v2);
  }

  return v8;
}

uint64_t singletonVolumeController_SetMuteOfEndpointWithID(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = OUTLINED_FUNCTION_24(a1, a2, a3, a4, a5, a6, a7, a8, v14, cf);
  if (v10)
  {
LABEL_4:
    v12 = v10;
    if (!cfa)
    {
      return v12;
    }

    goto LABEL_7;
  }

  v11 = *(*(CMBaseObjectGetVTable() + 16) + 152);
  if (v11)
  {
    v10 = v11(cfa, a2, a3);
    goto LABEL_4;
  }

  v12 = 4294954514;
  if (cfa)
  {
LABEL_7:
    CFRelease(cfa);
  }

  return v12;
}