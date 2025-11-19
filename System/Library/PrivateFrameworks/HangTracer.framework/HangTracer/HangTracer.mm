void checkForRollingFGTelemetryEmission(uint64_t a1, int a2, unint64_t a3)
{
  v22 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v5 = atomic_load((a1 + 392));
    if (v5 == -1)
    {
      v7 = shared_ht_log_handle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 408);
        v18 = 67109120;
        LODWORD(v19) = v8;
        _os_log_impl(&dword_1C8286000, v7, OS_LOG_TYPE_DEFAULT, "SpringBoard emitted telemetry: %d", &v18, 8u);
      }

      if (*(a1 + 408) == 1)
      {
        HTForegroundTrackingBegin(a1, a3);
      }

      else
      {
        v13 = shared_ht_log_handle();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v18) = 0;
          _os_log_impl(&dword_1C8286000, v13, OS_LOG_TYPE_DEFAULT, "Encountered invalid event->rollingFGTimestamp, not going to double emit telemetry", &v18, 2u);
        }
      }
    }

    else if (a3 >= v5)
    {
      v10 = MATU_TO_SEC(a3 - v5);
      v11 = v10;
      if (a2)
      {
        v12 = 2;
      }

      else
      {
        if (!isOverPersistentEmissionThreshold(*(a1 + 409), v10))
        {
          goto LABEL_24;
        }

        v12 = 1;
      }

      if (isOverMinEmissionThreshold(v11))
      {
        v14 = @"HTFGUpdatePersistentForegroundness";
        if (a2)
        {
          v14 = @"HTFGUpdateHangOcurred";
        }

        v15 = v14;
        v16 = shared_ht_log_handle();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v18 = 138412546;
          v19 = v15;
          v20 = 2048;
          v21 = v11;
          _os_log_impl(&dword_1C8286000, v16, OS_LOG_TYPE_DEFAULT, "Attempting to emit telemetry for rolling foreground case with HTForegroundUpdateType: %@ with data from the past %f seconds", &v18, 0x16u);
        }

        updateHTForegroundTrackingState(a1, v12, a3);
      }
    }

    else
    {
      v6 = shared_ht_log_handle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        checkForRollingFGTelemetryEmission_cold_1();
      }
    }
  }

LABEL_24:
  v17 = *MEMORY[0x1E69E9840];
}

void checkForHangWithUserMovedAwayAndRecentAssertions(uint64_t a1, int a2, uint64_t a3, unint64_t a4)
{
  v71 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v12 = shared_ht_log_handle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v64 = COERCE_DOUBLE("checkForHangWithUserMovedAwayAndRecentAssertions");
      _os_log_impl(&dword_1C8286000, v12, OS_LOG_TYPE_INFO, "%s: nil event passed", buf, 0xCu);
    }

    goto LABEL_14;
  }

  if ((*(a1 + 372) & 1) == 0)
  {
    v6 = *a1;
    if (*a1 != -1 && v6 > a4)
    {
      v12 = shared_ht_log_handle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        checkForHangWithUserMovedAwayAndRecentAssertions_cold_7();
      }

      goto LABEL_14;
    }

    v10 = MATU_TO_MS((a4 - v6));
    atomic_fetch_add((a1 + 384), v10);
    if (v10 > 100.0)
    {
      if (a2)
      {
        v11 = *(a1 + 40);
      }

      kdebug_trace();
    }

    if (*(a1 + 29))
    {
      v14 = v10 > *(a1 + 8);
    }

    else
    {
      v14 = 0;
    }

    v15 = v10 >= 250.0 || v14;
    if (v15 != 1)
    {
      if (a2)
      {
        v17 = shared_ht_log_handle();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v18 = *(a1 + 48);
          *buf = 67109120;
          LODWORD(v64) = v18;
          _os_log_impl(&dword_1C8286000, v17, OS_LOG_TYPE_INFO, "checkForHang:Hang is not detected for pid @%u during user switched away from App", buf, 8u);
        }

        goto LABEL_32;
      }

LABEL_95:
      checkForRollingFGTelemetryEmission(a1, v15, a4);
      goto LABEL_15;
    }

    v16 = 1;
    if (a2)
    {
      *(a1 + 372) = 1;
      v16 = 10;
    }

    if (*(a1 + 371))
    {
      *(a1 + 371) = 0;
      v17 = shared_ht_log_handle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        checkForHangWithUserMovedAwayAndRecentAssertions_cold_1();
      }

LABEL_32:

      goto LABEL_15;
    }

    if (*(a1 + 115))
    {
      *(a1 + 115) = 0;
      v12 = shared_ht_log_handle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        checkForHangWithUserMovedAwayAndRecentAssertions_cold_2();
      }

LABEL_14:

      goto LABEL_15;
    }

    v19 = [MEMORY[0x1E696AEC0] stringWithCString:a1 + 116 encoding:1];
    v52 = createStateInfoSortedArrayWithPtr(a1 + 416);
    if (isAppBeingDebugged(*(a1 + 48)))
    {
      v20 = shared_ht_log_handle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v64 = v10 / 1000.0;
        _os_log_impl(&dword_1C8286000, v20, OS_LOG_TYPE_DEFAULT, "Hang detected: %.2fs (debugger attached, not reporting)", buf, 0xCu);
      }

      HTCreateAnalyticsEventForAlwaysOnHang(6, v19, v52, v6, a4, v10);
      v21 = alwaysOnSignpost();
      signpostHangInterval(@"Debugger Attached Runloop Hang", v19, v6, a4, v21);

      if (!*(a1 + 29))
      {
        goto LABEL_89;
      }

      v56 = MEMORY[0x1E69E9820];
      v57 = 3221225472;
      v58 = __checkForHangWithUserMovedAwayAndRecentAssertions_block_invoke;
      v59 = &unk_1E8302368;
      v61 = 6;
      v60 = v19;
      v62 = v10;
      AnalyticsSendEventLazy();
      v22 = v60;
LABEL_88:

LABEL_89:
      goto LABEL_15;
    }

    if ((a2 & 1) == 0 && alm_app_measurement_ongoing())
    {
      v23 = shared_ht_log_handle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        checkForHangWithUserMovedAwayAndRecentAssertions_cold_3();
      }

      v16 = 7;
    }

    v51 = v19;
    if (a3 && checkForAssertionOverlap(v6, a4, a3, 1))
    {
      v24 = shared_ht_log_handle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        checkForHangWithUserMovedAwayAndRecentAssertions_cold_4();
      }

      v16 = 9;
      HTCreateAnalyticsEventForAlwaysOnHang(9, v19, v52, v6, a4, v10);
    }

    else
    {
      v25 = shared_ht_log_handle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v64 = v10 / 1000.0;
        _os_log_impl(&dword_1C8286000, v25, OS_LOG_TYPE_DEFAULT, "Hang detected: %.2fs (always-on hang reporting)", buf, 0xCu);
      }

      HTCreateAnalyticsEventForAlwaysOnHang(v16, v19, v52, v6, a4, v10);
      v26 = getStringForSubtype(v16);
      v27 = alwaysOnSignpost();
      v28 = v19;
      v29 = v27;
      signpostHangInterval(v26, v28, v6, a4, v27);

      if (v10 < 250.0)
      {
        v30 = shared_ht_log_handle();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
        {
          checkForHangWithUserMovedAwayAndRecentAssertions_cold_5();
        }
      }

      v19 = v51;
    }

    if (!*(a1 + 29))
    {
      goto LABEL_94;
    }

    v31 = v10 < 250.0 || v14;
    if (v31 || !*(a1 + 30))
    {
      v50 = 0;
    }

    else
    {
      v32 = arc4random_uniform(0xFFFFFFFF) * 100.0 / 4294967300.0;
      v33 = *(a1 + 16);
      v50 = v32 < v33;
      v34 = shared_ht_log_handle();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        v35 = @"(diceRoll over threshold)";
        if (v32 < v33)
        {
          v35 = @"(diceRoll under threshold)";
        }

        v48 = *(a1 + 16);
        v36 = [MEMORY[0x1E696AD98] numberWithBool:{v32 < v33, v35}];
        *buf = 134218754;
        v64 = v32;
        v65 = 2048;
        v66 = v48;
        v67 = 2112;
        v68 = v36;
        v69 = 2112;
        v70 = v47;
        _os_log_impl(&dword_1C8286000, v34, OS_LOG_TYPE_INFO, "Micro Hang Sampling: random sampling diceRoll=%.2f samplingPercent=%.2f%% -> shouldCapture=%@ %@", buf, 0x2Au);

        v19 = v51;
      }
    }

    if (v10 < 250.0)
    {
LABEL_94:

      if (a2)
      {
        goto LABEL_15;
      }

      goto LABEL_95;
    }

    v37 = shared_ht_log_handle();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v38 = @"(not over capture threshold)";
      if (v14)
      {
        v38 = @"(over capture threshold)";
      }

      *buf = 134218498;
      v64 = v10 / 1000.0;
      v65 = 2112;
      v66 = v38;
      if (!v14 && v50)
      {
        v39 = @", (capture microhang)";
      }

      else
      {
        v39 = &stru_1F47F5AE8;
      }

      v67 = 2112;
      v68 = v39;
      _os_log_impl(&dword_1C8286000, v37, OS_LOG_TYPE_DEFAULT, "Hang detected: %.2fs %@ %@", buf, 0x20u);
    }

    if ((a2 & 1) == 0)
    {
      Data = hangEventCaptureUserActionCreateData(a1);
      v41 = Data;
      if (!Data || CFDataGetLength(Data) <= 0x20000)
      {
        goto LABEL_85;
      }

      v42 = shared_ht_log_handle();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        v43 = COERCE_DOUBLE(CFDataGetLength(v41));
        *buf = 134217984;
        v64 = v43;
        _os_log_impl(&dword_1C8286000, v42, OS_LOG_TYPE_DEFAULT, "User action data size %ld exceeding limit", buf, 0xCu);
      }

      CFRelease(v41);
    }

    v41 = 0;
LABEL_85:
    if (*(a1 + 115))
    {
      *(a1 + 115) = 0;
      v22 = shared_ht_log_handle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
      {
        checkForHangWithUserMovedAwayAndRecentAssertions_cold_2();
      }

      goto LABEL_88;
    }

    v44 = *(a1 + 40);
    v49 = *(a1 + 28);
    if (a2)
    {
      v45 = 13;
    }

    else
    {
      v45 = 3;
    }

    v46 = HTConnectionQueue();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __checkForHangWithUserMovedAwayAndRecentAssertions_block_invoke_188;
    block[3] = &__block_descriptor_98_e5_v8__0l;
    block[4] = v45;
    block[5] = a1 + 52;
    block[6] = v44;
    block[7] = v6;
    v54 = v49;
    block[8] = a4;
    block[9] = v16;
    v55 = v50;
    block[10] = a1;
    block[11] = v41;
    dispatch_async(v46, block);

    v19 = v51;
    goto LABEL_94;
  }

LABEL_15:
  v13 = *MEMORY[0x1E69E9840];
}

uint64_t HTUpdateHangTracing(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 32);
    if (v2 == -1 || (result = pthread_self(), v2 == result))
    {
      if (!atomic_load((v1 + 24)))
      {
        v4 = mach_absolute_time();
        v5 = v4;
        if (GetSharedPage_onceToken != -1)
        {
          v7 = v4;
          GetSharedPage_cold_1();
          v5 = v7;
        }

        if (GetSharedPage__sharedPage)
        {
          v6 = GetSharedPage__sharedPage + 4680;
        }

        else
        {
          v6 = 0;
        }

        checkForHangWithUserMovedAwayAndRecentAssertions(v1, 0, v6, v5);
        result = mach_absolute_time();
        *v1 = result;
        *(v1 + 372) = 0;
      }
    }
  }

  return result;
}

double MATU_TO_MS(unint64_t a1)
{
  if (timebaseConversionFactor_onceToken != -1)
  {
    timebaseConversionFactor_cold_1();
  }

  return *&timebaseConversionFactor_timebaseConversion * a1;
}

BOOL isOverPersistentEmissionThreshold(int a1, double a2)
{
  v4 = +[HTPrefs sharedPrefs];
  [v4 persistentFGEmissionThresholdSec];
  if (v5 == 0.0)
  {
    v8 = 900.0;
  }

  else
  {
    v6 = +[HTPrefs sharedPrefs];
    [v6 persistentFGEmissionThresholdSec];
    v8 = v7;
  }

  v9 = fmax(v8, 3600.0);
  if (!a1)
  {
    v9 = v8;
  }

  return v9 <= a2;
}

double MATU_TO_SEC(unint64_t a1)
{
  if (timebaseConversionFactor_onceToken != -1)
  {
    timebaseConversionFactor_cold_1();
  }

  return *&timebaseConversionFactor_timebaseConversion * a1 / 1000.0;
}

void HTSuspendHangTracingWithEndTime(uint64_t a1, unint64_t a2)
{
  if (a1)
  {
    v4 = *(a1 + 32);
    if ((v4 == -1 || v4 == pthread_self()) && !atomic_fetch_add((a1 + 24), 1u))
    {
      if (GetSharedPage_onceToken != -1)
      {
        GetSharedPage_cold_1();
      }

      if (GetSharedPage__sharedPage)
      {
        v5 = GetSharedPage__sharedPage + 4680;
      }

      else
      {
        v5 = 0;
      }

      checkForHangWithUserMovedAwayAndRecentAssertions(a1, 0, v5, a2);
    }
  }
}

void HTSuspendHangTracing(uint64_t a1)
{
  v2 = mach_absolute_time();

  HTSuspendHangTracingWithEndTime(a1, v2);
}

void HTResumeHangTracingWithStartTime(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4 = *(a1 + 32);
    if (v4 == -1 || v4 == pthread_self())
    {
      *a1 = a2;
      *(a1 + 372) = 0;
      if (atomic_fetch_add((a1 + 24), 0xFFFFFFFF) <= 0)
      {
        v5 = shared_ht_log_handle();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
        {
          HTResumeHangTracingWithStartTime_cold_1();
        }
      }
    }
  }
}

id shared_ht_log_handle()
{
  if (shared_ht_log_handle_onceToken != -1)
  {
    shared_ht_log_handle_cold_1();
  }

  v1 = shared_ht_log_handle___ht_log_handle;

  return v1;
}

void HTResumeHangTracing(uint64_t a1)
{
  v2 = mach_absolute_time();

  HTResumeHangTracingWithStartTime(a1, v2);
}

uint64_t HTHangEventCreate(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AAE8] mainBundle];
  v3 = [v2 bundleIdentifier];

  v4 = HTHangEventCreateWithBundleID(a1, v3);
  return v4;
}

id HTPrefsQueue()
{
  if (HTPrefsQueue_onceToken != -1)
  {
    HTPrefsQueue_cold_1();
  }

  v1 = HTPrefsQueue__htPrefsQueue;

  return v1;
}

uint64_t __HTPrefsQueue_block_invoke()
{
  HTPrefsQueue__htPrefsQueue = dispatch_queue_create("com.apple.hangtracer.prefsqueue", 0);

  return MEMORY[0x1EEE66BB8]();
}

void __HTConnectToHTMonitor_block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  *keys = xmmword_1E8302E50;
  v29 = *off_1E8302E60;
  v2 = (a1 + 32);
  v1 = *(a1 + 32);
  if (*(v1 + 371))
  {
    *(v1 + 371) = 0;
    v3 = shared_ht_log_handle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      __HTConnectToHTMonitor_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }

LABEL_4:

    goto LABEL_17;
  }

  if (*(v1 + 115))
  {
    *(v1 + 115) = 0;
    v3 = shared_ht_log_handle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      __HTConnectToHTMonitor_block_invoke_cold_2(v2, v3, v10, v11, v12, v13, v14, v15);
    }

    goto LABEL_4;
  }

  values[0] = xpc_int64_create(1);
  values[1] = xpc_string_create((*v2 + 52));
  values[2] = xpc_string_create((*v2 + 116));
  values[3] = xpc_shmem_create(*(a1 + 40), 0x1680uLL);
  v17 = xpc_dictionary_create(keys, values, 4uLL);
  v18 = dispatch_get_global_queue(0, 0);
  mach_service = xpc_connection_create_mach_service("com.apple.hangtracermonitor", v18, 0);

  if (mach_service)
  {
    xpc_connection_set_event_handler(mach_service, &__block_literal_global_59);
    xpc_connection_resume(mach_service);
  }

  v20 = shared_ht_log_handle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v26 = mach_service;
    _os_log_impl(&dword_1C8286000, v20, OS_LOG_TYPE_INFO, "HTConnectToHTMonitor: htMonitor Connection %@", buf, 0xCu);
  }

  if (mach_service)
  {
    xpc_connection_send_message(mach_service, v17);
    barrier[0] = MEMORY[0x1E69E9820];
    barrier[1] = 3221225472;
    barrier[2] = __HTConnectToHTMonitor_block_invoke_45;
    barrier[3] = &unk_1E83021E8;
    v24 = mach_service;
    xpc_connection_send_barrier(v24, barrier);
  }

  for (i = 3; i != -1; --i)
  {
  }

LABEL_17:
  v22 = *MEMORY[0x1E69E9840];
}

void sub_1C8288378(_Unwind_Exception *a1)
{
  do
  {
    v4 = *(v2 - 8);
    v2 -= 8;
  }

  while (v2 != v1);
  _Unwind_Resume(a1);
}

void HTConnectToHTMonitor(uint64_t a1, uint64_t a2)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __HTConnectToHTMonitor_block_invoke;
  v2[3] = &__block_descriptor_48_e5_v8__0l;
  v2[4] = a1;
  v2[5] = a2;
  if (HTConnectToHTMonitor_onceToken != -1)
  {
    dispatch_once(&HTConnectToHTMonitor_onceToken, v2);
  }
}

uint64_t __shared_ht_log_handle_block_invoke()
{
  shared_ht_log_handle___ht_log_handle = os_log_create("com.apple.hangtracer", "");

  return MEMORY[0x1EEE66BB8]();
}

void HTForegroundTrackingBegin(uint64_t a1, unint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = -1;
    atomic_compare_exchange_strong((a1 + 392), &v4, a2);
    v5 = v4 == -1;
    v6 = shared_ht_log_handle();
    v7 = v6;
    if (v5)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v8 = atomic_load((a1 + 392));
        v18 = 134217984;
        v19 = v8;
        _os_log_impl(&dword_1C8286000, v7, OS_LOG_TYPE_DEFAULT, "Updating event->rollingFGTimestamp from INVALID_FOREGROUND_TIMESTAMP to %llu", &v18, 0xCu);
      }

      atomic_store(a2, (a1 + 400));
      *(a1 + 408) = 0;
      if (*(a1 + 371))
      {
        *(a1 + 371) = 0;
        v7 = shared_ht_log_handle();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
        {
          HTForegroundTrackingBegin_cold_2();
        }
      }

      else
      {
        v7 = [MEMORY[0x1E696AEC0] stringWithCString:a1 + 116 encoding:1];
        v9 = foregroundTrackingSignpost();
        v10 = os_signpost_enabled(v9);

        if (v10)
        {
          v11 = *(a1 + 48);
          v12 = atomic_load((a1 + 400));
          v13 = v12 ^ v11;
          v14 = foregroundTrackingSignpost();
          v15 = v14;
          if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
          {
            v16 = @"Unknown";
            if (v7)
            {
              v16 = v7;
            }

            v18 = 138543362;
            v19 = v16;
            _os_signpost_emit_with_name_impl(&dword_1C8286000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v13, "HTForegroundTracking", "foregroundAppBundleID=%{public}@", &v18, 0xCu);
          }
        }

        else
        {
          v15 = shared_ht_log_handle();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            LOWORD(v18) = 0;
            _os_log_impl(&dword_1C8286000, v15, OS_LOG_TYPE_INFO, "Signposts are not enabled for HTForegroundTrackingSignpost logger, will not emit signposts for foreground tracking.", &v18, 2u);
          }
        }
      }
    }

    else if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      HTForegroundTrackingBegin_cold_1(v7);
    }
  }

  else
  {
    v7 = shared_ht_log_handle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&dword_1C8286000, v7, OS_LOG_TYPE_DEFAULT, "Event nil, returning early.", &v18, 2u);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

