void figRouteDiscoveryManager_stopTimerForActivityMonitoring(int a1)
{
  cf[19] = *MEMORY[0x1E69E9840];
  if (discoverManager_getSharedManager_onceToken != -1)
  {
    FigRouteDiscoveryManagerCopyCachedAudioSessionRouteInformation_cold_1();
  }

  if (qword_1EB75D478)
  {
    v2 = &unk_1EB75D590;
  }

  else
  {
    v2 = 288;
  }

  v3 = *v2;
  if (*v2)
  {
    if (dword_1EB75DF60)
    {
      LODWORD(cf[0]) = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v3 = *v2;
    }

    dispatch_source_cancel(v3);
    if (*v2)
    {
      dispatch_release(*v2);
      *v2 = 0;
    }
  }

  if (a1)
  {
    if (discoverManager_getSharedManager_onceToken != -1)
    {
      FigRouteDiscoveryManagerStart_cold_2();
    }

    v5 = 0;
    if (qword_1EB75D478)
    {
      v6 = &qword_1EB75D588;
    }

    else
    {
      v6 = 280;
    }

    v7 = *MEMORY[0x1E695E480];
    while (1)
    {
      Count = *v6;
      if (*v6)
      {
        Count = CFArrayGetCount(Count);
      }

      if (v5 >= Count)
      {
        break;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(*v6, v5);
      v10 = discoveryManager_copyDiscovererFromWeakRef(ValueAtIndex);
      if (v10)
      {
        v11 = v10;
        cf[0] = 0;
        v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v12)
        {
          v12(v11, @"DiscoveryMode", v7, cf);
        }

        if (FigCFEqual())
        {
          if (dword_1EB75DF60)
          {
            v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          FigRouteDiscovererSetDiscoveryModeNoneOnDiscoverer();
          FigRouteDiscoveryManagerUpdateDiscoveryMode();
        }

        if (cf[0])
        {
          CFRelease(cf[0]);
        }

        CFRelease(v11);
      }

      ++v5;
    }
  }

  else if (dword_1EB75DF60)
  {
    LODWORD(cf[0]) = 0;
    v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v15 = *MEMORY[0x1E69E9840];
}

uint64_t __figRouteDiscoveryManager_setDiscoveryModeDetailedOnCachedDiscoverers_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (dword_1EB75DF60)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  CMNotificationCenterGetDefaultLocalCenter();
  v3 = *(a1 + 32);
  result = CMNotificationCenterPostNotification();
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B184AB40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t BiomeStreamsLibraryCore()
{
  v2 = *MEMORY[0x1E69E9840];
  if (!BiomeStreamsLibraryCore_frameworkLibrary)
  {
    BiomeStreamsLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  result = BiomeStreamsLibraryCore_frameworkLibrary;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __BiomeStreamsLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  BiomeStreamsLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t BiomeLibraryLibraryCore()
{
  v2 = *MEMORY[0x1E69E9840];
  if (!BiomeLibraryLibraryCore_frameworkLibrary)
  {
    BiomeLibraryLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  result = BiomeLibraryLibraryCore_frameworkLibrary;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __BiomeLibraryLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  BiomeLibraryLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getBMDeviceSilentModeClass_block_invoke(uint64_t a1)
{
  BiomeLibraryLibrary();
  result = objc_getClass("BMDeviceSilentMode");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    getBMDeviceSilentModeClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  }

  else
  {
    __getBMDeviceSilentModeClass_block_invoke_cold_1();
    return BiomeLibraryLibrary();
  }

  return result;
}

uint64_t BiomeLibraryLibrary()
{
  v0 = BiomeLibraryLibraryCore();
  if (!v0)
  {
    v2 = abort_report_np();
    free(v2);
  }

  return v0;
}

void *__getBiomeLibrarySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = BiomeLibraryLibrary();
  result = dlsym(v2, "BiomeLibrary");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBiomeLibrarySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

CFMutableDictionaryRef FigRoutingContextUtilities_CreateRouteConfigUpdatedFailedPayload(const __CFDictionary *a1, uint64_t a2, int a3, const __CFArray *a4)
{
  v7 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v9 = CFArrayCreateMutable(v7, 0, MEMORY[0x1E695E9C0]);
  if (a4)
  {
    Count = CFArrayGetCount(a4);
    if (Count >= 1)
    {
      v11 = Count;
      v12 = 0;
      v13 = *MEMORY[0x1E69620F8];
      do
      {
        value = 0;
        CFArrayGetValueAtIndex(a4, v12);
        CMBaseObject = FigEndpointGetCMBaseObject();
        v15 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v15)
        {
          v15(CMBaseObject, v13, v7, &value);
        }

        if (value)
        {
          CFArrayAppendValue(v9, value);
          if (value)
          {
            CFRelease(value);
          }
        }

        ++v12;
      }

      while (v11 != v12);
    }
  }

  if (a1)
  {
    v16 = CFDictionaryGetValue(a1, @"clientRouteRequestID");
    if (v16)
    {
      v17 = CFRetain(v16);
      CFDictionaryGetValue(a1, @"initiator");
      if (v17)
      {
        goto LABEL_16;
      }
    }

    else
    {
      CFDictionaryGetValue(a1, @"initiator");
    }
  }

  v18 = mach_absolute_time();
  v17 = CFStringCreateWithFormat(v7, 0, @"%d", v18);
LABEL_16:
  FigCFDictionarySetValue();
  FigCFDictionarySetValue();
  FigCFDictionarySetValue();
  if (a3 == -72276)
  {
    FigCFDictionarySetValue();
    FigCFDictionarySetValue();
    FigCFDictionarySetValue();
  }

  if (v17)
  {
    CFRelease(v17);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  return Mutable;
}

void FigRoutingManagerContextUtilities_PostNoOpRouteConfigUpdatedToClientsOfContextWithUUIDAndItsFollowers(uint64_t a1, const __CFDictionary *a2, CFDictionaryRef theDict)
{
  if (theDict)
  {
    CFDictionaryGetValue(theDict, @"initiator");
  }

  if (!FigCFEqual() && !FigCFEqual() && !FigCFEqual())
  {
    FigRoutingManagerContextUtilities_PostRouteConfigUpdatedToClientsOfContextWithUUIDAndItsFollowers(a1, a2, @"configUpdateReasonEndedNoop");

    FigRoutingManagerContextUtilities_PostNotificationToClientsOfContextWithUUIDAndItsFollowers(a1, @"currentRouteChanged", 0);
  }
}

void FigRoutingManagerContextUtilities_Create(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (routingContextUtilities_getSharedContextUtilities_sContextUtilitiesStateSetupOnce != -1)
    {
      FigRoutingManagerContextUtilities_PostNotificationToClientsOfContextWithUUIDAndItsFollowers_cold_1();
    }

    if (byte_1EB75CFA8)
    {
      v4[0] = MEMORY[0x1E69E9820];
      v4[1] = 3221225472;
      v4[2] = __FigRoutingManagerContextUtilities_Create_block_invoke;
      v4[3] = &unk_1E7AE79D0;
      v4[5] = &routingContextUtilities_getSharedContextUtilities_contextState;
      v4[6] = a1;
      v4[4] = a2;
      MXDispatchSync("FigRoutingManagerContextUtilities_Create", "FigRoutingManagerContextUtilities.m", 930, 0, 0, qword_1EB75CF98, v4);
    }
  }
}

uint64_t FigRoutingContextUtilities_SetLeaderUUIDForContext(const void *a1, uint64_t a2, __CFString *a3)
{
  if (routingContextUtilities_getSharedContextUtilities_sContextUtilitiesStateSetupOnce != -1)
  {
    FigRoutingManagerContextUtilities_PostNotificationToClientsOfContextWithUUIDAndItsFollowers_cold_1();
  }

  v6 = 4294949876;
  if (a2 && a1 && byte_1EB75CFA8)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0;
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v12 = 0;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __FigRoutingContextUtilities_SetLeaderUUIDForContext_block_invoke;
    v8[3] = &unk_1E7AE79F8;
    v8[6] = a1;
    v8[7] = a2;
    v8[4] = &v13;
    v8[5] = &v9;
    v8[8] = &routingContextUtilities_getSharedContextUtilities_contextState;
    MXDispatchSync("FigRoutingContextUtilities_SetLeaderUUIDForContext", "FigRoutingManagerContextUtilities.m", 1020, 0, 0, qword_1EB75CF98, v8);
    if (a3)
    {
      FigRoutingManagerContextUtilities_PostRouteConfigUpdatedToClientsOfContextWithUUIDAndItsFollowers(a2, 0, a3);
      FigRoutingManagerContextUtilities_PostNotificationToClientsOfContextWithUUIDAndItsFollowers(a2, @"currentRouteChanged", 0);
    }

    if (qword_1EB75CFC0 == a1)
    {
      CMSMUtility_UpdateAudioBehaviourForSessionsUsingRoutingContextUUID();
      routingContextUtilities_setRoutingContextDetailsForVolumeControl(v10[3], a1);
    }

    v6 = *(v14 + 6);
    _Block_object_dispose(&v9, 8);
    _Block_object_dispose(&v13, 8);
  }

  return v6;
}

void sub_1B184C228(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t _routingContextUtilities_setLeaderUUIDForContext(void *a1, void *key)
{
  if (routingContextUtilities_getSharedContextUtilities_sContextUtilitiesStateSetupOnce != -1)
  {
    FigRoutingManagerContextUtilities_PostNotificationToClientsOfContextWithUUIDAndItsFollowers_cold_1();
  }

  if (byte_1EB75CFA8)
  {
    v4 = &qword_1EB75CF80;
  }

  else
  {
    v4 = 480;
  }

  CFDictionaryGetValue(*v4, key);
  v5 = FigCFWeakReferenceHolderCreateWithReferencedObject();
  CFDictionaryGetValue(*v4, a1);
  v6 = FigCFWeakReferenceHolderCreateWithReferencedObject();
  ContextForUUIDFromDict = _routingContextUtilities_getContextForUUIDFromDict(*v4, key);
  v8 = _routingContextUtilities_getContextForUUIDFromDict(*v4, a1);
  if (v5)
  {
    v9 = v6 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v11 = v8;
    if (_routingContextUtilities_getIndexOfFollower(ContextForUUIDFromDict, v8) < 0)
    {
      CFArrayAppendValue(*(ContextForUUIDFromDict + 11), v6);
    }

    if (!v11)
    {
LABEL_25:
      CFRelease(v6);
      if (!v5)
      {
        return v11;
      }

      goto LABEL_13;
    }

    v12 = *(v11 + 80);
    if (*v11 == 10)
    {
      _routingContextUtilities_pruneLeaders(v12);
    }

    else
    {
      Count = CFArrayGetCount(v12);
      if (Count)
      {
        if (Count != 1)
        {
LABEL_24:
          v11 = 0;
          goto LABEL_25;
        }

        CFArrayRemoveValueAtIndex(*(v11 + 80), 0);
      }
    }

    CFArrayAppendValue(*(v11 + 80), v5);
    goto LABEL_24;
  }

  v11 = 4294949876;
  if (v6)
  {
    goto LABEL_25;
  }

  if (v5)
  {
LABEL_13:
    CFRelease(v5);
  }

  return v11;
}

uint64_t FigRoutingContextUtilities_SetLeaderToSystemAudioContext(const void *a1, __CFString *a2)
{
  if (routingContextUtilities_getSharedContextUtilities_sContextUtilitiesStateSetupOnce != -1)
  {
    FigRoutingManagerContextUtilities_PostNotificationToClientsOfContextWithUUIDAndItsFollowers_cold_1();
  }

  if (!byte_1EB75CFA8)
  {
    return 4294949876;
  }

  v4 = qword_1EB75CFB0;

  return FigRoutingContextUtilities_SetLeaderUUIDForContext(a1, v4, a2);
}

uint64_t FigRoutingContextUtilities_UnfollowUUIDFromLeader(const void *a1, __CFString *a2)
{
  if (routingContextUtilities_getSharedContextUtilities_sContextUtilitiesStateSetupOnce != -1)
  {
    FigRoutingManagerContextUtilities_PostNotificationToClientsOfContextWithUUIDAndItsFollowers_cold_1();
  }

  v4 = 4294949876;
  if (a1 && byte_1EB75CFA8)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 0;
    v7 = 0;
    v8 = &v7;
    v9 = 0x2020000000;
    v10 = 0;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __FigRoutingContextUtilities_UnfollowUUIDFromLeader_block_invoke;
    v6[3] = &unk_1E7AE7A20;
    v6[6] = &routingContextUtilities_getSharedContextUtilities_contextState;
    v6[7] = a1;
    v6[4] = &v7;
    v6[5] = &v11;
    MXDispatchSync("FigRoutingContextUtilities_UnfollowUUIDFromLeader", "FigRoutingManagerContextUtilities.m", 1071, 0, 0, qword_1EB75CF98, v6);
    if (a2)
    {
      FigRoutingManagerContextUtilities_PostRouteConfigUpdatedToClientsOfContextWithUUIDAndItsFollowers(a1, 0, a2);
      FigRoutingManagerContextUtilities_PostNotificationToClientsOfContextWithUUIDAndItsFollowers(a1, @"currentRouteChanged", 0);
    }

    if (qword_1EB75CFC0 == a1)
    {
      CMSMUtility_UpdateAudioBehaviourForSessionsUsingRoutingContextUUID();
      routingContextUtilities_setRoutingContextDetailsForVolumeControl(v8[3], a1);
    }

    v4 = *(v12 + 6);
    _Block_object_dispose(&v7, 8);
    _Block_object_dispose(&v11, 8);
  }

  return v4;
}

void sub_1B184C5E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t _routingContextUtilities_getIndexOfFollower(uint64_t a1, uint64_t a2)
{
  v2 = -1;
  if (a1)
  {
    if (a2)
    {
      v5 = *(a1 + 88);
      if (v5)
      {
        Count = CFArrayGetCount(v5);
        if (Count >= 1)
        {
          v7 = Count;
          v2 = 0;
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 88), v2);
            ContextFromWeakRef = _routingContextUtilities_getContextFromWeakRef(ValueAtIndex);
            if (ContextFromWeakRef)
            {
              v10 = *(ContextFromWeakRef + 1);
              v11 = *(a2 + 8);
              if (FigCFEqual())
              {
                break;
              }
            }

            if (v7 == ++v2)
            {
              return -1;
            }
          }
        }
      }
    }
  }

  return v2;
}

void _routingContextUtilities_removeLeader(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
LABEL_9:
    v6 = *MEMORY[0x1E69E9840];
    return;
  }

  v2 = *(a1 + 80);
  if (!v2 || CFArrayGetCount(v2) != 1)
  {
    if (dword_1EB75DF20)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    goto LABEL_9;
  }

  v3 = *(a1 + 80);
  v4 = *MEMORY[0x1E69E9840];

  CFArrayRemoveValueAtIndex(v3, 0);
}

uint64_t FigRoutingManagerContextUtilities_AddContext(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (routingContextUtilities_getSharedContextUtilities_sContextUtilitiesStateSetupOnce != -1)
  {
    FigRoutingManagerContextUtilities_PostNotificationToClientsOfContextWithUUIDAndItsFollowers_cold_1();
  }

  result = 4294949876;
  if (a2 && a1 && byte_1EB75CFA8)
  {
    FeatureString = routingContextUtilities_getFeatureString(a3);
    Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], 216);
    CFDataSetLength(Mutable, 216);
    MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __FigRoutingManagerContextUtilities_AddContext_block_invoke;
    v12[3] = &__block_descriptor_92_e5_v8__0l;
    v12[4] = a1;
    v12[5] = FeatureString;
    v12[6] = a4;
    v12[7] = MutableBytePtr;
    v13 = a3;
    v12[8] = a2;
    v12[9] = Mutable;
    v12[10] = &routingContextUtilities_getSharedContextUtilities_contextState;
    MXDispatchSync("FigRoutingManagerContextUtilities_AddContext", "FigRoutingManagerContextUtilities.m", 1169, 0, 0, qword_1EB75CF98, v12);
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    return 0;
  }

  return result;
}

uint64_t FigRoutingManagerContextUtilities_ResetCurrentlyActivatingEndpointInfo(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = *MEMORY[0x1E69E9840];
  if (routingContextUtilities_getSharedContextUtilities_sContextUtilitiesStateSetupOnce != -1)
  {
    FigRoutingManagerContextUtilities_PostNotificationToClientsOfContextWithUUIDAndItsFollowers_cold_1();
  }

  result = 4294949876;
  if (a1 && byte_1EB75CFA8)
  {
    cf = 0;
    v19 = 0;
    if (a2)
    {
      v7 = *MEMORY[0x1E695E480];
      CMBaseObject = FigEndpointGetCMBaseObject();
      v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v9)
      {
        v9(CMBaseObject, *MEMORY[0x1E69620F8], v7, &v19);
      }

      v10 = FigEndpointGetCMBaseObject();
      v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v11)
      {
        v11(v10, *MEMORY[0x1E69621E8], v7, &cf);
      }
    }

    if (dword_1EB75DF20)
    {
      v17 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
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

    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v23 = 0;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __FigRoutingManagerContextUtilities_ResetCurrentlyActivatingEndpointInfo_block_invoke;
    v15[3] = &unk_1E7AE79A8;
    v15[6] = a1;
    v15[7] = a2;
    v15[4] = &v20;
    v15[5] = &routingContextUtilities_getSharedContextUtilities_contextState;
    v15[8] = a3;
    MXDispatchSync("FigRoutingManagerContextUtilities_ResetCurrentlyActivatingEndpointInfo", "FigRoutingManagerContextUtilities.m", 1345, 0, 0, qword_1EB75CF98, v15);
    v13 = v21[3];
    if (v13)
    {
      CFRelease(v13);
    }

    _Block_object_dispose(&v20, 8);
    result = 0;
  }

  v14 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t FigRoutingManagerContextUtilities_ResetCurrentlyActivatingSubEndpointsInfo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v42 = *MEMORY[0x1E69E9840];
  if (routingContextUtilities_getSharedContextUtilities_sContextUtilitiesStateSetupOnce != -1)
  {
    FigRoutingManagerContextUtilities_PostNotificationToClientsOfContextWithUUIDAndItsFollowers_cold_1();
  }

  v9 = 4294949876;
  if (a1 && byte_1EB75CFA8)
  {
    v35 = 0;
    cf = 0;
    v33 = 0;
    v34 = 0;
    v10 = MEMORY[0x1E69620F8];
    v11 = MEMORY[0x1E695E480];
    v12 = MEMORY[0x1E69621E8];
    if (a2)
    {
      v13 = *MEMORY[0x1E695E480];
      CMBaseObject = FigEndpointGetCMBaseObject();
      v15 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v15)
      {
        v15(CMBaseObject, *v10, v13, &cf);
      }

      v16 = FigEndpointGetCMBaseObject();
      v17 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v17)
      {
        v17(v16, *v12, v13, &v35);
      }
    }

    if (a3)
    {
      v18 = FigEndpointGetCMBaseObject();
      VTable = CMBaseObjectGetVTable();
      v20 = *v11;
      v21 = *(*(VTable + 8) + 48);
      if (v21)
      {
        v21(v18, *v10, v20, &v34);
      }

      v22 = FigEndpointGetCMBaseObject();
      v23 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v23)
      {
        v23(v22, *v12, v20, &v33);
      }
    }

    if (dword_1EB75DF20)
    {
      v32 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    if (v35)
    {
      CFRelease(v35);
      v35 = 0;
    }

    if (v34)
    {
      CFRelease(v34);
      v34 = 0;
    }

    if (v33)
    {
      CFRelease(v33);
      v33 = 0;
    }

    LOBYTE(v37) = 0;
    LOBYTE(v32) = 0;
    FigCFDictionaryGetBooleanIfPresent();
    FigCFDictionaryGetBooleanIfPresent();
    v38 = 0;
    v39 = &v38;
    v40 = 0x2020000000;
    v41 = 0;
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __FigRoutingManagerContextUtilities_ResetCurrentlyActivatingSubEndpointsInfo_block_invoke;
    v28[3] = &unk_1E7AE7A90;
    v28[4] = &v38;
    v28[5] = &routingContextUtilities_getSharedContextUtilities_contextState;
    v28[6] = a1;
    v28[7] = a2;
    v29 = v37;
    v30 = 0;
    v28[8] = a3;
    v28[9] = a5;
    v28[10] = a4;
    MXDispatchSync("FigRoutingManagerContextUtilities_ResetCurrentlyActivatingSubEndpointsInfo", "FigRoutingManagerContextUtilities.m", 1438, 0, 0, qword_1EB75CF98, v28);
    v9 = *(v39 + 6);
    _Block_object_dispose(&v38, 8);
  }

  v25 = *MEMORY[0x1E69E9840];
  return v9;
}

void _routingContextUtilities_postRouteConfigUpdatedToClientsOfContextWithUUIDAndItsFollowers(void *a1, const __CFDictionary *a2)
{
  RouteConfigUpdatedPayload = routingContextUtilities_createRouteConfigUpdatedPayload(a2);
  if (a1)
  {
    if (routingContextUtilities_getSharedContextUtilities_sContextUtilitiesStateSetupOnce != -1)
    {
      FigRoutingManagerContextUtilities_PostNotificationToClientsOfContextWithUUIDAndItsFollowers_cold_1();
    }

    if (byte_1EB75CFA8)
    {
      ContextForUUIDFromDict = _routingContextUtilities_getContextForUUIDFromDict(qword_1EB75CF80, a1);
      _routingContextUtilities_postNotificationToContextAndItsFollowers(ContextForUUIDFromDict, @"routeConfigUpdated", RouteConfigUpdatedPayload);
    }
  }

  if (RouteConfigUpdatedPayload)
  {

    CFRelease(RouteConfigUpdatedPayload);
  }
}

uint64_t FigRoutingManagerContextUtilities_SaveCommChannelUUID(uint64_t a1, uint64_t a2)
{
  if (routingContextUtilities_getSharedContextUtilities_sContextUtilitiesStateSetupOnce != -1)
  {
    FigRoutingManagerContextUtilities_PostNotificationToClientsOfContextWithUUIDAndItsFollowers_cold_1();
  }

  v4 = 4294949876;
  if (a1 && byte_1EB75CFA8)
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x2020000000;
    v10 = 0;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __FigRoutingManagerContextUtilities_SaveCommChannelUUID_block_invoke;
    v6[3] = &unk_1E7AE7A48;
    v6[4] = &v7;
    v6[5] = &routingContextUtilities_getSharedContextUtilities_contextState;
    v6[6] = a1;
    v6[7] = a2;
    MXDispatchSync("FigRoutingManagerContextUtilities_SaveCommChannelUUID", "FigRoutingManagerContextUtilities.m", 1543, 0, 0, qword_1EB75CF98, v6);
    v4 = *(v8 + 6);
    _Block_object_dispose(&v7, 8);
  }

  return v4;
}

void sub_1B184DD60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t FigRoutingManagerContextUtilities_AddCurrentlyActivatingEndpoint(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = *MEMORY[0x1E69E9840];
  if (routingContextUtilities_getSharedContextUtilities_sContextUtilitiesStateSetupOnce != -1)
  {
    FigRoutingManagerContextUtilities_PostNotificationToClientsOfContextWithUUIDAndItsFollowers_cold_1();
  }

  v10 = 4294949876;
  if (a2 && byte_1EB75CFA8)
  {
    cf = 0;
    v23 = 0;
    if (a3)
    {
      v11 = *MEMORY[0x1E695E480];
      CMBaseObject = FigEndpointGetCMBaseObject();
      v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v13)
      {
        v13(CMBaseObject, *MEMORY[0x1E69620F8], v11, &v23);
      }

      v14 = FigEndpointGetCMBaseObject();
      v15 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v15)
      {
        v15(v14, *MEMORY[0x1E69621E8], v11, &cf);
      }
    }

    if (dword_1EB75DF20)
    {
      v21 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    if (v23)
    {
      CFRelease(v23);
      v23 = 0;
    }

    v24 = 0;
    v25 = &v24;
    v26 = 0x2020000000;
    v27 = 0;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __FigRoutingManagerContextUtilities_AddCurrentlyActivatingEndpoint_block_invoke;
    v19[3] = &unk_1E7AE7AB8;
    v19[4] = &v24;
    v19[5] = &routingContextUtilities_getSharedContextUtilities_contextState;
    v19[6] = a2;
    v19[7] = a3;
    v19[8] = a1;
    v19[9] = a4;
    v19[10] = a5;
    MXDispatchSync("FigRoutingManagerContextUtilities_AddCurrentlyActivatingEndpoint", "FigRoutingManagerContextUtilities.m", 1584, 0, 0, qword_1EB75CF98, v19);
    v10 = *(v25 + 6);
    _Block_object_dispose(&v24, 8);
  }

  v17 = *MEMORY[0x1E69E9840];
  return v10;
}

void _routingContextUtilities_checkActivationTimeout(uint64_t a1, const void *a2)
{
  if (routingContextUtilities_getSharedContextUtilities_sContextUtilitiesStateSetupOnce != -1)
  {
    FigRoutingManagerContextUtilities_PostNotificationToClientsOfContextWithUUIDAndItsFollowers_cold_1();
  }

  if (byte_1EB75CFA8)
  {
    v3 = &AVSystemController_EUVolumeLimitNotificationParameter;
    Count = CFDictionaryGetCount(qword_1EB75CF80);
    v5 = malloc_type_calloc(Count, 8uLL, 0x80040B8603338uLL);
    CFDictionaryGetKeysAndValues(qword_1EB75CF80, v5, 0);
    if (Count >= 1)
    {
      v6 = 0;
      v19 = Count;
      v18 = v5;
      do
      {
        ContextForUUIDFromDict = _routingContextUtilities_getContextForUUIDFromDict(v3[496], v5[v6]);
        v8 = *(ContextForUUIDFromDict + 14);
        if (v8)
        {
          v9 = CFRetain(v8);
          if (v9)
          {
            v10 = v9;
            v11 = CFArrayGetCount(v9);
            if (v11 >= 1)
            {
              v12 = v11;
              for (i = 0; i != v12; ++i)
              {
                ValueAtIndex = CFArrayGetValueAtIndex(v10, i);
                Value = CFDictionaryGetValue(ValueAtIndex, @"CurrentlyActivatingEndpointsInfo_Endpoint");
                if (Value == a2)
                {
                  v16 = Value;
                  v17 = CFDictionaryGetValue(ValueAtIndex, @"CurrentlyActivatingEndpointsInfo_ClientRouteChangeOptions");
                  if (v17)
                  {
                    CFDictionaryGetValue(v17, @"clientRouteRequestID");
                  }

                  if (FigCFEqual() && *(ContextForUUIDFromDict + 14))
                  {
                    off_1EB75CF88(*(ContextForUUIDFromDict + 1), v16);
                  }
                }
              }
            }

            CFRelease(v10);
            v3 = &AVSystemController_EUVolumeLimitNotificationParameter;
            v5 = v18;
            Count = v19;
          }
        }

        ++v6;
      }

      while (v6 != Count);
    }

    free(v5);
  }
}

uint64_t FigRoutingManagerContextUtilities_RemoveCurrentlyActivatingEndpoint(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = *MEMORY[0x1E69E9840];
  if (routingContextUtilities_getSharedContextUtilities_sContextUtilitiesStateSetupOnce != -1)
  {
    FigRoutingManagerContextUtilities_PostNotificationToClientsOfContextWithUUIDAndItsFollowers_cold_1();
  }

  v7 = 4294949876;
  if (a2 && byte_1EB75CFA8)
  {
    v20 = 0;
    cf = 0;
    if (a3)
    {
      v8 = *MEMORY[0x1E695E480];
      CMBaseObject = FigEndpointGetCMBaseObject();
      v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v10)
      {
        v10(CMBaseObject, *MEMORY[0x1E69620F8], v8, &cf);
      }

      v11 = FigEndpointGetCMBaseObject();
      v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v12)
      {
        v12(v11, *MEMORY[0x1E69621E8], v8, &v20);
      }
    }

    if (dword_1EB75DF20)
    {
      v19 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    if (v20)
    {
      CFRelease(v20);
      v20 = 0;
      v14 = cf;
    }

    else
    {
      v14 = 0;
    }

    v22 = 0;
    v23 = &v22;
    v24 = 0x2020000000;
    v25 = 0;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __FigRoutingManagerContextUtilities_RemoveCurrentlyActivatingEndpoint_block_invoke;
    v17[3] = &unk_1E7AE79A8;
    v17[4] = &v22;
    v17[5] = &routingContextUtilities_getSharedContextUtilities_contextState;
    v17[6] = a2;
    v17[7] = a4;
    v17[8] = v14;
    MXDispatchSync("FigRoutingManagerContextUtilities_RemoveCurrentlyActivatingEndpoint", "FigRoutingManagerContextUtilities.m", 1687, 0, 0, qword_1EB75CF98, v17);
    v7 = *(v23 + 6);
    _Block_object_dispose(&v22, 8);
  }

  v15 = *MEMORY[0x1E69E9840];
  return v7;
}

