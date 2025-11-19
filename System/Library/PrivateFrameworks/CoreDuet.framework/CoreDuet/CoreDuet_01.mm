void sub_1917F8DCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getCNContactStoreDidChangeNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary();
  result = dlsym(v2, "CNContactStoreDidChangeNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNContactStoreDidChangeNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class getCNContactStoreDidChangeNotification()
{
  v0 = getCNContactStoreDidChangeNotificationSymbolLoc();
  if (v0)
  {
    v1 = *v0;

    return v1;
  }

  else
  {
    CNContactBirthdayKey_cold_1 = getCNContactBirthdayKey_cold_1();
    return __getCNContactClass_block_invoke(CNContactBirthdayKey_cold_1);
  }
}

Class __getCNContactClass_block_invoke(uint64_t a1)
{
  ContactsLibraryCore();
  result = objc_getClass("CNContact");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNContactClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getCNContactFetchRequestClass_block_invoke(uint64_t a1)
{
  ContactsLibraryCore();
  result = objc_getClass("CNContactFetchRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNContactFetchRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getCNContactFormatterClass_block_invoke(uint64_t a1)
{
  ContactsLibraryCore();
  result = objc_getClass("CNContactFormatter");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNContactFormatterClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getCNContactStoreClass_block_invoke(uint64_t a1)
{
  ContactsLibraryCore();
  result = objc_getClass("CNContactStore");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNContactStoreClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getCNPhoneNumberClass_block_invoke(uint64_t a1)
{
  ContactsLibraryCore();
  result = objc_getClass("CNPhoneNumber");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNPhoneNumberClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getCNChangeHistoryFetchRequestClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = getCNChangeHistoryFetchRequestClass_softClass;
  v6 = getCNChangeHistoryFetchRequestClass_softClass;
  if (!getCNChangeHistoryFetchRequestClass_softClass)
  {
    ContactsLibraryCore();
    v4[3] = objc_getClass("CNChangeHistoryFetchRequest");
    getCNChangeHistoryFetchRequestClass_softClass = v4[3];
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

void sub_1917F90FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCNChangeHistoryFetchRequestClass_block_invoke(uint64_t a1)
{
  ContactsLibraryCore();
  result = objc_getClass("CNChangeHistoryFetchRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNChangeHistoryFetchRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getCNFavoritesClass_block_invoke(uint64_t a1)
{
  ContactsLibraryCore();
  result = objc_getClass("CNFavorites");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNFavoritesClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t HomeKitLibraryCore()
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = HomeKitLibraryCore_frameworkLibrary;
  v6 = HomeKitLibraryCore_frameworkLibrary;
  if (!HomeKitLibraryCore_frameworkLibrary)
  {
    v7 = xmmword_1E7369470;
    v8 = *off_1E7369480;
    v9 = 0;
    v4[3] = _sl_dlopen();
    HomeKitLibraryCore_frameworkLibrary = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  v1 = *MEMORY[0x1E69E9840];
  return v0;
}

void sub_1917F92D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __HomeKitLibraryCore_block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  HomeKitLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getHMHomeManagerClass_block_invoke(uint64_t a1)
{
  HomeKitLibraryCore();
  result = objc_getClass("HMHomeManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getHMHomeManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getHMHomeManagerConfigurationClass_block_invoke(uint64_t a1)
{
  HomeKitLibraryCore();
  result = objc_getClass("HMHomeManagerConfiguration");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getHMHomeManagerConfigurationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t ProactiveEventTrackerLibraryCore()
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = ProactiveEventTrackerLibraryCore_frameworkLibrary;
  v6 = ProactiveEventTrackerLibraryCore_frameworkLibrary;
  if (!ProactiveEventTrackerLibraryCore_frameworkLibrary)
  {
    v7 = xmmword_1E7369498;
    v8 = *off_1E73694A8;
    v9 = 0;
    v4[3] = _sl_dlopen();
    ProactiveEventTrackerLibraryCore_frameworkLibrary = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  v1 = *MEMORY[0x1E69E9840];
  return v0;
}

void sub_1917F953C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __ProactiveEventTrackerLibraryCore_block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  ProactiveEventTrackerLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getPETDistributionEventTrackerClass_block_invoke(uint64_t a1)
{
  ProactiveEventTrackerLibraryCore();
  result = objc_getClass("PETDistributionEventTracker");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPETDistributionEventTrackerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getPETEventPropertyClass_block_invoke(uint64_t a1)
{
  ProactiveEventTrackerLibraryCore();
  result = objc_getClass("PETEventProperty");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPETEventPropertyClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getPETEventTracker2Class_block_invoke(uint64_t a1)
{
  ProactiveEventTrackerLibraryCore();
  result = objc_getClass("PETEventTracker2");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPETEventTracker2Class_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getPETScalarEventTrackerClass_block_invoke(uint64_t a1)
{
  ProactiveEventTrackerLibraryCore();
  result = objc_getClass("PETScalarEventTracker");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPETScalarEventTrackerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t PhotosLibraryCore()
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = PhotosLibraryCore_frameworkLibrary;
  v6 = PhotosLibraryCore_frameworkLibrary;
  if (!PhotosLibraryCore_frameworkLibrary)
  {
    v7 = xmmword_1E73694C0;
    v8 = *off_1E73694D0;
    v9 = 0;
    v4[3] = _sl_dlopen();
    PhotosLibraryCore_frameworkLibrary = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  v1 = *MEMORY[0x1E69E9840];
  return v0;
}

void sub_1917F9850(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __PhotosLibraryCore_block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  PhotosLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getPHFetchOptionsClass_block_invoke(uint64_t a1)
{
  PhotosLibraryCore();
  result = objc_getClass("PHFetchOptions");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPHFetchOptionsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getPHPersonClass_block_invoke(uint64_t a1)
{
  PhotosLibraryCore();
  result = objc_getClass("PHPerson");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPHPersonClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t CoreRoutineLibraryCore()
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = CoreRoutineLibraryCore_frameworkLibrary;
  v6 = CoreRoutineLibraryCore_frameworkLibrary;
  if (!CoreRoutineLibraryCore_frameworkLibrary)
  {
    v7 = xmmword_1E73694E8;
    v8 = *off_1E73694F8;
    v9 = 0;
    v4[3] = _sl_dlopen();
    CoreRoutineLibraryCore_frameworkLibrary = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  v1 = *MEMORY[0x1E69E9840];
  return v0;
}

void sub_1917F9ABC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __CoreRoutineLibraryCore_block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  CoreRoutineLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getRTRoutineManagerClass_block_invoke(uint64_t a1)
{
  CoreRoutineLibraryCore();
  result = objc_getClass("RTRoutineManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getRTRoutineManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t HealthKitLibraryCore()
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = HealthKitLibraryCore_frameworkLibrary;
  v6 = HealthKitLibraryCore_frameworkLibrary;
  if (!HealthKitLibraryCore_frameworkLibrary)
  {
    v7 = xmmword_1E7369510;
    v8 = *off_1E7369520;
    v9 = 0;
    v4[3] = _sl_dlopen();
    HealthKitLibraryCore_frameworkLibrary = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  v1 = *MEMORY[0x1E69E9840];
  return v0;
}

void sub_1917F9CD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __HealthKitLibraryCore_block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  HealthKitLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getHKHealthStoreClass_block_invoke(uint64_t a1)
{
  HealthKitLibraryCore();
  result = objc_getClass("HKHealthStore");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getHKHealthStoreClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getHKMedicalIDStoreClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = getHKMedicalIDStoreClass_softClass;
  v6 = getHKMedicalIDStoreClass_softClass;
  if (!getHKMedicalIDStoreClass_softClass)
  {
    HealthKitLibraryCore();
    v4[3] = objc_getClass("HKMedicalIDStore");
    getHKMedicalIDStoreClass_softClass = v4[3];
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

void sub_1917F9EC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getHKMedicalIDStoreClass_block_invoke(uint64_t a1)
{
  HealthKitLibraryCore();
  result = objc_getClass("HKMedicalIDStore");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getHKMedicalIDStoreClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t FamilyCircleLibraryCore()
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = FamilyCircleLibraryCore_frameworkLibrary;
  v6 = FamilyCircleLibraryCore_frameworkLibrary;
  if (!FamilyCircleLibraryCore_frameworkLibrary)
  {
    v7 = xmmword_1E7369538;
    v8 = *off_1E7369548;
    v9 = 0;
    v4[3] = _sl_dlopen();
    FamilyCircleLibraryCore_frameworkLibrary = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  v1 = *MEMORY[0x1E69E9840];
  return v0;
}

void sub_1917FA048(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __FamilyCircleLibraryCore_block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  FamilyCircleLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getFAFetchFamilyCircleRequestClass_block_invoke(uint64_t a1)
{
  FamilyCircleLibraryCore();
  result = objc_getClass("FAFetchFamilyCircleRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getFAFetchFamilyCircleRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t CallHistoryLibraryCore()
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = CallHistoryLibraryCore_frameworkLibrary;
  v6 = CallHistoryLibraryCore_frameworkLibrary;
  if (!CallHistoryLibraryCore_frameworkLibrary)
  {
    v7 = xmmword_1E7369560;
    v8 = *off_1E7369570;
    v9 = 0;
    v4[3] = _sl_dlopen();
    CallHistoryLibraryCore_frameworkLibrary = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  v1 = *MEMORY[0x1E69E9840];
  return v0;
}

void sub_1917FA260(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __CallHistoryLibraryCore_block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  CallHistoryLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CallHistoryLibrary()
{
  v0 = CallHistoryLibraryCore();
  if (!v0)
  {
    v2 = abort_report_np();
    free(v2);
  }

  return v0;
}

uint64_t getkCHCallStatusConnectedOutgoingSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkCHCallStatusConnectedOutgoingSymbolLoc_ptr;
  v6 = getkCHCallStatusConnectedOutgoingSymbolLoc_ptr;
  if (!getkCHCallStatusConnectedOutgoingSymbolLoc_ptr)
  {
    v1 = CallHistoryLibrary();
    v4[3] = dlsym(v1, "kCHCallStatusConnectedOutgoing");
    getkCHCallStatusConnectedOutgoingSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1917FA440(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getkCHCallStatusConnectedOutgoingSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CallHistoryLibrary();
  result = dlsym(v2, "kCHCallStatusConnectedOutgoing");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCHCallStatusConnectedOutgoingSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getCHManagerClass_block_invoke(uint64_t a1)
{
  CallHistoryLibraryCore();
  result = objc_getClass("CHManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCHManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getCHRecentCallClass_block_invoke(uint64_t a1)
{
  CallHistoryLibraryCore();
  result = objc_getClass("CHRecentCall");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCHRecentCallClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t BiomeStreamsLibraryCore()
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = BiomeStreamsLibraryCore_frameworkLibrary;
  v6 = BiomeStreamsLibraryCore_frameworkLibrary;
  if (!BiomeStreamsLibraryCore_frameworkLibrary)
  {
    v7 = xmmword_1E7369588;
    v8 = *off_1E7369598;
    v9 = 0;
    v4[3] = _sl_dlopen();
    BiomeStreamsLibraryCore_frameworkLibrary = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  v1 = *MEMORY[0x1E69E9840];
  return v0;
}

void sub_1917FA664(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __BiomeStreamsLibraryCore_block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  BiomeStreamsLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getBMDKEventClass_block_invoke(uint64_t a1)
{
  BiomeStreamsLibraryCore();
  result = objc_getClass("BMDKEvent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBMDKEventClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getBMDKEventStreamClass_block_invoke(uint64_t a1)
{
  BiomeStreamsLibraryCore();
  result = objc_getClass("BMDKEventStream");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBMDKEventStreamClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getBMLibraryStreamsPrunerClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = getBMLibraryStreamsPrunerClass_softClass;
  v6 = getBMLibraryStreamsPrunerClass_softClass;
  if (!getBMLibraryStreamsPrunerClass_softClass)
  {
    BiomeStreamsLibraryCore();
    v4[3] = objc_getClass("BMLibraryStreamsPruner");
    getBMLibraryStreamsPrunerClass_softClass = v4[3];
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

void sub_1917FA8AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getBMLibraryStreamsPrunerClass_block_invoke(uint64_t a1)
{
  BiomeStreamsLibraryCore();
  result = objc_getClass("BMLibraryStreamsPruner");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBMLibraryStreamsPrunerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t BiomeStorageLibraryCore()
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = BiomeStorageLibraryCore_frameworkLibrary;
  v6 = BiomeStorageLibraryCore_frameworkLibrary;
  if (!BiomeStorageLibraryCore_frameworkLibrary)
  {
    v7 = xmmword_1E73695B0;
    v8 = *off_1E73695C0;
    v9 = 0;
    v4[3] = _sl_dlopen();
    BiomeStorageLibraryCore_frameworkLibrary = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  v1 = *MEMORY[0x1E69E9840];
  return v0;
}

void sub_1917FAA2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __BiomeStorageLibraryCore_block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  BiomeStorageLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

id getBMStoreConfigClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = getBMStoreConfigClass_softClass;
  v6 = getBMStoreConfigClass_softClass;
  if (!getBMStoreConfigClass_softClass)
  {
    BiomeStorageLibraryCore();
    v4[3] = objc_getClass("BMStoreConfig");
    getBMStoreConfigClass_softClass = v4[3];
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

void sub_1917FABCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getBMStoreConfigClass_block_invoke(uint64_t a1)
{
  BiomeStorageLibraryCore();
  result = objc_getClass("BMStoreConfig");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBMStoreConfigClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getBMStoreStreamClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = getBMStoreStreamClass_softClass;
  v6 = getBMStoreStreamClass_softClass;
  if (!getBMStoreStreamClass_softClass)
  {
    BiomeStorageLibraryCore();
    v4[3] = objc_getClass("BMStoreStream");
    getBMStoreStreamClass_softClass = v4[3];
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

void sub_1917FAD28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getBMStoreStreamClass_block_invoke(uint64_t a1)
{
  BiomeStorageLibraryCore();
  result = objc_getClass("BMStoreStream");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBMStoreStreamClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t RelevanceEngineLibraryCore()
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = RelevanceEngineLibraryCore_frameworkLibrary;
  v6 = RelevanceEngineLibraryCore_frameworkLibrary;
  if (!RelevanceEngineLibraryCore_frameworkLibrary)
  {
    v7 = xmmword_1E73695D8;
    v8 = *off_1E73695E8;
    v9 = 0;
    v4[3] = _sl_dlopen();
    RelevanceEngineLibraryCore_frameworkLibrary = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  v1 = *MEMORY[0x1E69E9840];
  return v0;
}

void sub_1917FAEA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __RelevanceEngineLibraryCore_block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  RelevanceEngineLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t RelevanceEngineLibrary()
{
  v0 = RelevanceEngineLibraryCore();
  if (!v0)
  {
    v2 = abort_report_np();
    free(v2);
  }

  return v0;
}

uint64_t getREIsSupergreenUsedInLastOneDaySymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getREIsSupergreenUsedInLastOneDaySymbolLoc_ptr;
  v6 = getREIsSupergreenUsedInLastOneDaySymbolLoc_ptr;
  if (!getREIsSupergreenUsedInLastOneDaySymbolLoc_ptr)
  {
    v1 = RelevanceEngineLibrary();
    v4[3] = dlsym(v1, "REIsSupergreenUsedInLastOneDay");
    getREIsSupergreenUsedInLastOneDaySymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1917FB088(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getREIsSupergreenUsedInLastOneDaySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = RelevanceEngineLibrary();
  result = dlsym(v2, "REIsSupergreenUsedInLastOneDay");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getREIsSupergreenUsedInLastOneDaySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t slREIsSupergreenUsedInLastOneDay()
{
  REIsSupergreenUsedInLastOneDaySymbolLoc = getREIsSupergreenUsedInLastOneDaySymbolLoc();
  if (REIsSupergreenUsedInLastOneDaySymbolLoc)
  {

    return REIsSupergreenUsedInLastOneDaySymbolLoc();
  }

  else
  {
    CNContactBirthdayKey_cold_1 = getCNContactBirthdayKey_cold_1();
    return getREIsSupergreenUsedInLastSevenDaysSymbolLoc(CNContactBirthdayKey_cold_1);
  }
}

uint64_t getREIsSupergreenUsedInLastSevenDaysSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getREIsSupergreenUsedInLastSevenDaysSymbolLoc_ptr;
  v6 = getREIsSupergreenUsedInLastSevenDaysSymbolLoc_ptr;
  if (!getREIsSupergreenUsedInLastSevenDaysSymbolLoc_ptr)
  {
    v1 = RelevanceEngineLibrary();
    v4[3] = dlsym(v1, "REIsSupergreenUsedInLastSevenDays");
    getREIsSupergreenUsedInLastSevenDaysSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1917FB1F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getREIsSupergreenUsedInLastSevenDaysSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = RelevanceEngineLibrary();
  result = dlsym(v2, "REIsSupergreenUsedInLastSevenDays");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getREIsSupergreenUsedInLastSevenDaysSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t slREIsSupergreenUsedInLastSevenDays()
{
  REIsSupergreenUsedInLastSevenDaysSymbolLoc = getREIsSupergreenUsedInLastSevenDaysSymbolLoc();
  if (REIsSupergreenUsedInLastSevenDaysSymbolLoc)
  {

    return REIsSupergreenUsedInLastSevenDaysSymbolLoc();
  }

  else
  {
    CNContactBirthdayKey_cold_1 = getCNContactBirthdayKey_cold_1();
    return getRESupergreenSuggestedImageDonationWidthSymbolLoc(CNContactBirthdayKey_cold_1);
  }
}

uint64_t getRESupergreenSuggestedImageDonationWidthSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getRESupergreenSuggestedImageDonationWidthSymbolLoc_ptr;
  v6 = getRESupergreenSuggestedImageDonationWidthSymbolLoc_ptr;
  if (!getRESupergreenSuggestedImageDonationWidthSymbolLoc_ptr)
  {
    v1 = RelevanceEngineLibrary();
    v4[3] = dlsym(v1, "RESupergreenSuggestedImageDonationWidth");
    getRESupergreenSuggestedImageDonationWidthSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1917FB360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getRESupergreenSuggestedImageDonationWidthSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = RelevanceEngineLibrary();
  result = dlsym(v2, "RESupergreenSuggestedImageDonationWidth");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getRESupergreenSuggestedImageDonationWidthSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t slRESupergreenSuggestedImageDonationWidth()
{
  RESupergreenSuggestedImageDonationWidthSymbolLoc = getRESupergreenSuggestedImageDonationWidthSymbolLoc();
  if (RESupergreenSuggestedImageDonationWidthSymbolLoc)
  {

    return RESupergreenSuggestedImageDonationWidthSymbolLoc();
  }

  else
  {
    CNContactBirthdayKey_cold_1 = getCNContactBirthdayKey_cold_1();
    return __getRESiriActionsDonationsWhitelistClass_block_invoke(CNContactBirthdayKey_cold_1);
  }
}

Class __getRESiriActionsDonationsWhitelistClass_block_invoke(uint64_t a1)
{
  RelevanceEngineLibraryCore();
  result = objc_getClass("RESiriActionsDonationsWhitelist");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getRESiriActionsDonationsWhitelistClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t ScreenTimeCoreLibraryCore()
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = ScreenTimeCoreLibraryCore_frameworkLibrary;
  v6 = ScreenTimeCoreLibraryCore_frameworkLibrary;
  if (!ScreenTimeCoreLibraryCore_frameworkLibrary)
  {
    v7 = xmmword_1E7369600;
    v8 = *off_1E7369610;
    v9 = 0;
    v4[3] = _sl_dlopen();
    ScreenTimeCoreLibraryCore_frameworkLibrary = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  v1 = *MEMORY[0x1E69E9840];
  return v0;
}

void sub_1917FB560(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __ScreenTimeCoreLibraryCore_block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  ScreenTimeCoreLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getSTManagementStateClass_block_invoke(uint64_t a1)
{
  ScreenTimeCoreLibraryCore();
  result = objc_getClass("STManagementState");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSTManagementStateClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t AssistantServicesLibraryCore()
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = AssistantServicesLibraryCore_frameworkLibrary;
  v6 = AssistantServicesLibraryCore_frameworkLibrary;
  if (!AssistantServicesLibraryCore_frameworkLibrary)
  {
    v7 = xmmword_1E7369628;
    v8 = *off_1E7369638;
    v9 = 0;
    v4[3] = _sl_dlopen();
    AssistantServicesLibraryCore_frameworkLibrary = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  v1 = *MEMORY[0x1E69E9840];
  return v0;
}

void sub_1917FB778(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __AssistantServicesLibraryCore_block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  AssistantServicesLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t AssistantServicesLibrary()
{
  v0 = AssistantServicesLibraryCore();
  if (!v0)
  {
    v2 = abort_report_np();
    free(v2);
  }

  return v0;
}

uint64_t getkAFCloudStorageDeletedByUserDarwinNotificationSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkAFCloudStorageDeletedByUserDarwinNotificationSymbolLoc_ptr;
  v6 = getkAFCloudStorageDeletedByUserDarwinNotificationSymbolLoc_ptr;
  if (!getkAFCloudStorageDeletedByUserDarwinNotificationSymbolLoc_ptr)
  {
    v1 = AssistantServicesLibrary();
    v4[3] = dlsym(v1, "kAFCloudStorageDeletedByUserDarwinNotification");
    getkAFCloudStorageDeletedByUserDarwinNotificationSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1917FB958(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getkAFCloudStorageDeletedByUserDarwinNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AssistantServicesLibrary();
  result = dlsym(v2, "kAFCloudStorageDeletedByUserDarwinNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkAFCloudStorageDeletedByUserDarwinNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t getkAFCloudSyncPreferenceDidChangeDarwinNotificationSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkAFCloudSyncPreferenceDidChangeDarwinNotificationSymbolLoc_ptr;
  v6 = getkAFCloudSyncPreferenceDidChangeDarwinNotificationSymbolLoc_ptr;
  if (!getkAFCloudSyncPreferenceDidChangeDarwinNotificationSymbolLoc_ptr)
  {
    v1 = AssistantServicesLibrary();
    v4[3] = dlsym(v1, "kAFCloudSyncPreferenceDidChangeDarwinNotification");
    getkAFCloudSyncPreferenceDidChangeDarwinNotificationSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1917FBA94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getkAFCloudSyncPreferenceDidChangeDarwinNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AssistantServicesLibrary();
  result = dlsym(v2, "kAFCloudSyncPreferenceDidChangeDarwinNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkAFCloudSyncPreferenceDidChangeDarwinNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getAFPreferencesClass_block_invoke(uint64_t a1)
{
  AssistantServicesLibraryCore();
  result = objc_getClass("AFPreferences");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAFPreferencesClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __libMobileGestaltLibraryCore_block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  libMobileGestaltLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

void *__getMGCopyAnswerSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = libMobileGestaltLibrary();
  result = dlsym(v2, "MGCopyAnswer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMGCopyAnswerSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MobileKeyBagLibraryCore_block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  MobileKeyBagLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

void *__getMKBDeviceFormattedForContentProtectionSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MobileKeyBagLibrary();
  result = dlsym(v2, "MKBDeviceFormattedForContentProtection");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMKBDeviceFormattedForContentProtectionSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMKBDeviceUnlockedSinceBootSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MobileKeyBagLibrary();
  result = dlsym(v2, "MKBDeviceUnlockedSinceBoot");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMKBDeviceUnlockedSinceBootSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __PeopleSuggesterLibraryCore_block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  PeopleSuggesterLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CoreMotionLibraryCore()
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = CoreMotionLibraryCore_frameworkLibrary;
  v6 = CoreMotionLibraryCore_frameworkLibrary;
  if (!CoreMotionLibraryCore_frameworkLibrary)
  {
    v7 = xmmword_1E73696B8;
    v8 = *off_1E73696C8;
    v9 = 0;
    v4[3] = _sl_dlopen();
    CoreMotionLibraryCore_frameworkLibrary = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  v1 = *MEMORY[0x1E69E9840];
  return v0;
}

void sub_1917FC4B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __CoreMotionLibraryCore_block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  CoreMotionLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

id getCMMotionActivityManagerClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = getCMMotionActivityManagerClass_softClass;
  v6 = getCMMotionActivityManagerClass_softClass;
  if (!getCMMotionActivityManagerClass_softClass)
  {
    CoreMotionLibraryCore();
    v4[3] = objc_getClass("CMMotionActivityManager");
    getCMMotionActivityManagerClass_softClass = v4[3];
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

void sub_1917FC650(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCMMotionActivityManagerClass_block_invoke(uint64_t a1)
{
  CoreMotionLibraryCore();
  result = objc_getClass("CMMotionActivityManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCMMotionActivityManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t CoreSpotlightLibraryCore()
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = CoreSpotlightLibraryCore_frameworkLibrary;
  v6 = CoreSpotlightLibraryCore_frameworkLibrary;
  if (!CoreSpotlightLibraryCore_frameworkLibrary)
  {
    v7 = xmmword_1E73696E0;
    v8 = *off_1E73696F0;
    v9 = 0;
    v4[3] = _sl_dlopen();
    CoreSpotlightLibraryCore_frameworkLibrary = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  v1 = *MEMORY[0x1E69E9840];
  return v0;
}

void sub_1917FC7D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __CoreSpotlightLibraryCore_block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  CoreSpotlightLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CoreSpotlightLibrary()
{
  v0 = CoreSpotlightLibraryCore();
  if (!v0)
  {
    v2 = abort_report_np();
    free(v2);
  }

  return v0;
}

uint64_t getCSMailboxArchiveSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getCSMailboxArchiveSymbolLoc_ptr;
  v6 = getCSMailboxArchiveSymbolLoc_ptr;
  if (!getCSMailboxArchiveSymbolLoc_ptr)
  {
    v1 = CoreSpotlightLibrary();
    v4[3] = dlsym(v1, "CSMailboxArchive");
    getCSMailboxArchiveSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1917FC9B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getCSMailboxArchiveSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreSpotlightLibrary();
  result = dlsym(v2, "CSMailboxArchive");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCSMailboxArchiveSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t getCSMailboxInboxSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getCSMailboxInboxSymbolLoc_ptr;
  v6 = getCSMailboxInboxSymbolLoc_ptr;
  if (!getCSMailboxInboxSymbolLoc_ptr)
  {
    v1 = CoreSpotlightLibrary();
    v4[3] = dlsym(v1, "CSMailboxInbox");
    getCSMailboxInboxSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1917FCAEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getCSMailboxInboxSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreSpotlightLibrary();
  result = dlsym(v2, "CSMailboxInbox");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCSMailboxInboxSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t getCSMailboxSentSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getCSMailboxSentSymbolLoc_ptr;
  v6 = getCSMailboxSentSymbolLoc_ptr;
  if (!getCSMailboxSentSymbolLoc_ptr)
  {
    v1 = CoreSpotlightLibrary();
    v4[3] = dlsym(v1, "CSMailboxSent");
    getCSMailboxSentSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1917FCC28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getCSMailboxSentSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreSpotlightLibrary();
  result = dlsym(v2, "CSMailboxSent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCSMailboxSentSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t getMDItemAccountHandlesSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getMDItemAccountHandlesSymbolLoc_ptr;
  v6 = getMDItemAccountHandlesSymbolLoc_ptr;
  if (!getMDItemAccountHandlesSymbolLoc_ptr)
  {
    v1 = CoreSpotlightLibrary();
    v4[3] = dlsym(v1, "MDItemAccountHandles");
    getMDItemAccountHandlesSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1917FCD64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getMDItemAccountHandlesSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreSpotlightLibrary();
  result = dlsym(v2, "MDItemAccountHandles");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMDItemAccountHandlesSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getMDItemAccountHandles()
{
  MDItemAccountHandlesSymbolLoc = getMDItemAccountHandlesSymbolLoc();
  if (MDItemAccountHandlesSymbolLoc)
  {
    v1 = *MDItemAccountHandlesSymbolLoc;

    return v1;
  }

  else
  {
    CNContactBirthdayKey_cold_1 = getCNContactBirthdayKey_cold_1();
    return getMDItemAccountIdentifierSymbolLoc(CNContactBirthdayKey_cold_1);
  }
}

uint64_t getMDItemAccountIdentifierSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getMDItemAccountIdentifierSymbolLoc_ptr;
  v6 = getMDItemAccountIdentifierSymbolLoc_ptr;
  if (!getMDItemAccountIdentifierSymbolLoc_ptr)
  {
    v1 = CoreSpotlightLibrary();
    v4[3] = dlsym(v1, "MDItemAccountIdentifier");
    getMDItemAccountIdentifierSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1917FCED4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getMDItemAccountIdentifierSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreSpotlightLibrary();
  result = dlsym(v2, "MDItemAccountIdentifier");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMDItemAccountIdentifierSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getMDItemAccountIdentifier()
{
  MDItemAccountIdentifierSymbolLoc = getMDItemAccountIdentifierSymbolLoc();
  if (MDItemAccountIdentifierSymbolLoc)
  {
    v1 = *MDItemAccountIdentifierSymbolLoc;

    return v1;
  }

  else
  {
    CNContactBirthdayKey_cold_1 = getCNContactBirthdayKey_cold_1();
    return getMDItemAdditionalRecipientPersonsSymbolLoc(CNContactBirthdayKey_cold_1);
  }
}

uint64_t getMDItemAdditionalRecipientPersonsSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getMDItemAdditionalRecipientPersonsSymbolLoc_ptr;
  v6 = getMDItemAdditionalRecipientPersonsSymbolLoc_ptr;
  if (!getMDItemAdditionalRecipientPersonsSymbolLoc_ptr)
  {
    v1 = CoreSpotlightLibrary();
    v4[3] = dlsym(v1, "MDItemAdditionalRecipientPersons");
    getMDItemAdditionalRecipientPersonsSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1917FD044(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getMDItemAdditionalRecipientPersonsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreSpotlightLibrary();
  result = dlsym(v2, "MDItemAdditionalRecipientPersons");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMDItemAdditionalRecipientPersonsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getMDItemAdditionalRecipientPersons()
{
  MDItemAdditionalRecipientPersonsSymbolLoc = getMDItemAdditionalRecipientPersonsSymbolLoc();
  if (MDItemAdditionalRecipientPersonsSymbolLoc)
  {
    v1 = *MDItemAdditionalRecipientPersonsSymbolLoc;

    return v1;
  }

  else
  {
    CNContactBirthdayKey_cold_1 = getCNContactBirthdayKey_cold_1();
    return getMDItemAuthorPersonsSymbolLoc(CNContactBirthdayKey_cold_1);
  }
}

uint64_t getMDItemAuthorPersonsSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getMDItemAuthorPersonsSymbolLoc_ptr;
  v6 = getMDItemAuthorPersonsSymbolLoc_ptr;
  if (!getMDItemAuthorPersonsSymbolLoc_ptr)
  {
    v1 = CoreSpotlightLibrary();
    v4[3] = dlsym(v1, "MDItemAuthorPersons");
    getMDItemAuthorPersonsSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1917FD1B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getMDItemAuthorPersonsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreSpotlightLibrary();
  result = dlsym(v2, "MDItemAuthorPersons");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMDItemAuthorPersonsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getMDItemAuthorPersons()
{
  MDItemAuthorPersonsSymbolLoc = getMDItemAuthorPersonsSymbolLoc();
  if (MDItemAuthorPersonsSymbolLoc)
  {
    v1 = *MDItemAuthorPersonsSymbolLoc;

    return v1;
  }

  else
  {
    CNContactBirthdayKey_cold_1 = getCNContactBirthdayKey_cold_1();
    return getMDItemContentCreationDateSymbolLoc(CNContactBirthdayKey_cold_1);
  }
}

uint64_t getMDItemContentCreationDateSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getMDItemContentCreationDateSymbolLoc_ptr;
  v6 = getMDItemContentCreationDateSymbolLoc_ptr;
  if (!getMDItemContentCreationDateSymbolLoc_ptr)
  {
    v1 = CoreSpotlightLibrary();
    v4[3] = dlsym(v1, "MDItemContentCreationDate");
    getMDItemContentCreationDateSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1917FD324(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getMDItemContentCreationDateSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreSpotlightLibrary();
  result = dlsym(v2, "MDItemContentCreationDate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMDItemContentCreationDateSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getMDItemContentCreationDate()
{
  MDItemContentCreationDateSymbolLoc = getMDItemContentCreationDateSymbolLoc();
  if (MDItemContentCreationDateSymbolLoc)
  {
    v1 = *MDItemContentCreationDateSymbolLoc;

    return v1;
  }

  else
  {
    CNContactBirthdayKey_cold_1 = getCNContactBirthdayKey_cold_1();
    return getMDItemContentTypeSymbolLoc(CNContactBirthdayKey_cold_1);
  }
}

uint64_t getMDItemContentTypeSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getMDItemContentTypeSymbolLoc_ptr;
  v6 = getMDItemContentTypeSymbolLoc_ptr;
  if (!getMDItemContentTypeSymbolLoc_ptr)
  {
    v1 = CoreSpotlightLibrary();
    v4[3] = dlsym(v1, "MDItemContentType");
    getMDItemContentTypeSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1917FD494(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getMDItemContentTypeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreSpotlightLibrary();
  result = dlsym(v2, "MDItemContentType");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMDItemContentTypeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getMDItemContentType()
{
  MDItemContentTypeSymbolLoc = getMDItemContentTypeSymbolLoc();
  if (MDItemContentTypeSymbolLoc)
  {
    v1 = *MDItemContentTypeSymbolLoc;

    return v1;
  }

  else
  {
    CNContactBirthdayKey_cold_1 = getCNContactBirthdayKey_cold_1();
    return getMDItemDisplayNameSymbolLoc(CNContactBirthdayKey_cold_1);
  }
}

uint64_t getMDItemDisplayNameSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getMDItemDisplayNameSymbolLoc_ptr;
  v6 = getMDItemDisplayNameSymbolLoc_ptr;
  if (!getMDItemDisplayNameSymbolLoc_ptr)
  {
    v1 = CoreSpotlightLibrary();
    v4[3] = dlsym(v1, "MDItemDisplayName");
    getMDItemDisplayNameSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1917FD604(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getMDItemDisplayNameSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreSpotlightLibrary();
  result = dlsym(v2, "MDItemDisplayName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMDItemDisplayNameSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getMDItemDisplayName()
{
  MDItemDisplayNameSymbolLoc = getMDItemDisplayNameSymbolLoc();
  if (MDItemDisplayNameSymbolLoc)
  {
    v1 = *MDItemDisplayNameSymbolLoc;

    return v1;
  }

  else
  {
    CNContactBirthdayKey_cold_1 = getCNContactBirthdayKey_cold_1();
    return getMDItemEmailHeadersDictionarySymbolLoc(CNContactBirthdayKey_cold_1);
  }
}

uint64_t getMDItemEmailHeadersDictionarySymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getMDItemEmailHeadersDictionarySymbolLoc_ptr;
  v6 = getMDItemEmailHeadersDictionarySymbolLoc_ptr;
  if (!getMDItemEmailHeadersDictionarySymbolLoc_ptr)
  {
    v1 = CoreSpotlightLibrary();
    v4[3] = dlsym(v1, "MDItemEmailHeadersDictionary");
    getMDItemEmailHeadersDictionarySymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1917FD774(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getMDItemEmailHeadersDictionarySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreSpotlightLibrary();
  result = dlsym(v2, "MDItemEmailHeadersDictionary");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMDItemEmailHeadersDictionarySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getMDItemEmailHeadersDictionary()
{
  MDItemEmailHeadersDictionarySymbolLoc = getMDItemEmailHeadersDictionarySymbolLoc();
  if (MDItemEmailHeadersDictionarySymbolLoc)
  {
    v1 = *MDItemEmailHeadersDictionarySymbolLoc;

    return v1;
  }

  else
  {
    CNContactBirthdayKey_cold_1 = getCNContactBirthdayKey_cold_1();
    return getMDItemHiddenAdditionalRecipientPersonsSymbolLoc(CNContactBirthdayKey_cold_1);
  }
}

uint64_t getMDItemHiddenAdditionalRecipientPersonsSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getMDItemHiddenAdditionalRecipientPersonsSymbolLoc_ptr;
  v6 = getMDItemHiddenAdditionalRecipientPersonsSymbolLoc_ptr;
  if (!getMDItemHiddenAdditionalRecipientPersonsSymbolLoc_ptr)
  {
    v1 = CoreSpotlightLibrary();
    v4[3] = dlsym(v1, "MDItemHiddenAdditionalRecipientPersons");
    getMDItemHiddenAdditionalRecipientPersonsSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1917FD8E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getMDItemHiddenAdditionalRecipientPersonsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreSpotlightLibrary();
  result = dlsym(v2, "MDItemHiddenAdditionalRecipientPersons");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMDItemHiddenAdditionalRecipientPersonsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getMDItemHiddenAdditionalRecipientPersons()
{
  MDItemHiddenAdditionalRecipientPersonsSymbolLoc = getMDItemHiddenAdditionalRecipientPersonsSymbolLoc();
  if (MDItemHiddenAdditionalRecipientPersonsSymbolLoc)
  {
    v1 = *MDItemHiddenAdditionalRecipientPersonsSymbolLoc;

    return v1;
  }

  else
  {
    CNContactBirthdayKey_cold_1 = getCNContactBirthdayKey_cold_1();
    return getMDItemMailboxesSymbolLoc(CNContactBirthdayKey_cold_1);
  }
}

uint64_t getMDItemMailboxesSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getMDItemMailboxesSymbolLoc_ptr;
  v6 = getMDItemMailboxesSymbolLoc_ptr;
  if (!getMDItemMailboxesSymbolLoc_ptr)
  {
    v1 = CoreSpotlightLibrary();
    v4[3] = dlsym(v1, "MDItemMailboxes");
    getMDItemMailboxesSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1917FDA54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getMDItemMailboxesSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreSpotlightLibrary();
  result = dlsym(v2, "MDItemMailboxes");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMDItemMailboxesSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getMDItemMailboxes()
{
  MDItemMailboxesSymbolLoc = getMDItemMailboxesSymbolLoc();
  if (MDItemMailboxesSymbolLoc)
  {
    v1 = *MDItemMailboxesSymbolLoc;

    return v1;
  }

  else
  {
    CNContactBirthdayKey_cold_1 = getCNContactBirthdayKey_cold_1();
    return getMDItemPrimaryRecipientPersonsSymbolLoc(CNContactBirthdayKey_cold_1);
  }
}

uint64_t getMDItemPrimaryRecipientPersonsSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getMDItemPrimaryRecipientPersonsSymbolLoc_ptr;
  v6 = getMDItemPrimaryRecipientPersonsSymbolLoc_ptr;
  if (!getMDItemPrimaryRecipientPersonsSymbolLoc_ptr)
  {
    v1 = CoreSpotlightLibrary();
    v4[3] = dlsym(v1, "MDItemPrimaryRecipientPersons");
    getMDItemPrimaryRecipientPersonsSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1917FDBC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getMDItemPrimaryRecipientPersonsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreSpotlightLibrary();
  result = dlsym(v2, "MDItemPrimaryRecipientPersons");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMDItemPrimaryRecipientPersonsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getMDItemPrimaryRecipientPersons()
{
  MDItemPrimaryRecipientPersonsSymbolLoc = getMDItemPrimaryRecipientPersonsSymbolLoc();
  if (MDItemPrimaryRecipientPersonsSymbolLoc)
  {
    v1 = *MDItemPrimaryRecipientPersonsSymbolLoc;

    return v1;
  }

  else
  {
    CNContactBirthdayKey_cold_1 = getCNContactBirthdayKey_cold_1();
    return getMDItemRecipientEmailAddressesSymbolLoc(CNContactBirthdayKey_cold_1);
  }
}

uint64_t getMDItemRecipientEmailAddressesSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getMDItemRecipientEmailAddressesSymbolLoc_ptr;
  v6 = getMDItemRecipientEmailAddressesSymbolLoc_ptr;
  if (!getMDItemRecipientEmailAddressesSymbolLoc_ptr)
  {
    v1 = CoreSpotlightLibrary();
    v4[3] = dlsym(v1, "MDItemRecipientEmailAddresses");
    getMDItemRecipientEmailAddressesSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1917FDD34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getMDItemRecipientEmailAddressesSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreSpotlightLibrary();
  result = dlsym(v2, "MDItemRecipientEmailAddresses");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMDItemRecipientEmailAddressesSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getMDItemRecipientEmailAddresses()
{
  MDItemRecipientEmailAddressesSymbolLoc = getMDItemRecipientEmailAddressesSymbolLoc();
  if (MDItemRecipientEmailAddressesSymbolLoc)
  {
    v1 = *MDItemRecipientEmailAddressesSymbolLoc;

    return v1;
  }

  else
  {
    CNContactBirthdayKey_cold_1 = getCNContactBirthdayKey_cold_1();
    return getMDItemRecipientsSymbolLoc(CNContactBirthdayKey_cold_1);
  }
}

uint64_t getMDItemRecipientsSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getMDItemRecipientsSymbolLoc_ptr;
  v6 = getMDItemRecipientsSymbolLoc_ptr;
  if (!getMDItemRecipientsSymbolLoc_ptr)
  {
    v1 = CoreSpotlightLibrary();
    v4[3] = dlsym(v1, "MDItemRecipients");
    getMDItemRecipientsSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1917FDEA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getMDItemRecipientsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreSpotlightLibrary();
  result = dlsym(v2, "MDItemRecipients");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMDItemRecipientsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getMDItemRecipients()
{
  MDItemRecipientsSymbolLoc = getMDItemRecipientsSymbolLoc();
  if (MDItemRecipientsSymbolLoc)
  {
    v1 = *MDItemRecipientsSymbolLoc;

    return v1;
  }

  else
  {
    CNContactBirthdayKey_cold_1 = getCNContactBirthdayKey_cold_1();
    return getMDItemSubjectSymbolLoc(CNContactBirthdayKey_cold_1);
  }
}

uint64_t getMDItemSubjectSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getMDItemSubjectSymbolLoc_ptr;
  v6 = getMDItemSubjectSymbolLoc_ptr;
  if (!getMDItemSubjectSymbolLoc_ptr)
  {
    v1 = CoreSpotlightLibrary();
    v4[3] = dlsym(v1, "MDItemSubject");
    getMDItemSubjectSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1917FE014(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getMDItemSubjectSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreSpotlightLibrary();
  result = dlsym(v2, "MDItemSubject");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMDItemSubjectSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getMDItemSubject()
{
  MDItemSubjectSymbolLoc = getMDItemSubjectSymbolLoc();
  if (MDItemSubjectSymbolLoc)
  {
    v1 = *MDItemSubjectSymbolLoc;

    return v1;
  }

  else
  {
    getCNContactBirthdayKey_cold_1();
    return getMDSearchQueryOptionFetchAttributesSymbolLoc();
  }
}

uint64_t getMDSearchQueryOptionFetchAttributesSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getMDSearchQueryOptionFetchAttributesSymbolLoc_ptr;
  v6 = getMDSearchQueryOptionFetchAttributesSymbolLoc_ptr;
  if (!getMDSearchQueryOptionFetchAttributesSymbolLoc_ptr)
  {
    v1 = CoreSpotlightLibrary();
    v4[3] = dlsym(v1, "MDSearchQueryOptionFetchAttributes");
    getMDSearchQueryOptionFetchAttributesSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1917FE184(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getMDSearchQueryOptionFetchAttributesSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreSpotlightLibrary();
  result = dlsym(v2, "MDSearchQueryOptionFetchAttributes");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMDSearchQueryOptionFetchAttributesSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getMDSearchQueryOptionFetchAttributes()
{
  AttributesSymbolLoc = getMDSearchQueryOptionFetchAttributesSymbolLoc();
  if (AttributesSymbolLoc)
  {
    v1 = *AttributesSymbolLoc;

    return v1;
  }

  else
  {
    CNContactBirthdayKey_cold_1 = getCNContactBirthdayKey_cold_1();
    return __getCSSearchableIndexClass_block_invoke(CNContactBirthdayKey_cold_1);
  }
}

Class __getCSSearchableIndexClass_block_invoke(uint64_t a1)
{
  CoreSpotlightLibraryCore();
  result = objc_getClass("CSSearchableIndex");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCSSearchableIndexClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getMDSearchQueryClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = getMDSearchQueryClass_softClass;
  v6 = getMDSearchQueryClass_softClass;
  if (!getMDSearchQueryClass_softClass)
  {
    CoreSpotlightLibraryCore();
    v4[3] = objc_getClass("MDSearchQuery");
    getMDSearchQueryClass_softClass = v4[3];
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

void sub_1917FE364(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMDSearchQueryClass_block_invoke(uint64_t a1)
{
  CoreSpotlightLibraryCore();
  result = objc_getClass("MDSearchQuery");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMDSearchQueryClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t SpotlightReceiverLibraryCore()
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = SpotlightReceiverLibraryCore_frameworkLibrary;
  v6 = SpotlightReceiverLibraryCore_frameworkLibrary;
  if (!SpotlightReceiverLibraryCore_frameworkLibrary)
  {
    v7 = xmmword_1E7369708;
    v8 = *off_1E7369718;
    v9 = 0;
    v4[3] = _sl_dlopen();
    SpotlightReceiverLibraryCore_frameworkLibrary = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  v1 = *MEMORY[0x1E69E9840];
  return v0;
}

void sub_1917FE4E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __SpotlightReceiverLibraryCore_block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  SpotlightReceiverLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t SpotlightReceiverLibrary()
{
  v0 = SpotlightReceiverLibraryCore();
  if (!v0)
  {
    v2 = abort_report_np();
    free(v2);
  }

  return v0;
}

uint64_t getSpotlightReceiverRegisterSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getSpotlightReceiverRegisterSymbolLoc_ptr;
  v6 = getSpotlightReceiverRegisterSymbolLoc_ptr;
  if (!getSpotlightReceiverRegisterSymbolLoc_ptr)
  {
    v1 = SpotlightReceiverLibrary();
    v4[3] = dlsym(v1, "SpotlightReceiverRegister");
    getSpotlightReceiverRegisterSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1917FE6C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getSpotlightReceiverRegisterSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SpotlightReceiverLibrary();
  result = dlsym(v2, "SpotlightReceiverRegister");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSpotlightReceiverRegisterSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void cd_SpotlightReceiverRegister(void *a1, void *a2)
{
  v6 = a1;
  v3 = a2;
  SpotlightReceiverRegisterSymbolLoc = getSpotlightReceiverRegisterSymbolLoc();
  if (SpotlightReceiverRegisterSymbolLoc)
  {
    SpotlightReceiverRegisterSymbolLoc(v6, v3);
  }

  else
  {
    CNContactBirthdayKey_cold_1 = getCNContactBirthdayKey_cold_1();
    __getSpotlightReceiverConnectionUIDKeySymbolLoc_block_invoke(CNContactBirthdayKey_cold_1);
  }
}

void *__getSpotlightReceiverConnectionUIDKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SpotlightReceiverLibrary();
  result = dlsym(v2, "SpotlightReceiverConnectionUIDKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSpotlightReceiverConnectionUIDKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t CoreServicesLibraryCore()
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = CoreServicesLibraryCore_frameworkLibrary;
  v6 = CoreServicesLibraryCore_frameworkLibrary;
  if (!CoreServicesLibraryCore_frameworkLibrary)
  {
    v7 = xmmword_1E7369730;
    v8 = *off_1E7369740;
    v9 = 0;
    v4[3] = _sl_dlopen();
    CoreServicesLibraryCore_frameworkLibrary = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  v1 = *MEMORY[0x1E69E9840];
  return v0;
}

void sub_1917FE8FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __CoreServicesLibraryCore_block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  CoreServicesLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CoreServicesLibrary()
{
  v0 = CoreServicesLibraryCore();
  if (!v0)
  {
    v2 = abort_report_np();
    free(v2);
  }

  return v0;
}

uint64_t getkUTTypeMessageSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkUTTypeMessageSymbolLoc_ptr;
  v6 = getkUTTypeMessageSymbolLoc_ptr;
  if (!getkUTTypeMessageSymbolLoc_ptr)
  {
    v1 = CoreServicesLibrary();
    v4[3] = dlsym(v1, "kUTTypeMessage");
    getkUTTypeMessageSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1917FEADC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getkUTTypeMessageSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreServicesLibrary();
  result = dlsym(v2, "kUTTypeMessage");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkUTTypeMessageSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t getkUTTypeEmailMessageSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkUTTypeEmailMessageSymbolLoc_ptr;
  v6 = getkUTTypeEmailMessageSymbolLoc_ptr;
  if (!getkUTTypeEmailMessageSymbolLoc_ptr)
  {
    v1 = CoreServicesLibrary();
    v4[3] = dlsym(v1, "kUTTypeEmailMessage");
    getkUTTypeEmailMessageSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1917FEC18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getkUTTypeEmailMessageSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreServicesLibrary();
  result = dlsym(v2, "kUTTypeEmailMessage");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkUTTypeEmailMessageSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t getkUTTypeCalendarEventSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkUTTypeCalendarEventSymbolLoc_ptr;
  v6 = getkUTTypeCalendarEventSymbolLoc_ptr;
  if (!getkUTTypeCalendarEventSymbolLoc_ptr)
  {
    v1 = CoreServicesLibrary();
    v4[3] = dlsym(v1, "kUTTypeCalendarEvent");
    getkUTTypeCalendarEventSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1917FED54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getkUTTypeCalendarEventSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreServicesLibrary();
  result = dlsym(v2, "kUTTypeCalendarEvent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkUTTypeCalendarEventSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t getUTTypeConformsToSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getUTTypeConformsToSymbolLoc_ptr;
  v6 = getUTTypeConformsToSymbolLoc_ptr;
  if (!getUTTypeConformsToSymbolLoc_ptr)
  {
    v1 = CoreServicesLibrary();
    v4[3] = dlsym(v1, "UTTypeConformsTo");
    getUTTypeConformsToSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1917FEE90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getUTTypeConformsToSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreServicesLibrary();
  result = dlsym(v2, "UTTypeConformsTo");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getUTTypeConformsToSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t cd_UTTypeConformsTo(uint64_t a1, uint64_t a2)
{
  UTTypeConformsToSymbolLoc = getUTTypeConformsToSymbolLoc();
  if (UTTypeConformsToSymbolLoc)
  {

    return UTTypeConformsToSymbolLoc(a1, a2);
  }

  else
  {
    getCNContactBirthdayKey_cold_1();
    return CoreDuetContextLibraryCore();
  }
}

uint64_t CoreDuetContextLibraryCore()
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = CoreDuetContextLibraryCore_frameworkLibrary;
  v6 = CoreDuetContextLibraryCore_frameworkLibrary;
  if (!CoreDuetContextLibraryCore_frameworkLibrary)
  {
    v7 = xmmword_1E7369758;
    v8 = *off_1E7369768;
    v9 = 0;
    v4[3] = _sl_dlopen();
    CoreDuetContextLibraryCore_frameworkLibrary = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  v1 = *MEMORY[0x1E69E9840];
  return v0;
}

void sub_1917FF058(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __CoreDuetContextLibraryCore_block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  CoreDuetContextLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t IMCoreLibraryCore()
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = IMCoreLibraryCore_frameworkLibrary;
  v6 = IMCoreLibraryCore_frameworkLibrary;
  if (!IMCoreLibraryCore_frameworkLibrary)
  {
    v7 = xmmword_1E7369780;
    v8 = *off_1E7369790;
    v9 = 0;
    v4[3] = _sl_dlopen();
    IMCoreLibraryCore_frameworkLibrary = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  v1 = *MEMORY[0x1E69E9840];
  return v0;
}

void sub_1917FF318(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __IMCoreLibraryCore_block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  IMCoreLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t IMCoreLibrary()
{
  v0 = IMCoreLibraryCore();
  if (!v0)
  {
    v2 = abort_report_np();
    free(v2);
  }

  return v0;
}

uint64_t getIMSPIGetDisplayNameAndParticipantsForChatWithGUIDSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getIMSPIGetDisplayNameAndParticipantsForChatWithGUIDSymbolLoc_ptr;
  v6 = getIMSPIGetDisplayNameAndParticipantsForChatWithGUIDSymbolLoc_ptr;
  if (!getIMSPIGetDisplayNameAndParticipantsForChatWithGUIDSymbolLoc_ptr)
  {
    v1 = IMCoreLibrary();
    v4[3] = dlsym(v1, "IMSPIGetDisplayNameAndParticipantsForChatWithGUID");
    getIMSPIGetDisplayNameAndParticipantsForChatWithGUIDSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1917FF4F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getIMSPIGetDisplayNameAndParticipantsForChatWithGUIDSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = IMCoreLibrary();
  result = dlsym(v2, "IMSPIGetDisplayNameAndParticipantsForChatWithGUID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getIMSPIGetDisplayNameAndParticipantsForChatWithGUIDSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id sIMSPIGetDisplayNameAndParticipantsForChatWithGUID(void *a1)
{
  v1 = a1;
  IMSPIGetDisplayNameAndParticipantsForChatWithGUIDSymbolLoc = getIMSPIGetDisplayNameAndParticipantsForChatWithGUIDSymbolLoc();
  if (IMSPIGetDisplayNameAndParticipantsForChatWithGUIDSymbolLoc)
  {
    v3 = IMSPIGetDisplayNameAndParticipantsForChatWithGUIDSymbolLoc(v1);

    return v3;
  }

  else
  {
    CNContactBirthdayKey_cold_1 = getCNContactBirthdayKey_cold_1();
    return +[(_DKFetchRecordZoneChangesOperation *)CNContactBirthdayKey_cold_1];
  }
}

void sub_191800978(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id _logChannel()
{
  if (_logChannel_onceToken != -1)
  {
    _logChannel_cold_1();
  }

  v1 = _logChannel_logChannel;

  return v1;
}

void ___logChannel_block_invoke()
{
  v0 = os_log_create("com.apple.coreduet", "notifier");
  v1 = _logChannel_logChannel;
  _logChannel_logChannel = v0;

  if (!_logChannel_logChannel && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    ___logChannel_block_invoke_cold_1();
  }
}

uint64_t _DKPRValueTypeReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v29 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v29 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v29 & 0x7F) << v5;
        if ((v29 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v20 = 0;
        v21 = 0;
        v22 = 0;
        while (1)
        {
          v30 = 0;
          v23 = [a2 position] + 1;
          if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 1, v24 <= objc_msgSend(a2, "length")))
          {
            v25 = [a2 data];
            [v25 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v22 |= (v30 & 0x7F) << v20;
          if ((v30 & 0x80) == 0)
          {
            break;
          }

          v20 += 7;
          v11 = v21++ >= 9;
          if (v11)
          {
            v26 = 0;
            goto LABEL_46;
          }
        }

        v26 = [a2 hasError] ? 0 : v22;
LABEL_46:
        *(a1 + 16) = v26;
      }

      else if ((v12 >> 3) == 2)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        while (1)
        {
          v31 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v31 & 0x7F) << v13;
          if ((v31 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_42;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_42:
        *(a1 + 8) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v28 = [a2 position];
    }

    while (v28 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_19180357C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak(&a17);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_191803CAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19180430C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{
  _Block_object_dispose(&a49, 8);
  _Block_object_dispose(&a55, 8);
  _Unwind_Resume(a1);
}

void sub_191804768(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1918050D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_33_0()
{

  return [v0 duration];
}

uint64_t OUTLINED_FUNCTION_47_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return [v4 countByEnumeratingWithState:a3 objects:a4 count:16];
}

BOOL OUTLINED_FUNCTION_53_0(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEBUG);
}

BOOL OUTLINED_FUNCTION_73_0(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

uint64_t OUTLINED_FUNCTION_74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return [v4 countByEnumeratingWithState:a3 objects:a4 count:16];
}

uint64_t CloudFamilyAnalysisPETContactEventReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v410) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v410 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v410 & 0x7F) << v5;
        if ((v410 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      switch((v12 >> 3))
      {
        case 1u:
          v13 = 0;
          v14 = 0;
          v15 = 0;
          a1[108] |= 0x2000uLL;
          while (1)
          {
            LOBYTE(v410) = 0;
            v16 = [a2 position] + 1;
            if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
            {
              v18 = [a2 data];
              [v18 getBytes:&v410 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v410 & 0x7F) << v13;
            if ((v410 & 0x80) == 0)
            {
              break;
            }

            v13 += 7;
            v11 = v14++ >= 9;
            if (v11)
            {
              v19 = 0;
LABEL_494:
              v311 = 78;
              goto LABEL_503;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v15;
          }

          goto LABEL_494;
        case 2u:
          a1[107] |= 0x400000000000000uLL;
          v410 = 0;
          v163 = [a2 position] + 8;
          if (v163 >= [a2 position] && (v164 = objc_msgSend(a2, "position") + 8, v164 <= objc_msgSend(a2, "length")))
          {
            v361 = [a2 data];
            [v361 getBytes:&v410 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v313 = v410;
          v314 = 59;
          goto LABEL_719;
        case 3u:
          a1[108] |= 0x800uLL;
          v410 = 0;
          v153 = [a2 position] + 8;
          if (v153 >= [a2 position] && (v154 = objc_msgSend(a2, "position") + 8, v154 <= objc_msgSend(a2, "length")))
          {
            v356 = [a2 data];
            [v356 getBytes:&v410 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v313 = v410;
          v314 = 76;
          goto LABEL_719;
        case 4u:
          a1[108] |= 4uLL;
          v410 = 0;
          v159 = [a2 position] + 8;
          if (v159 >= [a2 position] && (v160 = objc_msgSend(a2, "position") + 8, v160 <= objc_msgSend(a2, "length")))
          {
            v359 = [a2 data];
            [v359 getBytes:&v410 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v313 = v410;
          v314 = 67;
          goto LABEL_719;
        case 5u:
          a1[107] |= 0x8000000000000000;
          v410 = 0;
          v133 = [a2 position] + 8;
          if (v133 >= [a2 position] && (v134 = objc_msgSend(a2, "position") + 8, v134 <= objc_msgSend(a2, "length")))
          {
            v349 = [a2 data];
            [v349 getBytes:&v410 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v313 = v410;
          v314 = 64;
          goto LABEL_719;
        case 6u:
          a1[108] |= 1uLL;
          v410 = 0;
          v187 = [a2 position] + 8;
          if (v187 >= [a2 position] && (v188 = objc_msgSend(a2, "position") + 8, v188 <= objc_msgSend(a2, "length")))
          {
            v370 = [a2 data];
            [v370 getBytes:&v410 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v313 = v410;
          v314 = 65;
          goto LABEL_719;
        case 7u:
          a1[108] |= 2uLL;
          v410 = 0;
          v201 = [a2 position] + 8;
          if (v201 >= [a2 position] && (v202 = objc_msgSend(a2, "position") + 8, v202 <= objc_msgSend(a2, "length")))
          {
            v374 = [a2 data];
            [v374 getBytes:&v410 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v313 = v410;
          v314 = 66;
          goto LABEL_719;
        case 8u:
          a1[108] |= 0x400uLL;
          v410 = 0;
          v161 = [a2 position] + 8;
          if (v161 >= [a2 position] && (v162 = objc_msgSend(a2, "position") + 8, v162 <= objc_msgSend(a2, "length")))
          {
            v360 = [a2 data];
            [v360 getBytes:&v410 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v313 = v410;
          v314 = 75;
          goto LABEL_719;
        case 9u:
          a1[108] |= 0x80uLL;
          v410 = 0;
          v207 = [a2 position] + 8;
          if (v207 >= [a2 position] && (v208 = objc_msgSend(a2, "position") + 8, v208 <= objc_msgSend(a2, "length")))
          {
            v377 = [a2 data];
            [v377 getBytes:&v410 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v313 = v410;
          v314 = 72;
          goto LABEL_719;
        case 0xAu:
          a1[108] |= 0x100uLL;
          v410 = 0;
          v147 = [a2 position] + 8;
          if (v147 >= [a2 position] && (v148 = objc_msgSend(a2, "position") + 8, v148 <= objc_msgSend(a2, "length")))
          {
            v353 = [a2 data];
            [v353 getBytes:&v410 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v313 = v410;
          v314 = 73;
          goto LABEL_719;
        case 0xBu:
          a1[108] |= 0x200uLL;
          v410 = 0;
          v205 = [a2 position] + 8;
          if (v205 >= [a2 position] && (v206 = objc_msgSend(a2, "position") + 8, v206 <= objc_msgSend(a2, "length")))
          {
            v376 = [a2 data];
            [v376 getBytes:&v410 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v313 = v410;
          v314 = 74;
          goto LABEL_719;
        case 0xCu:
          a1[107] |= 0x4000000000000000uLL;
          v410 = 0;
          v127 = [a2 position] + 8;
          if (v127 >= [a2 position] && (v128 = objc_msgSend(a2, "position") + 8, v128 <= objc_msgSend(a2, "length")))
          {
            v346 = [a2 data];
            [v346 getBytes:&v410 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v313 = v410;
          v314 = 63;
          goto LABEL_719;
        case 0xDu:
          a1[107] |= 0x800000000000000uLL;
          v410 = 0;
          v145 = [a2 position] + 8;
          if (v145 >= [a2 position] && (v146 = objc_msgSend(a2, "position") + 8, v146 <= objc_msgSend(a2, "length")))
          {
            v352 = [a2 data];
            [v352 getBytes:&v410 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v313 = v410;
          v314 = 60;
          goto LABEL_719;
        case 0xEu:
          a1[107] |= 0x1000000000000000uLL;
          v410 = 0;
          v199 = [a2 position] + 8;
          if (v199 >= [a2 position] && (v200 = objc_msgSend(a2, "position") + 8, v200 <= objc_msgSend(a2, "length")))
          {
            v373 = [a2 data];
            [v373 getBytes:&v410 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v313 = v410;
          v314 = 61;
          goto LABEL_719;
        case 0xFu:
          a1[107] |= 0x2000000000000000uLL;
          v410 = 0;
          v117 = [a2 position] + 8;
          if (v117 >= [a2 position] && (v118 = objc_msgSend(a2, "position") + 8, v118 <= objc_msgSend(a2, "length")))
          {
            v341 = [a2 data];
            [v341 getBytes:&v410 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v313 = v410;
          v314 = 62;
          goto LABEL_719;
        case 0x10u:
          a1[108] |= 0x40uLL;
          v410 = 0;
          v155 = [a2 position] + 8;
          if (v155 >= [a2 position] && (v156 = objc_msgSend(a2, "position") + 8, v156 <= objc_msgSend(a2, "length")))
          {
            v357 = [a2 data];
            [v357 getBytes:&v410 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v313 = v410;
          v314 = 71;
          goto LABEL_719;
        case 0x11u:
          a1[108] |= 8uLL;
          v410 = 0;
          v111 = [a2 position] + 8;
          if (v111 >= [a2 position] && (v112 = objc_msgSend(a2, "position") + 8, v112 <= objc_msgSend(a2, "length")))
          {
            v338 = [a2 data];
            [v338 getBytes:&v410 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v313 = v410;
          v314 = 68;
          goto LABEL_719;
        case 0x12u:
          a1[108] |= 0x10uLL;
          v410 = 0;
          v171 = [a2 position] + 8;
          if (v171 >= [a2 position] && (v172 = objc_msgSend(a2, "position") + 8, v172 <= objc_msgSend(a2, "length")))
          {
            v365 = [a2 data];
            [v365 getBytes:&v410 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v313 = v410;
          v314 = 69;
          goto LABEL_719;
        case 0x13u:
          a1[108] |= 0x20uLL;
          v410 = 0;
          v203 = [a2 position] + 8;
          if (v203 >= [a2 position] && (v204 = objc_msgSend(a2, "position") + 8, v204 <= objc_msgSend(a2, "length")))
          {
            v375 = [a2 data];
            [v375 getBytes:&v410 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v313 = v410;
          v314 = 70;
          goto LABEL_719;
        case 0x14u:
          a1[108] |= 0x4000uLL;
          v410 = 0;
          v229 = [a2 position] + 8;
          if (v229 >= [a2 position] && (v230 = objc_msgSend(a2, "position") + 8, v230 <= objc_msgSend(a2, "length")))
          {
            v385 = [a2 data];
            [v385 getBytes:&v410 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v313 = v410;
          v314 = 79;
          goto LABEL_719;
        case 0x15u:
          a1[108] |= 0x1000uLL;
          v410 = 0;
          v183 = [a2 position] + 8;
          if (v183 >= [a2 position] && (v184 = objc_msgSend(a2, "position") + 8, v184 <= objc_msgSend(a2, "length")))
          {
            v368 = [a2 data];
            [v368 getBytes:&v410 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v313 = v410;
          v314 = 77;
          goto LABEL_719;
        case 0x16u:
          v193 = 0;
          v194 = 0;
          v195 = 0;
          a1[108] |= 0x100000000uLL;
          while (1)
          {
            LOBYTE(v410) = 0;
            v196 = [a2 position] + 1;
            if (v196 >= [a2 position] && (v197 = objc_msgSend(a2, "position") + 1, v197 <= objc_msgSend(a2, "length")))
            {
              v198 = [a2 data];
              [v198 getBytes:&v410 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v195 |= (v410 & 0x7F) << v193;
            if ((v410 & 0x80) == 0)
            {
              break;
            }

            v193 += 7;
            v11 = v194++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_502;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v195;
          }

LABEL_502:
          v311 = 97;
          goto LABEL_503;
        case 0x17u:
          a1[108] |= 0x8000uLL;
          v410 = 0;
          v217 = [a2 position] + 8;
          if (v217 >= [a2 position] && (v218 = objc_msgSend(a2, "position") + 8, v218 <= objc_msgSend(a2, "length")))
          {
            v382 = [a2 data];
            [v382 getBytes:&v410 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v313 = v410;
          v314 = 80;
          goto LABEL_719;
        case 0x18u:
          a1[108] |= 0x800000uLL;
          v410 = 0;
          v241 = [a2 position] + 8;
          if (v241 >= [a2 position] && (v242 = objc_msgSend(a2, "position") + 8, v242 <= objc_msgSend(a2, "length")))
          {
            v388 = [a2 data];
            [v388 getBytes:&v410 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v313 = v410;
          v314 = 88;
          goto LABEL_719;
        case 0x19u:
          a1[108] |= 0x100000uLL;
          v410 = 0;
          v151 = [a2 position] + 8;
          if (v151 >= [a2 position] && (v152 = objc_msgSend(a2, "position") + 8, v152 <= objc_msgSend(a2, "length")))
          {
            v355 = [a2 data];
            [v355 getBytes:&v410 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v313 = v410;
          v314 = 85;
          goto LABEL_719;
        case 0x1Au:
          a1[108] |= 0x200000uLL;
          v410 = 0;
          v149 = [a2 position] + 8;
          if (v149 >= [a2 position] && (v150 = objc_msgSend(a2, "position") + 8, v150 <= objc_msgSend(a2, "length")))
          {
            v354 = [a2 data];
            [v354 getBytes:&v410 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v313 = v410;
          v314 = 86;
          goto LABEL_719;
        case 0x1Bu:
          a1[108] |= 0x400000uLL;
          v410 = 0;
          v249 = [a2 position] + 8;
          if (v249 >= [a2 position] && (v250 = objc_msgSend(a2, "position") + 8, v250 <= objc_msgSend(a2, "length")))
          {
            v392 = [a2 data];
            [v392 getBytes:&v410 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v313 = v410;
          v314 = 87;
          goto LABEL_719;
        case 0x1Cu:
          a1[108] |= 0x80000000uLL;
          v410 = 0;
          v107 = [a2 position] + 8;
          if (v107 >= [a2 position] && (v108 = objc_msgSend(a2, "position") + 8, v108 <= objc_msgSend(a2, "length")))
          {
            v336 = [a2 data];
            [v336 getBytes:&v410 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v313 = v410;
          v314 = 96;
          goto LABEL_719;
        case 0x1Du:
          a1[108] |= 0x10000000uLL;
          v410 = 0;
          v243 = [a2 position] + 8;
          if (v243 >= [a2 position] && (v244 = objc_msgSend(a2, "position") + 8, v244 <= objc_msgSend(a2, "length")))
          {
            v389 = [a2 data];
            [v389 getBytes:&v410 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v313 = v410;
          v314 = 93;
          goto LABEL_719;
        case 0x1Eu:
          a1[108] |= 0x20000000uLL;
          v410 = 0;
          v245 = [a2 position] + 8;
          if (v245 >= [a2 position] && (v246 = objc_msgSend(a2, "position") + 8, v246 <= objc_msgSend(a2, "length")))
          {
            v390 = [a2 data];
            [v390 getBytes:&v410 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v313 = v410;
          v314 = 94;
          goto LABEL_719;
        case 0x1Fu:
          a1[108] |= 0x40000000uLL;
          v410 = 0;
          v209 = [a2 position] + 8;
          if (v209 >= [a2 position] && (v210 = objc_msgSend(a2, "position") + 8, v210 <= objc_msgSend(a2, "length")))
          {
            v378 = [a2 data];
            [v378 getBytes:&v410 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v313 = v410;
          v314 = 95;
          goto LABEL_719;
        case 0x20u:
          a1[108] |= 0x80000uLL;
          v410 = 0;
          v169 = [a2 position] + 8;
          if (v169 >= [a2 position] && (v170 = objc_msgSend(a2, "position") + 8, v170 <= objc_msgSend(a2, "length")))
          {
            v364 = [a2 data];
            [v364 getBytes:&v410 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v313 = v410;
          v314 = 84;
          goto LABEL_719;
        case 0x21u:
          a1[108] |= 0x10000uLL;
          v410 = 0;
          v211 = [a2 position] + 8;
          if (v211 >= [a2 position] && (v212 = objc_msgSend(a2, "position") + 8, v212 <= objc_msgSend(a2, "length")))
          {
            v379 = [a2 data];
            [v379 getBytes:&v410 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v313 = v410;
          v314 = 81;
          goto LABEL_719;
        case 0x22u:
          a1[108] |= 0x20000uLL;
          v410 = 0;
          v119 = [a2 position] + 8;
          if (v119 >= [a2 position] && (v120 = objc_msgSend(a2, "position") + 8, v120 <= objc_msgSend(a2, "length")))
          {
            v342 = [a2 data];
            [v342 getBytes:&v410 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v313 = v410;
          v314 = 82;
          goto LABEL_719;
        case 0x23u:
          a1[108] |= 0x40000uLL;
          v410 = 0;
          v109 = [a2 position] + 8;
          if (v109 >= [a2 position] && (v110 = objc_msgSend(a2, "position") + 8, v110 <= objc_msgSend(a2, "length")))
          {
            v337 = [a2 data];
            [v337 getBytes:&v410 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v313 = v410;
          v314 = 83;
          goto LABEL_719;
        case 0x24u:
          a1[108] |= 0x8000000uLL;
          v410 = 0;
          v101 = [a2 position] + 8;
          if (v101 >= [a2 position] && (v102 = objc_msgSend(a2, "position") + 8, v102 <= objc_msgSend(a2, "length")))
          {
            v333 = [a2 data];
            [v333 getBytes:&v410 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v313 = v410;
          v314 = 92;
          goto LABEL_719;
        case 0x25u:
          a1[108] |= 0x1000000uLL;
          v410 = 0;
          v103 = [a2 position] + 8;
          if (v103 >= [a2 position] && (v104 = objc_msgSend(a2, "position") + 8, v104 <= objc_msgSend(a2, "length")))
          {
            v334 = [a2 data];
            [v334 getBytes:&v410 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v313 = v410;
          v314 = 89;
          goto LABEL_719;
        case 0x26u:
          a1[108] |= 0x2000000uLL;
          v410 = 0;
          v85 = [a2 position] + 8;
          if (v85 >= [a2 position] && (v86 = objc_msgSend(a2, "position") + 8, v86 <= objc_msgSend(a2, "length")))
          {
            v328 = [a2 data];
            [v328 getBytes:&v410 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v313 = v410;
          v314 = 90;
          goto LABEL_719;
        case 0x27u:
          a1[108] |= 0x4000000uLL;
          v410 = 0;
          v247 = [a2 position] + 8;
          if (v247 >= [a2 position] && (v248 = objc_msgSend(a2, "position") + 8, v248 <= objc_msgSend(a2, "length")))
          {
            v391 = [a2 data];
            [v391 getBytes:&v410 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v313 = v410;
          v314 = 91;
          goto LABEL_719;
        case 0x28u:
          a1[108] |= 0x200000000uLL;
          v410 = 0;
          v227 = [a2 position] + 8;
          if (v227 >= [a2 position] && (v228 = objc_msgSend(a2, "position") + 8, v228 <= objc_msgSend(a2, "length")))
          {
            v384 = [a2 data];
            [v384 getBytes:&v410 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v313 = v410;
          v314 = 98;
          goto LABEL_719;
        case 0x29u:
          v135 = 0;
          v136 = 0;
          v137 = 0;
          a1[107] |= 0x40000000000000uLL;
          while (1)
          {
            LOBYTE(v410) = 0;
            v138 = [a2 position] + 1;
            if (v138 >= [a2 position] && (v139 = objc_msgSend(a2, "position") + 1, v139 <= objc_msgSend(a2, "length")))
            {
              v140 = [a2 data];
              [v140 getBytes:&v410 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v137 |= (v410 & 0x7F) << v135;
            if ((v410 & 0x80) == 0)
            {
              break;
            }

            v135 += 7;
            v11 = v136++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_490;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v137;
          }

LABEL_490:
          v311 = 55;
LABEL_503:
          a1[v311] = v19;
          goto LABEL_720;
        case 0x2Au:
          v175 = 0;
          v176 = 0;
          v177 = 0;
          a1[108] |= 0x400000000uLL;
          while (1)
          {
            LOBYTE(v410) = 0;
            v178 = [a2 position] + 1;
            if (v178 >= [a2 position] && (v179 = objc_msgSend(a2, "position") + 1, v179 <= objc_msgSend(a2, "length")))
            {
              v180 = [a2 data];
              [v180 getBytes:&v410 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v177 |= (v410 & 0x7F) << v175;
            if ((v410 & 0x80) == 0)
            {
              break;
            }

            v175 += 7;
            v11 = v176++ >= 9;
            if (v11)
            {
              v26 = 0;
              goto LABEL_498;
            }
          }

          if ([a2 hasError])
          {
            v26 = 0;
          }

          else
          {
            v26 = v177;
          }

LABEL_498:
          v310 = 792;
          goto LABEL_528;
        case 0x2Bu:
          v233 = 0;
          v234 = 0;
          v235 = 0;
          a1[108] |= 0x8000000000uLL;
          while (1)
          {
            LOBYTE(v410) = 0;
            v236 = [a2 position] + 1;
            if (v236 >= [a2 position] && (v237 = objc_msgSend(a2, "position") + 1, v237 <= objc_msgSend(a2, "length")))
            {
              v238 = [a2 data];
              [v238 getBytes:&v410 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v235 |= (v410 & 0x7F) << v233;
            if ((v410 & 0x80) == 0)
            {
              break;
            }

            v233 += 7;
            v11 = v234++ >= 9;
            if (v11)
            {
              v26 = 0;
              goto LABEL_511;
            }
          }

          if ([a2 hasError])
          {
            v26 = 0;
          }

          else
          {
            v26 = v235;
          }

LABEL_511:
          v310 = 812;
          goto LABEL_528;
        case 0x2Cu:
          a1[107] |= 0x80000000000000uLL;
          v410 = 0;
          v65 = [a2 position] + 8;
          if (v65 >= [a2 position] && (v66 = objc_msgSend(a2, "position") + 8, v66 <= objc_msgSend(a2, "length")))
          {
            v324 = [a2 data];
            [v324 getBytes:&v410 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v313 = v410;
          v314 = 56;
          goto LABEL_719;
        case 0x2Du:
          a1[107] |= 2uLL;
          v410 = 0;
          v115 = [a2 position] + 8;
          if (v115 >= [a2 position] && (v116 = objc_msgSend(a2, "position") + 8, v116 <= objc_msgSend(a2, "length")))
          {
            v340 = [a2 data];
            [v340 getBytes:&v410 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v313 = v410;
          v314 = 2;
          goto LABEL_719;
        case 0x2Eu:
          a1[107] |= 0x4000000000uLL;
          v410 = 0;
          v213 = [a2 position] + 8;
          if (v213 >= [a2 position] && (v214 = objc_msgSend(a2, "position") + 8, v214 <= objc_msgSend(a2, "length")))
          {
            v380 = [a2 data];
            [v380 getBytes:&v410 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v313 = v410;
          v314 = 39;
          goto LABEL_719;
        case 0x2Fu:
          a1[107] |= 0x10000000000000uLL;
          v410 = 0;
          v265 = [a2 position] + 8;
          if (v265 >= [a2 position] && (v266 = objc_msgSend(a2, "position") + 8, v266 <= objc_msgSend(a2, "length")))
          {
            v397 = [a2 data];
            [v397 getBytes:&v410 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v313 = v410;
          v314 = 53;
          goto LABEL_719;
        case 0x30u:
          a1[107] |= 1uLL;
          v410 = 0;
          v95 = [a2 position] + 8;
          if (v95 >= [a2 position] && (v96 = objc_msgSend(a2, "position") + 8, v96 <= objc_msgSend(a2, "length")))
          {
            v330 = [a2 data];
            [v330 getBytes:&v410 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v313 = v410;
          v314 = 1;
          goto LABEL_719;
        case 0x31u:
          a1[107] |= 0x8000000000uLL;
          v410 = 0;
          v121 = [a2 position] + 8;
          if (v121 >= [a2 position] && (v122 = objc_msgSend(a2, "position") + 8, v122 <= objc_msgSend(a2, "length")))
          {
            v343 = [a2 data];
            [v343 getBytes:&v410 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v313 = v410;
          v314 = 40;
          goto LABEL_719;
        case 0x32u:
          a1[107] |= 0x80000000000uLL;
          v410 = 0;
          v131 = [a2 position] + 8;
          if (v131 >= [a2 position] && (v132 = objc_msgSend(a2, "position") + 8, v132 <= objc_msgSend(a2, "length")))
          {
            v348 = [a2 data];
            [v348 getBytes:&v410 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v313 = v410;
          v314 = 44;
          goto LABEL_719;
        case 0x33u:
          a1[107] |= 0x10000000000uLL;
          v410 = 0;
          v61 = [a2 position] + 8;
          if (v61 >= [a2 position] && (v62 = objc_msgSend(a2, "position") + 8, v62 <= objc_msgSend(a2, "length")))
          {
            v322 = [a2 data];
            [v322 getBytes:&v410 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v313 = v410;
          v314 = 41;
          goto LABEL_719;
        case 0x34u:
          a1[107] |= 0x20000000000uLL;
          v410 = 0;
          v279 = [a2 position] + 8;
          if (v279 >= [a2 position] && (v280 = objc_msgSend(a2, "position") + 8, v280 <= objc_msgSend(a2, "length")))
          {
            v401 = [a2 data];
            [v401 getBytes:&v410 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v313 = v410;
          v314 = 42;
          goto LABEL_719;
        case 0x35u:
          a1[107] |= 0x40000000000uLL;
          v410 = 0;
          v263 = [a2 position] + 8;
          if (v263 >= [a2 position] && (v264 = objc_msgSend(a2, "position") + 8, v264 <= objc_msgSend(a2, "length")))
          {
            v396 = [a2 data];
            [v396 getBytes:&v410 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v313 = v410;
          v314 = 43;
          goto LABEL_719;
        case 0x36u:
          a1[107] |= 0x8000000000000uLL;
          v410 = 0;
          v87 = [a2 position] + 8;
          if (v87 >= [a2 position] && (v88 = objc_msgSend(a2, "position") + 8, v88 <= objc_msgSend(a2, "length")))
          {
            v329 = [a2 data];
            [v329 getBytes:&v410 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v313 = v410;
          v314 = 52;
          goto LABEL_719;
        case 0x37u:
          a1[107] |= 0x1000000000000uLL;
          v410 = 0;
          v251 = [a2 position] + 8;
          if (v251 >= [a2 position] && (v252 = objc_msgSend(a2, "position") + 8, v252 <= objc_msgSend(a2, "length")))
          {
            v393 = [a2 data];
            [v393 getBytes:&v410 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v313 = v410;
          v314 = 49;
          goto LABEL_719;
        case 0x38u:
          a1[107] |= 0x2000000000000uLL;
          v410 = 0;
          v261 = [a2 position] + 8;
          if (v261 >= [a2 position] && (v262 = objc_msgSend(a2, "position") + 8, v262 <= objc_msgSend(a2, "length")))
          {
            v395 = [a2 data];
            [v395 getBytes:&v410 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v313 = v410;
          v314 = 50;
          goto LABEL_719;
        case 0x39u:
          a1[107] |= 0x4000000000000uLL;
          v410 = 0;
          v97 = [a2 position] + 8;
          if (v97 >= [a2 position] && (v98 = objc_msgSend(a2, "position") + 8, v98 <= objc_msgSend(a2, "length")))
          {
            v331 = [a2 data];
            [v331 getBytes:&v410 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v313 = v410;
          v314 = 51;
          goto LABEL_719;
        case 0x3Au:
          a1[107] |= 0x200000uLL;
          v410 = 0;
          v231 = [a2 position] + 8;
          if (v231 >= [a2 position] && (v232 = objc_msgSend(a2, "position") + 8, v232 <= objc_msgSend(a2, "length")))
          {
            v386 = [a2 data];
            [v386 getBytes:&v410 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v313 = v410;
          v314 = 22;
          goto LABEL_719;
        case 0x3Bu:
          a1[107] |= 0x40000uLL;
          v410 = 0;
          v123 = [a2 position] + 8;
          if (v123 >= [a2 position] && (v124 = objc_msgSend(a2, "position") + 8, v124 <= objc_msgSend(a2, "length")))
          {
            v344 = [a2 data];
            [v344 getBytes:&v410 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v313 = v410;
          v314 = 19;
          goto LABEL_719;
        case 0x3Cu:
          a1[107] |= 0x80000uLL;
          v410 = 0;
          v239 = [a2 position] + 8;
          if (v239 >= [a2 position] && (v240 = objc_msgSend(a2, "position") + 8, v240 <= objc_msgSend(a2, "length")))
          {
            v387 = [a2 data];
            [v387 getBytes:&v410 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v313 = v410;
          v314 = 20;
          goto LABEL_719;
        case 0x3Du:
          a1[107] |= 0x100000uLL;
          v410 = 0;
          v141 = [a2 position] + 8;
          if (v141 >= [a2 position] && (v142 = objc_msgSend(a2, "position") + 8, v142 <= objc_msgSend(a2, "length")))
          {
            v350 = [a2 data];
            [v350 getBytes:&v410 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v313 = v410;
          v314 = 21;
          goto LABEL_719;
        case 0x3Eu:
          a1[107] |= 0x800000000000uLL;
          v410 = 0;
          v185 = [a2 position] + 8;
          if (v185 >= [a2 position] && (v186 = objc_msgSend(a2, "position") + 8, v186 <= objc_msgSend(a2, "length")))
          {
            v369 = [a2 data];
            [v369 getBytes:&v410 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v313 = v410;
          v314 = 48;
          goto LABEL_719;
        case 0x3Fu:
          a1[107] |= 0x100000000000uLL;
          v410 = 0;
          v191 = [a2 position] + 8;
          if (v191 >= [a2 position] && (v192 = objc_msgSend(a2, "position") + 8, v192 <= objc_msgSend(a2, "length")))
          {
            v372 = [a2 data];
            [v372 getBytes:&v410 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v313 = v410;
          v314 = 45;
          goto LABEL_719;
        case 0x40u:
          a1[107] |= 0x200000000000uLL;
          v410 = 0;
          v157 = [a2 position] + 8;
          if (v157 >= [a2 position] && (v158 = objc_msgSend(a2, "position") + 8, v158 <= objc_msgSend(a2, "length")))
          {
            v358 = [a2 data];
            [v358 getBytes:&v410 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v313 = v410;
          v314 = 46;
          goto LABEL_719;
        case 0x41u:
          a1[107] |= 0x400000000000uLL;
          v410 = 0;
          v143 = [a2 position] + 8;
          if (v143 >= [a2 position] && (v144 = objc_msgSend(a2, "position") + 8, v144 <= objc_msgSend(a2, "length")))
          {
            v351 = [a2 data];
            [v351 getBytes:&v410 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v313 = v410;
          v314 = 47;
          goto LABEL_719;
        case 0x42u:
          a1[107] |= 0x200uLL;
          v410 = 0;
          v189 = [a2 position] + 8;
          if (v189 >= [a2 position] && (v190 = objc_msgSend(a2, "position") + 8, v190 <= objc_msgSend(a2, "length")))
          {
            v371 = [a2 data];
            [v371 getBytes:&v410 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v313 = v410;
          v314 = 10;
          goto LABEL_719;
        case 0x43u:
          a1[107] |= 0x40uLL;
          v410 = 0;
          v79 = [a2 position] + 8;
          if (v79 >= [a2 position] && (v80 = objc_msgSend(a2, "position") + 8, v80 <= objc_msgSend(a2, "length")))
          {
            v325 = [a2 data];
            [v325 getBytes:&v410 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v313 = v410;
          v314 = 7;
          goto LABEL_719;
        case 0x44u:
          a1[107] |= 0x80uLL;
          v410 = 0;
          v113 = [a2 position] + 8;
          if (v113 >= [a2 position] && (v114 = objc_msgSend(a2, "position") + 8, v114 <= objc_msgSend(a2, "length")))
          {
            v339 = [a2 data];
            [v339 getBytes:&v410 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v313 = v410;
          v314 = 8;
          goto LABEL_719;
        case 0x45u:
          a1[107] |= 0x100uLL;
          v410 = 0;
          v291 = [a2 position] + 8;
          if (v291 >= [a2 position] && (v292 = objc_msgSend(a2, "position") + 8, v292 <= objc_msgSend(a2, "length")))
          {
            v403 = [a2 data];
            [v403 getBytes:&v410 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v313 = v410;
          v314 = 9;
          goto LABEL_719;
        case 0x46u:
          a1[107] |= 0x20000uLL;
          v410 = 0;
          v105 = [a2 position] + 8;
          if (v105 >= [a2 position] && (v106 = objc_msgSend(a2, "position") + 8, v106 <= objc_msgSend(a2, "length")))
          {
            v335 = [a2 data];
            [v335 getBytes:&v410 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v313 = v410;
          v314 = 18;
          goto LABEL_719;
        case 0x47u:
          a1[107] |= 0x4000uLL;
          v410 = 0;
          v55 = [a2 position] + 8;
          if (v55 >= [a2 position] && (v56 = objc_msgSend(a2, "position") + 8, v56 <= objc_msgSend(a2, "length")))
          {
            v319 = [a2 data];
            [v319 getBytes:&v410 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v313 = v410;
          v314 = 15;
          goto LABEL_719;
        case 0x48u:
          a1[107] |= 0x8000uLL;
          v410 = 0;
          v83 = [a2 position] + 8;
          if (v83 >= [a2 position] && (v84 = objc_msgSend(a2, "position") + 8, v84 <= objc_msgSend(a2, "length")))
          {
            v327 = [a2 data];
            [v327 getBytes:&v410 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v313 = v410;
          v314 = 16;
          goto LABEL_719;
        case 0x49u:
          a1[107] |= 0x10000uLL;
          v410 = 0;
          v259 = [a2 position] + 8;
          if (v259 >= [a2 position] && (v260 = objc_msgSend(a2, "position") + 8, v260 <= objc_msgSend(a2, "length")))
          {
            v394 = [a2 data];
            [v394 getBytes:&v410 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v313 = v410;
          v314 = 17;
          goto LABEL_719;
        case 0x4Au:
          a1[107] |= 0x20uLL;
          v410 = 0;
          v267 = [a2 position] + 8;
          if (v267 >= [a2 position] && (v268 = objc_msgSend(a2, "position") + 8, v268 <= objc_msgSend(a2, "length")))
          {
            v398 = [a2 data];
            [v398 getBytes:&v410 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v313 = v410;
          v314 = 6;
          goto LABEL_719;
        case 0x4Bu:
          a1[107] |= 4uLL;
          v410 = 0;
          v271 = [a2 position] + 8;
          if (v271 >= [a2 position] && (v272 = objc_msgSend(a2, "position") + 8, v272 <= objc_msgSend(a2, "length")))
          {
            v400 = [a2 data];
            [v400 getBytes:&v410 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v313 = v410;
          v314 = 3;
          goto LABEL_719;
        case 0x4Cu:
          a1[107] |= 8uLL;
          v410 = 0;
          v99 = [a2 position] + 8;
          if (v99 >= [a2 position] && (v100 = objc_msgSend(a2, "position") + 8, v100 <= objc_msgSend(a2, "length")))
          {
            v332 = [a2 data];
            [v332 getBytes:&v410 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v313 = v410;
          v314 = 4;
          goto LABEL_719;
        case 0x4Du:
          a1[107] |= 0x10uLL;
          v410 = 0;
          v181 = [a2 position] + 8;
          if (v181 >= [a2 position] && (v182 = objc_msgSend(a2, "position") + 8, v182 <= objc_msgSend(a2, "length")))
          {
            v367 = [a2 data];
            [v367 getBytes:&v410 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v313 = v410;
          v314 = 5;
          goto LABEL_719;
        case 0x4Eu:
          a1[107] |= 0x2000uLL;
          v410 = 0;
          v57 = [a2 position] + 8;
          if (v57 >= [a2 position] && (v58 = objc_msgSend(a2, "position") + 8, v58 <= objc_msgSend(a2, "length")))
          {
            v320 = [a2 data];
            [v320 getBytes:&v410 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v313 = v410;
          v314 = 14;
          goto LABEL_719;
        case 0x4Fu:
          a1[107] |= 0x400uLL;
          v410 = 0;
          v287 = [a2 position] + 8;
          if (v287 >= [a2 position] && (v288 = objc_msgSend(a2, "position") + 8, v288 <= objc_msgSend(a2, "length")))
          {
            v402 = [a2 data];
            [v402 getBytes:&v410 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v313 = v410;
          v314 = 11;
          goto LABEL_719;
        case 0x50u:
          a1[107] |= 0x800uLL;
          v410 = 0;
          v45 = [a2 position] + 8;
          if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 8, v46 <= objc_msgSend(a2, "length")))
          {
            v317 = [a2 data];
            [v317 getBytes:&v410 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v313 = v410;
          v314 = 12;
          goto LABEL_719;
        case 0x51u:
          a1[107] |= 0x1000uLL;
          v410 = 0;
          v81 = [a2 position] + 8;
          if (v81 >= [a2 position] && (v82 = objc_msgSend(a2, "position") + 8, v82 <= objc_msgSend(a2, "length")))
          {
            v326 = [a2 data];
            [v326 getBytes:&v410 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v313 = v410;
          v314 = 13;
          goto LABEL_719;
        case 0x52u:
          a1[107] |= 0x20000000uLL;
          v410 = 0;
          v129 = [a2 position] + 8;
          if (v129 >= [a2 position] && (v130 = objc_msgSend(a2, "position") + 8, v130 <= objc_msgSend(a2, "length")))
          {
            v347 = [a2 data];
            [v347 getBytes:&v410 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v313 = v410;
          v314 = 30;
          goto LABEL_719;
        case 0x53u:
          a1[107] |= 0x4000000uLL;
          v410 = 0;
          v125 = [a2 position] + 8;
          if (v125 >= [a2 position] && (v126 = objc_msgSend(a2, "position") + 8, v126 <= objc_msgSend(a2, "length")))
          {
            v345 = [a2 data];
            [v345 getBytes:&v410 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v313 = v410;
          v314 = 27;
          goto LABEL_719;
        case 0x54u:
          a1[107] |= 0x8000000uLL;
          v410 = 0;
          v35 = [a2 position] + 8;
          if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 8, v36 <= objc_msgSend(a2, "length")))
          {
            v315 = [a2 data];
            [v315 getBytes:&v410 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v313 = v410;
          v314 = 28;
          goto LABEL_719;
        case 0x55u:
          a1[107] |= 0x10000000uLL;
          v410 = 0;
          v27 = [a2 position] + 8;
          if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 8, v28 <= objc_msgSend(a2, "length")))
          {
            v312 = [a2 data];
            [v312 getBytes:&v410 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v313 = v410;
          v314 = 29;
          goto LABEL_719;
        case 0x56u:
          a1[107] |= 0x2000000000uLL;
          v410 = 0;
          v215 = [a2 position] + 8;
          if (v215 >= [a2 position] && (v216 = objc_msgSend(a2, "position") + 8, v216 <= objc_msgSend(a2, "length")))
          {
            v381 = [a2 data];
            [v381 getBytes:&v410 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v313 = v410;
          v314 = 38;
          goto LABEL_719;
        case 0x57u:
          a1[107] |= 0x400000000uLL;
          v410 = 0;
          v219 = [a2 position] + 8;
          if (v219 >= [a2 position] && (v220 = objc_msgSend(a2, "position") + 8, v220 <= objc_msgSend(a2, "length")))
          {
            v383 = [a2 data];
            [v383 getBytes:&v410 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v313 = v410;
          v314 = 35;
          goto LABEL_719;
        case 0x58u:
          a1[107] |= 0x800000000uLL;
          v410 = 0;
          v269 = [a2 position] + 8;
          if (v269 >= [a2 position] && (v270 = objc_msgSend(a2, "position") + 8, v270 <= objc_msgSend(a2, "length")))
          {
            v399 = [a2 data];
            [v399 getBytes:&v410 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v313 = v410;
          v314 = 36;
          goto LABEL_719;
        case 0x59u:
          a1[107] |= 0x1000000000uLL;
          v410 = 0;
          v63 = [a2 position] + 8;
          if (v63 >= [a2 position] && (v64 = objc_msgSend(a2, "position") + 8, v64 <= objc_msgSend(a2, "length")))
          {
            v323 = [a2 data];
            [v323 getBytes:&v410 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v313 = v410;
          v314 = 37;
          goto LABEL_719;
        case 0x5Au:
          a1[107] |= 0x2000000uLL;
          v410 = 0;
          v303 = [a2 position] + 8;
          if (v303 >= [a2 position] && (v304 = objc_msgSend(a2, "position") + 8, v304 <= objc_msgSend(a2, "length")))
          {
            v406 = [a2 data];
            [v406 getBytes:&v410 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v313 = v410;
          v314 = 26;
          goto LABEL_719;
        case 0x5Bu:
          a1[107] |= 0x400000uLL;
          v410 = 0;
          v301 = [a2 position] + 8;
          if (v301 >= [a2 position] && (v302 = objc_msgSend(a2, "position") + 8, v302 <= objc_msgSend(a2, "length")))
          {
            v405 = [a2 data];
            [v405 getBytes:&v410 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v313 = v410;
          v314 = 23;
          goto LABEL_719;
        case 0x5Cu:
          a1[107] |= 0x800000uLL;
          v410 = 0;
          v37 = [a2 position] + 8;
          if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 8, v38 <= objc_msgSend(a2, "length")))
          {
            v316 = [a2 data];
            [v316 getBytes:&v410 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v313 = v410;
          v314 = 24;
          goto LABEL_719;
        case 0x5Du:
          a1[107] |= 0x1000000uLL;
          v410 = 0;
          v165 = [a2 position] + 8;
          if (v165 >= [a2 position] && (v166 = objc_msgSend(a2, "position") + 8, v166 <= objc_msgSend(a2, "length")))
          {
            v362 = [a2 data];
            [v362 getBytes:&v410 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v313 = v410;
          v314 = 25;
          goto LABEL_719;
        case 0x5Eu:
          a1[107] |= 0x200000000uLL;
          v410 = 0;
          v59 = [a2 position] + 8;
          if (v59 >= [a2 position] && (v60 = objc_msgSend(a2, "position") + 8, v60 <= objc_msgSend(a2, "length")))
          {
            v321 = [a2 data];
            [v321 getBytes:&v410 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v313 = v410;
          v314 = 34;
          goto LABEL_719;
        case 0x5Fu:
          a1[107] |= 0x40000000uLL;
          v410 = 0;
          v173 = [a2 position] + 8;
          if (v173 >= [a2 position] && (v174 = objc_msgSend(a2, "position") + 8, v174 <= objc_msgSend(a2, "length")))
          {
            v366 = [a2 data];
            [v366 getBytes:&v410 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v313 = v410;
          v314 = 31;
          goto LABEL_719;
        case 0x60u:
          a1[107] |= 0x80000000uLL;
          v410 = 0;
          v293 = [a2 position] + 8;
          if (v293 >= [a2 position] && (v294 = objc_msgSend(a2, "position") + 8, v294 <= objc_msgSend(a2, "length")))
          {
            v404 = [a2 data];
            [v404 getBytes:&v410 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v313 = v410;
          v314 = 32;
          goto LABEL_719;
        case 0x61u:
          a1[107] |= 0x100000000uLL;
          v410 = 0;
          v47 = [a2 position] + 8;
          if (v47 >= [a2 position] && (v48 = objc_msgSend(a2, "position") + 8, v48 <= objc_msgSend(a2, "length")))
          {
            v318 = [a2 data];
            [v318 getBytes:&v410 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v313 = v410;
          v314 = 33;
          goto LABEL_719;
        case 0x62u:
          a1[107] |= 0x200000000000000uLL;
          v410 = 0;
          v305 = [a2 position] + 8;
          if (v305 >= [a2 position] && (v306 = objc_msgSend(a2, "position") + 8, v306 <= objc_msgSend(a2, "length")))
          {
            v407 = [a2 data];
            [v407 getBytes:&v410 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v313 = v410;
          v314 = 58;
          goto LABEL_719;
        case 0x63u:
          a1[107] |= 0x20000000000000uLL;
          v410 = 0;
          v167 = [a2 position] + 8;
          if (v167 >= [a2 position] && (v168 = objc_msgSend(a2, "position") + 8, v168 <= objc_msgSend(a2, "length")))
          {
            v363 = [a2 data];
            [v363 getBytes:&v410 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v313 = v410;
          v314 = 54;
          goto LABEL_719;
        case 0x64u:
          a1[107] |= 0x100000000000000uLL;
          v410 = 0;
          v307 = [a2 position] + 8;
          if (v307 >= [a2 position] && (v308 = objc_msgSend(a2, "position") + 8, v308 <= objc_msgSend(a2, "length")))
          {
            v408 = [a2 data];
            [v408 getBytes:&v410 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v313 = v410;
          v314 = 57;
LABEL_719:
          a1[v314] = v313;
          goto LABEL_720;
        case 0x65u:
          v295 = 0;
          v296 = 0;
          v297 = 0;
          a1[108] |= 0x4000000000uLL;
          while (1)
          {
            LOBYTE(v410) = 0;
            v298 = [a2 position] + 1;
            if (v298 >= [a2 position] && (v299 = objc_msgSend(a2, "position") + 1, v299 <= objc_msgSend(a2, "length")))
            {
              v300 = [a2 data];
              [v300 getBytes:&v410 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v297 |= (v410 & 0x7F) << v295;
            if ((v410 & 0x80) == 0)
            {
              break;
            }

            v295 += 7;
            v11 = v296++ >= 9;
            if (v11)
            {
              v26 = 0;
              goto LABEL_527;
            }
          }

          if ([a2 hasError])
          {
            v26 = 0;
          }

          else
          {
            v26 = v297;
          }

LABEL_527:
          v310 = 808;
          goto LABEL_528;
        case 0x66u:
          v289 = PBReaderReadString();
          v290 = a1[106];
          a1[106] = v289;

          goto LABEL_720;
        case 0x67u:
          v67 = 0;
          v68 = 0;
          v69 = 0;
          a1[108] |= 0x2000000000uLL;
          while (1)
          {
            LOBYTE(v410) = 0;
            v70 = [a2 position] + 1;
            if (v70 >= [a2 position] && (v71 = objc_msgSend(a2, "position") + 1, v71 <= objc_msgSend(a2, "length")))
            {
              v72 = [a2 data];
              [v72 getBytes:&v410 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v69 |= (v410 & 0x7F) << v67;
            if ((v410 & 0x80) == 0)
            {
              break;
            }

            v67 += 7;
            v11 = v68++ >= 9;
            if (v11)
            {
              v26 = 0;
              goto LABEL_478;
            }
          }

          if ([a2 hasError])
          {
            v26 = 0;
          }

          else
          {
            v26 = v69;
          }

LABEL_478:
          v310 = 804;
          goto LABEL_528;
        case 0x68u:
          v281 = 0;
          v282 = 0;
          v283 = 0;
          a1[108] |= 0x800000000000uLL;
          while (1)
          {
            LOBYTE(v410) = 0;
            v284 = [a2 position] + 1;
            if (v284 >= [a2 position] && (v285 = objc_msgSend(a2, "position") + 1, v285 <= objc_msgSend(a2, "length")))
            {
              v286 = [a2 data];
              [v286 getBytes:&v410 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v283 |= (v410 & 0x7F) << v281;
            if ((v410 & 0x80) == 0)
            {
              break;
            }

            v281 += 7;
            v11 = v282++ >= 9;
            if (v11)
            {
              v26 = 0;
              goto LABEL_523;
            }
          }

          if ([a2 hasError])
          {
            v26 = 0;
          }

          else
          {
            v26 = v283;
          }

LABEL_523:
          v310 = 844;
          goto LABEL_528;
        case 0x69u:
          v273 = 0;
          v274 = 0;
          v275 = 0;
          a1[108] |= 0x800000000uLL;
          while (1)
          {
            LOBYTE(v410) = 0;
            v276 = [a2 position] + 1;
            if (v276 >= [a2 position] && (v277 = objc_msgSend(a2, "position") + 1, v277 <= objc_msgSend(a2, "length")))
            {
              v278 = [a2 data];
              [v278 getBytes:&v410 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v275 |= (v410 & 0x7F) << v273;
            if ((v410 & 0x80) == 0)
            {
              break;
            }

            v273 += 7;
            v11 = v274++ >= 9;
            if (v11)
            {
              v26 = 0;
              goto LABEL_519;
            }
          }

          if ([a2 hasError])
          {
            v26 = 0;
          }

          else
          {
            v26 = v275;
          }

LABEL_519:
          v310 = 796;
          goto LABEL_528;
        case 0x6Au:
          v49 = 0;
          v50 = 0;
          v51 = 0;
          a1[108] |= 0x1000000000uLL;
          while (1)
          {
            LOBYTE(v410) = 0;
            v52 = [a2 position] + 1;
            if (v52 >= [a2 position] && (v53 = objc_msgSend(a2, "position") + 1, v53 <= objc_msgSend(a2, "length")))
            {
              v54 = [a2 data];
              [v54 getBytes:&v410 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v51 |= (v410 & 0x7F) << v49;
            if ((v410 & 0x80) == 0)
            {
              break;
            }

            v49 += 7;
            v11 = v50++ >= 9;
            if (v11)
            {
              v26 = 0;
              goto LABEL_474;
            }
          }

          if ([a2 hasError])
          {
            v26 = 0;
          }

          else
          {
            v26 = v51;
          }

LABEL_474:
          v310 = 800;
          goto LABEL_528;
        case 0x6Bu:
          v39 = 0;
          v40 = 0;
          v41 = 0;
          a1[108] |= 0x200000000000uLL;
          while (1)
          {
            LOBYTE(v410) = 0;
            v42 = [a2 position] + 1;
            if (v42 >= [a2 position] && (v43 = objc_msgSend(a2, "position") + 1, v43 <= objc_msgSend(a2, "length")))
            {
              v44 = [a2 data];
              [v44 getBytes:&v410 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v41 |= (v410 & 0x7F) << v39;
            if ((v410 & 0x80) == 0)
            {
              break;
            }

            v39 += 7;
            v11 = v40++ >= 9;
            if (v11)
            {
              v26 = 0;
              goto LABEL_470;
            }
          }

          if ([a2 hasError])
          {
            v26 = 0;
          }

          else
          {
            v26 = v41;
          }

LABEL_470:
          v310 = 836;
          goto LABEL_528;
        case 0x6Cu:
          v89 = 0;
          v90 = 0;
          v91 = 0;
          a1[108] |= 0x400000000000uLL;
          while (1)
          {
            LOBYTE(v410) = 0;
            v92 = [a2 position] + 1;
            if (v92 >= [a2 position] && (v93 = objc_msgSend(a2, "position") + 1, v93 <= objc_msgSend(a2, "length")))
            {
              v94 = [a2 data];
              [v94 getBytes:&v410 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v91 |= (v410 & 0x7F) << v89;
            if ((v410 & 0x80) == 0)
            {
              break;
            }

            v89 += 7;
            v11 = v90++ >= 9;
            if (v11)
            {
              v26 = 0;
              goto LABEL_486;
            }
          }

          if ([a2 hasError])
          {
            v26 = 0;
          }

          else
          {
            v26 = v91;
          }

LABEL_486:
          v310 = 840;
          goto LABEL_528;
        case 0x6Du:
          v73 = 0;
          v74 = 0;
          v75 = 0;
          a1[108] |= 0x10000000000uLL;
          while (1)
          {
            LOBYTE(v410) = 0;
            v76 = [a2 position] + 1;
            if (v76 >= [a2 position] && (v77 = objc_msgSend(a2, "position") + 1, v77 <= objc_msgSend(a2, "length")))
            {
              v78 = [a2 data];
              [v78 getBytes:&v410 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v75 |= (v410 & 0x7F) << v73;
            if ((v410 & 0x80) == 0)
            {
              break;
            }

            v73 += 7;
            v11 = v74++ >= 9;
            if (v11)
            {
              v26 = 0;
              goto LABEL_482;
            }
          }

          if ([a2 hasError])
          {
            v26 = 0;
          }

          else
          {
            v26 = v75;
          }

LABEL_482:
          v310 = 816;
          goto LABEL_528;
        case 0x6Eu:
          v29 = 0;
          v30 = 0;
          v31 = 0;
          a1[108] |= 0x20000000000uLL;
          while (1)
          {
            LOBYTE(v410) = 0;
            v32 = [a2 position] + 1;
            if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
            {
              v34 = [a2 data];
              [v34 getBytes:&v410 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v31 |= (v410 & 0x7F) << v29;
            if ((v410 & 0x80) == 0)
            {
              break;
            }

            v29 += 7;
            v11 = v30++ >= 9;
            if (v11)
            {
              v26 = 0;
              goto LABEL_466;
            }
          }

          if ([a2 hasError])
          {
            v26 = 0;
          }

          else
          {
            v26 = v31;
          }

LABEL_466:
          v310 = 820;
          goto LABEL_528;
        case 0x6Fu:
          v20 = 0;
          v21 = 0;
          v22 = 0;
          a1[108] |= 0x80000000000uLL;
          while (1)
          {
            LOBYTE(v410) = 0;
            v23 = [a2 position] + 1;
            if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 1, v24 <= objc_msgSend(a2, "length")))
            {
              v25 = [a2 data];
              [v25 getBytes:&v410 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v22 |= (v410 & 0x7F) << v20;
            if ((v410 & 0x80) == 0)
            {
              break;
            }

            v20 += 7;
            v11 = v21++ >= 9;
            if (v11)
            {
              v26 = 0;
              goto LABEL_462;
            }
          }

          if ([a2 hasError])
          {
            v26 = 0;
          }

          else
          {
            v26 = v22;
          }

LABEL_462:
          v310 = 828;
          goto LABEL_528;
        case 0x70u:
          v253 = 0;
          v254 = 0;
          v255 = 0;
          a1[108] |= 0x100000000000uLL;
          while (1)
          {
            LOBYTE(v410) = 0;
            v256 = [a2 position] + 1;
            if (v256 >= [a2 position] && (v257 = objc_msgSend(a2, "position") + 1, v257 <= objc_msgSend(a2, "length")))
            {
              v258 = [a2 data];
              [v258 getBytes:&v410 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v255 |= (v410 & 0x7F) << v253;
            if ((v410 & 0x80) == 0)
            {
              break;
            }

            v253 += 7;
            v11 = v254++ >= 9;
            if (v11)
            {
              v26 = 0;
              goto LABEL_515;
            }
          }

          if ([a2 hasError])
          {
            v26 = 0;
          }

          else
          {
            v26 = v255;
          }

LABEL_515:
          v310 = 832;
          goto LABEL_528;
        case 0x71u:
          v221 = 0;
          v222 = 0;
          v223 = 0;
          a1[108] |= 0x40000000000uLL;
          break;
        default:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_720;
      }

      while (1)
      {
        LOBYTE(v410) = 0;
        v224 = [a2 position] + 1;
        if (v224 >= [a2 position] && (v225 = objc_msgSend(a2, "position") + 1, v225 <= objc_msgSend(a2, "length")))
        {
          v226 = [a2 data];
          [v226 getBytes:&v410 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v223 |= (v410 & 0x7F) << v221;
        if ((v410 & 0x80) == 0)
        {
          break;
        }

        v221 += 7;
        v11 = v222++ >= 9;
        if (v11)
        {
          v26 = 0;
          goto LABEL_507;
        }
      }

      v26 = [a2 hasError] ? 0 : v223;
LABEL_507:
      v310 = 824;
LABEL_528:
      *(a1 + v310) = v26;
LABEL_720:
      v409 = [a2 position];
    }

    while (v409 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_19181C3B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_19181C934(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t PersonLinkingPersonReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v17 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17 & 0x7F) << v5;
        if ((v17 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadString();
        v14 = a1[2];
        a1[2] = v13;
LABEL_22:

        goto LABEL_24;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_24:
      v15 = [a2 position];
      if (v15 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = PBReaderReadString();
    if (v14)
    {
      [a1 addEmails:v14];
    }

    goto LABEL_22;
  }

  return [a2 hasError] ^ 1;
}

void sub_19181F5C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19181F794(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19181FB24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_15_5()
{

  return objc_opt_class();
}

void OUTLINED_FUNCTION_22_4(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint8_t buf)
{

  _os_log_error_impl(a1, v45, OS_LOG_TYPE_ERROR, a4, &buf, 0x66u);
}

id _DKSyncLoggingWindowsDescription(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = objc_opt_new();
  if ([v1 count])
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v3 = v1;
    v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v14;
      v7 = 1;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v14 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v9 = *(*(&v13 + 1) + 8 * i);
          if ((v7 & 1) == 0)
          {
            [v2 appendString:{@", ", v13}];
          }

          v10 = [v9 debugDescription];
          [v2 appendString:v10];

          v7 = 0;
        }

        v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
        v7 = 0;
      }

      while (v5);
    }
  }

  else
  {
    [v2 appendString:@"no windows"];
  }

  v11 = *MEMORY[0x1E69E9840];

  return v2;
}

char *bucket_name_for_timing(double a1)
{
  LODWORD(v1) = 64 - __clz(a1);
  if (v1 >= 0x14)
  {
    v1 = 20;
  }

  else
  {
    v1 = v1;
  }

  if (a1)
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return _bucket_names[v2];
}

uint64_t _DKPREventReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v48) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v48 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v48 & 0x7F) << v5;
        if ((v48 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 5)
      {
        if (v13 <= 2)
        {
          if (v13 == 1)
          {
            v35 = objc_alloc_init(_DKPRStream);
            objc_storeStrong((a1 + 80), v35);
            v48 = 0;
            v49 = 0;
            if (!PBReaderPlaceMark() || !_DKPRStreamReadFrom(v35, a2))
            {
LABEL_96:

              return 0;
            }

            goto LABEL_66;
          }

          if (v13 == 2)
          {
            v48 = 0;
            v25 = [a2 position] + 8;
            if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 8, v26 <= objc_msgSend(a2, "length")))
            {
              v42 = [a2 data];
              [v42 getBytes:&v48 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            v40 = v48;
            v41 = 40;
            goto LABEL_90;
          }
        }

        else
        {
          switch(v13)
          {
            case 3:
              v48 = 0;
              v36 = [a2 position] + 8;
              if (v36 >= [a2 position] && (v37 = objc_msgSend(a2, "position") + 8, v37 <= objc_msgSend(a2, "length")))
              {
                v44 = [a2 data];
                [v44 getBytes:&v48 range:{objc_msgSend(a2, "position"), 8}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
              }

              else
              {
                [a2 _setError];
              }

              v40 = v48;
              v41 = 32;
              goto LABEL_90;
            case 4:
              v35 = objc_alloc_init(_DKPRValue);
              objc_storeStrong((a1 + 88), v35);
              v48 = 0;
              v49 = 0;
              if (!PBReaderPlaceMark() || !_DKPRValueReadFrom(v35, a2))
              {
                goto LABEL_96;
              }

              goto LABEL_66;
            case 5:
              v21 = PBReaderReadString();
              v22 = *(a1 + 56);
              *(a1 + 56) = v21;

              goto LABEL_91;
          }
        }
      }

      else if (v13 <= 8)
      {
        switch(v13)
        {
          case 6:
            v35 = objc_alloc_init(_DKPRSource);
            objc_storeStrong((a1 + 72), v35);
            v48 = 0;
            v49 = 0;
            if (!PBReaderPlaceMark() || !_DKPRSourceReadFrom(v35, a2))
            {
              goto LABEL_96;
            }

LABEL_66:
            PBReaderRecallMark();

            goto LABEL_91;
          case 8:
            *(a1 + 96) |= 4u;
            v48 = 0;
            v23 = [a2 position] + 8;
            if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 8, v24 <= objc_msgSend(a2, "length")))
            {
              v43 = [a2 data];
              [v43 getBytes:&v48 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            v40 = v48;
            v41 = 24;
            goto LABEL_90;
          case 7:
            if ((_DKPREventReadFrom_cold_1(a1, &v47, a2, &v48) & 1) == 0)
            {
              return v48;
            }

            goto LABEL_91;
        }
      }

      else
      {
        switch(v13)
        {
          case 9:
            *(a1 + 96) |= 2u;
            v48 = 0;
            v33 = [a2 position] + 8;
            if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 8, v34 <= objc_msgSend(a2, "length")))
            {
              v39 = [a2 data];
              [v39 getBytes:&v48 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            v40 = v48;
            v41 = 16;
LABEL_90:
            *(a1 + v41) = v40;
            goto LABEL_91;
          case 0xA:
            v27 = 0;
            v28 = 0;
            v29 = 0;
            *(a1 + 96) |= 8u;
            while (1)
            {
              LOBYTE(v48) = 0;
              v30 = [a2 position] + 1;
              if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
              {
                v32 = [a2 data];
                [v32 getBytes:&v48 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v29 |= (v48 & 0x7F) << v27;
              if ((v48 & 0x80) == 0)
              {
                break;
              }

              v27 += 7;
              v11 = v28++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_73;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v29;
            }

LABEL_73:
            v38 = 48;
            goto LABEL_78;
          case 0xB:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 96) |= 1u;
            while (1)
            {
              LOBYTE(v48) = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v48 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v48 & 0x7F) << v14;
              if ((v48 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_77;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v16;
            }

LABEL_77:
            v38 = 8;
LABEL_78:
            *(a1 + v38) = v20;
            goto LABEL_91;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_91:
      v45 = [a2 position];
    }

    while (v45 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void OUTLINED_FUNCTION_21_6(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint8_t buf)
{

  _os_log_debug_impl(a1, v31, OS_LOG_TYPE_DEBUG, a4, &buf, 0x34u);
}

void sub_191824C20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1918262D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void _clientNeedsHelpCallback(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = _os_activity_create(&dword_191750000, "CoreDuet: clientNeedsHelpCallback", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v14.opaque[0] = 0;
  v14.opaque[1] = 0;
  os_activity_scope_enter(v5, &v14);
  os_activity_scope_leave(&v14);

  v6 = a2;
  v7 = a3;
  if (v6 && ([MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.coreduet.client-needs-help."], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v7, "containsString:", v8), v8, (v9 & 1) != 0))
  {
    v10 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      _clientNeedsHelpCallback_cold_1();
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v11 = +[_CDLogging knowledgeChannel];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        _clientNeedsHelpCallback_cold_2();
      }
    }

    [(_DKCoreDataStorage *)v6 handleClientCallForHelp];
    v12 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v14.opaque[0]) = 138412290;
      *(v14.opaque + 4) = v7;
      _os_log_impl(&dword_191750000, v12, OS_LOG_TYPE_DEFAULT, "Done handling client help call: %@", &v14, 0xCu);
    }
  }

  else
  {
    v12 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      _clientNeedsHelpCallback_cold_3();
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

void sub_191827540(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  objc_sync_exit(v24);
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose((v25 - 120), 8);
  _Unwind_Resume(a1);
}

void sub_191827FB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_1918291B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1918294A8(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v3 = objc_begin_catch(exception_object);
    v4 = [*(v2 + 40) persistentStoreCoordinator];
    v5 = [v4 persistentStores];
    v6 = [v5 count] == 0;

    v7 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT);
    if (v6)
    {
      if (v7)
      {
        __146___DKCoreDataStorage_deleteObjectsInContext_entityName_predicate_sortDescriptors_fetchOffset_fetchLimit_includeSubentities_includePendingChanges___block_invoke_cold_4();
      }

      objc_end_catch();
      JUMPOUT(0x191829468);
    }

    if (v7)
    {
      __146___DKCoreDataStorage_deleteObjectsInContext_entityName_predicate_sortDescriptors_fetchOffset_fetchLimit_includeSubentities_includePendingChanges___block_invoke_cold_3();
    }

    v8 = v3;
    objc_exception_throw(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_191829768(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_19182A064(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19182A210(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19182A5A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a2 == 1)
  {
    v10 = objc_begin_catch(exception_object);
    v11 = [*(v9 + 32) persistentStoreCoordinator];
    v12 = [v11 persistentStores];
    v13 = [v12 count] == 0;

    v14 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT);
    if (v13)
    {
      if (v14)
      {
        __146___DKCoreDataStorage_deleteObjectsInContext_entityName_predicate_sortDescriptors_fetchOffset_fetchLimit_includeSubentities_includePendingChanges___block_invoke_cold_4();
      }

      objc_end_catch();
      JUMPOUT(0x19182A4C0);
    }

    if (v14)
    {
      __145___DKCoreDataStorage_updateObjectsInContext_entityName_predicate_sortDescriptors_batchFetchLimit_totalFetchLimit_includeSubentities_updateBlock___block_invoke_cold_3();
    }

    v15 = v10;
    objc_exception_throw(v10);
  }

  _Unwind_Resume(exception_object);
}

void _cdknowledge_signpost_count_begin(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = a1;
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  v3 = +[_CDLogging knowledgeSignpost];
  v4 = os_signpost_enabled(v3);
  if (has_internal_diagnostics)
  {
    if (v4)
    {
      v5 = _CDCurrentOrXPCProcessName();
      v7 = 138543618;
      v8 = v5;
      v9 = 2114;
      v10 = v1;
      _os_signpost_emit_with_name_impl(&dword_191750000, v3, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "CountObjects", " Process=%{signpost.telemetry:string1,public}@  Entity=%{signpost.telemetry:string2,public}@  enableTelemetry=YES ", &v7, 0x16u);
    }
  }

  else if (v4)
  {
    LOWORD(v7) = 0;
    _os_signpost_emit_with_name_impl(&dword_191750000, v3, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "CountObjects", &unk_19191A712, &v7, 2u);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void _cdknowledge_signpost_count_end(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = +[_CDLogging knowledgeSignpost];
  if (os_signpost_enabled(v4))
  {
    v6 = 134349312;
    v7 = a1;
    v8 = 2050;
    v9 = a2;
    _os_signpost_emit_with_name_impl(&dword_191750000, v4, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "CountObjects", " Count=%{signpost.telemetry:number1,public}lu  ErrorCode=%{signpost.telemetry:number2,public}ld ", &v6, 0x16u);
  }

  v5 = *MEMORY[0x1E69E9840];
}

void _cdknowledge_signpost_event_count(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  v5 = +[_CDLogging knowledgeSignpost];
  v6 = os_signpost_enabled(v5);
  if (has_internal_diagnostics)
  {
    if (v6)
    {
      v11 = 134349314;
      v12 = a1;
      v13 = 2114;
      v14 = v3;
      v7 = " EventCount=%{signpost.telemetry:number1,public}lu  Stream=%{signpost.telemetry:string2,public}@ ";
      v8 = v5;
      v9 = 22;
LABEL_6:
      _os_signpost_emit_with_name_impl(&dword_191750000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CountEvents", v7, &v11, v9);
    }
  }

  else if (v6)
  {
    v11 = 134349056;
    v12 = a1;
    v7 = " EventCount=%{signpost.telemetry:number1,public}lu ";
    v8 = v5;
    v9 = 12;
    goto LABEL_6;
  }

  v10 = *MEMORY[0x1E69E9840];
}

void _cdcontextstore_signpost_register_begin(void *a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (os_variant_has_internal_diagnostics())
  {
    v5 = +[_CDLogging contextChannel];
    if (os_signpost_enabled(v5))
    {
      v7 = 138543618;
      v8 = v3;
      v9 = 2114;
      v10 = v4;
      _os_signpost_emit_with_name_impl(&dword_191750000, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "RegisterKeyPath", " RegistrationID=%{signpost.telemetry:string1,public}@  KeyPath=%{signpost.telemetry:string2,public}@  enableTelemetry=YES ", &v7, 0x16u);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

void _cdcontextstore_signpost_register_end()
{
  if (os_variant_has_internal_diagnostics())
  {
    v0 = +[_CDLogging contextChannel];
    if (os_signpost_enabled(v0))
    {
      *v1 = 0;
      _os_signpost_emit_with_name_impl(&dword_191750000, v0, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "RegisterKeyPath", &unk_19191A712, v1, 2u);
    }
  }
}

void _cdcontextstore_signpost_deregister_begin(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (os_variant_has_internal_diagnostics())
  {
    v2 = +[_CDLogging contextChannel];
    if (os_signpost_enabled(v2))
    {
      v3 = _CDCurrentOrXPCProcessName();
      v5 = 138543618;
      v6 = v3;
      v7 = 2114;
      v8 = v1;
      _os_signpost_emit_with_name_impl(&dword_191750000, v2, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "DeRegisterKeyPath", " Process=%{signpost.telemetry:string1,public}@  RegistrationID=%{signpost.telemetry:string2,public}@  enableTelemetry=YES ", &v5, 0x16u);
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

void _cdcontextstore_signpost_deregister_end()
{
  if (os_variant_has_internal_diagnostics())
  {
    v0 = +[_CDLogging contextChannel];
    if (os_signpost_enabled(v0))
    {
      *v1 = 0;
      _os_signpost_emit_with_name_impl(&dword_191750000, v0, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "DeRegisterKeyPath", &unk_19191A712, v1, 2u);
    }
  }
}

void _cdcontextstore_signpost_get_object_begin(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (os_variant_has_internal_diagnostics())
  {
    v2 = +[_CDLogging contextChannel];
    if (os_signpost_enabled(v2))
    {
      v3 = _CDCurrentOrXPCProcessName();
      v5 = 138543618;
      v6 = v3;
      v7 = 2114;
      v8 = v1;
      _os_signpost_emit_with_name_impl(&dword_191750000, v2, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "GetKeyPath", " Process=%{signpost.telemetry:string1,public}@  KeyPath=%{signpost.telemetry:string2,public}@  enableTelemetry=YES ", &v5, 0x16u);
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

void _cdcontextstore_signpost_get_object_end()
{
  if (os_variant_has_internal_diagnostics())
  {
    v0 = +[_CDLogging contextChannel];
    if (os_signpost_enabled(v0))
    {
      *v1 = 0;
      _os_signpost_emit_with_name_impl(&dword_191750000, v0, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "GetKeyPath", &unk_19191A712, v1, 2u);
    }
  }
}

void ___cdcontextstore_signpost_deprecated_api_block_invoke()
{
  v2 = [MEMORY[0x1E696AE30] processInfo];
  v0 = [v2 processName];
  v1 = _cdcontextstore_signpost_deprecated_api_client;
  _cdcontextstore_signpost_deprecated_api_client = v0;
}

void sub_19182BDC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _CDPrettyPrintCollection(void *a1, unsigned int a2, unint64_t a3, unsigned int a4)
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = a1;
  v7 = v6;
  if (v6)
  {
    memset(v35, 0, sizeof(v35));
    if ([v6 countByEnumeratingWithState:v35 objects:v37 count:16])
    {
      v8 = a2;
    }

    else
    {
      v8 = 0;
    }

    v9 = objc_msgSend(MEMORY[0x1E696AD60], "stringWithString:", @"(");
    v10 = v9;
    if (v8 == 1)
    {
      [v9 appendString:@"\n"];
    }

    v29 = objc_opt_respondsToSelector();
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v27 = v7;
    v11 = v7;
    v12 = [v11 countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v32;
      if (v8)
      {
        v15 = @",\n";
      }

      else
      {
        v15 = @", ";
      }

      v28 = v15;
      v16 = 1;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v32 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v18 = *(*(&v31 + 1) + 8 * i);
          if ((v16 & 1) == 0)
          {
            [v10 appendString:v28];
          }

          if (v8)
          {
            v19 = 0;
            do
            {
              [v10 appendString:@"    "];
              ++v19;
            }

            while (v19 <= a3);
          }

          if (v29)
          {
            v20 = [v11 objectForKey:v18];
            [v10 appendFormat:@"%@=", v18];
            if ([v20 conformsToProtocol:&unk_1F06199A8])
            {
              v21 = _CDPrettyPrintCollection(v20, v8, a3 + 1, a4);
LABEL_30:
              v24 = v21;
              [v10 appendString:v21];

              goto LABEL_31;
            }

            if (!a4)
            {
              v21 = [v20 description];
              goto LABEL_30;
            }

            v22 = [v20 performSelector:sel_debugDescription];
            v23 = v10;
          }

          else
          {
            if (a4)
            {
              [v10 appendString:{objc_msgSend(v18, "performSelector:", sel_debugDescription)}];
              goto LABEL_32;
            }

            v20 = [v18 description];
            v23 = v10;
            v22 = v20;
          }

          [v23 appendString:v22];
LABEL_31:

LABEL_32:
          v16 = 0;
        }

        v13 = [v11 countByEnumeratingWithState:&v31 objects:v36 count:16];
        v16 = 0;
      }

      while (v13);
    }

    if (v8)
    {
      [v10 appendString:@"\n"];
      for (; a3; --a3)
      {
        [v10 appendString:@"    "];
      }
    }

    [v10 appendString:@""]);
    v7 = v27;
  }

  else
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", 0];
  }

  v25 = *MEMORY[0x1E69E9840];

  return v10;
}

void *_CDLoggingUUIDAsInteger(void *result)
{
  v2[2] = *MEMORY[0x1E69E9840];
  if (result)
  {
    v2[0] = 0;
    v2[1] = 0;
    [result getUUIDBytes:v2];
    result = bswap64(v2[0]);
  }

  v1 = *MEMORY[0x1E69E9840];
  return result;
}

id _CDFormattedDate(void *a1)
{
  v1 = _CDFormattedDate_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    _CDFormattedDate_cold_1();
  }

  v3 = [_CDFormattedDate_formatter stringFromDate:v2];

  return v3;
}

id _CDRandomDataWithLength()
{
  v0 = [MEMORY[0x1E695DF88] dataWithLength:32];
  if (SecRandomCopyBytes(*MEMORY[0x1E697B308], 0x20uLL, [v0 mutableBytes]))
  {
    v1 = 0;
  }

  else
  {
    v1 = [MEMORY[0x1E695DEF0] dataWithData:v0];
  }

  return v1;
}

uint64_t _CDTruncatedSHA256(void *a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  memset(&c, 0, sizeof(c));
  CC_SHA256_Init(&c);
  if ([v4 length])
  {
    CC_SHA256_Update(&c, [v4 bytes], objc_msgSend(v4, "length"));
  }

  v5 = [v3 dataUsingEncoding:4];
  CC_SHA256_Update(&c, [v5 bytes], objc_msgSend(v5, "length"));
  CC_SHA256_Final(md, &c);
  v6 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:md length:32];
  v10 = 0;
  [v6 getBytes:&v10 length:8];
  v7 = v10;

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t _DKPRSourceReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v26 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v26 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v26 & 0x7F) << v5;
        if ((v26 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 3)
      {
        switch(v13)
        {
          case 1:
            v14 = PBReaderReadString();
            v15 = 40;
            break;
          case 2:
            v14 = PBReaderReadString();
            v15 = 8;
            break;
          case 3:
            v14 = PBReaderReadString();
            v15 = 32;
            break;
          default:
            goto LABEL_36;
        }

        goto LABEL_40;
      }

      if (v13 == 4)
      {
        break;
      }

      if (v13 == 5)
      {
        v14 = PBReaderReadString();
        v15 = 16;
        goto LABEL_40;
      }

      if (v13 != 6)
      {
LABEL_36:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        goto LABEL_41;
      }

      v16 = 0;
      v17 = 0;
      v18 = 0;
      *(a1 + 52) |= 1u;
      while (1)
      {
        v27 = 0;
        v19 = [a2 position] + 1;
        if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
        {
          v21 = [a2 data];
          [v21 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v18 |= (v27 & 0x7F) << v16;
        if ((v27 & 0x80) == 0)
        {
          break;
        }

        v16 += 7;
        v11 = v17++ >= 9;
        if (v11)
        {
          v22 = 0;
          goto LABEL_46;
        }
      }

      if ([a2 hasError])
      {
        v22 = 0;
      }

      else
      {
        v22 = v18;
      }

LABEL_46:
      *(a1 + 48) = v22;
LABEL_41:
      v25 = [a2 position];
      if (v25 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = PBReaderReadString();
    v15 = 24;
LABEL_40:
    v24 = *(a1 + v15);
    *(a1 + v15) = v14;

    goto LABEL_41;
  }

  return [a2 hasError] ^ 1;
}

void sub_1918330E0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1918362B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1918372D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, id a62)
{
  objc_destroyWeak(&a62);
  objc_destroyWeak(&STACK[0x270]);
  _Unwind_Resume(a1);
}

uint64_t _handleShutdownNotification(uint64_t a1, void *a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = a3;
    _os_log_impl(&dword_191750000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Got shutdown notification %@", &v7, 0xCu);
  }

  result = [a2 handleShutdownNotification];
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t KnowledgeMonitorLibraryCore()
{
  v2 = *MEMORY[0x1E69E9840];
  if (!KnowledgeMonitorLibraryCore_frameworkLibrary)
  {
    KnowledgeMonitorLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  result = KnowledgeMonitorLibraryCore_frameworkLibrary;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __KnowledgeMonitorLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  KnowledgeMonitorLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t UsageTrackingLibraryCore()
{
  v2 = *MEMORY[0x1E69E9840];
  if (!UsageTrackingLibraryCore_frameworkLibrary)
  {
    UsageTrackingLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  result = UsageTrackingLibraryCore_frameworkLibrary;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __UsageTrackingLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  UsageTrackingLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19183C160(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19183C50C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19183E5D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19184152C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t VisionSignalGradingEntryReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v24 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        *(a1 + 24) |= 1u;
        while (1)
        {
          v25 = 0;
          v18 = [a2 position] + 1;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
          {
            v20 = [a2 data];
            [v20 getBytes:&v25 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v17 |= (v25 & 0x7F) << v15;
          if ((v25 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v11 = v16++ >= 9;
          if (v11)
          {
            v21 = 0;
            goto LABEL_34;
          }
        }

        v21 = [a2 hasError] ? 0 : v17;
LABEL_34:
        *(a1 + 8) = v21;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadString();
        v14 = *(a1 + 16);
        *(a1 + 16) = v13;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v23 = [a2 position];
    }

    while (v23 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t MailIntelligencePETContactEventsReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(MailIntelligencePETContactEvent);
        [a1 addContactEvent:v13];
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !MailIntelligencePETContactEventReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t PersonLinkingLinkedPairEventReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v17[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17[0] & 0x7F) << v5;
        if ((v17[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadString();
        v14 = a1[2];
        a1[2] = v13;
LABEL_23:

        goto LABEL_25;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_25:
      v15 = [a2 position];
      if (v15 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = objc_alloc_init(PersonLinkingPersonPair);
    [a1 addPairs:v14];
    v17[0] = 0;
    v17[1] = 0;
    if (!PBReaderPlaceMark() || !PersonLinkingPersonPairReadFrom(v14, a2))
    {

      return 0;
    }

    PBReaderRecallMark();
    goto LABEL_23;
  }

  return [a2 hasError] ^ 1;
}

uint64_t _DKPRMetadataReadFrom(uint64_t a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    v5 = [i position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v16 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v16 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v16 & 0x7F) << v6;
      if ((v16 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      if (v7++ >= 9)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    if ((v13 >> 3) == 1)
    {
      if ((_DKPRMetadataReadFrom_cold_1(a1, &v15, a2, &v16) & 1) == 0)
      {
        return v16;
      }
    }

    else
    {
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

void sub_19184649C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __DKSYNCDISPATCHER_IS_CALLING_ASYNC_OUT_TO_A_BLOCK__(void *a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v1 = objc_autoreleasePoolPush();
  v3[2]();
  objc_autoreleasePoolPop(v1);
  v2 = *MEMORY[0x1E69E9840];
}

void __DKSYNCDISPATCHER_IS_CALLING_SYNC_OUT_TO_A_BLOCK__(void *a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v1 = objc_autoreleasePoolPush();
  v3[2]();
  objc_autoreleasePoolPop(v1);
  v2 = *MEMORY[0x1E69E9840];
}

void __DKSYNCDISPATCHER_IS_CALLING_AFTER_OUT_TO_A_BLOCK__(void *a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v1 = objc_autoreleasePoolPush();
  v3[2]();
  objc_autoreleasePoolPop(v1);
  v2 = *MEMORY[0x1E69E9840];
}

uint64_t _DKPRChangeSetReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(_DKPREvent);
        [(_DKPRChangeSet *)a1 addEvents:v13];
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !_DKPREventReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_24:
      v14 = [a2 position];
      if (v14 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = PBReaderReadString();
    if (v13)
    {
      [(_DKPRChangeSet *)a1 addDeleteEventID:v13];
    }

LABEL_23:

    goto LABEL_24;
  }

  return [a2 hasError] ^ 1;
}

id _CDClientStateFromEventIndexerBookmark(uint64_t a1)
{
  v5 = 0;
  v1 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:a1 requiringSecureCoding:1 error:&v5];
  v2 = v5;
  if (v2)
  {
    v3 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      _CDClientStateFromEventIndexerBookmark_cold_1();
    }
  }

  return v1;
}

void recordInteractionsAsync(void *a1, void *a2, NSUInteger a3, uint64_t a4, uint64_t a5, void *a6)
{
  v28 = *MEMORY[0x1E69E9840];
  v11 = a1;
  v12 = a2;
  v13 = [a6 copy];
  v29.length = [v12 count];
  v29.location = 0;
  v30.location = a3;
  v30.length = 128;
  v14 = NSIntersectionRange(v29, v30);
  if (v14.length)
  {
    v15 = [v12 subarrayWithRange:{v14.location, v14.length}];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __recordInteractionsAsync_block_invoke;
    v18[3] = &unk_1E736A4D8;
    v19 = v11;
    v20 = v12;
    v22 = v14.location + v14.length;
    v24 = a4;
    v25 = a5;
    v21 = v13;
    v23 = v14;
    [v19 recordInteractions:v15 enforceDataLimits:a4 enforcePrivacy:a5 reply:v18];
  }

  else
  {
    v16 = +[_CDLogging interactionChannel];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v27 = [v12 count];
      _os_log_impl(&dword_191750000, v16, OS_LOG_TYPE_DEFAULT, "[async path] successfully sent all %tu interactions to coreduet daemon", buf, 0xCu);
    }

    v13[2](v13, 1, 0);
  }

  v17 = *MEMORY[0x1E69E9840];
}

uint64_t __recordInteractionsAsync_block_invoke(uint64_t a1, int a2)
{
  v4 = +[_CDLogging interactionChannel];
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_191750000, v5, OS_LOG_TYPE_DEFAULT, "[async path] batch sent successfully", v7, 2u);
    }

    return recordInteractionsAsync(*(a1 + 32), *(a1 + 40), *(a1 + 56), *(a1 + 80), *(a1 + 81), *(a1 + 48));
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __recordInteractionsAsync_block_invoke_cold_1(a1, v5);
    }

    return (*(*(a1 + 48) + 16))();
  }
}

void sub_19184B364(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose((v33 - 176), 8);
  _Block_object_dispose(&a33, 8);
  _Unwind_Resume(a1);
}

void sub_19184BEE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_19184C338(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_19184C784(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_19184CBDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_19184D104(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_19184D4D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_19184D8DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_19184DCE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_19184E0F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_19184F208(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_191851A48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_191854678(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sleepPredictionWithParams(uint64_t a1, uint64_t a2, unsigned int a3, double a4, double a5, double a6, int a7)
{
  if (a7 == 1)
  {
    return sleepPredictionWithParams1(a1, a2, a3, a4, a5, a6);
  }

  else
  {
    return sleepPredictionWithParams2(a1, a2, a3, a4, a5, a6);
  }
}

uint64_t validatePastDetection(uint64_t a1, unsigned int a2)
{
  if ((a2 & 0x80000000) != 0 || a2 % 96)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = a2 - 2;
  if (a2 >= 2)
  {
    while (*(a1 + 4 * v3) == *(a1 + 4 * a2 - 4))
    {
      if (v3-- <= 0)
      {
        v3 = -1;
        break;
      }
    }
  }

  v5 = (~v3 + a2) % 96 + v3 + 1;
  if (v5 / 96 < 3)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v5;
  }
}

uint64_t sleepPredictionWithParams1(uint64_t a1, uint64_t a2, unsigned int a3, double a4, double a5, double a6)
{
  v9 = a2;
  result = validatePastDetection(a2, a3);
  if (result != -1)
  {
    LODWORD(v12) = result / 96;
    if (result / 96 >= 3)
    {
      v13 = 0;
      v14 = 0;
      LODWORD(v15) = v12 / 7;
      if (v12 / 7 >= 4)
      {
        v15 = 4;
      }

      else
      {
        v15 = v15;
      }

      if (v12 >= 6)
      {
        v12 = 6;
      }

      else
      {
        v12 = v12;
      }

      v16 = a6 + 1.0;
      v17 = 576;
      v18 = 1;
LABEL_11:
      if (v12 < 1)
      {
LABEL_34:
        v35 = [_CDLogging knowledgeChannel:2688];
        if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
        {
          *v36 = 0;
          _os_log_impl(&dword_191750000, v35, OS_LOG_TYPE_INFO, "Sleep Prediction: some data available, but no valid data in the past few days", v36, 2u);
        }
      }

      else
      {
        v19 = 0.0;
        v20 = 1.0;
        v21 = v12;
        v22 = v9;
        v23 = v13;
        v24 = 0.0;
        while ((v23 & 0x80000000) == 0 && result > v23)
        {
          if (*v22 != -1)
          {
            v24 = v24 + v20;
            v19 = v19 + *v22 * v20;
          }

          v20 = v20 * a4;
          v23 += 96;
          v22 += 96;
          if (!--v21)
          {
            if (v24 == 0.0)
            {
              goto LABEL_34;
            }

            v25 = v19 / v24;
            if (v15)
            {
              if (v15 >= 1)
              {
                v26 = 1.0;
                v27 = 0.0;
                v28 = 576;
                v29 = v17;
                v30 = v15;
                v31 = 0.0;
                while (v29 >= 1 && v29 <= result)
                {
                  v32 = v9[v28];
                  if (v32 != -1)
                  {
                    v31 = v26 + v31;
                    v27 = v27 + v32 * v26;
                  }

                  v26 = v26 * a5;
                  v29 += 672;
                  v28 += 672;
                  if (!--v30)
                  {
                    goto LABEL_29;
                  }
                }

                break;
              }

              v31 = 0.0;
              v27 = 0.0;
LABEL_29:
              v33 = v27 / v31;
              if (v31 == 0.0)
              {
                v33 = v25;
              }

              v25 = (v25 + a6 * v33) / v16;
            }

            v34 = 0;
            *(a1 + 8 * v14++) = v25;
            ++v13;
            ++v9;
            ++v17;
            v18 = v14 < 0x60;
            if (v14 != 96)
            {
              goto LABEL_11;
            }

            return (v34 << 31 >> 31);
          }
        }
      }

      v34 = v18;
      return (v34 << 31 >> 31);
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t MailIntelligencePETContactEventReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v389) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v389 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v389 & 0x7F) << v5;
        if ((v389 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      switch((v12 >> 3))
      {
        case 1u:
          v13 = 0;
          v14 = 0;
          v15 = 0;
          a1[100] |= 0x80uLL;
          while (1)
          {
            LOBYTE(v389) = 0;
            v16 = [a2 position] + 1;
            if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
            {
              v18 = [a2 data];
              [v18 getBytes:&v389 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v389 & 0x7F) << v13;
            if ((v389 & 0x80) == 0)
            {
              break;
            }

            v13 += 7;
            v11 = v14++ >= 9;
            if (v11)
            {
              v19 = 0;
LABEL_472:
              v299 = 72;
              goto LABEL_489;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v15;
          }

          goto LABEL_472;
        case 2u:
          a1[100] |= 0x40uLL;
          v389 = 0;
          v147 = [a2 position] + 8;
          if (v147 >= [a2 position] && (v148 = objc_msgSend(a2, "position") + 8, v148 <= objc_msgSend(a2, "length")))
          {
            v344 = [a2 data];
            [v344 getBytes:&v389 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v301 = v389;
          v302 = 71;
          goto LABEL_687;
        case 3u:
          a1[99] |= 0x2000000000000000uLL;
          v389 = 0;
          v137 = [a2 position] + 8;
          if (v137 >= [a2 position] && (v138 = objc_msgSend(a2, "position") + 8, v138 <= objc_msgSend(a2, "length")))
          {
            v339 = [a2 data];
            [v339 getBytes:&v389 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v301 = v389;
          v302 = 62;
          goto LABEL_687;
        case 4u:
          a1[99] |= 0x400000000000000uLL;
          v389 = 0;
          v143 = [a2 position] + 8;
          if (v143 >= [a2 position] && (v144 = objc_msgSend(a2, "position") + 8, v144 <= objc_msgSend(a2, "length")))
          {
            v342 = [a2 data];
            [v342 getBytes:&v389 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v301 = v389;
          v302 = 59;
          goto LABEL_687;
        case 5u:
          a1[99] |= 0x800000000000000uLL;
          v389 = 0;
          v121 = [a2 position] + 8;
          if (v121 >= [a2 position] && (v122 = objc_msgSend(a2, "position") + 8, v122 <= objc_msgSend(a2, "length")))
          {
            v331 = [a2 data];
            [v331 getBytes:&v389 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v301 = v389;
          v302 = 60;
          goto LABEL_687;
        case 6u:
          a1[99] |= 0x1000000000000000uLL;
          v389 = 0;
          v175 = [a2 position] + 8;
          if (v175 >= [a2 position] && (v176 = objc_msgSend(a2, "position") + 8, v176 <= objc_msgSend(a2, "length")))
          {
            v351 = [a2 data];
            [v351 getBytes:&v389 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v301 = v389;
          v302 = 61;
          goto LABEL_687;
        case 7u:
          a1[100] |= 0x20uLL;
          v389 = 0;
          v185 = [a2 position] + 8;
          if (v185 >= [a2 position] && (v186 = objc_msgSend(a2, "position") + 8, v186 <= objc_msgSend(a2, "length")))
          {
            v356 = [a2 data];
            [v356 getBytes:&v389 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v301 = v389;
          v302 = 70;
          goto LABEL_687;
        case 8u:
          a1[100] |= 4uLL;
          v389 = 0;
          v145 = [a2 position] + 8;
          if (v145 >= [a2 position] && (v146 = objc_msgSend(a2, "position") + 8, v146 <= objc_msgSend(a2, "length")))
          {
            v343 = [a2 data];
            [v343 getBytes:&v389 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v301 = v389;
          v302 = 67;
          goto LABEL_687;
        case 9u:
          a1[100] |= 8uLL;
          v389 = 0;
          v195 = [a2 position] + 8;
          if (v195 >= [a2 position] && (v196 = objc_msgSend(a2, "position") + 8, v196 <= objc_msgSend(a2, "length")))
          {
            v358 = [a2 data];
            [v358 getBytes:&v389 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v301 = v389;
          v302 = 68;
          goto LABEL_687;
        case 0xAu:
          a1[100] |= 0x10uLL;
          v389 = 0;
          v131 = [a2 position] + 8;
          if (v131 >= [a2 position] && (v132 = objc_msgSend(a2, "position") + 8, v132 <= objc_msgSend(a2, "length")))
          {
            v336 = [a2 data];
            [v336 getBytes:&v389 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v301 = v389;
          v302 = 69;
          goto LABEL_687;
        case 0xBu:
          a1[99] |= 0x200000000000000uLL;
          v389 = 0;
          v193 = [a2 position] + 8;
          if (v193 >= [a2 position] && (v194 = objc_msgSend(a2, "position") + 8, v194 <= objc_msgSend(a2, "length")))
          {
            v357 = [a2 data];
            [v357 getBytes:&v389 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v301 = v389;
          v302 = 58;
          goto LABEL_687;
        case 0xCu:
          a1[99] |= 0x40000000000000uLL;
          v389 = 0;
          v115 = [a2 position] + 8;
          if (v115 >= [a2 position] && (v116 = objc_msgSend(a2, "position") + 8, v116 <= objc_msgSend(a2, "length")))
          {
            v328 = [a2 data];
            [v328 getBytes:&v389 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v301 = v389;
          v302 = 55;
          goto LABEL_687;
        case 0xDu:
          a1[99] |= 0x80000000000000uLL;
          v389 = 0;
          v129 = [a2 position] + 8;
          if (v129 >= [a2 position] && (v130 = objc_msgSend(a2, "position") + 8, v130 <= objc_msgSend(a2, "length")))
          {
            v335 = [a2 data];
            [v335 getBytes:&v389 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v301 = v389;
          v302 = 56;
          goto LABEL_687;
        case 0xEu:
          a1[99] |= 0x100000000000000uLL;
          v389 = 0;
          v183 = [a2 position] + 8;
          if (v183 >= [a2 position] && (v184 = objc_msgSend(a2, "position") + 8, v184 <= objc_msgSend(a2, "length")))
          {
            v355 = [a2 data];
            [v355 getBytes:&v389 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v301 = v389;
          v302 = 57;
          goto LABEL_687;
        case 0xFu:
          a1[100] |= 2uLL;
          v389 = 0;
          v105 = [a2 position] + 8;
          if (v105 >= [a2 position] && (v106 = objc_msgSend(a2, "position") + 8, v106 <= objc_msgSend(a2, "length")))
          {
            v323 = [a2 data];
            [v323 getBytes:&v389 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v301 = v389;
          v302 = 66;
          goto LABEL_687;
        case 0x10u:
          a1[99] |= 0x4000000000000000uLL;
          v389 = 0;
          v139 = [a2 position] + 8;
          if (v139 >= [a2 position] && (v140 = objc_msgSend(a2, "position") + 8, v140 <= objc_msgSend(a2, "length")))
          {
            v340 = [a2 data];
            [v340 getBytes:&v389 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v301 = v389;
          v302 = 63;
          goto LABEL_687;
        case 0x11u:
          a1[99] |= 0x8000000000000000;
          v389 = 0;
          v99 = [a2 position] + 8;
          if (v99 >= [a2 position] && (v100 = objc_msgSend(a2, "position") + 8, v100 <= objc_msgSend(a2, "length")))
          {
            v320 = [a2 data];
            [v320 getBytes:&v389 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v301 = v389;
          v302 = 64;
          goto LABEL_687;
        case 0x12u:
          a1[100] |= 1uLL;
          v389 = 0;
          v159 = [a2 position] + 8;
          if (v159 >= [a2 position] && (v160 = objc_msgSend(a2, "position") + 8, v160 <= objc_msgSend(a2, "length")))
          {
            v346 = [a2 data];
            [v346 getBytes:&v389 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v301 = v389;
          v302 = 65;
          goto LABEL_687;
        case 0x13u:
          v187 = 0;
          v188 = 0;
          v189 = 0;
          a1[100] |= 0x1000000uLL;
          while (1)
          {
            LOBYTE(v389) = 0;
            v190 = [a2 position] + 1;
            if (v190 >= [a2 position] && (v191 = objc_msgSend(a2, "position") + 1, v191 <= objc_msgSend(a2, "length")))
            {
              v192 = [a2 data];
              [v192 getBytes:&v389 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v189 |= (v389 & 0x7F) << v187;
            if ((v389 & 0x80) == 0)
            {
              break;
            }

            v187 += 7;
            v11 = v188++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_484;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v189;
          }

LABEL_484:
          v299 = 90;
          goto LABEL_489;
        case 0x14u:
          a1[100] |= 0x8000uLL;
          v389 = 0;
          v211 = [a2 position] + 8;
          if (v211 >= [a2 position] && (v212 = objc_msgSend(a2, "position") + 8, v212 <= objc_msgSend(a2, "length")))
          {
            v366 = [a2 data];
            [v366 getBytes:&v389 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v301 = v389;
          v302 = 81;
          goto LABEL_687;
        case 0x15u:
          a1[100] |= 0x1000uLL;
          v389 = 0;
          v171 = [a2 position] + 8;
          if (v171 >= [a2 position] && (v172 = objc_msgSend(a2, "position") + 8, v172 <= objc_msgSend(a2, "length")))
          {
            v349 = [a2 data];
            [v349 getBytes:&v389 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v301 = v389;
          v302 = 78;
          goto LABEL_687;
        case 0x16u:
          a1[100] |= 0x2000uLL;
          v389 = 0;
          v181 = [a2 position] + 8;
          if (v181 >= [a2 position] && (v182 = objc_msgSend(a2, "position") + 8, v182 <= objc_msgSend(a2, "length")))
          {
            v354 = [a2 data];
            [v354 getBytes:&v389 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v301 = v389;
          v302 = 79;
          goto LABEL_687;
        case 0x17u:
          a1[100] |= 0x4000uLL;
          v389 = 0;
          v205 = [a2 position] + 8;
          if (v205 >= [a2 position] && (v206 = objc_msgSend(a2, "position") + 8, v206 <= objc_msgSend(a2, "length")))
          {
            v363 = [a2 data];
            [v363 getBytes:&v389 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v301 = v389;
          v302 = 80;
          goto LABEL_687;
        case 0x18u:
          a1[100] |= 0x800000uLL;
          v389 = 0;
          v219 = [a2 position] + 8;
          if (v219 >= [a2 position] && (v220 = objc_msgSend(a2, "position") + 8, v220 <= objc_msgSend(a2, "length")))
          {
            v370 = [a2 data];
            [v370 getBytes:&v389 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v301 = v389;
          v302 = 89;
          goto LABEL_687;
        case 0x19u:
          a1[100] |= 0x100000uLL;
          v389 = 0;
          v135 = [a2 position] + 8;
          if (v135 >= [a2 position] && (v136 = objc_msgSend(a2, "position") + 8, v136 <= objc_msgSend(a2, "length")))
          {
            v338 = [a2 data];
            [v338 getBytes:&v389 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v301 = v389;
          v302 = 86;
          goto LABEL_687;
        case 0x1Au:
          a1[100] |= 0x200000uLL;
          v389 = 0;
          v133 = [a2 position] + 8;
          if (v133 >= [a2 position] && (v134 = objc_msgSend(a2, "position") + 8, v134 <= objc_msgSend(a2, "length")))
          {
            v337 = [a2 data];
            [v337 getBytes:&v389 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v301 = v389;
          v302 = 87;
          goto LABEL_687;
        case 0x1Bu:
          a1[100] |= 0x400000uLL;
          v389 = 0;
          v227 = [a2 position] + 8;
          if (v227 >= [a2 position] && (v228 = objc_msgSend(a2, "position") + 8, v228 <= objc_msgSend(a2, "length")))
          {
            v374 = [a2 data];
            [v374 getBytes:&v389 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v301 = v389;
          v302 = 88;
          goto LABEL_687;
        case 0x1Cu:
          a1[100] |= 0x800uLL;
          v389 = 0;
          v95 = [a2 position] + 8;
          if (v95 >= [a2 position] && (v96 = objc_msgSend(a2, "position") + 8, v96 <= objc_msgSend(a2, "length")))
          {
            v318 = [a2 data];
            [v318 getBytes:&v389 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v301 = v389;
          v302 = 77;
          goto LABEL_687;
        case 0x1Du:
          a1[100] |= 0x100uLL;
          v389 = 0;
          v221 = [a2 position] + 8;
          if (v221 >= [a2 position] && (v222 = objc_msgSend(a2, "position") + 8, v222 <= objc_msgSend(a2, "length")))
          {
            v371 = [a2 data];
            [v371 getBytes:&v389 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v301 = v389;
          v302 = 74;
          goto LABEL_687;
        case 0x1Eu:
          a1[100] |= 0x200uLL;
          v389 = 0;
          v223 = [a2 position] + 8;
          if (v223 >= [a2 position] && (v224 = objc_msgSend(a2, "position") + 8, v224 <= objc_msgSend(a2, "length")))
          {
            v372 = [a2 data];
            [v372 getBytes:&v389 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v301 = v389;
          v302 = 75;
          goto LABEL_687;
        case 0x1Fu:
          a1[100] |= 0x400uLL;
          v389 = 0;
          v197 = [a2 position] + 8;
          if (v197 >= [a2 position] && (v198 = objc_msgSend(a2, "position") + 8, v198 <= objc_msgSend(a2, "length")))
          {
            v359 = [a2 data];
            [v359 getBytes:&v389 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v301 = v389;
          v302 = 76;
          goto LABEL_687;
        case 0x20u:
          a1[100] |= 0x80000uLL;
          v389 = 0;
          v157 = [a2 position] + 8;
          if (v157 >= [a2 position] && (v158 = objc_msgSend(a2, "position") + 8, v158 <= objc_msgSend(a2, "length")))
          {
            v345 = [a2 data];
            [v345 getBytes:&v389 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v301 = v389;
          v302 = 85;
          goto LABEL_687;
        case 0x21u:
          a1[100] |= 0x10000uLL;
          v389 = 0;
          v199 = [a2 position] + 8;
          if (v199 >= [a2 position] && (v200 = objc_msgSend(a2, "position") + 8, v200 <= objc_msgSend(a2, "length")))
          {
            v360 = [a2 data];
            [v360 getBytes:&v389 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v301 = v389;
          v302 = 82;
          goto LABEL_687;
        case 0x22u:
          a1[100] |= 0x20000uLL;
          v389 = 0;
          v107 = [a2 position] + 8;
          if (v107 >= [a2 position] && (v108 = objc_msgSend(a2, "position") + 8, v108 <= objc_msgSend(a2, "length")))
          {
            v324 = [a2 data];
            [v324 getBytes:&v389 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v301 = v389;
          v302 = 83;
          goto LABEL_687;
        case 0x23u:
          a1[100] |= 0x40000uLL;
          v389 = 0;
          v97 = [a2 position] + 8;
          if (v97 >= [a2 position] && (v98 = objc_msgSend(a2, "position") + 8, v98 <= objc_msgSend(a2, "length")))
          {
            v319 = [a2 data];
            [v319 getBytes:&v389 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v301 = v389;
          v302 = 84;
          goto LABEL_687;
        case 0x24u:
          v81 = 0;
          v82 = 0;
          v83 = 0;
          a1[99] |= 0x10000000000000uLL;
          while (1)
          {
            LOBYTE(v389) = 0;
            v84 = [a2 position] + 1;
            if (v84 >= [a2 position] && (v85 = objc_msgSend(a2, "position") + 1, v85 <= objc_msgSend(a2, "length")))
            {
              v86 = [a2 data];
              [v86 getBytes:&v389 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v83 |= (v389 & 0x7F) << v81;
            if ((v389 & 0x80) == 0)
            {
              break;
            }

            v81 += 7;
            v11 = v82++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_464;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v83;
          }

LABEL_464:
          v299 = 53;
          goto LABEL_489;
        case 0x25u:
          v87 = 0;
          v88 = 0;
          v89 = 0;
          a1[100] |= 0x2000000uLL;
          while (1)
          {
            LOBYTE(v389) = 0;
            v90 = [a2 position] + 1;
            if (v90 >= [a2 position] && (v91 = objc_msgSend(a2, "position") + 1, v91 <= objc_msgSend(a2, "length")))
            {
              v92 = [a2 data];
              [v92 getBytes:&v389 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v89 |= (v389 & 0x7F) << v87;
            if ((v389 & 0x80) == 0)
            {
              break;
            }

            v87 += 7;
            v11 = v88++ >= 9;
            if (v11)
            {
              v30 = 0;
              goto LABEL_468;
            }
          }

          if ([a2 hasError])
          {
            v30 = 0;
          }

          else
          {
            v30 = v89;
          }

LABEL_468:
          v298 = 728;
          goto LABEL_514;
        case 0x26u:
          v67 = 0;
          v68 = 0;
          v69 = 0;
          a1[100] |= 0x40000000uLL;
          while (1)
          {
            LOBYTE(v389) = 0;
            v70 = [a2 position] + 1;
            if (v70 >= [a2 position] && (v71 = objc_msgSend(a2, "position") + 1, v71 <= objc_msgSend(a2, "length")))
            {
              v72 = [a2 data];
              [v72 getBytes:&v389 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v69 |= (v389 & 0x7F) << v67;
            if ((v389 & 0x80) == 0)
            {
              break;
            }

            v67 += 7;
            v11 = v68++ >= 9;
            if (v11)
            {
              v30 = 0;
              goto LABEL_460;
            }
          }

          if ([a2 hasError])
          {
            v30 = 0;
          }

          else
          {
            v30 = v69;
          }

LABEL_460:
          v298 = 748;
          goto LABEL_514;
        case 0x27u:
          a1[99] |= 0x20000000000000uLL;
          v389 = 0;
          v225 = [a2 position] + 8;
          if (v225 >= [a2 position] && (v226 = objc_msgSend(a2, "position") + 8, v226 <= objc_msgSend(a2, "length")))
          {
            v373 = [a2 data];
            [v373 getBytes:&v389 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v301 = v389;
          v302 = 54;
          goto LABEL_687;
        case 0x28u:
          a1[99] |= 0x2000000000uLL;
          v389 = 0;
          v209 = [a2 position] + 8;
          if (v209 >= [a2 position] && (v210 = objc_msgSend(a2, "position") + 8, v210 <= objc_msgSend(a2, "length")))
          {
            v365 = [a2 data];
            [v365 getBytes:&v389 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v301 = v389;
          v302 = 38;
          goto LABEL_687;
        case 0x29u:
          a1[99] |= 0x8000000000000uLL;
          v389 = 0;
          v123 = [a2 position] + 8;
          if (v123 >= [a2 position] && (v124 = objc_msgSend(a2, "position") + 8, v124 <= objc_msgSend(a2, "length")))
          {
            v332 = [a2 data];
            [v332 getBytes:&v389 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v301 = v389;
          v302 = 52;
          goto LABEL_687;
        case 0x2Au:
          a1[99] |= 1uLL;
          v389 = 0;
          v167 = [a2 position] + 8;
          if (v167 >= [a2 position] && (v168 = objc_msgSend(a2, "position") + 8, v168 <= objc_msgSend(a2, "length")))
          {
            v347 = [a2 data];
            [v347 getBytes:&v389 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v301 = v389;
          v302 = 1;
          goto LABEL_687;
        case 0x2Bu:
          a1[99] |= 0x4000000000uLL;
          v389 = 0;
          v215 = [a2 position] + 8;
          if (v215 >= [a2 position] && (v216 = objc_msgSend(a2, "position") + 8, v216 <= objc_msgSend(a2, "length")))
          {
            v368 = [a2 data];
            [v368 getBytes:&v389 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v301 = v389;
          v302 = 39;
          goto LABEL_687;
        case 0x2Cu:
          a1[99] |= 0x40000000000uLL;
          v389 = 0;
          v53 = [a2 position] + 8;
          if (v53 >= [a2 position] && (v54 = objc_msgSend(a2, "position") + 8, v54 <= objc_msgSend(a2, "length")))
          {
            v309 = [a2 data];
            [v309 getBytes:&v389 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v301 = v389;
          v302 = 43;
          goto LABEL_687;
        case 0x2Du:
          a1[99] |= 0x8000000000uLL;
          v389 = 0;
          v103 = [a2 position] + 8;
          if (v103 >= [a2 position] && (v104 = objc_msgSend(a2, "position") + 8, v104 <= objc_msgSend(a2, "length")))
          {
            v322 = [a2 data];
            [v322 getBytes:&v389 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v301 = v389;
          v302 = 40;
          goto LABEL_687;
        case 0x2Eu:
          a1[99] |= 0x10000000000uLL;
          v389 = 0;
          v201 = [a2 position] + 8;
          if (v201 >= [a2 position] && (v202 = objc_msgSend(a2, "position") + 8, v202 <= objc_msgSend(a2, "length")))
          {
            v361 = [a2 data];
            [v361 getBytes:&v389 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v301 = v389;
          v302 = 41;
          goto LABEL_687;
        case 0x2Fu:
          a1[99] |= 0x20000000000uLL;
          v389 = 0;
          v237 = [a2 position] + 8;
          if (v237 >= [a2 position] && (v238 = objc_msgSend(a2, "position") + 8, v238 <= objc_msgSend(a2, "length")))
          {
            v379 = [a2 data];
            [v379 getBytes:&v389 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v301 = v389;
          v302 = 42;
          goto LABEL_687;
        case 0x30u:
          a1[99] |= 0x4000000000000uLL;
          v389 = 0;
          v75 = [a2 position] + 8;
          if (v75 >= [a2 position] && (v76 = objc_msgSend(a2, "position") + 8, v76 <= objc_msgSend(a2, "length")))
          {
            v314 = [a2 data];
            [v314 getBytes:&v389 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v301 = v389;
          v302 = 51;
          goto LABEL_687;
        case 0x31u:
          a1[99] |= 0x800000000000uLL;
          v389 = 0;
          v109 = [a2 position] + 8;
          if (v109 >= [a2 position] && (v110 = objc_msgSend(a2, "position") + 8, v110 <= objc_msgSend(a2, "length")))
          {
            v325 = [a2 data];
            [v325 getBytes:&v389 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v301 = v389;
          v302 = 48;
          goto LABEL_687;
        case 0x32u:
          a1[99] |= 0x1000000000000uLL;
          v389 = 0;
          v119 = [a2 position] + 8;
          if (v119 >= [a2 position] && (v120 = objc_msgSend(a2, "position") + 8, v120 <= objc_msgSend(a2, "length")))
          {
            v330 = [a2 data];
            [v330 getBytes:&v389 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v301 = v389;
          v302 = 49;
          goto LABEL_687;
        case 0x33u:
          a1[99] |= 0x2000000000000uLL;
          v389 = 0;
          v49 = [a2 position] + 8;
          if (v49 >= [a2 position] && (v50 = objc_msgSend(a2, "position") + 8, v50 <= objc_msgSend(a2, "length")))
          {
            v307 = [a2 data];
            [v307 getBytes:&v389 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v301 = v389;
          v302 = 50;
          goto LABEL_687;
        case 0x34u:
          a1[99] |= 0x100000uLL;
          v389 = 0;
          v251 = [a2 position] + 8;
          if (v251 >= [a2 position] && (v252 = objc_msgSend(a2, "position") + 8, v252 <= objc_msgSend(a2, "length")))
          {
            v383 = [a2 data];
            [v383 getBytes:&v389 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v301 = v389;
          v302 = 21;
          goto LABEL_687;
        case 0x35u:
          a1[99] |= 0x20000uLL;
          v389 = 0;
          v235 = [a2 position] + 8;
          if (v235 >= [a2 position] && (v236 = objc_msgSend(a2, "position") + 8, v236 <= objc_msgSend(a2, "length")))
          {
            v378 = [a2 data];
            [v378 getBytes:&v389 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v301 = v389;
          v302 = 18;
          goto LABEL_687;
        case 0x36u:
          a1[99] |= 0x40000uLL;
          v389 = 0;
          v73 = [a2 position] + 8;
          if (v73 >= [a2 position] && (v74 = objc_msgSend(a2, "position") + 8, v74 <= objc_msgSend(a2, "length")))
          {
            v313 = [a2 data];
            [v313 getBytes:&v389 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v301 = v389;
          v302 = 19;
          goto LABEL_687;
        case 0x37u:
          a1[99] |= 0x80000uLL;
          v389 = 0;
          v229 = [a2 position] + 8;
          if (v229 >= [a2 position] && (v230 = objc_msgSend(a2, "position") + 8, v230 <= objc_msgSend(a2, "length")))
          {
            v375 = [a2 data];
            [v375 getBytes:&v389 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v301 = v389;
          v302 = 20;
          goto LABEL_687;
        case 0x38u:
          a1[99] |= 0x400000000000uLL;
          v389 = 0;
          v233 = [a2 position] + 8;
          if (v233 >= [a2 position] && (v234 = objc_msgSend(a2, "position") + 8, v234 <= objc_msgSend(a2, "length")))
          {
            v377 = [a2 data];
            [v377 getBytes:&v389 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v301 = v389;
          v302 = 47;
          goto LABEL_687;
        case 0x39u:
          a1[99] |= 0x80000000000uLL;
          v389 = 0;
          v77 = [a2 position] + 8;
          if (v77 >= [a2 position] && (v78 = objc_msgSend(a2, "position") + 8, v78 <= objc_msgSend(a2, "length")))
          {
            v315 = [a2 data];
            [v315 getBytes:&v389 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v301 = v389;
          v302 = 44;
          goto LABEL_687;
        case 0x3Au:
          a1[99] |= 0x100000000000uLL;
          v389 = 0;
          v213 = [a2 position] + 8;
          if (v213 >= [a2 position] && (v214 = objc_msgSend(a2, "position") + 8, v214 <= objc_msgSend(a2, "length")))
          {
            v367 = [a2 data];
            [v367 getBytes:&v389 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v301 = v389;
          v302 = 45;
          goto LABEL_687;
        case 0x3Bu:
          a1[99] |= 0x200000000000uLL;
          v389 = 0;
          v111 = [a2 position] + 8;
          if (v111 >= [a2 position] && (v112 = objc_msgSend(a2, "position") + 8, v112 <= objc_msgSend(a2, "length")))
          {
            v326 = [a2 data];
            [v326 getBytes:&v389 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v301 = v389;
          v302 = 46;
          goto LABEL_687;
        case 0x3Cu:
          a1[99] |= 0x100uLL;
          v389 = 0;
          v217 = [a2 position] + 8;
          if (v217 >= [a2 position] && (v218 = objc_msgSend(a2, "position") + 8, v218 <= objc_msgSend(a2, "length")))
          {
            v369 = [a2 data];
            [v369 getBytes:&v389 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v301 = v389;
          v302 = 9;
          goto LABEL_687;
        case 0x3Du:
          a1[99] |= 0x20uLL;
          v389 = 0;
          v125 = [a2 position] + 8;
          if (v125 >= [a2 position] && (v126 = objc_msgSend(a2, "position") + 8, v126 <= objc_msgSend(a2, "length")))
          {
            v333 = [a2 data];
            [v333 getBytes:&v389 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v301 = v389;
          v302 = 6;
          goto LABEL_687;
        case 0x3Eu:
          a1[99] |= 0x40uLL;
          v389 = 0;
          v173 = [a2 position] + 8;
          if (v173 >= [a2 position] && (v174 = objc_msgSend(a2, "position") + 8, v174 <= objc_msgSend(a2, "length")))
          {
            v350 = [a2 data];
            [v350 getBytes:&v389 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v301 = v389;
          v302 = 7;
          goto LABEL_687;
        case 0x3Fu:
          a1[99] |= 0x80uLL;
          v389 = 0;
          v179 = [a2 position] + 8;
          if (v179 >= [a2 position] && (v180 = objc_msgSend(a2, "position") + 8, v180 <= objc_msgSend(a2, "length")))
          {
            v353 = [a2 data];
            [v353 getBytes:&v389 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v301 = v389;
          v302 = 8;
          goto LABEL_687;
        case 0x40u:
          a1[99] |= 0x10000uLL;
          v389 = 0;
          v141 = [a2 position] + 8;
          if (v141 >= [a2 position] && (v142 = objc_msgSend(a2, "position") + 8, v142 <= objc_msgSend(a2, "length")))
          {
            v341 = [a2 data];
            [v341 getBytes:&v389 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v301 = v389;
          v302 = 17;
          goto LABEL_687;
        case 0x41u:
          a1[99] |= 0x2000uLL;
          v389 = 0;
          v127 = [a2 position] + 8;
          if (v127 >= [a2 position] && (v128 = objc_msgSend(a2, "position") + 8, v128 <= objc_msgSend(a2, "length")))
          {
            v334 = [a2 data];
            [v334 getBytes:&v389 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v301 = v389;
          v302 = 14;
          goto LABEL_687;
        case 0x42u:
          a1[99] |= 0x4000uLL;
          v389 = 0;
          v177 = [a2 position] + 8;
          if (v177 >= [a2 position] && (v178 = objc_msgSend(a2, "position") + 8, v178 <= objc_msgSend(a2, "length")))
          {
            v352 = [a2 data];
            [v352 getBytes:&v389 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v301 = v389;
          v302 = 15;
          goto LABEL_687;
        case 0x43u:
          a1[99] |= 0x8000uLL;
          v389 = 0;
          v61 = [a2 position] + 8;
          if (v61 >= [a2 position] && (v62 = objc_msgSend(a2, "position") + 8, v62 <= objc_msgSend(a2, "length")))
          {
            v310 = [a2 data];
            [v310 getBytes:&v389 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v301 = v389;
          v302 = 16;
          goto LABEL_687;
        case 0x44u:
          a1[99] |= 0x10uLL;
          v389 = 0;
          v101 = [a2 position] + 8;
          if (v101 >= [a2 position] && (v102 = objc_msgSend(a2, "position") + 8, v102 <= objc_msgSend(a2, "length")))
          {
            v321 = [a2 data];
            [v321 getBytes:&v389 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v301 = v389;
          v302 = 5;
          goto LABEL_687;
        case 0x45u:
          a1[99] |= 2uLL;
          v389 = 0;
          v267 = [a2 position] + 8;
          if (v267 >= [a2 position] && (v268 = objc_msgSend(a2, "position") + 8, v268 <= objc_msgSend(a2, "length")))
          {
            v385 = [a2 data];
            [v385 getBytes:&v389 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v301 = v389;
          v302 = 2;
          goto LABEL_687;
        case 0x46u:
          a1[99] |= 4uLL;
          v389 = 0;
          v93 = [a2 position] + 8;
          if (v93 >= [a2 position] && (v94 = objc_msgSend(a2, "position") + 8, v94 <= objc_msgSend(a2, "length")))
          {
            v317 = [a2 data];
            [v317 getBytes:&v389 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v301 = v389;
          v302 = 3;
          goto LABEL_687;
        case 0x47u:
          a1[99] |= 8uLL;
          v389 = 0;
          v39 = [a2 position] + 8;
          if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 8, v40 <= objc_msgSend(a2, "length")))
          {
            v305 = [a2 data];
            [v305 getBytes:&v389 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v301 = v389;
          v302 = 4;
          goto LABEL_687;
        case 0x48u:
          a1[99] |= 0x1000uLL;
          v389 = 0;
          v65 = [a2 position] + 8;
          if (v65 >= [a2 position] && (v66 = objc_msgSend(a2, "position") + 8, v66 <= objc_msgSend(a2, "length")))
          {
            v312 = [a2 data];
            [v312 getBytes:&v389 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v301 = v389;
          v302 = 13;
          goto LABEL_687;
        case 0x49u:
          a1[99] |= 0x200uLL;
          v389 = 0;
          v231 = [a2 position] + 8;
          if (v231 >= [a2 position] && (v232 = objc_msgSend(a2, "position") + 8, v232 <= objc_msgSend(a2, "length")))
          {
            v376 = [a2 data];
            [v376 getBytes:&v389 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v301 = v389;
          v302 = 10;
          goto LABEL_687;
        case 0x4Au:
          a1[99] |= 0x400uLL;
          v389 = 0;
          v239 = [a2 position] + 8;
          if (v239 >= [a2 position] && (v240 = objc_msgSend(a2, "position") + 8, v240 <= objc_msgSend(a2, "length")))
          {
            v380 = [a2 data];
            [v380 getBytes:&v389 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v301 = v389;
          v302 = 11;
          goto LABEL_687;
        case 0x4Bu:
          a1[99] |= 0x800uLL;
          v389 = 0;
          v243 = [a2 position] + 8;
          if (v243 >= [a2 position] && (v244 = objc_msgSend(a2, "position") + 8, v244 <= objc_msgSend(a2, "length")))
          {
            v382 = [a2 data];
            [v382 getBytes:&v389 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v301 = v389;
          v302 = 12;
          goto LABEL_687;
        case 0x4Cu:
          a1[99] |= 0x10000000uLL;
          v389 = 0;
          v79 = [a2 position] + 8;
          if (v79 >= [a2 position] && (v80 = objc_msgSend(a2, "position") + 8, v80 <= objc_msgSend(a2, "length")))
          {
            v316 = [a2 data];
            [v316 getBytes:&v389 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v301 = v389;
          v302 = 29;
          goto LABEL_687;
        case 0x4Du:
          a1[99] |= 0x2000000uLL;
          v389 = 0;
          v169 = [a2 position] + 8;
          if (v169 >= [a2 position] && (v170 = objc_msgSend(a2, "position") + 8, v170 <= objc_msgSend(a2, "length")))
          {
            v348 = [a2 data];
            [v348 getBytes:&v389 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v301 = v389;
          v302 = 26;
          goto LABEL_687;
        case 0x4Eu:
          a1[99] |= 0x4000000uLL;
          v389 = 0;
          v41 = [a2 position] + 8;
          if (v41 >= [a2 position] && (v42 = objc_msgSend(a2, "position") + 8, v42 <= objc_msgSend(a2, "length")))
          {
            v306 = [a2 data];
            [v306 getBytes:&v389 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v301 = v389;
          v302 = 27;
          goto LABEL_687;
        case 0x4Fu:
          a1[99] |= 0x8000000uLL;
          v389 = 0;
          v259 = [a2 position] + 8;
          if (v259 >= [a2 position] && (v260 = objc_msgSend(a2, "position") + 8, v260 <= objc_msgSend(a2, "length")))
          {
            v384 = [a2 data];
            [v384 getBytes:&v389 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v301 = v389;
          v302 = 28;
          goto LABEL_687;
        case 0x50u:
          a1[99] |= 0x1000000000uLL;
          v389 = 0;
          v31 = [a2 position] + 8;
          if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 8, v32 <= objc_msgSend(a2, "length")))
          {
            v304 = [a2 data];
            [v304 getBytes:&v389 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v301 = v389;
          v302 = 37;
          goto LABEL_687;
        case 0x51u:
          a1[99] |= 0x200000000uLL;
          v389 = 0;
          v63 = [a2 position] + 8;
          if (v63 >= [a2 position] && (v64 = objc_msgSend(a2, "position") + 8, v64 <= objc_msgSend(a2, "length")))
          {
            v311 = [a2 data];
            [v311 getBytes:&v389 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v301 = v389;
          v302 = 34;
          goto LABEL_687;
        case 0x52u:
          a1[99] |= 0x400000000uLL;
          v389 = 0;
          v117 = [a2 position] + 8;
          if (v117 >= [a2 position] && (v118 = objc_msgSend(a2, "position") + 8, v118 <= objc_msgSend(a2, "length")))
          {
            v329 = [a2 data];
            [v329 getBytes:&v389 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v301 = v389;
          v302 = 35;
          goto LABEL_687;
        case 0x53u:
          a1[99] |= 0x800000000uLL;
          v389 = 0;
          v113 = [a2 position] + 8;
          if (v113 >= [a2 position] && (v114 = objc_msgSend(a2, "position") + 8, v114 <= objc_msgSend(a2, "length")))
          {
            v327 = [a2 data];
            [v327 getBytes:&v389 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v301 = v389;
          v302 = 36;
          goto LABEL_687;
        case 0x54u:
          a1[99] |= 0x1000000uLL;
          v389 = 0;
          v22 = [a2 position] + 8;
          if (v22 >= [a2 position] && (v23 = objc_msgSend(a2, "position") + 8, v23 <= objc_msgSend(a2, "length")))
          {
            v303 = [a2 data];
            [v303 getBytes:&v389 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v301 = v389;
          v302 = 25;
          goto LABEL_687;
        case 0x55u:
          a1[99] |= 0x200000uLL;
          v389 = 0;
          v20 = [a2 position] + 8;
          if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 8, v21 <= objc_msgSend(a2, "length")))
          {
            v300 = [a2 data];
            [v300 getBytes:&v389 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v301 = v389;
          v302 = 22;
          goto LABEL_687;
        case 0x56u:
          a1[99] |= 0x400000uLL;
          v389 = 0;
          v203 = [a2 position] + 8;
          if (v203 >= [a2 position] && (v204 = objc_msgSend(a2, "position") + 8, v204 <= objc_msgSend(a2, "length")))
          {
            v362 = [a2 data];
            [v362 getBytes:&v389 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v301 = v389;
          v302 = 23;
          goto LABEL_687;
        case 0x57u:
          a1[99] |= 0x800000uLL;
          v389 = 0;
          v207 = [a2 position] + 8;
          if (v207 >= [a2 position] && (v208 = objc_msgSend(a2, "position") + 8, v208 <= objc_msgSend(a2, "length")))
          {
            v364 = [a2 data];
            [v364 getBytes:&v389 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v301 = v389;
          v302 = 24;
          goto LABEL_687;
        case 0x58u:
          a1[99] |= 0x100000000uLL;
          v389 = 0;
          v241 = [a2 position] + 8;
          if (v241 >= [a2 position] && (v242 = objc_msgSend(a2, "position") + 8, v242 <= objc_msgSend(a2, "length")))
          {
            v381 = [a2 data];
            [v381 getBytes:&v389 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v301 = v389;
          v302 = 33;
          goto LABEL_687;
        case 0x59u:
          a1[99] |= 0x20000000uLL;
          v389 = 0;
          v51 = [a2 position] + 8;
          if (v51 >= [a2 position] && (v52 = objc_msgSend(a2, "position") + 8, v52 <= objc_msgSend(a2, "length")))
          {
            v308 = [a2 data];
            [v308 getBytes:&v389 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v301 = v389;
          v302 = 30;
          goto LABEL_687;
        case 0x5Au:
          a1[99] |= 0x40000000uLL;
          v389 = 0;
          v283 = [a2 position] + 8;
          if (v283 >= [a2 position] && (v284 = objc_msgSend(a2, "position") + 8, v284 <= objc_msgSend(a2, "length")))
          {
            v387 = [a2 data];
            [v387 getBytes:&v389 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v301 = v389;
          v302 = 31;
          goto LABEL_687;
        case 0x5Bu:
          a1[99] |= 0x80000000uLL;
          v389 = 0;
          v281 = [a2 position] + 8;
          if (v281 >= [a2 position] && (v282 = objc_msgSend(a2, "position") + 8, v282 <= objc_msgSend(a2, "length")))
          {
            v386 = [a2 data];
            [v386 getBytes:&v389 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v301 = v389;
          v302 = 32;
LABEL_687:
          a1[v302] = v301;
          goto LABEL_688;
        case 0x5Cu:
          v24 = 0;
          v25 = 0;
          v26 = 0;
          a1[100] |= 0x20000000uLL;
          while (1)
          {
            LOBYTE(v389) = 0;
            v27 = [a2 position] + 1;
            if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
            {
              v29 = [a2 data];
              [v29 getBytes:&v389 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v26 |= (v389 & 0x7F) << v24;
            if ((v389 & 0x80) == 0)
            {
              break;
            }

            v24 += 7;
            v11 = v25++ >= 9;
            if (v11)
            {
              v30 = 0;
              goto LABEL_444;
            }
          }

          if ([a2 hasError])
          {
            v30 = 0;
          }

          else
          {
            v30 = v26;
          }

LABEL_444:
          v298 = 744;
          goto LABEL_514;
        case 0x5Du:
          v149 = PBReaderReadString();
          v150 = a1[98];
          a1[98] = v149;

          goto LABEL_688;
        case 0x5Eu:
          v43 = 0;
          v44 = 0;
          v45 = 0;
          a1[100] |= 0x10000000uLL;
          while (1)
          {
            LOBYTE(v389) = 0;
            v46 = [a2 position] + 1;
            if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 1, v47 <= objc_msgSend(a2, "length")))
            {
              v48 = [a2 data];
              [v48 getBytes:&v389 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v45 |= (v389 & 0x7F) << v43;
            if ((v389 & 0x80) == 0)
            {
              break;
            }

            v43 += 7;
            v11 = v44++ >= 9;
            if (v11)
            {
              v30 = 0;
              goto LABEL_452;
            }
          }

          if ([a2 hasError])
          {
            v30 = 0;
          }

          else
          {
            v30 = v45;
          }

LABEL_452:
          v298 = 740;
          goto LABEL_514;
        case 0x5Fu:
          v161 = 0;
          v162 = 0;
          v163 = 0;
          a1[100] |= 0x4000000000uLL;
          while (1)
          {
            LOBYTE(v389) = 0;
            v164 = [a2 position] + 1;
            if (v164 >= [a2 position] && (v165 = objc_msgSend(a2, "position") + 1, v165 <= objc_msgSend(a2, "length")))
            {
              v166 = [a2 data];
              [v166 getBytes:&v389 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v163 |= (v389 & 0x7F) << v161;
            if ((v389 & 0x80) == 0)
            {
              break;
            }

            v161 += 7;
            v11 = v162++ >= 9;
            if (v11)
            {
              v30 = 0;
              goto LABEL_480;
            }
          }

          if ([a2 hasError])
          {
            v30 = 0;
          }

          else
          {
            v30 = v163;
          }

LABEL_480:
          v298 = 780;
          goto LABEL_514;
        case 0x60u:
          v269 = 0;
          v270 = 0;
          v271 = 0;
          a1[100] |= 0x4000000uLL;
          while (1)
          {
            LOBYTE(v389) = 0;
            v272 = [a2 position] + 1;
            if (v272 >= [a2 position] && (v273 = objc_msgSend(a2, "position") + 1, v273 <= objc_msgSend(a2, "length")))
            {
              v274 = [a2 data];
              [v274 getBytes:&v389 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v271 |= (v389 & 0x7F) << v269;
            if ((v389 & 0x80) == 0)
            {
              break;
            }

            v269 += 7;
            v11 = v270++ >= 9;
            if (v11)
            {
              v30 = 0;
              goto LABEL_501;
            }
          }

          if ([a2 hasError])
          {
            v30 = 0;
          }

          else
          {
            v30 = v271;
          }

LABEL_501:
          v298 = 732;
          goto LABEL_514;
        case 0x61u:
          v33 = 0;
          v34 = 0;
          v35 = 0;
          a1[100] |= 0x8000000uLL;
          while (1)
          {
            LOBYTE(v389) = 0;
            v36 = [a2 position] + 1;
            if (v36 >= [a2 position] && (v37 = objc_msgSend(a2, "position") + 1, v37 <= objc_msgSend(a2, "length")))
            {
              v38 = [a2 data];
              [v38 getBytes:&v389 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v35 |= (v389 & 0x7F) << v33;
            if ((v389 & 0x80) == 0)
            {
              break;
            }

            v33 += 7;
            v11 = v34++ >= 9;
            if (v11)
            {
              v30 = 0;
              goto LABEL_448;
            }
          }

          if ([a2 hasError])
          {
            v30 = 0;
          }

          else
          {
            v30 = v35;
          }

LABEL_448:
          v298 = 736;
          goto LABEL_514;
        case 0x62u:
          v285 = 0;
          v286 = 0;
          v287 = 0;
          a1[100] |= 0x1000000000uLL;
          while (1)
          {
            LOBYTE(v389) = 0;
            v288 = [a2 position] + 1;
            if (v288 >= [a2 position] && (v289 = objc_msgSend(a2, "position") + 1, v289 <= objc_msgSend(a2, "length")))
            {
              v290 = [a2 data];
              [v290 getBytes:&v389 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v287 |= (v389 & 0x7F) << v285;
            if ((v389 & 0x80) == 0)
            {
              break;
            }

            v285 += 7;
            v11 = v286++ >= 9;
            if (v11)
            {
              v30 = 0;
              goto LABEL_509;
            }
          }

          if ([a2 hasError])
          {
            v30 = 0;
          }

          else
          {
            v30 = v287;
          }

LABEL_509:
          v298 = 772;
          goto LABEL_514;
        case 0x63u:
          v151 = 0;
          v152 = 0;
          v153 = 0;
          a1[100] |= 0x2000000000uLL;
          while (1)
          {
            LOBYTE(v389) = 0;
            v154 = [a2 position] + 1;
            if (v154 >= [a2 position] && (v155 = objc_msgSend(a2, "position") + 1, v155 <= objc_msgSend(a2, "length")))
            {
              v156 = [a2 data];
              [v156 getBytes:&v389 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v153 |= (v389 & 0x7F) << v151;
            if ((v389 & 0x80) == 0)
            {
              break;
            }

            v151 += 7;
            v11 = v152++ >= 9;
            if (v11)
            {
              v30 = 0;
              goto LABEL_476;
            }
          }

          if ([a2 hasError])
          {
            v30 = 0;
          }

          else
          {
            v30 = v153;
          }

LABEL_476:
          v298 = 776;
          goto LABEL_514;
        case 0x64u:
          v291 = 0;
          v292 = 0;
          v293 = 0;
          a1[100] |= 0x80000000uLL;
          while (1)
          {
            LOBYTE(v389) = 0;
            v294 = [a2 position] + 1;
            if (v294 >= [a2 position] && (v295 = objc_msgSend(a2, "position") + 1, v295 <= objc_msgSend(a2, "length")))
            {
              v296 = [a2 data];
              [v296 getBytes:&v389 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v293 |= (v389 & 0x7F) << v291;
            if ((v389 & 0x80) == 0)
            {
              break;
            }

            v291 += 7;
            v11 = v292++ >= 9;
            if (v11)
            {
              v30 = 0;
              goto LABEL_513;
            }
          }

          if ([a2 hasError])
          {
            v30 = 0;
          }

          else
          {
            v30 = v293;
          }

LABEL_513:
          v298 = 752;
          goto LABEL_514;
        case 0x65u:
          v275 = 0;
          v276 = 0;
          v277 = 0;
          a1[100] |= 0x100000000uLL;
          while (1)
          {
            LOBYTE(v389) = 0;
            v278 = [a2 position] + 1;
            if (v278 >= [a2 position] && (v279 = objc_msgSend(a2, "position") + 1, v279 <= objc_msgSend(a2, "length")))
            {
              v280 = [a2 data];
              [v280 getBytes:&v389 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v277 |= (v389 & 0x7F) << v275;
            if ((v389 & 0x80) == 0)
            {
              break;
            }

            v275 += 7;
            v11 = v276++ >= 9;
            if (v11)
            {
              v30 = 0;
              goto LABEL_505;
            }
          }

          if ([a2 hasError])
          {
            v30 = 0;
          }

          else
          {
            v30 = v277;
          }

LABEL_505:
          v298 = 756;
          goto LABEL_514;
        case 0x66u:
          v261 = 0;
          v262 = 0;
          v263 = 0;
          a1[100] |= 0x400000000uLL;
          while (1)
          {
            LOBYTE(v389) = 0;
            v264 = [a2 position] + 1;
            if (v264 >= [a2 position] && (v265 = objc_msgSend(a2, "position") + 1, v265 <= objc_msgSend(a2, "length")))
            {
              v266 = [a2 data];
              [v266 getBytes:&v389 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v263 |= (v389 & 0x7F) << v261;
            if ((v389 & 0x80) == 0)
            {
              break;
            }

            v261 += 7;
            v11 = v262++ >= 9;
            if (v11)
            {
              v30 = 0;
              goto LABEL_497;
            }
          }

          if ([a2 hasError])
          {
            v30 = 0;
          }

          else
          {
            v30 = v263;
          }

LABEL_497:
          v298 = 764;
          goto LABEL_514;
        case 0x67u:
          v55 = 0;
          v56 = 0;
          v57 = 0;
          a1[100] |= 0x800000000uLL;
          while (1)
          {
            LOBYTE(v389) = 0;
            v58 = [a2 position] + 1;
            if (v58 >= [a2 position] && (v59 = objc_msgSend(a2, "position") + 1, v59 <= objc_msgSend(a2, "length")))
            {
              v60 = [a2 data];
              [v60 getBytes:&v389 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v57 |= (v389 & 0x7F) << v55;
            if ((v389 & 0x80) == 0)
            {
              break;
            }

            v55 += 7;
            v11 = v56++ >= 9;
            if (v11)
            {
              v30 = 0;
              goto LABEL_456;
            }
          }

          if ([a2 hasError])
          {
            v30 = 0;
          }

          else
          {
            v30 = v57;
          }

LABEL_456:
          v298 = 768;
          goto LABEL_514;
        case 0x68u:
          v253 = 0;
          v254 = 0;
          v255 = 0;
          a1[100] |= 0x200000000uLL;
          while (1)
          {
            LOBYTE(v389) = 0;
            v256 = [a2 position] + 1;
            if (v256 >= [a2 position] && (v257 = objc_msgSend(a2, "position") + 1, v257 <= objc_msgSend(a2, "length")))
            {
              v258 = [a2 data];
              [v258 getBytes:&v389 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v255 |= (v389 & 0x7F) << v253;
            if ((v389 & 0x80) == 0)
            {
              break;
            }

            v253 += 7;
            v11 = v254++ >= 9;
            if (v11)
            {
              v30 = 0;
              goto LABEL_493;
            }
          }

          if ([a2 hasError])
          {
            v30 = 0;
          }

          else
          {
            v30 = v255;
          }

LABEL_493:
          v298 = 760;
LABEL_514:
          *(a1 + v298) = v30;
          goto LABEL_688;
        case 0x69u:
          v245 = 0;
          v246 = 0;
          v247 = 0;
          break;
        default:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_688;
      }

      while (1)
      {
        LOBYTE(v389) = 0;
        v248 = [a2 position] + 1;
        if (v248 >= [a2 position] && (v249 = objc_msgSend(a2, "position") + 1, v249 <= objc_msgSend(a2, "length")))
        {
          v250 = [a2 data];
          [v250 getBytes:&v389 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v247 |= (v389 & 0x7F) << v245;
        if ((v389 & 0x80) == 0)
        {
          break;
        }

        v245 += 7;
        v11 = v246++ >= 9;
        if (v11)
        {
          v19 = 0;
          goto LABEL_488;
        }
      }

      v19 = [a2 hasError] ? 0 : v247;
LABEL_488:
      v299 = 73;
LABEL_489:
      a1[v299] = v19;
LABEL_688:
      v388 = [a2 position];
    }

    while (v388 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}