uint64_t HTHangEventCreateWithBundleID(uint64_t a1, void *a2)
{
  v43 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = shared_ht_log_handle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1C8286000, v4, OS_LOG_TYPE_DEFAULT, "Creating hang event with BundleID: %{public}@", &buf, 0xCu);
  }

  os_unfair_lock_lock(&frameworkLock);
  if (GetSharedPage_onceToken != -1)
  {
    HTHangEventCreateWithBundleID_cold_1();
  }

  v5 = GetSharedPage__sharedPage;
  if (GetSharedPage__sharedPage && (v6 = *(GetSharedPage__sharedPage + 4), v6 < 8))
  {
    *(GetSharedPage__sharedPage + 4) = v6 + 1;
    v8 = v5 + 584 * v6;
    atomic_store(0, (v8 + 32));
    *(v8 + 8) = mach_absolute_time();
    v7 = v8 + 8;
    *(v8 + 380) = 0;
    v9 = pthread_self();
    *(v8 + 48) = 0;
    v8 += 48;
    *(v8 - 8) = v9;
    *(v8 + 8) = getpid();
    *(v8 - 12) = 0;
    *(v8 - 32) = -1;
    *(v8 - 24) = 0;
    *(v8 + 336) = 0;
    v10 = pthread_self();
    pthread_threadid_np(v10, v8);
    if (a1)
    {
      __strlcpy_chk();
    }

    else
    {
      v11 = shared_ht_log_handle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        HTHangEventCreateWithBundleID_cold_2();
      }

      *(v7 + 100) = 0u;
      *(v7 + 84) = 0u;
      *(v7 + 68) = 0u;
      *(v7 + 52) = 0u;
    }

    if ([v3 cStringUsingEncoding:1])
    {
      __strlcpy_chk();
    }

    else
    {
      v12 = shared_ht_log_handle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        HTHangEventCreateWithBundleID_cold_3();
      }

      *(v7 + 116) = 0u;
      *(v7 + 340) = 0u;
      *(v7 + 356) = 0u;
      *(v7 + 308) = 0u;
      *(v7 + 324) = 0u;
      *(v7 + 276) = 0u;
      *(v7 + 292) = 0u;
      *(v7 + 244) = 0u;
      *(v7 + 260) = 0u;
      *(v7 + 212) = 0u;
      *(v7 + 228) = 0u;
      *(v7 + 180) = 0u;
      *(v7 + 196) = 0u;
      *(v7 + 148) = 0u;
      *(v7 + 164) = 0u;
      *(v7 + 132) = 0u;
    }

    v13 = [v3 rangeOfString:@"com.apple." options:1];
    if (v14)
    {
      v15 = v13 == 0;
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;
    *(v7 + 30) = v16;
    atomic_store(0, (v7 + 384));
    atomic_store(0xFFFFFFFFFFFFFFFFLL, (v7 + 392));
    atomic_store(0xFFFFFFFFFFFFFFFFLL, (v7 + 400));
    *(v7 + 408) = 0;
    HTForegroundTrackingBegin(v7, *v7);
    *(v7 + 409) = [v3 isEqualToString:@"com.apple.springboard"];
    atomic_store(0, (v7 + 576));
    os_unfair_lock_lock(&gHTWatchdogLock);
    v17 = gHTWatchdogMonitor;
    v18 = shared_ht_log_handle();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG);
    if (v17)
    {
      if (v19)
      {
        HTHangEventCreateWithBundleID_cold_4();
      }
    }

    else
    {
      if (v19)
      {
        HTHangEventCreateWithBundleID_cold_5();
      }

      v20 = MEMORY[0x1E69C7610];
      v21 = [MEMORY[0x1E69C75E0] identifierForCurrentProcess];
      v22 = [v20 predicateMatchingIdentifier:v21];

      v23 = [MEMORY[0x1E69C7630] descriptor];
      [v23 setValues:2];
      v24 = MEMORY[0x1E69C75F8];
      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 3221225472;
      v38 = __StartMonitoringWatchdogDisablement_block_invoke_159;
      v39 = &unk_1E8302340;
      v40 = v22;
      v41 = v23;
      v42 = &__block_literal_global_153;
      v18 = v22;
      v25 = v23;
      v26 = [v24 monitorWithConfiguration:&buf];
      v27 = gHTWatchdogMonitor;
      gHTWatchdogMonitor = v26;
    }

    os_unfair_lock_unlock(&gHTWatchdogLock);
    if ([v3 isEqualToString:@"com.apple.springboard"])
    {
      LODWORD(buf) = 0;
      v28 = dispatch_queue_create("com.apple.hangtracer.display.notification", 0);
      notify_register_dispatch("com.apple.iokit.hid.displayStatus", &buf, v28, &__block_literal_global_43);
    }

    os_unfair_lock_unlock(&frameworkLock);
    v29 = HTPrefsQueue();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __HTHangEventCreateWithBundleID_block_invoke_44;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = v7;
    dispatch_async(v29, block);

    v30 = [MEMORY[0x1E696AD88] defaultCenter];
    v31 = [MEMORY[0x1E696ADC8] mainQueue];
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __HTHangEventCreateWithBundleID_block_invoke_2;
    v35[3] = &__block_descriptor_40_e24_v16__0__NSNotification_8l;
    v35[4] = v7;
    v32 = [v30 addObserverForName:@"com.apple.hangtracer.daemonstate" object:0 queue:v31 usingBlock:v35];

    HTConnectToHTMonitor(v7, v5);
  }

  else
  {
    os_unfair_lock_unlock(&frameworkLock);
    v7 = 0;
  }

  v33 = *MEMORY[0x1E69E9840];
  return v7;
}

id foregroundTrackingSignpost()
{
  if (foregroundTrackingSignpost_onceToken != -1)
  {
    foregroundTrackingSignpost_cold_1();
  }

  v1 = foregroundTrackingSignpost__signpostLog;

  return v1;
}

void __GetSharedPage_block_invoke()
{
  v0 = mmap(0, 0x1680uLL, 3, 4097, -1, 0);
  GetSharedPage__sharedPage = v0;
  if (v0 == -1)
  {
    GetSharedPage__sharedPage = 0;
    v1 = shared_ht_log_handle();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      __GetSharedPage_block_invoke_cold_1();
    }
  }

  else
  {
    *v0 = 7;
    v0[716] = 1;
    *(v0 + 1430) = 0;
    atomic_store(0, v0 + 717);
  }
}

uint64_t __foregroundTrackingSignpost_block_invoke()
{
  foregroundTrackingSignpost__signpostLog = os_log_create("com.apple.hangtracer", "foreground_tracking");

  return MEMORY[0x1EEE66BB8]();
}

void __StartMonitoringWatchdogDisablement_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = [a4 state];
  v5 = [v4 tags];
  v6 = [v5 containsObject:@"FBDisableWatchdog"];

  os_unfair_lock_lock(&gHTWatchdogLock);
  if (!gHTWatchdogMonitor)
  {
    v9 = shared_ht_log_handle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      __StartMonitoringWatchdogDisablement_block_invoke_cold_3();
    }

    goto LABEL_17;
  }

  v7 = gHTWatchdogDisabledAssertion;
  v8 = shared_ht_log_handle();
  v9 = v8;
  if (v6)
  {
    if (v7)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        __StartMonitoringWatchdogDisablement_block_invoke_cold_2();
      }

LABEL_17:

      goto LABEL_18;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C8286000, v9, OS_LOG_TYPE_INFO, "Watchdog monitoring: watchdog disabled, beginning assertion", buf, 2u);
    }

    v12 = kHTWatchdogDisabledAssertionName;
    v13 = mach_absolute_time();
    gHTWatchdogDisabledAssertion = _HTBeginNonResponsiveAssertionAtStartTime(v12, v13, 0, 1, 0.0);
  }

  else
  {
    if (!v7)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        __StartMonitoringWatchdogDisablement_block_invoke_cold_1();
      }

      goto LABEL_17;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *v14 = 0;
      _os_log_impl(&dword_1C8286000, v9, OS_LOG_TYPE_INFO, "Watchdog monitoring: watchdog enabled, ending assertion", v14, 2u);
    }

    v10 = gHTWatchdogDisabledAssertion;
    v11 = mach_absolute_time();
    HTEndNonResponsiveTaskAtTime(v10, v11);
    gHTWatchdogDisabledAssertion = 0;
  }

LABEL_18:
  os_unfair_lock_unlock(&gHTWatchdogLock);
}

void __HTInitializeHangTracerMonitor_block_invoke_2(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (MEMORY[0x1CCA730F0]() == MEMORY[0x1E69E9E68])
  {
    v3 = v2;
    pid = xpc_connection_get_pid(v3);
    xpc_connection_set_target_queue(v3, _htMonitorConnectionQueue);
    v5 = shared_ht_log_handle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v17 = pid;
      _os_log_impl(&dword_1C8286000, v5, OS_LOG_TYPE_INFO, "HTInitializeHangTracerMonitor:New XPC connection from Application for pid: %d listening ", buf, 8u);
    }

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __HTInitializeHangTracerMonitor_block_invoke_53;
    handler[3] = &__block_descriptor_36_e33_v16__0__NSObject_OS_xpc_object__8l;
    v15 = pid;
    xpc_connection_set_event_handler(v3, handler);
    xpc_connection_resume(v3);
    v6 = dispatch_source_create(MEMORY[0x1E69E96F0], pid, 0xA0000000uLL, _htMonitorConnectionQueue);
    v7 = v6;
    if (v6)
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __HTInitializeHangTracerMonitor_block_invoke_57;
      v11[3] = &unk_1E8302E98;
      v13 = pid;
      v8 = v6;
      v12 = v8;
      dispatch_source_set_event_handler(v8, v11);
      dispatch_resume(v8);
      v9 = v12;
    }

    else
    {
      v9 = shared_ht_log_handle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __HTInitializeHangTracerMonitor_block_invoke_2_cold_2();
      }
    }
  }

  else
  {
    v3 = shared_ht_log_handle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __HTInitializeHangTracerMonitor_block_invoke_2_cold_1();
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

void HTHangEventAddUserActionCaptureCallback(uint64_t a1, uint64_t a2)
{
  if (!a1 || !a2)
  {
    v5 = shared_ht_log_handle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 0;
      v7 = "User action capture callback not set";
      v8 = &v11;
LABEL_11:
      _os_log_impl(&dword_1C8286000, v5, OS_LOG_TYPE_DEFAULT, v7, v8, 2u);
    }

LABEL_12:

    return;
  }

  v4 = *(a1 + 30);
  v5 = shared_ht_log_handle();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (!v4)
  {
    if (v6)
    {
      *buf = 0;
      v7 = "Skip setting user action callback for 3rd party apps";
      v8 = buf;
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  if (v6)
  {
    *v9 = 0;
    _os_log_impl(&dword_1C8286000, v5, OS_LOG_TYPE_DEFAULT, "User action capture callback set", v9, 2u);
  }

  *(a1 + 376) = a2;
}

void __connectToHTMonitorProcess_block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = MEMORY[0x1CCA72FA0]();
  v4 = MEMORY[0x1CCA730F0](v2);

  if (v4 != MEMORY[0x1E69E9E98])
  {
    v5 = shared_ht_log_handle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315138;
      v8 = v3;
      _os_log_impl(&dword_1C8286000, v5, OS_LOG_TYPE_DEFAULT, "HangTraceMonitor:Received unhandled event from daemon: %s", &v7, 0xCu);
    }
  }

  free(v3);
  v6 = *MEMORY[0x1E69E9840];
}

uint64_t ht_fence_start(uint64_t a1)
{
  if (setupPrefs_onceToken != -1)
  {
    ht_fence_start_cold_1();
  }

  v2 = +[HTPrefs sharedPrefs];
  v3 = [v2 hangtracerDaemonEnabled];

  if ((v3 & 1) == 0)
  {
    v10 = shared_ht_log_handle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      ht_fence_start_cold_2();
    }

    goto LABEL_14;
  }

  v4 = +[HTPrefs sharedPrefs];
  v5 = [v4 fenceTrackingEnabled];

  if ((v5 & 1) == 0)
  {
    v10 = shared_ht_log_handle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      ht_fence_start_cold_3();
    }

    goto LABEL_14;
  }

  v6 = mach_absolute_time();
  v7 = __recentCAFences;
  if (!__recentCAFences)
  {
    v7 = malloc_type_malloc(0x190uLL, 0x1000040451B5BE8uLL);
    __recentCAFences = v7;
    if (!v7)
    {
      v10 = shared_ht_log_handle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        ht_fence_start_cold_5();
      }

LABEL_14:
      v11 = 0;
      goto LABEL_15;
    }
  }

  v8 = __nextFenceIndex;
  __nextFenceIndex = (__nextFenceIndex + 1) % 25;
  v9 = &v7[16 * v8];
  *v9 = a1;
  *(v9 + 1) = v6;
  v10 = shared_ht_log_handle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    ht_fence_start_cold_4();
  }

  v11 = 1;
LABEL_15:

  return v11;
}

double __timebaseConversionFactor_block_invoke()
{
  info = 0;
  mach_timebase_info(&info);
  result = ((info.numer * 0.000001) / info.denom);
  *&timebaseConversionFactor_timebaseConversion = result;
  return result;
}

double timebaseConversionFactor()
{
  if (timebaseConversionFactor_onceToken != -1)
  {
    timebaseConversionFactor_cold_1();
  }

  return *&timebaseConversionFactor_timebaseConversion;
}

void connectToHangTracer()
{
  v0 = HTConnectionQueue();
  dispatch_async(v0, &__block_literal_global_166);
}

uint64_t __HTConnectionQueue_block_invoke()
{
  HTConnectionQueue__htConnectionQueue = dispatch_queue_create("com.apple.hangtracer.connectionqueue", 0);

  return MEMORY[0x1EEE66BB8]();
}

void handleSettingChange(uint64_t a1)
{
  v2 = *(a1 + 29);
  v3 = +[HTPrefs sharedPrefs];
  v4 = [v3 hangtracerDaemonEnabled];

  if (!v4)
  {
    *(a1 + 28) = 0;
    *(a1 + 8) = -1;
    *(a1 + 16) = 0;
    if (v2)
    {
      v8 = HTConnectionQueue();
      v9 = v8;
      v10 = &__block_literal_global_147;
LABEL_12:
      dispatch_async(v8, v10);

      goto LABEL_13;
    }

    goto LABEL_13;
  }

  if (!*(a1 + 30))
  {
    v11 = +[HTPrefs sharedPrefs];
    *(a1 + 28) = [v11 thirdPartyRunLoopHangLogsEnabled];

    v12 = +[HTPrefs sharedPrefs];
    *(a1 + 8) = [v12 runloopHangThirdPartyDurationThresholdMSec];

    *(a1 + 16) = 0;
    if (!v2)
    {
      goto LABEL_8;
    }

LABEL_13:
    *(a1 + 29) = v4;
    return;
  }

  *(a1 + 28) = 1;
  v5 = +[HTPrefs sharedPrefs];
  *(a1 + 8) = [v5 runloopHangDurationThresholdMSec];

  v6 = +[HTPrefs sharedPrefs];
  [v6 samplingPercentForMicroHangs];
  *(a1 + 16) = v7;

  if (v2)
  {
    goto LABEL_13;
  }

LABEL_8:
  connectToHangTracer();
  if (GetSharedPage_onceToken != -1)
  {
    GetSharedPage_cold_1();
  }

  v13 = GetSharedPage__sharedPage;
  if (GetSharedPage__sharedPage)
  {
    v8 = HTConnectionQueue();
    v9 = v8;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __handleSettingChange_block_invoke;
    v14[3] = &__block_descriptor_48_e5_v8__0l;
    v14[4] = a1;
    v14[5] = v13;
    v10 = v14;
    goto LABEL_12;
  }
}

id HTConnectionQueue()
{
  if (HTConnectionQueue_onceToken != -1)
  {
    HTConnectionQueue_cold_1();
  }

  v1 = HTConnectionQueue__htConnectionQueue;

  return v1;
}

void __connectToHangTracer_block_invoke()
{
  if (!hangTracerConnection)
  {
    v0 = HTConnectionQueue();
    mach_service = xpc_connection_create_mach_service("com.apple.hangtracerd", v0, 0);
    v2 = hangTracerConnection;
    hangTracerConnection = mach_service;

    xpc_connection_set_event_handler(hangTracerConnection, &__block_literal_global_168);
    v3 = hangTracerConnection;

    xpc_connection_resume(v3);
  }
}

void __handleSettingChange_block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (hangTracerConnection)
  {
    *keys = xmmword_1E83022D8;
    v10 = *off_1E83022E8;
    v3 = (a1 + 32);
    v2 = *(a1 + 32);
    if (*(v2 + 371))
    {
      *(v2 + 371) = 0;
      v4 = shared_ht_log_handle();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
      {
        __handleSettingChange_block_invoke_cold_1(v3);
      }

LABEL_5:

      goto LABEL_12;
    }

    if (*(v2 + 115))
    {
      *(v2 + 115) = 0;
      v4 = shared_ht_log_handle();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
      {
        __handleSettingChange_block_invoke_cold_2(v3);
      }

      goto LABEL_5;
    }

    v8[0] = xpc_int64_create(1);
    v8[1] = xpc_string_create((*v3 + 52));
    v8[2] = xpc_string_create((*v3 + 116));
    v8[3] = xpc_shmem_create(*(a1 + 40), 0x1680uLL);
    v5 = xpc_dictionary_create(keys, v8, 4uLL);
    xpc_connection_send_message(hangTracerConnection, v5);

    for (i = 3; i != -1; --i)
    {
    }
  }

LABEL_12:
  v7 = *MEMORY[0x1E69E9840];
}

void sub_1C8289F00(_Unwind_Exception *a1)
{
  do
  {
    v4 = *(v2 - 8);
    v2 -= 8;
  }

  while (v2 != v1);
  _Unwind_Resume(a1);
}

void __connectToHangTracer_block_invoke_2(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = MEMORY[0x1CCA72FA0]();
  v4 = MEMORY[0x1CCA730F0](v2);

  if (v4 != MEMORY[0x1E69E9E98])
  {
    v5 = shared_ht_log_handle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = v3;
      _os_log_impl(&dword_1C8286000, v5, OS_LOG_TYPE_DEFAULT, "Received unhandled event from daemon: %s", &v8, 0xCu);
    }

LABEL_8:

    goto LABEL_9;
  }

  if (hangTracerConnection)
  {
    v6 = shared_ht_log_handle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 134218242;
      v9 = hangTracerConnection;
      v10 = 2080;
      v11 = v3;
      _os_log_impl(&dword_1C8286000, v6, OS_LOG_TYPE_DEFAULT, "XPC Error when we still had a connection (%p): %s", &v8, 0x16u);
    }

    v5 = hangTracerConnection;
    hangTracerConnection = 0;
    goto LABEL_8;
  }

LABEL_9:
  free(v3);
  v7 = *MEMORY[0x1E69E9840];
}

void checkForHangWithUserMovedAwayAndRecentAssertions_cold_3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __HTCAQueue_block_invoke()
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_BACKGROUND, 0);
  v1 = dispatch_queue_create("com.apple.hangtracer.coreanalytics", v0);
  v2 = HTCAQueue_caQueue;
  HTCAQueue_caQueue = v1;
}

uint64_t isAppBeingDebugged(int a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  buffer = 0u;
  v16 = 0u;
  if (!proc_pidinfo(a1, 13, 1uLL, &buffer, 64))
  {
    v3 = shared_ht_log_handle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_1C8286000, v3, OS_LOG_TYPE_INFO, "Failed to check if app is being debugged", &v11, 2u);
    }

    goto LABEL_9;
  }

  if ((v17 & 2) != 0)
  {
    v4 = [MEMORY[0x1E696AE30] processInfo];
    v5 = [v4 environment];
    v6 = [v5 objectForKeyedSubscript:@"HT_DISABLE_DEBUGGER_CHECK"];
    v7 = [v6 BOOLValue];

    if (!v7)
    {
      v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:&v16];
      if (([v3 isEqualToString:@"xctest"]& 1) != 0 || ([v3 isEqualToString:@"hangman"]& 1) != 0 || [v3 hasSuffix:@"-Runner"])
      {
        v8 = shared_ht_log_handle();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v11 = 138543618;
          v12 = v3;
          v13 = 1024;
          v14 = a1;
          _os_log_impl(&dword_1C8286000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ [%d] is a test process, isAppBeingDebugged returning NO", &v11, 0x12u);
        }

        v2 = 0;
      }

      else
      {
        v8 = shared_ht_log_handle();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v11) = 0;
          _os_log_impl(&dword_1C8286000, v8, OS_LOG_TYPE_DEFAULT, "App is being debugged, do not track this hang", &v11, 2u);
        }

        v2 = 1;
      }

      goto LABEL_17;
    }

    v3 = shared_ht_log_handle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      isAppBeingDebugged_cold_1();
    }

LABEL_9:
    v2 = 0;
LABEL_17:

    goto LABEL_18;
  }

  v2 = 0;
LABEL_18:
  v9 = *MEMORY[0x1E69E9840];
  return v2;
}

id HTCAQueue()
{
  if (HTCAQueue_onceToken != -1)
  {
    HTCAQueue_cold_1();
  }

  v1 = HTCAQueue_caQueue;

  return v1;
}

__CFString *getStringForSubtype(unint64_t a1)
{
  if (a1 <= 0xA)
  {
    a1 = *off_1E8302C78[a1];
  }

  return a1;
}

id alwaysOnSignpost()
{
  if (alwaysOnSignpost_onceToken != -1)
  {
    alwaysOnSignpost_cold_1();
  }

  v1 = alwaysOnSignpost_signpostLog;

  return v1;
}

uint64_t checkForAssertionOverlap(unint64_t a1, unint64_t a2, uint64_t a3, int a4)
{
  v4 = a3;
  v33 = 0;
  v7 = 0;
  v48 = *MEMORY[0x1E69E9840];
  v31 = a2 - a1;
  *&v8 = a3 + 32;
  v9 = 10;
  do
  {
    if (*v4)
    {
      ++v7;
      v10 = *(v4 + 24);
      if (v10 >= *(v4 + 16))
      {
        v10 = *(v4 + 16);
      }

      v11 = *(v4 + 8) <= a1 ? a1 : *(v4 + 8);
      v12 = v10 >= a2 ? a2 : v10;
      if (v12 > v11)
      {
        v13 = shared_ht_log_handle();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v14 = *v4;
          v15 = *(v4 + 8);
          v16 = *(v4 + 24);
          *buf = 134219266;
          v37 = v14;
          v38 = 2080;
          v39 = v8;
          v40 = 2048;
          v41 = v15;
          v42 = 2048;
          v43 = v16;
          v44 = 2048;
          v45 = a1;
          v46 = 2048;
          v47 = a2;
          _os_log_impl(&dword_1C8286000, v13, OS_LOG_TYPE_INFO, "HTAssertion: checkOverlap: hang overlaps with assertion, assertionid=%llu assertionname=(%s) start=%llu end=%llu, hangstart=%llu, hangend=%llu)", buf, 0x3Eu);
        }

        if (*(v4 + 96) == 1)
        {
          if (*(v4 + 24) < a2)
          {
            v17 = shared_ht_log_handle();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              v18 = v17;
              v19 = "HTAssertion: checkOverlap: not ignoring hang during screen turning on";
LABEL_21:
              v20 = 2;
LABEL_22:
              _os_log_impl(&dword_1C8286000, v18, OS_LOG_TYPE_INFO, v19, buf, v20);
              goto LABEL_23;
            }

            goto LABEL_23;
          }

          if (*(v4 + 8) > a1)
          {
            v17 = shared_ht_log_handle();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              v18 = v17;
              v19 = "HTAssertion: checkOverlap: not ignoring hang during screen turning off";
              goto LABEL_21;
            }

LABEL_23:

            goto LABEL_30;
          }

          v21 = MATU_TO_MS(v31);
          v22 = shared_ht_log_handle();
          v17 = v22;
          if (v21 >= 1000.0)
          {
            if (!os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
            {
              goto LABEL_23;
            }

            v23 = MATU_TO_MS(v31);
            *buf = 134217984;
            v37 = v23;
            v18 = v17;
            v19 = "HTAssertion: checkOverlap: not ignoring hang during screen off with duration %.0fms";
            v20 = 12;
            goto LABEL_22;
          }

          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
          {
            checkForAssertionOverlap_cold_1(v34, v31, &v35, v17);
          }
        }

        v33 += v12 - v11;
        if (a4)
        {
          AnalyticsSendEventLazy();
        }
      }
    }

