void sub_1A32648E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getTPInComingCallUISnapshotViewControllerClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!TelephonyUILibraryCore_frameworkLibrary_0)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __TelephonyUILibraryCore_block_invoke_0;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E76E9BF8;
    v6 = 0;
    TelephonyUILibraryCore_frameworkLibrary_0 = _sl_dlopen();
    v2 = v4[0];
    if (TelephonyUILibraryCore_frameworkLibrary_0)
    {
      if (!v4[0])
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
  result = objc_getClass("TPInComingCallUISnapshotViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getTPInComingCallUISnapshotViewControllerClass_block_invoke_cold_1();
  }

  getTPInComingCallUISnapshotViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __TelephonyUILibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  TelephonyUILibraryCore_frameworkLibrary_0 = result;
  return result;
}

void sub_1A3265A2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A3265E08(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

uint64_t __CNGuardOSLog_block_invoke_16()
{
  CNGuardOSLog_cn_once_object_0_16 = os_log_create("com.apple.contacts", "api");

  return MEMORY[0x1EEE66BB8]();
}

void sub_1A32666A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getSTRemotePasscodeControllerClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!ScreenTimeUILibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __ScreenTimeUILibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E76E9C58;
    v6 = 0;
    ScreenTimeUILibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (ScreenTimeUILibraryCore_frameworkLibrary)
    {
      if (!v4[0])
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
  result = objc_getClass("STRemotePasscodeController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSTRemotePasscodeControllerClass_block_invoke_cold_1();
  }

  getSTRemotePasscodeControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __ScreenTimeUILibraryCore_block_invoke()
{
  result = _sl_dlopen();
  ScreenTimeUILibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t __CNGuardOSLog_block_invoke_17()
{
  CNGuardOSLog_cn_once_object_0_17 = os_log_create("com.apple.contacts", "api");

  return MEMORY[0x1EEE66BB8]();
}

void sub_1A32679A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getTKTonePickerViewControllerClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!ToneKitLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __ToneKitLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E76E9C90;
    v6 = 0;
    ToneKitLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (ToneKitLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
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
  result = objc_getClass("TKTonePickerViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getTKTonePickerViewControllerClass_block_invoke_cold_1();
  }

  getTKTonePickerViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __ToneKitLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  ToneKitLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_1A326AE54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A326B528(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A326B75C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A326E494(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sIntentForActionType_block_invoke(uint64_t a1, void *a2)
{
  v2 = sIntentForActionType_block_invoke_cn_once_token_4;
  v3 = a2;
  if (v2 != -1)
  {
    sIntentForActionType_block_invoke_cold_1();
  }

  v4 = [sIntentForActionType_block_invoke_cn_once_object_4 objectForKeyedSubscript:v3];

  return v4;
}

void sIntentForActionType_block_invoke_2()
{
  v5[3] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E695C1B8];
  v4[0] = *MEMORY[0x1E695C150];
  v4[1] = v0;
  v5[0] = @"INStartAudioCallIntent";
  v5[1] = @"INStartVideoCallIntent";
  v4[2] = *MEMORY[0x1E695C178];
  v5[2] = @"INSendMessageIntent";
  v1 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:3];
  v2 = [v1 copy];
  v3 = sIntentForActionType_block_invoke_cn_once_object_4;
  sIntentForActionType_block_invoke_cn_once_object_4 = v2;
}

uint64_t __CNGuardOSLog_block_invoke_18()
{
  CNGuardOSLog_cn_once_object_0_18 = os_log_create("com.apple.contacts", "api");

  return MEMORY[0x1EEE66BB8]();
}

void sub_1A3270AA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getTUDialRequestClass_block_invoke_2(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!TelephonyUtilitiesLibraryCore_frameworkLibrary_5)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __TelephonyUtilitiesLibraryCore_block_invoke_5;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E76EA0B8;
    v6 = 0;
    TelephonyUtilitiesLibraryCore_frameworkLibrary_5 = _sl_dlopen();
    v2 = v4[0];
    if (TelephonyUtilitiesLibraryCore_frameworkLibrary_5)
    {
      if (!v4[0])
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
  result = objc_getClass("TUDialRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getTUDialRequestClass_block_invoke_cold_1();
  }

  getTUDialRequestClass_softClass_2 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __TelephonyUtilitiesLibraryCore_block_invoke_5()
{
  result = _sl_dlopen();
  TelephonyUtilitiesLibraryCore_frameworkLibrary_5 = result;
  return result;
}

void sub_1A3273770(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getFBSOpenApplicationOptionKeyUnlockDeviceSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = FrontBoardServicesLibrary();
  result = dlsym(v2, "FBSOpenApplicationOptionKeyUnlockDevice");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getFBSOpenApplicationOptionKeyUnlockDeviceSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t FrontBoardServicesLibrary()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!FrontBoardServicesLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __FrontBoardServicesLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E76EA170;
    v5 = 0;
    FrontBoardServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = FrontBoardServicesLibraryCore_frameworkLibrary;
  v1 = v3[0];
  if (!FrontBoardServicesLibraryCore_frameworkLibrary)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __FrontBoardServicesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  FrontBoardServicesLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getFBSOpenApplicationOptionKeyPromptUnlockDeviceSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = FrontBoardServicesLibrary();
  result = dlsym(v2, "FBSOpenApplicationOptionKeyPromptUnlockDevice");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getFBSOpenApplicationOptionKeyPromptUnlockDeviceSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1A3273F44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __CNGuardOSLog_block_invoke_19()
{
  CNGuardOSLog_cn_once_object_0_19 = os_log_create("com.apple.contacts", "api");

  return MEMORY[0x1EEE66BB8]();
}

void sub_1A327502C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getSTManagementStateClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!ScreenTimeCoreLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __ScreenTimeCoreLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E76EA1D0;
    v6 = 0;
    ScreenTimeCoreLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (ScreenTimeCoreLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
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
  result = objc_getClass("STManagementState");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSTManagementStateClass_block_invoke_cold_1();
  }

  getSTManagementStateClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __ScreenTimeCoreLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  ScreenTimeCoreLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t __CNGuardOSLog_block_invoke_20()
{
  CNGuardOSLog_cn_once_object_0_20 = os_log_create("com.apple.contacts", "api");

  return MEMORY[0x1EEE66BB8]();
}

id quickActionTypeToString(uint64_t a1)
{
  v3 = 0;
  if (a1 > 16)
  {
    switch(a1)
    {
      case 17:
        v4 = MEMORY[0x1E695C1B8];
        break;
      case 18:
        v4 = MEMORY[0x1E695C170];
        break;
      case 19:
        v4 = MEMORY[0x1E695C188];
        break;
      default:
        goto LABEL_13;
    }
  }

  else
  {
    v4 = MEMORY[0x1E695C178];
    if (a1 && a1 != 15)
    {
      if (a1 != 16)
      {
        goto LABEL_13;
      }

      v4 = MEMORY[0x1E695C150];
    }
  }

  v3 = *v4;
LABEL_13:

  return v3;
}

uint64_t __CNGuardOSLog_block_invoke_21()
{
  CNGuardOSLog_cn_once_object_0_21 = os_log_create("com.apple.contacts", "api");

  return MEMORY[0x1EEE66BB8]();
}

void sub_1A3276EFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A3277834(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getPISegmentationLoaderClass_block_invoke_0(uint64_t a1)
{
  PhotoImagingLibrary_0();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("PISegmentationLoader");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPISegmentationLoaderClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getPISegmentationLoaderClass_block_invoke_cold_1_0();
    PhotoImagingLibrary_0();
  }
}

void PhotoImagingLibrary_0()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!PhotoImagingLibraryCore_frameworkLibrary_0)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __PhotoImagingLibraryCore_block_invoke_0;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E76EA210;
    v3 = 0;
    PhotoImagingLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  v0 = v1[0];
  if (!PhotoImagingLibraryCore_frameworkLibrary_0)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __PhotoImagingLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  PhotoImagingLibraryCore_frameworkLibrary_0 = result;
  return result;
}

CNUIAvatarLayoutItemConfiguration *__getPISegmentationClass_block_invoke(uint64_t a1)
{
  PhotoImagingLibrary_0();
  result = objc_getClass("PISegmentation");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPISegmentationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getPISegmentationClass_block_invoke_cold_1();
    return [(CNUIAvatarLayoutItemConfiguration *)v3 initWithSize:v4 x:v5 y:v6 baseSize:v7, v8];
  }

  return result;
}

uint64_t __CNGuardOSLog_block_invoke_22()
{
  CNGuardOSLog_cn_once_object_0_22 = os_log_create("com.apple.contacts", "api");

  return MEMORY[0x1EEE66BB8]();
}

Class __getTUHandleClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!TelephonyUtilitiesLibraryCore_frameworkLibrary_6)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __TelephonyUtilitiesLibraryCore_block_invoke_6;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E76EA2F8;
    v6 = 0;
    TelephonyUtilitiesLibraryCore_frameworkLibrary_6 = _sl_dlopen();
    v2 = v4[0];
    if (TelephonyUtilitiesLibraryCore_frameworkLibrary_6)
    {
      if (!v4[0])
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
  result = objc_getClass("TUHandle");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getTUHandleClass_block_invoke_cold_1();
  }

  getTUHandleClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __TelephonyUtilitiesLibraryCore_block_invoke_6()
{
  result = _sl_dlopen();
  TelephonyUtilitiesLibraryCore_frameworkLibrary_6 = result;
  return result;
}

void sub_1A327B0BC(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    JUMPOUT(0x1A327B038);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A327BD28(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

const void *_cgProcessSafeImageSourceFromData(void *a1, void *a2)
{
  v15[2] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = _safeImageDataType(v3);
  if (!v5)
  {
    goto LABEL_7;
  }

  v6 = CGDataProviderCreateWithCFData(v3);
  if (!v6)
  {
    goto LABEL_7;
  }

  v7 = v6;
  v8 = *MEMORY[0x1E696E118];
  v14[0] = *MEMORY[0x1E696E040];
  v14[1] = v8;
  v15[0] = MEMORY[0x1E695E118];
  v15[1] = v5;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];
  v10 = CGImageSourceCreateWithDataProvider(v7, v9);
  if (!v10 || (v11 = v10, v12 = v4[2](v4, v10), CFRelease(v11), !v12))
  {
    CFRelease(v7);

LABEL_7:
    v12 = CNUIEmptyPixelImageGet();
    goto LABEL_8;
  }

  CFRelease(v7);
  CFAutorelease(v12);

LABEL_8:
  return v12;
}

void sub_1A327E1D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A327E3C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sFamilyElementToMatchingContact_block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 matchingContacts];
  v3 = [v2 firstObject];

  return v3;
}

uint64_t __CNGuardOSLog_block_invoke_23()
{
  CNGuardOSLog_cn_once_object_0_23 = os_log_create("com.apple.contacts", "api");

  return MEMORY[0x1EEE66BB8]();
}

id sSortKeyForUserActionItem_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 targetHandle];
  v4 = [v2 bundleIdentifier];

  v5 = [CNUIUserActionRanking sortKeyWithUsername:v3 bundleIdentifier:v4];

  return v5;
}

id sSortKeyForAdvisedInteraction_block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 contact];
  v4 = [v3 identifier];
  v5 = [v2 bundleId];

  v6 = [CNUIUserActionRanking sortKeyWithUsername:v4 bundleIdentifier:v5];

  return v6;
}

uint64_t __CNGuardOSLog_block_invoke_24()
{
  CNGuardOSLog_cn_once_object_0_24 = os_log_create("com.apple.contacts", "api");

  return MEMORY[0x1EEE66BB8]();
}

void *sMostRecentPair_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [v5 second];
  v7 = [v6 mostRecentDate];
  v8 = [v4 second];
  v9 = [v8 mostRecentDate];
  if ([v7 compare:v9] == -1)
  {
    v10 = v4;
  }

  else
  {
    v10 = v5;
  }

  v11 = v10;

  return v10;
}

Class __getMCProfileConnectionClass_block_invoke(uint64_t a1)
{
  ManagedConfigurationLibrary();
  result = objc_getClass("MCProfileConnection");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMCProfileConnectionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getMCProfileConnectionClass_block_invoke_cold_1();
    return ManagedConfigurationLibrary();
  }

  return result;
}

uint64_t ManagedConfigurationLibrary()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!ManagedConfigurationLibraryCore_frameworkLibrary_0)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __ManagedConfigurationLibraryCore_block_invoke_0;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E76EA720;
    v5 = 0;
    ManagedConfigurationLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  v0 = ManagedConfigurationLibraryCore_frameworkLibrary_0;
  v1 = v3[0];
  if (!ManagedConfigurationLibraryCore_frameworkLibrary_0)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __ManagedConfigurationLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  ManagedConfigurationLibraryCore_frameworkLibrary_0 = result;
  return result;
}

void *__getMCProfileListChangedNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ManagedConfigurationLibrary();
  result = dlsym(v2, "MCProfileListChangedNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMCProfileListChangedNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1A3283418(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1A3284B24()
{
  result = qword_1EB0C4C00;
  if (!qword_1EB0C4C00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C4BF0);
    sub_1A3284C28();
    sub_1A3284D54(&qword_1ED8544B0, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C4C00);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1A3284C28()
{
  result = qword_1EB0C4C08;
  if (!qword_1EB0C4C08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C4C10);
    sub_1A3284D0C(&qword_1EB0C4C18, &unk_1EB0C4C20);
    sub_1A3284D0C(&qword_1EB0C0668, &unk_1EB0C4C30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C4C08);
  }

  return result;
}

uint64_t sub_1A3284D0C(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A3284D54(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A3284D9C@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1A34CC780();
  v2 = *MEMORY[0x1E697C8C0];
  v3 = sub_1A34CB6D0();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1A3284E18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5 != 4)
  {
    MEMORY[0x1A58ED320](a5);
  }

  return sub_1A34CBEF0();
}

unint64_t sub_1A3284EE0()
{
  result = qword_1EB0C4C58;
  if (!qword_1EB0C4C58)
  {
    sub_1A34CAAB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C4C58);
  }

  return result;
}

uint64_t sub_1A3284F84()
{
  swift_getWitnessTable();

  return sub_1A34C9B50();
}

uint64_t sub_1A3284FF0()
{
  v1 = *v0;
  sub_1A34CDF20();
  MEMORY[0x1A58EF750](v1);
  return sub_1A34CDF70();
}

uint64_t sub_1A3285038()
{
  v1 = *v0;
  sub_1A34CDF20();
  MEMORY[0x1A58EF750](v1);
  return sub_1A34CDF70();
}

uint64_t sub_1A328507C(uint64_t a1, id *a2)
{
  result = sub_1A34CD0F0();
  *a2 = 0;
  return result;
}

uint64_t sub_1A32850F4(uint64_t a1, id *a2)
{
  v3 = sub_1A34CD100();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1A3285174@<X0>(uint64_t *a1@<X8>)
{
  sub_1A34CD110();
  v2 = sub_1A34CD0E0();

  *a1 = v2;
  return result;
}

uint64_t sub_1A32851B8()
{
  swift_getWitnessTable();

  return sub_1A34C9B50();
}

uint64_t sub_1A32852E0(uint64_t a1)
{
  v2 = sub_1A3284D54(&qword_1EB0C5040, type metadata accessor for VNImageOption);
  v3 = sub_1A3284D54(&qword_1EB0C5048, type metadata accessor for VNImageOption);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1A3285458()
{
  sub_1A34CDF20();
  swift_getWitnessTable();
  sub_1A34C9B60();
  return sub_1A34CDF70();
}

uint64_t sub_1A32854BC(uint64_t a1)
{
  v2 = sub_1A3284D54(&qword_1EB0C5080, type metadata accessor for CNWallpaperFontDescriptionKey);
  v3 = sub_1A3284D54(&qword_1EB0C5088, type metadata accessor for CNWallpaperFontDescriptionKey);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1A3285578(uint64_t a1)
{
  v2 = sub_1A3284D54(&qword_1EB0C5070, type metadata accessor for CNWallpaperColorDescriptionKey);
  v3 = sub_1A3284D54(&qword_1EB0C5078, type metadata accessor for CNWallpaperColorDescriptionKey);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1A3285634(uint64_t a1)
{
  v2 = sub_1A3284D54(&qword_1ED8545E0, type metadata accessor for Key);
  v3 = sub_1A3284D54(&qword_1EB0C5028, type metadata accessor for Key);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1A32856F0(uint64_t a1)
{
  v2 = sub_1A3284D54(&qword_1EB0C5060, type metadata accessor for OptionsKey);
  v3 = sub_1A3284D54(&qword_1EB0C5068, type metadata accessor for OptionsKey);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1A32857AC(uint64_t a1)
{
  v2 = sub_1A3284D54(&qword_1EB0C5050, type metadata accessor for InfoKey);
  v3 = sub_1A3284D54(&qword_1EB0C5058, type metadata accessor for InfoKey);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1A3285868(uint64_t a1)
{
  v2 = sub_1A3284D54(&qword_1EB0C4F18, type metadata accessor for CNActionType);
  v3 = sub_1A3284D54(&qword_1EB0C4F20, type metadata accessor for CNActionType);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1A3285924@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1A34CD0E0();

  *a1 = v2;
  return result;
}

uint64_t sub_1A328596C(uint64_t a1)
{
  v2 = sub_1A3284D54(&qword_1EB0C5030, type metadata accessor for CNEntitlementName);
  v3 = sub_1A3284D54(&qword_1EB0C5038, type metadata accessor for CNEntitlementName);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1A3285A28()
{
  v0 = sub_1A34CD110();
  v1 = MEMORY[0x1A58EEA90](v0);

  return v1;
}

uint64_t sub_1A3285A64()
{
  sub_1A34CD110();
  sub_1A34CD1C0();
}

uint64_t sub_1A3285AB8()
{
  sub_1A34CD110();
  sub_1A34CDF20();
  sub_1A34CD1C0();
  v0 = sub_1A34CDF70();

  return v0;
}

uint64_t sub_1A3285B2C()
{
  v0 = sub_1A34CD110();
  v2 = v1;
  if (v0 == sub_1A34CD110() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1A34CDE30();
  }

  return v5 & 1;
}

uint64_t sub_1A3285BB4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return sub_1A34C9010();
  }

  else
  {
  }
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1A3285BD0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A3285BF0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

uint64_t sub_1A3285CB4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A3285CD4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1A3286028(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 16))
  {
    return (*a1 + 2);
  }

  if (*(a1 + 8))
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t sub_1A328606C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    if (a3 >= 2)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
    }
  }

  return result;
}

void sub_1A3286738(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_1A3286784(uint64_t a1)
{
  type metadata accessor for CGPath(255);
  *(a1 + 16) = v2;
  return 0;
}

uint64_t sub_1A32867FC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{

  sub_1A31EE004(a3, a4);
  sub_1A31EE004(a3, a4);
  sub_1A31ECC9C(a3, a4);
  sub_1A32890FC(a1, a2, 0, v8, v9, v10, v11, v12, v15, v16, 0x4000000000000000uLL);
  if (a4 > 2u)
  {
    if (a4 != 3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C52E0);
      a3 = swift_allocObject();
      *(a3 + 16) = xmmword_1A34DAA10;
      *(a3 + 32) = sub_1A34CC4E0();
    }
  }

  else if (a4 < 2u)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C52E0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1A34DAA10;
    *(v13 + 32) = a3;
    return v13;
  }

  return a3;
}

uint64_t sub_1A3286908()
{
  sub_1A3460288(&v4);
  v0 = v4;
  v1 = v5;
  sub_1A31EE004(v4, v5);
  sub_1A3288E28(&v4);
  if (v1 > 2)
  {
    if (v1 != 3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C52E0);
      v0 = swift_allocObject();
      *(v0 + 16) = xmmword_1A34DAA10;
      *(v0 + 32) = sub_1A34CC4E0();
    }
  }

  else if (v1 < 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C52E0);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1A34DAA10;
    *(v2 + 32) = v0;
    return v2;
  }

  return v0;
}

