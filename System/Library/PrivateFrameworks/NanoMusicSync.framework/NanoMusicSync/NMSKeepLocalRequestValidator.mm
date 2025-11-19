@interface NMSKeepLocalRequestValidator
- (NMSKeepLocalRequestValidator)initWithItemSize:(unint64_t)a3;
- (NMSKeepLocalRequestValidator)initWithModelObject:(id)a3;
- (id)_predicateForKeepLocalStatusDownloadingOrWaiting;
- (unint64_t)_fetchSizeOfPendingDownloadsWithPowerConstraintCheck:(BOOL)a3;
- (unint64_t)_resolvedValidatorException:(unint64_t)a3 options:(id)a4;
- (void)_continueWithOptions:(id)a3 validatorException:(unint64_t)a4 cellularNetwork:(BOOL)a5 completion:(id)a6;
- (void)_finishWithOptions:(id)a3 validatorException:(unint64_t)a4 constraints:(unint64_t)a5 error:(id)a6 completion:(id)a7;
- (void)performWithOptions:(id)a3 completion:(id)a4;
@end

@implementation NMSKeepLocalRequestValidator

- (NMSKeepLocalRequestValidator)initWithModelObject:(id)a3
{
  v31[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = NMLogForCategory(5);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v27 = 138412290;
    v28 = v4;
    _os_log_impl(&dword_25B27B000, v5, OS_LOG_TYPE_DEFAULT, "[NMSKeepLocalRequestValidator] _fetchSizeOfModelObjectItems - (begin) model-object: %@", &v27, 0xCu);
  }

  v6 = [MEMORY[0x277D2B5F8] autoupdatingSharedLibrary];
  v7 = MEMORY[0x277CBEB98];
  v8 = MEMORY[0x277CCABB0];
  v9 = [v4 originalIdentifierSet];
  v10 = [v9 library];
  v11 = [v8 numberWithLongLong:{objc_msgSend(v10, "persistentID")}];
  v12 = [v7 setWithObject:v11];

  v13 = MEMORY[0x277D2B5A8];
  v14 = MEMORY[0x277D2B5D0];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v16 = MEMORY[0x277D2B530];
  if ((isKindOfClass & 1) == 0)
  {
    v16 = MEMORY[0x277D2B538];
  }

  v17 = [v14 predicateWithProperty:*v16 values:v12];
  v31[0] = v17;
  v18 = [MEMORY[0x277D2B5C0] predicateWithProperty:*MEMORY[0x277D2B508] value:&unk_286C8D4D8 comparison:2];
  v31[1] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:2];
  v20 = [v13 predicateMatchingPredicates:v19];

  v21 = [MEMORY[0x277D2B620] allItemsQueryWithLibrary:v6 predicate:v20 orderingTerms:0 usingSections:0];
  v22 = _aggregatedFetchOfFileSizeForQuery(v21, v6);
  v23 = NMLogForCategory(5);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v27 = 134218242;
    v28 = v22;
    v29 = 2112;
    v30 = v4;
    _os_log_impl(&dword_25B27B000, v23, OS_LOG_TYPE_DEFAULT, "[NMSKeepLocalRequestValidator] _fetchSizeOfModelObjectItems (finish) - size: %llu for model-object: %@", &v27, 0x16u);
  }

  v24 = [(NMSKeepLocalRequestValidator *)self initWithItemSize:v22];
  v25 = *MEMORY[0x277D85DE8];
  return v24;
}