LABEL_30:
    v4 += 104;
    *&v8 += 104;
    --v9;
  }

  while (v9);
  if (!v7)
  {
    v28 = shared_ht_log_handle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      checkForAssertionOverlap_cold_3(v28);
    }

    goto LABEL_48;
  }

  v24 = MATU_TO_MS(v33);
  v25 = MATU_TO_MS(v31) - v24;
  if (v25 >= 250.0)
  {
    v29 = shared_ht_log_handle();
    v28 = v29;
    if (v33)
    {
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v37 = v25;
        _os_log_impl(&dword_1C8286000, v28, OS_LOG_TYPE_INFO, "HTAssertion: checkOverlap: hang partially overlaps assertions, since hangDurationWithoutOverlap=%fms does not qualify as assertion overlap", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      checkForAssertionOverlap_cold_2(v28);
    }

LABEL_48:

    result = 0;
    goto LABEL_49;
  }

  v26 = shared_ht_log_handle();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218496;
    v37 = v24;
    v38 = 2048;
    v39 = v33 * 100.0 / v31;
    v40 = 2048;
    v41 = v25;
    _os_log_impl(&dword_1C8286000, v26, OS_LOG_TYPE_DEFAULT, "HTAssertion: checkOverlap: hang overlaps assertion for %f ms (%f %%), hangDurationWithoutOverlap=%fms -> qualifies as assertion overlap", buf, 0x20u);
  }

  if (a4)
  {
    AnalyticsSendEventLazy();
  }

  result = 1;
LABEL_49:
  v30 = *MEMORY[0x1E69E9840];
  return result;
}

void HTCreateAnalyticsEventForAlwaysOnHang(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, double a6)
{
  v11 = a2;
  v12 = a3;
  v13 = HTCAQueue();
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __HTCreateAnalyticsEventForAlwaysOnHang_block_invoke;
  v16[3] = &unk_1E8302420;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v22 = a1;
  v17 = v12;
  v18 = v11;
  v14 = v11;
  v15 = v12;
  dispatch_async(v13, v16);
}

void signpostHangInterval(void *a1, void *a2, os_signpost_id_t a3, uint64_t a4, void *a5)
{
  v24 = *MEMORY[0x1E69E9840];
  v9 = a1;
  v10 = a2;
  v11 = a5;
  *buf = 0;
  mach_get_times();
  if (os_signpost_enabled(v11))
  {
    v12 = v11;
    v13 = v12;
    if (a3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
    {
      v14 = @"Unknown";
      *buf = 134349826;
      *&buf[4] = a3;
      if (v10)
      {
        v15 = v10;
      }

      else
      {
        v15 = @"Unknown";
      }

      v18 = 2050;
      v19 = a4;
      v20 = 2114;
      if (v9)
      {
        v14 = v9;
      }

      v21 = v15;
      v22 = 2114;
      v23 = v14;
      _os_signpost_emit_with_name_impl(&dword_1C8286000, v13, OS_SIGNPOST_EVENT, a3, "HangInterval", "%{public, signpost.description:begin_time}llu, %{public, signpost.description:end_time}llu, BundleIdOverride=%{public, signpost.description:attribute}@ type=%{public, signpost.telemetry:string2}@ enableTelemetry=YES ", buf, 0x2Au);
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

BOOL isOverMinEmissionThreshold(double a1)
{
  v2 = +[HTPrefs sharedPrefs];
  [v2 minFGEmissionThresholdSec];
  if (v3 == 0.0)
  {
    v6 = 60.0;
  }

  else
  {
    v4 = +[HTPrefs sharedPrefs];
    [v4 minFGEmissionThresholdSec];
    v6 = v5;
  }

  return v6 < a1;
}

void *hangEventCaptureUserActionCreateData(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (a1 && (v1 = *(a1 + 376)) != 0)
  {
    v2 = v1();
    v3 = shared_ht_log_handle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 134217984;
      v7 = [v2 length];
      _os_log_impl(&dword_1C8286000, v3, OS_LOG_TYPE_DEFAULT, "User action data captured with size: %lu", &v6, 0xCu);
    }
  }

  else
  {
    v2 = 0;
  }

  v4 = *MEMORY[0x1E69E9840];
  return v2;
}

void __HTCreateAnalyticsEventForAlwaysOnHang_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = *(a1 + 48);
  v5 = *(a1 + 64);
  v6 = *(a1 + 72);
  v3 = *(a1 + 40);
  AnalyticsSendEventLazy();
}

id __HTCreateAnalyticsEventForAlwaysOnHang_block_invoke_2(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  v2 = HTPrefsQueue();
  HTTelemetryCheckForUpdates(v2);

  if (HTGatherHomeVolumeSpaceInfo_onceToken != -1)
  {
    __HTCreateAnalyticsEventForAlwaysOnHang_block_invoke_2_cold_1();
  }

  if (!HTGatherHomeVolumeSpaceInfo_homeURL)
  {
    goto LABEL_8;
  }

  memset(&v33, 0, 512);
  if (statfs([HTGatherHomeVolumeSpaceInfo_homeURL fileSystemRepresentation], &v33))
  {
    v3 = shared_ht_log_handle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __HTCreateAnalyticsEventForAlwaysOnHang_block_invoke_2_cold_2();
    }

LABEL_8:
    v4 = 0;
    v5 = 0;
    goto LABEL_10;
  }

  v4 = v33.f_blocks * v33.f_bsize;
  v5 = v33.f_bavail * v33.f_bsize;
LABEL_10:
  v6 = +[HTPrefs sharedPrefs];
  v7 = [v6 numOSCryptexFileExtents];

  v8 = +[HTPrefs sharedPrefs];
  v32 = [v8 haveRootsInstalled];

  v9 = +[HTPrefs sharedPrefs];
  v10 = [v9 haveNonDefaultFeatureFlags];

  v11 = +[HTPrefs sharedPrefs];
  v12 = [v11 haveSerialLoggingEnabled];

  v13 = calcluateDurationInCPURoleFromSortedArray(*(a1 + 32), 8, *(a1 + 48), *(a1 + 56));
  v14 = calcluateDurationInCPURoleFromSortedArray(*(a1 + 32), 6, *(a1 + 48), *(a1 + 56));
  v30 = *(a1 + 64) - (v14 + v13);
  v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v15 setObject:kHTCoreAnalyticsAlwaysOn forKeyedSubscript:kHTCoreAnalyticsMode];
  v16 = getStringForSubtype(*(a1 + 72));
  [v15 setObject:v16 forKeyedSubscript:kHTCoreAnalyticsHangType];

  [v15 setObject:*(a1 + 40) forKeyedSubscript:kHTCoreAnalyticsHangBundleID];
  v17 = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 64)];
  [v15 setObject:v17 forKeyedSubscript:kHTCoreAnalyticsHangDuration];

  if (v4)
  {
    v18 = [MEMORY[0x1E696AD98] numberWithDouble:v5 * 100.0 / v4];
    [v15 setObject:v18 forKeyedSubscript:kHTCoreAnalyticsDiskAvailablePercent];

    v19 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v5];
    [v15 setObject:v19 forKeyedSubscript:kHTCoreAnalyticsDiskAvailableBytes];
  }

  if (v7 >= 1)
  {
    v20 = [MEMORY[0x1E696AD98] numberWithInt:v7];
    [v15 setObject:v20 forKeyedSubscript:kHTCoreAnalyticsNumOSCryptexFileExtents];
  }

  v21 = [MEMORY[0x1E696AD98] numberWithBool:{v10, v30}];
  [v15 setObject:v21 forKeyedSubscript:kHTCoreAnalyticsHaveNonDefaultFeatureFlags];

  v22 = [MEMORY[0x1E696AD98] numberWithBool:v12];
  [v15 setObject:v22 forKeyedSubscript:kHTCoreAnalyticsHaveSerialLoggingEnabled];

  v23 = [MEMORY[0x1E696AD98] numberWithBool:v32];
  [v15 setObject:v23 forKeyedSubscript:kHTCoreAnalyticsHaveRootsInstalled];

  v24 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v13];
  [v15 setObject:v24 forKeyedSubscript:kHTCoreAnalyticsHangUIFocal];

  v25 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v14];
  [v15 setObject:v25 forKeyedSubscript:kHTCoreAnalyticsHangUINonFocal];

  v26 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v31];
  [v15 setObject:v26 forKeyedSubscript:kHTCoreAnalyticsHangOtherCPURole];

  v27 = shared_ht_log_handle();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
  {
    v33.f_bsize = 138412290;
    *&v33.f_iosize = v15;
    _os_log_impl(&dword_1C8286000, v27, OS_LOG_TYPE_INFO, "Logging always-on telemetry: %@", &v33, 0xCu);
  }

  v28 = *MEMORY[0x1E69E9840];

  return v15;
}

void HTTelemetryCheckForUpdates(void *a1)
{
  v1 = a1;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __HTTelemetryCheckForUpdates_block_invoke;
  block[3] = &unk_1E83021E8;
  v5 = v1;
  v2 = HTTelemetryCheckForUpdates_onceToken;
  v3 = v1;
  if (v2 != -1)
  {
    dispatch_once(&HTTelemetryCheckForUpdates_onceToken, block);
  }
}

void updateHTForegroundTrackingState(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (!a1)
  {
    return;
  }

  v6 = a2 - 3;
  if ((a2 - 3) < 2)
  {
    v7 = -1;
  }

  else
  {
    v7 = a3;
  }

  v8 = atomic_exchange((a1 + 392), v7);
  if (v8 != -1)
  {
    if (a3 < v8)
    {
      v9 = shared_ht_log_handle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        checkForRollingFGTelemetryEmission_cold_1();
      }

      return;
    }

    v11 = MATU_TO_MS(a3 - v8);
    v12 = atomic_exchange((a1 + 384), 0);
    v13 = createStateInfoSortedArrayWithPtr(a1 + 416);
    v14 = calcluateDurationInCPURoleFromSortedArray(v13, 8, v8, a3);
    v15 = calcluateDurationInCPURoleFromSortedArray(v13, 6, v8, a3);
    if (a2 == 3)
    {
      SharedPage = [HTMonitorPidHangEvent getSharedPageFromPid:*(a1 + 48)];
      if (SharedPage)
      {
LABEL_15:
        v17 = atomic_exchange(&SharedPage->var6, 0);
        v18 = atomic_exchange(&SharedPage->var7, 0);
        v19 = atomic_exchange(&SharedPage->var8, 0);
        v20 = v17 - (v18 + v19);
LABEL_20:
        if (*(a1 + 371))
        {
          *(a1 + 371) = 0;
          v22 = shared_ht_log_handle();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
          {
            HTForegroundTrackingBegin_cold_2();
          }
        }

        else
        {
          v31 = MEMORY[0x1E69E9820];
          v32 = 3221225472;
          v33 = __updateHTForegroundTrackingState_block_invoke;
          v34 = &__block_descriptor_120_e19___NSDictionary_8__0l;
          v35 = a2;
          v36 = v11;
          v37 = v12;
          v38 = v17;
          v39 = a1;
          v40 = v14;
          v41 = v15;
          v42 = v11 - (v14 + v15);
          v43 = v18;
          v44 = v19;
          v45 = v20;
          AnalyticsSendEventLazy();
          if (v6 <= 1)
          {
            if (a2 == 3)
            {
              *(a1 + 408) = 1;
            }

            v23 = foregroundTrackingSignpost();
            v24 = os_signpost_enabled(v23);

            if (v24)
            {
              v25 = *(a1 + 48);
              v26 = atomic_load((a1 + 400));
              v27 = v26 ^ v25;
              v28 = foregroundTrackingSignpost();
              v29 = v28;
              if (v27 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
              {
                v30 = 0;
                _os_signpost_emit_with_name_impl(&dword_1C8286000, v29, OS_SIGNPOST_INTERVAL_END, v27, "HTForegroundTracking", &unk_1C82A5C91, &v30, 2u);
              }
            }

            else
            {
              v29 = shared_ht_log_handle();
              if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
              {
                v30 = 0;
                _os_log_impl(&dword_1C8286000, v29, OS_LOG_TYPE_INFO, "Signposts are not enabled for HTForegroundTrackingSignpost logger, will not emit signposts for foreground tracking.", &v30, 2u);
              }
            }

            atomic_store(0xFFFFFFFFFFFFFFFFLL, (a1 + 400));
          }
        }

        return;
      }
    }

    else
    {
      SharedPage = GetSharedPage();
      if (SharedPage)
      {
        goto LABEL_15;
      }
    }

    v21 = shared_ht_log_handle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      updateHTForegroundTrackingState_cold_1(v21);
    }

    v20 = 0;
    v19 = 0;
    v18 = 0;
    v17 = 0;
    goto LABEL_20;
  }

  v10 = shared_ht_log_handle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    updateHTForegroundTrackingState_cold_4(v10);
  }

  atomic_store(0xFFFFFFFFFFFFFFFFLL, (a1 + 392));
}

uint64_t GetSharedPage()
{
  if (GetSharedPage_onceToken != -1)
  {
    GetSharedPage_cold_1();
  }

  return GetSharedPage__sharedPage;
}

id __updateHTForegroundTrackingState_block_invoke(void *a1)
{
  v17[11] = *MEMORY[0x1E69E9840];
  v16[0] = kHTCoreAnalyticsHTForegroundUpdateType;
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a1[4]];
  v17[0] = v15;
  v16[1] = kHTCoreAnalyticsForegroundTime;
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:1000 * ((a1[5] + 500) / 0x3E8uLL)];
  v17[1] = v14;
  v16[2] = kHTCoreAnalyticsRunloopTime;
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:1000 * ((a1[6] + 500) / 0x3E8uLL)];
  v17[2] = v13;
  v16[3] = kHTCoreAnalyticsAssertionTime;
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:1000 * ((a1[7] + 500) / 0x3E8uLL)];
  v17[3] = v12;
  v16[4] = kHTCoreAnalyticsHangBundleID;
  v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a1[8] + 116];
  v17[4] = v2;
  v16[5] = kHTCoreAnalyticsHTForegroundUIFocal;
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:1000 * ((a1[9] + 500) / 0x3E8uLL)];
  v17[5] = v3;
  v16[6] = kHTCoreAnalyticsHTForegroundUINonFocal;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:1000 * ((a1[10] + 500) / 0x3E8uLL)];
  v17[6] = v4;
  v16[7] = kHTCoreAnalyticsHTForegroundOtherCPURole;
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:1000 * ((a1[11] + 500) / 0x3E8uLL)];
  v17[7] = v5;
  v16[8] = kHTCoreAnalyticsAssertionUIFocal;
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:1000 * ((a1[12] + 500) / 0x3E8uLL)];
  v17[8] = v6;
  v16[9] = kHTCoreAnalyticsAssertionUINonFocal;
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:1000 * ((a1[13] + 500) / 0x3E8uLL)];
  v17[9] = v7;
  v16[10] = kHTCoreAnalyticsAssertionOtherCPURole;
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:1000 * ((a1[14] + 500) / 0x3E8uLL)];
  v17[10] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:11];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

uint64_t __alwaysOnSignpost_block_invoke()
{
  alwaysOnSignpost_signpostLog = os_log_create("com.apple.hangtracer", "always_on_hang");

  return MEMORY[0x1EEE66BB8]();
}

void __HTTelemetryCheckForUpdates_block_invoke(uint64_t a1)
{
  HasRunThisBoot = HTTelemetryHasRunThisBoot();
  v3 = shared_ht_log_handle();
  empty = v3;
  if (HasRunThisBoot)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __HTTelemetryCheckForUpdates_block_invoke_cold_2(empty);
    }
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&dword_1C8286000, empty, OS_LOG_TYPE_INFO, "Updating telemetry", v9, 2u);
    }

    v5 = dispatch_get_global_queue(21, 0);
    mach_service = xpc_connection_create_mach_service("com.apple.hangtelemetryd", v5, 0);

    xpc_connection_set_event_handler(mach_service, &__block_literal_global_5);
    xpc_connection_activate(mach_service);
    empty = xpc_dictionary_create_empty();
    xpc_dictionary_set_uint64(empty, "command", 1uLL);
    v7 = xpc_connection_send_message_with_reply_sync(mach_service, empty);
    if (MEMORY[0x1CCA730F0]() == MEMORY[0x1E69E9E98])
    {
      v8 = shared_ht_log_handle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __HTTelemetryCheckForUpdates_block_invoke_cold_1(v7, v8);
      }
    }

    dispatch_sync(*(a1 + 32), &__block_literal_global_8);
  }
}

uint64_t HTTelemetryHasRunThisBoot()
{
  v0 = sem_open("hangtelemetryd.onceatboot", 0);
  if (v0 == -1)
  {
    if (*__error() == 2)
    {
      return 0;
    }

    v2 = shared_ht_log_handle();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      HTTelemetryHasRunThisBoot_cold_1(v2);
    }
  }

  else
  {
    sem_close(v0);
  }

  return 1;
}

void __HTGatherHomeVolumeSpaceInfo_block_invoke()
{
  v0 = HTGetHomeDirectoryURL();
  v1 = HTGatherHomeVolumeSpaceInfo_homeURL;
  HTGatherHomeVolumeSpaceInfo_homeURL = v0;

  if (!HTGatherHomeVolumeSpaceInfo_homeURL)
  {
    v2 = shared_ht_log_handle();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __HTGatherHomeVolumeSpaceInfo_block_invoke_cold_1();
    }
  }
}

id HTGetHomeDirectoryURL()
{
  v0 = NSHomeDirectoryForUser(&cfstr_Mobile.isa);
  if (v0)
  {
    v1 = [MEMORY[0x1E695DFF8] fileURLWithPath:v0 isDirectory:1];
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

void HTSuspendForegroundHangTracing(uint64_t a1)
{
  v2 = shared_ht_log_handle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1C8286000, v2, OS_LOG_TYPE_DEFAULT, "App transitioned to background, suspending HangTracing.", v4, 2u);
  }

  v3 = mach_absolute_time();
  HTSuspendHangTracingWithEndTime(a1, v3);
  HTForegroundTrackingEnd(a1, v3, 4);
}

void HTForegroundTrackingEnd(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a3 > 2)
  {
    if (a3 == 3)
    {
      v6 = @"HTFGUpdateUserSwitchedAway";
LABEL_9:
      if (*(a1 + 371))
      {
        *(a1 + 371) = 0;
        v8 = shared_ht_log_handle();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
        {
          HTForegroundTrackingBegin_cold_2();
        }
      }

      else
      {
        v9 = shared_ht_log_handle();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v11 = 136446722;
          v12 = a1 + 116;
          v13 = 2048;
          v14 = a2;
          v15 = 2112;
          v16 = v6;
          _os_log_impl(&dword_1C8286000, v9, OS_LOG_TYPE_DEFAULT, "App with bundleID:%{public}s is no longer foreground at time=%llu, attempting to emit telemetry with emission type: %@", &v11, 0x20u);
        }

        updateHTForegroundTrackingState(a1, a3, a2);
      }

      goto LABEL_16;
    }

    if (a3 == 4)
    {
      v6 = @"HTFGUpdateAppBackgrounded";
      goto LABEL_9;
    }
  }

  v7 = shared_ht_log_handle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    HTForegroundTrackingEnd_cold_2();
  }

LABEL_16:
  v10 = *MEMORY[0x1E69E9840];
}

void HTResumeForegroundHangTracing(uint64_t a1)
{
  v2 = shared_ht_log_handle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1C8286000, v2, OS_LOG_TYPE_DEFAULT, "App transitioned to foreground, resuming HangTracing.", v4, 2u);
  }

  v3 = mach_absolute_time();
  HTResumeHangTracingWithStartTime(a1, v3);
  HTForegroundTrackingBegin(a1, v3);
}

id stateInfoSortedArrayComparator()
{
  if (stateInfoSortedArrayComparator_onceToken != -1)
  {
    stateInfoSortedArrayComparator_cold_1();
  }

  v0 = MEMORY[0x1CCA72C40](stateInfoSortedArrayComparator__comparator);

  return v0;
}

void __stateInfoSortedArrayComparator_block_invoke()
{
  if (!stateInfoSortedArrayComparator__comparator)
  {
    stateInfoSortedArrayComparator__comparator = &__block_literal_global_4;
  }
}

