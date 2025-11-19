@interface CDPStateUIProviderProxy
- (CDPStateUIProviderProxy)initWithUIProvider:(id)a3;
- (void)cdpContext:(id)a3 createLocalSecretWithCompletion:(id)a4;
- (void)cdpContext:(id)a3 presentRecoveryKeyWithValidator:(id)a4 completion:(id)a5;
- (void)cdpContext:(id)a3 presentRemoteApprovalWithCompletion:(id)a4;
- (void)cdpContext:(id)a3 promptForAdoptionOfMultipleICSC:(id)a4;
- (void)cdpContext:(id)a3 promptForBeneficiaryAccessKeyWithCompletion:(id)a4;
- (void)cdpContext:(id)a3 promptForICSCWithIsNumeric:(BOOL)a4 numericLength:(id)a5 isRandom:(BOOL)a6 validator:(id)a7;
- (void)cdpContext:(id)a3 promptForInteractiveAuthenticationWithCompletion:(id)a4;
- (void)cdpContext:(id)a3 promptForLocalSecretWithCompletion:(id)a4;
- (void)cdpContext:(id)a3 promptForRecoveryKeyWithSecretValidator:(id)a4 completion:(id)a5;
- (void)cdpContext:(id)a3 promptForRecoveryKeyWithValidator:(id)a4 completion:(id)a5;
- (void)cdpContext:(id)a3 promptForRemoteSecretWithDevices:(id)a4 offeringRemoteApproval:(BOOL)a5 validator:(id)a6;
- (void)cdpContext:(id)a3 showError:(id)a4 withCompletion:(id)a5;
- (void)cdpContext:(id)a3 showError:(id)a4 withDefaultIndex:(int64_t)a5 withCompletion:(id)a6;
- (void)cdpContext:(id)a3 showResetCompletedAlertWithCompletion:(id)a4;
- (void)cdpContext:(id)a3 showResetFailedAlertWithUnderlyingError:(id)a4 completion:(id)a5;
- (void)cdpRecoveryFlowContext:(id)a3 promptForRemoteSecretWithDevices:(id)a4 validator:(id)a5;
- (void)dismissRemoteApprovalWaitingScreenWithAction:(unint64_t)a3;
- (void)presentQuotaScreenWithCompletion:(id)a3;
@end

@implementation CDPStateUIProviderProxy

- (CDPStateUIProviderProxy)initWithUIProvider:(id)a3
{
  v5 = a3;
  v6 = [(CDPStateUIProviderProxy *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_uiProvider, a3);
  }

  return v7;
}

- (void)cdpContext:(id)a3 promptForAdoptionOfMultipleICSC:(id)a4
{
  v6 = a3;
  v7 = a4;
  uiProvider = self->_uiProvider;
  if (objc_opt_respondsToSelector())
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __70__CDPStateUIProviderProxy_cdpContext_promptForAdoptionOfMultipleICSC___block_invoke;
    block[3] = &unk_1E869D878;
    v20 = v7;
    block[4] = self;
    v19 = v6;
    dispatch_async(MEMORY[0x1E69E96A0], block);

    v9 = v20;
LABEL_7:

    goto LABEL_8;
  }

  v10 = _CDPLogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    [(CDPStateUIProviderProxy *)v10 cdpContext:v11 promptForAdoptionOfMultipleICSC:v12, v13, v14, v15, v16, v17];
  }

  if (v7)
  {
    v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CDPStateError" code:-5306 userInfo:0];
    (*(v7 + 2))(v7, 0, v9);
    goto LABEL_7;
  }

LABEL_8:
}

void __70__CDPStateUIProviderProxy_cdpContext_promptForAdoptionOfMultipleICSC___block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __70__CDPStateUIProviderProxy_cdpContext_promptForAdoptionOfMultipleICSC___block_invoke_2;
  v3[3] = &unk_1E869D6C8;
  v4 = *(a1 + 48);
  v2 = MEMORY[0x1E12CA380](v3);
  [*(*(a1 + 32) + 8) cdpContext:*(a1 + 40) promptForAdoptionOfMultipleICSC:v2];
}

