void sub_1E0C14D54(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  *(*(*(a1 + 40) + 8) + 24) = *(*(a1 + 32) + 64);

  objc_autoreleasePoolPop(v2);
}

void sub_1E0C1547C(void *a1, io_iterator_t a2, void *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v28 = v5;
  if (v5)
  {
    clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
    v8 = CWFGetOSLog();
    if (v8)
    {
      v9 = CWFGetOSLog();
    }

    else
    {
      v9 = MEMORY[0x1E69E9C10];
      v11 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      [v5 isMonitoringEvents];
      _os_log_send_and_compose_impl();
    }

    if ([v5 isMonitoringEvents])
    {
      v25 = v7;
      v27 = [v5 eventHandler];
      if (v27)
      {
        v12 = IOIteratorNext(a2);
        if (v12)
        {
          v13 = v12;
          v14 = *MEMORY[0x1E695E480];
          v26 = v6;
          do
          {
            CFProperty = IORegistryEntryCreateCFProperty(v13, @"IOClass", v14, 0);
            v16 = IORegistryEntryCreateCFProperty(v13, @"IOInterfaceName", v14, 0);
            v17 = IORegistryEntryCreateCFProperty(v13, @"BSD Name", v14, 0);
            v18 = IORegistryEntryCreateCFProperty(v13, @"IO80211VirtualInterfaceRole", v14, 0);
            v19 = IORegistryEntryCreateCFProperty(v13, @"IOInterfaceNamePrefix", v14, 0);
            cf = IORegistryEntryCreateCFProperty(v13, @"IOInterfaceUnit", v14, 0);
            clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
            v20 = CWFGetOSLog();
            if (v20)
            {
              v21 = CWFGetOSLog();
            }

            else
            {
              v21 = MEMORY[0x1E69E9C10];
              v22 = MEMORY[0x1E69E9C10];
            }

            v6 = v26;
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              _os_log_send_and_compose_impl();
            }

            v23 = [v16 copy];
            (v27)[2](v27, v28, v23, v26);

            if (v17)
            {
              CFRelease(v17);
            }

            if (v16)
            {
              CFRelease(v16);
            }

            if (CFProperty)
            {
              CFRelease(CFProperty);
            }

            if (v18)
            {
              CFRelease(v18);
            }

            if (v19)
            {
              CFRelease(v19);
            }

            if (cf)
            {
              CFRelease(cf);
            }

            IOObjectRelease(v13);
            v13 = IOIteratorNext(a2);
          }

          while (v13);
        }
      }

      v7 = v25;
    }
  }

  else
  {
    while (1)
    {
      v10 = IOIteratorNext(a2);
      if (!v10)
      {
        break;
      }

      IOObjectRelease(v10);
    }
  }

  objc_autoreleasePoolPop(v7);

  v24 = *MEMORY[0x1E69E9840];
}

void sub_1E0C161B4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(*(a1 + 32) + 40);
  if (v3)
  {
    dispatch_source_cancel(v3);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0C165F8(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(*(a1 + 32) + 40);
  if (v3)
  {
    v4 = dispatch_walltime(0, 60000000000);
    dispatch_source_set_timer(v3, v4, 0xFFFFFFFFFFFFFFFFLL, 0);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0C169A8(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) updatedBrokenBackhaulState];

  if (v3)
  {
    v4 = [*(a1 + 32) updatedBrokenBackhaulState];
    v5 = [*(a1 + 32) brokenBackhaulState];
    v6 = [*(a1 + 32) brokenBackhaulStateUpdatedAt];
    (v4)[2](v4, v5, v6);
  }

  objc_autoreleasePoolPop(v2);
}

uint64_t sub_1E0C16C40(uint64_t a1, int a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = CWFGetOSLog();
    if (v4)
    {
      v5 = CWFGetOSLog();
    }

    else
    {
      v5 = MEMORY[0x1E69E9C10];
      v10 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v7 = CWFGetOSLog();
  v8 = v7;
  if (!a3)
  {
    if (v7)
    {
      v5 = CWFGetOSLog();
    }

    else
    {
      v5 = MEMORY[0x1E69E9C10];
      v15 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

LABEL_9:
    _os_log_send_and_compose_impl();
LABEL_10:

    result = *(a1 + 32);
    if (result)
    {
      result = (*(result + 16))(result, 0);
    }

    goto LABEL_19;
  }

  if (v7)
  {
    v9 = CWFGetOSLog();
  }

  else
  {
    v9 = MEMORY[0x1E69E9C10];
    v12 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v16 = a3[1];
    v17 = a3[2];
    v18 = a3[3];
    v19 = a3[5];
    v20 = a3[4];
    v21 = a3[6];
    _os_log_send_and_compose_impl();
  }

  result = *(a1 + 32);
  if (result)
  {
    v13 = a3[4];
    result = (*(result + 16))(result, 1);
  }

LABEL_19:
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1E0C16FC4(uint64_t a1, int token)
{
  v16 = *MEMORY[0x1E69E9840];
  state64 = 0;
  state = notify_get_state(token, &state64);
  v4 = CWFGetOSLog();
  v5 = v4;
  if (state)
  {
    if (v4)
    {
      v6 = CWFGetOSLog();
    }

    else
    {
      v6 = MEMORY[0x1E69E9C10];
      v8 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v14 = 134217984;
      v15 = state;
      _os_log_send_and_compose_impl();
    }
  }

  else
  {
    if (v4)
    {
      v7 = CWFGetOSLog();
    }

    else
    {
      v7 = MEMORY[0x1E69E9C10];
      v9 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 134217984;
      v15 = state64;
      _os_log_send_and_compose_impl();
    }

    v10 = *(a1 + 32);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1E0C171B4;
    v12[3] = &unk_1E86E6470;
    v12[4] = v10;
    [v10 __fetchSymptomsBrokenBackhaulStateWithEventID:state64 completion:v12];
  }

  v11 = *MEMORY[0x1E69E9840];
}

void sub_1E0C171B4(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = *(a1 + 32);
    v3 = [v2 __mapSymptomsBrokenBackhaulState:?];
    v4 = [MEMORY[0x1E695DF00] date];
    [v2 __updateBrokenBackhaulState:v3 timestamp:v4 usingQuickProbeTimeout:0];
  }
}

void sub_1E0C1722C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = *(v3 + 40);
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = sub_1E0C17358;
  handler[3] = &unk_1E86E6010;
  handler[4] = v3;
  dispatch_source_set_event_handler(v4, handler);
  dispatch_source_set_timer(*(*(a1 + 32) + 40), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
  dispatch_activate(*(*(a1 + 32) + 40));
  v5 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1E0C174D0;
  v6[3] = &unk_1E86E6498;
  v6[4] = v5;
  v7 = *(a1 + 40);
  [v5 __fetchSymptomsBrokenBackhaulStateWithEventID:7 completion:v6];

  objc_autoreleasePoolPop(v2);
}

void sub_1E0C17358(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  objc_sync_enter(v2);
  if (*(*(a1 + 32) + 24))
  {
    v3 = CWFGetOSLog();
    if (v3)
    {
      v4 = CWFGetOSLog();
    }

    else
    {
      v4 = MEMORY[0x1E69E9C10];
      v5 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      _os_log_send_and_compose_impl();
    }

    [*(*(a1 + 32) + 32) setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"was_submitted_by_timeout"];
    [*(*(a1 + 32) + 32) setObject:&unk_1F5BBB788 forKeyedSubscript:@"submission_timeout_interval"];
    [*(a1 + 32) __submitCoreAnalyticsEvent];
  }

  objc_sync_exit(v2);

  v6 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1E0C174D0(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = [v3 __mapSymptomsBrokenBackhaulState:?];
    v5 = [MEMORY[0x1E695DF00] date];
    [v3 __updateBrokenBackhaulState:v4 timestamp:v5 usingQuickProbeTimeout:0];
  }

  result = *(a1 + 40);
  if (result)
  {
    v7 = *(result + 16);

    return v7();
  }

  return result;
}

void sub_1E0C17670(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = *(a1 + 32);
    v3 = [v2 __mapSymptomsBrokenBackhaulState:?];
    v4 = [MEMORY[0x1E695DF00] date];
    [v2 __updateBrokenBackhaulState:v3 timestamp:v4 usingQuickProbeTimeout:0];
  }
}

void sub_1E0C17858(uint64_t a1, void *a2, void *a3, void *a4)
{
  v10 = a2;
  v7 = a3;
  v8 = a4;
  v9 = *(a1 + 40);
  if (v8)
  {
    if (v9)
    {
      (*(v9 + 16))(*(a1 + 40), v8, 0);
    }
  }

  else if (v9)
  {
    (*(v9 + 16))(v9, 0, [v10 length] != 0);
  }

  [*(a1 + 32) invalidateAndCancel];
}

void sub_1E0C17BFC(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = *(v6 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  v10 = *(a1 + 48);
  v16 = *(a1 + 64);
  block[2] = sub_1E0C17CEC;
  block[3] = &unk_1E86E6510;
  v17 = *(a1 + 80);
  v12 = v5;
  v13 = v6;
  v18 = a3;
  v8 = v10;
  v15 = v10;
  v14 = *(a1 + 40);
  v9 = v5;
  dispatch_async(v7, block);
}

void sub_1E0C17CEC(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = CWFGetOSLog();
  if (v3)
  {
    v4 = CWFGetOSLog();
  }

  else
  {
    v4 = MEMORY[0x1E69E9C10];
    v5 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(a1 + 72) + 1;
    v14 = *(a1 + 80);
    v15 = *(a1 + 88);
    v16 = *(a1 + 32);
    _os_log_send_and_compose_impl();
  }

  v6 = *(a1 + 40);
  objc_sync_enter(v6);
  v7 = *(*(a1 + 64) + 8);
  if (*(v7 + 24) != 1)
  {
    if (*(a1 + 96) == 1)
    {
      *(v7 + 24) = 1;
      v8 = *(a1 + 40);
      v9 = *(*(*(a1 + 64) + 8) + 24);
      v10 = [MEMORY[0x1E695DF00] date];
      [v8 __updateBrokenBackhaulState:v9 timestamp:v10 usingQuickProbeTimeout:*(a1 + 88)];

      v11 = *(a1 + 56);
      if (v11)
      {
        (*(v11 + 16))(v11, 0, *(*(*(a1 + 64) + 8) + 24));
      }
    }

    else
    {
      *(v7 + 24) = 3;
    }
  }

  objc_sync_exit(v6);

  dispatch_group_leave(*(a1 + 48));
  objc_autoreleasePoolPop(v2);
  v12 = *MEMORY[0x1E69E9840];
}

void sub_1E0C17F28(uint64_t a1)
{
  obj = *(a1 + 32);
  objc_sync_enter(obj);
  v2 = *(*(*(a1 + 48) + 8) + 24);
  if (v2 != 1)
  {
    v3 = *(a1 + 32);
    v4 = [MEMORY[0x1E695DF00] date];
    [v3 __updateBrokenBackhaulState:v2 timestamp:v4 usingQuickProbeTimeout:*(a1 + 56)];

    v5 = *(a1 + 40);
    if (v5)
    {
      (*(v5 + 16))(v5, 0, *(*(*(a1 + 48) + 8) + 24));
    }
  }

  objc_sync_exit(obj);
}

void sub_1E0C18458(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose(&a45, 8);
  _Block_object_dispose((v45 - 256), 8);
  _Block_object_dispose((v45 - 208), 8);
  _Unwind_Resume(a1);
}

void sub_1E0C184A8(uint64_t a1)
{
  v24[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  objc_sync_enter(v2);
  [*(a1 + 40) stop];
  if (*(*(*(a1 + 64) + 8) + 24) == 1)
  {
    v3 = MEMORY[0x1E696ABC0];
    v23 = *MEMORY[0x1E696A578];
    v24[0] = @"Ping timed out";
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    v5 = [v3 errorWithDomain:*MEMORY[0x1E696A798] code:60 userInfo:v4];
    v6 = *(*(a1 + 72) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }

  v8 = CWFGetOSLog();
  if (v8)
  {
    v9 = CWFGetOSLog();
  }

  else
  {
    v9 = MEMORY[0x1E69E9C10];
    v10 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [*(a1 + 48) redactedForWiFi];
    v12 = *(*(*(a1 + 72) + 8) + 40);
    [*(a1 + 40) percentLoss];
    _os_log_send_and_compose_impl();
  }

  if (*(*(*(a1 + 72) + 8) + 40))
  {
    v13 = CWFGetOSLog();
    if (v13)
    {
      v14 = CWFGetOSLog();
    }

    else
    {
      v14 = MEMORY[0x1E69E9C10];
      v18 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      _os_log_send_and_compose_impl();
    }

    v19 = *(a1 + 56);
    if (v19)
    {
      v20 = *(*(*(a1 + 72) + 8) + 40);
LABEL_25:
      (*(v19 + 16))(v19, v20, 0);
    }
  }

  else
  {
    [*(a1 + 40) percentLoss];
    if (v15 < 0x22)
    {
      [*(a1 + 32) __confirmBrokenBackhaulUsingTimeout:*(a1 + 80) count:*(a1 + 88) completion:*(a1 + 56)];
    }

    else
    {
      v16 = CWFGetOSLog();
      if (v16)
      {
        v17 = CWFGetOSLog();
      }

      else
      {
        v17 = MEMORY[0x1E69E9C10];
        v21 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        _os_log_send_and_compose_impl();
      }

      v19 = *(a1 + 56);
      if (v19)
      {
        v20 = 0;
        goto LABEL_25;
      }
    }
  }

  objc_sync_exit(v2);

  v22 = *MEMORY[0x1E69E9840];
}

void sub_1E0C188F4(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  objc_sync_enter(v7);
  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
    objc_storeStrong((*(*(a1 + 64) + 8) + 40), a3);
    v8 = 0;
    atomic_compare_exchange_strong((*(*(a1 + 72) + 8) + 24), &v8, 1u);
    if (!v8)
    {
      (*(*(a1 + 40) + 16))();
    }
  }

  objc_sync_exit(v7);
}

void sub_1E0C189F4(uint64_t a1)
{
  obj = *(a1 + 32);
  objc_sync_enter(obj);
  v2 = 0;
  *(*(*(a1 + 48) + 8) + 24) = 1;
  atomic_compare_exchange_strong((*(*(a1 + 56) + 8) + 24), &v2, 1u);
  if (!v2)
  {
    (*(*(a1 + 40) + 16))();
  }

  objc_sync_exit(obj);
}

uint64_t sub_1E0C18B50()
{
  v2 = *MEMORY[0x1E69E9840];
  if (!qword_1ECE81AE8)
  {
    qword_1ECE81AE8 = _sl_dlopen();
  }

  result = qword_1ECE81AE8;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1E0C18C20(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1ECE81AE8 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *sub_1E0C18C94(void *a1)
{
  v2 = sub_1E0C18B50();
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    a1 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *ManagedEventLibrary(void)"];
    [a1 handleFailureInFunction:v3 file:@"CWFBrokenBackhaulMonitor.m" lineNumber:36 description:{@"%s", 0}];

    __break(1u);
    free(v5);
  }

  result = dlsym(v3, "managed_event_fetch");
  *(*(a1[4] + 8) + 24) = result;
  off_1ECE81AA0 = *(*(a1[4] + 8) + 24);
  return result;
}

uint64_t sub_1E0C19968()
{
  qword_1ED7E3938 = objc_alloc_init(CWFRemoteInterfaceManager);

  return MEMORY[0x1EEE66BB8]();
}

void sub_1E0C19C3C(id *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  [a1[4] _startInterfaceDeactivationTimerIfNeeded];
  [a1[4] setRequestsInProgress:{objc_msgSend(a1[4], "requestsInProgress") + 1}];
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _activateInterface];
    v4 = [v3 interface];
    v5 = [v3 _defaultScanParameters];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_1E0C19E8C;
    v11[3] = &unk_1E86E65F0;
    v11[4] = v3;
    v12 = a1[5];
    [v4 performScanWithParameters:v5 reply:v11];
  }

  else
  {
    v6 = CWFGetOSLog();
    if (v6)
    {
      v7 = CWFGetOSLog();
    }

    else
    {
      v7 = MEMORY[0x1E69E9C10];
      v8 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136446978;
      v14 = "[CWFRemoteInterfaceManager scanAvailableNetworksWithCompletion:]_block_invoke";
      v15 = 2082;
      v16 = "CWFRemoteInterfaceManager.m";
      v17 = 1024;
      v18 = 91;
      v19 = 2080;
      v20 = "[CWFRemoteInterfaceManager scanAvailableNetworksWithCompletion:]_block_invoke";
      _os_log_send_and_compose_impl();
    }

    [0 setRequestsInProgress:{objc_msgSend(0, "requestsInProgress") - 1}];
    v9 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:76 userInfo:0];
    (*(a1[5] + 2))(a1[5], 0);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void sub_1E0C19E8C(uint64_t a1, void *a2, void *a3)
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = CWFGetOSLog();
  if (v7)
  {
    v8 = CWFGetOSLog();
  }

  else
  {
    v8 = MEMORY[0x1E69E9C10];
    v9 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v25 = 136447490;
    v26 = "[CWFRemoteInterfaceManager scanAvailableNetworksWithCompletion:]_block_invoke_2";
    v27 = 2082;
    v28 = "CWFRemoteInterfaceManager.m";
    v29 = 1024;
    v30 = 77;
    v31 = 2080;
    v32 = "[CWFRemoteInterfaceManager scanAvailableNetworksWithCompletion:]_block_invoke_2";
    v33 = 2112;
    v34 = v6;
    v35 = 2112;
    v36 = v5;
    _os_log_send_and_compose_impl();
  }

  v10 = objc_opt_new();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v11 = v6;
  v12 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v21;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [[CWFRemoteInterfaceNetworkInfo alloc] initWithScanResult:*(*(&v20 + 1) + 8 * i)];
        [v10 addObject:v16];
      }

      v13 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v13);
  }

  [*(a1 + 32) setRequestsInProgress:{objc_msgSend(*(a1 + 32), "requestsInProgress") - 1}];
  v17 = *(a1 + 40);
  v18 = [v10 copy];
  (*(v17 + 16))(v17, v18, v5);

  v19 = *MEMORY[0x1E69E9840];
}

void sub_1E0C1A33C(id *a1)
{
  v26[1] = *MEMORY[0x1E69E9840];
  [a1[4] _startInterfaceDeactivationTimerIfNeeded];
  [a1[4] setRequestsInProgress:{objc_msgSend(a1[4], "requestsInProgress") + 1}];
  WeakRetained = objc_loadWeakRetained(a1 + 8);
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _activateInterface];
    v4 = a1[5];
    v25 = @"SSID_STR";
    v26[0] = v4;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
    v6 = objc_alloc_init(CWFAssocParameters);
    [(CWFAssocParameters *)v6 setFindAndJoinNetwork:1];
    v7 = [[CWFScanResult alloc] initWithScanRecord:v5 includeProperties:0];
    [(CWFAssocParameters *)v6 setScanResult:v7];
    if ([a1[6] length])
    {
      v8 = a1[6];
    }

    else
    {
      v8 = 0;
    }

    [(CWFAssocParameters *)v6 setPassword:v8];
    [(CWFAssocParameters *)v6 setRememberUponSuccessfulAssociation:1];
    v11 = [v3 interface];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = sub_1E0C1A638;
    v14[3] = &unk_1E86E6640;
    v14[4] = v3;
    v15 = a1[5];
    v16 = a1[7];
    [v11 associateWithParameters:v6 reply:v14];
  }

  else
  {
    v9 = CWFGetOSLog();
    if (v9)
    {
      v10 = CWFGetOSLog();
    }

    else
    {
      v10 = MEMORY[0x1E69E9C10];
      v12 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 136446978;
      v18 = "[CWFRemoteInterfaceManager associateNetwork:password:completion:]_block_invoke";
      v19 = 2082;
      v20 = "CWFRemoteInterfaceManager.m";
      v21 = 1024;
      v22 = 141;
      v23 = 2080;
      v24 = "[CWFRemoteInterfaceManager associateNetwork:password:completion:]_block_invoke";
      _os_log_send_and_compose_impl();
    }

    [0 setRequestsInProgress:{objc_msgSend(0, "requestsInProgress") - 1}];
    v5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:76 userInfo:0];
    (*(a1[7] + 2))(a1[7], 0);
  }

  v13 = *MEMORY[0x1E69E9840];
}

void sub_1E0C1A638(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = CWFGetOSLog();
  if (v4)
  {
    v5 = CWFGetOSLog();
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    _os_log_send_and_compose_impl();
  }

  [*(a1 + 32) setRequestsInProgress:{objc_msgSend(*(a1 + 32), "requestsInProgress") - 1}];
  v7 = [CWFRemoteInterfaceNetworkInfo alloc];
  v8 = v7;
  if (v3)
  {
    v9 = [(CWFRemoteInterfaceNetworkInfo *)v7 initWithSSID:*(a1 + 40)];
  }

  else
  {
    v10 = [*(a1 + 32) interface];
    v9 = [(CWFRemoteInterfaceNetworkInfo *)v8 initWithInterface:v10];
  }

  (*(*(a1 + 48) + 16))(*(a1 + 48), v9);

  v11 = *MEMORY[0x1E69E9840];
}

void sub_1E0C1A9E4(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) _startInterfaceDeactivationTimerIfNeeded];
  [*(a1 + 32) setRequestsInProgress:{objc_msgSend(*(a1 + 32), "requestsInProgress") + 1}];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _activateInterface];
    v4 = [CWFRemoteInterfaceNetworkInfo alloc];
    v5 = [v3 interface];
    v6 = [(CWFRemoteInterfaceNetworkInfo *)v4 initWithInterface:v5];

    [v3 setRequestsInProgress:{objc_msgSend(v3, "requestsInProgress") - 1}];
    v7 = CWFGetOSLog();
    if (v7)
    {
      v8 = CWFGetOSLog();
    }

    else
    {
      v8 = MEMORY[0x1E69E9C10];
      v11 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      _os_log_send_and_compose_impl();
    }

    (*(*(a1 + 40) + 16))(*(a1 + 40), v6);
  }

  else
  {
    v9 = CWFGetOSLog();
    if (v9)
    {
      v10 = CWFGetOSLog();
    }

    else
    {
      v10 = MEMORY[0x1E69E9C10];
      v12 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      _os_log_send_and_compose_impl();
    }

    [0 setRequestsInProgress:{objc_msgSend(0, "requestsInProgress") - 1}];
    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:76 userInfo:0];
    (*(*(a1 + 40) + 16))(*(a1 + 40), 0);
  }

  v13 = *MEMORY[0x1E69E9840];
}

