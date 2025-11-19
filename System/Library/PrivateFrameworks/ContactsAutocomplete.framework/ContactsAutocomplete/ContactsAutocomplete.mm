uint64_t __CNALoggingContextDebug_block_invoke()
{
  CNALoggingContextDebug_cn_once_object_2 = os_log_create("com.apple.contacts.autocomplete", "debug");

  return MEMORY[0x2821F96F8]();
}

id CNALoggingContextDebug()
{
  if (CNALoggingContextDebug_cn_once_token_2 != -1)
  {
    CNALoggingContextDebug_cold_1();
  }

  v1 = CNALoggingContextDebug_cn_once_object_2;

  return v1;
}

id CNALoggingContextTriage()
{
  if (CNALoggingContextTriage_cn_once_token_4 != -1)
  {
    CNALoggingContextTriage_cold_1();
  }

  v1 = CNALoggingContextTriage_cn_once_object_4;

  return v1;
}

uint64_t __CNALoggingContextTriage_block_invoke()
{
  CNALoggingContextTriage_cn_once_object_4 = os_log_create("com.apple.contacts.autocomplete", "triage");

  return MEMORY[0x2821F96F8]();
}

id CNALoggingContextPerformance()
{
  if (CNALoggingContextPerformance_cn_once_token_0 != -1)
  {
    CNALoggingContextPerformance_cold_1();
  }

  v1 = CNALoggingContextPerformance_cn_once_object_0;

  return v1;
}

uint64_t __CNALoggingContextPerformance_block_invoke()
{
  CNALoggingContextPerformance_cn_once_object_0 = os_log_create("com.apple.contacts.autocomplete", "performance");

  return MEMORY[0x2821F96F8]();
}

void __LoadPeopleSuggester_block_invoke()
{
  LoadPeopleSuggester_frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/PeopleSuggester.framework/PeopleSuggester", 1);
  if (!LoadPeopleSuggester_frameworkLibrary && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __LoadPeopleSuggester_block_invoke_cold_1();
  }
}

void __LoadPeopleSuggester_block_invoke_0()
{
  LoadPeopleSuggester_frameworkLibrary_0 = dlopen("/System/Library/PrivateFrameworks/PeopleSuggester.framework/PeopleSuggester", 1);
  if (!LoadPeopleSuggester_frameworkLibrary_0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __LoadPeopleSuggester_block_invoke_cold_1();
  }
}

void __LoadPeopleSuggester_block_invoke_1()
{
  LoadPeopleSuggester_frameworkLibrary_1 = dlopen("/System/Library/PrivateFrameworks/PeopleSuggester.framework/PeopleSuggester", 1);
  if (!LoadPeopleSuggester_frameworkLibrary_1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __LoadPeopleSuggester_block_invoke_cold_1();
  }
}

void __LoadPeopleSuggester_block_invoke_2()
{
  LoadPeopleSuggester_frameworkLibrary_2 = dlopen("/System/Library/PrivateFrameworks/PeopleSuggester.framework/PeopleSuggester", 1);
  if (!LoadPeopleSuggester_frameworkLibrary_2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __LoadPeopleSuggester_block_invoke_cold_1();
  }
}

void __LoadPeopleSuggester_block_invoke_3()
{
  LoadPeopleSuggester_frameworkLibrary_3 = dlopen("/System/Library/PrivateFrameworks/PeopleSuggester.framework/PeopleSuggester", 1);
  if (!LoadPeopleSuggester_frameworkLibrary_3 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __LoadPeopleSuggester_block_invoke_cold_1();
  }
}

Class init_PSPredictionContext()
{
  if (LoadPeopleSuggester_loadPredicate_2 != -1)
  {
    init_PSAutocompleteSuggestion_cold_1();
  }

  result = objc_getClass("_PSPredictionContext");
  class_PSPredictionContext = result;
  get_PSPredictionContextClass = _PSPredictionContextFunction;
  return result;
}

Class init_PSPredictionContext_0()
{
  if (LoadPeopleSuggester_loadPredicate_3 != -1)
  {
    init_PSPredictionContext_cold_1();
  }

  result = objc_getClass("_PSPredictionContext");
  class_PSPredictionContext_0 = result;
  get_PSPredictionContextClass_0 = _PSPredictionContextFunction_0;
  return result;
}

Class init_PSSuggester()
{
  if (LoadPeopleSuggester_loadPredicate != -1)
  {
    init_PSSuggester_cold_1();
  }

  result = objc_getClass("_PSSuggester");
  class_PSSuggester = result;
  get_PSSuggesterClass = _PSSuggesterFunction;
  return result;
}

Class init_PSSuggester_0()
{
  if (LoadPeopleSuggester_loadPredicate_0 != -1)
  {
    init_PSSuggester_cold_1_0();
  }

  result = objc_getClass("_PSSuggester");
  class_PSSuggester_0 = result;
  get_PSSuggesterClass_0 = _PSSuggesterFunction_0;
  return result;
}

Class init_PSSuggester_1()
{
  if (LoadPeopleSuggester_loadPredicate_2 != -1)
  {
    init_PSAutocompleteSuggestion_cold_1();
  }

  result = objc_getClass("_PSSuggester");
  class_PSSuggester_1 = result;
  get_PSSuggesterClass_1 = _PSSuggesterFunction_1;
  return result;
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

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

Class init_PSCNAutocompleteFeedback()
{
  if (LoadPeopleSuggester_loadPredicate_0 != -1)
  {
    init_PSSuggester_cold_1_0();
  }

  result = objc_getClass("_PSCNAutocompleteFeedback");
  class_PSCNAutocompleteFeedback = result;
  get_PSCNAutocompleteFeedbackClass = _PSCNAutocompleteFeedbackFunction;
  return result;
}

id sForkJoinCleanup_block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 _cn_filter:*MEMORY[0x277CFBD18]];
  v3 = [v2 _cn_flatten];

  return v3;
}

uint64_t CNAutocompleteIsDebugLoggingEnabled()
{
  v0 = _CNAInternalBuild();
  v1 = [MEMORY[0x277CFBEE8] standardPreferences];
  v2 = v1;
  if (v0)
  {
    v3 = [v1 userHasOptedOutOfPreference:@"CNAutocompleteLogEnabled"] ^ 1;
  }

  else
  {
    v3 = [v1 userHasOptedInToPreference:@"CNAutocompleteLogEnabled"];
  }

  return v3;
}

uint64_t _CNAInternalBuild()
{
  v0 = [MEMORY[0x277CFBE10] currentEnvironment];
  v1 = [v0 isInternalBuild];

  return v1;
}

uint64_t sub_215602920(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_215656A9C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for ComposeRecipient.Identifier(0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_215602A48(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_215656A9C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for ComposeRecipient.Identifier(0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_215602C14()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id sRecentContactLogDescription_block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CBEB18];
  v3 = a2;
  v4 = [v2 array];
  v5 = MEMORY[0x277CCACA8];
  v6 = [v3 description];
  v7 = [v5 stringWithFormat:@"%@", v6];
  [v4 addObject:v7];

  v8 = MEMORY[0x277CCACA8];
  v9 = [v3 lastSendingAddress];
  v10 = [v8 stringWithFormat:@"%@", v9];
  [v4 addObject:v10];

  v11 = MEMORY[0x277CCACA8];
  v12 = [v3 mostRecentDate];

  v13 = [v11 stringWithFormat:@"%@", v12];
  [v4 addObject:v13];

  v14 = [v4 componentsJoinedByString:{@", "}];

  return v14;
}

void sub_215604018(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v14 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_215604478(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a15, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_215604898(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_215605020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t CNAutocompleteIsSortingLoggingEnabled()
{
  v0 = [MEMORY[0x277CFBEE8] standardPreferences];
  v1 = [v0 userHasOptedInToPreference:@"CNAutocompleteSortingLogEnabled"];

  return v1;
}

uint64_t CNAutocompleteIsProbesLoggingEnabled()
{
  v0 = [MEMORY[0x277CFBEE8] standardPreferences];
  v1 = [v0 BOOLForKey:@"CNAutocompleteProbesLogEnabled"];

  return v1;
}

id CNALoggingContextSorting()
{
  if (CNALoggingContextSorting_cn_once_token_1 != -1)
  {
    CNALoggingContextSorting_cold_1();
  }

  v1 = CNALoggingContextSorting_cn_once_object_1;

  return v1;
}

uint64_t __CNALoggingContextSorting_block_invoke()
{
  CNALoggingContextSorting_cn_once_object_1 = os_log_create("com.apple.contacts.autocomplete", "sorting");

  return MEMORY[0x2821F96F8]();
}

id CNALoggingContextProbes()
{
  if (CNALoggingContextProbes_cn_once_token_3 != -1)
  {
    CNALoggingContextProbes_cold_1();
  }

  v1 = CNALoggingContextProbes_cn_once_object_3;

  return v1;
}

uint64_t __CNALoggingContextProbes_block_invoke()
{
  CNALoggingContextProbes_cn_once_object_3 = os_log_create("com.apple.contacts.autocomplete", "probes");

  return MEMORY[0x2821F96F8]();
}

void sub_21560617C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class initSGSuggestionsService()
{
  if (LoadCoreSuggestions_loadPredicate != -1)
  {
    initSGSuggestionsService_cold_1();
  }

  result = objc_getClass("SGSuggestionsService");
  classSGSuggestionsService = result;
  getSGSuggestionsServiceClass = SGSuggestionsServiceFunction;
  return result;
}

void __LoadCoreSuggestions_block_invoke()
{
  LoadCoreSuggestions_frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/CoreSuggestions.framework/CoreSuggestions", 1);
  if (!LoadCoreSuggestions_frameworkLibrary && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __LoadCoreSuggestions_block_invoke_cold_1();
  }
}

void OUTLINED_FUNCTION_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

Class initEKDirectorySearchOperation()
{
  if (LoadEventKit_loadPredicate != -1)
  {
    initEKDirectorySearchOperation_cold_1();
  }

  result = objc_getClass("EKDirectorySearchOperation");
  classEKDirectorySearchOperation = result;
  getEKDirectorySearchOperationClass = EKDirectorySearchOperationFunction;
  return result;
}

void __LoadEventKit_block_invoke()
{
  LoadEventKit_frameworkLibrary = dlopen("/System/Library/Frameworks/EventKit.framework/EventKit", 1);
  if (!LoadEventKit_frameworkLibrary && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __LoadEventKit_block_invoke_cold_1();
  }
}

void sub_215608958(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_21560B0DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sNameComponentsFromContact_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 contactType] == 1)
  {
    v3 = 0;
  }

  else
  {
    v4 = [v2 givenName];
    v5 = [v2 familyName];
    v6 = [v2 nickname];
    v7 = [v2 nameSuffix];
    v3 = [CNAutocompleteNameComponents nameComponentsWithFirstName:v4 lastName:v5 nickname:v6 nameSuffix:v7];
  }

  return v3;
}

void sub_21560F48C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

uint64_t sIsContact_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

uint64_t sContainsAlphanumericCharacters_block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCA900];
  v3 = a2;
  v4 = [v2 alphanumericCharacterSet];
  v5 = [v3 _cn_containsCharacterInSet:v4];

  return v5;
}

Class initEKEventStore()
{
  if (LoadEventKit_loadPredicate_0 != -1)
  {
    initEKEventStore_cold_1();
  }

  result = objc_getClass("EKEventStore");
  classEKEventStore = result;
  getEKEventStoreClass = EKEventStoreFunction;
  return result;
}

void __LoadEventKit_block_invoke_0()
{
  LoadEventKit_frameworkLibrary_0 = dlopen("/System/Library/Frameworks/EventKit.framework/EventKit", 1);
  if (!LoadEventKit_frameworkLibrary_0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __LoadEventKit_block_invoke_cold_1();
  }
}

BOOL _block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CBEB18];
  v5 = a3;
  v6 = a2;
  v7 = [v4 array];
  v8 = [v6 displayName];
  v9 = [CNAutocompleteTokenMatcher tokensForNameString:v8];
  [v7 addObjectsFromArray:v9];

  v10 = [v6 address];

  [v7 _cn_addNonNilObject:v10];
  v11 = [CNAutocompleteTokenMatcher tokensForNameString:v5];

  v12 = [CNAutocompleteTokenMatcher doSearchTokens:v11 matchNameTokens:v7];
  return v12;
}

uint64_t _block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 kind];
  v3 = [v2 isEqual:*MEMORY[0x277D00EC8]];

  return v3 ^ 1u;
}

void sub_215618930(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_21561B11C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 104));
  _Unwind_Resume(a1);
}

void sub_21561C004(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_21561C688(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21561CBC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void CNAutocompleteDelegateMultipleCallbacks(void *a1)
{
  v1 = a1;
  v2 = CNALoggingContextTriage();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    CNAutocompleteDelegateMultipleCallbacks_cold_1(v1, v2);
  }
}

id contactSearchLog()
{
  if (contactSearchLog_cn_once_token_0 != -1)
  {
    contactSearchLog_cold_1();
  }

  v1 = contactSearchLog_cn_once_object_0;

  return v1;
}

uint64_t __CNGuardOSLog_block_invoke()
{
  CNGuardOSLog_cn_once_object_0 = os_log_create("com.apple.contacts", "api");

  return MEMORY[0x2821F96F8]();
}

uint64_t __contactSearchLog_block_invoke()
{
  contactSearchLog_cn_once_object_0 = os_log_create("com.apple.contacts.autocomplete", "contactsearch");

  return MEMORY[0x2821F96F8]();
}

Class init_PSSuggestion()
{
  if (LoadPeopleSuggester_loadPredicate_1 != -1)
  {
    init_PSSuggestion_cold_1();
  }

  result = objc_getClass("_PSSuggestion");
  class_PSSuggestion = result;
  get_PSSuggestionClass = _PSSuggestionFunction;
  return result;
}

Class init_PSRecipient()
{
  if (LoadPeopleSuggester_loadPredicate_1 != -1)
  {
    init_PSSuggestion_cold_1();
  }

  result = objc_getClass("_PSRecipient");
  class_PSRecipient = result;
  get_PSRecipientClass = _PSRecipientFunction;
  return result;
}

id CNAutocompleteProbeBatchKey(uint64_t a1)
{
  v1 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1];
  v2 = [v1 description];
  v3 = [@"batch" stringByAppendingString:v2];

  return v3;
}

__CFString *CNAutocompleteProbeBoolKey(int a1)
{
  if (a1)
  {
    return @"YES";
  }

  else
  {
    return @"NO";
  }
}

__CFString *CNAutocompleteProbeSourceTypeKey(uint64_t a1)
{
  v1 = a1;
  v2 = [CNAutocompleteResult isSourceTypeConsideredSuggestion:a1];
  v3 = @"Duet Promoted";
  if ((v1 & 0x10) == 0)
  {
    v3 = @"Other";
  }

  if (v2)
  {
    return @"Pure Suggestions";
  }

  else
  {
    return v3;
  }
}

id CNAutocompleteProbeDuetModelID()
{
  v0 = [MEMORY[0x277CFE0E0] loggingTagForAutocompleteFeedback];
  v1 = [@"Duet" stringByAppendingString:v0];

  return v1;
}

Class init_PSAutocompleteSuggestion()
{
  if (LoadPeopleSuggester_loadPredicate_2 != -1)
  {
    init_PSAutocompleteSuggestion_cold_1();
  }

  result = objc_getClass("_PSAutocompleteSuggestion");
  class_PSAutocompleteSuggestion = result;
  get_PSAutocompleteSuggestionClass = _PSAutocompleteSuggestionFunction;
  return result;
}

uint64_t __CNResultWithQoS_block_invoke(uint64_t a1)
{
  v2 = (*(*(a1 + 32) + 16))();
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

void OUTLINED_FUNCTION_0_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

id sNormalizeSearchToken_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [MEMORY[0x277CCA900] decimalDigitCharacterSet];
  if ([v2 _cn_containsCharacterInSet:v3])
  {
    v4 = [MEMORY[0x277CCA900] punctuationCharacterSet];
    v5 = [v2 componentsSeparatedByCharactersInSet:v4];
    v6 = [v5 componentsJoinedByString:&stru_282787720];

    v2 = v6;
  }

  return v2;
}

uint64_t sSortByPassingTest_block_invoke(uint64_t a1, void *a2, void *a3, uint64_t (**a4)(id, id))
{
  v6 = a4 + 2;
  v7 = a4[2];
  v8 = a4;
  v9 = a3;
  v10 = v7(v8, a2);
  v11 = (*v6)(v8, v9);

  if ((v10 ^ 1 | v11))
  {
    return (v10 ^ 1) & v11;
  }

  else
  {
    return -1;
  }
}

