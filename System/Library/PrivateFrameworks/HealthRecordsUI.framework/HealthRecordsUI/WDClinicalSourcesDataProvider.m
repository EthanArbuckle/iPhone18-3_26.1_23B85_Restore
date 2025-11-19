@interface WDClinicalSourcesDataProvider
+ (id)_logoCompletionOnMainQueue:(id)a3 cancellationToken:(id)a4;
+ (id)_objectCompletionOnMainQueue:(id)a3 cancellationToken:(id)a4;
- (HKHealthStore)healthStore;
- (WDClinicalSourcesDataProvider)init;
- (WDClinicalSourcesDataProvider)initWithHealthRecordsStore:(id)a3;
- (id)_fetchLogoForBrand:(id)a3 fallback:(id)a4 size:(double)a5 options:(unint64_t)a6 completion:(id)a7;
- (id)_logoForFallback:(id)a3 size:(double)a4;
- (id)_orderAccountsForDisplay:(id)a3;
- (id)appSourceRequestingAuthorizationForClinicalTypeWithBundleIdentifier:(id)a3;
- (id)fetchAccessedAccountsForDisplayWithCompletion:(id)a3;
- (id)fetchAccountsForDisplayWithCompletion:(id)a3;
- (id)formattedFullName:(id)a3 birthDate:(id)a4 useMultipleLines:(BOOL)a5;
- (id)nameAndFormattedBirthDateForAccountOwner:(id)a3 useMultipleLines:(BOOL)a4;
- (id)nameAndFormattedBirthDateForSignedClinicalDataSubject:(id)a3 useMultipleLines:(BOOL)a4;
- (id)sourcesRequestingAuthorizationForClinicalTypes;
- (void)_fetchAccountsForDisplayWithCompletion:(id)a3;
- (void)beginInitialLoginSessionForGateway:(id)a3 fromViewController:(id)a4 loginCancelledHandler:(id)a5 errorHandler:(id)a6;
- (void)beginReloginSessionForAccount:(id)a3 fromViewController:(id)a4 profile:(id)a5 loginCancelledHandler:(id)a6 errorHandler:(id)a7;
- (void)fetchAccountOwnerForSource:(id)a3 completion:(id)a4;
- (void)fetchSignedClinicalDataRecordWithIdentifier:(id)a3 completion:(id)a4;
@end

@implementation WDClinicalSourcesDataProvider

- (WDClinicalSourcesDataProvider)initWithHealthRecordsStore:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = WDClinicalSourcesDataProvider;
  v6 = [(WDClinicalSourcesDataProvider *)&v12 init];
  if (v6)
  {
    v7 = objc_alloc(MEMORY[0x1E69A3F10]);
    v8 = [v5 healthStore];
    v9 = [v7 initWithHealthStore:v8];
    clinicalAccountStore = v6->_clinicalAccountStore;
    v6->_clinicalAccountStore = v9;

    objc_storeStrong(&v6->_healthRecordsStore, a3);
  }

  return v6;
}

- (WDClinicalSourcesDataProvider)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (void)_fetchAccountsForDisplayWithCompletion:(id)a3
{
  v4 = a3;
  clinicalAccountStore = self->_clinicalAccountStore;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __72__WDClinicalSourcesDataProvider__fetchAccountsForDisplayWithCompletion___block_invoke;
  v7[3] = &unk_1E83DCFF0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(HKClinicalAccountStore *)clinicalAccountStore fetchAllAccountsWithCompletion:v7];
}

void __72__WDClinicalSourcesDataProvider__fetchAccountsForDisplayWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    _HKInitializeLogging();
    v7 = *MEMORY[0x1E696B948];
    if (os_log_type_enabled(*MEMORY[0x1E696B948], OS_LOG_TYPE_ERROR))
    {
      __72__WDClinicalSourcesDataProvider__fetchAccountsForDisplayWithCompletion___block_invoke_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }

    v5 = MEMORY[0x1E695E0F0];
  }

  v14 = *(a1 + 40);
  v15 = [*(a1 + 32) _orderAccountsForDisplay:v5];
  (*(v14 + 16))(v14, v15);
}

