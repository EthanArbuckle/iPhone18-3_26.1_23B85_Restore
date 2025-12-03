@interface CDPDStateMachine
- (BOOL)_eligibleForSilentAuthenticatedRepair;
- (BOOL)_eligibleToSkipAuth;
- (BOOL)_isEligibleForSOSJoin;
- (BOOL)_isInSOSCircle;
- (BOOL)_localDeviceHasLocalSecret;
- (BOOL)_needsSOSRepair;
- (BOOL)_shouldRejoinCircleAfterPerformingRPDType:(unint64_t)type;
- (BOOL)synchronizeCircleViewsForSecureBackupContext:(id)context;
- (CDPDStateMachine)initWithContext:(id)context connection:(id)connection;
- (CDPDStateMachine)initWithContext:(id)context uiProvider:(id)provider;
- (CDPDStateMachine)initWithContext:(id)context uiProvider:(id)provider connection:(id)connection;
- (id)_cachedRecoveryFlowContext;
- (id)_errorForICSCCreationNotAttemptedWithResult:(id)result cliqueStatus:(int64_t)status;
- (id)_makeCDPEntryEventWithContext:(id)context;
- (id)_makeEscrowRecordControllerWithCurrentContext;
- (id)_makeICSCCreationMissingWhenExpectedEventWithContext:(id)context error:(id)error;
- (id)_populateBaseStartEvent:(id)event withContext:(id)context cdpdAccount:(id)account;
- (id)_predicateForRecordUpgradeCheck;
- (id)_predicateForRecordUpgradeCheckIgnoringBottled;
- (id)_predicateForRepair;
- (id)_recoveryFlowControllerForKeychainSyncSystem:(int64_t)system recoveryContext:(id)context;
- (id)secureChannelContextForController:(id)controller;
- (void)_attemptBackupRecoveryByPromptingForRemoteSecretWithLocalSecret:(id)secret localSecretType:(unint64_t)type useSecureBackupCachedSecret:(BOOL)cachedSecret circleJoinResult:(id)result completion:(id)completion;
- (void)_attemptBeneficiaryTrustWithInheritanceKey:(id)key retryCount:(unint64_t)count completion:(id)completion;
- (void)_attemptCDPEnable:(id)enable;
- (void)_authenticatedRepairCloudDataProtectionStateWithCompletion:(id)completion;
- (void)_confirmCDPEligibilityWithCompletion:(id)completion;
- (void)_continueRepairCloudDataProtectionStateWithCompletion:(id)completion;
- (void)_continueShouldPerformRepairWithOptionForceFetch:(BOOL)fetch completion:(id)completion;
- (void)_disableRecoveryKeyWithCompletion:(id)completion;
- (void)_enableCustodianRecoveryIfAvailableForContext:(id)context;
- (void)_enableKVSForAccount:(id)account store:(id)store completion:(id)completion;
- (void)_enableSOSViews;
- (void)_enableSecureBackupWithCircleJoinResult:(id)result completion:(id)completion;
- (void)_enableSecureBackupWithJoinResult:(id)result completion:(id)completion;
- (void)_enrollOrDisableCDPAfterEnabledStateVerified:(id)verified;
- (void)_fetchUserInfo;
- (void)_handleBeneficiaryTrustWithCompletion:(id)completion;
- (void)_handleCloudDataProtectionStateWithCompletion:(id)completion;
- (void)_handleInteractiveRecoveryFlowWithCircleJoinResult:(id)result completion:(id)completion;
- (void)_handlePreflightError:(id)error completion:(id)completion;
- (void)_handleSecureBackupEnablementFailureForNonRepairFlowWithCircleJoinResult:(id)result completion:(id)completion;
- (void)_handleiCDPStatusCheckError:(id)error completion:(id)completion;
- (void)_initDependenciesWithContext:(id)context;
- (void)_joinSOSAsynchronouslyFromHandleCloudDataProtectionIfRequired;
- (void)_joinSOSFromRepairCloudDataProtectionIfRequiredWithCompletion:(id)completion;
- (void)_performInteractivelyAuthenticatedRepair:(id)repair;
- (void)_performSilentlyAuthenticatedRepair:(id)repair;
- (void)_postFollowUpForConfirmExistingSecret;
- (void)_postRecoveryEnableSecureBackupWithContext:(id)context completion:(id)completion;
- (void)_preflightAccountStateWithContext:(id)context completion:(id)completion;
- (void)_recoverSecureBackupWithCircleJoinResult:(id)result completion:(id)completion;
- (void)_refreshAndAuthenticateWithContext:(id)context;
- (void)_resetAccountCDPStateWithCompletion:(id)completion;
- (void)_updateSOSCompatibilityMode;
- (void)dealloc;
- (void)handleCloudDataProtectionStateWithCompletion:(id)completion;
- (void)promptForLocalSecretWithCompletion:(id)completion;
- (void)repairCloudDataProtectionStateWithCompletion:(id)completion;
- (void)reportCDPEntryEventWithContext:(id)context;
- (void)resetAccountCDPStateWithCompletion:(id)completion;
@end

@implementation CDPDStateMachine

- (CDPDStateMachine)initWithContext:(id)context uiProvider:(id)provider
{
  contextCopy = context;
  providerCopy = provider;
  v9 = [(CDPDStateMachine *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_context, context);
    objc_storeStrong(&v10->_uiProvider, provider);
    v11 = _CDPLogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [CDPDStateMachine initWithContext:uiProvider:];
    }

    [(CDPDStateMachine *)v10 _initDependenciesWithContext:contextCopy];
    if (CFPreferencesGetAppBooleanValue(@"FakeDepletedRecords", @"com.apple.corecdp", 0))
    {
      v12 = _CDPLogSystem();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        [CDPDStateMachine initWithContext:uiProvider:];
      }

      [(CDPDSecureBackupControl *)v10->_secureBackupController setFakeNearlyDepletedRecords:1];
    }

    v13 = objc_alloc_init(MEMORY[0x277CFD4E8]);
    inheritanceTrustController = v10->_inheritanceTrustController;
    v10->_inheritanceTrustController = v13;

    v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v16 = dispatch_queue_attr_make_with_qos_class(v15, QOS_CLASS_DEFAULT, 0);

    v17 = dispatch_queue_create("com.apple.cdpd.statemachineDefaultQueue", v16);
    cdpdStatemachineDefaultQueue = v10->_cdpdStatemachineDefaultQueue;
    v10->_cdpdStatemachineDefaultQueue = v17;
  }

  return v10;
}

- (CDPDStateMachine)initWithContext:(id)context uiProvider:(id)provider connection:(id)connection
{
  connectionCopy = connection;
  v10 = [(CDPDStateMachine *)self initWithContext:context uiProvider:provider];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_connection, connection);
  }

  return v11;
}

- (CDPDStateMachine)initWithContext:(id)context connection:(id)connection
{
  connectionCopy = connection;
  v8 = [(CDPDStateMachine *)self initWithContext:context uiProvider:0];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_connection, connection);
  }

  return v9;
}

- (void)dealloc
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (id)_cachedRecoveryFlowContext
{
  recoveryFlowContext = self->_recoveryFlowContext;
  if (!recoveryFlowContext)
  {
    v4 = objc_alloc_init(MEMORY[0x277CFD530]);
    [v4 setContext:self->_context];
    v5 = self->_recoveryFlowContext;
    self->_recoveryFlowContext = v4;

    recoveryFlowContext = self->_recoveryFlowContext;
  }

  return recoveryFlowContext;
}

- (void)handleCloudDataProtectionStateWithCompletion:(id)completion
{
  v34 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  isSharediPad = [(CDPContext *)self->_context isSharediPad];
  v6 = _CDPLogSystem();
  v7 = v6;
  if (!isSharediPad)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [CDPDStateMachine handleCloudDataProtectionStateWithCompletion:?];
    }

    if ([(CDPDStateMachine *)self _isInSOSCircle])
    {
      completionCopy[2](completionCopy, 1, 1, 0);
      goto LABEL_25;
    }

    [(CDPDStateMachine *)self reportCDPEntryEventWithContext:self->_context];
    v9 = _os_feature_enabled_impl();
    if (v9)
    {
      if (handleCloudDataProtectionStateWithCompletion__once != -1)
      {
        [CDPDStateMachine handleCloudDataProtectionStateWithCompletion:];
      }

      v10 = handleCloudDataProtectionStateWithCompletion__stateMachineSemaphore;
      v11 = dispatch_time(0, 300000000000);
      dispatch_semaphore_wait(v10, v11);
    }

    v12 = _CDPLogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_24510B000, v12, OS_LOG_TYPE_DEFAULT, "State machine %@ is starting...", buf, 0xCu);
    }

    [(CDPDStateMachine *)self _updateSOSCompatibilityMode];
    v31 = 0;
    v13 = [CDPDLockAssertion lockWithError:&v31];
    v14 = v31;
    lockAssertion = self->_lockAssertion;
    self->_lockAssertion = v13;

    _ignoreLockAssertErrors = [(CDPContext *)self->_context _ignoreLockAssertErrors];
    if (_ignoreLockAssertErrors)
    {
      v17 = _CDPLogSystem();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_24510B000, v17, OS_LOG_TYPE_DEFAULT, "Ignoring lock assert errors", buf, 2u);
      }
    }

    if (!self->_lockAssertion)
    {
      domain = [v14 domain];
      if ([domain isEqualToString:*MEMORY[0x277CCA5B8]] && objc_msgSend(v14, "code") == 16)
      {
      }

      else
      {

        if (!_ignoreLockAssertErrors)
        {
          if (v9)
          {
            dispatch_semaphore_signal(handleCloudDataProtectionStateWithCompletion__stateMachineSemaphore);
          }

          v26 = _CDPLogSystem();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            [CDPDStateMachine handleCloudDataProtectionStateWithCompletion:];
          }

          if (completionCopy)
          {
            v27 = _CDPStateError();
            (completionCopy)[2](completionCopy, 0, 0, v27);
          }

          goto LABEL_24;
        }
      }
    }

    v18 = _CDPLogSystem();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_24510B000, v18, OS_LOG_TYPE_DEFAULT, "Successfully took device lock assertion or assertion already taken, proceeding with state machine", buf, 2u);
    }

    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __65__CDPDStateMachine_handleCloudDataProtectionStateWithCompletion___block_invoke_43;
    v28[3] = &unk_278E25F68;
    v28[4] = self;
    v30 = v9;
    v29 = completionCopy;
    v19 = _Block_copy(v28);
    v19[2](v19, v20, v21, v22, v23);

LABEL_24:
    goto LABEL_25;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24510B000, v7, OS_LOG_TYPE_DEFAULT, "CDP is not supported on MAID accounts on shared iPads", buf, 2u);
  }

  if (completionCopy)
  {
    v8 = _CDPStateError();
    (completionCopy)[2](completionCopy, 1, 0, v8);
  }

LABEL_25:

  v24 = *MEMORY[0x277D85DE8];
}

uint64_t __65__CDPDStateMachine_handleCloudDataProtectionStateWithCompletion___block_invoke()
{
  handleCloudDataProtectionStateWithCompletion__stateMachineSemaphore = dispatch_semaphore_create(1);

  return MEMORY[0x2821F96F8]();
}

void __65__CDPDStateMachine_handleCloudDataProtectionStateWithCompletion___block_invoke_43(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) circleStatus];
  v3 = *(a1 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __65__CDPDStateMachine_handleCloudDataProtectionStateWithCompletion___block_invoke_2;
  v4[3] = &unk_278E25F40;
  v4[4] = v3;
  v6 = v2;
  v7 = *(a1 + 48);
  v5 = *(a1 + 40);
  [v3 _handleCloudDataProtectionStateWithCompletion:v4];
}

void __65__CDPDStateMachine_handleCloudDataProtectionStateWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v65 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(*(a1 + 32) + 32) cliqueStatus];
  if ([v3 shouldCompleteSignIn] && objc_msgSend(v3, "cloudDataProtectionEnabled") && *(a1 + 48) != 1)
  {
    v5 = _CDPLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_24510B000, v5, OS_LOG_TYPE_DEFAULT, "Successfully enabled iCDP and landed in circle. Updating keychain status and notifying clients.", buf, 2u);
    }

    v6 = [*(a1 + 32) circleController];
    v7 = [v6 circleProxy];
    v8 = objc_alloc(MEMORY[0x277CFD540]);
    v9 = [*(a1 + 32) context];
    v10 = [v8 initWithContext:v9];
    v11 = [*(a1 + 32) context];
    v12 = [CDPDKeychainSync keyChainSyncWithProxy:v7 sosCircleProxy:v10 context:v11];

    [v12 updateKeychainSyncStateIfNeededWithCompletion:&__block_literal_global_49];
    v13 = [MEMORY[0x277CCA9A0] defaultCenter];
    [v13 postNotificationName:*MEMORY[0x277CFD3D0] object:0 userInfo:0 deliverImmediately:1];
  }

  *buf = 0;
  v56 = buf;
  v57 = 0x3032000000;
  v58 = __Block_byref_object_copy__7;
  v59 = __Block_byref_object_dispose__7;
  v60 = 0;
  if ([v3 shouldCompleteSignIn] && objc_msgSend(v3, "cloudDataProtectionEnabled"))
  {
    v14 = _CDPLogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v61) = 0;
      _os_log_impl(&dword_24510B000, v14, OS_LOG_TYPE_DEFAULT, "Reporting success to circle proxy", &v61, 2u);
    }

    v15 = [*(*(a1 + 32) + 32) circleProxy];
    [v15 reportSuccess];
    v16 = 1;
    goto LABEL_28;
  }

  v17 = _CDPLogSystem();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [v3 error];
    LODWORD(v61) = 138412290;
    *(&v61 + 4) = v18;
    _os_log_impl(&dword_24510B000, v17, OS_LOG_TYPE_DEFAULT, "Reporting error to circle proxy %@", &v61, 0xCu);
  }

  v19 = [v3 error];
  v20 = [v19 domain];
  v21 = [v20 isEqualToString:*MEMORY[0x277CFD418]];

  if (v21)
  {
    v22 = [v3 error];
    v23 = *(v56 + 5);
    *(v56 + 5) = v22;
  }

  else
  {
    v24 = MEMORY[0x277CCA9B8];
    v23 = [v3 error];
    v25 = [v24 cdp_errorWithCode:-2 underlyingError:v23];
    v26 = *(v56 + 5);
    *(v56 + 5) = v25;
  }

  v27 = MEMORY[0x277CFD4A8];
  v28 = [*(a1 + 32) context];
  if (![v27 isSubsetOfContextTypeSignIn:{-[NSObject type](v28, "type")}] || !objc_msgSend(MEMORY[0x277CFD560], "isAudioAccessory"))
  {
    goto LABEL_22;
  }

  v29 = [v3 error];
  v30 = [v29 domain];
  v31 = [v30 isEqualToString:*MEMORY[0x277CEFF48]];

  if (v31)
  {
    v28 = _CDPLogSystem();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
    {
      v32 = [v3 error];
      __65__CDPDStateMachine_handleCloudDataProtectionStateWithCompletion___block_invoke_2_cold_1(v32, v64, v28);
    }

LABEL_22:
  }

  v33 = [*(*(a1 + 32) + 32) circleProxy];
  v34 = [v3 error];
  [v33 reportFailure:v34];

  v35 = [v3 error];
  LODWORD(v33) = v35 == 0;

  if (!v33)
  {
    v16 = 0;
    goto LABEL_29;
  }

  v15 = _CDPLogSystem();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
  {
    __65__CDPDStateMachine_handleCloudDataProtectionStateWithCompletion___block_invoke_2_cold_2();
  }

  v16 = 0;
LABEL_28:

LABEL_29:
  if ([*(*(a1 + 32) + 8) keychainSyncSystem] == 1)
  {
    if ([*(*(a1 + 32) + 32) circleSyncingStatus])
    {
LABEL_31:
      v36 = 0;
      goto LABEL_36;
    }
  }

  else if (!v16)
  {
    goto LABEL_31;
  }

  v37 = [*(a1 + 32) _errorForICSCCreationNotAttemptedWithResult:v3 cliqueStatus:v4];
  if (v37)
  {
    v38 = [*(a1 + 32) _makeICSCCreationMissingWhenExpectedEventWithContext:*(*(a1 + 32) + 8) error:v37];
    v39 = [MEMORY[0x277CFD490] rtcAnalyticsReporter];
    [v39 sendEvent:v38];
  }

  v36 = 1;
LABEL_36:
  v40 = [MEMORY[0x277CE44D8] analyticsEventWithContext:*(*(a1 + 32) + 8) eventName:*MEMORY[0x277CFD650] category:*MEMORY[0x277CFD930]];
  v41 = objc_alloc_init(CDPDAccount);
  [*(a1 + 32) _populateBaseFinishEvent:v40 didSucceed:v36 error:*(v56 + 5) shouldCompleteSignIn:objc_msgSend(v3 context:"shouldCompleteSignIn") octagonCliqueStatus:*(*(a1 + 32) + 8) cdpdAccount:{v4, v41}];
  v42 = [MEMORY[0x277CFD490] rtcAnalyticsReporter];
  [v42 sendEvent:v40];

  *&v61 = 0;
  *(&v61 + 1) = &v61;
  v62 = 0x2020000000;
  v63 = [v3 shouldCompleteSignIn];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __65__CDPDStateMachine_handleCloudDataProtectionStateWithCompletion___block_invoke_57;
  aBlock[3] = &unk_278E25F18;
  v43 = v3;
  v44 = *(a1 + 32);
  v45 = *(a1 + 40);
  v49 = v43;
  v50 = v44;
  v52 = &v61;
  v53 = buf;
  v54 = *(a1 + 56);
  v51 = v45;
  v46 = _Block_copy(aBlock);
  v46[2]();

  _Block_object_dispose(&v61, 8);
  _Block_object_dispose(buf, 8);

  v47 = *MEMORY[0x277D85DE8];
}

void __65__CDPDStateMachine_handleCloudDataProtectionStateWithCompletion___block_invoke_46(uint64_t a1, int a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _CDPLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109378;
    v7[1] = a2;
    v8 = 2114;
    v9 = v4;
    _os_log_impl(&dword_24510B000, v5, OS_LOG_TYPE_DEFAULT, "Updated keychain sync with success: %{BOOL}d, error: %{public}@", v7, 0x12u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __65__CDPDStateMachine_handleCloudDataProtectionStateWithCompletion___block_invoke_57(uint64_t a1)
{
  v51 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) error];

  if (!v2)
  {
    if (*(*(*(a1 + 56) + 8) + 24) != 1)
    {
      goto LABEL_13;
    }

    v5 = [MEMORY[0x277CFD4D8] contextForStateRepair];
    v6 = [*(*(a1 + 40) + 8) altDSID];
    [v5 setAltDSID:v6];

    v7 = [*(*(a1 + 40) + 8) telemetryFlowID];
    [v5 setTelemetryFlowID:v7];

    v8 = [*(*(a1 + 40) + 8) telemetryDeviceSessionID];
    [v5 setTelemetryDeviceSessionID:v8];

    v9 = +[CDPDFollowUpController sharedInstance];
    [v9 clearFollowUpWithContext:v5 error:0];
    goto LABEL_6;
  }

  v3 = [*(a1 + 32) error];
  if ([v3 cdp_isCDPErrorWithCode:-5307])
  {
    v4 = 1;
  }

  else
  {
    v10 = [*(a1 + 32) error];
    v4 = [v10 cdp_isCDPErrorWithCode:5906];
  }

  if (CFPreferencesGetAppBooleanValue(@"TreatAllErrorsAsFatal", @"com.apple.corecdp", 0) || [MEMORY[0x277CFD560] isAudioAccessory])
  {
    v5 = _CDPLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_24510B000, v5, OS_LOG_TYPE_DEFAULT, "Detected a pref to require all failures to be fatal or platform is HomePod, failing out...", buf, 2u);
    }

    goto LABEL_12;
  }

  if ((([*(*(a1 + 40) + 8) failSignInOnError] | v4) & 1) == 0)
  {
    v20 = MEMORY[0x277CFD480];
    v21 = [*(*(a1 + 40) + 8) dsid];
    v22 = [v21 stringValue];
    v23 = [v20 isICDPEnabledForDSID:v22];

    v24 = [*(*(a1 + 40) + 8) keychainSyncSystem];
    if (v24)
    {
      v25 = 0;
    }

    else
    {
      v25 = v23;
    }

    v26 = _CDPLogSystem();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = v24 == 0;
      v28 = [*(a1 + 32) error];
      v29 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(*(a1 + 40) + 8), "keychainSyncSystem")}];
      *buf = 138544386;
      v42 = v28;
      v43 = 1024;
      v44 = v25;
      v45 = 1024;
      v46 = v23;
      v47 = 1024;
      v48 = v27;
      v49 = 2112;
      v50 = v29;
      _os_log_impl(&dword_24510B000, v26, OS_LOG_TYPE_DEFAULT, "Detected a non-fatal error %{public}@, allowing user to continue sign in. Posting CFU: %{BOOL}d iCDPEnabled: %{BOOL}d isOctagon: %{BOOL}d keychainSyncSystem: %@", buf, 0x28u);
    }

    *(*(*(a1 + 56) + 8) + 24) = 1;
    v30 = *(*(a1 + 64) + 8);
    v31 = *(v30 + 40);
    *(v30 + 40) = 0;

    if (v25)
    {
      v5 = [MEMORY[0x277CFD4D8] contextForStateRepair];
      [v5 setRepairType:2];
      v32 = [*(*(a1 + 40) + 8) altDSID];
      [v5 setAltDSID:v32];

      v33 = [*(*(a1 + 40) + 8) telemetryFlowID];
      [v5 setTelemetryFlowID:v33];

      v34 = [*(*(a1 + 40) + 8) telemetryDeviceSessionID];
      [v5 setTelemetryDeviceSessionID:v34];

      v9 = +[CDPDFollowUpController sharedInstance];
      [v9 postFollowUpItemForContext:v5 error:0];
LABEL_6:

LABEL_12:
    }
  }

