@interface CDPDSOSSecureBackupController
+ (id)_sanitizedInfoDictionary:(id)dictionary;
- (BOOL)_shouldUseSBDCacheWithSecureBackupContext:(id)context fallbackState:(unint64_t)state;
- (CDPDSOSSecureBackupController)initWithContext:(id)context uiProvider:(id)provider delegate:(id)delegate;
- (CDPDSecureBackupDelegate)delegate;
- (id)_clientMetadataWithSecretType:(unint64_t)type length:(unint64_t)length;
- (id)_dateWithSecureBackupDateString:(id)string;
- (id)_recoverBackupDictionaryWithContext:(id)context fallbackState:(unint64_t)state error:(id *)error;
- (id)_recoveryInfoDictionaryFromContext:(id)context usePreviouslyCachedSecret:(BOOL)secret;
- (void)_accountInfoWithCompletion:(id)completion;
- (void)_getBackupRecordDevicesIncludingUnrecoverableRecords:(BOOL)records completion:(id)completion;
- (void)accountInfoWithCompletion:(id)completion;
- (void)backupRecordsArePresentWithCompletion:(id)completion;
- (void)checkForExistingRecord:(id)record;
- (void)checkForExistingRecordMatchingPredicate:(id)predicate forceFetch:(BOOL)fetch completion:(id)completion;
- (void)checkForExistingRecordWithPeerId:(id)id completion:(id)completion;
- (void)clearAccountInfoCache;
- (void)isEligibleForCDPWithCompletion:(id)completion;
- (void)recoverSecureBackupWithContext:(id)context completion:(id)completion;
- (void)synchronizeKeyValueStoreWithCompletion:(id)completion;
@end

@implementation CDPDSOSSecureBackupController

- (CDPDSOSSecureBackupController)initWithContext:(id)context uiProvider:(id)provider delegate:(id)delegate
{
  contextCopy = context;
  providerCopy = provider;
  delegateCopy = delegate;
  v19.receiver = self;
  v19.super_class = CDPDSOSSecureBackupController;
  v12 = [(CDPDSOSSecureBackupController *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_context, context);
    objc_storeStrong(&v13->_uiProvider, provider);
    objc_storeWeak(&v13->_delegate, delegateCopy);
    v14 = [[CDPDSecureBackupProxyImpl alloc] initWithContext:contextCopy];
    secureBackupProxy = v13->_secureBackupProxy;
    v13->_secureBackupProxy = v14;

    v16 = [CDPDSecureBackupConfiguration configurationWithContext:contextCopy];
    configuration = v13->_configuration;
    v13->_configuration = v16;
  }

  return v13;
}

- (void)synchronizeKeyValueStoreWithCompletion:(id)completion
{
  completionCopy = completion;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __72__CDPDSOSSecureBackupController_synchronizeKeyValueStoreWithCompletion___block_invoke;
  v6[3] = &unk_278E24620;
  v7 = completionCopy;
  v5 = completionCopy;
  [(CDPDSOSSecureBackupController *)self accountInfoWithCompletion:v6];
}

uint64_t __72__CDPDSOSSecureBackupController_synchronizeKeyValueStoreWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2 != 0);
  }

  return result;
}

- (void)accountInfoWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = completionCopy;
  if (self->_cachedAccountInfo)
  {
    v6 = _CDPLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [CDPDSOSSecureBackupController accountInfoWithCompletion:];
    }

    if (v5)
    {
      (v5)[2](v5, self->_cachedAccountInfo, 0);
    }
  }

  else
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __59__CDPDSOSSecureBackupController_accountInfoWithCompletion___block_invoke;
    v7[3] = &unk_278E245F8;
    v7[4] = self;
    v8 = completionCopy;
    [(CDPDSOSSecureBackupController *)self _accountInfoWithCompletion:v7];
  }
}

void __59__CDPDSOSSecureBackupController_accountInfoWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v8 = _CDPLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    __59__CDPDSOSSecureBackupController_accountInfoWithCompletion___block_invoke_cold_1();
  }

  objc_storeStrong((*(a1 + 32) + 40), a2);
  v9 = *(a1 + 40);
  if (v9)
  {
    (*(v9 + 16))(v9, *(*(a1 + 32) + 40), v7);
  }
}

