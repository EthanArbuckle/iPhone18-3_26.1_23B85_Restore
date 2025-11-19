uint64_t sub_248C80BB0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_248C80BF4()
{
  _Block_release(*(v0 + 16));
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_248C80C48()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_248C80CB8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECB468, &qword_248CDEB60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_248C80D20()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EECB468, &qword_248CDEB60);
  sub_248CCBF9C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_248C80D98(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_248CD43CC();
  sub_248CCFA08();
  return swift_getWitnessTable();
}

uint64_t sub_248C80DFC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_248C80E74()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_248C80EB0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_248C81E68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_248C82298(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_248C8269C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 104));
  _Unwind_Resume(a1);
}

void sub_248C82AB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_248C82FA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_248C8326C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_248C8465C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_248C861A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_248C86730(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_248C88BAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_248C894B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_248C8BDE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_248C8BFD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_248C8C290(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_248C8D348(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getAAUIAuthKitPasswordChangeHookClass_block_invoke(uint64_t a1)
{
  AppleAccountUILibrary();
  result = objc_getClass("AAUIAuthKitPasswordChangeHook");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAAUIAuthKitPasswordChangeHookClass_block_invoke_cold_1();
  }

  getAAUIAuthKitPasswordChangeHookClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void AppleAccountUILibrary()
{
  v4 = *MEMORY[0x277D85DE8];
  v1[0] = 0;
  if (!AppleAccountUILibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x277D85DD0];
    v1[2] = 3221225472;
    v1[3] = __AppleAccountUILibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_278F75450;
    v3 = 0;
    AppleAccountUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!AppleAccountUILibraryCore_frameworkLibrary)
  {
    AppleAccountUILibrary_cold_1(v1);
  }

  if (v1[0])
  {
    free(v1[0]);
  }

  v0 = *MEMORY[0x277D85DE8];
}

uint64_t __AppleAccountUILibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AppleAccountUILibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getAAUIGrandSlamRemoteUIPresenterClass_block_invoke(uint64_t a1)
{
  AppleAccountUILibrary();
  result = objc_getClass("AAUIGrandSlamRemoteUIPresenter");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAAUIGrandSlamRemoteUIPresenterClass_block_invoke_cold_1();
  }

  getAAUIGrandSlamRemoteUIPresenterClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_248C8E5D8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_248C91914(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getFMDFMIPManagerClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!FindMyDeviceLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __FindMyDeviceLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278F75608;
    v6 = 0;
    FindMyDeviceLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!FindMyDeviceLibraryCore_frameworkLibrary)
  {
    __getFMDFMIPManagerClass_block_invoke_cold_2(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = objc_getClass("FMDFMIPManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getFMDFMIPManagerClass_block_invoke_cold_1();
  }

  getFMDFMIPManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __FindMyDeviceLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  FindMyDeviceLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_248C93A10(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_248C945B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_248C94C34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getBFFPasscodeViewClass_block_invoke(uint64_t a1)
{
  SetupAssistantUILibrary();
  result = objc_getClass("BFFPasscodeView");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getBFFPasscodeViewClass_block_invoke_cold_1();
  }

  getBFFPasscodeViewClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void SetupAssistantUILibrary()
{
  v4 = *MEMORY[0x277D85DE8];
  v1[0] = 0;
  if (!SetupAssistantUILibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x277D85DD0];
    v1[2] = 3221225472;
    v1[3] = __SetupAssistantUILibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_278F75828;
    v3 = 0;
    SetupAssistantUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!SetupAssistantUILibraryCore_frameworkLibrary)
  {
    SetupAssistantUILibrary_cold_1(v1);
  }

  if (v1[0])
  {
    free(v1[0]);
  }

  v0 = *MEMORY[0x277D85DE8];
}

uint64_t __SetupAssistantUILibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  SetupAssistantUILibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getBFFSimplePasscodeInputViewClass_block_invoke(uint64_t a1)
{
  SetupAssistantUILibrary();
  result = objc_getClass("BFFSimplePasscodeInputView");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getBFFSimplePasscodeInputViewClass_block_invoke_cold_1();
  }

  getBFFSimplePasscodeInputViewClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getBFFComplexPasscodeInputViewClass_block_invoke(uint64_t a1)
{
  SetupAssistantUILibrary();
  result = objc_getClass("BFFComplexPasscodeInputView");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getBFFComplexPasscodeInputViewClass_block_invoke_cold_1();
  }

  getBFFComplexPasscodeInputViewClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getBKUIPearlEnrollControllerClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!BiometricKitUILibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __BiometricKitUILibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278F75A58;
    v6 = 0;
    BiometricKitUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!BiometricKitUILibraryCore_frameworkLibrary)
  {
    __getBKUIPearlEnrollControllerClass_block_invoke_cold_2(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = objc_getClass("BKUIPearlEnrollController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getBKUIPearlEnrollControllerClass_block_invoke_cold_1();
  }

  getBKUIPearlEnrollControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __BiometricKitUILibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  BiometricKitUILibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_248C9F428(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 104));
  _Unwind_Resume(a1);
}

id DSUIBundle()
{
  if (DSUIBundle_onceToken != -1)
  {
    DSUIBundle_cold_1();
  }

  v1 = DSUIBundle__Bundle;

  return v1;
}

uint64_t __DSUIBundle_block_invoke()
{
  v0 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v1 = DSUIBundle__Bundle;
  DSUIBundle__Bundle = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

id DSUILocStringForKey(void *a1)
{
  v1 = a1;
  v2 = DSUIBundle();
  v3 = [v2 localizedStringForKey:v1 value:v1 table:@"DigitalSeparationUI"];

  return v3;
}

id DSUIDTOLocStringForKey(void *a1)
{
  v1 = a1;
  v2 = DSUIBundle();
  v3 = [v2 localizedStringForKey:v1 value:v1 table:@"DigitalSeparationUI_DTO"];

  return v3;
}

id DSUILocStringForKeyInTable(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = DSUIBundle();
  v6 = [v5 localizedStringForKey:v4 value:v4 table:v3];

  return v6;
}

id DSUILocAttributedStringForKey(void *a1)
{
  v1 = a1;
  v2 = DSUIBundle();
  v3 = [v2 localizedAttributedStringForKey:v1 value:v1 table:@"DigitalSeparationUI"];

  return v3;
}

id sharedWorkQueue()
{
  if (sharedWorkQueue_onceToken != -1)
  {
    sharedWorkQueue_cold_1();
  }

  v1 = sharedWorkQueue__sharedWorkQueue;

  return v1;
}

uint64_t __sharedWorkQueue_block_invoke()
{
  v0 = dispatch_queue_create("DSUtilitiesBackgroundQueue", 0);
  v1 = sharedWorkQueue__sharedWorkQueue;
  sharedWorkQueue__sharedWorkQueue = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void sub_248CA154C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_248CA17BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getBKUIPeriocularEnableSplashViewControllerClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!BiometricKitUILibraryCore_frameworkLibrary_0)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __BiometricKitUILibraryCore_block_invoke_0;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278F75AE8;
    v6 = 0;
    BiometricKitUILibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  if (!BiometricKitUILibraryCore_frameworkLibrary_0)
  {
    __getBKUIPearlEnrollControllerClass_block_invoke_cold_2(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = objc_getClass("BKUIPeriocularEnableSplashViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getBKUIPeriocularEnableSplashViewControllerClass_block_invoke_cold_1();
  }

  getBKUIPeriocularEnableSplashViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __BiometricKitUILibraryCore_block_invoke_0(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  BiometricKitUILibraryCore_frameworkLibrary_0 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getCIDVUIBiometricBindingFlowManagerClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!CoreIDVUILibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __CoreIDVUILibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278F75B00;
    v6 = 0;
    CoreIDVUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!CoreIDVUILibraryCore_frameworkLibrary)
  {
    __getCIDVUIBiometricBindingFlowManagerClass_block_invoke_cold_2(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = objc_getClass("CIDVUIBiometricBindingFlowManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCIDVUIBiometricBindingFlowManagerClass_block_invoke_cold_1();
  }

  getCIDVUIBiometricBindingFlowManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __CoreIDVUILibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CoreIDVUILibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_248CA4224(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getBiometricKitUIClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!BiometricKitUILibraryCore_frameworkLibrary_1)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __BiometricKitUILibraryCore_block_invoke_1;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278F75B68;
    v6 = 0;
    BiometricKitUILibraryCore_frameworkLibrary_1 = _sl_dlopen();
  }

  if (!BiometricKitUILibraryCore_frameworkLibrary_1)
  {
    __getBiometricKitUIClass_block_invoke_cold_2(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = objc_getClass("BiometricKitUI");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getBiometricKitUIClass_block_invoke_cold_1();
  }

  getBiometricKitUIClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __BiometricKitUILibraryCore_block_invoke_1(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  BiometricKitUILibraryCore_frameworkLibrary_1 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getPABSBiometricControllerClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!PasscodeAndBiometricsSettingsLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __PasscodeAndBiometricsSettingsLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278F75B80;
    v6 = 0;
    PasscodeAndBiometricsSettingsLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!PasscodeAndBiometricsSettingsLibraryCore_frameworkLibrary)
  {
    __getPABSBiometricControllerClass_block_invoke_cold_2(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = objc_getClass("PABSBiometricController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPABSBiometricControllerClass_block_invoke_cold_1();
  }

  getPABSBiometricControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __PasscodeAndBiometricsSettingsLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  PasscodeAndBiometricsSettingsLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_248CB0114(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_248CB08C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_248CB0EC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_248CB1908(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_248CB6768(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_248CB8254(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_248CB9604(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_248CBE3A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_248CBE8BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_248CBF564(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_248CC067C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_248CC1214(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_248CC148C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_248CC1694(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class __getHKMedicalIDEmergencyContactFlowClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!HealthUILibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __HealthUILibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278F76038;
    v6 = 0;
    HealthUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!HealthUILibraryCore_frameworkLibrary)
  {
    __getHKMedicalIDEmergencyContactFlowClass_block_invoke_cold_2(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = objc_getClass("HKMedicalIDEmergencyContactFlow");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getHKMedicalIDEmergencyContactFlowClass_block_invoke_cold_1();
  }

  getHKMedicalIDEmergencyContactFlowClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __HealthUILibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  HealthUILibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t SafetyCheckWhenBlockingError.hashValue.getter()
{
  v1 = *v0;
  sub_248CD480C();
  MEMORY[0x24C1E8630](v1);
  return sub_248CD482C();
}

uint64_t sub_248CC1D24()
{
  v1 = *v0;
  sub_248CD480C();
  MEMORY[0x24C1E8630](v1);
  return sub_248CD482C();
}

uint64_t sub_248CC1D98()
{
  v1 = *v0;
  sub_248CD480C();
  MEMORY[0x24C1E8630](v1);
  return sub_248CD482C();
}

id sub_248CC1E24()
{
  v0 = objc_allocWithZone(DSSafetyCheckWhenBlocking);

  return [v0 init];
}

uint64_t DSBlockingController.deinit()
{
  v1 = OBJC_IVAR____TtC19DigitalSeparationUI20DSBlockingController_fetchTask;
  if (*(v0 + OBJC_IVAR____TtC19DigitalSeparationUI20DSBlockingController_fetchTask))
  {
    v2 = *(v0 + OBJC_IVAR____TtC19DigitalSeparationUI20DSBlockingController_fetchTask);

    sub_248CD46DC();
  }

  v3 = OBJC_IVAR____TtC19DigitalSeparationUI20DSBlockingController_viewProvider;
  [*(v0 + OBJC_IVAR____TtC19DigitalSeparationUI20DSBlockingController_viewProvider) cleanup];
  v4 = OBJC_IVAR____TtC19DigitalSeparationUI20DSBlockingController_logger;
  v5 = sub_248CD436C();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);

  v6 = *(v0 + v1);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t DSBlockingController.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC19DigitalSeparationUI20DSBlockingController_fetchTask;
  if (*(v0 + OBJC_IVAR____TtC19DigitalSeparationUI20DSBlockingController_fetchTask))
  {
    v2 = *(v0 + OBJC_IVAR____TtC19DigitalSeparationUI20DSBlockingController_fetchTask);

    sub_248CD46DC();
  }

  v3 = OBJC_IVAR____TtC19DigitalSeparationUI20DSBlockingController_viewProvider;
  [*(v0 + OBJC_IVAR____TtC19DigitalSeparationUI20DSBlockingController_viewProvider) cleanup];
  v4 = OBJC_IVAR____TtC19DigitalSeparationUI20DSBlockingController_logger;
  v5 = sub_248CD436C();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);

  v6 = *(v0 + v1);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

id sub_248CC2024()
{
  v0 = type metadata accessor for DSBlockingController();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_248CD435C();
  v4 = OBJC_IVAR____TtC19DigitalSeparationUI20DSBlockingController_viewProvider;
  *&v3[v4] = [objc_allocWithZone(DSSafetyCheckWhenBlocking) init];
  *&v3[OBJC_IVAR____TtC19DigitalSeparationUI20DSBlockingController_fetchTask] = 0;
  v6.receiver = v3;
  v6.super_class = v0;
  result = objc_msgSendSuper2(&v6, sel_init);
  qword_2810DDFA8 = result;
  return result;
}

id DSBlockingController.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_248CD435C();
  v4 = OBJC_IVAR____TtC19DigitalSeparationUI20DSBlockingController_viewProvider;
  *&v3[v4] = [objc_allocWithZone(DSSafetyCheckWhenBlocking) init];
  *&v3[OBJC_IVAR____TtC19DigitalSeparationUI20DSBlockingController_fetchTask] = 0;
  v6.receiver = v3;
  v6.super_class = v0;
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t *sub_248CC21C4()
{
  if (qword_2810DDFA0 != -1)
  {
    swift_once();
  }

  return &qword_2810DDFA8;
}

uint64_t static DSBlockingController.sharedInstance.getter()
{
  if (qword_2810DDFA0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_248CC22D0()
{
  *(v1 + 16) = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECB368, &qword_248CDE7F0) - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_248CC236C, v0, 0);
}

uint64_t sub_248CC236C()
{
  v1 = v0[2];
  v2 = OBJC_IVAR____TtC19DigitalSeparationUI20DSBlockingController_fetchTask;
  v0[4] = OBJC_IVAR____TtC19DigitalSeparationUI20DSBlockingController_fetchTask;
  v3 = *(v1 + v2);
  v0[5] = v3;
  if (v3)
  {

    v4 = sub_248CD434C();
    v5 = sub_248CD470C();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_248C7E000, v4, v5, "Await existing fetch completion", v6, 2u);
      MEMORY[0x24C1E8FE0](v6, -1, -1);
    }

    v7 = *(MEMORY[0x277D857E0] + 4);
    v8 = swift_task_alloc();
    v0[6] = v8;
    *v8 = v0;
    v8[1] = sub_248CC2674;
  }

  else
  {
    v9 = sub_248CD434C();
    v10 = sub_248CD470C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_248C7E000, v9, v10, "Starting a referenceable fetch", v11, 2u);
      MEMORY[0x24C1E8FE0](v11, -1, -1);
    }

    v13 = v0[2];
    v12 = v0[3];

    v14 = sub_248CD46CC();
    (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
    v15 = sub_248CC7188(&unk_2810DDEE0, type metadata accessor for DSBlockingController);
    v16 = swift_allocObject();
    v16[2] = v13;
    v16[3] = v15;
    v16[4] = v13;
    swift_retain_n();
    v17 = sub_248CC2C08(0, 0, v12, &unk_248CDE800, v16);
    v0[7] = v17;
    v18 = *(v1 + v2);
    *(v1 + v2) = v17;

    v19 = *(MEMORY[0x277D857E0] + 4);
    v20 = swift_task_alloc();
    v0[8] = v20;
    *v20 = v0;
    v20[1] = sub_248CC27EC;
  }

  return MEMORY[0x282200460]();
}

uint64_t sub_248CC2674()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 16);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_248CC2784, v2, 0);
}

uint64_t sub_248CC2784()
{
  v1 = v0[5];

  v2 = v0[3];

  v3 = v0[1];

  return v3();
}

uint64_t sub_248CC27EC()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 16);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_248CC2918, v3, 0);
}

uint64_t sub_248CC2918()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = *(v2 + v1);
  *(v2 + v1) = 0;

  v4 = v0[3];

  v5 = v0[1];

  return v5();
}

uint64_t sub_248CC29AC()
{
  v1 = *(v0[18] + OBJC_IVAR____TtC19DigitalSeparationUI20DSBlockingController_viewProvider);
  v0[2] = v0;
  v0[3] = sub_248CC2ACC;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECB3E0, &unk_248CDEAD0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_248CC2BD4;
  v0[13] = &block_descriptor_126;
  v0[14] = v2;
  [v1 fetchSharingWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_248CC2ACC()
{
  v1 = *(*v0 + 144);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_248CC2BC0, v1, 0);
}

uint64_t sub_248CC2BD4(uint64_t a1)
{
  v1 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));

  return MEMORY[0x282200948](v1);
}

uint64_t sub_248CC2C08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECB368, &qword_248CDE7F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_248CC8008(a3, v27 - v11);
  v13 = sub_248CD46CC();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_248CC8078(v12);
  }

  else
  {
    sub_248CD46BC();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_248CD468C();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_248CD460C() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_248CC8078(a3);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_248CC8078(a3);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_248CC3040(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_248CC30E8;

  return sub_248CC22D0();
}

uint64_t sub_248CC30E8()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  v2[2](v2);
  _Block_release(v2);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_248CC3224(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_248CC3244, v1, 0);
}

uint64_t sub_248CC3244()
{
  v1 = v0[2];
  v2 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECB370, &unk_248CDE810);
  v3 = sub_248CD431C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  v0[4] = v7;
  *(v7 + 16) = xmmword_248CDE7A0;
  (*(v4 + 16))(v7 + v6, v1, v3);
  v8 = *((*MEMORY[0x277D85000] & *v2) + 0xB0);
  v13 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  v0[5] = v10;
  *v10 = v0;
  v10[1] = sub_248CC3440;
  v11 = v0[3];

  return (v13)(0, v7);
}

uint64_t sub_248CC3440(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v7 = *(v4 + 24);

    return MEMORY[0x2822009F8](sub_248CC3598, v7, 0);
  }

  else
  {
    v8 = *(v4 + 32);

    v9 = *(v6 + 8);

    return v9(a1);
  }
}

uint64_t sub_248CC3598()
{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[6];

  return v2();
}

uint64_t sub_248CC35FC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_248CC361C, v1, 0);
}

uint64_t sub_248CC361C()
{
  v2 = v0[2];
  v1 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECB378, qword_248CDE820);
  v3 = swift_allocObject();
  v0[4] = v3;
  *(v3 + 16) = xmmword_248CDE7B0;
  *(v3 + 32) = v2;
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0xB0);
  v5 = v2;
  v10 = (v4 + *v4);
  v6 = v4[1];
  v7 = swift_task_alloc();
  v0[5] = v7;
  *v7 = v0;
  v7[1] = sub_248CC3790;
  v8 = v0[3];

  return (v10)(v3, 0);
}

