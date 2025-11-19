@interface CDPDSecureBackupController
+ (id)_dateWithSecureBackupDateString:(id)a3;
+ (id)_printableAccountInfo:(id)a3;
+ (id)_sanitizedInfoDictionary:(id)a3;
- (BOOL)_disableSecureBackupWithEnableInfo:(id)a3 error:(id *)a4;
- (BOOL)_disableThenEnableWithInfo:(id)a3 error:(id *)a4;
- (BOOL)_isInSOSCircle;
- (BOOL)_isRecoveryKeySetInOctagonWithConfig:(id)a3;
- (BOOL)_isRecoveryKeySetInSOSWithConfig:(id)a3;
- (BOOL)_shouldUseSBDCacheWithSecureBackupContext:(id)a3 fallbackState:(unint64_t)a4;
- (BOOL)_validateOctagonRecoveryKeyWithConfig:(id)a3 recoveryKey:(id)a4;
- (BOOL)_validateSOSRecoveryKey:(id)a3 config:(id)a4;
- (BOOL)authenticatedEnableSecureBackupWithRecoveryKey:(id)a3 error:(id *)a4;
- (BOOL)disableRecoveryKey:(id *)a3;
- (BOOL)recordIsEmpty:(id)a3;
- (BOOL)supportsRecoveryKeyWithError:(id *)a3;
- (BOOL)supportsWalrusRecoveryKeyWithError:(id *)a3;
- (CDPDSecureBackupController)initWithContext:(id)a3 secureBackupProxy:(id)a4 octagonTrustProxy:(id)a5;
- (CDPDSecureBackupController)initWithContext:(id)a3 uiProvider:(id)a4 delegate:(id)a5;
- (CDPDSecureBackupDelegate)delegate;
- (id)_clientMetadataWithSecretType:(unint64_t)a3 length:(unint64_t)a4;
- (id)_currentAnisetteData;
- (id)_performEscrowRecoveryWithRecoveryContext:(id)a3 fallbackState:(unint64_t)a4 error:(id *)a5;
- (id)_recoverBackupDictionaryWithContext:(id)a3 fallbackState:(unint64_t)a4 error:(id *)a5;
- (id)_recoveryInfoDictionaryFromContext:(id)a3 usePreviouslyCachedSecret:(BOOL)a4;
- (id)handleCDPDevices:(id)a3;
- (id)performEscrowRecoveryWithData:(id)a3 error:(id *)a4;
- (id)performEscrowRecoveryWithRecoveryContext:(id)a3 error:(id *)a4;
- (id)performSilentEscrowRecoveryWithCDPContext:(id)a3 error:(id *)a4;
- (void)_accountInfoWithCompletion:(id)a3;
- (void)_authenticatedEnableSecureBackupIncludingFallbackWithContext:(id)a3 completion:(id)a4;
- (void)_authenticatedEnableSecureBackupWithContext:(id)a3 fallbackState:(unint64_t)a4 completion:(id)a5;
- (void)_deleteAllBackupRecordsWithCompletion:(id)a3;
- (void)_deleteSingleICSCBackupWithCompletion:(id)a3;
- (void)_disableRecoveryKeyFromSOS:(id *)a3;
- (void)_enableSecureBackupWithContext:(id)a3 completion:(id)a4;
- (void)_getBackupRecordDevicesIncludingUnrecoverableRecords:(id)a3;
- (void)_handleSecureBackupEnablementError:(id)a3 fallbackState:(unint64_t)a4 context:(id)a5 delegate:(id)a6 completion:(id)a7;
- (void)_postICSCCreationFailedEventWithError:(id)a3;
- (void)_retryRepairWithContext:(id)a3 retryCount:(int64_t)a4 completion:(id)a5;
- (void)_setRecoveryKeyInIDMSWithContext:(id)a3 circleProxy:(id)a4 authProvider:(id)a5 completion:(id)a6;
- (void)_setRecoveryKeyInOctagonIfRequiredWithConfig:(id)a3 recoveryKey:(id)a4 error:(id *)a5;
- (void)_setRecoveryKeyInSOSIfRequiredWithConfig:(id)a3 recoveryKey:(id)a4 error:(id *)a5;
- (void)_updateContext:(id)a3 withDevices:(id)a4;
- (void)_validateRecoveryKeyInIDMSWithContext:(id)a3 authProvider:(id)a4 completion:(id)a5;
- (void)accountInfoWithCompletion:(id)a3;
- (void)backupRecordsArePresentWithCompletion:(id)a3;
- (void)checkAndRemoveExistingThenEnableSecureBackupRecordWithContext:(id)a3 completion:(id)a4;
- (void)checkForAnyOctagonRecord:(id)a3;
- (void)checkForExistingRecord:(id)a3;
- (void)checkForExistingRecordWithPeerId:(id)a3 completion:(id)a4;
- (void)clearAccountInfoCache;
- (void)deleteAllBackupRecordsWithCompletion:(id)a3;
- (void)deleteSingleICSCBackupWithCompletion:(id)a3;
- (void)disableRecoveryKeyFromAllSystemsWithCompletion:(id)a3;
- (void)disableRecoveryKeyWithCompletion:(id)a3;
- (void)disableSecureBackupWithCompletion:(id)a3;
- (void)enableSecureBackupWithContext:(id)a3 completion:(id)a4;
- (void)enableSecureBackupWithRecoveryKey:(id)a3 completion:(id)a4;
- (void)isEligibleForCDPWithCompletion:(id)a3;
- (void)performEscrowRecoveryWithRecoveryContext:(id)a3 completion:(id)a4;
- (void)recoverSecureBackupWithContext:(id)a3 completion:(id)a4;
- (void)synchronizeKeyValueStoreWithCompletion:(id)a3;
- (void)upgradeICSCRecordsThenEnableSecureBackupWithContext:(id)a3 completion:(id)a4;
- (void)validateAndRepairRecoveryKeyMismatchWithContext:(id)a3 authProvider:(id)a4 circleProxy:(id)a5 completion:(id)a6;
- (void)validateRecoveryKeyWithContext:(id)a3 completion:(id)a4;
@end

@implementation CDPDSecureBackupController

- (CDPDSecureBackupController)initWithContext:(id)a3 secureBackupProxy:(id)a4 octagonTrustProxy:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v21.receiver = self;
  v21.super_class = CDPDSecureBackupController;
  v12 = [(CDPDSecureBackupController *)&v21 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_secureBackupProxy, a4);
    objc_storeStrong(&v13->_octagonTrustProxy, a5);
    objc_storeStrong(&v13->_context, a3);
    v14 = [CDPDSecureBackupConfiguration configurationWithContext:v9];
    configuration = v13->_configuration;
    v13->_configuration = v14;

    keyExistsAndHasValidFormat = 0;
    AppIntegerValue = CFPreferencesGetAppIntegerValue(@"RetryCount", @"com.apple.corecdp", &keyExistsAndHasValidFormat);
    if (keyExistsAndHasValidFormat)
    {
      v13->_icscRepairTotalRetries = AppIntegerValue;
    }

    else if ([(CDPContext *)v13->_context type])
    {
      v13->_icscRepairTotalRetries = 1;
    }

    else
    {
      v13->_icscRepairTotalRetries = 0;
    }

    v13->_icscRepairRetryDelay = CFPreferencesGetAppIntegerValue(@"RetryDelay", @"com.apple.corecdp", 0);
    if (CFPreferencesGetAppBooleanValue(@"SimulateNonViableEscrowRecord", @"com.apple.corecdp", 0))
    {
      v17 = _CDPLogSystem();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        [CDPDSecureBackupController initWithContext:secureBackupProxy:octagonTrustProxy:];
      }

      v13->_isSimulateNonViableEscrowRecordEnabled = 1;
    }

    if (CFPreferencesGetAppBooleanValue(@"SimulateEPThrottle", @"com.apple.corecdp", 0))
    {
      v18 = _CDPLogSystem();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        [CDPDSecureBackupController initWithContext:secureBackupProxy:octagonTrustProxy:];
      }

      v13->_simulateEPThrottle = 1;
    }
  }

  return v13;
}

- (CDPDSecureBackupController)initWithContext:(id)a3 uiProvider:(id)a4 delegate:(id)a5
{
  v9 = a4;
  v10 = a5;
  v11 = a3;
  v12 = [[CDPDSecureBackupProxyImpl alloc] initWithContext:v11];
  v13 = [[CDPDOctagonTrustProxyImpl alloc] initWithContext:v11];
  v14 = [(CDPDSecureBackupController *)self initWithContext:v11 secureBackupProxy:v12 octagonTrustProxy:v13];

  if (v14)
  {
    objc_storeStrong(&v14->_uiProvider, a4);
    objc_storeWeak(&v14->_delegate, v10);
  }

  return v14;
}

- (void)synchronizeKeyValueStoreWithCompletion:(id)a3
{
  v5 = self->_context;
  v6 = a3;
  v7 = [(CDPContext *)v5 backupActivity];
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = 4233613993;
  }

  [(CDPContext *)v5 setBackupActivity:v8];
  v9 = _Block_copy(v6);

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __69__CDPDSecureBackupController_synchronizeKeyValueStoreWithCompletion___block_invoke;
  aBlock[3] = &unk_278E255A0;
  v17 = v5;
  v18 = v9;
  v10 = v5;
  v11 = v9;
  v12 = _Block_copy(aBlock);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __69__CDPDSecureBackupController_synchronizeKeyValueStoreWithCompletion___block_invoke_2;
  v14[3] = &unk_278E24620;
  v15 = v12;
  v13 = v12;
  [(CDPDSecureBackupController *)self accountInfoWithCompletion:v14];
}

uint64_t __69__CDPDSecureBackupController_synchronizeKeyValueStoreWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);

  return [v3 setBackupActivity:0];
}

uint64_t __69__CDPDSecureBackupController_synchronizeKeyValueStoreWithCompletion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2 != 0);
  }

  return result;
}

void __80__CDPDSecureBackupController_fetchEscrowRecordsWithOptionForceFetch_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _CDPLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __80__CDPDSecureBackupController_fetchEscrowRecordsWithOptionForceFetch_completion___block_invoke_cold_1();
  }

  if (!v5 || v6)
  {
    v10 = _CDPLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __80__CDPDSecureBackupController_fetchEscrowRecordsWithOptionForceFetch_completion___block_invoke_cold_2();
    }

    v11 = *(a1 + 32);
    if (v11)
    {
      v9 = *(v11 + 16);
      goto LABEL_11;
    }
  }

  else
  {
    v8 = *(a1 + 32);
    if (v8)
    {
      v9 = *(v8 + 16);
LABEL_11:
      v9();
    }
  }
}

void __83__CDPDSecureBackupController_fetchAllEscrowRecordsWithOptionForceFetch_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _CDPLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __83__CDPDSecureBackupController_fetchAllEscrowRecordsWithOptionForceFetch_completion___block_invoke_cold_1();
  }

  if (!v5 || v6)
  {
    v10 = _CDPLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __83__CDPDSecureBackupController_fetchAllEscrowRecordsWithOptionForceFetch_completion___block_invoke_cold_2();
    }

    v11 = *(a1 + 32);
    if (v11)
    {
      v9 = *(v11 + 16);
      goto LABEL_11;
    }
  }

  else
  {
    v8 = *(a1 + 32);
    if (v8)
    {
      v9 = *(v8 + 16);
LABEL_11:
      v9();
    }
  }
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
      [(CDPDSecureBackupController *)self accountInfoWithCompletion:?];
    }

    (v5)[2](v5, self->_cachedAccountInfo, 0);
  }

  else
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __56__CDPDSecureBackupController_accountInfoWithCompletion___block_invoke;
    v7[3] = &unk_278E245F8;
    v7[4] = self;
    v8 = v4;
    [(CDPDSecureBackupController *)self _accountInfoWithCompletion:v7];
  }
}

void __56__CDPDSecureBackupController_accountInfoWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v8 = _CDPLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    __56__CDPDSecureBackupController_accountInfoWithCompletion___block_invoke_cold_1(a1);
  }

  objc_storeStrong((*(a1 + 32) + 48), a2);
  v9 = *(a1 + 40);
  if (v9)
  {
    (*(v9 + 16))(v9, *(*(a1 + 32) + 48), v7);
  }
}

- (void)clearAccountInfoCache
{
  v3 = self->_context;
  v4 = [(CDPContext *)v3 backupActivity];
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 3819251231;
  }

  [(CDPContext *)v3 setBackupActivity:v5];
  v6 = _CDPLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_24510B000, v6, OS_LOG_TYPE_DEFAULT, "Clearing SecureBackup account info cache...", v8, 2u);
  }

  cachedAccountInfo = self->_cachedAccountInfo;
  self->_cachedAccountInfo = 0;

  [(CDPContext *)v3 setBackupActivity:0];
}

- (void)_accountInfoWithCompletion:(id)a3
{
  configuration = self->_configuration;
  v5 = a3;
  v6 = [(CDPDSecureBackupConfiguration *)configuration accountInfoFetchSetupDictionary];
  v7 = _CDPLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [CDPDSecureBackupController _accountInfoWithCompletion:];
  }

  [(CDPDSecureBackupProxy *)self->_secureBackupProxy accountInfoWithInfo:v6 completion:v5];
}

- (void)isEligibleForCDPWithCompletion:(id)a3
{
  v4 = self->_context;
  v5 = a3;
  v6 = [(CDPContext *)v4 backupActivity];
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = 2909315642;
  }

  [(CDPContext *)v4 setBackupActivity:v7];
  v8 = _Block_copy(v5);

  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __61__CDPDSecureBackupController_isEligibleForCDPWithCompletion___block_invoke;
  v18 = &unk_278E255A0;
  v9 = v8;
  v19 = v4;
  v20 = v9;
  v10 = v4;
  v11 = _Block_copy(&v15);
  if (v11)
  {
    v12 = [MEMORY[0x277CFD4F8] sharedInstance];
    v13 = [v12 hasLocalSecret];

    if (v13)
    {
      v14 = 0;
    }

    else
    {
      v14 = _CDPStateError();
    }

    v11[2](v11, v13, v14);
  }
}

uint64_t __61__CDPDSecureBackupController_isEligibleForCDPWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);

  return [v3 setBackupActivity:0];
}

- (void)backupRecordsArePresentWithCompletion:(id)a3
{
  v5 = self->_context;
  v6 = a3;
  v7 = [(CDPContext *)v5 backupActivity];
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = 2254843714;
  }

  [(CDPContext *)v5 setBackupActivity:v8];
  v9 = _Block_copy(v6);

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __68__CDPDSecureBackupController_backupRecordsArePresentWithCompletion___block_invoke;
  aBlock[3] = &unk_278E25708;
  v17 = v5;
  v18 = v9;
  v10 = v5;
  v11 = v9;
  v12 = _Block_copy(aBlock);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __68__CDPDSecureBackupController_backupRecordsArePresentWithCompletion___block_invoke_2;
  v14[3] = &unk_278E24708;
  v15 = v12;
  v13 = v12;
  [(CDPDSecureBackupController *)self getBackupRecordDevicesWithOptionForceFetch:0 completion:v14];
}

uint64_t __68__CDPDSecureBackupController_backupRecordsArePresentWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);

  return [v3 setBackupActivity:0];
}

void __68__CDPDSecureBackupController_backupRecordsArePresentWithCompletion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = _CDPLogSystem();
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __68__CDPDSecureBackupController_backupRecordsArePresentWithCompletion___block_invoke_2_cold_1();
    }

    v10 = *(a1 + 32);
    if (v10)
    {
      v11 = *(v10 + 16);
LABEL_19:
      v11();
    }
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __68__CDPDSecureBackupController_backupRecordsArePresentWithCompletion___block_invoke_2_cold_2();
    }

    v12 = [v6 count];
    v13 = _CDPLogSystem();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG);
    if (v12)
    {
      if (v14)
      {
        __68__CDPDSecureBackupController_backupRecordsArePresentWithCompletion___block_invoke_2_cold_3(v6);
      }

      v15 = _CDPLogSystem();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        __68__CDPDSecureBackupController_backupRecordsArePresentWithCompletion___block_invoke_2_cold_4();
      }

      v16 = *(a1 + 32);
      if (v16)
      {
        v11 = *(v16 + 16);
        goto LABEL_19;
      }
    }

    else
    {
      if (v14)
      {
        __68__CDPDSecureBackupController_backupRecordsArePresentWithCompletion___block_invoke_2_cold_5();
      }

      v17 = *(a1 + 32);
      if (v17)
      {
        v11 = *(v17 + 16);
        goto LABEL_19;
      }
    }
  }
}

uint64_t __84__CDPDSecureBackupController_getBackupRecordDevicesWithOptionForceFetch_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);

  return [v3 setBackupActivity:0];
}

- (id)handleCDPDevices:(id)a3
{
  v45 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v32 = [MEMORY[0x277CBEB18] array];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = v4;
  v5 = [obj countByEnumeratingWithState:&v34 objects:v44 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = 0;
    v9 = *v35;
    *&v6 = 138412290;
    v31 = v6;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v35 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v34 + 1) + 8 * i);
        if ([(CDPDSecureBackupController *)self fakeNearlyDepletedRecords])
        {
          v12 = _CDPLogSystem();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            *buf = v31;
            v39 = v11;
            _os_log_debug_impl(&dword_24510B000, v12, OS_LOG_TYPE_DEBUG, "**** DEBUG **** Setting fake remaining attempts value of 1 for %@", buf, 0xCu);
          }

          [v11 setRemainingAttempts:1];
        }

        if (v11)
        {
          if ([v11 remainingAttempts])
          {
            [v32 addObject:v11];
          }

          else if (![v11 remainingAttempts])
          {
            v13 = _CDPLogSystem();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              v14 = [v11 remainingAttempts];
              *buf = 138412546;
              v39 = v11;
              v40 = 2048;
              v41 = v14;
              _os_log_impl(&dword_24510B000, v13, OS_LOG_TYPE_DEFAULT, "Disqualified device %@ because the remaining attempts is %lu", buf, 0x16u);
            }
          }
        }

        v15 = _CDPLogSystem();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = [v11 recordDate];
          v17 = [v11 recordDate];
          v18 = objc_opt_class();
          *buf = 138412802;
          v39 = v11;
          v40 = 2112;
          v41 = v16;
          v42 = 2112;
          v43 = v18;
          v19 = v18;
          _os_log_impl(&dword_24510B000, v15, OS_LOG_TYPE_DEFAULT, "Backup record found for device %@ with date %@ (%@)", buf, 0x20u);
        }

        if (!v8)
        {
          goto LABEL_22;
        }

        v20 = [v11 recordDate];
        if (v20)
        {
          v21 = v20;
          v22 = [v11 recordDate];
          v23 = [v8 laterDate:v22];
          v24 = [v11 recordDate];

          if (v23 == v24)
          {
LABEL_22:
            v25 = _CDPLogSystem();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
            {
              v26 = [v11 recordDate];
              *buf = 138412802;
              v39 = v26;
              v40 = 2112;
              v41 = v8;
              v42 = 2112;
              v43 = v11;
              _os_log_impl(&dword_24510B000, v25, OS_LOG_TYPE_DEFAULT, "Backup record date %@ is later than the previously known newest record (%@), promoting %@ as newest device record", buf, 0x20u);
            }

            v27 = [v11 recordDate];

            v8 = v27;
          }
        }
      }

      v7 = [obj countByEnumeratingWithState:&v34 objects:v44 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  v28 = _CDPLogSystem();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v39 = v8;
    _os_log_impl(&dword_24510B000, v28, OS_LOG_TYPE_DEFAULT, "Finished parsing multiple-iCSC records and found the newest record to be %@", buf, 0xCu);
  }

  v29 = *MEMORY[0x277D85DE8];

  return v32;
}