LABEL_13:
  v11 = os_transaction_create();
  v12 = dispatch_time(0, 30000000000);
  v35 = MEMORY[0x277D85DD0];
  v36 = 3221225472;
  v37 = __65__CDPDStateMachine_handleCloudDataProtectionStateWithCompletion___block_invoke_66;
  v38 = &unk_278E25EF0;
  v39 = *(a1 + 40);
  v13 = v11;
  v40 = v13;
  dispatch_after(v12, MEMORY[0x277D85CD0], &v35);
  if (*(a1 + 72) == 1)
  {
    dispatch_semaphore_signal(handleCloudDataProtectionStateWithCompletion__stateMachineSemaphore);
  }

  v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v15 = dispatch_queue_create("CDPRecoveryKeyCache-Queue", v14);

  dispatch_async(v15, &__block_literal_global_70);
  if ([*(a1 + 32) cloudDataProtectionEnabled])
  {
    [*(a1 + 40) _joinSOSAsynchronouslyFromHandleCloudDataProtectionIfRequired];
  }

  v16 = _CDPLogSystem();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = *(a1 + 40);
    *buf = 138412290;
    v42 = v17;
    _os_log_impl(&dword_24510B000, v16, OS_LOG_TYPE_DEFAULT, "State machine %@ finished", buf, 0xCu);
  }

  v18 = *(a1 + 48);
  if (v18)
  {
    (*(v18 + 16))(v18, *(*(*(a1 + 56) + 8) + 24), [*(a1 + 32) cloudDataProtectionEnabled], *(*(*(a1 + 64) + 8) + 40));
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __65__CDPDStateMachine_handleCloudDataProtectionStateWithCompletion___block_invoke_66(uint64_t a1)
{
  v2 = _CDPLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_24510B000, v2, OS_LOG_TYPE_DEFAULT, "Uncaching all secrets after 30 seconds, fail safe...", v4, 2u);
  }

  v3 = [*(*(a1 + 32) + 40) secureBackupProxy];
  [v3 uncacheAllSecrets];
}

void __65__CDPDStateMachine_handleCloudDataProtectionStateWithCompletion___block_invoke_68()
{
  v0 = +[CDPRecoveryKeyCache sharedInstance];
  [v0 deleteCache];
}

- (id)_populateBaseStartEvent:(id)event withContext:(id)context cdpdAccount:(id)account
{
  eventCopy = event;
  contextCopy = context;
  accountCopy = account;
  connection = self->_connection;
  if (connection)
  {
    aaf_processName = [(NSXPCConnection *)connection aaf_processName];
    [eventCopy setObject:aaf_processName forKeyedSubscript:*MEMORY[0x277CFD8F8]];
  }

  v13 = [MEMORY[0x277CCABB0] numberWithInteger:{-[CDPDCircleControl cliqueStatus](self->_circleController, "cliqueStatus")}];
  [eventCopy setObject:v13 forKeyedSubscript:*MEMORY[0x277CFD6A0]];

  v14 = [MEMORY[0x277CCABB0] numberWithInt:{-[CDPDCircleControl circleSyncingStatus](self->_circleController, "circleSyncingStatus")}];
  [eventCopy setObject:v14 forKeyedSubscript:*MEMORY[0x277CFD688]];

  v15 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(contextCopy, "isPiggybackingRecovery")}];
  [eventCopy setObject:v15 forKeyedSubscript:*MEMORY[0x277CFD7A0]];

  v16 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(contextCopy, "isTTSURecovery")}];
  [eventCopy setObject:v16 forKeyedSubscript:*MEMORY[0x277CFD7A8]];

  dsid = [contextCopy dsid];
  stringValue = [dsid stringValue];
  v19 = [accountCopy isICDPEnabledForDSID:stringValue checkWithServer:0];

  v20 = [MEMORY[0x277CCABB0] numberWithBool:v19];
  [eventCopy setObject:v20 forKeyedSubscript:*MEMORY[0x277CFD670]];

  localSecretType = [MEMORY[0x277CE4510] localSecretType];
  [eventCopy setObject:localSecretType forKeyedSubscript:*MEMORY[0x277CFD770]];

  v22 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(contextCopy, "keychainSyncSystem")}];
  [eventCopy setObject:v22 forKeyedSubscript:*MEMORY[0x277CFD760]];

  v23 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(contextCopy, "totalEscrowDeviceCount")}];
  [eventCopy setObject:v23 forKeyedSubscript:*MEMORY[0x277CFD8A8]];

  v24 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(contextCopy, "maxDeviceRecoveryAttempts")}];
  [eventCopy setObject:v24 forKeyedSubscript:*MEMORY[0x277CFD778]];

  return eventCopy;
}

- (id)_errorForICSCCreationNotAttemptedWithResult:(id)result cliqueStatus:(int64_t)status
{
  resultCopy = result;
  if (![MEMORY[0x277CFD560] isInternalBuild] || !CFPreferencesGetAppBooleanValue(@"ForceICSCMissingEvent", @"com.apple.corecdp", 0))
  {
    context = [(CDPDStateMachine *)self context];
    keychainSyncSystem = [context keychainSyncSystem];

    if (keychainSyncSystem)
    {
      v11 = _CDPLogSystem();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [CDPDStateMachine _errorForICSCCreationNotAttemptedWithResult:cliqueStatus:];
      }
    }

    else
    {
      context2 = [(CDPDStateMachine *)self context];
      isBeneficiaryAccount = [context2 isBeneficiaryAccount];

      if (isBeneficiaryAccount)
      {
        v11 = _CDPLogSystem();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          [CDPDStateMachine _errorForICSCCreationNotAttemptedWithResult:cliqueStatus:];
        }
      }

      else if (status)
      {
        v11 = _CDPLogSystem();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          [CDPDStateMachine _errorForICSCCreationNotAttemptedWithResult:cliqueStatus:];
        }
      }

      else
      {
        if (([MEMORY[0x277CFD4F8] hasLocalSecret] & 1) == 0)
        {
          v11 = _CDPLogSystem();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
          {
            [CDPDStateMachine _errorForICSCCreationNotAttemptedWithResult:cliqueStatus:];
          }

          goto LABEL_24;
        }

        context3 = [(CDPDStateMachine *)self context];
        secureBackupEnablementNotRequired = [context3 secureBackupEnablementNotRequired];

        if (!secureBackupEnablementNotRequired)
        {
          context4 = [(CDPDStateMachine *)self context];
          disableAsyncModeRequested = [context4 disableAsyncModeRequested];

          context5 = [(CDPDStateMachine *)self context];
          v21 = context5;
          if (disableAsyncModeRequested)
          {
            didAttemptSecureBackupEnablement = [context5 didAttemptSecureBackupEnablement];

            v23 = _CDPLogSystem();
            v11 = v23;
            if (didAttemptSecureBackupEnablement)
            {
              if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
              {
                [CDPDStateMachine _errorForICSCCreationNotAttemptedWithResult:cliqueStatus:];
              }

              goto LABEL_24;
            }

            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              [CDPDStateMachine _errorForICSCCreationNotAttemptedWithResult:cliqueStatus:];
            }

            v25 = MEMORY[0x277CCA9B8];
            error = [resultCopy error];
            v27 = v25;
            v28 = -7300;
          }

          else
          {
            willAttemptAsyncSecureBackupEnablement = [context5 willAttemptAsyncSecureBackupEnablement];

            if (willAttemptAsyncSecureBackupEnablement)
            {
              v11 = _CDPLogSystem();
              if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
              {
                [CDPDStateMachine _errorForICSCCreationNotAttemptedWithResult:cliqueStatus:];
              }

              goto LABEL_24;
            }

            context6 = [(CDPDStateMachine *)self context];
            didAttemptSecureBackupEnablement2 = [context6 didAttemptSecureBackupEnablement];

            v31 = _CDPLogSystem();
            v11 = v31;
            if (didAttemptSecureBackupEnablement2)
            {
              if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
              {
                [CDPDStateMachine _errorForICSCCreationNotAttemptedWithResult:cliqueStatus:];
              }

              goto LABEL_24;
            }

            if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
            {
              [CDPDStateMachine _errorForICSCCreationNotAttemptedWithResult:cliqueStatus:];
            }

            v32 = MEMORY[0x277CCA9B8];
            error = [resultCopy error];
            v27 = v32;
            v28 = -7301;
          }

          v14 = [v27 cdp_errorWithCode:v28 underlyingError:error];

          goto LABEL_25;
        }

        v11 = _CDPLogSystem();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          [CDPDStateMachine _errorForICSCCreationNotAttemptedWithResult:cliqueStatus:];
        }
      }
    }

LABEL_24:

    v14 = 0;
    goto LABEL_25;
  }

  v7 = _CDPLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [CDPDStateMachine _errorForICSCCreationNotAttemptedWithResult:cliqueStatus:];
  }

  error2 = [resultCopy error];

  if (error2)
  {
    [resultCopy error];
  }

  else
  {
    [MEMORY[0x277CCA9B8] cdp_errorWithCode:0];
  }
  v14 = ;
LABEL_25:

  return v14;
}

- (id)_makeICSCCreationMissingWhenExpectedEventWithContext:(id)context error:(id)error
{
  v5 = MEMORY[0x277CE44D8];
  v6 = *MEMORY[0x277CFD6F8];
  v7 = *MEMORY[0x277CFD930];
  errorCopy = error;
  v9 = [v5 analyticsEventWithContext:context eventName:v6 category:v7];
  [v9 populateUnderlyingErrorsStartingWithRootError:errorCopy];

  return v9;
}

- (id)_makeCDPEntryEventWithContext:(id)context
{
  contextCopy = context;
  v5 = [MEMORY[0x277CE44D8] analyticsEventWithContext:contextCopy eventName:*MEMORY[0x277CFD728] category:*MEMORY[0x277CFD930]];
  v6 = objc_alloc_init(CDPDAccount);
  v7 = [(CDPDStateMachine *)self _populateBaseStartEvent:v5 withContext:contextCopy cdpdAccount:v6];

  return v5;
}

- (void)reportCDPEntryEventWithContext:(id)context
{
  v4 = [(CDPDStateMachine *)self _makeCDPEntryEventWithContext:context];
  rtcAnalyticsReporter = [MEMORY[0x277CFD490] rtcAnalyticsReporter];
  [rtcAnalyticsReporter sendEvent:v4];
}

- (void)_handleCloudDataProtectionStateWithCompletion:(id)completion
{
  v27 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = _CDPLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    appleID = [(CDPContext *)self->_context appleID];
    *buf = 141558274;
    v22 = 1752392040;
    v23 = 2112;
    v24 = appleID;
    _os_log_impl(&dword_24510B000, v5, OS_LOG_TYPE_DEFAULT, "Starting preflight of account for %{mask.hash}@", buf, 0x16u);
  }

  beneficiaryIdentifier = [(CDPContext *)self->_context beneficiaryIdentifier];

  if (beneficiaryIdentifier)
  {
    v8 = _CDPLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      appleID2 = [(CDPContext *)self->_context appleID];
      beneficiaryIdentifier2 = [(CDPContext *)self->_context beneficiaryIdentifier];
      *buf = 138740483;
      v22 = appleID2;
      v23 = 2160;
      v24 = 1752392040;
      v25 = 2112;
      v26 = beneficiaryIdentifier2;
      _os_log_impl(&dword_24510B000, v8, OS_LOG_TYPE_DEFAULT, "Skipping account preflight for %{sensitive}@ due to presence of beneficiary identifier: %{mask.hash}@", buf, 0x20u);
    }

    [(CDPDStateMachine *)self _handleBeneficiaryTrustWithCompletion:completionCopy];
  }

  else
  {
    context = [(CDPDStateMachine *)self context];
    isFederatedAccount = [context isFederatedAccount];

    context2 = [(CDPDStateMachine *)self context];
    managedAccountsAllowedInCDP = [context2 managedAccountsAllowedInCDP];

    if (!isFederatedAccount || (managedAccountsAllowedInCDP & 1) != 0)
    {
      context = self->_context;
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __66__CDPDStateMachine__handleCloudDataProtectionStateWithCompletion___block_invoke;
      v19[3] = &unk_278E24AE8;
      v19[4] = self;
      v20 = completionCopy;
      [(CDPDStateMachine *)self _preflightAccountStateWithContext:context completion:v19];
    }

    else
    {
      v15 = _CDPLogSystem();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [CDPDStateMachine _handleCloudDataProtectionStateWithCompletion:?];
      }

      v16 = _CDPStateError();
      [(CDPDStateMachine *)self _handlePreflightError:v16 completion:completionCopy];
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __66__CDPDStateMachine__handleCloudDataProtectionStateWithCompletion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _CDPLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    v24 = a2;
    v25 = 2112;
    v26 = v5;
    _os_log_impl(&dword_24510B000, v6, OS_LOG_TYPE_DEFAULT, "Preflight finished with shouldProceed=%i error=%@", buf, 0x12u);
  }

  if (!a2)
  {
    [*(a1 + 32) _handlePreflightError:v5 completion:*(a1 + 40)];
    goto LABEL_21;
  }

  v7 = [MEMORY[0x277CFD560] isAudioAccessory];
  v8 = *(a1 + 32);
  if (v7)
  {
    [v8 _enrollOrDisableCDPAfterEnabledStateVerified:*(a1 + 40)];
    goto LABEL_21;
  }

  if ([v8[1] isiCDPEligible] && (objc_msgSend(*(*(a1 + 32) + 8), "password"), v9 = objc_claimAutoreleasedReturnValue(), v9, v9))
  {
    v10 = _CDPLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_24510B000, v10, OS_LOG_TYPE_DEFAULT, "Credential was provided, attempting to register...", buf, 2u);
    }

    v11 = [*(*(a1 + 32) + 32) circleProxy];
    v12 = [v11 tryRegisteringCredentials];

    if (v12)
    {
      goto LABEL_18;
    }

    v13 = _CDPLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __66__CDPDStateMachine__handleCloudDataProtectionStateWithCompletion___block_invoke_cold_1();
    }

    v14 = [*(*(a1 + 32) + 32) circleProxy];
    [v14 registerCredentials];
  }

  else
  {
    v14 = _CDPLogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_24510B000, v14, OS_LOG_TYPE_DEFAULT, "Credential was not provided or we are not HSA2/MAID... moving on!", buf, 2u);
    }
  }

LABEL_18:
  v15 = [*(*(a1 + 32) + 32) circleProxy];
  [v15 waitForUpdate];

  v16 = _CDPLogSystem();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24510B000, v16, OS_LOG_TYPE_DEFAULT, "Checking iCDP status...", buf, 2u);
  }

  v18 = *(a1 + 32);
  v17 = *(a1 + 40);
  v19 = *(v18 + 24);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __66__CDPDStateMachine__handleCloudDataProtectionStateWithCompletion___block_invoke_78;
  v21[3] = &unk_278E24AE8;
  v21[4] = v18;
  v22 = v17;
  [v19 checkiCDPStatusNetwork:1 withCompletion:v21];

LABEL_21:
  v20 = *MEMORY[0x277D85DE8];
}

void __66__CDPDStateMachine__handleCloudDataProtectionStateWithCompletion___block_invoke_78(uint64_t a1, int a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _CDPLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    v12 = a2;
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&dword_24510B000, v6, OS_LOG_TYPE_DEFAULT, "Finished checking iCDP status with isEnabled=%i error=%@", buf, 0x12u);
  }

  if (a2)
  {
    [*(a1 + 32) _enrollOrDisableCDPAfterEnabledStateVerified:*(a1 + 40)];
  }

  else
  {
    v7 = *(a1 + 32);
    if (v5)
    {
      [*(a1 + 32) _handleiCDPStatusCheckError:v5 completion:*(a1 + 40)];
    }

    else
    {
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __66__CDPDStateMachine__handleCloudDataProtectionStateWithCompletion___block_invoke_79;
      v9[3] = &unk_278E25F90;
      v10 = *(a1 + 40);
      [v7 _attemptCDPEnable:v9];
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

uint64_t __66__CDPDStateMachine__handleCloudDataProtectionStateWithCompletion___block_invoke_79(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_handleiCDPStatusCheckError:(id)error completion:(id)completion
{
  errorCopy = error;
  completionCopy = completion;
  if ([errorCopy isAuthKitUnableToPromptError])
  {
    if (![errorCopy isAuthKitUnableToPromptDueToNetworkError])
    {
      if (!completionCopy)
      {
        goto LABEL_8;
      }

      v6 = [CDPStateHandlerResult resultWithCloudDataProtectionEnabled:0 shouldCompleteSignIn:1 error:errorCopy];
      goto LABEL_7;
    }
  }

  else if (!completionCopy)
  {
    goto LABEL_8;
  }

  v6 = [CDPStateHandlerResult resultWithError:errorCopy];
LABEL_7:
  v7 = v6;
  completionCopy[2](completionCopy, v6);

LABEL_8:
}

- (void)_handleBeneficiaryTrustWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = _CDPLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24510B000, v5, OS_LOG_TYPE_DEFAULT, "Prompting for access key for beneficiary trust.", buf, 2u);
  }

  *buf = 0;
  v13 = buf;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__7;
  v16 = __Block_byref_object_dispose__7;
  selfCopy = self;
  context = selfCopy->_context;
  uiProvider = selfCopy->_uiProvider;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __58__CDPDStateMachine__handleBeneficiaryTrustWithCompletion___block_invoke;
  v9[3] = &unk_278E25FE0;
  v9[4] = selfCopy;
  v11 = buf;
  v8 = completionCopy;
  v10 = v8;
  [(CDPStateUIProviderInternal *)uiProvider cdpContext:context promptForBeneficiaryAccessKeyWithCompletion:v9];

  _Block_object_dispose(buf, 8);
}

void __58__CDPDStateMachine__handleBeneficiaryTrustWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _CDPLogSystem();
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_24510B000, v8, OS_LOG_TYPE_DEFAULT, "Successfully obtained access code. Trying to recover trust...", buf, 2u);
    }

    v9 = *(*(a1 + 32) + 96);
    v15 = *(a1 + 48);
    v13 = v5;
    v14 = *(a1 + 40);
    cdp_dispatch_async_with_qos();

    v10 = v13;
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __58__CDPDStateMachine__handleBeneficiaryTrustWithCompletion___block_invoke_cold_1();
    }

    v10 = [CDPStateHandlerResult resultWithCloudDataProtectionEnabled:0 shouldCompleteSignIn:1 error:v6];
    (*(*(a1 + 40) + 16))();
    v11 = *(*(a1 + 48) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = 0;
  }
}

