@interface CDPInternalWalrusStateController
- (BOOL)_shouldRetryForError:(id)a3;
- (CDPInternalWalrusStateController)initWithAccount:(id)a3 cdpdAccount:(id)a4 securityProxy:(id)a5 pcsProxy:(id)a6 accountStore:(id)a7 sbProxy:(id)a8;
- (CDPInternalWalrusStateController)initWithAccount:(id)a3 cdpdAccount:(id)a4 securityProxy:(id)a5 pcsProxy:(id)a6 sbProxy:(id)a7;
- (CDPInternalWalrusStateController)initWithContext:(id)a3;
- (id)_combinedWalrusStatusForPrimaryAccountWithError:(id *)a3;
- (id)_combinedWalrusStatusWithContext:(id)a3 error:(id *)a4;
- (id)_combinedWalrusStatusWithOptions:(id)a3 context:(id)a4 error:(id *)a5;
- (id)_eligibleAccountWithContext:(id)a3 checkWithServer:(BOOL)a4 requireCKAccount:(BOOL)a5 error:(id *)a6;
- (id)_eligiblePrimaryAccountForFlow:(unint64_t)a3 error:(id *)a4;
- (id)_fetchiCDPAccountInfoDictionaryWithContext:(id)a3 error:(id *)a4;
- (unint64_t)_escrowedKeysStatusUsingICDP:(id)a3;
- (unint64_t)_pcsAccountInfoStatusUsingICDP:(id)a3;
- (unint64_t)_statusForError:(id)a3;
- (unint64_t)_walrusStatusForPrimaryAccountWithError:(id *)a3;
- (unint64_t)_walrusStatusWithContext:(id)a3 error:(id *)a4;
- (unint64_t)_walrusStatusWithOptions:(id)a3 withError:(id *)a4;
- (void)_reportWalrusRepairFinishEventWithCombinedWalrusStatus:(id)a3 error:(id)a4;
- (void)_reportWalrusRepairStartEventWithCombinedWalrusStatus:(id)a3;
- (void)_setAccountTelemetryOptInConfig:(BOOL)a3 altDSID:(id)a4 authController:(id)a5 accountManager:(id)a6 completion:(id)a7;
- (void)repairWalrusStatusWithCompletion:(id)a3;
- (void)walrusStatusWithContext:(id)a3 completion:(id)a4;
@end

@implementation CDPInternalWalrusStateController

- (CDPInternalWalrusStateController)initWithContext:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x277CFD480] sharedInstance];
  v7 = [[CDPDAccount alloc] initWithContext:v5];
  v8 = objc_alloc_init(CDPWalrusSecurityProxyImpl);
  v9 = objc_alloc_init(MEMORY[0x277CFD520]);
  v10 = [[CDPDSecureBackupProxyImpl alloc] initWithContext:v5];
  v11 = [(CDPInternalWalrusStateController *)self initWithAccount:v6 cdpdAccount:v7 securityProxy:v8 pcsProxy:v9 sbProxy:v10];

  if (v11)
  {
    objc_storeStrong(&v11->_context, a3);
  }

  return v11;
}

- (CDPInternalWalrusStateController)initWithAccount:(id)a3 cdpdAccount:(id)a4 securityProxy:(id)a5 pcsProxy:(id)a6 sbProxy:(id)a7
{
  v12 = MEMORY[0x277CB8F48];
  v13 = a7;
  v14 = a6;
  v15 = a5;
  v16 = a4;
  v17 = a3;
  v18 = [v12 defaultStore];
  v19 = [(CDPInternalWalrusStateController *)self initWithAccount:v17 cdpdAccount:v16 securityProxy:v15 pcsProxy:v14 accountStore:v18 sbProxy:v13];

  return v19;
}

- (CDPInternalWalrusStateController)initWithAccount:(id)a3 cdpdAccount:(id)a4 securityProxy:(id)a5 pcsProxy:(id)a6 accountStore:(id)a7 sbProxy:(id)a8
{
  v23 = a3;
  v22 = a4;
  v21 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v24.receiver = self;
  v24.super_class = CDPInternalWalrusStateController;
  v18 = [(CDPInternalWalrusStateController *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_cdpAccount, a3);
    objc_storeStrong(&v19->_securityProxy, a5);
    objc_storeStrong(&v19->_pcsProxy, a6);
    objc_storeStrong(&v19->_cdpDaemonAccount, a4);
    objc_storeStrong(&v19->_accountStore, a7);
    objc_storeStrong(&v19->_sbProxy, a8);
  }

  return v19;
}

- (unint64_t)_walrusStatusWithContext:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (v6)
  {
    v14 = 0;
    v7 = [(CDPInternalWalrusStateController *)self _eligibleAccountWithContext:v6 checkWithServer:0 requireCKAccount:1 error:&v14];
    v8 = v14;
    if (v7)
    {
      v9 = [(CDPInternalWalrusStateController *)self _optionsWithContext:v6];
      v10 = [(CDPInternalWalrusStateController *)self _walrusStatusWithOptions:v9 withError:a4];
    }

    else
    {
      v11 = _CDPLogSystem();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [CDPInternalWalrusStateController _walrusStatusWithContext:error:];
      }

      if (a4)
      {
        v12 = v8;
        *a4 = v8;
      }

      v10 = [(CDPInternalWalrusStateController *)self _statusForError:v8];
    }
  }

  else
  {
    v10 = [(CDPInternalWalrusStateController *)self _walrusStatusForPrimaryAccountWithError:a4];
  }

  return v10;
}

