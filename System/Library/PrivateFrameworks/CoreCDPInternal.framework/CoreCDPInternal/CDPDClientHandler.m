@interface CDPDClientHandler
- (BOOL)_localDeviceHasLocalSecret;
- (BOOL)_shouldForceUseSecureBackupCachedPassphraseWithContext:(id)a3 clientType:(unint64_t)a4;
- (CDPDClientHandler)initWithConnection:(id)a3 entitlements:(unint64_t)a4 clientType:(unint64_t)a5;
- (void)_performRecoveryWithContext:(id)a3 uiProvider:(id)a4 authProvider:(id)a5 errorProviuder:(id)a6 resultParser:(id)a7 secureBackUpController:(id)a8 completion:(id)a9;
- (void)_removeObserver;
- (void)_startObservingConnectionStateForRepairWithStateMachine:(id)a3 context:(id)a4;
- (void)anyRecoveryKeysAreOctagonDistrustedWithContext:(id)a3 completion:(id)a4;
- (void)attemptToEscrowPreRecord:(id)a3 context:(id)a4 completion:(id)a5;
- (void)authenticateAndDeleteRecoveryKeyWithContext:(id)a3 uiProvider:(id)a4 completion:(id)a5;
- (void)authenticateAndGenerateNewRecoveryKeyWithContext:(id)a3 uiProvider:(id)a4 completion:(id)a5;
- (void)circleStatusForContext:(id)a3 completion:(id)a4;
- (void)clearFollowUpWithContext:(id)a3 completion:(id)a4;
- (void)cliqueStatusForContext:(id)a3 completion:(id)a4;
- (void)dealloc;
- (void)deleteRecoveryKeyWithContext:(id)a3 uiProvider:(id)a4 completion:(id)a5;
- (void)deviceEscrowRecordRecoverableWithContext:(id)a3 completion:(id)a4;
- (void)fetchEscrowRecordDevicesWithContext:(id)a3 usingCache:(BOOL)a4 completion:(id)a5;
- (void)fetchTermsAcceptanceForAccount:(id)a3 completion:(id)a4;
- (void)finishCyrusFlowAfterTermsAgreementWithContext:(id)a3 uiProvider:(id)a4 completion:(id)a5;
- (void)finishOfflineLocalSecretChangeWithContext:(id)a3 uiProvider:(id)a4 completion:(id)a5;
- (void)generateNewRecoveryKeyWithContext:(id)a3 uiProvider:(id)a4 completion:(id)a5;
- (void)generateRandomRecoveryKeyWithContext:(id)a3 completion:(id)a4;
- (void)handleCloudDataProtectionStateWithContext:(id)a3 uiProvider:(id)a4 completion:(id)a5;
- (void)hasLocalSecretWithCompletion:(id)a3;
- (void)isOTEnabledForContext:(id)a3 completion:(id)a4;
- (void)isRecoveryKeyAvailableWithCompletion:(id)a3;
- (void)isUserVisibleKeychainSyncEnabledWithCompletion:(id)a3;
- (void)isWalrusRecoveryKeyAvailableWithCompletion:(id)a3;
- (void)localSecretChangedTo:(id)a3 secretType:(unint64_t)a4 context:(id)a5 uiProvider:(id)a6 completion:(id)a7;
- (void)performRecoveryWithContext:(id)a3 uiProvider:(id)a4 authProvider:(id)a5 completion:(id)a6;
- (void)performSilentEscrowRecordRepairWithContext:(id)a3 completion:(id)a4;
- (void)postFollowUpWithContext:(id)a3 completion:(id)a4;
- (void)recoverAndSynchronizeSquirrelWithContext:(id)a3 uiProvider:(id)a4 completion:(id)a5;
- (void)recoverSquirrelWithContext:(id)a3 uiProvider:(id)a4 completion:(id)a5;
- (void)removeNonViewAwarePeersFromCircleWithContext:(id)a3 completion:(id)a4;
- (void)repairCloudDataProtectionStateWithContext:(id)a3 uiProvider:(id)a4 completion:(id)a5;
- (void)saveTermsAcceptance:(id)a3 completion:(id)a4;
- (void)sendEvent:(id)a3;
- (void)setKeyChainSyncCompatibilityState:(unint64_t)a3 withAltDSID:(id)a4;
- (void)startCircleApplicationApprovalServerWithContext:(id)a3 completion:(id)a4;
- (void)startSilentEscrowRecordRepairWithContext:(id)a3 completion:(id)a4;
- (void)synchronizeUserVisibleKeychainSyncEligibilityForContext:(id)a3 completion:(id)a4;
- (void)updateLastSilentEscrowRecordRepairAttemptDate:(id)a3 context:(id)a4 completion:(id)a5;
- (void)updateWebAccessStatus:(unint64_t)a3 completion:(id)a4;
- (void)verifyRecoveryKeyObservingSystemsHaveMatchingStateWithContext:(id)a3 completion:(id)a4;
- (void)verifyRecoveryKeyWithContext:(id)a3 uiProvider:(id)a4 completion:(id)a5;
- (void)walrusStatusWithContext:(id)a3 completion:(id)a4;
- (void)webAccessStatusWithCompletion:(id)a3;
@end

@implementation CDPDClientHandler

- (void)dealloc
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_removeObserver
{
  if (self->_notificationObject)
  {
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 removeObserver:self->_notificationObject];
  }
}

- (CDPDClientHandler)initWithConnection:(id)a3 entitlements:(unint64_t)a4 clientType:(unint64_t)a5
{
  v9 = a3;
  v10 = [(CDPDClientHandler *)self init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_connection, a3);
    v11->_entitlements = a4;
    v11->_clientType = a5;
    v12 = [[CDPWalrusDaemonService alloc] initWithEntitlements:a4];
    walrusDaemonService = v11->_walrusDaemonService;
    v11->_walrusDaemonService = v12;
  }

  return v11;
}

- (void)fetchEscrowRecordDevicesWithContext:(id)a3 usingCache:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  [v8 setEndpoint:1288689617];
  v10 = _Block_copy(v9);

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __79__CDPDClientHandler_fetchEscrowRecordDevicesWithContext_usingCache_completion___block_invoke;
  aBlock[3] = &unk_278E256E0;
  v11 = v10;
  v19 = v11;
  v12 = _Block_copy(aBlock);
  if ([(CDPDClientHandler *)self _allowDataRecovery])
  {
    v13 = _CDPLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [CDPDClientHandler fetchEscrowRecordDevicesWithContext:usingCache:completion:];
    }

    v14 = [[CDPDSecureBackupController alloc] initWithContext:v8 uiProvider:0 delegate:0];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __79__CDPDClientHandler_fetchEscrowRecordDevicesWithContext_usingCache_completion___block_invoke_38;
    v16[3] = &unk_278E24708;
    v17 = v12;
    [(CDPDSecureBackupController *)v14 getBackupRecordDevicesWithOptionForceFetch:!v6 completion:v16];

    goto LABEL_9;
  }

  v15 = _CDPLogSystem();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    [CDPDClientHandler fetchEscrowRecordDevicesWithContext:usingCache:completion:];
  }

  if (v12)
  {
    v14 = _CDPStateError();
    (*(v12 + 2))(v12, 0, v14);
LABEL_9:
  }
}

uint64_t __79__CDPDClientHandler_fetchEscrowRecordDevicesWithContext_usingCache_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __79__CDPDClientHandler_fetchEscrowRecordDevicesWithContext_usingCache_completion___block_invoke_38(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = _CDPLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v7;
    _os_log_impl(&dword_24510B000, v8, OS_LOG_TYPE_DEFAULT, "Fetched escrow record devices with error: %@", &v11, 0xCu);
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))(v9, v6, v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)deviceEscrowRecordRecoverableWithContext:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  [v6 setEndpoint:1888483151];
  v8 = _Block_copy(v7);

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __73__CDPDClientHandler_deviceEscrowRecordRecoverableWithContext_completion___block_invoke;
  aBlock[3] = &unk_278E24780;
  v9 = v8;
  v24 = v9;
  v10 = _Block_copy(aBlock);
  v11 = [(CDPDClientHandler *)self _allowDataRecovery];
  v12 = _CDPLogSystem();
  v13 = v12;
  if (v11)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [CDPDClientHandler deviceEscrowRecordRecoverableWithContext:completion:];
    }

    v14 = [[CDPDOctagonTrustProxyImpl alloc] initWithContext:v6];
    v15 = [CDPDSecureBackupConfiguration configurationWithContext:v6];
    v16 = [v15 accountInfoFetchSetupDictionary];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __73__CDPDClientHandler_deviceEscrowRecordRecoverableWithContext_completion___block_invoke_44;
    v19[3] = &unk_278E25730;
    v21 = v16;
    v22 = v10;
    v20 = v14;
    v17 = v16;
    v18 = v14;
    [(CDPDOctagonTrustProxyImpl *)v18 fetchEscrowRecords:v17 forceFetch:1 completion:v19];

    goto LABEL_9;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    [CDPDClientHandler fetchEscrowRecordDevicesWithContext:usingCache:completion:];
  }

  if (v10)
  {
    v15 = [MEMORY[0x277CCA9B8] cdp_errorWithCode:-5302];
    (*(v10 + 2))(v10, v15);
LABEL_9:
  }
}

