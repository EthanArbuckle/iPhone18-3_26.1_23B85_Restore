@interface CDPDSOSSecureBackupController
+ (id)_sanitizedInfoDictionary:(id)a3;
- (BOOL)_shouldUseSBDCacheWithSecureBackupContext:(id)a3 fallbackState:(unint64_t)a4;
- (CDPDSOSSecureBackupController)initWithContext:(id)a3 uiProvider:(id)a4 delegate:(id)a5;
- (CDPDSecureBackupDelegate)delegate;
- (id)_clientMetadataWithSecretType:(unint64_t)a3 length:(unint64_t)a4;
- (id)_dateWithSecureBackupDateString:(id)a3;
- (id)_recoverBackupDictionaryWithContext:(id)a3 fallbackState:(unint64_t)a4 error:(id *)a5;
- (id)_recoveryInfoDictionaryFromContext:(id)a3 usePreviouslyCachedSecret:(BOOL)a4;
- (void)_accountInfoWithCompletion:(id)a3;
- (void)_getBackupRecordDevicesIncludingUnrecoverableRecords:(BOOL)a3 completion:(id)a4;
- (void)accountInfoWithCompletion:(id)a3;
- (void)backupRecordsArePresentWithCompletion:(id)a3;
- (void)checkForExistingRecord:(id)a3;
- (void)checkForExistingRecordMatchingPredicate:(id)a3 forceFetch:(BOOL)a4 completion:(id)a5;
- (void)checkForExistingRecordWithPeerId:(id)a3 completion:(id)a4;
- (void)clearAccountInfoCache;
- (void)isEligibleForCDPWithCompletion:(id)a3;
- (void)recoverSecureBackupWithContext:(id)a3 completion:(id)a4;
- (void)synchronizeKeyValueStoreWithCompletion:(id)a3;
@end

@implementation CDPDSOSSecureBackupController

- (CDPDSOSSecureBackupController)initWithContext:(id)a3 uiProvider:(id)a4 delegate:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v19.receiver = self;
  v19.super_class = CDPDSOSSecureBackupController;
  v12 = [(CDPDSOSSecureBackupController *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_context, a3);
    objc_storeStrong(&v13->_uiProvider, a4);
    objc_storeWeak(&v13->_delegate, v11);
    v14 = [[CDPDSecureBackupProxyImpl alloc] initWithContext:v9];
    secureBackupProxy = v13->_secureBackupProxy;
    v13->_secureBackupProxy = v14;

    v16 = [CDPDSecureBackupConfiguration configurationWithContext:v9];
    configuration = v13->_configuration;
    v13->_configuration = v16;
  }

  return v13;
}

- (void)synchronizeKeyValueStoreWithCompletion:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __72__CDPDSOSSecureBackupController_synchronizeKeyValueStoreWithCompletion___block_invoke;
  v6[3] = &unk_278E24620;
  v7 = v4;
  v5 = v4;
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

- (void)accountInfoWithCompletion:(id)a3
{
  v4 = a3;
  v5 = v4;
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
    v8 = v4;
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

- (void)_accountInfoWithCompletion:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _os_activity_create(&dword_24510B000, "cdp: Fetching Account Info", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  v11.opaque[0] = 0;
  v11.opaque[1] = 0;
  os_activity_scope_enter(v5, &v11);
  v6 = [(CDPDSecureBackupConfiguration *)self->_configuration accountInfoFetchSetupDictionary];
  v7 = [v6 mutableCopy];

  [v7 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277CFB378]];
  v8 = _CDPLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = [CDPDSOSSecureBackupController _sanitizedInfoDictionary:v7];
    [(CDPDSOSSecureBackupController *)v9 _accountInfoWithCompletion:buf, v8];
  }

  [(CDPDSecureBackupProxy *)self->_secureBackupProxy accountInfoWithInfo:v7 completion:v4];
  os_activity_scope_leave(&v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)isEligibleForCDPWithCompletion:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v7 = v3;
    v4 = [MEMORY[0x277CFD4F8] sharedInstance];
    v5 = [v4 hasLocalSecret];

    if (v5)
    {
      v6 = 0;
    }

    else
    {
      v6 = _CDPStateError();
    }

    v7[2](v7, v5, v6);

    v3 = v7;
  }
}

- (void)backupRecordsArePresentWithCompletion:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __71__CDPDSOSSecureBackupController_backupRecordsArePresentWithCompletion___block_invoke;
  v6[3] = &unk_278E24620;
  v7 = v4;
  v5 = v4;
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

