id _UIArbiterLog()
{
  if (qword_28122B720 != -1)
  {
    dispatch_once(&qword_28122B720, &__block_literal_global_1);
  }

  v1 = _MergedGlobals_1;

  return v1;
}

id _UIArbiterEventsLog()
{
  if (qword_28122B730 != -1)
  {
    dispatch_once(&qword_28122B730, &__block_literal_global_4);
  }

  v1 = qword_28122B728;

  return v1;
}

id _UIArbiterClientHandleLog()
{
  if (qword_28122B740 != -1)
  {
    dispatch_once(&qword_28122B740, &__block_literal_global_8);
  }

  v1 = qword_28122B738;

  return v1;
}

id numberArrayToString(void *a1)
{
  v1 = MEMORY[0x277CCAB68];
  v2 = a1;
  v3 = objc_msgSend([v1 alloc], "initWithString:", @"(");
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __numberArrayToString_block_invoke;
  v6[3] = &unk_2797F4D58;
  v4 = v3;
  v7 = v4;
  [v2 enumerateObjectsUsingBlock:v6];

  [v4 appendString:@""]);

  return v4;
}

void sub_2557BC870(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getFBSceneManagerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getFBSceneManagerClass_softClass;
  v7 = getFBSceneManagerClass_softClass;
  if (!getFBSceneManagerClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getFBSceneManagerClass_block_invoke;
    v3[3] = &unk_2797F4CF8;
    v3[4] = &v4;
    __getFBSceneManagerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_2557BC950(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getFBSceneManagerClass_0()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getFBSceneManagerClass_softClass_0;
  v7 = getFBSceneManagerClass_softClass_0;
  if (!getFBSceneManagerClass_softClass_0)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getFBSceneManagerClass_block_invoke_0;
    v3[3] = &unk_2797F4CF8;
    v3[4] = &v4;
    __getFBSceneManagerClass_block_invoke_0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_2557BCA30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getFBDisplayManagerClass_block_invoke(uint64_t a1)
{
  FrontBoardLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("FBDisplayManager");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getFBDisplayManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getFBDisplayManagerClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"_UIKeyboardArbiter.m" lineNumber:55 description:{@"Unable to find class %s", "FBDisplayManager"}];

    __break(1u);
  }
}

void __getFBDisplayManagerClass_block_invoke_0(uint64_t a1)
{
  FrontBoardLibrary_0();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("FBDisplayManager");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getFBDisplayManagerClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getFBDisplayManagerClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"_UIKeyboardArbiterHost.m" lineNumber:29 description:{@"Unable to find class %s", "FBDisplayManager"}];

    __break(1u);
  }
}

void FrontBoardLibrary()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!FrontBoardLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __FrontBoardLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_2797F4D18;
    v6 = 0;
    FrontBoardLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!FrontBoardLibraryCore_frameworkLibrary)
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *FrontBoardLibrary(void)"];
    [v2 handleFailureInFunction:v3 file:@"_UIKeyboardArbiter.m" lineNumber:51 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v0);
  }

  v1 = *MEMORY[0x277D85DE8];
}

void FrontBoardLibrary_0()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!FrontBoardLibraryCore_frameworkLibrary_0)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __FrontBoardLibraryCore_block_invoke_0;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_2797F4E18;
    v6 = 0;
    FrontBoardLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  if (!FrontBoardLibraryCore_frameworkLibrary_0)
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *FrontBoardLibrary(void)"];
    [v2 handleFailureInFunction:v3 file:@"_UIKeyboardArbiterHost.m" lineNumber:24 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v0);
  }

  v1 = *MEMORY[0x277D85DE8];
}

void __getFBSceneManagerClass_block_invoke(uint64_t a1)
{
  FrontBoardLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("FBSceneManager");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getFBSceneManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getFBSceneManagerClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"_UIKeyboardArbiter.m" lineNumber:56 description:{@"Unable to find class %s", "FBSceneManager"}];

    __break(1u);
  }
}

void __getFBSceneManagerClass_block_invoke_0(uint64_t a1)
{
  FrontBoardLibrary_0();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("FBSceneManager");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getFBSceneManagerClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getFBSceneManagerClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"_UIKeyboardArbiterHost.m" lineNumber:30 description:{@"Unable to find class %s", "FBSceneManager"}];

    __break(1u);
  }
}

void AsyncTaskWithTimeout(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x2020000000;
  v28 = 0;
  dispatch_group_enter(v7);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __AsyncTaskWithTimeout_block_invoke;
  v23[3] = &unk_2797F4C80;
  v26 = v27;
  v11 = v10;
  v25 = v11;
  v12 = v7;
  v24 = v12;
  v13 = [v23 copy];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __AsyncTaskWithTimeout_block_invoke_2;
  v20[3] = &unk_2797F4CA8;
  v14 = v8;
  v21 = v14;
  v15 = v13;
  v22 = v15;
  v9[2](v9, v20);
  v16 = dispatch_time(0, 4000000000);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __AsyncTaskWithTimeout_block_invoke_4;
  v18[3] = &unk_2797F4CD0;
  v19 = v15;
  v17 = v15;
  dispatch_after(v16, v14, v18);

  _Block_object_dispose(v27, 8);
}

void __AsyncTaskWithTimeout_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __AsyncTaskWithTimeout_block_invoke_3;
  v7[3] = &unk_2797F4720;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void __AsyncTaskWithTimeout_block_invoke(void *a1)
{
  v2 = *(a1[6] + 8);
  if ((*(v2 + 24) & 1) == 0)
  {
    *(v2 + 24) = 1;
    (*(a1[5] + 16))();
    v4 = a1[4];

    dispatch_group_leave(v4);
  }
}

void sub_2557BF240(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2557BF96C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __FrontBoardLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  FrontBoardLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __numberArrayToString_block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 integerValue];
  v6 = ",";
  if (!a3)
  {
    v6 = "";
  }

  return [*(a1 + 32) appendFormat:@"%s%lu", v6, v5];
}

void __TIGetDisableArbiterConnectionTimeoutValue_block_invoke()
{
  v0 = [MEMORY[0x277D6F470] sharedPreferencesController];
  [v0 _configureKey:@"DisableArbiterConnectionTimeout" domain:@"com.apple.keyboard" defaultValue:MEMORY[0x277CBEC28]];
}

void sub_2557D4118(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id getFBLocalSynchronousSceneClientProviderClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getFBLocalSynchronousSceneClientProviderClass_softClass;
  v7 = getFBLocalSynchronousSceneClientProviderClass_softClass;
  if (!getFBLocalSynchronousSceneClientProviderClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getFBLocalSynchronousSceneClientProviderClass_block_invoke;
    v3[3] = &unk_2797F4CF8;
    v3[4] = &v4;
    __getFBLocalSynchronousSceneClientProviderClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_2557D4528(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __FrontBoardLibraryCore_block_invoke_0(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  FrontBoardLibraryCore_frameworkLibrary_0 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getFBLocalSynchronousSceneClientProviderClass_block_invoke(uint64_t a1)
{
  FrontBoardLibrary_0();
  result = objc_getClass("FBLocalSynchronousSceneClientProvider");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getFBLocalSynchronousSceneClientProviderClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getFBLocalSynchronousSceneClientProviderClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v4 file:@"_UIKeyboardArbiterHost.m" lineNumber:31 description:{@"Unable to find class %s", "FBLocalSynchronousSceneClientProvider"}];

    __break(1u);
    return BSDispatchMain();
  }

  return result;
}