@interface CDPDSecureChannelController
- (CDPDSecureChannelController)initWithContext:(id)a3;
- (void)_joinCircle:(id)a3;
- (void)_processAndReplyWithMessage:(id)a3 completion:(id)a4;
- (void)_startListeningWithProxy:(id)a3 completion:(id)a4;
- (void)_startListeningWithProxyWithEnforcedQoS:(id)a3 completion:(id)a4;
- (void)enforceQOS:(id)a3;
- (void)joinCircle:(id)a3;
- (void)startCircleApplicationApprovalServerWithContext:(id)a3 serverStarted:(id)a4 completion:(id)a5;
@end

@implementation CDPDSecureChannelController

- (CDPDSecureChannelController)initWithContext:(id)a3
{
  v5 = a3;
  v6 = [(CDPDSecureChannelController *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_secureChannelContext, a3);
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_attr_make_with_qos_class(v8, QOS_CLASS_USER_INITIATED, 0);

    v10 = dispatch_queue_create("com.apple.cdpd.secureChannelProcessingQueue", v9);
    secureChannelProcessingQueue = v7->_secureChannelProcessingQueue;
    v7->_secureChannelProcessingQueue = v10;
  }

  return v7;
}

- (void)enforceQOS:(id)a3
{
  v4 = a3;
  secureChannelProcessingQueue = self->_secureChannelProcessingQueue;
  v7 = v4;
  v6 = v4;
  cdp_dispatch_sync_with_qos();
}

- (void)joinCircle:(id)a3
{
  v4 = a3;
  v5 = _CDPLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [CDPDSecureChannelController joinCircle:];
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__CDPDSecureChannelController_joinCircle___block_invoke;
  v7[3] = &unk_278E24898;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(CDPDSecureChannelController *)self enforceQOS:v7];
}

- (void)_joinCircle:(id)a3
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _CDPLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [CDPDSecureChannelController _joinCircle:v5];
  }

  v6 = objc_alloc_init(CDPDCircleJoinResult);
  [(CDPDCircleJoinResult *)v6 setRequiresEscrowRecordsFetch:1];
  [(CDPDCircleJoinResult *)v6 setRequiresInitialSync:1];
  v7 = MEMORY[0x277CE44D8];
  v8 = [(CDPDSecureChannelContext *)self->_secureChannelContext context];
  v9 = *MEMORY[0x277CFD930];
  v10 = [v7 analyticsEventWithContext:v8 eventName:*MEMORY[0x277CFD850] category:*MEMORY[0x277CFD930]];

  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[CDPDSecureChannelContext secureChannelType](self->_secureChannelContext, "secureChannelType")}];
  v12 = *MEMORY[0x277CFD870];
  [v10 setObject:v11 forKeyedSubscript:*MEMORY[0x277CFD870]];

  v13 = [(CDPDSecureChannelContext *)self->_secureChannelContext keychainCircleProxy];
  v37 = 0;
  v14 = [v13 initiatingPayload:&v37];
  v15 = v37;

  v16 = *MEMORY[0x277CFD6C0];
  if (!v14 || v15)
  {
    [v10 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:v16];
    v27 = _CDPLogSystem();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v39 = v15;
      _os_log_impl(&dword_24510B000, v27, OS_LOG_TYPE_DEFAULT, "Secure Channel Init failed with error: %@", buf, 0xCu);
    }

    [v10 populateUnderlyingErrorsStartingWithRootError:v15];
    v28 = [MEMORY[0x277CFD490] rtcAnalyticsReporter];
    [v28 sendEvent:v10];

    v4[2](v4, 0, v15);
  }

  else
  {
    [v10 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v16];
    v17 = [MEMORY[0x277CFD490] rtcAnalyticsReporter];
    [v17 sendEvent:v10];

    v18 = _CDPLogSystem();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v39 = v14;
      _os_log_impl(&dword_24510B000, v18, OS_LOG_TYPE_DEFAULT, "Sending initiating payload: %@", buf, 0xCu);
    }

    v19 = MEMORY[0x277CE44D8];
    v20 = [(CDPDSecureChannelContext *)self->_secureChannelContext context];
    v21 = [v19 analyticsEventWithContext:v20 eventName:*MEMORY[0x277CFD868] category:v9];

    v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[CDPDSecureChannelContext secureChannelType](self->_secureChannelContext, "secureChannelType")}];
    [v21 setObject:v22 forKeyedSubscript:v12];

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __43__CDPDSecureChannelController__joinCircle___block_invoke;
    aBlock[3] = &unk_278E262E0;
    v33 = v21;
    v34 = self;
    v35 = v6;
    v36 = v4;
    v23 = v21;
    v24 = _Block_copy(aBlock);
    v25 = [(CDPDSecureChannelContext *)self->_secureChannelContext secureChannelProxy];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __43__CDPDSecureChannelController__joinCircle___block_invoke_25;
    v30[3] = &unk_278E26308;
    v30[4] = self;
    v31 = v24;
    v26 = v24;
    [v25 sendPayload:v14 completion:v30];
  }

  v29 = *MEMORY[0x277D85DE8];
}

