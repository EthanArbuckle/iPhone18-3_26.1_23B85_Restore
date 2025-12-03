@interface CDPDEscrowRecordController
- (BOOL)_clearLastEscrowRepairAttemptDate:(id *)date;
- (BOOL)_hasLocalSecret;
- (BOOL)_isEligibleForEscrowRecordOperationsWithError:(id *)error;
- (BOOL)_isEscrowRecordRepairPermitted;
- (BOOL)_setLastEscrowRepairAttemptDate:(id)date error:(id *)error;
- (BOOL)_shouldPerformSilentRepairForEscrowRecordState:(unint64_t)state;
- (BOOL)synchronizeCircleViewsForSecureBackupContext:(id)context;
- (BOOL)updateLastSilentEscrowRecordRepairAttemptDate:(id)date error:(id *)error;
- (CDPDEscrowRecordController)initWithContext:(id)context;
- (CDPDEscrowRecordController)initWithContext:(id)context circleProxy:(id)proxy octagonTrustProxy:(id)trustProxy secureBackupProxy:(id)backupProxy;
- (id)_cdpStateMachineWithNilUIProvider;
- (id)_firstUsableRecordForCurrentPeerWithSerialNumber:(id)number fromRecords:(id)records;
- (id)_lastEscrowRepairAttemptDate:(id *)date;
- (id)_lastEscrowRepairAttemptDateDescriptor;
- (id)circlePeerIDForSecureBackupController:(id)controller;
- (unint64_t)_combinedCircleStatusUsingCache:(BOOL)cache error:(id *)error;
- (void)_beginSilentEscrowRecordRepairWithState:(unint64_t)state completion:(id)completion;
- (void)_checkAllRecordsForCurrentDeviceUsingCache:(BOOL)cache completion:(id)completion;
- (void)_checkFirstUsableRecordForDeviceFromSource:(int64_t)source completion:(id)completion;
- (void)_continueSilentEscrowRecordRepairWithState:(unint64_t)state completion:(id)completion;
- (void)_determineEligibilityForSilentRepairWithCompletion:(id)completion;
- (void)_deviceEscrowRecordStateUsingAccountsHealthCheckCache:(id)cache;
- (void)_fetchAllEscrowRecordsFromSource:(int64_t)source completion:(id)completion;
- (void)_isEscrowRecordRepairPermitted;
- (void)_performSilentEscrowRecordRepairWithCompletion:(id)completion;
- (void)_reauthenticateAndPerformEscrowCheckWithIsBackground:(BOOL)background completion:(id)completion;
- (void)_tlkRecoveryViewsForRecord:(id)record usingCache:(BOOL)cache completion:(id)completion;
- (void)circleController:(id)controller secureBackupRecordsArePresentWithCompletion:(id)completion;
- (void)generateEscrowRecordStatusReportForLocalDeviceUsingFetchSource:(int64_t)source withCompletion:(id)completion;
- (void)performSilentEscrowRecordRepairWithCompletion:(id)completion;
- (void)promptForAdoptionOfMultipleICSCWithCompletion:(id)completion;
- (void)promptForLocalSecretWithCompletion:(id)completion;
@end

@implementation CDPDEscrowRecordController

- (CDPDEscrowRecordController)initWithContext:(id)context circleProxy:(id)proxy octagonTrustProxy:(id)trustProxy secureBackupProxy:(id)backupProxy
{
  contextCopy = context;
  proxyCopy = proxy;
  trustProxyCopy = trustProxy;
  backupProxyCopy = backupProxy;
  dsid = [contextCopy dsid];
  if (dsid && (v15 = dsid, [contextCopy altDSID], v16 = objc_claimAutoreleasedReturnValue(), v16, v15, v16))
  {
    v30.receiver = self;
    v30.super_class = CDPDEscrowRecordController;
    v17 = [(CDPDEscrowRecordController *)&v30 init];
    v18 = v17;
    v19 = proxyCopy;
    if (v17)
    {
      objc_storeStrong(&v17->_context, context);
      objc_storeStrong(&v18->_circleProxy, proxy);
      objc_storeStrong(&v18->_octagonTrustProxy, trustProxy);
      objc_storeStrong(&v18->_secureBackupProxy, backupProxy);
      v20 = objc_alloc_init(MEMORY[0x277CE4530]);
      keychainManager = v18->_keychainManager;
      v18->_keychainManager = v20;

      v22 = [[CDPDCircleController alloc] initWithUiProvider:0 delegate:v18 circleProxy:proxyCopy octagonTrustProxy:trustProxyCopy];
      circleController = v18->_circleController;
      v18->_circleController = v22;

      v24 = [[CDPDSecureBackupController alloc] initWithContext:contextCopy secureBackupProxy:backupProxyCopy octagonTrustProxy:trustProxyCopy];
      secureBackupController = v18->_secureBackupController;
      v18->_secureBackupController = v24;

      [(CDPDSecureBackupController *)v18->_secureBackupController setDelegate:v18];
    }

    self = v18;
    selfCopy = self;
  }

  else
  {
    v27 = _CDPLogSystem();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
    {
      [CDPDEscrowRecordController initWithContext:circleProxy:octagonTrustProxy:secureBackupProxy:];
    }

    selfCopy = 0;
    v19 = proxyCopy;
  }

  return selfCopy;
}

- (CDPDEscrowRecordController)initWithContext:(id)context
{
  v4 = MEMORY[0x277CFD498];
  contextCopy = context;
  v6 = [[v4 alloc] initWithContext:contextCopy];
  v7 = [[CDPDOctagonTrustProxyImpl alloc] initWithContext:contextCopy];
  v8 = [[CDPDSecureBackupProxyImpl alloc] initWithContext:contextCopy];
  v9 = [(CDPDEscrowRecordController *)self initWithContext:contextCopy circleProxy:v6 octagonTrustProxy:v7 secureBackupProxy:v8];

  return v9;
}

uint64_t __89__CDPDEscrowRecordController_shouldPerformSilentEscrowRecordRepairUsingCache_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a3, a4);
  }

  return result;
}

void __69__CDPDEscrowRecordController_escrowCheckWithIsBackground_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  if ([v6 isAuthenticationError])
  {
    [*(a1 + 32) _reauthenticateAndPerformEscrowCheckWithIsBackground:*(a1 + 48) completion:*(a1 + 40)];
  }

  else
  {
    v5 = *(a1 + 40);
    if (v5)
    {
      (*(v5 + 16))(v5, a2, v6);
    }
  }
}

- (void)_reauthenticateAndPerformEscrowCheckWithIsBackground:(BOOL)background completion:(id)completion
{
  completionCopy = completion;
  v7 = _CDPLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [CDPDEscrowRecordController _reauthenticateAndPerformEscrowCheckWithIsBackground:completion:];
  }

  context = self->_context;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __94__CDPDEscrowRecordController__reauthenticateAndPerformEscrowCheckWithIsBackground_completion___block_invoke;
  v10[3] = &unk_278E24B38;
  backgroundCopy = background;
  v10[4] = self;
  v11 = completionCopy;
  v9 = completionCopy;
  [(CDPContext *)context reauthenticateUserWithCompletion:v10];
}

- (void)performSilentEscrowRecordRepairWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = os_transaction_create();
  v6 = +[CDPDLockAssertion lock];
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  context = [(CDPDEscrowRecordController *)self context];
  [context setTelemetryFlowID:uUIDString];

  context2 = [(CDPDEscrowRecordController *)self context];
  [context2 populateWalrusStatus];

  v11 = MEMORY[0x277CE44D8];
  context3 = [(CDPDEscrowRecordController *)self context];
  v13 = [v11 analyticsEventWithContext:context3 eventName:*MEMORY[0x277CFD890] category:*MEMORY[0x277CFD930]];

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __76__CDPDEscrowRecordController_performSilentEscrowRecordRepairWithCompletion___block_invoke;
  v18[3] = &unk_278E24FD8;
  v19 = v6;
  v20 = v13;
  v21 = v5;
  v22 = completionCopy;
  v14 = v5;
  v15 = completionCopy;
  v16 = v13;
  v17 = v6;
  [(CDPDEscrowRecordController *)self _performSilentEscrowRecordRepairWithCompletion:v18];
}