void _routingContextUtilities_removeCurrentlyActivatingEndpointWithID(void *key, const __CFString *a2)
{
  if (routingContextUtilities_getSharedContextUtilities_sContextUtilitiesStateSetupOnce != -1)
  {
    FigRoutingManagerContextUtilities_PostNotificationToClientsOfContextWithUUIDAndItsFollowers_cold_1();
  }

  v4 = &qword_1EB75CF80;
  if (!byte_1EB75CFA8)
  {
    v4 = 480;
  }

  ContextForUUIDFromDict = _routingContextUtilities_getContextForUUIDFromDict(*v4, key);
  if (ContextForUUIDFromDict)
  {
    v6 = ContextForUUIDFromDict;
    v7 = *(ContextForUUIDFromDict + 14);
    if (v7)
    {
      Count = CFArrayGetCount(v7);
      if (Count >= 1)
      {
        v9 = Count;
        v10 = 0;
        v11 = *MEMORY[0x1E69620F8];
        v12 = *MEMORY[0x1E695E480];
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(v6 + 14), v10);
          if (CFDictionaryGetValue(ValueAtIndex, @"CurrentlyActivatingEndpointsInfo_Endpoint"))
          {
            prefix = 0;
            CMBaseObject = FigEndpointGetCMBaseObject();
            v15 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v15)
            {
              v15(CMBaseObject, v11, v12, &prefix);
            }

            v16 = prefix;
            if (a2 && prefix)
            {
              if (CFStringHasPrefix(a2, prefix) && !FigCFEqual())
              {
                CFArrayRemoveValueAtIndex(*(v6 + 14), v10);
                if (prefix)
                {
                  CFRelease(prefix);
                }

                return;
              }

              v16 = prefix;
            }

            if (v16)
            {
              CFRelease(v16);
            }
          }

          ++v10;
        }

        while (v9 != v10);
      }
    }
  }
}

uint64_t FigRoutingManagerContextUtilities_AddCurrentlyActivatingSubEndpoint(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5)
{
  if (!a3)
  {
    return 4294949876;
  }

  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  CFArrayAppendValue(Mutable, a3);
  v11 = FigRoutingManagerContextUtilities_AddCurrentlyActivatingSubEndpoints(a1, a2, Mutable, a4, a5);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v11;
}

uint64_t FigRoutingManagerContextUtilities_AddCurrentlyActivatingSubEndpoints(uint64_t a1, uint64_t a2, CFArrayRef theArray, uint64_t a4, uint64_t a5)
{
  v42 = *MEMORY[0x1E69E9840];
  if (routingContextUtilities_getSharedContextUtilities_sContextUtilitiesStateSetupOnce != -1)
  {
    v23 = a2;
    FigRoutingManagerContextUtilities_PostNotificationToClientsOfContextWithUUIDAndItsFollowers_cold_1();
    a2 = v23;
  }

  if (byte_1EB75CFA8)
  {
    v6 = &routingContextUtilities_getSharedContextUtilities_contextState;
  }

  else
  {
    v6 = 0;
  }

  v7 = 4294949876;
  if (a1 && a2 && byte_1EB75CFA8)
  {
    v24 = v6;
    v27 = a2;
    v36 = 0;
    v37 = 0;
    if (theArray)
    {
      Count = CFArrayGetCount(theArray);
    }

    else
    {
      Count = 0;
    }

    v29 = *MEMORY[0x1E69620F8];
    v9 = *MEMORY[0x1E695E480];
    CMBaseObject = FigEndpointGetCMBaseObject();
    v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v11)
    {
      v11(CMBaseObject, v29, v9, &v37);
    }

    v12 = FigEndpointGetCMBaseObject();
    VTable = CMBaseObjectGetVTable();
    v28 = *MEMORY[0x1E69621E8];
    v14 = *(*(VTable + 8) + 48);
    if (v14)
    {
      v14(v12, v28, v9, &v36);
    }

    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        v34 = 0;
        cf = 0;
        CFArrayGetValueAtIndex(theArray, i);
        v16 = FigEndpointGetCMBaseObject();
        v17 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v17)
        {
          v17(v16, v29, v9, &cf);
        }

        v18 = FigEndpointGetCMBaseObject();
        v19 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v19)
        {
          v19(v18, v28, v9, &v34);
        }

        if (dword_1EB75DF20)
        {
          v33 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        if (cf)
        {
          CFRelease(cf);
          cf = 0;
        }

        if (v34)
        {
          CFRelease(v34);
        }
      }
    }

    if (v37)
    {
      CFRelease(v37);
      v37 = 0;
    }

    if (v36)
    {
      CFRelease(v36);
      v36 = 0;
    }

    v38 = 0;
    v39 = &v38;
    v40 = 0x2020000000;
    v41 = 0;
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __FigRoutingManagerContextUtilities_AddCurrentlyActivatingSubEndpoints_block_invoke;
    v31[3] = &unk_1E7AE7AB8;
    v31[4] = &v38;
    v31[5] = v24;
    v31[6] = a1;
    v31[7] = a4;
    v31[8] = theArray;
    v31[9] = a5;
    v31[10] = v27;
    MXDispatchSync("FigRoutingManagerContextUtilities_AddCurrentlyActivatingSubEndpoints", "FigRoutingManagerContextUtilities.m", 1754, 0, 0, qword_1EB75CF98, v31);
    FigRouteDiscoveryManagerLowerBTDiscoveryModeFromDetailed();
    v7 = *(v39 + 6);
    _Block_object_dispose(&v38, 8);
  }

  v21 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t FigRoutingManagerContextUtilities_SetPickedEndpointAsAnArray(const void *a1, const void *a2, uint64_t a3, uint64_t a4)
{
  v21[16] = *MEMORY[0x1E69E9840];
  v8 = MEMORY[0x1E695E480];
  if (a2)
  {
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    CFArrayAppendValue(Mutable, a2);
  }

  else
  {
    Mutable = 0;
  }

  v10 = *MEMORY[0x1E69626B0];
  if (FigRoutingManagerIsEndpointOfType(a2))
  {
    if (routingContextUtilities_getSharedContextUtilities_sContextUtilitiesStateSetupOnce != -1)
    {
      FigRoutingManagerContextUtilities_PostNotificationToClientsOfContextWithUUIDAndItsFollowers_cold_1();
    }

    v11 = byte_1EB75CFA8;
    v12 = CFArrayCreateMutable(*v8, 0, MEMORY[0x1E695E9C0]);
    v13 = v12;
    if (a1 && a2)
    {
      v14 = &routingContextUtilities_getSharedContextUtilities_contextState;
      v15 = &qword_1EB75CF98;
      if (!v11)
      {
        v15 = 504;
      }

      v16 = *v15;
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __routingContextUtilities_copyIndividualEndpointsFromAggregate_block_invoke;
      v21[3] = &__block_descriptor_56_e5_v8__0l;
      if (!v11)
      {
        v14 = 0;
      }

      v21[4] = a2;
      v21[5] = v14;
      v21[6] = v12;
      MXDispatchSync("routingContextUtilities_copyIndividualEndpointsFromAggregate", "FigRoutingManagerContextUtilities.m", 2926, 0, 0, v16, v21);
    }

    else
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v17 = FigEndpointDescriptorUtility_CopyDescriptorsForEndpoints(v13, 0);
    if (v13)
    {
      CFRelease(v13);
    }
  }

  else
  {
    v17 = FigEndpointDescriptorUtility_CopyDescriptorsForEndpoints(Mutable, 0);
  }

  FigRoutingManagerContextUtilities_SetPickedEndpoints(a1, Mutable, a3, a4, v17);
  if (v17)
  {
    CFRelease(v17);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  v19 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t FigRoutingContextUtilities_DoesArrayOfEndpointsContainEndpoint(const __CFArray *a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  Count = CFArrayGetCount(a1);
  v5 = 0;
  if (!a2 || !Count)
  {
    return v5;
  }

  if (FigCFArrayContainsValue())
  {
    return 1;
  }

  prefix = 0;
  v6 = *MEMORY[0x1E695E480];
  CMBaseObject = FigEndpointGetCMBaseObject();
  VTable = CMBaseObjectGetVTable();
  v9 = *(*(VTable + 8) + 48);
  if (!v9 || (v10 = *(VTable + 8) + 48, v9(CMBaseObject, *MEMORY[0x1E69620F8], v6, &prefix), !prefix))
  {
    v27 = 0;
    v17 = FigEndpointGetCMBaseObject();
    v18 = CMBaseObjectGetVTable();
    v19 = *(*(v18 + 8) + 48);
    if (v19)
    {
      v20 = *(v18 + 8) + 48;
      v19(v17, *MEMORY[0x1E69621E8], v6, &v27);
    }

    cf = 0;
    v21 = FigEndpointGetCMBaseObject();
    v22 = CMBaseObjectGetVTable();
    v23 = *(*(v22 + 8) + 48);
    if (v23)
    {
      v24 = *(v22 + 8) + 48;
      v23(v21, *MEMORY[0x1E69622F8], v6, &cf);
      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }
    }

    if (v27)
    {
      CFRelease(v27);
    }

    return 0;
  }

  v11 = routingContextUtilities_copyEndpointIDs(a1);
  v12 = v11;
  if (v11 && (v13 = CFArrayGetCount(v11), v13 >= 1))
  {
    v14 = v13;
    v15 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v12, v15);
      if (CFStringHasPrefix(ValueAtIndex, prefix))
      {
        break;
      }

      if (v14 == ++v15)
      {
        goto LABEL_14;
      }
    }

    v5 = 1;
  }

  else
  {
LABEL_14:
    v5 = 0;
  }

  if (prefix)
  {
    CFRelease(prefix);
    prefix = 0;
  }

  if (v12)
  {
    CFRelease(v12);
  }

  return v5;
}

uint64_t FigRoutingManagerContextUtilities_AddActivatedEndpoint(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (routingContextUtilities_getSharedContextUtilities_sContextUtilitiesStateSetupOnce != -1)
  {
    FigRoutingManagerContextUtilities_PostNotificationToClientsOfContextWithUUIDAndItsFollowers_cold_1();
  }

  v11 = 4294949876;
  if (a1 && byte_1EB75CFA8)
  {
    v12 = *MEMORY[0x1E695E480];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v24 = 0;
    CMBaseObject = FigEndpointGetCMBaseObject();
    v15 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v15)
    {
      v15(CMBaseObject, *MEMORY[0x1E69622F0], v12, &v24);
    }

    FigCFDictionarySetValue();
    if (v24)
    {
      CFRelease(v24);
      v24 = 0;
    }

    FigCFDictionarySetValue();
    SInt64 = FigCFNumberCreateSInt64();
    FigCFDictionarySetValue();
    v17 = FigCFNumberCreateSInt64();
    FigCFDictionarySetValue();
    if (v17)
    {
      CFRelease(v17);
    }

    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v23 = 0;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __FigRoutingManagerContextUtilities_AddActivatedEndpoint_block_invoke;
    v19[3] = &unk_1E7AE7B08;
    v19[4] = &v20;
    v19[5] = &routingContextUtilities_getSharedContextUtilities_contextState;
    v19[6] = a1;
    v19[7] = Mutable;
    v19[8] = a5;
    v19[9] = a6;
    v19[10] = a2;
    v19[11] = a4;
    v19[12] = SInt64;
    MXDispatchSync("FigRoutingManagerContextUtilities_AddActivatedEndpoint", "FigRoutingManagerContextUtilities.m", 2294, 0, 0, qword_1EB75CF98, v19);
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    if (SInt64)
    {
      CFRelease(SInt64);
    }

    v11 = *(v21 + 6);
    _Block_object_dispose(&v20, 8);
  }

  return v11;
}

void sub_1B184FD30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t FigRoutingManagerContextUtilities_RemoveActivatedEndpoint(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (routingContextUtilities_getSharedContextUtilities_sContextUtilitiesStateSetupOnce != -1)
  {
    FigRoutingManagerContextUtilities_PostNotificationToClientsOfContextWithUUIDAndItsFollowers_cold_1();
  }

  v6 = 4294949876;
  if (a2 && a1 && byte_1EB75CFA8)
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v12 = 0;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __FigRoutingManagerContextUtilities_RemoveActivatedEndpoint_block_invoke;
    v8[3] = &unk_1E7AE79A8;
    v8[4] = &v9;
    v8[5] = &routingContextUtilities_getSharedContextUtilities_contextState;
    v8[6] = a1;
    v8[7] = a2;
    v8[8] = a3;
    MXDispatchSync("FigRoutingManagerContextUtilities_RemoveActivatedEndpoint", "FigRoutingManagerContextUtilities.m", 2372, 0, 0, qword_1EB75CF98, v8);
    v6 = *(v10 + 6);
    _Block_object_dispose(&v9, 8);
  }

  return v6;
}

uint64_t FigRoutingManagerContextUtilities_GetPickingState(uint64_t a1, uint64_t a2)
{
  if (routingContextUtilities_getSharedContextUtilities_sContextUtilitiesStateSetupOnce != -1)
  {
    FigRoutingManagerContextUtilities_PostNotificationToClientsOfContextWithUUIDAndItsFollowers_cold_1();
  }

  v4 = 4294949876;
  if (a2 && a1 && byte_1EB75CFA8)
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x2020000000;
    v10 = 0;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __FigRoutingManagerContextUtilities_GetPickingState_block_invoke;
    v6[3] = &unk_1E7AE7A48;
    v6[4] = &v7;
    v6[5] = &routingContextUtilities_getSharedContextUtilities_contextState;
    v6[6] = a1;
    v6[7] = a2;
    MXDispatchSync("FigRoutingManagerContextUtilities_GetPickingState", "FigRoutingManagerContextUtilities.m", 2428, 0, 0, qword_1EB75CF98, v6);
    v4 = *(v8 + 6);
    _Block_object_dispose(&v7, 8);
  }

  return v4;
}

void sub_1B1850270(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t FigRoutingManagerContextUtilities_SetPickingState(uint64_t a1, int a2)
{
  if (routingContextUtilities_getSharedContextUtilities_sContextUtilitiesStateSetupOnce != -1)
  {
    FigRoutingManagerContextUtilities_PostNotificationToClientsOfContextWithUUIDAndItsFollowers_cold_1();
  }

  v4 = 4294949876;
  if (a1 && byte_1EB75CFA8)
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x2020000000;
    v11 = 0;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __FigRoutingManagerContextUtilities_SetPickingState_block_invoke;
    v6[3] = &unk_1E7AE7B30;
    v6[5] = &routingContextUtilities_getSharedContextUtilities_contextState;
    v6[6] = a1;
    v6[4] = &v8;
    v7 = a2;
    MXDispatchSync("FigRoutingManagerContextUtilities_SetPickingState", "FigRoutingManagerContextUtilities.m", 2499, 0, 0, qword_1EB75CF98, v6);
    v4 = *(v9 + 6);
    _Block_object_dispose(&v8, 8);
  }

  return v4;
}

void sub_1B18503E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t FigRoutingManagerContextUtilities_SetDefaultLeaderUUIDForContext(uint64_t a1, uint64_t a2)
{
  if (routingContextUtilities_getSharedContextUtilities_sContextUtilitiesStateSetupOnce != -1)
  {
    FigRoutingManagerContextUtilities_PostNotificationToClientsOfContextWithUUIDAndItsFollowers_cold_1();
  }

  v4 = 4294949876;
  if (a2 && a1 && byte_1EB75CFA8)
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x2020000000;
    v10 = 0;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __FigRoutingManagerContextUtilities_SetDefaultLeaderUUIDForContext_block_invoke;
    v6[3] = &unk_1E7AE7A48;
    v6[4] = &v7;
    v6[5] = &routingContextUtilities_getSharedContextUtilities_contextState;
    v6[6] = a1;
    v6[7] = a2;
    MXDispatchSync("FigRoutingManagerContextUtilities_SetDefaultLeaderUUIDForContext", "FigRoutingManagerContextUtilities.m", 2528, 0, 0, qword_1EB75CF98, v6);
    v4 = *(v8 + 6);
    _Block_object_dispose(&v7, 8);
  }

  return v4;
}

void sub_1B185055C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t FigRoutingManagerContextUtilities_CopyRoutingContextForContextUUID(uint64_t a1, uint64_t a2)
{
  if (routingContextUtilities_getSharedContextUtilities_sContextUtilitiesStateSetupOnce != -1)
  {
    FigRoutingManagerContextUtilities_PostNotificationToClientsOfContextWithUUIDAndItsFollowers_cold_1();
  }

  result = 4294949876;
  if (a2 && a1)
  {
    if (byte_1EB75CFA8)
    {
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __FigRoutingManagerContextUtilities_CopyRoutingContextForContextUUID_block_invoke;
      v5[3] = &__block_descriptor_56_e5_v8__0l;
      v5[4] = &routingContextUtilities_getSharedContextUtilities_contextState;
      v5[5] = a1;
      v5[6] = a2;
      MXDispatchSync("FigRoutingManagerContextUtilities_CopyRoutingContextForContextUUID", "FigRoutingManagerContextUtilities.m", 2555, 0, 0, qword_1EB75CF98, v5);
      return 0;
    }
  }

  return result;
}

uint64_t FigRoutingManagerContextUtilities_CopyAllAudioContexts(CFMutableArrayRef *a1)
{
  if (!a1)
  {
    return 4294949876;
  }

  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (routingContextUtilities_getSharedContextUtilities_sContextUtilitiesStateSetupOnce != -1)
  {
    FigRoutingManagerContextUtilities_PostNotificationToClientsOfContextWithUUIDAndItsFollowers_cold_1();
  }

  v3 = &routingContextUtilities_getSharedContextUtilities_contextState;
  v4 = &qword_1EB75CF98;
  if (!byte_1EB75CFA8)
  {
    v4 = 504;
  }

  v5 = *v4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __FigRoutingManagerContextUtilities_CopyAllAudioContexts_block_invoke;
  v7[3] = &__block_descriptor_48_e5_v8__0l;
  if (!byte_1EB75CFA8)
  {
    v3 = 0;
  }

  v7[4] = v3;
  v7[5] = Mutable;
  MXDispatchSync("FigRoutingManagerContextUtilities_CopyAllAudioContexts", "FigRoutingManagerContextUtilities.m", 2675, 0, 0, v5, v7);
  result = 0;
  *a1 = Mutable;
  return result;
}

uint64_t FigRoutingManagerContextUtilities_CopyPickedEndpointNames(uint64_t a1, CFMutableArrayRef *a2)
{
  v2 = 4294949876;
  if (a1)
  {
    if (a2)
    {
      cf = 0;
      v2 = FigRoutingManagerContextUtilities_CopyPickedIndividualEndpoints(a1, &cf);
      *a2 = routingContextUtilities_copyEndpointNames(cf);
      if (cf)
      {
        CFRelease(cf);
      }
    }
  }

  return v2;
}

uint64_t FigRoutingManagerContextUtilities_IsOnlyRoutedToLocalAirPlayEndpoint(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  theArray = 0;
  FigRoutingManagerContextUtilities_CopyPickedIndividualEndpoints(a1, &theArray);
  if (!theArray)
  {
    return 0;
  }

  if (CFArrayGetCount(theArray) == 1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
    IsEndpointLocal = FigRoutingManagerIsEndpointLocal(ValueAtIndex);
  }

  else
  {
    IsEndpointLocal = 0;
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  return IsEndpointLocal;
}

uint64_t FigRoutingManagerContextUtilities_IsOnlyRoutedToSelf(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  theArray = 0;
  FigRoutingManagerContextUtilities_CopyPickedIndividualEndpoints(a1, &theArray);
  if (!theArray)
  {
    return 0;
  }

  if (CFArrayGetCount(theArray) == 1 && (ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0), FigRoutingManagerIsEndpointWHAGroupable(ValueAtIndex)))
  {
    v2 = *MEMORY[0x1E69626D8];
    v3 = FigRoutingManagerIsEndpointOfType(ValueAtIndex) != 0;
  }

  else
  {
    v3 = 0;
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  return v3;
}

BOOL FigRoutingManagerContextUtilities_IsOnlyRoutedToLocalStereoPair(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  theArray = 0;
  FigRoutingManagerContextUtilities_CopyPickedIndividualEndpoints(a1, &theArray);
  if (!theArray)
  {
    return 0;
  }

  if (CFArrayGetCount(theArray) == 1 && (ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0), FigRoutingManagerIsEndpointLocal(ValueAtIndex)))
  {
    v2 = *MEMORY[0x1E6962628];
    v3 = FigRoutingManagerIsEndpointOfSubtype(ValueAtIndex) != 0;
  }

  else
  {
    v3 = 0;
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  return v3;
}

uint64_t FigRoutingManagerContextUtilities_CopyPickedEndpointForRemoteControl(uint64_t a1, uint64_t a2)
{
  if (routingContextUtilities_getSharedContextUtilities_sContextUtilitiesStateSetupOnce != -1)
  {
    FigRoutingManagerContextUtilities_PostNotificationToClientsOfContextWithUUIDAndItsFollowers_cold_1();
  }

  v4 = 4294949876;
  if (a2 && a1 && byte_1EB75CFA8)
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x2020000000;
    v10 = 0;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __FigRoutingManagerContextUtilities_CopyPickedEndpointForRemoteControl_block_invoke;
    v6[3] = &unk_1E7AE7A48;
    v6[4] = &v7;
    v6[5] = &routingContextUtilities_getSharedContextUtilities_contextState;
    v6[6] = a1;
    v6[7] = a2;
    MXDispatchSync("FigRoutingManagerContextUtilities_CopyPickedEndpointForRemoteControl", "FigRoutingManagerContextUtilities.m", 3095, 0, 0, qword_1EB75CF98, v6);
    v4 = *(v8 + 6);
    _Block_object_dispose(&v7, 8);
  }

  return v4;
}

void sub_1B1850BC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t FigRoutingManagerContextUtilities_GetActivatedEndpointFeatures(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (routingContextUtilities_getSharedContextUtilities_sContextUtilitiesStateSetupOnce != -1)
  {
    FigRoutingManagerContextUtilities_PostNotificationToClientsOfContextWithUUIDAndItsFollowers_cold_1();
  }

  v6 = 4294949876;
  if (a1 && a3 && a2 && byte_1EB75CFA8)
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v12 = 0;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __FigRoutingManagerContextUtilities_GetActivatedEndpointFeatures_block_invoke;
    v8[3] = &unk_1E7AE79A8;
    v8[4] = &v9;
    v8[5] = &routingContextUtilities_getSharedContextUtilities_contextState;
    v8[6] = a1;
    v8[7] = a2;
    v8[8] = a3;
    MXDispatchSync("FigRoutingManagerContextUtilities_GetActivatedEndpointFeatures", "FigRoutingManagerContextUtilities.m", 3138, 0, 0, qword_1EB75CF98, v8);
    v6 = *(v10 + 6);
    _Block_object_dispose(&v9, 8);
  }

  return v6;
}

uint64_t FigRoutingManagerContextUtilities_GetActivationSeedForEndpoint(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (routingContextUtilities_getSharedContextUtilities_sContextUtilitiesStateSetupOnce != -1)
  {
    FigRoutingManagerContextUtilities_PostNotificationToClientsOfContextWithUUIDAndItsFollowers_cold_1();
  }

  v6 = 4294949876;
  if (a1 && a3 && a2 && byte_1EB75CFA8)
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v12 = 0;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __FigRoutingManagerContextUtilities_GetActivationSeedForEndpoint_block_invoke;
    v8[3] = &unk_1E7AE79A8;
    v8[4] = &v9;
    v8[5] = &routingContextUtilities_getSharedContextUtilities_contextState;
    v8[6] = a1;
    v8[7] = a2;
    v8[8] = a3;
    MXDispatchSync("FigRoutingManagerContextUtilities_GetActivationSeedForEndpoint", "FigRoutingManagerContextUtilities.m", 3216, 0, 0, qword_1EB75CF98, v8);
    v6 = *(v10 + 6);
    _Block_object_dispose(&v9, 8);
  }

  return v6;
}

uint64_t FigRoutingManagerContextUtilities_CopyCurrentlyActivatingEndpointInfoAtIndex(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 4294949876;
  if (a1 && a3)
  {
    if (routingContextUtilities_getSharedContextUtilities_sContextUtilitiesStateSetupOnce != -1)
    {
      FigRoutingManagerContextUtilities_PostNotificationToClientsOfContextWithUUIDAndItsFollowers_cold_1();
    }

    if (byte_1EB75CFA8)
    {
      v7 = &routingContextUtilities_getSharedContextUtilities_contextState;
    }

    else
    {
      v7 = 0;
    }

    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 0;
    v8 = &qword_1EB75CF98;
    if (!byte_1EB75CFA8)
    {
      v8 = 504;
    }

    v9 = *v8;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __FigRoutingManagerContextUtilities_CopyCurrentlyActivatingEndpointInfoAtIndex_block_invoke;
    v11[3] = &unk_1E7AE79A8;
    v11[4] = &v12;
    v11[5] = v7;
    v11[6] = a1;
    v11[7] = a2;
    v11[8] = a3;
    MXDispatchSync("FigRoutingManagerContextUtilities_CopyCurrentlyActivatingEndpointInfoAtIndex", "FigRoutingManagerContextUtilities.m", 3292, 0, 0, v9, v11);
    v3 = *(v13 + 6);
    _Block_object_dispose(&v12, 8);
  }

  return v3;
}

uint64_t FigRoutingManagerContextUtilities_RemoveCurrentlyActivatingEndpointInfoAtIndex(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 4294949876;
  }

  if (routingContextUtilities_getSharedContextUtilities_sContextUtilitiesStateSetupOnce != -1)
  {
    FigRoutingManagerContextUtilities_PostNotificationToClientsOfContextWithUUIDAndItsFollowers_cold_1();
  }

  if (byte_1EB75CFA8)
  {
    v4 = &routingContextUtilities_getSharedContextUtilities_contextState;
  }

  else
  {
    v4 = 0;
  }

  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v5 = &qword_1EB75CF98;
  if (!byte_1EB75CFA8)
  {
    v5 = 504;
  }

  v6 = *v5;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __FigRoutingManagerContextUtilities_RemoveCurrentlyActivatingEndpointInfoAtIndex_block_invoke;
  v9[3] = &unk_1E7AE7A48;
  v9[4] = &v10;
  v9[5] = v4;
  v9[6] = a1;
  v9[7] = a2;
  MXDispatchSync("FigRoutingManagerContextUtilities_RemoveCurrentlyActivatingEndpointInfoAtIndex", "FigRoutingManagerContextUtilities.m", 3325, 0, 0, v6, v9);
  v7 = *(v11 + 6);
  _Block_object_dispose(&v10, 8);
  return v7;
}

uint64_t FigRoutingManagerContextUtilities_AppendCurrentlyActivatingEndpointInfo(uint64_t a1, uint64_t a2)
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
    v9[2] = __FigRoutingManagerContextUtilities_AppendCurrentlyActivatingEndpointInfo_block_invoke;
    v9[3] = &unk_1E7AE7A48;
    v9[4] = &v10;
    v9[5] = v5;
    v9[6] = a1;
    v9[7] = a2;
    MXDispatchSync("FigRoutingManagerContextUtilities_AppendCurrentlyActivatingEndpointInfo", "FigRoutingManagerContextUtilities.m", 3356, 0, 0, v7, v9);
    v2 = *(v11 + 6);
    _Block_object_dispose(&v10, 8);
  }

  return v2;
}

void sub_1B1851748(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t FigRoutingManagerContextUtilities_CopyMostRecentCurrentlyActivatingEndpoint(uint64_t a1, void *a2)
{
  v2 = 4294949876;
  if (a1 && a2)
  {
    theArray = 0;
    v2 = FigRoutingManagerContextUtilities_CopyCurrentlyActivatingEndpoints(a1, &theArray);
    if (theArray)
    {
      Count = CFArrayGetCount(theArray);
      if (Count >= 1 && (ValueAtIndex = CFArrayGetValueAtIndex(theArray, Count - 1)) != 0)
      {
        v6 = CFRetain(ValueAtIndex);
      }

      else
      {
        v6 = 0;
      }

      if (theArray)
      {
        CFRelease(theArray);
      }
    }

    else
    {
      v6 = 0;
    }

    *a2 = v6;
  }

  return v2;
}

uint64_t FigRoutingManagerContextUtilities_CopyCurrentlyActivatingEndpoints(uint64_t a1, uint64_t a2)
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
    v9[2] = __FigRoutingManagerContextUtilities_CopyCurrentlyActivatingEndpoints_block_invoke;
    v9[3] = &unk_1E7AE7A48;
    v9[4] = &v10;
    v9[5] = v5;
    v9[6] = a1;
    v9[7] = a2;
    MXDispatchSync("FigRoutingManagerContextUtilities_CopyCurrentlyActivatingEndpoints", "FigRoutingManagerContextUtilities.m", 3481, 0, 0, v7, v9);
    v2 = *(v11 + 6);
    _Block_object_dispose(&v10, 8);
  }

  return v2;
}

void sub_1B1851978(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t FigRoutingManagerContextUtilities_CopyMostRecentCurrentlyActivatingEndpointInfo(uint64_t a1, void *a2)
{
  v2 = 4294949876;
  if (a1 && a2)
  {
    theArray = 0;
    v2 = FigRoutingManagerContextUtilities_CopyCurrentlyActivatingEndpointsInfo(a1, &theArray);
    if (theArray)
    {
      Count = CFArrayGetCount(theArray);
      if (Count >= 1 && (ValueAtIndex = CFArrayGetValueAtIndex(theArray, Count - 1)) != 0)
      {
        v6 = CFRetain(ValueAtIndex);
      }

      else
      {
        v6 = 0;
      }

      if (theArray)
      {
        CFRelease(theArray);
      }
    }

    else
    {
      v6 = 0;
    }

    *a2 = v6;
  }

  return v2;
}

uint64_t FigRoutingManagerContextUtilities_CopyCurrentlyActivatingEndpointsInfo(uint64_t a1, uint64_t a2)
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
    v9[2] = __FigRoutingManagerContextUtilities_CopyCurrentlyActivatingEndpointsInfo_block_invoke;
    v9[3] = &unk_1E7AE7A48;
    v9[4] = &v10;
    v9[5] = v5;
    v9[6] = a1;
    v9[7] = a2;
    MXDispatchSync("FigRoutingManagerContextUtilities_CopyCurrentlyActivatingEndpointsInfo", "FigRoutingManagerContextUtilities.m", 3506, 0, 0, v7, v9);
    v2 = *(v11 + 6);
    _Block_object_dispose(&v10, 8);
  }

  return v2;
}