uint64_t sub_248CC3790(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v7 = *(v4 + 24);

    return MEMORY[0x2822009F8](sub_248CC8A40, v7, 0);
  }

  else
  {
    v8 = *(v4 + 32);

    v9 = *(v6 + 8);

    return v9(a1);
  }
}

uint64_t sub_248CC3A74(void *a1, void *aBlock, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;

  return MEMORY[0x2822009F8](sub_248CC3B04, a3, 0);
}

uint64_t sub_248CC3B04()
{
  v2 = v0[2];
  v1 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECB378, qword_248CDE820);
  v3 = swift_allocObject();
  v0[5] = v3;
  *(v3 + 16) = xmmword_248CDE7B0;
  *(v3 + 32) = v2;
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0xB0);
  v5 = v2;
  v10 = (v4 + *v4);
  v6 = v4[1];
  v7 = swift_task_alloc();
  v0[6] = v7;
  *v7 = v0;
  v7[1] = sub_248CC3C78;
  v8 = v0[3];

  return (v10)(v3, 0);
}

uint64_t sub_248CC3C78(void *a1)
{
  v4 = *(*v2 + 48);
  v5 = *v2;
  v5[7] = v1;

  if (v1)
  {
    v6 = v5[3];

    return MEMORY[0x2822009F8](sub_248CC3DF8, v6, 0);
  }

  else
  {
    v8 = v5[4];
    v7 = v5[5];
    v9 = v5[2];
    v10 = v5[3];

    (v8)[2](v8, a1, 0);
    _Block_release(v8);

    v11 = v5[1];

    return v11();
  }
}

uint64_t sub_248CC3DF8()
{
  v1 = v0[7];
  v3 = v0[4];
  v2 = v0[5];
  v5 = v0[2];
  v4 = v0[3];

  v6 = sub_248CD42AC();

  (v3)[2](v3, 0, v6);
  _Block_release(v3);
  v7 = v0[1];

  return v7();
}

uint64_t sub_248CC3EAC(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0xB0);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_248CC8A44;

  return (v8)(a1, 0);
}

uint64_t sub_248CC416C(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  sub_248CC8610(0, &qword_27EECB3A0, 0x277CBDA58);
  v5 = sub_248CD465C();
  v3[4] = v5;
  v6 = *((*MEMORY[0x277D85000] & *a3) + 0xB0);

  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_248CC42E8;

  return (v10)(v5, 0);
}

uint64_t sub_248CC42E8(void *a1)
{
  v4 = *(*v2 + 40);
  v5 = *v2;
  v5[6] = v1;

  if (v1)
  {
    v6 = v5[2];

    return MEMORY[0x2822009F8](sub_248CC8A3C, v6, 0);
  }

  else
  {
    v8 = v5[3];
    v7 = v5[4];
    v9 = v5[2];

    (v8)[2](v8, a1, 0);
    _Block_release(v8);

    v10 = v5[1];

    return v10();
  }
}

uint64_t sub_248CC4464(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0xB0);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_248CC8A44;

  return (v8)(0, a1);
}

uint64_t sub_248CC4598(uint64_t a1, uint64_t a2)
{
  v3[73] = v2;
  v3[72] = a2;
  v3[71] = a1;
  v4 = sub_248CD42EC();
  v3[74] = v4;
  v5 = *(v4 - 8);
  v3[75] = v5;
  v6 = *(v5 + 64) + 15;
  v3[76] = swift_task_alloc();
  v7 = sub_248CD431C();
  v3[77] = v7;
  v8 = *(v7 - 8);
  v3[78] = v8;
  v9 = *(v8 + 64) + 15;
  v3[79] = swift_task_alloc();
  v3[80] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_248CC46C8, v2, 0);
}

