CFNumberRef CMSUtility_CopyFadeDuration(void *a1, int a2, int a3)
{
  valuePtr = -1082130432;
  if (a1 && [a1 interruptionFadeDurationSetByClient])
  {
    [a1 interruptionFadeDuration];
    goto LABEL_4;
  }

  if (a2 == 1)
  {
    goto LABEL_14;
  }

  if (a2)
  {
    return CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloat32Type, &valuePtr);
  }

  if (([a1 isTheAssistant] & 1) != 0 || (objc_msgSend(a1, "isIDSMXCoreSession") & 1) != 0 || objc_msgSend(a1, "hasPhoneCallBehavior"))
  {
    v8 = 1008981770;
LABEL_15:
    valuePtr = v8;
    return CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloat32Type, &valuePtr);
  }

  if (!a3)
  {
LABEL_14:
    v8 = 1060320051;
    goto LABEL_15;
  }

  CMSMUtility_GetFadeOutDurationForPlaybackHandoff();
LABEL_4:
  valuePtr = LODWORD(v6);
  if (v6 == 0.0)
  {
    return 0;
  }

  return CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloat32Type, &valuePtr);
}

uint64_t vaemIsDefaultVADInItsDefaultConfiguration()
{
  result = vaemIsVirtualAudioInItsDefaultRouteConfiguration();
  if (result)
  {
    [+[MXSessionManager sharedInstance](MXSessionManager currentAudioCategory];
    result = FigCFEqual();
    if (result)
    {
      [+[MXSessionManager sharedInstance](MXSessionManager currentAudioMode];
      return FigCFEqual() != 0;
    }
  }

  return result;
}

BOOL vaemIsVirtualAudioInItsDefaultRouteConfiguration()
{
  result = 0;
  if (vaemGetVirtualAudioPlugInCategory() == 1668505974 && vaemGetVirtualAudioPlugInMode() == 1768776806)
  {
    v0 = !qword_1EB75D1A8 && byte_1EB75D1A0 == 0;
    v1 = v0 && byte_1EB75D131 == 0;
    v2 = v1 && byte_1EB75D130 == 0;
    v3 = v2 && qword_1EB75D138 == 0;
    v4 = v3 && byte_1EB75D132 == 0;
    v5 = v4 && qword_1EB75D120 == 0;
    v6 = v5 && qword_1EB75D100 == 0;
    if (v6 && ![+[MXSessionManager currentAllowedPortTypes]&& !qword_1EB75D140 && !qword_1EB75D128 && !vaemGetCurrentActivationContext() && !qword_1EB75D108 && !qword_1EB75D110 sharedInstance]
    {
      return 1;
    }
  }

  return result;
}

uint64_t vaemGetVirtualAudioPlugInCategory()
{
  *&inAddress.mSelector = 0x676C6F6272637478;
  inAddress.mElement = 0;
  outData = 0;
  ioDataSize = 4;
  AudioObjectGetPropertyData(dword_1EB75E0AC, &inAddress, 0, 0, &ioDataSize, &outData);
  return outData;
}

uint64_t vaemGetVirtualAudioPlugInMode()
{
  outData = 1768776806;
  *&inAddress.mSelector = 0x676C6F62696E706DLL;
  inAddress.mElement = 0;
  ioDataSize = 4;
  AudioObjectGetPropertyData(dword_1EB75E0AC, &inAddress, 0, 0, &ioDataSize, &outData);
  return outData;
}

uint64_t CMSUtility_ShouldSessionToInterruptHandOverInterruptions(void *a1, void *a2)
{
  if ([a1 handsOverInterruptionsToInterruptor] && (objc_msgSend(a2, "handsOverInterruptionsToInterruptor") & 1) != 0 || objc_msgSend(a1, "mixesWithEveryone") && (objc_msgSend(a1, "wantsToPauseSpokenAudio") & 1) != 0)
  {
    return 1;
  }

  else
  {
    return [a1 isTheAssistant];
  }
}

uint64_t FigEndpointCentralUpdateIsVoiceAssistantActive(uint64_t a1, char a2)
{
  if (!a1)
  {
    return 4294954316;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    return 4294954315;
  }

  FigStarkModeControllerUpdateIsVoiceAssistantActive(*(DerivedStorage + 24), a2);
  return 0;
}

void FigStarkModeControllerUpdateIsVoiceAssistantActive(uint64_t a1, char a2)
{
  if (a1)
  {
    v2 = *(a1 + 16);
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __FigStarkModeControllerUpdateIsVoiceAssistantActive_block_invoke;
    v3[3] = &__block_descriptor_41_e5_v8__0l;
    v3[4] = a1;
    v4 = a2;
    MXDispatchAsync("FigStarkModeControllerUpdateIsVoiceAssistantActive", "FigStarkMode.m", 1326, 0, 0, v2, v3);
  }
}

uint64_t FigEndpointCentralUpdateiOSDeviceState(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  memset(v15, 0, sizeof(v15));
  memset(v14, 0, 72);
  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (DerivedStorage)
    {
      v9 = DerivedStorage;
      *&v14[0] = 0x200000002;
      *(&v14[3] + 12) = a2;
      DWORD2(v14[3]) = a3;
      CStringPtrAndBufferToFree = FigCFStringGetCStringPtrAndBufferToFree();
      v11 = *(v9 + 24);
      if (!a5)
      {
        v12 = fsmcontroller_RequestModeChange(v11, v14, CStringPtrAndBufferToFree, v15, 0);
        goto LABEL_7;
      }

      fsmcontroller_RequestModeChangeAsync(v11, v14, CStringPtrAndBufferToFree, &__block_literal_global_43, 0);
    }
  }

  v12 = 0;
LABEL_7:
  free(0);
  return v12;
}

void __CMSMPowerLogPostPowerLogDataForRouteChange_block_invoke()
{
  v19 = *MEMORY[0x1E69E9840];
  v0 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v1 = [v0 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (!v1)
  {

LABEL_15:
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      v10 = Mutable;
      CurrentRouteTypeAtIndex = CMSMUtility_GetCurrentRouteTypeAtIndex(0);
      v12 = cmsmpowerlogConvertToExternalRouteNameForPowerLog(CurrentRouteTypeAtIndex);
      CFDictionarySetValue(v10, @"AudioRoute", v12);
      CFDictionarySetValue(v10, @"Operation", @"AudioPlayback_RouteChange");
      CMSMPowerLogPostPowerLogData(@"CoreMedia_AudioPlayback", v10);
      CFRelease(v10);
    }

    goto LABEL_17;
  }

  v2 = v1;
  v3 = 0;
  v4 = *v15;
  do
  {
    for (i = 0; i != v2; ++i)
    {
      if (*v15 != v4)
      {
        objc_enumerationMutation(v0);
      }

      v6 = *(*(&v14 + 1) + 8 * i);
      if ([v6 isPlaying])
      {
        PowerLogDataForSession = CMSMPowerLogCreatePowerLogDataForSession(v6);
        if (PowerLogDataForSession)
        {
          v8 = PowerLogDataForSession;
          CMSMPowerLogPostPowerLogData(@"CoreMedia_AudioPlayback", PowerLogDataForSession);
          CFRelease(v8);
        }

        v3 = 1;
      }
    }

    v2 = [v0 countByEnumeratingWithState:&v14 objects:v18 count:16];
  }

  while (v2);

  if (!v3)
  {
    goto LABEL_15;
  }

LABEL_17:
  v13 = *MEMORY[0x1E69E9840];
}

void *CMSMUtility_GetSharePlayCapableActiveCallSession()
{
  v13 = *MEMORY[0x1E69E9840];
  if (MX_FeatureFlags_IsSharePlayEnabled())
  {
    v0 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
    v8 = 0u;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v1 = [v0 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v1)
    {
      v2 = v1;
      v3 = *v9;
LABEL_4:
      v4 = 0;
      while (1)
      {
        if (*v9 != v3)
        {
          objc_enumerationMutation(v0);
        }

        v5 = *(*(&v8 + 1) + 8 * v4);
        if (CMSUtility_GetIsActive(v5))
        {
          if ([v5 isSharePlayCapableCallSession])
          {
            break;
          }
        }

        if (v2 == ++v4)
        {
          v2 = [v0 countByEnumeratingWithState:&v8 objects:v12 count:16];
          if (v2)
          {
            goto LABEL_4;
          }

          goto LABEL_11;
        }
      }
    }

    else
    {
LABEL_11:
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

__CFString *cmsmpowerlogConvertToExternalRouteNameForPowerLog(uint64_t a1)
{
  if (!a1)
  {
    return @"None";
  }

  v1 = a1;
  if (FigCFEqual() || FigCFEqual())
  {
    return @"AirPlay";
  }

  return v1;
}

CFTypeRef FigRoutingManagerCopySelectedBufferedEndpoint(const void *a1, const void *a2)
{
  v61 = *MEMORY[0x1E69E9840];
  v49 = 0;
  v50 = 0;
  ContextString = FigRoutingManagerContextUtilities_GetContextString(a1);
  v5 = &qword_1EB75D000;
  if (a2 && FigRoutingManagerContextUtilities_IsContextSidePlay(a1))
  {
    v6 = routingMangager_copySelectedBufferedEndpointForSidePlay();
    if (dword_1EB75DF20)
    {
      LODWORD(cf) = 0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  else
  {
    if (FigRoutingContextUtilities_IsFollowingAnotherContext(a1))
    {
      FigRoutingManagerCopySelectedBufferedEndpoint_cold_1(a1, &v49);
    }

    else
    {
      FigRoutingManagerCopyPickedEndpointForRoutingContext(a1, &v49);
    }

    v6 = 0;
  }

  v8 = v49;
  v9 = MEMORY[0x1E69621E8];
  v10 = MEMORY[0x1E695E480];
  if (v49)
  {
    cf = 0;
    v11 = *MEMORY[0x1E695E480];
    CMBaseObject = FigEndpointGetCMBaseObject();
    v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v13)
    {
      v13(CMBaseObject, *v9, v11, &cf);
    }

    *type = 0;
    v14 = FigEndpointGetCMBaseObject();
    v15 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v15)
    {
      v15(v14, *MEMORY[0x1E69622F8], v11, type);
    }

    if (dword_1EB75DF20)
    {
      LODWORD(v46) = 0;
      v16 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    if (*type)
    {
      CFRelease(*type);
    }

    v8 = v49;
    v10 = MEMORY[0x1E695E480];
  }

  v17 = *MEMORY[0x1E69626A8];
  if (FigRoutingManagerIsEndpointOfType(v8) || (v18 = *MEMORY[0x1E69626B0], FigRoutingManagerIsEndpointOfType(v49)))
  {
    v19 = v49;
    if (v49)
    {
      CFRetain(v49);
    }

    if (v6)
    {
      v20 = v6;
LABEL_23:
      CFRelease(v20);
    }
  }

  else
  {
    v30 = *MEMORY[0x1E69626D8];
    if (!FigRoutingManagerIsEndpointOfType(v49))
    {
      goto LABEL_65;
    }

    cf = 0;
    v31 = *v10;
    v32 = FigEndpointGetCMBaseObject();
    v33 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v33)
    {
      v33(v32, 0x1F289CEF0, v31, &cf);
    }

    if (cf)
    {
      *type = 0;
      CFNumberGetValue(cf, kCFNumberSInt64Type, type);
      if (*type == 1886614639)
      {
        v46 = 0;
        v34 = FigEndpointGetCMBaseObject();
        v35 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v35)
        {
          v35(v34, *MEMORY[0x1E69620F8], v31, &v46);
        }

        v36 = FigRoutingManagerCopyEndpointWithDeviceID(v46, 1, *MEMORY[0x1E69618E0], 0);
        v37 = v36;
        if (!v36)
        {
          goto LABEL_84;
        }

        FigEndpointFeatures = FigRoutingManagerGetFigEndpointFeatures(v36, a1);
        if (dword_1EB75DF20)
        {
          v45 = FigEndpointFeatures;
          v39 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          FigEndpointFeatures = v45;
          v5 = &qword_1EB75D000;
        }

        if ((FigEndpointFeatures & 8) != 0)
        {
          CFRetain(v37);
          v19 = v37;
          if (v6)
          {
            CFRelease(v6);
            v19 = v37;
          }
        }

        else
        {
LABEL_84:
          v19 = v6;
        }

        if (v46)
        {
          CFRelease(v46);
          v46 = 0;
        }

        if (v37)
        {
          CFRelease(v37);
        }
      }

      else
      {
        v19 = v6;
      }

      v20 = cf;
      if (cf)
      {
        goto LABEL_23;
      }
    }

    else
    {
LABEL_65:
      v19 = v6;
    }
  }

  if (v19)
  {
    v21 = FigEndpointGetCMBaseObject();
    v22 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v22)
    {
      v22(v21, *v9, *v10, &v50);
    }

    if (*(v5 + 968))
    {
      LODWORD(cf) = 0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      v23 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v24 = cf;
      if (os_log_type_enabled(v23, type[0]))
      {
        v25 = v24;
      }

      else
      {
        v25 = v24 & 0xFFFFFFFE;
      }

      if (v25)
      {
        v51 = 136315394;
        v52 = "FigRoutingManagerCopySelectedBufferedEndpoint";
        v53 = 2114;
        v54 = v50;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  v26 = v50;
  if (FigCFEqual())
  {
    if (FigCFEqual())
    {
      if (FigCFEqual())
      {
        goto LABEL_77;
      }

      if (routingManager_shouldLogSelectedBufferedEndpointInfo_sSelectedBufferedEndpointName)
      {
        CFRelease(routingManager_shouldLogSelectedBufferedEndpointInfo_sSelectedBufferedEndpointName);
        routingManager_shouldLogSelectedBufferedEndpointInfo_sSelectedBufferedEndpointName = 0;
      }

      if (v26)
      {
        v27 = CFRetain(v26);
      }

      else
      {
        v27 = 0;
      }

      routingManager_shouldLogSelectedBufferedEndpointInfo_sSelectedBufferedEndpointName = v27;
    }

    else
    {
      if (routingManager_shouldLogSelectedBufferedEndpointInfo_sDeviceID)
      {
        CFRelease(routingManager_shouldLogSelectedBufferedEndpointInfo_sDeviceID);
        routingManager_shouldLogSelectedBufferedEndpointInfo_sDeviceID = 0;
      }

      if (a2)
      {
        v29 = CFRetain(a2);
      }

      else
      {
        v29 = 0;
      }

      routingManager_shouldLogSelectedBufferedEndpointInfo_sDeviceID = v29;
    }
  }

  else
  {
    if (routingManager_shouldLogSelectedBufferedEndpointInfo_sRoutingContextUUID)
    {
      CFRelease(routingManager_shouldLogSelectedBufferedEndpointInfo_sRoutingContextUUID);
      routingManager_shouldLogSelectedBufferedEndpointInfo_sRoutingContextUUID = 0;
    }

    if (a1)
    {
      v28 = CFRetain(a1);
    }

    else
    {
      v28 = 0;
    }

    routingManager_shouldLogSelectedBufferedEndpointInfo_sRoutingContextUUID = v28;
  }

  if (*(v5 + 968))
  {
    LODWORD(cf) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    v40 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v41 = cf;
    if (os_log_type_enabled(v40, type[0]))
    {
      v42 = v41;
    }

    else
    {
      v42 = v41 & 0xFFFFFFFE;
    }

    if (v42)
    {
      v51 = 136316163;
      v52 = "FigRoutingManagerCopySelectedBufferedEndpoint";
      v53 = 2114;
      v54 = ContextString;
      v55 = 2113;
      v56 = a1;
      v57 = 2113;
      v58 = a2;
      v59 = 2114;
      v60 = v50;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

LABEL_77:
  if (v50)
  {
    CFRelease(v50);
    v50 = 0;
  }

  if (v49)
  {
    CFRelease(v49);
  }

  v43 = *MEMORY[0x1E69E9840];
  return v19;
}

uint64_t FigRoutingManagerGetFigEndpointFeatures(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  ContextType = FigRoutingManagerContextUtilities_GetContextType(a2);
  cf = 0;
  CMBaseObject = FigEndpointGetCMBaseObject();
  VTable = CMBaseObjectGetVTable();
  v6 = *(*(VTable + 8) + 48);
  if (v6)
  {
    v7 = *(VTable + 8) + 48;
    v6(CMBaseObject, *MEMORY[0x1E6961FD8], *MEMORY[0x1E695E480], &cf);
  }

  v8 = 0;
  if (ContextType > 4)
  {
    if (ContextType > 6)
    {
      if (ContextType == 7 || ContextType == 9)
      {
        v8 = 16;
      }

      goto LABEL_32;
    }

    if (ContextType == 5)
    {
      v8 = FigEndpointGetSupportedFeatures() & 4 | 2;
      goto LABEL_32;
    }

    goto LABEL_12;
  }

  if (ContextType > 2)
  {
    if (ContextType == 3)
    {
      v14 = CMSMDeviceState_ItsAHomePod() == 0;
      v15 = FigEndpointGetSupportedFeatures() & 8 | (2 * v14);
      v16 = FigEndpointGetSupportedFeatures() & 4;
LABEL_31:
      v8 = v15 | v16;
      goto LABEL_32;
    }

    v12 = *MEMORY[0x1E69626C0];
    if (FigRoutingManagerIsEndpointOfType(a1))
    {
      v8 = 3;
      goto LABEL_32;
    }

    v21 = *MEMORY[0x1E69626B0];
    if (FigRoutingManagerIsEndpointOfType(a1))
    {
      v8 = FigEndpointGetSupportedFeatures() & 8;
      goto LABEL_32;
    }

    v22 = *MEMORY[0x1E69626A8];
    if (FigRoutingManagerIsEndpointOfType(a1))
    {
      v23 = FigEndpointGetSupportedFeatures() & 8;
      v8 = FigEndpointGetSupportedFeatures() & 4 | v23;
      goto LABEL_32;
    }

LABEL_40:
    v8 = 2;
    goto LABEL_32;
  }

  if (ContextType == 1)
  {
    v13 = *MEMORY[0x1E69626C0];
    if (FigRoutingManagerIsEndpointOfType(a1))
    {
      v8 = FigEndpointGetSupportedFeatures() & 8 | 3;
      goto LABEL_32;
    }

    v17 = *MEMORY[0x1E69626A8];
    if (FigRoutingManagerIsEndpointOfType(a1) || (v18 = *MEMORY[0x1E69626B0], FigRoutingManagerIsEndpointOfType(a1)))
    {
      v19 = CMSMDeviceState_ItsAHomePod() == 0;
      v15 = FigEndpointGetSupportedFeatures() & 4 | (2 * v19);
      v16 = FigEndpointGetSupportedFeatures() & 8;
      goto LABEL_31;
    }

    goto LABEL_40;
  }

  if (ContextType != 2)
  {
    goto LABEL_32;
  }

LABEL_12:
  v9 = *MEMORY[0x1E69626A8];
  if (FigRoutingManagerIsEndpointOfType(a1))
  {
    v10 = cf;
    if (cf == *MEMORY[0x1E695E4D0])
    {
      v8 = 3;
      goto LABEL_33;
    }
  }

  v11 = *MEMORY[0x1E69626C8];
  if (FigRoutingManagerIsEndpointOfType(a1))
  {
    v8 = 3;
  }

  else
  {
    v8 = 7;
  }

LABEL_32:
  v10 = cf;
LABEL_33:
  if (v10)
  {
    CFRelease(v10);
  }

  return v8;
}

uint64_t CMSMUtility_AnySessionBelongingToPIDIsActiveAndStopsWhenBackgrounded(int a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        if ([objc_msgSend(v7 "clientPID")] == a1 && objc_msgSend(v7, "stopsWhenDeviceLocks") && (objc_msgSend(v7, "isActive") & 1) != 0)
        {
          v8 = 1;
          goto LABEL_13;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v8 = 0;
LABEL_13:

  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t CMSystemSoundMgr_DeactivateSystemSoundsForPID(uint64_t result)
{
  if (gCMSS_1)
  {
    v1 = result;
    FigSimpleMutexLock();
    for (i = gCMSS_0; i; i = *i)
    {
      if (*(i + 12) == v1)
      {
        if (*(i + 16) && *(i + 18))
        {
          v3 = *(i + 8);
          v4 = v1;
          if ((v3 - 1103) <= 2)
          {
            cmsmRemoveSystemSoundAudioCategoriesThatMixIn(v1);
            v3 = *(i + 8);
            v4 = *(i + 12);
          }

          cmsmPrewarmAudioForSSID(0, v3, v4);
          *(i + 18) = 0;
        }

        if (*(i + 17) && *(i + 19))
        {
          cmsmPrewarmVibeForSSID(0, *(i + 8), *(i + 12));
          *(i + 19) = 0;
        }

        CMSMSleep_ReleasePrewarmIdleSleepPreventor(*(i + 8), *(i + 12));
      }
    }

    return FigSimpleMutexUnlock();
  }

  return result;
}

uint64_t FigRoutingContextRemoteCopyContextForUUID(uint64_t a1, CFDictionaryRef theDict, void *a3)
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  if (a3 && theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"contextUUID");
    if (Value)
    {
      v7 = routingContextRemoteXPC_EnsureClientEstablished();
      *(v18 + 6) = v7;
      if (!v7)
      {
        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 3221225472;
        v12[2] = __FigRoutingContextRemoteCopyContextForUUID_block_invoke;
        v12[3] = &unk_1E7AE79F8;
        v12[4] = &v13;
        v12[5] = &v17;
        v12[6] = Value;
        v12[7] = a1;
        v12[8] = theDict;
        MXDispatchSync("FigRoutingContextRemoteCopyContextForUUID", "FigRoutingContextRemoteXPC.m", 2332, 0, 0, gFigRoutingContextRemoteObject_1, v12);
        v8 = v14;
        *a3 = v14[3];
        v8[3] = 0;
      }
    }

    else
    {
      *(v18 + 6) = -12020;
    }
  }

  else
  {
    v20 = -12020;
  }

  v9 = v14[3];
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = *(v18 + 6);
  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v17, 8);
  return v10;
}

void sub_1B1833C40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 64), 8);
  _Unwind_Resume(a1);
}

void __FigRoutingContextRemoteCopyContextForUUID_block_invoke(uint64_t a1)
{
  if (CFDictionaryGetValue(gFigRoutingContextRemoteObject_0, *(a1 + 48)))
  {
    *(*(*(a1 + 32) + 8) + 24) = FigCFWeakReferenceHolderCopyReferencedObject();
  }

  v2 = *(*(a1 + 32) + 8);
  v4 = *(v2 + 24);
  v3 = (v2 + 24);
  if (!v4)
  {
    __FigRoutingContextRemoteCopyContextForUUID_block_invoke_cold_1(a1, v3, a1 + 32);
  }
}

uint64_t vaeDoesPortSupportRoutability(AudioObjectID a1)
{
  v2.mElement = 0;
  *&v2.mSelector = *"rsipbolg";
  return AudioObjectHasProperty(a1, &v2);
}

uint64_t vaeIsPortRoutable(AudioObjectID a1)
{
  v9 = *MEMORY[0x1E69E9840];
  outData = 0;
  if (!a1)
  {
    goto LABEL_5;
  }

  *&inAddress.mSelector = *"rsipbolg";
  inAddress.mElement = 0;
  ioDataSize = 4;
  if (AudioObjectGetPropertyData(a1, &inAddress, 0, 0, &ioDataSize, &outData))
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_5:
    v2 = 0;
    goto LABEL_6;
  }

  v2 = outData;
LABEL_6:
  v3 = *MEMORY[0x1E69E9840];
  return v2;
}

CFMutableDictionaryRef routingContextUtilities_createRouteConfigUpdatedPayload(const __CFDictionary *a1)
{
  v2 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (a1)
  {
    Value = CFDictionaryGetValue(a1, @"clientRouteRequestID");
    if (Value)
    {
      v5 = CFRetain(Value);
      CFDictionaryGetValue(a1, @"initiator");
      if (v5)
      {
        goto LABEL_7;
      }
    }

    else
    {
      CFDictionaryGetValue(a1, @"initiator");
    }
  }

  v6 = mach_absolute_time();
  v5 = CFStringCreateWithFormat(v2, 0, @"%d", v6);
LABEL_7:
  FigCFDictionarySetValue();
  FigCFDictionarySetValue();
  FigCFDictionarySetValue();
  if (v5)
  {
    CFRelease(v5);
  }

  return Mutable;
}

float PVMGetCurrentPreferredVolume()
{
  DefaultVolume = pvmGetDefaultVolume();
  if (!PVMInitialize())
  {
    return *(sStorage + 308);
  }

  return DefaultVolume;
}

void cmsmGetAndSetVolumePreferencesForActiveVolumeClient(void *a1, uint64_t a2, int a3, float a4, float a5, float a6, uint64_t a7, uint64_t a8, const __CFString **a9, const void **a10, __CFString *a11, const void *a12, const void *a13, const __CFString *a14, unsigned __int8 a15, _BYTE *a16, BOOL *a17, float *a18, _BYTE *a19, _BYTE *a20, unsigned __int8 a21, char a22)
{
  v27 = a2;
  v28 = a1;
  v29 = a14;
  v88 = *MEMORY[0x1E69E9840];
  v30 = 1;
  if (a13 && !a14)
  {
    v33 = FigRoutingManagerCopyEndpointWithDeviceID(a13, 1, *MEMORY[0x1E69618F8], 0);
    if (v33)
    {
      v34 = v33;
      *&v85 = 0;
      CMBaseObject = FigEndpointGetCMBaseObject();
      v36 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v36 && (v36(CMBaseObject, 0x1F289CDB0, *MEMORY[0x1E695E480], &v85), v85))
      {
        valuePtr = 0;
        CFNumberGetValue(v85, kCFNumberSInt64Type, &valuePtr);
        v29 = vaeCopyRouteSubtypeFromVADPort(valuePtr);
        if (v85)
        {
          CFRelease(v85);
        }

        v30 = 0;
      }

      else
      {
        v29 = 0;
      }

      CFRelease(v34);
    }

    else
    {
      v29 = 0;
    }

    v28 = a1;
    v27 = a2;
  }

  v80 = v30;
  v81[0] = 0;
  v81[1] = a12;
  v82[0] = v29;
  v82[1] = a13;
  v83 = 0;
  v85 = *v81;
  v86 = *v82;
  v87 = 0;
  v81[0] = PVMGetMappedEndpointType(&v85);
  if (v28 && a16 && a17 && a18 && a19)
  {
    if (a3 <= 7)
    {
      if (a3 <= 3)
      {
        if (a3 == 1)
        {
          vaemUnmuteFullMuteIfMuted();
          v54 = PVMGetCurrentPreferredVolume();
          *a18 = v54 + a6;
          PVMSetCurrentPreferredVolume(v27, a21, v54 + a6);
          v55 = PVMGetCurrentPreferredVolume();
          *a18 = v55;
          MXSMPostSpeechDetectStyleDidChangeForTriggeredVolumeChange(1u, a15, v54, v55);
          if (dword_1EB75DE40)
          {
            goto LABEL_52;
          }
        }

        else
        {
          if (a3 != 2)
          {
            if (a3 == 3)
            {
              *a18 = PVMGetCurrentPreferredVolume();
            }

            goto LABEL_87;
          }

          vaemUnmuteFullMuteIfMuted();
          v56 = PVMGetCurrentPreferredVolume();
          PVMSetCurrentPreferredVolume(v27, a21, a6);
          v57 = PVMGetCurrentPreferredVolume();
          *a18 = v57;
          MXSMPostSpeechDetectStyleDidChangeForTriggeredVolumeChange(2u, a15, v56, v57);
          if (dword_1EB75DE40)
          {
            goto LABEL_52;
          }
        }

        goto LABEL_87;
      }

      if (a3 <= 5)
      {
        if (a3 == 4)
        {
          vaemUnmuteFullMuteIfMuted();
          v85 = *v81;
          v86 = *v82;
          v87 = v83;
          v52 = PVMGetCurrentPreferredVolumeForDeviceRoute(&v85);
          v85 = *v81;
          v86 = *v82;
          v87 = v83;
          PVMSetCurrentPreferredVolumeForDeviceRoute(&v85, 0, v27, a21, v52 + a6);
          v85 = *v81;
          v86 = *v82;
          v87 = v83;
          v53 = PVMGetCurrentPreferredVolumeForDeviceRoute(&v85);
          *a18 = v53;
          MXSMPostSpeechDetectStyleDidChangeForTriggeredVolumeChange(4u, a15, v52, v53);
          if (dword_1EB75DE40)
          {
            goto LABEL_52;
          }
        }

        else
        {
          vaemUnmuteFullMuteIfMuted();
          v85 = *v81;
          v86 = *v82;
          v87 = v83;
          v38 = PVMGetCurrentPreferredVolumeForDeviceRoute(&v85);
          v85 = *v81;
          v86 = *v82;
          v87 = v83;
          PVMSetCurrentPreferredVolumeForDeviceRoute(&v85, 0, v27, a21, a6);
          v85 = *v81;
          v86 = *v82;
          v87 = v83;
          v39 = PVMGetCurrentPreferredVolumeForDeviceRoute(&v85);
          *a18 = v39;
          MXSMPostSpeechDetectStyleDidChangeForTriggeredVolumeChange(5u, a15, v38, v39);
          if (dword_1EB75DE40)
          {
LABEL_52:
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }
        }

LABEL_87:
        v76 = v80;
        if (!v29)
        {
          v76 = 1;
        }

        if ((v76 & 1) == 0)
        {
          CFRelease(v29);
        }

        goto LABEL_91;
      }

      if (a3 == 6)
      {
        v85 = *v81;
        v86 = *v82;
        v87 = v83;
        *a18 = PVMGetCurrentPreferredVolumeForDeviceRoute(&v85);
        goto LABEL_87;
      }

LABEL_54:
      v59 = [v28 userMuted];
      v60 = MEMORY[0x1E695E4C0];
      if (!v59)
      {
        v60 = MEMORY[0x1E695E4D0];
      }

      v61 = *v60;
      *a19 = v59 ^ (MXCoreSessionSetProperty(v28, @"UserMuted") == 0);
      *a16 = 1;
      goto LABEL_87;
    }

    if (a3 <= 10)
    {
      if (a3 == 8)
      {
        if (!a20)
        {
          goto LABEL_87;
        }
      }

      else
      {
        if (a3 == 9)
        {
          v85 = *v81;
          v86 = *v82;
          v87 = v83;
          if (!PVMIsCurrentDeviceRoute(&v85))
          {
            goto LABEL_87;
          }

          goto LABEL_54;
        }

        if (!a20)
        {
          goto LABEL_87;
        }

        v85 = *v81;
        v86 = *v82;
        v87 = v83;
        if (!PVMIsCurrentDeviceRoute(&v85))
        {
          *a20 = 0;
          goto LABEL_87;
        }
      }

      *a20 = [v28 userMuted];
      goto LABEL_87;
    }

    if ((a3 - 11) >= 3)
    {
      if (a3 == 14)
      {
        v43 = *a9;
        v44 = *a10;
        v85 = *v81;
        v86 = *v82;
        v87 = v83;
        v45 = PVMGetVolumePreference(v43, v44, &v85);
        v46 = *a9;
        v47 = *a10;
        v85 = *v81;
        v86 = *v82;
        v87 = v83;
        PVMSetRawVolumePreference(v46, v47, &v85, v27, a21, a15, a6);
        v48 = *a9;
        v49 = *a10;
        v85 = *v81;
        v86 = *v82;
        v87 = v83;
        v50 = PVMGetVolumePreference(v48, v49, &v85);
        *a18 = v50;
        MXSMPostSpeechDetectStyleDidChangeForTriggeredVolumeChange(0xEu, a15, v45, v50);
        if (dword_1EB75DE40)
        {
          v51 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        *a17 = 1;
      }

      goto LABEL_87;
    }

    if (!a11)
    {
      goto LABEL_87;
    }

    v40 = PVMCategoriesAreEquivalent(*a9, *a10, a11, 0);
    v41 = v40;
    if (a12)
    {
      if (a13)
      {
        v42 = CFRetain(a13);
      }

      else
      {
        v42 = 0;
      }

      v82[1] = v42;
      v81[1] = CFRetain(a12);
      if (v29)
      {
        v62 = CFRetain(v29);
      }

      else
      {
        v62 = 0;
      }

      v82[0] = v62;
    }

    else if (v40)
    {
      PVMCopyCurrentDeviceRoute(&v81[1], &v82[1], v82);
    }

    else
    {
      CMSMUtility_CopyDeviceRouteAtIndexForInactiveRouteConfiguration(a11, 0, 0, 0, 0, &v81[1], &v82[1], v82);
    }

    v85 = *v81;
    v86 = *v82;
    v87 = v83;
    v81[0] = PVMGetMappedEndpointType(&v85);
    if (!v41)
    {
      if (*a9)
      {
        CFRelease(*a9);
        *a9 = 0;
      }

      if (*a10)
      {
        CFRelease(*a10);
        *a10 = 0;
      }

      *a9 = CFRetain(a11);
    }

    if (a3 == 12)
    {
      PVMSetEnabled(1);
      if (!a22)
      {
        vaemUnmuteFullMuteIfMuted();
      }

      v68 = *a9;
      v69 = *a10;
      v85 = *v81;
      v86 = *v82;
      v87 = v83;
      v70 = PVMGetVolumePreference(v68, v69, &v85);
      v71 = *a9;
      v72 = *a10;
      v85 = *v81;
      v86 = *v82;
      v87 = v83;
      PVMSetVolumePreference(v71, v72, a15, &v85, v27, a21, a6, a4, a5);
      MXSMPostSpeechDetectStyleDidChangeForTriggeredVolumeChange(0xCu, a15, v70, a6);
      if (!dword_1EB75DE40)
      {
        goto LABEL_78;
      }
    }

    else
    {
      if (a3 != 11)
      {
LABEL_79:
        v74 = *a9;
        v75 = *a10;
        v85 = *v81;
        v86 = *v82;
        v87 = v83;
        *a18 = PVMGetVolumePreference(v74, v75, &v85);
        if (v82[1])
        {
          CFRelease(v82[1]);
          v82[1] = 0;
        }

        if (v81[1])
        {
          CFRelease(v81[1]);
          v81[1] = 0;
        }

        if (v82[0])
        {
          CFRelease(v82[0]);
          v82[0] = 0;
        }

        goto LABEL_87;
      }

      PVMSetEnabled(1);
      vaemUnmuteFullMuteIfMuted();
      v63 = *a9;
      v64 = *a10;
      v85 = *v81;
      v86 = *v82;
      v87 = v83;
      v65 = PVMGetVolumePreference(v63, v64, &v85);
      *a18 = v65 + a6;
      v66 = *a9;
      v67 = *a10;
      v85 = *v81;
      v86 = *v82;
      v87 = v83;
      PVMSetVolumePreference(v66, v67, a15, &v85, v27, a21, v65 + a6, a4, a5);
      MXSMPostSpeechDetectStyleDidChangeForTriggeredVolumeChange(0xBu, a15, v65, *a18);
      if (!dword_1EB75DE40)
      {
LABEL_78:
        *a17 = v41 == 0;
        goto LABEL_79;
      }
    }

    v73 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_78;
  }

LABEL_91:
  v77 = *MEMORY[0x1E69E9840];
}

void FigRoutingManagerContextUtilities_PostRouteConfigUpdatedToClientsOfContextWithUUIDAndItsFollowers(uint64_t a1, const __CFDictionary *a2, __CFString *a3)
{
  if (@"configUpdateReasonEndpointDescriptorChanged" == a3)
  {
    cf = 0;
    FigRoutingManagerContextUtilities_CopyPickedIndividualEndpoints(a1, &cf);
    v5 = FigEndpointDescriptorUtility_CopyDescriptorsForEndpoints(cf, 0);
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    FigRoutingManagerContextUtilities_UpdateRouteDescriptorForGivenContext(a1, v5);
    if (v5)
    {
      CFRelease(v5);
    }
  }

  RouteConfigUpdatedPayload = routingContextUtilities_createRouteConfigUpdatedPayload(a2);
  FigRoutingManagerContextUtilities_PostNotificationToClientsOfContextWithUUIDAndItsFollowers(a1, @"routeConfigUpdated", RouteConfigUpdatedPayload);
  if (RouteConfigUpdatedPayload)
  {
    CFRelease(RouteConfigUpdatedPayload);
  }
}

__CFArray *CMSUtility_CopyConsolidatedSourceFormatInfo(void *a1)
{
  v25 = *MEMORY[0x1E69E9840];
  allocator = *MEMORY[0x1E695E480];
  theArray = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = [a1 copyMXSessionList];
  v1 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v1)
  {
    v2 = v1;
    v3 = *v21;
    v4 = *MEMORY[0x1E695E4C0];
    v14 = *MEMORY[0x1E695E4C0];
    v15 = *MEMORY[0x1E695E4D0];
    do
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v21 != v3)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v20 + 1) + 8 * i);
        if ([v6 getIsPlaying])
        {
          Mutable = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          [v6 getBestAvailableContentType];
          FigCFDictionarySetValue();
          v8 = [v6 getCurrentlyPlayingSourceFormatInfo];
          FigCFDictionarySetValueFromKeyInDict();
          FigCFDictionarySetValueFromKeyInDict();
          FigCFDictionarySetValueFromKeyInDict();
          FigCFDictionarySetValueFromKeyInDict();
          if (v8 && !CFDictionaryContainsKey(v8, @"CurrentlyPlayingContentIsEligibleForSpatialization") && (CFDictionaryGetValue(Mutable, @"CurrentlyPlayingFormat") || CFDictionaryGetValue(Mutable, @"CurrentlyPlayingChannelCount")))
          {
            if ([v6 getCurrentlyPlayingContentIsEligibleForSpatialization])
            {
              v9 = v15;
            }

            else
            {
              v9 = v14;
            }

            CFDictionarySetValue(Mutable, @"CurrentlyPlayingContentIsEligibleForSpatialization", v9);
          }

          if (CFDictionaryGetCount(Mutable) >= 1)
          {
            goto LABEL_21;
          }

          if (Mutable)
          {
            goto LABEL_22;
          }
        }

        else if ([v6 getClientType] == 2 && objc_msgSend(a1, "someMXSessionIsPlaying"))
        {
          Mutable = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          [v6 getBestAvailableContentType];
          FigCFDictionarySetValue();
LABEL_21:
          CFArrayAppendValue(theArray, Mutable);
          if (!Mutable)
          {
            continue;
          }

LABEL_22:
          CFRelease(Mutable);
          continue;
        }
      }

      v2 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v2);
  }

  if (theArray)
  {
    if (CFArrayGetCount(theArray) >= 1 && dword_1EB75DE40 != 0)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  v12 = *MEMORY[0x1E69E9840];
  return theArray;
}