- (void)clearAccountInfoCache
{
  v3 = _CDPLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_24510B000, v3, OS_LOG_TYPE_DEFAULT, "Clearing account cache...", v5, 2u);
  }

  cachedAccountInfo = self->_cachedAccountInfo;
  self->_cachedAccountInfo = 0;
}

- (void)_accountInfoWithCompletion:(id)completion
{
  v13 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = _os_activity_create(&dword_24510B000, "cdp: Fetching Account Info", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  v11.opaque[0] = 0;
  v11.opaque[1] = 0;
  os_activity_scope_enter(v5, &v11);
  accountInfoFetchSetupDictionary = [(CDPDSecureBackupConfiguration *)self->_configuration accountInfoFetchSetupDictionary];
  v7 = [accountInfoFetchSetupDictionary mutableCopy];

  [v7 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277CFB378]];
  v8 = _CDPLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = [CDPDSOSSecureBackupController _sanitizedInfoDictionary:v7];
    [(CDPDSOSSecureBackupController *)v9 _accountInfoWithCompletion:buf, v8];
  }

  [(CDPDSecureBackupProxy *)self->_secureBackupProxy accountInfoWithInfo:v7 completion:completionCopy];
  os_activity_scope_leave(&v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)isEligibleForCDPWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    v7 = completionCopy;
    mEMORY[0x277CFD4F8] = [MEMORY[0x277CFD4F8] sharedInstance];
    hasLocalSecret = [mEMORY[0x277CFD4F8] hasLocalSecret];

    if (hasLocalSecret)
    {
      v6 = 0;
    }

    else
    {
      v6 = _CDPStateError();
    }

    v7[2](v7, hasLocalSecret, v6);

    completionCopy = v7;
  }
}

- (void)backupRecordsArePresentWithCompletion:(id)completion
{
  completionCopy = completion;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __71__CDPDSOSSecureBackupController_backupRecordsArePresentWithCompletion___block_invoke;
  v6[3] = &unk_278E24620;
  v7 = completionCopy;
  v5 = completionCopy;
  [(CDPDSOSSecureBackupController *)self accountInfoWithCompletion:v6];
}

void __71__CDPDSOSSecureBackupController_backupRecordsArePresentWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _CDPLogSystem();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __71__CDPDSOSSecureBackupController_backupRecordsArePresentWithCompletion___block_invoke_cold_1();
    }

    v9 = *(a1 + 32);
    if (v9)
    {
      v10 = *(v9 + 16);
LABEL_12:
      v10();
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __71__CDPDSOSSecureBackupController_backupRecordsArePresentWithCompletion___block_invoke_cold_2();
    }

    v11 = [v5 objectForKeyedSubscript:*MEMORY[0x277CFB330]];
    v12 = [v11 count];

    v13 = [v5 objectForKeyedSubscript:*MEMORY[0x277CFB3D0]];
    v14 = [v13 count];

    v15 = _CDPLogSystem();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      __71__CDPDSOSSecureBackupController_backupRecordsArePresentWithCompletion___block_invoke_cold_3(v12 != 0, v14 != 0, v15);
    }

    v16 = *(a1 + 32);
    if (v16)
    {
      v10 = *(v16 + 16);
      goto LABEL_12;
    }
  }
}

- (void)_getBackupRecordDevicesIncludingUnrecoverableRecords:(BOOL)records completion:(id)completion
{
  completionCopy = completion;
  v6 = _CDPLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24510B000, v6, OS_LOG_TYPE_DEFAULT, "getBackupRecordDevicesWithCompletion: called, fetching account info from SecureBackup", buf, 2u);
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __97__CDPDSOSSecureBackupController__getBackupRecordDevicesIncludingUnrecoverableRecords_completion___block_invoke;
  v8[3] = &unk_278E245F8;
  v8[4] = self;
  v9 = completionCopy;
  v7 = completionCopy;
  [(CDPDSOSSecureBackupController *)self accountInfoWithCompletion:v8];
}

