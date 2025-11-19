void __MNGetMNRouteAttributesLog_block_invoke()
{
  v0 = os_log_create("com.apple.Navigation", "MNRouteAttributes");
  v1 = MNGetMNRouteAttributesLog_log;
  MNGetMNRouteAttributesLog_log = v0;
}

id MNGetMNRouteEditorLog()
{
  if (MNGetMNRouteEditorLog_onceToken != -1)
  {
    dispatch_once(&MNGetMNRouteEditorLog_onceToken, &__block_literal_global_73);
  }

  v1 = MNGetMNRouteEditorLog_log;

  return v1;
}

void __MNGetMNRouteEditorLog_block_invoke()
{
  v0 = os_log_create("com.apple.Navigation", "MNRouteEditor");
  v1 = MNGetMNRouteEditorLog_log;
  MNGetMNRouteEditorLog_log = v0;
}

void __MNGetMNRouteStorageLog_block_invoke()
{
  v0 = os_log_create("com.apple.Navigation", "MNRouteStorage");
  v1 = MNGetMNRouteStorageLog_log;
  MNGetMNRouteStorageLog_log = v0;
}

id MNGetMNServerSessionStateInfoLog()
{
  if (MNGetMNServerSessionStateInfoLog_onceToken != -1)
  {
    dispatch_once(&MNGetMNServerSessionStateInfoLog_onceToken, &__block_literal_global_78);
  }

  v1 = MNGetMNServerSessionStateInfoLog_log;

  return v1;
}

void __MNGetMNServerSessionStateInfoLog_block_invoke()
{
  v0 = os_log_create("com.apple.Navigation", "MNServerSessionStateInfo");
  v1 = MNGetMNServerSessionStateInfoLog_log;
  MNGetMNServerSessionStateInfoLog_log = v0;
}

id MNGetMNStringExtrasLog()
{
  if (MNGetMNStringExtrasLog_onceToken != -1)
  {
    dispatch_once(&MNGetMNStringExtrasLog_onceToken, &__block_literal_global_81);
  }

  v1 = MNGetMNStringExtrasLog_log;

  return v1;
}

void __MNGetMNStringExtrasLog_block_invoke()
{
  v0 = os_log_create("com.apple.Navigation", "MNStringExtras");
  v1 = MNGetMNStringExtrasLog_log;
  MNGetMNStringExtrasLog_log = v0;
}

id MNGetMNSuggestedNavigationModeLog()
{
  if (MNGetMNSuggestedNavigationModeLog_onceToken != -1)
  {
    dispatch_once(&MNGetMNSuggestedNavigationModeLog_onceToken, &__block_literal_global_84);
  }

  v1 = MNGetMNSuggestedNavigationModeLog_log;

  return v1;
}

void __MNGetMNSuggestedNavigationModeLog_block_invoke()
{
  v0 = os_log_create("com.apple.Navigation", "MNSuggestedNavigationMode");
  v1 = MNGetMNSuggestedNavigationModeLog_log;
  MNGetMNSuggestedNavigationModeLog_log = v0;
}

id MNGetMNTimeAndDistanceUpdaterLog()
{
  if (MNGetMNTimeAndDistanceUpdaterLog_onceToken != -1)
  {
    dispatch_once(&MNGetMNTimeAndDistanceUpdaterLog_onceToken, &__block_literal_global_87);
  }

  v1 = MNGetMNTimeAndDistanceUpdaterLog_log;

  return v1;
}

void __MNGetMNTimeAndDistanceUpdaterLog_block_invoke()
{
  v0 = os_log_create("com.apple.Navigation", "MNTimeAndDistanceUpdater");
  v1 = MNGetMNTimeAndDistanceUpdaterLog_log;
  MNGetMNTimeAndDistanceUpdaterLog_log = v0;
}

id MNGetMNTraceLog()
{
  if (MNGetMNTraceLog_onceToken != -1)
  {
    dispatch_once(&MNGetMNTraceLog_onceToken, &__block_literal_global_90);
  }

  v1 = MNGetMNTraceLog_log;

  return v1;
}

void __MNGetMNTraceLog_block_invoke()
{
  v0 = os_log_create("com.apple.Navigation", "MNTrace");
  v1 = MNGetMNTraceLog_log;
  MNGetMNTraceLog_log = v0;
}

id MNGetMNTunnelProjectorLog()
{
  if (MNGetMNTunnelProjectorLog_onceToken != -1)
  {
    dispatch_once(&MNGetMNTunnelProjectorLog_onceToken, &__block_literal_global_92);
  }

  v1 = MNGetMNTunnelProjectorLog_log;

  return v1;
}

void __MNGetMNTunnelProjectorLog_block_invoke()
{
  v0 = os_log_create("com.apple.Navigation", "MNTunnelProjector");
  v1 = MNGetMNTunnelProjectorLog_log;
  MNGetMNTunnelProjectorLog_log = v0;
}

id MNGetMNVehicleMonitorLog()
{
  if (MNGetMNVehicleMonitorLog_onceToken != -1)
  {
    dispatch_once(&MNGetMNVehicleMonitorLog_onceToken, &__block_literal_global_95);
  }

  v1 = MNGetMNVehicleMonitorLog_log;

  return v1;
}

void __MNGetMNVehicleMonitorLog_block_invoke()
{
  v0 = os_log_create("com.apple.Navigation", "MNVehicleMonitor");
  v1 = MNGetMNVehicleMonitorLog_log;
  MNGetMNVehicleMonitorLog_log = v0;
}

id MNGetMNVirtualGarageManagerLog()
{
  if (MNGetMNVirtualGarageManagerLog_onceToken != -1)
  {
    dispatch_once(&MNGetMNVirtualGarageManagerLog_onceToken, &__block_literal_global_98);
  }

  v1 = MNGetMNVirtualGarageManagerLog_log;

  return v1;
}

void __MNGetMNVirtualGarageManagerLog_block_invoke()
{
  v0 = os_log_create("com.apple.Navigation", "MNVirtualGarageManager");
  v1 = MNGetMNVirtualGarageManagerLog_log;
  MNGetMNVirtualGarageManagerLog_log = v0;
}

id MNGetMNWalkingRouteBackgroundLoaderLog()
{
  if (MNGetMNWalkingRouteBackgroundLoaderLog_onceToken != -1)
  {
    dispatch_once(&MNGetMNWalkingRouteBackgroundLoaderLog_onceToken, &__block_literal_global_101);
  }

  v1 = MNGetMNWalkingRouteBackgroundLoaderLog_log;

  return v1;
}

void __MNGetMNWalkingRouteBackgroundLoaderLog_block_invoke()
{
  v0 = os_log_create("com.apple.Navigation", "MNWalkingRouteBackgroundLoader");
  v1 = MNGetMNWalkingRouteBackgroundLoaderLog_log;
  MNGetMNWalkingRouteBackgroundLoaderLog_log = v0;
}

id MNGetMNXPCTransactionManagerLog()
{
  if (MNGetMNXPCTransactionManagerLog_onceToken != -1)
  {
    dispatch_once(&MNGetMNXPCTransactionManagerLog_onceToken, &__block_literal_global_104);
  }

  v1 = MNGetMNXPCTransactionManagerLog_log;

  return v1;
}

void __MNGetMNXPCTransactionManagerLog_block_invoke()
{
  v0 = os_log_create("com.apple.Navigation", "MNXPCTransactionManager");
  v1 = MNGetMNXPCTransactionManagerLog_log;
  MNGetMNXPCTransactionManagerLog_log = v0;
}

id MNGetProcessHandlingLog()
{
  if (MNGetProcessHandlingLog_onceToken != -1)
  {
    dispatch_once(&MNGetProcessHandlingLog_onceToken, &__block_literal_global_106);
  }

  v1 = MNGetProcessHandlingLog_log;

  return v1;
}

void __MNGetProcessHandlingLog_block_invoke()
{
  v0 = os_log_create("com.apple.Navigation", "ProcessHandling");
  v1 = MNGetProcessHandlingLog_log;
  MNGetProcessHandlingLog_log = v0;
}

void __MNGetPuckTrackingLog_block_invoke()
{
  v0 = os_log_create("com.apple.Navigation", "PuckTracking");
  v1 = MNGetPuckTrackingLog_log;
  MNGetPuckTrackingLog_log = v0;
}

int *MNGetHoursAndMinutesForTimeInterval(int *result, int *a2, double a3)
{
  v3 = (a3 * 0.000277777778);
  *result = v3;
  v4 = vcvtpd_s64_f64((a3 - (3600 * v3)) * 0.0166666667);
  if (v4 >= 59)
  {
    v4 = 59;
  }

  *a2 = v4;
  return result;
}

id MNGetMNSequenceLog()
{
  if (MNGetMNSequenceLog_onceToken != -1)
  {
    dispatch_once(&MNGetMNSequenceLog_onceToken, &__block_literal_global_1726);
  }

  v1 = MNGetMNSequenceLog_log;

  return v1;
}

void __MNGetMNSequenceLog_block_invoke()
{
  v0 = os_log_create("com.apple.Navigation", "MNSequence");
  v1 = MNGetMNSequenceLog_log;
  MNGetMNSequenceLog_log = v0;
}

void sub_1D31A7E74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__Block_byref_object_copy__1729(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_1D31A8268(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1D31A8F48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id GetAudioLogForMNAudioHardwareEngineCategory()
{
  if (GetAudioLogForMNAudioHardwareEngineCategory_onceToken != -1)
  {
    dispatch_once(&GetAudioLogForMNAudioHardwareEngineCategory_onceToken, &__block_literal_global_2413);
  }

  v1 = GetAudioLogForMNAudioHardwareEngineCategory_log;

  return v1;
}

void __GetAudioLogForMNAudioHardwareEngineCategory_block_invoke()
{
  v0 = os_log_create("com.apple.Navigation.Audio", "MNAudioHardwareEngine");
  v1 = GetAudioLogForMNAudioHardwareEngineCategory_log;
  GetAudioLogForMNAudioHardwareEngineCategory_log = v0;
}

void sub_1D31B07D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 144), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2451(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D31B1A10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __CoreRoutineLibraryCore_block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  CoreRoutineLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

void CoreRoutineLibrary()
{
  v13 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = CoreRoutineLibraryCore_frameworkLibrary;
  v9 = CoreRoutineLibraryCore_frameworkLibrary;
  if (!CoreRoutineLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __CoreRoutineLibraryCore_block_invoke;
    v3[4] = &unk_1E842FE60;
    v4 = &v6;
    v5 = v3;
    v10 = xmmword_1E842A868;
    v11 = *off_1E842A878;
    v12 = 0;
    v7[3] = _sl_dlopen();
    CoreRoutineLibraryCore_frameworkLibrary = *(v4[1] + 24);
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  v1 = v3[0];
  if (!v0)
  {
    v1 = abort_report_np();
    __break(1u);
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x1E69E9840];
}

void sub_1D31B1C84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getRTRoutineManagerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getRTRoutineManagerClass_softClass;
  v7 = getRTRoutineManagerClass_softClass;
  if (!getRTRoutineManagerClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getRTRoutineManagerClass_block_invoke;
    v3[3] = &unk_1E842FE88;
    v3[4] = &v4;
    __getRTRoutineManagerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1D31B1D68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getRTRoutineManagerClass_block_invoke(uint64_t a1)
{
  CoreRoutineLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("RTRoutineManager");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getRTRoutineManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = abort_report_np();
    __getRTLearnedRouteFetchOptionsClass_block_invoke(v2);
  }
}

void __getRTLearnedRouteFetchOptionsClass_block_invoke(uint64_t a1)
{
  CoreRoutineLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("RTLearnedRouteFetchOptions");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getRTLearnedRouteFetchOptionsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = abort_report_np();
    [(MNAnnouncementPlanEvent *)v2 .cxx_destruct];
  }
}

void ___routeStorageQueue_block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.navd.routeStorageQueue", v2);
  v1 = _routeStorageQueue_routeStorageQueue;
  _routeStorageQueue_routeStorageQueue = v0;
}

uint64_t MNSaveRouteWithSubpath(void *a1, void *a2, char a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  if (v7)
  {
    v33 = 0;
    v34 = &v33;
    v35 = 0x2020000000;
    v36 = 1;
    *v27 = 0;
    v28 = v27;
    v29 = 0x3032000000;
    v30 = __Block_byref_object_copy__2637;
    v31 = __Block_byref_object_dispose__2638;
    v32 = 0;
    v9 = MNGetMNRouteStorageLog();
    v10 = os_signpost_id_generate(v9);

    v11 = MNGetMNRouteStorageLog();
    v12 = v11;
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1D311E000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "ActiveRouteInfoDiskWrite", "", buf, 2u);
    }

    v13 = _routeStorageQueue();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __MNSaveRouteWithSubpath_block_invoke;
    block[3] = &unk_1E842A8C8;
    v21 = v8;
    v25 = a3;
    v22 = v7;
    v23 = v27;
    v24 = &v33;
    dispatch_sync(v13, block);

    v14 = MNGetMNRouteStorageLog();
    v15 = v14;
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1D311E000, v15, OS_SIGNPOST_INTERVAL_END, v10, "ActiveRouteInfoDiskWrite", "", buf, 2u);
    }

    if (a4)
    {
      v16 = *(v28 + 5);
      if (v16)
      {
        *a4 = v16;
      }
    }

    v17 = *(v34 + 24);

    _Block_object_dispose(v27, 8);
    _Block_object_dispose(&v33, 8);
  }

  else
  {
    v18 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *v27 = 0;
      _os_log_impl(&dword_1D311E000, v18, OS_LOG_TYPE_ERROR, "No route passed for saving", v27, 2u);
    }

    v17 = 0;
  }

  return v17 & 1;
}