uint64_t __stateInfoSortedArrayComparator_block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v6 = v5;
    v7 = [v4 objectForKeyedSubscript:@"timestamp"];
    v8 = [v6 objectForKeyedSubscript:@"timestamp"];
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v9 = [v7 unsignedLongLongValue];
      v10 = [v8 unsignedLongLongValue];
      if (v9 < v10)
      {
        v11 = -1;
      }

      else
      {
        v11 = v9 > v10;
      }
    }

    else
    {
      v12 = shared_ht_log_handle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        __stateInfoSortedArrayComparator_block_invoke_2_cold_2();
      }

      v11 = 0;
    }
  }

  else
  {
    v6 = shared_ht_log_handle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __stateInfoSortedArrayComparator_block_invoke_2_cold_1();
    }

    v11 = 0;
  }

  return v11;
}

uint64_t _isValidStateInfoSortedArray(void *a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (objc_opt_respondsToSelector() & 1) != 0)
  {
    if ([v1 count])
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v2 = v1;
      v3 = [v2 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v3)
      {
        v4 = v3;
        v5 = 0;
        v6 = *v21;
        v7 = &selRef_archivedDataWithRootObject_requiringSecureCoding_error_;
        v8 = &selRef_archivedDataWithRootObject_requiringSecureCoding_error_;
        while (2)
        {
          v9 = 0;
          v18 = v8[167];
          v19 = v7[95];
          v10 = v5;
          do
          {
            if (*v21 != v6)
            {
              objc_enumerationMutation(v2);
            }

            v11 = *(*(&v20 + 1) + 8 * v9);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v12 = shared_ht_log_handle();
              if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
              {
                _isValidStateInfoSortedArray_cold_1();
              }

              goto LABEL_32;
            }

            if ((objc_opt_respondsToSelector() & 1) == 0)
            {
              goto LABEL_33;
            }

            v12 = v11;
            v13 = [v12 objectForKey:@"cpuRoleEnum"];

            if (!v13)
            {
              goto LABEL_32;
            }

            v5 = [v12 objectForKey:@"timestamp"];
            if (!v5)
            {
              goto LABEL_31;
            }

            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_respondsToSelector() & 1) == 0)
            {
              goto LABEL_31;
            }

            v5 = v5;
            if (v10)
            {
              v14 = [v10 unsignedLongLongValue];
              if (v14 >= [v5 unsignedLongLongValue])
              {

LABEL_31:
LABEL_32:

LABEL_33:
                v15 = 0;
                goto LABEL_34;
              }
            }

            ++v9;
            v10 = v5;
          }

          while (v4 != v9);
          v4 = [v2 countByEnumeratingWithState:&v20 objects:v24 count:16];
          v7 = &selRef_archivedDataWithRootObject_requiringSecureCoding_error_;
          v8 = &selRef_archivedDataWithRootObject_requiringSecureCoding_error_;
          if (v4)
          {
            continue;
          }

          break;
        }

        v15 = 1;
        v10 = v5;
LABEL_34:
      }

      else
      {
        v15 = 1;
      }
    }

    else
    {
      v2 = shared_ht_log_handle();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
      {
        _isValidStateInfoSortedArray_cold_2(v2);
      }

      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

uint64_t calculateDurationInCPURoleFromStateInfoDict(void *a1, int a2)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    [a1 objectForKeyedSubscript:@"cpuRoleBreakdown"];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v3 = v18 = 0u;
    v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v16;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v16 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v15 + 1) + 8 * i);
          v9 = [v8 objectForKeyedSubscript:{@"cpuRoleEnum", v15}];
          v10 = [v9 unsignedCharValue];

          if (v10 == a2)
          {
            v12 = [v8 objectForKeyedSubscript:@"timeInCPURole"];
            v11 = [v12 unsignedIntValue];

            goto LABEL_12;
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

    v11 = 0;
LABEL_12:
  }

  else
  {
    v11 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v11;
}

uint64_t calcluateDurationInCPURoleFromSortedArray(void *a1, int a2, unint64_t a3, unint64_t a4)
{
  v5 = createStateInfoJSONBlobForHang(a1, a3, a4);
  v6 = calculateDurationInCPURoleFromStateInfoDict(v5, a2);

  return v6;
}

id createStateInfoJSONBlobForHang(void *a1, unint64_t a2, unint64_t a3)
{
  v116[1] = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = v5;
  if (a3 >= a2 && _isValidStateInfoSortedArray(v5))
  {
    v93 = a3 - a2;
    v7 = [v6 mutableCopy];
    v115 = @"timestamp";
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a2];
    v116[0] = v8;
    v9 = 0x1E695D000uLL;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v116 forKeys:&v115 count:1];
    v11 = [(__CFString *)v7 count];
    stateInfoSortedArrayComparator();
    v12 = v96 = a2;
    v13 = [(__CFString *)v7 indexOfObject:v10 inSortedRange:0 options:v11 usingComparator:1024, v12];

    if (!v13)
    {
      v113[1] = @"timestamp";
      v114[0] = &unk_1F47FA1C0;
      v113[0] = @"cpuRoleEnum";
      v14 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v96];
      v114[1] = v14;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v114 forKeys:v113 count:2];

      [(__CFString *)v7 insertObject:v15 atIndex:0];
      v13 = 1;
    }

    v16 = [(__CFString *)v7 objectAtIndexedSubscript:v13 - 1];
    v17 = [v16 objectForKeyedSubscript:@"cpuRoleEnum"];
    v92 = [v17 unsignedCharValue];

    v95 = v16;
    v18 = [v16 objectForKeyedSubscript:@"timestamp"];
    v19 = [v18 unsignedLongLongValue];

    v20 = MATU_TO_SEC(v96 - v19);
    v94 = [MEMORY[0x1E696AD98] numberWithDouble:{roundDoubleToDecimalPlace(3u, v20)}];
    v111 = @"timestamp";
    v87 = a3;
    v21 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a3];
    v112 = v21;
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v112 forKeys:&v111 count:1];
    v23 = [(__CFString *)v7 count];
    v24 = stateInfoSortedArrayComparator();
    v25 = [(__CFString *)v7 indexOfObject:v22 inSortedRange:0 options:v23 usingComparator:1024, v24];

    if (v25)
    {
      v91 = v6;
      v90 = [(__CFString *)v7 objectAtIndexedSubscript:v25 - 1];
      v26 = [v90 objectForKeyedSubscript:@"cpuRoleEnum"];
      v89 = [v26 unsignedCharValue];

      v27 = [MEMORY[0x1E695DF90] dictionary];
      v28 = v27;
      v29 = 0x1E696A000uLL;
      if (v13 - 1 <= (v25 - 1))
      {
        v42 = 0;
        v82 = v25 - v13;
        v43 = v25 - v13 + 1;
        v97 = v27;
        v86 = v13;
        do
        {
          v44 = [(__CFString *)v7 objectAtIndexedSubscript:v13 + v42 - 1];
          if (v44 && (v45 = *(v9 + 3872), objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v46 = [v44 objectForKeyedSubscript:@"cpuRoleEnum"];
            if (v46 && (v47 = *(v29 + 3480), objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v48 = [v44 objectForKeyedSubscript:@"timestamp"];
              if (v48 && (v49 = *(v29 + 3480), objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                if (v42)
                {
                  v50 = [(__CFString *)v7 objectAtIndexedSubscript:v13 + v42 - 2];
                  v83 = [v50 objectForKeyedSubscript:@"cpuRoleEnum"];

                  v51 = [v83 stringValue];
                  v52 = [v97 objectForKey:v51];
                  v53 = [v52 objectForKey:@"intervalsInCPURole"];
                  v88 = [v53 lastObject];

                  v29 = 0x1E696A000;
                  v85 = v48;
                }

                else
                {
                  v88 = [*(v29 + 3480) numberWithUnsignedInt:0];
                  v85 = [*(v29 + 3480) numberWithUnsignedLong:v96];
                }

                if (v82 == v42)
                {
                  v61 = [*(v29 + 3480) numberWithUnsignedLongLong:v87];
                }

                else
                {
                  v62 = [(__CFString *)v7 objectAtIndexedSubscript:v13 + v42];
                  v61 = [v62 objectForKeyedSubscript:@"timestamp"];
                }

                v81 = v61;
                v84 = [*(v29 + 3480) numberWithUnsignedInt:{MATU_TO_MS(objc_msgSend(v61, "unsignedLongLongValue") - -[NSObject unsignedLongLongValue](v85, "unsignedLongLongValue"))}];
                v63 = [*(v29 + 3480) numberWithUnsignedInt:{-[NSObject unsignedIntValue](v88, "unsignedIntValue") + objc_msgSend(v84, "unsignedIntValue")}];
                v64 = [v46 stringValue];
                v65 = [v97 objectForKey:v64];

                v79 = v65;
                v80 = v63;
                if (v65)
                {
                  v66 = [v65 objectForKeyedSubscript:@"intervalsInCPURole"];
                  [v66 addObject:v88];
                  v78 = v66;
                  [v66 addObject:v63];
                  v77 = MEMORY[0x1E696AD98];
                  v67 = [v65 objectForKeyedSubscript:@"timeInCPURole"];
                  v68 = [v77 numberWithUnsignedInt:{objc_msgSend(v84, "unsignedIntValue") + objc_msgSend(v67, "unsignedIntValue")}];
                  v69 = v65;
                  v70 = v67;
                  [v69 setObject:v68 forKeyedSubscript:@"timeInCPURole"];
                }

                else
                {
                  v71 = [MEMORY[0x1E695DF70] array];
                  [v71 addObject:v88];
                  [v71 addObject:v63];
                  v72 = MEMORY[0x1E695DF90];
                  v103[0] = @"cpuRoleName";
                  [v46 unsignedCharValue];
                  v73 = NSStringFromRBSRole();
                  v104[0] = v73;
                  v104[1] = v46;
                  v103[1] = @"cpuRoleEnum";
                  v103[2] = @"intervalsInCPURole";
                  v78 = v71;
                  v104[2] = v71;
                  v104[3] = &unk_1F47FA238;
                  v103[3] = @"percentInCPURole";
                  v103[4] = @"timeInCPURole";
                  v104[4] = v84;
                  v74 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v104 forKeys:v103 count:5];
                  v70 = [v72 dictionaryWithDictionary:v74];

                  v68 = [v46 stringValue];
                  [v97 setValue:v70 forKey:v68];
                }

                v9 = 0x1E695D000;
                v29 = 0x1E696A000;
                v60 = v88;
              }

              else
              {
                v58 = v43;
                v59 = shared_ht_log_handle();
                if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
                {
                  v75 = objc_opt_class();
                  *buf = 138412802;
                  v106 = @"timestamp";
                  v107 = 2112;
                  v108 = v7;
                  v109 = 2112;
                  v110 = v75;
                  v76 = v75;
                  v60 = v59;
                  _os_log_error_impl(&dword_1C8286000, v59, OS_LOG_TYPE_ERROR, "Failed to parse State info dictionary object of key '%@' from sorted array '%@', object is type of class '%@'", buf, 0x20u);

                  v29 = 0x1E696A000;
                }

                else
                {
                  v60 = v59;
                }

                v43 = v58;
                v13 = v86;
              }
            }

            else
            {
              v48 = shared_ht_log_handle();
              if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
              {
                v56 = objc_opt_class();
                *buf = 138412802;
                v106 = @"cpuRoleEnum";
                v107 = 2112;
                v108 = v7;
                v109 = 2112;
                v110 = v56;
                v57 = v56;
                _os_log_error_impl(&dword_1C8286000, v48, OS_LOG_TYPE_ERROR, "Failed to parse State info dictionary object of key '%@' from sorted array '%@', object is type of class '%@'", buf, 0x20u);

                v29 = 0x1E696A000;
              }
            }

            v28 = v97;
          }

          else
          {
            v46 = shared_ht_log_handle();
            if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
            {
              v54 = objc_opt_class();
              *buf = 138412546;
              v106 = v7;
              v107 = 2112;
              v108 = v54;
              v55 = v54;
              _os_log_error_impl(&dword_1C8286000, v46, OS_LOG_TYPE_ERROR, "Failed to parse State info dictionary object from sorted array '%@', object is type of class '%@'", buf, 0x16u);

              v29 = 0x1E696A000;
            }
          }

          ++v42;
        }

        while (v43 != v42);
      }

      [MEMORY[0x1E695DF70] array];
      v31 = v30 = v9;
      v32 = MATU_TO_MS(v93);
      v98[0] = MEMORY[0x1E69E9820];
      v98[1] = 3221225472;
      v98[2] = __createStateInfoJSONBlobForHang_block_invoke;
      v98[3] = &unk_1E83018B8;
      v99 = v31;
      v100 = v32;
      v33 = v31;
      [v28 enumerateKeysAndObjectsUsingBlock:v98];
      v101[0] = @"startCPURole";
      v34 = [*(v29 + 3480) numberWithUnsignedChar:v92];
      v102[0] = v34;
      v101[1] = @"endCPURole";
      v35 = [*(v29 + 3480) numberWithUnsignedChar:v89];
      v36 = v94;
      v102[1] = v35;
      v102[2] = v94;
      v101[2] = @"secondsSinceCPURoleTransitionBeforeHangStart";
      v101[3] = @"cpuRoleBreakdown";
      v102[3] = v33;
      v37 = [*(v30 + 3872) dictionaryWithObjects:v102 forKeys:v101 count:4];

      v38 = v90;
      v6 = v91;
      v39 = v95;
    }

    else
    {
      v38 = shared_ht_log_handle();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
      {
        createStateInfoJSONBlobForHang_cold_1();
      }

      v37 = 0;
      v36 = v94;
      v39 = v95;
    }
  }

  else
  {
    v37 = 0;
  }

  v40 = *MEMORY[0x1E69E9840];

  return v37;
}

void __createStateInfoJSONBlobForHang_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = a3;
  v4 = [v8 objectForKeyedSubscript:@"timeInCPURole"];
  [v4 floatValue];
  v6 = v5 / *(a1 + 40);

  v7 = [MEMORY[0x1E696AD98] numberWithDouble:{roundDoubleToDecimalPlace(3u, v6)}];
  [v8 setObject:v7 forKeyedSubscript:@"percentInCPURole"];

  [*(a1 + 32) addObject:v8];
}

void iterateRecentStateInfo(uint64_t a1)
{
  if (a1)
  {
    v2 = [MEMORY[0x1E696AD60] string];
    v3 = 0;
    v4 = (a1 + 8);
    do
    {
      v5 = *(v4 - 1);
      if (v5)
      {
        v6 = *v4;
        v7 = MEMORY[0x1E696AEC0];
        v8 = NSStringFromRBSRole();
        v9 = [v7 stringWithFormat:@"Index %d: Timestamp = %llu, Role = %@\n", v3, v5, v8];
        [v2 appendString:v9];
      }

      ++v3;
      v4 += 16;
    }

    while (v3 != 10);
    v10 = shared_ht_log_handle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      iterateRecentStateInfo_cold_1();
    }
  }
}

id createStateInfoSortedArrayWithPtr(uint64_t a1)
{
  v25[2] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = [MEMORY[0x1E695DF70] array];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __createStateInfoSortedArrayWithPtr_block_invoke;
    v22[3] = &unk_1E83018E0;
    v3 = v2;
    v23 = v3;
    v21 = MEMORY[0x1CCA72C40](v22);
    v4 = (a1 + 8);
    v5 = 10;
    do
    {
      v6 = *(v4 - 1);
      if (v6)
      {
        v7 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:*v4];
        v8 = v7;
        if (v7)
        {
          v24[1] = @"timestamp";
          v25[0] = v7;
          v24[0] = @"cpuRoleEnum";
          v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v6];
          v25[1] = v9;
          v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:2];

          [v3 insertObject:v10 atIndex:[v3 indexOfObject:v10 inSortedRange:0 options:[v3 count] usingComparator:1024, v21]];
        }
      }

      v4 += 16;
      --v5;
    }

    while (v5);
    v11 = [v3 count];
    if (v11 >= 2)
    {
      v12 = v11 + 1;
      do
      {
        v13 = [v3 objectAtIndexedSubscript:v12 - 2];
        v14 = [v3 objectAtIndexedSubscript:v12 - 3];
        v15 = [v13 objectForKeyedSubscript:@"cpuRoleEnum"];
        v16 = [v14 objectForKeyedSubscript:@"cpuRoleEnum"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if ([v15 isEqualToNumber:v16])
            {
              [v3 removeObjectAtIndex:v12 - 2];
            }
          }
        }

        --v12;
      }

      while (v12 > 2);
    }

    v17 = shared_ht_log_handle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      createStateInfoSortedArrayWithPtr_cold_1();
    }

    if ([v3 count])
    {
      v18 = [v3 copy];
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v3 = shared_ht_log_handle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      createStateInfoSortedArrayWithPtr_cold_2(v3);
    }

    v18 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

uint64_t __createStateInfoSortedArrayWithPtr_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v7 = v6;
    v8 = [v5 objectForKeyedSubscript:@"timestamp"];
    v9 = [v7 objectForKeyedSubscript:@"timestamp"];
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v10 = [v8 unsignedLongLongValue];
      v11 = [v9 unsignedLongLongValue];
      if (v10 < v11)
      {
        v12 = -1;
      }

      else
      {
        v12 = v10 > v11;
      }
    }

    else
    {
      v13 = shared_ht_log_handle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v16 = objc_opt_class();
        v17 = v16;
        v18 = objc_opt_class();
        v19 = *(a1 + 32);
        v21 = 138412802;
        v22 = v16;
        v23 = 2112;
        v24 = v18;
        v25 = 2112;
        v26 = v19;
        v20 = v18;
        _os_log_error_impl(&dword_1C8286000, v13, OS_LOG_TYPE_ERROR, "Invalid timestamp(s) of class '%@' and '%@' found in dictionary '%@' during sorting.", &v21, 0x20u);
      }

      v12 = 0;
    }
  }

  else
  {
    v7 = shared_ht_log_handle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __stateInfoSortedArrayComparator_block_invoke_2_cold_1();
    }

    v12 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v12;
}

id OUTLINED_FUNCTION_1(id a1)
{

  return a1;
}

__CFString *exitNamespaceString(uint64_t a1)
{
  if (a1 >= 0x2B)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", a1];
  }

  else
  {
    v2 = off_1E8301900[a1];
  }

  return v2;
}

__CFString *exitNamespaceDisplayString(uint64_t a1)
{
  if (a1 - 4) < 0x27 && ((0x7789044BDDuLL >> (a1 - 4)))
  {
    v1 = off_1E8301A58[(a1 - 4)];
  }

  else
  {
    v2 = exitNamespaceString(a1);
    v1 = [v2 capitalizedString];
  }

  return v1;
}

__CFString *exitReasonStringForNamespaceSignal(uint64_t a1)
{
  if ((a1 - 1) >= 0x1F)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SIG%d", a1];
  }

  else
  {
    v2 = off_1E8301B90[(a1 - 1)];
  }

  return v2;
}

__CFString *exitReasonStringForNamespaceJetsam(uint64_t a1)
{
  v3 = a1;
  v4 = @"invalid reason";
  switch(v3)
  {
    case 0:
      goto LABEL_19;
    case 1:
      v4 = @"generic";

      break;
    case 2:
      v4 = @"memory highwater";

      break;
    case 3:
      v4 = @"vnode shortage";

      break;
    case 4:
      v4 = @"vm page shortage";

      break;
    case 5:
      v4 = @"process thrashing";

      break;
    case 6:
      v4 = @"filecache thrashing";

      break;
    case 7:
      v4 = @"per-process limit reached";

      break;
    case 8:
      v4 = @"disk space shortage";

      break;
    case 9:
      v4 = @"idle exit";

      break;
    case 10:
      v4 = @"zone map exhaustion";

      break;
    case 11:
      v4 = @"vm compressor thrashing";

      break;
    case 12:
      v4 = @"vm compressor space shortage";

      break;
    case 13:
      v4 = @"swap space shortage";

      break;
    case 14:
      v4 = @"sustained memory pressure";

      break;
    case 15:
      v4 = @"vm pageout starvation";

      break;
    case 16:
      v4 = @"conclave limit";

      break;
    case 17:
      v4 = @"long idle exit";

      break;
    default:
      if (a1 == 100)
      {
        v4 = @"cpu limit";
      }

      else
      {
        v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", a1];
LABEL_19:
      }

      break;
  }

  return v4;
}

__CFString *exitReasonDisplayStringForNamespaceJetsam(uint64_t a1)
{
  if (a1 > 10)
  {
    if (a1 > 14)
    {
      if (a1 == 15)
      {
        v1 = @"VM Pageout Starvation";
        goto LABEL_21;
      }

      if (a1 == 100)
      {
        v1 = @"CPU Limit";
        goto LABEL_21;
      }
    }

    else
    {
      if (a1 == 11)
      {
        v1 = @"VM Compressor Thrashing";
        goto LABEL_21;
      }

      if (a1 == 12)
      {
        v1 = @"VM Compressor Space Shortage";
        goto LABEL_21;
      }
    }
  }

  else if (a1 > 5)
  {
    if (a1 == 6)
    {
      v1 = @"FileCache Thrashing";
      goto LABEL_21;
    }

    if (a1 == 8)
    {
      v1 = @"Low Disk Space";
      goto LABEL_21;
    }
  }

  else
  {
    if (a1 == 2)
    {
      v1 = @"High-Water";
      goto LABEL_21;
    }

    if (a1 == 4)
    {
      v1 = @"VM Page Shortage";
      goto LABEL_21;
    }
  }

  v2 = exitReasonStringForNamespaceJetsam(a1);
  v1 = [v2 capitalizedString];

LABEL_21:

  return v1;
}