- (void)_getBackupRecordDevicesIncludingUnrecoverableRecords:(BOOL)a3 completion:(id)a4
{
  v5 = a4;
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
  v9 = v5;
  v7 = v5;
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

- (id)_dateWithSecureBackupDateString:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:@"en_US_POSIX"];
  [v4 setLocale:v5];

  [v4 setDateFormat:@"dd-MM-yyyy HH:mm:ss"];
  v6 = [v4 dateFromString:v3];
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
    v8 = [v4 dateFromString:v3];
  }

  v10 = v8;

  return v10;
}

- (void)checkForExistingRecord:(id)a3
{
  v4 = a3;
  v5 = [(CDPDSOSSecureBackupController *)self delegate];
  v6 = [v5 circlePeerIDForSecureBackupController:self];

  [(CDPDSOSSecureBackupController *)self checkForExistingRecordWithPeerId:v6 completion:v4];
}

- (void)checkForExistingRecordWithPeerId:(id)a3 completion:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = _CDPLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = v6;
    _os_log_impl(&dword_24510B000, v8, OS_LOG_TYPE_DEFAULT, "Checking if the peer has a secure backup: %@", buf, 0xCu);
  }

  v9 = MEMORY[0x277CCAC30];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __77__CDPDSOSSecureBackupController_checkForExistingRecordWithPeerId_completion___block_invoke;
  v13[3] = &unk_278E24668;
  v14 = v6;
  v10 = v6;
  v11 = [v9 predicateWithBlock:v13];
  [(CDPDSOSSecureBackupController *)self checkForExistingRecordMatchingPredicate:v11 forceFetch:1 completion:v7];

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __77__CDPDSOSSecureBackupController_checkForExistingRecordWithPeerId_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 recordID];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (void)checkForExistingRecordMatchingPredicate:(id)a3 forceFetch:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = _CDPLogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [CDPDSOSSecureBackupController checkForExistingRecordMatchingPredicate:forceFetch:completion:];
  }

  if (v9)
  {
    if (v8)
    {
      if (v6)
      {
        [(CDPDSOSSecureBackupController *)self clearAccountInfoCache];
      }

      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __95__CDPDSOSSecureBackupController_checkForExistingRecordMatchingPredicate_forceFetch_completion___block_invoke;
      v11[3] = &unk_278E24548;
      v12 = v8;
      v13 = v9;
      [(CDPDSOSSecureBackupController *)self _getBackupRecordDevicesIncludingUnrecoverableRecords:0 completion:v11];
    }

    else
    {
      (*(v9 + 2))(v9, 0, 0);
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

- (id)_clientMetadataWithSecretType:(unint64_t)a3 length:(unint64_t)a4
{
  v6 = [MEMORY[0x277CBEB38] dictionary];
  v7 = [MEMORY[0x277CCABB0] numberWithInt:a3 == 3];
  [v6 setObject:v7 forKey:*MEMORY[0x277CFB3A8]];

  v8 = [MEMORY[0x277CCABB0] numberWithInt:a3 == 2];
  [v6 setObject:v8 forKey:*MEMORY[0x277CFB3B8]];

  if (a3 == 2)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
    [v6 setObject:v9 forKey:*MEMORY[0x277CFB340]];
  }

  [v6 setObject:&unk_285822198 forKeyedSubscript:@"device_platform"];
  v10 = MGCopyAnswer();
  if (v10)
  {
    [v6 setObject:v10 forKeyedSubscript:@"device_name"];
  }

  v11 = MGCopyAnswer();
  if (v11)
  {
    [v6 setObject:v11 forKeyedSubscript:@"device_model"];
  }

  v12 = MGCopyAnswer();
  if (v12)
  {
    [v6 setObject:v12 forKeyedSubscript:@"device_model_version"];
  }

  v13 = [MEMORY[0x277CFD4F8] sharedInstance];
  v14 = [v13 deviceClass];

  if (v14)
  {
    [v6 setObject:v14 forKeyedSubscript:@"device_model_class"];
  }

  v15 = MGCopyAnswer();
  if (v15)
  {
    [v6 setObject:v15 forKeyedSubscript:@"device_color"];
  }

  v16 = MGCopyAnswer();
  if (v16)
  {
    [v6 setObject:v16 forKeyedSubscript:@"device_enclosure_color"];
  }

  v17 = [v6 copy];

  return v17;
}

- (void)recoverSecureBackupWithContext:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
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
    v8 = [(CDPDSOSSecureBackupController *)self _recoverBackupDictionaryWithContext:v6 fallbackState:0 error:&obj];
    objc_storeStrong(&v33, obj);
    v9 = v23[5];
    v23[5] = v8;

    if ([v29[5] indicatesRecoveryCanBeRetried])
    {
      v10 = v29[5];
      v29[5] = 0;

      v11 = v29;
      v20 = v29[5];
      v12 = [(CDPDSOSSecureBackupController *)self _recoverBackupDictionaryWithContext:v6 fallbackState:1 error:&v20];
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
      v16 = v6;
      v17 = v7;
      [(CDPContext *)context reauthenticateUserWithCompletion:v15];
    }

    else
    {
      (*(v7 + 2))(v7, v23[5], v29[5]);
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

- (BOOL)_shouldUseSBDCacheWithSecureBackupContext:(id)a3 fallbackState:(unint64_t)a4
{
  v6 = a3;
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
    if (a4 == 2 || ![MEMORY[0x277CFD560] useCDPContextSecretInsteadOfSBDSecretFeatureEnabled])
    {
      v8 = [v6 usePreviouslyCachedSecret];
      goto LABEL_11;
    }

    if (a4 != 1)
    {
      v8 = [(CDPContext *)self->_context type]== 10;
      goto LABEL_11;
    }
  }

  v8 = 1;
LABEL_11:

  return v8;
}

- (id)_recoverBackupDictionaryWithContext:(id)a3 fallbackState:(unint64_t)a4 error:(id *)a5
{
  v33 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = _os_activity_create(&dword_24510B000, "cdp: Recovery Backup", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v9, &state);
  v10 = [(CDPDSOSSecureBackupController *)self _recoveryInfoDictionaryFromContext:v8 usePreviouslyCachedSecret:[(CDPDSOSSecureBackupController *)self _shouldUseSBDCacheWithSecureBackupContext:v8 fallbackState:a4]];
  [v10 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277CFB378]];
  v11 = _CDPLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = [v8 device];
    v13 = [CDPDSOSSecureBackupController _sanitizedInfoDictionary:v10];
    [(CDPDSOSSecureBackupController *)v12 _recoverBackupDictionaryWithContext:v13 fallbackState:buf error:v11];
  }

  if ([v8 silentRecovery])
  {
    v14 = MEMORY[0x277CFD880];
  }

  else
  {
    v15 = [v8 recoveryKey];

    v14 = MEMORY[0x277CFD7C8];
    if (!v15)
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

  v26 = [MEMORY[0x277CFD490] rtcAnalyticsReporter];
  [v26 sendEvent:v16];

  if (a5)
  {
    v27 = v21;
    *a5 = v21;
  }

  os_activity_scope_leave(&state);
  v28 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)_recoveryInfoDictionaryFromContext:(id)a3 usePreviouslyCachedSecret:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [MEMORY[0x277CBEB38] dictionary];
  v8 = [v6 device];
  v9 = [(CDPDSecureBackupConfiguration *)self->_configuration escrowAuthInfoForCreateEscrowRecordFlow:0];
  [v7 addEntriesFromDictionary:v9];

  v10 = [v6 recoverySecret];

  if (v10)
  {
    v11 = [v6 recoverySecret];
    [v7 setObject:v11 forKey:*MEMORY[0x277CFB348]];
  }

  else
  {
    v12 = [v6 recoveryKey];

    if (v12)
    {
      v13 = [v6 recoveryKey];
      [v7 setObject:v13 forKey:*MEMORY[0x277CFB360]];

      [v7 setObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CFB2D8]];
    }
  }

  if (v4)
  {
    [v7 setObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CFB3A0]];
  }

  if (([v8 isUsingMultipleiCSC] & 1) != 0 || objc_msgSend(v6, "silentRecovery"))
  {
    v14 = MEMORY[0x277CBEC38];
    [v7 setObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CFB3B0]];
    [v7 setObject:v14 forKey:*MEMORY[0x277CFB2D8]];
  }

  v15 = [v8 recordID];

  if (v15)
  {
    v16 = [v8 recordID];
    [v7 setObject:v16 forKey:*MEMORY[0x277CFB358]];
  }

  if ([v6 silentRecovery])
  {
    [v7 setObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CFB380]];
  }

  return v7;
}

+ (id)_sanitizedInfoDictionary:(id)a3
{
  v3 = [a3 mutableCopy];
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