void sub_243334910(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id nph_general_log()
{
  if (nph_general_log_onceToken != -1)
  {
    nph_general_log_cold_1();
  }

  v1 = nph_general_log_logger;

  return v1;
}

uint64_t __nph_general_log_block_invoke()
{
  nph_general_log_logger = os_log_create("com.apple.NanoPhone", "general");

  return MEMORY[0x2821F96F8]();
}

void nph_ensure_on_main_queue(void *a1)
{
  v1 = MEMORY[0x277CCACC8];
  block = a1;
  if ([v1 isMainThread])
  {
    block[2]();
  }

  else
  {
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

id CTSUServerQueue()
{
  if (CTSUServerQueue_onceToken != -1)
  {
    CTSUServerQueue_cold_1();
  }

  v1 = CTSUServerQueue_sCTServerQueue;

  return v1;
}

void __CTSUServerQueue_block_invoke()
{
  v6 = *MEMORY[0x277D85DE8];
  v0 = dispatch_queue_create("com.apple.bridge.nanophone.ctserverqueue", 0);
  v1 = CTSUServerQueue_sCTServerQueue;
  CTSUServerQueue_sCTServerQueue = v0;

  if (!CTSUServerQueue_sCTServerQueue)
  {
    v2 = nph_general_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136315138;
      v5 = "dispatch_queue_t CTSUServerQueue(void)_block_invoke";
      _os_log_impl(&dword_243333000, v2, OS_LOG_TYPE_DEFAULT, "%s - unable to create sCTServerQueue", &v4, 0xCu);
    }
  }

  v3 = *MEMORY[0x277D85DE8];
}

uint64_t CTSUServerConnectionRef()
{
  if (CTSUServerConnectionRef_onceToken != -1)
  {
    CTSUServerConnectionRef_cold_1();
  }

  return CTSUServerConnectionRef_sCTServerConnectionRef;
}

void __CTSUServerConnectionRef_block_invoke()
{
  v6 = *MEMORY[0x277D85DE8];
  _CTServerConnectionAddIdentifierException();
  v0 = *MEMORY[0x277CBECE8];
  v1 = CTSUServerQueue();
  CTSUServerConnectionRef_sCTServerConnectionRef = _CTServerConnectionCreateOnTargetQueue();

  if (!CTSUServerConnectionRef_sCTServerConnectionRef)
  {
    v2 = nph_general_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136315138;
      v5 = "CTServerConnectionRef CTSUServerConnectionRef(void)_block_invoke";
      _os_log_impl(&dword_243333000, v2, OS_LOG_TYPE_DEFAULT, "%s - unable to create sCTServerConnectionRef", &v4, 0xCu);
    }
  }

  v3 = *MEMORY[0x277D85DE8];
}

void __CTSUServerConnectionRef_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = nph_general_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315650;
    v8 = "CTServerConnectionRef CTSUServerConnectionRef(void)_block_invoke_2";
    v9 = 2112;
    v10 = a2;
    v11 = 2112;
    v12 = a3;
    _os_log_impl(&dword_243333000, v5, OS_LOG_TYPE_DEFAULT, "%s notification:%@ info:%@", &v7, 0x20u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void sub_243337A4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getCTCellularPlanErrorDomainSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CellularPlanManagerLibrary();
  result = dlsym(v2, "CTCellularPlanErrorDomain");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCTCellularPlanErrorDomainSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t CellularPlanManagerLibrary()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!CellularPlanManagerLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __CellularPlanManagerLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278DAC980;
    v6 = 0;
    CellularPlanManagerLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = CellularPlanManagerLibraryCore_frameworkLibrary;
  v1 = v4[0];
  if (!CellularPlanManagerLibraryCore_frameworkLibrary)
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

uint64_t __CellularPlanManagerLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CellularPlanManagerLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getCTCellularPlanManagerClass_block_invoke(uint64_t a1)
{
  CellularPlanManagerLibrary();
  result = objc_getClass("CTCellularPlanManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCTCellularPlanManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getCTCellularPlanManagerClass_block_invoke_cold_1();
    return [NSError(NPHCellularError) NPHCellularErrorWithCode:v3 forSubscriptionContext:?];
  }

  return result;
}

void sub_24333DE28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t IsCurrentDevicePairing()
{
  v0 = [MEMORY[0x277CF3448] shared];
  v1 = [v0 inWatchSetupFlow];

  return v1;
}

void sub_24333F368(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2433406C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t NPHDeviceOSIsInternalInstall()
{
  if (NPHDeviceOSIsInternalInstall_onceToken != -1)
  {
    NPHDeviceOSIsInternalInstall_cold_1();
  }

  return __NPHInternalOS;
}

uint64_t __NPHDeviceOSIsInternalInstall_block_invoke()
{
  result = MGGetBoolAnswer();
  __NPHInternalOS = result;
  return result;
}

uint64_t NPHDeviceHasBaseband()
{
  if (NPHDeviceHasBaseband_onceToken != -1)
  {
    NPHDeviceHasBaseband_cold_1();
  }

  return NPHDeviceHasBaseband_isCellularDevice;
}

uint64_t __NPHDeviceHasBaseband_block_invoke()
{
  result = MGGetBoolAnswer();
  NPHDeviceHasBaseband_isCellularDevice = result;
  return result;
}

uint64_t NPHIsCerberusEnabled()
{
  v0 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v1 = [v0 BOOLForKey:@"cerberusEnabled"];

  return v1;
}

uint64_t NPHIsWalkaboutEnabled()
{
  if (NPHIsWalkaboutEnabled_onceToken != -1)
  {
    NPHIsWalkaboutEnabled_cold_1();
  }

  return __NPHWalkaboutEnabled;
}

uint64_t __NPHIsWalkaboutEnabled_block_invoke()
{
  v0 = CFPreferencesCopyAppValue(@"ExperimentGroup", @"com.apple.da");
  if (v0)
  {
    v2 = v0;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v2 isEqualToString:@"walkabout"])
      {
        if (NPHDeviceOSIsInternalInstall_onceToken != -1)
        {
          NPHDeviceOSIsInternalInstall_cold_1();
        }

        __NPHWalkaboutEnabled = __NPHInternalOS;
      }
    }
  }

  return MEMORY[0x2821F96F8]();
}