void __97__CDPDSOSSecureBackupController__getBackupRecordDevicesIncludingUnrecoverableRecords_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v66 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  if (v5)
  {
    v6 = _CDPLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __97__CDPDSOSSecureBackupController__getBackupRecordDevicesIncludingUnrecoverableRecords_completion___block_invoke_cold_1();
    }
  }

  v50 = [MEMORY[0x277CBEB18] array];
  v7 = [*(*(a1 + 32) + 16) desiresAllRecords];
  v8 = MEMORY[0x277CFB2A0];
  if (!v7)
  {
    v8 = MEMORY[0x277CFB3D0];
  }

  v49 = v4;
  [v4 objectForKeyedSubscript:*v8];
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  obj = v58 = 0u;
  v9 = [obj countByEnumeratingWithState:&v55 objects:v65 count:16];
  if (!v9)
  {
    v11 = 0;
    goto LABEL_41;
  }

  v10 = v9;
  v11 = 0;
  v52 = *v56;
  do
  {
    v12 = 0;
    do
    {
      if (*v56 != v52)
      {
        objc_enumerationMutation(obj);
      }

      v54 = v12;
      v13 = *(*(&v55 + 1) + 8 * v12);
      v14 = [objc_alloc(MEMORY[0x277CFD4C0]) initWithSecureBackupRecordInfo:v13];
      v15 = v14;
      if ([*(a1 + 32) fakeNearlyDepletedRecords])
      {
        v16 = _CDPLogSystem();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v60 = v15;
          _os_log_debug_impl(&dword_24510B000, v16, OS_LOG_TYPE_DEBUG, "**** DEBUG **** Setting fake remaining attempts value of 1 for %@", buf, 0xCu);
        }

        v14 = v15;
        [v15 setRemainingAttempts:1];
      }

      if (v14)
      {
        if ([v14 remainingAttempts])
        {
          [v50 addObject:v14];
        }

        else if (![v14 remainingAttempts])
        {
          v17 = _CDPLogSystem();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            v18 = [v15 remainingAttempts];
            *buf = 138412546;
            v60 = v15;
            v61 = 2048;
            v62 = v18;
            _os_log_impl(&dword_24510B000, v17, OS_LOG_TYPE_DEFAULT, "Disqualified device %@ because the remaining attempts is %lu", buf, 0x16u);
          }
        }
      }

      v19 = [v13 objectForKeyedSubscript:@"metadata"];
      v20 = [v19 objectForKeyedSubscript:@"ClientMetadata"];
      v21 = [v20 objectForKeyedSubscript:@"SecureBackupMetadataTimestamp"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v22 = v21;
        v23 = [*(a1 + 32) _dateWithSecureBackupDateString:v21];
LABEL_27:
        v24 = v23;
        goto LABEL_29;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v22 = v21;
        v23 = v21;
        goto LABEL_27;
      }

      v22 = v21;
      v24 = 0;
LABEL_29:
      [v15 setRecordDate:v24];
      v25 = _CDPLogSystem();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = objc_opt_class();
        *buf = 138412802;
        v60 = v15;
        v61 = 2112;
        v62 = v24;
        v63 = 2112;
        v64 = v26;
        v27 = v26;
        _os_log_impl(&dword_24510B000, v25, OS_LOG_TYPE_DEFAULT, "Backup record found for device %@ with date %@ (%@)", buf, 0x20u);
      }

      if (!v11 || v24 && ([v11 laterDate:v24], v28 = objc_claimAutoreleasedReturnValue(), v28, v28 == v24))
      {
        v29 = _CDPLogSystem();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412802;
          v60 = v24;
          v61 = 2112;
          v62 = v11;
          v63 = 2112;
          v64 = v15;
          _os_log_impl(&dword_24510B000, v29, OS_LOG_TYPE_DEFAULT, "Backup record date %@ is later than the previously known newest record (%@), promoting %@ as newest device record", buf, 0x20u);
        }

        v30 = v24;
        v11 = v30;
      }

      v12 = v54 + 1;
    }

    while (v10 != v54 + 1);
    v10 = [obj countByEnumeratingWithState:&v55 objects:v65 count:16];
  }

  while (v10);