uint64_t sub_248CC46C8()
{
  v73 = v0;
  v1 = *(v0[73] + OBJC_IVAR____TtC19DigitalSeparationUI20DSBlockingController_viewProvider);
  v0[81] = v1;
  if ([v1 isFetchNeeded])
  {
    v2 = 2;
    v72 = 2;
    v3 = &v72;
LABEL_5:
    sub_248CC62FC(v3);
    sub_248CC7074();
    swift_allocError();
    *v4 = v2;
    swift_willThrow();
LABEL_6:
    v5 = v0[80];
    v6 = v0[79];
    v7 = v0[76];

    v8 = v0[1];

    return v8();
  }

  if (*(v0[73] + OBJC_IVAR____TtC19DigitalSeparationUI20DSBlockingController_fetchTask))
  {
    v2 = 3;
    v71 = 3;
    v3 = &v71;
    goto LABEL_5;
  }

  if (v0[71])
  {
    v10 = v0[72];
    if (!v10 || (v11 = v0[71], !*(v10 + 16)))
    {
      v12 = v0 + 18;
      v0[82] = sub_248CC8610(0, &qword_27EECB3A0, 0x277CBDA58);
      v13 = sub_248CD464C();
      v0[83] = v13;
      v0[18] = v0;
      v0[23] = v0 + 69;
      v0[19] = sub_248CC4EFC;
      v14 = swift_continuation_init();
      v0[57] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECB390, &qword_248CDE840);
      v0[50] = MEMORY[0x277D85DD0];
      v0[51] = 1107296256;
      v0[52] = sub_248CC5778;
      v0[53] = &block_descriptor_18;
      v0[54] = v14;
      [v1 isSharingWithContacts:v13 completion:v0 + 50];
      goto LABEL_45;
    }
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v68 = v0;
  v15 = v0 + 66;
  *v15 = MEMORY[0x277D84F90];
  if (v11 >> 62)
  {
    goto LABEL_32;
  }

  v16 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = v1; v16; i = v1)
  {
    v64 = v11 & 0xFFFFFFFFFFFFFF8;
    v66 = v11 & 0xC000000000000001;

    v17 = 0;
    while (1)
    {
      if (v66)
      {
        v18 = MEMORY[0x24C1E85A0](v17, v11);
      }

      else
      {
        if (v17 >= *(v64 + 16))
        {
          goto LABEL_31;
        }

        v18 = *(v11 + 8 * v17 + 32);
      }

      v19 = v18;
      v1 = (v17 + 1);
      if (__OFADD__(v17, 1))
      {
        break;
      }

      v20 = v11;
      v21 = [v18 identifier];
      v22 = sub_248CD45EC();
      v24 = v23;

      v25 = HIBYTE(v24) & 0xF;
      if ((v24 & 0x2000000000000000) == 0)
      {
        v25 = v22 & 0xFFFFFFFFFFFFLL;
      }

      if (!v25)
      {
        v0 = v68;
        v28 = v68[73];

        v70 = 0;
        sub_248CC62FC(&v70);
        sub_248CC7074();
        swift_allocError();
        *v29 = 0;
        swift_willThrow();

        goto LABEL_6;
      }

      [objc_allocWithZone(MEMORY[0x277D054A0]) initWithContact_];
      MEMORY[0x24C1E8450]();
      if (*((*v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v27 = *((*v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_248CD466C();
      }

      sub_248CD467C();

      v26 = *v15;
      ++v17;
      v11 = v20;
      if (v1 == v16)
      {
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    v16 = sub_248CD479C();
  }

  v26 = MEMORY[0x277D84F90];
LABEL_34:
  v30 = v68[72];

  if (v30)
  {
    v31 = v30;
  }

  else
  {
    v31 = MEMORY[0x277D84F90];
  }

  v32 = *(v31 + 16);

  v65 = v32;
  if (v32)
  {
    v34 = 0;
    v35 = v68[78];
    v36 = (v35 + 8);
    while (1)
    {
      if (v34 >= *(v31 + 16))
      {
        __break(1u);
        return MEMORY[0x282200938](v33);
      }

      v37 = *(v35 + 16);
      v37(v68[80], v31 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v34, v68[77]);
      v38 = sub_248CC584C();
      if (!v38)
      {
        break;
      }

      v39 = v38;
      MEMORY[0x24C1E8450]();
      if (*((*v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v42 = *((*v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_248CD466C();
      }

      ++v34;
      v40 = v68[80];
      v41 = v68[77];
      sub_248CD467C();

      v33 = (*v36)(v40, v41);
      v26 = v68[66];
      if (v65 == v34)
      {
        goto LABEL_44;
      }
    }

    v0 = v68;
    v45 = v68[80];
    v46 = v68[79];
    v47 = v68[77];
    v48 = v68[73];

    v37(v46, v45, v47);
    v49 = sub_248CD434C();
    v50 = sub_248CD473C();
    v51 = os_log_type_enabled(v49, v50);
    v52 = v68[79];
    v53 = v68[77];
    if (v51)
    {
      v54 = v68[76];
      v55 = v68[75];
      v67 = v68[74];
      v56 = swift_slowAlloc();
      *v56 = 134217984;
      sub_248CD42FC();
      v57 = sub_248CD42DC();
      (*(v55 + 8))(v54, v67);
      v58 = *v36;
      (*v36)(v52, v53);
      *(v56 + 4) = v57;
      _os_log_impl(&dword_248C7E000, v49, v50, "Unsupported handle type: %ld", v56, 0xCu);
      MEMORY[0x24C1E8FE0](v56, -1, -1);
    }

    else
    {
      v58 = *v36;
      (*v36)(v68[79], v68[77]);
    }

    v59 = v68[80];
    v60 = v68[77];
    v61 = v68[73];

    v69 = 0;
    sub_248CC62FC(&v69);
    sub_248CC7074();
    swift_allocError();
    *v62 = 1;
    swift_willThrow();
    v58(v59, v60);
    goto LABEL_6;
  }

LABEL_44:
  v12 = v68 + 2;
  v68[85] = v26;

  v68[86] = sub_248CC8610(0, &qword_27EECB388, 0x277D054A0);
  v43 = sub_248CD464C();
  v68[87] = v43;
  v68[2] = v68;
  v68[7] = v68 + 67;
  v68[3] = sub_248CC5330;
  v44 = swift_continuation_init();
  v68[41] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECB390, &qword_248CDE840);
  v68[34] = MEMORY[0x277D85DD0];
  v68[35] = 1107296256;
  v68[36] = sub_248CC5778;
  v68[37] = &block_descriptor;
  v68[38] = v44;
  [i isSharingWith:v43 completion:v68 + 34];
LABEL_45:
  v33 = v12;

  return MEMORY[0x282200938](v33);
}

uint64_t sub_248CC4EFC()
{
  v1 = *(*v0 + 584);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_248CC4FF0, v1, 0);
}

uint64_t sub_248CC4FF0()
{
  v1 = *(v0 + 552);

  v2 = *(v1 + 16);

  if (v2)
  {
    v3 = *(v0 + 656);
    v4 = *(v0 + 648);
    v5 = *(v0 + 568);
    v6 = sub_248CD464C();
    *(v0 + 672) = v6;
    *(v0 + 208) = v0;
    *(v0 + 248) = v0 + 560;
    *(v0 + 216) = sub_248CC51A8;
    v7 = swift_continuation_init();
    *(v0 + 520) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECB398, &unk_248CDE848);
    *(v0 + 464) = MEMORY[0x277D85DD0];
    *(v0 + 472) = 1107296256;
    *(v0 + 480) = sub_248CC57E8;
    *(v0 + 488) = &block_descriptor_21;
    *(v0 + 496) = v7;
    [v4 safetyCheckControllerWithPreview:1 forContacts:v6 completion:v0 + 464];

    return MEMORY[0x282200938](v0 + 208);
  }

  else
  {
    v8 = *(v0 + 640);
    v9 = *(v0 + 632);
    v10 = *(v0 + 608);

    v11 = *(v0 + 8);

    return v11(0);
  }
}

uint64_t sub_248CC51A8()
{
  v1 = *(*v0 + 584);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_248CC529C, v1, 0);
}

uint64_t sub_248CC529C()
{
  v1 = *(v0 + 560);

  v2 = *(v0 + 640);
  v3 = *(v0 + 632);
  v4 = *(v0 + 608);

  v5 = *(v0 + 8);

  return v5(v1);
}

uint64_t sub_248CC5330()
{
  v1 = *(*v0 + 584);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_248CC5424, v1, 0);
}

uint64_t sub_248CC5424()
{
  v1 = *(v0 + 536);

  v2 = *(v1 + 16);

  if (v2)
  {
    v3 = *(v0 + 688);
    v4 = *(v0 + 680);
    v5 = *(v0 + 648);
    v6 = sub_248CD464C();
    *(v0 + 704) = v6;

    *(v0 + 80) = v0;
    *(v0 + 120) = v0 + 544;
    *(v0 + 88) = sub_248CC55F0;
    v7 = swift_continuation_init();
    *(v0 + 392) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECB398, &unk_248CDE848);
    *(v0 + 336) = MEMORY[0x277D85DD0];
    *(v0 + 344) = 1107296256;
    *(v0 + 352) = sub_248CC57E8;
    *(v0 + 360) = &block_descriptor_15;
    *(v0 + 368) = v7;
    [v5 safetyCheckControllerWithPreview:1 forHandles:v6 completion:v0 + 336];

    return MEMORY[0x282200938](v0 + 80);
  }

  else
  {
    v8 = *(v0 + 680);

    v9 = *(v0 + 640);
    v10 = *(v0 + 632);
    v11 = *(v0 + 608);

    v12 = *(v0 + 8);

    return v12(0);
  }
}

uint64_t sub_248CC55F0()
{
  v1 = *(*v0 + 584);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_248CC56E4, v1, 0);
}

uint64_t sub_248CC56E4()
{
  v1 = *(v0 + 544);

  v2 = *(v0 + 640);
  v3 = *(v0 + 632);
  v4 = *(v0 + 608);

  v5 = *(v0 + 8);

  return v5(v1);
}

uint64_t sub_248CC5778(uint64_t a1)
{
  v1 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  **(*(v1 + 64) + 40) = sub_248CD465C();

  return MEMORY[0x282200948](v1);
}

uint64_t sub_248CC57E8(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return MEMORY[0x282200948](v4);
}

id sub_248CC584C()
{
  v0 = sub_248CD42EC();
  v1 = *(v0 - 8);
  v2 = v1[8];
  v3 = (MEMORY[0x28223BE20])();
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v21 - v6;
  sub_248CD42FC();
  v8 = v1[13];
  v8(v5, *MEMORY[0x277CD4730], v0);
  sub_248CC7188(&qword_27EECB3A8, MEMORY[0x277CD4740]);
  sub_248CD462C();
  sub_248CD462C();
  v9 = v1[1];
  v9(v5, v0);
  v9(v7, v0);
  if (v22 == v21)
  {
    sub_248CD430C();
    v10 = objc_allocWithZone(MEMORY[0x277D054A0]);
    v11 = sub_248CD45DC();

    v12 = [v10 initWithEmail_];

    v13 = sub_248CD42CC();
    v15 = v14;

    v16 = HIBYTE(v15) & 0xF;
    if ((v15 & 0x2000000000000000) == 0)
    {
      v16 = v13 & 0xFFFFFFFFFFFFLL;
    }

    if (v16)
    {
      sub_248CD42CC();
      v17 = sub_248CD45DC();

      [v12 setDisplayName_];
    }
  }

  else
  {
    sub_248CD42FC();
    v8(v5, *MEMORY[0x277CD4728], v0);
    sub_248CD462C();
    sub_248CD462C();
    v9(v5, v0);
    v9(v7, v0);
    if (v22 == v21)
    {
      sub_248CD430C();
      v18 = objc_allocWithZone(MEMORY[0x277D054A0]);
      v19 = sub_248CD45DC();

      v12 = [v18 initWithPhone_];
    }

    else
    {
      return 0;
    }
  }

  return v12;
}

uint64_t sub_248CC5B94(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0xB0);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_248CC5CC8;

  return (v8)(a1, 0);
}

uint64_t sub_248CC5CC8(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_248CC5F54(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  sub_248CC8610(0, &qword_27EECB3A0, 0x277CBDA58);
  v5 = sub_248CD465C();
  v3[4] = v5;
  v6 = *((*MEMORY[0x277D85000] & *a3) + 0xB0);

  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_248CC60D0;

  return (v10)(v5, 0);
}

uint64_t sub_248CC60D0(void *a1)
{
  v4 = *(*v2 + 40);
  v5 = *v2;
  v5[6] = v1;

  if (v1)
  {
    v6 = v5[2];

    return MEMORY[0x2822009F8](sub_248CC624C, v6, 0);
  }

  else
  {
    v8 = v5[3];
    v7 = v5[4];
    v9 = v5[2];

    (v8)[2](v8, a1, 0);
    _Block_release(v8);

    v10 = v5[1];

    return v10();
  }
}

uint64_t sub_248CC624C()
{
  v1 = v0[6];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[2];

  v5 = sub_248CD42AC();

  (v3)[2](v3, 0, v5);
  _Block_release(v3);
  v6 = v0[1];

  return v6();
}

void sub_248CC62FC(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = sub_248CD434C();
  v3 = sub_248CD471C();
  v4 = os_log_type_enabled(v2, v3);
  if (v1 > 1)
  {
    if (v1 == 2)
    {
      if (v4)
      {
        v5 = "Fetch needed before UI can be presented, call prefetch sharing";
        goto LABEL_12;
      }
    }

    else if (v4)
    {
      v5 = "Safety Check called while fetch is in progress, wait for that to complete";
      goto LABEL_12;
    }
  }

  else if (v1)
  {
    if (v4)
    {
      v5 = "Unrecognized handle type";
      goto LABEL_12;
    }
  }

  else if (v4)
  {
    v5 = "Contact identifier or handle is empty";
LABEL_12:
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_248C7E000, v2, v3, v5, v6, 2u);
    MEMORY[0x24C1E8FE0](v6, -1, -1);
  }

  v7 = sub_248CD45DC();
  v8 = swift_allocObject();
  *(v8 + 16) = v1;
  v10[4] = sub_248CC8478;
  v10[5] = v8;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_248CC64B0;
  v10[3] = &block_descriptor_113;
  v9 = _Block_copy(v10);

  AnalyticsSendEventLazy();
  _Block_release(v9);
}

id sub_248CC64B0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_248CC8610(0, &qword_27EECB3B8, 0x277D82BB8);
    v5 = sub_248CD45CC();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id DSBlockingController.init()()
{
  swift_defaultActor_initialize();
  sub_248CD435C();
  v1 = OBJC_IVAR____TtC19DigitalSeparationUI20DSBlockingController_viewProvider;
  *&v0[v1] = [objc_allocWithZone(DSSafetyCheckWhenBlocking) init];
  *&v0[OBJC_IVAR____TtC19DigitalSeparationUI20DSBlockingController_fetchTask] = 0;
  v3.receiver = v0;
  v3.super_class = type metadata accessor for DSBlockingController();
  return objc_msgSendSuper2(&v3, sel_init);
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

uint64_t type metadata accessor for DSBlockingController()
{
  result = qword_2810DDF70;
  if (!qword_2810DDF70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_248CC66A0()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_248CC8A30;

  return sub_248CC298C(v3, v4, v5, v2);
}

uint64_t sub_248CC680C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_248CC6904;

  return v7(a1);
}

uint64_t sub_248CC6904()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_248CC69FC(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_248CC8A30;

  return v7();
}

uint64_t sub_248CC6AE4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_248CC6BCC;

  return v8();
}

uint64_t sub_248CC6BCC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_248CC6CC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECB368, &qword_248CDE7F0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = v24 - v10;
  sub_248CC8008(a3, v24 - v10);
  v12 = sub_248CD46CC();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_248CC8078(v11);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_248CD46BC();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v14 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v15 = sub_248CD468C();
  v17 = v16;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v18 = sub_248CD460C() + 32;
    v19 = swift_allocObject();
    *(v19 + 16) = a4;
    *(v19 + 24) = a5;

    if (v17 | v15)
    {
      v25[0] = 0;
      v25[1] = 0;
      v20 = v25;
      v25[2] = v15;
      v25[3] = v17;
    }

    else
    {
      v20 = 0;
    }

    v24[1] = 7;
    v24[2] = v20;
    v24[3] = v18;
    v22 = swift_task_create();

    sub_248CC8078(a3);

    return v22;
  }

LABEL_8:
  sub_248CC8078(a3);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_248CC6F7C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_248CC8A34;

  return v7(a1);
}

unint64_t sub_248CC7074()
{
  result = qword_27EECB380;
  if (!qword_27EECB380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EECB380);
  }

  return result;
}

uint64_t sub_248CC70D8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_248CC7188(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_248CC71D4()
{
  result = qword_27EECB3B0;
  if (!qword_27EECB3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EECB3B0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SafetyCheckWhenBlockingError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SafetyCheckWhenBlockingError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_248CC73A4()
{
  result = sub_248CD436C();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of DSBlockingController.prefetchSharing()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x88);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_248CC8A30;

  return v6();
}

uint64_t dispatch thunk of DSBlockingController.block(handle:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x90);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_248CC8A38;

  return v8(a1);
}

uint64_t dispatch thunk of DSBlockingController.block(contact:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x98);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_248CC8A38;

  return v8(a1);
}

uint64_t dispatch thunk of DSBlockingController.block(contacts:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0xA0);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_248CC8A38;

  return v8(a1);
}

uint64_t dispatch thunk of DSBlockingController.block(handles:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0xA8);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_248CC8A38;

  return v8(a1);
}

uint64_t dispatch thunk of DSBlockingController.safetyCheckController(contacts:handles:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x277D85000] & *v2) + 0xB0);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_248CC8A38;

  return v10(a1, a2);
}

uint64_t dispatch thunk of DSBlockingController.safetyCheckController(for:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0xB8);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_248CC7CB8;

  return v8(a1);
}

uint64_t sub_248CC7CB8(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_248CC7DC8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_248CC6BCC;

  return sub_248CC5F54(v2, v3, v4);
}

uint64_t sub_248CC7E7C()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_248CC8A30;

  return sub_248CC69FC(v2, v3, v5);
}

uint64_t sub_248CC7F3C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_248CC8A30;

  return sub_248CC6AE4(a1, v4, v5, v7);
}

uint64_t sub_248CC8008(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECB368, &qword_248CDE7F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_248CC8078(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECB368, &qword_248CDE7F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_248CC80E0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_248CC8A30;

  return sub_248CC6F7C(a1, v5);
}

uint64_t sub_248CC8198()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_248CC8A30;

  return sub_248CC416C(v2, v3, v4);
}

uint64_t objectdestroy_39Tm()
{
  _Block_release(*(v0 + 24));
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_248CC8294()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_248CC8A30;

  return sub_248CC3A74(v2, v3, v4);
}

uint64_t sub_248CC8348()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_248CC8A30;

  return sub_248CC3040(v2, v3);
}

uint64_t objectdestroy_43Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

id sub_248CC8478()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECB3C0, &qword_248CDEAA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_248CDE7C0;
  *(inited + 32) = 0x696F707972746E65;
  *(inited + 40) = 0xEA0000000000746ELL;
  v3 = [objc_opt_self() processInfo];
  result = [v3 processName];
  if (result)
  {
    v5 = result;

    *(inited + 48) = v5;
    *(inited + 56) = 0x7245746E65696C63;
    *(inited + 64) = 0xEB00000000726F72;
    *(inited + 72) = sub_248CD46FC();
    *(inited + 80) = 0xD000000000000017;
    *(inited + 88) = 0x8000000248CDE4F0;
    sub_248CC8610(0, &qword_27EECB3C8, 0x277CCABB0);
    *(inited + 96) = sub_248CD476C();
    v6 = sub_248CC8788(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECB3D0, &qword_248CDEAA8);
    swift_arrayDestroy();
    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t block_copy_helper_111(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_248CC8610(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

unint64_t sub_248CC8658(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_248CD480C();
  sub_248CD461C();
  v6 = sub_248CD482C();

  return sub_248CC86D0(a1, a2, v6);
}

unint64_t sub_248CC86D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_248CD47BC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_248CC8788(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECB3D8, &unk_248CDEAB0);
    v3 = sub_248CD47AC();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_248CC8658(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_248CC888C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_248CC8A30;

  return sub_248CC680C(a1, v5);
}

uint64_t sub_248CC8944(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_248CC6BCC;

  return sub_248CC680C(a1, v5);
}

uint64_t sub_248CC8A5C()
{
  v3 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECB3F0, &qword_248CDEAE8);
  sub_248CD44FC();
  return v2;
}

uint64_t sub_248CC8AAC()
{
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECB3F0, &qword_248CDEAE8);
  return sub_248CD450C();
}

void (*sub_248CC8B00(void *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  v6 = v1[1];
  v3[4] = *v1;
  v3[8] = v5;
  v3[9] = v6;
  v3[5] = v6;
  *v3 = v5;
  v3[1] = v6;
  sub_248CCFE74((v3 + 4), (v3 + 2), &qword_27EECB3E8, &qword_248CDEAE0);
  sub_248CCFE74((v4 + 5), (v4 + 2), &qword_27EECB3F8, &qword_248CDEAF0);
  v4[10] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECB3F0, &qword_248CDEAE8);
  sub_248CD44FC();
  return sub_248CC8BDC;
}

uint64_t sub_248CC8C00()
{
  v3 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECB3F0, &qword_248CDEAE8);
  sub_248CD451C();
  return v2;
}