__CFString *exitReasonStringForNamespaceSpringBoard(uint64_t a1)
{
  if (a1 > 3221229822)
  {
    if (a1 <= 3306925314)
    {
      switch(a1)
      {
        case 3221229823:
          v2 = @"thermal pressure";

          return v2;
        case 3306925313:
          v2 = @"cpu violation";

          return v2;
        case 3306925314:
          v2 = @"walltime violation";

          return v2;
      }
    }

    else if (a1 > 3735943696)
    {
      if (a1 == 3735943697)
      {
        v2 = @"user quit";

        return v2;
      }

      if (a1 == 4227595259)
      {
        v2 = @"force quit";

        return v2;
      }
    }

    else
    {
      if (a1 == 3306925315)
      {
        v2 = @"system busy";

        return v2;
      }

      if (a1 == 3735883980)
      {
        v2 = @"resource exclusion";

        return v2;
      }
    }

LABEL_62:
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%#llx", a1];

    return v2;
  }

  if (a1 <= 1539435072)
  {
    switch(a1)
    {
      case 95805101:
        v2 = @"application assertion";

        return v2;
      case 439025681:
        v2 = @"input ui scene";

        return v2;
      case 732775916:
        v2 = @"secure draw violation";

        return v2;
    }

    goto LABEL_62;
  }

  if (a1 > 1539435076)
  {
    if (a1 == 1539435077)
    {
      v2 = @"legacy clear the board";

      return v2;
    }

    if (a1 == 2343432205)
    {
      v2 = @"watchdog";

      return v2;
    }

    goto LABEL_62;
  }

  if (a1 != 1539435073)
  {
    if (a1 == 1539435076)
    {
      v2 = @"clear the board";

      return v2;
    }

    goto LABEL_62;
  }

  v2 = @"languages changed";

  return v2;
}

__CFString *exitReasonDisplayStringForNamespaceSpringBoard(uint64_t a1)
{
  if (a1 > 1539435076)
  {
    if (a1 != 1539435077)
    {
      if (a1 == 3306925313)
      {
        v1 = @"CPU Violation";
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    v1 = @"Legacy Clear the Board";
  }

  else
  {
    if (a1 != 439025681)
    {
      if (a1 == 1539435076)
      {
        v1 = @"Clear the Board";
        goto LABEL_11;
      }

LABEL_8:
      v2 = exitReasonStringForNamespaceSpringBoard(a1);
      v1 = [v2 capitalizedString];

      goto LABEL_11;
    }

    v1 = @"InputUI Scene";
  }

LABEL_11:

  return v1;
}

__CFString *exitReasonStringForNamespaceCodeSigning(uint64_t a1)
{
  if ((a1 - 1) >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", a1];
  }

  else
  {
    v2 = off_1E8301C88[(a1 - 1)];
  }

  return v2;
}

id exitReasonDisplayStringForNamespaceCodeSigning(uint64_t a1)
{
  v1 = exitReasonStringForNamespaceCodeSigning(a1);
  v2 = [v1 capitalizedString];

  return v2;
}

__CFString *exitReasonStringForNamespaceExec(uint64_t a1)
{
  if ((a1 - 1) >= 0x13)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", a1];
  }

  else
  {
    v2 = off_1E8301CA8[(a1 - 1)];
  }

  return v2;
}

__CFString *exitReasonDisplayStringForNamespaceExec(uint64_t a1)
{
  v1 = a1 - 1;
  if (a1 - 1) < 0x13 && ((0x55F7Fu >> v1))
  {
    v2 = off_1E8301D40[v1];
  }

  else
  {
    v3 = exitReasonStringForNamespaceExec(a1);
    v2 = [v3 capitalizedString];
  }

  return v2;
}

__CFString *exitReasonStringForNamespaceGuard(uint64_t a1)
{
  if ((a1 - 1) >= 5)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", a1];
  }

  else
  {
    v2 = off_1E8301DD8[(a1 - 1)];
  }

  return v2;
}

__CFString *exitReasonDisplayStringForNamespaceGuard(uint64_t a1)
{
  if (a1 == 5)
  {
    v1 = @"JIT";
  }

  else
  {
    v2 = exitReasonStringForNamespaceGuard(a1);
    v1 = [v2 capitalizedString];
  }

  return v1;
}

__CFString *exitReasonStringForNamespaceLibXPC(uint64_t a1)
{
  if ((a1 - 1) >= 9)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%u", a1];
  }

  else
  {
    v2 = off_1E8301E00[(a1 - 1)];
  }

  return v2;
}

__CFString *exitReasonDisplayStringForNamespaceLibXPC(uint64_t a1)
{
  switch(a1)
  {
    case 2:
      v1 = @"Unknown IPC";
      break;
    case 6:
      v1 = @"Sandbox Filtered IPC";
      break;
    case 4:
      v1 = @"SIGTERM Timeout";
      break;
    default:
      v2 = exitReasonStringForNamespaceLibXPC(a1);
      v1 = [v2 capitalizedString];

      break;
  }

  return v1;
}

__CFString *exitReasonStringForNamespaceDYLD(uint64_t a1)
{
  v2 = a1 - 1;
  if (a1 - 1) < 9 && ((0x17Fu >> v2))
  {
    v3 = off_1E8301E48[v2];
  }

  else
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu", a1];
  }

  return v3;
}

__CFString *exitReasonDisplayStringForNamespaceDYLD(uint64_t a1)
{
  v1 = a1 - 1;
  if (a1 - 1) < 7 && ((0x47u >> v1))
  {
    v2 = off_1E8301E90[v1];
  }

  else
  {
    v3 = exitReasonStringForNamespaceDYLD(a1);
    v2 = [v3 capitalizedString];
  }

  return v2;
}

__CFString *exitReasonStringForNamespaceRunningBoard(uint64_t a1)
{
  if (a1 <= 2343432204)
  {
    if (a1 <= 562215633)
    {
      switch(a1)
      {
        case 0:
          v2 = @"none";

          return v2;
        case 97132013:
          v2 = @"conditions changed";

          return v2;
        case 562215597:
          v2 = @"assertion timeout";

          return v2;
      }
    }

    else
    {
      if (a1 <= 562215635)
      {
        if (a1 == 562215634)
        {
          v2 = @"background task assertion timeout";
        }

        else
        {
          v2 = @"background url session completion timeout";
        }

        return v2;
      }

      if (a1 == 562215636)
      {
        v2 = @"background fetch completion timeout";

        return v2;
      }

      if (a1 == 732775916)
      {
        v2 = @"security violation";

        return v2;
      }
    }

LABEL_63:
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%#llx", a1];

    return v2;
  }

  if (a1 > 3490524076)
  {
    if (a1 > 3735905537)
    {
      if (a1 == 3735905538)
      {
        v2 = @"termination assertion";

        return v2;
      }

      if (a1 == 3735943697)
      {
        v2 = @"user initiated quit";

        return v2;
      }
    }

    else
    {
      if (a1 == 3490524077)
      {
        v2 = @"max assertions violation";

        return v2;
      }

      if (a1 == 3735883980)
      {
        v2 = @"resource exclusion";

        return v2;
      }
    }

    goto LABEL_63;
  }

  if (a1 > 2970726672)
  {
    if (a1 == 2970726673)
    {
      v2 = @"process exited";

      return v2;
    }

    if (a1 == 3221229823)
    {
      v2 = @"thermal pressure";

      return v2;
    }

    goto LABEL_63;
  }

  if (a1 != 2343432205)
  {
    if (a1 == 2970405393)
    {
      v2 = @"max states violation";

      return v2;
    }

    goto LABEL_63;
  }

  v2 = @"watchdog violation";

  return v2;
}

__CFString *exitReasonDisplayStringForNamespaceRunningBoard(uint64_t a1)
{
  if (a1 <= 2970405392)
  {
    if (!a1)
    {
      v1 = @"None Provided";
      goto LABEL_13;
    }

    if (a1 == 562215635)
    {
      v1 = @"Background URL Session Completion Timeout";
      goto LABEL_13;
    }
  }

  else
  {
    switch(a1)
    {
      case 2970405393:
        v1 = @"Maximum States Violation";
        goto LABEL_13;
      case 3490524077:
        v1 = @"Maximum Assertions Violation";
        goto LABEL_13;
      case 3735943697:
        v1 = @"User-Initiated Quit";
        goto LABEL_13;
    }
  }

  v2 = exitReasonStringForNamespaceRunningBoard(a1);
  v1 = [v2 capitalizedString];

LABEL_13:

  return v1;
}

__CFString *exitReasonStringForNamespaceLibSystem(uint64_t a1)
{
  if ((a1 - 1) >= 5)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu", a1];
  }

  else
  {
    v2 = off_1E8301EC8[a1 - 1];
  }

  return v2;
}

__CFString *exitReasonDisplayStringForNamespaceLibSystem(uint64_t a1)
{
  v1 = a1 - 1;
  if (a1 - 1) < 5 && ((0x1Du >> v1))
  {
    v2 = off_1E8301EF0[v1];
  }

  else
  {
    v3 = exitReasonStringForNamespaceLibSystem(a1);
    v2 = [v3 capitalizedString];
  }

  return v2;
}

__CFString *exitReasonStringForNamespaceEndpointSecurity(uint64_t a1)
{
  if ((a1 - 1) >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu", a1];
  }

  else
  {
    v2 = off_1E8301F18[a1 - 1];
  }

  return v2;
}

id exitReasonDisplayStringForNamespaceEndpointSecurity(uint64_t a1)
{
  v1 = exitReasonStringForNamespaceEndpointSecurity(a1);
  v2 = [v1 capitalizedString];

  return v2;
}

__CFString *exitReasonStringForNamespaceWatchdog(uint64_t a1)
{
  if (a1 <= 2)
  {
    if (a1 == 1)
    {
      v2 = @"service timeout";
    }

    else
    {
      if (a1 != 2)
      {
LABEL_22:
        v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu", a1];

        return v2;
      }

      v2 = @"timeout no diags";
    }
  }

  else
  {
    switch(a1)
    {
      case 3:
        v2 = @"unblock deadlock";

        break;
      case 4:
        v2 = @"unblock thread limit";

        break;
      case 1001:
        v2 = @"chronokit";

        return v2;
      default:
        goto LABEL_22;
    }
  }

  return v2;
}

__CFString *exitReasonDisplayStringForNamespaceWatchdog(uint64_t a1)
{
  if (a1 == 2)
  {
    v1 = @"Service Timeout Diagnostics Unavailable";
  }

  else if (a1 == 1001)
  {
    v1 = @"ChronoKit";
  }

  else
  {
    v2 = exitReasonStringForNamespaceWatchdog(a1);
    v1 = [v2 capitalizedString];
  }

  return v1;
}

__CFString *exitReasonStringForNamespaceWatchKit(uint64_t a1)
{
  if (a1 == 1)
  {
    v2 = @"api violation";
  }

  else if (a1 == 2)
  {
    v2 = @"internal error";
  }

  else
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu", a1];
  }

  return v2;
}

__CFString *exitReasonDisplayStringForNamespaceWatchKit(uint64_t a1)
{
  if (a1 == 1)
  {
    v1 = @"API Violation";
  }

  else
  {
    v2 = exitReasonStringForNamespaceWatchKit(a1);
    v1 = [v2 capitalizedString];
  }

  return v1;
}

__CFString *exitReasonStringForNamespaceBacklightServices(uint64_t a1)
{
  v2 = a1 - 1;
  if (a1 - 1) < 0x15 && ((0x183FFFu >> v2))
  {
    v3 = off_1E8301F30[v2];
  }

  else
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu", a1];
  }

  return v3;
}

__CFString *exitReasonDisplayStringForNamespaceBacklightServices(uint64_t a1)
{
  v1 = a1 - 11;
  if (a1 - 11) < 0xB && ((0x60Fu >> v1))
  {
    v2 = off_1E8301FD8[v1];
  }

  else
  {
    v3 = exitReasonStringForNamespaceBacklightServices(a1);
    v2 = [v3 capitalizedString];
  }

  return v2;
}

id exitReasonString(int a1, uint64_t a2)
{
  switch(a1)
  {
    case 1:
      v2 = exitReasonStringForNamespaceJetsam(a2);
      break;
    case 2:
      v2 = exitReasonStringForNamespaceSignal(a2);
      break;
    case 3:
      v2 = exitReasonStringForNamespaceCodeSigning(a2);
      break;
    case 6:
      v2 = exitReasonStringForNamespaceDYLD(a2);
      break;
    case 7:
      v2 = exitReasonStringForNamespaceLibXPC(a2);
      break;
    case 9:
      v2 = exitReasonStringForNamespaceExec(a2);
      break;
    case 10:
      v2 = exitReasonStringForNamespaceSpringBoard(a2);
      break;
    case 15:
      v2 = exitReasonStringForNamespaceRunningBoard(a2);
      break;
    case 18:
      v2 = exitReasonDisplayStringForNamespaceLibSystem(a2);
      break;
    case 20:
      v2 = exitReasonStringForNamespaceWatchdog(a2);
      break;
    case 22:
      v2 = exitReasonStringForNamespaceWatchKit(a2);
      break;
    case 23:
      v2 = exitReasonStringForNamespaceGuard(a2);
      break;
    case 27:
      v2 = exitReasonStringForNamespaceEndpointSecurity(a2);
      break;
    case 32:
      v2 = exitReasonStringForNamespaceBacklightServices(a2);
      break;
    default:
      v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu", a2];
      break;
  }

  return v2;
}

id exitReasonDisplayString(int a1, uint64_t a2)
{
  switch(a1)
  {
    case 1:
      v2 = exitReasonDisplayStringForNamespaceJetsam(a2);
      break;
    case 2:
      v2 = exitReasonStringForNamespaceSignal(a2);
      break;
    case 3:
      v2 = exitReasonDisplayStringForNamespaceCodeSigning(a2);
      break;
    case 6:
      v2 = exitReasonDisplayStringForNamespaceDYLD(a2);
      break;
    case 7:
      v2 = exitReasonDisplayStringForNamespaceLibXPC(a2);
      break;
    case 9:
      v2 = exitReasonDisplayStringForNamespaceExec(a2);
      break;
    case 10:
      v2 = exitReasonDisplayStringForNamespaceSpringBoard(a2);
      break;
    case 15:
      v2 = exitReasonDisplayStringForNamespaceRunningBoard(a2);
      break;
    case 18:
      v2 = exitReasonDisplayStringForNamespaceLibSystem(a2);
      break;
    case 20:
      v2 = exitReasonDisplayStringForNamespaceWatchdog(a2);
      break;
    case 22:
      v2 = exitReasonDisplayStringForNamespaceWatchKit(a2);
      break;
    case 23:
      v2 = exitReasonDisplayStringForNamespaceGuard(a2);
      break;
    case 27:
      v2 = exitReasonDisplayStringForNamespaceEndpointSecurity(a2);
      break;
    case 32:
      v2 = exitReasonDisplayStringForNamespaceBacklightServices(a2);
      break;
    default:
      v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%#llx", a2];
      break;
  }

  return v2;
}

void sub_1C82930BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  objc_destroyWeak((v33 + 80));
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose((v34 - 208), 8);
  _Block_object_dispose((v34 - 176), 8);
  _Block_object_dispose((v34 - 144), 8);
  objc_destroyWeak((v34 - 104));
  _Unwind_Resume(a1);
}

void sub_1C8294284(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C8294C60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_0_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

_DWORD *getEventFromPid(int a1)
{
  if (GetSharedPage_onceToken != -1)
  {
    GetSharedPage_cold_1();
  }

  if (!GetSharedPage__sharedPage)
  {
    return 0;
  }

  v2 = *(GetSharedPage__sharedPage + 4);
  if (!v2)
  {
    return 0;
  }

  for (i = (GetSharedPage__sharedPage + 56); *i != a1; i += 146)
  {
    if (!--v2)
    {
      return 0;
    }
  }

  return i - 12;
}

id syncConnectionToHangTracer()
{
  v0 = HTConnectionQueue();
  dispatch_sync(v0, &__block_literal_global_21);

  v1 = hangTracerConnection;

  return v1;
}

void __syncConnectionToHangTracer_block_invoke()
{
  if (!hangTracerConnection)
  {
    v0 = HTConnectionQueue();
    mach_service = xpc_connection_create_mach_service("com.apple.hangtracerd", v0, 0);
    v2 = hangTracerConnection;
    hangTracerConnection = mach_service;

    xpc_connection_set_event_handler(hangTracerConnection, &__block_literal_global_25);
    v3 = hangTracerConnection;

    xpc_connection_resume(v3);
  }
}

void __syncConnectionToHangTracer_block_invoke_2(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = MEMORY[0x1CCA72FA0]();
  v4 = MEMORY[0x1CCA730F0](v2);

  if (v4 != MEMORY[0x1E69E9E98])
  {
    v5 = shared_ht_log_handle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = v3;
      _os_log_impl(&dword_1C8286000, v5, OS_LOG_TYPE_DEFAULT, "Received unhandled event from daemon: %s", &v8, 0xCu);
    }

LABEL_8:

    goto LABEL_9;
  }

  if (hangTracerConnection)
  {
    v6 = shared_ht_log_handle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 134218242;
      v9 = hangTracerConnection;
      v10 = 2080;
      v11 = v3;
      _os_log_impl(&dword_1C8286000, v6, OS_LOG_TYPE_DEFAULT, "XPC Error when we still had a connection (%p): %s", &v8, 0x16u);
    }

    v5 = hangTracerConnection;
    hangTracerConnection = 0;
    goto LABEL_8;
  }

LABEL_9:
  free(v3);
  v7 = *MEMORY[0x1E69E9840];
}

uint64_t addNewCPURoleToHangEvent(uint64_t result, uint64_t a2, char a3)
{
  if (result)
  {
    v3 = result + 16 * (atomic_fetch_add((result + 576), 1uLL) % 0xA);
    *(v3 + 416) = a2;
    *(v3 + 424) = a3;
  }

  return result;
}

void __HTHangEventCreateWithBundleID_block_invoke(int a1, int token)
{
  state64 = 0;
  if (!notify_get_state(token, &state64))
  {
    v2 = state64;
    v3 = state64 != 0;
    v4 = shared_ht_log_handle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __HTHangEventCreateWithBundleID_block_invoke_cold_1();
    }

    v5 = kHTAppActivationFailureReasonWatchdog_block_invoke_htAssertion;
    if (v2 || kHTAppActivationFailureReasonWatchdog_block_invoke_prevDisplayState != 1)
    {
      if (!v2 || !kHTAppActivationFailureReasonWatchdog_block_invoke_htAssertion)
      {
        goto LABEL_15;
      }

      v10 = mach_absolute_time();
      HTEndNonResponsiveTaskAtTime(v5, v10);
      started = 0;
    }

    else
    {
      if (kHTAppActivationFailureReasonWatchdog_block_invoke_htAssertion)
      {
        v6 = shared_ht_log_handle();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
        {
          __HTHangEventCreateWithBundleID_block_invoke_cold_2();
        }
      }

      v7 = kHTScreenOffAssertionName;
      v8 = mach_absolute_time();
      started = _HTBeginNonResponsiveAssertionAtStartTime(v7, v8, 1, 1, 0.0);
    }

    kHTAppActivationFailureReasonWatchdog_block_invoke_htAssertion = started;
LABEL_15:
    kHTAppActivationFailureReasonWatchdog_block_invoke_prevDisplayState = v3;
  }
}

void HTEndNonResponsiveTask(os_signpost_id_t a1)
{
  v2 = mach_absolute_time();

  HTEndNonResponsiveTaskAtTime(a1, v2);
}

void __HTHangEventCreateWithBundleID_block_invoke_44(uint64_t a1)
{
  v2 = +[HTPrefs sharedPrefs];
  v3 = HTPrefsQueue();
  [v2 setupPrefsWithQueue:v3];

  v4 = *(a1 + 32);

  handleSettingChange(v4);
}

void __HTHangEventCreateWithBundleID_block_invoke_2(uint64_t a1)
{
  v2 = HTPrefsQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __HTHangEventCreateWithBundleID_block_invoke_3;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = *(a1 + 32);
  dispatch_async(v2, block);
}

uint64_t HTAllowAnyThread(uint64_t result)
{
  if (result)
  {
    *(result + 32) = -1;
  }

  return result;
}

os_signpost_id_t _HTBeginNonResponsiveAssertion(const char *a1, int a2, int a3, double a4)
{
  v8 = mach_absolute_time();

  return _HTBeginNonResponsiveAssertionAtStartTime(a1, v8, a2, a3, a4);
}

