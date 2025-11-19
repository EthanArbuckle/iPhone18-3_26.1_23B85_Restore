@interface CDPDCircleController
- (CDPDCircleController)initWithUiProvider:(id)a3 delegate:(id)a4 circleProxy:(id)a5 octagonTrustProxy:(id)a6;
- (CDPDCircleDelegate)delegate;
- (int64_t)nextRetryInterval;
- (void)_attemptCustodianBackupRecoveryWithInfo:(id)a3 result:(id)a4 ignoreBackups:(BOOL)a5 completion:(id)a6;
- (void)_joinCircleFallbackWithResult:(id)a3 ignoreBackups:(BOOL)a4 completion:(id)a5;
- (void)_joinCircleIgnoringBackups:(BOOL)a3 context:(id)a4 completion:(id)a5;
- (void)_requestCircleJoinWithObserver:(id)a3 requestBlock:(id)a4 completion:(id)a5;
- (void)_requestToJoinAfterRestoreAndWaitForSuccessWithHandler:(id)a3;
- (void)_requestToJoinAndWaitForSuccessWithHandler:(id)a3;
- (void)_requestToJoinWithObserver:(id)a3 completion:(id)a4;
- (void)_requestToJoinWithRequestBlock:(id)a3 completion:(id)a4;
- (void)_silentReauthWithCompletion:(id)a3;
- (void)applyToJoinCircleWithJoinHandler:(id)a3;
- (void)cancelApplicationToJoinCircle;
- (void)dealloc;
- (void)prepareCircleStateForRecovery;
- (void)promptForCredentials:(id)a3;
- (void)resetCircleIncludingCloudKitData:(BOOL)a3 cloudKitResetReasonDescription:(id)a4 withCompletion:(id)a5;
- (void)useCircleInfoToUpdateNameForDevices:(id)a3;
@end

@implementation CDPDCircleController

- (CDPDCircleController)initWithUiProvider:(id)a3 delegate:(id)a4 circleProxy:(id)a5 octagonTrustProxy:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = [(CDPDCircleController *)self init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_uiProvider, a3);
    objc_storeWeak(&v16->_delegate, v12);
    v17 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v18 = dispatch_queue_create("com.apple.cdpd.circleRequestQueue", v17);
    requestSynchronizationQueue = v16->_requestSynchronizationQueue;
    v16->_requestSynchronizationQueue = v18;

    objc_storeStrong(&v16->_circleProxy, a5);
    objc_storeStrong(&v16->_octagonProxy, a6);
    retryIntervals = v16->_retryIntervals;
    v16->_retryIntervals = &unk_285822360;

    v21 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v22 = dispatch_queue_attr_make_with_qos_class(v21, QOS_CLASS_DEFAULT, 0);

    v23 = dispatch_queue_create("com.apple.cdpd.circleControllerDefaultQueue", v22);
    cdpdCircleDefaultQueue = v16->_cdpdCircleDefaultQueue;
    v16->_cdpdCircleDefaultQueue = v23;
  }

  return v16;
}

- (void)dealloc
{
  [(CDPDCircleStateObserver *)self->_circleJoinObserver stopObservingCircleStatusChange];
  v3.receiver = self;
  v3.super_class = CDPDCircleController;
  [(CDPDCircleController *)&v3 dealloc];
}

- (void)prepareCircleStateForRecovery
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*a1);
  OUTLINED_FUNCTION_0_0(&dword_24510B000, a2, a3, "Failed to reset to offering: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

intptr_t __53__CDPDCircleController_prepareCircleStateForRecovery__block_invoke(intptr_t result, uint64_t a2)
{
  if (a2 != 3)
  {
    v7 = v2;
    v8 = v3;
    v4 = result;
    v5 = _CDPLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_24510B000, v5, OS_LOG_TYPE_DEFAULT, "Circle state changed to a state other than pending, proceeding with recovery", v6, 2u);
    }

    [*(v4 + 32) stopObservingCircleStatusChange];
    return dispatch_semaphore_signal(*(v4 + 40));
  }

  return result;
}