void __FigRoutingContextResilientRemoteCopySystemRemoteDisplay_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {

    CFRelease(v3);
  }
}

uint64_t FigRoutingContextResilientRemoteCopySystemRemoteDisplay(const void *a1, const void *a2, void *a3)
{
  Current = FigRemoteRoutingContextFactoryGetCurrent();
  if (a1)
  {
    CFRetain(a1);
  }

  if (a2)
  {
    CFRetain(a2);
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __FigRoutingContextResilientRemoteCopySystemRemoteDisplay_block_invoke;
  v9[3] = &unk_1E7AEB9C8;
  v9[4] = Current;
  v9[5] = a1;
  v9[6] = a2;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __FigRoutingContextResilientRemoteCopySystemRemoteDisplay_block_invoke_2;
  v8[3] = &__block_descriptor_48_e5_v8__0l;
  v8[4] = a1;
  v8[5] = a2;
  return FigRoutingContextResilientRemoteCreate(v9, v8, a3);
}

uint64_t vaemGetFullMute()
{
  *&inAddress.mSelector = 0x6F757470706F6D75;
  inAddress.mElement = 0;
  outData = 0;
  ioDataSize = 4;
  AudioObjectGetPropertyData(dword_1EB75E0AC, &inAddress, 0, 0, &ioDataSize, &outData);
  return outData;
}

uint64_t FigRoutingManagerContextUtilities_CopyAggregateEndpointAsFigEndpoint(uint64_t a1, uint64_t a2)
{
  v2 = 4294949876;
  if (a1 && a2)
  {
    if (routingContextUtilities_getSharedContextUtilities_sContextUtilitiesStateSetupOnce != -1)
    {
      FigRoutingManagerContextUtilities_PostNotificationToClientsOfContextWithUUIDAndItsFollowers_cold_1();
    }

    if (byte_1EB75CFA8)
    {
      v5 = &routingContextUtilities_getSharedContextUtilities_contextState;
    }

    else
    {
      v5 = 0;
    }

    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = 0;
    v6 = &qword_1EB75CF98;
    if (!byte_1EB75CFA8)
    {
      v6 = 504;
    }

    v7 = *v6;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __FigRoutingManagerContextUtilities_CopyAggregateEndpointAsFigEndpoint_block_invoke;
    v9[3] = &unk_1E7AE7A48;
    v9[4] = &v10;
    v9[5] = v5;
    v9[6] = a1;
    v9[7] = a2;
    MXDispatchSync("FigRoutingManagerContextUtilities_CopyAggregateEndpointAsFigEndpoint", "FigRoutingManagerContextUtilities.m", 4132, 0, 0, v7, v9);
    v2 = *(v11 + 6);
    _Block_object_dispose(&v10, 8);
  }

  return v2;
}

void sub_1B1835F2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t FigRoutingManagerContextUtilities_CopyFigEndpointFromAggregateEndpointForClientUse(uint64_t a1, uint64_t a2)
{
  if (MX_FeatureFlags_IsAirPlayDaemonEnabled())
  {
    cf = 0;
    FigRoutingManagerContextUtilities_CopyAggregateEndpointAsFigEndpoint(a1, &cf);
    if (!cf)
    {
      return 4294950571;
    }

    CMBaseObject = FigEndpointGetCMBaseObject();
    v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v5)
    {
      v6 = v5(CMBaseObject, 0x1F28A5F10, *MEMORY[0x1E695E480], a2);
    }

    else
    {
      v6 = 4294954514;
    }

    if (cf)
    {
      CFRelease(cf);
    }

    return v6;
  }

  else
  {

    return FigRoutingManagerContextUtilities_CopyAggregateEndpointAsFigEndpoint(a1, a2);
  }
}

void FigRoutingManager_CloseRelayCommChannels(uint64_t a1)
{
  if (FigRoutingManager_GetDataTransmissionQueue_once != -1)
  {
    FigRoutingManager_GetDataTransmissionQueue_cold_1();
  }

  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __FigRoutingManager_CloseRelayCommChannels_block_invoke;
  v2[3] = &__block_descriptor_40_e5_v8__0l;
  v2[4] = a1;
  MXDispatchSync("FigRoutingManager_CloseRelayCommChannels", "FigRoutingManager.m", 2546, 0, 0, FigRoutingManager_GetDataTransmissionQueue_dataTransmissionQueue, v2);
}

uint64_t CMSMUtility_IsAnyLongFormVideoSessionActiveOverAirPlayVideo()
{
  FigSimpleMutexLock();
  v0 = byte_1EB75E0A8;
  FigSimpleMutexUnlock();
  return v0;
}

uint64_t CMSUtility_ShouldInterrupt(void *a1, void *a2, int a3)
{
  v87 = *MEMORY[0x1E69E9840];
  if (a1 == a2 || ![a2 isActive] || objc_msgSend(a1, "siriInputDeviceUUID") || objc_msgSend(a2, "siriInputDeviceUUID"))
  {
    goto LABEL_98;
  }

  if (([a1 prefersNoInterruptions] & 1) != 0 || objc_msgSend(a2, "prefersNoInterruptions"))
  {
    if (dword_1EB75DE40)
    {
      v6 = OUTLINED_FUNCTION_2_13();
      OUTLINED_FUNCTION_4_2(v6, v7, v8, v9, v10, v11, v12, v13, v83, v84, v85, type, SBYTE2(type), BYTE3(type), SHIDWORD(type));
      OUTLINED_FUNCTION_5_7();
      if (!&qword_1EB75D000)
      {
LABEL_97:
        OUTLINED_FUNCTION_6_8();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        goto LABEL_98;
      }

      [a1 clientName];
      [a1 prefersNoInterruptions];
      [a2 clientName];
      [a2 prefersNoInterruptions];
      OUTLINED_FUNCTION_1_15();
LABEL_10:
      OUTLINED_FUNCTION_7_5();
      _os_log_send_and_compose_impl();
      goto LABEL_97;
    }

LABEL_98:
    v31 = 0;
    goto LABEL_99;
  }

  if ([a1 isSharePlayCallSession] && objc_msgSend(a2, "isSharePlayMediaSession"))
  {
    if (dword_1EB75DE40)
    {
      v14 = OUTLINED_FUNCTION_2_13();
      OUTLINED_FUNCTION_4_2(v14, v15, v16, v17, v18, v19, v20, v21, v83, v84, v85, type, SBYTE2(type), BYTE3(type), SHIDWORD(type));
      OUTLINED_FUNCTION_5_7();
      if (!&qword_1EB75D000)
      {
        goto LABEL_97;
      }

      if (a1)
      {
        [a1 clientName];
      }

      if (a2)
      {
        [a2 clientName];
      }

      OUTLINED_FUNCTION_0_21();
      goto LABEL_10;
    }

    goto LABEL_98;
  }

  if (CMSMVAUtility_IsAdditiveRoutingEnabled())
  {
    +[MXSessionManager sharedInstance];
    OUTLINED_FUNCTION_9_5();
    if ([v22 canSessionsCoexistDueToIndependentRecording:? victim:?])
    {
      if (!dword_1EB75DE40)
      {
        goto LABEL_98;
      }

      v23 = OUTLINED_FUNCTION_2_13();
      OUTLINED_FUNCTION_4_2(v23, v24, v25, v26, v27, v28, v29, v30, v83, v84, v85, type, SBYTE2(type), BYTE3(type), SHIDWORD(type));
      OUTLINED_FUNCTION_5_7();
      if (!&qword_1EB75D000)
      {
        goto LABEL_97;
      }

LABEL_38:
      [a1 clientName];
      [OUTLINED_FUNCTION_8_4() clientName];
      OUTLINED_FUNCTION_0_21();
      goto LABEL_10;
    }
  }

  if (a3)
  {
    if (![a2 isActive])
    {
      goto LABEL_98;
    }

    [a2 audioCategory];
    if (!FigCFEqual())
    {
      goto LABEL_98;
    }

    goto LABEL_27;
  }

  IsContextSystemMusicAndIndependent = FigRoutingManagerContextUtilities_IsContextSystemMusicAndIndependent([a1 routingContextUUID]);
  if (IsContextSystemMusicAndIndependent != FigRoutingManagerContextUtilities_IsContextSystemMusicAndIndependent([a2 routingContextUUID]) && !CMSMDeviceState_ItsAHomePod())
  {
    if (!dword_1EB75DE40)
    {
      goto LABEL_98;
    }

    v41 = OUTLINED_FUNCTION_2_13();
    OUTLINED_FUNCTION_4_2(v41, v42, v43, v44, v45, v46, v47, v48, v83, v84, v85, type, SBYTE2(type), BYTE3(type), SHIDWORD(type));
    OUTLINED_FUNCTION_5_7();
    if (!&qword_1EB75D000)
    {
      goto LABEL_97;
    }

    goto LABEL_38;
  }

  if (FigRoutingManagerContextUtilities_IsContextVideoAndIndependent([a1 routingContextUUID]) || FigRoutingManagerContextUtilities_IsContextVideoAndIndependent(objc_msgSend(a2, "routingContextUUID")))
  {
    if (!dword_1EB75DE40)
    {
      goto LABEL_98;
    }

    v33 = OUTLINED_FUNCTION_2_13();
    OUTLINED_FUNCTION_4_2(v33, v34, v35, v36, v37, v38, v39, v40, v83, v84, v85, type, SBYTE2(type), BYTE3(type), SHIDWORD(type));
    OUTLINED_FUNCTION_5_7();
    if (!&qword_1EB75D000)
    {
      goto LABEL_97;
    }

    goto LABEL_38;
  }

  +[MXSessionManager sharedInstance];
  OUTLINED_FUNCTION_9_5();
  if ([v49 isMixableSessionBeingInterruptedByNextRecordingClient:? victim:?])
  {
    if (dword_1EB75DE40)
    {
      v50 = OUTLINED_FUNCTION_2_13();
      v51 = HIDWORD(type);
      if (!os_log_type_enabled(v50, BYTE3(type)))
      {
        v51 = HIDWORD(type) & 0xFFFFFFFE;
      }

      if (v51)
      {
        [a1 clientName];
        [OUTLINED_FUNCTION_8_4() clientName];
        OUTLINED_FUNCTION_0_21();
        OUTLINED_FUNCTION_7_5();
        _os_log_send_and_compose_impl();
      }

      v31 = 1;
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      goto LABEL_99;
    }

LABEL_27:
    v31 = 1;
    goto LABEL_99;
  }

  if (![a1 mixesWithEveryone] || !objc_msgSend(a2, "isActive") || objc_msgSend(a1, "isTheAssistant") && (objc_msgSend(a2, "isRecording") & 1) != 0 || objc_msgSend(a1, "prefersToInterruptActiveRecordingSessions") && (objc_msgSend(a2, "isTheAssistant") & 1) == 0 && (objc_msgSend(a2, "isRecording") & 1) != 0)
  {
    if ([a2 isActive])
    {
      v52 = [a2 clientPriority];
      v31 = v52 <= [a1 clientPriority];
    }

    else
    {
      v31 = 0;
    }

    if (![a2 mixesWithEveryone])
    {
LABEL_87:
      if (CMSMVAUtility_IsAdditiveRoutingEnabled() && v31)
      {
        if (([a1 isTheAssistant] & 1) == 0 && ((objc_msgSend(a1, "hasAudioMode:", @"SoundRecognition") & 1) != 0 || objc_msgSend(a2, "hasAudioMode:", @"SoundRecognition")) && ((objc_msgSend(a2, "isRoutedToOnDemandVAD") & 1) != 0 || objc_msgSend(a1, "willRouteToOnDemandVADOnActivation")))
        {
          if (dword_1EB75DE40)
          {
            v58 = OUTLINED_FUNCTION_2_13();
            OUTLINED_FUNCTION_4_2(v58, v59, v60, v61, v62, v63, v64, v65, v83, v84, v85, type, SBYTE2(type), BYTE3(type), SHIDWORD(type));
            OUTLINED_FUNCTION_5_7();
            if (!0xED6D2000)
            {
              goto LABEL_97;
            }

            [a1 audioBehaviour];
            [OUTLINED_FUNCTION_8_4() audioBehaviour];
            OUTLINED_FUNCTION_0_21();
            goto LABEL_10;
          }

          goto LABEL_98;
        }
      }

      else if (!v31)
      {
        goto LABEL_103;
      }

      +[MXSessionManager sharedInstance];
      OUTLINED_FUNCTION_9_5();
      if ([v68 canSessionsCoexistDueToMediaMultitasking:? victim:?])
      {
        goto LABEL_98;
      }

      +[MXSessionManager sharedInstance];
      OUTLINED_FUNCTION_9_5();
      v70 = [v69 canSessionsCoexistDueToOutputMuting:? victim:?];
      v31 = v70 ^ 1u;
      if (v70)
      {
        goto LABEL_99;
      }

LABEL_103:
      v71 = [objc_msgSend(a1 "clientPID")];
      if (v71 == [objc_msgSend(a2 "clientPID")])
      {
        if (([a1 audioCategory], FigCFEqual()) && CMSMUtility_IsRecordingCategory(objc_msgSend(a2, "audioCategory")) || (objc_msgSend(a2, "audioCategory"), FigCFEqual()) && CMSMUtility_IsRecordingCategory(objc_msgSend(a1, "audioCategory")))
        {
          v31 = 0;
        }
      }

      if ([a1 isCarSession] && CMSMUtility_IsCarPlayVideoActive() && objc_msgSend(a2, "isActiveOverAirPlayVideo"))
      {
        if (!dword_1EB75DE40)
        {
          goto LABEL_98;
        }

        v72 = OUTLINED_FUNCTION_2_13();
        if (os_log_type_enabled(v72, BYTE3(type)))
        {
          v73 = HIDWORD(type);
        }

        else
        {
          v73 = HIDWORD(type) & 0xFFFFFFFE;
        }

        if (v73)
        {
          [a2 clientName];
          OUTLINED_FUNCTION_1_15();
          OUTLINED_FUNCTION_7_5();
          _os_log_send_and_compose_impl();
        }

        goto LABEL_97;
      }

      goto LABEL_99;
    }

    [a1 audioCategory];
    if (FigCFEqual() || ([a1 hasPhoneCallBehavior] & 1) != 0 || (objc_msgSend(a1, "audioCategory"), FigCFEqual()))
    {
      [a2 audioCategory];
      if (!FigCFEqual())
      {
        if (![a2 isAirPlayReceiverSession] || (objc_msgSend(a1, "hasPhoneCallBehavior") & 1) != 0)
        {
          LODWORD(v53) = 1;
LABEL_71:
          if (([a2 applicationState] == 2 || objc_msgSend(a2, "applicationState") == 4) && objc_msgSend(a2, "isActive") && (objc_msgSend(a2, "isPlaying") & 1) == 0)
          {
            v53 = [a2 hwControlFlags] & 2;
          }

          if (![a1 isTheAssistant])
          {
            goto LABEL_84;
          }

          if (CMSMUtility_IsCarPlaySessionPresent() && CMSUtility_PlaysToCarAltAudio(a2) && CMSUtility_DoesSessionActuallyPlayAudio(a2))
          {
            CMSMUtility_HandOverInterruptionsToSession(a2, a1);
          }

          else if (([a2 isCarSession] & 1) == 0 && (objc_msgSend(a2, "isHardwareSafetySession") & 1) == 0)
          {
            LODWORD(v53) = [a2 isIDSMXCoreSession] ^ 1;
LABEL_84:
            v56 = [a1 hasAudioMode:@"Beacon"];
            v57 = [a1 hasAudioCategory:@"HearingTest"];
            if ((([a1 isHardwareSafetySession] | v57) | v56))
            {
              v31 = 1;
            }

            else
            {
              v31 = v53;
            }

            goto LABEL_87;
          }

          LODWORD(v53) = 0;
          goto LABEL_84;
        }

        if (dword_1EB75DE40)
        {
          v74 = OUTLINED_FUNCTION_2_13();
          if (OUTLINED_FUNCTION_4_2(v74, v75, v76, v77, v78, v79, v80, v81, v83, v84, v85, type, SBYTE2(type), BYTE3(type), SHIDWORD(type)))
          {
            v82 = 0xED6D2000;
          }

          else
          {
            v82 = 0x1ED6D2000 & 0xFFFFFFFELL;
          }

          if (v82)
          {
            [a2 clientName];
            [a1 clientName];
            OUTLINED_FUNCTION_1_15();
            OUTLINED_FUNCTION_3_8();
            _os_log_send_and_compose_impl();
          }

          OUTLINED_FUNCTION_6_8();
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }
      }
    }

    LODWORD(v53) = 0;
    goto LABEL_71;
  }

  v54 = CMSMDeviceState_ItsAHomePod();
  v55 = [a1 wantsToPauseSpokenAudio];
  if (v54)
  {
    if (!v55 || !CMSUtility_IsDoingSpokenAudio(a2) || FigRoutingManagerIsConfigurationWHASilentPrimary([a2 routingContextUUID]) || (objc_msgSend(a2, "prefersNoInterruptionsByMixableSessions") & 1) != 0)
    {
      goto LABEL_98;
    }

    CMSUtility_GetCurrentAudioDestination(a1);
    CMSUtility_GetCurrentAudioDestination(a2);
    [a1 setDontTakeOverHardware:FigCFEqual() != 0];
    goto LABEL_27;
  }

  if (!v55 || !CMSUtility_IsDoingSpokenAudio(a2))
  {
    goto LABEL_98;
  }

  v31 = [a2 prefersNoInterruptionsByMixableSessions] ^ 1;
  if (([a1 isTheAssistant] & 1) == 0)
  {
    CMSUtility_GetCurrentAudioDestination(a1);
    CMSUtility_GetCurrentAudioDestination(a2);
    [a1 setDontTakeOverHardware:FigCFEqual() != 0];
  }

LABEL_99:
  v66 = *MEMORY[0x1E69E9840];
  return v31;
}

