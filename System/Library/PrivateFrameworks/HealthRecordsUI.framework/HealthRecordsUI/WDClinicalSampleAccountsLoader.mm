@interface WDClinicalSampleAccountsLoader
- (BOOL)_triggerIngestOfDataBatch:(id)batch accountIdentifier:(id)identifier error:(id *)error;
- (NSArray)cachedAccounts;
- (WDClinicalSampleAccountsLoader)initWithProfile:(id)profile;
- (id)_createTemporaryFileForDataBatch:(id)batch error:(id *)error;
- (id)_parseAccounts;
- (id)_sampleAccountForGatewayWithExternalID:(id)d error:(id *)error;
- (id)providerForSampleDataSearchResultWithExternalID:(id)d error:(id *)error;
- (id)sampleAccountsAsSearchResults;
- (void)_createAccountAndTriggerIngestForDataBatch:(id)batch account:(id)account completion:(id)completion;
- (void)loadFirstSampleAccountDataBatchForGatewayWithExternalID:(id)d completion:(id)completion;
@end

@implementation WDClinicalSampleAccountsLoader

- (WDClinicalSampleAccountsLoader)initWithProfile:(id)profile
{
  profileCopy = profile;
  v9.receiver = self;
  v9.super_class = WDClinicalSampleAccountsLoader;
  v6 = [(WDClinicalSampleAccountsLoader *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_profile, profile);
  }

  return v7;
}

- (void)loadFirstSampleAccountDataBatchForGatewayWithExternalID:(id)d completion:(id)completion
{
  completionCopy = completion;
  v12 = 0;
  v7 = [(WDClinicalSampleAccountsLoader *)self _sampleAccountForGatewayWithExternalID:d error:&v12];
  v8 = v12;
  if (v7)
  {
    batches = [v7 batches];
    firstObject = [batches firstObject];

    if (firstObject)
    {
      [(WDClinicalSampleAccountsLoader *)self _createAccountAndTriggerIngestForDataBatch:firstObject account:v7 completion:completionCopy];
    }

    else
    {
      v11 = [MEMORY[0x1E696ABC0] hk_error:3 description:@"There are no sample data batches for this account"];

      completionCopy[2](completionCopy, 0, v11);
      v8 = v11;
    }
  }

  else
  {
    completionCopy[2](completionCopy, 0, v8);
  }
}

- (id)_sampleAccountForGatewayWithExternalID:(id)d error:(id *)error
{
  v24 = *MEMORY[0x1E69E9840];
  dCopy = d;
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
        provider = [v11 provider];
        gateway = [provider gateway];
        identifier = [gateway identifier];
        v15 = [dCopy isEqualToString:identifier];

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

  [MEMORY[0x1E696ABC0] hk_assignError:error code:3 description:{@"No matching cached sample account found, please start over"}];
  v16 = 0;
LABEL_11:

  return v16;
}