uint64_t __73__CDPDClientHandler_deviceEscrowRecordRecoverableWithContext_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __73__CDPDClientHandler_deviceEscrowRecordRecoverableWithContext_completion___block_invoke_44(void *a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    if (!v6)
    {
      v7 = [MEMORY[0x277CCA9B8] cdp_errorWithCode:-5305];
    }

    v21 = _CDPLogSystem();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      __73__CDPDClientHandler_deviceEscrowRecordRecoverableWithContext_completion___block_invoke_44_cold_2();
    }

    v22 = a1[6];
    if (v22)
    {
      (*(v22 + 16))(v22, v7);
    }
  }

  else
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v9)
    {
      v10 = v9;
      v26 = v5;
      v11 = 0;
      v12 = *v30;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v30 != v12)
          {
            objc_enumerationMutation(v8);
          }

          v14 = *(*(&v29 + 1) + 8 * i);
          v15 = [objc_alloc(MEMORY[0x277CFD4C0]) initWithEscrowRecord:v14];
          if ([v15 isCurrentDevice])
          {
            v16 = a1[4];
            v17 = a1[5];
            v28 = v11;
            v18 = [v16 tlkRecoverabilityForEscrow:v17 record:v14 error:&v28];
            v19 = v28;

            if (v18)
            {
              v23 = _CDPLogSystem();
              if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_24510B000, v23, OS_LOG_TYPE_DEFAULT, "Found one escrow record for current device that is recoverable!", buf, 2u);
              }

              v20 = 0;
              v5 = v26;
              goto LABEL_28;
            }

            v11 = v19;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v29 objects:v33 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }

      v5 = v26;
      if (v11)
      {
        v20 = v11;
        v19 = v20;
        goto LABEL_26;
      }
    }

    else
    {
    }

    v20 = [MEMORY[0x277CCA9B8] cdp_errorWithCode:0];
    v19 = 0;
LABEL_26:
    v8 = _CDPLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __73__CDPDClientHandler_deviceEscrowRecordRecoverableWithContext_completion___block_invoke_44_cold_1();
    }

LABEL_28:

    v24 = a1[6];
    if (v24)
    {
      (*(v24 + 16))(v24, v20);
    }

    v7 = 0;
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)handleCloudDataProtectionStateWithContext:(id)a3 uiProvider:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [v8 setEndpoint:3142422530];
  v11 = _Block_copy(v10);

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __85__CDPDClientHandler_handleCloudDataProtectionStateWithContext_uiProvider_completion___block_invoke;
  aBlock[3] = &unk_278E25C50;
  v12 = v11;
  v28 = v12;
  v13 = _Block_copy(aBlock);
  v14 = [(CDPDClientHandler *)self _allowStateMachineAccess];
  v15 = _CDPLogSystem();
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
  if (v14)
  {
    if (v16)
    {
      *buf = 0;
      _os_log_impl(&dword_24510B000, v15, OS_LOG_TYPE_DEFAULT, "Starting state machine...", buf, 2u);
    }

    v17 = [(CDPDClientHandler *)self _shouldForceUseSecureBackupCachedPassphraseWithContext:v8 clientType:self->_clientType];
    v18 = _CDPLogSystem();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG);
    if (v17)
    {
      if (v19)
      {
        [CDPDClientHandler handleCloudDataProtectionStateWithContext:uiProvider:completion:];
      }
    }

    else if (v19)
    {
      [CDPDClientHandler handleCloudDataProtectionStateWithContext:uiProvider:completion:];
    }

    [v8 set_useSecureBackupCachedPassphrase:v17];
    v20 = [MEMORY[0x277CFD4A8] preflightContext:v8];
    v21 = [[CDPDStateMachine alloc] initWithContext:v20 uiProvider:v9 connection:self->_connection];
    [(CDPDClientHandler *)self _startObservingConnectionStateForRepairWithStateMachine:v21 context:v20];
    v22 = _CDPLogSystem();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      [CDPDClientHandler handleCloudDataProtectionStateWithContext:uiProvider:completion:];
    }

    if ([v8 type] == 12 || objc_msgSend(v8, "type") == 11)
    {
      v23 = _CDPLogSystem();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        [CDPDClientHandler handleCloudDataProtectionStateWithContext:v8 uiProvider:? completion:?];
      }
    }

    else
    {
      [v8 setType:1];
    }

    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __85__CDPDClientHandler_handleCloudDataProtectionStateWithContext_uiProvider_completion___block_invoke_49;
    v24[3] = &unk_278E25C78;
    v24[4] = self;
    v25 = v13;
    [(CDPDStateMachine *)v21 handleCloudDataProtectionStateWithCompletion:v24];

    goto LABEL_22;
  }

  if (v16)
  {
    *buf = 0;
    _os_log_impl(&dword_24510B000, v15, OS_LOG_TYPE_DEFAULT, "Denying access to state machine. Missing entitlement.", buf, 2u);
  }

  if (v13)
  {
    v20 = _CDPStateError();
    (*(v13 + 2))(v13, 0, 0, v20);
LABEL_22:
  }
}

uint64_t __85__CDPDClientHandler_handleCloudDataProtectionStateWithContext_uiProvider_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __85__CDPDClientHandler_handleCloudDataProtectionStateWithContext_uiProvider_completion___block_invoke_49(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = a4;
  [*(a1 + 32) _removeObserver];
  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, a2, a3, v8);
  }
}

- (BOOL)_shouldForceUseSecureBackupCachedPassphraseWithContext:(id)a3 clientType:(unint64_t)a4
{
  if ([MEMORY[0x277CFD560] useCDPContextSecretInsteadOfSBDSecretFeatureEnabled])
  {
    return 0;
  }

  v7 = [(CDPDClientHandler *)self _localDeviceHasLocalSecret];
  v8 = _CDPLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [(CDPDClientHandler *)a4 == 2 _shouldForceUseSecureBackupCachedPassphraseWithContext:v7 clientType:v8];
  }

  return (a4 == 2) & v7;
}

- (BOOL)_localDeviceHasLocalSecret
{
  v2 = [MEMORY[0x277CFD4F8] sharedInstance];
  v3 = [v2 hasLocalSecret];

  return v3;
}

- (void)repairCloudDataProtectionStateWithContext:(id)a3 uiProvider:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = v8;
  v11 = a5;
  [v10 setEndpoint:844041777];
  v12 = _Block_copy(v11);

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __85__CDPDClientHandler_repairCloudDataProtectionStateWithContext_uiProvider_completion___block_invoke;
  aBlock[3] = &unk_278E24B10;
  v13 = v12;
  v24 = v13;
  v14 = _Block_copy(aBlock);
  if ([(CDPDClientHandler *)self _allowStateMachineAccess])
  {
    v15 = [MEMORY[0x277CFD4A8] preflightContext:v10];
    v16 = _CDPLogSystem();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_24510B000, v16, OS_LOG_TYPE_DEFAULT, "Starting state repair...", buf, 2u);
    }

    v17 = [[CDPDStateMachine alloc] initWithContext:v15 uiProvider:v9 connection:self->_connection];
    [(CDPDClientHandler *)self _startObservingConnectionStateForRepairWithStateMachine:v17 context:v15];
    if ([v15 type] == 13)
    {
      v18 = _CDPLogSystem();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        [CDPDClientHandler handleCloudDataProtectionStateWithContext:v10 uiProvider:? completion:?];
      }
    }

    else
    {
      [v15 setType:2];
    }

    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __85__CDPDClientHandler_repairCloudDataProtectionStateWithContext_uiProvider_completion___block_invoke_53;
    v20[3] = &unk_278E24AE8;
    v20[4] = self;
    v21 = v14;
    [(CDPDStateMachine *)v17 repairCloudDataProtectionStateWithCompletion:v20];

    goto LABEL_14;
  }

  v19 = _CDPLogSystem();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    [CDPDClientHandler repairCloudDataProtectionStateWithContext:uiProvider:completion:];
  }

  if (v14)
  {
    v15 = _CDPStateError();
    (*(v14 + 2))(v14, 0, v15);
LABEL_14:
  }
}

uint64_t __85__CDPDClientHandler_repairCloudDataProtectionStateWithContext_uiProvider_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __85__CDPDClientHandler_repairCloudDataProtectionStateWithContext_uiProvider_completion___block_invoke_53(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  [*(a1 + 32) _removeObserver];
  v6 = _CDPLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 67109378;
    v9[1] = a2;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&dword_24510B000, v6, OS_LOG_TYPE_DEFAULT, "Finished repair with: didRepair = %d, repairError = %@", v9, 0x12u);
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, a2, v5);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)startCircleApplicationApprovalServerWithContext:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  [v6 setEndpoint:2121843186];
  v8 = _Block_copy(v7);

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __80__CDPDClientHandler_startCircleApplicationApprovalServerWithContext_completion___block_invoke;
  aBlock[3] = &unk_278E24B10;
  v9 = v8;
  v31 = v9;
  v10 = _Block_copy(aBlock);
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __80__CDPDClientHandler_startCircleApplicationApprovalServerWithContext_completion___block_invoke_2;
  v28[3] = &unk_278E24AE8;
  v28[4] = self;
  v11 = v10;
  v29 = v11;
  v12 = _Block_copy(v28);
  v13 = [(CDPDClientHandler *)self _allowStateMachineAccess];
  v14 = _CDPLogSystem();
  v15 = v14;
  if (v13)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_24510B000, v15, OS_LOG_TYPE_DEFAULT, "Starting accepting side server...", buf, 2u);
    }

    v16 = [MEMORY[0x277CFD4A8] contextForPrimaryAccount];
    if (v16)
    {
      [v6 augmentWithCredentialsFromContext:v16];
      v17 = [objc_alloc(MEMORY[0x277CCAE80]) initWithServiceName:@"com.apple.CDPProximityPairingService"];
      proxService = self->_proxService;
      self->_proxService = v17;

      v19 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28583B730];
      [(NSXPCConnection *)self->_proxService setRemoteObjectInterface:v19];

      [(NSXPCConnection *)self->_proxService resume];
      v20 = self->_proxService;
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __80__CDPDClientHandler_startCircleApplicationApprovalServerWithContext_completion___block_invoke_64;
      v25[3] = &unk_278E25CA0;
      v25[4] = self;
      v26 = v11;
      v21 = [(NSXPCConnection *)v20 remoteObjectProxyWithErrorHandler:v25];
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __80__CDPDClientHandler_startCircleApplicationApprovalServerWithContext_completion___block_invoke_2_65;
      v24[3] = &unk_278E24BB0;
      v24[4] = self;
      [v21 setOnProxCompletion:v24];
      [v21 startCircleApplicationApprovalServerWithContext:v6 serverStarted:v12];
    }

    else
    {
      v22 = _CDPLogSystem();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [CDPDClientHandler startCircleApplicationApprovalServerWithContext:completion:];
      }

      v23 = _CDPStateError();
      v12[2](v12, 0, v23);
    }
  }

  else
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [CDPDClientHandler startCircleApplicationApprovalServerWithContext:completion:];
    }

    v16 = _CDPStateError();
    v12[2](v12, 0, v16);
  }
}