void cmsAddToListOfSessionsToInterruptIfNecessary(void *a1, void *a2, int a3, int a4, uint64_t a5, int *a6, int *a7)
{
  v10 = a2;
  v61 = *MEMORY[0x1E69E9840];
  v12 = *a6;
  v38 = *a7;
  if ([a2 isCarSession])
  {
    goto LABEL_38;
  }

  [v10 audioCategory];
  if (FigCFEqual())
  {
    if (a4 != 1)
    {
      goto LABEL_38;
    }
  }

  else
  {
    [a1 audioCategory];
    v13 = FigCFEqual();
    if (a4 != 1 && v13)
    {
      goto LABEL_38;
    }
  }

  if ([a1 isHardwareSafetySession] && objc_msgSend(v10, "prefersToOptOutOfHardwareSafetyInterruptions"))
  {
    if (dword_1EB75DE40)
    {
      v51 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    goto LABEL_38;
  }

  if (!CMSUtility_ShouldInterrupt(a1, v10, a3))
  {
    goto LABEL_38;
  }

  [v10 setWaitingToResumeWhenDeviceUnlocksOrInForeground:0];
  [v10 setWaitingForEndInterruptionWhenDeviceUnlocksOrInForeground:0];
  v15 = a5 + 16 * v12;
  *v15 = v10;
  v16 = v10;
  *(v15 + 8) = [v10 isPlaying];
  *(v15 + 9) = [v10 wasRecentlyActivated];
  ++v12;
  if (CMSMDeviceState_ItsAnAppleTV() || CMSMDeviceState_ItsAHomePod())
  {
    v17 = 0;
  }

  else
  {
    v17 = 1;
    if (!MX_FeatureFlags_IsHighQualityLocalRecordingEnabled())
    {
      v18 = 0;
      goto LABEL_16;
    }
  }

  v18 = CMSMUtility_CopyActiveCoreSessionsShadowingAudioSessionID([v10 audioSessionID]);
LABEL_16:
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v19 = [(__CFArray *)v18 countByEnumeratingWithState:&v46 objects:v60 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v47;
    v41 = v17;
    v42 = *v47;
    v43 = v18;
    do
    {
      v22 = 0;
      v44 = v20;
      do
      {
        if (*v47 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v46 + 1) + 8 * v22);
        if (!v17 || MX_FeatureFlags_IsHighQualityLocalRecordingEnabled() && (([v23 shadowingAudioSessionOptions] & 2) != 0 || (objc_msgSend(v23, "shadowingAudioSessionOptions") & 4) != 0))
        {
          if (dword_1EB75DE40)
          {
            v51 = 0;
            type = OS_LOG_TYPE_DEFAULT;
            v24 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v25 = v51;
            if (os_log_type_enabled(v24, type))
            {
              v26 = v25;
            }

            else
            {
              v26 = v25 & 0xFFFFFFFE;
            }

            if (v26)
            {
              v45 = [v23 clientName];
              v27 = v12;
              v28 = v10;
              v29 = [v10 clientName];
              v30 = a5;
              v31 = +[MXSessionManager sharedInstance];
              v32 = [v23 shadowingAudioSessionOptions];
              v33 = v31;
              a5 = v30;
              v34 = [(MXSessionManager *)v33 getShadowingAudioSessionOptionsAsString:v32];
              v52 = 136315906;
              v53 = "cmsAddToListOfSessionsToInterruptIfNecessary";
              v54 = 2114;
              v55 = v45;
              v56 = 2114;
              v57 = v29;
              v10 = v28;
              v12 = v27;
              v17 = v41;
              v58 = 2114;
              v59 = v34;
              _os_log_send_and_compose_impl();
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
            v21 = v42;
            v18 = v43;
            v20 = v44;
          }

          v35 = a5 + 16 * v12;
          *v35 = v23;
          v36 = v23;
          *(v35 + 8) = [v23 isPlaying];
          *(v35 + 9) = [v23 wasRecentlyActivated];
          ++v12;
        }

        ++v22;
      }

      while (v20 != v22);
      v20 = [(__CFArray *)v18 countByEnumeratingWithState:&v46 objects:v60 count:16];
    }

    while (v20);
  }

LABEL_38:
  *a6 = v12;
  *a7 = v38;
  v37 = *MEMORY[0x1E69E9840];
}

const __CFArray *CMSUtility_CopySessionsToDuck(int a1, void *a2, const __CFArray *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_35;
  }

  Mutable = a3;
  if (!a2)
  {
    if (!a3)
    {
      goto LABEL_36;
    }

    v6 = *MEMORY[0x1E69626C0];
    if (!FigRoutingManagerDoActivatedEndpointsIncludeEndpointType(qword_1EB75E190, 1))
    {
      v16 = CMSMUtility_CopyMatchingSessions(Mutable, CMSUtilityPredicate_ShouldDuck, 0);
LABEL_30:
      Mutable = v16;
      if (!v16)
      {
        goto LABEL_36;
      }

LABEL_31:
      if (CFArrayGetCount(Mutable))
      {
        goto LABEL_32;
      }

      CFRelease(Mutable);
LABEL_35:
      Mutable = 0;
      goto LABEL_36;
    }

    VADCategoryFromFigCategoryName = CMSMVAUtility_GetVADCategoryFromFigCategoryName([(__CFArray *)Mutable audioCategory]);
    VADModeFromFigModeName = CMSMVAUtility_GetVADModeFromFigModeName([(__CFArray *)Mutable audioMode]);
    v9 = vaemCopyActivePortsListForRouteConfigurationScopeAndDevice(VADCategoryFromFigCategoryName, VADModeFromFigModeName, [(__CFArray *)Mutable activationContext], 0, [(__CFArray *)Mutable prefersBluetoothHighQualityContentCapture], 0, 0x1F2897930);
    if (v9)
    {
      v10 = v9;
      if (CFArrayGetCount(v9) < 1)
      {
        v17 = 1;
      }

      else
      {
        PortAtIndex = CMSMVAUtility_GetPortAtIndex(v10, 0);
        v12 = vaeCopyDeviceIdentifierFromVADPort(PortAtIndex);
        v13 = FigRoutingManagerCopyActivatedCarPlayEndpoint(qword_1EB75E190);
        v14 = FigEndpointUtility_EndpointPredicate_EqualsAudioStreamID();
        if (dword_1EB75DE40)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        if (v12)
        {
          CFRelease(v12);
        }

        if (v13)
        {
          CFRelease(v13);
        }

        v17 = v14 == 0;
      }

      CFRelease(v10);
      if (!CMSUtility_IsPlayingToSystemSoundRemoteVAD(Mutable) && (v17 || !FigRoutingManager_iOSIsCarPlayAuxStreamSupported()))
      {
        goto LABEL_28;
      }
    }

    else if (!CMSUtility_IsPlayingToSystemSoundRemoteVAD(Mutable))
    {
LABEL_28:
      if (!CMSUtility_IsPlayingToDefaultVAD(Mutable))
      {
        CMSUtility_IsPlayingToSystemSoundLocalVAD(Mutable);
        goto LABEL_35;
      }

      v16 = CMSUtility_CopyDuckableSessionsPlayingToDefaultVAD(Mutable);
      goto LABEL_30;
    }

    CMSUtility_IsPlayingToSystemSoundRemoteVAD(Mutable);
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    if (!Mutable)
    {
      goto LABEL_36;
    }

    if (qword_1EB75E170 && !CMSMUtility_IsPhoneCallActive())
    {
      CFArrayAppendValue(Mutable, qword_1EB75E170);
    }

    goto LABEL_31;
  }

  if (!CMSUtilityPredicate_ShouldDuck(a3, a2))
  {
    goto LABEL_35;
  }

  v5 = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  Mutable = v5;
  if (v5)
  {
    CFArrayAppendValue(v5, a2);
LABEL_32:
    CFArrayGetCount(Mutable);
  }

LABEL_36:
  v18 = *MEMORY[0x1E69E9840];
  return Mutable;
}

__CFArray *CMSUtility_CopyDuckableSessionsPlayingToDefaultVAD(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v3 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      v7 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * v7);
        if (v8 != a1)
        {
          if ([*(*(&v13 + 1) + 8 * v7) isPlaying])
          {
            v9 = [v8 clientPriority];
            if (v9 <= [a1 clientPriority])
            {
              if (CMSUtility_IsPlayingToDefaultVAD(v8))
              {
                CFArrayAppendValue(Mutable, v8);
              }
            }
          }
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  if (CFArrayGetCount(Mutable))
  {
    v10 = 1;
  }

  else
  {
    v10 = Mutable == 0;
  }

  if (!v10)
  {
    CFRelease(Mutable);
    Mutable = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return Mutable;
}

void FigRoutingContextUtilities_LogRouteDescriptors(const __CFArray *a1, const __CFArray *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"Updating from old route descriptors: ");
  v5 = 0;
  if (!a1)
  {
    goto LABEL_3;
  }

LABEL_2:
  for (i = CFArrayGetCount(a1); v5 < i; i = 0)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, v5);
    if (ValueAtIndex)
    {
      Value = CFDictionaryGetValue(ValueAtIndex, @"RouteName");
      CFStringAppendFormat(Mutable, 0, @"Endpoint[%ld]: %@", v5, Value);
    }

    ++v5;
    if (a1)
    {
      goto LABEL_2;
    }

LABEL_3:
    ;
  }

  CFStringAppendFormat(Mutable, 0, @" to new route descriptors: ");
  v9 = 0;
  if (!a2)
  {
    goto LABEL_11;
  }

LABEL_10:
  for (j = CFArrayGetCount(a2); v9 < j; j = 0)
  {
    v11 = CFArrayGetValueAtIndex(a2, v9);
    if (v11)
    {
      v12 = CFDictionaryGetValue(v11, @"RouteName");
      CFStringAppendFormat(Mutable, 0, @"Endpoint[%ld]: %@", v9, v12);
    }

    ++v9;
    if (a2)
    {
      goto LABEL_10;
    }

LABEL_11:
    ;
  }

  if (dword_1EB75DF20)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  v14 = *MEMORY[0x1E69E9840];
}