void sub_1E0C1AE40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_1E0C1AE64(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    if (![WeakRetained requestsInProgress])
    {
      [v3 _deactivateInterface];
      [v3 _invalidateInterfaceDeactivationTimer];
    }
  }

  return MEMORY[0x1EEE66BB8]();
}

void sub_1E0C1B2D4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _activateInterface];
}

void sub_1E0C1B528(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _deactivateInterface];
}

uint64_t sub_1E0C1C3CC(uint64_t a1)
{
  qword_1ED7E3940 = [[CWFSensingAutoDataCollector alloc] initWithHomes:*(a1 + 32)];

  return MEMORY[0x1EEE66BB8]();
}

void sub_1E0C1C8E4(uint64_t a1)
{
  v13 = [*(a1 + 32) _serviceObjects];
  v2 = [v13 objectForKeyedSubscript:*(a1 + 40)];
  if (v2)
  {
    v3 = v2;
    v4 = [*(a1 + 32) _serviceObjects];
    v5 = [v4 objectForKeyedSubscript:*(a1 + 40)];
    v6 = [v5 currentRoomIdentifier];
    v7 = [*(a1 + 32) _currentAccessory];
    v8 = [v7 room];
    v9 = [v8 uniqueIdentifier];
    v10 = [v6 isEqual:v9];

    if ((v10 & 1) == 0)
    {
      v11 = [*(a1 + 32) _serviceObjects];
      v12 = [v11 objectForKeyedSubscript:*(a1 + 40)];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = sub_1E0C1CA8C;
      v14[3] = &unk_1E86E6690;
      v15 = *(a1 + 32);
      [v12 deregisterForPrimaryServiceNotificationWith:v14];
    }
  }

  else
  {
  }
}

void sub_1E0C1CA8C(uint64_t a1)
{
  v2 = [*(a1 + 32) _serviceObjects];
  [v2 removeObjectForKey:*(a1 + 40)];
}

uint64_t sub_1E0C1CF3C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1E0C1CFB4;
  v3[3] = &unk_1E86E6690;
  v4 = *(a1 + 40);
  return [v1 registerForPrimaryServiceNotificationWith:v3];
}

void sub_1E0C1CFB4(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = CWFGetOSLog();
    if (v4)
    {
      v5 = CWFGetOSLog();
    }

    else
    {
      v5 = MEMORY[0x1E69E9C10];
      v6 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v10 = [*(a1 + 32) uniqueIdentifier];
      [v3 code];
      _os_log_send_and_compose_impl();
    }

    v7 = [*(a1 + 40) _serviceObjects];
    v8 = [*(a1 + 32) uniqueIdentifier];
    [v7 removeObjectForKey:v8];
  }

  v9 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1E0C1D688(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setTarget:v3];
  [v4 invoke];

  v5 = *(*(a1 + 40) + 16);

  return v5();
}

void sub_1E0C1D6EC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) invoke];

  objc_autoreleasePoolPop(v2);
}

void sub_1E0C1D730(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) invoke];

  objc_autoreleasePoolPop(v2);
}

void sub_1E0C1E3A8(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [MEMORY[0x1E696AAE0] blockOperationWithBlock:a4];
  [v7 setName:v6];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v19 = a1;
  v8 = [a1 operations];
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        v14 = [v13 name];
        v15 = v14;
        if (v6 && v14)
        {
          v16 = [v13 name];
          v17 = [v16 isEqual:v6];

          if (v17)
          {
            [v7 addDependency:v13];
          }
        }

        else
        {
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  [v19 addOperation:v7];
  v18 = *MEMORY[0x1E69E9840];
}

void sub_1E0C1EE84(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (*(*(a1 + 32) + 32))
  {
    Apple80211EventMonitoringHalt();
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0C1F1E0(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  if ((*(v3 + 48) & 1) == 0)
  {
    *(*(a1 + 32) + 48) = [v3 __setupEventMonitoring];
    v3 = *(a1 + 32);
  }

  v4 = *(v3 + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0C1F2B0;
  block[3] = &unk_1E86E6708;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v8 = v5;
  v9 = v6;
  v10 = *(a1 + 48);
  dispatch_async(v4, block);

  objc_autoreleasePoolPop(v2);
}

void sub_1E0C1F2B0(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (*(a1 + 32))
  {
    v3 = [*(*(a1 + 40) + 40) objectForKeyedSubscript:?];
    if (!v3)
    {
      v3 = [MEMORY[0x1E695DFA8] set];
      [*(*(a1 + 40) + 40) setObject:v3 forKeyedSubscript:*(a1 + 32)];
    }

    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(a1 + 48)];
    [v3 addObject:v4];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0C1F40C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (*(a1 + 32))
  {
    v3 = [*(*(a1 + 40) + 40) objectForKeyedSubscript:?];
    if (v3)
    {
      v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(a1 + 48)];
      [v3 removeObject:v4];
    }
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0C1F578(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(*(a1 + 32) + 40) objectForKeyedSubscript:*(a1 + 40)];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(a1 + 56)];
  *(*(*(a1 + 48) + 8) + 24) = [v3 containsObject:v4];

  objc_autoreleasePoolPop(v2);
}

void sub_1E0C26660(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  if ((*(v3 + 32) & 1) == 0)
  {
    *(v3 + 32) = 1;
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0C2671C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  if (*(v3 + 32) == 1)
  {
    *(v3 + 32) = 0;
  }

  objc_autoreleasePoolPop(v2);
}

uint64_t sub_1E0C2B334()
{
  qword_1ED7E3950 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F5BB9B20];

  return MEMORY[0x1EEE66BB8]();
}

void sub_1E0C2EBCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1E0C2EBE4(uint64_t a1, void *a2, _BYTE *a3)
{
  result = [a2 wasJoinedRecentlyInProximityOf:*(a1 + 32)];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

uint64_t sub_1E0C30AF8(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1ED7E3860 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *sub_1E0C30B6C(uint64_t a1)
{
  v2 = sub_1E0C30BBC();
  result = dlsym(v2, "kCNSCaptiveNetworkProperty");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ED7E3858 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1E0C30BBC()
{
  v0 = sub_1E0BCE0D8();
  if (v0)
  {
    return v0;
  }

  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *CaptiveNetworkLibrary(void)"];
  [v1 handleFailureInFunction:v3 file:@"CWFNetworkProfile.m" lineNumber:37 description:{@"%s", 0}];

  __break(1u);
  free(v4);
  return v1;
}

void *sub_1E0C30C6C(uint64_t a1)
{
  v2 = sub_1E0C30BBC();
  result = dlsym(v2, "kCNSNetworkWasCaptiveProperty");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ED7E3840 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1E0C30CBC(uint64_t a1)
{
  v2 = sub_1E0C30BBC();
  result = dlsym(v2, "kCNSCaptiveBypassProperty");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ED7E3820 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1E0C30D0C(uint64_t a1)
{
  v2 = sub_1E0C30BBC();
  result = dlsym(v2, "kCNSCaptiveNetworkWebSheetLoginDateProperty");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ED7E3848 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1E0C31C84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E0C32934(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 192));
  _Unwind_Resume(a1);
}

void sub_1E0C32968(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained[23];
  [WeakRetained[20] processIdentifier];
  [WeakRetained[20] effectiveUserIdentifier];
  [WeakRetained[20] effectiveGroupIdentifier];
  v3 = CWFGetOSLog();
  if (v3)
  {
    v4 = CWFGetOSLog();
  }

  else
  {
    v4 = MEMORY[0x1E69E9C10];
    v5 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = [WeakRetained UUID];
    v7 = [v6 UUIDString];
    v9 = [v7 substringToIndex:5];
    _os_log_send_and_compose_impl();
  }

  v8 = *MEMORY[0x1E69E9840];
}

void sub_1E0C32B0C(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained[23];
  v3 = [WeakRetained[20] processIdentifier];
  v4 = [WeakRetained[20] effectiveUserIdentifier];
  v5 = [WeakRetained[20] effectiveGroupIdentifier];
  v6 = CWFGetOSLog();
  if (v6)
  {
    v7 = CWFGetOSLog();
  }

  else
  {
    v7 = MEMORY[0x1E69E9C10];
    v8 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [WeakRetained UUID];
    v10 = [v9 UUIDString];
    v11 = [v10 substringToIndex:5];
    v18 = 138544386;
    v19 = v2;
    v20 = 1024;
    v21 = v3;
    v22 = 1024;
    v23 = v4;
    v24 = 1024;
    v25 = v5;
    v26 = 2114;
    v27 = v11;
    LODWORD(v17) = 40;
    v16 = &v18;
    _os_log_send_and_compose_impl();
  }

  [WeakRetained __didInvalidate];
  v12 = [WeakRetained invalidationHandler];

  if (v12)
  {
    v13 = [WeakRetained invalidationHandler];
    v13[2](v13, v14);
  }

  [WeakRetained setInvalidationHandler:{0, v16, v17}];

  v15 = *MEMORY[0x1E69E9840];
}

void sub_1E0C32E84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E0C32E9C(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1[4] + 104) objectForKeyedSubscript:a1[5]];
  v4 = *(a1[6] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  if (!*(*(a1[6] + 8) + 40))
  {
    v6 = [*(a1[4] + 160) valueForEntitlement:a1[5]];
    v7 = *(a1[6] + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    v9 = *(*(a1[6] + 8) + 40);
    v10 = v9;
    if (!v9)
    {
      v10 = [MEMORY[0x1E695DFB0] null];
    }

    [*(a1[4] + 104) setObject:v10 forKeyedSubscript:a1[5]];
    if (!v9)
    {
    }
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0C32FF0(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v1 = *(a1 + 32);
  v2 = *(*(a1 + 32) + 16);
  v3[2] = sub_1E0C33068;
  v3[3] = &unk_1E86E6420;
  v4 = v1;
  dispatch_async(v2, v3);
}

void sub_1E0C33068(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(*(a1 + 32) + 64) removeObject:*(a1 + 40)];

  objc_autoreleasePoolPop(v2);
}

void sub_1E0C330B0(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) delegate];
  [v3 XPCConnection:*(a1 + 32) canceledXPCRequestsWithUUID:*(a1 + 40)];

  objc_autoreleasePoolPop(v2);
}

void sub_1E0C33548(uint64_t a1)
{
  v104 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  if (([*(*(a1 + 32) + 72) containsObject:*(a1 + 40)] & 1) != 0 || objc_msgSend(*(*(a1 + 32) + 72), "containsObject:", *(a1 + 48)))
  {
    v3 = [*(a1 + 32) processState];
    v4 = [v3 taskState];

    if (v4 == 3)
    {
      if ([*(a1 + 32) __shouldCoalesceEventTypeWhileSuspended:{objc_msgSend(*(a1 + 56), "type")}])
      {
        [*(a1 + 32) __coalesceAndCacheEvent:*(a1 + 56)];
        v5 = CWFGetOSLog();
        if (v5)
        {
          v6 = CWFGetOSLog();
        }

        else
        {
          v6 = MEMORY[0x1E69E9C10];
          v32 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          v33 = sub_1E0BC9038([*(a1 + 56) type]);
          v65 = [*(a1 + 56) UUID];
          v63 = [v65 UUIDString];
          v34 = [v63 substringToIndex:5];
          v35 = [*(*(a1 + 32) + 160) processIdentifier];
          v36 = *(a1 + 32);
          v38 = v36[23];
          v37 = v36[24];
          v39 = v36[25];
          v40 = sub_1E0BC1A5C(v36[21]);
          v41 = [*(a1 + 56) acknowledgementTimeout];
          *buf = 138545154;
          v89 = v33;
          v90 = 2114;
          v91 = v34;
          v92 = 1024;
          v93 = v35;
          v94 = 2114;
          v95 = v38;
          v96 = 2114;
          v97 = v37;
          v98 = 2114;
          v99 = v39;
          v100 = 2114;
          v101 = v40;
          v102 = 2048;
          v103 = v41;
          _os_log_send_and_compose_impl();
        }

        v42 = *(a1 + 64);
        if (v42)
        {
          v43 = *(*(a1 + 32) + 48);
          v85[0] = MEMORY[0x1E69E9820];
          v85[1] = 3221225472;
          v85[2] = sub_1E0C33D70;
          v85[3] = &unk_1E86E69B0;
          v44 = v42;
          v45 = *(a1 + 72);
          v86 = v44;
          v87 = v45;
          dispatch_async(v43, v85);
          v11 = v86;
          goto LABEL_36;
        }

        v46 = MEMORY[0x1E69E9C10];
        v29 = *(a1 + 72);
        if (v29 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(MEMORY[0x1E69E9C10]))
        {
          *buf = 0;
          v30 = MEMORY[0x1E69E9C10];
          v31 = "No Reply OALESCED+CACHED EVENT FOR SUSPENDED PROCESS";
LABEL_34:
          _os_signpost_emit_with_name_impl(&dword_1E0BBF000, v30, OS_SIGNPOST_INTERVAL_END, v29, "sendXPCEvent", v31, buf, 2u);
          goto LABEL_35;
        }

        goto LABEL_35;
      }

      if ([*(a1 + 32) __shouldDropEventTypeWhileSuspended:{objc_msgSend(*(a1 + 56), "type")}])
      {
        v12 = CWFGetOSLog();
        if (v12)
        {
          v13 = CWFGetOSLog();
        }

        else
        {
          v13 = MEMORY[0x1E69E9C10];
          v47 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          v48 = sub_1E0BC9038([*(a1 + 56) type]);
          v66 = [*(a1 + 56) UUID];
          v64 = [v66 UUIDString];
          v49 = [v64 substringToIndex:5];
          v50 = [*(*(a1 + 32) + 160) processIdentifier];
          v51 = *(a1 + 32);
          v52 = v51[23];
          v53 = v51[24];
          v54 = v51[25];
          v55 = sub_1E0BC1A5C(v51[21]);
          v56 = [*(a1 + 56) acknowledgementTimeout];
          *buf = 138545154;
          v89 = v48;
          v90 = 2114;
          v91 = v49;
          v92 = 1024;
          v93 = v50;
          v94 = 2114;
          v95 = v52;
          v96 = 2114;
          v97 = v53;
          v98 = 2114;
          v99 = v54;
          v100 = 2114;
          v101 = v55;
          v102 = 2048;
          v103 = v56;
          _os_log_send_and_compose_impl();
        }

        v57 = *(a1 + 64);
        if (v57)
        {
          v58 = *(*(a1 + 32) + 48);
          v82[0] = MEMORY[0x1E69E9820];
          v82[1] = 3221225472;
          v82[2] = sub_1E0C33E28;
          v82[3] = &unk_1E86E69B0;
          v59 = v57;
          v60 = *(a1 + 72);
          v83 = v59;
          v84 = v60;
          dispatch_async(v58, v82);
          v11 = v83;
          goto LABEL_36;
        }

        v61 = MEMORY[0x1E69E9C10];
        v29 = *(a1 + 72);
        if (v29 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(MEMORY[0x1E69E9C10]))
        {
          *buf = 0;
          v30 = MEMORY[0x1E69E9C10];
          v31 = "No Reply DROPPING EVENT FOR SUSPENDED PROCESS";
          goto LABEL_34;
        }

LABEL_35:
        v11 = MEMORY[0x1E69E9C10];
        goto LABEL_36;
      }
    }

    v14 = [*(a1 + 56) acknowledgementTimeout];
    v15 = *(a1 + 32);
    if (v14)
    {
      [*(v15 + 80) addObject:*(a1 + 56)];
      [*(a1 + 32) __updateXPCTransactionCount];
      v16 = *(a1 + 32);
      v17 = *(v16 + 40);
      v78[0] = MEMORY[0x1E69E9820];
      v78[1] = 3221225472;
      v78[2] = sub_1E0C33EE0;
      v78[3] = &unk_1E86E69D8;
      v78[4] = v16;
      v79 = *(a1 + 56);
      v18 = *(a1 + 64);
      v19 = *(a1 + 72);
      v80 = v18;
      v81 = v19;
      dispatch_async(v17, v78);
      v20 = dispatch_time(0, [*(a1 + 56) acknowledgementTimeout]);
      v21 = *(a1 + 32);
      v22 = *(v21 + 16);
      v74[0] = MEMORY[0x1E69E9820];
      v74[1] = 3221225472;
      v74[2] = sub_1E0C3454C;
      v74[3] = &unk_1E86E69D8;
      v74[4] = v21;
      v75 = *(a1 + 56);
      v23 = *(a1 + 64);
      v24 = *(a1 + 72);
      v76 = v23;
      v77 = v24;
      dispatch_after(v20, v22, v74);

      v11 = v79;
    }

    else
    {
      v25 = *(v15 + 40);
      v70[0] = MEMORY[0x1E69E9820];
      v70[1] = 3221225472;
      v70[2] = sub_1E0C34880;
      v70[3] = &unk_1E86E69D8;
      v70[4] = v15;
      v71 = *(a1 + 56);
      v26 = *(a1 + 64);
      v27 = *(a1 + 72);
      v72 = v26;
      v73 = v27;
      dispatch_async(v25, v70);

      v11 = v71;
    }
  }

  else
  {
    v7 = *(a1 + 64);
    if (!v7)
    {
      v28 = MEMORY[0x1E69E9C10];
      v29 = *(a1 + 72);
      if (v29 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(MEMORY[0x1E69E9C10]))
      {
        goto LABEL_35;
      }

      *buf = 0;
      v30 = MEMORY[0x1E69E9C10];
      v31 = "No reply";
      goto LABEL_34;
    }

    v8 = *(*(a1 + 32) + 48);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E0C34B9C;
    block[3] = &unk_1E86E69B0;
    v9 = v7;
    v10 = *(a1 + 72);
    v68 = v9;
    v69 = v10;
    dispatch_async(v8, block);
    v11 = v68;
  }

LABEL_36:

  objc_autoreleasePoolPop(v2);
  v62 = *MEMORY[0x1E69E9840];
}

void sub_1E0C33D70(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();
  v3 = MEMORY[0x1E69E9C10];
  v4 = *(a1 + 40);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(MEMORY[0x1E69E9C10]))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_1E0BBF000, MEMORY[0x1E69E9C10], OS_SIGNPOST_INTERVAL_END, v4, "sendXPCEvent", "COALESCED+CACHED EVENT FOR SUSPENDED PROCESS", v5, 2u);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0C33E28(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();
  v3 = MEMORY[0x1E69E9C10];
  v4 = *(a1 + 40);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(MEMORY[0x1E69E9C10]))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_1E0BBF000, MEMORY[0x1E69E9C10], OS_SIGNPOST_INTERVAL_END, v4, "sendXPCEvent", "DROPPING EVENT FOR SUSPENDED PROCESS", v5, 2u);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0C33EE0(uint64_t a1)
{
  v45 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) remoteObjectProxy];
  v4 = *(a1 + 40);
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = sub_1E0C34164;
  v24[3] = &unk_1E86E69D8;
  v5 = v4;
  v6 = *(a1 + 32);
  v25 = v5;
  v26 = v6;
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v27 = v7;
  v28 = v8;
  [v3 receivedAcknowledgedXPCEvent:v5 reply:v24];

  v9 = CWFGetOSLog();
  if (v9)
  {
    v10 = CWFGetOSLog();
  }

  else
  {
    v10 = MEMORY[0x1E69E9C10];
    v11 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v22 = sub_1E0BC9038([*(a1 + 40) type]);
    v23 = [*(a1 + 40) UUID];
    v12 = [v23 UUIDString];
    v13 = [v12 substringToIndex:5];
    v14 = [*(*(a1 + 32) + 160) processIdentifier];
    v15 = *(a1 + 32);
    v17 = v15[23];
    v16 = v15[24];
    v18 = v15[25];
    v19 = sub_1E0BC1A5C(v15[21]);
    v20 = [*(a1 + 40) acknowledgementTimeout];
    v29 = 138545154;
    v30 = v22;
    v31 = 2114;
    v32 = v13;
    v33 = 1024;
    v34 = v14;
    v35 = 2114;
    v36 = v17;
    v37 = 2114;
    v38 = v16;
    v39 = 2114;
    v40 = v18;
    v41 = 2114;
    v42 = v19;
    v43 = 2048;
    v44 = v20;
    _os_log_send_and_compose_impl();
  }

  objc_autoreleasePoolPop(v2);
  v21 = *MEMORY[0x1E69E9840];
}

void sub_1E0C34164(uint64_t a1)
{
  v42 = *MEMORY[0x1E69E9840];
  v2 = CWFGetOSLog();
  if (v2)
  {
    v3 = CWFGetOSLog();
  }

  else
  {
    v3 = MEMORY[0x1E69E9C10];
    v4 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v5 = sub_1E0BC9038([*(a1 + 32) type]);
    v21 = [*(a1 + 32) UUID];
    v6 = [v21 UUIDString];
    v7 = [v6 substringToIndex:5];
    v8 = [*(*(a1 + 40) + 160) processIdentifier];
    v9 = *(a1 + 40);
    v10 = v9[23];
    v11 = v9[24];
    v12 = v9[25];
    v13 = sub_1E0BC1A5C(v9[21]);
    v14 = [*(a1 + 32) acknowledgementTimeout];
    v26 = 138545154;
    v27 = v5;
    v28 = 2114;
    v29 = v7;
    v30 = 1024;
    v31 = v8;
    v32 = 2114;
    v33 = v10;
    v34 = 2114;
    v35 = v11;
    v36 = 2114;
    v37 = v12;
    v38 = 2114;
    v39 = v13;
    v40 = 2048;
    v41 = v14;
    _os_log_send_and_compose_impl();
  }

  v15 = *(a1 + 32);
  v16 = *(a1 + 40);
  v17 = *(v16 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0C343BC;
  block[3] = &unk_1E86E69D8;
  block[4] = v16;
  v23 = v15;
  v18 = *(a1 + 48);
  v19 = *(a1 + 56);
  v24 = v18;
  v25 = v19;
  dispatch_async(v17, block);

  v20 = *MEMORY[0x1E69E9840];
}

void sub_1E0C343BC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if ([*(*(a1 + 32) + 80) containsObject:*(a1 + 40)])
  {
    [*(*(a1 + 32) + 80) removeObject:*(a1 + 40)];
    [*(a1 + 32) __updateXPCTransactionCount];
    v3 = *(*(a1 + 32) + 48);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_1E0C34490;
    v6[3] = &unk_1E86E69B0;
    v4 = *(a1 + 48);
    v5 = *(a1 + 56);
    v7 = v4;
    v8 = v5;
    dispatch_async(v3, v6);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0C34490(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))();
  }

  v4 = MEMORY[0x1E69E9C10];
  v5 = *(a1 + 40);
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(MEMORY[0x1E69E9C10]))
  {
    *v6 = 0;
    _os_signpost_emit_with_name_impl(&dword_1E0BBF000, MEMORY[0x1E69E9C10], OS_SIGNPOST_INTERVAL_END, v5, "sendXPCEvent", "RECV ACK", v6, 2u);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0C3454C(uint64_t a1)
{
  v40 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  if ([*(*(a1 + 32) + 80) containsObject:*(a1 + 40)])
  {
    v3 = CWFGetOSLog();
    if (v3)
    {
      v4 = CWFGetOSLog();
    }

    else
    {
      v4 = MEMORY[0x1E69E9C10];
      v5 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = sub_1E0BC9038([*(a1 + 40) type]);
      v20 = [*(a1 + 40) UUID];
      v19 = [v20 UUIDString];
      v7 = [v19 substringToIndex:5];
      v8 = [*(*(a1 + 32) + 160) processIdentifier];
      v9 = *(a1 + 32);
      v11 = v9[23];
      v10 = v9[24];
      v12 = v9[25];
      v13 = sub_1E0BC1A5C(v9[21]);
      v14 = [*(a1 + 40) acknowledgementTimeout];
      v24 = 138545154;
      v25 = v6;
      v26 = 2114;
      v27 = v7;
      v28 = 1024;
      v29 = v8;
      v30 = 2114;
      v31 = v11;
      v32 = 2114;
      v33 = v10;
      v34 = 2114;
      v35 = v12;
      v36 = 2114;
      v37 = v13;
      v38 = 2048;
      v39 = v14;
      _os_log_send_and_compose_impl();
    }

    [*(*(a1 + 32) + 80) removeObject:*(a1 + 40)];
    [*(a1 + 32) __updateXPCTransactionCount];
    v15 = *(*(a1 + 32) + 48);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E0C347C8;
    block[3] = &unk_1E86E69B0;
    v16 = *(a1 + 48);
    v17 = *(a1 + 56);
    v22 = v16;
    v23 = v17;
    dispatch_async(v15, block);
  }

  objc_autoreleasePoolPop(v2);
  v18 = *MEMORY[0x1E69E9840];
}

void sub_1E0C347C8(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();
  v3 = MEMORY[0x1E69E9C10];
  v4 = *(a1 + 40);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(MEMORY[0x1E69E9C10]))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_1E0BBF000, MEMORY[0x1E69E9C10], OS_SIGNPOST_INTERVAL_END, v4, "sendXPCEvent", "ACK TIMEOUT", v5, 2u);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0C34880(uint64_t a1)
{
  v37 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) remoteObjectProxy];
  [v3 receivedXPCEvent:*(a1 + 40)];

  v4 = CWFGetOSLog();
  if (v4)
  {
    v5 = CWFGetOSLog();
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = sub_1E0BC9038([*(a1 + 40) type]);
    v19 = [*(a1 + 40) UUID];
    v18 = [v19 UUIDString];
    v8 = [v18 substringToIndex:5];
    v9 = [*(*(a1 + 32) + 160) processIdentifier];
    v10 = *(a1 + 32);
    v12 = v10[23];
    v11 = v10[24];
    v13 = v10[25];
    sub_1E0BC1A5C(v10[21]);
    v23 = 138544898;
    v24 = v7;
    v25 = 2114;
    v26 = v8;
    v27 = 1024;
    v28 = v9;
    v29 = 2114;
    v30 = v12;
    v31 = 2114;
    v32 = v11;
    v33 = 2114;
    v34 = v13;
    v36 = v35 = 2114;
    _os_log_send_and_compose_impl();
  }

  v14 = *(*(a1 + 32) + 48);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0C34AE0;
  block[3] = &unk_1E86E69B0;
  v15 = *(a1 + 48);
  v16 = *(a1 + 56);
  v21 = v15;
  v22 = v16;
  dispatch_async(v14, block);

  objc_autoreleasePoolPop(v2);
  v17 = *MEMORY[0x1E69E9840];
}