uint64_t __80__CDPDClientHandler_startCircleApplicationApprovalServerWithContext_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __80__CDPDClientHandler_startCircleApplicationApprovalServerWithContext_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _CDPLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 67109378;
    v9[1] = a2;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&dword_24510B000, v6, OS_LOG_TYPE_DEFAULT, "Application server completed result %{BOOL}d and error: %@", v9, 0x12u);
  }

  if ((a2 & 1) == 0)
  {
    [*(*(a1 + 32) + 16) invalidate];
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, a2, v5);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __80__CDPDClientHandler_startCircleApplicationApprovalServerWithContext_completion___block_invoke_64(uint64_t a1, void *a2)
{
  v4 = a2;
  [*(*(a1 + 32) + 16) invalidate];
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, 0, v4);
  }
}

void __80__CDPDClientHandler_startCircleApplicationApprovalServerWithContext_completion___block_invoke_2_65(uint64_t a1, int a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _CDPLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109378;
    v8[1] = a2;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&dword_24510B000, v6, OS_LOG_TYPE_DEFAULT, "CDP Enabled on requestor after Prox flow: %{BOOL}d and error: %@", v8, 0x12u);
  }

  [*(*(a1 + 32) + 16) invalidate];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_startObservingConnectionStateForRepairWithStateMachine:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [MEMORY[0x277CCAB98] defaultCenter];
  connection = self->_connection;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __85__CDPDClientHandler__startObservingConnectionStateForRepairWithStateMachine_context___block_invoke;
  v14[3] = &unk_278E25CF0;
  objc_copyWeak(&v17, &location);
  v10 = v7;
  v15 = v10;
  v11 = v6;
  v16 = v11;
  v12 = [v8 addObserverForName:@"CDPDConnectionInvalidatedNotification" object:connection queue:0 usingBlock:v14];
  notificationObject = self->_notificationObject;
  self->_notificationObject = v12;

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

void __85__CDPDClientHandler__startObservingConnectionStateForRepairWithStateMachine_context___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _removeObserver];
    v4 = _CDPLogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __85__CDPDClientHandler__startObservingConnectionStateForRepairWithStateMachine_context___block_invoke_cold_1();
    }

    v5 = [MEMORY[0x277CE44D8] analyticsEventWithContext:*(a1 + 32) eventName:*MEMORY[0x277CFD678] category:*MEMORY[0x277CFD930]];
    v6 = [MEMORY[0x277CFD490] rtcAnalyticsReporter];
    [v6 sendEvent:v5];

    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __85__CDPDClientHandler__startObservingConnectionStateForRepairWithStateMachine_context___block_invoke_69;
    v8[3] = &unk_278E25CC8;
    v7 = *(a1 + 40);
    v9 = *(a1 + 32);
    v10 = v3;
    [v7 shouldPerformRepairWithOptionForceFetch:0 completion:v8];
  }
}

void __85__CDPDClientHandler__startObservingConnectionStateForRepairWithStateMachine_context___block_invoke_69(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v11 = v5;
    if ([v5 code] == -5305 || objc_msgSend(v11, "code") == -5312)
    {
      v6 = [MEMORY[0x277CFD4D8] contextForConfirmExistingSecret];
    }

    else
    {
      v6 = [MEMORY[0x277CFD4D8] contextForStateRepair];
    }

    v7 = v6;
    v8 = [*(a1 + 32) altDSID];
    [v7 setAltDSID:v8];

    v9 = [*(a1 + 32) telemetryFlowID];
    [v7 setTelemetryFlowID:v9];

    v10 = [*(a1 + 32) telemetryDeviceSessionID];
    [v7 setTelemetryDeviceSessionID:v10];

    [*(a1 + 40) postFollowUpWithContext:v7 completion:0];
    v5 = v11;
  }
}

uint64_t __73__CDPDClientHandler_shouldPerformRepairForContext_forceFetch_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __73__CDPDClientHandler_shouldPerformRepairForContext_forceFetch_completion___block_invoke_74(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _CDPLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 67109378;
    v9[1] = a2;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&dword_24510B000, v6, OS_LOG_TYPE_DEFAULT, "State machine status check completed shouldRepair=%{BOOL}d error=%@", v9, 0x12u);
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, a2, v5);
  }

  v8 = *MEMORY[0x277D85DE8];
}

uint64_t __86__CDPDClientHandler_shouldPerformAuthenticatedRepairForContext_forceFetch_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __86__CDPDClientHandler_shouldPerformAuthenticatedRepairForContext_forceFetch_completion___block_invoke_75(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _CDPLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 67109378;
    v9[1] = a2;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&dword_24510B000, v6, OS_LOG_TYPE_DEFAULT, "State machine status check completed shouldRepair=%{BOOL}d error=%@", v9, 0x12u);
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, a2, v5);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)attemptToEscrowPreRecord:(id)a3 context:(id)a4 completion:(id)a5
{
  v25 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [v9 setEndpoint:3950444510];
  v11 = _Block_copy(v10);

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __65__CDPDClientHandler_attemptToEscrowPreRecord_context_completion___block_invoke;
  aBlock[3] = &unk_278E24B10;
  v12 = v11;
  v22 = v12;
  v13 = _Block_copy(aBlock);
  if ([(CDPDClientHandler *)self _allowStateMachineAccess])
  {
    [v9 setType:6];
    v14 = _CDPLogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v24 = v8;
      _os_log_impl(&dword_24510B000, v14, OS_LOG_TYPE_DEFAULT, "Handing change in an attempt to escrow preRecord: %@...", buf, 0xCu);
    }

    v15 = [[CDPDLocalSecretController alloc] initWithContext:v9];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __65__CDPDClientHandler_attemptToEscrowPreRecord_context_completion___block_invoke_77;
    v18[3] = &unk_278E24AE8;
    v19 = v8;
    v20 = v13;
    [(CDPDLocalSecretController *)v15 attemptToEscrowPreRecord:v19 completion:v18];

    goto LABEL_9;
  }

  v16 = _CDPLogSystem();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    [CDPDClientHandler shouldPerformRepairForContext:forceFetch:completion:];
  }

  if (v13)
  {
    v15 = _CDPStateError();
    (*(v13 + 2))(v13, 0, v15);
LABEL_9:
  }

  v17 = *MEMORY[0x277D85DE8];
}

uint64_t __65__CDPDClientHandler_attemptToEscrowPreRecord_context_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __65__CDPDClientHandler_attemptToEscrowPreRecord_context_completion___block_invoke_77(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _CDPLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v10 = 138412802;
    v11 = v7;
    v12 = 1024;
    v13 = a2;
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&dword_24510B000, v6, OS_LOG_TYPE_DEFAULT, "State machine finished handling preRecord %@ change with didUpdate=%{BOOL}d error=%@", &v10, 0x1Cu);
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    (*(v8 + 16))(v8, a2, v5);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)localSecretChangedTo:(id)a3 secretType:(unint64_t)a4 context:(id)a5 uiProvider:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = v13;
  v16 = a7;
  [v15 setEndpoint:1996176790];
  v17 = _Block_copy(v16);

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __83__CDPDClientHandler_localSecretChangedTo_secretType_context_uiProvider_completion___block_invoke;
  aBlock[3] = &unk_278E24B10;
  v18 = v17;
  v29 = v18;
  v19 = _Block_copy(aBlock);
  if ([(CDPDClientHandler *)self _allowStateMachineAccess])
  {
    if ([v15 type] != 14)
    {
      if ([MEMORY[0x277CFD560] isSEPBasedICSCHealingEnabled])
      {
        v20 = _CDPLogSystem();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          [CDPDClientHandler localSecretChangedTo:secretType:context:uiProvider:completion:];
        }

        if (v19)
        {
          v19[2](v19, 1, 0);
        }

        goto LABEL_16;
      }

      [v15 setType:6];
    }

    v23 = _CDPLogSystem();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_24510B000, v23, OS_LOG_TYPE_DEFAULT, "Handing change in local secret...", buf, 2u);
    }

    v24 = [[CDPDLocalSecretController alloc] initWithContext:v15];
    [(CDPDLocalSecretController *)v24 setUiProvider:v14];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __83__CDPDClientHandler_localSecretChangedTo_secretType_context_uiProvider_completion___block_invoke_78;
    v25[3] = &unk_278E24B10;
    v26 = v19;
    [(CDPDLocalSecretController *)v24 localSecretChangedTo:v12 secretType:a4 completion:v25];
  }

  else
  {
    v21 = _CDPLogSystem();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      [CDPDClientHandler shouldPerformRepairForContext:forceFetch:completion:];
    }

    if (v19)
    {
      v22 = _CDPStateError();
      (v19)[2](v19, 0, v22);
    }
  }

LABEL_16:
}