const __CFArray *routingSessionManager_routeIsBuiltIn(const __CFArray *result)
{
  if (result)
  {
    v1 = result;
    if (CFArrayGetCount(result) == 1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v1, 0);
      CFDictionaryGetValue(ValueAtIndex, @"AudioRouteName");
      if (FigCFEqual())
      {
        return 1;
      }

      else
      {
        return (FigCFEqual() != 0);
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t cmsmGetCurrentConnectedPortToRoute(const void *a1)
{
  if (a1)
  {
    v1 = CFRetain(a1);
  }

  else
  {
    v1 = vaemCopyConnectedPortsListForRouteConfiguration(0, 0, 0, 0, 0);
  }

  v2 = v1;
  if (!v1)
  {
    return 0;
  }

  Count = CFArrayGetCount(v1);
  if (Count < 1)
  {
LABEL_29:
    v19 = 0;
    goto LABEL_33;
  }

  v4 = Count;
  v5 = *MEMORY[0x1E69618E0];
  while (1)
  {
    valuePtr = 0;
    ValueAtIndex = CFArrayGetValueAtIndex(v2, v4 - 1);
    CFNumberGetValue(ValueAtIndex, kCFNumberSInt32Type, &valuePtr);
    PortTypeFromPortID = vaeGetPortTypeFromPortID(valuePtr);
    v8 = vaeCopyDeviceIdentifierFromVADPort(valuePtr);
    v9 = FigRoutingManagerCopyEndpointWithDeviceID(v8, 1, v5, qword_1EB75E190);
    if (v8)
    {
      CFRelease(v8);
    }

    if (!v9)
    {
      break;
    }

    if (PortTypeFromPortID == 1886614639)
    {
      v19 = valuePtr;
      CFRelease(v9);
      goto LABEL_33;
    }

    CFRelease(v9);
LABEL_27:
    if (v4-- <= 1)
    {
      goto LABEL_29;
    }
  }

  if (vaeGetConnectionTypeForPort(valuePtr) == 1885544823)
  {
    theArray = 0;
    FigRoutingManagerContextUtilities_CopyCurrentlyActivatingEndpoints(qword_1EB75E190, &theArray);
    if (theArray)
    {
      v10 = CFArrayGetCount(theArray);
      if (v10 < 1)
      {
        v13 = 1;
      }

      else
      {
        v11 = v10;
        v12 = CFArrayGetValueAtIndex(theArray, 0);
        if (CMSMVAUtility_ShouldAutoRouteOnConnect(valuePtr, v12))
        {
          v13 = 0;
        }

        else
        {
          v14 = 1;
          do
          {
            v15 = v14;
            if (v11 == v14)
            {
              break;
            }

            v16 = CFArrayGetValueAtIndex(theArray, v14);
            ShouldAutoRouteOnConnect = CMSMVAUtility_ShouldAutoRouteOnConnect(valuePtr, v16);
            v14 = v15 + 1;
          }

          while (!ShouldAutoRouteOnConnect);
          v13 = v15 >= v11;
        }
      }

      if (theArray)
      {
        CFRelease(theArray);
        theArray = 0;
      }
    }

    else
    {
      v13 = 1;
    }

    CurrentOutputPortAtIndex = CMSMUtility_GetCurrentOutputPortAtIndex(0);
    v19 = valuePtr;
    if (!v13 || valuePtr == CurrentOutputPortAtIndex)
    {
      goto LABEL_33;
    }

    goto LABEL_27;
  }

  v19 = valuePtr;
LABEL_33:
  CFRelease(v2);
  return v19;
}

uint64_t CMSMNotificationUtility_PostCurrentRouteHasVolumeControlDidChange(int a1)
{
  v1 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", a1 != 0), @"HasVolumeControl", 0}];

  return [MXSystemController notifyAll:@"CurrentRouteHasVolumeControlDidChange" payload:v1 dontPostIfSuspended:0];
}

BOOL PVMIsRoutedToAPersonalAudioDevice(uint64_t *a1)
{
  v2 = *a1;
  if (FigCFEqual())
  {
    v3 = a1[1];
    if (FigCFEqual())
    {
      v4 = 1;
    }

    else
    {
      v5 = a1[1];
      v4 = FigCFEqual() != 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v6 = a1[1];
  if (FigCFEqual())
  {
    v7 = a1[2];
    if (FigCFEqual())
    {
      v8 = 1;
    }

    else
    {
      v9 = a1[2];
      v8 = FigCFEqual() != 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v4 || v8;
}

uint64_t vaeIsBTPortAdaptiveVolumeEnabled(uint64_t result)
{
  v7 = *MEMORY[0x1E69E9840];
  outData = 0;
  if (result)
  {
    v1 = result;
    inAddress.mElement = 0;
    *&inAddress.mSelector = *"lvdabolg";
    result = AudioObjectHasProperty(result, &inAddress);
    if (result)
    {
      ioDataSize = 4;
      if (AudioObjectGetPropertyData(v1, &inAddress, 0, 0, &ioDataSize, &outData))
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        result = 0;
      }

      else
      {
        result = outData != 0;
      }
    }
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

__CFArray *CMSMUtility_CopyCurrentOutputPorts()
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  FigSimpleMutexLock();
  if (dword_1EB75E0C8)
  {
    v1 = 0;
    do
    {
      MXVW_GetCMSRouteInfoAt(qword_1EB75E0C0, v1, &v4);
      SInt64 = FigCFNumberCreateSInt64();
      CFArrayAppendValue(Mutable, SInt64);
      if (SInt64)
      {
        CFRelease(SInt64);
      }

      ++v1;
    }

    while (v1 < dword_1EB75E0C8);
  }

  FigSimpleMutexUnlock();
  return Mutable;
}

CFStringRef CMSMUtility_CreateDeviceRoutesString(CFArrayRef theArray, const __CFArray *a2, const __CFArray *a3)
{
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
  }

  else
  {
    Count = 0;
  }

  v7 = *MEMORY[0x1E695E480];
  v8 = MEMORY[0x1E695E9C0];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v10 = CFArrayCreateMutable(v7, 0, v8);
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
      CFArrayAppendValue(v10, ValueAtIndex);
      if (a2 && i < CFArrayGetCount(a2))
      {
        v13 = CFArrayGetValueAtIndex(a2, i);
        CFArrayAppendValue(v10, v13);
      }

      if (a3 && i < CFArrayGetCount(a3))
      {
        v14 = CFArrayGetValueAtIndex(a3, i);
        CFArrayAppendValue(v10, v14);
      }

      v15 = CFStringCreateByCombiningStrings(v7, v10, @"~");
      CFArrayAppendValue(Mutable, v15);
      if (v15)
      {
        CFRelease(v15);
      }

      CFArrayRemoveAllValues(v10);
    }
  }

  if (!Mutable || CFArrayGetCount(Mutable) <= 0)
  {
    v16 = 0;
    if (!v10)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v16 = CFStringCreateByCombiningStrings(v7, Mutable, @", ");
  if (v10)
  {
LABEL_20:
    CFRelease(v10);
  }

LABEL_21:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v16;
}

__CFString *CMSMVAUtility_MapVADRouteChangeReasonToString(int a1)
{
  if (a1 > 1919842147)
  {
    if (a1 <= 1919971426)
    {
      if (a1 > 1919907441)
      {
        if (a1 == 1919907442)
        {
          return @"Override";
        }

        if (a1 == 1919970403)
        {
          return @"CategoryChange";
        }
      }

      else
      {
        if (a1 == 1919842148)
        {
          return @"NewPortConnected";
        }

        if (a1 == 1919904885)
        {
          return @"OldPortDisconnected";
        }
      }
    }

    else if (a1 <= 1920099683)
    {
      if (a1 == 1919971427)
      {
        return @"PortPropertiesChanged";
      }

      if (a1 == 1919971701)
      {
        return @"OldPortQuiesced";
      }
    }

    else
    {
      switch(a1)
      {
        case 1920099684:
          return @"RedundantRouteChange";
        case 1920168053:
          return @"SharedPortDisconnected";
        case 1920429155:
          return @"WirelessLatencyChanged";
      }
    }
  }

  else if (a1 <= 1919118965)
  {
    if (a1 > 1919050610)
    {
      if (a1 == 1919050611)
      {
        return @"BroadcastUpdate";
      }

      if (a1 == 1919050851)
      {
        return @"BeamDirectionChanged";
      }
    }

    else
    {
      if (!a1)
      {
        return @"Unknown";
      }

      if (a1 == 1918989155)
      {
        return @"AudioSessionInfoChanged";
      }
    }
  }

  else if (a1 <= 1919184753)
  {
    if (a1 == 1919118966)
    {
      return @"CategoryNoLongerRoutable";
    }

    if (a1 == 1919181936)
    {
      return @"DefaultDevicesPersisted";
    }
  }

  else
  {
    switch(a1)
    {
      case 1919184754:
        return @"DeviceOwnershipRelinquished";
      case 1919185776:
        return @"AudioProcessingSettingsChange";
      case 1919186544:
        return @"DevicesPersisted";
    }
  }

  return 0;
}

uint64_t MX_FeatureFlags_IsPersonalDevicesMediaVolumeUpdateEnabled()
{
  if (MX_FeatureFlags_IsPersonalDevicesMediaVolumeUpdateEnabled_onceToken != -1)
  {
    MX_FeatureFlags_IsPersonalDevicesMediaVolumeUpdateEnabled_cold_1();
  }

  return MX_FeatureFlags_IsPersonalDevicesMediaVolumeUpdateEnabled_sIsPersonalDevicesMediaVolumeUpdateEnabled;
}

uint64_t PVMAreTwoRoutesIdentical(uint64_t *a1, uint64_t *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  result = FigCFEqual();
  if (result)
  {
    v7 = *a1;
    v8 = *a2;
    result = FigCFEqual();
    if (result)
    {
      v9 = a1[2];
      v10 = a2[2];
      result = FigCFEqual();
      if (result)
      {
        v11 = a1[3];
        v12 = a2[3];
        return FigCFEqual() != 0;
      }
    }
  }

  return result;
}

void cmsmUpdateEnableSharedAudioRouteSyntheticMute(int a1, int a2, int a3, int a4, int a5, int a6)
{
  v17 = *MEMORY[0x1E69E9840];
  FigSimpleMutexLock();
  v12 = HIBYTE(word_1EB75E0E0);
  if (a6)
  {
    if (CMSMDeviceState_RingerIsOn(1) && word_1EB75E0E0)
    {
      v13 = 1;
      HIBYTE(word_1EB75E0E0) = 1;
    }

    else
    {
      v13 = HIBYTE(word_1EB75E0E0);
    }

LABEL_10:
    FigSimpleMutexUnlock();
    if (v12 != v13)
    {
      cmsUpdateMuteStatus(0);
      if (dword_1EB75DE40)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }

    v15 = *MEMORY[0x1E69E9840];
    return;
  }

  if (a2 | a1 | a3 || a4 != 1919184754 && a5)
  {
    v13 = 0;
    HIBYTE(word_1EB75E0E0) = 0;
    goto LABEL_10;
  }

  v16 = *MEMORY[0x1E69E9840];

  FigSimpleMutexUnlock();
}

void cmsmUpdateInEarBasedPlaybackState(unsigned int BTPortForNowPlayingApp, int a2, int a3)
{
  v53 = *MEMORY[0x1E69E9840];
  if (CMSMVAUtility_IsBluetoothSharingSessionEnabled(0))
  {
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    goto LABEL_7;
  }

  CurrentOutputPortAtIndex = CMSMUtility_GetCurrentOutputPortAtIndex(0);
  if (a3)
  {
    if (dword_1EB75DE40)
    {
      v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    cmsmUpdateInEarBasedPlaybackState_sAudioPausedOnBudsOutOfEar = 0;

    cmsmUpdateInEarBasedPlaybackState_sTimestampWhenNoBudWasInEar = 0;
    cmsmUpdateInEarBasedPlaybackState_sPortForWhichLastUpdateWasReceived = 0;
    if (cmsmUpdateInEarBasedPlaybackState_sNowPlayingDisplayIDWhenPaused)
    {
      CFRelease(cmsmUpdateInEarBasedPlaybackState_sNowPlayingDisplayIDWhenPaused);
      cmsmUpdateInEarBasedPlaybackState_sNowPlayingDisplayIDWhenPaused = 0;
    }

    if (CurrentOutputPortAtIndex && vaeDoesBTPortSupportInEarDetection(CurrentOutputPortAtIndex))
    {
      CurrentAudioRouteInEarStatus = cmsmGetCurrentAudioRouteInEarStatus(CurrentOutputPortAtIndex);
      cmsmUpdateInEarBasedPlaybackState_sAudioRouteInEarStatus = CurrentAudioRouteInEarStatus;
      if (CurrentAudioRouteInEarStatus == 3)
      {
        [+[MX_BannerManager sharedInstance](MX_BannerManager cleanupBanners];
      }

      else if (CurrentAudioRouteInEarStatus == 5)
      {
        if (dword_1EB75DE40)
        {
          v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        cmsmUpdateInEarBasedPlaybackState_sAudioRouteInEarStatus = 2;
      }
    }

    goto LABEL_7;
  }

  if (!BTPortForNowPlayingApp)
  {
    BTPortForNowPlayingApp = CMSMNP_GetBTPortForNowPlayingApp();
    v10 = CMSMNP_CopyNowPlayingAppSession();
    v11 = CMSMUtility_CopyCurrentRouteTypes();
    if (a2 && !BTPortForNowPlayingApp && FigCFArrayContainsValue() && v10)
    {
      v12 = cmsmGetCurrentAudioRouteInEarStatus(CurrentOutputPortAtIndex);
      cmsmUpdateInEarBasedPlaybackState_sAudioRouteInEarStatus = v12;
      if (v12 == 3)
      {
        [+[MX_BannerManager sharedInstance](MX_BannerManager cleanupBanners];
      }

      else if (v12 == 5)
      {
        if (dword_1EB75DE40)
        {
          v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        cmsmUpdateInEarBasedPlaybackState_sAudioRouteInEarStatus = 2;
      }
    }

    if (v11)
    {
      CFRelease(v11);
    }
  }

  if (vaeDoesBTPortSupportInEarDetection(BTPortForNowPlayingApp))
  {
    if (a2)
    {
      if (CMSMNP_IsNowPlayingAppPlayingToPort(BTPortForNowPlayingApp))
      {
        if (dword_1EB75DE40)
        {
          v16 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        cmsmUpdateInEarBasedPlaybackState_sAudioPausedOnBudsOutOfEar = 1;

        cmsmUpdateInEarBasedPlaybackState_sTimestampWhenNoBudWasInEar = objc_alloc_init(MEMORY[0x1E695DF00]);
        cmsmUpdateInEarBasedPlaybackState_sPortForWhichLastUpdateWasReceived = BTPortForNowPlayingApp;
        v23 = cmsmUpdateInEarBasedPlaybackState_sNowPlayingDisplayIDWhenPaused;
        v24 = [+[MXNowPlayingAppManager sharedInstance](MXNowPlayingAppManager nowPlayingAppDisplayID];
        cmsmUpdateInEarBasedPlaybackState_sNowPlayingDisplayIDWhenPaused = v24;
        if (v24)
        {
          CFRetain(v24);
        }

        if (v23)
        {
          CFRelease(v23);
        }
      }

      goto LABEL_7;
    }

    v21 = cmsmGetCurrentAudioRouteInEarStatus(BTPortForNowPlayingApp);
    if (dword_1EB75DE40)
    {
      v22 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (v21 == 3)
    {
      [+[MX_BannerManager sharedInstance](MX_BannerManager cleanupBanners];
    }

    if (BTPortForNowPlayingApp == CurrentOutputPortAtIndex)
    {
      if (v21 == 5 && cmsmUpdateInEarBasedPlaybackState_sAudioRouteInEarStatus == 1)
      {
        if (dword_1EB75DE40)
        {
          v25 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
          v21 = 1;
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        else
        {
          v21 = 1;
        }
      }

      else if (v21 == 5 && cmsmUpdateInEarBasedPlaybackState_sAudioRouteInEarStatus == 3)
      {
        if (dword_1EB75DE40)
        {
          v26 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v21 = 2;
      }
    }

    if (v21 == cmsmUpdateInEarBasedPlaybackState_sAudioRouteInEarStatus)
    {
      goto LABEL_122;
    }

    if (dword_1EB75DE40)
    {
      v28 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (BTPortForNowPlayingApp == CurrentOutputPortAtIndex)
    {
      v30 = cmsmUpdateInEarBasedPlaybackState_sAudioRouteInEarStatus == 2 || cmsmUpdateInEarBasedPlaybackState_sAudioRouteInEarStatus == 4;
      if (v21 == 1 && v30)
      {
        if (dword_1EB75DE40)
        {
          v31 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        if (cmsmUpdateInEarBasedPlaybackState_sAudioPausedOnBudsOutOfEar == 1 && cmsmUpdateInEarBasedPlaybackState_sPortForWhichLastUpdateWasReceived == CurrentOutputPortAtIndex)
        {
          v39 = [+[MXNowPlayingAppManager sharedInstance](MXNowPlayingAppManager nowPlayingAppDisplayID];
          if ([(NSString *)v39 isEqualToString:cmsmUpdateInEarBasedPlaybackState_sNowPlayingDisplayIDWhenPaused])
          {
            if (dword_1EB75DE40)
            {
              v40 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            cmsmSendCommandToMediaRemote([+[MXNowPlayingAppManager nowPlayingAppDisplayID:v51] sharedInstance];
          }
        }

        cmsmUpdateInEarBasedPlaybackState_sAudioPausedOnBudsOutOfEar = 0;

        cmsmUpdateInEarBasedPlaybackState_sTimestampWhenNoBudWasInEar = 0;
        cmsmUpdateInEarBasedPlaybackState_sPortForWhichLastUpdateWasReceived = 0;
        if (cmsmUpdateInEarBasedPlaybackState_sNowPlayingDisplayIDWhenPaused)
        {
          CFRelease(cmsmUpdateInEarBasedPlaybackState_sNowPlayingDisplayIDWhenPaused);
          cmsmUpdateInEarBasedPlaybackState_sNowPlayingDisplayIDWhenPaused = 0;
        }

        goto LABEL_122;
      }

      if (cmsmUpdateInEarBasedPlaybackState_sAudioRouteInEarStatus != 3)
      {
        if (cmsmUpdateInEarBasedPlaybackState_sAudioRouteInEarStatus == 1)
        {
          if (v21 == 4)
          {
LABEL_89:
            if (dword_1EB75DE40)
            {
              v32 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            if (CMSMNP_IsNowPlayingAppPlayingToPort(CurrentOutputPortAtIndex))
            {
              v44 = CMSMNP_CopyNowPlayingAppSession();
              [+[MXSessionManager sharedInstance](MXSessionManager cancelAnyInProgressRampIfNeeded:"cancelAnyInProgressRampIfNeeded:reason:" reason:v44, 2];

              if (dword_1EB75DE40)
              {
                v45 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT);
                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }

              cmsmSendCommandToMediaRemote([+[MXNowPlayingAppManager nowPlayingAppDisplayID:v51] sharedInstance];
              cmsmUpdateInEarBasedPlaybackState_sAudioPausedOnBudsOutOfEar = 1;
              cmsmUpdateInEarBasedPlaybackState_sPortForWhichLastUpdateWasReceived = CurrentOutputPortAtIndex;
              v46 = cmsmUpdateInEarBasedPlaybackState_sNowPlayingDisplayIDWhenPaused;
              v47 = [+[MXNowPlayingAppManager sharedInstance](MXNowPlayingAppManager nowPlayingAppDisplayID];
              cmsmUpdateInEarBasedPlaybackState_sNowPlayingDisplayIDWhenPaused = v47;
              if (v47)
              {
                CFRetain(v47);
              }

              if (v46)
              {
                CFRelease(v46);
              }
            }

            goto LABEL_122;
          }

          if (v21 != 3)
          {
            if (v21 == 2)
            {
              goto LABEL_89;
            }

LABEL_122:
            cmsmUpdateInEarBasedPlaybackState_sAudioRouteInEarStatus = v21;
            goto LABEL_7;
          }

          if (dword_1EB75DE40)
          {
            v42 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          if (CMSMNP_IsNowPlayingAppPlayingToPort(CurrentOutputPortAtIndex))
          {
            if (dword_1EB75DE40)
            {
              v48 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            cmsmSendCommandToMediaRemote([+[MXNowPlayingAppManager nowPlayingAppDisplayID:v51] sharedInstance];
            cmsmUpdateInEarBasedPlaybackState_sAudioPausedOnBudsOutOfEar = 1;
            cmsmUpdateInEarBasedPlaybackState_sPortForWhichLastUpdateWasReceived = CurrentOutputPortAtIndex;

            cmsmUpdateInEarBasedPlaybackState_sTimestampWhenNoBudWasInEar = objc_alloc_init(MEMORY[0x1E695DF00]);
            v49 = cmsmUpdateInEarBasedPlaybackState_sNowPlayingDisplayIDWhenPaused;
            v50 = [+[MXNowPlayingAppManager sharedInstance](MXNowPlayingAppManager nowPlayingAppDisplayID];
            cmsmUpdateInEarBasedPlaybackState_sNowPlayingDisplayIDWhenPaused = v50;
            if (v50)
            {
              CFRetain(v50);
            }

            if (v49)
            {
              CFRelease(v49);
            }
          }

LABEL_118:
          [+[MX_BannerManager sharedInstance](MX_BannerManager cleanupBanners:v51];
          goto LABEL_122;
        }

LABEL_93:
        if (v21 != 3)
        {
          goto LABEL_122;
        }

        if (dword_1EB75DE40)
        {
          v34 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        if (cmsmUpdateInEarBasedPlaybackState_sAudioPausedOnBudsOutOfEar == 1 && cmsmUpdateInEarBasedPlaybackState_sPortForWhichLastUpdateWasReceived == BTPortForNowPlayingApp)
        {
          if (dword_1EB75DE40)
          {
            v41 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          cmsmUpdateInEarBasedPlaybackState_sTimestampWhenNoBudWasInEar = 0;
          cmsmUpdateInEarBasedPlaybackState_sTimestampWhenNoBudWasInEar = objc_alloc_init(MEMORY[0x1E695DF00]);
        }

        goto LABEL_118;
      }
    }

    else if (cmsmUpdateInEarBasedPlaybackState_sAudioRouteInEarStatus != 3)
    {
      goto LABEL_93;
    }

    if (dword_1EB75DE40)
    {
      v33 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (cmsmUpdateInEarBasedPlaybackState_sAudioPausedOnBudsOutOfEar == 1 && cmsmUpdateInEarBasedPlaybackState_sPortForWhichLastUpdateWasReceived == BTPortForNowPlayingApp && BTPortForNowPlayingApp == CurrentOutputPortAtIndex)
    {
      v35 = [MEMORY[0x1E695DF00] now];
      [v35 timeIntervalSinceDate:cmsmUpdateInEarBasedPlaybackState_sTimestampWhenNoBudWasInEar];
      v37 = v36;
      if (dword_1EB75DE40)
      {
        v38 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v43 = [+[MXNowPlayingAppManager sharedInstance](MXNowPlayingAppManager nowPlayingAppDisplayID:v51];
      if ([(NSString *)v43 isEqualToString:cmsmUpdateInEarBasedPlaybackState_sNowPlayingDisplayIDWhenPaused]&& v37 <= 15.0)
      {
        cmsmSendCommandToMediaRemote([+[MXNowPlayingAppManager nowPlayingAppDisplayID] sharedInstance];
      }

      cmsmUpdateInEarBasedPlaybackState_sAudioPausedOnBudsOutOfEar = 0;

      cmsmUpdateInEarBasedPlaybackState_sTimestampWhenNoBudWasInEar = 0;
      cmsmUpdateInEarBasedPlaybackState_sPortForWhichLastUpdateWasReceived = 0;
      if (cmsmUpdateInEarBasedPlaybackState_sNowPlayingDisplayIDWhenPaused)
      {
        CFRelease(cmsmUpdateInEarBasedPlaybackState_sNowPlayingDisplayIDWhenPaused);
        cmsmUpdateInEarBasedPlaybackState_sNowPlayingDisplayIDWhenPaused = 0;
      }
    }

    goto LABEL_118;
  }

  if (a2 && cmsmUpdateInEarBasedPlaybackState_sPortForWhichLastUpdateWasReceived == CurrentOutputPortAtIndex && vaeDoesBTPortSupportInEarDetection(CurrentOutputPortAtIndex) && cmsmUpdateInEarBasedPlaybackState_sAudioRouteInEarStatus != 3 && cmsmUpdateInEarBasedPlaybackState_sAudioPausedOnBudsOutOfEar)
  {
    v17 = [MEMORY[0x1E695DF00] now];
    [v17 timeIntervalSinceDate:cmsmUpdateInEarBasedPlaybackState_sTimestampWhenNoBudWasInEar];
    v19 = v18;
    if (dword_1EB75DE40)
    {
      v20 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v27 = [+[MXNowPlayingAppManager sharedInstance](MXNowPlayingAppManager nowPlayingAppDisplayID:v51];
    if ([(NSString *)v27 isEqualToString:cmsmUpdateInEarBasedPlaybackState_sNowPlayingDisplayIDWhenPaused]&& v19 <= 15.0)
    {
      cmsmSendCommandToMediaRemote([+[MXNowPlayingAppManager nowPlayingAppDisplayID] sharedInstance];
    }

    cmsmUpdateInEarBasedPlaybackState_sAudioPausedOnBudsOutOfEar = 0;

    cmsmUpdateInEarBasedPlaybackState_sTimestampWhenNoBudWasInEar = 0;
    cmsmUpdateInEarBasedPlaybackState_sPortForWhichLastUpdateWasReceived = 0;
    if (cmsmUpdateInEarBasedPlaybackState_sNowPlayingDisplayIDWhenPaused)
    {
      CFRelease(cmsmUpdateInEarBasedPlaybackState_sNowPlayingDisplayIDWhenPaused);
      cmsmUpdateInEarBasedPlaybackState_sNowPlayingDisplayIDWhenPaused = 0;
    }
  }

LABEL_7:
  v9 = *MEMORY[0x1E69E9840];
}

id CMSMNP_CopyNowPlayingAppSession()
{
  v15 = *MEMORY[0x1E69E9840];
  v0 = [+[MXNowPlayingAppManager sharedInstance](MXNowPlayingAppManager nowPlayingAppPID];
  v1 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v11;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v10 + 1) + 8 * i);
        if (CMSUtility_SessionCanBeAndAllowedToBeNowPlayingApp(v6) && [v6 isActive] && objc_msgSend(v6, "isPlaying") && objc_msgSend(objc_msgSend(v6, "clientPID"), "intValue") == v0)
        {
          v7 = v6;
          goto LABEL_14;
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  v7 = 0;
LABEL_14:

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

id CMSMNP_GetBTPortForNowPlayingApp()
{
  v4 = 0;
  result = CMSMNP_CopyNowPlayingAppSession();
  if (result)
  {
    v1 = result;
    theArray = 0;
    FigRoutingManagerCopyPickedRouteDescriptorsForRoutingContext([result routingContextUUID], &theArray);
    if (theArray)
    {
      if (CFArrayGetCount(theArray) < 1)
      {
LABEL_7:
        if (theArray)
        {
          CFRelease(theArray);
          theArray = 0;
        }

        goto LABEL_9;
      }

      CFArrayGetValueAtIndex(theArray, 0);
      FigCFDictionaryGetInt32IfPresent();
      if (theArray)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
        if (CFDictionaryGetValue(ValueAtIndex, @"IsBTRoute") != *MEMORY[0x1E695E4D0])
        {
          v4 = 0;
        }

        goto LABEL_7;
      }
    }

LABEL_9:

    return v4;
  }

  return result;
}

uint64_t vaeDoesBTPortSupportInEarDetection(AudioObjectID a1)
{
  v9 = *MEMORY[0x1E69E9840];
  outData = 0;
  if (!a1)
  {
    goto LABEL_5;
  }

  *&inAddress.mSelector = 0x676C6F6270696564;
  inAddress.mElement = 0;
  ioDataSize = 4;
  if (AudioObjectGetPropertyData(a1, &inAddress, 0, 0, &ioDataSize, &outData))
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_5:
    v2 = 0;
    goto LABEL_6;
  }

  v2 = outData;
LABEL_6:
  v3 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t (*vaemAQMERestartIOFollowingRouteChange())(void)
{
  result = off_1EB75E048;
  if (off_1EB75E048)
  {
    return off_1EB75E048();
  }

  return result;
}

__CFArray *CMSMUtility_CopyCurrentInputRouteIdentifiers()
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  FigSimpleMutexLock();
  if (dword_1EB75E0CC)
  {
    v1 = 0;
    do
    {
      MXVW_GetCMSRouteInfoAt(qword_1EB75E0C0, v1, &v5);
      if (v6 && (v2 = vaeCopyDeviceIdentifierFromVADPort(v6)) != 0)
      {
        v3 = v2;
        CFArrayAppendValue(Mutable, v2);
        CFRelease(v3);
      }

      else
      {
        CFArrayAppendValue(Mutable, &stru_1F2890CF0);
      }

      ++v1;
    }

    while (v1 < dword_1EB75E0CC);
  }

  FigSimpleMutexUnlock();
  return Mutable;
}

__CFDictionary *vaemCreateDictionaryForActiveAudioRouteDidChange(int a1, const __CFArray *a2, const __CFArray *a3, const void *a4, const void *a5)
{
  valuePtr = a1;
  v10 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (a1 == 2)
  {
    if (a2)
    {
      if (CFArrayGetCount(a2) < 1)
      {
        LODWORD(a2) = 0;
      }

      else
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a2, 0);
        CFDictionarySetValue(Mutable, @"OutputDeviceDidChange_OldRoute", ValueAtIndex);
        if (CFEqual(ValueAtIndex, @"broadcast"))
        {
          v13 = 0;
        }

        else if (CFEqual(ValueAtIndex, @"Headphone") || CFEqual(ValueAtIndex, @"Headset"))
        {
          v18 = 0;
          if (CMSMUtility_IAPShouldPauseOnHeadphoneDisconnect(&v18))
          {
            v13 = v18;
          }

          else
          {
            v13 = 1;
          }
        }

        else
        {
          v13 = CFEqual(ValueAtIndex, @"HeadsetBT") == 0;
        }

        if (CMSMUtility_IsSharePlayCallSessionActive())
        {
          v13 = 0;
          valuePtr = 3;
        }

        LODWORD(a2) = !v13;
      }
    }
  }

  else
  {
    LODWORD(a2) = 1;
  }

  v14 = CFNumberCreate(v10, kCFNumberSInt32Type, &valuePtr);
  CFDictionarySetValue(Mutable, @"OutputDeviceDidChange_Reason", v14);
  if (v14)
  {
    CFRelease(v14);
  }

  if (a3 && CFArrayGetCount(a3) >= 1)
  {
    v15 = CFArrayGetValueAtIndex(a3, 0);
    CFDictionarySetValue(Mutable, @"OutputDeviceDidChange_NewRoute", v15);
  }

  if (a4)
  {
    CFDictionarySetValue(Mutable, @"ActiveAudioRouteDidChange_OldDetailedRoute", a4);
  }

  if (a5)
  {
    CFDictionarySetValue(Mutable, @"ActiveAudioRouteDidChange_NewDetailedRoute", a5);
  }

  v16 = MEMORY[0x1E695E4C0];
  if (!a2)
  {
    v16 = MEMORY[0x1E695E4D0];
  }

  CFDictionarySetValue(Mutable, @"ShouldPause", *v16);
  return Mutable;
}

__CFString *CMSMUtility_MapCMSRouteChangeReasonToString(unsigned int a1)
{
  if (a1 > 0xB)
  {
    return 0;
  }

  else
  {
    return off_1E7AEAFB0[a1];
  }
}

void CMSMUtility_UpdateAudioBehaviourForVoiceOverSessions()
{
  v13 = *MEMORY[0x1E69E9840];
  v0 = CMSMUtility_CopyCurrentRouteTypes();
  if (FigCFArrayContainsValue() || FigCFArrayContainsValue())
  {
    v1 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
    v8 = 0u;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v2 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v2)
    {
      v3 = v2;
      v4 = *v9;
      do
      {
        for (i = 0; i != v3; ++i)
        {
          if (*v9 != v4)
          {
            objc_enumerationMutation(v1);
          }

          v6 = *(*(&v8 + 1) + 8 * i);
          [v6 audioCategory];
          if (FigCFEqual())
          {
            cmsUpdateAudioBehavior(v6);
          }
        }

        v3 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v3);
    }
  }

  if (v0)
  {
    CFRelease(v0);
  }

  v7 = *MEMORY[0x1E69E9840];
}

uint64_t CMSMUtility_IsAnySessionPlayingToIndependentSystemMusicContext()
{
  v12 = *MEMORY[0x1E69E9840];
  v0 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v1 = [v0 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v1)
  {
    v2 = *v8;
    while (2)
    {
      for (i = 0; i != v1; ++i)
      {
        if (*v8 != v2)
        {
          objc_enumerationMutation(v0);
        }

        v4 = *(*(&v7 + 1) + 8 * i);
        if ([v4 isActive] && objc_msgSend(v4, "isPlaying") && FigRoutingManagerContextUtilities_IsContextSystemMusicAndIndependent(objc_msgSend(v4, "routingContextUUID")))
        {
          v1 = 1;
          goto LABEL_13;
        }
      }

      v1 = [v0 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v1)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  v5 = *MEMORY[0x1E69E9840];
  return v1;
}

_BYTE *FigRoutingManagerUtilities_UpdateIsRoutedToHandoff(char a1)
{
  result = FigRoutingManagerGetSharedManager();
  result[24] = a1;
  return result;
}

uint64_t FigRoutingManagerContextUtilities_CopySystemAudioInputContextUUID(uint64_t a1)
{
  if (a1)
  {
    if (routingContextUtilities_getSharedContextUtilities_sContextUtilitiesStateSetupOnce != -1)
    {
      FigRoutingManagerContextUtilities_PostNotificationToClientsOfContextWithUUIDAndItsFollowers_cold_1();
    }

    v2 = &routingContextUtilities_getSharedContextUtilities_contextState;
    v3 = &qword_1EB75CF98;
    if (!byte_1EB75CFA8)
    {
      v3 = 504;
    }

    v4 = *v3;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __FigRoutingManagerContextUtilities_CopySystemAudioInputContextUUID_block_invoke;
    v6[3] = &__block_descriptor_48_e5_v8__0l;
    if (!byte_1EB75CFA8)
    {
      v2 = 0;
    }

    v6[4] = a1;
    v6[5] = v2;
    MXDispatchSync("FigRoutingManagerContextUtilities_CopySystemAudioInputContextUUID", "FigRoutingManagerContextUtilities.m", 4668, 0, 0, v4, v6);
  }

  return 0;
}

__CFArray *CMSMUtility_CopyCurrentRouteSubtypes()
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  FigSimpleMutexLock();
  if (dword_1EB75E0C8)
  {
    v1 = 0;
    do
    {
      MXVW_GetCMSRouteInfoAt(qword_1EB75E0C0, v1, &v4);
      if (v5)
      {
        v2 = v5;
      }

      else
      {
        v2 = &stru_1F2890CF0;
      }

      CFArrayAppendValue(Mutable, v2);
      ++v1;
    }

    while (v1 < dword_1EB75E0C8);
  }

  FigSimpleMutexUnlock();
  return Mutable;
}

uint64_t CMSMDeviceState_DeviceHasExclaveCapability()
{
  if (CMSMDeviceState_DeviceHasExclaveCapability_once != -1)
  {
    CMSMDeviceState_DeviceHasExclaveCapability_cold_1();
  }

  return CMSMDeviceState_DeviceHasExclaveCapability_deviceHasExclaveCapability;
}

void FigRoutingManagerProcessVADRouteChange(int a1, uint64_t a2, const __CFArray *a3, const __CFArray *a4, const __CFArray *a5, uint64_t a6, uint64_t a7, int a8, unsigned __int8 a9, char a10, const void *a11)
{
  v15 = a1;
  v16 = a11;
  cf[16] = *MEMORY[0x1E69E9840];
  if (dword_1EB75DF20)
  {
    LODWORD(v96) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v15 = a1;
  }

  v18 = FigCFArrayContainsValue();
  FigRoutingManagerUtilities_UpdateIsRoutedToHandoff(v18);
  if (a8)
  {
    IsBluetoothSharingSessionEnabled = CMSMVAUtility_IsBluetoothSharingSessionEnabled(0);
    v21 = v15 != 1919842148 && IsBluetoothSharingSessionEnabled != 0;
    if (!a3 || v21)
    {
LABEL_16:
      if (!a5)
      {
        goto LABEL_39;
      }

      goto LABEL_17;
    }
  }

  else if (v15 != 1919842148 || !a3)
  {
    goto LABEL_16;
  }

  if (FigCFEqual())
  {
    goto LABEL_16;
  }

  v88 = a4;
  v22 = v15;
  cf[0] = 0;
  Count = CFArrayGetCount(a3);
  if (Count >= 1)
  {
    v24 = Count;
    v25 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a3, v25);
      CMSMUtility_CreateTokensFromDeviceUID(ValueAtIndex, 0, cf);
      if (FigCFEqual() || FigCFEqual())
      {
        break;
      }

      if (cf[0])
      {
        CFRelease(cf[0]);
        cf[0] = 0;
      }

      if (v24 == ++v25)
      {
        goto LABEL_38;
      }
    }

    v27 = CMSMUtility_CopyCurrentOutputPorts();
    v28 = v27;
    if (v27)
    {
      v29 = CFArrayGetCount(v27);
      if (v29 >= 1)
      {
        v30 = v29;
        for (i = 0; i != v30; ++i)
        {
          PortAtIndex = CMSMVAUtility_GetPortAtIndex(v28, i);
          if (vaeDoesPortSupportMultipleConnections(PortAtIndex) && ![+[MXAudioAccessoryServices isPortManaged:"isPortManaged:"]
          {
            CMSM_IDSConnection_AddPortToSharedAudioRoutePortIDs(PortAtIndex, 1, 1);
          }
        }
      }
    }

    if (cf[0])
    {
      CFRelease(cf[0]);
      cf[0] = 0;
    }

    if (v28)
    {
      CFRelease(v28);
    }
  }

LABEL_38:
  v15 = v22;
  a4 = v88;
  if (a5)
  {
LABEL_17:
    if (CFArrayGetCount(a5) >= 1)
    {
      CFArrayGetValueAtIndex(a5, 0);
    }
  }

LABEL_39:
  v92 = 0;
  FigRoutingManagerContextUtilities_CopySystemAudioInputContextUUID(&v92);
  v33 = 0;
  v34 = 0;
  if ([+[MXSessionManager doesActiveSessionHaveInput] sharedInstance]
  {
    v33 = FigRoutingManagerCopyEndpointsFromRouteIdentifiers(a4, v92);
    v34 = FigEndpointDescriptorUtility_CopyDescriptorsForEndpoints(v33, 0);
    v96 = 0;
    FigRoutingManagerCopyPickedEndpointForRoutingContext(v92, &v96);
    if (dword_1EB75DF20)
    {
      v35 = v15;
      *type = 0;
      v91[0] = OS_LOG_TYPE_DEFAULT;
      v36 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v37 = *type;
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        v38 = v37;
      }

      else
      {
        v38 = v37 & 0xFFFFFFFE;
      }

      if (v38)
      {
        *v97 = 136316419;
        *&v97[4] = "FigRoutingManagerProcessVADRouteChange";
        v98 = 2114;
        v99 = v92;
        v100 = 2114;
        v101 = v33;
        v102 = 2114;
        v103 = v34;
        v104 = 2113;
        v105 = v96;
        v106 = 2114;
        v107 = a4;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v15 = v35;
      v16 = a11;
    }

    if (v96)
    {
      CFRelease(v96);
    }
  }

  FigRoutingManagerContextUtilities_SetPickedEndpoints(v92, v33, @"configUpdateReasonEndedBottomUpRouteChange", 0, v34);
  if (v33)
  {
    CFRelease(v33);
  }

  if (v92)
  {
    CFRelease(v92);
  }

  if (v34)
  {
    CFRelease(v34);
  }

  if (a8)
  {
    v39 = FigRoutingManagerCopyEndpointsFromRouteIdentifiers(a3, v16);
    v40 = v39;
    if (v39 && CFArrayGetCount(v39) >= 1 && (v41 = CFArrayGetValueAtIndex(v40, 0)) != 0)
    {
      v42 = CFRetain(v41);
    }

    else
    {
      v42 = 0;
    }

    cf[0] = 0;
    FigRoutingManagerCopyPickedEndpointForRoutingContext(v16, cf);
    if (routingManager_doesEndpointRepresentBluetoothRoute(cf[0]) || routingManager_doesEndpointRepresentBluetoothRoute(v42))
    {
      routingManager_updateSmartRoutingBackoffTimer(cf[0], v42, a8);
    }

    v43 = FigRoutingManagerUtilities_DidRouteChangeToBuiltIn(v42);
    FigPredictedRouting_UpdatePredictedRouteForCurrentRouteChanged(v43);
    if (cf[0])
    {
      CFRelease(cf[0]);
      cf[0] = 0;
    }

    if (v42)
    {
      CFRelease(v42);
    }

    if (v40)
    {
      CFRelease(v40);
    }

    if (v43)
    {
      CMSM_IDSServer_StartAutomaticOwnershipTransferToPhoneTimer();
    }

    if (FigCFEqual() || FigRoutingManagerUtilities_IsEndpointTypeVehicle(cf[0]) || routingManager_doesVAEndpointRepresentAirPlayDevice(cf[0]) && MX_FeatureFlags_IsBufferedBadgingAndCapabilitiesEnabled())
    {
      CMSMUtility_UpdateBadgeType();
    }

    goto LABEL_175;
  }

  if (FigRoutingManagerContextUtilities_GetContextType(v16) == 3)
  {
    if (FigCFEqual() && FigCFEqual())
    {
      if (dword_1EB75DF20)
      {
        LODWORD(v96) = 0;
        type[0] = OS_LOG_TYPE_DEFAULT;
        v44 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v45 = v96;
        if (os_log_type_enabled(v44, type[0]))
        {
          v46 = v45;
        }

        else
        {
          v46 = v45 & 0xFFFFFFFE;
        }

        if (v46)
        {
          *v97 = 136315138;
          *&v97[4] = "FigRoutingManagerProcessVADRouteChange";
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      goto LABEL_175;
    }

    *v91 = 0;
    FigRoutingManagerContextUtilities_CopySystemAudioContextUUID(v91);
    if (dword_1EB75DF20)
    {
      LODWORD(v96) = 0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      v47 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v48 = v96;
      if (os_log_type_enabled(v47, type[0]))
      {
        v49 = v48;
      }

      else
      {
        v49 = v48 & 0xFFFFFFFE;
      }

      if (v49)
      {
        *v97 = 136315138;
        *&v97[4] = "FigRoutingManagerProcessVADRouteChange";
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v16 = *v91;
  }

  else
  {
    *v91 = 0;
    FigRoutingManagerContextUtilities_CopySystemAudioContextUUID(v91);
  }

  v50 = FigRoutingManagerCopyEndpointsFromRouteIdentifiers(a3, v16);
  v90 = 0;
  FigRoutingManagerCopyPickedEndpointForRoutingContext(v16, &v90);
  if (v15 == 1919904885 && FigCFEqual() && !CMSMUtility_IsCarPlayNowPlayingStateSaved())
  {
    CMSMNP_SaveCarPlayNowPlayingState();
  }

  if (v16)
  {
    v51 = CFRetain(v16);
  }

  else
  {
    v51 = 0;
  }

  v89 = v51;
  if (!FigCFEqual() || !FigCFEqual())
  {
    if (a3 && CFArrayGetCount(a3) >= 1)
    {
      v52 = CFArrayGetValueAtIndex(a3, 0);
      if (!v50)
      {
        goto LABEL_113;
      }
    }

    else
    {
      v52 = 0;
      if (!v50)
      {
        goto LABEL_113;
      }
    }

    if (CFArrayGetCount(v50) >= 1)
    {
      v53 = CFArrayGetValueAtIndex(v50, 0);
      if (v53)
      {
        v54 = CFRetain(v53);
LABEL_114:
        if (MX_FeatureFlags_IsMuteEnabled())
        {
          v55 = *MEMORY[0x1E69626D8];
          if (FigRoutingManagerIsEndpointOfType(v54))
          {
            cf[0] = 0;
            v56 = *MEMORY[0x1E695E480];
            CMBaseObject = FigEndpointGetCMBaseObject();
            v58 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v58)
            {
              v58(CMBaseObject, 0x1F289D050, v56, cf);
            }

            if (FigCFEqual() || FigCFEqual() || FigCFEqual())
            {
              v59 = v16;
              v60 = v15;
              *v97 = 0;
              v61 = *MEMORY[0x1E6962170];
              v62 = FigEndpointGetCMBaseObject();
              v63 = *(*(CMBaseObjectGetVTable() + 8) + 48);
              if (v63)
              {
                v63(v62, v61, v56, v97);
                v64 = *v97;
              }

              else
              {
                v64 = 0;
              }

              if (v64 == *MEMORY[0x1E695E4D0])
              {
                v65 = FigEndpointGetCMBaseObject();
                v66 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                if (v66)
                {
                  v66(v65, v61, *MEMORY[0x1E695E4C0]);
                }

                v64 = *v97;
              }

              if (v64)
              {
                CFRelease(v64);
              }

              v15 = v60;
              v16 = v59;
            }

            if (cf[0])
            {
              CFRelease(cf[0]);
            }
          }
        }

        if (v15 == 1919970403 && (routingManager_doesEndpointRepresentBluetoothRoute(v90) || routingManager_doesEndpointRepresentBluetoothRoute(v54)))
        {
          routingManager_updateSmartRoutingBackoffTimer(v90, v54, 0);
        }

        v67 = *MEMORY[0x1E69626A8];
        if (FigRoutingManagerIsEndpointOfType(v90) && !(FigEndpointUtility_EndpointPredicate_EqualsAudioStreamID() | a9))
        {
          cf[0] = 0;
          FigRoutingManagerContextUtilities_GetActivationSeedForEndpoint(v16, v90, cf);
          if (v89)
          {
            CFRelease(v89);
            v89 = 0;
          }

          FigRoutingManagerContextUtilities_CopyRoutingContextUUIDForActivatedEndpoint(v90, cf[0], &v89);
          FigRoutingManagerLogEndpointID(@"ProcessVADRouteChange: Going to deactivate endpoint with name=", v90, @"because new device route does not correspond to the currently picked endpoint", 1);
          FigRoutingManager_iOSDeactivateEndpoint(v90, cf[0], 1);
        }

        ContextType = FigRoutingManagerContextUtilities_GetContextType(v89);
        v69 = FigEndpointDescriptorUtility_CopyDescriptorsForEndpoints(v50, 0);
        if (ContextType != 1)
        {
          FigRoutingManagerContextUtilities_SetPickedEndpoints(v89, 0, @"configUpdateReasonEndedBottomUpRouteChange", 0, 0);
          FigRoutingManagerContextUtilities_SetPickedEndpoints(*v91, v50, @"configUpdateReasonEndedBottomUpRouteChange", 0, v69);
LABEL_155:
          v70 = FigRoutingManagerUtilities_DidRouteChangeToBuiltIn(v54);
          FigPredictedRouting_UpdatePredictedRouteForCurrentRouteChanged(v70);
          if (FigCFEqual() || FigRoutingManagerUtilities_IsEndpointTypeVehicle(v90) || (routingManager_doesVAEndpointRepresentAirPlayDevice(v54) || routingManager_doesVAEndpointRepresentAirPlayDevice(v90)) && MX_FeatureFlags_IsBufferedBadgingAndCapabilitiesEnabled())
          {
            CMSMUtility_UpdateBadgeType();
          }

          if (v70)
          {
            CMSM_IDSServer_StartAutomaticOwnershipTransferToPhoneTimer();
          }

          if (v54)
          {
            CFRelease(v54);
          }

          if (v69)
          {
            CFRelease(v69);
          }

          goto LABEL_167;
        }

        if (routingManager_doesVAEndpointRepresentAirPlayDevice(v54))
        {
          if (v54)
          {
            CFRelease(v54);
          }

          v54 = FigRoutingManagerCopyEndpointWithDeviceID(v52, 1, *MEMORY[0x1E69618D0], v89);
          FigRoutingManagerContextUtilities_SetPickedEndpointAsAnArray(v89, v54, @"configUpdateReasonEndedBottomUpRouteChange", 0);
        }

        else
        {
          FigRoutingManagerContextUtilities_SetPickedEndpoints(v89, v50, @"configUpdateReasonEndedBottomUpRouteChange", 0, v69);
        }

        v96 = 0;
        FigRoutingManagerContextUtilities_CopySystemMusicContextUUID(&v96);
        *type = 0;
        FigRoutingManagerContextUtilities_CopySystemAudioContextUUID(type);
        if (v15 == 1919842148 && !FigRoutingContextUtilities_IsFollowingAnotherContext(v96))
        {
          if (routingManager_isSystemMusicOnlyRoutedToLocalHomeTheaterEndpoint())
          {
            v72 = *MEMORY[0x1E69626D8];
            if (FigRoutingManagerIsEndpointOfType(v54) && FigRoutingManagerIsEndpointWHAGroupable(v54))
            {
              if (dword_1EB75DF20)
              {
                v94 = 0;
                v93 = OS_LOG_TYPE_DEFAULT;
                v73 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v74 = v94;
                if (os_log_type_enabled(v73, v93))
                {
                  v75 = v74;
                }

                else
                {
                  v75 = v74 & 0xFFFFFFFE;
                }

                if (v75)
                {
                  *v97 = 136315138;
                  *&v97[4] = "routingManager_handleBottomUpRouteChange";
                  _os_log_send_and_compose_impl();
                }

                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }
            }

            else
            {
              if (dword_1EB75DF20)
              {
                v94 = 0;
                v93 = OS_LOG_TYPE_DEFAULT;
                v76 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v77 = v94;
                if (os_log_type_enabled(v76, v93))
                {
                  v78 = v77;
                }

                else
                {
                  v78 = v77 & 0xFFFFFFFE;
                }

                if (v78)
                {
                  *v97 = 136315138;
                  *&v97[4] = "routingManager_handleBottomUpRouteChange";
                  _os_log_send_and_compose_impl();
                }

                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }

              FigRoutingContextUtilities_SetLeaderToSystemAudioContext(v96, @"configUpdateReasonEndedBottomUpRouteChange");
            }

            goto LABEL_151;
          }

          if (a10)
          {
            if (!FigRoutingManagerUtilities_IsEndpointTypeVehicle(v54))
            {
              v79 = *MEMORY[0x1E69626D8];
              if (FigRoutingManagerIsEndpointOfType(v54) && !FigRoutingManagerIsEndpointWHAGroupable(v54))
              {
                if (dword_1EB75DF20)
                {
                  v94 = 0;
                  v93 = OS_LOG_TYPE_DEFAULT;
                  v80 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                  v81 = v94;
                  if (os_log_type_enabled(v80, v93))
                  {
                    v82 = v81;
                  }

                  else
                  {
                    v82 = v81 & 0xFFFFFFFE;
                  }

                  if (v82)
                  {
                    *v97 = 136315138;
                    *&v97[4] = "routingManager_handleBottomUpRouteChange";
                    _os_log_send_and_compose_impl();
                  }

                  fig_log_call_emit_and_clean_up_after_send_and_compose();
                }

                FigRoutingManagerAggregateRemoveLocalAirPlayEndpoint();
              }

              goto LABEL_151;
            }
          }

          else
          {
            v83 = *MEMORY[0x1E69626D8];
            if ((!FigRoutingManagerIsEndpointOfType(v54) || FigRoutingManagerIsEndpointWHAGroupable(v54)) && !FigRoutingManagerUtilities_IsEndpointTypeVehicle(v54))
            {
              goto LABEL_151;
            }
          }

          SharedManager = FigRoutingManagerGetSharedManager();
          if (v96)
          {
            CFRetain(v96);
            v85 = v96;
          }

          else
          {
            v85 = 0;
          }

          v86 = *(SharedManager + 1);
          cf[0] = MEMORY[0x1E69E9820];
          cf[1] = 3221225472;
          cf[2] = __routingManager_handleBottomUpRouteChange_block_invoke;
          cf[3] = &__block_descriptor_40_e5_v8__0l;
          cf[4] = v85;
          MXDispatchAsync("routingManager_handleBottomUpRouteChange", "FigRoutingManager_iOS.m", 512, 0, 0, v86, cf);
        }

LABEL_151:
        if (*type)
        {
          CFRelease(*type);
          *type = 0;
        }

        if (v96)
        {
          CFRelease(v96);
        }

        goto LABEL_155;
      }
    }

LABEL_113:
    v54 = 0;
    goto LABEL_114;
  }

LABEL_167:
  if (v89)
  {
    CFRelease(v89);
    v89 = 0;
  }

  if (v90)
  {
    CFRelease(v90);
    v90 = 0;
  }

  if (v50)
  {
    CFRelease(v50);
  }

  if (*v91)
  {
    CFRelease(*v91);
  }

LABEL_175:
  v71 = *MEMORY[0x1E69E9840];
}

__CFArray *FigRoutingManagerCopyEndpointsFromRouteIdentifiers(const __CFArray *a1, uint64_t a2)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (a1)
  {
    Count = CFArrayGetCount(a1);
    if (Count >= 1)
    {
      v6 = Count;
      v7 = 0;
      v8 = *MEMORY[0x1E69618F8];
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a1, v7);
        v10 = FigRoutingManagerCopyEndpointWithDeviceID(ValueAtIndex, 0, v8, a2);
        if (v10)
        {
          v11 = v10;
          CFArrayAppendValue(Mutable, v10);
          CFRelease(v11);
        }

        ++v7;
      }

      while (v6 != v7);
    }
  }

  return Mutable;
}

BOOL CMSUtility_AreRoutingContextsEquivalent(uint64_t a1, uint64_t a2)
{
  if (!FigCFEqual())
  {
    [+[MXSessionManager sharedInstance](MXSessionManager systemMirroringRoutingContextUUID];
    if (FigCFEqual())
    {
      if (FigCFEqual())
      {
        return 1;
      }

      if (FigCFEqual())
      {
        return FigRoutingManagerContextUtilities_IsContextSystemMusicAndIndependent(a2) == 0;
      }

      return 0;
    }

    if (FigCFEqual())
    {
      return FigCFEqual() != 0;
    }

    return 1;
  }

  if (FigCFEqual())
  {
    return 1;
  }

  if (!FigCFEqual())
  {
    return 0;
  }

  if (!FigRoutingManagerContextUtilities_IsContextSystemMusicAndIndependent(a2))
  {
    return 1;
  }

  cf = 0;
  FigRoutingManagerContextUtilities_CopyPickedEndpointAtIndex(a2, 0, &cf);
  v3 = *MEMORY[0x1E69626B0];
  if (FigRoutingManagerIsEndpointOfType(cf))
  {
    theArray = 0;
    CMBaseObject = FigEndpointGetCMBaseObject();
    VTable = CMBaseObjectGetVTable();
    v6 = *(*(VTable + 8) + 48);
    v8 = 1;
    if (v6)
    {
      v7 = *(VTable + 8) + 48;
      v6(CMBaseObject, *MEMORY[0x1E6962270], *MEMORY[0x1E695E480], &theArray);
      if (theArray)
      {
        if (CFArrayGetCount(theArray))
        {
          v8 = 0;
        }
      }
    }

    if (theArray)
    {
      CFRelease(theArray);
    }
  }

  else
  {
    v8 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v8;
}

uint64_t cmsmCreateRouteDescriptionForFigAirPlayEndpoints(uint64_t a1, uint64_t a2, __CFDictionary **a3)
{
  result = 4294954315;
  if (!a1 || !a3)
  {
    return result;
  }

  v6 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 4294954314;
  }

  v8 = Mutable;
  v58 = 0;
  value = 0;
  CMBaseObject = FigEndpointGetCMBaseObject();
  v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  v11 = MEMORY[0x1E695E4D0];
  if (!v10 || (v10(CMBaseObject, *MEMORY[0x1E69620F8], v6, &v58), !v58))
  {
    Copy = 0;
    goto LABEL_9;
  }

  v12 = CFStringCreateWithFormat(v6, 0, @"%@-%@", v58, 0x1F2897C10);
  v13 = CFStringCreateWithFormat(v6, 0, @"%@-%@", v58, 0x1F2897C30);
  if (FigCFEqual())
  {
    Copy = CFStringCreateCopy(v6, v12);
    CFDictionarySetValue(v8, @"RouteUID", v12);
    v15 = @"MirroringMode";
    v16 = @"MirroringMode_None";
    v17 = v8;
    goto LABEL_78;
  }

  if (FigCFEqual())
  {
    Copy = CFStringCreateCopy(v6, v13);
    CFDictionarySetValue(v8, @"RouteUID", v13);
    v48 = @"MirroringMode_Default";
    v49 = v8;
LABEL_77:
    CFDictionarySetValue(v49, @"MirroringMode", v48);
    v50 = *v11;
    CFDictionarySetValue(v8, @"RouteSupportsAirPlayScreen", *v11);
    CFDictionarySetValue(v8, @"RouteSupportsAirPlaySlideshow", v50);
    v15 = @"RouteSupportsAirPlayPhoto";
    v17 = v8;
    v16 = v50;
LABEL_78:
    CFDictionarySetValue(v17, v15, v16);
    if (!v12)
    {
      goto LABEL_80;
    }

    goto LABEL_79;
  }

  if (FigCFEqual())
  {
    Copy = CFStringCreateCopy(v6, v13);
    CFDictionarySetValue(v8, @"RouteUID", v13);
    v49 = v8;
    v48 = @"MirroringMode_SecondScreen";
    goto LABEL_77;
  }

  Copy = 0;
  if (v12)
  {
LABEL_79:
    CFRelease(v12);
  }

LABEL_80:
  if (v13)
  {
    CFRelease(v13);
  }

LABEL_9:
  v18 = FigEndpointGetCMBaseObject();
  v19 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v19)
  {
    v19(v18, *MEMORY[0x1E69621E8], v6, &value);
  }

  if (value)
  {
    CFDictionarySetValue(v8, @"RouteName", value);
  }

  CFDictionarySetValue(v8, @"AVAudioRouteName", @"AirTunes");
  v20 = *v11;
  CFDictionarySetValue(v8, @"RouteSupportsAudio", *v11);
  v21 = *MEMORY[0x1E695E4C0];
  CFDictionarySetValue(v8, @"IsBTRoute", *MEMORY[0x1E695E4C0]);
  CFDictionarySetValue(v8, @"RouteSupportsAirPlayAudio", v20);
  CFDictionarySetValue(v8, @"IsPreferredExternalRoute", v21);
  CFDictionarySetValue(v8, @"PreferredExternalRouteDetails_IsActive", v21);
  CFDictionarySetValue(v8, @"PreferredExternalRouteDetails_InEarDetectSupported", v21);
  cf = 0;
  v22 = FigEndpointGetCMBaseObject();
  v23 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v23)
  {
    v23(v22, *MEMORY[0x1E6961FD0], v6, &cf);
  }

  v24 = *MEMORY[0x1E69616C0];
  if (FigCFEqual())
  {
    CFDictionarySetValue(v8, @"PortHasPassword", v20);
  }

  else
  {
    v27 = *MEMORY[0x1E69616B8];
    v28 = FigCFEqual();
    CFDictionarySetValue(v8, @"PortHasPassword", v21);
    if (v28)
    {
      v25 = v8;
      v26 = v20;
      goto LABEL_21;
    }
  }

  v25 = v8;
  v26 = v21;
LABEL_21:
  CFDictionarySetValue(v25, @"RouteRequiresAirPlayPIN", v26);
  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if ((FigEndpointGetSupportedFeatures() & 4) != 0)
  {
    v29 = v20;
  }

  else
  {
    v29 = v21;
  }

  CFDictionarySetValue(v8, @"RouteSupportsAirPlayVideo", v29);
  v56 = v21;
  v30 = FigEndpointGetCMBaseObject();
  v31 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v31)
  {
    v31(v30, *MEMORY[0x1E6961F70], v6, &v56);
  }

  if (v56)
  {
    CFDictionarySetValue(v8, @"AirPlayRouteHasCloudConnectivity", v56);
  }

  IsEndpointSelfOnlyLocalAirPlay = FigRoutingManagerIsEndpointSelfOnlyLocalAirPlay(a1);
  v33 = kMXSessionPickableRouteType_Default;
  if (!IsEndpointSelfOnlyLocalAirPlay)
  {
    v33 = kMXSessionPickableRouteType_Wireless;
  }

  CFDictionarySetValue(v8, @"RouteType", *v33);
  v34 = CFDictionaryCreateMutable(v6, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (v34)
  {
    v35 = v34;
    if (value)
    {
      CFDictionarySetValue(v34, @"name", value);
    }

    if (Copy)
    {
      CFDictionarySetValue(v35, @"uid", Copy);
    }

    if (v58)
    {
      CFDictionarySetValue(v35, @"deviceID", v58);
    }

    v55 = 0;
    v36 = FigEndpointGetCMBaseObject();
    v37 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v37)
    {
      v37(v36, *MEMORY[0x1E69621D8], v6, &v55);
    }

    if (v55)
    {
      CFDictionarySetValue(v35, @"model", v55);
      if (v55)
      {
        CFRelease(v55);
        v55 = 0;
      }
    }

    v54 = 0;
    v38 = FigEndpointGetCMBaseObject();
    v39 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v39)
    {
      v39(v38, *MEMORY[0x1E69622D0], v6, &v54);
    }

    if (v54)
    {
      CFDictionarySetValue(v35, @"systemFlags", v54);
      if (v54)
      {
        CFRelease(v54);
        v54 = 0;
      }
    }

    v53 = 0;
    v40 = FigEndpointGetCMBaseObject();
    v41 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v41)
    {
      v41(v40, *MEMORY[0x1E6961FA0], v6, &v53);
      if (v53)
      {
        CFDictionarySetValue(v35, @"AirPlayVodkaVersion", v53);
        if (v53)
        {
          CFRelease(v53);
          v53 = 0;
        }
      }
    }

    v52 = 0;
    v42 = FigEndpointGetCMBaseObject();
    v43 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v43)
    {
      v43(v42, *MEMORY[0x1E69622F0], v6, &v52);
    }

    v44 = *MEMORY[0x1E69626A0];
    if (FigCFEqual())
    {
      LOBYTE(valuePtr) = 2;
      v45 = CFNumberCreate(v6, kCFNumberSInt8Type, &valuePtr);
      CFDictionarySetValue(v35, @"transportType", v45);
      if (v45)
      {
        CFRelease(v45);
      }
    }

    if (v52)
    {
      CFRelease(v52);
      v52 = 0;
    }

    valuePtr = 0;
    v46 = FigEndpointGetCMBaseObject();
    v47 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v47)
    {
      v47(v46, *MEMORY[0x1E69621B0], v6, &valuePtr);
      if (valuePtr)
      {
        CFDictionarySetValue(v35, @"MACAddress", valuePtr);
        if (valuePtr)
        {
          CFRelease(valuePtr);
          valuePtr = 0;
        }
      }
    }

    CFDictionarySetValue(v8, @"AirPlayPortExtendedInfo", v35);
    CFRelease(v35);
  }

  *a3 = v8;
  if (v58)
  {
    CFRelease(v58);
    v58 = 0;
  }

  if (value)
  {
    CFRelease(value);
    value = 0;
  }

  if (Copy)
  {
    CFRelease(Copy);
  }

  return 0;
}

uint64_t MX_FeatureFlags_IsSynchronizeSiriAlarmVolumesToMediaVolumeEnabled()
{
  if (MX_FeatureFlags_IsSynchronizeSiriAlarmVolumesToMediaVolumeEnabled_onceToken != -1)
  {
    MX_FeatureFlags_IsSynchronizeSiriAlarmVolumesToMediaVolumeEnabled_cold_1();
  }

  return MX_FeatureFlags_IsSynchronizeSiriAlarmVolumesToMediaVolumeEnabled_sIsSynchronizeSiriAlarmVolumesToMediaVolumeEnabled;
}

BOOL vaemCurrentRouteHasInputGainControl()
{
  outData = 1;
  *&inAddress.mSelector = 0x696E707476637370;
  inAddress.mElement = 0;
  ioDataSize = 4;
  VADSourceForInputGainScalar = vaemGetVADSourceForInputGainScalar();
  PropertyData = AudioObjectGetPropertyData(VADSourceForInputGainScalar, &inAddress, 0, 0, &ioDataSize, &outData);
  return (PropertyData | outData) != 0;
}

CFMutableArrayRef routingContextUtilities_copyEndpointNames(const __CFArray *a1)
{
  if (a1)
  {
    Count = CFArrayGetCount(a1);
    v4 = *MEMORY[0x1E695E480];
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    if (Count >= 1)
    {
      v6 = 0;
      v7 = *MEMORY[0x1E69621E8];
      do
      {
        CFArrayGetValueAtIndex(a1, v6);
        value = 0;
        CMBaseObject = FigEndpointGetCMBaseObject();
        VTable = CMBaseObjectGetVTable();
        v10 = *(*(VTable + 8) + 48);
        if (v10)
        {
          v11 = *(VTable + 8) + 48;
          v10(CMBaseObject, v7, v4, &value);
        }

        if (value)
        {
          CFArrayAppendValue(Mutable, value);
          if (value)
          {
            CFRelease(value);
          }
        }

        ++v6;
      }

      while (Count != v6);
    }

    return Mutable;
  }

  else
  {
    v13 = *MEMORY[0x1E695E480];
    v14 = MEMORY[0x1E695E9C0];

    return CFArrayCreateMutable(v13, 0, v14);
  }
}

uint64_t FigRoutingManagerCopyPickedEndpointForRoutingContext(uint64_t a1, CFTypeRef *a2)
{
  if (!MX_FeatureFlags_IsAirPlayDaemonEnabled())
  {
    if (_MergedGlobals == -1)
    {
      if (!a1)
      {
        return 4294954516;
      }
    }

    else
    {
      dispatch_once(&_MergedGlobals, &__block_literal_global_4);
      if (!a1)
      {
        return 4294954516;
      }
    }

    if (a2)
    {

      return FigRoutingManagerContextUtilities_CopyPickedEndpointAtIndex(a1, 0, a2);
    }

    return 4294954516;
  }

  return FigRoutingManagerCopyRemotePickedEndpoint(a1, a2);
}

uint64_t FigRoutingManagerCopyRemotePickedEndpoint(uint64_t a1, CFTypeRef *a2)
{
  if (_MergedGlobals != -1)
  {
    dispatch_once(&_MergedGlobals, &__block_literal_global_4);
  }

  v4 = 4294954516;
  if (a1 && a2)
  {
    cf = 0;
    v4 = FigRoutingManagerContextUtilities_CopyPickedEndpointAtIndex(a1, 0, &cf);
    v5 = *MEMORY[0x1E69626B0];
    if (FigRoutingManagerIsEndpointOfType(cf))
    {
      CMBaseObject = FigEndpointGetCMBaseObject();
      v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v7)
      {
        v7(CMBaseObject, 0x1F28A5F10, *MEMORY[0x1E695E480], a2);
      }

      if (cf)
      {
        CFRelease(cf);
      }
    }

    else
    {
      *a2 = cf;
    }
  }

  return v4;
}

__CFString *_VAEndpoint_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFStringAppendFormat(Mutable, 0, @"<FigVAEndpoint %p %d>", a1, *DerivedStorage);
  return Mutable;
}

uint64_t FigRoutingManagerContextUtilities_SetPickedEndpoints(const void *a1, const __CFArray *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v36 = *MEMORY[0x1E69E9840];
  ContextType = FigRoutingManagerContextUtilities_GetContextType(a1);
  if (a2)
  {
    v9 = ContextType;
    if (CFArrayGetCount(a2) >= 1 && v9 == 2)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a2, 0);
      v11 = *MEMORY[0x1E69626D8];
      if (FigRoutingManagerIsEndpointOfType(ValueAtIndex))
      {
        LODWORD(valuePtr) = 0;
        number = 0;
        CMBaseObject = FigEndpointGetCMBaseObject();
        v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v13)
        {
          v13(CMBaseObject, 0x1F289CEF0, *MEMORY[0x1E695E480], &number);
          if (number)
          {
            CFNumberGetValue(number, kCFNumberSInt32Type, &valuePtr);
            if (number)
            {
              CFRelease(number);
            }
          }
        }

        if (valuePtr != 1885433971)
        {
          a2 = 0;
        }
      }
    }
  }

  v14 = routingContextUtilities_copyEndpointIDs(a2);
  v15 = routingContextUtilities_copyEndpointNames(a2);
  if (dword_1EB75DF20)
  {
    v27 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (routingContextUtilities_getSharedContextUtilities_sContextUtilitiesStateSetupOnce != -1)
  {
    FigRoutingManagerContextUtilities_UpdateRouteDescriptorForGivenContext_cold_1();
  }

  if (byte_1EB75CFA8)
  {
    v17 = &routingContextUtilities_getSharedContextUtilities_contextState;
  }

  else
  {
    v17 = 0;
  }

  number = 0;
  p_number = &number;
  v34 = 0x2020000000;
  v35 = 0;
  valuePtr = 0;
  p_valuePtr = &valuePtr;
  v30 = 0x2020000000;
  v31 = 0;
  v18 = &qword_1EB75CF98;
  if (!byte_1EB75CFA8)
  {
    v18 = 504;
  }

  v19 = *v18;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __FigRoutingManagerContextUtilities_SetPickedEndpoints_block_invoke;
  v25[3] = &unk_1E7AE7AE0;
  v25[6] = v17;
  v25[7] = a1;
  v25[4] = &valuePtr;
  v25[5] = &number;
  v25[8] = a5;
  v25[9] = a2;
  v25[10] = a4;
  v25[11] = a3;
  MXDispatchSync("FigRoutingManagerContextUtilities_SetPickedEndpoints", "FigRoutingManagerContextUtilities.m", 2118, 0, 0, v19, v25);
  routingContextUtilities_setRoutingContextDetailsForVolumeControl(p_valuePtr[3], a1);
  CMSMUtility_InformAirPlayOfAudioModeIfNecessary(a1);
  if (v14)
  {
    CFRelease(v14);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  v20 = *(p_number + 6);
  _Block_object_dispose(&valuePtr, 8);
  _Block_object_dispose(&number, 8);
  v21 = *MEMORY[0x1E69E9840];
  return v20;
}

void _routingContextUtilities_notifyClientsOfChangeInPickedEndpoints(int a1, uint64_t a2, int a3, void *key)
{
  if (routingContextUtilities_getSharedContextUtilities_sContextUtilitiesStateSetupOnce != -1)
  {
    FigRoutingManagerContextUtilities_PostNotificationToClientsOfContextWithUUIDAndItsFollowers_cold_1();
  }

  v6 = &qword_1EB75CF80;
  if (!byte_1EB75CFA8)
  {
    v6 = 480;
  }

  ContextForUUIDFromDict = _routingContextUtilities_getContextForUUIDFromDict(*v6, key);
  if (ContextForUUIDFromDict)
  {
    v8 = ContextForUUIDFromDict;
    v9 = *MEMORY[0x1E695E480];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    FigCFDictionarySetValue();
    if ((*v8 | 4) == 6)
    {
      CMSMNotificationUtility_PostExternalScreenDidChange();
    }

    _routingContextUtilities_postNotificationToContextAndItsFollowers(v8, @"currentRouteChanged", Mutable);
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    v11 = CFDictionaryCreateMutable(v9, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    FigCFDictionarySetValue();
    FigCFDictionarySetValue();
    FigCFDictionarySetValue();
    if (a2)
    {
      _routingContextUtilities_postNotificationToContextAndItsFollowers(v8, @"routeConfigUpdated", v11);
    }

    if (v11)
    {

      CFRelease(v11);
    }
  }
}

void routingContextUtilities_setRoutingContextDetailsForVolumeControl(uint64_t a1, const void *a2)
{
  if (a1)
  {
    if (a2)
    {
      v3 = *(a1 + 48);
      v4 = FigCFWeakReferenceHolderCopyReferencedObject();
      FigVolumeControllerSaveRoutingContextState(a2);
      if (v4)
      {

        CFRelease(v4);
      }
    }
  }
}

uint64_t FigVolumeControllerSaveRoutingContextState(const void *a1)
{
  theArray[16] = *MEMORY[0x1E69E9840];
  ContextType = FigRoutingManagerContextUtilities_GetContextType(a1);
  if (ContextType == 7 || ContextType == 9)
  {
    goto LABEL_86;
  }

  v58 = 0;
  FigVolumeControllerCopySharedController(&v58);
  if (dword_1EB75DEA0)
  {
    v60 = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v4 = v60;
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type[0]))
    {
      v5 = v4;
    }

    else
    {
      v5 = v4 & 0xFFFFFFFE;
    }

    if (v5)
    {
      ContextString = FigRoutingManagerContextUtilities_GetContextString(a1);
      *cf = 136315651;
      *&cf[4] = "FigVolumeControllerSaveRoutingContextState";
      v62 = 2113;
      v63 = a1;
      v64 = 2114;
      v65 = ContextString;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = *(DerivedStorage + 8);
  FigSimpleMutexLock();
  Value = CFDictionaryGetValue(*(DerivedStorage + 16), a1);
  if (!a1)
  {
    goto LABEL_50;
  }

  theArray[0] = 0;
  FigRoutingManagerContextUtilities_CopyPickedEndpoints(a1, theArray);
  if (!theArray[0])
  {
    goto LABEL_50;
  }

  if (CFArrayGetCount(theArray[0]) != 1)
  {
    if (!theArray[0])
    {
LABEL_50:
      if (dword_1EB75DEA0)
      {
        v60 = 0;
        type[0] = OS_LOG_TYPE_DEFAULT;
        v26 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v27 = v60;
        if (os_log_type_enabled(v26, type[0]))
        {
          v28 = v27;
        }

        else
        {
          v28 = v27 & 0xFFFFFFFE;
        }

        if (v28)
        {
          *cf = 136315394;
          *&cf[4] = "FigVolumeControllerSaveRoutingContextState";
          v62 = 2114;
          v63 = a1;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      volumeController_postVolumeOperationsSupportedForRoutingContextDidChangeNotification(v58, a1, 0);
      volumeController_postMuteOperationsSupportedForRoutingContextDidChangeNotification(v58, a1, 0);
      if (Value)
      {
        CFDictionaryRemoveValue(*(DerivedStorage + 16), a1);
        theArray[0] = 0;
        FigRoutingManagerContextUtilities_CopyArrayOfFollowerUUIDs(a1, theArray);
        if (theArray[0])
        {
          Count = CFArrayGetCount(theArray[0]);
          if (Count >= 1)
          {
            v30 = Count;
            for (i = 0; i != v30; ++i)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(theArray[0], i);
              CFDictionaryRemoveValue(*(DerivedStorage + 16), ValueAtIndex);
            }
          }

          if (theArray[0])
          {
            CFRelease(theArray[0]);
          }
        }
      }

      v33 = *(DerivedStorage + 8);
      FigSimpleMutexUnlock();
      *cf = 0;
      FigRoutingManagerContextUtilities_CopyPickedEndpoints(a1, cf);
      goto LABEL_65;
    }

    if (CFArrayGetCount(theArray[0]) >= 2)
    {
      v15 = FigRoutingManagerAreAllEndpointsBluetoothShareable(theArray[0]);
      goto LABEL_41;
    }

    goto LABEL_30;
  }

  v10 = CFArrayGetValueAtIndex(theArray[0], 0);
  v11 = FigRoutingManagerContextUtilities_GetContextType(a1);
  v13 = v11 == 1 || (v11 - 3) < 2;
  v14 = *MEMORY[0x1E69626B0];
  if (!FigRoutingManagerIsEndpointOfType(v10) || !v13)
  {
    *cf = 0;
    CMBaseObject = FigEndpointGetCMBaseObject();
    v17 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v17)
    {
      v17(CMBaseObject, *MEMORY[0x1E6962278], *MEMORY[0x1E695E480], cf);
      if (*cf)
      {
        CFRelease(*cf);
      }
    }

LABEL_30:
    v15 = 0;
    goto LABEL_41;
  }

  if (v11 == 4)
  {
    *cf = 0;
    v18 = FigEndpointGetCMBaseObject();
    v19 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    v15 = 1;
    if (v19)
    {
      v19(v18, *MEMORY[0x1E6962270], *MEMORY[0x1E695E480], cf);
      if (*cf)
      {
        v20 = CFArrayGetCount(*cf);
        if (v20 >= 1)
        {
          v21 = v20;
          v22 = CFArrayGetValueAtIndex(*cf, 0);
          if (v21 == 1 && FigRoutingManagerIsEndpointSelfOnlyLocalAirPlay(v22))
          {
            v15 = 0;
          }
        }
      }
    }
  }

  else
  {
    if (v11 != 3)
    {
      v15 = 1;
      goto LABEL_41;
    }

    *cf = 0;
    FigRoutingManagerContextUtilities_CopySystemMusicContextUUID(cf);
    v15 = FigRoutingContextUtilities_IsFollowingAnotherContext(*cf) == 0;
  }

  if (*cf)
  {
    CFRelease(*cf);
  }

LABEL_41:
  if (theArray[0])
  {
    CFRelease(theArray[0]);
  }

  if (!v15)
  {
    goto LABEL_50;
  }

  if (dword_1EB75DEA0)
  {
    v60 = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    v23 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v24 = v60;
    if (os_log_type_enabled(v23, type[0]))
    {
      v25 = v24;
    }

    else
    {
      v25 = v24 & 0xFFFFFFFE;
    }

    if (v25)
    {
      *cf = 136315394;
      *&cf[4] = "FigVolumeControllerSaveRoutingContextState";
      v62 = 2114;
      v63 = a1;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  volumeController_postVolumeOperationsSupportedForRoutingContextDidChangeNotification(v58, a1, 1);
  volumeController_postMuteOperationsSupportedForRoutingContextDidChangeNotification(v58, a1, 1);
  if (!Value)
  {
    ContextStateDict = volumeController_createContextStateDict(0.0);
    CFDictionarySetValue(*(DerivedStorage + 16), a1, ContextStateDict);
    theArray[0] = 0;
    FigRoutingManagerContextUtilities_CopyArrayOfFollowerUUIDs(a1, theArray);
    if (theArray[0])
    {
      v49 = CFArrayGetCount(theArray[0]);
      if (v49 >= 1)
      {
        v50 = v49;
        for (j = 0; j != v50; ++j)
        {
          v52 = CFArrayGetValueAtIndex(theArray[0], j);
          v53 = volumeController_createContextStateDict(0.0);
          CFDictionarySetValue(*(DerivedStorage + 16), v52, v53);
          if (v53)
          {
            CFRelease(v53);
          }
        }
      }

      if (theArray[0])
      {
        CFRelease(theArray[0]);
        theArray[0] = 0;
      }
    }

    if (ContextStateDict)
    {
      CFRelease(ContextStateDict);
    }
  }

  v54 = *(DerivedStorage + 8);
  FigSimpleMutexUnlock();
  *cf = 0;
  FigRoutingManagerContextUtilities_CopyPickedEndpoints(a1, cf);
  CachedMainVolume = volumeController_getCachedMainVolume(a1);
  MaxSubEndpointVolume = volumeController_getMaxSubEndpointVolume(*cf);
  if (MaxSubEndpointVolume >= 0.0)
  {
    v57 = MaxSubEndpointVolume;
    if (FVCUtilitiesIsVolumeDifferenceAboveThreshold(CachedMainVolume, MaxSubEndpointVolume))
    {
      volumeController_updateMainVolumeCache(a1, v57);
    }
  }

  volumeController_updateMainVolumeControl(a1, *cf);
  volumeController_updateMainVolumeControlType(a1, *cf);
LABEL_65:
  v34 = FigRoutingManagerContextUtilities_GetContextType(a1);
  v35 = *cf;
  if (v34 == 1)
  {
    if (*cf && (v36 = CFArrayGetCount(*cf), v35 = *cf, v36 >= 2))
    {
      v37 = FigRoutingManagerAreAllEndpointsBluetoothShareable(*cf);
      v35 = *cf;
    }

    else
    {
      v37 = 0;
    }

    if (FigVolumeControllerSaveRoutingContextState_cachedBluetoothSharingActive != v37)
    {
      if (v37)
      {
        v60 = 0;
        volumeController_getMainVolume(a1, &v60);
        volumeController_postMainVolumeDidChangeNotification();
        volumeController_postMainVolumeControlDidChangeNotification(a1, 1);
        volumeController_postMainVolumeControlTypeDidChangeNotification();
        v38 = CFArrayGetCount(v35);
        if (v38 >= 1)
        {
          v39 = v38;
          v40 = 0;
          v41 = *MEMORY[0x1E69620F8];
          v42 = *MEMORY[0x1E695E480];
          do
          {
            v43 = CFArrayGetValueAtIndex(v35, v40);
            *type = 0;
            volumeController_getVolumeForEndpoint(v43, type);
            theArray[0] = 0;
            v44 = FigEndpointGetCMBaseObject();
            v45 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v45)
            {
              v45(v44, v41, v42, theArray);
            }

            volumeController_postEndpointVolumeDidChangeNotification();
            volumeController_postEndpointVolumeControlDidChangeNotification(theArray[0], 1);
            volumeController_postEndpointVolumeControlTypeDidChangeNotification();
            if (theArray[0])
            {
              CFRelease(theArray[0]);
            }

            ++v40;
          }

          while (v39 != v40);
        }
      }

      else
      {
        volumeController_postMainVolumeControlDidChangeNotification(a1, 0);
        volumeController_postMainVolumeControlTypeDidChangeNotification();
      }

      FigVolumeControllerSaveRoutingContextState_cachedBluetoothSharingActive = v37;
      v35 = *cf;
    }
  }

  if (v35)
  {
    CFRelease(v35);
    *cf = 0;
  }

  if (v58)
  {
    CFRelease(v58);
  }

LABEL_86:
  v46 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t routingManager_doesEndpointRepresentBluetoothRoute(uint64_t a1)
{
  v2 = *MEMORY[0x1E69626B8];
  if (FigRoutingManagerIsEndpointOfType(a1))
  {
    return 1;
  }

  v5 = *MEMORY[0x1E69626D8];
  if (!FigRoutingManagerIsEndpointOfType(a1))
  {
    return 0;
  }

  cf = 0;
  CMBaseObject = FigEndpointGetCMBaseObject();
  VTable = CMBaseObjectGetVTable();
  v8 = *(*(VTable + 8) + 48);
  if (v8)
  {
    v9 = *(VTable + 8) + 48;
    v8(CMBaseObject, 0x1F289D050, *MEMORY[0x1E695E480], &cf);
  }

  v3 = FigCFEqual() || FigCFEqual() || FigCFEqual();
  if (cf)
  {
    CFRelease(cf);
  }

  return v3;
}

CFMutableArrayRef routingContextUtilities_copyEndpointIDs(const __CFArray *a1)
{
  if (a1)
  {
    Count = CFArrayGetCount(a1);
    v4 = *MEMORY[0x1E695E480];
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    if (Count >= 1)
    {
      v6 = 0;
      v7 = *MEMORY[0x1E69620F8];
      do
      {
        CFArrayGetValueAtIndex(a1, v6);
        value = 0;
        CMBaseObject = FigEndpointGetCMBaseObject();
        VTable = CMBaseObjectGetVTable();
        v10 = *(*(VTable + 8) + 48);
        if (v10)
        {
          v11 = *(VTable + 8) + 48;
          v10(CMBaseObject, v7, v4, &value);
        }

        if (value)
        {
          CFArrayAppendValue(Mutable, value);
          if (value)
          {
            CFRelease(value);
          }
        }

        ++v6;
      }

      while (Count != v6);
    }

    return Mutable;
  }

  else
  {
    v13 = *MEMORY[0x1E695E480];
    v14 = MEMORY[0x1E695E9C0];

    return CFArrayCreateMutable(v13, 0, v14);
  }
}

BOOL routingManager_doesVAEndpointRepresentAirPlayDevice(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  cf = 0;
  CMBaseObject = FigEndpointGetCMBaseObject();
  v2 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v2)
  {
    v2(CMBaseObject, 0x1F289CEF0, *MEMORY[0x1E695E480], &cf);
    v3 = cf;
  }

  else
  {
    v3 = 0;
  }

  PortFromCFNumber = CMSMVAUtility_GetPortFromCFNumber(v3);
  v6 = PortFromCFNumber == 1885433971 || PortFromCFNumber == 1885433953;
  if (cf)
  {
    CFRelease(cf);
  }

  return v6;
}

void __MXDispatchUtilityCreateOneShotTimer_block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = *(a1 + 72);
  v5 = *(a1 + 80);
  v6 = *(a1 + 104);
  v7 = *(a1 + 88);
  v8 = *(a1 + 96);
  if (CMSMDeviceState_IsAudiomxd())
  {
    if (MXGetSerialQueue_onceToken != -1)
    {
      MXDispatchAsync_cold_1();
    }

    if (gSerialQueue == v3)
    {
      MEMORY[0x1B2733F40](a1 + 48, 1, "MXDispatchUtilityCreateOneShotTimer_block_invoke", v4, v5, v6, v7, v8);
    }
  }

  (*(*(a1 + 40) + 16))();
  v9 = *(a1 + 32);
  v10 = *(a1 + 72);
  v11 = *(a1 + 80);
  v12 = *(a1 + 104);
  v13 = *(a1 + 88);
  v14 = *(a1 + 96);
  if (CMSMDeviceState_IsAudiomxd())
  {
    if (MXGetSerialQueue_onceToken != -1)
    {
      MXDispatchAsync_cold_1();
    }

    if (gSerialQueue == v9)
    {
      MEMORY[0x1B2733F40](a1 + 48, 2, "MXDispatchUtilityCreateOneShotTimer_block_invoke", v10, v11, v12, v13, v14);
    }
  }

  objc_autoreleasePoolPop(v2);
}

void __vaemStartIgnoreOutputVolumeScalarChangesTimer_block_invoke()
{
  v21 = *MEMORY[0x1E69E9840];
  if (!qword_1EB75D0B0)
  {
    if (!dword_1EB75DE40)
    {
      goto LABEL_22;
    }

    ioDataSize = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
LABEL_21:
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_22;
  }

  if (dword_1EB75DE40)
  {
    v0 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  vaemCancelOutputVolumeChangeTimer();
  v2 = *&dword_1EB75D0A4;
  v3 = gVAEM;
  v4 = dword_1EB75D0A8;
  *&inAddress.mSelector = 0x6F757470766F6C6DLL;
  inAddress.mElement = dword_1EB75D0A8;
  ioDataSize = 4;
  outData = 0.0;
  AudioObjectGetPropertyData(gVAEM, &inAddress, 0, 0, &ioDataSize, &outData);
  v5 = outData;
  if (vabds_f32(v2, outData) <= 0.025)
  {
    if (!dword_1EB75DE40)
    {
      goto LABEL_22;
    }

    ioDataSize = 0;
    v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v10 = ioDataSize;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v10;
    }

    else
    {
      v11 = v10 & 0xFFFFFFFE;
    }

    if (v11)
    {
      outData = 4.8152e-34;
      v15 = "vaemIgnoreOutputVolumeChangesTimerDidFinish";
      v16 = 1024;
      v17 = v3;
      v18 = 1024;
      v19 = v4;
      _os_log_send_and_compose_impl();
    }

    goto LABEL_21;
  }

  if (dword_1EB75DE40)
  {
    ioDataSize = 0;
    v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v7 = ioDataSize;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
    }

    else
    {
      v8 = v7 & 0xFFFFFFFE;
    }

    if (v8)
    {
      outData = 4.8152e-34;
      v15 = "vaemIgnoreOutputVolumeChangesTimerDidFinish";
      v16 = 1024;
      v17 = v3;
      v18 = 1024;
      v19 = v4;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  vaemVADDeviceVolumeChangeListenerGuts_f(v4, 0, v5);
LABEL_22:
  v12 = *MEMORY[0x1E69E9840];
}

void volumeController_postVolumeOperationsSupportedForRoutingContextDidChangeNotification(const void *a1, const void *a2, int a3)
{
  v12 = *MEMORY[0x1E69E9840];
  if (volumeController_postVolumeOperationsSupportedForRoutingContextDidChangeNotification_onceToken != -1)
  {
    volumeController_postVolumeOperationsSupportedForRoutingContextDidChangeNotification_cold_1();
  }

  v6 = [volumeController_postVolumeOperationsSupportedForRoutingContextDidChangeNotification_sCachedVolumeOperationsSupportedForContext objectForKey:a2];
  if (!v6 || [v6 BOOLValue] != a3)
  {
    if (dword_1EB75DEA0)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v9 = Mutable;
    v10 = MEMORY[0x1E695E4C0];
    if (a3)
    {
      v10 = MEMORY[0x1E695E4D0];
    }

    CFDictionarySetValue(Mutable, @"routingContext_CanUseForRoutingContext", *v10);
    CFDictionarySetValue(v9, @"masterVolumeKey_RoutingContextUUID", a2);
    volumeController_postNotificationWithPayload(a1, @"canUseForRoutingContextDidChange", v9);
    [volumeController_postVolumeOperationsSupportedForRoutingContextDidChangeNotification_sCachedVolumeOperationsSupportedForContext setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", a3 != 0), a2}];
    if (v9)
    {
      CFRelease(v9);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

void volumeController_postMuteOperationsSupportedForRoutingContextDidChangeNotification(const void *a1, const void *a2, int a3)
{
  if (volumeController_postMuteOperationsSupportedForRoutingContextDidChangeNotification_cachedMuteOperationsSupported != a3)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v7 = Mutable;
    v8 = MEMORY[0x1E695E4C0];
    if (a3)
    {
      v8 = MEMORY[0x1E695E4D0];
    }

    CFDictionarySetValue(Mutable, @"routingContext_CanUseForRoutingContext", *v8);
    CFDictionarySetValue(v7, @"masterVolumeKey_RoutingContextUUID", a2);
    volumeController_postNotificationWithPayload(a1, @"MuteControlSupportForRoutingContextDidChang", v7);
    volumeController_postMuteOperationsSupportedForRoutingContextDidChangeNotification_cachedMuteOperationsSupported = a3;
    if (v7)
    {

      CFRelease(v7);
    }
  }
}

BOOL FigRoutingManagerUtilities_DidRouteChangeToBuiltIn(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  cf = 0;
  CMBaseObject = FigEndpointGetCMBaseObject();
  v2 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v2)
  {
    v2(CMBaseObject, 0x1F289CEF0, *MEMORY[0x1E695E480], &cf);
    v3 = cf;
  }

  else
  {
    v3 = 0;
  }

  PortFromCFNumber = CMSMVAUtility_GetPortFromCFNumber(v3);
  v6 = PortFromCFNumber == 1886613611 || PortFromCFNumber == 1886545251;
  if (cf)
  {
    CFRelease(cf);
  }

  return v6;
}

BOOL FigRoutingManagerUtilities_IsEndpointTypeVehicle(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  number = 0;
  v1 = *MEMORY[0x1E695E480];
  CMBaseObject = FigEndpointGetCMBaseObject();
  v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v3 && (v3(CMBaseObject, 0x1F289CFD0, v1, &number), number) && (cf = 0, CFNumberGetValue(number, kCFNumberSInt64Type, &cf), cf == 1701869160))
  {
    v4 = 1;
  }

  else
  {
    cf = 0;
    v5 = FigEndpointGetCMBaseObject();
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v6)
    {
      v6(v5, 0x1F289CEF0, v1, &cf);
      v7 = cf;
    }

    else
    {
      v7 = 0;
    }

    v4 = CMSMVAUtility_GetPortFromCFNumber(v7) == 1886614639;
    if (cf)
    {
      CFRelease(cf);
    }
  }

  if (number)
  {
    CFRelease(number);
  }

  return v4;
}

void CMSMUtility_ClearOverridesForPhoneCallSessions(int a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    v6 = *MEMORY[0x1E695E4C0];
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if ([v8 hasPhoneCallBehavior])
        {
          v9 = [v8 isActive];
          if (a1 == 1)
          {
            if (v9)
            {
              MXCoreSessionSetProperty(v8, @"OverrideRoute");
            }
          }
        }

        if ([v8 isActive])
        {
          MXCoreSessionSetProperty(v8, @"UserMuted");
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void CMSMPowerLogPostPowerLogDataForRouteChange()
{
  v0 = MXGetSerialQueue();

  MXDispatchAsync("CMSMPowerLogPostPowerLogDataForRouteChange", "CMSessionManager_PowerLog.m", 280, 0, 0, v0, &__block_literal_global_30);
}

void CMSMUtility_UpdateSecureMicrophonePolicy(void *a1)
{
  v25 = *MEMORY[0x1E69E9840];
  if (CMSMDeviceState_IsSmartCoverClosed() && CMSMUtility_DoesCurrentInputPortSupportSecureMicrophone())
  {
    if (a1)
    {
      if (CMSUtility_GetIsRecording(a1) && !CMSUtility_GetPrefersNoInterruptionWhenSecureMicrophoneIsEngaged(a1))
      {
        if (dword_1EB75DE40)
        {
          v19 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        CMSUtility_InterruptSessionForSecureMicrophonePolicy(a1);
      }
    }

    else
    {
      v3 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
      v14 = 0u;
      v15 = 0u;
      v16 = 0u;
      v17 = 0u;
      v4 = [v3 countByEnumeratingWithState:&v14 objects:v20 count:16];
      if (v4)
      {
        v5 = v4;
        v6 = *v15;
        do
        {
          for (i = 0; i != v5; ++i)
          {
            if (*v15 != v6)
            {
              objc_enumerationMutation(v3);
            }

            v8 = *(*(&v14 + 1) + 8 * i);
            if (CMSUtility_GetIsRecording(v8) && !CMSUtility_GetPrefersNoInterruptionWhenSecureMicrophoneIsEngaged(v8))
            {
              if (dword_1EB75DE40)
              {
                v19 = 0;
                type = OS_LOG_TYPE_DEFAULT;
                v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v10 = v19;
                if (os_log_type_enabled(v9, type))
                {
                  v11 = v10;
                }

                else
                {
                  v11 = v10 & 0xFFFFFFFE;
                }

                if (v11)
                {
                  v12 = [v8 clientName];
                  v21 = 136315394;
                  v22 = "CMSMUtility_UpdateSecureMicrophonePolicy";
                  v23 = 2114;
                  v24 = v12;
                  _os_log_send_and_compose_impl();
                }

                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }

              CMSUtility_InterruptSessionForSecureMicrophonePolicy(v8);
            }
          }

          v5 = [v3 countByEnumeratingWithState:&v14 objects:v20 count:16];
        }

        while (v5);
      }
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

uint64_t CMSMDeviceState_IsSmartCoverClosed()
{
  FigSimpleMutexLock();
  v0 = byte_1EB75D331;
  FigSimpleMutexUnlock();
  return v0;
}

uint64_t vaeGetBluetoothCallScreeningStatus(uint64_t result)
{
  v8 = *MEMORY[0x1E69E9840];
  outData = 0;
  if (result)
  {
    v1 = result;
    inAddress.mElement = 0;
    *&inAddress.mSelector = *"sslcbolg";
    result = AudioObjectHasProperty(result, &inAddress);
    if (result)
    {
      ioDataSize = 4;
      if (AudioObjectGetPropertyData(v1, &inAddress, 0, 0, &ioDataSize, &outData))
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        result = 0;
      }

      else
      {
        result = outData;
      }
    }
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void vaemAddAvailableVirtualFormatsListener()
{
  v5.mElement = 0;
  *&v5.mSelector = 0;
  outData = 0;
  if ([+[MXSessionManager defaultVADID] sharedInstance]
  {
    *&inAddress.mSelector = 0x6F75747073746D23;
    inAddress.mElement = 0;
    ioDataSize = 4;
    if (AudioObjectGetPropertyData([[MXSessionManager defaultVADID] sharedInstance:0])
    {
      outData = 0;
    }

    else if (outData)
    {
      *&v5.mSelector = 0x676C6F6273666D61;
      v5.mElement = 0;
      AudioObjectAddPropertyListener(outData, &v5, vaemAvailableVirtualFormatsListener, 0);
    }

    v0 = +[MXSessionManager sharedInstance];
    [(MXSessionManager *)v0 setCurrentStream0:outData];
  }

  v1 = MXGetNotificationSenderQueue();
  MXDispatchAsyncFunction("vaemAddAvailableVirtualFormatsListener", "CMSessionManager_VAEndpointManager.m", 2422, 0, 0, v1, 0, vaemAvailableVirtualFormatsPropertyListenerGuts_f);
}

void MXVW_ReleaseVectorVARouteInfo(uint64_t *a1)
{
  MXVW_ClearVectorVARouteInfo(a1);
  if (a1)
  {
    v2 = *a1;
    if (*a1)
    {
      a1[1] = v2;
      operator delete(v2);
    }

    JUMPOUT(0x1B2735410);
  }
}

void MXVW_ClearVectorVARouteInfo(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1 != v3)
  {
    do
    {
      if (*v2)
      {
        CFRelease(*v2);
      }

      v4 = *(v2 + 8);
      if (v4)
      {
        CFRelease(v4);
      }

      v5 = *(v2 + 16);
      if (v5)
      {
        CFRelease(v5);
      }

      v6 = *(v2 + 24);
      if (v6)
      {
        CFRelease(v6);
      }

      v2 += 48;
    }

    while (v2 != v3);
    v2 = *a1;
  }

  a1[1] = v2;
}

uint64_t CMSUtilityPredicate_IsSomeOtherActiveSession(void *a1, void *a2)
{
  if (a2 == a1)
  {
    return 0;
  }

  else
  {
    return [a2 isActive];
  }
}

uint64_t CMSUtilityPredicate_IsSomeOtherForegroundAndActiveSession(void *a1, void *a2)
{
  if (a2 == a1)
  {
    return 0;
  }

  result = [a2 isActive];
  if (result)
  {
    return [a2 applicationState] == 8;
  }

  return result;
}

uint64_t routingContextRemoteXPC_CopySelectedBufferedEndpoint()
{
  OUTLINED_FUNCTION_5_6();
  ObjectID = remoteXPCRoutingContext_GetObjectID(v0, v4);
  if (!ObjectID)
  {
    OUTLINED_FUNCTION_9_0();
    ObjectID = FigXPCCreateBasicMessage();
    if (!ObjectID)
    {
      FigXPCMessageSetCFString();
      OUTLINED_FUNCTION_8();
      ObjectID = FigXPCRemoteClientSendSyncMessageCreatingReply();
      if (!ObjectID)
      {
        ObjectID = OUTLINED_FUNCTION_15_4(v4[1]);
      }
    }
  }

  v2 = ObjectID;
  FigXPCRelease();
  FigXPCRelease();
  return v2;
}

uint64_t routingContext_CopySelectedBufferedEndpoint(uint64_t a1, uint64_t a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  IsOperationOnSystemInputContextAllowedInternal = routingContext_IsOperationOnSystemInputContextAllowedInternal(a1, 0);
  if (!IsOperationOnSystemInputContextAllowedInternal)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = 0;
    UpTimeNanoseconds = FigGetUpTimeNanoseconds();
    v15[0] = 0;
    v15[1] = v15;
    v15[2] = 0x2020000000;
    v15[3] = 0;
    SharedQueue = FigRoutingManagerGetSharedQueue();
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __routingContext_CopySelectedBufferedEndpoint_block_invoke;
    v14[3] = &unk_1E7AE79F8;
    v14[4] = v15;
    v14[5] = &v16;
    v14[6] = UpTimeNanoseconds;
    v14[7] = DerivedStorage;
    v14[8] = a2;
    MXDispatchAsyncAndWait("routingContext_CopySelectedBufferedEndpoint", "FigRoutingContext.m", 1582, 0, 0, SharedQueue, v14);
    if (a3)
    {
      v9 = v17;
      *a3 = v17[3];
      v9[3] = 0;
    }

    FigGetUpTimeNanoseconds();
    if (dword_1EB75DF40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v11 = v17[3];
    if (v11)
    {
      CFRelease(v11);
      v17[3] = 0;
    }

    _Block_object_dispose(v15, 8);
    _Block_object_dispose(&v16, 8);
  }

  v12 = *MEMORY[0x1E69E9840];
  return IsOperationOnSystemInputContextAllowedInternal;
}

void sub_1B1840784(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t FigRoutingContextXPCHandleCopySelectedBufferedEndpointMessage()
{
  OUTLINED_FUNCTION_21_1();
  FigXPCMessageCopyCFString();
  if (*(*(CMBaseObjectGetVTable() + 16) + 144))
  {
    v1 = OUTLINED_FUNCTION_10_5();
    v3 = v2(v1);
    v4 = v7;
    if (v3)
    {
      v0 = v3;
      if (v7)
      {
LABEL_5:
        CFRelease(v4);
      }
    }

    else
    {
      if (v7)
      {
        OUTLINED_FUNCTION_13_4();
        FigEndpointXPCServerWriteNeighborEndpointToReply();
        OUTLINED_FUNCTION_25_1();
        if (!v4)
        {
          goto LABEL_7;
        }

        goto LABEL_5;
      }

      v0 = 0;
    }
  }

  else
  {
    v0 = 4294954514;
  }

LABEL_7:
  if (cf)
  {
    CFRelease(cf);
  }

  return v0;
}

uint64_t CMSMUtility_SomePrimaryAudioCategoryClientIsPlaying()
{
  v13 = *MEMORY[0x1E69E9840];
  v0 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v1 = [v0 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v1)
  {
    v2 = *v9;
    while (2)
    {
      for (i = 0; i != v1; ++i)
      {
        if (*v9 != v2)
        {
          objc_enumerationMutation(v0);
        }

        v4 = *(*(&v8 + 1) + 8 * i);
        IsAudioCategoryPrimary = CMSUtility_IsAudioCategoryPrimary(v4);
        if ([v4 isPlaying] && (objc_msgSend(v4, "doesntActuallyPlayAudio") & 1) == 0 && IsAudioCategoryPrimary)
        {
          v1 = 1;
          goto LABEL_13;
        }
      }

      v1 = [v0 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v1)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  v6 = *MEMORY[0x1E69E9840];
  return v1;
}

void CMSMNotificationUtility_PostSomePrimaryAudioCategoryIsPlayingDidChange(const void *a1)
{
  keys[1] = *MEMORY[0x1E69E9840];
  IsPlaying = CMSMUtility_SomePrimaryAudioCategoryClientIsPlaying();
  v3 = MEMORY[0x1E695E4D0];
  if (!IsPlaying)
  {
    v3 = MEMORY[0x1E695E4C0];
  }

  v4 = *v3;
  if (CMSMNotificationUtility_PostSomePrimaryAudioCategoryIsPlayingDidChange_cachedSomePrimaryAudioCategoryClientIsPlaying != *v3)
  {
    if (v4)
    {
      v5 = @"SomeNonAmbientAudioCategoryClientIsPlayingDidChange_IsPlaying";
    }

    else
    {
      v5 = 0;
    }

    if (@"SomeNonAmbientAudioCategoryClientIsPlayingDidChange_IsPlaying")
    {
      v6 = v4 != 0;
    }

    else
    {
      v6 = 0;
    }

    if (@"SomeNonAmbientAudioCategoryClientIsPlayingDidChange_IsPlaying")
    {
      v7 = *v3;
    }

    else
    {
      v7 = 0;
    }

    keys[0] = v5;
    values = v7;
    v8 = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, &values, v6, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v9 = v8;
    if (v8)
    {
      CFRetain(v8);
    }

    if (a1)
    {
      CFRetain(a1);
    }

    v10 = MXGetNotificationSenderQueue();
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __CMSMNotificationUtility_PostSomePrimaryAudioCategoryIsPlayingDidChange_block_invoke;
    v12[3] = &unk_1E7AEBCA0;
    v12[4] = a1;
    v12[5] = v9;
    MXDispatchAsync("CMSMNotificationUtility_PostSomePrimaryAudioCategoryIsPlayingDidChange", "CMSessionManager_NotificationUtilities.m", 1276, 0, 0, v10, v12);
    CMSMNotificationUtility_PostSomePrimaryAudioCategoryIsPlayingDidChange_cachedSomePrimaryAudioCategoryClientIsPlaying = v4;
    [MXSystemController notifyAll:@"SomeNonAmbientAudioCategoryClientIsPlayingDidChange" payload:v9 dontPostIfSuspended:0];
    if (v9)
    {
      CFRelease(v9);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

void CMSMNotificationUtility_PostSomeOtherPrimaryAudioCategoryIsPlayingDidChange(CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  v2 = MXGetNotificationSenderQueue();
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __CMSMNotificationUtility_PostSomeOtherPrimaryAudioCategoryIsPlayingDidChange_block_invoke;
  v3[3] = &unk_1E7AE7CE0;
  v3[4] = cf;
  MXDispatchAsync("CMSMNotificationUtility_PostSomeOtherPrimaryAudioCategoryIsPlayingDidChange", "CMSessionManager_NotificationUtilities.m", 1256, 0, 0, v2, v3);
}

uint64_t CMSMNP_GetNowPlayingAppIsInterrupted()
{
  v31 = *MEMORY[0x1E69E9840];
  v1 = [+[MXNowPlayingAppManager sharedInstance](MXNowPlayingAppManager nowPlayingAppPID];
  if (v1 < 1)
  {
    v18 = 0;
  }

  else
  {
    v2 = v1;
    v3 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
    v5 = OUTLINED_FUNCTION_0_27(v3, v4);
    if (v5)
    {
      v6 = v5;
      v7 = *v23;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v23 != v7)
          {
            objc_enumerationMutation(v0);
          }

          v9 = *(v22 + 8 * i);
          v10 = [objc_msgSend(v9 "clientPID")];
          if (v10 == v2)
          {
            v10 = [v9 isActive];
            if ((v10 & 1) == 0)
            {
              v10 = [v9 interruptingSession];
              if (v10)
              {
                v10 = CMSUtility_SessionCanBeAndAllowedToBeNowPlayingApp(v9);
                if (v10)
                {
                  v18 = 1;
                  goto LABEL_15;
                }
              }
            }
          }
        }

        v6 = OUTLINED_FUNCTION_1_19(v10, v11, v12, v13, v14, v15, v16, v17, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30);
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    v18 = 0;
LABEL_15:
  }

  v19 = *MEMORY[0x1E69E9840];
  return v18;
}

uint64_t CMSUtility_AreSessionsRoutedToTheSamePhysicalDevice(void *a1, void *a2)
{
  v4 = @"VirtualAudioDevice_Default";
  v5 = [a1 audioDestinationPriority];
  v6 = @"VirtualAudioDevice_Default";
  if (a1)
  {
    v6 = @"VirtualAudioDevice_Default";
    if (v5)
    {
      v6 = [+[MXSessionManager sharedInstance](MXSessionManager getAvailableAudioDestination:"getAvailableAudioDestination:", v5];
    }
  }

  v7 = [a2 audioDestinationPriority];
  if (a2 && v7)
  {
    v4 = [+[MXSessionManager sharedInstance](MXSessionManager getAvailableAudioDestination:"getAvailableAudioDestination:", v7];
  }

  return CMSMUtility_AreVADsRoutedToTheSamePhysicalDevice(v6, v4);
}

uint64_t CMSUtilityPredicate_ShouldDuck(void *a1, void *a2)
{
  if (a2 == a1 || ![a2 isPlaying])
  {
    v5 = 1;
  }

  else
  {
    v4 = [a2 clientPriority];
    v5 = v4 > [a1 clientPriority];
  }

  v6 = CMSUtility_AreSessionsRoutedToTheSamePhysicalDevice(a1, a2);
  v7 = [a2 isActive];
  v8 = 0;
  if (a2 != a1 && v7)
  {
    v9 = CMSMUtility_CopyCurrentRouteTypes();
    if (v6)
    {
      v10 = v5;
    }

    else
    {
      v10 = 1;
    }

    LODWORD(v8) = (v10 & 1) == 0 || ([a1 audioCategory], FigCFEqual()) && (FigCFArrayContainsValue() || (objc_msgSend(a2, "audioCategory"), FigCFEqual()));
    [a2 audioCategory];
    if (FigCFEqual())
    {
      v8 = 0;
    }

    else
    {
      v8 = v8;
    }

    if (v9)
    {
      CFRelease(v9);
    }
  }

  return v8;
}

uint64_t CMSMUtility_AreVADsRoutedToTheSamePhysicalDevice(uint64_t a1, uint64_t a2)
{
  VADIDForVADName = CMSMUtility_GetVADIDForVADName(a1);
  if (VADIDForVADName == CMSMUtility_GetVADIDForVADName(a2))
  {
    return 1;
  }

  v11 = 0;
  cf = 0;
  v9 = 0;
  v10 = 0;
  v7 = 0;
  v8 = 0;
  cmsmCopyCurrentActiveRouteInfoAtIndexForVADUID(a1, 0, &cf, &v11, &v10);
  cmsmCopyCurrentActiveRouteInfoAtIndexForVADUID(a2, 0, &v9, &v8, &v7);
  v5 = FigCFEqual() && FigCFEqual() && FigCFEqual();
  if (cf)
  {
    CFRelease(cf);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  return v5;
}

uint64_t MX_FeatureFlags_IsAlertsRelativeVoiceOverVolumeEnabled()
{
  if (MX_FeatureFlags_IsAlertsRelativeVoiceOverVolumeEnabled_onceToken != -1)
  {
    MX_FeatureFlags_IsAlertsRelativeVoiceOverVolumeEnabled_cold_1();
  }

  return MX_FeatureFlags_IsAlertsRelativeVoiceOverVolumeEnabled_alertsRelativeVoiceOverVolumeEnabled;
}

uint64_t CMSMUtility_DoesActiveAirPlayVideoSessionExistForPID(int a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        if ([objc_msgSend(v7 "clientPID")] == a1)
        {
          if ([v7 isActive])
          {
            if ([v7 isActiveOverAirPlayVideo])
            {
              [v7 audioCategory];
              if (FigCFEqual() || ([v7 audioCategory], FigCFEqual()) || (objc_msgSend(v7, "audioCategory"), FigCFEqual()))
              {
                v8 = 1;
                goto LABEL_16;
              }
            }
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v8 = 0;
LABEL_16:

  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

void CMSMNotificationUtility_PostStopCommandToMatchingActiveClientsWithPID(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = CMSUtilityApplier_PostNotificationToBackgroundedSession_StopCommand;
  }

  else
  {
    v2 = CMSUtilityApplier_PostNotification_StopCommand;
  }

  CMSMUtility_ApplyForEachMatchingSession(0, CMSUtilityPredicate_IsSameClientAndActive, a1, v2, 0);
}

uint64_t CMSUtilityPredicate_IsSameClientAndActive(int a1, void *a2, CFNumberRef number)
{
  valuePtr = 0;
  CFNumberGetValue(number, kCFNumberSInt32Type, &valuePtr);
  result = [a2 isActive];
  if (result)
  {
    v5 = [objc_msgSend(a2 "clientPID")];
    if (v5 == valuePtr)
    {
      [a2 audioCategory];
      return FigCFEqual() == 0;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t CMSystemSoundMgr_StopSystemSoundsforPID()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = off_1EB75E058;
  if (off_1EB75E058)
  {
    v1 = *MEMORY[0x1E69E9840];

    return v0();
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

uint64_t isSessionSidekick(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = objc_opt_class();

    return [v1 isMemberOfClass:v2];
  }

  return result;
}

void cmsUpdateAllowedRouteTypes(void *a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [a2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(a2);
        }

        VADOutputPortTypeFromFigRouteName = CMSMVAUtility_GetVADOutputPortTypeFromFigRouteName(*(*(&v11 + 1) + 8 * v8));
        if (VADOutputPortTypeFromFigRouteName)
        {
          [v4 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", VADOutputPortTypeFromFigRouteName)}];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [a2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  [a1 setAllowedRouteTypes:a2];
  [a1 setAllowedPortTypes:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithArray:", v4)}];

  v10 = *MEMORY[0x1E69E9840];
}

void *CMSUtility_GetPrefersNoInterruptionWhenSecureMicrophoneIsEngaged(void *result)
{
  if (result)
  {
    return [result prefersNoInterruptionWhenSecureMicrophoneIsEngaged];
  }

  return result;
}

void cmsmCreateAndInsertAirPlayRouteDescription(uint64_t a1, uint64_t a2, const __CFArray *a3)
{
  theDict = 0;
  cmsmCreateRouteDescriptionForFigAirPlayEndpoints(a1, a2, &theDict);
  if (theDict)
  {
    Count = CFArrayGetCount(a3);
    CFDictionaryGetValue(theDict, @"RouteUID");
    if (Count >= 1)
    {
      v5 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a3, v5);
        CFDictionaryGetValue(ValueAtIndex, @"RouteUID");
        if (FigCFEqual())
        {
          break;
        }

        if (Count == ++v5)
        {
          goto LABEL_12;
        }
      }

      Value = CFDictionaryGetValue(ValueAtIndex, @"PortNumber");
      if (Value)
      {
        CFDictionarySetValue(theDict, @"PortNumber", Value);
      }

      if (CFDictionaryGetValue(ValueAtIndex, @"RouteCurrentlyPicked"))
      {
        CFDictionarySetValue(theDict, @"RouteCurrentlyPicked", *MEMORY[0x1E695E4D0]);
      }

      CFArrayRemoveValueAtIndex(a3, v5);
    }

LABEL_12:
    CFArrayAppendValue(a3, theDict);
    if (theDict)
    {
      CFRelease(theDict);
    }
  }
}

uint64_t FigRouteDiscovererRemoteXPC_CopyProperty_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMSMUtility_CopyCurrentRouteHasVolumeControl()
{
  v0 = CMSMUtility_CopyCurrentlyActiveCategory();
  FigSimpleMutexLock();
  if (v0 || dword_1EB75E09C == 1668505974)
  {
    v3 = objc_alloc(MEMORY[0x1E696AD98]);
    v4 = [v3 initWithBool:byte_1EB75E098 != 0];
    FigSimpleMutexUnlock();
    if (v0)
    {
      CFRelease(v0);
    }
  }

  else
  {
    if (dword_1EB75E118)
    {
      v1 = objc_alloc(MEMORY[0x1E696AD98]);
      HasVolumeControl = 0;
    }

    else
    {
      if (!CMSMUtility_SomeSessionHasDoNotResetAudioCategoryOnNextInactive())
      {
        vaemResetVADCategoryToStandardAVAndDefaultMode();
      }

      v5 = objc_alloc(MEMORY[0x1E696AD98]);
      HasVolumeControl = vaemCurrentRouteHasVolumeControl();
      v1 = v5;
    }

    v4 = [v1 initWithBool:HasVolumeControl];
    FigSimpleMutexUnlock();
  }

  return v4;
}

void routingSessionManager_updateSessionFromLatestInEarHeadphones()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v35 = 0;
  v1 = *MEMORY[0x1E695E480];
  Float32 = FigCFNumberCreateFloat32();
  v3 = routingSessionManager_copyEligibleInEarHeadphones(*(DerivedStorage + 8));
  if (!v3)
  {
    v35 = 0;
    OUTLINED_FUNCTION_11_6();
    OUTLINED_FUNCTION_10_6();
    OUTLINED_FUNCTION_18_3(v15, v16, v17, v18, v19, v20, v21, v22, v31, v32, v33, v34);
    goto LABEL_10;
  }

  v4 = v3;
  if (CFArrayGetCount(v3) < 1)
  {
    v35 = 0;
    OUTLINED_FUNCTION_11_6();
    OUTLINED_FUNCTION_10_6();
    OUTLINED_FUNCTION_18_3(v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34);
    v14 = v4;
  }

  else
  {
    DestinationWithRouteDescriptors = routingSessionManager_createDestinationWithRouteDescriptors(v4);
    if (!FigRoutingSessionCreateForInEarHeadphones(v1, DestinationWithRouteDescriptors, &v35))
    {
      OUTLINED_FUNCTION_11_6();
      OUTLINED_FUNCTION_10_6();
      OUTLINED_FUNCTION_18_3(v6, v7, v8, v9, v10, v11, v12, v13, v31, v32, v33, v34);
    }

    CFRelease(v4);
    if (DestinationWithRouteDescriptors)
    {
      CFRelease(DestinationWithRouteDescriptors);
    }

    v14 = v35;
    if (!v35)
    {
LABEL_10:
      if (!Float32)
      {
        return;
      }

      goto LABEL_11;
    }
  }

  CFRelease(v14);
  if (!Float32)
  {
    return;
  }

LABEL_11:
  CFRelease(Float32);
}

void routingSession_Finalize()
{
  v0 = *CMBaseObjectGetDerivedStorage();
  if (v0)
  {

    CFRelease(v0);
  }
}

CFStringRef MXCFCopyPrefixSubstring(const __CFString *a1, CFIndex a2)
{
  Length = CFStringGetLength(a1);
  if (Length >= a2)
  {
    v5.length = a2;
  }

  else
  {
    v5.length = Length;
  }

  v6 = *MEMORY[0x1E695E480];
  v5.location = 0;

  return CFStringCreateWithSubstring(v6, a1, v5);
}

uint64_t FigRoutingManagerGetMirroringModeFromEndpoint(uint64_t a1)
{
  v1 = 0x1F2897CD0;
  if (a1)
  {
    v15 = 0;
    v2 = *MEMORY[0x1E695E480];
    CMBaseObject = FigEndpointGetCMBaseObject();
    VTable = CMBaseObjectGetVTable();
    v5 = *(*(VTable + 8) + 48);
    if (v5)
    {
      v6 = *(VTable + 8) + 48;
      v5(CMBaseObject, @"IsPerAppDisplay", v2, &v15);
    }

    cf = 0;
    v7 = FigEndpointGetCMBaseObject();
    v8 = CMBaseObjectGetVTable();
    v9 = *(*(v8 + 8) + 48);
    if (v9)
    {
      v10 = *(v8 + 8) + 48;
      v9(v7, *MEMORY[0x1E6962228], v2, &cf);
    }

    v11 = *MEMORY[0x1E6961F50];
    if (FigCFEqual())
    {
      v12 = &kCMSessionMirroringMode_Default;
      if (v15 == *MEMORY[0x1E695E4D0])
      {
        v12 = &kCMSessionMirroringMode_SecondScreen;
      }

      v1 = *v12;
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  return v1;
}

uint64_t routingContextResilientRemote_replaceRemoteContext()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = (*(*DerivedStorage + 16))();
  if (!result)
  {
    CMBaseObjectGetDerivedStorage();
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_0();
    return FigSignalErrorAtGM();
  }

  return result;
}

uint64_t getSTAttributedEntityClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__4;
  v0 = getSTAttributedEntityClass_softClass;
  v7 = __Block_byref_object_dispose__4;
  v8 = getSTAttributedEntityClass_softClass;
  if (!getSTAttributedEntityClass_softClass)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getSTAttributedEntityClass_block_invoke;
    v2[3] = &unk_1E7AE73A0;
    v2[4] = &v3;
    __getSTAttributedEntityClass_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1B18420E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getSTActivityAttributionClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__4;
  v0 = getSTActivityAttributionClass_softClass;
  v7 = __Block_byref_object_dispose__4;
  v8 = getSTActivityAttributionClass_softClass;
  if (!getSTActivityAttributionClass_softClass)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getSTActivityAttributionClass_block_invoke;
    v2[3] = &unk_1E7AE73A0;
    v2[4] = &v3;
    __getSTActivityAttributionClass_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1B18421CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t CMSUtility_SetIsRecording(void *a1, int a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if ([a1 isRecording] == a2)
  {
    goto LABEL_29;
  }

  if (a2 && !CMSUtility_IsAllowedToStartRecording(a1))
  {
    v5 = 4294950315;
    goto LABEL_30;
  }

  [a1 setIsRecording:a2 != 0];
  [+[MXSessionManager sharedInstance](MXSessionManager updateForRecordingStateDidChange];
  v4 = [+[MXExclaves sharedInstance](MXExclaves updateSensorStatus:"updateSensorStatus:reason:" reason:a1, @"IsRecording property has changed"];
  if (v4)
  {
    v5 = v4;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    [a1 setIsRecording:a2 == 0];
    [+[MXSessionManager sharedInstance](MXSessionManager updateForRecordingStateDidChange];
    goto LABEL_30;
  }

  if (vaemContinuityScreenOutputIsConnected())
  {
    if (!dword_1EB75DE40)
    {
      goto LABEL_12;
    }
  }

  else if (!dword_1EB75DE40)
  {
    goto LABEL_12;
  }

  v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_12:
  +[MXSessionManagerBase setGreenTeaLoggerRecordingState:state:](MXSessionManagerBase, "setGreenTeaLoggerRecordingState:state:", [a1 clientName], a2 != 0);
  if ([a1 isRecording])
  {
    v8 = [a1 auditTokenSetByClient];
    if (a1)
    {
      [a1 auditToken];
    }

    else
    {
      memset(v15, 0, 32);
    }

    RecordingAccessIntervals = MX_PrivacyAccounting_CreateRecordingAccessIntervals(v8, v15, [objc_msgSend(a1 "clientPID")], objc_msgSend(a1, "hostProcessAttribution"), objc_msgSend(a1, "displayID"));
    [a1 setBundleIdToPAAccessIntervalMap:RecordingAccessIntervals];
  }

  else
  {
    if ([a1 applicationState] == 4)
    {
      [a1 setTimestampWhenRecordingInBackgroundMostRecentlyStopped:FigGetUpTimeNanoseconds()];
    }

    MX_PrivacyAccounting_EndRecordingAccessIntervals([a1 bundleIdToPAAccessIntervalMap]);
    [a1 setBundleIdToPAAccessIntervalMap:0];
  }

  if (![a1 isRecording] || !objc_msgSend(a1, "isActive") || !objc_msgSend(a1, "isTheAssistant") || !CMSUtility_IsAnyoneBesidesAssistantsSessionsActive(a1) || (!objc_msgSend(a1, "dontTakeOverHardware") ? (v10 = 2) : (v10 = 8), v5 = MXCoreSessionBeginInterruption_WithSecTaskAndFlags(a1, 0, v10, 0), !v5))
  {
    CMSMUtility_UpdatePlayAndRecordAppSpeechState(0);
    CMSMNotificationUtility_PostVoicePromptStyleDidChange();
    CMSMVAUtility_UpdateSessionInfoAndReporterIDsOnVA(a1, 0);
LABEL_29:
    v5 = 0;
  }

LABEL_30:
  v11 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t CMSUtility_IsAllowedToStartRecording(void *a1)
{
  v1 = a1;
  valuePtr[16] = *MEMORY[0x1E69E9840];
  if (!CMSMUtility_IsInputAllowedForCategory([a1 audioCategory]))
  {
    goto LABEL_50;
  }

  if (([v1 hasEntitlementToRecordDuringCall] & 1) == 0 && CMSMUtility_IsSomeOtherPhoneCallPrioritySessionActive(v1))
  {
    if (dword_1EB75DE40)
    {
      goto LABEL_50;
    }

    goto LABEL_51;
  }

  if (!CMSUtility_IsAllowedToStartRecordingCoexistingWithTheAssistant(v1))
  {
    goto LABEL_51;
  }

  IsAnExtension = CMSUtility_IsAnExtension(v1);
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  v4 = UpTimeNanoseconds - [v1 timestampWhenMostRecentResumableEndInterruptionWasSent];
  v5 = [v1 wasInterruptedWhileRecording];
  if (v4 < 0x28FA6AE00)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (v6 == 1)
  {
    [v1 setTimestampWhenMostRecentResumableEndInterruptionWasSent:0];
    [v1 setWasInterruptedWhileRecording:0];
  }

  v7 = FigGetUpTimeNanoseconds();
  v8 = v7 - [v1 timestampWhenRecordingInBackgroundMostRecentlyStopped];
  v9 = [v1 wasInterruptedWhileRecording];
  if (v8 > 0xB2D05DFF)
  {
    v10 = 1;
  }

  else
  {
    v10 = v9;
  }

  if ((v10 & 1) == 0)
  {
    [v1 setTimestampWhenRecordingInBackgroundMostRecentlyStopped:0];
  }

  if ([v1 applicationState] != 4 || (v11 = objc_msgSend(v1, "clientPriority"), v12 = -[MXSessionManager isSessionAllowedToStartRecordingTemporarily:](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance"), "isSessionAllowedToStartRecordingTemporarily:", v1), (objc_msgSend(v1, "hasEntitlementToStartRecordingInTheBackground") & 1) != 0) || v11 == 10 || ((v6 | objc_msgSend(v1, "doesInterAppAudio") | v10 ^ 1 | v12) & 1) != 0)
  {
    if (IsAnExtension && ([v1 hasEntitlementToRecordAudioInAnExtension] & 1) == 0)
    {
      if (dword_1EB75DE40)
      {
        goto LABEL_50;
      }

      goto LABEL_51;
    }

    if (CMSMDeviceState_IsSmartCoverClosed() && CMSMUtility_DoesCurrentInputPortSupportSecureMicrophone() && (!v1 || ([v1 prefersNoInterruptionWhenSecureMicrophoneIsEngaged] & 1) == 0))
    {
      if (dword_1EB75DE40)
      {
        goto LABEL_50;
      }

      goto LABEL_51;
    }

    if (![v1 mixesWithEveryone] || objc_msgSend(v1, "applicationState") == 8 || !objc_msgSend(v1, "applicationState"))
    {
      goto LABEL_36;
    }

    if ([v1 applicationState] != 4)
    {
      if (dword_1EB75DE40)
      {
        goto LABEL_50;
      }

      goto LABEL_51;
    }

    if (!CMSUtility_HasBackgroundEntitlement(v1))
    {
      if (dword_1EB75DE40)
      {
        goto LABEL_50;
      }

      goto LABEL_51;
    }

    if (!cmsutility_hasAssertionsToStartMixableRecording(v1))
    {
      if (dword_1EB75DE40)
      {
LABEL_50:
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

LABEL_51:
      v1 = 0;
      goto LABEL_52;
    }

    if (dword_1EB75DE40)
    {
      v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
      v1 = 1;
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    else
    {
LABEL_36:
      v1 = 1;
    }
  }

  else
  {
    v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    if (v1)
    {
      if ([objc_msgSend(v1 "reporterIDs")])
      {
        valuePtr[0] = 1;
        ValueAtIndex = CFArrayGetValueAtIndex([v1 reporterIDs], 0);
        CFNumberGetValue(ValueAtIndex, kCFNumberSInt64Type, valuePtr);
        Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        [v1 displayID];
        FigCFDictionarySetValue();
        [MEMORY[0x1E696AD98] numberWithBool:0];
        FigCFDictionarySetValue();
        FigCFDictionarySetValue();
        off_1EB75E028(valuePtr[0], Mutable, 11, 6);
        if (Mutable)
        {
          CFRelease(Mutable);
        }
      }

      goto LABEL_51;
    }
  }

LABEL_52:
  v18 = *MEMORY[0x1E69E9840];
  return v1;
}

uint64_t CMSUtility_IsAllowedToStartRecordingCoexistingWithTheAssistant(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = 0;
  result = [a1 isMemberOfClass:objc_opt_class()];
  if (result)
  {
    v3 = [a1 clientPriority];
    v4 = [a1 mixesWithEveryone];
    v5 = [a1 isTheAssistant];
    result = 1;
    if (!v3 && (v5 & 1) == 0)
    {
      if ([+[MXSessionManager isSiriSessionActive:"isSiriSessionActive:andMixable:"]
      {
        if (dword_1EB75DE40)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        result = 0;
      }

      else
      {
        result = 1;
      }
    }
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CMSMUtility_PostRecordingStateDidChangeNotificationIfNeeded()
{
  v18 = *MEMORY[0x1E69E9840];
  v11 = [+[MXSessionManager sharedInstance](MXSessionManager recordingClientPIDs];
  FigSimpleMutexLock();
  v12 = byte_1EB75E139;
  FigSimpleMutexUnlock();
  FigSimpleMutexLock();
  byte_1EB75E139 = 0;
  dword_1EB75E0A4 = 0;
  v0 = [MEMORY[0x1E695DF70] array];
  v1 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
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
        if ([v6 isRecording])
        {
          byte_1EB75E139 = 1;
          dword_1EB75E0A4 = [objc_msgSend(v6 "clientPID")];
          [v0 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", objc_msgSend(objc_msgSend(v6, "clientPID"), "unsignedIntValue"))}];
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v3);
  }

  FigSimpleMutexUnlock();
  [+[MXSessionManager sharedInstance](MXSessionManager setRecordingClientPIDs:"setRecordingClientPIDs:", v0];
  CMSMUtility_UpdateSomeRecordingSessionPresentThatDisallowsSystemSounds();
  v7 = [+[MXSessionManager sharedInstance](MXSessionManager recordingClientPIDs];
  if (v12 != byte_1EB75E139 || (result = [(NSArray *)v11 isEqualToArray:v7], (result & 1) == 0))
  {
    MX_SystemStatus_PublishRecordingClientsInfo();
    if (byte_1EB75E139)
    {
      v9 = dword_1EB75E0A4;
    }

    else
    {
      v9 = 0;
    }

    result = CMSMNotificationUtility_PostRecordingStateDidChange(byte_1EB75E139, v9, v7);
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CMSMUtility_IsSomeRecordingSessionPresentThatDisallowsSystemSounds()
{
  v12 = *MEMORY[0x1E69E9840];
  v0 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v1 = [v0 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v1)
  {
    v2 = *v8;
    while (2)
    {
      for (i = 0; i != v1; ++i)
      {
        if (*v8 != v2)
        {
          objc_enumerationMutation(v0);
        }

        v4 = *(*(&v7 + 1) + 8 * i);
        if ([v4 isRecording] && !CMSUtility_GetAllowSystemSoundsWhileRecording(v4))
        {
          v1 = 1;
          goto LABEL_12;
        }
      }

      v1 = [v0 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v1)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  v5 = *MEMORY[0x1E69E9840];
  return v1;
}

uint64_t CMSMUtility_UpdateSomeRecordingSessionPresentThatDisallowsSystemSounds()
{
  result = CMSMUtility_IsSomeRecordingSessionPresentThatDisallowsSystemSounds();
  if (result != byte_1EB75E1D8)
  {
    byte_1EB75E1D8 = result;

    return CMSMNotificationUtility_PostSomeRecordingSessionPresentThatDisallowsSystemSoundsDidChange(result);
  }

  return result;
}

void *CMSUtility_GetAllowSystemSoundsWhileRecording(void *result)
{
  if (result)
  {
    return [result allowSystemSoundsWhileRecording];
  }

  return result;
}

uint64_t CMSMNotificationUtility_PostRecordingStateDidChange(int a1, uint64_t a2, uint64_t a3)
{
  RecordingSessionsDescription = CMSMNotificationUtility_CreateRecordingSessionsDescription();
  v7 = MEMORY[0x1E695DF20];
  v8 = [MEMORY[0x1E696AD98] numberWithBool:a1 != 0];
  v9 = [v7 dictionaryWithObjectsAndKeys:{v8, @"RecordingState", objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", a2), @"ClientPID", a3, @"ClientPIDs", RecordingSessionsDescription, @"Sessions", 0}];

  return [MXSystemController notifyAll:@"RecordingStateDidChange" payload:v9 dontPostIfSuspended:0];
}

id MX_PrivacyAccounting_CreateRecordingAccessIntervals(int a1, __int128 *a2, unsigned int a3, void *a4, uint64_t a5)
{
  LODWORD(v5) = a1;
  v67 = *MEMORY[0x1E69E9840];
  if (mx_privacyAccounting_isAvailable_onceToken != -1)
  {
LABEL_58:
    MX_PrivacyAccounting_IsPAAccessLoggingEnabled_cold_1();
  }

  if ((mx_privacyAccounting_isAvailable_result & 1) != 0 || ![objc_msgSend(getPAAccessLoggerClass() "sharedInstance")])
  {
    v6 = 0;
  }

  else
  {
    v43 = v5;
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    if (![a4 count])
    {
      goto LABEL_51;
    }

    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v50 = [a4 countByEnumeratingWithState:&v53 objects:v63 count:16];
    if (!v50)
    {
      goto LABEL_51;
    }

    v7 = 0;
    v49 = *v54;
    v47 = v6;
    while (2)
    {
      for (i = 0; i != v50; ++i)
      {
        if (*v54 != v49)
        {
          objc_enumerationMutation(a4);
        }

        v9 = *(*(&v53 + 1) + 8 * i);
        v10 = [v9 valueForKey:{@"BundleID", v41, v42}];
        v11 = v10;
        if (v10)
        {
          v5 = [v10 cStringUsingEncoding:4];
          v64[0] = 0;
          v64[1] = v64;
          v64[2] = 0x2020000000;
          v12 = gettcc_identity_createSymbolLoc_ptr;
          v65 = gettcc_identity_createSymbolLoc_ptr;
          if (!gettcc_identity_createSymbolLoc_ptr)
          {
            *&v57 = MEMORY[0x1E69E9820];
            *(&v57 + 1) = 3221225472;
            *&v58 = __gettcc_identity_createSymbolLoc_block_invoke;
            *(&v58 + 1) = &unk_1E7AE73A0;
            v59 = v64;
            v13 = TCCLibrary();
            v14 = dlsym(v13, "tcc_identity_create");
            *(*(v59 + 1) + 24) = v14;
            gettcc_identity_createSymbolLoc_ptr = *(*(v59 + 1) + 24);
            v12 = *(v64[1] + 24);
          }

          _Block_object_dispose(v64, 8);
          if (!v12)
          {
            goto LABEL_57;
          }

          v5 = v12(0, v5);
          v15 = [v9 valueForKey:@"AuditToken"];
          *buffer = 0u;
          v52 = 0u;
          if (v15)
          {
            v68.location = 0;
            v68.length = 32;
            CFDataGetBytes(v15, v68, buffer);
          }

          v61 = *buffer;
          v62 = v52;
          v64[0] = 0;
          v64[1] = v64;
          v64[2] = 0x2020000000;
          v16 = getPAAuthenticatedClientIdentitySymbolLoc_ptr;
          v65 = getPAAuthenticatedClientIdentitySymbolLoc_ptr;
          if (!getPAAuthenticatedClientIdentitySymbolLoc_ptr)
          {
            *&v57 = MEMORY[0x1E69E9820];
            *(&v57 + 1) = 3221225472;
            *&v58 = __getPAAuthenticatedClientIdentitySymbolLoc_block_invoke;
            *(&v58 + 1) = &unk_1E7AE73A0;
            v59 = v64;
            v17 = PrivacyAccountingLibrary();
            v18 = dlsym(v17, "PAAuthenticatedClientIdentity");
            *(*(v59 + 1) + 24) = v18;
            getPAAuthenticatedClientIdentitySymbolLoc_ptr = *(*(v59 + 1) + 24);
            v16 = *(v64[1] + 24);
          }

          _Block_object_dispose(v64, 8);
          if (!v16)
          {
            goto LABEL_57;
          }

          v57 = v61;
          v58 = v62;
          v19 = v16(&v57, v5);
          if (!v19)
          {
            goto LABEL_30;
          }

          *&v57 = 0;
          *(&v57 + 1) = &v57;
          *&v58 = 0x3052000000;
          *(&v58 + 1) = __Block_byref_object_copy__1;
          v20 = getPAApplicationClass_softClass;
          v59 = __Block_byref_object_dispose__1;
          v60 = getPAApplicationClass_softClass;
          if (!getPAApplicationClass_softClass)
          {
            v64[0] = MEMORY[0x1E69E9820];
            v64[1] = 3221225472;
            v64[2] = __getPAApplicationClass_block_invoke;
            v65 = &unk_1E7AE73A0;
            v66 = &v57;
            __getPAApplicationClass_block_invoke(v64);
            v20 = *(*(&v57 + 1) + 40);
          }

          _Block_object_dispose(&v57, 8);
          v19 = [[v20 alloc] initWithTCCIdentity:v19];
          if (v19 && (PATCCAccessClass = getPATCCAccessClass(), (v22 = [PATCCAccessClass accessWithAccessor:v19 forService:getkTCCServiceMicrophone()]) != 0))
          {
            if (dword_1EB75DE40)
            {
              LODWORD(v61) = 0;
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v24 = v61;
              if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT))
              {
                v25 = v24;
              }

              else
              {
                v25 = v24 & 0xFFFFFFFE;
              }

              if (v25)
              {
                LODWORD(v64[0]) = 136315394;
                *(v64 + 4) = "MX_PrivacyAccounting_CreateRecordingAccessIntervals";
                WORD2(v64[1]) = 2114;
                *(&v64[1] + 6) = v11;
                LODWORD(v42) = 22;
                v41 = v64;
                _os_log_send_and_compose_impl();
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
              v6 = v47;
            }

            [v6 setObject:objc_msgSend(objc_msgSend(getPAAccessLoggerClass() forKey:{"sharedInstance"), "beginIntervalForAccess:", v22), v11}];
            v7 = 1;
          }

          else
          {
LABEL_30:
            LODWORD(v61) = 0;
            v26 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v27 = v61;
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
            {
              v28 = v27;
            }

            else
            {
              v28 = v27 & 0xFFFFFFFE;
            }

            if (v28)
            {
              LODWORD(v64[0]) = 136315138;
              *(v64 + 4) = "MX_PrivacyAccounting_CreateRecordingAccessIntervals";
              LODWORD(v42) = 12;
              v41 = v64;
              _os_log_send_and_compose_impl();
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          v64[0] = 0;
          v64[1] = v64;
          v64[2] = 0x2020000000;
          v32 = gettcc_releaseSymbolLoc_ptr;
          v65 = gettcc_releaseSymbolLoc_ptr;
          if (!gettcc_releaseSymbolLoc_ptr)
          {
            *&v57 = MEMORY[0x1E69E9820];
            *(&v57 + 1) = 3221225472;
            *&v58 = __gettcc_releaseSymbolLoc_block_invoke;
            *(&v58 + 1) = &unk_1E7AE73A0;
            v59 = v64;
            v33 = TCCLibrary();
            v34 = dlsym(v33, "tcc_release");
            *(*(v59 + 1) + 24) = v34;
            gettcc_releaseSymbolLoc_ptr = *(*(v59 + 1) + 24);
            v32 = *(v64[1] + 24);
          }

          _Block_object_dispose(v64, 8);
          if (!v32)
          {
LABEL_57:
            __68__MXBiomeStreams_updateBiomeSilentMode_clientType_untilTime_reason___block_invoke_cold_1();
            __break(1u);
            goto LABEL_58;
          }

          v32(v5);
        }

        else
        {
          *buffer = 0;
          LOBYTE(v61) = 0;
          v29 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v30 = *buffer;
          if (os_log_type_enabled(v29, v61))
          {
            v31 = v30;
          }

          else
          {
            v31 = v30 & 0xFFFFFFFE;
          }

          if (v31)
          {
            LODWORD(v64[0]) = 136315138;
            *(v64 + 4) = "MX_PrivacyAccounting_CreateRecordingAccessIntervals";
            LODWORD(v42) = 12;
            v41 = v64;
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }
      }

      v50 = [a4 countByEnumeratingWithState:&v53 objects:v63 count:16];
      if (v50)
      {
        continue;
      }

      break;
    }

    if (!v7)
    {
LABEL_51:
      v35 = getPATCCAccessClass();
      v36 = getkTCCServiceMicrophone();
      if (v43)
      {
        v37 = a2[1];
        v57 = *a2;
        v58 = v37;
        v38 = [v35 accessWithAuditToken:&v57 forService:v36];
      }

      else
      {
        v38 = [v35 accessWithInsecureProcessIdentifier:a3 forService:v36];
      }

      [v6 setObject:objc_msgSend(objc_msgSend(getPAAccessLoggerClass() forKey:{"sharedInstance"), "beginIntervalForAccess:", v38), a5}];
    }
  }

  v39 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t getPAAccessLoggerClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__1;
  v0 = getPAAccessLoggerClass_softClass;
  v7 = __Block_byref_object_dispose__1;
  v8 = getPAAccessLoggerClass_softClass;
  if (!getPAAccessLoggerClass_softClass)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getPAAccessLoggerClass_block_invoke;
    v2[3] = &unk_1E7AE73A0;
    v2[4] = &v3;
    __getPAAccessLoggerClass_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1B18443B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL CMSUtility_IsAnyoneBesidesAssistantsSessionsActive(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * v6);
        if (v7 != a1)
        {
          if ([*(*(&v11 + 1) + 8 * v6) isActive])
          {
            [v7 audioCategory];
            if (!FigCFEqual())
            {
              if (CMSUtility_DoesSessionActuallyPlayAudio(v7))
              {
                v8 = v7 != 0;
                goto LABEL_14;
              }
            }
          }
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v8 = 0;
LABEL_14:

  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

void sub_1B18447F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B1844980(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL FigRouteDiscoveryManagerIsClientEligibleToReceiveUpdateNotifications(uint64_t a1)
{
  cf = 0;
  VTable = CMBaseObjectGetVTable();
  v3 = *(*(VTable + 8) + 48);
  if (v3)
  {
    v4 = *(VTable + 8) + 48;
    v3(a1, @"clientPID", *MEMORY[0x1E695E480], &cf);
  }

  SInt32 = FigCFNumberGetSInt32();
  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  return MX_RunningBoardServices_GetApplicationStateForPID(SInt32, 0) - 3 < 0xFFFFFFFE;
}

uint64_t FigRouteDiscoveryManagerShouldRegisterEndpointManager(uint64_t a1)
{
  v2 = MXCFPreferencesCopyPreference(@"EndpointManagerDenyList");
  LODWORD(a1) = [v2 containsObject:a1];

  return a1 ^ 1;
}

uint64_t FigRouteDiscoveryManagerCopyRoutePresentForType(uint64_t a1, unsigned int a2, void *a3)
{
  if (a3)
  {
    if (discoverManager_getSharedManager_onceToken != -1)
    {
      FigRouteDiscoveryManagerCopyCachedAudioSessionRouteInformation_cold_1();
    }

    if (qword_1EB75D478)
    {
      v5 = &discoverManager_getSharedManager_discoveryState;
    }

    else
    {
      v5 = 0;
    }

    if (*v5)
    {
      v10 = 0;
      v11 = &v10;
      v12 = 0x2020000000;
      v13 = *MEMORY[0x1E695E4C0];
      v6 = discoveryManager_mapDiscovererTypeToEndpointFeatures(a2);
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __FigRouteDiscoveryManagerCopyRoutePresentForType_block_invoke;
      v9[3] = &unk_1E7AE7140;
      v9[5] = v5;
      v9[6] = v6;
      v9[4] = &v10;
      FigRouteDiscoveryManagerRunBlockWhileEndpointManagerInfoLockIsLocked(v9);
      v7 = v11;
      *a3 = v11[3];
      v7[3] = 0;
      _Block_object_dispose(&v10, 8);
    }
  }

  return 0;
}

void sub_1B1846DF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t FigRouteDiscoveryManagerCopyRouteDescriptorsForTypeAndAudioSessionID(uint64_t a1, int a2, uint64_t a3, uint64_t a4, const __CFArray **a5)
{
  v16 = 0;
  FigRouteDiscoveryManagerCopyRoutesForTypeAndAudioSessionID(a1, a2, a3, a4, &v16);
  v7 = +[MXEndpointDescriptorCache sharedInstance];
  v8 = [(MXEndpointDescriptorCache *)v7 copyRouteDescriptorsForEndpoints:v16];
  v9 = *MEMORY[0x1E69626D8];
  v10 = FigRoutingManagerCopyEndpointsWithType(v16);
  v11 = v10;
  if (v10 && CFArrayGetCount(v10) >= 1)
  {
    v12 = FigEndpointDescriptorUtility_CopyDescriptorsForEndpoints(v11, a3);
  }

  else
  {
    v12 = 0;
  }

  cf = 0;
  MXCFArrayCopyAppendedArray(v12, v8, &cf);
  v13 = FigEndpointDescriptorUtility_CopyAndRemoveDuplicateRouteDescriptors(cf);
  if (v11)
  {
    CFRelease(v11);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (v13)
  {
    if (CFArrayGetCount(v13) < 1)
    {
      CFRelease(v13);
    }

    else
    {
      *a5 = v13;
    }
  }

  if (v16)
  {
    CFRelease(v16);
  }

  return 0;
}

void FigRouteDiscoveryManagerAddToCachedDiscoverers()
{
  v10 = *MEMORY[0x1E69E9840];
  if (discoverManager_getSharedManager_onceToken != -1)
  {
    FigRouteDiscoveryManagerCopyCachedAudioSessionRouteInformation_cold_1();
  }

  v0 = 0;
  v1 = 0;
  if (qword_1EB75D478)
  {
    v2 = &qword_1EB75D588;
  }

  else
  {
    v2 = 280;
  }

  while (1)
  {
    Count = *v2;
    if (*v2)
    {
      Count = CFArrayGetCount(Count);
    }

    if (v0 >= Count)
    {
      break;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(*v2, v0);
    v5 = discoveryManager_copyDiscovererFromWeakRef(ValueAtIndex);
    if (FigCFEqual())
    {
      if (dword_1EB75DF60)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        v1 = 1;
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      else
      {
        v1 = 1;
      }
    }

    if (v5)
    {
      CFRelease(v5);
    }

    ++v0;
  }

  if (!v1)
  {
    if (dword_1EB75DF60)
    {
      v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v8 = FigCFWeakReferenceHolderCreateWithReferencedObject();
    CFArrayAppendValue(*v2, v8);
    if (v8)
    {
      CFRelease(v8);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

uint64_t FigRouteDiscoveryManagerStart()
{
  if (discoverManager_getSharedManager_onceToken != -1)
  {
    FigRouteDiscoveryManagerCopyCachedAudioSessionRouteInformation_cold_1();
  }

  v0 = &discoverManager_getSharedManager_discoveryState;
  v1 = &qword_1EB75D478;
  if (!qword_1EB75D478)
  {
    v0 = 0;
    v1 = 8;
  }

  v2 = *v1;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __FigRouteDiscoveryManagerStart_block_invoke;
  v5[3] = &__block_descriptor_40_e5_v8__0l;
  v5[4] = v0;
  MXDispatchSync("FigRouteDiscoveryManagerStart", "FigRouteDiscoveryManager.m", 2485, 0, 0, v2, v5);
  result = MX_FeatureFlags_IsAVODDiscoveryEnhancementEnabled();
  if (result)
  {
    if (discoverManager_getSharedManager_onceToken != -1)
    {
      FigRouteDiscoveryManagerStart_cold_2();
    }

    v4 = &qword_1EB75D478;
    if (!qword_1EB75D478)
    {
      v4 = 8;
    }

    return notify_register_dispatch("com.apple.sharing.activity-level-changed", &activityLevelNotifyToken, *v4, &__block_literal_global_62);
  }

  return result;
}

void __FigRouteDiscoveryManagerStart_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  *v2 = 1;
  v3 = *(v2 + 264);
  if (v3)
  {
    Count = CFArrayGetCount(v3);
    if (Count >= 1)
    {
      v5 = Count;
      for (i = 0; i != v5; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(*(a1 + 32) + 264), i);
        discoveryManager_registerEndpointManager(ValueAtIndex);
      }
    }
  }

  v8 = *(*(a1 + 32) + 264);
  if (v8)
  {
    CFRelease(v8);
    *(*(a1 + 32) + 264) = 0;
  }
}

void discoveryManager_registerEndpointManager(const void *a1)
{
  v43[16] = *MEMORY[0x1E69E9840];
  if (discoverManager_getSharedManager_onceToken != -1)
  {
    FigRouteDiscoveryManagerCopyCachedAudioSessionRouteInformation_cold_1();
  }

  v2 = qword_1EB75D478;
  if (qword_1EB75D478)
  {
    v3 = &discoverManager_getSharedManager_discoveryState;
  }

  else
  {
    v3 = 0;
  }

  value = 0;
  v4 = *MEMORY[0x1E69618B8];
  v5 = *MEMORY[0x1E695E480];
  CMBaseObject = FigEndpointManagerGetCMBaseObject();
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v7)
  {
    LOBYTE(v7) = v7(CMBaseObject, v4, v5, &value) == 0;
  }

  if (a1)
  {
    v8 = value;
    if (value)
    {
      if (v7)
      {
        v9 = MXCFPreferencesCopyPreference(@"EndpointManagerDenyList");
        v10 = [v9 containsObject:v8];

        if (v10)
        {
          if (dword_1EB75DF60)
          {
            v40 = 0;
            type = OS_LOG_TYPE_DEFAULT;
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }
        }

        else
        {
          v35 = v4;
          v37 = v2;
          if (dword_1EB75DF60)
          {
            v40 = 0;
            type = OS_LOG_TYPE_DEFAULT;
            v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          v36 = v3;
          v13 = MEMORY[0x1E695E9D8];
          v14 = MEMORY[0x1E695E9E8];
          Mutable = CFDictionaryCreateMutable(v5, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          CFDictionarySetValue(Mutable, @"EndpointManager_RefKey", a1);
          CFDictionarySetValue(Mutable, @"EndpointManager_TypeKey", value);
          v16 = CFArrayCreateMutable(v5, 0, MEMORY[0x1E695E9C0]);
          v17 = *MEMORY[0x1E6961878];
          v18 = 7;
          do
          {
            v19 = CFDictionaryCreateMutable(v5, 0, v13, v14);
            CFDictionarySetValue(v19, @"Requestor_DiscoveryMode", v17);
            CFArrayAppendValue(v16, v19);
            if (v19)
            {
              CFRelease(v19);
            }

            --v18;
          }

          while (v18);
          CFDictionarySetValue(Mutable, @"EndpointManager_RequestedDiscoveryModesKey", v16);
          if (v16)
          {
            CFRelease(v16);
          }

          CFDictionarySetValue(Mutable, @"EndpointFeature_CurrentDiscoveryModeKey", v17);
          v43[0] = 0;
          v20 = FigEndpointManagerGetCMBaseObject();
          v21 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v21)
          {
            v21(v20, v35, v5, v43);
          }

          v22 = *MEMORY[0x1E69618E0];
          if (!FigCFEqual())
          {
            v23 = *MEMORY[0x1E69618E8];
            if (!FigCFEqual())
            {
              cf = 0;
              v24 = FigEndpointManagerGetCMBaseObject();
              v25 = *(*(CMBaseObjectGetVTable() + 8) + 48);
              if (v25)
              {
                v25(v24, *MEMORY[0x1E69618C8], v5, &cf);
              }

              FigCFNumberGetUInt64();
              if (cf)
              {
                CFRelease(cf);
              }
            }
          }

          if (v43[0])
          {
            CFRelease(v43[0]);
          }

          UInt64 = FigCFNumberCreateUInt64();
          CFDictionarySetValue(Mutable, @"EndpointManager_SupportedEndpointFeaturesKey", UInt64);
          if (UInt64)
          {
            CFRelease(UInt64);
          }

          v43[0] = 0;
          v27 = FigEndpointManagerGetCMBaseObject();
          v28 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v28)
          {
            v28(v27, *MEMORY[0x1E69618C0], v5, v43);
          }

          FigCFNumberGetUInt64();
          if (v43[0])
          {
            CFRelease(v43[0]);
          }

          v29 = FigCFNumberCreateUInt64();
          CFDictionarySetValue(Mutable, @"EndpointManager_SupportedDiscoveryModesKey", v29);
          if (v29)
          {
            CFRelease(v29);
          }

          v38[0] = MEMORY[0x1E69E9820];
          v38[1] = 3221225472;
          v38[2] = __discoveryManager_registerEndpointManager_block_invoke;
          v38[3] = &__block_descriptor_56_e5_v8__0l;
          v38[4] = value;
          v38[5] = v36;
          v38[6] = Mutable;
          FigRouteDiscoveryManagerRunBlockWhileEndpointManagerInfoLockIsLocked(v38);
          [+[MXEndpointDescriptorCache sharedInstance](MXEndpointDescriptorCache registerEndpointManagerForCaching:"registerEndpointManagerForCaching:", a1];
          CMNotificationCenterGetDefaultLocalCenter();
          v30 = *MEMORY[0x1E6961898];
          CMNotificationCenterAddListener();
          if (v37)
          {
            v31 = &unk_1EB75D488;
          }

          else
          {
            v31 = 24;
          }

          for (i = 8; i != 224; i += 24)
          {
            v33 = *(v31 + i);
            *(v31 + i) = v17;
            if (v17)
            {
              CFRetain(v17);
            }

            if (v33)
            {
              CFRelease(v33);
            }
          }

          FigRouteDiscoveryManagerUpdateDiscoveryMode();
          if (Mutable)
          {
            CFRelease(Mutable);
          }
        }
      }

      else
      {
        discoveryManager_registerEndpointManager_cold_2();
      }
    }

    else
    {
      discoveryManager_registerEndpointManager_cold_3();
    }
  }

  else
  {
    discoveryManager_registerEndpointManager_cold_4();
  }

  if (value)
  {
    CFRelease(value);
  }

  v34 = *MEMORY[0x1E69E9840];
}

uint64_t FigRouteDiscoveryManagerRegisterEndpointManager(CFTypeRef cf)
{
  if (discoverManager_getSharedManager_onceToken == -1)
  {
    if (cf)
    {
      goto LABEL_3;
    }

LABEL_21:
    FigRouteDiscoveryManagerRegisterEndpointManager_cold_2();
    return 0;
  }

  FigRouteDiscoveryManagerCopyCachedAudioSessionRouteInformation_cold_1();
  if (!cf)
  {
    goto LABEL_21;
  }

LABEL_3:
  v2 = qword_1EB75D478;
  if (discoverManager_getSharedManager_discoveryState)
  {
    CFRetain(cf);
    v14 = 0;
    CMBaseObject = FigEndpointManagerGetCMBaseObject();
    v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v4)
    {
      v4(CMBaseObject, *MEMORY[0x1E69618B8], *MEMORY[0x1E695E480], &v14);
    }

    v5 = *MEMORY[0x1E69618F8];
    v6 = FigCFEqual();
    v7 = &qword_1EB75D478;
    if (!v2)
    {
      v7 = 8;
    }

    v8 = *v7;
    if (v6)
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __FigRouteDiscoveryManagerRegisterEndpointManager_block_invoke;
      v13[3] = &__block_descriptor_40_e5_v8__0l;
      v13[4] = cf;
      MXDispatchAsyncAndWait("FigRouteDiscoveryManagerRegisterEndpointManager", "FigRouteDiscoveryManager.m", 2540, 0, 0, v8, v13);
      CFRelease(cf);
    }

    else
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __FigRouteDiscoveryManagerRegisterEndpointManager_block_invoke_2;
      v12[3] = &__block_descriptor_40_e5_v8__0l;
      v12[4] = cf;
      MXDispatchAsync("FigRouteDiscoveryManagerRegisterEndpointManager", "FigRouteDiscoveryManager.m", 2549, 0, 0, v8, v12);
    }

    if (v14)
    {
      CFRelease(v14);
    }
  }

  else
  {
    if (qword_1EB75D478)
    {
      v9 = &qword_1EB75D578;
    }

    else
    {
      v9 = 264;
    }

    Mutable = *v9;
    if (!*v9)
    {
      Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
      *v9 = Mutable;
    }

    CFArrayAppendValue(Mutable, cf);
  }

  return 0;
}

void __FigRouteDiscoveryManagerRegisterEndpointManager_block_invoke_2(uint64_t a1)
{
  discoveryManager_registerEndpointManager(*(a1 + 32));
  v2 = *(a1 + 32);
  if (v2)
  {

    CFRelease(v2);
  }
}

void FigRouteDiscoveryManagerInit()
{
  v4 = *MEMORY[0x1E69E9840];
  if (dword_1EB75DF60)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (discoverManager_getSharedManager_onceToken != -1)
  {
    FigRouteDiscoveryManagerStart_cold_2();
  }

  if (dword_1EB75DF60)
  {
    v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    if (dword_1EB75DF60)
    {
      v2 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  MXDebugInstallSysdiagnoseBlock(@"DiscovererList", &__block_literal_global_0);
  v3 = *MEMORY[0x1E69E9840];
}

void __FigRouteDiscoveryManagerInit_block_invoke()
{
  if (discoverManager_getSharedManager_onceToken != -1)
  {
    FigRouteDiscoveryManagerCopyCachedAudioSessionRouteInformation_cold_1();
  }

  v0 = &discoverManager_getSharedManager_discoveryState;
  v1 = &qword_1EB75D478;
  if (!qword_1EB75D478)
  {
    v0 = 0;
    v1 = 8;
  }

  v2 = *v1;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __FigRouteDiscoveryManagerInit_block_invoke_2;
  v3[3] = &__block_descriptor_40_e5_v8__0l;
  v3[4] = v0;
  MXDispatchAsync("FigRouteDiscoveryManagerInit_block_invoke", "FigRouteDiscoveryManager.m", 2593, 0, 0, v2, v3);
}

void __FigRouteDiscoveryManagerInit_block_invoke_2(uint64_t a1)
{
  v1 = 0;
  cf[16] = *MEMORY[0x1E69E9840];
  v25 = *(a1 + 32);
  alloc = *MEMORY[0x1E695E480];
  do
  {
    Mutable = CFStringCreateMutable(alloc, 0);
    v3 = *(v25 + 256);
    FigSimpleMutexLock();
    v4 = v25 + 24 + 24 * v1;
    Copy = CFArrayCreateCopy(alloc, *v4);
    CFStringAppendFormat(Mutable, 0, @"CURRENT DISCOVERYMODE %@ ::", *(v4 + 8));
    v6 = *(v25 + 256);
    FigSimpleMutexUnlock();
    if (Copy)
    {
      Count = CFArrayGetCount(Copy);
      CFStringAppendFormat(Mutable, 0, @"Discoverers %ld\n", Count);
      if (Count >= 1)
      {
        v8 = 0;
        v9 = 1;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(Copy, v8);
          v11 = discoveryManager_copyDiscovererFromWeakRef(ValueAtIndex);
          if (5 * (v8 / 5) == v8)
          {
            if (v1 > 6)
            {
              v12 = 0;
            }

            else
            {
              v12 = *(&off_1E7AE7290 + v1);
            }

            CFStringAppendFormat(Mutable, 0, @"Discoverer Type: %@", v12, v23);
          }

          if (!v11)
          {
            goto LABEL_30;
          }

          cf[0] = 0;
          v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v13)
          {
            v13(v11, @"DiscoveryMode", alloc, cf);
          }

          *v28 = 0;
          v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v14)
          {
            v14(v11, @"clientName", alloc, v28);
          }

          v27 = 0;
          v15 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v15)
          {
            v15(v11, @"discovererUUID", alloc, &v27);
          }

          if (cf[0] && *v28)
          {
            break;
          }

          if (cf[0])
          {
            CFStringAppendFormat(Mutable, 0, @"\n \t\t[%d] NONAME=%@", v8, cf[0], v24);
LABEL_22:
            if (v27)
            {
              CFStringAppendFormat(Mutable, 0, @" uuid=%@", v27);
            }
          }

          if (cf[0])
          {
            CFRelease(cf[0]);
            cf[0] = 0;
          }

          if (*v28)
          {
            CFRelease(*v28);
            *v28 = 0;
          }

          CFRelease(v11);
          if (v27)
          {
            CFRelease(v27);
          }

LABEL_30:
          if (Count - 1 == v8)
          {
            if (dword_1EB75DF60)
            {
              LODWORD(v27) = 0;
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v17 = v27;
              if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT))
              {
                v18 = v17;
              }

              else
              {
                v18 = v17 & 0xFFFFFFFE;
              }

              if (v18)
              {
                *v28 = 136315394;
                *&v28[4] = "discoveryManager_logDiscoverers";
                v29 = 2114;
                v30 = Mutable;
                LODWORD(v23) = 22;
                _os_log_send_and_compose_impl();
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }
          }

          else if (5 * (v9 / 5) - 1 == v8)
          {
            if (dword_1EB75DF60)
            {
              LODWORD(v27) = 0;
              v19 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v20 = v27;
              if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
              {
                v21 = v20;
              }

              else
              {
                v21 = v20 & 0xFFFFFFFE;
              }

              if (v21)
              {
                *v28 = 136315394;
                *&v28[4] = "discoveryManager_logDiscoverers";
                v29 = 2114;
                v30 = Mutable;
                LODWORD(v23) = 22;
                _os_log_send_and_compose_impl();
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            if (Mutable)
            {
              CFRelease(Mutable);
            }

            Mutable = CFStringCreateMutable(alloc, 0);
          }

          ++v8;
          ++v9;
          if (Count == v8)
          {
            goto LABEL_50;
          }
        }

        CFStringAppendFormat(Mutable, 0, @"\n \t\t[%d] %@=%@", v8, *v28, cf[0]);
        goto LABEL_22;
      }

LABEL_50:
      if (Mutable)
      {
LABEL_51:
        CFRelease(Mutable);
      }
    }

    else
    {
      CFStringAppendFormat(Mutable, 0, @"Discoverers %ld\n", 0);
      if (Mutable)
      {
        goto LABEL_51;
      }
    }

    if (Copy)
    {
      CFRelease(Copy);
    }

    ++v1;
  }

  while (v1 != 9);
  v22 = *MEMORY[0x1E69E9840];
}

void FigRouteDiscoveryManagerLowerBTDiscoveryModeFromDetailed()
{
  if (discoverManager_getSharedManager_onceToken != -1)
  {
    FigRouteDiscoveryManagerCopyCachedAudioSessionRouteInformation_cold_1();
  }

  v0 = &discoverManager_getSharedManager_discoveryState;
  v1 = &qword_1EB75D478;
  if (!qword_1EB75D478)
  {
    v0 = 0;
    v1 = 8;
  }

  v2 = *v1;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __FigRouteDiscoveryManagerLowerBTDiscoveryModeFromDetailed_block_invoke;
  v3[3] = &__block_descriptor_40_e5_v8__0l;
  v3[4] = v0;
  MXDispatchAsync("FigRouteDiscoveryManagerLowerBTDiscoveryModeFromDetailed", "FigRouteDiscoveryManager.m", 2606, 0, 0, v2, v3);
}

uint64_t __FigRouteDiscoveryManagerLowerBTDiscoveryModeFromDetailed_block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __FigRouteDiscoveryManagerLowerBTDiscoveryModeFromDetailed_block_invoke_2;
  v2[3] = &__block_descriptor_40_e5_v8__0l;
  v2[4] = *(a1 + 32);
  return FigRouteDiscoveryManagerRunBlockWhileEndpointManagerInfoLockIsLocked(v2);
}

void __FigRouteDiscoveryManagerLowerBTDiscoveryModeFromDetailed_block_invoke_2(uint64_t a1)
{
  v2 = 0;
  v12 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69618D8];
  while (1)
  {
    Count = *(*(a1 + 32) + 240);
    if (Count)
    {
      Count = CFArrayGetCount(Count);
    }

    if (v2 >= Count)
    {
      break;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(*(*(a1 + 32) + 240), v2);
    Value = CFDictionaryGetValue(ValueAtIndex, @"EndpointManager_RefKey");
    CFDictionaryGetValue(ValueAtIndex, @"EndpointManager_TypeKey");
    ++v2;
    if (FigCFEqual())
    {
      v7 = discoveryManager_copyHighestRequestedDiscoveryModeForEndpointManager(ValueAtIndex, 0);
      if (Value)
      {
        v8 = *MEMORY[0x1E6961870];
        if (FigCFEqual())
        {
          if (dword_1EB75DF60)
          {
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          v10 = *(*(CMBaseObjectGetVTable() + 16) + 8);
          if (v10)
          {
            v10(Value, *MEMORY[0x1E6961868], 0);
          }
        }
      }

      if (v7)
      {
        CFRelease(v7);
      }

      break;
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

id __discoverManager_getSharedManager_block_invoke()
{
  v18 = *MEMORY[0x1E69E9840];
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work();
  fig_note_initialize_category_with_default_work();
  if (dword_1EB75DF60 < 0x100)
  {
    if (dword_1EB75DF60)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  else
  {
    dword_1EB75DF60 = 0;
  }

  IsAVODDiscoveryEnhancementEnabled = MX_FeatureFlags_IsAVODDiscoveryEnhancementEnabled();
  v2 = MEMORY[0x1E695E480];
  if (IsAVODDiscoveryEnhancementEnabled)
  {
    qword_1EB75D588 = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  }

  discoverManager_getSharedManager_discoveryState = 0;
  qword_1EB75D578 = 0;
  inactive = dispatch_workloop_create_inactive("MediaExperienceDiscovery WL");
  dispatch_workloop_set_scheduler_priority();
  dispatch_activate(inactive);
  initially_inactive = dispatch_queue_attr_make_initially_inactive(0);
  v5 = dispatch_queue_attr_make_with_autorelease_frequency(initially_inactive, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  discoveryManager_getSharedSerializationQueue_sharedSerializationQueue = dispatch_queue_create("com.apple.mediaexperience.DiscoveryManagerSerializationQueue", v5);
  dispatch_set_target_queue(discoveryManager_getSharedSerializationQueue_sharedSerializationQueue, inactive);
  dispatch_set_qos_class_floor(discoveryManager_getSharedSerializationQueue_sharedSerializationQueue, QOS_CLASS_DEFAULT, 0);
  dispatch_activate(discoveryManager_getSharedSerializationQueue_sharedSerializationQueue);
  dispatch_release(inactive);
  qword_1EB75D478 = discoveryManager_getSharedSerializationQueue_sharedSerializationQueue;
  qword_1EB75D598 = 0;
  unk_1EB75D5A0 = 0;
  if (dword_1EB75DF60)
  {
    v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  qword_1EB75D480 = dispatch_queue_create("com.apple.mediaexperience.DiscoveryManagerNotificationQueue", v7);
  if (CMSMDeviceState_ItsAHomePod())
  {
    if (!dword_1EB75DF60)
    {
      goto LABEL_15;
    }

    v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  else
  {
    CMSMDeviceState_AddQueueToWatchDogMonitoring(qword_1EB75D480);
  }

  if (dword_1EB75DF60)
  {
    v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

LABEL_15:
  v10 = *v2;
  v11 = MEMORY[0x1E695E9C0];
  v12 = &qword_1EB75D490;
  qword_1EB75D560 = CFArrayCreateMutable(*v2, 0, MEMORY[0x1E695E9C0]);
  v13 = *MEMORY[0x1E6961878];
  v14 = 9;
  do
  {
    *(v12 - 1) = CFArrayCreateMutable(v10, 0, v11);
    if (v13)
    {
      v15 = CFRetain(v13);
    }

    else
    {
      v15 = 0;
    }

    *v12 = v15;
    v12 += 3;
    --v14;
  }

  while (v14);
  qword_1EB75D570 = FigSimpleMutexCreate();
  qword_1EB75D568 = FigReentrantMutexCreate();
  qword_1EB75D580 = objc_alloc_init(MEMORY[0x1E695DF20]);
  result = objc_alloc_init(MEMORY[0x1E696AB30]);
  qword_1EB75D5A8 = result;
  v17 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __discoveryManager_updateDiscoveryModeForType_block_invoke_35(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (dword_1EB75DF60)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    CFRelease(v4);
  }

  result = FigRouteDiscoveryManagerUpdateDiscoveryMode(v4, a2);
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void __discoveryManager_registerEndpointManager_block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = *MEMORY[0x1E69618F8];
  v4 = FigCFEqual();
  v5 = a1[6];
  v6 = *(a1[5] + 240);
  if (v4)
  {

    CFArrayInsertValueAtIndex(v6, 0, v5);
  }

  else
  {
    v7 = a1[6];

    CFArrayAppendValue(v6, v7);
  }
}

void __FigRouteDiscoveryManagerActivityMonitorEnsureStarted_block_invoke()
{
  state64[16] = *MEMORY[0x1E69E9840];
  if (activityLevelNotifyToken != -1)
  {
    state64[0] = 0;
    notify_get_state(activityLevelNotifyToken, state64);
    v0 = state64[0];
    if (dword_1EB75DF60)
    {
      v24 = 0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (v0 == 3)
    {
      if (discoverManager_getSharedManager_onceToken != -1)
      {
        FigRouteDiscoveryManagerStart_cold_2();
      }

      v2 = qword_1EB75D478;
      if (qword_1EB75D478)
      {
        v3 = &unk_1EB75D590;
      }

      else
      {
        v3 = 288;
      }

      if (!*v3)
      {
        if (dword_1EB75DF60)
        {
          v24 = 0;
          type[0] = OS_LOG_TYPE_DEFAULT;
          v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v9 = 8;
        if (v2)
        {
          v9 = &qword_1EB75D478;
        }

        *v3 = MXDispatchUtilityCreateOneShotTimer(5.0, "figRouteDiscoveryManager_startTimerForActivityMonitoring", "FigRouteDiscoveryManager.m", 1269, 0, 0, *v9, &__block_literal_global_76, 0, 0);
        goto LABEL_35;
      }

      if (!dword_1EB75DF60)
      {
        goto LABEL_34;
      }
    }

    else
    {
      if (v0 < 4u || currentActivityLevel != 3)
      {
        goto LABEL_35;
      }

      if (discoverManager_getSharedManager_onceToken != -1)
      {
        FigRouteDiscoveryManagerStart_cold_2();
      }

      v5 = 288;
      if (qword_1EB75D478)
      {
        v5 = &unk_1EB75D590;
      }

      if (!*v5)
      {
        if (dword_1EB75DF60)
        {
          v24 = 0;
          type[0] = OS_LOG_TYPE_DEFAULT;
          v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          if (discoverManager_getSharedManager_onceToken != -1)
          {
            FigRouteDiscoveryManagerStart_cold_2();
          }
        }

        v12 = 0;
        if (qword_1EB75D478)
        {
          v13 = &qword_1EB75D588;
        }

        else
        {
          v13 = 280;
        }

        v21 = *MEMORY[0x1E695E480];
        while (1)
        {
          Count = *v13;
          if (*v13)
          {
            Count = CFArrayGetCount(Count);
          }

          if (v12 >= Count)
          {
            break;
          }

          ValueAtIndex = CFArrayGetValueAtIndex(*v13, v12);
          v16 = discoveryManager_copyDiscovererFromWeakRef(ValueAtIndex);
          if (v16)
          {
            v17 = v16;
            *type = 0;
            v18 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v18)
            {
              v18(v17, @"DiscoveryMode", v21, type);
            }

            if (FigCFEqual())
            {
              if (dword_1EB75DF60)
              {
                v19 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }

              FigRouteDiscovererSetDiscoveryModeDetailedOnDiscoverer();
              FigRouteDiscoveryManagerUpdateDiscoveryMode();
              NotificationQueue = FigRouteDiscoveryManagerGetNotificationQueue();
              v23[0] = MEMORY[0x1E69E9820];
              v23[1] = 3221225472;
              v23[2] = __figRouteDiscoveryManager_setDiscoveryModeDetailedOnCachedDiscoverers_block_invoke;
              v23[3] = &__block_descriptor_40_e5_v8__0l;
              v23[4] = v17;
              MXDispatchAsync("figRouteDiscoveryManager_setDiscoveryModeDetailedOnCachedDiscoverers", "FigRouteDiscoveryManager.m", 1197, 0, 0, NotificationQueue, v23);
            }

            if (*type)
            {
              CFRelease(*type);
            }

            CFRelease(v17);
          }

          ++v12;
        }

        goto LABEL_35;
      }

      if (!dword_1EB75DF60 || (v24 = 0, type[0] = OS_LOG_TYPE_DEFAULT, v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(), os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT), fig_log_call_emit_and_clean_up_after_send_and_compose(), !dword_1EB75DF60))
      {
LABEL_34:
        figRouteDiscoveryManager_stopTimerForActivityMonitoring(0);
LABEL_35:
        currentActivityLevel = v0;
        goto LABEL_36;
      }
    }

    v24 = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_34;
  }

LABEL_36:
  v11 = *MEMORY[0x1E69E9840];
}