id _ICProactiveQuickTypeOSLogFacility()
{
  if (_ICProactiveQuickTypeOSLogFacility_onceToken != -1)
  {
    _ICProactiveQuickTypeOSLogFacility_cold_1();
  }

  v1 = _ICProactiveQuickTypeOSLogFacility_logFacility;

  return v1;
}

void sub_254BD1CC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

unint64_t _ICMachTimeToNanoseconds(uint64_t a1)
{
  if (_ICMachTimeToNanoseconds_onceToken != -1)
  {
    _ICMachTimeToNanoseconds_cold_1();
  }

  return _ICMachTimeToNanoseconds_machTimebaseInfo * a1 / *algn_28143BA7C;
}

void sub_254BD32F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getTIInputContextHistoryClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!TextInputLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __TextInputLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_2797AD9D8;
    v7 = 0;
    TextInputLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (TextInputLibraryCore_frameworkLibrary)
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
  result = objc_getClass("TIInputContextHistory");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getTIInputContextHistoryClass_block_invoke_cold_1();
  }

  getTIInputContextHistoryClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __TextInputLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  TextInputLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_254BD5670(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  _ICRecordMeasurementState(&a36);
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose(&a45, 8);
  _Unwind_Resume(a1);
}

void _ICRecordMeasurementState(uint64_t *a1)
{
  if (!a1[2])
  {
    v2 = mach_absolute_time();
    v3 = _ICMachTimeToNanoseconds(v2 - a1[1]);
    v4 = _ICProactiveQuickTypeOSLogFacility();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      _ICRecordMeasurementState_cold_1(a1);
    }

    a1[2] = v3;
  }
}

void sub_254BD5B4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void OUTLINED_FUNCTION_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, a5, 0xCu);
}

void sub_254BD73C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_254BD776C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va1, 8);
  _ICRecordMeasurementState(va);
  _Unwind_Resume(a1);
}

void sub_254BD7EE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose((v34 - 160), 8);
  _ICRecordMeasurementState((v34 - 216));
  _Unwind_Resume(a1);
}

void sub_254BD83B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _ICRecordMeasurementState(va);
  _Unwind_Resume(a1);
}

void sub_254BD8BA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _ICRecordMeasurementState(va);
  _Unwind_Resume(a1);
}

void sub_254BD93D0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v6 + 32));
  objc_destroyWeak((v5 + 32));
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v7 - 104));
  _Unwind_Resume(a1);
}

void sub_254BD998C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v7 + 32));
  objc_destroyWeak((v6 + 32));
  objc_destroyWeak((v5 + 32));
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v8 - 104));
  _Unwind_Resume(a1);
}

void sub_254BDA674(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_254BDB370(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_254BDB73C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_254BDBB9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_254BDBFF0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_254BDC564(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_254BDCA54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_254BDD628(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _ICRecordMeasurementState(va);
  _Unwind_Resume(a1);
}

void sub_254BDDE28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_254BDE2CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a16, 8);
  _Block_object_dispose(&a29, 8);
  _ICRecordMeasurementState(&a22);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_2_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

id ICLXEntryGetTransientLexicon()
{
  UserBitfield = LXEntryGetUserBitfield();
  v1 = transientLexiconMap();
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:UserBitfield];
  v3 = [v1 objectForKeyedSubscript:v2];

  return v3;
}

id transientLexiconMap()
{
  v0 = transientLexiconMap_map;
  if (!transientLexiconMap_map)
  {
    v1 = objc_opt_new();
    v2 = transientLexiconMap_map;
    transientLexiconMap_map = v1;

    v0 = transientLexiconMap_map;
  }

  return v0;
}

id ICLXEntryGetEntities()
{
  v0 = ICLXEntryGetTransientLexicon();
  v1 = [_ICTransientLexicon _mutableNamedEntitiesForLXEntry:v0];
  v2 = [v1 copy];

  return v2;
}

void sub_254BE1668(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_254BE18C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _createExemplarSetForLocales(void *a1, int *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = uset_openEmpty();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        [v10 UTF8String];
        v11 = ulocdata_open();
        ExemplarSet = ulocdata_getExemplarSet();
        v13 = ulocdata_getExemplarSet();
        v14 = ulocdata_getExemplarSet();
        if (*a2 <= 0 && v4)
        {
          v15 = v14;
          if (ExemplarSet)
          {
            MEMORY[0x259C27250](v4, ExemplarSet);
            uset_close();
          }

          if (v13)
          {
            MEMORY[0x259C27250](v4, v13);
            uset_close();
          }

          if (v15)
          {
            MEMORY[0x259C27250](v4, v15);
            uset_close();
          }

          if (v11)
          {
            ulocdata_close();
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  v16 = *a2;
  if (*a2 <= 0 && v4)
  {
    MEMORY[0x259C27240](v4, 32);
    MEMORY[0x259C27260](v4, 48, 57);
    uset_addString();
    v16 = *a2;
  }

  if (v16 <= 0 && v4)
  {
    MEMORY[0x259C272A0](v4);
  }

  else if (v4)
  {
    uset_close();
    v4 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v4;
}

void sub_254BE2340(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _ICPersNamedEntityOSLogFacility()
{
  if (_ICPersNamedEntityOSLogFacility_onceToken != -1)
  {
    _ICPersNamedEntityOSLogFacility_cold_1();
  }

  v1 = _ICPersNamedEntityOSLogFacility_logFacility;

  return v1;
}

id _ICPersContactOSLogFacility()
{
  if (_ICPersContactOSLogFacility_onceToken != -1)
  {
    _ICPersContactOSLogFacility_cold_1();
  }

  v1 = _ICPersContactOSLogFacility_logFacility;

  return v1;
}

void _ICRecordMeasurementState_cold_1(uint64_t *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  v4[0] = 138412546;
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(&dword_254BD0000, v2, OS_LOG_TYPE_DEBUG, "_ICScales: %@ took %f seconds", v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}