uint64_t __Block_byref_object_copy__2637(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __MNSaveRouteWithSubpath_block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = MNRouteStorageDirectory(*(a1 + 32));
  v3 = [*(a1 + 40) uniqueRouteID];
  v4 = [v3 UUIDString];
  v5 = [v2 stringByAppendingPathComponent:v4];
  v6 = +[MNFilePaths routeHandleExtension];
  v7 = [v5 stringByAppendingPathExtension:v6];

  v8 = [MEMORY[0x1E696AC08] defaultManager];
  if ([v8 fileExistsAtPath:v7])
  {
    v9 = *(a1 + 64);

    if ((v9 & 1) == 0)
    {
LABEL_14:
      v10 = [MEMORY[0x1E696AC08] defaultManager];
      v23 = *MEMORY[0x1E696A350];
      v12 = [MEMORY[0x1E695DF00] date];
      v24 = v12;
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
      [v10 setAttributes:v17 ofItemAtPath:v7 error:0];
      goto LABEL_15;
    }
  }

  else
  {
  }

  v10 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:1];
  [v10 encodeObject:*(a1 + 40) forKey:@"_route"];
  v11 = *(*(a1 + 48) + 8);
  obj = *(v11 + 40);
  [MNFilePaths createFolderIfNotPresent:v2 error:&obj];
  objc_storeStrong((v11 + 40), obj);
  if (*(*(*(a1 + 48) + 8) + 40))
  {
    v12 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = *(*(*(a1 + 48) + 8) + 40);
      *buf = 138412290;
      v26 = v13;
      _os_log_impl(&dword_1D311E000, v12, OS_LOG_TYPE_ERROR, "Encountered error <%@> when creating tmp folder", buf, 0xCu);
    }
  }

  else
  {
    v14 = [v10 encodedData];
    v15 = *(*(a1 + 48) + 8);
    v21 = *(v15 + 40);
    [v14 writeToFile:v7 options:1073741825 error:&v21];
    objc_storeStrong((v15 + 40), v21);

    if (!*(*(*(a1 + 48) + 8) + 40))
    {
      *(*(*(a1 + 56) + 8) + 24) = 1;
      v19 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v26 = v7;
        _os_log_impl(&dword_1D311E000, v19, OS_LOG_TYPE_DEFAULT, "Saved %@", buf, 0xCu);
      }

      goto LABEL_14;
    }

    v12 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v16 = *(*(*(a1 + 48) + 8) + 40);
      v17 = [*(a1 + 40) uniqueRouteID];
      v18 = [v17 UUIDString];
      *buf = 138412546;
      v26 = v16;
      v27 = 2112;
      v28 = v18;
      _os_log_impl(&dword_1D311E000, v12, OS_LOG_TYPE_ERROR, "Encountered error <%@> when saving route %@", buf, 0x16u);

LABEL_15:
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

void MNClearStoredRoutesWithSubpathUsedBefore(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = MNGetMNRouteStorageLog();
  v6 = os_signpost_id_generate(v5);

  v7 = MNGetMNRouteStorageLog();
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1D311E000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "ActiveRouteInfoDiskRemove", "", buf, 2u);
  }

  v9 = _routeStorageQueue();
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __MNClearStoredRoutesWithSubpathUsedBefore_block_invoke;
  v14[3] = &unk_1E8430D50;
  v15 = v4;
  v16 = v3;
  v10 = v3;
  v11 = v4;
  dispatch_sync(v9, v14);

  v12 = MNGetMNRouteStorageLog();
  v13 = v12;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1D311E000, v13, OS_SIGNPOST_INTERVAL_END, v6, "ActiveRouteInfoDiskRemove", "", buf, 2u);
  }
}

void __MNClearStoredRoutesWithSubpathUsedBefore_block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v3 = MNRouteStorageDirectory(*(a1 + 32));
  v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = v3;
  [v2 enumeratorAtPath:v3];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = v24 = 0u;
  v5 = [obj countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v22;
    v20 = *MEMORY[0x1E696A350];
    do
    {
      v8 = 0;
      do
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v21 + 1) + 8 * v8);
        v10 = +[MNFilePaths routeHandleExtension];
        v11 = [v9 hasSuffix:v10];

        if (v11)
        {
          v12 = [v4 stringByAppendingPathComponent:v9];
          if (*(a1 + 40))
          {
            v13 = [v2 attributesOfItemAtPath:v12 error:0];
            v14 = [v13 objectForKeyedSubscript:v20];
            if ([v14 compare:*(a1 + 40)] == -1)
            {
              [v2 removeItemAtPath:v12 error:0];
              [v19 addObject:v9];
            }
          }

          else
          {
            [v2 removeItemAtPath:v12 error:0];
            [v19 addObject:v9];
          }
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [obj countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v6);
  }

  v15 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [v19 count];
    *buf = 134218243;
    v26 = v16;
    v27 = 2113;
    v28 = v19;
    _os_log_impl(&dword_1D311E000, v15, OS_LOG_TYPE_DEFAULT, "Cleared %lu stored routes: %{private}@", buf, 0x16u);
  }

  v17 = *MEMORY[0x1E69E9840];
}

__CFString *MNNavigationServiceCallbackTypeAsString(unint64_t a1)
{
  if (a1 > 0x11)
  {
    return @"MNNavigationServiceCallbackType_DidChangeVoiceGuidanceLevel";
  }

  else
  {
    return off_1E842A910[a1];
  }
}

__CFString *MNNavigationServiceStateAsString(uint64_t a1)
{
  if ((a1 - 1) > 5)
  {
    return @"Stopped";
  }

  else
  {
    return off_1E842AC68[a1 - 1];
  }
}

void sub_1D31CA554(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D31CB5E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void _mnLPRWrappedError(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v31 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = v13;
  if (a1)
  {
    if (v13)
    {
      v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:v13 arguments:&a9];
      v16 = v15;
      v17 = *MEMORY[0x1E695E618];
      if (v12)
      {
        v18 = *MEMORY[0x1E695E670];
        v27 = *MEMORY[0x1E695E618];
        v28 = v18;
        v29 = v15;
        v30 = v12;
        v19 = MEMORY[0x1E695DF20];
        v20 = &v29;
        v21 = &v27;
        v22 = 2;
      }

      else
      {
        v25 = *MEMORY[0x1E695E618];
        v26 = v15;
        v19 = MEMORY[0x1E695DF20];
        v20 = &v26;
        v21 = &v25;
        v22 = 1;
      }

      v23 = [v19 dictionaryWithObjects:v20 forKeys:v21 count:{v22, &a9, v25, v26, v27, v28, v29, v30, v31}];
    }

    else
    {
      v23 = 0;
    }

    *a1 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MapsNavLPRErrorDomain" code:a2 userInfo:v23];
  }

  v24 = *MEMORY[0x1E69E9840];
}

void sub_1D31CF5D4(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x230], 8);
  _Block_object_dispose(&STACK[0x880], 8);
  _Block_object_dispose(&STACK[0x450], 8);
  _Block_object_dispose(&STACK[0xBA0], 8);
  _Block_object_dispose(&STACK[0x1150], 8);
  _Unwind_Resume(a1);
}

id MNGetMNLPRRuleMatcherLog()
{
  if (MNGetMNLPRRuleMatcherLog_onceToken != -1)
  {
    dispatch_once(&MNGetMNLPRRuleMatcherLog_onceToken, &__block_literal_global_4297);
  }

  v1 = MNGetMNLPRRuleMatcherLog_log;

  return v1;
}

uint64_t __Block_byref_object_copy__4186(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D31CFCAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D31D01C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __MNGetMNLPRRuleMatcherLog_block_invoke()
{
  v0 = os_log_create("com.apple.Navigation", "MNLPRRuleMatcher");
  v1 = MNGetMNLPRRuleMatcherLog_log;
  MNGetMNLPRRuleMatcherLog_log = v0;
}

void sub_1D31D1288(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D31D2638(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 80));
  _Unwind_Resume(a1);
}

void sub_1D31D8F60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Block_object_dispose((v22 - 80), 8);
  _Unwind_Resume(a1);
}

id GetAudioLogForMNHapticResourceControllerCategory()
{
  if (GetAudioLogForMNHapticResourceControllerCategory_onceToken != -1)
  {
    dispatch_once(&GetAudioLogForMNHapticResourceControllerCategory_onceToken, &__block_literal_global_5371);
  }

  v1 = GetAudioLogForMNHapticResourceControllerCategory_log;

  return v1;
}

void __GetAudioLogForMNHapticResourceControllerCategory_block_invoke()
{
  v0 = os_log_create("com.apple.Navigation.Audio", "MNHapticResourceController");
  v1 = GetAudioLogForMNHapticResourceControllerCategory_log;
  GetAudioLogForMNHapticResourceControllerCategory_log = v0;
}

uint64_t __Block_byref_object_copy__5597(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *MNTraceNavigationEventTypeAsString(unint64_t a1)
{
  if (a1 > 0x1F)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E842B208[a1];
  }
}

void sub_1D31DC834(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id GetAudioLogForMNAudioSystemOptionsCategory()
{
  if (GetAudioLogForMNAudioSystemOptionsCategory_onceToken != -1)
  {
    dispatch_once(&GetAudioLogForMNAudioSystemOptionsCategory_onceToken, &__block_literal_global_6029);
  }

  v1 = GetAudioLogForMNAudioSystemOptionsCategory_log;

  return v1;
}

void __GetAudioLogForMNAudioSystemOptionsCategory_block_invoke()
{
  v0 = os_log_create("com.apple.Navigation.Audio", "MNAudioSystemOptions");
  v1 = GetAudioLogForMNAudioSystemOptionsCategory_log;
  GetAudioLogForMNAudioSystemOptionsCategory_log = v0;
}

void sub_1D31E2E4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D31E7594(_Unwind_Exception *a1)
{
  objc_destroyWeak(v1);
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_1D31E985C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t MNHeadphonesAreInUse()
{
  v14 = *MEMORY[0x1E69E9840];
  v0 = [getAVAudioSessionClass() sharedInstance];
  v1 = [v0 currentRoute];
  v2 = [v1 outputs];

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = v2;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v9 + 1) + 8 * i) isHeadphones])
        {
          v4 = 1;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v7 = *MEMORY[0x1E69E9840];
  return v4;
}

id getAVAudioSessionClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getAVAudioSessionClass_softClass;
  v7 = getAVAudioSessionClass_softClass;
  if (!getAVAudioSessionClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getAVAudioSessionClass_block_invoke;
    v3[3] = &unk_1E842FE88;
    v3[4] = &v4;
    __getAVAudioSessionClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1D31EC314(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getAVAudioSessionClass_block_invoke(uint64_t a1)
{
  AVFoundationLibrary();
  result = objc_getClass("AVAudioSession");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAVAudioSessionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    abort_report_np();
    return AVFoundationLibrary();
  }

  return result;
}

uint64_t AVFoundationLibrary()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!AVFoundationLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __AVFoundationLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E842B838;
    v6 = 0;
    AVFoundationLibraryCore_frameworkLibrary = _sl_dlopen();
    v1 = v4[0];
    v0 = AVFoundationLibraryCore_frameworkLibrary;
    if (AVFoundationLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v1 = abort_report_np();
    }

    free(v1);
    goto LABEL_5;
  }

  v0 = AVFoundationLibraryCore_frameworkLibrary;
LABEL_5:
  v2 = *MEMORY[0x1E69E9840];
  return v0;
}

uint64_t __AVFoundationLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AVFoundationLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t MNDeviceSpeakerIsInUse()
{
  v28 = *MEMORY[0x1E69E9840];
  v13 = [getAVAudioSessionClass() sharedInstance];
  v0 = [v13 currentRoute];
  v1 = [v0 outputs];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = v1;
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v27 count:16];
  if (v3)
  {
    v4 = *v15;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v15 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = [*(*(&v14 + 1) + 8 * i) portType];
        v23 = 0;
        v24 = &v23;
        v25 = 0x2020000000;
        v7 = getAVAudioSessionPortBuiltInSpeakerSymbolLoc_ptr;
        v26 = getAVAudioSessionPortBuiltInSpeakerSymbolLoc_ptr;
        if (!getAVAudioSessionPortBuiltInSpeakerSymbolLoc_ptr)
        {
          v18 = MEMORY[0x1E69E9820];
          v19 = 3221225472;
          v20 = __getAVAudioSessionPortBuiltInSpeakerSymbolLoc_block_invoke;
          v21 = &unk_1E842FE88;
          v22 = &v23;
          v8 = AVFoundationLibrary();
          v9 = dlsym(v8, "AVAudioSessionPortBuiltInSpeaker");
          *(v22[1] + 24) = v9;
          getAVAudioSessionPortBuiltInSpeakerSymbolLoc_ptr = *(v22[1] + 24);
          v7 = v24[3];
        }

        _Block_object_dispose(&v23, 8);
        if (!v7)
        {
          dlerror();
          abort_report_np();
          __break(1u);
        }

        v10 = [v6 isEqualToString:*v7];

        if (v10)
        {
          v3 = 1;
          goto LABEL_14;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v14 objects:v27 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  v11 = *MEMORY[0x1E69E9840];
  return v3;
}

void sub_1D31EC750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getAVAudioSessionPortBuiltInSpeakerSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AVFoundationLibrary();
  result = dlsym(v2, "AVAudioSessionPortBuiltInSpeaker");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVAudioSessionPortBuiltInSpeakerSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void __GetAudioLogForMNUserOptionsEngineCategory_block_invoke()
{
  v0 = os_log_create("com.apple.Navigation.Audio", "MNUserOptionsEngine");
  v1 = GetAudioLogForMNUserOptionsEngineCategory_log;
  GetAudioLogForMNUserOptionsEngineCategory_log = v0;
}

id MNGetMNRouteLoggingLog()
{
  if (MNGetMNRouteLoggingLog_onceToken != -1)
  {
    dispatch_once(&MNGetMNRouteLoggingLog_onceToken, &__block_literal_global_7309);
  }

  v1 = MNGetMNRouteLoggingLog_log;

  return v1;
}

void __MNGetMNRouteLoggingLog_block_invoke()
{
  v0 = os_log_create("com.apple.Navigation", "MNRouteLogging");
  v1 = MNGetMNRouteLoggingLog_log;
  MNGetMNRouteLoggingLog_log = v0;
}

uint64_t __Block_byref_object_copy__7336(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D31EEB60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _MNStringFromSpokenLocalization(void *a1)
{
  v1 = a1;
  v2 = +[MNUserOptionsEngine sharedInstance];
  v3 = [v2 localizedStringForKey:v1];

  return v3;
}

void sub_1D31F4224(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1D31F5828(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v19 = v16;

  _Unwind_Resume(a1);
}

void sub_1D31F6F20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, void *__p, void *a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<CLMapsRouteHint>>(unint64_t a1)
{
  if (a1 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x1E69E5420], MEMORY[0x1E69E52A8]);
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_1E8429C00, MEMORY[0x1E69E5278]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B0] + 16);
  return result;
}