uint64_t __70__CDPStateUIProviderProxy_cdpContext_promptForAdoptionOfMultipleICSC___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)cdpContext:(id)a3 promptForICSCWithIsNumeric:(BOOL)a4 numericLength:(id)a5 isRandom:(BOOL)a6 validator:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a7;
  uiProvider = self->_uiProvider;
  if (objc_opt_respondsToSelector())
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __98__CDPStateUIProviderProxy_cdpContext_promptForICSCWithIsNumeric_numericLength_isRandom_validator___block_invoke;
    block[3] = &unk_1E869D8A0;
    v25 = v12;
    v26 = v14;
    v27 = self;
    v29 = a4;
    v28 = v13;
    v30 = a6;
    dispatch_async(MEMORY[0x1E69E96A0], block);

    v16 = v25;
  }

  else
  {
    v16 = _CDPLogSystem();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [(CDPStateUIProviderProxy *)v16 cdpContext:v17 promptForICSCWithIsNumeric:v18 numericLength:v19 isRandom:v20 validator:v21, v22, v23];
    }
  }
}

void __98__CDPStateUIProviderProxy_cdpContext_promptForICSCWithIsNumeric_numericLength_isRandom_validator___block_invoke(uint64_t a1)
{
  v2 = [[CDPRemoteDeviceSecretValidator alloc] initWithContext:*(a1 + 32) validator:*(a1 + 40)];
  [*(*(a1 + 48) + 8) cdpContext:*(a1 + 32) promptForICSCWithIsNumeric:*(a1 + 64) numericLength:*(a1 + 56) isRandom:*(a1 + 65) validator:v2];
}

- (void)cdpContext:(id)a3 promptForLocalSecretWithCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E6985DB0] analyticsEventWithContext:v6 eventName:@"com.apple.corecdp.localSecretCollection" category:0x1F5A168E0];
  uiProvider = self->_uiProvider;
  if (objc_opt_respondsToSelector())
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __73__CDPStateUIProviderProxy_cdpContext_promptForLocalSecretWithCompletion___block_invoke;
    v20[3] = &unk_1E869D8F0;
    v21 = v8;
    v24 = v7;
    v22 = self;
    v23 = v6;
    dispatch_async(MEMORY[0x1E69E96A0], v20);

    v10 = v21;
  }

  else
  {
    v11 = _CDPLogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(CDPStateUIProviderProxy *)v11 cdpContext:v12 promptForLocalSecretWithCompletion:v13, v14, v15, v16, v17, v18];
    }

    v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CDPStateError" code:-5306 userInfo:0];
    [v8 setObject:MEMORY[0x1E695E110] forKeyedSubscript:@"didSucceed"];
    [v8 populateUnderlyingErrorsStartingWithRootError:v10];
    v19 = +[CDPAnalyticsReporterRTC rtcAnalyticsReporter];
    [v19 sendEvent:v8];

    if (v7)
    {
      (*(v7 + 2))(v7, 0, v10);
    }
  }
}

void __73__CDPStateUIProviderProxy_cdpContext_promptForLocalSecretWithCompletion___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = _CDPSignpostLogSystem();
  v3 = _CDPSignpostCreate(v2);
  v5 = v4;

  v6 = _CDPSignpostLogSystem();
  v7 = v6;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1DED99000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v3, "LocalSecretCollect", " enableTelemetry=YES ", buf, 2u);
  }

  v8 = _CDPSignpostLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v20 = v3;
    _os_log_impl(&dword_1DED99000, v8, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: LocalSecretCollect  enableTelemetry=YES ", buf, 0xCu);
  }

  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __73__CDPStateUIProviderProxy_cdpContext_promptForLocalSecretWithCompletion___block_invoke_25;
  v14 = &unk_1E869D8C8;
  v17 = v3;
  v18 = v5;
  v15 = *(a1 + 32);
  v16 = *(a1 + 56);
  v9 = MEMORY[0x1E12CA380](&v11);
  [*(*(a1 + 40) + 8) cdpContext:*(a1 + 48) promptForLocalSecretWithCompletion:{v9, v11, v12, v13, v14}];

  v10 = *MEMORY[0x1E69E9840];
}

