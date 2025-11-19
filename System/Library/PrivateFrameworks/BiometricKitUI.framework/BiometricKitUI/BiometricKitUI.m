uint64_t sub_241B0C400()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_241B0C438()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_241B0C478()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_241B0C748(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *_notificationRegistrationDebugErrorString(int a1)
{
  if (a1 <= 3)
  {
    if (a1 <= 1)
    {
      if (!a1)
      {
        return @"OK";
      }

      if (a1 == 1)
      {
        return @"INVALID_NAME";
      }

      return @"UNKNOWN";
    }

    if (a1 == 2)
    {
      return @"INVALID_TOKEN";
    }

    else
    {
      return @"INVALID_PORT";
    }
  }

  else
  {
    if (a1 > 5)
    {
      switch(a1)
      {
        case 6:
          return @"INVALID_REQUEST";
        case 7:
          return @"NOT_AUTHORIZED";
        case 1000000:
          return @"FAILED";
      }

      return @"UNKNOWN";
    }

    if (a1 == 4)
    {
      return @"INVALID_FILE";
    }

    else
    {
      return @"INVALID_SIGNAL";
    }
  }
}

void sub_241B0CD48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_241B0CF6C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_241B0E954(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_241B0F12C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_241B0F4FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_241B1316C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_241B14154(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_241B17A60(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    v10 = *(v9 + 528);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [BKUICurvesView parser:a9 didStartElement:v10 namespaceURI:? qualifiedName:? attributes:?];
    }

    objc_end_catch();
    JUMPOUT(0x241B17A18);
  }

  _Unwind_Resume(a1);
}

void sub_241B1BB50(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 96));
  _Unwind_Resume(a1);
}

id getBYFlowSkipControllerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getBYFlowSkipControllerClass_softClass;
  v7 = getBYFlowSkipControllerClass_softClass;
  if (!getBYFlowSkipControllerClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getBYFlowSkipControllerClass_block_invoke;
    v3[3] = &unk_278D09C88;
    v3[4] = &v4;
    __getBYFlowSkipControllerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_241B1BDBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getBYFlowSkipIdentifierFaceID()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getBYFlowSkipIdentifierFaceIDSymbolLoc_ptr;
  v8 = getBYFlowSkipIdentifierFaceIDSymbolLoc_ptr;
  if (!getBYFlowSkipIdentifierFaceIDSymbolLoc_ptr)
  {
    v1 = SetupAssistantLibrary();
    v6[3] = dlsym(v1, "BYFlowSkipIdentifierFaceID");
    getBYFlowSkipIdentifierFaceIDSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    BYFlowSkipIdentifierFaceID_cold_1 = getBYFlowSkipIdentifierFaceID_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(BYFlowSkipIdentifierFaceID_cold_1);
  }

  v2 = *v0;

  return v2;
}

void sub_241B1CA58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, id a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, id a44)
{
  objc_destroyWeak(&a39);
  objc_destroyWeak(&a44);
  objc_destroyWeak((v44 - 160));
  objc_destroyWeak((v44 - 152));
  _Unwind_Resume(a1);
}

void sub_241B1D5D4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 80));
  _Unwind_Resume(a1);
}

void sub_241B1E2B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class __getBYFlowSkipControllerClass_block_invoke(uint64_t a1)
{
  SetupAssistantLibrary();
  result = objc_getClass("BYFlowSkipController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getBYFlowSkipControllerClass_block_invoke_cold_1();
  }

  getBYFlowSkipControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t SetupAssistantLibrary()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!SetupAssistantLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __SetupAssistantLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278D09CA8;
    v6 = 0;
    SetupAssistantLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = SetupAssistantLibraryCore_frameworkLibrary;
  v1 = v4[0];
  if (!SetupAssistantLibraryCore_frameworkLibrary)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x277D85DE8];
  return v0;
}

uint64_t __SetupAssistantLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  SetupAssistantLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void *__getBYFlowSkipIdentifierFaceIDSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SetupAssistantLibrary();
  result = dlsym(v2, "BYFlowSkipIdentifierFaceID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBYFlowSkipIdentifierFaceIDSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id _BKUILoggingFacility()
{
  if (_BKUILoggingFacility_onceToken != -1)
  {
    _BKUILoggingFacility_cold_1();
  }

  v1 = _BKUILoggingFacility_oslog;

  return v1;
}

void sub_241B23590(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 128));
  objc_destroyWeak((v2 + 64));
  objc_destroyWeak((v3 - 144));
  _Unwind_Resume(a1);
}