void __98__CDPDSecureBackupController__getOctagonEscrowBackupRecordDevicesWithOptionForceFetch_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v38 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v8 = [MEMORY[0x277CBEB18] array];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v9 = v5;
    v10 = [v9 countByEnumeratingWithState:&v29 objects:v37 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v30;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v30 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [objc_alloc(MEMORY[0x277CFD4C0]) initWithEscrowRecord:*(*(&v29 + 1) + 8 * i)];
          if (v14)
          {
            [v8 addObject:v14];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v29 objects:v37 count:16];
      }

      while (v11);
    }

    v15 = [*(a1 + 32) handleCDPDevices:v8];
    [*(a1 + 32) _updateContext:*(a1 + 40) withDevices:v15];
    if ([v15 count])
    {
      v16 = _CDPLogSystem();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = [v15 count];
        *buf = 134218240;
        v34 = v17;
        v35 = 1024;
        v36 = 1;
        _os_log_impl(&dword_24510B000, v16, OS_LOG_TYPE_DEFAULT, "Finished parsing backup records, returning %lu devices and isUsingMultipleICSC=%i", buf, 0x12u);
      }

      v18 = *(a1 + 48);
      if (!v18)
      {
        goto LABEL_21;
      }

      v19 = [v15 copy];
      (*(v18 + 16))(v18, 1, v19, 0);
    }

    else
    {
      v20 = *(a1 + 32);
      v21 = *(a1 + 56);
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __98__CDPDSecureBackupController__getOctagonEscrowBackupRecordDevicesWithOptionForceFetch_completion___block_invoke_42;
      v26[3] = &unk_278E25730;
      v22 = *(a1 + 48);
      v23 = *(a1 + 32);
      v24 = *(a1 + 40);
      v28 = v22;
      v26[4] = v23;
      v27 = v24;
      [v20 fetchAllEscrowRecordsWithOptionForceFetch:v21 completion:v26];

      v19 = v28;
    }

LABEL_21:
    goto LABEL_22;
  }

  v7 = _CDPLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __98__CDPDSecureBackupController__getOctagonEscrowBackupRecordDevicesWithOptionForceFetch_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 48) + 16))();
LABEL_22:

  v25 = *MEMORY[0x277D85DE8];
}

void __98__CDPDSecureBackupController__getOctagonEscrowBackupRecordDevicesWithOptionForceFetch_completion___block_invoke_42(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _CDPLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __98__CDPDSecureBackupController__getOctagonEscrowBackupRecordDevicesWithOptionForceFetch_completion___block_invoke_42_cold_1();
    }

    v8 = *(*(a1 + 48) + 16);
LABEL_9:
    v8();
    goto LABEL_10;
  }

  if ([v5 count])
  {
    [*(*(a1 + 32) + 16) setTotalEscrowDeviceCount:{objc_msgSend(v5, "count")}];
    v9 = _CDPLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_24510B000, v9, OS_LOG_TYPE_DEFAULT, "there exists multiple icsc records and none of them will get the device into any trust system. Forcing a reset protected data", buf, 2u);
    }

    v8 = *(*(a1 + 48) + 16);
    goto LABEL_9;
  }

  v10 = _CDPLogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24510B000, v10, OS_LOG_TYPE_DEFAULT, "constructed 0 CDP devices after refetching records, possibly single-iCSC.. calling _getBackupRecordDevicesIncludingUnrecoverableRecords", buf, 2u);
  }

  v11 = *(a1 + 32);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __98__CDPDSecureBackupController__getOctagonEscrowBackupRecordDevicesWithOptionForceFetch_completion___block_invoke_43;
  v12[3] = &unk_278E24520;
  v12[4] = v11;
  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  [v11 _getBackupRecordDevicesIncludingUnrecoverableRecords:v12];

LABEL_10:
}

void __98__CDPDSecureBackupController__getOctagonEscrowBackupRecordDevicesWithOptionForceFetch_completion___block_invoke_43(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v9 = a3;
  v7 = a4;
  [*(a1 + 32) _updateContext:*(a1 + 40) withDevices:v9];
  v8 = *(a1 + 48);
  if (v8)
  {
    (*(v8 + 16))(v8, a2, v9, v7);
  }
}

- (void)_updateContext:(id)a3 withDevices:(id)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v27 = a3;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = a4;
  v5 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = *v33;
    do
    {
      v11 = 0;
      v29 = v6;
      do
      {
        if (*v33 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v32 + 1) + 8 * v11);
        v13 = [v12 remainingAttempts];
        v14 = v13;
        if (v13 > v9)
        {
          v9 = v13;
        }

        if (!v7)
        {
          goto LABEL_12;
        }

        v15 = [v12 recordDate];
        if (v15)
        {
          v16 = v15;
          v17 = [v12 recordDate];
          v18 = [v7 laterDate:v17];
          [v12 recordDate];
          v31 = v9;
          v19 = v7;
          v21 = v20 = v10;

          v6 = v29;
          v22 = v18 == v21;
          v10 = v20;
          v7 = v19;
          v9 = v31;
          if (v22)
          {
LABEL_12:
            v23 = [v12 recordDate];

            v7 = v23;
          }
        }

        v8 += v14;
        ++v11;
      }

      while (v6 != v11);
      v6 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
  }

  v24 = [obj count];
  [v28 setValidEscrowDeviceCount:v24];
  [v28 setTotalRecoveryAttempts:v8];
  [v28 setMaxDeviceRecoveryAttempts:v9];
  [v7 timeIntervalSinceNow];
  [v28 setNewestEscrowRecordAge:fabs(v25)];

  v26 = *MEMORY[0x277D85DE8];
}

- (void)_getBackupRecordDevicesIncludingUnrecoverableRecords:(id)a3
{
  v4 = a3;
  v5 = _CDPLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24510B000, v5, OS_LOG_TYPE_DEFAULT, "_getBackupRecordDevicesIncludingUnrecoverableRecords: called, fetching account info from SecureBackup", buf, 2u);
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __83__CDPDSecureBackupController__getBackupRecordDevicesIncludingUnrecoverableRecords___block_invoke;
  v7[3] = &unk_278E25460;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(CDPDSecureBackupController *)self accountInfoWithCompletion:v7];
}

void __83__CDPDSecureBackupController__getBackupRecordDevicesIncludingUnrecoverableRecords___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v62 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  if (v5)
  {
    v6 = _CDPLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __83__CDPDSecureBackupController__getBackupRecordDevicesIncludingUnrecoverableRecords___block_invoke_cold_1();
    }

    (*(*(a1 + 40) + 16))();
    goto LABEL_57;
  }

  v46 = [MEMORY[0x277CBEB18] array];
  v7 = [*(*(a1 + 32) + 16) desiresAllRecords];
  v8 = MEMORY[0x277CFB2A0];
  if (!v7)
  {
    v8 = MEMORY[0x277CFB3D0];
  }

  v45 = v4;
  [v4 objectForKeyedSubscript:*v8];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = v54 = 0u;
  v9 = [obj countByEnumeratingWithState:&v51 objects:v61 count:16];
  if (!v9)
  {
    v11 = 0;
    goto LABEL_41;
  }

  v10 = v9;
  v11 = 0;
  v48 = *v52;
  do
  {
    v12 = 0;
    do
    {
      if (*v52 != v48)
      {
        objc_enumerationMutation(obj);
      }

      v50 = v12;
      v13 = *(*(&v51 + 1) + 8 * v12);
      v14 = [objc_alloc(MEMORY[0x277CFD4C0]) initWithSecureBackupRecordInfo:v13];
      v15 = v14;
      if ([*(a1 + 32) fakeNearlyDepletedRecords])
      {
        v16 = _CDPLogSystem();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v56 = v15;
          _os_log_debug_impl(&dword_24510B000, v16, OS_LOG_TYPE_DEBUG, "**** DEBUG **** Setting fake remaining attempts value of 1 for %@", buf, 0xCu);
        }

        v14 = v15;
        [v15 setRemainingAttempts:1];
      }

      if (v14)
      {
        if ([v14 remainingAttempts])
        {
          [v46 addObject:v14];
        }

        else if (![v14 remainingAttempts])
        {
          v17 = _CDPLogSystem();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            v18 = [v15 remainingAttempts];
            *buf = 138412546;
            v56 = v15;
            v57 = 2048;
            v58 = v18;
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
        v23 = [CDPDSecureBackupController _dateWithSecureBackupDateString:v21];
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
        v56 = v15;
        v57 = 2112;
        v58 = v24;
        v59 = 2112;
        v60 = v26;
        v27 = v26;
        _os_log_impl(&dword_24510B000, v25, OS_LOG_TYPE_DEFAULT, "Backup record found for device %@ with date %@ (%@)", buf, 0x20u);
      }

      if (!v11 || v24 && ([v11 laterDate:v24], v28 = objc_claimAutoreleasedReturnValue(), v28, v28 == v24))
      {
        v29 = _CDPLogSystem();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412802;
          v56 = v24;
          v57 = 2112;
          v58 = v11;
          v59 = 2112;
          v60 = v15;
          _os_log_impl(&dword_24510B000, v29, OS_LOG_TYPE_DEFAULT, "Backup record date %@ is later than the previously known newest record (%@), promoting %@ as newest device record", buf, 0x20u);
        }

        v30 = v24;
        v11 = v30;
      }

      v12 = v50 + 1;
    }

    while (v10 != v50 + 1);
    v10 = [obj countByEnumeratingWithState:&v51 objects:v61 count:16];
  }

  while (v10);
LABEL_41:

  v31 = _CDPLogSystem();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v56 = v11;
    _os_log_impl(&dword_24510B000, v31, OS_LOG_TYPE_DEFAULT, "Finished parsing multiple-iCSC records and found the newest record to be %@", buf, 0xCu);
  }

  v32 = v46;
  v4 = v45;
  if ([v46 count])
  {
    v33 = 1;
  }

  else
  {
    v34 = *MEMORY[0x277CFB330];
    v35 = [v45 objectForKeyedSubscript:*MEMORY[0x277CFB330]];
    v33 = v35 == 0;
    if (v35)
    {
      v36 = [v45 objectForKeyedSubscript:v34];
      v37 = _CDPLogSystem();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v56 = v36;
        _os_log_impl(&dword_24510B000, v37, OS_LOG_TYPE_DEFAULT, "Found a single-iCSC metadata record. Returning that as a faux-device using %@", buf, 0xCu);
      }

      v38 = [objc_alloc(MEMORY[0x277CFD4C0]) initWithSecureBackupMetadataInfo:v36];
      v39 = [v45 objectForKeyedSubscript:*MEMORY[0x277CFB3C0]];
      [v38 setHasRandomSecret:{objc_msgSend(v39, "BOOLValue")}];

      v4 = v45;
      [v46 removeAllObjects];
      [v46 addObject:v38];

      v32 = v46;
    }

    else
    {
      v36 = _CDPLogSystem();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_24510B000, v36, OS_LOG_TYPE_DEFAULT, "No single-iCSC metadata record is present", buf, 2u);
      }
    }
  }

  v40 = _CDPLogSystem();
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    v41 = [v32 count];
    *buf = 134218240;
    v56 = v41;
    v57 = 1024;
    LODWORD(v58) = v33;
    _os_log_impl(&dword_24510B000, v40, OS_LOG_TYPE_DEFAULT, "Finished parsing backup records, returning %lu devices and isUsingMultipleICSC=%i", buf, 0x12u);
  }

  v42 = *(a1 + 40);
  if (v42)
  {
    v43 = [v32 copy];
    (*(v42 + 16))(v42, v33, v43, 0);
  }

  v5 = 0;
LABEL_57:

  v44 = *MEMORY[0x277D85DE8];
}

+ (id)_dateWithSecureBackupDateString:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CCA968]);
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

- (void)enableSecureBackupWithContext:(id)a3 completion:(id)a4
{
  v7 = self->_context;
  v8 = a4;
  v9 = a3;
  v10 = [(CDPContext *)v7 backupActivity];
  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = 3808140738;
  }

  [(CDPContext *)v7 setBackupActivity:v11];
  v12 = _Block_copy(v8);

  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __71__CDPDSecureBackupController_enableSecureBackupWithContext_completion___block_invoke;
  v19 = &unk_278E255A0;
  v20 = v7;
  v21 = v12;
  v13 = v7;
  v14 = v12;
  v15 = _Block_copy(&v16);
  [(CDPDSecureBackupController *)self _enableSecureBackupWithContext:v9 completion:v15, v16, v17, v18, v19];
}

uint64_t __71__CDPDSecureBackupController_enableSecureBackupWithContext_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);

  return [v3 setBackupActivity:0];
}

- (void)upgradeICSCRecordsThenEnableSecureBackupWithContext:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = self->_context;
  v8 = a4;
  v9 = [(CDPContext *)v7 backupActivity];
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = 4105090989;
  }

  [(CDPContext *)v7 setBackupActivity:v10];
  v11 = _Block_copy(v8);

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __93__CDPDSecureBackupController_upgradeICSCRecordsThenEnableSecureBackupWithContext_completion___block_invoke;
  aBlock[3] = &unk_278E255A0;
  v21 = v7;
  v22 = v11;
  v12 = v7;
  v13 = v11;
  v14 = _Block_copy(aBlock);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __93__CDPDSecureBackupController_upgradeICSCRecordsThenEnableSecureBackupWithContext_completion___block_invoke_2;
  v17[3] = &unk_278E25780;
  v18 = v6;
  v19 = v14;
  v17[4] = self;
  v15 = v6;
  v16 = v14;
  [(CDPDSecureBackupController *)self getBackupRecordDevicesWithOptionForceFetch:0 completion:v17];
}

uint64_t __93__CDPDSecureBackupController_upgradeICSCRecordsThenEnableSecureBackupWithContext_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);

  return [v3 setBackupActivity:0];
}

void __93__CDPDSecureBackupController_upgradeICSCRecordsThenEnableSecureBackupWithContext_completion___block_invoke_2(uint64_t a1, int a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    v9 = _CDPLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __93__CDPDSecureBackupController_upgradeICSCRecordsThenEnableSecureBackupWithContext_completion___block_invoke_2_cold_1();
    }

    v10 = *(a1 + 48);
    if (v10)
    {
      (*(v10 + 16))(v10, 0, v8);
    }
  }

  else if (a2)
  {
    v11 = _CDPLogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      __93__CDPDSecureBackupController_upgradeICSCRecordsThenEnableSecureBackupWithContext_completion___block_invoke_2_cold_4();
    }

    [*(a1 + 32) checkAndRemoveExistingThenEnableSecureBackupRecordWithContext:*(a1 + 40) completion:*(a1 + 48)];
  }

  else
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __93__CDPDSecureBackupController_upgradeICSCRecordsThenEnableSecureBackupWithContext_completion___block_invoke_67;
    aBlock[3] = &unk_278E24A20;
    v12 = *(a1 + 40);
    aBlock[4] = *(a1 + 32);
    v21 = v12;
    v22 = *(a1 + 48);
    v13 = _Block_copy(aBlock);
    v14 = [v7 firstObject];
    if (([v14 hasRandomSecret] & 1) != 0 || (objc_msgSend(v14, "hasNumericSecret") & 1) == 0)
    {
      v16 = _CDPLogSystem();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        __93__CDPDSecureBackupController_upgradeICSCRecordsThenEnableSecureBackupWithContext_completion___block_invoke_2_cold_3();
      }

      v17 = [*(a1 + 32) delegate];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __93__CDPDSecureBackupController_upgradeICSCRecordsThenEnableSecureBackupWithContext_completion___block_invoke_70;
      v18[3] = &unk_278E24B10;
      v19 = v13;
      [v17 promptForAdoptionOfMultipleICSCWithCompletion:v18];
    }

    else
    {
      v15 = _CDPLogSystem();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        __93__CDPDSecureBackupController_upgradeICSCRecordsThenEnableSecureBackupWithContext_completion___block_invoke_2_cold_2();
      }

      v13[2](v13);
    }
  }
}

void __93__CDPDSecureBackupController_upgradeICSCRecordsThenEnableSecureBackupWithContext_completion___block_invoke_67(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __93__CDPDSecureBackupController_upgradeICSCRecordsThenEnableSecureBackupWithContext_completion___block_invoke_2_68;
  v3[3] = &unk_278E25438;
  v3[4] = v2;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  [v2 deleteSingleICSCBackupWithCompletion:v3];
}

void __93__CDPDSecureBackupController_upgradeICSCRecordsThenEnableSecureBackupWithContext_completion___block_invoke_2_68(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = _CDPLogSystem();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __93__CDPDSecureBackupController_upgradeICSCRecordsThenEnableSecureBackupWithContext_completion___block_invoke_2_68_cold_2();
    }

    [*(a1 + 32) checkAndRemoveExistingThenEnableSecureBackupRecordWithContext:*(a1 + 40) completion:*(a1 + 48)];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __93__CDPDSecureBackupController_upgradeICSCRecordsThenEnableSecureBackupWithContext_completion___block_invoke_2_68_cold_1();
    }

    v8 = *(a1 + 48);
    if (v8)
    {
      (*(v8 + 16))(v8, 0, v5);
    }
  }
}

uint64_t __93__CDPDSecureBackupController_upgradeICSCRecordsThenEnableSecureBackupWithContext_completion___block_invoke_70(uint64_t a1)
{
  v2 = _CDPLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __93__CDPDSecureBackupController_upgradeICSCRecordsThenEnableSecureBackupWithContext_completion___block_invoke_70_cold_1();
  }

  return (*(*(a1 + 32) + 16))();
}

- (void)checkAndRemoveExistingThenEnableSecureBackupRecordWithContext:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = self->_context;
  v8 = a4;
  v9 = [(CDPContext *)v7 backupActivity];
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = 2608738587;
  }

  [(CDPContext *)v7 setBackupActivity:v10];
  v11 = _Block_copy(v8);

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __103__CDPDSecureBackupController_checkAndRemoveExistingThenEnableSecureBackupRecordWithContext_completion___block_invoke;
  aBlock[3] = &unk_278E255A0;
  v22 = v7;
  v23 = v11;
  v12 = v7;
  v13 = v11;
  v14 = _Block_copy(aBlock);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __103__CDPDSecureBackupController_checkAndRemoveExistingThenEnableSecureBackupRecordWithContext_completion___block_invoke_2;
  v17[3] = &unk_278E257A8;
  v18 = v6;
  v19 = self;
  v20 = v14;
  v15 = v14;
  v16 = v6;
  [(CDPDSecureBackupController *)self checkForExistingRecord:v17];
}

uint64_t __103__CDPDSecureBackupController_checkAndRemoveExistingThenEnableSecureBackupRecordWithContext_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);

  return [v3 setBackupActivity:0];
}

void __103__CDPDSecureBackupController_checkAndRemoveExistingThenEnableSecureBackupRecordWithContext_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 recordInfo];

  if (v4)
  {
    [*(a1 + 32) setDevice:v3];
    v5 = _CDPLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 0;
      v6 = "Calling enable without delete due to existing record metadata being present";
      v7 = &v9;
LABEL_6:
      _os_log_impl(&dword_24510B000, v5, OS_LOG_TYPE_DEFAULT, v6, v7, 2u);
    }
  }

  else
  {
    v5 = _CDPLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 0;
      v6 = "No existing backup record found, continuing with enable";
      v7 = &v8;
      goto LABEL_6;
    }
  }

  [*(a1 + 40) _enableSecureBackupWithContext:*(a1 + 32) completion:*(a1 + 48)];
}

- (void)checkForAnyOctagonRecord:(id)a3
{
  v4 = a3;
  v5 = _CDPLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24510B000, v5, OS_LOG_TYPE_DEFAULT, "Starting to check whether the account has any OT viable escrow record...", buf, 2u);
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__CDPDSecureBackupController_checkForAnyOctagonRecord___block_invoke;
  v7[3] = &unk_278E24708;
  v8 = v4;
  v6 = v4;
  [(CDPDSecureBackupController *)self getBackupRecordDevicesWithOptionForceFetch:0 completion:v7];
}

void __55__CDPDSecureBackupController_checkForAnyOctagonRecord___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = _CDPLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __55__CDPDSecureBackupController_checkForAnyOctagonRecord___block_invoke_cold_1();
    }

    v9 = *(a1 + 32);
    if (v9)
    {
      (*(v9 + 16))(v9, 0, v7);
    }
  }

  else
  {
    v10 = [v6 aaf_firstObjectPassingTest:&__block_literal_global_6];
    v11 = _CDPLogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = v10;
      _os_log_impl(&dword_24510B000, v11, OS_LOG_TYPE_DEFAULT, "Completed the check for OT only viable escrow records with result: %@", &v14, 0xCu);
    }

    v12 = *(a1 + 32);
    if (v12)
    {
      (*(v12 + 16))(v12, v10 != 0, 0);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

BOOL __55__CDPDSecureBackupController_checkForAnyOctagonRecord___block_invoke_72(uint64_t a1, void *a2)
{
  v2 = [a2 record];
  v3 = [v2 recordViability] != 2;

  return v3;
}

- (void)checkForExistingRecord:(id)a3
{
  v5 = self->_context;
  v6 = a3;
  v7 = [(CDPContext *)v5 backupActivity];
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = 407282594;
  }

  [(CDPContext *)v5 setBackupActivity:v8];
  v9 = _Block_copy(v6);

  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __53__CDPDSecureBackupController_checkForExistingRecord___block_invoke;
  v18 = &unk_278E257F0;
  v19 = v5;
  v20 = v9;
  v10 = v5;
  v11 = v9;
  v12 = _Block_copy(&v15);
  v13 = [(CDPDSecureBackupController *)self delegate:v15];
  v14 = [v13 circlePeerIDForSecureBackupController:self];

  [(CDPDSecureBackupController *)self checkForExistingRecordWithPeerId:v14 completion:v12];
}