void __73__CDPStateUIProviderProxy_cdpContext_promptForLocalSecretWithCompletion___block_invoke_25(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = a3;
  v8 = a2;
  Nanoseconds = _CDPSignpostGetNanoseconds(v5, v6);
  v10 = _CDPSignpostLogSystem();
  v11 = v10;
  v12 = *(a1 + 48);
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    LOWORD(v18) = 0;
    _os_signpost_emit_with_name_impl(&dword_1DED99000, v11, OS_SIGNPOST_INTERVAL_END, v12, "LocalSecretCollect", &unk_1DEDF468A, &v18, 2u);
  }

  v13 = _CDPSignpostLogSystem();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(a1 + 48);
    v18 = 134218240;
    v19 = v14;
    v20 = 2048;
    v21 = Nanoseconds / 1000000000.0;
    _os_log_impl(&dword_1DED99000, v13, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: LocalSecretCollect ", &v18, 0x16u);
  }

  if (v8)
  {
    v15 = MEMORY[0x1E695E118];
  }

  else
  {
    v15 = MEMORY[0x1E695E110];
  }

  [*(a1 + 32) setObject:v15 forKeyedSubscript:@"didSucceed"];
  [*(a1 + 32) populateUnderlyingErrorsStartingWithRootError:v7];
  v16 = +[CDPAnalyticsReporterRTC rtcAnalyticsReporter];
  [v16 sendEvent:*(a1 + 32)];

  (*(*(a1 + 40) + 16))();
  v17 = *MEMORY[0x1E69E9840];
}

- (void)cdpContext:(id)a3 presentRemoteApprovalWithCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  uiProvider = self->_uiProvider;
  if (objc_opt_respondsToSelector())
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __74__CDPStateUIProviderProxy_cdpContext_presentRemoteApprovalWithCompletion___block_invoke;
    block[3] = &unk_1E869D918;
    block[4] = self;
    v19 = v6;
    v20 = v7;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    v9 = _CDPLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(CDPStateUIProviderProxy *)v9 cdpContext:v10 presentRemoteApprovalWithCompletion:v11, v12, v13, v14, v15, v16];
    }

    if (v7)
    {
      v17 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CDPStateError" code:-5306 userInfo:0];
      (*(v7 + 2))(v7, 0, v17);
    }
  }
}

- (void)dismissRemoteApprovalWaitingScreenWithAction:(unint64_t)a3
{
  uiProvider = self->_uiProvider;
  if (objc_opt_respondsToSelector())
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __72__CDPStateUIProviderProxy_dismissRemoteApprovalWaitingScreenWithAction___block_invoke;
    v14[3] = &unk_1E869D940;
    v14[4] = self;
    v14[5] = a3;
    dispatch_async(MEMORY[0x1E69E96A0], v14);
  }

  else
  {
    v6 = _CDPLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(CDPStateUIProviderProxy *)v6 dismissRemoteApprovalWaitingScreenWithAction:v7, v8, v9, v10, v11, v12, v13];
    }
  }
}

- (void)cdpContext:(id)a3 promptForRemoteSecretWithDevices:(id)a4 offeringRemoteApproval:(BOOL)a5 validator:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __104__CDPStateUIProviderProxy_cdpContext_promptForRemoteSecretWithDevices_offeringRemoteApproval_validator___block_invoke;
  block[3] = &unk_1E869D968;
  block[4] = self;
  v17 = v10;
  v18 = v12;
  v19 = v11;
  v20 = a5;
  v13 = v11;
  v14 = v12;
  v15 = v10;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __104__CDPStateUIProviderProxy_cdpContext_promptForRemoteSecretWithDevices_offeringRemoteApproval_validator___block_invoke(uint64_t a1)
{
  v2 = a1 + 32;
  v3 = *(*(a1 + 32) + 8);
  if (objc_opt_respondsToSelector())
  {
    v5 = [[CDPRemoteDeviceSecretValidator alloc] initWithContext:*(a1 + 40) validator:*(a1 + 48)];
    [*(*(a1 + 32) + 8) cdpContext:*(a1 + 40) promptForRemoteSecretWithDevices:*(a1 + 56) offeringRemoteApproval:*(a1 + 64) validator:v5];
  }

  else
  {
    v4 = _CDPLogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __104__CDPStateUIProviderProxy_cdpContext_promptForRemoteSecretWithDevices_offeringRemoteApproval_validator___block_invoke_cold_1(v2);
    }
  }
}