void __58__CDPDStateMachine__handleBeneficiaryTrustWithCompletion___block_invoke_81(void *a1)
{
  [*(*(a1[6] + 8) + 40) _attemptBeneficiaryTrustWithInheritanceKey:a1[4] retryCount:0 completion:a1[5]];
  v2 = *(a1[6] + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

- (void)_attemptBeneficiaryTrustWithInheritanceKey:(id)key retryCount:(unint64_t)count completion:(id)completion
{
  v33 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  completionCopy = completion;
  v10 = _CDPLogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    countCopy = count;
    _os_log_impl(&dword_24510B000, v10, OS_LOG_TYPE_DEFAULT, "Checking for circle status in order to put beneficiary account in trust, attempt #%lu.", buf, 0xCu);
  }

  circleController = [(CDPDStateMachine *)self circleController];
  circleStatus = [circleController circleStatus];

  if (circleStatus == 4 || circleStatus == 2)
  {
    inheritanceTrustController = self->_inheritanceTrustController;
    context = self->_context;
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __85__CDPDStateMachine__attemptBeneficiaryTrustWithInheritanceKey_retryCount_completion___block_invoke;
    v29[3] = &unk_278E24780;
    v30 = completionCopy;
    [(CDPInheritanceTrustController *)inheritanceTrustController recoverOctagonWithContext:context inheritanceKey:keyCopy completion:v29];
    v15 = v30;
LABEL_6:

    goto LABEL_7;
  }

  if (count <= 4 && circleStatus == 5)
  {
    v17 = _CDPLogSystem();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      [CDPDStateMachine _attemptBeneficiaryTrustWithInheritanceKey:? retryCount:? completion:?];
    }

    v18 = _CDPSignpostLogSystem();
    v19 = _CDPSignpostCreate();

    v20 = _CDPSignpostLogSystem();
    v21 = v20;
    if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_24510B000, v21, OS_SIGNPOST_INTERVAL_BEGIN, v19, "NoCKAccountBackOffRetry", " enableTelemetry=YES ", buf, 2u);
    }

    v22 = _CDPSignpostLogSystem();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      countCopy = v19;
      _os_log_impl(&dword_24510B000, v22, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: NoCKAccountBackOffRetry  enableTelemetry=YES ", buf, 0xCu);
    }

    dispatch_time(0, 1000000000 * (count ^ 2));
    cdpdStatemachineDefaultQueue = self->_cdpdStatemachineDefaultQueue;
    v27 = keyCopy;
    v28 = completionCopy;
    cdp_dispatch_after_with_qos();

    v15 = v27;
    goto LABEL_6;
  }

  v24 = _CDPLogSystem();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    [CDPDStateMachine _attemptBeneficiaryTrustWithInheritanceKey:retryCount:completion:];
  }

  v25 = _CDPStateError();
  v26 = [CDPStateHandlerResult resultWithCloudDataProtectionEnabled:0 shouldCompleteSignIn:1 error:v25];
  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, v26);
  }

LABEL_7:
  v16 = *MEMORY[0x277D85DE8];
}

void __85__CDPDStateMachine__attemptBeneficiaryTrustWithInheritanceKey_retryCount_completion___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _CDPLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"failure";
    if (!v3)
    {
      v5 = @"success";
    }

    v11 = 138412290;
    v12 = v5;
    _os_log_impl(&dword_24510B000, v4, OS_LOG_TYPE_DEFAULT, "Beneficiary trust recovery was a %@.", &v11, 0xCu);
  }

  if (v3)
  {
    v6 = _CDPLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __85__CDPDStateMachine__attemptBeneficiaryTrustWithInheritanceKey_retryCount_completion___block_invoke_cold_1();
    }

    v7 = [CDPStateHandlerResult resultWithCloudDataProtectionEnabled:0 shouldCompleteSignIn:1 error:v3];
  }

  else
  {
    if (!*(a1 + 32))
    {
      goto LABEL_16;
    }

    v7 = [CDPStateHandlerResult resultWithCloudDataProtectionEnabled:1 shouldCompleteSignIn:1 error:0];
    v8 = _CDPLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v7;
      _os_log_impl(&dword_24510B000, v8, OS_LOG_TYPE_DEFAULT, "Completing the beneficiary trust with results: %@", &v11, 0xCu);
    }
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))(v9, v7);
  }

LABEL_16:
  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __85__CDPDStateMachine__attemptBeneficiaryTrustWithInheritanceKey_retryCount_completion___block_invoke_90(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 56);
  v3 = *(a1 + 64);
  Nanoseconds = _CDPSignpostGetNanoseconds();
  v5 = _CDPSignpostLogSystem();
  v6 = v5;
  v7 = *(a1 + 56);
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    v8 = *(a1 + 72);
    v13 = 67240192;
    LODWORD(v14) = v8;
    _os_signpost_emit_with_name_impl(&dword_24510B000, v6, OS_SIGNPOST_INTERVAL_END, v7, "NoCKAccountBackOffRetry", " NextRetryInterval=%{public,signpost.telemetry:number1,name=NextRetryInterval}d ", &v13, 8u);
  }

  v9 = _CDPSignpostLogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 134218496;
    v10 = *(a1 + 72);
    v14 = *(a1 + 56);
    v15 = 2048;
    v16 = Nanoseconds / 1000000000.0;
    v17 = 1026;
    v18 = v10;
    _os_log_impl(&dword_24510B000, v9, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: NoCKAccountBackOffRetry  NextRetryInterval=%{public,signpost.telemetry:number1,name=NextRetryInterval}d ", &v13, 0x1Cu);
  }

  result = [*(a1 + 32) _attemptBeneficiaryTrustWithInheritanceKey:*(a1 + 40) retryCount:*(a1 + 80) completion:*(a1 + 48)];
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_enrollOrDisableCDPAfterEnabledStateVerified:(id)verified
{
  verifiedCopy = verified;
  if ([(CDPContext *)self->_context isiCDPEligible])
  {
    _forceManateeReset = [(CDPContext *)self->_context _forceManateeReset];
    v6 = _CDPLogSystem();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (_forceManateeReset)
    {
      if (v7)
      {
        *buf = 0;
        _os_log_impl(&dword_24510B000, v6, OS_LOG_TYPE_DEFAULT, "CDP Reset has been requested... hold on to your hats...", buf, 2u);
      }

      if (!self->_ledger)
      {
        _cachedRecoveryFlowContext = [(CDPDStateMachine *)self _cachedRecoveryFlowContext];
        [_cachedRecoveryFlowContext setContext:self->_context];
        v9 = [CDPEscapeOffersLedger alloc];
        mEMORY[0x277CFD480] = [MEMORY[0x277CFD480] sharedInstance];
        v11 = -[CDPEscapeOffersLedger initWithExpectedEscapeOffers:recoveryFlowContext:deviceHasPasscode:probationChecker:deviceIsVM:isICDPEnabled:](v9, "initWithExpectedEscapeOffers:recoveryFlowContext:deviceHasPasscode:probationChecker:deviceIsVM:isICDPEnabled:", 0, _cachedRecoveryFlowContext, 1, mEMORY[0x277CFD480], [MEMORY[0x277CFD560] isVirtualMachine], -[CDPContext isICDPEnabledFromNetwork](self->_context, "isICDPEnabledFromNetwork"));
        ledger = self->_ledger;
        self->_ledger = v11;
      }

      [(CDPDStateMachine *)self resetAccountCDPStateWithCompletion:verifiedCopy];
    }

    else
    {
      if (v7)
      {
        *buf = 0;
        _os_log_impl(&dword_24510B000, v6, OS_LOG_TYPE_DEFAULT, "iCDP is enabled on HSA2/MAID account, attempting to join circle...", buf, 2u);
      }

      circleController = self->_circleController;
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __65__CDPDStateMachine__enrollOrDisableCDPAfterEnabledStateVerified___block_invoke;
      v16[3] = &unk_278E26080;
      v16[4] = self;
      v17 = verifiedCopy;
      [(CDPDCircleControl *)circleController joinCircleWithCompletion:v16];
    }
  }

  else
  {
    v13 = _CDPLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_24510B000, v13, OS_LOG_TYPE_DEFAULT, "iCDP is enabled, but the account is not HSA2 enabled or an allowed managed account. Used to roll back iCDP enrollment previously, but these days we don't...", buf, 2u);
    }

    v14 = [CDPStateHandlerResult resultWithCloudDataProtectionEnabled:1 shouldCompleteSignIn:1 error:0];
    if (verifiedCopy)
    {
      (*(verifiedCopy + 2))(verifiedCopy, v14);
    }
  }
}

void __65__CDPDStateMachine__enrollOrDisableCDPAfterEnabledStateVerified___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v5 didJoin])
  {
    v7 = [*(a1 + 32) context];
    v8 = [v7 keychainSyncSystem];

    if (v8 == 1)
    {
      v9 = _CDPLogSystem();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        __65__CDPDStateMachine__enrollOrDisableCDPAfterEnabledStateVerified___block_invoke_cold_2();
      }

      v10 = *(a1 + 40);
      v11 = +[CDPStateHandlerResult successResult];
      goto LABEL_15;
    }

    [*(a1 + 32) _enableSecureBackupWithJoinResult:v5 completion:*(a1 + 40)];
  }

  else
  {
    v12 = [v5 needsBackupRecovery];
    v13 = _CDPLogSystem();
    v14 = v13;
    if (v12)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_24510B000, v14, OS_LOG_TYPE_DEFAULT, "Attempting to RECOVER backup", buf, 2u);
      }

      v15 = *(a1 + 32);
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __65__CDPDStateMachine__enrollOrDisableCDPAfterEnabledStateVerified___block_invoke_92;
      v17[3] = &unk_278E25C78;
      v17[4] = v15;
      v18 = *(a1 + 40);
      [v15 _recoverSecureBackupWithCircleJoinResult:v5 completion:v17];
    }

    else
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        __65__CDPDStateMachine__enrollOrDisableCDPAfterEnabledStateVerified___block_invoke_cold_1();
      }

      v10 = *(a1 + 40);
      if (v10)
      {
        v11 = [CDPStateHandlerResult resultWithError:v6];
LABEL_15:
        v16 = v11;
        (*(v10 + 16))(v10, v11);
      }
    }
  }
}

void __65__CDPDStateMachine__enrollOrDisableCDPAfterEnabledStateVerified___block_invoke_92(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = _CDPLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109634;
    v20 = a2;
    v21 = 1024;
    v22 = a3;
    v23 = 2112;
    v24 = v7;
    _os_log_impl(&dword_24510B000, v8, OS_LOG_TYPE_DEFAULT, "Finished recovering backup with didRecover=%i didRequestReset=%i error=%@", buf, 0x18u);
  }

  if (a3)
  {
    if ([MEMORY[0x277CFD4A8] isSubsetOfContextTypeSignIn:{objc_msgSend(*(*(a1 + 32) + 8), "type")}])
    {
      v9 = _CDPLogSystem();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        __65__CDPDStateMachine__enrollOrDisableCDPAfterEnabledStateVerified___block_invoke_92_cold_1();
      }

      v10 = *(a1 + 40);
      if (v10)
      {
        v11 = _CDPStateError();
        v12 = [CDPStateHandlerResult resultWithError:v11];
        (*(v10 + 16))(v10, v12);
      }
    }

    else
    {
      v15 = *(a1 + 32);
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __65__CDPDStateMachine__enrollOrDisableCDPAfterEnabledStateVerified___block_invoke_93;
      v17[3] = &unk_278E26058;
      v17[4] = v15;
      v18 = *(a1 + 40);
      [v15 resetAccountCDPStateWithCompletion:v17];
    }
  }

  else
  {
    v13 = [CDPStateHandlerResult resultWithCloudDataProtectionEnabled:a2 shouldCompleteSignIn:a2 error:v7];
    v14 = *(a1 + 40);
    if (v14)
    {
      (*(v14 + 16))(v14, v13);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __65__CDPDStateMachine__enrollOrDisableCDPAfterEnabledStateVerified___block_invoke_93(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _CDPLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24510B000, v4, OS_LOG_TYPE_DEFAULT, "Will show RPD completed alert", buf, 2u);
  }

  v5 = [v3 error];

  if (v5)
  {
    v6 = _CDPLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v3 error];
      *buf = 138412290;
      v29 = v7;
      _os_log_impl(&dword_24510B000, v6, OS_LOG_TYPE_DEFAULT, "Error while performing RPD: %@", buf, 0xCu);
    }

    v8 = *(a1 + 32);
    v10 = *(v8 + 8);
    v9 = *(v8 + 16);
    v11 = [v3 error];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __65__CDPDStateMachine__enrollOrDisableCDPAfterEnabledStateVerified___block_invoke_94;
    v25[3] = &unk_278E26030;
    v12 = &v27;
    v13 = *(a1 + 40);
    v14 = &v26;
    v26 = v3;
    v27 = v13;
    v15 = v3;
    [v9 cdpContext:v10 showResetFailedAlertWithUnderlyingError:v11 completion:v25];
  }

  else
  {
    v16 = *(a1 + 32);
    v18 = *(v16 + 8);
    v17 = *(v16 + 16);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __65__CDPDStateMachine__enrollOrDisableCDPAfterEnabledStateVerified___block_invoke_96;
    v22[3] = &unk_278E26030;
    v12 = &v24;
    v19 = *(a1 + 40);
    v14 = &v23;
    v23 = v3;
    v24 = v19;
    v20 = v3;
    [v17 cdpContext:v18 showResetCompletedAlertWithCompletion:v22];
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __65__CDPDStateMachine__enrollOrDisableCDPAfterEnabledStateVerified___block_invoke_94(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2)
  {
    if (a2 != 1)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v6 = _CDPLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v5;
      _os_log_impl(&dword_24510B000, v6, OS_LOG_TYPE_DEFAULT, "Reset failed confirmation alert was not shown due to: %@", &v9, 0xCu);
    }
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, *(a1 + 32));
  }

LABEL_9:

  v8 = *MEMORY[0x277D85DE8];
}

void __65__CDPDStateMachine__enrollOrDisableCDPAfterEnabledStateVerified___block_invoke_96(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2)
  {
    if (a2 != 1)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v6 = _CDPLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v5;
      _os_log_impl(&dword_24510B000, v6, OS_LOG_TYPE_DEFAULT, "Reset completed confirmation alert was not shown due to: %@", &v9, 0xCu);
    }
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, *(a1 + 32));
  }

LABEL_9:

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_disableRecoveryKeyWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = completionCopy;
  secureBackupDisableController = self->_secureBackupDisableController;
  if (secureBackupDisableController)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __54__CDPDStateMachine__disableRecoveryKeyWithCompletion___block_invoke;
    v8[3] = &unk_278E24780;
    v9 = completionCopy;
    [(CDPDSecureBackupDisableCapable *)secureBackupDisableController disableRecoveryKeyWithCompletion:v8];
  }

  else if (completionCopy)
  {
    v7 = [MEMORY[0x277CCA9B8] cdp_errorWithCode:-5004];
    (v5)[2](v5, v7);
  }
}

void __54__CDPDStateMachine__disableRecoveryKeyWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _CDPLogSystem();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __54__CDPDStateMachine__disableRecoveryKeyWithCompletion___block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_24510B000, v5, OS_LOG_TYPE_DEFAULT, "Successfully disabled recovery key!", v7, 2u);
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, v3);
  }
}

- (void)resetAccountCDPStateWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = [MEMORY[0x277CE44D8] analyticsEventWithContext:self->_context eventName:*MEMORY[0x277CFD830] category:*MEMORY[0x277CFD930]];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __55__CDPDStateMachine_resetAccountCDPStateWithCompletion___block_invoke;
  aBlock[3] = &unk_278E25438;
  v6 = v5;
  v17 = v6;
  selfCopy = self;
  v7 = completionCopy;
  v19 = v7;
  v8 = _Block_copy(aBlock);
  if ([MEMORY[0x277CFD560] shouldCentralizeRPDFlow])
  {
    v9 = [[CDPDRPDExecutor alloc] initWithSbDeleter:self->_secureBackupDisableController ledger:self->_ledger circleControl:self->_circleController cdpContext:self->_context];
    v10 = os_transaction_create();
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __55__CDPDStateMachine_resetAccountCDPStateWithCompletion___block_invoke_103;
    v12[3] = &unk_278E260A8;
    v12[4] = self;
    v14 = v8;
    v15 = v7;
    v13 = v10;
    v11 = v10;
    [(CDPDRPDExecutor *)v9 performRPDWithCompletionHandler:v12];
  }

  else
  {
    [(CDPDStateMachine *)self _resetAccountCDPStateWithCompletion:v8];
  }
}

void __55__CDPDStateMachine_resetAccountCDPStateWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [MEMORY[0x277CCABB0] numberWithBool:a2];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:*MEMORY[0x277CFD6C0]];

  v7 = _CDPLogSystem();
  v8 = v7;
  if (a2)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_24510B000, v8, OS_LOG_TYPE_DEFAULT, "CDP reset succeeded, attempting to join/create the circle again", buf, 2u);
    }

    v9 = [MEMORY[0x277CFD490] rtcAnalyticsReporter];
    [v9 sendEvent:*(a1 + 32)];

    v11 = *(a1 + 40);
    v10 = *(a1 + 48);
    v12 = *(v11 + 32);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __55__CDPDStateMachine_resetAccountCDPStateWithCompletion___block_invoke_99;
    v16[3] = &unk_278E26080;
    v16[4] = v11;
    v17 = v10;
    [v12 joinCircleIgnoringBackups:1 completion:v16];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __55__CDPDStateMachine_resetAccountCDPStateWithCompletion___block_invoke_cold_1();
    }

    [*(a1 + 32) populateUnderlyingErrorsStartingWithRootError:v5];
    v13 = [MEMORY[0x277CFD490] rtcAnalyticsReporter];
    [v13 sendEvent:*(a1 + 32)];

    v14 = *(a1 + 48);
    if (v14)
    {
      v15 = [CDPStateHandlerResult resultWithError:v5];
      (*(v14 + 16))(v14, v15);
    }
  }
}

void __55__CDPDStateMachine_resetAccountCDPStateWithCompletion___block_invoke_99(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (![v5 didJoin])
  {
    v13 = *(a1 + 40);
    if (!v13)
    {
      goto LABEL_15;
    }

    v14 = [CDPStateHandlerResult resultWithError:v6];
LABEL_14:
    v15 = v14;
    (*(v13 + 16))(v13, v14);

    goto LABEL_15;
  }

  v7 = _CDPLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24510B000, v7, OS_LOG_TYPE_DEFAULT, "Joined circle after CDP reset. Attempting to disable RK...", buf, 2u);
  }

  [*(a1 + 32) _disableRecoveryKeyWithCompletion:0];
  v8 = [MEMORY[0x277CFD4F8] sharedInstance];
  v9 = [v8 hasLocalSecret];

  v10 = _CDPLogSystem();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v11)
    {
      *buf = 0;
      _os_log_impl(&dword_24510B000, v10, OS_LOG_TYPE_DEFAULT, "Joined circle after CDP reset. Enabling secure backup...", buf, 2u);
    }

    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __55__CDPDStateMachine_resetAccountCDPStateWithCompletion___block_invoke_100;
    v16[3] = &unk_278E24B10;
    v12 = *(a1 + 32);
    v17 = *(a1 + 40);
    [v12 _enableSecureBackupWithCircleJoinResult:v5 completion:v16];

    goto LABEL_15;
  }

  if (v11)
  {
    *buf = 0;
    _os_log_impl(&dword_24510B000, v10, OS_LOG_TYPE_DEFAULT, "Joined circle after CDP reset. Skipping secure backup because we don't have a secret", buf, 2u);
  }

  v13 = *(a1 + 40);
  if (v13)
  {
    v14 = +[CDPStateHandlerResult successResult];
    goto LABEL_14;
  }

LABEL_15:
}

