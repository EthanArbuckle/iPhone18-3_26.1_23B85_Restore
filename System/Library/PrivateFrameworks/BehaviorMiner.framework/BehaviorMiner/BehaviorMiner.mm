void sub_241ACCE78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, id obj, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  objc_sync_exit(v26);
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose((v27 - 160), 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_241ACE5B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a35, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id BMItemNormalizedValueFromValue(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [MEMORY[0x277CCA900] alphanumericCharacterSet];
    v3 = [v1 stringByAddingPercentEncodingWithAllowedCharacters:v2];

    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v1 stringValue];
LABEL_7:
    v3 = v4;
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v1 UUIDString];
    goto LABEL_7;
  }

  v3 = 0;
LABEL_9:

  return v3;
}

id BMItemValueFromNormalizedValue(void *a1, void *a2)
{
  v3 = a1;
  if ([a2 isSubclassOfClass:objc_opt_class()])
  {
    v4 = [v3 stringByRemovingPercentEncoding];
LABEL_7:
    v5 = v4;
    goto LABEL_8;
  }

  if ([a2 isSubclassOfClass:objc_opt_class()])
  {
    v4 = [MEMORY[0x277CCA980] decimalNumberWithString:v3];
    goto LABEL_7;
  }

  if ([a2 isSubclassOfClass:objc_opt_class()])
  {
    v4 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v3];
    goto LABEL_7;
  }

  v5 = 0;
LABEL_8:

  return v5;
}

void sub_241AD025C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_0_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

id BMTemporalItemsForDate(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v9 = [v6 components:544 fromDate:v5];
  v10 = +[BMItemType hourOfDay];
  v11 = [v7 containsObject:v10];

  if (v11)
  {
    v12 = [BMItem alloc];
    v13 = +[BMItemType hourOfDay];
    v14 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v9, "hour")}];
    v15 = [(BMItem *)v12 initWithType:v13 value:v14];

    [v8 addObject:v15];
  }

  v16 = +[BMItemType hourOfDaySlot];
  v17 = [v7 containsObject:v16];

  if (v17)
  {
    v18 = [v9 hour] / 4;
    v19 = [BMItem alloc];
    v20 = +[BMItemType hourOfDaySlot];
    v21 = [MEMORY[0x277CCABB0] numberWithInteger:v18];
    v22 = [(BMItem *)v19 initWithType:v20 value:v21];

    [v8 addObject:v22];
  }

  v23 = +[BMItemType dayOfWeek];
  v24 = [v7 containsObject:v23];

  if (v24)
  {
    v25 = [BMItem alloc];
    v26 = +[BMItemType dayOfWeek];
    v27 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v9, "weekday")}];
    v28 = [(BMItem *)v25 initWithType:v26 value:v27];

    [v8 addObject:v28];
  }

  v29 = +[BMItemType isWeekend];
  v30 = [v7 containsObject:v29];

  if (v30)
  {
    v31 = [v6 isDateInWeekend:v5];
    v32 = [BMItem alloc];
    v33 = +[BMItemType isWeekend];
    v34 = [MEMORY[0x277CCABB0] numberWithBool:v31];
    v35 = [(BMItem *)v32 initWithType:v33 value:v34];

    [v8 addObject:v35];
  }

  v36 = [v8 copy];

  return v36;
}

BOOL BMIsNotAppExtension(void *a1)
{
  v1 = a1;
  v2 = [v1 metadata];
  v3 = [MEMORY[0x277CFE178] extensionHostIdentifier];
  v4 = [v2 objectForKeyedSubscript:v3];
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v6 = [v1 metadata];
    v7 = [MEMORY[0x277CFE178] extensionContainingBundleIdentifier];
    v8 = [v6 objectForKeyedSubscript:v7];
    v5 = v8 == 0;
  }

  return v5;
}

