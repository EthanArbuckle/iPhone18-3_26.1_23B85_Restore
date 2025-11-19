uint64_t cs_structuredLightAFAssistHandleStructuredLightAFAssistStreamControlRelinquishedByAnotherClientNotification(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  FigSimpleMutexLock();
  if (sStructuredLightAFTargetStreamSource == a2)
  {
    if (sStructuredLightAFAssistStreamControlledByAnotherClient == a4)
    {
      if (a4)
      {
        v6 = cs_copyActiveCaptureDevice();
        v7 = +[BWFigCaptureDeviceVendor sharedCaptureDeviceVendor];
        v9 = sStructuredLightAFAssistStreamControlledByAnotherClient;
        LODWORD(v7) = [v7 requestControlOfStreams:objc_msgSend(MEMORY[0x1E695DEC8] device:"arrayWithObjects:count:" deviceClientPriority:{&v9, 1), v6, 1}];

        if (!v7)
        {
          sStructuredLightAFAssistStream = sStructuredLightAFAssistStreamControlledByAnotherClient;
          sStructuredLightAFAssistStreamControlledByAnotherClient = 0;
          cs_updateStructuredLightAFEnabledStatus();
        }
      }

      else
      {
        cs_structuredLightAFAssistHandleStructuredLightAFAssistStreamControlRelinquishedByAnotherClientNotification_cold_3();
      }
    }

    else
    {
      cs_structuredLightAFAssistHandleStructuredLightAFAssistStreamControlRelinquishedByAnotherClientNotification_cold_2();
    }
  }

  else
  {
    cs_structuredLightAFAssistHandleStructuredLightAFAssistStreamControlRelinquishedByAnotherClientNotification_cold_1();
  }

  return FigSimpleMutexUnlock();
}

Class __getCCSControlCenterServiceClass_block_invoke(uint64_t a1)
{
  ControlCenterServicesLibrary();
  result = objc_getClass("CCSControlCenterService");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getCCSControlCenterServiceClass_block_invoke_cold_1();
  }

  getCCSControlCenterServiceClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

void ControlCenterServicesLibrary()
{
  v0[0] = 0;
  if (!ControlCenterServicesLibraryCore_frameworkLibrary)
  {
    v0[1] = MEMORY[0x1E69E9820];
    v0[2] = 3221225472;
    v0[3] = __ControlCenterServicesLibraryCore_block_invoke;
    v0[4] = &__block_descriptor_40_e5_v8__0l;
    v0[5] = v0;
    v1 = xmmword_1E799DE48;
    v2 = 0;
    ControlCenterServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!ControlCenterServicesLibraryCore_frameworkLibrary)
  {
    ControlCenterServicesLibrary_cold_1(v0);
  }

  if (v0[0])
  {
    free(v0[0]);
  }
}

uint64_t __ControlCenterServicesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  ControlCenterServicesLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getCCSModulePresentationOptionsClass_block_invoke(uint64_t a1)
{
  ControlCenterServicesLibrary();
  result = objc_getClass("CCSModulePresentationOptions");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getCCSModulePresentationOptionsClass_block_invoke_cold_1();
  }

  getCCSModulePresentationOptionsClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t captureSource_Invalidate(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 12))
  {
    return 0;
  }

  v3 = DerivedStorage;
  v4 = 0;
  v5 = *(DerivedStorage + 8);
  if (v5 == 5)
  {
    v6 = &sAllProprietaryDefaultsCaptureSources;
LABEL_11:
    FigSimpleMutexLock();
    [*v6 removeObject:a1];
    FigSimpleMutexUnlock();
    goto LABEL_12;
  }

  if (v5 == 1)
  {
    FigSimpleMutexLock();
    if (_MergedGlobals_13 == 1 && [*(v3 + 80) device])
    {
      captureSource_Invalidate_cold_1((v3 + 80));
    }

    if ([qword_1ED8451D0 containsObject:a1])
    {
      captureSource_Invalidate_cold_2(a1, &v10);
      v4 = v10;
    }

    else
    {
      v4 = 0;
    }

    FigSimpleMutexUnlock();
    v6 = &sAllVideoCaptureSources;
    goto LABEL_11;
  }

LABEL_12:
  *(v3 + 12) = 1;
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterRemoveListener();
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterRemoveListener();
  if (*(v3 + 8) == 5)
  {
    FigSimpleMutexLock();

    *(v3 + 208) = 0;
    FigSimpleMutexUnlock();
  }

  FigSimpleMutexLock();
  v7 = *(v3 + 72);
  if (v7)
  {
    CFRelease(v7);
    *(v3 + 72) = 0;
  }

  *(v3 + 96) = 0;
  *(v3 + 80) = 0;

  *(v3 + 104) = 0;
  *(v3 + 120) = 0;

  *(v3 + 112) = 0;
  *(v3 + 152) = 0;

  *(v3 + 160) = 0;
  captureSource_turnOffAndTeardownFigFlashlight(a1);
  v8 = *(v3 + 184);
  *(v3 + 184) = 0;

  *(v3 + 240) = 0;
  FigSimpleMutexUnlock();
  if (v4)
  {
    CFRelease(v4);
  }

  [v8 invalidate];

  return 0;
}

void captureSource_Finalize(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1ED844030)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  captureSource_Invalidate(a1);
  if (*(DerivedStorage + 48))
  {
    FigSimpleMutexDestroy();
    *(DerivedStorage + 48) = 0;
  }

  if (*(DerivedStorage + 200))
  {
    FigSimpleMutexDestroy();
    *(DerivedStorage + 200) = 0;
  }

  v4 = *(DerivedStorage + 56);
  if (v4)
  {
    dispatch_release(v4);
    *(DerivedStorage + 56) = 0;
  }
}

uint64_t captureSource_CopyDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = CFGetRetainCount(a1);
  if (*(DerivedStorage + 12))
  {
    v5 = " (invalidated)";
  }

  else
  {
    v5 = "";
  }

  v6 = CFGetAllocator(a1);
  v7 = BWPhotoEncoderStringFromEncodingScheme(*(DerivedStorage + 8));
  return [v3 initWithFormat:@"<FigCaptureSource %p> retainCount: %ld%s, allocator: %p, type: %@, position: %@, active = %d, token = %lld, prewarmEnabled = %d", a1, v4, v5, v6, v7, BWPhotoEncoderStringFromEncodingScheme(*(DerivedStorage + 88)), *(DerivedStorage + 13), *DerivedStorage, *(DerivedStorage + 216)];
}

uint64_t captureSource_UnregisterNotificationForProprietaryDefaultChanges(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 12))
  {

    return FigSignalErrorAtGM();
  }

  else if (a2)
  {
    v5 = DerivedStorage;
    FigSimpleMutexLock();
    v6 = *(v5 + 208);
    FigSimpleMutexUnlock();
    [v6 stopObservingChangesForKey:a2];

    return 0;
  }

  else
  {
    captureSource_UnregisterNotificationForProprietaryDefaultChanges_cold_1(&v7);
    return v7;
  }
}

uint64_t captureSource_UpdateCameraOverrideHistory(uint64_t a1, int a2, void *a3, void *a4, int a5, _BYTE *a6, void **a7)
{
  v7 = a7;
  *a6 = 0;
  *a7 = 0;
  if (*(CMBaseObjectGetDerivedStorage() + 12))
  {
    return 4294954511;
  }

  v58 = a6;
  v59 = a5;
  if (!a5)
  {
    if (dword_1ED844030)
    {
      LODWORD(v71) = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    FigSimpleMutexLock();
    if ([sTemporaryCameraHistoryItems objectForKeyedSubscript:a3])
    {
      v29 = [MEMORY[0x1E695DF70] arrayWithArray:{objc_msgSend(sTemporaryCameraHistoryItems, "objectForKeyedSubscript:", a3)}];
    }

    else
    {
      v29 = [MEMORY[0x1E695DF70] array];
    }

    v30 = v29;
    FigSimpleMutexUnlock();
    v57 = a2;
    if ([v30 count])
    {
      v31 = 0;
      while (!cs_cameraInfosAreEqualExcludingRank(a4, [v30 objectAtIndexedSubscript:{v31, v52, v53}]))
      {
        if (++v31 >= [v30 count])
        {
          goto LABEL_37;
        }
      }

      [v30 removeObjectAtIndex:v31];
      FigSimpleMutexLock();
      v32 = 1;
    }

    else
    {
LABEL_37:
      FigSimpleMutexLock();
      v32 = 0;
      if ([sTemporaryCameraHistoryItems objectForKeyedSubscript:a3])
      {
LABEL_52:
        FigSimpleMutexUnlock();
        v36 = [sCameraHistoriesUpdatedWithOverridingCamera allKeys];
        v71 = 0u;
        v72 = 0u;
        v73 = 0u;
        v74 = 0u;
        v37 = [v36 countByEnumeratingWithState:&v71 objects:v70 count:16];
        if (v37)
        {
          v38 = v37;
          v56 = v32;
          v54 = v7;
          v55 = a1;
          v39 = 0;
          v40 = *v72;
          do
          {
            for (i = 0; i != v38; ++i)
            {
              if (*v72 != v40)
              {
                objc_enumerationMutation(v36);
              }

              v42 = *(*(&v71 + 1) + 8 * i);
              if (cs_cameraInfosAreEqualExcludingRank(a4, [sCameraHistoriesUpdatedWithOverridingCamera objectForKeyedSubscript:{v42, v52, v53}]))
              {
                [sCameraHistoryDownplayOverrideList removeObject:v42];
                [sCameraHistoriesUpdatedWithOverridingCamera setObject:0 forKeyedSubscript:v42];
                v39 = 1;
              }
            }

            v38 = [v36 countByEnumeratingWithState:&v71 objects:v70 count:16];
          }

          while (v38);
          if (v39)
          {
            v7 = v54;
            a1 = v55;
            if (dword_1ED844030)
            {
              v69 = 0;
              v68 = OS_LOG_TYPE_DEFAULT;
              v43 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v44 = v69;
              if (os_log_type_enabled(v43, v68))
              {
                v45 = v44;
              }

              else
              {
                v45 = v44 & 0xFFFFFFFE;
              }

              if (v45)
              {
                _os_log_send_and_compose_impl();
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            FigSimpleMutexLock();
            [sTemporaryCameraHistoryItems setObject:sCameraHistoriesUpdatedWithOverridingCamera forKeyedSubscript:@"camera-histories-updated-with-overriding-camera"];
            [sServerUserDefaults setObject:sTemporaryCameraHistoryItems forKey:@"tmp"];
            FigSimpleMutexUnlock();
            v46 = 1;
          }

          else
          {
            v46 = 0;
            v7 = v54;
            a1 = v55;
          }

          v32 = v56;
        }

        else
        {
          v46 = 0;
        }

        v28 = v32 | v46;
        v24 = v57;
        goto LABEL_74;
      }
    }

    if (dword_1ED844030)
    {
      LODWORD(v71) = 0;
      v33 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v34 = v71;
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v35 = v34;
      }

      else
      {
        v35 = v34 & 0xFFFFFFFE;
      }

      if (v35)
      {
        v60 = 136315907;
        v61 = "cs_removeFromCameraOverrideHistory";
        v62 = 1025;
        v63 = a2;
        v64 = 2113;
        v65 = a3;
        v66 = 2113;
        v67 = v30;
        LODWORD(v53) = 38;
        v52 = &v60;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [sTemporaryCameraHistoryItems setObject:v30 forKeyedSubscript:{a3, v52, v53}];
    [sServerUserDefaults setObject:sTemporaryCameraHistoryItems forKey:@"tmp"];
    goto LABEL_52;
  }

  if (dword_1ED844030)
  {
    LODWORD(v71) = 0;
    v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexLock();
  v17 = a2;
  if ([sTemporaryCameraHistoryItems objectForKeyedSubscript:a3])
  {
    v18 = [MEMORY[0x1E695DF70] arrayWithArray:{objc_msgSend(sTemporaryCameraHistoryItems, "objectForKeyedSubscript:", a3)}];
  }

  else
  {
    v18 = [MEMORY[0x1E695DF70] array];
  }

  v19 = v18;
  FigSimpleMutexUnlock();
  v20 = [objc_msgSend(a4 objectForKeyedSubscript:{@"OverrideRanking", "intValue"}];
  if ([v19 count])
  {
    v21 = 0;
    do
    {
      v22 = [v19 objectAtIndexedSubscript:{v21, v52, v53}];
      if (cs_cameraInfosAreEqualExcludingRank(a4, v22))
      {
        return 0;
      }

      v23 = [objc_msgSend(v22 objectForKeyedSubscript:{@"OverrideRanking", "intValue"}];
      if (v20)
      {
        if (v20 <= v23)
        {
          goto LABEL_20;
        }
      }

      else if (v23 > 0)
      {
LABEL_20:
        if (v21 == 0x7FFFFFFFFFFFFFFFLL)
        {
          break;
        }

        [v19 insertObject:a4 atIndex:v21];
        v24 = v17;
        while (++v21 < [v19 count])
        {
          if (cs_cameraInfosAreEqualExcludingRank(a4, [v19 objectAtIndexedSubscript:v21]))
          {
            [v19 removeObjectAtIndex:v21];
            goto LABEL_22;
          }
        }

        goto LABEL_22;
      }
    }

    while (++v21 < [v19 count]);
  }

  [v19 addObject:{a4, v52, v53}];
  v24 = v17;
LABEL_22:
  if (dword_1ED844030)
  {
    LODWORD(v71) = 0;
    v25 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v26 = v71;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v27 = v26;
    }

    else
    {
      v27 = v26 & 0xFFFFFFFE;
    }

    if (v27)
    {
      v60 = 136315907;
      v61 = "cs_addToCameraOverrideHistory";
      v62 = 1025;
      v63 = v24;
      v64 = 2113;
      v65 = a3;
      v66 = 2113;
      v67 = v19;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexLock();
  [sTemporaryCameraHistoryItems setObject:v19 forKeyedSubscript:a3];
  [sServerUserDefaults setObject:sTemporaryCameraHistoryItems forKey:@"tmp"];
  FigSimpleMutexUnlock();
  v28 = 1;
LABEL_74:
  if (v59 && v28)
  {
    if (dword_1ED844030)
    {
      LODWORD(v71) = 0;
      v47 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v48 = v71;
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        v49 = v48;
      }

      else
      {
        v49 = v48 & 0xFFFFFFFE;
      }

      if (v49)
      {
        v60 = 136315651;
        v61 = "captureSource_UpdateCameraOverrideHistory";
        v62 = 1025;
        v63 = v24;
        v64 = 2113;
        v65 = a3;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    cs_updateCameraHistoryDownplayOverrideListForPreferenceKey(0);
  }

  if (v28)
  {
    *v58 = 1;
    FigSimpleMutexLock();
    v50 = [sTemporaryCameraHistoryItems objectForKeyedSubscript:a3];
    if (v50)
    {
      v51 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v50];
      *v7 = v51;
    }

    else
    {
      v51 = *v7;
    }

    cs_sendNotificationOfNewTransientValue(a1, v51, a3);
    FigSimpleMutexUnlock();
  }

  return 0;
}

uint64_t captureSource_PerformReactionEffect(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 12))
  {

    return FigSignalErrorAtGM();
  }

  else if (a2)
  {
    [*(DerivedStorage + 80) performReactionEffect:a2];
    return 0;
  }

  else
  {
    captureSource_PerformReactionEffect_cold_1(&v5);
    return v5;
  }
}

uint64_t captureSource_SetPixelBufferProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(a1, a2, a3);
}

uint64_t captureSource_CopyWildcardProprietaryDefault(uint64_t a1, uint64_t a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 12))
  {

    return FigSignalErrorAtGM();
  }

  else if (a2)
  {
    if (a3)
    {
      v7 = DerivedStorage;
      FigSimpleMutexLock();
      v8 = *(v7 + 208);
      FigSimpleMutexUnlock();
      v9 = [v8 objectsForWildcardKey:a2];

      [v9 count];
      v10 = v9;
      result = 0;
      *a3 = v10;
    }

    else
    {
      captureSource_CopyWildcardProprietaryDefault_cold_1(&v11);
      return v11;
    }
  }

  else
  {
    captureSource_CopyWildcardProprietaryDefault_cold_2(&v12);
    return v12;
  }

  return result;
}

uint64_t captureSource_SetWildcardProprietaryDefault(uint64_t a1, const __CFString *a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 12))
  {
    if (!a2)
    {
      captureSource_SetWildcardProprietaryDefault_cold_2(&v12);
      return v12;
    }

    if (!a4)
    {
      captureSource_SetWildcardProprietaryDefault_cold_1(&v11);
      return v11;
    }

    v8 = DerivedStorage;
    if (!CFStringHasPrefix(a2, @"signal/"))
    {
      FigSimpleMutexLock();
      v10 = *(v8 + 208);
      FigSimpleMutexUnlock();
      *a4 = [v10 setObject:a3 forWildcardKey:a2];

      return 0;
    }
  }

  return FigSignalErrorAtGM();
}

void cs_sendNotificationOfNewTransientValue(uint64_t a1, void *a2, void *a3)
{
  FigSimpleMutexLock();
  v6 = objc_alloc(MEMORY[0x1E695DEC8]);
  v7 = [v6 initWithArray:sAllProprietaryDefaultsCaptureSources];
  FigSimpleMutexUnlock();
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v31 objects:v30 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v32;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v32 != v10)
        {
          objc_enumerationMutation(v7);
        }

        if (*(*(&v31 + 1) + 8 * i) != a1)
        {
          DerivedStorage = CMBaseObjectGetDerivedStorage();
          FigSimpleMutexLock();
          v13 = *(DerivedStorage + 208);
          FigSimpleMutexUnlock();
          [v13 sendNotificationOfNewTransientValue:a2 forKey:a3];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v31 objects:v30 count:16];
    }

    while (v9);
  }

  if ([a3 isEqualToString:@"signal/request-gestures-default-disabled-notification"])
  {
    if (ReplayKitLibraryCore())
    {
      v14 = getshowReactionsTipSymbolLoc();
      if (a2)
      {
        if (v14)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v15 = [a2 stringByReplacingOccurrencesOfString:@"." withString:@"-"];
            v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"videoeffects/%@/did-show-gestures-default-disabled-notification", v15];
            v17 = CMBaseObjectGetDerivedStorage();
            FigSimpleMutexLock();
            v18 = *(v17 + 208);
            FigSimpleMutexUnlock();
            v19 = [v18 objectForKey:v16];
            if (v19 && (v20 = v19, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v20 BOOLValue])
            {
              v44 = 0;
              v43 = OS_LOG_TYPE_DEFAULT;
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v22 = v44;
              if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v43))
              {
                v23 = v22;
              }

              else
              {
                v23 = v22 & 0xFFFFFFFE;
              }

              if (v23)
              {
                v35 = 136315394;
                v36 = "cs_handleRequestGesturesDefaultDisabledNotificationSignal";
                v37 = 2112;
                v38 = v16;
                _os_log_send_and_compose_impl();
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            else
            {
              v24 = getshowReactionsTipSymbolLoc();
              if (!v24)
              {
                cs_sendNotificationOfNewTransientValue_cold_1();
              }

              v25 = v24(a2, a2);
              v44 = 0;
              v43 = OS_LOG_TYPE_DEFAULT;
              v26 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v27 = v44;
              if (os_log_type_enabled(v26, v43))
              {
                v28 = v27;
              }

              else
              {
                v28 = v27 & 0xFFFFFFFE;
              }

              if (v28)
              {
                v29 = "was not";
                v36 = "cs_handleRequestGesturesDefaultDisabledNotificationSignal";
                v37 = 2080;
                v35 = 136315906;
                if (v25)
                {
                  v29 = "was";
                }

                v38 = v29;
                v39 = 2112;
                v40 = a2;
                v41 = 2112;
                v42 = a2;
                _os_log_send_and_compose_impl();
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
              if (v25)
              {
                [v18 setObject:MEMORY[0x1E695E118] forKey:v16];
              }
            }
          }
        }
      }
    }
  }
}