uint64_t __53__CDPDSecureBackupController_checkForExistingRecord___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);

  return [v3 setBackupActivity:0];
}

- (void)checkForExistingRecordWithPeerId:(id)a3 completion:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = self->_context;
  v8 = a4;
  v9 = [(CDPContext *)v7 backupActivity];
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = 1412515335;
  }

  [(CDPContext *)v7 setBackupActivity:v10];
  v11 = _Block_copy(v8);

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __74__CDPDSecureBackupController_checkForExistingRecordWithPeerId_completion___block_invoke;
  aBlock[3] = &unk_278E257F0;
  v24 = v11;
  v12 = v7;
  v23 = v12;
  v13 = v11;
  v14 = _Block_copy(aBlock);
  v15 = _CDPLogSystem();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v26 = v6;
    _os_log_impl(&dword_24510B000, v15, OS_LOG_TYPE_DEFAULT, "Checking if the peer has a secure backup: %@", buf, 0xCu);
  }

  v16 = MEMORY[0x277CCAC30];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __74__CDPDSecureBackupController_checkForExistingRecordWithPeerId_completion___block_invoke_75;
  v20[3] = &unk_278E24668;
  v21 = v6;
  v17 = v6;
  v18 = [v16 predicateWithBlock:v20];
  [(CDPDSecureBackupController *)self checkForExistingRecordMatchingPredicate:v18 forceFetch:0 completion:v14];

  v19 = *MEMORY[0x277D85DE8];
}

uint64_t __74__CDPDSecureBackupController_checkForExistingRecordWithPeerId_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);

  return [v3 setBackupActivity:0];
}

uint64_t __74__CDPDSecureBackupController_checkForExistingRecordWithPeerId_completion___block_invoke_75(uint64_t a1, void *a2)
{
  v3 = [a2 recordID];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

uint64_t __92__CDPDSecureBackupController_checkForExistingRecordMatchingPredicate_forceFetch_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);

  return [v3 setBackupActivity:0];
}

void __92__CDPDSecureBackupController_checkForExistingRecordMatchingPredicate_forceFetch_completion___block_invoke_77(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if (v6)
  {
    v7 = _CDPLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __92__CDPDSecureBackupController_checkForExistingRecordMatchingPredicate_forceFetch_completion___block_invoke_77_cold_1();
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

- (BOOL)supportsRecoveryKeyWithError:(id *)a3
{
  v5 = self->_context;
  v6 = [(CDPContext *)v5 backupActivity];
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = 3623838984;
  }

  [(CDPContext *)v5 setBackupActivity:v7];
  if (!CFPreferencesGetAppBooleanValue(@"ForceRecoveryKeySupport", @"com.apple.corecdp", 0))
  {
    v10 = objc_alloc_init(MEMORY[0x277CDBD50]);
    v11 = [(CDPDSecureBackupController *)self context];
    v12 = [v11 altDSID];
    [v10 setAltDSID:v12];

    [v10 setContext:*MEMORY[0x277CDBD90]];
    if (objc_opt_respondsToSelector())
    {
      v13 = [(CDPDSecureBackupController *)self context];
      v14 = [v13 telemetryFlowID];
      [v10 setFlowID:v14];
    }

    if (objc_opt_respondsToSelector())
    {
      v15 = [(CDPDSecureBackupController *)self context];
      v16 = [v15 telemetryDeviceSessionID];
      [v10 setDeviceSessionID:v16];
    }

    v17 = [(CDPDSecureBackupController *)self octagonTrustProxy];
    v29 = 0;
    v18 = [v17 isRecoveryKeySet:v10 error:&v29];
    v19 = v29;

    v20 = [(CDPDSecureBackupController *)self secureBackupProxy];
    v28 = 0;
    v21 = [v20 isRecoveryKeySet:&v28];
    v22 = v28;

    v9 = v21 | v18;
    if ((v21 | v18))
    {
      [(CDPContext *)v5 setBackupActivity:0];
LABEL_28:

      goto LABEL_29;
    }

    if (v19)
    {
      if (a3)
      {
        v23 = v19;
        *a3 = v19;
      }

      [(CDPContext *)v5 setBackupActivity:0];
      v24 = _CDPLogSystem();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        [CDPDSecureBackupController supportsRecoveryKeyWithError:];
      }

      if (!v22)
      {
        goto LABEL_28;
      }
    }

    else
    {
      if (!v22)
      {
        goto LABEL_28;
      }

      if (a3)
      {
        v25 = v22;
        *a3 = v22;
      }

      [(CDPContext *)v5 setBackupActivity:0];
    }

    v26 = _CDPLogSystem();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [CDPDSecureBackupController supportsRecoveryKeyWithError:];
    }

    goto LABEL_28;
  }

  v8 = _CDPLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [CDPDSecureBackupController supportsRecoveryKeyWithError:];
  }

  [(CDPContext *)v5 setBackupActivity:0];
  v9 = 1;
LABEL_29:

  return v9 & 1;
}

- (BOOL)supportsWalrusRecoveryKeyWithError:(id *)a3
{
  v5 = [MEMORY[0x277CF0130] sharedInstance];
  v6 = [(CDPContext *)self->_context altDSID];
  v7 = [v5 authKitAccountWithAltDSID:v6];

  if (v7)
  {
    if (objc_opt_respondsToSelector())
    {
      v8 = [v5 hasModernRecoveryKeyForAccount:v7];
    }

    else
    {
      v8 = 0;
    }

    v18 = [(CDPContext *)self->_context cliqueConfiguration];
    octagonTrustProxy = self->_octagonTrustProxy;
    v24 = 0;
    v17 = [(CDPDOctagonTrustProxy *)octagonTrustProxy isRecoveryKeySet:v18 error:&v24];
    v20 = v24;
    if (v20)
    {
      v21 = _CDPLogSystem();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [CDPDSecureBackupController supportsRecoveryKeyWithError:];
      }

      if (a3)
      {
        v22 = v20;
        LOBYTE(v17) = 0;
        *a3 = v20;
      }

      else
      {
        LOBYTE(v17) = 0;
      }
    }

    else if (v17)
    {
      LOBYTE(v17) = [v8 BOOLValue];
    }
  }

  else
  {
    v9 = _CDPLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(CDPDSecureBackupController *)v9 supportsWalrusRecoveryKeyWithError:v10, v11, v12, v13, v14, v15, v16];
    }

    if (a3)
    {
      [MEMORY[0x277CCA9B8] cdp_errorWithCode:-5102];
      *a3 = LOBYTE(v17) = 0;
    }

    else
    {
      LOBYTE(v17) = 0;
    }
  }

  return v17;
}

- (void)_enableSecureBackupWithContext:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _CDPLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [CDPDSecureBackupController _enableSecureBackupWithContext:completion:];
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __72__CDPDSecureBackupController__enableSecureBackupWithContext_completion___block_invoke;
  v11[3] = &unk_278E25818;
  v12 = v6;
  v13 = v7;
  v11[4] = self;
  v9 = v6;
  v10 = v7;
  [(CDPDSecureBackupController *)self _authenticatedEnableSecureBackupIncludingFallbackWithContext:v9 completion:v11];
}

void __72__CDPDSecureBackupController__enableSecureBackupWithContext_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = _CDPLogSystem();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __72__CDPDSecureBackupController__enableSecureBackupWithContext_completion___block_invoke_cold_2();
    }

    v8 = *(a1 + 48);
    if (v8)
    {
      (*(v8 + 16))(v8, 1, v5);
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __72__CDPDSecureBackupController__enableSecureBackupWithContext_completion___block_invoke_cold_1();
    }

    [*(a1 + 32) _retryRepairWithContext:*(a1 + 40) retryCount:0 completion:*(a1 + 48)];
  }
}

- (void)_retryRepairWithContext:(id)a3 retryCount:(int64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = _CDPLogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [CDPDSecureBackupController _retryRepairWithContext:retryCount:completion:];
  }

  v11 = _CDPLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [CDPDSecureBackupController _retryRepairWithContext:? retryCount:? completion:?];
  }

  v12 = dispatch_time(0, 1000000000 * self->_icscRepairRetryDelay);
  v13 = dispatch_get_global_queue(0, 0);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __76__CDPDSecureBackupController__retryRepairWithContext_retryCount_completion___block_invoke;
  v16[3] = &unk_278E25868;
  v16[4] = self;
  v17 = v8;
  v18 = v9;
  v19 = a4;
  v14 = v9;
  v15 = v8;
  dispatch_after(v12, v13, v16);
}

void __76__CDPDSecureBackupController__retryRepairWithContext_retryCount_completion___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 16);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __76__CDPDSecureBackupController__retryRepairWithContext_retryCount_completion___block_invoke_2;
  v7[3] = &unk_278E253E8;
  v7[4] = v3;
  v8 = v2;
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v9 = v5;
  v10 = v6;
  [v4 reauthenticateUserWithCompletion:v7];
}

void __76__CDPDSecureBackupController__retryRepairWithContext_retryCount_completion___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = _CDPLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __76__CDPDSecureBackupController__retryRepairWithContext_retryCount_completion___block_invoke_2_cold_1();
  }

  if (a2)
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __76__CDPDSecureBackupController__retryRepairWithContext_retryCount_completion___block_invoke_91;
    v21[3] = &unk_278E25840;
    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
    v23 = v9;
    v24 = v10;
    v11 = *(a1 + 40);
    v21[4] = *(a1 + 32);
    v22 = v11;
    [v7 _authenticatedEnableSecureBackupIncludingFallbackWithContext:v8 completion:v21];
  }

  else
  {
    v12 = [*(a1 + 40) circleJoinResult];
    v13 = [v12 hasPeersWithCDPBackupRecords];

    if (v13)
    {
      v14 = [MEMORY[0x277CFD4D8] contextForStateRepair];
      v15 = [*(*(a1 + 32) + 16) altDSID];
      [v14 setAltDSID:v15];

      v16 = _CDPLogSystem();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        __76__CDPDSecureBackupController__retryRepairWithContext_retryCount_completion___block_invoke_2_cold_2();
      }

      v17 = [*(*(a1 + 32) + 16) telemetryFlowID];
      [v14 setTelemetryFlowID:v17];

      v18 = [*(*(a1 + 32) + 16) telemetryDeviceSessionID];
      [v14 setTelemetryDeviceSessionID:v18];

      v19 = +[CDPDFollowUpController sharedInstance];
      [v19 postFollowUpItemForContext:v14 error:0];
    }

    [*(a1 + 32) _postICSCCreationFailedEventWithError:v5];
    v20 = *(a1 + 48);
    if (v20)
    {
      (*(v20 + 16))(v20, 0, v5);
    }
  }
}

void __76__CDPDSecureBackupController__retryRepairWithContext_retryCount_completion___block_invoke_91(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = _CDPLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __76__CDPDSecureBackupController__retryRepairWithContext_retryCount_completion___block_invoke_91_cold_3();
    }

    v7 = *(a1 + 48);
    if (v7)
    {
      v8 = *(v7 + 16);
LABEL_14:
      v8();
    }
  }

  else
  {
    v9 = *(a1 + 56) + 1;
    v10 = [*(a1 + 32) icscRepairTotalRetries];
    v11 = _CDPLogSystem();
    v12 = v11;
    if (v9 >= v10)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        __76__CDPDSecureBackupController__retryRepairWithContext_retryCount_completion___block_invoke_91_cold_1();
      }

      v13 = *(a1 + 48);
      if (v13)
      {
        v8 = *(v13 + 16);
        goto LABEL_14;
      }
    }

    else
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        __76__CDPDSecureBackupController__retryRepairWithContext_retryCount_completion___block_invoke_91_cold_2();
      }

      [*(a1 + 32) _retryRepairWithContext:*(a1 + 40) retryCount:*(a1 + 56) + 1 completion:*(a1 + 48)];
    }
  }
}

- (void)_postICSCCreationFailedEventWithError:(id)a3
{
  v3 = MEMORY[0x277CE44D8];
  context = self->_context;
  v5 = *MEMORY[0x277CFD6F0];
  v6 = *MEMORY[0x277CFD930];
  v7 = a3;
  v9 = [v3 analyticsEventWithContext:context eventName:v5 category:v6];
  [v9 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:*MEMORY[0x277CFD6C0]];
  [v9 populateUnderlyingErrorsStartingWithRootError:v7];

  v8 = [MEMORY[0x277CFD490] rtcAnalyticsReporter];
  [v8 sendEvent:v9];
}

- (void)enableSecureBackupWithRecoveryKey:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = self->_context;
  v8 = a4;
  v9 = [(CDPContext *)v7 backupActivity];
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = 2608738587;
  }

  [(CDPContext *)v7 setBackupActivity:v10];
  v11 = _Block_copy(v8);

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __75__CDPDSecureBackupController_enableSecureBackupWithRecoveryKey_completion___block_invoke;
  aBlock[3] = &unk_278E255A0;
  v12 = v11;
  v26 = v12;
  v13 = v7;
  v25 = v13;
  v14 = _Block_copy(aBlock);
  v23 = 0;
  v15 = [(CDPDSecureBackupController *)self authenticatedEnableSecureBackupWithRecoveryKey:v6 error:&v23];
  v16 = v23;
  v17 = v16;
  if (v15)
  {
    v14[2](v14, 1, 0);
  }

  else if ([v16 isAuthenticationError])
  {
    v18 = _CDPLogSystem();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      [CDPDSecureBackupController enableSecureBackupWithRecoveryKey:completion:];
    }

    context = self->_context;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __75__CDPDSecureBackupController_enableSecureBackupWithRecoveryKey_completion___block_invoke_96;
    v20[3] = &unk_278E25438;
    v20[4] = self;
    v21 = v6;
    v22 = v14;
    [(CDPContext *)context reauthenticateUserWithCompletion:v20];
  }

  else
  {
    (v14)[2](v14, 0, v17);
  }
}

uint64_t __75__CDPDSecureBackupController_enableSecureBackupWithRecoveryKey_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);

  return [v3 setBackupActivity:0];
}

void __75__CDPDSecureBackupController_enableSecureBackupWithRecoveryKey_completion___block_invoke_96(void *a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = a1[4];
    v7 = a1[5];
    v12 = 0;
    v8 = [v6 authenticatedEnableSecureBackupWithRecoveryKey:v7 error:&v12];
    v9 = v12;
    v10 = a1[6];
    if (v10)
    {
      (*(v10 + 16))(v10, v8, v9);
    }
  }

  else
  {
    v11 = a1[6];
    if (v11)
    {
      (*(v11 + 16))(v11, 0, v5);
    }
  }
}

- (BOOL)authenticatedEnableSecureBackupWithRecoveryKey:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (v6)
  {
    v7 = [MEMORY[0x277CBEB38] dictionary];
    v8 = MEMORY[0x277CBEC38];
    [v7 setObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CFB2D8]];
    [v7 setObject:v8 forKey:*MEMORY[0x277CFB398]];
    [v7 setObject:v6 forKey:*MEMORY[0x277CFB360]];
    v9 = [(CDPDSecureBackupConfiguration *)self->_configuration escrowAuthInfoForCreateEscrowRecordFlow:1];
    [v7 addEntriesFromDictionary:v9];

    v10 = _CDPLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [CDPDSecureBackupController authenticatedEnableSecureBackupWithRecoveryKey:error:];
    }

    v11 = [(CDPDSecureBackupProxy *)self->_secureBackupProxy enableWithInfo:v7 error:a4];
  }

  else if (a4)
  {
    v12 = _CDPLogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [CDPDSecureBackupController authenticatedEnableSecureBackupWithRecoveryKey:error:];
    }

    _CDPStateError();
    *a4 = v11 = 0;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)_authenticatedEnableSecureBackupIncludingFallbackWithContext:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __102__CDPDSecureBackupController__authenticatedEnableSecureBackupIncludingFallbackWithContext_completion___block_invoke;
  v10[3] = &unk_278E25818;
  v11 = v6;
  v12 = v7;
  v10[4] = self;
  v8 = v6;
  v9 = v7;
  [(CDPDSecureBackupController *)self _authenticatedEnableSecureBackupWithContext:v8 fallbackState:0 completion:v10];
}

void __102__CDPDSecureBackupController__authenticatedEnableSecureBackupIncludingFallbackWithContext_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = _CDPLogSystem();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __102__CDPDSecureBackupController__authenticatedEnableSecureBackupIncludingFallbackWithContext_completion___block_invoke_cold_5();
    }

    v8 = *(a1 + 48);
    if (v8)
    {
      v9 = *(v8 + 16);
LABEL_19:
      v9();
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __102__CDPDSecureBackupController__authenticatedEnableSecureBackupIncludingFallbackWithContext_completion___block_invoke_cold_1();
    }

    if ([v5 isMissingCachedPassphraseError])
    {
      v10 = [MEMORY[0x277CFD560] useCDPContextSecretInsteadOfSBDSecretFeatureEnabled];
      v11 = _CDPLogSystem();
      v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG);
      if (v10)
      {
        if (v12)
        {
          __102__CDPDSecureBackupController__authenticatedEnableSecureBackupIncludingFallbackWithContext_completion___block_invoke_cold_4();
        }

        v13 = *(a1 + 32);
        v14 = *(a1 + 40);
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __102__CDPDSecureBackupController__authenticatedEnableSecureBackupIncludingFallbackWithContext_completion___block_invoke_99;
        v16[3] = &unk_278E24B10;
        v17 = *(a1 + 48);
        [v13 _authenticatedEnableSecureBackupWithContext:v14 fallbackState:1 completion:v16];

        goto LABEL_20;
      }

      if (v12)
      {
        __102__CDPDSecureBackupController__authenticatedEnableSecureBackupIncludingFallbackWithContext_completion___block_invoke_cold_3();
      }
    }

    else
    {
      v11 = _CDPLogSystem();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        __102__CDPDSecureBackupController__authenticatedEnableSecureBackupIncludingFallbackWithContext_completion___block_invoke_cold_2();
      }
    }

    v15 = *(a1 + 48);
    if (v15)
    {
      v9 = *(v15 + 16);
      goto LABEL_19;
    }
  }

LABEL_20:
}

void __102__CDPDSecureBackupController__authenticatedEnableSecureBackupIncludingFallbackWithContext_completion___block_invoke_99(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = _CDPLogSystem();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __102__CDPDSecureBackupController__authenticatedEnableSecureBackupIncludingFallbackWithContext_completion___block_invoke_99_cold_2();
    }

    v8 = *(a1 + 32);
    if (v8)
    {
      v9 = *(v8 + 16);
LABEL_10:
      v9();
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __102__CDPDSecureBackupController__authenticatedEnableSecureBackupIncludingFallbackWithContext_completion___block_invoke_99_cold_1();
    }

    v10 = *(a1 + 32);
    if (v10)
    {
      v9 = *(v10 + 16);
      goto LABEL_10;
    }
  }
}