void __76__CDPDEscrowRecordController_performSilentEscrowRecordRepairWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = a3;
  [*(a1 + 32) unlock];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:a2];
  [*(a1 + 40) setObject:v5 forKeyedSubscript:*MEMORY[0x277CFD6C0]];

  [*(a1 + 40) populateUnderlyingErrorsStartingWithRootError:v8];
  v6 = [MEMORY[0x277CFD490] rtcAnalyticsReporter];
  [v6 sendEvent:*(a1 + 40)];

  v7 = *(a1 + 56);
  if (v7)
  {
    (*(v7 + 16))(v7, a2, v8);
  }
}

- (BOOL)updateLastSilentEscrowRecordRepairAttemptDate:(id)date error:(id *)error
{
  v17 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  isInternalBuild = [MEMORY[0x277CE4560] isInternalBuild];
  v8 = _CDPLogSystem();
  v9 = v8;
  if (isInternalBuild)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412546;
      selfCopy = self;
      v15 = 2112;
      v16 = dateCopy;
      _os_log_impl(&dword_24510B000, v9, OS_LOG_TYPE_DEFAULT, "%@: Attempting to update the last silent escrow record repair attempt date (%@)", &v13, 0x16u);
    }

    v10 = [(CDPDEscrowRecordController *)self _setLastEscrowRepairAttemptDate:dateCopy error:error];
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [CDPDEscrowRecordController updateLastSilentEscrowRecordRepairAttemptDate:error:];
    }

    if (error)
    {
      [MEMORY[0x277CCA9B8] cdp_errorWithCode:-5004];
      *error = v10 = 0;
    }

    else
    {
      v10 = 0;
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t __90__CDPDEscrowRecordController__shouldPerformSilentEscrowRecordRepairUsingCache_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = *(a1 + 32);
  if (v4)
  {
    if (!v5)
    {
      goto LABEL_7;
    }

    v6 = *(v5 + 16);
  }

  else
  {
    if (!v5)
    {
      goto LABEL_7;
    }

    v6 = *(v5 + 16);
  }

  v6();
LABEL_7:

  return MEMORY[0x2821F97C8]();
}

uint64_t __90__CDPDEscrowRecordController__shouldPerformSilentEscrowRecordRepairUsingCache_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = a3;
  v5 = [*(a1 + 32) _shouldPerformSilentRepairForEscrowRecordState:a2];
  if (a2 == 4 && [v8 code] == -5403)
  {
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, a2, v5);
  }

  return MEMORY[0x2821F97C8]();
}

- (BOOL)_shouldPerformSilentRepairForEscrowRecordState:(unint64_t)state
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = _CDPLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    selfCopy7 = self;
    v13 = 2048;
    stateCopy = state;
    _os_log_impl(&dword_24510B000, v5, OS_LOG_TYPE_DEFAULT, "%@: Determining if silent repair should be performed for state (%lu)", &v11, 0x16u);
  }

  if (![(CDPDEscrowRecordController *)self _isEscrowRecordRepairPermitted])
  {
    v6 = _CDPLogSystem();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
LABEL_13:
      LOBYTE(v5) = 0;
LABEL_14:

      goto LABEL_15;
    }

    v11 = 138412290;
    selfCopy7 = self;
    v8 = "%@: Silent repair should not be performed due to rate limiting";
LABEL_12:
    _os_log_impl(&dword_24510B000, v6, OS_LOG_TYPE_DEFAULT, v8, &v11, 0xCu);
    goto LABEL_13;
  }

  if (state <= 1)
  {
    if (state)
    {
      if (state != 1)
      {
        goto LABEL_15;
      }

      v6 = _CDPLogSystem();
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_13;
      }

      v11 = 138412290;
      selfCopy7 = self;
      v8 = "%@: Silent repair should not be performed for viable state";
    }

    else
    {
      v6 = _CDPLogSystem();
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_13;
      }

      v11 = 138412290;
      selfCopy7 = self;
      v8 = "%@: Silent repair should not be performed for unknown state";
    }

    goto LABEL_12;
  }

  switch(state)
  {
    case 2uLL:
      v6 = _CDPLogSystem();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138412290;
        selfCopy7 = self;
        v7 = "%@: Silent repair should be performed for not found state";
        goto LABEL_22;
      }

LABEL_23:
      LOBYTE(v5) = 1;
      goto LABEL_14;
    case 3uLL:
      LODWORD(v5) = [MEMORY[0x277CFD560] isSilentEscrowRecordViabilityRepairEnabled];
      v6 = _CDPLogSystem();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138412546;
        selfCopy7 = self;
        v13 = 1024;
        LODWORD(stateCopy) = v5;
        _os_log_impl(&dword_24510B000, v6, OS_LOG_TYPE_DEFAULT, "%@: Silent repair can be perfomed for non viable state (%{BOOL}d)", &v11, 0x12u);
      }

      goto LABEL_14;
    case 4uLL:
      v6 = _CDPLogSystem();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138412290;
        selfCopy7 = self;
        v7 = "%@: Silent burn recovery can be perfomed for missing circle state";
LABEL_22:
        _os_log_impl(&dword_24510B000, v6, OS_LOG_TYPE_DEFAULT, v7, &v11, 0xCu);
        goto LABEL_23;
      }

      goto LABEL_23;
  }

LABEL_15:
  v9 = *MEMORY[0x277D85DE8];
  return v5 & 1;
}

- (void)_performSilentEscrowRecordRepairWithCompletion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __77__CDPDEscrowRecordController__performSilentEscrowRecordRepairWithCompletion___block_invoke;
  aBlock[3] = &unk_278E25028;
  v11 = completionCopy;
  v5 = completionCopy;
  v6 = _Block_copy(aBlock);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __77__CDPDEscrowRecordController__performSilentEscrowRecordRepairWithCompletion___block_invoke_2;
  v8[3] = &unk_278E25078;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  [(CDPDEscrowRecordController *)self _determineEligibilityForSilentRepairWithCompletion:v8];
}

uint64_t __77__CDPDEscrowRecordController__performSilentEscrowRecordRepairWithCompletion___block_invoke(uint64_t a1, uint64_t a2, int a3, unsigned int a4, uint64_t a5)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a3 & a4, a5);
  }

  return result;
}

void __77__CDPDEscrowRecordController__performSilentEscrowRecordRepairWithCompletion___block_invoke_2(uint64_t a1, uint64_t a2, int a3)
{
  v19 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v5 = _CDPLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      *buf = 138412546;
      v16 = v6;
      v17 = 2048;
      v18 = a2;
      _os_log_impl(&dword_24510B000, v5, OS_LOG_TYPE_DEFAULT, "%@: Proceeding with silent escrow record repair for state (%lu)", buf, 0x16u);
    }

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __77__CDPDEscrowRecordController__performSilentEscrowRecordRepairWithCompletion___block_invoke_52;
    v12[3] = &unk_278E25050;
    v7 = *(a1 + 32);
    v13 = *(a1 + 40);
    v14 = a2;
    [v7 _beginSilentEscrowRecordRepairWithState:a2 completion:v12];

    v8 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v9 = *(a1 + 40);
    v10 = *(*(a1 + 40) + 16);
    v11 = *MEMORY[0x277D85DE8];

    v10();
  }
}

- (void)generateEscrowRecordStatusReportForLocalDeviceUsingFetchSource:(int64_t)source withCompletion:(id)completion
{
  completionCopy = completion;
  v11 = 0;
  v7 = [(CDPDEscrowRecordController *)self _isEligibleForEscrowRecordOperationsWithError:&v11];
  v8 = v11;
  if (v7)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __108__CDPDEscrowRecordController_generateEscrowRecordStatusReportForLocalDeviceUsingFetchSource_withCompletion___block_invoke;
    v9[3] = &unk_278E250A0;
    v9[4] = self;
    v10 = completionCopy;
    [(CDPDEscrowRecordController *)self _fetchAllEscrowRecordsFromSource:source completion:v9];
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0, v8);
  }
}