- (void)_joinCircleIgnoringBackups:(BOOL)a3 context:(id)a4 completion:(id)a5
{
  v6 = a3;
  v72 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  if (v8)
  {
    v10 = v8;
    v11 = [CDPDSecureChannelContext alloc];
    v12 = [(CDPDCircleController *)self circleProxy];
    v13 = [(CDPDSecureChannelContext *)v11 initWithContext:v10 circleProxy:v12];
  }

  else
  {
    v14 = [(CDPDCircleController *)self delegate];
    v10 = [v14 contextForController:self];

    v12 = [(CDPDCircleController *)self delegate];
    v13 = [v12 secureChannelContextForController:self];
  }

  v15 = v13;

  [v10 populateWalrusStatus];
  circleProxy = self->_circleProxy;
  v66 = 0;
  v17 = [(CDPDCircleProxy *)circleProxy combinedCircleStatus:&v66];
  v18 = v66;
  v19 = objc_alloc_init(CDPDCircleJoinResult);
  [(CDPDCircleJoinResult *)v19 setCircleStatus:v17];
  [(CDPDCircleJoinResult *)v19 setRequiresEscrowRecordsFetch:1];
  [(CDPDCircleJoinResult *)v19 setRequiresInitialSync:1];
  if (v17 != 3)
  {
    if (v17 == 1)
    {
      v20 = _CDPLogSystem();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        [CDPDCircleController _joinCircleIgnoringBackups:context:completion:];
      }

      [(CDPDCircleJoinResult *)v19 setDidJoin:1];
      goto LABEL_10;
    }

    v54 = v6;
    v55 = v18;
    v21 = [(CDPDCircleController *)self canRetryCliqueStatus];
    v56 = [v10 sharingChannel];
    v22 = _CDPLogSystem();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218498;
      *v68 = v17;
      *&v68[8] = 2112;
      *&v68[10] = v56;
      *&v68[18] = 1024;
      *v69 = v21;
      _os_log_debug_impl(&dword_24510B000, v22, OS_LOG_TYPE_DEBUG, "CDP join status: %lu, Sharing channel: %@, Retry possible: %{BOOL}d", buf, 0x1Cu);
    }

    v23 = 1;
    if (v17 != 2 && v17 != 4)
    {
      if (v17 == 5)
      {
        v23 = 0;
      }

      else
      {
        v24 = [v10 sharingChannel];
        v23 = v24 != 0;
      }
    }

    v25 = _CDPLogSystem();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67110146;
      *v68 = v23;
      *&v68[4] = 2048;
      *&v68[6] = v17;
      *&v68[14] = 1024;
      *&v68[16] = v17 != 5;
      *v69 = 2112;
      *&v69[2] = v56;
      v70 = 1024;
      v71 = v21;
      _os_log_debug_impl(&dword_24510B000, v25, OS_LOG_TYPE_DEBUG, "Will attempt circle join: %{BOOL}d; CDP join status: %lu, has CK account: %{BOOL}d, Sharing channel: %@, Retry possible: %{BOOL}d", buf, 0x28u);
    }

    if (!v23)
    {
      if (v17 == 5)
      {
        v18 = v55;
        if ([(CDPDCircleController *)self canRetryCliqueStatus])
        {
          v29 = [(CDPDCircleController *)self nextRetryInterval];
          v30 = _CDPLogSystem();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            v31 = [MEMORY[0x277CCABB0] numberWithInteger:v29];
            *buf = 138412290;
            *v68 = v31;
            _os_log_impl(&dword_24510B000, v30, OS_LOG_TYPE_DEFAULT, "scheduling join retry after %@ seconds as security says there is no CK account yet", buf, 0xCu);
          }

          v32 = _CDPSignpostLogSystem();
          v33 = _CDPSignpostCreate();

          v34 = _CDPSignpostLogSystem();
          v35 = v34;
          if (v33 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v34))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_24510B000, v35, OS_SIGNPOST_INTERVAL_BEGIN, v33, "NoCKAccountBackOffRetry", " enableTelemetry=YES ", buf, 2u);
          }

          v36 = _CDPSignpostLogSystem();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134217984;
            *v68 = v33;
            _os_log_impl(&dword_24510B000, v36, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: NoCKAccountBackOffRetry  enableTelemetry=YES ", buf, 0xCu);
          }

          dispatch_time(0, 1000000000 * v29);
          cdpdCircleDefaultQueue = self->_cdpdCircleDefaultQueue;
          v57 = v9;
          cdp_dispatch_after_with_qos();

          goto LABEL_66;
        }

        v44 = _CDPStateError();
        v45 = _CDPStateErrorWithUnderlying();
        (*(v9 + 2))(v9, 0, v45);
      }

      else
      {
        v18 = v55;
        v44 = _CDPStateErrorWithUnderlying();
        (*(v9 + 2))(v9, 0, v44);
      }

