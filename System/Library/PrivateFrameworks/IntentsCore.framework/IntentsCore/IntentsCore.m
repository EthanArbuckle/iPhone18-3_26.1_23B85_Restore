void sub_255504834(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__216(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_255509738(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 96));
  _Unwind_Resume(a1);
}

void CarPlayServicesLibrary()
{
  v5 = *MEMORY[0x277D85DE8];
  v2[0] = 0;
  if (!CarPlayServicesLibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x277D85DD0];
    v2[2] = 3221225472;
    v2[3] = __CarPlayServicesLibraryCore_block_invoke;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_2797E7750;
    v4 = 0;
    CarPlayServicesLibraryCore_frameworkLibrary = _sl_dlopen();
    v0 = v2[0];
    if (CarPlayServicesLibraryCore_frameworkLibrary)
    {
      if (!v2[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v0 = abort_report_np();
    }

    free(v0);
  }

LABEL_4:
  v1 = *MEMORY[0x277D85DE8];
}

uint64_t __CarPlayServicesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CarPlayServicesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_255509BF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__349(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25550A134(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25550A78C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getGEOCountryConfigurationClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!GeoServicesLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __GeoServicesLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_2797E7768;
    v7 = 0;
    GeoServicesLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (GeoServicesLibraryCore_frameworkLibrary)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("GEOCountryConfiguration");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np();
  }

  getGEOCountryConfigurationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getCRCarPlayAppPolicyEvaluatorClass_block_invoke(uint64_t a1)
{
  CarKitLibrary();
  result = objc_getClass("CRCarPlayAppPolicyEvaluator");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCRCarPlayAppPolicyEvaluatorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np();
    return __getCRCarPlayAppDeclarationClass_block_invoke(v3);
  }

  return result;
}

void __getCRCarPlayAppDeclarationClass_block_invoke(uint64_t a1)
{
  CarKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CRCarPlayAppDeclaration");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCRCarPlayAppDeclarationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    abort_report_np();
    CarKitLibrary();
  }
}

void CarKitLibrary()
{
  v5 = *MEMORY[0x277D85DE8];
  v2[0] = 0;
  if (!CarKitLibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x277D85DD0];
    v2[2] = 3221225472;
    v2[3] = __CarKitLibraryCore_block_invoke;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_2797E7780;
    v4 = 0;
    CarKitLibraryCore_frameworkLibrary = _sl_dlopen();
    v0 = v2[0];
    if (CarKitLibraryCore_frameworkLibrary)
    {
      if (!v2[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v0 = abort_report_np();
    }

    free(v0);
  }

LABEL_4:
  v1 = *MEMORY[0x277D85DE8];
}

uint64_t __CarKitLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CarKitLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __GeoServicesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  GeoServicesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

__CFString *INCExtensionTransactionStateTypeGetName(unint64_t a1)
{
  if (a1 > 5)
  {
    return 0;
  }

  else
  {
    return off_2797E7798[a1];
  }
}

void sub_25550AE90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25550B6E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25550B944(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class __getCARSessionStatusClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!CarKitLibraryCore_frameworkLibrary_480)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __CarKitLibraryCore_block_invoke_481;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_2797E79C8;
    v7 = 0;
    CarKitLibraryCore_frameworkLibrary_480 = _sl_dlopen();
    v2 = v5[0];
    if (CarKitLibraryCore_frameworkLibrary_480)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("CARSessionStatus");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np();
  }

  getCARSessionStatusClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __CarKitLibraryCore_block_invoke_481(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CarKitLibraryCore_frameworkLibrary_480 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25550E2B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getCARSessionStatusClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCARSessionStatusClass_softClass_559;
  v7 = getCARSessionStatusClass_softClass_559;
  if (!getCARSessionStatusClass_softClass_559)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getCARSessionStatusClass_block_invoke_560;
    v3[3] = &unk_2797E8190;
    v3[4] = &v4;
    __getCARSessionStatusClass_block_invoke_560(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_25550E39C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getTUCallCenterClass_block_invoke(uint64_t a1)
{
  TelephonyUtilitiesLibrary();
  result = objc_getClass("TUCallCenter");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getTUCallCenterClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np();
    return __112__INCAppProxy_launchAppInBackground_restrictAppsToCarPlay_userActivityIdentifier_retainsSiri_completionHandler___block_invoke(v3);
  }

  return result;
}

void TelephonyUtilitiesLibrary()
{
  v5 = *MEMORY[0x277D85DE8];
  v2[0] = 0;
  if (!TelephonyUtilitiesLibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x277D85DD0];
    v2[2] = 3221225472;
    v2[3] = __TelephonyUtilitiesLibraryCore_block_invoke;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_2797E7A60;
    v4 = 0;
    TelephonyUtilitiesLibraryCore_frameworkLibrary = _sl_dlopen();
    v0 = v2[0];
    if (TelephonyUtilitiesLibraryCore_frameworkLibrary)
    {
      if (!v2[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v0 = abort_report_np();
    }

    free(v0);
  }

LABEL_4:
  v1 = *MEMORY[0x277D85DE8];
}

uint64_t __TelephonyUtilitiesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  TelephonyUtilitiesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getCARSessionStatusClass_block_invoke_560(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!CarKitLibraryCore_frameworkLibrary_561)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __CarKitLibraryCore_block_invoke_562;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_2797E7A48;
    v7 = 0;
    CarKitLibraryCore_frameworkLibrary_561 = _sl_dlopen();
    v2 = v5[0];
    if (CarKitLibraryCore_frameworkLibrary_561)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("CARSessionStatus");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np();
  }

  getCARSessionStatusClass_softClass_559 = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __CarKitLibraryCore_block_invoke_562(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CarKitLibraryCore_frameworkLibrary_561 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void *__getAFIsPersistentSiriAvailableSymbolLoc_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!AssistantServicesLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __AssistantServicesLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_2797E7A30;
    v8 = 0;
    AssistantServicesLibraryCore_frameworkLibrary = _sl_dlopen();
    v3 = v6[0];
    v2 = AssistantServicesLibraryCore_frameworkLibrary;
    if (AssistantServicesLibraryCore_frameworkLibrary)
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

  v2 = AssistantServicesLibraryCore_frameworkLibrary;
LABEL_5:
  result = dlsym(v2, "AFIsPersistentSiriAvailable");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAFIsPersistentSiriAvailableSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __AssistantServicesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AssistantServicesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25550F164(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getTUCallProviderManagerClass_block_invoke(uint64_t a1)
{
  TelephonyUtilitiesLibrary();
  result = objc_getClass("TUCallProviderManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getTUCallProviderManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np();
    return __68__INCAppProxy_shouldLaunchAppInBackgroundWithIntent_intentResponse___block_invoke(v3);
  }

  return result;
}

void INCRouteAudioToAirplayOutputDevices(void *a1, void *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = [v3 count];
  v6 = MEMORY[0x277CD38C8];
  v7 = os_signpost_id_generate(*MEMORY[0x277CD38C8]);
  v8 = *v6;
  v9 = v8;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 67240192;
    *&buf[4] = v5;
    _os_signpost_emit_with_name_impl(&dword_255503000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "INSignpostSiriAirPlaySetAudioSessionCategory", " deviceIdCount=%{public,signpost.telemetry:number1}d  enableTelemetry=YES ", buf, 8u);
  }

  v25 = 0;
  v26 = &v25;
  v27 = 0x2050000000;
  v10 = getAVAudioSessionClass_softClass;
  v28 = getAVAudioSessionClass_softClass;
  if (!getAVAudioSessionClass_softClass)
  {
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __getAVAudioSessionClass_block_invoke;
    v30 = &unk_2797E8190;
    v31 = &v25;
    __getAVAudioSessionClass_block_invoke(buf);
    v10 = v26[3];
  }

  v11 = v10;
  _Block_object_dispose(&v25, 8);
  v12 = [v10 auxiliarySession];
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v13 = getAVAudioSessionCategoryPlaybackSymbolLoc_ptr;
  v28 = getAVAudioSessionCategoryPlaybackSymbolLoc_ptr;
  if (!getAVAudioSessionCategoryPlaybackSymbolLoc_ptr)
  {
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __getAVAudioSessionCategoryPlaybackSymbolLoc_block_invoke;
    v30 = &unk_2797E8190;
    v31 = &v25;
    v14 = AVFoundationLibrary();
    v15 = dlsym(v14, "AVAudioSessionCategoryPlayback");
    *(v31[1] + 24) = v15;
    getAVAudioSessionCategoryPlaybackSymbolLoc_ptr = *(v31[1] + 24);
    v13 = v26[3];
  }

  _Block_object_dispose(&v25, 8);
  if (!v13)
  {
    dlerror();
    abort_report_np();
    __break(1u);
  }

  v16 = *v13;
  v24 = 0;
  v17 = v16;
  v18 = [v12 setCategory:v17 error:&v24];
  v19 = v24;

  v20 = *v6;
  if ((v18 & 1) == 0 && os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    *&buf[4] = "INCRouteAudioToAirplayOutputDevices";
    *&buf[12] = 2114;
    *&buf[14] = v19;
    _os_log_error_impl(&dword_255503000, v20, OS_LOG_TYPE_ERROR, "%s Failed to select playback category on auxiliary context. %{public}@", buf, 0x16u);
    v20 = *v6;
  }

  v21 = v20;
  v22 = v21;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
  {
    *buf = 67240192;
    *&buf[4] = v5;
    _os_signpost_emit_with_name_impl(&dword_255503000, v22, OS_SIGNPOST_INTERVAL_END, v7, "INSignpostSiriAirPlaySetAudioSessionCategory", " deviceIdCount=%{public,signpost.telemetry:number1}d  enableTelemetry=YES ", buf, 8u);
  }

  INCRouteAudioToAirplayOutputDevicesForAudioSession(v3, v12, v4);
  v23 = *MEMORY[0x277D85DE8];
}

void sub_25550F61C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
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
    v3 = abort_report_np();
    return __getAVAudioSessionCategoryPlaybackSymbolLoc_block_invoke(v3);
  }

  return result;
}

