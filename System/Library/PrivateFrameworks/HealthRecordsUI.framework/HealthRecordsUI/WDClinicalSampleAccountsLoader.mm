@interface WDClinicalSampleAccountsLoader
- (BOOL)_triggerIngestOfDataBatch:(id)a3 accountIdentifier:(id)a4 error:(id *)a5;
- (NSArray)cachedAccounts;
- (WDClinicalSampleAccountsLoader)initWithProfile:(id)a3;
- (id)_createTemporaryFileForDataBatch:(id)a3 error:(id *)a4;
- (id)_parseAccounts;
- (id)_sampleAccountForGatewayWithExternalID:(id)a3 error:(id *)a4;
- (id)providerForSampleDataSearchResultWithExternalID:(id)a3 error:(id *)a4;
- (id)sampleAccountsAsSearchResults;
- (void)_createAccountAndTriggerIngestForDataBatch:(id)a3 account:(id)a4 completion:(id)a5;
- (void)loadFirstSampleAccountDataBatchForGatewayWithExternalID:(id)a3 completion:(id)a4;
@end

@implementation WDClinicalSampleAccountsLoader

- (WDClinicalSampleAccountsLoader)initWithProfile:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = WDClinicalSampleAccountsLoader;
  v6 = [(WDClinicalSampleAccountsLoader *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_profile, a3);
  }

  return v7;
}

- (void)loadFirstSampleAccountDataBatchForGatewayWithExternalID:(id)a3 completion:(id)a4
{
  v6 = a4;
  v12 = 0;
  v7 = [(WDClinicalSampleAccountsLoader *)self _sampleAccountForGatewayWithExternalID:a3 error:&v12];
  v8 = v12;
  if (v7)
  {
    v9 = [v7 batches];
    v10 = [v9 firstObject];

    if (v10)
    {
      [(WDClinicalSampleAccountsLoader *)self _createAccountAndTriggerIngestForDataBatch:v10 account:v7 completion:v6];
    }

    else
    {
      v11 = [MEMORY[0x1E696ABC0] hk_error:3 description:@"There are no sample data batches for this account"];

      v6[2](v6, 0, v11);
      v8 = v11;
    }
  }

  else
  {
    v6[2](v6, 0, v8);
  }
}

- (id)_sampleAccountForGatewayWithExternalID:(id)a3 error:(id *)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a3;
  [(WDClinicalSampleAccountsLoader *)self cachedAccounts];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = v22 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        v12 = [v11 provider];
        v13 = [v12 gateway];
        v14 = [v13 identifier];
        v15 = [v5 isEqualToString:v14];

        if (v15)
        {
          v16 = v11;

          goto LABEL_11;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  [MEMORY[0x1E696ABC0] hk_assignError:a4 code:3 description:{@"No matching cached sample account found, please start over"}];
  v16 = 0;
LABEL_11:

  return v16;
}

- (void)_createAccountAndTriggerIngestForDataBatch:(id)a3 account:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = MEMORY[0x1E69A3F10];
  v11 = a4;
  v12 = [v10 alloc];
  v13 = [(HRProfile *)self->_profile healthStore];
  v38 = [v12 initWithHealthStore:v13];

  v37 = [v11 provider];
  v36 = [v37 gateway];
  v27 = [v36 title];
  v35 = [v11 provider];
  v34 = [v35 gateway];
  v33 = [v34 properties];
  v24 = [v33 objectForKeyedSubscript:@"subtitle"];
  v32 = [v11 provider];
  v31 = [v32 gateway];
  v28 = [v31 properties];
  v21 = [v28 objectForKeyedSubscript:@"description"];
  v26 = [v11 provider];
  v25 = [v26 gateway];
  v22 = [v25 properties];
  v14 = [v22 objectForKeyedSubscript:@"country"];
  v15 = [v11 provider];
  v16 = [v15 gateway];
  v17 = [v16 FHIRVersion];
  v18 = [v11 provider];

  v19 = [v18 gateway];
  v20 = [v19 identifier];
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __96__WDClinicalSampleAccountsLoader__createAccountAndTriggerIngestForDataBatch_account_completion___block_invoke;
  v39[3] = &unk_1E83DCDD8;
  v40 = v8;
  v41 = v9;
  v39[4] = self;
  v30 = v8;
  v23 = v9;
  [v38 createStaticAccountWithTitle:v27 subtitle:v24 description:v21 countryCode:v14 fhirVersion:v17 onlyIfNeededForSimulatedGatewayID:v20 completion:v39];
}

void __96__WDClinicalSampleAccountsLoader__createAccountAndTriggerIngestForDataBatch_account_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v11 = *(a1 + 48);
  v9 = v6;
  v10 = *(a1 + 40);
  v7 = v6;
  v8 = v5;
  HKDispatchAsyncOnGlobalConcurrentQueue();
}