void __108__CDPDEscrowRecordController_generateEscrowRecordStatusReportForLocalDeviceUsingFetchSource_withCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v46 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _CDPLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __108__CDPDEscrowRecordController_generateEscrowRecordStatusReportForLocalDeviceUsingFetchSource_withCompletion___block_invoke_cold_1();
    }

    v8 = *(a1 + 40);
    if (v8)
    {
      (*(v8 + 16))(v8, 0, v6);
    }
  }

  else
  {
    v9 = [MEMORY[0x277CFD560] shouldValidatePasscodeGenerations];
    v10 = objc_alloc(MEMORY[0x277CFD4C8]);
    v11 = v10;
    if (v9)
    {
      v12 = [MEMORY[0x277CFD4F8] sharedInstance];
      v13 = [v11 initWithRecords:v5 localDevice:v12];

      v14 = *(a1 + 40);
      if (v14)
      {
        (*(v14 + 16))(v14, v13, 0);
      }
    }

    else
    {
      v15 = [v10 initWithDefaultValues];
      v16 = [MEMORY[0x277CFD4F8] sharedInstance];
      v17 = [v16 serialNumber];

      v18 = [*(a1 + 32) _firstUsableRecordForCurrentPeerWithSerialNumber:v17 fromRecords:v5];
      v19 = v18;
      if (v18)
      {
        v20 = [v18 escrowInformationMetadata];
        v21 = [v20 clientMetadata];
        v22 = [v21 deviceName];

        v23 = [v19 serialNumber];
        v24 = _CDPLogSystem();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v35 = v15;
          v25 = v17;
          v26 = v23;
          v27 = v22;
          v28 = *(a1 + 32);
          v29 = [v19 recordId];
          *buf = 138544387;
          v37 = v28;
          v22 = v27;
          v23 = v26;
          v17 = v25;
          v15 = v35;
          v38 = 2160;
          v39 = 1752392040;
          v40 = 2112;
          v41 = v29;
          v42 = 2112;
          v43 = v22;
          v44 = 2117;
          v45 = v23;
          _os_log_impl(&dword_24510B000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@: Processing device escrow record with id: %{mask.hash}@ (name: '%@', serial: %{sensitive}@)", buf, 0x34u);
        }

        v30 = [v15 updatedReportWithRecord:v19];

        v31 = *(a1 + 40);
        if (v31)
        {
          (*(v31 + 16))(v31, v30, 0);
        }
      }

      else
      {
        v32 = _CDPLogSystem();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          __108__CDPDEscrowRecordController_generateEscrowRecordStatusReportForLocalDeviceUsingFetchSource_withCompletion___block_invoke_cold_2((a1 + 32));
        }

        v33 = *(a1 + 40);
        if (v33)
        {
          (*(v33 + 16))(v33, v15, 0);
        }

        v30 = v15;
      }
    }
  }

  v34 = *MEMORY[0x277D85DE8];
}

- (id)_firstUsableRecordForCurrentPeerWithSerialNumber:(id)number fromRecords:(id)records
{
  v51 = *MEMORY[0x277D85DE8];
  numberCopy = number;
  recordsCopy = records;
  v7 = _CDPLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [CDPDEscrowRecordController _firstUsableRecordForCurrentPeerWithSerialNumber:v7 fromRecords:?];
  }

  if (![recordsCopy count] || !objc_msgSend(numberCopy, "length"))
  {
    v9 = _CDPLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [CDPDEscrowRecordController _firstUsableRecordForCurrentPeerWithSerialNumber:recordsCopy fromRecords:?];
    }

    goto LABEL_40;
  }

  v8 = _CDPLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [CDPDEscrowRecordController _firstUsableRecordForCurrentPeerWithSerialNumber:fromRecords:];
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v9 = recordsCopy;
  v10 = [v9 countByEnumeratingWithState:&v38 objects:v50 count:16];
  if (!v10)
  {
LABEL_40:
    v28 = 0;
    goto LABEL_45;
  }

  v11 = v10;
  v32 = recordsCopy;
  v12 = *v39;
LABEL_9:
  v13 = 0;
  while (1)
  {
    if (*v39 != v12)
    {
      objc_enumerationMutation(v9);
    }

    v14 = *(*(&v38 + 1) + 8 * v13);
    serialNumber = [v14 serialNumber];
    v16 = [serialNumber isEqualToString:numberCopy];

    v17 = _CDPLogSystem();
    v18 = v17;
    if ((v16 & 1) == 0)
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        serialNumber2 = [v14 serialNumber];
        *buf = 138543875;
        selfCopy4 = self;
        v46 = 2117;
        v47 = serialNumber2;
        v48 = 2117;
        v49 = numberCopy;
        _os_log_error_impl(&dword_24510B000, v18, OS_LOG_TYPE_ERROR, "%{public}@: Skipping record with serial number (%{sensitive}@). This device has a serial number of (%{sensitive}@)", buf, 0x20u);
      }

      goto LABEL_32;
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      [(CDPDEscrowRecordController *)v42 _firstUsableRecordForCurrentPeerWithSerialNumber:v18 fromRecords:?];
    }

    label = [v14 label];
    v20 = [label hasPrefix:@"com.apple.icdp.record"];

    v21 = _CDPLogSystem();
    v18 = v21;
    if (v20)
    {
      break;
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      label2 = [v14 label];
      *buf = 138543874;
      selfCopy4 = self;
      v46 = 2160;
      v47 = 1752392040;
      v48 = 2112;
      v49 = label2;
      v23 = v18;
      v24 = "%{public}@: Skipping record with incorrect label %{mask.hash}@";
      goto LABEL_35;
    }

LABEL_32:

    if (v11 == ++v13)
    {
      v27 = [v9 countByEnumeratingWithState:&v38 objects:v50 count:16];
      v11 = v27;
      if (!v27)
      {
        v28 = 0;
        goto LABEL_44;
      }

      goto LABEL_9;
    }
  }

  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    [(CDPDEscrowRecordController *)&v36 _firstUsableRecordForCurrentPeerWithSerialNumber:v37 fromRecords:v18];
  }

  if ([v14 hasRecordStatus] && objc_msgSend(v14, "recordStatus") == 1)
  {
    v18 = _CDPLogSystem();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      label2 = [v14 recordId];
      *buf = 138543874;
      selfCopy4 = self;
      v46 = 2160;
      v47 = 1752392040;
      v48 = 2112;
      v49 = label2;
      v23 = v18;
      v24 = "%{public}@: Record %{mask.hash}@ has invalid status.";
LABEL_35:
      _os_log_error_impl(&dword_24510B000, v23, OS_LOG_TYPE_ERROR, v24, buf, 0x20u);

      goto LABEL_32;
    }

    goto LABEL_32;
  }

  v26 = _CDPLogSystem();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    [(CDPDEscrowRecordController *)&v34 _firstUsableRecordForCurrentPeerWithSerialNumber:v35 fromRecords:v26];
  }

  if (![v14 hasRecordViability] || objc_msgSend(v14, "recordViability") != 1 && objc_msgSend(v14, "recordViability"))
  {
    v18 = _CDPLogSystem();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      label2 = [v14 recordId];
      *buf = 138543874;
      selfCopy4 = self;
      v46 = 2160;
      v47 = 1752392040;
      v48 = 2112;
      v49 = label2;
      v23 = v18;
      v24 = "%{public}@: Record %{mask.hash}@ is not partially or fully viable. Skipping update.";
      goto LABEL_35;
    }

    goto LABEL_32;
  }

  v29 = _CDPLogSystem();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
  {
    [CDPDEscrowRecordController _firstUsableRecordForCurrentPeerWithSerialNumber:v14 fromRecords:?];
  }

  v28 = v14;
LABEL_44:
  recordsCopy = v32;
LABEL_45:

  v30 = *MEMORY[0x277D85DE8];

  return v28;
}

- (void)_determineEligibilityForSilentRepairWithCompletion:(id)completion
{
  v17 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  context = [(CDPDEscrowRecordController *)self context];
  isLocalSecretCached = [context isLocalSecretCached];

  if (isLocalSecretCached)
  {
    if ([(CDPDEscrowRecordController *)self _isEscrowRecordRepairPermitted])
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __81__CDPDEscrowRecordController__determineEligibilityForSilentRepairWithCompletion___block_invoke;
      v13[3] = &unk_278E25078;
      v13[4] = self;
      v14 = completionCopy;
      [(CDPDEscrowRecordController *)self _shouldPerformSilentEscrowRecordRepairUsingCache:1 completion:v13];

      goto LABEL_13;
    }

    v10 = _CDPLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy2 = self;
      _os_log_impl(&dword_24510B000, v10, OS_LOG_TYPE_DEFAULT, "%@: Cannot silently repair escrow record due to rate limiting", buf, 0xCu);
    }

    if (completionCopy)
    {
      v8 = MEMORY[0x277CCA9B8];
      v9 = -5203;
      goto LABEL_12;
    }
  }

  else
  {
    v7 = _CDPLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy2 = self;
      _os_log_impl(&dword_24510B000, v7, OS_LOG_TYPE_DEFAULT, "%@: Cannot silently repair escrow record without cached local secret", buf, 0xCu);
    }

    if (completionCopy)
    {
      v8 = MEMORY[0x277CCA9B8];
      v9 = -5003;
LABEL_12:
      v11 = [v8 cdp_errorWithCode:v9];
      (*(completionCopy + 2))(completionCopy, 0, 0, v11);
    }
  }