void __43__CDPDSecureChannelController__joinCircle___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = MEMORY[0x277CBEC38];
  }

  else
  {
    v8 = _CDPLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v17 = v6;
      _os_log_impl(&dword_24510B000, v8, OS_LOG_TYPE_DEFAULT, "Secure Channel send failed with error: %@", buf, 0xCu);
    }

    v7 = MEMORY[0x277CBEC28];
  }

  [*(a1 + 32) setObject:v7 forKeyedSubscript:*MEMORY[0x277CFD6C0]];
  [*(a1 + 32) populateUnderlyingErrorsStartingWithRootError:v6];
  v9 = [MEMORY[0x277CFD490] rtcAnalyticsReporter];
  [v9 sendEvent:*(a1 + 32)];

  if (v5)
  {
    v10 = *(a1 + 40);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __43__CDPDSecureChannelController__joinCircle___block_invoke_22;
    v13[3] = &unk_278E25438;
    v13[4] = v10;
    v14 = *(a1 + 48);
    v15 = *(a1 + 56);
    [v10 _processAndReplyWithMessage:v5 completion:v13];
  }

  else
  {
    v11 = _CDPLogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __43__CDPDSecureChannelController__joinCircle___block_invoke_cold_1();
    }

    (*(*(a1 + 56) + 16))();
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __43__CDPDSecureChannelController__joinCircle___block_invoke_22(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = MEMORY[0x277CE44D8];
  v7 = [*(*(a1 + 32) + 8) context];
  v8 = [v6 analyticsEventWithContext:v7 eventName:*MEMORY[0x277CFD840] category:*MEMORY[0x277CFD930]];

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(*(a1 + 32) + 8), "secureChannelType")}];
  [v8 setObject:v9 forKeyedSubscript:*MEMORY[0x277CFD870]];

  if (a2)
  {
    v10 = [*(*(a1 + 32) + 8) circleProxy];
    v25 = 0;
    v11 = [v10 cachedCliqueStatus:&v25];
    v12 = v25;

    if (v12 || v11 != 1)
    {
      v20 = _CDPLogSystem();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        __43__CDPDSecureChannelController__joinCircle___block_invoke_22_cold_2();
      }

      v18 = 0;
      v17 = v12;
      v16 = v12;
    }

    else
    {
      [*(a1 + 40) setDidJoin:1];
      v13 = [*(*(a1 + 32) + 8) secureChannelProxy];
      [*(a1 + 40) setHasPeersWithCDPBackupRecords:{objc_msgSend(v13, "approverBackupRecordsExist")}];

      v14 = [*(*(a1 + 32) + 8) secureChannelProxy];
      [*(a1 + 40) setRemotePeeriCKState:{objc_msgSend(v14, "approveriCloudKeychainState")}];

      [*(a1 + 40) setRequiresEscrowRecordsFetch:0];
      v15 = [*(*(a1 + 32) + 8) keychainCircleProxy];
      [*(a1 + 40) setRequiresInitialSync:{objc_msgSend(v15, "requiresInitialSync")}];

      v16 = 0;
      v17 = *(a1 + 40);
      v18 = v17;
    }

    v21 = v17;
  }

  else
  {
    v19 = _CDPLogSystem();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      __43__CDPDSecureChannelController__joinCircle___block_invoke_22_cold_1();
    }

    v16 = v5;
    v18 = 0;
  }

  if ([v18 didJoin])
  {
    v22 = MEMORY[0x277CBEC38];
  }

  else
  {
    v22 = MEMORY[0x277CBEC28];
  }

  [v8 setObject:v22 forKeyedSubscript:*MEMORY[0x277CFD6C0]];
  [v8 populateUnderlyingErrorsStartingWithRootError:v16];
  v23 = [MEMORY[0x277CFD490] rtcAnalyticsReporter];
  [v23 sendEvent:v8];

  v24 = *(a1 + 48);
  if (v24)
  {
    (*(v24 + 16))(v24, v18, v16);
  }
}

