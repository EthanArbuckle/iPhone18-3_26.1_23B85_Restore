@interface CNAutocompleteCoreDuetPredictionSearchStrategyTask
@end

@implementation CNAutocompleteCoreDuetPredictionSearchStrategyTask

id __69___CNAutocompleteCoreDuetPredictionSearchStrategyTask_convertResults__block_invoke(uint64_t a1, void *a2)
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = [a2 contact];
  v4 = [v3 displayName];
  v5 = v4;
  if (!v4 || ![v4 length])
  {
    v12 = CNALoggingContextDebug();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v13 = "Predictions: Invalid result: no display name";
      goto LABEL_12;
    }

LABEL_13:
    v14 = 0;
    goto LABEL_14;
  }

  v6 = [v3 identifier];
  if (!v6 || (v7 = v6, [v3 identifier], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "length"), v8, v7, !v9))
  {
    v12 = CNALoggingContextDebug();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v13 = "Predictions: Invalid result: no identifier";
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  v10 = *(a1 + 32);
  v11 = [v3 identifier];
  LODWORD(v10) = [v10 containsObject:v11];

  if (v10)
  {
    v12 = CNALoggingContextDebug();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v13 = "Predictions: Identifier already in use";
LABEL_12:
      _os_log_impl(&dword_2155FE000, v12, OS_LOG_TYPE_DEFAULT, v13, buf, 2u);
      goto LABEL_13;
    }

    goto LABEL_13;
  }

  v17 = *(*(a1 + 40) + 32);
  v18 = *MEMORY[0x277CFBD30];
  v19 = [v3 personId];
  LOBYTE(v18) = (*(v18 + 16))(v18, v19);

  if (v18)
  {
    goto LABEL_18;
  }

  v21 = [v3 personIdType];
  if (v21 == 1)
  {
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __69___CNAutocompleteCoreDuetPredictionSearchStrategyTask_convertResults__block_invoke_86;
    v28[3] = &unk_2781C4DA0;
    v29 = v3;
    v30 = v17;
    v20 = _Block_copy(v28);

    v12 = 0;
    v22 = v29;
LABEL_27:

    goto LABEL_28;
  }

  if (v21 != 2)
  {
    if (v21 == 3)
    {
      v12 = [v3 personId];
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __69___CNAutocompleteCoreDuetPredictionSearchStrategyTask_convertResults__block_invoke_84;
      aBlock[3] = &unk_2781C4DA0;
      v32 = v17;
      v33 = v3;
      v20 = _Block_copy(aBlock);

      v22 = v32;
    }

    else
    {
      v22 = CNALoggingContextDebug();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v35 = [v3 personIdType];
        _os_log_impl(&dword_2155FE000, v22, OS_LOG_TYPE_DEFAULT, "No identifier for personIdType: %lu", buf, 0xCu);
      }

      v20 = 0;
      v12 = 0;
    }

    goto LABEL_27;
  }

LABEL_18:
  v20 = 0;
  v12 = 0;
LABEL_28:
  v23 = [*(a1 + 40) resultValueForCDContact:v3];
  v14 = [*(a1 + 48) duetResultWithDisplayName:v5 value:v23 contactIdentifier:v12];
  v24 = CNALoggingContextDebug();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v35 = v14;
    v36 = 2112;
    v37 = v5;
    v38 = 2112;
    v39 = v12;
    _os_log_impl(&dword_2155FE000, v24, OS_LOG_TYPE_DEFAULT, "Created result: %@ for displayName:%@, identifier:%@", buf, 0x20u);
  }

  [v14 setContactProvider:v20];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __69___CNAutocompleteCoreDuetPredictionSearchStrategyTask_convertResults__block_invoke_88;
  v26[3] = &unk_2781C49A0;
  v27 = v23;
  v25 = v23;
  [v14 addDiagnosticLog:v26];

LABEL_14:
  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

id __69___CNAutocompleteCoreDuetPredictionSearchStrategyTask_convertResults__block_invoke_84(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = a2;
  v7 = [v5 personId];
  v14 = 0;
  v8 = [v4 unifiedContactWithIdentifier:v7 keysToFetch:v6 error:&v14];

  v9 = v14;
  v10 = CNALoggingContextDebug();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v16 = v8;
    v17 = 2112;
    v18 = v9;
    _os_log_impl(&dword_2155FE000, v10, OS_LOG_TYPE_DEFAULT, "Did fetch full contact: %@, err: %@", buf, 0x16u);
  }

  if (a3)
  {
    v11 = v9;
    *a3 = v9;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v8;
}

id __69___CNAutocompleteCoreDuetPredictionSearchStrategyTask_convertResults__block_invoke_86(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 personId];
  v8 = [v7 intValue];

  v9 = [MEMORY[0x277CBDA58] predicateForLegacyIdentifier:v8];
  v10 = CNALoggingContextDebug();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v23 = v9;
    _os_log_impl(&dword_2155FE000, v10, OS_LOG_TYPE_DEFAULT, "Fetching full contact from AB legacy ID with predicate %@", buf, 0xCu);
  }

  v11 = *(a1 + 40);
  v21 = 0;
  v12 = [v11 unifiedContactsMatchingPredicate:v9 keysToFetch:v6 error:&v21];

  v13 = v21;
  if (v12)
  {
    if ([v12 count] != 1)
    {
      v14 = CNALoggingContextDebug();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2155FE000, v14, OS_LOG_TYPE_DEFAULT, "Expecting one contact, will take the last one", buf, 2u);
      }
    }

    v15 = CNALoggingContextDebug();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = v12;
      _os_log_impl(&dword_2155FE000, v15, OS_LOG_TYPE_DEFAULT, "Got contacts: %@", buf, 0xCu);
    }

    v16 = [v12 lastObject];
  }

  else
  {
    v17 = CNALoggingContextDebug();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = v13;
      _os_log_impl(&dword_2155FE000, v17, OS_LOG_TYPE_DEFAULT, "Error fetching: %@", buf, 0xCu);
    }

    if (a3)
    {
      v18 = v13;
      v16 = 0;
      *a3 = v13;
    }

    else
    {
      v16 = 0;
    }
  }

  v19 = *MEMORY[0x277D85DE8];

  return v16;
}

id __69___CNAutocompleteCoreDuetPredictionSearchStrategyTask_convertResults__block_invoke_88(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB68] string];
  [v2 appendString:@"=== Important Instructions for Collecting Duet Logs ===\n"];
  [v2 appendString:@"This result includes predictive information contributed by CoreDuet. To collect information on why this result was predicted:\n\n"];
  [v2 appendString:@"1. Run the following command on the machine that has the issue:\n\n"];
  v3 = [*(a1 + 32) address];
  v4 = [*(a1 + 32) address];
  [v2 appendFormat:@"cdinteracttool query -predicate sender.identifier == '%@' OR (ANY recipients.identifier == '%@')\n\n", v3, v4];

  [v2 appendString:{@"2. Review the output of this command, checking for any privacy concerns.\n\n"}];
  [v2 appendString:{@"3. If there are no privacy concerns with the output, attach it to a radar filed against CoreDuet | PeopleSuggester (rdar://new/problem/component=CoreDuet&version=PeopleSuggester).\n"}];
  [v2 appendString:@"=======================================================\n"];

  return v2;
}

@end