- (unint64_t)_walrusStatusForPrimaryAccountWithError:(id *)a3
{
  v13 = 0;
  v5 = [(CDPInternalWalrusStateController *)self _eligiblePrimaryAccountForFlow:0 error:&v13];
  v6 = v13;
  if (v5)
  {
    v7 = [(CDPAccount *)self->_cdpAccount contextForPrimaryAccount];
    v8 = [(CDPInternalWalrusStateController *)self _optionsWithContext:v7];

    v9 = [(CDPInternalWalrusStateController *)self _walrusStatusWithOptions:v8 withError:a3];
  }

  else
  {
    v10 = _CDPLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [CDPInternalWalrusStateController _walrusStatusForPrimaryAccountWithError:];
    }

    if (a3)
    {
      v11 = v6;
      *a3 = v6;
    }

    v9 = [(CDPInternalWalrusStateController *)self _statusForError:v6];
  }

  return v9;
}

- (unint64_t)_walrusStatusWithOptions:(id)a3 withError:(id *)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = _CDPSignpostLogSystem();
  v8 = _CDPSignpostCreate();

  v9 = _CDPSignpostLogSystem();
  v10 = v9;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_24510B000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "FetchAccountCleanupStatus", " enableTelemetry=YES ", buf, 2u);
  }

  v11 = _CDPSignpostLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v29 = v8;
    _os_log_impl(&dword_24510B000, v11, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: FetchAccountCleanupStatus  enableTelemetry=YES ", buf, 0xCu);
  }

  pcsProxy = self->_pcsProxy;
  v27 = 0;
  v13 = [(CDPProtectedCloudStorageProxy *)pcsProxy isWalrusEnabledWithOptions:v6 error:&v27];

  v14 = v27;
  Nanoseconds = _CDPSignpostGetNanoseconds();
  v16 = _CDPSignpostLogSystem();
  v17 = v16;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    v18 = [v14 code];
    *buf = 67240192;
    LODWORD(v29) = v18;
    _os_signpost_emit_with_name_impl(&dword_24510B000, v17, OS_SIGNPOST_INTERVAL_END, v8, "FetchAccountCleanupStatus", " Error=%{public,signpost.telemetry:number1,name=Error}d ", buf, 8u);
  }

  v19 = _CDPSignpostLogSystem();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = [v14 code];
    *buf = 134218496;
    v29 = v8;
    v30 = 2048;
    v31 = Nanoseconds / 1000000000.0;
    v32 = 1026;
    v33 = v20;
    _os_log_impl(&dword_24510B000, v19, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: FetchAccountCleanupStatus  Error=%{public,signpost.telemetry:number1,name=Error}d ", buf, 0x1Cu);
  }

  v21 = _CDPLogSystem();
  v22 = v21;
  if (v14)
  {
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [CDPInternalWalrusStateController _walrusStatusWithOptions:withError:];
    }

    if (a4)
    {
      v23 = v14;
      v24 = 0;
      *a4 = v14;
    }

    else
    {
      v24 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v29) = v13;
      _os_log_impl(&dword_24510B000, v22, OS_LOG_TYPE_DEFAULT, "Successfully fetched walrus status: (%{BOOL}d)", buf, 8u);
    }

    if (v13)
    {
      v24 = 1;
    }

    else
    {
      v24 = 2;
    }
  }

  v25 = *MEMORY[0x277D85DE8];
  return v24;
}

- (void)walrusStatusWithContext:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __71__CDPInternalWalrusStateController_walrusStatusWithContext_completion___block_invoke;
  aBlock[3] = &unk_278E25D40;
  aBlock[4] = self;
  v18 = v7;
  v8 = v7;
  v9 = _Block_copy(aBlock);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __71__CDPInternalWalrusStateController_walrusStatusWithContext_completion___block_invoke_2;
  v15[3] = &unk_278E25D68;
  v15[4] = self;
  v16 = v6;
  v10 = v6;
  v11 = _Block_copy(v15);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __71__CDPInternalWalrusStateController_walrusStatusWithContext_completion___block_invoke_3;
  v14[3] = &unk_278E25D90;
  v14[4] = self;
  v12 = _Block_copy(v14);
  v13 = [objc_alloc(MEMORY[0x277CE4698]) initWithMaxRetries:1];
  [v13 scheduleTask:v11 shouldRetry:v12 completionHandler:v9];
}

void __71__CDPInternalWalrusStateController_walrusStatusWithContext_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = v7;
  if (!v7 && v5)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "_statusForError:", v5)}];
  }

  v8 = v6;
  (*(*(a1 + 40) + 16))(*(a1 + 40), [v6 unsignedIntegerValue], v5);
}