void *__getAVAudioSessionCategoryPlaybackSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AVFoundationLibrary();
  result = dlsym(v2, "AVAudioSessionCategoryPlayback");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVAudioSessionCategoryPlaybackSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t AVFoundationLibrary()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!AVFoundationLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __AVFoundationLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_2797E7B38;
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
  v2 = *MEMORY[0x277D85DE8];
  return v0;
}

void INCRouteAudioToAirplayOutputDevicesForAudioSession(void *a1, void *a2, void *a3)
{
  v44 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = MEMORY[0x277CD38C8];
  v9 = *MEMORY[0x277CD38C8];
  if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    *&buf[4] = "INCRouteAudioToAirplayOutputDevicesForAudioSession";
    *&buf[12] = 2112;
    *&buf[14] = v5;
    _os_log_debug_impl(&dword_255503000, v9, OS_LOG_TYPE_DEBUG, "%s creating reconnaissance session for airplay ids: %@", buf, 0x16u);
  }

  v10 = [v5 count];
  v11 = os_signpost_id_generate(*v8);
  v12 = *v8;
  v13 = v12;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 67240192;
    *&buf[4] = v10;
    _os_signpost_emit_with_name_impl(&dword_255503000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "INSignpostSiriAirPlayReconnaissanceSessionCreateWithEndpointFeatures", " deviceIdCount=%{public,signpost.telemetry:number1}d  enableTelemetry=YES ", buf, 8u);
  }

  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v14 = getMRAVReconnaissanceSessionCreateWithEndpointFeaturesSymbolLoc_ptr;
  v40 = getMRAVReconnaissanceSessionCreateWithEndpointFeaturesSymbolLoc_ptr;
  if (!getMRAVReconnaissanceSessionCreateWithEndpointFeaturesSymbolLoc_ptr)
  {
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __getMRAVReconnaissanceSessionCreateWithEndpointFeaturesSymbolLoc_block_invoke;
    v42 = &unk_2797E8190;
    v43 = &v37;
    v15 = MediaRemoteLibrary();
    v16 = dlsym(v15, "MRAVReconnaissanceSessionCreateWithEndpointFeatures");
    *(v43[1] + 24) = v16;
    getMRAVReconnaissanceSessionCreateWithEndpointFeaturesSymbolLoc_ptr = *(v43[1] + 24);
    v14 = v38[3];
  }

  _Block_object_dispose(&v37, 8);
  if (!v14)
  {
    goto LABEL_22;
  }

  v17 = v14(v5, 1);
  v18 = *v8;
  v19 = v18;
  if (v11 - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v18))
  {
    *buf = 67240192;
    *&buf[4] = v10;
    _os_signpost_emit_with_name_impl(&dword_255503000, v19, OS_SIGNPOST_INTERVAL_END, v11, "INSignpostSiriAirPlayReconnaissanceSessionCreateWithEndpointFeatures", " deviceIdCount=%{public,signpost.telemetry:number1}d  enableTelemetry=YES ", buf, 8u);
  }

  v20 = [v6 opaqueSessionID];
  v21 = os_signpost_id_generate(*v8);
  v22 = *v8;
  v23 = v22;
  if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
  {
    *buf = 67240192;
    *&buf[4] = v10;
    _os_signpost_emit_with_name_impl(&dword_255503000, v23, OS_SIGNPOST_INTERVAL_BEGIN, v21, "INSignpostSiriAirPlayReconnaissanceSessionSetTargetAudioSessionID", " deviceIdCount=%{public,signpost.telemetry:number1}d  enableTelemetry=YES ", buf, 8u);
  }

  soft_MRAVReconnaissanceSessionSetTargetAudioSessionID(v17, v20);
  v24 = *v8;
  v25 = v24;
  if (v21 - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v24))
  {
    *buf = 67240192;
    *&buf[4] = v10;
    _os_signpost_emit_with_name_impl(&dword_255503000, v25, OS_SIGNPOST_INTERVAL_END, v21, "INSignpostSiriAirPlayReconnaissanceSessionSetTargetAudioSessionID", " deviceIdCount=%{public,signpost.telemetry:number1}d  enableTelemetry=YES ", buf, 8u);
  }

  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v26 = getMRAVReconnaissanceSessionSetWaitForUnanimousEndpointsSymbolLoc_ptr;
  v40 = getMRAVReconnaissanceSessionSetWaitForUnanimousEndpointsSymbolLoc_ptr;
  if (!getMRAVReconnaissanceSessionSetWaitForUnanimousEndpointsSymbolLoc_ptr)
  {
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __getMRAVReconnaissanceSessionSetWaitForUnanimousEndpointsSymbolLoc_block_invoke;
    v42 = &unk_2797E8190;
    v43 = &v37;
    v27 = MediaRemoteLibrary();
    v28 = dlsym(v27, "MRAVReconnaissanceSessionSetWaitForUnanimousEndpoints");
    *(v43[1] + 24) = v28;
    getMRAVReconnaissanceSessionSetWaitForUnanimousEndpointsSymbolLoc_ptr = *(v43[1] + 24);
    v26 = v38[3];
  }

  _Block_object_dispose(&v37, 8);
  if (!v26)
  {
LABEL_22:
    dlerror();
    abort_report_np();
    __break(1u);
  }

  v26(v17, 0);
  soft_MRAVReconnaissanceSessionSetReturnPartialResults(v17, 1);
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __INCRouteAudioToAirplayOutputDevicesForAudioSession_block_invoke;
  v32[3] = &unk_2797E7AC8;
  v34 = v7;
  v35 = v10;
  v33 = v6;
  v36 = v20;
  v29 = v7;
  v30 = v6;
  soft_MRAVReconnaissanceSessionBeginSearch(v17, v32);

  v31 = *MEMORY[0x277D85DE8];
}