LABEL_41:

  v31 = _CDPLogSystem();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v60 = v11;
    _os_log_impl(&dword_24510B000, v31, OS_LOG_TYPE_DEFAULT, "Finished parsing multiple-iCSC records and found the newest record to be %@", buf, 0xCu);
  }

  v32 = v50;
  v33 = v48;
  v34 = v49;
  if ([v50 count])
  {
    v35 = 1;
  }

  else
  {
    v36 = *MEMORY[0x277CFB330];
    v37 = [v49 objectForKeyedSubscript:*MEMORY[0x277CFB330]];
    v35 = v37 == 0;
    if (v37)
    {
      v38 = [v49 objectForKeyedSubscript:v36];
      v39 = _CDPLogSystem();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v60 = v38;
        _os_log_impl(&dword_24510B000, v39, OS_LOG_TYPE_DEFAULT, "Found a single-iCSC metadata record. Returning that as a faux-device using %@", buf, 0xCu);
      }

      v40 = [objc_alloc(MEMORY[0x277CFD4C0]) initWithSecureBackupMetadataInfo:v38];
      v41 = [v49 objectForKeyedSubscript:*MEMORY[0x277CFB3C0]];
      [v40 setHasRandomSecret:{objc_msgSend(v41, "BOOLValue")}];

      v34 = v49;
      [v50 removeAllObjects];
      [v50 addObject:v40];

      v33 = v48;
    }

    else
    {
      v38 = _CDPLogSystem();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_24510B000, v38, OS_LOG_TYPE_DEFAULT, "No single-iCSC metadata record is present", buf, 2u);
      }
    }

    v32 = v50;
  }

  v42 = _CDPLogSystem();
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
  {
    v43 = [v32 count];
    *buf = 134218240;
    v60 = v43;
    v61 = 1024;
    LODWORD(v62) = v35;
    _os_log_impl(&dword_24510B000, v42, OS_LOG_TYPE_DEFAULT, "Finished parsing backup records, returning %lu devices and isUsingMultipleICSC=%i", buf, 0x12u);
  }

  if (*(a1 + 40))
  {
    v44 = [v32 sortedArrayUsingComparator:&__block_literal_global_0];
    v45 = *(a1 + 40);
    v46 = [v44 copy];
    (*(v45 + 16))(v45, v35, v46, v33);

    v32 = v50;
  }

  v47 = *MEMORY[0x277D85DE8];
}

uint64_t __97__CDPDSOSSecureBackupController__getBackupRecordDevicesIncludingUnrecoverableRecords_completion___block_invoke_39(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 recordDate];
  v6 = [v4 recordDate];

  v7 = [v5 compare:v6];
  return v7;
}

- (id)_dateWithSecureBackupDateString:(id)string
{
  stringCopy = string;
  v4 = objc_opt_new();
  v5 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:@"en_US_POSIX"];
  [v4 setLocale:v5];

  [v4 setDateFormat:@"dd-MM-yyyy HH:mm:ss"];
  v6 = [v4 dateFromString:stringCopy];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v9 = [MEMORY[0x277CBEBB0] timeZoneForSecondsFromGMT:0];
    [v4 setTimeZone:v9];

    [v4 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    v8 = [v4 dateFromString:stringCopy];
  }

  v10 = v8;

  return v10;
}

- (void)checkForExistingRecord:(id)record
{
  recordCopy = record;
  delegate = [(CDPDSOSSecureBackupController *)self delegate];
  v6 = [delegate circlePeerIDForSecureBackupController:self];

  [(CDPDSOSSecureBackupController *)self checkForExistingRecordWithPeerId:v6 completion:recordCopy];
}