void sub_1E0C34AE0(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))();
  }

  v4 = MEMORY[0x1E69E9C10];
  v5 = *(a1 + 40);
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(MEMORY[0x1E69E9C10]))
  {
    *v6 = 0;
    _os_signpost_emit_with_name_impl(&dword_1E0BBF000, MEMORY[0x1E69E9C10], OS_SIGNPOST_INTERVAL_END, v5, "sendXPCEvent", "SENT EVENT", v6, 2u);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0C34B9C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();
  v3 = MEMORY[0x1E69E9C10];
  v4 = *(a1 + 40);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(MEMORY[0x1E69E9C10]))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_1E0BBF000, MEMORY[0x1E69E9C10], OS_SIGNPOST_INTERVAL_END, v4, "sendXPCEvent", "", v5, 2u);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0C34D78(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if ([*(*(a1 + 32) + 72) count] || objc_msgSend(*(a1 + 32), "serviceType") == 9)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0C350E0(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [*(*(a1 + 32) + 88) allValues];
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
        v9 = *(a1 + 32);
        v10 = *(v9 + 40);
        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 3221225472;
        v12[2] = sub_1E0C35260;
        v12[3] = &unk_1E86E6420;
        v12[4] = v8;
        v12[5] = v9;
        dispatch_async(v10, v12);
        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  [*(*(a1 + 32) + 88) removeAllObjects];
  objc_autoreleasePoolPop(v2);
  v11 = *MEMORY[0x1E69E9840];
}

void sub_1E0C35260(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) acknowledgementTimeout];
  v4 = [*(a1 + 40) remoteObjectProxy];
  v5 = v4;
  v6 = *(a1 + 32);
  if (v3)
  {
    [v4 receivedAcknowledgedXPCEvent:v6 reply:0];
  }

  else
  {
    [v4 receivedXPCEvent:v6];
  }

  v7 = CWFGetOSLog();
  if (v7)
  {
    v8 = CWFGetOSLog();
  }

  else
  {
    v8 = MEMORY[0x1E69E9C10];
    v9 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v10 = sub_1E0BC9038([*(a1 + 32) type]);
    v19 = [*(a1 + 32) UUID];
    v11 = [v19 UUIDString];
    v12 = [v11 substringToIndex:5];
    [*(*(a1 + 40) + 160) processIdentifier];
    v13 = *(a1 + 40);
    v14 = v13[23];
    v15 = v13[24];
    v16 = v2;
    v17 = v13[25];
    sub_1E0BC1A5C(v13[21]);
    v20 = v2 = v16;
    _os_log_send_and_compose_impl();
  }

  objc_autoreleasePoolPop(v2);
  v18 = *MEMORY[0x1E69E9840];
}

id sub_1E0C35858()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_1ECE81AD0;
  v7 = qword_1ECE81AD0;
  if (!qword_1ECE81AD0)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = sub_1E0C4B8BC;
    v3[3] = &unk_1E86E5600;
    v3[4] = &v4;
    sub_1E0C4B8BC(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1E0C35920(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E0C36204(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = [a3 objectForKeyedSubscript:@"Result"];
  (*(v6 + 16))(v6, v5, v7);

  v8 = os_signpost_enabled(MEMORY[0x1E69E9C10]);
  if (v5)
  {
    if (v8)
    {
      v9 = [v5 localizedDescription];
      v11 = 138412290;
      v12 = v9;
      _os_signpost_emit_with_name_impl(&dword_1E0BBF000, MEMORY[0x1E69E9C10], OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "XPCGetRequestWithType", "%@", &v11, 0xCu);
    }
  }

  else if (v8)
  {
    LOWORD(v11) = 0;
    _os_signpost_emit_with_name_impl(&dword_1E0BBF000, MEMORY[0x1E69E9C10], OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "XPCGetRequestWithType", "", &v11, 2u);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void sub_1E0C37D38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, id a60)
{
  objc_destroyWeak(&a60);
  objc_destroyWeak((v60 - 224));
  _Unwind_Resume(a1);
}

void sub_1E0C37D60(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  v10 = *(v9 + 16);
  v11 = *(a1 + 104);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1E0C37EE4;
  v16[3] = &unk_1E86E6AA0;
  v16[4] = v9;
  v17 = v8;
  v18 = v5;
  v19 = *(a1 + 48);
  v25 = *(a1 + 88);
  v20 = *(a1 + 56);
  v26 = *(a1 + 104);
  v24 = *(a1 + 72);
  v21 = v6;
  v22 = *(a1 + 64);
  v23 = WeakRetained;
  v12 = WeakRetained;
  v13 = v6;
  v14 = v5;
  v15 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v11, 0, v16);
  dispatch_async(v10, v15);
}

void sub_1E0C37EE4(uint64_t a1)
{
  v87 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = [*(*(a1 + 32) + 56) allKeys];
  v4 = [v3 containsObject:*(a1 + 40)];

  if (v4)
  {
    [*(*(a1 + 32) + 56) setObject:0 forKeyedSubscript:*(a1 + 40)];
    [*(a1 + 32) __updateXPCTransactionCount];
    v5 = &unk_1E0D81000;
    if ([*(a1 + 48) code] == 60 && (objc_msgSend(*(a1 + 48), "domain"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isEqualToString:", *MEMORY[0x1E696A798]), v6, v7))
    {
      v8 = CWFGetOSLog();
      if (v8)
      {
        v9 = CWFGetOSLog();
      }

      else
      {
        v9 = MEMORY[0x1E69E9C10];
        v14 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v15 = @"SUBREQ";
        if (!*(a1 + 56))
        {
          v15 = @"REQ";
        }

        v50 = v15;
        v16 = sub_1E0BC2FCC(*(a1 + 104));
        v17 = (clock_gettime_nsec_np(_CLOCK_UPTIME_RAW) - *(a1 + 112)) / 1000000000.0;
        v18 = [*(*(a1 + 32) + 160) processIdentifier];
        v19 = *(a1 + 32);
        v44 = v19[23];
        v46 = v19[24];
        v48 = v19[25];
        v20 = sub_1E0BC1A5C(v19[21]);
        v21 = [*(a1 + 64) interfaceName];
        v22 = [*(a1 + 40) UUIDString];
        [v22 substringToIndex:5];
        v67 = 138545666;
        v68 = v50;
        v69 = 2114;
        v70 = v16;
        v71 = 2048;
        v72 = v17;
        v73 = 1024;
        v74 = v18;
        v75 = 2114;
        v76 = v44;
        v77 = 2114;
        v78 = v46;
        v79 = 2114;
        v80 = v48;
        v81 = 2114;
        v82 = v20;
        v83 = 2114;
        v84 = v21;
        v86 = v85 = 2114;
        _os_log_send_and_compose_impl();

        v5 = &unk_1E0D81000;
      }

      v23 = [*(a1 + 32) delegate];
      if (v23)
      {
        v24 = *(*(a1 + 32) + 24);
        v25 = *(a1 + 120);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = v5[190];
        block[2] = sub_1E0C38580;
        block[3] = &unk_1E86E6060;
        v13 = v23;
        v26 = *(a1 + 32);
        v27 = *(a1 + 40);
        v64 = v13;
        v65 = v26;
        v66 = v27;
        v28 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v25, 0, block);
        dispatch_async(v24, v28);
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      if ([*(a1 + 48) code] != 89)
      {
        goto LABEL_24;
      }

      v10 = [*(a1 + 48) domain];
      v11 = [v10 isEqualToString:*MEMORY[0x1E696A798]];

      if (!v11)
      {
        goto LABEL_24;
      }

      v12 = CWFGetOSLog();
      if (v12)
      {
        v13 = CWFGetOSLog();
      }

      else
      {
        v13 = MEMORY[0x1E69E9C10];
        v29 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v30 = @"SUBREQ";
        if (!*(a1 + 56))
        {
          v30 = @"REQ";
        }

        v51 = v30;
        v31 = sub_1E0BC2FCC(*(a1 + 104));
        v32 = (clock_gettime_nsec_np(_CLOCK_UPTIME_RAW) - *(a1 + 112)) / 1000000000.0;
        v33 = [*(*(a1 + 32) + 160) processIdentifier];
        v34 = *(a1 + 32);
        v45 = v34[23];
        v47 = v34[24];
        v49 = v34[25];
        v35 = sub_1E0BC1A5C(v34[21]);
        v36 = [*(a1 + 64) interfaceName];
        v37 = [*(a1 + 40) UUIDString];
        [v37 substringToIndex:5];
        v67 = 138545666;
        v68 = v51;
        v69 = 2114;
        v70 = v31;
        v71 = 2048;
        v72 = v32;
        v73 = 1024;
        v74 = v33;
        v75 = 2114;
        v76 = v45;
        v77 = 2114;
        v78 = v47;
        v79 = 2114;
        v80 = v49;
        v81 = 2114;
        v82 = v35;
        v83 = 2114;
        v84 = v36;
        v86 = v85 = 2114;
        _os_log_send_and_compose_impl();

        v5 = &unk_1E0D81000;
      }
    }

LABEL_24:
    v38 = *(*(a1 + 32) + 32);
    v39 = *(a1 + 120);
    v52[0] = MEMORY[0x1E69E9820];
    v52[1] = v5[190];
    v52[2] = sub_1E0C385C8;
    v52[3] = &unk_1E86E6A78;
    v61 = *(a1 + 96);
    v53 = *(a1 + 48);
    v54 = *(a1 + 72);
    v55 = *(a1 + 80);
    v40 = *(a1 + 56);
    v62 = *(a1 + 104);
    v41 = *(a1 + 32);
    v56 = v40;
    v57 = v41;
    v58 = *(a1 + 64);
    v59 = *(a1 + 40);
    v60 = *(a1 + 88);
    v42 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v39, 0, v52);
    dispatch_async(v38, v42);
  }

  objc_autoreleasePoolPop(v2);
  v43 = *MEMORY[0x1E69E9840];
}

void sub_1E0C38580(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) XPCConnection:*(a1 + 40) canceledXPCRequestsWithUUID:*(a1 + 48)];

  objc_autoreleasePoolPop(v2);
}

void sub_1E0C385C8(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 96);
  if (v3)
  {
    (*(v3 + 16))(v3, *(a1 + 32), *(a1 + 40));
  }

  v4 = CWFGetOSLog();
  if (v4)
  {
    v5 = CWFGetOSLog();
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, (16 * ([*(a1 + 48) code] != 0))))
  {
    *(a1 + 56);
    v21 = v2;
    v23 = sub_1E0BC2FCC(*(a1 + 104));
    v7 = (clock_gettime_nsec_np(_CLOCK_UPTIME_RAW) - *(a1 + 112)) / 1000000000.0;
    [*(*(a1 + 64) + 160) processIdentifier];
    v8 = *(a1 + 64);
    v18 = v8[23];
    v19 = v8[24];
    v20 = v8[25];
    v22 = sub_1E0BC1A5C(v8[21]);
    qos_class_self();
    v9 = [*(a1 + 72) interfaceName];
    v10 = [*(a1 + 80) UUIDString];
    v11 = [v10 substringToIndex:5];
    [*(a1 + 32) code];
    v12 = [*(a1 + 64) __isUserPrivacySensitiveRequestType:*(a1 + 104)];
    if (v12)
    {
      v13 = @"<private>";
    }

    else
    {
      v17 = [*(a1 + 40) description];
      v13 = [v17 redactedForWiFi];
    }

    _os_log_send_and_compose_impl();
    if ((v12 & 1) == 0)
    {
    }

    v2 = v21;
  }

  v14 = [*(a1 + 64) delegate];
  v15 = v14;
  if (v14)
  {
    [v14 XPCConnection:*(a1 + 64) completedXPCRequest:*(a1 + 88)];
  }

  objc_autoreleasePoolPop(v2);
  v16 = *MEMORY[0x1E69E9840];
}

void sub_1E0C388F4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (!*(a1 + 32))
  {
    if (([*(a1 + 40) __allowAlreadyPendingRequest:*(a1 + 48)] & 1) == 0 && objc_msgSend(*(a1 + 40), "__hasPendingRequestWithType:", *(a1 + 72)))
    {
      v3 = *(*(a1 + 40) + 32);
      v4 = *(a1 + 80);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_1E0C38BBC;
      block[3] = &unk_1E86E6AF0;
      v36 = *(a1 + 64);
      v5 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v4, 0, block);
      dispatch_async(v3, v5);

      v6 = v36;
LABEL_11:

      goto LABEL_12;
    }

    if (!*(a1 + 32))
    {
      goto LABEL_7;
    }
  }

  v7 = [*(*(a1 + 40) + 56) allKeys];
  v8 = [v7 containsObject:*(a1 + 32)];

  if (v8)
  {
LABEL_7:
    v9 = *(a1 + 48);
    v10 = *(*(a1 + 40) + 56);
    v11 = [v9 UUID];
    [v10 setObject:v9 forKeyedSubscript:v11];

    [*(a1 + 40) __updateXPCTransactionCount];
    v12 = [*(a1 + 40) delegate];
    v6 = v12;
    v13 = *(a1 + 40);
    v14 = *(a1 + 80);
    if (v12)
    {
      v15 = *(v13 + 24);
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = sub_1E0C38C60;
      v27[3] = &unk_1E86E6B68;
      v33 = *(a1 + 84);
      v16 = v28;
      v17 = v12;
      v18 = *(a1 + 40);
      v19 = *(a1 + 48);
      v28[0] = v17;
      v28[1] = v18;
      v29 = v19;
      v32 = *(a1 + 80);
      v34 = *(a1 + 85);
      v20 = *(a1 + 56);
      v21 = *(a1 + 72);
      v30 = v20;
      v31 = v21;
      v22 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v14, 0, v27);
      dispatch_async(v15, v22);
    }

    else
    {
      v23 = *(v13 + 32);
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = sub_1E0C390D8;
      v25[3] = &unk_1E86E6010;
      v16 = &v26;
      v26 = *(a1 + 48);
      v24 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v14, 0, v25);
      dispatch_async(v23, v24);
    }

    goto LABEL_11;
  }

LABEL_12:
  objc_autoreleasePoolPop(v2);
}

void sub_1E0C38BBC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *MEMORY[0x1E696A798];
    v5 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x25uLL);
    v6 = CWFErrorWithDescription(v4, 37, v5);
    (*(v3 + 16))(v3, v6, 0);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0C38C60(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if ((*(a1 + 76) & 1) == 0)
  {
    [*(a1 + 32) XPCConnection:*(a1 + 40) receivedXPCRequest:*(a1 + 48)];
  }

  v3 = [*(a1 + 48) requestParameters];
  v4 = [v3 timeout];

  if (v4)
  {
    objc_initWeak(&location, *(a1 + 40));
    v5 = [*(a1 + 48) requestParameters];
    v6 = dispatch_time(0, [v5 timeout]);
    v7 = *(*(a1 + 40) + 32);
    v8 = *(a1 + 72);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1E0C38E04;
    v12[3] = &unk_1E86E6B40;
    objc_copyWeak(v15, &location);
    v17 = *(a1 + 77);
    v16 = *(a1 + 72);
    v9 = *(a1 + 56);
    v10 = *(a1 + 64);
    v13 = v9;
    v15[1] = v10;
    v14 = *(a1 + 48);
    v11 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v8, 0, v12);
    dispatch_after(v6, v7, v11);

    objc_destroyWeak(v15);
    objc_destroyWeak(&location);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0C38E04(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = WeakRetained;
  if (WeakRetained && *(a1 + 68) == 1)
  {
    v5 = *(WeakRetained + 2);
    v6 = *(a1 + 64);
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = sub_1E0C38FAC;
    v18 = &unk_1E86E6B18;
    v19 = WeakRetained;
    v7 = *(a1 + 32);
    v8 = *(a1 + 56);
    v20 = v7;
    v22 = v8;
    v21 = *(a1 + 40);
    v9 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v6, 0, &v15);
    dispatch_async(v5, v9);
  }

  if (*(a1 + 68) != 1 || (v4[144] & 1) == 0)
  {
    v10 = [*(a1 + 40) response];

    if (v10)
    {
      v11 = [*(a1 + 40) response];
      v12 = *MEMORY[0x1E696A798];
      v13 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x3CuLL);
      v14 = CWFErrorWithDescription(v12, 60, v13);
      (v11)[2](v11, v14, 0);
    }
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0C38FAC(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = [*(*(a1 + 32) + 56) allKeys];
  v4 = [v3 containsObject:*(a1 + 40)];

  if (v4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    v6 = sub_1E0BC2FCC(*(a1 + 56));
    v7 = [*(a1 + 48) requestParameters];
    v8 = 138412546;
    v9 = v6;
    v10 = 2048;
    v11 = [v7 timeout] / 1000000000.0;
    _os_log_fault_impl(&dword_1E0BBF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "[%@] FAILED to complete request before default timeout (%.6fs)", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1E0C390D8(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) response];

  if (v3)
  {
    v4 = [*(a1 + 32) response];
    v5 = *MEMORY[0x1E696A798];
    v6 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x2DuLL);
    v7 = CWFErrorWithDescription(v5, 45, v6);
    (v4)[2](v4, v7, 0);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0C391A0(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 72);
  if (v3)
  {
    (*(v3 + 16))(v3, *(a1 + 32), 0);
  }

  v4 = CWFGetOSLog();
  if (v4)
  {
    v5 = CWFGetOSLog();
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, (16 * ([*(a1 + 32) code] != 0))))
  {
    *(a1 + 40);
    v16 = sub_1E0BC2FCC(*(a1 + 80));
    v7 = (clock_gettime_nsec_np(_CLOCK_UPTIME_RAW) - *(a1 + 88)) / 1000000000.0;
    [*(*(a1 + 48) + 160) processIdentifier];
    v8 = *(a1 + 48);
    v13 = v8[23];
    v14 = v8[24];
    v15 = v8[25];
    v9 = sub_1E0BC1A5C(v8[21]);
    qos_class_self();
    v10 = [*(a1 + 56) interfaceName];
    v11 = [*(a1 + 64) UUIDString];
    v17 = [v11 substringToIndex:5];
    [*(a1 + 32) code];
    _os_log_send_and_compose_impl();
  }

  objc_autoreleasePoolPop(v2);
  v12 = *MEMORY[0x1E69E9840];
}

void sub_1E0C39508(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 184);
  v3 = CWFGetOSLog();
  if (v3)
  {
    v4 = CWFGetOSLog();
  }

  else
  {
    v4 = MEMORY[0x1E69E9C10];
    v5 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = [*(a1 + 32) UUID];
    v7 = [v6 UUIDString];
    v8 = [v7 substringToIndex:5];
    v15 = 138543618;
    v16 = v2;
    v17 = 2114;
    v18 = v8;
    LODWORD(v14) = 22;
    v13 = &v15;
    _os_log_send_and_compose_impl();
  }

  [*(a1 + 32) __didInvalidate];
  v9 = [*(a1 + 32) invalidationHandler];

  if (v9)
  {
    v10 = [*(a1 + 32) invalidationHandler];
    v10[2](v10, v11);
  }

  [*(a1 + 32) setInvalidationHandler:{0, v13, v14}];

  v12 = *MEMORY[0x1E69E9840];
}