void sub_1D31FA808(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = MNTurnByTurnLocationTracker;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1D31FB0E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D31FE0A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__8092(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void _currentLocaleChanged()
{
  v0 = [MEMORY[0x1E696AD88] defaultCenter];
  [v0 postNotificationName:@"MNLocaleDidChangeNotification" object:0];
}

void sub_1D3201E28(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

double gm::Matrix<double,2,1>::nearestPointOffsetAlongLineSegment<int,void>(float64x2_t *a1, float64x2_t a2, float64x2_t a3)
{
  v3 = vsubq_f64(a3, a2);
  v4 = vmulq_f64(v3, v3);
  v5 = 0.0;
  if (vaddvq_f64(v4) > 1.0e-15)
  {
    v6 = vmulq_f64(vsubq_f64(*a1, a2), v3);
    return fmin(fmax(vdivq_f64(vaddq_f64(vdupq_laneq_s64(v6, 1), v6), vaddq_f64(vdupq_laneq_s64(v4, 1), v4)).f64[0], 0.0), 1.0);
  }

  return v5;
}

void sub_1D3204D30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D3205EB0(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1D320638C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  objc_destroyWeak((v15 + 40));

  _Unwind_Resume(a1);
}

void sub_1D32068B4(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1D32069B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = MNRouteGeniusRemoteService;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1D3206CFC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v5 - 72));

  _Unwind_Resume(a1);
}

void sub_1D32072D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t MNInstructionsShortPromptTypeForManeuver(uint64_t result, int a2)
{
  result = result;
  switch(result)
  {
    case 0:
      return result;
    case 1:
    case 20:
    case 27:
    case 29:
    case 60:
    case 62:
      return 18;
    case 2:
    case 21:
    case 28:
    case 30:
    case 61:
    case 63:
      return 34;
    case 3:
    case 5:
      return 1;
    case 4:
    case 26:
    case 35:
      v2 = a2 == 1;
      v3 = 18;
      v4 = 34;
      goto LABEL_3;
    case 11:
    case 41:
    case 42:
    case 43:
    case 44:
    case 45:
    case 46:
    case 47:
    case 48:
    case 49:
    case 50:
    case 51:
    case 52:
    case 53:
    case 54:
    case 55:
    case 56:
    case 57:
    case 58:
    case 59:
      v2 = a2 == 1;
      v3 = 34;
      v4 = 18;
      goto LABEL_3;
    case 16:
    case 18:
    case 39:
      return 4;
    case 17:
      return 3;
    case 25:
      v2 = a2 == 1;
      v3 = 19;
      v4 = 35;
LABEL_3:
      if (v2)
      {
        result = v4;
      }

      else
      {
        result = v3;
      }

      break;
    case 33:
      result = 20;
      break;
    case 34:
      result = 36;
      break;
    default:
      result = 2;
      break;
  }

  return result;
}

id MNInstructionsLocalizedMetricUnits()
{
  v27[8] = *MEMORY[0x1E69E9840];
  v18 = _MNLocalizedStringFromThisBundle(@"distance parsing: m");
  v26[0] = v18;
  v26[1] = &unk_1F4EE2980;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
  v27[0] = v17;
  v16 = _MNLocalizedStringFromThisBundle(@"distance parsing: m(s)");
  v25[0] = v16;
  v25[1] = &unk_1F4EE2980;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
  v27[1] = v15;
  v14 = _MNLocalizedStringFromThisBundle(@"distance parsing: meter");
  v24[0] = v14;
  v24[1] = &unk_1F4EE2980;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
  v27[2] = v13;
  v12 = _MNLocalizedStringFromThisBundle(@"distance parsing: meters");
  v23[0] = v12;
  v23[1] = &unk_1F4EE2980;
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
  v27[3] = v0;
  v1 = _MNLocalizedStringFromThisBundle(@"distance parsing: km");
  v22[0] = v1;
  v22[1] = &unk_1F4EE2998;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:2];
  v27[4] = v2;
  v3 = _MNLocalizedStringFromThisBundle(@"distance parsing: km(s)");
  v21[0] = v3;
  v21[1] = &unk_1F4EE2998;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
  v27[5] = v4;
  v5 = _MNLocalizedStringFromThisBundle(@"distance parsing: kilometer");
  v20[0] = v5;
  v20[1] = &unk_1F4EE2998;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
  v27[6] = v6;
  v7 = _MNLocalizedStringFromThisBundle(@"distance parsing: kilometers");
  v19[0] = v7;
  v19[1] = &unk_1F4EE2998;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
  v27[7] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:8];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

id MNInstructionsLocalizedImperialUnits()
{
  v39[12] = *MEMORY[0x1E69E9840];
  v26 = _MNLocalizedStringFromThisBundle(@"distance parsing: yd");
  v38[0] = v26;
  v38[1] = &unk_1F4EE29B0;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:2];
  v39[0] = v25;
  v24 = _MNLocalizedStringFromThisBundle(@"distance parsing: yd(s)");
  v37[0] = v24;
  v37[1] = &unk_1F4EE29B0;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:2];
  v39[1] = v23;
  v22 = _MNLocalizedStringFromThisBundle(@"distance parsing: yard");
  v36[0] = v22;
  v36[1] = &unk_1F4EE29B0;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:2];
  v39[2] = v21;
  v20 = _MNLocalizedStringFromThisBundle(@"distance parsing: yards");
  v35[0] = v20;
  v35[1] = &unk_1F4EE29B0;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:2];
  v39[3] = v19;
  v18 = _MNLocalizedStringFromThisBundle(@"distance parsing: ft");
  v34[0] = v18;
  v34[1] = &unk_1F4EE29C8;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:2];
  v39[4] = v17;
  v16 = _MNLocalizedStringFromThisBundle(@"distance parsing: ft(s)");
  v33[0] = v16;
  v33[1] = &unk_1F4EE29C8;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:2];
  v39[5] = v15;
  v14 = _MNLocalizedStringFromThisBundle(@"distance parsing: foot");
  v32[0] = v14;
  v32[1] = &unk_1F4EE29C8;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:2];
  v39[6] = v13;
  v12 = _MNLocalizedStringFromThisBundle(@"distance parsing: feet(s)");
  v31[0] = v12;
  v31[1] = &unk_1F4EE29C8;
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:2];
  v39[7] = v0;
  v1 = _MNLocalizedStringFromThisBundle(@"distance parsing: mi");
  v30[0] = v1;
  v30[1] = &unk_1F4EE29E0;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:2];
  v39[8] = v2;
  v3 = _MNLocalizedStringFromThisBundle(@"distance parsing: mi(s)");
  v29[0] = v3;
  v29[1] = &unk_1F4EE29E0;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:2];
  v39[9] = v4;
  v5 = _MNLocalizedStringFromThisBundle(@"distance parsing: mile");
  v28[0] = v5;
  v28[1] = &unk_1F4EE29E0;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:2];
  v39[10] = v6;
  v7 = _MNLocalizedStringFromThisBundle(@"distance parsing: miles");
  v27[0] = v7;
  v27[1] = &unk_1F4EE29E0;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
  v39[11] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:12];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

double MNInstructionsDistanceTypeConvertToMeters(uint64_t a1, double result)
{
  if (a1 <= 2)
  {
    if (a1 == 1)
    {
      v2 = 1000.0;
    }

    else
    {
      if (a1 != 2)
      {
        return result;
      }

      v2 = 0.9144;
    }
  }

  else
  {
    switch(a1)
    {
      case 3:
        v2 = 0.3048;
        break;
      case 4:
        v2 = 1609.344;
        break;
      case 5:
        v2 = 6437.376;
        break;
      default:
        return result;
    }
  }

  return result * v2;
}

void sub_1D320AFDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id MNGetMNRouteDivergenceLog(void)
{
  if (MNGetMNRouteDivergenceLog(void)::onceToken != -1)
  {
    dispatch_once(&MNGetMNRouteDivergenceLog(void)::onceToken, &__block_literal_global_280);
  }

  v1 = MNGetMNRouteDivergenceLog(void)::log;

  return v1;
}

void ___ZL25MNGetMNRouteDivergenceLogv_block_invoke()
{
  v0 = os_log_create("com.apple.Navigation", "MNRouteDivergence");
  v1 = MNGetMNRouteDivergenceLog(void)::log;
  MNGetMNRouteDivergenceLog(void)::log = v0;
}

__n128 std::deque<_MNRouteConvergencePoint>::emplace_back<_MNRouteConvergencePoint&>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 8);
  if (v5 == v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = 42 * ((v5 - v6) >> 3) - 1;
  }

  v8 = *(a1 + 32);
  v9 = *(a1 + 40) + v8;
  if (v7 == v9)
  {
    if (v8 < 0x2A)
    {
      v10 = *(a1 + 24);
      v11 = v10 - *a1;
      if (v5 - v6 < v11)
      {
        operator new();
      }

      v12 = v11 >> 2;
      if (v10 == *a1)
      {
        v13 = 1;
      }

      else
      {
        v13 = v12;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<_MNRouteConvergencePoint *>>(v13);
    }

    *(a1 + 32) = v8 - 42;
    v19 = *v6;
    *(a1 + 8) = v6 + 8;
    std::__split_buffer<_MNRouteConvergencePoint *>::emplace_back<_MNRouteConvergencePoint *&>(a1, &v19);
    v6 = *(a1 + 8);
    v9 = *(a1 + 40) + *(a1 + 32);
  }

  v14 = *&v6[8 * (v9 / 0x2A)] - 4032 * (v9 / 0x2A) + 96 * v9;
  v15 = *(a2 + 16);
  *v14 = *a2;
  *(v14 + 16) = v15;
  result = *(a2 + 32);
  v17 = *(a2 + 48);
  v18 = *(a2 + 80);
  *(v14 + 64) = *(a2 + 64);
  *(v14 + 80) = v18;
  *(v14 + 32) = result;
  *(v14 + 48) = v17;
  ++*(a1 + 40);
  return result;
}

void sub_1D320D8A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int128 a11)
{
  operator delete(v11);
  if (a11)
  {
    operator delete(a11);
  }

  _Unwind_Resume(a1);
}

void *std::__split_buffer<_MNRouteConvergencePoint *>::emplace_back<_MNRouteConvergencePoint *&>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<_MNRouteConvergencePoint *>>(v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<_MNRouteConvergencePoint *>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void sub_1D320E38C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  std::__hash_table<[MNRouteDivergenceFinder findAllOverlapRangesBetweenRoutes:]::OverlapCoordinate,[MNRouteDivergenceFinder findAllOverlapRangesBetweenRoutes:]::$_0,[MNRouteDivergenceFinder findAllOverlapRangesBetweenRoutes:]::$_1,std::allocator<[MNRouteDivergenceFinder findAllOverlapRangesBetweenRoutes:]::OverlapCoordinate>>::~__hash_table(&a25);
  std::__hash_table<[MNRouteDivergenceFinder findAllOverlapRangesBetweenRoutes:]::OverlapCoordinate,[MNRouteDivergenceFinder findAllOverlapRangesBetweenRoutes:]::$_0,[MNRouteDivergenceFinder findAllOverlapRangesBetweenRoutes:]::$_1,std::allocator<[MNRouteDivergenceFinder findAllOverlapRangesBetweenRoutes:]::OverlapCoordinate>>::~__hash_table(&a31);
  std::deque<_MNRouteConvergencePoint>::~deque[abi:ne200100](v33 - 208);

  _Unwind_Resume(a1);
}

