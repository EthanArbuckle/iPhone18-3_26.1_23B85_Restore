@interface UpdateCurrentSessionFromLikelyDestinations
@end

@implementation UpdateCurrentSessionFromLikelyDestinations

void __routingSessionManager_UpdateCurrentSessionFromLikelyDestinations_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  if (v2)
  {
    v6 = *(a1 + 48);
    CFRetain(*(a1 + 32));
    v4 = v6;
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __routingSessionManager_startSessionIfNecessary_block_invoke;
  v7[3] = &__block_descriptor_56_e56_v32__0i8____CFDictionary__12__ARPPredictionContext_20C28l;
  v7[4] = v2;
  v8 = v4;
  if (v2)
  {
    CFRetain(v2);
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __routingSessionManager_findTopAvailablePredictedDestination_block_invoke;
  v10[3] = &unk_1E7AECE30;
  v10[4] = v7;
  v10[5] = v2;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __routingSessionManager_findTopAvailablePredictedDestination_block_invoke_198;
  v9[3] = &unk_1E7AECE58;
  v9[4] = v7;
  v9[5] = v2;
  routingSessionManager_discoverRoutes(v10, v9, v3);
  v5 = *(a1 + 32);
  if (v5)
  {
    CFRelease(v5);
  }
}

void __routingSessionManager_UpdateCurrentSessionFromLikelyDestinations_block_invoke(uint64_t a1)
{
  v38[16] = *MEMORY[0x1E69E9840];
  Current = CFAbsoluteTimeGetCurrent();
  routingSessionManager_getConfiguration(&v36);
  v3 = v37;
  v4 = *MEMORY[0x1E695E480];
  v5 = CFAbsoluteTimeGetCurrent();
  routingSessionManager_getConfiguration(&v34);
  v6 = CFDateCreate(v4, v5 - v35);
  isVideoOnScreen = routingSessionManager_isVideoOnScreen(*(a1 + 32));
  v8 = *(*(a1 + 40) + 40);
  FigSimpleMutexLock();
  v9 = *(*(a1 + 40) + 48);
  v31 = v6;
  if (v9)
  {
    v10 = 0;
    while (CFArrayGetCount(v9) > v10)
    {
      CFArrayGetValueAtIndex(*(*(a1 + 40) + 48), v10);
      LOBYTE(v38[0]) = 0;
      FigCFDictionaryGetBooleanIfPresent();
      if (LOBYTE(v38[0]))
      {
        v11 = 0;
        goto LABEL_8;
      }

      ++v10;
      v9 = *(*(a1 + 40) + 48);
      if (!v9)
      {
        break;
      }
    }
  }

  v11 = 1;
LABEL_8:
  v38[0] = 0;
  v12 = OUTLINED_FUNCTION_20_1();
  Mutable = CFArrayCreateMutable(v4, 0, MEMORY[0x1E695E9C0]);
  v14 = OUTLINED_FUNCTION_20_1();
  Float32 = FigCFNumberCreateFloat32();
  CFDictionarySetValue(v14, @"RouteName", @"Fake route name");
  CFDictionarySetValue(v14, @"RouteUID", @"Fake route ID");
  CFDictionarySetValue(v14, @"AudioRouteName", @"AirTunes");
  CFDictionarySetValue(v14, @"AudioRouteSubType", @"AppleTV");
  v16 = *MEMORY[0x1E695E4D0];
  CFDictionarySetValue(v14, @"RouteSupportsAirPlayVideo", *MEMORY[0x1E695E4D0]);
  CFDictionarySetValue(v14, @"RouteSupportsAirPlayScreen", v16);
  CFArrayAppendValue(Mutable, v14);
  if (Mutable)
  {
    CFDictionarySetValue(v12, @"routingSessionDestination_RouteDescriptors", Mutable);
  }

  CFDictionarySetValue(v12, @"routingSessionDestination_Probability", Float32);
  CFDictionarySetValue(v12, @"routingSessionDestination_ProvidesExternalVideoPlayback", v16);
  if ((v11 & 1) == 0)
  {
    CFDictionarySetValue(v12, @"routingSessionDestination_FromForcedPrediction", v16);
  }

  v17 = FigRoutingSessionCreate(v4, 1, v12, v38);
  if (!v17 && v38[0])
  {
    v18 = CFRetain(v38[0]);
    if (!Float32)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v18 = 0;
  if (Float32)
  {
LABEL_15:
    CFRelease(Float32);
  }

LABEL_16:
  if (v38[0])
  {
    CFRelease(v38[0]);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (v17)
  {
    FakePredictionContext = 0;
    v22 = v31;
  }

  else
  {
    FakePredictionContext = routingSessionManager_createFakePredictionContext();
    shouldUpdateCurrentSession = routingSessionManager_shouldUpdateCurrentSession(*(*(a1 + 40) + 24), *(*(a1 + 40) + 72), *(*(a1 + 40) + 88), *(*(a1 + 40) + 96), v18, FakePredictionContext, 1, 0, 0, isVideoOnScreen);
    v21 = *(*(a1 + 40) + 40);
    FigSimpleMutexUnlock();
    if (shouldUpdateCurrentSession)
    {
      v27 = Current + v3;
      v28 = *(a1 + 32);
      v22 = v31;
      if (v28)
      {
        CFRetain(v28);
        v29 = *(a1 + 32);
      }

      else
      {
        v29 = 0;
      }

      v30 = CFAbsoluteTimeGetCurrent();
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __routingSessionManager_UpdateCurrentSessionFromLikelyDestinations_block_invoke_2;
      v32[3] = &__block_descriptor_64_e42_v24__0__NSArray_8__ARPPredictionContext_16l;
      v32[4] = *(a1 + 32);
      *&v32[5] = v27;
      v33 = *(a1 + 48);
      routingSessionManager_waitForRecentPredictions(v29, v31, v32, v27 - v30);
    }

    else
    {
      v22 = v31;
      if (dword_1EB75DF00)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        OUTLINED_FUNCTION_0_0();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v24 = *(a1 + 48);
      if (v24)
      {
        v24(*(a1 + 56), 0);
      }
    }
  }

  if (v18)
  {
    CFRelease(v18);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  v25 = *(a1 + 32);
  if (v25)
  {
    CFRelease(v25);
  }

  v26 = *MEMORY[0x1E69E9840];
}

@end