- (void)_authenticatedEnableSecureBackupWithContext:(id)a3 fallbackState:(unint64_t)a4 completion:(id)a5
{
  v98 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = _CDPLogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [CDPDSecureBackupController _authenticatedEnableSecureBackupWithContext:fallbackState:completion:];
  }

  v91 = [(CDPDSecureBackupController *)self delegate];
  v11 = [(CDPDSecureBackupController *)self _shouldUseSBDCacheWithSecureBackupContext:v8 fallbackState:a4];
  if (CFPreferencesGetAppBooleanValue(@"ForceCachedSecretPurge", @"com.apple.corecdp", 0))
  {
    v12 = _CDPLogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [CDPDSecureBackupController _authenticatedEnableSecureBackupWithContext:fallbackState:completion:];
    }

    [(CDPDSecureBackupProxy *)self->_secureBackupProxy uncacheAllSecrets];
  }

  v89 = a4;
  v90 = v9;
  v13 = [v8 localSecretType];
  v14 = [v8 localSecret];
  v15 = -[CDPDSecureBackupController _clientMetadataWithSecretType:length:](self, "_clientMetadataWithSecretType:length:", v13, [v14 length]);

  if (!v11)
  {
    v16 = [v8 localSecret];

    if (!v16)
    {
      v38 = v15;
      goto LABEL_28;
    }

    v17 = [v8 localSecret];
    v18 = [v17 length];

    if (!v18)
    {
      v19 = _CDPLogSystem();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
        [(CDPDSecureBackupController *)v19 _authenticatedEnableSecureBackupWithContext:v20 fallbackState:v21 completion:v22, v23, v24, v25, v26];
      }
    }
  }

  v27 = [v15 mutableCopy];
  v28 = [MEMORY[0x277D262A0] sharedConnection];
  v29 = [v28 unlockScreenType];
  v30 = _CDPLogSystem();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    v97 = v29 == 0;
    _os_log_debug_impl(&dword_24510B000, v30, OS_LOG_TYPE_DEBUG, "Using cached secret and managed config reports devicePasscodeIsSimple=%i", buf, 8u);
  }

  v31 = [MEMORY[0x277CCABB0] numberWithInt:v29 != 0];
  [v27 setObject:v31 forKey:*MEMORY[0x277CFB3A8]];

  v32 = [MEMORY[0x277CCABB0] numberWithInt:v29 == 0];
  [v27 setObject:v32 forKey:*MEMORY[0x277CFB3B8]];

  if (v29)
  {
    [v27 removeObjectForKey:*MEMORY[0x277CFB340]];
  }

  else
  {
    *buf = -1;
    v33 = [MEMORY[0x277D262A0] sharedConnection];
    v34 = [v33 unlockScreenTypeWithOutSimplePasscodeType:buf];

    if (v34 && *buf != -1)
    {
      [CDPDSecureBackupController _authenticatedEnableSecureBackupWithContext:fallbackState:completion:];
    }

    if (*buf)
    {
      v35 = 6;
    }

    else
    {
      v35 = 4;
    }

    v36 = _CDPLogSystem();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
    {
      [CDPDSecureBackupController _authenticatedEnableSecureBackupWithContext:fallbackState:completion:];
    }

    v37 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v35];
    [v27 setObject:v37 forKey:*MEMORY[0x277CFB340]];
  }

  v38 = [v27 copy];

  v39 = _CDPLogSystem();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
  {
    [CDPDSecureBackupController _authenticatedEnableSecureBackupWithContext:fallbackState:completion:];
  }

LABEL_28:
  v40 = [MEMORY[0x277CBEB38] dictionary];
  v41 = [v8 localSecret];

  if (v41)
  {
    v42 = [v8 localSecret];
    v43 = [v42 length];

    if (!v43)
    {
      v44 = _CDPLogSystem();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_FAULT))
      {
        [(CDPDSecureBackupController *)v44 _authenticatedEnableSecureBackupWithContext:v45 fallbackState:v46 completion:v47, v48, v49, v50, v51];
      }
    }

    v52 = [v8 localSecret];
    v53 = MEMORY[0x277CFB348];
  }

  else
  {
    v54 = [v8 recoveryKey];

    if (!v54)
    {
      goto LABEL_37;
    }

    [v40 setObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CFB398]];
    v52 = [v8 recoveryKey];
    v53 = MEMORY[0x277CFB360];
  }

  [v40 setObject:v52 forKey:*v53];

LABEL_37:
  if ([v8 synchronous])
  {
    [v40 setObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CFB398]];
  }

  v55 = [v8 preRecordUUID];

  if (v55)
  {
    v56 = [v8 preRecordUUID];
    [v40 setObject:v56 forKey:*MEMORY[0x277CFB318]];
  }

  if (v11)
  {
    [v40 setObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CFB3A0]];
  }

  else
  {
    v57 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v8, "localSecretType") == 1}];
    [v40 setObject:v57 forKey:*MEMORY[0x277CFB3C0]];
  }

  v58 = MEMORY[0x277CBEC38];
  [v40 setObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CFB2D8]];
  [v40 setObject:v58 forKey:*MEMORY[0x277CFB3B0]];
  v59 = [v8 device];
  v60 = [v59 recordInfo];

  if (v60)
  {
    v61 = [v8 device];
    v62 = [v61 recordInfo];
    [v40 setObject:v62 forKey:*MEMORY[0x277CFB388]];
  }

  v63 = [(CDPDSecureBackupConfiguration *)self->_configuration escrowAuthInfoForCreateEscrowRecordFlow:1];
  [v40 addEntriesFromDictionary:v63];

  if ([v8 nonViableRequiresRepair])
  {
    [v40 setObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CFB338]];
  }

  v64 = [v8 telemetryDeviceSessionID];

  if (v64)
  {
    v65 = [v8 telemetryDeviceSessionID];
    [v40 setObject:v65 forKey:*MEMORY[0x277CFB2E8]];
  }

  v66 = [v8 telemetryFlowID];

  if (v66)
  {
    v67 = [v8 telemetryFlowID];
    [v40 setObject:v67 forKey:*MEMORY[0x277CFB310]];
  }

  v68 = _CDPLogSystem();
  if (os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG))
  {
    [CDPDSecureBackupController _authenticatedEnableSecureBackupWithContext:v8 fallbackState:? completion:?];
  }

  v69 = [MEMORY[0x277CFD480] sharedInstance];
  v70 = [v69 primaryAccountStashedPRK];

  if (v70)
  {
    v71 = [(CDPDSecureBackupController *)self _currentAnisetteData];
    v72 = [v71 machineID];

    if (v72)
    {
      v73 = [v38 mutableCopy];
      [v73 setObject:v72 forKeyedSubscript:@"device_mid"];
      v74 = [v73 copy];

      v94 = @"prk";
      v95 = v70;
      v75 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v95 forKeys:&v94 count:1];
      v76 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v75 requiringSecureCoding:1 error:0];
      [v40 setObject:v76 forKey:*MEMORY[0x277CFB320]];

      v38 = v74;
    }

    else
    {
      v73 = _CDPLogSystem();
      if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
      {
        [CDPDSecureBackupController _authenticatedEnableSecureBackupWithContext:fallbackState:completion:];
      }
    }

    v78 = v90;
    v77 = v91;
  }

  else
  {
    v72 = _CDPLogSystem();
    if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
    {
      [CDPDSecureBackupController _authenticatedEnableSecureBackupWithContext:fallbackState:completion:];
    }

    v78 = v90;
    v77 = v91;
  }

  [v40 setObject:v38 forKeyedSubscript:*MEMORY[0x277CFB330]];
  v79 = _CDPLogSystem();
  if (os_log_type_enabled(v79, OS_LOG_TYPE_DEBUG))
  {
    [CDPDSecureBackupController _authenticatedEnableSecureBackupWithContext:fallbackState:completion:];
  }

  secureBackupProxy = self->_secureBackupProxy;
  v93 = 0;
  [(CDPDSecureBackupProxy *)secureBackupProxy enableWithInfo:v40 error:&v93];
  v81 = v93;
  v82 = v81;
  if (v81)
  {
    v83 = [v81 domain];
    if ([v83 isEqual:*MEMORY[0x277CFB298]])
    {
      v84 = [v82 code];

      if (v84 != -6005)
      {
        v77 = v91;
        goto LABEL_74;
      }

      v85 = _CDPLogSystem();
      v77 = v91;
      if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_24510B000, v85, OS_LOG_TYPE_DEFAULT, "Failed to enable due to existing record, disabling and trying again", buf, 2u);
      }

      v92 = 0;
      [(CDPDSecureBackupController *)self _disableThenEnableWithInfo:v40 error:&v92];
      v83 = v82;
      v82 = v92;
    }
  }

LABEL_74:
  if (self->_context && v77 && ([v77 synchronizeCircleViewsForSecureBackupContext:v8] & 1) == 0)
  {
    if (!v78)
    {
      goto LABEL_79;
    }

    v88 = _CDPLogSystem();
    if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_24510B000, v88, OS_LOG_TYPE_DEFAULT, "Failed to synchronize circle views", buf, 2u);
    }

    v86 = _CDPStateError();
    (v78)[2](v78, 0, v86);
  }

  else
  {
    v86 = [(CDPDSecureBackupController *)self context];
    [(CDPDSecureBackupController *)self _handleSecureBackupEnablementError:v82 fallbackState:v89 context:v86 delegate:v77 completion:v78];
  }

LABEL_79:
  v87 = *MEMORY[0x277D85DE8];
}

- (void)_handleSecureBackupEnablementError:(id)a3 fallbackState:(unint64_t)a4 context:(id)a5 delegate:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  if (v12)
  {
    v16 = [v12 isMissingCachedPassphraseError];
    v17 = [MEMORY[0x277CFD4F8] sharedInstance];
    v18 = [v17 hasLocalSecret];

    v19 = _CDPLogSystem();
    v20 = v19;
    if (v16 && v18)
    {
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        [CDPDSecureBackupController _handleSecureBackupEnablementError:fallbackState:context:delegate:completion:];
      }

      if (a4)
      {
        v21 = [v13 disableAsyncModeRequested];
        v22 = _CDPLogSystem();
        v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG);
        if (v21)
        {
          if (v23)
          {
            [CDPDSecureBackupController _handleSecureBackupEnablementError:fallbackState:context:delegate:completion:];
          }

          v27[0] = MEMORY[0x277D85DD0];
          v27[1] = 3221225472;
          v27[2] = __107__CDPDSecureBackupController__handleSecureBackupEnablementError_fallbackState_context_delegate_completion___block_invoke;
          v27[3] = &unk_278E25410;
          v27[4] = self;
          v28 = v15;
          [v14 promptForLocalSecretWithCompletion:v27];

          goto LABEL_28;
        }

        if (v23)
        {
          [CDPDSecureBackupController _handleSecureBackupEnablementError:fallbackState:context:delegate:completion:];
        }
      }

      else
      {
        v25 = _CDPLogSystem();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          [CDPDSecureBackupController _handleSecureBackupEnablementError:fallbackState:context:delegate:completion:];
        }
      }

      v26 = [MEMORY[0x277CCA9B8] cdp_errorWithCode:-5501 underlyingError:v12];
      if (v15)
      {
        (*(v15 + 2))(v15, 0, v26);
      }
    }

    else
    {
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [CDPDSecureBackupController _handleSecureBackupEnablementError:fallbackState:context:delegate:completion:];
      }

      if (v15)
      {
        (*(v15 + 2))(v15, 0, v12);
      }
    }
  }

  else
  {
    v24 = _CDPLogSystem();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      [CDPDSecureBackupController _handleSecureBackupEnablementError:fallbackState:context:delegate:completion:];
    }

    if (v15)
    {
      (*(v15 + 2))(v15, 1, 0);
    }
  }

LABEL_28:
}

void __107__CDPDSecureBackupController__handleSecureBackupEnablementError_fallbackState_context_delegate_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = objc_alloc_init(CDPDSecureBackupContext);
    v8 = [v5 validatedSecret];
    [(CDPDSecureBackupContext *)v7 setLocalSecret:v8];

    -[CDPDSecureBackupContext setLocalSecretType:](v7, "setLocalSecretType:", [v5 secretType]);
    v9 = _CDPLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      __107__CDPDSecureBackupController__handleSecureBackupEnablementError_fallbackState_context_delegate_completion___block_invoke_cold_1();
    }

    [*(a1 + 32) _enableSecureBackupWithContext:v7 completion:*(a1 + 40)];
  }

  else
  {
    v10 = _CDPLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      __107__CDPDSecureBackupController__handleSecureBackupEnablementError_fallbackState_context_delegate_completion___block_invoke_cold_2();
    }

    v11 = *(a1 + 40);
    if (v11)
    {
      (*(v11 + 16))(v11, 0, v6);
    }
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
      [CDPDSecureBackupController _shouldUseSBDCacheWithSecureBackupContext:fallbackState:];
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

- (BOOL)_disableThenEnableWithInfo:(id)a3 error:(id *)a4
{
  v6 = a3;
  v14 = 0;
  v7 = [(CDPDSecureBackupController *)self _disableSecureBackupWithEnableInfo:v6 error:&v14];
  v8 = v14;
  v9 = v8;
  if (v7)
  {
    v10 = [v6 mutableCopy];
    [v10 setObject:0 forKeyedSubscript:*MEMORY[0x277CFB388]];
    [v10 setObject:0 forKeyedSubscript:*MEMORY[0x277CFB338]];
    v11 = [(CDPDSecureBackupProxy *)self->_secureBackupProxy enableWithInfo:v10 error:a4];
  }

  else if (a4)
  {
    v12 = v8;
    v11 = 0;
    *a4 = v9;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)_currentAnisetteData
{
  v2 = objc_alloc_init(MEMORY[0x277CF0168]);
  v3 = dispatch_semaphore_create(0);
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__5;
  v14 = __Block_byref_object_dispose__5;
  v15 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__CDPDSecureBackupController__currentAnisetteData__block_invoke;
  v7[3] = &unk_278E25890;
  v9 = &v10;
  v4 = v3;
  v8 = v4;
  [v2 anisetteDataWithCompletion:v7];
  dispatch_semaphore_wait(v4, 0xFFFFFFFFFFFFFFFFLL);
  v5 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v5;
}

void __50__CDPDSecureBackupController__currentAnisetteData__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _CDPLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __50__CDPDSecureBackupController__currentAnisetteData__block_invoke_cold_1();
    }
  }

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;
  v10 = v5;

  dispatch_semaphore_signal(*(a1 + 32));
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

  v10 = [MEMORY[0x277CFD4F8] sharedInstance];
  v11 = [v10 deviceName];

  if (v11)
  {
    [v6 setObject:v11 forKeyedSubscript:@"device_name"];
  }

  v12 = [MEMORY[0x277CFD4F8] sharedInstance];
  v13 = [v12 marketingModel];

  if (v13)
  {
    [v6 setObject:v13 forKeyedSubscript:@"device_model"];
  }

  v14 = [MEMORY[0x277CFD4F8] sharedInstance];
  v15 = [v14 modelVersion];

  if (v15)
  {
    [v6 setObject:v15 forKeyedSubscript:@"device_model_version"];
  }

  v16 = [MEMORY[0x277CFD4F8] sharedInstance];
  v17 = [v16 deviceClass];

  if (v17)
  {
    [v6 setObject:v17 forKeyedSubscript:@"device_model_class"];
  }

  [v6 setObject:&unk_2858222A0 forKeyedSubscript:@"device_platform"];
  v18 = MGCopyAnswer();
  if (v18)
  {
    [v6 setObject:v18 forKeyedSubscript:@"device_color"];
  }

  v19 = MGCopyAnswer();
  if (v19)
  {
    [v6 setObject:v19 forKeyedSubscript:@"device_enclosure_color"];
  }

  v20 = [v6 copy];

  return v20;
}

- (id)performEscrowRecoveryWithData:(id)a3 error:(id *)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = _CDPLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [CDPDSecureBackupController performEscrowRecoveryWithData:error:];
  }

  v8 = [v6 mutableCopy];
  v9 = [(CDPContext *)self->_context telemetryFlowID];

  if (v9)
  {
    v10 = [(CDPContext *)self->_context telemetryFlowID];
    [v8 setObject:v10 forKeyedSubscript:*MEMORY[0x277CFB310]];
  }

  v11 = [(CDPContext *)self->_context telemetryDeviceSessionID];

  if (v11)
  {
    v12 = [(CDPContext *)self->_context telemetryDeviceSessionID];
    [v8 setObject:v12 forKeyedSubscript:*MEMORY[0x277CFB2E8]];
  }

  v13 = _CDPLogSystem();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [(CDPContext *)self->_context telemetryFlowID];
    v15 = [(CDPContext *)self->_context telemetryDeviceSessionID];
    *buf = 138543618;
    v28 = v14;
    v29 = 2114;
    v30 = v15;
    _os_log_impl(&dword_24510B000, v13, OS_LOG_TYPE_DEFAULT, "Passing telemetry flow ID %{public}@ and session ID %{public}@ to OTClique performEscrowRecoveryWithContextData", buf, 0x16u);
  }

  v16 = MEMORY[0x277CDBD48];
  v17 = [(CDPContext *)self->_context cliqueConfiguration];
  v26 = 0;
  v18 = [v16 performEscrowRecoveryWithContextData:v17 escrowArguments:v8 error:&v26];
  v19 = v26;

  v20 = _CDPLogSystem();
  v21 = v20;
  if (v19)
  {
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [CDPDSecureBackupController performEscrowRecoveryWithData:error:];
    }

    if (a4)
    {
      v22 = v19;
      v23 = 0;
      *a4 = v19;
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      [CDPDSecureBackupController performEscrowRecoveryWithData:error:];
    }

    v23 = v18;
  }

  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

- (id)performSilentEscrowRecoveryWithCDPContext:(id)a3 error:(id *)a4
{
  v80[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = _CDPLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [CDPDSecureBackupController performSilentEscrowRecoveryWithCDPContext:error:];
  }

  v69 = 0;
  v70[0] = &v69;
  v70[1] = 0x3032000000;
  v70[2] = __Block_byref_object_copy__5;
  v70[3] = __Block_byref_object_dispose__5;
  v71 = 0;
  v63 = 0;
  v64 = &v63;
  v65 = 0x3032000000;
  v66 = __Block_byref_object_copy__5;
  v67 = __Block_byref_object_dispose__5;
  v68 = [MEMORY[0x277CBEB18] array];
  v59 = 0;
  v60 = &v59;
  v61 = 0x2020000000;
  v62 = 1;
  v8 = dispatch_semaphore_create(0);
  v54[0] = MEMORY[0x277D85DD0];
  v54[1] = 3221225472;
  v54[2] = __78__CDPDSecureBackupController_performSilentEscrowRecoveryWithCDPContext_error___block_invoke;
  v54[3] = &unk_278E258B8;
  v56 = &v69;
  v57 = &v59;
  v58 = &v63;
  v9 = v8;
  v55 = v9;
  [(CDPDSecureBackupController *)self getBackupRecordDevicesWithOptionForceFetch:0 completion:v54];
  dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
  if (*(v70[0] + 40))
  {
    v10 = _CDPLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(CDPDSecureBackupController *)v70 performSilentEscrowRecoveryWithCDPContext:v10 error:v11, v12, v13, v14, v15, v16];
    }

    if (a4)
    {
      v17 = 0;
      *a4 = *(v70[0] + 40);
      goto LABEL_40;
    }

    goto LABEL_33;
  }

  if (v60[3])
  {
    if (![v64[5] count])
    {
      v37 = _CDPLogSystem();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        [CDPDSecureBackupController performSilentEscrowRecoveryWithCDPContext:error:];
      }

      if (a4)
      {
        v38 = MEMORY[0x277CCA9B8];
        v79 = *MEMORY[0x277CCA450];
        v80[0] = @"no escrow records found";
        v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v80 forKeys:&v79 count:1];
        v40 = [v38 errorWithDomain:*MEMORY[0x277CFD418] code:-5305 userInfo:v39];

        v41 = v40;
        *a4 = v40;
      }