- (id)fetchAccountsForDisplayWithCompletion:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(WDCancellationToken);
  v6 = [objc_opt_class() _objectCompletionOnMainQueue:v4 cancellationToken:v5];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __71__WDClinicalSourcesDataProvider_fetchAccountsForDisplayWithCompletion___block_invoke;
  v9[3] = &unk_1E83DD018;
  v10 = v6;
  v7 = v6;
  [(WDClinicalSourcesDataProvider *)self _fetchAccountsForDisplayWithCompletion:v9];

  return v5;
}

- (id)fetchAccessedAccountsForDisplayWithCompletion:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(WDCancellationToken);
  v6 = [objc_opt_class() _objectCompletionOnMainQueue:v4 cancellationToken:v5];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __79__WDClinicalSourcesDataProvider_fetchAccessedAccountsForDisplayWithCompletion___block_invoke;
  v9[3] = &unk_1E83DD018;
  v10 = v6;
  v7 = v6;
  [(WDClinicalSourcesDataProvider *)self _fetchAccountsForDisplayWithCompletion:v9];

  return v5;
}

void __79__WDClinicalSourcesDataProvider_fetchAccessedAccountsForDisplayWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 hk_filter:&__block_literal_global_1];
  (*(*(a1 + 32) + 16))();
}

BOOL __79__WDClinicalSourcesDataProvider_fetchAccessedAccountsForDisplayWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 lastFetchDate];
  v3 = v2 != 0;

  return v3;
}

- (id)_fetchLogoForBrand:(id)a3 fallback:(id)a4 size:(double)a5 options:(unint64_t)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a7;
  v15 = objc_alloc_init(WDCancellationToken);
  v16 = [objc_opt_class() _logoCompletionOnMainQueue:v14 cancellationToken:v15];

  if (v12)
  {
    v17 = [(WDClinicalSourcesDataProvider *)self healthRecordsStore];
    v18 = [v17 hk_brandImageManager];
    v29 = v15;
    v19 = a6;
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __85__WDClinicalSourcesDataProvider__fetchLogoForBrand_fallback_size_options_completion___block_invoke_2;
    v30[3] = &unk_1E83DD068;
    v20 = v31;
    v21 = v12;
    v31[0] = v21;
    v31[1] = self;
    v22 = &v32;
    v34 = a5;
    v32 = v13;
    v33 = v16;
    v23 = v16;
    v24 = v13;
    v25 = v19;
    v15 = v29;
    [v18 retrieveLogoForBrand:v21 size:v25 options:v30 completion:a5];
  }

  else
  {
    v35 = MEMORY[0x1E69E9820];
    v36 = 3221225472;
    v37 = __85__WDClinicalSourcesDataProvider__fetchLogoForBrand_fallback_size_options_completion___block_invoke;
    v38 = &unk_1E83DD040;
    v20 = v41;
    v40 = v13;
    v41[0] = v16;
    v22 = &v40;
    v39 = self;
    *&v41[1] = a5;
    v26 = v16;
    v27 = v13;
    HKDispatchAsyncOnGlobalConcurrentQueue();
  }

  return v15;
}

void __85__WDClinicalSourcesDataProvider__fetchLogoForBrand_fallback_size_options_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = [*(a1 + 32) _logoForFallback:*(a1 + 40) size:*(a1 + 56)];
  (*(v1 + 16))(v1, v2, 1);
}

void __85__WDClinicalSourcesDataProvider__fetchLogoForBrand_fallback_size_options_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  v8 = v5;
  if (!v5)
  {
    if ([v6 code] != 608)
    {
      _HKInitializeLogging();
      v9 = *MEMORY[0x1E696B948];
      if (os_log_type_enabled(*MEMORY[0x1E696B948], OS_LOG_TYPE_ERROR))
      {
        __85__WDClinicalSourcesDataProvider__fetchLogoForBrand_fallback_size_options_completion___block_invoke_2_cold_1(a1, v9);
      }
    }

    v8 = [*(a1 + 40) _logoForFallback:*(a1 + 48) size:*(a1 + 64)];
  }

  (*(*(a1 + 56) + 16))();
}

- (id)_logoForFallback:(id)a3 size:(double)a4
{
  v5 = a3;
  v6 = [[HRMonogrammer alloc] initWithDiameter:a4];
  v7 = [(HRMonogrammer *)v6 monogramForFirstWordFromText:v5];

  return v7;
}