void sub_1E0C39C2C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *MEMORY[0x1E696A798];
    v5 = CWFErrorDescription(*MEMORY[0x1E696A798], 1uLL);
    v6 = CWFErrorWithDescription(v4, 1, v5);
    (*(v3 + 16))(v3, v6);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0C39CCC(uint64_t a1)
{
  v27[2] = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  v2 = *(*(a1 + 32) + 72);
  v3 = *(*(a1 + 32) + 16);
  v4 = *(*(a1 + 32) + 32);
  v5 = [v2 containsObject:*(a1 + 40)];
  objc_initWeak(&location, *(a1 + 32));
  v6 = *(a1 + 32);
  v7 = [*(a1 + 40) type];
  v8 = *(a1 + 40);
  v26[0] = @"EventID";
  v26[1] = @"Remove";
  v27[0] = v8;
  v27[1] = MEMORY[0x1E695E110];
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:2];
  v10 = sub_1E0BC90A8(v7);
  v11 = *(a1 + 48);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_1E0C39F30;
  v17[3] = &unk_1E86E6C08;
  objc_copyWeak(&v23, &location);
  v24 = v5 ^ 1;
  v12 = v3;
  v18 = v12;
  v13 = v2;
  v19 = v13;
  v20 = *(a1 + 40);
  v14 = v4;
  v21 = v14;
  v22 = *(a1 + 56);
  [v6 __addXPCRequestWithType:v10 info:v9 requestParams:v11 reply:v17];

  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);

  objc_autoreleasePoolPop(context);
  v15 = *MEMORY[0x1E69E9840];
}

void sub_1E0C39F04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 72));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E0C39F30(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (!v3 && *(a1 + 80) == 1)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E0C3A07C;
    block[3] = &unk_1E86E6060;
    v5 = *(a1 + 32);
    v13 = *(a1 + 40);
    v14 = *(a1 + 48);
    v15 = WeakRetained;
    dispatch_async(v5, block);
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1E0C3A114;
  v9[3] = &unk_1E86E6BE0;
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  v10 = v3;
  v11 = v7;
  v8 = v3;
  dispatch_async(v6, v9);
}

void sub_1E0C3A07C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) addObject:*(a1 + 40)];
  v3 = [*(a1 + 48) delegate];
  if (v3)
  {
    v4 = *(a1 + 48);
    v5 = [*(a1 + 32) copy];
    [v3 XPCConnection:v4 updatedRegisteredEventIDs:v5];
  }

  [*(a1 + 48) __updateXPCTransactionCount];

  objc_autoreleasePoolPop(v2);
}

void sub_1E0C3A114(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, *(a1 + 32));
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0C3A3C8(uint64_t a1)
{
  v25[2] = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(*(a1 + 32) + 72);
  v4 = *(*(a1 + 32) + 16);
  v5 = *(*(a1 + 32) + 32);
  objc_initWeak(&location, *(a1 + 32));
  v6 = *(a1 + 32);
  v7 = [*(a1 + 40) type];
  v8 = *(a1 + 40);
  v24[0] = @"EventID";
  v24[1] = @"Remove";
  v25[0] = v8;
  v25[1] = MEMORY[0x1E695E118];
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:2];
  v10 = sub_1E0BC90A8(v7);
  v11 = *(a1 + 48);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1E0C3A610;
  v16[3] = &unk_1E86E6C58;
  objc_copyWeak(&v22, &location);
  v12 = v4;
  v17 = v12;
  v13 = v3;
  v18 = v13;
  v19 = *(a1 + 40);
  v14 = v5;
  v20 = v14;
  v21 = *(a1 + 56);
  [v6 __addXPCRequestWithType:v10 info:v9 requestParams:v11 reply:v16];

  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);

  objc_autoreleasePoolPop(v2);
  v15 = *MEMORY[0x1E69E9840];
}

void sub_1E0C3A5E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 72));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E0C3A610(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1E0C3A70C;
  v8[3] = &unk_1E86E6CD0;
  v5 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v11 = WeakRetained;
  v12 = *(a1 + 56);
  v6 = *(a1 + 64);
  v13 = v3;
  v14 = v6;
  v7 = v3;
  dispatch_async(v5, v8);
}

void sub_1E0C3A70C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if ([*(a1 + 32) containsObject:*(a1 + 40)])
  {
    [*(a1 + 32) removeObject:*(a1 + 40)];
    v3 = [*(a1 + 48) delegate];
    if (v3)
    {
      v4 = *(a1 + 48);
      v5 = [*(a1 + 32) copy];
      [v3 XPCConnection:v4 updatedRegisteredEventIDs:v5];
    }

    [*(a1 + 48) __updateXPCTransactionCount];
  }

  v6 = *(a1 + 56);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1E0C3A828;
  v7[3] = &unk_1E86E6BE0;
  v9 = *(a1 + 72);
  v8 = *(a1 + 64);
  dispatch_async(v6, v7);

  objc_autoreleasePoolPop(v2);
}

void sub_1E0C3A828(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, *(a1 + 32));
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0C3AA80(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  v2 = dispatch_group_create();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = *(*(a1 + 32) + 72);
  v3 = [obj countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v3)
  {
    v4 = v3;
    v16 = *v22;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v22 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v21 + 1) + 8 * i);
        dispatch_group_enter(v2);
        v7 = *(a1 + 32);
        v8 = sub_1E0BC90A8([v6 type]);
        v25[0] = @"EventID";
        v25[1] = @"Remove";
        v26[0] = v6;
        v26[1] = MEMORY[0x1E695E118];
        v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:2];
        v10 = *(a1 + 40);
        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 3221225472;
        v19[2] = sub_1E0C3AD0C;
        v19[3] = &unk_1E86E6C80;
        v20 = v2;
        [v7 __addXPCRequestWithType:v8 info:v9 requestParams:v10 reply:v19];
      }

      v4 = [obj countByEnumeratingWithState:&v21 objects:v27 count:16];
    }

    while (v4);
  }

  v11 = *(a1 + 32);
  v12 = *(v11 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0C3AD14;
  block[3] = &unk_1E86E64C0;
  block[4] = v11;
  v18 = *(a1 + 48);
  dispatch_group_notify(v2, v12, block);

  objc_autoreleasePoolPop(context);
  v13 = *MEMORY[0x1E69E9840];
}

void sub_1E0C3AD14(uint64_t a1)
{
  if ([*(*(a1 + 32) + 72) count])
  {
    [*(*(a1 + 32) + 72) removeAllObjects];
    v2 = [*(a1 + 32) delegate];
    v3 = v2;
    if (v2)
    {
      [v2 XPCConnection:*(a1 + 32) updatedRegisteredEventIDs:0];
    }

    [*(a1 + 32) __updateXPCTransactionCount];
  }

  v4 = *(*(a1 + 32) + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0C3ADF4;
  block[3] = &unk_1E86E6AF0;
  v6 = *(a1 + 40);
  dispatch_async(v4, block);
}

void sub_1E0C3ADF4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))(v3, 0);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0C3AF4C(id *a1)
{
  v38[2] = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = a1[5];
  if (a1[4])
  {
    v4 = *(v3 + 8);
    v5 = *(a1[5] + 2);
    v6 = *(a1[5] + 4);
    if ([v4 containsObject:a1[4]])
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_1E0C3B8DC;
      block[3] = &unk_1E86E6AF0;
      v23 = a1[7];
      dispatch_async(v6, block);
    }

    else
    {
      [v4 addObject:a1[4]];
      objc_initWeak(&location, a1[5]);
      v8 = a1[5];
      v9 = [a1[4] type];
      v10 = a1[4];
      v37[0] = @"Activity";
      v37[1] = @"Remove";
      v38[0] = v10;
      v38[1] = MEMORY[0x1E695E110];
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:v37 count:2];
      v12 = sub_1E0BD630C(v9);
      v13 = a1[6];
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = sub_1E0C3B368;
      v29[3] = &unk_1E86E6C58;
      objc_copyWeak(&v35, &location);
      v14 = v5;
      v30 = v14;
      v31 = v4;
      v32 = a1[4];
      v33 = v6;
      v34 = a1[7];
      [v8 __addXPCRequestWithType:v12 info:v11 requestParams:v13 reply:v29];

      if ([a1[4] timeout])
      {
        v15 = dispatch_time(0, [a1[4] timeout]);
        v16 = a1[4];
        v17 = a1[5];
        v18 = *(v17 + 2);
        v24[0] = MEMORY[0x1E69E9820];
        v24[1] = 3221225472;
        v24[2] = sub_1E0C3B58C;
        v24[3] = &unk_1E86E6D20;
        v24[4] = v17;
        v25 = v16;
        v26 = a1[6];
        objc_copyWeak(&v28, &location);
        v27 = v14;
        dispatch_after(v15, v18, v24);

        objc_destroyWeak(&v28);
      }

      objc_destroyWeak(&v35);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    v7 = *(v3 + 4);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = sub_1E0C3B97C;
    v20[3] = &unk_1E86E6AF0;
    v21 = a1[7];
    dispatch_async(v7, v20);
    v4 = v21;
  }

  objc_autoreleasePoolPop(v2);
  v19 = *MEMORY[0x1E69E9840];
}

void sub_1E0C3B324(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, id a37)
{
  objc_destroyWeak(&a37);
  objc_destroyWeak((v37 - 152));
  _Unwind_Resume(a1);
}

void sub_1E0C3B368(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1E0C3B468;
  v7[3] = &unk_1E86E6CD0;
  v8 = v3;
  v5 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v11 = WeakRetained;
  v12 = *(a1 + 56);
  v13 = *(a1 + 64);
  v6 = v3;
  dispatch_async(v5, v7);
}

void sub_1E0C3B468(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (*(a1 + 32))
  {
    [*(a1 + 40) removeObject:*(a1 + 48)];
  }

  [*(a1 + 56) __updateXPCTransactionCount];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1E0C3B538;
  v4[3] = &unk_1E86E6BE0;
  v3 = *(a1 + 64);
  v6 = *(a1 + 72);
  v5 = *(a1 + 32);
  dispatch_async(v3, v4);

  objc_autoreleasePoolPop(v2);
}

void sub_1E0C3B538(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, *(a1 + 32));
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0C3B58C(uint64_t a1)
{
  v14[2] = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  if ([*(*(a1 + 32) + 64) containsObject:*(a1 + 40)])
  {
    [*(*(a1 + 32) + 64) removeObject:*(a1 + 40)];
    v3 = *(a1 + 32);
    v4 = sub_1E0BD630C([*(a1 + 40) type]);
    v5 = *(a1 + 40);
    v13[0] = @"Activity";
    v13[1] = @"Remove";
    v14[0] = v5;
    v14[1] = MEMORY[0x1E695E118];
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
    v7 = *(a1 + 48);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1E0C3B744;
    v9[3] = &unk_1E86E6CF8;
    objc_copyWeak(&v12, (a1 + 64));
    v10 = *(a1 + 40);
    v11 = *(a1 + 56);
    [v3 __addXPCRequestWithType:v4 info:v6 requestParams:v7 reply:v9];

    objc_destroyWeak(&v12);
  }

  objc_autoreleasePoolPop(v2);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1E0C3B744(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = CWFGetOSLog();
  if (v3)
  {
    v4 = CWFGetOSLog();
  }

  else
  {
    v4 = MEMORY[0x1E69E9C10];
    v5 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v10 = 138543362;
    v11 = v6;
    _os_log_send_and_compose_impl();
  }

  v7 = *(a1 + 40);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0C3B898;
  block[3] = &unk_1E86E6010;
  block[4] = WeakRetained;
  dispatch_async(v7, block);

  v8 = *MEMORY[0x1E69E9840];
}

void sub_1E0C3B898(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) __updateXPCTransactionCount];

  objc_autoreleasePoolPop(v2);
}

void sub_1E0C3B8DC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *MEMORY[0x1E696A798];
    v5 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x25uLL);
    v6 = CWFErrorWithDescription(v4, 37, v5);
    (*(v3 + 16))(v3, v6);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0C3B97C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *MEMORY[0x1E696A798];
    v5 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x16uLL);
    v6 = CWFErrorWithDescription(v4, 22, v5);
    (*(v3 + 16))(v3, v6);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0C3BB00(uint64_t a1)
{
  v42 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  if (*(a1 + 32))
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v3 = *(*(a1 + 40) + 64);
    v4 = [v3 countByEnumeratingWithState:&v35 objects:v41 count:16];
    if (v4)
    {
      v5 = *v36;
LABEL_4:
      v6 = 0;
      while (1)
      {
        if (*v36 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v35 + 1) + 8 * v6);
        v8 = [v7 UUID];
        v9 = [v8 isEqual:*(a1 + 32)];

        if (v9)
        {
          break;
        }

        if (v4 == ++v6)
        {
          v4 = [v3 countByEnumeratingWithState:&v35 objects:v41 count:16];
          if (v4)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }

      v10 = v7;

      if (!v10)
      {
        goto LABEL_13;
      }

      v11 = *(*(a1 + 40) + 64);
      v12 = *(*(a1 + 40) + 16);
      v13 = *(*(a1 + 40) + 32);
      v24 = v11;
      [v11 removeObject:v10];
      objc_initWeak(&location, *(a1 + 40));
      v14 = *(a1 + 40);
      v15 = [v10 type];
      v39[0] = @"Activity";
      v39[1] = @"Remove";
      v40[0] = v10;
      v40[1] = MEMORY[0x1E695E118];
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:v39 count:2];
      v17 = sub_1E0BD630C(v15);
      v18 = *(a1 + 48);
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = sub_1E0C3BEDC;
      v29[3] = &unk_1E86E6D70;
      objc_copyWeak(&v33, &location);
      v19 = v12;
      v30 = v19;
      v20 = v13;
      v31 = v20;
      v32 = *(a1 + 56);
      [v14 __addXPCRequestWithType:v17 info:v16 requestParams:v18 reply:v29];

      objc_destroyWeak(&v33);
      objc_destroyWeak(&location);
    }

    else
    {
LABEL_10:

LABEL_13:
      v21 = *(*(a1 + 40) + 32);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_1E0C3C0CC;
      block[3] = &unk_1E86E6AF0;
      v28 = *(a1 + 56);
      dispatch_async(v21, block);
      v10 = v28;
    }
  }

  else
  {
    v22 = *(*(a1 + 40) + 32);
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = sub_1E0C3C16C;
    v25[3] = &unk_1E86E6AF0;
    v26 = *(a1 + 56);
    dispatch_async(v22, v25);
    v10 = v26;
  }

  objc_autoreleasePoolPop(v2);
  v23 = *MEMORY[0x1E69E9840];
}

void sub_1E0C3BEB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id location)
{
  objc_destroyWeak((v28 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E0C3BEDC(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1E0C3BFB4;
  v8[3] = &unk_1E86E6D48;
  v8[4] = WeakRetained;
  v5 = *(a1 + 32);
  v9 = *(a1 + 40);
  v6 = *(a1 + 48);
  v10 = v3;
  v11 = v6;
  v7 = v3;
  dispatch_async(v5, v8);
}

void sub_1E0C3BFB4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) __updateXPCTransactionCount];
  v3 = *(a1 + 40);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1E0C3C078;
  v4[3] = &unk_1E86E6BE0;
  v6 = *(a1 + 56);
  v5 = *(a1 + 48);
  dispatch_async(v3, v4);

  objc_autoreleasePoolPop(v2);
}

void sub_1E0C3C078(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, *(a1 + 32));
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0C3C0CC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *MEMORY[0x1E696A798];
    v5 = CWFErrorDescription(*MEMORY[0x1E696A798], 2uLL);
    v6 = CWFErrorWithDescription(v4, 2, v5);
    (*(v3 + 16))(v3, v6);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0C3C16C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *MEMORY[0x1E696A798];
    v5 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x16uLL);
    v6 = CWFErrorWithDescription(v4, 22, v5);
    (*(v3 + 16))(v3, v6);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0C3C2D0(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  v2 = dispatch_group_create();
  v3 = [*(*(a1 + 32) + 64) copy];
  [*(*(a1 + 32) + 64) removeAllObjects];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v4)
  {
    v5 = v4;
    v17 = *v23;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v23 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v22 + 1) + 8 * i);
        dispatch_group_enter(v2);
        v8 = *(a1 + 32);
        v9 = sub_1E0BD630C([v7 type]);
        v26[0] = @"Activity";
        v26[1] = @"Remove";
        v27[0] = v7;
        v27[1] = MEMORY[0x1E695E118];
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:2];
        v11 = *(a1 + 40);
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = sub_1E0C3C574;
        v20[3] = &unk_1E86E6C80;
        v21 = v2;
        [v8 __addXPCRequestWithType:v9 info:v10 requestParams:v11 reply:v20];
      }

      v5 = [obj countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v5);
  }

  v12 = *(a1 + 32);
  v13 = *(v12 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0C3C57C;
  block[3] = &unk_1E86E64C0;
  block[4] = v12;
  v19 = *(a1 + 48);
  dispatch_group_notify(v2, v13, block);

  objc_autoreleasePoolPop(context);
  v14 = *MEMORY[0x1E69E9840];
}

void sub_1E0C3C57C(uint64_t a1)
{
  [*(a1 + 32) __updateXPCTransactionCount];
  v2 = *(*(a1 + 32) + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0C3C618;
  block[3] = &unk_1E86E6AF0;
  v4 = *(a1 + 40);
  dispatch_async(v2, block);
}

void sub_1E0C3C618(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))(v3, 0);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0C3C750(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v2 = [*(*(a1 + 32) + 56) allValues];
  v3 = [v2 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v28;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v28 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = [*(*(&v27 + 1) + 8 * i) requestParameters];
        v9 = [v8 UUID];
        v10 = [v9 isEqual:*(a1 + 40)];

        if (v10)
        {
          v11 = [*(a1 + 32) delegate];
          v12 = v11;
          if (v11)
          {
            v13 = *(*(a1 + 32) + 24);
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            block[2] = sub_1E0C3C9BC;
            block[3] = &unk_1E86E6060;
            v14 = v11;
            v15 = *(a1 + 32);
            v16 = *(a1 + 40);
            v24 = v14;
            v25 = v15;
            v26 = v16;
            dispatch_async(v13, block);
          }

          v5 = 1;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  v17 = *(*(a1 + 32) + 32);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = sub_1E0C3CA04;
  v20[3] = &unk_1E86E6D98;
  v22 = v5 & 1;
  v21 = *(a1 + 48);
  dispatch_async(v17, v20);

  objc_autoreleasePoolPop(context);
  v18 = *MEMORY[0x1E69E9840];
}

void sub_1E0C3C9BC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) XPCConnection:*(a1 + 40) canceledXPCRequestsWithUUID:*(a1 + 48)];

  objc_autoreleasePoolPop(v2);
}

void sub_1E0C3CA04(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  if (v3 == 1)
  {
    if (v4)
    {
      (*(v4 + 16))(v4, 0);
    }
  }

  else if (v4)
  {
    v5 = *MEMORY[0x1E696A798];
    v6 = CWFErrorDescription(*MEMORY[0x1E696A798], 2uLL);
    v7 = CWFErrorWithDescription(v5, 2, v6);
    (*(v4 + 16))(v4, v7);
  }

  objc_autoreleasePoolPop(v2);
}

uint64_t sub_1E0C3CCE8(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1E0C3CD00(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *MEMORY[0x1E696A798];
    v5 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x16uLL);
    v6 = CWFErrorWithDescription(v4, 22, v5);
    (*(v3 + 16))(v3, v6);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0C3CE80(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1E0C3CE9C(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WeakRetained;
  if (v5)
  {
    v8 = [WeakRetained __allowXPCRequestWithType:7 error:0];
    v9 = [v7 __allowXPCRequestWithType:9 error:0];
    v10 = *(a1 + 32);
    if (v10)
    {
      v11 = [v7 __privacyFilteredNetworkProfile:v5 allowSSID:v8 allowBSSID:v9];
      (*(v10 + 16))(v10, v13, v11);
    }
  }

  else
  {
    v12 = *(a1 + 32);
    if (v12)
    {
      (*(v12 + 16))(v12, v13, 0);
    }
  }
}

void sub_1E0C3D070(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1E0C3D08C(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WeakRetained;
  if (v5)
  {
    v8 = [WeakRetained __allowXPCRequestWithType:7 error:0];
    v9 = [v7 __allowXPCRequestWithType:9 error:0];
    v10 = [v7 __allowXPCRequestWithType:22 error:0];
    v11 = *(a1 + 32);
    if (v11)
    {
      v12 = [v7 __privacyFilteredScanResult:v5 allowSSID:v8 allowBSSID:v9 allowCountryCode:v10];
      (*(v11 + 16))(v11, v14, v12);
    }
  }

  else
  {
    v13 = *(a1 + 32);
    if (v13)
    {
      (*(v13 + 16))(v13, v14, 0);
    }
  }
}

void sub_1E0C3D3E4(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v5 = a2;
    v6 = [a3 objectForKeyedSubscript:@"Result"];
    (*(v3 + 16))(v3, v5, v6);
  }
}

void sub_1E0C3DD7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E0C3DDA0(id *a1, uint64_t a2, void *a3)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v6 = a1[4];
  v7 = [v4 objectForKeyedSubscript:@"Result"];

  if (v7 && [a1[4] count])
  {
    v8 = [WeakRetained __matchedScanResultsWithKnownNetworkProfiles:v7 scanResults:a1[4]];

    v6 = v8;
  }

  v9 = [a1[5] response];

  if (v9)
  {
    v10 = [a1[5] response];
    v13 = @"Result";
    v14[0] = v6;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    (v10)[2](v10, 0, v11);
  }

  v12 = *MEMORY[0x1E69E9840];
}

void sub_1E0C3E038(id *a1, void *a2, void *a3)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5)
  {
    v9 = [v6 objectForKeyedSubscript:@"Result"];
    v10 = sub_1E0BF13EC(a1[5], a1[6], v9);
    if ([a1[6] includeMatchingKnownNetworkProfiles])
    {
      [a1[7] __matchKnownNetworksWithScanResults:v10 parentXPCRequest:a1[4]];
    }

    else
    {
      v11 = [a1[4] response];

      if (v11)
      {
        v12 = [a1[4] response];
        v15 = @"Result";
        v16[0] = v10;
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
        (v12)[2](v12, 0, v13);
      }
    }

    goto LABEL_9;
  }

  v8 = [a1[4] response];

  if (v8)
  {
    v9 = [a1[4] response];
    (v9)[2](v9, v5, v7);
LABEL_9:
  }

  v14 = *MEMORY[0x1E69E9840];
}