void __55__CDPDStateMachine_resetAccountCDPStateWithCompletion___block_invoke_100(uint64_t a1, uint64_t a2, void *a3)
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
    _os_log_impl(&dword_24510B000, v6, OS_LOG_TYPE_DEFAULT, "Finished enabling secure backup after CDP reset with didEnable=%i error=%@...", v9, 0x12u);
  }

  if (*(a1 + 32))
  {
    v7 = [CDPStateHandlerResult resultWithCloudDataProtectionEnabled:a2 shouldCompleteSignIn:a2 error:v5];
    (*(*(a1 + 32) + 16))();
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __55__CDPDStateMachine_resetAccountCDPStateWithCompletion___block_invoke_103(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = _CDPLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __55__CDPDStateMachine_resetAccountCDPStateWithCompletion___block_invoke_103_cold_1();
  }

  if ([*(a1 + 32) _shouldRejoinCircleAfterPerformingRPDType:a2])
  {
    (*(*(a1 + 48) + 16))(*(a1 + 48), v5 == 0, v5);
  }

  else
  {
    if (v5)
    {
      [CDPStateHandlerResult resultWithError:v5];
    }

    else
    {
      +[CDPStateHandlerResult successResult];
    }
    v7 = ;
    v8 = *(a1 + 56);
    if (v8)
    {
      (*(v8 + 16))(v8, v7);
    }
  }
}

- (BOOL)_shouldRejoinCircleAfterPerformingRPDType:(unint64_t)type
{
  v4 = _CDPLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [CDPDStateMachine _shouldRejoinCircleAfterPerformingRPDType:];
  }

  return type == 0;
}

- (void)_enableSecureBackupWithJoinResult:(id)result completion:(id)completion
{
  resultCopy = result;
  completionCopy = completion;
  mEMORY[0x277CFD4F8] = [MEMORY[0x277CFD4F8] sharedInstance];
  hasLocalSecret = [mEMORY[0x277CFD4F8] hasLocalSecret];

  v10 = _CDPLogSystem();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (hasLocalSecret)
  {
    if (v11)
    {
      *buf = 0;
      _os_log_impl(&dword_24510B000, v10, OS_LOG_TYPE_DEFAULT, "Always attempting to enable secure backup...", buf, 2u);
    }

    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __65__CDPDStateMachine__enableSecureBackupWithJoinResult_completion___block_invoke;
    v13[3] = &unk_278E25320;
    v14 = resultCopy;
    selfCopy = self;
    v16 = completionCopy;
    [(CDPDStateMachine *)self _enableSecureBackupWithCircleJoinResult:v14 completion:v13];

    v12 = v14;
    goto LABEL_9;
  }

  if (v11)
  {
    *buf = 0;
    _os_log_impl(&dword_24510B000, v10, OS_LOG_TYPE_DEFAULT, "Device is in circle but has no local secret, skipping secure backup enable", buf, 2u);
  }

  [(CDPContext *)self->_context setSecureBackupEnablementNotRequired:1];
  if (completionCopy)
  {
    v12 = +[CDPStateHandlerResult successResult];
    (*(completionCopy + 2))(completionCopy, v12);
LABEL_9:
  }
}

void __65__CDPDStateMachine__enableSecureBackupWithJoinResult_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _CDPLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v16[0] = 67109378;
    v16[1] = a2;
    v17 = 2112;
    v18 = v5;
    _os_log_impl(&dword_24510B000, v6, OS_LOG_TYPE_DEFAULT, "Finished enabling secure backup with didEnable=%i error=%@...", v16, 0x12u);
  }

  if (a2)
  {
    v7 = [*(a1 + 32) remotePeeriCKState];
    v8 = 1;
    v9 = 1;
LABEL_9:
    v13 = [CDPStateHandlerResult resultWithCloudDataProtectionEnabled:v8 shouldCompleteSignIn:v9 peeriCloudKeychainState:v7 error:v5];
    v14 = *(a1 + 48);
    if (v14)
    {
      (*(v14 + 16))(v14, v13);
    }

    goto LABEL_15;
  }

  v10 = [*(*(a1 + 40) + 8) _disableAsyncSecureBackupEnrollment];
  v11 = _CDPLogSystem();
  v12 = v11;
  if (v10)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __65__CDPDStateMachine__enableSecureBackupWithJoinResult_completion___block_invoke_cold_1();
    }

    v7 = [*(a1 + 32) remotePeeriCKState];
    v8 = 0;
    v9 = 0;
    goto LABEL_9;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v16[0]) = 0;
    _os_log_impl(&dword_24510B000, v12, OS_LOG_TYPE_DEFAULT, "Secure backup enablement failed in non-repair flow, checking for existing records...", v16, 2u);
  }

  [*(a1 + 40) _handleSecureBackupEnablementFailureForNonRepairFlowWithCircleJoinResult:*(a1 + 32) completion:*(a1 + 48)];
LABEL_15:

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_handleSecureBackupEnablementFailureForNonRepairFlowWithCircleJoinResult:(id)result completion:(id)completion
{
  completionCopy = completion;
  v6 = _CDPLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24510B000, v6, OS_LOG_TYPE_DEFAULT, "Secure backup enablement failed in non-repair flow, checking if repair is needed using shouldPerformRepair...", buf, 2u);
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __104__CDPDStateMachine__handleSecureBackupEnablementFailureForNonRepairFlowWithCircleJoinResult_completion___block_invoke;
  v8[3] = &unk_278E24AE8;
  v8[4] = self;
  v9 = completionCopy;
  v7 = completionCopy;
  [(CDPDStateMachine *)self shouldPerformRepairWithOptionForceFetch:0 completion:v8];
}

void __104__CDPDStateMachine__handleSecureBackupEnablementFailureForNonRepairFlowWithCircleJoinResult_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = _CDPLogSystem();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&dword_24510B000, v6, OS_LOG_TYPE_DEFAULT, "shouldPerformRepair indicates repair needed, no viable escrow record found, posting repair follow-up", buf, 2u);
    }

    [*(a1 + 32) _postFollowUpForConfirmExistingSecret];
  }

  else
  {
    if (v7)
    {
      *v10 = 0;
      _os_log_impl(&dword_24510B000, v6, OS_LOG_TYPE_DEFAULT, "shouldPerformRepair indicates no repair needed, viable escrow record exists, treating as success", v10, 2u);
    }

    [*(*(a1 + 32) + 8) setSecureBackupEnablementNotRequired:1];
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    v9 = +[CDPStateHandlerResult successResult];
    (*(v8 + 16))(v8, v9);
  }
}

- (void)_handlePreflightError:(id)error completion:(id)completion
{
  v19 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  completionCopy = completion;
  if (([(CDPContext *)self->_context isiCDPEligible]& 1) != 0)
  {
    v8 = 1;
  }

  else
  {
    v8 = [MEMORY[0x277CFD4A8] isSubsetOfContextTypeRepair:{-[CDPContext type](self->_context, "type")}];
  }

  isFederatedAccount = [(CDPContext *)self->_context isFederatedAccount];
  context = [(CDPDStateMachine *)self context];
  managedAccountsAllowedInCDP = [context managedAccountsAllowedInCDP];

  v12 = _CDPLogSystem();
  v13 = v12;
  if (v8 && ((isFederatedAccount ^ 1 | managedAccountsAllowedInCDP) & 1) != 0)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [CDPDStateMachine _handlePreflightError:completion:];
    }

    if (completionCopy)
    {
      v14 = [CDPStateHandlerResult resultWithError:errorCopy];
      completionCopy[2](completionCopy, v14);
LABEL_17:
    }
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412290;
      v18 = errorCopy;
      _os_log_impl(&dword_24510B000, v13, OS_LOG_TYPE_DEFAULT, "Account preflight failed with error, continuing state machine - %@", &v17, 0xCu);
    }

    if (completionCopy)
    {
      if ([MEMORY[0x277CFD560] isAudioAccessory])
      {
        v14 = errorCopy;
      }

      else
      {
        v14 = 0;
      }

      v15 = [CDPStateHandlerResult resultWithCloudDataProtectionEnabled:0 shouldCompleteSignIn:1 error:v14];
      completionCopy[2](completionCopy, v15);

      goto LABEL_17;
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_attemptCDPEnable:(id)enable
{
  enableCopy = enable;
  context = self->_context;
  v14 = 0;
  v6 = [(CDPContext *)context isiCDPEligibleWithError:&v14];
  v7 = v14;
  if (v6)
  {
    if (!self->_attemptedCDPEnable)
    {
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __38__CDPDStateMachine__attemptCDPEnable___block_invoke;
      v12[3] = &unk_278E24AE8;
      v12[4] = self;
      v13 = enableCopy;
      [(CDPDStateMachine *)self _confirmCDPEligibilityWithCompletion:v12];

      goto LABEL_13;
    }

    v8 = _CDPLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [CDPDStateMachine _attemptCDPEnable:];
    }

    if (enableCopy)
    {
      v9 = _CDPStateError();
      v10 = [CDPStateHandlerResult resultWithError:v9];

LABEL_11:
      (*(enableCopy + 2))(enableCopy, v10);
    }
  }

  else
  {
    v11 = _CDPLogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [CDPDStateMachine _attemptCDPEnable:];
    }

    if (enableCopy)
    {
      v10 = [CDPStateHandlerResult resultWithCloudDataProtectionEnabled:0 shouldCompleteSignIn:1 error:v7];
      goto LABEL_11;
    }
  }

LABEL_13:
}

void __38__CDPDStateMachine__attemptCDPEnable___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = objc_alloc(MEMORY[0x277CE44D8]);
    v7 = [v6 initWithEventName:*MEMORY[0x277CFD648] eventCategory:*MEMORY[0x277CFD930] initData:0];
    v8 = [*(*(a1 + 32) + 8) telemetryFlowID];

    if (v8)
    {
      v9 = [*(*(a1 + 32) + 8) telemetryFlowID];
      [v7 setObject:v9 forKeyedSubscript:*MEMORY[0x277CE45A8]];
    }

    v10 = [*(*(a1 + 32) + 8) telemetryDeviceSessionID];

    if (v10)
    {
      v11 = [*(*(a1 + 32) + 8) telemetryDeviceSessionID];
      [v7 setObject:v11 forKeyedSubscript:*MEMORY[0x277CE4578]];
    }

    v12 = _CDPLogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_24510B000, v12, OS_LOG_TYPE_DEFAULT, "Attempting to enable iCDP...", buf, 2u);
    }

    v14 = *(a1 + 32);
    v13 = *(a1 + 40);
    v15 = *(v14 + 24);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __38__CDPDStateMachine__attemptCDPEnable___block_invoke_104;
    v18[3] = &unk_278E25438;
    v18[4] = v14;
    v19 = v7;
    v20 = v13;
    v16 = v7;
    [v15 enableCDPWithCompletion:v18];

    goto LABEL_13;
  }

  v17 = _CDPLogSystem();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    __38__CDPDStateMachine__attemptCDPEnable___block_invoke_cold_1();
  }

  if (*(a1 + 40))
  {
    v16 = [CDPStateHandlerResult resultWithCloudDataProtectionEnabled:0 shouldCompleteSignIn:1 error:v5];
    (*(*(a1 + 40) + 16))();
LABEL_13:
  }
}

void __38__CDPDStateMachine__attemptCDPEnable___block_invoke_104(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _CDPLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v11[0] = 67109378;
    v11[1] = a2;
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&dword_24510B000, v6, OS_LOG_TYPE_DEFAULT, "Finished enabling iCDP with didEnable=%i error=%@", v11, 0x12u);
  }

  [*(a1 + 32) _updateCDPEnableEventWithError:*(a1 + 40) error:v5 didEnable:a2];
  v7 = [MEMORY[0x277CFD490] rtcAnalyticsReporter];
  [v7 sendEvent:*(a1 + 40)];

  if (a2)
  {
    *(*(a1 + 32) + 72) = 1;
    [*(a1 + 32) _handleCloudDataProtectionStateWithCompletion:*(a1 + 48)];
  }

  else
  {
    v8 = *(a1 + 48);
    if (v8)
    {
      v9 = [CDPStateHandlerResult resultWithError:v5];
      (*(v8 + 16))(v8, v9);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_updateSOSCompatibilityMode
{
  context = [(CDPDStateMachine *)self context];
  if ([context isSOSNeeded])
  {
    isSOSCompatibilityOptInNeeded = 1;
  }

  else
  {
    context2 = [(CDPDStateMachine *)self context];
    isSOSCompatibilityOptInNeeded = [context2 isSOSCompatibilityOptInNeeded];
  }

  context3 = [(CDPDStateMachine *)self context];
  v11 = 0;
  v7 = [CDPCompatibilityModeUpdater setSOSCompatibilityMode:isSOSCompatibilityOptInNeeded context:context3 error:&v11];
  v8 = v11;

  if (isSOSCompatibilityOptInNeeded)
  {
    rtcAnalyticsReporter = [MEMORY[0x277CFD490] rtcAnalyticsReporter];
    v10 = [(CDPDStateMachine *)self _makeSOSCompatibilityModeEnableEvent:v7 error:v8];
    [rtcAnalyticsReporter sendEvent:v10];
  }
}

- (void)_initDependenciesWithContext:(id)context
{
  contextCopy = context;
  keychainSyncSystem = [contextCopy keychainSyncSystem];
  v6 = @"SOS";
  if (!keychainSyncSystem)
  {
    v6 = @"Octagon";
  }

  v7 = v6;
  v8 = _CDPLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [CDPDStateMachine _initDependenciesWithContext:];
  }

  if ([contextCopy keychainSyncSystem] == 1)
  {
    v9 = [objc_alloc(MEMORY[0x277CFD540]) initWithContext:contextCopy];
    v10 = [[CDPDSOSCircleController alloc] initWithUiProvider:self->_uiProvider delegate:self circleProxy:v9 octagonTrustProxy:0];
    circleController = self->_circleController;
    self->_circleController = v10;

    v12 = [[CDPDSOSSecureBackupController alloc] initWithContext:contextCopy uiProvider:self->_uiProvider delegate:self];
    v13 = 40;
  }

  else
  {
    v9 = [objc_alloc(MEMORY[0x277CFD498]) initWithContext:contextCopy];
    v14 = [CDPDCircleController alloc];
    uiProvider = self->_uiProvider;
    v16 = [[CDPDOctagonTrustProxyImpl alloc] initWithContext:contextCopy];
    v17 = [(CDPDCircleController *)v14 initWithUiProvider:uiProvider delegate:self circleProxy:v9 octagonTrustProxy:v16];
    v18 = self->_circleController;
    self->_circleController = v17;

    v12 = [[CDPDSecureBackupController alloc] initWithContext:contextCopy uiProvider:self->_uiProvider delegate:self];
    objc_storeStrong(&self->_secureBackupController, v12);
    objc_storeStrong(&self->_secureBackupEnableController, v12);
    v13 = 56;
  }

  v19 = *(&self->super.isa + v13);
  *(&self->super.isa + v13) = v12;

  v20 = [CDPDPCSController alloc];
  v21 = objc_alloc_init(MEMORY[0x277CFD520]);
  v22 = [(CDPDPCSController *)v20 initWithContext:contextCopy pcsProxy:v21];
  pcsController = self->_pcsController;
  self->_pcsController = v22;
}

void __85__CDPDStateMachine__shouldPerformAuthenticatedRepairWithOptionForceFetch_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _CDPLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __85__CDPDStateMachine__shouldPerformAuthenticatedRepairWithOptionForceFetch_completion___block_invoke_cold_1();
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v8 = [objc_alloc(MEMORY[0x277CFD4A8]) initWithAuthenticationResults:v5];
    [*(a1 + 32) _refreshAndAuthenticateWithContext:v8];
    [*(a1 + 32) _continueShouldPerformRepairWithOptionForceFetch:*(a1 + 48) completion:*(a1 + 40)];
  }
}

- (void)_continueShouldPerformRepairWithOptionForceFetch:(BOOL)fetch completion:(id)completion
{
  fetchCopy = fetch;
  v43 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __80__CDPDStateMachine__continueShouldPerformRepairWithOptionForceFetch_completion___block_invoke;
  aBlock[3] = &unk_278E24B10;
  v7 = completionCopy;
  v36 = v7;
  v8 = _Block_copy(aBlock);
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __80__CDPDStateMachine__continueShouldPerformRepairWithOptionForceFetch_completion___block_invoke_125;
  v33[3] = &unk_278E24B10;
  v9 = v8;
  v34 = v9;
  v10 = _Block_copy(v33);
  if (([(CDPContext *)self->_context isiCDPEligible]& 1) != 0)
  {
    circleProxy = [(CDPDCircleControl *)self->_circleController circleProxy];
    v32 = 0;
    v12 = [circleProxy combinedCircleStatus:&v32];
    v13 = v32;

    _localDeviceHasLocalSecret = [(CDPDStateMachine *)self _localDeviceHasLocalSecret];
    v15 = _localDeviceHasLocalSecret;
    if (v12 == 4 && !_localDeviceHasLocalSecret)
    {
      v16 = _CDPLogSystem();
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_30;
      }

      *buf = 138412290;
      v38 = v13;
      v17 = "HSA2/MAID account that has no local secret and never had a circle, repair not suggested (circle status: CDPSyncingStatusAbsent, error: %@)";
      v18 = v16;
      v19 = 12;
      goto LABEL_29;
    }

    if (v12 != 1)
    {
      v21 = _CDPLogSystem();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v12];
        *buf = 138412546;
        v38 = v22;
        v39 = 2112;
        v40 = v13;
        _os_log_impl(&dword_24510B000, v21, OS_LOG_TYPE_DEFAULT, "HSA2/MAID account that is not in circle, suggesting repair needed: %@, %@", buf, 0x16u);
      }

      if (v10)
      {
        v23 = _CDPStateErrorWithUnderlying();
        v10[2](v10, 1, v23);
      }

      goto LABEL_32;
    }

    if ([(CDPContext *)self->_context isBeneficiaryAccount])
    {
      v16 = _CDPLogSystem();
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_30;
      }

      *buf = 0;
      v17 = "Local account is a beneficiary alias and is already in circle, repair not needed";
LABEL_28:
      v18 = v16;
      v19 = 2;
LABEL_29:
      _os_log_impl(&dword_24510B000, v18, OS_LOG_TYPE_DEFAULT, v17, buf, v19);
LABEL_30:

      if (v10)
      {
        v10[2](v10, 0, 0);
      }

      goto LABEL_32;
    }

    if (!v15)
    {
      v16 = _CDPLogSystem();
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_30;
      }

      *buf = 0;
      v17 = "Local device does not have local secret and is already in circle, repair not needed";
      goto LABEL_28;
    }

    _makeEscrowRecordControllerWithCurrentContext = [(CDPDStateMachine *)self _makeEscrowRecordControllerWithCurrentContext];
    if (_makeEscrowRecordControllerWithCurrentContext)
    {
      if (fetchCopy)
      {
        v25 = 2;
      }

      else
      {
        v25 = 0;
      }

      v26 = _CDPLogSystem();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218498;
        v38 = v25;
        v39 = 2112;
        v40 = _makeEscrowRecordControllerWithCurrentContext;
        v41 = 2112;
        selfCopy = self;
        _os_log_impl(&dword_24510B000, v26, OS_LOG_TYPE_DEFAULT, "Using fetchSource (%lu) for escrow record controller (%@) in state machine (%@)", buf, 0x20u);
      }

      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __80__CDPDStateMachine__continueShouldPerformRepairWithOptionForceFetch_completion___block_invoke_126;
      v30[3] = &unk_278E260F8;
      v31 = v10;
      [_makeEscrowRecordControllerWithCurrentContext generateEscrowRecordStatusReportForLocalDeviceUsingFetchSource:v25 withCompletion:v30];
      v27 = v31;
    }

    else
    {
      v29 = _CDPLogSystem();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        [CDPDStateMachine _continueShouldPerformRepairWithOptionForceFetch:completion:];
      }

      if (!v10)
      {
        goto LABEL_39;
      }

      v27 = [MEMORY[0x277CCA9B8] cdp_errorWithCode:0];
      v10[2](v10, 0, v27);
    }

LABEL_39:
LABEL_32:

    goto LABEL_33;
  }

  v20 = _CDPLogSystem();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24510B000, v20, OS_LOG_TYPE_DEFAULT, "non-HSA2/allowed MAID account detected, skipping validation", buf, 2u);
  }

  if (v10)
  {
    v10[2](v10, 0, 0);
  }

