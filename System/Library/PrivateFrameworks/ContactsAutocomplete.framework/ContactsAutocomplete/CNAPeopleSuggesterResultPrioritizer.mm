@interface CNAPeopleSuggesterResultPrioritizer
@end

@implementation CNAPeopleSuggesterResultPrioritizer

uint64_t __46___CNAPeopleSuggesterResultPrioritizer_os_log__block_invoke()
{
  os_log_cn_once_object_1 = os_log_create("com.apple.contacts.autocomplete", "ranking");

  return MEMORY[0x2821F96F8]();
}

id __115___CNAPeopleSuggesterResultPrioritizer_applyPriorityOrderToResults_fetchRequest_andCompletePriorityResultsPromise___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 value];
  v3 = [v2 address];

  return v3;
}

id __115___CNAPeopleSuggesterResultPrioritizer_applyPriorityOrderToResults_fetchRequest_andCompletePriorityResultsPromise___block_invoke_20(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(get_PSSuggesterClass_1());
  v3 = objc_alloc_init(get_PSPredictionContextClass());
  [v3 setBundleID:*(a1 + 32)];
  [v3 setAccountIdentifier:*(a1 + 40)];
  [v3 setSearchPrefix:*(a1 + 48)];
  v4 = [*(a1 + 56) array];
  v5 = *(a1 + 64);
  v6 = [objc_opt_class() os_log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v13 = 138477827;
    v14 = v4;
    _os_log_impl(&dword_2155FE000, v6, OS_LOG_TYPE_INFO, "Suggestion ranking input: %{private}@", &v13, 0xCu);
  }

  v7 = [*(a1 + 56) array];
  v8 = [v2 rankedAutocompleteSuggestionsFromContext:v3 candidates:v7];

  v9 = *(a1 + 64);
  v10 = [objc_opt_class() os_log];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v13 = 138477827;
    v14 = v8;
    _os_log_impl(&dword_2155FE000, v10, OS_LOG_TYPE_INFO, "Suggestion ranking output: %{private}@", &v13, 0xCu);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v8;
}

uint64_t __84___CNAPeopleSuggesterResultPrioritizer_partitionCandidatesForRanking_givenPrefixes___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) resultIdentifierIsValidMessagesChatGuid:v3])
  {
    v4 = *(a1 + 32);
    v5 = [objc_opt_class() os_log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __84___CNAPeopleSuggesterResultPrioritizer_partitionCandidatesForRanking_givenPrefixes___block_invoke_cold_6();
    }

    v6 = 1;
  }

  else
  {
    v7 = [v3 value];
    v8 = [v7 address];

    if (v8)
    {
      v9 = *(a1 + 40);
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __84___CNAPeopleSuggesterResultPrioritizer_partitionCandidatesForRanking_givenPrefixes___block_invoke_26;
      v31[3] = &unk_2781C3FD8;
      v10 = v3;
      v32 = v10;
      if ([v9 _cn_any:v31])
      {
        v11 = *(a1 + 32);
        v12 = [objc_opt_class() os_log];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          __84___CNAPeopleSuggesterResultPrioritizer_partitionCandidatesForRanking_givenPrefixes___block_invoke_cold_4();
        }

        v6 = 1;
      }

      else
      {
        v14 = *(a1 + 40);
        v29[0] = MEMORY[0x277D85DD0];
        v29[1] = 3221225472;
        v29[2] = __84___CNAPeopleSuggesterResultPrioritizer_partitionCandidatesForRanking_givenPrefixes___block_invoke_28;
        v29[3] = &unk_2781C3FD8;
        v15 = v10;
        v30 = v15;
        if ([v14 _cn_any:v29])
        {
          v16 = *(a1 + 32);
          v17 = [objc_opt_class() os_log];
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            __84___CNAPeopleSuggesterResultPrioritizer_partitionCandidatesForRanking_givenPrefixes___block_invoke_cold_3();
          }

          v6 = 1;
        }

        else
        {
          v23 = MEMORY[0x277D85DD0];
          v24 = 3221225472;
          v25 = __84___CNAPeopleSuggesterResultPrioritizer_partitionCandidatesForRanking_givenPrefixes___block_invoke_29;
          v26 = &unk_2781C4D08;
          v18 = *(a1 + 40);
          v27 = *(a1 + 32);
          v28 = v15;
          v6 = [v18 _cn_any:&v23];
          v19 = *(a1 + 32);
          v20 = [objc_opt_class() os_log];
          v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG);
          if (v6)
          {
            if (v21)
            {
              __84___CNAPeopleSuggesterResultPrioritizer_partitionCandidatesForRanking_givenPrefixes___block_invoke_cold_2();
            }
          }

          else if (v21)
          {
            __84___CNAPeopleSuggesterResultPrioritizer_partitionCandidatesForRanking_givenPrefixes___block_invoke_cold_1();
          }
        }

        v12 = v30;
      }

      v5 = v32;
    }

    else
    {
      v13 = *(a1 + 32);
      v5 = [objc_opt_class() os_log];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        __84___CNAPeopleSuggesterResultPrioritizer_partitionCandidatesForRanking_givenPrefixes___block_invoke_cold_5();
      }

      v6 = 0;
    }
  }

  return v6;
}