LABEL_13:

  v12 = *MEMORY[0x277D85DE8];
}

void __81__CDPDEscrowRecordController__determineEligibilityForSilentRepairWithCompletion___block_invoke(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = v7;
  if ((a3 & 1) != 0 || [v7 code] == 51 && (objc_msgSend(v8, "domain"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "isEqualToString:", @"com.apple.security.trustedpeers.container"), v11, v12))
  {
    v9 = _CDPLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      v15 = 138412290;
      v16 = v10;
      _os_log_impl(&dword_24510B000, v9, OS_LOG_TYPE_DEFAULT, "%@: Double checking if silent escrow record repair should be performed (using network)", &v15, 0xCu);
    }

    [*(a1 + 32) _shouldPerformSilentEscrowRecordRepairUsingCache:0 completion:*(a1 + 40)];
  }

  else
  {
    v13 = *(a1 + 40);
    if (v13)
    {
      (*(v13 + 16))(v13, a2, 0, v8);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isEscrowRecordRepairPermitted
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0;
  v3 = [(CDPDEscrowRecordController *)self _lastEscrowRepairAttemptDate:&v15];
  v4 = v15;
  if (v4)
  {
    v5 = _CDPLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [CDPDEscrowRecordController _isEscrowRecordRepairPermitted];
    }

    v6 = 0;
    goto LABEL_18;
  }

  v5 = _CDPLogSystem();
  v7 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v7)
    {
      *buf = 138412546;
      selfCopy4 = self;
      v18 = 2112;
      v19 = v3;
      _os_log_impl(&dword_24510B000, v5, OS_LOG_TYPE_DEFAULT, "%@: Fetched last escrow repair attempt date (%@)", buf, 0x16u);
    }

    v5 = [v3 dateByAddingTimeInterval:15552000.0];
    [v5 timeIntervalSinceNow];
    v9 = v8;
    v10 = _CDPLogSystem();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    v6 = v9 <= 0.0;
    if (v9 > 0.0)
    {
      if (v11)
      {
        *buf = 138412290;
        selfCopy4 = self;
        v12 = "%@: Escrow record repair will not be allowed at this time";
        goto LABEL_16;
      }
    }

    else if (v11)
    {
      *buf = 138412290;
      selfCopy4 = self;
      v12 = "%@: Escrow record repair will be allowed at this time";
LABEL_16:
      _os_log_impl(&dword_24510B000, v10, OS_LOG_TYPE_DEFAULT, v12, buf, 0xCu);
    }

    goto LABEL_18;
  }

  if (v7)
  {
    *buf = 138412290;
    selfCopy4 = self;
    _os_log_impl(&dword_24510B000, v5, OS_LOG_TYPE_DEFAULT, "%@: Could not find an existing keychain value for last escrow repair attempt date, allowing repair to proceed", buf, 0xCu);
  }

  v6 = 1;
LABEL_18:

  v13 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)_isEligibleForEscrowRecordOperationsWithError:(id *)error
{
  v25 = *MEMORY[0x277D85DE8];
  context = [(CDPDEscrowRecordController *)self context];
  altDSID = [context altDSID];
  v7 = [(CDPDEscrowRecordController *)self _getAccountRepresentationForAltDSID:altDSID];

  if (!v7)
  {
    v11 = _CDPLogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      context2 = [(CDPDEscrowRecordController *)self context];
      altDSID2 = [context2 altDSID];
      v19 = 138412802;
      selfCopy3 = self;
      v21 = 2160;
      v22 = 1752392040;
      v23 = 2112;
      v24 = altDSID2;
      _os_log_impl(&dword_24510B000, v11, OS_LOG_TYPE_DEFAULT, "%@: Cannot determine escrow record for unknown account with altDSID (%{mask.hash}@)", &v19, 0x20u);
    }

    if (!error)
    {
      goto LABEL_18;
    }

    v14 = -5108;
    goto LABEL_17;
  }

  if (![(CDPDEscrowRecordController *)self _hasLocalSecret])
  {
    v15 = _CDPLogSystem();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138412290;
      selfCopy3 = self;
      _os_log_impl(&dword_24510B000, v15, OS_LOG_TYPE_DEFAULT, "%@: Will not determine escrow record state for device without local secret (not eligible)", &v19, 0xCu);
    }

    if (!error)
    {
      goto LABEL_18;
    }

    v14 = -5500;
LABEL_17:
    [MEMORY[0x277CCA9B8] cdp_errorWithCode:v14];
    *error = v10 = 0;
    goto LABEL_19;
  }

  circleController = [(CDPDEscrowRecordController *)self circleController];
  circleStatus = [circleController circleStatus];

  if (circleStatus != 1)
  {
    v16 = _CDPLogSystem();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138412546;
      selfCopy3 = self;
      v21 = 2048;
      v22 = circleStatus;
      _os_log_impl(&dword_24510B000, v16, OS_LOG_TYPE_DEFAULT, "%@: Cannot determine escrow record state for device not in circle (%lu)", &v19, 0x16u);
    }

    if (error)
    {
      v14 = -5403;
      goto LABEL_17;
    }

LABEL_18:
    v10 = 0;
    goto LABEL_19;
  }

  v10 = 1;