uint64_t sSortResultsByPreferredDomain_block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = CNALoggingContextSorting();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sSortResultsByPreferredDomain_block_invoke_3_cold_1();
  }

  v8 = sSortByPassingTest_block_invoke(v7, v4, v5, __block_literal_global_3);
  return v8;
}

uint64_t sSortResultsByCategory_block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v6 = [objc_opt_class() category];
  v7 = [objc_opt_class() category];
  v8 = CNALoggingContextSorting();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v12 = 138478595;
    v13 = v4;
    v14 = 2048;
    v15 = v6;
    v16 = 2113;
    v17 = v5;
    v18 = 2048;
    v19 = v7;
    _os_log_debug_impl(&dword_2155FE000, v8, OS_LOG_TYPE_DEBUG, "Comparing type of %{private}@ (%lu) with %{private}@ (%lu)", &v12, 0x2Au);
  }

  if (v6 < v7)
  {
    v9 = -1;
  }

  else
  {
    v9 = v6 > v7;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t sSortResultsByDisplayName_block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = CNALoggingContextSorting();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sSortResultsByDisplayName_block_invoke_5_cold_1();
  }

  v7 = [v4 displayName];
  v8 = [v5 displayName];
  v9 = [v7 localizedCaseInsensitiveCompare:v8];

  return v9;
}

uint64_t sSortResultsByAddress_block_invoke_6(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v6 = [v4 value];
  v7 = [v6 stringForSorting];

  v8 = [v5 value];
  v9 = [v8 stringForSorting];

  v10 = CNALoggingContextSorting();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v14 = 138478595;
    v15 = v4;
    v16 = 2113;
    v17 = v7;
    v18 = 2113;
    v19 = v5;
    v20 = 2113;
    v21 = v9;
    _os_log_debug_impl(&dword_2155FE000, v10, OS_LOG_TYPE_DEBUG, "Comparing address of %{private}@ (%{private}@) with %{private}@ (%{private}@)", &v14, 0x2Au);
  }

  v11 = [v7 localizedCaseInsensitiveCompare:v9];
  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t sSortRecentResultsBySendingAddressMatch_block_invoke_8(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = CNALoggingContextSorting();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sSortRecentResultsBySendingAddressMatch_block_invoke_8_cold_1();
  }

  v8 = sSortByPassingTest_block_invoke(v7, v4, v5, __block_literal_global_15_0);
  return v8;
}

uint64_t sSortRecentResultsByCompletingChosenGroup_block_invoke_10(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = CNALoggingContextSorting();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sSortRecentResultsByCompletingChosenGroup_block_invoke_10_cold_1();
  }

  v8 = sSortByPassingTest_block_invoke(v7, v4, v5, __block_literal_global_20_1);
  return v8;
}

uint64_t sSortRecentResultsByDate_block_invoke_11(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 date];
  v7 = [v5 date];
  v8 = [v6 compare:v7];

  v9 = CNALoggingContextSorting();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sSortRecentResultsByDate_block_invoke_11_cold_1();
  }

  if (v8 == 1)
  {
    v10 = -1;
  }

  else
  {
    v10 = 0;
  }

  if (v8 == -1)
  {
    v11 = 1;
  }

  else
  {
    v11 = v10;
  }

  return v11;
}

uint64_t sSortRecentResultsByDateCount_block_invoke_12(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v6 = [v4 dateCount];
  v7 = [v5 dateCount];
  v8 = CNALoggingContextSorting();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v12 = 138478595;
    v13 = v4;
    v14 = 2048;
    v15 = v6;
    v16 = 2113;
    v17 = v5;
    v18 = 2048;
    v19 = v7;
    _os_log_debug_impl(&dword_2155FE000, v8, OS_LOG_TYPE_DEBUG, "Comparing date count of %{private}@ (%lu) with %{private}@ (%lu)", &v12, 0x2Au);
  }

  if (v6 > v7)
  {
    v9 = -1;
  }

  else
  {
    v9 = v6 < v7;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

void OUTLINED_FUNCTION_1_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x2Au);
}

void OUTLINED_FUNCTION_4(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void sub_21562B33C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id location)
{
  objc_destroyWeak((v32 + 88));
  objc_destroyWeak(&location);
  _Block_object_dispose((v33 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_21562B8E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class initEKDirectorySearchOperation_0()
{
  if (LoadEventKit_loadPredicate_1 != -1)
  {
    initEKDirectorySearchOperation_cold_1_0();
  }

  result = objc_getClass("EKDirectorySearchOperation");
  classEKDirectorySearchOperation_0 = result;
  getEKDirectorySearchOperationClass_0 = EKDirectorySearchOperationFunction_0;
  return result;
}

void __LoadEventKit_block_invoke_1()
{
  LoadEventKit_frameworkLibrary_1 = dlopen("/System/Library/Frameworks/EventKit.framework/EventKit", 1);
  if (!LoadEventKit_frameworkLibrary_1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __LoadEventKit_block_invoke_cold_1();
  }
}

Class initEKEphemeralCacheEventStoreProvider()
{
  if (LoadEventKit_loadPredicate_1 != -1)
  {
    initEKDirectorySearchOperation_cold_1_0();
  }

  result = objc_getClass("EKEphemeralCacheEventStoreProvider");
  classEKEphemeralCacheEventStoreProvider = result;
  getEKEphemeralCacheEventStoreProviderClass = EKEphemeralCacheEventStoreProviderFunction;
  return result;
}

Class initEKEventStore_0()
{
  if (LoadEventKit_loadPredicate_1 != -1)
  {
    initEKDirectorySearchOperation_cold_1_0();
  }

  result = objc_getClass("EKEventStore");
  classEKEventStore_0 = result;
  getEKEventStoreClass_0 = EKEventStoreFunction_0;
  return result;
}

Class initEKDirectorySearchQuery()
{
  if (LoadEventKit_loadPredicate_1 != -1)
  {
    initEKDirectorySearchOperation_cold_1_0();
  }

  result = objc_getClass("EKDirectorySearchQuery");
  classEKDirectorySearchQuery = result;
  getEKDirectorySearchQueryClass = EKDirectorySearchQueryFunction;
  return result;
}

id sNormalizeCaseDiactriticsAndCharacterWidth_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[CNAutocompleteResult localeForHashing];
  v4 = [v2 stringByFoldingWithOptions:385 locale:v3];

  return v4;
}

id sNormalizePhoneNumberFormatting_block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[CNAutocompleteResult localeForHashing];
  [v3 objectForKey:*MEMORY[0x277CBE690]];

  v4 = CFPhoneNumberCreate();
  if (v4)
  {
    v5 = v4;
    String = CFPhoneNumberCreateString();
    v7 = v2;
    if (String)
    {
      v8 = [MEMORY[0x277CCACA8] stringWithString:String];

      CFRelease(String);
      v7 = v8;
    }

    CFRelease(v5);
  }

  else
  {
    v7 = v2;
  }

  return v7;
}

id CNAutocompleteResultAddressStringForHashingTransform_block_invoke_6(uint64_t a1, void *a2)
{
  v2 = (*(sNormalizeCaseDiactriticsAndCharacterWidth + 2))(sNormalizeCaseDiactriticsAndCharacterWidth, a2);
  v3 = (*(sNormalizePhoneNumberFormatting + 2))(sNormalizePhoneNumberFormatting, v2);

  return v3;
}

id CNAutocompleteResultUserInfoDescriptionTransform_block_invoke_7(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 allKeys];
  v4 = [v3 sortedArrayUsingSelector:sel_localizedCaseInsensitiveCompare_];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = CNAutocompleteResultUserInfoDescriptionTransform_block_invoke_8;
  v9[3] = &unk_2781C4E10;
  v10 = v2;
  v5 = v2;
  v6 = [v4 _cn_map:v9];
  v7 = [v6 componentsJoinedByString:{@", "}];

  return v7;
}

id CNAutocompleteResultUserInfoDescriptionTransform_block_invoke_8(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 objectForKeyedSubscript:v4];
  v6 = [v2 stringWithFormat:@"%@:%@", v4, v5];

  return v6;
}