void __71__CDPInternalWalrusStateController_walrusStatusWithContext_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v8 = 0;
  v4 = a2;
  v5 = [v2 _walrusStatusWithContext:v3 error:&v8];
  v6 = v8;
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v5];
  v4[2](v4, v7, v6);
}

- (id)_combinedWalrusStatusWithContext:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (v6)
  {
    v14 = 0;
    v7 = [(CDPInternalWalrusStateController *)self _eligibleAccountWithContext:v6 checkWithServer:0 requireCKAccount:1 error:&v14];
    v8 = v14;
    if (v7)
    {
      v9 = [(CDPInternalWalrusStateController *)self _optionsWithContext:v6];
      v10 = [(CDPInternalWalrusStateController *)self _combinedWalrusStatusWithOptions:v9 context:v6 error:a4];
    }

    else
    {
      v11 = _CDPLogSystem();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [CDPInternalWalrusStateController _combinedWalrusStatusWithContext:error:];
      }

      if (a4)
      {
        v12 = v8;
        v10 = 0;
        *a4 = v8;
      }

      else
      {
        v10 = 0;
      }
    }
  }

  else
  {
    v10 = [(CDPInternalWalrusStateController *)self _combinedWalrusStatusForPrimaryAccountWithError:a4];
  }

  return v10;
}