void sub_1B1851B44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t FigRoutingManagerContextUtilities_CopyCurrentlyActivatingEndpointsForContextType(int a1, uint64_t a2)
{
  if (a1 == 2)
  {
    cf = 0;
    FigRoutingManagerContextUtilities_CopySystemMirroringContextUUID(&cf);
  }

  else
  {
    if (a1 != 1)
    {
      return 0;
    }

    cf = 0;
    FigRoutingManagerContextUtilities_CopySystemAudioContextUUID(&cf);
  }

  v3 = FigRoutingManagerContextUtilities_CopyCurrentlyActivatingEndpoints(cf, a2);
  if (cf)
  {
    CFRelease(cf);
  }

  return v3;
}

uint64_t FigRoutingManagerContextUtilities_CopyCurrentlyActivatingSubEndpoints(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 4294949876;
  if (a1 && a3)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 0;
    if (routingContextUtilities_getSharedContextUtilities_sContextUtilitiesStateSetupOnce != -1)
    {
      FigRoutingManagerContextUtilities_UpdateRouteDescriptorForGivenContext_cold_1();
    }

    v7 = &routingContextUtilities_getSharedContextUtilities_contextState;
    v8 = &qword_1EB75CF98;
    if (!byte_1EB75CFA8)
    {
      v8 = 504;
    }

    v9 = *v8;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __FigRoutingManagerContextUtilities_CopyCurrentlyActivatingSubEndpoints_block_invoke;
    v11[3] = &unk_1E7AE79A8;
    if (!byte_1EB75CFA8)
    {
      v7 = 0;
    }

    v11[4] = &v12;
    v11[5] = v7;
    v11[6] = a1;
    v11[7] = a2;
    v11[8] = a3;
    MXDispatchSync("FigRoutingManagerContextUtilities_CopyCurrentlyActivatingSubEndpoints", "FigRoutingManagerContextUtilities.m", 3533, 0, 0, v9, v11);
    v3 = *(v13 + 6);
    _Block_object_dispose(&v12, 8);
  }

  return v3;
}

uint64_t FigRoutingManagerContextUtilities_CopyActivatedEndpointsInfo(uint64_t a1, uint64_t a2)
{
  v2 = 4294949876;
  if (a1 && a2)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = 0;
    if (routingContextUtilities_getSharedContextUtilities_sContextUtilitiesStateSetupOnce != -1)
    {
      FigRoutingManagerContextUtilities_UpdateRouteDescriptorForGivenContext_cold_1();
    }

    v5 = &routingContextUtilities_getSharedContextUtilities_contextState;
    v6 = &qword_1EB75CF98;
    if (!byte_1EB75CFA8)
    {
      v6 = 504;
    }

    v7 = *v6;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __FigRoutingManagerContextUtilities_CopyActivatedEndpointsInfo_block_invoke;
    v9[3] = &unk_1E7AE7A48;
    if (!byte_1EB75CFA8)
    {
      v5 = 0;
    }

    v9[4] = &v10;
    v9[5] = v5;
    v9[6] = a1;
    v9[7] = a2;
    MXDispatchSync("FigRoutingManagerContextUtilities_CopyActivatedEndpointsInfo", "FigRoutingManagerContextUtilities.m", 3613, 0, 0, v7, v9);
    v2 = *(v11 + 6);
    _Block_object_dispose(&v10, 8);
  }

  return v2;
}

void sub_1B185206C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t FigRoutingManagerContextUtilities_CopyActivatedEndpointsForContextType(int a1, uint64_t a2)
{
  if (!a2)
  {
    return 4294954296;
  }

  if (a1 == 2)
  {
    cf = 0;
    FigRoutingManagerContextUtilities_CopySystemMirroringContextUUID(&cf);
  }

  else
  {
    if (a1 != 1)
    {
      return 0;
    }

    cf = 0;
    FigRoutingManagerContextUtilities_CopySystemAudioContextUUID(&cf);
  }

  v3 = FigRoutingManagerContextUtilities_CopyActivatedEndpoints(cf, a2);
  if (cf)
  {
    CFRelease(cf);
  }

  return v3;
}

uint64_t FigRoutingManagerContextUtilities_CopyRoutingContextUUIDForActivatedEndpoint(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return 4294954296;
  }

  if (routingContextUtilities_getSharedContextUtilities_sContextUtilitiesStateSetupOnce != -1)
  {
    FigRoutingManagerContextUtilities_PostNotificationToClientsOfContextWithUUIDAndItsFollowers_cold_1();
  }

  v6 = &routingContextUtilities_getSharedContextUtilities_contextState;
  v7 = &qword_1EB75CF98;
  if (!byte_1EB75CFA8)
  {
    v7 = 504;
  }

  v8 = *v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __FigRoutingManagerContextUtilities_CopyRoutingContextUUIDForActivatedEndpoint_block_invoke;
  v10[3] = &__block_descriptor_64_e5_v8__0l;
  if (!byte_1EB75CFA8)
  {
    v6 = 0;
  }

  v10[4] = v6;
  v10[5] = a1;
  v10[6] = a2;
  v10[7] = a3;
  MXDispatchSync("FigRoutingManagerContextUtilities_CopyRoutingContextUUIDForActivatedEndpoint", "FigRoutingManagerContextUtilities.m", 3672, 0, 0, v8, v10);
  return 0;
}

uint64_t FigRoutingManagerContextUtilities_RemoveContext(const void *a1)
{
  v28 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (dword_1EB75DF20)
    {
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
      v4 = &routingContextUtilities_getSharedContextUtilities_contextState;
    }

    else
    {
      v4 = 0;
    }

    v24 = 0;
    v25 = &v24;
    v26 = 0x2020000000;
    v27 = 0;
    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    LOBYTE(v23) = 0;
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = 0;
    *type = 0;
    v13 = type;
    v14 = 0x2020000000;
    v15 = 0;
    if (byte_1EB75CFA8)
    {
      v5 = &qword_1EB75CF98;
    }

    else
    {
      v5 = 504;
    }

    v6 = *v5;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __FigRoutingManagerContextUtilities_RemoveContext_block_invoke;
    v11[3] = &unk_1E7AE7B80;
    v11[8] = v4;
    v11[9] = a1;
    v11[4] = &v16;
    v11[5] = &v24;
    v11[6] = type;
    v11[7] = &v20;
    MXDispatchSync("FigRoutingManagerContextUtilities_RemoveContext", "FigRoutingManagerContextUtilities.m", 3847, 0, 0, v6, v11);
    if (*(v21 + 24))
    {
      FigVolumeControllerSaveRoutingContextState(a1);
    }

    if (v17[3])
    {
      v7 = *v5;
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __FigRoutingManagerContextUtilities_RemoveContext_block_invoke_2;
      v10[3] = &unk_1E7AE7A20;
      v10[4] = &v16;
      v10[5] = type;
      v10[6] = v4;
      v10[7] = a1;
      MXDispatchSync("FigRoutingManagerContextUtilities_RemoveContext", "FigRoutingManagerContextUtilities.m", 3936, 0, 0, v7, v10);
    }

    v3 = *(v25 + 6);
    _Block_object_dispose(type, 8);
    _Block_object_dispose(&v16, 8);
    _Block_object_dispose(&v20, 8);
    _Block_object_dispose(&v24, 8);
  }

  else
  {
    v3 = 4294949876;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t FigRoutingManagerContextUtilities_CopyHijackID(uint64_t a1)
{
  v1 = a1;
  if (a1)
  {
    if (routingContextUtilities_getSharedContextUtilities_sContextUtilitiesStateSetupOnce != -1)
    {
      FigRoutingManagerContextUtilities_PostNotificationToClientsOfContextWithUUIDAndItsFollowers_cold_1();
    }

    if (byte_1EB75CFA8)
    {
      v2 = &routingContextUtilities_getSharedContextUtilities_contextState;
    }

    else
    {
      v2 = 0;
    }

    v11[0] = 0;
    v11[1] = v11;
    v11[2] = 0x2020000000;
    v12 = 0;
    v7 = 0;
    v8 = &v7;
    v9 = 0x2020000000;
    v10 = 0;
    v3 = &qword_1EB75CF98;
    if (!byte_1EB75CFA8)
    {
      v3 = 504;
    }

    v4 = *v3;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __FigRoutingManagerContextUtilities_CopyHijackID_block_invoke;
    v6[3] = &unk_1E7AE7A20;
    v6[6] = v2;
    v6[7] = v1;
    v6[4] = v11;
    v6[5] = &v7;
    MXDispatchSync("FigRoutingManagerContextUtilities_CopyHijackID", "FigRoutingManagerContextUtilities.m", 4020, 0, 0, v4, v6);
    v1 = v8[3];
    _Block_object_dispose(&v7, 8);
    _Block_object_dispose(v11, 8);
  }

  return v1;
}

void sub_1B1852E54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 48), 8);
  _Unwind_Resume(a1);
}

uint64_t FigRoutingManagerContextUtilities_SetAggregateEndpoint(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 4294949876;
  }

  if (routingContextUtilities_getSharedContextUtilities_sContextUtilitiesStateSetupOnce != -1)
  {
    FigRoutingManagerContextUtilities_PostNotificationToClientsOfContextWithUUIDAndItsFollowers_cold_1();
  }

  if (byte_1EB75CFA8)
  {
    v4 = &routingContextUtilities_getSharedContextUtilities_contextState;
  }

  else
  {
    v4 = 0;
  }

  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v5 = &qword_1EB75CF98;
  if (!byte_1EB75CFA8)
  {
    v5 = 504;
  }

  v6 = *v5;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __FigRoutingManagerContextUtilities_SetAggregateEndpoint_block_invoke;
  v9[3] = &unk_1E7AE7A48;
  v9[4] = &v10;
  v9[5] = v4;
  v9[6] = a1;
  v9[7] = a2;
  MXDispatchSync("FigRoutingManagerContextUtilities_SetAggregateEndpoint", "FigRoutingManagerContextUtilities.m", 4048, 0, 0, v6, v9);
  v7 = *(v11 + 6);
  _Block_object_dispose(&v10, 8);
  return v7;
}

uint64_t FigRoutingManagerContextUtilities_CopyAggregateEndpointAsFigEndpointAggregate(uint64_t a1, uint64_t a2)
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
    v9[2] = __FigRoutingManagerContextUtilities_CopyAggregateEndpointAsFigEndpointAggregate_block_invoke;
    v9[3] = &unk_1E7AE7A48;
    v9[4] = &v10;
    v9[5] = v5;
    v9[6] = a1;
    v9[7] = a2;
    MXDispatchSync("FigRoutingManagerContextUtilities_CopyAggregateEndpointAsFigEndpointAggregate", "FigRoutingManagerContextUtilities.m", 4076, 0, 0, v7, v9);
    v2 = *(v11 + 6);
    _Block_object_dispose(&v10, 8);
  }

  return v2;
}

void sub_1B18532CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t FigRoutingManagerContextUtilities_CopyNonControlPickedContexts(uint64_t a1)
{
  if (!a1)
  {
    return 4294949876;
  }

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
  v6[2] = __FigRoutingManagerContextUtilities_CopyNonControlPickedContexts_block_invoke;
  v6[3] = &__block_descriptor_48_e5_v8__0l;
  if (!byte_1EB75CFA8)
  {
    v2 = 0;
  }

  v6[4] = v2;
  v6[5] = a1;
  MXDispatchSync("FigRoutingManagerContextUtilities_CopyNonControlPickedContexts", "FigRoutingManagerContextUtilities.m", 4189, 0, 0, v4, v6);
  return 0;
}

uint64_t FigRoutingManagerContextUtilities_CopySidePlayContextUUID(uint64_t a1)
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
    v6[2] = __FigRoutingManagerContextUtilities_CopySidePlayContextUUID_block_invoke;
    v6[3] = &__block_descriptor_48_e5_v8__0l;
    if (!byte_1EB75CFA8)
    {
      v2 = 0;
    }

    v6[4] = a1;
    v6[5] = v2;
    MXDispatchSync("FigRoutingManagerContextUtilities_CopySidePlayContextUUID", "FigRoutingManagerContextUtilities.m", 4614, 0, 0, v4, v6);
  }

  return 0;
}

uint64_t FigRoutingManagerContextUtilities_CopySystemRemotePoolContextUUID(uint64_t a1)
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
    v6[2] = __FigRoutingManagerContextUtilities_CopySystemRemotePoolContextUUID_block_invoke;
    v6[3] = &__block_descriptor_48_e5_v8__0l;
    if (!byte_1EB75CFA8)
    {
      v2 = 0;
    }

    v6[4] = a1;
    v6[5] = v2;
    MXDispatchSync("FigRoutingManagerContextUtilities_CopySystemRemotePoolContextUUID", "FigRoutingManagerContextUtilities.m", 4629, 0, 0, v4, v6);
  }

  return 0;
}

uint64_t FigRoutingManagerContextUtilities_CopySystemVideoContextUUID(uint64_t a1)
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
    v6[2] = __FigRoutingManagerContextUtilities_CopySystemVideoContextUUID_block_invoke;
    v6[3] = &__block_descriptor_48_e5_v8__0l;
    if (!byte_1EB75CFA8)
    {
      v2 = 0;
    }

    v6[4] = a1;
    v6[5] = v2;
    MXDispatchSync("FigRoutingManagerContextUtilities_CopySystemVideoContextUUID", "FigRoutingManagerContextUtilities.m", 4655, 0, 0, v4, v6);
  }

  return 0;
}

uint64_t FigRoutingManagerContextUtilities_CopyAudioContextUUIDs(uint64_t a1)
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
    v6[2] = __FigRoutingManagerContextUtilities_CopyAudioContextUUIDs_block_invoke;
    v6[3] = &__block_descriptor_48_e5_v8__0l;
    if (!byte_1EB75CFA8)
    {
      v2 = 0;
    }

    v6[4] = a1;
    v6[5] = v2;
    MXDispatchSync("FigRoutingManagerContextUtilities_CopyAudioContextUUIDs", "FigRoutingManagerContextUtilities.m", 4681, 0, 0, v4, v6);
  }

  return 0;
}

uint64_t FigRoutingManagerContextUtilities_CopyPerAppSecondDisplayContextUUIDs(uint64_t a1)
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
    v6[2] = __FigRoutingManagerContextUtilities_CopyPerAppSecondDisplayContextUUIDs_block_invoke;
    v6[3] = &__block_descriptor_48_e5_v8__0l;
    if (!byte_1EB75CFA8)
    {
      v2 = 0;
    }

    v6[4] = a1;
    v6[5] = v2;
    MXDispatchSync("FigRoutingManagerContextUtilities_CopyPerAppSecondDisplayContextUUIDs", "FigRoutingManagerContextUtilities.m", 4694, 0, 0, v4, v6);
  }

  return 0;
}

uint64_t FigRoutingManagerContextUtilities_CopyArrayOfFollowerUUIDs(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 4294949876;
  }

  if (routingContextUtilities_getSharedContextUtilities_sContextUtilitiesStateSetupOnce != -1)
  {
    FigRoutingManagerContextUtilities_PostNotificationToClientsOfContextWithUUIDAndItsFollowers_cold_1();
  }

  if (byte_1EB75CFA8)
  {
    v4 = &routingContextUtilities_getSharedContextUtilities_contextState;
  }

  else
  {
    v4 = 0;
  }

  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v5 = &qword_1EB75CF98;
  if (!byte_1EB75CFA8)
  {
    v5 = 504;
  }

  v6 = *v5;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __FigRoutingManagerContextUtilities_CopyArrayOfFollowerUUIDs_block_invoke;
  v9[3] = &unk_1E7AE7A48;
  v9[4] = &v10;
  v9[5] = v4;
  v9[6] = a1;
  v9[7] = a2;
  MXDispatchSync("FigRoutingManagerContextUtilities_CopyArrayOfFollowerUUIDs", "FigRoutingManagerContextUtilities.m", 4767, 0, 0, v6, v9);
  v7 = *(v11 + 6);
  _Block_object_dispose(&v10, 8);
  return v7;
}

uint64_t FigRoutingManagerContextUtilities_IsContextSidePlay(uint64_t a1)
{
  v1 = a1;
  if (a1)
  {
    if (routingContextUtilities_getSharedContextUtilities_sContextUtilitiesStateSetupOnce != -1)
    {
      FigRoutingManagerContextUtilities_PostNotificationToClientsOfContextWithUUIDAndItsFollowers_cold_1();
    }

    if (byte_1EB75CFA8)
    {
      v2 = &routingContextUtilities_getSharedContextUtilities_contextState;
    }

    else
    {
      v2 = 0;
    }

    v11[0] = 0;
    v11[1] = v11;
    v11[2] = 0x2020000000;
    v12 = 0;
    v7 = 0;
    v8 = &v7;
    v9 = 0x2020000000;
    v10 = 0;
    v3 = &qword_1EB75CF98;
    if (!byte_1EB75CFA8)
    {
      v3 = 504;
    }

    v4 = *v3;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __FigRoutingManagerContextUtilities_IsContextSidePlay_block_invoke;
    v6[3] = &unk_1E7AE7A20;
    v6[6] = v2;
    v6[7] = v1;
    v6[4] = v11;
    v6[5] = &v7;
    MXDispatchSync("FigRoutingManagerContextUtilities_IsContextSidePlay", "FigRoutingManagerContextUtilities.m", 4948, 0, 0, v4, v6);
    v1 = *(v8 + 24);
    _Block_object_dispose(&v7, 8);
    _Block_object_dispose(v11, 8);
  }

  return v1;
}

void sub_1B1853ECC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 48), 8);
  _Unwind_Resume(a1);
}

uint64_t FigRoutingManagerContextUtilities_IsContextSystemAudio(uint64_t a1)
{
  v1 = a1;
  if (a1)
  {
    if (routingContextUtilities_getSharedContextUtilities_sContextUtilitiesStateSetupOnce != -1)
    {
      FigRoutingManagerContextUtilities_PostNotificationToClientsOfContextWithUUIDAndItsFollowers_cold_1();
    }

    if (byte_1EB75CFA8)
    {
      v2 = &routingContextUtilities_getSharedContextUtilities_contextState;
    }

    else
    {
      v2 = 0;
    }

    v11[0] = 0;
    v11[1] = v11;
    v11[2] = 0x2020000000;
    v12 = 0;
    v7 = 0;
    v8 = &v7;
    v9 = 0x2020000000;
    v10 = 0;
    v3 = &qword_1EB75CF98;
    if (!byte_1EB75CFA8)
    {
      v3 = 504;
    }

    v4 = *v3;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __FigRoutingManagerContextUtilities_IsContextSystemAudio_block_invoke;
    v6[3] = &unk_1E7AE7A20;
    v6[6] = v2;
    v6[7] = v1;
    v6[4] = v11;
    v6[5] = &v7;
    MXDispatchSync("FigRoutingManagerContextUtilities_IsContextSystemAudio", "FigRoutingManagerContextUtilities.m", 5010, 0, 0, v4, v6);
    v1 = *(v8 + 24);
    _Block_object_dispose(&v7, 8);
    _Block_object_dispose(v11, 8);
  }

  return v1;
}

void sub_1B1854074(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 48), 8);
  _Unwind_Resume(a1);
}

uint64_t FigRoutingContextUtilities_GetIndexOfCurrentlyActivatingSubEndpoints(uint64_t a1, CFArrayRef theArray)
{
  v2 = -1;
  if (a1 && theArray && CFArrayGetCount(theArray))
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = -1;
    if (routingContextUtilities_getSharedContextUtilities_sContextUtilitiesStateSetupOnce != -1)
    {
      FigRoutingManagerContextUtilities_UpdateRouteDescriptorForGivenContext_cold_1();
    }

    v5 = &routingContextUtilities_getSharedContextUtilities_contextState;
    v6 = &qword_1EB75CF98;
    if (!byte_1EB75CFA8)
    {
      v6 = 504;
    }

    v7 = *v6;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __FigRoutingContextUtilities_GetIndexOfCurrentlyActivatingSubEndpoints_block_invoke;
    v9[3] = &unk_1E7AE7A48;
    if (!byte_1EB75CFA8)
    {
      v5 = 0;
    }

    v9[4] = &v10;
    v9[5] = v5;
    v9[6] = a1;
    v9[7] = theArray;
    MXDispatchSync("FigRoutingContextUtilities_GetIndexOfCurrentlyActivatingSubEndpoints", "FigRoutingManagerContextUtilities.m", 5376, 0, 0, v7, v9);
    v2 = v11[3];
    _Block_object_dispose(&v10, 8);
  }

  return v2;
}

void sub_1B1854224(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

float FigRoutingManagerContextUtilities_GetMainVolumeScaleFactorForEndpointID(uint64_t a1, uint64_t a2)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 1065353216;
  v2 = 1.0;
  if (a1 && a2)
  {
    if (routingContextUtilities_getSharedContextUtilities_sContextUtilitiesStateSetupOnce != -1)
    {
      FigRoutingManagerContextUtilities_UpdateRouteDescriptorForGivenContext_cold_1();
    }

    v5 = &routingContextUtilities_getSharedContextUtilities_contextState;
    v6 = &qword_1EB75CF98;
    if (!byte_1EB75CFA8)
    {
      v6 = 504;
    }

    v7 = *v6;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __FigRoutingManagerContextUtilities_GetMainVolumeScaleFactorForEndpointID_block_invoke;
    v9[3] = &unk_1E7AE7A48;
    if (!byte_1EB75CFA8)
    {
      v5 = 0;
    }

    v9[6] = a1;
    v9[7] = a2;
    v9[4] = &v10;
    v9[5] = v5;
    MXDispatchSync("FigRoutingManagerContextUtilities_GetMainVolumeScaleFactorForEndpointID", "FigRoutingManagerContextUtilities.m", 5527, 0, 0, v7, v9);
    v2 = v11[6];
  }

  _Block_object_dispose(&v10, 8);
  return v2;
}

void sub_1B1854400(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void FigRoutingManagerContextUtilities_SetMainVolumeScaleFactorForEndpointID(uint64_t a1, uint64_t a2, float a3)
{
  if (routingContextUtilities_getSharedContextUtilities_sContextUtilitiesStateSetupOnce != -1)
  {
    FigRoutingManagerContextUtilities_PostNotificationToClientsOfContextWithUUIDAndItsFollowers_cold_1();
  }

  v6 = &routingContextUtilities_getSharedContextUtilities_contextState;
  v7 = &qword_1EB75CF98;
  if (!byte_1EB75CFA8)
  {
    v7 = 504;
  }

  v8 = *v7;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __FigRoutingManagerContextUtilities_SetMainVolumeScaleFactorForEndpointID_block_invoke;
  v9[3] = &__block_descriptor_60_e5_v8__0l;
  if (!byte_1EB75CFA8)
  {
    v6 = 0;
  }

  v9[4] = v6;
  v9[5] = a1;
  v10 = a3;
  v9[6] = a2;
  MXDispatchSync("FigRoutingManagerContextUtilities_SetMainVolumeScaleFactorForEndpointID", "FigRoutingManagerContextUtilities.m", 5555, 0, 0, v8, v9);
}

void FigRoutingManagerContextUtilities_SetScreenEndpoint(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (routingContextUtilities_getSharedContextUtilities_sContextUtilitiesStateSetupOnce != -1)
    {
      FigRoutingManagerContextUtilities_PostNotificationToClientsOfContextWithUUIDAndItsFollowers_cold_1();
    }

    v4 = &routingContextUtilities_getSharedContextUtilities_contextState;
    v5 = &qword_1EB75CF98;
    if (!byte_1EB75CFA8)
    {
      v5 = 504;
    }

    v6 = *v5;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __FigRoutingManagerContextUtilities_SetScreenEndpoint_block_invoke;
    v7[3] = &__block_descriptor_56_e5_v8__0l;
    if (!byte_1EB75CFA8)
    {
      v4 = 0;
    }

    v7[4] = v4;
    v7[5] = a1;
    v7[6] = a2;
    MXDispatchSync("FigRoutingManagerContextUtilities_SetScreenEndpoint", "FigRoutingManagerContextUtilities.m", 5639, 0, 0, v6, v7);
  }
}

uint64_t FigRoutingManagerContextUtilities_CopyScreenEndpointUUID(uint64_t a1)
{
  v1 = a1;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  if (a1)
  {
    if (routingContextUtilities_getSharedContextUtilities_sContextUtilitiesStateSetupOnce != -1)
    {
      FigRoutingManagerContextUtilities_UpdateRouteDescriptorForGivenContext_cold_1();
    }

    if (byte_1EB75CFA8)
    {
      v2 = &routingContextUtilities_getSharedContextUtilities_contextState;
    }

    else
    {
      v2 = 0;
    }

    v3 = &qword_1EB75CF98;
    if (!byte_1EB75CFA8)
    {
      v3 = 504;
    }

    v4 = *v3;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __FigRoutingManagerContextUtilities_CopyScreenEndpointUUID_block_invoke;
    v6[3] = &unk_1E7AE7140;
    v6[5] = v2;
    v6[6] = v1;
    v6[4] = &v7;
    MXDispatchSync("FigRoutingManagerContextUtilities_CopyScreenEndpointUUID", "FigRoutingManagerContextUtilities.m", 5673, 0, 0, v4, v6);
    v1 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  return v1;
}

void FigRoutingManagerContextUtilities_SetAudioEndpoint(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (routingContextUtilities_getSharedContextUtilities_sContextUtilitiesStateSetupOnce != -1)
    {
      FigRoutingManagerContextUtilities_PostNotificationToClientsOfContextWithUUIDAndItsFollowers_cold_1();
    }

    v4 = &routingContextUtilities_getSharedContextUtilities_contextState;
    v5 = &qword_1EB75CF98;
    if (!byte_1EB75CFA8)
    {
      v5 = 504;
    }

    v6 = *v5;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __FigRoutingManagerContextUtilities_SetAudioEndpoint_block_invoke;
    v7[3] = &__block_descriptor_56_e5_v8__0l;
    if (!byte_1EB75CFA8)
    {
      v4 = 0;
    }

    v7[4] = v4;
    v7[5] = a1;
    v7[6] = a2;
    MXDispatchSync("FigRoutingManagerContextUtilities_SetAudioEndpoint", "FigRoutingManagerContextUtilities.m", 5703, 0, 0, v6, v7);
  }
}

uint64_t FigRoutingManagerContextUtilities_IsRoutedToLocalAirplayReceiver(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v1 = 1;
  v13 = 1;
  if (a1)
  {
    if (routingContextUtilities_getSharedContextUtilities_sContextUtilitiesStateSetupOnce != -1)
    {
      FigRoutingManagerContextUtilities_UpdateRouteDescriptorForGivenContext_cold_1();
    }

    if (byte_1EB75CFA8)
    {
      v3 = &routingContextUtilities_getSharedContextUtilities_contextState;
    }

    else
    {
      v3 = 0;
    }

    v4 = &qword_1EB75CF98;
    if (!byte_1EB75CFA8)
    {
      v4 = 504;
    }

    v5 = *v4;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __FigRoutingManagerContextUtilities_IsRoutedToLocalAirplayReceiver_block_invoke;
    v9[3] = &unk_1E7AE7140;
    v9[5] = v3;
    v9[6] = a1;
    v9[4] = &v10;
    MXDispatchSync("FigRoutingManagerContextUtilities_IsRoutedToLocalAirplayReceiver", "FigRoutingManagerContextUtilities.m", 5762, 0, 0, v5, v9);
    if (dword_1EB75DF20)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v1 = *(v11 + 24);
  }

  _Block_object_dispose(&v10, 8);
  v7 = *MEMORY[0x1E69E9840];
  return v1;
}

void FigRoutingManagerContextUtilities_StopDiscoveryTimer(uint64_t a1)
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
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __FigRoutingManagerContextUtilities_StopDiscoveryTimer_block_invoke;
  v5[3] = &__block_descriptor_48_e5_v8__0l;
  if (!byte_1EB75CFA8)
  {
    v2 = 0;
  }

  v5[4] = v2;
  v5[5] = a1;
  MXDispatchSync("FigRoutingManagerContextUtilities_StopDiscoveryTimer", "FigRoutingManagerContextUtilities.m", 5818, 0, 0, v4, v5);
}

void FigRoutingManagerContextUtilities_StopMirroringTimer(uint64_t a1)
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
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __FigRoutingManagerContextUtilities_StopMirroringTimer_block_invoke;
    v5[3] = &__block_descriptor_48_e5_v8__0l;
    if (!byte_1EB75CFA8)
    {
      v2 = 0;
    }

    v5[4] = v2;
    v5[5] = a1;
    MXDispatchSync("FigRoutingManagerContextUtilities_StopMirroringTimer", "FigRoutingManagerContextUtilities.m", 5940, 0, 0, v4, v5);
  }
}

void FigRoutingManagerContextUtilities_CacheSupportedOutputChannelLayouts(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (routingContextUtilities_getSharedContextUtilities_sContextUtilitiesStateSetupOnce != -1)
    {
      FigRoutingManagerContextUtilities_PostNotificationToClientsOfContextWithUUIDAndItsFollowers_cold_1();
    }

    v4 = &routingContextUtilities_getSharedContextUtilities_contextState;
    v5 = &qword_1EB75CF98;
    if (!byte_1EB75CFA8)
    {
      v5 = 504;
    }

    v6 = *v5;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __FigRoutingManagerContextUtilities_CacheSupportedOutputChannelLayouts_block_invoke;
    v7[3] = &__block_descriptor_56_e5_v8__0l;
    if (!byte_1EB75CFA8)
    {
      v4 = 0;
    }

    v7[4] = v4;
    v7[5] = a1;
    v7[6] = a2;
    MXDispatchSync("FigRoutingManagerContextUtilities_CacheSupportedOutputChannelLayouts", "FigRoutingManagerContextUtilities.m", 5977, 0, 0, v6, v7);
  }
}

