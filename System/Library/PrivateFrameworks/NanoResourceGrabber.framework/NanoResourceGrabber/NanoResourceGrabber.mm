void OUTLINED_FUNCTION_1(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

uint64_t mapNRGIconVariantToLI(uint64_t a1)
{
  if (mapNRGIconVariantToLI_onceToken != -1)
  {
    mapNRGIconVariantToLI_cold_1();
  }

  v2 = mapNRGIconVariantToLI_nrgToLIMap;
  v3 = [MEMORY[0x277CCABB0] numberWithInt:a1];
  v4 = [v2 objectForKeyedSubscript:v3];
  v5 = [v4 integerValue];

  if (!v5)
  {
    mapNRGIconVariantToLI_cold_2(a1);
  }

  return v5;
}

void __mapNRGIconVariantToLI_block_invoke()
{
  v4[16] = *MEMORY[0x277D85DE8];
  v3[0] = &unk_286CEB290;
  v3[1] = &unk_286CEB2C0;
  v4[0] = &unk_286CEB2A8;
  v4[1] = &unk_286CEB2D8;
  v3[2] = &unk_286CEB2F0;
  v3[3] = &unk_286CEB320;
  v4[2] = &unk_286CEB308;
  v4[3] = &unk_286CEB338;
  v3[4] = &unk_286CEB350;
  v3[5] = &unk_286CEB380;
  v4[4] = &unk_286CEB368;
  v4[5] = &unk_286CEB398;
  v3[6] = &unk_286CEB3B0;
  v3[7] = &unk_286CEB3E0;
  v4[6] = &unk_286CEB3C8;
  v4[7] = &unk_286CEB3F8;
  v3[8] = &unk_286CEB410;
  v3[9] = &unk_286CEB440;
  v4[8] = &unk_286CEB428;
  v4[9] = &unk_286CEB458;
  v3[10] = &unk_286CEB470;
  v3[11] = &unk_286CEB4A0;
  v4[10] = &unk_286CEB488;
  v4[11] = &unk_286CEB4B8;
  v3[12] = &unk_286CEB4D0;
  v3[13] = &unk_286CEB500;
  v4[12] = &unk_286CEB4E8;
  v4[13] = &unk_286CEB518;
  v3[14] = &unk_286CEB530;
  v3[15] = &unk_286CEB560;
  v4[14] = &unk_286CEB548;
  v4[15] = &unk_286CEB578;
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:16];
  v1 = mapNRGIconVariantToLI_nrgToLIMap;
  mapNRGIconVariantToLI_nrgToLIMap = v0;

  v2 = *MEMORY[0x277D85DE8];
}

uint64_t mapLIIconVariantToNRG(uint64_t a1)
{
  if (mapLIIconVariantToNRG_onceToken != -1)
  {
    mapLIIconVariantToNRG_cold_1();
  }

  v2 = mapLIIconVariantToNRG_liToNRGMap;
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a1];
  v4 = [v2 objectForKeyedSubscript:v3];
  v5 = [v4 integerValue];

  if (v5 <= 0)
  {
    mapLIIconVariantToNRG_cold_2(a1, v5);
  }

  return v5;
}

void __mapLIIconVariantToNRG_block_invoke()
{
  v4[16] = *MEMORY[0x277D85DE8];
  v3[0] = &unk_286CEB2A8;
  v3[1] = &unk_286CEB2D8;
  v4[0] = &unk_286CEB290;
  v4[1] = &unk_286CEB2C0;
  v3[2] = &unk_286CEB308;
  v3[3] = &unk_286CEB338;
  v4[2] = &unk_286CEB2F0;
  v4[3] = &unk_286CEB320;
  v3[4] = &unk_286CEB368;
  v3[5] = &unk_286CEB398;
  v4[4] = &unk_286CEB350;
  v4[5] = &unk_286CEB380;
  v3[6] = &unk_286CEB3C8;
  v3[7] = &unk_286CEB3F8;
  v4[6] = &unk_286CEB3B0;
  v4[7] = &unk_286CEB3E0;
  v3[8] = &unk_286CEB428;
  v3[9] = &unk_286CEB458;
  v4[8] = &unk_286CEB410;
  v4[9] = &unk_286CEB440;
  v3[10] = &unk_286CEB488;
  v3[11] = &unk_286CEB4B8;
  v4[10] = &unk_286CEB470;
  v4[11] = &unk_286CEB4A0;
  v3[12] = &unk_286CEB4E8;
  v3[13] = &unk_286CEB518;
  v4[12] = &unk_286CEB4D0;
  v4[13] = &unk_286CEB500;
  v3[14] = &unk_286CEB548;
  v3[15] = &unk_286CEB578;
  v4[14] = &unk_286CEB530;
  v4[15] = &unk_286CEB560;
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:16];
  v1 = mapLIIconVariantToNRG_liToNRGMap;
  mapLIIconVariantToNRG_liToNRGMap = v0;

  v2 = *MEMORY[0x277D85DE8];
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25B670E98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25B67127C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25B671504(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 104));
  _Unwind_Resume(a1);
}

void *NRGGetActivePairedDevice()
{
  v0 = [MEMORY[0x277D2BCF8] sharedInstance];
  v1 = [MEMORY[0x277D2BCF8] activePairedDeviceSelectorBlock];
  v2 = [v0 getAllDevicesWithArchivedAltAccountDevicesMatching:v1];
  v3 = [v2 firstObject];

  v4 = [v3 valueForProperty:*MEMORY[0x277D2BB30]];
  if ([v4 BOOLValue])
  {
    v5 = 0;
  }

  else
  {
    v5 = v3;
  }

  v6 = v5;

  return v5;
}