void sub_1E0C3E410(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E0C3E43C(uint64_t a1, uint64_t a2, void *a3)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v6 = [MEMORY[0x1E695DFA8] set];
  v7 = [v4 objectForKeyedSubscript:@"Result"];

  if ([v7 count])
  {
    [v6 addObjectsFromArray:v7];
  }

  [v6 addObjectsFromArray:*(a1 + 32)];
  if ([*(a1 + 40) sortByAutoJoinPreference])
  {
    v8 = [v6 allObjects];
    [WeakRetained __sortScanResultsByAutoJoinPreference:v8 withParameters:*(a1 + 40) parentXPCRequest:*(a1 + 48)];
LABEL_7:

    goto LABEL_8;
  }

  if ([*(a1 + 40) includeMatchingKnownNetworkProfiles])
  {
    v8 = [v6 allObjects];
    [WeakRetained __matchKnownNetworksWithScanResults:v8 parentXPCRequest:*(a1 + 48)];
    goto LABEL_7;
  }

  v10 = [*(a1 + 48) response];

  if (v10)
  {
    v11 = [*(a1 + 48) response];
    v14 = @"Result";
    v12 = [v6 allObjects];
    v15[0] = v12;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    (v11)[2](v11, 0, v13);
  }

LABEL_8:

  v9 = *MEMORY[0x1E69E9840];
}

void sub_1E0C3E8F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E0C3E91C(id *a1, void *a2, void *a3)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v8 = [v6 objectForKeyedSubscript:@"Result"];
  v9 = v8;
  if (v5 || ![v8 count])
  {
    v10 = [a1[5] response];

    if (v10)
    {
      v11 = [a1[5] response];
      (v11)[2](v11, v5, v6);
    }
  }

  else
  {
    v12 = [a1[4] ANQPElementIDListForPasspointScanResults];
    if ([v12 count])
    {
      v13 = [WeakRetained __passpointScanResults:v9];
    }

    else
    {
      v13 = 0;
    }

    if ([v13 count])
    {
      [WeakRetained __performFollowupANQPForPasspointScanResults:v13 combinedScanResults:v9 parameters:a1[4] parentXPCRequest:a1[5]];
    }

    else if ([a1[4] sortByAutoJoinPreference])
    {
      [WeakRetained __sortScanResultsByAutoJoinPreference:v9 withParameters:a1[4] parentXPCRequest:a1[5]];
    }

    else if ([a1[4] includeMatchingKnownNetworkProfiles])
    {
      [WeakRetained __matchKnownNetworksWithScanResults:v9 parentXPCRequest:a1[5]];
    }

    else
    {
      v14 = [a1[5] response];

      if (v14)
      {
        v15 = [a1[5] response];
        v18 = @"Result";
        v19[0] = v9;
        v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
        (v15)[2](v15, 0, v16);
      }
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

void sub_1E0C3EE1C(_Unwind_Exception *a1)
{
  objc_destroyWeak(v1);
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

void sub_1E0C3EE6C(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = [v5 objectForKeyedSubscript:@"Result"];

  v8 = *(a1 + 32);
  if (v8)
  {
    if (v7)
    {
      v9 = [WeakRetained __filterScanResultsForPrivacy:v7];
      (*(v8 + 16))(v8, v10, v9);
    }

    else
    {
      (*(v8 + 16))(v8, v10, 0);
    }
  }
}

void sub_1E0C3EF54(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = [v5 objectForKeyedSubscript:@"Result"];

  v8 = *(a1 + 32);
  if (v8)
  {
    if (v7)
    {
      v9 = [WeakRetained __filterScanResultsForPrivacy:v7];
      (*(v8 + 16))(v8, v10, v9);
    }

    else
    {
      (*(v8 + 16))(v8, v10, 0);
    }
  }
}

void sub_1E0C3F03C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *MEMORY[0x1E696A798];
    v5 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x16uLL);
    v6 = CWFErrorWithDescription(v4, 22, v5);
    (*(v3 + 16))(v3, v6, 0);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0C3F280(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E0C3F2AC(id *a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v7 = [v5 objectForKeyedSubscript:@"Result"];
  if (!v10 && [v7 count] && objc_msgSend(a1[4], "includeMatchingKnownNetworkProfiles"))
  {
    [WeakRetained __matchKnownNetworksWithScanResults:v7 parentXPCRequest:a1[5]];
  }

  else
  {
    v8 = [a1[5] response];

    if (v8)
    {
      v9 = [a1[5] response];
      (v9)[2](v9, v10, v5);
    }
  }
}

void sub_1E0C3F62C(_Unwind_Exception *a1)
{
  objc_destroyWeak(v1);
  objc_destroyWeak((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_1E0C3F678(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = [v5 objectForKeyedSubscript:@"Result"];

  v8 = *(a1 + 32);
  if (v8)
  {
    if (v7)
    {
      v9 = [WeakRetained __filterScanResultsForPrivacy:v7];
      (*(v8 + 16))(v8, v10, v9);
    }

    else
    {
      (*(v8 + 16))(v8, v10, 0);
    }
  }
}

void sub_1E0C3F760(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = [v5 objectForKeyedSubscript:@"Result"];

  v8 = *(a1 + 32);
  if (v8)
  {
    if (v7)
    {
      v9 = [WeakRetained __filterScanResultsForPrivacy:v7];
      (*(v8 + 16))(v8, v10, v9);
    }

    else
    {
      (*(v8 + 16))(v8, v10, 0);
    }
  }
}

void sub_1E0C3F848(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *MEMORY[0x1E696A798];
    v5 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x16uLL);
    v6 = CWFErrorWithDescription(v4, 22, v5);
    (*(v3 + 16))(v3, v6, 0);
  }

  objc_autoreleasePoolPop(v2);
}

uint64_t sub_1E0C3FA88(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1E0C3FAA0(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *MEMORY[0x1E696A798];
    v5 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x16uLL);
    v6 = CWFErrorWithDescription(v4, 22, v5);
    (*(v3 + 16))(v3, v6);
  }

  objc_autoreleasePoolPop(v2);
}

uint64_t sub_1E0C3FC8C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_1E0C3FE80(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1E0C3FE98(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *MEMORY[0x1E696A798];
    v5 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x16uLL);
    v6 = CWFErrorWithDescription(v4, 22, v5);
    (*(v3 + 16))(v3, v6);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0C40110(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v5 = a2;
    v6 = [a3 objectForKeyedSubscript:@"Result"];
    (*(v3 + 16))(v3, v5, v6);
  }
}

void sub_1E0C401B4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *MEMORY[0x1E696A798];
    v5 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x16uLL);
    v6 = CWFErrorWithDescription(v4, 22, v5);
    (*(v3 + 16))(v3, v6, 0);
  }

  objc_autoreleasePoolPop(v2);
}

uint64_t sub_1E0C4039C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_1E0C40550(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1E0C40568(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *MEMORY[0x1E696A798];
    v5 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x16uLL);
    v6 = CWFErrorWithDescription(v4, 22, v5);
    (*(v3 + 16))(v3, v6);
  }

  objc_autoreleasePoolPop(v2);
}

uint64_t sub_1E0C406B4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1E0C40B70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E0C40B9C(uint64_t a1)
{
  v12[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = *(a1 + 32);
  v11 = @"AssocParams";
  v12[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v5 = [*(a1 + 40) requestParameters];
  v6 = [*(a1 + 40) UUID];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1E0C40CF0;
  v9[3] = &unk_1E86E6C80;
  v10 = *(a1 + 40);
  v7 = [WeakRetained __addXPCRequestWithType:62 info:v4 requestParams:v5 parentRequestUUID:v6 isParentRequest:0 reply:v9];

  v8 = *MEMORY[0x1E69E9840];
}

void sub_1E0C40CF0(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) response];

  if (v6)
  {
    v7 = [*(a1 + 32) response];
    (v7)[2](v7, v8, v5);
  }
}

uint64_t sub_1E0C41018(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_1E0C41030(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1E0C41048(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *MEMORY[0x1E696A798];
    v5 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x16uLL);
    v6 = CWFErrorWithDescription(v4, 22, v5);
    (*(v3 + 16))(v3, v6);
  }

  objc_autoreleasePoolPop(v2);
}

uint64_t sub_1E0C41234(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_1E0C41398(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1E0C41574(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 80));
  _Unwind_Resume(a1);
}

void sub_1E0C415A0(uint64_t a1, void *a2, void *a3)
{
  v15 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WeakRetained;
  if (v5)
  {
    v8 = [WeakRetained __allowXPCRequestWithType:7 error:0];
    v9 = [v7 __allowXPCRequestWithType:9 error:0];
    v10 = *(a1 + 32);
    if (v10)
    {
      v11 = v9;
      v12 = [v5 objectForKeyedSubscript:@"Result"];
      v13 = [v7 __privacyFilteredNetworkProfile:v12 allowSSID:v8 allowBSSID:v11];
      (*(v10 + 16))(v10, v15, v13);
    }
  }

  else
  {
    v14 = *(a1 + 32);
    if (v14)
    {
      (*(v14 + 16))(v14, v15, 0);
    }
  }
}

void sub_1E0C416C0(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *MEMORY[0x1E696A798];
    v5 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x16uLL);
    v6 = CWFErrorWithDescription(v4, 22, v5);
    (*(v3 + 16))(v3, v6, 0);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0C41928(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 80));
  _Unwind_Resume(a1);
}

void sub_1E0C41954(uint64_t a1, void *a2, void *a3)
{
  v15 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WeakRetained;
  if (v5)
  {
    v8 = [WeakRetained __allowXPCRequestWithType:7 error:0];
    v9 = [v7 __allowXPCRequestWithType:9 error:0];
    v10 = *(a1 + 32);
    if (v10)
    {
      v11 = v9;
      v12 = [v5 objectForKeyedSubscript:@"Result"];
      v13 = [v7 __privacyFilteredNetworkProfile:v12 allowSSID:v8 allowBSSID:v11];
      (*(v10 + 16))(v10, v15, v13);
    }
  }

  else
  {
    v14 = *(a1 + 32);
    if (v14)
    {
      (*(v14 + 16))(v14, v15, 0);
    }
  }
}

void sub_1E0C41A74(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *MEMORY[0x1E696A798];
    v5 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x16uLL);
    v6 = CWFErrorWithDescription(v4, 22, v5);
    (*(v3 + 16))(v3, v6, 0);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0C41C40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E0C41C5C(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = [v5 objectForKeyedSubscript:@"Result"];

  v8 = *(a1 + 32);
  if (v8)
  {
    if (v7)
    {
      v9 = [WeakRetained __filterNetworkProfilesForPrivacy:v7];
      (*(v8 + 16))(v8, v10, v9);
    }

    else
    {
      (*(v8 + 16))(v8, v10, 0);
    }
  }
}

uint64_t sub_1E0C41EE0(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1E0C41EF8(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *MEMORY[0x1E696A798];
    v5 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x16uLL);
    v6 = CWFErrorWithDescription(v4, 22, v5);
    (*(v3 + 16))(v3, v6);
  }

  objc_autoreleasePoolPop(v2);
}

uint64_t sub_1E0C42154(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1E0C4216C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *MEMORY[0x1E696A798];
    v5 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x16uLL);
    v6 = CWFErrorWithDescription(v4, 22, v5);
    (*(v3 + 16))(v3, v6);
  }

  objc_autoreleasePoolPop(v2);
}

uint64_t sub_1E0C423E4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1E0C423FC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *MEMORY[0x1E696A798];
    v5 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x16uLL);
    v6 = CWFErrorWithDescription(v4, 22, v5);
    (*(v3 + 16))(v3, v6);
  }

  objc_autoreleasePoolPop(v2);
}

uint64_t sub_1E0C42608(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_1E0C429CC(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_1E0C42B50(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_1E0C42CC4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1E0C42E98(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v5 = a2;
    v6 = [a3 objectForKeyedSubscript:@"Result"];
    (*(v3 + 16))(v3, v5, v6);
  }
}

void sub_1E0C42F3C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *MEMORY[0x1E696A798];
    v5 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x16uLL);
    v6 = CWFErrorWithDescription(v4, 22, v5);
    (*(v3 + 16))(v3, v6, 0);
  }

  objc_autoreleasePoolPop(v2);
}

uint64_t sub_1E0C4317C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1E0C43194(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *MEMORY[0x1E696A798];
    v5 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x16uLL);
    v6 = CWFErrorWithDescription(v4, 22, v5);
    (*(v3 + 16))(v3, v6);
  }

  objc_autoreleasePoolPop(v2);
}

uint64_t sub_1E0C433D0(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1E0C433E8(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *MEMORY[0x1E696A798];
    v5 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x16uLL);
    v6 = CWFErrorWithDescription(v4, 22, v5);
    (*(v3 + 16))(v3, v6);
  }

  objc_autoreleasePoolPop(v2);
}

uint64_t sub_1E0C43554(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_1E0C437C4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1E0C437DC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *MEMORY[0x1E696A798];
    v5 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x16uLL);
    v6 = CWFErrorWithDescription(v4, 22, v5);
    (*(v3 + 16))(v3, v6);
  }

  objc_autoreleasePoolPop(v2);
}

uint64_t sub_1E0C43A48(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1E0C43A60(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *MEMORY[0x1E696A798];
    v5 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x16uLL);
    v6 = CWFErrorWithDescription(v4, 22, v5);
    (*(v3 + 16))(v3, v6);
  }

  objc_autoreleasePoolPop(v2);
}

uint64_t sub_1E0C43CCC(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1E0C43CE4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *MEMORY[0x1E696A798];
    v5 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x16uLL);
    v6 = CWFErrorWithDescription(v4, 22, v5);
    (*(v3 + 16))(v3, v6);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0C43F20(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v5 = a2;
    v6 = [a3 objectForKeyedSubscript:@"Result"];
    (*(v3 + 16))(v3, v5, v6);
  }
}

void sub_1E0C43FC4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *MEMORY[0x1E696A798];
    v5 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x16uLL);
    v6 = CWFErrorWithDescription(v4, 22, v5);
    (*(v3 + 16))(v3, v6, 0);
  }

  objc_autoreleasePoolPop(v2);
}

uint64_t sub_1E0C441F4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1E0C4420C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *MEMORY[0x1E696A798];
    v5 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x16uLL);
    v6 = CWFErrorWithDescription(v4, 22, v5);
    (*(v3 + 16))(v3, v6);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0C443E0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1E0C443FC(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = [v5 objectForKeyedSubscript:@"Result"];

  v8 = *(a1 + 32);
  if (v8)
  {
    if (v7)
    {
      v9 = [WeakRetained __filterScanResultsForPrivacy:v7];
      (*(v8 + 16))(v8, v10, v9);
    }

    else
    {
      (*(v8 + 16))(v8, v10, 0);
    }
  }
}

void sub_1E0C445C8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1E0C445E4(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = [v5 objectForKeyedSubscript:@"Result"];

  v8 = *(a1 + 32);
  if (v8)
  {
    if (v7)
    {
      v9 = [WeakRetained __filterScanResultsForPrivacy:v7];
      (*(v8 + 16))(v8, v10, v9);
    }

    else
    {
      (*(v8 + 16))(v8, v10, 0);
    }
  }
}

uint64_t sub_1E0C44878(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1E0C44890(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *MEMORY[0x1E696A798];
    v5 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x16uLL);
    v6 = CWFErrorWithDescription(v4, 22, v5);
    (*(v3 + 16))(v3, v6);
  }

  objc_autoreleasePoolPop(v2);
}

uint64_t sub_1E0C44ADC(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1E0C44AF4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *MEMORY[0x1E696A798];
    v5 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x16uLL);
    v6 = CWFErrorWithDescription(v4, 22, v5);
    (*(v3 + 16))(v3, v6);
  }

  objc_autoreleasePoolPop(v2);
}

uint64_t sub_1E0C44D30(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1E0C44D48(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *MEMORY[0x1E696A798];
    v5 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x16uLL);
    v6 = CWFErrorWithDescription(v4, 22, v5);
    (*(v3 + 16))(v3, v6);
  }

  objc_autoreleasePoolPop(v2);
}

uint64_t sub_1E0C44E94(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1E0C45048(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v5 = a2;
    v6 = [a3 objectForKeyedSubscript:@"Result"];
    (*(v3 + 16))(v3, v5, v6);
  }
}

void sub_1E0C450EC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *MEMORY[0x1E696A798];
    v5 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x16uLL);
    v6 = CWFErrorWithDescription(v4, 22, v5);
    (*(v3 + 16))(v3, v6, 0);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0C4532C(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v5 = a2;
    v6 = [a3 objectForKeyedSubscript:@"Result"];
    (*(v3 + 16))(v3, v5, v6);
  }
}

void sub_1E0C453D0(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *MEMORY[0x1E696A798];
    v5 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x16uLL);
    v6 = CWFErrorWithDescription(v4, 22, v5);
    (*(v3 + 16))(v3, v6, 0);
  }

  objc_autoreleasePoolPop(v2);
}

uint64_t sub_1E0C4564C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1E0C45664(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *MEMORY[0x1E696A798];
    v5 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x16uLL);
    v6 = CWFErrorWithDescription(v4, 22, v5);
    (*(v3 + 16))(v3, v6);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0C457B0(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v5 = a2;
    v6 = [a3 objectForKeyedSubscript:@"Result"];
    (*(v3 + 16))(v3, v5, v6);
  }
}

uint64_t sub_1E0C459A0(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_1E0C45B90(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1E0C45BA8(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *MEMORY[0x1E696A798];
    v5 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x16uLL);
    v6 = CWFErrorWithDescription(v4, 22, v5);
    (*(v3 + 16))(v3, v6);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0C45DE4(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v5 = a2;
    v6 = [a3 objectForKeyedSubscript:@"Result"];
    (*(v3 + 16))(v3, v5, v6);
  }
}

void sub_1E0C45E88(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *MEMORY[0x1E696A798];
    v5 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x16uLL);
    v6 = CWFErrorWithDescription(v4, 22, v5);
    (*(v3 + 16))(v3, v6, 0);
  }

  objc_autoreleasePoolPop(v2);
}

uint64_t sub_1E0C46104(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1E0C4611C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *MEMORY[0x1E696A798];
    v5 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x16uLL);
    v6 = CWFErrorWithDescription(v4, 22, v5);
    (*(v3 + 16))(v3, v6);
  }

  objc_autoreleasePoolPop(v2);
}

uint64_t sub_1E0C46378(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1E0C46390(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *MEMORY[0x1E696A798];
    v5 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x16uLL);
    v6 = CWFErrorWithDescription(v4, 22, v5);
    (*(v3 + 16))(v3, v6);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0C465C4(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v5 = a2;
    v6 = [a3 objectForKeyedSubscript:@"Result"];
    (*(v3 + 16))(v3, v5, v6);
  }
}

void sub_1E0C467DC(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v5 = a2;
    v6 = [a3 objectForKeyedSubscript:@"Result"];
    (*(v3 + 16))(v3, v5, v6);
  }
}

void sub_1E0C469C0(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v5 = a2;
    v6 = [a3 objectForKeyedSubscript:@"Result"];
    (*(v3 + 16))(v3, v5, v6);
  }
}

void sub_1E0C46B84(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v5 = a2;
    v6 = [a3 objectForKeyedSubscript:@"Result"];
    (*(v3 + 16))(v3, v5, v6);
  }
}

void sub_1E0C46DC4(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v5 = a2;
    v6 = [a3 objectForKeyedSubscript:@"Result"];
    (*(v3 + 16))(v3, v5, v6);
  }
}

void sub_1E0C46E68(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *MEMORY[0x1E696A798];
    v5 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x16uLL);
    v6 = CWFErrorWithDescription(v4, 22, v5);
    (*(v3 + 16))(v3, v6, 0);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0C4705C(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v5 = a2;
    v6 = [a3 objectForKeyedSubscript:@"Result"];
    (*(v3 + 16))(v3, v5, v6);
  }
}

void sub_1E0C47280(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v5 = a2;
    v6 = [a3 objectForKeyedSubscript:@"Result"];
    (*(v3 + 16))(v3, v5, v6);
  }
}

uint64_t sub_1E0C47434(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_1E0C475E8(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1E0C47600(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *MEMORY[0x1E696A798];
    v5 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x16uLL);
    v6 = CWFErrorWithDescription(v4, 22, v5);
    (*(v3 + 16))(v3, v6);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0C4774C(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v5 = a2;
    v6 = [a3 objectForKeyedSubscript:@"Result"];
    (*(v3 + 16))(v3, v5, v6);
  }
}

void sub_1E0C4789C(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v5 = a2;
    v6 = [a3 objectForKeyedSubscript:@"Result"];
    (*(v3 + 16))(v3, v5, v6);
  }
}

void sub_1E0C479D8(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) remoteObjectProxy];
  [v3 queryNearbyRecommendedNetworksAndReply:*(a1 + 40)];

  objc_autoreleasePoolPop(v2);
}

uint64_t sub_1E0C47BD4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1E0C47BEC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *MEMORY[0x1E696A798];
    v5 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x16uLL);
    v6 = CWFErrorWithDescription(v4, 22, v5);
    (*(v3 + 16))(v3, v6);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0C47D50(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) remoteObjectProxy];
  [v3 rememberCloudNetworkProfile:*(a1 + 40) reply:*(a1 + 48)];

  objc_autoreleasePoolPop(v2);
}