LABEL_66:
      goto LABEL_67;
    }

    v26 = _CDPLogSystem();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = [v10 altDSID];
      *buf = 141558274;
      *v68 = 1752392040;
      *&v68[8] = 2112;
      *&v68[10] = v27;
      _os_log_impl(&dword_24510B000, v26, OS_LOG_TYPE_DEFAULT, "Attempting circle join for %{mask.hash}@", buf, 0x16u);
    }

    v28 = [MEMORY[0x277CFD4F8] sharedInstance];
    if ([v28 supportsSecureBackupRecovery])
    {
    }

    else
    {
      v38 = [v10 _recoveryMethodAvailable];

      if (!v38)
      {
        v40 = 0;
        if (v15)
        {
LABEL_37:
          v65 = 0;
          v41 = [v15 initialize:&v65];
          v42 = v65;
          if (v41)
          {
            v43 = [[CDPDSecureChannelController alloc] initWithContext:v15];
            v60[0] = MEMORY[0x277D85DD0];
            v60[1] = 3221225472;
            v60[2] = __70__CDPDCircleController__joinCircleIgnoringBackups_context_completion___block_invoke;
            v60[3] = &unk_278E25258;
            v63 = v38;
            v60[4] = self;
            v61 = v19;
            v64 = v54;
            v62 = v9;
            [(CDPDSecureChannelController *)v43 joinCircle:v60];

            goto LABEL_48;
          }

LABEL_44:
          v46 = _CDPLogSystem();
          v47 = os_log_type_enabled(v46, OS_LOG_TYPE_ERROR);
          if (!v40)
          {
            if (v38)
            {
              v18 = v55;
              if (v47)
              {
                [CDPDCircleController _joinCircleIgnoringBackups:context:completion:];
              }

              [(CDPDCircleController *)self _joinCircleFallbackWithResult:v19 ignoreBackups:v54 completion:v9];
            }

            else
            {
              v18 = v55;
              if (v47)
              {
                [CDPDCircleController _joinCircleIgnoringBackups:context:completion:];
              }

              if (v42)
              {
                v49 = v42;
              }

              else
              {
                v50 = _CDPLogSystem();
                v51 = os_log_type_enabled(v50, OS_LOG_TYPE_ERROR);
                if (v15)
                {
                  if (v51)
                  {
                    [CDPDCircleController _joinCircleIgnoringBackups:context:completion:];
                  }
                }

                else if (v51)
                {
                  [CDPDCircleController _joinCircleIgnoringBackups:context:completion:];
                }

                v49 = _CDPStateError();
              }

              v52 = v49;
              (*(v9 + 2))(v9, 0, v49);
            }

            goto LABEL_65;
          }

          if (v47)
          {
            [CDPDCircleController _joinCircleIgnoringBackups:context:completion:];
          }

          v48 = [v10 custodianRecoveryInfo];
          v58[0] = MEMORY[0x277D85DD0];
          v58[1] = 3221225472;
          v58[2] = __70__CDPDCircleController__joinCircleIgnoringBackups_context_completion___block_invoke_34;
          v58[3] = &unk_278E247A8;
          v59 = v9;
          [(CDPDCircleController *)self _attemptCustodianBackupRecoveryWithInfo:v48 result:v19 ignoreBackups:v54 completion:v58];

LABEL_48:
          v18 = v55;
LABEL_65:

          goto LABEL_66;
        }

LABEL_43:
        v42 = 0;
        goto LABEL_44;
      }
    }

    v39 = [v10 custodianRecoveryInfo];
    v40 = v39 != 0;

    v38 = 1;
    if (v15)
    {
      goto LABEL_37;
    }

    goto LABEL_43;
  }

  [(CDPDCircleJoinResult *)v19 setNeedsBackupRecovery:1];
LABEL_10:
  (*(v9 + 2))(v9, v19, 0);
LABEL_67:

  v53 = *MEMORY[0x277D85DE8];
}

void __70__CDPDCircleController__joinCircleIgnoringBackups_context_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v5 didJoin])
  {
    v7 = _CDPLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_24510B000, v7, OS_LOG_TYPE_DEFAULT, "Secure channel worked, we joined the circle...", v12, 2u);
    }

    v8 = *(*(a1 + 48) + 16);
LABEL_12:
    v8();
    goto LABEL_13;
  }

  v9 = *(a1 + 56);
  v10 = _CDPLogSystem();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
  if (v9 != 1)
  {
    if (v11)
    {
      __70__CDPDCircleController__joinCircleIgnoringBackups_context_completion___block_invoke_cold_1();
    }

    v8 = *(*(a1 + 48) + 16);
    goto LABEL_12;
  }

  if (v11)
  {
    __70__CDPDCircleController__joinCircleIgnoringBackups_context_completion___block_invoke_cold_2();
  }

  [*(a1 + 32) _joinCircleFallbackWithResult:*(a1 + 40) ignoreBackups:*(a1 + 57) completion:*(a1 + 48)];
