void sub_244178868(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getBMContextSyncLOIIdentifier()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getBMContextSyncLOIIdentifierSymbolLoc_ptr;
  v7 = getBMContextSyncLOIIdentifierSymbolLoc_ptr;
  if (!getBMContextSyncLOIIdentifierSymbolLoc_ptr)
  {
    v1 = BiomeLibraryLibrary();
    v5[3] = dlsym(v1, "BMContextSyncLOIIdentifier");
    getBMContextSyncLOIIdentifierSymbolLoc_ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    getBMContextSyncLOIIdentifier_cold_1();
  }

  v2 = *v0;

  return v2;
}

void sub_244178974(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getBMContextSyncDeviceActivityLevelIdentifier()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getBMContextSyncDeviceActivityLevelIdentifierSymbolLoc_ptr;
  v7 = getBMContextSyncDeviceActivityLevelIdentifierSymbolLoc_ptr;
  if (!getBMContextSyncDeviceActivityLevelIdentifierSymbolLoc_ptr)
  {
    v1 = BiomeLibraryLibrary();
    v5[3] = dlsym(v1, "BMContextSyncDeviceActivityLevelIdentifier");
    getBMContextSyncDeviceActivityLevelIdentifierSymbolLoc_ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    getBMContextSyncDeviceActivityLevelIdentifier_cold_1();
  }

  v2 = *v0;

  return v2;
}

void sub_244178A78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getBMContextSyncCellularAvailabilityStatusIdentifier()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getBMContextSyncCellularAvailabilityStatusIdentifierSymbolLoc_ptr;
  v7 = getBMContextSyncCellularAvailabilityStatusIdentifierSymbolLoc_ptr;
  if (!getBMContextSyncCellularAvailabilityStatusIdentifierSymbolLoc_ptr)
  {
    v1 = BiomeLibraryLibrary();
    v5[3] = dlsym(v1, "BMContextSyncCellularAvailabilityStatusIdentifier");
    getBMContextSyncCellularAvailabilityStatusIdentifierSymbolLoc_ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    getBMContextSyncCellularAvailabilityStatusIdentifier_cold_1();
  }

  v2 = *v0;

  return v2;
}

void sub_244178B7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getBMContextSyncWalletTransactionIdentifier()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getBMContextSyncWalletTransactionIdentifierSymbolLoc_ptr;
  v7 = getBMContextSyncWalletTransactionIdentifierSymbolLoc_ptr;
  if (!getBMContextSyncWalletTransactionIdentifierSymbolLoc_ptr)
  {
    v1 = BiomeLibraryLibrary();
    v5[3] = dlsym(v1, "BMContextSyncWalletTransactionIdentifier");
    getBMContextSyncWalletTransactionIdentifierSymbolLoc_ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    getBMContextSyncWalletTransactionIdentifier_cold_1();
  }

  v2 = *v0;

  return v2;
}

void sub_244178C80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getBMAppInFocusClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getBMAppInFocusClass_softClass;
  v7 = getBMAppInFocusClass_softClass;
  if (!getBMAppInFocusClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getBMAppInFocusClass_block_invoke;
    v3[3] = &unk_278E07AD8;
    v3[4] = &v4;
    __getBMAppInFocusClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_244178D60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getBMContextSyncAppInFocusIdentifier()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getBMContextSyncAppInFocusIdentifierSymbolLoc_ptr;
  v7 = getBMContextSyncAppInFocusIdentifierSymbolLoc_ptr;
  if (!getBMContextSyncAppInFocusIdentifierSymbolLoc_ptr)
  {
    v1 = BiomeLibraryLibrary();
    v5[3] = dlsym(v1, "BMContextSyncAppInFocusIdentifier");
    getBMContextSyncAppInFocusIdentifierSymbolLoc_ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    getBMContextSyncAppInFocusIdentifier_cold_1();
  }

  v2 = *v0;

  return v2;
}