- (id)_combinedWalrusStatusForPrimaryAccountWithError:(id *)a3
{
  v13 = 0;
  v5 = [(CDPInternalWalrusStateController *)self _eligiblePrimaryAccountForFlow:0 error:&v13];
  v6 = v13;
  if (v5)
  {
    v7 = [(CDPAccount *)self->_cdpAccount contextForPrimaryAccount];
    v8 = [(CDPInternalWalrusStateController *)self _optionsWithContext:v7];
    v9 = [(CDPInternalWalrusStateController *)self _combinedWalrusStatusWithOptions:v8 context:v7 error:a3];
  }

  else
  {
    v10 = _CDPLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [CDPInternalWalrusStateController _combinedWalrusStatusForPrimaryAccountWithError:];
    }

    if (a3)
    {
      v11 = v6;
      v9 = 0;
      *a3 = v6;
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (id)_combinedWalrusStatusWithOptions:(id)a3 context:(id)a4 error:(id *)a5
{
  v39 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = MEMORY[0x277CFD4A0];
  v10 = a3;
  v11 = objc_alloc_init(v9);
  v36 = 0;
  v12 = [(CDPInternalWalrusStateController *)self _walrusStatusWithOptions:v10 withError:&v36];

  v13 = v36;
  [v11 setOctagonWalrusStatus:v12];
  v35 = 0;
  v14 = [(CDPInternalWalrusStateController *)self _fetchiCDPAccountInfoDictionaryWithContext:v8 error:&v35];
  v15 = v35;
  if (v15)
  {
    if (!v13)
    {
      v16 = _CDPLogSystem();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [CDPInternalWalrusStateController _combinedWalrusStatusWithOptions:context:error:];
      }

      v17 = v15;
      if (!a5)
      {
        goto LABEL_12;
      }

LABEL_11:
      *a5 = v17;
      goto LABEL_12;
    }
  }

  else
  {
    [v11 setPcsWalrusStatus:{-[CDPInternalWalrusStateController _pcsAccountInfoStatusUsingICDP:](self, "_pcsAccountInfoStatusUsingICDP:", v14)}];
    [v11 setEscrowWalrusStatus:{-[CDPInternalWalrusStateController _escrowedKeysStatusUsingICDP:](self, "_escrowedKeysStatusUsingICDP:", v14)}];
    if (!v13)
    {
      goto LABEL_12;
    }
  }

  v18 = _CDPLogSystem();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    [CDPInternalWalrusStateController _combinedWalrusStatusWithOptions:context:error:];
  }

  v17 = v13;
  if (a5)
  {
    goto LABEL_11;
  }

LABEL_12:
  v19 = [v11 mismatchDetected];
  v20 = _CDPLogSystem();
  v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG);
  if (v19)
  {
    if (v21)
    {
      [CDPInternalWalrusStateController _combinedWalrusStatusWithOptions:context:error:];
    }
  }

  else
  {
    if (v21)
    {
      [CDPInternalWalrusStateController _combinedWalrusStatusWithOptions:context:error:];
    }

    v22 = +[CDPDFollowUpController sharedInstance];
    v23 = [v22 hasPendingFollowUpWithUniqueIdentifier:@"com.apple.CDPFollowUpIdentifier.adpStateHealing"];

    v20 = _CDPLogSystem();
    v24 = os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG);
    if (v23)
    {
      if (v24)
      {
        [CDPInternalWalrusStateController _combinedWalrusStatusWithOptions:context:error:];
      }

      v25 = [MEMORY[0x277CFD4D8] contextForADPStateHealing];
      v26 = [v8 telemetryFlowID];
      [v25 setTelemetryFlowID:v26];

      v27 = +[CDPDFollowUpController sharedInstance];
      v34 = 0;
      v28 = [v27 clearFollowUpWithContext:v25 error:&v34];
      v20 = v34;

      v29 = _CDPLogSystem();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        [CDPInternalWalrusStateController _combinedWalrusStatusWithOptions:v28 context:v20 error:?];
      }
    }

    else if (v24)
    {
      [CDPInternalWalrusStateController _combinedWalrusStatusWithOptions:context:error:];
    }
  }

  v30 = _CDPLogSystem();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v38 = v11;
    _os_log_impl(&dword_24510B000, v30, OS_LOG_TYPE_DEFAULT, "Walrus state: %@", buf, 0xCu);
  }

  v31 = v11;
  v32 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)repairWalrusStatusWithCompletion:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v23 = 0;
  v5 = [(CDPInternalWalrusStateController *)self _combinedWalrusStatusForPrimaryAccountWithError:&v23];
  v6 = v23;
  [(CDPInternalWalrusStateController *)self _reportWalrusRepairStartEventWithCombinedWalrusStatus:v5];
  v22 = 0;
  v7 = [(CDPInternalWalrusStateController *)self _eligiblePrimaryAccountForFlow:1 error:&v22];
  v8 = v22;
  v9 = _CDPLogSystem();
  v10 = v9;
  if (v7)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v7;
      _os_log_impl(&dword_24510B000, v10, OS_LOG_TYPE_DEFAULT, "Repairing status for account %@, initiating silent auth.", &buf, 0xCu);
    }

    v11 = os_transaction_create();
    *&buf = 0;
    *(&buf + 1) = &buf;
    v25 = 0x3032000000;
    v26 = __Block_byref_object_copy__6;
    v27 = __Block_byref_object_dispose__6;
    v28 = objc_opt_new();
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __69__CDPInternalWalrusStateController_repairWalrusStatusWithCompletion___block_invoke;
    v14[3] = &unk_278E25DB8;
    v12 = v11;
    p_buf = &buf;
    v15 = v12;
    v16 = self;
    v17 = v5;
    v20 = v4;
    v18 = v7;
    v19 = v6;
    [CDPAuthenticationHelper silentAuthenticationForPrimaryAccountWithCompletion:v14];

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [CDPInternalWalrusStateController repairWalrusStatusWithCompletion:];
    }

    [(CDPInternalWalrusStateController *)self _reportWalrusRepairFinishEventWithCombinedWalrusStatus:v5 error:v8];
    if (v4)
    {
      (*(v4 + 2))(v4, v8);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __69__CDPInternalWalrusStateController_repairWalrusStatusWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = _CDPLogSystem();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __69__CDPInternalWalrusStateController_repairWalrusStatusWithCompletion___block_invoke_cold_1();
    }

    [*(*(*(a1 + 80) + 8) + 40) reportRepairAttemptFailedDueToAuthenticationError:v6];
    [*(a1 + 40) _reportWalrusRepairFinishEventWithCombinedWalrusStatus:*(a1 + 48) error:v6];
    v9 = *(a1 + 72);
    if (v9)
    {
      (*(v9 + 16))(v9, v6);
    }

    goto LABEL_17;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24510B000, v8, OS_LOG_TYPE_DEFAULT, "Silent auth completed, continuing walrus repair.", buf, 2u);
  }

  v27 = v5;
  v26 = [objc_alloc(MEMORY[0x277CFD4A8]) initWithAuthenticationResults:v5];
  v10 = [*(a1 + 40) _optionsWithContext:?];
  v11 = *(*(a1 + 40) + 16);
  v12 = [*(a1 + 56) identifier];
  v29 = 0;
  v25 = v10;
  v24 = [v11 repairWalrusWithAccountIdentifier:v12 options:v10 error:&v29];
  v23 = v29;

  v13 = *(a1 + 40);
  v28 = 0;
  v14 = [v13 _combinedWalrusStatusForPrimaryAccountWithError:&v28];
  v15 = v28;
  [*(*(*(a1 + 80) + 8) + 40) reportRepairAttemptFinishedWithSuccess:v24 authenticationError:0 accountInfoFetchErrorBeforeRepair:*(a1 + 64) repairError:v23 accountInfoFetchErrorAfterRepair:v15 octagonStatusBefore:objc_msgSend(*(a1 + 48) octagonStatusAfter:"octagonWalrusStatus") pcsStatusBefore:objc_msgSend(v14 pcsStatusAfter:"octagonWalrusStatus") escrowKeysStatusBefore:objc_msgSend(*(a1 + 48) escrowKeysStatusAfter:{"pcsWalrusStatus"), objc_msgSend(v14, "pcsWalrusStatus"), objc_msgSend(*(a1 + 48), "escrowWalrusStatus"), objc_msgSend(v14, "escrowWalrusStatus")}];
  [*(a1 + 40) _reportWalrusRepairFinishEventWithCombinedWalrusStatus:v14 error:v23];
  v16 = _CDPLogSystem();
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
  if (v24)
  {
    if (v17)
    {
      *buf = 0;
      v18 = "Repair completed successfully";
      v19 = v16;
      v20 = 2;
LABEL_13:
      _os_log_impl(&dword_24510B000, v19, OS_LOG_TYPE_DEFAULT, v18, buf, v20);
    }
  }

  else if (v17)
  {
    *buf = 138412290;
    v31 = v23;
    v18 = "Repair completed with error: %@";
    v19 = v16;
    v20 = 12;
    goto LABEL_13;
  }

  v21 = *(a1 + 72);
  v5 = v27;
  if (v21)
  {
    (*(v21 + 16))(v21, v23);
  }