uint64_t BMIsShareExtension(void *a1)
{
  v1 = a1;
  if (BMIsShareExtension_onceToken != -1)
  {
    BMIsShareExtension_cold_1();
  }

  v2 = [v1 stringValue];
  if ([v2 length])
  {
    v3 = [BMIsShareExtension_cache objectForKey:v2];
    if (!v3)
    {
      if (BMIsNotAppExtension(v1))
      {
        v3 = MEMORY[0x277CBEC28];
      }

      else
      {
        v5 = [MEMORY[0x277CC1ED8] pluginKitProxyForIdentifier:v2];
        v6 = v5;
        v3 = MEMORY[0x277CBEC28];
        if (v5)
        {
          v7 = [v5 protocol];
          v8 = [v7 isEqualToString:@"com.apple.share-services"];

          if (v8)
          {
            v3 = MEMORY[0x277CBEC38];
          }
        }
      }

      [BMIsShareExtension_cache setObject:v3 forKey:v2];
    }

    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t __BMIsShareExtension_block_invoke()
{
  BMIsShareExtension_cache = objc_alloc_init(MEMORY[0x277CBEA78]);

  return MEMORY[0x2821F96F8]();
}

id BMCreateShortcutFilter()
{
  v0 = RelevanceEngineLibraryCore();
  if (v0)
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x2050000000;
    v1 = getREShortcutFilterClass_softClass;
    v8 = getREShortcutFilterClass_softClass;
    if (!getREShortcutFilterClass_softClass)
    {
      v4[0] = MEMORY[0x277D85DD0];
      v4[1] = 3221225472;
      v4[2] = __getREShortcutFilterClass_block_invoke;
      v4[3] = &unk_278D066F0;
      v4[4] = &v5;
      __getREShortcutFilterClass_block_invoke(v4);
      v1 = v6[3];
    }

    v2 = v1;
    _Block_object_dispose(&v5, 8);
    v0 = objc_alloc_init(v1);
  }

  return v0;
}

void sub_241AD46B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t RelevanceEngineLibraryCore()
{
  v2 = *MEMORY[0x277D85DE8];
  if (!RelevanceEngineLibraryCore_frameworkLibrary)
  {
    RelevanceEngineLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  result = RelevanceEngineLibraryCore_frameworkLibrary;
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __RelevanceEngineLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  RelevanceEngineLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getREShortcutFilterClass_block_invoke(uint64_t a1)
{
  if (!RelevanceEngineLibraryCore())
  {
    v3 = abort_report_np();
    free(v3);
  }

  result = objc_getClass("REShortcutFilter");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getREShortcutFilterClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getREShortcutFilterClass_block_invoke_cold_1();
    return BMEventInterval(v4);
  }

  return result;
}

id BMEventInterval(void *a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [MEMORY[0x277CBEAA8] distantFuture];
  v3 = [MEMORY[0x277CBEAA8] distantPast];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = v1;
  v5 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        v10 = [v9 startDate];
        if ([v10 compare:v2] == -1)
        {
          v11 = v10;

          v2 = v11;
        }

        v12 = [v9 endDate];
        if ([v12 compare:v3] == 1)
        {
          v13 = v12;

          v3 = v13;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v6);
  }

  v14 = [v2 earlierDate:v3];
  v15 = [v2 laterDate:v3];
  v16 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v14 endDate:v15];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

id BMLog()
{
  if (BMLog_onceToken != -1)
  {
    BMLog_cold_1();
  }

  v1 = BMLog_log;

  return v1;
}

uint64_t __BMLog_block_invoke()
{
  BMLog_log = os_log_create("com.apple.BehaviorMiner", "general");

  return MEMORY[0x2821F96F8]();
}

Class __getTRIClientClass_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  if (!TrialLibraryCore_frameworkLibrary)
  {
    TrialLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  result = objc_getClass("TRIClient");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getTRIClientClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __TrialLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  TrialLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_241AD92EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_241AD9820(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id BMInteractionPredicate(uint64_t a1, void *a2, void *a3)
{
  v33[3] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCAC30];
  v6 = MEMORY[0x277CBEAA8];
  v7 = a3;
  v8 = a2;
  v9 = [v6 dateWithTimeIntervalSinceNow:-2419200.0];
  v10 = [v5 predicateWithFormat:@"(startDate >= %@)", v9];

  v11 = MEMORY[0x277CCAC30];
  v12 = [MEMORY[0x277CCABB0] numberWithInteger:a1];
  v30 = [v11 predicateWithFormat:@"(mechanism == %@)", v12];

  v13 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(bundleId IN %@)", v8];
  v14 = MEMORY[0x277CCA920];
  v33[0] = v10;
  v33[1] = v13;
  v33[2] = v30;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:3];
  v16 = [v14 andPredicateWithSubpredicates:v15];

  v17 = MEMORY[0x277CCAC30];
  v18 = [v7 suggestionModel];

  v19 = [v18 shareSheetMechanisms];
  v20 = [v17 predicateWithFormat:@"(mechanism IN %@)", v19];

  v21 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(targetBundleId IN %@)", v8];

  v22 = MEMORY[0x277CCA920];
  v32[0] = v10;
  v32[1] = v20;
  v32[2] = v21;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:3];
  v24 = [v22 andPredicateWithSubpredicates:v23];

  v25 = MEMORY[0x277CCA920];
  v31[0] = v16;
  v31[1] = v24;
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:2];
  v27 = [v25 orPredicateWithSubpredicates:v26];

  v28 = *MEMORY[0x277D85DE8];

  return v27;
}

Class __getCKContextClientClass_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  if (!ContextKitLibraryCore_frameworkLibrary)
  {
    ContextKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  result = objc_getClass("CKContextClient");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCKContextClientClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __ContextKitLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  ContextKitLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __BMTopKScenesForPhotosWithIdentifiers_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 objectForKeyedSubscript:@"confidence"];
  v6 = [v4 objectForKeyedSubscript:@"confidence"];

  v7 = [v5 compare:v6];
  return v7;
}

_BYTE *OUTLINED_FUNCTION_0_1(_BYTE *result, _BYTE *a2)
{
  *result = 0;
  *a2 = 0;
  return result;
}

void OUTLINED_FUNCTION_1_0(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, a5, 2u);
}

id BMStorageURLForDomain(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && [v1 length])
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"CoreBehavior/%@.sqlite", v2];
    v4 = [@"/var/mobile/Library" stringByAppendingPathComponent:v3];
    v5 = [MEMORY[0x277CBEBC0] fileURLWithPath:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_241ADD094(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_241ADD2E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(&a32, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_241ADD86C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_241ADDBDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __BMLoadBehaviorStoragePersistentContainer_block_invoke()
{
  v0 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v1 = [v0 URLForResource:@"BehaviorMiner" withExtension:@"momd"];
  v2 = BMLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __BMLoadBehaviorStoragePersistentContainer_block_invoke_cold_1();
  }

  if (v0)
  {
    v3 = v1 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    v5 = BMLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      __BMLoadBehaviorStoragePersistentContainer_block_invoke_cold_2(v5);
    }
  }

  else
  {
    v4 = [objc_alloc(MEMORY[0x277CBE450]) initWithContentsOfURL:v1];
    v5 = BMLoadBehaviorStoragePersistentContainer_model;
    BMLoadBehaviorStoragePersistentContainer_model = v4;
  }
}

void __BMLoadBehaviorStoragePersistentContainer_block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  v4 = 2112;
  v5 = v0;
  _os_log_debug_impl(&dword_241ACA000, v1, OS_LOG_TYPE_DEBUG, "Loading managed object model from bundle: %@ URL: %@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}