id NRGGetActivePairedDeviceStorePath()
{
  v0 = NRGGetActivePairedDevice();
  v1 = [v0 valueForProperty:*MEMORY[0x277D2BB60]];

  return v1;
}

void NRGWaitForActivePairedDeviceStorePath(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x277D2BCF8] sharedInstance];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __NRGWaitForActivePairedDeviceStorePath_block_invoke;
  v4[3] = &unk_27995C230;
  v5 = v1;
  v3 = v1;
  [v2 waitForAltAccountPairingStorePathPairingID:v4];
}

void gizmoBuildPath(void *a1)
{
  v1 = a1;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __gizmoBuildPath_block_invoke;
  v3[3] = &unk_27995C230;
  v4 = v1;
  v2 = v1;
  NRGWaitForActivePairedDeviceStorePath(v3);
}

void __gizmoBuildPath_block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 stringByAppendingPathComponent:@"com.apple.private.nanoresourcegrabber"];
  (*(*(a1 + 32) + 16))();
}

void saveGizmoBuild(void *a1)
{
  v1 = a1;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __saveGizmoBuild_block_invoke;
  v3[3] = &unk_27995C258;
  v4 = v1;
  v2 = v1;
  gizmoBuildPath(v3);
}

void __saveGizmoBuild_block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAA00];
  v4 = a2;
  v5 = [v3 defaultManager];
  [v5 createDirectoryAtPath:v4 withIntermediateDirectories:1 attributes:0 error:0];

  v6 = [v4 stringByAppendingPathComponent:@"gizmoBuild.plist"];

  v7 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:*(a1 + 32) requiringSecureCoding:0 error:0];
  v8 = v7;
  if (v7)
  {
    v14 = 0;
    [v7 writeToFile:v6 options:268435457 error:&v14];
    v9 = v14;
    v10 = nrg_framework_log();
    v11 = v10;
    if (v9)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        __saveGizmoBuild_block_invoke_cold_1(v9, v11);
      }
    }

    else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 32);
      *buf = 138412802;
      v16 = v12;
      v17 = 2112;
      v18 = v8;
      v19 = 2112;
      v20 = v6;
      _os_log_impl(&dword_25B66E000, v11, OS_LOG_TYPE_DEFAULT, "saveGizmoBuild: wrote %@ %@ to %@", buf, 0x20u);
    }
  }

  else
  {
    v8 = nrg_framework_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __saveGizmoBuild_block_invoke_cold_2(v8);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

void loadGizmoBuild(void *a1)
{
  v1 = a1;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __loadGizmoBuild_block_invoke;
  v3[3] = &unk_27995C280;
  v4 = v1;
  v2 = v1;
  gizmoBuildPath(v3);
}

void __loadGizmoBuild_block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [a2 stringByAppendingPathComponent:@"gizmoBuild.plist"];
  v4 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v3];
  v5 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v4 error:0];
  v6 = nrg_framework_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = v5;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_25B66E000, v6, OS_LOG_TYPE_DEFAULT, "loadGizmoBuild: gizmoBuild = %@ %@", &v9, 0x16u);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v5);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_25B6724C4(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v4 = objc_begin_catch(exception_object);
    v5 = nrg_framework_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __loadGizmoBuild_block_invoke_cold_1(v2, v5);
    }

    objc_end_catch();
    JUMPOUT(0x25B672470);
  }

  _Unwind_Resume(exception_object);
}

id nrg_framework_log()
{
  if (nrg_framework_log_onceToken != -1)
  {
    nrg_framework_log_cold_1();
  }

  v1 = nrg_framework_log___logger;

  return v1;
}

uint64_t __nrg_framework_log_block_invoke()
{
  nrg_framework_log___logger = os_log_create("com.apple.NanoResourceGrabber", "framework");

  return MEMORY[0x2821F96F8]();
}

id nrg_daemon_log()
{
  if (nrg_daemon_log_onceToken != -1)
  {
    nrg_daemon_log_cold_1();
  }

  v1 = nrg_daemon_log___logger;

  return v1;
}

uint64_t __nrg_daemon_log_block_invoke()
{
  nrg_daemon_log___logger = os_log_create("com.apple.NanoResourceGrabber", "daemon");

  return MEMORY[0x2821F96F8]();
}

void mapNRGIconVariantToLI_cold_2(uint64_t a1)
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"LIIconVariant mapNRGIconVariantToLI(NRGIconVariant)"];
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:0];
  v4 = [MEMORY[0x277CCABB0] numberWithInt:a1];
  [v5 handleFailureInFunction:v2 file:@"NRGProtocols.m" lineNumber:39 description:{@"unknown icon variant %@ generated from %@", v3, v4}];
}

void mapLIIconVariantToNRG_cold_2(uint64_t a1, uint64_t a2)
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NRGIconVariant mapLIIconVariantToNRG(LIIconVariant)"];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a1];
  v6 = [MEMORY[0x277CCABB0] numberWithInt:a2];
  [v7 handleFailureInFunction:v4 file:@"NRGProtocols.m" lineNumber:67 description:{@"unknown icon variant %@ generated %@ LIIconVariantNanoCircular108pt2x is %@", v5, v6, &unk_286CEB578}];
}

void __saveGizmoBuild_block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_25B66E000, a2, OS_LOG_TYPE_ERROR, "saveGizmoBuild: writeToFile fail %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __loadGizmoBuild_block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_25B66E000, a2, OS_LOG_TYPE_ERROR, "loadGizmoBuild: failed to load gizmo build from %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}