uint64_t FigRoutingManagerContextUtilities_CopySupportedOutputChannelLayouts(uint64_t a1)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (a1)
  {
    if (routingContextUtilities_getSharedContextUtilities_sContextUtilitiesStateSetupOnce != -1)
    {
      FigRoutingManagerContextUtilities_UpdateRouteDescriptorForGivenContext_cold_1();
    }

    if (byte_1EB75CFA8)
    {
      v2 = &routingContextUtilities_getSharedContextUtilities_contextState;
    }

    else
    {
      v2 = 0;
    }

    v3 = &qword_1EB75CF98;
    if (!byte_1EB75CFA8)
    {
      v3 = 504;
    }

    v4 = *v3;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __FigRoutingManagerContextUtilities_CopySupportedOutputChannelLayouts_block_invoke;
    v7[3] = &unk_1E7AE7140;
    v7[5] = v2;
    v7[6] = a1;
    v7[4] = &v8;
    MXDispatchSync("FigRoutingManagerContextUtilities_CopySupportedOutputChannelLayouts", "FigRoutingManagerContextUtilities.m", 6004, 0, 0, v4, v7);
  }

  v5 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v5;
}

id FigRoutingContextUtilities_CreateStateInfoStringForContext(uint64_t a1)
{
  if (routingContextUtilities_getSharedContextUtilities_sContextUtilitiesStateSetupOnce != -1)
  {
    FigRoutingManagerContextUtilities_PostNotificationToClientsOfContextWithUUIDAndItsFollowers_cold_1();
  }

  v2 = byte_1EB75CFA8;
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v4 = v3;
  v5 = &qword_1EB75CF98;
  if (!v2)
  {
    v5 = 504;
  }

  v6 = *v5;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __FigRoutingContextUtilities_CreateStateInfoStringForContext_block_invoke;
  v9[3] = &unk_1E7AE79D0;
  if (v2)
  {
    v7 = &routingContextUtilities_getSharedContextUtilities_contextState;
  }

  else
  {
    v7 = 0;
  }

  v9[5] = v7;
  v9[6] = a1;
  v9[4] = v3;
  MXDispatchSync("FigRoutingContextUtilities_CreateStateInfoStringForContext", "FigRoutingManagerContextUtilities.m", 6261, 0, 0, v6, v9);
  return v4;
}

void __routingContextUtilities_getSharedContextUtilities_block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  qword_1EB75CF98 = dispatch_queue_create("com.apple.mediaexperience.RoutingContextUtilitiesSerializationQueue", v0);
  if (qword_1EB75CF98)
  {
    v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    qword_1EB75CFA0 = dispatch_queue_create("com.apple.mediaexperience.RoutingContextUtilitiesNotificationQueue", v1);
    if (qword_1EB75CFA0)
    {
      CMSMDeviceState_AddQueueToWatchDogMonitoring(qword_1EB75CF98);
      CMSMDeviceState_AddQueueToWatchDogMonitoring(qword_1EB75CFA0);
      v2 = *MEMORY[0x1E695E480];
      qword_1EB75CF80 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (qword_1EB75CF80)
      {
        qword_1EB75CFF8 = CFArrayCreateMutable(v2, 0, MEMORY[0x1E695E9C0]);
        if (qword_1EB75CFF8)
        {
          qword_1EB75D000 = CFArrayCreateMutable(v2, 0, MEMORY[0x1E695E9C0]);
          if (qword_1EB75D000)
          {
            qword_1EB75D008 = CFArrayCreateMutable(v2, 0, MEMORY[0x1E695E9C0]);
            if (qword_1EB75D008)
            {
              v3 = 0;
              v4 = MEMORY[0x1E695E9D8];
              v5 = MEMORY[0x1E695E9E8];
              v6 = &qword_1EB75CDB0;
              v7 = MEMORY[0x1E695E9C0];
              while (1)
              {
                *(v6 - 4) = v3;
                Mutable = CFDictionaryCreateMutable(v2, 0, v4, v5);
                *(v6 - 1) = Mutable;
                if (!Mutable)
                {
                  break;
                }

                v9 = CFArrayCreateMutable(v2, 0, v7);
                v6[1] = v9;
                if (!v9)
                {
                  break;
                }

                *v6 = 0;
                v6 += 4;
                if (++v3 == 15)
                {
                  byte_1EB75CFA8 = 1;
                  return;
                }
              }
            }
          }
        }
      }
    }
  }

  __routingContextUtilities_getSharedContextUtilities_block_invoke_cold_1();
}

void _routingContextUtilities_pruneLeaders(const __CFArray *a1)
{
  if (a1)
  {
    Count = CFArrayGetCount(a1);
    if (Count >= 1)
    {
      v3 = Count;
      v4 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a1, v4);
        if (ValueAtIndex)
        {
          if (!_routingContextUtilities_getContextFromWeakRef(ValueAtIndex))
          {
            CFArrayRemoveValueAtIndex(a1, v4--);
            --v3;
          }

          ++v4;
        }

        else
        {
          CFArrayRemoveValueAtIndex(a1, v4);
          --v3;
        }
      }

      while (v4 < v3);
    }
  }
}

void __routingContextUtilities_copyIndividualEndpointsFromAggregate_block_invoke(uint64_t *a1)
{
  theArray = 0;
  v2 = a1[4];
  CMBaseObject = FigEndpointGetCMBaseObject();
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v4)
  {
    v5 = *MEMORY[0x1E695E480];
    v4(CMBaseObject, *MEMORY[0x1E6962270], *MEMORY[0x1E695E480], &theArray);
    if (theArray)
    {
      MutableCopy = CFArrayCreateMutableCopy(v5, 0, theArray);
      if (theArray)
      {
        v7 = *MEMORY[0x1E6962600];
        if (FigRoutingManagerIsEndpointOfSubtype(a1[4]))
        {
          v8 = FigRoutingManagerCopyLocalAirPlayEndpoint();
          if (v8)
          {
            v9 = v8;
            if (!FigRoutingManagerIsClusterLocalEndpoint(v8))
            {
              v11 = theArray;
              v21.length = CFArrayGetCount(theArray);
              v21.location = 0;
              FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v11, v21, v9);
              if (FirstIndexOfValue != -1)
              {
                v13 = FirstIndexOfValue;
                v14 = a1[5];
                v15 = *(v14 + 528);
                if (v15)
                {
                  v16 = CFRetain(v15);
                  v14 = a1[5];
                }

                else
                {
                  v16 = 0;
                }

                v19 = 0;
                ContextForUUIDFromDict = _routingContextUtilities_getContextForUUIDFromDict(*(v14 + 480), v16);
                _routingContextUtilities_copyPickedEndpointAtIndex(ContextForUUIDFromDict, 0, &v19);
                v18 = v19;
                if (v19)
                {
                  if (FigRoutingManagerIsEndpointWHAGroupable(v19))
                  {
                    CFArraySetValueAtIndex(MutableCopy, v13, v18);
                  }

                  CFRelease(v18);
                }

                if (v16)
                {
                  CFRelease(v16);
                }
              }
            }

            CFRelease(v9);
          }
        }

        v10 = a1[6];
        v22.length = CFArrayGetCount(theArray);
        v22.location = 0;
        CFArrayAppendArray(v10, MutableCopy, v22);
        if (theArray)
        {
          CFRelease(theArray);
          theArray = 0;
        }
      }

      if (MutableCopy)
      {
        CFRelease(MutableCopy);
      }
    }
  }
}

uint64_t FigRouteDiscovererStartServer()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v1 = *MEMORY[0x1E6963400];
  FigCFDictionarySetInt32();
  v2 = FigXPCServerStart();
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v2;
}