LABEL_33:

  v28 = *MEMORY[0x277D85DE8];
}

void __80__CDPDStateMachine__continueShouldPerformRepairWithOptionForceFetch_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _CDPLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 67109378;
    v9[1] = a2;
    v10 = 2114;
    v11 = v5;
    _os_log_impl(&dword_24510B000, v6, OS_LOG_TYPE_DEFAULT, "shouldPerformRepair: %{BOOL}d, error: %{public}@", v9, 0x12u);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, a2, v5);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __80__CDPDStateMachine__continueShouldPerformRepairWithOptionForceFetch_completion___block_invoke_126(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v10 = [v5 deviceViability];
    v11 = [v10 recordViability];

    if (v11 == 1)
    {
      v12 = [v5 deviceViability];
      v13 = [v12 hasMachineId];

      if (v13)
      {
        v14 = [MEMORY[0x277CFD560] shouldValidatePasscodeGenerations];
        v15 = [v5 deviceViability];
        v16 = [v15 localSecretViability];

        v17 = _CDPLogSystem();
        v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
        if (!v14 || v16 != 3)
        {
          if (v18)
          {
            LOWORD(v26) = 0;
            _os_log_impl(&dword_24510B000, v17, OS_LOG_TYPE_DEFAULT, "Local device record is viable. No need for repair.", &v26, 2u);
          }

          v25 = *(a1 + 32);
          if (v25)
          {
            (*(v25 + 16))(v25, 0, 0);
          }

          goto LABEL_24;
        }

        if (v18)
        {
          LOWORD(v26) = 0;
          _os_log_impl(&dword_24510B000, v17, OS_LOG_TYPE_DEFAULT, "Passcode generation associated with the escrow record does not appear to match the local one.", &v26, 2u);
        }

        v19 = *(a1 + 32);
        if (!v19)
        {
          goto LABEL_24;
        }

        v20 = MEMORY[0x277CCA9B8];
        v21 = -5322;
      }

      else
      {
        v23 = _CDPLogSystem();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v26) = 0;
          _os_log_impl(&dword_24510B000, v23, OS_LOG_TYPE_DEFAULT, "Device does not have a machine ID.", &v26, 2u);
        }

        v19 = *(a1 + 32);
        if (!v19)
        {
          goto LABEL_24;
        }

        v20 = MEMORY[0x277CCA9B8];
        v21 = -5312;
      }
    }

    else
    {
      v22 = _CDPLogSystem();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v26) = 0;
        _os_log_impl(&dword_24510B000, v22, OS_LOG_TYPE_DEFAULT, "Escrow record for current device is not viable", &v26, 2u);
      }

      v19 = *(a1 + 32);
      if (!v19)
      {
        goto LABEL_24;
      }

      v20 = MEMORY[0x277CCA9B8];
      v21 = -5305;
    }

    v9 = [v20 cdp_errorWithCode:v21];
    (*(v19 + 16))(v19, 1, v9);
    goto LABEL_23;
  }

  v7 = _CDPLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v26 = 138412290;
    v27 = v6;
    _os_log_impl(&dword_24510B000, v7, OS_LOG_TYPE_DEFAULT, "Found error while attempting to generate escrow status report: %@", &v26, 0xCu);
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    v9 = [MEMORY[0x277CCA9B8] cdp_errorWithCode:-5311 underlyingError:v6];
    (*(v8 + 16))(v8, 0, v9);
LABEL_23:
  }

LABEL_24:

  v24 = *MEMORY[0x277D85DE8];
}

- (id)_makeEscrowRecordControllerWithCurrentContext
{
  v2 = [[CDPDEscrowRecordController alloc] initWithContext:self->_context];

  return v2;
}

- (BOOL)_localDeviceHasLocalSecret
{
  mEMORY[0x277CFD4F8] = [MEMORY[0x277CFD4F8] sharedInstance];
  hasLocalSecret = [mEMORY[0x277CFD4F8] hasLocalSecret];

  return hasLocalSecret;
}

- (id)_predicateForRepair
{
  peerID = [(CDPDCircleControl *)self->_circleController peerID];
  v3 = peerID;
  if (peerID)
  {
    v4 = MEMORY[0x277CCAC30];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __39__CDPDStateMachine__predicateForRepair__block_invoke;
    v7[3] = &unk_278E24668;
    v8 = peerID;
    v5 = [v4 predicateWithBlock:v7];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t __39__CDPDStateMachine__predicateForRepair__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 recordID];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (id)_predicateForRecordUpgradeCheckIgnoringBottled
{
  peerID = [(CDPDCircleControl *)self->_circleController peerID];
  v3 = peerID;
  if (peerID)
  {
    v4 = MEMORY[0x277CCAC30];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __66__CDPDStateMachine__predicateForRecordUpgradeCheckIgnoringBottled__block_invoke;
    v7[3] = &unk_278E24668;
    v8 = peerID;
    v5 = [v4 predicateWithBlock:v7];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

BOOL __66__CDPDStateMachine__predicateForRecordUpgradeCheckIgnoringBottled__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 recordID];
  if ([v4 isEqualToString:*(a1 + 32)])
  {
    v5 = [v3 machineID];
    v6 = v5 != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_predicateForRecordUpgradeCheck
{
  peerID = [(CDPDCircleControl *)self->_circleController peerID];
  v3 = peerID;
  if (peerID)
  {
    v4 = MEMORY[0x277CCAC30];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __51__CDPDStateMachine__predicateForRecordUpgradeCheck__block_invoke;
    v7[3] = &unk_278E24668;
    v8 = peerID;
    v5 = [v4 predicateWithBlock:v7];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

BOOL __51__CDPDStateMachine__predicateForRecordUpgradeCheck__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 recordID];
  if ([v4 isEqualToString:*(a1 + 32)])
  {
    v5 = [v3 machineID];
    if (v5)
    {
      v6 = [v3 simplePublicKey];
      v7 = v6 != 0;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_fetchUserInfo
{
  if ([MEMORY[0x277CFD560] isCDPRepairWithProximityBasedPiggybackingEnabled])
  {
    mEMORY[0x277CF0130] = [MEMORY[0x277CF0130] sharedInstance];
    context = [(CDPDStateMachine *)self context];
    altDSID = [context altDSID];
    v6 = [mEMORY[0x277CF0130] authKitAccountWithAltDSID:altDSID];

    mEMORY[0x277CF0130]2 = [MEMORY[0x277CF0130] sharedInstance];
    LOBYTE(context) = [mEMORY[0x277CF0130]2 piggybackingApprovalEligible:v6];

    if ((context & 1) == 0)
    {
      v8 = _CDPLogSystem();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        [CDPDStateMachine _fetchUserInfo];
      }

      v9 = objc_opt_new();
      context2 = [(CDPDStateMachine *)self context];
      altDSID2 = [context2 altDSID];
      [v9 getUserInformationForAltDSID:altDSID2 completion:&__block_literal_global_135];
    }
  }
}

void __34__CDPDStateMachine__fetchUserInfo__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = _CDPLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __34__CDPDStateMachine__fetchUserInfo__block_invoke_cold_1();
  }
}

- (void)repairCloudDataProtectionStateWithCompletion:(id)completion
{
  completionCopy = completion;
  [(CDPDStateMachine *)self _updateSOSCompatibilityMode];
  [(CDPDStateMachine *)self _fetchUserInfo];
  v5 = _CDPLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [CDPDStateMachine repairCloudDataProtectionStateWithCompletion:?];
  }

  if ([(CDPDStateMachine *)self _isInSOSCircle])
  {
    completionCopy[2](completionCopy, 1, 0);
  }

  else
  {
    [(CDPDStateMachine *)self _continueRepairCloudDataProtectionStateWithCompletion:completionCopy];
  }
}

- (void)_continueRepairCloudDataProtectionStateWithCompletion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __74__CDPDStateMachine__continueRepairCloudDataProtectionStateWithCompletion___block_invoke;
  aBlock[3] = &unk_278E24AE8;
  aBlock[4] = self;
  v5 = completionCopy;
  v18 = v5;
  v6 = _Block_copy(aBlock);
  if ([(CDPDCircleControl *)self->_circleController circleStatus]!= 1)
  {
    password = [(CDPContext *)self->_context password];
    if (password)
    {
      v9 = password;
      mEMORY[0x277CFD480] = [MEMORY[0x277CFD480] sharedInstance];
      primaryAccountStashedPRK = [mEMORY[0x277CFD480] primaryAccountStashedPRK];
      if (primaryAccountStashedPRK)
      {

LABEL_11:
        circleProxy = [(CDPDCircleControl *)self->_circleController circleProxy];
        [circleProxy registerCredentials];

        [(CDPDStateMachine *)self _authenticatedRepairCloudDataProtectionStateWithCompletion:v6];
        goto LABEL_20;
      }

      _eligibleToSkipAuth = [(CDPDStateMachine *)self _eligibleToSkipAuth];

      if (_eligibleToSkipAuth)
      {
        goto LABEL_11;
      }
    }

    else if ([(CDPDStateMachine *)self _eligibleToSkipAuth])
    {
      goto LABEL_11;
    }

    password2 = [(CDPContext *)self->_context password];
    if (password2)
    {
    }

    else if (![(CDPDStateMachine *)self _eligibleForSilentAuthenticatedRepair])
    {
      [(CDPDStateMachine *)self _performInteractivelyAuthenticatedRepair:v6];
      goto LABEL_20;
    }

    v15 = _CDPLogSystem();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&dword_24510B000, v15, OS_LOG_TYPE_DEFAULT, "Attempt silent authentication as we do not have stashed PRK and we do have password.", v16, 2u);
    }

    goto LABEL_19;
  }

  if (![MEMORY[0x277CFD560] isAudioAccessory])
  {
LABEL_19:
    [(CDPDStateMachine *)self _performSilentlyAuthenticatedRepair:v6];
    goto LABEL_20;
  }

  v7 = _CDPLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v16 = 0;
    _os_log_impl(&dword_24510B000, v7, OS_LOG_TYPE_DEFAULT, "[HomePod only] We are already in circle, ignoring repair request and calling completion(true, nil)", v16, 2u);
  }

  if (v5)
  {
    (*(v5 + 2))(v5, 1, 0);
  }

LABEL_20:
}

void __74__CDPDStateMachine__continueRepairCloudDataProtectionStateWithCompletion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = [*(*(a1 + 32) + 32) circleProxy];
  v7 = v6;
  if (a2)
  {
    [v6 reportSuccess];

    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __74__CDPDStateMachine__continueRepairCloudDataProtectionStateWithCompletion___block_invoke_2;
    v10[3] = &unk_278E26140;
    v8 = *(a1 + 32);
    v12 = *(a1 + 40);
    v13 = 1;
    v11 = v5;
    [v8 _joinSOSFromRepairCloudDataProtectionIfRequiredWithCompletion:v10];
  }

  else
  {
    [v6 reportFailure:v5];

    v9 = *(a1 + 40);
    if (v9)
    {
      (*(v9 + 16))(v9, 0, v5);
    }
  }
}

uint64_t __74__CDPDStateMachine__continueRepairCloudDataProtectionStateWithCompletion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 48), *(a1 + 32));
  }

  return result;
}

- (BOOL)_eligibleToSkipAuth
{
  passwordEquivToken = [(CDPContext *)self->_context passwordEquivToken];
  if (passwordEquivToken)
  {
    _eligibleForSilentAuthenticatedRepair = [(CDPDStateMachine *)self _eligibleForSilentAuthenticatedRepair];
  }

  else
  {
    _eligibleForSilentAuthenticatedRepair = 0;
  }

  return _eligibleForSilentAuthenticatedRepair;
}

- (BOOL)_eligibleForSilentAuthenticatedRepair
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = +[CDPDOctagonTrustProxyImpl octagonIsSOSFeatureEnabled];
  v4 = _CDPLogSystem();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
  if (v3)
  {
    if (v5)
    {
      [CDPDStateMachine _eligibleForSilentAuthenticatedRepair];
    }

    keychainSyncSystem = [(CDPContext *)self->_context keychainSyncSystem];
    _needsSOSRepair = [(CDPDStateMachine *)self _needsSOSRepair];
    v8 = _needsSOSRepair;
    v9 = keychainSyncSystem == 0 && !_needsSOSRepair;
    v4 = _CDPLogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v12[0] = 67109632;
      v12[1] = keychainSyncSystem == 0;
      v13 = 1024;
      v14 = v8;
      v15 = 1024;
      v16 = v9;
      _os_log_debug_impl(&dword_24510B000, v4, OS_LOG_TYPE_DEBUG, "Determined silent auth eligibility (isOT:%i, needsSOSRepair:%i): %i", v12, 0x14u);
    }
  }

  else
  {
    if (v5)
    {
      [CDPDStateMachine _eligibleForSilentAuthenticatedRepair];
    }

    LOBYTE(v9) = 1;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (BOOL)_needsSOSRepair
{
  if (![(CDPContext *)self->_context isSOSCompatibilityOptInNeeded])
  {
    return 0;
  }

  v3 = MEMORY[0x277CFD540];
  altDSID = [(CDPContext *)self->_context altDSID];
  v5 = [v3 syncingStatusForAltDSID:altDSID] != 1;

  return v5;
}

- (void)_performSilentlyAuthenticatedRepair:(id)repair
{
  repairCopy = repair;
  v5 = _CDPLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24510B000, v5, OS_LOG_TYPE_DEFAULT, "Starting silent authentication for repair", buf, 2u);
  }

  context = self->_context;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __56__CDPDStateMachine__performSilentlyAuthenticatedRepair___block_invoke;
  v8[3] = &unk_278E245F8;
  v8[4] = self;
  v9 = repairCopy;
  v7 = repairCopy;
  [CDPAuthenticationHelper silentAuthenticationForContext:context withCompletion:v8];
}

void __56__CDPDStateMachine__performSilentlyAuthenticatedRepair___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [objc_alloc(MEMORY[0x277CFD4A8]) initWithAuthenticationResults:v5];
    [v7 set_alwaysCreateEscrowRecord:{objc_msgSend(*(*(a1 + 32) + 8), "_alwaysCreateEscrowRecord")}];
    [v7 setType:{objc_msgSend(*(*(a1 + 32) + 8), "type")}];
    [v7 setSosCompatibilityType:{objc_msgSend(*(*(a1 + 32) + 8), "sosCompatibilityType")}];
    [v7 setKeychainSyncSystem:{objc_msgSend(*(*(a1 + 32) + 8), "keychainSyncSystem")}];
    [v7 setIsSOSCFUFlow:{objc_msgSend(*(*(a1 + 32) + 8), "isSOSCFUFlow")}];
    v8 = _CDPLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 134217984;
      v16 = [v7 type];
      _os_log_impl(&dword_24510B000, v8, OS_LOG_TYPE_DEFAULT, "_performSilentlyAuthenticatedRepair: set refreshedContext type to %ld", &v15, 0xCu);
    }

    v9 = [*(*(a1 + 32) + 8) password];
    v10 = [*(*(a1 + 32) + 8) oldPassword];
    [v7 setNewPassword:v9 oldPassword:v10];

    v11 = [*(*(a1 + 32) + 8) cachedLocalSecret];
    [v7 setCachedLocalSecret:v11];

    [v7 setCachedLocalSecretType:{objc_msgSend(*(*(a1 + 32) + 8), "cachedLocalSecretType")}];
    v12 = [*(*(a1 + 32) + 8) sharingChannel];
    [v7 setSharingChannel:v12];

    [v7 setDidAttemptSecureBackupEnablement:{objc_msgSend(*(*(a1 + 32) + 8), "didAttemptSecureBackupEnablement")}];
    [v7 setWillAttemptAsyncSecureBackupEnablement:{objc_msgSend(*(*(a1 + 32) + 8), "willAttemptAsyncSecureBackupEnablement")}];
    [v7 setSecureBackupEnablementNotRequired:{objc_msgSend(*(*(a1 + 32) + 8), "secureBackupEnablementNotRequired")}];
    [*(a1 + 32) _refreshAndAuthenticateWithContext:v7];
    [*(a1 + 32) _authenticatedRepairCloudDataProtectionStateWithCompletion:*(a1 + 40)];
  }

  else
  {
    v13 = _CDPLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __56__CDPDStateMachine__performSilentlyAuthenticatedRepair___block_invoke_cold_1();
    }

    [*(a1 + 32) _performInteractivelyAuthenticatedRepair:*(a1 + 40)];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_performInteractivelyAuthenticatedRepair:(id)repair
{
  repairCopy = repair;
  v5 = repairCopy;
  if (self->_uiProvider)
  {
    contextForPrimaryAccount = [MEMORY[0x277CFD4A8] contextForPrimaryAccount];
    uiProvider = self->_uiProvider;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __61__CDPDStateMachine__performInteractivelyAuthenticatedRepair___block_invoke;
    v9[3] = &unk_278E245F8;
    v9[4] = self;
    v10 = v5;
    [(CDPStateUIProviderInternal *)uiProvider cdpContext:contextForPrimaryAccount promptForInteractiveAuthenticationWithCompletion:v9];
  }

  else if (repairCopy)
  {
    v8 = _CDPStateError();
    (v5)[2](v5, 0, v8);
  }
}

void __61__CDPDStateMachine__performInteractivelyAuthenticatedRepair___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [objc_alloc(MEMORY[0x277CFD4A8]) initWithAuthenticationResults:v5];
    [v7 set_alwaysCreateEscrowRecord:{objc_msgSend(*(*(a1 + 32) + 8), "_alwaysCreateEscrowRecord")}];
    [v7 setSosCompatibilityType:{objc_msgSend(*(*(a1 + 32) + 8), "sosCompatibilityType")}];
    [v7 setKeychainSyncSystem:{objc_msgSend(*(*(a1 + 32) + 8), "keychainSyncSystem")}];
    [v7 setIsSOSCFUFlow:{objc_msgSend(*(*(a1 + 32) + 8), "isSOSCFUFlow")}];
    [v7 setType:{objc_msgSend(*(*(a1 + 32) + 8), "type")}];
    v8 = [*(*(a1 + 32) + 8) cachedLocalSecret];
    [v7 setCachedLocalSecret:v8];

    [v7 setCachedLocalSecretType:{objc_msgSend(*(*(a1 + 32) + 8), "cachedLocalSecretType")}];
    [v7 setDidAttemptSecureBackupEnablement:{objc_msgSend(*(*(a1 + 32) + 8), "didAttemptSecureBackupEnablement")}];
    [v7 setWillAttemptAsyncSecureBackupEnablement:{objc_msgSend(*(*(a1 + 32) + 8), "willAttemptAsyncSecureBackupEnablement")}];
    [v7 setSecureBackupEnablementNotRequired:{objc_msgSend(*(*(a1 + 32) + 8), "secureBackupEnablementNotRequired")}];
    [*(a1 + 32) _refreshAndAuthenticateWithContext:v7];
    [*(a1 + 32) _authenticatedRepairCloudDataProtectionStateWithCompletion:*(a1 + 40)];
  }

  else
  {
    v9 = _CDPLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __61__CDPDStateMachine__performInteractivelyAuthenticatedRepair___block_invoke_cold_1();
    }

    v10 = *(a1 + 40);
    if (v10)
    {
      (*(v10 + 16))(v10, 0, v6);
    }
  }
}