LABEL_13:
}

uint64_t __70__CDPDCircleController__joinCircleIgnoringBackups_context_completion___block_invoke_35(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = _CDPLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __70__CDPDCircleController__joinCircleIgnoringBackups_context_completion___block_invoke_35_cold_1();
  }

  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  Nanoseconds = _CDPSignpostGetNanoseconds();
  v6 = _CDPSignpostLogSystem();
  v7 = v6;
  v8 = *(a1 + 48);
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    v9 = *(a1 + 64);
    v14 = 67240192;
    LODWORD(v15) = v9;
    _os_signpost_emit_with_name_impl(&dword_24510B000, v7, OS_SIGNPOST_INTERVAL_END, v8, "NoCKAccountBackOffRetry", " NextRetryInterval=%{public,signpost.telemetry:number1,name=NextRetryInterval}d ", &v14, 8u);
  }

  v10 = _CDPSignpostLogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 134218496;
    v11 = *(a1 + 64);
    v15 = *(a1 + 48);
    v16 = 2048;
    v17 = Nanoseconds / 1000000000.0;
    v18 = 1026;
    v19 = v11;
    _os_log_impl(&dword_24510B000, v10, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: NoCKAccountBackOffRetry  NextRetryInterval=%{public,signpost.telemetry:number1,name=NextRetryInterval}d ", &v14, 0x1Cu);
  }

  result = [*(a1 + 32) _joinCircleIgnoringBackups:*(a1 + 72) context:0 completion:*(a1 + 40)];
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_joinCircleFallbackWithResult:(id)a3 ignoreBackups:(BOOL)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = _CDPLogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24510B000, v10, OS_LOG_TYPE_DEFAULT, "Falling back to recovery based circle flows...", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __79__CDPDCircleController__joinCircleFallbackWithResult_ignoreBackups_completion___block_invoke;
  v14[3] = &unk_278E252A8;
  v16 = self;
  v17 = v9;
  v18 = a4;
  v15 = v8;
  v12 = v8;
  v13 = v9;
  [WeakRetained circleController:self secureBackupRecordsArePresentWithCompletion:v14];
}

void __79__CDPDCircleController__joinCircleFallbackWithResult_ignoreBackups_completion___block_invoke(uint64_t a1, char a2, uint64_t a3, void *a4)
{
  v7 = a4;
  if (v7)
  {
    v8 = _CDPLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __79__CDPDCircleController__joinCircleFallbackWithResult_ignoreBackups_completion___block_invoke_cold_1();
    }

    v9 = *(*(a1 + 48) + 16);
    goto LABEL_10;
  }

  [*(a1 + 32) setHasPeersWithCDPBackupRecords:a3];
  if (((a2 & 1) != 0 || a3) && *(a1 + 56) != 1 || [*(a1 + 32) circleStatus] == 2)
  {
    [*(a1 + 32) setNeedsBackupRecovery:1];
    v10 = *(a1 + 32);
    v9 = *(*(a1 + 48) + 16);
LABEL_10:
    v9();
    goto LABEL_11;
  }

  v11 = _CDPLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24510B000, v11, OS_LOG_TYPE_DEFAULT, "Circle status is CDPSyncingStatusAbsent and backups are NOT present... Trying to create and join the circle", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 64));
  v13 = [WeakRetained contextForController:*(a1 + 40)];

  v14 = *MEMORY[0x277CFD930];
  v15 = [MEMORY[0x277CE44D8] analyticsEventWithContext:v13 eventName:*MEMORY[0x277CFD698] category:*MEMORY[0x277CFD930]];
  v16 = [MEMORY[0x277CFD490] rtcAnalyticsReporter];
  [v16 sendEvent:v15];

  v17 = [MEMORY[0x277CE44D8] analyticsEventWithContext:v13 eventName:*MEMORY[0x277CFD690] category:v14];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __79__CDPDCircleController__joinCircleFallbackWithResult_ignoreBackups_completion___block_invoke_39;
  v21[3] = &unk_278E24FD8;
  v19 = *(a1 + 40);
  v18 = *(a1 + 48);
  v22 = v17;
  v23 = v19;
  v25 = v18;
  v24 = *(a1 + 32);
  v20 = v17;
  [v19 _requestToJoinAndWaitForSuccessWithHandler:v21];