uint64_t sub_2156315B4(uint64_t a1)
{
  v2 = type metadata accessor for ComposeRecipient.Identifier(0);
  v53 = *(v2 - 8);
  v3 = *(v53 + 64);
  v4 = (MEMORY[0x28223BE20])();
  v59 = v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = v52 - v6;
  v8 = type metadata accessor for ComposeRecipient(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v15 = v52 - v14;
  v16 = *(a1 + 16);
  if (!v16)
  {
    return MEMORY[0x277D84F90];
  }

  v52[1] = v2;
  v57 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v17 = a1 + v57;
  v18 = *(v13 + 72);
  v19 = MEMORY[0x277D84F90];
  v20 = MEMORY[0x277D84F98];
  v54 = v7;
  v55 = v8;
  v56 = v18;
  while (1)
  {
    sub_215631B20(v17, v15, type metadata accessor for ComposeRecipient);
    sub_215631B20(&v15[*(v8 + 28)], v7, type metadata accessor for ComposeRecipient.Identifier);
    if (!v20[2])
    {
      break;
    }

    v22 = sub_215631CA0(v7);
    if ((v23 & 1) == 0)
    {
      break;
    }

    v24 = *(v20[7] + 8 * v22);
    v25 = *&v15[*(v8 + 24)];

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      if ((v24 & 0x8000000000000000) != 0)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v19 = sub_2156327F4(v19);
      if ((v24 & 0x8000000000000000) != 0)
      {
LABEL_27:
        __break(1u);
LABEL_28:

        return v19;
      }
    }

    if (v24 >= v19[2])
    {
      goto LABEL_33;
    }

    v26 = v25;
    v27 = v12;
    v28 = v56;
    v29 = v19 + v57 + v24 * v56 + *(v8 + 24);
    sub_215631B88(v26);
    v21 = v28;
    v12 = v27;
    sub_215632794(v7, type metadata accessor for ComposeRecipient.Identifier);
    sub_215632794(v15, type metadata accessor for ComposeRecipient);
LABEL_4:
    v17 += v21;
    if (!--v16)
    {
      goto LABEL_28;
    }
  }

  v58 = v16;
  v30 = v19;
  v31 = v12;
  v32 = v30;
  v33 = v30[2];
  v34 = v59;
  sub_215631B20(v7, v59, type metadata accessor for ComposeRecipient.Identifier);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v60 = v20;
  v37 = sub_215631CA0(v34);
  v38 = v20[2];
  v39 = (v36 & 1) == 0;
  v40 = v38 + v39;
  if (!__OFADD__(v38, v39))
  {
    v41 = v36;
    if (v20[3] < v40)
    {
      sub_21563201C(v40, isUniquelyReferenced_nonNull_native);
      v42 = sub_215631CA0(v59);
      if ((v41 & 1) != (v43 & 1))
      {
        goto LABEL_34;
      }

      v37 = v42;
      v20 = v60;
      if ((v41 & 1) == 0)
      {
        goto LABEL_20;
      }

LABEL_18:
      *(v20[7] + 8 * v37) = v33;
      sub_215632794(v59, type metadata accessor for ComposeRecipient.Identifier);
LABEL_22:
      v12 = v31;
      sub_215631B20(v15, v31, type metadata accessor for ComposeRecipient);
      v19 = v32;
      v48 = swift_isUniquelyReferenced_nonNull_native();
      v7 = v54;
      if ((v48 & 1) == 0)
      {
        v19 = sub_215631D24(0, v32[2] + 1, 1, v32);
      }

      v8 = v55;
      v16 = v58;
      v50 = v19[2];
      v49 = v19[3];
      if (v50 >= v49 >> 1)
      {
        v19 = sub_215631D24(v49 > 1, v50 + 1, 1, v19);
      }

      sub_215632794(v7, type metadata accessor for ComposeRecipient.Identifier);
      sub_215632794(v15, type metadata accessor for ComposeRecipient);
      v19[2] = v50 + 1;
      v21 = v56;
      sub_215632878(v12, v19 + v57 + v50 * v56, type metadata accessor for ComposeRecipient);
      goto LABEL_4;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v20 = v60;
      if (v36)
      {
        goto LABEL_18;
      }
    }

    else
    {
      sub_215632550();
      v20 = v60;
      if (v41)
      {
        goto LABEL_18;
      }
    }

LABEL_20:
    v20[(v37 >> 6) + 8] |= 1 << v37;
    v44 = v59;
    sub_215631B20(v59, v20[6] + *(v53 + 72) * v37, type metadata accessor for ComposeRecipient.Identifier);
    *(v20[7] + 8 * v37) = v33;
    sub_215632794(v44, type metadata accessor for ComposeRecipient.Identifier);
    v45 = v20[2];
    v46 = __OFADD__(v45, 1);
    v47 = v45 + 1;
    if (v46)
    {
      goto LABEL_32;
    }

    v20[2] = v47;
    goto LABEL_22;
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  result = sub_21565714C();
  __break(1u);
  return result;
}

uint64_t sub_215631B20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_215631B88(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_215631EFC(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

unint64_t sub_215631CA0(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for ComposeRecipient.Identifier(0);
  sub_2156328E0(&qword_27CA67E38);
  v5 = sub_215656DEC();

  return sub_2156323B0(a1, v5);
}

size_t sub_215631D24(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA67E40, &unk_21565CCD0);
  v10 = *(type metadata accessor for ComposeRecipient(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for ComposeRecipient(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_215631EFC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA67E28, &unk_21565C4F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_21563201C(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for ComposeRecipient.Identifier(0);
  v43 = *(v6 - 8);
  v44 = v6;
  v7 = *(v43 + 64);
  MEMORY[0x28223BE20]();
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v11 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA67E30, &unk_21565C2E0);
  v45 = a2;
  result = sub_2156570EC();
  v13 = v10;
  v14 = result;
  if (*(v10 + 16))
  {
    v42 = v3;
    v15 = 0;
    v16 = (v10 + 64);
    v17 = 1 << *(v10 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v10 + 64);
    v20 = (v17 + 63) >> 6;
    v21 = result + 64;
    v46 = v10;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v43 + 72);
      v28 = *(v13 + 48) + v27 * v26;
      if (v45)
      {
        sub_215632878(v28, v9, type metadata accessor for ComposeRecipient.Identifier);
      }

      else
      {
        sub_215631B20(v28, v9, type metadata accessor for ComposeRecipient.Identifier);
      }

      v29 = v9;
      v30 = *(*(v46 + 56) + 8 * v26);
      v31 = *(v14 + 40);
      sub_2156328E0(&qword_27CA67E38);
      v32 = v29;
      result = sub_215656DEC();
      v33 = -1 << *(v14 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v21 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v21 + 8 * v35);
          if (v39 != -1)
          {
            v22 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v34) & ~*(v21 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = sub_215632878(v32, *(v14 + 48) + v27 * v22, type metadata accessor for ComposeRecipient.Identifier);
      *(*(v14 + 56) + 8 * v22) = v30;
      v9 = v32;
      ++*(v14 + 16);
      v13 = v46;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v45 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_36;
    }

    v40 = 1 << *(v13 + 32);
    v3 = v42;
    if (v40 >= 64)
    {
      bzero(v16, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v40;
    }

    *(v13 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

unint64_t sub_2156323B0(uint64_t a1, uint64_t a2)
{
  v4 = *(*(type metadata accessor for ComposeRecipient.Identifier(0) - 8) + 64);
  MEMORY[0x28223BE20]();
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v11 = *(v5 + 72);
    do
    {
      sub_215631B20(*(v2 + 48) + v11 * v9, v7, type metadata accessor for ComposeRecipient.Identifier);
      sub_2156328E0(&qword_27CA67E48);
      v12 = sub_215656E1C();
      sub_215632794(v7, type metadata accessor for ComposeRecipient.Identifier);
      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

void *sub_215632550()
{
  v1 = v0;
  v28 = *(type metadata accessor for ComposeRecipient.Identifier(0) - 8);
  v2 = *(v28 + 64);
  MEMORY[0x28223BE20]();
  v27 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA67E30, &unk_21565C2E0);
  v4 = *v0;
  v5 = sub_2156570DC();
  v6 = v5;
  if (*(v4 + 16))
  {
    v25 = v1;
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v26 = v4 + 64;
    v9 = 0;
    v10 = *(v4 + 16);
    v29 = v6;
    *(v6 + 16) = v10;
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_14:
        v19 = v16 | (v9 << 6);
        v20 = v27;
        v21 = *(v28 + 72) * v19;
        sub_215631B20(*(v4 + 48) + v21, v27, type metadata accessor for ComposeRecipient.Identifier);
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = v29;
        result = sub_215632878(v20, *(v29 + 48) + v21, type metadata accessor for ComposeRecipient.Identifier);
        *(*(v23 + 56) + 8 * v19) = v22;
      }

      while (v14);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v15)
      {

        v1 = v25;
        v6 = v29;
        goto LABEL_18;
      }

      v18 = *(v26 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_215632794(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_215632878(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2156328E0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ComposeRecipient.Identifier(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

BOOL sub_215632A04(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_215632A34@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_215632A60@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_215632B4C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_215632B80@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t ComposeRecipient.Source.description.getter()
{
  v1 = *v0;
  if ((*v0 & 1) == 0)
  {
    v2 = MEMORY[0x277D84F90];
    if ((v1 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v2 = sub_2156332BC(0, 1, 1, MEMORY[0x277D84F90]);
  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = sub_2156332BC((v3 > 1), v4 + 1, 1, v2);
  }

  *(v2 + 2) = v4 + 1;
  v5 = &v2[16 * v4];
  *(v5 + 4) = 0x746E656365722ELL;
  *(v5 + 5) = 0xE700000000000000;
  if ((v1 & 2) != 0)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_2156332BC(0, *(v2 + 2) + 1, 1, v2);
    }

    v7 = *(v2 + 2);
    v6 = *(v2 + 3);
    if (v7 >= v6 >> 1)
    {
      v2 = sub_2156332BC((v6 > 1), v7 + 1, 1, v2);
    }

    *(v2 + 2) = v7 + 1;
    v8 = &v2[16 * v7];
    *(v8 + 4) = 0x746361746E6F632ELL;
    *(v8 + 5) = 0xE800000000000000;
  }

LABEL_12:
  if ((v1 & 4) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_2156332BC(0, *(v2 + 2) + 1, 1, v2);
    }

    v10 = *(v2 + 2);
    v9 = *(v2 + 3);
    if (v10 >= v9 >> 1)
    {
      v2 = sub_2156332BC((v9 > 1), v10 + 1, 1, v2);
    }

    *(v2 + 2) = v10 + 1;
    v11 = &v2[16 * v10];
    *(v11 + 4) = 0x747365676775732ELL;
    *(v11 + 5) = 0xEB000000006E6F69;
  }

  if ((v1 & 8) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_2156332BC(0, *(v2 + 2) + 1, 1, v2);
    }

    v14 = *(v2 + 2);
    v13 = *(v2 + 3);
    if (v14 >= v13 >> 1)
    {
      v2 = sub_2156332BC((v13 > 1), v14 + 1, 1, v2);
    }

    *(v2 + 2) = v14 + 1;
    v15 = &v2[16 * v14];
    *(v15 + 4) = 0xD000000000000010;
    *(v15 + 5) = 0x8000000215664CE0;
    if ((v1 & 0x10) == 0)
    {
LABEL_20:
      if ((v1 & 0x20) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_37;
    }
  }

  else if ((v1 & 0x10) == 0)
  {
    goto LABEL_20;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_2156332BC(0, *(v2 + 2) + 1, 1, v2);
  }

  v17 = *(v2 + 2);
  v16 = *(v2 + 3);
  if (v17 >= v16 >> 1)
  {
    v2 = sub_2156332BC((v16 > 1), v17 + 1, 1, v2);
  }

  *(v2 + 2) = v17 + 1;
  v18 = &v2[16 * v17];
  *(v18 + 4) = 0x746369646572702ELL;
  *(v18 + 5) = 0xEB000000006E6F69;
  if ((v1 & 0x20) == 0)
  {
LABEL_21:
    if ((v1 & 0x40) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_42;
  }

LABEL_37:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_2156332BC(0, *(v2 + 2) + 1, 1, v2);
  }

  v20 = *(v2 + 2);
  v19 = *(v2 + 3);
  if (v20 >= v19 >> 1)
  {
    v2 = sub_2156332BC((v19 > 1), v20 + 1, 1, v2);
  }

  *(v2 + 2) = v20 + 1;
  v21 = &v2[16 * v20];
  strcpy(v21 + 32, ".supplemental");
  *(v21 + 23) = -4864;
  if ((v1 & 0x40) == 0)
  {
LABEL_22:
    if ((v1 & 0x80) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_47;
  }

LABEL_42:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_2156332BC(0, *(v2 + 2) + 1, 1, v2);
  }

  v23 = *(v2 + 2);
  v22 = *(v2 + 3);
  if (v23 >= v22 >> 1)
  {
    v2 = sub_2156332BC((v22 > 1), v23 + 1, 1, v2);
  }

  *(v2 + 2) = v23 + 1;
  v24 = &v2[16 * v23];
  *(v24 + 4) = 0x61646E656C61632ELL;
  *(v24 + 5) = 0xEF72657672655372;
  if ((v1 & 0x80) == 0)
  {
LABEL_23:
    if ((v1 & 0x100) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_52;
  }

LABEL_47:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_2156332BC(0, *(v2 + 2) + 1, 1, v2);
  }

  v26 = *(v2 + 2);
  v25 = *(v2 + 3);
  if (v26 >= v25 >> 1)
  {
    v2 = sub_2156332BC((v25 > 1), v26 + 1, 1, v2);
  }

  *(v2 + 2) = v26 + 1;
  v27 = &v2[16 * v26];
  *(v27 + 4) = 0x646567616E616D2ELL;
  *(v27 + 5) = 0xEF4449656C707041;
  if ((v1 & 0x100) == 0)
  {
LABEL_24:
    if ((v1 & 0x200) == 0)
    {
      goto LABEL_25;
    }

LABEL_57:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_2156332BC(0, *(v2 + 2) + 1, 1, v2);
    }

    v32 = *(v2 + 2);
    v31 = *(v2 + 3);
    if (v32 >= v31 >> 1)
    {
      v2 = sub_2156332BC((v31 > 1), v32 + 1, 1, v2);
    }

    *(v2 + 2) = v32 + 1;
    v33 = &v2[16 * v32];
    *(v33 + 4) = 0xD000000000000012;
    *(v33 + 5) = 0x8000000215664CC0;
    goto LABEL_62;
  }

LABEL_52:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_2156332BC(0, *(v2 + 2) + 1, 1, v2);
  }

  v29 = *(v2 + 2);
  v28 = *(v2 + 3);
  if (v29 >= v28 >> 1)
  {
    v2 = sub_2156332BC((v28 > 1), v29 + 1, 1, v2);
  }

  *(v2 + 2) = v29 + 1;
  v30 = &v2[16 * v29];
  *(v30 + 4) = 0x69736E657478652ELL;
  *(v30 + 5) = 0xEA00000000006E6FLL;
  if ((v1 & 0x200) != 0)
  {
    goto LABEL_57;
  }

LABEL_25:
  if (!*(v2 + 2))
  {

    return 23899;
  }

LABEL_62:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA67E50, &unk_21565F460);
  sub_21563320C();
  v34 = sub_215656E0C();
  v36 = v35;

  MEMORY[0x21606D140](v34, v36);

  MEMORY[0x21606D140](23840, 0xE200000000000000);

  return 8283;
}

unint64_t sub_21563320C()
{
  result = qword_27CA68690;
  if (!qword_27CA68690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA67E50, &unk_21565F460);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA68690);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

char *sub_2156332BC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA68790, &qword_21565CB60);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_2156333CC()
{
  result = qword_27CA67E58;
  if (!qword_27CA67E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA67E58);
  }

  return result;
}

unint64_t sub_215633424()
{
  result = qword_27CA67E60;
  if (!qword_27CA67E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA67E60);
  }

  return result;
}

unint64_t sub_21563347C()
{
  result = qword_27CA67E68;
  if (!qword_27CA67E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA67E68);
  }

  return result;
}

unint64_t sub_2156334D4()
{
  result = qword_27CA67E70;
  if (!qword_27CA67E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA67E70);
  }

  return result;
}

uint64_t _s6SourceVwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s6SourceVwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

uint64_t ComposeRecipient.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_215656A9C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ComposeRecipient.name.getter()
{
  v1 = (v0 + *(type metadata accessor for ComposeRecipient(0) + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ComposeRecipient.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ComposeRecipient(0) + 20));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t ComposeRecipient.handles.getter()
{
  v1 = *(v0 + *(type metadata accessor for ComposeRecipient(0) + 24));
}

uint64_t ComposeRecipient.handles.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ComposeRecipient(0) + 24);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t ComposeRecipient.contactIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ComposeRecipient(0) + 28);

  return sub_2156337F4(v3, a1);
}

uint64_t sub_2156337F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ComposeRecipient.Identifier(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_215633878(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ComposeRecipient.contactIdentifier.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ComposeRecipient(0) + 28);

  return sub_2156338F4(a1, v3);
}

uint64_t sub_2156338F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ComposeRecipient.Identifier(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t ComposeRecipient.source.getter@<X0>(void *a1@<X8>)
{
  result = type metadata accessor for ComposeRecipient(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t ComposeRecipient.source.setter(uint64_t *a1)
{
  v2 = *a1;
  result = type metadata accessor for ComposeRecipient(0);
  *(v1 + *(result + 32)) = v2;
  return result;
}

uint64_t ComposeRecipient.init(id:name:handles:contactIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_215656A8C();
  v12 = type metadata accessor for ComposeRecipient(0);
  v13 = (a6 + v12[5]);
  *v13 = a2;
  v13[1] = a3;
  *(a6 + v12[6]) = a4;
  sub_2156337F4(a5, a6 + v12[7]);
  sub_215633B44();
  sub_2156571CC();
  sub_215633B98(a5);
  v14 = sub_215656A9C();
  result = (*(*(v14 - 8) + 8))(a1, v14);
  *(a6 + v12[8]) = v16;
  return result;
}

unint64_t sub_215633B44()
{
  result = qword_27CA67E78;
  if (!qword_27CA67E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA67E78);
  }

  return result;
}

uint64_t sub_215633B98(uint64_t a1)
{
  v2 = type metadata accessor for ComposeRecipient.Identifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ComposeRecipient.init(id:name:handles:contactIdentifier:source:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  v13 = *a6;
  sub_215656A8C();
  v14 = sub_215656A9C();
  (*(*(v14 - 8) + 8))(a1, v14);
  v15 = type metadata accessor for ComposeRecipient(0);
  v16 = (a7 + v15[5]);
  *v16 = a2;
  v16[1] = a3;
  *(a7 + v15[6]) = a4;
  result = sub_215633CB8(a5, a7 + v15[7]);
  *(a7 + v15[8]) = v13;
  return result;
}

uint64_t sub_215633CB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ComposeRecipient.Identifier(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ComposeRecipient.handle.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for ComposeRecipient(0);
  v4 = *(v1 + *(result + 24));
  if (*(v4 + 16))
  {
    v5 = *(v4 + 32);
    v6 = *(v4 + 40);
    v7 = *(v4 + 56);
    v8 = *(v4 + 64);
    v9 = *(v4 + 72);
    v10 = *(v4 + 48);
    *(a1 + 16) = v10;
    sub_215633DC0(v5, v6, v10);
    sub_215633DD8(v7, v8);
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    *(a1 + 16) = 0;
  }

  *a1 = v5;
  *(a1 + 8) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  return result;
}

uint64_t sub_215633DC0(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

uint64_t sub_215633DD8(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0xD)
  {
  }

  return result;
}

void ComposeRecipient.aliases.getter()
{
  v1 = *(v0 + *(type metadata accessor for ComposeRecipient(0) + 24));
  v2 = *(v1 + 16);
  if (v2)
  {

    sub_215634B9C(v1, v1 + 32, 1, (2 * v2) | 1);
  }

  else
  {
  }
}

uint64_t sub_215633E50@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_215656A9C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

void sub_215633EB8(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v47 = a2;
  v5 = type metadata accessor for ComposeRecipient.Identifier(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = (&v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_215656D6C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_215656A8C();
  v14 = sub_2156548A0();
  (*(v10 + 16))(v13, v14, v9);
  v15 = sub_215656F7C();
  v16 = sub_215656D4C();
  if (os_log_type_enabled(v16, v15))
  {
    v17 = swift_slowAlloc();
    v46 = v8;
    v18 = v17;
    v19 = swift_slowAlloc();
    *v18 = 138477827;
    *(v18 + 4) = a1;
    *v19 = a1;
    v20 = a1;
    _os_log_impl(&dword_2155FE000, v16, v15, "Converting result for %{private}@", v18, 0xCu);
    sub_215635240(v19, &qword_27CA68780, &qword_21565CB90);
    MEMORY[0x21606DDB0](v19, -1, -1);
    v8 = v46;
    MEMORY[0x21606DDB0](v18, -1, -1);
  }

  (*(v10 + 8))(v13, v9);
  v21 = [objc_opt_self() sharedDefaults];
  v22 = [v21 shortNameFormatPrefersNicknames];

  if (v22)
  {
    v23 = [a1 nameComponents];
    if (v23)
    {

      v24 = [a1 nameComponents];
      if (!v24)
      {
        goto LABEL_22;
      }

      v25 = v24;
      v26 = [v24 nickname];

      if (v26)
      {
        v27 = sub_215656E5C();
        v29 = v28;

        v30 = HIBYTE(v29) & 0xF;
        if ((v29 & 0x2000000000000000) == 0)
        {
          v30 = v27 & 0xFFFFFFFFFFFFLL;
        }

        if (v30)
        {
          goto LABEL_14;
        }
      }
    }
  }

  v31 = [a1 displayName];
  if (v31)
  {
    v32 = v31;
    v27 = sub_215656E5C();
    v29 = v33;
  }

  else
  {
    v27 = 0;
    v29 = 0xE000000000000000;
  }

LABEL_14:
  v34 = type metadata accessor for ComposeRecipient(0);
  v35 = (a3 + v34[5]);
  *v35 = v27;
  v35[1] = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA67E28, &unk_21565C4F0);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_21565C4E0;
  v37 = [a1 value];
  if (v37)
  {
    v38 = ComposeRecipient.Handle.init(autocompleteValue:availability:)(v37, v47, v36 + 32);
    *(a3 + v34[6]) = v36;
    v39 = [a1 identifier];
    if (v39)
    {
      v40 = v39;
      v41 = sub_215656E5C();
      v43 = v42;

      *v8 = v41;
      v8[1] = v43;
    }

    else
    {
      sub_215656A8C();
    }

    swift_storeEnumTagMultiPayload();
    sub_215633CB8(v8, a3 + v34[7]);
    v44 = [a1 sourceType];
    if ((v44 & 0x8000000000000000) == 0)
    {
      ComposeRecipient.Source.init(rawValue:)(v44, &v48);

      *(a3 + v34[8]) = v48;
      return;
    }

    __break(1u);
  }

  __break(1u);
LABEL_22:
  __break(1u);
}

uint64_t static ComposeRecipient.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ComposeRecipient(0);
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (!v9 && (sub_21565713C() & 1) == 0 || (sub_21563439C(*(a1 + v4[6]), *(a2 + v4[6])) & 1) == 0)
  {
    return 0;
  }

  v10 = v4[7];

  return _s20ContactsAutocomplete16ComposeRecipientV10IdentifierO2eeoiySbAE_AEtFZ_0(a1 + v10, a2 + v10);
}

uint64_t sub_21563439C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    v12 = 0;
    return v12 & 1;
  }

  if (!v2 || a1 == a2)
  {
    v12 = 1;
    return v12 & 1;
  }

  v3 = 0;
  while (1)
  {
    result = *(a1 + v3 + 32);
    v5 = *(a1 + v3 + 56);
    v6 = *(a1 + v3 + 64);
    v17 = result;
    v18 = *(a1 + v3 + 40);
    v19 = *(a1 + v3 + 48);
    v20 = *(a1 + v3 + 72);
    if (!v2)
    {
      break;
    }

    v7 = *(a2 + v3 + 32);
    v8 = *(a2 + v3 + 40);
    v9 = *(a2 + v3 + 56);
    v10 = *(a2 + v3 + 64);
    v15 = v2;
    v11 = *(a2 + v3 + 48);
    v16 = *(a2 + v3 + 72);
    sub_215633DC0(result, *(a1 + v3 + 40), *(a1 + v3 + 48));
    sub_215633DD8(v5, v6);

    sub_215633DC0(v7, v8, v11);
    sub_215633DD8(v9, v10);
    sub_2156352A0();

    v12 = sub_215656E1C();
    sub_2156352F4(v7, v8, v11);
    sub_21563530C(v9, v10);

    sub_2156352F4(v17, v18, v19);
    sub_21563530C(v5, v6);

    if (v12)
    {
      v2 = v15 - 1;
      v3 += 48;
      if (v15 != 1)
      {
        continue;
      }
    }

    return v12 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_215634548(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = a3[5];
  v7 = a1 + v6;
  v8 = *(a1 + v6);
  v9 = (a2 + v6);
  v10 = v8 == *v9 && *(v7 + 8) == v9[1];
  if (!v10 && (sub_21565713C() & 1) == 0 || (sub_21563439C(*(a1 + a3[6]), *(a2 + a3[6])) & 1) == 0)
  {
    return 0;
  }

  v11 = a3[7];

  return _s20ContactsAutocomplete16ComposeRecipientV10IdentifierO2eeoiySbAE_AEtFZ_0(a1 + v11, a2 + v11);
}

uint64_t ComposeRecipient.Identifier.hash(into:)()
{
  v1 = sub_215656A9C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ComposeRecipient.Identifier(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (&v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2156337F4(v0, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v2 + 32))(v5, v9, v1);
    MEMORY[0x21606D450](1);
    sub_215635018(&qword_27CA67E80, MEMORY[0x277CC95F0]);
    sub_215656DFC();
    return (*(v2 + 8))(v5, v1);
  }

  else
  {
    v11 = *v9;
    v12 = v9[1];
    MEMORY[0x21606D450](0);
    sub_215656E8C();
  }
}

uint64_t ComposeRecipient.Identifier.hashValue.getter()
{
  v1 = v0;
  v2 = sub_215656A9C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ComposeRecipient.Identifier(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (&v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21565719C();
  sub_2156337F4(v1, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v6, v10, v2);
    MEMORY[0x21606D450](1);
    sub_215635018(&qword_27CA67E80, MEMORY[0x277CC95F0]);
    sub_215656DFC();
    (*(v3 + 8))(v6, v2);
  }

  else
  {
    v11 = *v10;
    v12 = v10[1];
    MEMORY[0x21606D450](0);
    sub_215656E8C();
  }

  return sub_2156571BC();
}

uint64_t sub_2156349AC(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = sub_215656A9C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v13 = (&v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21565719C();
  sub_2156337F4(v4, v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v6 + 32))(v10, v13, v5);
    MEMORY[0x21606D450](1);
    sub_215635018(&qword_27CA67E80, MEMORY[0x277CC95F0]);
    sub_215656DFC();
    (*(v6 + 8))(v10, v5);
  }

  else
  {
    v14 = *v13;
    v15 = v13[1];
    MEMORY[0x21606D450](0);
    sub_215656E8C();
  }

  return sub_2156571BC();
}

void sub_215634B9C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA67E28, &unk_21565C4F0);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 48);
      if (v4 != a3)
      {
LABEL_5:
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

uint64_t _s20ContactsAutocomplete16ComposeRecipientV10IdentifierO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_215656A9C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ComposeRecipient.Identifier(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = (&v31 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA67E90, &qword_21565C628);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v31 - v19;
  v21 = (&v31 + *(v18 + 56) - v19);
  sub_2156337F4(a1, &v31 - v19);
  sub_2156337F4(a2, v21);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_2156337F4(v20, v15);
    v25 = *v15;
    v24 = v15[1];
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      if (v25 == *v21 && v24 == v21[1])
      {
        v29 = v21[1];
      }

      else
      {
        v27 = v21[1];
        v28 = sub_21565713C();

        if ((v28 & 1) == 0)
        {
          sub_215633B98(v20);
          goto LABEL_8;
        }
      }

      sub_215633B98(v20);
      v22 = 1;
      return v22 & 1;
    }

LABEL_7:
    sub_215635240(v20, &qword_27CA67E90, &qword_21565C628);
LABEL_8:
    v22 = 0;
    return v22 & 1;
  }

  sub_2156337F4(v20, v13);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v5 + 8))(v13, v4);
    goto LABEL_7;
  }

  (*(v5 + 32))(v8, v21, v4);
  v22 = sub_215656A7C();
  v23 = *(v5 + 8);
  v23(v8, v4);
  v23(v13, v4);
  sub_215633B98(v20);
  return v22 & 1;
}