- (NMSKeepLocalRequestValidator)initWithItemSize:(unint64_t)a3
{
  v9.receiver = self;
  v9.super_class = NMSKeepLocalRequestValidator;
  v4 = [(NMSKeepLocalRequestValidator *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_itemSize = a3;
    v6 = objc_alloc_init(MEMORY[0x277CCABD8]);
    validationQueue = v5->_validationQueue;
    v5->_validationQueue = v6;

    [(NSOperationQueue *)v5->_validationQueue setName:@"com.apple.NanoMusicSync.KeepLocalRequestValidator"];
  }

  return v5;
}

- (void)performWithOptions:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x277CCA8C8];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __62__NMSKeepLocalRequestValidator_performWithOptions_completion___block_invoke;
  v12[3] = &unk_27993DE68;
  v12[4] = self;
  v13 = v6;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  v11 = [v8 blockOperationWithBlock:v12];
  [v11 setQualityOfService:{objc_msgSend(v10, "qualityOfService")}];
  [(NSOperationQueue *)self->_validationQueue addOperation:v11];
}

void __62__NMSKeepLocalRequestValidator_performWithOptions_completion___block_invoke(id *a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v2 = [MEMORY[0x277D7FA90] sharedMonitor];
  v3 = [v2 networkType];

  IsCellular = ICEnvironmentNetworkTypeIsCellular();
  v5 = NMLogForCategory(5);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v23 = v3;
    _os_log_impl(&dword_25B27B000, v5, OS_LOG_TYPE_DEFAULT, "[NMSKeepLocalRequestValidator] Current network connection type: %ld.", buf, 0xCu);
  }

  if (v3)
  {
    if (IsCellular)
    {
      v6 = objc_alloc(MEMORY[0x277CC37B0]);
      v7 = [a1[5] qualityOfService];
      if ((v7 + 1) > 0x22 || ((1 << (v7 + 1)) & 0x404040400) == 0)
      {
        v7 = 0;
      }

      v8 = dispatch_get_global_queue(v7, 0);
      v9 = [v6 initWithQueue:v8];

      v10 = [a1[5] cellularBundleIdentifier];
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __62__NMSKeepLocalRequestValidator_performWithOptions_completion___block_invoke_24;
      v13[3] = &unk_27993E478;
      v11 = a1[5];
      v13[4] = a1[4];
      v14 = v11;
      v16 = &v18;
      v15 = a1[6];
      v17 = IsCellular;
      [v9 performNetworkAccessFlowIfAllowed:v10 ignoreForeground:0 completion:v13];
    }

    else
    {
      [a1[4] _continueWithOptions:a1[5] validatorException:v19[3] cellularNetwork:0 completion:a1[6]];
    }
  }

  else
  {
    [a1[4] _finishWithOptions:a1[5] validatorException:16 constraints:0 error:0 completion:a1[6]];
  }

  _Block_object_dispose(&v18, 8);
  v12 = *MEMORY[0x277D85DE8];
}

void __62__NMSKeepLocalRequestValidator_performWithOptions_completion___block_invoke_24(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (!v5)
  {
    if ([a2 cellular])
    {
      v7 = [MEMORY[0x277CD5FD8] sharedNetworkObserver];
      v8 = [v7 isMusicCellularDownloadingAllowed];

      if (v8)
      {
LABEL_10:
        [*(a1 + 32) _continueWithOptions:*(a1 + 40) validatorException:*(*(*(a1 + 56) + 8) + 24) cellularNetwork:*(a1 + 64) completion:*(a1 + 48)];
        goto LABEL_11;
      }

      v9 = 8;
    }

    else
    {
      v9 = 64;
    }

    *(*(*(a1 + 56) + 8) + 24) |= v9;
    goto LABEL_10;
  }

  v6 = NMLogForCategory(5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __62__NMSKeepLocalRequestValidator_performWithOptions_completion___block_invoke_24_cold_1(v5, v6);
  }

  [*(a1 + 32) _finishWithOptions:*(a1 + 40) validatorException:*(*(*(a1 + 56) + 8) + 24) constraints:0 error:v5 completion:*(a1 + 48)];
LABEL_11:
}