LABEL_19:

  v17 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)_deviceEscrowRecordStateUsingAccountsHealthCheckCache:(id)cache
{
  v29 = *MEMORY[0x277D85DE8];
  cacheCopy = cache;
  context = [(CDPDEscrowRecordController *)self context];
  altDSID = [context altDSID];
  v7 = [(CDPDEscrowRecordController *)self _getAppleAccountForAltDSID:altDSID];

  if (v7)
  {
    v8 = [(CDPDEscrowRecordController *)self _escrowRecordHealthCheckFailureCountForAccount:v7];

    if (v8)
    {
      objc_opt_class();
      v9 = [(CDPDEscrowRecordController *)self _escrowRecordHealthCheckFailureCountForAccount:v7];
      if (objc_opt_isKindOfClass())
      {
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }

      intValue = [v10 intValue];
      v18 = _CDPLogSystem();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = "unknown";
        if (intValue > 0)
        {
          v19 = "non-viable or not found";
        }

        v23 = 138412546;
        selfCopy2 = self;
        v25 = 2080;
        v26 = v19;
        _os_log_impl(&dword_24510B000, v18, OS_LOG_TYPE_DEFAULT, "%@: Used precomputed escrowRecordHealthCheckFailureCount bit and determined escrow record state is %s.", &v23, 0x16u);
      }

      if (intValue < 1)
      {
        v21 = _CDPLogSystem();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          [CDPDEscrowRecordController _deviceEscrowRecordStateUsingAccountsHealthCheckCache:];
        }

        if (cacheCopy)
        {
          v22 = [MEMORY[0x277CCA9B8] cdp_errorWithCode:-5324];
          cacheCopy[2](cacheCopy, 0, v22);
        }
      }

      else if (cacheCopy)
      {
        cacheCopy[2](cacheCopy, 2, 0);
      }

      goto LABEL_22;
    }

    v16 = _CDPLogSystem();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      [CDPDEscrowRecordController _deviceEscrowRecordStateUsingAccountsHealthCheckCache:];
    }

    if (cacheCopy)
    {
      v14 = MEMORY[0x277CCA9B8];
      v15 = -5323;
      goto LABEL_13;
    }
  }

  else
  {
    v11 = _CDPLogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      context2 = [(CDPDEscrowRecordController *)self context];
      altDSID2 = [context2 altDSID];
      v23 = 138412802;
      selfCopy2 = self;
      v25 = 2160;
      v26 = 1752392040;
      v27 = 2112;
      v28 = altDSID2;
      _os_log_impl(&dword_24510B000, v11, OS_LOG_TYPE_DEFAULT, "%@: Cannot determine escrow record for unknown account with altDSID (%{mask.hash}@)", &v23, 0x20u);
    }

    if (cacheCopy)
    {
      v14 = MEMORY[0x277CCA9B8];
      v15 = -5108;
LABEL_13:
      v10 = [v14 cdp_errorWithCode:v15];
      cacheCopy[2](cacheCopy, 0, v10);
LABEL_22:
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __76__CDPDEscrowRecordController__deviceEscrowRecordStateUsingCache_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = _CDPLogSystem();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __76__CDPDEscrowRecordController__deviceEscrowRecordStateUsingCache_completion___block_invoke_cold_1(a1);
    }

    v9 = *(a1 + 40);
    if (v9)
    {
      (*(v9 + 16))(v9, 0, v6);
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      v19 = [v5 deviceViability];
      v11 = [v19 recordId];
      v12 = [v5 deviceViability];
      v13 = [v12 localViability];
      v14 = [v5 deviceViability];
      [v14 localViability];
      v15 = CDPEscrowRecordStateString();
      *buf = 138413314;
      v21 = v10;
      v22 = 2160;
      v23 = 1752392040;
      v24 = 2112;
      v25 = v11;
      v26 = 1024;
      v27 = v13;
      v28 = 2114;
      v29 = v15;
      _os_log_impl(&dword_24510B000, v8, OS_LOG_TYPE_DEFAULT, "%@: Report indicates that the current device's most viable record is: (%{mask.hash}@ with state: %d (%{public}@)", buf, 0x30u);
    }

    v16 = *(a1 + 40);
    if (v16)
    {
      v17 = [v5 deviceViability];
      (*(v16 + 16))(v16, [v17 localViability], 0);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __76__CDPDEscrowRecordController__deviceEscrowRecordStateUsingCache_completion___block_invoke_62(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _CDPLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __76__CDPDEscrowRecordController__deviceEscrowRecordStateUsingCache_completion___block_invoke_62_cold_1(a1);
    }

    v8 = *(a1 + 40);
    if (v8)
    {
      v9 = *(v8 + 16);
LABEL_6:
      v9();
    }
  }

  else
  {
    v10 = _CDPLogSystem();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      if (v11)
      {
        v12 = *(a1 + 32);
        v13 = [v5 recordID];
        v17 = 138412546;
        v18 = v12;
        v19 = 2112;
        v20 = v13;
        _os_log_impl(&dword_24510B000, v10, OS_LOG_TYPE_DEFAULT, "%@: Determed that current device has an existing escrow record (%@)", &v17, 0x16u);
      }

      [*(a1 + 32) _escrowRecordStateForDevice:v5 usingCache:*(a1 + 48) completion:*(a1 + 40)];
    }

    else
    {
      if (v11)
      {
        v15 = *(a1 + 32);
        v17 = 138412290;
        v18 = v15;
        _os_log_impl(&dword_24510B000, v10, OS_LOG_TYPE_DEFAULT, "%@: Existing escrow record for current device could not be found", &v17, 0xCu);
      }

      v16 = *(a1 + 40);
      if (v16)
      {
        v9 = *(v16 + 16);
        goto LABEL_6;
      }
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_checkAllRecordsForCurrentDeviceUsingCache:(BOOL)cache completion:(id)completion
{
  cacheCopy = cache;
  completionCopy = completion;
  circleController = [(CDPDEscrowRecordController *)self circleController];
  peerID = [circleController peerID];

  if (peerID)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __84__CDPDEscrowRecordController__checkAllRecordsForCurrentDeviceUsingCache_completion___block_invoke;
    v11[3] = &unk_278E25118;
    v12 = completionCopy;
    [(CDPDEscrowRecordController *)self _checkFirstUsableRecordForDeviceFromSource:cacheCopy completion:v11];
    v9 = v12;
LABEL_7:

    goto LABEL_8;
  }

  v10 = _CDPLogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    [CDPDEscrowRecordController _deviceEscrowRecordStateUsingCache:completion:];
  }

  if (completionCopy)
  {
    v9 = [MEMORY[0x277CCA9B8] cdp_errorWithCode:-5309];
    (*(completionCopy + 2))(completionCopy, 0, v9);
    goto LABEL_7;
  }

LABEL_8:
}

void __84__CDPDEscrowRecordController__checkAllRecordsForCurrentDeviceUsingCache_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a3;
  v5 = MEMORY[0x277CFD4C0];
  v6 = a2;
  v7 = [[v5 alloc] initWithEscrowRecord:v6];

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, v7, v9);
  }
}

void __80__CDPDEscrowRecordController__escrowRecordStateForDevice_usingCache_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if ([v6 isRecordNotViableError])
  {
    v7 = _CDPLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = [*(a1 + 40) recordID];
      v22 = 138412802;
      v23 = v8;
      v24 = 2112;
      v25 = v9;
      v26 = 2112;
      v27 = v6;
      _os_log_impl(&dword_24510B000, v7, OS_LOG_TYPE_DEFAULT, "%@: Checking TLK recoverability for escrow record (%@) exposed its non viableness (%@)", &v22, 0x20u);
    }

LABEL_4:

    v10 = *(a1 + 48);
    if (v10)
    {
      v11 = *(v10 + 16);
LABEL_11:
      v11();
      goto LABEL_12;
    }

    goto LABEL_12;
  }

  if (!v6)
  {
    v15 = [*(a1 + 32) secureBackupController];
    v16 = [v15 isSimulateNonViableEscrowRecordEnabled];

    v7 = _CDPLogSystem();
    v17 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (!v16)
    {
      if (v17)
      {
        v19 = *(a1 + 32);
        v20 = [*(a1 + 40) recordID];
        v22 = 138412802;
        v23 = v19;
        v24 = 2112;
        v25 = v20;
        v26 = 2112;
        v27 = v5;
        _os_log_impl(&dword_24510B000, v7, OS_LOG_TYPE_DEFAULT, "%@: Checked TLK recoverability for escrow record (%@) and found views (%@)", &v22, 0x20u);
      }

      [v5 count];
      v21 = *(a1 + 48);
      if (v21)
      {
        v11 = *(v21 + 16);
        goto LABEL_11;
      }

      goto LABEL_12;
    }

    if (v17)
    {
      v18 = *(a1 + 32);
      v22 = 138412290;
      v23 = v18;
      _os_log_impl(&dword_24510B000, v7, OS_LOG_TYPE_DEFAULT, "%@: Simulating escrow record as non-viable record only for testing", &v22, 0xCu);
    }

    goto LABEL_4;
  }

  v12 = _CDPLogSystem();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    __80__CDPDEscrowRecordController__escrowRecordStateForDevice_usingCache_completion___block_invoke_cold_1(a1, v12);
  }

  v13 = *(a1 + 48);
  if (v13)
  {
    v11 = *(v13 + 16);
    goto LABEL_11;
  }

