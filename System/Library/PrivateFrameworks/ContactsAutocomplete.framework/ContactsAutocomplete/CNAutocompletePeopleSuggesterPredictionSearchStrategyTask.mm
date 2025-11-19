@interface CNAutocompletePeopleSuggesterPredictionSearchStrategyTask
@end

@implementation CNAutocompletePeopleSuggesterPredictionSearchStrategyTask

NSObject *__76___CNAutocompletePeopleSuggesterPredictionSearchStrategyTask_convertResults__block_invoke(uint64_t a1, void *a2)
{
  v58 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 recipients];
  v5 = [v4 count];

  if (v5 == 1)
  {
    v7 = [v3 recipients];
    v6 = [v7 firstObject];

    v8 = [v6 displayName];
    v9 = v8;
    if (!v8 || ![v8 length])
    {
      v11 = CNALoggingContextDebug();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v53 = v3;
        _os_log_impl(&dword_2155FE000, v11, OS_LOG_TYPE_DEFAULT, "Predictions: Invalid result: no display name for %@", buf, 0xCu);
      }

      v20 = 0;
      goto LABEL_31;
    }

    v10 = [v6 handle];
    v11 = v10;
    if (v10 && [v10 length])
    {
      v12 = *(a1 + 32);
      v13 = [objc_opt_class() _addressTypeFromHandle:v11];
      if (v13)
      {
        v14 = v13;
        if (![*(a1 + 40) containsObject:v11])
        {
          [*(a1 + 40) addObject:v11];
          v31 = objc_alloc_init(CNAutocompleteResultValue);
          [(CNAutocompleteResultValue *)v31 setAddress:v11];
          [(CNAutocompleteResultValue *)v31 setAddressType:v14];
          v32 = [*(a1 + 48) duetResultWithDisplayName:v9 value:v31 contactIdentifier:0];
          [v32 setPsSuggestion:v3];
          v33 = [v6 contact];
          v15 = v33;
          if (v33)
          {
            v34 = [v33 identifier];
            v41 = v32;
            v35 = *(*(a1 + 32) + 32);
            v49[0] = MEMORY[0x277D85DD0];
            v49[1] = 3221225472;
            v49[2] = __76___CNAutocompletePeopleSuggesterPredictionSearchStrategyTask_convertResults__block_invoke_79;
            v49[3] = &unk_2781C4DA0;
            v50 = v35;
            v51 = v34;
            v36 = v34;
            v37 = v35;
            [v41 setContactProvider:v49];

            v32 = v41;
          }

          v38 = CNALoggingContextDebug();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412802;
            v53 = v9;
            v54 = 2112;
            v55 = v11;
            v56 = 2112;
            v57 = v32;
            _os_log_impl(&dword_2155FE000, v38, OS_LOG_TYPE_DEFAULT, "Predictions: %@ <%@>: %@", buf, 0x20u);
          }

          v45[0] = MEMORY[0x277D85DD0];
          v45[1] = 3221225472;
          v45[2] = __76___CNAutocompletePeopleSuggesterPredictionSearchStrategyTask_convertResults__block_invoke_81;
          v45[3] = &unk_2781C4F28;
          v48 = *(a1 + 64);
          v46 = *(a1 + 56);
          v47 = v31;
          v39 = v31;
          [v32 addDiagnosticLog:v45];
          v40 = v47;
          v20 = v32;

          goto LABEL_30;
        }

        v15 = CNALoggingContextDebug();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v53 = v11;
          v54 = 2112;
          v55 = v3;
          v16 = "Predictions: Duplicate identifier %@. Skipping %@.";
          v17 = v15;
          v18 = 22;
LABEL_28:
          _os_log_impl(&dword_2155FE000, v17, OS_LOG_TYPE_DEFAULT, v16, buf, v18);
        }

LABEL_29:
        v20 = 0;
LABEL_30:

LABEL_31:
        goto LABEL_32;
      }

      v15 = CNALoggingContextDebug();
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_29;
      }

      *buf = 138412290;
      v53 = v3;
      v16 = "Predictions: Invalid result: no handle type for %@";
    }

    else
    {
      v15 = CNALoggingContextDebug();
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_29;
      }

      *buf = 138412290;
      v53 = v3;
      v16 = "Predictions: Invalid result: no handle for %@";
    }

    v17 = v15;
    v18 = 12;
    goto LABEL_28;
  }

  if (!v5)
  {
    v6 = CNALoggingContextDebug();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2155FE000, v6, OS_LOG_TYPE_DEFAULT, "Predictions: No recipient included in returned _PSSuggestion", buf, 2u);
    }

    goto LABEL_24;
  }

  v19 = *(a1 + 32);
  v6 = [objc_opt_class() _identifierForGroupResultSuggestion:v3];
  if ([*(a1 + 40) containsObject:v6])
  {
    v9 = CNALoggingContextDebug();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v53 = v6;
      v54 = 2112;
      v55 = v3;
      _os_log_impl(&dword_2155FE000, v9, OS_LOG_TYPE_DEFAULT, "Predictions: Duplicate group identifier %@. Skipping %@.", buf, 0x16u);
    }

    v20 = 0;
  }

  else
  {
    [*(a1 + 40) addObject:v6];
    if (![*(*(a1 + 32) + 24) shouldIncludeGroupResults])
    {
LABEL_24:
      v20 = 0;
      goto LABEL_33;
    }

    v21 = *(a1 + 32);
    v22 = objc_opt_class();
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __76___CNAutocompletePeopleSuggesterPredictionSearchStrategyTask_convertResults__block_invoke_108;
    aBlock[3] = &unk_2781C4F50;
    v23 = v3;
    v43 = v23;
    v44 = v22;
    v24 = _Block_copy(aBlock);
    v25 = *(a1 + 48);
    v26 = [v23 groupName];
    v20 = [v25 duetResultWithDisplayName:v26 value:0 contactIdentifier:0];

    [v20 setResultType:1];
    [v20 setIdentifier:v6];
    [v20 setMembersProvider:v24];
    [v20 setPsSuggestion:v23];
    v27 = CNALoggingContextDebug();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = [v23 groupName];
      *buf = 138412802;
      v53 = v20;
      v54 = 2112;
      v55 = v28;
      v56 = 2112;
      v57 = v6;
      _os_log_impl(&dword_2155FE000, v27, OS_LOG_TYPE_DEFAULT, "Predictions: %@ for displayName:%@ and identifier %@", buf, 0x20u);
    }

    v9 = v43;
  }

LABEL_32:

LABEL_33:
  v29 = *MEMORY[0x277D85DE8];

  return v20;
}

id __76___CNAutocompletePeopleSuggesterPredictionSearchStrategyTask_convertResults__block_invoke_81(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB68] string];
  [v2 appendString:@"=== Important Instructions for Collecting Duet Logs ===\n"];
  [v2 appendString:@"This result includes predictive information contributed by CoreDuet. To collect information on why this result was predicted:\n\n"];
  [v2 appendString:@"1. Run the following command on the machine that has the issue:\n\n"];
  if (*(a1 + 48) == 1)
  {
    [v2 appendFormat:@"pstool zkw_suggestion -b %@\n\n", *(a1 + 32)];
  }

  else
  {
    v3 = [*(a1 + 40) address];
    v4 = [*(a1 + 40) address];
    [v2 appendFormat:@"cdinteracttool query -predicate sender.identifier == '%@' OR (ANY recipients.identifier == '%@')\n\n", v3, v4];
  }

  [v2 appendString:{@"2. Review the output of this command, checking for any privacy concerns.\n\n"}];
  [v2 appendString:{@"3. If there are no privacy concerns with the output, attach it to a radar filed against CoreDuet | PeopleSuggester (rdar://new/problem/component=CoreDuet&version=PeopleSuggester).\n"}];
  [v2 appendString:@"=======================================================\n"];

  return v2;
}

id __76___CNAutocompletePeopleSuggesterPredictionSearchStrategyTask_convertResults__block_invoke_108(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v3 = [*(a1 + 32) recipients];
  v4 = [v3 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v18 + 1) + 8 * i);
        v9 = [v8 displayName];
        v10 = *(a1 + 40);
        v11 = [v8 handle];
        v12 = [v10 _addressTypeFromHandle:v11];

        if (v12)
        {
          v13 = [v8 handle];
          v14 = [CNAutocompleteResult messagesResultWithAddress:v13 displayName:v9 nameComponents:0 resultType:0 addressType:v12 identifier:0 contactProvider:0 groupMembersProvider:0 userInfo:0];

          [v2 addObject:v14];
        }

        else
        {
          v14 = CNALoggingContextDebug();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v15 = [v8 handle];
            *buf = 138412290;
            v23 = v15;
            _os_log_impl(&dword_2155FE000, v14, OS_LOG_TYPE_DEFAULT, "Predictions: Unknown addressType for groupMember handle: %@", buf, 0xCu);
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v5);
  }

  v16 = *MEMORY[0x277D85DE8];

  return v2;
}

@end