uint64_t __83__CDPDClientHandler_localSecretChangedTo_secretType_context_uiProvider_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __83__CDPDClientHandler_localSecretChangedTo_secretType_context_uiProvider_completion___block_invoke_78(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _CDPLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 67109378;
    v9[1] = a2;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&dword_24510B000, v6, OS_LOG_TYPE_DEFAULT, "State machine finished handling local secret change with didUpdate=%{BOOL}d error=%@", v9, 0x12u);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, a2, v5);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)finishOfflineLocalSecretChangeWithContext:(id)a3 uiProvider:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [v8 setEndpoint:4249179058];
  v11 = _Block_copy(v10);

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __85__CDPDClientHandler_finishOfflineLocalSecretChangeWithContext_uiProvider_completion___block_invoke;
  aBlock[3] = &unk_278E24B10;
  v12 = v11;
  v22 = v12;
  v13 = _Block_copy(aBlock);
  v14 = [(CDPDClientHandler *)self _allowStateMachineAccess];
  v15 = _CDPLogSystem();
  v16 = v15;
  if (v14)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_24510B000, v16, OS_LOG_TYPE_DEFAULT, "Finishing offline local secret change...", buf, 2u);
    }

    [v8 setType:3];
    v17 = [[CDPDLocalSecretController alloc] initWithContext:v8];
    [(CDPDLocalSecretController *)v17 setUiProvider:v9];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __85__CDPDClientHandler_finishOfflineLocalSecretChangeWithContext_uiProvider_completion___block_invoke_79;
    v18[3] = &unk_278E24B10;
    v19 = v13;
    [(CDPDLocalSecretController *)v17 finishOfflineLocalSecretChangeWithCompletion:v18];

    goto LABEL_9;
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [CDPDClientHandler shouldPerformRepairForContext:forceFetch:completion:];
  }

  if (v13)
  {
    v17 = _CDPStateError();
    (*(v13 + 2))(v13, 0, v17);
LABEL_9:
  }
}

uint64_t __85__CDPDClientHandler_finishOfflineLocalSecretChangeWithContext_uiProvider_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __85__CDPDClientHandler_finishOfflineLocalSecretChangeWithContext_uiProvider_completion___block_invoke_79(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = _CDPLogSystem();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_24510B000, v7, OS_LOG_TYPE_DEFAULT, "Updated local secret after offline change", v9, 2u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __85__CDPDClientHandler_finishOfflineLocalSecretChangeWithContext_uiProvider_completion___block_invoke_79_cold_1();
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, a2, v5);
  }
}

- (void)finishCyrusFlowAfterTermsAgreementWithContext:(id)a3 uiProvider:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [v8 setEndpoint:1979543336];
  v11 = _Block_copy(v10);

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __89__CDPDClientHandler_finishCyrusFlowAfterTermsAgreementWithContext_uiProvider_completion___block_invoke;
  aBlock[3] = &unk_278E24B10;
  v12 = v11;
  v22 = v12;
  v13 = _Block_copy(aBlock);
  v14 = [(CDPDClientHandler *)self _allowStateMachineAccess];
  v15 = _CDPLogSystem();
  v16 = v15;
  if (v14)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_24510B000, v16, OS_LOG_TYPE_DEFAULT, "Finishing Cyrus terms flow by collecting passcode...", buf, 2u);
    }

    [v8 setType:7];
    v17 = [[CDPDLocalSecretController alloc] initWithContext:v8];
    [(CDPDLocalSecretController *)v17 setUiProvider:v9];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __89__CDPDClientHandler_finishCyrusFlowAfterTermsAgreementWithContext_uiProvider_completion___block_invoke_80;
    v18[3] = &unk_278E24B10;
    v19 = v13;
    [(CDPDLocalSecretController *)v17 finishOfflineLocalSecretChangeWithCompletion:v18];

    goto LABEL_9;
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [CDPDClientHandler shouldPerformRepairForContext:forceFetch:completion:];
  }

  if (v13)
  {
    v17 = _CDPStateError();
    (*(v13 + 2))(v13, 0, v17);
LABEL_9:
  }
}

uint64_t __89__CDPDClientHandler_finishCyrusFlowAfterTermsAgreementWithContext_uiProvider_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __89__CDPDClientHandler_finishCyrusFlowAfterTermsAgreementWithContext_uiProvider_completion___block_invoke_80(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = _CDPLogSystem();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_24510B000, v7, OS_LOG_TYPE_DEFAULT, "Created backup after terms agreement.", v9, 2u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __89__CDPDClientHandler_finishCyrusFlowAfterTermsAgreementWithContext_uiProvider_completion___block_invoke_80_cold_1();
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, a2, v5);
  }
}

- (void)clearFollowUpWithContext:(id)a3 completion:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  [0 setEndpoint:3725776297];
  v8 = _Block_copy(v7);

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __57__CDPDClientHandler_clearFollowUpWithContext_completion___block_invoke;
  aBlock[3] = &unk_278E24B10;
  v9 = v8;
  v20 = v9;
  v10 = _Block_copy(aBlock);
  v11 = [(CDPDClientHandler *)self _allowFollowUps];
  v12 = _CDPLogSystem();
  v13 = v12;
  if (v11)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v22 = v6;
      _os_log_impl(&dword_24510B000, v13, OS_LOG_TYPE_DEFAULT, "Attempting to clear a follow up: %@", buf, 0xCu);
    }

    v14 = +[CDPDFollowUpController sharedInstance];
    v18 = 0;
    v15 = [v14 clearFollowUpWithContext:v6 error:&v18];
    v16 = v18;

    if (!v10)
    {
      goto LABEL_10;
    }

LABEL_9:
    v10[2](v10, v15, v16);
    goto LABEL_10;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [CDPDClientHandler clearFollowUpWithContext:completion:];
  }

  v16 = _CDPStateError();
  v15 = 0;
  if (v10)
  {
    goto LABEL_9;
  }

LABEL_10:

  v17 = *MEMORY[0x277D85DE8];
}

uint64_t __57__CDPDClientHandler_clearFollowUpWithContext_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)postFollowUpWithContext:(id)a3 completion:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  [0 setEndpoint:3045827236];
  v8 = _Block_copy(v7);

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __56__CDPDClientHandler_postFollowUpWithContext_completion___block_invoke;
  aBlock[3] = &unk_278E24B10;
  v9 = v8;
  v26 = v9;
  v10 = _Block_copy(aBlock);
  UMUserManagerClass = UserManagementLibraryCore();
  if (UMUserManagerClass)
  {
    UMUserManagerClass = getUMUserManagerClass();
  }

  v12 = [UMUserManagerClass sharedManager];
  if ([v12 isSharedIPad])
  {
    v13 = [v6 followUpType];
    v14 = [v13 isEqualToString:*MEMORY[0x277CFD470]];

    if (v14)
    {
      v15 = _CDPLogSystem();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        [CDPDClientHandler postFollowUpWithContext:completion:];
      }

      if (v10)
      {
        v16 = _CDPStateError();
        v10[2](v10, 0, v16);
      }

      v17 = 0;
      goto LABEL_20;
    }
  }

  else
  {
  }

  v18 = [(CDPDClientHandler *)self _allowFollowUps];
  v19 = _CDPLogSystem();
  v20 = v19;
  if (v18)
  {
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v28 = v6;
      _os_log_impl(&dword_24510B000, v20, OS_LOG_TYPE_DEFAULT, "Attempting to post a follow up: %@", buf, 0xCu);
    }

    v21 = +[CDPDFollowUpController sharedInstance];
    v24 = 0;
    v22 = [v21 postFollowUpItemForContext:v6 error:&v24];
    v17 = v24;

    if (!v10)
    {
      goto LABEL_20;
    }

LABEL_19:
    v10[2](v10, v22, v17);
    goto LABEL_20;
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    [CDPDClientHandler postFollowUpWithContext:completion:];
  }

  v17 = _CDPStateError();
  v22 = 0;
  if (v10)
  {
    goto LABEL_19;
  }

LABEL_20:

  v23 = *MEMORY[0x277D85DE8];
}

uint64_t __56__CDPDClientHandler_postFollowUpWithContext_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)saveTermsAcceptance:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  [0 setEndpoint:3677280585];
  v8 = _Block_copy(v7);

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __52__CDPDClientHandler_saveTermsAcceptance_completion___block_invoke;
  aBlock[3] = &unk_278E24780;
  v17 = v8;
  v9 = v8;
  v10 = _Block_copy(aBlock);
  v11 = [(CDPDClientHandler *)self _allowDataRecovery];
  v12 = _CDPLogSystem();
  v13 = v12;
  if (v11)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&dword_24510B000, v13, OS_LOG_TYPE_DEFAULT, "Calling out to controller to save terms.", v15, 2u);
    }

    v14 = objc_alloc_init(CDPDTermsInfoBackupController);
    [(CDPDTermsInfoBackupController *)v14 saveTermsAcceptance:v6 completion:v10];
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [CDPDClientHandler saveTermsAcceptance:completion:];
    }

    v14 = _CDPStateError();
    v10[2](v10, v14);
  }
}

uint64_t __52__CDPDClientHandler_saveTermsAcceptance_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)fetchTermsAcceptanceForAccount:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  [0 setEndpoint:819347453];
  v8 = _Block_copy(v7);

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __63__CDPDClientHandler_fetchTermsAcceptanceForAccount_completion___block_invoke;
  aBlock[3] = &unk_278E24620;
  v17 = v8;
  v9 = v8;
  v10 = _Block_copy(aBlock);
  v11 = [(CDPDClientHandler *)self _allowDataRecovery];
  v12 = _CDPLogSystem();
  v13 = v12;
  if (v11)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&dword_24510B000, v13, OS_LOG_TYPE_DEFAULT, "Calling out to controller to fetch terms.", v15, 2u);
    }

    v14 = objc_alloc_init(CDPDTermsInfoBackupController);
    [(CDPDTermsInfoBackupController *)v14 fetchTermsAcceptanceForAccount:v6 completion:v10];
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [CDPDClientHandler fetchTermsAcceptanceForAccount:completion:];
    }

    v14 = _CDPStateError();
    v10[2](v10, 0, v14);
  }
}