- (void)checkForExistingRecordWithPeerId:(id)id completion:(id)completion
{
  v17 = *MEMORY[0x277D85DE8];
  idCopy = id;
  completionCopy = completion;
  v8 = _CDPLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = idCopy;
    _os_log_impl(&dword_24510B000, v8, OS_LOG_TYPE_DEFAULT, "Checking if the peer has a secure backup: %@", buf, 0xCu);
  }

  v9 = MEMORY[0x277CCAC30];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __77__CDPDSOSSecureBackupController_checkForExistingRecordWithPeerId_completion___block_invoke;
  v13[3] = &unk_278E24668;
  v14 = idCopy;
  v10 = idCopy;
  v11 = [v9 predicateWithBlock:v13];
  [(CDPDSOSSecureBackupController *)self checkForExistingRecordMatchingPredicate:v11 forceFetch:1 completion:completionCopy];

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __77__CDPDSOSSecureBackupController_checkForExistingRecordWithPeerId_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 recordID];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (void)checkForExistingRecordMatchingPredicate:(id)predicate forceFetch:(BOOL)fetch completion:(id)completion
{
  fetchCopy = fetch;
  predicateCopy = predicate;
  completionCopy = completion;
  v10 = _CDPLogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [CDPDSOSSecureBackupController checkForExistingRecordMatchingPredicate:forceFetch:completion:];
  }

  if (completionCopy)
  {
    if (predicateCopy)
    {
      if (fetchCopy)
      {
        [(CDPDSOSSecureBackupController *)self clearAccountInfoCache];
      }

      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __95__CDPDSOSSecureBackupController_checkForExistingRecordMatchingPredicate_forceFetch_completion___block_invoke;
      v11[3] = &unk_278E24548;
      v12 = predicateCopy;
      v13 = completionCopy;
      [(CDPDSOSSecureBackupController *)self _getBackupRecordDevicesIncludingUnrecoverableRecords:0 completion:v11];
    }

    else
    {
      (*(completionCopy + 2))(completionCopy, 0, 0);
    }
  }
}

void __95__CDPDSOSSecureBackupController_checkForExistingRecordMatchingPredicate_forceFetch_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if (v6)
  {
    v7 = _CDPLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __95__CDPDSOSSecureBackupController_checkForExistingRecordMatchingPredicate_forceFetch_completion___block_invoke_cold_1();
    }
  }

  else
  {
    v7 = [a3 filteredArrayUsingPredicate:*(a1 + 32)];
    v9 = _CDPLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[NSObject count](v7, "count")}];
      v12 = 138412290;
      v13 = v10;
      _os_log_impl(&dword_24510B000, v9, OS_LOG_TYPE_DEFAULT, "Found %@ matching devices", &v12, 0xCu);
    }

    if ([v7 count])
    {
      v8 = [v7 objectAtIndexedSubscript:0];
      goto LABEL_9;
    }
  }

  v8 = 0;
LABEL_9:

  (*(*(a1 + 40) + 16))();
  v11 = *MEMORY[0x277D85DE8];
}

- (id)_clientMetadataWithSecretType:(unint64_t)type length:(unint64_t)length
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v7 = [MEMORY[0x277CCABB0] numberWithInt:type == 3];
  [dictionary setObject:v7 forKey:*MEMORY[0x277CFB3A8]];

  v8 = [MEMORY[0x277CCABB0] numberWithInt:type == 2];
  [dictionary setObject:v8 forKey:*MEMORY[0x277CFB3B8]];

  if (type == 2)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:length];
    [dictionary setObject:v9 forKey:*MEMORY[0x277CFB340]];
  }

  [dictionary setObject:&unk_285822198 forKeyedSubscript:@"device_platform"];
  v10 = MGCopyAnswer();
  if (v10)
  {
    [dictionary setObject:v10 forKeyedSubscript:@"device_name"];
  }

  v11 = MGCopyAnswer();
  if (v11)
  {
    [dictionary setObject:v11 forKeyedSubscript:@"device_model"];
  }

  v12 = MGCopyAnswer();
  if (v12)
  {
    [dictionary setObject:v12 forKeyedSubscript:@"device_model_version"];
  }

  mEMORY[0x277CFD4F8] = [MEMORY[0x277CFD4F8] sharedInstance];
  deviceClass = [mEMORY[0x277CFD4F8] deviceClass];

  if (deviceClass)
  {
    [dictionary setObject:deviceClass forKeyedSubscript:@"device_model_class"];
  }

  v15 = MGCopyAnswer();
  if (v15)
  {
    [dictionary setObject:v15 forKeyedSubscript:@"device_color"];
  }

  v16 = MGCopyAnswer();
  if (v16)
  {
    [dictionary setObject:v16 forKeyedSubscript:@"device_enclosure_color"];
  }

  v17 = [dictionary copy];

  return v17;
}