LABEL_33:
      v17 = 0;
      goto LABEL_40;
    }

    v18 = _CDPLogSystem();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      -[CDPDSecureBackupController performSilentEscrowRecoveryWithCDPContext:error:].cold.3(v78, [v64[5] count], v18);
    }

    v19 = _CDPLogSystem();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      [CDPDSecureBackupController performSilentEscrowRecoveryWithCDPContext:error:];
    }

    v52 = [MEMORY[0x277CE44D8] analyticsEventWithContext:self->_context eventName:*MEMORY[0x277CFD880] category:*MEMORY[0x277CFD930]];
    v20 = _CDPSignpostLogSystem();
    v21 = _CDPSignpostCreate();

    v22 = _CDPSignpostLogSystem();
    v23 = v22;
    if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_24510B000, v23, OS_SIGNPOST_INTERVAL_BEGIN, v21, "OTCPerformSilentEscrowRecovery", " enableTelemetry=YES ", buf, 2u);
    }

    v24 = _CDPSignpostLogSystem();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v73 = v21;
      _os_log_impl(&dword_24510B000, v24, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: OTCPerformSilentEscrowRecovery  enableTelemetry=YES ", buf, 0xCu);
    }

    v25 = MEMORY[0x277CDBD48];
    v26 = [(CDPContext *)self->_context cliqueConfiguration];
    v27 = v64[5];
    v28 = (v70[0] + 40);
    obj = *(v70[0] + 40);
    v17 = [v25 performSilentEscrowRecovery:v26 cdpContext:v6 allRecords:v27 error:&obj];
    objc_storeStrong(v28, obj);

    Nanoseconds = _CDPSignpostGetNanoseconds();
    v30 = _CDPSignpostLogSystem();
    v31 = v30;
    if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v30))
    {
      v32 = [*(v70[0] + 40) code];
      *buf = 67240192;
      LODWORD(v73) = v32;
      _os_signpost_emit_with_name_impl(&dword_24510B000, v31, OS_SIGNPOST_INTERVAL_END, v21, "OTCPerformSilentEscrowRecovery", " Error=%{public,signpost.telemetry:number1,name=Error}d ", buf, 8u);
    }

    v33 = _CDPSignpostLogSystem();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v34 = [*(v70[0] + 40) code];
      *buf = 134218496;
      v73 = v21;
      v74 = 2048;
      v75 = Nanoseconds / 1000000000.0;
      v76 = 1026;
      v77 = v34;
      _os_log_impl(&dword_24510B000, v33, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: OTCPerformSilentEscrowRecovery  Error=%{public,signpost.telemetry:number1,name=Error}d ", buf, 0x1Cu);
    }

    if (v17)
    {
      [v52 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277CFD6C0]];
    }

    else
    {
      v42 = _CDPLogSystem();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        [(CDPDSecureBackupController *)v70 performSilentEscrowRecoveryWithCDPContext:v42 error:v43, v44, v45, v46, v47, v48];
      }

      if (a4)
      {
        *a4 = *(v70[0] + 40);
      }

      [v52 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:*MEMORY[0x277CFD6C0]];
      [v52 populateUnderlyingErrorsStartingWithRootError:*(v70[0] + 40)];
    }

    v49 = [MEMORY[0x277CFD490] rtcAnalyticsReporter];
    [v49 sendEvent:v52];
  }

  else
  {
    v35 = _CDPLogSystem();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
    {
      [CDPDSecureBackupController performSilentEscrowRecoveryWithCDPContext:error:];
    }

    v36 = [MEMORY[0x277D36DA0] CDPRecordContextToDictionary:v6];
    v17 = [(CDPDSecureBackupController *)self performEscrowRecoveryWithData:v36 error:a4];
  }

LABEL_40:

  _Block_object_dispose(&v59, 8);
  _Block_object_dispose(&v63, 8);

  _Block_object_dispose(&v69, 8);
  v50 = *MEMORY[0x277D85DE8];

  return v17;
}

void __78__CDPDSecureBackupController_performSilentEscrowRecoveryWithCDPContext_error___block_invoke(uint64_t a1, char a2, void *a3, void *a4)
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a4);
    v9 = _CDPLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __78__CDPDSecureBackupController_performSilentEscrowRecoveryWithCDPContext_error___block_invoke_cold_1();
    }

LABEL_4:

    goto LABEL_5;
  }

  if (![v7 count])
  {
    v9 = _CDPLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      __78__CDPDSecureBackupController_performSilentEscrowRecoveryWithCDPContext_error___block_invoke_cold_4();
    }

    goto LABEL_4;
  }

  if (a2)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v11 = v7;
    v12 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v21;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v21 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = MEMORY[0x277D36DA0];
          v17 = [*(*(&v20 + 1) + 8 * i) recordInfo];
          v18 = [v16 dictionaryToEscrowRecord:v17];

          [*(*(*(a1 + 56) + 8) + 40) addObject:v18];
        }

        v13 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v13);
    }

    v9 = _CDPLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      __78__CDPDSecureBackupController_performSilentEscrowRecoveryWithCDPContext_error___block_invoke_cold_3(a1);
    }

    goto LABEL_4;
  }

  v19 = _CDPLogSystem();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    __78__CDPDSecureBackupController_performSilentEscrowRecoveryWithCDPContext_error___block_invoke_cold_2();
  }

  *(*(*(a1 + 48) + 8) + 24) = 0;
LABEL_5:
  dispatch_semaphore_signal(*(a1 + 32));

  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)recordIsEmpty:(id)a3
{
  v3 = a3;
  if ([v3 creationDate])
  {
    v4 = 0;
  }

  else
  {
    v5 = [v3 escrowInformationMetadata];
    if ([v5 secureBackupTimestamp] || objc_msgSend(v3, "recordStatus") != 1 || objc_msgSend(v3, "remainingAttempts"))
    {
      v4 = 0;
    }

    else
    {
      v7 = [v3 escrowInformationMetadata];
      if ([v7 secureBackupUsesMultipleIcscs])
      {
        v4 = 0;
      }

      else
      {
        v8 = [v3 escrowInformationMetadata];
        v9 = [v8 clientMetadata];
        if ([v9 devicePlatform])
        {
          v4 = 0;
        }

        else
        {
          v10 = [v3 escrowInformationMetadata];
          v11 = [v10 clientMetadata];
          if ([v11 secureBackupMetadataTimestamp])
          {
            v4 = 0;
          }

          else
          {
            v12 = [v3 escrowInformationMetadata];
            v13 = [v12 clientMetadata];
            v4 = [v13 secureBackupNumericPassphraseLength] == 0;
          }
        }
      }
    }
  }

  return v4;
}

- (id)performEscrowRecoveryWithRecoveryContext:(id)a3 error:(id *)a4
{
  v6 = a3;
  v14 = 0;
  v7 = [(CDPDSecureBackupController *)self _performEscrowRecoveryWithRecoveryContext:v6 fallbackState:0 error:&v14];
  v8 = v14;
  if ([v8 indicatesRecoveryCanBeRetried])
  {
    v13 = v8;
    v9 = [(CDPDSecureBackupController *)self _performEscrowRecoveryWithRecoveryContext:v6 fallbackState:1 error:&v13];
    v10 = v13;

    v8 = v10;
    v7 = v9;
  }

  if (a4)
  {
    v11 = v8;
    *a4 = v8;
  }

  return v7;
}

- (id)_performEscrowRecoveryWithRecoveryContext:(id)a3 fallbackState:(unint64_t)a4 error:(id *)a5
{
  v94[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = _CDPLogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [CDPDSecureBackupController _performEscrowRecoveryWithRecoveryContext:fallbackState:error:];
  }

  v10 = [(CDPDSecureBackupController *)self _recoveryInfoDictionaryFromContext:v8 usePreviouslyCachedSecret:[(CDPDSecureBackupController *)self _shouldUseSBDCacheWithSecureBackupContext:v8 fallbackState:a4]];
  v11 = [MEMORY[0x277D36DA0] dictionaryToCDPRecordContext:v10];
  v12 = [v8 recoveryKey];

  if (v12)
  {
    v13 = _CDPLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [CDPDSecureBackupController _performEscrowRecoveryWithRecoveryContext:fallbackState:error:];
    }

    v14 = [v8 recoveryKey];
    if (!v14)
    {
      goto LABEL_25;
    }

LABEL_12:
    v19 = _CDPLogSystem();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      [CDPDSecureBackupController _performEscrowRecoveryWithRecoveryContext:fallbackState:error:];
    }

    v20 = [(CDPContext *)self->_context cliqueConfiguration];
    [v20 setOctagonCapableRecordsExist:{objc_msgSend(v8, "octagonCapableRecordsExist")}];
    v21 = objc_alloc(MEMORY[0x277CE44D8]);
    v22 = [v21 initWithEventName:*MEMORY[0x277CFD7C8] eventCategory:*MEMORY[0x277CFD930] initData:0];
    v23 = [(CDPContext *)self->_context telemetryFlowID];

    if (v23)
    {
      v24 = [(CDPContext *)self->_context telemetryFlowID];
      [v22 setObject:v24 forKeyedSubscript:*MEMORY[0x277CE45A8]];
    }

    v25 = [(CDPContext *)self->_context telemetryDeviceSessionID];

    if (v25)
    {
      v26 = [(CDPContext *)self->_context telemetryDeviceSessionID];
      [v22 setObject:v26 forKeyedSubscript:*MEMORY[0x277CE4578]];
    }

    v86 = 0;
    v27 = [MEMORY[0x277CDBD48] recoverWithRecoveryKey:v20 recoveryKey:v14 error:&v86];
    v28 = v86;
    if ((v27 & 1) == 0)
    {
      [v22 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:*MEMORY[0x277CFD6C0]];
      [v22 populateUnderlyingErrorsStartingWithRootError:v28];
      v41 = [MEMORY[0x277CFD490] rtcAnalyticsReporter];
      [v41 sendEvent:v22];

      v42 = _CDPLogSystem();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        [CDPDSecureBackupController _performEscrowRecoveryWithRecoveryContext:fallbackState:error:];
      }

      if (a5)
      {
        v43 = v28;
        *a5 = v28;
      }

      v32 = 0;
      v35 = 0;
      v36 = 0;
      goto LABEL_48;
    }

    v29 = _CDPLogSystem();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      [CDPDSecureBackupController _performEscrowRecoveryWithRecoveryContext:fallbackState:error:];
    }

    v30 = objc_alloc(MEMORY[0x277CDBD48]);
    v31 = [(CDPContext *)self->_context cliqueConfiguration];
    v32 = [v30 initWithContextData:v31];

    [v22 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277CFD6C0]];
    v33 = [MEMORY[0x277CFD490] rtcAnalyticsReporter];
    [v33 sendEvent:v22];

LABEL_22:
    v34 = _CDPLogSystem();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      [CDPDSecureBackupController _performEscrowRecoveryWithRecoveryContext:fallbackState:error:];
    }

    v32 = v32;
    v35 = 0;
    v36 = v32;
    goto LABEL_48;
  }

  if ([(CDPDSecureBackupController *)self supportsRecoveryKeyWithError:0])
  {
    v15 = _CDPLogSystem();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [CDPDSecureBackupController _performEscrowRecoveryWithRecoveryContext:fallbackState:error:];
    }

    v16 = +[CDPRecoveryKeyCache sharedInstance];
    v17 = [(CDPDSecureBackupController *)self context];
    v18 = [v17 altDSID];
    v14 = [v16 fetchRecoveryKeyFromCacheForAltDSID:v18];

    if (v14)
    {
      goto LABEL_12;
    }
  }

LABEL_25:
  v37 = [v8 silentRecovery];
  v38 = _CDPLogSystem();
  v39 = os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG);
  if (v37)
  {
    if (v39)
    {
      [CDPDSecureBackupController _performEscrowRecoveryWithRecoveryContext:fallbackState:error:];
    }

    v40 = [(CDPDSecureBackupController *)self performSilentEscrowRecoveryWithCDPContext:v11 error:a5];
LABEL_47:
    v36 = v40;
    v32 = 0;
    v35 = 0;
    goto LABEL_48;
  }

  if (v39)
  {
    [CDPDSecureBackupController _performEscrowRecoveryWithRecoveryContext:fallbackState:error:];
  }

  v44 = [v8 device];
  v45 = [v44 isUsingMultipleiCSC];

  if ((v45 & 1) == 0)
  {
    v58 = _CDPLogSystem();
    if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
    {
      [CDPDSecureBackupController _performEscrowRecoveryWithRecoveryContext:fallbackState:error:];
    }

    v40 = [(CDPDSecureBackupController *)self performEscrowRecoveryWithData:v10 error:a5];
    goto LABEL_47;
  }

  v46 = MEMORY[0x277D36DA0];
  v47 = [v8 device];
  v48 = [v47 recordInfo];
  v49 = [v46 dictionaryToEscrowRecord:v48];

  v50 = v49;
  LODWORD(v47) = [(CDPDSecureBackupController *)self recordIsEmpty:v49];
  v51 = _CDPLogSystem();
  v52 = v51;
  if (v47)
  {
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      [CDPDSecureBackupController _performEscrowRecoveryWithRecoveryContext:fallbackState:error:];
    }

    if (a5)
    {
      v53 = MEMORY[0x277CCA9B8];
      v54 = *MEMORY[0x277CFD418];
      v93 = *MEMORY[0x277CCA450];
      v94[0] = @"chosen record is empty";
      v55 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v94 forKeys:&v93 count:1];
      v56 = [v53 errorWithDomain:v54 code:-5305 userInfo:v55];

      v57 = v56;
      *a5 = v56;
    }

    v32 = 0;
    v35 = 0;
LABEL_43:
    v36 = 0;
    goto LABEL_48;
  }

  if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
  {
    [CDPDSecureBackupController _performEscrowRecoveryWithRecoveryContext:fallbackState:error:];
  }

  v61 = objc_alloc(MEMORY[0x277CE44D8]);
  v62 = [v61 initWithEventName:*MEMORY[0x277CFD828] eventCategory:*MEMORY[0x277CFD930] initData:0];
  v63 = [(CDPContext *)self->_context telemetryFlowID];

  if (v63)
  {
    v64 = [(CDPContext *)self->_context telemetryFlowID];
    [v62 setObject:v64 forKeyedSubscript:*MEMORY[0x277CE45A8]];
  }

  v65 = [(CDPContext *)self->_context telemetryDeviceSessionID];

  if (v65)
  {
    v66 = [(CDPContext *)self->_context telemetryDeviceSessionID];
    [v62 setObject:v66 forKeyedSubscript:*MEMORY[0x277CE4578]];
  }

  v67 = _CDPSignpostLogSystem();
  v68 = _CDPSignpostCreate();

  v69 = _CDPSignpostLogSystem();
  v70 = v69;
  if (v68 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v69))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_24510B000, v70, OS_SIGNPOST_INTERVAL_BEGIN, v68, "OTCPerformEscrowRecovery", " enableTelemetry=YES ", buf, 2u);
  }

  v71 = _CDPSignpostLogSystem();
  if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v88 = v68;
    _os_log_impl(&dword_24510B000, v71, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: OTCPerformEscrowRecovery  enableTelemetry=YES ", buf, 0xCu);
  }

  v72 = MEMORY[0x277CDBD48];
  v73 = [(CDPContext *)self->_context cliqueConfiguration];
  v84 = v50;
  v85 = 0;
  v32 = [v72 performEscrowRecovery:v73 cdpContext:v11 escrowRecord:v50 error:&v85];
  v35 = v85;

  Nanoseconds = _CDPSignpostGetNanoseconds();
  v75 = _CDPSignpostLogSystem();
  v76 = v75;
  if (v68 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v75))
  {
    v77 = [v35 code];
    *buf = 67240192;
    LODWORD(v88) = v77;
    _os_signpost_emit_with_name_impl(&dword_24510B000, v76, OS_SIGNPOST_INTERVAL_END, v68, "OTCPerformEscrowRecovery", " Error=%{public,signpost.telemetry:number1,name=Error}d ", buf, 8u);
  }

  v78 = _CDPSignpostLogSystem();
  if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
  {
    v79 = [v35 code];
    *buf = 134218496;
    v88 = v68;
    v89 = 2048;
    v90 = Nanoseconds / 1000000000.0;
    v91 = 1026;
    v92 = v79;
    _os_log_impl(&dword_24510B000, v78, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: OTCPerformEscrowRecovery  Error=%{public,signpost.telemetry:number1,name=Error}d ", buf, 0x1Cu);
  }

  v80 = *MEMORY[0x277CFD6C0];
  if (v32)
  {
    [v62 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v80];
  }

  else
  {
    [v62 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:v80];
    [v62 populateUnderlyingErrorsStartingWithRootError:v35];
  }

  v81 = [MEMORY[0x277CFD490] rtcAnalyticsReporter];
  [v81 sendEvent:v62];

  if (!v35)
  {
    goto LABEL_22;
  }

  v82 = _CDPLogSystem();
  if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
  {
    [CDPDSecureBackupController _performEscrowRecoveryWithRecoveryContext:fallbackState:error:];
  }

  if (!a5)
  {
    goto LABEL_43;
  }

  v83 = v35;
  v36 = 0;
  *a5 = v35;
LABEL_48:

  v59 = *MEMORY[0x277D85DE8];

  return v36;
}

- (void)performEscrowRecoveryWithRecoveryContext:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __82__CDPDSecureBackupController_performEscrowRecoveryWithRecoveryContext_completion___block_invoke;
    v8[3] = &unk_278E25438;
    v9 = v6;
    v10 = self;
    v11 = v7;
    [(CDPDSecureBackupController *)self checkForAnyOctagonRecord:v8];
  }
}

void __82__CDPDSecureBackupController_performEscrowRecoveryWithRecoveryContext_completion___block_invoke(id *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  [a1[4] setOctagonCapableRecordsExist:a2];
  v44 = 0;
  v45 = &v44;
  v46 = 0x3032000000;
  v47 = __Block_byref_object_copy__5;
  v48 = __Block_byref_object_dispose__5;
  v49 = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__5;
  v42 = __Block_byref_object_dispose__5;
  v43 = objc_alloc_init(CDPDRemoteSecretValidationResult);
  v7 = a1[4];
  v6 = a1[5];
  v8 = v45;
  obj = v45[5];
  v9 = [v6 performEscrowRecoveryWithRecoveryContext:v7 error:&obj];
  objc_storeStrong(v8 + 5, obj);
  [v39[5] setRecoveredClique:v9];

  v10 = [v39[5] recoveredClique];
  if (!v10 || (v11 = v45[5], v10, v11))
  {
    if ([v45[5] isAuthenticationError])
    {
      v12 = a1[4];
      v13 = a1[5];
      v14 = v13[2];
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __82__CDPDSecureBackupController_performEscrowRecoveryWithRecoveryContext_completion___block_invoke_2;
      v32[3] = &unk_278E258E0;
      v35 = &v38;
      v32[4] = v13;
      v33 = v12;
      v36 = &v44;
      v34 = a1[6];
      [v14 reauthenticateUserWithCompletion:v32];

      v15 = 0;
    }

    else
    {
      if ([a1[4] silentRecovery] && objc_msgSend(v45[5], "isICSCInvalidError"))
      {
        v16 = a1[5];
        v31 = 0;
        v17 = [v16 supportsRecoveryKeyWithError:&v31];
        v15 = v31;
        if (v17)
        {
          v18 = _CDPLogSystem();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_24510B000, v18, OS_LOG_TYPE_DEFAULT, "Recovering SecureBackup failed - iCSC Invalid (silent burn failed). Trying again with cached recovery key.", buf, 2u);
          }

          [a1[4] setUsePreviouslyCachedRecoveryKey:1];
          v19 = [a1[5] _recoveryInfoDictionaryFromContext:a1[4] usePreviouslyCachedSecret:{objc_msgSend(a1[4], "usePreviouslyCachedSecret")}];
          v20 = a1[5];
          v29 = 0;
          v21 = [v20 performEscrowRecoveryWithData:v19 error:&v29];
          v22 = v29;
          [v39[5] setRecoveredClique:v21];

          v23 = [v39[5] recoveredClique];

          if (!v23)
          {
            if (v22)
            {
              v24 = _CDPLogSystem();
              if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
              {
                __82__CDPDSecureBackupController_performEscrowRecoveryWithRecoveryContext_completion___block_invoke_cold_1();
              }
            }

            else if (v15)
            {
              v27 = _CDPLogSystem();
              if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
              {
                __82__CDPDSecureBackupController_performEscrowRecoveryWithRecoveryContext_completion___block_invoke_cold_2();
              }

              v22 = v15;
            }

            else
            {
              v22 = 0;
            }
          }

          v28 = v39[5];
          (*(a1[6] + 2))();

          goto LABEL_24;
        }
      }

      else
      {
        v15 = 0;
      }

      v25 = v39[5];
      (*(a1[6] + 2))();
    }

LABEL_24:

    goto LABEL_25;
  }

  v26 = v39[5];
  (*(a1[6] + 2))();
LABEL_25:
  _Block_object_dispose(&v38, 8);

  _Block_object_dispose(&v44, 8);
}

uint64_t __82__CDPDSecureBackupController_performEscrowRecoveryWithRecoveryContext_completion___block_invoke_2(void *a1, int a2)
{
  if (a2)
  {
    v3 = a1[4];
    v4 = a1[5];
    v5 = *(a1[8] + 8);
    obj = *(v5 + 40);
    v6 = [v3 performEscrowRecoveryWithRecoveryContext:v4 error:&obj];
    objc_storeStrong((v5 + 40), obj);
    [*(*(a1[7] + 8) + 40) setRecoveredClique:v6];

    v7 = *(*(a1[7] + 8) + 40);
    v8 = *(*(a1[8] + 8) + 40);
    return (*(a1[6] + 16))();
  }

  else
  {
    v10 = a1[6];
    v11 = *(a1[6] + 16);

    return v11();
  }
}