void sub_25550FD24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getMRAVReconnaissanceSessionCreateWithEndpointFeaturesSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaRemoteLibrary();
  result = dlsym(v2, "MRAVReconnaissanceSessionCreateWithEndpointFeatures");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMRAVReconnaissanceSessionCreateWithEndpointFeaturesSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t MediaRemoteLibrary()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!MediaRemoteLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __MediaRemoteLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_2797E7B50;
    v6 = 0;
    MediaRemoteLibraryCore_frameworkLibrary = _sl_dlopen();
    v1 = v4[0];
    v0 = MediaRemoteLibraryCore_frameworkLibrary;
    if (MediaRemoteLibraryCore_frameworkLibrary)
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

  v0 = MediaRemoteLibraryCore_frameworkLibrary;
LABEL_5:
  v2 = *MEMORY[0x277D85DE8];
  return v0;
}

uint64_t soft_MRAVReconnaissanceSessionSetTargetAudioSessionID(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v4 = getMRAVReconnaissanceSessionSetTargetAudioSessionIDSymbolLoc_ptr;
  v11 = getMRAVReconnaissanceSessionSetTargetAudioSessionIDSymbolLoc_ptr;
  if (!getMRAVReconnaissanceSessionSetTargetAudioSessionIDSymbolLoc_ptr)
  {
    v5 = MediaRemoteLibrary();
    v9[3] = dlsym(v5, "MRAVReconnaissanceSessionSetTargetAudioSessionID");
    getMRAVReconnaissanceSessionSetTargetAudioSessionIDSymbolLoc_ptr = v9[3];
    v4 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (!v4)
  {
    dlerror();
    v7 = abort_report_np();
    _Block_object_dispose(&v8, 8);
    _Unwind_Resume(v7);
  }

  return v4(a1, a2);
}

void *__getMRAVReconnaissanceSessionSetWaitForUnanimousEndpointsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaRemoteLibrary();
  result = dlsym(v2, "MRAVReconnaissanceSessionSetWaitForUnanimousEndpoints");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMRAVReconnaissanceSessionSetWaitForUnanimousEndpointsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t soft_MRAVReconnaissanceSessionSetReturnPartialResults(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v4 = getMRAVReconnaissanceSessionSetReturnPartialResultsSymbolLoc_ptr;
  v11 = getMRAVReconnaissanceSessionSetReturnPartialResultsSymbolLoc_ptr;
  if (!getMRAVReconnaissanceSessionSetReturnPartialResultsSymbolLoc_ptr)
  {
    v5 = MediaRemoteLibrary();
    v9[3] = dlsym(v5, "MRAVReconnaissanceSessionSetReturnPartialResults");
    getMRAVReconnaissanceSessionSetReturnPartialResultsSymbolLoc_ptr = v9[3];
    v4 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (!v4)
  {
    dlerror();
    v7 = abort_report_np();
    _Block_object_dispose(&v8, 8);
    _Unwind_Resume(v7);
  }

  return v4(a1, a2);
}

void __INCRouteAudioToAirplayOutputDevicesForAudioSession_block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v51 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 32);
  v8 = MEMORY[0x277CD38C8];
  if (!a4)
  {
LABEL_10:
    v17 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      *&buf[4] = "INCRouteAudioToAirplayOutputDevicesForAudioSession_block_invoke";
      _os_log_debug_impl(&dword_255503000, v17, OS_LOG_TYPE_DEBUG, "%s Checking for audio pairs", buf, 0xCu);
    }

    v9 = [a2 if_compactMap:&__block_literal_global_583];
    v18 = [v9 count];
    v19 = *v8;
    if (v18)
    {
      v20 = os_signpost_id_generate(*v8);
      v21 = *v8;
      v22 = v21;
      if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
      {
        v23 = *(a1 + 48);
        v24 = [v9 count];
        *buf = 67240448;
        *&buf[4] = v23;
        *&buf[8] = 1026;
        *&buf[10] = v24;
        _os_signpost_emit_with_name_impl(&dword_255503000, v22, OS_SIGNPOST_EVENT, v20, "INSignpostSiriAirPlayAudioPairPath", " deviceIdCount=%{public,signpost.telemetry:number1}d  logicalDeviceCount=%{public,signpost.telemetry:number2}d  enableTelemetry=YES ", buf, 0xEu);
      }

      v45 = 0;
      v46 = &v45;
      v47 = 0x2020000000;
      v25 = getMRAVReconnaissanceSessionCreateWithMatchingLogicalDeviceIDsSymbolLoc_ptr;
      v48 = getMRAVReconnaissanceSessionCreateWithMatchingLogicalDeviceIDsSymbolLoc_ptr;
      if (!getMRAVReconnaissanceSessionCreateWithMatchingLogicalDeviceIDsSymbolLoc_ptr)
      {
        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 3221225472;
        *&buf[16] = __getMRAVReconnaissanceSessionCreateWithMatchingLogicalDeviceIDsSymbolLoc_block_invoke;
        *&buf[24] = &unk_2797E8190;
        v50 = &v45;
        v26 = MediaRemoteLibrary();
        v27 = dlsym(v26, "MRAVReconnaissanceSessionCreateWithMatchingLogicalDeviceIDs");
        *(v50[1] + 24) = v27;
        getMRAVReconnaissanceSessionCreateWithMatchingLogicalDeviceIDsSymbolLoc_ptr = *(v50[1] + 24);
        v25 = v46[3];
      }

      _Block_object_dispose(&v45, 8);
      if (!v25)
      {
        goto LABEL_33;
      }

      v28 = v25(v9);
      soft_MRAVReconnaissanceSessionSetTargetAudioSessionID(v28, *(a1 + 56));
      soft_MRAVReconnaissanceSessionSetReturnPartialResults(v28, 0);
      v29 = [v9 count];
      v45 = 0;
      v46 = &v45;
      v47 = 0x2020000000;
      v30 = getMRAVReconnaissanceSessionSetExpectedLogicalDevicesSymbolLoc_ptr;
      v48 = getMRAVReconnaissanceSessionSetExpectedLogicalDevicesSymbolLoc_ptr;
      if (!getMRAVReconnaissanceSessionSetExpectedLogicalDevicesSymbolLoc_ptr)
      {
        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 3221225472;
        *&buf[16] = __getMRAVReconnaissanceSessionSetExpectedLogicalDevicesSymbolLoc_block_invoke;
        *&buf[24] = &unk_2797E8190;
        v50 = &v45;
        v31 = MediaRemoteLibrary();
        v32 = dlsym(v31, "MRAVReconnaissanceSessionSetExpectedLogicalDevices");
        *(v50[1] + 24) = v32;
        getMRAVReconnaissanceSessionSetExpectedLogicalDevicesSymbolLoc_ptr = *(v50[1] + 24);
        v30 = v46[3];
      }

      _Block_object_dispose(&v45, 8);
      if (!v30)
      {
LABEL_33:
        dlerror();
        abort_report_np();
        __break(1u);
      }

      v30(v28, v29);
      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = __INCRouteAudioToAirplayOutputDevicesForAudioSession_block_invoke_4;
      v42[3] = &unk_2797E7AA0;
      v44 = a2;
      v43 = *(a1 + 40);
      soft_MRAVReconnaissanceSessionBeginSearch(v28, v42);
    }

    else
    {
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315138;
        *&buf[4] = "INCRouteAudioToAirplayOutputDevicesForAudioSession_block_invoke_2";
        _os_log_debug_impl(&dword_255503000, v19, OS_LOG_TYPE_DEBUG, "%s No audio pairs detected", buf, 0xCu);
      }

      INCMRAVSetOutputDevicesForAudioContext(a2, *(a1 + 40));
    }

    goto LABEL_32;
  }

  v9 = a4;
  v10 = [a2 count];
  if (INCMRAVDiscoveryErrorIsPartialDiscoveryError(v9) && [a2 count])
  {
    v11 = os_signpost_id_generate(*v8);
    v12 = *v8;
    v13 = v12;
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
    {
      v41 = *(a1 + 48);
      v14 = [v9 code];
      v15 = [v9 domain];
      *buf = 67240962;
      *&buf[4] = v41;
      *&buf[8] = 1026;
      *&buf[10] = v10;
      *&buf[14] = 1026;
      *&buf[16] = v14;
      *&buf[20] = 2114;
      *&buf[22] = v15;
      _os_signpost_emit_with_name_impl(&dword_255503000, v13, OS_SIGNPOST_EVENT, v11, "INSignpostSiriAirPlayDeviceSearchPartialError", " deviceIdCount=%{public,signpost.telemetry:number1}d  deviceCount=%{public,signpost.telemetry:number2}d  errorCode=%{public,signpost.telemetry:number3}d  errorDomain=%{public,signpost.telemetry:string1}@  enableTelemetry=YES ", buf, 0x1Eu);
    }

    v16 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "INCRouteAudioToAirplayOutputDevicesForAudioSession_block_invoke";
      *&buf[12] = 2114;
      *&buf[14] = a2;
      _os_log_error_impl(&dword_255503000, v16, OS_LOG_TYPE_ERROR, "%s Timed out with partial discovery. Found devices: %{public}@", buf, 0x16u);
    }

    goto LABEL_10;
  }

  v33 = os_signpost_id_generate(*v8);
  v34 = *v8;
  v35 = v34;
  if (v33 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v34))
  {
    v36 = *(a1 + 48);
    v37 = [v9 code];
    v38 = [v9 domain];
    *buf = 67240962;
    *&buf[4] = v36;
    *&buf[8] = 1026;
    *&buf[10] = v10;
    *&buf[14] = 1026;
    *&buf[16] = v37;
    *&buf[20] = 2114;
    *&buf[22] = v38;
    _os_signpost_emit_with_name_impl(&dword_255503000, v35, OS_SIGNPOST_EVENT, v33, "INSignpostSiriAirPlayDeviceSearchError", " deviceIdCount=%{public,signpost.telemetry:number1}d  deviceCount=%{public,signpost.telemetry:number2}d  errorCode=%{public,signpost.telemetry:number3}d  errorDomain=%{public,signpost.telemetry:string1}@  enableTelemetry=YES ", buf, 0x1Eu);
  }

  v39 = *v8;
  if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    *&buf[4] = "INCRouteAudioToAirplayOutputDevicesForAudioSession_block_invoke";
    *&buf[12] = 2114;
    *&buf[14] = v9;
    _os_log_error_impl(&dword_255503000, v39, OS_LOG_TYPE_ERROR, "%s Failed to search for output devices: %{public}@", buf, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
LABEL_32:

  v40 = *MEMORY[0x277D85DE8];
}