- (void)_refreshAndAuthenticateWithContext:(id)context
{
  v33 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v6 = _CDPLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v19) = 0;
    _os_log_impl(&dword_24510B000, v6, OS_LOG_TYPE_DEFAULT, "Refreshing with context", &v19, 2u);
  }

  objc_storeStrong(&self->_context, context);
  v7 = _CDPLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    type = [(CDPContext *)self->_context type];
    appleID = [(CDPContext *)self->_context appleID];
    dsid = [(CDPContext *)self->_context dsid];
    altDSID = [(CDPContext *)self->_context altDSID];
    v19 = 134219522;
    v20 = type;
    v21 = 2160;
    v22 = 1752392040;
    v23 = 2112;
    v24 = appleID;
    v25 = 2160;
    v26 = 1752392040;
    v27 = 2112;
    v28 = dsid;
    v29 = 2160;
    v30 = 1752392040;
    v31 = 2112;
    v32 = altDSID;
    _os_log_impl(&dword_24510B000, v7, OS_LOG_TYPE_DEFAULT, "_refreshAndAuthenticateWithContext: context type: %ld, appleID: %{mask.hash}@, dsid: %{mask.hash}@, adsid: %{mask.hash}@", &v19, 0x48u);
  }

  [(CDPDStateMachine *)self _initDependenciesWithContext:contextCopy];
  v12 = [CDPDPCSController alloc];
  context = self->_context;
  v14 = objc_alloc_init(MEMORY[0x277CFD520]);
  v15 = [(CDPDPCSController *)v12 initWithContext:context pcsProxy:v14];
  pcsController = self->_pcsController;
  self->_pcsController = v15;

  circleProxy = [(CDPDCircleControl *)self->_circleController circleProxy];
  [circleProxy registerCredentials];

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_authenticatedRepairCloudDataProtectionStateWithCompletion:(id)completion
{
  completionCopy = completion;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __79__CDPDStateMachine__authenticatedRepairCloudDataProtectionStateWithCompletion___block_invoke;
  v6[3] = &unk_278E25C50;
  v7 = completionCopy;
  v5 = completionCopy;
  [(CDPDStateMachine *)self handleCloudDataProtectionStateWithCompletion:v6];
}

uint64_t __79__CDPDStateMachine__authenticatedRepairCloudDataProtectionStateWithCompletion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a3, a4);
  }

  return result;
}

- (void)_preflightAccountStateWithContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  defaultStore = [MEMORY[0x277CB8F48] defaultStore];
  aa_primaryAppleAccount = [defaultStore aa_primaryAppleAccount];
  v10 = aa_primaryAppleAccount;
  if (aa_primaryAppleAccount)
  {
    accountProperties = [aa_primaryAppleAccount accountProperties];
    v12 = [accountProperties objectForKeyedSubscript:@"personID"];

    if (!v12)
    {
      goto LABEL_6;
    }

    dsid = [contextCopy dsid];
    if (!dsid)
    {
      goto LABEL_6;
    }

    v14 = dsid;
    dsid2 = [contextCopy dsid];
    stringValue = [dsid2 stringValue];
    v17 = [v12 isEqualToString:stringValue];

    if (v17)
    {
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __65__CDPDStateMachine__preflightAccountStateWithContext_completion___block_invoke;
      v21[3] = &unk_278E24B10;
      v22 = completionCopy;
      [(CDPDStateMachine *)self _enableKVSForAccount:v10 store:defaultStore completion:v21];
      v18 = v22;
    }

    else
    {
LABEL_6:
      v19 = _CDPLogSystem();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [CDPDStateMachine _preflightAccountStateWithContext:v12 completion:contextCopy];
      }

      if (!completionCopy)
      {
        goto LABEL_15;
      }

      v18 = _CDPStateError();
      (*(completionCopy + 2))(completionCopy, 0, v18);
    }

LABEL_15:
    goto LABEL_16;
  }

  v20 = _CDPLogSystem();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    [CDPDStateMachine _preflightAccountStateWithContext:completion:];
  }

  if (completionCopy)
  {
    v12 = _CDPStateError();
    (*(completionCopy + 2))(completionCopy, 0, v12);
    goto LABEL_15;
  }

LABEL_16:
}

void __65__CDPDStateMachine__preflightAccountStateWithContext_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      v7 = *(v6 + 16);
LABEL_8:
      v7();
    }
  }

  else
  {
    v8 = _CDPLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __65__CDPDStateMachine__preflightAccountStateWithContext_completion___block_invoke_cold_1();
    }

    v9 = *(a1 + 32);
    if (v9)
    {
      v7 = *(v9 + 16);
      goto LABEL_8;
    }
  }
}

- (void)_enableKVSForAccount:(id)account store:(id)store completion:(id)completion
{
  accountCopy = account;
  storeCopy = store;
  completionCopy = completion;
  v10 = _CDPLogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [CDPDStateMachine _enableKVSForAccount:store:completion:];
  }

  enabledDataclasses = [accountCopy enabledDataclasses];
  v12 = *MEMORY[0x277CB9140];
  v13 = [enabledDataclasses containsObject:*MEMORY[0x277CB9140]];

  v14 = _CDPLogSystem();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
  if (v13)
  {
    if (v15)
    {
      *buf = 0;
      _os_log_impl(&dword_24510B000, v14, OS_LOG_TYPE_DEFAULT, "KVS is already enabled!", buf, 2u);
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy, 1, 0);
    }
  }

  else
  {
    if (v15)
    {
      *buf = 0;
      _os_log_impl(&dword_24510B000, v14, OS_LOG_TYPE_DEFAULT, "Enabling KVS...", buf, 2u);
    }

    [accountCopy setEnabled:1 forDataclass:v12];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __58__CDPDStateMachine__enableKVSForAccount_store_completion___block_invoke;
    v16[3] = &unk_278E24B10;
    v17 = completionCopy;
    [storeCopy saveAccount:accountCopy withCompletionHandler:v16];
  }
}

void __58__CDPDStateMachine__enableKVSForAccount_store_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _CDPLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    v14 = a2;
    v15 = 2114;
    v16 = v5;
    _os_log_impl(&dword_24510B000, v6, OS_LOG_TYPE_DEFAULT, "Finished enabling KVS with success=%i error=%{public}@", buf, 0x12u);
  }

  if (a2)
  {
    v7 = 0;
  }

  else
  {
    if (v5)
    {
      v11 = *MEMORY[0x277CCA7E8];
      v12 = v5;
      v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    }

    else
    {
      v8 = 0;
    }

    v7 = _CDPStateError();
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))(v9, a2, v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_confirmCDPEligibilityWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([(CDPDStateMachine *)self shouldAllowCDPEnrollment])
  {
    secureBackupController = self->_secureBackupController;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __57__CDPDStateMachine__confirmCDPEligibilityWithCompletion___block_invoke;
    v8[3] = &unk_278E24B10;
    v9 = completionCopy;
    [(CDPDSecureBackupControl *)secureBackupController isEligibleForCDPWithCompletion:v8];
  }

  else
  {
    v6 = _CDPLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_24510B000, v6, OS_LOG_TYPE_DEFAULT, "Enabling iCDP on sign-in is disabled", v7, 2u);
    }

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0, 0);
    }
  }
}

uint64_t __57__CDPDStateMachine__confirmCDPEligibilityWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_recoverSecureBackupWithCircleJoinResult:(id)result completion:(id)completion
{
  resultCopy = result;
  completionCopy = completion;
  context = [(CDPDStateMachine *)self context];
  isLocalSecretCached = [context isLocalSecretCached];

  if (isLocalSecretCached)
  {
    v10 = _CDPLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_24510B000, v10, OS_LOG_TYPE_DEFAULT, "Attempting to recover backup using the cached local secret...", buf, 2u);
    }

    cachedLocalSecret = [(CDPContext *)self->_context cachedLocalSecret];
    cachedLocalSecretType = [(CDPContext *)self->_context cachedLocalSecretType];
    context2 = [(CDPDStateMachine *)self context];
    _useSecureBackupCachedPassphrase = [context2 _useSecureBackupCachedPassphrase];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __72__CDPDStateMachine__recoverSecureBackupWithCircleJoinResult_completion___block_invoke;
    v20[3] = &unk_278E25C50;
    v21 = completionCopy;
    [(CDPDStateMachine *)self _attemptBackupRecoveryWithLocalSecret:cachedLocalSecret type:cachedLocalSecretType useSecureBackupCachedSecret:_useSecureBackupCachedPassphrase circleJoinResult:resultCopy completion:v20];

    v15 = v21;
    goto LABEL_11;
  }

  if ([(CDPContext *)self->_context keychainSyncSystem]== 1)
  {
    v16 = _CDPLogSystem();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_24510B000, v16, OS_LOG_TYPE_DEFAULT, "Attempting to recover backup without using local secret for SOS Compatibility Mode", buf, 2u);
    }

    [(CDPDStateMachine *)self _attemptBackupRecoveryByPromptingForRemoteSecretWithLocalSecret:0 localSecretType:0 useSecureBackupCachedSecret:0 circleJoinResult:resultCopy completion:completionCopy];
  }

  else
  {
    if (self->_uiProvider)
    {
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __72__CDPDStateMachine__recoverSecureBackupWithCircleJoinResult_completion___block_invoke_141;
      v18[3] = &unk_278E25C50;
      v19 = completionCopy;
      [(CDPDStateMachine *)self _handleInteractiveRecoveryFlowWithCircleJoinResult:resultCopy completion:v18];
      v15 = v19;
LABEL_11:

      goto LABEL_12;
    }

    v17 = _CDPLogSystem();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [CDPDStateMachine _recoverSecureBackupWithCircleJoinResult:completion:];
    }

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0, 0, 0);
    }
  }

LABEL_12:
}

void __72__CDPDStateMachine__recoverSecureBackupWithCircleJoinResult_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = _CDPLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11[0] = 67109634;
    v11[1] = a2;
    v12 = 1024;
    v13 = a3;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&dword_24510B000, v8, OS_LOG_TYPE_DEFAULT, "Finished recovery attempt using the cached local secret with didRecover=%i didRequestReset=%i error=%@", v11, 0x18u);
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))(v9, a2, a3, v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __72__CDPDStateMachine__recoverSecureBackupWithCircleJoinResult_completion___block_invoke_141(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = _CDPLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11[0] = 67109634;
    v11[1] = a2;
    v12 = 1024;
    v13 = a3;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&dword_24510B000, v8, OS_LOG_TYPE_DEFAULT, "Finished recovery attempt using the secret provided by user. didRecover=%i didRequestReset=%i error=%@", v11, 0x18u);
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))(v9, a2, a3, v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_handleInteractiveRecoveryFlowWithCircleJoinResult:(id)result completion:(id)completion
{
  resultCopy = result;
  completionCopy = completion;
  mEMORY[0x277CFD4F8] = [MEMORY[0x277CFD4F8] sharedInstance];
  hasLocalSecret = [mEMORY[0x277CFD4F8] hasLocalSecret];

  if (hasLocalSecret)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __82__CDPDStateMachine__handleInteractiveRecoveryFlowWithCircleJoinResult_completion___block_invoke;
    aBlock[3] = &unk_278E26168;
    aBlock[4] = self;
    v20 = resultCopy;
    v21 = completionCopy;
    v10 = completionCopy;
    v11 = _Block_copy(aBlock);
    v12 = _CDPLogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_24510B000, v12, OS_LOG_TYPE_DEFAULT, "Prompting for local secret before recovering backup", buf, 2u);
    }

    [(CDPStateUIProviderInternal *)self->_uiProvider cdpContext:self->_context promptForLocalSecretWithCompletion:v11];
    v13 = v20;
  }

  else
  {
    v14 = _CDPLogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_24510B000, v14, OS_LOG_TYPE_DEFAULT, "Proceeding with backup recovery attempt without a local device secret", buf, 2u);
    }

    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __82__CDPDStateMachine__handleInteractiveRecoveryFlowWithCircleJoinResult_completion___block_invoke_144;
    v16[3] = &unk_278E25C50;
    v17 = completionCopy;
    v15 = completionCopy;
    [(CDPDStateMachine *)self _attemptBackupRecoveryWithLocalSecret:0 type:0 useSecureBackupCachedSecret:0 circleJoinResult:resultCopy completion:v16];
    v13 = v17;
  }
}

void __82__CDPDStateMachine__handleInteractiveRecoveryFlowWithCircleJoinResult_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _CDPLogSystem();
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_24510B000, v8, OS_LOG_TYPE_DEFAULT, "Proceeding with backup recovery attempt now that the local secret is known...", buf, 2u);
    }

    v9 = [v5 validatedSecret];
    [*(*(a1 + 32) + 8) setCachedLocalSecret:v9];

    [*(*(a1 + 32) + 8) setCachedLocalSecretType:{objc_msgSend(v5, "secretType")}];
    v10 = *(a1 + 32);
    v11 = [v5 validatedSecret];
    v12 = [v5 secretType];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __82__CDPDStateMachine__handleInteractiveRecoveryFlowWithCircleJoinResult_completion___block_invoke_142;
    v15[3] = &unk_278E25C50;
    v13 = *(a1 + 40);
    v16 = *(a1 + 48);
    [v10 _attemptBackupRecoveryWithLocalSecret:v11 type:v12 useSecureBackupCachedSecret:0 circleJoinResult:v13 completion:v15];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __82__CDPDStateMachine__handleInteractiveRecoveryFlowWithCircleJoinResult_completion___block_invoke_cold_1();
    }

    v14 = *(a1 + 48);
    if (v14)
    {
      (*(v14 + 16))(v14, 0, 0, v6);
    }
  }
}

void __82__CDPDStateMachine__handleInteractiveRecoveryFlowWithCircleJoinResult_completion___block_invoke_142(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v8 = _CDPLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    __82__CDPDStateMachine__handleInteractiveRecoveryFlowWithCircleJoinResult_completion___block_invoke_142_cold_1();
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))(v9, a2, a3, v7);
  }
}

void __82__CDPDStateMachine__handleInteractiveRecoveryFlowWithCircleJoinResult_completion___block_invoke_144(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v14 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = _CDPLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11[0] = 67109378;
    v11[1] = a2;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&dword_24510B000, v8, OS_LOG_TYPE_DEFAULT, "Finished backup recovery attempt without local secret with didRecover=%i error=%@", v11, 0x12u);
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))(v9, a2, a3, v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __119__CDPDStateMachine__attemptBackupRecoveryWithLocalSecret_type_useSecureBackupCachedSecret_circleJoinResult_completion___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _CDPLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_24510B000, v4, OS_LOG_TYPE_DEFAULT, "Silent recovery failed, attempting to recover by prompting for remote secret. error=%@", &v6, 0xCu);
  }

  if ([v3 isMissingCachedPassphraseError])
  {
    [*(*(a1 + 32) + 8) setCachedPassphraseMissing:1];
  }

  [*(a1 + 32) _attemptBackupRecoveryByPromptingForRemoteSecretWithLocalSecret:*(a1 + 40) localSecretType:*(a1 + 64) useSecureBackupCachedSecret:*(a1 + 72) circleJoinResult:*(a1 + 48) completion:*(a1 + 56)];

  v5 = *MEMORY[0x277D85DE8];
}

void __119__CDPDStateMachine__attemptBackupRecoveryWithLocalSecret_type_useSecureBackupCachedSecret_circleJoinResult_completion___block_invoke_154(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    if (v6)
    {
      (*(*(a1 + 48) + 16))();
    }

    else
    {
      v8 = [v5 recoveredClique];

      if (v8)
      {
        v9 = [*(*(a1 + 32) + 32) circleProxy];
        v10 = [v5 recoveredClique];
        [v9 didJoinCircleAfterRecovery:v10];

        v11 = _CDPLogSystem();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_24510B000, v11, OS_LOG_TYPE_DEFAULT, "Attempting to enable secure backup after successful SILENT recovery", buf, 2u);
        }

        [*(a1 + 40) setNonViableRequiresRepair:0];
        v12 = *(a1 + 40);
        v18[0] = MEMORY[0x277D85DD0];
        v18[1] = 3221225472;
        v18[2] = __119__CDPDStateMachine__attemptBackupRecoveryWithLocalSecret_type_useSecureBackupCachedSecret_circleJoinResult_completion___block_invoke_155;
        v18[3] = &unk_278E24B10;
        v19 = *(a1 + 56);
        [WeakRetained _postRecoveryEnableSecureBackupWithContext:v12 completion:v18];
        v13 = v19;
      }

      else
      {
        v14 = _CDPLogSystem();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_24510B000, v14, OS_LOG_TYPE_DEFAULT, "Attempting joinAfterRestore SILENT recovery for SOS only flow", buf, 2u);
        }

        v15 = [WeakRetained circleController];
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __119__CDPDStateMachine__attemptBackupRecoveryWithLocalSecret_type_useSecureBackupCachedSecret_circleJoinResult_completion___block_invoke_156;
        v16[3] = &unk_278E24B10;
        v17 = *(a1 + 56);
        [v15 joinCircleAfterRecoveryWithCompletion:v16];

        v13 = v17;
      }
    }
  }
}

void __119__CDPDStateMachine__attemptBackupRecoveryWithLocalSecret_type_useSecureBackupCachedSecret_circleJoinResult_completion___block_invoke_155(uint64_t a1, uint64_t a2, void *a3)
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
    _os_log_impl(&dword_24510B000, v6, OS_LOG_TYPE_DEFAULT, "Finished enabling secure backup after successful SILENT recovery with didEnable=%i error=%@", v9, 0x12u);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, a2, 0, v5);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __119__CDPDStateMachine__attemptBackupRecoveryWithLocalSecret_type_useSecureBackupCachedSecret_circleJoinResult_completion___block_invoke_156(uint64_t a1, uint64_t a2, void *a3)
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
    _os_log_impl(&dword_24510B000, v6, OS_LOG_TYPE_DEFAULT, "Finished joining circle with didJoin=%i error=%@", v9, 0x12u);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, a2, 0, v5);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_attemptBackupRecoveryByPromptingForRemoteSecretWithLocalSecret:(id)secret localSecretType:(unint64_t)type useSecureBackupCachedSecret:(BOOL)cachedSecret circleJoinResult:(id)result completion:(id)completion
{
  secretCopy = secret;
  resultCopy = result;
  completionCopy = completion;
  [(CDPDStateMachine *)self _enableCustodianRecoveryIfAvailableForContext:self->_context];
  _cachedRecoveryFlowContext = [(CDPDStateMachine *)self _cachedRecoveryFlowContext];
  [_cachedRecoveryFlowContext setContext:self->_context];
  [_cachedRecoveryFlowContext setHasPeersForRemoteApproval:{objc_msgSend(resultCopy, "hasPeersForRemoteApproval")}];
  [_cachedRecoveryFlowContext setIsWalrusEnabled:{-[CDPContext walrusStatus](self->_context, "walrusStatus") == 1}];
  v16 = _CDPLogSystem();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    [CDPDStateMachine _attemptBackupRecoveryByPromptingForRemoteSecretWithLocalSecret:localSecretType:useSecureBackupCachedSecret:circleJoinResult:completion:];
  }

  context = [(CDPDStateMachine *)self context];
  v18 = -[CDPDStateMachine _recoveryFlowControllerForKeychainSyncSystem:recoveryContext:](self, "_recoveryFlowControllerForKeychainSyncSystem:recoveryContext:", [context keychainSyncSystem], _cachedRecoveryFlowContext);

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __156__CDPDStateMachine__attemptBackupRecoveryByPromptingForRemoteSecretWithLocalSecret_localSecretType_useSecureBackupCachedSecret_circleJoinResult_completion___block_invoke;
  v23[3] = &unk_278E261E0;
  v24 = secretCopy;
  selfCopy = self;
  cachedSecretCopy = cachedSecret;
  v28 = completionCopy;
  typeCopy = type;
  v26 = resultCopy;
  v27 = _cachedRecoveryFlowContext;
  v19 = _cachedRecoveryFlowContext;
  v20 = completionCopy;
  v21 = resultCopy;
  v22 = secretCopy;
  [v18 beginRecovery:v23];
}