LABEL_11:
}

void __79__CDPDCircleController__joinCircleFallbackWithResult_ignoreBackups_completion___block_invoke_39(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = a3;
  v5 = [MEMORY[0x277CCABB0] numberWithBool:a2];
  [*(a1 + 32) setObject:v5 forKeyedSubscript:*MEMORY[0x277CFD6C0]];

  v6 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 40), "cliqueStatus")}];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:*MEMORY[0x277CFD6A0]];

  v7 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(*(a1 + 40), "circleSyncingStatus")}];
  [*(a1 + 32) setObject:v7 forKeyedSubscript:*MEMORY[0x277CFD688]];

  if (v11)
  {
    [*(a1 + 32) populateUnderlyingErrorsStartingWithRootError:v11];
    v8 = [MEMORY[0x277CFD490] rtcAnalyticsReporter];
    [v8 sendEvent:*(a1 + 32)];
  }

  else
  {
    [*(a1 + 48) setDidJoin:a2];
    v9 = [MEMORY[0x277CFD490] rtcAnalyticsReporter];
    [v9 sendEvent:*(a1 + 32)];

    v10 = *(a1 + 48);
  }

  (*(*(a1 + 56) + 16))();
}

- (void)_attemptCustodianBackupRecoveryWithInfo:(id)a3 result:(id)a4 ignoreBackups:(BOOL)a5 completion:(id)a6
{
  v10 = a4;
  v11 = a6;
  circleProxy = self->_circleProxy;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __96__CDPDCircleController__attemptCustodianBackupRecoveryWithInfo_result_ignoreBackups_completion___block_invoke;
  v15[3] = &unk_278E252D0;
  v15[4] = self;
  v16 = v10;
  v18 = a5;
  v17 = v11;
  v13 = v11;
  v14 = v10;
  [(CDPDCircleProxy *)circleProxy recoverOctagonUsingCustodianInfo:a3 completion:v15];
}

void __96__CDPDCircleController__attemptCustodianBackupRecoveryWithInfo_result_ignoreBackups_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _CDPLogSystem();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __96__CDPDCircleController__attemptCustodianBackupRecoveryWithInfo_result_ignoreBackups_completion___block_invoke_cold_1();
    }

    [*(a1 + 32) _joinCircleFallbackWithResult:*(a1 + 40) ignoreBackups:*(a1 + 56) completion:*(a1 + 48)];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_24510B000, v5, OS_LOG_TYPE_DEFAULT, "Custodian CDP Recovery succeeded", v7, 2u);
    }

    [*(a1 + 40) setDidJoin:1];
    v6 = *(a1 + 40);
    (*(*(a1 + 48) + 16))();
  }
}

- (int64_t)nextRetryInterval
{
  retryIntervals = self->_retryIntervals;
  ++self->_cliqueStatusRetryCount;
  v3 = [(NSArray *)retryIntervals objectAtIndexedSubscript:?];
  v4 = [v3 integerValue];

  return v4;
}

- (void)promptForCredentials:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = [WeakRetained contextForController:self];

  v7 = [v6 password];
  if (!v7)
  {
LABEL_7:
    uiProvider = self->_uiProvider;
    if (uiProvider)
    {
      v13 = objc_loadWeakRetained(&self->_delegate);
      v14 = [v13 contextForController:self];
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __45__CDPDCircleController_promptForCredentials___block_invoke;
      v16[3] = &unk_278E252F8;
      v17 = v6;
      v18 = self;
      v19 = v4;
      [(CDPStateUIProviderInternal *)uiProvider cdpContext:v14 promptForInteractiveAuthenticationWithCompletion:v16];

      goto LABEL_10;
    }

LABEL_9:
    v15 = _CDPStateError();
    (*(v4 + 2))(v4, 0, v15);

    goto LABEL_10;
  }

  v8 = v7;
  v9 = [v6 appleID];
  if (!v9)
  {

    goto LABEL_7;
  }

  v10 = v9;
  v11 = [v6 altDSID];

  if (!v11)
  {
    goto LABEL_7;
  }

  if (![(CDPDCircleProxy *)self->_circleProxy registerCredentials])
  {
    goto LABEL_9;
  }

  (*(v4 + 2))(v4, 1, 0);
LABEL_10:
}