uint64_t PowerManager_Initialize()
{
  v7 = *MEMORY[0x1E69E9840];
  IsCPMSSupportedForClient = powerManager_IsCPMSSupportedForClient(5);
  result = powerManager_IsCPMSSupportedForClient(6);
  if (IsCPMSSupportedForClient | result)
  {
    v2 = result;
    sCMSMPowerManager_0 = 1;
    if (IsCPMSSupportedForClient)
    {
      result = PowerManager_InitializeCPMSForAudio();
      IsCPMSSupportedForClient = result;
    }

    if (v2)
    {
      result = PowerManager_InitializeCPMSForHaptics();
      v3 = result;
    }

    else
    {
      v3 = 0;
    }

    if (IsCPMSSupportedForClient)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      result = fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (v3)
    {
      v5 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
      result = fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t powerManager_IsCPMSSupportedForClient(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if ([MEMORY[0x1E6991F30] isCPMSSupportedForClient:a1])
  {
    if (a1 == 5)
    {
      v2 = 1;
      PowerManager_SetCPMSSupportedForAudio(1);
      goto LABEL_10;
    }

    if (!MX_FeatureFlags_IsHapticEngineCPMSEnabled())
    {
      v2 = 1;
      PowerManager_SetCPMSSupportedForHaptics(1);
      goto LABEL_10;
    }

    PowerManager_SetCPMSSupportedForHaptics(0);
    if (!dword_1EB75DE40)
    {
      v2 = 0;
      goto LABEL_12;
    }

    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v2 = 0;
LABEL_10:
  if (dword_1EB75DE40)
  {
    v4 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

LABEL_12:
  v5 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t FigRoutingManager_GetDataTransmissionQueue()
{
  if (FigRoutingManager_GetDataTransmissionQueue_once != -1)
  {
    FigRoutingManager_GetDataTransmissionQueue_cold_1();
  }

  return FigRoutingManager_GetDataTransmissionQueue_dataTransmissionQueue;
}

uint64_t __FigRoutingManagerGetSharedManager_block_invoke()
{
  v5 = *MEMORY[0x1E69E9840];
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work();
  fig_note_initialize_category_with_default_work();
  if (dword_1EB75DF20 < 0x100)
  {
    if (dword_1EB75DF20)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  else
  {
    dword_1EB75DF20 = 0;
  }

  v1 = MXGetSerialQueue();
  qword_1ED6D2E28 = v1;
  if (v1)
  {
    FigRoutingManagerContextUtilities_Create(routingManager_pickingTimeoutCallback, v1);
    unk_1ED6D2E58 = FigSimpleMutexCreate();
    byte_1ED6D2E49 = 0;
    unk_1ED6D2E68 = 0;
    unk_1ED6D2E60 = 0;
  }

  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  qword_1ED6D2E30 = dispatch_queue_create("com.apple.coremedia.routingManager.notificationQueue", v2);
  result = FigRoutingManagerCreateEndpointManagers();
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

void routingManager_pickingTimeoutCallback(CFTypeRef cf, CFTypeRef a2)
{
  if (_MergedGlobals != -1)
  {
    FigRoutingManagerGetSharedQueue_cold_1();
  }

  v4 = qword_1ED6D2E28;
  if (cf)
  {
    CFRetain(cf);
  }

  if (a2)
  {
    CFRetain(a2);
  }

  if (v4)
  {
    v5 = &qword_1ED6D2E28;
  }

  else
  {
    v5 = 8;
  }

  v6 = *v5;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __FigRoutingManagerHandleActivationTimeoutCallback_block_invoke;
  v9[3] = &__block_descriptor_48_e5_v8__0l;
  v9[4] = a2;
  v9[5] = cf;
  MXDispatchAsync("FigRoutingManagerHandleActivationTimeoutCallback", "FigRoutingManager.m", 2481, 0, 0, v6, v9);
  v7 = *v5;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __FigRoutingManagerHandleActivationTimeoutCallback_block_invoke_2;
  v8[3] = &__block_descriptor_40_e5_v8__0l;
  v8[4] = cf;
  MXDispatchAsync("FigRoutingManagerHandleActivationTimeoutCallback", "FigRoutingManager.m", 2515, 0, 0, v7, v8);
}

uint64_t FigRoutingManagerCreateEndpointManagers()
{
  v28 = *MEMORY[0x1E69E9840];
  result = MX_FeatureFlags_IsExplicitInitializationForFigEndpointManagersEnabled();
  if (!result)
  {
    goto LABEL_37;
  }

  if (AirPlaySenderLibraryCore())
  {
    if (FigRouteDiscoveryManagerShouldRegisterEndpointManager(*MEMORY[0x1E69618D0]))
    {
      cf = 0;
      v26[0] = 0;
      v26[1] = v26;
      v26[2] = 0x2020000000;
      v1 = getAPGetEndpointManagerSymbolLoc_ptr;
      v27 = getAPGetEndpointManagerSymbolLoc_ptr;
      if (!getAPGetEndpointManagerSymbolLoc_ptr)
      {
        v21 = MEMORY[0x1E69E9820];
        v22 = 3221225472;
        v23 = __getAPGetEndpointManagerSymbolLoc_block_invoke;
        v24 = &unk_1E7AE73A0;
        v25 = v26;
        v2 = AirPlaySenderLibrary();
        *(v26[1] + 24) = dlsym(v2, "APGetEndpointManager");
        getAPGetEndpointManagerSymbolLoc_ptr = *(v25[1] + 24);
        v1 = *(v26[1] + 24);
      }

      _Block_object_dispose(v26, 8);
      if (!v1)
      {
        __68__MXBiomeStreams_updateBiomeSilentMode_clientType_untilTime_reason___block_invoke_cold_1();
        goto LABEL_40;
      }

      if (!v1(&cf))
      {
        FigRouteDiscoveryManagerRegisterEndpointManager(cf);
        if (dword_1EB75DF20)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }
      }
    }

    if (FigRouteDiscoveryManagerShouldRegisterEndpointManager(*MEMORY[0x1E69618E0]))
    {
      cf = 0;
      v26[0] = 0;
      v26[1] = v26;
      v26[2] = 0x2020000000;
      v4 = getAPGetEndpointManagerCarPlaySymbolLoc_ptr;
      v27 = getAPGetEndpointManagerCarPlaySymbolLoc_ptr;
      if (!getAPGetEndpointManagerCarPlaySymbolLoc_ptr)
      {
        v21 = MEMORY[0x1E69E9820];
        v22 = 3221225472;
        v23 = __getAPGetEndpointManagerCarPlaySymbolLoc_block_invoke;
        v24 = &unk_1E7AE73A0;
        v25 = v26;
        v5 = AirPlaySenderLibrary();
        v6 = dlsym(v5, "APGetEndpointManagerCarPlay");
        *(v25[1] + 24) = v6;
        getAPGetEndpointManagerCarPlaySymbolLoc_ptr = *(v25[1] + 24);
        v4 = *(v26[1] + 24);
      }

      _Block_object_dispose(v26, 8);
      if (!v4)
      {
        goto LABEL_39;
      }

      if (!v4(&cf))
      {
        FigRouteDiscoveryManagerRegisterEndpointManager(cf);
        if (dword_1EB75DF20)
        {
          v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }
      }
    }

    if (!FigRouteDiscoveryManagerShouldRegisterEndpointManager(*MEMORY[0x1E69618F0]))
    {
      goto LABEL_24;
    }

    cf = 0;
    v26[0] = 0;
    v26[1] = v26;
    v26[2] = 0x2020000000;
    v8 = getSPGetEndpointManagerSymbolLoc_ptr;
    v27 = getSPGetEndpointManagerSymbolLoc_ptr;
    if (!getSPGetEndpointManagerSymbolLoc_ptr)
    {
      v21 = MEMORY[0x1E69E9820];
      v22 = 3221225472;
      v23 = __getSPGetEndpointManagerSymbolLoc_block_invoke;
      v24 = &unk_1E7AE73A0;
      v25 = v26;
      v9 = AirPlaySenderLibrary();
      v10 = dlsym(v9, "SPGetEndpointManager");
      *(v25[1] + 24) = v10;
      getSPGetEndpointManagerSymbolLoc_ptr = *(v25[1] + 24);
      v8 = *(v26[1] + 24);
    }

    _Block_object_dispose(v26, 8);
    if (v8)
    {
      if (!v8(&cf))
      {
        FigRouteDiscoveryManagerRegisterEndpointManager(cf);
        if (dword_1EB75DF20)
        {
          v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }
      }

      goto LABEL_24;
    }

LABEL_39:
    __68__MXBiomeStreams_updateBiomeSilentMode_clientType_untilTime_reason___block_invoke_cold_1();
LABEL_40:
    __break(1u);
  }

LABEL_24:
  result = MediaToolboxLibraryCore();
  if (!result)
  {
    goto LABEL_37;
  }

  result = FigRouteDiscoveryManagerShouldRegisterEndpointManager(*MEMORY[0x1E69618E8]);
  if (!result)
  {
    goto LABEL_37;
  }

  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x2020000000;
  v12 = getFigEndpointManagerForNeroGetSharedSymbolLoc_ptr;
  v27 = getFigEndpointManagerForNeroGetSharedSymbolLoc_ptr;
  if (!getFigEndpointManagerForNeroGetSharedSymbolLoc_ptr)
  {
    v21 = MEMORY[0x1E69E9820];
    v22 = 3221225472;
    v23 = __getFigEndpointManagerForNeroGetSharedSymbolLoc_block_invoke;
    v24 = &unk_1E7AE73A0;
    v25 = v26;
    __getFigEndpointManagerForNeroGetSharedSymbolLoc_block_invoke(&v21);
    v12 = *(v26[1] + 24);
  }

  _Block_object_dispose(v26, 8);
  if (!v12)
  {
    goto LABEL_39;
  }

  result = v12(v13, v14);
  v15 = result;
  if (result)
  {
    result = FigRouteDiscoveryManagerRegisterEndpointManager(result);
    if (dword_1EB75DF20)
    {
      LODWORD(cf) = 0;
      v16 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v17 = cf;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v18 = v17;
      }

      else
      {
        v18 = v17 & 0xFFFFFFFE;
      }

      if (v18)
      {
        LODWORD(v26[0]) = 136315394;
        *(v26 + 4) = "FigRoutingManagerCreateEndpointManagers";
        WORD2(v26[1]) = 2048;
        *(&v26[1] + 6) = v15;
        _os_log_send_and_compose_impl();
      }

      result = fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

LABEL_37:
  v19 = *MEMORY[0x1E69E9840];
  return result;
}

void FigRoutingMangerCreateBluetoothEndpointManager()
{
  v12 = *MEMORY[0x1E69E9840];
  cf = 0;
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.routingManager.bluetooth", v0);
  routingManager_createBluetoothEndpointManager_queue = v1;
  if (v1)
  {
    v2 = v1;
    v8 = 0;
    v9 = &v8;
    v10 = 0x2020000000;
    v3 = getBluetoothEndpointManagerCreateSymbolLoc_ptr;
    v11 = getBluetoothEndpointManagerCreateSymbolLoc_ptr;
    if (!getBluetoothEndpointManagerCreateSymbolLoc_ptr)
    {
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __getBluetoothEndpointManagerCreateSymbolLoc_block_invoke;
      v7[3] = &unk_1E7AE73A0;
      v7[4] = &v8;
      __getBluetoothEndpointManagerCreateSymbolLoc_block_invoke(v7);
      v3 = v9[3];
    }

    _Block_object_dispose(&v8, 8);
    if (!v3)
    {
      __68__MXBiomeStreams_updateBiomeSilentMode_clientType_untilTime_reason___block_invoke_cold_1();
      __break(1u);
    }

    if (!(v3)(*MEMORY[0x1E695E480], v2, 0, &cf))
    {
      FigRouteDiscoveryManagerRegisterEndpointManager(cf);
      if (dword_1EB75DF20)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

uint64_t MXRegisterEndpointManager(const void *a1)
{
  v2 = objc_autoreleasePoolPush();
  FigRouteDiscoveryManagerInit();
  FigRouteDiscoveryManagerRegisterEndpointManager(a1);
  FigRouteDiscoveryManagerStart();
  FigRoutingManagerInit();
  objc_autoreleasePoolPop(v2);
  return 0;
}

uint64_t FigRoutingManagerCreateAndActivateAggregateEndpointForContext(const void *a1)
{
  cf = 0;
  v2 = [+[MXEndpointDescriptorCache sharedInstance](MXEndpointDescriptorCache getEndpointManagerForType:"getEndpointManagerForType:", *MEMORY[0x1E69618D0]];
  if (!v2)
  {
    goto LABEL_9;
  }

  v3 = v2;
  ContextType = FigRoutingManagerContextUtilities_GetContextType(a1);
  if (ContextType == 9)
  {
    v5 = 3;
  }

  else
  {
    v5 = 0;
  }

  v6 = MXAggregateEndpointCreateAggregateEndpoint(v3, a1, v5, &cf);
  if (!v6)
  {
    if (cf)
    {
      FigRoutingManagerContextUtilities_SetAggregateEndpoint(a1, cf);
      v2 = cf;
    }

    else
    {
      v2 = 0;
    }

    if (ContextType != 9)
    {
      v7 = FigRoutingManager_iOSActivateEndpoint(v2, a1, 0, 0);
      goto LABEL_11;
    }

LABEL_9:
    v7 = MXSystemRemotePool_ActivateAggregateEndpoint(v2, a1);
LABEL_11:
    v8 = v7;
    goto LABEL_12;
  }

  v8 = v6;
  FigRoutingManagerContextUtilities_SetAggregateEndpoint(a1, 0);
LABEL_12:
  if (cf)
  {
    CFRelease(cf);
  }

  return v8;
}

uint64_t FigRoutingManagerRegisterAndCopyContext(uint64_t a1, const __CFDictionary *a2, int a3, CFStringRef *a4)
{
  if (a3 - 1) < 0xE && ((0x3F07u >> (a3 - 1)))
  {
    return 4294955276;
  }

  if (_MergedGlobals != -1)
  {
    FigRoutingManagerGetSharedQueue_cold_1();
  }

  if (qword_1ED6D2E28)
  {
    v9 = &unk_1ED6D2E20;
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x1E695E480];
  v11 = CFUUIDCreate(*MEMORY[0x1E695E480]);
  if (!v11)
  {
    return 4294955275;
  }

  v12 = v11;
  v13 = CFUUIDCreateString(v10, v11);
  CFRelease(v12);
  if (!v13)
  {
    return 4294955275;
  }

  v15 = routingManager_registerContextInternal(v9, v13, a1, a3, a2);
  v8 = v15;
  if (!v15)
  {
    if (a4)
    {
      *a4 = v13;
      FigRoutingContextUtilities_LogCurrentState(v15, v16);
      return 0;
    }

    FigRoutingContextUtilities_LogCurrentState(v15, v16);
  }

  CFRelease(v13);
  return v8;
}

void __FigRoutingManagerUnregisterContext_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  routingManager_notifyRoutingContextChanged();
  v3 = *(a1 + 32);
  if (v3)
  {

    CFRelease(v3);
  }
}

void routingManager_notifyRoutingContextChanged()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetValue();
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  if (Mutable)
  {

    CFRelease(Mutable);
  }
}

void FigRoutingManagerCopyCurrentGroupUUID(uint64_t a1, void *a2)
{
  if (a2)
  {
    cf = 0;
    FigRoutingManagerContextUtilities_CopyPickedEndpointAtIndex(a1, 0, &cf);
    v3 = *MEMORY[0x1E69626B0];
    if (FigRoutingManagerIsEndpointOfType(cf))
    {
      CMBaseObject = FigEndpointGetCMBaseObject();
      VTable = CMBaseObjectGetVTable();
      v6 = *(*(VTable + 8) + 48);
      if (v6)
      {
        v7 = *(VTable + 8) + 48;
        v6(CMBaseObject, *MEMORY[0x1E69620C8], *MEMORY[0x1E695E480], a2);
      }
    }

    else
    {
      *a2 = 0;
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }
}

uint64_t FigRoutingManagerIsConfigurationWHASilentPrimary(uint64_t a1)
{
  if (!FigRoutingManagerContextUtilities_IsContextSystemMusicAndIndependent(a1))
  {
    return 0;
  }

  theArray = 0;
  FigRoutingManagerCopyPickedEndpointsForRoutingContext(a1, &theArray);
  if (!theArray)
  {
    return 0;
  }

  Count = CFArrayGetCount(theArray);
  v3 = Count;
  if (Count)
  {
    if (Count < 1)
    {
LABEL_9:
      v3 = 1;
    }

    else
    {
      v4 = 0;
      v5 = *MEMORY[0x1E69626D8];
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v4);
        if (FigRoutingManagerIsEndpointLocal(ValueAtIndex) || FigRoutingManagerIsEndpointOfType(ValueAtIndex))
        {
          break;
        }

        if (v3 == ++v4)
        {
          goto LABEL_9;
        }
      }

      v3 = 0;
    }
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  return v3;
}

uint64_t routingManager_createSystemContext(uint64_t a1, int a2, void *a3)
{
  v6 = 0;
  cf = 0;
  if (a2 <= 9)
  {
    if (a2 > 2)
    {
      if (a2 == 3)
      {
        v7 = @"577E1BCA-2D9B-41C2-A8F8-C515CE8072D4";
        SystemMusicContextInternal = FigRoutingContextCreateSystemMusicContextInternal(@"577E1BCA-2D9B-41C2-A8F8-C515CE8072D4", &cf);
      }

      else
      {
        v7 = 0;
        if (a2 != 9)
        {
          goto LABEL_23;
        }

        v7 = @"0099C187-7408-4602-A91A-AD16480F63A6";
        SystemMusicContextInternal = FigRoutingContextCreateSystemRemotePoolContextInternal(@"0099C187-7408-4602-A91A-AD16480F63A6", &cf);
      }
    }

    else if (a2 == 1)
    {
      v7 = @"9FF3A19E-9347-44BE-9999-3527693EBD42";
      SystemMusicContextInternal = FigRoutingContextCreateSystemAudioContextInternal(@"9FF3A19E-9347-44BE-9999-3527693EBD42", &cf);
    }

    else
    {
      v7 = 0;
      if (a2 != 2)
      {
        goto LABEL_23;
      }

      v7 = @"AE0596F4-FE8D-41DC-B2AC-CB0C10793AFB";
      SystemMusicContextInternal = FigRoutingContextCreateSystemMirroringContextInternal(@"AE0596F4-FE8D-41DC-B2AC-CB0C10793AFB", &cf);
    }
  }

  else if (a2 <= 11)
  {
    if (a2 == 10)
    {
      v7 = @"EE613C90-4977-407B-830E-615886FFD46B";
      SystemMusicContextInternal = FigRoutingContextCreateSystemVideoDisplayMenu(@"EE613C90-4977-407B-830E-615886FFD46B", &cf);
    }

    else
    {
      v7 = @"3C4D0FD7-378E-43FA-9D62-8F7873D548C7";
      SystemMusicContextInternal = FigRoutingContextCreateSystemVideoContextInternal(@"3C4D0FD7-378E-43FA-9D62-8F7873D548C7", &cf);
    }
  }

  else if (a2 == 12)
  {
    v7 = @"1631DE8A-D3C9-463D-B86F-95DB6C143A72";
    SystemMusicContextInternal = FigRoutingContextCreateSidePlayContextInternal(@"1631DE8A-D3C9-463D-B86F-95DB6C143A72", &cf);
  }

  else if (a2 == 13)
  {
    v7 = @"7D6934D3-F9A8-4C49-9F66-83AB896A0C99";
    SystemMusicContextInternal = FigRoutingContextCreateSystemInputContextInternal(@"7D6934D3-F9A8-4C49-9F66-83AB896A0C99", &cf);
  }

  else
  {
    v7 = 0;
    if (a2 != 14)
    {
      goto LABEL_23;
    }

    v7 = @"1E27F250-0404-42B1-BF7E-AE233EA5DBC8";
    SystemMusicContextInternal = FigRoutingContextCreateSystemRemoteDisplayInternal(@"1E27F250-0404-42B1-BF7E-AE233EA5DBC8", &cf);
  }

  v9 = SystemMusicContextInternal;
  if (SystemMusicContextInternal)
  {
    goto LABEL_32;
  }

  v6 = cf;
LABEL_23:
  v10 = routingManager_registerContextInternal(a1, v7, v6, a2, 0);
  if (!v10)
  {
    if (!a3)
    {
      return 0;
    }

    if (v7)
    {
      v11 = CFRetain(v7);
    }

    else
    {
      v11 = 0;
    }

    v9 = 0;
    *a3 = v11;
    return v9;
  }

  v9 = v10;
LABEL_32:
  if (cf)
  {
    CFRelease(cf);
  }

  return v9;
}

void __FigRoutingManagerInit_block_invoke()
{
  if (_MergedGlobals != -1)
  {
    FigRoutingManagerGetSharedQueue_cold_1();
  }

  v0 = &qword_1ED6D2E28;
  if (!qword_1ED6D2E28)
  {
    v0 = 8;
  }

  v1 = *v0;

  MXDispatchAsync("FigRoutingManagerInit_block_invoke", "FigRoutingManager.m", 1843, 0, 0, v1, &__block_literal_global_24);
}

uint64_t FigRoutingManagerDoesDeviceAlwaysHaveAggregateForLocalPlayback()
{
  if (!CMSMDeviceState_ItsAHomePod())
  {
    CMSMDeviceState_ItsAnAppleTV();
  }

  return FigGetCFPreferenceNumberWithDefault();
}

CFTypeRef FigRoutingManagerCopyWHAGroupableVAEndpoint()
{
  cf = 0;
  [+[MXEndpointDescriptorCache sharedInstance](MXEndpointDescriptorCache getEndpointManagerForType:"getEndpointManagerForType:", *MEMORY[0x1E69618F8]];
  CMBaseObject = FigEndpointManagerGetCMBaseObject();
  VTable = CMBaseObjectGetVTable();
  v2 = *(*(VTable + 8) + 48);
  if (v2)
  {
    v3 = *(VTable + 8) + 48;
    if (!v2(CMBaseObject, *MEMORY[0x1E69618A8], *MEMORY[0x1E695E480], &cf))
    {
      v6 = 0;
      while (1)
      {
        Count = cf;
        if (cf)
        {
          Count = CFArrayGetCount(cf);
        }

        if (v6 >= Count)
        {
          break;
        }

        ValueAtIndex = CFArrayGetValueAtIndex(cf, v6++);
        if (FigRoutingManagerIsEndpointWHAGroupable(ValueAtIndex))
        {
          if (!ValueAtIndex)
          {
            break;
          }

          v4 = CFRetain(ValueAtIndex);
          goto LABEL_5;
        }
      }
    }
  }

  v4 = 0;
LABEL_5:
  if (cf)
  {
    CFRelease(cf);
  }

  return v4;
}

CFTypeRef FigRoutingManagerCopyLocalAirPlayEndpoint()
{
  if (![+[MXEndpointDescriptorCache getEndpointManagerForType:"getEndpointManagerForType:"]
  {
    return 0;
  }

  cf = 0;
  CMBaseObject = FigEndpointManagerGetCMBaseObject();
  VTable = CMBaseObjectGetVTable();
  v2 = *(*(VTable + 8) + 48);
  if (v2)
  {
    v3 = *(VTable + 8) + 48;
    if (!v2(CMBaseObject, *MEMORY[0x1E69618A8], *MEMORY[0x1E695E480], &cf))
    {
      v6 = 0;
      while (1)
      {
        Count = cf;
        if (cf)
        {
          Count = CFArrayGetCount(cf);
        }

        if (v6 >= Count)
        {
          break;
        }

        ValueAtIndex = CFArrayGetValueAtIndex(cf, v6++);
        if (FigRoutingManagerIsEndpointNonRemoteControlLocalAirPlay(ValueAtIndex))
        {
          if (!ValueAtIndex)
          {
            break;
          }

          v4 = CFRetain(ValueAtIndex);
          goto LABEL_6;
        }
      }
    }
  }

  v4 = 0;
LABEL_6:
  if (cf)
  {
    CFRelease(cf);
  }

  return v4;
}

CFTypeRef FigRoutingManagerCopyBluetoothEndpointAssociatedWithVAEndpoint()
{
  theArray = 0;
  [+[MXEndpointDescriptorCache sharedInstance](MXEndpointDescriptorCache getEndpointManagerForType:"getEndpointManagerForType:", *MEMORY[0x1E69618D8]];
  CMBaseObject = FigEndpointManagerGetCMBaseObject();
  v1 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v1)
  {
    return 0;
  }

  v2 = *MEMORY[0x1E695E480];
  if (v1(CMBaseObject, *MEMORY[0x1E69618A8], *MEMORY[0x1E695E480], &theArray))
  {
    return 0;
  }

  theString = 0;
  v5 = FigEndpointGetCMBaseObject();
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v6)
  {
    v7 = *MEMORY[0x1E69620F8];
    v6(v5, *MEMORY[0x1E69620F8], v2, &theString);
    if (theString)
    {
      for (i = 0; ; ++i)
      {
        Count = theArray;
        if (theArray)
        {
          Count = CFArrayGetCount(theArray);
        }

        if (i >= Count)
        {
          goto LABEL_19;
        }

        ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
        stringToFind = 0;
        v11 = FigEndpointGetCMBaseObject();
        v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (!v12)
        {
          goto LABEL_15;
        }

        v13 = v12(v11, v7, v2, &stringToFind);
        v14 = stringToFind;
        if (stringToFind)
        {
          if (!v13)
          {
            break;
          }
        }

LABEL_16:
        if (v14)
        {
          CFRelease(v14);
        }
      }

      if (CFStringFind(theString, stringToFind, 0).location != -1)
      {
        if (ValueAtIndex)
        {
          v3 = CFRetain(ValueAtIndex);
        }

        else
        {
          v3 = 0;
        }

        if (stringToFind)
        {
          CFRelease(stringToFind);
        }

        goto LABEL_20;
      }

LABEL_15:
      v14 = stringToFind;
      goto LABEL_16;
    }
  }

LABEL_19:
  v3 = 0;
LABEL_20:
  if (theArray)
  {
    CFRelease(theArray);
    theArray = 0;
  }

  if (theString)
  {
    CFRelease(theString);
  }

  return v3;
}

uint64_t FigRoutingManagerCopySelectedBufferedEndpointForTesting(uint64_t a1, uint64_t a2)
{
  v15[24] = *MEMORY[0x1E69E9840];
  v14 = 0;
  v15[0] = 0;
  cf = 0;
  if (a2 && FigRoutingManagerContextUtilities_IsContextSidePlay(a1))
  {
    v3 = routingMangager_copySelectedBufferedEndpointForSidePlay();
    v4 = 0;
    v15[0] = v3;
  }

  else
  {
    FigRoutingManagerCopyPickedEndpointForRoutingContext(a1, &cf);
    v3 = 0;
    v4 = cf;
  }

  v5 = *MEMORY[0x1E69626A8];
  if (FigRoutingManagerIsEndpointOfType(v4) || (v6 = *MEMORY[0x1E69626B0], FigRoutingManagerIsEndpointOfType(cf)))
  {
    v7 = cf;
    v15[0] = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    if (v3)
    {
      CFRelease(v3);
    }
  }

  else if (FigRoutingManagerContextUtilities_GetContextType(a1) - 3 > 2)
  {
    v7 = v3;
  }

  else
  {
    if (v3)
    {
      CFRelease(v3);
      v15[0] = 0;
    }

    FigRoutingManagerContextUtilities_CopyFigEndpointFromAggregateEndpointForClientUse(a1, v15);
    v7 = v15[0];
  }

  if (v7)
  {
    CMBaseObject = FigEndpointGetCMBaseObject();
    v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v9)
    {
      v9(CMBaseObject, *MEMORY[0x1E69621E8], *MEMORY[0x1E695E480], &v14);
    }
  }

  if (dword_1EB75DF20)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (v14)
  {
    CFRelease(v14);
    v14 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  result = v15[0];
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

CFTypeRef routingMangager_copySelectedBufferedEndpointForSidePlay()
{
  cf[21] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E695E480];
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v2 = FigRoutingManagerUtilities_CopySidePlayEndpoints();
  v3 = 0;
  v4 = 0;
  v5 = *MEMORY[0x1E69620F8];
  v23 = *MEMORY[0x1E69621E8];
  v6 = &qword_1EB75D000;
  v22 = v0;
  if (!v2)
  {
    goto LABEL_3;
  }

LABEL_2:
  for (i = CFArrayGetCount(v2); ; i = 0)
  {
    if (v4 >= i)
    {
      v19 = 0;
      goto LABEL_37;
    }

    v8 = v6;
    ValueAtIndex = CFArrayGetValueAtIndex(v2, v4);
    cf[0] = 0;
    CMBaseObject = FigEndpointGetCMBaseObject();
    v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v11)
    {
      v11(CMBaseObject, v5, v0, cf);
    }

    v24 = 0;
    v12 = FigEndpointGetCMBaseObject();
    v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v13)
    {
      v13(v12, v23, v0, &v24);
    }

    CFStringAppendFormat(Mutable, 0, @"\t[%ld] endpointName=%@, endpointID=%@\n", v4, v24, cf[0]);
    v6 = v8;
    v14 = v8[257];
    if (!FigCFEqual())
    {
      v15 = v8[257];
      if (v15)
      {
        CFRelease(v15);
        v8[257] = 0;
      }

      if (v2)
      {
        v8[257] = CFRetain(v2);
        v16 = CFArrayGetCount(v2) - 1;
      }

      else
      {
        v8[257] = 0;
        v16 = -1;
      }

      if (v4 == v16)
      {
        if (dword_1EB75DF20)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          v0 = v22;
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v6 = v8;
        }
      }

      else if (v4 && !(v3 + 5 * (v4 / 5uLL)))
      {
        if (dword_1EB75DF20)
        {
          v18 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v0 = v22;
          v6 = v8;
        }

        if (Mutable)
        {
          CFRelease(Mutable);
        }

        Mutable = CFStringCreateMutable(v0, 0);
      }
    }

    if (FigCFEqual())
    {
      break;
    }

    if (cf[0])
    {
      CFRelease(cf[0]);
      cf[0] = 0;
    }

    if (v24)
    {
      CFRelease(v24);
    }

    ++v4;
    --v3;
    if (v2)
    {
      goto LABEL_2;
    }

LABEL_3:
    ;
  }

  v19 = CFRetain(ValueAtIndex);
  if (cf[0])
  {
    CFRelease(cf[0]);
    cf[0] = 0;
  }

  if (v24)
  {
    CFRelease(v24);
  }

LABEL_37:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  v20 = *MEMORY[0x1E69E9840];
  return v19;
}

void FigRoutingManagerLogEndpointID(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  cf[24] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    cf[0] = 0;
    CMBaseObject = FigEndpointGetCMBaseObject();
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v6)
    {
      v6(CMBaseObject, *MEMORY[0x1E69621E8], *MEMORY[0x1E695E480], cf);
    }

    if (a4 && dword_1EB75DF20)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (cf[0])
    {
      CFRelease(cf[0]);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

void FigRoutingManagerLogEndpointIDs(uint64_t a1, const __CFArray *a2, uint64_t a3, int a4)
{
  cf[16] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v6 = *MEMORY[0x1E695E480];
    Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
    if (CFArrayGetCount(a2) >= 1)
    {
      v8 = 0;
      v9 = *MEMORY[0x1E69621E8];
      do
      {
        CFArrayGetValueAtIndex(a2, v8);
        cf[0] = 0;
        CMBaseObject = FigEndpointGetCMBaseObject();
        v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v11)
        {
          v11(CMBaseObject, v9, v6, cf);
        }

        CFStringAppendFormat(Mutable, 0, @"[%d]. %@ ", v8, cf[0]);
        if (cf[0])
        {
          CFRelease(cf[0]);
        }

        ++v8;
      }

      while (v8 < CFArrayGetCount(a2));
    }

    if (a4 && dword_1EB75DF20)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

void FigRoutingManagerLogRoutingRequestDetails(uint64_t a1, uint64_t a2, const __CFArray *a3, uint64_t a4, uint64_t a5, const __CFDictionary *a6)
{
  v30[16] = *MEMORY[0x1E69E9840];
  v9 = *MEMORY[0x1E695E480];
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  if (a2)
  {
    v30[0] = 0;
    CMBaseObject = FigEndpointGetCMBaseObject();
    v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v12)
    {
      v12(CMBaseObject, *MEMORY[0x1E69621E8], v9, v30);
      v13 = v30[0];
    }

    else
    {
      v13 = 0;
    }

    IsEndpointWHAGroupable = FigRoutingManagerIsEndpointWHAGroupable(a2);
    v15 = "YES";
    if (!IsEndpointWHAGroupable)
    {
      v15 = "NO";
    }

    CFStringAppendFormat(Mutable, 0, @"%@(isWHAGroupable=%s)", v13, v15);
    if (v30[0])
    {
      CFRelease(v30[0]);
    }
  }

  else if (a3)
  {
    Count = CFArrayGetCount(a3);
    if (Count >= 1)
    {
      v17 = Count;
      v18 = 0;
      v19 = *MEMORY[0x1E69621E8];
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a3, v18);
        v30[0] = 0;
        v21 = FigEndpointGetCMBaseObject();
        v22 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v22)
        {
          v22(v21, v19, v9, v30);
        }

        v23 = v30[0];
        if (v30[0])
        {
          v24 = FigRoutingManagerIsEndpointWHAGroupable(ValueAtIndex);
          v25 = "YES";
          if (!v24)
          {
            v25 = "NO";
          }

          if (v17 == 1)
          {
            CFStringAppendFormat(Mutable, 0, @"%@(isWHAGroupable=%s)", v23, v25);
          }

          else
          {
            CFStringAppendFormat(Mutable, 0, @"%@(isWHAGroupable=%s), ", v23, v25);
          }

          if (v30[0])
          {
            CFRelease(v30[0]);
          }
        }

        ++v18;
        --v17;
      }

      while (v17);
    }
  }

  FigCFDictionaryGetInt32IfPresent();
  v26 = FigRoutingManagerCopyClientNameFromPID(0);
  if (a6)
  {
    CFDictionaryGetValue(a6, @"initiator");
    CFDictionaryGetValue(a6, @"avoidAuthPrompt");
    CFDictionaryGetValue(a6, @"silentSender");
  }

  else
  {
    v27 = *MEMORY[0x1E695E4C0];
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

  if (v26)
  {
    CFRelease(v26);
  }

  v29 = *MEMORY[0x1E69E9840];
}

CFStringRef FigRoutingManagerCopyClientNameFromPID(int a1)
{
  v5 = *MEMORY[0x1E69E9840];
  memset(v4, 0, sizeof(v4));
  if (a1 >= 1)
  {
    v1 = proc_name(a1, v4, 0x80u);
    if ((v1 & 0x80000000) == 0)
    {
      *(v4 + v1) = 0;
    }
  }

  result = CFStringCreateWithCString(*MEMORY[0x1E695E480], v4, 0x8000100u);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

__CFDictionary *FigRoutingManagerCopyRoutingContextOptionsWithRouteRequestID(CFDictionaryRef theDict)
{
  v1 = *MEMORY[0x1E695E480];
  if (theDict)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, theDict);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  v3 = MutableCopy;
  if (MutableCopy)
  {
    Value = CFDictionaryGetValue(MutableCopy, @"clientRouteRequestID");
    if (Value)
    {
      v5 = CFRetain(Value);
      if (v5)
      {
        v6 = v5;
LABEL_9:
        CFRelease(v6);
        return v3;
      }
    }

    v7 = mach_absolute_time();
    v6 = CFStringCreateWithFormat(v1, 0, @"%lld", v7);
    CFDictionarySetValue(v3, @"clientRouteRequestID", v6);
    if (v6)
    {
      goto LABEL_9;
    }
  }

  return v3;
}

__CFArray *FigRoutingManagerCreateArrayFromEndpoint(const void *a1)
{
  if (!a1)
  {
    return 0;
  }

  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  CFArrayAppendValue(Mutable, a1);
  return Mutable;
}

void __FigRoutingManagerHandleActivationTimeoutCallback_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    FigRoutingManagerContextUtilities_ResetCurrentlyActivatingEndpointInfo(*(a1 + 40), v2, @"configUpdateReasonEndedFailed");
    if (FigRoutingManagerIsEndpointActivated(*(a1 + 32)))
    {
      FigRoutingManagerLogEndpointID(@"CMSession/Routing: HandleActivationTimeoutCallback - Going to deactivate endpoint with name=", *(a1 + 32), 0, 1);
      v5 = 0;
      FigRoutingManagerContextUtilities_GetActivationSeedForEndpoint(*(a1 + 40), *(a1 + 32), &v5);
      FigRoutingManager_iOSDeactivateEndpoint(*(a1 + 32), v5, 0);
    }
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    CFRelease(v4);
  }
}

void *__getBluetoothEndpointManagerCreateSymbolLoc_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!BluetoothAudioLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __BluetoothAudioLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E7AE7C50;
    v8 = 0;
    BluetoothAudioLibraryCore_frameworkLibrary = _sl_dlopen();
    v3 = v6[0];
    v2 = BluetoothAudioLibraryCore_frameworkLibrary;
    if (BluetoothAudioLibraryCore_frameworkLibrary)
    {
      if (!v6[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np();
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = BluetoothAudioLibraryCore_frameworkLibrary;
LABEL_5:
  result = dlsym(v2, "BluetoothEndpointManagerCreate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBluetoothEndpointManagerCreateSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __BluetoothAudioLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  BluetoothAudioLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t AirPlaySenderLibraryCore()
{
  v2 = *MEMORY[0x1E69E9840];
  if (!AirPlaySenderLibraryCore_frameworkLibrary)
  {
    AirPlaySenderLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  result = AirPlaySenderLibraryCore_frameworkLibrary;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __AirPlaySenderLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AirPlaySenderLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *__getAPGetEndpointManagerSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AirPlaySenderLibrary();
  result = dlsym(v2, "APGetEndpointManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAPGetEndpointManagerSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t AirPlaySenderLibrary()
{
  v0 = AirPlaySenderLibraryCore();
  if (!v0)
  {
    v2 = abort_report_np();
    free(v2);
  }

  return v0;
}

void *__getAPGetEndpointManagerCarPlaySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AirPlaySenderLibrary();
  result = dlsym(v2, "APGetEndpointManagerCarPlay");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAPGetEndpointManagerCarPlaySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSPGetEndpointManagerSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AirPlaySenderLibrary();
  result = dlsym(v2, "SPGetEndpointManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSPGetEndpointManagerSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t MediaToolboxLibraryCore()
{
  v2 = *MEMORY[0x1E69E9840];
  if (!MediaToolboxLibraryCore_frameworkLibrary)
  {
    MediaToolboxLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  result = MediaToolboxLibraryCore_frameworkLibrary;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __MediaToolboxLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MediaToolboxLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *__getFigEndpointManagerForNeroGetSharedSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaToolboxLibraryCore();
  if (!v2)
  {
    v4 = abort_report_np();
    free(v4);
  }

  result = dlsym(v2, "FigEndpointManagerForNeroGetShared");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getFigEndpointManagerForNeroGetSharedSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void __routingManager_registerContextInternal_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  routingManager_notifyRoutingContextChanged();
  v3 = *(a1 + 32);
  if (v3)
  {

    CFRelease(v3);
  }
}

uint64_t MXSystemAudio_PickRouteDescriptor(const void *a1, CFDictionaryRef theDict, const __CFDictionary *a3, const __CFDictionary *a4)
{
  value[16] = *MEMORY[0x1E69E9840];
  if (theDict)
  {
    CFDictionaryGetValue(theDict, @"RouteName");
  }

  if (dword_1EB75DF20)
  {
    LODWORD(v115) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (FigCFDictionaryGetCount())
  {
    v9 = FigEndpointDescriptorUtility_CopyEndpointFromDescriptor(theDict, a1);
    if (!v9)
    {
      LODWORD(v115) = 0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v9 = FigRoutingManagerCopyRoutingContextOptionsWithRouteRequestID(a3);
      FigRoutingManagerContextUtilities_PostRouteConfigUpdatedToClientsOfContextWithUUIDAndItsFollowers(a1, v9, @"configUpdateReasonEndedFailed");
      v14 = 4294954296;
      goto LABEL_150;
    }
  }

  else
  {
    v9 = 0;
  }

  v106 = 0;
  ContextType = FigRoutingManagerContextUtilities_GetContextType(a1);
  if (theDict && ContextType == 3)
  {
    v13 = CFDictionaryGetValue(theDict, @"RouteSupportsAirPlayMusic");
    if (v13 != *MEMORY[0x1E695E4D0])
    {
      if (dword_1EB75DF20)
      {
        goto LABEL_21;
      }

      goto LABEL_22;
    }

    if (CFDictionaryGetValue(theDict, @"IsWHAGroupable") != v13)
    {
      if (dword_1EB75DF20)
      {
        goto LABEL_21;
      }

      goto LABEL_22;
    }

    if (!FigRoutingContextUtilities_IsFollowingAnotherContext(a1))
    {
      if (dword_1EB75DF20)
      {
LABEL_21:
        LODWORD(v115) = 0;
        type[0] = OS_LOG_TYPE_DEFAULT;
        v16 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

LABEL_22:
      FigRoutingContextUtilities_SetLeaderToSystemAudioContext(a1, 0);
      ContextType = FigRoutingManagerContextUtilities_CopySystemAudioContextUUID(&v106);
      goto LABEL_23;
    }

    if (dword_1EB75DF20)
    {
      LODWORD(v115) = 0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    ContextType = FigRoutingContextUtilities_CopyLeaderUUIDForContext(a1, &v106);
  }

LABEL_23:
  v17 = v106;
  if (!v106)
  {
    if (!a1 || (ContextType = CFRetain(a1), v17 = ContextType, (v106 = ContextType) == 0))
    {
      v14 = 0;
      goto LABEL_150;
    }
  }

  FigRoutingContextUtilities_LogCurrentState(ContextType, v12);
  v115 = 0;
  v18 = MEMORY[0x1E695E480];
  if (v9)
  {
    CMBaseObject = FigEndpointGetCMBaseObject();
    v20 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v20)
    {
      v20(CMBaseObject, *MEMORY[0x1E69621E8], *v18, &v115);
    }
  }

  v21 = FigRoutingManagerCopyRoutingContextOptionsWithRouteRequestID(a3);
  FigRoutingManagerLogRoutingRequestDetails(@"preprocessPickEndpoint - ", v9, 0, 0, v17, v21);
  *type = 0;
  FigRoutingManagerContextUtilities_CopyCurrentlyActivatingEndpoints(v17, type);
  if (!*type)
  {
    goto LABEL_46;
  }

  Count = CFArrayGetCount(*type);
  if (Count < 1)
  {
    goto LABEL_46;
  }

  v23 = Count;
  if (CFArrayGetValueAtIndex(*type, 0) != v9)
  {
    v24 = 1;
    while (1)
    {
      v25 = v24;
      if (v23 == v24)
      {
        break;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(*type, v24);
      v24 = v25 + 1;
      if (ValueAtIndex == v9)
      {
        v27 = v25;
        goto LABEL_39;
      }
    }

    v27 = 0;
LABEL_39:
    if (v25 < v23)
    {
      goto LABEL_40;
    }

LABEL_46:
    theArray = 0;
    FigRoutingManagerContextUtilities_CopyPickedEndpoints(v17, &theArray);
    allocator = *v18;
    Mutable = CFArrayCreateMutable(*v18, 0, MEMORY[0x1E695E9C0]);
    v32 = Mutable;
    if (v9)
    {
      CFArrayAppendValue(Mutable, v9);
    }

    v33 = FigCFEqual();
    if (v32)
    {
      CFRelease(v32);
    }

    if (!v33)
    {
      goto LABEL_95;
    }

    if (FigRoutingManagerContextUtilities_GetContextType(v17) != 1)
    {
LABEL_94:
      FigRoutingManagerContextUtilities_PostNoOpRouteConfigUpdatedToClientsOfContextWithUUIDAndItsFollowers(v17, v21, a4);
      v14 = 0;
      goto LABEL_140;
    }

    v98 = v21;
    v100 = a4;
    v34 = CMSMUtility_CopyCurrentRouteIdentifiers();
    NumberOfCurrentOutputPorts = CMSMUtility_GetNumberOfCurrentOutputPorts();
    if (theArray)
    {
      v36 = CFArrayGetCount(theArray);
      v37 = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
      if (v36 >= 1)
      {
        v96 = a1;
        v38 = a3;
        v39 = 0;
        v40 = *MEMORY[0x1E69620F8];
        do
        {
          CFArrayGetValueAtIndex(theArray, v39);
          value[0] = 0;
          v41 = FigEndpointGetCMBaseObject();
          v42 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v42)
          {
            v42(v41, v40, allocator, value);
          }

          if (value[0])
          {
            CFArrayAppendValue(v37, value[0]);
            if (value[0])
            {
              CFRelease(value[0]);
            }
          }

          ++v39;
        }

        while (v36 != v39);
        a3 = v38;
        a1 = v96;
      }
    }

    else
    {
      v37 = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
    }

    if (FigCFEqual())
    {
      v43 = 0;
      LODWORD(v44) = 0;
      v45 = 1;
      goto LABEL_87;
    }

    v95 = a3;
    v97 = a1;
    v46 = NumberOfCurrentOutputPorts;
    v103 = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
    if (NumberOfCurrentOutputPorts)
    {
      v47 = 0;
      v48 = *MEMORY[0x1E69618F8];
      v102 = *MEMORY[0x1E69618D0];
      do
      {
        v49 = CFArrayGetValueAtIndex(v34, v47);
        v50 = FigRoutingManagerCopyEndpointWithDeviceID(v49, 0, v48, v17);
        if (v50)
        {
          v51 = v50;
          value[0] = 0;
          v52 = FigEndpointGetCMBaseObject();
          v53 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v53)
          {
            v53(v52, 0x1F289CEF0, allocator, value);
          }

          PortFromCFNumber = CMSMVAUtility_GetPortFromCFNumber(value[0]);
          if (PortFromCFNumber == 1885433971 || PortFromCFNumber == 1885433953)
          {
            CFRelease(v51);
            v51 = FigRoutingManagerCopyEndpointWithDeviceID(v49, 1, v102, v17);
          }

          if (value[0])
          {
            CFRelease(value[0]);
          }

          if (v51)
          {
            CFArrayAppendValue(v103, v51);
            CFRelease(v51);
          }
        }

        ++v47;
      }

      while (v46 != v47);
    }

    v43 = v103;
    if (v103)
    {
      if (!FigCFEqual())
      {
        v44 = FigEndpointDescriptorUtility_CopyDescriptorsForEndpoints(v103, 0);
        FigRoutingManagerContextUtilities_SetPickedEndpoints(v17, v103, 0, 0, v44);
        if (dword_1EB75DF20)
        {
          *v112 = 0;
          LOBYTE(cf) = 0;
          v85 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v86 = *v112;
          if (os_log_type_enabled(v85, cf))
          {
            v87 = v86;
          }

          else
          {
            v87 = v86 & 0xFFFFFFFE;
          }

          if (v87)
          {
            *v116 = 136315138;
            *&v116[4] = "mxSystemAudio_preprocessPickEndpoint";
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v43 = v103;
        }

        a3 = v95;
        a1 = v97;
        if (v44)
        {
          CFRelease(v44);
          v45 = 0;
          LODWORD(v44) = 0;
        }

        else
        {
          v45 = 0;
        }

LABEL_87:
        if (v37)
        {
          CFRelease(v37);
        }

        if (v34)
        {
          CFRelease(v34);
        }

        v21 = v98;
        if ((v45 & 1) == 0)
        {
          CFRelease(v43);
        }

        a4 = v100;
        if (v44)
        {
          goto LABEL_94;
        }

LABEL_95:
        FigRoutingManagerContextUtilities_SetPickingState(v17, 1);
        FigRoutingManagerContextUtilities_AddCurrentlyActivatingEndpoint(a1, v17, v9, v21, a4);
        if (!v9)
        {
          if (FigRoutingManagerContextUtilities_GetContextType(v17) == 1)
          {
            v14 = 4294954296;
          }

          else
          {
            v14 = mxSystemAudio_processPickEndpoint(0, v17, v21, a4);
          }

LABEL_140:
          v56 = theArray;
          if (theArray)
          {
            CFRelease(theArray);
          }

          goto LABEL_142;
        }

        *v112 = 0;
        v57 = *MEMORY[0x1E69626D8];
        if (FigRoutingManagerIsEndpointOfType(v9))
        {
          v58 = FigEndpointGetCMBaseObject();
          v59 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v59)
          {
            v59(v58, 0x1F289D050, allocator, v112);
          }
        }

        v60 = *MEMORY[0x1E69626A8];
        if (!FigRoutingManagerIsEndpointOfType(v9) && (!FigRoutingManagerIsEndpointOfType(v9) || !FigCFEqual()))
        {
          if (FigRoutingManagerIsEndpointOfType(v9) || (v67 = *MEMORY[0x1E69626B8], FigRoutingManagerIsEndpointOfType(v9)))
          {
            v14 = mxSystemAudio_processPickEndpoint(v9, v17, v21, a4);
          }

          else
          {
            v14 = 0;
          }

LABEL_138:
          if (*v112)
          {
            CFRelease(*v112);
          }

          goto LABEL_140;
        }

        v110 = 0;
        cf = 0;
        FigRoutingManagerUtilities_CopyCurrentlyPickedAirPlayEndpoint(&v110, &cf, 0);
        v61 = FigRoutingManagerContextUtilities_GetContextType(cf);
        IsMirroringScreenAudioSeperateFunctionalityAllowed = MXSystemMirroring_IsMirroringScreenAudioSeperateFunctionalityAllowed();
        v63 = v110;
        if (IsMirroringScreenAudioSeperateFunctionalityAllowed && v110 && v61 == 2)
        {
          if (FigCFEqual())
          {
            if (dword_1EB75DF20)
            {
              LODWORD(v109) = 0;
              v108[0] = OS_LOG_TYPE_DEFAULT;
              v64 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v65 = v109;
              if (os_log_type_enabled(v64, v108[0]))
              {
                v66 = v65;
              }

              else
              {
                v66 = v65 & 0xFFFFFFFE;
              }

              if (v66)
              {
                *v116 = 136315394;
                *&v116[4] = "mxSystemAudio_preprocessPickEndpoint";
                v117 = 2114;
                v118 = v115;
                _os_log_send_and_compose_impl();
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            value[0] = 0;
            FigRoutingManagerContextUtilities_GetActivationSeedForEndpoint(v17, v9, value);
            FigEndpointFeatures = FigRoutingManagerGetFigEndpointFeatures(v9, v17);
            MXSystemMirroring_iOSHandleEndpointAudioActivation(v9, FigEndpointFeatures, value[0], v17, a3);
            FigRoutingContextUtilities_LogCurrentState(v89, v90);
            if (theArray)
            {
              CFRelease(theArray);
              theArray = 0;
            }

            if (v21)
            {
              CFRelease(v21);
            }

            if (v115)
            {
              CFRelease(v115);
              v115 = 0;
            }

            if (*type)
            {
              CFRelease(*type);
            }

            v14 = 0;
            goto LABEL_148;
          }

          v99 = v21;
          v101 = a4;
          v63 = v110;
        }

        else
        {
          v99 = v21;
          v101 = a4;
        }

        if (!v63 || FigRoutingManagerUtilities_IsCurrentRouteHandoff())
        {
          value[0] = 0;
          *v116 = 0;
          FigRoutingManagerCopyAirPlayEndpointsInUseForFeatures(-1, value, v116, 0, 0);
          if (value[0])
          {
            v68 = CFArrayGetCount(value[0]);
            if (v68 >= 1)
            {
              v69 = v68;
              v70 = 0;
              v104 = *MEMORY[0x1E69617E8];
              v71 = *MEMORY[0x1E69617F8];
              do
              {
                v72 = CFArrayGetValueAtIndex(value[0], v70);
                v73 = CFArrayGetValueAtIndex(*v116, v70);
                if (v72 != v9 || v73 != v17)
                {
                  v75 = v73;
                  v76 = FigRoutingManagerGetFigEndpointFeatures(v72, v73);
                  v77 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                  FigCFDictionarySetValue();
                  v109 = 0;
                  FigRoutingManagerCreateEndpointDeactivateCompletionContext(v75, &v109);
                  FigRoutingManagerLogEndpointID(@"Preprocess - Calling to deactivate endpoint with name=", v72, 0, 1);
                  FigRoutingManagerContextUtilities_ResetCurrentlyActivatingEndpointInfo(v75, v72, @"configUpdateReasonEndedUserCancelled");
                  FigRoutingManagerEndpointDeactivateWithCompletionCallback(v72, v76, v77, FigRoutingManager_iOSEndpointDeactivateCompletionCallback, v109);
                  if (v77)
                  {
                    CFRelease(v77);
                  }
                }

                ++v70;
              }

              while (v69 != v70);
            }
          }

          v21 = v99;
          v14 = mxSystemAudio_processPickEndpoint(v9, v17, v99, v101);
          if (value[0])
          {
            CFRelease(value[0]);
            value[0] = 0;
          }

          v78 = *v116;
          if (!*v116)
          {
            goto LABEL_136;
          }

          goto LABEL_135;
        }

        FigRoutingManagerContextUtilities_SetPickingState(v17, 2);
        CMSMAP_MakeAirPlayHandOffPortRoutable(1, v17);
        v109 = 0;
        FigEndpointCopyProperty(v110, *MEMORY[0x1E69621E8], allocator, &v109);
        if (FigRoutingManagerIsEndpointOfType(v110))
        {
          v21 = v99;
          v81 = v101;
          if (dword_1EB75DF20)
          {
            *v108 = 0;
            v107 = OS_LOG_TYPE_DEFAULT;
            v82 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v83 = *v108;
            if (os_log_type_enabled(v82, v107))
            {
              v84 = v83;
            }

            else
            {
              v84 = v83 & 0xFFFFFFFE;
            }

            if (v84)
            {
              *v116 = 136315650;
              *&v116[4] = "mxSystemAudio_preprocessPickEndpoint";
              v117 = 2114;
              v118 = v109;
              v119 = 2114;
              v120 = v115;
              _os_log_send_and_compose_impl();
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          value[0] = 0;
          FigRoutingManagerContextUtilities_GetActivationSeedForEndpoint(cf, v110, value);
          FigRoutingManager_iOSDeactivateEndpoint(v110, value[0], 1);
          if (v61 == 1)
          {
LABEL_195:
            v14 = mxSystemAudio_processPickEndpoint(v9, v17, v21, v81);
            v78 = v109;
            if (!v109)
            {
LABEL_136:
              if (cf)
              {
                CFRelease(cf);
              }

              goto LABEL_138;
            }

LABEL_135:
            CFRelease(v78);
            goto LABEL_136;
          }
        }

        else
        {
          v91 = *MEMORY[0x1E69626B0];
          v21 = v99;
          v81 = v101;
          if (!FigRoutingManagerIsEndpointOfType(v110))
          {
            goto LABEL_195;
          }

          if (dword_1EB75DF20)
          {
            *v108 = 0;
            v107 = OS_LOG_TYPE_DEFAULT;
            v92 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v93 = *v108;
            if (os_log_type_enabled(v92, v107))
            {
              v94 = v93;
            }

            else
            {
              v94 = v93 & 0xFFFFFFFE;
            }

            if (v94)
            {
              *v116 = 136315394;
              *&v116[4] = "mxSystemAudio_preprocessPickEndpoint";
              v117 = 2114;
              v118 = v115;
              _os_log_send_and_compose_impl();
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          FigRoutingManagerRemoveAllSubEndpointsFromAggregate(v110, cf, 0, 0, FigRoutingManagerAggregateRemoveEndpointCompletionCallback);
          CMSMVAUtility_DestroyMusicVADIfNeeded(cf);
        }

        FigRoutingManagerContextUtilities_SetPickedEndpoints(cf, 0, @"configUpdateReasonEndedBottomUpRouteChange", 0, 0);
        goto LABEL_195;
      }

      v45 = 0;
      LODWORD(v44) = 1;
    }

    else
    {
      LODWORD(v44) = 0;
      v45 = 1;
    }

    a3 = v95;
    a1 = v97;
    goto LABEL_87;
  }

  v27 = 0;
LABEL_40:
  if (dword_1EB75DF20)
  {
    LODWORD(theArray) = 0;
    v112[0] = OS_LOG_TYPE_DEFAULT;
    v28 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v29 = theArray;
    if (os_log_type_enabled(v28, v112[0]))
    {
      v30 = v29;
    }

    else
    {
      v30 = v29 & 0xFFFFFFFE;
    }

    if (v30)
    {
      *v116 = 136315394;
      *&v116[4] = "mxSystemAudio_preprocessPickEndpoint";
      v117 = 2114;
      v118 = v115;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  value[0] = 0;
  FigRoutingManagerContextUtilities_CopyCurrentlyActivatingEndpointInfoAtIndex(v17, v27, value);
  FigRoutingManagerContextUtilities_RemoveCurrentlyActivatingEndpointInfoAtIndex(v17, v27);
  FigRoutingManagerContextUtilities_AppendCurrentlyActivatingEndpointInfo(v17, value[0]);
  FigRoutingManagerContextUtilities_PostNoOpRouteConfigUpdatedToClientsOfContextWithUUIDAndItsFollowers(v17, v21, a4);
  v56 = value[0];
  if (value[0])
  {
    CFRelease(value[0]);
  }

  v14 = 0;
LABEL_142:
  FigRoutingContextUtilities_LogCurrentState(v56, v55);
  if (v21)
  {
    CFRelease(v21);
  }

  if (v115)
  {
    CFRelease(v115);
    v115 = 0;
  }

  if (*type)
  {
    CFRelease(*type);
  }

LABEL_148:
  if (v106)
  {
    CFRelease(v106);
  }

LABEL_150:
  if (v9)
  {
    CFRelease(v9);
  }

  v79 = *MEMORY[0x1E69E9840];
  return v14;
}

uint64_t FigEndpointCopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CMBaseObject = FigEndpointGetCMBaseObject();
  VTable = CMBaseObjectGetVTable();
  v10 = *(VTable + 8);
  result = VTable + 8;
  v11 = *(v10 + 48);
  if (v11)
  {

    return v11(CMBaseObject, a2, a3, a4);
  }

  return result;
}

uint64_t mxSystemAudio_processPickEndpoint(const void *a1, const void *a2, const __CFDictionary *a3, const void *a4)
{
  ContextType = FigRoutingManagerContextUtilities_SetPickingState(a2, 3);
  v10 = ContextType;
  if (a1)
  {
    if (!ContextType)
    {
      ContextType = FigRoutingManager_iOSActivateEndpoint(a1, a2, a3, a4);
      v10 = ContextType;
    }
  }

  else
  {
    ContextType = FigRoutingManagerContextUtilities_GetContextType(a2);
    if (ContextType)
    {
      cf = 0;
      ContextType = FigRoutingManagerContextUtilities_CopyPickedEndpointAtIndex(a2, 0, &cf);
      if (cf)
      {
        FigRoutingManagerContextUtilities_SetPickedEndpoints(a2, 0, @"configUpdateReasonEndedSuccess", a3, 0);
        v13 = 0;
        FigRoutingManagerContextUtilities_GetActivationSeedForEndpoint(a2, cf, &v13);
        v11 = *MEMORY[0x1E69626A8];
        if (FigRoutingManagerIsEndpointOfType(cf))
        {
          FigRoutingManagerLogEndpointID(@"Going to deactivate endpoint with name=", cf, @"because user selected NULL", 1);
          FigRoutingManager_iOSDeactivateEndpoint(cf, v13, 1);
        }

        ContextType = cf;
        if (cf)
        {
          CFRelease(cf);
        }
      }
    }
  }

  FigRoutingContextUtilities_LogCurrentState(ContextType, v9);
  return v10;
}

void sub_1B185C548(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B185CF78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t CMSMStrings_Check()
{
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();

  return FigCFEqual();
}

void sub_1B1861584(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak((v24 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFDictionary *FVIOKit_CreateIntensityDictionary(float a1)
{
  valuePtr = vcvts_n_s32_f32(a1, 0x10uLL);
  v1 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v3 = CFNumberCreate(v1, kCFNumberSInt32Type, &valuePtr);
  v4 = v3;
  if (Mutable)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    CFDictionarySetValue(Mutable, @"intensity", v3);
LABEL_9:
    CFRelease(v4);
    return Mutable;
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  Mutable = 0;
  result = 0;
  if (v4)
  {
    goto LABEL_9;
  }

  return result;
}

__CFArray *FVIOKit_VibePatternArrayCreateDefault(float a1)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 4, MEMORY[0x1E695E9C0]);
  IntensityDictionary = FVIOKit_CreateIntensityDictionary(a1);
  v4 = IntensityDictionary;
  if (Mutable)
  {
    v5 = IntensityDictionary == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    CFArrayAppendValue(Mutable, IntensityDictionary);
    CFArrayAppendValue(Mutable, *MEMORY[0x1E695E4D0]);
    v7 = *MEMORY[0x1E695E4C0];
    CFArrayAppendValue(Mutable, *MEMORY[0x1E695E4C0]);
    CFArrayAppendValue(Mutable, v7);
LABEL_9:
    CFRelease(v4);
    return Mutable;
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  Mutable = 0;
  result = 0;
  if (v4)
  {
    goto LABEL_9;
  }

  return result;
}

CMTimeValue FVIOKit_ConvertFigTimeToMillisec(CMTime *a1)
{
  memset(&v3, 0, sizeof(v3));
  v2 = *a1;
  CMTimeConvertScale(&v3, &v2, 1000, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
  if ((v3.flags & 0x1D) != 1)
  {
    return 0;
  }

  if ((v3.value & ~(v3.value >> 63)) >= 0x7FFFFFFF)
  {
    return 0x7FFFFFFFLL;
  }

  return v3.value & ~(v3.value >> 63);
}

uint64_t FVIOKit_StartIOServiceVibration(uint64_t a1, int a2, int a3, int a4, float a5)
{
  if (!*(a1 + 24))
  {
    FVIOKit_StartIOServiceVibration_cold_5(&v21);
    return v21;
  }

  if (a2 <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = a2;
  }

  if (a3 <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = a3;
  }

  v19 = v7;
  valuePtr = v6;
  if (!*(a1 + 32))
  {
    FVIOKit_StartIOServiceVibration_cold_4(&v21);
    return v21;
  }

  Default = FVIOKit_VibePatternArrayCreateDefault(a5);
  if (!Default)
  {
    FVIOKit_StartIOServiceVibration_cold_3(&v21);
    return v21;
  }

  v10 = Default;
  CFDictionarySetValue(*(a1 + 32), @"hertz_millisecs", Default);
  v11 = *MEMORY[0x1E695E480];
  v12 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
  if (v12)
  {
    v13 = v12;
    CFArraySetValueAtIndex(v10, 1, v12);
    CFRelease(v13);
    v14 = CFNumberCreate(v11, kCFNumberIntType, &v19);
    if (v14)
    {
      v15 = v14;
      CFArraySetValueAtIndex(v10, 3, v14);
      CFRelease(v15);
      v16 = MEMORY[0x1E695E4C0];
      if (a4)
      {
        v16 = MEMORY[0x1E695E4D0];
      }

      CFDictionarySetValue(*(a1 + 32), @"repeat", *v16);
      if (*(a1 + 20))
      {
        notify_set_state(*(a1 + 16), 1uLL);
        notify_post("com.apple.coremedia.vibration");
      }

      FigVibratorPostNotification(@"VibeWillStart");
      IORegistryEntrySetCFProperties(*(a1 + 24), *(a1 + 32));
      v17 = 0;
      goto LABEL_17;
    }

    FVIOKit_StartIOServiceVibration_cold_1(&v21);
  }

  else
  {
    FVIOKit_StartIOServiceVibration_cold_2(&v21);
  }

  v17 = v21;
LABEL_17:
  CFRelease(v10);
  return v17;
}

uint64_t FVIOKit_StartIOServiceVibrationWithPattern(uint64_t a1, void *value)
{
  if (value)
  {
    if (*(a1 + 24))
    {
      v3 = *(a1 + 32);
      if (v3)
      {
        CFDictionarySetValue(v3, @"hertz_millisecs", value);
        CFDictionarySetValue(*(a1 + 32), @"repeat", *MEMORY[0x1E695E4C0]);
        if (*(a1 + 20))
        {
          notify_set_state(*(a1 + 16), 1uLL);
          notify_post("com.apple.coremedia.vibration");
        }

        FigVibratorPostNotification(@"VibeWillStart");
        IORegistryEntrySetCFProperties(*(a1 + 24), *(a1 + 32));
        return 0;
      }

      else
      {
        FVIOKit_StartIOServiceVibrationWithPattern_cold_1(&v5);
        return v5;
      }
    }

    else
    {
      FVIOKit_StartIOServiceVibrationWithPattern_cold_2(&v6);
      return v6;
    }
  }

  else
  {
    FVIOKit_StartIOServiceVibrationWithPattern_cold_3(&v7);
    return v7;
  }
}

const void *FVIOKit_StopVibrator(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    IORegistryEntrySetCFProperties(v2, *(a1 + 40));
    if (*(a1 + 20))
    {
      notify_set_state(*(a1 + 16), 0);
      notify_post("com.apple.coremedia.vibration");
    }

    FigVibratorPostNotification(@"VibeWillStop");
    if (*(a1 + 112) && *(a1 + 120))
    {
      v3 = CFDictionaryCreate(*MEMORY[0x1E695E480], kFigVibratorNotificationKey_VibeStopped_Context, (a1 + 120), 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v4 = *(a1 + 8);
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __FVIOKit_StopVibrator_block_invoke;
      v6[3] = &__block_descriptor_48_e5_v8__0l;
      v6[4] = a1;
      v6[5] = v3;
      MXDispatchAsync("FVIOKit_StopVibrator", "FigVibrator_IOKit.m", 250, 0, 0, v4, v6);
      result = *(a1 + 120);
      if (result)
      {
        CFRelease(result);
        result = 0;
        *(a1 + 120) = 0;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    FVIOKit_StopVibrator_cold_1(&v7);
    return v7;
  }

  return result;
}

const __CFDictionary *FVIOKit_GetVibrationPatternFromDictionary(const __CFDictionary *result, int *a2, float *a3, float *a4, float *a5, const __CFDictionary **a6, char *a7, char *a8)
{
  valuePtr = 0x3ECCCCCD3DCCCCCDLL;
  v31 = 0.85;
  v32 = 0.5;
  v30 = 1056964608;
  if (result)
  {
    v14 = result;
    v29 = a6;
    Value = CFDictionaryGetValue(result, @"Intensity");
    result = CFDictionaryGetValue(v14, @"VibePattern");
    v16 = result;
    if (result)
    {
      v17 = 0;
      v18 = 0;
      valuePtr = 0;
      v19 = 0.0;
      v32 = 0.0;
      v20 = 0.0;
      v21 = 0;
      v30 = 0;
    }

    else
    {
      v27 = a7;
      v28 = a8;
      v23 = CFDictionaryGetValue(v14, @"OnDuration");
      v24 = CFDictionaryGetValue(v14, @"OffDuration");
      v25 = CFDictionaryGetValue(v14, @"Period");
      result = CFDictionaryGetValue(v14, @"TotalDuration");
      v18 = result;
      v19 = 0.5;
      v21 = 1053609165;
      if (v23 && v24 | v25)
      {
        result = CFNumberGetValue(v23, kCFNumberFloatType, &valuePtr + 4);
        if (v24)
        {
          result = CFNumberGetValue(v24, kCFNumberFloatType, &valuePtr);
        }

        a8 = v28;
        if (v25)
        {
          result = CFNumberGetValue(v25, kCFNumberFloatType, &v32);
          v21 = HIDWORD(valuePtr);
          v17 = 1;
          v20 = v32;
        }

        else
        {
          v21 = HIDWORD(valuePtr);
          v20 = *(&valuePtr + 1) + *&valuePtr;
          v32 = *(&valuePtr + 1) + *&valuePtr;
          v17 = 1;
        }
      }

      else
      {
        v17 = 0;
        v20 = 0.5;
        a8 = v28;
      }

      a7 = v27;
    }

    *a2 = v21;
    *a3 = v20;
    if (Value)
    {
      result = CFNumberGetValue(Value, kCFNumberFloatType, &v31);
      v26 = v31;
      if (v31 <= 1.0)
      {
        if (v31 < 0.0)
        {
          v31 = 0.0;
          v26 = 0.0;
        }
      }

      else
      {
        v31 = 1.0;
        v26 = 1.0;
      }
    }

    else
    {
      v26 = 0.85;
    }

    *a5 = v26;
    if (v18)
    {
      result = CFNumberGetValue(v18, kCFNumberFloatType, &v30);
      v22 = 1;
      v19 = *&v30;
    }

    else
    {
      v22 = 0;
    }

    a6 = v29;
  }

  else
  {
    v17 = 0;
    v16 = 0;
    v22 = 0;
    *a2 = 1053609165;
    *a3 = 0.5;
    v19 = 0.5;
    *a5 = 0.85;
  }

  *a4 = v19;
  *a7 = v17;
  *a8 = v22;
  *a6 = v16;
  return result;
}

uint64_t OUTLINED_FUNCTION_17_1(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int valuePtr)
{
  valuePtr = 0;

  return CFNumberGetValue(v11, kCFNumberSInt32Type, &valuePtr);
}

uint64_t remoteXPCStarkModeController_DeadConnectionCallback()
{
  result = CMBaseObjectGetDerivedStorage();
  *(result + 8) = 1;
  return result;
}

uint64_t remoteFigStarkModeController_Finalize()
{
  v8 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *DerivedStorage;
  if (dword_1EB75E1F8)
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

uint64_t remoteFigStarkModeController_CopyDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = CFGetRetainCount(a1);
  v5 = *DerivedStorage;
  if (*(DerivedStorage + 8))
  {
    v6 = " SERVER DIED";
  }

  else
  {
    v6 = "";
  }

  return [v3 initWithFormat:@"<FigStarkModeControllerRemote %p retainCount: %ld objectID: %016llx%s>", a1, v4, *DerivedStorage, v6];
}

void __mxsmInteruptionActionMapper_setUpInterruptionPriorityDictionaries_block_invoke()
{
  CelestialGetModelSpecificName();
  v0 = CelestialCFCreatePropertyListForModelAndBundleIdentifier();
  if (v0)
  {
    v1 = v0;
    v2 = [v0 objectForKey:@"AudioCategoryMap"];
    v3 = [v1 objectForKey:@"InterruptionPriorityMap"];

    sCategoryToCategoryMapForTriangle = v2;
    sCategoryToPriorityMapForTriangle = v3;
  }

  CelestialGetModelSpecificName();
  v4 = CelestialCFCreatePropertyListForModelAndBundleIdentifier();
  if (v4)
  {
    v7 = v4;
    v5 = [v4 objectForKey:@"AudioCategoryMap"];
    v6 = [v7 objectForKey:@"InterruptionPriorityMap"];

    sCategoryToCategoryMapForTipi = v5;
    sCategoryToPriorityMapForTipi = v6;
  }
}

void sub_1B1868B9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id location)
{
  objc_destroyWeak((v27 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void FigRoutingManager_iOSEndpointActivateCompletionCallback(const void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  SharedManager = FigRoutingManagerGetSharedManager();
  if (a5)
  {
    v11 = *a5;
    v12 = *(a5 + 8);
    [*(a5 + 32) timeIntervalSinceNow];
  }

  else
  {
    v12 = 0;
    v11 = 0;
    [0 timeIntervalSinceNow];
  }

  v14 = v13;
  if (a1)
  {
    CFRetain(a1);
  }

  if (v11)
  {
    CFRetain(v11);
  }

  if (v12)
  {
    CFRetain(v12);
  }

  if (v18)
  {
    CFRetain(v18);
  }

  v15 = fabs(v14) * 1000.0;
  v16 = objc_alloc_init(MEMORY[0x1E695DF00]);
  v17 = *(SharedManager + 1);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __FigRoutingManager_iOSEndpointActivateCompletionCallback_block_invoke;
  v19[3] = &unk_1E7AEA460;
  v19[4] = v16;
  v19[5] = a1;
  v22 = a4;
  v19[6] = a3;
  v19[7] = a2;
  v23 = v15;
  v19[8] = v12;
  v19[9] = v11;
  v20 = v18;
  v21 = a5;
  MXDispatchAsync("FigRoutingManager_iOSEndpointActivateCompletionCallback", "FigRoutingManager_iOSEndpointHelpers.m", 153, 0, 0, v17, v19);
}

uint64_t FigRoutingManagerRegisterForFigEndpointNotifications(uint64_t result)
{
  if (!result)
  {
    return result;
  }

  v1 = result;
  v2 = *MEMORY[0x1E69626C8];
  if (FigRoutingManagerIsEndpointOfType(result))
  {
    v3 = *MEMORY[0x1E69626A8];
LABEL_7:
    if (FigRoutingManagerIsEndpointOfType(v1))
    {
      FigRoutingManagerGetSharedManager();
      CMNotificationCenterGetDefaultLocalCenter();
      v9 = *MEMORY[0x1E69619D0];
      CMNotificationCenterAddListener();
      routingManager_handleAirPlayVolumeControlDidChange();
    }

    FigRoutingManagerGetSharedManager();
    CMNotificationCenterGetDefaultLocalCenter();
    v10 = *MEMORY[0x1E69619B0];
    CMNotificationCenterAddListener();
    goto LABEL_10;
  }

  v4 = *MEMORY[0x1E69626B0];
  IsEndpointOfType = FigRoutingManagerIsEndpointOfType(v1);
  v6 = *MEMORY[0x1E69626A8];
  if (IsEndpointOfType)
  {
    goto LABEL_7;
  }

  v7 = *MEMORY[0x1E69626A8];
  if (FigRoutingManagerIsEndpointOfType(v1))
  {
    goto LABEL_7;
  }

  v8 = *MEMORY[0x1E69626C0];
  if (FigRoutingManagerIsEndpointOfType(v1))
  {
    goto LABEL_7;
  }

LABEL_10:
  result = FigRoutingManagerIsEndpointOfType(v1);
  if (!result)
  {
    v11 = *MEMORY[0x1E69626B0];
    result = FigRoutingManagerIsEndpointOfType(v1);
    if (!result)
    {
      FigRoutingManagerGetSharedManager();
      CMNotificationCenterGetDefaultLocalCenter();
      v12 = *MEMORY[0x1E6961960];
      CMNotificationCenterAddListener();
      FigRoutingManagerGetSharedManager();
      CMNotificationCenterGetDefaultLocalCenter();
      v13 = *MEMORY[0x1E6961950];
      CMNotificationCenterAddListener();
      FigRoutingManagerGetSharedManager();
      CMNotificationCenterGetDefaultLocalCenter();
      v14 = *MEMORY[0x1E6961970];

      return CMNotificationCenterAddListener();
    }
  }

  return result;
}

void FigRoutingManager_iOSHandleFigEndpointFeaturesActivation(void *a1, char a2, uint64_t a3, const void *a4, uint64_t a5)
{
  if (a1)
  {
    if ((a2 & 2) != 0)
    {
      if (!MXSystemMirroring_IsMirroringScreenAudioSeperateFunctionalityAllowed() || !MXSystemMirroring_IsDefaultRouteAirPlayReceiver())
      {
        goto LABEL_8;
      }

      cf = 0;
      FigRoutingManagerContextUtilities_CopySystemMirroringContextUUID(&cf);
      IsRoutedToLocalAirplayReceiver = FigRoutingManagerContextUtilities_IsRoutedToLocalAirplayReceiver(cf);
      if (cf)
      {
        CFRelease(cf);
      }

      if (IsRoutedToLocalAirplayReceiver)
      {
LABEL_8:
        FigRoutingManagerHandleEndpointAudioActivation(a1, v10, a3, a4, a5);
      }
    }

    if (a2)
    {
      FigRoutingManagerHandleEndpointScreenActivation(a1, a4, a5);
    }

    if ((a2 & 4) != 0)
    {
      FigRoutingManagerHandleEndpointPlaybackActivation(a1, a4, a5);
      v12 = *MEMORY[0x1E69626C0];
      if (FigRoutingManagerIsEndpointOfType(a1))
      {
        CMBaseObject = FigEndpointGetCMBaseObject();
        VTable = CMBaseObjectGetVTable();
        v15 = *(*(VTable + 8) + 56);
        if (v15)
        {
          v16 = *(VTable + 8) + 56;
          v15(CMBaseObject, *MEMORY[0x1E6962118], *MEMORY[0x1E695E4D0]);
        }

        CMNotificationCenterGetDefaultLocalCenter();
        v17 = *MEMORY[0x1E6961968];
        CMNotificationCenterPostNotification();
      }
    }

    if ((a2 & 0x10) != 0)
    {
      FigRoutingManagerHandleEndpointControlActivation(a1, a4, a5);
    }
  }
}

uint64_t FigRoutingManager_iOSDeactivateEndpoint(const void *a1, uint64_t a2, int a3)
{
  v30[16] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v8 = 4294954315;
    goto LABEL_19;
  }

  v6 = *MEMORY[0x1E69626B0];
  if (FigRoutingManagerIsEndpointOfType(a1))
  {
    if (dword_1EB75DF20)
    {
      LODWORD(cf) = 0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v8 = 0;
    goto LABEL_19;
  }

  SharedManager = FigRoutingManagerGetSharedManager();
  cf = 0;
  v10 = *MEMORY[0x1E695E480];
  CMBaseObject = FigEndpointGetCMBaseObject();
  v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v12)
  {
    v12(CMBaseObject, *MEMORY[0x1E69621E8], v10, &cf);
  }

  if (dword_1EB75DF20)
  {
    *type = 0;
    v27 = OS_LOG_TYPE_DEFAULT;
    v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  v30[0] = 0;
  v14 = FigEndpointGetCMBaseObject();
  v15 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v15)
  {
    v15(v14, *MEMORY[0x1E6962100], v10, v30);
    v16 = v30[0];
  }

  else
  {
    v16 = 0;
  }

  if (v16 != *MEMORY[0x1E695E4D0])
  {
    v8 = 0;
    if (!v16)
    {
      goto LABEL_19;
    }

LABEL_18:
    CFRelease(v16);
    goto LABEL_19;
  }

  CFRetain(a1);
  v19 = *(SharedManager + 1);
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __FigRoutingManager_iOSDeactivateEndpoint_block_invoke;
  v26[3] = &__block_descriptor_40_e5_v8__0l;
  v26[4] = a1;
  MXDispatchAsync("FigRoutingManager_iOSDeactivateEndpoint", "FigRoutingManager_iOSEndpointHelpers.m", 1127, 0, 0, v19, v26);
  v29 = 0;
  FigRoutingManagerContextUtilities_CopyRoutingContextUUIDForActivatedEndpoint(a1, a2, &v29);
  FigEndpointFeatures = FigRoutingManagerGetFigEndpointFeatures(a1, v29);
  Mutable = CFDictionaryCreateMutable(v10, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v22 = *MEMORY[0x1E69617E8];
  v23 = *MEMORY[0x1E69617F8];
  if (a3)
  {
    v24 = *MEMORY[0x1E69617F8];
  }

  FigCFDictionarySetValue();
  FigRoutingManagerUnregisterFromFigEndpointNotifications(a1);
  *type = 0;
  FigRoutingManagerCreateEndpointDeactivateCompletionContext(v29, type);
  v8 = FigRoutingManagerEndpointDeactivateWithCompletionCallback(a1, FigEndpointFeatures, Mutable, FigRoutingManager_iOSEndpointDeactivateCompletionCallback, *type);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v29)
  {
    CFRelease(v29);
  }

  v16 = v30[0];
  if (v30[0])
  {
    goto LABEL_18;
  }

LABEL_19:
  v17 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t FigRoutingManager_iOSHandleEndpointActivationError(uint64_t a1, char a2, int a3, uint64_t a4, uint64_t a5)
{
  cf[21] = *MEMORY[0x1E69E9840];
  if (dword_1EB75DF20)
  {
    LODWORD(cf[0]) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (a3 > -15583)
  {
    if ((a3 + 15582) >= 2)
    {
      if (!a3)
      {
        goto LABEL_45;
      }

      if (a3 != 200453)
      {
LABEL_15:
        FigRoutingManager_HandleEndpointFailed(a1, a3, a4, 0);
        goto LABEL_16;
      }
    }
  }

  else
  {
    v11 = &kFigRoutingContextNotificationPayloadValue_ConfigUpdateReasonEndedUserCancelled;
    if (a3 > -17602)
    {
      if (a3 == -17601)
      {
LABEL_16:
        v11 = &kFigRoutingContextNotificationPayloadValue_ConfigUpdateReasonEndedFailed;
        goto LABEL_30;
      }

      if (a3 == -17600)
      {
        v11 = &kFigRoutingContextNotificationPayloadValue_ConfigUpdateReasonEndedUnauthorizedNoPrompt;
        goto LABEL_30;
      }

      v12 = -16728;
      goto LABEL_14;
    }

    if (a3 != -17608)
    {
      v12 = -17604;
LABEL_14:
      if (a3 == v12)
      {
LABEL_30:
        FigRoutingManagerContextUtilities_ResetCurrentlyActivatingEndpointInfo(a5, a1, *v11);
        if (a2)
        {
          routingManager_resetScreenSettings(a1);
        }

        FigRoutingManagerContextUtilities_SetPickingState(a5, 0);
        goto LABEL_45;
      }

      goto LABEL_15;
    }
  }

  FigRoutingManagerContextUtilities_ResetCurrentlyActivatingEndpointInfo(a5, a1, @"configUpdateReasonEndedFailed");
  FigRoutingManagerContextUtilities_SetPickingState(a5, 0);
  v13 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  cf[0] = 0;
  CMBaseObject = FigEndpointGetCMBaseObject();
  v16 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v16)
  {
    v16(CMBaseObject, *MEMORY[0x1E69620F8], v13, cf);
  }

  *type = 0;
  v17 = FigEndpointGetCMBaseObject();
  v18 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v18)
  {
    v18(v17, *MEMORY[0x1E69621E8], v13, type);
  }

  v19 = FigEndpointDescriptorUtility_CopyDescriptorForEndpoint(a1, 0);
  FigCFDictionarySetValue();
  FigCFDictionarySetValue();
  FigCFDictionarySetValue();
  if (a3 > -15582)
  {
    if (a3 != -15581)
    {
      if (a3 != 200453)
      {
        goto LABEL_37;
      }

      FigCFDictionarySetValue();
      if (!dword_1EB75DF20)
      {
        goto LABEL_37;
      }

      goto LABEL_36;
    }

    FigCFDictionarySetValue();
    if (dword_1EB75DF20)
    {
LABEL_36:
      v20 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  else if (a3 == -17608)
  {
    FigCFDictionarySetValue();
    if (dword_1EB75DF20)
    {
      goto LABEL_36;
    }
  }

  else
  {
    FigCFDictionarySetValue();
    if (dword_1EB75DF20)
    {
      goto LABEL_36;
    }
  }

LABEL_37:
  FigCFDictionaryGetValue();
  FigCFDictionarySetValue();
  FigEndpointUIAgentHelper_ShowError(Mutable);
  if (*type)
  {
    CFRelease(*type);
    *type = 0;
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
    cf[0] = 0;
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

LABEL_45:
  if (FigRoutingManagerUtilities_IsCurrentRouteHandoff())
  {
    CMSMAP_MakeAirPlayHandOffPortRoutable(0, a5);
  }

  FigRoutingManagerRemoveCachedDelegateContext(a1);
  v21 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t FigRoutingManager_iOSHandleStartupFailed(uint64_t result, CFMutableDictionaryRef theDict)
{
  if (!result || !theDict)
  {
    return result;
  }

  if (result <= -15583)
  {
    if (result == -71891)
    {
      v3 = kFigEndpointUIAgentPromptInfo_ReasonStartErrorLowSignal;
      goto LABEL_15;
    }

    if (result == -17608)
    {
      v3 = kFigEndpointUIAgentPromptInfo_ReasonErrorAuthenticationFailed;
      goto LABEL_15;
    }

LABEL_19:
    CFDictionarySetValue(theDict, @"reason", @"startError");
    v4 = *MEMORY[0x1E695E480];
    SInt32 = FigCFNumberCreateSInt32();
    FigCFDictionarySetValue();
    if (SInt32)
    {
      CFRelease(SInt32);
    }

    goto LABEL_16;
  }

  if (result == -15582)
  {
    v3 = kFigEndpointUIAgentPromptInfo_ReasonErrorInfraRelayFailedMultiDFS;
    goto LABEL_15;
  }

  if (result == -15581)
  {
    v3 = kFigEndpointUIAgentPromptInfo_ReasonErrorInfraRelayFailed2G;
    goto LABEL_15;
  }

  if (result != 200453)
  {
    goto LABEL_19;
  }

  v3 = kFigEndpointUIAgentPromptInfo_ReasonErrorHijackFailed;
LABEL_15:
  CFDictionarySetValue(theDict, @"reason", *v3);
LABEL_16:

  return FigEndpointUIAgentHelper_ShowError(theDict);
}

void FigRoutingManagerHandleEndpointAudioActivation(void *a1, uint64_t a2, uint64_t a3, const void *a4, uint64_t a5)
{
  cf[16] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_37;
  }

  v29 = 0;
  v9 = *MEMORY[0x1E695E480];
  CMBaseObject = FigEndpointGetCMBaseObject();
  v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v11)
  {
    v11(CMBaseObject, *MEMORY[0x1E69622F8], v9, &v29);
  }

  v28 = 0;
  v12 = FigEndpointGetCMBaseObject();
  v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v13)
  {
    v13(v12, *MEMORY[0x1E69621E8], v9, &v28);
  }

  if (dword_1EB75DF20)
  {
    LODWORD(v27) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v15 = *MEMORY[0x1E69626A8];
  if (!FigCFEqual())
  {
    v22 = *MEMORY[0x1E69626C0];
    if (FigCFEqual())
    {
      cf[0] = 0;
      if (FigRoutingManagerFindCarPlayMainAudioPortForEndpoint(a1))
      {
        FigRoutingManagerContextUtilities_SetPickingState(a4, 9);
        FigRoutingManagerContextUtilities_ResetCurrentlyActivatingEndpointInfo(a4, a1, @"configUpdateReasonEndedSuccess");
        FigRoutingManagerPostProcessPickEndpoint(a1, a4);
        FigRoutingManagerContextUtilities_SetPickingState(a4, 0);
      }

      else
      {
        FigRoutingManagerContextUtilities_SetPickingState(a4, 8);
        FigRoutingManagerStartCarPlayAudioMainPortPublishingCheckTimer(a1, a4, 5.0);
      }

      if (cf[0])
      {
        CFRelease(cf[0]);
      }
    }

    goto LABEL_33;
  }

  ContextType = FigRoutingManagerContextUtilities_GetContextType(a4);
  if (ContextType <= 6 && ((1 << ContextType) & 0x46) != 0)
  {
    FigRoutingManagerStartDeactivateAirPlayEndpointTimer(a1, a3, 5.0);
    v17 = *MEMORY[0x1E69625E8];
    AirPlayPortForEndpoint = CMSMAP_FindAirPlayPortForEndpoint(a1);
    if (AirPlayPortForEndpoint)
    {
      v19 = AirPlayPortForEndpoint;
      FigRoutingManagerStopDeactivateAirPlayEndpointTimer();
      FigRoutingManagerContextUtilities_SetPickingState(a4, 9);
      FigCFDictionaryGetValue();
      v20 = *MEMORY[0x1E695E4D0];
      if (FigCFEqual())
      {
        if (dword_1EB75DF20)
        {
          LODWORD(v27) = 0;
          v21 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        FigRoutingManagerContextUtilities_SetPickedEndpointAsAnArray(a4, a1, @"configUpdateReasonEndedSuccess", a5);
        FigRoutingManagerPostProcessPickEndpoint(a1, a4);
        FigRoutingManagerContextUtilities_SetPickingState(a4, 0);
        goto LABEL_32;
      }

      if (CMSMVAUtility_MakePortRoutable(v19, a4))
      {
        v27 = 0;
        FigRoutingManagerContextUtilities_CopyPickedEndpoints(a4, &v27);
        v23 = FigEndpointDescriptorUtility_CopyDescriptorsForEndpoints(v27, 0);
        FigRoutingManagerContextUtilities_SetPickedEndpoints(a4, v27, @"configUpdateReasonEndedFailed", a5, v23);
        if (dword_1EB75DF20)
        {
          v24 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        FigRoutingManager_iOSDeactivateEndpoint(a1, a3, 0);
        FigRoutingManagerContextUtilities_SetPickingState(a4, 0);
        if (v23)
        {
          CFRelease(v23);
        }

        v25 = v27;
        if (!v27)
        {
          goto LABEL_32;
        }
      }

      else
      {
        FigRoutingManagerContextUtilities_SetPickedEndpointAsAnArray(a4, a1, @"configUpdateReasonEndedSuccess", a5);
        cf[0] = 0;
        FigRoutingManagerContextUtilities_CopySystemAudioContextUUID(cf);
        FigRoutingManagerContextUtilities_SetPickedEndpointAsAnArray(cf[0], a1, @"configUpdateReasonEndedSuccess", a5);
        FigRoutingManagerPostProcessPickEndpoint(a1, a4);
        FigRoutingManagerContextUtilities_SetPickingState(a4, 0);
        v25 = cf[0];
        if (!cf[0])
        {
          goto LABEL_32;
        }
      }

      CFRelease(v25);
LABEL_32:
      MXSystemMirroring_IsMirroringScreenAudioSeperateFunctionalityAllowed();
      FigRoutingManagerCrossfadePlayback();
      goto LABEL_33;
    }

    FigRoutingManagerContextUtilities_SetPickingState(a4, 8);
  }

LABEL_33:
  if (v28)
  {
    CFRelease(v28);
    v28 = 0;
  }

  if (v29)
  {
    CFRelease(v29);
  }

LABEL_37:
  v26 = *MEMORY[0x1E69E9840];
}

void FigRoutingManagerHandleEndpointScreenActivation(const void *a1, const void *a2, uint64_t a3)
{
  v28[16] = *MEMORY[0x1E69E9840];
  v6 = *MEMORY[0x1E6962178];
  IsPropertyTrue = FigEndpointUtility_EndpointPredicate_IsPropertyTrue();
  v26 = 0;
  v27 = 0;
  v8 = *MEMORY[0x1E695E480];
  CMBaseObject = FigEndpointGetCMBaseObject();
  v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v10)
  {
    v10(CMBaseObject, *MEMORY[0x1E69622F8], v8, &v27);
  }

  v11 = FigEndpointGetCMBaseObject();
  v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v12)
  {
    v12(v11, *MEMORY[0x1E69622F0], v8, &v26);
  }

  CMScreenHandleActivation(v27, v26);
  if (dword_1EB75DF20)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v14 = *MEMORY[0x1E69626C0];
  if (FigRoutingManagerIsEndpointOfType(a1) | IsPropertyTrue)
  {
    if (FigRoutingManagerIsEndpointOfType(a1))
    {
      v15 = CMSMUtility_DoesiOSHaveCarPlayScreen();
      v16 = CMSMUtility_CopyStarkEndpointCentral();
      InitialModesReceived = FigEndpointCentralGetInitialModesReceived();
      if (v15)
      {
        if (InitialModesReceived)
        {
          CMScreenGetScreenState();
          if (!FigCFEqual())
          {
            v25 = *MEMORY[0x1E69625F8];
            FigEndpointCopyFirstStreamOfType();
          }
        }
      }

      if (v16)
      {
        CFRelease(v16);
      }
    }
  }

  else
  {
    v18 = *MEMORY[0x1E69625F8];
    FigEndpointCopyFirstStreamOfType();
  }

  v19 = *MEMORY[0x1E69626C8];
  if (FigRoutingManagerIsEndpointOfType(a1))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    v20 = *MEMORY[0x1E6961968];
    CMNotificationCenterPostNotification();
    v28[0] = 0;
    v21 = FigEndpointGetCMBaseObject();
    v22 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v22)
    {
      v22(v21, *MEMORY[0x1E69620B8], v8, v28);
      v23 = v28[0];
    }

    else
    {
      v23 = 0;
    }

    if (v23 == *MEMORY[0x1E695E4D0])
    {
      CMScreenSetMirroringMode(1);
      v23 = v28[0];
    }

    if (v23)
    {
      CFRelease(v23);
      v28[0] = 0;
    }

    CMSMNotificationUtility_PostActiveNeroVisualStreamDidChange();
    CMSMNotificationUtility_PostActiveNeroVisualStreamInfoDidChange();
    FigRoutingManagerContextUtilities_SetPickedEndpointAsAnArray(a2, a1, @"configUpdateReasonEndedSuccess", a3);
    FigRoutingManagerPostProcessPickEndpoint(a1, a2);
    FigRoutingManagerContextUtilities_SetPickingState(a2, 0);
  }

  if (v27)
  {
    CFRelease(v27);
    v27 = 0;
  }

  if (v26)
  {
    CFRelease(v26);
  }

  v24 = *MEMORY[0x1E69E9840];
}

void FigRoutingManagerHandleEndpointPlaybackActivation(const void *a1, const void *a2, uint64_t a3)
{
  if (FigRoutingManagerContextUtilities_GetContextType(a2) == 5)
  {
    if (CMSMVAUtility_IsPortAvailableForEndpoint(a1, 0))
    {
      FigRoutingManagerContextUtilities_SetPickingState(a2, 9);
      CMSMVAUtility_CreatePerAppAirPlayVADIfNeeded(0, a1, a2);
      FigRoutingManagerContextUtilities_SetPickedEndpointAsAnArray(a2, a1, @"configUpdateReasonEndedSuccess", a3);
      FigRoutingManagerPostProcessPickEndpoint(a1, a2);
      v6 = 0;
    }

    else
    {
      v6 = 8;
    }

    FigRoutingManagerContextUtilities_SetPickingState(a2, v6);
  }

  v7 = *MEMORY[0x1E69626C0];
  if (FigRoutingManagerIsEndpointOfType(a1))
  {

    FigRoutingManagerContextUtilities_PostNotificationToClientsOfContextWithUUIDAndItsFollowers(a2, @"currentRouteChanged", 0);
  }
}

uint64_t FigRoutingManagerHandleEndpointControlActivation(const void *a1, const void *a2, uint64_t a3)
{
  FigRoutingManagerContextUtilities_SetPickedEndpointAsAnArray(a2, a1, @"configUpdateReasonEndedSuccess", a3);
  FigRoutingManagerPostProcessPickEndpoint(a1, a2);

  return FigRoutingManagerContextUtilities_SetPickingState(a2, 0);
}

uint64_t FigRoutingManager_iOSActivateEndpoint(const void *a1, const void *a2, const __CFDictionary *a3, const void *a4)
{
  v60 = *MEMORY[0x1E69E9840];
  v8 = FigRoutingManagerContextUtilities_SetPickingState(a2, 4);
  EndpointActivateOptions = FigRoutingManagerCreateEndpointActivateOptions(a1, a2, a3);
  FigEndpointFeatures = FigRoutingManagerGetFigEndpointFeatures(a1, a2);
  cf = 0;
  if (a1)
  {
    CMBaseObject = FigEndpointGetCMBaseObject();
    v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v11)
    {
      v11(CMBaseObject, *MEMORY[0x1E69621E8], *MEMORY[0x1E695E480], &cf);
    }
  }

  FigEndpointDescriptorUtilitySetUserManualRoute(a1);
  if (dword_1EB75DF20)
  {
    LODWORD(v52) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v13 = *MEMORY[0x1E69626A8];
  if (FigRoutingManagerIsEndpointOfType(a1) || (v14 = *MEMORY[0x1E69626B0], FigRoutingManagerIsEndpointOfType(a1)))
  {
    EndpointDelegateContext = FigRoutingManagerCreateEndpointDelegateContext();
    v16 = malloc_type_malloc(0x18uLL, 0x60040149E097CuLL);
    if (a1)
    {
      v17 = CFRetain(a1);
    }

    else
    {
      v17 = 0;
    }

    v16[1] = v17;
    v16[2] = EndpointDelegateContext;
    *v16 = 0;
    SharedManager = FigRoutingManagerGetSharedManager();
    v19 = SharedManager[7];
    FigSimpleMutexLock();
    if (SharedManager[8])
    {
      *SharedManager[9] = v16;
    }

    else
    {
      SharedManager[8] = v16;
    }

    SharedManager[9] = v16;
    v20 = SharedManager[7];
    FigSimpleMutexUnlock();
    v21 = *MEMORY[0x1E6962600];
    if (FigRoutingManagerIsEndpointOfSubtype(a1))
    {
      v55 = EndpointDelegateContext;
      v56 = 0;
      v57 = FigRoutingManager_HandleDidReceiveDataFromCommChannelDelegate;
      v58 = FigRoutingManager_HandleDidCloseCommChannelDelegate;
      v22 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (v22)
      {
        v22(a1, &v55);
      }
    }

    v58 = 0;
    v59 = 0;
    v55 = EndpointDelegateContext;
    v56 = FigRoutingManager_HandleAuthorizationRequiredDelegate;
    v57 = FigRoutingManager_iOSHandleEndpointFailedDelegate;
    v23 = *(*(CMBaseObjectGetVTable() + 16) + 48);
    if (v23)
    {
      v23(a1, &v55);
    }
  }

  if (v8)
  {
    goto LABEL_31;
  }

  if (a3)
  {
    Value = CFDictionaryGetValue(a3, @"authInfo");
    if (Value)
    {
      FigRoutingManager_SetAuthorizationOnEndpoint(a1, Value);
    }
  }

  ContextType = FigRoutingManagerContextUtilities_GetContextType(a2);
  v53 = 0;
  FigRoutingManagerContextUtilities_GetPickingState(a2, &v53);
  if (!FigRoutingManagerIsEndpointOfType(a1))
  {
    v26 = *MEMORY[0x1E69626B0];
    if (!FigRoutingManagerIsEndpointOfType(a1))
    {
      v32 = *MEMORY[0x1E69626C0];
      if (FigRoutingManagerIsEndpointOfType(a1) || (v33 = *MEMORY[0x1E69626C8], FigRoutingManagerIsEndpointOfType(a1)))
      {
        FigRoutingManagerContextUtilities_SetPickingState(a2, 5);
        v55 = 0;
        FigRoutingManagerCreateEndpointActivateCompletionContext(a2, a3, a4, EndpointActivateOptions, &v55);
        v8 = FigRoutingManagerEndpointActivateWithCompletionCallback(a1, FigEndpointFeatures, EndpointActivateOptions, FigRoutingManager_iOSEndpointActivateCompletionCallback, v55);
        goto LABEL_31;
      }

      v34 = *MEMORY[0x1E69626D8];
      if (!FigRoutingManagerIsEndpointOfType(a1))
      {
        v35 = *MEMORY[0x1E69626B8];
        v8 = 0;
        if (FigRoutingManagerIsEndpointOfType(a1) && ContextType != 13)
        {
          v55 = 0;
          FigRoutingManagerCreateEndpointActivateCompletionContext(a2, a3, a4, EndpointActivateOptions, &v55);
          FigRoutingManagerEndpointActivateWithCompletionCallback(a1, FigEndpointFeatures, EndpointActivateOptions, FigRoutingManager_iOSEndpointActivateCompletionCallback, v55);
          v8 = 0;
        }

        goto LABEL_31;
      }

      FigRoutingManagerContextUtilities_SetPickingState(a2, 6);
      v8 = FigEndpointActivate();
      v52 = 0;
      FigRoutingManagerContextUtilities_CopyPickedEndpointAtIndex(a2, 0, &v52);
      if (v8)
      {
        FigRoutingManagerContextUtilities_ResetCurrentlyActivatingEndpointInfo(a2, a1, @"configUpdateReasonEndedFailed");
        FigRoutingManagerContextUtilities_SetPickingState(a2, 0);
        goto LABEL_73;
      }

      if (FigRoutingManagerIsEndpointOfType(v52))
      {
        FigRoutingManagerDeactivateEndpointFromPickedContexts(v52, a2, 1u, @"configUpdateReasonEndedSuccess");
      }

      if (ContextType == 13)
      {
        CurrentInputPortAtIndex = CMSMUtility_GetCurrentInputPortAtIndex(0);
        v37 = vaeCopyDeviceIdentifierFromVADPort(CurrentInputPortAtIndex);
        if (v37)
        {
          v50 = v37;
          v37 = [MEMORY[0x1E695DEC8] arrayWithObject:v37];
LABEL_52:
          v48 = v37;
          v38 = FigRoutingManagerCopyEndpointsFromRouteIdentifiers(v37, a2);
          v39 = FigEndpointDescriptorUtility_CopyDescriptorsForEndpoints(v38, 0);
          FigRoutingManagerContextUtilities_SetPickedEndpoints(a2, v38, @"configUpdateReasonEndedSuccess", a3, v39);
          FigRoutingManagerPostProcessPickEndpoint(a1, a2);
          if (ContextType == 13)
          {
            CurrentOutputPortAtIndex = CMSMUtility_GetCurrentInputPortAtIndex(0);
          }

          else
          {
            CurrentOutputPortAtIndex = CMSMUtility_GetCurrentOutputPortAtIndex(0);
          }

          v41 = CurrentOutputPortAtIndex;
          v42 = vaeCopySpecificNameForPort(CurrentOutputPortAtIndex);
          v43 = vaeCopyDeviceIdentifierFromVADPort(v41);
          *type = 0;
          v44 = *MEMORY[0x1E69620F8];
          v45 = *MEMORY[0x1E695E480];
          v46 = FigEndpointGetCMBaseObject();
          CMBaseObjectCopyProperty(v46, v44, v45, type);
          if (!FigCFEqual())
          {
            if (dword_1EB75DF20)
            {
              v47 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            FigRoutingManagerContextUtilities_ResetCurrentlyActivatingEndpointInfo(a2, a1, @"configUpdateReasonEndedFailed");
          }

          FigRoutingManagerContextUtilities_SetPickingState(a2, 0);
          if (*type)
          {
            CFRelease(*type);
            *type = 0;
          }

          if (v43)
          {
            CFRelease(v43);
          }

          if (v42)
          {
            CFRelease(v42);
          }

          if (v39)
          {
            CFRelease(v39);
          }

          if (v38)
          {
            CFRelease(v38);
          }

          if (v48)
          {
            CFRelease(v48);
          }

          if (v50)
          {
            CFRelease(v50);
          }

LABEL_73:
          v29 = v52;
          if (v52)
          {
            goto LABEL_30;
          }

          goto LABEL_31;
        }
      }

      else
      {
        v37 = CMSMUtility_CopyCurrentRouteIdentifiers();
      }

      v50 = 0;
      goto LABEL_52;
    }
  }

  if (ContextType <= 6 && ((1 << ContextType) & 0x6E) != 0)
  {
    FigRoutingManagerContextUtilities_SetPickingState(a2, 5);
  }

  v55 = 0;
  FigRoutingManagerCreateEndpointActivateCompletionContext(a2, a3, a4, EndpointActivateOptions, &v55);
  FigRoutingManagerCrossfadePlayback();
  v27 = *MEMORY[0x1E695E480];
  MutableCopy = FigCFDictionaryCreateMutableCopy();
  v8 = FigRoutingManagerEndpointActivateWithCompletionCallback(a1, FigEndpointFeatures, MutableCopy, FigRoutingManager_iOSEndpointActivateCompletionCallback, v55);
  if (MutableCopy)
  {
    v29 = MutableCopy;
LABEL_30:
    CFRelease(v29);
  }

LABEL_31:
  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (EndpointActivateOptions)
  {
    CFRelease(EndpointActivateOptions);
  }

  v30 = *MEMORY[0x1E69E9840];
  return v8;
}

void FigRoutingManager_iOSHandleEndpointFailedDelegate(const void *a1, uint64_t a2, const void *a3, const void *a4)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1 && a3)
  {
    if (dword_1EB75DF20)
    {
      v14 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    SharedManager = FigRoutingManagerGetSharedManager();
    CFRetain(a1);
    CFRetain(a3);
    if (a4)
    {
      CFRetain(a4);
    }

    v10 = *(SharedManager + 1);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __FigRoutingManager_iOSHandleEndpointFailedDelegate_block_invoke;
    v12[3] = &__block_descriptor_64_e5_v8__0l;
    v12[4] = a4;
    v12[5] = a3;
    v12[6] = a1;
    v12[7] = a2;
    MXDispatchAsync("FigRoutingManager_iOSHandleEndpointFailedDelegate", "FigRoutingManager_iOSEndpointHelpers.m", 1533, 0, 0, v10, v12);
  }

  v11 = *MEMORY[0x1E69E9840];
}

void FigRoutingManager_iOSEndpointDeactivateCompletionCallback(CFTypeRef cf, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  if (cf)
  {
    CFRetain(cf);
  }

  if (a5)
  {
    v10 = *(a5 + 16);
  }

  else
  {
    v10 = 0;
  }

  [v10 timeIntervalSinceNow];
  v12 = fabs(v11) * 1000.0;
  SharedManager = FigRoutingManagerGetSharedManager();
  v14 = objc_alloc_init(MEMORY[0x1E695DF00]);
  v15 = *(SharedManager + 1);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __FigRoutingManager_iOSEndpointDeactivateCompletionCallback_block_invoke;
  v16[3] = &unk_1E7AEA488;
  v16[4] = v14;
  v16[5] = cf;
  v17 = a4;
  v16[6] = a3;
  v16[7] = a2;
  v18 = v12;
  v16[8] = a5;
  v16[9] = a5;
  MXDispatchAsync("FigRoutingManager_iOSEndpointDeactivateCompletionCallback", "FigRoutingManager_iOSEndpointHelpers.m", 1016, 0, 0, v15, v16);
}

void FigRoutingManager_iOSHandleFigEndpointFeaturesDeactivation(const void *a1, char a2, uint64_t a3)
{
  if (a2)
  {
    routingManager_resetScreenSettings(a1);
    cf = 0;
    CMBaseObject = FigEndpointGetCMBaseObject();
    VTable = CMBaseObjectGetVTable();
    v8 = *(*(VTable + 8) + 48);
    if (v8)
    {
      v9 = *(VTable + 8) + 48;
      v8(CMBaseObject, *MEMORY[0x1E69622F8], *MEMORY[0x1E695E480], &cf);
    }

    theArray = 0;
    FigRoutingManagerContextUtilities_CopyActivatedEndpointsInfo(a3, &theArray);
    if (!theArray)
    {
      goto LABEL_13;
    }

    Count = CFArrayGetCount(theArray);
    if (Count < 1)
    {
      goto LABEL_13;
    }

    v11 = Count;
    v12 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v12);
      if (CFDictionaryGetValue(ValueAtIndex, @"ActivatedEndpointsInfo_Endpoint") == a1)
      {
        break;
      }

      if (v11 == ++v12)
      {
        goto LABEL_13;
      }
    }

    Value = CFDictionaryGetValue(ValueAtIndex, @"ActivatedEndpointsInfo_EndpointTransportType");
    if (Value)
    {
      v15 = CFRetain(Value);
    }

    else
    {
LABEL_13:
      v15 = 0;
    }

    CMScreenHandleDeactivation(cf, v15);
    v16 = *MEMORY[0x1E69626C8];
    if (FigCFEqual())
    {
      CMSMNotificationUtility_PostActiveNeroVisualStreamInfoDidChange();
      CMSMNotificationUtility_PostActiveNeroVisualStreamDidChange();
    }

    if (theArray)
    {
      CFRelease(theArray);
      theArray = 0;
    }

    if (v15)
    {
      CFRelease(v15);
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  if ((a2 & 4) != 0)
  {
    v17 = *MEMORY[0x1E69626C0];
    if (FigRoutingManagerIsEndpointOfType(a1))
    {
      v18 = FigEndpointGetCMBaseObject();
      v19 = CMBaseObjectGetVTable();
      v20 = *(*(v19 + 8) + 56);
      if (v20)
      {
        v21 = *(v19 + 8) + 56;
        v20(v18, *MEMORY[0x1E6962118], *MEMORY[0x1E695E4C0]);
      }

      CMNotificationCenterGetDefaultLocalCenter();
      v22 = *MEMORY[0x1E6961968];
      CMNotificationCenterPostNotification();
    }
  }
}

uint64_t FigRoutingManagerUnregisterFromFigEndpointNotifications(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *MEMORY[0x1E69626B0];
    if (FigRoutingManagerIsEndpointOfType(result))
    {
      FigVolumeControllerRemoveAirPlayVolumeNotificationListeners(v1);
      v11 = 0;
      FigRoutingManagerContextUtilities_CopySystemMusicContextUUID(&v11);
      cf = 0;
      FigRoutingManagerContextUtilities_CopyAggregateEndpointAsFigEndpointAggregate(v11, &cf);
      if (cf)
      {
        if (MX_FeatureFlags_IsBufferedBadgingAndCapabilitiesEnabled())
        {
          FigRoutingManagerUtilities_UnRegisterAirPlayStreamCapabilitiesDidChangeListener(cf, v1);
        }

        if (cf)
        {
          CFRelease(cf);
          cf = 0;
        }
      }

      if (v11)
      {
        CFRelease(v11);
      }
    }

    v3 = *MEMORY[0x1E69626A8];
    if (FigRoutingManagerIsEndpointOfType(v1))
    {
      FigRoutingManagerGetSharedManager();
      CMNotificationCenterGetDefaultLocalCenter();
      v4 = *MEMORY[0x1E69619D0];
      CMNotificationCenterRemoveListener();
    }

    v5 = *MEMORY[0x1E69626C8];
    if (FigRoutingManagerIsEndpointOfType(v1) || FigRoutingManagerIsEndpointOfType(v1))
    {
      FigRoutingManagerGetSharedManager();
      CMNotificationCenterGetDefaultLocalCenter();
      v6 = *MEMORY[0x1E69619B0];
      CMNotificationCenterRemoveListener();
    }

    result = FigRoutingManagerIsEndpointOfType(v1);
    if (!result)
    {
      result = FigRoutingManagerIsEndpointOfType(v1);
      if (!result)
      {
        FigRoutingManagerGetSharedManager();
        CMNotificationCenterGetDefaultLocalCenter();
        v7 = *MEMORY[0x1E6961960];
        CMNotificationCenterRemoveListener();
        FigRoutingManagerGetSharedManager();
        CMNotificationCenterGetDefaultLocalCenter();
        v8 = *MEMORY[0x1E6961950];
        CMNotificationCenterRemoveListener();
        FigRoutingManagerGetSharedManager();
        CMNotificationCenterGetDefaultLocalCenter();
        v9 = *MEMORY[0x1E6961970];
        return CMNotificationCenterRemoveListener();
      }
    }
  }

  return result;
}

void routingManager_resetScreenSettings(uint64_t a1)
{
  if (a1)
  {
    v1 = 0;
    theArray = 0;
    FigRoutingManagerCopyAirPlayEndpointsInUseForFeatures(1, &theArray, 0, &v1, 0);
    if ((!theArray || !CFArrayGetCount(theArray)) && (!v1 || !CFArrayGetCount(v1) || FigCFArrayContainsValue()))
    {
      CMScreenSetMirroringMode(0);
      CMScreenSetVirtualDisplayClientPID(0);
    }

    if (v1)
    {
      CFRelease(v1);
      v1 = 0;
    }

    if (theArray)
    {
      CFRelease(theArray);
    }
  }
}

void FigRoutingManagerSetMirroringModeOnBKSDisplayServices(const __CFDictionary *a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a1)
  {
    CFDictionaryGetValue(a1, *MEMORY[0x1E6961670]);
    CFDictionaryGetValue(a1, *MEMORY[0x1E6961668]);
  }

  if (a3)
  {
    FigCFDictionaryGetInt32IfPresent();
  }

  ContextType = FigRoutingManagerContextUtilities_GetContextType(a2);
  if (a4)
  {
    v9 = 1;
LABEL_7:
    CMScreenSetMirroringMode(v9);
    return;
  }

  if (ContextType == 6)
  {
    CMScreenSetMirroringMode(2);
    CMScreenSetVirtualDisplayClientPID(-1);
    return;
  }

  if (ContextType == 2)
  {
    v9 = 0;
    goto LABEL_7;
  }
}

void FigRoutingManagerResumeCurrentEndpointScreen(uint64_t a1)
{
  if (a1)
  {
    v14 = 0;
    FigRoutingManagerContextUtilities_CopyPickedEndpointAtIndex(a1, 0, &v14);
    if (v14)
    {
      v13 = 0;
      v1 = *MEMORY[0x1E695E480];
      v2 = *MEMORY[0x1E69625F8];
      FigEndpointCopyFirstStreamOfType();
      cf = 0;
      CMBaseObject = FigEndpointGetCMBaseObject();
      VTable = CMBaseObjectGetVTable();
      v5 = *(*(VTable + 8) + 48);
      if (v5)
      {
        v6 = *(VTable + 8) + 48;
        v5(CMBaseObject, *MEMORY[0x1E69622F8], v1, &cf);
      }

      v11 = 0;
      v7 = FigEndpointGetCMBaseObject();
      v8 = CMBaseObjectGetVTable();
      v9 = *(*(v8 + 8) + 48);
      if (v9)
      {
        v10 = *(v8 + 8) + 48;
        v9(v7, *MEMORY[0x1E69622F0], v1, &v11);
      }

      if (v13)
      {
        CMScreenResumeStream(v13);
      }

      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      if (v11)
      {
        CFRelease(v11);
        v11 = 0;
      }

      if (v13)
      {
        CFRelease(v13);
      }

      if (v14)
      {
        CFRelease(v14);
      }
    }
  }
}

void FigRoutingManagerSuspendCurrentEndpointScreen(uint64_t a1)
{
  if (a1)
  {
    v14 = 0;
    FigRoutingManagerContextUtilities_CopyPickedEndpointAtIndex(a1, 0, &v14);
    if (v14)
    {
      v13 = 0;
      v1 = *MEMORY[0x1E695E480];
      v2 = *MEMORY[0x1E69625F8];
      FigEndpointCopyFirstStreamOfType();
      cf = 0;
      CMBaseObject = FigEndpointGetCMBaseObject();
      VTable = CMBaseObjectGetVTable();
      v5 = *(*(VTable + 8) + 48);
      if (v5)
      {
        v6 = *(VTable + 8) + 48;
        v5(CMBaseObject, *MEMORY[0x1E69622F8], v1, &cf);
      }

      v11 = 0;
      v7 = FigEndpointGetCMBaseObject();
      v8 = CMBaseObjectGetVTable();
      v9 = *(*(v8 + 8) + 48);
      if (v9)
      {
        v10 = *(v8 + 8) + 48;
        v9(v7, *MEMORY[0x1E69622F0], v1, &v11);
      }

      if (v13)
      {
        CMScreenSuspendStream(v13);
      }

      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      if (v11)
      {
        CFRelease(v11);
        v11 = 0;
      }

      if (v13)
      {
        CFRelease(v13);
      }

      if (v14)
      {
        CFRelease(v14);
      }
    }
  }
}

void routingManager_handleFigEndpointDeactivatedNotification(uint64_t a1, uint64_t a2, const void *a3, const void *a4)
{
  SharedManager = FigRoutingManagerGetSharedManager();
  v14 = 0;
  v7 = *MEMORY[0x1E6961918];
  FigCFDictionaryGetInt64IfPresent();
  v13 = 0;
  v8 = *MEMORY[0x1E6961908];
  Int64IfPresent = FigCFDictionaryGetInt64IfPresent();
  if (a4)
  {
    CFRetain(a4);
  }

  if (a3)
  {
    CFRetain(a3);
  }

  v10 = *(SharedManager + 1);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __routingManager_handleFigEndpointDeactivatedNotification_block_invoke;
  v11[3] = &__block_descriptor_65_e5_v8__0l;
  v12 = Int64IfPresent;
  v11[4] = a4;
  v11[5] = v14;
  v11[6] = v13;
  v11[7] = a3;
  MXDispatchAsync("routingManager_handleFigEndpointDeactivatedNotification", "FigRoutingManager_iOSEndpointHelpers.m", 1748, 0, 0, v10, v11);
}

void __routingManager_handleFigEndpointDeactivatedNotification_block_invoke(uint64_t a1)
{
  cf[16] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695E480];
  if (!*(a1 + 64))
  {
    cf[0] = 0;
    if (*(a1 + 32))
    {
      CMBaseObject = FigEndpointGetCMBaseObject();
      v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v7)
      {
        v7(CMBaseObject, *MEMORY[0x1E69622F8], *v2, cf);
        if (cf[0])
        {
          CFRelease(cf[0]);
        }
      }
    }
  }

  v22 = 0;
  v23 = 0;
  if (*(a1 + 32))
  {
    v3 = FigEndpointGetCMBaseObject();
    v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v4)
    {
      v4(v3, *MEMORY[0x1E69621E8], *v2, &v22);
    }
  }

  if (dword_1EB75DF20)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v8 = *MEMORY[0x1E69626C0];
  if (FigRoutingManagerIsEndpointOfType(*(a1 + 32)))
  {
    v9 = CMSMUtility_CopySystemAudioRoutingContextUUID();
    v23 = v9;
    FigRoutingManagerGetEndpointManager(*MEMORY[0x1E69618E0]);
    v10 = *(a1 + 32);
    FigRoutingManagerProcessCarPlayEndpointDeactivation(0);
    cf[0] = 0;
    v11 = FigEndpointManagerGetCMBaseObject();
    v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v12)
    {
      v12(v11, *MEMORY[0x1E69618B8], *v2, cf);
    }

    v13 = FigRoutingManagerCopyEndpointToAutoConnect();
    if (v13)
    {
      v14 = v13;
      FigRoutingManagerProcessEndpointToAutoconnect(v13);
      CFRelease(v14);
    }

    if (cf[0])
    {
      CFRelease(cf[0]);
      cf[0] = 0;
    }

    FigEndpointServerSetActiveEndpoint();
    if (MX_FeatureFlags_IsSystemRemoteDisplayContextEnabled())
    {
      v15 = *(a1 + 32);
      FigRoutingManagerSetUpSystemRemoteDisplayContextWithEndpoint(0);
    }

    routingManager_resetCurrentlyActivatingCarPlayEndpointIfNeeded(*(a1 + 32), @"configUpdateReasonEndedFailed");
    FigRoutingManager_iOSHandleFigEndpointFeaturesDeactivation(*(a1 + 32), *(a1 + 40), v9);
    FigRoutingManagerContextUtilities_RemoveActivatedEndpoint(v9, *(a1 + 32), *(a1 + 48));
    FigRoutingManagerUtilities_UnRegisterAirPlayStreamCapabilitiesDidChangeListener(0, *(a1 + 32));
  }

  else
  {
    v16 = *MEMORY[0x1E69626C8];
    if (FigRoutingManagerIsEndpointOfType(*(a1 + 32)))
    {
      v17 = [+[MXSessionManager sharedInstance](MXSessionManager systemMirroringRoutingContextUUID];
      v23 = v17;
      FigRoutingManagerContextUtilities_SetPickedEndpoints(v17, 0, @"configUpdateReasonEndedBottomUpRouteChange", 0, 0);
      FigRoutingManager_iOSHandleFigEndpointFeaturesDeactivation(*(a1 + 32), *(a1 + 40), v17);
      FigRoutingManagerContextUtilities_RemoveActivatedEndpoint(v17, *(a1 + 32), *(a1 + 48));
    }

    else
    {
      v21 = *MEMORY[0x1E69626A8];
      if (FigRoutingManagerIsEndpointOfType(*(a1 + 32)))
      {
        FigRoutingManagerContextUtilities_CopyRoutingContextUUIDForActivatedEndpoint(*(a1 + 32), *(a1 + 48), &v23);
        if (v23)
        {
          FigRoutingManager_iOSHandleFigEndpointFeaturesDeactivation(*(a1 + 32), *(a1 + 40), v23);
          FigRoutingManagerContextUtilities_RemoveActivatedEndpoint(v23, *(a1 + 32), *(a1 + 48));
          FigRoutingManagerRemoveCachedDelegateContext(*(a1 + 32));
        }
      }
    }
  }

  if (v22)
  {
    CFRelease(v22);
    v22 = 0;
  }

  if (v23)
  {
    CFRelease(v23);
    v23 = 0;
  }

  v18 = *(a1 + 32);
  if (v18)
  {
    CFRelease(v18);
  }

  v19 = *(a1 + 56);
  if (v19)
  {
    CFRelease(v19);
  }

  v20 = *MEMORY[0x1E69E9840];
}

void routingManager_resetCurrentlyActivatingCarPlayEndpointIfNeeded(const void *a1, uint64_t a2)
{
  v4 = CMSMUtility_CopySystemAudioRoutingContextUUID();
  theArray = 0;
  FigRoutingManagerContextUtilities_CopyCurrentlyActivatingEndpoints(v4, &theArray);
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    if (Count >= 1)
    {
      v6 = Count;
      v7 = 0;
      while (CFArrayGetValueAtIndex(theArray, v7) != a1)
      {
        if (v6 == ++v7)
        {
          goto LABEL_8;
        }
      }

      FigRoutingManagerContextUtilities_ResetCurrentlyActivatingEndpointInfo(v4, a1, a2);
    }

LABEL_8:
    if (theArray)
    {
      CFRelease(theArray);
      theArray = 0;
    }
  }

  if (v4)
  {
    CFRelease(v4);
  }
}

void routingManager_handleEndpointFailedNotification(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, const void *a5)
{
  v27 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v25 = 0;
    v26 = 0;
    v7 = *MEMORY[0x1E695E480];
    CMBaseObject = FigEndpointGetCMBaseObject();
    v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v9)
    {
      v9(CMBaseObject, *MEMORY[0x1E69621E8], v7, &v25);
    }

    cf = 0;
    v10 = FigEndpointGetCMBaseObject();
    v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v11)
    {
      v11(v10, *MEMORY[0x1E69622F8], v7, &cf);
    }

    v12 = *MEMORY[0x1E6961920];
    Int64IfPresent = FigCFDictionaryGetInt64IfPresent();
    if (dword_1EB75DF20)
    {
      v23 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v15 = *MEMORY[0x1E69626A8];
    if (FigRoutingManagerIsEndpointOfType(a4))
    {
      MXSimulateCrash("This is unexpected. Please file a radar to MediaExperience (New Bugs) | All.");
    }

    else
    {
      SharedManager = FigRoutingManagerGetSharedManager();
      CFRetain(a4);
      if (cf)
      {
        CFRetain(cf);
      }

      if (a5)
      {
        CFRetain(a5);
      }

      if (v25)
      {
        CFRetain(v25);
        v17 = v25;
      }

      else
      {
        v17 = 0;
      }

      v18 = *(SharedManager + 1);
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __routingManager_handleEndpointFailedNotification_block_invoke;
      v20[3] = &__block_descriptor_73_e5_v8__0l;
      v21 = Int64IfPresent;
      v20[4] = a5;
      v20[5] = a4;
      v20[6] = v26;
      v20[7] = cf;
      v20[8] = v17;
      MXDispatchAsync("routingManager_handleEndpointFailedNotification", "FigRoutingManager_iOSEndpointHelpers.m", 1473, 0, 0, v18, v20);
    }

    if (v25)
    {
      CFRelease(v25);
      v25 = 0;
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

void __routingManager_handleEndpointFailedNotification_block_invoke(uint64_t a1)
{
  if (*(a1 + 72))
  {
    v2 = *(a1 + 32);
    v3 = *MEMORY[0x1E6961908];
    FigCFDictionaryGetInt64IfPresent();
    FigRoutingManager_HandleEndpointFailed(*(a1 + 40), *(a1 + 48), 0, 1);
  }

  v4 = *(a1 + 56);
  v5 = *MEMORY[0x1E69626C0];
  if (FigCFEqual())
  {
    routingManager_resetCurrentlyActivatingCarPlayEndpointIfNeeded(*(a1 + 40), @"configUpdateReasonEndedFailed");
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(a1 + 56);
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = *(a1 + 64);
  if (v9)
  {
    CFRelease(v9);
  }
}

void routingManager_handleEndpointFeaturesChangedNotification(int a1, int a2, int a3, CFTypeRef cf, CFTypeRef a5)
{
  if (cf)
  {
    CFRetain(cf);
  }

  if (a5)
  {
    CFRetain(a5);
  }

  v7 = *(FigRoutingManagerGetSharedManager() + 1);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __routingManager_handleEndpointFeaturesChangedNotification_block_invoke;
  v8[3] = &__block_descriptor_48_e5_v8__0l;
  v8[4] = a5;
  v8[5] = cf;
  MXDispatchAsync("routingManager_handleEndpointFeaturesChangedNotification", "FigRoutingManager_iOSEndpointHelpers.m", 1872, 0, 0, v7, v8);
}

void __routingManager_handleEndpointFeaturesChangedNotification_block_invoke(uint64_t a1)
{
  v27[16] = *MEMORY[0x1E69E9840];
  v24 = 0;
  v25 = 0;
  v23 = 0;
  v2 = *(a1 + 32);
  v3 = *MEMORY[0x1E6961918];
  FigCFDictionaryGetInt64IfPresent();
  v4 = *(a1 + 32);
  v5 = *MEMORY[0x1E6961910];
  FigCFDictionaryGetInt64IfPresent();
  v6 = *(a1 + 32);
  v7 = *MEMORY[0x1E6961908];
  FigCFDictionaryGetInt64IfPresent();
  cf = 0;
  v8 = *(a1 + 40);
  CMBaseObject = FigEndpointGetCMBaseObject();
  v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v10)
  {
    v10(CMBaseObject, *MEMORY[0x1E69621E8], *MEMORY[0x1E695E480], &cf);
  }

  if (dword_1EB75DF20)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v27[0] = 0;
  FigRoutingManagerContextUtilities_CopyRoutingContextUUIDForActivatedEndpoint(*(a1 + 40), v23, v27);
  theArray = 0;
  FigRoutingManagerContextUtilities_CopyActivatedEndpointsInfo(v27[0], &theArray);
  if (theArray && (Count = CFArrayGetCount(theArray), Count >= 1))
  {
    v13 = Count;
    v14 = 0;
    v15 = 0;
    Value = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v14);
      if (ValueAtIndex)
      {
        v18 = ValueAtIndex;
        Value = CFDictionaryGetValue(ValueAtIndex, @"ActivatedEndpointsInfo_ClientRouteChangeOptions");
        v15 = CFDictionaryGetValue(v18, @"ActivatedEndpointsInfo_InternalRouteChangeOptions");
      }

      ++v14;
    }

    while (v13 != v14);
  }

  else
  {
    Value = 0;
    v15 = 0;
  }

  if (v24)
  {
    CMSMUtility_InformAirPlayOfAudioModeIfNecessary(v27[0]);
    FigRoutingManager_iOSHandleFigEndpointFeaturesActivation(*(a1 + 40), v25, v23, v27[0], Value, v15);
  }

  else
  {
    FigRoutingManager_iOSHandleFigEndpointFeaturesDeactivation(*(a1 + 40), v25, v27[0]);
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (v27[0])
  {
    CFRelease(v27[0]);
    v27[0] = 0;
  }

  if (theArray)
  {
    CFRelease(theArray);
    theArray = 0;
  }

  v19 = *(a1 + 40);
  if (v19)
  {
    CFRelease(v19);
  }

  v20 = *(a1 + 32);
  if (v20)
  {
    CFRelease(v20);
  }

  v21 = *MEMORY[0x1E69E9840];
}

void routingManager_handleAirPlayVolumeControlDidChange()
{
  cf[20] = *MEMORY[0x1E69E9840];
  cf[0] = *MEMORY[0x1E695E4C0];
  CMBaseObject = FigEndpointGetCMBaseObject();
  v1 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v1)
  {
    v1(CMBaseObject, *MEMORY[0x1E6962340], *MEMORY[0x1E695E480], cf);
  }

  if (dword_1EB75DF20)
  {
    v9 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  SharedManager = FigRoutingManagerGetSharedManager();
  if (cf[0])
  {
    CFRetain(cf[0]);
    v4 = cf[0];
  }

  else
  {
    v4 = 0;
  }

  v5 = *(SharedManager + 1);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __routingManager_handleAirPlayVolumeControlDidChange_block_invoke;
  v7[3] = &__block_descriptor_40_e5_v8__0l;
  v7[4] = v4;
  MXDispatchAsync("routingManager_handleAirPlayVolumeControlDidChange", "FigRoutingManager_iOSEndpointHelpers.m", 1851, 0, 0, v5, v7);
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __routingManager_handleAirPlayVolumeControlDidChange_block_invoke(uint64_t a1)
{
  vaemHandleVolumeControlDidChange(*(a1 + 32) == *MEMORY[0x1E695E4D0]);
  v2 = *(a1 + 32);
  if (v2)
  {

    CFRelease(v2);
  }
}

uint64_t FigEndpointCreateCentral(uint64_t a1, const void *a2, void *a3, void *a4)
{
  v22 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v7 = *MEMORY[0x1E69626C0];
    if (!FigRoutingManagerIsEndpointOfType(a2))
    {
      v16 = 4294954311;
      goto LABEL_19;
    }
  }

  if (!a4)
  {
    if (FigEndpointCreateCentral_cold_1(v21))
    {
      v16 = 0;
      goto LABEL_20;
    }

    v16 = v21[0];
    goto LABEL_19;
  }

  FigEndpointExtendedGetClassID();
  v8 = CMDerivedObjectCreate();
  if (v8)
  {
    goto LABEL_12;
  }

  gFigEndpointCentralObjectWeakRef = FigCFWeakReferenceHolderCreateWithReferencedObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = FigStarkModeControllerCreate((DerivedStorage + 24));
  if (v8)
  {
    goto LABEL_12;
  }

  *(DerivedStorage + 48) = fsmcontroller_CopyCarModesQueue(*(DerivedStorage + 24));
  if (MX_FeatureFlags_IsAirPlayDaemonEnabled())
  {
    goto LABEL_7;
  }

  v13 = *(DerivedStorage + 24);
  CMBaseObject = FigEndpointGetCMBaseObject();
  v15 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v15)
  {
    v16 = 4294954514;
    goto LABEL_19;
  }

  v8 = v15(CMBaseObject, *MEMORY[0x1E6962258], v13);
  if (v8)
  {
LABEL_12:
    v16 = v8;
LABEL_19:
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_20;
  }

LABEL_7:
  v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v11 = dispatch_queue_create("com.apple.coremedia.figEndpointcentral.modechangequeue", v10);
  *(DerivedStorage + 32) = v11;
  if (!v11)
  {
    v16 = 4294954314;
    goto LABEL_19;
  }

  if (a2)
  {
    v12 = CFRetain(a2);
  }

  else
  {
    v12 = 0;
  }

  *(DerivedStorage + 8) = v12;
  if (a3)
  {
    v17 = a3;
    *(DerivedStorage + 16) = v17;
    CMSessionGetNotificationCenter(v17);
    CMNotificationCenterAddListener();
  }

  *(DerivedStorage + 40) = FigStarkModeControllerAddStateChangedHandler(*(DerivedStorage + 24), *(DerivedStorage + 32), &__block_literal_global_9);
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListener();
  v16 = 0;
  *a4 = 0;
LABEL_20:
  v19 = *MEMORY[0x1E69E9840];
  return v16;
}

void central_interruptionNotificationCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a5)
  {
    v8 = DerivedStorage;
    if (FigCFEqual())
    {
      v9 = *(v8 + 48);
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __central_interruptionNotificationCallback_block_invoke;
      v12[3] = &__block_descriptor_56_e5_v8__0l;
      v12[4] = v8;
      v12[5] = a4;
      v12[6] = a5;
      MXDispatchSync("central_interruptionNotificationCallback", "FigEndpoint_Central.m", 979, 0, 0, v9, v12);
    }

    else
    {
      v14 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

uint64_t FigEndpointCentralGetInitialModesReceived()
{
  result = CMBaseObjectGetDerivedStorage();
  if (result)
  {
    return *(result + 3);
  }

  return result;
}

uint64_t FigEndpointSessionHandleInterruption(void *DerivedStorage, __int128 *a2, uint64_t a3, uint64_t *a4, char a5)
{
  if (*a2 == 1)
  {
    v14 = *(a2 + 2);
    v15 = *(a2 + 6);
    v25 = 0u;
    v26 = 0u;
    v32 = 0u;
    memset(v33, 0, 24);
    v30 = 0u;
    v31 = 0u;
    if (DerivedStorage)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      if (DerivedStorage)
      {
        v17 = DerivedStorage;
        *&v30 = 0x200000002;
        if (!FigCFEqual())
        {
          if (FigCFEqual())
          {
            *(v33 + 12) = v14;
            DWORD2(v33[0]) = v15;
            if (a4)
            {
              v18 = *a4;
              if (FigCFEqual())
              {
                *&v32 = 23;
                LODWORD(v33[0]) = 0;
                v19 = v17[3];
                CStringPtrAndBufferToFree = FigCFStringGetCStringPtrAndBufferToFree();
                v12 = fsmcontroller_RequestModeChange(v19, &v30, CStringPtrAndBufferToFree, &v25, a5);
                DerivedStorage = 0;
                goto LABEL_25;
              }
            }
          }
        }

        DerivedStorage = 0;
      }
    }

    v12 = 0;
LABEL_25:
    free(DerivedStorage);
    CMSMNotificationUtility_PostVoicePromptStyleDidChange();
    return v12;
  }

  if (!*a2)
  {
    v22 = *a2;
    v23 = a2[1];
    v24 = *(a2 + 4);
    v29 = 0;
    if (DerivedStorage)
    {
      v6 = CMBaseObjectGetDerivedStorage();
      if (v6)
      {
        v7 = v6;
        memset(v28, 0, sizeof(v28));
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        memset(v33, 0, 24);
        v25 = v22;
        v26 = v23;
        v27 = v24;
        v8 = central_ConstructModeChangeRequestToGet(a4, @"MainAudio", &v25, &v30);
        if (v8)
        {
          v12 = v8;
          goto LABEL_24;
        }

        v9 = *(v7 + 24);
        v10 = FigCFStringGetCStringPtrAndBufferToFree();
        v11 = fsmcontroller_RequestModeChange(v9, &v30, v10, v28, 0);
        v12 = 4294954311;
        if (v11 || DWORD2(v28[0]) != 2)
        {
          goto LABEL_24;
        }

        if (a4)
        {
          if ((v32 - 20) > 3)
          {
            v13 = 0;
          }

          else
          {
            v13 = *(&off_1E7AEA590 + (v32 - 20));
          }

          v12 = 0;
          *a4 = v13;
          goto LABEL_24;
        }
      }
    }

    v12 = 0;
LABEL_24:
    DerivedStorage = v29;
    goto LABEL_25;
  }

  return 0;
}

uint64_t FigEndpointCentralGetResourceTypeBorrowConstraint(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    return 0;
  }

  v4 = *(DerivedStorage + 24);

  return FigStarkModeControllerGetCurrentResourceBorrowConstraint(v4, a2);
}

uint64_t FigEndpointCentralEntityOwnsResource(uint64_t a1, uint64_t a2, const void *a3)
{
  result = 0;
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        result = CMBaseObjectGetDerivedStorage();
        if (result)
        {
          memset(v7, 0, sizeof(v7));
          fsmcontroller_GetCurrentMode(*(result + 24), v7);
          if (CFEqual(a3, @"MainAudio"))
          {
            v6 = v7 + 12;
          }

          else
          {
            result = CFEqual(a3, @"Screen");
            if (!result)
            {
              return result;
            }

            v6 = v7 + 4;
          }

          *v6;
          return FigCFEqual();
        }
      }
    }
  }

  return result;
}

void __FigEndpointCentralUpdateiOSDeviceState_block_invoke(uint64_t a1, int a2)
{
  v4 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v3 = *MEMORY[0x1E69E9840];
}

uint64_t FigEndpointCentralCopyStarkModeController(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  result = 4294954316;
  if (a1 && a2)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (DerivedStorage)
    {
      v6 = *(DerivedStorage + 24);
      if (v6)
      {
        v7 = CFRetain(v6);
      }

      else
      {
        v7 = 0;
      }

      result = 0;
      *a2 = v7;
    }

    else
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      result = 4294954315;
    }
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void central_Finalize(uint64_t a1)
{
  central_deactivateEndpoint(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 32);
  if (v2)
  {
    dispatch_release(v2);
    *(DerivedStorage + 32) = 0;
  }

  v3 = *(DerivedStorage + 48);
  if (v3)
  {
    dispatch_release(v3);
    *(DerivedStorage + 48) = 0;
  }
}

__CFString *central_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigEndpointCentral %p>", a1);
  return Mutable;
}

void central_deactivateEndpoint(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __central_deactivateEndpoint_block_invoke;
  v4[3] = &__block_descriptor_48_e5_v8__0l;
  v4[4] = DerivedStorage;
  v4[5] = a1;
  MXDispatchSync("central_deactivateEndpoint", "FigEndpoint_Central.m", 1106, 0, 0, v3, v4);
}

void __central_deactivateEndpoint_block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 48);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __central_deactivateEndpoint_block_invoke_2;
  v2[3] = &__block_descriptor_40_e5_v8__0l;
  v2[4] = *(a1 + 40);
  MXDispatchSync("central_deactivateEndpoint_block_invoke", "FigEndpoint_Central.m", 1107, 0, 0, v1, v2);
}

void __central_deactivateEndpoint_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    v3 = DerivedStorage;
    *DerivedStorage = 1;
    FigStarkModeControllerRemoveStateChangedHandler(*(DerivedStorage + 24), *(DerivedStorage + 40));
    *(v3 + 40) = 0;
    CMNotificationCenterGetDefaultLocalCenter();
    v4 = *(v3 + 8);
    v5 = FigNotificationCenterRemoveWeakListener();
    *(v3 + 1) = 0;
    *(v3 + 3) = 0;
    if (*(v3 + 16))
    {
      CMSessionGetNotificationCenter(v5);
      v6 = *(v3 + 16);
      CMNotificationCenterRemoveListener();
      v7 = *(v3 + 16);
      *(v3 + 16) = 0;
    }

    v8 = *(v3 + 24);
    if (v8)
    {
      CFRelease(v8);
      *(v3 + 24) = 0;
    }

    v9 = *(v3 + 8);
    if (v9)
    {
      CFRelease(v9);
      *(v3 + 8) = 0;
    }
  }
}

uint64_t central_SetDelegateRemoteControl(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 48);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __central_SetDelegateRemoteControl_block_invoke;
  v7[3] = &unk_1E7AE7140;
  v7[4] = &v8;
  v7[5] = DerivedStorage;
  v7[6] = a2;
  MXDispatchSync("central_SetDelegateRemoteControl", "FigEndpoint_Central.m", 1233, 0, 0, v4, v7);
  v5 = *(v9 + 6);
  _Block_object_dispose(&v8, 8);
  return v5;
}

uint64_t central_RequestCarUI(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = *(DerivedStorage + 48);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __central_RequestCarUI_block_invoke;
  v9[3] = &unk_1E7AE7A48;
  v9[4] = &v10;
  v9[5] = DerivedStorage;
  v9[6] = a2;
  v9[7] = a3;
  MXDispatchSync("central_RequestCarUI", "FigEndpoint_Central.m", 1340, 0, 0, v6, v9);
  v7 = *(v11 + 6);
  _Block_object_dispose(&v10, 8);
  return v7;
}

void sub_1B1870E8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t central_SetHIDInputMode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = *(DerivedStorage + 48);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __central_SetHIDInputMode_block_invoke;
  v9[3] = &unk_1E7AE7A48;
  v9[4] = &v10;
  v9[5] = DerivedStorage;
  v9[6] = a2;
  v9[7] = a3;
  MXDispatchSync("central_SetHIDInputMode", "FigEndpoint_Central.m", 1470, 0, 0, v6, v9);
  v7 = *(v11 + 6);
  _Block_object_dispose(&v10, 8);
  return v7;
}

void sub_1B1870F80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t central_CopyHIDInputMode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = *(DerivedStorage + 48);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __central_CopyHIDInputMode_block_invoke;
  v11[3] = &unk_1E7AE79A8;
  v11[4] = &v12;
  v11[5] = DerivedStorage;
  v11[6] = a2;
  v11[7] = a3;
  v11[8] = a4;
  MXDispatchSync("central_CopyHIDInputMode", "FigEndpoint_Central.m", 1500, 0, 0, v8, v11);
  v9 = *(v13 + 6);
  _Block_object_dispose(&v12, 8);
  return v9;
}