void sub_244178E64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getBMContextSyncLOIClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getBMContextSyncLOIClass_softClass;
  v7 = getBMContextSyncLOIClass_softClass;
  if (!getBMContextSyncLOIClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getBMContextSyncLOIClass_block_invoke;
    v3[3] = &unk_278E07AD8;
    v3[4] = &v4;
    __getBMContextSyncLOIClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_244179004(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getBMContextSyncDeviceActivityLevelDeviceActivityStateClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getBMContextSyncDeviceActivityLevelDeviceActivityStateClass_softClass;
  v7 = getBMContextSyncDeviceActivityLevelDeviceActivityStateClass_softClass;
  if (!getBMContextSyncDeviceActivityLevelDeviceActivityStateClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getBMContextSyncDeviceActivityLevelDeviceActivityStateClass_block_invoke;
    v3[3] = &unk_278E07AD8;
    v3[4] = &v4;
    __getBMContextSyncDeviceActivityLevelDeviceActivityStateClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_244179280(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getBMContextSyncDeviceActivityLevelClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getBMContextSyncDeviceActivityLevelClass_softClass;
  v7 = getBMContextSyncDeviceActivityLevelClass_softClass;
  if (!getBMContextSyncDeviceActivityLevelClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getBMContextSyncDeviceActivityLevelClass_block_invoke;
    v3[3] = &unk_278E07AD8;
    v3[4] = &v4;
    __getBMContextSyncDeviceActivityLevelClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_244179360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getBMContextSyncCellularAvailabilityStatusClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getBMContextSyncCellularAvailabilityStatusClass_softClass;
  v7 = getBMContextSyncCellularAvailabilityStatusClass_softClass;
  if (!getBMContextSyncCellularAvailabilityStatusClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getBMContextSyncCellularAvailabilityStatusClass_block_invoke;
    v3[3] = &unk_278E07AD8;
    v3[4] = &v4;
    __getBMContextSyncCellularAvailabilityStatusClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_244179590(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getBMContextSyncWalletTransactionClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getBMContextSyncWalletTransactionClass_softClass;
  v7 = getBMContextSyncWalletTransactionClass_softClass;
  if (!getBMContextSyncWalletTransactionClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getBMContextSyncWalletTransactionClass_block_invoke;
    v3[3] = &unk_278E07AD8;
    v3[4] = &v4;
    __getBMContextSyncWalletTransactionClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_24417978C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getBMContextSyncAppInFocusClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getBMContextSyncAppInFocusClass_softClass;
  v7 = getBMContextSyncAppInFocusClass_softClass;
  if (!getBMContextSyncAppInFocusClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getBMContextSyncAppInFocusClass_block_invoke;
    v3[3] = &unk_278E07AD8;
    v3[4] = &v4;
    __getBMContextSyncAppInFocusClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_244179A58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_244179C90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getBMContextSyncLOIIdentifierSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = BiomeLibraryLibrary();
  result = dlsym(v2, "BMContextSyncLOIIdentifier");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBMContextSyncLOIIdentifierSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t BiomeLibraryLibrary()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!BiomeLibraryLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __BiomeLibraryLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_278E07AF8;
    v5 = 0;
    BiomeLibraryLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = BiomeLibraryLibraryCore_frameworkLibrary;
  if (!BiomeLibraryLibraryCore_frameworkLibrary)
  {
    BiomeLibraryLibrary_cold_1(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

uint64_t __BiomeLibraryLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  BiomeLibraryLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getBMActivityLevelClass_block_invoke(uint64_t a1)
{
  BiomeLibraryLibrary();
  result = objc_getClass("BMActivityLevel");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getBMActivityLevelClass_block_invoke_cold_1();
  }

  getBMActivityLevelClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getBMContextSyncDeviceActivityLevelIdentifierSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = BiomeLibraryLibrary();
  result = dlsym(v2, "BMContextSyncDeviceActivityLevelIdentifier");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBMContextSyncDeviceActivityLevelIdentifierSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getBMDeviceCellularAvailabilityStatusClass_block_invoke(uint64_t a1)
{
  BiomeLibraryLibrary();
  result = objc_getClass("BMDeviceCellularAvailabilityStatus");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getBMDeviceCellularAvailabilityStatusClass_block_invoke_cold_1();
  }

  getBMDeviceCellularAvailabilityStatusClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getBMContextSyncCellularAvailabilityStatusIdentifierSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = BiomeLibraryLibrary();
  result = dlsym(v2, "BMContextSyncCellularAvailabilityStatusIdentifier");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBMContextSyncCellularAvailabilityStatusIdentifierSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getBMWalletTransactionClass_block_invoke(uint64_t a1)
{
  BiomeLibraryLibrary();
  result = objc_getClass("BMWalletTransaction");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getBMWalletTransactionClass_block_invoke_cold_1();
  }

  getBMWalletTransactionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getBMContextSyncWalletTransactionIdentifierSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = BiomeLibraryLibrary();
  result = dlsym(v2, "BMContextSyncWalletTransactionIdentifier");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBMContextSyncWalletTransactionIdentifierSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getBMAppInFocusClass_block_invoke(uint64_t a1)
{
  BiomeLibraryLibrary();
  result = objc_getClass("BMAppInFocus");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getBMAppInFocusClass_block_invoke_cold_1();
  }

  getBMAppInFocusClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getBMContextSyncAppInFocusIdentifierSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = BiomeLibraryLibrary();
  result = dlsym(v2, "BMContextSyncAppInFocusIdentifier");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBMContextSyncAppInFocusIdentifierSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getBMContextSyncLOIClass_block_invoke(uint64_t a1)
{
  BiomeLibraryLibrary();
  result = objc_getClass("BMContextSyncLOI");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getBMContextSyncLOIClass_block_invoke_cold_1();
  }

  getBMContextSyncLOIClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getBMContextSyncDeviceActivityLevelDeviceActivityStateClass_block_invoke(uint64_t a1)
{
  BiomeLibraryLibrary();
  result = objc_getClass("BMContextSyncDeviceActivityLevelDeviceActivityState");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getBMContextSyncDeviceActivityLevelDeviceActivityStateClass_block_invoke_cold_1();
  }

  getBMContextSyncDeviceActivityLevelDeviceActivityStateClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getBMContextSyncDeviceActivityLevelClass_block_invoke(uint64_t a1)
{
  BiomeLibraryLibrary();
  result = objc_getClass("BMContextSyncDeviceActivityLevel");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getBMContextSyncDeviceActivityLevelClass_block_invoke_cold_1();
  }

  getBMContextSyncDeviceActivityLevelClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getBMContextSyncCellularAvailabilityStatusClass_block_invoke(uint64_t a1)
{
  BiomeLibraryLibrary();
  result = objc_getClass("BMContextSyncCellularAvailabilityStatus");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getBMContextSyncCellularAvailabilityStatusClass_block_invoke_cold_1();
  }

  getBMContextSyncCellularAvailabilityStatusClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getBMContextSyncWalletTransactionClass_block_invoke(uint64_t a1)
{
  BiomeLibraryLibrary();
  result = objc_getClass("BMContextSyncWalletTransaction");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getBMContextSyncWalletTransactionClass_block_invoke_cold_1();
  }

  getBMContextSyncWalletTransactionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getBMContextSyncAppInFocusClass_block_invoke(uint64_t a1)
{
  BiomeLibraryLibrary();
  result = objc_getClass("BMContextSyncAppInFocus");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getBMContextSyncAppInFocusClass_block_invoke_cold_1();
  }

  getBMContextSyncAppInFocusClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getBiomeLibrarySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = BiomeLibraryLibrary();
  result = dlsym(v2, "BiomeLibrary");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBiomeLibrarySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_24417AB34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a23, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_24417AF70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a23, 8);
  _Unwind_Resume(a1);
}

void sub_24417B2FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24417B76C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a23, 8);
  _Unwind_Resume(a1);
}

void sub_24417BB90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a23, 8);
  _Unwind_Resume(a1);
}

void sub_24417BFA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a23, 8);
  _Unwind_Resume(a1);
}

void sub_24417C398(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a23, 8);
  _Unwind_Resume(a1);
}

void sub_24417C6E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void OUTLINED_FUNCTION_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void OUTLINED_FUNCTION_3(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, a5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_6(uint64_t result, uint64_t a2, float a3)
{
  *a2 = a3;
  *(a2 + 4) = result;
  return result;
}

void OUTLINED_FUNCTION_10(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_24417FF3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2441801F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2441804C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24418074C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, v9, OS_LOG_TYPE_FAULT, a4, &a9, 0xCu);
}

uint64_t GetMessageIntentFromDistributedContextClientIdentifier(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"com.apple.duetactivityscheduler.remotedeviceactivitymonitor"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"com.apple.nanocompass.bloom"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"com.apple.powerui"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"com.apple.healthlited.PhoneAppFocusListener"])
  {
    v2 = 5;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void OUTLINED_FUNCTION_0_3(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf)
{

  _os_log_error_impl(a1, v11, OS_LOG_TYPE_ERROR, a4, &buf, 0xCu);
}

void getBMContextSyncLOIIdentifier_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getBMContextSyncLOIIdentifier(void)"];
  [v0 handleFailureInFunction:v1 file:@"BMDistributedContextEventTranslation.m" lineNumber:21 description:{@"%s", dlerror()}];

  __break(1u);
}

void getBMContextSyncDeviceActivityLevelIdentifier_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getBMContextSyncDeviceActivityLevelIdentifier(void)"];
  [v0 handleFailureInFunction:v1 file:@"BMDistributedContextEventTranslation.m" lineNumber:31 description:{@"%s", dlerror()}];

  __break(1u);
}