uint64_t std::deque<_MNRouteConvergencePoint>::~deque[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *(a1 + 40) = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = *(a1 + 16);
      v2 = (*(a1 + 8) + 8);
      *(a1 + 8) = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 21;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v5 = 42;
LABEL_7:
    *(a1 + 32) = v5;
  }

  if (v2 != v3)
  {
    do
    {
      v6 = *v2++;
      operator delete(v6);
    }

    while (v2 != v3);
    v8 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v7 != v8)
    {
      *(a1 + 16) = v7 + ((v8 - v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

__n128 std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,-[MNRouteDivergenceFinder _findFirstConvergenceBetweenRoute:range:andRoute:range:outRouteCoordinate:outRouteCoordinate:]::$_5 &,std::__deque_iterator<_MNRouteConvergencePoint,_MNRouteConvergencePoint*,_MNRouteConvergencePoint&,_MNRouteConvergencePoint**,long,42l>,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __n128 *a6, uint64_t a7, __n128 *a8)
{
  v8 = *(a4 + 8);
  v9 = *(a2 + 8);
  if (v8 < v9 || v8 <= v9 && *(a4 + 88) == 1 && *(a2 + 88) != 1)
  {
    v10 = a6->n128_f64[1];
    if (v10 < v8 || v10 <= v8 && a6[5].n128_u8[8] == 1 && (*(a4 + 88) & 1) == 0)
    {
      v63 = *(a2 + 32);
      v70 = *(a2 + 48);
      *v77 = *(a2 + 64);
      *&v77[16] = *(a2 + 80);
      v49 = *a2;
      v56 = *(a2 + 16);
      v11 = a6[1];
      *a2 = *a6;
      *(a2 + 16) = v11;
      v13 = a6[3];
      v12 = a6[4];
      v14 = a6[2];
      *(a2 + 74) = *(a6 + 74);
      *(a2 + 48) = v13;
      *(a2 + 64) = v12;
      *(a2 + 32) = v14;
    }

    else
    {
      v66 = *(a2 + 32);
      v73 = *(a2 + 48);
      *v80 = *(a2 + 64);
      *&v80[16] = *(a2 + 80);
      v52 = *a2;
      v59 = *(a2 + 16);
      v25 = *(a4 + 16);
      *a2 = *a4;
      *(a2 + 16) = v25;
      v27 = *(a4 + 48);
      v26 = *(a4 + 64);
      v28 = *(a4 + 32);
      *(a2 + 74) = *(a4 + 74);
      *(a2 + 48) = v27;
      *(a2 + 64) = v26;
      *(a2 + 32) = v28;
      *(a4 + 64) = *v80;
      *(a4 + 74) = *&v80[10];
      *(a4 + 32) = v66;
      *(a4 + 48) = v73;
      result.n128_u64[1] = v52.n128_u64[1];
      *a4 = v52;
      *(a4 + 16) = v59;
      result.n128_u64[0] = a6->n128_u64[1];
      v29 = *(a4 + 8);
      if (result.n128_f64[0] >= v29 && (result.n128_f64[0] > v29 || a6[5].n128_u8[8] != 1 || (*(a4 + 88) & 1) != 0))
      {
        goto LABEL_16;
      }

      v63 = *(a4 + 32);
      v70 = *(a4 + 48);
      *v77 = *(a4 + 64);
      *&v77[16] = *(a4 + 80);
      v49 = *a4;
      v56 = *(a4 + 16);
      v30 = a6[1];
      *a4 = *a6;
      *(a4 + 16) = v30;
      v32 = a6[3];
      v31 = a6[4];
      v33 = a6[2];
      *(a4 + 74) = *(a6 + 74);
      *(a4 + 48) = v32;
      *(a4 + 64) = v31;
      *(a4 + 32) = v33;
    }

    a6[4] = *v77;
    *(a6 + 74) = *&v77[10];
    a6[2] = v63;
    a6[3] = v70;
    result.n128_u64[1] = v49.n128_u64[1];
    *a6 = v49;
    a6[1] = v56;
  }

  else
  {
    v15 = a6->n128_f64[1];
    if (v15 < v8 || v15 <= v8 && a6[5].n128_u8[8] == 1 && (*(a4 + 88) & 1) == 0)
    {
      v64 = *(a4 + 32);
      v71 = *(a4 + 48);
      *v78 = *(a4 + 64);
      *&v78[16] = *(a4 + 80);
      v50 = *a4;
      v57 = *(a4 + 16);
      v16 = a6[1];
      *a4 = *a6;
      *(a4 + 16) = v16;
      v18 = a6[3];
      v17 = a6[4];
      v19 = a6[2];
      *(a4 + 74) = *(a6 + 74);
      *(a4 + 48) = v18;
      *(a4 + 64) = v17;
      *(a4 + 32) = v19;
      a6[4] = *v78;
      *(a6 + 74) = *&v78[10];
      a6[2] = v64;
      a6[3] = v71;
      result.n128_u64[1] = v50.n128_u64[1];
      *a6 = v50;
      a6[1] = v57;
      result.n128_u64[0] = *(a4 + 8);
      v21 = *(a2 + 8);
      if (result.n128_f64[0] < v21 || result.n128_f64[0] <= v21 && *(a4 + 88) == 1 && (*(a2 + 88) & 1) == 0)
      {
        v65 = *(a2 + 32);
        v72 = *(a2 + 48);
        *v79 = *(a2 + 64);
        *&v79[16] = *(a2 + 80);
        v51 = *a2;
        v58 = *(a2 + 16);
        v22 = *(a4 + 16);
        *a2 = *a4;
        *(a2 + 16) = v22;
        v23 = *(a4 + 48);
        result = *(a4 + 64);
        v24 = *(a4 + 32);
        *(a2 + 74) = *(a4 + 74);
        *(a2 + 48) = v23;
        *(a2 + 64) = result;
        *(a2 + 32) = v24;
        *(a4 + 64) = *v79;
        *(a4 + 74) = *&v79[10];
        *(a4 + 32) = v65;
        *(a4 + 48) = v72;
        result.n128_u64[1] = v51.n128_u64[1];
        *a4 = v51;
        *(a4 + 16) = v58;
      }
    }
  }

LABEL_16:
  result.n128_u64[0] = a8->n128_u64[1];
  v34 = a6->n128_f64[1];
  if (result.n128_f64[0] < v34 || result.n128_f64[0] <= v34 && a8[5].n128_u8[8] == 1 && (a6[5].n128_u8[8] & 1) == 0)
  {
    v67 = a6[2];
    v74 = a6[3];
    *v81 = a6[4];
    *&v81[16] = a6[5];
    v53 = *a6;
    v60 = a6[1];
    v35 = a8[1];
    *a6 = *a8;
    a6[1] = v35;
    v37 = a8[3];
    v36 = a8[4];
    v38 = a8[2];
    *(a6 + 74) = *(a8 + 74);
    a6[3] = v37;
    a6[4] = v36;
    a6[2] = v38;
    a8[4] = *v81;
    *(a8 + 74) = *&v81[10];
    a8[2] = v67;
    a8[3] = v74;
    result.n128_u64[1] = v53.n128_u64[1];
    *a8 = v53;
    a8[1] = v60;
    result.n128_u64[0] = a6->n128_u64[1];
    v39 = *(a4 + 8);
    if (result.n128_f64[0] < v39 || result.n128_f64[0] <= v39 && a6[5].n128_u8[8] == 1 && (*(a4 + 88) & 1) == 0)
    {
      v68 = *(a4 + 32);
      v75 = *(a4 + 48);
      *v82 = *(a4 + 64);
      *&v82[16] = *(a4 + 80);
      v54 = *a4;
      v61 = *(a4 + 16);
      v40 = a6[1];
      *a4 = *a6;
      *(a4 + 16) = v40;
      v42 = a6[3];
      v41 = a6[4];
      v43 = a6[2];
      *(a4 + 74) = *(a6 + 74);
      *(a4 + 48) = v42;
      *(a4 + 64) = v41;
      *(a4 + 32) = v43;
      a6[4] = *v82;
      *(a6 + 74) = *&v82[10];
      a6[2] = v68;
      a6[3] = v75;
      result.n128_u64[1] = v54.n128_u64[1];
      *a6 = v54;
      a6[1] = v61;
      result.n128_u64[0] = *(a4 + 8);
      v44 = *(a2 + 8);
      if (result.n128_f64[0] < v44 || result.n128_f64[0] <= v44 && *(a4 + 88) == 1 && (*(a2 + 88) & 1) == 0)
      {
        v69 = *(a2 + 32);
        v76 = *(a2 + 48);
        *v83 = *(a2 + 64);
        *&v83[16] = *(a2 + 80);
        v55 = *a2;
        v62 = *(a2 + 16);
        v45 = *(a4 + 16);
        *a2 = *a4;
        *(a2 + 16) = v45;
        v47 = *(a4 + 48);
        v46 = *(a4 + 64);
        v48 = *(a4 + 32);
        *(a2 + 74) = *(a4 + 74);
        *(a2 + 48) = v47;
        *(a2 + 64) = v46;
        *(a2 + 32) = v48;
        *(a4 + 64) = *v83;
        *(a4 + 74) = *&v83[10];
        *(a4 + 32) = v69;
        *(a4 + 48) = v76;
        result = v55;
        *a4 = v55;
        *(a4 + 16) = v62;
      }
    }
  }

  return result;
}

void *std::__deque_iterator<_MNRouteConvergencePoint,_MNRouteConvergencePoint*,_MNRouteConvergencePoint&,_MNRouteConvergencePoint**,long,42l>::operator+=[abi:ne200100](void *result, uint64_t a2)
{
  if (a2)
  {
    v2 = *result;
    v3 = (result[1] - **result) / 96 + a2;
    if (v3 < 1)
    {
      v5 = 41 - v3;
      v6 = &v2[-(v5 / 0x2A)];
      *result = v6;
      v4 = *v6 + 96 * (41 - (v5 % 0x2A));
    }

    else
    {
      *result = &v2[v3 / 0x2A];
      v4 = v2[v3 / 0x2A] - 4032 * (v3 / 0x2A) + 96 * v3;
    }

    result[1] = v4;
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,-[MNRouteDivergenceFinder _findFirstConvergenceBetweenRoute:range:andRoute:range:outRouteCoordinate:outRouteCoordinate:]::$_5 &,std::__deque_iterator<_MNRouteConvergencePoint,_MNRouteConvergencePoint*,_MNRouteConvergencePoint&,_MNRouteConvergencePoint**,long,42l>>(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v219 = *MEMORY[0x1E69E9840];
  if (a4 == a2)
  {
    goto LABEL_117;
  }

  v4 = a4;
  v5 = a3;
  v7 = *a3;
  v8 = a2 - *a1;
  v9 = 42 * (a3 - a1) - 0x5555555555555555 * ((a4 - *a3) >> 5) + 0x5555555555555555 * (v8 >> 5);
  if (v9 > 2)
  {
    if (v9 == 3)
    {
      v18 = v8 / 96;
      if (v8 < -95)
      {
        v19 = a1[-((40 - v18) / 0x2AuLL)] + 96 * (41 - ((40 - v18) % 0x2AuLL));
      }

      else
      {
        v19 = a1[(v18 + 1) / 0x2AuLL] - 4032 * ((v18 + 1) / 0x2AuLL) + 96 * (v18 + 1);
      }

      if (v7 == a4)
      {
        v4 = *(a3 - 1) + 4032;
      }

      v12 = (v4 - 96);
      v32 = *(v19 + 8);
      v33 = *(a2 + 8);
      if (v32 < v33 || v32 <= v33 && *(v19 + 88) == 1 && *(a2 + 88) != 1)
      {
        v34 = *(v4 - 88);
        if (v34 < v32 || v34 <= v32 && *(v4 - 8) == 1 && (*(v19 + 88) & 1) == 0)
        {
LABEL_27:
          v180 = *(a2 + 32);
          v193 = *(a2 + 48);
          *v206 = *(a2 + 64);
          *&v206[16] = *(a2 + 80);
          v154 = *a2;
          v167 = *(a2 + 16);
          v35 = v12[1];
          *a2 = *v12;
          *(a2 + 16) = v35;
          v37 = v12[3];
          v36 = v12[4];
          v38 = v12[2];
          *(a2 + 74) = *(v12 + 74);
          *(a2 + 48) = v37;
          *(a2 + 64) = v36;
          *(a2 + 32) = v38;
LABEL_28:
          v12[4] = *v206;
          *(v12 + 74) = *&v206[10];
          v12[2] = v180;
          v12[3] = v193;
          result = 1;
          *v12 = v154;
          v12[1] = v167;
          goto LABEL_118;
        }

        v187 = *(a2 + 32);
        v200 = *(a2 + 48);
        *v213 = *(a2 + 64);
        *&v213[16] = *(a2 + 80);
        v161 = *a2;
        v174 = *(a2 + 16);
        v83 = *(v19 + 16);
        *a2 = *v19;
        *(a2 + 16) = v83;
        v85 = *(v19 + 48);
        v84 = *(v19 + 64);
        v86 = *(v19 + 32);
        *(a2 + 74) = *(v19 + 74);
        *(a2 + 48) = v85;
        *(a2 + 64) = v84;
        *(a2 + 32) = v86;
        *(v19 + 64) = *v213;
        *(v19 + 74) = *&v213[10];
        *(v19 + 32) = v187;
        *(v19 + 48) = v200;
        *v19 = v161;
        *(v19 + 16) = v174;
        v87 = *(v4 - 88);
        v88 = *(v19 + 8);
        if (v87 < v88 || v87 <= v88 && *(v4 - 8) == 1 && (*(v19 + 88) & 1) == 0)
        {
          v180 = *(v19 + 32);
          v193 = *(v19 + 48);
          *v206 = *(v19 + 64);
          *&v206[16] = *(v19 + 80);
          v154 = *v19;
          v167 = *(v19 + 16);
          v89 = *(v4 - 80);
          *v19 = *v12;
          *(v19 + 16) = v89;
          v91 = *(v4 - 48);
          v90 = *(v4 - 32);
          v92 = *(v4 - 64);
          *(v19 + 74) = *(v4 - 22);
          *(v19 + 48) = v91;
          *(v19 + 64) = v90;
          *(v19 + 32) = v92;
          goto LABEL_28;
        }
      }

      else
      {
        v40 = *(v4 - 88);
        if (v40 < v32 || v40 <= v32 && *(v4 - 8) == 1 && (*(v19 + 88) & 1) == 0)
        {
          v181 = *(v19 + 32);
          v194 = *(v19 + 48);
          *v207 = *(v19 + 64);
          *&v207[16] = *(v19 + 80);
          v155 = *v19;
          v168 = *(v19 + 16);
          v41 = *(v4 - 80);
          *v19 = *v12;
          *(v19 + 16) = v41;
          v43 = *(v4 - 48);
          v42 = *(v4 - 32);
          v44 = *(v4 - 64);
          *(v19 + 74) = *(v4 - 22);
          *(v19 + 48) = v43;
          *(v19 + 64) = v42;
          *(v19 + 32) = v44;
          *(v4 - 32) = *v207;
          *(v4 - 22) = *&v207[10];
          *(v4 - 64) = v181;
          *(v4 - 48) = v194;
          *v12 = v155;
          *(v4 - 80) = v168;
          v45 = *(v19 + 8);
          v46 = *(a2 + 8);
          if (v45 < v46 || v45 <= v46 && *(v19 + 88) == 1 && (*(a2 + 88) & 1) == 0)
          {
            v182 = *(a2 + 32);
            v195 = *(a2 + 48);
            *v208 = *(a2 + 64);
            *&v208[16] = *(a2 + 80);
            v156 = *a2;
            v169 = *(a2 + 16);
            v47 = *(v19 + 16);
            *a2 = *v19;
            *(a2 + 16) = v47;
            v49 = *(v19 + 48);
            v48 = *(v19 + 64);
            v50 = *(v19 + 32);
            *(a2 + 74) = *(v19 + 74);
            *(a2 + 48) = v49;
            *(a2 + 64) = v48;
            *(a2 + 32) = v50;
            *(v19 + 64) = *v208;
            *(v19 + 74) = *&v208[10];
            *(v19 + 32) = v182;
            *(v19 + 48) = v195;
            result = 1;
            *v19 = v156;
            *(v19 + 16) = v169;
            goto LABEL_118;
          }
        }
      }

LABEL_117:
      result = 1;
      goto LABEL_118;
    }

    if (v9 != 4)
    {
      if (v9 != 5)
      {
        goto LABEL_16;
      }

      v13 = v8 / 96;
      if (v8 < -95)
      {
        v15 = &a1[-((40 - v13) / 0x2AuLL)];
        v16 = *v15 + 96 * (41 - ((40 - v13) % 0x2AuLL));
        if (v8 < 0xFFFFFFFFFFFFFF41)
        {
          v51 = &a1[-((39 - v13) / 0x2AuLL)];
          v52 = *v51 + 96 * (41 - ((39 - v13) % 0x2AuLL));
          if (v8 < 0xFFFFFFFFFFFFFEE1)
          {
            v54 = &a1[-((38 - v13) / 0x2AuLL)];
            v55 = *v54 + 96 * (41 - ((38 - v13) % 0x2AuLL));
            goto LABEL_45;
          }

          v53 = 1;
LABEL_44:
          v54 = &a1[v53 / 0x2A];
          v55 = *v54 - 4032 * (v53 / 0x2A) + 96 * v53;
LABEL_45:
          if (v7 == a4)
          {
            v4 = *(v5 - 8) + 4032;
          }

          std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,-[MNRouteDivergenceFinder _findFirstConvergenceBetweenRoute:range:andRoute:range:outRouteCoordinate:outRouteCoordinate:]::$_5 &,std::__deque_iterator<_MNRouteConvergencePoint,_MNRouteConvergencePoint*,_MNRouteConvergencePoint&,_MNRouteConvergencePoint**,long,42l>,0>(a1, a2, v15, v16, v51, v52, v54, v55);
          v56 = *(v4 - 88);
          v57 = *(v55 + 8);
          if (v56 < v57 || v56 <= v57 && *(v4 - 8) == 1 && (*(v55 + 88) & 1) == 0)
          {
            v58 = (v4 - 96);
            v183 = *(v55 + 32);
            v196 = *(v55 + 48);
            *v209 = *(v55 + 64);
            *&v209[16] = *(v55 + 80);
            v157 = *v55;
            v170 = *(v55 + 16);
            v59 = *(v4 - 80);
            *v55 = *(v4 - 96);
            *(v55 + 16) = v59;
            v61 = *(v4 - 48);
            v60 = *(v4 - 32);
            v62 = *(v4 - 64);
            *(v55 + 74) = *(v4 - 22);
            *(v55 + 48) = v61;
            *(v55 + 64) = v60;
            *(v55 + 32) = v62;
            v58[4] = *v209;
            *(v58 + 74) = *&v209[10];
            v58[2] = v183;
            v58[3] = v196;
            *v58 = v157;
            v58[1] = v170;
            v63 = *(v55 + 8);
            v64 = *(v52 + 8);
            if (v63 < v64 || v63 <= v64 && *(v55 + 88) == 1 && (*(v52 + 88) & 1) == 0)
            {
              v158 = *v52;
              v171 = *(v52 + 16);
              *v210 = *(v52 + 64);
              *&v210[16] = *(v52 + 80);
              v184 = *(v52 + 32);
              v197 = *(v52 + 48);
              v66 = *(v55 + 48);
              v65 = *(v55 + 64);
              v67 = *(v55 + 32);
              *(v52 + 74) = *(v55 + 74);
              *(v52 + 48) = v66;
              *(v52 + 64) = v65;
              *(v52 + 32) = v67;
              v68 = *(v55 + 16);
              *v52 = *v55;
              *(v52 + 16) = v68;
              *(v55 + 32) = v184;
              *(v55 + 48) = v197;
              *(v55 + 64) = *v210;
              *(v55 + 74) = *&v210[10];
              *v55 = v158;
              *(v55 + 16) = v171;
              v69 = *(v52 + 8);
              v70 = *(v16 + 8);
              if (v69 < v70 || v69 <= v70 && *(v52 + 88) == 1 && (*(v16 + 88) & 1) == 0)
              {
                v159 = *v16;
                v172 = *(v16 + 16);
                *v211 = *(v16 + 64);
                *&v211[16] = *(v16 + 80);
                v185 = *(v16 + 32);
                v198 = *(v16 + 48);
                v72 = *(v52 + 48);
                v71 = *(v52 + 64);
                v73 = *(v52 + 32);
                *(v16 + 74) = *(v52 + 74);
                *(v16 + 48) = v72;
                *(v16 + 64) = v71;
                *(v16 + 32) = v73;
                v74 = *(v52 + 16);
                *v16 = *v52;
                *(v16 + 16) = v74;
                *v52 = v159;
                *(v52 + 16) = v172;
                *(v52 + 74) = *&v211[10];
                *(v52 + 48) = v198;
                *(v52 + 64) = *v211;
                *(v52 + 32) = v185;
                v75 = *(v16 + 8);
                v76 = *(a2 + 8);
                if (v75 < v76 || v75 <= v76 && *(v16 + 88) == 1 && (*(a2 + 88) & 1) == 0)
                {
                  v186 = *(a2 + 32);
                  v199 = *(a2 + 48);
                  *v212 = *(a2 + 64);
                  *&v212[16] = *(a2 + 80);
                  v160 = *a2;
                  v173 = *(a2 + 16);
                  v77 = *(v16 + 16);
                  *a2 = *v16;
                  *(a2 + 16) = v77;
                  v79 = *(v16 + 48);
                  v78 = *(v16 + 64);
                  v80 = *(v16 + 32);
                  *(a2 + 74) = *(v16 + 74);
                  *(a2 + 48) = v79;
                  *(a2 + 64) = v78;
                  *(a2 + 32) = v80;
                  *v16 = v160;
                  *(v16 + 16) = v173;
                  *(v16 + 74) = *&v212[10];
                  *(v16 + 48) = v199;
                  *(v16 + 64) = *v212;
                  *(v16 + 32) = v186;
                }
              }
            }
          }

          goto LABEL_117;
        }

        v17 = 1;
      }

      else
      {
        v14 = (v13 + 1) / 0x2AuLL;
        v15 = &a1[v14];
        v16 = *v15 - 4032 * v14 + 96 * (v13 + 1);
        v17 = v13 + 2;
      }

      v51 = &a1[v17 / 0x2A];
      v52 = *v51 - 4032 * (v17 / 0x2A) + 96 * v17;
      v53 = v13 + 3;
      goto LABEL_44;
    }

    v27 = v8 / 96;
    if (v8 < -95)
    {
      v29 = &a1[-((40 - v27) / 0x2AuLL)];
      v30 = *v29 + 96 * (41 - ((40 - v27) % 0x2AuLL));
      if (v8 < 0xFFFFFFFFFFFFFF41)
      {
        v150 = 39 - v27;
        v81 = &a1[-(v150 / 0x2A)];
        v82 = (*v81 + 96 * (41 - (v150 % 0x2A)));
        goto LABEL_114;
      }

      v31 = 1;
    }

    else
    {
      v28 = (v27 + 1) / 0x2AuLL;
      v29 = &a1[v28];
      v30 = *v29 - 4032 * v28 + 96 * (v27 + 1);
      v31 = v27 + 2;
    }

    v81 = &a1[v31 / 0x2A];
    v82 = (*v81 - 4032 * (v31 / 0x2A) + 96 * v31);
LABEL_114:
    if (v7 == v4)
    {
      v151 = *(v5 - 8);
      v5 -= 8;
      v4 = v151 + 4032;
    }

    std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,-[MNRouteDivergenceFinder _findFirstConvergenceBetweenRoute:range:andRoute:range:outRouteCoordinate:outRouteCoordinate:]::$_5 &,std::__deque_iterator<_MNRouteConvergencePoint,_MNRouteConvergencePoint*,_MNRouteConvergencePoint&,_MNRouteConvergencePoint**,long,42l>,0>(a1, a2, v29, v30, v81, v82, v5, (v4 - 96));
    goto LABEL_117;
  }

  if (v9 < 2)
  {
    goto LABEL_117;
  }

  if (v9 == 2)
  {
    if (v7 == a4)
    {
      v4 = *(a3 - 1) + 4032;
    }

    v10 = *(v4 - 88);
    v11 = *(a2 + 8);
    if (v10 >= v11 && (v10 > v11 || *(v4 - 8) != 1 || (*(a2 + 88) & 1) != 0))
    {
      goto LABEL_117;
    }

    v12 = (v4 - 96);
    goto LABEL_27;
  }

LABEL_16:
  v20 = v8 / 96;
  if (v8 <= -192)
  {
    v22 = &a1[-((39 - v20) / 0x2AuLL)];
    v23 = *v22 + 96 * (41 - ((39 - v20) % 0x2AuLL));
    v26 = 40 - v20;
    goto LABEL_36;
  }

  v21 = (v20 + 2) / 0x2AuLL;
  v22 = &a1[v21];
  v23 = *v22 - 4032 * v21 + 96 * (v20 + 2);
  v24 = __CFADD__(v20, 1);
  v25 = v20 + 1;
  if (v24)
  {
    v26 = 41;
LABEL_36:
    v93 = a1[-(v26 / 0x2A)] + 96 * (41 - (v26 % 0x2A));
    goto LABEL_68;
  }

  v93 = a1[v25 / 0x2A] - 4032 * (v25 / 0x2A) + 96 * v25;
LABEL_68:
  v94 = *(v93 + 8);
  v95 = *(a2 + 8);
  if (v94 < v95 || v94 <= v95 && *(v93 + 88) == 1 && *(a2 + 88) != 1)
  {
    v96 = *(v23 + 8);
    if (v96 < v94 || v96 <= v94 && *(v23 + 88) == 1 && (*(v93 + 88) & 1) == 0)
    {
      v188 = *(a2 + 32);
      v201 = *(a2 + 48);
      *v214 = *(a2 + 64);
      *&v214[16] = *(a2 + 80);
      v162 = *a2;
      v175 = *(a2 + 16);
      v97 = *(v23 + 16);
      *a2 = *v23;
      *(a2 + 16) = v97;
      v99 = *(v23 + 48);
      v98 = *(v23 + 64);
      v100 = *(v23 + 32);
      *(a2 + 74) = *(v23 + 74);
      *(a2 + 48) = v99;
      *(a2 + 64) = v98;
      *(a2 + 32) = v100;
    }

    else
    {
      v191 = *(a2 + 32);
      v204 = *(a2 + 48);
      *v217 = *(a2 + 64);
      *&v217[16] = *(a2 + 80);
      v165 = *a2;
      v178 = *(a2 + 16);
      v112 = *(v93 + 16);
      *a2 = *v93;
      *(a2 + 16) = v112;
      v114 = *(v93 + 48);
      v113 = *(v93 + 64);
      v115 = *(v93 + 32);
      *(a2 + 74) = *(v93 + 74);
      *(a2 + 48) = v114;
      *(a2 + 64) = v113;
      *(a2 + 32) = v115;
      *(v93 + 64) = *v217;
      *(v93 + 74) = *&v217[10];
      *(v93 + 32) = v191;
      *(v93 + 48) = v204;
      *v93 = v165;
      *(v93 + 16) = v178;
      v116 = *(v23 + 8);
      v117 = *(v93 + 8);
      if (v116 >= v117 && (v116 > v117 || *(v23 + 88) != 1 || (*(v93 + 88) & 1) != 0))
      {
        goto LABEL_83;
      }

      v188 = *(v93 + 32);
      v201 = *(v93 + 48);
      *v214 = *(v93 + 64);
      *&v214[16] = *(v93 + 80);
      v162 = *v93;
      v175 = *(v93 + 16);
      v118 = *(v23 + 16);
      *v93 = *v23;
      *(v93 + 16) = v118;
      v120 = *(v23 + 48);
      v119 = *(v23 + 64);
      v121 = *(v23 + 32);
      *(v93 + 74) = *(v23 + 74);
      *(v93 + 48) = v120;
      *(v93 + 64) = v119;
      *(v93 + 32) = v121;
    }

    *v23 = v162;
    *(v23 + 16) = v175;
    *(v23 + 74) = *&v214[10];
    *(v23 + 48) = v201;
    *(v23 + 64) = *v214;
    *(v23 + 32) = v188;
  }

  else
  {
    v101 = *(v23 + 8);
    if (v101 < v94 || v101 <= v94 && *(v23 + 88) == 1 && (*(v93 + 88) & 1) == 0)
    {
      v189 = *(v93 + 32);
      v202 = *(v93 + 48);
      *v215 = *(v93 + 64);
      *&v215[16] = *(v93 + 80);
      v163 = *v93;
      v176 = *(v93 + 16);
      v102 = *(v23 + 16);
      *v93 = *v23;
      *(v93 + 16) = v102;
      v104 = *(v23 + 48);
      v103 = *(v23 + 64);
      v105 = *(v23 + 32);
      *(v93 + 74) = *(v23 + 74);
      *(v93 + 48) = v104;
      *(v93 + 64) = v103;
      *(v93 + 32) = v105;
      *v23 = v163;
      *(v23 + 16) = v176;
      *(v23 + 74) = *&v215[10];
      *(v23 + 48) = v202;
      *(v23 + 64) = *v215;
      *(v23 + 32) = v189;
      v106 = *(v93 + 8);
      v107 = *(a2 + 8);
      if (v106 < v107 || v106 <= v107 && *(v93 + 88) == 1 && (*(a2 + 88) & 1) == 0)
      {
        v190 = *(a2 + 32);
        v203 = *(a2 + 48);
        *v216 = *(a2 + 64);
        *&v216[16] = *(a2 + 80);
        v164 = *a2;
        v177 = *(a2 + 16);
        v108 = *(v93 + 16);
        *a2 = *v93;
        *(a2 + 16) = v108;
        v110 = *(v93 + 48);
        v109 = *(v93 + 64);
        v111 = *(v93 + 32);
        *(a2 + 74) = *(v93 + 74);
        *(a2 + 48) = v110;
        *(a2 + 64) = v109;
        *(a2 + 32) = v111;
        *(v93 + 64) = *v216;
        *(v93 + 74) = *&v216[10];
        *(v93 + 32) = v190;
        *(v93 + 48) = v203;
        *v93 = v164;
        *(v93 + 16) = v177;
      }
    }
  }

LABEL_83:
  v122 = v23 - *v22;
  v123 = v122 / 96;
  if (v122 < -95)
  {
    v128 = 40 - v123;
    v125 = &v22[-(v128 / 0x2A)];
    v126 = *v125;
    v127 = *v125 + 96 * (41 - (v128 % 0x2A));
  }

  else
  {
    v124 = v123 + 1;
    v125 = &v22[v124 / 0x2A];
    v126 = *v125;
    v127 = *v125 - 4032 * (v124 / 0x2A) + 96 * v124;
  }

  if (v127 == a4)
  {
    goto LABEL_117;
  }

  v129 = 0;
  result = 1;
  while (1)
  {
    v130 = v127;
    v131 = v125;
    v132 = *(v127 + 8);
    v133 = *(v23 + 8);
    if (v132 >= v133)
    {
      if (v132 > v133)
      {
        goto LABEL_107;
      }

      v134 = *(v127 + 88);
      if (v134 != 1 || (*(v23 + 88) & 1) != 0)
      {
        goto LABEL_107;
      }
    }

    else
    {
      LOBYTE(v134) = *(v127 + 88);
    }

    v135 = *v127;
    v218 = *(v127 + 80);
    v192 = *(v127 + 48);
    v205 = *(v127 + 64);
    v179 = *(v127 + 32);
    v166 = *(v127 + 16);
    v136 = *(v127 + 89);
    v137 = *(v23 + 74);
    v139 = *(v23 + 48);
    v138 = *(v23 + 64);
    *(v127 + 32) = *(v23 + 32);
    *(v127 + 48) = v139;
    *(v127 + 64) = v138;
    *(v127 + 74) = v137;
    v140 = *(v23 + 16);
    *v127 = *v23;
    *(v127 + 16) = v140;
    if (v23 != a2)
    {
      while (1)
      {
        if (v23 == *v22)
        {
          v142 = *--v22;
          v141 = v142 + 4032;
        }

        else
        {
          v141 = v23;
        }

        v143 = *(v141 - 88);
        if (v132 >= v143 && (v132 > v143 || (v134 & 1) == 0 || (*(v141 - 8) & 1) != 0))
        {
          break;
        }

        v145 = *(v141 - 96);
        v146 = *(v141 - 80);
        v144 = v141 - 96;
        *v23 = v145;
        *(v23 + 16) = v146;
        v147 = *(v144 + 32);
        v148 = *(v144 + 48);
        v149 = *(v144 + 64);
        *(v23 + 74) = *(v144 + 74);
        *(v23 + 48) = v148;
        *(v23 + 64) = v149;
        *(v23 + 32) = v147;
        v23 = v144;
        if (v144 == a2)
        {
          goto LABEL_105;
        }
      }
    }

    v144 = v23;
LABEL_105:
    *v144 = v135;
    *(v144 + 8) = v132;
    *(v144 + 48) = v192;
    *(v144 + 64) = v205;
    *(v144 + 80) = v218;
    *(v144 + 16) = v166;
    *(v144 + 32) = v179;
    *(v144 + 88) = v134;
    ++v129;
    *(v144 + 89) = v136;
    if (v129 == 8)
    {
      break;
    }

    v126 = *v131;
LABEL_107:
    v127 = v130 + 96;
    v125 = v131;
    if (v130 + 96 - v126 == 4032)
    {
      v125 = v131 + 1;
      v126 = v131[1];
      v127 = v126;
    }

    v22 = v131;
    v23 = v130;
    if (v127 == a4)
    {
      goto LABEL_118;
    }
  }

  v153 = v130 + 96;
  if (v130 + 96 - *v131 == 4032)
  {
    v153 = v131[1];
  }

  result = v153 == a4;
LABEL_118:
  v152 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1D3214B7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void **a55)
{
  std::__tree<std::__value_type<[MNRouteDivergenceFinder findOverlappingSectionsForRoutes:]::RouteSectionKey,std::vector<[MNRouteDivergenceFinder findOverlappingSectionsForRoutes:]::RouteSection>>,std::__map_value_compare<[MNRouteDivergenceFinder findOverlappingSectionsForRoutes:]::RouteSectionKey,std::__value_type<[MNRouteDivergenceFinder findOverlappingSectionsForRoutes:]::RouteSectionKey,std::vector<[MNRouteDivergenceFinder findOverlappingSectionsForRoutes:]::RouteSection>>,[MNRouteDivergenceFinder findOverlappingSectionsForRoutes:]::RouteSectionKeyCompare,false>,std::allocator<std::__value_type<[MNRouteDivergenceFinder findOverlappingSectionsForRoutes:]::RouteSectionKey,std::vector<[MNRouteDivergenceFinder findOverlappingSectionsForRoutes:]::RouteSection>>>>::destroy(a46);
  a55 = &a49;
  std::vector<std::map<geo::PolylineCoordinate,std::vector<-[MNRouteDivergenceFinder findOverlappingSectionsForRoutes:]::RouteSectionEndpoint>>>::__destroy_vector::operator()[abi:ne200100](&a55);

  _Unwind_Resume(a1);
}

void *std::set<unsigned long>::set[abi:ne200100](void *a1, void *a2)
{
  a1[1] = 0;
  v3 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  v4 = a2 + 1;
  v5 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      std::__tree<unsigned long>::__emplace_hint_unique_key_args<unsigned long,unsigned long const&>(a1, v3, v5[4]);
      v6 = v5[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v5[2];
          v8 = *v7 == v5;
          v5 = v7;
        }

        while (!v8);
      }

      v5 = v7;
    }

    while (v7 != v4);
  }

  return a1;
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

void std::__tree<unsigned long>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<unsigned long>::destroy(*a1);
    std::__tree<unsigned long>::destroy(a1[1]);

    operator delete(a1);
  }
}