void sub_2555107DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void soft_MRAVReconnaissanceSessionBeginSearch(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v4 = getMRAVReconnaissanceSessionBeginSearchSymbolLoc_ptr;
  v10 = getMRAVReconnaissanceSessionBeginSearchSymbolLoc_ptr;
  if (!getMRAVReconnaissanceSessionBeginSearchSymbolLoc_ptr)
  {
    v5 = MediaRemoteLibrary();
    v8[3] = dlsym(v5, "MRAVReconnaissanceSessionBeginSearch");
    getMRAVReconnaissanceSessionBeginSearchSymbolLoc_ptr = v8[3];
    v4 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  if (!v4)
  {
    dlerror();
    v6 = abort_report_np();
    _Block_object_dispose(&v7, 8);
    _Unwind_Resume(v6);
  }

  v4(a1, v3, 5.0);
}

void *__getMRAVReconnaissanceSessionBeginSearchSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaRemoteLibrary();
  result = dlsym(v2, "MRAVReconnaissanceSessionBeginSearch");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMRAVReconnaissanceSessionBeginSearchSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t INCMRAVDiscoveryErrorIsPartialDiscoveryError(void *a1)
{
  v1 = a1;
  if ([v1 code] == 26)
  {
    v2 = [v1 domain];
    v8 = 0;
    v9 = &v8;
    v10 = 0x2020000000;
    v3 = getkMRMediaRemoteFrameworkErrorDomainSymbolLoc_ptr;
    v11 = getkMRMediaRemoteFrameworkErrorDomainSymbolLoc_ptr;
    if (!getkMRMediaRemoteFrameworkErrorDomainSymbolLoc_ptr)
    {
      v4 = MediaRemoteLibrary();
      v9[3] = dlsym(v4, "kMRMediaRemoteFrameworkErrorDomain");
      getkMRMediaRemoteFrameworkErrorDomainSymbolLoc_ptr = v9[3];
      v3 = v9[3];
    }

    _Block_object_dispose(&v8, 8);
    if (!v3)
    {
      dlerror();
      v7 = abort_report_np();
      _Block_object_dispose(&v8, 8);
      _Unwind_Resume(v7);
    }

    v5 = [v2 isEqualToString:*v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void INCMRAVSetOutputDevicesForAudioContext(void *a1, void *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = MEMORY[0x277CD38C8];
  v6 = *MEMORY[0x277CD38C8];
  if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    *&buf[4] = "INCMRAVSetOutputDevicesForAudioContext";
    *&buf[12] = 2112;
    *&buf[14] = v3;
    _os_log_debug_impl(&dword_255503000, v6, OS_LOG_TYPE_DEBUG, "%s Setting output devices on the shared audio presentation context: %@", buf, 0x16u);
  }

  v7 = dispatch_get_global_queue(0, 0);
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v8 = getMRAVOutputContextGetSharedAudioPresentationContextSymbolLoc_ptr;
  v30 = getMRAVOutputContextGetSharedAudioPresentationContextSymbolLoc_ptr;
  if (!getMRAVOutputContextGetSharedAudioPresentationContextSymbolLoc_ptr)
  {
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __getMRAVOutputContextGetSharedAudioPresentationContextSymbolLoc_block_invoke;
    v32 = &unk_2797E8190;
    v33 = &v27;
    v9 = MediaRemoteLibrary();
    v10 = dlsym(v9, "MRAVOutputContextGetSharedAudioPresentationContext");
    *(v33[1] + 24) = v10;
    getMRAVOutputContextGetSharedAudioPresentationContextSymbolLoc_ptr = *(v33[1] + 24);
    v8 = v28[3];
  }

  _Block_object_dispose(&v27, 8);
  if (!v8)
  {
    dlerror();
    abort_report_np();
    goto LABEL_15;
  }

  v11 = v8();
  v12 = [v3 count];
  v13 = os_signpost_id_generate(*v5);
  v14 = *v5;
  v15 = v14;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    *buf = 67240192;
    *&buf[4] = v12;
    _os_signpost_emit_with_name_impl(&dword_255503000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v13, "INSignpostSiriAirPlaySetOutputDevices", " deviceCount=%{public,signpost.telemetry:number1}d  enableTelemetry=YES ", buf, 8u);
  }

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __INCMRAVSetOutputDevicesForAudioContext_block_invoke;
  v23[3] = &unk_2797E7B70;
  v25 = v13;
  v26 = v12;
  v16 = v4;
  v24 = v16;
  v17 = v7;
  v18 = v23;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v19 = getMRAVOutputContextSetOutputDevicesSymbolLoc_ptr;
  v30 = getMRAVOutputContextSetOutputDevicesSymbolLoc_ptr;
  if (!getMRAVOutputContextSetOutputDevicesSymbolLoc_ptr)
  {
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __getMRAVOutputContextSetOutputDevicesSymbolLoc_block_invoke;
    v32 = &unk_2797E8190;
    v33 = &v27;
    v20 = MediaRemoteLibrary();
    v21 = dlsym(v20, "MRAVOutputContextSetOutputDevices");
    *(v33[1] + 24) = v21;
    getMRAVOutputContextSetOutputDevicesSymbolLoc_ptr = *(v33[1] + 24);
    v19 = v28[3];
  }

  _Block_object_dispose(&v27, 8);
  if (!v19)
  {
    dlerror();
    abort_report_np();
LABEL_15:
    __break(1u);
  }

  v19(v11, v3, v17, v18);

  v22 = *MEMORY[0x277D85DE8];
}

void sub_255510E60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getMRAVReconnaissanceSessionCreateWithMatchingLogicalDeviceIDsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaRemoteLibrary();
  result = dlsym(v2, "MRAVReconnaissanceSessionCreateWithMatchingLogicalDeviceIDs");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMRAVReconnaissanceSessionCreateWithMatchingLogicalDeviceIDsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMRAVReconnaissanceSessionSetExpectedLogicalDevicesSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaRemoteLibrary();
  result = dlsym(v2, "MRAVReconnaissanceSessionSetExpectedLogicalDevices");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMRAVReconnaissanceSessionSetExpectedLogicalDevicesSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void __INCRouteAudioToAirplayOutputDevicesForAudioSession_block_invoke_4(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v18 = *MEMORY[0x277D85DE8];
  if (a4)
  {
    if (INCMRAVDiscoveryErrorIsPartialDiscoveryError(a4) && [a2 count])
    {
      v7 = *MEMORY[0x277CD38C8];
      if (!os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_11;
      }

      *v17 = 136315394;
      *&v17[4] = "INCRouteAudioToAirplayOutputDevicesForAudioSession_block_invoke";
      *&v17[12] = 2114;
      *&v17[14] = a2;
      v8 = "%s Timed out with partial discovery while finding audio pairs. Found devices: %{public}@";
      v9 = v7;
    }

    else
    {
      v10 = *MEMORY[0x277CD38C8];
      if (!os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_11;
      }

      *v17 = 136315394;
      *&v17[4] = "INCRouteAudioToAirplayOutputDevicesForAudioSession_block_invoke";
      *&v17[12] = 2114;
      *&v17[14] = a4;
      v8 = "%s Failed to search for output devices while finding audio pairs: %{public}@";
      v9 = v10;
    }

    _os_log_error_impl(&dword_255503000, v9, OS_LOG_TYPE_ERROR, v8, v17, 0x16u);
  }

  else
  {
    v11 = *MEMORY[0x277CD38C8];
    if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_DEBUG))
    {
      *v17 = 136315138;
      *&v17[4] = "INCRouteAudioToAirplayOutputDevicesForAudioSession_block_invoke";
      _os_log_debug_impl(&dword_255503000, v11, OS_LOG_TYPE_DEBUG, "%s Audio pairs detected", v17, 0xCu);
    }
  }

LABEL_11:
  v12 = [MEMORY[0x277CBEB98] setWithArray:{*(a1 + 40), *v17, *&v17[16], v18}];
  v13 = v12;
  if (a2)
  {
    v14 = [v12 setByAddingObjectsFromArray:a2];

    v13 = v14;
  }

  v15 = [v13 allObjects];
  INCMRAVSetOutputDevicesForAudioContext(v15, *(a1 + 32));

  v16 = *MEMORY[0x277D85DE8];
}

