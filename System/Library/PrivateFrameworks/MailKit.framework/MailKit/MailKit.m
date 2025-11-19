id getWKContentRuleListStoreClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getWKContentRuleListStoreClass_softClass;
  v7 = getWKContentRuleListStoreClass_softClass;
  if (!getWKContentRuleListStoreClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getWKContentRuleListStoreClass_block_invoke;
    v3[3] = &unk_2798591D0;
    v3[4] = &v4;
    __getWKContentRuleListStoreClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_257F682B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_257F68BC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_257F68E94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = MEAppExtensionsController;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_257F69168(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location, id a22)
{
  os_unfair_lock_unlock(v27 + 4);

  objc_destroyWeak((v29 + 40));
  objc_destroyWeak((v29 + 32));
  objc_destroyWeak(&location);

  objc_destroyWeak(&a22);
  _Unwind_Resume(a1);
}

void sub_257F692A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, os_unfair_lock_s *a10)
{
  v11 = v10;

  os_unfair_lock_unlock(a10 + 4);
  _Unwind_Resume(a1);
}

void sub_257F69748(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 - 40));

  _Unwind_Resume(a1);
}

void sub_257F6A424(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_257F6B39C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v22 + 32));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_257F6B6C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = MEComposeExtensionsHelper;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_257F6B8BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v16 = v15;

  _Unwind_Resume(a1);
}

void sub_257F6D2B0(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_257F6DA18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v24 + 32));

  objc_destroyWeak((v23 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

uint64_t _reload(uint64_t a1, void *a2)
{
  v3 = +[MEContentRuleListManager log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_257F67000, v3, OS_LOG_TYPE_DEFAULT, "Reloading content rule lists", v5, 2u);
  }

  return [a2 _scheduleContentRuleListReload];
}

void sub_257F6DCE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = MEContentRuleListManager;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_257F6DE04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_257F6E554(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15)
{
  v18 = v17;

  _Unwind_Resume(a1);
}

void sub_257F6EA04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_257F6EBD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, id a16)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);

  objc_destroyWeak(&a16);
  _Unwind_Resume(a1);
}

void sub_257F6ECA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, os_unfair_lock_s *a10)
{
  os_unfair_lock_unlock(a10 + 14);

  _Unwind_Resume(a1);
}

Class __getWKContentRuleListStoreClass_block_invoke(uint64_t a1)
{
  v8[9] = *MEMORY[0x277D85DE8];
  v8[0] = 0;
  if (!WebKitLibraryCore_frameworkLibrary)
  {
    v8[1] = MEMORY[0x277D85DD0];
    v8[2] = 3221225472;
    v8[3] = __WebKitLibraryCore_block_invoke;
    v8[4] = &__block_descriptor_40_e5_v8__0l;
    v8[5] = v8;
    v8[7] = 0;
    v8[8] = 0;
    v8[6] = "/System/Library/Frameworks/WebKit.framework/WebKit";
    WebKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!WebKitLibraryCore_frameworkLibrary)
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *WebKitLibrary(void)"];
    [v4 handleFailureInFunction:v5 file:@"MEContentRuleListManager.m" lineNumber:21 description:{@"%s", v8[0]}];

    goto LABEL_10;
  }

  if (v8[0])
  {
    free(v8[0]);
  }

  result = objc_getClass("WKContentRuleListStore");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getWKContentRuleListStoreClass(void)_block_invoke"];
    [v6 handleFailureInFunction:v7 file:@"MEContentRuleListManager.m" lineNumber:23 description:{@"Unable to find class %s", "WKContentRuleListStore"}];

LABEL_10:
    __break(1u);
  }

  getWKContentRuleListStoreClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __WebKitLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  WebKitLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t OUTLINED_FUNCTION_1@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(result + 40);
  return result;
}

void sub_257F6FC90(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_257F71608(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_257F71730(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  os_unfair_lock_unlock(v10 + 2);

  _Unwind_Resume(a1);
}

void sub_257F71898(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id MEMailExtensionsLog()
{
  if (MEMailExtensionsLog_onceToken != -1)
  {
    MEMailExtensionsLog_cold_1();
  }

  v1 = MEMailExtensionsLog_os_log;

  return v1;
}

void __MEMailExtensionsLog_block_invoke()
{
  v0 = os_log_create("com.apple.email", "MailExtensions");
  v1 = MEMailExtensionsLog_os_log;
  MEMailExtensionsLog_os_log = v0;
}

void sub_257F731B0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_257F7485C(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_257F74AD4(_Unwind_Exception *a1)
{
  v8 = v6;

  _Unwind_Resume(a1);
}

void sub_257F75030(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_257F76598(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_257F7724C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  v18 = v17;

  _Unwind_Resume(a1);
}

void sub_257F773EC(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v1 + 2);

  _Unwind_Resume(a1);
}

void sub_257F783E8(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_257F789B0(_Unwind_Exception *a1)
{
  v2 = v1;

  _Unwind_Resume(a1);
}

void sub_257F78D80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id a21)
{
  v27 = v24;

  os_unfair_lock_unlock(v21 + 2);
  _Block_object_dispose(&a16, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_257F79DC4(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

void sub_257F7A278(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = MERemoteExtensionContext;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}