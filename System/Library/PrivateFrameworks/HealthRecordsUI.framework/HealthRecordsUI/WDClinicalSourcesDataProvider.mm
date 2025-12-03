@interface WDClinicalSourcesDataProvider
+ (id)_logoCompletionOnMainQueue:(id)queue cancellationToken:(id)token;
+ (id)_objectCompletionOnMainQueue:(id)queue cancellationToken:(id)token;
- (HKHealthStore)healthStore;
- (WDClinicalSourcesDataProvider)init;
- (WDClinicalSourcesDataProvider)initWithHealthRecordsStore:(id)store;
- (id)_fetchLogoForBrand:(id)brand fallback:(id)fallback size:(double)size options:(unint64_t)options completion:(id)completion;
- (id)_logoForFallback:(id)fallback size:(double)size;
- (id)_orderAccountsForDisplay:(id)display;
- (id)appSourceRequestingAuthorizationForClinicalTypeWithBundleIdentifier:(id)identifier;
- (id)fetchAccessedAccountsForDisplayWithCompletion:(id)completion;
- (id)fetchAccountsForDisplayWithCompletion:(id)completion;
- (id)formattedFullName:(id)name birthDate:(id)date useMultipleLines:(BOOL)lines;
- (id)nameAndFormattedBirthDateForAccountOwner:(id)owner useMultipleLines:(BOOL)lines;
- (id)nameAndFormattedBirthDateForSignedClinicalDataSubject:(id)subject useMultipleLines:(BOOL)lines;
- (id)sourcesRequestingAuthorizationForClinicalTypes;
- (void)_fetchAccountsForDisplayWithCompletion:(id)completion;
- (void)beginInitialLoginSessionForGateway:(id)gateway fromViewController:(id)controller loginCancelledHandler:(id)handler errorHandler:(id)errorHandler;
- (void)beginReloginSessionForAccount:(id)account fromViewController:(id)controller profile:(id)profile loginCancelledHandler:(id)handler errorHandler:(id)errorHandler;
- (void)fetchAccountOwnerForSource:(id)source completion:(id)completion;
- (void)fetchSignedClinicalDataRecordWithIdentifier:(id)identifier completion:(id)completion;
@end

@implementation WDClinicalSourcesDataProvider