uint64_t ReplayKitLibraryCore()
{
  if (!ReplayKitLibraryCore_frameworkLibrary)
  {
    ReplayKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  return ReplayKitLibraryCore_frameworkLibrary;
}

uint64_t getshowReactionsTipSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getshowReactionsTipSymbolLoc_ptr;
  v6 = getshowReactionsTipSymbolLoc_ptr;
  if (!getshowReactionsTipSymbolLoc_ptr)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getshowReactionsTipSymbolLoc_block_invoke;
    v2[3] = &unk_1E798FC38;
    v2[4] = &v3;
    __getshowReactionsTipSymbolLoc_block_invoke(v2);
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1ACC5257C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __ReplayKitLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  ReplayKitLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getshowReactionsTipSymbolLoc_block_invoke(uint64_t a1)
{
  v4 = 0;
  v2 = ReplayKitLibraryCore();
  if (!v2)
  {
    __getshowReactionsTipSymbolLoc_block_invoke_cold_1(&v4);
  }

  result = dlsym(v2, "showReactionsTip");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getshowReactionsTipSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t cs_updateCameraHistoryDownplayOverrideListForPreferenceKey(uint64_t a1)
{
  if (a1)
  {
    result = [sCameraHistoryDownplayOverrideList containsObject:a1];
    if (result)
    {
      return result;
    }

    [sCameraHistoryDownplayOverrideList addObject:a1];
  }

  else
  {
    result = [sCameraHistoryDownplayOverrideList count];
    if (!result)
    {
      return result;
    }

    [sCameraHistoryDownplayOverrideList removeAllObjects];
  }

  if (dword_1ED844030)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexLock();
  [sTemporaryCameraHistoryItems setObject:sCameraHistoryDownplayOverrideList forKeyedSubscript:@"camera-history-downplay-override-list"];
  [sServerUserDefaults setObject:sTemporaryCameraHistoryItems forKey:@"tmp"];
  return FigSimpleMutexUnlock();
}

Class __getCMIOExtensionProviderClass_block_invoke(uint64_t a1)
{
  v3[0] = 0;
  if (!CoreMediaIOLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __CoreMediaIOLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E799DE98;
    v5 = 0;
    CoreMediaIOLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!CoreMediaIOLibraryCore_frameworkLibrary)
  {
    __getCMIOExtensionProviderClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("CMIOExtensionProvider");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getCMIOExtensionProviderClass_block_invoke_cold_1();
  }

  getCMIOExtensionProviderClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t __CoreMediaIOLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  CoreMediaIOLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t flatDictionary_register()
{
  sFigFlatDictionaryClass = 0;
  *algn_1ED844C48 = "FigFlatDictionary";
  qword_1ED844C50 = flatDictionary_init;
  unk_1ED844C58 = 0;
  qword_1ED844C60 = flatDictionary_finalize;
  unk_1ED844C68 = 0u;
  unk_1ED844C78 = 0u;
  result = _CFRuntimeRegisterClass();
  sFigFlatDictionaryID = result;
  return result;
}

uint64_t flatDictionaryKeySpec_register()
{
  sFigFlatDictionaryKeySpecClass = 0;
  unk_1ED844BE0 = "FigFlatDictionaryKeySpec";
  qword_1ED844BE8 = flatDictionaryKeySpec_init;
  unk_1ED844BF0 = 0;
  qword_1ED844BF8 = flatDictionaryKeySpec_finalize;
  unk_1ED844C00 = 0u;
  unk_1ED844C10 = 0u;
  result = _CFRuntimeRegisterClass();
  sFigFlatDictionaryKeySpecID = result;
  return result;
}

uint64_t FigFlatDictionaryContainsValueForKey(uint64_t a1, uint64_t a2, BOOL *a3)
{
  if (!a2)
  {
    return 0;
  }

  if (a3)
  {
    v3 = *(a1 + 24);
    if (v3)
    {
      v4 = 0;
      v5 = *(a2 + 4);
      if ((v5 & 0x80000000) == 0)
      {
        v6 = *(v3 + 8);
        if (v5 < *(v6 + 32))
        {
          v4 = *(*(v6 + 40) + 4 * v5) != -1;
        }
      }
    }

    else
    {
      v4 = 0;
    }

    *a3 = v4;
  }

  v7 = *(a1 + 24);
  v8 = *(*(*(v7 + 8) + 40) + 4 * *(a2 + 4));
  if (v8 == -1)
  {
    return 0;
  }

  else
  {
    return (*(*(v7 + 32) + (v8 >> 3)) >> (v8 & 7)) & 1;
  }
}

uint64_t FigFlatDictionaryGetCountOfKeysWithValues(uint64_t a1, int8x8_t a2)
{
  v2 = *(a1 + 24);
  v3 = *(*(v2 + 8) + 36) + 7;
  if (v3 < 8)
  {
    return 0;
  }

  LODWORD(result) = 0;
  v5 = v3 >> 3;
  v6 = (*(v2 + 24) + 12);
  do
  {
    v8 = *v6++;
    v7 = v8;
    if (v8)
    {
      a2.i32[0] = v7;
      a2 = vcnt_s8(a2);
      a2.i16[0] = vaddlv_u8(a2);
      v7 = a2.i32[0];
    }

    result = (v7 + result);
    --v5;
  }

  while (v5);
  return result;
}

uint64_t FigFlatDictionaryGetKeysWithValues(uint64_t a1, uint64_t a2, unsigned int *a3, int8x8_t a4)
{
  result = 0;
  if (a2 && a3)
  {
    v8 = *a3;
    if (v8 >= FigFlatDictionaryGetCountOfKeysWithValues(a1, a4))
    {
      *a3 = 0;
      v9 = *(a1 + 24);
      v10 = *(v9 + 8);
      if (*(v10 + 36))
      {
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v14 = 0;
        do
        {
          v15 = *(*(v10 + 48) + v11);
          if (v15)
          {
            v16 = *(*(v10 + 40) + 4 * *(v15 + 4));
            if (v16 != -1 && ((*(*(v9 + 32) + (v16 >> 3)) >> (v16 & 7)) & 1) != 0)
            {
              *(a2 + 8 * v14) = v15;
              *a3 = ++v12;
              ++v14;
              v9 = *(a1 + 24);
            }
          }

          ++v13;
          v10 = *(v9 + 8);
          v11 += 24;
        }

        while (v13 < *(v10 + 36));
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void FigFlatDictionaryRemoveValue(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a1 + 24);
    if (v3)
    {
      v5 = *(a2 + 4);
      if ((v5 & 0x80000000) == 0)
      {
        v6 = *(v3 + 8);
        if (v5 < *(v6 + 32))
        {
          v7 = *(*(v6 + 40) + 4 * v5);
          if (v7 != -1)
          {
            v8 = *(*(v6 + 48) + 24 * v7 + 8);
            if (flatDictionary_setterCheck(a1))
            {
              v9 = *(a2 + 32);
              v10 = *(a2 + 16) - 7;
              if (v9)
              {
                if (v10 > 1)
                {
                  v11 = *(a2 + 24);
                  v12 = (*(*(a1 + 24) + 40) + v8);
                }

                else
                {
                  v11 = (*(a2 + 24) - 4);
                  *(*(*(a1 + 24) + 40) + v8) = v11;
                  v9 = *(a2 + 32);
                  v12 = (*(*(a1 + 24) + 40) + v8 + 4);
                }

                memcpy(v12, v9, v11);
              }

              else
              {
                v13 = *(a1 + 24);
                if (v10 > 2)
                {
                  v15 = *(v13 + 40);
                  v14 = *(a2 + 24);
                }

                else
                {
                  v14 = *(*(*(v13 + 8) + 48) + 24 * *(*(*(v13 + 8) + 40) + 4 * *(a2 + 4)) + 12);
                  v15 = *(v13 + 40);
                }

                bzero((v15 + v8), v14);
              }

              v16 = *(a1 + 24);
              v17 = *(*(*(v16 + 8) + 40) + 4 * *(a2 + 4));
              *(*(v16 + 32) + (v17 >> 3)) &= ~(1 << (v17 & 7));
            }
          }
        }
      }
    }
  }
}

uint64_t flatDictionary_setterCheck(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v2 = *(a1 + 24);
  v3 = 1;
  if (*(v2 + 16) != 1)
  {
    v4 = FigFlatDictionaryContentCopy(*v2, v2);
    *(v4 + 16) = 1;
    *(a1 + 24) = v4;
    if (atomic_fetch_add_explicit((v2 + 16), 0xFFFFFFFF, memory_order_relaxed) == 1)
    {
      FigFlatDictionaryContentDestroy(v2);
    }
  }

  return v3;
}

uint64_t FigFlatDictionaryGetBackingPointer(uint64_t a1, _DWORD *a2)
{
  v2 = *(a1 + 24);
  if (a2)
  {
    *a2 = *(v2 + 20);
  }

  return *(v2 + 24);
}

uint64_t FigFlatDictionarySetInt16(uint64_t result, uint64_t a2, __int16 a3)
{
  if (a2)
  {
    v3 = result;
    v4 = *(result + 24);
    if (v4)
    {
      v6 = *(a2 + 4);
      if ((v6 & 0x80000000) == 0)
      {
        v7 = *(v4 + 8);
        if (v6 < *(v7 + 32))
        {
          v8 = *(*(v7 + 40) + 4 * v6);
          if (v8 != -1)
          {
            v10 = *(*(v7 + 48) + 24 * v8 + 8);
            result = flatDictionary_setterCheck(result);
            if (result)
            {
              *(*(*(v3 + 24) + 40) + v10) = a3;
              v11 = *(v3 + 24);
              v12 = *(*(*(v11 + 8) + 40) + 4 * *(a2 + 4));
              *(*(v11 + 32) + (v12 >> 3)) |= 1 << (v12 & 7);
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t FigFlatDictionaryGetInt16(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  __dst = 0;
  if (!a2 || (v3 = *(a1 + 24)) == 0 || (v4 = *(a2 + 4), (v4 & 0x80000000) != 0) || (v5 = v3[1], v4 >= *(v5 + 32)) || (v6 = *(*(v5 + 40) + 4 * v4), v6 == -1))
  {
    FigFlatDictionaryKeyGetDefaultValue(a2, &__dst);
    return __dst;
  }

  else
  {
    v7 = *(v3[5] + *(*(v5 + 48) + 24 * v6 + 8));
    if (a3)
    {
      *a3 = (*(v3[4] + (v6 >> 3)) >> (v6 & 7)) & 1;
    }
  }

  return v7;
}

uint64_t FigFlatDictionarySetInt32(uint64_t result, uint64_t a2, int a3)
{
  if (a2)
  {
    v3 = result;
    v4 = *(result + 24);
    if (v4)
    {
      v6 = *(a2 + 4);
      if ((v6 & 0x80000000) == 0)
      {
        v7 = *(v4 + 8);
        if (v6 < *(v7 + 32))
        {
          v8 = *(*(v7 + 40) + 4 * v6);
          if (v8 != -1)
          {
            v10 = *(*(v7 + 48) + 24 * v8 + 8);
            result = flatDictionary_setterCheck(result);
            if (result)
            {
              *(*(*(v3 + 24) + 40) + v10) = a3;
              v11 = *(v3 + 24);
              v12 = *(*(*(v11 + 8) + 40) + 4 * *(a2 + 4));
              *(*(v11 + 32) + (v12 >> 3)) |= 1 << (v12 & 7);
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t FigFlatDictionaryGetInt32(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  __dst = 0;
  if (!a2 || (v3 = *(a1 + 24)) == 0 || (v4 = *(a2 + 4), (v4 & 0x80000000) != 0) || (v5 = v3[1], v4 >= *(v5 + 32)) || (v6 = *(*(v5 + 40) + 4 * v4), v6 == -1))
  {
    FigFlatDictionaryKeyGetDefaultValue(a2, &__dst);
    return __dst;
  }

  else
  {
    result = *(v3[5] + *(*(v5 + 48) + 24 * v6 + 8));
    if (a3)
    {
      *a3 = (*(v3[4] + (v6 >> 3)) >> (v6 & 7)) & 1;
    }
  }

  return result;
}

uint64_t FigFlatDictionarySetInt64(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v3 = result;
    v4 = *(result + 24);
    if (v4)
    {
      v6 = *(a2 + 4);
      if ((v6 & 0x80000000) == 0)
      {
        v7 = *(v4 + 8);
        if (v6 < *(v7 + 32))
        {
          v8 = *(*(v7 + 40) + 4 * v6);
          if (v8 != -1)
          {
            v10 = *(*(v7 + 48) + 24 * v8 + 8);
            result = flatDictionary_setterCheck(result);
            if (result)
            {
              *(*(*(v3 + 24) + 40) + v10) = a3;
              v11 = *(v3 + 24);
              v12 = *(*(*(v11 + 8) + 40) + 4 * *(a2 + 4));
              *(*(v11 + 32) + (v12 >> 3)) |= 1 << (v12 & 7);
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t FigFlatDictionaryGetInt64(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  __dst = 0;
  if (!a2 || (v3 = *(a1 + 24)) == 0 || (v4 = *(a2 + 4), (v4 & 0x80000000) != 0) || (v5 = v3[1], v4 >= *(v5 + 32)) || (v6 = *(*(v5 + 40) + 4 * v4), v6 == -1))
  {
    FigFlatDictionaryKeyGetDefaultValue(a2, &__dst);
    return __dst;
  }

  else
  {
    result = *(v3[5] + *(*(v5 + 48) + 24 * v6 + 8));
    if (a3)
    {
      *a3 = (*(v3[4] + (v6 >> 3)) >> (v6 & 7)) & 1;
    }
  }

  return result;
}

uint64_t FigFlatDictionarySetBool(uint64_t result, uint64_t a2, char a3)
{
  if (a2)
  {
    v3 = result;
    v4 = *(result + 24);
    if (v4)
    {
      v6 = *(a2 + 4);
      if ((v6 & 0x80000000) == 0)
      {
        v7 = *(v4 + 8);
        if (v6 < *(v7 + 32))
        {
          v8 = *(*(v7 + 40) + 4 * v6);
          if (v8 != -1)
          {
            v10 = *(*(v7 + 48) + 24 * v8 + 8);
            result = flatDictionary_setterCheck(result);
            if (result)
            {
              *(*(*(v3 + 24) + 40) + v10) = a3;
              v11 = *(v3 + 24);
              v12 = *(*(*(v11 + 8) + 40) + 4 * *(a2 + 4));
              *(*(v11 + 32) + (v12 >> 3)) |= 1 << (v12 & 7);
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t FigFlatDictionaryGetBool(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  __dst = 0;
  if (!a2 || (v3 = *(a1 + 24)) == 0 || (v4 = *(a2 + 4), (v4 & 0x80000000) != 0) || (v5 = v3[1], v4 >= *(v5 + 32)) || (v6 = *(*(v5 + 40) + 4 * v4), v6 == -1))
  {
    FigFlatDictionaryKeyGetDefaultValue(a2, &__dst);
    return __dst;
  }

  else
  {
    result = *(v3[5] + *(*(v5 + 48) + 24 * v6 + 8));
    if (a3)
    {
      *a3 = (*(v3[4] + (v6 >> 3)) >> (v6 & 7)) & 1;
    }
  }

  return result;
}

uint64_t FigFlatDictionarySetFloat32(uint64_t result, uint64_t a2, float a3)
{
  if (a2)
  {
    v3 = result;
    v4 = *(result + 24);
    if (v4)
    {
      v6 = *(a2 + 4);
      if ((v6 & 0x80000000) == 0)
      {
        v7 = *(v4 + 8);
        if (v6 < *(v7 + 32))
        {
          v8 = *(*(v7 + 40) + 4 * v6);
          if (v8 != -1)
          {
            v10 = *(*(v7 + 48) + 24 * v8 + 8);
            result = flatDictionary_setterCheck(result);
            if (result)
            {
              *(*(*(v3 + 24) + 40) + v10) = a3;
              v11 = *(v3 + 24);
              v12 = *(*(*(v11 + 8) + 40) + 4 * *(a2 + 4));
              *(*(v11 + 32) + (v12 >> 3)) |= 1 << (v12 & 7);
            }
          }
        }
      }
    }
  }

  return result;
}

float FigFlatDictionaryGetFloat32(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  __dst = 0.0;
  if (!a2 || (v3 = *(a1 + 24)) == 0 || (v4 = *(a2 + 4), (v4 & 0x80000000) != 0) || (v5 = v3[1], v4 >= *(v5 + 32)) || (v6 = *(*(v5 + 40) + 4 * v4), v6 == -1))
  {
    FigFlatDictionaryKeyGetDefaultValue(a2, &__dst);
    return __dst;
  }

  else
  {
    result = *(v3[5] + *(*(v5 + 48) + 24 * v6 + 8));
    if (a3)
    {
      *a3 = (*(v3[4] + (v6 >> 3)) >> (v6 & 7)) & 1;
    }
  }

  return result;
}

uint64_t FigFlatDictionarySetFloat64(uint64_t result, uint64_t a2, double a3)
{
  if (a2)
  {
    v3 = result;
    v4 = *(result + 24);
    if (v4)
    {
      v6 = *(a2 + 4);
      if ((v6 & 0x80000000) == 0)
      {
        v7 = *(v4 + 8);
        if (v6 < *(v7 + 32))
        {
          v8 = *(*(v7 + 40) + 4 * v6);
          if (v8 != -1)
          {
            v10 = *(*(v7 + 48) + 24 * v8 + 8);
            result = flatDictionary_setterCheck(result);
            if (result)
            {
              *(*(*(v3 + 24) + 40) + v10) = a3;
              v11 = *(v3 + 24);
              v12 = *(*(*(v11 + 8) + 40) + 4 * *(a2 + 4));
              *(*(v11 + 32) + (v12 >> 3)) |= 1 << (v12 & 7);
            }
          }
        }
      }
    }
  }

  return result;
}

double FigFlatDictionaryGetFloat64(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  __dst = 0.0;
  if (!a2 || (v3 = *(a1 + 24)) == 0 || (v4 = *(a2 + 4), (v4 & 0x80000000) != 0) || (v5 = v3[1], v4 >= *(v5 + 32)) || (v6 = *(*(v5 + 40) + 4 * v4), v6 == -1))
  {
    FigFlatDictionaryKeyGetDefaultValue(a2, &__dst);
    return __dst;
  }

  else
  {
    result = *(v3[5] + *(*(v5 + 48) + 24 * v6 + 8));
    if (a3)
    {
      *a3 = (*(v3[4] + (v6 >> 3)) >> (v6 & 7)) & 1;
    }
  }

  return result;
}

__n128 FigFlatDictionarySetCMTime(uint64_t a1, uint64_t a2, __n128 *a3)
{
  if (a2)
  {
    v4 = *(a1 + 24);
    if (v4)
    {
      v6 = *(a2 + 4);
      if ((v6 & 0x80000000) == 0)
      {
        v7 = *(v4 + 8);
        if (v6 < *(v7 + 32))
        {
          v8 = *(*(v7 + 40) + 4 * v6);
          if (v8 != -1)
          {
            v10 = *(*(v7 + 48) + 24 * v8 + 8);
            if (flatDictionary_setterCheck(a1))
            {
              v12 = (*(*(a1 + 24) + 40) + v10);
              result = *a3;
              v12[1].n128_u64[0] = a3[1].n128_u64[0];
              *v12 = result;
              v13 = *(a1 + 24);
              v14 = *(*(*(v13 + 8) + 40) + 4 * *(a2 + 4));
              *(*(v13 + 32) + (v14 >> 3)) |= 1 << (v14 & 7);
            }
          }
        }
      }
    }
  }

  return result;
}

void FigFlatDictionaryGetCMTime(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X2>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  if (!a2 || (v4 = *(a1 + 24)) == 0 || (v5 = *(a2 + 4), (v5 & 0x80000000) != 0) || (v6 = v4[1], v5 >= *(v6 + 32)) || (v7 = *(*(v6 + 40) + 4 * v5), v7 == -1))
  {
    FigFlatDictionaryKeyGetDefaultValue(a2, a4);
  }

  else
  {
    v8 = (v4[5] + *(*(v6 + 48) + 24 * v7 + 8));
    v9 = *v8;
    a4[2] = *(v8 + 2);
    *a4 = v9;
    if (a3)
    {
      *a3 = (*(v4[4] + (v7 >> 3)) >> (v7 & 7)) & 1;
    }
  }
}

uint64_t FigFlatDictionarySetCGRect(uint64_t result, uint64_t a2, double a3, double a4, double a5, double a6)
{
  if (a2)
  {
    v6 = result;
    v7 = *(result + 24);
    if (v7)
    {
      v9 = *(a2 + 4);
      if ((v9 & 0x80000000) == 0)
      {
        v10 = *(v7 + 8);
        if (v9 < *(v10 + 32))
        {
          v11 = *(*(v10 + 40) + 4 * v9);
          if (v11 != -1)
          {
            v16 = *(*(v10 + 48) + 24 * v11 + 8);
            result = flatDictionary_setterCheck(result);
            if (result)
            {
              v17 = (*(*(v6 + 24) + 40) + v16);
              *v17 = a3;
              v17[1] = a4;
              v17[2] = a5;
              v17[3] = a6;
              v18 = *(v6 + 24);
              v19 = *(*(*(v18 + 8) + 40) + 4 * *(a2 + 4));
              *(*(v18 + 32) + (v19 >> 3)) |= 1 << (v19 & 7);
            }
          }
        }
      }
    }
  }

  return result;
}

double FigFlatDictionaryGetCGRect(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (!a2 || (v5 = *(a1 + 24)) == 0 || (v6 = *(a2 + 4), (v6 & 0x80000000) != 0) || (v7 = v5[1], v6 >= *(v7 + 32)) || (v8 = *(*(v7 + 40) + 4 * v6), v8 == -1))
  {
    v10[4] = v3;
    v10[5] = v4;
    FigFlatDictionaryKeyGetDefaultValue(a2, v10);
    return *v10;
  }

  else
  {
    result = *(v5[5] + *(*(v7 + 48) + 24 * v8 + 8));
    if (a3)
    {
      *a3 = (*(v5[4] + (v8 >> 3)) >> (v8 & 7)) & 1;
    }
  }

  return result;
}

uint64_t FigFlatDictionarySetString(uint64_t a1, uint64_t a2, const void *a3, unsigned int a4)
{
  result = 0;
  if (a2 && a3)
  {
    v7 = *(a1 + 24);
    if (!v7)
    {
      return 1;
    }

    v9 = *(a2 + 4);
    result = 1;
    if ((v9 & 0x80000000) == 0)
    {
      v10 = *(v7 + 8);
      if (v9 < *(v10 + 32))
      {
        v11 = *(*(v10 + 40) + 4 * v9);
        if (v11 != -1)
        {
          v13 = *(*(v10 + 48) + 24 * v11 + 8);
          if (flatDictionary_setterCheck(a1))
          {
            v14 = *(a1 + 24);
            if (*(*(*(v14 + 8) + 48) + 24 * *(*(*(v14 + 8) + 40) + 4 * *(a2 + 4)) + 12) - 4 < a4)
            {
              return 0;
            }

            memcpy((*(v14 + 40) + v13 + 4), a3, a4);
            *(*(*(a1 + 24) + 40) + v13) = a4;
            v15 = *(a1 + 24);
            v16 = *(*(*(v15 + 8) + 40) + 4 * *(a2 + 4));
            result = 1;
            *(*(v15 + 32) + (v16 >> 3)) |= 1 << (v16 & 7);
            return result;
          }

          return 1;
        }
      }
    }
  }

  return result;
}

uint64_t FigFlatDictionaryGetStringSize(uint64_t result, uint64_t a2, _DWORD *a3, _DWORD *a4)
{
  if (a2 && a3 && a4)
  {
    v4 = *(result + 24);
    if (!v4 || (v5 = *(a2 + 4), (v5 & 0x80000000) != 0) || (v6 = *(v4 + 8), v5 >= *(v6 + 32)) || (v7 = *(*(v6 + 40) + 4 * v5), v7 == -1))
    {
      *a4 = 0;
      *a3 = 0;
    }

    else
    {
      v8 = *(v6 + 48) + 24 * v7;
      v9 = *(v8 + 8);
      *a4 = *(v8 + 12) - 4;
      *a3 = *(*(v4 + 40) + v9);
    }
  }

  return result;
}

uint64_t FigFlatDictionaryGetString(uint64_t a1, uint64_t a2, _BYTE *a3, void *__dst, unsigned int *a5)
{
  result = 0;
  if (a2 && __dst && a5)
  {
    v8 = *(a1 + 24);
    if (!v8)
    {
      return 1;
    }

    v10 = *(a2 + 4);
    result = 1;
    if ((v10 & 0x80000000) == 0)
    {
      v11 = *(v8 + 8);
      if (v10 < *(v11 + 32))
      {
        v12 = *(*(v11 + 40) + 4 * v10);
        if (v12 != -1)
        {
          v13 = (*(v8 + 40) + *(*(v11 + 48) + 24 * v12 + 8));
          v14 = *v13;
          if (!*v13 || v14 > *a5)
          {
            return 0;
          }

          memcpy(__dst, v13 + 1, *v13);
          *a5 = v14;
          if (a3)
          {
            v16 = *(a1 + 24);
            v17 = *(*(*(v16 + 8) + 40) + 4 * *(a2 + 4));
            if (v17 == -1)
            {
              LOBYTE(v18) = 0;
            }

            else
            {
              v18 = (*(*(v16 + 32) + (v17 >> 3)) >> (v17 & 7)) & 1;
            }

            *a3 = v18;
          }

          return 1;
        }
      }
    }
  }

  return result;
}

uint64_t FigFlatDictionarySetData(uint64_t a1, uint64_t a2, const void *a3, unsigned int a4)
{
  result = 0;
  if (a2 && a3)
  {
    v7 = *(a1 + 24);
    if (!v7)
    {
      return 1;
    }

    v9 = *(a2 + 4);
    result = 1;
    if ((v9 & 0x80000000) != 0)
    {
      return result;
    }

    v10 = *(v7 + 8);
    if (v9 >= *(v10 + 32))
    {
      return result;
    }

    v11 = *(*(v10 + 40) + 4 * v9);
    if (v11 == -1)
    {
      return result;
    }

    v13 = *(*(v10 + 48) + 24 * v11 + 8);
    if (!flatDictionary_setterCheck(a1))
    {
      return 1;
    }

    v14 = *(a1 + 24);
    if (*(*(*(v14 + 8) + 48) + 24 * *(*(*(v14 + 8) + 40) + 4 * *(a2 + 4)) + 12) - 4 >= a4)
    {
      memcpy((*(v14 + 40) + v13 + 4), a3, a4);
      if (*(a2 + 16) == 8)
      {
        *(*(*(a1 + 24) + 40) + v13) = a4;
      }

      v15 = *(a1 + 24);
      v16 = *(*(*(v15 + 8) + 40) + 4 * *(a2 + 4));
      result = 1;
      *(*(v15 + 32) + (v16 >> 3)) |= 1 << (v16 & 7);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t FigFlatDictionaryGetDataSize(uint64_t result, uint64_t a2, int *a3, _DWORD *a4)
{
  if (a2 && a3)
  {
    v4 = *(result + 24);
    if (!v4 || (v5 = *(a2 + 4), (v5 & 0x80000000) != 0) || (v6 = *(v4 + 8), v5 >= *(v6 + 32)) || (v7 = *(*(v6 + 40) + 4 * v5), v7 == -1))
    {
      if (a4)
      {
        *a4 = 0;
      }

      *a3 = 0;
    }

    else
    {
      v8 = *(v6 + 48);
      v9 = *(v8 + 24 * v7 + 8);
      if (a4)
      {
        *a4 = *(v8 + 24 * v7 + 12) - 4;
      }

      if (*(a2 + 16) == 8)
      {
        v10 = *(*(v4 + 40) + v9);
      }

      else
      {
        v10 = *(v8 + 24 * v7 + 12) - 4;
      }

      *a3 = v10;
    }
  }

  return result;
}

uint64_t FigFlatDictionaryGetData(uint64_t a1, uint64_t a2, _BYTE *a3, void *__dst, unsigned int *a5)
{
  result = 0;
  if (a2 && __dst && a5)
  {
    v8 = *(a1 + 24);
    if (!v8)
    {
      return 1;
    }

    v10 = *(a2 + 4);
    result = 1;
    if ((v10 & 0x80000000) == 0)
    {
      v11 = *(v8 + 8);
      if (v10 < *(v11 + 32))
      {
        v12 = *(*(v11 + 40) + 4 * v10);
        if (v12 != -1)
        {
          v14 = *(v11 + 48);
          v15 = *(v14 + 24 * v12 + 8);
          if (*(a2 + 16) == 8)
          {
            v16 = *(*(v8 + 40) + v15);
            if (!v16)
            {
              return 0;
            }
          }

          else
          {
            v17 = *(v14 + 24 * v12 + 12);
            v16 = v17 - 4;
            if (v17 == 4)
            {
              return 0;
            }
          }

          if (v16 > *a5)
          {
            return 0;
          }

          memcpy(__dst, (*(v8 + 40) + v15 + 4), v16);
          *a5 = v16;
          if (a3)
          {
            v18 = *(a1 + 24);
            v19 = *(*(*(v18 + 8) + 40) + 4 * *(a2 + 4));
            if (v19 == -1)
            {
              LOBYTE(v20) = 0;
            }

            else
            {
              v20 = (*(*(v18 + 32) + (v19 >> 3)) >> (v19 & 7)) & 1;
            }

            *a3 = v20;
          }

          return 1;
        }
      }
    }
  }

  return result;
}

uint64_t FigFlatDictionarySetArrayDataType(uint64_t result, uint64_t a2, int a3)
{
  if (a2)
  {
    v3 = *(result + 24);
    if (v3)
    {
      v4 = *(a2 + 4);
      if ((v4 & 0x80000000) == 0)
      {
        v5 = *(v3 + 8);
        if (v4 < *(v5 + 32))
        {
          v6 = *(*(v5 + 40) + 4 * v4);
          if (v6 != -1)
          {
            *(*(v3 + 40) + *(*(v5 + 48) + 24 * v6 + 8)) = a3;
          }
        }
      }
    }
  }

  return result;
}

uint64_t FigFlatDictionaryGetArrayDataType(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = *(a1 + 24);
  if (!v2)
  {
    return 0;
  }

  result = 0;
  v4 = *(a2 + 4);
  if ((v4 & 0x80000000) == 0)
  {
    v5 = *(v2 + 8);
    if (v4 < *(v5 + 32))
    {
      v6 = *(*(v5 + 40) + 4 * v4);
      if (v6 != -1)
      {
        return *(*(v2 + 40) + *(*(v5 + 48) + 24 * v6 + 8));
      }

      return 0;
    }
  }

  return result;
}

uint64_t flatDictionary_create(uint64_t a1, const __CFAllocator *a2, uint64_t a3, uint64_t a4, char a5)
{
  if (!a3)
  {
    return 0;
  }

  if (!*(a3 + 20))
  {
    return 0;
  }

  v5 = *(a3 + 36);
  if (!v5)
  {
    return 0;
  }

  v8 = 0;
  v9 = (*(a3 + 48) + 12);
  v10 = *(a3 + 36);
  do
  {
    v11 = *v9;
    v9 += 6;
    v8 += v11;
    --v10;
  }

  while (v10);
  if (!v8)
  {
    return 0;
  }

  v12 = FigFlatDictionaryContentCreate(a2, a3, v8 + ((v5 + 7) >> 3) + 12);
  if (!v12)
  {
    return 0;
  }

  v13 = v12;
  MEMORY[0x1B26F02D0](&FigFlatDictionaryGetTypeID_sRegisterFigFlatDictionaryOnce, flatDictionary_register);
  Instance = _CFRuntimeCreateInstance();
  *(Instance + 16) = a5;
  *(Instance + 24) = v13;
  *(v13 + 4) = 1;
  v15 = v13[1];
  if (*(v15 + 9))
  {
    v16 = 0;
    v17 = 0;
    do
    {
      v18 = *(v15 + 6);
      v19 = *(v18 + v16);
      if (!v19)
      {
        goto LABEL_27;
      }

      v20 = *(v19 + 16);
      if (v20 > 0xB)
      {
        goto LABEL_27;
      }

      if (((1 << v20) & 0xC7E) != 0)
      {
        v21 = *(v18 + v16 + 8);
        if (a4)
        {
          v22 = *(a4 + 8 * v17);
          if (v22)
          {
            v23 = *(v19 + 24);
            v24 = v13[5] + v21;
LABEL_24:
            memcpy(v24, v22, v23);
            v29 = *(*(v13[1] + 5) + 4 * *(v19 + 4));
            *(v13[4] + (v29 >> 3)) |= 1 << (v29 & 7);
            goto LABEL_27;
          }
        }

        FigFlatDictionaryKeyGetDefaultValue(v19, v13[5] + v21);
      }

      else if (((1 << v20) & 0x380) != 0)
      {
        v25 = *(v18 + v16 + 8);
        if (!a4 || (v26 = *(a4 + 8 * v17)) == 0)
        {
          if (*(v19 + 32))
          {
            v30 = (*(v19 + 24) - 4);
            *(v13[5] + v25) = v30;
            memcpy(v13[5] + v25 + 4, *(v19 + 32), v30);
          }

          goto LABEL_27;
        }

        v27 = *(v19 + 24) - 4;
        if (v20 == 7)
        {
          v28 = strlen(v26);
          if (v27 >= v28 + 1)
          {
            v27 = v28 + 1;
          }
        }

        *(v13[5] + v25) = v27;
        v22 = *(a4 + 8 * v17);
        v23 = v27;
        v24 = v13[5] + v25 + 4;
        goto LABEL_24;
      }

LABEL_27:
      ++v17;
      v15 = *(*(Instance + 24) + 8);
      v16 += 24;
    }

    while (v17 < *(v15 + 9));
  }

  return Instance;
}

CFTypeRef flatDictionary_copy(const __CFAllocator *a1, uint64_t a2, uint64_t *cf, int a4, char a5)
{
  v6 = a4;
  if (*(cf + 16) | a4)
  {
    goto LABEL_2;
  }

  v17 = CFGetAllocator(cf);
  v18 = *MEMORY[0x1E695E480];
  Default = a1;
  if (*MEMORY[0x1E695E480] == a1)
  {
    Default = CFAllocatorGetDefault();
  }

  if (v18 == v17)
  {
    v17 = CFAllocatorGetDefault();
  }

  if (!CFEqual(Default, v17))
  {
    goto LABEL_2;
  }

  v20 = *cf[3];
  v21 = a2;
  if (v18 == a2)
  {
    v21 = CFAllocatorGetDefault();
  }

  if (v18 == v20)
  {
    v20 = CFAllocatorGetDefault();
  }

  if (CFEqual(v21, v20))
  {

    return CFRetain(cf);
  }

  else
  {
LABEL_2:
    MEMORY[0x1B26F02D0](&FigFlatDictionaryGetTypeID_sRegisterFigFlatDictionaryOnce, flatDictionary_register);
    Instance = _CFRuntimeCreateInstance();
    *(Instance + 16) = v6;
    if (a5)
    {
      goto LABEL_8;
    }

    v11 = *cf[3];
    v12 = *MEMORY[0x1E695E480];
    v13 = a2;
    if (*MEMORY[0x1E695E480] == a2)
    {
      v13 = CFAllocatorGetDefault();
    }

    if (v12 == v11)
    {
      v11 = CFAllocatorGetDefault();
    }

    if (CFEqual(v13, v11))
    {
LABEL_8:
      v14 = FigFlatDictionaryContentCopy(a2, cf[3]);
      *(Instance + 24) = v14;
      v15 = (v14 + 16);
    }

    else
    {
      v22 = cf[3];
      *(Instance + 24) = v22;
      v15 = (v22 + 16);
    }

    atomic_fetch_add(v15, 1u);
    return Instance;
  }
}

uint64_t FigFlatDictionaryCreateKeySpec(uint64_t a1, int a2, unsigned int a3)
{
  NumberOfRegisteredKeys = FigFlatDictionaryKeySpaceGetNumberOfRegisteredKeys(a2);
  MEMORY[0x1B26F02D0](&FigFlatDictionaryKeySpecGetTypeID_sRegisterFigFlatDictionaryKeySpecOnce, flatDictionaryKeySpec_register);
  Instance = _CFRuntimeCreateInstance();
  FigFlatDictionaryKeySpaceGetNumberOfRegisteredKeys(a2);
  v8 = MEMORY[0x1B26EDEF0](a1, 4 * NumberOfRegisteredKeys + 24 * a3, 0x100004052888210, 0);
  *(Instance + 56) = v8;
  *(Instance + 20) = 0;
  *(Instance + 24) = a3;
  *(Instance + 28) = a2;
  *(Instance + 32) = NumberOfRegisteredKeys;
  *(Instance + 40) = v8;
  memset(v8, 255, 4 * NumberOfRegisteredKeys);
  *(Instance + 48) = *(Instance + 56) + 4 * NumberOfRegisteredKeys;
  return Instance;
}

uint64_t FigFlatDictionaryKeySpecAddKey(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  if (*(a1 + 20))
  {
    return 0;
  }

  if (*a2 != *(a1 + 28))
  {
    return 0;
  }

  v9 = *(a1 + 48);
  v10 = *(*(a1 + 40) + 4 * *(a2 + 4));
  if (v10 == -1)
  {
    v13 = *(a1 + 36);
    v14 = *(a1 + 24);
    if (v13 >= v14)
    {
      if (v14 + 4 >= FigFlatDictionaryKeySpaceGetNumberOfRegisteredKeys(*a2))
      {
        NumberOfRegisteredKeys = FigFlatDictionaryKeySpaceGetNumberOfRegisteredKeys(*(a1 + 28));
      }

      else
      {
        NumberOfRegisteredKeys = *(a1 + 24) + 4;
      }

      *(a1 + 24) = NumberOfRegisteredKeys;
      v17 = CFGetAllocator(a1);
      v18 = MEMORY[0x1B26EDF40](v17, *(a1 + 56), 4 * *(a1 + 32) + 24 * *(a1 + 24), 0x100004052888210, 0);
      v19 = *(a1 + 36);
      v20 = v18 + 4 * *(a1 + 32);
      *(a1 + 40) = v18;
      *(a1 + 48) = v20;
      *(a1 + 56) = v18;
      v15 = v20 + 24 * v19;
    }

    else
    {
      v15 = v9 + 24 * v13;
    }

    *v15 = a2;
    if ((*(a2 + 16) - 7) > 2)
    {
      if (*(a2 + 24) <= a3)
      {
        *(v15 + 12) = a3;
      }

      else
      {
        *(v15 + 12) = FigFlatDictionaryKeyGetDefaultValueSize(a2);
      }
    }

    else
    {
      v21 = a3 + 4;
      v22 = *(a2 + 24);
      if (v21 >= v22)
      {
        *(v15 + 12) = v21;
      }

      else
      {
        *(v15 + 12) = v22;
      }
    }

    *(v15 + 16) = a4;
    v23 = *(a1 + 36);
    *(*(a1 + 40) + 4 * *(a2 + 4)) = v23;
    *(a1 + 36) = v23 + 1;
  }

  else
  {
    v11 = v9 + 24 * v10;
    if ((*(a2 + 16) - 7) > 1)
    {
      LODWORD(v12) = *(v11 + 12);
      if (v12 <= a3)
      {
        LODWORD(v12) = a3;
      }
    }

    else
    {
      v12 = a3 + 4;
      if (v12 <= *(v11 + 12))
      {
        LODWORD(v12) = *(v11 + 12);
      }
    }

    *(v11 + 12) = v12;
    *(v11 + 16) |= a4;
  }

  return 1;
}

uint64_t FigFlatDictionaryKeySpecCommit(uint64_t result)
{
  *(result + 20) = 1;
  *(result + 16) = atomic_fetch_add_explicit(sKeySpecNextIdentifier, 1u, memory_order_relaxed) + 1;
  v1 = *(result + 36);
  if (v1)
  {
    v2 = 0;
    v3 = (*(result + 48) + 12);
    do
    {
      *(v3 - 1) = v2;
      v4 = *v3;
      v3 += 6;
      v2 += v4;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t FigFlatDictionaryKeySpecGetIdentifier(uint64_t a1)
{
  if (*(a1 + 20))
  {
    return *(a1 + 16);
  }

  else
  {
    return 0;
  }
}

_DWORD *FigFlatDictionaryKeySpecCreateBinaryForExport(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (!*(a2 + 20))
  {
    return 0;
  }

  v6 = *(a2 + 36);
  if (v6)
  {
    LODWORD(v7) = 0;
    v8 = *(a2 + 48);
    v9 = *(a2 + 36);
    do
    {
      v10 = *v8;
      v8 += 3;
      v7 = v7 + strlen(*(v10 + 8)) + 1;
      --v9;
    }

    while (v9);
    v11 = v7 + 12;
  }

  else
  {
    v11 = 12;
  }

  v13 = (24 * v6);
  v14 = v11 + v13;
  v15 = MEMORY[0x1B26EDEF0](a1, v11 + v13, 0x10000403E1C8BA9, 0);
  v12 = v15;
  if (v15)
  {
    v15[1] = *(a2 + 16);
    *v15 = FigFlatDictionaryKeySpaceGetLabel(*(a2 + 28));
    v12[2] = *(a2 + 36);
    v16 = (v12 + 3);
    memcpy(v12 + 3, *(a2 + 48), v13);
    if (*(a2 + 36))
    {
      v17 = 0;
      v18 = 0;
      v19 = v16 + v13;
      do
      {
        v20 = *v16;
        *v16 = v18;
        v16 += 3;
        v21 = strlen(*(v20 + 8));
        strncpy(&v19[v18], *(v20 + 8), v21 + 1);
        v18 += strlen(*(v20 + 8)) + 1;
        ++v17;
      }

      while (v17 < *(a2 + 36));
    }

    if (a3)
    {
      *a3 = v14;
    }
  }

  return v12;
}

uint64_t FigFlatDictionaryKeySpecReconstructFromBinary(uint64_t a1, int *a2)
{
  MEMORY[0x1B26F02D0](&FigFlatDictionaryKeySpecGetTypeID_sRegisterFigFlatDictionaryKeySpecOnce, flatDictionaryKeySpec_register);
  Instance = _CFRuntimeCreateInstance();
  KeySpaceWithLabel = FigFlatDictionaryKeySpaceGetKeySpaceWithLabel(*a2);
  *(Instance + 28) = KeySpaceWithLabel;
  if (FigFlatDictionaryKeySpaceIsValid(KeySpaceWithLabel))
  {
    v6 = a2[2];
    *(Instance + 16) = a2[1];
    *(Instance + 36) = v6;
    NumberOfRegisteredKeys = FigFlatDictionaryKeySpaceGetNumberOfRegisteredKeys(*(Instance + 28));
    *(Instance + 32) = NumberOfRegisteredKeys;
    *(Instance + 20) = 1;
    v8 = MEMORY[0x1B26EDEF0](a1, 24 * *(Instance + 36) + 4 * NumberOfRegisteredKeys, 0x100004052888210, 0);
    v9 = *(Instance + 36);
    v10 = (v8 + 4 * *(Instance + 32));
    *(Instance + 40) = v8;
    *(Instance + 48) = v10;
    *(Instance + 56) = v8;
    v11 = (a2 + 3);
    memcpy(v10, v11, 24 * v9);
    v12 = *(Instance + 36);
    if (!v12)
    {
      return Instance;
    }

    v13 = 0;
    v14 = 0;
    v15 = &v11[24 * v12];
    v16 = *(Instance + 48);
    while (1)
    {
      *(*(Instance + 48) + v13) = FigFlatDictionaryKeyLookupFromIdentifier(*(Instance + 28), &v15[*(v16 + v13)]);
      v16 = *(Instance + 48);
      v17 = *(v16 + v13);
      if (!v17)
      {
        break;
      }

      *(*(Instance + 40) + 4 * *(v17 + 4)) = v14++;
      v13 += 24;
      if (v14 >= *(Instance + 36))
      {
        return Instance;
      }
    }
  }

  fig_log_get_emitter();
  if (FigSignalErrorAtGM())
  {
    CFRelease(Instance);
    return 0;
  }

  return Instance;
}

uint64_t flatDictionary_createFromBacking(uint64_t a1, const __CFAllocator *a2, uint64_t a3, _DWORD *a4, char a5)
{
  if (a4[2] != *(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 36);
  if (!v6)
  {
    return 0;
  }

  v10 = 0;
  v11 = (*(a3 + 48) + 12);
  v12 = *(a3 + 36);
  do
  {
    v13 = *v11;
    v11 += 6;
    v10 += v13;
    --v12;
  }

  while (v12);
  if (!v10)
  {
    return 0;
  }

  v14 = v10 + ((v6 + 7) >> 3);
  MEMORY[0x1B26F02D0](&FigFlatDictionaryGetTypeID_sRegisterFigFlatDictionaryOnce, flatDictionary_register);
  Instance = _CFRuntimeCreateInstance();
  *(Instance + 16) = a5;
  v16 = FigFlatDictionaryContentCreate(a2, a3, v14 + 12);
  *(Instance + 24) = v16;
  *(v16 + 4) = 1;
  memcpy(v16[3], a4, *(v16 + 5));
  return Instance;
}

uint64_t flatDictionary_init(uint64_t result)
{
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

void flatDictionary_finalize(uint64_t a1)
{
  if (atomic_fetch_add_explicit((*(a1 + 24) + 16), 0xFFFFFFFF, memory_order_relaxed) == 1)
  {
    FigFlatDictionaryContentDestroy(*(a1 + 24));
    *(a1 + 24) = 0;
  }
}

void FigFlatDictionaryContentDestroy(void *a1)
{
  v3 = *a1;
  v2 = *(a1 + 1);
  if (v2)
  {
    CFRelease(v2);
  }

  CFAllocatorDeallocate(v3, *(a1 + 3));

  CFAllocatorDeallocate(v3, a1);
}

double flatDictionaryKeySpec_init(_OWORD *a1)
{
  result = 0.0;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[1] = 0u;
  return result;
}

void flatDictionaryKeySpec_finalize(void *a1)
{
  v2 = CFGetAllocator(a1);
  v3 = a1[7];

  CFAllocatorDeallocate(v2, v3);
}

uint64_t FigFlatDictionaryContentCopy(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x1B26EDEF0](a1, 48, 0x107004071DFF4BBLL, 0);
  v5 = MEMORY[0x1B26EDEF0](a1, *(a2 + 20), 0x10000403E1C8BA9, 0);
  *(v4 + 24) = v5;
  memcpy(v5, *(a2 + 24), *(a2 + 20));
  v6 = *(v4 + 24) + 12;
  v7 = *(a2 + 8);
  v8 = v6 + ((v7[9] + 7) >> 3);
  *(v4 + 32) = v6;
  *(v4 + 40) = v8;
  *v4 = a1;
  *(v4 + 20) = *(a2 + 20);
  *(v4 + 8) = CFRetain(v7);
  *(v4 + 16) = 0;
  return v4;
}

const __CFAllocator **FigFlatDictionaryContentCreate(const __CFAllocator *a1, _DWORD *a2, unsigned int a3)
{
  v6 = MEMORY[0x1B26EDEF0](a1, 48, 0x107004071DFF4BBLL, 0);
  v7 = v6;
  if (v6)
  {
    *(v6 + 1) = 0u;
    *(v6 + 2) = 0u;
    *v6 = 0u;
    v8 = MEMORY[0x1B26EDEF0](a1, a3, 0x10000403E1C8BA9, 0);
    v7[3] = v8;
    if (v8)
    {
      bzero(v8, a3);
      v9 = v7[3];
      *(v9 + 2) = a2[4];
      v10 = (v9 + 12);
      v11 = v9 + ((a2[9] + 7) >> 3) + 12;
      v7[4] = v10;
      v7[5] = v11;
      *v7 = a1;
      v7[1] = CFRetain(a2);
      *(v7 + 5) = a3;
    }

    else
    {
      CFAllocatorDeallocate(a1, v7);
      return 0;
    }
  }

  return v7;
}

void sub_1ACC5CDDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1ACC613A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1ACC629DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id OUTLINED_FUNCTION_154_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v2 + a2) = a1;
  v5 = *(v3 + 3984);

  return objc_alloc_init(v5);
}

uint64_t OUTLINED_FUNCTION_190_0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CMSampleBufferRef sampleBufferOut)
{
  sampleBufferOut = 0;

  return BWCMSampleBufferCreateCopyIncludingMetadata(v10, &sampleBufferOut);
}

uint64_t OUTLINED_FUNCTION_194(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{

  return [a1 countByEnumeratingWithState:a3 objects:a4 count:16];
}

uint64_t OUTLINED_FUNCTION_197(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{

  return [a14 countByEnumeratingWithState:a3 objects:a4 count:16];
}

BOOL OUTLINED_FUNCTION_229(NSObject *a1)
{
  v3 = *(v1 - 101);

  return os_log_type_enabled(a1, v3);
}

uint64_t OUTLINED_FUNCTION_241_0(void *a1, const char *a2)
{

  return [a1 addFrame:v2];
}

uint64_t OUTLINED_FUNCTION_242_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  a14 = a1;

  return [&a10 copy];
}

void OUTLINED_FUNCTION_245()
{
  v3 = *v0;

  [(BWPhotonicEngineNode *)v3 _checkIfProcessingCompletedForNRFProcessorInput:v1];
}

uint64_t OUTLINED_FUNCTION_247_0@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + a1);

  return [v4 objectForKeyedSubscript:v2];
}

uint64_t FigImageControl_LockExposure()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 7464) != 3)
  {
    *(DerivedStorage + 7464) = 3;
    *(DerivedStorage + 7456) = 0;
  }

  return 0;
}

uint64_t FigImageControl_SpotMetering(uint64_t a1, int a2, int a3, int a4, int a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 7464) != 2 || *(DerivedStorage + 7476) != a2 || *(DerivedStorage + 7480) != a3 || *(DerivedStorage + 7484) != a4 || *(DerivedStorage + 7488) != a5)
  {
    *(DerivedStorage + 7464) = 2;
    *(DerivedStorage + 7476) = a2;
    *(DerivedStorage + 7480) = a3;
    *(DerivedStorage + 7484) = a4;
    *(DerivedStorage + 7488) = a5;
    *(DerivedStorage + 7456) = 0;
  }

  return 0;
}

uint64_t FigImageControl_SetSpotMeteringAreaOfInterest(uint64_t a1, int a2, int a3, int a4, int a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 7464) == 2)
  {
    if (*(DerivedStorage + 7476) != a2 || *(DerivedStorage + 7480) != a3 || *(DerivedStorage + 7484) != a4 || *(DerivedStorage + 7488) != a5)
    {
      *(DerivedStorage + 7476) = a2;
      *(DerivedStorage + 7480) = a3;
      *(DerivedStorage + 7484) = a4;
      *(DerivedStorage + 7488) = a5;
      *(DerivedStorage + 7457) = 1;
    }
  }

  else
  {
    FigImageControl_SpotMetering(a1, a2, a3, a4, a5);
  }

  return 0;
}

uint64_t FigImageControl_FlashMetering(uint64_t a1, int a2, int a3, int a4, int a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 7464) != 2 || *(DerivedStorage + 7476) != a2 || *(DerivedStorage + 7480) != a3 || *(DerivedStorage + 7484) != a4 || *(DerivedStorage + 7488) != a5)
  {
    *(DerivedStorage + 7464) = 5;
    *(DerivedStorage + 7476) = a2;
    *(DerivedStorage + 7480) = a3;
    *(DerivedStorage + 7484) = a4;
    *(DerivedStorage + 7488) = a5;
    *(DerivedStorage + 7456) = 0;
  }

  return 0;
}

uint64_t FigImageControl_ManualExposure(float a1, float a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 7464) != 4 || *(DerivedStorage + 7496) != a2 || *(DerivedStorage + 7492) != a1)
  {
    *(DerivedStorage + 7464) = 4;
    *(DerivedStorage + 7496) = a2;
    *(DerivedStorage + 7504) = 0u;
    *(DerivedStorage + 7500) = -1082130432;
    *(DerivedStorage + 7492) = a1;
    *(DerivedStorage + 7456) = 0;
  }

  return 0;
}

uint64_t FigImageControl_ManualExposureWithISO(float a1, double a2, double a3, float a4, uint64_t a5, int a6)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a6 || *(DerivedStorage + 7464) != 4 || *(DerivedStorage + 7500) != a4 || *(DerivedStorage + 7492) != a1 || *(DerivedStorage + 7504) != a2 || *(DerivedStorage + 7512) != a3)
  {
    *(DerivedStorage + 7464) = 4;
    *(DerivedStorage + 7496) = 0;
    *(DerivedStorage + 7500) = a4;
    *(DerivedStorage + 7492) = a1;
    *(DerivedStorage + 7504) = a2;
    *(DerivedStorage + 7512) = a3;
    *(DerivedStorage + 7520) = a6;
    *(DerivedStorage + 7456) = 0;
  }

  return 0;
}

uint64_t unlockAEnow(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = DerivedStorage;
  v4 = MEMORY[0x1E695E4D0];
  if (*(DerivedStorage + 40) == 4)
  {
    *(DerivedStorage + 17737) = 0;
    if (*(DerivedStorage + 1548))
    {
      valuePtr = 0xFFFF;
      v5 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
      if (captureStreamSetPropertyOnActivityScheduler(a1, *off_1E798BAF0, v5))
      {
        unlockAEnow_cold_2();
      }

      CFRelease(v5);
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (captureStreamSetPropertyOnActivityScheduler(a1, *off_1E798BF70, Mutable))
      {
        unlockAEnow_cold_3();
      }

      CFRelease(Mutable);
      if ((v3[1566] & 1) == 0)
      {
        v7 = CFNumberCreate(0, kCFNumberIntType, v3 + 616);
        if (captureStreamSetPropertyOnActivityScheduler(a1, *off_1E798BBD0, v7))
        {
          unlockAEnow_cold_4();
        }

        CFRelease(v7);
      }

      v8 = FigCapturePlatformIdentifier();
      result = FigImageControl_SetExposureStabilityZone(a1, 0, flt_1AD056F08[v8 < 10]);
    }

    else
    {
      result = captureStreamSetPropertyOnActivityScheduler(a1, *off_1E798C248, *v4);
      if (result)
      {
        result = unlockAEnow_cold_5();
      }
    }

    if ((v3[1564] & 1) == 0)
    {
      result = captureStreamSetPropertyOnActivityScheduler(a1, *off_1E798C258, *v4);
      if (result)
      {
        result = unlockAEnow_cold_6();
      }
    }
  }

  else
  {
    result = captureStreamSetPropertyOnActivityScheduler(a1, *off_1E798C248, *MEMORY[0x1E695E4D0]);
    if (result)
    {
      result = unlockAEnow_cold_1();
    }
  }

  if (v3[508] == 1)
  {
    result = captureStreamSetPropertyOnActivityScheduler(a1, *off_1E798C260, *v4);
    if (result)
    {
      result = unlockAEnow_cold_7();
    }
  }

  if (v3[520] == 1)
  {
    result = captureStreamSetPropertyOnActivityScheduler(a1, *off_1E798C268, *v4);
    if (result)
    {
      result = unlockAEnow_cold_8();
    }
  }

  v3[7472] = 0;
  return result;
}

void FigImageControl_InvalidateExposure(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigImageControl_RestoreAEValues(a1);
  if (*(DerivedStorage + 7472) == 1)
  {
    unlockAEnow(a1);
  }

  v3 = *(DerivedStorage + 7560);
  if (v3)
  {
    if (*v3)
    {
      free(*v3);
      v3 = *(DerivedStorage + 7560);
    }

    free(v3);
    *(DerivedStorage + 7560) = 0;
  }
}

void setupExposureWindow(uint64_t a1, __int16 a2, __int16 a3, __int16 a4, __int16 a5, int a6)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if ((*(DerivedStorage + 9084) & 1) == 0)
  {
    v12 = DerivedStorage;
    v13 = *(DerivedStorage + 7552);
    v28 = a5;
    v29 = a4;
    valuePtr = a2;
    v26 = a3;
    if (a2 < 0)
    {
      a4 += a2;
      v29 = a4;
      valuePtr = 0;
      a2 = 0;
    }

    if (a3 < 0)
    {
      v14 = 0;
      a5 += a3;
      v28 = a5;
      v26 = 0;
    }

    else
    {
      v14 = a3;
    }

    if (a4 + a2 >= 1001)
    {
      a4 = 1000 - a2;
      v29 = 1000 - a2;
    }

    if (v14 + a5 >= 961)
    {
      a5 = 960 - v14;
      v28 = 960 - v14;
    }

    if (v13 > a4)
    {
      v29 = v13;
      v15 = (a2 - ((v13 - a4 + (((v13 - a4) & 0x8000) >> 15)) >> 1));
      v16 = v15 & ~(v15 >> 31);
      valuePtr = v16;
      if (v16 + v13 >= 1001)
      {
        valuePtr = 1000 - v13;
      }
    }

    if (v13 > a5)
    {
      v28 = v13;
      v17 = (v13 - a5 + (((v13 - a5) & 0x8000) >> 15));
      v18 = (v14 - (v17 >> 1)) & ~((v14 - (v17 >> 1)) >> 31);
      v26 = v18;
      if (v18 + v13 >= 961)
      {
        v26 = 960 - v13;
      }
    }

    *keys = 0u;
    v34 = 0u;
    *values = 0u;
    v31 = 0u;
    v32 = 0;
    v19 = *off_1E798A280;
    v35 = 0;
    keys[0] = v19;
    v20 = *MEMORY[0x1E695E480];
    values[0] = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt16Type, &valuePtr);
    keys[1] = *off_1E798A2B0;
    values[1] = CFNumberCreate(v20, kCFNumberSInt16Type, &v26);
    *&v34 = *off_1E798A2C0;
    *&v31 = CFNumberCreate(v20, kCFNumberSInt16Type, &v29);
    *(&v34 + 1) = *off_1E798A288;
    *(&v31 + 1) = CFNumberCreate(v20, kCFNumberSInt16Type, &v28);
    v25 = a6 ^ 1;
    v35 = *off_1E798A2B8;
    v32 = CFNumberCreate(v20, kCFNumberIntType, &v25);
    v21 = CFDictionaryCreate(v20, keys, values, 5, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v22 = 0;
    v25 = 0;
    do
    {
      CFRelease(values[v22]);
      v23 = v25;
      v22 = ++v25;
    }

    while (v23 < 4);
    v24 = *(v12 + 7544);
    if (v24)
    {
      CFRelease(v24);
    }

    *(v12 + 7544) = v21;
    atomic_fetch_add_explicit((v12 + 7460), 1u, memory_order_relaxed);
  }
}

uint64_t exposure_table_initialize(uint64_t a1, CFDictionaryRef theDict)
{
  if (!a1)
  {
    exposure_table_initialize_cold_10();
    return 4294954516;
  }

  if (!theDict)
  {
    exposure_table_initialize_cold_9();
    return 4294954516;
  }

  *(a1 + 16) = xmmword_1AD056F40;
  v4 = (a1 + 16);
  Value = CFDictionaryGetValue(theDict, @"ExposureDelta");
  if (Value)
  {
    v6 = Value;
    v7 = CFGetTypeID(Value);
    if (v7 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v6, kCFNumberDoubleType, v4);
      if (*v4 > 1.0)
      {
        *v4 = 1.0 / *v4;
      }
    }
  }

  v8 = CFDictionaryGetValue(theDict, @"StabilityZone");
  if (v8)
  {
    v9 = v8;
    v10 = CFGetTypeID(v8);
    if (v10 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v9, kCFNumberDoubleType, v4 + 1);
      v11 = v4[1];
      if (v11 > 1.0)
      {
        v4[1] = 1.0 / v11;
      }
    }
  }

  v12 = CFDictionaryGetValue(theDict, @"IntegrationTime");
  if (!v12)
  {
    return 4294954516;
  }

  v13 = v12;
  v14 = CFGetTypeID(v12);
  if (v14 != CFArrayGetTypeID())
  {
    return 4294954516;
  }

  v15 = CFDictionaryGetValue(theDict, @"MaxGain");
  if (!v15)
  {
    return 4294954516;
  }

  v16 = v15;
  v17 = CFGetTypeID(v15);
  if (v17 != CFArrayGetTypeID())
  {
    return 4294954516;
  }

  Count = CFArrayGetCount(v13);
  if (Count != CFArrayGetCount(v16))
  {
    return 4294954516;
  }

  theArray = v16;
  v19 = malloc_type_malloc(48 * Count, 0x1000040D315E998uLL);
  ValueAtIndex = CFArrayGetValueAtIndex(v13, 0);
  if (!ValueAtIndex)
  {
    exposure_table_initialize_cold_8();
    goto LABEL_55;
  }

  v21 = ValueAtIndex;
  v22 = CFGetTypeID(ValueAtIndex);
  if (v22 != CFNumberGetTypeID())
  {
    goto LABEL_55;
  }

  valuePtr = 0.0;
  CFNumberGetValue(v21, kCFNumberDoubleType, &valuePtr);
  if (valuePtr <= 0.0)
  {
    exposure_table_initialize_cold_7();
LABEL_55:
    v43 = 4294954516;
    if (v19)
    {
      goto LABEL_56;
    }

    return v43;
  }

  if (valuePtr > 1.0)
  {
    valuePtr = 1.0 / valuePtr;
  }

  if (Count < 1)
  {
LABEL_45:
    exposure_table_initialize_cold_2();
    goto LABEL_55;
  }

  v23 = 0;
  v24 = 0;
  v45 = 2 * Count;
  do
  {
    v25 = Count;
    v26 = v19;
    v47 = 0.0;
    v48 = 0.0;
    v27 = CFArrayGetValueAtIndex(v13, v23);
    if (!v27)
    {
      exposure_table_initialize_cold_6();
LABEL_54:
      v19 = v26;
      goto LABEL_55;
    }

    v28 = v27;
    v29 = CFGetTypeID(v27);
    if (v29 != CFNumberGetTypeID())
    {
      goto LABEL_54;
    }

    v30 = CFArrayGetValueAtIndex(theArray, v23);
    if (!v30)
    {
      exposure_table_initialize_cold_5();
      goto LABEL_54;
    }

    v31 = v30;
    v32 = CFGetTypeID(v28);
    if (v32 != CFNumberGetTypeID())
    {
      goto LABEL_54;
    }

    CFNumberGetValue(v28, kCFNumberDoubleType, &v48);
    CFNumberGetValue(v31, kCFNumberDoubleType, &v47);
    v33 = v48;
    if (v48 > 1.0)
    {
      v33 = 1.0 / v48;
      v48 = 1.0 / v48;
    }

    v34 = valuePtr;
    if (valuePtr <= 0.0)
    {
      exposure_table_initialize_cold_4();
      goto LABEL_54;
    }

    v35 = v47;
    if (v47 < 1.0)
    {
      exposure_table_initialize_cold_3();
      goto LABEL_54;
    }

    v19 = v26;
    v36 = *v4;
    if (*v4 <= 0.0 || v36 >= 1.0)
    {
      exposure_table_initialize_cold_1();
      v40 = -1;
      Count = v25;
    }

    else
    {
      v50[0] = v24;
      v50[1] = 0;
      v51 = v33;
      v52 = v47;
      exposure_table_fill_metric(v50, valuePtr, v36);
      v37 = v52;
      Count = v25;
      do
      {
        v38 = v50[0]++;
        if (v38 > 4094)
        {
          v40 = -1;
          goto LABEL_40;
        }

        v39 = v37;
        exposure_table_fill_metric(v50, v34, v36);
        v37 = v52;
      }

      while (v52 < v35);
      if (v35 - v39 < v52 - v35)
      {
        v40 = v50[0] - 1;
      }

      else
      {
        v40 = v50[0];
      }
    }

LABEL_40:
    v41 = &v19[48 * v23];
    *v41 = v24;
    *(v41 + 1) = 0;
    *(v41 + 1) = v33;
    *(v41 + 2) = v35;
    v42 = &v19[24 * ((2 * v23) | 1)];
    *v42 = v40;
    *(v42 + 1) = 0;
    *(v42 + 1) = v33;
    *(v42 + 2) = v35;
    v24 = v40 + 1;
    ++v23;
  }

  while (v23 != Count);
  if ((v40 - 4096) <= 0xFFFFF000)
  {
    goto LABEL_45;
  }

  v43 = 0;
  *a1 = exposure_table_create_lookup_table(v19, v45, *(a1 + 16));
  *(a1 + 8) = v40;
LABEL_56:
  free(v19);
  return v43;
}

uint64_t FigImageControl_FusionFaceDetectionMetering(uint64_t a1, int a2, int a3, int a4, int a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 7464) != 10 || *(DerivedStorage + 7476) != a2 || *(DerivedStorage + 7480) != a3 || *(DerivedStorage + 7484) != a4 || *(DerivedStorage + 7488) != a5)
  {
    *(DerivedStorage + 7464) = 10;
    *(DerivedStorage + 7476) = a2;
    *(DerivedStorage + 7480) = a3;
    *(DerivedStorage + 7484) = a4;
    *(DerivedStorage + 7488) = a5;
    *(DerivedStorage + 7456) = 0;
  }

  return 0;
}

uint64_t FigImageControl_SetFusionFaceDetectionMeteringAreaOfInterest(uint64_t a1, int a2, int a3, int a4, int a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 7464) == 10)
  {
    if (*(DerivedStorage + 7476) != a2 || *(DerivedStorage + 7480) != a3 || *(DerivedStorage + 7484) != a4 || *(DerivedStorage + 7488) != a5)
    {
      *(DerivedStorage + 7476) = a2;
      *(DerivedStorage + 7480) = a3;
      *(DerivedStorage + 7484) = a4;
      *(DerivedStorage + 7488) = a5;
      *(DerivedStorage + 7457) = 1;
    }
  }

  else
  {
    FigImageControl_FusionFaceDetectionMetering(a1, a2, a3, a4, a5);
  }

  return 0;
}

char *exposure_table_create_lookup_table(uint64_t a1, unint64_t a2, double a3)
{
  if (!a1)
  {
    exposure_table_create_lookup_table_cold_4();
    return 0;
  }

  v3 = a2 - 1;
  if (a2 <= 1)
  {
    exposure_table_create_lookup_table_cold_3();
    return 0;
  }

  v5 = *(a1 + 24 * v3);
  if (v5 <= 0)
  {
    exposure_table_create_lookup_table_cold_2();
    return 0;
  }

  v7 = *(a1 + 8);
  v8 = malloc_type_malloc(24 * v5 + 24, 0x1000040D315E998uLL);
  v9 = 0;
  v10 = 0;
  while (1)
  {
    v11 = (a1 + 24 * v9);
    v17 = *v11;
    v18 = *(v11 + 2);
    v12 = *(v11 + 6);
    if (v12 < v10)
    {
      break;
    }

    if (v10 < v12)
    {
      v13 = &v8[24 * v10];
      v14 = v12 - v10;
      do
      {
        LODWORD(v17) = v10;
        exposure_table_fill_metric(&v17, v7, a3);
        v15 = v17;
        *(v13 + 2) = v18;
        *v13 = v15;
        v13 += 24;
        ++v10;
        --v14;
      }

      while (v14);
    }

    ++v9;
    v10 = v12;
    if (v9 == v3)
    {
      return v8;
    }
  }

  exposure_table_create_lookup_table_cold_1(&v17, v8, &v19);
  return v19;
}

uint64_t exposure_table_fill_metric(uint64_t result, double a2, double a3)
{
  if (!result)
  {
    return exposure_table_fill_metric_cold_3();
  }

  if (a2 <= 0.0)
  {
    return exposure_table_fill_metric_cold_2();
  }

  v3 = 1.0;
  if (a3 <= 0.0 || a3 >= 1.0)
  {
    return exposure_table_fill_metric_cold_1();
  }

  v5 = *result;
  if (*result >= 1)
  {
    v6 = a3 + 1.0;
    do
    {
      v3 = v6 * v3;
      --v5;
    }

    while (v5);
  }

  *(result + 16) = a2 / *(result + 8) * v3;
  return result;
}

__CFString *FigCaptureQOSClassToString(uint64_t a1)
{
  if (a1 > 20)
  {
    if (a1 == 21)
    {
      return @"QOS_CLASS_DEFAULT";
    }

    if (a1 != 33)
    {
      if (a1 == 25)
      {
        return @"QOS_CLASS_USER_INITIATED";
      }

      return [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown QOS class %d", a1];
    }

    return @"QOS_CLASS_USER_INTERACTIVE";
  }

  else
  {
    if (!a1)
    {
      return @"QOS_CLASS_UNSPECIFIED";
    }

    if (a1 != 9)
    {
      if (a1 == 17)
      {
        return @"QOS_CLASS_UTILITY";
      }

      return [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown QOS class %d", a1];
    }

    return @"QOS_CLASS_BACKGROUND";
  }
}

__SecTask *FigCaptureClientHasPrivateCaptureEntitlement(__SecTask *result)
{
  if (result)
  {
    return FigCaptureClientHasEntitlementWithSecTask(result, @"com.apple.private.avfoundation.capture.allow");
  }

  return result;
}

uint64_t FigCaptureCurrentProcessIsMediaserverd()
{
  v0 = SecTaskCreateFromSelf(*MEMORY[0x1E695E480]);
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = SecTaskCopySigningIdentifier(v0, 0);
  v3 = [(__CFString *)v2 isEqualToString:0x1F2170190];

  CFRelease(v1);
  return v3;
}

uint64_t FigCaptureClientIsInternalCommandLineTool(_OWORD *a1)
{
  v1 = *MEMORY[0x1E695E480];
  v2 = a1[1];
  *v7.val = *a1;
  *&v7.val[4] = v2;
  v3 = SecTaskCreateWithAuditToken(v1, &v7);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  IsRunningInInternalCommandLineToolWithSecTask = FigCaptureClientIsRunningInInternalCommandLineToolWithSecTask(v3);
  CFRelease(v4);
  return IsRunningInInternalCommandLineToolWithSecTask;
}

uint64_t FigCaptureClientIsRunningInInternalCommandLineToolWithSecTask(__SecTask *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = SecTaskCopySigningIdentifier(a1, 0);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [(__CFString *)v1 isEqualToString:0x1F2185190];

  return v3;
}

__SecTask *FigCaptureClientIsWebBrowserRenderingExtension(_OWORD *a1)
{
  v1 = a1[1];
  v3[0] = *a1;
  v3[1] = v1;
  return FigCaptureClientHasEntitlement(v3, @"com.apple.developer.web-browser-engine.rendering");
}

__SecTask *FigCaptureClientIsNonStandardWithSecTask(__SecTask *result)
{
  if (result)
  {
    return FigCaptureClientHasEntitlementWithSecTask(result, @"com.apple.private.avfoundation.capture.nonstandard-client.allow");
  }

  return result;
}

uint64_t FigCaptureClientIsRunningInCameraOrDerivative(_OWORD *a1)
{
  v1 = *MEMORY[0x1E695E480];
  v2 = a1[1];
  *v7.val = *a1;
  *&v7.val[4] = v2;
  v3 = SecTaskCreateWithAuditToken(v1, &v7);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  IsRunningInCameraOrDerivativeWithSecTask = FigCaptureClientIsRunningInCameraOrDerivativeWithSecTask(v3);
  CFRelease(v4);
  return IsRunningInCameraOrDerivativeWithSecTask;
}

uint64_t FigCaptureClientIsRunningInCameraOrDerivativeWithSecTask(__SecTask *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = SecTaskCopySigningIdentifier(a1, 0);
  if (!v1)
  {
    return 0;
  }

  v4 = v1;
  v2 = FigCaptureClientApplicationIDIsCameraOrDerivative(v1);

  return v2;
}

uint64_t __FigCaptureClientApplicationIDIsFaceTimeVariant_block_invoke()
{
  result = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{0x1F2170190, 0x1F21851B0, 0x1F2185490, 0x1F21852D0, @"com.apple.VideoConference.AVConferenceTestRunneriOS", @"com.apple.AVConferenceTestRunnertvOS", @"com.apple.FaceTime.FaceTimeNotificationCenterService", @"com.apple.TelephonyUtilities", @"com.apple.facetime.legacy", @"com.apple.facetime.debug", 0}];
  qword_1ED8451E0 = result;
  return result;
}

uint64_t __FigCaptureClientApplicationIDIsMagnifier_block_invoke()
{
  result = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{0x1F2185390, 0x1F21853B0, 0}];
  qword_1ED845210 = result;
  return result;
}

uint64_t __FigCaptureClientApplicationIDIsVoiceOver_block_invoke()
{
  result = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{0x1F2185630, 0}];
  qword_1ED845220 = result;
  return result;
}

uint64_t FigCaptureIsRunningInVirtualization()
{
  if (FigCaptureIsRunningInVirtualization_sOnceToken != -1)
  {
    FigCaptureIsRunningInVirtualization_cold_1();
  }

  return FigCaptureIsRunningInVirtualization_sAnswer;
}

uint64_t __FigCaptureIsRunningInVirtualization_block_invoke()
{
  v2 = 0;
  v1 = 4;
  result = sysctlbyname("kern.hv_vmm_present", &v2, &v1, 0, 0);
  if (!result)
  {
    FigCaptureIsRunningInVirtualization_sAnswer = v2 != 0;
  }

  return result;
}

void __FigCaptureExternalCameraReplacesBuiltIn_block_invoke()
{
  if (FigCaptureIsRunningInVirtualization_sOnceToken != -1)
  {
    FigCaptureIsRunningInVirtualization_cold_1();
  }

  FigCaptureExternalCameraReplacesBuiltIn_sExternalReplacesBuiltIn = FigCaptureIsRunningInVirtualization_sAnswer;
}

void __FigCaptureGetSupportedPrewarmingBundleIdentifiers_block_invoke()
{
  if (!FigCaptureGetSupportedPrewarmingBundleIdentifiers_bundleIdentifiers)
  {
    v0[0] = 0x1F216ED50;
    v0[1] = 0x1F2185310;
    FigCaptureGetSupportedPrewarmingBundleIdentifiers_bundleIdentifiers = [MEMORY[0x1E695DEC8] arrayWithObjects:v0 count:2];
  }
}

void FigCaptureInitializeSingletons()
{
  if (FigCaptureInitializeSingletons_onceToken != -1)
  {
    FigCaptureInitializeSingletons_cold_1();
  }
}

FigContinuityCaptureNotificationMonitor *__FigCaptureInitializeSingletons_block_invoke()
{
  +[FigCaptureCameraParameters sharedInstance];
  +[BWFigCaptureAttachedAccessoriesMonitor sharedAttachedAccessoriesMonitor];
  +[BWAutoFocusPositionSensorMonitor sharedInstance];
  +[BWCoreAnalyticsReporter sharedInstance];
  +[FigCaptureSessionObservatory sharedObservatory];
  +[FigCaptureDisplayLayoutMonitor sharedDisplayLayoutMonitor];

  return +[FigContinuityCaptureNotificationMonitor sharedInstance];
}

uint64_t FigCaptureXPCServerStart(uint64_t a1, uint64_t a2, const __CFDictionary *a3)
{
  if (qword_1ED845228 != -1)
  {
    FigCaptureXPCServerStart_cold_1();
  }

  if (FigCaptureIsDebuggerOrSlowAllocationPathEnabled())
  {
    v4 = *MEMORY[0x1E695E480];
    if (a3)
    {
      Count = CFDictionaryGetCount(a3);
      MutableCopy = CFDictionaryCreateMutableCopy(v4, Count, a3);
    }

    else
    {
      MutableCopy = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    }

    v8 = MutableCopy;
    FigCFDictionarySetInt32();
    v7 = v8;
  }

  else
  {
    v7 = 0;
  }

  if (fcu_registerForGPUErrorNotifications_onceToken != -1)
  {
    FigCaptureXPCServerStart_cold_2();
  }

  if (fcu_registerForANEErrorNotifications_onceToken != -1)
  {
    FigCaptureXPCServerStart_cold_3();
  }

  v9 = FigXPCServerStart();
  if (v7)
  {
    CFRelease(v7);
  }

  return v9;
}

uint64_t __FigCaptureAudiomxdSupportEnabled_block_invoke()
{
  result = _os_feature_enabled_impl();
  FigCaptureAudiomxdSupportEnabled_sCaptureAudiomxdSupportEnabled = result;
  return result;
}

uint64_t FigCaptureCameracapturedEnabled()
{
  if (FigCaptureCameracapturedEnabled_sOnceToken != -1)
  {
    FigCaptureCameracapturedEnabled_cold_1();
  }

  return FigCaptureCameracapturedEnabled_sCameracapturedEnabled;
}

uint64_t __FigCaptureCameracapturedEnabled_block_invoke()
{
  result = _os_feature_enabled_impl();
  FigCaptureCameracapturedEnabled_sCameracapturedEnabled = result;
  return result;
}

BOOL FigCaptureVideoCodecTypeSpecifiesCVPixelBufferType(int a1)
{
  if (a1 == 846624121)
  {
    return 1;
  }

  v2 = 0;
  do
  {
    v3 = v2;
    if (v2 == 17)
    {
      break;
    }

    v4 = *&FigCaptureVideoCodecTypeSpecifiesCVPixelBufferType_cvPixelFormatTypesThatAreCMVideoCodecTypes[4 * v2++ + 4];
  }

  while (v4 != a1);
  return v3 < 0x11;
}

uint64_t FigCaptureSceneIlluminationValueFromLuxLevel(void *a1, unsigned int a2)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0xFFFFFFFFLL;
  }

  [a1 floatValue];
  if (v4 < 0.0)
  {
    return 0xFFFFFFFFLL;
  }

  result = ((v4 * 1000.0) + 0.5);
  if (a2 != -1)
  {
    return (result * 0.0980392157 + a2 * 0.901960784 + 0.5);
  }

  return result;
}

uint64_t __FigCaptureDeviceIORegValuesByKeys_block_invoke()
{
  result = FigCaptureGetCameraDriverService();
  if (result)
  {
    v1 = result;
    v21[0] = @"CmClValidationStatus";
    v21[1] = @"CmPMValidationStatus";
    v21[2] = @"FCClValidationStatus";
    v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:3];
    v3 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v2, "count")}];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    obj = v2;
    v4 = [v2 countByEnumeratingWithState:&v17 objects:v16 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v18;
      v7 = *MEMORY[0x1E695E480];
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v18 != v6)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v17 + 1) + 8 * i);
          v10 = IORegistryEntrySearchCFProperty(v1, "IODeviceTree", v9, v7, 1u);
          if (v10)
          {
            v11 = v10;
            if ([v10 isEqualToString:@"Pass"])
            {
              v12 = 1;
            }

            else if ([v11 isEqualToString:@"Fail"])
            {
              v12 = 2;
            }

            else if ([v11 isEqualToString:@"Invalid"])
            {
              v12 = 3;
            }

            else if ([v11 isEqualToString:@"Override"])
            {
              v12 = 4;
            }

            else if ([v11 isEqualToString:@"Unknown"])
            {
              v12 = 5;
            }

            else
            {
              v12 = 6;
            }
          }

          else
          {
            v12 = 0;
          }

          [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", v12), v9}];
        }

        v5 = [obj countByEnumeratingWithState:&v17 objects:v16 count:16];
      }

      while (v5);
    }

    v13 = [v3 count];
    if (v13)
    {
      v13 = [v3 copy];
    }

    FigCaptureDeviceIORegValuesByKeys_sDeviceIORegValuesByKeys = v13;
    return FigCaptureReleaseCameraDriverService(v1);
  }

  else if (dword_1ED844670)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}

uint64_t __FigCaptureDeviceCoreRepairStatusesByKeys_block_invoke()
{
  v18[0] = @"RearCameraAssembly";
  v18[1] = @"FrontCameraAssembly";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
  v11 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v0, "count")}];
  if (FigCapturePlatformIdentifier() >= 7)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v1 = [v0 countByEnumeratingWithState:&v14 objects:v13 count:16];
    if (v1)
    {
      v2 = v1;
      v3 = *v15;
      do
      {
        for (i = 0; i != v2; ++i)
        {
          if (*v15 != v3)
          {
            objc_enumerationMutation(v0);
          }

          v5 = *(*(&v14 + 1) + 8 * i);
          if ([v5 isEqualToString:@"RearCameraAssembly"])
          {
            v6 = 1026;
          }

          else
          {
            if (![v5 isEqualToString:@"FrontCameraAssembly"])
            {
              continue;
            }

            v6 = 1027;
          }

          v12 = 0;
          v20 = 0;
          v21 = &v20;
          v22 = 0x2020000000;
          v7 = getCRGetComponentStateSymbolLoc_ptr;
          v23 = getCRGetComponentStateSymbolLoc_ptr;
          if (!getCRGetComponentStateSymbolLoc_ptr)
          {
            v19[0] = MEMORY[0x1E69E9820];
            v19[1] = 3221225472;
            v19[2] = __getCRGetComponentStateSymbolLoc_block_invoke;
            v19[3] = &unk_1E798FC38;
            v19[4] = &v20;
            __getCRGetComponentStateSymbolLoc_block_invoke(v19);
            v7 = v21[3];
          }

          _Block_object_dispose(&v20, 8);
          if (!v7)
          {
            __FigCaptureDeviceCoreRepairStatusesByKeys_block_invoke_cold_1();
          }

          v8 = v7(v6, &v12);
          if (v12)
          {
          }

          else
          {
            if (v8 < 5)
            {
              v9 = v8 + 1;
            }

            else
            {
              v9 = 0;
            }

            [v11 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", v9), v5}];
          }
        }

        v2 = [v0 countByEnumeratingWithState:&v14 objects:v13 count:16];
      }

      while (v2);
    }
  }

  result = [v11 count];
  if (result)
  {
    result = [v11 copy];
  }

  FigCaptureDeviceCoreRepairStatusesByKeys_sDeviceCoreRepairStatusesByKeys = result;
  return result;
}

uint64_t FigCaptureDeviceCoreRepairStatusForPortType(uint64_t a1)
{
  v2 = FigCaptureDeviceCoreRepairStatusesByKeys();
  v3 = *off_1E798A0D0;
  v12[0] = *off_1E798A0C0;
  v12[1] = v3;
  v4 = *off_1E798A0C8;
  v12[2] = *off_1E798A0D8;
  v12[3] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:4];
  v6 = *off_1E798A0F8;
  v11[0] = *off_1E798A0E0;
  v11[1] = v6;
  v7 = *off_1E798A0F0;
  v11[2] = *off_1E798A0E8;
  v11[3] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:4];
  if ([v5 containsObject:a1])
  {
    v9 = @"RearCameraAssembly";
  }

  else
  {
    result = [v8 containsObject:a1];
    if (!result)
    {
      return result;
    }

    v9 = @"FrontCameraAssembly";
  }

  return [objc_msgSend(v2 objectForKeyedSubscript:{v9), "intValue"}];
}