void *std::__tree<unsigned long>::__emplace_hint_unique_key_args<unsigned long,unsigned long const&>(void *result, void *a2, unint64_t a3)
{
  v3 = result + 1;
  if (result + 1 == a2 || (v4 = a2[4], v4 > a3))
  {
    v5 = *a2;
    if (*result == a2)
    {
      v7 = a2;
LABEL_16:
      if (v5)
      {
        v8 = v7 + 1;
      }

      else
      {
        v8 = a2;
      }

      goto LABEL_19;
    }

    if (v5)
    {
      v6 = *a2;
      do
      {
        v7 = v6;
        v6 = v6[1];
      }

      while (v6);
    }

    else
    {
      v11 = a2;
      do
      {
        v7 = v11[2];
        v12 = *v7 == v11;
        v11 = v7;
      }

      while (v12);
    }

    if (v7[4] < a3)
    {
      goto LABEL_16;
    }

    v13 = *v3;
    if (*v3)
    {
      while (1)
      {
        while (1)
        {
          v14 = v13;
          v15 = v13[4];
          if (v15 <= a3)
          {
            break;
          }

          v13 = *v14;
          v3 = v14;
          if (!*v14)
          {
            goto LABEL_38;
          }
        }

        if (v15 >= a3)
        {
          break;
        }

        v3 = v14 + 1;
        v13 = v14[1];
        if (!v13)
        {
          goto LABEL_38;
        }
      }

LABEL_39:
      v8 = v3;
      goto LABEL_19;
    }

    goto LABEL_38;
  }

  if (v4 >= a3)
  {
    return result;
  }

  v8 = a2 + 1;
  v9 = a2[1];
  if (v9)
  {
    do
    {
      v8 = v9;
      v9 = *v9;
      v10 = v8;
    }

    while (v9);
  }

  else
  {
    v10 = a2;
    do
    {
      v16 = v10;
      v10 = v10[2];
    }

    while (*v10 != v16);
  }

  if (v10 != v3 && v10[4] <= a3)
  {
    v17 = *v3;
    if (*v3)
    {
      do
      {
        while (1)
        {
          v18 = v17;
          v19 = v17[4];
          if (v19 <= a3)
          {
            break;
          }

          v17 = *v18;
          v3 = v18;
          if (!*v18)
          {
            goto LABEL_38;
          }
        }

        if (v19 >= a3)
        {
          goto LABEL_39;
        }

        v3 = v18 + 1;
        v17 = v18[1];
      }

      while (v17);
    }

LABEL_38:
    operator new();
  }

LABEL_19:
  if (!*v8)
  {
    goto LABEL_38;
  }

  return result;
}