uint64_t __63__CDPDClientHandler_fetchTermsAcceptanceForAccount_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)performRecoveryWithContext:(id)a3 uiProvider:(id)a4 authProvider:(id)a5 completion:(id)a6
{
  v35 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = v10;
  v14 = a6;
  [v13 setEndpoint:2705534175];
  v15 = _Block_copy(v14);

  aBlock = MEMORY[0x277D85DD0];
  v29 = 3221225472;
  v30 = __83__CDPDClientHandler_performRecoveryWithContext_uiProvider_authProvider_completion___block_invoke;
  v31 = &unk_278E24620;
  v16 = v15;
  v32 = v16;
  v17 = _Block_copy(&aBlock);
  v18 = [(CDPDClientHandler *)self _allowDataRecovery];
  v19 = _CDPLogSystem();
  v20 = v19;
  if (v18)
  {
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v34 = v11;
      _os_log_impl(&dword_24510B000, v20, OS_LOG_TYPE_DEFAULT, "Initiating Account Recovery with UI provider: %@", buf, 0xCu);
    }

    if (v11)
    {
      if ([v13 idmsMasterKeyRecovery])
      {
        v21 = _CDPLogSystem();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_24510B000, v21, OS_LOG_TYPE_DEFAULT, "Starting RK based Account Recovery flow", buf, 2u);
        }

        v22 = [[CDPDRecoveryKeyController alloc] initWithContext:v13 uiProvider:v11 authProvider:v12];
        [(CDPDRecoveryKeyController *)v22 recoverDataUsingMasterKeyWithCompletion:v17];
        goto LABEL_23;
      }

      [v13 set_authProvider:v12];
      v23 = _CDPLogSystem();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_24510B000, v23, OS_LOG_TYPE_DEFAULT, "Initiating info recovery", buf, 2u);
      }

      if ([v13 idmsRecovery])
      {
        v22 = [(CDPDBackupErrorProviderImpl *)[CDPDBackupIDMSErrorProvider alloc] initWithContext:v13 uiProvider:v11];
        v24 = off_278E23480;
      }

      else
      {
        v22 = [v13 findMyiPhoneUUID];

        if (!v22)
        {
          v25 = 0;
          goto LABEL_22;
        }

        v22 = objc_alloc_init(CDPDBackupErrorProviderImpl);
        v24 = off_278E23470;
      }

      v25 = objc_alloc_init(*v24);
LABEL_22:
      v26 = [[CDPDSecureBackupController alloc] initWithContext:v13 uiProvider:v11 delegate:0];
      [(CDPDClientHandler *)self _performRecoveryWithContext:v13 uiProvider:v11 authProvider:v12 errorProviuder:v22 resultParser:v25 secureBackUpController:v26 completion:v17, aBlock, v29, v30, v31];

      goto LABEL_23;
    }

    if (v17)
    {
LABEL_14:
      v22 = _CDPStateError();
      v17[2](v17, 0, v22);
LABEL_23:
    }
  }

  else
  {
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      [CDPDClientHandler performRecoveryWithContext:uiProvider:authProvider:completion:];
    }

    if (v17)
    {
      goto LABEL_14;
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

uint64_t __83__CDPDClientHandler_performRecoveryWithContext_uiProvider_authProvider_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_performRecoveryWithContext:(id)a3 uiProvider:(id)a4 authProvider:(id)a5 errorProviuder:(id)a6 resultParser:(id)a7 secureBackUpController:(id)a8 completion:(id)a9
{
  v14 = a9;
  v15 = MEMORY[0x277CFD530];
  v16 = a8;
  v17 = a7;
  v18 = a6;
  v19 = a4;
  v20 = a3;
  v21 = objc_alloc_init(v15);
  [v21 setContext:v20];
  v22 = [CDPDBackupInfoRecoveryFlowController alloc];
  v23 = [objc_alloc(MEMORY[0x277CFD498]) initWithContext:v20];
  v24 = [[CDPDOctagonTrustProxyImpl alloc] initWithContext:v20];

  v25 = [(CDPDRecoveryFlowController *)v22 initWithContext:v21 uiProvider:v19 secureBackupController:v16 circleProxy:v23 octagonProxy:v24];
  [(CDPDBackupInfoRecoveryFlowController *)v25 setErrorProvider:v18];

  [(CDPDBackupInfoRecoveryFlowController *)v25 setResultParser:v17];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __135__CDPDClientHandler__performRecoveryWithContext_uiProvider_authProvider_errorProviuder_resultParser_secureBackUpController_completion___block_invoke;
  v27[3] = &unk_278E24620;
  v28 = v14;
  v26 = v14;
  [(CDPDBackupInfoRecoveryFlowController *)v25 beginRecoveryWithCompletion:v27];
}

void __135__CDPDClientHandler__performRecoveryWithContext_uiProvider_authProvider_errorProviuder_resultParser_secureBackUpController_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = _CDPLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v6;
    _os_log_impl(&dword_24510B000, v7, OS_LOG_TYPE_DEFAULT, "info recovery completed with error: %@", &v10, 0xCu);
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, v5, v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t __69__CDPDClientHandler_isICDPEnabledForDSID_checkWithServer_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)hasLocalSecretWithCompletion:(id)a3
{
  v3 = a3;
  [0 setEndpoint:540884795];
  v4 = _Block_copy(v3);

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __50__CDPDClientHandler_hasLocalSecretWithCompletion___block_invoke;
  aBlock[3] = &unk_278E24870;
  v5 = v4;
  v9 = v5;
  v6 = _Block_copy(aBlock);
  if (v6)
  {
    v7 = [MEMORY[0x277CFD4F8] sharedInstance];
    v6[2](v6, [v7 hasLocalSecret]);
  }
}

uint64_t __50__CDPDClientHandler_hasLocalSecretWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)isUserVisibleKeychainSyncEnabledWithCompletion:(id)a3
{
  v3 = a3;
  [0 setEndpoint:3358439441];
  v4 = _Block_copy(v3);

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __68__CDPDClientHandler_isUserVisibleKeychainSyncEnabledWithCompletion___block_invoke;
  aBlock[3] = &unk_278E24870;
  v5 = v4;
  v9 = v5;
  v6 = _Block_copy(aBlock);
  if (v6)
  {
    v7 = +[CDPDKeychainSync keyChainSync];
    v6[2](v6, [v7 isUserVisibleKeychainSyncEnabled]);
  }
}

uint64_t __68__CDPDClientHandler_isUserVisibleKeychainSyncEnabledWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __70__CDPDClientHandler_setUserVisibleKeychainSyncEnabled_withCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __70__CDPDClientHandler_setUserVisibleKeychainSyncEnabled_withCompletion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)removeNonViewAwarePeersFromCircleWithContext:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  [v5 setEndpoint:3866505848];
  v7 = _Block_copy(v6);

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __77__CDPDClientHandler_removeNonViewAwarePeersFromCircleWithContext_completion___block_invoke;
  aBlock[3] = &unk_278E24B10;
  v17 = v7;
  v8 = v7;
  v9 = _Block_copy(aBlock);
  v10 = [objc_alloc(MEMORY[0x277CFD498]) initWithContext:v5];
  v11 = [objc_alloc(MEMORY[0x277CFD540]) initWithContext:v5];
  v12 = [CDPDKeychainSync keyChainSyncWithProxy:v10 sosCircleProxy:v11 context:v5];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __77__CDPDClientHandler_removeNonViewAwarePeersFromCircleWithContext_completion___block_invoke_2;
  v14[3] = &unk_278E24B10;
  v15 = v9;
  v13 = v9;
  [v12 removeNonViewAwarePeersFromCircleWithCompletion:v14];
}

uint64_t __77__CDPDClientHandler_removeNonViewAwarePeersFromCircleWithContext_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __77__CDPDClientHandler_removeNonViewAwarePeersFromCircleWithContext_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)synchronizeUserVisibleKeychainSyncEligibilityForContext:(id)a3 completion:(id)a4
{
  v9 = a3;
  if (v9)
  {
    v5 = a4;
    v6 = [[CDPDKeychainSync alloc] initWithContext:v9];
    [(CDPDKeychainSync *)v6 updateKeychainSyncStateIfNeededWithCompletion:v5];
  }

  else
  {
    v7 = MEMORY[0x277CCA9B8];
    v8 = a4;
    v6 = [v7 cdp_errorWithCode:-5003];
    (*(a4 + 2))(v8, 0, v6);
  }
}

- (void)isOTEnabledForContext:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(CDPDClientHandler *)self _allowStateMachineAccess])
  {
    v8 = objc_opt_new();
    v9 = v8;
    if (v7)
    {
      v7[2](v7, [v8 isOTEnabledForContext:v6], 0);
    }

    goto LABEL_8;
  }

  v10 = _CDPLogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [CDPDClientHandler isOTEnabledForContext:completion:];
  }

  if (v7)
  {
    v9 = _CDPStateError();
    (v7)[2](v7, 0, v9);
LABEL_8:
  }
}

- (void)cliqueStatusForContext:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  if ([(CDPDClientHandler *)self _allowStateMachineAccess])
  {
    if (v7)
    {
      v9 = [objc_alloc(MEMORY[0x277CFD498]) initWithContext:v7];
      v14 = 0;
      v10 = [v9 cliqueStatus:&v14];
      v11 = v14;
      if (v8)
      {
        v8[2](v8, v10, v11);
      }

      goto LABEL_14;
    }

    v13 = _CDPLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [CDPDClientHandler cliqueStatusForContext:a2 completion:?];
    }

    if (v8)
    {
LABEL_13:
      v9 = _CDPStateError();
      v8[2](v8, -1, v9);
LABEL_14:
    }
  }

  else
  {
    v12 = _CDPLogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [CDPDClientHandler cliqueStatusForContext:a2 completion:?];
    }

    if (v8)
    {
      goto LABEL_13;
    }
  }
}