uint64_t FigCaptureIsWombatEnabled(_DWORD *a1)
{
  if (FigCaptureAudiomxdSupportEnabled_sOnceToken != -1)
  {
    FigCaptureAudiomxdSupportEnabled_cold_1();
  }

  if (FigCaptureAudiomxdSupportEnabled_sCaptureAudiomxdSupportEnabled == 1)
  {
    v2 = [MEMORY[0x1E69AED10] sharedInstance];
    v3 = [objc_msgSend(v2 attributeForKey:{*MEMORY[0x1E69AECF8]), "BOOLValue"}];
    v4 = 0;
    if (!a1)
    {
      return v3;
    }

    goto LABEL_7;
  }

  v7 = 0;
  v5 = [objc_alloc(MEMORY[0x1E69AED20]) initWithPID:getpid()];
  v4 = [v5 copyAttributeForKey:*MEMORY[0x1E69B07C0] withValueOut:&v7];
  v3 = [v7 BOOLValue];

  if (a1)
  {
LABEL_7:
    *a1 = v4;
  }

  return v3;
}

uint64_t FigCaptureIsCarryDevice()
{
  if (FigCaptureIsCarryDevice_onceToken != -1)
  {
    FigCaptureIsCarryDevice_cold_1();
  }

  return FigCaptureIsCarryDevice_sIsCarryDevice;
}