- (void)recoverSecureBackupWithContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  if (completionCopy)
  {
    v28 = 0;
    v29 = &v28;
    v30 = 0x3032000000;
    v31 = __Block_byref_object_copy_;
    v32 = __Block_byref_object_dispose_;
    v33 = 0;
    v22 = 0;
    v23 = &v22;
    v24 = 0x3032000000;
    v25 = __Block_byref_object_copy_;
    v26 = __Block_byref_object_dispose_;
    v27 = 0;
    obj = 0;
    v8 = [(CDPDSOSSecureBackupController *)self _recoverBackupDictionaryWithContext:contextCopy fallbackState:0 error:&obj];
    objc_storeStrong(&v33, obj);
    v9 = v23[5];
    v23[5] = v8;

    if ([v29[5] indicatesRecoveryCanBeRetried])
    {
      v10 = v29[5];
      v29[5] = 0;

      v11 = v29;
      v20 = v29[5];
      v12 = [(CDPDSOSSecureBackupController *)self _recoverBackupDictionaryWithContext:contextCopy fallbackState:1 error:&v20];
      objc_storeStrong(v11 + 5, v20);
      v13 = v23[5];
      v23[5] = v12;
    }

    if ([v29[5] isAuthenticationError])
    {
      context = self->_context;
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __75__CDPDSOSSecureBackupController_recoverSecureBackupWithContext_completion___block_invoke;
      v15[3] = &unk_278E24690;
      v18 = &v28;
      v19 = &v22;
      v15[4] = self;
      v16 = contextCopy;
      v17 = completionCopy;
      [(CDPContext *)context reauthenticateUserWithCompletion:v15];
    }

    else
    {
      (*(completionCopy + 2))(completionCopy, v23[5], v29[5]);
    }

    _Block_object_dispose(&v22, 8);

    _Block_object_dispose(&v28, 8);
  }
}