- (void)cdpRecoveryFlowContext:(id)a3 promptForRemoteSecretWithDevices:(id)a4 validator:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __93__CDPStateUIProviderProxy_cdpRecoveryFlowContext_promptForRemoteSecretWithDevices_validator___block_invoke;
  v14[3] = &unk_1E869D990;
  v14[4] = self;
  v15 = v8;
  v16 = v10;
  v17 = v9;
  v11 = v9;
  v12 = v10;
  v13 = v8;
  dispatch_async(MEMORY[0x1E69E96A0], v14);
}

void __93__CDPStateUIProviderProxy_cdpRecoveryFlowContext_promptForRemoteSecretWithDevices_validator___block_invoke(uint64_t a1)
{
  v2 = a1 + 32;
  v3 = *(*(a1 + 32) + 8);
  if (objc_opt_respondsToSelector())
  {
    v4 = [CDPRemoteDeviceSecretValidator alloc];
    v5 = [*(a1 + 40) context];
    v12 = [(CDPRemoteDeviceSecretValidator *)v4 initWithContext:v5 validator:*(a1 + 48)];

    [*(*(a1 + 32) + 8) cdpRecoveryFlowContext:*(a1 + 40) promptForRemoteSecretWithDevices:*(a1 + 56) validator:v12];
LABEL_5:

    return;
  }

  v6 = *(*v2 + 8);
  if (objc_opt_respondsToSelector())
  {
    v7 = [CDPRemoteDeviceSecretValidator alloc];
    v8 = [*(a1 + 40) context];
    v12 = [(CDPRemoteDeviceSecretValidator *)v7 initWithContext:v8 validator:*(a1 + 48)];

    v9 = *(*(a1 + 32) + 8);
    v10 = [*(a1 + 40) context];
    [v9 cdpContext:v10 promptForRemoteSecretWithDevices:*(a1 + 56) offeringRemoteApproval:objc_msgSend(*(a1 + 40) validator:{"hasPeersForRemoteApproval"), v12}];

    goto LABEL_5;
  }

  v11 = _CDPLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    __93__CDPStateUIProviderProxy_cdpRecoveryFlowContext_promptForRemoteSecretWithDevices_validator___block_invoke_cold_1(v2);
  }
}

- (void)cdpContext:(id)a3 promptForInteractiveAuthenticationWithCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  uiProvider = self->_uiProvider;
  if (objc_opt_respondsToSelector())
  {
    v9 = [MEMORY[0x1E69956D8] reachabilityForInternetConnection];
    if ([v9 currentReachabilityStatus])
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __87__CDPStateUIProviderProxy_cdpContext_promptForInteractiveAuthenticationWithCompletion___block_invoke;
      block[3] = &unk_1E869D878;
      v22 = v7;
      block[4] = self;
      v21 = v6;
      dispatch_async(MEMORY[0x1E69E96A0], block);

      v10 = v22;
    }

    else
    {
      v19 = _CDPLogSystem();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [CDPStateUIProviderProxy cdpContext:v19 promptForInteractiveAuthenticationWithCompletion:?];
      }

      if (!v7)
      {
        goto LABEL_13;
      }

      v10 = _CDPStateError(-5311, 0);
      (*(v7 + 2))(v7, 0, v10);
    }

LABEL_13:
    goto LABEL_14;
  }

  v11 = _CDPLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    [(CDPStateUIProviderProxy *)v11 cdpContext:v12 promptForInteractiveAuthenticationWithCompletion:v13, v14, v15, v16, v17, v18];
  }

  if (v7)
  {
    v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CDPStateError" code:-5306 userInfo:0];
    (*(v7 + 2))(v7, 0, v9);
    goto LABEL_13;
  }

LABEL_14:
}

void __87__CDPStateUIProviderProxy_cdpContext_promptForInteractiveAuthenticationWithCompletion___block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __87__CDPStateUIProviderProxy_cdpContext_promptForInteractiveAuthenticationWithCompletion___block_invoke_2;
  v3[3] = &unk_1E869D628;
  v4 = *(a1 + 48);
  v2 = MEMORY[0x1E12CA380](v3);
  [*(*(a1 + 32) + 8) cdpContext:*(a1 + 40) promptForInteractiveAuthenticationWithCompletion:v2];
}