void __43__CDPDSecureChannelController__joinCircle___block_invoke_25(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _CDPLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __43__CDPDSecureChannelController__joinCircle___block_invoke_25_cold_1();
  }

  v8 = *(*(a1 + 32) + 16);
  v12 = *(a1 + 40);
  v11 = v5;
  v9 = v6;
  v10 = v5;
  cdp_dispatch_async_with_qos();
}

- (void)startCircleApplicationApprovalServerWithContext:(id)a3 serverStarted:(id)a4 completion:(id)a5
{
  v35 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  secureChannelContext = self->_secureChannelContext;
  v11 = a4;
  [(CDPDSecureChannelContext *)secureChannelContext setSecureChannelType:2];
  v12 = [(CDPDSecureChannelContext *)self->_secureChannelContext secureChannelProxy];
  v13 = [v12 conformsToProtocol:&unk_285828B20];

  if (v13)
  {
    v14 = [(CDPDSecureChannelContext *)self->_secureChannelContext secureChannelProxy];
    v15 = _CDPLogSystem();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_24510B000, v15, OS_LOG_TYPE_DEFAULT, "Starting a CDP accepting server...", buf, 2u);
    }

    v16 = [MEMORY[0x277CFD480] sharedInstance];
    v17 = [v16 primaryAccountSecurityLevel];

    if ([v8 managedAccountsAllowedInCDP])
    {
      v32 = 0;
      v18 = [v8 isiCDPEligibleWithError:&v32];
      v19 = v32;
    }

    else
    {
      v19 = 0;
      v18 = 0;
    }

    v20 = _CDPLogSystem();
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
    if (v17 == 4 || v18)
    {
      if (v21)
      {
        *buf = 0;
        _os_log_impl(&dword_24510B000, v20, OS_LOG_TYPE_DEFAULT, "CDPDSecureChannelController: We are iCDP Eligible, checking for escrow records.", buf, 2u);
      }

      if ([v8 _skipEscrowFetches])
      {
        [v14 setApproverBackupRecordsExist:1];
        v22 = [(CDPDSecureChannelContext *)self->_secureChannelContext circleProxy];
        v23 = [objc_alloc(MEMORY[0x277CFD540]) initWithContext:v8];
        v24 = [CDPDKeychainSync keyChainSyncWithProxy:v22 sosCircleProxy:v23 context:v8];

        if ([(CDPDSecureBackupController *)v24 isUserVisibleKeychainSyncEnabled])
        {
          v25 = 2;
        }

        else
        {
          v25 = 1;
        }

        [v14 setApproveriCloudKeychainState:v25];
        [(CDPDSecureChannelController *)self _startListeningWithProxy:v14 completion:v9];
      }

      else
      {
        v24 = [[CDPDSecureBackupController alloc] initWithContext:v8 uiProvider:0 delegate:0];
        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = __104__CDPDSecureChannelController_startCircleApplicationApprovalServerWithContext_serverStarted_completion___block_invoke;
        v27[3] = &unk_278E26330;
        v28 = v14;
        v29 = self;
        v30 = v8;
        v31 = v9;
        [(CDPDSecureBackupController *)v24 backupRecordsArePresentWithCompletion:v27];
      }
    }

    else
    {
      if (v21)
      {
        *buf = 138412290;
        v34 = v19;
        _os_log_impl(&dword_24510B000, v20, OS_LOG_TYPE_DEFAULT, "Starting server in dry move, we are not iCDP eligible (error: %@)", buf, 0xCu);
      }

      [(CDPDSecureChannelController *)self _startListeningWithProxy:v14 completion:v9];
    }

    v11[2](v11, 1, 0);
  }

  else
  {
    v14 = _CDPStateError();
    (v11)[2](v11, 0, v14);
  }

  v26 = *MEMORY[0x277D85DE8];
}