void __156__CDPDStateMachine__attemptBackupRecoveryByPromptingForRemoteSecretWithLocalSecret_localSecretType_useSecureBackupCachedSecret_circleJoinResult_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 validSecret];
  if (v7 || [v5 secretType] == 4 || objc_msgSend(v5, "secretType") == 6)
  {
  }

  else if ([v5 secretType] != 7)
  {
    if ([v5 userDidCancel])
    {
      v14 = _CDPLogSystem();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_24510B000, v14, OS_LOG_TYPE_DEFAULT, "User cancelled remote device secret entry", buf, 2u);
      }
    }

    else
    {
      v15 = [v5 userDidReset];
      v16 = _CDPLogSystem();
      v14 = v16;
      if (v15)
      {
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_24510B000, v14, OS_LOG_TYPE_DEFAULT, "User requested reset of their CDP state!", buf, 2u);
        }

        if (!*(a1 + 64))
        {
          goto LABEL_17;
        }

        v17 = [v5 cachedSecretForReenrollment];

        if (v17)
        {
          v18 = [v5 cachedSecretForReenrollment];
          v19 = [v18 validatedSecret];
          [*(*(a1 + 40) + 8) setCachedLocalSecret:v19];

          v20 = [v5 cachedSecretForReenrollment];
          [*(*(a1 + 40) + 8) setCachedLocalSecretType:{objc_msgSend(v20, "secretType")}];
        }

        v21 = [CDPEscapeOffersLedger alloc];
        v22 = [v5 requiredEscapeOffers];
        v23 = *(a1 + 56);
        v24 = [MEMORY[0x277CFD4F8] hasLocalSecret];
        v25 = [MEMORY[0x277CFD480] sharedInstance];
        v26 = -[CDPEscapeOffersLedger initWithExpectedEscapeOffers:recoveryFlowContext:deviceHasPasscode:probationChecker:deviceIsVM:isICDPEnabled:](v21, "initWithExpectedEscapeOffers:recoveryFlowContext:deviceHasPasscode:probationChecker:deviceIsVM:isICDPEnabled:", v22, v23, v24, v25, [MEMORY[0x277CFD560] isVirtualMachine], objc_msgSend(*(*(a1 + 40) + 8), "isICDPEnabledFromNetwork"));
        v27 = *(a1 + 40);
        v28 = *(v27 + 80);
        *(v27 + 80) = v26;

        [*(*(a1 + 40) + 80) insert:{objc_msgSend(v5, "escapeOffersPresentedMask")}];
        v8 = [objc_alloc(MEMORY[0x277CFD510]) initWithContext:*(*(a1 + 40) + 8)];
        (*(*(a1 + 64) + 16))();
LABEL_9:

        goto LABEL_17;
      }

      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        __156__CDPDStateMachine__attemptBackupRecoveryByPromptingForRemoteSecretWithLocalSecret_localSecretType_useSecureBackupCachedSecret_circleJoinResult_completion___block_invoke_cold_1();
      }
    }

    v29 = *(a1 + 64);
    if (!v29)
    {
      goto LABEL_17;
    }

    v13 = *(v29 + 16);
    goto LABEL_16;
  }

  if (*(a1 + 32) || [*(a1 + 40) _checkSecureBackupCachedSecretValue] && *(a1 + 80) == 1)
  {
    v8 = objc_alloc_init(CDPDSecureBackupContext);
    [(CDPDSecureBackupContext *)v8 setLocalSecretType:*(a1 + 72)];
    [(CDPDSecureBackupContext *)v8 setLocalSecret:*(a1 + 32)];
    [(CDPDSecureBackupContext *)v8 setUsePreviouslyCachedSecret:*(a1 + 80)];
    [(CDPDSecureBackupContext *)v8 setCircleJoinResult:*(a1 + 48)];
    v9 = _CDPLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_24510B000, v9, OS_LOG_TYPE_DEFAULT, "Attempting to enable secure backup after successful INTERACTIVE recovery with multiple-ICSC already in use", buf, 2u);
    }

    v10 = *(a1 + 40);
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __156__CDPDStateMachine__attemptBackupRecoveryByPromptingForRemoteSecretWithLocalSecret_localSecretType_useSecureBackupCachedSecret_circleJoinResult_completion___block_invoke_158;
    v30[3] = &unk_278E24B10;
    v31 = *(a1 + 64);
    [v10 _postRecoveryEnableSecureBackupWithContext:v8 completion:v30];

    goto LABEL_9;
  }

  v11 = _CDPLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24510B000, v11, OS_LOG_TYPE_DEFAULT, "Skipping enable of SecureBackup after successful INTERACTIVE recovery due to no local secret being present", buf, 2u);
  }

  v12 = *(a1 + 64);
  if (v12)
  {
    v13 = *(v12 + 16);
LABEL_16:
    v13();
  }

LABEL_17:
}

void __156__CDPDStateMachine__attemptBackupRecoveryByPromptingForRemoteSecretWithLocalSecret_localSecretType_useSecureBackupCachedSecret_circleJoinResult_completion___block_invoke_158(uint64_t a1, uint64_t a2, void *a3)
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
    _os_log_impl(&dword_24510B000, v6, OS_LOG_TYPE_DEFAULT, "Finished enabling secure backup after successful INTERACTIVE recovery with didEnable=%i error=%@", v9, 0x12u);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, a2, 0, v5);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (id)_recoveryFlowControllerForKeychainSyncSystem:(int64_t)system recoveryContext:(id)context
{
  v5 = off_278E23568;
  if (system != 1)
  {
    v5 = off_278E23548;
  }

  v6 = *v5;
  contextCopy = context;
  v8 = [v6 alloc];
  uiProvider = self->_uiProvider;
  secureBackupController = self->_secureBackupController;
  circleController = [(CDPDStateMachine *)self circleController];
  v12 = [v8 initWithContext:contextCopy uiProvider:uiProvider secureBackupController:secureBackupController circleController:circleController];

  return v12;
}

- (void)_enableCustodianRecoveryIfAvailableForContext:(id)context
{
  contextCopy = context;
  mEMORY[0x277CF0130] = [MEMORY[0x277CF0130] sharedInstance];
  altDSID = [contextCopy altDSID];
  v6 = [mEMORY[0x277CF0130] authKitAccountWithAltDSID:altDSID];

  if (v6)
  {
    v7 = [mEMORY[0x277CF0130] custodianEnabledForAccount:v6];
    v8 = _CDPLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [CDPDStateMachine _enableCustodianRecoveryIfAvailableForContext:];
    }

    v9 = contextCopy;
    v10 = v7;
  }

  else
  {
    v9 = contextCopy;
    v10 = 0;
  }

  [v9 set_supportsCustodianRecovery:v10];
}

- (void)_postRecoveryEnableSecureBackupWithContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  v8 = _CDPLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [CDPDStateMachine _postRecoveryEnableSecureBackupWithContext:completion:];
  }

  if (self->_secureBackupEnableController)
  {
    circleJoinResult = [contextCopy circleJoinResult];
    if ([circleJoinResult hasPeersWithCDPBackupRecords])
    {
      disableAsyncModeRequested = [(CDPContext *)self->_context disableAsyncModeRequested];

      if (!disableAsyncModeRequested)
      {
        [(CDPContext *)self->_context setWillAttemptAsyncSecureBackupEnablement:1];
        v11 = _CDPLogSystem();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          [CDPDStateMachine _postRecoveryEnableSecureBackupWithContext:completion:];
        }

        v12 = os_transaction_create();
        cdpdStatemachineDefaultQueue = self->_cdpdStatemachineDefaultQueue;
        v19 = MEMORY[0x277D85DD0];
        v20 = 3221225472;
        v21 = __74__CDPDStateMachine__postRecoveryEnableSecureBackupWithContext_completion___block_invoke;
        v22 = &unk_278E26208;
        v23 = contextCopy;
        selfCopy = self;
        v25 = v12;
        v14 = v12;
        cdp_dispatch_async_with_qos();
        if (completionCopy)
        {
          completionCopy[2](completionCopy, 1, 0);
        }

        goto LABEL_13;
      }
    }

    else
    {
    }

    v15 = _CDPLogSystem();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [CDPDStateMachine _postRecoveryEnableSecureBackupWithContext:completion:];
    }

    secureBackupEnableController = self->_secureBackupEnableController;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __74__CDPDStateMachine__postRecoveryEnableSecureBackupWithContext_completion___block_invoke_164;
    v17[3] = &unk_278E24AE8;
    v17[4] = self;
    v18 = completionCopy;
    [(CDPDSecureBackupEnableCapable *)secureBackupEnableController upgradeICSCRecordsThenEnableSecureBackupWithContext:contextCopy completion:v17];
  }

  else if (completionCopy)
  {
    v14 = [MEMORY[0x277CCA9B8] cdp_errorWithCode:-5004];
    (completionCopy)[2](completionCopy, 0, v14);
LABEL_13:
  }
}

void __74__CDPDStateMachine__postRecoveryEnableSecureBackupWithContext_completion___block_invoke(uint64_t a1)
{
  v2 = _CDPLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24510B000, v2, OS_LOG_TYPE_DEFAULT, "We don't want to back up the recovery key after silently recovering with the recovery key. Removing from backup context", buf, 2u);
  }

  [*(a1 + 32) setRecoveryKey:0];
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(v3 + 48);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __74__CDPDStateMachine__postRecoveryEnableSecureBackupWithContext_completion___block_invoke_163;
  v6[3] = &unk_278E25CC8;
  v6[4] = v3;
  v7 = *(a1 + 48);
  [v5 enableSecureBackupWithContext:v4 completion:v6];
}

void __74__CDPDStateMachine__postRecoveryEnableSecureBackupWithContext_completion___block_invoke_163(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = _CDPLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24510B000, v5, OS_LOG_TYPE_DEFAULT, "Finished asynchronous enabling Secure Backup", buf, 2u);
  }

  if ([v4 cdp_isCDPErrorWithCode:-5501])
  {
    v6 = _CDPLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __74__CDPDStateMachine__postRecoveryEnableSecureBackupWithContext_completion___block_invoke_163_cold_2();
    }

    [*(a1 + 32) _postFollowUpForConfirmExistingSecret];
  }

  else if (v4)
  {
    v7 = _CDPLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __74__CDPDStateMachine__postRecoveryEnableSecureBackupWithContext_completion___block_invoke_163_cold_1();
    }
  }

  v10 = 0;
  if ([MEMORY[0x277CFD560] deferSOSFromSignIn] && SOSCCFetchCompatibilityMode())
  {
    v8 = _CDPLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_24510B000, v8, OS_LOG_TYPE_DEFAULT, "Skipping uncaching, letting async'd SOS state machine do the job", v9, 2u);
    }
  }

  else
  {
    [*(*(a1 + 32) + 104) unlock];
    v8 = [*(*(a1 + 32) + 40) secureBackupProxy];
    [v8 uncacheAllSecrets];
  }
}

void __74__CDPDStateMachine__postRecoveryEnableSecureBackupWithContext_completion___block_invoke_164(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  [*(*(a1 + 32) + 8) setDidAttemptSecureBackupEnablement:1];
  if (a2)
  {
    v5 = [*(*(a1 + 32) + 40) secureBackupProxy];
    [v5 uncacheAllSecrets];
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, a2, v7);
  }

  [*(*(a1 + 32) + 104) unlock];
}

- (void)_postFollowUpForConfirmExistingSecret
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_24510B000, v0, v1, "Experienced error while attempting to post confirmExistingSecret CFU: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_enableSecureBackupWithCircleJoinResult:(id)result completion:(id)completion
{
  resultCopy = result;
  completionCopy = completion;
  v8 = completionCopy;
  if (self->_secureBackupEnableController)
  {
    v9 = objc_alloc_init(CDPDSecureBackupContext);
    cachedLocalSecret = [(CDPContext *)self->_context cachedLocalSecret];
    [(CDPDSecureBackupContext *)v9 setLocalSecret:cachedLocalSecret];

    [(CDPDSecureBackupContext *)v9 setLocalSecretType:[(CDPContext *)self->_context cachedLocalSecretType]];
    [(CDPDSecureBackupContext *)v9 setUsePreviouslyCachedSecret:[(CDPContext *)self->_context _useSecureBackupCachedPassphrase]];
    [(CDPDSecureBackupContext *)v9 setCircleJoinResult:resultCopy];
    telemetryDeviceSessionID = [(CDPContext *)self->_context telemetryDeviceSessionID];
    [(CDPDSecureBackupContext *)v9 setTelemetryDeviceSessionID:telemetryDeviceSessionID];

    telemetryFlowID = [(CDPContext *)self->_context telemetryFlowID];
    [(CDPDSecureBackupContext *)v9 setTelemetryFlowID:telemetryFlowID];

    if ([resultCopy hasPeersWithCDPBackupRecords] && !-[CDPContext disableAsyncModeRequested](self->_context, "disableAsyncModeRequested"))
    {
      [(CDPContext *)self->_context setWillAttemptAsyncSecureBackupEnablement:1];
      v21 = os_transaction_create();
      cdpdStatemachineDefaultQueue = self->_cdpdStatemachineDefaultQueue;
      v32 = MEMORY[0x277D85DD0];
      v33 = 3221225472;
      v34 = __71__CDPDStateMachine__enableSecureBackupWithCircleJoinResult_completion___block_invoke;
      v35 = &unk_278E26208;
      selfCopy = self;
      v37 = v9;
      v38 = v21;
      v23 = v21;
      cdp_dispatch_async_with_qos();
      if (v8)
      {
        v8[2](v8, 1, 0);
      }

      goto LABEL_18;
    }

    context = [(CDPDStateMachine *)self context];
    isLocalSecretCached = [context isLocalSecretCached];

    if (isLocalSecretCached)
    {
      v15 = _CDPLogSystem();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_24510B000, v15, OS_LOG_TYPE_DEFAULT, "Attempting to enable secure backup using the cached secret", buf, 2u);
      }

      secureBackupEnableController = self->_secureBackupEnableController;
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __71__CDPDStateMachine__enableSecureBackupWithCircleJoinResult_completion___block_invoke_166;
      v29[3] = &unk_278E24AE8;
      v29[4] = self;
      v30 = v8;
      [(CDPDSecureBackupEnableCapable *)secureBackupEnableController upgradeICSCRecordsThenEnableSecureBackupWithContext:v9 completion:v29];
      v17 = v30;
    }

    else
    {
      if (!self->_uiProvider)
      {
        v24 = _CDPLogSystem();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          [CDPDStateMachine _enableSecureBackupWithCircleJoinResult:completion:];
        }

        if (v8)
        {
          v8[2](v8, 0, 0);
        }

        goto LABEL_18;
      }

      secureBackupProxy = [(CDPDSecureBackupControl *)self->_secureBackupController secureBackupProxy];
      [secureBackupProxy uncacheAllSecrets];

      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __71__CDPDStateMachine__enableSecureBackupWithCircleJoinResult_completion___block_invoke_167;
      aBlock[3] = &unk_278E26168;
      v26 = v9;
      selfCopy2 = self;
      v28 = v8;
      v19 = _Block_copy(aBlock);
      v20 = _CDPLogSystem();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_24510B000, v20, OS_LOG_TYPE_DEFAULT, "Asking the UI provider to prompt for the local device secret", buf, 2u);
      }

      [(CDPStateUIProviderInternal *)self->_uiProvider cdpContext:self->_context promptForLocalSecretWithCompletion:v19];
      v17 = v26;
    }

LABEL_18:
    goto LABEL_19;
  }

  if (completionCopy)
  {
    v9 = [MEMORY[0x277CCA9B8] cdp_errorWithCode:-5004];
    (v8)[2](v8, 0, v9);
    goto LABEL_18;
  }

LABEL_19:
}

void __71__CDPDStateMachine__enableSecureBackupWithCircleJoinResult_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(v1 + 48);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __71__CDPDStateMachine__enableSecureBackupWithCircleJoinResult_completion___block_invoke_2;
  v4[3] = &unk_278E25CC8;
  v4[4] = v1;
  v5 = *(a1 + 48);
  [v3 enableSecureBackupWithContext:v2 completion:v4];
}

uint64_t __71__CDPDStateMachine__enableSecureBackupWithCircleJoinResult_completion___block_invoke_2(uint64_t a1)
{
  v2 = _CDPLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_24510B000, v2, OS_LOG_TYPE_DEFAULT, "Finished asynchronous enabling Secure Backup", v5, 2u);
  }

  v3 = [*(*(a1 + 32) + 40) secureBackupProxy];
  [v3 uncacheAllSecrets];

  return [*(*(a1 + 32) + 104) unlock];
}

void __71__CDPDStateMachine__enableSecureBackupWithCircleJoinResult_completion___block_invoke_166(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  [*(*(a1 + 32) + 8) setDidAttemptSecureBackupEnablement:1];
  if (a2)
  {
    v6 = [*(*(a1 + 32) + 40) secureBackupProxy];
    [v6 uncacheAllSecrets];
  }

  v7 = _CDPLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10[0] = 67109378;
    v10[1] = a2;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_24510B000, v7, OS_LOG_TYPE_DEFAULT, "Finished enabling secure backup using the cached secret with didEnable=%i error=%@", v10, 0x12u);
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    (*(v8 + 16))(v8, a2, v5);
  }

  [*(*(a1 + 32) + 104) unlock];

  v9 = *MEMORY[0x277D85DE8];
}

void __71__CDPDStateMachine__enableSecureBackupWithCircleJoinResult_completion___block_invoke_167(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    [*(a1 + 32) setLocalSecretType:{objc_msgSend(v5, "secretType")}];
    v8 = [v5 validatedSecret];
    [*(a1 + 32) setLocalSecret:v8];

    [*(a1 + 32) setUsePreviouslyCachedSecret:0];
    v9 = _CDPLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_24510B000, v9, OS_LOG_TYPE_DEFAULT, "Got a valid local secret, attempting to enable secure backup", buf, 2u);
    }

    v11 = *(a1 + 32);
    v10 = *(a1 + 40);
    v12 = *(v10 + 48);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __71__CDPDStateMachine__enableSecureBackupWithCircleJoinResult_completion___block_invoke_168;
    v17[3] = &unk_278E24AE8;
    v17[4] = v10;
    v18 = *(a1 + 48);
    [v12 upgradeICSCRecordsThenEnableSecureBackupWithContext:v11 completion:v17];
  }

  else
  {
    v13 = [v6 code];
    v14 = _CDPLogSystem();
    v15 = v14;
    if (v13 == -5307)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_24510B000, v15, OS_LOG_TYPE_DEFAULT, "User cancelled local device secret entry", buf, 2u);
      }
    }

    else if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      __71__CDPDStateMachine__enableSecureBackupWithCircleJoinResult_completion___block_invoke_167_cold_1();
    }

    v16 = *(a1 + 48);
    if (v16)
    {
      (*(v16 + 16))(v16, 0, v7);
    }
  }
}

void __71__CDPDStateMachine__enableSecureBackupWithCircleJoinResult_completion___block_invoke_168(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  [*(*(a1 + 32) + 8) setDidAttemptSecureBackupEnablement:1];
  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, a2, v6);
  }
}

- (BOOL)_isInSOSCircle
{
  result = 0;
  if ([(CDPContext *)self->_context keychainSyncSystem]== 1)
  {
    v3 = MEMORY[0x277CFD540];
    altDSID = [(CDPContext *)self->_context altDSID];
    v5 = [v3 syncingStatusForAltDSID:altDSID];

    if (v5)
    {
      if (v5 == 1 || ([(CDPContext *)self->_context isSOSCompatibilityOptInNeeded]& 1) == 0)
      {
        return 1;
      }
    }
  }

  return result;
}

- (BOOL)_isEligibleForSOSJoin
{
  deferSOSFromSignIn = [MEMORY[0x277CFD560] deferSOSFromSignIn];
  v4 = +[CDPDOctagonTrustProxyImpl octagonIsSOSFeatureEnabled];
  if (deferSOSFromSignIn)
  {
    v5 = !v4;
  }

  else
  {
    v5 = 1;
  }

  return !v5 && ([(CDPContext *)self->_context sosCompatibilityType]& 1) != 0 && [(CDPContext *)self->_context keychainSyncSystem]== 0;
}

- (void)_joinSOSAsynchronouslyFromHandleCloudDataProtectionIfRequired
{
  if ([(CDPDStateMachine *)self _isEligibleForSOSJoin])
  {
    if ([MEMORY[0x277CFD4A8] isSubsetOfContextTypeSignIn:{-[CDPContext type](self->_context, "type")}])
    {
      v3 = [(CDPContext *)self->_context copy];
      [v3 setKeychainSyncSystem:1];
      v4 = [[CDPDStateMachine alloc] initWithContext:v3 uiProvider:0];
      v5 = os_transaction_create();
      v6 = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __81__CDPDStateMachine__joinSOSAsynchronouslyFromHandleCloudDataProtectionIfRequired__block_invoke;
      block[3] = &unk_278E26208;
      v10 = v4;
      selfCopy = self;
      v12 = v5;
      v7 = v5;
      v8 = v4;
      dispatch_async(v6, block);
    }
  }
}