uint64_t *std::__tree<unsigned long>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

void sub_1D32163BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, void *a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, void **a45)
{
  a45 = &a42;
  std::vector<std::vector<-[MNRouteDivergenceFinder findAllOverlapRangesBetweenRoutes:]::OverlapCoordinate>>::__destroy_vector::operator()[abi:ne200100](&a45);

  _Unwind_Resume(a1);
}

float std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,-[MNRouteDivergenceFinder findAllOverlapRangesBetweenRoutes:]::$_4 &,-[MNRouteDivergenceFinder findAllOverlapRangesBetweenRoutes:]::OverlapCoordinate *,0>(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 a5)
{
  v5 = a2->n128_u32[0];
  if (a2->n128_u32[0] < a1->n128_u32[0] || v5 == a1->n128_u32[0] && (a5.n128_u32[0] = a2->n128_u32[1], a5.n128_f32[0] < a1->n128_f32[1]))
  {
    if (a3->n128_u32[0] < v5 || a3->n128_u32[0] == v5 && a3->n128_f32[1] < a2->n128_f32[1])
    {
      a5 = *a1;
      v6 = a1[1].n128_u64[0];
      v7 = a3[1].n128_u8[0];
      *a1 = *a3;
      a1[1].n128_u8[0] = v7;
    }

    else
    {
      a5 = *a1;
      v12 = a1[1].n128_u64[0];
      v13 = a2[1].n128_u8[0];
      *a1 = *a2;
      a1[1].n128_u8[0] = v13;
      a2[1].n128_u8[0] = v12;
      *a2 = a5;
      if (a3->n128_u32[0] >= a2->n128_u32[0])
      {
        if (a3->n128_u32[0] != a2->n128_u32[0])
        {
          goto LABEL_14;
        }

        a5.n128_u32[0] = a3->n128_u32[1];
        if (a5.n128_f32[0] >= a2->n128_f32[1])
        {
          goto LABEL_14;
        }
      }

      a5 = *a2;
      v6 = a2[1].n128_u64[0];
      v14 = a3[1].n128_u8[0];
      *a2 = *a3;
      a2[1].n128_u8[0] = v14;
    }

    a3[1].n128_u8[0] = v6;
    *a3 = a5;
  }

  else if (a3->n128_u32[0] < v5 || a3->n128_u32[0] == v5 && (a5.n128_u32[0] = a3->n128_u32[1], a5.n128_f32[0] < a2->n128_f32[1]))
  {
    a5 = *a2;
    v8 = a2[1].n128_u64[0];
    v9 = a3[1].n128_u8[0];
    *a2 = *a3;
    a2[1].n128_u8[0] = v9;
    a3[1].n128_u8[0] = v8;
    *a3 = a5;
    if (a2->n128_u32[0] < a1->n128_u32[0] || a2->n128_u32[0] == a1->n128_u32[0] && (a5.n128_u32[0] = a2->n128_u32[1], a5.n128_f32[0] < a1->n128_f32[1]))
    {
      a5 = *a1;
      v10 = a1[1].n128_u64[0];
      v11 = a2[1].n128_u8[0];
      *a1 = *a2;
      a1[1].n128_u8[0] = v11;
      a2[1].n128_u8[0] = v10;
      *a2 = a5;
    }
  }

LABEL_14:
  if (a4->n128_u32[0] < a3->n128_u32[0] || a4->n128_u32[0] == a3->n128_u32[0] && (a5.n128_u32[0] = a4->n128_u32[1], a5.n128_f32[0] < a3->n128_f32[1]))
  {
    a5 = *a3;
    v15 = a3[1].n128_u64[0];
    v16 = a4[1].n128_u8[0];
    *a3 = *a4;
    a3[1].n128_u8[0] = v16;
    a4[1].n128_u8[0] = v15;
    *a4 = a5;
    if (a3->n128_u32[0] < a2->n128_u32[0] || a3->n128_u32[0] == a2->n128_u32[0] && (a5.n128_u32[0] = a3->n128_u32[1], a5.n128_f32[0] < a2->n128_f32[1]))
    {
      a5 = *a2;
      v17 = a2[1].n128_u64[0];
      v18 = a3[1].n128_u8[0];
      *a2 = *a3;
      a2[1].n128_u8[0] = v18;
      a3[1].n128_u8[0] = v17;
      *a3 = a5;
      if (a2->n128_u32[0] < a1->n128_u32[0] || a2->n128_u32[0] == a1->n128_u32[0] && (a5.n128_u32[0] = a2->n128_u32[1], a5.n128_f32[0] < a1->n128_f32[1]))
      {
        a5 = *a1;
        v19 = a1[1].n128_u64[0];
        v20 = a2[1].n128_u8[0];
        *a1 = *a2;
        a1[1].n128_u8[0] = v20;
        a2[1].n128_u8[0] = v19;
        *a2 = a5;
      }
    }
  }

  return a5.n128_f32[0];
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,-[MNRouteDivergenceFinder findAllOverlapRangesBetweenRoutes:]::$_4 &,-[MNRouteDivergenceFinder findAllOverlapRangesBetweenRoutes:]::OverlapCoordinate *>(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v5 <= 2)
  {
    if (v5 >= 2)
    {
      if (v5 == 2)
      {
        v6 = (a2 - 24);
        v7 = *(a2 - 24);
        if (v7 < *a1 || v7 == *a1 && *(a2 - 20) < *(a1 + 4))
        {
          v8 = *a1;
          v9 = *(a1 + 16);
          v10 = *(a2 - 8);
          *a1 = *v6;
          *(a1 + 16) = v10;
          *(a2 - 8) = v9;
          *v6 = v8;
        }

        return 1;
      }

      goto LABEL_17;
    }

    return 1;
  }

  switch(v5)
  {
    case 3:
      v28 = (a1 + 24);
      v29 = *(a1 + 24);
      v30 = (a2 - 24);
      if (v29 >= *a1 && (v29 != *a1 || *(a1 + 28) >= *(a1 + 4)))
      {
        if (v30->n128_u32[0] < v29 || v30->n128_u32[0] == v29 && *(a2 - 20) < *(a1 + 28))
        {
          v41 = *v28;
          v42 = *(a1 + 40);
          v43 = *(a2 - 8);
          *v28 = *v30;
          *(a1 + 40) = v43;
          *(a2 - 8) = v42;
          *v30 = v41;
          v44 = *(a1 + 24);
          if (v44 < *a1 || v44 == *a1 && *(a1 + 28) < *(a1 + 4))
          {
            v45 = *(a1 + 16);
            v46 = *a1;
            *a1 = *v28;
            *(a1 + 16) = *(a1 + 40);
            *v28 = v46;
            *(a1 + 40) = v45;
          }
        }

        return 1;
      }

      if (v30->n128_u32[0] < v29 || v30->n128_u32[0] == v29 && *(a2 - 20) < *(a1 + 28))
      {
        v31 = *a1;
        v32 = *(a1 + 16);
        v33 = *(a2 - 8);
        *a1 = *v30;
        *(a1 + 16) = v33;
        *(a2 - 8) = v32;
      }

      else
      {
        v51 = *(a1 + 16);
        v52 = *a1;
        *a1 = *v28;
        *(a1 + 16) = *(a1 + 40);
        *v28 = v52;
        *(a1 + 40) = v51;
        v53 = *(a1 + 24);
        if (v30->n128_u32[0] >= v53 && (v30->n128_u32[0] != v53 || *(a2 - 20) >= *(a1 + 28)))
        {
          return 1;
        }

        v31 = *v28;
        v54 = *(a1 + 40);
        v55 = *(a2 - 8);
        *v28 = *v30;
        *(a1 + 40) = v55;
        *(a2 - 8) = v54;
      }

      *v30 = v31;
      return 1;
    case 4:
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,-[MNRouteDivergenceFinder findAllOverlapRangesBetweenRoutes:]::$_4 &,-[MNRouteDivergenceFinder findAllOverlapRangesBetweenRoutes:]::OverlapCoordinate *,0>(a1, (a1 + 24), (a1 + 48), (a2 - 24), a3);
      return 1;
    case 5:
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,-[MNRouteDivergenceFinder findAllOverlapRangesBetweenRoutes:]::$_4 &,-[MNRouteDivergenceFinder findAllOverlapRangesBetweenRoutes:]::OverlapCoordinate *,0>(a1, (a1 + 24), (a1 + 48), (a1 + 72), a3);
      v11 = (a2 - 24);
      v12 = *(a2 - 24);
      v13 = *(a1 + 72);
      if (v12 < v13 || v12 == v13 && *(a2 - 20) < *(a1 + 76))
      {
        v14 = *(a1 + 72);
        v15 = *(a1 + 88);
        v16 = *(a2 - 8);
        *(a1 + 72) = *v11;
        *(a1 + 88) = v16;
        *(a2 - 8) = v15;
        *v11 = v14;
        v17 = *(a1 + 72);
        v18 = *(a1 + 48);
        if (v17 < v18 || v17 == v18 && *(a1 + 76) < *(a1 + 52))
        {
          v19 = *(a1 + 64);
          v20 = *(a1 + 48);
          *(a1 + 48) = *(a1 + 72);
          *(a1 + 64) = *(a1 + 88);
          *(a1 + 72) = v20;
          *(a1 + 88) = v19;
          v21 = *(a1 + 48);
          v22 = *(a1 + 24);
          if (v21 < v22 || v21 == v22 && *(a1 + 52) < *(a1 + 28))
          {
            v23 = *(a1 + 40);
            v24 = *(a1 + 24);
            *(a1 + 24) = *(a1 + 48);
            *(a1 + 40) = *(a1 + 64);
            *(a1 + 48) = v24;
            *(a1 + 64) = v23;
            v25 = *(a1 + 24);
            if (v25 < *a1 || v25 == *a1 && *(a1 + 28) < *(a1 + 4))
            {
              v26 = *(a1 + 16);
              v27 = *a1;
              *a1 = *(a1 + 24);
              *(a1 + 16) = *(a1 + 40);
              *(a1 + 24) = v27;
              *(a1 + 40) = v26;
            }
          }
        }
      }

      return 1;
  }

LABEL_17:
  v34 = a1 + 48;
  v35 = *a1;
  v36 = (a1 + 24);
  v37 = *(a1 + 24);
  if (v37 < *a1 || v37 == v35 && *(a1 + 28) < *(a1 + 4))
  {
    v38 = *v34;
    if (*v34 < v37 || v38 == v37 && *(a1 + 52) < *(a1 + 28))
    {
      v39 = *(a1 + 16);
      v40 = *a1;
      *a1 = *v34;
      *(a1 + 16) = *(a1 + 64);
      *v34 = v40;
      *(a1 + 64) = v39;
    }

    else
    {
      v56 = *(a1 + 16);
      v57 = *a1;
      *a1 = *v36;
      *(a1 + 16) = *(a1 + 40);
      *v36 = v57;
      *(a1 + 40) = v56;
      v58 = *(a1 + 24);
      if (v38 < v58 || v38 == v58 && *(a1 + 52) < *(a1 + 28))
      {
        v59 = *(a1 + 40);
        v60 = *v36;
        *v36 = *v34;
        *(a1 + 40) = *(a1 + 64);
        *v34 = v60;
        *(a1 + 64) = v59;
      }
    }
  }

  else if (*v34 < v37 || *v34 == v37 && *(a1 + 52) < *(a1 + 28))
  {
    v47 = *(a1 + 40);
    v48 = *v36;
    *v36 = *v34;
    *(a1 + 40) = *(a1 + 64);
    *v34 = v48;
    *(a1 + 64) = v47;
    if (v36->n128_u32[0] < v35 || v36->n128_u32[0] == v35 && *(a1 + 28) < *(a1 + 4))
    {
      v49 = *(a1 + 16);
      v50 = *a1;
      *a1 = *v36;
      *(a1 + 16) = *(a1 + 40);
      *v36 = v50;
      *(a1 + 40) = v49;
    }
  }

  v61 = a1 + 72;
  if (a1 + 72 == a2)
  {
    return 1;
  }

  v62 = 0;
  v63 = 0;
  while (1)
  {
    v64 = *v61;
    if (*v61 < *v34)
    {
      break;
    }

    if (v64 == *v34)
    {
      v65 = *(v61 + 4);
      if (v65 < *(v34 + 4))
      {
        goto LABEL_76;
      }
    }

LABEL_87:
    v34 = v61;
    v62 += 24;
    v61 += 24;
    if (v61 == a2)
    {
      return 1;
    }
  }

  v65 = *(v61 + 4);
LABEL_76:
  v69 = *(v61 + 8);
  *(v61 + 16) = *(v34 + 16);
  *v61 = *v34;
  v66 = v62;
  do
  {
    v67 = *(a1 + v66 + 24);
    if (v64 >= v67)
    {
      if (v64 != v67)
      {
        v34 = a1 + v66 + 48;
        goto LABEL_86;
      }

      if (v65 >= *(a1 + v66 + 28))
      {
        goto LABEL_86;
      }
    }

    v34 -= 24;
    *(a1 + v66 + 48) = *(a1 + v66 + 24);
    *(a1 + v66 + 64) = *(a1 + v66 + 40);
    v66 -= 24;
  }

  while (v66 != -48);
  v34 = a1;
LABEL_86:
  *v34 = v64;
  *(v34 + 4) = v65;
  *(v34 + 8) = v69;
  *(v34 + 16) = BYTE8(v69);
  if (++v63 != 8)
  {
    goto LABEL_87;
  }

  return v61 + 24 == a2;
}

