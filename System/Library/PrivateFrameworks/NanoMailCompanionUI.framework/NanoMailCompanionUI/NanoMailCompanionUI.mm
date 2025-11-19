id soft_BPSCellHightlightColor()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getBPSCellHightlightColorSymbolLoc_ptr;
  v8 = getBPSCellHightlightColorSymbolLoc_ptr;
  if (!getBPSCellHightlightColorSymbolLoc_ptr)
  {
    v1 = BridgePreferencesLibrary();
    v6[3] = dlsym(v1, "BPSCellHightlightColor");
    getBPSCellHightlightColorSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = soft_BPSCellHightlightColor_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = v0();

  return v2;
}

id soft_BPSTextColor()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getBPSTextColorSymbolLoc_ptr;
  v8 = getBPSTextColorSymbolLoc_ptr;
  if (!getBPSTextColorSymbolLoc_ptr)
  {
    v1 = BridgePreferencesLibrary();
    v6[3] = dlsym(v1, "BPSTextColor");
    getBPSTextColorSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = soft_BPSCellHightlightColor_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = v0();

  return v2;
}

id soft_BPSDetailTextColor()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getBPSDetailTextColorSymbolLoc_ptr;
  v8 = getBPSDetailTextColorSymbolLoc_ptr;
  if (!getBPSDetailTextColorSymbolLoc_ptr)
  {
    v1 = BridgePreferencesLibrary();
    v6[3] = dlsym(v1, "BPSDetailTextColor");
    getBPSDetailTextColorSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = soft_BPSCellHightlightColor_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = v0();

  return v2;
}

void *__getBPSCellHightlightColorSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = BridgePreferencesLibrary();
  result = dlsym(v2, "BPSCellHightlightColor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBPSCellHightlightColorSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t BridgePreferencesLibrary()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!BridgePreferencesLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __BridgePreferencesLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_279934680;
    v6 = 0;
    BridgePreferencesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = BridgePreferencesLibraryCore_frameworkLibrary;
  v1 = v4[0];
  if (!BridgePreferencesLibraryCore_frameworkLibrary)
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

uint64_t __BridgePreferencesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  BridgePreferencesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void *__getBPSTextColorSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = BridgePreferencesLibrary();
  result = dlsym(v2, "BPSTextColor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBPSTextColorSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getBPSDetailTextColorSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = BridgePreferencesLibrary();
  result = dlsym(v2, "BPSDetailTextColor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBPSDetailTextColorSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getBPSBridgeTintColorSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = BridgePreferencesLibrary();
  result = dlsym(v2, "BPSBridgeTintColor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBPSBridgeTintColorSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getNNMKEmailAddressTokenKey()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getNNMKEmailAddressTokenKeySymbolLoc_ptr;
  v8 = getNNMKEmailAddressTokenKeySymbolLoc_ptr;
  if (!getNNMKEmailAddressTokenKeySymbolLoc_ptr)
  {
    v1 = NanoMailKitServerLibrary();
    v6[3] = dlsym(v1, "NNMKEmailAddressTokenKey");
    getNNMKEmailAddressTokenKeySymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = soft_BPSCellHightlightColor_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getNanoMailCloudNotificationsEnabledKey()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getNanoMailCloudNotificationsEnabledKeySymbolLoc_ptr;
  v8 = getNanoMailCloudNotificationsEnabledKeySymbolLoc_ptr;
  if (!getNanoMailCloudNotificationsEnabledKeySymbolLoc_ptr)
  {
    v1 = NanoMailKitServerLibrary();
    v6[3] = dlsym(v1, "NanoMailCloudNotificationsEnabledKey");
    getNanoMailCloudNotificationsEnabledKeySymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = soft_BPSCellHightlightColor_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

void sub_25B193A4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25B1945D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id getNNMKURLRequestClass(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2050000000;
  v8 = getNNMKURLRequestClass_softClass;
  v16 = getNNMKURLRequestClass_softClass;
  if (!getNNMKURLRequestClass_softClass)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __getNNMKURLRequestClass_block_invoke;
    v12[3] = &unk_279934660;
    v12[4] = &v13;
    __getNNMKURLRequestClass_block_invoke(v12, a2, a3, a4, a5, a6, a7, a8, v11);
    v8 = v14[3];
  }

  v9 = v8;
  _Block_object_dispose(&v13, 8);

  return v9;
}

void sub_25B1946CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getNNMKEmailAddressTokenKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = NanoMailKitServerLibrary();
  result = dlsym(v2, "NNMKEmailAddressTokenKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getNNMKEmailAddressTokenKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t NanoMailKitServerLibrary()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!NanoMailKitServerLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __NanoMailKitServerLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_2799347D8;
    v6 = 0;
    NanoMailKitServerLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = NanoMailKitServerLibraryCore_frameworkLibrary;
  v1 = v4[0];
  if (!NanoMailKitServerLibraryCore_frameworkLibrary)
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

uint64_t __NanoMailKitServerLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  NanoMailKitServerLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void *__getNanoMailCloudNotificationsEnabledKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = NanoMailKitServerLibrary();
  result = dlsym(v2, "NanoMailCloudNotificationsEnabledKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getNanoMailCloudNotificationsEnabledKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getBPSNanoBulletinSubsectionIdSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = BridgePreferencesLibrary_0();
  result = dlsym(v2, "BPSNanoBulletinSubsectionId");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBPSNanoBulletinSubsectionIdSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t BridgePreferencesLibrary_0()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!BridgePreferencesLibraryCore_frameworkLibrary_0)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __BridgePreferencesLibraryCore_block_invoke_0;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_2799347F0;
    v6 = 0;
    BridgePreferencesLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  v0 = BridgePreferencesLibraryCore_frameworkLibrary_0;
  v1 = v4[0];
  if (!BridgePreferencesLibraryCore_frameworkLibrary_0)
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

uint64_t __BridgePreferencesLibraryCore_block_invoke_0(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  BridgePreferencesLibraryCore_frameworkLibrary_0 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void *__getBPSNanoBulletinShowsAlertsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = BridgePreferencesLibrary_0();
  result = dlsym(v2, "BPSNanoBulletinShowsAlerts");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBPSNanoBulletinShowsAlertsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getNNMKPCCEmailAddressKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = NanoMailKitServerLibrary();
  result = dlsym(v2, "NNMKPCCEmailAddressKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getNNMKPCCEmailAddressKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getSLGoogleAuthControllerClass_block_invoke(uint64_t a1)
{
  NanoMailKitServerLibrary();
  result = objc_getClass("SLGoogleAuthController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSLGoogleAuthControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getSLGoogleAuthControllerClass_block_invoke_cold_1();
    return __getNNMKURLRequestClass_block_invoke(v3);
  }

  return result;
}

void __getNNMKURLRequestClass_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{
  NanoMailKitServerLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("NNMKURLRequest");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getNNMKURLRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getNNMKURLRequestClass_block_invoke_cold_1();
    OUTLINED_FUNCTION_0(v10, v11, v12, v13, v14, v15, v16, v17, a9);
  }
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void nnmk_setupLoggingSubsystems()
{
  if (nnmk_setupLoggingSubsystems_onceToken != -1)
  {
    nnmk_setupLoggingSubsystems_cold_1();
  }
}

uint64_t __nnmk_setupLoggingSubsystems_block_invoke()
{
  v0 = os_log_create("com.apple.NanoMail", "General");
  v1 = __logCategories;
  __logCategories = v0;

  v2 = os_log_create("com.apple.NanoMail", "Notification");
  v3 = qword_27FA3F1D8;
  qword_27FA3F1D8 = v2;

  v4 = os_log_create("com.apple.NanoMail", "Sync");
  v5 = qword_27FA3F1D0;
  qword_27FA3F1D0 = v4;

  qword_27FA3F1E0 = os_log_create("com.apple.NanoMail", "Standalone");

  return MEMORY[0x2821F96F8]();
}

void sub_25B195DDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getMailAccountEmailAddressesSymbolLoc_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!MessageLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __MessageLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_279934828;
    v8 = 0;
    MessageLibraryCore_frameworkLibrary = _sl_dlopen();
    v3 = v6[0];
    v2 = MessageLibraryCore_frameworkLibrary;
    if (MessageLibraryCore_frameworkLibrary)
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

  v2 = MessageLibraryCore_frameworkLibrary;
LABEL_5:
  result = dlsym(v2, "MailAccountEmailAddresses");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMailAccountEmailAddressesSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __MessageLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MessageLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getNNMKAccountClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!NanoMailKitServerLibraryCore_frameworkLibrary_0)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __NanoMailKitServerLibraryCore_block_invoke_0;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_279934840;
    v7 = 0;
    NanoMailKitServerLibraryCore_frameworkLibrary_0 = _sl_dlopen();
    v2 = v5[0];
    if (NanoMailKitServerLibraryCore_frameworkLibrary_0)
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
  result = objc_getClass("NNMKAccount");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getNNMKAccountClass_block_invoke_cold_1();
  }

  getNNMKAccountClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __NanoMailKitServerLibraryCore_block_invoke_0(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  NanoMailKitServerLibraryCore_frameworkLibrary_0 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25B196E74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25B1972E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25B1982A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25B198518(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t soft_BPSCellHightlightColor_cold_1()
{
  dlerror();
  v0 = abort_report_np();
  return __104__NMCUICloudNotificationAccountDataSource_handleAccountAuthenication_viewController_stateUpdateHandler___block_invoke_3_cold_1(v0);
}