void __96__WDClinicalSampleAccountsLoader__createAccountAndTriggerIngestForDataBatch_account_completion___block_invoke_2(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v3 = a1[6];
    v4 = a1[7];
    v5 = [v2 identifier];
    v8 = 0;
    [v3 _triggerIngestOfDataBatch:v4 accountIdentifier:v5 error:&v8];
    v6 = v8;

    (*(a1[8] + 16))();
  }

  else
  {
    v7 = *(a1[8] + 16);

    v7();
  }
}

- (id)_createTemporaryFileForDataBatch:(id)a3 error:(id *)a4
{
  v20[1] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696ACB0];
  v19 = @"resources";
  v6 = [a3 resourceObjectsByResourceType];
  v20[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
  v8 = [v5 dataWithJSONObject:v7 options:0 error:a4];

  if (v8)
  {
    v9 = MEMORY[0x1E696AEC0];
    v10 = [MEMORY[0x1E696AFB0] UUID];
    v11 = [v10 UUIDString];
    v12 = [v9 stringWithFormat:@"%@_SimulatorSampleData", v11];
    v13 = [v12 stringByAppendingPathExtension:@"json"];

    v14 = NSTemporaryDirectory();
    v15 = [v14 stringByAppendingPathComponent:v13];

    v16 = [MEMORY[0x1E695DFF8] fileURLWithPath:v15];
    if ([v8 writeToURL:v16 options:1 error:a4])
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (BOOL)_triggerIngestOfDataBatch:(id)a3 accountIdentifier:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = [(WDClinicalSampleAccountsLoader *)self _createTemporaryFileForDataBatch:a3 error:a5];
  if (v9)
  {
    v10 = [MEMORY[0x1E696AC00] fileHandleForReadingFromURL:v9 error:a5];
    v11 = v10 != 0;
    if (v10)
    {
      v12 = objc_alloc(MEMORY[0x1E69A3F38]);
      v13 = [(HRProfile *)self->_profile healthStore];
      v14 = [v12 initWithHealthStore:v13];

      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __84__WDClinicalSampleAccountsLoader__triggerIngestOfDataBatch_accountIdentifier_error___block_invoke;
      v16[3] = &unk_1E83DCE00;
      v16[4] = self;
      v17 = v9;
      [v14 ingestHealthRecordsWithFHIRDocumentHandle:v10 accountIdentifier:v8 options:0 completion:v16];
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void __84__WDClinicalSampleAccountsLoader__triggerIngestOfDataBatch_accountIdentifier_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    if (([v5 taskSuccess] & 1) == 0)
    {
      _HKInitializeLogging();
      v7 = *MEMORY[0x1E696B948];
      if (os_log_type_enabled(*MEMORY[0x1E696B948], OS_LOG_TYPE_ERROR))
      {
        __84__WDClinicalSampleAccountsLoader__triggerIngestOfDataBatch_accountIdentifier_error___block_invoke_cold_1(a1, v7, v5);
      }
    }
  }

  else
  {
    _HKInitializeLogging();
    v8 = *MEMORY[0x1E696B948];
    if (os_log_type_enabled(*MEMORY[0x1E696B948], OS_LOG_TYPE_ERROR))
    {
      __84__WDClinicalSampleAccountsLoader__triggerIngestOfDataBatch_accountIdentifier_error___block_invoke_cold_2(a1, v6, v8);
    }
  }

  v9 = [MEMORY[0x1E696AC08] defaultManager];
  v10 = *(a1 + 40);
  v14 = 0;
  v11 = [v9 removeItemAtURL:v10 error:&v14];
  v12 = v14;

  if ((v11 & 1) == 0)
  {
    _HKInitializeLogging();
    v13 = *MEMORY[0x1E696B948];
    if (os_log_type_enabled(*MEMORY[0x1E696B948], OS_LOG_TYPE_ERROR))
    {
      __84__WDClinicalSampleAccountsLoader__triggerIngestOfDataBatch_accountIdentifier_error___block_invoke_cold_3(v12, v13);
    }
  }
}

- (id)providerForSampleDataSearchResultWithExternalID:(id)a3 error:(id *)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  [(WDClinicalSampleAccountsLoader *)self cachedAccounts];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = v22 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        v13 = [v12 provider];
        v14 = [v13 identifier];
        v15 = [v6 isEqualToString:v14];

        if (v15)
        {
          v17 = [MEMORY[0x1E696BFB8] localDevelopmentSampleBrand];
          v16 = [v12 asClinicalProviderWithBrand:v17];

          goto LABEL_11;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  [MEMORY[0x1E696ABC0] hk_assignError:a4 code:3 description:{@"No matching cached sample account found, please start over"}];
  v16 = 0;
LABEL_11:

  return v16;
}

- (id)sampleAccountsAsSearchResults
{
  v34 = *MEMORY[0x1E69E9840];
  v2 = [(WDClinicalSampleAccountsLoader *)self cachedAccounts];
  v16 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v2, "count")}];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = v2;
  v17 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v17)
  {
    v15 = *v30;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v30 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v29 + 1) + 8 * i);
        v5 = objc_alloc(MEMORY[0x1E69A3F58]);
        v27 = [v4 provider];
        v28 = [v27 identifier];
        v26 = [MEMORY[0x1E696AFB0] UUID];
        v6 = [v26 UUIDString];
        v25 = [v4 provider];
        v20 = [v25 title];
        v24 = [v4 provider];
        v23 = [v24 properties];
        v18 = [v23 objectForKeyedSubscript:@"subtitle"];
        v22 = [v4 provider];
        v21 = [v22 properties];
        v7 = [v21 objectForKeyedSubscript:@"location"];
        v8 = [v4 provider];
        v9 = [v8 properties];
        v10 = [v9 objectForKeyedSubscript:@"country"];
        v11 = [MEMORY[0x1E696BFB8] localDevelopmentSampleBrand];
        v12 = [v4 provider];
        v19 = [v5 initWithExternalID:v28 batchID:v6 title:v20 subtitle:v18 location:v7 supported:1 countryCode:v10 brand:v11 minCompatibleAPIVersion:{objc_msgSend(v12, "minCompatibleAPIVersion")}];

        [v16 addObject:v19];
      }

      v17 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v17);
  }

  return v16;
}