uint64_t sub_1A32869F4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a1;
  v35 = a2;
  v36 = 0;
  v37 = 0x4000000000000000;
  v38 = a3;
  v39 = a4;
  *&v40 = a1;
  *(&v40 + 1) = a2;
  *v41 = 0;
  *v42 = 0x4000000000000000;

  sub_1A31EE004(a3, a4);

  sub_1A31EE004(a3, a4);
  sub_1A3288E7C(&v40, &v28);
  sub_1A3288E28(&v38);
  v43[3] = *&v41[32];
  v43[4] = *&v41[48];
  v43[5] = *v42;
  v43[0] = v40;
  v43[1] = *v41;
  v43[2] = *&v41[16];
  v44 = *&v42[16];
  v45 = 0;
  v46 = 0;
  v6 = *&v41[56];
  if (*v42 >> 62)
  {
    if (*v42 >> 62 == 1)
    {
      v23 = v40;

      sub_1A3288FDC(v43, &qword_1EB0C52E8);
      v11 = v23;
      v12 = 0;
      v13 = 0x8000000000000000;
    }

    else
    {
      if (*v42 != 0x8000000000000000 || (v14 = vorrq_s8(vorrq_s8(*&v42[8], *&v41[24]), vorrq_s8(*&v41[40], *&v41[8])), *&v41[56] | *&vorr_s8(*v14.i8, *&vextq_s8(v14, v14, 8uLL)) | v40 | *(&v40 + 1) | *v41))
      {
        sub_1A3288E28(&v32);
        sub_1A3288FDC(v43, &qword_1EB0C52E8);
        return 0;
      }

      sub_1A3288FDC(v43, &qword_1EB0C52E8);
      v12 = 0;
      v6 = 0;
      v11 = xmmword_1A34DAA20;
      v7 = 0uLL;
      v13 = 0xC000000000000000;
      v8 = 0uLL;
      v9 = 0uLL;
      v10 = 0uLL;
    }
  }

  else
  {
    v12 = v41[0] & 7;
    v13 = v42[0] & 7;
    v22 = *&v41[8];
    v24 = v40;
    *&v30[32] = *&v41[48];
    *&v30[56] = *&v42[8];
    v28 = v40;
    v29 = *v41;
    *v30 = *&v41[16];
    *&v30[16] = *&v41[32];
    *v31 = *&v42[16];
    *&v30[48] = *v42 & 0x3FFFFFFFFFFFFFFFLL;
    v20 = *&v41[40];
    v21 = *&v41[24];
    v19 = *&v42[8];
    sub_1A31FA9C4(&v28, v26);
    sub_1A3288FDC(v43, &qword_1EB0C52E8);
    v10 = v19;
    v9 = v20;
    v8 = v21;
    v7 = v22;
    v11 = v24;
  }

  v15 = v32;
  v16 = v33;
  *&v28 = v32;
  *(&v28 + 1) = v33 & 7;
  v29 = v11;
  *&v30[8] = v7;
  *&v30[24] = v8;
  *&v30[40] = v9;
  *v30 = v12;
  *&v30[56] = v6;
  *v31 = v13;
  *&v31[8] = v10;
  *&v31[24] = vdupq_n_s64(0x4072C00000000000uLL);
  v26[6] = *v31;
  v26[7] = *&v31[16];
  v27 = *&v31[32];
  v26[2] = *v30;
  v26[3] = *&v30[16];
  v26[4] = *&v30[32];
  v26[5] = *&v30[48];
  v26[0] = v28;
  v26[1] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C52F0);
  swift_allocObject();
  sub_1A3288E7C(&v40, v25);
  sub_1A31EE004(v15, v16);
  sub_1A3288ED8(&v28, v25);
  MEMORY[0x1A58EC070](v26);
  sub_1A34CA820();
  v17 = sub_1A34CA800();

  sub_1A3288F34(&v28);
  sub_1A3288F88(&v40);
  sub_1A3288E28(&v32);
  return v17;
}

uint64_t sub_1A3286D7C()
{
  v1 = v0[1];
  v33 = *v0;
  v34 = v1;
  *v35 = v0[2];
  *&v35[16] = *(v0 + 6);
  sub_1A3460288(&v36);
  v28 = v33;
  v29 = BYTE8(v33);
  v30 = v34;
  v31 = v35[0];
  v32 = *&v35[8];
  sub_1A3460288(v38);
  sub_1A3288E7C(&v39, &v24);
  sub_1A3288E28(v38);
  v42[3] = *&v40[32];
  v42[4] = *&v40[48];
  v42[5] = *v41;
  v42[0] = v39;
  v42[1] = *v40;
  v42[2] = *&v40[16];
  v43 = *&v41[16];
  v44 = 0;
  v45 = 0;
  v2 = *&v40[56];
  if (*v41 >> 62)
  {
    if (*v41 >> 62 == 1)
    {
      v19 = v39;

      sub_1A3288FDC(v42, &qword_1EB0C52E8);
      v7 = v19;
      v8 = 0;
      v9 = 0x8000000000000000;
    }

    else
    {
      if (*v41 != 0x8000000000000000 || (v10 = vorrq_s8(vorrq_s8(*&v41[8], *&v40[24]), vorrq_s8(*&v40[40], *&v40[8])), *&v40[56] | *&vorr_s8(*v10.i8, *&vextq_s8(v10, v10, 8uLL)) | v39 | *(&v39 + 1) | *v40))
      {
        sub_1A3288E28(&v36);
        sub_1A3288FDC(v42, &qword_1EB0C52E8);
        return 0;
      }

      sub_1A3288FDC(v42, &qword_1EB0C52E8);
      v8 = 0;
      v2 = 0;
      v7 = xmmword_1A34DAA20;
      v3 = 0uLL;
      v9 = 0xC000000000000000;
      v4 = 0uLL;
      v5 = 0uLL;
      v6 = 0uLL;
    }
  }

  else
  {
    v8 = v40[0] & 7;
    v9 = v41[0] & 7;
    v18 = *&v40[8];
    v20 = v39;
    *&v26[32] = *&v40[48];
    *&v26[56] = *&v41[8];
    v24 = v39;
    v25 = *v40;
    *v26 = *&v40[16];
    *&v26[16] = *&v40[32];
    *v27 = *&v41[16];
    *&v26[48] = *v41 & 0x3FFFFFFFFFFFFFFFLL;
    v16 = *&v40[40];
    v17 = *&v40[24];
    v15 = *&v41[8];
    sub_1A31FA9C4(&v24, v22);
    sub_1A3288FDC(v42, &qword_1EB0C52E8);
    v6 = v15;
    v5 = v16;
    v4 = v17;
    v3 = v18;
    v7 = v20;
  }

  v11 = v36;
  v12 = v37;
  *&v24 = v36;
  *(&v24 + 1) = v37 & 7;
  v25 = v7;
  *&v26[8] = v3;
  *&v26[24] = v4;
  *&v26[40] = v5;
  *v26 = v8;
  *&v26[56] = v2;
  *v27 = v9;
  *&v27[8] = v6;
  *&v27[24] = vdupq_n_s64(0x4072C00000000000uLL);
  v22[6] = *v27;
  v22[7] = *&v27[16];
  v23 = *&v27[32];
  v22[2] = *v26;
  v22[3] = *&v26[16];
  v22[4] = *&v26[32];
  v22[5] = *&v26[48];
  v22[0] = v24;
  v22[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C52F0);
  swift_allocObject();
  sub_1A3288E7C(&v39, v21);
  sub_1A31EE004(v11, v12);
  sub_1A3288ED8(&v24, v21);
  MEMORY[0x1A58EC070](v22);
  sub_1A34CA820();
  v13 = sub_1A34CA800();

  sub_1A3288F34(&v24);
  sub_1A3288F88(&v39);
  sub_1A3288E28(&v36);
  return v13;
}

double sub_1A3287104@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned __int8 a4@<W3>, uint64_t a5@<X8>)
{
  v36 = a3;
  v37 = a4;
  v9 = &v28;
  *&v38 = a1;
  *(&v38 + 1) = a2;
  *v39 = 0;
  *&v41 = 0x4000000000000000;

  sub_1A31EE004(a3, a4);

  sub_1A31EE004(a3, a4);
  sub_1A3288E7C(&v38, &v28);
  sub_1A3288E28(&v36);
  v43[4] = v40;
  v43[5] = v41;
  v10 = v42;
  v43[0] = v38;
  v43[1] = *v39;
  v43[2] = *&v39[16];
  v43[3] = *&v39[32];
  v44 = v42;
  v45 = 0;
  v46 = 0;
  v11 = *&v39[40];
  v13 = *(&v40 + 1);
  v12 = v40;
  if (v41 >> 62)
  {
    if (v41 >> 62 == 1)
    {
      v25 = v38;

      sub_1A3288FDC(v43, &qword_1EB0C52E8);
      v23 = 0u;
      v14 = 0x8000000000000000;
    }

    else
    {
      if (v41 != 0x8000000000000000 || (v16 = vorrq_s8(*&v39[8], *&v39[24]), *&v39[40] | *&vorr_s8(*v16.i8, *&vextq_s8(v16, v16, 8uLL)) | v40 | *(&v40 + 1) | *(&v41 + 1) | v42 | v38 | *(&v38 + 1) | *v39))
      {

        sub_1A31ECC9C(a3, a4);
        sub_1A3288FDC(v43, &qword_1EB0C52E8);
        *a5 = 1;
        result = 0.0;
        *(a5 + 8) = 0u;
        *(a5 + 24) = 0u;
        *(a5 + 40) = 0u;
        *(a5 + 56) = 0u;
        *(a5 + 72) = 0u;
        *(a5 + 88) = 0;
        *(a5 + 96) = 0x2000000000000000;
        *(a5 + 104) = 0;
        *(a5 + 112) = 0;
        return result;
      }

      sub_1A3288FDC(v43, &qword_1EB0C52E8);
      v12 = 0;
      v13 = 0;
      v9 = 0;
      v10 = 0;
      v23 = 0u;
      v25 = xmmword_1A34DAA20;
      v14 = 0xC000000000000000;
      v20 = 0u;
      v22 = 0u;
    }
  }

  else
  {
    v24 = v39[0] & 7;
    v19 = v41 & 7;
    v21 = *&v39[24];
    v18 = *&v39[8];
    v32 = v40;
    v34 = *(&v41 + 1);
    v28 = v38;
    v29 = *v39;
    v30 = *&v39[16];
    v31 = *&v39[32];
    v35 = v42;
    v33 = v41 & 0x3FFFFFFFFFFFFFFFLL;
    v25 = v38;
    v9 = *(&v41 + 1);
    sub_1A31FA9C4(&v28, &v27);
    sub_1A3288FDC(v43, &qword_1EB0C52E8);
    v15.i64[0] = v24;
    v22 = vextq_s8(v18, v21, 8uLL);
    v23 = vzip1q_s64(v15, v18);
    v15.i64[0] = vdupq_laneq_s64(v21, 1).u64[0];
    v15.i64[1] = v11;
    v20 = v15;
    v14 = v19;
  }

  *&v28 = a3;
  BYTE8(v28) = a4;
  *&v29 = a1;
  *(&v29 + 1) = a2;
  *&v30 = 0;
  v35 = 0x4000000000000000;
  sub_1A31EE004(a3, a4);
  sub_1A3288E28(&v28);
  *a5 = a3;
  *(a5 + 8) = a4 & 7;
  *(a5 + 48) = v22;
  *(a5 + 64) = v20;
  result = *&v25;
  *(a5 + 16) = v25;
  *(a5 + 32) = v23;
  *(a5 + 80) = v12;
  *(a5 + 88) = v13;
  *(a5 + 96) = v14;
  *(a5 + 104) = v9;
  *(a5 + 112) = v10;
  return result;
}

double sub_1A3287434@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[2];
  v34 = v1[1];
  *v35 = v4;
  *&v35[16] = *(v1 + 6);
  v32 = *&v35[8];
  v33 = v3;
  v28 = v3;
  v29 = BYTE8(v3);
  v30 = v34;
  v31 = v4;
  sub_1A3460288(v36);
  sub_1A3288E7C(&v37, v24);
  sub_1A3288E28(v36);
  v42[3] = *&v38[32];
  v42[4] = v39;
  v42[5] = v40;
  v5 = v41;
  v42[0] = v37;
  v42[1] = *v38;
  v42[2] = *&v38[16];
  v43 = v41;
  v44 = 0;
  v45 = 0;
  v6 = *&v38[40];
  v7 = v39;
  v8 = *(&v40 + 1);
  v9 = *(&v39 + 1);
  if (v40 >> 62)
  {
    if (v40 >> 62 == 1)
    {
      v22 = v37;

      sub_1A3288FDC(v42, &qword_1EB0C52E8);
      v20 = 0u;
      v10 = 0x8000000000000000;
    }

    else
    {
      if (v40 != 0x8000000000000000 || (v13 = vorrq_s8(*&v38[8], *&v38[24]), *&v38[40] | *&vorr_s8(*v13.i8, *&vextq_s8(v13, v13, 8uLL)) | v39 | *(&v39 + 1) | *(&v40 + 1) | v41 | v37 | *(&v37 + 1) | *v38))
      {
        sub_1A3288FDC(v42, &qword_1EB0C52E8);
        *a1 = 1;
        result = 0.0;
        *(a1 + 8) = 0u;
        *(a1 + 24) = 0u;
        *(a1 + 40) = 0u;
        *(a1 + 56) = 0u;
        *(a1 + 72) = 0u;
        *(a1 + 88) = 0;
        *(a1 + 96) = 0x2000000000000000;
        *(a1 + 104) = 0;
        *(a1 + 112) = 0;
        return result;
      }

      sub_1A3288FDC(v42, &qword_1EB0C52E8);
      v7 = 0;
      v9 = 0;
      v8 = 0;
      v5 = 0;
      v20 = 0u;
      v22 = xmmword_1A34DAA20;
      v10 = 0xC000000000000000;
      v17 = 0u;
      v19 = 0u;
    }
  }

  else
  {
    v11 = v38[0] & 7;
    v10 = v40 & 7;
    v18 = *&v38[24];
    v21 = *&v38[8];
    v22 = v37;
    v24[4] = v39;
    v26 = *(&v40 + 1);
    v24[0] = v37;
    v24[1] = *v38;
    v24[2] = *&v38[16];
    v24[3] = *&v38[32];
    v27 = v41;
    v25 = v40 & 0x3FFFFFFFFFFFFFFFLL;
    sub_1A31FA9C4(v24, v23);
    sub_1A3288FDC(v42, &qword_1EB0C52E8);
    v12.i64[0] = v11;
    v19 = vextq_s8(v21, v18, 8uLL);
    v20 = vzip1q_s64(v12, v21);
    v12.i64[0] = vdupq_laneq_s64(v18, 1).u64[0];
    v12.i64[1] = v6;
    v17 = v12;
  }

  sub_1A3460288(v24);
  v14 = *&v24[0];
  v15 = BYTE8(v24[0]);
  sub_1A31EE004(*&v24[0], BYTE8(v24[0]));
  sub_1A3288E28(v24);
  *a1 = v14;
  *(a1 + 8) = v15 & 7;
  *(a1 + 48) = v19;
  *(a1 + 64) = v17;
  result = *&v22;
  *(a1 + 16) = v22;
  *(a1 + 32) = v20;
  *(a1 + 80) = v7;
  *(a1 + 88) = v9;
  *(a1 + 96) = v10;
  *(a1 + 104) = v8;
  *(a1 + 112) = v5;
  return result;
}

void sub_1A328773C(void *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for CNContactAvatarContact();
  swift_allocObject();
  sub_1A32F27E4(a1, 1);
  v4 = a1;
  sub_1A3287998(&v9);

  v5 = v9;
  v6 = BYTE8(v9);
  v7 = v10;
  v8 = v11;
  if (v12 >> 3 != 0xFFFFFFFF || v20 >= 8)
  {
    if (v20 >> 62 == 1)
    {
      sub_1A32891C8(v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20);
      sub_1A31EE004(v5, v6);
      sub_1A3288FDC(&v9, &qword_1EB0CBDB0);
      *a2 = v7;
      *(a2 + 8) = v8;
      *(a2 + 16) = v5;
      *(a2 + 24) = v6;
      return;
    }

    sub_1A3288FDC(&v9, &qword_1EB0CBDB0);
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 24) = 0;
  *(a2 + 16) = 0;
}

void sub_1A3287870(void *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for CNContactAvatarContact();
  swift_allocObject();
  sub_1A32F27E4(a1, 1);
  v4 = a1;
  sub_1A3287998(&v12);

  v5 = v12;
  v6 = BYTE8(v12);
  v8 = v13;
  v7 = v14;
  v9 = v15;
  v10 = v16;
  v11 = v17;
  if (v15 >> 3 != 0xFFFFFFFF || v18 >= 8)
  {
    if (!(v18 >> 62))
    {
      sub_1A31EE004(v12, BYTE8(v12));

      sub_1A3288FDC(&v12, &qword_1EB0CBDB0);
      *a2 = v5;
      *(a2 + 8) = v6;
      *(a2 + 16) = v8;
      *(a2 + 24) = v7;
      *(a2 + 32) = v9;
      *(a2 + 40) = v10;
      *(a2 + 48) = v11;
      return;
    }

    sub_1A3288FDC(&v12, &qword_1EB0CBDB0);
  }

  *(a2 + 48) = 0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
}

double sub_1A3287998@<D0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v47 = a1;
  v45 = sub_1A34C9780();
  v46 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v44 = &v42[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1A34CA250();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v42[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v51 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6970);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1A34DAA30;
  v9 = *MEMORY[0x1E695C1C8];
  *(v8 + 32) = *MEMORY[0x1E695C1C8];
  v10 = sub_1A3289058(&qword_1ED8547B0, type metadata accessor for CNContactAvatarContact);
  v11 = *(v10 + 80);
  v12 = type metadata accessor for CNContactAvatarContact();
  v13 = v9;
  LOBYTE(v9) = v11(v8, v12, v10);

  if ((v9 & 1) == 0)
  {
    if (qword_1ED854BB8 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v4, qword_1ED857E68);
    sub_1A34C9010();
    v21 = sub_1A34CA230();
    v22 = sub_1A34CD660();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v50 = v24;
      *v23 = 136315138;
      v25 = v44;
      sub_1A32F2928(v44);
      v26 = sub_1A34C9740();
      v28 = v27;

      (*(v46 + 8))(v25, v45);
      v29 = sub_1A31EE23C(v26, v28, &v50);

      *(v23 + 4) = v29;
      v30 = "AvatarRecipeData not currently fetched on ContactID %s";
LABEL_15:
      _os_log_impl(&dword_1A31E6000, v21, v22, v30, v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x1A58F1010](v24, -1, -1);
      MEMORY[0x1A58F1010](v23, -1, -1);
LABEL_17:

      result = 0.0;
      v41 = v47;
      *v47 = 0u;
      v41[1] = 0u;
      *(v41 + 4) = 0x7FFFFFFF8;
      *(v41 + 40) = 0u;
      *(v41 + 56) = 0u;
      *(v41 + 72) = 0u;
      *(v41 + 88) = 0u;
      *(v41 + 104) = 0u;
      return result;
    }

LABEL_16:

    goto LABEL_17;
  }

  v14 = [*(v2 + 16) avatarRecipeData];
  if (!v14)
  {
    if (qword_1ED854BB8 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v4, qword_1ED857E68);
    sub_1A34C9010();
    v21 = sub_1A34CA230();
    v22 = sub_1A34CD660();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v50 = v24;
      *v23 = 136315138;
      v31 = v44;
      sub_1A32F2928(v44);
      v32 = sub_1A34C9740();
      v34 = v33;

      (*(v46 + 8))(v31, v45);
      v35 = sub_1A31EE23C(v32, v34, &v50);

      *(v23 + 4) = v35;
      v30 = "No avatarRecipeData on ContactID: %s.";
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  v15 = v14;
  v16 = sub_1A34C9690();
  v43 = v17;

  v18 = v46;
  if (qword_1ED854BB8 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v4, qword_1ED857E68);
  (*(v5 + 16))(v7, v19, v4);
  sub_1A34C9F00();
  swift_allocObject();
  sub_1A34C9E90();
  v20 = v44;
  sub_1A32F2928(v44);
  sub_1A34C9740();
  (*(v18 + 8))(v20, v45);
  sub_1A34C9ED0();

  sub_1A34C9EA0();
  static AvatarView.Model.Recipe.recipe(from:)(v16, v43, v48);
  v36 = v48[5];
  v37 = v47;
  v47[4] = v48[4];
  v37[5] = v36;
  v37[6] = v48[6];
  *(v37 + 14) = v49;
  v38 = v48[1];
  *v37 = v48[0];
  v37[1] = v38;
  v39 = v48[3];
  v37[2] = v48[2];
  v37[3] = v39;
  sub_1A34C9E80();

  sub_1A31EC234(v16, v43);
  return result;
}

void sub_1A3288264(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  v11 = type metadata accessor for AvatarViewRecipe_Recipe(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v19[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = a5;
  v23 = a2;
  v24 = a3;
  v25 = 0;
  v26 = 0x4000000000000000;
  v20 = &v21;
  v21 = a4;

  sub_1A31EE004(a4, a5);
  sub_1A3289058(&qword_1EB0C6750, type metadata accessor for AvatarViewRecipe_Recipe);
  sub_1A34CA100();
  if (v5)
  {
    sub_1A3288E28(&v21);
  }

  else
  {
    v14 = sub_1A34CA0C0();
    v15 = v13;
    v17 = v16;
    sub_1A32890A0(v15);
    v18 = sub_1A34C9680();
    sub_1A3288E28(&v21);
    sub_1A31EC234(v14, v17);
    [a1 setAvatarRecipeData_];
  }
}

void sub_1A328842C(void *a1)
{
  v4 = type metadata accessor for AvatarViewRecipe_Recipe(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1[1];
  v15 = *v1;
  v16 = v7;
  v17 = v1[2];
  v18 = *(v1 + 6);
  sub_1A3460288(v19);
  v14 = v19;
  sub_1A3289058(&qword_1EB0C6750, type metadata accessor for AvatarViewRecipe_Recipe);
  sub_1A34CA100();
  if (v2)
  {
    sub_1A3288E28(v19);
  }

  else
  {
    v8 = sub_1A34CA0C0();
    v9 = v6;
    v11 = v10;
    sub_1A32890A0(v9);
    v12 = sub_1A34C9680();
    sub_1A3288E28(v19);
    sub_1A31EC234(v8, v11);
    [a1 setAvatarRecipeData_];
  }
}

uint64_t sub_1A3288628()
{
  v2 = *(v0 + 16);
  *(v1 + 16) = *v0;
  *(v1 + 32) = v2;
  *(v1 + 48) = *(v0 + 32);
  *(v1 + 64) = *(v0 + 48);
  return MEMORY[0x1EEE6DFA0](sub_1A328865C, 0, 0);
}

uint64_t sub_1A328865C()
{
  v1 = sub_1A3286D7C();
  v0[9] = v1;
  if (v1)
  {
    v2 = v1;
    v3 = swift_task_alloc();
    v0[10] = v3;
    *v3 = v0;
    v3[1] = sub_1A328874C;

    return sub_1A33C59DC(v2);
  }

  else
  {
    v5 = sub_1A3286908();
    v6 = v0[1];

    return v6(v5);
  }
}

uint64_t sub_1A328874C(uint64_t a1)
{
  *(*v1 + 88) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1A328884C, 0, 0);
}

uint64_t sub_1A328884C()
{
  v1 = v0[9];
  if (*(v0[11] + 16))
  {

    v2 = v0[11];
  }

  else
  {

    v3 = sub_1A3286908();

    v2 = v3;
  }

  v4 = v0[1];

  return v4(v2);
}

uint64_t sub_1A3288900()
{
  v1 = sub_1A3286D7C();
  if (v1)
  {
    v1 = sub_1A34CC5C0();
  }

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1A3288980(void *a1)
{
  sub_1A328842C(a1);
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_1A3288A24()
{
  *(v1 + 16) = *v0;
  *(v1 + 32) = *(v0 + 16);
  *(v1 + 64) = *(v0 + 24);
  return MEMORY[0x1EEE6DFA0](sub_1A3288A58, 0, 0);
}

uint64_t sub_1A3288A58()
{
  v1 = sub_1A32869F4(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 64));
  *(v0 + 40) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = swift_task_alloc();
    *(v0 + 48) = v3;
    *v3 = v0;
    v3[1] = sub_1A3288B58;

    return sub_1A33C59DC(v2);
  }

  else
  {
    v5 = sub_1A32867FC(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 64));
    v6 = *(v0 + 8);

    return v6(v5);
  }
}

uint64_t sub_1A3288B58(uint64_t a1)
{
  *(*v1 + 56) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1A3288C58, 0, 0);
}