- (void)circleStatusForContext:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  if ([(CDPDClientHandler *)self _allowStateMachineAccess])
  {
    if (v7)
    {
      v9 = [objc_alloc(MEMORY[0x277CFD540]) initWithContext:v7];
      v14 = 0;
      v10 = [v9 cachedSOSCircleStatus:&v14];
      v11 = v14;
      if (v8)
      {
        v8[2](v8, v10, v11);
      }

      goto LABEL_14;
    }

    v13 = _CDPLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [CDPDClientHandler cliqueStatusForContext:a2 completion:?];
    }

    if (v8)
    {
LABEL_13:
      v9 = _CDPStateError();
      v8[2](v8, 0xFFFFFFFFLL, v9);
LABEL_14:
    }
  }

  else
  {
    v12 = _CDPLogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [CDPDClientHandler cliqueStatusForContext:a2 completion:?];
    }

    if (v8)
    {
      goto LABEL_13;
    }
  }
}

- (void)setKeyChainSyncCompatibilityState:(unint64_t)a3 withAltDSID:(id)a4
{
  v4 = a3;
  v6 = a4;
  if ([(CDPDClientHandler *)self _allowStateMachineAccess])
  {
    if ([MEMORY[0x277CFD560] deferSOSFromSignIn])
    {
      if ((v4 & 3) == 1)
      {
        v7 = _CDPLogSystem();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
        {
          [CDPDClientHandler setKeyChainSyncCompatibilityState:withAltDSID:];
        }
      }

      v8 = [MEMORY[0x277CFD4A8] contextForAccountWithAltDSID:v6];
      [(CDPDClientHandler *)self _updateSOSCompatibilityMode:(v4 & 3) != 0 context:v8];
      if ([(CDPDClientHandler *)self _allowFollowUps])
      {
        v9 = [MEMORY[0x277CFD4D8] contextForSOSCompatibilityMode];
        [v9 setAltDSID:v6];
        v10 = objc_alloc_init(MEMORY[0x277CFD4E0]);
        v11 = v10;
        if (v4)
        {
          [v10 postFollowUpWithContext:v9 error:0];
        }

        else
        {
          [v10 clearFollowUpWithContext:v9 error:0];
        }
      }

      else
      {
        v9 = _CDPLogSystem();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          [CDPDClientHandler setKeyChainSyncCompatibilityState:? withAltDSID:?];
        }
      }
    }

    else
    {
      v8 = _CDPLogSystem();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        [CDPDClientHandler setKeyChainSyncCompatibilityState:withAltDSID:];
      }
    }
  }

  else
  {
    v8 = _CDPLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [CDPDClientHandler setKeyChainSyncCompatibilityState:withAltDSID:];
    }
  }
}

- (void)recoverAndSynchronizeSquirrelWithContext:(id)a3 uiProvider:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [v8 setEndpoint:4233277675];
  v11 = _Block_copy(v10);

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __84__CDPDClientHandler_recoverAndSynchronizeSquirrelWithContext_uiProvider_completion___block_invoke;
  aBlock[3] = &unk_278E24B10;
  v12 = v11;
  v19 = v12;
  v13 = _Block_copy(aBlock);
  if ([(CDPDClientHandler *)self _allowRecoveryKey])
  {
    v14 = [CDPDRecoveryKeyController alloc];
    v15 = [MEMORY[0x277CFD4A8] preflightContext:v8];
    v16 = [(CDPDRecoveryKeyController *)v14 initWithContext:v15 uiProvider:v9];
    [(CDPDRecoveryKeyController *)v16 recoverAndSynchronizeStateWithServer:v13];

LABEL_7:
    goto LABEL_8;
  }

  v17 = _CDPLogSystem();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    [CDPDClientHandler recoverAndSynchronizeSquirrelWithContext:uiProvider:completion:];
  }

  if (v13)
  {
    v15 = _CDPStateError();
    v13[2](v13, 0, v15);
    goto LABEL_7;
  }

LABEL_8:
}

uint64_t __84__CDPDClientHandler_recoverAndSynchronizeSquirrelWithContext_uiProvider_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)recoverSquirrelWithContext:(id)a3 uiProvider:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [v8 setEndpoint:2013313151];
  v11 = _Block_copy(v10);

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __70__CDPDClientHandler_recoverSquirrelWithContext_uiProvider_completion___block_invoke;
  aBlock[3] = &unk_278E24B10;
  v12 = v11;
  v19 = v12;
  v13 = _Block_copy(aBlock);
  if ([(CDPDClientHandler *)self _allowRecoveryKey])
  {
    v14 = [CDPDRecoveryKeyController alloc];
    v15 = [MEMORY[0x277CFD4A8] preflightContext:v8];
    v16 = [(CDPDRecoveryKeyController *)v14 initWithContext:v15 uiProvider:v9];
    [(CDPDRecoveryKeyController *)v16 recoverAndSynchronizeStateWithServer:v13];

LABEL_7:
    goto LABEL_8;
  }

  v17 = _CDPLogSystem();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    [CDPDClientHandler recoverAndSynchronizeSquirrelWithContext:uiProvider:completion:];
  }

  if (v13)
  {
    v15 = _CDPStateError();
    v13[2](v13, 0, v15);
    goto LABEL_7;
  }

LABEL_8:
}

uint64_t __70__CDPDClientHandler_recoverSquirrelWithContext_uiProvider_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)isRecoveryKeyAvailableWithCompletion:(id)a3
{
  v4 = a3;
  [0 setEndpoint:266770439];
  v5 = _Block_copy(v4);

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __58__CDPDClientHandler_isRecoveryKeyAvailableWithCompletion___block_invoke;
  aBlock[3] = &unk_278E24B10;
  v6 = v5;
  v15 = v6;
  v7 = _Block_copy(aBlock);
  if ([(CDPDClientHandler *)self _allowRecoveryKey])
  {
    v8 = [MEMORY[0x277CFD4A8] contextForPrimaryAccount];
    v9 = [[CDPDRecoveryKeyController alloc] initWithContext:v8];
    v13 = 0;
    v10 = [(CDPDRecoveryKeyController *)v9 isRecoveryKeyAvailableWithError:&v13];
    v11 = v13;
    if (v7)
    {
      v7[2](v7, v10, v11);
    }

    goto LABEL_9;
  }

  v12 = _CDPLogSystem();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [CDPDClientHandler isRecoveryKeyAvailableWithCompletion:];
  }

  if (v7)
  {
    v8 = _CDPStateError();
    v7[2](v7, 0, v8);
LABEL_9:
  }
}

uint64_t __58__CDPDClientHandler_isRecoveryKeyAvailableWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)isWalrusRecoveryKeyAvailableWithCompletion:(id)a3
{
  v4 = a3;
  [0 setEndpoint:266770439];
  v5 = _Block_copy(v4);

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __64__CDPDClientHandler_isWalrusRecoveryKeyAvailableWithCompletion___block_invoke;
  aBlock[3] = &unk_278E24B10;
  v6 = v5;
  v15 = v6;
  v7 = _Block_copy(aBlock);
  if ([(CDPDClientHandler *)self _allowRecoveryKey])
  {
    v8 = [MEMORY[0x277CFD4A8] contextForPrimaryAccount];
    v9 = [[CDPDRecoveryKeyController alloc] initWithContext:v8];
    v13 = 0;
    v10 = [(CDPDRecoveryKeyController *)v9 isWalrusRecoveryKeyAvailableWithError:&v13];
    v11 = v13;
    if (v7)
    {
      v7[2](v7, v10, v11);
    }

    goto LABEL_9;
  }

  v12 = _CDPLogSystem();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [CDPDClientHandler isRecoveryKeyAvailableWithCompletion:];
  }

  if (v7)
  {
    v8 = _CDPStateError();
    v7[2](v7, 0, v8);
LABEL_9:
  }
}

uint64_t __64__CDPDClientHandler_isWalrusRecoveryKeyAvailableWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)authenticateAndGenerateNewRecoveryKeyWithContext:(id)a3 uiProvider:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = _CDPLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [CDPDClientHandler authenticateAndGenerateNewRecoveryKeyWithContext:uiProvider:completion:];
  }

  v12 = [(CDPDClientHandler *)self _allowRecoveryKey];
  v13 = _CDPLogSystem();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG);
  if (v12)
  {
    if (v14)
    {
      [CDPDClientHandler authenticateAndGenerateNewRecoveryKeyWithContext:uiProvider:completion:];
    }

    [v8 setType:4];
    v15 = [CDPDRecoveryKeyController alloc];
    v16 = [MEMORY[0x277CFD4A8] preflightContext:v8];
    v17 = [(CDPDRecoveryKeyController *)v15 initWithContext:v16 uiProvider:v9];
    [(CDPDRecoveryKeyController *)v17 authenticateAndGenerateNewRecoveryKeyWithCompletion:v10];

    goto LABEL_11;
  }

  if (v14)
  {
    [CDPDClientHandler authenticateAndGenerateNewRecoveryKeyWithContext:uiProvider:completion:];
  }

  if (v10)
  {
    v16 = _CDPStateError();
    v10[2](v10, 0, v16);
LABEL_11:
  }
}

- (void)generateNewRecoveryKeyWithContext:(id)a3 uiProvider:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [v8 setEndpoint:3301729261];
  v11 = _Block_copy(v10);

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __77__CDPDClientHandler_generateNewRecoveryKeyWithContext_uiProvider_completion___block_invoke;
  aBlock[3] = &unk_278E24B10;
  v12 = v11;
  v19 = v12;
  v13 = _Block_copy(aBlock);
  if ([(CDPDClientHandler *)self _allowRecoveryKey])
  {
    [v8 setType:4];
    v14 = [CDPDRecoveryKeyController alloc];
    v15 = [MEMORY[0x277CFD4A8] preflightContext:v8];
    v16 = [(CDPDRecoveryKeyController *)v14 initWithContext:v15 uiProvider:v9];
    [(CDPDRecoveryKeyController *)v16 generateNewRecoveryKey:v13];

LABEL_7:
    goto LABEL_8;
  }

  v17 = _CDPLogSystem();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    [CDPDClientHandler isRecoveryKeyAvailableWithCompletion:];
  }

  if (v13)
  {
    v15 = _CDPStateError();
    v13[2](v13, 0, v15);
    goto LABEL_7;
  }