- (void)recoverSecureBackupWithContext:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = self->_context;
  v8 = a4;
  v9 = [(CDPContext *)v7 backupActivity];
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = 3877103917;
  }

  [(CDPContext *)v7 setBackupActivity:v10];
  v11 = _Block_copy(v8);

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __72__CDPDSecureBackupController_recoverSecureBackupWithContext_completion___block_invoke;
  aBlock[3] = &unk_278E24EA8;
  v12 = v11;
  v53 = v12;
  v13 = v7;
  v52 = v13;
  v14 = _Block_copy(aBlock);
  if (v14)
  {
    v45 = 0;
    v46 = &v45;
    v47 = 0x3032000000;
    v48 = __Block_byref_object_copy__5;
    v49 = __Block_byref_object_dispose__5;
    v50 = 0;
    v39 = 0;
    v40 = &v39;
    v41 = 0x3032000000;
    v42 = __Block_byref_object_copy__5;
    v43 = __Block_byref_object_dispose__5;
    v44 = 0;
    obj = 0;
    v15 = [(CDPDSecureBackupController *)self _recoverBackupDictionaryWithContext:v6 fallbackState:0 error:&obj];
    objc_storeStrong(&v50, obj);
    v16 = v40[5];
    v40[5] = v15;

    if ([v46[5] indicatesRecoveryCanBeRetried])
    {
      v17 = (v46 + 5);
      v37 = v46[5];
      v18 = [(CDPDSecureBackupController *)self _recoverBackupDictionaryWithContext:v6 fallbackState:1 error:&v37];
      objc_storeStrong(v17, v37);
      v19 = v40[5];
      v40[5] = v18;
    }

    if ([v46[5] isAuthenticationError])
    {
      context = self->_context;
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __72__CDPDSecureBackupController_recoverSecureBackupWithContext_completion___block_invoke_2;
      v32[3] = &unk_278E258E0;
      v35 = &v39;
      v32[4] = self;
      v33 = v6;
      v36 = &v45;
      v34 = v14;
      [(CDPContext *)context reauthenticateUserWithCompletion:v32];

      v21 = 0;
    }

    else
    {
      if ([v6 silentRecovery] && objc_msgSend(v46[5], "isICSCInvalidError"))
      {
        v31 = 0;
        v22 = [(CDPDSecureBackupController *)self supportsRecoveryKeyWithError:&v31];
        v21 = v31;
        if (v22)
        {
          v23 = _CDPLogSystem();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_24510B000, v23, OS_LOG_TYPE_DEFAULT, "Recovering SecureBackup failed - iCSC Invalid (silent burn failed). Trying again with cached recovery key.", buf, 2u);
          }

          [v6 setUsePreviouslyCachedRecoveryKey:1];
          v24 = (v46 + 5);
          v29 = v46[5];
          v25 = [(CDPDSecureBackupController *)self _recoverBackupDictionaryWithContext:v6 fallbackState:2 error:&v29];
          objc_storeStrong(v24, v29);
          v26 = v40[5];
          v40[5] = v25;

          (v14[2])(v14, v40[5], v46[5]);
          goto LABEL_19;
        }
      }

      else
      {
        v21 = 0;
      }

      v27 = v14[2];
      v28 = v40[5];
      if (v46[5])
      {
        v27(v14, v28);
      }

      else
      {
        (v27)(v14, v28, v21);
      }
    }

LABEL_19:

    _Block_object_dispose(&v39, 8);
    _Block_object_dispose(&v45, 8);
  }
}

uint64_t __72__CDPDSecureBackupController_recoverSecureBackupWithContext_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);

  return [v3 setBackupActivity:0];
}

uint64_t __72__CDPDSecureBackupController_recoverSecureBackupWithContext_completion___block_invoke_2(void *a1, int a2)
{
  if (a2)
  {
    v3 = a1[4];
    v4 = a1[5];
    v5 = *(a1[8] + 8);
    obj = *(v5 + 40);
    v6 = [v3 _recoverBackupDictionaryWithContext:v4 fallbackState:0 error:&obj];
    objc_storeStrong((v5 + 40), obj);
    v7 = *(a1[7] + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    if ([*(*(a1[8] + 8) + 40) indicatesRecoveryCanBeRetried])
    {
      v9 = a1[4];
      v10 = a1[5];
      v11 = *(a1[8] + 8);
      v20 = *(v11 + 40);
      v12 = [v9 _recoverBackupDictionaryWithContext:v10 fallbackState:1 error:&v20];
      objc_storeStrong((v11 + 40), v20);
      v13 = *(a1[7] + 8);
      v14 = *(v13 + 40);
      *(v13 + 40) = v12;
    }

    v15 = *(*(a1[7] + 8) + 40);
    v16 = *(*(a1[8] + 8) + 40);
    return (*(a1[6] + 16))();
  }

  else
  {
    v18 = a1[6];
    v19 = *(a1[6] + 16);

    return v19();
  }
}

- (void)validateRecoveryKeyWithContext:(id)a3 completion:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = _CDPLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24510B000, v8, OS_LOG_TYPE_DEFAULT, "Validating Recovery Key", buf, 2u);
  }

  v9 = [v6 recoveryKey];

  if (v9)
  {
    v10 = [(CDPContext *)self->_context cliqueConfiguration];
    v11 = MEMORY[0x277CDBD48];
    v12 = [v6 recoveryKey];
    v24 = 0;
    [v11 preflightRecoverOctagonUsingRecoveryKey:v10 recoveryKey:v12 error:&v24];
    v13 = v24;

    v14 = _CDPLogSystem();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    if (v13)
    {
      if (v15)
      {
        *buf = 138412290;
        v26 = v13;
        _os_log_impl(&dword_24510B000, v14, OS_LOG_TYPE_DEFAULT, "validateRecoveryKey Failed: %@", buf, 0xCu);
      }

      v16 = [MEMORY[0x277CFD490] rtcAnalyticsReporter];
      v17 = [(CDPDSecureBackupController *)self _makeRecoveryKeyVerifyEventWithError:v13 result:0];
      [v16 sendEvent:v17];

      if (v7)
      {
        v7[2](v7, 0, v13);
      }
    }

    else
    {
      if (v15)
      {
        *buf = 0;
        _os_log_impl(&dword_24510B000, v14, OS_LOG_TYPE_DEFAULT, "RecoveryKey Validated", buf, 2u);
      }

      v19 = [MEMORY[0x277CFD490] rtcAnalyticsReporter];
      v20 = [(CDPDSecureBackupController *)self _makeRecoveryKeyVerifyEventWithError:0 result:1];
      [v19 sendEvent:v20];

      v21 = objc_alloc_init(CDPDRemoteSecretValidationResult);
      [(CDPDRemoteSecretValidationResult *)v21 setSecretType:5];
      v22 = [v6 recoveryKey];
      [(CDPDRemoteSecretValidationResult *)v21 setValidSecret:v22];

      if (v7)
      {
        (v7)[2](v7, v21, 0);
      }
    }

    goto LABEL_19;
  }

  v18 = _CDPLogSystem();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24510B000, v18, OS_LOG_TYPE_DEFAULT, "Recovery key is nil, calling completion with error", buf, 2u);
  }

  if (v7)
  {
    v10 = [MEMORY[0x277CCA9B8] cdp_errorWithCode:0];
    v7[2](v7, 0, v10);
LABEL_19:
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)validateAndRepairRecoveryKeyMismatchWithContext:(id)a3 authProvider:(id)a4 circleProxy:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = _CDPLogSystem();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24510B000, v14, OS_LOG_TYPE_DEFAULT, "Validating and Repairing Recovery Key Mismatch", buf, 2u);
  }

  v15 = [v10 recoveryKey];

  if (v15)
  {
    v16 = [(CDPContext *)self->_context cliqueConfiguration];
    v17 = [objc_alloc(MEMORY[0x277CFD548]) initWithContext:self->_context];
    v29 = 0;
    v18 = [v17 verifyRecoveryKeyObservingSystemsHaveMatchingStateWithError:&v29];
    v19 = v29;
    v20 = _CDPLogSystem();
    v21 = v20;
    if (v18)
    {
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [CDPDSecureBackupController validateAndRepairRecoveryKeyMismatchWithContext:authProvider:circleProxy:completion:];
      }

      [(CDPDSecureBackupController *)self validateRecoveryKeyWithContext:v10 completion:v13];
    }

    else
    {
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_24510B000, v21, OS_LOG_TYPE_DEFAULT, "Detected a RK oserving system mismatch", buf, 2u);
      }

      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __114__CDPDSecureBackupController_validateAndRepairRecoveryKeyMismatchWithContext_authProvider_circleProxy_completion___block_invoke;
      v23[3] = &unk_278E25930;
      v23[4] = self;
      v24 = v16;
      v25 = v10;
      v28 = v13;
      v26 = v12;
      v27 = v11;
      [(CDPDSecureBackupController *)self _validateRecoveryKeyInIDMSWithContext:v25 authProvider:v27 completion:v23];
    }

    goto LABEL_16;
  }

  v22 = _CDPLogSystem();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24510B000, v22, OS_LOG_TYPE_DEFAULT, "Recovery key is nil, calling completion with error", buf, 2u);
  }

  if (v13)
  {
    v16 = [MEMORY[0x277CCA9B8] cdp_errorWithCode:0];
    (*(v13 + 2))(v13, 0, v16);
LABEL_16:
  }
}

void __114__CDPDSecureBackupController_validateAndRepairRecoveryKeyMismatchWithContext_authProvider_circleProxy_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (!v5 && a2)
  {
    v6 = _CDPLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __114__CDPDSecureBackupController_validateAndRepairRecoveryKeyMismatchWithContext_authProvider_circleProxy_completion___block_invoke_cold_4();
    }

    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = [*(a1 + 48) recoveryKey];
    v55 = 0;
    [v7 _setRecoveryKeyInOctagonIfRequiredWithConfig:v8 recoveryKey:v9 error:&v55];
    v10 = v55;

    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v13 = [*(a1 + 48) recoveryKey];
    v54 = 0;
    [v11 _setRecoveryKeyInSOSIfRequiredWithConfig:v12 recoveryKey:v13 error:&v54];
    v14 = v54;

    if (v10)
    {
      v15 = _CDPLogSystem();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        __114__CDPDSecureBackupController_validateAndRepairRecoveryKeyMismatchWithContext_authProvider_circleProxy_completion___block_invoke_cold_5();
      }

      v16 = *(a1 + 72);
      if (!v16)
      {
        goto LABEL_34;
      }

      v17 = *(v16 + 16);
    }

    else
    {
      v36 = _CDPLogSystem();
      v37 = v36;
      if (!v14)
      {
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
        {
          __114__CDPDSecureBackupController_validateAndRepairRecoveryKeyMismatchWithContext_authProvider_circleProxy_completion___block_invoke_cold_7();
        }

        v40 = objc_alloc_init(CDPDRemoteSecretValidationResult);
        [(CDPDRemoteSecretValidationResult *)v40 setSecretType:5];
        v41 = [*(a1 + 48) recoveryKey];
        [(CDPDRemoteSecretValidationResult *)v40 setValidSecret:v41];

        v42 = *(a1 + 72);
        if (v42)
        {
          (*(v42 + 16))(v42, v40, 0);
        }

        goto LABEL_34;
      }

      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        __114__CDPDSecureBackupController_validateAndRepairRecoveryKeyMismatchWithContext_authProvider_circleProxy_completion___block_invoke_cold_6();
      }

      v38 = *(a1 + 72);
      if (!v38)
      {
LABEL_34:

        goto LABEL_35;
      }

      v17 = *(v38 + 16);
    }

    v17();
    goto LABEL_34;
  }

  v18 = *(a1 + 32);
  v19 = *(a1 + 40);
  v20 = [*(a1 + 48) recoveryKey];
  LODWORD(v18) = [v18 _validateOctagonRecoveryKeyWithConfig:v19 recoveryKey:v20];

  if (v18)
  {
    v21 = _CDPLogSystem();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      __114__CDPDSecureBackupController_validateAndRepairRecoveryKeyMismatchWithContext_authProvider_circleProxy_completion___block_invoke_cold_3();
    }

    objc_initWeak(&location, *(a1 + 32));
    v22 = *(a1 + 32);
    v23 = *(a1 + 48);
    v24 = *(a1 + 56);
    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = __114__CDPDSecureBackupController_validateAndRepairRecoveryKeyMismatchWithContext_authProvider_circleProxy_completion___block_invoke_135;
    v48[3] = &unk_278E25908;
    v25 = *(a1 + 64);
    v51 = *(a1 + 72);
    objc_copyWeak(&v52, &location);
    v49 = *(a1 + 40);
    v50 = *(a1 + 48);
    [v22 _setRecoveryKeyInIDMSWithContext:v23 circleProxy:v24 authProvider:v25 completion:v48];

    objc_destroyWeak(&v52);
    v26 = v51;
LABEL_18:

    objc_destroyWeak(&location);
    goto LABEL_36;
  }

  v27 = *(a1 + 32);
  v28 = [*(a1 + 48) recoveryKey];
  v29 = [v27 _validateSOSRecoveryKey:v28 config:*(a1 + 40)];

  v30 = _CDPLogSystem();
  v31 = v30;
  if (v29)
  {
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      __114__CDPDSecureBackupController_validateAndRepairRecoveryKeyMismatchWithContext_authProvider_circleProxy_completion___block_invoke_cold_2();
    }

    objc_initWeak(&location, *(a1 + 32));
    v32 = *(a1 + 32);
    v33 = *(a1 + 48);
    v34 = *(a1 + 56);
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __114__CDPDSecureBackupController_validateAndRepairRecoveryKeyMismatchWithContext_authProvider_circleProxy_completion___block_invoke_136;
    v43[3] = &unk_278E25908;
    v35 = *(a1 + 64);
    v46 = *(a1 + 72);
    objc_copyWeak(&v47, &location);
    v44 = *(a1 + 40);
    v45 = *(a1 + 48);
    [v32 _setRecoveryKeyInIDMSWithContext:v33 circleProxy:v34 authProvider:v35 completion:v43];

    objc_destroyWeak(&v47);
    v26 = v46;
    goto LABEL_18;
  }

  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    __114__CDPDSecureBackupController_validateAndRepairRecoveryKeyMismatchWithContext_authProvider_circleProxy_completion___block_invoke_cold_1();
  }

  v39 = *(a1 + 72);
  if (v39)
  {
    v10 = _CDPStateError();
    (*(v39 + 16))(v39, 0, v10);
LABEL_35:
  }

LABEL_36:
}

void __114__CDPDSecureBackupController_validateAndRepairRecoveryKeyMismatchWithContext_authProvider_circleProxy_completion___block_invoke_135(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (!v4)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    if (WeakRetained)
    {
      v8 = *(a1 + 32);
      v9 = [*(a1 + 40) recoveryKey];
      v18 = 0;
      [WeakRetained _setRecoveryKeyInSOSIfRequiredWithConfig:v8 recoveryKey:v9 error:&v18];
      v10 = v18;

      v11 = _CDPLogSystem();
      v12 = v11;
      if (v10)
      {
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          __114__CDPDSecureBackupController_validateAndRepairRecoveryKeyMismatchWithContext_authProvider_circleProxy_completion___block_invoke_135_cold_2();
        }

        v13 = *(a1 + 48);
        if (v13)
        {
          (*(v13 + 16))(v13, 0, v10);
        }
      }

      else
      {
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          __114__CDPDSecureBackupController_validateAndRepairRecoveryKeyMismatchWithContext_authProvider_circleProxy_completion___block_invoke_135_cold_3();
        }

        v15 = objc_alloc_init(CDPDRemoteSecretValidationResult);
        [(CDPDRemoteSecretValidationResult *)v15 setSecretType:5];
        v16 = [*(a1 + 40) recoveryKey];
        [(CDPDRemoteSecretValidationResult *)v15 setValidSecret:v16];

        v17 = *(a1 + 48);
        if (v17)
        {
          (*(v17 + 16))(v17, v15, 0);
        }
      }
    }

    else
    {
      v14 = *(a1 + 48);
      if (!v14)
      {
LABEL_20:

        goto LABEL_21;
      }

      v10 = _CDPStateError();
      (*(v14 + 16))(v14, 0, v10);
    }

    goto LABEL_20;
  }

  v5 = _CDPLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __114__CDPDSecureBackupController_validateAndRepairRecoveryKeyMismatchWithContext_authProvider_circleProxy_completion___block_invoke_135_cold_1();
  }

  v6 = *(a1 + 48);
  if (v6)
  {
    (*(v6 + 16))(v6, 0, v4);
  }

LABEL_21:
}

void __114__CDPDSecureBackupController_validateAndRepairRecoveryKeyMismatchWithContext_authProvider_circleProxy_completion___block_invoke_136(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (!v4)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    if (WeakRetained)
    {
      v8 = *(a1 + 32);
      v9 = [*(a1 + 40) recoveryKey];
      v18 = 0;
      [WeakRetained _setRecoveryKeyInOctagonIfRequiredWithConfig:v8 recoveryKey:v9 error:&v18];
      v10 = v18;

      v11 = _CDPLogSystem();
      v12 = v11;
      if (v10)
      {
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          __114__CDPDSecureBackupController_validateAndRepairRecoveryKeyMismatchWithContext_authProvider_circleProxy_completion___block_invoke_136_cold_2();
        }

        v13 = *(a1 + 48);
        if (v13)
        {
          (*(v13 + 16))(v13, 0, v10);
        }

        goto LABEL_20;
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        __114__CDPDSecureBackupController_validateAndRepairRecoveryKeyMismatchWithContext_authProvider_circleProxy_completion___block_invoke_136_cold_3();
      }

      v15 = objc_alloc_init(CDPDRemoteSecretValidationResult);
      [(CDPDRemoteSecretValidationResult *)v15 setSecretType:5];
      v16 = [*(a1 + 40) recoveryKey];
      [(CDPDRemoteSecretValidationResult *)v15 setValidSecret:v16];

      v17 = *(a1 + 48);
      if (v17)
      {
        (*(v17 + 16))(v17, v15, 0);
      }
    }

    else
    {
      v14 = *(a1 + 48);
      if (!v14)
      {
LABEL_19:
        v10 = 0;
LABEL_20:

        goto LABEL_21;
      }

      v15 = _CDPStateError();
      (*(v14 + 16))(v14, 0, v15);
    }

    goto LABEL_19;
  }

  v5 = _CDPLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __114__CDPDSecureBackupController_validateAndRepairRecoveryKeyMismatchWithContext_authProvider_circleProxy_completion___block_invoke_136_cold_1();
  }

  v6 = *(a1 + 48);
  if (v6)
  {
    (*(v6 + 16))(v6, 0, v4);
  }

LABEL_21:
}

- (BOOL)_isRecoveryKeySetInOctagonWithConfig:(id)a3
{
  v7 = 0;
  v3 = [MEMORY[0x277CDBD48] isRecoveryKeySetInOctagon:a3 error:&v7];
  v4 = v7;
  if (v4)
  {
    v5 = _CDPLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [CDPDSecureBackupController _isRecoveryKeySetInOctagonWithConfig:];
    }

    v3 = 0;
  }

  return v3;
}

- (BOOL)_validateOctagonRecoveryKeyWithConfig:(id)a3 recoveryKey:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([(CDPDSecureBackupController *)self _isRecoveryKeySetInOctagonWithConfig:v6])
  {
    v17 = 0;
    [MEMORY[0x277CDBD48] preflightRecoverOctagonUsingRecoveryKey:v6 recoveryKey:v7 error:&v17];
    v8 = v17;
    v9 = v8 == 0;
    v10 = _CDPLogSystem();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      if (v11)
      {
        *buf = 138412290;
        v19 = v8;
        v12 = "Octagon validateRecoveryKey Failed: %@";
        v13 = v10;
        v14 = 12;
LABEL_10:
        _os_log_impl(&dword_24510B000, v13, OS_LOG_TYPE_DEFAULT, v12, buf, v14);
      }
    }

    else if (v11)
    {
      *buf = 0;
      v12 = "Octagon RecoveryKey Validated";
      v13 = v10;
      v14 = 2;
      goto LABEL_10;
    }

    goto LABEL_12;
  }

  v8 = _CDPLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24510B000, v8, OS_LOG_TYPE_DEFAULT, "Recovery Key not set in Octagon", buf, 2u);
  }

  v9 = 0;