uint64_t __84___CNAPeopleSuggesterResultPrioritizer_partitionCandidatesForRanking_givenPrefixes___block_invoke_26(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 displayName];
  v5 = [v4 _cn_hasPrefix:v3];

  return v5;
}

uint64_t __84___CNAPeopleSuggesterResultPrioritizer_partitionCandidatesForRanking_givenPrefixes___block_invoke_28(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 value];
  v5 = [v4 address];
  v6 = [v5 _cn_hasPrefix:v3];

  return v6;
}

uint64_t __84___CNAPeopleSuggesterResultPrioritizer_partitionCandidatesForRanking_givenPrefixes___block_invoke_29(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v3 nameComponents];
  v6 = [v2 resultMatchesPrefix:v4 inNameComponentsOfResult:v5];

  return v6;
}

uint64_t __63___CNAPeopleSuggesterResultPrioritizer_partitionStewieResults___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

void __72___CNAPeopleSuggesterResultPrioritizer_bundleIdentifierOfCurrentProcess__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) makeBundleIdentifierOfCurrentProcess];
  v1 = [v3 copy];
  v2 = bundleIdentifierOfCurrentProcess_cn_once_object_20;
  bundleIdentifierOfCurrentProcess_cn_once_object_20 = v1;
}

void __84___CNAPeopleSuggesterResultPrioritizer_partitionCandidatesForRanking_givenPrefixes___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1(&dword_2155FE000, v0, v1, "Result will NOT be ranked (default): %{private}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __84___CNAPeopleSuggesterResultPrioritizer_partitionCandidatesForRanking_givenPrefixes___block_invoke_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1(&dword_2155FE000, v0, v1, "Result will be ranked (inner prefix match): %{private}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __84___CNAPeopleSuggesterResultPrioritizer_partitionCandidatesForRanking_givenPrefixes___block_invoke_cold_3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1(&dword_2155FE000, v0, v1, "Result will be ranked (address prefix match): %{private}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __84___CNAPeopleSuggesterResultPrioritizer_partitionCandidatesForRanking_givenPrefixes___block_invoke_cold_4()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1(&dword_2155FE000, v0, v1, "Result will be ranked (display name prefix match): %{private}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __84___CNAPeopleSuggesterResultPrioritizer_partitionCandidatesForRanking_givenPrefixes___block_invoke_cold_5()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1(&dword_2155FE000, v0, v1, "Result will NOT be ranked (no address): %{private}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __84___CNAPeopleSuggesterResultPrioritizer_partitionCandidatesForRanking_givenPrefixes___block_invoke_cold_6()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1(&dword_2155FE000, v0, v1, "Result will be ranked (group chat): %{private}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end