uint64_t sub_215635018(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_215635088()
{
  sub_215656A9C();
  if (v0 <= 0x3F)
  {
    sub_215635134();
    if (v1 <= 0x3F)
    {
      type metadata accessor for ComposeRecipient.Identifier(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_215635134()
{
  if (!qword_27CA67E88)
  {
    v0 = sub_215656EFC();
    if (!v1)
    {
      atomic_store(v0, &qword_27CA67E88);
    }
  }
}

uint64_t sub_2156351D4()
{
  result = sub_215656A9C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_215635240(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_2156352A0()
{
  result = qword_27CA67E98;
  if (!qword_27CA67E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA67E98);
  }

  return result;
}

uint64_t sub_2156352F4(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

uint64_t sub_21563530C(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0xD)
  {
  }

  return result;
}

uint64_t HandleAvailability.Status.debugDescription.getter()
{
  v1 = 0x8FB8EF949BE2;
  if (*v0 != 1)
  {
    v1 = 9871074;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 2728370160;
  }
}

uint64_t sub_2156353F8()
{
  v1 = 0x8FB8EF949BE2;
  if (*v0 != 1)
  {
    v1 = 9871074;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 2728370160;
  }
}

uint64_t HandleAvailability.Service.debugDescription.getter()
{
  v1 = 0x6567617373654D69;
  *v0;
  if (*v0)
  {
    v1 = 5456722;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return 0x656D695465636146;
  }
}

uint64_t _s20ContactsAutocomplete18HandleAvailabilityV6StatusO9hashValueSivg_0()
{
  v1 = *v0;
  sub_21565719C();
  MEMORY[0x21606D450](v1);
  return sub_2156571BC();
}

uint64_t sub_215635508()
{
  v1 = *v0;
  sub_21565719C();
  MEMORY[0x21606D450](v1);
  return sub_2156571BC();
}

uint64_t sub_21563554C()
{
  v1 = 0x6567617373654D69;
  *v0;
  if (*v0)
  {
    v1 = 5456722;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return 0x656D695465636146;
  }
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_215635650(uint64_t a1, uint64_t *a2)
{
  v3 = sub_215656D6C();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_215656D5C();
}

uint64_t sub_2156356D0(uint64_t a1, _BYTE *a2)
{
  *(v2 + 16) = a1;
  v4 = *(*(sub_215656DBC() - 8) + 64) + 15;
  *(v2 + 24) = swift_task_alloc();
  *(v2 + 65) = *a2;

  return MEMORY[0x2822009F8](sub_21563576C, 0, 0);
}

id sub_21563576C()
{
  if (qword_27CA68D70 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = sub_215656D6C();
  *(v0 + 32) = __swift_project_value_buffer(v2, qword_27CA6DFD0);
  v3 = sub_215656F6C();

  v4 = sub_215656D4C();
  v5 = os_log_type_enabled(v4, v3);
  v6 = *(v0 + 16);
  if (v5)
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = *(v6 + 16);

    _os_log_impl(&dword_2155FE000, v4, v3, "Looking up last known status for %ld handles (currentIDStatus).", v7, 0xCu);
    MEMORY[0x21606DDB0](v7, -1, -1);
  }

  else
  {
    v8 = *(v0 + 16);
  }

  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v10 = result;
    v11 = *(v0 + 65);
    v12 = *(v0 + 24);
    sub_215656DAC();
    type metadata accessor for IDSLookup();
    swift_allocObject();
    v13 = sub_21563BEF0(v10, 0xD00000000000001FLL, 0x8000000215664D00, v12);
    *(v0 + 40) = v13;

    *(v0 + 64) = v11;
    v14 = *(*v13 + 112);
    v18 = (v14 + *v14);
    v15 = v14[1];
    v16 = swift_task_alloc();
    *(v0 + 48) = v16;
    *v16 = v0;
    v16[1] = sub_215635A10;
    v17 = *(v0 + 16);

    return v18(v17, v0 + 64);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_215635A10(uint64_t a1)
{
  v2 = *(*v1 + 48);
  v4 = *v1;
  *(*v1 + 56) = a1;

  return MEMORY[0x2822009F8](sub_215635B10, 0, 0);
}

uint64_t sub_215635B10()
{
  v18 = v0;
  v1 = v0[7];
  v2 = v0[4];
  v3 = sub_215656F6C();

  v4 = sub_215656D4C();

  if (os_log_type_enabled(v4, v3))
  {
    v5 = v0[7];
    v6 = v0[5];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136380675;
    v9 = sub_215656DDC();
    v11 = sub_21563A06C(v9, v10, &v17);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_2155FE000, v4, v3, "Status from helper: %{private}s.", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x21606DDB0](v8, -1, -1);
    MEMORY[0x21606DDB0](v7, -1, -1);
  }

  else
  {
    v12 = v0[5];
  }

  v13 = v0[3];

  v14 = v0[1];
  v15 = v0[7];

  return v14(v15);
}

void *sub_215635C98(void *a1, const char *a2, unint64_t a3, uint64_t a4)
{
  swift_allocObject();
  v8 = sub_21563BEF0(a1, a2, a3, a4);

  return v8;
}

uint64_t sub_215635D34(uint64_t a1, uint64_t a2)
{
  v6 = *(**v2 + 88);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_21563DA58;

  return v10(a1, a2);
}

uint64_t sub_215635E68(uint64_t a1, _BYTE *a2)
{
  *(v2 + 16) = a1;
  v4 = *(*(sub_215656DBC() - 8) + 64) + 15;
  *(v2 + 24) = swift_task_alloc();
  *(v2 + 57) = *a2;

  return MEMORY[0x2822009F8](sub_215635F04, 0, 0);
}

id sub_215635F04()
{
  if (qword_27CA68D70 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = sub_215656D6C();
  __swift_project_value_buffer(v2, qword_27CA6DFD0);
  v3 = sub_215656F6C();

  v4 = sub_215656D4C();
  v5 = os_log_type_enabled(v4, v3);
  v6 = *(v0 + 16);
  if (v5)
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = *(v6 + 16);

    _os_log_impl(&dword_2155FE000, v4, v3, "Looking up uncached status for %ld handles (refreshIDStatus).", v7, 0xCu);
    MEMORY[0x21606DDB0](v7, -1, -1);
  }

  else
  {
    v8 = *(v0 + 16);
  }

  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v10 = result;
    v11 = *(v0 + 57);
    v12 = *(v0 + 24);
    sub_215656DAC();
    type metadata accessor for IDSLookup();
    swift_allocObject();
    v13 = sub_21563BEF0(v10, 0xD00000000000001FLL, 0x8000000215664D00, v12);
    *(v0 + 32) = v13;

    *(v0 + 56) = v11;
    v14 = *(*v13 + 120);
    v18 = (v14 + *v14);
    v15 = v14[1];
    v16 = swift_task_alloc();
    *(v0 + 40) = v16;
    *v16 = v0;
    v16[1] = sub_2156361A4;
    v17 = *(v0 + 16);

    return v18(v17, v0 + 56);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2156361A4(uint64_t a1)
{
  v2 = *(*v1 + 40);
  v4 = *v1;
  *(*v1 + 48) = a1;

  return MEMORY[0x2822009F8](sub_2156362A4, 0, 0);
}

uint64_t sub_2156362A4()
{
  v2 = v0[3];
  v1 = v0[4];

  v3 = v0[1];
  v4 = v0[6];

  return v3(v4);
}

uint64_t sub_215636318(uint64_t a1, uint64_t a2)
{
  v6 = *(**v2 + 88);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_21563DA58;

  return v10(a1, a2);
}

uint64_t sub_21563644C(__int128 *a1)
{
  v2 = swift_allocObject();
  v3 = MEMORY[0x277D84F90];
  *(v2 + 56) = sub_21563C188(MEMORY[0x277D84F90]);
  *(v2 + 64) = sub_21563C2A0(v3);
  sub_21563C3A4(a1, v2 + 16);
  return v2;
}

uint64_t sub_2156364B8(uint64_t a1, _BYTE *a2)
{
  *(v3 + 40) = a1;
  *(v3 + 48) = v2;
  *(v3 + 108) = *a2;
  return MEMORY[0x2822009F8](sub_2156364E0, 0, 0);
}

uint64_t sub_2156364E0()
{
  v67 = v0;
  v62 = sub_21563C3BC(MEMORY[0x277D84F90]);
  if (qword_27CA68D78 != -1)
  {
LABEL_40:
    swift_once();
  }

  v1 = sub_215656D6C();
  *(v0 + 56) = __swift_project_value_buffer(v1, qword_27CA6DFE8);
  v2 = sub_215656D4C();
  v3 = sub_215656F7C();
  v61 = v0;
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 108);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v66 = v6;
    *v5 = 136315138;
    *(v61 + 107) = v4;
    v7 = sub_215656E7C();
    v9 = sub_21563A06C(v7, v8, &v66);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_2155FE000, v2, v3, "Looking up status of handles for service .%s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    MEMORY[0x21606DDB0](v6, -1, -1);
    v0 = v61;
    MEMORY[0x21606DDB0](v5, -1, -1);
  }

  v10 = *(v0 + 40);
  v11 = *(v10 + 16);
  if (v11)
  {
    v63 = *(**(v0 + 48) + 104);
    v12 = MEMORY[0x277D84F90];
    v13 = (v10 + 40);
    while (1)
    {
      v64 = v12;
      v15 = *(v0 + 48);
      v16 = *(v13 - 1);
      v17 = *v13;
      v18 = swift_bridgeObjectRetain_n();
      v19 = v63(v18);
      if (!*(v19 + 16))
      {

LABEL_18:

        v39 = sub_215656D4C();
        v40 = sub_215656F7C();

        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          v42 = swift_slowAlloc();
          v66 = v42;
          *v41 = 136380675;
          *(v41 + 4) = sub_21563A06C(v16, v17, &v66);
          _os_log_impl(&dword_2155FE000, v39, v40, " - %{private}s: cache miss", v41, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v42);
          MEMORY[0x21606DDB0](v42, -1, -1);
          MEMORY[0x21606DDB0](v41, -1, -1);
        }

        v12 = v64;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_2156332BC(0, *(v64 + 2) + 1, 1, v64);
        }

        v44 = *(v12 + 2);
        v43 = *(v12 + 3);
        if (v44 >= v43 >> 1)
        {
          v12 = sub_2156332BC((v43 > 1), v44 + 1, 1, v12);
        }

        *(v12 + 2) = v44 + 1;
        v45 = &v12[16 * v44];
        *(v45 + 4) = v16;
        *(v45 + 5) = v17;
        goto LABEL_8;
      }

      v20 = sub_21563A68C(v16, v17, *(v0 + 108));
      v22 = v21;

      if ((v22 & 1) == 0)
      {
        goto LABEL_18;
      }

      v23 = *(*(v19 + 56) + v20);

      v24 = sub_215656D4C();
      v25 = sub_215656F7C();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v66 = v60;
        *v26 = 136380931;
        *(v26 + 4) = sub_21563A06C(v16, v17, &v66);
        *(v26 + 12) = 2080;
        *(v61 + 106) = v23;
        v27 = sub_215656E7C();
        v29 = sub_21563A06C(v27, v28, &v66);

        *(v26 + 14) = v29;
        _os_log_impl(&dword_2155FE000, v24, v25, " - %{private}s: .%s", v26, 0x16u);
        swift_arrayDestroy();
        v0 = v61;
        MEMORY[0x21606DDB0](v60, -1, -1);
        MEMORY[0x21606DDB0](v26, -1, -1);
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v66 = v62;
      v31 = sub_21563A614(v16, v17);
      v33 = *(v62 + 16);
      v34 = (v32 & 1) == 0;
      v35 = __OFADD__(v33, v34);
      v36 = v33 + v34;
      if (v35)
      {
        __break(1u);
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      v37 = v32;
      if (*(v62 + 24) < v36)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_26;
      }

      v50 = v23;
      v51 = v31;
      sub_21563B828();
      v31 = v51;
      v23 = v50;
      if ((v37 & 1) == 0)
      {
LABEL_27:
        v46 = v66;
        v66[(v31 >> 6) + 8] |= 1 << v31;
        v47 = (v46[6] + 16 * v31);
        *v47 = v16;
        v47[1] = v17;
        *(v46[7] + v31) = v23;
        v48 = v46[2];
        v35 = __OFADD__(v48, 1);
        v49 = v48 + 1;
        if (v35)
        {
          goto LABEL_39;
        }

        v62 = v46;
        v46[2] = v49;
        goto LABEL_7;
      }

LABEL_6:
      v14 = v31;

      v62 = v66;
      *(v66[7] + v14) = v23;
LABEL_7:
      v12 = v64;
LABEL_8:
      v13 += 2;
      if (!--v11)
      {
        goto LABEL_32;
      }
    }

    sub_21563A998(v36, isUniquelyReferenced_nonNull_native);
    v31 = sub_21563A614(v16, v17);
    if ((v37 & 1) != (v38 & 1))
    {

      return sub_21565714C();
    }

LABEL_26:
    if ((v37 & 1) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_6;
  }

  v12 = MEMORY[0x277D84F90];
LABEL_32:
  *(v0 + 72) = v12;
  *(v0 + 80) = v62;
  *(v0 + 64) = v62;
  v52 = *(v0 + 108);
  v53 = *(v0 + 48);
  v54 = v53[5];
  v55 = v53[6];
  __swift_project_boxed_opaque_existential_1(v53 + 2, v54);
  *(v0 + 104) = v52;
  v56 = *(v55 + 8);
  v65 = (v56 + *v56);
  v57 = v56[1];
  v58 = swift_task_alloc();
  *(v0 + 88) = v58;
  *v58 = v0;
  v58[1] = sub_215636C10;

  return v65(v12, v0 + 104, v54, v55);
}

uint64_t sub_215636C10(uint64_t a1)
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 96) = a1;

  return MEMORY[0x2822009F8](sub_215636D30, 0, 0);
}

void sub_215636D30()
{
  v70 = v0;
  v1 = 0;
  v2 = v0[12];
  v5 = *(v2 + 64);
  v4 = v2 + 64;
  v3 = v5;
  v64 = v0[12];
  v6 = -1;
  v7 = -1 << *(v64 + 32);
  v66 = v0[6];
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & v3;
  v9 = (63 - v7) >> 6;
  v10 = v0[10];
  v11 = v0[8];
  v12 = v4;
  v62 = v9;
  v63 = v4;
  if ((v6 & v3) != 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  while (1)
  {
    v13 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      break;
    }

    if (v13 >= v9)
    {
      v60 = *(v68 + 96);

      v61 = *(v68 + 8);

      v61(v10);
      return;
    }

    v8 = *(v12 + 8 * v13);
    ++v1;
    if (v8)
    {
      v65 = v11;
      while (1)
      {
        v14 = __clz(__rbit64(v8)) | (v13 << 6);
        v15 = (*(v64 + 48) + 16 * v14);
        v16 = *v15;
        v17 = v15[1];
        v18 = *(*(v64 + 56) + v14);
        v19 = *(v68 + 108);
        swift_beginAccess();
        swift_bridgeObjectRetain_n();
        v20 = *(v66 + 56);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v69 = *(v66 + 56);
        v22 = v69;
        *(v66 + 56) = 0x8000000000000000;
        v67 = v16;
        v23 = sub_21563A68C(v16, v17, v19);
        v25 = v22[2];
        v26 = (v24 & 1) == 0;
        v27 = __OFADD__(v25, v26);
        v28 = v25 + v26;
        if (v27)
        {
          goto LABEL_42;
        }

        v29 = v24;
        if (v22[3] >= v28)
        {
          v11 = v65;
          v32 = v18;
          if (isUniquelyReferenced_nonNull_native)
          {
            if (v24)
            {
              goto LABEL_18;
            }
          }

          else
          {
            v33 = v23;
            sub_21563B990();
            v23 = v33;
            v22 = v69;
            if (v29)
            {
              goto LABEL_18;
            }
          }
        }

        else
        {
          v30 = *(v68 + 108);
          sub_21563AC38(v28, isUniquelyReferenced_nonNull_native);
          v22 = v69;
          v23 = sub_21563A68C(v67, v17, v30);
          v11 = v65;
          if ((v29 & 1) != (v31 & 1))
          {
            goto LABEL_38;
          }

          v32 = v18;
          v12 = v63;
          if (v29)
          {
LABEL_18:
            *(v22[7] + v23) = v32;
            goto LABEL_22;
          }
        }

        v34 = *(v68 + 108);
        v22[(v23 >> 6) + 8] |= 1 << v23;
        v35 = v22[6] + 24 * v23;
        *v35 = v67;
        *(v35 + 8) = v17;
        *(v35 + 16) = v34;
        *(v22[7] + v23) = v32;
        v36 = v22[2];
        v27 = __OFADD__(v36, 1);
        v37 = v36 + 1;
        if (v27)
        {
          goto LABEL_44;
        }

        v22[2] = v37;

LABEL_22:
        *(v66 + 56) = v22;
        swift_endAccess();

        v38 = swift_isUniquelyReferenced_nonNull_native();
        v69 = v11;
        v39 = sub_21563A614(v67, v17);
        v41 = v11[2];
        v42 = (v40 & 1) == 0;
        v27 = __OFADD__(v41, v42);
        v43 = v41 + v42;
        if (v27)
        {
          goto LABEL_43;
        }

        v44 = v40;
        if (v11[3] < v43)
        {
          sub_21563A998(v43, v38);
          v11 = v69;
          v39 = sub_21563A614(v67, v17);
          if ((v44 & 1) != (v45 & 1))
          {
LABEL_38:

            sub_21565714C();
            return;
          }

LABEL_27:
          if (v44)
          {
            goto LABEL_28;
          }

          goto LABEL_30;
        }

        if (v38)
        {
          goto LABEL_27;
        }

        v46 = v39;
        sub_21563B828();
        v39 = v46;
        v11 = v69;
        if (v44)
        {
LABEL_28:
          *(v11[7] + v39) = v32;
          goto LABEL_32;
        }

LABEL_30:
        v11[(v39 >> 6) + 8] |= 1 << v39;
        v47 = (v11[6] + 16 * v39);
        *v47 = v67;
        v47[1] = v17;
        *(v11[7] + v39) = v32;
        v48 = v11[2];
        v27 = __OFADD__(v48, 1);
        v49 = v48 + 1;
        if (v27)
        {
          goto LABEL_45;
        }

        v11[2] = v49;

LABEL_32:
        v8 &= v8 - 1;
        v50 = *(v68 + 56);

        v51 = sub_215656D4C();
        v52 = sub_215656F7C();

        if (os_log_type_enabled(v51, v52))
        {
          v53 = swift_slowAlloc();
          v54 = swift_slowAlloc();
          v69 = v54;
          *v53 = 136315395;
          *(v68 + 105) = v32;
          v55 = sub_215656E7C();
          v57 = v11;
          v58 = sub_21563A06C(v55, v56, &v69);

          *(v53 + 4) = v58;
          v11 = v57;
          *(v53 + 12) = 2081;
          v59 = sub_21563A06C(v67, v17, &v69);

          *(v53 + 14) = v59;
          _os_log_impl(&dword_2155FE000, v51, v52, "Caching status .%s for %{private}s", v53, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x21606DDB0](v54, -1, -1);
          v12 = v63;
          MEMORY[0x21606DDB0](v53, -1, -1);

          v1 = v13;
          v10 = v57;
          v9 = v62;
          if (!v8)
          {
            goto LABEL_7;
          }
        }

        else
        {

          v1 = v13;
          v10 = v11;
          v9 = v62;
          if (!v8)
          {
            goto LABEL_7;
          }
        }

LABEL_6:
        v65 = v11;
        v13 = v1;
      }
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
}

uint64_t sub_2156372A0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_21565719C();
  sub_215656E8C();
  MEMORY[0x21606D450](v3);
  return sub_2156571BC();
}

uint64_t sub_215637304()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_215656E8C();
  return MEMORY[0x21606D450](v3);
}

uint64_t sub_21563733C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_21565719C();
  sub_215656E8C();
  MEMORY[0x21606D450](v3);
  return sub_2156571BC();
}

BOOL sub_21563739C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return v2 == v3;
  }

  v5 = sub_21565713C();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

uint64_t sub_2156373FC()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v1 = v0[7];

  v2 = v0[8];

  return MEMORY[0x2821FE8D8](v0, 72, 7);
}