uint64_t sub_248CC8C68()
{
  v3 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECB408, &qword_248CDEB00);
  sub_248CD44FC();
  return v2;
}

uint64_t sub_248CC8CB8()
{
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECB408, &qword_248CDEB00);
  return sub_248CD450C();
}

void (*sub_248CC8D0C(void *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v3[4] = v5;
  v3[8] = v5;
  v3[9] = v6;
  v3[5] = v6;
  *v3 = v5;
  v3[1] = v6;
  sub_248CCFE74((v3 + 4), (v3 + 2), &qword_27EECB400, &qword_248CDEAF8);
  sub_248CCFE74((v4 + 5), (v4 + 2), &qword_27EECB410, &qword_248CDEB08);
  v4[10] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECB408, &qword_248CDEB00);
  sub_248CD44FC();
  return sub_248CC8DE8;
}

void sub_248CC8E0C(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v10 = *a1;
  *(*a1 + 16) = *(*a1 + 64);
  v10[7] = v10[6];
  v11 = v10[10];
  if (a2)
  {

    sub_248CD450C();
    sub_248CCFEDC((v10 + 4), a3, a4);
    sub_248CCFEDC((v10 + 5), a5, a6);
    v12 = v10[6];
  }

  else
  {
    v13 = v10[10];
    sub_248CD450C();
    sub_248CCFEDC((v10 + 4), a3, a4);
    sub_248CCFEDC((v10 + 5), a5, a6);
  }

  free(v10);
}

uint64_t sub_248CC8EF4()
{
  v3 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECB408, &qword_248CDEB00);
  sub_248CD451C();
  return v2;
}

uint64_t sub_248CC8F48()
{
  v4 = *(v0 + 32);
  v5 = *(v0 + 48);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECB418, &qword_248CDEB10);
  MEMORY[0x24C1E8360](&v3, v1);
  return v3;
}

uint64_t sub_248CC8FA0()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECB418, &qword_248CDEB10);
  return sub_248CD455C();
}

void (*sub_248CC8FFC(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  *(v3 + 56) = v5;
  *(v3 + 64) = v6;
  v7 = *(v1 + 48);
  *(v3 + 19) = v7;
  *(v3 + 48) = v5;
  *v3 = v5;
  *(v3 + 8) = v6;
  *(v3 + 16) = v7;
  sub_248CC9130(v3 + 48, v3 + 24);

  *(v4 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECB418, &qword_248CDEB10);
  MEMORY[0x24C1E8360]();
  return sub_248CC90B8;
}

void sub_248CC90B8(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 17);
  v4 = *(*a1 + 64);
  v3 = *(*a1 + 72);
  *(*a1 + 24) = *(*a1 + 56);
  v5 = *(v1 + 19);
  *(v1 + 32) = v4;
  *(v1 + 40) = v5;
  *(v1 + 18) = v2;
  sub_248CD455C();
  sub_248CC918C(v1 + 48);

  free(v1);
}

uint64_t sub_248CC91E0()
{
  v3 = *(v0 + 32);
  v4 = *(v0 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECB418, &qword_248CDEB10);
  sub_248CD456C();
  return v2;
}

uint64_t sub_248CC923C()
{
  v3 = *(v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECB420, &qword_248CDEB18);
  sub_248CD44FC();
  return v2;
}

uint64_t sub_248CC928C()
{
  v2 = *(v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECB420, &qword_248CDEB18);
  return sub_248CD450C();
}

uint64_t (*sub_248CC92E0(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 56);
  *v3 = v4;
  *(v3 + 48) = *(v3 + 8);
  v5 = v3 + 48;
  *(v3 + 16) = v4;
  sub_248CCFE74(v3 + 48, v3 + 32, &qword_27EECB428, &qword_248CDEB20);
  *(v5 + 8) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECB420, &qword_248CDEB18);
  sub_248CD44FC();
  return sub_248CCFF7C;
}

uint64_t sub_248CC93A8()
{
  v3 = *(v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECB420, &qword_248CDEB18);
  sub_248CD451C();
  return v2;
}

uint64_t sub_248CC93FC()
{
  v1 = v0;
  sub_248CD46AC();
  sub_248CC9618(v0, &v16);
  v2 = sub_248CD469C();
  v3 = swift_allocObject();
  v4 = MEMORY[0x277D85700];
  *(v3 + 16) = v2;
  *(v3 + 24) = v4;
  v5 = v0[5];
  *(v3 + 96) = v0[4];
  *(v3 + 112) = v5;
  v6 = v0[7];
  *(v3 + 128) = v0[6];
  *(v3 + 144) = v6;
  v7 = v0[1];
  *(v3 + 32) = *v0;
  *(v3 + 48) = v7;
  v8 = v0[3];
  *(v3 + 64) = v0[2];
  *(v3 + 80) = v8;
  sub_248CC9618(v0, &v16);
  v9 = sub_248CD469C();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = v4;
  v11 = v1[5];
  *(v10 + 96) = v1[4];
  *(v10 + 112) = v11;
  v12 = v1[7];
  *(v10 + 128) = v1[6];
  *(v10 + 144) = v12;
  v13 = v1[1];
  *(v10 + 32) = *v1;
  *(v10 + 48) = v13;
  v14 = v1[3];
  *(v10 + 64) = v1[2];
  *(v10 + 80) = v14;
  sub_248CD457C();
  return v16;
}

void *sub_248CC952C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v9 = *(a1 + 32);
  v10 = *(a1 + 48);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECB418, &qword_248CDEB10);
  result = MEMORY[0x24C1E8360](&v8, v4);
  if (v8 == 1 && (v9 = *(a1 + 88), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECB430, &qword_248CDEB28), sub_248CD44FC(), (result = v8) != 0) && (v6 = v8[2], result = , v6))
  {
    v9 = *(a1 + 56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECB420, &qword_248CDEB18);
    result = sub_248CD44FC();
    v7 = v8 ^ 1;
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7 & 1;
  return result;
}

BOOL sub_248CC9658()
{
  v4 = *(v0 + 88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECB430, &qword_248CDEB28);
  sub_248CD44FC();
  result = v3;
  if (v3)
  {
    v2 = *(v3 + 16);

    return v2 != 0;
  }

  return result;
}

_BYTE *sub_248CC96BC(_BYTE *result, uint64_t a2)
{
  if ((*result & 1) == 0)
  {
    v3 = *(a2 + 56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECB420, &qword_248CDEB18);
    result = sub_248CD44FC();
    if ((v6 & 1) == 0)
    {
      v4 = *(a2 + 32);
      v5 = *(a2 + 48);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECB418, &qword_248CDEB10);
      return sub_248CD455C();
    }
  }

  return result;
}

uint64_t sub_248CC97A0()
{
  v3 = *(v0 + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECB420, &qword_248CDEB18);
  sub_248CD44FC();
  return v2;
}

uint64_t sub_248CC97F0()
{
  v2 = *(v0 + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECB420, &qword_248CDEB18);
  return sub_248CD450C();
}

uint64_t (*sub_248CC9844(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 72);
  *v3 = v4;
  *(v3 + 48) = *(v3 + 8);
  v5 = v3 + 48;
  *(v3 + 16) = v4;
  sub_248CCFE74(v3 + 48, v3 + 32, &qword_27EECB428, &qword_248CDEB20);
  *(v5 + 8) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECB420, &qword_248CDEB18);
  sub_248CD44FC();
  return sub_248CC9904;
}

void sub_248CC9908(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  v3 = *(*a1 + 56);
  *(v1 + 32) = **a1;
  *(v1 + 65) = v2;
  sub_248CD450C();
  sub_248CCFEDC(v1, &qword_27EECB420, &qword_248CDEB18);

  free(v1);
}

uint64_t sub_248CC9974()
{
  v3 = *(v0 + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECB420, &qword_248CDEB18);
  sub_248CD451C();
  return v2;
}

uint64_t sub_248CC99DC()
{
  v3 = *(v0 + 88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECB430, &qword_248CDEB28);
  sub_248CD44FC();
  return v2;
}

uint64_t sub_248CC9A2C()
{
  v2 = *(v0 + 88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECB430, &qword_248CDEB28);
  return sub_248CD450C();
}

void (*sub_248CC9A80(void *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(v1 + 88);
  v6 = *(v1 + 96);
  v3[4] = v5;
  v3[8] = v5;
  v3[9] = v6;
  v3[5] = v6;
  *v3 = v5;
  v3[1] = v6;
  sub_248CCFE74((v3 + 4), (v3 + 2), &qword_27EECB438, &qword_248CDEB30);
  sub_248CCFE74((v4 + 5), (v4 + 2), &qword_27EECB440, &qword_248CDEB38);
  v4[10] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECB430, &qword_248CDEB28);
  sub_248CD44FC();
  return sub_248CC9B5C;
}

uint64_t sub_248CC9B80()
{
  v3 = *(v0 + 88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECB430, &qword_248CDEB28);
  sub_248CD451C();
  return v2;
}

uint64_t sub_248CC9BE8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  sub_248CD44EC();
  return v4;
}

uint64_t sub_248CC9C28()
{
  v3 = *(v0 + 104);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECB450, &qword_248CDEB48);
  sub_248CD44FC();
  return v2;
}

uint64_t sub_248CC9C78()
{
  v2 = *(v0 + 104);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECB450, &qword_248CDEB48);
  return sub_248CD450C();
}

void (*sub_248CC9CCC(void *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(v1 + 104);
  v6 = *(v1 + 112);
  v3[4] = v5;
  v3[8] = v5;
  v3[9] = v6;
  v3[5] = v6;
  *v3 = v5;
  v3[1] = v6;
  sub_248CCFE74((v3 + 4), (v3 + 2), &qword_27EECB448, &qword_248CDEB40);
  sub_248CCFE74((v4 + 5), (v4 + 2), &qword_27EECB458, &qword_248CDEB50);
  v4[10] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECB450, &qword_248CDEB48);
  sub_248CD44FC();
  return sub_248CC9DA8;
}

void sub_248CC9DA8(uint64_t *a1, char a2)
{
  v2 = *a1;
  *(*a1 + 16) = *(*a1 + 64);
  v3 = *(v2 + 48);
  *(v2 + 56) = v3;
  v4 = *(v2 + 80);
  if (a2)
  {
    v5 = v3;
    sub_248CD450C();
    sub_248CCFEDC(v2 + 32, &qword_27EECB448, &qword_248CDEB40);
    sub_248CCFEDC(v2 + 40, &qword_27EECB458, &qword_248CDEB50);
  }

  else
  {
    v6 = *(v2 + 80);
    sub_248CD450C();
    sub_248CCFEDC(v2 + 32, &qword_27EECB448, &qword_248CDEB40);
    sub_248CCFEDC(v2 + 40, &qword_27EECB458, &qword_248CDEB50);
  }

  free(v2);
}

uint64_t sub_248CC9E90()
{
  v3 = *(v0 + 104);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECB450, &qword_248CDEB48);
  sub_248CD451C();
  return v2;
}

uint64_t sub_248CC9EEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v57 = a1;
  v62 = a2;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECB460, &qword_248CDEB58);
  v60 = *(v59 - 8);
  v4 = *(v60 + 64);
  MEMORY[0x28223BE20](v59);
  v55 = &v51 - v5;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECB468, &qword_248CDEB60);
  v6 = *(*(v61 - 8) + 64);
  MEMORY[0x28223BE20](v61);
  v58 = &v51 - v7;
  v8 = sub_248CCA5D0();
  v56 = v9;
  *&v65 = v8;
  *(&v65 + 1) = v9;
  sub_248CD46AC();
  sub_248CC9618(v2, v67);
  v10 = sub_248CD469C();
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D85700];
  *(v11 + 16) = v10;
  *(v11 + 24) = v12;
  v13 = v2[5];
  *(v11 + 96) = v2[4];
  *(v11 + 112) = v13;
  v14 = v2[7];
  *(v11 + 128) = v2[6];
  *(v11 + 144) = v14;
  v15 = v2[1];
  *(v11 + 32) = *v2;
  *(v11 + 48) = v15;
  v16 = v2[3];
  *(v11 + 64) = v2[2];
  *(v11 + 80) = v16;
  sub_248CC9618(v2, v67);
  v17 = sub_248CD469C();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = v12;
  v19 = v3[5];
  *(v18 + 96) = v3[4];
  *(v18 + 112) = v19;
  v20 = v3[7];
  *(v18 + 128) = v3[6];
  *(v18 + 144) = v20;
  v21 = v3[1];
  *(v18 + 32) = *v3;
  *(v18 + 48) = v21;
  v22 = v3[3];
  *(v18 + 64) = v3[2];
  *(v18 + 80) = v22;
  sub_248CD457C();
  v64 = v3;
  v63 = v3;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECB470, &qword_248CDEB68);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECB478, &qword_248CDEB70);
  v23 = sub_248CCFD04(&qword_27EECB480, &qword_27EECB470, &qword_248CDEB68);
  v24 = sub_248CCB8F4();
  v54 = sub_248CCFD04(&qword_27EECB490, &qword_27EECB478, &qword_248CDEB70);
  v25 = v55;
  sub_248CD44AC();

  v65 = *(v3 + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECB420, &qword_248CDEB18);
  sub_248CD451C();
  v26 = swift_allocObject();
  v27 = v3[5];
  v26[5] = v3[4];
  v26[6] = v27;
  v28 = v3[7];
  v26[7] = v3[6];
  v26[8] = v28;
  v29 = v3[1];
  v26[1] = *v3;
  v26[2] = v29;
  v30 = v3[3];
  v26[3] = v3[2];
  v26[4] = v30;
  v31 = swift_allocObject();
  v32 = v3[5];
  v31[5] = v3[4];
  v31[6] = v32;
  v33 = v3[7];
  v31[7] = v3[6];
  v31[8] = v33;
  v34 = v3[1];
  v31[1] = *v3;
  v31[2] = v34;
  v35 = v3[3];
  v31[3] = v3[2];
  v31[4] = v35;
  sub_248CC9618(v3, v67);
  sub_248CC9618(v3, v67);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECB498, &qword_248CDEB78);
  v67[0] = v52;
  v67[1] = MEMORY[0x277D837D0];
  v67[2] = v53;
  v67[3] = MEMORY[0x277CE0BD8];
  v67[4] = v23;
  v67[5] = v24;
  v67[6] = v54;
  v67[7] = MEMORY[0x277CE0BC8];
  swift_getOpaqueTypeConformance2();
  sub_248CCBB74();
  v36 = v58;
  v37 = v59;
  sub_248CD44BC();

  (*(v60 + 8))(v25, v37);
  v38 = swift_allocObject();
  v39 = v3[5];
  *(v38 + 5) = v3[4];
  *(v38 + 6) = v39;
  v40 = v3[7];
  *(v38 + 7) = v3[6];
  *(v38 + 8) = v40;
  v41 = v3[1];
  *(v38 + 1) = *v3;
  *(v38 + 2) = v41;
  v42 = v3[3];
  *(v38 + 3) = v3[2];
  *(v38 + 4) = v42;
  v43 = (v36 + *(v61 + 36));
  *v43 = sub_248CCBD94;
  v43[1] = v38;
  v43[2] = 0;
  v43[3] = 0;
  v65 = v3[2];
  v66 = *(v3 + 48);
  sub_248CC9618(v3, v67);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECB418, &qword_248CDEB10);
  MEMORY[0x24C1E8360](v67, v44);
  LOBYTE(v65) = v67[0];
  v45 = swift_allocObject();
  v46 = v3[5];
  v45[5] = v3[4];
  v45[6] = v46;
  v47 = v3[7];
  v45[7] = v3[6];
  v45[8] = v47;
  v48 = v3[1];
  v45[1] = *v3;
  v45[2] = v48;
  v49 = v3[3];
  v45[3] = v3[2];
  v45[4] = v49;
  sub_248CC9618(v3, v67);
  sub_248CCBF9C();
  sub_248CD44DC();

  return sub_248C80CB8(v36);
}