void __104__CDPDSecureChannelController_startCircleApplicationApprovalServerWithContext_serverStarted_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setApproverBackupRecordsExist:?];
  v2 = [*(*(a1 + 40) + 8) circleProxy];
  v3 = [objc_alloc(MEMORY[0x277CFD540]) initWithContext:*(a1 + 48)];
  v6 = [CDPDKeychainSync keyChainSyncWithProxy:v2 sosCircleProxy:v3 context:*(a1 + 48)];

  v4 = *(a1 + 32);
  if ([v6 isUserVisibleKeychainSyncEnabled])
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  [v4 setApproveriCloudKeychainState:v5];
  [*(a1 + 40) _startListeningWithProxy:*(a1 + 32) completion:*(a1 + 56)];
}

- (void)_startListeningWithProxy:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _CDPLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [CDPDSecureChannelController _startListeningWithProxy:completion:];
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __67__CDPDSecureChannelController__startListeningWithProxy_completion___block_invoke;
  v11[3] = &unk_278E24A20;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [(CDPDSecureChannelController *)self enforceQOS:v11];
}

- (void)_startListeningWithProxyWithEnforcedQoS:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = os_transaction_create();
  v9 = +[CDPDLockAssertion lock];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __82__CDPDSecureChannelController__startListeningWithProxyWithEnforcedQoS_completion___block_invoke;
  aBlock[3] = &unk_278E26380;
  aBlock[4] = self;
  v19 = v6;
  v21 = v8;
  v22 = v7;
  v20 = v9;
  v10 = v8;
  v11 = v9;
  v12 = v7;
  v13 = v6;
  v14 = _Block_copy(aBlock);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __82__CDPDSecureChannelController__startListeningWithProxyWithEnforcedQoS_completion___block_invoke_2;
  v16[3] = &unk_278E263D0;
  v16[4] = self;
  v17 = v14;
  v15 = v14;
  [v13 listenForPayloadsWithHandler:v16];
}

void __82__CDPDSecureChannelController__startListeningWithProxyWithEnforcedQoS_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v42 = *MEMORY[0x277D85DE8];
  v7 = MEMORY[0x277CE44D8];
  v8 = *(*(a1 + 32) + 8);
  v9 = a2;
  v10 = [v8 context];
  v11 = [v7 analyticsEventWithContext:v10 eventName:*MEMORY[0x277CFD858] category:*MEMORY[0x277CFD930]];

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(*(a1 + 32) + 8), "secureChannelType")}];
  [v11 setObject:v12 forKeyedSubscript:*MEMORY[0x277CFD870]];

  v13 = MEMORY[0x277CCABB0];
  v14 = [*(*(a1 + 32) + 8) circleProxy];
  v15 = [v13 numberWithUnsignedInteger:{objc_msgSend(v14, "cachedCliqueStatus:", 0)}];
  [v11 setObject:v15 forKeyedSubscript:*MEMORY[0x277CFD6A0]];

  v16 = [*(a1 + 40) telemetryFlowIDFromRequester];

  if (v16)
  {
    v17 = _CDPLogSystem();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      __82__CDPDSecureChannelController__startListeningWithProxyWithEnforcedQoS_completion___block_invoke_cold_1(v17);
    }

    v18 = [*(a1 + 40) telemetryFlowIDFromRequester];
    [v11 setObject:v18 forKeyedSubscript:*MEMORY[0x277CE45A8]];

    v19 = *(*(a1 + 32) + 8);
    v20 = [*(a1 + 40) telemetryFlowIDFromRequester];
    [v19 setFlowIDFromRequester:v20];
  }

  v21 = [*(*(a1 + 32) + 8) keychainCircleProxy];
  v39 = 0;
  v22 = [v21 processIncomingPayload:v9 error:&v39];

  v23 = v39;
  if (v22)
  {
    v24 = MEMORY[0x277CBEC38];
  }

  else
  {
    v25 = _CDPLogSystem();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v41 = v23;
      _os_log_impl(&dword_24510B000, v25, OS_LOG_TYPE_DEFAULT, "Secure Channel process failed with error: %@", buf, 0xCu);
    }

    v24 = MEMORY[0x277CBEC28];
  }

  [v11 setObject:v24 forKeyedSubscript:*MEMORY[0x277CFD6C0]];
  [v11 populateUnderlyingErrorsStartingWithRootError:v23];
  v26 = [MEMORY[0x277CFD490] rtcAnalyticsReporter];
  [v26 sendEvent:v11];

  v27 = v22;
  *a3 = v22;
  v28 = v23;
  *a4 = v23;
  if (v23)
  {
    v29 = _CDPLogSystem();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      __82__CDPDSecureChannelController__startListeningWithProxyWithEnforcedQoS_completion___block_invoke_cold_2();
    }
  }

  v30 = [*(*(a1 + 32) + 8) keychainCircleProxy];
  v31 = [v30 isComplete];

  if (v23 || v31)
  {
    if (v23)
    {
      LOBYTE(v31) = 0;
    }

    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __82__CDPDSecureChannelController__startListeningWithProxyWithEnforcedQoS_completion___block_invoke_84;
    v33[3] = &unk_278E26358;
    v37 = *(a1 + 64);
    v38 = v31;
    v34 = v23;
    v35 = *(a1 + 48);
    v36 = *(a1 + 56);
    dispatch_async(MEMORY[0x277D85CD0], v33);
  }

  v32 = *MEMORY[0x277D85DE8];
}