os_signpost_id_t _HTBeginNonResponsiveAssertionAtStartTime(const char *a1, unint64_t a2, int a3, int a4, double a5)
{
  v32 = *MEMORY[0x1E69E9840];
  v10 = shared_ht_log_handle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v25 = 136315906;
    v26 = *&a1;
    v27 = 2048;
    v28 = a5;
    v29 = 1024;
    *v30 = a3;
    *&v30[4] = 1024;
    *&v30[6] = a4;
    _os_log_debug_impl(&dword_1C8286000, v10, OS_LOG_TYPE_DEBUG, "name=%s timeout=%f screenOffAssertion=%{BOOL}i noTimeout=%{BOOL}i", &v25, 0x22u);
  }

  if (GetSharedPage_onceToken != -1)
  {
    HTHangEventCreateWithBundleID_cold_1();
  }

  v11 = GetSharedPage__sharedPage;
  if (GetSharedPage__sharedPage)
  {
    v12 = *(GetSharedPage__sharedPage + 5728);
    *(GetSharedPage__sharedPage + 5728) = v12 + 1;
    if (a5 > 120.0)
    {
      v13 = shared_ht_log_handle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v25 = 134218240;
        v26 = a5;
        v27 = 2048;
        v28 = 120.0;
        _os_log_impl(&dword_1C8286000, v13, OS_LOG_TYPE_DEFAULT, "HTAssertion: desired timeout (%f) is greater than max allowed timeout (%f), using max allowed timeout", &v25, 0x16u);
      }

      a5 = 120.0;
    }

    v14 = v11 + 104 * *(v11 + 5720);
    *(v11 + 5720) = (*(v11 + 5720) + 1) % 10;
    v15 = v14 + 4680;
    *(v14 + 4680) = 0;
    *(v14 + 4688) = a2;
    v16 = -1;
    *(v14 + 4704) = -1;
    *(v14 + 4776) = a3;
    if ((a4 & 1) == 0)
    {
      v16 = (SEC_TO_MATU(a5) + a2);
    }

    *(v15 + 16) = v16;
    strncpy((v15 + 32), a1, 0x3FuLL);
    *(v15 + 95) = 0;
    *v15 = v12;
    v17 = shared_ht_log_handle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = *(v15 + 16);
      v25 = 134218754;
      v26 = *&v12;
      v27 = 2080;
      *&v28 = v15 + 32;
      v29 = 2048;
      *v30 = a2;
      *&v30[8] = 2048;
      v31 = v18;
      _os_log_impl(&dword_1C8286000, v17, OS_LOG_TYPE_DEFAULT, "HTAssertion: HTBeginAssertion: track assertionId=%llu assertionname=(%s) starttime=%llu expirationTime=%llu", &v25, 0x2Au);
    }

    v19 = assertionSignpost();
    v20 = os_signpost_enabled(v19);

    if (v20)
    {
      v21 = assertionSignpost();
      v22 = v21;
      if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
      {
        v25 = 136446466;
        *&v26 = v15 + 32;
        v27 = 2050;
        v28 = a5;
        _os_signpost_emit_with_name_impl(&dword_1C8286000, v22, OS_SIGNPOST_INTERVAL_BEGIN, v12, "HTNonResponsiveTaskAssertion", "name=%{public, signpost.description:attribute}s appliedTimeoutSecs=%{public, signpost.telemetry:number1}f", &v25, 0x16u);
      }
    }
  }

  else
  {
    v12 = 0;
  }

  v23 = *MEMORY[0x1E69E9840];
  return v12;
}

os_signpost_id_t HTBeginNonResponsiveTaskWithNameAndExpiration(const char *a1, double a2)
{
  v4 = mach_absolute_time();

  return _HTBeginNonResponsiveAssertionAtStartTime(a1, v4, 0, 0, a2);
}

void HTEndNonResponsiveTaskAtTime(os_signpost_id_t a1, uint64_t a2)
{
  v41 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_41;
  }

  if (GetSharedPage_onceToken != -1)
  {
    GetSharedPage_cold_1();
  }

  v4 = GetSharedPage__sharedPage;
  if (!GetSharedPage__sharedPage)
  {
    goto LABEL_41;
  }

  if (*(GetSharedPage__sharedPage + 5728))
  {
    if (*(GetSharedPage__sharedPage + 5720))
    {
      v5 = *(GetSharedPage__sharedPage + 5720) - 1;
    }

    else
    {
      v5 = 9;
    }

    v7 = 10;
    while (1)
    {
      v8 = (GetSharedPage__sharedPage + 4680 + 104 * (v5 % 10));
      if (*v8 == a1)
      {
        break;
      }

      ++v5;
      if (!--v7)
      {
        v6 = shared_ht_log_handle();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
        {
          HTEndNonResponsiveTaskAtTime_cold_2();
        }

        goto LABEL_40;
      }
    }

    v8[3] = a2;
    v9 = shared_ht_log_handle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v35 = 134218498;
      v36 = a1;
      v37 = 2080;
      v38 = v8 + 4;
      v39 = 2048;
      v40 = *&a2;
      _os_log_impl(&dword_1C8286000, v9, OS_LOG_TYPE_DEFAULT, "HTAssertions: HTEndAssertion: update assertionId=%llu assertionname=(%s) endTime is now=%llu", &v35, 0x20u);
    }

    v11 = v8[2];
    v10 = v8[3];
    if (v10 > v11)
    {
      v12 = shared_ht_log_handle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v34 = MATU_TO_MS(v8[3] - v8[2]);
        v35 = 134218498;
        v36 = a1;
        v37 = 2080;
        v38 = v8 + 4;
        v39 = 2048;
        v40 = v34;
        _os_log_error_impl(&dword_1C8286000, v12, OS_LOG_TYPE_ERROR, "HTAssertions: HTEndAssertion: assertionId=%llu assertionname=(%s) missed timeout (endTime was %fms after timeout)!", &v35, 0x20u);
      }
    }

    v13 = assertionSignpost();
    v14 = os_signpost_enabled(v13);

    if (!v14)
    {
      goto LABEL_32;
    }

    if (v10 <= v11)
    {
      v23 = assertionSignpost();
      v18 = v23;
      if (a1 == -1 || !os_signpost_enabled(v23))
      {
        goto LABEL_31;
      }

      v35 = 67240192;
      LODWORD(v36) = 0;
      v19 = "missedTimeout=%{public, signpost.telemetry:number2}i";
      v20 = v18;
      v21 = a1;
      v22 = 8;
    }

    else
    {
      v15 = mach_continuous_time();
      v16 = v8[2];
      v17 = assertionSignpost();
      v18 = v17;
      if (a1 == -1 || !os_signpost_enabled(v17))
      {
        goto LABEL_31;
      }

      v35 = 134349312;
      v36 = v15 - a2 + v16;
      v37 = 1026;
      LODWORD(v38) = 1;
      v19 = "%{public, signpost.description:end_time}llu missedTimeout=%{public, signpost.telemetry:number2}i";
      v20 = v18;
      v21 = a1;
      v22 = 18;
    }

    _os_signpost_emit_with_name_impl(&dword_1C8286000, v20, OS_SIGNPOST_INTERVAL_END, v21, "HTNonResponsiveTaskAssertion", v19, &v35, v22);
LABEL_31:

LABEL_32:
    v24 = 3;
    if (v10 > v11)
    {
      v24 = 2;
    }

    v25 = v8[v24];
    v26 = v8[1];
    if (v25 >= v26)
    {
      v27 = MATU_TO_MS(v25 - v26);
    }

    else
    {
      v27 = 0;
    }

    atomic_fetch_add(v4 + 717, v27);
    v28 = getpid();
    EventFromPid = getEventFromPid(v28);
    if (EventFromPid)
    {
      v30 = createStateInfoSortedArrayWithPtr((EventFromPid + 104));
      if (v30)
      {
        v6 = v30;
        v31 = calcluateDurationInCPURoleFromSortedArray(v30, 8, v8[1], v8[3]);
        v32 = calcluateDurationInCPURoleFromSortedArray(v6, 6, v8[1], v8[3]);
        atomic_fetch_add(v4 + 718, v31);
        atomic_fetch_add(v4 + 719, v32);
        goto LABEL_40;
      }
    }

    goto LABEL_41;
  }

  v6 = shared_ht_log_handle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
  {
    HTEndNonResponsiveTaskAtTime_cold_3();
  }

LABEL_40:

LABEL_41:
  v33 = *MEMORY[0x1E69E9840];
}

void sub_1C8295FF8(_Unwind_Exception *a1)
{
  do
  {
    v4 = *(v2 - 8);
    v2 -= 8;
  }

  while (v2 != v1);
  _Unwind_Resume(a1);
}

void sub_1C82961B8(_Unwind_Exception *a1)
{
  do
  {
    v4 = *(v2 - 8);
    v2 -= 8;
  }

  while (v2 != v1);
  _Unwind_Resume(a1);
}

void sub_1C8296378(_Unwind_Exception *a1)
{
  do
  {
    v4 = *(v2 - 8);
    v2 -= 8;
  }

  while (v2 != v1);
  _Unwind_Resume(a1);
}

uint64_t ht_fence_timeout(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  if (setupPrefs_onceToken != -1)
  {
    ht_fence_start_cold_1();
  }

  v2 = +[HTPrefs sharedPrefs];
  v3 = [v2 hangtracerDaemonEnabled];

  if ((v3 & 1) == 0)
  {
    v10 = shared_ht_log_handle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      ht_fence_timeout_cold_2();
    }

    goto LABEL_26;
  }

  v4 = +[HTPrefs sharedPrefs];
  v5 = [v4 fenceTrackingEnabled];

  if ((v5 & 1) == 0)
  {
    v10 = shared_ht_log_handle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      ht_fence_timeout_cold_3();
    }

    goto LABEL_26;
  }

  v6 = mach_absolute_time();
  v7 = shared_ht_log_handle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v18 = a1;
    v19 = 2048;
    v20 = v6;
    _os_log_impl(&dword_1C8286000, v7, OS_LOG_TYPE_DEFAULT, "HT CA Fence Tracking: ca fence blown, fence=%llu blown_timestamp=%llu", buf, 0x16u);
  }

  connectToHangTracer();
  if (!__recentCAFences)
  {
    v10 = shared_ht_log_handle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      ht_fence_timeout_cold_5();
    }

    goto LABEL_26;
  }

  if (__nextFenceIndex)
  {
    LODWORD(v8) = __nextFenceIndex - 1;
  }

  else
  {
    LODWORD(v8) = 24;
  }

  if (*(__recentCAFences + 16 * v8) == a1)
  {
    v8 = v8;
  }

  else
  {
    v8 = 0;
    v12 = __recentCAFences;
    while (1)
    {
      v13 = *v12;
      v12 += 2;
      if (v13 == a1)
      {
        break;
      }

      if (++v8 == 25)
      {
        goto LABEL_24;
      }
    }
  }

  v9 = *(__recentCAFences + 16 * v8 + 8);
  if (v9 == -1)
  {
LABEL_24:
    v10 = shared_ht_log_handle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      ht_fence_timeout_cold_4();
    }

LABEL_26:
    v11 = 0;
    goto LABEL_27;
  }

  v10 = HTConnectionQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __ht_fence_timeout_block_invoke;
  block[3] = &__block_descriptor_56_e5_v8__0l;
  block[4] = a1;
  block[5] = v9;
  block[6] = v6;
  dispatch_async(v10, block);
  v11 = 1;
LABEL_27:

  v14 = *MEMORY[0x1E69E9840];
  return v11;
}

void __ht_fence_timeout_block_invoke(uint64_t *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (hangTracerConnection)
  {
    *keys = xmmword_1E8302230;
    v7 = *off_1E8302240;
    v5[0] = xpc_int64_create(10);
    v5[1] = xpc_uint64_create(a1[4]);
    v5[2] = xpc_uint64_create(a1[5]);
    v5[3] = xpc_uint64_create(a1[6]);
    v2 = xpc_dictionary_create(keys, v5, 4uLL);
    xpc_connection_send_message(hangTracerConnection, v2);

    for (i = 3; i != -1; --i)
    {
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

void sub_1C829672C(_Unwind_Exception *a1)
{
  do
  {
    v4 = *(v2 - 8);
    v2 -= 8;
  }

  while (v2 != v1);
  _Unwind_Resume(a1);
}

__CFString *HTCollectHangLogsErrorCodeToLocalizedDescription(uint64_t a1)
{
  if ((a1 - 1) > 9)
  {
    return @"An unknown error occurred";
  }

  else
  {
    return off_1E8302440[a1 - 1];
  }
}

id HTCollectHangLogsGenerateClientResponseHandler(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __HTCollectHangLogsGenerateClientResponseHandler_block_invoke;
    v5[3] = &unk_1E8302280;
    v6 = v1;
    v3 = MEMORY[0x1CCA72C40](v5);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void __HTCollectHangLogsGenerateClientResponseHandler_block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = v5;
  if (!a3)
  {
    if (xpc_dictionary_get_BOOL(v5, "success"))
    {
      string = xpc_dictionary_get_string(v6, "fileName");
      if (string)
      {
        v8 = [MEMORY[0x1E696AEC0] stringWithCString:string encoding:4];
        v9 = 0;
LABEL_9:
        (*(*(a1 + 32) + 16))();

        goto LABEL_10;
      }

      v14 = MEMORY[0x1E696ABC0];
      v17 = *MEMORY[0x1E696A578];
      v18 = @"received an unexpected XPC response from hangtracerd";
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
      v9 = [v14 errorWithDomain:@"kHTCollectHangLogsError" code:8 userInfo:v15];
    }

    else
    {
      uint64 = xpc_dictionary_get_uint64(v6, "errorCode");
      v11 = MEMORY[0x1E696ABC0];
      v19 = *MEMORY[0x1E696A578];
      v12 = HTCollectHangLogsErrorCodeToLocalizedDescription(uint64);
      v20[0] = v12;
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
      v9 = [v11 errorWithDomain:@"kHTCollectHangLogsError" code:uint64 userInfo:v13];
    }

    v8 = 0;
    goto LABEL_9;
  }

  (*(*(a1 + 32) + 16))();
LABEL_10:

  v16 = *MEMORY[0x1E69E9840];
}

void HTCollectHangLogsBundleWithStartEndTime(void *a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v38[1] = *MEMORY[0x1E69E9840];
  v9 = a1;
  v10 = a2;
  v11 = a4;
  v12 = a5;
  v13 = v12;
  if (v9)
  {
    if (v11 && v12 && [v11 compare:v12] == 1)
    {
      v14 = shared_ht_log_handle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        HTCollectHangLogsBundleWithStartEndTime_cold_1();
      }

      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid NSDate parameter ordering — '%@' < '%@'", v13, v11];
      v16 = MEMORY[0x1E696ABC0];
      v35 = *MEMORY[0x1E696A578];
      v36 = v15;
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
      v18 = [v16 errorWithDomain:@"kHTCollectHangLogsError" code:6 userInfo:v17];

      if (!v10)
      {
        goto LABEL_25;
      }

      goto LABEL_22;
    }

    v15 = +[HTHangClient getClient];
    if (v15)
    {
      v31[0] = @"command";
      v31[1] = @"archiveSaveDirectory";
      v32[0] = &unk_1F47FA208;
      v32[1] = v9;
      v31[2] = @"archiveCompressionBypass";
      v19 = [MEMORY[0x1E696AD98] numberWithBool:a3];
      v20 = v19;
      if (v11)
      {
        v21 = v11;
      }

      else
      {
        v21 = &unk_1F47FA220;
      }

      v32[2] = v19;
      v32[3] = v21;
      v31[3] = @"startTime";
      v31[4] = @"endTime";
      if (v13)
      {
        v22 = v13;
      }

      else
      {
        v22 = &unk_1F47FA220;
      }

      v32[4] = v22;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:5];

      v30 = 0;
      v23 = [[HTHangRequest alloc] initRequestWithPath:v9 dictionary:v18 error:&v30];
      if (v30)
      {
        v10[2](v10, 0);
      }

      else
      {
        v28 = HTCollectHangLogsGenerateClientResponseHandler(v10);
        [v15 sendMessageToHangTracerWithReply:v23 responseHandler:v28];
      }

      goto LABEL_25;
    }

    if (v10)
    {
      v26 = MEMORY[0x1E696ABC0];
      v33 = *MEMORY[0x1E696A578];
      v34 = @"Failed to establish xpc connection with hangtracerd";
      v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
      v18 = [v26 errorWithDomain:@"kHTCollectHangLogsError" code:1 userInfo:v27];

LABEL_22:
      (v10[2])(v10, 0, v18);
LABEL_25:
    }
  }

  else
  {
    v24 = MEMORY[0x1E696ABC0];
    v37 = *MEMORY[0x1E696A578];
    v38[0] = @"Passed nil archive save path";
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:&v37 count:1];
    v15 = [v24 errorWithDomain:@"kHTCollectHangLogsError" code:5 userInfo:v25];

    if (v10)
    {
      (v10[2])(v10, 0, v15);
    }
  }

  v29 = *MEMORY[0x1E69E9840];
}

id HTCollectHangLogsBundleWithStartEndTimeSync(void *a1, uint64_t a2, void *a3, void *a4, id *a5)
{
  v49[1] = *MEMORY[0x1E69E9840];
  v9 = a1;
  v10 = a3;
  v11 = a4;
  v12 = v11;
  if (v9)
  {
    if (v10 && v11 && [v10 compare:v11] == 1)
    {
      v13 = shared_ht_log_handle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        HTCollectHangLogsBundleWithStartEndTime_cold_1();
      }

      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid NSDate parameter ordering — '%@' < '%@'", v12, v10];
      v15 = MEMORY[0x1E696ABC0];
      v46 = *MEMORY[0x1E696A578];
      v47 = v14;
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
      v17 = [v15 errorWithDomain:@"kHTCollectHangLogsError" code:6 userInfo:v16];

      if (a5)
      {
        objc_storeStrong(a5, v17);
      }

      v18 = 0;
      goto LABEL_27;
    }

    v14 = +[HTHangClient getClient];
    if (v14)
    {
      v42[0] = @"command";
      v42[1] = @"archiveSaveDirectory";
      v43[0] = &unk_1F47FA208;
      v43[1] = v9;
      v42[2] = @"archiveCompressionBypass";
      v19 = [MEMORY[0x1E696AD98] numberWithBool:a2];
      v43[2] = v19;
      v20 = &unk_1F47FA220;
      v42[3] = @"startTime";
      v42[4] = @"endTime";
      if (v10)
      {
        v21 = v10;
      }

      else
      {
        v21 = &unk_1F47FA220;
      }

      if (v12)
      {
        v20 = v12;
      }

      v43[3] = v21;
      v43[4] = v20;
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:v42 count:5];

      obj = 0;
      v22 = [[HTHangRequest alloc] initRequestWithPath:v9 dictionary:v17 error:&obj];
      if (obj)
      {
        if (a5)
        {
          objc_storeStrong(a5, obj);
        }

        v18 = 0;
      }

      else
      {
        v35 = 0;
        v36 = &v35;
        v37 = 0x3032000000;
        v38 = __Block_byref_object_copy__0;
        v39 = __Block_byref_object_dispose__0;
        v40 = 0;
        v34[0] = MEMORY[0x1E69E9820];
        v34[1] = 3221225472;
        v34[2] = __HTCollectHangLogsBundleWithStartEndTimeSync_block_invoke;
        v34[3] = &unk_1E83022A8;
        v34[4] = &v35;
        v34[5] = a5;
        v28 = MEMORY[0x1CCA72C40](v34);
        v29 = HTCollectHangLogsGenerateClientResponseHandler(v28);
        v33 = 0;
        v30 = [v14 sendMessageToHangTracerWithReplySync:v22 error:&v33];
        (v29)[2](v29, v30, v33);
        v18 = v36[5];

        _Block_object_dispose(&v35, 8);
      }

      goto LABEL_27;
    }

    if (a5)
    {
      v25 = MEMORY[0x1E696ABC0];
      v44 = *MEMORY[0x1E696A578];
      v45 = @"Failed to establish xpc connection with hangtracerd";
      v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
      v27 = [v25 errorWithDomain:@"kHTCollectHangLogsError" code:1 userInfo:v26];

      v18 = 0;
      v17 = *a5;
      *a5 = v27;
      goto LABEL_27;
    }

LABEL_24:
    v18 = 0;
    goto LABEL_28;
  }

  v23 = MEMORY[0x1E696ABC0];
  v48 = *MEMORY[0x1E696A578];
  v49[0] = @"Passed nil archive save path";
  v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v49 forKeys:&v48 count:1];
  v14 = [v23 errorWithDomain:@"kHTCollectHangLogsError" code:5 userInfo:v24];

  if (!a5)
  {
    goto LABEL_24;
  }

  v14 = v14;
  v18 = 0;
  v17 = *a5;
  *a5 = v14;
LABEL_27:

LABEL_28:
  v31 = *MEMORY[0x1E69E9840];

  return v18;
}

void sub_1C8297288(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __HTCollectHangLogsBundleWithStartEndTimeSync_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v6 = a3;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v7 = *(a1 + 40);
  if (v7)
  {
    objc_storeStrong(v7, a3);
  }
}

void HTReportHangLogsProcessed(void *a1)
{
  v1 = a1;
  connectToHangTracer();
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __HTReportHangLogsProcessed_block_invoke;
  v5[3] = &unk_1E83021E8;
  v6 = v1;
  v2 = v1;
  v3 = MEMORY[0x1CCA72C40](v5);
  v4 = HTConnectionQueue();
  dispatch_sync(v4, v3);
}

void __HTReportHangLogsProcessed_block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (hangTracerConnection)
  {
    *keys = xmmword_1E83022C8;
    v1 = *(a1 + 32);
    v9 = 0;
    v2 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v1 requiringSecureCoding:1 error:&v9];
    v3 = v9;
    if (v2)
    {
      values[0] = xpc_int64_create(12);
      v4 = v2;
      values[1] = xpc_data_create([v2 bytes], objc_msgSend(v2, "length"));
      v5 = xpc_dictionary_create(keys, values, 2uLL);
      xpc_connection_send_message(hangTracerConnection, v5);

      for (i = 1; i != -1; --i)
      {
      }
    }

    else
    {
      v7 = shared_ht_log_handle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __HTReportHangLogsProcessed_block_invoke_cold_1();
      }
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

void HTCheckForHangForHTMonitor(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = shared_ht_log_handle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = *(a1 + 48);
    v9[0] = 67109120;
    v9[1] = v7;
    _os_log_impl(&dword_1C8286000, v6, OS_LOG_TYPE_INFO, "HTCheckForHangForHTMonitor: check hang for  pid=%u ", v9, 8u);
  }

  checkForHangWithUserMovedAwayAndRecentAssertions(a1, 1, a2, a3);
  v8 = *MEMORY[0x1E69E9840];
}