void getBMContextSyncCellularAvailabilityStatusIdentifier_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getBMContextSyncCellularAvailabilityStatusIdentifier(void)"];
  [v0 handleFailureInFunction:v1 file:@"BMDistributedContextEventTranslation.m" lineNumber:26 description:{@"%s", dlerror()}];

  __break(1u);
}

void getBMContextSyncWalletTransactionIdentifier_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getBMContextSyncWalletTransactionIdentifier(void)"];
  [v0 handleFailureInFunction:v1 file:@"BMDistributedContextEventTranslation.m" lineNumber:37 description:{@"%s", dlerror()}];

  __break(1u);
}

void getBMContextSyncAppInFocusIdentifier_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getBMContextSyncAppInFocusIdentifier(void)"];
  [v0 handleFailureInFunction:v1 file:@"BMDistributedContextEventTranslation.m" lineNumber:42 description:{@"%s", dlerror()}];

  __break(1u);
}

void BiomeLibraryLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *BiomeLibraryLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"BMDistributedContextEventTranslation.m" lineNumber:17 description:{@"%s", *a1}];

  __break(1u);
}

void __getBMActivityLevelClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getBMActivityLevelClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"BMDistributedContextEventTranslation.m" lineNumber:30 description:{@"Unable to find class %s", "BMActivityLevel"}];

  __break(1u);
}