- (WDClinicalSourcesDataProvider)initWithHealthRecordsStore:(id)store
{
  storeCopy = store;
  v12.receiver = self;
  v12.super_class = WDClinicalSourcesDataProvider;
  v6 = [(WDClinicalSourcesDataProvider *)&v12 init];
  if (v6)
  {
    v7 = objc_alloc(MEMORY[0x1E69A3F10]);
    healthStore = [storeCopy healthStore];
    v9 = [v7 initWithHealthStore:healthStore];
    clinicalAccountStore = v6->_clinicalAccountStore;
    v6->_clinicalAccountStore = v9;

    objc_storeStrong(&v6->_healthRecordsStore, store);
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

- (void)_fetchAccountsForDisplayWithCompletion:(id)completion
{
  completionCopy = completion;
  clinicalAccountStore = self->_clinicalAccountStore;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __72__WDClinicalSourcesDataProvider__fetchAccountsForDisplayWithCompletion___block_invoke;
  v7[3] = &unk_1E83DCFF0;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
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

- (id)fetchAccountsForDisplayWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = objc_alloc_init(WDCancellationToken);
  v6 = [objc_opt_class() _objectCompletionOnMainQueue:completionCopy cancellationToken:v5];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __71__WDClinicalSourcesDataProvider_fetchAccountsForDisplayWithCompletion___block_invoke;
  v9[3] = &unk_1E83DD018;
  v10 = v6;
  v7 = v6;
  [(WDClinicalSourcesDataProvider *)self _fetchAccountsForDisplayWithCompletion:v9];

  return v5;
}

- (id)fetchAccessedAccountsForDisplayWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = objc_alloc_init(WDCancellationToken);
  v6 = [objc_opt_class() _objectCompletionOnMainQueue:completionCopy cancellationToken:v5];

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

- (id)_fetchLogoForBrand:(id)brand fallback:(id)fallback size:(double)size options:(unint64_t)options completion:(id)completion
{
  brandCopy = brand;
  fallbackCopy = fallback;
  completionCopy = completion;
  v15 = objc_alloc_init(WDCancellationToken);
  v16 = [objc_opt_class() _logoCompletionOnMainQueue:completionCopy cancellationToken:v15];

  if (brandCopy)
  {
    healthRecordsStore = [(WDClinicalSourcesDataProvider *)self healthRecordsStore];
    hk_brandImageManager = [healthRecordsStore hk_brandImageManager];
    v29 = v15;
    optionsCopy = options;
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __85__WDClinicalSourcesDataProvider__fetchLogoForBrand_fallback_size_options_completion___block_invoke_2;
    v30[3] = &unk_1E83DD068;
    v20 = v31;
    v21 = brandCopy;
    v31[0] = v21;
    v31[1] = self;
    v22 = &v32;
    sizeCopy = size;
    v32 = fallbackCopy;
    v33 = v16;
    v23 = v16;
    v24 = fallbackCopy;
    v25 = optionsCopy;
    v15 = v29;
    [hk_brandImageManager retrieveLogoForBrand:v21 size:v25 options:v30 completion:size];
  }

  else
  {
    v35 = MEMORY[0x1E69E9820];
    v36 = 3221225472;
    v37 = __85__WDClinicalSourcesDataProvider__fetchLogoForBrand_fallback_size_options_completion___block_invoke;
    v38 = &unk_1E83DD040;
    v20 = v41;
    v40 = fallbackCopy;
    v41[0] = v16;
    v22 = &v40;
    selfCopy = self;
    *&v41[1] = size;
    v26 = v16;
    v27 = fallbackCopy;
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

- (id)_logoForFallback:(id)fallback size:(double)size
{
  fallbackCopy = fallback;
  v6 = [[HRMonogrammer alloc] initWithDiameter:size];
  v7 = [(HRMonogrammer *)v6 monogramForFirstWordFromText:fallbackCopy];

  return v7;
}

- (void)fetchAccountOwnerForSource:(id)source completion:(id)completion
{
  completionCopy = completion;
  v7 = [MEMORY[0x1E696C378] predicateForObjectsFromSource:source];
  v8 = objc_alloc(MEMORY[0x1E696C3C8]);
  accountOwnerType = [MEMORY[0x1E696BEC0] accountOwnerType];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __71__WDClinicalSourcesDataProvider_fetchAccountOwnerForSource_completion___block_invoke;
  v14[3] = &unk_1E83DD090;
  v15 = completionCopy;
  v10 = completionCopy;
  v11 = [v8 initWithSampleType:accountOwnerType predicate:v7 limit:0 sortDescriptors:0 resultsHandler:v14];

  healthRecordsStore = [(WDClinicalSourcesDataProvider *)self healthRecordsStore];
  healthStore = [healthRecordsStore healthStore];
  [healthStore executeQuery:v11];
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

- (id)nameAndFormattedBirthDateForAccountOwner:(id)owner useMultipleLines:(BOOL)lines
{
  linesCopy = lines;
  ownerCopy = owner;
  name = [ownerCopy name];
  birthDate = [ownerCopy birthDate];

  v9 = [(WDClinicalSourcesDataProvider *)self formattedFullName:name birthDate:birthDate useMultipleLines:linesCopy];

  return v9;
}

- (id)formattedFullName:(id)name birthDate:(id)date useMultipleLines:(BOOL)lines
{
  linesCopy = lines;
  nameCopy = name;
  v8 = nameCopy;
  v9 = nameCopy;
  if (nameCopy)
  {
    v9 = nameCopy;
    if (date)
    {
      dateCopy = date;
      displayString = [dateCopy displayString];
      hk_gregorianCalendar = [MEMORY[0x1E695DEE8] hk_gregorianCalendar];
      dateForUTC = [dateCopy dateForUTC];

      date = [MEMORY[0x1E695DF00] date];
      v15 = [hk_gregorianCalendar components:4 fromDate:dateForUTC toDate:date options:0];

      v16 = HKIntegerFormatter();
      v17 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v15, "year")}];
      v18 = [v16 stringFromNumber:v17];

      v19 = MEMORY[0x1E696AEC0];
      v20 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v21 = [v20 localizedStringForKey:@"date_and_age_%@_%@" value:&stru_1F4D16E38 table:@"HealthUI-Localizable"];
      v22 = [v19 stringWithFormat:v21, displayString, v18];

      if (linesCopy)
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

- (id)nameAndFormattedBirthDateForSignedClinicalDataSubject:(id)subject useMultipleLines:(BOOL)lines
{
  linesCopy = lines;
  subjectCopy = subject;
  fullName = [subjectCopy fullName];
  birthDate = [subjectCopy birthDate];

  v9 = [(WDClinicalSourcesDataProvider *)self formattedFullName:fullName birthDate:birthDate useMultipleLines:linesCopy];

  return v9;
}

- (void)beginInitialLoginSessionForGateway:(id)gateway fromViewController:(id)controller loginCancelledHandler:(id)handler errorHandler:(id)errorHandler
{
  errorHandlerCopy = errorHandler;
  handlerCopy = handler;
  controllerCopy = controller;
  gatewayCopy = gateway;
  v14 = [HRUIClinicalAccountLoginSession alloc];
  clinicalAccountStore = self->_clinicalAccountStore;
  hk_window = [controllerCopy hk_window];

  v17 = [(HRUIClinicalAccountLoginSession *)v14 initWithAccountStore:clinicalAccountStore presentationAnchor:hk_window funnelContext:0];
  v19 = 0;
  LOBYTE(clinicalAccountStore) = [(HRUIClinicalAccountLoginSession *)v17 startLoginWithGateway:gatewayCopy loginCancelledHandler:handlerCopy callbackErrorHandler:errorHandlerCopy error:&v19];

  v18 = v19;
  if ((clinicalAccountStore & 1) == 0)
  {
    errorHandlerCopy[2](errorHandlerCopy, v18);
  }
}

- (void)beginReloginSessionForAccount:(id)account fromViewController:(id)controller profile:(id)profile loginCancelledHandler:(id)handler errorHandler:(id)errorHandler
{
  errorHandlerCopy = errorHandler;
  handlerCopy = handler;
  profileCopy = profile;
  controllerCopy = controller;
  accountCopy = account;
  v17 = [HRUIClinicalAccountLoginSession alloc];
  clinicalAccountStore = self->_clinicalAccountStore;
  hk_window = [controllerCopy hk_window];
  v20 = [(HRUIClinicalAccountLoginSession *)v17 initWithAccountStore:clinicalAccountStore presentationAnchor:hk_window funnelContext:0];

  v22 = 0;
  LOBYTE(clinicalAccountStore) = [(HRUIClinicalAccountLoginSession *)v20 startReloginToAccount:accountCopy viewController:controllerCopy profile:profileCopy loginCancelledHandler:handlerCopy callbackErrorHandler:errorHandlerCopy error:&v22];

  v21 = v22;
  if ((clinicalAccountStore & 1) == 0)
  {
    errorHandlerCopy[2](errorHandlerCopy, v21);
  }
}

- (id)appSourceRequestingAuthorizationForClinicalTypeWithBundleIdentifier:(id)identifier
{
  v20 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  sourcesRequestingAuthorizationForClinicalTypes = [(WDClinicalSourcesDataProvider *)self sourcesRequestingAuthorizationForClinicalTypes];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  allSources = [sourcesRequestingAuthorizationForClinicalTypes allSources];
  source2 = [allSources countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (source2)
  {
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != source2; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(allSources);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        source = [v10 source];
        bundleIdentifier = [source bundleIdentifier];
        v13 = [bundleIdentifier isEqualToString:identifierCopy];

        if (v13)
        {
          source2 = [v10 source];
          goto LABEL_11;
        }
      }

      source2 = [allSources countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (source2)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return source2;
}

- (id)sourcesRequestingAuthorizationForClinicalTypes
{
  v3 = objc_alloc(MEMORY[0x1E695DFD8]);
  allTypes = [MEMORY[0x1E696BFD8] allTypes];
  v5 = [v3 initWithArray:allTypes];

  healthStore = [(WDClinicalSourcesDataProvider *)self healthStore];
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy_;
  v19 = __Block_byref_object_dispose_;
  v20 = 0;
  v7 = dispatch_semaphore_create(0);
  v8 = [objc_alloc(MEMORY[0x1E696BF50]) initWithHealthStore:healthStore];
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

- (void)fetchSignedClinicalDataRecordWithIdentifier:(id)identifier completion:(id)completion
{
  v20[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  completionCopy = completion;
  signedClinicalDataRecordType = [MEMORY[0x1E696C450] signedClinicalDataRecordType];
  v9 = [MEMORY[0x1E696C378] predicateForMedicalRecordsWithSignedClinicalDataOriginIdentifier:identifierCopy];
  v10 = [objc_alloc(MEMORY[0x1E696C388]) initWithSampleType:signedClinicalDataRecordType predicate:v9];
  v11 = objc_alloc(MEMORY[0x1E696C3C8]);
  v20[0] = v10;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __88__WDClinicalSourcesDataProvider_fetchSignedClinicalDataRecordWithIdentifier_completion___block_invoke;
  v17[3] = &unk_1E83DD0E0;
  v17[4] = self;
  v18 = identifierCopy;
  v19 = completionCopy;
  v13 = completionCopy;
  v14 = identifierCopy;
  v15 = [v11 initWithQueryDescriptors:v12 limit:1 resultsHandler:v17];

  healthStore = [(WDClinicalSourcesDataProvider *)self healthStore];
  [healthStore executeQuery:v15];
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

+ (id)_logoCompletionOnMainQueue:(id)queue cancellationToken:(id)token
{
  queueCopy = queue;
  tokenCopy = token;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __78__WDClinicalSourcesDataProvider__logoCompletionOnMainQueue_cancellationToken___block_invoke;
  v11[3] = &unk_1E83DD130;
  v12 = tokenCopy;
  v13 = queueCopy;
  v7 = queueCopy;
  v8 = tokenCopy;
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

+ (id)_objectCompletionOnMainQueue:(id)queue cancellationToken:(id)token
{
  queueCopy = queue;
  tokenCopy = token;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __80__WDClinicalSourcesDataProvider__objectCompletionOnMainQueue_cancellationToken___block_invoke;
  v11[3] = &unk_1E83DD180;
  v12 = tokenCopy;
  v13 = queueCopy;
  v7 = queueCopy;
  v8 = tokenCopy;
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

- (id)_orderAccountsForDisplay:(id)display
{
  v10[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AEB0];
  displayCopy = display;
  v5 = [[v3 alloc] initWithKey:@"title" ascending:1 selector:sel_localizedCaseInsensitiveCompare_];
  v6 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"subtitle" ascending:1 selector:sel_localizedCaseInsensitiveCompare_];
  v10[0] = v5;
  v10[1] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];
  v8 = [displayCopy sortedArrayUsingDescriptors:v7];

  return v8;
}

- (HKHealthStore)healthStore
{
  healthRecordsStore = [(WDClinicalSourcesDataProvider *)self healthRecordsStore];
  healthStore = [healthRecordsStore healthStore];

  return healthStore;
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