void HTTestingResetNumOfHangEventsInSharedPage()
{
  if (GetSharedPage_onceToken != -1)
  {
    GetSharedPage_cold_1();
  }

  if (GetSharedPage__sharedPage && *(GetSharedPage__sharedPage + 4) >= 8u)
  {
    *(GetSharedPage__sharedPage + 4) = 0;
    v0 = shared_ht_log_handle();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
    {
      HTTestingResetNumOfHangEventsInSharedPage_cold_2();
    }
  }
}

void __handleSettingChange_block_invoke_145()
{
  keys[1] = *MEMORY[0x1E69E9840];
  if (hangTracerConnection)
  {
    keys[0] = "command";
    values = xpc_int64_create(2);
    v0 = xpc_dictionary_create(keys, &values, 1uLL);
    xpc_connection_send_message(hangTracerConnection, v0);
  }

  v1 = *MEMORY[0x1E69E9840];
}

void __StartMonitoringWatchdogDisablement_block_invoke_159(void *a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = a1[4];
  v3 = MEMORY[0x1E695DEC8];
  v4 = a2;
  v5 = [v3 arrayWithObjects:&v7 count:1];
  [v4 setPredicates:{v5, v7, v8}];

  [v4 setStateDescriptor:a1[5]];
  [v4 setUpdateHandler:a1[6]];

  v6 = *MEMORY[0x1E69E9840];
}

void __setupPrefs_block_invoke()
{
  v0 = dispatch_queue_create("com.apple.hangtracer.fencePrefs", 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __setupPrefs_block_invoke_2;
  block[3] = &unk_1E83021E8;
  v3 = v0;
  v1 = v0;
  dispatch_async(v1, block);
}

void __setupPrefs_block_invoke_2(uint64_t a1)
{
  v2 = +[HTPrefs sharedPrefs];
  [v2 setupPrefsWithQueue:*(a1 + 32)];
}

id __checkForHangWithUserMovedAwayAndRecentAssertions_block_invoke(uint64_t a1)
{
  v9[4] = *MEMORY[0x1E69E9840];
  v9[0] = kHTCoreAnalyticsDaemonEnabled;
  v8[0] = kHTCoreAnalyticsMode;
  v8[1] = kHTCoreAnalyticsHangType;
  v2 = getStringForSubtype(*(a1 + 40));
  v3 = *(a1 + 32);
  v9[1] = v2;
  v9[2] = v3;
  v8[2] = kHTCoreAnalyticsHangBundleID;
  v8[3] = kHTCoreAnalyticsHangDuration;
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 48)];
  v9[3] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:4];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

void __checkForHangWithUserMovedAwayAndRecentAssertions_block_invoke_188(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  if (hangTracerConnection)
  {
    v16 = xmmword_1E83023A8;
    v17 = *off_1E83023B8;
    v18 = "saveMicroHang";
    *keys = xmmword_1E8302388;
    v15 = *&off_1E8302398;
    values[0] = xpc_int64_create(*(a1 + 32));
    values[1] = xpc_string_create(*(a1 + 40));
    values[2] = xpc_int64_create(*(a1 + 48));
    values[3] = xpc_int64_create(*(a1 + 56));
    values[4] = xpc_int64_create(*(a1 + 64));
    values[5] = xpc_BOOL_create(*(a1 + 96) != 0);
    values[6] = xpc_int64_create(*(a1 + 72));
    values[7] = xpc_int64_create(*(*(a1 + 80) + 48));
    values[8] = xpc_BOOL_create(*(a1 + 97));
    v2 = xpc_dictionary_create(keys, values, 9uLL);
    v3 = *(a1 + 88);
    if (v3)
    {
      BytePtr = CFDataGetBytePtr(v3);
      Length = CFDataGetLength(*(a1 + 88));
      v6 = xpc_data_create(BytePtr, Length);
      xpc_dictionary_set_value(v2, "userActionData", v6);
    }

    v7 = *(a1 + 80);
    if (*(v7 + 416))
    {
      v8 = xpc_data_create((v7 + 416), 0xA0uLL);
      xpc_dictionary_set_value(v2, "stateInfo", v8);
    }

    else
    {
      v8 = shared_ht_log_handle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *v12 = 0;
        _os_log_impl(&dword_1C8286000, v8, OS_LOG_TYPE_INFO, "No valid data in recentStateInfo for hang, not sending CPURole data.", v12, 2u);
      }
    }

    xpc_connection_send_message(hangTracerConnection, v2);
    for (i = 8; i != -1; --i)
    {
    }
  }

  v10 = *(a1 + 88);
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = *MEMORY[0x1E69E9840];
}

void sub_1C8297C6C(_Unwind_Exception *a1)
{
  do
  {
    v4 = *(v2 - 8);
    v2 -= 8;
  }

  while (v2 != v1);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void OUTLINED_FUNCTION_8(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 8u);
}

id HTPrefsKeysToRestoreForPrefix(void *a1)
{
  v4[2] = *MEMORY[0x1E69E9840];
  if ([a1 isEqualToString:@"HTThirdPartyDevSupport"])
  {
    v4[0] = @"HangTracerHUDThresholdMSec";
    v4[1] = @"HangTracerThirdPartyHangThreshold";
    v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:2];
  }

  else
  {
    v1 = MEMORY[0x1E695E0F0];
  }

  v2 = *MEMORY[0x1E69E9840];

  return v1;
}

void OUTLINED_FUNCTION_1_2(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

id pathForPid()
{
  v0 = MEMORY[0x1EEE9AC00]();
  v6 = *MEMORY[0x1E69E9840];
  bzero(buffer, 0x1000uLL);
  if (proc_pidpath(v0, buffer, 0x1000u))
  {
    v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:buffer];
    if (!v1)
    {
      v1 = [MEMORY[0x1E696AEC0] stringWithCString:buffer encoding:1];
      v2 = shared_ht_log_handle();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
      {
        pathForPid_cold_1(v1, v2);
      }
    }
  }

  else
  {
    v1 = 0;
  }

  v3 = *MEMORY[0x1E69E9840];

  return v1;
}

uint64_t pidForProcessName(const char *a1, void *a2)
{
  v38[1] = *MEMORY[0x1E69E9840];
  v4 = proc_listpids(1u, 0, 0, 0);
  if (v4 <= 0)
  {
    v13 = MEMORY[0x1E696AEC0];
    v14 = __error();
    v15 = [v13 stringWithFormat:@"Unable to list all pids with error: %s", strerror(*v14)];
    v16 = shared_ht_log_handle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      pidForProcessName_cold_1();
    }

    if (!a2)
    {
      goto LABEL_19;
    }

    v17 = MEMORY[0x1E696ABC0];
    v18 = *MEMORY[0x1E696A798];
    v19 = *__error();
    v37 = *MEMORY[0x1E696A578];
    v38[0] = v15;
    v20 = MEMORY[0x1E695DF20];
    v21 = v38;
    v22 = &v37;
    goto LABEL_18;
  }

  v5 = (v4 + 80);
  v6 = malloc_type_malloc(v5, 0x3D27CE9EuLL);
  if (!v6)
  {
    v23 = MEMORY[0x1E696AEC0];
    v24 = __error();
    v15 = [v23 stringWithFormat:@"Unable to allocate pids buffer of size %d with error: %s", v5, strerror(*v24)];
    v25 = shared_ht_log_handle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      pidForProcessName_cold_1();
    }

    if (!a2)
    {
      goto LABEL_19;
    }

    v17 = MEMORY[0x1E696ABC0];
    v18 = *MEMORY[0x1E696A798];
    v19 = *__error();
    v35 = *MEMORY[0x1E696A578];
    v36 = v15;
    v20 = MEMORY[0x1E695DF20];
    v21 = &v36;
    v22 = &v35;
LABEL_18:
    v26 = [v20 dictionaryWithObjects:v21 forKeys:v22 count:1];
    *a2 = [v17 errorWithDomain:v18 code:v19 userInfo:v26];

LABEL_19:
    v11 = 0xFFFFFFFFLL;
    goto LABEL_20;
  }

  v7 = v6;
  v8 = proc_listpids(1u, 0, v6, v5);
  if (v8 < 4)
  {
LABEL_8:
    v11 = 0xFFFFFFFFLL;
  }

  else
  {
    v9 = v8 >> 2;
    v10 = v7;
    while (1)
    {
      memset(buffer, 0, sizeof(buffer));
      v12 = *v10++;
      v11 = v12;
      if (proc_name(v12, buffer, 0x20u) >= 1 && !strcmp(buffer, a1))
      {
        break;
      }

      if (!--v9)
      {
        goto LABEL_8;
      }
    }

    v29 = shared_ht_log_handle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      v31 = v11;
      v32 = 2080;
      v33 = a1;
      _os_log_impl(&dword_1C8286000, v29, OS_LOG_TYPE_INFO, "Found matching pid:%d for processName:%s", buf, 0x12u);
    }
  }

  free(v7);
LABEL_20:
  v27 = *MEMORY[0x1E69E9840];
  return v11;
}

__CFString *bundleIDFromPath(void *a1)
{
  v1 = a1;
  if (v1 && (v2 = CFURLCreateWithFileSystemPath(0, v1, kCFURLPOSIXPathStyle, 1u)) != 0)
  {
    v3 = v2;
    v4 = *MEMORY[0x1E695E480];
    v5 = _CFBundleCreateWithExecutableURLIfLooksLikeBundle();
    if (v5)
    {
      v6 = v5;
      v7 = CFBundleGetIdentifier(v5);
      CFRelease(v6);
    }

    else
    {
      v7 = &stru_1F47F5AE8;
    }

    CFRelease(v3);
  }

  else
  {
    v7 = &stru_1F47F5AE8;
  }

  return v7;
}

id STYErrorWithCode(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x1E696ABC0];
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObject:a2 forKey:*MEMORY[0x1E696A578]];
  v5 = [v3 errorWithDomain:@"SentryTailspinError" code:a1 userInfo:v4];

  return v5;
}

uint64_t ensureDirectoryExists(void *a1, int a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [MEMORY[0x1E696AC08] defaultManager];
  v16 = 0;
  if ([v4 fileExistsAtPath:v3 isDirectory:&v16])
  {
    v5 = v16 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v6 = shared_ht_log_handle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v20 = v3;
      _os_log_impl(&dword_1C8286000, v6, OS_LOG_TYPE_INFO, "Directory doesn't exist -> trying to create directory at path: %@", buf, 0xCu);
    }

    if (a2)
    {
      v17 = *MEMORY[0x1E696A360];
      v18 = @"mobile";
      v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    }

    else
    {
      v7 = 0;
    }

    v15 = 0;
    [v4 createDirectoryAtPath:v3 withIntermediateDirectories:1 attributes:v7 error:&v15];
    v9 = v15;
    v10 = [MEMORY[0x1E696AC08] defaultManager];
    v11 = [v10 fileExistsAtPath:v3 isDirectory:&v16];

    if (v11 && v16 == 1)
    {
      v12 = shared_ht_log_handle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v20 = v3;
        _os_log_impl(&dword_1C8286000, v12, OS_LOG_TYPE_DEFAULT, "Successfully created directory at path %@", buf, 0xCu);
      }

      v8 = 1;
    }

    else
    {
      v12 = shared_ht_log_handle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        ensureDirectoryExists_cold_1(v3, v9, v12);
      }

      v8 = 0;
    }
  }

  else
  {
    v8 = 1;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v8;
}

__CFString *createXPCObjectString(void *a1)
{
  if (a1)
  {
    v2 = createXPCObjectStringRecursive(a1, 0);
  }

  else
  {
    v2 = @"<null xpc_object_t>";
  }

  return v2;
}

__CFString *createXPCObjectStringRecursive(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    v6 = @"<null internal xpc_object_t>";
    goto LABEL_40;
  }

  v5 = MEMORY[0x1CCA730F0](v3);
  v6 = [MEMORY[0x1E696AD60] string];
  v7 = [&stru_1F47F5AE8 stringByPaddingToLength:4 * a2 withString:@" " startingAtIndex:0];
  v8 = a2 + 1;
  v9 = [&stru_1F47F5AE8 stringByPaddingToLength:4 * (a2 + 1) withString:@" " startingAtIndex:0];
  v10 = v9;
  if (v5 == MEMORY[0x1E69E9E80])
  {
    [(__CFString *)v6 appendString:@"{\n"];
    v15 = [MEMORY[0x1E695DF70] array];
    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 3221225472;
    applier[2] = __createXPCObjectStringRecursive_block_invoke;
    applier[3] = &unk_1E8302C30;
    v51 = a2;
    v49 = v15;
    v50 = v10;
    v16 = v15;
    xpc_dictionary_apply(v4, applier);
    [v16 sortUsingSelector:sel_compare_];
    v17 = [v16 componentsJoinedByString:{@", \n"}];
    [(__CFString *)v6 appendString:v17];

    [(__CFString *)v6 appendFormat:@"\n%@}", v7];
LABEL_25:

    goto LABEL_39;
  }

  if (v5 == MEMORY[0x1E69E9E50])
  {
    v47 = v7;
    [(__CFString *)v6 appendString:@"[\n"];
    v16 = [MEMORY[0x1E695DF70] array];
    count = xpc_array_get_count(v4);
    if (count)
    {
      v19 = count;
      for (i = 0; i != v19; ++i)
      {
        v21 = xpc_array_get_value(v4, i);
        v22 = createXPCObjectStringRecursive(v21, v8);
        [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", v10, v22];
        v23 = v4;
        v25 = v24 = v10;
        [v16 addObject:v25];

        v10 = v24;
        v4 = v23;
      }
    }

    v26 = [v16 componentsJoinedByString:{@", \n"}];
    [(__CFString *)v6 appendString:v26];

    v7 = v47;
    [(__CFString *)v6 appendFormat:@"\n%@]", v47];
    goto LABEL_25;
  }

  if (v5 == MEMORY[0x1E69E9F10])
  {
    string_ptr = xpc_string_get_string_ptr(v4);
    if (!string_ptr)
    {
      v31 = @"<invalid string ptr>";
      goto LABEL_34;
    }

    [MEMORY[0x1E696AEC0] stringWithUTF8String:string_ptr];
    v29 = v28 = v10;
    v30 = [v29 stringByReplacingOccurrencesOfString:@"" withString:@"\\""];

    v10 = v28;
    [(__CFString *)v6 appendFormat:@"%@", v30];
  }

  else
  {
    if (v5 == MEMORY[0x1E69E9E58])
    {
      if (xpc_BOOL_get_value(v4))
      {
        v31 = @"true";
      }

      else
      {
        v31 = @"false";
      }

      goto LABEL_34;
    }

    if (v5 == MEMORY[0x1E69E9EB0])
    {
      [(__CFString *)v6 appendFormat:@"%lld", xpc_int64_get_value(v4)];
      goto LABEL_39;
    }

    if (v5 == MEMORY[0x1E69E9F18])
    {
      [(__CFString *)v6 appendFormat:@"%llu", xpc_uint64_get_value(v4)];
      goto LABEL_39;
    }

    if (v5 == MEMORY[0x1E69E9E88])
    {
      [(__CFString *)v6 appendFormat:@"%f", xpc_double_get_value(v4)];
      goto LABEL_39;
    }

    if (v5 != MEMORY[0x1E69E9E78])
    {
      if (v5 == MEMORY[0x1E69E9E70])
      {
        [(__CFString *)v6 appendFormat:@"<Data: %zu bytes>", xpc_data_get_length(v4)];
        goto LABEL_39;
      }

      if (v5 == MEMORY[0x1E69E9F20])
      {
        bytes = xpc_uuid_get_bytes(v4);
        if (bytes)
        {
          v37 = v10;
          v38 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:bytes];
          v39 = [v38 UUIDString];
          [(__CFString *)v6 appendFormat:@"<UUID: %@>", v39];

          v10 = v37;
          goto LABEL_39;
        }

        v31 = @"<UUID: invalid bytes>";
        goto LABEL_34;
      }

      if (v5 == MEMORY[0x1E69E9EA0])
      {
        v40 = xpc_fd_dup(v4);
        if ((v40 & 0x80000000) == 0)
        {
          v41 = v40;
          [(__CFString *)v6 appendFormat:@"<FD: %d>", v40];
          close(v41);
          goto LABEL_39;
        }

        v31 = @"<FD: invalid>";
        goto LABEL_34;
      }

      if (v5 == MEMORY[0x1E69E9ED0])
      {
        v31 = @"null";
      }

      else if (v5 == MEMORY[0x1E69E9E98])
      {
        v42 = MEMORY[0x1CCA72FA0](v4);
        if (v42)
        {
          v43 = v42;
          [(__CFString *)v6 appendFormat:@"<Error: %s>", v42];
LABEL_54:
          v45 = v43;
LABEL_58:
          free(v45);
          goto LABEL_39;
        }

        v31 = @"<Error: unknown>";
      }

      else
      {
        if (v5 != MEMORY[0x1E69E9E90])
        {
          v11 = v9;
          v12 = MEMORY[0x1E69E9E68];
          v13 = MEMORY[0x1CCA72FA0](v4);
          v14 = v13;
          if (v5 == v12)
          {
            v10 = v11;
            if (v13)
            {
              [(__CFString *)v6 appendFormat:@"<Connection: %s>", v13];
              goto LABEL_57;
            }

            v31 = @"<Connection: unknown>";
          }

          else
          {
            v10 = v11;
            if (v13)
            {
              [(__CFString *)v6 appendFormat:@"<Unknown XPC Type: %s>", v13];
LABEL_57:
              v45 = v14;
              goto LABEL_58;
            }

            v31 = @"<Unknown XPC Type>";
          }

          goto LABEL_34;
        }

        v44 = MEMORY[0x1CCA72FA0](v4);
        if (v44)
        {
          v43 = v44;
          [(__CFString *)v6 appendFormat:@"<Endpoint: %s>", v44];
          goto LABEL_54;
        }

        v31 = @"<Endpoint: unknown>";
      }

LABEL_34:
      [(__CFString *)v6 appendString:v31];
      goto LABEL_39;
    }

    v32 = v9;
    value = xpc_date_get_value(v4);
    v30 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:value / 1000000000.0];
    v34 = [v30 description];
    v46 = value;
    v10 = v32;
    [(__CFString *)v6 appendFormat:@"<Date: %@ (%lld ns)>", v34, v46];
  }

LABEL_39:
LABEL_40:

  return v6;
}

void cleanupDiagnosticLogsDirectory(void *a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v3 = shared_ht_log_handle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    cleanupDiagnosticLogsDirectory_cold_1(v1, v3);
  }

  v17 = v1;
  v4 = [MEMORY[0x1E695DFF8] URLWithString:v1];
  v5 = [v2 enumeratorAtURL:v4 includingPropertiesForKeys:0 options:0 errorHandler:&__block_literal_global_3];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        v18 = 0;
        v12 = [v2 removeItemAtURL:v11 error:&v18];
        v13 = v18;
        v14 = shared_ht_log_handle();
        v15 = v14;
        if (v12)
        {
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v24 = v11;
            _os_log_debug_impl(&dword_1C8286000, v15, OS_LOG_TYPE_DEBUG, "Successfully deleted file at %@", buf, 0xCu);
          }
        }

        else if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v24 = v11;
          v25 = 2112;
          v26 = v13;
          _os_log_impl(&dword_1C8286000, v15, OS_LOG_TYPE_DEFAULT, "Failed to delete file at %@ : %@", buf, 0x16u);
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v8);
  }

  v16 = *MEMORY[0x1E69E9840];
}

uint64_t __cleanupDiagnosticLogsDirectory_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  v6 = shared_ht_log_handle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = v4;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_1C8286000, v6, OS_LOG_TYPE_DEFAULT, "Failed to enumerate file at %@ : %@", &v9, 0x16u);
  }

  v7 = *MEMORY[0x1E69E9840];
  return 1;
}

void persistAndUnredactLogs()
{
  v0 = shared_ht_log_handle();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    persistAndUnredactLogs_cold_1();
  }
}

id legacySignpost()
{
  if (legacySignpost_onceToken != -1)
  {
    legacySignpost_cold_1();
  }

  v1 = legacySignpost_signpostLog;

  return v1;
}

uint64_t __legacySignpost_block_invoke()
{
  legacySignpost_signpostLog = os_log_create("com.apple.hangtracer", "signpost_hang");

  return MEMORY[0x1EEE66BB8]();
}

id tailspinConversionSignpost()
{
  if (tailspinConversionSignpost_onceToken != -1)
  {
    tailspinConversionSignpost_cold_1();
  }

  v1 = tailspinConversionSignpost_signpostLog;

  return v1;
}

uint64_t __tailspinConversionSignpost_block_invoke()
{
  tailspinConversionSignpost_signpostLog = os_log_create("com.apple.hangtracer", "hangreporter_tailspin_conversion");

  return MEMORY[0x1EEE66BB8]();
}

id assertionSignpost()
{
  if (assertionSignpost_onceToken != -1)
  {
    assertionSignpost_cold_1();
  }

  v1 = assertionSignpost_signpostLog;

  return v1;
}

uint64_t __assertionSignpost_block_invoke()
{
  assertionSignpost_signpostLog = os_log_create("com.apple.hangtracer", "non_responsive_assertion");

  return MEMORY[0x1EEE66BB8]();
}

__CFString *getStringForRequestType(unint64_t a1)
{
  if (a1 > 4)
  {
    v2 = @"Unknown";
  }

  else
  {
    v2 = *off_1E8302C50[a1];
  }

  return v2;
}

__CFString *getTailspinCaptureFailReasonString(unint64_t a1)
{
  if (a1 > 0xE)
  {
    return @"tailspin capture failed for unknown reason";
  }

  else
  {
    return off_1E8302CD0[a1];
  }
}

__CFString *getSpindumpConversionFailReasonString(unint64_t a1)
{
  if (a1 > 0xB)
  {
    return @"failed due to unknown reason";
  }

  else
  {
    return off_1E8302D48[a1];
  }
}