uint64_t __87__CDPStateUIProviderProxy_cdpContext_promptForInteractiveAuthenticationWithCompletion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)cdpContext:(id)a3 showError:(id)a4 withCompletion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = _CDPLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    [(CDPStateUIProviderProxy *)v9 cdpContext:v11 showError:v12 withCompletion:v13, v14, v15, v16, v17];
  }

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __63__CDPStateUIProviderProxy_cdpContext_showError_withCompletion___block_invoke;
  v21[3] = &unk_1E869D8F0;
  v21[4] = self;
  v22 = v8;
  v23 = v9;
  v24 = v10;
  v18 = v9;
  v19 = v8;
  v20 = v10;
  dispatch_async(MEMORY[0x1E69E96A0], v21);
}

void __63__CDPStateUIProviderProxy_cdpContext_showError_withCompletion___block_invoke(uint64_t a1)
{
  v2 = a1 + 32;
  v3 = *(*(a1 + 32) + 8);
  if (objc_opt_respondsToSelector())
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __63__CDPStateUIProviderProxy_cdpContext_showError_withCompletion___block_invoke_2;
    v6[3] = &unk_1E869D9B8;
    v7 = *(a1 + 56);
    v4 = MEMORY[0x1E12CA380](v6);
    [*(*(a1 + 32) + 8) cdpContext:*(a1 + 40) showError:*(a1 + 48) withCompletion:v4];
  }

  else
  {
    v5 = _CDPLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __63__CDPStateUIProviderProxy_cdpContext_showError_withCompletion___block_invoke_cold_1(v2);
    }

    [*(a1 + 32) cdpContext:*(a1 + 40) showError:*(a1 + 48) withDefaultIndex:0 withCompletion:*(a1 + 56)];
  }
}

uint64_t __63__CDPStateUIProviderProxy_cdpContext_showError_withCompletion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)cdpContext:(id)a3 showError:(id)a4 withDefaultIndex:(int64_t)a5 withCompletion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = _CDPLogSystem();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    [(CDPStateUIProviderProxy *)v11 cdpContext:v13 showError:v14 withCompletion:v15, v16, v17, v18, v19];
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __80__CDPStateUIProviderProxy_cdpContext_showError_withDefaultIndex_withCompletion___block_invoke;
  block[3] = &unk_1E869D9E0;
  block[4] = self;
  v24 = v10;
  v25 = v11;
  v26 = v12;
  v27 = a5;
  v20 = v11;
  v21 = v10;
  v22 = v12;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __80__CDPStateUIProviderProxy_cdpContext_showError_withDefaultIndex_withCompletion___block_invoke(uint64_t a1)
{
  v2 = a1 + 32;
  v3 = *(*(a1 + 32) + 8);
  if (objc_opt_respondsToSelector())
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __80__CDPStateUIProviderProxy_cdpContext_showError_withDefaultIndex_withCompletion___block_invoke_2;
    v7[3] = &unk_1E869D9B8;
    v8 = *(a1 + 56);
    v4 = MEMORY[0x1E12CA380](v7);
    [*(*(a1 + 32) + 8) cdpContext:*(a1 + 40) showError:*(a1 + 48) withDefaultIndex:*(a1 + 64) withCompletion:v4];
  }

  else
  {
    v5 = _CDPLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __80__CDPStateUIProviderProxy_cdpContext_showError_withDefaultIndex_withCompletion___block_invoke_cold_1(v2);
    }

    v6 = *(a1 + 56);
    if (v6)
    {
      (*(v6 + 16))(v6, -1);
    }
  }
}

uint64_t __80__CDPStateUIProviderProxy_cdpContext_showError_withDefaultIndex_withCompletion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)cdpContext:(id)a3 presentRecoveryKeyWithValidator:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __81__CDPStateUIProviderProxy_cdpContext_presentRecoveryKeyWithValidator_completion___block_invoke;
  v14[3] = &unk_1E869D8F0;
  v14[4] = self;
  v15 = v8;
  v16 = v9;
  v17 = v10;
  v11 = v9;
  v12 = v8;
  v13 = v10;
  dispatch_async(MEMORY[0x1E69E96A0], v14);
}