void sub_1D3218CD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, void *a14, void *a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22)
{
  std::__tree<std::__value_type<geo::PolylineCoordinate,std::pair<MNRouteDivergenceResult * {__strong},MNRouteDivergenceResult * {__strong}>>,std::__map_value_compare<geo::PolylineCoordinate,std::__value_type<geo::PolylineCoordinate,std::pair<MNRouteDivergenceResult * {__strong},MNRouteDivergenceResult * {__strong}>>,std::less<geo::PolylineCoordinate>,true>,std::allocator<std::__value_type<geo::PolylineCoordinate,std::pair<MNRouteDivergenceResult * {__strong},MNRouteDivergenceResult * {__strong}>>>>::destroy(a22);

  _Unwind_Resume(a1);
}

float *std::__tree<std::__value_type<geo::PolylineCoordinate,std::pair<MNRouteDivergenceResult * {__strong},MNRouteDivergenceResult * {__strong}>>,std::__map_value_compare<geo::PolylineCoordinate,std::__value_type<geo::PolylineCoordinate,std::pair<MNRouteDivergenceResult * {__strong},MNRouteDivergenceResult * {__strong}>>,std::less<geo::PolylineCoordinate>,true>,std::allocator<std::__value_type<geo::PolylineCoordinate,std::pair<MNRouteDivergenceResult * {__strong},MNRouteDivergenceResult * {__strong}>>>>::__emplace_unique_key_args<geo::PolylineCoordinate,geo::PolylineCoordinate,std::pair<MNRouteDivergenceResult * {__strong},MNRouteDivergenceResult * {__strong}>>(uint64_t a1, unsigned int a2, float a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
LABEL_10:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v3;
      v5 = *(v3 + 8);
      if (v5 <= a2 && (v5 != a2 || v4[9] <= a3))
      {
        break;
      }

      v3 = *v4;
      if (!*v4)
      {
        goto LABEL_10;
      }
    }

    if (v5 >= a2 && v4[9] >= a3)
    {
      return v4;
    }

    v3 = *(v4 + 1);
    if (!v3)
    {
      goto LABEL_10;
    }
  }
}

void std::__tree<std::__value_type<geo::PolylineCoordinate,std::pair<MNRouteDivergenceResult * {__strong},MNRouteDivergenceResult * {__strong}>>,std::__map_value_compare<geo::PolylineCoordinate,std::__value_type<geo::PolylineCoordinate,std::pair<MNRouteDivergenceResult * {__strong},MNRouteDivergenceResult * {__strong}>>,std::less<geo::PolylineCoordinate>,true>,std::allocator<std::__value_type<geo::PolylineCoordinate,std::pair<MNRouteDivergenceResult * {__strong},MNRouteDivergenceResult * {__strong}>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<geo::PolylineCoordinate,std::pair<MNRouteDivergenceResult * {__strong},MNRouteDivergenceResult * {__strong}>>,std::__map_value_compare<geo::PolylineCoordinate,std::__value_type<geo::PolylineCoordinate,std::pair<MNRouteDivergenceResult * {__strong},MNRouteDivergenceResult * {__strong}>>,std::less<geo::PolylineCoordinate>,true>,std::allocator<std::__value_type<geo::PolylineCoordinate,std::pair<MNRouteDivergenceResult * {__strong},MNRouteDivergenceResult * {__strong}>>>>::destroy(*a1);
    std::__tree<std::__value_type<geo::PolylineCoordinate,std::pair<MNRouteDivergenceResult * {__strong},MNRouteDivergenceResult * {__strong}>>,std::__map_value_compare<geo::PolylineCoordinate,std::__value_type<geo::PolylineCoordinate,std::pair<MNRouteDivergenceResult * {__strong},MNRouteDivergenceResult * {__strong}>>,std::less<geo::PolylineCoordinate>,true>,std::allocator<std::__value_type<geo::PolylineCoordinate,std::pair<MNRouteDivergenceResult * {__strong},MNRouteDivergenceResult * {__strong}>>>>::destroy(a1[1]);

    operator delete(a1);
  }
}