void sub_1E0C47E74(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) remoteObjectProxy];
  [v3 forgetCloudNetworkProfile:*(a1 + 40) reply:*(a1 + 48)];

  objc_autoreleasePoolPop(v2);
}

void sub_1E0C47F80(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v5 = a2;
    v6 = [a3 objectForKeyedSubscript:@"Result"];
    (*(v3 + 16))(v3, v5, v6);
  }
}

void sub_1E0C480BC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) remoteObjectProxy];
  [v3 queryCloudNetworksAndReply:*(a1 + 40)];

  objc_autoreleasePoolPop(v2);
}

void sub_1E0C481E0(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) remoteObjectProxy];
  [v3 dumpLogs:*(a1 + 40) reply:*(a1 + 48)];

  objc_autoreleasePoolPop(v2);
}

void sub_1E0C483DC(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v5 = a2;
    v6 = [a3 objectForKeyedSubscript:@"Result"];
    (*(v3 + 16))(v3, v5, v6);
  }
}

void sub_1E0C48480(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *MEMORY[0x1E696A798];
    v5 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x16uLL);
    v6 = CWFErrorWithDescription(v4, 22, v5);
    (*(v3 + 16))(v3, v6, 0);
  }

  objc_autoreleasePoolPop(v2);
}

uint64_t sub_1E0C486B0(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1E0C486C8(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *MEMORY[0x1E696A798];
    v5 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x16uLL);
    v6 = CWFErrorWithDescription(v4, 22, v5);
    (*(v3 + 16))(v3, v6);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0C4882C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) remoteObjectProxy];
  [v3 queryCaptivePortalCredentialsForKnownNetworkProfile:*(a1 + 40) reply:*(a1 + 48)];

  objc_autoreleasePoolPop(v2);
}

void sub_1E0C48970(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) remoteObjectProxy];
  [v3 setCaptivePortalCredentials:*(a1 + 40) knownNetworkProfile:*(a1 + 48) reply:*(a1 + 56)];

  objc_autoreleasePoolPop(v2);
}

void sub_1E0C48B70(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v5 = a2;
    v6 = [a3 objectForKeyedSubscript:@"Result"];
    (*(v3 + 16))(v3, v5, v6);
  }
}

void sub_1E0C48C14(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *MEMORY[0x1E696A798];
    v5 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x16uLL);
    v6 = CWFErrorWithDescription(v4, 22, v5);
    (*(v3 + 16))(v3, v6, 0);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0C48E54(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v5 = a2;
    v6 = [a3 objectForKeyedSubscript:@"Result"];
    (*(v3 + 16))(v3, v5, v6);
  }
}

void sub_1E0C48EF8(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *MEMORY[0x1E696A798];
    v5 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x16uLL);
    v6 = CWFErrorWithDescription(v4, 22, v5);
    (*(v3 + 16))(v3, v6, 0);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0C49140(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v5 = a2;
    v6 = [a3 objectForKeyedSubscript:@"Result"];
    (*(v3 + 16))(v3, v5, [v6 integerValue]);
  }
}

void sub_1E0C492C4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) remoteObjectProxy];
  [v3 nearbyConfirmBrokenBackhaulUsingTimeout:*(a1 + 56) count:*(a1 + 64) network:*(a1 + 40) minimumCacheTimestamp:*(a1 + 72) reply:*(a1 + 48)];

  objc_autoreleasePoolPop(v2);
}

void sub_1E0C493F0(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) remoteObjectProxy];
  [v3 allowBrokenBackhaulPersonalHotspotFallbackForNetwork:*(a1 + 40) reply:*(a1 + 48)];

  objc_autoreleasePoolPop(v2);
}

uint64_t sub_1E0C495EC(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1E0C49604(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *MEMORY[0x1E696A798];
    v5 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x16uLL);
    v6 = CWFErrorWithDescription(v4, 22, v5);
    (*(v3 + 16))(v3, v6);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0C49788(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) remoteObjectProxy];
  [v3 presentWiFiNetworkSharingAskToShareProxCardForClientID:*(a1 + 40) accessoryName:*(a1 + 48) reply:*(a1 + 56)];

  objc_autoreleasePoolPop(v2);
}

void sub_1E0C498D0(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) remoteObjectProxy];
  [v3 presentWiFiNetworkSharingAuthorizationProxCardForClientID:*(a1 + 40) accessoryName:*(a1 + 48) reply:*(a1 + 56)];

  objc_autoreleasePoolPop(v2);
}

void sub_1E0C49A44(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) remoteObjectProxy];
  [v3 presentWiFiNetworkSharingAskToShareUserNotificationForClientID:*(a1 + 40) network:*(a1 + 48) accessoryName:*(a1 + 56) reply:*(a1 + 64)];

  objc_autoreleasePoolPop(v2);
}

void sub_1E0C49B40(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) remoteObjectProxy];
  [v3 performWiFiNetworkSharingAccessoryScanWithReply:*(a1 + 40)];

  objc_autoreleasePoolPop(v2);
}

void sub_1E0C49F80(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v5 = a2;
    v6 = [a3 objectForKeyedSubscript:@"Result"];
    (*(v3 + 16))(v3, v5, v6);
  }
}

void sub_1E0C4A024(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *MEMORY[0x1E696A798];
    v5 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x16uLL);
    v6 = CWFErrorWithDescription(v4, 22, v5);
    (*(v3 + 16))(v3, v6, 0);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0C4A23C(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v5 = a2;
    v6 = [a3 objectForKeyedSubscript:@"Result"];
    (*(v3 + 16))(v3, v5, v6);
  }
}

void sub_1E0C4A2E0(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *MEMORY[0x1E696A798];
    v5 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x16uLL);
    v6 = CWFErrorWithDescription(v4, 22, v5);
    (*(v3 + 16))(v3, v6, 0);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0C4A4F8(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v5 = a2;
    v6 = [a3 objectForKeyedSubscript:@"Result"];
    (*(v3 + 16))(v3, v5, [v6 integerValue]);
  }
}

void sub_1E0C4A5A0(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *MEMORY[0x1E696A798];
    v5 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x16uLL);
    v6 = CWFErrorWithDescription(v4, 22, v5);
    (*(v3 + 16))(v3, v6, 0);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0C4A7B8(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v5 = a2;
    v6 = [a3 objectForKeyedSubscript:@"Result"];
    (*(v3 + 16))(v3, v5, [v6 integerValue]);
  }
}

void sub_1E0C4A860(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *MEMORY[0x1E696A798];
    v5 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x16uLL);
    v6 = CWFErrorWithDescription(v4, 22, v5);
    (*(v3 + 16))(v3, v6, 0);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0C4AAA0(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"WiFiNetworkSharingAskToShareStatus"];
  v7 = [v6 integerValue];

  v8 = [v5 objectForKeyedSubscript:@"Timestamp"];

  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))(v9, v10, v7, v8);
  }
}

void sub_1E0C4AB64(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *MEMORY[0x1E696A798];
    v5 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x16uLL);
    v6 = CWFErrorWithDescription(v4, 22, v5);
    (*(v3 + 16))(v3, v6, 0, 0);
  }

  objc_autoreleasePoolPop(v2);
}

uint64_t sub_1E0C4ADE8(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1E0C4AE00(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *MEMORY[0x1E696A798];
    v5 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x16uLL);
    v6 = CWFErrorWithDescription(v4, 22, v5);
    (*(v3 + 16))(v3, v6);
  }

  objc_autoreleasePoolPop(v2);
}

uint64_t sub_1E0C4B040(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1E0C4B058(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *MEMORY[0x1E696A798];
    v5 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x16uLL);
    v6 = CWFErrorWithDescription(v4, 22, v5);
    (*(v3 + 16))(v3, v6);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0C4B26C(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v5 = a2;
    v6 = [a3 objectForKeyedSubscript:@"Result"];
    (*(v3 + 16))(v3, v5, v6);
  }
}

void sub_1E0C4B310(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *MEMORY[0x1E696A798];
    v5 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x16uLL);
    v6 = CWFErrorWithDescription(v4, 22, v5);
    (*(v3 + 16))(v3, v6, 0);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0C4B528(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v5 = a2;
    v6 = [a3 objectForKeyedSubscript:@"Result"];
    (*(v3 + 16))(v3, v5, v6);
  }
}

void sub_1E0C4B5CC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *MEMORY[0x1E696A798];
    v5 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x16uLL);
    v6 = CWFErrorWithDescription(v4, 22, v5);
    (*(v3 + 16))(v3, v6, 0);
  }

  objc_autoreleasePoolPop(v2);
}

uint64_t sub_1E0C4B6F4(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1ECE81B08 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *sub_1E0C4B768(void *a1)
{
  v2 = sub_1E0BC8594();
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    a1 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *AppSupportLibrary(void)"];
    [a1 handleFailureInFunction:v3 file:@"CWFXPCConnection.m" lineNumber:42 description:{@"%s", 0}];

    __break(1u);
    free(v5);
  }

  result = dlsym(v3, "CPCopyBundleIdentifierAndTeamFromAuditToken");
  *(*(a1[4] + 8) + 24) = result;
  off_1ECE81AC8 = *(*(a1[4] + 8) + 24);
  return result;
}

uint64_t sub_1E0C4B848(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1ED7E3878 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1E0C4B8BC(void *a1)
{
  if (!sub_1E0BCC5FC())
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    a1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *CoreLocationLibrary(void)"];
    [v2 handleFailureInFunction:a1 file:@"CWFXPCConnection.m" lineNumber:50 description:{@"%s", 0}];

    __break(1u);
    free(v3);
  }

  *(*(a1[4] + 8) + 24) = objc_getClass("CLLocationManager");
  if (*(*(a1[4] + 8) + 24))
  {
    qword_1ECE81AD0 = *(*(a1[4] + 8) + 24);
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCLLocationManagerClass(void)_block_invoke"];
    [v4 handleFailureInFunction:v5 file:@"CWFXPCConnection.m" lineNumber:51 description:{@"Unable to find class %s", "CLLocationManager"}];

    __break(1u);
  }
}

void sub_1E0C4CBFC(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = CWFGetOTAOSLog();
  if (os_signpost_enabled(v2))
  {
    LOWORD(v7) = 0;
    _os_signpost_emit_with_name_impl(&dword_1E0BBF000, v2, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "_waitingQueue dispatchWaitForInterfaceAddedThenBlockify", "", &v7, 2u);
  }

  v3 = CWFGetOTAOSLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 32);
    v7 = 136446978;
    v8 = "[CWFAssetPowerTableElector dispatchWaitForInterfaceAddedThenBlockify:completion:]_block_invoke";
    v9 = 1024;
    v10 = 308;
    v11 = 2080;
    v12 = "[CWFAssetPowerTableElector dispatchWaitForInterfaceAddedThenBlockify:completion:]_block_invoke";
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_1E0BBF000, v3, OS_LOG_TYPE_INFO, "%{public}s::%d:%s: will call waitForInterfaceAdded to block until date: %@", &v7, 0x26u);
  }

  [*(a1 + 40) waitForInterfaceAdded:*(a1 + 32)];
  (*(*(a1 + 48) + 16))();
  v5 = CWFGetOTAOSLog();
  if (os_signpost_enabled(v5))
  {
    LOWORD(v7) = 0;
    _os_signpost_emit_with_name_impl(&dword_1E0BBF000, v5, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "_waitingQueue dispatchWaitForInterfaceAddedThenBlockify", "", &v7, 2u);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void sub_1E0C4D178(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E0C4D1C4(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = CWFGetOTAOSLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = sub_1E0BC9038([v3 type]);
    *buf = 136446978;
    v16 = "[CWFAssetPowerTableElector setupInterfaceAddedAndDriverAvailMonitor]_block_invoke";
    v17 = 1024;
    v18 = 332;
    v19 = 2080;
    v20 = "[CWFAssetPowerTableElector setupInterfaceAddedAndDriverAvailMonitor]_block_invoke";
    v21 = 2112;
    v22 = v5;
    _os_log_impl(&dword_1E0BBF000, v4, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:%s: setEventHandler Event %@", buf, 0x26u);
  }

  v6 = CWFGetOTAOSLog();
  if (os_signpost_enabled(v6))
  {
    v7 = sub_1E0BC9038([v3 type]);
    *buf = 138412290;
    v16 = v7;
    _os_signpost_emit_with_name_impl(&dword_1E0BBF000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "setEventHandler Event", "%@", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = [WeakRetained _signalQueue];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1E0C4D3C0;
  v12[3] = &unk_1E86E6420;
  v13 = v3;
  v14 = WeakRetained;
  v10 = v3;
  dispatch_async(v9, v12);

  v11 = *MEMORY[0x1E69E9840];
}

void sub_1E0C4D3C0(uint64_t a1)
{
  v41 = *MEMORY[0x1E69E9840];
  v2 = CWFGetOTAOSLog();
  if (os_signpost_enabled(v2))
  {
    v3 = sub_1E0BC9038([*(a1 + 32) type]);
    *buf = 138412290;
    v34 = v3;
    _os_signpost_emit_with_name_impl(&dword_1E0BBF000, v2, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "_signalQueue setEventHandler", "%@", buf, 0xCu);
  }

  if (*(a1 + 40))
  {
    if ([*(a1 + 32) type] != 10)
    {
      goto LABEL_20;
    }

    v4 = CWFGetOTAOSLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      *buf = 136446978;
      v34 = "[CWFAssetPowerTableElector setupInterfaceAddedAndDriverAvailMonitor]_block_invoke";
      v35 = 1024;
      v36 = 349;
      v37 = 2080;
      v38 = "[CWFAssetPowerTableElector setupInterfaceAddedAndDriverAvailMonitor]_block_invoke";
      v39 = 2112;
      v40 = v5;
      _os_log_impl(&dword_1E0BBF000, v4, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:%s: CWFEventTypeInterfaceAdded %@", buf, 0x26u);
    }

    v29 = 0;
    v30 = &v29;
    v31 = 0x2020000000;
    v32 = 0;
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = sub_1E0C4DAF4;
    v28[3] = &unk_1E86E6F08;
    v28[4] = &v29;
    sub_1E0BF1DA8(@"ignore-interface-up", @"com.apple.wifi.powertable", v28);
    if (v30[3])
    {
      v6 = CWFGetOTAOSLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 136446722;
        v34 = "[CWFAssetPowerTableElector setupInterfaceAddedAndDriverAvailMonitor]_block_invoke";
        v35 = 1024;
        v36 = 367;
        v37 = 2080;
        v38 = "[CWFAssetPowerTableElector setupInterfaceAddedAndDriverAvailMonitor]_block_invoke";
        _os_log_impl(&dword_1E0BBF000, v6, OS_LOG_TYPE_INFO, "%{public}s::%d:%s: Skipping CWFEventTypeInterfaceAdded", buf, 0x1Cu);
      }
    }

    else
    {
      [*(a1 + 40) set_interfaceAddedEventOccurred:1];
      v10 = CWFGetOTAOSLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = [*(a1 + 40) _interfaceAddedEventOccurred];
        *buf = 136446978;
        v34 = "[CWFAssetPowerTableElector setupInterfaceAddedAndDriverAvailMonitor]_block_invoke";
        v35 = 1024;
        v36 = 360;
        v37 = 2080;
        v38 = "[CWFAssetPowerTableElector setupInterfaceAddedAndDriverAvailMonitor]_block_invoke";
        v39 = 1024;
        LODWORD(v40) = v11;
        _os_log_impl(&dword_1E0BBF000, v10, OS_LOG_TYPE_INFO, "%{public}s::%d:%s: SET _interfaceAddedEventOccurred %d", buf, 0x22u);
      }

      v12 = [*(a1 + 40) _interfaceAddedEventCondition];
      v13 = v12 == 0;

      if (v13)
      {
        goto LABEL_19;
      }

      v14 = [*(a1 + 40) _interfaceAddedEventCondition];
      [v14 lock];

      v15 = [*(a1 + 40) _interfaceAddedEventCondition];
      [v15 signal];

      v6 = [*(a1 + 40) _interfaceAddedEventCondition];
      [v6 unlock];
    }

LABEL_19:
    _Block_object_dispose(&v29, 8);
LABEL_20:
    if ([*(a1 + 32) type] != 42)
    {
      goto LABEL_33;
    }

    v16 = CWFGetOTAOSLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(a1 + 32);
      *buf = 136446978;
      v34 = "[CWFAssetPowerTableElector setupInterfaceAddedAndDriverAvailMonitor]_block_invoke";
      v35 = 1024;
      v36 = 372;
      v37 = 2080;
      v38 = "[CWFAssetPowerTableElector setupInterfaceAddedAndDriverAvailMonitor]_block_invoke";
      v39 = 2112;
      v40 = v17;
      _os_log_impl(&dword_1E0BBF000, v16, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:%s: CWFEventTypeDriverAvailable %@", buf, 0x26u);
    }

    v29 = 0;
    v30 = &v29;
    v31 = 0x2020000000;
    v32 = 0;
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = sub_1E0C4DBF0;
    v27[3] = &unk_1E86E6F08;
    v27[4] = &v29;
    sub_1E0BF1DA8(@"ignore-driver-availability", @"com.apple.wifi.powertable", v27);
    if (v30[3])
    {
      v18 = CWFGetOTAOSLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 136446722;
        v34 = "[CWFAssetPowerTableElector setupInterfaceAddedAndDriverAvailMonitor]_block_invoke";
        v35 = 1024;
        v36 = 392;
        v37 = 2080;
        v38 = "[CWFAssetPowerTableElector setupInterfaceAddedAndDriverAvailMonitor]_block_invoke";
        _os_log_impl(&dword_1E0BBF000, v18, OS_LOG_TYPE_INFO, "%{public}s::%d:%s: Skipping CWFEventTypeDriverAvailable", buf, 0x1Cu);
      }
    }

    else
    {
      v19 = *(a1 + 40);
      if (!v19)
      {
        goto LABEL_32;
      }

      [v19 set_driverAvailEventOccurred:1];
      v20 = CWFGetOTAOSLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = [*(a1 + 40) _driverAvailEventOccurred];
        *buf = 136446978;
        v34 = "[CWFAssetPowerTableElector setupInterfaceAddedAndDriverAvailMonitor]_block_invoke";
        v35 = 1024;
        v36 = 384;
        v37 = 2080;
        v38 = "[CWFAssetPowerTableElector setupInterfaceAddedAndDriverAvailMonitor]_block_invoke";
        v39 = 1024;
        LODWORD(v40) = v21;
        _os_log_impl(&dword_1E0BBF000, v20, OS_LOG_TYPE_INFO, "%{public}s::%d:%s: SET _driverAvailEventOccurred %d", buf, 0x22u);
      }

      v22 = [*(a1 + 40) _driverAvailEventCondition];
      v23 = v22 == 0;

      if (v23)
      {
        goto LABEL_32;
      }

      v24 = [*(a1 + 40) _driverAvailEventCondition];
      [v24 lock];

      v25 = [*(a1 + 40) _driverAvailEventCondition];
      [v25 signal];

      v18 = [*(a1 + 40) _driverAvailEventCondition];
      [v18 unlock];
    }

LABEL_32:
    _Block_object_dispose(&v29, 8);
LABEL_33:
    v8 = CWFGetOTAOSLog();
    if (os_signpost_enabled(v8))
    {
      *buf = 0;
      v9 = "";
      goto LABEL_35;
    }

    goto LABEL_36;
  }

  v7 = CWFGetOTAOSLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446722;
    v34 = "[CWFAssetPowerTableElector setupInterfaceAddedAndDriverAvailMonitor]_block_invoke";
    v35 = 1024;
    v36 = 342;
    v37 = 2080;
    v38 = "[CWFAssetPowerTableElector setupInterfaceAddedAndDriverAvailMonitor]_block_invoke";
    _os_log_impl(&dword_1E0BBF000, v7, OS_LOG_TYPE_ERROR, "%{public}s::%d:%s: CWFAssetPowerTableElector has gone away", buf, 0x1Cu);
  }

  v8 = CWFGetOTAOSLog();
  if (os_signpost_enabled(v8))
  {
    *buf = 0;
    v9 = "Error";
LABEL_35:
    _os_signpost_emit_with_name_impl(&dword_1E0BBF000, v8, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "_signalQueue setEventHandler", v9, buf, 2u);
  }

LABEL_36:

  v26 = *MEMORY[0x1E69E9840];
}

void sub_1E0C4DAB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E0C4DAF4(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = CWFGetOTAOSLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = 136446978;
    v7 = "[CWFAssetPowerTableElector setupInterfaceAddedAndDriverAvailMonitor]_block_invoke";
    v8 = 1024;
    v9 = 354;
    v10 = 2080;
    v11 = "[CWFAssetPowerTableElector setupInterfaceAddedAndDriverAvailMonitor]_block_invoke";
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&dword_1E0BBF000, v4, OS_LOG_TYPE_INFO, "%{public}s::%d:%s: kPowerTable_ignore_interface_up is %@", &v6, 0x26u);
  }

  *(*(*(a1 + 32) + 8) + 24) = [v3 BOOLValue];
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1E0C4DBF0(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = CWFGetOTAOSLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = 136446978;
    v7 = "[CWFAssetPowerTableElector setupInterfaceAddedAndDriverAvailMonitor]_block_invoke";
    v8 = 1024;
    v9 = 377;
    v10 = 2080;
    v11 = "[CWFAssetPowerTableElector setupInterfaceAddedAndDriverAvailMonitor]_block_invoke";
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&dword_1E0BBF000, v4, OS_LOG_TYPE_INFO, "%{public}s::%d:%s: kPowerTable_ignore_driver_availability is %@", &v6, 0x26u);
  }

  *(*(*(a1 + 32) + 8) + 24) = [v3 BOOLValue];
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1E0C4E334(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E0C4E358(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = CWFGetOTAOSLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = 136446978;
    v7 = "[CWFAssetPowerTableElector performVersionFetchBlockify:]_block_invoke";
    v8 = 1024;
    v9 = 477;
    v10 = 2080;
    v11 = "[CWFAssetPowerTableElector performVersionFetchBlockify:]_block_invoke";
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&dword_1E0BBF000, v4, OS_LOG_TYPE_INFO, "%{public}s::%d:%s: kPowerTable_override_ver_fetch_success is %@", &v6, 0x26u);
  }

  *(*(*(a1 + 32) + 8) + 24) = [v3 BOOLValue];
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1E0C4EA60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a23, 8);
  objc_destroyWeak((v29 + 40));
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