LABEL_17:
  v22 = *MEMORY[0x277D85DE8];
}

- (void)_reportWalrusRepairStartEventWithCombinedWalrusStatus:(id)a3
{
  v3 = MEMORY[0x277CE44D8];
  context = self->_context;
  v5 = *MEMORY[0x277CFD8D8];
  v6 = *MEMORY[0x277CFD930];
  v7 = a3;
  v14 = [v3 analyticsEventWithContext:context eventName:v5 category:v6];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v7, "octagonWalrusStatus")}];
  [v14 setObject:v8 forKeyedSubscript:*MEMORY[0x277CFD790]];

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v7, "pcsWalrusStatus")}];
  [v14 setObject:v9 forKeyedSubscript:*MEMORY[0x277CFD798]];

  v10 = MEMORY[0x277CCABB0];
  v11 = [v7 escrowWalrusStatus];

  v12 = [v10 numberWithUnsignedInteger:v11];
  [v14 setObject:v12 forKeyedSubscript:*MEMORY[0x277CFD720]];

  v13 = [MEMORY[0x277CFD490] rtcAnalyticsReporter];
  [v13 sendEvent:v14];
}

- (void)_reportWalrusRepairFinishEventWithCombinedWalrusStatus:(id)a3 error:(id)a4
{
  v5 = MEMORY[0x277CE44D8];
  context = self->_context;
  v7 = *MEMORY[0x277CFD8D0];
  v8 = *MEMORY[0x277CFD930];
  v9 = a4;
  v10 = a3;
  v18 = [v5 analyticsEventWithContext:context eventName:v7 category:v8];
  if ([v9 code] == 159)
  {
    v11 = MEMORY[0x277CBEC38];
  }

  else
  {
    v11 = MEMORY[0x277CBEC28];
  }

  [v18 setObject:v11 forKeyedSubscript:*MEMORY[0x277CE4590]];
  [v18 populateUnderlyingErrorsStartingWithRootError:v9];

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v10, "octagonWalrusStatus")}];
  [v18 setObject:v12 forKeyedSubscript:*MEMORY[0x277CFD790]];

  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v10, "pcsWalrusStatus")}];
  [v18 setObject:v13 forKeyedSubscript:*MEMORY[0x277CFD798]];

  v14 = MEMORY[0x277CCABB0];
  v15 = [v10 escrowWalrusStatus];

  v16 = [v14 numberWithUnsignedInteger:v15];
  [v18 setObject:v16 forKeyedSubscript:*MEMORY[0x277CFD720]];

  v17 = [MEMORY[0x277CFD490] rtcAnalyticsReporter];
  [v17 sendEvent:v18];
}

- (id)_fetchiCDPAccountInfoDictionaryWithContext:(id)a3 error:(id *)a4
{
  v6 = [CDPDSecureBackupConfiguration configurationWithContext:a3];
  v7 = [v6 accountInfoFetchSetupDictionary];
  v8 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:v7];
  v9 = _CDPLogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v17 = 0;
    _os_log_impl(&dword_24510B000, v9, OS_LOG_TYPE_DEFAULT, "Requesting server suppress filtering", v17, 2u);
  }

  [v8 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277CFB390]];
  v10 = _CDPLogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [CDPInternalWalrusStateController _fetchiCDPAccountInfoDictionaryWithContext:v7 error:?];
  }

  v11 = [(CDPDSecureBackupProxy *)self->_sbProxy accountInfoWithInfo:v8 error:a4];
  v12 = [v11 objectForKeyedSubscript:@"SecureBackupStingrayMetadata"];
  v13 = [v12 objectForKeyedSubscript:@"ClientMetadata"];
  v14 = [v13 objectForKeyedSubscript:@"SecureBackupiCloudDataProtection"];

  v15 = _CDPLogSystem();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [CDPInternalWalrusStateController _fetchiCDPAccountInfoDictionaryWithContext:v14 error:?];
  }

  return v14;
}

- (unint64_t)_pcsAccountInfoStatusUsingICDP:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"kPCSMetadataiCDPWalrus"];
  if (v3)
  {
    if (objc_opt_respondsToSelector())
    {
      if ([v3 BOOLValue])
      {
        v4 = 1;
      }

      else
      {
        v4 = 2;
      }
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 2;
  }

  return v4;
}

- (unint64_t)_escrowedKeysStatusUsingICDP:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"kPCSMetadataEscrowedKeys"];
  if (v3)
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