void __45__CDPDCircleController_promptForCredentials___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    [*(a1 + 32) updateWithAuthenticationResults:v5];
    v7 = [*(*(a1 + 40) + 48) registerCredentials];
    v8 = *(a1 + 48);
    if (v7)
    {
      (*(v8 + 16))(v8, 1, 0);
    }

    else
    {
      v11 = _CDPStateError();
      (*(v8 + 16))(v8, 0, v11);
    }
  }

  else
  {
    v9 = _CDPLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __45__CDPDCircleController_promptForCredentials___block_invoke_cold_1();
    }

    v10 = *(a1 + 48);
    if (v10)
    {
      (*(v10 + 16))(v10, 0, v6);
    }
  }
}

- (void)_silentReauthWithCompletion:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = [WeakRetained contextForController:self];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __52__CDPDCircleController__silentReauthWithCompletion___block_invoke;
  v8[3] = &unk_278E24B10;
  v9 = v4;
  v7 = v4;
  [v6 reauthenticateUserWithCompletion:v8];
}

- (void)resetCircleIncludingCloudKitData:(BOOL)a3 cloudKitResetReasonDescription:(id)a4 withCompletion:(id)a5
{
  v6 = a5;
  v7 = _CDPLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24510B000, v7, OS_LOG_TYPE_DEFAULT, "Attempting to reset and join new circle after recovery succeeded but resulted in a pending circle join...", buf, 2u);
  }

  circleProxy = self->_circleProxy;
  v27 = 0;
  [(CDPDCircleProxy *)circleProxy removeThisDeviceFromCircle:&v27];
  v9 = v27;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __103__CDPDCircleController_resetCircleIncludingCloudKitData_cloudKitResetReasonDescription_withCompletion___block_invoke;
  aBlock[3] = &unk_278E24B10;
  v10 = v6;
  v26 = v10;
  v11 = _Block_copy(aBlock);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __103__CDPDCircleController_resetCircleIncludingCloudKitData_cloudKitResetReasonDescription_withCompletion___block_invoke_44;
  v23[3] = &unk_278E24898;
  v23[4] = self;
  v12 = v11;
  v24 = v12;
  v13 = _Block_copy(v23);
  v14 = [(CDPDCircleController *)self circleStatus];
  v15 = _CDPLogSystem();
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG);
  if (v14 == 3)
  {
    if (v16)
    {
      [CDPDCircleController resetCircleIncludingCloudKitData:cloudKitResetReasonDescription:withCompletion:];
    }

    v17 = objc_alloc_init(CDPDCircleStateObserver);
    v18 = self->_circleProxy;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __103__CDPDCircleController_resetCircleIncludingCloudKitData_cloudKitResetReasonDescription_withCompletion___block_invoke_46;
    v20[3] = &unk_278E25348;
    v21 = v17;
    v22 = v13;
    v19 = v17;
    [(CDPDCircleStateObserver *)v19 observeCircleStateWithCircleProxy:v18 changeHandler:v20];
  }

  else
  {
    if (v16)
    {
      [CDPDCircleController resetCircleIncludingCloudKitData:cloudKitResetReasonDescription:withCompletion:];
    }

    v13[2](v13);
  }
}

void __103__CDPDCircleController_resetCircleIncludingCloudKitData_cloudKitResetReasonDescription_withCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
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
    _os_log_impl(&dword_24510B000, v6, OS_LOG_TYPE_DEFAULT, "Circle reset completed with success: %{BOOL}d, error: %{public}@", v9, 0x12u);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, a2, v5);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __103__CDPDCircleController_resetCircleIncludingCloudKitData_cloudKitResetReasonDescription_withCompletion___block_invoke_44(uint64_t a1)
{
  v2 = _CDPLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24510B000, v2, OS_LOG_TYPE_DEFAULT, "Resetting circle after join attempt following recovery resulted in pending...", buf, 2u);
  }

  v3 = *(*(a1 + 32) + 48);
  v12 = 0;
  v4 = [v3 requestToResetProtectedData:&v12];
  v5 = v12;

  if (v4)
  {
    v6 = *(*(a1 + 40) + 16);
LABEL_10:
    v6();
    goto LABEL_11;
  }

  if (![v5 cdp_isCDPErrorWithCode:-5109])
  {
    v6 = *(*(a1 + 40) + 16);
    goto LABEL_10;
  }

  v7 = _CDPLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __103__CDPDCircleController_resetCircleIncludingCloudKitData_cloudKitResetReasonDescription_withCompletion___block_invoke_44_cold_1();
  }

  v8 = *(a1 + 32);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __103__CDPDCircleController_resetCircleIncludingCloudKitData_cloudKitResetReasonDescription_withCompletion___block_invoke_45;
  v9[3] = &unk_278E25320;
  v9[4] = v8;
  v11 = *(a1 + 40);
  v10 = v5;
  [v8 _silentReauthWithCompletion:v9];