uint64_t __FigCaptureIsCarryDevice_block_invoke()
{
  result = [objc_msgSend(CFPreferencesCopyValue(@"ExperimentGroup" @"com.apple.da"];
  FigCaptureIsCarryDevice_sIsCarryDevice = result;
  return result;
}

uint64_t FigCaptureNominalFocalLengthIn35mmFilmForPortType(void *a1)
{
  if ([a1 isEqualToString:*off_1E798A0D0])
  {
    v2 = &CMGQRearFacingSuperWideCameraFocalLengthIn35mm;
  }

  else if ([a1 isEqualToString:*off_1E798A0C0])
  {
    v2 = &CMGQRearFacingWideCameraFocalLengthIn35mm;
  }

  else if ([a1 isEqualToString:*off_1E798A0D8])
  {
    v2 = &CMGQRearFacingTeleCameraFocalLengthIn35mm;
  }

  else
  {
    result = [a1 isEqualToString:*off_1E798A0F8];
    if (!result)
    {
      return result;
    }

    v2 = &CMGQFrontFacingCameraFocalLengthIn35mm;
  }

  result = CMCaptureGestaltGetIntegerAnswer(*v2);
  if (result == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t __fcu_registerForGPUErrorNotifications_block_invoke()
{
  fcu_registerForGPUErrorNotifications_pendingNotifications = objc_opt_new();
  fcu_registerForGPUErrorNotifications_exitOnGPUError = FigCaptureCurrentProcessIsDeferredmediad();
  v0 = [MEMORY[0x1E696AD88] defaultCenter];
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __fcu_registerForGPUErrorNotifications_block_invoke_2;
  v2[3] = &__block_descriptor_33_e24_v16__0__NSNotification_8l;
  v3 = 1;
  return [v0 addObserverForName:@"com.apple.cameracapture.gpu-error" object:0 queue:0 usingBlock:v2];
}

void __fcu_registerForGPUErrorNotifications_block_invoke_2(uint64_t a1, void *a2)
{
  [objc_msgSend(a2 "userInfo")];
  [objc_msgSend(a2 "userInfo")];
  if (*(a1 + 32) == 1)
  {
    os_unfair_lock_lock(&fcu_registerForGPUErrorNotifications_radarLock);
    if (![fcu_registerForGPUErrorNotifications_pendingNotifications count])
    {
      v4 = dispatch_time(0, 100000000);
      global_queue = dispatch_get_global_queue(0, 0);
      dispatch_after(v4, global_queue, &__block_literal_global_195_0);
    }

    [fcu_registerForGPUErrorNotifications_pendingNotifications addObject:a2];

    os_unfair_lock_unlock(&fcu_registerForGPUErrorNotifications_radarLock);
  }

  else if (fcu_registerForGPUErrorNotifications_exitOnGPUError == 1)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    exit(-1);
  }
}

void __fcu_registerForGPUErrorNotifications_block_invoke_3()
{
  os_unfair_lock_lock(&fcu_registerForGPUErrorNotifications_radarLock);
  [fcu_registerForGPUErrorNotifications_pendingNotifications sortUsingComparator:&__block_literal_global_198_0];
  v0 = objc_opt_new();
  [v0 appendString:@"## Recent Failed Command Buffers\n"];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v1 = fcu_registerForGPUErrorNotifications_pendingNotifications;
  v2 = [fcu_registerForGPUErrorNotifications_pendingNotifications countByEnumeratingWithState:&v14 objects:v13 count:16];
  if (!v2)
  {
    goto LABEL_15;
  }

  v3 = v2;
  v4 = 0;
  v5 = *v15;
  do
  {
    for (i = 0; i != v3; ++i)
    {
      if (*v15 != v5)
      {
        objc_enumerationMutation(v1);
      }

      v7 = *(*(&v14 + 1) + 8 * i);
      [objc_msgSend(objc_msgSend(v7 "userInfo")];
      if (v8 > 0.0 && v4 == 0)
      {
        v4 = [objc_msgSend(v7 "userInfo")];
      }

      [v0 appendString:@"\n"];
      [v0 appendString:{objc_msgSend(objc_msgSend(v7, "userInfo"), "objectForKeyedSubscript:", @"title"}];
    }

    v3 = [v1 countByEnumeratingWithState:&v14 objects:v13 count:16];
  }

  while (v3);
  if (!v4)
  {
LABEL_15:
    [objc_msgSend(objc_msgSend(fcu_registerForGPUErrorNotifications_pendingNotifications "firstObject")];
  }

  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  v11 = _os_log_send_and_compose_impl();
  FigCapturePleaseFileRadar(9, v11, v0, &unk_1F224A740, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Common/FigCaptureUtilities.m", 1078, @"LastShownDate:FigCaptureUtilities.m:1078", @"LastShownBuild:FigCaptureUtilities.m:1078", fcu_registerForGPUErrorNotifications_exitOnGPUError);
  free(v11);
  [fcu_registerForGPUErrorNotifications_pendingNotifications removeAllObjects];

  os_unfair_lock_unlock(&fcu_registerForGPUErrorNotifications_radarLock);
  if (fcu_registerForGPUErrorNotifications_exitOnGPUError == 1)
  {
    v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    exit(-1);
  }
}

uint64_t __fcu_registerForGPUErrorNotifications_block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  [objc_msgSend(objc_msgSend(a2 "userInfo")];
  v5 = v4;
  [objc_msgSend(objc_msgSend(a3 "userInfo")];
  if (v5 < v6)
  {
    return -1;
  }

  else
  {
    return v5 > v6;
  }
}

uint64_t __fcu_registerForANEErrorNotifications_block_invoke()
{
  fcu_registerForANEErrorNotifications_exitOnANEError = FigCaptureCurrentProcessIsDeferredmediad();
  v0 = [MEMORY[0x1E696AD88] defaultCenter];
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __fcu_registerForANEErrorNotifications_block_invoke_2;
  v2[3] = &__block_descriptor_33_e24_v16__0__NSNotification_8l;
  v3 = 0;
  return [v0 addObserverForName:@"com.apple.cameracapture.ane-error" object:0 queue:0 usingBlock:v2];
}

void __fcu_registerForANEErrorNotifications_block_invoke_2(uint64_t a1, void *a2)
{
  [objc_msgSend(a2 "userInfo")];
  if (*(a1 + 32) == 1)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    [objc_msgSend(a2 "userInfo")];
    v5 = _os_log_send_and_compose_impl();
    FigCapturePleaseFileRadar(9, v5, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Common/FigCaptureUtilities.m", 992, @"LastShownDate:FigCaptureUtilities.m:992", @"LastShownBuild:FigCaptureUtilities.m:992", fcu_registerForANEErrorNotifications_exitOnANEError);
    free(v5);
  }

  if (fcu_registerForANEErrorNotifications_exitOnANEError == 1)
  {
    v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    exit(-1);
  }
}

void *__getCRGetComponentStateSymbolLoc_block_invoke(uint64_t a1)
{
  v4[0] = 0;
  if (!CoreRepairCoreLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __CoreRepairCoreLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E799E040;
    v6 = 0;
    CoreRepairCoreLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v2 = CoreRepairCoreLibraryCore_frameworkLibrary;
  if (!CoreRepairCoreLibraryCore_frameworkLibrary)
  {
    __getCRGetComponentStateSymbolLoc_block_invoke_cold_1(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = dlsym(v2, "CRGetComponentState");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCRGetComponentStateSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __CoreRepairCoreLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  CoreRepairCoreLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t __fcu_initializeTrace_block_invoke()
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();

  return fig_note_initialize_category_with_default_work_cf();
}

uint64_t __dzpc_initializeTrace_block_invoke()
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();

  return fig_note_initialize_category_with_default_work_cf();
}

uint64_t FigRemoteQueueIOSurfaceSender_ShareIOSurface(int a1, int a2)
{
  *&msg[20] = 0u;
  *&msg[4] = 0;
  *&msg[24] = 1;
  *&msg[28] = a2;
  v9 = 1245184;
  reply_port = mig_get_reply_port();
  *&msg[8] = a1;
  *&msg[12] = reply_port;
  *msg = -2147478253;
  *&msg[16] = 0x481200000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
    v4 = *&msg[12];
  }

  else
  {
    v4 = reply_port;
  }

  v5 = mach_msg(msg, 275, 0x28u, 0x2Cu, v4, 0x1F4u, 0);
  v6 = v5;
  if ((v5 - 268435458) <= 0xE && ((1 << (v5 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(*&msg[12]);
  }

  else
  {
    if (!v5)
    {
      if (*&msg[20] == 71)
      {
        v6 = 4294966988;
      }

      else if (*&msg[20] == 18550)
      {
        v6 = 4294966996;
        if ((*msg & 0x80000000) == 0 && *&msg[4] == 36 && !*&msg[8])
        {
          v6 = *&msg[32];
          if (!*&msg[32])
          {
            return v6;
          }
        }
      }

      else
      {
        v6 = 4294966995;
      }

LABEL_21:
      mach_msg_destroy(msg);
      return v6;
    }

    mig_dealloc_reply_port(*&msg[12]);
  }

  if ((v6 - 268435459) <= 1)
  {
    if ((*msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], *&msg[12]);
    }

    goto LABEL_21;
  }

  return v6;
}

uint64_t FigRemoteQueueIOSurfaceSender_ReleaseIOSurface(int a1, int a2)
{
  *&msg[20] = 0u;
  *&msg[4] = 0;
  *&msg[24] = 1;
  *&msg[28] = a2;
  v9 = 1245184;
  reply_port = mig_get_reply_port();
  *&msg[8] = a1;
  *&msg[12] = reply_port;
  *msg = -2147478253;
  *&msg[16] = 0x481300000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
    v4 = *&msg[12];
  }

  else
  {
    v4 = reply_port;
  }

  v5 = mach_msg(msg, 275, 0x28u, 0x2Cu, v4, 0x1F4u, 0);
  v6 = v5;
  if ((v5 - 268435458) <= 0xE && ((1 << (v5 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(*&msg[12]);
  }

  else
  {
    if (!v5)
    {
      if (*&msg[20] == 71)
      {
        v6 = 4294966988;
      }

      else if (*&msg[20] == 18551)
      {
        v6 = 4294966996;
        if ((*msg & 0x80000000) == 0 && *&msg[4] == 36 && !*&msg[8])
        {
          v6 = *&msg[32];
          if (!*&msg[32])
          {
            return v6;
          }
        }
      }

      else
      {
        v6 = 4294966995;
      }

LABEL_21:
      mach_msg_destroy(msg);
      return v6;
    }

    mig_dealloc_reply_port(*&msg[12]);
  }

  if ((v6 - 268435459) <= 1)
  {
    if ((*msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], *&msg[12]);
    }

    goto LABEL_21;
  }

  return v6;
}

uint64_t FigRemoteQueueIOSurfaceSender_ReleaseIOSurfaces(int a1)
{
  v8 = 0;
  *&msg[20] = 0u;
  *&msg[4] = 0;
  reply_port = mig_get_reply_port();
  *&msg[8] = a1;
  *&msg[12] = reply_port;
  *msg = 5395;
  *&msg[16] = 0x481400000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
    v3 = *&msg[12];
  }

  else
  {
    v3 = reply_port;
  }

  v4 = mach_msg(msg, 3, 0x18u, 0x2Cu, v3, 0, 0);
  v5 = v4;
  if ((v4 - 268435458) <= 0xE && ((1 << (v4 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(*&msg[12]);
  }

  else
  {
    if (!v4)
    {
      if (*&msg[20] == 71)
      {
        v5 = 4294966988;
      }

      else if (*&msg[20] == 18552)
      {
        v5 = 4294966996;
        if ((*msg & 0x80000000) == 0 && *&msg[4] == 36 && !*&msg[8])
        {
          v5 = *&msg[32];
          if (!*&msg[32])
          {
            return v5;
          }
        }
      }

      else
      {
        v5 = 4294966995;
      }

LABEL_21:
      mach_msg_destroy(msg);
      return v5;
    }

    mig_dealloc_reply_port(*&msg[12]);
  }

  if ((v5 - 268435459) <= 1)
  {
    if ((*msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], *&msg[12]);
    }

    goto LABEL_21;
  }

  return v5;
}

uint64_t (*figremotequeue_server_routine(uint64_t a1))()
{
  v1 = *(a1 + 20);
  if ((v1 - 18453) >= 0xFFFFFFFD)
  {
    return FigRemoteQueueIOSurfaceReceiver_figremotequeue_subsystem[5 * (v1 - 18450) + 5];
  }

  else
  {
    return 0;
  }
}

uint64_t _XShareIOSurface(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 && *(a1 + 24) == 1 && *(a1 + 4) == 40)
  {
    if (*(a1 + 38) << 16 == 1114112)
    {
      result = FigRemoteQueueIOSurfaceReceiver_ShareIOSurface(*(a1 + 12), *(a1 + 28));
    }

    else
    {
      result = 4294966996;
    }
  }

  else
  {
    result = 4294966992;
  }

  *(a2 + 32) = result;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  return result;
}

uint64_t _XReleaseIOSurface(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 && *(a1 + 24) == 1 && *(a1 + 4) == 40)
  {
    if (*(a1 + 38) << 16 == 1114112)
    {
      result = FigRemoteQueueIOSurfaceReceiver_ReleaseIOSurface(*(a1 + 12), *(a1 + 28));
    }

    else
    {
      result = 4294966996;
    }
  }

  else
  {
    result = 4294966992;
  }

  *(a2 + 32) = result;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  return result;
}

uint64_t _XReleaseIOSurfaces(_DWORD *a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 || a1[1] != 24)
  {
    result = 4294966992;
  }

  else
  {
    result = FigRemoteQueueIOSurfaceReceiver_ReleaseIOSurfaces(a1[3]);
  }

  *(a2 + 32) = result;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  return result;
}

uint64_t figremotequeue_server(_DWORD *a1, uint64_t a2)
{
  v2 = a1[2];
  *a2 = *a1 & 0x1F;
  *(a2 + 4) = 36;
  v3 = a1[5] + 100;
  *(a2 + 8) = v2;
  *(a2 + 12) = 0;
  *(a2 + 16) = 0;
  *(a2 + 20) = v3;
  v4 = a1[5];
  if ((v4 - 18453) >= 0xFFFFFFFD && (v5 = FigRemoteQueueIOSurfaceReceiver_figremotequeue_subsystem[5 * (v4 - 18450) + 5]) != 0)
  {
    (v5)(a1, a2);
    return 1;
  }

  else
  {
    result = 0;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    *(a2 + 32) = -303;
  }

  return result;
}

uint64_t FigImageControl_Sharpness_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

uint64_t FigImageControl_Sharpness_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

uint64_t FigImageControl_Sharpness_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

uint64_t FigImageControl_Sharpness_cold_4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

uint64_t FigLivePhotoMetadataSerializeIntoBufferV3(const void *a1, int a2, const __CFDictionary *a3, const __CFArray *a4, const __CFDictionary *a5, const __CFDictionary *a6, const __CFDictionary *a7, const __CFDictionary *a8, unsigned int a9, size_t a10, unsigned int *a11)
{
  if (!a11)
  {
    OUTLINED_FUNCTION_7_5();
    FigDebugAssert3();
    OUTLINED_FUNCTION_7_5();
    goto LABEL_43;
  }

  bzero(a11, a10);
  if (a5)
  {
    Value = CFDictionaryGetValue(a5, *off_1E798ACE8);
  }

  else
  {
    Value = 0;
  }

  v15 = a6;
  if (a6)
  {
    v15 = CFDictionaryGetValue(a6, *off_1E798ACE8);
  }

  v30 = v15;
  if (a7)
  {
    v29 = CFDictionaryGetValue(a7, *off_1E798ACE8);
    if (a8)
    {
LABEL_9:
      theArray = CFDictionaryGetValue(a8, *off_1E798ACE8);
      goto LABEL_12;
    }
  }

  else
  {
    v29 = 0;
    if (a8)
    {
      goto LABEL_9;
    }
  }

  theArray = 0;
LABEL_12:
  if (a4)
  {
    key = CFArrayGetCount(a4);
    if (Value)
    {
LABEL_14:
      Count = CFArrayGetCount(Value);
      goto LABEL_17;
    }
  }

  else
  {
    key = 0;
    if (Value)
    {
      goto LABEL_14;
    }
  }

  Count = 0;
LABEL_17:
  if (!v30)
  {
    v26 = 0;
    if (v29)
    {
      goto LABEL_19;
    }

LABEL_21:
    v25 = 0;
    goto LABEL_22;
  }

  v26 = CFArrayGetCount(v30);
  if (!v29)
  {
    goto LABEL_21;
  }

LABEL_19:
  v25 = CFArrayGetCount(v29);
LABEL_22:
  if (theArray)
  {
    v16 = CFArrayGetCount(theArray);
  }

  else
  {
    v16 = 0;
  }

  v41[0] = 0;
  result = FigLivePhotoMetadataComputeSerializationSizeV3(a9, key, Count, v26, v25, v16, v41);
  if (result)
  {
    return result;
  }

  if (v41[0] == a10)
  {
    *a11 = a9;
    v18 = CFDictionaryGetValue(a3, *off_1E798B2A8);
    if (v18)
    {
      LODWORD(valuePtr) = 0;
      CFNumberGetValue(v18, kCFNumberFloat32Type, &valuePtr);
      a11[1] = valuePtr;
    }

    v19 = CFDictionaryGetValue(a3, *off_1E798B1A0);
    if (v19)
    {
      *&valuePtr = 0;
      CFNumberGetValue(v19, kCFNumberSInt64Type, &valuePtr);
      *(a11 + 1) = valuePtr;
    }

    v20 = CFDictionaryGetValue(a3, *off_1E798D438);
    if (v20)
    {
      v21 = v20;
      if (CFDataGetLength(v20) == 8)
      {
        v43.location = 0;
        v43.length = 8;
        CFDataGetBytes(v21, v43, buffer);
        *(a11 + 2) = *buffer;
      }
    }

    v22 = CFDictionaryGetValue(a3, *off_1E798D440);
    if (v22)
    {
      v23 = v22;
      if (CFDataGetLength(v22) == 8)
      {
        v44.location = 0;
        v44.length = 8;
        CFDataGetBytes(v23, v44, v39);
        *(a11 + 3) = *v39;
      }
    }

    v38 = 1065353216;
    v24 = CMGetAttachment(a1, @"TotalZoomFactor", 0);
    if (v24)
    {
      CFNumberGetValue(v24, kCFNumberFloat32Type, &v38);
      a11[8] = v38;
    }

    v37 = 1065353216;
    FigCaptureComputeImageGainFromMetadata();
  }

  OUTLINED_FUNCTION_7_5();
  OUTLINED_FUNCTION_3_4();
  FigDebugAssert3();
  OUTLINED_FUNCTION_7_5();
LABEL_43:

  return FigSignalErrorAtGM();
}

uint64_t FigLivePhotoMetadataSerializeIntoBufferV2(const void *a1, __int128 *a2, const __CFDictionary *a3, const __CFArray *a4, const __CFDictionary *a5, const __CFDictionary *a6, const __CFDictionary *a7, const __CFDictionary *a8, unsigned int a9, size_t a10, unsigned int *a11)
{
  v12 = *a2;
  v13 = *(a2 + 2);
  return FigLivePhotoMetadataSerializeIntoBufferV3(a1, &v12, a3, a4, a5, a6, a7, a8, a9, a10, a11);
}

uint64_t FigLivePhotoMetadataDeserializeIntoBuffer(uint64_t a1, unint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  if (!a3)
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_0_2();
    FigDebugAssert3();
    OUTLINED_FUNCTION_2();

    return FigSignalErrorAtGM();
  }

  v48 = 0;
  v47 = 0;
  result = FigLivePhotoMetadataComputeDeserializationSize(a1, a2, a3, 0, &v47, &v48);
  if (result)
  {
    return result;
  }

  if (v47 != a3 || v48 != a4)
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_0_2();
    FigDebugAssert3();
    OUTLINED_FUNCTION_2();
    return FigSignalErrorAtGM();
  }

  v10 = *(a1 + 44);
  *a5 = a3;
  v11 = *(a1 + 42);
  *(a5 + 42) = v11;
  if (v11)
  {
    *(a5 + 4) = *(a1 + 4);
    if ((v11 & 2) == 0)
    {
LABEL_7:
      if ((v11 & 4) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_43;
    }
  }

  else if ((v11 & 2) == 0)
  {
    goto LABEL_7;
  }

  *(a5 + 8) = *(a1 + 8);
  if ((v11 & 4) == 0)
  {
LABEL_8:
    if ((v11 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_44;
  }

LABEL_43:
  *(a5 + 16) = *(a1 + 16);
  if ((v11 & 8) == 0)
  {
LABEL_9:
    if ((v11 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_45;
  }

LABEL_44:
  *(a5 + 24) = *(a1 + 24);
  if ((v11 & 0x10) == 0)
  {
LABEL_10:
    if ((v11 & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_46;
  }

LABEL_45:
  *(a5 + 32) = *(a1 + 32);
  if ((v11 & 0x20) == 0)
  {
LABEL_11:
    if ((v11 & 0x40) == 0)
    {
      goto LABEL_12;
    }

LABEL_47:
    *(a5 + 40) = *(a1 + 40);
    if ((v11 & 0x80) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_46:
  *(a5 + 36) = *(a1 + 36);
  if ((v11 & 0x40) != 0)
  {
    goto LABEL_47;
  }

LABEL_12:
  if ((v11 & 0x80) != 0)
  {
LABEL_13:
    *(a5 + 41) = *(a1 + 41);
  }

LABEL_14:
  *(a5 + 44) = v10;
  if (v10)
  {
    v12 = 0;
    for (i = v10; i; --i)
    {
      v14 = *(a1 + v12 + 78);
      v15 = a5 + v12;
      *(v15 + 78) = v14;
      *(v15 + 76) = 0;
      if (v14)
      {
        *(v15 + 48) = *(a1 + v12 + 48);
        if ((v14 & 2) != 0)
        {
LABEL_23:
          *(a5 + v12 + 56) = *(a1 + v12 + 56);
          if ((v14 & 4) == 0)
          {
            goto LABEL_20;
          }

LABEL_19:
          *(a5 + v12 + 72) = *(a1 + v12 + 72);
          goto LABEL_20;
        }
      }

      else if ((v14 & 2) != 0)
      {
        goto LABEL_23;
      }

      if ((v14 & 4) != 0)
      {
        goto LABEL_19;
      }

LABEL_20:
      v12 += 32;
    }
  }

  if (a3 == 1)
  {
    return 0;
  }

  v16 = (a1 + 32 * v10);
  v18 = v16[3];
  v17 = v16 + 3;
  v19 = (a5 + 32 * v10);
  v19[3] = v18;
  v20 = v19 + 3;
  v21 = v18.u32[0];
  v22 = v18.i32[1];
  v23 = v18.i32[2];
  v24 = v18.i32[3];
  if (vmaxv_u16(vmovn_s32(vtstq_s32(v18, v18))))
  {
    v25 = 0;
    v26 = 0;
    v45[0] = v17 + 1;
    v45[1] = &v17[2 * v21 + 1];
    v27 = (v22 + v21);
    v28 = (v27 + v23);
    v45[2] = &v17[2 * v27 + 1];
    v45[3] = &v17[2 * v28 + 1];
    v44[0] = v20 + 1;
    v44[1] = &v20[2 * v21 + 1];
    v46[0] = v21;
    v46[1] = v22;
    v46[2] = v23;
    v46[3] = v24;
    v44[2] = &v20[2 * v27 + 1];
    v44[3] = &v20[2 * v28 + 1];
    while (1)
    {
      v29 = v46[v25];
      if (v29)
      {
        break;
      }

LABEL_39:
      if (++v25 == 4)
      {
        v35 = v26 != 0;
        goto LABEL_50;
      }
    }

    v30 = 0;
    v31 = v44[v25];
    v32 = v45[v25];
    while (1)
    {
      v33 = v31 + v30;
      v34 = *(v32 + v30 + 30);
      *(v33 + 30) = v34;
      *(v33 + 28) = *(v32 + v30 + 28);
      if (v34)
      {
        *v33 = *(v32 + v30);
        if ((v34 & 2) != 0)
        {
LABEL_37:
          *(v31 + v30 + 8) = *(v32 + v30 + 8);
          if ((v34 & 4) == 0)
          {
            goto LABEL_34;
          }

LABEL_33:
          *(v31 + v30 + 24) = *(v32 + v30 + 24);
          goto LABEL_34;
        }
      }

      else if ((v34 & 2) != 0)
      {
        goto LABEL_37;
      }

      if ((v34 & 4) != 0)
      {
        goto LABEL_33;
      }

LABEL_34:
      v26 |= v34;
      v30 += 32;
      if (!--v29)
      {
        goto LABEL_39;
      }
    }
  }

  v35 = 0;
LABEL_50:
  if (a3 < 3)
  {
    return 0;
  }

  v36 = (v22 + v21 + v23 + v24);
  v37 = &v17[2 * v36];
  v40 = v37[1].u16[0];
  v39 = v37 + 1;
  v38 = v40;
  v41 = &v20[2 * v36];
  v41[1].i16[0] = v40;
  v42 = v41 + 1;
  if (v40)
  {
    for (j = 0; j != 9; ++j)
    {
      v42->i32[j + 1] = v39->i32[j + 1];
    }
  }

  else
  {
    v42[2].i32[1] = 0;
    *(&v42[1] + 4) = 0u;
    *(v42 + 4) = 0u;
  }

  if ((v38 & 2) != 0)
  {
    v42[2].i64[1] = v39[2].i64[1];
    if ((v38 & 4) == 0)
    {
LABEL_59:
      if ((v38 & 8) == 0)
      {
        goto LABEL_60;
      }

      goto LABEL_68;
    }
  }

  else if ((v38 & 4) == 0)
  {
    goto LABEL_59;
  }

  v42[3].i64[0] = v39[3].i64[0];
  if ((v38 & 8) == 0)
  {
LABEL_60:
    if ((v38 & 0x10) == 0)
    {
      goto LABEL_61;
    }

LABEL_69:
    v42[3].i8[9] = v39[3].i8[9];
    if ((v38 & 0x20) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_62;
  }

LABEL_68:
  v42[3].i8[8] = v39[3].i8[8];
  if ((v38 & 0x10) != 0)
  {
    goto LABEL_69;
  }

LABEL_61:
  if ((v38 & 0x20) != 0)
  {
LABEL_62:
    v42[3].i8[10] = v39[3].i8[10];
  }

LABEL_63:
  result = 0;
  v42[4].i64[0] = 0;
  *(&v42[3].i64[1] + 3) = 0;
  if (v11 == 0 && !v35 && !v38)
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_0_2();
    FigDebugAssert3();
    OUTLINED_FUNCTION_2();
    return FigSignalErrorAtGM();
  }

  return result;
}

uint64_t FigLivePhotoMetadataComputeSerializationSizeV3_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_7();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2_7();
  fig_log_get_emitter();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigLivePhotoMetadataComputeSerializationSizeV3_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_7();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2_7();
  fig_log_get_emitter();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigLivePhotoMetadataComputeSerializationSizeV3_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_7();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2_7();
  fig_log_get_emitter();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigLivePhotoMetadataComputeDeserializationSize_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_7();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2_7();
  fig_log_get_emitter();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigLivePhotoMetadataComputeDeserializationSize_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_7();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2_7();
  fig_log_get_emitter();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigLivePhotoMetadataComputeDeserializationSize_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_7();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2_7();
  fig_log_get_emitter();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigLivePhotoMetadataComputeDeserializationSize_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_7();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2_7();
  fig_log_get_emitter();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigLivePhotoMetadataComputeDeserializationSize_cold_5(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_7();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2_7();
  fig_log_get_emitter();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigLivePhotoMetadataComputeDeserializationSize_cold_6(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_7();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2_7();
  fig_log_get_emitter();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigLivePhotoMetadataComputeDeserializationSize_cold_7(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_7();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2_7();
  fig_log_get_emitter();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigLivePhotoMetadataComputeDeserializationSize_cold_8(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_7();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2_7();
  fig_log_get_emitter();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigLivePhotoMetadataComputeDeserializationSize_cold_9(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_7();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2_7();
  fig_log_get_emitter();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigLivePhotoMetadataCreateSoftwareVersionSetupDataWithAtomHeader_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t FigLivePhotoMetadataCreateSoftwareVersionSetupDataWithAtomHeader_cold_2(CFErrorRef *a1, _DWORD *a2)
{
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_8_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_9_1();
  CFErrorGetCode(*a1);
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}

uint64_t FigLivePhotoMetadataCreateSoftwareVersionSetupDataWithAtomHeader_cold_3(CFErrorRef *a1, _DWORD *a2)
{
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_8_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_9_1();
  CFErrorGetCode(*a1);
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}

uint64_t FigLivePhotoMetadataCreateSoftwareVersionSetupDataWithAtomHeader_cold_4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t FigLivePhotoMetadataCreateSoftwareVersionSetupDataWithAtomHeader_cold_5()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t FigLivePhotoMetadataCreateSoftwareVersionSetupDataWithAtomHeader_cold_6()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t FigLivePhotoMetadataCreateSoftwareVersionSetupDataWithAtomHeader_cold_7()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t FigLivePhotoMetadataCreateSoftwareVersionSetupDataWithAtomHeader_cold_8(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_7();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2_7();
  fig_log_get_emitter();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

CMSampleBufferRef qtrmg_createTrimmedSampleBufferIfNeeded(void *a1, CMTime *a2)
{
  sampleBufferOut = 0;
  memset(&v26, 0, sizeof(v26));
  v4 = *MEMORY[0x1E6960560];
  v5 = CMGetAttachment(a1, *MEMORY[0x1E6960560], 0);
  CMTimeMakeFromDictionary(&v26, v5);
  v6 = MEMORY[0x1E6960C70];
  if (v26.flags)
  {
    time1 = v26;
    time2 = **&MEMORY[0x1E6960CC0];
    if (!CMTimeCompare(&time1, &time2))
    {
      v26 = *v6;
    }
  }

  memset(&time1, 0, sizeof(time1));
  v7 = *MEMORY[0x1E6960558];
  v8 = CMGetAttachment(a1, *MEMORY[0x1E6960558], 0);
  CMTimeMakeFromDictionary(&time1, v8);
  if (time1.flags)
  {
    *&time2.value = *&time1.value;
    if (!OUTLINED_FUNCTION_17_2(time1.epoch))
    {
      time1 = *v6;
    }
  }

  if ((v26.flags | time1.flags))
  {
    memcpy(&__dst, MEMORY[0x1E6960CF0], sizeof(__dst));
    if (CMSampleBufferGetSampleTimingInfo(a1, 0, &__dst))
    {
      OUTLINED_FUNCTION_1_5();
      goto LABEL_29;
    }

    memcpy(&v21, &__dst, sizeof(v21));
    if ((v26.flags & 1) == 0)
    {
LABEL_14:
      time2 = v21.presentationTimeStamp;
      rhs = *a2;
      if (CMTimeCompare(&time2, &rhs) < 0 && (v21.duration.flags & 1) != 0)
      {
        if (time1.flags)
        {
          rhs = v21.duration;
          *&lhs.value = *&time1.value;
          v12 = OUTLINED_FUNCTION_26();
          CMTimeSubtract(v14, v12, v13);
          OUTLINED_FUNCTION_48_0();
        }

        *&time2.value = *&v21.duration.value;
        if (OUTLINED_FUNCTION_17_2(v21.duration.epoch) >= 1)
        {
          memset(&time2, 0, sizeof(time2));
          rhs = v21.presentationTimeStamp;
          *&lhs.value = *&v21.duration.value;
          v15 = OUTLINED_FUNCTION_26();
          CMTimeAdd(v17, v15, v16);
          rhs = time2;
          OUTLINED_FUNCTION_47_3();
          if (CMTimeCompare(&rhs, &lhs) >= 1)
          {
            OUTLINED_FUNCTION_47_3();
            presentationTimeStamp = v21.presentationTimeStamp;
            CMTimeSubtract(&rhs, &lhs, &presentationTimeStamp);
            v21.duration = rhs;
          }
        }
      }

      if (v21.duration.flags)
      {
        *&time2.value = *&v21.duration.value;
        if (OUTLINED_FUNCTION_17_2(v21.duration.epoch) <= 0)
        {
          CMTimeMake(&time2, 1, v21.duration.timescale);
          OUTLINED_FUNCTION_48_0();
        }
      }

      if (!CMSampleBufferCreateCopyWithNewTiming(*MEMORY[0x1E695E480], a1, 1, &v21, &sampleBufferOut))
      {
        CMRemoveAttachment(sampleBufferOut, v4);
        CMRemoveAttachment(sampleBufferOut, v7);
        return sampleBufferOut;
      }

      OUTLINED_FUNCTION_1_5();
LABEL_29:
      FigDebugAssert3();
      return sampleBufferOut;
    }

    if ((v21.duration.flags & 1) == 0)
    {
LABEL_13:
      rhs = v21.presentationTimeStamp;
      *&lhs.value = *&v26.value;
      v9 = OUTLINED_FUNCTION_26();
      CMTimeAdd(v11, v9, v10);
      v21.presentationTimeStamp = time2;
      goto LABEL_14;
    }

    time2 = v26;
    rhs = __dst.duration;
    if (CMTimeCompare(&time2, &rhs) < 0)
    {
      time2 = v21.duration;
      rhs = v26;
      CMTimeSubtract(&v21.duration, &time2, &rhs);
      goto LABEL_13;
    }
  }

  return sampleBufferOut;
}

uint64_t BWPhotoEncoderResolveEncodingSchemeForCompressedPhotoWithLinDNG(void *a1)
{
  FigNote_AllowInternalDefaultLogs();
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_5_12();
  fig_note_initialize_category_with_default_work_cf();
  OUTLINED_FUNCTION_5_12();
  OUTLINED_FUNCTION_10_4();
  result = FigCapturePixelFormatIsDemosaicedRaw([a1 rawOutputFormat]);
  if (result)
  {
    if ([a1 outputFileType] == 1785096550)
    {
      return 1;
    }

    else if ([a1 outputFileType] == 1751476579 || objc_msgSend(a1, "outputFileType") == 1751476582)
    {
      return 2;
    }

    else if ([a1 outputFileType] == 1684628333)
    {
      return 5;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

BOOL BWPhotoEncoderShouldGenerateClientThumbnail(void *a1, uint64_t a2, _DWORD *a3)
{
  if ([a1 payloadType] != 1)
  {
    return 0;
  }

  v5 = [a1 outputFormat] ? objc_msgSend(a1, "isOutputFormatCompressed") ^ 1 : 0;
  IsBayerRaw = FigCapturePixelFormatIsBayerRaw([a1 rawOutputFormat]);
  v7 = IsBayerRaw;
  if ((v5 & 1) == 0 && !IsBayerRaw)
  {
    return 0;
  }

  if ([a1 previewEnabled])
  {
    v8 = [a1 previewWidth];
    v9 = [a1 previewHeight];
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  if (([a1 thumbnailEnabled] & v5) == 1)
  {
    v10 = [a1 thumbnailWidth];
    v11 = [a1 thumbnailHeight];
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  if (([a1 rawThumbnailEnabled] & v7) == 1)
  {
    v12 = [a1 rawThumbnailWidth];
    v13 = [a1 rawThumbnailHeight];
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

  if (v11 * v10 <= v13 * v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = v10;
  }

  if (v11 * v10 <= v13 * v12)
  {
    v15 = v13;
  }

  else
  {
    v15 = v11;
  }

  result = v14 * v15 > v8 * v9;
  if (a3)
  {
    if (v14 * v15 > v8 * v9)
    {
      *a3 = v14;
      a3[1] = v15;
      return 1;
    }
  }

  return result;
}

void BWPhotoEncoderApplyCropRectOnSampleBufferMetadata(void *a1)
{
  FigNote_AllowInternalDefaultLogs();
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_2_16();
  fig_note_initialize_category_with_default_work_cf();
  OUTLINED_FUNCTION_2_16();
  OUTLINED_FUNCTION_10_4();
  v2 = CMGetAttachment(a1, *off_1E798A3C8, 0);
  if (!v2)
  {
    goto LABEL_12;
  }

  v3 = v2;
  v30.origin.x = OUTLINED_FUNCTION_3_1();
  if (!CGRectIsEmpty(v30))
  {
    ImageBuffer = CMSampleBufferGetImageBuffer(a1);
    if (ImageBuffer)
    {
      v5 = ImageBuffer;
      v6 = CMGetAttachment(a1, @"StillImageSettings", 0);
      if (v6)
      {
        v7 = v6;
        Width = CVPixelBufferGetWidth(v5);
        v9 = Width | (CVPixelBufferGetHeight(v5) << 32);
        v10 = [v7 outputWidth];
        v11 = v10 | ([v7 outputHeight] << 32);
        v12 = OUTLINED_FUNCTION_3_1();
        FigCaptureMetadataUtilitiesUpdateMetadataForStillImageCrop(v13, v14, v11, v12, v15, v16, v17, v18, v19, v20, v21);
        FigCaptureMetadataUtilitiesUpdateMetadataForNewFinalDimensions(v3, v9, v11);
        goto LABEL_6;
      }
    }

LABEL_12:
    OUTLINED_FUNCTION_0();
    FigDebugAssert3();
    v22 = 0;
    goto LABEL_9;
  }

LABEL_6:
  v22 = CMGetAttachment(a1, @"RawDNGDictionary", 0);
  if (v22)
  {
    v23 = v22;
    FinalCropRectFromSource = FigCaptureMetadataUtilitiesGetFinalCropRectFromSource();
    v22 = BWCreateDNGDictionaryForZoom(v23, FinalCropRectFromSource, v25, v26, v27);
    if (v22)
    {
      v28 = v22;
      CMSetAttachment(a1, @"RawDNGDictionary", v22, 1u);
      v22 = v28;
    }
  }

LABEL_9:
}

uint64_t BWPhotoEncoderThumbnailEnabled(int a1, void *a2, _DWORD *a3, _DWORD *a4, void *a5)
{
  FigNote_AllowInternalDefaultLogs();
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_7_9();
  fig_note_initialize_category_with_default_work_cf();
  OUTLINED_FUNCTION_7_9();
  OUTLINED_FUNCTION_10_4();
  if ((a1 - 3) > 1)
  {
    v14 = [a2 thumbnailEnabled];
    v11 = [a2 thumbnailFormat];
    v12 = [a2 thumbnailWidth];
    v13 = [a2 thumbnailHeight];
    if (!v14)
    {
      return 0;
    }
  }

  else
  {
    v10 = [a2 rawThumbnailEnabled];
    v11 = [a2 rawThumbnailFormat];
    v12 = [a2 rawThumbnailWidth];
    v13 = [a2 rawThumbnailHeight];
    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  v15 = v13;
  switch(a1)
  {
    case 1:
    case 3:
      if (v11 != 1785750887)
      {
        return 0;
      }

      goto LABEL_7;
    case 2:
      v22 = v11 == 1752589105;
      v23 = 1785750887;
      goto LABEL_25;
    case 4:
      v22 = v11 == 1785750887;
      v23 = 1786276963;
LABEL_25:
      if (!v22 && v11 != v23)
      {
        return 0;
      }

LABEL_7:
      v16 = [a2 outputWidth];
      if (v12 >= v16)
      {
        v17 = v16;
      }

      else
      {
        v17 = v12;
      }

      v18 = [a2 outputHeight];
      if (v15 >= v18)
      {
        v19 = v18;
      }

      else
      {
        v19 = v15;
      }

      if (v17 <= v19)
      {
        v20 = v19;
      }

      else
      {
        v20 = v17;
      }

      if (a3)
      {
        *a3 = v11;
      }

      if (a4)
      {
        *a4 = v17;
        a4[1] = v19;
      }

      if (a5)
      {
        *a5 = v20;
      }

      result = 1;
      break;
    default:
      return 0;
  }

  return result;
}

void *BWPhotoEncoderEncodingOptionsForAuxiliaryImage(unint64_t a1, unint64_t a2, void *a3, int a4, uint64_t a5)
{
  if (!a1 || !a2)
  {
    OUTLINED_FUNCTION_0();
    FigDebugAssert3();
    return 0;
  }

  v6 = a3;
  if (!a3)
  {
    return v6;
  }

  v10 = [objc_msgSend(a3 objectForKeyedSubscript:{*MEMORY[0x1E6966090]), "intValue"}];
  if (!(v10 | [objc_msgSend(v6 objectForKeyedSubscript:{*MEMORY[0x1E6966078]), "intValue"}]))
  {
    return 0;
  }

  v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6 = v11;
  if (v11)
  {
    [v11 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E69919C0]];
    v15.size.width = a1;
    v15.size.height = a2;
    v15.origin.x = 0.0;
    v15.origin.y = 0.0;
    DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v15);
    [v6 setObject:DictionaryRepresentation forKeyedSubscript:*MEMORY[0x1E6991998]];

    if (a4)
    {
      [v6 setObject:&unk_1F2242568 forKeyedSubscript:*MEMORY[0x1E6991960]];
    }

    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a5];
    [v6 setObject:v13 forKeyedSubscript:*MEMORY[0x1E69919A0]];
  }

  else
  {
    OUTLINED_FUNCTION_0();
    FigDebugAssert3();
  }

  return v6;
}

void BWPhotoEncoderDenormalizedZoomRectForAttachedMedia(opaqueCMSampleBuffer *a1, double a2, double a3)
{
  FigNote_AllowInternalDefaultLogs();
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_2_16();
  fig_note_initialize_category_with_default_work_cf();
  OUTLINED_FUNCTION_2_16();
  OUTLINED_FUNCTION_10_4();
  v6 = MEMORY[0x1E695F050];
  v7 = *MEMORY[0x1E695F050];
  v8 = *(MEMORY[0x1E695F050] + 8);
  v9 = *(MEMORY[0x1E695F050] + 16);
  v10 = *(MEMORY[0x1E695F050] + 24);
  if (CMGetAttachment(a1, *off_1E798A3C8, 0))
  {
    v21 = *v6;
    v22 = v6[1];
    if (!FigCFDictionaryGetCGRectIfPresent())
    {
      v21 = 0uLL;
      __asm { FMOV            V0.2D, #1.0 }

      v22 = _Q0;
    }

    ImageBuffer = CMSampleBufferGetImageBuffer(a1);
    if (ImageBuffer)
    {
      v17 = ImageBuffer;
      Width = CVPixelBufferGetWidth(ImageBuffer);
      Height = CVPixelBufferGetHeight(v17);
      if (a3 != 0.0)
      {
        if (Width)
        {
          v20 = Height;
          if (Height)
          {
            FigCaptureMetadataUtilitiesComputeDenormalizedStillImageCropRectForAttachedMedia(Width, Height, *&v21, *(&v21 + 1), *&v22, *(&v22 + 1), a2, a3);
            OUTLINED_FUNCTION_2_3();
            if (CGRectIsNull(v23))
            {
              OUTLINED_FUNCTION_0();
              FigDebugAssert3();
            }

            else
            {
              v24.origin.x = 0.0;
              v24.origin.y = 0.0;
              v24.size.width = Width;
              v24.size.height = v20;
              v26.origin.x = v7;
              v26.origin.y = v8;
              v26.size.width = v9;
              v26.size.height = v10;
              if (!CGRectContainsRect(v24, v26))
              {
                v25.origin.x = OUTLINED_FUNCTION_3();
                v27.size.width = Width;
                v27.size.height = v20;
                CGRectIntersection(v25, v27);
                OUTLINED_FUNCTION_2_3();
              }
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_3();
}

uint64_t BWPhotoEncoderScalePixelBuffer_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t BWPhotoEncoderCreateGTCColorSpaceFromGainMapMetadata_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t BWPhotoEncoderCreateGTCColorSpaceFromGainMapMetadata_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t BWPhotoEncoderCreateGTCColorSpaceFromGainMapMetadata_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void SensitiveContentAnalysisLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"void *SensitiveContentAnalysisLibrary(void)") description:{@"BWSensitiveContentAnalysisSoftLinking.m", 11, @"%s", *a1}];
  __break(1u);
}

void getSCAErrorDomain_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"typeof (((typeof (SCAErrorDomain) (*)(void))0)()) getSCAErrorDomain(void)") description:{@"BWSensitiveContentAnalysisSoftLinking.m", 13, @"%s", dlerror()}];
  __break(1u);
}

uint64_t noiseReductionWithTuningOptions_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t noiseReductionWithTuningOptions_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

uint64_t noiseReductionWithTuningOptions_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

uint64_t noiseReductionInOutWithTuningOptions_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t noiseReductionInOutWithTuningOptions_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

uint64_t noiseReductionInOutWithTuningOptions_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

uint64_t noiseReductionInOutWithTuningOptions_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t noiseReductionInOutWithTuningOptions_cold_5(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t noiseReductionInOutWithTuningOptions_cold_6(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t noiseReductionInOutWithTuningOptions_cold_7(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t noiseReductionInOutWithTuningOptions_cold_8()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

uint64_t noiseReductionInOutWithTuningOptions_cold_9()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

uint64_t noiseReductionInOutWithTuningOptions_cold_10()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

uint64_t noiseReductionInOutWithTuningOptions_cold_11()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

uint64_t noiseReductionPyramidLayers_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t noiseReductionPyramidLayers_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

uint64_t noiseReductionPyramidLayers_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t noiseReductionWithPyramid_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

uint64_t noiseReductionWithPyramid_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t noiseReductionWithPyramid_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

uint64_t noiseReductionWithPyramid_cold_4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

uint64_t noiseReductionWithPyramid_cold_5(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t noiseReductionWithPyramid_cold_6(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t noiseReductionWithPyramid_cold_7(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t noiseReductionPyramidFusionMaxBuffers_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t noiseReductionPyramidFusionMaxBuffers_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

uint64_t noiseReductionPyramidFusionMaxBuffers_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t noiseReductionPyramidFusion_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t noiseReductionPyramidFusion_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

uint64_t noiseReductionPyramidFusion_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

uint64_t noiseReductionPyramidFusion_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t noiseReductionPyramidFusion_cold_5(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t noiseReductionPyramidFusion_cold_6(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t noiseReductionPyramidFusion_cold_7(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t noiseReductionPyramidFusion_cold_8(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t powerBlurNoiseReductionWithTuningOptions_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  FigDebugAssert3();
  fig_log_get_emitter();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigSharedMemBlockGetRemoteAddress(uint64_t result)
{
  if (result)
  {
    if (*(result - 16) == 1936220779)
    {
      v1 = *(result - 4);
      v2 = *(result - 16 - v1 + 8);
      if (v2)
      {
        return v1 + v2 + 16;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_1_11();
      FigDebugAssert3();
      return 0;
    }
  }

  return result;
}

uint64_t shmemAllocatorPreferredSize(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  if (a1 >= 1 && *(a3 + 32) > a1)
  {
    v3 = shmemPoolLookupSubPool(a3, a1);
    if (v3)
    {
      return *(v3 + 16) - 16;
    }
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  FigDebugAssert3();
  return 0;
}

uint64_t FigSharedMemPoolSharedRegionCreateXPCObject_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t FigSharedMemPoolSharedRegionCreateXPCObject_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t FigSharedMemPoolSharedRegionCreateXPCObject_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t FigSharedMemPoolSharedRegionCreateXPCObject_cold_4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t FigSharedMemPoolSharedRegionCreateFromXPCObject_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_14();
  return FigDebugAssert3();
}

uint64_t FigSharedMemPoolSharedRegionCreateFromXPCObject_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t FigSharedMemPoolSharedRegionCreateFromXPCObject_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t FigSharedMemPoolSharedRegionCreateFromXPCObject_cold_4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t FigSharedMemPoolSharedRegionCreateFromXPCObject_cold_5()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t shmemRegionRegisterSharedRegion_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t FigSharedMemPoolCreate_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

void FigSharedMemPoolCreate_cold_2(const void *a1, void *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_14();
  *a2 = v4;
  FigDebugAssert3();

  CFRelease(a1);
}

uint64_t FigSharedMemPoolCreate_cold_3(void *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_14();
  *a1 = v2;
  return FigDebugAssert3();
}

uint64_t FigSharedMemPoolCreate_cold_4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t FigSharedMemPoolCreate_cold_5()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t FigSharedMemPoolCreate_cold_6()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t FigSharedMemPoolCreate_cold_7()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t FigSharedMemPoolCreate_cold_8()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t FigSharedMemBlockAllocate_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t FigSharedMemBlockAllocate_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t FigSharedMemBlockAllocate_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t FigSharedMemBlockRelease_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t FigSharedMemBlockRelease_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t FigSharedMemBlockRetain_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t FigSharedMemBlockRetain_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t FigSharedMemBlockGetRegion_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t FigSharedMemBlockGetRegion_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t shmemRegionFinalize_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t captureSessionRemote_cancelPrewarm(uint64_t a1)
{
  os_unfair_lock_lock(&_MergedGlobals);
  v2 = [objc_msgSend(qword_1ED844E48 objectForKeyedSubscript:{a1), "BOOLValue"}];
  os_unfair_lock_unlock(&_MergedGlobals);
  if (v2)
  {
    if (csr_ensureClientEstablished() || FigXPCCreateBasicMessage() || a1 && FigXPCMessageSetCFString() || FigXPCRemoteClientSendAsyncMessage())
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_1_6();
      FigDebugAssert3();
    }

    else if (a1)
    {
      os_unfair_lock_lock(&_MergedGlobals);
      [qword_1ED844E48 setObject:0 forKeyedSubscript:a1];
      os_unfair_lock_unlock(&_MergedGlobals);
    }
  }

  return FigXPCRelease();
}

uint64_t FigCaptureSessionRemoteCreate_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t FigCaptureSessionRemoteCreate_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t FigCaptureSessionRemoteCreate_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t FigCaptureSessionRemoteCreate_cold_4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t FigCaptureSessionRemoteCreate_cold_5()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t FigCaptureSessionRemoteCreate_cold_6()
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_5_17();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_5_17();
  return FigDebugAssert3();
}

uint64_t FigCaptureSessionRemoteCreate_cold_7()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t FigCaptureSessionRemoteCreate_cold_8()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t captureSessionRemote_prewarm_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t captureSessionRemote_prewarm_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t captureSessionRemote_prewarm_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t captureSessionRemote_prewarm_cold_4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t FigCaptureSessionRemoteSetWombatEnabled_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t FigCaptureSessionRemoteSetWombatEnabled_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t FigCaptureSessionRemoteSetWombatEnabled_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t FigCaptureSessionRemoteSetWombatInUse_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t FigCaptureSessionRemoteSetWombatInUse_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t FigCaptureSessionRemoteSetWombatInUse_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t FigCaptureSessionRemoteSetClientCompositingSinkCallback_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCaptureSessionRemoteSetClientCompositingSinkCallback_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t csr_deadConnectionCallback_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t csr_notificationFilter_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t csr_notificationFilter_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t csr_notificationFilter_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t csr_notificationFilter_cold_4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t csr_notificationFilter_cold_5()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t csr_notificationFilter_cold_6()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t csr_notificationFilter_cold_7()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t csr_notificationFilter_cold_8()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t csr_notificationFilter_cold_9()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t csr_notificationFilter_cold_10()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t csr_notificationFilter_cold_11()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t csr_notificationFilter_cold_12()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t csr_notificationFilter_cold_13()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t csr_notificationFilter_cold_14()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t csr_notificationFilter_cold_15()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t csr_notificationFilter_cold_16()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t csr_notificationFilter_cold_17()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t captureSessionRemote_handleServerMessage_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t captureSessionRemote_handleServerMessage_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t csr_masterClockFromClockType_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t csr_masterClockFromClockType_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t csr_masterClockFromClockType_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t csr_deserializeClientCompositingSampleBuffer_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t csr_deserializeClientCompositingSampleBuffer_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t csr_deserializeClientCompositingSampleBuffer_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t csr_deserializeClientCompositingSampleBuffer_cold_4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t csr_deserializeClientCompositingSampleBuffer_cold_5()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t captureSessionRemote_Invalidate_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t captureSessionRemote_Invalidate_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t captureSessionRemote_Finalize_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t captureSessionRemote_Finalize_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t captureSessionRemote_CopyProperty_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t captureSessionRemote_CopyProperty_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t captureSessionRemote_SetProperty_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t captureSessionRemote_SetProperty_cold_2(id *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2_8();
  [*a1 code];
  return FigSignalErrorAtGM();
}

uint64_t captureSessionRemote_SetProperty_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t captureSessionRemote_getObjectID_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t captureSessionRemote_getObjectID_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t captureSessionRemote_SetSectionProperty_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t captureSessionRemote_SetSectionProperty_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t captureSessionRemote_SetSectionProperty_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t captureSessionRemote_SetSectionProperty_cold_4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

void captureSessionRemote_SetSectionProperty_cold_5(uint64_t a1, void *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  FigDebugAssert3();

  objc_autoreleasePoolPop(a2);
}

uint64_t captureSessionRemote_SetSectionProperty_cold_6()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t captureSessionRemote_SetSectionProperty_cold_7()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t captureSessionRemote_SetSectionProperty_cold_8()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t captureSessionRemote_SetSectionProperty_cold_9()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t captureSessionRemote_SetSectionProperty_cold_10()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t captureSessionRemote_CopySectionProperty_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t captureSessionRemote_CopySectionProperty_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t captureSessionRemote_CopySectionProperty_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t captureSessionRemote_CopySectionProperty_cold_4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t captureSessionRemote_CopySectionProperty_cold_5()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t captureSessionRemote_SetConfiguration_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t captureSessionRemote_SetConfiguration_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t captureSessionRemote_IrisStillImageSinkPrepareToCapture_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t captureSessionRemote_IrisStillImageSinkPrepareToCapture_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t captureSessionRemote_IrisStillImageSinkPrepareToCapture_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t captureSessionRemote_IrisStillImageSinkCancelMomentCapture_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t captureSessionRemote_IrisStillImageSinkCancelMomentCapture_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t captureSessionRemote_IrisStillImageSinkCancelMomentCapture_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t captureSessionRemote_IrisStillImageSinkEndMomentCapture_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t captureSessionRemote_IrisStillImageSinkEndMomentCapture_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t captureSessionRemote_IrisStillImageSinkEndMomentCapture_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t captureSessionRemote_createBasicMessage_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t captureSessionRemote_createBasicMessage_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t captureSessionRemote_commonAsyncMessage_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t captureSessionRemote_commonAsyncMessage_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t captureSessionRemote_commonAsyncMessage_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t captureSessionRemote_commonAsyncMessage_cold_4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t dumpCVPixelBufferToRawFile_cold_1(void *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result == 0;
  return result;
}

uint64_t FigRemoteOperationReceiverCreateMessageReceiver_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

uint64_t __FigRemoteOperationReceiverCreateMessageReceiver_block_invoke_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

uint64_t FigRemoteOperationGetType_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t FigRemoteOperationGetType_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t FigRemoteOperationGetType_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t FigRemoteOperationCleanupMessageData_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t FigRemoteOperationCleanupMessageData_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t roEnqueue_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t roEnqueue_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t roEnqueue_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t roEnqueueDictionaryPayload_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t roEnqueueDictionaryPayload_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t roEnqueueDictionaryPayload_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t roEnqueueDictionaryPayload_cold_4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t roEnqueueDictionaryPayload_cold_5()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t roEnqueueDictionaryPayload_cold_6()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

uint64_t roEnqueueDictionaryPayload_cold_7()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t roEnqueueDictionaryPayload_cold_8()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t roEnqueueDictionaryPayload_cold_9()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t roEnqueueDictionaryPayload_cold_10()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t roEnqueueDictionaryPayload_cold_11()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t roEnqueueDictionaryPayload_cold_12()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t roDeserializeDictionaryPayload_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t roDeserializeDictionaryPayload_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t roDeserializeDictionaryPayload_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t roDeserializeDictionaryPayload_cold_4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t roDeserializeDictionaryPayload_cold_5()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t roDeserializeDictionaryPayload_cold_6()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t roDeserializeDictionaryPayload_cold_7()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t roDeserializeDictionaryPayload_cold_8()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

uint64_t roCleanupDictionaryPayloadOperation_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

uint64_t roEnqueueIOSurface_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t roEnqueueIOSurface_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t roEnqueueIOSurface_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t roEnqueueIOSurface_cold_4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t roEnqueueIOSurface_cold_5()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t roDeserializeIOSurface_cold_1(void *a1, void *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_2_5();
  result = FigDebugAssert3();
  *a2 = *a1;
  return result;
}

uint64_t roDeserializeIOSurface_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t roDeserializeIOSurface_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

uint64_t roDeserializeIOSurface_cold_4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

uint64_t roDeserializeIOSurface_cold_5()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t roCleanupIOSurfaceOperation_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

uint64_t roEnqueueSampleBuffer_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t roEnqueueSampleBuffer_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

uint64_t roEnqueueSampleBuffer_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t roEnqueueSampleBuffer_cold_4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t roDeserializeSampleBuffer_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t roDeserializeSampleBuffer_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t roDeserializeSampleBuffer_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t roCleanupSampleBufferOperation_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

uint64_t roEnqueueFormatDescription_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t roEnqueueFormatDescription_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t roEnqueueFormatDescription_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t roEnqueueFormatDescription_cold_4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t roEnqueueFormatDescription_cold_5()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t roEnqueueFormatDescription_cold_6()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t roDeserializeFormatDescription_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t roDeserializeFormatDescription_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t roDeserializeFormatDescription_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t roDeserializeFormatDescription_cold_4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t roCleanupFormatDescriptionOperation_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

uint64_t roEnqueueConfigurationLive_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t roEnqueueConfigurationLive_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t roEnqueueConfigurationLive_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t roEnqueueConfigurationLive_cold_4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t roEnqueueConfigurationLive_cold_5()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t roEnqueueConfigurationLive_cold_6()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t roDeserializeConfigurationLive_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t roDeserializeConfigurationLive_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t roDeserializeConfigurationLive_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t roDeserializeConfigurationLive_cold_4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t roCleanupConfigurationLiveOperation_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

uint64_t roSerializationContextGetCacheForName_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t roSerializationContextGetCacheForName_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t roSerializePropertyListData_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t roSerializePropertyListData_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t roSerializePropertyListData_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t roSerializePropertyListData_cold_4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t roSerializationContextGetNameForCache_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t roDeserializePropertyListData_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t roDeserializePropertyListData_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t roDeserializePropertyListData_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t roCreateBlockBufferWrapper_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t roCreateBlockBufferWrapper_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

CFTypeRef nrfp_addFrame(int a1, uint64_t a2, void *a3, void *a4, int a5)
{
  result = [(BWUBNRFProcessorRequest *)a2 processingType];
  if (!result)
  {
    return result;
  }

  v11 = CMGetAttachment(a4, *off_1E798A3C8, 0);
  if ([a2 err] || !-[BWUBNRFProcessorRequest useFrameForMultiFrameProcessing:](a2, a4))
  {
    if (dword_1EB58DE60)
    {
      v14 = OUTLINED_FUNCTION_6_13();
      os_log_type_enabled(v14, v40);
      OUTLINED_FUNCTION_4_0();
      if (a1)
      {
        [objc_msgSend(a2 "input")];
        if (a2 && [(BWUBNRFProcessorRequest *)a2 processingType])
        {
          [*(a2 + 8) expectedFrameCount];
        }

        [a2 err];
        BWStillImageSampleBufferToDisplayString(a4);
        OUTLINED_FUNCTION_48_1();
        OUTLINED_FUNCTION_2_1();
        OUTLINED_FUNCTION_5_1();
      }

      OUTLINED_FUNCTION_2_4();
      OUTLINED_FUNCTION_39_0();
    }

    result = [a2 err];
    if (a2)
    {
      if (result)
      {
        result = [objc_msgSend(objc_msgSend(*(a2 + 8) "captureStreamSettings")];
        if (result)
        {
          result = [objc_msgSend(a2 "input")];
          if (!result)
          {
            result = [objc_msgSend(objc_msgSend(a2 "input")];
            if (result)
            {
              return -[BWUBNRFProcessorInput _setErrorRecoveryFrame:]([a2 input]);
            }
          }
        }
      }
    }

    return result;
  }

  v39 = v11;
  if ([objc_msgSend(v11 objectForKeyedSubscript:{*off_1E798B1E8), "intValue"}])
  {
    v30 = 4294954516;
    goto LABEL_75;
  }

  if (a5)
  {
    [a3 setReferenceFrameIndex:{objc_msgSend(a2, "numberOfFramesAddedForMultiFrameProcessing")}];
    if (dword_1EB58DE60)
    {
      v12 = OUTLINED_FUNCTION_6_13();
      if (os_log_type_enabled(v12, v40))
      {
        v13 = v41;
      }

      else
      {
        v13 = v41 & 0xFFFFFFFE;
      }

      if (v13)
      {
        [objc_msgSend(objc_msgSend(a2 "input")];
        OUTLINED_FUNCTION_2_1();
        OUTLINED_FUNCTION_13();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_2_4();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  if (![a2 deepFusionOutput] || (!objc_msgSend(a3, "referenceFrameHasEVMinus") || objc_msgSend(a2, "numberOfFramesAddedForMultiFrameProcessing") != 1) && ((objc_msgSend(a3, "referenceFrameHasEVMinus") & 1) != 0 || !a5))
  {
    goto LABEL_61;
  }

  v15 = [a2 deepFusionOutput];
  if ([objc_msgSend(objc_msgSend(a2 "input")] && !objc_msgSend(v15, "proxyPixelBuffer"))
  {
    if (a2)
    {
      v16 = *(a2 + 48);
    }

    else
    {
      v16 = 0;
    }

    [a2 input];
    if (![OUTLINED_FUNCTION_12_7() processorController:? newOutputPixelBufferForProcessorInput:? type:?])
    {
      goto LABEL_94;
    }

    [OUTLINED_FUNCTION_19_5() setProxyPixelBuffer:?];
    CVPixelBufferRelease(v16);
    [MEMORY[0x1E695DF90] dictionary];
    [OUTLINED_FUNCTION_37_0() setProxyMetadata:?];
  }

  if ([v15 syntheticReferencePixelBuffer])
  {
    goto LABEL_43;
  }

  if (a2)
  {
    v17 = *(a2 + 48);
  }

  else
  {
    v17 = 0;
  }

  [a2 input];
  if (![OUTLINED_FUNCTION_12_7() processorController:? newOutputPixelBufferForProcessorInput:? type:?])
  {
LABEL_94:
    v30 = 4294954510;
LABEL_75:
    result = [a2 err];
    if (!result)
    {
      return [a2 setErr:v30];
    }

    return result;
  }

  [OUTLINED_FUNCTION_19_5() setSyntheticReferencePixelBuffer:?];
  CVPixelBufferRelease(v17);
LABEL_43:
  if ([v15 syntheticReferenceFusionMapPixelBuffer])
  {
    goto LABEL_48;
  }

  if (a2)
  {
    v18 = *(a2 + 48);
  }

  else
  {
    v18 = 0;
  }

  [a2 input];
  if (![OUTLINED_FUNCTION_12_7() processorController:? newOutputPixelBufferForProcessorInput:? type:?])
  {
    goto LABEL_94;
  }

  [OUTLINED_FUNCTION_19_5() setSyntheticReferenceFusionMapPixelBuffer:?];
  CVPixelBufferRelease(v18);
LABEL_48:
  [MEMORY[0x1E695DF90] dictionary];
  [OUTLINED_FUNCTION_37_0() setSyntheticReferenceMetadata:?];
  if ([objc_msgSend(objc_msgSend(a2 "input")] && !objc_msgSend(v15, "linearOutputPixelBuffer"))
  {
    if (a2)
    {
      v19 = *(a2 + 48);
    }

    else
    {
      v19 = 0;
    }

    [a2 input];
    if ([OUTLINED_FUNCTION_12_7() processorController:? newOutputPixelBufferForProcessorInput:? type:?])
    {
      [OUTLINED_FUNCTION_19_5() setLinearOutputPixelBuffer:?];
      CVPixelBufferRelease(v19);
      [MEMORY[0x1E695DF90] dictionary];
      [OUTLINED_FUNCTION_37_0() setLinearOutputMetadata:?];
    }

    else
    {
      [a2 setDemosaicedRawErr:4294954510];
    }
  }

  if ([a2 gainMapEnabled] && !objc_msgSend(v15, "gainMapOutputPixelBuffer"))
  {
    [a2 input];
    v20 = [OUTLINED_FUNCTION_12_7() processorController:? newOutputPixelBufferForProcessorInput:? type:?];
    if (v20 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [MEMORY[0x1E695DF90] dictionary];
      [OUTLINED_FUNCTION_37_0() setGainMapOutputMetadata:?];
    }

    [v15 setGainMapOutputPixelBuffer:v20];
    CVPixelBufferRelease(v20);
  }

LABEL_61:
  if (dword_1EB58DE60)
  {
    v21 = OUTLINED_FUNCTION_6_13();
    if (os_log_type_enabled(v21, v40))
    {
      v22 = v41;
    }

    else
    {
      v22 = v41 & 0xFFFFFFFE;
    }

    if (v22)
    {
      BWStillImageSampleBufferToDisplayString(a4);
      [objc_msgSend(objc_msgSend(a2 "input")];
      OUTLINED_FUNCTION_1_7();
      OUTLINED_FUNCTION_13();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_2_4();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  ImageBuffer = CMSampleBufferGetImageBuffer(a4);
  v24 = *off_1E798A0B8;
  OUTLINED_FUNCTION_42_1();
  v28 = CVBufferCopyAttachment(v25, v26, v27);
  if (v28)
  {
    v29 = [a3 addInputResource:v28];
  }

  else
  {
    v29 = [OUTLINED_FUNCTION_53_1() addFrame:?];
  }

  v30 = v29;

  CVBufferRemoveAttachment(ImageBuffer, v24);
  if (v30)
  {
    if (a2 && [objc_msgSend(objc_msgSend(*(a2 + 8) "captureStreamSettings")])
    {
      [objc_msgSend(a2 "input")];
      -[BWUBNRFProcessorInput _setErrorRecoveryFrame:]([a2 input]);
      [objc_msgSend(a2 "input")];
      [a3 resetState];
    }

    goto LABEL_75;
  }

  [a2 setNumberOfFramesAddedForMultiFrameProcessing:{objc_msgSend(a2, "numberOfFramesAddedForMultiFrameProcessing") + 1}];
  [objc_msgSend(v39 objectForKeyedSubscript:{*off_1E798B2A8), "floatValue"}];
  v32 = v31;
  [a2 totalExposureTimesOfFramesAddedForMultiFrameProcessing];
  *&v34 = v32 + v33;
  [a2 setTotalExposureTimesOfFramesAddedForMultiFrameProcessing:v34];
  [a2 minExposureTimesOfFramesAddedForMultiFrameProcessing];
  if (v32 < *&v35)
  {
    *&v35 = v32;
  }

  [a2 setMinExposureTimesOfFramesAddedForMultiFrameProcessing:v35];
  [a2 maxExposureTimesOfFramesAddedForMultiFrameProcessing];
  if (v32 >= *&v36)
  {
    *&v36 = v32;
  }

  result = [a2 setMaxExposureTimesOfFramesAddedForMultiFrameProcessing:v36];
  if (dword_1EB58DE60)
  {
    v37 = OUTLINED_FUNCTION_6_13();
    if (os_log_type_enabled(v37, v40))
    {
      v38 = v41;
    }

    else
    {
      v38 = v41 & 0xFFFFFFFE;
    }

    if (v38)
    {
      [objc_msgSend(a2 "input")];
      if (a2 && [(BWUBNRFProcessorRequest *)a2 processingType])
      {
        [*(a2 + 8) expectedFrameCount];
      }

      [objc_msgSend(objc_msgSend(a2 "input")];
      OUTLINED_FUNCTION_48_1();
      OUTLINED_FUNCTION_2_1();
      OUTLINED_FUNCTION_13();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_2_4();
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}

uint64_t __nrfp_createStateMachine_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = objc_autoreleasePoolPush();
  if (a2)
  {
    [OUTLINED_FUNCTION_34_0(88) setOutput:?];
    [*(a2 + 88) resetState];
  }

  [(BWUBNRFProcessorController *)a2 _serviceNextRequest];
  objc_autoreleasePoolPop(v3);

  return [(BWUBNRFProcessorController *)a2 _updateStateIfNeeded];
}

uint64_t __nrfp_createStateMachine_block_invoke_3(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = OUTLINED_FUNCTION_27_0();
  [(BWUBNRFProcessorController *)v5 _setupProcessor];
  objc_autoreleasePoolPop(v2);

  return [(BWUBNRFProcessorController *)a2 _updateStateIfNeeded];
}

uint64_t __nrfp_createStateMachine_block_invoke_4(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = OUTLINED_FUNCTION_27_0();
  [(BWUBNRFProcessorController *)v5 _processSingleImage];
  objc_autoreleasePoolPop(v2);

  return [(BWUBNRFProcessorController *)a2 _updateStateIfNeeded];
}

uint64_t __nrfp_createStateMachine_block_invoke_5(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = OUTLINED_FUNCTION_27_0();
  [(BWUBNRFProcessorController *)v5 _processOriginalImage];
  objc_autoreleasePoolPop(v2);

  return [(BWUBNRFProcessorController *)a2 _updateStateIfNeeded];
}

uint64_t __nrfp_createStateMachine_block_invoke_6(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = OUTLINED_FUNCTION_27_0();
  [(BWUBNRFProcessorController *)v5 _processUBFusion];
  objc_autoreleasePoolPop(v2);

  return [(BWUBNRFProcessorController *)a2 _updateStateIfNeeded];
}

uint64_t __nrfp_createStateMachine_block_invoke_7(uint64_t a1, uint64_t a2)
{
  v3 = objc_autoreleasePoolPush();
  if (a2)
  {
    [(BWUBNRFProcessorController *)a2 _processUBFusion];
  }

  objc_autoreleasePoolPop(v3);

  return [(BWUBNRFProcessorController *)a2 _updateStateIfNeeded];
}

void FusionTrackerLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"void *FusionTrackerLibrary(void)") description:{@"BWFusionTrackerSoftLinking.m", 13, @"%s", *a1}];
  __break(1u);
}

void __getFTCinematicTrackerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getFTCinematicTrackerClass(void)_block_invoke") description:{@"BWFusionTrackerSoftLinking.m", 16, @"Unable to find class %s", "FTCinematicTracker"}];
  __break(1u);
}

void __getFTCinematicTapRequestClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getFTCinematicTapRequestClass(void)_block_invoke") description:{@"BWFusionTrackerSoftLinking.m", 17, @"Unable to find class %s", "FTCinematicTapRequest"}];
  __break(1u);
}

void __getFTCinematicTapResponseClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getFTCinematicTapResponseClass(void)_block_invoke") description:{@"BWFusionTrackerSoftLinking.m", 18, @"Unable to find class %s", "FTCinematicTapResponse"}];
  __break(1u);
}

void __getFTCinematicConfigClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getFTCinematicConfigClass(void)_block_invoke") description:{@"BWFusionTrackerSoftLinking.m", 20, @"Unable to find class %s", "FTCinematicConfig"}];
  __break(1u);
}

void __getFTCinematicInputClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getFTCinematicInputClass(void)_block_invoke") description:{@"BWFusionTrackerSoftLinking.m", 21, @"Unable to find class %s", "FTCinematicInput"}];
  __break(1u);
}

void __getFTTapToBoxClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getFTTapToBoxClass(void)_block_invoke") description:{@"BWFusionTrackerSoftLinking.m", 22, @"Unable to find class %s", "FTTapToBox"}];
  __break(1u);
}

void __getFTEspressoBufferClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getFTEspressoBufferClass(void)_block_invoke") description:{@"BWFusionTrackerSoftLinking.m", 23, @"Unable to find class %s", "FTEspressoBuffer"}];
  __break(1u);
}

void __getFTMSRScalerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getFTMSRScalerClass(void)_block_invoke") description:{@"BWFusionTrackerSoftLinking.m", 25, @"Unable to find class %s", "FTMSRScaler"}];
  __break(1u);
}

void FTCinematicHighPriorityTrackerOpDescription_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"NSString * _Nonnull FTCinematicHighPriorityTrackerOpDescription(FTCinematicHighPriorityTrackerOp)") description:{@"BWFusionTrackerSoftLinking.m", 29, @"%s", dlerror()}];
  __break(1u);
}

void getkFTInvalidTrackId_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"typeof (((typeof (kFTInvalidTrackId) (*)(void))0)()) getkFTInvalidTrackId(void)") description:{@"BWFusionTrackerSoftLinking.m", 31, @"%s", dlerror()}];
  __break(1u);
}

void __getFTBipartiteMatcherClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getFTBipartiteMatcherClass(void)_block_invoke") description:{@"BWFusionTrackerSoftLinking.m", 33, @"Unable to find class %s", "FTBipartiteMatcher"}];
  __break(1u);
}

uint64_t FigFlashlightRemoteCreate_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t FigFlashlightRemoteCreate_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t FigFlashlightRemoteCreate_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t FigFlashlightRemoteCreate_cold_4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

uint64_t FigFlashlightRemoteCreate_cold_5()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_2_22();
  return FigDebugAssert3();
}

uint64_t FigFlashlightRemoteCreate_cold_6()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_2_22();
  return FigDebugAssert3();
}

uint64_t flashlightRemote_deadConnectionCallback_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

uint64_t flashlightRemote_Finalize_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t flashlightRemote_Finalize_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t flashlightRemote_IsAvailable_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t flashlightRemote_IsOverheated_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t flashlightRemote_SetLevel_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t flashlightRemote_SetLevel_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

uint64_t flashlightRemote_GetLevel_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t flashlightRemote_SetBeamWidth_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t flashlightRemote_SetBeamWidth_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

uint64_t flashlightRemote_GetBeamWidth_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t flashlightRemote_NotifyForCurrentState_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t flashlightRemote_NotifyForCurrentState_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

uint64_t flashlightRemote_sendBasicMessage_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

uint64_t flashlightRemote_sendBasicMessage_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t flashlightRemote_sendBasicMessage_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

uint64_t flashlightRemote_sendBasicMessage_cold_4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t flashlightRemote_sendBasicMessage_cold_5()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

uint64_t flashlightRemote_createBasicMessage_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

void FigFlashlightCreate_cold_1(uint64_t a1, CFTypeRef *a2)
{
  OUTLINED_FUNCTION_1_5();
  FigDebugAssert3();
  if (*a2)
  {
    CFRelease(*a2);
  }
}

void AppleDepthLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"void *AppleDepthLibrary(void)") description:{@"BWAppleDepthSoftLinking.m", 13, @"%s", *a1}];
  __break(1u);
}

void __getADMonocularPipelineParametersClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getADMonocularPipelineParametersClass(void)_block_invoke") description:{@"BWAppleDepthSoftLinking.m", 15, @"Unable to find class %s", "ADMonocularPipelineParameters"}];
  __break(1u);
}

void __getADMonocularPipelineClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getADMonocularPipelineClass(void)_block_invoke") description:{@"BWAppleDepthSoftLinking.m", 16, @"Unable to find class %s", "ADMonocularPipeline"}];
  __break(1u);
}

void __getADMutableJasperPointCloudClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getADMutableJasperPointCloudClass(void)_block_invoke") description:{@"BWAppleDepthSoftLinking.m", 18, @"Unable to find class %s", "ADMutableJasperPointCloud"}];
  __break(1u);
}

void __getADJasperPointCloudClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getADJasperPointCloudClass(void)_block_invoke") description:{@"BWAppleDepthSoftLinking.m", 19, @"Unable to find class %s", "ADJasperPointCloud"}];
  __break(1u);
}

void __getADCameraCalibrationClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getADCameraCalibrationClass(void)_block_invoke") description:{@"BWAppleDepthSoftLinking.m", 20, @"Unable to find class %s", "ADCameraCalibration"}];
  __break(1u);
}

void __getADPolynomialsLensDistortionModelClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getADPolynomialsLensDistortionModelClass(void)_block_invoke") description:{@"BWAppleDepthSoftLinking.m", 22, @"Unable to find class %s", "ADPolynomialsLensDistortionModel"}];
  __break(1u);
}

void __getADJasperColorStillsExecutorClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getADJasperColorStillsExecutorClass(void)_block_invoke") description:{@"BWAppleDepthSoftLinking.m", 23, @"Unable to find class %s", "ADJasperColorStillsExecutor"}];
  __break(1u);
}

void __getADJasperColorV2ExecutorClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getADJasperColorV2ExecutorClass(void)_block_invoke") description:{@"BWAppleDepthSoftLinking.m", 24, @"Unable to find class %s", "ADJasperColorV2Executor"}];
  __break(1u);
}

void __getADStereoPipelineClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getADStereoPipelineClass(void)_block_invoke") description:{@"BWAppleDepthSoftLinking.m", 27, @"Unable to find class %s", "ADStereoPipeline"}];
  __break(1u);
}

void __getADStereoV2PipelineClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getADStereoV2PipelineClass(void)_block_invoke") description:{@"BWAppleDepthSoftLinking.m", 28, @"Unable to find class %s", "ADStereoV2Pipeline"}];
  __break(1u);
}

void __getADStereoV2PipelineParametersClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getADStereoV2PipelineParametersClass(void)_block_invoke") description:{@"BWAppleDepthSoftLinking.m", 29, @"Unable to find class %s", "ADStereoV2PipelineParameters"}];
  __break(1u);
}

void __getADPCEDisparityColorPipelineClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getADPCEDisparityColorPipelineClass(void)_block_invoke") description:{@"BWAppleDepthSoftLinking.m", 30, @"Unable to find class %s", "ADPCEDisparityColorPipeline"}];
  __break(1u);
}

void __getADMonocularVideoPipelineClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getADMonocularVideoPipelineClass(void)_block_invoke") description:{@"BWAppleDepthSoftLinking.m", 33, @"Unable to find class %s", "ADMonocularVideoPipeline"}];
  __break(1u);
}

void __getADMonocularVideoPipelineParametersClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getADMonocularVideoPipelineParametersClass(void)_block_invoke") description:{@"BWAppleDepthSoftLinking.m", 34, @"Unable to find class %s", "ADMonocularVideoPipelineParameters"}];
  __break(1u);
}

void __getADMonocularStillsPipelineClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getADMonocularStillsPipelineClass(void)_block_invoke") description:{@"BWAppleDepthSoftLinking.m", 38, @"Unable to find class %s", "ADMonocularStillsPipeline"}];
  __break(1u);
}

void __getADMonocularStillsPipelineParametersClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getADMonocularStillsPipelineParametersClass(void)_block_invoke") description:{@"BWAppleDepthSoftLinking.m", 39, @"Unable to find class %s", "ADMonocularStillsPipelineParameters"}];
  __break(1u);
}

void __getADImageDimensionsClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getADImageDimensionsClass(void)_block_invoke") description:{@"BWAppleDepthSoftLinking.m", 43, @"Unable to find class %s", "ADImageDimensions"}];
  __break(1u);
}

void __getHDRProcessorClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getHDRProcessorClass(void)_block_invoke") description:{@"BWPixelTransferNode.m", 65, @"Unable to find class %s", "HDRProcessor"}];
  __break(1u);
}

void HDRProcessingLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"void *HDRProcessingLibrary(void)") description:{@"BWPixelTransferNode.m", 64, @"%s", *a1}];
  __break(1u);
}

CMTime *msn_getOriginalPTSForSampleBuffer@<X0>(CMTime *result@<X0>, CMTime *a2@<X8>)
{
  v3 = MEMORY[0x1E6960C70];
  *&a2->value = *MEMORY[0x1E6960C70];
  a2->epoch = *(v3 + 16);
  if (result)
  {
    v4 = result;
    v5 = CMGetAttachment(result, *off_1E798A420, 0);
    if (v5)
    {

      return CMTimeMakeFromDictionary(a2, v5);
    }

    else
    {

      return CMSampleBufferGetPresentationTimeStamp(a2, v4);
    }
  }

  return result;
}

void PrivacyAccountingLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"void *PrivacyAccountingLibrary(void)") description:{@"BWPrivacyAccountingSoftLinking.m", 13, @"%s", *a1}];
  __break(1u);
}

void __getPAAccessLoggerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getPAAccessLoggerClass(void)_block_invoke") description:{@"BWPrivacyAccountingSoftLinking.m", 14, @"Unable to find class %s", "PAAccessLogger"}];
  __break(1u);
}

void __getPATCCAccessClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getPATCCAccessClass(void)_block_invoke") description:{@"BWPrivacyAccountingSoftLinking.m", 15, @"Unable to find class %s", "PATCCAccess"}];
  __break(1u);
}

void __getPAApplicationClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getPAApplicationClass(void)_block_invoke") description:{@"BWPrivacyAccountingSoftLinking.m", 17, @"Unable to find class %s", "PAApplication"}];
  __break(1u);
}

void soft_PAAuthenticatedClientIdentity_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"tcc_identity_t soft_PAAuthenticatedClientIdentity(audit_token_t description:{tcc_identity_t)"), @"BWPrivacyAccountingSoftLinking.m", 18, @"%s", dlerror()}];
  __break(1u);
}