LABEL_8:
}

uint64_t __77__CDPDClientHandler_generateNewRecoveryKeyWithContext_uiProvider_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)verifyRecoveryKeyWithContext:(id)a3 uiProvider:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [v8 setEndpoint:1660048000];
  v11 = _Block_copy(v10);

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __72__CDPDClientHandler_verifyRecoveryKeyWithContext_uiProvider_completion___block_invoke;
  aBlock[3] = &unk_278E24B10;
  v12 = v11;
  v17 = v12;
  v13 = _Block_copy(aBlock);
  if ([(CDPDClientHandler *)self _allowRecoveryKey])
  {
    v14 = [[CDPDRecoveryKeyController alloc] initWithContext:v8 uiProvider:v9];
    [(CDPDRecoveryKeyController *)v14 verifyRecoveryKey:v13];
LABEL_7:

    goto LABEL_8;
  }

  v15 = _CDPLogSystem();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [CDPDClientHandler verifyRecoveryKeyWithContext:uiProvider:completion:];
  }

  if (v13)
  {
    v14 = _CDPStateError();
    v13[2](v13, 0, v14);
    goto LABEL_7;
  }

LABEL_8:
}

uint64_t __72__CDPDClientHandler_verifyRecoveryKeyWithContext_uiProvider_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)authenticateAndDeleteRecoveryKeyWithContext:(id)a3 uiProvider:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = _CDPLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [CDPDClientHandler authenticateAndDeleteRecoveryKeyWithContext:uiProvider:completion:];
  }

  v12 = [(CDPDClientHandler *)self _allowRecoveryKey];
  v13 = _CDPLogSystem();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG);
  if (v12)
  {
    if (v14)
    {
      [CDPDClientHandler authenticateAndDeleteRecoveryKeyWithContext:uiProvider:completion:];
    }

    [v8 setType:4];
    v15 = [CDPDRecoveryKeyController alloc];
    v16 = [MEMORY[0x277CFD4A8] preflightContext:v8];
    v17 = [(CDPDRecoveryKeyController *)v15 initWithContext:v16 uiProvider:v9];
    [(CDPDRecoveryKeyController *)v17 authenticateAndDeleteRecoveryKeyWithCompletion:v10];

    goto LABEL_11;
  }

  if (v14)
  {
    [CDPDClientHandler authenticateAndDeleteRecoveryKeyWithContext:uiProvider:completion:];
  }

  if (v10)
  {
    v16 = _CDPStateError();
    v10[2](v10, 0, v16);
LABEL_11:
  }
}

- (void)deleteRecoveryKeyWithContext:(id)a3 uiProvider:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = v8;
  v11 = a5;
  [v10 setEndpoint:1512741306];
  v12 = _Block_copy(v11);

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __72__CDPDClientHandler_deleteRecoveryKeyWithContext_uiProvider_completion___block_invoke;
  aBlock[3] = &unk_278E24B10;
  v13 = v12;
  v24 = v13;
  v14 = _Block_copy(aBlock);
  if ([(CDPDClientHandler *)self _allowRecoveryKey])
  {
    v15 = [CDPDRecoveryKeyController alloc];
    v16 = [MEMORY[0x277CFD4A8] preflightContext:v10];
    v17 = [(CDPDRecoveryKeyController *)v15 initWithContext:v16 uiProvider:v9];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __72__CDPDClientHandler_deleteRecoveryKeyWithContext_uiProvider_completion___block_invoke_2;
    v20[3] = &unk_278E25818;
    v22 = v14;
    v20[4] = self;
    v21 = v10;
    [(CDPDRecoveryKeyController *)v17 deleteRecoveryKeyWithCompletion:v20];

    v18 = v22;
LABEL_7:

    goto LABEL_8;
  }

  v19 = _CDPLogSystem();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    [CDPDClientHandler isRecoveryKeyAvailableWithCompletion:];
  }

  if (v14)
  {
    v18 = _CDPStateError();
    (*(v14 + 2))(v14, 0, v18);
    goto LABEL_7;
  }

LABEL_8:
}

uint64_t __72__CDPDClientHandler_deleteRecoveryKeyWithContext_uiProvider_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __72__CDPDClientHandler_deleteRecoveryKeyWithContext_uiProvider_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = _CDPLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __72__CDPDClientHandler_deleteRecoveryKeyWithContext_uiProvider_completion___block_invoke_2_cold_1();
    }

    v7 = *(a1 + 48);
    if (v7)
    {
      v8 = *(v7 + 16);
LABEL_14:
      v8();
    }
  }

  else if ([*(a1 + 32) _allowFollowUps])
  {
    v9 = [MEMORY[0x277CFD4D8] contextForRecoveryKeyMismatchHealing];
    v10 = [*(a1 + 40) altDSID];
    [v9 setAltDSID:v10];

    v11 = objc_alloc_init(MEMORY[0x277CFD4E0]);
    [v11 clearFollowUpWithContext:v9 error:0];
    v12 = *(a1 + 48);
    if (v12)
    {
      (*(v12 + 16))(v12, a2, 0);
    }
  }

  else
  {
    v13 = _CDPLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      __72__CDPDClientHandler_deleteRecoveryKeyWithContext_uiProvider_completion___block_invoke_2_cold_2((a1 + 32));
    }

    v14 = *(a1 + 48);
    if (v14)
    {
      v8 = *(v14 + 16);
      goto LABEL_14;
    }
  }
}

- (void)generateRandomRecoveryKeyWithContext:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  [v6 setEndpoint:4019745616];
  v8 = _Block_copy(v7);

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __69__CDPDClientHandler_generateRandomRecoveryKeyWithContext_completion___block_invoke;
  aBlock[3] = &unk_278E25D18;
  v9 = v8;
  v16 = v9;
  v10 = _Block_copy(aBlock);
  if ([(CDPDClientHandler *)self _allowRecoveryKey])
  {
    [v6 setType:4];
    v11 = [CDPDRecoveryKeyController alloc];
    v12 = [MEMORY[0x277CFD4A8] preflightContext:v6];
    v13 = [(CDPDRecoveryKeyController *)v11 initWithContext:v12];
    [(CDPDRecoveryKeyController *)v13 generateRandomRecoveryKey:v10];

LABEL_7:
    goto LABEL_8;
  }

  v14 = _CDPLogSystem();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [CDPDClientHandler isRecoveryKeyAvailableWithCompletion:];
  }

  if (v10)
  {
    v12 = _CDPStateError();
    v10[2](v10, 0, v12);
    goto LABEL_7;
  }

LABEL_8:
}

uint64_t __69__CDPDClientHandler_generateRandomRecoveryKeyWithContext_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)verifyRecoveryKeyObservingSystemsHaveMatchingStateWithContext:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (!v5)
  {
    v5 = [MEMORY[0x277CFD4A8] contextForPrimaryAccount];
  }

  v7 = objc_alloc_init(MEMORY[0x277CFD4B8]);
  v10 = 0;
  v8 = [v7 verifyRecoveryKeyObservingSystemsHaveMatchingStateWithContext:v5 error:&v10];
  v9 = v10;
  if (v6)
  {
    v6[2](v6, v8, v9);
  }
}

- (void)anyRecoveryKeysAreOctagonDistrustedWithContext:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(CDPDClientHandler *)self _allowRecoveryKey])
  {
    if (!v6)
    {
      v6 = [MEMORY[0x277CFD4A8] contextForPrimaryAccount];
    }

    v8 = [[CDPDRecoveryKeyController alloc] initWithContext:v6];
    v12 = 0;
    v9 = [(CDPDRecoveryKeyController *)v8 anyRecoveryKeysAreOctagonDistrustedWithError:&v12];
    v10 = v12;
    if (v7)
    {
      v7[2](v7, v9, v10);
    }

    goto LABEL_11;
  }

  v11 = _CDPLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [CDPDClientHandler isRecoveryKeyAvailableWithCompletion:];
  }

  if (v7)
  {
    v8 = _CDPStateError();
    v7[2](v7, 0, v8);
LABEL_11:
  }
}

- (void)walrusStatusWithContext:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  [v6 setEndpoint:3540853470];
  v8 = _Block_copy(v7);

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __56__CDPDClientHandler_walrusStatusWithContext_completion___block_invoke;
  aBlock[3] = &unk_278E24E58;
  v12 = v8;
  v9 = v8;
  v10 = _Block_copy(aBlock);
  [(CDPWalrusDaemonService *)self->_walrusDaemonService walrusStatusWithContext:v6 completion:v10];
}

uint64_t __56__CDPDClientHandler_walrusStatusWithContext_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)webAccessStatusWithCompletion:(id)a3
{
  v4 = a3;
  [0 setEndpoint:1504201822];
  v5 = _Block_copy(v4);

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __51__CDPDClientHandler_webAccessStatusWithCompletion___block_invoke;
  aBlock[3] = &unk_278E24E58;
  v9 = v5;
  v6 = v5;
  v7 = _Block_copy(aBlock);
  [(CDPWalrusDaemonService *)self->_walrusDaemonService webAccessStatusWithCompletion:v7];
}

uint64_t __51__CDPDClientHandler_webAccessStatusWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)updateWebAccessStatus:(unint64_t)a3 completion:(id)a4
{
  v6 = a4;
  [0 setEndpoint:2557521267];
  v7 = _Block_copy(v6);

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __54__CDPDClientHandler_updateWebAccessStatus_completion___block_invoke;
  aBlock[3] = &unk_278E24780;
  v11 = v7;
  v8 = v7;
  v9 = _Block_copy(aBlock);
  [(CDPWalrusDaemonService *)self->_walrusDaemonService updateWebAccessStatus:a3 completion:v9];
}