void *__getMRAVOutputContextGetSharedAudioPresentationContextSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaRemoteLibrary();
  result = dlsym(v2, "MRAVOutputContextGetSharedAudioPresentationContext");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMRAVOutputContextGetSharedAudioPresentationContextSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void __INCMRAVSetOutputDevicesForAudioContext_block_invoke(void *a1, void *a2)
{
  *&v25[5] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CD38C8];
  v5 = *MEMORY[0x277CD38C8];
  v6 = v5;
  v7 = a1[5];
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    v8 = a1[6];
    v23 = 67240192;
    *v24 = v8;
    _os_signpost_emit_with_name_impl(&dword_255503000, v6, OS_SIGNPOST_INTERVAL_END, v7, "INSignpostSiriAirPlaySetOutputDevices", " deviceCount=%{public,signpost.telemetry:number1}d  enableTelemetry=YES ", &v23, 8u);
  }

  if (a2)
  {
    v9 = a2;
    v10 = os_signpost_id_generate(*v4);
    v11 = *v4;
    v12 = v11;
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      v13 = a1[6];
      v14 = [v9 code];
      v15 = [v9 domain];
      v23 = 67240706;
      *v24 = v13;
      *&v24[4] = 1026;
      *&v24[6] = v14;
      v25[0] = 2114;
      *&v25[1] = v15;
      _os_signpost_emit_with_name_impl(&dword_255503000, v12, OS_SIGNPOST_EVENT, v10, "INSignpostSiriAirPlaySetOutputDeviceError", " deviceCount=%{public,signpost.telemetry:number1}d  errorCode=%{public,signpost.telemetry:number2}d  errorDomain=%{public,signpost.telemetry:string1}@  enableTelemetry=YES ", &v23, 0x18u);
    }

    v16 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      v23 = 136315394;
      *v24 = "INCMRAVSetOutputDevicesForAudioContext_block_invoke";
      *&v24[8] = 2114;
      *v25 = v9;
      _os_log_error_impl(&dword_255503000, v16, OS_LOG_TYPE_ERROR, "%s Failed to set output devices on the shared audio presentation context: %{public}@", &v23, 0x16u);
    }

    (*(a1[4] + 16))();
  }

  else
  {
    v17 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEBUG))
    {
      v23 = 136315138;
      *v24 = "INCMRAVSetOutputDevicesForAudioContext_block_invoke";
      _os_log_debug_impl(&dword_255503000, v17, OS_LOG_TYPE_DEBUG, "%s Set output devices on the shared audio presentation context", &v23, 0xCu);
      v17 = *v4;
    }

    v18 = os_signpost_id_generate(v17);
    v19 = *v4;
    v20 = v19;
    if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
    {
      v21 = a1[6];
      v23 = 67240192;
      *v24 = v21;
      _os_signpost_emit_with_name_impl(&dword_255503000, v20, OS_SIGNPOST_EVENT, v18, "INSignpostSiriAirPlaySetOutputDeviceSuccess", " deviceCount=%{public,signpost.telemetry:number1}d  enableTelemetry=YES ", &v23, 8u);
    }

    (*(a1[4] + 16))();
  }

  v22 = *MEMORY[0x277D85DE8];
}