void sub_241B24010(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 80));
  _Unwind_Resume(a1);
}

void sub_241B24524(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class initBKDevice()
{
  if (BiometricKitLibrary_sOnce != -1)
  {
    initBKDevice_cold_1();
  }

  result = objc_getClass("BKDevice");
  classBKDevice = result;
  getBKDeviceClass_0 = BKDeviceFunction;
  return result;
}

void *__BiometricKitLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/BiometricKit.framework/BiometricKit", 2);
  BiometricKitLibrary_sLib = result;
  return result;
}

Class initBKDeviceDescriptor()
{
  if (BiometricKitLibrary_sOnce != -1)
  {
    initBKDevice_cold_1();
  }

  result = objc_getClass("BKDeviceDescriptor");
  classBKDeviceDescriptor = result;
  getBKDeviceDescriptorClass_0 = BKDeviceDescriptorFunction;
  return result;
}

Class initSFClient()
{
  if (SharingLibrary_sOnce != -1)
  {
    initSFClient_cold_1();
  }

  result = objc_getClass("SFClient");
  classSFClient = result;
  getSFClientClass = SFClientFunction;
  return result;
}

void *__SharingLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/Sharing.framework/Sharing", 2);
  SharingLibrary_sLib = result;
  return result;
}

Class initLAContext()
{
  if (LocalAuthenticationLibrary_sOnce != -1)
  {
    initLAContext_cold_1();
  }

  result = objc_getClass("LAContext");
  classLAContext = result;
  getLAContextClass = LAContextFunction;
  return result;
}

void *__LocalAuthenticationLibrary_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/LocalAuthentication.framework/LocalAuthentication", 2);
  LocalAuthenticationLibrary_sLib = result;
  return result;
}

void OUTLINED_FUNCTION_0_3(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void OUTLINED_FUNCTION_3(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 0xCu);
}

void sub_241B30B44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t _initalInterfaceOrientationFor(int a1, uint64_t a2)
{
  v4 = [BKUIUtils activeInterfaceOrientationForView:0];
  result = [MEMORY[0x277D75D28] bkui_reverseLeftRight:v4];
  if (a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = result;
  }

  if (a1)
  {
    return v6;
  }

  return result;
}

void _layoutNavigationBarCopy(void *a1, void *a2)
{
  v5 = a1;
  [a2 bounds];
  v4 = v3;
  [v5 bounds];
  [v5 setFrame:{0.0, 10.0, v4}];
}

void sub_241B31898(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_241B324D8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 176));
  _Unwind_Resume(a1);
}

void sub_241B329B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id getBKDeviceClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getBKDeviceClass_softClass;
  v7 = getBKDeviceClass_softClass;
  if (!getBKDeviceClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getBKDeviceClass_block_invoke;
    v3[3] = &unk_278D09C88;
    v3[4] = &v4;
    __getBKDeviceClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_241B33C3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getBKDeviceDescriptorClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getBKDeviceDescriptorClass_softClass;
  v7 = getBKDeviceDescriptorClass_softClass;
  if (!getBKDeviceDescriptorClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getBKDeviceDescriptorClass_block_invoke;
    v3[3] = &unk_278D09C88;
    v3[4] = &v4;
    __getBKDeviceDescriptorClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_241B33D1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getBKDeviceClass_block_invoke(uint64_t a1)
{
  BiometricKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("BKDevice");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getBKDeviceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getBKDeviceClass_block_invoke_cold_1();
    BiometricKitLibrary();
  }
}

void BiometricKitLibrary()
{
  v5 = *MEMORY[0x277D85DE8];
  v2[0] = 0;
  if (!BiometricKitLibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x277D85DD0];
    v2[2] = 3221225472;
    v2[3] = __BiometricKitLibraryCore_block_invoke;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_278D0A158;
    v4 = 0;
    BiometricKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v2[0];
  if (!BiometricKitLibraryCore_frameworkLibrary)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v2[0])
  {
LABEL_7:
    free(v0);
  }

  v1 = *MEMORY[0x277D85DE8];
}