- (void)fetchAccountOwnerForSource:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [MEMORY[0x1E696C378] predicateForObjectsFromSource:a3];
  v8 = objc_alloc(MEMORY[0x1E696C3C8]);
  v9 = [MEMORY[0x1E696BEC0] accountOwnerType];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __71__WDClinicalSourcesDataProvider_fetchAccountOwnerForSource_completion___block_invoke;
  v14[3] = &unk_1E83DD090;
  v15 = v6;
  v10 = v6;
  v11 = [v8 initWithSampleType:v9 predicate:v7 limit:0 sortDescriptors:0 resultsHandler:v14];

  v12 = [(WDClinicalSourcesDataProvider *)self healthRecordsStore];
  v13 = [v12 healthStore];
  [v13 executeQuery:v11];
}

void __71__WDClinicalSourcesDataProvider_fetchAccountOwnerForSource_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    _HKInitializeLogging();
    v8 = *MEMORY[0x1E696B948];
    if (os_log_type_enabled(*MEMORY[0x1E696B948], OS_LOG_TYPE_ERROR))
    {
      __72__WDClinicalSourcesDataProvider__fetchAccountsForDisplayWithCompletion___block_invoke_cold_1(v7, v8, v9, v10, v11, v12, v13, v14);
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (id)nameAndFormattedBirthDateForAccountOwner:(id)a3 useMultipleLines:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [v6 name];
  v8 = [v6 birthDate];

  v9 = [(WDClinicalSourcesDataProvider *)self formattedFullName:v7 birthDate:v8 useMultipleLines:v4];

  return v9;
}

- (id)formattedFullName:(id)a3 birthDate:(id)a4 useMultipleLines:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  v8 = v7;
  v9 = v7;
  if (v7)
  {
    v9 = v7;
    if (a4)
    {
      v10 = a4;
      v11 = [v10 displayString];
      v12 = [MEMORY[0x1E695DEE8] hk_gregorianCalendar];
      v13 = [v10 dateForUTC];

      v14 = [MEMORY[0x1E695DF00] date];
      v15 = [v12 components:4 fromDate:v13 toDate:v14 options:0];

      v16 = HKIntegerFormatter();
      v17 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v15, "year")}];
      v18 = [v16 stringFromNumber:v17];

      v19 = MEMORY[0x1E696AEC0];
      v20 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v21 = [v20 localizedStringForKey:@"date_and_age_%@_%@" value:&stru_1F4D16E38 table:@"HealthUI-Localizable"];
      v22 = [v19 stringWithFormat:v21, v11, v18];

      if (v5)
      {
        v23 = @"\n%@";
      }

      else
      {
        v23 = @", %@";
      }

      v9 = [v8 stringByAppendingFormat:v23, v22];
    }
  }

  return v9;
}

- (id)nameAndFormattedBirthDateForSignedClinicalDataSubject:(id)a3 useMultipleLines:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [v6 fullName];
  v8 = [v6 birthDate];

  v9 = [(WDClinicalSourcesDataProvider *)self formattedFullName:v7 birthDate:v8 useMultipleLines:v4];

  return v9;
}

- (void)beginInitialLoginSessionForGateway:(id)a3 fromViewController:(id)a4 loginCancelledHandler:(id)a5 errorHandler:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [HRUIClinicalAccountLoginSession alloc];
  clinicalAccountStore = self->_clinicalAccountStore;
  v16 = [v12 hk_window];

  v17 = [(HRUIClinicalAccountLoginSession *)v14 initWithAccountStore:clinicalAccountStore presentationAnchor:v16 funnelContext:0];
  v19 = 0;
  LOBYTE(clinicalAccountStore) = [(HRUIClinicalAccountLoginSession *)v17 startLoginWithGateway:v13 loginCancelledHandler:v11 callbackErrorHandler:v10 error:&v19];

  v18 = v19;
  if ((clinicalAccountStore & 1) == 0)
  {
    v10[2](v10, v18);
  }
}