void *__getMRAVOutputContextSetOutputDevicesSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaRemoteLibrary();
  result = dlsym(v2, "MRAVOutputContextSetOutputDevices");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMRAVOutputContextSetOutputDevicesSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkMRMediaRemoteFrameworkErrorDomainSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaRemoteLibrary();
  result = dlsym(v2, "kMRMediaRemoteFrameworkErrorDomain");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkMRMediaRemoteFrameworkErrorDomainSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMRAVReconnaissanceSessionSetReturnPartialResultsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaRemoteLibrary();
  result = dlsym(v2, "MRAVReconnaissanceSessionSetReturnPartialResults");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMRAVReconnaissanceSessionSetReturnPartialResultsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMRAVReconnaissanceSessionSetTargetAudioSessionIDSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaRemoteLibrary();
  result = dlsym(v2, "MRAVReconnaissanceSessionSetTargetAudioSessionID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMRAVReconnaissanceSessionSetTargetAudioSessionIDSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MediaRemoteLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MediaRemoteLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __AVFoundationLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AVFoundationLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void INCDecodeHashedRouteUIDs(void *a1, void *a2)
{
  v44 = *MEMORY[0x277D85DE8];
  v23 = a1;
  v3 = a2;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__589;
  v37 = __Block_byref_object_dispose__590;
  v38 = 0;
  if (INThisProcessIsAssistantd() && (INThisProcessIsRunningAsInstance() & 1) == 0)
  {
    v4 = [(objc_class *)objc_getClass("ADSecurityService") sharedService];
    v5 = v34[5];
    v34[5] = v4;
  }

  if (v34[5] || (v6 = [[(objc_class *)objc_getClass("AFSecurityConnection") alloc] init], v7 = v34[5], v34[5] = v6, v7, v34[5]))
  {
    v8 = [objc_alloc(MEMORY[0x277CBEB58]) initWithArray:v23];
    if ([v8 containsObject:@"LOCAL_DEVICE"])
    {
      v9 = *MEMORY[0x277CD38C8];
      if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v40 = "INCDecodeHashedRouteUIDs";
        _os_log_error_impl(&dword_255503000, v9, OS_LOG_TYPE_ERROR, "%s Unexpected LOCAL_DEVICE identifier.", buf, 0xCu);
      }

      [v8 removeObject:{@"LOCAL_DEVICE", v23}];
    }

    if ([v8 count])
    {
      v10 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v8, "count")}];
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v11 = v8;
      v12 = [v11 countByEnumeratingWithState:&v29 objects:v43 count:16];
      if (v12)
      {
        v13 = *v30;
        while (2)
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v30 != v13)
            {
              objc_enumerationMutation(v11);
            }

            v15 = *(*(&v29 + 1) + 8 * i);
            v16 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v15 options:0];
            if (!v16)
            {
              v18 = *MEMORY[0x277CD38C8];
              if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                v40 = "INCDecodeHashedRouteUIDs";
                v41 = 2112;
                v42 = v15;
                _os_log_error_impl(&dword_255503000, v18, OS_LOG_TYPE_ERROR, "%s Failed to decode %@ as base64 data", buf, 0x16u);
              }

              v19 = [MEMORY[0x277CCA9B8] errorWithDomain:@"INCExtensionErrorDomain" code:1317 userInfo:0];
              v3[2](v3, 0, v19);

              goto LABEL_24;
            }

            [v10 setObject:v16 forKey:v15];
          }

          v12 = [v11 countByEnumeratingWithState:&v29 objects:v43 count:16];
          if (v12)
          {
            continue;
          }

          break;
        }
      }

      v17 = v34[5];
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __INCDecodeHashedRouteUIDs_block_invoke;
      v25[3] = &unk_2797E7B18;
      v27 = v3;
      v26 = v11;
      v28 = &v33;
      [v17 processDataMap:v10 usingProcedure:2 completion:v25];
    }

    else
    {
      v20 = [MEMORY[0x277CBEA60] array];
      (v3)[2](v3, v20, 0);

      v10 = v34[5];
      v34[5] = 0;
    }