uint64_t __82__CDPDSecureChannelController__startListeningWithProxyWithEnforcedQoS_completion___block_invoke_84(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    (*(v2 + 16))(v2, *(a1 + 64), *(a1 + 32));
  }

  v3 = *(a1 + 40);

  return [v3 unlock];
}

void __82__CDPDSecureChannelController__startListeningWithProxyWithEnforcedQoS_completion___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v8 = _CDPLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    __82__CDPDSecureChannelController__startListeningWithProxyWithEnforcedQoS_completion___block_invoke_2_cold_1();
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __82__CDPDSecureChannelController__startListeningWithProxyWithEnforcedQoS_completion___block_invoke_86;
  v12[3] = &unk_278E263A8;
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v13 = v7;
  v14 = v10;
  v15 = a3;
  v16 = a4;
  v11 = v7;
  [v9 enforceQOS:v12];
}

- (void)_processAndReplyWithMessage:(id)a3 completion:(id)a4
{
  v40 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = _CDPLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v39 = v6;
    _os_log_impl(&dword_24510B000, v8, OS_LOG_TYPE_DEFAULT, "Processing reply: %@", buf, 0xCu);
  }

  v9 = MEMORY[0x277CE44D8];
  v10 = [(CDPDSecureChannelContext *)self->_secureChannelContext context];
  v11 = *MEMORY[0x277CFD930];
  v12 = [v9 analyticsEventWithContext:v10 eventName:*MEMORY[0x277CFD860] category:*MEMORY[0x277CFD930]];

  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[CDPDSecureChannelContext secureChannelType](self->_secureChannelContext, "secureChannelType")}];
  v14 = *MEMORY[0x277CFD870];
  [v12 setObject:v13 forKeyedSubscript:*MEMORY[0x277CFD870]];

  v15 = [(CDPDSecureChannelContext *)self->_secureChannelContext keychainCircleProxy];
  v37 = 0;
  v16 = [v15 processIncomingPayload:v6 error:&v37];
  v17 = v37;

  if (v17)
  {
    v18 = v16 == 0;
  }

  else
  {
    v18 = 0;
  }

  if (v18)
  {
    v19 = MEMORY[0x277CBEC28];
  }

  else
  {
    v19 = MEMORY[0x277CBEC38];
  }

  [v12 setObject:v19 forKeyedSubscript:*MEMORY[0x277CFD6C0]];
  [v12 populateUnderlyingErrorsStartingWithRootError:v17];
  v20 = [MEMORY[0x277CFD490] rtcAnalyticsReporter];
  [v20 sendEvent:v12];

  if (v17)
  {
    v21 = _CDPLogSystem();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [CDPDSecureChannelController _processAndReplyWithMessage:completion:];
    }

    v7[2](v7, 0, v17);
  }

  else
  {
    v22 = [(CDPDSecureChannelContext *)self->_secureChannelContext keychainCircleProxy];
    v23 = [v22 isComplete];

    v24 = _CDPLogSystem();
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
    if (v23)
    {
      if (v25)
      {
        *buf = 0;
        _os_log_impl(&dword_24510B000, v24, OS_LOG_TYPE_DEFAULT, "Secure channel request completed...", buf, 2u);
      }

      v7[2](v7, 1, 0);
    }

    else
    {
      if (v25)
      {
        *buf = 138412290;
        v39 = v16;
        _os_log_impl(&dword_24510B000, v24, OS_LOG_TYPE_DEFAULT, "Sending response: %@", buf, 0xCu);
      }

      v27 = MEMORY[0x277CE44D8];
      v28 = [(CDPDSecureChannelContext *)self->_secureChannelContext context];
      v29 = [v27 analyticsEventWithContext:v28 eventName:*MEMORY[0x277CFD868] category:v11];

      v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[CDPDSecureChannelContext secureChannelType](self->_secureChannelContext, "secureChannelType")}];
      [v29 setObject:v30 forKeyedSubscript:v14];

      v31 = [(CDPDSecureChannelContext *)self->_secureChannelContext secureChannelProxy];
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __70__CDPDSecureChannelController__processAndReplyWithMessage_completion___block_invoke;
      v33[3] = &unk_278E263F8;
      v34 = v29;
      v35 = self;
      v36 = v7;
      v32 = v29;
      [v31 sendPayload:v16 completion:v33];
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