uint64_t sub_1A3288C58()
{
  if (*(*(v0 + 56) + 16))
  {

    v1 = *(v0 + 56);
  }

  else
  {
    v2 = *(v0 + 32);
    v3 = *(v0 + 40);
    v5 = *(v0 + 16);
    v4 = *(v0 + 24);
    v6 = *(v0 + 64);

    v7 = sub_1A32867FC(v5, v4, v2, v6);

    v1 = v7;
  }

  v8 = *(v0 + 8);

  return v8(v1);
}

uint64_t sub_1A3288D34()
{
  v2 = sub_1A32869F4(*v0, *(v0 + 8), *(v0 + 16), *(v0 + 24));
  if (v2)
  {
    v2 = sub_1A34CC5C0();
  }

  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_1A3288DA4(void *a1)
{
  sub_1A3288264(a1, *v1, *(v1 + 8), *(v1 + 16), *(v1 + 24));
  v3 = *(v2 + 8);

  return v3();
}

uint64_t sub_1A3288FDC(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A3289058(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A32890A0(uint64_t a1)
{
  v2 = type metadata accessor for AvatarViewRecipe_Recipe(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1A32890FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11)
{
  if (a11 >> 62 == 1)
  {
  }

  else if (!(a11 >> 62))
  {

    sub_1A32891B0(a7, a8, a9, a10, a11);
  }
}

uint64_t sub_1A32891B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 - 2 <= 3)
  {
  }

  return result;
}

void sub_1A32891C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11)
{
  if (a11 >> 62 == 1)
  {
  }

  else if (!(a11 >> 62))
  {

    sub_1A31FBC5C(a7, a8, a9, a10, a11);
  }
}

uint64_t EmojiView.Recipe.emoji.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t EmojiView.Recipe.emoji.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t static EmojiView.Recipe.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1A34CDE30();
  }
}

uint64_t sub_1A3289374@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x696A6F6D65 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1A34CDE30();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A3289404(uint64_t a1)
{
  v2 = sub_1A32895B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A3289440(uint64_t a1)
{
  v2 = sub_1A32895B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t EmojiView.Recipe.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C52F8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A32895B8();
  sub_1A34CDFA0();
  sub_1A34CDD80();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1A32895B8()
{
  result = qword_1EB0C5300;
  if (!qword_1EB0C5300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C5300);
  }

  return result;
}

uint64_t EmojiView.Recipe.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5308);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A32895B8();
  sub_1A34CDF90();
  if (!v2)
  {
    v9 = sub_1A34CDCF0();
    v11 = v10;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_1A3289780(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1A34CDE30();
  }
}

uint64_t sub_1A32897C8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C52F8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A32895B8();
  sub_1A34CDFA0();
  sub_1A34CDD80();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1A3289904(CGFloat a1)
{
  v2 = [objc_opt_self() systemFontOfSize_];
  v3 = [v2 fontDescriptor];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5350);
  inited = swift_initStackObject();
  v5 = MEMORY[0x1E6965778];
  *(inited + 16) = xmmword_1A34DAA10;
  v6 = *v5;
  *(inited + 32) = v6;
  *(inited + 40) = 0;
  v7 = v6;
  sub_1A33E9468(inited);
  swift_setDeallocating();
  sub_1A328AA94(inited + 32);
  type metadata accessor for CFString(0);
  sub_1A328ADB0(&qword_1ED854618, type metadata accessor for CFString);
  v8 = sub_1A34CCF70();

  CopyWithAttributes = CTFontDescriptorCreateCopyWithAttributes(v3, v8);

  CTFontCreateWithFontDescriptor(CopyWithAttributes, a1, 0);
  v10 = sub_1A34CBC20();

  return v10;
}

uint64_t EmojiView.body.getter@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for EmojiView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_1A3289E24(v1, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_1A3289E88(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  *a1 = sub_1A3289EEC;
  a1[1] = v7;
  return result;
}

uint64_t sub_1A3289B74@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = sub_1A34CB400();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1[1];
  v44 = *a1;
  v45 = v7;
  sub_1A328A95C();

  v8 = sub_1A34CBE30();
  v10 = v9;
  v12 = v11;
  sub_1A34CA7C0();
  sub_1A3289904(v13 * 0.5);
  v14 = sub_1A34CBE10();
  v40 = v15;
  v41 = v16;
  v42 = v17;

  sub_1A328A9B0(v8, v10, v12 & 1);

  sub_1A34CB640();
  sub_1A34CA7D0();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = *(v4 + 8);
  v26(v6, v3);
  v50.origin.x = v19;
  v50.origin.y = v21;
  v50.size.width = v23;
  v50.size.height = v25;
  MidX = CGRectGetMidX(v50);
  sub_1A34CB640();
  sub_1A34CA7D0();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v26(v6, v3);
  v51.origin.x = v29;
  v51.origin.y = v31;
  v51.size.width = v33;
  v51.size.height = v35;
  MidY = CGRectGetMidY(v51);
  v37 = v40;
  v44 = v14;
  v45 = v40;
  LOBYTE(v10) = v41 & 1;
  v46 = v41 & 1;
  v47 = v42;
  v48 = MidX;
  v49 = MidY;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5340);
  sub_1A328A9C0();
  sub_1A34CC1F0();
  sub_1A328A9B0(v14, v37, v10);
}

uint64_t sub_1A3289E24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EmojiView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3289E88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EmojiView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3289F0C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A34CB0B0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CA420);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for EmojiView.Container(0);
  sub_1A328AC58(v1 + *(v10 + 20), v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1A34CA5D0();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_1A34CD650();
    v13 = sub_1A34CBA30();
    sub_1A34CA210();

    sub_1A34CB0A0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1A328A0FC()
{
  v1 = sub_1A34CA5D0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 8);
  v9 = *v0;
  v10 = v5;
  sub_1A31EE004(v9, v5);
  sub_1A3289F0C(v4);
  sub_1A32E821C(v4, &v7);
  (*(v2 + 8))(v4, v1);
  sub_1A31ECC9C(v9, v10);
  v8 = 256;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5368);
  sub_1A3284D0C(&qword_1EB0C11C0, &qword_1EB0C5368);
  sub_1A34CC1F0();
}

uint64_t sub_1A328A29C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1 - 8);
  sub_1A3289E24(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_1A3289E88(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  *a2 = sub_1A328AE04;
  a2[1] = v7;
  return result;
}

uint64_t sub_1A328A3B0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A328A3F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1A328A44C()
{
  result = qword_1EB0C5320;
  if (!qword_1EB0C5320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C5320);
  }

  return result;
}

unint64_t sub_1A328A4A4()
{
  result = qword_1EB0C5328;
  if (!qword_1EB0C5328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C5328);
  }

  return result;
}

unint64_t sub_1A328A4FC()
{
  result = qword_1EB0C5330;
  if (!qword_1EB0C5330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C5330);
  }

  return result;
}

uint64_t sub_1A328A550@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EmojiView(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_1A3289B74(v4, a1);
}

uint64_t sub_1A328A5D0()
{
  sub_1A34CDF20();
  MEMORY[0x1A58EF750](0);
  return sub_1A34CDF70();
}

uint64_t sub_1A328A614()
{
  sub_1A34CDF20();
  MEMORY[0x1A58EF750](0);
  return sub_1A34CDF70();
}

uint64_t sub_1A328A664@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1A34C9FD0();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = type metadata accessor for EmojiRecipe_Recipe();
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = a1[1];
  v18 = *a1;
  v19 = v9;
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  sub_1A31EC1E0(v18, v9);
  sub_1A34C9FC0();
  sub_1A328ADB0(&qword_1EB0C6A10, type metadata accessor for EmojiRecipe_Recipe);
  sub_1A34CA0D0();
  if (v2)
  {
    v10 = type metadata accessor for AvatarViewRecipe_Provider.Emoji;
    v11 = a1;
    return sub_1A328A8A8(v11, v10);
  }

  v14 = *v8;
  v13 = v8[1];
  v15 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v15 = *v8 & 0xFFFFFFFFFFFFLL;
  }

  if (!v15)
  {
    sub_1A328A908();
    swift_allocError();
    swift_willThrow();
    sub_1A328A8A8(a1, type metadata accessor for AvatarViewRecipe_Provider.Emoji);
    v10 = type metadata accessor for EmojiRecipe_Recipe;
    v11 = v8;
    return sub_1A328A8A8(v11, v10);
  }

  sub_1A328A8A8(a1, type metadata accessor for AvatarViewRecipe_Provider.Emoji);

  result = sub_1A328A8A8(v8, type metadata accessor for EmojiRecipe_Recipe);
  *a2 = v14;
  a2[1] = v13;
  return result;
}

uint64_t sub_1A328A8A8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1A328A908()
{
  result = qword_1EB0C5338;
  if (!qword_1EB0C5338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C5338);
  }

  return result;
}

unint64_t sub_1A328A95C()
{
  result = qword_1ED853460;
  if (!qword_1ED853460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED853460);
  }

  return result;
}

uint64_t sub_1A328A9B0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_1A328A9C0()
{
  result = qword_1EB0C5348;
  if (!qword_1EB0C5348)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C5340);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C5348);
  }

  return result;
}

uint64_t sub_1A328AA44(void *a1, uint64_t a2, uint64_t a3)
{

  *a1 = a2;
  a1[1] = a3;
  return result;
}

uint64_t sub_1A328AA94(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5358);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for UserInputRequestError(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for UserInputRequestError(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_1A328AC04()
{
  result = qword_1EB0C5360;
  if (!qword_1EB0C5360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C5360);
  }

  return result;
}

uint64_t sub_1A328AC58(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CA420);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A328ACC8()
{
  result = qword_1EB0C5370;
  if (!qword_1EB0C5370)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C5378);
    sub_1A3284D0C(&qword_1EB0C11C0, &qword_1EB0C5368);
    sub_1A328ADB0(&qword_1ED8544B0, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C5370);
  }

  return result;
}

uint64_t sub_1A328ADB0(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A328AE10()
{
  v0 = sub_1A34CD740();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A34CD710();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1A34CCED0();
  MEMORY[0x1EEE9AC00](v5 - 8);
  sub_1A328B6E0();
  sub_1A34CCEC0();
  sub_1A34CD700();
  (*(v1 + 104))(v3, *MEMORY[0x1E69E8090], v0);
  result = sub_1A34CD780();
  qword_1EB0ED9E0 = result;
  return result;
}

void sub_1A328AFC0()
{
  swift_getObjectType();
  v1 = *(v0 + OBJC_IVAR____TtC14ContactsUICore12CAProxyImage_state);
  os_unfair_lock_lock((v1 + 24));
  sub_1A328B5F8((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));
}

void sub_1A328B024(uint64_t *a1, void *a2)
{
  v4 = sub_1A34CCE90();
  MEMORY[0x1EEE9AC00](v4);
  if (!*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = a2;
    aBlock[4] = sub_1A328B614;
    aBlock[5] = v5;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A32A5AB4;
    aBlock[3] = &block_descriptor;
    _Block_copy(aBlock);
    aBlock[7] = MEMORY[0x1E69E7CC0];
    sub_1A328B624();
    v6 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C6100);
    sub_1A328B67C();
    sub_1A34CD960();
    sub_1A34CCF30();
    swift_allocObject();
    v7 = sub_1A34CCF20();

    *a1 = v7;
    v8 = qword_1EB0C2950;
    sub_1A34C9010();
    if (v8 != -1)
    {
      swift_once();
    }

    sub_1A34CD770();
  }
}

void sub_1A328B214(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = swift_dynamicCastObjCProtocolConditional();
    if (v4)
    {
      [v4 CA:*(a1 + OBJC_IVAR____TtC14ContactsUICore12CAProxyImage_colorSpace) copyRenderValueWithColorspace:?];
    }
  }

  CARenderRelease();
  v5 = *(a1 + OBJC_IVAR____TtC14ContactsUICore12CAProxyImage_state);
  os_unfair_lock_lock((v5 + 24));
  sub_1A328B72C(*(v5 + 16));
  *(v5 + 16) = 1;
  os_unfair_lock_unlock((v5 + 24));
}

id sub_1A328B440()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAProxyImage();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t get_enum_tag_for_layout_string_14ContactsUICore12CAProxyImageC5StateO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1A328B518(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A328B56C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_1A328B5C8(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

unint64_t sub_1A328B624()
{
  result = qword_1ED854650;
  if (!qword_1ED854650)
  {
    sub_1A34CCE90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED854650);
  }

  return result;
}

unint64_t sub_1A328B67C()
{
  result = qword_1ED854640;
  if (!qword_1ED854640)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB0C6100);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED854640);
  }

  return result;
}

unint64_t sub_1A328B6E0()
{
  result = qword_1ED854B50;
  if (!qword_1ED854B50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED854B50);
  }

  return result;
}

unint64_t sub_1A328B72C(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t sub_1A328B73C()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC14ContactsUICore12CAProxyImage_state);
  os_unfair_lock_lock((v2 + 24));
  v3 = *(v2 + 16);
  sub_1A328B81C(v3);
  os_unfair_lock_unlock((v2 + 24));
  if (v3 >= 2)
  {
    sub_1A34C9010();
    sub_1A34CCF10();
    sub_1A328B72C(v3);
    sub_1A328B72C(v3);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = swift_dynamicCastObjCProtocolConditional();
    if (v6)
    {
      v7 = [v6 CA:*(v1 + OBJC_IVAR____TtC14ContactsUICore12CAProxyImage_colorSpace) copyRenderValueWithColorspace:?];

      return v7;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

unint64_t sub_1A328B81C(unint64_t result)
{
  if (result >= 2)
  {
    return sub_1A34C9010();
  }

  return result;
}

__n128 __swift_memcpy121_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 105) = *(a2 + 105);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_1A328B858(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 121))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A328B8A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 121) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 121) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1A328B910(uint64_t a1)
{
  result = sub_1A328B938();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A328B938()
{
  result = qword_1EB0C5400;
  if (!qword_1EB0C5400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C5400);
  }

  return result;
}

uint64_t sub_1A328B9A8()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 80);
  v37 = *(v0 + 64);
  v38 = v2;
  v3 = *(v0 + 48);
  v35 = *(v0 + 32);
  v36 = v3;
  v4 = *(v0 + 80);
  v32 = v37;
  v33 = v4;
  v39 = *(v0 + 96);
  v34 = *(v0 + 96);
  v30 = v35;
  v31 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5420);
  MEMORY[0x1A58EE120](v27);
  v6 = *&v27[0];
  v7 = BYTE8(v27[0]);

  sub_1A31ECC9C(v6, v7);

  v8 = sub_1A34CD1D0();

  if (v8 >= 4)
  {
    v32 = v37;
    v33 = v38;
    v34 = v39;
    v30 = v35;
    v31 = v36;
    MEMORY[0x1A58EE120](v27, v5);
    v10 = *&v27[0];
    v11 = BYTE8(v27[0]);

    sub_1A31ECC9C(v10, v11);

    v12 = sub_1A31F3C28(3);
    v14 = v13;
    v16 = v15;
    v18 = v17;

    v19 = MEMORY[0x1A58EE9C0](v12, v14, v16, v18);
    v21 = v20;

    v27[2] = v37;
    v27[3] = v38;
    v28 = v39;
    v27[0] = v35;
    v27[1] = v36;
    sub_1A328D790(&v35, &v30, &qword_1EB0C5420);
    MEMORY[0x1A58EE120](v29, v5);

    v29[2] = v19;
    v29[3] = v21;
    v24 = v37;
    v25 = v38;
    v26 = v39;
    v22 = v35;
    v23 = v36;
    sub_1A34CC910();
    v32 = v24;
    v33 = v25;
    v34 = v26;
    v30 = v22;
    v31 = v23;
    return sub_1A3288FDC(&v30, &qword_1EB0C5420);
  }

  return result;
}

uint64_t sub_1A328BBF8@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v94 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5450);
  v4 = *(v3 - 8);
  v89 = v3;
  v90 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v88 = &v80[-v5];
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5458) - 8;
  MEMORY[0x1EEE9AC00](v91);
  v93 = &v80[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v96 = &v80[-v8];
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5460) - 8;
  MEMORY[0x1EEE9AC00](v87);
  v92 = &v80[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v95 = &v80[-v11];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C8D50);
  v98 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v80[-v13];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5468);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v97 = &v80[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v17);
  v99 = &v80[-v18];
  v19 = sub_1A34CB1A0();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = swift_allocObject();
  v27 = a1[5];
  v26[5] = a1[4];
  v26[6] = v27;
  v26[7] = a1[6];
  *(v26 + 121) = *(a1 + 105);
  v28 = a1[1];
  v26[1] = *a1;
  v26[2] = v28;
  v29 = a1[3];
  v26[3] = a1[2];
  v26[4] = v29;
  v104 = v19;
  v105 = v21;
  v106 = v23 & 1;
  v107 = v25;
  v108 = 0xD000000000000016;
  v109 = 0x80000001A350B220;
  sub_1A328D544(a1, &v114);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C5660);
  v86 = MEMORY[0x1E697D658];
  sub_1A3284D0C(&unk_1EB0C0590, &unk_1EB0C5660);
  sub_1A34CC790();

  v85 = MEMORY[0x1E697D680];
  sub_1A3284D0C(&unk_1EB0C0500, &unk_1EB0C8D50);
  sub_1A34CC1F0();
  v30 = *(v98 + 8);
  v98 += 8;
  v30(v14, v12);
  v31 = sub_1A3332448(MEMORY[0x1E69E7CC0], 0, 0, 0xD000000000000011, 0x80000001A350B260);
  v33 = v32;
  v34 = swift_allocObject();
  v35 = a1[5];
  v34[5] = a1[4];
  v34[6] = v35;
  v34[7] = a1[6];
  *(v34 + 121) = *(a1 + 105);
  v36 = a1[1];
  v34[1] = *a1;
  v34[2] = v36;
  v37 = a1[3];
  v34[3] = a1[2];
  v34[4] = v37;
  *&v113 = v31;
  *(&v113 + 1) = v33;
  v101 = &v113;
  v102 = 0x6D726F6674786574;
  v103 = 0xEA00000000007461;
  sub_1A328D544(a1, &v114);
  sub_1A34CC790();

  v38 = v95;
  sub_1A34CC1F0();
  v30(v14, v12);
  v113 = *a1;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C5890);
  sub_1A34CC760();
  v82 = *(&v114 + 1);
  v83 = v114;
  v81 = v115;
  sub_1A328C8CC(a1, &v114);
  type metadata accessor for VisualIdentityEditorViewModel();
  v84 = sub_1A328DA00(&qword_1EB0C18C0, type metadata accessor for VisualIdentityEditorViewModel);
  v39 = sub_1A34CA600();
  LOBYTE(v33) = v40;
  KeyPath = swift_getKeyPath();
  v42 = &v38[*(v87 + 44)];
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5470);
  *&v42[v43[10]] = KeyPath;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5478);
  swift_storeEnumTagMultiPayload();
  v44 = v115;
  v45 = v116;
  v46 = v117;
  v47 = &v42[v43[12]];
  *v47 = v114;
  *(v47 + 2) = v44;
  *(v47 + 3) = v45;
  v47[32] = v46;
  *(v47 + 40) = v118;
  *v42 = 0;
  *(v42 + 1) = v39;
  v42[16] = v33 & 1;
  v48 = &v42[v43[11]];
  v49 = v82;
  *v48 = v83;
  *(v48 + 1) = v49;
  v48[16] = v81;
  v50 = &v42[v43[13]];
  v112 = 0x4076800000000000;
  sub_1A34CC730();
  v51 = *(&v113 + 1);
  *v50 = v113;
  v50[1] = v51;
  v52 = swift_allocObject();
  v53 = a1[5];
  v52[5] = a1[4];
  v52[6] = v53;
  v52[7] = a1[6];
  *(v52 + 121) = *(a1 + 105);
  v54 = a1[1];
  v52[1] = *a1;
  v52[2] = v54;
  v55 = a1[3];
  v52[3] = a1[2];
  v52[4] = v55;
  v100 = a1;
  sub_1A328D544(a1, &v114);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5480);
  sub_1A3284D0C(&qword_1EB0C5488, &qword_1EB0C5480);
  v56 = v88;
  sub_1A34CC790();
  sub_1A3284D0C(&qword_1EB0C5490, &qword_1EB0C5450);
  v57 = v96;
  v58 = v89;
  sub_1A34CC1F0();
  (*(v90 + 8))(v56, v58);
  v113 = a1[1];
  sub_1A34CC760();
  v59 = v114;
  LOBYTE(v43) = v115;
  sub_1A328CE2C(v110);
  v60 = sub_1A34CA600();
  LOBYTE(v58) = v61;
  v62 = swift_getKeyPath();
  v63 = &v57[*(v91 + 44)];
  v64 = v57;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5498);
  *&v63[v65[10]] = v62;
  swift_storeEnumTagMultiPayload();
  v66 = &v63[v65[12]];
  v67 = v110[3];
  *(v66 + 2) = v110[2];
  *(v66 + 3) = v67;
  *(v66 + 4) = v110[4];
  *(v66 + 10) = v111;
  v68 = v110[1];
  *v66 = v110[0];
  *(v66 + 1) = v68;
  *v63 = 0;
  *(v63 + 1) = v60;
  v63[16] = v58 & 1;
  v69 = &v63[v65[11]];
  *v69 = v59;
  v69[16] = v43;
  v70 = &v63[v65[13]];
  *&v113 = 0x4076800000000000;
  sub_1A34CC730();
  v71 = *(&v114 + 1);
  *v70 = v114;
  v70[1] = v71;
  v72 = v97;
  sub_1A328D790(v99, v97, &qword_1EB0C5468);
  v73 = v95;
  v74 = v92;
  sub_1A328D790(v95, v92, &qword_1EB0C5460);
  v75 = v93;
  sub_1A328D790(v64, v93, &qword_1EB0C5458);
  v76 = v72;
  v77 = v94;
  sub_1A328D790(v76, v94, &qword_1EB0C5468);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C54A0);
  sub_1A328D790(v74, v77 + *(v78 + 48), &qword_1EB0C5460);
  sub_1A328D790(v75, v77 + *(v78 + 64), &qword_1EB0C5458);
  sub_1A3288FDC(v96, &qword_1EB0C5458);
  sub_1A3288FDC(v73, &qword_1EB0C5460);
  sub_1A3288FDC(v99, &qword_1EB0C5468);
  sub_1A3288FDC(v75, &qword_1EB0C5458);
  sub_1A3288FDC(v74, &qword_1EB0C5460);
  return sub_1A3288FDC(v97, &qword_1EB0C5468);
}