LABEL_12:

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_tlkRecoveryViewsForRecord:(id)record usingCache:(BOOL)cache completion:(id)completion
{
  cacheCopy = cache;
  v28 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  completionCopy = completion;
  v10 = _CDPLogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    recordId = [recordCopy recordId];
    *buf = 138544130;
    selfCopy = self;
    v22 = 2160;
    v23 = 1752392040;
    v24 = 2112;
    v25 = recordId;
    v26 = 1024;
    v27 = cacheCopy;
    _os_log_impl(&dword_24510B000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: Checking for recoverable TLK views in record (%{mask.hash}@) is missing TLK recoverability using cache (%{BOOL}d)", buf, 0x26u);
  }

  context = [(CDPDEscrowRecordController *)self context];
  v13 = [CDPDSecureBackupConfiguration configurationWithContext:context];

  accountInfoFetchSetupDictionary = [v13 accountInfoFetchSetupDictionary];
  octagonTrustProxy = [(CDPDEscrowRecordController *)self octagonTrustProxy];
  v19 = 0;
  v16 = [octagonTrustProxy tlkRecoverabilityForEscrow:accountInfoFetchSetupDictionary record:recordCopy source:cacheCopy error:&v19];
  v17 = v19;

  if (completionCopy)
  {
    completionCopy[2](completionCopy, v16, v17);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_beginSilentEscrowRecordRepairWithState:(unint64_t)state completion:(id)completion
{
  v20 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __81__CDPDEscrowRecordController__beginSilentEscrowRecordRepairWithState_completion___block_invoke;
  aBlock[3] = &unk_278E25168;
  v16 = completionCopy;
  stateCopy = state;
  aBlock[4] = self;
  v7 = completionCopy;
  v8 = _Block_copy(aBlock);
  context = [(CDPDEscrowRecordController *)self context];
  passwordEquivToken = [context passwordEquivToken];

  v11 = _CDPLogSystem();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (passwordEquivToken)
  {
    if (v12)
    {
      *buf = 138412290;
      selfCopy2 = self;
      _os_log_impl(&dword_24510B000, v11, OS_LOG_TYPE_DEFAULT, "%@: Context already has PET, auth is not necessary", buf, 0xCu);
    }

    v8[2](v8, 1, 0);
  }

  else
  {
    if (v12)
    {
      *buf = 138412290;
      selfCopy2 = self;
      _os_log_impl(&dword_24510B000, v11, OS_LOG_TYPE_DEFAULT, "%@: Context does not have a PET, attempting to perform silent auth", buf, 0xCu);
    }

    context2 = [(CDPDEscrowRecordController *)self context];
    [context2 reauthenticateUserWithCompletion:v8];
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __81__CDPDEscrowRecordController__beginSilentEscrowRecordRepairWithState_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _CDPLogSystem();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = [v8 context];
      v10 = [v9 passwordEquivToken];
      v14 = 138412802;
      v15 = v8;
      v16 = 2160;
      v17 = 1752392040;
      v18 = 2112;
      v19 = v10;
      _os_log_impl(&dword_24510B000, v7, OS_LOG_TYPE_DEFAULT, "%@: Context is authenticated and has PET (%{mask.hash}@}", &v14, 0x20u);
    }

    [*(a1 + 32) _continueSilentEscrowRecordRepairWithState:*(a1 + 48) completion:*(a1 + 40)];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __81__CDPDEscrowRecordController__beginSilentEscrowRecordRepairWithState_completion___block_invoke_cold_1(a1);
    }

    v11 = *(a1 + 40);
    if (v11)
    {
      v12 = [MEMORY[0x277CCA9B8] cdp_errorWithCode:-5109 underlyingError:v5];
      (*(v11 + 16))(v11, 0, v12);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_continueSilentEscrowRecordRepairWithState:(unint64_t)state completion:(id)completion
{
  v31 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  date = [MEMORY[0x277CBEAA8] date];
  v8 = _CDPLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy2 = self;
    v29 = 2112;
    v30 = date;
    _os_log_impl(&dword_24510B000, v8, OS_LOG_TYPE_DEFAULT, "%@: Attempting to set the current date (%@) as last escrow repair attempt date", buf, 0x16u);
  }

  v26 = 0;
  v9 = [(CDPDEscrowRecordController *)self _setLastEscrowRepairAttemptDate:date error:&v26];
  v10 = v26;
  v11 = _CDPLogSystem();
  v12 = v11;
  if (v9)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      selfCopy2 = self;
      v29 = 2112;
      v30 = date;
      _os_log_impl(&dword_24510B000, v12, OS_LOG_TYPE_DEFAULT, "%@: Successfully saved current date (%@) as last escrow repair attempt date, proceeding with silent repair attempt", buf, 0x16u);
    }

    if (state == 4)
    {
      _cdpStateMachineWithNilUIProvider = [(CDPDEscrowRecordController *)self _cdpStateMachineWithNilUIProvider];
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __84__CDPDEscrowRecordController__continueSilentEscrowRecordRepairWithState_completion___block_invoke;
      v24[3] = &unk_278E24AE8;
      v24[4] = self;
      v25 = completionCopy;
      [_cdpStateMachineWithNilUIProvider repairCloudDataProtectionStateWithCompletion:v24];
    }

    else
    {
      v14 = objc_alloc_init(CDPDSecureBackupContext);
      context = [(CDPDEscrowRecordController *)self context];
      -[CDPDSecureBackupContext setUsePreviouslyCachedSecret:](v14, "setUsePreviouslyCachedSecret:", [context _useSecureBackupCachedPassphrase]);

      context2 = [(CDPDEscrowRecordController *)self context];
      -[CDPDSecureBackupContext setSynchronous:](v14, "setSynchronous:", [context2 _disableAsyncSecureBackupEnrollment]);

      context3 = [(CDPDEscrowRecordController *)self context];
      cachedLocalSecret = [context3 cachedLocalSecret];
      [(CDPDSecureBackupContext *)v14 setLocalSecret:cachedLocalSecret];

      context4 = [(CDPDEscrowRecordController *)self context];
      -[CDPDSecureBackupContext setLocalSecretType:](v14, "setLocalSecretType:", [context4 cachedLocalSecretType]);

      [(CDPDSecureBackupContext *)v14 setNonViableRequiresRepair:state == 3];
      secureBackupController = [(CDPDEscrowRecordController *)self secureBackupController];
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __84__CDPDEscrowRecordController__continueSilentEscrowRecordRepairWithState_completion___block_invoke_69;
      v22[3] = &unk_278E24AE8;
      v22[4] = self;
      v23 = completionCopy;
      [secureBackupController enableSecureBackupWithContext:v14 completion:v22];
    }
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [CDPDEscrowRecordController _continueSilentEscrowRecordRepairWithState:completion:];
    }

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0, v10);
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __84__CDPDEscrowRecordController__continueSilentEscrowRecordRepairWithState_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
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
    _os_log_impl(&dword_24510B000, v6, OS_LOG_TYPE_DEFAULT, "%@: silent repair with state machine completed with result: %{BOOL}d error: %@", &v10, 0x1Cu);
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    (*(v8 + 16))(v8, a2, v5);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __84__CDPDEscrowRecordController__continueSilentEscrowRecordRepairWithState_completion___block_invoke_69(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [v5 domain];
  if ([v6 isEqual:*MEMORY[0x277CFB298]] && objc_msgSend(v5, "code") == -1002)
  {
  }

  else
  {
    v7 = [*(a1 + 32) secureBackupController];
    v8 = [v7 simulateEPThrottle];

    if (!v8)
    {
      goto LABEL_8;
    }
  }

  v9 = _CDPLogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    __84__CDPDEscrowRecordController__continueSilentEscrowRecordRepairWithState_completion___block_invoke_69_cold_1(a1);
  }

LABEL_8:
  v10 = *(a1 + 40);
  if (v10)
  {
    (*(v10 + 16))(v10, a2, v5);
  }
}

- (void)_checkFirstUsableRecordForDeviceFromSource:(int64_t)source completion:(id)completion
{
  completionCopy = completion;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __84__CDPDEscrowRecordController__checkFirstUsableRecordForDeviceFromSource_completion___block_invoke;
  v8[3] = &unk_278E25190;
  v8[4] = self;
  v9 = completionCopy;
  sourceCopy = source;
  v7 = completionCopy;
  [(CDPDEscrowRecordController *)self _fetchAllEscrowRecordsFromSource:source completion:v8];
}

void __84__CDPDEscrowRecordController__checkFirstUsableRecordForDeviceFromSource_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _CDPLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __84__CDPDEscrowRecordController__checkFirstUsableRecordForDeviceFromSource_completion___block_invoke_cold_1();
    }

    v8 = *(a1 + 40);
    if (v8)
    {
      (*(v8 + 16))(v8, 0, v6);
    }

    goto LABEL_15;
  }

  v9 = [MEMORY[0x277CFD4F8] sharedInstance];
  v10 = [v9 serialNumber];

  v11 = [*(a1 + 32) _firstUsableRecordForCurrentPeerWithSerialNumber:v10 fromRecords:v5];
  v12 = _CDPLogSystem();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (v11)
  {
    if (v13)
    {
      v14 = *(a1 + 32);
      v15 = *(a1 + 48);
      v23 = 138413059;
      v24 = v14;
      v25 = 2117;
      v26 = v10;
      v27 = 2050;
      v28 = v15;
      v29 = 2117;
      v30 = v11;
      v16 = "%@: First usable record matching the serial number (%{sensitive}@) with source (%{public}ld) is (%{sensitive}@)";
      v17 = v12;
      v18 = 42;
LABEL_11:
      _os_log_impl(&dword_24510B000, v17, OS_LOG_TYPE_DEFAULT, v16, &v23, v18);
    }
  }

  else if (v13)
  {
    v19 = *(a1 + 32);
    v20 = *(a1 + 48);
    v23 = 138412803;
    v24 = v19;
    v25 = 2117;
    v26 = v10;
    v27 = 2050;
    v28 = v20;
    v16 = "%@: Could not find a record matching serial number (%{sensitive}@) with source (%{public}ld).";
    v17 = v12;
    v18 = 32;
    goto LABEL_11;
  }

  v21 = *(a1 + 40);
  if (v21)
  {
    (*(v21 + 16))(v21, v11, 0);
  }