- (void)_continueWithOptions:(id)a3 validatorException:(unint64_t)a4 cellularNetwork:(BOOL)a5 completion:(id)a6
{
  v6 = a5;
  v43 = *MEMORY[0x277D85DE8];
  v10 = MEMORY[0x277CD5EC0];
  v11 = a6;
  v12 = a3;
  v13 = [v10 nms_defaultKeepLocalConstraints];
  itemSize = self->_itemSize;
  v34 = [(NMSKeepLocalRequestValidator *)self _fetchSizeOfPendingDownloadsWithPowerConstraintCheck:0];
  v15 = [(NMSKeepLocalRequestValidator *)self _fetchSizeOfPendingDownloadsWithPowerConstraintCheck:1];
  v16 = [MEMORY[0x277D7FA90] sharedMonitor];
  v17 = [v16 isCharging];

  v18 = NMLogForCategory(5);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = @"Off-charger";
    *buf = 134218754;
    v36 = v15;
    v20 = 499999999;
    if (v6)
    {
      v20 = 99999999;
    }

    if (v17)
    {
      v19 = @"On-charger";
    }

    v37 = 2048;
    v38 = itemSize;
    v39 = 2048;
    v40 = v20 + 1;
    v41 = 2112;
    v42 = v19;
    _os_log_impl(&dword_25B27B000, v18, OS_LOG_TYPE_DEFAULT, "[NMSKeepLocalRequestValidator] There are presently %llu bytes pending download off charger. The current model-object size is %llu bytes. The current pending threshold has a max of %llu bytes. The watch charging state is: %@", buf, 0x2Au);
  }

  v21 = v15 + itemSize;
  v22 = a4 | 4;
  if (v17)
  {
    v23 = v13 & 0xFFFFFFFFFFFFFFFDLL;
  }

  else
  {
    v23 = v13;
  }

  if (v17)
  {
    v22 = a4;
  }

  if (!v6)
  {
    v23 = v13;
    v22 = a4;
  }

  if (v21 > 0x5F5E0FF)
  {
    v24 = v23;
  }

  else
  {
    v24 = v13 & 0xFFFFFFFFFFFFFFFDLL;
  }

  if (v21 > 0x5F5E0FF)
  {
    v25 = v22;
  }

  else
  {
    v25 = a4;
  }

  v26 = [MEMORY[0x277D7FC00] sharedManager];
  v27 = [v26 storageSpaceAvailable];

  v28 = NMLogForCategory(5);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v36 = v34 + itemSize;
    v37 = 2048;
    v38 = v27;
    _os_log_impl(&dword_25B27B000, v28, OS_LOG_TYPE_DEFAULT, "[NMSKeepLocalRequestValidator] Calculated size(pending+new item): %llu with available storage of: %llu.", buf, 0x16u);
  }

  v29 = v25 | 2;
  if (v17)
  {
    v29 = v25;
  }

  if (v21 <= 0x1DCD64FF)
  {
    v30 = v25;
  }

  else
  {
    v30 = v29;
  }

  if (v21 <= 0x1DCD64FF)
  {
    v31 = v24 & 0xFFFFFFFFFFFFFFFBLL;
  }

  else
  {
    v31 = v24;
  }

  if (v27 - v34 >= 0x6ACFC1)
  {
    v32 = v30;
  }

  else
  {
    v32 = v30 | 0x20;
  }

  [(NMSKeepLocalRequestValidator *)self _finishWithOptions:v12 validatorException:v32 constraints:v31 error:0 completion:v11];

  v33 = *MEMORY[0x277D85DE8];
}