uint64_t sub_1A328C6E4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C5890);
  sub_1A34CC750();
  sub_1A34CC750();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5440);
  sub_1A34CA470();
  sub_1A34CA470();
  return sub_1A34CA480();
}

uint64_t sub_1A328C7FC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C5890);
  sub_1A34CC750();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5440);
  sub_1A34CA470();
  sub_1A328B9A8();
  return sub_1A34CA480();
}

__n128 sub_1A328C8CC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 80);
  v28 = *(a1 + 64);
  v29 = v4;
  v30 = *(a1 + 96);
  v5 = *(a1 + 48);
  v26 = *(a1 + 32);
  v27 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5420);
  MEMORY[0x1A58EE120](&v22);
  v6 = v22;
  v8 = v24;
  v7 = v25;
  v9 = v23;

  sub_1A31ECC9C(v6, v9);

  v10 = *(a1 + 80);
  v28 = *(a1 + 64);
  v29 = v10;
  v30 = *(a1 + 96);
  v11 = *(a1 + 48);
  v26 = *(a1 + 32);
  v27 = v11;
  sub_1A34CC930();
  v28 = v19;
  v29 = v20;
  v30 = v21;
  v26 = v17;
  v27 = v18;
  swift_getKeyPath();
  sub_1A34CC920();

  sub_1A3288FDC(&v26, &qword_1EB0C5420);
  result = v16;
  *a2 = v8;
  *(a2 + 8) = v7;
  *(a2 + 16) = v13;
  *(a2 + 24) = v14;
  *(a2 + 32) = v15;
  *(a2 + 40) = v16;
  return result;
}

uint64_t sub_1A328CA38()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C5890);
  sub_1A34CC750();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5440);
  sub_1A34CA470();
  sub_1A328B9A8();
  return sub_1A34CA480();
}

uint64_t sub_1A328CB08()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C54A8);
  sub_1A328D800();
  return sub_1A34CC6A0();
}

uint64_t sub_1A328CBA0@<X0>(uint64_t a1@<X8>)
{
  sub_1A3332448(MEMORY[0x1E69E7CC0], 0, 0, 0xD000000000000011, 0x80000001A350B2C0);
  sub_1A328A95C();
  result = sub_1A34CBE30();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_1A328CC20@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1A34CC5E0();
  v3 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C54D0) + 36));
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C54D8) + 28);
  v5 = *MEMORY[0x1E69816C0];
  v6 = sub_1A34CC670();
  (*(*(v6 - 8) + 104))(v3 + v4, v5, v6);
  *v3 = swift_getKeyPath();
  *a1 = v2;
  sub_1A34CCE10();
  v8 = v7;
  v10 = v9;
  v11 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C54C0) + 36));
  *v11 = vdupq_n_s64(0x3FF2147AE147AE14uLL);
  v11[1].i64[0] = v8;
  v11[1].i64[1] = v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5420);
  MEMORY[0x1A58EE120](&v18, v12);
  v13 = v18;
  LOBYTE(v5) = v19;
  sub_1A31EE004(v18, v19);
  sub_1A31ECC9C(v13, v5);

  KeyPath = swift_getKeyPath();
  v15 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C54A8) + 36));
  *v15 = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CA420);
  swift_storeEnumTagMultiPayload();
  result = type metadata accessor for BackgroundRepresentationModifier();
  v17 = v15 + *(result + 20);
  *v17 = v13;
  v17[8] = v5;
  return result;
}

double sub_1A328CE2C@<D0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5420);
  sub_1A34CC930();
  v16[2] = v13;
  v16[3] = v14;
  v17 = v15;
  v16[0] = v11;
  v16[1] = v12;
  swift_getKeyPath();
  sub_1A34CC920();

  sub_1A3288FDC(v16, &qword_1EB0C5420);
  if (qword_1EB0C4A10 != -1)
  {
    swift_once();
  }

  v2 = qword_1EB0EDE60;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CB290);
  sub_1A34CC730();
  *a1 = v7;
  *(a1 + 8) = v8;
  *(a1 + 16) = v9;
  *(a1 + 24) = v10;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  *(a1 + 48) = v6;
  *(a1 + 56) = v2;
  *(a1 + 64) = 0;
  result = 38.0;
  *(a1 + 72) = xmmword_1A34DAEB0;
  return result;
}

uint64_t sub_1A328CFD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5428);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v22 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5430);
  v8 = *(v7 - 8);
  v27 = v7;
  v28 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = v22 - v9;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5438);
  MEMORY[0x1EEE9AC00](v26);
  v12 = v22 - v11;
  v13 = sub_1A34CB1A0();
  v24 = v14;
  v25 = v13;
  v22[1] = v15;
  v23 = v16;
  v17 = *(a1 + 80);
  v42 = *(a1 + 64);
  v43 = v17;
  v44 = *(a1 + 96);
  v18 = *(a1 + 48);
  v40 = *(a1 + 32);
  v41 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5420);
  sub_1A34CC930();
  v42 = v37;
  v43 = v38;
  v44 = v39;
  v40 = v35;
  v41 = v36;
  swift_getKeyPath();
  v32 = v42;
  v33 = v43;
  v34 = v44;
  v30 = v40;
  v31 = v41;
  sub_1A34CC920();

  sub_1A3288FDC(&v40, &qword_1EB0C5420);
  sub_1A34CCD70();
  v19 = sub_1A3284D0C(&qword_1EB0C0388, &qword_1EB0C5428);
  sub_1A34CBF40();
  (*(v4 + 8))(v6, v3);
  v35 = *(a1 + 104);
  LOBYTE(v36) = *(a1 + 120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5440);
  sub_1A34CA490();
  *&v35 = v3;
  *(&v35 + 1) = v19;
  swift_getOpaqueTypeConformance2();
  v20 = v27;
  sub_1A34CC350();

  (*(v28 + 8))(v10, v20);
  *&v12[*(v26 + 36)] = 0;
  sub_1A328D610();
  sub_1A34CC1F0();
  return sub_1A31FD9CC(v12);
}

uint64_t sub_1A328D3E0@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[5];
  v22 = v1[4];
  v23 = v3;
  v24[0] = v1[6];
  *(v24 + 9) = *(v1 + 105);
  v4 = v1[1];
  v18 = *v1;
  v19 = v4;
  v5 = v1[3];
  v20 = v1[2];
  v21 = v5;
  sub_1A328BBF8(&v18, a1);
  v6 = sub_1A34CCC80();
  v8 = v7;
  v9 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5408) + 36);
  sub_1A328CFD8(&v18, v9);
  v10 = (v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5410) + 36));
  *v10 = v6;
  v10[1] = v8;
  v11 = swift_allocObject();
  v12 = v23;
  v11[5] = v22;
  v11[6] = v12;
  v11[7] = v24[0];
  *(v11 + 121) = *(v24 + 9);
  v13 = v19;
  v11[1] = v18;
  v11[2] = v13;
  v14 = v21;
  v11[3] = v20;
  v11[4] = v14;
  v15 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5418) + 36));
  *v15 = 0;
  v15[1] = 0;
  v15[2] = sub_1A328D520;
  v15[3] = v11;
  return sub_1A328D544(&v18, &v17);
}

uint64_t sub_1A328D57C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return MEMORY[0x1EEDDC7B0](a1, a2, a3, a4, a5, a6);
}

unint64_t sub_1A328D610()
{
  result = qword_1EB0C5448;
  if (!qword_1EB0C5448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C5438);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C5430);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C5428);
    sub_1A3284D0C(&qword_1EB0C0388, &qword_1EB0C5428);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C5448);
  }

  return result;
}

uint64_t sub_1A328D790(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1A328D800()
{
  result = qword_1EB0C54B0;
  if (!qword_1EB0C54B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C54A8);
    sub_1A328D8BC();
    sub_1A328DA00(qword_1EB0C1640, type metadata accessor for BackgroundRepresentationModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C54B0);
  }

  return result;
}

unint64_t sub_1A328D8BC()
{
  result = qword_1EB0C54B8;
  if (!qword_1EB0C54B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C54C0);
    sub_1A328D948();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C54B8);
  }

  return result;
}

unint64_t sub_1A328D948()
{
  result = qword_1EB0C54C8;
  if (!qword_1EB0C54C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C54D0);
    sub_1A3284D0C(&qword_1EB0C0680, &qword_1EB0C54D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C54C8);
  }

  return result;
}

uint64_t sub_1A328DA00(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A328DA48()
{
  result = qword_1EB0C54E0;
  if (!qword_1EB0C54E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C5418);
    sub_1A328DAD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C54E0);
  }

  return result;
}

unint64_t sub_1A328DAD4()
{
  result = qword_1EB0C54E8;
  if (!qword_1EB0C54E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C5408);
    sub_1A3284D0C(&qword_1EB0C54F0, &qword_1EB0C54F8);
    sub_1A3284D0C(&unk_1EB0C5500, &qword_1EB0C5410);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C54E8);
  }

  return result;
}

void *sub_1A328DBB8@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1A34CB0B0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A3292198(v2, v10);
  if (v10[264] == 1)
  {
    return memcpy(a1, v10, 0x108uLL);
  }

  sub_1A34CD650();
  v9 = sub_1A34CBA30();
  sub_1A34CA210();

  sub_1A34CB0A0();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t LocationSharingView.init(contact:actionsProvider:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = swift_getKeyPath();
  *(a3 + 264) = 0;
  sub_1A34CC730();
  *(a3 + 296) = v7;
  *(a3 + 304) = v8;
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(a3 + 272) = sub_1A32915C0;
  *(a3 + 280) = result;
  *(a3 + 288) = 0;
  return result;
}

uint64_t sub_1A328DDCC(void *a1, void *a2)
{
  type metadata accessor for LocationSharingView.Model(0);
  swift_allocObject();
  swift_unknownObjectRetain();
  v4 = a1;
  v5 = sub_1A3292804(v4, a2);

  swift_unknownObjectRelease();
  return v5;
}

uint64_t LocationSharingView.body.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5510);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v9 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C5518);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v9 - v5;
  type metadata accessor for LocationSharingView.Model(0);
  sub_1A3291C48(&unk_1EB0C23D0, type metadata accessor for LocationSharingView.Model);
  sub_1A34CA650();
  v7 = sub_1A329064C();

  if (v7)
  {
    sub_1A328E040(v0, v3);
    sub_1A31FDADC(v3, v6);
    swift_storeEnumTagMultiPayload();
    sub_1A32915E8();
    sub_1A34CB3E0();
    return sub_1A31FDB4C(v3);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_1A32915E8();
    return sub_1A34CB3E0();
  }
}

uint64_t sub_1A328E040@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5540);
  v41 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v4 = v36 - v3;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5618);
  MEMORY[0x1EEE9AC00](v43);
  v46 = v36 - v5;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C5530);
  v42 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v7 = v36 - v6;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5620);
  v8 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v10 = v36 - v9;
  type metadata accessor for LocationSharingView.Model(0);
  sub_1A3291C48(&unk_1EB0C23D0, type metadata accessor for LocationSharingView.Model);
  sub_1A34CA650();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A34CA370();

  if (LOBYTE(v53[0]) == 1)
  {
    sub_1A3291F48(a1, v53);
    v12 = swift_allocObject();
    v41 = v8;
    v13 = memcpy((v12 + 16), v53, 0x138uLL);
    MEMORY[0x1EEE9AC00](v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5628);
    sub_1A3291EC4();
    v40 = v7;
    sub_1A34CC790();
    v14 = sub_1A3332448(MEMORY[0x1E69E7CC0], 0, 0, 0xD000000000000026, 0x80000001A350B450);
    v39 = v15;
    v51 = v14;
    v52 = v15;
    v16 = *(a1 + 304);
    v49 = *(a1 + 296);
    v50 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C5890);
    v17 = sub_1A34CC760();
    v38 = v36;
    v36[1] = v53[0];
    v37 = LOBYTE(v53[2]);
    MEMORY[0x1EEE9AC00](v17);
    v36[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C9E80);
    v18 = v10;
    v19 = sub_1A3284D0C(&qword_1EB0C0520, &unk_1EB0C5530);
    v34 = sub_1A328A95C();
    v35 = sub_1A3284D0C(&unk_1EB0C0510, &unk_1EB0C9E80);
    v20 = v44;
    v21 = v40;
    sub_1A34CC0B0();

    (v42[1])(v21, v20);
    v22 = v41;
    v23 = v18;
    v24 = v18;
    v25 = v45;
    (*(v41 + 16))(v46, v23, v45);
    swift_storeEnumTagMultiPayload();
    v53[0] = v20;
    v53[1] = MEMORY[0x1E69E6158];
    v53[2] = v36[0];
    v53[3] = v19;
    v53[4] = v34;
    v53[5] = v35;
    swift_getOpaqueTypeConformance2();
    sub_1A3284D0C(&unk_1EB0C0638, &qword_1EB0C5540);
    sub_1A34CB3E0();
    return (*(v22 + 8))(v24, v25);
  }

  else
  {
    v42 = v36;
    MEMORY[0x1EEE9AC00](v11);
    MEMORY[0x1EEE9AC00](v27);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5628);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C5630);
    v28 = v41;
    sub_1A3291EC4();
    v39 = v4;
    sub_1A3284D0C(&unk_1EB0C0320, &unk_1EB0C5630);
    sub_1A34CBC70();
    v29 = v48;
    (*(v28 + 16))(v46, v4, v48);
    swift_storeEnumTagMultiPayload();
    v30 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB0C9E80);
    v31 = sub_1A3284D0C(&qword_1EB0C0520, &unk_1EB0C5530);
    v32 = sub_1A328A95C();
    v33 = sub_1A3284D0C(&unk_1EB0C0510, &unk_1EB0C9E80);
    v53[0] = v44;
    v53[1] = MEMORY[0x1E69E6158];
    v53[2] = v30;
    v53[3] = v31;
    v53[4] = v32;
    v53[5] = v33;
    swift_getOpaqueTypeConformance2();
    sub_1A3284D0C(&unk_1EB0C0638, &qword_1EB0C5540);
    sub_1A34CB3E0();
    return (*(v28 + 8))(v39, v29);
  }
}

__n128 sub_1A328E950@<Q0>(uint64_t a1@<X8>)
{
  sub_1A3332448(MEMORY[0x1E69E7CC0], 0, 0, 0xD000000000000026, 0x80000001A350B450);
  *(&v23[0] + 1) = v2;
  sub_1A328A95C();
  v3 = sub_1A34CBE30();
  v5 = v4;
  v7 = v6;
  *&v23[0] = sub_1A34CC490();
  v8 = sub_1A34CBDF0();
  v10 = v9;
  v12 = v11;
  sub_1A328A9B0(v3, v5, v7 & 1);

  sub_1A328DBB8(v23);
  sub_1A34C9010();
  sub_1A3292144(v23);
  v13 = sub_1A34CBE10();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  sub_1A328A9B0(v8, v10, v12 & 1);

  sub_1A34CCC90();
  sub_1A34CADA0();
  *a1 = v13;
  *(a1 + 8) = v15;
  *(a1 + 16) = v17 & 1;
  *(a1 + 24) = v19;
  v20 = v23[5];
  *(a1 + 96) = v23[4];
  *(a1 + 112) = v20;
  *(a1 + 128) = v23[6];
  v21 = v23[1];
  *(a1 + 32) = v23[0];
  *(a1 + 48) = v21;
  result = v23[3];
  *(a1 + 64) = v23[2];
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_1A328EB38(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C5640);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v10[-v3 - 8];
  v11 = sub_1A3332448(MEMORY[0x1E69E7CC0], 0, 0, 0xD000000000000028, 0x80000001A350B480);
  v12 = v5;
  sub_1A34CA430();
  v6 = sub_1A34CA440();
  (*(*(v6 - 8) + 56))(v4, 0, 1, v6);
  sub_1A3291F48(a1, v10);
  v7 = swift_allocObject();
  memcpy((v7 + 16), v10, 0x138uLL);
  sub_1A328A95C();
  return sub_1A34CC7A0();
}

uint64_t sub_1A328ECA8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6110);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v11[-v3];
  v5 = sub_1A34CD4A0();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_1A3291F48(a1, v12);
  sub_1A34CD450();
  v6 = sub_1A34CD440();
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E85E0];
  v7[2] = v6;
  v7[3] = v8;
  memcpy(v7 + 4, v12, 0x138uLL);
  sub_1A32C0B38(0, 0, v4, &unk_1A34DB610, v7);

  v9 = *(a1 + 304);
  LOBYTE(v12[0]) = *(a1 + 296);
  v12[1] = v9;
  v11[7] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C5890);
  return sub_1A34CC750();
}

uint64_t sub_1A328EE28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = sub_1A34CD450();
  v4[4] = sub_1A34CD440();
  v6 = sub_1A34CD3E0();
  v4[5] = v6;
  v4[6] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1A328EEC4, v6, v5);
}

uint64_t sub_1A328EEC4()
{
  type metadata accessor for LocationSharingView.Model(0);
  sub_1A3291C48(&unk_1EB0C23D0, type metadata accessor for LocationSharingView.Model);
  v0[7] = sub_1A34CA650();
  v0[8] = sub_1A34CD440();
  v2 = sub_1A34CD3E0();
  v0[9] = v2;
  v0[10] = v1;

  return MEMORY[0x1EEE6DFA0](sub_1A328EFC4, v2, v1);
}

uint64_t sub_1A328EFC4()
{
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_1A328F058;

  return sub_1A340054C();
}

uint64_t sub_1A328F058()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  v3 = *(v2 + 80);
  v4 = *(v2 + 72);
  if (v0)
  {
    v5 = sub_1A328F22C;
  }

  else
  {
    v5 = sub_1A328F194;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1A328F194()
{

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 104) = 0;
  sub_1A34CA380();
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return MEMORY[0x1EEE6DFA0](sub_1A328F2A4, v1, v2);
}

uint64_t sub_1A328F22C()
{
  v1 = v0[12];

  v2 = v0[5];
  v3 = v0[6];

  return MEMORY[0x1EEE6DFA0](sub_1A328F2A4, v2, v3);
}

uint64_t sub_1A328F2A4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A328F304@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v36 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C8D50);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v35 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v34 = &v30 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v37 = &v30 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v33 = &v30 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v30 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v30 - v16;
  sub_1A3291F48(a1, v38);
  v18 = swift_allocObject();
  memcpy((v18 + 16), v38, 0x138uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C5660);
  sub_1A3284D0C(&unk_1EB0C0590, &unk_1EB0C5660);
  v32 = v17;
  sub_1A34CC790();
  sub_1A3291F48(a1, v38);
  v19 = swift_allocObject();
  memcpy((v19 + 16), v38, 0x138uLL);
  v31 = v14;
  sub_1A34CC790();
  sub_1A3291F48(a1, v38);
  v20 = swift_allocObject();
  memcpy((v20 + 16), v38, 0x138uLL);
  v21 = v33;
  sub_1A34CC790();
  v22 = *(v4 + 16);
  v23 = v37;
  v22(v37, v17, v3);
  v24 = v34;
  v22(v34, v14, v3);
  v25 = v35;
  v22(v35, v21, v3);
  v26 = v36;
  v22(v36, v23, v3);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5670);
  v22(&v26[*(v27 + 48)], v24, v3);
  v22(&v26[*(v27 + 64)], v25, v3);
  v28 = *(v4 + 8);
  v28(v21, v3);
  v28(v31, v3);
  v28(v32, v3);
  v28(v25, v3);
  v28(v24, v3);
  return (v28)(v37, v3);
}