LABEL_12:

  v15 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)_setRecoveryKeyInOctagonIfRequiredWithConfig:(id)a3 recoveryKey:(id)a4 error:(id *)a5
{
  v18 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  if ([(CDPDSecureBackupController *)self _isRecoveryKeySetInOctagonWithConfig:v8])
  {
    v10 = _CDPLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_24510B000, v10, OS_LOG_TYPE_DEFAULT, "Recovery Key already set in Octagon", buf, 2u);
    }
  }

  else
  {
    v15 = 0;
    [MEMORY[0x277CDBD48] setRecoveryKeyWithContext:v8 recoveryKey:v9 error:&v15];
    v10 = v15;
    v11 = _CDPLogSystem();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      if (v12)
      {
        *buf = 138412290;
        v17 = v10;
        _os_log_impl(&dword_24510B000, v11, OS_LOG_TYPE_DEFAULT, "Set RK in Octagon Failed with error: %@", buf, 0xCu);
      }

      if (a5)
      {
        v13 = v10;
        *a5 = v10;
      }
    }

    else
    {
      if (v12)
      {
        *buf = 0;
        _os_log_impl(&dword_24510B000, v11, OS_LOG_TYPE_DEFAULT, "Set RK in Octagon succeeded", buf, 2u);
      }
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isRecoveryKeySetInSOSWithConfig:(id)a3
{
  v4 = a3;
  if (![(CDPDSecureBackupController *)self _isSOSEnabled])
  {
    v6 = _CDPLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [CDPDSecureBackupController _isRecoveryKeySetInSOSWithConfig:];
    }

    goto LABEL_8;
  }

  v9 = 0;
  v5 = [MEMORY[0x277CDBD48] isRecoveryKeySetInSOS:v4 error:&v9];
  v6 = v9;
  if (v6)
  {
    v7 = _CDPLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [CDPDSecureBackupController _isRecoveryKeySetInSOSWithConfig:];
    }

LABEL_8:
    v5 = 0;
  }

  return v5;
}

- (BOOL)_isInSOSCircle
{
  v2 = MEMORY[0x277CFD540];
  v3 = [(CDPContext *)self->_context altDSID];
  v4 = [v2 syncingStatusForAltDSID:v3];

  return v4 == 1;
}

- (BOOL)_validateSOSRecoveryKey:(id)a3 config:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if ([(CDPDSecureBackupController *)self _isRecoveryKeySetInSOSWithConfig:a4])
  {
    v7 = [(CDPDSecureBackupController *)self secureBackupProxy];
    v18 = 0;
    v8 = [v7 verifyRecoveryKey:v6 error:&v18];
    v9 = v18;

    v10 = (v9 == 0) & v8;
    v11 = _CDPLogSystem();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      if (v12)
      {
        *buf = 0;
        v13 = "SOS RecoveryKey Validated";
        v14 = v11;
        v15 = 2;
LABEL_10:
        _os_log_impl(&dword_24510B000, v14, OS_LOG_TYPE_DEFAULT, v13, buf, v15);
      }
    }

    else if (v12)
    {
      *buf = 138412290;
      v20 = v9;
      v13 = "SOS validateRecoveryKey Failed: %@";
      v14 = v11;
      v15 = 12;
      goto LABEL_10;
    }

    goto LABEL_12;
  }

  v9 = _CDPLogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24510B000, v9, OS_LOG_TYPE_DEFAULT, "Recovery Key not set in SOS", buf, 2u);
  }

  v10 = 0;
LABEL_12:

  v16 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)_setRecoveryKeyInSOSIfRequiredWithConfig:(id)a3 recoveryKey:(id)a4 error:(id *)a5
{
  v19 = *MEMORY[0x277D85DE8];
  v8 = a4;
  if ([(CDPDSecureBackupController *)self _isRecoveryKeySetInSOSWithConfig:a3]|| ![(CDPDSecureBackupController *)self _isInSOSCircle])
  {
    v11 = _CDPLogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_24510B000, v11, OS_LOG_TYPE_DEFAULT, "Recovery Key Already Set in SOS", buf, 2u);
    }
  }

  else
  {
    v9 = [(CDPDSecureBackupController *)self secureBackupProxy];
    v16 = 0;
    v10 = [v9 setRecoveryKeyInSOS:v8 error:&v16];
    v11 = v16;

    if (v11 || (v10 & 1) == 0)
    {
      v12 = _CDPLogSystem();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v18 = v11;
        _os_log_impl(&dword_24510B000, v12, OS_LOG_TYPE_DEFAULT, "setRecoveryKeyInSOSWithCompletion Failed: %@", buf, 0xCu);
      }

      if (a5)
      {
        v13 = v11;
        *a5 = v11;
      }
    }

    v14 = _CDPLogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_24510B000, v14, OS_LOG_TYPE_DEFAULT, "setRecoveryKeyInSOSWithCompletion suceeded", buf, 2u);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_validateRecoveryKeyInIDMSWithContext:(id)a3 authProvider:(id)a4 completion:(id)a5
{
  context = self->_context;
  v8 = a5;
  v9 = a4;
  v10 = [a3 recoveryKey];
  [v9 cdpContext:context verifyMasterKey:v10 completion:v8];
}

- (void)_setRecoveryKeyInIDMSWithContext:(id)a3 circleProxy:(id)a4 authProvider:(id)a5 completion:(id)a6
{
  v10 = a5;
  v11 = a6;
  v12 = a4;
  v13 = [a3 recoveryKey];
  v20 = 0;
  v14 = [v12 generateVerifierWithRecoveryKey:v13 error:&v20];

  v15 = v20;
  if (!v14 || v15)
  {
    v17 = _CDPLogSystem();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [CDPDSecureBackupController _setRecoveryKeyInIDMSWithContext:circleProxy:authProvider:completion:];
    }

    if (v11)
    {
      v11[2](v11, 0, v15);
    }
  }

  else
  {
    context = self->_context;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __99__CDPDSecureBackupController__setRecoveryKeyInIDMSWithContext_circleProxy_authProvider_completion___block_invoke;
    v18[3] = &unk_278E24B10;
    v19 = v11;
    [v10 cdpContext:context persistMasterKeyVerifier:v14 completion:v18];
  }
}

void __99__CDPDSecureBackupController__setRecoveryKeyInIDMSWithContext_circleProxy_authProvider_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _CDPLogSystem();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5 || (a2 & 1) == 0)
  {
    if (v7)
    {
      v12 = 138412290;
      v13 = v5;
      _os_log_impl(&dword_24510B000, v6, OS_LOG_TYPE_DEFAULT, "Locally Harmonized RK failed to register in IDMS: %@", &v12, 0xCu);
    }

    v10 = *(a1 + 32);
    if (v10)
    {
      v9 = *(v10 + 16);
      goto LABEL_11;
    }
  }

  else
  {
    if (v7)
    {
      v12 = 138412290;
      v13 = 0;
      _os_log_impl(&dword_24510B000, v6, OS_LOG_TYPE_DEFAULT, "Locally Harmonized RK registered in IDMS successfully: %@", &v12, 0xCu);
    }

    v8 = *(a1 + 32);
    if (v8)
    {
      v9 = *(v8 + 16);
LABEL_11:
      v9();
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (id)_recoverBackupDictionaryWithContext:(id)a3 fallbackState:(unint64_t)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [(CDPDSecureBackupController *)self _recoveryInfoDictionaryFromContext:v8 usePreviouslyCachedSecret:[(CDPDSecureBackupController *)self _shouldUseSBDCacheWithSecureBackupContext:v8 fallbackState:a4]];
  v10 = _CDPLogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [CDPDSecureBackupController _recoverBackupDictionaryWithContext:v8 fallbackState:v9 error:?];
  }

  v11 = objc_alloc_init(CDPDRemoteSecretValidationResult);
  secureBackupProxy = self->_secureBackupProxy;
  v21 = 0;
  v13 = [(CDPDSecureBackupProxy *)secureBackupProxy recoverWithInfo:v9 error:&v21];
  v14 = v21;
  if (v14)
  {
    v15 = v14;
    if (v13)
    {
      v16 = _CDPLogSystem();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [CDPDSecureBackupController _recoverBackupDictionaryWithContext:fallbackState:error:];
      }

      v17 = [v15 errorByExtendingUserInfoWithDictionary:v13];

      v11 = 0;
      v15 = v17;
    }

    v18 = _CDPLogSystem();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [CDPDSecureBackupController _recoverBackupDictionaryWithContext:fallbackState:error:];
    }
  }

  else
  {
    [(CDPDRemoteSecretValidationResult *)v11 setRecoveredInfo:v13];
    v18 = _CDPLogSystem();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      [CDPDSecureBackupController _recoverBackupDictionaryWithContext:fallbackState:error:];
    }

    v15 = 0;
  }

  if (a5)
  {
    v19 = v15;
    *a5 = v15;
  }

  return v11;
}

- (id)_recoveryInfoDictionaryFromContext:(id)a3 usePreviouslyCachedSecret:(BOOL)a4
{
  v4 = a4;
  v43 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [MEMORY[0x277CBEB38] dictionary];
  v8 = [v6 device];
  v9 = [(CDPDSecureBackupConfiguration *)self->_configuration escrowAuthInfoForCreateEscrowRecordFlow:0];
  [v7 addEntriesFromDictionary:v9];

  v10 = [v8 recordInfo];

  if (v10)
  {
    v11 = [v8 recordInfo];
    v12 = [v11 objectForKeyedSubscript:@"metadata"];
    [v7 setObject:v12 forKey:*MEMORY[0x277CFB330]];
  }

  v13 = [v6 recoverySecret];

  if (v13)
  {
    v14 = [v6 recoverySecret];
    v15 = [v14 length];

    if (!v15)
    {
      v16 = _CDPLogSystem();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        [(CDPDSecureBackupController *)v16 _recoveryInfoDictionaryFromContext:v17 usePreviouslyCachedSecret:v18, v19, v20, v21, v22, v23];
      }
    }

    v24 = [v6 recoverySecret];
    [v7 setObject:v24 forKey:*MEMORY[0x277CFB348]];
  }

  else
  {
    v25 = [v6 recoveryKey];

    if (v25)
    {
      v26 = [v6 recoveryKey];
      [v7 setObject:v26 forKey:*MEMORY[0x277CFB360]];

      [v7 setObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CFB2D8]];
    }
  }

  if (v4)
  {
    [v7 setObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CFB3A0]];
  }

  if (([v8 isUsingMultipleiCSC] & 1) != 0 || objc_msgSend(v6, "silentRecovery"))
  {
    v27 = MEMORY[0x277CBEC38];
    [v7 setObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CFB3B0]];
    [v7 setObject:v27 forKey:*MEMORY[0x277CFB2D8]];
  }

  v28 = [v8 recordID];

  if (v28)
  {
    v29 = [v8 recordID];
    [v7 setObject:v29 forKey:*MEMORY[0x277CFB358]];
  }

  if ([v6 silentRecovery])
  {
    [v7 setObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CFB380]];
  }

  if ([v6 usePreviouslyCachedRecoveryKey])
  {
    [v7 setObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CFB3C8]];
  }

  v30 = [v6 telemetryFlowID];

  if (v30)
  {
    v31 = [v6 telemetryFlowID];
    [v7 setObject:v31 forKey:*MEMORY[0x277CFB310]];
  }

  v32 = [v6 telemetryDeviceSessionID];

  if (v32)
  {
    v33 = [v6 telemetryDeviceSessionID];
    [v7 setObject:v33 forKey:*MEMORY[0x277CFB2E8]];
  }

  v34 = _CDPLogSystem();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    v35 = [v6 telemetryFlowID];
    v36 = [v6 telemetryDeviceSessionID];
    v39 = 138543618;
    v40 = v35;
    v41 = 2114;
    v42 = v36;
    _os_log_impl(&dword_24510B000, v34, OS_LOG_TYPE_DEFAULT, "Adding telemetry flow ID %{public}@ and session ID %{public}@ to recoveryInfo", &v39, 0x16u);
  }

  if ([v6 nonViableRequiresRepair])
  {
    [v7 setObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CFB338]];
  }

  v37 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)deleteAllBackupRecordsWithCompletion:(id)a3
{
  v5 = self->_context;
  v6 = a3;
  v7 = [(CDPContext *)v5 backupActivity];
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = 4108292144;
  }

  [(CDPContext *)v5 setBackupActivity:v8];
  v9 = _Block_copy(v6);

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __67__CDPDSecureBackupController_deleteAllBackupRecordsWithCompletion___block_invoke;
  aBlock[3] = &unk_278E255A0;
  v17 = v5;
  v18 = v9;
  v10 = v5;
  v11 = v9;
  v12 = _Block_copy(aBlock);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __67__CDPDSecureBackupController_deleteAllBackupRecordsWithCompletion___block_invoke_2;
  v14[3] = &unk_278E24AE8;
  v14[4] = self;
  v15 = v12;
  v13 = v12;
  [(CDPDSecureBackupController *)self _deleteAllBackupRecordsWithCompletion:v14];
}

uint64_t __67__CDPDSecureBackupController_deleteAllBackupRecordsWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);

  return [v3 setBackupActivity:0];
}

void __67__CDPDSecureBackupController_deleteAllBackupRecordsWithCompletion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if ([v5 isAuthenticationError])
  {
    v6 = _CDPLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __67__CDPDSecureBackupController_deleteAllBackupRecordsWithCompletion___block_invoke_2_cold_1();
    }

    v8 = *(a1 + 32);
    v7 = *(a1 + 40);
    v9 = *(v8 + 16);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __67__CDPDSecureBackupController_deleteAllBackupRecordsWithCompletion___block_invoke_138;
    v11[3] = &unk_278E24AE8;
    v11[4] = v8;
    v12 = v7;
    [v9 reauthenticateUserWithCompletion:v11];
  }

  else
  {
    v10 = *(a1 + 40);
    if (v10)
    {
      (*(v10 + 16))(v10, a2, v5);
    }
  }
}

uint64_t __67__CDPDSecureBackupController_deleteAllBackupRecordsWithCompletion___block_invoke_138(uint64_t a1, int a2, void *a3)
{
  a3;
  if (a2)
  {
    [*(a1 + 32) _deleteAllBackupRecordsWithCompletion:*(a1 + 40)];
  }

  else
  {
    v5 = *(a1 + 40);
    if (v5)
    {
      (*(v5 + 16))(v5, 0);
    }
  }

  return MEMORY[0x2821F9730]();
}

- (void)_deleteAllBackupRecordsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEB38] dictionary];
  v6 = [(CDPContext *)self->_context appleID];
  [v5 setObject:v6 forKey:*MEMORY[0x277CFB2A8]];

  v7 = [(CDPContext *)self->_context passwordEquivToken];
  [v5 setObject:v7 forKey:*MEMORY[0x277CFB2C8]];

  v8 = MEMORY[0x277CBEC38];
  [v5 setObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CFB3D8]];
  [v5 setObject:v8 forKey:*MEMORY[0x277CFB2D8]];
  v9 = _CDPLogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [CDPDSecureBackupController _deleteAllBackupRecordsWithCompletion:];
  }

  secureBackupProxy = self->_secureBackupProxy;
  v14 = 0;
  v11 = [(CDPDSecureBackupProxy *)secureBackupProxy disableWithInfo:v5 error:&v14];
  v12 = v14;
  if (v12)
  {
    v13 = _CDPLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [CDPDSecureBackupController _deleteAllBackupRecordsWithCompletion:];
    }
  }

  if (v4)
  {
    v4[2](v4, v11, v12);
  }
}

- (void)deleteSingleICSCBackupWithCompletion:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __67__CDPDSecureBackupController_deleteSingleICSCBackupWithCompletion___block_invoke;
  v6[3] = &unk_278E24AE8;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(CDPDSecureBackupController *)self _deleteSingleICSCBackupWithCompletion:v6];
}

void __67__CDPDSecureBackupController_deleteSingleICSCBackupWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if ([v5 isAuthenticationError])
  {
    v6 = _CDPLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __67__CDPDSecureBackupController_deleteSingleICSCBackupWithCompletion___block_invoke_cold_1();
    }

    v8 = *(a1 + 32);
    v7 = *(a1 + 40);
    v9 = *(v8 + 16);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __67__CDPDSecureBackupController_deleteSingleICSCBackupWithCompletion___block_invoke_139;
    v11[3] = &unk_278E24AE8;
    v11[4] = v8;
    v12 = v7;
    [v9 reauthenticateUserWithCompletion:v11];
  }

  else
  {
    v10 = *(a1 + 40);
    if (v10)
    {
      (*(v10 + 16))(v10, a2, v5);
    }
  }
}

uint64_t __67__CDPDSecureBackupController_deleteSingleICSCBackupWithCompletion___block_invoke_139(uint64_t a1, int a2, void *a3)
{
  a3;
  if (a2)
  {
    [*(a1 + 32) _deleteSingleICSCBackupWithCompletion:*(a1 + 40)];
  }

  else
  {
    v5 = *(a1 + 40);
    if (v5)
    {
      (*(v5 + 16))(v5, 0);
    }
  }

  return MEMORY[0x2821F9730]();
}

- (void)_deleteSingleICSCBackupWithCompletion:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __68__CDPDSecureBackupController__deleteSingleICSCBackupWithCompletion___block_invoke;
  v6[3] = &unk_278E245F8;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(CDPDSecureBackupController *)self accountInfoWithCompletion:v6];
}

void __68__CDPDSecureBackupController__deleteSingleICSCBackupWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = [a2 objectForKeyedSubscript:*MEMORY[0x277CFB330]];
    v7 = _CDPLogSystem();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
    if (v6)
    {
      if (v8)
      {
        __68__CDPDSecureBackupController__deleteSingleICSCBackupWithCompletion___block_invoke_cold_1();
      }

      v9 = *(*(a1 + 32) + 24);
      v17 = 0;
      v10 = [v9 disableWithInfo:0 error:&v17];
      v11 = v17;
      if (v11)
      {
        v12 = _CDPLogSystem();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          [CDPDSecureBackupController _deleteAllBackupRecordsWithCompletion:];
        }
      }

      v13 = *(a1 + 40);
      if (v13)
      {
        (*(v13 + 16))(v13, v10, v11);
      }
    }

    else
    {
      if (v8)
      {
        __68__CDPDSecureBackupController__deleteSingleICSCBackupWithCompletion___block_invoke_cold_3();
      }

      v16 = *(a1 + 40);
      if (v16)
      {
        (*(v16 + 16))(v16, 1, 0);
      }
    }
  }

  else
  {
    v14 = _CDPLogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      __68__CDPDSecureBackupController__deleteSingleICSCBackupWithCompletion___block_invoke_cold_4();
    }

    v15 = *(a1 + 40);
    if (v15)
    {
      (*(v15 + 16))(v15, 0, v5);
    }
  }
}

- (void)disableSecureBackupWithCompletion:(id)a3
{
  v4 = a3;
  v10 = 0;
  [(CDPDSecureBackupController *)self _disableSecureBackup:&v10];
  v5 = v10;
  if ([v5 isAuthenticationError])
  {
    v6 = _CDPLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [CDPDSecureBackupController disableSecureBackupWithCompletion:];
    }

    context = self->_context;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __64__CDPDSecureBackupController_disableSecureBackupWithCompletion___block_invoke;
    v8[3] = &unk_278E24AE8;
    v8[4] = self;
    v9 = v4;
    [(CDPContext *)context reauthenticateUserWithCompletion:v8];
  }

  else if (v4)
  {
    (*(v4 + 2))(v4, v5);
  }
}

void __64__CDPDSecureBackupController_disableSecureBackupWithCompletion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = *(a1 + 32);
    v10 = 0;
    [v6 _disableSecureBackup:&v10];
    v7 = v10;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = v5;
    }

    (*(v8 + 16))(v8, v9);
  }
}

- (BOOL)_disableSecureBackupWithEnableInfo:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(CDPDSecureBackupController *)self delegate];
  v8 = [v7 circlePeerIDForSecureBackupController:self];

  if (v8)
  {
    v9 = [(CDPDSecureBackupConfiguration *)self->_configuration escrowAuthInfoForCreateEscrowRecordFlow:0];
    v10 = [v9 mutableCopy];

    v11 = MEMORY[0x277CBEC38];
    [v10 setObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CFB2D8]];
    [v10 setObject:v11 forKey:*MEMORY[0x277CFB3B0]];
    [v10 setObject:v8 forKey:*MEMORY[0x277CFB358]];
    objc_opt_class();
    v12 = *MEMORY[0x277CFB338];
    v13 = [v6 objectForKeyedSubscript:*MEMORY[0x277CFB338]];
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v17 = [v14 BOOLValue];
    if (v17)
    {
      v18 = _CDPLogSystem();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        [CDPDSecureBackupController _disableSecureBackupWithEnableInfo:error:];
      }

      [v10 setObject:MEMORY[0x277CBEC38] forKey:v12];
    }

    v19 = _CDPLogSystem();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      [CDPDSecureBackupController _disableSecureBackupWithEnableInfo:error:];
    }

    v16 = [(CDPDSecureBackupProxy *)self->_secureBackupProxy disableWithInfo:v10 error:a4];
  }

  else
  {
    v15 = _CDPLogSystem();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [CDPDSecureBackupController _disableSecureBackupWithEnableInfo:error:];
    }

    if (a4)
    {
      _CDPStateError();
      *a4 = v16 = 0;
    }

    else
    {
      v16 = 0;
    }
  }

  return v16;
}