void __79__CDPInternalWalrusStateController_setWalrusStatusEnabled_password_completion___block_invoke_60(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _CDPLogSystem();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __69__CDPInternalWalrusStateController_repairWalrusStatusWithCompletion___block_invoke_cold_1();
    }

    v9 = *(a1 + 64);
    if (v9)
    {
      (*(v9 + 16))(v9, 0, v6);
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_24510B000, v8, OS_LOG_TYPE_DEFAULT, "Silent auth completed, continuing walrus update.", buf, 2u);
    }

    v10 = [objc_alloc(MEMORY[0x277CFD4A8]) initWithAuthenticationResults:v5];
    [v10 setNewPassword:*(a1 + 40) oldPassword:0];
    v11 = *(a1 + 72);
    v12 = *(a1 + 48);
    v13 = *(a1 + 56);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __79__CDPInternalWalrusStateController_setWalrusStatusEnabled_password_completion___block_invoke_61;
    v15[3] = &unk_278E25E00;
    v15[4] = v12;
    v16 = v10;
    v17 = *(a1 + 32);
    v18 = *(a1 + 64);
    v14 = v10;
    [v12 _updateWalrusStateAndPerformPostEnablementActions:v11 context:v14 account:v13 completion:v15];
  }
}

void __79__CDPInternalWalrusStateController_setWalrusStatusEnabled_password_completion___block_invoke_61(uint64_t a1, int a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [*(a1 + 32) _optionsWithContext:*(a1 + 40)];
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v16 = 0;
  v9 = [v7 _combinedWalrusStatusWithOptions:v6 context:v8 error:&v16];
  v10 = v16;
  v11 = _CDPLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = v9;
    _os_log_impl(&dword_24510B000, v11, OS_LOG_TYPE_DEFAULT, "Walrus state after update attempt: %@", buf, 0xCu);
  }

  if (a2)
  {
    v12 = *(a1 + 56);
    if (v12)
    {
      v13 = *(v12 + 16);
LABEL_10:
      v13();
    }
  }

  else
  {
    if (!v5)
    {
      v5 = _CDPStateError();
    }

    v14 = *(a1 + 56);
    if (v14)
    {
      v13 = *(v14 + 16);
      goto LABEL_10;
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_setAccountTelemetryOptInConfig:(BOOL)a3 altDSID:(id)a4 authController:(id)a5 accountManager:(id)a6 completion:(id)a7
{
  v30 = *MEMORY[0x277D85DE8];
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v15 = os_transaction_create();
  v16 = [v13 authKitAccountWithAltDSID:v11];
  if (!v16)
  {
    v21 = [MEMORY[0x277CCA9B8] cdp_errorWithCode:-5108];
    v14[2](v14, 0, v21);
    goto LABEL_12;
  }

  if (objc_opt_respondsToSelector())
  {
    v17 = [v13 accountAccessTelemetryOptInForAccount:v16];
    v18 = _CDPLogSystem();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v29 = v17;
      _os_log_impl(&dword_24510B000, v18, OS_LOG_TYPE_DEFAULT, "Is opted-in = %{BOOL}d", buf, 8u);
    }

    if (a3)
    {
      goto LABEL_10;
    }

    v19 = _CDPLogSystem();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_24510B000, v19, OS_LOG_TYPE_DEFAULT, "ADP was not enabled, so Telemetry collection was opted-out", buf, 2u);
    }

    [v13 setAccountAccessTelemetryOptIn:0 forAccount:v16 error:0];
  }

  v17 = 0;
LABEL_10:
  v20 = [MEMORY[0x277CCABB0] numberWithBool:v17];
  v21 = [v20 stringValue];

  v22 = *MEMORY[0x277CEFF60];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __117__CDPInternalWalrusStateController__setAccountTelemetryOptInConfig_altDSID_authController_accountManager_completion___block_invoke;
  v24[3] = &unk_278E24B38;
  v25 = v15;
  v27 = v17;
  v26 = v14;
  [v12 setConfigurationInfo:v21 forIdentifier:v22 forAltDSID:v11 completion:v24];

LABEL_12:
  v23 = *MEMORY[0x277D85DE8];
}