void sub_1D3219EE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__10786(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D321A3E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

void MNDisplayETAAndRemainingMinutes(void *a1, void *a2, double a3)
{
  v6 = [MEMORY[0x1E695DF00] date];
  if (v6)
  {
    v13 = v6;
    v7 = [v6 dateByAddingTimeInterval:{fmax(a3, 60.0)}];
    v8 = v7;
    if (a1)
    {
      v9 = v7;
      *a1 = v8;
    }

    if (a2)
    {
      [v13 timeIntervalSinceReferenceDate];
      v11 = floor(v10 * 0.0166666667);
      [v8 timeIntervalSinceReferenceDate];
      *a2 = (floor(v12 * 0.0166666667) - v11);
    }

    v6 = v13;
  }

  else
  {
    if (a1)
    {
      *a1 = 0;
    }

    if (a2)
    {
      *a2 = 0;
    }
  }
}

uint64_t ____scheduleDebugConfigKeyReset_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  return _GEOConfigRemoveValue();
}

void sub_1D321E3EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__11255(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D3220484(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__11836(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id GetAudioLogForMNAudioSystemEventQueueCategory()
{
  if (GetAudioLogForMNAudioSystemEventQueueCategory_onceToken != -1)
  {
    dispatch_once(&GetAudioLogForMNAudioSystemEventQueueCategory_onceToken, &__block_literal_global_11840);
  }

  v1 = GetAudioLogForMNAudioSystemEventQueueCategory_log;

  return v1;
}

void __GetAudioLogForMNAudioSystemEventQueueCategory_block_invoke()
{
  v0 = os_log_create("com.apple.Navigation.Audio", "MNAudioSystemEventQueue");
  v1 = GetAudioLogForMNAudioSystemEventQueueCategory_log;
  GetAudioLogForMNAudioSystemEventQueueCategory_log = v0;
}

BOOL _navigation_GEOLatLngIsNilOrZero(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    [v1 lat];
    if (v3 == 0.0)
    {
      [v2 lng];
      v5 = v4 == 0.0;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

id _regionsFromLatLngs(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if ([v1 count])
  {
    GEOConfigGetDouble();
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = ___regionsFromLatLngs_block_invoke;
    aBlock[3] = &__block_descriptor_40_e33___GEOMapRegion_16__0__GEOLatLng_8l;
    aBlock[4] = v2;
    v3 = _Block_copy(aBlock);
    v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = v1;
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = v3[2](v3, *(*(&v13 + 1) + 8 * i));
          [v4 addObject:{v10, v13}];
        }

        v7 = [v5 countByEnumeratingWithState:&v13 objects:v18 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  v11 = *MEMORY[0x1E69E9840];

  return v4;
}

id ___regionsFromLatLngs_block_invoke(uint64_t a1, void *a2)
{
  [a2 coordinate];
  v3 = *(a1 + 32);
  GEOMapRectMakeWithRadialDistance();
  v8 = [objc_alloc(MEMORY[0x1E69A2200]) initWithMapRect:{v4, v5, v6, v7}];

  return v8;
}

void sub_1D322986C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__12729(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D322A9D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D322AB18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D322B71C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D322C9A8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1D3230924(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id GetAudioLogForMNAudioSessionResourceAccessCategory()
{
  if (GetAudioLogForMNAudioSessionResourceAccessCategory_onceToken != -1)
  {
    dispatch_once(&GetAudioLogForMNAudioSessionResourceAccessCategory_onceToken, &__block_literal_global_14030);
  }

  v1 = GetAudioLogForMNAudioSessionResourceAccessCategory_log;

  return v1;
}

void __GetAudioLogForMNAudioSessionResourceAccessCategory_block_invoke()
{
  v0 = os_log_create("com.apple.Navigation.Audio", "MNAudioSessionResourceAccess");
  v1 = GetAudioLogForMNAudioSessionResourceAccessCategory_log;
  GetAudioLogForMNAudioSessionResourceAccessCategory_log = v0;
}

id GetAudioLogForMNSpeechResourceControllerCategory()
{
  if (GetAudioLogForMNSpeechResourceControllerCategory_onceToken != -1)
  {
    dispatch_once(&GetAudioLogForMNSpeechResourceControllerCategory_onceToken, &__block_literal_global_14143);
  }

  v1 = GetAudioLogForMNSpeechResourceControllerCategory_log;

  return v1;
}

void __GetAudioLogForMNSpeechResourceControllerCategory_block_invoke()
{
  v0 = os_log_create("com.apple.Navigation.Audio", "MNSpeechResourceController");
  v1 = GetAudioLogForMNSpeechResourceControllerCategory_log;
  GetAudioLogForMNSpeechResourceControllerCategory_log = v0;
}

void sub_1D323331C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D323406C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id location, id a30)
{
  objc_destroyWeak((v31 + 48));
  objc_destroyWeak((v31 + 40));
  _Block_object_dispose((v32 - 160), 8);
  objc_destroyWeak((v30 + 40));
  objc_destroyWeak((v30 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a30);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__14191(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D3234874(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location, id a24, char a25)
{
  objc_destroyWeak((v25 + 48));
  objc_destroyWeak((v25 + 40));
  _Block_object_dispose(&a25, 8);
  objc_destroyWeak(&location);
  objc_destroyWeak(&a24);
  _Unwind_Resume(a1);
}

id MNMap(void *a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = v4[2](v4, *(*(&v16 + 1) + 8 * i), v9);
        if (v12)
        {
          [v5 addObject:{v12, v16}];
        }

        ++v9;
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v13 = [v5 copy];
  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

void sub_1D323A0D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D323A704(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

BOOL MNCurrentNavigationStateAllowsDoom()
{
  v0 = +[MNNavigationStateManager sharedManager];
  v1 = [v0 currentStateType];

  return (v1 - 7) < 0xFFFFFFFFFFFFFFFCLL;
}

uint64_t __Block_byref_object_copy__15833(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D323F92C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D32441D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ConditionInducerLibrary()
{
  v13 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = ConditionInducerLibraryCore_frameworkLibrary;
  v9 = ConditionInducerLibraryCore_frameworkLibrary;
  if (!ConditionInducerLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __ConditionInducerLibraryCore_block_invoke;
    v3[4] = &unk_1E842FE60;
    v4 = &v6;
    v5 = v3;
    v10 = xmmword_1E842FED0;
    v11 = *off_1E842FEE0;
    v12 = 0;
    v7[3] = _sl_dlopen();
    ConditionInducerLibraryCore_frameworkLibrary = *(v4[1] + 24);
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  v1 = v3[0];
  if (!v0)
  {
    v1 = abort_report_np();
    __break(1u);
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x1E69E9840];
}

void sub_1D3244334(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCOConditionSessionClass_block_invoke(uint64_t a1)
{
  ConditionInducerLibrary();
  result = objc_getClass("COConditionSession");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCOConditionSessionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np();
    return __ConditionInducerLibraryCore_block_invoke(v3);
  }

  return result;
}

uint64_t __ConditionInducerLibraryCore_block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  ConditionInducerLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ctConnection()
{
  result = ctConnection_connection;
  if (!ctConnection_connection)
  {
    result = _CTServerConnectionCreateOnTargetQueue();
    ctConnection_connection = result;
  }

  return result;
}

id errorFromCTError(uint64_t a1)
{
  v12[1] = *MEMORY[0x1E69E9840];
  switch(a1)
  {
    case 0:
      v5 = 0;
      goto LABEL_10;
    case 2:
      v2 = *MEMORY[0x1E696A5A0];
      v3 = mach_error_string(SHIDWORD(a1));
      break;
    case 1:
      v2 = *MEMORY[0x1E696A798];
      v3 = strerror(SHIDWORD(a1));
      break;
    default:
      v4 = "Unknown";
      v2 = @"Unknown";
      goto LABEL_9;
  }

  v4 = v3;
LABEL_9:
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v4];
  v7 = MEMORY[0x1E696ABC0];
  v11 = *MEMORY[0x1E696A278];
  v12[0] = v6;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v5 = [v7 errorWithDomain:v2 code:a1 >> 32 userInfo:v8];

LABEL_10:
  v9 = *MEMORY[0x1E69E9840];

  return v5;
}

void sub_1D324491C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void CoreWiFiLibrary()
{
  v13 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = CoreWiFiLibraryCore_frameworkLibrary;
  v9 = CoreWiFiLibraryCore_frameworkLibrary;
  if (!CoreWiFiLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __CoreWiFiLibraryCore_block_invoke;
    v3[4] = &unk_1E842FE60;
    v4 = &v6;
    v5 = v3;
    v10 = xmmword_1E842FE30;
    v11 = *off_1E842FE40;
    v12 = 0;
    v7[3] = _sl_dlopen();
    CoreWiFiLibraryCore_frameworkLibrary = *(v4[1] + 24);
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  v1 = v3[0];
  if (!v0)
  {
    v1 = abort_report_np();
    __break(1u);
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x1E69E9840];
}

void sub_1D3244A74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCWFInterfaceClass_block_invoke(uint64_t a1)
{
  CoreWiFiLibrary();
  result = objc_getClass("CWFInterface");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCWFInterfaceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np();
    return __CoreWiFiLibraryCore_block_invoke(v3);
  }

  return result;
}

uint64_t __CoreWiFiLibraryCore_block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  CoreWiFiLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1D3244EB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __ATKLoggerLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  ATKLoggerLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void CoreAutomationDeviceLibrary()
{
  v13 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = CoreAutomationDeviceLibraryCore_frameworkLibrary;
  v9 = CoreAutomationDeviceLibraryCore_frameworkLibrary;
  if (!CoreAutomationDeviceLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __CoreAutomationDeviceLibraryCore_block_invoke;
    v3[4] = &unk_1E842FE60;
    v4 = &v6;
    v5 = v3;
    v10 = xmmword_1E842FEA8;
    v11 = *off_1E842FEB8;
    v12 = 0;
    v7[3] = _sl_dlopen();
    CoreAutomationDeviceLibraryCore_frameworkLibrary = *(v4[1] + 24);
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  v1 = v3[0];
  if (!v0)
  {
    v1 = abort_report_np();
    __break(1u);
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x1E69E9840];
}

void sub_1D3245084(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCAMDEmbeddedDeviceServiceClass_block_invoke(uint64_t a1)
{
  CoreAutomationDeviceLibrary();
  result = objc_getClass("CAMDEmbeddedDeviceService");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCAMDEmbeddedDeviceServiceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np();
    return __CoreAutomationDeviceLibraryCore_block_invoke(v3);
  }

  return result;
}

uint64_t __CoreAutomationDeviceLibraryCore_block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  CoreAutomationDeviceLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1D3247EF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D324813C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D3248780(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1D324FF24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D3250070(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1D32501BC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1D325186C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v10 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1D32521C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *MNTrafficIncidentAlertTypeAsString(uint64_t a1)
{
  if ((a1 - 1) > 6)
  {
    return @"None";
  }

  else
  {
    return off_1E84304E8[a1 - 1];
  }
}

void sub_1D325D59C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D3260814(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__20329(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id GetAudioLogForMNAudioPathwayResourceAccessCategory()
{
  if (GetAudioLogForMNAudioPathwayResourceAccessCategory_onceToken != -1)
  {
    dispatch_once(&GetAudioLogForMNAudioPathwayResourceAccessCategory_onceToken, &__block_literal_global_20893);
  }

  v1 = GetAudioLogForMNAudioPathwayResourceAccessCategory_log;

  return v1;
}

void __GetAudioLogForMNAudioPathwayResourceAccessCategory_block_invoke()
{
  v0 = os_log_create("com.apple.Navigation.Audio", "MNAudioPathwayResourceAccess");
  v1 = GetAudioLogForMNAudioPathwayResourceAccessCategory_log;
  GetAudioLogForMNAudioPathwayResourceAccessCategory_log = v0;
}

uint64_t __Block_byref_object_copy__21188(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D3267EC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D3268B3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D326ACE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, id a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, id a52, uint64_t a53, id location, char a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61, uint64_t a62, uint64_t a63)
{
  objc_destroyWeak((v67 + 64));
  objc_destroyWeak(&a34);
  objc_destroyWeak(&a52);
  objc_destroyWeak(&location);
  _Block_object_dispose(&a55, 8);
  _Block_object_dispose(&a61, 8);
  _Block_object_dispose(&a67, 8);
  _Block_object_dispose((v68 - 240), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__21496(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D326C4BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __GetAudioLogForMNAudioManagerCategory_block_invoke()
{
  v0 = os_log_create("com.apple.Navigation.Audio", "MNAudioManager");
  v1 = GetAudioLogForMNAudioManagerCategory_log;
  GetAudioLogForMNAudioManagerCategory_log = v0;
}

void sub_1D3273C54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D3273E2C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1D32758C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D3276230(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D3276554(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

CLLocationCoordinate2D CLLocationCoordinate2DMake(CLLocationDegrees latitude, CLLocationDegrees longitude)
{
  MEMORY[0x1EEDE89C8](latitude, longitude);
  result.longitude = v3;
  result.latitude = v2;
  return result;
}

void operator delete(void *__p)
{
    ;
  }
}

void operator new()
{
    ;
  }
}