uint64_t __BiometricKitLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  BiometricKitLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

BKUIFingerPrintPosedVideoPlayerView *__getBKDeviceDescriptorClass_block_invoke(uint64_t a1)
{
  BiometricKitLibrary();
  result = objc_getClass("BKDeviceDescriptor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getBKDeviceDescriptorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getBKDeviceDescriptorClass_block_invoke_cold_1();
    return [(BKUIFingerPrintPosedVideoPlayerView *)v3 initWithAssetName:v4 subdirectory:v5, v6];
  }

  return result;
}

void sub_241B363A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_241B36854(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_241B37738(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_241B37D60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, id location)
{
  objc_destroyWeak(&a34);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_241B38F70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_241B39168(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getBKDeviceClass_block_invoke_0(uint64_t a1)
{
  BiometricKitLibrary_0();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("BKDevice");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getBKDeviceClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getBKDeviceClass_block_invoke_cold_1();
    BiometricKitLibrary_0();
  }
}

void BiometricKitLibrary_0()
{
  v5 = *MEMORY[0x277D85DE8];
  v2[0] = 0;
  if (!BiometricKitLibraryCore_frameworkLibrary_0)
  {
    v2[1] = MEMORY[0x277D85DD0];
    v2[2] = 3221225472;
    v2[3] = __BiometricKitLibraryCore_block_invoke_0;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_278D0A258;
    v4 = 0;
    BiometricKitLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  v0 = v2[0];
  if (!BiometricKitLibraryCore_frameworkLibrary_0)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v2[0])
  {
LABEL_7:
    free(v0);
  }

  v1 = *MEMORY[0x277D85DE8];
}

uint64_t __BiometricKitLibraryCore_block_invoke_0(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  BiometricKitLibraryCore_frameworkLibrary_0 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getBKDeviceDescriptorClass_block_invoke_0(uint64_t a1)
{
  BiometricKitLibrary_0();
  result = objc_getClass("BKDeviceDescriptor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getBKDeviceDescriptorClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getBKDeviceDescriptorClass_block_invoke_cold_1();
    return __getBMStreamsClass_block_invoke(v3);
  }

  return result;
}

Class __getBMStreamsClass_block_invoke(uint64_t a1)
{
  BiomeStreamsLibrary();
  result = objc_getClass("BMStreams");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getBMStreamsClass_block_invoke_cold_1();
  }

  getBMStreamsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void BiomeStreamsLibrary()
{
  v5 = *MEMORY[0x277D85DE8];
  v2[0] = 0;
  if (!BiomeStreamsLibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x277D85DD0];
    v2[2] = 3221225472;
    v2[3] = __BiomeStreamsLibraryCore_block_invoke;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_278D0A270;
    v4 = 0;
    BiomeStreamsLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v2[0];
  if (!BiomeStreamsLibraryCore_frameworkLibrary)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v2[0])
  {
LABEL_7:
    free(v0);
  }

  v1 = *MEMORY[0x277D85DE8];
}

uint64_t __BiomeStreamsLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  BiomeStreamsLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getBMDiscoverabilitySignalEventClass_block_invoke(uint64_t a1)
{
  BiomeStreamsLibrary();
  result = objc_getClass("BMDiscoverabilitySignalEvent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getBMDiscoverabilitySignalEventClass_block_invoke_cold_1();
  }

  getBMDiscoverabilitySignalEventClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

double timingEaseInOut_block_invoke(double a1)
{
  v2 = _QUINTIC_GENERATOR(-2.0, 3.0, 0.0);
  v3 = v2[2](a1);

  return v3;
}

id _QUINTIC_GENERATOR(double a1, double a2, double a3)
{
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = ___QUINTIC_GENERATOR_block_invoke;
  aBlock[3] = &__block_descriptor_72_e8_d16__0d8l;
  aBlock[4] = 0;
  aBlock[5] = 0;
  *&aBlock[6] = a1;
  *&aBlock[7] = a2;
  *&aBlock[8] = a3;
  v3 = _Block_copy(aBlock);
  v4 = _Block_copy(v3);

  return v4;
}

double timingEaseOut_block_invoke_2(double a1)
{
  v2 = _QUINTIC_GENERATOR(1.0, -3.0, 3.0);
  v3 = v2[2](a1);

  return v3;
}

double timingEaseIn_block_invoke_3(double a1)
{
  v2 = _QUINTIC_GENERATOR(1.0, 0.0, 0.0);
  v3 = v2[2](a1);

  return v3;
}

void sub_241B3A81C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_241B3AE1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x12u);
}

double _radiansForOrientations(uint64_t a1, uint64_t a2)
{
  result = 0.0;
  if (a2 > 2)
  {
    if (a2 == 3)
    {
      v3 = a1 - 1;
      if ((a1 - 1) >= 4)
      {
        return result;
      }

      v4 = &unk_241B72C30;
      return v4[v3];
    }

    if (a2 == 4)
    {
      v3 = a1 - 1;
      if ((a1 - 1) < 3)
      {
        v4 = &unk_241B72C18;
        return v4[v3];
      }
    }
  }

  else
  {
    if (a2 == 1)
    {
      v3 = a1 - 2;
      if ((a1 - 2) >= 3)
      {
        return result;
      }

      v4 = &unk_241B72C00;
      return v4[v3];
    }

    if (a2 == 2)
    {
      v3 = a1 - 1;
      if ((a1 - 1) < 4)
      {
        v4 = &unk_241B72C50;
        return v4[v3];
      }
    }
  }

  return result;
}

double _UIRotationRadiansForDeviceOrientation(uint64_t a1)
{
  result = 0.0;
  if ((a1 - 2) <= 2)
  {
    return dbl_241B72C70[a1 - 2];
  }

  return result;
}

__CFString *_deviceOrientationToString(unint64_t a1)
{
  if (a1 > 6)
  {
    return @"UIDeviceOrientationPortrait";
  }

  else
  {
    return off_278D0A398[a1];
  }
}

double _landscapeRightRadiansForOrientations(uint64_t a1)
{
  result = 0.0;
  if ((a1 - 1) <= 3)
  {
    return dbl_241B72CA8[a1 - 1];
  }

  return result;
}

void sub_241B3E9CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

float OUTLINED_FUNCTION_0_5()
{

  LODWORD(result) = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  return result;
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_278D098C8, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<InstanceInfo>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x333333333333334)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

void sub_241B46988(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getLAUIPhysicalButtonViewClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!LocalAuthenticationPrivateUILibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __LocalAuthenticationPrivateUILibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_278D0A448;
    v7 = 0;
    LocalAuthenticationPrivateUILibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (LocalAuthenticationPrivateUILibraryCore_frameworkLibrary)
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
  result = objc_getClass("LAUIPhysicalButtonView");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getLAUIPhysicalButtonViewClass_block_invoke_cold_1();
  }

  getLAUIPhysicalButtonViewClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __LocalAuthenticationPrivateUILibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  LocalAuthenticationPrivateUILibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_241B478C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_241B490FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_241B4A9E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_241B4AEE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_241B4F9F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_241B50F18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_241B51D8C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_241B52760(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location)
{
  objc_destroyWeak((v27 + 48));
  objc_destroyWeak((v26 + 40));
  objc_destroyWeak(&location);
  _Block_object_dispose((v28 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_241B55F68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_241B56BEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_241B5B764(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __DisplayAndBrightnessSettingsLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  DisplayAndBrightnessSettingsLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void *__getMTLCreateSystemDefaultDeviceSymbolLoc_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!MetalLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __MetalLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_278D0A940;
    v8 = 0;
    MetalLibraryCore_frameworkLibrary = _sl_dlopen();
    v3 = v6[0];
    v2 = MetalLibraryCore_frameworkLibrary;
    if (MetalLibraryCore_frameworkLibrary)
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

  v2 = MetalLibraryCore_frameworkLibrary;
LABEL_5:
  result = dlsym(v2, "MTLCreateSystemDefaultDevice");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMTLCreateSystemDefaultDeviceSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __MetalLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MetalLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_241B60B1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_6(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t sub_241B667A4()
{
  swift_beginAccess();
  v0 = qword_27EC67858;

  return v0;
}

uint64_t sub_241B667F8(uint64_t a1, void *a2)
{
  swift_beginAccess();
  qword_27EC67858 = a1;
  off_27EC67860 = a2;
}

uint64_t sub_241B668B0()
{
  v0 = sub_241B6AEF0();
  __swift_allocate_value_buffer(v0, qword_27EC67BC8);
  __swift_project_value_buffer(v0, qword_27EC67BC8);
  swift_beginAccess();

  return sub_241B6AEE0();
}

uint64_t sub_241B66954()
{
  if (qword_27EC67A08 != -1)
  {
    swift_once();
  }

  v0 = sub_241B6AEF0();

  return __swift_project_value_buffer(v0, qword_27EC67BC8);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_241B669F0@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EC67A08 != -1)
  {
    swift_once();
  }

  v2 = sub_241B6AEF0();
  v3 = __swift_project_value_buffer(v2, qword_27EC67BC8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

id sub_241B66B18()
{
  v0 = [objc_opt_self() weakObjectsHashTable];

  return v0;
}

uint64_t sub_241B66B58()
{
  v8 = sub_241B6AF90();
  v0 = *(v8 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20]();
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(*(sub_241B6AFC0() - 8) + 64);
  MEMORY[0x28223BE20]();
  v5 = *(*(sub_241B6AF30() - 8) + 64);
  MEMORY[0x28223BE20]();
  v7[1] = sub_241B673A4(0, &qword_27EC67868, 0x277D85C90);
  sub_241B6AF20();
  v9 = MEMORY[0x277D84F90];
  sub_241B67308(&qword_27EC67870, MEMORY[0x277D852D8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC67878, &qword_241B72FD0);
  sub_241B67350(&qword_27EC67880, &qword_27EC67878, &qword_241B72FD0);
  sub_241B6AFE0();
  (*(v0 + 104))(v3, *MEMORY[0x277D85268], v8);
  return sub_241B6AFD0();
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_241B66E40(int a1, int a2, uint64_t (*a3)(), uint64_t a4)
{
  v5 = v4;
  v10 = sub_241B6AF00();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20]();
  v14 = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(*(sub_241B6AF30() - 8) + 64);
  result = MEMORY[0x28223BE20]();
  v19 = v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = &v5[OBJC_IVAR____TtC14BiometricKitUI35EnrollStateDispatchWorkItemsManager_targetState];
  if ((v5[OBJC_IVAR____TtC14BiometricKitUI35EnrollStateDispatchWorkItemsManager_targetState + 4] & 1) != 0 || *v20 != a1 || (v5[OBJC_IVAR____TtC14BiometricKitUI35EnrollStateDispatchWorkItemsManager_targetStartState + 4] & 1) != 0 || *&v5[OBJC_IVAR____TtC14BiometricKitUI35EnrollStateDispatchWorkItemsManager_targetStartState] != a2)
  {
    *v20 = a1;
    v20[4] = 0;
    v21 = &v5[OBJC_IVAR____TtC14BiometricKitUI35EnrollStateDispatchWorkItemsManager_targetStartState];
    *v21 = a2;
    v21[4] = 0;
    v33 = v17;
    v34 = result;
    sub_241B6AF20();
    v40 = a3;
    v41 = a4;
    aBlock = MEMORY[0x277D85DD0];
    v37 = 1107296256;
    v31[3] = &v38;
    v32 = v11;
    v38 = sub_241B672AC;
    v39 = &block_descriptor;
    _Block_copy(&aBlock);
    v35 = MEMORY[0x277D84F90];
    v31[2] = sub_241B67308(&qword_27EC67898, MEMORY[0x277D85198]);

    v31[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC678A0, &qword_241B72FD8);
    sub_241B67350(&qword_27EC678A8, &qword_27EC678A0, &qword_241B72FD8);
    sub_241B6AFE0();
    v22 = sub_241B6AF70();
    v23 = *(v22 + 48);
    v24 = *(v22 + 52);
    swift_allocObject();
    sub_241B6AF40();

    sub_241B673A4(0, &qword_27EC678B0, 0x277D85C78);
    v25 = sub_241B6AFA0();
    v26 = swift_allocObject();
    swift_weakInit();
    v27 = swift_allocObject();
    *(v27 + 16) = v5;
    *(v27 + 24) = v26;
    v40 = sub_241B673EC;
    v41 = v27;
    aBlock = MEMORY[0x277D85DD0];
    v37 = 1107296256;
    v38 = sub_241B672AC;
    v39 = &block_descriptor_6;
    v28 = _Block_copy(&aBlock);
    v29 = v5;

    sub_241B6AF10();
    v35 = MEMORY[0x277D84F90];
    sub_241B6AFE0();
    sub_241B6AF60();
    _Block_release(v28);

    (*(v32 + 8))(v14, v10);
    (*(v33 + 8))(v19, v34);

    v30 = *&v29[OBJC_IVAR____TtC14BiometricKitUI35EnrollStateDispatchWorkItemsManager_stateQueue];
    sub_241B6AFB0();
  }

  return result;
}

uint64_t sub_241B672AC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_241B67308(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_241B67350(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_241B673A4(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_241B673EC()
{
  v1 = *(v0 + 24);
  v2 = *(*(v0 + 16) + OBJC_IVAR____TtC14BiometricKitUI35EnrollStateDispatchWorkItemsManager_pendingOperations);
  swift_beginAccess();
  v3 = [v2 containsObject_];

  if (v3)
  {
    swift_beginAccess();
    [v2 removeObject_];
  }

  return result;
}

id sub_241B67550()
{
  v1 = v0 + OBJC_IVAR____TtC14BiometricKitUI35EnrollStateDispatchWorkItemsManager_targetState;
  *v1 = 0;
  *(v1 + 4) = 1;
  v2 = v0 + OBJC_IVAR____TtC14BiometricKitUI35EnrollStateDispatchWorkItemsManager_targetStartState;
  *v2 = 0;
  *(v2 + 4) = 1;
  v3 = *(v0 + OBJC_IVAR____TtC14BiometricKitUI35EnrollStateDispatchWorkItemsManager_pendingOperations);
  v4 = [v3 allObjects];
  sub_241B6AF70();
  v5 = sub_241B6AF80();

  if (v5 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_241B6B000())
  {
    v7 = 0;
    while ((v5 & 0xC000000000000001) != 0)
    {
      MEMORY[0x245CF7E00](v7, v5);
      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_11;
      }

LABEL_7:
      sub_241B6AF50();

      ++v7;
      if (v9 == i)
      {
        goto LABEL_14;
      }
    }

    if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

    v8 = *(v5 + 8 * v7 + 32);

    v9 = v7 + 1;
    if (!__OFADD__(v7, 1))
    {
      goto LABEL_7;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:

  return [v3 removeAllObjects];
}

id sub_241B676FC()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_241B67730()
{
  v1 = sub_241B6AF90();
  v14 = *(v1 - 8);
  v15 = v1;
  v2 = *(v14 + 64);
  MEMORY[0x28223BE20]();
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(*(sub_241B6AFC0() - 8) + 64);
  MEMORY[0x28223BE20]();
  v6 = *(*(sub_241B6AF30() - 8) + 64);
  MEMORY[0x28223BE20]();
  v7 = &v0[OBJC_IVAR____TtC14BiometricKitUI35EnrollStateDispatchWorkItemsManager_targetState];
  *v7 = 0;
  v7[4] = 1;
  v8 = &v0[OBJC_IVAR____TtC14BiometricKitUI35EnrollStateDispatchWorkItemsManager_targetStartState];
  *v8 = 0;
  v8[4] = 1;
  v9 = OBJC_IVAR____TtC14BiometricKitUI35EnrollStateDispatchWorkItemsManager_pendingOperations;
  *&v0[v9] = [objc_opt_self() weakObjectsHashTable];
  v13 = OBJC_IVAR____TtC14BiometricKitUI35EnrollStateDispatchWorkItemsManager_stateQueue;
  v12[1] = sub_241B673A4(0, &qword_27EC67868, 0x277D85C90);
  sub_241B6AF20();
  v17 = MEMORY[0x277D84F90];
  sub_241B67308(&qword_27EC67870, MEMORY[0x277D852D8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC67878, &qword_241B72FD0);
  sub_241B67350(&qword_27EC67880, &qword_27EC67878, &qword_241B72FD0);
  sub_241B6AFE0();
  (*(v14 + 104))(v4, *MEMORY[0x277D85268], v15);
  *&v0[v13] = sub_241B6AFD0();
  v10 = type metadata accessor for EnrollStateDispatchWorkItemsManager();
  v16.receiver = v0;
  v16.super_class = v10;
  return objc_msgSendSuper2(&v16, sel_init);
}

id sub_241B67A30()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EnrollStateDispatchWorkItemsManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void type metadata accessor for BKUIPearlEnrollState()
{
  if (!qword_27EC678C8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27EC678C8);
    }
  }
}

_DWORD *sub_241B67B38@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

id sub_241B67B94()
{
  type metadata accessor for ResourceBundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_27EC67B18 = result;
  return result;
}

uint64_t sub_241B67BE8()
{
  v0 = sub_241B6AED0();
  __swift_allocate_value_buffer(v0, qword_27EC67BE0);
  __swift_project_value_buffer(v0, qword_27EC67BE0);
  if (qword_27EC67B10 != -1)
  {
    swift_once();
  }

  v1 = qword_27EC67B18;
  return sub_241B6AEC0();
}

uint64_t sub_241B67E10()
{
  v0 = sub_241B6AED0();
  __swift_allocate_value_buffer(v0, qword_27EC67C40);
  __swift_project_value_buffer(v0, qword_27EC67C40);
  if (qword_27EC67B10 != -1)
  {
    swift_once();
  }

  v1 = qword_27EC67B18;
  return sub_241B6AEC0();
}

uint64_t sub_241B67F00()
{
  v0 = sub_241B6AED0();
  __swift_allocate_value_buffer(v0, qword_27EC67C58);
  __swift_project_value_buffer(v0, qword_27EC67C58);
  if (qword_27EC67B10 != -1)
  {
    swift_once();
  }

  v1 = qword_27EC67B18;
  return sub_241B6AEC0();
}

uint64_t sub_241B67FF0()
{
  v0 = sub_241B6AED0();
  __swift_allocate_value_buffer(v0, qword_27EC67C70);
  __swift_project_value_buffer(v0, qword_27EC67C70);
  if (qword_27EC67B10 != -1)
  {
    swift_once();
  }

  v1 = qword_27EC67B18;
  return sub_241B6AEC0();
}

uint64_t sub_241B68324()
{
  v0 = sub_241B6AED0();
  __swift_allocate_value_buffer(v0, qword_27EC67D00);
  __swift_project_value_buffer(v0, qword_27EC67D00);
  if (qword_27EC67B10 != -1)
  {
    swift_once();
  }

  v1 = qword_27EC67B18;
  return sub_241B6AEC0();
}

uint64_t sub_241B68488()
{
  v0 = sub_241B6AED0();
  __swift_allocate_value_buffer(v0, qword_27EC67D30);
  __swift_project_value_buffer(v0, qword_27EC67D30);
  if (qword_27EC67B10 != -1)
  {
    swift_once();
  }

  v1 = qword_27EC67B18;
  return sub_241B6AEC0();
}

uint64_t sub_241B686E8(uint64_t a1, uint64_t *a2)
{
  v3 = sub_241B6AED0();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  if (qword_27EC67B10 != -1)
  {
    swift_once();
  }

  v4 = qword_27EC67B18;
  return sub_241B6AEC0();
}

uint64_t sub_241B687D4()
{
  v0 = sub_241B6AED0();
  __swift_allocate_value_buffer(v0, qword_27EC67DA8);
  __swift_project_value_buffer(v0, qword_27EC67DA8);
  if (qword_27EC67B10 != -1)
  {
    swift_once();
  }

  v1 = qword_27EC67B18;
  return sub_241B6AEC0();
}

uint64_t sub_241B688A0(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = sub_241B6AED0();

  return __swift_project_value_buffer(v3, a2);
}

uint64_t sub_241B68918@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_241B6AED0();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t getBYFlowSkipIdentifierFaceID_cold_1()
{
  dlerror();
  v0 = abort_report_np();
  return [BKUIPearlEnrollViewController(ButtonActionWithNavigation) updatePeriocularEnrollmentSettings:v0];
}

CAFrameRateRange CAFrameRateRangeMake(float minimum, float maximum, float preferred)
{
  MEMORY[0x282128850](minimum, maximum, preferred);
  result.preferred = v5;
  result.maximum = v4;
  result.minimum = v3;
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

__double2 __sincos_stret(double a1)
{
  MEMORY[0x2822043C0](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}

__float2 __sincosf_stret(float a1)
{
  MEMORY[0x2822043C8](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}