LABEL_24:
  }

  else
  {
    v22 = *MEMORY[0x277CD38C8];
    if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v40 = "INCDecodeHashedRouteUIDs";
      _os_log_error_impl(&dword_255503000, v22, OS_LOG_TYPE_ERROR, "%s Unable to get security service", buf, 0xCu);
    }

    v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"INCExtensionErrorDomain" code:1317 userInfo:{0, v23}];
    v3[2](v3, 0, v8);
  }

  _Block_object_dispose(&v33, 8);
  v21 = *MEMORY[0x277D85DE8];
}

void sub_255511BA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__589(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __INCDecodeHashedRouteUIDs_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if ([v6 count])
  {
    v7 = *MEMORY[0x277CD38C8];
    if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v22 = "INCDecodeHashedRouteUIDs_block_invoke";
      v23 = 2112;
      v24 = v6;
      _os_log_error_impl(&dword_255503000, v7, OS_LOG_TYPE_ERROR, "%s Decoding error: %@", buf, 0x16u);
    }

    v8 = *(a1 + 40);
    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"INCExtensionErrorDomain" code:1317 userInfo:0];
    (*(v8 + 16))(v8, 0, v9);
  }

  else
  {
    v10 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __INCDecodeHashedRouteUIDs_block_invoke_16;
    v19[3] = &unk_2797E7AF0;
    v9 = v10;
    v20 = v9;
    [v5 enumerateKeysAndObjectsUsingBlock:v19];
    v11 = [*(a1 + 32) count];
    if (v11 == [v9 count])
    {
      (*(*(a1 + 40) + 16))();
    }

    else
    {
      v12 = *MEMORY[0x277CD38C8];
      if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_ERROR))
      {
        v18 = *(a1 + 32);
        *buf = 136315650;
        v22 = "INCDecodeHashedRouteUIDs_block_invoke";
        v23 = 2112;
        v24 = v18;
        v25 = 2114;
        v26 = v9;
        _os_log_error_impl(&dword_255503000, v12, OS_LOG_TYPE_ERROR, "%s Decoding error. Hashed route UIDs = %@, decoded route UIDs = %{public}@", buf, 0x20u);
      }

      v13 = *(a1 + 40);
      v14 = [MEMORY[0x277CCA9B8] errorWithDomain:@"INCExtensionErrorDomain" code:1317 userInfo:0];
      (*(v13 + 16))(v13, 0, v14);
    }
  }

  v15 = *(*(a1 + 48) + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = 0;

  v17 = *MEMORY[0x277D85DE8];
}

void __INCDecodeHashedRouteUIDs_block_invoke_16(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v8 encoding:4];
  v10 = *MEMORY[0x277CD38C8];
  if (v9)
  {
    if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_DEBUG))
    {
      v12 = 136315650;
      v13 = "INCDecodeHashedRouteUIDs_block_invoke";
      v14 = 2112;
      v15 = v7;
      v16 = 2114;
      v17 = v9;
      _os_log_debug_impl(&dword_255503000, v10, OS_LOG_TYPE_DEBUG, "%s %@ => %{public}@", &v12, 0x20u);
    }

    [*(a1 + 32) addObject:v9];
  }

  else
  {
    if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_ERROR))
    {
      v12 = 136315650;
      v13 = "INCDecodeHashedRouteUIDs_block_invoke";
      v14 = 2112;
      v15 = v8;
      v16 = 2112;
      v17 = v7;
      _os_log_error_impl(&dword_255503000, v10, OS_LOG_TYPE_ERROR, "%s Failed to convert decoded data %@ to a string for hashed route UID %@", &v12, 0x20u);
    }

    *a4 = 1;
  }

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t __Block_byref_object_copy__639(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_255512C20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id location, char a31)
{
  objc_destroyWeak((v31 + 56));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a31, 8);
  _Unwind_Resume(a1);
}

void sub_2555177B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__867(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id getCARSessionStatusClass_870()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCARSessionStatusClass_softClass_871;
  v7 = getCARSessionStatusClass_softClass_871;
  if (!getCARSessionStatusClass_softClass_871)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getCARSessionStatusClass_block_invoke_872;
    v3[3] = &unk_2797E8190;
    v3[4] = &v4;
    __getCARSessionStatusClass_block_invoke_872(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_255517AD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCARSessionStatusClass_block_invoke_872(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!CarKitLibraryCore_frameworkLibrary_873)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __CarKitLibraryCore_block_invoke_874;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_2797E80C8;
    v7 = 0;
    CarKitLibraryCore_frameworkLibrary_873 = _sl_dlopen();
    v2 = v5[0];
    if (CarKitLibraryCore_frameworkLibrary_873)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("CARSessionStatus");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np();
  }

  getCARSessionStatusClass_softClass_871 = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __CarKitLibraryCore_block_invoke_874(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CarKitLibraryCore_frameworkLibrary_873 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2555180B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id INCSerializeNSUserActivity(void *a1, void *a2)
{
  v3 = a1;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__867;
  v17 = __Block_byref_object_dispose__868;
  v18 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__867;
  v11 = __Block_byref_object_dispose__868;
  v12 = 0;
  [v3 setNeedsSave:0];
  [v3 _intentsPrepareForEncoding];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __INCSerializeNSUserActivity_block_invoke;
  v6[3] = &unk_2797E8018;
  v6[4] = &v13;
  v6[5] = &v7;
  [v3 _createUserActivityDataWithOptions:0 completionHandler:v6];
  if (a2)
  {
    *a2 = v8[5];
  }

  v4 = v14[5];
  _Block_object_dispose(&v7, 8);

  _Block_object_dispose(&v13, 8);

  return v4;
}

void sub_255518244(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 64), 8);
  _Unwind_Resume(a1);
}

Class __getUIActivityContinuationActionClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!UIKitLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __UIKitLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_2797E80F8;
    v7 = 0;
    UIKitLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (UIKitLibraryCore_frameworkLibrary)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("UIActivityContinuationAction");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np();
  }

  getUIActivityContinuationActionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __UIKitLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  UIKitLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void __INCSerializeNSUserActivity_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

uint64_t __CarPlayServicesLibraryCore_block_invoke_883(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CarPlayServicesLibraryCore_frameworkLibrary_882 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void *__getAFIsPersistentSiriAvailableSymbolLoc_block_invoke_894(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!AssistantServicesLibraryCore_frameworkLibrary_895)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __AssistantServicesLibraryCore_block_invoke_896;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_2797E80B0;
    v8 = 0;
    AssistantServicesLibraryCore_frameworkLibrary_895 = _sl_dlopen();
    v3 = v6[0];
    v2 = AssistantServicesLibraryCore_frameworkLibrary_895;
    if (AssistantServicesLibraryCore_frameworkLibrary_895)
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

  v2 = AssistantServicesLibraryCore_frameworkLibrary_895;
LABEL_5:
  result = dlsym(v2, "AFIsPersistentSiriAvailable");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAFIsPersistentSiriAvailableSymbolLoc_ptr_893 = *(*(*(a1 + 32) + 8) + 24);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __AssistantServicesLibraryCore_block_invoke_896(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AssistantServicesLibraryCore_frameworkLibrary_895 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

id INCUnderlyingInteractionFromInteraction(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = [v5 intentResponse];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v7 = v6;
    v8 = [v7 underlyingIntent];
    v9 = [v7 underlyingIntentResponse];

    if (v8)
    {
      v9 = v9;
      v10 = v8;
      v11 = [v10 typeName];
      v12 = [v10 messageData];

      v13 = INIntentCreate();

      if (v13)
      {
        if (v9)
        {
          v14 = [v9 typeName];
          v15 = [v9 messageData];
          v16 = INIntentResponseCreate();
        }

        else
        {
          v16 = 0;
        }

        v20 = [objc_alloc(MEMORY[0x277CD3D58]) initWithIntent:v13 response:v16];
      }

      else
      {
        v20 = 0;
      }

      if (v20)
      {
        v21 = [v20 intentResponse];
        v22 = [v21 userActivity];

        if (!v22)
        {
          v23 = objc_alloc(MEMORY[0x277CC1EF0]);
          v24 = [v20 intent];
          v25 = [v24 _className];
          v22 = [v23 initWithActivityType:v25];
        }

        v26 = v22;
        *a2 = v22;
        [v20 setIntentHandlingStatus:{objc_msgSend(v5, "intentHandlingStatus")}];
        v27 = [v20 intent];
        v28 = [v27 _intents_bundleIdForLaunching];

        if (a3 && v28)
        {
          *a3 = [v20 intent];
        }

        v19 = INCUnderlyingInteractionFromInteraction(v20, a2, a3);
      }

      else
      {
        v19 = v5;
      }
    }

    else
    {
      v17 = [v5 intent];
      v18 = [v17 _intents_bundleIdForLaunching];

      v10 = 0;
      if (a3 && v18)
      {
        [v5 intent];
        v10 = 0;
        *a3 = v19 = 0;
      }

      else
      {
        v19 = 0;
      }
    }
  }

  else
  {
    v19 = v5;
    v9 = 0;
    v10 = 0;
  }

  return v19;
}

id INCDeserializeNSUserActivityData(void *a1)
{
  if (a1)
  {
    v1 = MEMORY[0x277CC1EF0];
    v2 = a1;
    v3 = [[v1 alloc] _initWithUserActivityData:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_25551AE20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getLNFullyQualifiedActionIdentifierClass_block_invoke(uint64_t a1)
{
  LinkServicesLibrary();
  result = objc_getClass("LNFullyQualifiedActionIdentifier");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getLNFullyQualifiedActionIdentifierClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np();
    return __getLNActionDefaultValueProviderClass_block_invoke(v3);
  }

  return result;
}

Class __getLNActionDefaultValueProviderClass_block_invoke(uint64_t a1)
{
  LinkServicesLibrary();
  result = objc_getClass("LNActionDefaultValueProvider");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getLNActionDefaultValueProviderClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np();
    return __74__INCWidgetIntentProvider__provideAppIntentWithOptions_completionHandler___block_invoke(v3);
  }

  return result;
}

uint64_t WorkflowKitLibraryCore()
{
  v2 = *MEMORY[0x277D85DE8];
  if (!WorkflowKitLibraryCore_frameworkLibrary)
  {
    WorkflowKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  result = WorkflowKitLibraryCore_frameworkLibrary;
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t getWFLinkActionSerializedParametersForLNActionSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getWFLinkActionSerializedParametersForLNActionSymbolLoc_ptr;
  v6 = getWFLinkActionSerializedParametersForLNActionSymbolLoc_ptr;
  if (!getWFLinkActionSerializedParametersForLNActionSymbolLoc_ptr)
  {
    v2[0] = MEMORY[0x277D85DD0];
    v2[1] = 3221225472;
    v2[2] = __getWFLinkActionSerializedParametersForLNActionSymbolLoc_block_invoke;
    v2[3] = &unk_2797E8190;
    v2[4] = &v3;
    __getWFLinkActionSerializedParametersForLNActionSymbolLoc_block_invoke(v2);
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_25551B3AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getWFLinkActionSerializedParametersForLNActionSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = WorkflowKitLibraryCore();
  if (!v2)
  {
    v4 = abort_report_np();
    free(v4);
  }

  result = dlsym(v2, "WFLinkActionSerializedParametersForLNAction");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getWFLinkActionSerializedParametersForLNActionSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __WorkflowKitLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  WorkflowKitLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void LinkServicesLibrary()
{
  v5 = *MEMORY[0x277D85DE8];
  v2[0] = 0;
  if (!LinkServicesLibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x277D85DD0];
    v2[2] = 3221225472;
    v2[3] = __LinkServicesLibraryCore_block_invoke;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_2797E81B0;
    v4 = 0;
    LinkServicesLibraryCore_frameworkLibrary = _sl_dlopen();
    v0 = v2[0];
    if (LinkServicesLibraryCore_frameworkLibrary)
    {
      if (!v2[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v0 = abort_report_np();
    }

    free(v0);
  }

LABEL_4:
  v1 = *MEMORY[0x277D85DE8];
}

uint64_t __LinkServicesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  LinkServicesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}