void __70__CDPDSecureChannelController__processAndReplyWithMessage_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = MEMORY[0x277CBEC38];
  }

  else
  {
    v8 = _CDPLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v6;
      _os_log_impl(&dword_24510B000, v8, OS_LOG_TYPE_DEFAULT, "Secure Channel send failed with error: %@", &v12, 0xCu);
    }

    v7 = MEMORY[0x277CBEC28];
  }

  [*(a1 + 32) setObject:v7 forKeyedSubscript:*MEMORY[0x277CFD6C0]];
  [*(a1 + 32) populateUnderlyingErrorsStartingWithRootError:v6];
  v9 = [MEMORY[0x277CFD490] rtcAnalyticsReporter];
  [v9 sendEvent:*(a1 + 32)];

  if (v5)
  {
    [*(a1 + 40) _processAndReplyWithMessage:v5 completion:*(a1 + 48)];
  }

  else
  {
    v10 = _CDPLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __70__CDPDSecureChannelController__processAndReplyWithMessage_completion___block_invoke_cold_1();
    }

    (*(*(a1 + 48) + 16))();
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)joinCircle:.cold.1()
{
  v9 = *MEMORY[0x277D85DE8];
  qos_class_self();
  v0 = [OUTLINED_FUNCTION_4_0() numberWithUnsignedInt:?];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_8(&dword_24510B000, v1, v2, "Attempting to join circle with QOS: %@. %@ will be enforced.", v3, v4, v5, v6, v8);

  v7 = *MEMORY[0x277D85DE8];
}

void __43__CDPDSecureChannelController__joinCircle___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_24510B000, v0, v1, "Failed to send initiating message for resume: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __43__CDPDSecureChannelController__joinCircle___block_invoke_22_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_24510B000, v0, v1, "Failed to process and reply message with replyError: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __43__CDPDSecureChannelController__joinCircle___block_invoke_22_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_24510B000, v0, v1, "We completed, but ended up with error... %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __43__CDPDSecureChannelController__joinCircle___block_invoke_25_cold_1()
{
  v9 = *MEMORY[0x277D85DE8];
  qos_class_self();
  v0 = [OUTLINED_FUNCTION_4_0() numberWithUnsignedInt:?];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_8(&dword_24510B000, v1, v2, "Processing SecureChannel reply with QOS: %@. %@ will be enforced.", v3, v4, v5, v6, v8);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_startListeningWithProxy:completion:.cold.1()
{
  v9 = *MEMORY[0x277D85DE8];
  qos_class_self();
  v0 = [OUTLINED_FUNCTION_4_0() numberWithUnsignedInt:?];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_8(&dword_24510B000, v1, v2, "Listening for SecureChannel payloads with QOS: %@. %@ will be enforced.", v3, v4, v5, v6, v8);

  v7 = *MEMORY[0x277D85DE8];
}

void __82__CDPDSecureChannelController__startListeningWithProxyWithEnforcedQoS_completion___block_invoke_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_24510B000, v0, v1, "Failed to process requestor payload on approver side with error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __82__CDPDSecureChannelController__startListeningWithProxyWithEnforcedQoS_completion___block_invoke_2_cold_1()
{
  v9 = *MEMORY[0x277D85DE8];
  qos_class_self();
  v0 = [OUTLINED_FUNCTION_4_0() numberWithUnsignedInt:?];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_8(&dword_24510B000, v1, v2, "Processing SecureChannel approvingProxy payload with QOS: %@. %@ will be enforced.", v3, v4, v5, v6, v8);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_processAndReplyWithMessage:completion:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_24510B000, v0, v1, "Failed to process reply with error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __70__CDPDSecureChannelController__processAndReplyWithMessage_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_24510B000, v0, v1, "Failed to send response with error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end