uint64_t sub_1A328F780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = sub_1A34CD450();
  v4[4] = sub_1A34CD440();
  v6 = sub_1A34CD3E0();
  v4[5] = v6;
  v4[6] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1A328F81C, v6, v5);
}

uint64_t sub_1A328F81C()
{
  type metadata accessor for LocationSharingView.Model(0);
  sub_1A3291C48(&unk_1EB0C23D0, type metadata accessor for LocationSharingView.Model);
  v0[7] = sub_1A34CA650();
  v0[8] = sub_1A34CD440();
  v2 = sub_1A34CD3E0();
  v0[9] = v2;
  v0[10] = v1;

  return MEMORY[0x1EEE6DFA0](sub_1A328F91C, v2, v1);
}

uint64_t sub_1A328F91C()
{
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_1A328F9B4;

  return sub_1A33FECD4(2);
}

uint64_t sub_1A328F9B4()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  v3 = *(v2 + 80);
  v4 = *(v2 + 72);
  if (v0)
  {
    v5 = sub_1A328FB8C;
  }

  else
  {
    v5 = sub_1A328FAF0;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1A328FAF0()
{

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 104) = 1;
  sub_1A34CA380();
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return MEMORY[0x1EEE6DFA0](sub_1A3292C74, v1, v2);
}

uint64_t sub_1A328FB8C()
{
  v1 = v0[12];

  v2 = v0[5];
  v3 = v0[6];

  return MEMORY[0x1EEE6DFA0](sub_1A3292C74, v2, v3);
}

uint64_t sub_1A328FC04()
{
  sub_1A3332448(MEMORY[0x1E69E7CC0], 0, 0, 0xD000000000000020, 0x80000001A350B510);
  sub_1A328A95C();
  return sub_1A34CC6C0();
}

uint64_t sub_1A328FC8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = sub_1A34CD450();
  v4[4] = sub_1A34CD440();
  v6 = sub_1A34CD3E0();
  v4[5] = v6;
  v4[6] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1A328FD28, v6, v5);
}

uint64_t sub_1A328FD28()
{
  type metadata accessor for LocationSharingView.Model(0);
  sub_1A3291C48(&unk_1EB0C23D0, type metadata accessor for LocationSharingView.Model);
  v0[7] = sub_1A34CA650();
  v0[8] = sub_1A34CD440();
  v2 = sub_1A34CD3E0();
  v0[9] = v2;
  v0[10] = v1;

  return MEMORY[0x1EEE6DFA0](sub_1A328FE28, v2, v1);
}

uint64_t sub_1A328FE28()
{
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_1A328F9B4;

  return sub_1A33FECD4(1);
}

uint64_t sub_1A328FEC0()
{
  sub_1A3332448(MEMORY[0x1E69E7CC0], 0, 0, 0xD00000000000001ELL, 0x80000001A350B4F0);
  sub_1A328A95C();
  return sub_1A34CC6C0();
}

uint64_t sub_1A328FF48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6110);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14[-v6 - 8];
  v8 = sub_1A34CD4A0();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_1A3291F48(a1, v14);
  sub_1A34CD450();
  v9 = sub_1A34CD440();
  v10 = swift_allocObject();
  v11 = MEMORY[0x1E69E85E0];
  v10[2] = v9;
  v10[3] = v11;
  memcpy(v10 + 4, v14, 0x138uLL);
  sub_1A32C0B38(0, 0, v7, a3, v10);
}

uint64_t sub_1A3290084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = sub_1A34CD450();
  v4[4] = sub_1A34CD440();
  v6 = sub_1A34CD3E0();
  v4[5] = v6;
  v4[6] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1A3290120, v6, v5);
}

uint64_t sub_1A3290120()
{
  type metadata accessor for LocationSharingView.Model(0);
  sub_1A3291C48(&unk_1EB0C23D0, type metadata accessor for LocationSharingView.Model);
  v0[7] = sub_1A34CA650();
  v0[8] = sub_1A34CD440();
  v2 = sub_1A34CD3E0();
  v0[9] = v2;
  v0[10] = v1;

  return MEMORY[0x1EEE6DFA0](sub_1A3290220, v2, v1);
}

uint64_t sub_1A3290220()
{
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_1A328F9B4;

  return sub_1A33FECD4(0);
}

uint64_t sub_1A32902B8()
{
  sub_1A3332448(MEMORY[0x1E69E7CC0], 0, 0, 0xD00000000000001CLL, 0x80000001A350B4D0);
  sub_1A328A95C();
  return sub_1A34CC6C0();
}

__n128 sub_1A329033C@<Q0>(uint64_t a1@<X8>)
{
  sub_1A328DBB8(v25);
  sub_1A31EE4BC(&v26, v24);
  sub_1A3292144(v25);
  __swift_project_boxed_opaque_existential_1(v24, v24[3]);
  v23[0] = sub_1A3332448(MEMORY[0x1E69E7CC0], 0, 0, 0xD000000000000019, 0x80000001A350B4B0);
  v23[1] = v2;
  sub_1A328A95C();
  v3 = sub_1A34CBE30();
  v5 = v4;
  v7 = v6;
  v8 = sub_1A34CBDF0();
  v10 = v9;
  v12 = v11;
  sub_1A328A9B0(v3, v5, v7 & 1);

  sub_1A328DBB8(v23);
  sub_1A34C9010();
  sub_1A3292144(v23);
  v13 = sub_1A34CBE10();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  sub_1A328A9B0(v8, v10, v12 & 1);

  __swift_destroy_boxed_opaque_existential_0(v24);
  sub_1A34CCC90();
  sub_1A34CADA0();
  *a1 = v13;
  *(a1 + 8) = v15;
  *(a1 + 16) = v17 & 1;
  *(a1 + 24) = v19;
  v20 = v25[5];
  *(a1 + 96) = v25[4];
  *(a1 + 112) = v20;
  *(a1 + 128) = v25[6];
  v21 = v25[1];
  *(a1 + 32) = v25[0];
  *(a1 + 48) = v21;
  result = v25[3];
  *(a1 + 64) = v25[2];
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_1A329056C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A34CA370();

  return v1;
}

uint64_t sub_1A32905D8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A34CA370();

  return v1;
}

uint64_t sub_1A329064C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A34CA370();

  if (v4 == 1 && ([*(v0 + 16) isCoreRecentsAccepted] & 1) == 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1A34CA370();

    swift_getKeyPath();
    sub_1A3291C48(&qword_1EB0C5600, type metadata accessor for LocationSharingView.Model.BlockingViewModel);
    sub_1A34C99A0();

    v2 = v4[OBJC_IVAR____TtCCV14ContactsUICore19LocationSharingView5Model17BlockingViewModel__isBlocked];

    v1 = v2 ^ 1;
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t sub_1A32907B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_1A34CD450();
  v4[3] = sub_1A34CD440();
  v6 = sub_1A34CD3E0();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1A3290848, v6, v5);
}

uint64_t sub_1A3290848()
{
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_1A32908DC;

  return sub_1A33FD52C();
}

uint64_t sub_1A32908DC(char a1)
{
  v4 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {
    v5 = *(v4 + 32);
    v6 = *(v4 + 40);
    v7 = sub_1A3290AC8;
  }

  else
  {
    *(v4 + 65) = a1;
    v5 = *(v4 + 32);
    v6 = *(v4 + 40);
    v7 = sub_1A3290A04;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1A3290A04()
{
  v1 = *(v0 + 65);

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 64) = v1 == 0;
  sub_1A34C9010();
  sub_1A34CA380();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1A3290AC8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A3290B2C()
{
  swift_getKeyPath();
  sub_1A3291C48(&qword_1EB0C5600, type metadata accessor for LocationSharingView.Model.BlockingViewModel);
  sub_1A34C99A0();

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_1A3290BD8@<X0>(uint64_t *a1@<X8>)
{
  swift_getKeyPath();
  sub_1A3291C48(&qword_1EB0C5600, type metadata accessor for LocationSharingView.Model.BlockingViewModel);
  sub_1A34C99A0();

  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_1A3290C8C()
{
  swift_getKeyPath();
  sub_1A3291C48(&qword_1EB0C5600, type metadata accessor for LocationSharingView.Model.BlockingViewModel);
  sub_1A34C9990();
}

uint64_t sub_1A3290D58()
{
  swift_getKeyPath();
  sub_1A3291C48(&qword_1EB0C5600, type metadata accessor for LocationSharingView.Model.BlockingViewModel);
  sub_1A34C99A0();

  return *(v0 + OBJC_IVAR____TtCCV14ContactsUICore19LocationSharingView5Model17BlockingViewModel__isBlocked);
}

uint64_t sub_1A3290E00@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3291C48(&qword_1EB0C5600, type metadata accessor for LocationSharingView.Model.BlockingViewModel);
  sub_1A34C99A0();

  *a2 = *(v3 + OBJC_IVAR____TtCCV14ContactsUICore19LocationSharingView5Model17BlockingViewModel__isBlocked);
  return result;
}

uint64_t sub_1A3290EB0(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtCCV14ContactsUICore19LocationSharingView5Model17BlockingViewModel__isBlocked) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtCCV14ContactsUICore19LocationSharingView5Model17BlockingViewModel__isBlocked) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3291C48(&qword_1EB0C5600, type metadata accessor for LocationSharingView.Model.BlockingViewModel);
    sub_1A34C9990();
  }

  return result;
}

uint64_t sub_1A3290FC8()
{
  v1 = v0;
  swift_getKeyPath();
  sub_1A3291C48(&qword_1EB0C5600, type metadata accessor for LocationSharingView.Model.BlockingViewModel);
  sub_1A34C99A0();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if ([Strong supportsAction_])
    {
      v4 = (v0 + OBJC_IVAR____TtCCV14ContactsUICore19LocationSharingView5Model17BlockingViewModel__isBlocked);
      v5 = 1;
      if ((*(v1 + OBJC_IVAR____TtCCV14ContactsUICore19LocationSharingView5Model17BlockingViewModel__isBlocked) & 1) == 0)
      {
LABEL_4:
        KeyPath = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](KeyPath);
        sub_1A34C9990();

        return swift_unknownObjectRelease();
      }
    }

    else
    {
      v10 = [v3 supportsAction_];
      v5 = v10;
      v4 = (v1 + OBJC_IVAR____TtCCV14ContactsUICore19LocationSharingView5Model17BlockingViewModel__isBlocked);
      if (v10 != *(v1 + OBJC_IVAR____TtCCV14ContactsUICore19LocationSharingView5Model17BlockingViewModel__isBlocked))
      {
        goto LABEL_4;
      }
    }

    result = swift_unknownObjectRelease();
    *v4 = v5;
  }

  else
  {
    v8 = [objc_msgSend(objc_opt_self() sharedAnalyzer)];
    result = swift_unknownObjectRelease();
    if (v8 == *(v1 + OBJC_IVAR____TtCCV14ContactsUICore19LocationSharingView5Model17BlockingViewModel__isBlocked))
    {
      *(v1 + OBJC_IVAR____TtCCV14ContactsUICore19LocationSharingView5Model17BlockingViewModel__isBlocked) = v8;
    }

    else
    {
      v9 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v9);
      sub_1A34C9990();
    }
  }

  return result;
}

id sub_1A32912E8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LocationSharingView.Model.BlockingViewModel(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A32913AC()
{

  v1 = OBJC_IVAR____TtCV14ContactsUICore19LocationSharingView5Model__isSharingLocation;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5608);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtCV14ContactsUICore19LocationSharingView5Model__canShareLocation, v2);
  v4 = OBJC_IVAR____TtCV14ContactsUICore19LocationSharingView5Model__blockingViewModel;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5610);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);

  return swift_deallocClassInstance();
}

uint64_t sub_1A32914E0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for LocationSharingView.Model(0);
  result = sub_1A34CA2C0();
  *a1 = result;
  return result;
}

uint64_t sub_1A3291560(uint64_t a1)
{
  sub_1A3292BA8(a1, v3);
  sub_1A3292BA8(v3, &v2);
  sub_1A3292C04();
  sub_1A34CB0F0();
  return sub_1A3292144(v3);
}

unint64_t sub_1A32915E8()
{
  result = qword_1EB0C05B8;
  if (!qword_1EB0C05B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C5510);
    sub_1A329166C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C05B8);
  }

  return result;
}

unint64_t sub_1A329166C()
{
  result = qword_1EB0C0840;
  if (!qword_1EB0C0840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C5528);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB0C5530);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB0C9E80);
    sub_1A3284D0C(&qword_1EB0C0520, &unk_1EB0C5530);
    sub_1A328A95C();
    sub_1A3284D0C(&unk_1EB0C0510, &unk_1EB0C9E80);
    swift_getOpaqueTypeConformance2();
    sub_1A3284D0C(&unk_1EB0C0638, &qword_1EB0C5540);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0840);
  }

  return result;
}

uint64_t sub_1A3291838(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 312))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 304);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1A3291894(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 312) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 312) = 0;
    }

    if (a2)
    {
      *(result + 304) = a2;
    }
  }

  return result;
}

void sub_1A3291950()
{
  sub_1A3291A38();
  if (v0 <= 0x3F)
  {
    sub_1A3291A88();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1A3291A38()
{
  if (!qword_1EB0C1218)
  {
    v0 = sub_1A34CA390();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB0C1218);
    }
  }
}

void sub_1A3291A88()
{
  if (!qword_1EB0C5550)
  {
    type metadata accessor for LocationSharingView.Model.BlockingViewModel(255);
    v0 = sub_1A34CA390();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB0C5550);
    }
  }
}

uint64_t sub_1A3291B08()
{
  result = sub_1A34C99E0();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_1A3291BBC()
{
  result = qword_1EB0C0810;
  if (!qword_1EB0C0810)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C55F8);
    sub_1A32915E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0810);
  }

  return result;
}

uint64_t sub_1A3291C48(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A3291CD0@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A34CA370();

  *a1 = v3;
  return result;
}

uint64_t sub_1A3291D50(void **a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A34C9010();
  v2 = v1;
  return sub_1A34CA380();
}

uint64_t sub_1A3291DC8@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A34CA370();

  *a1 = v3;
  return result;
}

uint64_t sub_1A3291E44()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A34C9010();
  return sub_1A34CA380();
}

unint64_t sub_1A3291EC4()
{
  result = qword_1EB0C0E38;
  if (!qword_1EB0C0E38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C5628);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0E38);
  }

  return result;
}

uint64_t sub_1A3291FA0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1A3292050;

  return sub_1A328EE28(a1, v4, v5, v1 + 32);
}

uint64_t sub_1A3292050()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1A3292198(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C5650);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_69Tm()
{
  if (*(v0 + 280) == 1)
  {

    __swift_destroy_boxed_opaque_existential_0(v0 + 48);

    __swift_destroy_boxed_opaque_existential_0(v0 + 104);
    __swift_destroy_boxed_opaque_existential_0(v0 + 144);
    __swift_destroy_boxed_opaque_existential_0(v0 + 184);
    __swift_destroy_boxed_opaque_existential_0(v0 + 232);
  }

  sub_1A31F3C20();

  return swift_deallocObject();
}

uint64_t sub_1A3292364(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1A3292C58;

  return sub_1A3290084(a1, v4, v5, v1 + 32);
}

uint64_t sub_1A3292414(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1A3292C58;

  return sub_1A328FC8C(a1, v4, v5, v1 + 32);
}

uint64_t objectdestroy_75Tm()
{
  swift_unknownObjectRelease();
  if (*(v0 + 296) == 1)
  {

    __swift_destroy_boxed_opaque_existential_0(v0 + 64);

    __swift_destroy_boxed_opaque_existential_0(v0 + 120);
    __swift_destroy_boxed_opaque_existential_0(v0 + 160);
    __swift_destroy_boxed_opaque_existential_0(v0 + 200);
    __swift_destroy_boxed_opaque_existential_0(v0 + 248);
  }

  sub_1A31F3C20();

  return swift_deallocObject();
}

uint64_t sub_1A3292580(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1A3292C58;

  return sub_1A328F780(a1, v4, v5, v1 + 32);
}

id sub_1A3292630(void *a1, void *a2)
{
  v5 = OBJC_IVAR____TtCCV14ContactsUICore19LocationSharingView5Model17BlockingViewModel__actionsProvider;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  sub_1A34C99D0();
  *&v2[OBJC_IVAR____TtCCV14ContactsUICore19LocationSharingView5Model17BlockingViewModel_contact] = a1;
  swift_unknownObjectRetain();
  v6 = a1;
  sub_1A31F08B0(&v2[v5]);
  swift_unknownObjectWeakInit();
  if (a2)
  {
    if ([a2 supportsAction_])
    {
      v7 = 1;
      goto LABEL_7;
    }

    v8 = [a2 supportsAction_];
  }

  else
  {
    v8 = [objc_msgSend(objc_opt_self() sharedAnalyzer)];
  }

  v7 = v8;
LABEL_7:
  swift_unknownObjectRelease();
  v2[OBJC_IVAR____TtCCV14ContactsUICore19LocationSharingView5Model17BlockingViewModel__isBlocked] = v7;
  v12.receiver = v2;
  v12.super_class = type metadata accessor for LocationSharingView.Model.BlockingViewModel(0);
  v9 = objc_msgSendSuper2(&v12, sel_init);
  swift_getKeyPath();
  sub_1A3291C48(&qword_1EB0C5600, type metadata accessor for LocationSharingView.Model.BlockingViewModel);
  sub_1A34C99A0();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong addObserver_];
    swift_unknownObjectRelease();
  }

  return v9;
}

uint64_t sub_1A3292804(void *a1, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6110);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v25 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5608);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v25 - v11;
  v13 = OBJC_IVAR____TtCV14ContactsUICore19LocationSharingView5Model__isSharingLocation;
  v26 = 0;
  sub_1A34CA330();
  v14 = *(v10 + 32);
  v14(v3 + v13, v12, v9);
  v15 = OBJC_IVAR____TtCV14ContactsUICore19LocationSharingView5Model__canShareLocation;
  v26 = sub_1A340162C() & 1;
  sub_1A34CA330();
  v14(v3 + v15, v12, v9);
  *(v3 + 16) = a1;
  type metadata accessor for FindMyLocateSession();
  swift_allocObject();
  v16 = a1;
  *(v3 + 24) = sub_1A33FBED8(v16);
  v17 = objc_allocWithZone(type metadata accessor for LocationSharingView.Model.BlockingViewModel(0));
  swift_unknownObjectRetain();
  v18 = v16;
  v19 = sub_1A3292630(v18, a2);

  swift_unknownObjectRelease();
  swift_beginAccess();
  v25 = v19;
  sub_1A34CA330();
  swift_endAccess();
  v20 = sub_1A34CD4A0();
  (*(*(v20 - 8) + 56))(v8, 1, 1, v20);
  sub_1A34CD450();
  sub_1A34C9010();
  v21 = sub_1A34CD440();
  v22 = swift_allocObject();
  v23 = MEMORY[0x1E69E85E0];
  v22[2] = v21;
  v22[3] = v23;
  v22[4] = v3;
  sub_1A33A13AC(0, 0, v8, &unk_1A34DB660, v22);

  return v3;
}

uint64_t sub_1A3292AF4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1A3292050;

  return sub_1A32907B0(a1, v4, v5, v6);
}

unint64_t sub_1A3292C04()
{
  result = qword_1EB0C1C08;
  if (!qword_1EB0C1C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C1C08);
  }

  return result;
}

id sub_1A3292C78()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6970);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1A34DB670;
  v1 = objc_opt_self();
  *(v0 + 32) = [v1 descriptorForRequiredKeysForStyle_];
  v2 = [v1 descriptorForRequiredKeysForStyle_];
  v56 = *MEMORY[0x1E695C208];
  v3 = *MEMORY[0x1E695C208];
  *(v0 + 40) = v2;
  *(v0 + 48) = v3;
  v51 = *MEMORY[0x1E695C330];
  v4 = *MEMORY[0x1E695C278];
  *(v0 + 56) = *MEMORY[0x1E695C330];
  *(v0 + 64) = v4;
  v5 = *MEMORY[0x1E695C1E8];
  v6 = *MEMORY[0x1E695C400];
  v7 = MEMORY[0x1E695C420];
  *(v0 + 72) = *MEMORY[0x1E695C1E8];
  *(v0 + 80) = v6;
  v8 = *v7;
  v9 = *MEMORY[0x1E695C438];
  *(v0 + 88) = *v7;
  *(v0 + 96) = v9;
  v10 = *MEMORY[0x1E695C1C0];
  v11 = *MEMORY[0x1E695C390];
  *(v0 + 104) = *MEMORY[0x1E695C1C0];
  *(v0 + 112) = v11;
  v12 = *MEMORY[0x1E695C308];
  v50 = *MEMORY[0x1E695C310];
  v13 = *MEMORY[0x1E695C310];
  v14 = MEMORY[0x1E695C328];
  *(v0 + 120) = *MEMORY[0x1E695C308];
  *(v0 + 128) = v13;
  v15 = *v14;
  v53 = *MEMORY[0x1E695C358];
  v16 = *MEMORY[0x1E695C358];
  *(v0 + 136) = v15;
  *(v0 + 144) = v16;
  v49 = *MEMORY[0x1E695C1F8];
  v57 = *MEMORY[0x1E695C2C8];
  v17 = *MEMORY[0x1E695C2C8];
  *(v0 + 152) = *MEMORY[0x1E695C1F8];
  *(v0 + 160) = v17;
  v48 = *MEMORY[0x1E695C1D0];
  v55 = *MEMORY[0x1E695C318];
  v18 = *MEMORY[0x1E695C318];
  v19 = MEMORY[0x1E695C320];
  *(v0 + 168) = *MEMORY[0x1E695C1D0];
  *(v0 + 176) = v18;
  v58 = *v19;
  *(v0 + 184) = *v19;
  *(v0 + 192) = v4;
  v52 = *MEMORY[0x1E695C360];
  v60 = *MEMORY[0x1E695C1F0];
  v20 = *MEMORY[0x1E695C1F0];
  *(v0 + 200) = *MEMORY[0x1E695C360];
  *(v0 + 208) = v20;
  v54 = *MEMORY[0x1E695C418];
  v21 = *MEMORY[0x1E695C3A8];
  v61 = *MEMORY[0x1E695C3A8];
  *(v0 + 216) = *MEMORY[0x1E695C418];
  *(v0 + 224) = v21;
  v22 = *MEMORY[0x1E695C3D0];
  v59 = *MEMORY[0x1E695C2B0];
  v23 = *MEMORY[0x1E695C2B0];
  *(v0 + 232) = *MEMORY[0x1E695C3D0];
  *(v0 + 240) = v23;
  qword_1EB0C5678 = v0;
  v24 = v4;
  v25 = v56;
  v26 = v51;
  v27 = v5;
  v28 = v6;
  v29 = v8;
  v30 = v9;
  v31 = v10;
  v32 = v11;
  v33 = v12;
  v34 = v50;
  v35 = v15;
  v36 = v53;
  v37 = v49;
  v38 = v57;
  v39 = v48;
  v40 = v55;
  v41 = v58;
  v42 = v52;
  v43 = v60;
  v44 = v54;
  v45 = v61;
  v46 = v22;

  return v59;
}