void __117__CDPInternalWalrusStateController__setAccountTelemetryOptInConfig_altDSID_authController_accountManager_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _CDPLogSystem();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 48);
      v13[0] = 67109120;
      v13[1] = v8;
      _os_log_impl(&dword_24510B000, v7, OS_LOG_TYPE_DEFAULT, "Set Account Telemetry Opt-In Value to %{BOOL}d", v13, 8u);
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
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __117__CDPInternalWalrusStateController__setAccountTelemetryOptInConfig_altDSID_authController_accountManager_completion___block_invoke_cold_1(a1, v5, v7);
    }

    v11 = *(a1 + 40);
    if (v11)
    {
      v10 = *(v11 + 16);
      goto LABEL_10;
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (id)_eligibleAccountWithContext:(id)a3 checkWithServer:(BOOL)a4 requireCKAccount:(BOOL)a5 error:(id *)a6
{
  v7 = a5;
  v8 = a3;
  v9 = [v8 altDSID];
  if (!v9)
  {
    v10 = MEMORY[0x277CFD480];
    v11 = [v8 dsid];
    v12 = [v11 stringValue];
    v9 = [v10 altDSIDForPersonID:v12];
  }

  v13 = [MEMORY[0x277CFD480] appleAccountForAltDSID:v9];
  v14 = v13;
  if (v13)
  {
    if (v7 && ([v13 aa_cloudKitAccount], v15 = objc_claimAutoreleasedReturnValue(), v15, !v15))
    {
      v19 = _CDPLogSystem();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [CDPInternalWalrusStateController _eligibleAccountWithContext:checkWithServer:requireCKAccount:error:];
      }

      if (a6)
      {
        v17 = MEMORY[0x277CCA9B8];
        v18 = -5102;
        goto LABEL_16;
      }
    }

    else
    {
      if ([MEMORY[0x277CFD480] isHSA2Enabled:v9])
      {
        v16 = v14;
        goto LABEL_18;
      }

      if (a6)
      {
        v17 = MEMORY[0x277CCA9B8];
        v18 = -5110;
        goto LABEL_16;
      }
    }
  }

  else if (a6)
  {
    v17 = MEMORY[0x277CCA9B8];
    v18 = -5108;
LABEL_16:
    [v17 cdp_errorWithCode:v18];
    *a6 = v16 = 0;
    goto LABEL_18;
  }

  v16 = 0;
LABEL_18:

  return v16;
}

- (id)_eligiblePrimaryAccountForFlow:(unint64_t)a3 error:(id *)a4
{
  v7 = [(CDPAccount *)self->_cdpAccount primaryAppleAccount];
  v8 = v7;
  if (!v7)
  {
    v10 = _CDPLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [CDPInternalWalrusStateController _eligiblePrimaryAccountForFlow:error:];
    }

    goto LABEL_9;
  }

  if (a3 == 1)
  {
    v13 = [(CDPAccount *)self->_cdpAccount primaryAuthKitAccount];

    if (v13)
    {
      goto LABEL_12;
    }

    v10 = _CDPLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [CDPInternalWalrusStateController _eligiblePrimaryAccountForFlow:error:];
    }

LABEL_9:

    if (a4)
    {
      v11 = MEMORY[0x277CCA9B8];
      v12 = -5102;
LABEL_19:
      [v11 cdp_errorWithCode:v12];
      *a4 = v16 = 0;
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if (!a3)
  {
    v9 = [v7 aa_cloudKitAccount];

    if (!v9)
    {
      v10 = _CDPLogSystem();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [CDPInternalWalrusStateController _eligiblePrimaryAccountForFlow:error:];
      }

      goto LABEL_9;
    }
  }

LABEL_12:
  if ([(CDPAccount *)self->_cdpAccount primaryAccountSecurityLevel]== 4)
  {
    cdpDaemonAccount = self->_cdpDaemonAccount;
    v15 = [(CDPAccount *)self->_cdpAccount primaryAccountDSID];
    LOBYTE(cdpDaemonAccount) = [(CDPDAccount *)cdpDaemonAccount isICDPEnabledForDSID:v15 checkWithServer:0];

    if (cdpDaemonAccount)
    {
      v16 = v8;
      goto LABEL_21;
    }

    if (a4)
    {
      v11 = MEMORY[0x277CCA9B8];
      v12 = -5304;
      goto LABEL_19;
    }
  }

  else if (a4)
  {
    v11 = MEMORY[0x277CCA9B8];
    v12 = -5110;
    goto LABEL_19;
  }

LABEL_20:
  v16 = 0;
LABEL_21:

  return v16;
}

- (BOOL)_shouldRetryForError:(id)a3
{
  v3 = a3;
  v4 = [v3 domain];
  v5 = [v4 isEqualToString:*MEMORY[0x277CFD418]];

  if (v5)
  {
    v6 = [v3 code];
    v7 = v6 != -5110 && v6 != -5102;
    v8 = v6 != -5304 && v7;
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (unint64_t)_statusForError:(id)a3
{
  v3 = [a3 code];
  if (v3 == -5304 || v3 == -5110)
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

void __113__CDPInternalWalrusStateController__updateWalrusStateAndPerformPostEnablementActions_context_account_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = _CDPLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_24510B000, v6, OS_LOG_TYPE_DEFAULT, "Walrus status change succeeded, notifying downstream systems...", buf, 2u);
    }

    v7 = os_transaction_create();
    v8 = v7;
    if (*(a1 + 56) == 1)
    {
      v9 = *(a1 + 32);
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __113__CDPInternalWalrusStateController__updateWalrusStateAndPerformPostEnablementActions_context_account_completion___block_invoke_67;
      v17[3] = &unk_278E25E50;
      v19 = 1;
      v18 = v7;
      [v9 setWebAccessStatusEnabled:0 completion:v17];
    }

    v10 = *(a1 + 40);
    v11 = *(*(a1 + 32) + 48);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __113__CDPInternalWalrusStateController__updateWalrusStateAndPerformPostEnablementActions_context_account_completion___block_invoke_69;
    v15[3] = &unk_278E25E78;
    v12 = v8;
    v16 = v12;
    [v11 renewCredentialsForAccount:v10 completion:v15];
    +[CDPBroadcaster broadcastWalrusStateChangeNotification];
    v13 = *(a1 + 48);
    if (v13)
    {
      (*(v13 + 16))(v13, 1, 0);
    }
  }

  else
  {
    v14 = *(a1 + 48);
    if (v14)
    {
      (*(v14 + 16))(v14, 0, v5);
    }
  }
}