uint64_t sub_215637444(uint64_t a1, uint64_t a2)
{
  v6 = *(**v2 + 160);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_21563DA58;

  return v10(a1, a2);
}

uint64_t sub_215637570@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 96))();
  *a2 = result;
  return result;
}

uint64_t sub_2156375BC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 56);
  *(v3 + 56) = v2;
}

uint64_t sub_21563761C()
{
  swift_beginAccess();
  v1 = *(v0 + 56);
}

uint64_t sub_215637654(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 56);
  *(v1 + 56) = a1;
}

uint64_t sub_21563769C(__int128 *a1)
{
  v2 = swift_allocObject();
  *(v2 + 56) = MEMORY[0x277D84F90];
  sub_21563C3A4(a1, v2 + 16);
  return v2;
}

uint64_t sub_2156376EC(uint64_t a1, _BYTE *a2)
{
  *(v3 + 40) = a1;
  *(v3 + 48) = v2;
  *(v3 + 73) = *a2;
  return MEMORY[0x2822009F8](sub_215637714, 0, 0);
}

uint64_t sub_215637714()
{
  v1 = *(v0 + 73);
  v2 = *(v0 + 48);
  v3 = v2[5];
  v4 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v3);
  *(v0 + 72) = v1;
  v5 = *(v4 + 8);
  v10 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v0 + 56) = v7;
  *v7 = v0;
  v7[1] = sub_21563785C;
  v8 = *(v0 + 40);

  return v10(v8, v0 + 72, v3, v4);
}

uint64_t sub_21563785C(uint64_t a1)
{
  v2 = *(*v1 + 56);
  v4 = *v1;
  *(*v1 + 64) = a1;

  return MEMORY[0x2822009F8](sub_21563795C, 0, 0);
}

uint64_t sub_21563795C()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  swift_beginAccess();
  v4 = *(v3 + 56);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + 56) = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_215639F4C(0, *(v4 + 2) + 1, 1, v4);
    *(v3 + 56) = v4;
  }

  v7 = *(v4 + 2);
  v6 = *(v4 + 3);
  if (v7 >= v6 >> 1)
  {
    v4 = sub_215639F4C((v6 > 1), v7 + 1, 1, v4);
  }

  v8 = *(v0 + 64);
  v9 = *(v0 + 73);
  v10 = *(v0 + 40);
  *(v4 + 2) = v7 + 1;
  v11 = &v4[24 * v7];
  *(v11 + 4) = v10;
  v11[40] = v9;
  *(v11 + 6) = v8;
  *(v3 + 56) = v4;
  swift_endAccess();
  v12 = *(v0 + 8);
  v13 = *(v0 + 64);

  return v12(v13);
}

uint64_t sub_215637A84()
{
  swift_beginAccess();
  v1 = *(v0 + 56);
  *(v0 + 56) = MEMORY[0x277D84F90];
}

uint64_t static HandleAvailability.LookupSpy.StatusCallDescription.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  if ((sub_215637B48(*a1, *a2) & 1) == 0 || v2 != v4)
  {
    return 0;
  }

  return sub_215637BD8(v3, v5);
}

uint64_t sub_215637B48(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_21565713C() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_215637BD8(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v21 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    v16 = *(*(v3 + 56) + v12);
    v17 = v14 == 0;

    if (v14)
    {
      v18 = sub_21563A614(v15, v14);
      v20 = v19;

      if ((v20 & 1) != 0 && v16 == *(*(a2 + 56) + v18))
      {
        continue;
      }
    }

    return v17;
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v21 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_215637D30(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  if ((sub_215637B48(*a1, *a2) & 1) == 0 || v2 != v4)
  {
    return 0;
  }

  return sub_215637BD8(v3, v5);
}

uint64_t HandleAvailability.LookupSpy.deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  v1 = *(v0 + 56);

  return v0;
}

uint64_t HandleAvailability.LookupSpy.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  v1 = *(v0 + 56);

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

uint64_t sub_215637E18(uint64_t a1, uint64_t a2)
{
  v6 = *(**v2 + 128);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_21563DA58;

  return v10(a1, a2);
}

unint64_t sub_215637F64()
{
  v1 = *(v0 + 16);
  v2 = sub_21563C3BC(MEMORY[0x277D84F90]);
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = (*(v0 + 16) + 40);
    while (1)
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      result = sub_21563A614(v6, v5);
      v10 = v2[2];
      v11 = (v9 & 1) == 0;
      v12 = __OFADD__(v10, v11);
      v13 = v10 + v11;
      if (v12)
      {
        __break(1u);
LABEL_22:
        __break(1u);
        return result;
      }

      v14 = v9;
      if (v2[3] < v13)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_10;
      }

      v19 = result;
      sub_21563B828();
      result = v19;
      if (v14)
      {
LABEL_3:
        *(v2[7] + result) = 2;

        goto LABEL_4;
      }

LABEL_11:
      v2[(result >> 6) + 8] |= 1 << result;
      v16 = (v2[6] + 16 * result);
      *v16 = v6;
      v16[1] = v5;
      *(v2[7] + result) = 2;
      v17 = v2[2];
      v12 = __OFADD__(v17, 1);
      v18 = v17 + 1;
      if (v12)
      {
        goto LABEL_22;
      }

      v2[2] = v18;
LABEL_4:
      v4 += 2;
      if (!--v3)
      {
        goto LABEL_15;
      }
    }

    sub_21563A998(v13, isUniquelyReferenced_nonNull_native);
    result = sub_21563A614(v6, v5);
    if ((v14 & 1) != (v15 & 1))
    {

      return sub_21565714C();
    }

LABEL_10:
    if (v14)
    {
      goto LABEL_3;
    }

    goto LABEL_11;
  }

LABEL_15:
  v20 = *(v0 + 8);

  return v20(v2);
}

uint64_t sub_215638168(uint64_t a1, uint64_t a2)
{
  v6 = *(**v2 + 80);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_215638294;

  return v10(a1, a2);
}

uint64_t sub_215638294(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_215638390(char *a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4)
{
  v5 = v4;
  v8 = *a1;
  v9 = *a4;
  swift_beginAccess();
  v10 = *(v4 + 16);
  if (*(v10 + 16))
  {

    v11 = sub_21563A614(a2, a3);
    if (v12)
    {
      v13 = *(*(v10 + 56) + 8 * v11);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_21563B704(v8, v9, isUniquelyReferenced_nonNull_native);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA67EA0, qword_21565C688);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21565C4E0;
  *(inited + 32) = v9;
  *(inited + 33) = v8;
  v17 = sub_21563C548(inited);
  swift_setDeallocating();
  swift_beginAccess();

  v18 = *(v5 + 16);
  v19 = swift_isUniquelyReferenced_nonNull_native();
  v20 = *(v5 + 16);
  *(v5 + 16) = 0x8000000000000000;
  sub_21563B588(v17, a2, a3, v19);

  *(v5 + 16) = v20;
  return swift_endAccess();
}

uint64_t sub_215638504(uint64_t a1, _BYTE *a2)
{
  *(v3 + 40) = a1;
  *(v3 + 48) = v2;
  *(v3 + 56) = *a2;
  return MEMORY[0x2822009F8](sub_21563852C, 0, 0);
}

unint64_t sub_21563852C()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = sub_21563C3BC(MEMORY[0x277D84F90]);
  v4 = *(v1 + 16);
  swift_beginAccess();
  v31 = v0;
  if (v4)
  {
    v5 = (*(v0 + 40) + 40);
    v6 = v2;
    while (1)
    {
      v8 = *(v5 - 1);
      v7 = *v5;
      v9 = *(v6 + 16);
      v10 = *(v9 + 16);

      if (v10)
      {

        v11 = sub_21563A614(v8, v7);
        if (v12)
        {
          v13 = *(*(v9 + 56) + 8 * v11);

          if (*(v13 + 16) && (v14 = sub_21563A720(*(v31 + 56)), (v15 & 1) != 0))
          {
            v16 = *(*(v13 + 56) + v14);
          }

          else
          {
            v16 = 1;
          }
        }

        else
        {
          v16 = 1;
        }
      }

      else
      {
        v16 = 1;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v32 = v3;
      result = sub_21563A614(v8, v7);
      v20 = v3[2];
      v21 = (v19 & 1) == 0;
      v22 = __OFADD__(v20, v21);
      v23 = v20 + v21;
      if (v22)
      {
        __break(1u);
LABEL_31:
        __break(1u);
        return result;
      }

      v24 = v19;
      if (v3[3] < v23)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_19;
      }

      v29 = result;
      sub_21563B828();
      result = v29;
      v3 = v32;
      if (v24)
      {
LABEL_3:
        *(v3[7] + result) = v16;

        goto LABEL_4;
      }

LABEL_20:
      v3[(result >> 6) + 8] |= 1 << result;
      v26 = (v3[6] + 16 * result);
      *v26 = v8;
      v26[1] = v7;
      *(v3[7] + result) = v16;
      v27 = v3[2];
      v22 = __OFADD__(v27, 1);
      v28 = v27 + 1;
      if (v22)
      {
        goto LABEL_31;
      }

      v3[2] = v28;
LABEL_4:
      v5 += 2;
      if (!--v4)
      {
        goto LABEL_24;
      }
    }

    sub_21563A998(v23, isUniquelyReferenced_nonNull_native);
    result = sub_21563A614(v8, v7);
    if ((v24 & 1) != (v25 & 1))
    {

      return sub_21565714C();
    }

LABEL_19:
    if (v24)
    {
      goto LABEL_3;
    }

    goto LABEL_20;
  }

LABEL_24:
  v30 = *(v31 + 8);

  return v30(v3);
}

uint64_t HandleAvailability.LookupTestDouble.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t HandleAvailability.LookupTestDouble.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_21563881C()
{
  v0 = swift_allocObject();
  *(v0 + 16) = sub_21563C2A0(MEMORY[0x277D84F90]);
  return v0;
}

uint64_t sub_215638860(uint64_t a1, uint64_t a2)
{
  v6 = *(**v2 + 120);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_21563DA58;

  return v10(a1, a2);
}

uint64_t sub_21563898C(uint64_t a1, _BYTE *a2)
{
  *(v3 + 24) = a1;
  *(v3 + 32) = v2;
  *(v3 + 56) = *a2;
  return MEMORY[0x2822009F8](sub_2156389B4, 0, 0);
}

uint64_t sub_2156389B4()
{
  v1 = *(v0 + 56);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = swift_task_alloc();
  *(v0 + 40) = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v1;
  *(v4 + 32) = v2;
  v5 = *(MEMORY[0x277D859E0] + 4);
  v6 = swift_task_alloc();
  *(v0 + 48) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA67EA8, &unk_21565C6A0);
  *v6 = v0;
  v6[1] = sub_215638AD0;

  return MEMORY[0x2822007B8](v0 + 16, 0, 0, 0xD000000000000029, 0x8000000215664D20, sub_21563C628, v4, v7);
}