uint64_t fcmss_createPropertyListForModelAndBundleIdentifier_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t fcmss_createPropertyListForModelAndBundleIdentifier_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t fcmss_createPropertyListForModelAndBundleIdentifier_cold_4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t fcmss_createPropertyListForModelAndBundleIdentifier_cold_5()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t FigCaptureGetModelSubdirPath_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t FigCaptureGetModelSubdirPath_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t FigCaptureGetModelSubdirPath_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t FigCaptureGetModelSubdirPath_cold_4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

void *FigCaptureMetadataUtilitiesLensModelString(const void *a1)
{
  if (qword_1ED844E60 != -1)
  {
    dispatch_once(&qword_1ED844E60, &__block_literal_global_40);
  }

  v2 = [MEMORY[0x1E696AD60] string];
  if (!v2)
  {
    OUTLINED_FUNCTION_0();
    FigDebugAssert3();
    return v2;
  }

  if (a1)
  {
    v3 = CMGetAttachment(a1, *off_1E798A3C8, 0);
    if (v3)
    {
      v4 = v3;
      v13 = 0;
      v14 = 0;
      FigCaptureMetadataGetManufacturerAndMarketingName(a1, &v13, 0, &v14);
      if (BWDeviceTypeIsExtensionDeviceType([objc_msgSend(v4 objectForKeyedSubscript:{*off_1E798B238), "integerValue"}]))
      {
        if (v14)
        {
          [v2 appendString:?];
        }

        return v2;
      }

      if (v13)
      {
        [v2 appendString:?];
      }

      v5 = [CMGetAttachment(a1 @"CaptureDeviceType"];
      v6 = *off_1E798B540;
      if (([objc_msgSend(v4 objectForKeyedSubscript:{*off_1E798B540), "isEqual:", *off_1E798A0E0}] & 1) != 0 || objc_msgSend(objc_msgSend(v4, "objectForKeyedSubscript:", v6), "isEqual:", *off_1E798A0F8))
      {
        [v2 appendString:@" front"];
        if (v5 != 6 && v5 != 12)
        {
          goto LABEL_20;
        }

        v8 = @" TrueDepth";
      }

      else
      {
        [v2 appendString:@" back"];
        v12 = v5 - 4;
        if ((v5 - 4) > 6 || ((0x71u >> v12) & 1) == 0)
        {
          goto LABEL_20;
        }

        v8 = off_1E7990530[v12];
      }

      [v2 appendString:v8];
LABEL_20:
      [v2 appendString:@" camera"];
      v9 = [v4 objectForKeyedSubscript:*off_1E798B2E0];
      if (v9)
      {
        [v2 appendFormat:@" %@mm", objc_msgSend(_MergedGlobals_0, "stringFromNumber:", v9)];
      }

      v10 = [v4 objectForKeyedSubscript:*off_1E798B2D0];
      if (v10)
      {
        [v2 appendFormat:@" f/%@", objc_msgSend(qword_1ED844E58, "stringFromNumber:", v10)];
      }
    }
  }

  return v2;
}

id FigCaptureMetadataUtilitiesCreateMetadataAttachments(CMSampleBufferRef sbuf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char a9, char a10, char a11, char a12, unsigned __int8 a13, char a14, char a15, void *a16, const void *a17, const void *a18, const void *a19, uint64_t a20, int a21)
{
  LODWORD(v328) = a7;
  if (qword_1ED844E88 != -1)
  {
    dispatch_once(&qword_1ED844E88, &__block_literal_global_285);
  }

  FormatDescription = CMSampleBufferGetFormatDescription(sbuf);
  Dimensions = CMVideoFormatDescriptionGetDimensions(FormatDescription);
  ImageBuffer = CMSampleBufferGetImageBuffer(sbuf);
  v29 = [OUTLINED_FUNCTION_20_0(ImageBuffer @"FrameIsBlackened")];
  v30 = FigCaptureNormalizeAngle(a21);
  v31 = v30;
  if (v30 % 360 && v30 % 90)
  {
    return 0;
  }

  HIDWORD(v323) = v30 % 360;
  HIDWORD(v360) = a5;
  HIDWORD(v328) = a6;
  v427 = 0u;
  v428 = 0u;
  v426 = 0u;
  fcmu_rotationTransformInsideUnitSquare(v30, &v426);
  DeepCopy = objc_alloc_init(MEMORY[0x1E695DF90]);
  v33 = *off_1E798A3C8;
  v381 = CMGetAttachment(sbuf, *off_1E798A3C8, 0);
  if (!v381)
  {
    OUTLINED_FUNCTION_0();
    FigDebugAssert3();
    return DeepCopy;
  }

  HIDWORD(v376) = v31;
  if (qword_1ED844E80 != -1)
  {
    dispatch_once(&qword_1ED844E80, &__block_literal_global_79);
  }

  LODWORD(v360) = v29;
  v34 = *off_1E798B540;
  if (([objc_msgSend(v381 objectForKeyedSubscript:{*off_1E798B540), "isEqual:", *off_1E798A0E0}] & 1) == 0)
  {
    [objc_msgSend(v381 objectForKeyedSubscript:{v34), "isEqual:", *off_1E798A0F8}];
  }

  v425 = 0;
  v424 = 0;
  v423 = 0;
  FigCaptureMetadataGetManufacturerAndMarketingName(sbuf, &v423, &v425, &v424);
  v35 = FigCaptureMetadataUtilitiesStillImageExifOrientationFromRotationDegreesAndMirrored(a3 - HIDWORD(v376), a4 != 0, 0, a16);
  v36 = MEMORY[0x1E696DE78];
  if (a2 == 1684628333)
  {
    v37 = *MEMORY[0x1E696DE78];
    v38 = &unk_1F2242B68;
  }

  else
  {
    v38 = [MEMORY[0x1E696AD98] numberWithInt:v35];
    v37 = *v36;
  }

  [DeepCopy setObject:v38 forKeyedSubscript:v37];
  v39 = Dimensions;
  v40 = OUTLINED_FUNCTION_9_9();
  if (v40)
  {
    OUTLINED_FUNCTION_10_12(v40);
  }

  if (a14)
  {
    v41 = OUTLINED_FUNCTION_9_9();
    OUTLINED_FUNCTION_10_12(v41);
    v42 = OUTLINED_FUNCTION_9_9();
    OUTLINED_FUNCTION_10_12(v42);
    v43 = OUTLINED_FUNCTION_9_9();
    OUTLINED_FUNCTION_10_12(v43);
    OUTLINED_FUNCTION_10_12([v381 objectForKeyedSubscript:*off_1E798B708]);
    v44 = OUTLINED_FUNCTION_9_9();
    OUTLINED_FUNCTION_10_12(v44);
    v45 = OUTLINED_FUNCTION_9_9();
    OUTLINED_FUNCTION_10_12(v45);
  }

  v46 = *MEMORY[0x1E6960498];
  v47 = OUTLINED_FUNCTION_9_9();
  if (v47)
  {
    [DeepCopy setObject:v47 forKeyedSubscript:v46];
    if (FigCFEqual())
    {
      v48 = OUTLINED_FUNCTION_9_9();
      if (v48)
      {
        OUTLINED_FUNCTION_10_12(v48);
      }
    }
  }

  if (a11)
  {
    [DeepCopy setObject:fcmu_makerNoteMetadata(sbuf forKeyedSubscript:{a17, a18, a19), *MEMORY[0x1E696DE30]}];
  }

  v49 = OUTLINED_FUNCTION_9_9();
  if (v49)
  {
    OUTLINED_FUNCTION_10_12(v49);
  }

  v50 = a13;
  v386 = sbuf;
  v371 = DeepCopy;
  if (a12)
  {
    if (qword_1ED844E88 != -1)
    {
      dispatch_once(&qword_1ED844E88, &__block_literal_global_285);
    }

    v434[0] = 0;
    v51 = CMGetAttachment(sbuf, v33, 0);
    if (v51)
    {
      v52 = v51;
      v53 = OUTLINED_FUNCTION_20_0(v51, @"StillImageProcessingFlags");
      if (v53)
      {
        v54 = [v53 unsignedIntValue];
        if ((v54 & 0x40) == 0)
        {
          goto LABEL_234;
        }

        v55 = OUTLINED_FUNCTION_20_0(v54, *off_1E798D2B8);
        if (!v55)
        {
          goto LABEL_234;
        }

        v56 = v55;
        v57 = objc_alloc_init(MEMORY[0x1E695DF90]);
        if (v57)
        {
          v58 = v57;
          v59 = OUTLINED_FUNCTION_20_0([v57 setObject:&unk_1F2242C58 forKeyedSubscript:*off_1E7989DF0], *off_1E798D320);
          v60 = [v56 objectForKeyedSubscript:*off_1E798CEF8];
          if (v59)
          {
            [v59 floatValue];
            v62 = v61;
            [v60 floatValue];
            if (vabds_f32(v62, v63) > 0.01)
            {
              v309 = v52;
              FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
              v433 = 0;
              v432 = OS_LOG_TYPE_DEFAULT;
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v66 = v433;
              if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v432))
              {
                v67 = v66;
              }

              else
              {
                v67 = v66 & 0xFFFFFFFE;
              }

              if (v67)
              {
                [v60 floatValue];
                v69 = v68;
                [v59 floatValue];
                LODWORD(recta.origin.x) = 136315650;
                *(&recta.origin.x + 4) = "fcmu_createPortraitMetadata";
                WORD2(recta.origin.y) = 2048;
                *(&recta.origin.y + 6) = v69;
                HIWORD(recta.size.width) = 2048;
                recta.size.height = v70;
                _os_log_send_and_compose_impl();
              }

              OUTLINED_FUNCTION_23_1();
              fig_log_call_emit_and_clean_up_after_send_and_compose();
              [v60 floatValue];
              v72 = v71;
              [v59 floatValue];
              *size = 134218240;
              *&size[4] = v72;
              *&size[12] = 2048;
              *&size[14] = v73;
              v74 = OUTLINED_FUNCTION_6_0();
              v293 = 0;
              FigCapturePleaseFileRadar(FrameworkRadarComponent, v74, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/CaptureSession/FigCaptureMetadataUtilities.m", 5713, @"LastShownDate:FigCaptureMetadataUtilities.m:5713", @"LastShownBuild:FigCaptureMetadataUtilities.m:5713", 0);
              free(v74);
              v52 = v309;
            }
          }

          sbuf = v386;
          v75 = OUTLINED_FUNCTION_20_0([v58 setObject:v60 forKeyedSubscript:*off_1E7989DA0], *off_1E798D358);
          if (v75)
          {
            v76 = v75;
          }

          else
          {
            v76 = &unk_1F224A7C0;
          }

          v77 = OUTLINED_FUNCTION_20_0([v58 setObject:v76 forKeyedSubscript:*off_1E7989DD0], *off_1E798D350);
          if (v77)
          {
            v78 = v77;
          }

          else
          {
            v78 = &unk_1F224A7C0;
          }

          [v58 setObject:v78 forKeyedSubscript:*off_1E7989DC8];
          [v58 setObject:OUTLINED_FUNCTION_20_0(objc_msgSend(v58 forKeyedSubscript:{"setObject:forKeyedSubscript:", objc_msgSend(v56, "objectForKeyedSubscript:", *off_1E798D220), *off_1E7989DD8), *off_1E798D348), *off_1E7989DC0}];
          [v58 setObject:objc_msgSend(v52 forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798A5B0), *off_1E7989DB0}];
          AttachedInference = BWInferenceGetAttachedInference(v386, 801, 0x1F219E5F0);
          if (AttachedInference)
          {
            v80 = AttachedInference;
          }

          else
          {
            v80 = MEMORY[0x1E695E0F0];
          }

          [v58 setObject:objc_msgSend(MEMORY[0x1E696ACC8] forKeyedSubscript:{"archivedDataWithRootObject:requiringSecureCoding:error:", v80, 1, v434), *off_1E7989DA8}];
          v81 = v434[0];
          if (v434[0])
          {
            [v434[0] code];
            v81 = FigSignalErrorAtGM();
          }

          v82 = [v58 setObject:OUTLINED_FUNCTION_20_0(v81 forKeyedSubscript:{*off_1E798D330), *off_1E7989DE0}];
          v83 = OUTLINED_FUNCTION_20_0(v82, *off_1E798D360);
          DeepCopy = v371;
          v50 = a13;
          if (v83)
          {
            v84 = v83;
            v85 = *(MEMORY[0x1E695F050] + 16);
            *v338 = *MEMORY[0x1E695F050];
            *size = *MEMORY[0x1E695F050];
            *&size[16] = v85;
            *v308 = v85;
            if (FigCFDictionaryGetCGRectIfPresent())
            {
              recta.origin = *v338;
              recta.size = *v308;
              if (CGRectMakeWithDictionaryRepresentation(v84, &recta))
              {
                FigCaptureTransformRectToCoordinateSpaceOfRect(recta.origin.x, recta.origin.y, recta.size.width, recta.size.height, *size, *&size[8], *&size[16]);
                OUTLINED_FUNCTION_2_3();
                FigCaptureUnityRect();
                OUTLINED_FUNCTION_8_3();
                v435.origin.x = OUTLINED_FUNCTION_3();
                v436 = CGRectIntersection(v435, v439);
                v84 = CGRectCreateDictionaryRepresentation(v436);
              }
            }

            v83 = [v58 setObject:v84 forKeyedSubscript:*off_1E7989DB8];
          }

          v86 = OUTLINED_FUNCTION_20_0(v83, *off_1E798D368);
          if (v86)
          {
            [v58 setObject:v86 forKeyedSubscript:*off_1E7989DE8];
          }

          if ([v58 count])
          {
            [v371 setObject:v58 forKeyedSubscript:*off_1E7989D98];
          }

          goto LABEL_61;
        }
      }
    }

    OUTLINED_FUNCTION_0();
    FigDebugAssert3();
LABEL_234:
    v58 = 0;
    DeepCopy = v371;
LABEL_61:

    v39 = Dimensions;
  }

  if (v50)
  {
    v87 = OUTLINED_FUNCTION_9_9();
    if (v87)
    {
      OUTLINED_FUNCTION_10_12(v87);
    }
  }

  v88 = a20;
  v89 = [MEMORY[0x1E695DF90] dictionary];
  if (v89)
  {
    [DeepCopy setObject:v89 forKeyedSubscript:*MEMORY[0x1E696DF28]];
  }

  v90 = HIDWORD(*&v39);
  [v89 setObject:v425 forKeyedSubscript:*MEMORY[0x1E696DF48]];
  [v89 setObject:v424 forKeyedSubscript:*MEMORY[0x1E696DF50]];
  [v89 setObject:qword_1ED844E68 forKeyedSubscript:*MEMORY[0x1E696DF68]];
  [v89 setObject:v423 forKeyedSubscript:*MEMORY[0x1E696DF38]];
  if (!a20)
  {
    v88 = [MEMORY[0x1E695DF00] now];
  }

  v91 = [qword_1ED844E70 stringFromDate:v88];
  [v89 setObject:v91 forKeyedSubscript:*MEMORY[0x1E696DF20]];
  [v89 setObject:&unk_1F2242B80 forKey:*MEMORY[0x1E696DF88]];
  [v89 setObject:&unk_1F2242B80 forKey:*MEMORY[0x1E696DF98]];
  [v89 setObject:&unk_1F2242B98 forKey:*MEMORY[0x1E696DF60]];
  [DeepCopy setObject:&unk_1F2242B80 forKey:*MEMORY[0x1E696D888]];
  [DeepCopy setObject:&unk_1F2242B80 forKey:*MEMORY[0x1E696D880]];
  v92 = [MEMORY[0x1E695DF90] dictionary];
  if (v92)
  {
    [DeepCopy setObject:v92 forKeyedSubscript:*MEMORY[0x1E696D9B0]];
  }

  [v92 setObject:@"0232" forKeyedSubscript:*MEMORY[0x1E696DB48]];
  [v92 setObject:v91 forKeyedSubscript:*MEMORY[0x1E696D998]];
  [v92 setObject:v91 forKeyedSubscript:*MEMORY[0x1E696D990]];
  [qword_1ED844E78 stringFromDate:v88];
  [OUTLINED_FUNCTION_11_12() setObject:? forKeyedSubscript:?];
  [OUTLINED_FUNCTION_11_12() setObject:? forKeyedSubscript:?];
  [FigCaptureMetadataUtilitiesGetTimeZoneFormatter() stringFromDate:v88];
  [OUTLINED_FUNCTION_11_12() setObject:? forKeyedSubscript:?];
  [OUTLINED_FUNCTION_11_12() setObject:? forKeyedSubscript:?];
  v93 = [OUTLINED_FUNCTION_11_12() setObject:? forKeyedSubscript:?];
  width = v39.width;
  height = v39.height;
  v96 = OUTLINED_FUNCTION_20_0(v93, @"EncodedImageSurfaceCGSize");
  if (v96)
  {
    *&size[8] = 0;
    *size = 0;
    v97 = 0x1E696A000uLL;
    if (CGSizeMakeWithDictionaryRepresentation(v96, size))
    {
      width = *size;
      height = *&size[8];
      v39 = *size;
      v90 = *&size[8];
    }
  }

  else
  {
    v97 = 0x1E696A000;
  }

  if (SHIDWORD(v376) % 180 == 90)
  {
    v98 = __ROR8__(v39.width | (v90 << 32), 32);
    v99 = width;
    v90 = HIDWORD(*&v98);
    v39 = v98;
  }

  else
  {
    v99 = height;
    height = width;
  }

  if (height > 0.0 && v99 > 0.0)
  {
    v100 = [*(v97 + 3480) numberWithUnsignedLong:height];
    [v92 setObject:v100 forKeyedSubscript:*MEMORY[0x1E696DAA8]];
    v101 = [*(v97 + 3480) numberWithUnsignedLong:v99];
    [v92 setObject:v101 forKeyedSubscript:*MEMORY[0x1E696DAB0]];
  }

  v308[0] = v90;
  v366 = v39;
  [v92 setObject:v425 forKeyedSubscript:*MEMORY[0x1E696DA50]];
  v102 = FigCaptureMetadataUtilitiesLensModelString(sbuf);
  if (v102)
  {
    [v92 setObject:v102 forKeyedSubscript:*MEMORY[0x1E696DA58]];
  }

  v303 = [MEMORY[0x1E695DF70] array];
  v338[0] = *off_1E798B2E0;
  v103 = [v381 objectForKeyedSubscript:?];
  v333 = *off_1E798B2D0;
  v104 = [v381 objectForKeyedSubscript:?];
  v105 = OUTLINED_FUNCTION_20_0(v104, @"ExifSlaveFocalLengths");
  v106 = OUTLINED_FUNCTION_20_0(v105, @"ExifSlaveLensFNumbers");
  v419 = 0u;
  v420 = 0u;
  v421 = 0u;
  v422 = 0u;
  v114 = OUTLINED_FUNCTION_38_3(v106, v107, v108, v109, v110, v111, v112, v113, v288, v293, v298, v303, v308[0], v308[1], v318, v323, v328, v333, v338[0], v338[1], v347, ImageBuffer, a16, v360, v366, v371, v376, v381, v386, v391, v392, v393, v394, v395, v396, v397, v398, v399, v400, v401, v402, v403, v404, v405, v406, v407, v408, v409, v410, v411, v412, v413, v414, *(&v414 + 1), v415, *(&v415 + 1), v416, *(&v416 + 1), v417, *(&v417 + 1), v418);
  if (v114)
  {
    v88 = v114;
    v123 = *v420;
    v122 = v103;
    do
    {
      v124 = 0;
      do
      {
        if (*v420 != v123)
        {
          objc_enumerationMutation(v105);
        }

        v125 = *(*(&v419 + 1) + 8 * v124);
        [v125 doubleValue];
        v127 = v126;
        [v103 doubleValue];
        if (v127 > v128)
        {
          v103 = v125;
        }

        [v125 doubleValue];
        v130 = v129;
        v131 = [v122 doubleValue];
        if (v130 < v139)
        {
          v122 = v125;
        }

        ++v124;
      }

      while (v88 != v124);
      v114 = OUTLINED_FUNCTION_38_3(v131, v132, v133, v134, v135, v136, v137, v138, v289, v294, v299, v304, v310, v314, v319, v324, v329, v334, v339, v343, v348, target, propertyList, v361, v367, v372, v377, v382, v387, v391, v392, v393, v394, v395, v396, v397, v398, v399, v400, v401, v402, v403, v404, v405, v406, v407, v408, v409, v410, v411, v412, v413, v414, *(&v414 + 1), v415, *(&v415 + 1), v416, *(&v416 + 1), v417, *(&v417 + 1), v418);
      v88 = v114;
    }

    while (v114);
  }

  else
  {
    v122 = v103;
  }

  v416 = 0u;
  v417 = 0u;
  v414 = 0u;
  v415 = 0u;
  v140 = OUTLINED_FUNCTION_19_6(v114, v115, v116, v117, v118, v119, v120, v121, v289, v294, v299, v304, v310, v314, v319, v324, v329, v334, v339, v343, v348, target, propertyList, v361, v367, v372, v377, v382, v387, v391, v392, v393, v394, v395, v396, v397, v398, v399, v400, v401, v402, v403, v404, v405, v406, v407, v408, v409, v410, v411, v412, v413, 0);
  if (v140)
  {
    v88 = v140;
    v148 = *v415;
    v147 = v104;
    do
    {
      v149 = 0;
      do
      {
        if (*v415 != v148)
        {
          objc_enumerationMutation(v106);
        }

        v150 = *(*(&v414 + 1) + 8 * v149);
        [v150 doubleValue];
        v152 = v151;
        [v104 doubleValue];
        if (v152 > v153)
        {
          v104 = v150;
        }

        [v150 doubleValue];
        v155 = v154;
        v156 = [v147 doubleValue];
        if (v155 < v164)
        {
          v147 = v150;
        }

        ++v149;
      }

      while (v88 != v149);
      v140 = OUTLINED_FUNCTION_19_6(v156, v157, v158, v159, v160, v161, v162, v163, v290, v295, v300, v305, v311, v315, v320, v325, v330, v335, v340, v344, v349, targeta, propertyLista, v362, v368, v373, v378, v383, v388, v391, v392, v393, v394, v395, v396, v397, v398, v399, v400, v401, v402, v403, v404, v405, v406, v407, v408, v409, v410, v411, v412, v413, v414);
      v88 = v140;
    }

    while (v140);
  }

  else
  {
    v147 = v104;
  }

  if (v122 && v103 && v147 && v104)
  {
    [v305 addObject:v122];
    [v305 addObject:v103];
    [OUTLINED_FUNCTION_27_1() addObject:?];
    [v305 addObject:v104];
    LODWORD(v140) = [v92 setObject:v305 forKeyedSubscript:*MEMORY[0x1E696DA60]];
  }

  v165 = [objc_msgSend(OUTLINED_FUNCTION_40_2(v140 @"StillSettings"];
  v166 = 0.0;
  v167 = v384;
  if (v165 < 0)
  {
    v168 = [objc_msgSend(v384 objectForKeyedSubscript:{*off_1E798B5E8), "BOOLValue"}];
    v169 = off_1E798B5E0;
    if (!v168)
    {
      v169 = off_1E798B1C0;
    }

    [objc_msgSend(v384 objectForKeyedSubscript:{*v169), "floatValue"}];
    v166 = v170;
  }

  v171 = [v384 objectForKeyedSubscript:*off_1E798B2A8];
  v172 = MEMORY[0x1E696D9E0];
  v173 = MEMORY[0x1E696DAE8];
  if (v171)
  {
    [v171 doubleValue];
    if (v174 <= 0.0)
    {
      v177 = 0.0;
      [v92 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", 0.0), *v172}];
    }

    else
    {
      v175 = v174;
      if (v174 >= 1.0)
      {
        v176 = round(v174 * 10.0) / 10.0;
      }

      else
      {
        v176 = 1.0 / (1.0 / v174 + 0.5);
      }

      [v92 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", v176), *v172}];
      v177 = -log2(v175);
    }

    [v92 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", v177), *v173}];
  }

  v178 = [v384 objectForKeyedSubscript:*off_1E798B1C8];
  if (v178)
  {
    [v92 setObject:v178 forKeyedSubscript:*MEMORY[0x1E696D960]];
  }

  v179 = [v384 objectForKeyedSubscript:v336];
  if (v179)
  {
    HIDWORD(v147) = HIDWORD(v179);
    [v179 doubleValue];
    v181 = v180;
    [OUTLINED_FUNCTION_11_12() setObject:? forKeyedSubscript:?];
    v182 = 0.0;
    if (v181 > 0.0)
    {
      v183 = log2(v181);
      v182 = v183 + v183;
    }

    v184 = [MEMORY[0x1E696AD98] numberWithDouble:v182];
    [v92 setObject:v184 forKeyedSubscript:*MEMORY[0x1E696D8A8]];
  }

  v185 = [v384 objectForKeyedSubscript:*off_1E798B3B0];
  v186 = MEMORY[0x1E696DA40];
  if (v185)
  {
    if (v166 != 0.0)
    {
      [objc_msgSend(v384 objectForKeyedSubscript:{*off_1E798B3A8), "intValue"}];
      *size = 0;
      FigCaptureComputeImageGainFromMetadata();
    }

    v187 = [v185 intValue];
    v188 = &unk_1AD046C1C;
    v189 = 53;
    while (v189)
    {
      v190 = *(v188 - 1);
      v191 = *v188++ + v190;
      --v189;
      if (v187 <= v191 >> 1)
      {
        LOWORD(v187) = v190;
        break;
      }
    }

    v397 = [MEMORY[0x1E696AD98] numberWithShort:v187];
    [v92 setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKeyedSubscript:{"arrayWithObjects:count:", &v397, 1), *v186}];
  }

  FigCaptureNormalizedFocusWindowFromMetadata(v384);
  OUTLINED_FUNCTION_13_10();
  IsNull = CGRectIsNull(v437);
  if (!IsNull)
  {
    if (([OUTLINED_FUNCTION_40_2(IsNull *off_1E798A5E0] & 1) == 0)
    {
      FigCaptureMetadataUtilitiesGetFinalCropRectFromSource();
      OUTLINED_FUNCTION_8_3();
      v199 = OUTLINED_FUNCTION_16_3();
      FigCaptureTransformRectToCoordinateSpaceOfRect(v199, v200, v201, v202, v203, v204, v205);
      OUTLINED_FUNCTION_13_10();
    }

    if (HIDWORD(v326))
    {
      *size = v426;
      *&size[16] = v427;
      v431 = v428;
      v438.origin.x = OUTLINED_FUNCTION_16_3();
      CGRectApplyAffineTransform(v438, v206);
      OUTLINED_FUNCTION_13_10();
    }

    v207 = OUTLINED_FUNCTION_16_3();
    FigCaptureMetadataUtilitiesDenormalizeCropRect(v207, v208, v209, v210);
    LODWORD(v147) = llround(v213);
    LODWORD(v88) = llround(v214);
    v215 = v88 / 2 + llround(v212);
    v393 = [MEMORY[0x1E696AD98] numberWithShort:(v147 / 2 + llround(v211))];
    v394 = [MEMORY[0x1E696AD98] numberWithShort:v215];
    v395 = [MEMORY[0x1E696AD98] numberWithShort:v147];
    v396 = [MEMORY[0x1E696AD98] numberWithShort:v88];
    v216 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v393 count:4];
    [v92 setObject:v216 forKeyedSubscript:*MEMORY[0x1E696DAF8]];
  }

  v217 = [v167 objectForKeyedSubscript:*off_1E798B680];
  if (v217)
  {
    v218 = [v217 intValue];
    if ((v218 & 0x80000000) == 0)
    {
      if (v218 < 0xD)
      {
        v219 = 1;
      }

      else
      {
        v219 = 2;
      }

      if (v218 >= 9)
      {
        v220 = v219;
      }

      else
      {
        v220 = 0;
      }

      v221 = [MEMORY[0x1E696AD98] numberWithInt:v220];
      [v92 setObject:v221 forKeyedSubscript:*MEMORY[0x1E696DAE0]];
    }
  }

  v222 = [v167 objectForKeyedSubscript:v341];
  if (v222)
  {
    LODWORD(v222) = [v92 setObject:v222 forKeyedSubscript:*MEMORY[0x1E696DA18]];
  }

  v229 = OUTLINED_FUNCTION_40_2(v222, @"SDOFCustomRendered", v223, v224, v225, v226, v227, v228, v291, v296, v301, v306, v312, v316, v321, v326, v331, v336, v341, v345, v350, targetb, propertyListb, v363, v369, v374, v379, v384, v389);
  if (v229 || (v229 = [v167 objectForKeyedSubscript:*off_1E798B370]) != 0)
  {
    [v92 setObject:v229 forKeyedSubscript:*MEMORY[0x1E696D988]];
  }

  v230 = [v167 objectForKeyedSubscript:@"CompositeImage"];
  if (v230)
  {
    v231 = [v230 intValue];
    if (v231 < 3)
    {
      v232 = OUTLINED_FUNCTION_11_12();
LABEL_161:
      [v232 setObject:? forKeyedSubscript:?];
      goto LABEL_172;
    }

    if (v231 == 3)
    {
      v233 = [v167 objectForKeyedSubscript:@"SourceImageNumberOfCompositeImage"];
      v234 = [v167 objectForKeyedSubscript:@"SourceExposureTimesOfCompositeImage"];
      if (v233 && v234)
      {
        [OUTLINED_FUNCTION_11_12() setObject:? forKeyedSubscript:?];
        [v92 setObject:v233 forKeyedSubscript:@"SourceImageNumberOfCompositeImage"];
        v232 = v92;
        goto LABEL_161;
      }

      v235 = FigCaptureGetFrameworkRadarComponent();
      LODWORD(v434[0]) = 0;
      LOBYTE(v433) = 0;
      v236 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v237 = v434[0];
      if (os_log_type_enabled(v236, v433))
      {
        v238 = v237;
      }

      else
      {
        v238 = v237 & 0xFFFFFFFE;
      }

      if (v238)
      {
        LODWORD(recta.origin.x) = 136315138;
        *(&recta.origin.x + 4) = "FigCaptureMetadataUtilitiesCreateMetadataAttachments";
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_23_1();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      *size = 0;
      v239 = OUTLINED_FUNCTION_6_0();
      v297 = 0;
      FigCapturePleaseFileRadar(v235, v239, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/CaptureSession/FigCaptureMetadataUtilities.m", 1411, @"LastShownDate:FigCaptureMetadataUtilities.m:1411", @"LastShownBuild:FigCaptureMetadataUtilities.m:1411", 0);
      free(v239);
      v167 = v385;
    }
  }

LABEL_172:
  v240 = [v167 objectForKeyedSubscript:*off_1E798B298];
  v241 = MEMORY[0x1E696D9C8];
  if (v240)
  {
    v242 = v240;
    if (v166 != 0.0)
    {
      [v240 floatValue];
      *&v244 = v243 - v166;
      v242 = [MEMORY[0x1E696AD98] numberWithFloat:v244];
    }

    [v92 setObject:v242 forKeyedSubscript:*v241];
  }

  v245 = [v167 objectForKeyedSubscript:@"ExifWhiteBalance"];
  if (v245)
  {
    [v92 setObject:v245 forKeyedSubscript:*MEMORY[0x1E696DB50]];
  }

  v246 = [v167 objectForKeyedSubscript:*off_1E798A5C0];
  if (v246)
  {
    if ([v246 intValue] == 4)
    {
      v247 = &unk_1F2242B68;
    }

    else
    {
      v247 = &unk_1F2242B50;
    }

    [v92 setObject:v247 forKeyedSubscript:*MEMORY[0x1E696D9D0]];
    [OUTLINED_FUNCTION_11_12() setObject:? forKeyedSubscript:?];
  }

  [objc_msgSend(v167 objectForKeyedSubscript:{*off_1E798B240), "doubleValue"}];
  if (v248 > 1.0)
  {
    [OUTLINED_FUNCTION_11_12() setObject:? forKeyedSubscript:?];
  }

  v249 = [v167 objectForKeyedSubscript:*off_1E798B2D8];
  if (v249)
  {
    v250 = [v249 doubleValue];
    if (v257 > 0.0)
    {
      v258 = v257;
      v259 = OUTLINED_FUNCTION_40_2(v250, @"BWStillImageCaptureSettings", v251, v252, v253, v254, v255, v256, v292, v297, v302, v307, v313, v317, v322, v327, v332, v337, v342, v346, v351, targetc, propertyListc, v364, v370, v375, v380, v385, v390);
      [objc_msgSend(v259 "metadata")];
      v261 = v260;
      v262 = v260 == 0.0;
      v263 = 1.0;
      if (!v262)
      {
        v263 = v261;
      }

      v264 = v258 * v263;
      [objc_msgSend(v259 "metadata")];
      if (v265 == 0.0)
      {
        v266 = v264;
      }

      else
      {
        v266 = v265;
      }

      v267 = [MEMORY[0x1E696AD98] numberWithInt:llround(v266)];
      [v92 setObject:v267 forKeyedSubscript:*MEMORY[0x1E696DA08]];
    }
  }

  v268 = [v167 objectForKeyedSubscript:*off_1E798B3F0];
  if (v268)
  {
    [v92 setObject:v268 forKeyedSubscript:*MEMORY[0x1E696DA48]];
  }

  v269 = [v167 objectForKeyedSubscript:*off_1E798B4E8];
  v270 = MEMORY[0x1E696AD98];
  if (v269)
  {
    v271 = [v269 intValue];
  }

  else
  {
    v271 = 1;
  }

  v272 = [v270 numberWithInt:v271];
  [v92 setObject:v272 forKeyedSubscript:*MEMORY[0x1E696DA80]];
  v273 = [objc_msgSend(v167 objectForKeyedSubscript:{*off_1E798B350), "intValue"}];
  v274 = 32 * (HIDWORD(v364) == 0);
  if (HIDWORD(v364))
  {
    v275 = HIDWORD(v380);
    if (HIDWORD(v332))
    {
      if (v332 == 2)
      {
        if (v273 == 1)
        {
          v274 = 25;
        }

        else
        {
          v274 = 24;
        }
      }

      else if (v332 == 1)
      {
        if (v273 == 1)
        {
          v274 = 9;
        }

        else
        {
          v274 = 0;
        }
      }

      else if (v332)
      {
        v274 = 32;
      }

      else
      {
        v274 = 16;
      }
    }
  }

  else
  {
    v275 = HIDWORD(v380);
  }

  v276 = [MEMORY[0x1E696AD98] numberWithInt:v274];
  [v92 setObject:v276 forKeyedSubscript:*MEMORY[0x1E696D9F0]];
  [v92 setObject:&unk_1F2242B98 forKeyedSubscript:*MEMORY[0x1E696DAD8]];
  [v92 setObject:&unk_1F2242BC8 forKeyedSubscript:*MEMORY[0x1E696DAD0]];
  ExifAuxRegionsDictForSampleBuffer = FigCaptureMetadataUtiliesCreateExifAuxRegionsDictForSampleBuffer(v390, a9 != 0, 0, v275);
  v278 = MEMORY[0x1E696D8B0];
  if (ExifAuxRegionsDictForSampleBuffer)
  {
    v279 = ExifAuxRegionsDictForSampleBuffer;
    v391 = @"Regions";
    v392 = ExifAuxRegionsDictForSampleBuffer;
    [v375 setObject:objc_msgSend(MEMORY[0x1E695DF20] forKeyedSubscript:{"dictionaryWithObjects:forKeys:count:", &v392, &v391, 1), *MEMORY[0x1E696D8B0]}];
  }

  if (!((a10 == 0) | v364 & 1))
  {
    [v375 setObject:objc_msgSend(v385 forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798B220), *off_1E798A330}];
  }

  v280 = CMGetAttachment(targetc, *MEMORY[0x1E6965D88], 0);
  if (v280 && [v280 isEqualToString:*MEMORY[0x1E6965DD0]])
  {
    v281 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F0B8]);
    v282 = CGColorSpaceCopyICCData(v281);
    [v375 setObject:v282 forKeyedSubscript:*MEMORY[0x1E696D320]];
    CGColorSpaceRelease(v281);
    CFRelease(v282);
    v283 = &unk_1F2242BE0;
  }

  else
  {
    v283 = &unk_1F2242BC8;
  }

  [v92 setObject:v283 forKeyedSubscript:*MEMORY[0x1E696D968]];
  if (v364)
  {
    [v375 setObject:0 forKeyedSubscript:*v278];
    [OUTLINED_FUNCTION_11_12() setObject:? forKeyedSubscript:?];
    [OUTLINED_FUNCTION_11_12() setObject:? forKeyedSubscript:?];
    [OUTLINED_FUNCTION_11_12() setObject:? forKeyedSubscript:?];
    [v92 setObject:&unk_1F2248268 forKeyedSubscript:*v186];
    [OUTLINED_FUNCTION_11_12() setObject:? forKeyedSubscript:?];
  }

  if (!propertyListc)
  {
    DeepCopy = v375;
    v284 = v390;
    if (!a15)
    {
      return DeepCopy;
    }

    goto LABEL_228;
  }

  DeepCopy = CFPropertyListCreateDeepCopy(*MEMORY[0x1E695E480], propertyListc, 1uLL);
  v284 = v390;
  if ((BWStillImageProcessingFlagsForSampleBuffer(v390) & 0x100000) != 0)
  {
    CFDictionaryRemoveValue(DeepCopy, *MEMORY[0x1E696DBF0]);
  }

  FigCFDictionaryAddEntriesToDictionaryWithRecursion();

  if (a15)
  {
LABEL_228:
    v285 = *off_1E798A518;
    v286 = CMGetAttachment(v284, *off_1E798A518, 0);
    if (v286)
    {
      [DeepCopy setObject:v286 forKeyedSubscript:v285];
    }
  }

  return DeepCopy;
}