- (void)beginReloginSessionForAccount:(id)a3 fromViewController:(id)a4 profile:(id)a5 loginCancelledHandler:(id)a6 errorHandler:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [HRUIClinicalAccountLoginSession alloc];
  clinicalAccountStore = self->_clinicalAccountStore;
  v19 = [v15 hk_window];
  v20 = [(HRUIClinicalAccountLoginSession *)v17 initWithAccountStore:clinicalAccountStore presentationAnchor:v19 funnelContext:0];

  v22 = 0;
  LOBYTE(clinicalAccountStore) = [(HRUIClinicalAccountLoginSession *)v20 startReloginToAccount:v16 viewController:v15 profile:v14 loginCancelledHandler:v13 callbackErrorHandler:v12 error:&v22];

  v21 = v22;
  if ((clinicalAccountStore & 1) == 0)
  {
    v12[2](v12, v21);
  }
}

- (id)appSourceRequestingAuthorizationForClinicalTypeWithBundleIdentifier:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(WDClinicalSourcesDataProvider *)self sourcesRequestingAuthorizationForClinicalTypes];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [v5 allSources];
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v10 source];
        v12 = [v11 bundleIdentifier];
        v13 = [v12 isEqualToString:v4];

        if (v13)
        {
          v7 = [v10 source];
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

- (id)sourcesRequestingAuthorizationForClinicalTypes
{
  v3 = objc_alloc(MEMORY[0x1E695DFD8]);
  v4 = [MEMORY[0x1E696BFD8] allTypes];
  v5 = [v3 initWithArray:v4];

  v6 = [(WDClinicalSourcesDataProvider *)self healthStore];
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy_;
  v19 = __Block_byref_object_dispose_;
  v20 = 0;
  v7 = dispatch_semaphore_create(0);
  v8 = [objc_alloc(MEMORY[0x1E696BF50]) initWithHealthStore:v6];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __79__WDClinicalSourcesDataProvider_sourcesRequestingAuthorizationForClinicalTypes__block_invoke;
  v12[3] = &unk_1E83DD0B8;
  v14 = &v15;
  v9 = v7;
  v13 = v9;
  [v8 fetchSourcesRequestingAuthorizationForTypes:v5 completion:v12];
  dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
  v10 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v10;
}

void __79__WDClinicalSourcesDataProvider_sourcesRequestingAuthorizationForClinicalTypes__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = objc_alloc(MEMORY[0x1E69A44C8]);
    v8 = [v5 allObjects];
    v9 = [v7 initWithSources:v8];
    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }

  else
  {
    _HKInitializeLogging();
    v12 = *MEMORY[0x1E696B948];
    if (os_log_type_enabled(*MEMORY[0x1E696B948], OS_LOG_TYPE_ERROR))
    {
      __79__WDClinicalSourcesDataProvider_sourcesRequestingAuthorizationForClinicalTypes__block_invoke_cold_1(v6, v12, v13, v14, v15, v16, v17, v18);
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)fetchSignedClinicalDataRecordWithIdentifier:(id)a3 completion:(id)a4
{
  v20[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E696C450] signedClinicalDataRecordType];
  v9 = [MEMORY[0x1E696C378] predicateForMedicalRecordsWithSignedClinicalDataOriginIdentifier:v6];
  v10 = [objc_alloc(MEMORY[0x1E696C388]) initWithSampleType:v8 predicate:v9];
  v11 = objc_alloc(MEMORY[0x1E696C3C8]);
  v20[0] = v10;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __88__WDClinicalSourcesDataProvider_fetchSignedClinicalDataRecordWithIdentifier_completion___block_invoke;
  v17[3] = &unk_1E83DD0E0;
  v17[4] = self;
  v18 = v6;
  v19 = v7;
  v13 = v7;
  v14 = v6;
  v15 = [v11 initWithQueryDescriptors:v12 limit:1 resultsHandler:v17];

  v16 = [(WDClinicalSourcesDataProvider *)self healthStore];
  [v16 executeQuery:v15];
}

void __88__WDClinicalSourcesDataProvider_fetchSignedClinicalDataRecordWithIdentifier_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a4;
  if (v6)
  {
    _HKInitializeLogging();
    v7 = *MEMORY[0x1E696B988];
    if (os_log_type_enabled(*MEMORY[0x1E696B988], OS_LOG_TYPE_ERROR))
    {
      __88__WDClinicalSourcesDataProvider_fetchSignedClinicalDataRecordWithIdentifier_completion___block_invoke_cold_1(a1, v6, v7);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v8 = [a3 firstObject];
    (*(*(a1 + 48) + 16))();
  }
}