uint64_t sub_215638AD0()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_215638BE8, 0, 0);
}

void sub_215638C00(uint64_t a1, uint64_t a2, unsigned __int8 a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA67ED0, &qword_21565CB28);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v35 - v11;
  if (!*(a2 + 16))
  {
    if (qword_27CA68D70 != -1)
    {
      swift_once();
    }

    v14 = sub_215656D6C();
    __swift_project_value_buffer(v14, qword_27CA6DFD0);
    v15 = sub_215656D4C();
    v16 = sub_215656F7C();
    if (!os_log_type_enabled(v15, v16))
    {
      goto LABEL_22;
    }

    v17 = swift_slowAlloc();
    *v17 = 0;
    v18 = "No destinations; bypassing IDS check.";
    goto LABEL_21;
  }

  if (a3 > 1u)
  {
    v36 = a1;
    v13 = MEMORY[0x277D18698];
    if (a3 != 2)
    {
      v13 = MEMORY[0x277D18698];
    }

    goto LABEL_11;
  }

  if (a3)
  {
    if (qword_27CA68D70 != -1)
    {
      swift_once();
    }

    v34 = sub_215656D6C();
    __swift_project_value_buffer(v34, qword_27CA6DFD0);
    v15 = sub_215656D4C();
    v16 = sub_215656F8C();
    if (!os_log_type_enabled(v15, v16))
    {
      goto LABEL_22;
    }

    v17 = swift_slowAlloc();
    *v17 = 0;
    v18 = "Invalid service name. Continuing with empty status.";
LABEL_21:
    _os_log_impl(&dword_2155FE000, v15, v16, v18, v17, 2u);
    MEMORY[0x21606DDB0](v17, -1, -1);
LABEL_22:

    aBlock[0] = sub_21563C3BC(MEMORY[0x277D84F90]);
    goto LABEL_23;
  }

  v36 = a1;
  v13 = MEMORY[0x277D186B0];
LABEL_11:
  v19 = *v13;
  sub_215656E5C();
  v35 = a4[2];
  sub_2156390D8(a2);
  v20 = sub_215656ECC();

  v21 = sub_215656E4C();

  v22 = a4[3];
  v23 = a4[4];
  v24 = sub_215656E4C();
  v25 = a4[5];
  (*(v9 + 16))(v12, v36, v8);
  v26 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = a4;
  (*(v9 + 32))(v27 + v26, v12, v8);
  aBlock[4] = sub_21563D7E4;
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2156391D8;
  aBlock[3] = &block_descriptor_81;
  v28 = _Block_copy(aBlock);

  v29 = [v35 currentIDStatusForDestinations:v20 service:v21 listenerID:v24 queue:v25 completionBlock:v28];
  _Block_release(v28);

  if (v29)
  {
    return;
  }

  if (qword_27CA68D70 != -1)
  {
    swift_once();
  }

  v30 = sub_215656D6C();
  __swift_project_value_buffer(v30, qword_27CA6DFD0);
  v31 = sub_215656D4C();
  v32 = sub_215656F8C();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_2155FE000, v31, v32, "IDS declined to execute query. Continuing with empty status.", v33, 2u);
    MEMORY[0x21606DDB0](v33, -1, -1);
  }

  aBlock[0] = sub_21563C3BC(MEMORY[0x277D84F90]);
LABEL_23:
  sub_215656F0C();
}

uint64_t sub_2156390D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v11 = MEMORY[0x277D84F90];
    sub_21563BDC0(0, v1, 0);
    v2 = v11;
    v4 = (a1 + 40);
    do
    {
      v8 = *(v4 - 1);
      v9 = *v4;

      swift_dynamicCast();
      v11 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_21563BDC0((v5 > 1), v6 + 1, 1);
        v2 = v11;
      }

      *(v2 + 16) = v6 + 1;
      sub_21563D698(&v10, (v2 + 32 * v6 + 32));
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_2156391D8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (a2)
  {
    v4 = sub_215656DCC();
  }

  else
  {
    v4 = 0;
  }

  v3(v4);
}

uint64_t sub_215639268(uint64_t a1, _BYTE *a2)
{
  *(v3 + 24) = a1;
  *(v3 + 32) = v2;
  *(v3 + 56) = *a2;
  return MEMORY[0x2822009F8](sub_215639290, 0, 0);
}

uint64_t sub_215639290()
{
  v1 = *(v0 + 56);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  v3 = *(v0 + 24);
  *(v2 + 16) = v1;
  *(v2 + 24) = vextq_s8(v3, v3, 8uLL);
  v4 = *(MEMORY[0x277D859E0] + 4);
  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA67EA8, &unk_21565C6A0);
  *v5 = v0;
  v5[1] = sub_2156393A4;

  return MEMORY[0x2822007B8](v0 + 16, 0, 0, 0xD000000000000029, 0x8000000215664D50, sub_21563C638, v2, v6);
}

uint64_t sub_2156393A4()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_21563DA74, 0, 0);
}

void sub_2156394BC(uint64_t a1, unsigned __int8 a2, void *a3, uint64_t a4)
{
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA67ED0, &qword_21565CB28);
  v8 = *(v36 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v36);
  v11 = v34 - v10;
  if (a2 > 1u)
  {
    v12 = MEMORY[0x277D18698];
    if (a2 != 2)
    {
      v12 = MEMORY[0x277D18698];
    }
  }

  else
  {
    if (a2)
    {
      if (qword_27CA68D70 != -1)
      {
        swift_once();
      }

      v30 = sub_215656D6C();
      __swift_project_value_buffer(v30, qword_27CA6DFD0);
      v31 = sub_215656D4C();
      v32 = sub_215656F8C();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_2155FE000, v31, v32, "Invalid service name. Continuing with empty status.", v33, 2u);
        MEMORY[0x21606DDB0](v33, -1, -1);
      }

      aBlock[0] = sub_21563C3BC(MEMORY[0x277D84F90]);
      goto LABEL_17;
    }

    v12 = MEMORY[0x277D186B0];
  }

  v13 = *v12;
  sub_215656E5C();
  v35 = a3[2];
  sub_2156390D8(a4);
  v14 = sub_215656ECC();

  v15 = sub_215656E4C();

  v16 = a3[3];
  v17 = a3[4];
  v18 = sub_215656E4C();
  v19 = a3[5];
  v20 = *(v8 + 16);
  v34[1] = a1;
  v21 = v36;
  v20(v11, a1, v36);
  v22 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = a3;
  (*(v8 + 32))(v23 + v22, v11, v21);
  aBlock[4] = sub_21563DA68;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2156391D8;
  aBlock[3] = &block_descriptor;
  v24 = _Block_copy(aBlock);

  v25 = [v35 refreshIDStatusForDestinations:v14 service:v15 listenerID:v18 queue:v19 completionBlock:v24];
  _Block_release(v24);

  if (v25)
  {
    return;
  }

  if (qword_27CA68D70 != -1)
  {
    swift_once();
  }

  v26 = sub_215656D6C();
  __swift_project_value_buffer(v26, qword_27CA6DFD0);
  v27 = sub_215656D4C();
  v28 = sub_215656F8C();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_2155FE000, v27, v28, "IDS declined to execute query. Continuing with empty status.", v29, 2u);
    MEMORY[0x21606DDB0](v29, -1, -1);
  }

  aBlock[0] = sub_21563C3BC(MEMORY[0x277D84F90]);
LABEL_17:
  sub_215656F0C();
}

unint64_t sub_2156398FC(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = &unk_27CA68000;
    if (qword_27CA68D70 != -1)
    {
LABEL_38:
      swift_once();
    }

    v42 = sub_215656D6C();
    __swift_project_value_buffer(v42, qword_27CA6DFD0);

    v3 = sub_215656D4C();
    v4 = sub_215656F7C();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 134217984;
      *(v5 + 4) = *(v1 + 16);

      _os_log_impl(&dword_2155FE000, v3, v4, "Received %ld statuses", v5, 0xCu);
      MEMORY[0x21606DDB0](v5, -1, -1);
    }

    else
    {
    }

    v12 = sub_21563C3BC(MEMORY[0x277D84F90]);
    v13 = v1 + 64;
    v14 = 1 << *(v1 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v1 + 64);
    v17 = (v14 + 63) >> 6;

    v18 = 0;
    v40 = v1;
    v41 = v1 + 64;
    while (v16)
    {
      v44 = v12;
LABEL_30:
      v24 = __clz(__rbit64(v16)) | (v18 << 6);
      sub_21563C644(*(v1 + 48) + 40 * v24, v45);
      sub_21563C6A0(*(v1 + 56) + 32 * v24, &v46);
      sub_21563D628(v45, v49);
      v52[0] = v49[0];
      v52[1] = v49[1];
      v53 = v50;
      swift_dynamicCast();
      v25 = v47;
      v26 = v48;
      __swift_destroy_boxed_opaque_existential_0Tm(v51);
      sub_21563D628(v45, v49);
      sub_21563D698(v51, v52);
      swift_dynamicCast();
      v43 = v47;
      sub_21563D6A8(v49);
      if (v2[430] != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v42, qword_27CA6DFD0);

      v27 = sub_215656D4C();
      v28 = sub_215656F6C();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        *&v49[0] = v30;
        *v29 = 136380931;
        *(v29 + 4) = sub_21563A06C(v25, v26, v49);
        *(v29 + 12) = 2048;
        v19 = v43;
        *(v29 + 14) = v43;
        _os_log_impl(&dword_2155FE000, v27, v28, "Status of handle %{private}s: %ld", v29, 0x16u);
        __swift_destroy_boxed_opaque_existential_0Tm(v30);
        v31 = v30;
        v2 = &unk_27CA68000;
        MEMORY[0x21606DDB0](v31, -1, -1);
        v32 = v29;
        v1 = v40;
        MEMORY[0x21606DDB0](v32, -1, -1);
      }

      else
      {

        v19 = v43;
      }

      v16 &= v16 - 1;
      if (v19 == 2)
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }

      if (v19 == 1)
      {
        v21 = 0;
      }

      else
      {
        v21 = v20;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v49[0] = v44;
      sub_21563B424(v21, v25, v26, isUniquelyReferenced_nonNull_native);

      v12 = *&v49[0];
      sub_21563C6FC(v45);
      v13 = v41;
    }

    while (1)
    {
      v23 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v23 >= v17)
      {
        break;
      }

      v16 = *(v13 + 8 * v23);
      ++v18;
      if (v16)
      {
        v44 = v12;
        v18 = v23;
        goto LABEL_30;
      }
    }

    v33 = sub_215656D4C();
    v34 = sub_215656F6C();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *&v49[0] = v36;
      *v35 = 136380675;
      v37 = sub_215656DDC();
      v39 = sub_21563A06C(v37, v38, v49);

      *(v35 + 4) = v39;
      _os_log_impl(&dword_2155FE000, v33, v34, "Status: %{private}s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v36);
      MEMORY[0x21606DDB0](v36, -1, -1);
      MEMORY[0x21606DDB0](v35, -1, -1);
    }

    return v12;
  }

  else
  {
    if (qword_27CA68D70 != -1)
    {
      swift_once();
    }

    v6 = sub_215656D6C();
    __swift_project_value_buffer(v6, qword_27CA6DFD0);
    v7 = sub_215656D4C();
    v8 = sub_215656F8C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_2155FE000, v7, v8, "Reply received with no status", v9, 2u);
      MEMORY[0x21606DDB0](v9, -1, -1);
    }

    v10 = MEMORY[0x277D84F90];

    return sub_21563C3BC(v10);
  }
}

uint64_t sub_215639F04()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