void __113__CDPInternalWalrusStateController__updateWalrusStateAndPerformPostEnablementActions_context_account_completion___block_invoke_67(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _CDPLogSystem();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __113__CDPInternalWalrusStateController__updateWalrusStateAndPerformPostEnablementActions_context_account_completion___block_invoke_67_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 40);
    v8[0] = 67109376;
    v8[1] = v6;
    v9 = 1024;
    v10 = v6 ^ 1;
    _os_log_impl(&dword_24510B000, v5, OS_LOG_TYPE_DEFAULT, "After updating walrus state to %{BOOL}d, successfully updated web access status to %{BOOL}d", v8, 0xEu);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __113__CDPInternalWalrusStateController__updateWalrusStateAndPerformPostEnablementActions_context_account_completion___block_invoke_69(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _CDPLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 description];
    v8 = 134218242;
    v9 = a2;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_24510B000, v5, OS_LOG_TYPE_DEFAULT, "Renew credentials completed with result %tu, with error: %@", &v8, 0x16u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __82__CDPInternalWalrusStateController__updateWalrusState_context_account_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    [*(a1 + 32) updateWithAuthenticationResults:v5];
  }

  else
  {
    v7 = _CDPLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __82__CDPInternalWalrusStateController__updateWalrusState_context_account_completion___block_invoke_cold_1();
    }
  }

  v8 = [*(a1 + 40) _optionsWithContext:*(a1 + 32)];
  v9 = *(*(a1 + 40) + 16);
  v10 = *(a1 + 64);
  v11 = [*(a1 + 48) identifier];
  v15 = 0;
  v12 = [v9 setWalrusEnabled:v10 accountIdentifier:v11 options:v8 error:&v15];
  v13 = v15;

  v14 = *(a1 + 56);
  if (v14)
  {
    (*(v14 + 16))(v14, v12, v13);
  }
}

- (void)_walrusStatusWithContext:error:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_24510B000, v0, v1, "Account not eligible, cannot fetch walrus status: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_walrusStatusForPrimaryAccountWithError:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_24510B000, v0, v1, "No eligible primary account found, cannot fetch walrus status: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_walrusStatusWithOptions:withError:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_24510B000, v0, v1, "Failed to fetch walrus status with error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_combinedWalrusStatusWithContext:error:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_24510B000, v0, v1, "Account not eligible, cannot fetch walrus matched status: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_combinedWalrusStatusForPrimaryAccountWithError:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_24510B000, v0, v1, "No eligible primary account found, cannot fetch walrus matched status: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_combinedWalrusStatusWithOptions:context:error:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_24510B000, v0, v1, "Walrus stingray state error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_combinedWalrusStatusWithOptions:context:error:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_24510B000, v0, v1, "Walrus octagon state error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_combinedWalrusStatusWithOptions:(uint64_t)a1 context:(void *)a2 error:.cold.6(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v8 = [a2 description];
  OUTLINED_FUNCTION_0_3();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x12u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)repairWalrusStatusWithCompletion:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_24510B000, v0, v1, "No eligible primary account found, cannot update walrus status: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __69__CDPInternalWalrusStateController_repairWalrusStatusWithCompletion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_24510B000, v0, v1, "Failed to perform silent auth with error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_fetchiCDPAccountInfoDictionaryWithContext:(uint64_t)a1 error:.cold.1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [CDPDSecureBackupController _sanitizedInfoDictionary:a1];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_3();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_fetchiCDPAccountInfoDictionaryWithContext:(uint64_t)a1 error:.cold.2(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [CDPDSecureBackupController _sanitizedInfoDictionary:a1];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_3();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

void __117__CDPInternalWalrusStateController__setAccountTelemetryOptInConfig_altDSID_authController_accountManager_completion___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 48);
  v5[0] = 67109378;
  v5[1] = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_24510B000, log, OS_LOG_TYPE_ERROR, "Did not set Account Telemetry Opt-In Value to %{BOOL}d with error: %@", v5, 0x12u);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)_eligibleAccountWithContext:checkWithServer:requireCKAccount:error:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_eligiblePrimaryAccountForFlow:error:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_eligiblePrimaryAccountForFlow:error:.cold.2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_eligiblePrimaryAccountForFlow:error:.cold.3()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __113__CDPInternalWalrusStateController__updateWalrusStateAndPerformPostEnablementActions_context_account_completion___block_invoke_67_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_24510B000, v0, v1, "After successfully updating walrus state to ON, failed to update web access state to OFF with error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __82__CDPInternalWalrusStateController__updateWalrusState_context_account_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_24510B000, v0, v1, "Silent re-authentication prior to Walrus re-try failed with error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end