LABEL_15:
  v22 = *MEMORY[0x277D85DE8];
}

- (void)_fetchAllEscrowRecordsFromSource:(int64_t)source completion:(id)completion
{
  v23 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  secureBackupController = [(CDPDEscrowRecordController *)self secureBackupController];
  configuration = [secureBackupController configuration];
  accountInfoFetchSetupDictionary = [configuration accountInfoFetchSetupDictionary];

  v10 = _CDPLogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [CDPDSecureBackupController _sanitizedInfoDictionary:accountInfoFetchSetupDictionary];
    *buf = 138412802;
    selfCopy = self;
    v19 = 2048;
    sourceCopy = source;
    v21 = 2112;
    v22 = v11;
    _os_log_impl(&dword_24510B000, v10, OS_LOG_TYPE_DEFAULT, "%@: Fetching all escrow records from source (%ld) with account info (%@)", buf, 0x20u);
  }

  octagonTrustProxy = self->_octagonTrustProxy;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __74__CDPDEscrowRecordController__fetchAllEscrowRecordsFromSource_completion___block_invoke;
  v15[3] = &unk_278E251B8;
  v15[4] = self;
  v16 = completionCopy;
  v13 = completionCopy;
  [(CDPDOctagonTrustProxy *)octagonTrustProxy fetchAllEscrowRecords:accountInfoFetchSetupDictionary source:source completion:v15];

  v14 = *MEMORY[0x277D85DE8];
}

void __74__CDPDEscrowRecordController__fetchAllEscrowRecordsFromSource_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = _CDPLogSystem();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __74__CDPDEscrowRecordController__fetchAllEscrowRecordsFromSource_completion___block_invoke_cold_1(a1);
    }

    v9 = *(a1 + 40);
    if (v9)
    {
      v10 = *(v9 + 16);
LABEL_10:
      v10();
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      v14 = 138412546;
      v15 = v11;
      v16 = 2112;
      v17 = v5;
      _os_log_impl(&dword_24510B000, v8, OS_LOG_TYPE_DEFAULT, "%@: Successfully fetched all escrow records (%@)", &v14, 0x16u);
    }

    v12 = *(a1 + 40);
    if (v12)
    {
      v10 = *(v12 + 16);
      goto LABEL_10;
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (id)_lastEscrowRepairAttemptDateDescriptor
{
  v2 = objc_alloc_init(MEMORY[0x277CE4528]);
  [v2 setItemClass:1];
  [v2 setItemAccessible:4];
  [v2 setInvisible:2];
  [v2 setSynchronizable:1];
  [v2 setUseDataProtection:2];
  [v2 setService:@"com.apple.cdpd.escrow-repair.svc"];
  [v2 setLabel:@"com.apple.cdpd.escrow-repair.label.last-attempt-date"];

  return v2;
}

- (id)_lastEscrowRepairAttemptDate:(id *)date
{
  v27 = *MEMORY[0x277D85DE8];
  _lastEscrowRepairAttemptDateDescriptor = [(CDPDEscrowRecordController *)self _lastEscrowRepairAttemptDateDescriptor];
  keychainManager = [(CDPDEscrowRecordController *)self keychainManager];
  v22 = 0;
  v7 = [keychainManager keychainItemForDescriptor:_lastEscrowRepairAttemptDateDescriptor error:&v22];
  v8 = v22;

  value = [v7 value];
  if ([v8 code] == -25300 && (objc_msgSend(v8, "domain"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isEqualToString:", *MEMORY[0x277CCA590]), v10, v11))
  {
    v12 = _CDPLogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      selfCopy = self;
      v25 = 2112;
      v26 = v8;
      _os_log_impl(&dword_24510B000, v12, OS_LOG_TYPE_DEFAULT, "%@: Last escrow repair attempt date not found in keychain (%@)", buf, 0x16u);
    }
  }

  else
  {
    if (value)
    {
      v21 = 0;
      v13 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:value error:&v21];
      v14 = v21;
      v15 = v14;
      if (v14)
      {
        if (date)
        {
          v16 = v14;
          v17 = 0;
          *date = v15;
        }

        else
        {
          v17 = 0;
        }
      }

      else
      {
        v17 = v13;
      }

      goto LABEL_16;
    }

    if (date)
    {
      v18 = v8;
      v17 = 0;
      *date = v8;
      goto LABEL_16;
    }
  }

  v17 = 0;
LABEL_16:

  v19 = *MEMORY[0x277D85DE8];

  return v17;
}

- (BOOL)_setLastEscrowRepairAttemptDate:(id)date error:(id *)error
{
  if (date)
  {
    v18 = 0;
    v6 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:date requiringSecureCoding:1 error:&v18];
    v7 = v18;
    v8 = v7;
    if (v6)
    {
      _lastEscrowRepairAttemptDateDescriptor = [(CDPDEscrowRecordController *)self _lastEscrowRepairAttemptDateDescriptor];
      v10 = [objc_alloc(MEMORY[0x277CE4520]) initWithDescriptor:_lastEscrowRepairAttemptDateDescriptor value:v6];
      keychainManager = [(CDPDEscrowRecordController *)self keychainManager];
      v17 = 0;
      [keychainManager addOrUpdateKeychainItem:v10 error:&v17];
      v12 = v17;

      v13 = v12 == 0;
      if (error)
      {
        if (v12)
        {
          v14 = v12;
          *error = v12;
        }
      }
    }

    else if (error)
    {
      v16 = v7;
      v13 = 0;
      *error = v8;
    }

    else
    {
      v13 = 0;
    }

    return v13;
  }

  else
  {

    return [(CDPDEscrowRecordController *)self _clearLastEscrowRepairAttemptDate:error];
  }
}

- (BOOL)_clearLastEscrowRepairAttemptDate:(id *)date
{
  _lastEscrowRepairAttemptDateDescriptor = [(CDPDEscrowRecordController *)self _lastEscrowRepairAttemptDateDescriptor];
  keychainManager = [(CDPDEscrowRecordController *)self keychainManager];
  [keychainManager deleteKeychainItemsForDescriptor:_lastEscrowRepairAttemptDateDescriptor error:date];

  return date != 0;
}

- (unint64_t)_combinedCircleStatusUsingCache:(BOOL)cache error:(id *)error
{
  cacheCopy = cache;
  v24 = *MEMORY[0x277D85DE8];
  circleProxy = [(CDPDEscrowRecordController *)self circleProxy];
  v8 = circleProxy;
  if (cacheCopy)
  {
    v19 = 0;
    v9 = &v19;
    v10 = [circleProxy combinedCachedCircleStatus:&v19];
  }

  else
  {
    v18 = 0;
    v9 = &v18;
    v10 = [circleProxy combinedCircleStatus:&v18];
  }

  v11 = v10;
  v12 = *v9;

  v13 = _CDPLogSystem();
  v14 = v13;
  if (v12)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      selfCopy2 = self;
      v22 = 1024;
      *v23 = cacheCopy;
      *&v23[4] = 2112;
      *&v23[6] = v12;
      _os_log_error_impl(&dword_24510B000, v14, OS_LOG_TYPE_ERROR, "%@: Failed to retrieve combined circle status using cache (%{BOOL}d) with error (%@)", buf, 0x1Cu);
    }

    if (error)
    {
      v15 = v12;
      *error = v12;
    }
  }

  else
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      selfCopy2 = self;
      v22 = 2048;
      *v23 = v11;
      *&v23[8] = 1024;
      *&v23[10] = cacheCopy;
      _os_log_impl(&dword_24510B000, v14, OS_LOG_TYPE_DEFAULT, "%@: Retrieved combined circle status (%lu) using cache (%{BOOL}d)", buf, 0x1Cu);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)circleController:(id)controller secureBackupRecordsArePresentWithCompletion:(id)completion
{
  if (completion)
  {
    v5 = MEMORY[0x277CCA9B8];
    completionCopy = completion;
    v7 = [v5 cdp_errorWithCode:-5004];
    (*(completion + 2))(completionCopy, 0, 0, v7);
  }
}