void sub_1E0C4EACC(uint64_t a1)
{
  v2 = CWFGetOTAOSLog();
  if (os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1E0BBF000, v2, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "_apiQueue retryingVersionFetchBlock", "", buf, 2u);
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1E0C4EBD4;
  v6[3] = &unk_1E86E6F58;
  v5 = *(a1 + 32);
  v3 = *(&v5 + 1);
  *&v4 = *(a1 + 48);
  *(&v4 + 1) = *(a1 + 56);
  v7 = v5;
  v8 = v4;
  [v5 performVersionFetchBlockify:v6];
}

void sub_1E0C4EBD4(uint64_t a1, int a2, void *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [*(a1 + 32) _condPowerTableFetched];
  [v6 lock];

  if (a2)
  {
    v7 = CWFGetOTAOSLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      v26 = "[CWFAssetPowerTableElector performPowerTableVersionRequestWithDeadline:]_block_invoke";
      v27 = 1024;
      v28 = 508;
      v29 = 2080;
      v30 = "[CWFAssetPowerTableElector performPowerTableVersionRequestWithDeadline:]_block_invoke";
      _os_log_impl(&dword_1E0BBF000, v7, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:%s: Calling performVersionFetchBlockify success", buf, 0x1Cu);
    }

    [*(a1 + 32) set_powerTableFetched:1];
    [*(a1 + 40) addEntriesFromDictionary:v5];
    goto LABEL_13;
  }

  [*(a1 + 48) timeIntervalSinceNow];
  if (v8 <= 1.0)
  {
    v15 = CWFGetOTAOSLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v26 = "[CWFAssetPowerTableElector performPowerTableVersionRequestWithDeadline:]_block_invoke";
      v27 = 1024;
      v28 = 534;
      v29 = 2080;
      v30 = "[CWFAssetPowerTableElector performPowerTableVersionRequestWithDeadline:]_block_invoke";
      _os_log_impl(&dword_1E0BBF000, v15, OS_LOG_TYPE_ERROR, "%{public}s::%d:%s: ERROR performVersionFetchBlockify never succeeded, exiting", buf, 0x1Cu);
    }

    [*(a1 + 32) set_powerTableFetched:0];
    v16 = MEMORY[0x1E696ABC0];
    v23 = *MEMORY[0x1E696A588];
    v24 = @"CWFPowerTableElectionTimedOutWaitingForPerformVersionFetch";
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    v18 = [v16 errorWithDomain:@"com.apple.wifi.powertable" code:5 userInfo:v17];
    [*(a1 + 32) setError:v18];

LABEL_13:
    v19 = [*(a1 + 32) _condPowerTableFetched];
    [v19 signal];

    v20 = [*(a1 + 32) _condPowerTableFetched];
    [v20 unlock];

    v14 = CWFGetOTAOSLog();
    if (os_signpost_enabled(v14))
    {
      *buf = 0;
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  v9 = [*(a1 + 32) _condPowerTableFetched];
  [v9 unlock];

  v10 = CWFGetOTAOSLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    [*(a1 + 48) timeIntervalSinceNow];
    *buf = 136446978;
    v26 = "[CWFAssetPowerTableElector performPowerTableVersionRequestWithDeadline:]_block_invoke";
    v27 = 1024;
    v28 = 518;
    v29 = 2080;
    v30 = "[CWFAssetPowerTableElector performPowerTableVersionRequestWithDeadline:]_block_invoke";
    v31 = 2048;
    v32 = v11;
    _os_log_impl(&dword_1E0BBF000, v10, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:%s: Calling performVersionFetchBlockify again, duration until deadline %f", buf, 0x26u);
  }

  v12 = dispatch_time(0, 1000000000);
  v13 = [*(a1 + 32) _apiQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0C4EFD0;
  block[3] = &unk_1E86E5600;
  block[4] = *(a1 + 56);
  dispatch_after(v12, v13, block);

  v14 = CWFGetOTAOSLog();
  if (os_signpost_enabled(v14))
  {
    *buf = 0;
LABEL_15:
    _os_signpost_emit_with_name_impl(&dword_1E0BBF000, v14, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "_apiQueue retryingVersionFetchBlock", "", buf, 2u);
  }

LABEL_16:

  v21 = *MEMORY[0x1E69E9840];
}

void sub_1E0C4EFD0(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((*(*(a1 + 32) + 8) + 40));
  v2 = CWFGetOTAOSLog();
  v3 = v2;
  if (WeakRetained)
  {
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136446722;
      v6 = "[CWFAssetPowerTableElector performPowerTableVersionRequestWithDeadline:]_block_invoke";
      v7 = 1024;
      v8 = 525;
      v9 = 2080;
      v10 = "[CWFAssetPowerTableElector performPowerTableVersionRequestWithDeadline:]_block_invoke";
      _os_log_impl(&dword_1E0BBF000, v3, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:%s: inside strong retryingVersionFetchBlock", &v5, 0x1Cu);
    }

    WeakRetained[2](WeakRetained);
  }

  else
  {
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v5 = 136446722;
      v6 = "[CWFAssetPowerTableElector performPowerTableVersionRequestWithDeadline:]_block_invoke";
      v7 = 1024;
      v8 = 528;
      v9 = 2080;
      v10 = "[CWFAssetPowerTableElector performPowerTableVersionRequestWithDeadline:]_block_invoke";
      _os_log_impl(&dword_1E0BBF000, v3, OS_LOG_TYPE_ERROR, "%{public}s::%d:%s: no strong retryingVersionFetchBlock", &v5, 0x1Cu);
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

void sub_1E0C4F914(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = CWFGetOTAOSLog();
  if (os_signpost_enabled(v2))
  {
    LOWORD(v9) = 0;
    _os_signpost_emit_with_name_impl(&dword_1E0BBF000, v2, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "_coordinationQueue handleCENPowerTableEvaluationNotification", "", &v9, 2u);
  }

  [*(a1 + 32) _handleCENPowerTableEvaluationNotification:*(a1 + 40)];
  v3 = CWFGetOTAOSLog();
  v4 = v3;
  v5 = *(a1 + 56);
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    v6 = *(a1 + 48);
    v9 = 138412290;
    v10 = v6;
    _os_signpost_emit_with_name_impl(&dword_1E0BBF000, v4, OS_SIGNPOST_INTERVAL_END, v5, "NSNotification", "%@", &v9, 0xCu);
  }

  v7 = CWFGetOTAOSLog();
  if (os_signpost_enabled(v7))
  {
    LOWORD(v9) = 0;
    _os_signpost_emit_with_name_impl(&dword_1E0BBF000, v7, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "_coordinationQueue handleCENPowerTableEvaluationNotification", "", &v9, 2u);
  }

  v8 = *MEMORY[0x1E69E9840];
}

void sub_1E0C50F08(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = CWFGetOTAOSLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = 136446978;
    v7 = "[CWFAssetPowerTableElector _handleCENPowerTableEvaluationNotification:]_block_invoke";
    v8 = 1024;
    v9 = 701;
    v10 = 2080;
    v11 = "[CWFAssetPowerTableElector _handleCENPowerTableEvaluationNotification:]_block_invoke";
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&dword_1E0BBF000, v4, OS_LOG_TYPE_INFO, "%{public}s::%d:%s: kPowerTable_ignore_readiness_input is %@", &v6, 0x26u);
  }

  *(*(*(a1 + 32) + 8) + 24) = [v3 BOOLValue];
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1E0C51004(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = CWFGetOTAOSLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = 136446978;
    v7 = "[CWFAssetPowerTableElector _handleCENPowerTableEvaluationNotification:]_block_invoke";
    v8 = 1024;
    v9 = 721;
    v10 = 2080;
    v11 = "[CWFAssetPowerTableElector _handleCENPowerTableEvaluationNotification:]_block_invoke";
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&dword_1E0BBF000, v4, OS_LOG_TYPE_INFO, "%{public}s::%d:%s: kPowerTable_ignore_start_input is %@", &v6, 0x26u);
  }

  *(*(*(a1 + 32) + 8) + 24) = [v3 BOOLValue];
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1E0C51100(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = CWFGetOTAOSLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = 136446978;
    v7 = "[CWFAssetPowerTableElector _handleCENPowerTableEvaluationNotification:]_block_invoke";
    v8 = 1024;
    v9 = 735;
    v10 = 2080;
    v11 = "[CWFAssetPowerTableElector _handleCENPowerTableEvaluationNotification:]_block_invoke";
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&dword_1E0BBF000, v4, OS_LOG_TYPE_INFO, "%{public}s::%d:%s: kPowerTable_ignore_requesting_vote_input is %@", &v6, 0x26u);
  }

  *(*(*(a1 + 32) + 8) + 24) = [v3 BOOLValue];
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1E0C51B60(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = CWFGetOTAOSLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = 136446978;
    v7 = "[CWFAssetPowerTableElector isSessionCurrentlyBlocking]_block_invoke";
    v8 = 1024;
    v9 = 856;
    v10 = 2080;
    v11 = "[CWFAssetPowerTableElector isSessionCurrentlyBlocking]_block_invoke";
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&dword_1E0BBF000, v4, OS_LOG_TYPE_INFO, "%{public}s::%d:%s: kPowerTable__max_session_active_interval to %@", &v6, 0x26u);
  }

  [*(a1 + 32) set_maxSessionActiveInterval:{objc_msgSend(v3, "integerValue")}];
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1E0C52BEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E0C52C40(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = CWFGetOTAOSLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = 136446978;
    v7 = "[CWFAssetPowerTableElector handleCENPowerTableEvaluationStateRequestingReadiness:dueInterval:]_block_invoke";
    v8 = 1024;
    v9 = 954;
    v10 = 2080;
    v11 = "[CWFAssetPowerTableElector handleCENPowerTableEvaluationStateRequestingReadiness:dueInterval:]_block_invoke";
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&dword_1E0BBF000, v4, OS_LOG_TYPE_INFO, "%{public}s::%d:%s: kPowerTable_override_readiness_response to %@", &v6, 0x26u);
  }

  *(*(*(a1 + 32) + 8) + 24) = [v3 BOOLValue];
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1E0C52D3C(uint64_t a1)
{
  v2 = [*(a1 + 32) _signalQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0C52DCC;
  block[3] = &unk_1E86E6010;
  block[4] = *(a1 + 32);
  dispatch_async(v2, block);
}

void sub_1E0C52DCC(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = CWFGetOTAOSLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [*(a1 + 32) _interfaceAddedEventOccurred];
    v4 = [*(a1 + 32) _driverAvailEventOccurred];
    v9 = 136447234;
    v10 = "[CWFAssetPowerTableElector handleCENPowerTableEvaluationStateRequestingReadiness:dueInterval:]_block_invoke_2";
    v11 = 1024;
    v12 = 1000;
    v13 = 2080;
    v14 = "[CWFAssetPowerTableElector handleCENPowerTableEvaluationStateRequestingReadiness:dueInterval:]_block_invoke_2";
    v15 = 1024;
    v16 = v3;
    v17 = 1024;
    v18 = v4;
    _os_log_impl(&dword_1E0BBF000, v2, OS_LOG_TYPE_INFO, "%{public}s::%d:%s: Wait done: _interfaceAddedEventOccurred %d _driverAvailEventOccurred %d", &v9, 0x28u);
  }

  if ([*(a1 + 32) _interfaceAddedEventOccurred])
  {
    [*(a1 + 32) set_readyToFetchLoadedPT:1];
    v5 = [*(a1 + 32) _readyToFetchLoadedPTCondition];
    [v5 lock];

    v6 = [*(a1 + 32) _readyToFetchLoadedPTCondition];
    [v6 signal];

    v7 = [*(a1 + 32) _readyToFetchLoadedPTCondition];
    [v7 unlock];
  }

  v8 = *MEMORY[0x1E69E9840];
}

void sub_1E0C536B4(uint64_t a1, char a2, void *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = a2;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = sub_1E0C539A4;
  v18[3] = &unk_1E86E6F08;
  v18[4] = &v19;
  sub_1E0BF1DA8(@"override-vote-response", @"com.apple.wifi.powertable", v18);
  v6 = CWFGetOTAOSLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = *(v20 + 24);
    v8 = *(a1 + 32);
    *buf = 136447234;
    v24 = "[CWFAssetPowerTableElector handleCENPowerTableEvaluationStateRequestingVotes:dueInterval:]_block_invoke";
    v25 = 1024;
    v26 = 1085;
    v27 = 2080;
    v28 = "[CWFAssetPowerTableElector handleCENPowerTableEvaluationStateRequestingVotes:dueInterval:]_block_invoke";
    v29 = 1024;
    v30 = v7;
    v31 = 2112;
    v32 = v8;
    _os_log_impl(&dword_1E0BBF000, v6, OS_LOG_TYPE_INFO, "%{public}s::%d:%s: Sending powerTableVote voteResult %d for session %@", buf, 0x2Cu);
  }

  v9 = [*(a1 + 40) _apiQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0C53AA0;
  block[3] = &unk_1E86E6A28;
  block[4] = *(a1 + 40);
  block[5] = &v19;
  dispatch_async(v9, block);

  if (*(v20 + 24))
  {
    v10 = &unk_1F5BBC3D0;
  }

  else
  {
    v10 = &unk_1F5BBC3E8;
  }

  [*(a1 + 40) persistSession:*(a1 + 32) data:v10 forKey:@"vote-reply"];
  [*(a1 + 40) set_powerTableEvaluationState:3];
  v12 = *(a1 + 32);
  v11 = *(a1 + 40);
  v13 = [objc_opt_class() powerTableEvaluationStateAsString:{objc_msgSend(v11, "_powerTableEvaluationState")}];
  [v11 persistSession:v12 data:v13 forKey:@"state"];

  v14 = *(a1 + 40);
  v15 = [objc_opt_class() powerTableEvaluationStateAsString:{objc_msgSend(v14, "_powerTableEvaluationState")}];
  [v14 persist:v15 forKey:@"powertable-election-session-state"];

  _Block_object_dispose(&v19, 8);
  v16 = *MEMORY[0x1E69E9840];
}

void sub_1E0C53980(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E0C539A4(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = CWFGetOTAOSLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = 136446978;
    v7 = "[CWFAssetPowerTableElector handleCENPowerTableEvaluationStateRequestingVotes:dueInterval:]_block_invoke_2";
    v8 = 1024;
    v9 = 1081;
    v10 = 2080;
    v11 = "[CWFAssetPowerTableElector handleCENPowerTableEvaluationStateRequestingVotes:dueInterval:]_block_invoke_2";
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&dword_1E0BBF000, v4, OS_LOG_TYPE_INFO, "%{public}s::%d:%s: kPowerTable_override_vote_response to %@", &v6, 0x26u);
  }

  *(*(*(a1 + 32) + 8) + 24) = [v3 BOOLValue];
  v5 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1E0C552B4()
{
  qword_1ED7E3968 = objc_alloc_init(CWFHotspotClientManager);

  return MEMORY[0x1EEE66BB8]();
}

void sub_1E0C55618(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained deviceDiscoveryManager];
  [v2 startDiscoveringDevicesIfNeeded:*(a1 + 32) withReason:1];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.corewifi.hotspotsessionstarted", 0, 0, 1u);
}

void sub_1E0C5587C(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = CWFGetPHOSLog();
  if (v3)
  {
    v4 = CWFGetPHOSLog();
  }

  else
  {
    v4 = MEMORY[0x1E69E9C10];
    v5 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v17 = 136447490;
    v18 = "[CWFHotspotClientManager clientAssociated:thisDeviceMACAddress:]_block_invoke";
    v19 = 2082;
    v20 = "CWFHotspotClientManager.m";
    v21 = 1024;
    v22 = 88;
    v23 = 2080;
    v24 = "[CWFHotspotClientManager clientAssociated:thisDeviceMACAddress:]_block_invoke";
    v25 = 2112;
    v26 = v6;
    v27 = 2112;
    v28 = v7;
    _os_log_send_and_compose_impl();
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.corewifi.hotspotsessionstarted", 0, 0, 1u);
  v9 = [WeakRetained activeHotspotClients];
  [v9 addObject:*(a1 + 32)];

  v10 = [WeakRetained deviceDiscoveryManager];
  [v10 startDiscoveringDevicesIfNeeded:*(a1 + 40) withReason:0];

  v11 = [WeakRetained deviceDiscoveryManager];
  v12 = [v11 fetchActiveDevices];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_1E0C55AA8;
  v14[3] = &unk_1E86E7080;
  v15 = *(a1 + 32);
  v16 = WeakRetained;
  [v12 enumerateObjectsUsingBlock:v14];

  v13 = *MEMORY[0x1E69E9840];
}

void sub_1E0C55AA8(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [v9 macAddress];
  if (v3)
  {
    v4 = v3;
    v5 = [v9 macAddress];
    v6 = [v5 isEqualToString:*(a1 + 32)];

    if (v6)
    {
      if ([v9 hasFetchedDeviceInfo])
      {
        v7 = [v9 userInfo];
        LocalCenter = CFNotificationCenterGetLocalCenter();
        CFNotificationCenterPostNotification(LocalCenter, @"com.apple.corewifi.deviceDiscovered", 0, v7, 1u);
      }

      else
      {
        v7 = [*(a1 + 40) deviceDiscoveryManager];
        [(__CFDictionary *)v7 fetchWiFiInfoForDevice:v9];
      }
    }
  }
}

void sub_1E0C55D54(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = CWFGetPHOSLog();
  if (v3)
  {
    v4 = CWFGetPHOSLog();
  }

  else
  {
    v4 = MEMORY[0x1E69E9C10];
    v5 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v13 = [WeakRetained activeHotspotClients];
    _os_log_send_and_compose_impl();
  }

  v7 = [WeakRetained activeHotspotClients];
  [v7 removeObject:*(a1 + 32)];

  v8 = [WeakRetained activeHotspotClients];
  v9 = [v8 count];

  if (!v9)
  {
    v10 = [WeakRetained deviceDiscoveryManager];
    [v10 invalidate];

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.corewifi.hotspotsessionstopped", 0, 0, 1u);
  }

  v12 = *MEMORY[0x1E69E9840];
}

void sub_1E0C55FD0(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = CWFGetPHOSLog();
  if (v2)
  {
    v3 = CWFGetPHOSLog();
  }

  else
  {
    v3 = MEMORY[0x1E69E9C10];
    v4 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    _os_log_send_and_compose_impl();
  }

  v5 = [WeakRetained activeHotspotClients];
  [v5 removeAllObjects];

  v6 = [WeakRetained deviceDiscoveryManager];
  [v6 invalidate];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.corewifi.hotspotsessionstopped", 0, 0, 1u);

  v8 = *MEMORY[0x1E69E9840];
}

void sub_1E0C5653C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [*(a1 + 32) macAddress];
  if (v2)
  {
    v3 = v2;
    v4 = [WeakRetained activeHotspotClients];
    v5 = [*(a1 + 32) macAddress];
    v6 = [v5 uppercaseString];
    v7 = [v4 containsObject:v6];

    if (v7)
    {
      v8 = [*(a1 + 32) userInfo];
      LocalCenter = CFNotificationCenterGetLocalCenter();
      CFNotificationCenterPostNotification(LocalCenter, @"com.apple.corewifi.deviceDiscovered", 0, v8, 1u);
    }
  }
}