void __81__CDPDStateMachine__joinSOSAsynchronouslyFromHandleCloudDataProtectionIfRequired__block_invoke(void *a1)
{
  v2 = a1[4];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __81__CDPDStateMachine__joinSOSAsynchronouslyFromHandleCloudDataProtectionIfRequired__block_invoke_2;
  v6[3] = &unk_278E26230;
  v3 = v2;
  v4 = a1[5];
  v5 = a1[6];
  v7 = v3;
  v8 = v4;
  v9 = v5;
  [v3 handleCloudDataProtectionStateWithCompletion:v6];
}

void __81__CDPDStateMachine__joinSOSAsynchronouslyFromHandleCloudDataProtectionIfRequired__block_invoke_2(uint64_t a1, int a2, int a3, void *a4)
{
  v33 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = _CDPLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109634;
    v28 = a2;
    v29 = 1024;
    v30 = a3;
    v31 = 2112;
    v32 = v7;
    _os_log_impl(&dword_24510B000, v8, OS_LOG_TYPE_DEFAULT, "Finished SOS join with: shouldCompleteSOSSignIn = %d, sosEnabled = %d, sosError = %@", buf, 0x18u);
  }

  v9 = [MEMORY[0x277CFD4D8] contextForSOSCompatibilityMode];
  v10 = [*(a1 + 32) context];
  v11 = [v10 altDSID];
  [v9 setAltDSID:v11];

  v12 = objc_alloc_init(MEMORY[0x277CFD4E0]);
  if (v7 || (a3 & 1) == 0)
  {
    v17 = _CDPLogSystem();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      __81__CDPDStateMachine__joinSOSAsynchronouslyFromHandleCloudDataProtectionIfRequired__block_invoke_2_cold_1();
    }

    v18 = [*(a1 + 32) context];
    v19 = [v18 telemetryFlowID];
    [v9 setTelemetryFlowID:v19];

    v20 = [*(a1 + 32) context];
    v21 = [v20 telemetryDeviceSessionID];
    [v9 setTelemetryDeviceSessionID:v21];

    v26 = 0;
    [v12 postFollowUpWithContext:v9 error:&v26];
    v15 = v26;
    if (v15)
    {
      v16 = _CDPLogSystem();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        __81__CDPDStateMachine__joinSOSAsynchronouslyFromHandleCloudDataProtectionIfRequired__block_invoke_2_cold_2();
      }

      goto LABEL_13;
    }
  }

  else
  {
    [*(a1 + 32) _enableSOSViews];
    v13 = [*(*(a1 + 40) + 8) telemetryFlowID];
    [v9 setTelemetryFlowID:v13];

    v14 = [*(*(a1 + 40) + 8) telemetryDeviceSessionID];
    [v9 setTelemetryDeviceSessionID:v14];

    v25 = 0;
    [v12 clearFollowUpWithContext:v9 error:&v25];
    v15 = v25;
    if (v15)
    {
      v16 = _CDPLogSystem();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        __81__CDPDStateMachine__joinSOSAsynchronouslyFromHandleCloudDataProtectionIfRequired__block_invoke_2_cold_3();
      }

LABEL_13:
    }
  }

  v22 = [*(a1 + 32) secureBackupController];
  v23 = [v22 secureBackupProxy];
  [v23 uncacheAllSecrets];

  [*(*(a1 + 40) + 104) unlock];
  v24 = *MEMORY[0x277D85DE8];
}

- (void)_joinSOSFromRepairCloudDataProtectionIfRequiredWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([(CDPDStateMachine *)self _isEligibleForSOSJoin])
  {
    [(CDPContext *)self->_context setKeychainSyncSystem:1];
    [(CDPDStateMachine *)self _initDependenciesWithContext:self->_context];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __82__CDPDStateMachine__joinSOSFromRepairCloudDataProtectionIfRequiredWithCompletion___block_invoke;
    v7[3] = &unk_278E24AE8;
    v7[4] = self;
    v8 = completionCopy;
    [(CDPDStateMachine *)self repairCloudDataProtectionStateWithCompletion:v7];
  }

  else
  {
    v5 = _CDPLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_24510B000, v5, OS_LOG_TYPE_DEFAULT, "repairCloudDataProtection: Not running SOS state machine", v6, 2u);
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }
}

void __82__CDPDStateMachine__joinSOSFromRepairCloudDataProtectionIfRequiredWithCompletion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _CDPLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    v21 = a2;
    v22 = 2112;
    v23 = v5;
    _os_log_impl(&dword_24510B000, v6, OS_LOG_TYPE_DEFAULT, "repairCloudDataProtection: Finished SOS repair with: didRepairSOS = %d, sosRepairError = %@", buf, 0x12u);
  }

  v7 = [MEMORY[0x277CFD4D8] contextForSOSCompatibilityMode];
  v8 = [*(*(a1 + 32) + 8) altDSID];
  [v7 setAltDSID:v8];

  v9 = [*(*(a1 + 32) + 8) telemetryFlowID];
  [v7 setTelemetryFlowID:v9];

  v10 = [*(*(a1 + 32) + 8) telemetryDeviceSessionID];
  [v7 setTelemetryDeviceSessionID:v10];

  v11 = objc_alloc_init(MEMORY[0x277CFD4E0]);
  if (!v5 && (a2 & 1) != 0)
  {
    [*(a1 + 32) _enableSOSViews];
    v18 = 0;
    [v11 clearFollowUpWithContext:v7 error:&v18];
    v12 = v18;
    if (!v12)
    {
      goto LABEL_14;
    }

    v13 = _CDPLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __81__CDPDStateMachine__joinSOSAsynchronouslyFromHandleCloudDataProtectionIfRequired__block_invoke_2_cold_3();
    }

    goto LABEL_13;
  }

  v14 = _CDPLogSystem();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    __82__CDPDStateMachine__joinSOSFromRepairCloudDataProtectionIfRequiredWithCompletion___block_invoke_cold_1();
  }

  v19 = 0;
  [v11 postFollowUpWithContext:v7 error:&v19];
  v12 = v19;
  if (v12)
  {
    v13 = _CDPLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __81__CDPDStateMachine__joinSOSAsynchronouslyFromHandleCloudDataProtectionIfRequired__block_invoke_2_cold_2();
    }

LABEL_13:
  }

LABEL_14:
  v15 = [*(*(a1 + 32) + 40) secureBackupProxy];
  [v15 uncacheAllSecrets];

  v16 = *(a1 + 40);
  if (v16)
  {
    (*(v16 + 16))();
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_enableSOSViews
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CDBD48]);
  context = [(CDPDStateMachine *)self context];
  cliqueConfiguration = [context cliqueConfiguration];
  v6 = [v3 initWithContextData:cliqueConfiguration];

  v23 = 0;
  LODWORD(cliqueConfiguration) = [v6 fetchUserControllableViewsSyncingEnabled:&v23];
  v7 = v23;
  if (cliqueConfiguration)
  {
    circleProxy = [(CDPDCircleControl *)self->_circleController circleProxy];
    v22 = 0;
    v9 = [circleProxy setUserControllableViewsSyncStatus:1 error:&v22];
    v10 = v22;

    v11 = _CDPLogSystem();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (v9)
    {
      if (v12)
      {
        *buf = 0;
        v13 = "repairCloudDataProtection: Successfully enabled SOS views";
LABEL_15:
        v18 = v11;
        v19 = 2;
LABEL_19:
        _os_log_impl(&dword_24510B000, v18, OS_LOG_TYPE_DEFAULT, v13, buf, v19);
        goto LABEL_20;
      }

      goto LABEL_20;
    }

    if (!v12)
    {
      goto LABEL_20;
    }

    *buf = 138412290;
    v25 = v10;
    v13 = "repairCloudDataProtection: Failed to enable SOS views: %@";
    goto LABEL_18;
  }

  v10 = _CDPLogSystem();
  v14 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (!v7)
  {
    if (v14)
    {
      *buf = 0;
      _os_log_impl(&dword_24510B000, v10, OS_LOG_TYPE_DEFAULT, "repairCloudDataProtection: Octagon reports user controllable views are not enabled! disabling for SOS", buf, 2u);
    }

    circleProxy2 = [(CDPDCircleControl *)self->_circleController circleProxy];
    v21 = 0;
    v16 = [circleProxy2 setUserControllableViewsSyncStatus:0 error:&v21];
    v10 = v21;

    v11 = _CDPLogSystem();
    v17 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (v16)
    {
      if (v17)
      {
        *buf = 0;
        v13 = "repairCloudDataProtection: Successfully disabled SOS views";
        goto LABEL_15;
      }

LABEL_20:

      goto LABEL_21;
    }

    if (!v17)
    {
      goto LABEL_20;
    }

    *buf = 138412290;
    v25 = v10;
    v13 = "repairCloudDataProtection: Failed to disable SOS views: %@";
LABEL_18:
    v18 = v11;
    v19 = 12;
    goto LABEL_19;
  }

  if (v14)
  {
    *buf = 138412290;
    v25 = v7;
    _os_log_impl(&dword_24510B000, v10, OS_LOG_TYPE_DEFAULT, "repairCloudDataProtection: Failed to fetch user controllable views from clique, error: %@", buf, 0xCu);
  }

LABEL_21:

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_resetAccountCDPStateWithCompletion:(id)completion
{
  completionCopy = completion;
  if ((-[CDPContext _forceReset](self->_context, "_forceReset") & 1) == 0 && ([MEMORY[0x277CFD4A8] isSubsetOfContextTypeSignIn:{-[CDPContext type](self->_context, "type")}] & 1) != 0 || !self->_secureBackupDisableController)
  {
    if ([MEMORY[0x277CFD4A8] isSubsetOfContextTypeSignIn:{-[CDPContext type](self->_context, "type")}])
    {
      v9 = _CDPLogSystem();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        [CDPDStateMachine _resetAccountCDPStateWithCompletion:];
      }
    }

    goto LABEL_12;
  }

  currentDevice = [MEMORY[0x277CF0218] currentDevice];
  isVirtualMachine = [currentDevice isVirtualMachine];

  v7 = _CDPLogSystem();
  v8 = v7;
  if (isVirtualMachine)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [CDPDStateMachine _resetAccountCDPStateWithCompletion:];
    }

LABEL_12:
    if (completionCopy)
    {
      v10 = [MEMORY[0x277CCA9B8] cdp_errorWithCode:-5004];
      completionCopy[2](completionCopy, 0, v10);
    }

    goto LABEL_17;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24510B000, v8, OS_LOG_TYPE_DEFAULT, "Hold on to your hats. User has requested a CDP reset.", buf, 2u);
  }

  secureBackupDisableController = self->_secureBackupDisableController;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __56__CDPDStateMachine__resetAccountCDPStateWithCompletion___block_invoke;
  v12[3] = &unk_278E24AE8;
  v12[4] = self;
  v13 = completionCopy;
  [(CDPDSecureBackupDisableCapable *)secureBackupDisableController deleteAllBackupRecordsWithCompletion:v12];

LABEL_17:
}

void __56__CDPDStateMachine__resetAccountCDPStateWithCompletion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = _CDPLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __56__CDPDStateMachine__resetAccountCDPStateWithCompletion___block_invoke_cold_1();
    }
  }

  [*(*(a1 + 32) + 32) resetCircleIncludingCloudKitData:1 cloudKitResetReasonDescription:@"CoreCDP-user-elected" withCompletion:*(a1 + 40)];
}

- (BOOL)synchronizeCircleViewsForSecureBackupContext:(id)context
{
  contextCopy = context;
  circleJoinResult = [contextCopy circleJoinResult];
  if (circleJoinResult && (v6 = circleJoinResult, [contextCopy circleJoinResult], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "requiresInitialSync"), v7, v6, !v8))
  {
    v10 = _CDPLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_24510B000, v10, OS_LOG_TYPE_DEFAULT, "Initial sync not required, skipping...", v12, 2u);
    }

    synchronizeCircleViews = 1;
  }

  else
  {
    synchronizeCircleViews = [(CDPDCircleControl *)self->_circleController synchronizeCircleViews];
  }

  return synchronizeCircleViews;
}

- (void)promptForLocalSecretWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = _CDPLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [CDPDStateMachine promptForLocalSecretWithCompletion:?];
  }

  [(CDPStateUIProviderInternal *)self->_uiProvider cdpContext:self->_context promptForLocalSecretWithCompletion:completionCopy];
}

- (id)secureChannelContextForController:(id)controller
{
  controllerCopy = controller;
  if (([(CDPContext *)self->_context isPiggybackingRecovery]& 1) != 0 || [(CDPContext *)self->_context isTTSURecovery])
  {
    v5 = [CDPDSecureChannelContext alloc];
    context = self->_context;
    circleProxy = [controllerCopy circleProxy];
    v8 = [(CDPDSecureChannelContext *)v5 initWithContext:context circleProxy:circleProxy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)initWithContext:uiProvider:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)handleCloudDataProtectionStateWithCompletion:(uint64_t *)a1 .cold.1(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)handleCloudDataProtectionStateWithCompletion:.cold.3()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __65__CDPDStateMachine_handleCloudDataProtectionStateWithCompletion___block_invoke_2_cold_1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_fault_impl(&dword_24510B000, log, OS_LOG_TYPE_FAULT, "HomePod failed CDP join with AuthKit error: %@", buf, 0xCu);
}

- (void)_errorForICSCCreationNotAttemptedWithResult:cliqueStatus:.cold.5()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_errorForICSCCreationNotAttemptedWithResult:cliqueStatus:.cold.8()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_handleCloudDataProtectionStateWithCompletion:(void *)a1 .cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 context];
  v7 = [v1 altDSID];
  OUTLINED_FUNCTION_10();
  _os_log_error_impl(v2, v3, OS_LOG_TYPE_ERROR, v4, v5, 0x22u);

  v6 = *MEMORY[0x277D85DE8];
}

void __66__CDPDStateMachine__handleCloudDataProtectionStateWithCompletion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __58__CDPDStateMachine__handleBeneficiaryTrustWithCompletion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_24510B000, v0, v1, "Failed to get the beneficiary access key. %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_attemptBeneficiaryTrustWithInheritanceKey:retryCount:completion:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_attemptBeneficiaryTrustWithInheritanceKey:(uint64_t)a1 retryCount:completion:.cold.2(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_10();
  _os_log_fault_impl(v2, v3, OS_LOG_TYPE_FAULT, v4, v5, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

void __85__CDPDStateMachine__attemptBeneficiaryTrustWithInheritanceKey_retryCount_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_24510B000, v0, v1, "Failed to recover octagon with beneficiary access key. %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __65__CDPDStateMachine__enrollOrDisableCDPAfterEnabledStateVerified___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_24510B000, v0, v1, "Failed to join circle and recovery is not needed, aborting (error as %@)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __54__CDPDStateMachine__disableRecoveryKeyWithCompletion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_24510B000, v0, v1, "Failed to disable recovery key with error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __55__CDPDStateMachine_resetAccountCDPStateWithCompletion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_24510B000, v0, v1, "CDP reset failed, can not proceed: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __55__CDPDStateMachine_resetAccountCDPStateWithCompletion___block_invoke_103_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_shouldRejoinCircleAfterPerformingRPDType:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

void __65__CDPDStateMachine__enableSecureBackupWithJoinResult_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_24510B000, v0, v1, "Secure backup enablement failed in repair flow, passing down error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_handlePreflightError:completion:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_24510B000, v0, v1, "Account preflight failed with error, aborting CDP state machine - %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_attemptCDPEnable:.cold.2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __38__CDPDStateMachine__attemptCDPEnable___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_initDependenciesWithContext:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_shouldPerformAuthenticatedRepairWithOptionForceFetch:(uint64_t)a3 completion:(uint64_t)a4 .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_24510B000, a1, a3, "Context passed into %s was nil, and context for primary account is also nil. Aborting.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __85__CDPDStateMachine__shouldPerformAuthenticatedRepairWithOptionForceFetch_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_24510B000, v0, v1, "Failed to refresh context: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)shouldPerformRepairWithOptionForceFetch:(uint64_t)a3 completion:(uint64_t)a4 .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_24510B000, a1, a3, "Context passed into %s was nil, and context for primary account is also nil. Aborting.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_continueShouldPerformRepairWithOptionForceFetch:completion:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __34__CDPDStateMachine__fetchUserInfo__block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_8_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)repairCloudDataProtectionStateWithCompletion:(void *)a1 .cold.1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = [a1 context];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_10();
  _os_log_debug_impl(v2, v3, OS_LOG_TYPE_DEBUG, v4, v5, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

void __56__CDPDStateMachine__performSilentlyAuthenticatedRepair___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_24510B000, v0, v1, "Failed to perform silent authentication for repair with error %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __61__CDPDStateMachine__performInteractivelyAuthenticatedRepair___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_24510B000, v0, v1, "UI provider failed to perform interactive authentication for repair with error %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_preflightAccountStateWithContext:(uint64_t)a1 completion:(void *)a2 .cold.1(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = [a2 dsid];
  OUTLINED_FUNCTION_10();
  _os_log_error_impl(v2, v3, OS_LOG_TYPE_ERROR, v4, v5, 0x2Au);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_preflightAccountStateWithContext:completion:.cold.2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __65__CDPDStateMachine__preflightAccountStateWithContext_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_24510B000, v0, v1, "Failed to enable KVS with error %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_recoverSecureBackupWithCircleJoinResult:completion:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __82__CDPDStateMachine__handleInteractiveRecoveryFlowWithCircleJoinResult_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_24510B000, v0, v1, "Failed to get a local device secret from the UI provider with error %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __82__CDPDStateMachine__handleInteractiveRecoveryFlowWithCircleJoinResult_completion___block_invoke_142_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_8_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_attemptBackupRecoveryWithLocalSecret:type:useSecureBackupCachedSecret:circleJoinResult:completion:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_7_2();
  OUTLINED_FUNCTION_8_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_attemptBackupRecoveryWithLocalSecret:type:useSecureBackupCachedSecret:circleJoinResult:completion:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_24510B000, v0, v1, "_attemptBackupRecoveryWithLocalSecret: Encountered error while checking RK support: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_attemptBackupRecoveryByPromptingForRemoteSecretWithLocalSecret:localSecretType:useSecureBackupCachedSecret:circleJoinResult:completion:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_7_2();
  OUTLINED_FUNCTION_8_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

void __156__CDPDStateMachine__attemptBackupRecoveryByPromptingForRemoteSecretWithLocalSecret_localSecretType_useSecureBackupCachedSecret_circleJoinResult_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_24510B000, v0, v1, "Error prompting user for remote device secret - %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_enableCustodianRecoveryIfAvailableForContext:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

void __74__CDPDStateMachine__postRecoveryEnableSecureBackupWithContext_completion___block_invoke_163_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_24510B000, v0, v1, "Experienced error while enabling secure backup: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __74__CDPDStateMachine__postRecoveryEnableSecureBackupWithContext_completion___block_invoke_163_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_enableSecureBackupWithCircleJoinResult:completion:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __71__CDPDStateMachine__enableSecureBackupWithCircleJoinResult_completion___block_invoke_167_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_24510B000, v0, v1, "Error prompting user for local device secret - %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __81__CDPDStateMachine__joinSOSAsynchronouslyFromHandleCloudDataProtectionIfRequired__block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_24510B000, v0, v1, "SOS only state machine run failed: %@. Posting follow up...", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __81__CDPDStateMachine__joinSOSAsynchronouslyFromHandleCloudDataProtectionIfRequired__block_invoke_2_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_24510B000, v0, v1, "repairCloudDataProtection: failed to post sosCompatibilityCFU with error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __81__CDPDStateMachine__joinSOSAsynchronouslyFromHandleCloudDataProtectionIfRequired__block_invoke_2_cold_3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_24510B000, v0, v1, "repairCloudDataProtection: failed to clear sosCompatibilityCFU with error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __82__CDPDStateMachine__joinSOSFromRepairCloudDataProtectionIfRequiredWithCompletion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_24510B000, v0, v1, "repairCloudDataProtection: SOS only state repair failed: %@. Posting follow up...", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __56__CDPDStateMachine__resetAccountCDPStateWithCompletion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_24510B000, v0, v1, "Failed to delete all backup records with error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)promptForLocalSecretWithCompletion:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 16);
  v8 = *(a1 + 8);
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

@end