uint64_t __54__CDPDClientHandler_updateWebAccessStatus_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)startSilentEscrowRecordRepairWithContext:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(CDPDClientHandler *)self _allowStateMachineAccess])
  {
    if (v7)
    {
      v7[2](v7, 1, 0);
    }

    [v6 setType:10];
    v8 = [[CDPDEscrowRecordController alloc] initWithContext:v6];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __73__CDPDClientHandler_startSilentEscrowRecordRepairWithContext_completion___block_invoke;
    v11[3] = &unk_278E24BB0;
    v12 = v8;
    v9 = v8;
    [(CDPDEscrowRecordController *)v9 performSilentEscrowRecordRepairWithCompletion:v11];

    goto LABEL_9;
  }

  v10 = _CDPLogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    [CDPDClientHandler startSilentEscrowRecordRepairWithContext:completion:];
  }

  if (v7)
  {
    v9 = [MEMORY[0x277CCA9B8] cdp_errorWithCode:-5302];
    (v7)[2](v7, 0, v9);
LABEL_9:
  }
}

void __73__CDPDClientHandler_startSilentEscrowRecordRepairWithContext_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _CDPLogSystem();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v6)
    {
      LOWORD(v11) = 0;
      v7 = "Successfully performed silent escrow record repair in background!";
      v8 = v5;
      v9 = 2;
LABEL_6:
      _os_log_impl(&dword_24510B000, v8, OS_LOG_TYPE_DEFAULT, v7, &v11, v9);
    }
  }

  else if (v6)
  {
    v11 = 138412290;
    v12 = v4;
    v7 = "Failed to perform silent escrow record repair in background with error: %@";
    v8 = v5;
    v9 = 12;
    goto LABEL_6;
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __67__CDPDClientHandler_escrowCheckForContext_isBackground_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _CDPLogSystem();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (!v7)
    {
      goto LABEL_7;
    }

    v11 = 138412290;
    v12 = v5;
    v8 = "Failed to perform escrow check with error: %@";
  }

  else
  {
    if (!v7)
    {
      goto LABEL_7;
    }

    v11 = 134217984;
    v12 = a2;
    v8 = "Successfully performed escrow check. viabilityState: %lu";
  }

  _os_log_impl(&dword_24510B000, v6, OS_LOG_TYPE_DEFAULT, v8, &v11, 0xCu);
LABEL_7:

  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))(v9, a2, v5);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)performSilentEscrowRecordRepairWithContext:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(CDPDClientHandler *)self _allowStateMachineAccess])
  {
    [v6 setType:10];
    v8 = [[CDPDEscrowRecordController alloc] initWithContext:v6];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __75__CDPDClientHandler_performSilentEscrowRecordRepairWithContext_completion___block_invoke;
    v11[3] = &unk_278E24AE8;
    v12 = v8;
    v13 = v7;
    v9 = v8;
    [(CDPDEscrowRecordController *)v9 performSilentEscrowRecordRepairWithCompletion:v11];

LABEL_7:
    goto LABEL_8;
  }

  v10 = _CDPLogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    [CDPDClientHandler escrowCheckForContext:isBackground:completion:];
  }

  if (v7)
  {
    v9 = [MEMORY[0x277CCA9B8] cdp_errorWithCode:-5302];
    (*(v7 + 2))(v7, 0, v9);
    goto LABEL_7;
  }

LABEL_8:
}

void __75__CDPDClientHandler_performSilentEscrowRecordRepairWithContext_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _CDPLogSystem();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (!v7)
    {
      goto LABEL_7;
    }

    LOWORD(v13) = 0;
    v8 = "Successfully performed silent escrow record repair!";
    v9 = v6;
    v10 = 2;
  }

  else
  {
    if (!v7)
    {
      goto LABEL_7;
    }

    v13 = 138412290;
    v14 = v5;
    v8 = "Failed to perform silent escrow record repair with error: %@";
    v9 = v6;
    v10 = 12;
  }

  _os_log_impl(&dword_24510B000, v9, OS_LOG_TYPE_DEFAULT, v8, &v13, v10);
LABEL_7:

  v11 = *(a1 + 40);
  if (v11)
  {
    (*(v11 + 16))(v11, a2, v5);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)updateLastSilentEscrowRecordRepairAttemptDate:(id)a3 context:(id)a4 completion:(id)a5
{
  v21 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(CDPDClientHandler *)self _allowStateMachineAccess])
  {
    [v9 setType:10];
    v11 = [[CDPDEscrowRecordController alloc] initWithContext:v9];
    v18 = 0;
    v12 = [(CDPDEscrowRecordController *)v11 updateLastSilentEscrowRecordRepairAttemptDate:v8 error:&v18];
    v13 = v18;
    v14 = _CDPLogSystem();
    v15 = v14;
    if (v12)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v20 = v8;
        _os_log_impl(&dword_24510B000, v15, OS_LOG_TYPE_DEFAULT, "Successfully updated last silent escrow record repair attempt date (%@)", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [CDPDClientHandler updateLastSilentEscrowRecordRepairAttemptDate:context:completion:];
    }

    if (v10)
    {
      v10[2](v10, v12, v13);
    }

    goto LABEL_14;
  }

  v16 = _CDPLogSystem();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    [CDPDClientHandler updateLastSilentEscrowRecordRepairAttemptDate:context:completion:];
  }

  if (v10)
  {
    v11 = [MEMORY[0x277CCA9B8] cdp_errorWithCode:-5302];
    v10[2](v10, 0, v11);
LABEL_14:
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)sendEvent:(id)a3
{
  v4 = a3;
  if ([(CDPDClientHandler *)self _allowDataRecovery]|| [(CDPDClientHandler *)self _allowStateMachineAccess])
  {
    UMUserManagerClass = UserManagementLibraryCore();
    if (UMUserManagerClass)
    {
      UMUserManagerClass = getUMUserManagerClass();
    }

    v6 = [UMUserManagerClass sharedManager];
    v7 = [v6 isSharedIPad];

    if (v7)
    {
      v8 = _CDPLogSystemAnalytics();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        [CDPDClientHandler sendEvent:];
      }
    }

    else
    {
      v8 = [CDPDAnalyticsTransport transportForEvent:v4];
      [v8 sendEvent:v4];
    }
  }

  else
  {
    v8 = _CDPLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [CDPDClientHandler sendEvent:];
    }
  }
}

- (void)fetchEscrowRecordDevicesWithContext:usingCache:completion:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __73__CDPDClientHandler_deviceEscrowRecordRecoverableWithContext_completion___block_invoke_44_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __73__CDPDClientHandler_deviceEscrowRecordRecoverableWithContext_completion___block_invoke_44_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)handleCloudDataProtectionStateWithContext:uiProvider:completion:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)handleCloudDataProtectionStateWithContext:(uint64_t)a1 uiProvider:(void *)a2 completion:.cold.4(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  [a2 type];
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_0_3();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_shouldForceUseSecureBackupCachedPassphraseWithContext:(os_log_t)log clientType:.cold.1(char a1, char a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 67109376;
  v4[1] = a1 & 1;
  v5 = 1024;
  v6 = a2 & 1;
  _os_log_debug_impl(&dword_24510B000, log, OS_LOG_TYPE_DEBUG, "_shouldForceUseSecureBackupCachedPassphrase: clientTypeIsBuddy=%{BOOL}d, hasSecret=%{BOOL}d", v4, 0xEu);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)startCircleApplicationApprovalServerWithContext:completion:.cold.2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __85__CDPDClientHandler__startObservingConnectionStateForRepairWithStateMachine_context___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)generateEscrowRecordStatusReportForContext:usingCache:withCompletion:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)shouldPerformRepairForContext:forceFetch:completion:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __85__CDPDClientHandler_finishOfflineLocalSecretChangeWithContext_uiProvider_completion___block_invoke_79_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __89__CDPDClientHandler_finishCyrusFlowAfterTermsAgreementWithContext_uiProvider_completion___block_invoke_80_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)cliqueStatusForContext:(const char *)a1 completion:.cold.1(const char *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  sel_getName(a1);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5_2(&dword_24510B000, v1, v2, "%s: Missing entitlement, failing!", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)cliqueStatusForContext:(const char *)a1 completion:.cold.2(const char *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  sel_getName(a1);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5_2(&dword_24510B000, v1, v2, "%s: Did not recieve a context, failing!", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)setKeyChainSyncCompatibilityState:(void *)a1 withAltDSID:.cold.4(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  [a1 _allowFollowUps];
  [a1 _allowUtilityAccess];
  OUTLINED_FUNCTION_0_3();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xEu);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_updateSOSCompatibilityMode:context:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)authenticateAndGenerateNewRecoveryKeyWithContext:uiProvider:completion:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)authenticateAndGenerateNewRecoveryKeyWithContext:uiProvider:completion:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)authenticateAndDeleteRecoveryKeyWithContext:uiProvider:completion:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)authenticateAndDeleteRecoveryKeyWithContext:uiProvider:completion:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __72__CDPDClientHandler_deleteRecoveryKeyWithContext_uiProvider_completion___block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __72__CDPDClientHandler_deleteRecoveryKeyWithContext_uiProvider_completion___block_invoke_2_cold_2(id *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [*a1 _allowFollowUps];
  OUTLINED_FUNCTION_0_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)shouldPerformSilentEscrowRecordRepairWithContext:usingCache:completion:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)startSilentEscrowRecordRepairWithContext:completion:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)escrowCheckForContext:isBackground:completion:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)updateLastSilentEscrowRecordRepairAttemptDate:context:completion:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)updateLastSilentEscrowRecordRepairAttemptDate:context:completion:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  v4 = 2112;
  v5 = v0;
  _os_log_error_impl(&dword_24510B000, v1, OS_LOG_TYPE_ERROR, "Failed to update last silent escrow record repair attempt date (%@) with error: %@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)sendEvent:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)sendEvent:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end