char *sub_215639F4C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA67EE8, &qword_21565CB48);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_21563A06C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_21563A138(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_21563C6A0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

unint64_t sub_21563A138(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_21563A244(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_21565705C();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_21563A244(uint64_t a1, unint64_t a2)
{
  v4 = sub_21563A290(a1, a2);
  sub_21563A3C0(&unk_282786420);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_21563A290(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_21563A4AC(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_21565705C();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_215656EAC();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_21563A4AC(v10, 0);
        result = sub_21565701C();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_21563A3C0(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_21563A520(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_21563A4AC(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA67F00, &qword_21565CB68);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_21563A520(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA67F00, &qword_21565CB68);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_21563A614(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_21565719C();
  sub_215656E8C();
  v6 = sub_2156571BC();

  return sub_21563A78C(a1, a2, v6);
}

unint64_t sub_21563A68C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v7 = *(v3 + 40);
  sub_21565719C();
  sub_215656E8C();
  MEMORY[0x21606D450](a3);
  v8 = sub_2156571BC();

  return sub_21563A844(a1, a2, a3, v8);
}

unint64_t sub_21563A720(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_21565719C();
  MEMORY[0x21606D450](a1);
  v4 = sub_2156571BC();

  return sub_21563A928(a1, v4);
}

unint64_t sub_21563A78C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_21565713C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_21563A844(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4)
{
  v5 = v4 + 64;
  v6 = -1 << *(v4 + 32);
  v7 = a4 & ~v6;
  if ((*(v4 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v10 = a3;
    v11 = ~v6;
    v12 = *(v4 + 48);
    do
    {
      v13 = v12 + 24 * v7;
      v14 = *(v13 + 16);
      v15 = *v13 == a1 && *(v13 + 8) == a2;
      if (v15 || (sub_21565713C()) && v14 == v10)
      {
        break;
      }

      v7 = (v7 + 1) & v11;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

unint64_t sub_21563A928(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_21563A998(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA67EF8, &qword_21565CB58);
  v38 = a2;
  result = sub_2156570EC();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_21565719C();
      sub_215656E8C();
      result = sub_2156571BC();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_21563AC38(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA67EF0, &qword_21565CB50);
  v38 = a2;
  result = sub_2156570EC();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(v5 + 56);
      v23 = *(v5 + 48) + 24 * v21;
      v24 = *v23;
      v25 = *(v23 + 8);
      v26 = *(v23 + 16);
      v39 = *(v22 + v21);
      if ((v38 & 1) == 0)
      {
      }

      v27 = *(v8 + 40);
      sub_21565719C();
      sub_215656E8C();
      MEMORY[0x21606D450](v26);
      result = sub_2156571BC();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 24 * v16;
      *v17 = v24;
      *(v17 + 8) = v25;
      *(v17 + 16) = v26;
      *(*(v8 + 56) + v16) = v39;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_21563AEFC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA67EE0, &qword_21565CB40);
  v38 = a2;
  result = sub_2156570EC();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_21565719C();
      sub_215656E8C();
      result = sub_2156571BC();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_21563B1A4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA68770, qword_21565E520);
  result = sub_2156570EC();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = a2;
    v33 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + v20);
      v22 = *(*(v5 + 56) + v20);
      v23 = *(v8 + 40);
      sub_21565719C();
      MEMORY[0x21606D450](v21);
      result = sub_2156571BC();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v21;
      *(*(v8 + 56) + v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v32 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_33;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v33;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v8;
  return result;
}

unint64_t sub_21563B424(char a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_21563A614(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_21563A998(v16, a4 & 1);
      v20 = *v5;
      result = sub_21563A614(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_16:
        result = sub_21565714C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_21563B828();
      result = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    *(v22[7] + result) = a1;
    return result;
  }

  v22[(result >> 6) + 8] |= 1 << result;
  v23 = (v22[6] + 16 * result);
  *v23 = a2;
  v23[1] = a3;
  *(v22[7] + result) = a1;
  v24 = v22[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v22[2] = v25;
}

uint64_t sub_21563B588(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_21563A614(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_21563AEFC(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_21563A614(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_21565714C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_21563BB04();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

unint64_t sub_21563B704(char a1, unsigned __int8 a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_21563A720(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_21563BC74();
    result = v17;
    goto LABEL_8;
  }

  sub_21563B1A4(v14, a3 & 1);
  v18 = *v4;
  result = sub_21563A720(a2);
  if ((v15 & 1) == (v19 & 1))
  {
LABEL_8:
    v20 = *v4;
    if (v15)
    {
      *(v20[7] + result) = a1;
      return result;
    }

    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + result) = a2;
    *(v20[7] + result) = a1;
    v21 = v20[2];
    v13 = __OFADD__(v21, 1);
    v22 = v21 + 1;
    if (!v13)
    {
      v20[2] = v22;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_21565714C();
  __break(1u);
  return result;
}

void *sub_21563B828()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA67EF8, &qword_21565CB58);
  v2 = *v0;
  v3 = sub_2156570DC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        LOBYTE(v18) = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_21563B990()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA67EF0, &qword_21565CB50);
  v2 = *v0;
  v3 = sub_2156570DC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(v2 + 48) + 24 * v17;
        v20 = *v18;
        v19 = *(v18 + 8);
        LOBYTE(v18) = *(v18 + 16);
        v21 = *(*(v2 + 56) + v17);
        v22 = *(v4 + 48) + 24 * v17;
        *v22 = v20;
        *(v22 + 8) = v19;
        *(v22 + 16) = v18;
        *(*(v4 + 56) + v17) = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_21563BB04()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA67EE0, &qword_21565CB40);
  v2 = *v0;
  v3 = sub_2156570DC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_21563BC74()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA68770, qword_21565E520);
  v2 = *v0;
  v3 = sub_2156570DC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + v14);
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

char *sub_21563BDC0(char *a1, int64_t a2, char a3)
{
  result = sub_21563BDE0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21563BDE0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA67ED8, &unk_21565CB30);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_21563BEF0(void *a1, const char *a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  v26 = a4;
  v27 = a2;
  v28 = a3;
  v29 = sub_215656FBC();
  v8 = *(v29 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v29);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_215656FAC();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v14 = sub_215656DBC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v27;
  v19 = v28;
  v5[2] = a1;
  v5[3] = v20;
  v5[4] = v19;
  v21 = sub_21563D8BC();
  v27 = ".directoryServer";
  v28 = v21;
  (*(v15 + 16))(v18, a4, v14);
  v30 = MEMORY[0x277D84F90];
  sub_21563D908();
  v22 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA67F18, qword_21565CB70);
  sub_21563D960();
  sub_21565700C();
  (*(v8 + 104))(v11, *MEMORY[0x277D85260], v29);
  v23 = sub_215656FCC();
  (*(v15 + 8))(v26, v14);
  v5[5] = v23;
  return v5;
}

unint64_t sub_21563C188(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA67EF0, &qword_21565CB50);
    v3 = sub_2156570FC();

    for (i = (a1 + 49); ; i += 24)
    {
      v5 = *(i - 17);
      v6 = *(i - 9);
      v7 = *(i - 1);
      v8 = *i;

      result = sub_21563A68C(v5, v6, v7);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = v3[6] + 24 * result;
      *v11 = v5;
      *(v11 + 8) = v6;
      *(v11 + 16) = v7;
      *(v3[7] + result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_21563C2A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA67EE0, &qword_21565CB40);
    v3 = sub_2156570FC();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_21563A614(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_21563C3A4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_21563C3BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA67EF8, &qword_21565CB58);
    v3 = sub_2156570FC();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_21563A614(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_21563C548(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA68770, qword_21565E520);
    v3 = sub_2156570FC();
    for (i = (a1 + 33); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_21563A720(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_21563C6A0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_21563C6FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA67EB0, &qword_21565C6B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21563C768()
{
  result = qword_27CA67EB8;
  if (!qword_27CA67EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA67EB8);
  }

  return result;
}

unint64_t sub_21563C7C0()
{
  result = qword_27CA67EC0;
  if (!qword_27CA67EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA67EC0);
  }

  return result;
}

unint64_t sub_21563C818()
{
  result = qword_27CA67EC8;
  if (!qword_27CA67EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA67EC8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HandleAvailability(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for HandleAvailability(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HandleAvailability.Status(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HandleAvailability.Status(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HandleAvailability.Service(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HandleAvailability.Service(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t dispatch thunk of HandleAvailability.Lookup.status(for:on:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_21563DA58;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of HandleAvailability.LastKnownIDStatusLookup.status(for:on:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 88);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_21563DA58;

  return v10(a1, a2);
}

uint64_t dispatch thunk of HandleAvailability.UncachedIDStatusLookup.status(for:on:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 88);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_21563DA58;

  return v10(a1, a2);
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_21563D070(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21563D0B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t dispatch thunk of HandleAvailability.LookupSpy.status(for:on:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 128);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_21563DA58;

  return v10(a1, a2);
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_21563D2A4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21563D2EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t dispatch thunk of HandleAvailability.LookupStub.status(for:on:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 80);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_215638294;

  return v10(a1, a2);
}

uint64_t dispatch thunk of HandleAvailability.LookupTestDouble.status(for:on:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 120);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_21563DA58;

  return v10(a1, a2);
}

uint64_t sub_21563D628(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA67EB0, &qword_21565C6B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_21563D698(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroyTm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA67ED0, &qword_21565CB28);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_21563D7E8(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA67ED0, &qword_21565CB28) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  (*(**(v1 + 16) + 128))(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA67ED0, &qword_21565CB28);
  return sub_215656F0C();
}

unint64_t sub_21563D8BC()
{
  result = qword_27CA67F08;
  if (!qword_27CA67F08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CA67F08);
  }

  return result;
}

unint64_t sub_21563D908()
{
  result = qword_27CA67F10;
  if (!qword_27CA67F10)
  {
    sub_215656FAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA67F10);
  }

  return result;
}

unint64_t sub_21563D960()
{
  result = qword_27CA67F20;
  if (!qword_27CA67F20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA67F18, qword_21565CB70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA67F20);
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_21563DA78()
{
  v0 = sub_215656D6C();
  __swift_allocate_value_buffer(v0, qword_27CA6E000);
  __swift_project_value_buffer(v0, qword_27CA6E000);
  return sub_215656D5C();
}

uint64_t sub_21563DB00@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for HandleAvailability.LookupStub();
  result = _s20ContactsAutocomplete18HandleAvailabilityV23LastKnownIDStatusLookupCAEycfC_0();
  a1[3] = v2;
  a1[4] = &protocol witness table for HandleAvailability.LookupStub;
  *a1 = result;
  return result;
}

uint64_t sub_21563DB40(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, __int128 *a6)
{
  v12 = swift_allocObject();
  *(v12 + 16) = *a1;
  *(v12 + 24) = a2;
  *(v12 + 32) = a3;
  v13 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v13 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v13)
  {

    a4 = sub_215654DC8();
    a5 = v14;
  }

  *(v12 + 40) = a4;
  *(v12 + 48) = a5;
  sub_21563C3A4(a6, v12 + 56);
  return v12;
}

uint64_t sub_21563DC1C()
{
  v1 = v0[7];
  v2 = *(v1 + 48);
  v19 = *(v1 + 40);
  v3 = [objc_opt_self() defaultEnvironment];
  v4 = sub_21563F93C();
  v5 = MEMORY[0x277CEB180];
  v0[5] = v4;
  v0[6] = v5;
  v0[2] = v3;
  v6 = sub_215656C7C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64) + 15;
  v9 = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA67F88, &qword_21565F030) - 8) + 64) + 15;
  swift_task_alloc();
  sub_215656C3C();
  v11 = *(sub_215656C4C() - 8);
  v12 = *(v11 + 64) + 15;
  swift_task_alloc();
  v13 = *MEMORY[0x277CEB060];
  (*(v11 + 104))();
  sub_215656C6C();

  v14 = sub_215656C5C();
  v16 = v15;
  (*(v7 + 8))(v9, v6);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);

  v17 = v0[1];

  return v17(v14, v16);
}

uint64_t sub_21563DE74(uint64_t *a1)
{
  *(v2 + 40) = v1;
  v4 = *(type metadata accessor for ComposeRecipient(0) - 8);
  *(v2 + 48) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 56) = swift_task_alloc();
  v6 = swift_task_alloc();
  v7 = *a1;
  *(v2 + 64) = v6;
  *(v2 + 72) = v7;
  *(v2 + 209) = *(a1 + 8);

  return MEMORY[0x2822009F8](sub_21563DF4C, 0, 0);
}

uint64_t sub_21563DF4C()
{
  v23 = v0;
  if (*(*(v0 + 72) + 16))
  {
    v1 = 0x30201u >> (8 * *(v0 + 209));

    *(v0 + 80) = sub_215642920();
    *(v0 + 88) = v2;
    if (qword_27CA69200 != -1)
    {
      swift_once();
    }

    v3 = sub_215656D6C();
    *(v0 + 96) = __swift_project_value_buffer(v3, qword_27CA6E000);
    v4 = sub_215656F9C();
    v5 = sub_215656D4C();
    if (os_log_type_enabled(v5, v4))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v22 = v7;
      *v6 = 136315138;
      *(v0 + 208) = v1;
      sub_21563F67C();
      v8 = sub_21565711C();
      v10 = sub_21563A06C(v8, v9, &v22);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_2155FE000, v5, v4, "Searching for client: %s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v7);
      MEMORY[0x21606DDB0](v7, -1, -1);
      MEMORY[0x21606DDB0](v6, -1, -1);
    }

    v11 = swift_task_alloc();
    *(v0 + 104) = v11;
    *v11 = v0;
    v11[1] = sub_21563E24C;
    v12 = *(v0 + 40);

    return sub_21563DBFC();
  }

  else
  {
    if (qword_27CA69200 != -1)
    {
      swift_once();
    }

    v14 = sub_215656D6C();
    __swift_project_value_buffer(v14, qword_27CA6E000);
    v15 = sub_215656F7C();
    v16 = sub_215656D4C();
    if (os_log_type_enabled(v16, v15))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_2155FE000, v16, v15, "No names requested, so no results returned", v17, 2u);
      MEMORY[0x21606DDB0](v17, -1, -1);
    }

    v19 = *(v0 + 56);
    v18 = *(v0 + 64);

    v20 = *(v0 + 8);
    v21 = MEMORY[0x277D84F90];

    return v20(v21);
  }
}

uint64_t sub_21563E24C(uint64_t a1, uint64_t a2)
{
  v5 = *v3;
  v6 = *(*v3 + 104);
  v7 = *v3;
  v5[14] = a1;
  v5[15] = v2;

  if (v2)
  {
    v8 = sub_21563EC68;
  }

  else
  {
    v5[16] = a2;
    v8 = sub_21563E374;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_21563E374()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 112);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA67F28, &qword_21565CB98);
  *(v0 + 136) = v3;
  v4 = *(v3 - 8);
  *(v0 + 144) = v4;
  v5 = *(v4 + 64) + 15;
  v6 = swift_task_alloc();
  *(v0 + 152) = v6;
  v22 = *(v0 + 80);
  ObjectType = swift_getObjectType();
  *(v0 + 16) = v22;
  v8 = sub_215656C1C();
  *(v0 + 160) = v8;
  v9 = *(v8 - 8);
  *(v0 + 168) = v9;
  v10 = *(v9 + 64) + 15;
  v11 = swift_task_alloc();
  *(v0 + 176) = v11;
  sub_21563F480();
  sub_21563F4D4();
  sub_21563EF68();
  v12 = sub_215656ADC();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  v15 = sub_215656ACC();
  *(v0 + 184) = v15;
  v16 = *(MEMORY[0x277CEB008] + 4);
  v17 = swift_task_alloc();
  *(v0 + 192) = v17;
  *v17 = v0;
  v17[1] = sub_21563E5A4;
  v18 = *(v0 + 128);
  v19 = *(v0 + 112);
  v20 = MEMORY[0x277CEAFA8];

  return MEMORY[0x28213DA98](v6, v0 + 16, v11, v15, v20, ObjectType, &type metadata for CompleteNameAppIntentRepresentation, v18);
}

uint64_t sub_21563E5A4()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v8 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v4 = v2[23];
    (*(v2[21] + 8))(v2[22], v2[20]);

    v5 = sub_21563EDD8;
  }

  else
  {
    v6 = v2[23];
    (*(v2[21] + 8))(v2[22], v2[20]);

    v5 = sub_21563E70C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

size_t sub_21563E70C()
{
  v1 = v0[19];
  v2 = v0[17];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA67F50, &qword_21565CBA8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64) + 15;
  v6 = swift_task_alloc();
  sub_215656BDC();
  sub_215656C9C();
  (*(v4 + 8))(v6, v3);
  v7 = v0[4];
  if (v7)
  {

    if (v7 >> 62)
    {
      v8 = sub_2156570CC();
      if (v8)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v8)
      {
LABEL_4:
        v63 = MEMORY[0x277D84F90];
        result = sub_21563F5F8(0, v8 & ~(v8 >> 63), 0);
        if (v8 < 0)
        {
          __break(1u);
          return result;
        }

        v10 = v63;
        v11 = v0[6];
        if ((v7 & 0xC000000000000001) != 0)
        {
          for (i = 0; i != v8; ++i)
          {
            v13 = v0[8];
            v14 = MEMORY[0x21606D2E0](i, v7);
            sub_215646758(v14, v13);
            v16 = *(v63 + 16);
            v15 = *(v63 + 24);
            if (v16 >= v15 >> 1)
            {
              sub_21563F5F8(v15 > 1, v16 + 1, 1);
            }

            v17 = v0[8];
            *(v63 + 16) = v16 + 1;
            sub_21563F618(v17, v63 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v16);
          }
        }

        else
        {
          v40 = (v7 + 32);
          do
          {
            v41 = v0[7];
            v42 = *v40;

            sub_215646758(v43, v41);
            v45 = *(v63 + 16);
            v44 = *(v63 + 24);
            if (v45 >= v44 >> 1)
            {
              sub_21563F5F8(v44 > 1, v45 + 1, 1);
            }

            v46 = v0[7];
            *(v63 + 16) = v45 + 1;
            sub_21563F618(v46, v63 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v45);
            ++v40;
            --v8;
          }

          while (v8);
        }

        v48 = v0[18];
        v47 = v0[19];
        v49 = v0[17];
        v50 = v0[14];
        v52 = v0[10];
        v51 = v0[11];

        swift_unknownObjectRelease();
        (*(v48 + 8))(v47, v49);
        goto LABEL_25;
      }
    }

    v54 = v0[18];
    v53 = v0[19];
    v55 = v0[17];
    v56 = v0[14];
    v58 = v0[10];
    v57 = v0[11];

    swift_unknownObjectRelease();
    (*(v54 + 8))(v53, v55);
    v10 = MEMORY[0x277D84F90];
LABEL_25:
    v59 = v0[19];

    v61 = v0[7];
    v60 = v0[8];

    v62 = v0[1];

    return v62(v10);
  }

  v18 = v0[12];

  v19 = sub_215656F8C();
  v20 = sub_215656D4C();
  if (os_log_type_enabled(v20, v19))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_2155FE000, v20, v19, "No value returned from execution", v21, 2u);
    MEMORY[0x21606DDB0](v21, -1, -1);
  }

  v23 = v0[18];
  v22 = v0[19];
  v24 = v0[17];
  v25 = v0[14];

  sub_21563F5A4();
  v26 = swift_allocError();
  swift_willThrow();
  swift_unknownObjectRelease();
  (*(v23 + 8))(v22, v24);

  v27 = v0[12];
  v28 = sub_215656F8C();
  v29 = v26;
  v30 = sub_215656D4C();

  if (os_log_type_enabled(v30, v28))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v31 = 138412290;
    v33 = v26;
    v34 = _swift_stdlib_bridgeErrorToNSError();
    *(v31 + 4) = v34;
    *v32 = v34;
    _os_log_impl(&dword_2155FE000, v30, v28, "Error performing intent: %@", v31, 0xCu);
    sub_21563F418(v32);
    MEMORY[0x21606DDB0](v32, -1, -1);
    MEMORY[0x21606DDB0](v31, -1, -1);
  }

  v36 = v0[10];
  v35 = v0[11];
  v38 = v0[7];
  v37 = v0[8];

  swift_willThrow();

  v39 = v0[1];

  return v39();
}

uint64_t sub_21563EC68()
{
  v1 = v0[15];
  v2 = v0[12];
  v3 = sub_215656F8C();
  v4 = v1;
  v5 = sub_215656D4C();

  if (os_log_type_enabled(v5, v3))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_2155FE000, v5, v3, "Error performing intent: %@", v6, 0xCu);
    sub_21563F418(v7);
    MEMORY[0x21606DDB0](v7, -1, -1);
    MEMORY[0x21606DDB0](v6, -1, -1);
  }

  v11 = v0[10];
  v10 = v0[11];
  v13 = v0[7];
  v12 = v0[8];

  swift_willThrow();

  v14 = v0[1];

  return v14();
}