LABEL_11:
}

void __103__CDPDCircleController_resetCircleIncludingCloudKitData_cloudKitResetReasonDescription_withCompletion___block_invoke_45(void *a1, int a2)
{
  if (a2)
  {
    v3 = *(a1[4] + 48);
    v9 = 0;
    v4 = [v3 requestToResetProtectedData:&v9];
    v5 = v9;

    (*(a1[6] + 16))();
  }

  else
  {
    v7 = a1[5];
    v6 = a1[6];
    v8 = *(a1[6] + 16);

    v8();
  }
}

uint64_t __103__CDPDCircleController_resetCircleIncludingCloudKitData_cloudKitResetReasonDescription_withCompletion___block_invoke_46(uint64_t result, uint64_t a2)
{
  if (a2 != 3)
  {
    v2 = result;
    v3 = _CDPLogSystem();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __103__CDPDCircleController_resetCircleIncludingCloudKitData_cloudKitResetReasonDescription_withCompletion___block_invoke_46_cold_1();
    }

    (*(*(v2 + 40) + 16))();
    return [*(v2 + 32) stopObservingCircleStatusChange];
  }

  return result;
}

- (void)useCircleInfoToUpdateNameForDevices:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(CDPDCircleController *)self _peerDeviceNamesByPeerID];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v20;
    *&v8 = 138412546;
    v18 = v8;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        v13 = [v12 recordID];

        if (v13)
        {
          v14 = [v12 recordID];
          v15 = [v5 objectForKey:v14];

          if (v15)
          {
            v16 = _CDPLogSystem();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
            {
              *buf = v18;
              v24 = v12;
              v25 = 2112;
              v26 = v15;
              _os_log_debug_impl(&dword_24510B000, v16, OS_LOG_TYPE_DEBUG, "Updating device name for %@ to '%@' based on circle info", buf, 0x16u);
            }

            [v12 setLocalizedName:v15];
          }
        }
      }

      v9 = [v6 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v9);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)applyToJoinCircleWithJoinHandler:(id)a3
{
  v6 = a3;
  v4 = objc_alloc_init(CDPDCircleStateObserver);
  circleJoinObserver = self->_circleJoinObserver;
  self->_circleJoinObserver = v4;

  [(CDPDCircleController *)self _requestToJoinWithObserver:self->_circleJoinObserver completion:v6];
}

- (void)_requestToJoinWithObserver:(id)a3 completion:(id)a4
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __62__CDPDCircleController__requestToJoinWithObserver_completion___block_invoke;
  v4[3] = &unk_278E25370;
  v4[4] = self;
  [(CDPDCircleController *)self _requestCircleJoinWithObserver:a3 requestBlock:v4 completion:a4];
}

- (void)_requestToJoinAndWaitForSuccessWithHandler:(id)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __67__CDPDCircleController__requestToJoinAndWaitForSuccessWithHandler___block_invoke;
  v3[3] = &unk_278E25370;
  v3[4] = self;
  [(CDPDCircleController *)self _requestToJoinWithRequestBlock:v3 completion:a3];
}

- (void)_requestToJoinAfterRestoreAndWaitForSuccessWithHandler:(id)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __79__CDPDCircleController__requestToJoinAfterRestoreAndWaitForSuccessWithHandler___block_invoke;
  v3[3] = &unk_278E25370;
  v3[4] = self;
  [(CDPDCircleController *)self _requestToJoinWithRequestBlock:v3 completion:a3];
}

- (void)_requestToJoinWithRequestBlock:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(CDPDCircleStateObserver);
  [(CDPDCircleController *)self _requestCircleJoinWithObserver:v8 requestBlock:v7 completion:v6];
}