uint64_t sub_248CCA5D0()
{
  v17 = *(v0 + 88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECB430, &qword_248CDEB28);
  sub_248CD44FC();
  if (v16)
  {
    v1 = v16[2];
    if (v1)
    {
      v2 = MEMORY[0x277D837D0];
      if (v1 == 1)
      {
        v3 = v16[4];
        v4 = v16[5];
      }

      else
      {
        v10 = objc_opt_self();
        v11 = sub_248CD464C();

        v12 = [v10 localizedStringByJoiningStrings_];

        v3 = sub_248CD45EC();
        v4 = v13;
      }

      sub_248CCE660();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECB4B8, &qword_248CDEB80);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_248CDE7A0;
      *(v14 + 56) = v2;
      *(v14 + 64) = sub_248CCF6BC();
      *(v14 + 32) = v3;
      *(v14 + 40) = v4;
      v15 = sub_248CD45FC();

      return v15;
    }
  }

  if (qword_27EECB870 != -1)
  {
    swift_once();
  }

  v5 = sub_248CD436C();
  __swift_project_value_buffer(v5, qword_27EECB878);
  v6 = sub_248CD434C();
  v7 = sub_248CD471C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_248C7E000, v6, v7, "Asked for confirmation dialog title but we have no display names, this should never happen!", v8, 2u);
    MEMORY[0x24C1E8FE0](v8, -1, -1);
  }

  return 0;
}

uint64_t sub_248CCA81C@<X0>(_OWORD *a1@<X0>, char *a2@<X8>)
{
  v59 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECB500, &qword_248CDEE08);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v53 = v52 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECB508, &qword_248CDEE10);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v58 = v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v57 = v52 - v10;
  v11 = sub_248CD43EC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECB510, &qword_248CDEE18);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = v52 - v19;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECB518, &qword_248CDEE20);
  v54 = *(v55 - 8);
  v21 = *(v54 + 64);
  v22 = MEMORY[0x28223BE20](v55);
  v56 = v52 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = v52 - v24;
  v61 = sub_248CCE660();
  v62 = v26;
  v27 = swift_allocObject();
  v28 = a1[5];
  v27[5] = a1[4];
  v27[6] = v28;
  v29 = a1[7];
  v27[7] = a1[6];
  v27[8] = v29;
  v30 = a1[1];
  v27[1] = *a1;
  v27[2] = v30;
  v31 = a1[3];
  v27[3] = a1[2];
  v27[4] = v31;
  sub_248CC9618(a1, v60);
  v52[1] = sub_248CCB8F4();
  sub_248CD453C();
  sub_248CD43DC();
  sub_248CCFD04(&qword_27EECB520, &qword_27EECB510, &qword_248CDEE18);
  v32 = v25;
  sub_248CD449C();
  (*(v12 + 8))(v15, v11);
  (*(v17 + 8))(v20, v16);
  if (sub_248CD458C())
  {
    v33 = 1;
    v34 = v57;
  }

  else
  {
    v61 = sub_248CCE660();
    v62 = v35;
    v36 = v53;
    sub_248CD437C();
    v37 = sub_248CD438C();
    (*(*(v37 - 8) + 56))(v36, 0, 1, v37);
    v38 = swift_allocObject();
    v39 = a1[5];
    v38[5] = a1[4];
    v38[6] = v39;
    v40 = a1[7];
    v38[7] = a1[6];
    v38[8] = v40;
    v41 = a1[1];
    v38[1] = *a1;
    v38[2] = v41;
    v42 = a1[3];
    v38[3] = a1[2];
    v38[4] = v42;
    sub_248CC9618(a1, v60);
    sub_248CD452C();
    v34 = v57;
    (*(v17 + 32))(v57, v20, v16);
    v33 = 0;
  }

  (*(v17 + 56))(v34, v33, 1, v16);
  v43 = v54;
  v44 = *(v54 + 16);
  v45 = v56;
  v46 = v55;
  v44(v56, v32, v55);
  v47 = v58;
  sub_248CCFE74(v34, v58, &qword_27EECB508, &qword_248CDEE10);
  v48 = v59;
  v44(v59, v45, v46);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECB528, &qword_248CDEE28);
  sub_248CCFE74(v47, &v48[*(v49 + 48)], &qword_27EECB508, &qword_248CDEE10);
  sub_248CCFEDC(v34, &qword_27EECB508, &qword_248CDEE10);
  v50 = *(v43 + 8);
  v50(v32, v46);
  sub_248CCFEDC(v47, &qword_27EECB508, &qword_248CDEE10);
  return (v50)(v45, v46);
}

void sub_248CCAE54()
{
  v1 = v0;
  v75 = *MEMORY[0x277D85DE8];
  v2 = sub_248CD459C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_248CD45BC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_allocWithZone(MEMORY[0x277CD4790]) init];
  *&v66 = 0;
  v13 = [v12 canEvaluatePolicy:2 error:&v66];
  v14 = v66;
  if (v13)
  {
    v15 = v66;
    sub_248CCE660();
    v16 = sub_248CD45DC();

    v17 = swift_allocObject();
    v18 = *(v1 + 80);
    v17[5] = *(v1 + 64);
    v17[6] = v18;
    v19 = *(v1 + 112);
    v17[7] = *(v1 + 96);
    v17[8] = v19;
    v20 = *(v1 + 16);
    v17[1] = *v1;
    v17[2] = v20;
    v21 = *(v1 + 48);
    v17[3] = *(v1 + 32);
    v17[4] = v21;
    v72 = sub_248CCF780;
    v73 = v17;
    aBlock = MEMORY[0x277D85DD0];
    v69 = 1107296256;
    v70 = sub_248CCECC4;
    v71 = &block_descriptor_36;
    v22 = _Block_copy(&aBlock);
    sub_248CC9618(v1, &v66);

    [v12 evaluatePolicy:2 localizedReason:v16 reply:v22];

    _Block_release(v22);
    goto LABEL_25;
  }

  if (!v66)
  {
    if (qword_27EECB870 != -1)
    {
      swift_once();
    }

    v29 = sub_248CD436C();
    __swift_project_value_buffer(v29, qword_27EECB878);
    v30 = sub_248CD434C();
    v31 = sub_248CD471C();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_248C7E000, v30, v31, "Cannot evaluate authentication policy for Safety Check, returning.", v32, 2u);
      MEMORY[0x24C1E8FE0](v32, -1, -1);
    }

    v66 = *(v1 + 56);
    LOBYTE(aBlock) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECB420, &qword_248CDEB18);
    sub_248CD450C();
    v33 = *(v1 + 40);
    v34 = *(v1 + 48);
    aBlock = *(v1 + 32);
    *&v66 = aBlock;
    *(&v66 + 1) = v33;
    v67 = v34;
    v65 = 0;
    sub_248CC9130(&aBlock, v74);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECB418, &qword_248CDEB10);
    sub_248CD455C();

    sub_248CC918C(&aBlock);
    goto LABEL_24;
  }

  v61 = v8;
  v62 = v3;
  v63 = v12;
  v64 = v66;
  v23 = [v64 domain];
  v24 = sub_248CD45EC();
  v26 = v25;

  v27 = *MEMORY[0x277CD4770];
  if (v24 == sub_248CD45EC() && v26 == v28)
  {
  }

  else
  {
    v35 = sub_248CD47BC();

    if ((v35 & 1) == 0)
    {
LABEL_19:
      v49 = v63;
      if (qword_27EECB870 != -1)
      {
        swift_once();
      }

      v50 = sub_248CD436C();
      __swift_project_value_buffer(v50, qword_27EECB878);
      v51 = v64;
      v52 = sub_248CD434C();
      v53 = sub_248CD471C();

      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        *v54 = 138412290;
        *(v54 + 4) = v51;
        *v55 = v14;
        v56 = v51;
        _os_log_impl(&dword_248C7E000, v52, v53, "Cannot evaluate authentication policy for Safety Check, policy error %@, returning.", v54, 0xCu);
        sub_248CCFEDC(v55, &qword_27EECB4C8, &qword_248CDEB88);
        MEMORY[0x24C1E8FE0](v55, -1, -1);
        MEMORY[0x24C1E8FE0](v54, -1, -1);
      }

      v66 = *(v1 + 56);
      LOBYTE(aBlock) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECB420, &qword_248CDEB18);
      sub_248CD450C();
      v57 = *(v1 + 40);
      v58 = *(v1 + 48);
      aBlock = *(v1 + 32);
      *&v66 = aBlock;
      *(&v66 + 1) = v57;
      v67 = v58;
      v65 = 0;
      sub_248CC9130(&aBlock, v74);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECB418, &qword_248CDEB10);
      sub_248CD455C();

      sub_248CC918C(&aBlock);
LABEL_24:

      goto LABEL_25;
    }
  }

  if ([v64 code] != -5)
  {
    goto LABEL_19;
  }

  if (qword_27EECB870 != -1)
  {
    swift_once();
  }

  v36 = sub_248CD436C();
  __swift_project_value_buffer(v36, qword_27EECB878);
  v37 = sub_248CD434C();
  v38 = sub_248CD470C();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&dword_248C7E000, v37, v38, "authForSafetyCheck: Cannot evaluate authentication policy for Safety Check, no passcode set, allowing access.", v39, 2u);
    MEMORY[0x24C1E8FE0](v39, -1, -1);
  }

  sub_248CC8610(0, &qword_27EECB4D0, 0x277D85C78);
  v40 = sub_248CD474C();
  v41 = swift_allocObject();
  v42 = *(v1 + 80);
  v41[5] = *(v1 + 64);
  v41[6] = v42;
  v43 = *(v1 + 112);
  v41[7] = *(v1 + 96);
  v41[8] = v43;
  v44 = *(v1 + 16);
  v41[1] = *v1;
  v41[2] = v44;
  v45 = *(v1 + 48);
  v41[3] = *(v1 + 32);
  v41[4] = v45;
  v72 = sub_248CCFF70;
  v73 = v41;
  aBlock = MEMORY[0x277D85DD0];
  v69 = 1107296256;
  v70 = sub_248CCEC80;
  v71 = &block_descriptor_0;
  v46 = _Block_copy(&aBlock);
  sub_248CC9618(v1, &v66);

  sub_248CD45AC();
  *&v66 = MEMORY[0x277D84F90];
  sub_248CCF728();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECB4E0, &unk_248CDEB90);
  sub_248CCFD04(&qword_27EECB4E8, &qword_27EECB4E0, &unk_248CDEB90);
  sub_248CD477C();
  v47 = v40;
  MEMORY[0x24C1E8570](0, v11, v6, v46);

  _Block_release(v46);
  v48 = v64;

  (*(v62 + 8))(v6, v2);
  (*(v61 + 8))(v11, v7);

LABEL_25:
  v59 = *MEMORY[0x277D85DE8];
}

uint64_t sub_248CCB7AC()
{
  v2 = *(v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECB420, &qword_248CDEB18);
  sub_248CD450C();
  v3 = *(v0 + 32);
  v4 = *(v0 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECB418, &qword_248CDEB10);
  return sub_248CD455C();
}

uint64_t sub_248CCB83C@<X0>(uint64_t a1@<X8>)
{
  sub_248CCE660();
  sub_248CCB8F4();
  result = sub_248CD447C();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
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

unint64_t sub_248CCB8F4()
{
  result = qword_27EECB488;
  if (!qword_27EECB488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EECB488);
  }

  return result;
}

uint64_t sub_248CCB948(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECB368, &qword_248CDE7F0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v15 - v4;
  v15 = *(a1 + 56);
  v17 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECB420, &qword_248CDEB18);
  sub_248CD450C();
  v15 = *(a1 + 32);
  v16 = *(a1 + 48);
  v17 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECB418, &qword_248CDEB10);
  sub_248CD455C();
  v6 = sub_248CD46CC();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_248CD46AC();
  sub_248CC9618(a1, &v15);
  v7 = sub_248CD469C();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  *(v8 + 16) = v7;
  *(v8 + 24) = v9;
  v10 = *(a1 + 80);
  *(v8 + 96) = *(a1 + 64);
  *(v8 + 112) = v10;
  v11 = *(a1 + 112);
  *(v8 + 128) = *(a1 + 96);
  *(v8 + 144) = v11;
  v12 = *(a1 + 16);
  *(v8 + 32) = *a1;
  *(v8 + 48) = v12;
  v13 = *(a1 + 48);
  *(v8 + 64) = *(a1 + 32);
  *(v8 + 80) = v13;
  sub_248CC2C08(0, 0, v5, &unk_248CDEE00, v8);
}