void __81__CDPStateUIProviderProxy_cdpContext_presentRecoveryKeyWithValidator_completion___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  if (objc_opt_respondsToSelector())
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __81__CDPStateUIProviderProxy_cdpContext_presentRecoveryKeyWithValidator_completion___block_invoke_2;
    v9[3] = &unk_1E869D6C8;
    v10 = *(a1 + 56);
    v3 = MEMORY[0x1E12CA380](v9);
    v4 = *(a1 + 40);
    v5 = *(*(a1 + 32) + 8);
    v6 = [[CDPRecoveryKeyValidatorProxyImpl alloc] initWithRemoteObject:*(a1 + 48)];
    [v5 cdpContext:v4 presentRecoveryKeyWithValidator:v6 completion:v3];
  }

  else
  {
    v7 = *(a1 + 56);
    if (v7)
    {
      v8 = _CDPStateError(-5306, 0);
      (*(v7 + 16))(v7, 0, v8);
    }
  }
}

uint64_t __81__CDPStateUIProviderProxy_cdpContext_presentRecoveryKeyWithValidator_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)cdpContext:(id)a3 promptForRecoveryKeyWithValidator:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __83__CDPStateUIProviderProxy_cdpContext_promptForRecoveryKeyWithValidator_completion___block_invoke;
  v14[3] = &unk_1E869D8F0;
  v14[4] = self;
  v15 = v8;
  v16 = v9;
  v17 = v10;
  v11 = v9;
  v12 = v8;
  v13 = v10;
  dispatch_async(MEMORY[0x1E69E96A0], v14);
}

void __83__CDPStateUIProviderProxy_cdpContext_promptForRecoveryKeyWithValidator_completion___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  if (objc_opt_respondsToSelector())
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __83__CDPStateUIProviderProxy_cdpContext_promptForRecoveryKeyWithValidator_completion___block_invoke_2;
    v9[3] = &unk_1E869D6C8;
    v10 = *(a1 + 56);
    v3 = MEMORY[0x1E12CA380](v9);
    v4 = *(a1 + 40);
    v5 = *(*(a1 + 32) + 8);
    v6 = [[CDPRecoveryKeyValidatorProxyImpl alloc] initWithRemoteObject:*(a1 + 48)];
    [v5 cdpContext:v4 promptForRecoveryKeyWithValidator:v6 completion:v3];
  }

  else
  {
    v7 = *(a1 + 56);
    if (v7)
    {
      v8 = _CDPStateError(-5306, 0);
      (*(v7 + 16))(v7, 0, v8);
    }
  }
}

uint64_t __83__CDPStateUIProviderProxy_cdpContext_promptForRecoveryKeyWithValidator_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)cdpContext:(id)a3 promptForRecoveryKeyWithSecretValidator:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __89__CDPStateUIProviderProxy_cdpContext_promptForRecoveryKeyWithSecretValidator_completion___block_invoke;
  v14[3] = &unk_1E869DA08;
  v14[4] = self;
  v15 = v8;
  v16 = v9;
  v17 = v10;
  v11 = v10;
  v12 = v9;
  v13 = v8;
  dispatch_async(MEMORY[0x1E69E96A0], v14);
}

void __89__CDPStateUIProviderProxy_cdpContext_promptForRecoveryKeyWithSecretValidator_completion___block_invoke(void *a1)
{
  v2 = *(a1[4] + 8);
  if (objc_opt_respondsToSelector())
  {
    v3 = a1[5];
    v4 = *(a1[4] + 8);
    v5 = [[CDPRecoveryKeySecretValidatorProxyImpl alloc] initWithRemoteObject:a1[6]];
    v6 = a1[7];
    v8 = v5;
    [v4 cdpContext:v3 promptForRecoveryKeyWithSecretValidator:? completion:?];
  }

  else
  {
    v7 = a1[7];
    if (!v7)
    {
      return;
    }

    v8 = _CDPStateError(-5306, 0);
    (*(v7 + 16))(v7, 0);
  }
}

