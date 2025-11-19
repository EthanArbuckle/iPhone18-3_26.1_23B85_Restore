void sub_2522BF9A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2522C0950(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_2522C161C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2522C1960(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t PingPongClientLibraryCore()
{
  v2 = *MEMORY[0x277D85DE8];
  if (!PingPongClientLibraryCore_frameworkLibrary)
  {
    PingPongClientLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  result = PingPongClientLibraryCore_frameworkLibrary;
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __PingPongClientLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  PingPongClientLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getPPCExtensibleSSOAuthenticatorClass_block_invoke(uint64_t a1)
{
  PingPongClientLibrary();
  result = objc_getClass("PPCExtensibleSSOAuthenticator");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPPCExtensibleSSOAuthenticatorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getPPCExtensibleSSOAuthenticatorClass_block_invoke_cold_1();
    return PingPongClientLibrary();
  }

  return result;
}

uint64_t PingPongClientLibrary()
{
  v0 = PingPongClientLibraryCore();
  if (!v0)
  {
    v2 = abort_report_np();
    free(v2);
  }

  return v0;
}

void *__getkExtensibleSSOUsernameKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PingPongClientLibrary();
  result = dlsym(v2, "kExtensibleSSOUsernameKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkExtensibleSSOUsernameKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkExtensibleSSOTokenKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PingPongClientLibrary();
  result = dlsym(v2, "kExtensibleSSOTokenKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkExtensibleSSOTokenKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_2522C24D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2522C44C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2522C8D10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *exc_buf)
{
  v19 = v12;
  objc_destroyWeak((v13 + 104));
  if (a2 == 1)
  {
    v18 = objc_begin_catch(a1);
    [v19 setObject:v15 forKey:@"HLPHelpBookDynamicServerLastFailureLoadVersion"];
    [v19 synchronize];
    [v14 loadFromStaticServer];

    objc_end_catch();
    JUMPOUT(0x2522C8B90);
  }

  objc_destroyWeak((v16 - 160));
  _Unwind_Resume(a1);
}

void sub_2522C9784(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t PingPongClientLibraryCore_0()
{
  v2 = *MEMORY[0x277D85DE8];
  if (!PingPongClientLibraryCore_frameworkLibrary_0)
  {
    PingPongClientLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  result = PingPongClientLibraryCore_frameworkLibrary_0;
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __PingPongClientLibraryCore_block_invoke_0(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  PingPongClientLibraryCore_frameworkLibrary_0 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getPPCRedirectClass_block_invoke(uint64_t a1)
{
  if (!PingPongClientLibraryCore_0())
  {
    v3 = abort_report_np();
    free(v3);
  }

  result = objc_getClass("PPCRedirect");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPPCRedirectClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v4 = __getPPCRedirectClass_block_invoke_cold_1();
    return [(HLPReachability *)v4 reachabilityWithHostName:v5, v6];
  }

  return result;
}

void ReachabilityCallback(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = MEMORY[0x277CCAB98];
  v4 = a3;
  v5 = [v3 defaultCenter];
  [v5 postNotificationName:kHLPReachabilityChangedNotification[0] object:v4];
}

id _allowedClassesForIndexArchive()
{
  v4[6] = *MEMORY[0x277D85DE8];
  v4[0] = objc_opt_class();
  v4[1] = objc_opt_class();
  v4[2] = objc_opt_class();
  v4[3] = objc_opt_class();
  v4[4] = objc_opt_class();
  v4[5] = objc_opt_class();
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:6];
  v1 = [MEMORY[0x277CBEB98] setWithArray:v0];

  v2 = *MEMORY[0x277D85DE8];

  return v1;
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2522CE774(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2522CEE8C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_2522CF484(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2522CFF88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location, char a19)
{
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a19, 8);
  _Unwind_Resume(a1);
}

void sub_2522D04B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id location)
{
  objc_destroyWeak((v29 + 40));
  _Block_object_dispose(&a23, 8);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2522D0C04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, id a61, uint64_t a62, char a63)
{
  objc_destroyWeak(&a61);
  _Block_object_dispose(&a63, 8);
  objc_destroyWeak(&STACK[0x200]);
  objc_destroyWeak(&STACK[0x208]);
  _Unwind_Resume(a1);
}

void sub_2522D1600(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id a30)
{
  objc_destroyWeak(&a30);
  objc_destroyWeak((v30 - 112));
  _Unwind_Resume(a1);
}

void sub_2522D1B78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2522D2038(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  _Block_object_dispose((v2 - 160), 8);
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_2522D2644(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 120), 8);
  _Unwind_Resume(a1);
}

void sub_2522D2E64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location, char a25)
{
  objc_destroyWeak((v25 + 40));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose((v26 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_2522D6460(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_2522D6A1C(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v3 = objc_begin_catch(exception_object);
    v4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"fail to parse topic JSON" code:-1 userInfo:0];

    objc_end_catch();
    if (v4)
    {
      [v2 delegate];
      [objc_claimAutoreleasedReturnValue() helpTopicViewController:v2 failToLoadWithError:0];
      JUMPOUT(0x2522D6A0CLL);
    }

    JUMPOUT(0x2522D699CLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_2522D81F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2522D8C7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id a27, id a28)
{
  objc_destroyWeak(&a28);
  objc_destroyWeak(&a27);
  objc_destroyWeak((v28 - 128));
  objc_destroyWeak((v28 - 120));
  _Unwind_Resume(a1);
}

__CFString *analyticsViewModeFromInterfaceStyle(uint64_t a1)
{
  v1 = @"unspecified";
  if (a1 == 1)
  {
    v1 = @"light";
  }

  if (a1 == 2)
  {
    return @"dark";
  }

  else
  {
    return v1;
  }
}

void sub_2522DF834(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak(&a15);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id HLPLogForCategory(unint64_t a1)
{
  if (a1 >= 3)
  {
    HLPLogForCategory_cold_2();
  }

  if (HLPLogForCategory_onceToken != -1)
  {
    HLPLogForCategory_cold_1();
  }

  v2 = HLPLogForCategory_logObjects[a1];

  return v2;
}

uint64_t __HLPLogForCategory_block_invoke()
{
  v0 = [@"com.apple.helpkit" UTF8String];
  v1 = os_log_create(v0, "App");
  v2 = HLPLogForCategory_logObjects[0];
  HLPLogForCategory_logObjects[0] = v1;

  v3 = os_log_create(v0, "Data");
  v4 = qword_27F4DA610;
  qword_27F4DA610 = v3;

  v5 = os_log_create(v0, "Caching");
  v6 = qword_27F4DA618;
  qword_27F4DA618 = v5;

  return MEMORY[0x2821F96F8](v5, v6);
}

void sub_2522E23C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2522E2AB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t PingPongClientLibraryCore_1()
{
  v2 = *MEMORY[0x277D85DE8];
  if (!PingPongClientLibraryCore_frameworkLibrary_1)
  {
    PingPongClientLibraryCore_frameworkLibrary_1 = _sl_dlopen();
  }

  result = PingPongClientLibraryCore_frameworkLibrary_1;
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __PingPongClientLibraryCore_block_invoke_1(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  PingPongClientLibraryCore_frameworkLibrary_1 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getPPCRedirectClass_block_invoke_0(uint64_t a1)
{
  if (!PingPongClientLibraryCore_1())
  {
    v3 = abort_report_np();
    free(v3);
  }

  result = objc_getClass("PPCRedirect");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPPCRedirectClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v4 = __getPPCRedirectClass_block_invoke_cold_1();
    return [(HLPAnalyticsEventSearchUsed *)v4 eventName];
  }

  return result;
}

CFRange CFStringTokenizerGetCurrentTokenRange(CFStringTokenizerRef tokenizer)
{
  v1 = MEMORY[0x28210FEB8](tokenizer);
  result.length = v2;
  result.location = v1;
  return result;
}