uint64_t sub_248CCBB1C@<X0>(void *a1@<X8>)
{
  v5 = *(v1 + 120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECB450, &qword_248CDEB48);
  result = sub_248CD44FC();
  *a1 = v4;
  return result;
}

unint64_t sub_248CCBB74()
{
  result = qword_27EECB4A0;
  if (!qword_27EECB4A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EECB498, &qword_248CDEB78);
    sub_248CCBBF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EECB4A0);
  }

  return result;
}

unint64_t sub_248CCBBF8()
{
  result = qword_27EECB4A8;
  if (!qword_27EECB4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EECB4A8);
  }

  return result;
}

uint64_t sub_248CCBC4C(_OWORD *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECB368, &qword_248CDE7F0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v15[-v4];
  v6 = sub_248CD46CC();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_248CD46AC();
  sub_248CC9618(a1, v15);
  v7 = sub_248CD469C();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  *(v8 + 16) = v7;
  *(v8 + 24) = v9;
  v10 = a1[5];
  *(v8 + 96) = a1[4];
  *(v8 + 112) = v10;
  v11 = a1[7];
  *(v8 + 128) = a1[6];
  *(v8 + 144) = v11;
  v12 = a1[1];
  *(v8 + 32) = *a1;
  *(v8 + 48) = v12;
  v13 = a1[3];
  *(v8 + 64) = a1[2];
  *(v8 + 80) = v13;
  sub_248CC2C08(0, 0, v5, &unk_248CDEDF8, v8);
}

uint64_t sub_248CCBDBC(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECB368, &qword_248CDE7F0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v18[-v7];
  v9 = sub_248CD46CC();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_248CD46AC();
  sub_248CC9618(v2, v18);
  v10 = sub_248CD469C();
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D85700];
  *(v11 + 16) = v10;
  *(v11 + 24) = v12;
  v13 = v4[5];
  *(v11 + 96) = v4[4];
  *(v11 + 112) = v13;
  v14 = v4[7];
  *(v11 + 128) = v4[6];
  *(v11 + 144) = v14;
  v15 = v4[1];
  *(v11 + 32) = *v4;
  *(v11 + 48) = v15;
  v16 = v4[3];
  *(v11 + 64) = v4[2];
  *(v11 + 80) = v16;
  sub_248CC2C08(0, 0, v8, a2, v11);
}

uint64_t sub_248CCBF00()
{
  v1 = v0;
  v4 = *(v0 + 104);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECB430, &qword_248CDEB28);
  sub_248CD44FC();
  result = v7;
  if (v7)
  {
    v3 = *(v7 + 16);

    if (!v3)
    {
      v5 = *(v1 + 48);
      v6 = *(v1 + 64);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECB418, &qword_248CDEB10);
      return sub_248CD455C();
    }
  }

  return result;
}

unint64_t sub_248CCBF9C()
{
  result = qword_27EECB4B0;
  if (!qword_27EECB4B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EECB468, &qword_248CDEB60);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EECB460, &qword_248CDEB58);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EECB498, &qword_248CDEB78);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EECB470, &qword_248CDEB68);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EECB478, &qword_248CDEB70);
    sub_248CCFD04(&qword_27EECB480, &qword_27EECB470, &qword_248CDEB68);
    sub_248CCB8F4();
    sub_248CCFD04(&qword_27EECB490, &qword_27EECB478, &qword_248CDEB70);
    swift_getOpaqueTypeConformance2();
    sub_248CCBB74();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EECB4B0);
  }

  return result;
}

uint64_t sub_248CCC188()
{
  v2 = *(v0 + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECB420, &qword_248CDEB18);
  return sub_248CD450C();
}

uint64_t sub_248CCC1E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[23] = a4;
  sub_248CD46AC();
  v4[24] = sub_248CD469C();
  v6 = sub_248CD468C();
  v4[25] = v6;
  v4[26] = v5;

  return MEMORY[0x2822009F8](sub_248CCC278, v6, v5);
}

uint64_t sub_248CCC278()
{
  v1 = *(v0 + 184);
  *(v0 + 64) = *(v1 + 88);
  *(v0 + 80) = *(v1 + 88);
  *(v0 + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECB430, &qword_248CDEB28);
  sub_248CD44FC();
  if (*(v0 + 160))
  {

    v2 = *(v0 + 216);
    *(v0 + 96) = *(v0 + 64);
    sub_248CD44FC();
    v3 = *(v0 + 168);
    if (v3 && (v4 = *(v3 + 16), , v4))
    {
      v5 = swift_task_alloc();
      *(v0 + 232) = v5;
      *v5 = v0;
      v5[1] = sub_248CCC728;
      v6 = *(v0 + 184);

      return sub_248CCD3D0();
    }

    else
    {
      v9 = *(v0 + 184);
      v8 = *(v0 + 192);

      *(v0 + 112) = *(v9 + 56);
      *(v0 + 33) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECB420, &qword_248CDEB18);
      sub_248CD450C();
      v10 = *(v9 + 32);
      *(v0 + 32) = *(v9 + 48);
      *(v0 + 16) = v10;
      *(v0 + 34) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECB418, &qword_248CDEB10);
      sub_248CD455C();
      v11 = *(v0 + 8);

      return v11();
    }
  }

  else
  {
    v12 = swift_task_alloc();
    *(v0 + 224) = v12;
    *v12 = v0;
    v12[1] = sub_248CCC498;
    v13 = *(v0 + 184);

    return sub_248CCCA20();
  }
}

uint64_t sub_248CCC498()
{
  v1 = *v0;
  v2 = *(*v0 + 224);
  v6 = *v0;

  v3 = *(v1 + 208);
  v4 = *(v1 + 200);

  return MEMORY[0x2822009F8](sub_248CCC5B8, v4, v3);
}

uint64_t sub_248CCC5B8()
{
  v1 = *(v0 + 216);
  *(v0 + 96) = *(v0 + 64);
  sub_248CD44FC();
  v2 = *(v0 + 168);
  if (v2 && (v3 = *(v2 + 16), , v3))
  {
    v4 = swift_task_alloc();
    *(v0 + 232) = v4;
    *v4 = v0;
    v4[1] = sub_248CCC728;
    v5 = *(v0 + 184);

    return sub_248CCD3D0();
  }

  else
  {
    v8 = *(v0 + 184);
    v7 = *(v0 + 192);

    *(v0 + 112) = *(v8 + 56);
    *(v0 + 33) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECB420, &qword_248CDEB18);
    sub_248CD450C();
    v9 = *(v8 + 32);
    *(v0 + 32) = *(v8 + 48);
    *(v0 + 16) = v9;
    *(v0 + 34) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECB418, &qword_248CDEB10);
    sub_248CD455C();
    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_248CCC728(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v7 = *v1;
  *(*v1 + 240) = a1;

  v4 = *(v2 + 208);
  v5 = *(v2 + 200);

  return MEMORY[0x2822009F8](sub_248CCC850, v5, v4);
}

uint64_t sub_248CCC850()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 192);

  if (v1)
  {
    v3 = *(*(v0 + 184) + 104);
    *(v0 + 176) = *(v0 + 240);
    *(v0 + 144) = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECB450, &qword_248CDEB48);
    sub_248CD450C();
  }

  else
  {
    if (qword_27EECB870 != -1)
    {
      swift_once();
    }

    v4 = sub_248CD436C();
    __swift_project_value_buffer(v4, qword_27EECB878);
    v5 = sub_248CD434C();
    v6 = sub_248CD472C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_248C7E000, v5, v6, "Asked to present safety check, controller is nil (this should never happen!)", v7, 2u);
      MEMORY[0x24C1E8FE0](v7, -1, -1);
    }

    v8 = *(v0 + 184);

    *(v0 + 128) = *(v8 + 56);
    *(v0 + 35) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECB420, &qword_248CDEB18);
    sub_248CD450C();
    v9 = *(v8 + 32);
    *(v0 + 56) = *(v8 + 48);
    *(v0 + 40) = v9;
    *(v0 + 36) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECB418, &qword_248CDEB10);
    sub_248CD455C();
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_248CCCA20()
{
  v1[57] = v0;
  v2 = sub_248CD431C();
  v1[58] = v2;
  v3 = *(v2 - 8);
  v1[59] = v3;
  v4 = *(v3 + 64) + 15;
  v1[60] = swift_task_alloc();
  sub_248CD46AC();
  v1[61] = sub_248CD469C();
  v6 = sub_248CD468C();
  v1[62] = v6;
  v1[63] = v5;

  return MEMORY[0x2822009F8](sub_248CCCB14, v6, v5);
}

uint64_t sub_248CCCB14()
{
  v1 = *(v0 + 456);
  *(v0 + 272) = *v1;
  *(v0 + 288) = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECB3F0, &qword_248CDEAE8);
  sub_248CD44FC();
  if (*(v0 + 384))
  {
    *(v0 + 352) = *(*(v0 + 456) + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECB408, &qword_248CDEB00);
    sub_248CD44FC();
    v2 = *(v0 + 432);
    if (!v2 || (v3 = *(v2 + 16), , !v3))
    {
      v18 = v0 + 80;
      v19 = *(*(v0 + 456) + 120);
      sub_248CC8610(0, &qword_27EECB3A0, 0x277CBDA58);
      v20 = sub_248CD464C();
      *(v0 + 512) = v20;

      *(v0 + 80) = v0;
      *(v0 + 120) = v0 + 440;
      *(v0 + 88) = sub_248CCD070;
      v21 = swift_continuation_init();
      *(v0 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECB390, &qword_248CDE840);
      *(v0 + 208) = MEMORY[0x277D85DD0];
      *(v0 + 216) = 1107296256;
      *(v0 + 224) = sub_248CC5778;
      *(v0 + 232) = &block_descriptor_64;
      *(v0 + 240) = v21;
      [v19 isSharingWithContacts:v20 completion:v0 + 208];
      goto LABEL_32;
    }
  }

  *(v0 + 304) = *(*(v0 + 456) + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECB408, &qword_248CDEB00);
  sub_248CD44FC();
  v4 = *(v0 + 400);
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v35 = *(v0 + 400);
    v38 = MEMORY[0x277D84F90];
    v6 = *(v4 + 16);
    if (v6)
    {
      v7 = *(v0 + 472);
      v9 = *(v7 + 16);
      v8 = v7 + 16;
      v36 = v9;
      v10 = v4 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
      v11 = *(v8 + 56);
      v12 = MEMORY[0x277D84F90];
      do
      {
        v13 = *(v0 + 480);
        v14 = *(v0 + 464);
        v36(v13, v10, v14);
        v15 = sub_248CC584C();
        v16 = (*(v8 - 8))(v13, v14);
        if (v15)
        {
          MEMORY[0x24C1E8450](v16);
          if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v17 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_248CD466C();
          }

          sub_248CD467C();
          v12 = v38;
        }

        v10 += v11;
        --v6;
      }

      while (v6);
    }

    else
    {
      v12 = MEMORY[0x277D84F90];
    }

    v5 = MEMORY[0x277D84F90];
    v22 = v12;
  }

  else
  {
    v22 = MEMORY[0x277D84F90];
  }

  *(v0 + 392) = v22;
  *(v0 + 320) = *(v0 + 272);
  v23 = sub_248CD44FC();
  if (*(v0 + 408))
  {
    v24 = *(v0 + 408);
  }

  else
  {
    v24 = v5;
  }

  if (v24 >> 62)
  {
    v23 = sub_248CD479C();
    v25 = v23;
    if (v23)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v25)
    {
LABEL_22:
      if (v25 < 1)
      {
        __break(1u);
        return MEMORY[0x282200938](v23);
      }

      for (i = 0; i != v25; ++i)
      {
        if ((v24 & 0xC000000000000001) != 0)
        {
          v27 = MEMORY[0x24C1E85A0](i, v24);
        }

        else
        {
          v27 = *(v24 + 8 * i + 32);
        }

        v28 = v27;
        [objc_allocWithZone(MEMORY[0x277D054A0]) initWithContact_];
        MEMORY[0x24C1E8450]();
        if (*((*(v0 + 392) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 392) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v37 = *((*(v0 + 392) & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_248CD466C();
        }

        sub_248CD467C();
      }

      v29 = *(v0 + 392);
    }
  }

  v18 = v0 + 16;
  v30 = *(v0 + 456);

  v31 = *(v30 + 120);
  sub_248CC8610(0, &qword_27EECB388, 0x277D054A0);
  v32 = sub_248CD464C();
  *(v0 + 520) = v32;

  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 416;
  *(v0 + 24) = sub_248CCD220;
  v33 = swift_continuation_init();
  *(v0 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECB390, &qword_248CDE840);
  *(v0 + 144) = MEMORY[0x277D85DD0];
  *(v0 + 152) = 1107296256;
  *(v0 + 160) = sub_248CC5778;
  *(v0 + 168) = &block_descriptor_61;
  *(v0 + 176) = v33;
  [v31 isSharingWith:v32 completion:v0 + 144];
LABEL_32:
  v23 = v18;

  return MEMORY[0x282200938](v23);
}

uint64_t sub_248CCD070()
{
  v1 = *(*v0 + 504);
  v2 = *(*v0 + 496);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_248CCD178, v2, v1);
}

uint64_t sub_248CCD178()
{
  v1 = *(v0 + 512);
  v2 = *(v0 + 488);
  v3 = *(v0 + 456);

  v4 = *(v0 + 440);
  *(v0 + 368) = *(v3 + 88);
  *(v0 + 448) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECB430, &qword_248CDEB28);
  sub_248CD450C();

  v5 = *(v0 + 480);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_248CCD220()
{
  v1 = *(*v0 + 504);
  v2 = *(*v0 + 496);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_248CCD328, v2, v1);
}