uint64_t getHTBugType(int a1, int a2, double a3)
{
  if (a1)
  {
    v4 = +[HTPrefs sharedPrefs];
    v5 = [v4 runloopLongHangDurationThresholdMSec];

    if (v5 <= a3)
    {
      return 222;
    }

    else
    {
      v6 = +[HTPrefs sharedPrefs];
      v7 = [v6 runloopHangDurationThresholdMSec];

      if (v7 <= a3)
      {
        return 223;
      }

      else
      {
        return 310;
      }
    }
  }

  else if (a2)
  {
    return 328;
  }

  else
  {
    return 228;
  }
}

uint64_t HTEventTypeFromServiceName(void *a1)
{
  v1 = a1;
  if ([v1 containsString:@"UIKit-runloop"])
  {
    v2 = 0;
  }

  else if ([v1 containsString:@"Fence-hang"])
  {
    v2 = 1;
  }

  else if ([v1 containsString:@"Slow-Launch"])
  {
    v2 = 2;
  }

  else if ([v1 containsString:@"Sentry"])
  {
    v2 = 3;
  }

  else if ([v1 containsString:@"Force-Quit"])
  {
    v2 = 4;
  }

  else
  {
    v2 = 5;
  }

  return v2;
}

uint64_t isM9Watch()
{
  v0 = MGCopyAnswer();
  v1 = [v0 isEqualToString:@"t8006"];

  return v1;
}

double getWallTimeForMachAbsTime(unint64_t a1)
{
  mach_get_times();
  v2 = 0 - *MEMORY[0x1E695E468] + 0 / 1000000000.0;
  v3 = MATU_TO_MS(0) / 1000.0;
  return v2 + MATU_TO_MS(a1) / 1000.0 - v3;
}

id getFirstHangInfoDict(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    v5 = *v16;
    v6 = -1;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(v1);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        v9 = [v8 objectForKeyedSubscript:@"StartTime"];
        v10 = [v9 longLongValue];

        if (v6 > v10)
        {
          v11 = [v8 objectForKeyedSubscript:@"StartTime"];
          v6 = [v11 longLongValue];

          v12 = v8;
          v4 = v12;
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];

  return v4;
}

uint64_t HTGetNSDateFromMachAbsoluteTime(uint64_t a1, void *a2, unint64_t a3)
{
  [a2 timeIntervalSinceReferenceDate];
  v6 = MS_TO_MATU((v5 * 1000.0));
  v7 = MATU_TO_SEC((v6 - a3) + a1);
  v8 = MEMORY[0x1E695DF00];

  return [v8 dateWithTimeIntervalSinceReferenceDate:v7];
}

unint64_t HTGetMachAbsoluteTimeFromNSDate(void *a1, unint64_t a2, double a3)
{
  [a1 timeIntervalSinceReferenceDate];
  v6 = v5 - a3;
  v7 = MATU_TO_SEC(a2);
  return SEC_TO_MATU(v7 + v6);
}

BOOL checkForHUDUpdateForHangEvent(unint64_t a1, uint64_t a2, double *a3)
{
  v3 = atomic_load((a2 + 24));
  result = 0;
  if (!v3)
  {
    v4 = *a2;
    if (*a2 == -1 || v4 <= a1)
    {
      v7 = MATU_TO_MS(a1);
      v8 = v7 - MATU_TO_MS(v4);
      *a3 = v8;
      if (v8 > 100.0)
      {
        return 1;
      }
    }
  }

  return result;
}

id getProcessName(int a1)
{
  v5 = *MEMORY[0x1E69E9840];
  proc_name(a1, buffer, 0x20u);
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:buffer];
  v2 = *MEMORY[0x1E69E9840];

  return v1;
}

uint64_t __createXPCObjectStringRecursive_block_invoke(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = createXPCObjectStringRecursive(a3, a1[6] + 1);
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a2];
  v7 = a1[4];
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@: %@", a1[5], v6, v5];
  [v7 addObject:v8];

  return 1;
}

double MS_TO_MATU(unint64_t a1)
{
  if (timebaseConversionFactor_onceToken != -1)
  {
    timebaseConversionFactor_cold_1();
  }

  return a1 / *&timebaseConversionFactor_timebaseConversion;
}

double SEC_TO_MATU(double a1)
{
  if (timebaseConversionFactor_onceToken != -1)
  {
    timebaseConversionFactor_cold_1();
  }

  return (a1 * 1000.0) / *&timebaseConversionFactor_timebaseConversion;
}

uint64_t machTimebaseForLiveMachine()
{
  if (machTimebaseForLiveMachine_once != -1)
  {
    machTimebaseForLiveMachine_cold_1();
  }

  return machTimebaseForLiveMachine_timebase;
}

uint64_t applyTailspinConfig()
{
  v0 = shared_ht_log_handle();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    applyTailspinConfig_cold_1();
  }

  return 0;
}

uint64_t configureTailspinForSelfEnableConfig()
{
  v0 = shared_ht_log_handle();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    configureTailspinForSelfEnableConfig_cold_1();
  }

  return 0;
}

uint64_t configureTailspinForEPL()
{
  v0 = shared_ht_log_handle();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    configureTailspinForEPL_cold_1();
  }

  return 0;
}

uint64_t configureTailspinForThirdPartyDevelopment()
{
  v0 = shared_ht_log_handle();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    configureTailspinForThirdPartyDevelopment_cold_1();
  }

  return 0;
}

void OUTLINED_FUNCTION_0_5(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void __HTTelemetryCheckForUpdates_block_invoke_5()
{
  v0 = +[HTPrefs sharedPrefs];
  [v0 refreshHTPrefs];
}

__CFString *getStringFromHTForegroundUpdateType(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E8302DC8[a1 - 1];
  }
}

BOOL populateEmissionScenario(char a1, uint64_t *a2, int a3, double a4)
{
  if (a1)
  {
    v5 = 2;
  }

  else
  {
    result = isOverPersistentEmissionThreshold(a3, a4);
    if (!result)
    {
      return result;
    }

    v5 = 1;
  }

  *a2 = v5;
  return 1;
}

void OUTLINED_FUNCTION_1_3(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_2_2(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_fault_impl(a1, log, OS_LOG_TYPE_FAULT, a4, va, 0x16u);
}

void __HTConnectToHTMonitor_block_invoke_45(uint64_t a1)
{
  v2 = shared_ht_log_handle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_1C8286000, v2, OS_LOG_TYPE_INFO, "HTConnectToHTMonitor: htMonitor message is sent", v3, 2u);
  }

  xpc_connection_cancel(*(a1 + 32));
}

void HTInitializeHangTracerMonitor()
{
  v0 = shared_ht_log_handle();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *v1 = 0;
    _os_log_impl(&dword_1C8286000, v0, OS_LOG_TYPE_INFO, "HTInitializeHangTracerMonitor: HT Monitor is monitoring Hang Event", v1, 2u);
  }

  if (HTInitializeHangTracerMonitor_onceToken != -1)
  {
    HTInitializeHangTracerMonitor_cold_1();
  }
}

void __HTInitializeHangTracerMonitor_block_invoke()
{
  v0 = dispatch_queue_create(htMonitorConnectionQueueLabel, 0);
  v1 = _htMonitorConnectionQueue;
  _htMonitorConnectionQueue = v0;

  mach_service = xpc_connection_create_mach_service("com.apple.hangtracermonitor", _htMonitorConnectionQueue, 1uLL);
  v3 = HTInitializeHangTracerMonitor_htConnection;
  HTInitializeHangTracerMonitor_htConnection = mach_service;

  xpc_connection_set_event_handler(HTInitializeHangTracerMonitor_htConnection, &__block_literal_global_52);
  v4 = HTInitializeHangTracerMonitor_htConnection;

  xpc_connection_resume(v4);
}

void __HTInitializeHangTracerMonitor_block_invoke_53(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (MEMORY[0x1CCA730F0]() == MEMORY[0x1E69E9E98])
  {
    string = xpc_dictionary_get_string(v3, *MEMORY[0x1E69E9E28]);
    v5 = shared_ht_log_handle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v27 = *(a1 + 32);
      LODWORD(region) = 67109378;
      HIDWORD(region) = v27;
      v31 = 2082;
      v32 = string;
      _os_log_impl(&dword_1C8286000, v5, OS_LOG_TYPE_INFO, "HTInitializeHangTracerMonitor: XPC_TYPE_ERR for appConnection with pid %d: %{public}s", &region, 0x12u);
    }

    goto LABEL_25;
  }

  if (MEMORY[0x1CCA730F0](v3) == MEMORY[0x1E69E9E80] && xpc_dictionary_get_int64(v3, "command") == 1)
  {
    v4 = xpc_dictionary_get_value(v3, "shmem");
    if (v4)
    {
      v5 = v4;
      region = 0;
      v6 = xpc_shmem_map(v4, &region);
      v7 = region;
      v8 = pidHangEventDict;
      v10 = *(a1 + 32);
      v9 = (a1 + 32);
      v11 = [MEMORY[0x1E696AD98] numberWithInt:v10];
      if (v7 && v6)
      {
        v12 = [v8 objectForKeyedSubscript:v11];

        if (v12)
        {
          v13 = shared_ht_log_handle();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
          {
            __HTInitializeHangTracerMonitor_block_invoke_53_cold_2(v9, v13);
          }

          v14 = pidHangEventDict;
          v15 = [MEMORY[0x1E696AD98] numberWithInt:*v9];
          [v14 removeObjectForKey:v15];
        }

        v16 = [HTMonitorPidHangEvent alloc];
        v17 = [(HTMonitorPidHangEvent *)v16 initHTMonitorPidHangEvent:region shmem_size:v6];
        v18 = pidHangEventDict;
        if (!pidHangEventDict)
        {
          v19 = objc_alloc_init(MEMORY[0x1E695DF90]);
          v20 = pidHangEventDict;
          pidHangEventDict = v19;

          v18 = pidHangEventDict;
        }

        v21 = [MEMORY[0x1E696AD98] numberWithInt:*v9];
        [v18 setObject:v17 forKeyedSubscript:v21];

        v22 = shared_ht_log_handle();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          v23 = *v9;
          v29[0] = 67109120;
          v29[1] = v23;
          _os_log_impl(&dword_1C8286000, v22, OS_LOG_TYPE_INFO, "HTInitializeHangTracerMonitor: Monitoring pid @%d", v29, 8u);
        }

        if (v17)
        {
          v24 = +[HTPrefs sharedPrefs];
          v25 = [v24 shouldCollectCPURoleInfo];

          if (v25)
          {
            [HTMonitorPidHangEvent setupRunningBoardProcessMonitorForPid:*v9];
          }
        }
      }

      else
      {
        [v8 removeObjectForKey:v11];

        v17 = shared_ht_log_handle();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          __HTInitializeHangTracerMonitor_block_invoke_53_cold_1();
        }
      }
    }

    else
    {
      v5 = shared_ht_log_handle();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        __HTInitializeHangTracerMonitor_block_invoke_53_cold_3();
      }
    }

LABEL_25:
  }

  v28 = *MEMORY[0x1E69E9840];
}

void __HTInitializeHangTracerMonitor_block_invoke_57(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = shared_ht_log_handle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 40);
    v7[0] = 67109120;
    v7[1] = v3;
    _os_log_impl(&dword_1C8286000, v2, OS_LOG_TYPE_INFO, "HangTracerMonitor: Detected app exit (pid=%u)", v7, 8u);
  }

  v4 = pidHangEventDict;
  v5 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 40)];
  [v4 removeObjectForKey:v5];

  [HTMonitorPidHangEvent removePidFromProcessMonitoring:*(a1 + 40)];
  dispatch_source_cancel(*(a1 + 32));
  v6 = *MEMORY[0x1E69E9840];
}

void HTUserSwitchedAwayFromApp(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = shared_ht_log_handle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6[0] = 67109378;
    v6[1] = a1;
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&dword_1C8286000, v4, OS_LOG_TYPE_INFO, "HTUserSwitchedAwayFromApp for pid %d reason %@", v6, 0x12u);
  }

  [HTMonitorPidHangEvent checkHangForPid:a1];
  v5 = *MEMORY[0x1E69E9840];
}

id arrayOfCFPrefsWithPrefix(const __CFString *a1, void *a2, uint64_t a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.", a3];
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v8 = CFPreferencesCopyKeyList(a1, v5, *MEMORY[0x1E695E898]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = v8;
  v10 = [(__CFArray *)v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v17 + 1) + 8 * i);
        if ([v14 hasPrefix:v6])
        {
          [v7 addObject:v14];
        }
      }

      v11 = [(__CFArray *)v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  v15 = *MEMORY[0x1E69E9840];

  return v7;
}

id getPrefWithOverrideProfile(void *a1, void *a2)
{
  v3 = a1;
  v4 = MEMORY[0x1E696AEC0];
  v5 = a2;
  v6 = [v4 stringWithFormat:@"HTProfile.%@", v3];
  v7 = [v5 objectForKeyedSubscript:v6];

  if (v7 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v8 = v7;
  }

  else
  {
    v9 = CFPreferencesCopyValue(v3, @"com.apple.da", @"mobile", *MEMORY[0x1E695E898]);
    if (v9 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v8 = v9;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

id __checkForAssertionOverlap_block_invoke(void *a1)
{
  v8[2] = *MEMORY[0x1E69E9840];
  v7[0] = @"assertionOverlapMs";
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a1[4] - a1[5]];
  v7[1] = @"assertionOverlapName";
  v8[0] = v2;
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a1[6]];
  v8[1] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

id __checkForAssertionOverlap_block_invoke_10(uint64_t a1)
{
  v8[2] = *MEMORY[0x1E69E9840];
  v7[0] = @"hangDurationOverlapMs";
  v2 = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 32)];
  v7[1] = @"hangDurationOverlapPercent";
  v8[0] = v2;
  v3 = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 40)];
  v8[1] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

id HTTerminationAllAvailableReasons()
{
  if (HTTerminationAllAvailableReasons_onceToken != -1)
  {
    HTTerminationAllAvailableReasons_cold_1();
  }

  v1 = HTTerminationAllAvailableReasons_allReasons;

  return v1;
}

void __HTTerminationAllAvailableReasons_block_invoke()
{
  v5 = [MEMORY[0x1E695DF70] array];
  v0 = 2;
  do
  {
    v1 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v0];
    [v5 addObject:v1];

    v2 = v0 >> 42;
    v0 *= 2;
  }

  while (!v2);
  v3 = [v5 copy];
  v4 = HTTerminationAllAvailableReasons_allReasons;
  HTTerminationAllAvailableReasons_allReasons = v3;
}

void __stateInfoSortedArrayComparator_block_invoke_2_cold_1()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = objc_opt_class();
  v1 = objc_opt_class();
  v2 = OUTLINED_FUNCTION_1(v1);
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x1E69E9840];
}

void __stateInfoSortedArrayComparator_block_invoke_2_cold_2()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = objc_opt_class();
  v1 = objc_opt_class();
  v2 = OUTLINED_FUNCTION_1(v1);
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x1E69E9840];
}

void _isValidStateInfoSortedArray_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  OUTLINED_FUNCTION_2();
  v1 = v0;
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

void createStateInfoJSONBlobForHang_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  v4 = 2048;
  v5 = v0;
  _os_log_fault_impl(&dword_1C8286000, v1, OS_LOG_TYPE_FAULT, "The provided stateInfoArray '%@' only has state objects AFTER then end of the hang (%llu matu).", v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

void iterateRecentStateInfo_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(&dword_1C8286000, v0, OS_LOG_TYPE_DEBUG, "Recent state info:\n%{public}@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

void createStateInfoSortedArrayWithPtr_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(&dword_1C8286000, v0, OS_LOG_TYPE_DEBUG, "Compsed final stateInfo sorted Array: %{public}@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

void __GetSharedPage_block_invoke_cold_1()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = *__error();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_8(&dword_1C8286000, v1, v2, "Unable to create shared page: %{errno}d", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

void HTHangEventCreateWithBundleID_cold_2()
{
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void HTHangEventCreateWithBundleID_cold_3()
{
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __HTHangEventCreateWithBundleID_block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  v4 = 1024;
  v5 = v0;
  _os_log_debug_impl(&dword_1C8286000, v1, OS_LOG_TYPE_DEBUG, "Display state changed %i -> %i", v3, 0xEu);
  v2 = *MEMORY[0x1E69E9840];
}

void __HTHangEventCreateWithBundleID_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_1();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void HTResumeHangTracingWithStartTime_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_1();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

void HTEndNonResponsiveTaskAtTime_cold_2()
{
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_1();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void HTEndNonResponsiveTaskAtTime_cold_3()
{
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_1();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void ht_fence_start_cold_4()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_7();
  _os_log_debug_impl(v0, v1, OS_LOG_TYPE_DEBUG, v2, v3, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

void ht_fence_start_cold_5()
{
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_1();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void ht_fence_timeout_cold_4()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_7();
  _os_log_fault_impl(v0, v1, OS_LOG_TYPE_FAULT, v2, v3, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

void ht_fence_timeout_cold_5()
{
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void HTCollectHangLogsBundleWithStartEndTime_cold_1()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, OS_LOG_TYPE_ERROR, v2, v3, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

void __HTReportHangLogsProcessed_block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void checkForHangWithUserMovedAwayAndRecentAssertions_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_1();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void checkForHangWithUserMovedAwayAndRecentAssertions_cold_2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_1();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void checkForHangWithUserMovedAwayAndRecentAssertions_cold_4()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void checkForHangWithUserMovedAwayAndRecentAssertions_cold_5()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_1();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x1E69E9840];
}

void checkForHangWithUserMovedAwayAndRecentAssertions_cold_7()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_1();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __handleSettingChange_block_invoke_cold_1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *a1 + 116;
  OUTLINED_FUNCTION_2_1();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void __handleSettingChange_block_invoke_cold_2(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *a1 + 52;
  OUTLINED_FUNCTION_2_1();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void __HTCreateAnalyticsEventForAlwaysOnHang_block_invoke_2_cold_2()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = *__error();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_8(&dword_1C8286000, v1, v2, "Unable to get volume space info: %{errno}d", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

void __HTGatherHomeVolumeSpaceInfo_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void pathForPid_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_fault_impl(&dword_1C8286000, a2, OS_LOG_TYPE_FAULT, "HangTracer: pathForPid was found invalid UTF8 string, trying ascii encoding = %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void pidForProcessName_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void ensureDirectoryExists_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_1C8286000, log, OS_LOG_TYPE_ERROR, "Error: error creating directory at path %@ %@", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

void cleanupDiagnosticLogsDirectory_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_1C8286000, a2, OS_LOG_TYPE_DEBUG, "Cleaning up %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void HTTelemetryHasRunThisBoot_cold_1(NSObject *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *__error();
  v4[0] = 67109120;
  v4[1] = v2;
  _os_log_error_impl(&dword_1C8286000, a1, OS_LOG_TYPE_ERROR, "sem_open() failed: %{errno}d", v4, 8u);
  v3 = *MEMORY[0x1E69E9840];
}

void __HTTelemetryCheckForUpdates_block_invoke_cold_1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  string = xpc_dictionary_get_string(a1, *MEMORY[0x1E69E9E28]);
  v5 = 136315138;
  v6 = string;
  _os_log_error_impl(&dword_1C8286000, a2, OS_LOG_TYPE_ERROR, "Received error updating telemetry: %s", &v5, 0xCu);
  v4 = *MEMORY[0x1E69E9840];
}

void checkForRollingFGTelemetryEmission_cold_1()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  WORD2(v4) = 2048;
  HIWORD(v4) = v0;
  OUTLINED_FUNCTION_2_2(&dword_1C8286000, v0, v1, "event->rollingFGTimestamp is later than now, this should never happen. (start:%llu > end:%llu)", v3, v4);
  v2 = *MEMORY[0x1E69E9840];
}

void HTForegroundTrackingBegin_cold_2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_3(&dword_1C8286000, v0, v1, "event->bundleID has been corrupted, final char in array is not \\0. bundleID: %s", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void HTForegroundTrackingEnd_cold_2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_1C8286000, v0, OS_LOG_TYPE_ERROR, "This SPI should only be invoked by when an app is backgrounded, invalid client: %@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

void __HTConnectToHTMonitor_block_invoke_cold_1(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = (*a1 + 116) >> 32;
  OUTLINED_FUNCTION_1_3(&dword_1C8286000, a2, a3, "hangEvent->bundleID has been corrupted, final char in array is not \\0. bundleID: %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void __HTConnectToHTMonitor_block_invoke_cold_2(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = (*a1 + 52) >> 32;
  OUTLINED_FUNCTION_1_3(&dword_1C8286000, a2, a3, "hangEvent->serviceName has been corrupted, final char in array is not \\0. serviceName: %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void __HTInitializeHangTracerMonitor_block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __HTInitializeHangTracerMonitor_block_invoke_2_cold_2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

void __HTInitializeHangTracerMonitor_block_invoke_53_cold_2(int *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v4[0] = 67109120;
  v4[1] = v2;
  _os_log_fault_impl(&dword_1C8286000, a2, OS_LOG_TYPE_FAULT, "HTInitializeHangTracerMonitor: pidHangEvent is present in dict for pid  %d ", v4, 8u);
  v3 = *MEMORY[0x1E69E9840];
}

void checkForAssertionOverlap_cold_1(uint8_t *a1, unint64_t a2, double *a3, NSObject *a4)
{
  v7 = MATU_TO_MS(a2);
  *a1 = 134217984;
  *a3 = v7;
  _os_log_debug_impl(&dword_1C8286000, a4, OS_LOG_TYPE_DEBUG, "HTAssertion: checkOverlap: ignoring hang during screen off with duration %.0fms", a1, 0xCu);
}