uint64_t __75__CDPDSOSSecureBackupController_recoverSecureBackupWithContext_completion___block_invoke(void *a1, int a2)
{
  if (a2)
  {
    v3 = *(a1[7] + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = 0;

    v5 = a1[4];
    v6 = a1[5];
    v7 = *(a1[7] + 8);
    obj = *(v7 + 40);
    v8 = [v5 _recoverBackupDictionaryWithContext:v6 fallbackState:0 error:&obj];
    objc_storeStrong((v7 + 40), obj);
    v9 = *(a1[8] + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    if ([*(*(a1[7] + 8) + 40) indicatesRecoveryCanBeRetried])
    {
      v11 = *(a1[7] + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = 0;

      v13 = a1[4];
      v14 = a1[5];
      v15 = *(a1[7] + 8);
      v24 = *(v15 + 40);
      v16 = [v13 _recoverBackupDictionaryWithContext:v14 fallbackState:1 error:&v24];
      objc_storeStrong((v15 + 40), v24);
      v17 = *(a1[8] + 8);
      v18 = *(v17 + 40);
      *(v17 + 40) = v16;
    }

    v19 = *(*(a1[8] + 8) + 40);
    v20 = *(*(a1[7] + 8) + 40);
    return (*(a1[6] + 16))();
  }

  else
  {
    v22 = a1[6];
    v23 = *(a1[6] + 16);

    return v23();
  }
}

- (BOOL)_shouldUseSBDCacheWithSecureBackupContext:(id)context fallbackState:(unint64_t)state
{
  contextCopy = context;
  if (CFPreferencesGetAppBooleanValue(@"ForceUseCachedSecret", @"com.apple.corecdp", 0))
  {
    v7 = _CDPLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [CDPDSOSSecureBackupController _shouldUseSBDCacheWithSecureBackupContext:fallbackState:];
    }
  }

  else
  {
    if (state == 2 || ![MEMORY[0x277CFD560] useCDPContextSecretInsteadOfSBDSecretFeatureEnabled])
    {
      usePreviouslyCachedSecret = [contextCopy usePreviouslyCachedSecret];
      goto LABEL_11;
    }

    if (state != 1)
    {
      usePreviouslyCachedSecret = [(CDPContext *)self->_context type]== 10;
      goto LABEL_11;
    }
  }

  usePreviouslyCachedSecret = 1;
LABEL_11:

  return usePreviouslyCachedSecret;
}

- (id)_recoverBackupDictionaryWithContext:(id)context fallbackState:(unint64_t)state error:(id *)error
{
  v33 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v9 = _os_activity_create(&dword_24510B000, "cdp: Recovery Backup", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v9, &state);
  v10 = [(CDPDSOSSecureBackupController *)self _recoveryInfoDictionaryFromContext:contextCopy usePreviouslyCachedSecret:[(CDPDSOSSecureBackupController *)self _shouldUseSBDCacheWithSecureBackupContext:contextCopy fallbackState:state]];
  [v10 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277CFB378]];
  v11 = _CDPLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    device = [contextCopy device];
    v13 = [CDPDSOSSecureBackupController _sanitizedInfoDictionary:v10];
    [(CDPDSOSSecureBackupController *)device _recoverBackupDictionaryWithContext:v13 fallbackState:buf error:v11];
  }

  if ([contextCopy silentRecovery])
  {
    v14 = MEMORY[0x277CFD880];
  }

  else
  {
    recoveryKey = [contextCopy recoveryKey];

    v14 = MEMORY[0x277CFD7C8];
    if (!recoveryKey)
    {
      v14 = MEMORY[0x277CFD828];
    }
  }

  v16 = [MEMORY[0x277CE44D8] analyticsEventWithContext:self->_context eventName:*v14 category:*MEMORY[0x277CFD930]];
  v17 = objc_alloc_init(CDPDRemoteSecretValidationResult);
  secureBackupProxy = self->_secureBackupProxy;
  v30 = 0;
  v19 = [(CDPDSecureBackupProxy *)secureBackupProxy recoverWithInfo:v10 error:&v30];
  v20 = v30;
  if (v20)
  {
    v21 = v20;
    if (v19)
    {
      v22 = _CDPLogSystem();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [CDPDSOSSecureBackupController _recoverBackupDictionaryWithContext:fallbackState:error:];
      }

      v23 = [v21 errorByExtendingUserInfoWithDictionary:v19];

      v17 = 0;
      v21 = v23;
    }

    v24 = _CDPLogSystem();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [CDPDSOSSecureBackupController _recoverBackupDictionaryWithContext:fallbackState:error:];
    }

    [v16 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:*MEMORY[0x277CFD6C0]];
    [v16 populateUnderlyingErrorsStartingWithRootError:v21];
  }

  else
  {
    [(CDPDRemoteSecretValidationResult *)v17 setRecoveredInfo:v19];
    v25 = _CDPLogSystem();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      [CDPDSOSSecureBackupController _recoverBackupDictionaryWithContext:fallbackState:error:];
    }

    [v16 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277CFD6C0]];
    v21 = 0;
  }

  rtcAnalyticsReporter = [MEMORY[0x277CFD490] rtcAnalyticsReporter];
  [rtcAnalyticsReporter sendEvent:v16];

  if (error)
  {
    v27 = v21;
    *error = v21;
  }

  os_activity_scope_leave(&state);
  v28 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)_recoveryInfoDictionaryFromContext:(id)context usePreviouslyCachedSecret:(BOOL)secret
{
  secretCopy = secret;
  contextCopy = context;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  device = [contextCopy device];
  v9 = [(CDPDSecureBackupConfiguration *)self->_configuration escrowAuthInfoForCreateEscrowRecordFlow:0];
  [dictionary addEntriesFromDictionary:v9];

  recoverySecret = [contextCopy recoverySecret];

  if (recoverySecret)
  {
    recoverySecret2 = [contextCopy recoverySecret];
    [dictionary setObject:recoverySecret2 forKey:*MEMORY[0x277CFB348]];
  }

  else
  {
    recoveryKey = [contextCopy recoveryKey];

    if (recoveryKey)
    {
      recoveryKey2 = [contextCopy recoveryKey];
      [dictionary setObject:recoveryKey2 forKey:*MEMORY[0x277CFB360]];

      [dictionary setObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CFB2D8]];
    }
  }

  if (secretCopy)
  {
    [dictionary setObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CFB3A0]];
  }

  if (([device isUsingMultipleiCSC] & 1) != 0 || objc_msgSend(contextCopy, "silentRecovery"))
  {
    v14 = MEMORY[0x277CBEC38];
    [dictionary setObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CFB3B0]];
    [dictionary setObject:v14 forKey:*MEMORY[0x277CFB2D8]];
  }

  recordID = [device recordID];

  if (recordID)
  {
    recordID2 = [device recordID];
    [dictionary setObject:recordID2 forKey:*MEMORY[0x277CFB358]];
  }

  if ([contextCopy silentRecovery])
  {
    [dictionary setObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CFB380]];
  }

  return dictionary;
}