uint64_t sub_21563EDD8()
{
  v1 = v0[22];
  v2 = v0[19];
  v3 = v0[14];
  swift_unknownObjectRelease();

  v4 = v0[25];
  v5 = v0[12];
  v6 = sub_215656F8C();
  v7 = v4;
  v8 = sub_215656D4C();

  if (os_log_type_enabled(v8, v6))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v4;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_2155FE000, v8, v6, "Error performing intent: %@", v9, 0xCu);
    sub_21563F418(v10);
    MEMORY[0x21606DDB0](v10, -1, -1);
    MEMORY[0x21606DDB0](v9, -1, -1);
  }

  v14 = v0[10];
  v13 = v0[11];
  v16 = v0[7];
  v15 = v0[8];

  swift_willThrow();

  v17 = v0[1];

  return v17();
}

uint64_t sub_21563EF68()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA67F70, &unk_21565F020);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v11 - v2;
  v4 = sub_215656D3C();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA67F78, &unk_21565CCE0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v11 - v7;
  v9 = sub_215656D0C();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_215656C0C();
  return sub_215656BFC();
}

uint64_t sub_21563F0F0()
{
  sub_21565719C();
  MEMORY[0x21606D450](0);
  return sub_2156571BC();
}

uint64_t sub_21563F15C()
{
  sub_21565719C();
  MEMORY[0x21606D450](0);
  return sub_2156571BC();
}

uint64_t sub_21563F1AC()
{
  v1 = v0[4];

  v2 = v0[6];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);

  return MEMORY[0x2821FE8D8](v0, 96, 7);
}

uint64_t sub_21563F1F4(uint64_t a1)
{
  v4 = *(**v1 + 128);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_21563F318;

  return v8(a1);
}

uint64_t sub_21563F318(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_21563F418(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA68780, &qword_21565CB90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21563F480()
{
  result = qword_27CA67F30;
  if (!qword_27CA67F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA67F30);
  }

  return result;
}

unint64_t sub_21563F4D4()
{
  result = qword_27CA67F38;
  if (!qword_27CA67F38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA67F40, &qword_21565CBA0);
    sub_21563F54C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA67F38);
  }

  return result;
}

unint64_t sub_21563F54C()
{
  result = qword_27CA67F48;
  if (!qword_27CA67F48)
  {
    type metadata accessor for ComposeRecipientAppEntityRepresentation();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA67F48);
  }

  return result;
}

unint64_t sub_21563F5A4()
{
  result = qword_27CA67F58;
  if (!qword_27CA67F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA67F58);
  }

  return result;
}

size_t sub_21563F5F8(size_t a1, int64_t a2, char a3)
{
  result = sub_21563F764(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_21563F618(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ComposeRecipient(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_21563F67C()
{
  result = qword_27CA67F60;
  if (!qword_27CA67F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA67F60);
  }

  return result;
}

unint64_t sub_21563F6D4()
{
  result = qword_27CA67F68;
  if (!qword_27CA67F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA67F68);
  }

  return result;
}

size_t sub_21563F764(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA67E40, &unk_21565CCD0);
  v10 = *(type metadata accessor for ComposeRecipient(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for ComposeRecipient(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

unint64_t sub_21563F93C()
{
  result = qword_27CA67F80;
  if (!qword_27CA67F80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CA67F80);
  }

  return result;
}

uint64_t sub_21563FA30(uint64_t *a1, uint64_t *a2)
{
  swift_beginAccess();
  v4 = *a1;
  v5 = *a2;

  return v4;
}

uint64_t sub_21563FA94(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  swift_beginAccess();
  v8 = *a4;
  *a3 = a1;
  *a4 = a2;
}

uint64_t sub_21563FB60@<X0>(void *a1@<X3>, uint64_t *a2@<X4>, void *a3@<X8>)
{
  swift_beginAccess();
  v6 = *a2;
  *a3 = *a1;
  a3[1] = v6;
}

uint64_t sub_21563FBCC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t *a6)
{
  v9 = *a1;
  v8 = a1[1];
  swift_beginAccess();
  v10 = *a6;
  *a5 = v9;
  *a6 = v8;
}

uint64_t sub_21563FC3C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + class metadata base offset for ComposeRecipientHandleValueAppEntityRepresentation + 24))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_21563FCA4(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + class metadata base offset for ComposeRecipientHandleValueAppEntityRepresentation + 32);

  return v4(v2, v3);
}

uint64_t (*sub_21563FD44(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + qword_27CA67FB8);

  *(v4 + 40) = sub_215656CBC();
  return sub_21563FDD0;
}

uint64_t sub_21563FDE0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + class metadata base offset for ComposeRecipientHandleValueAppEntityRepresentation + 56))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_21563FE48(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + class metadata base offset for ComposeRecipientHandleValueAppEntityRepresentation + 64);

  return v4(v2, v3);
}

uint64_t (*sub_21563FEE8(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + qword_27CA67FC0);

  *(v4 + 40) = sub_215656CBC();
  return sub_2156413C0;
}

uint64_t sub_21563FF80@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + class metadata base offset for ComposeRecipientHandleValueAppEntityRepresentation + 88))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_21563FFE8(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + class metadata base offset for ComposeRecipientHandleValueAppEntityRepresentation + 96);

  return v4(v2, v3);
}

uint64_t sub_21564007C(void *a1)
{
  v2 = *(v1 + *a1);

  sub_215656CCC();

  return v4;
}

uint64_t sub_2156400D0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(v3 + *a3);

  sub_215656CDC();
}

uint64_t (*sub_215640118(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + qword_27CA67FC8);

  *(v4 + 40) = sub_215656CBC();
  return sub_2156413C0;
}

void sub_2156401A4(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 32);
  (*(*a1 + 40))(*a1, 0);

  free(v1);
}

uint64_t sub_215640204(void *a1)
{
  v2 = *(v1 + *a1);

  v3 = sub_215656CEC();

  return v3;
}

uint64_t ComposeRecipientHandleValueAppEntityRepresentation.__allocating_init(_:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  v6 = qword_27CA67FB8;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA67FB0, &unk_21565CCF0);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  *(v5 + v6) = sub_215656CAC();
  v10 = qword_27CA67FC0;
  v11 = *(v7 + 48);
  v12 = *(v7 + 52);
  swift_allocObject();
  *(v5 + v10) = sub_215656CAC();
  v13 = qword_27CA67FC8;
  v14 = *(v7 + 48);
  v15 = *(v7 + 52);
  swift_allocObject();
  *(v5 + v13) = sub_215656CAC();
  v16 = sub_215656B2C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  (*(v17 + 16))(&v22 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v16);
  v20 = sub_215656B8C();
  (*(v17 + 8))(a1, v16);
  return v20;
}

uint64_t ComposeRecipientHandleValueAppEntityRepresentation.init(_:)(uint64_t a1)
{
  v3 = qword_27CA67FB8;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA67FB0, &unk_21565CCF0);
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  *(v1 + v3) = sub_215656CAC();
  v7 = qword_27CA67FC0;
  v8 = *(v4 + 48);
  v9 = *(v4 + 52);
  swift_allocObject();
  *(v1 + v7) = sub_215656CAC();
  v10 = qword_27CA67FC8;
  v11 = *(v4 + 48);
  v12 = *(v4 + 52);
  swift_allocObject();
  *(v1 + v10) = sub_215656CAC();
  v13 = sub_215656B2C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  (*(v14 + 16))(&v19 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v13);
  v17 = sub_215656B8C();
  (*(v14 + 8))(a1, v13);
  return v17;
}

uint64_t sub_21564057C()
{
  v1 = *(v0 + qword_27CA67FB8);

  v2 = *(v0 + qword_27CA67FC0);

  v3 = *(v0 + qword_27CA67FC8);
}

uint64_t ComposeRecipientHandleValueAppEntityRepresentation.deinit()
{
  v0 = sub_215656B7C();
  v1 = *(v0 + qword_27CA67FB8);

  v2 = *(v0 + qword_27CA67FC0);

  v3 = *(v0 + qword_27CA67FC8);

  return v0;
}

uint64_t ComposeRecipientHandleValueAppEntityRepresentation.__deallocating_deinit()
{
  v0 = sub_215656B7C();
  v1 = *(v0 + qword_27CA67FB8);

  v2 = *(v0 + qword_27CA67FC0);

  v3 = *(v0 + qword_27CA67FC8);

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t sub_21564075C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  swift_beginAccess();
  v6 = *a3;
  v7 = *a4;

  return v6;
}

uint64_t sub_2156408D0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_215656B4C();
  *a1 = result;
  return result;
}

unint64_t ComposeRecipientHandleValueAppEntityRepresentation.description.getter()
{
  v1 = (*(*v0 + class metadata base offset for ComposeRecipientHandleValueAppEntityRepresentation + 24))();
  if (v2)
  {
    v3 = v1;
    v4 = v2;
    sub_21565702C();

    strcpy(v31, ".phoneNumber(");
    HIWORD(v31[1]) = -4864;
    MEMORY[0x21606D140](v3, v4);

    MEMORY[0x21606D140](41, 0xE100000000000000);
    v5 = v31[0];
    v6 = v31[1];
    v7 = sub_2156332BC(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = *(v7 + 2);
    v8 = *(v7 + 3);
    if (v9 >= v8 >> 1)
    {
      v7 = sub_2156332BC((v8 > 1), v9 + 1, 1, v7);
    }

    *(v7 + 2) = v9 + 1;
    v10 = &v7[16 * v9];
    *(v10 + 4) = v5;
    *(v10 + 5) = v6;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  isUniquelyReferenced_nonNull_native = (*(*v0 + class metadata base offset for ComposeRecipientHandleValueAppEntityRepresentation + 56))();
  if (v12)
  {
    v13 = isUniquelyReferenced_nonNull_native;
    v14 = v12;
    sub_21565702C();

    strcpy(v31, ".emailAddress(");
    HIBYTE(v31[1]) = -18;
    MEMORY[0x21606D140](v13, v14);

    MEMORY[0x21606D140](41, 0xE100000000000000);
    v15 = v31[0];
    v16 = v31[1];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      isUniquelyReferenced_nonNull_native = sub_2156332BC(0, *(v7 + 2) + 1, 1, v7);
      v7 = isUniquelyReferenced_nonNull_native;
    }

    v18 = *(v7 + 2);
    v17 = *(v7 + 3);
    if (v18 >= v17 >> 1)
    {
      isUniquelyReferenced_nonNull_native = sub_2156332BC((v17 > 1), v18 + 1, 1, v7);
      v7 = isUniquelyReferenced_nonNull_native;
    }

    *(v7 + 2) = v18 + 1;
    v19 = &v7[16 * v18];
    *(v19 + 4) = v15;
    *(v19 + 5) = v16;
  }

  v20 = (*(*v0 + class metadata base offset for ComposeRecipientHandleValueAppEntityRepresentation + 88))(isUniquelyReferenced_nonNull_native);
  if (v21)
  {
    v22 = v20;
    v23 = v21;
    sub_21565702C();

    v31[0] = 0xD000000000000014;
    v31[1] = 0x8000000215665120;
    MEMORY[0x21606D140](v22, v23);

    MEMORY[0x21606D140](41, 0xE100000000000000);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_2156332BC(0, *(v7 + 2) + 1, 1, v7);
    }

    v25 = *(v7 + 2);
    v24 = *(v7 + 3);
    if (v25 >= v24 >> 1)
    {
      v7 = sub_2156332BC((v24 > 1), v25 + 1, 1, v7);
    }

    *(v7 + 2) = v25 + 1;
    v26 = &v7[16 * v25];
    *(v26 + 4) = 0xD000000000000014;
    *(v26 + 5) = 0x8000000215665120;
    goto LABEL_19;
  }

  if (*(v7 + 2))
  {
LABEL_19:
    sub_21565702C();

    v31[1] = 0x80000002156650C0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA67E50, &unk_21565F460);
    sub_21563320C();
    v27 = sub_215656E0C();
    v29 = v28;

    MEMORY[0x21606D140](v27, v29);

    MEMORY[0x21606D140](41, 0xE100000000000000);
    return 0xD000000000000025;
  }

  return 0xD000000000000026;
}

uint64_t type metadata accessor for ComposeRecipientHandleValueAppEntityRepresentation()
{
  result = qword_27CA69910;
  if (!qword_27CA69910)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_215641004(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ComposeRecipientHandleValueAppEntityRepresentation();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

ContactsAutocomplete::ComposeRecipientHandleAvailabilityAppEnumRepresentation_optional __swiftcall ComposeRecipientHandleAvailabilityAppEnumRepresentation.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_21565710C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ComposeRecipientHandleAvailabilityAppEnumRepresentation.rawValue.getter()
{
  v1 = 0x616C696176616E75;
  if (*v0 != 1)
  {
    v1 = 0x6E776F6E6B6E75;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C62616C69617661;
  }
}

void sub_215641498(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000065;
  v4 = 0xEB00000000656C62;
  v5 = 0x616C696176616E75;
  if (v2 != 1)
  {
    v5 = 0x6E776F6E6B6E75;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6C62616C69617661;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_215641504(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x616C696176616E75;
  v4 = 0xEB00000000656C62;
  if (v2 != 1)
  {
    v3 = 0x6E776F6E6B6E75;
    v4 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6C62616C69617661;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE900000000000065;
  }

  v7 = 0x616C696176616E75;
  v8 = 0xEB00000000656C62;
  if (*a2 != 1)
  {
    v7 = 0x6E776F6E6B6E75;
    v8 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6C62616C69617661;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE900000000000065;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_21565713C();
  }

  return v11 & 1;
}

uint64_t sub_215641618()
{
  v1 = *v0;
  sub_21565719C();
  sub_215656E8C();

  return sub_2156571BC();
}

uint64_t sub_2156416C8()
{
  *v0;
  *v0;
  sub_215656E8C();
}

uint64_t sub_215641764()
{
  v1 = *v0;
  sub_21565719C();
  sub_215656E8C();

  return sub_2156571BC();
}

uint64_t static ComposeRecipientHandleAvailabilityAppEnumRepresentation.enumIdentifier.getter()
{
  swift_beginAccess();
  v0 = qword_27CA68018;

  return v0;
}

uint64_t static ComposeRecipientHandleAvailabilityAppEnumRepresentation.enumIdentifier.setter(uint64_t a1, char *a2)
{
  swift_beginAccess();
  qword_27CA68018 = a1;
  off_27CA68020 = a2;
}

uint64_t sub_215641924()
{
  swift_beginAccess();
  v0 = qword_27CA68018;

  return v0;
}

uint64_t ComposeRecipientHandleAvailabilityAppEnumRepresentation.description.getter()
{
  v1 = 0xEB00000000656C62;
  v2 = 0x616C696176616E75;
  if (*v0 != 1)
  {
    v2 = 0x6E776F6E6B6E75;
    v1 = 0xE700000000000000;
  }

  if (*v0)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0x6C62616C69617661;
  }

  if (*v0)
  {
    v4 = v1;
  }

  else
  {
    v4 = 0xE900000000000065;
  }

  MEMORY[0x21606D140](v3, v4);

  return 46;
}

uint64_t sub_215641B74()
{
  v1 = 0xEB00000000656C62;
  v2 = 0x616C696176616E75;
  if (*v0 != 1)
  {
    v2 = 0x6E776F6E6B6E75;
    v1 = 0xE700000000000000;
  }

  if (*v0)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0x6C62616C69617661;
  }

  if (*v0)
  {
    v4 = v1;
  }

  else
  {
    v4 = 0xE900000000000065;
  }

  MEMORY[0x21606D140](v3, v4);

  return 46;
}

unint64_t sub_215641C40()
{
  result = qword_27CA68028;
  if (!qword_27CA68028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA68028);
  }

  return result;
}

unint64_t sub_215641C98()
{
  result = qword_27CA68030;
  if (!qword_27CA68030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA68030);
  }

  return result;
}

unint64_t sub_215641CF0()
{
  result = qword_27CA68038;
  if (!qword_27CA68038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA68038);
  }

  return result;
}

unint64_t sub_215641D48()
{
  result = qword_27CA68040;
  if (!qword_27CA68040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA68040);
  }

  return result;
}