- (id)circlePeerIDForSecureBackupController:(id)controller
{
  circleController = [(CDPDEscrowRecordController *)self circleController];
  peerID = [circleController peerID];

  return peerID;
}

- (BOOL)synchronizeCircleViewsForSecureBackupContext:(id)context
{
  circleController = [(CDPDEscrowRecordController *)self circleController];
  synchronizeCircleViews = [circleController synchronizeCircleViews];

  return synchronizeCircleViews;
}

- (void)promptForAdoptionOfMultipleICSCWithCompletion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion, 1, 0);
  }
}

- (void)promptForLocalSecretWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = _CDPLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    [CDPDEscrowRecordController promptForLocalSecretWithCompletion:];
  }

  if (completionCopy)
  {
    v5 = [MEMORY[0x277CCA9B8] cdp_errorWithCode:-5004];
    completionCopy[2](completionCopy, 0, v5);
  }
}

- (id)_cdpStateMachineWithNilUIProvider
{
  v2 = [[CDPDStateMachine alloc] initWithContext:self->_context uiProvider:0];

  return v2;
}

- (BOOL)_hasLocalSecret
{
  mEMORY[0x277CFD4F8] = [MEMORY[0x277CFD4F8] sharedInstance];
  hasLocalSecret = [mEMORY[0x277CFD4F8] hasLocalSecret];

  return hasLocalSecret;
}

- (void)initWithContext:circleProxy:octagonTrustProxy:secureBackupProxy:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7(&dword_24510B000, v0, v1, "Expected valid context (%@) with non-null DSID and altDSID", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_reauthenticateAndPerformEscrowCheckWithIsBackground:completion:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1(&dword_24510B000, v0, v1, "Silent auth requested for escrow check with isBackground: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)updateLastSilentEscrowRecordRepairAttemptDate:error:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7(&dword_24510B000, v0, v1, "%@: Unexpected request to remove last silent escrow record repair attempt date", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __108__CDPDEscrowRecordController_generateEscrowRecordStatusReportForLocalDeviceUsingFetchSource_withCompletion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_24510B000, v0, v1, "Failed to check all records with error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __108__CDPDEscrowRecordController_generateEscrowRecordStatusReportForLocalDeviceUsingFetchSource_withCompletion___block_invoke_cold_2(uint64_t *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0_2(&dword_24510B000, v2, v3, "%{public}@: There are no usable records for the local device matching serial number (%{sensitive}@)");
  v4 = *MEMORY[0x277D85DE8];
}

- (void)_firstUsableRecordForCurrentPeerWithSerialNumber:fromRecords:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_24510B000, v0, v1, "Beginning account escrow record evaluation to find viable escrow records matching this device's serial number: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_firstUsableRecordForCurrentPeerWithSerialNumber:(os_log_t)log fromRecords:.cold.3(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 138412290;
  *a2 = @"com.apple.icdp.record";
  _os_log_debug_impl(&dword_24510B000, log, OS_LOG_TYPE_DEBUG, "Checking if record's label has prefix '%@'", buf, 0xCu);
}

- (void)_firstUsableRecordForCurrentPeerWithSerialNumber:(os_log_t)log fromRecords:.cold.4(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_debug_impl(&dword_24510B000, log, OS_LOG_TYPE_DEBUG, "Checking if record (1) hasRecordStatus and (2) record status is any value other than INVALID", buf, 2u);
}

- (void)_firstUsableRecordForCurrentPeerWithSerialNumber:(os_log_t)log fromRecords:.cold.5(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_debug_impl(&dword_24510B000, log, OS_LOG_TYPE_DEBUG, "Checking if record (1) hasRecordViability and (2) the viability is either partially or fully viable", buf, 2u);
}

- (void)_firstUsableRecordForCurrentPeerWithSerialNumber:(void *)a1 fromRecords:.cold.6(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v8 = [a1 recordId];
  OUTLINED_FUNCTION_8(&dword_24510B000, v1, v2, "Returning record %{mask.hash}@ because it is partially or fully viable.", v3, v4, v5, v6, 2u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_firstUsableRecordForCurrentPeerWithSerialNumber:(void *)a1 fromRecords:.cold.7(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  [a1 count];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_8(&dword_24510B000, v1, v2, "Exiting early from usable records check. AllRecordsCount=(%lu), serialNumber=(%@)", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_isEscrowRecordRepairPermitted
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_0_2(&dword_24510B000, v0, v1, "%@: Failed to fetch keychain value for last escrow repair attempt date with error (%@)");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_deviceEscrowRecordStateUsingAccountsHealthCheckCache:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_24510B000, v0, v1, "%@: escrowRecordHealthCheckFailureCountKey = 0, indicating that we have a healthy escrow record for the device. MiniBuddy should not have attempted the repair. Please use the eligibility SPI shouldPerformSilentEscrowRecordRepairWithContext before attempting the repair.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_deviceEscrowRecordStateUsingAccountsHealthCheckCache:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_24510B000, v0, v1, "%@: escrowRecordHealthCheckFailureCountKey is not available in Accounts DB cache. Maybe the account health check was never run.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_deviceEscrowRecordStateUsingCache:completion:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_24510B000, v0, v1, "%@: Cannot silently repair escrow record for current device with nil peerID", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __76__CDPDEscrowRecordController__deviceEscrowRecordStateUsingCache_completion___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_5_1(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0_2(&dword_24510B000, v1, v2, "%@: Failed to determine if device already has escrow record with error (%{public}@)");
  v3 = *MEMORY[0x277D85DE8];
}

void __76__CDPDEscrowRecordController__deviceEscrowRecordStateUsingCache_completion___block_invoke_62_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_5_1(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_0_2(&dword_24510B000, v1, v2, "%@: Failed to determine if device already has escrow record with error (%@)");
  v3 = *MEMORY[0x277D85DE8];
}

void __80__CDPDEscrowRecordController__escrowRecordStateForDevice_usingCache_completion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) recordID];
  v6 = 138412546;
  v7 = v3;
  v8 = 2112;
  v9 = v4;
  _os_log_error_impl(&dword_24510B000, a2, OS_LOG_TYPE_ERROR, "%@: Failed to check TLK recoverability for record with ID (%@)", &v6, 0x16u);

  v5 = *MEMORY[0x277D85DE8];
}

void __81__CDPDEscrowRecordController__beginSilentEscrowRecordRepairWithState_completion___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_5_1(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_0_2(&dword_24510B000, v1, v2, "%@: Unable to continue silent escrow record repair due to auth error (%@)");
  v3 = *MEMORY[0x277D85DE8];
}

- (void)_continueSilentEscrowRecordRepairWithState:completion:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_0_2(&dword_24510B000, v0, v1, "%@: Failed to set last escrow repair attempt date in keychain with error (%@)");
  v2 = *MEMORY[0x277D85DE8];
}

void __84__CDPDEscrowRecordController__continueSilentEscrowRecordRepairWithState_completion___block_invoke_69_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_5_1(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_0_2(&dword_24510B000, v1, v2, "%@: Failed to repair the non-viable escrow record as the request was dropped by escrow proxy with error (%@)");
  v3 = *MEMORY[0x277D85DE8];
}

void __84__CDPDEscrowRecordController__checkFirstUsableRecordForDeviceFromSource_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_24510B000, v0, v1, "Failed to check all records with error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __74__CDPDEscrowRecordController__fetchAllEscrowRecordsFromSource_completion___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_5_1(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0_2(&dword_24510B000, v1, v2, "%@: Failed to fetch all escrow records with error (%{public}@)");
  v3 = *MEMORY[0x277D85DE8];
}

- (void)promptForLocalSecretWithCompletion:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7(&dword_24510B000, v0, v1, "%@: Prompting for local secret is not supported in this flow", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end