+ (id)_sanitizedInfoDictionary:(id)dictionary
{
  v3 = [dictionary mutableCopy];
  v4 = *MEMORY[0x277CFB348];
  v5 = [v3 objectForKey:*MEMORY[0x277CFB348]];

  if (v5)
  {
    [v3 setObject:@"< REDACTED >" forKey:v4];
  }

  v6 = *MEMORY[0x277CFB2C8];
  v7 = [v3 objectForKey:*MEMORY[0x277CFB2C8]];

  if (v7)
  {
    [v3 setObject:@"< REDACTED >" forKey:v6];
  }

  v8 = *MEMORY[0x277CFB2B0];
  v9 = [v3 objectForKey:*MEMORY[0x277CFB2B0]];

  if (v9)
  {
    [v3 setObject:@"< REDACTED >" forKey:v8];
  }

  v10 = *MEMORY[0x277CFB360];
  v11 = [v3 objectForKey:*MEMORY[0x277CFB360]];

  if (v11)
  {
    [v3 setObject:@"< REDACTED >" forKey:v10];
  }

  v12 = [v3 copy];

  return v12;
}

- (CDPDSecureBackupDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)accountInfoWithCompletion:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __59__CDPDSOSSecureBackupController_accountInfoWithCompletion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_accountInfoWithCompletion:(os_log_t)log .cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_debug_impl(&dword_24510B000, log, OS_LOG_TYPE_DEBUG, "Fetching account info with %@", buf, 0xCu);
}

void __71__CDPDSOSSecureBackupController_backupRecordsArePresentWithCompletion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_24510B000, v0, v1, "Failed to check for secure backup records: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __71__CDPDSOSSecureBackupController_backupRecordsArePresentWithCompletion___block_invoke_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __71__CDPDSOSSecureBackupController_backupRecordsArePresentWithCompletion___block_invoke_cold_3(char a1, char a2, os_log_t log)
{
  v3 = @"NO";
  v10 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  if (a2)
  {
    v3 = @"YES";
  }

  v6 = 138412546;
  v7 = v4;
  v8 = 2112;
  v9 = v3;
  _os_log_debug_impl(&dword_24510B000, log, OS_LOG_TYPE_DEBUG, "Secure backup hasSingleICSCBackup=%@ hasMultipleICSCBackups=%@", &v6, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __97__CDPDSOSSecureBackupController__getBackupRecordDevicesIncludingUnrecoverableRecords_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_24510B000, v0, v1, "SecureBackup returned error %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)checkForExistingRecordMatchingPredicate:forceFetch:completion:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __95__CDPDSOSSecureBackupController_checkForExistingRecordMatchingPredicate_forceFetch_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_24510B000, v0, v1, "Check for existing backup failed with error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_shouldUseSBDCacheWithSecureBackupContext:fallbackState:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_recoverBackupDictionaryWithContext:(uint8_t *)buf fallbackState:(os_log_t)log error:.cold.1(void *a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_debug_impl(&dword_24510B000, log, OS_LOG_TYPE_DEBUG, "Attempting to recover SecureBackup secret from device %@ using info %@", buf, 0x16u);
}

- (void)_recoverBackupDictionaryWithContext:fallbackState:error:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_24510B000, v0, v1, "Recovery error had additional info: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_recoverBackupDictionaryWithContext:fallbackState:error:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_24510B000, v0, v1, "Failed to recover SecureBackup with error %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_recoverBackupDictionaryWithContext:fallbackState:error:.cold.4()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

@end