uint64_t static CNUINameDrop.descriptorForRequiredKeys.getter()
{
  if (qword_1EB0C4728 != -1)
  {
    swift_once();
  }
}

uint64_t static CNUINameDrop.vCardMergingContact(_:with:)(void *a1, void *a2)
{
  v60[4] = *MEMORY[0x1E69E9840];
  [a1 mutableCopy];
  sub_1A34CD920();
  swift_unknownObjectRelease();
  sub_1A31EC194(0, &qword_1EB0C2B00);
  swift_dynamicCast();
  [v59 setContactType_];
  v4 = [a2 givenName];
  if (!v4)
  {
    sub_1A34CD110();
    v4 = sub_1A34CD0E0();
  }

  [v59 setGivenName_];

  v5 = [a2 familyName];
  if (!v5)
  {
    sub_1A34CD110();
    v5 = sub_1A34CD0E0();
  }

  [v59 setFamilyName_];

  v6 = [a2 thumbnailImageData];
  if (v6)
  {
    v7 = v6;
    v8 = sub_1A34C9690();
    v10 = v9;

    sub_1A31EC234(v8, v10);
    v11 = [a2 thumbnailImageData];
    if (v11)
    {
      v12 = v11;
      v13 = sub_1A34C9690();
      v15 = v14;

      v16 = sub_1A34C9680();
      sub_1A31EC234(v13, v15);
    }

    else
    {
      v16 = 0;
    }

    [v59 setThumbnailImageData_];
  }

  else
  {
    v17 = [a2 imageData];
    if (v17)
    {
      v18 = v17;
      v19 = sub_1A34C9690();
      v21 = v20;

      v22 = sub_1A34C9680();
      [a2 cropRect];
      v23 = CNImageUtilsCroppedImageDataFromFullSizeImageData();

      v24 = sub_1A34C9690();
      v26 = v25;

      v27 = sub_1A34C9680();
      sub_1A31EC234(v24, v26);
      [v59 setThumbnailImageData_];

      sub_1A31EC234(v19, v21);
    }
  }

  v28 = [a2 wallpaper];
  if (v28)
  {

    v29 = [a2 wallpaper];
    [v59 setWallpaper_];

    [v59 setSharedPhotoDisplayPreference_];
  }

  v30 = [a2 watchWallpaperImageData];
  if (v30)
  {
    v31 = v30;
    v32 = sub_1A34C9690();
    v34 = v33;

    v35 = sub_1A34C9680();
    sub_1A31EC234(v32, v34);
  }

  else
  {
    v35 = 0;
  }

  [v59 setWatchWallpaperImageData_];

  v36 = [objc_allocWithZone(MEMORY[0x1E69E4B40]) init];
  [v36 setIncludePhotos_];
  [v36 setIncludeWallpaper_];
  [v36 setIncludeNotes_];
  v37 = [a1 addressingGrammars];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8160);
  v38 = sub_1A34CD370();

  if (v38 >> 62)
  {
    v39 = sub_1A34CD9B0();
  }

  else
  {
    v39 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v39)
  {
    v40 = [a1 addressingGrammars];
    if (!v40)
    {
      sub_1A34CD370();
      v40 = sub_1A34CD350();
    }

    [v59 setAddressingGrammars_];

    [v36 setIncludePronouns_];
    [v36 setUseUnencryptedPronouns_];
  }

  v41 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6970);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_1A34DAA30;
  *(v42 + 32) = v59;
  sub_1A31EC194(0, &qword_1ED854E70);
  v43 = v59;
  v44 = sub_1A34CD350();

  v60[0] = 0;
  v45 = [v41 dataWithContacts:v44 options:v36 error:v60];

  v46 = v60[0];
  if (v45)
  {
    v47 = sub_1A34C9690();
  }

  else
  {
    v48 = v46;
    v49 = sub_1A34C9580();

    swift_willThrow();
    if (qword_1EB0C4738 != -1)
    {
      swift_once();
    }

    v50 = sub_1A34CA250();
    __swift_project_value_buffer(v50, qword_1EB0C5698);
    v51 = v49;
    v52 = sub_1A34CA230();
    v53 = sub_1A34CD640();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      *v54 = 138412290;
      v56 = v49;
      v57 = _swift_stdlib_bridgeErrorToNSError();
      *(v54 + 4) = v57;
      *v55 = v57;
      _os_log_impl(&dword_1A31E6000, v52, v53, "Could not encode vCard: %@", v54, 0xCu);
      sub_1A3288FDC(v55, &unk_1EB0C6C40);
      MEMORY[0x1A58F1010](v55, -1, -1);
      MEMORY[0x1A58F1010](v54, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  return v47;
}

id sub_1A3293728()
{
  v28[1] = *MEMORY[0x1E69E9840];
  if (qword_1EB0C4740 != -1)
  {
    swift_once();
  }

  v0 = qword_1EB0C56B0;
  if (!qword_1EB0C56B0)
  {
    return 0;
  }

  v1 = sub_1A34CD0E0();
  v2 = [v0 dataForKey_];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1A34C9690();
  v5 = v4;

  v6 = objc_opt_self();
  v7 = sub_1A34C9680();
  v28[0] = 0;
  v8 = [v6 contactsWithData:v7 error:v28];

  v9 = v28[0];
  if (!v8)
  {
    v15 = v28[0];
    v9 = sub_1A34C9580();

    swift_willThrow();
    if (qword_1EB0C4738 == -1)
    {
      goto LABEL_13;
    }

    goto LABEL_26;
  }

  sub_1A31EC194(0, &qword_1ED854E70);
  v10 = sub_1A34CD370();
  v11 = v9;

  if (v10 >> 62)
  {
    if (sub_1A34CD9B0())
    {
      goto LABEL_8;
    }

LABEL_17:

    if (qword_1EB0C4738 != -1)
    {
      swift_once();
    }

    v24 = sub_1A34CA250();
    __swift_project_value_buffer(v24, qword_1EB0C5698);
    v18 = sub_1A34CA230();
    v25 = sub_1A34CD640();
    if (os_log_type_enabled(v18, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v28[0] = v27;
      *v26 = 136315138;
      *(v26 + 4) = sub_1A31EE23C(0xD000000000000010, 0x80000001A350B560, v28);
      _os_log_impl(&dword_1A31E6000, v18, v25, "Could not turn preference %s into CNContact", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x1A58F1010](v27, -1, -1);
      MEMORY[0x1A58F1010](v26, -1, -1);
    }

    sub_1A31EC234(v3, v5);
    goto LABEL_22;
  }

  if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_17;
  }

LABEL_8:
  if ((v10 & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x1A58EF310](0, v10);
    goto LABEL_11;
  }

  if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v12 = *(v10 + 32);
LABEL_11:
    v13 = v12;

    sub_1A31EC234(v3, v5);
    return v13;
  }

  __break(1u);
LABEL_26:
  swift_once();
LABEL_13:
  v16 = sub_1A34CA250();
  __swift_project_value_buffer(v16, qword_1EB0C5698);
  v17 = v9;
  v18 = sub_1A34CA230();
  v19 = sub_1A34CD640();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v20 = 138412290;
    v22 = v9;
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v20 + 4) = v23;
    *v21 = v23;
    _os_log_impl(&dword_1A31E6000, v18, v19, "Could not decode vCard from pref: %@", v20, 0xCu);
    sub_1A3288FDC(v21, &unk_1EB0C6C40);
    MEMORY[0x1A58F1010](v21, -1, -1);
    MEMORY[0x1A58F1010](v20, -1, -1);
    sub_1A31EC234(v3, v5);

LABEL_22:
    return 0;
  }

  sub_1A31EC234(v3, v5);

  return 0;
}

uint64_t sub_1A3293BA8()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v1 = sub_1A34CD0E0();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    v3 = sub_1A34CD0E0();
    v4 = [v2 stringForKey_];

    if (v4)
    {
      v5 = sub_1A34CD110();

      return v5;
    }
  }

  return 0;
}

void *sub_1A3293C98(void *a1, void *a2, uint64_t a3)
{
  [a1 mutableCopy];
  sub_1A34CD920();
  swift_unknownObjectRelease();
  sub_1A31EC194(0, &qword_1EB0C2B00);
  swift_dynamicCast();
  v6 = *(a3 + 16);
  if (v6)
  {
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v11[0] = *(v7 - 1);
      v11[1] = v8;

      sub_1A329793C(v11, a1, a2, v10);

      v7 += 2;
      --v6;
    }

    while (v6);
  }

  return v10;
}

void static CNUINameDrop.saveFieldPreferences(for:)(void *a1)
{
  v32[1] = *MEMORY[0x1E69E9840];
  v2 = [objc_allocWithZone(MEMORY[0x1E69E4B40]) init];
  [v2 setIncludeNotes_];
  v3 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6970);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1A34DAA30;
  *(v4 + 32) = a1;
  sub_1A31EC194(0, &qword_1ED854E70);
  v5 = a1;
  v6 = sub_1A34CD350();

  v32[0] = 0;
  v7 = [v3 dataWithContacts:v6 options:v2 error:v32];

  v8 = v32[0];
  if (v7)
  {
    v9 = sub_1A34C9690();
    v11 = v10;

    if (qword_1EB0C4740 != -1)
    {
      swift_once();
    }

    v12 = qword_1EB0C56B0;
    if (qword_1EB0C56B0)
    {
      v13 = sub_1A34C9680();
      v14 = sub_1A34CD0E0();
      [v12 setObject:v13 forKey:v14];
    }

    v15 = [v5 addressingGrammars];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8160);
    v16 = sub_1A34CD370();

    if (v16 >> 62)
    {
      v17 = sub_1A34CD9B0();
    }

    else
    {
      v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v12)
    {
      v18 = sub_1A34CD0E0();
      [v12 setBool:v17 != 0 forKey:v18];
    }

    if (qword_1EB0C4738 != -1)
    {
      swift_once();
    }

    v19 = sub_1A34CA250();
    __swift_project_value_buffer(v19, qword_1EB0C5698);
    v20 = sub_1A34CA230();
    v21 = sub_1A34CD630();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1A31E6000, v20, v21, "Saved NameDrop field pref", v22, 2u);
      MEMORY[0x1A58F1010](v22, -1, -1);
    }

    sub_1A31EC234(v9, v11);
    goto LABEL_19;
  }

  v23 = v8;
  v24 = sub_1A34C9580();

  swift_willThrow();
  if (qword_1EB0C4738 != -1)
  {
    swift_once();
  }

  v25 = sub_1A34CA250();
  __swift_project_value_buffer(v25, qword_1EB0C5698);
  v26 = v24;
  v20 = sub_1A34CA230();
  v27 = sub_1A34CD640();

  if (os_log_type_enabled(v20, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v28 = 138412290;
    v30 = v24;
    v31 = _swift_stdlib_bridgeErrorToNSError();
    *(v28 + 4) = v31;
    *v29 = v31;
    _os_log_impl(&dword_1A31E6000, v20, v27, "Failed to save NameDrop field pref: %@", v28, 0xCu);
    sub_1A3288FDC(v29, &unk_1EB0C6C40);
    MEMORY[0x1A58F1010](v29, -1, -1);
    MEMORY[0x1A58F1010](v28, -1, -1);

LABEL_19:
    return;
  }
}

void static CNUINameDrop.fieldSummary(contact:)(id a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6C50);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v265 - v5;
  v7 = sub_1A34CD0C0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v265 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A34CD060();
  v277 = sub_1A32963A0(v10, MEMORY[0x1E69E7CC0]);
  v278 = v11;
  v12 = *(v8 + 8);
  v280 = (v8 + 8);
  v281 = v12;
  v12(v10, v7);
  v13 = [a1 phoneNumbers];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8160);
  v15 = sub_1A34CD370();

  if (v15 >> 62)
  {
    v16 = sub_1A34CD9B0();
  }

  else
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v279 = v7;

  v17 = MEMORY[0x1E69E7CC0];
  if (v16)
  {
    v17 = sub_1A32984C4(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v19 = *(v17 + 2);
    v18 = *(v17 + 3);
    if (v19 >= v18 >> 1)
    {
      v17 = sub_1A32984C4((v18 > 1), v19 + 1, 1, v17);
    }

    *(v17 + 2) = v19 + 1;
    v20 = &v17[16 * v19];
    *(v20 + 4) = 0x69662E656E6F6870;
    *(v20 + 5) = 0xEA00000000006C6CLL;
  }

  v21 = [a1 emailAddresses];
  v22 = sub_1A34CD370();

  if (v22 >> 62)
  {
    v23 = sub_1A34CD9B0();
  }

  else
  {
    v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v23)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = sub_1A32984C4(0, *(v17 + 2) + 1, 1, v17);
    }

    v25 = *(v17 + 2);
    v24 = *(v17 + 3);
    if (v25 >= v24 >> 1)
    {
      v17 = sub_1A32984C4((v24 > 1), v25 + 1, 1, v17);
    }

    *(v17 + 2) = v25 + 1;
    v26 = &v17[16 * v25];
    strcpy(v26 + 32, "envelope.fill");
    *(v26 + 23) = -4864;
  }

  v27 = [a1 urlAddresses];
  v28 = sub_1A34CD370();

  if (v28 >> 62)
  {
    v29 = sub_1A34CD9B0();
  }

  else
  {
    v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v29)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = sub_1A32984C4(0, *(v17 + 2) + 1, 1, v17);
    }

    v31 = *(v17 + 2);
    v30 = *(v17 + 3);
    if (v31 >= v30 >> 1)
    {
      v17 = sub_1A32984C4((v30 > 1), v31 + 1, 1, v17);
    }

    *(v17 + 2) = v31 + 1;
    v32 = &v17[16 * v31];
    *(v32 + 4) = 0x662E697261666173;
    *(v32 + 5) = 0xEB000000006C6C69;
  }

  v33 = &selRef_maskedAvatarIndices;
  v34 = [a1 postalAddresses];
  v35 = sub_1A34CD370();

  if (v35 >> 62)
  {
    v36 = sub_1A34CD9B0();
  }

  else
  {
    v36 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v36)
  {
    goto LABEL_65;
  }

  v37 = [a1 postalAddresses];
  v38 = sub_1A34CD370();

  if (!(v38 >> 62))
  {
    if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_28;
    }

    goto LABEL_64;
  }

  if (!sub_1A34CD9B0())
  {
LABEL_64:

LABEL_65:
    v38 = 0xD000000000000018;
    goto LABEL_66;
  }

LABEL_28:
  if ((v38 & 0xC000000000000001) != 0)
  {
    v39 = MEMORY[0x1A58EF310](0, v38);
  }

  else
  {
    if (!*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_121;
    }

    v39 = *(v38 + 32);
  }

  v33 = v39;

  v40 = [(SEL *)v33 label];
  if (!v40)
  {
    sub_1A34CD110();
LABEL_38:

    sub_1A34CD110();

    v38 = 0xD000000000000018;
    goto LABEL_39;
  }

  v276 = v33;
  v41 = v14;
  v42 = a1;
  v43 = a2;
  v44 = v40;
  v45 = sub_1A34CD110();
  v47 = v46;

  v48 = sub_1A34CD110();
  if (!v47)
  {
    a2 = v43;
    a1 = v42;
    v14 = v41;
    v33 = v276;
    goto LABEL_38;
  }

  if (v48 != v45 || v47 != v49)
  {
    v53 = sub_1A34CDE30();

    if (v53)
    {
      goto LABEL_45;
    }

    if (sub_1A34CD110() == v45 && v47 == v59)
    {

      a2 = v43;
      a1 = v42;
      v14 = v41;
      v38 = 0xD000000000000018;
      v33 = v276;
      goto LABEL_55;
    }

    v60 = sub_1A34CDE30();

    a2 = v43;
    a1 = v42;
    v14 = v41;
    v38 = 0xD000000000000018;
    v33 = v276;
    if (v60)
    {
LABEL_55:
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_56;
      }

      goto LABEL_211;
    }

LABEL_39:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = sub_1A32984C4(0, *(v17 + 2) + 1, 1, v17);
    }

    v51 = *(v17 + 2);
    v50 = *(v17 + 3);
    if (v51 >= v50 >> 1)
    {
      v17 = sub_1A32984C4((v50 > 1), v51 + 1, 1, v17);
    }

    *(v17 + 2) = v51 + 1;
    v52 = &v17[16 * v51];
    *(v52 + 4) = 0xD00000000000001ALL;
    *(v52 + 5) = 0x80000001A350B5A0;
    goto LABEL_66;
  }