- (void)cdpContext:(id)a3 promptForBeneficiaryAccessKeyWithCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __82__CDPStateUIProviderProxy_cdpContext_promptForBeneficiaryAccessKeyWithCompletion___block_invoke;
  block[3] = &unk_1E869D918;
  block[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __82__CDPStateUIProviderProxy_cdpContext_promptForBeneficiaryAccessKeyWithCompletion___block_invoke(void *a1)
{
  v2 = *(a1[4] + 8);
  if (objc_opt_respondsToSelector())
  {
    v3 = a1[5];
    v4 = *(a1[4] + 8);
    v5 = a1[6];

    [v4 cdpContext:v3 promptForBeneficiaryAccessKeyWithCompletion:v5];
  }

  else
  {
    v6 = a1[6];
    if (v6)
    {
      v7 = _CDPStateError(-5306, 0);
      (*(v6 + 16))(v6, 0, v7);
    }
  }
}

- (void)cdpContext:(id)a3 showResetCompletedAlertWithCompletion:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = _CDPLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v16 = "[CDPStateUIProviderProxy cdpContext:showResetCompletedAlertWithCompletion:]";
    v17 = 1024;
    v18 = 289;
    _os_log_impl(&dword_1DED99000, v8, OS_LOG_TYPE_DEFAULT, "%s (%d) called", buf, 0x12u);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__CDPStateUIProviderProxy_cdpContext_showResetCompletedAlertWithCompletion___block_invoke;
  block[3] = &unk_1E869D918;
  block[4] = self;
  v13 = v6;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  v11 = *MEMORY[0x1E69E9840];
}

void __76__CDPStateUIProviderProxy_cdpContext_showResetCompletedAlertWithCompletion___block_invoke(void *a1)
{
  v2 = *(a1[4] + 8);
  if (objc_opt_respondsToSelector())
  {
    v3 = a1[5];
    v4 = *(a1[4] + 8);
    v5 = a1[6];

    [v4 cdpContext:v3 showResetCompletedAlertWithCompletion:v5];
  }

  else
  {
    v6 = a1[6];
    if (v6)
    {
      v7 = _CDPStateError(-5306, 0);
      (*(v6 + 16))(v6, 0, v7);
    }
  }
}

- (void)cdpContext:(id)a3 createLocalSecretWithCompletion:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = _CDPLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v16 = "[CDPStateUIProviderProxy cdpContext:createLocalSecretWithCompletion:]";
    v17 = 1024;
    v18 = 300;
    _os_log_impl(&dword_1DED99000, v8, OS_LOG_TYPE_DEFAULT, "%s (%d) called", buf, 0x12u);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__CDPStateUIProviderProxy_cdpContext_createLocalSecretWithCompletion___block_invoke;
  block[3] = &unk_1E869D918;
  block[4] = self;
  v13 = v6;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  v11 = *MEMORY[0x1E69E9840];
}

void __70__CDPStateUIProviderProxy_cdpContext_createLocalSecretWithCompletion___block_invoke(void *a1)
{
  v2 = *(a1[4] + 8);
  if (objc_opt_respondsToSelector())
  {
    v3 = a1[5];
    v4 = *(a1[4] + 8);
    v5 = a1[6];

    [v4 cdpContext:v3 createLocalSecretWithCompletion:v5];
  }

  else
  {
    v6 = a1[6];
    if (v6)
    {
      v7 = _CDPStateError(-5306, 0);
      (*(v6 + 16))(v6, 0, v7);
    }
  }
}

- (void)presentQuotaScreenWithCompletion:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = _CDPLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v11 = "[CDPStateUIProviderProxy presentQuotaScreenWithCompletion:]";
    v12 = 1024;
    v13 = 311;
    _os_log_impl(&dword_1DED99000, v5, OS_LOG_TYPE_DEFAULT, "%s (%d) called", buf, 0x12u);
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __60__CDPStateUIProviderProxy_presentQuotaScreenWithCompletion___block_invoke;
  v8[3] = &unk_1E869DA30;
  v8[4] = self;
  v9 = v4;
  v6 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v8);

  v7 = *MEMORY[0x1E69E9840];
}

uint64_t __60__CDPStateUIProviderProxy_presentQuotaScreenWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  if (objc_opt_respondsToSelector())
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 32) + 8);

    return [v4 presentQuotaScreenWithCompletion:v3];
  }

  else
  {
    v6 = _CDPLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __60__CDPStateUIProviderProxy_presentQuotaScreenWithCompletion___block_invoke_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }

    result = *(a1 + 40);
    if (result)
    {
      return (*(result + 16))(result, 0, 0);
    }
  }

  return result;
}