- (void)disableRecoveryKeyWithCompletion:(id)a3
{
  v5 = self->_context;
  v6 = a3;
  v7 = [(CDPContext *)v5 backupActivity];
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = 3058721123;
  }

  [(CDPContext *)v5 setBackupActivity:v8];
  v9 = _Block_copy(v6);

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __63__CDPDSecureBackupController_disableRecoveryKeyWithCompletion___block_invoke;
  aBlock[3] = &unk_278E25578;
  v10 = v9;
  v21 = v10;
  v11 = v5;
  v20 = v11;
  v12 = _Block_copy(aBlock);
  v18 = 0;
  [(CDPDSecureBackupController *)self disableRecoveryKey:&v18];
  v13 = v18;
  if ([v13 isAuthenticationError])
  {
    v14 = _CDPLogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [CDPDSecureBackupController disableRecoveryKeyWithCompletion:];
    }

    context = self->_context;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __63__CDPDSecureBackupController_disableRecoveryKeyWithCompletion___block_invoke_141;
    v16[3] = &unk_278E24AE8;
    v16[4] = self;
    v17 = v12;
    [(CDPContext *)context reauthenticateUserWithCompletion:v16];
  }

  else if (v12)
  {
    (*(v12 + 2))(v12, v13);
  }
}

uint64_t __63__CDPDSecureBackupController_disableRecoveryKeyWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);

  return [v3 setBackupActivity:0];
}

void __63__CDPDSecureBackupController_disableRecoveryKeyWithCompletion___block_invoke_141(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = *(a1 + 32);
    v10 = 0;
    [v6 disableRecoveryKey:&v10];
    v7 = v10;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = v5;
    }

    (*(v8 + 16))(v8, v9);
  }
}

- (BOOL)disableRecoveryKey:(id *)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = _CDPLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24510B000, v5, OS_LOG_TYPE_DEFAULT, "Removing recovery key", buf, 2u);
  }

  v6 = [(CDPDSecureBackupController *)self octagonTrustProxy];
  v13 = 0;
  v7 = [v6 disableRecoveryKey:&v13];
  v8 = v13;

  v9 = _CDPLogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    v15 = v7;
    v16 = 2112;
    v17 = v8;
    _os_log_impl(&dword_24510B000, v9, OS_LOG_TYPE_DEFAULT, "Removed recovery key result: %{BOOL}d, error: %@", buf, 0x12u);
  }

  if (a3)
  {
    v10 = v8;
    *a3 = v8;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)disableRecoveryKeyFromAllSystemsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = _CDPLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24510B000, v5, OS_LOG_TYPE_DEFAULT, "Removing recovery key from All systems", buf, 2u);
  }

  v14 = 0;
  [(CDPDSecureBackupController *)self disableRecoveryKey:&v14];
  v6 = v14;
  v13 = 0;
  [(CDPDSecureBackupController *)self _disableRecoveryKeyFromSOS:&v13];
  v7 = v13;
  if (([v6 isAuthenticationError] & 1) != 0 || objc_msgSend(v7, "isAuthenticationError"))
  {
    v8 = _CDPLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [CDPDSecureBackupController disableRecoveryKeyWithCompletion:];
    }

    context = self->_context;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __77__CDPDSecureBackupController_disableRecoveryKeyFromAllSystemsWithCompletion___block_invoke;
    v11[3] = &unk_278E24AE8;
    v11[4] = self;
    v12 = v4;
    [(CDPContext *)context reauthenticateUserWithCompletion:v11];
  }

  else if (v4)
  {
    if (v6)
    {
      v10 = v6;
    }

    else
    {
      v10 = v7;
    }

    (*(v4 + 2))(v4, v10);
  }
}

void __77__CDPDSecureBackupController_disableRecoveryKeyFromAllSystemsWithCompletion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = *(a1 + 32);
    v13 = 0;
    [v6 disableRecoveryKey:&v13];
    v7 = v13;
    v8 = *(a1 + 32);
    v12 = 0;
    [v8 _disableRecoveryKeyFromSOS:&v12];
    v9 = v12;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    if (v7)
    {
      v11 = v7;
    }

    else
    {
      v11 = v9;
    }

    (*(v10 + 16))(v10, v11);
  }
}

- (void)_disableRecoveryKeyFromSOS:(id *)a3
{
  if ([(CDPDSecureBackupController *)self _isSOSEnabled]&& [(CDPDSecureBackupController *)self _isInSOSCircle])
  {
    v5 = [(CDPDSecureBackupController *)self secureBackupProxy];
    v10 = 0;
    v6 = [v5 removeRecoveryKeyFromSOS:&v10];
    v7 = v10;

    if (v7 || !v6)
    {
      if (a3)
      {
        v9 = v7;
        v8 = v7;
        goto LABEL_11;
      }
    }

    else if (a3)
    {
      v8 = 0;
LABEL_11:
      *a3 = v8;
    }

    return;
  }

  if (a3)
  {
    *a3 = 0;
  }
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

  v12 = [v3 objectForKey:@"kPCSMetadataEscrowedKeys"];

  if (v12)
  {
    [v3 setObject:@"< REDACTED >" forKey:@"kPCSMetadataEscrowedKeys"];
  }

  v13 = [v3 copy];

  return v13;
}

+ (id)_printableAccountInfo:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = [a3 mutableCopy];
  v4 = [v3 allKeys];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        v10 = [v3 objectForKeyedSubscript:v9];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        v12 = [v3 objectForKeyedSubscript:v9];
        if (isKindOfClass)
        {
          v13 = @"< array with %lu items >";
        }

        else
        {
          objc_opt_class();
          v14 = objc_opt_isKindOfClass();

          if ((v14 & 1) == 0)
          {
            continue;
          }

          v12 = [v3 objectForKeyedSubscript:v9];
          v13 = @"< dictionary with %lu keys >";
        }

        v15 = [MEMORY[0x277CCACA8] stringWithFormat:v13, objc_msgSend(v12, "count")];
        [v3 setObject:v15 forKeyedSubscript:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v6);
  }

  v16 = [v3 copy];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (CDPDSecureBackupDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)fetchEscrowRecordsWithOptionForceFetch:completion:.cold.1()
{
  OUTLINED_FUNCTION_7_0();
  v7 = *MEMORY[0x277D85DE8];
  v0 = [CDPDSecureBackupController _sanitizedInfoDictionary:?];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

void __80__CDPDSecureBackupController_fetchEscrowRecordsWithOptionForceFetch_completion___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __80__CDPDSecureBackupController_fetchEscrowRecordsWithOptionForceFetch_completion___block_invoke_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_24510B000, v0, v1, "fetchEscrowRecordsWithCompletion: failed to fetch escrow records: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)fetchAllEscrowRecordsWithOptionForceFetch:completion:.cold.1()
{
  OUTLINED_FUNCTION_7_0();
  v7 = *MEMORY[0x277D85DE8];
  v0 = [CDPDSecureBackupController _sanitizedInfoDictionary:?];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

void __83__CDPDSecureBackupController_fetchAllEscrowRecordsWithOptionForceFetch_completion___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __83__CDPDSecureBackupController_fetchAllEscrowRecordsWithOptionForceFetch_completion___block_invoke_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_24510B000, v0, v1, "fetchAllEscrowRecordsWithOptionForceFetch: failed to fetch escrow records: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)accountInfoWithCompletion:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = [objc_opt_class() _printableAccountInfo:*a2];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_3();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x277D85DE8];
}

void __56__CDPDSecureBackupController_accountInfoWithCompletion___block_invoke_cold_1(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [objc_opt_class() _printableAccountInfo:*(*(a1 + 32) + 48)];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_3();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_accountInfoWithCompletion:.cold.1()
{
  OUTLINED_FUNCTION_7_0();
  v7 = *MEMORY[0x277D85DE8];
  v0 = [CDPDSecureBackupController _sanitizedInfoDictionary:?];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

void __68__CDPDSecureBackupController_backupRecordsArePresentWithCompletion___block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_24510B000, v0, v1, "getBackupRecordDevicesWithOptionForceFetch: Failed to check for secure backup records: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __68__CDPDSecureBackupController_backupRecordsArePresentWithCompletion___block_invoke_2_cold_3(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 count];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

void __68__CDPDSecureBackupController_backupRecordsArePresentWithCompletion___block_invoke_2_cold_4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xEu);
  v5 = *MEMORY[0x277D85DE8];
}

void __98__CDPDSecureBackupController__getOctagonEscrowBackupRecordDevicesWithOptionForceFetch_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_24510B000, v0, v1, "fetch escrow records returned error %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __98__CDPDSecureBackupController__getOctagonEscrowBackupRecordDevicesWithOptionForceFetch_completion___block_invoke_42_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_24510B000, v0, v1, "fetch all escrow records returned error %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __83__CDPDSecureBackupController__getBackupRecordDevicesIncludingUnrecoverableRecords___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_24510B000, v0, v1, "SecureBackup returned error %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __93__CDPDSecureBackupController_upgradeICSCRecordsThenEnableSecureBackupWithContext_completion___block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_24510B000, v0, v1, "Failed to get backup record devices with error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __93__CDPDSecureBackupController_upgradeICSCRecordsThenEnableSecureBackupWithContext_completion___block_invoke_2_68_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_24510B000, v0, v1, "Failed to delete single-ICSC backup while attempting to enable secure backup: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __55__CDPDSecureBackupController_checkForAnyOctagonRecord___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_24510B000, v0, v1, "Failed to fetch escrow records for OT only viability check: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __92__CDPDSecureBackupController_checkForExistingRecordMatchingPredicate_forceFetch_completion___block_invoke_77_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_24510B000, v0, v1, "Check for existing backup failed with error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)supportsRecoveryKeyWithError:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_24510B000, v0, v1, "OT isRecoveryKeySet threw error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)supportsRecoveryKeyWithError:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_24510B000, v0, v1, "SOS isRecoveryKeySet threw error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)supportsWalrusRecoveryKeyWithError:(uint64_t)a3 .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_24510B000, a1, a3, "%s: Can't find account. Returning...", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __72__CDPDSecureBackupController__enableSecureBackupWithContext_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_24510B000, v0, v1, "_authenticatedEnableSecureBackupIncludingFallbackWithContext failed with error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_retryRepairWithContext:retryCount:completion:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_retryRepairWithContext:(uint64_t)a1 retryCount:completion:.cold.2(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 80)];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_3();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

void __76__CDPDSecureBackupController__retryRepairWithContext_retryCount_completion___block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void __76__CDPDSecureBackupController__retryRepairWithContext_retryCount_completion___block_invoke_2_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __76__CDPDSecureBackupController__retryRepairWithContext_retryCount_completion___block_invoke_91_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __76__CDPDSecureBackupController__retryRepairWithContext_retryCount_completion___block_invoke_91_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_24510B000, v0, v1, "Within retry, _authenticatedEnableSecureBackupWithContext failed with error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)enableSecureBackupWithRecoveryKey:completion:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)authenticatedEnableSecureBackupWithRecoveryKey:error:.cold.1()
{
  OUTLINED_FUNCTION_7_0();
  v7 = *MEMORY[0x277D85DE8];
  v0 = [CDPDSecureBackupController _sanitizedInfoDictionary:?];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)authenticatedEnableSecureBackupWithRecoveryKey:error:.cold.2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __102__CDPDSecureBackupController__authenticatedEnableSecureBackupIncludingFallbackWithContext_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_24510B000, v0, v1, "_authenticatedEnableSecureBackupWithContext failed with error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __102__CDPDSecureBackupController__authenticatedEnableSecureBackupIncludingFallbackWithContext_completion___block_invoke_99_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_24510B000, v0, v1, "Nested _authenticatedEnableSecureBackupWithContext failed with error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_authenticatedEnableSecureBackupWithContext:fallbackState:completion:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_8_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_authenticatedEnableSecureBackupWithContext:(uint64_t)a3 fallbackState:(uint64_t)a4 completion:(uint64_t)a5 .cold.3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_7(&dword_24510B000, a1, a3, "%s: Attempting to add local secret info for empty, non-nil string", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_authenticatedEnableSecureBackupWithContext:fallbackState:completion:.cold.4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_authenticatedEnableSecureBackupWithContext:fallbackState:completion:.cold.5()
{
  OUTLINED_FUNCTION_7_0();
  v7 = *MEMORY[0x277D85DE8];
  v0 = [CDPDSecureBackupController _sanitizedInfoDictionary:?];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_authenticatedEnableSecureBackupWithContext:(uint64_t)a3 fallbackState:(uint64_t)a4 completion:(uint64_t)a5 .cold.6(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_7(&dword_24510B000, a1, a3, "%s: Attempting to set passphrase key with empty, non-nil string", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_authenticatedEnableSecureBackupWithContext:(void *)a1 fallbackState:completion:.cold.7(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [a1 telemetryFlowID];
  v9 = [a1 telemetryDeviceSessionID];
  OUTLINED_FUNCTION_0_3();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_authenticatedEnableSecureBackupWithContext:fallbackState:completion:.cold.8()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_authenticatedEnableSecureBackupWithContext:fallbackState:completion:.cold.9()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_authenticatedEnableSecureBackupWithContext:fallbackState:completion:.cold.10()
{
  OUTLINED_FUNCTION_7_0();
  v7 = *MEMORY[0x277D85DE8];
  v0 = [CDPDSecureBackupController _sanitizedInfoDictionary:?];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_handleSecureBackupEnablementError:fallbackState:context:delegate:completion:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_24510B000, v0, v1, "Failed to enable SecureBackup with error %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_handleSecureBackupEnablementError:fallbackState:context:delegate:completion:.cold.4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __50__CDPDSecureBackupController__currentAnisetteData__block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)performEscrowRecoveryWithData:error:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_24510B000, v0, v1, "performEscrowRecoveryWithContextData: failed to recover: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)performSilentEscrowRecoveryWithCDPContext:(uint64_t)a3 error:(uint64_t)a4 .cold.2(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*(*a1 + 40));
  OUTLINED_FUNCTION_0_0(&dword_24510B000, a2, a3, "performSilentEscrowRecoveryWithCDPContext: failed to fetch escrow records: %@, exiting", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)performSilentEscrowRecoveryWithCDPContext:(os_log_t)log error:.cold.3(uint8_t *buf, uint64_t a2, os_log_t log)
{
  *buf = 134217984;
  *(buf + 4) = a2;
  _os_log_debug_impl(&dword_24510B000, log, OS_LOG_TYPE_DEBUG, "performSilentEscrowRecoveryWithCDPContext: calling new recovery with %lu records", buf, 0xCu);
}

- (void)performSilentEscrowRecoveryWithCDPContext:(uint64_t)a3 error:(uint64_t)a4 .cold.5(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*(*a1 + 40));
  OUTLINED_FUNCTION_0_0(&dword_24510B000, a2, a3, "performSilentEscrowRecoveryWithCDPContext: failed to perform silent burn and recover: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)performSilentEscrowRecoveryWithCDPContext:error:.cold.6()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __78__CDPDSecureBackupController_performSilentEscrowRecoveryWithCDPContext_error___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_24510B000, v0, v1, "performSilentEscrowRecoveryWithCDPContext: failed to fetch escrow records: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __78__CDPDSecureBackupController_performSilentEscrowRecoveryWithCDPContext_error___block_invoke_cold_3(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [*(*(*(a1 + 56) + 8) + 40) count];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_performEscrowRecoveryWithRecoveryContext:fallbackState:error:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_performEscrowRecoveryWithRecoveryContext:fallbackState:error:.cold.5()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_24510B000, v0, v1, "performEscrowRecoveryWithRecoveryContext failed to join via recovery key: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_performEscrowRecoveryWithRecoveryContext:fallbackState:error:.cold.10()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_24510B000, v0, v1, "performEscrowRecoveryWithRecoveryContext: failed to perform escrow recovery: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_performEscrowRecoveryWithRecoveryContext:fallbackState:error:.cold.12()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __82__CDPDSecureBackupController_performEscrowRecoveryWithRecoveryContext_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_24510B000, v0, v1, "performEscrowRecoveryWithData: failed to recover via cached recovery key. error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __82__CDPDSecureBackupController_performEscrowRecoveryWithRecoveryContext_completion___block_invoke_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_24510B000, v0, v1, "performEscrowRecoveryWithData: failed to recover via cached recovery key, but an error was not reported. There was also an error checking recovery key support: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)validateAndRepairRecoveryKeyMismatchWithContext:authProvider:circleProxy:completion:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __114__CDPDSecureBackupController_validateAndRepairRecoveryKeyMismatchWithContext_authProvider_circleProxy_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __114__CDPDSecureBackupController_validateAndRepairRecoveryKeyMismatchWithContext_authProvider_circleProxy_completion___block_invoke_cold_5()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_24510B000, v0, v1, "Failure setting IDMS Recovery Key in Octagon with error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __114__CDPDSecureBackupController_validateAndRepairRecoveryKeyMismatchWithContext_authProvider_circleProxy_completion___block_invoke_cold_6()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_24510B000, v0, v1, "Failure setting IDMS Recovery Key in SOS with error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __114__CDPDSecureBackupController_validateAndRepairRecoveryKeyMismatchWithContext_authProvider_circleProxy_completion___block_invoke_135_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_24510B000, v0, v1, "Failure setting Octagon Recovery Key in IDMS with error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __114__CDPDSecureBackupController_validateAndRepairRecoveryKeyMismatchWithContext_authProvider_circleProxy_completion___block_invoke_135_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_24510B000, v0, v1, "Failure setting Octagon Recovery Key in SOS with error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __114__CDPDSecureBackupController_validateAndRepairRecoveryKeyMismatchWithContext_authProvider_circleProxy_completion___block_invoke_136_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_24510B000, v0, v1, "Failure setting SOS Recovery Key in IDMS with error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __114__CDPDSecureBackupController_validateAndRepairRecoveryKeyMismatchWithContext_authProvider_circleProxy_completion___block_invoke_136_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_24510B000, v0, v1, "Failure setting SOS Recovery Key in Octagon with error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_isRecoveryKeySetInOctagonWithConfig:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_24510B000, v0, v1, "Setting Recovery Set in Octagon failed with error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_isRecoveryKeySetInSOSWithConfig:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_24510B000, v0, v1, "Received error while checking if RK is set in SOS: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_setRecoveryKeyInIDMSWithContext:circleProxy:authProvider:completion:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_24510B000, v0, v1, "generateVerifierWithRecoveryKey failed with error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_recoverBackupDictionaryWithContext:(void *)a1 fallbackState:(uint64_t)a2 error:.cold.1(void *a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = [a1 device];
  v10 = [CDPDSecureBackupController _sanitizedInfoDictionary:a2];
  OUTLINED_FUNCTION_0_3();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
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

- (void)_recoveryInfoDictionaryFromContext:(uint64_t)a3 usePreviouslyCachedSecret:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_7(&dword_24510B000, a1, a3, "%s: Attempting to set recovery secret key with empty, non-nil string", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __67__CDPDSecureBackupController_deleteAllBackupRecordsWithCompletion___block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_deleteAllBackupRecordsWithCompletion:.cold.1()
{
  OUTLINED_FUNCTION_7_0();
  v7 = *MEMORY[0x277D85DE8];
  v0 = [CDPDSecureBackupController _sanitizedInfoDictionary:?];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_deleteAllBackupRecordsWithCompletion:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_24510B000, v0, v1, "Error attempting to delete all backup records %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __67__CDPDSecureBackupController_deleteSingleICSCBackupWithCompletion___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __68__CDPDSecureBackupController__deleteSingleICSCBackupWithCompletion___block_invoke_cold_4()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_24510B000, v0, v1, "Failed to get account info while deleting single-iCSC backup: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)disableSecureBackupWithCompletion:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_disableSecureBackupWithEnableInfo:error:.cold.2()
{
  OUTLINED_FUNCTION_7_0();
  v7 = *MEMORY[0x277D85DE8];
  v0 = [CDPDSecureBackupController _sanitizedInfoDictionary:?];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_disableSecureBackupWithEnableInfo:error:.cold.3()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)disableRecoveryKeyWithCompletion:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end