uint64_t sub_248CCD328()
{
  v1 = *(v0 + 520);
  v2 = *(v0 + 488);
  v3 = *(v0 + 456);

  v4 = *(v0 + 416);
  *(v0 + 336) = *(v3 + 88);
  *(v0 + 424) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECB430, &qword_248CDEB28);
  sub_248CD450C();

  v5 = *(v0 + 480);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_248CCD3D0()
{
  v1[58] = v0;
  v2 = sub_248CD431C();
  v1[59] = v2;
  v3 = *(v2 - 8);
  v1[60] = v3;
  v4 = *(v3 + 64) + 15;
  v1[61] = swift_task_alloc();
  sub_248CD46AC();
  v1[62] = sub_248CD469C();
  v6 = sub_248CD468C();
  v1[63] = v6;
  v1[64] = v5;

  return MEMORY[0x2822009F8](sub_248CCD4C4, v6, v5);
}

uint64_t sub_248CCD4C4()
{
  v1 = *(*(v0 + 464) + 120);
  *(v0 + 520) = v1;
  if ([v1 isFetchNeeded])
  {
    if (qword_27EECB870 != -1)
    {
      swift_once();
    }

    v2 = sub_248CD436C();
    __swift_project_value_buffer(v2, qword_27EECB878);
    v3 = sub_248CD434C();
    v4 = sub_248CD473C();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_248C7E000, v3, v4, "Warning: Stale sharing permissions model, refreshing. Please add a prefetch call", v5, 2u);
      MEMORY[0x24C1E8FE0](v5, -1, -1);
    }

    *(v0 + 144) = v0;
    *(v0 + 152) = sub_248CCDB34;
    v6 = swift_continuation_init();
    *(v0 + 392) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECB3E0, &unk_248CDEAD0);
    *(v0 + 336) = MEMORY[0x277D85DD0];
    *(v0 + 344) = 1107296256;
    *(v0 + 352) = sub_248CC2BD4;
    *(v0 + 360) = &block_descriptor_53;
    *(v0 + 368) = v6;
    [v1 fetchSharingWithCompletion_];
    v7 = v0 + 144;
    goto LABEL_26;
  }

  *(v0 + 400) = **(v0 + 464);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECB3F0, &qword_248CDEAE8);
  sub_248CD44FC();
  if (*(v0 + 432))
  {
    v8 = v0 + 80;
    v9 = *(v0 + 520);
    sub_248CC8610(0, &qword_27EECB3A0, 0x277CBDA58);
    v10 = sub_248CD464C();
    *(v0 + 528) = v10;

    *(v0 + 80) = v0;
    *(v0 + 120) = v0 + 456;
    *(v0 + 88) = sub_248CCE118;
    v11 = swift_continuation_init();
    *(v0 + 328) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECB398, &unk_248CDE848);
    *(v0 + 272) = MEMORY[0x277D85DD0];
    *(v0 + 280) = 1107296256;
    *(v0 + 288) = sub_248CC57E8;
    *(v0 + 296) = &block_descriptor_50;
    *(v0 + 304) = v11;
    [v9 safetyCheckControllerWithPreview:0 forContacts:v10 completion:{v0 + 272, v36}];
LABEL_25:
    v7 = v8;
LABEL_26:

    return MEMORY[0x282200938](v7);
  }

  *(v0 + 416) = *(*(v0 + 464) + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECB408, &qword_248CDEB00);
  sub_248CD44FC();
  v12 = *(v0 + 440);
  if (v12)
  {
    v38 = MEMORY[0x277D84F90];
    v13 = *(v12 + 16);
    v37 = *(v0 + 440);
    if (v13)
    {
      v14 = *(v0 + 480);
      v17 = *(v14 + 16);
      v15 = v14 + 16;
      v16 = v17;
      v18 = v12 + ((*(v15 + 64) + 32) & ~*(v15 + 64));
      v19 = *(v15 + 56);
      do
      {
        v20 = *(v0 + 488);
        v21 = *(v0 + 472);
        v16(v20, v18, v21);
        v22 = sub_248CC584C();
        v23 = (*(v15 - 8))(v20, v21);
        if (v22)
        {
          MEMORY[0x24C1E8450](v23);
          if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v24 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_248CD466C();
          }

          sub_248CD467C();
        }

        v18 += v19;
        --v13;
      }

      while (v13);
    }

    v8 = v0 + 16;
    v33 = *(v0 + 520);

    sub_248CC8610(0, &qword_27EECB388, 0x277D054A0);
    v34 = sub_248CD464C();
    *(v0 + 536) = v34;

    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 448;
    *(v0 + 24) = sub_248CCE298;
    v35 = swift_continuation_init();
    *(v0 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECB398, &unk_248CDE848);
    *(v0 + 208) = MEMORY[0x277D85DD0];
    *(v0 + 216) = 1107296256;
    *(v0 + 224) = sub_248CC57E8;
    *(v0 + 232) = &block_descriptor_47;
    *(v0 + 240) = v35;
    [v33 safetyCheckControllerWithPreview:0 forHandles:v34 completion:{v0 + 208, v37}];
    goto LABEL_25;
  }

  v25 = *(v0 + 496);

  if (qword_27EECB870 != -1)
  {
    swift_once();
  }

  v26 = sub_248CD436C();
  __swift_project_value_buffer(v26, qword_27EECB878);
  v27 = sub_248CD434C();
  v28 = sub_248CD471C();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_248C7E000, v27, v28, "SafetyCheckBlockingModifier has neither contacts nor handles", v29, 2u);
    MEMORY[0x24C1E8FE0](v29, -1, -1);
  }

  v30 = *(v0 + 488);

  v31 = *(v0 + 8);

  return v31(0);
}

uint64_t sub_248CCDB34()
{
  v1 = *(*v0 + 512);
  v2 = *(*v0 + 504);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_248CCDC3C, v2, v1);
}

uint64_t sub_248CCDC3C()
{
  *(v0 + 400) = **(v0 + 464);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECB3F0, &qword_248CDEAE8);
  sub_248CD44FC();
  if (*(v0 + 432))
  {
    v1 = v0 + 80;
    v2 = *(v0 + 520);
    sub_248CC8610(0, &qword_27EECB3A0, 0x277CBDA58);
    v3 = sub_248CD464C();
    *(v0 + 528) = v3;

    *(v0 + 80) = v0;
    *(v0 + 120) = v0 + 456;
    *(v0 + 88) = sub_248CCE118;
    v4 = swift_continuation_init();
    *(v0 + 328) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECB398, &unk_248CDE848);
    *(v0 + 272) = MEMORY[0x277D85DD0];
    *(v0 + 280) = 1107296256;
    *(v0 + 288) = sub_248CC57E8;
    *(v0 + 296) = &block_descriptor_50;
    *(v0 + 304) = v4;
    [v2 safetyCheckControllerWithPreview:0 forContacts:v3 completion:{v0 + 272, v29}];
LABEL_19:

    return MEMORY[0x282200938](v1);
  }

  *(v0 + 416) = *(*(v0 + 464) + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECB408, &qword_248CDEB00);
  sub_248CD44FC();
  v5 = *(v0 + 440);
  if (v5)
  {
    v31 = MEMORY[0x277D84F90];
    v6 = *(v5 + 16);
    v30 = *(v0 + 440);
    if (v6)
    {
      v7 = *(v0 + 480);
      v10 = *(v7 + 16);
      v8 = v7 + 16;
      v9 = v10;
      v11 = v5 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
      v12 = *(v8 + 56);
      do
      {
        v13 = *(v0 + 488);
        v14 = *(v0 + 472);
        v9(v13, v11, v14);
        v15 = sub_248CC584C();
        v16 = (*(v8 - 8))(v13, v14);
        if (v15)
        {
          MEMORY[0x24C1E8450](v16);
          if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v17 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_248CD466C();
          }

          sub_248CD467C();
        }

        v11 += v12;
        --v6;
      }

      while (v6);
    }

    v1 = v0 + 16;
    v26 = *(v0 + 520);

    sub_248CC8610(0, &qword_27EECB388, 0x277D054A0);
    v27 = sub_248CD464C();
    *(v0 + 536) = v27;

    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 448;
    *(v0 + 24) = sub_248CCE298;
    v28 = swift_continuation_init();
    *(v0 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECB398, &unk_248CDE848);
    *(v0 + 208) = MEMORY[0x277D85DD0];
    *(v0 + 216) = 1107296256;
    *(v0 + 224) = sub_248CC57E8;
    *(v0 + 232) = &block_descriptor_47;
    *(v0 + 240) = v28;
    [v26 safetyCheckControllerWithPreview:0 forHandles:v27 completion:{v0 + 208, v30}];
    goto LABEL_19;
  }

  v18 = *(v0 + 496);

  if (qword_27EECB870 != -1)
  {
    swift_once();
  }

  v19 = sub_248CD436C();
  __swift_project_value_buffer(v19, qword_27EECB878);
  v20 = sub_248CD434C();
  v21 = sub_248CD471C();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_248C7E000, v20, v21, "SafetyCheckBlockingModifier has neither contacts nor handles", v22, 2u);
    MEMORY[0x24C1E8FE0](v22, -1, -1);
  }

  v23 = *(v0 + 488);

  v24 = *(v0 + 8);

  return v24(0);
}

uint64_t sub_248CCE118()
{
  v1 = *(*v0 + 512);
  v2 = *(*v0 + 504);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_248CCE220, v2, v1);
}

uint64_t sub_248CCE220()
{
  v1 = v0[66];
  v2 = v0[62];

  v3 = v0[57];

  v4 = v0[61];

  v5 = v0[1];

  return v5(v3);
}

uint64_t sub_248CCE298()
{
  v1 = *(*v0 + 512);
  v2 = *(*v0 + 504);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_248CCE3A0, v2, v1);
}

uint64_t sub_248CCE3A0()
{
  v1 = v0[67];
  v2 = v0[62];

  v3 = v0[56];

  v4 = v0[61];

  v5 = v0[1];

  return v5(v3);
}

uint64_t sub_248CCE418()
{
  v0[2] = sub_248CD46AC();
  v0[3] = sub_248CD469C();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_248CCE4C4;

  return sub_248CCCA20();
}

uint64_t sub_248CCE4C4()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v7 = *v0;

  v5 = sub_248CD468C();

  return MEMORY[0x2822009F8](sub_248CCE600, v5, v4);
}

uint64_t sub_248CCE600()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_248CCE660()
{
  type metadata accessor for DSBlockingController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_248CD45DC();
  v3 = sub_248CD45DC();
  v4 = sub_248CD45DC();
  v5 = [v1 localizedStringForKey:v2 value:v3 table:v4];

  v6 = sub_248CD45EC();
  return v6;
}

uint64_t sub_248CCE760(char a1, void *a2, _OWORD *a3)
{
  v6 = sub_248CD459C();
  v35 = *(v6 - 8);
  v7 = *(v35 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_248CD45BC();
  v33 = *(v34 - 8);
  v10 = *(v33 + 64);
  MEMORY[0x28223BE20](v34);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EECB870 != -1)
  {
    swift_once();
  }

  v13 = sub_248CD436C();
  __swift_project_value_buffer(v13, qword_27EECB878);
  v14 = sub_248CD434C();
  v15 = sub_248CD470C();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 67109120;
    *(v16 + 4) = a1 & 1;
    _os_log_impl(&dword_248C7E000, v14, v15, "authForSafetyCheck: Asked user to auth with success: %{BOOL}d", v16, 8u);
    MEMORY[0x24C1E8FE0](v16, -1, -1);
  }

  if (a2)
  {
    v17 = a2;
    v18 = sub_248CD434C();
    v19 = sub_248CD471C();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      v22 = a2;
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 4) = v23;
      *v21 = v23;
      _os_log_impl(&dword_248C7E000, v18, v19, "Error while evaluating authentication policy for Safety Check, error %@", v20, 0xCu);
      sub_248CCFEDC(v21, &qword_27EECB4C8, &qword_248CDEB88);
      MEMORY[0x24C1E8FE0](v21, -1, -1);
      MEMORY[0x24C1E8FE0](v20, -1, -1);
    }
  }

  if (a1)
  {
    sub_248CC8610(0, &qword_27EECB4D0, 0x277D85C78);
    v24 = sub_248CD474C();
    v25 = swift_allocObject();
    v26 = a3[5];
    v25[5] = a3[4];
    v25[6] = v26;
    v27 = a3[7];
    v25[7] = a3[6];
    v25[8] = v27;
    v28 = a3[1];
    v25[1] = *a3;
    v25[2] = v28;
    v29 = a3[3];
    v25[3] = a3[2];
    v25[4] = v29;
    aBlock[4] = sub_248CCFAB0;
    aBlock[5] = v25;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_248CCEC80;
    aBlock[3] = &block_descriptor_81;
    v30 = _Block_copy(aBlock);
    sub_248CC9618(a3, &v36);

    sub_248CD45AC();
    *&v36 = MEMORY[0x277D84F90];
    sub_248CCF728();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECB4E0, &unk_248CDEB90);
    sub_248CCFD04(&qword_27EECB4E8, &qword_27EECB4E0, &unk_248CDEB90);
    sub_248CD477C();
    MEMORY[0x24C1E8570](0, v12, v9, v30);
    _Block_release(v30);

    (*(v35 + 8))(v9, v6);
    return (*(v33 + 8))(v12, v34);
  }

  else
  {
    v36 = *(a3 + 56);
    LOBYTE(aBlock[0]) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECB420, &qword_248CDEB18);
    sub_248CD450C();
    v36 = a3[2];
    v37 = *(a3 + 48);
    LOBYTE(aBlock[0]) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECB418, &qword_248CDEB10);
    return sub_248CD455C();
  }
}

uint64_t sub_248CCEC80(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void sub_248CCECC4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

__n128 sub_248CCED3C@<Q0>(uint64_t a1@<X2>, uint64_t a2@<X3>, char a3@<W4>, uint64_t a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECB3E8, &qword_248CDEAE0);
  sub_248CD44EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECB400, &qword_248CDEAF8);
  sub_248CD44EC();
  sub_248CD44EC();
  sub_248CD44EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECB438, &qword_248CDEB30);
  sub_248CD44EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECB448, &qword_248CDEB40);
  sub_248CD44EC();
  v6 = [objc_allocWithZone(DSSafetyCheckWhenBlocking) init];
  result = v10;
  *a4 = v10;
  *(a4 + 16) = v10;
  *(a4 + 32) = a1;
  *(a4 + 40) = a2;
  *(a4 + 48) = a3;
  *(a4 + 56) = v10.n128_u8[0];
  *(a4 + 64) = v10.n128_u64[1];
  *(a4 + 72) = v10.n128_u8[0];
  *(a4 + 80) = v10.n128_u64[1];
  *(a4 + 88) = v10;
  *(a4 + 104) = v10;
  *(a4 + 120) = v6;
  return result;
}