- (void)cdpContext:(id)a3 showResetFailedAlertWithUnderlyingError:(id)a4 completion:(id)a5
{
  v24 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = _CDPLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v21 = "[CDPStateUIProviderProxy cdpContext:showResetFailedAlertWithUnderlyingError:completion:]";
    v22 = 1024;
    v23 = 324;
    _os_log_impl(&dword_1DED99000, v11, OS_LOG_TYPE_DEFAULT, "%s (%d) called", buf, 0x12u);
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __89__CDPStateUIProviderProxy_cdpContext_showResetFailedAlertWithUnderlyingError_completion___block_invoke;
  v16[3] = &unk_1E869DA08;
  v16[4] = self;
  v17 = v8;
  v18 = v9;
  v19 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(MEMORY[0x1E69E96A0], v16);

  v15 = *MEMORY[0x1E69E9840];
}

void __89__CDPStateUIProviderProxy_cdpContext_showResetFailedAlertWithUnderlyingError_completion___block_invoke(void *a1)
{
  v2 = *(a1[4] + 8);
  if (objc_opt_respondsToSelector())
  {
    v3 = a1[5];
    v4 = *(a1[4] + 8);
    v5 = a1[6];
    v6 = a1[7];

    [v4 cdpContext:v3 showResetFailedAlertWithUnderlyingError:v5 completion:v6];
  }

  else
  {
    v7 = a1[7];
    if (v7)
    {
      v8 = _CDPStateError(-5306, 0);
      (*(v7 + 16))(v7, 0, v8);
    }
  }
}

- (void)cdpContext:(uint64_t)a3 promptForAdoptionOfMultipleICSC:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_3(&dword_1DED99000, a1, a3, "Attempted to present CDPUI with incomplete uiProvider: %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)cdpContext:(uint64_t)a3 promptForICSCWithIsNumeric:(uint64_t)a4 numericLength:(uint64_t)a5 isRandom:(uint64_t)a6 validator:(uint64_t)a7 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_3(&dword_1DED99000, a1, a3, "Attempted to present CDPUI with incomplete uiProvider: %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)cdpContext:(uint64_t)a3 promptForLocalSecretWithCompletion:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_3(&dword_1DED99000, a1, a3, "Attempted to present CDPUI with incomplete uiProvider: %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)cdpContext:(uint64_t)a3 presentRemoteApprovalWithCompletion:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_3(&dword_1DED99000, a1, a3, "Attempted to present CDPUI with incomplete uiProvider: %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)dismissRemoteApprovalWaitingScreenWithAction:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_3(&dword_1DED99000, a1, a3, "Attempted to present CDPUI with incomplete uiProvider: %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void __104__CDPStateUIProviderProxy_cdpContext_promptForRemoteSecretWithDevices_offeringRemoteApproval_validator___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_1_3(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(&dword_1DED99000, v1, OS_LOG_TYPE_DEBUG, "Warning: UI provider %@ does not respond to selector cdpContext:promptForRemoteSecretWithDevices:offeringRemoteApproval:validator:", v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void __93__CDPStateUIProviderProxy_cdpRecoveryFlowContext_promptForRemoteSecretWithDevices_validator___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_1_3(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(&dword_1DED99000, v1, OS_LOG_TYPE_DEBUG, "Warning: UI provider %@ does not respond to selectors cdpRecoveryFlowContext:promptForRemoteSecretWithDevices:validator: and cdpContext:promptForRemoteSecretWithDevices:offeringRemoteApproval:validator:", v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)cdpContext:(uint64_t)a3 promptForInteractiveAuthenticationWithCompletion:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_3(&dword_1DED99000, a1, a3, "Attempted to present CDPUI with incomplete uiProvider: %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)cdpContext:(uint64_t)a3 showError:(uint64_t)a4 withCompletion:(uint64_t)a5 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_3(&dword_1DED99000, a2, a3, "Attempting to show error: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void __63__CDPStateUIProviderProxy_cdpContext_showError_withCompletion___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_1_3(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_3(&dword_1DED99000, v1, v2, "Warning: UI provider %@ does not respond to selector cdpContext:showError:withCompletion:", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

void __80__CDPStateUIProviderProxy_cdpContext_showError_withDefaultIndex_withCompletion___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_1_3(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_3(&dword_1DED99000, v1, v2, "Warning: UI provider %@ does not respond to selector cdpContext:showError:withDefaultIndex:withCompletion:", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

void __60__CDPStateUIProviderProxy_presentQuotaScreenWithCompletion___block_invoke_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_3(&dword_1DED99000, a1, a3, "%s: Attempted to present quota screen with incomplete uiProvider", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

@end