+ (id)_logoCompletionOnMainQueue:(id)a3 cancellationToken:(id)a4
{
  v5 = a3;
  v6 = a4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __78__WDClinicalSourcesDataProvider__logoCompletionOnMainQueue_cancellationToken___block_invoke;
  v11[3] = &unk_1E83DD130;
  v12 = v6;
  v13 = v5;
  v7 = v5;
  v8 = v6;
  v9 = _Block_copy(v11);

  return v9;
}

void __78__WDClinicalSourcesDataProvider__logoCompletionOnMainQueue_cancellationToken___block_invoke(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __78__WDClinicalSourcesDataProvider__logoCompletionOnMainQueue_cancellationToken___block_invoke_2;
  v8[3] = &unk_1E83DD108;
  v9 = *(a1 + 32);
  v6 = *(a1 + 40);
  v10 = v5;
  v11 = v6;
  v12 = a3;
  v7 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v8);
}

uint64_t __78__WDClinicalSourcesDataProvider__logoCompletionOnMainQueue_cancellationToken___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) isCancelled];
  if ((result & 1) == 0)
  {
    v3 = *(*(a1 + 48) + 16);

    return v3();
  }

  return result;
}

+ (id)_objectCompletionOnMainQueue:(id)a3 cancellationToken:(id)a4
{
  v5 = a3;
  v6 = a4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __80__WDClinicalSourcesDataProvider__objectCompletionOnMainQueue_cancellationToken___block_invoke;
  v11[3] = &unk_1E83DD180;
  v12 = v6;
  v13 = v5;
  v7 = v5;
  v8 = v6;
  v9 = _Block_copy(v11);

  return v9;
}

void __80__WDClinicalSourcesDataProvider__objectCompletionOnMainQueue_cancellationToken___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __80__WDClinicalSourcesDataProvider__objectCompletionOnMainQueue_cancellationToken___block_invoke_2;
  block[3] = &unk_1E83DD158;
  v7 = *(a1 + 32);
  v4 = *(a1 + 40);
  v8 = v3;
  v9 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __80__WDClinicalSourcesDataProvider__objectCompletionOnMainQueue_cancellationToken___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) isCancelled];
  if ((result & 1) == 0)
  {
    v3 = *(*(a1 + 48) + 16);

    return v3();
  }

  return result;
}

- (id)_orderAccountsForDisplay:(id)a3
{
  v10[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AEB0];
  v4 = a3;
  v5 = [[v3 alloc] initWithKey:@"title" ascending:1 selector:sel_localizedCaseInsensitiveCompare_];
  v6 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"subtitle" ascending:1 selector:sel_localizedCaseInsensitiveCompare_];
  v10[0] = v5;
  v10[1] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];
  v8 = [v4 sortedArrayUsingDescriptors:v7];

  return v8;
}

- (HKHealthStore)healthStore
{
  v2 = [(WDClinicalSourcesDataProvider *)self healthRecordsStore];
  v3 = [v2 healthStore];

  return v3;
}

void __85__WDClinicalSourcesDataProvider__fetchLogoForBrand_fallback_size_options_completion___block_invoke_2_cold_1(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 externalID];
  v5 = HKSensitiveLogItem();
  v6 = HKSensitiveLogItem();
  v7 = 138412546;
  v8 = v5;
  v9 = 2114;
  v10 = v6;
  _os_log_error_impl(&dword_1D101F000, v3, OS_LOG_TYPE_ERROR, "Unable to fetch image for brand %@: %{public}@", &v7, 0x16u);
}

void __88__WDClinicalSourcesDataProvider_fetchSignedClinicalDataRecordWithIdentifier_completion___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = 138543874;
  v6 = v3;
  v7 = 2112;
  v8 = v4;
  v9 = 2112;
  v10 = a2;
  _os_log_error_impl(&dword_1D101F000, log, OS_LOG_TYPE_ERROR, "%{public}@: Unable to find HKSignedClinicalDataRecord with identifier %@, error: %@", &v5, 0x20u);
}

@end