@interface CNAutocompleteStewieSearch
- (id)executeRequest:(id)request completionHandler:(id)handler;
@end

@implementation CNAutocompleteStewieSearch

- (id)executeRequest:(id)request completionHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  currentEnvironment = [MEMORY[0x277CFBE10] currentEnvironment];
  schedulerProvider = [currentEnvironment schedulerProvider];
  backgroundScheduler = [schedulerProvider backgroundScheduler];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __63__CNAutocompleteStewieSearch_executeRequest_completionHandler___block_invoke;
  v14[3] = &unk_2781C4000;
  v15 = requestCopy;
  v16 = handlerCopy;
  v10 = requestCopy;
  v11 = handlerCopy;
  v12 = [backgroundScheduler performCancelableBlock:v14];

  return v12;
}

void __63__CNAutocompleteStewieSearch_executeRequest_completionHandler___block_invoke(uint64_t a1)
{
  v49 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CFBE10] currentEnvironment];
  v3 = [v2 stewie];
  v4 = [v3 isEmergencyEnabled];

  v5 = [MEMORY[0x277CFBE10] currentEnvironment];
  v6 = [v5 stewie];
  v7 = [v6 isAvocetEnabled];

  if (v4 & 1) != 0 || (v7)
  {
    v10 = CNALoggingContextDebug();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      *buf = 134217984;
      v46 = v11;
      _os_log_impl(&dword_2155FE000, v10, OS_LOG_TYPE_DEFAULT, "Executing request %p against Stewie contacts", buf, 0xCu);
    }

    v12 = [MEMORY[0x277CBEAA8] date];
    v13 = objc_opt_new();
    if (v4)
    {
      v14 = [MEMORY[0x277CFBE10] currentEnvironment];
      v15 = [v14 stewie];
      v16 = [v15 emergencyTerms];

      v43[0] = MEMORY[0x277D85DD0];
      v43[1] = 3221225472;
      v43[2] = __63__CNAutocompleteStewieSearch_executeRequest_completionHandler___block_invoke_3;
      v43[3] = &unk_2781C3FD8;
      v44 = *(a1 + 32);
      v17 = [v16 _cn_filter:v43];
      if ([v17 count])
      {
        v18 = [CNAutocompleteResultValue resultValueWithAddress:@"stewie:emergency:112911" addressType:4];
        v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        [v19 localizedStringForKey:@"EMERGENCY_SERVICES" value:&stru_282787720 table:@"Localized-Stewie"];
        v20 = v13;
        v21 = v16;
        v22 = v12;
        v24 = v23 = a1;
        v25 = [(CNAutocompleteResult *)CNAutocompleteStewieResult contactResultWithDisplayName:v24 value:v18 nameComponents:0 identifier:0];

        a1 = v23;
        v12 = v22;
        v16 = v21;
        v13 = v20;

        [v25 setSourceType:512];
        [v20 addObject:v25];
      }
    }

    if (v7)
    {
      v26 = [MEMORY[0x277CFBE10] currentEnvironment];
      v27 = [v26 stewie];
      v28 = [v27 avocetTerms];

      v38 = MEMORY[0x277D85DD0];
      v39 = 3221225472;
      v40 = __63__CNAutocompleteStewieSearch_executeRequest_completionHandler___block_invoke_2;
      v41 = &unk_2781C3FD8;
      v42 = *(a1 + 32);
      v29 = [v28 _cn_filter:&v38];
      if ([v29 count])
      {
        v30 = [CNAutocompleteResultValue resultValueWithAddress:@"stewie:roadside:0:autocomplete:" addressType:5];
        v31 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v32 = [v31 localizedStringForKey:@"ROADSIDE_ASSISTANCE" value:&stru_282787720 table:@"Localized-Avocet"];
        v33 = [(CNAutocompleteResult *)CNAutocompleteStewieResult contactResultWithDisplayName:v32 value:v30 nameComponents:0 identifier:0];

        [v33 setSourceType:512];
        [v13 addObject:v33];
      }
    }

    v34 = CNALoggingContextPerformance();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      v35 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v13, "count")}];
      [v12 timeIntervalSinceNow];
      *buf = 138412546;
      v46 = v35;
      v47 = 2048;
      v48 = v36 * -1000.0;
      _os_log_impl(&dword_2155FE000, v34, OS_LOG_TYPE_INFO, "Time to fetch %@ Stewie contacts: %.3fms", buf, 0x16u);
    }

    (*(*(a1 + 40) + 16))();
    v37 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v8 = *(*(a1 + 40) + 16);
    v9 = *MEMORY[0x277D85DE8];

    v8();
  }
}

uint64_t __63__CNAutocompleteStewieSearch_executeRequest_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 searchString];
  v5 = [v3 _cn_hasPrefix:v4];

  return v5;
}

uint64_t __63__CNAutocompleteStewieSearch_executeRequest_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 length];
  v5 = [*(a1 + 32) searchString];
  v6 = v5;
  if (v4 <= 3)
  {
    v7 = [v3 isEqualToString:v5];
LABEL_6:
    v9 = v7;

    goto LABEL_7;
  }

  v8 = [v5 length];

  if (v8 >= 4)
  {
    v6 = [*(a1 + 32) searchString];
    v7 = [v3 _cn_hasPrefix:v6];
    goto LABEL_6;
  }

  v9 = 0;
LABEL_7:

  return v9;
}

@end