- (void)_createAccountAndTriggerIngestForDataBatch:(id)batch account:(id)account completion:(id)completion
{
  batchCopy = batch;
  completionCopy = completion;
  v10 = MEMORY[0x1E69A3F10];
  accountCopy = account;
  v12 = [v10 alloc];
  healthStore = [(HRProfile *)self->_profile healthStore];
  v38 = [v12 initWithHealthStore:healthStore];

  provider = [accountCopy provider];
  gateway = [provider gateway];
  title = [gateway title];
  provider2 = [accountCopy provider];
  gateway2 = [provider2 gateway];
  properties = [gateway2 properties];
  v24 = [properties objectForKeyedSubscript:@"subtitle"];
  provider3 = [accountCopy provider];
  gateway3 = [provider3 gateway];
  properties2 = [gateway3 properties];
  v21 = [properties2 objectForKeyedSubscript:@"description"];
  provider4 = [accountCopy provider];
  gateway4 = [provider4 gateway];
  properties3 = [gateway4 properties];
  v14 = [properties3 objectForKeyedSubscript:@"country"];
  provider5 = [accountCopy provider];
  gateway5 = [provider5 gateway];
  fHIRVersion = [gateway5 FHIRVersion];
  provider6 = [accountCopy provider];

  gateway6 = [provider6 gateway];
  identifier = [gateway6 identifier];
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __96__WDClinicalSampleAccountsLoader__createAccountAndTriggerIngestForDataBatch_account_completion___block_invoke;
  v39[3] = &unk_1E83DCDD8;
  v40 = batchCopy;
  v41 = completionCopy;
  v39[4] = self;
  v30 = batchCopy;
  v23 = completionCopy;
  [v38 createStaticAccountWithTitle:title subtitle:v24 description:v21 countryCode:v14 fhirVersion:fHIRVersion onlyIfNeededForSimulatedGatewayID:identifier completion:v39];
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

- (id)_createTemporaryFileForDataBatch:(id)batch error:(id *)error
{
  v20[1] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696ACB0];
  v19 = @"resources";
  resourceObjectsByResourceType = [batch resourceObjectsByResourceType];
  v20[0] = resourceObjectsByResourceType;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
  v8 = [v5 dataWithJSONObject:v7 options:0 error:error];

  if (v8)
  {
    v9 = MEMORY[0x1E696AEC0];
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    v12 = [v9 stringWithFormat:@"%@_SimulatorSampleData", uUIDString];
    v13 = [v12 stringByAppendingPathExtension:@"json"];

    v14 = NSTemporaryDirectory();
    v15 = [v14 stringByAppendingPathComponent:v13];

    v16 = [MEMORY[0x1E695DFF8] fileURLWithPath:v15];
    if ([v8 writeToURL:v16 options:1 error:error])
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

- (BOOL)_triggerIngestOfDataBatch:(id)batch accountIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  v9 = [(WDClinicalSampleAccountsLoader *)self _createTemporaryFileForDataBatch:batch error:error];
  if (v9)
  {
    v10 = [MEMORY[0x1E696AC00] fileHandleForReadingFromURL:v9 error:error];
    v11 = v10 != 0;
    if (v10)
    {
      v12 = objc_alloc(MEMORY[0x1E69A3F38]);
      healthStore = [(HRProfile *)self->_profile healthStore];
      v14 = [v12 initWithHealthStore:healthStore];

      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __84__WDClinicalSampleAccountsLoader__triggerIngestOfDataBatch_accountIdentifier_error___block_invoke;
      v16[3] = &unk_1E83DCE00;
      v16[4] = self;
      v17 = v9;
      [v14 ingestHealthRecordsWithFHIRDocumentHandle:v10 accountIdentifier:identifierCopy options:0 completion:v16];
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

- (id)providerForSampleDataSearchResultWithExternalID:(id)d error:(id *)error
{
  v24 = *MEMORY[0x1E69E9840];
  dCopy = d;
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
        provider = [v12 provider];
        identifier = [provider identifier];
        v15 = [dCopy isEqualToString:identifier];

        if (v15)
        {
          localDevelopmentSampleBrand = [MEMORY[0x1E696BFB8] localDevelopmentSampleBrand];
          v16 = [v12 asClinicalProviderWithBrand:localDevelopmentSampleBrand];

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

  [MEMORY[0x1E696ABC0] hk_assignError:error code:3 description:{@"No matching cached sample account found, please start over"}];
  v16 = 0;
LABEL_11:

  return v16;
}

- (id)sampleAccountsAsSearchResults
{
  v34 = *MEMORY[0x1E69E9840];
  cachedAccounts = [(WDClinicalSampleAccountsLoader *)self cachedAccounts];
  v16 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(cachedAccounts, "count")}];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = cachedAccounts;
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
        provider = [v4 provider];
        identifier = [provider identifier];
        uUID = [MEMORY[0x1E696AFB0] UUID];
        uUIDString = [uUID UUIDString];
        provider2 = [v4 provider];
        title = [provider2 title];
        provider3 = [v4 provider];
        properties = [provider3 properties];
        v18 = [properties objectForKeyedSubscript:@"subtitle"];
        provider4 = [v4 provider];
        properties2 = [provider4 properties];
        v7 = [properties2 objectForKeyedSubscript:@"location"];
        provider5 = [v4 provider];
        properties3 = [provider5 properties];
        v10 = [properties3 objectForKeyedSubscript:@"country"];
        localDevelopmentSampleBrand = [MEMORY[0x1E696BFB8] localDevelopmentSampleBrand];
        provider6 = [v4 provider];
        v19 = [v5 initWithExternalID:identifier batchID:uUIDString title:title subtitle:v18 location:v7 supported:1 countryCode:v10 brand:localDevelopmentSampleBrand minCompatibleAPIVersion:{objc_msgSend(provider6, "minCompatibleAPIVersion")}];

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
    _parseAccounts = [(WDClinicalSampleAccountsLoader *)self _parseAccounts];
    [(WDClinicalSampleAccountsLoader *)self setCachedAccounts:_parseAccounts];

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