LABEL_45:

  a2 = v43;
  v38 = 0xD000000000000018;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v17 = sub_1A32984C4(0, *(v17 + 2) + 1, 1, v17);
  }

  a1 = v42;
  v55 = *(v17 + 2);
  v54 = *(v17 + 3);
  v14 = v41;
  if (v55 >= v54 >> 1)
  {
    v17 = sub_1A32984C4((v54 > 1), v55 + 1, 1, v17);
  }

  *(v17 + 2) = v55 + 1;
  v56 = &v17[16 * v55];
  v57 = 0x69662E6573756F68;
  for (i = 0xEA00000000006C6CLL; ; i = 0xEF6C6C69662E322ELL)
  {
    *(v56 + 4) = v57;
    *(v56 + 5) = i;
LABEL_66:
    v63 = [a1 birthday];
    if (v63)
    {
      v64 = v63;
      sub_1A34C9230();

      v65 = sub_1A34C9330();
      (*(*(v65 - 8) + 56))(v6, 0, 1, v65);
      sub_1A3288FDC(v6, &qword_1EB0C6C50);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v6 = v280;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        goto LABEL_97;
      }
    }

    else
    {
      v95 = sub_1A34C9330();
      (*(*(v95 - 8) + 56))(v6, 1, 1, v95);
      sub_1A3288FDC(v6, &qword_1EB0C6C50);
      v96 = [a1 dates];
      v97 = sub_1A34CD370();

      if (v97 >> 62)
      {
        v98 = sub_1A34CD9B0();
      }

      else
      {
        v98 = *((v97 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v6 = v280;

      if (!v98)
      {
        LODWORD(v276) = 0;
        goto LABEL_71;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
LABEL_97:
        v17 = sub_1A32984C4(0, *(v17 + 2) + 1, 1, v17);
      }
    }

    v68 = *(v17 + 2);
    v67 = *(v17 + 3);
    if (v68 >= v67 >> 1)
    {
      v17 = sub_1A32984C4((v67 > 1), v68 + 1, 1, v17);
    }

    *(v17 + 2) = v68 + 1;
    v69 = &v17[16 * v68];
    *(v69 + 4) = 0x7261646E656C6163;
    *(v69 + 5) = 0xE800000000000000;
    LODWORD(v276) = 1;
LABEL_71:
    v33 = &off_1E76EB000;
    v70 = [a1 contactRelations];
    v71 = sub_1A34CD370();

    if (v71 >> 62)
    {
      v99 = sub_1A34CD9B0();

      if (v99)
      {
        goto LABEL_75;
      }
    }

    else
    {
      v72 = *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v72)
      {
        goto LABEL_75;
      }
    }

    v73 = [a1 socialProfiles];
    v74 = sub_1A34CD370();

    if (v74 >> 62)
    {
LABEL_121:
      v117 = sub_1A34CD9B0();

      if (!v117)
      {
        goto LABEL_80;
      }
    }

    else
    {
      v75 = *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (!v75)
      {
        goto LABEL_80;
      }
    }

LABEL_75:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = sub_1A32984C4(0, *(v17 + 2) + 1, 1, v17);
    }

    v77 = *(v17 + 2);
    v76 = *(v17 + 3);
    if (v77 >= v76 >> 1)
    {
      v17 = sub_1A32984C4((v76 > 1), v77 + 1, 1, v17);
    }

    *(v17 + 2) = v77 + 1;
    v78 = &v17[16 * v77];
    *(v78 + 4) = 0x662E6E6F73726570;
    *(v78 + 5) = 0xEB000000006C6C69;
LABEL_80:
    v79 = [a1 instantMessageAddresses];
    v80 = sub_1A34CD370();

    if (v80 >> 62)
    {
      v100 = sub_1A34CD9B0();

      if (!v100)
      {
        goto LABEL_87;
      }
    }

    else
    {
      v81 = *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (!v81)
      {
        goto LABEL_87;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = sub_1A32984C4(0, *(v17 + 2) + 1, 1, v17);
    }

    v83 = *(v17 + 2);
    v82 = *(v17 + 3);
    if (v83 >= v82 >> 1)
    {
      v17 = sub_1A32984C4((v82 > 1), v83 + 1, 1, v17);
    }

    *(v17 + 2) = v83 + 1;
    v84 = &v17[16 * v83];
    *(v84 + 4) = v38 - 8;
    *(v84 + 5) = 0x80000001A350B5C0;
LABEL_87:
    v85 = [a1 termsOfAddress];
    sub_1A31EC194(0, &qword_1EB0C56C0);
    v86 = sub_1A34CD370();

    if (v86 >> 62)
    {
      v101 = sub_1A34CD9B0();

      if (v101)
      {
LABEL_89:
        sub_1A34CD060();
        v88 = MEMORY[0x1E69E7CC0];
        v89 = v10;
        goto LABEL_90;
      }
    }

    else
    {
      v87 = *((v86 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v87)
      {
        goto LABEL_89;
      }
    }

    if (*(v17 + 2) != 1)
    {
      goto LABEL_142;
    }

    v102 = [a1 phoneNumbers];
    v103 = sub_1A34CD370();

    if (v103 >> 62)
    {
      v118 = sub_1A34CD9B0();

      if (!v118)
      {
        goto LABEL_129;
      }
    }

    else
    {
      v104 = *((v103 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (!v104)
      {
        goto LABEL_129;
      }
    }

    v105 = [a1 phoneNumbers];
    v106 = sub_1A34CD370();

    if (v106 >> 62)
    {
      v107 = sub_1A34CD9B0();
    }

    else
    {
      v107 = *((v106 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v107 != 1)
    {
LABEL_138:

      sub_1A34CD060();
      v17 = MEMORY[0x1E69E7CC0];
      v89 = v10;
      v88 = MEMORY[0x1E69E7CC0];
LABEL_90:
      v90 = sub_1A32963A0(v89, v88);
      v92 = v91;
      v281(v10, v279);
LABEL_91:
      v93 = v277;
      v94 = v278;
LABEL_92:
      *a2 = v17;
      *(a2 + 1) = v90;
      *(a2 + 2) = v92;
      *(a2 + 3) = v93;
      *(a2 + 4) = v94;
      return;
    }

    v108 = [a1 phoneNumbers];
    v109 = sub_1A34CD370();

    if (v109 >> 62)
    {
      if (sub_1A34CD9B0())
      {
LABEL_112:

        if ((v109 & 0xC000000000000001) != 0)
        {
          v110 = a2;
          v111 = MEMORY[0x1A58EF310](0, v109);
        }

        else
        {
          if (!*((v109 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_190;
          }

          v110 = a2;
          v111 = *(v109 + 32);
        }

        v112 = v111;

        v113 = [v112 value];
        v114 = [v113 formattedStringValue];

        if (!v114)
        {
          v115 = [v112 value];
          v114 = [v115 stringValue];
        }

        v90 = sub_1A34CD110();
        v92 = v116;

        v93 = 0;
        v94 = 0xE000000000000000;
        v17 = MEMORY[0x1E69E7CC0];
        a2 = v110;
        goto LABEL_92;
      }
    }

    else if (*((v109 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_112;
    }

LABEL_129:
    v119 = [a1 emailAddresses];
    v120 = sub_1A34CD370();

    if (v120 >> 62)
    {
      v121 = sub_1A34CD9B0();
    }

    else
    {
      v121 = *((v120 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v121 != 1)
    {
      goto LABEL_138;
    }

    v122 = [a1 emailAddresses];
    v38 = sub_1A34CD370();

    if (v38 >> 62)
    {
      break;
    }

    if (!*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_141;
    }

LABEL_134:

    if ((v38 & 0xC000000000000001) != 0)
    {
      v123 = MEMORY[0x1A58EF310](0, v38);
      goto LABEL_137;
    }

    if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v123 = *(v38 + 32);
LABEL_137:
      v124 = v123;

      v125 = [v124 value];
      v90 = sub_1A34CD110();
      v92 = v126;

      v93 = 0;
      v94 = 0xE000000000000000;
      v17 = MEMORY[0x1E69E7CC0];
      goto LABEL_92;
    }

    __break(1u);
LABEL_211:
    v17 = sub_1A32984C4(0, *(v17 + 2) + 1, 1, v17);
LABEL_56:
    v62 = *(v17 + 2);
    v61 = *(v17 + 3);
    if (v62 >= v61 >> 1)
    {
      v17 = sub_1A32984C4((v61 > 1), v62 + 1, 1, v17);
    }

    *(v17 + 2) = v62 + 1;
    v56 = &v17[16 * v62];
    v57 = 0x676E69646C697562;
  }

  if (sub_1A34CD9B0())
  {
    goto LABEL_134;
  }

LABEL_141:

LABEL_142:
  v127 = [a1 v33[482]];
  v128 = sub_1A34CD370();

  if (v128 >> 62)
  {
    v129 = sub_1A34CD9B0();
  }

  else
  {
    v129 = *((v128 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v273 = v14;
  if (v129)
  {
    v130 = [a1 socialProfiles];
    v131 = sub_1A34CD370();

    if (v131 >> 62)
    {
      v132 = sub_1A34CD9B0();
    }

    else
    {
      v132 = *((v131 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v133 = a1;

    v134 = v132 != 0;
  }

  else
  {
    v133 = a1;
    v134 = 0;
  }

  v90 = 0;
  v92 = 0xE000000000000000;
  if (*(v17 + 2) != 2 || v134)
  {
    goto LABEL_91;
  }

  v269 = a2;
  v270 = 0xD000000000000017;
  sub_1A34CD060();
  v135 = MEMORY[0x1E69E7CC0];
  v267 = sub_1A32963A0(v10, MEMORY[0x1E69E7CC0]);
  v268 = v136;
  v137 = v281;
  v138 = v279;
  v281(v10, v279);
  v139 = swift_allocObject();
  v274 = v133;
  v275 = v139;
  *(v139 + 16) = v135;
  v271 = (v139 + 16);
  v140 = [v133 phoneNumbers];
  if (!v140)
  {
    __break(1u);
LABEL_216:
    __break(1u);
    goto LABEL_217;
  }

  v141 = v140;
  sub_1A34CD060();
  v142 = sub_1A32963A0(v10, v135);
  v144 = v143;
  v145 = v280;
  v137(v10, v138);
  sub_1A34CD060();
  v146 = sub_1A32963A0(v10, v135);
  v148 = v147;
  v272 = v10;
  v137(v10, v138);
  sub_1A3296704(v141, v142, v144, v146, v148, v275);

  a1 = v274;
  v149 = [v274 emailAddresses];
  v150 = sub_1A34CD370();

  a2 = v145;
  if (v150 >> 62)
  {
    v151 = sub_1A34CD9B0();
  }

  else
  {
    v151 = *((v150 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v33 = v281;
  v10 = v272;
  v14 = v273;
  if (!v151)
  {
    goto LABEL_192;
  }

  v152 = [a1 emailAddresses];
  v153 = sub_1A34CD370();

  if (v153 >> 62)
  {
    v154 = sub_1A34CD9B0();
  }

  else
  {
    v154 = *((v153 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v154 != 1)
  {
    v161 = a1;
    sub_1A34CD060();
    v162 = sub_1A32963A0(v10, MEMORY[0x1E69E7CC0]);
    v164 = v163;
    (v33)(v10, v279);
    v165 = v271;
    swift_beginAccess();
    v166 = *v165;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v166 = sub_1A32984C4(0, *(v166 + 2) + 1, 1, v166);
    }

    v168 = *(v166 + 2);
    v167 = *(v166 + 3);
    if (v168 >= v167 >> 1)
    {
      v166 = sub_1A32984C4((v167 > 1), v168 + 1, 1, v166);
    }

    *(v166 + 2) = v168 + 1;
    v169 = &v166[16 * v168];
    *(v169 + 4) = v162;
    *(v169 + 5) = v164;
    *v271 = v166;
    swift_endAccess();
    a1 = v161;
    goto LABEL_192;
  }

  v155 = [a1 emailAddresses];
  v109 = sub_1A34CD370();

  if (v109 >> 62)
  {
LABEL_190:
    if (!sub_1A34CD9B0())
    {
      goto LABEL_191;
    }

LABEL_160:
    if ((v109 & 0xC000000000000001) != 0)
    {
      v156 = MEMORY[0x1A58EF310](0, v109);
    }

    else
    {
      if (!*((v109 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_214;
      }

      v156 = *(v109 + 32);
    }

    v157 = v156;

    v266 = v157;
    v158 = [v157 value];
    v159 = sub_1A34CD0E0();
    v160 = [v158 hasSuffix_];

    if (v160 || (v170 = sub_1A34CD0E0(), v171 = [v158 hasSuffix_], v170, (v171 & 1) != 0) || (v172 = sub_1A34CD0E0(), v173 = objc_msgSend(v158, sel_hasSuffix_, v172), v172, (v173 & 1) != 0) || (v174 = sub_1A34CD0E0(), v175 = objc_msgSend(v158, sel_hasSuffix_, v174), v174, v175))
    {
      sub_1A34CD060();
      v176 = sub_1A32963A0(v10, MEMORY[0x1E69E7CC0]);
      v178 = v177;
      (v33)(v10, v279);
      v179 = v271;
      swift_beginAccess();
      v180 = *v179;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v180 = sub_1A32984C4(0, *(v180 + 2) + 1, 1, v180);
      }

      v182 = *(v180 + 2);
      v181 = *(v180 + 3);
      if (v182 >= v181 >> 1)
      {
        v180 = sub_1A32984C4((v181 > 1), v182 + 1, 1, v180);
      }

      *(v180 + 2) = v182 + 1;
      v183 = &v180[16 * v182];
      *(v183 + 4) = v176;
      *(v183 + 5) = v178;
    }

    else
    {
      sub_1A34CD060();
      v184 = sub_1A32963A0(v10, MEMORY[0x1E69E7CC0]);
      v265 = v185;
      (v33)(v10, v279);
      v186 = v271;
      swift_beginAccess();
      v180 = *v186;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v180 = sub_1A32984C4(0, *(v180 + 2) + 1, 1, v180);
      }

      v188 = *(v180 + 2);
      v187 = *(v180 + 3);
      if (v188 >= v187 >> 1)
      {
        v180 = sub_1A32984C4((v187 > 1), v188 + 1, 1, v180);
      }

      *(v180 + 2) = v188 + 1;
      v189 = &v180[16 * v188];
      v190 = v265;
      *(v189 + 4) = v184;
      *(v189 + 5) = v190;
    }

    *v271 = v180;
    swift_endAccess();

    goto LABEL_192;
  }

  if (*((v109 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_160;
  }

LABEL_191:

LABEL_192:
  v191 = [a1 urlAddresses];
  if (!v191)
  {
    goto LABEL_216;
  }

  v192 = v191;
  sub_1A34CD060();
  v193 = MEMORY[0x1E69E7CC0];
  v194 = sub_1A32963A0(v10, MEMORY[0x1E69E7CC0]);
  v196 = v195;
  v197 = v279;
  v198 = v281;
  v281(v10, v279);
  sub_1A34CD060();
  v199 = sub_1A32963A0(v10, v193);
  v201 = v200;
  v198(v10, v197);
  sub_1A3296704(v192, v194, v196, v199, v201, v275);

  v202 = [v274 postalAddresses];
  if (!v202)
  {
LABEL_217:
    __break(1u);
    goto LABEL_218;
  }

  v203 = v202;
  sub_1A34CD060();
  v204 = MEMORY[0x1E69E7CC0];
  v205 = sub_1A32963A0(v10, MEMORY[0x1E69E7CC0]);
  v207 = v206;
  v198(v10, v197);
  sub_1A34CD060();
  v208 = sub_1A32963A0(v10, v204);
  v210 = v209;
  v198(v10, v197);
  sub_1A3296704(v203, v205, v207, v208, v210, v275);

  v211 = v198;
  v14 = v274;
  if (!v276)
  {
    goto LABEL_204;
  }

  v212 = [v274 dates];
  v213 = sub_1A34CD370();

  if (v213 >> 62)
  {
    v214 = sub_1A34CD9B0();
  }

  else
  {
    v214 = *((v213 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v215 = v272;

  if (!v214)
  {
    sub_1A34CD060();
    v109 = sub_1A32963A0(v215, MEMORY[0x1E69E7CC0]);
    v226 = v211;
    v33 = v227;
    v226(v215, v279);
    v228 = v271;
    swift_beginAccess();
    a2 = *v228;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_201:
      v230 = *(a2 + 2);
      v229 = *(a2 + 3);
      if (v230 >= v229 >> 1)
      {
        a2 = sub_1A32984C4((v229 > 1), v230 + 1, 1, a2);
      }

      *(a2 + 2) = v230 + 1;
      v231 = &a2[16 * v230];
      *(v231 + 4) = v109;
      *(v231 + 5) = v33;
      *v271 = a2;
      swift_endAccess();
      v211 = v281;
LABEL_204:
      v232 = [v14 socialProfiles];
      if (v232)
      {
        v233 = v232;
        v234 = v272;
        sub_1A34CD060();
        v235 = MEMORY[0x1E69E7CC0];
        v236 = sub_1A32963A0(v234, MEMORY[0x1E69E7CC0]);
        v238 = v237;
        v239 = v279;
        v211(v234, v279);
        sub_1A34CD060();
        v240 = sub_1A32963A0(v234, v235);
        v241 = v211;
        v243 = v242;
        v241(v234, v239);
        sub_1A3296704(v233, v236, v238, v240, v243, v275);

        v244 = [v14 contactRelations];
        if (v244)
        {
          v245 = v244;
          sub_1A34CD060();
          v246 = MEMORY[0x1E69E7CC0];
          v247 = sub_1A32963A0(v234, MEMORY[0x1E69E7CC0]);
          v249 = v248;
          v250 = v281;
          v281(v234, v239);
          sub_1A34CD060();
          v251 = sub_1A32963A0(v234, v246);
          v253 = v252;
          v250(v234, v239);
          sub_1A3296704(v245, v247, v249, v251, v253, v275);

          v254 = [v274 instantMessageAddresses];
          if (v254)
          {
            v255 = v254;

            sub_1A34CD060();
            v17 = MEMORY[0x1E69E7CC0];
            v256 = sub_1A32963A0(v234, MEMORY[0x1E69E7CC0]);
            v258 = v257;
            v259 = v281;
            v281(v234, v239);
            sub_1A34CD060();
            v260 = sub_1A32963A0(v234, v17);
            v262 = v261;
            v259(v234, v239);
            v263 = v275;
            sub_1A3296704(v255, v256, v258, v260, v262, v275);

            swift_beginAccess();
            v282 = *(v263 + 16);

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7380);
            sub_1A329A208();
            v90 = sub_1A34CD010();
            v92 = v264;

            a2 = v269;
            goto LABEL_91;
          }

          goto LABEL_220;
        }

LABEL_219:
        __break(1u);
LABEL_220:
        __break(1u);
        goto LABEL_221;
      }

LABEL_218:
      __break(1u);
      goto LABEL_219;
    }

LABEL_214:
    a2 = sub_1A32984C4(0, *(a2 + 2) + 1, 1, a2);
    goto LABEL_201;
  }

  v216 = [v14 dates];
  if (v216)
  {
    v217 = v216;
    sub_1A34CD060();
    v218 = MEMORY[0x1E69E7CC0];
    v219 = sub_1A32963A0(v215, MEMORY[0x1E69E7CC0]);
    v221 = v220;
    v222 = v279;
    v211(v215, v279);
    sub_1A34CD060();
    v223 = sub_1A32963A0(v215, v218);
    v225 = v224;
    v281(v215, v222);
    sub_1A3296704(v217, v219, v221, v223, v225, v275);

    v211 = v281;

    v14 = v274;
    goto LABEL_204;
  }

LABEL_221:
  __break(1u);
}

uint64_t sub_1A32963A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5798);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v31 - v5;
  v7 = sub_1A34C9840();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = sub_1A34CD0C0();
  v10 = MEMORY[0x1EEE9AC00](v9);
  (*(v12 + 16))(v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v10);
  type metadata accessor for CNUINameDrop();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v14 = [objc_opt_self() bundleForClass_];
  sub_1A34C9810();
  v15 = sub_1A34CD150();
  v17 = v16;
  sub_1A34C9810();
  (*(v8 + 56))(v6, 0, 1, v7);
  v18 = *(a2 + 16);
  if (v18)
  {
    v31[0] = v15;
    v31[1] = v17;
    v32 = v6;
    v36 = MEMORY[0x1E69E7CC0];
    sub_1A32EBB34(0, v18, 0);
    v19 = v36;
    v20 = (a2 + 40);
    v21 = MEMORY[0x1E69E6158];
    v22 = (a2 + 40);
    do
    {
      v24 = *v22;
      v22 += 2;
      v23 = v24;
      if (v24)
      {
        v25 = *(v20 - 1);
        v26 = v23;
      }

      else
      {
        v25 = 0;
        v26 = 0xE000000000000000;
      }

      v36 = v19;
      v28 = *(v19 + 16);
      v27 = *(v19 + 24);

      if (v28 >= v27 >> 1)
      {
        sub_1A32EBB34((v27 > 1), v28 + 1, 1);
        v19 = v36;
      }

      v34 = v21;
      v35 = sub_1A329A290();
      *&v33 = v25;
      *(&v33 + 1) = v26;
      *(v19 + 16) = v28 + 1;
      sub_1A31EE568(&v33, v19 + 40 * v28 + 32);
      v20 = v22;
      --v18;
    }

    while (v18);
    v6 = v32;
  }

  v29 = sub_1A34CD120();

  sub_1A3288FDC(v6, &qword_1EB0C5798);
  return v29;
}

uint64_t sub_1A3296704(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = [a1 count];
  if (result >= 1)
  {
    if ([a1 count] == 1)
    {
      a5 = a3;
      v13 = a2;
    }

    else
    {
      v13 = a4;
    }

    swift_beginAccess();
    v14 = *(a6 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a6 + 16) = v14;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v14 = sub_1A32984C4(0, *(v14 + 2) + 1, 1, v14);
      *(a6 + 16) = v14;
    }

    v17 = *(v14 + 2);
    v16 = *(v14 + 3);
    if (v17 >= v16 >> 1)
    {
      v14 = sub_1A32984C4((v16 > 1), v17 + 1, 1, v14);
    }

    *(v14 + 2) = v17 + 1;
    v18 = &v14[16 * v17];
    *(v18 + 4) = v13;
    *(v18 + 5) = a5;
    *(a6 + 16) = v14;
    return swift_endAccess();
  }

  return result;
}

id CNUINameDrop.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CNUINameDrop.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CNUINameDrop();
  return objc_msgSendSuper2(&v2, sel_init);
}

id CNUINameDrop.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CNUINameDrop();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A3296900()
{
  v0 = sub_1A34CA250();
  __swift_allocate_value_buffer(v0, qword_1EB0C5680);
  __swift_project_value_buffer(v0, qword_1EB0C5680);
  return sub_1A34CA240();
}

uint64_t sub_1A3296978()
{
  v0 = sub_1A34CA250();
  __swift_allocate_value_buffer(v0, qword_1EB0C5698);
  v1 = __swift_project_value_buffer(v0, qword_1EB0C5698);
  if (qword_1EB0C4730 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1EB0C5680);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_1A3296A40()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v1 = sub_1A34CD0E0();
  v2 = [v0 initWithSuiteName_];

  qword_1EB0C56B0 = v2;
}

uint64_t sub_1A3296AB0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5790);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1A34DB680;
  *(v0 + 32) = sub_1A34CD110();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_1A34CD110();
  *(v0 + 56) = v2;
  *(v0 + 64) = sub_1A34CD110();
  *(v0 + 72) = v3;
  *(v0 + 80) = sub_1A34CD110();
  *(v0 + 88) = v4;
  *(v0 + 96) = sub_1A34CD110();
  *(v0 + 104) = v5;
  *(v0 + 112) = sub_1A34CD110();
  *(v0 + 120) = v6;
  *(v0 + 128) = sub_1A34CD110();
  *(v0 + 136) = v7;
  *(v0 + 144) = sub_1A34CD110();
  *(v0 + 152) = v8;
  *(v0 + 160) = sub_1A34CD110();
  *(v0 + 168) = v9;
  *(v0 + 176) = sub_1A34CD110();
  *(v0 + 184) = v10;
  *(v0 + 192) = sub_1A34CD110();
  *(v0 + 200) = v11;
  *(v0 + 208) = sub_1A34CD110();
  *(v0 + 216) = v12;
  *(v0 + 224) = sub_1A34CD110();
  *(v0 + 232) = v13;
  *(v0 + 240) = sub_1A34CD110();
  *(v0 + 248) = v14;
  *(v0 + 256) = sub_1A34CD110();
  *(v0 + 264) = v15;
  *(v0 + 272) = sub_1A34CD110();
  *(v0 + 280) = v16;
  *(v0 + 288) = sub_1A34CD110();
  *(v0 + 296) = v17;
  *(v0 + 304) = sub_1A34CD110();
  *(v0 + 312) = v18;
  *(v0 + 320) = sub_1A34CD110();
  *(v0 + 328) = v19;
  *(v0 + 336) = sub_1A34CD110();
  *(v0 + 344) = v20;
  *(v0 + 352) = sub_1A34CD110();
  *(v0 + 360) = v21;
  *(v0 + 368) = sub_1A34CD110();
  *(v0 + 376) = v22;
  *(v0 + 384) = sub_1A34CD110();
  *(v0 + 392) = v23;
  result = sub_1A34CD110();
  *(v0 + 400) = result;
  *(v0 + 408) = v25;
  qword_1EB0C56B8 = v0;
  return result;
}

id sub_1A3296CE4(void *a1, void *a2)
{
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (!v4)
  {
    return [objc_opt_self() isObject:a1 equalToOther:a2];
  }

  v5 = v4;
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (!v6)
  {
    return [objc_opt_self() isObject:a1 equalToOther:a2];
  }

  v7 = v6;
  v8 = a1;
  v9 = a2;
  v10 = [v5 day];
  if (v10 == [v7 day] && (v11 = objc_msgSend(v5, sel_month), v11 == objc_msgSend(v7, sel_month)) && (v12 = objc_msgSend(v5, sel_year), v12 == objc_msgSend(v7, sel_year)))
  {
    v13 = [v5 era];
    v14 = [v7 era];

    return (v13 == v14);
  }

  else
  {

    return 0;
  }
}

BOOL sub_1A3296E44(void *a1, void *a2)
{
  v4 = [a1 day];
  if (v4 != [a2 day])
  {
    return 0;
  }

  v5 = [a1 month];
  if (v5 != [a2 month])
  {
    return 0;
  }

  v6 = [a1 year];
  if (v6 != [a2 year])
  {
    return 0;
  }

  v7 = [a1 era];
  return v7 == [a2 era];
}

BOOL sub_1A3296F14(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v34 = a3;
  v5 = sub_1A34C95E0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A34CD0E0();
  v10 = [a4 isKeyAvailable_];

  if (!v10)
  {
    return 0;
  }

  v11 = sub_1A34CD0E0();
  v12 = [a4 valueForKey_];

  if (v12)
  {
    sub_1A34CD920();
    swift_unknownObjectRelease();
  }

  else
  {
    v36 = 0u;
    v37 = 0u;
  }

  v13 = v34;
  v38[0] = v36;
  v38[1] = v37;
  sub_1A329A2E4(v38, &v36);
  if (*(&v37 + 1))
  {
    sub_1A31EC194(0, &qword_1EB0C57A0);
    if (swift_dynamicCast())
    {
      v32 = v6;
      v33 = v5;
      v31 = v35;
      sub_1A34CD7F0();
      sub_1A34C95D0();
      if (*(&v37 + 1))
      {
        v14 = &off_1E76EB000;
        do
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8160);
          if (swift_dynamicCast())
          {
            v15 = v35;
            v16 = [v13 value];
            v17 = [v15 value];
            v18 = [v16 v14[498]];
            if (v18 == [v17 v14[498]] && (v19 = v14, v20 = objc_msgSend(v16, sel_month), v20 == objc_msgSend(v17, sel_month)) && (v21 = objc_msgSend(v16, sel_year), v21 == objc_msgSend(v17, sel_year)))
            {
              v22 = [v16 era];
              v23 = [v17 era];

              v24 = v22 == v23;
              v13 = v34;
              v14 = v19;
              if (v24)
              {

                (*(v32 + 8))(v8, v33);
                sub_1A3288FDC(v38, &qword_1EB0C7690);
                return 1;
              }
            }

            else
            {
            }
          }

          sub_1A34C95D0();
        }

        while (*(&v37 + 1));
      }

      (*(v32 + 8))(v8, v33);
      goto LABEL_25;
    }
  }

  else
  {
    sub_1A3288FDC(&v36, &qword_1EB0C7690);
  }

  sub_1A329A2E4(v38, &v36);
  if (!*(&v37 + 1))
  {
    sub_1A3288FDC(v38, &qword_1EB0C7690);
    v29 = &v36;
    goto LABEL_27;
  }

  sub_1A31EC194(0, &qword_1EB0C57A8);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_25:
    v29 = v38;
LABEL_27:
    sub_1A3288FDC(v29, &qword_1EB0C7690);
    return 0;
  }

  v25 = v35;
  v26 = [v13 value];
  v27 = sub_1A3296E44(v26, v25);

  sub_1A3288FDC(v38, &qword_1EB0C7690);
  return v27;
}

BOOL sub_1A32973C4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = sub_1A34C95E0();
  v43 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A34CD0E0();
  v10 = [a4 isKeyAvailable_];

  if (!v10)
  {
    return 0;
  }

  v11 = sub_1A34CD0E0();
  v12 = [a4 valueForKey_];

  if (v12)
  {
    sub_1A34CD920();
    swift_unknownObjectRelease();
  }

  else
  {
    v45 = 0u;
    v46 = 0u;
  }

  v47[0] = v45;
  v47[1] = v46;
  sub_1A329A2E4(v47, &v45);
  if (!*(&v46 + 1))
  {
    sub_1A3288FDC(&v45, &qword_1EB0C7690);
    goto LABEL_22;
  }

  sub_1A31EC194(0, &qword_1EB0C57A0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_22:
    sub_1A329A2E4(v47, &v45);
    if (!*(&v46 + 1))
    {
      sub_1A3288FDC(v47, &qword_1EB0C7690);
      v37 = &v45;
      goto LABEL_29;
    }

    sub_1A31EC194(0, &qword_1ED854490);
    if (swift_dynamicCast())
    {
      v34 = v44;
      v35 = [a3 value];
      v36 = sub_1A3296CE4(v35, v34);

      sub_1A3288FDC(v47, &qword_1EB0C7690);
      return (v36 & 1) != 0;
    }

LABEL_27:
    v37 = v47;
LABEL_29:
    sub_1A3288FDC(v37, &qword_1EB0C7690);
    return 0;
  }

  v40 = v44;
  v41 = v6;
  sub_1A34CD7F0();
  sub_1A34C95D0();
  if (!*(&v46 + 1))
  {
LABEL_26:

    (*(v43 + 8))(v8, v41);
    goto LABEL_27;
  }

  v13 = &qword_1EB0C8160;
  v42 = a3;
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(v13);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_10;
    }

    v17 = v13;
    v18 = v44;
    v19 = a3;
    v20 = [a3 value];
    v21 = [v18 value];
    objc_opt_self();
    v22 = swift_dynamicCastObjCClass();
    if (v22)
    {
      v23 = v22;
      objc_opt_self();
      v24 = swift_dynamicCastObjCClass();
      if (v24)
      {
        break;
      }
    }

    v14 = objc_opt_self();
    v15 = v20;
    v16 = v21;
    LOBYTE(v14) = [v14 isObject:v15 equalToOther:v16];

    v13 = v17;
    a3 = v19;
    if (v14)
    {
      goto LABEL_32;
    }

LABEL_10:
    sub_1A34C95D0();
    if (!*(&v46 + 1))
    {
      goto LABEL_26;
    }
  }

  v25 = v24;
  v26 = v20;
  v27 = v21;
  v28 = [v23 day];
  if (v28 != [v25 day] || (v29 = objc_msgSend(v23, sel_month), v29 != objc_msgSend(v25, sel_month)) || (v30 = objc_msgSend(v23, sel_year), v30 != objc_msgSend(v25, sel_year)))
  {

    a3 = v42;
    v13 = v17;
    goto LABEL_10;
  }

  v31 = [v23 era];
  v32 = [v25 era];

  v33 = v31 == v32;
  a3 = v42;
  v13 = v17;
  if (!v33)
  {
    goto LABEL_10;
  }

LABEL_32:

  (*(v43 + 8))(v8, v41);
  sub_1A3288FDC(v47, &qword_1EB0C7690);
  return 1;
}

void sub_1A329793C(uint64_t *a1, void *a2, void *a3, void *a4)
{
  v66 = a4;
  v7 = sub_1A34C95E0();
  v65 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v10 = a1[1];
  v12 = sub_1A34CD0E0();
  v13 = [a2 isKeyAvailable_];

  if (v13)
  {
    v14 = sub_1A34CD0E0();
    v15 = [a3 isKeyAvailable_];

    if (v15)
    {
      v64 = a3;
      v16 = sub_1A34CD0E0();
      v17 = [a2 valueForKey_];

      if (v17)
      {
        sub_1A34CD920();
        swift_unknownObjectRelease();
        sub_1A31EE354(v71, &v69);
        sub_1A31EC194(0, &qword_1EB0C57A0);
        if (swift_dynamicCast())
        {
          v18 = *&v68[0];
          if ([*&v68[0] count] < 1)
          {
            __swift_destroy_boxed_opaque_existential_0(v71);

            return;
          }

          v63 = [objc_allocWithZone(MEMORY[0x1E695DF70]) init];
          v61 = v18;
          sub_1A34CD7F0();
          sub_1A34C95D0();
          if (v70)
          {
            *&v19 = 138412290;
            v62 = v19;
            do
            {
              sub_1A31FA144(&v69, v68);
              sub_1A31EE354(v68, v67);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8160);
              if (swift_dynamicCast())
              {
                v20 = v72;
                v21 = [v72 value];
                ObjectType = swift_getObjectType();

                if (ObjectType == sub_1A31EC194(0, &qword_1EB0C57A8))
                {
                  sub_1A31EE354(v68, v67);
                  if ((swift_dynamicCast() & 1) == 0)
                  {
                    goto LABEL_21;
                  }

                  v23 = v72;
                  if (!sub_1A3296F14(v11, v10, v72, v64))
                  {

LABEL_21:
                    if (qword_1EB0C4738 != -1)
                    {
                      swift_once();
                    }

                    v34 = sub_1A34CA250();
                    __swift_project_value_buffer(v34, qword_1EB0C5698);
                    v25 = v20;
                    v26 = sub_1A34CA230();
                    v35 = sub_1A34CD640();

                    if (!os_log_type_enabled(v26, v35))
                    {
LABEL_26:

                      goto LABEL_8;
                    }

                    v28 = swift_slowAlloc();
                    v29 = swift_slowAlloc();
                    *v28 = v62;
                    *(v28 + 4) = v25;
                    *v29 = v25;
                    v30 = v25;
                    v31 = v35;
                    v32 = v26;
                    v33 = "unable to find date pref in me card: %@";
LABEL_25:
                    _os_log_impl(&dword_1A31E6000, v32, v31, v33, v28, 0xCu);
                    sub_1A3288FDC(v29, &unk_1EB0C6C40);
                    MEMORY[0x1A58F1010](v29, -1, -1);
                    MEMORY[0x1A58F1010](v28, -1, -1);

                    goto LABEL_8;
                  }

                  [v63 addObject_];
                }

                else
                {
                  if (!sub_1A32973C4(v11, v10, v20, v64))
                  {
                    if (qword_1EB0C4738 != -1)
                    {
                      swift_once();
                    }

                    v24 = sub_1A34CA250();
                    __swift_project_value_buffer(v24, qword_1EB0C5698);
                    v25 = v20;
                    v26 = sub_1A34CA230();
                    v27 = sub_1A34CD640();

                    if (!os_log_type_enabled(v26, v27))
                    {
                      goto LABEL_26;
                    }

                    v28 = swift_slowAlloc();
                    v29 = swift_slowAlloc();
                    *v28 = v62;
                    *(v28 + 4) = v25;
                    *v29 = v25;
                    v30 = v25;
                    v31 = v27;
                    v32 = v26;
                    v33 = "unable to find string pref in me card: %@";
                    goto LABEL_25;
                  }

                  [v63 addObject_];
                }
              }

LABEL_8:
              __swift_destroy_boxed_opaque_existential_0(v68);
              sub_1A34C95D0();
            }

            while (v70);
          }

          (*(v65 + 8))(v9, v7);
          v43 = v63;
          if ([v63 count] <= 0)
          {
            v51 = sub_1A34CD0E0();
            [v66 setNilValueForKey_];
          }

          else
          {
            v44 = v43;
            v45 = sub_1A34CD0E0();
            [v66 setValue:v44 forKey:v45];
          }

          goto LABEL_44;
        }

        sub_1A31EE354(v71, &v69);
        sub_1A31EC194(0, &qword_1ED854490);
        if (swift_dynamicCast())
        {
          v36 = *&v68[0];
          v37 = [*&v68[0] length];
          v38 = v64;
          if (v37 >= 1)
          {
            v39 = objc_allocWithZone(MEMORY[0x1E695CEE0]);
            v36 = v36;
            v40 = sub_1A34CD0E0();
            v41 = [v39 initWithLabel:v40 value:v36];

            v42 = sub_1A32973C4(v11, v10, v41, v38);
LABEL_35:
            v50 = v42;

            if (v50)
            {
              goto LABEL_36;
            }

            if (qword_1EB0C4738 != -1)
            {
              swift_once();
            }

            v52 = sub_1A34CA250();
            __swift_project_value_buffer(v52, qword_1EB0C5698);
            v53 = v36;
            v54 = sub_1A34CA230();
            v55 = sub_1A34CD640();

            if (os_log_type_enabled(v54, v55))
            {
              v56 = swift_slowAlloc();
              v57 = swift_slowAlloc();
              *v56 = 138412290;
              *(v56 + 4) = v53;
              *v57 = v53;
              v58 = v53;
              _os_log_impl(&dword_1A31E6000, v54, v55, "unable to find pref in me card: %@", v56, 0xCu);
              sub_1A3288FDC(v57, &unk_1EB0C6C40);
              MEMORY[0x1A58F1010](v57, -1, -1);
              MEMORY[0x1A58F1010](v56, -1, -1);
            }

            v59 = sub_1A34CD0E0();
            [v66 setNilValueForKey_];

LABEL_44:
            __swift_destroy_boxed_opaque_existential_0(v71);
            return;
          }
        }

        else
        {
          sub_1A31EE354(v71, &v69);
          sub_1A31EC194(0, &qword_1EB0C57A8);
          v46 = swift_dynamicCast();
          v47 = v64;
          if ((v46 & 1) == 0)
          {
            goto LABEL_44;
          }

          v36 = *&v68[0];
          if ([*&v68[0] isValidDate])
          {
            v48 = objc_allocWithZone(MEMORY[0x1E695CEE0]);
            v36 = v36;
            v49 = sub_1A34CD0E0();
            v41 = [v48 initWithLabel:v49 value:v36];

            v42 = sub_1A3296F14(v11, v10, v41, v47);
            goto LABEL_35;
          }
        }

LABEL_36:
        __swift_destroy_boxed_opaque_existential_0(v71);
      }
    }
  }
}

char *sub_1A3298298(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C56F8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[96 * v8])
    {
      memmove(v12, v13, 96 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1A32983B8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C56D8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1A32984C4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5790);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1A32985E4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5708);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_1A32986E8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C57B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1A3298804(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C56D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1A3298930(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C56E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[88 * v8])
    {
      memmove(v12, v13, 88 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1A3298A54(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5700);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1A3298B70(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5748);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1A3298C90(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5750);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5758);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1A3298E78(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5760);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_1A3298F7C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C56F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1A32990C4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5740);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 184);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[184 * v8])
    {
      memmove(v12, v13, 184 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1A3299200(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 25;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 3);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[8 * v9])
    {
      memmove(v14, v15, 8 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 8 * v9);
  }

  return v11;
}

char *sub_1A32992FC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5730);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1A3299408(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5720);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for CNActionType(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1A32995A8(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void (*sub_1A3299784(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1A58EF310](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1A3299804;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1A329980C(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1A58EF310](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1A329A354;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1A329988C(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1A58EF310](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v4;
    return sub_1A329990C;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1A3299914(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1A58EF310](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = sub_1A34C9010();
LABEL_5:
    *v3 = v4;
    return sub_1A3299994;
  }

  __break(1u);
  return result;
}

id _s14ContactsUICore12CNUINameDropC19getFieldPreferences3forSo9CNContactCAGSg_tFZ_0(id a1)
{
  v2 = sub_1A3293728();
  if (v2)
  {
    v3 = v2;
    if (qword_1EB0C4738 != -1)
    {
      swift_once();
    }

    v4 = sub_1A34CA250();
    __swift_project_value_buffer(v4, qword_1EB0C5698);
    v5 = sub_1A34CA230();
    v6 = sub_1A34CD630();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1A31E6000, v5, v6, "Using NameDrop field pref", v7, 2u);
      MEMORY[0x1A58F1010](v7, -1, -1);
    }

    if (qword_1EB0C4740 != -1)
    {
      swift_once();
    }

    v8 = qword_1EB0C56B0;
    if (qword_1EB0C56B0 && (v9 = sub_1A34CD0E0(), v10 = [v8 BOOLForKey_], v9, v10) && a1)
    {
      a1 = a1;
      [v3 mutableCopy];
      sub_1A34CD920();
      swift_unknownObjectRelease();
      sub_1A31EC194(0, &qword_1EB0C2B00);
      if (swift_dynamicCast())
      {
        v11 = v49;
        v12 = sub_1A34CA230();
        v13 = sub_1A34CD630();
        if (os_log_type_enabled(v12, v13))
        {
          v14 = swift_slowAlloc();
          *v14 = 0;
          _os_log_impl(&dword_1A31E6000, v12, v13, "Using NameDrop pronoun pref", v14, 2u);
          MEMORY[0x1A58F1010](v14, -1, -1);
        }

        v15 = [a1 addressingGrammars];
        if (!v15)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8160);
          sub_1A34CD370();
          v15 = sub_1A34CD350();
        }

        [v49 setAddressingGrammars_];

        goto LABEL_46;
      }
    }

    else if (!a1)
    {
      return v3;
    }

    v11 = v3;
    goto LABEL_50;
  }

  v11 = [objc_allocWithZone(MEMORY[0x1E695CF18]) init];
  v16 = sub_1A3293BA8();
  if (v17)
  {
    v18 = v16;
    v19 = v17;
    if (qword_1EB0C4738 != -1)
    {
      swift_once();
    }

    v20 = sub_1A34CA250();
    __swift_project_value_buffer(v20, qword_1EB0C5698);
    v21 = sub_1A34CA230();
    v22 = sub_1A34CD630();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1A31E6000, v21, v22, "Using legacy NameDrop handle pref", v23, 2u);
      MEMORY[0x1A58F1010](v23, -1, -1);
    }

    v47 = v18;
    v48 = v19;
    sub_1A328A95C();
    if (sub_1A34CD910())
    {
      v24 = sub_1A34CD0E0();

      v25 = objc_allocWithZone(MEMORY[0x1E695CEE0]);
      v26 = sub_1A34CD0E0();
      [v25 initWithLabel:v26 value:{v24, v47, v48}];

      v27 = [v11 emailAddresses];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8160);
      v28 = sub_1A34CD370();

      MEMORY[0x1A58EEB60]();
      if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1A34CD390();
      }

      sub_1A34CD3B0();
      v29 = sub_1A34CD350();

      [v11 setEmailAddresses_];
    }

    else
    {
      v30 = objc_allocWithZone(MEMORY[0x1E695CF50]);
      v31 = sub_1A34CD0E0();

      v32 = [v30 initWithStringValue_];

      v33 = objc_allocWithZone(MEMORY[0x1E695CEE0]);
      v34 = sub_1A34CD0E0();
      [v33 initWithLabel:v34 value:v32];

      v35 = [v11 phoneNumbers];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8160);
      v36 = sub_1A34CD370();

      MEMORY[0x1A58EEB60]();
      if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1A34CD390();
      }

      sub_1A34CD3B0();
      v29 = sub_1A34CD350();

      [v11 setPhoneNumbers_];
    }
  }

  if (a1)
  {
    a1 = a1;
    v37 = [a1 givenName];
    if (!v37)
    {
      sub_1A34CD110();
      v37 = sub_1A34CD0E0();
    }

    v38 = CNIsChineseJapaneseKoreanString();

    if ((v38 & 1) == 0)
    {
      v39 = [a1 familyName];
      if (!v39)
      {
        sub_1A34CD110();
        v39 = sub_1A34CD0E0();
      }

      v40 = CNIsChineseJapaneseKoreanString();

      if (!v40)
      {
        goto LABEL_47;
      }
    }

    v41 = [a1 phoneticGivenName];
    if (!v41)
    {
      sub_1A34CD110();
      v41 = sub_1A34CD0E0();
    }

    [v11 setPhoneticGivenName_];

    v42 = [a1 phoneticMiddleName];
    if (!v42)
    {
      sub_1A34CD110();
      v42 = sub_1A34CD0E0();
    }

    [v11 setPhoneticMiddleName_];

    v15 = [a1 phoneticFamilyName];
    if (!v15)
    {
      sub_1A34CD110();
      v15 = sub_1A34CD0E0();
    }

    [v11 setPhoneticFamilyName_];
LABEL_46:

LABEL_47:
LABEL_50:
    v43 = qword_1EB0C4748;
    v44 = a1;
    if (v43 != -1)
    {
      swift_once();
    }

    v45 = sub_1A3293C98(v11, v44, qword_1EB0C56B8);

    return v45;
  }

  return v11;
}

unint64_t sub_1A329A208()
{
  result = qword_1EB0C0270;
  if (!qword_1EB0C0270)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C7380);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0270);
  }

  return result;
}

unint64_t sub_1A329A290()
{
  result = qword_1EB0C02F8;
  if (!qword_1EB0C02F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C02F8);
  }

  return result;
}

uint64_t sub_1A329A2E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7690);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A329A358()
{
  v0 = sub_1A34CA250();
  __swift_allocate_value_buffer(v0, qword_1EB0EDA70);
  __swift_project_value_buffer(v0, qword_1EB0EDA70);
  return sub_1A34CA240();
}