- (void)_finishWithOptions:(id)a3 validatorException:(unint64_t)a4 constraints:(unint64_t)a5 error:(id)a6 completion:(id)a7
{
  v31[1] = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a6;
  v14 = a7;
  if (v13)
  {
    v15 = NMLogForCategory(5);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [NMSKeepLocalRequestValidator _finishWithOptions:v13 validatorException:v15 constraints:? error:? completion:?];
    }

    v16 = MEMORY[0x277CCA9B8];
    v30 = *MEMORY[0x277CCA7E8];
    v31[0] = v13;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:&v30 count:1];
    v18 = [v16 errorWithDomain:@"NMSKeepLocalRequestErrorDomain" code:0 userInfo:v17];
    v19 = v13;
  }

  else
  {
    v20 = [(NMSKeepLocalRequestValidator *)self _resolvedValidatorException:a4 options:v12];
    if (!v20)
    {
      v18 = 0;
      goto LABEL_10;
    }

    v21 = v20;
    v22 = NMLogForCategory(5);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = NMSKeepLocalRequestValidatorExceptionString(v21);
      *buf = 138412290;
      v29 = v23;
      _os_log_impl(&dword_25B27B000, v22, OS_LOG_TYPE_DEFAULT, "[NMSKeepLocalRequestValidator] Cannot proceed with KeepLocal request due to validatorException: %@", buf, 0xCu);
    }

    v24 = MEMORY[0x277CCA9B8];
    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{v21, @"NMSKeepLocalRequestErrorValidatorExceptionKey"}];
    v27 = v17;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    v18 = [v24 errorWithDomain:@"NMSKeepLocalRequestErrorDomain" code:1 userInfo:v19];
  }

LABEL_10:
  v14[2](v14, [v12 resolvedConstraints:a5], v18);

  v25 = *MEMORY[0x277D85DE8];
}

- (unint64_t)_resolvedValidatorException:(unint64_t)a3 options:(id)a4
{
  if ([a4 powerPolicy])
  {
    return a3 & 0xFFFFFFFFFFFFFFF9;
  }

  else
  {
    return a3;
  }
}