uint64_t sub_248CCEF18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = v2[7];
  v4 = *v2;
  v5 = v2[1];
  v6 = v2[2];
  v7 = v2[3];
  return sub_248CC9EEC(a1, a2);
}

uint64_t View.showSafetyCheck(for:isPresented:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECB3E8, &qword_248CDEAE0);
  sub_248CD44EC();
  v13 = v23[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECB400, &qword_248CDEAF8);
  sub_248CD44EC();
  v12 = v23[0];
  sub_248CD44EC();
  v8 = *(&v23[0] + 1);
  sub_248CD44EC();
  v9 = *(&v23[0] + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECB438, &qword_248CDEB30);
  sub_248CD44EC();
  v10 = v23[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECB448, &qword_248CDEB40);
  sub_248CD44EC();
  v17 = v13;
  v18 = v12;
  *&v19 = a2;
  *(&v19 + 1) = a3;
  LOBYTE(v20) = a4;
  BYTE8(v20) = v23[0];
  *&v21 = v8;
  BYTE8(v21) = v23[0];
  *v22 = v9;
  *&v22[8] = v10;
  *&v22[24] = v23[0];
  *&v22[40] = [objc_allocWithZone(DSSafetyCheckWhenBlocking) init];

  MEMORY[0x24C1E82E0](&v17, a5, &type metadata for SafetyCheckBlockingModifier, a6);
  v23[4] = v21;
  v23[5] = *v22;
  v23[6] = *&v22[16];
  v23[7] = *&v22[32];
  v23[0] = v17;
  v23[1] = v18;
  v23[2] = v19;
  v23[3] = v20;
  return sub_248CCF8C0(v23);
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECB3E8, &qword_248CDEAE0);
  sub_248CD44EC();
  v13 = v23[0];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECB400, &qword_248CDEAF8);
  sub_248CD44EC();
  v12 = v23[0];
  sub_248CD44EC();
  v8 = *(&v23[0] + 1);
  sub_248CD44EC();
  v9 = *(&v23[0] + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECB438, &qword_248CDEB30);
  sub_248CD44EC();
  v10 = v23[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECB448, &qword_248CDEB40);
  sub_248CD44EC();
  v17 = v13;
  v18 = v12;
  *&v19 = a2;
  *(&v19 + 1) = a3;
  LOBYTE(v20) = a4;
  BYTE8(v20) = v23[0];
  *&v21 = v8;
  BYTE8(v21) = v23[0];
  *v22 = v9;
  *&v22[8] = v10;
  *&v22[24] = v23[0];
  *&v22[40] = [objc_allocWithZone(DSSafetyCheckWhenBlocking) init];

  MEMORY[0x24C1E82E0](&v17, a5, &type metadata for SafetyCheckBlockingModifier, a6);
  v23[4] = v21;
  v23[5] = *v22;
  v23[6] = *&v22[16];
  v23[7] = *&v22[32];
  v23[0] = v17;
  v23[1] = v18;
  v23[2] = v19;
  v23[3] = v20;
  return sub_248CCF8C0(v23);
}

uint64_t sub_248CCF35C()
{
  v0 = sub_248CD436C();
  __swift_allocate_value_buffer(v0, qword_27EECB878);
  __swift_project_value_buffer(v0, qword_27EECB878);
  return sub_248CD435C();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

id sub_248CCF464(uint64_t a1, void *a2)
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = v3;
    v5 = a2;
    return v4;
  }

  else
  {
    v7 = objc_allocWithZone(MEMORY[0x277D757A0]);

    return [v7 initWithRootViewController_];
  }
}

id sub_248CCF4E8()
{
  v1 = *v0;
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    v4 = v1;
    return v3;
  }

  else
  {
    v6 = objc_allocWithZone(MEMORY[0x277D757A0]);

    return [v6 initWithRootViewController_];
  }
}

uint64_t sub_248CCF5B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_248CCFA5C();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_248CCF614(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_248CCFA5C();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_248CCF694()
{
  sub_248CCFA5C();
  sub_248CD445C();
  __break(1u);
}

unint64_t sub_248CCF6BC()
{
  result = qword_27EECB4C0;
  if (!qword_27EECB4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EECB4C0);
  }

  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_248CCF728()
{
  result = qword_27EECB4D8;
  if (!qword_27EECB4D8)
  {
    sub_248CD459C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EECB4D8);
  }

  return result;
}

uint64_t sub_248CCF788()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_248CC8A30;

  return sub_248CCE418();
}

uint64_t sub_248CCF818()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_248CC8A30;

  return sub_248CCC1E0(v2, v3, v4, v0 + 32);
}

__n128 __swift_memcpy128_8(uint64_t a1, __int128 *a2)
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
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_248CCF940(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_248CCF988(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_248CCFA08()
{
  result = qword_27EECB4F0;
  if (!qword_27EECB4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EECB4F0);
  }

  return result;
}

unint64_t sub_248CCFA5C()
{
  result = qword_27EECB4F8;
  if (!qword_27EECB4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EECB4F8);
  }

  return result;
}

uint64_t sub_248CCFAB4()
{
  v2 = *(v0 + 88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECB420, &qword_248CDEB18);
  return sub_248CD450C();
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

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 48);

  v5 = *(v0 + 56);

  v6 = *(v0 + 64);

  v7 = *(v0 + 72);

  v8 = *(v0 + 96);

  v9 = *(v0 + 112);

  v10 = *(v0 + 120);

  v11 = *(v0 + 128);

  v12 = *(v0 + 144);

  return MEMORY[0x2821FE8E8](v0, 160, 7);
}

uint64_t sub_248CCFC10()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_248CC6BCC;

  return sub_248CCE418();
}

void sub_248CCFCA0()
{
  v1 = *(v0 + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECB420, &qword_248CDEB18);
  sub_248CD450C();
  sub_248CCAE54();
}

uint64_t sub_248CCFD04(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t objectdestroy_15Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  v4 = *(v0 + 40);

  v5 = *(v0 + 48);

  v6 = *(v0 + 56);

  v7 = *(v0 + 80);

  v8 = *(v0 + 96);

  v9 = *(v0 + 104);

  v10 = *(v0 + 112);

  v11 = *(v0 + 128);

  return MEMORY[0x2821FE8E8](v0, 144, 7);
}

uint64_t sub_248CCFDE4()
{
  v2 = *(v0 + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECB420, &qword_248CDEB18);
  sub_248CD450C();
  v3 = *(v0 + 48);
  v4 = *(v0 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECB418, &qword_248CDEB10);
  return sub_248CD455C();
}

uint64_t sub_248CCFE74(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_248CCFEDC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_248CCFF80()
{
  v1 = *(MEMORY[0x277CD5030] + 4);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_248CD0010;

  return MEMORY[0x2821237B0]();
}

uint64_t sub_248CD0010()
{
  v2 = *(*v1 + 32);
  v3 = *v1;
  *(v3 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_248CD0144, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_248CD0144()
{
  v1 = *(v0 + 40);
  *(v0 + 16) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECB530, qword_248CDEE48);
  sub_248CD0210();
  if (swift_dynamicCast())
  {

    v3 = *(v0 + 24);
    swift_willThrow();
  }

  v4 = *(v0 + 8);

  return v4();
}

unint64_t sub_248CD0210()
{
  result = qword_27EECB538;
  if (!qword_27EECB538)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EECB538);
  }

  return result;
}

uint64_t sub_248CD03C8(const void *a1)
{
  *(v1 + 32) = _Block_copy(a1);
  v2 = *(MEMORY[0x277CD5030] + 4);
  v3 = swift_task_alloc();
  *(v1 + 40) = v3;
  *v3 = v1;
  v3[1] = sub_248CD0460;

  return MEMORY[0x2821237B0]();
}

uint64_t sub_248CD0460()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  v3[6] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_248CD05B4, 0, 0);
  }

  else
  {
    v4 = v3[4];
    v4[2](v4, 0);
    _Block_release(v4);
    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_248CD05B4()
{
  v1 = *(v0 + 48);
  *(v0 + 16) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECB530, qword_248CDEE48);
  sub_248CD0210();
  v3 = swift_dynamicCast();
  v4 = *(v0 + 48);
  if (v3)
  {

    v4 = *(v0 + 24);
    swift_willThrow();
  }

  v5 = *(v0 + 32);

  v6 = sub_248CD42AC();
  (v5)[2](v5, v6);

  _Block_release(v5);
  v7 = *(v0 + 8);

  return v7();
}

id AppDistributorWrapper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AppDistributorWrapper.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppDistributorWrapper();
  return objc_msgSendSuper2(&v2, sel_init);
}

id AppDistributorWrapper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppDistributorWrapper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t dispatch thunk of static AppDistributorWrapper.handleEmergencyReset()()
{
  v2 = *(v0 + 80);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_248CC6BCC;

  return v6();
}

uint64_t sub_248CD08D0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_248CC6BCC;

  return sub_248CD03C8(v2);
}

id sub_248CD098C()
{
  type metadata accessor for ResourceBundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_27EECBA18 = result;
  return result;
}

uint64_t sub_248CD09E0()
{
  v0 = sub_248CD433C();
  __swift_allocate_value_buffer(v0, qword_27EECBAC8);
  __swift_project_value_buffer(v0, qword_27EECBAC8);
  if (qword_27EECBA10 != -1)
  {
    swift_once();
  }

  v1 = qword_27EECBA18;
  return sub_248CD432C();
}

uint64_t sub_248CD1014()
{
  v0 = sub_248CD433C();
  __swift_allocate_value_buffer(v0, qword_27EECBC18);
  __swift_project_value_buffer(v0, qword_27EECBC18);
  if (qword_27EECBA10 != -1)
  {
    swift_once();
  }

  v1 = qword_27EECBA18;
  return sub_248CD432C();
}

uint64_t sub_248CD133C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_248CD433C();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  if (qword_27EECBA10 != -1)
  {
    swift_once();
  }

  v4 = qword_27EECBA18;
  return sub_248CD432C();
}

uint64_t sub_248CD1404(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = sub_248CD433C();

  return __swift_project_value_buffer(v3, a2);
}

uint64_t sub_248CD147C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_248CD433C();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

void __getAAUIAuthKitPasswordChangeHookClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getAAUIAuthKitPasswordChangeHookClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"DSSoftLinks.h" lineNumber:56 description:{@"Unable to find class %s", "AAUIAuthKitPasswordChangeHook"}];

  __break(1u);
}

void AppleAccountUILibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *AppleAccountUILibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"DSSoftLinks.h" lineNumber:53 description:{@"%s", *a1}];

  __break(1u);
}

void __getAAUIGrandSlamRemoteUIPresenterClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getAAUIGrandSlamRemoteUIPresenterClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"DSSoftLinks.h" lineNumber:55 description:{@"Unable to find class %s", "AAUIGrandSlamRemoteUIPresenter"}];

  __break(1u);
}

void __getFMDFMIPManagerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getFMDFMIPManagerClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"DSSoftLinks.h" lineNumber:48 description:{@"Unable to find class %s", "FMDFMIPManager"}];

  __break(1u);
}

void __getFMDFMIPManagerClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *FindMyDeviceLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"DSSoftLinks.h" lineNumber:47 description:{@"%s", *a1}];

  __break(1u);
}

void __getBFFPasscodeViewClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getBFFPasscodeViewClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"DSSoftLinks.h" lineNumber:40 description:{@"Unable to find class %s", "BFFPasscodeView"}];

  __break(1u);
}

void SetupAssistantUILibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *SetupAssistantUILibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"DSSoftLinks.h" lineNumber:35 description:{@"%s", *a1}];

  __break(1u);
}

void __getBFFSimplePasscodeInputViewClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getBFFSimplePasscodeInputViewClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"DSSoftLinks.h" lineNumber:39 description:{@"Unable to find class %s", "BFFSimplePasscodeInputView"}];

  __break(1u);
}

void __getBFFComplexPasscodeInputViewClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getBFFComplexPasscodeInputViewClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"DSSoftLinks.h" lineNumber:38 description:{@"Unable to find class %s", "BFFComplexPasscodeInputView"}];

  __break(1u);
}

void __getBKUIPearlEnrollControllerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getBKUIPearlEnrollControllerClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"DSSoftLinks.h" lineNumber:24 description:{@"Unable to find class %s", "BKUIPearlEnrollController"}];

  __break(1u);
}

void __getBKUIPearlEnrollControllerClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *BiometricKitUILibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"DSSoftLinks.h" lineNumber:22 description:{@"%s", *a1}];

  __break(1u);
}

void __getBKUIPeriocularEnableSplashViewControllerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getBKUIPeriocularEnableSplashViewControllerClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"DSSoftLinks.h" lineNumber:23 description:{@"Unable to find class %s", "BKUIPeriocularEnableSplashViewController"}];

  __break(1u);
}

void __getCIDVUIBiometricBindingFlowManagerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getCIDVUIBiometricBindingFlowManagerClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"DSSoftLinks.h" lineNumber:16 description:{@"Unable to find class %s", "CIDVUIBiometricBindingFlowManager"}];

  __break(1u);
}

void __getCIDVUIBiometricBindingFlowManagerClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *CoreIDVUILibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"DSSoftLinks.h" lineNumber:15 description:{@"%s", *a1}];

  __break(1u);
}

void __getBiometricKitUIClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getBiometricKitUIClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"DSTouchIDController.m" lineNumber:28 description:{@"Unable to find class %s", "BiometricKitUI"}];

  __break(1u);
}

void __getBiometricKitUIClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *BiometricKitUILibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"DSTouchIDController.m" lineNumber:27 description:{@"%s", *a1}];

  __break(1u);
}

void __getPABSBiometricControllerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getPABSBiometricControllerClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"DSTouchIDController.m" lineNumber:30 description:{@"Unable to find class %s", "PABSBiometricController"}];

  __break(1u);
}

void __getPABSBiometricControllerClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *PasscodeAndBiometricsSettingsLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"DSTouchIDController.m" lineNumber:29 description:{@"%s", *a1}];

  __break(1u);
}

void __getHKMedicalIDEmergencyContactFlowClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getHKMedicalIDEmergencyContactFlowClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"DSSoftLinks.h" lineNumber:63 description:{@"Unable to find class %s", "HKMedicalIDEmergencyContactFlow"}];

  __break(1u);
}

void __getHKMedicalIDEmergencyContactFlowClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *HealthUILibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"DSSoftLinks.h" lineNumber:62 description:{@"%s", *a1}];

  __break(1u);
  sub_248CD42AC();
}