id NPHWiFiStringKey(void *a1)
{
  v1 = a1;
  if (MGGetBoolAnswer())
  {
    v2 = @"_WLAN";
  }

  else
  {
    v2 = @"_WIFI";
  }

  v3 = [v1 stringByAppendingString:v2];

  return v3;
}

uint64_t NPHDeriveProgramName(char *a1)
{
  v2 = strrchr(a1, 47);
  if (v2)
  {
    v3 = v2 + 1;
  }

  else
  {
    v3 = a1;
  }

  programName = [MEMORY[0x277CCACA8] stringWithUTF8String:v3];

  return MEMORY[0x2821F96F8]();
}

void NPHSetTmpDirPrefix()
{
  v0 = [MEMORY[0x277CCA8D8] mainBundle];
  v1 = [v0 bundleIdentifier];
  [v1 cStringUsingEncoding:4];
  v2 = _set_user_dir_suffix();

  if ((v2 & 1) == 0)
  {
    v3 = nph_general_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      NPHSetTmpDirPrefix_cold_1(v3);
    }
  }
}

id NPHSharedUtilitiesAppendBuildVersion(void *a1)
{
  v1 = a1;
  v2 = MGCopyAnswer();
  v3 = v2;
  v4 = @"unknown";
  if (v2)
  {
    v4 = v2;
  }

  v5 = v4;

  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@.", v1, v5];

  return v6;
}

__CFString *NSStringFromTUCallDisconnectedReason(unsigned int a1)
{
  if (a1 < 0x1A && ((0x3EFFFFFu >> a1) & 1) != 0)
  {
    v2 = off_278DACDD8[a1];
  }

  else
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"unhadled TUCallDisconnectedReason in %s", "NSString *NSStringFromTUCallDisconnectedReason(TUCallDisconnectedReason)"];
  }

  return v2;
}

double mach_time_elapsed_to_seconds(uint64_t a1)
{
  info = 0;
  mach_timebase_info(&info);
  return (info.numer * a1 / info.denom) / 1000000000.0;
}

os_log_t define_nph_log(char *category)
{
  v1 = os_log_create("com.apple.NanoPhone", category);

  return v1;
}

id nph_sos_general_log()
{
  if (nph_sos_general_log_onceToken != -1)
  {
    nph_sos_general_log_cold_1();
  }

  v1 = nph_sos_general_log_logger;

  return v1;
}

uint64_t __nph_sos_general_log_block_invoke()
{
  nph_sos_general_log_logger = os_log_create("com.apple.NanoPhone", "sos_general");

  return MEMORY[0x2821F96F8]();
}

id nph_sos_newton_log()
{
  if (nph_sos_newton_log_onceToken != -1)
  {
    nph_sos_newton_log_cold_1();
  }

  v1 = nph_sos_newton_log_logger;

  return v1;
}

uint64_t __nph_sos_newton_log_block_invoke()
{
  nph_sos_newton_log_logger = os_log_create("com.apple.NanoPhone", "sos_newton");

  return MEMORY[0x2821F96F8]();
}

void sub_24334957C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void NPHSetTmpDirPrefix_cold_1(NSObject *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *__error();
  v4 = 136315394;
  v5 = "void NPHSetTmpDirPrefix(void)";
  v6 = 1024;
  v7 = v2;
  _os_log_error_impl(&dword_243333000, a1, OS_LOG_TYPE_ERROR, "%s: failed, errno: %d", &v4, 0x12u);
  v3 = *MEMORY[0x277D85DE8];
}