- (void)_requestCircleJoinWithObserver:(id)a3 requestBlock:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = _CDPLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24510B000, v11, OS_LOG_TYPE_DEFAULT, "Requesting to join circle with handler", buf, 2u);
  }

  if ([(CDPDCircleController *)self circleStatus]== 1)
  {
    v12 = _CDPLogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [CDPDCircleController _requestCircleJoinWithObserver:requestBlock:completion:];
    }

    if (v10)
    {
      v10[2](v10, 1, 0);
    }
  }

  else
  {
    *buf = 0;
    v26 = buf;
    v27 = 0x2020000000;
    v28 = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __79__CDPDCircleController__requestCircleJoinWithObserver_requestBlock_completion___block_invoke;
    aBlock[3] = &unk_278E253C0;
    aBlock[4] = self;
    v24 = buf;
    v13 = v8;
    v22 = v13;
    v23 = v10;
    v14 = _Block_copy(aBlock);
    circleProxy = self->_circleProxy;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __79__CDPDCircleController__requestCircleJoinWithObserver_requestBlock_completion___block_invoke_48;
    v19[3] = &unk_278E24820;
    v16 = v14;
    v20 = v16;
    [v13 observeChangeToState:1 circleProxy:circleProxy handler:v19];
    v18 = 0;
    LOBYTE(circleProxy) = v9[2](v9, &v18);
    v17 = v18;
    if ((circleProxy & 1) == 0)
    {
      (*(v16 + 2))(v16, 0, v17);
    }

    _Block_object_dispose(buf, 8);
  }
}

void __79__CDPDCircleController__requestCircleJoinWithObserver_requestBlock_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 32) + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79__CDPDCircleController__requestCircleJoinWithObserver_requestBlock_completion___block_invoke_2;
  block[3] = &unk_278E25398;
  v13 = *(a1 + 56);
  v7 = *(a1 + 40);
  v14 = a2;
  v10 = v7;
  v11 = v5;
  v12 = *(a1 + 48);
  v8 = v5;
  dispatch_sync(v6, block);
}

uint64_t __79__CDPDCircleController__requestCircleJoinWithObserver_requestBlock_completion___block_invoke_2(uint64_t result)
{
  v1 = *(*(result + 56) + 8);
  if ((*(v1 + 24) & 1) == 0)
  {
    v2 = result;
    *(v1 + 24) = 1;
    [*(result + 32) stopObservingCircleStatusChange];
    v3 = *(v2 + 64);
    v4 = _CDPLogSystem();
    v5 = v4;
    if (v3 == 1)
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 0;
        _os_log_impl(&dword_24510B000, v5, OS_LOG_TYPE_DEFAULT, "Successfully joined the circle", v12, 2u);
      }
    }

    else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __79__CDPDCircleController__requestCircleJoinWithObserver_requestBlock_completion___block_invoke_2_cold_1(v2, v5, v6, v7, v8, v9, v10, v11);
    }

    result = *(v2 + 48);
    if (result)
    {
      return (*(result + 16))(result, *(v2 + 64), *(v2 + 40));
    }
  }

  return result;
}

- (void)cancelApplicationToJoinCircle
{
  [(CDPDCircleStateObserver *)self->_circleJoinObserver stopObservingCircleStatusChange];
  circleJoinObserver = self->_circleJoinObserver;
  self->_circleJoinObserver = 0;
}

- (CDPDCircleDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_joinCircleIgnoringBackups:context:completion:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_24510B000, v0, v1, "Failed to initialized secure channel, no fallback. %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_joinCircleIgnoringBackups:context:completion:.cold.5()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_24510B000, v0, v1, "Failed to initialized secure channel with error: %@, starting to fall back...", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_joinCircleIgnoringBackups:context:completion:.cold.6()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_24510B000, v0, v1, "Failed to initialized secure channel with error: %@, Custodian keys available attempting recovery", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __70__CDPDCircleController__joinCircleIgnoringBackups_context_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_24510B000, v0, v1, "Failed to resume session, no fallback. %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __70__CDPDCircleController__joinCircleIgnoringBackups_context_completion___block_invoke_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_24510B000, v0, v1, "Failed to resume session: %@, start to fall back...", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __79__CDPDCircleController__joinCircleFallbackWithResult_ignoreBackups_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_24510B000, v0, v1, "Can't join circle, failed to check for presence of secure backup records: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __96__CDPDCircleController__attemptCustodianBackupRecoveryWithInfo_result_ignoreBackups_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_24510B000, v0, v1, "Custodian CDP Recovery failed with error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __45__CDPDCircleController_promptForCredentials___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_24510B000, v0, v1, "UI provider failed to perform interactive authentication for repair. Error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __103__CDPDCircleController_resetCircleIncludingCloudKitData_cloudKitResetReasonDescription_withCompletion___block_invoke_44_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_24510B000, v0, v1, "Attempt 1 - Failed to reset due to auth error, will retry: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __79__CDPDCircleController__requestCircleJoinWithObserver_requestBlock_completion___block_invoke_2_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*(a1 + 40));
  OUTLINED_FUNCTION_0_0(&dword_24510B000, a2, a3, "Failed to apply to circle: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end