void sub_1E0C56764(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v4 = off_1ECE86970;
  v11 = off_1ECE86970;
  if (!off_1ECE86970)
  {
    v5 = sub_1E0C571FC();
    v9[3] = dlsym(v5, "EAPSecIdentityHandleCreateSecIdentity");
    off_1ECE86970 = v9[3];
    v4 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (v4)
  {
    v4(a1, a2);
  }

  else
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"OSStatus soft_EAPSecIdentityHandleCreateSecIdentity(EAPSecIdentityHandleRef, SecIdentityRef *)"}];
    [v6 handleFailureInFunction:v7 file:@"CWFEAPCredentials.m" lineNumber:23 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_1E0C568B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E0C5691C(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v2 = off_1ECE86978;
  v9 = off_1ECE86978;
  if (!off_1ECE86978)
  {
    v3 = sub_1E0C571FC();
    v7[3] = dlsym(v3, "EAPSecIdentityHandleCreate");
    off_1ECE86978 = v7[3];
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v2)
  {
    v2(a1);
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"EAPSecIdentityHandleRef soft_EAPSecIdentityHandleCreate(SecIdentityRef)"];
    [v4 handleFailureInFunction:v5 file:@"CWFEAPCredentials.m" lineNumber:27 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_1E0C56A68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1E0C57068()
{
  v2 = *MEMORY[0x1E69E9840];
  if (!qword_1ECE81AF8)
  {
    qword_1ECE81AF8 = _sl_dlopen();
  }

  result = qword_1ECE81AF8;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1E0C57138(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1ECE81AF8 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *sub_1E0C571AC(uint64_t a1)
{
  v2 = sub_1E0C571FC();
  result = dlsym(v2, "EAPSecIdentityHandleCreateSecIdentity");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1ECE86970 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1E0C571FC()
{
  v0 = sub_1E0C57068();
  if (v0)
  {
    return v0;
  }

  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *EAP8021XLibrary(void)"];
  [v1 handleFailureInFunction:v3 file:@"CWFEAPCredentials.m" lineNumber:17 description:{@"%s", 0}];

  __break(1u);
  free(v4);
  return v1;
}

void *sub_1E0C572AC(uint64_t a1)
{
  v2 = sub_1E0C571FC();
  result = dlsym(v2, "EAPSecIdentityHandleCreate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1ECE86978 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1E0C578A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id location)
{
  objc_destroyWeak((v34 + 32));
  objc_destroyWeak((v33 + 32));
  objc_destroyWeak((v32 + 32));
  objc_destroyWeak((v31 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E0C578FC(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (v5)
  {
    v4 = [WeakRetained __wifiUserAgentXPCConnection];
    v5[2](v5, v4);
  }
}

void sub_1E0C57980(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (v5)
  {
    v4 = [WeakRetained __wifiNetworkSharingUIServiceXPCConnection];
    v5[2](v5, v4);
  }
}

void sub_1E0C57A04(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (v5)
  {
    v4 = [WeakRetained __wifiNetworkSharingAppexXPCConnections];
    v5[2](v5, v4);
  }
}

void sub_1E0C57A88(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (v5)
  {
    v8 = [WeakRetained __wifiNetworkSharingAppXPCConnectionWithBundleID:v9];
    v5[2](v5, v8);
  }
}

void sub_1E0C57C08(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = *(*(a1 + 32) + 16);
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v7++) resume];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  objc_autoreleasePoolPop(v2);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1E0C57D98(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = *(*(a1 + 32) + 16);
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v7++) suspend];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  objc_autoreleasePoolPop(v2);
  v8 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1E0C58088(uint64_t a1)
{
  v2 = CWFGetOSLog();
  if (v2)
  {
    v3 = CWFGetOSLog();
  }

  else
  {
    v3 = MEMORY[0x1E69E9C10];
    v4 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    _os_log_send_and_compose_impl();
  }

  return [*(a1 + 32) __checkKeybagLockStatus];
}

void sub_1E0C58270(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  [*(*(a1 + 32) + 24) setDelegate:?];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = *(*(a1 + 32) + 16);
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = *v14;
    do
    {
      v6 = 0;
      do
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v13 + 1) + 8 * v6++) activate];
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }

  [*(*(a1 + 32) + 24) activate];
  objc_initWeak(&location, *(a1 + 32));
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1E0C584B4;
  v10[3] = &unk_1E86E7160;
  objc_copyWeak(&v11, &location);
  [*(*(a1 + 32) + 64) setAllowCloudSyncableNetworkHandler:v10];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1E0C58574;
  v8[3] = &unk_1E86E7160;
  objc_copyWeak(&v9, &location);
  [*(*(a1 + 32) + 64) setAllowNearbySyncableNetworkHandler:v8];
  [*(a1 + 32) __startMonitoringKeybagLockStatus];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
  objc_autoreleasePoolPop(v2);
  v7 = *MEMORY[0x1E69E9840];
}

void sub_1E0C5847C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E0C584B4(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = [WeakRetained allowCloudSyncableNetworkHandler];
  if (v7)
  {
    v8 = [WeakRetained allowCloudSyncableNetworkHandler];
    (v8)[2](v8, v9, v5);
  }

  else
  {
    v5[2](v5, 1);
  }
}

void sub_1E0C58574(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = [WeakRetained allowNearbySyncableNetworkHandler];
  if (v7)
  {
    v8 = [WeakRetained allowNearbySyncableNetworkHandler];
    (v8)[2](v8, v9, v5);
  }

  else
  {
    v5[2](v5, 1);
  }
}

void sub_1E0C586A8(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) setAllowCloudSyncableNetworkHandler:0];
  [*(a1 + 32) setAllowNearbySyncableNetworkHandler:0];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = *(*(a1 + 32) + 16);
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        [v8 setDelegate:{0, v10}];
        [v8 invalidate];
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  [*(*(a1 + 32) + 16) removeAllObjects];
  [*(*(a1 + 32) + 24) setDelegate:0];
  [*(*(a1 + 32) + 24) invalidate];
  [*(a1 + 32) __stopMonitoringKeybagLockStatus];
  [*(*(a1 + 32) + 64) invalidate];
  [*(*(a1 + 32) + 32) invalidate];
  objc_autoreleasePoolPop(v2);
  v9 = *MEMORY[0x1E69E9840];
}

void sub_1E0C589BC(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v2 = *(*(a1 + 32) + 16);
  v3 = [v2 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v21;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v21 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v7 = *(*(&v20 + 1) + 8 * v6);
      if ([v7 serviceType] == 8)
      {
        v18 = 0u;
        v19 = 0u;
        v16 = 0u;
        v17 = 0u;
        v8 = [v7 XPCConnections];
        v9 = [v8 countByEnumeratingWithState:&v16 objects:v24 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v17;
          while (2)
          {
            for (i = 0; i != v10; ++i)
            {
              if (*v17 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v16 + 1) + 8 * i);
              if ([v13 isLocal])
              {
                objc_storeStrong((*(*(a1 + 40) + 8) + 40), v13);
                goto LABEL_17;
              }
            }

            v10 = [v8 countByEnumeratingWithState:&v16 objects:v24 count:16];
            if (v10)
            {
              continue;
            }

            break;
          }
        }

LABEL_17:

        if (*(*(*(a1 + 40) + 8) + 40))
        {
          break;
        }
      }

      if (++v6 == v4)
      {
        v4 = [v2 countByEnumeratingWithState:&v20 objects:v25 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  objc_autoreleasePoolPop(context);
  v14 = *MEMORY[0x1E69E9840];
}

void sub_1E0C58D34(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v2 = *(*(a1 + 32) + 16);
  v3 = [v2 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v21;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v21 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v7 = *(*(&v20 + 1) + 8 * v6);
      if ([v7 serviceType] == 11)
      {
        v18 = 0u;
        v19 = 0u;
        v16 = 0u;
        v17 = 0u;
        v8 = [v7 XPCConnections];
        v9 = [v8 countByEnumeratingWithState:&v16 objects:v24 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v17;
          while (2)
          {
            for (i = 0; i != v10; ++i)
            {
              if (*v17 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v16 + 1) + 8 * i);
              if ([v13 isLocal])
              {
                objc_storeStrong((*(*(a1 + 40) + 8) + 40), v13);
                goto LABEL_17;
              }
            }

            v10 = [v8 countByEnumeratingWithState:&v16 objects:v24 count:16];
            if (v10)
            {
              continue;
            }

            break;
          }
        }

LABEL_17:

        if (*(*(*(a1 + 40) + 8) + 40))
        {
          break;
        }
      }

      if (++v6 == v4)
      {
        v4 = [v2 countByEnumeratingWithState:&v20 objects:v25 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  objc_autoreleasePoolPop(context);
  v14 = *MEMORY[0x1E69E9840];
}

void sub_1E0C590AC(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = *(*(a1 + 32) + 16);
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        if ([v8 serviceType] == 10)
        {
          v9 = [v8 XPCConnections];
          v10 = *(*(a1 + 40) + 8);
          v11 = *(v10 + 40);
          *(v10 + 40) = v9;

          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  objc_autoreleasePoolPop(v2);
  v12 = *MEMORY[0x1E69E9840];
}

void sub_1E0C593DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E0C59400(void *a1)
{
  v33 = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = *(a1[4] + 16);
  v21 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v21)
  {
    v20 = *v28;
LABEL_3:
    v2 = 0;
    while (1)
    {
      if (*v28 != v20)
      {
        objc_enumerationMutation(obj);
      }

      v22 = v2;
      v3 = *(*(&v27 + 1) + 8 * v2);
      if ([v3 serviceType] == 9)
      {
        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        v4 = [v3 XPCConnections];
        v5 = [v4 countByEnumeratingWithState:&v23 objects:v31 count:16];
        if (v5)
        {
          v6 = v5;
          v7 = *v24;
          while (2)
          {
            for (i = 0; i != v6; ++i)
            {
              if (*v24 != v7)
              {
                objc_enumerationMutation(v4);
              }

              v9 = *(*(&v23 + 1) + 8 * i);
              v10 = a1[5];
              v11 = [v9 effectiveBundleID];
              v12 = v11;
              if (v10 == v11)
              {

LABEL_22:
                objc_storeStrong((*(a1[6] + 8) + 40), v9);
                goto LABEL_23;
              }

              if (a1[5] && ([v9 effectiveBundleID], (v13 = objc_claimAutoreleasedReturnValue()) != 0))
              {
                v14 = v13;
                v15 = a1[5];
                v16 = [v9 effectiveBundleID];
                LODWORD(v15) = [v15 isEqual:v16];

                if (v15)
                {
                  goto LABEL_22;
                }
              }

              else
              {
              }
            }

            v6 = [v4 countByEnumeratingWithState:&v23 objects:v31 count:16];
            if (v6)
            {
              continue;
            }

            break;
          }
        }

LABEL_23:

        if (*(*(a1[6] + 8) + 40))
        {
          break;
        }
      }

      v2 = v22 + 1;
      if (v22 + 1 == v21)
      {
        v21 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
        if (v21)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  objc_autoreleasePoolPop(context);
  v17 = *MEMORY[0x1E69E9840];
}

void sub_1E0C59754(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = *(a1[4] + 16);
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        if ([v8 serviceType] == a1[6])
        {
          v9 = [v8 localXPCClient];
          v10 = *(a1[5] + 8);
          v11 = *(v10 + 40);
          *(v10 + 40) = v9;

          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  objc_autoreleasePoolPop(v2);
  v12 = *MEMORY[0x1E69E9840];
}

void sub_1E0C59988(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = *(a1[4] + 16);
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        if ([v8 serviceType] == a1[6])
        {
          v9 = [v8 XPCListener];
          v10 = [v9 endpoint];
          v11 = *(a1[5] + 8);
          v12 = *(v11 + 40);
          *(v11 + 40) = v10;

          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  objc_autoreleasePoolPop(v2);
  v13 = *MEMORY[0x1E69E9840];
}

void sub_1E0C59CC8(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (([*(a1 + 32) isLocal] & 1) == 0)
  {
    v3 = [*(a1 + 32) needsProcessState];
    v4 = [*(a1 + 32) processState];
    v5 = v4;
    if (v4)
    {
      v6 = v3 ^ 1;
    }

    else
    {
      v6 = v3;
    }

    if (v4)
    {
      v7 = 0;
    }

    else
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v3 ^ 1;
    }

    else
    {
      v8 = 0;
    }

    v9 = [*(a1 + 32) needsContainingAppProcessState];
    v10 = [*(a1 + 32) containingAppProcessState];
    v11 = v10;
    if (v10)
    {
      v12 = v9 ^ 1;
    }

    else
    {
      v12 = v9;
    }

    if (v10)
    {
      v13 = 0;
    }

    else
    {
      v13 = v9;
    }

    if (v10)
    {
      v14 = v9 ^ 1;
    }

    else
    {
      v14 = 0;
    }

    if ((v6 | v12) == 1)
    {
      [*(a1 + 40) __updateProcessMonitorConfiguration];
      if (v7)
      {
        if (objc_opt_class())
        {
          v15 = MEMORY[0x1E69C75E0];
          v16 = [*(a1 + 32) XPCConnection];
          v17 = [v15 identifierWithPid:{objc_msgSend(v16, "processIdentifier")}];

          v18 = [MEMORY[0x1E69C75D0] handleForIdentifier:v17 error:0];
          v19 = [v18 currentState];
          [*(a1 + 32) setProcessState:v19];
        }
      }

      else if (v8)
      {
        [*(a1 + 32) setProcessState:0];
      }

      if (v13)
      {
        if (objc_opt_class())
        {
          v20 = MEMORY[0x1E69C7610];
          v21 = [*(a1 + 32) containingAppBundleID];
          v22 = [v20 predicateMatchingBundleIdentifier:v21];

          v23 = [MEMORY[0x1E69C75D0] handleForPredicate:v22 error:0];
          v24 = [v23 currentState];
          [*(a1 + 32) setContainingAppProcessState:v24];
        }
      }

      else if (v14)
      {
        [*(a1 + 32) setContainingAppProcessState:0];
      }
    }
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0C5A474(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  v2 = dispatch_group_create();
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = *(*(a1 + 32) + 16);
  v4 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    do
    {
      v7 = 0;
      do
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v17 + 1) + 8 * v7);
        if (*(a1 + 48))
        {
          dispatch_group_enter(v2);
          v9 = *(a1 + 40);
          v15[0] = MEMORY[0x1E69E9820];
          v15[1] = 3221225472;
          v15[2] = sub_1E0C5A698;
          v15[3] = &unk_1E86E6010;
          v16 = v2;
          [v8 sendXPCEvent:v9 reply:v15];
        }

        else
        {
          [*(*(&v17 + 1) + 8 * v7) sendXPCEvent:*(a1 + 40) reply:0];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v5);
  }

  v10 = *(*(a1 + 32) + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0C5A6A0;
  block[3] = &unk_1E86E6AF0;
  v14 = *(a1 + 48);
  dispatch_group_notify(v2, v10, block);

  objc_autoreleasePoolPop(context);
  v11 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1E0C5A6A0(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1E0C5CB14(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 _isHomeNetwork])
  {
    [*(a1 + 32) addObject:v3];
  }
}

uint64_t sub_1E0C5D1E4(uint64_t a1, void *a2)
{
  v2 = a2;
  if (![v2 _isHomeNetwork] || (objc_msgSend(v2, "isCarPlay") & 1) != 0 || (objc_msgSend(v2, "isPersonalHotspot") & 1) != 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = [v2 isPasspoint] ^ 1;
  }

  return v3;
}

BOOL sub_1E0C5D31C(uint64_t a1, void *a2)
{
  v4 = a2;
  if (([v4 isPersonalHotspot] & 1) == 0 && (objc_msgSend(v4, "isCarPlayNetwork") & 1) == 0 && (objc_msgSend(v4, "isCarPlay") & 1) == 0 && (objc_msgSend(v4, "isPasspoint") & 1) == 0 && objc_msgSend(v4, "movingAttribute") != 1)
  {
    v7 = [v4 lastJoinedAt];
    if (v7 && ([v4 lastJoinedAt], v2 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v2, "compare:", *(a1 + 32)) == 1))
    {
      v5 = 1;
    }

    else
    {
      v8 = [v4 lastJoinedOnAnyDeviceAt];
      if (v8)
      {
        v9 = v8;
        v10 = [v4 lastJoinedOnAnyDeviceAt];
        v5 = [v10 compare:*(a1 + 32)] == 1;

        if (!v7)
        {
LABEL_14:

          goto LABEL_7;
        }
      }

      else
      {
        v5 = 0;
        if (!v7)
        {
          goto LABEL_14;
        }
      }
    }

    goto LABEL_14;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

uint64_t sub_1E0C5D4AC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) _homeNetworkComparator];
  v8 = (v7)[2](v7, v5, v6);
  if (!v8)
  {
    v9 = [*(a1 + 32) _lastJoinedComparator];
    v8 = (v9)[2](v9, v5, v6);
  }

  return v8;
}

uint64_t sub_1E0C5D564(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 lastJoinedAt];
  if (v6)
  {
  }

  else
  {
    v11 = [v5 lastJoinedAt];

    if (v11)
    {
      v12 = -1;
      goto LABEL_12;
    }
  }

  v7 = [v4 lastJoinedAt];
  if (v7)
  {
    v8 = v7;
    v9 = [v5 lastJoinedAt];

    if (!v9)
    {
      v12 = 1;
      goto LABEL_12;
    }
  }

  v10 = [v4 lastJoinedAt];
  if (v10)
  {

LABEL_10:
    v13 = [v5 lastJoinedAt];
    v14 = [v4 lastJoinedAt];
    v12 = [v13 compare:v14];

    goto LABEL_12;
  }

  v12 = [v5 lastJoinedAt];

  if (v12)
  {
    goto LABEL_10;
  }

LABEL_12:

  return v12;
}

uint64_t sub_1E0C5D690(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 OSSpecificAttributes];
  v7 = [v6 objectForKeyedSubscript:@"networkUsage"];
  if (v7)
  {
  }

  else
  {
    v14 = [v5 OSSpecificAttributes];
    v15 = [v14 objectForKeyedSubscript:@"networkUsage"];

    if (v15)
    {
      v13 = -1;
      goto LABEL_13;
    }
  }

  v8 = [v4 OSSpecificAttributes];
  v9 = [v8 objectForKeyedSubscript:@"networkUsage"];
  if (v9)
  {
    v10 = v9;
    v11 = [v5 OSSpecificAttributes];
    v12 = [v11 objectForKeyedSubscript:@"networkUsage"];

    if (!v12)
    {
      v13 = 1;
      goto LABEL_13;
    }
  }

  else
  {
  }

  v16 = [v4 OSSpecificAttributes];
  v17 = [v16 objectForKeyedSubscript:@"networkUsage"];
  if (v17)
  {
  }

  else
  {
    v18 = [v5 OSSpecificAttributes];
    v19 = [v18 objectForKeyedSubscript:@"networkUsage"];

    if (!v19)
    {
      v13 = 0;
      goto LABEL_13;
    }
  }

  v20 = [v4 OSSpecificAttributes];
  v21 = [v20 objectForKeyedSubscript:@"networkUsage"];
  v22 = [v21 integerValue];
  v23 = [v5 OSSpecificAttributes];
  v24 = [v23 objectForKeyedSubscript:@"networkUsage"];
  v13 = v22 <= [v24 integerValue];

LABEL_13:
  return v13;
}

uint64_t sub_1E0C5D90C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (([v5 _isHomeNetwork] & 1) != 0 || (objc_msgSend(v6, "_isHomeNetwork") & 1) == 0)
  {
    if ([v5 _isHomeNetwork] && !objc_msgSend(v6, "_isHomeNetwork"))
    {
      v7 = -1;
    }

    else if ([v5 _isHomeNetwork] && objc_msgSend(v6, "_isHomeNetwork"))
    {
      v8 = [*(a1 + 32) _networkProfileUsageComparator];
      v7 = (v8)[2](v8, v5, v6);
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

id sub_1E0C5DCC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = objc_autoreleasePoolPush();
  v6 = [MEMORY[0x1E695DEE8] currentCalendar];
  v7 = [v6 components:28 fromDate:a1];
  v8 = [v6 dateFromComponents:v7];
  v9 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v9 setDay:a3];
  v10 = [v6 dateByAddingComponents:v9 toDate:v8 options:0];

  objc_autoreleasePoolPop(v5);

  return v10;
}

id sub_1E0C5DDA0(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF70] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = a1;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = [v8 stringByReplacingOccurrencesOfString:@"\\ " withString:{@" ", v12}];
          [v2 addObject:v9];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v2;
}

id sub_1E0C5DF14(void *a1)
{
  v1 = [a1 mutableCopy];
  v2 = [v1 count];
  v3 = v2 - 1;
  if (v2 != 1)
  {
    do
    {
      [v1 exchangeObjectAtIndex:v3 withObjectAtIndex:arc4random_uniform(v3 + 1)];
      --v3;
    }

    while (v3);
  }

  v4 = [v1 copy];

  return v4;
}

uint64_t sub_1E0C5DF88(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1ED7E3880 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1E0C5E87C(void *a1)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (MEMORY[0x1EEE8C2A0])
  {
    v9 = *MEMORY[0x1E69ABFF0];
    v10[0] = v1;
    [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    v3 = LXLexiconCreate();
  }

  else
  {
    v4 = CWFGetOSLog();
    if (v4)
    {
      v5 = CWFGetOSLog();
    }

    else
    {
      v5 = MEMORY[0x1E69E9C10];
      v6 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      _os_log_send_and_compose_impl();
    }

    v3 = 0;
  }

  v7 = *MEMORY[0x1E69E9840];
  return v3;
}

void sub_1E0C5EDA8(uint64_t a1, void *a2, int a3)
{
  v44 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (!a3)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    if (v5)
    {
      count = xpc_array_get_count(v5);
    }

    else
    {
      count = 0;
    }

    v11 = CWFGetOSLog();
    v35 = a1;
    if (v11)
    {
      v12 = CWFGetOSLog();
    }

    else
    {
      v12 = MEMORY[0x1E69E9C10];
      v13 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v38 = 136315394;
      v39 = "[CWFLocalDeviceDiscovery activate]_block_invoke";
      v40 = 2048;
      v41 = count;
      LODWORD(v34) = 22;
      v33 = &v38;
      _os_log_send_and_compose_impl();
    }

    if (!count)
    {
LABEL_40:
      [*(v35 + 32) _processMRCRecord:{v8, v33, v34}];

      goto LABEL_41;
    }

    v14 = 0;
    v15 = *MEMORY[0x1E69E5870];
    key = *MEMORY[0x1E69E5868];
    v16 = 0x1E696A000uLL;
    v37 = *MEMORY[0x1E69E5870];
    while (1)
    {
      v17 = xpc_array_get_dictionary(v5, v14);
      v18 = v17;
      if (v17)
      {
        string = xpc_dictionary_get_string(v17, v15);
        if (string)
        {
          v20 = [*(v16 + 3776) stringWithUTF8String:string];
          if (v20)
          {
            v21 = v20;
            v22 = xpc_dictionary_get_string(v18, key);
            if (v22)
            {
              v23 = [*(v16 + 3776) stringWithUTF8String:v22];
            }

            else
            {
              v23 = 0;
            }

            v28 = [CWFBonjourServiceRecord serviceRecordFromRecordName:v23, v33, v34];
            [v8 objectForKey:v21];
            v30 = v29 = v8;
            if (v30)
            {
              [v29 objectForKey:v21];
            }

            else
            {
              [MEMORY[0x1E695DFA8] set];
            }
            v31 = ;

            [v31 addObject:v28];
            [v29 setObject:v31 forKey:v21];

            v8 = v29;
            v15 = v37;
            v16 = 0x1E696A000;
            goto LABEL_39;
          }
        }

        v24 = CWFGetOSLog();
        if (v24)
        {
          v21 = CWFGetOSLog();
        }

        else
        {
          v21 = MEMORY[0x1E69E9C10];
          v26 = MEMORY[0x1E69E9C10];
        }

        if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_39;
        }

        v38 = 136315650;
        v39 = "[CWFLocalDeviceDiscovery activate]_block_invoke";
        v40 = 2048;
        v41 = v14;
        v42 = 2112;
        v43 = v18;
        LODWORD(v34) = 32;
        v33 = &v38;
      }

      else
      {
        v25 = CWFGetOSLog();
        if (v25)
        {
          v21 = CWFGetOSLog();
        }

        else
        {
          v21 = MEMORY[0x1E69E9C10];
          v27 = MEMORY[0x1E69E9C10];
        }

        if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_39;
        }

        v38 = 136315394;
        v39 = "[CWFLocalDeviceDiscovery activate]_block_invoke";
        v40 = 2048;
        v41 = v14;
        LODWORD(v34) = 22;
        v33 = &v38;
      }

      _os_log_send_and_compose_impl();
LABEL_39:

      if (count == ++v14)
      {
        goto LABEL_40;
      }
    }
  }

  v6 = CWFGetOSLog();
  if (v6)
  {
    v7 = CWFGetOSLog();
  }

  else
  {
    v7 = MEMORY[0x1E69E9C10];
    v10 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v38 = 136315394;
    v39 = "[CWFLocalDeviceDiscovery activate]_block_invoke";
    v40 = 1024;
    LODWORD(v41) = a3;
    _os_log_send_and_compose_impl();
  }

  [*(a1 + 32) _callHandlerWithValidResults:0 filtered:0];
LABEL_41:

  v32 = *MEMORY[0x1E69E9840];
}