- (id)_predicateForKeepLocalStatusDownloadingOrWaiting
{
  v11[3] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D2B5B0];
  v3 = *MEMORY[0x277D2B508];
  v4 = [MEMORY[0x277D2B5C0] predicateWithProperty:*MEMORY[0x277D2B508] value:&unk_286C8D460 comparison:1];
  v5 = [MEMORY[0x277D2B5C0] predicateWithProperty:v3 value:&unk_286C8D478 comparison:{1, v4}];
  v11[1] = v5;
  v6 = [MEMORY[0x277D2B5C0] predicateWithProperty:v3 value:&unk_286C8D490 comparison:1];
  v11[2] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:3];
  v8 = [v2 predicateMatchingPredicates:v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (unint64_t)_fetchSizeOfPendingDownloadsWithPowerConstraintCheck:(BOOL)a3
{
  v3 = a3;
  v56[2] = *MEMORY[0x277D85DE8];
  v5 = NMLogForCategory(5);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    if (v3)
    {
      v6 = @"YES";
    }

    else
    {
      v6 = @"NO";
    }

    *buf = 138412546;
    v49 = v6;
    v50 = 2112;
    v51 = self;
    _os_log_impl(&dword_25B27B000, v5, OS_LOG_TYPE_DEFAULT, "[NMSKeepLocalRequestValidator] (begin) _fetchSizeOfPendingDownloadsWithPowerConstraintCheck - checkConstraint: %@ - self: %@", buf, 0x16u);
  }

  v45 = [MEMORY[0x277D2B5F8] autoupdatingSharedLibrary];
  v42 = v3;
  if (v3)
  {
    v7 = MEMORY[0x277D2B5A8];
    v8 = MEMORY[0x277D2B608];
    v9 = [MEMORY[0x277D2B5C0] predicateWithProperty:*MEMORY[0x277D2B4D0] value:&unk_286C8D4A8 comparison:10];
    v10 = [v8 predicateWithPredicate:v9];
    v56[0] = v10;
    v11 = [MEMORY[0x277D2B5C0] predicateWithProperty:*MEMORY[0x277D2B4C8] equalToInt64:1];
    v56[1] = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:2];
    v13 = [v7 predicateMatchingPredicates:v12];
  }

  else
  {
    v13 = [MEMORY[0x277D2B5C0] predicateWithProperty:*MEMORY[0x277D2B4C8] equalToInt64:1];
  }

  v44 = v13;
  v14 = [MEMORY[0x277D2B5C8] allItemsQueryWithLibrary:v45 predicate:v13 orderingTerms:0 usingSections:0];
  v15 = [MEMORY[0x277CBEB58] set];
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __85__NMSKeepLocalRequestValidator__fetchSizeOfPendingDownloadsWithPowerConstraintCheck___block_invoke;
  v46[3] = &unk_27993E4A0;
  v16 = v15;
  v47 = v16;
  v43 = v14;
  [v14 enumeratePersistentIDsUsingBlock:v46];
  v17 = NMLogForCategory(5);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = [(NMSKeepLocalRequestValidator *)v16 count];
    *buf = 134218242;
    v49 = v18;
    v50 = 2112;
    v51 = v16;
    _os_log_impl(&dword_25B27B000, v17, OS_LOG_TYPE_INFO, "[NMSKeepLocalRequestValidator] _fetchSizeOfPendingDownloadsWithPowerConstraintCheck - containerIDs count: %lu - %@", buf, 0x16u);
  }

  v19 = MEMORY[0x277D2B5A8];
  v20 = [MEMORY[0x277D2B5D0] predicateWithProperty:*MEMORY[0x277D2B538] values:v16];
  v55[0] = v20;
  [(NMSKeepLocalRequestValidator *)self _predicateForKeepLocalStatusDownloadingOrWaiting];
  v21 = v41 = self;
  v55[1] = v21;
  v22 = MEMORY[0x277D2B608];
  v23 = [MEMORY[0x277D2B5C0] predicateWithProperty:*MEMORY[0x277D2B500] equalToInt64:-1];
  v24 = [v22 predicateWithPredicate:v23];
  v55[2] = v24;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:3];
  v26 = [v19 predicateMatchingPredicates:v25];

  v27 = [MEMORY[0x277D2B620] allItemsQueryWithLibrary:v45 predicate:v26 orderingTerms:0 usingSections:0];
  v28 = _aggregatedFetchOfFileSizeForQuery(v27, v45);
  v29 = MEMORY[0x277D2B5A8];
  v54[0] = v26;
  v30 = [MEMORY[0x277D2B5C0] predicateWithProperty:*MEMORY[0x277D2B588] value:&unk_286C8D4C0 comparison:1];
  v54[1] = v30;
  v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v54 count:2];
  v32 = [v29 predicateMatchingPredicates:v31];

  v33 = MEMORY[0x277D2B620];
  v34 = [MEMORY[0x277D2B5F8] autoupdatingSharedLibrary];
  v35 = [v33 allItemsQueryWithLibrary:v34 predicate:v32 orderingTerms:0 usingSections:0];

  v36 = v28 + 7000000 * [v35 countOfEntities];
  v37 = NMLogForCategory(5);
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    v38 = @"NO";
    if (v42)
    {
      v38 = @"YES";
    }

    *buf = 138412802;
    v49 = v38;
    v50 = 2048;
    v51 = v36;
    v52 = 2112;
    v53 = v41;
    _os_log_impl(&dword_25B27B000, v37, OS_LOG_TYPE_DEFAULT, "[NMSKeepLocalRequestValidator] (finished) _fetchSizeOfPendingDownloadsWithPowerConstraintCheck - checkConstraint: %@ - total size in bytes: %llu - self: %@", buf, 0x20u);
  }

  v39 = *MEMORY[0x277D85DE8];
  return v36;
}

void __85__NMSKeepLocalRequestValidator__fetchSizeOfPendingDownloadsWithPowerConstraintCheck___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCABB0] numberWithLongLong:a2];
  [v2 addObject:v3];
}

void __62__NMSKeepLocalRequestValidator_performWithOptions_completion___block_invoke_24_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_25B27B000, a2, OS_LOG_TYPE_ERROR, "[NMSKeepLocalRequestValidator] Failed to get cellular policy. Error: %@.", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_finishWithOptions:(uint64_t)a1 validatorException:(NSObject *)a2 constraints:error:completion:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_25B27B000, a2, OS_LOG_TYPE_ERROR, "[NMSKeepLocalRequestValidator] Cannot proceed with KeepLocal request due to error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end