- (NSArray)cachedAccounts
{
  cachedAccounts = self->_cachedAccounts;
  if (!cachedAccounts)
  {
    v4 = [(WDClinicalSampleAccountsLoader *)self _parseAccounts];
    [(WDClinicalSampleAccountsLoader *)self setCachedAccounts:v4];

    cachedAccounts = self->_cachedAccounts;
  }

  return cachedAccounts;
}

- (id)_parseAccounts
{
  v26 = *MEMORY[0x1E69E9840];
  v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = [objc_opt_class() knownAccountFiles];
  v2 = [obj countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v20;
    while (2)
    {
      v5 = 0;
      do
      {
        if (*v20 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v19 + 1) + 8 * v5);
        v7 = objc_alloc_init(MEMORY[0x1E69A3F70]);
        v8 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
        v9 = [v8 URLForResource:v6 withExtension:@"json"];
        v18 = 0;
        v10 = [v7 parseAccountsFromFile:v9 error:&v18];
        v11 = v18;
        if (v10)
        {
          [v17 addObjectsFromArray:v10];
        }

        else
        {
          _HKInitializeLogging();
          v12 = HKLogWellnessDashboard();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v24 = v11;
            _os_log_error_impl(&dword_1D101F000, v12, OS_LOG_TYPE_ERROR, "Error parsing Simulator sample accounts: %{public}@", buf, 0xCu);
          }
        }

        if (!v10)
        {

          v14 = MEMORY[0x1E695E0F0];
          v13 = v17;
          goto LABEL_16;
        }

        ++v5;
      }

      while (v3 != v5);
      v3 = [obj countByEnumeratingWithState:&v19 objects:v25 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  v13 = v17;
  v14 = v17;
LABEL_16:

  return v14;
}

void __84__WDClinicalSampleAccountsLoader__triggerIngestOfDataBatch_accountIdentifier_error___block_invoke_cold_1(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [a3 taskError];
  v7 = 138543618;
  v8 = v4;
  v9 = 2114;
  v10 = v6;
  _os_log_error_impl(&dword_1D101F000, v5, OS_LOG_TYPE_ERROR, "%{public}@ error triggering ingestion for Simulator sample account: %{public}@", &v7, 0x16u);
}

void __84__WDClinicalSampleAccountsLoader__triggerIngestOfDataBatch_accountIdentifier_error___block_invoke_cold_2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = 138543618;
  v5 = v3;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_1D101F000, log, OS_LOG_TYPE_ERROR, "%{public}@ XPC error triggering ingestion for Simulator sample account: %{public}@", &v4, 0x16u);
}

void __84__WDClinicalSampleAccountsLoader__triggerIngestOfDataBatch_accountIdentifier_error___block_invoke_cold_3(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1D101F000, a2, OS_LOG_TYPE_ERROR, "Failed to delete Simulator sample data: %{public}@", &v2, 0xCu);
}

@end