void __getBMDeviceCellularAvailabilityStatusClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getBMDeviceCellularAvailabilityStatusClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"BMDistributedContextEventTranslation.m" lineNumber:25 description:{@"Unable to find class %s", "BMDeviceCellularAvailabilityStatus"}];

  __break(1u);
}

void __getBMWalletTransactionClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getBMWalletTransactionClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"BMDistributedContextEventTranslation.m" lineNumber:36 description:{@"Unable to find class %s", "BMWalletTransaction"}];

  __break(1u);
}

void __getBMAppInFocusClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getBMAppInFocusClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"BMDistributedContextEventTranslation.m" lineNumber:41 description:{@"Unable to find class %s", "BMAppInFocus"}];

  __break(1u);
}

void __getBMContextSyncLOIClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getBMContextSyncLOIClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"BMDistributedContextEventTranslation.m" lineNumber:22 description:{@"Unable to find class %s", "BMContextSyncLOI"}];

  __break(1u);
}

void __getBMContextSyncDeviceActivityLevelDeviceActivityStateClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getBMContextSyncDeviceActivityLevelDeviceActivityStateClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"BMDistributedContextEventTranslation.m" lineNumber:33 description:{@"Unable to find class %s", "BMContextSyncDeviceActivityLevelDeviceActivityState"}];

  __break(1u);
}

void __getBMContextSyncDeviceActivityLevelClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getBMContextSyncDeviceActivityLevelClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"BMDistributedContextEventTranslation.m" lineNumber:32 description:{@"Unable to find class %s", "BMContextSyncDeviceActivityLevel"}];

  __break(1u);
}

void __getBMContextSyncCellularAvailabilityStatusClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getBMContextSyncCellularAvailabilityStatusClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"BMDistributedContextEventTranslation.m" lineNumber:27 description:{@"Unable to find class %s", "BMContextSyncCellularAvailabilityStatus"}];

  __break(1u);
}

void __getBMContextSyncWalletTransactionClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getBMContextSyncWalletTransactionClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"BMDistributedContextEventTranslation.m" lineNumber:38 description:{@"Unable to find class %s", "BMContextSyncWalletTransaction"}];

  __break(1u);
}

void __getBMContextSyncAppInFocusClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getBMContextSyncAppInFocusClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"BMDistributedContextEventTranslation.m" lineNumber:43 description:{@"Unable to find class %s", "BMContextSyncAppInFocus"}];

  __break(1u);
}