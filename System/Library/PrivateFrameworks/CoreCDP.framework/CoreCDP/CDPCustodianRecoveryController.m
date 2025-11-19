@interface CDPCustodianRecoveryController
- (CDPCustodianRecoveryController)initWithContext:(id)a3;
- (void)_fetchRecoveryInfoWithCompletion:(id)a3;
- (void)startRecoverySessionWithCompletion:(id)a3;
- (void)validateRecoveryCode:(id)a3 withCompletion:(id)a4;
@end

@implementation CDPCustodianRecoveryController

- (CDPCustodianRecoveryController)initWithContext:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = CDPCustodianRecoveryController;
  v6 = [(CDPCustodianRecoveryController *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_context, a3);
    v8 = objc_alloc_init(MEMORY[0x1E698B850]);
    custodianController = v7->_custodianController;
    v7->_custodianController = v8;
  }

  return v7;
}

- (void)startRecoverySessionWithCompletion:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E698B868]);
  v6 = [(CDPContext *)self->_context appleID];
  [v5 setOwnerAppleID:v6];

  v7 = [(CDPContext *)self->_context telemetryFlowID];
  [v5 setTelemetryFlowID:v7];

  v8 = [(CDPContext *)self->_context altDSID];
  [v5 setAltDSID:v8];

  objc_initWeak(&location, self);
  custodianController = self->_custodianController;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __69__CDPCustodianRecoveryController_startRecoverySessionWithCompletion___block_invoke;
  v11[3] = &unk_1E869DAE8;
  objc_copyWeak(&v13, &location);
  v10 = v4;
  v12 = v10;
  [(AACustodianController *)custodianController startCustodianRecoveryWithContext:v5 completion:v11];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __69__CDPCustodianRecoveryController_startRecoverySessionWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9 = _CDPLogSystem();
  v10 = v9;
  if (v6)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = v6;
      _os_log_impl(&dword_1DED99000, v10, OS_LOG_TYPE_DEFAULT, "Successfuly obtained custodian recovery session: %@", &v15, 0xCu);
    }

    if (WeakRetained)
    {
      objc_storeStrong(WeakRetained + 2, a2);
    }

    v11 = *(a1 + 32);
    if (v11)
    {
      v12 = *(v11 + 16);
LABEL_12:
      v12();
    }
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __69__CDPCustodianRecoveryController_startRecoverySessionWithCompletion___block_invoke_cold_1(v7, v10);
    }

    v13 = *(a1 + 32);
    if (v13)
    {
      v12 = *(v13 + 16);
      goto LABEL_12;
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)validateRecoveryCode:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x1E698B868]);
  [v8 setRecoverySessionID:self->_recoverySession];
  [v8 setRecoveryCode:v6];
  v9 = [(CDPContext *)self->_context telemetryFlowID];
  [v8 setTelemetryFlowID:v9];

  v10 = [(CDPContext *)self->_context altDSID];
  [v8 setAltDSID:v10];

  objc_initWeak(&location, self);
  custodianController = self->_custodianController;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __70__CDPCustodianRecoveryController_validateRecoveryCode_withCompletion___block_invoke;
  v13[3] = &unk_1E869DB10;
  objc_copyWeak(&v15, &location);
  v12 = v7;
  v14 = v12;
  [(AACustodianController *)custodianController validateCustodianRecoveryCodeWithContext:v8 completion:v13];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __70__CDPCustodianRecoveryController_validateRecoveryCode_withCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (v5 && ([v5 custodianUUID], v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
  {
    v9 = _CDPLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v5 custodianUUID];
      v11 = [v10 UUIDString];
      v17 = 138412290;
      v18 = v11;
      _os_log_impl(&dword_1DED99000, v9, OS_LOG_TYPE_DEFAULT, "Successfuly validated custodian recovery code for custodian with UUID: %@", &v17, 0xCu);
    }

    v12 = _CDPLogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      __70__CDPCustodianRecoveryController_validateRecoveryCode_withCompletion___block_invoke_cold_1(v12);
    }

    [WeakRetained _fetchRecoveryInfoWithCompletion:*(a1 + 32)];
  }

  else
  {
    v13 = _CDPLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [v5 custodianUUID];
      v15 = [v14 UUIDString];
      v17 = 138412546;
      v18 = v15;
      v19 = 2112;
      v20 = v6;
      _os_log_impl(&dword_1DED99000, v13, OS_LOG_TYPE_DEFAULT, "Validation of custodian recovery code for custodian with UUID: %@ failed with error: %@", &v17, 0x16u);
    }

    (*(*(a1 + 32) + 16))();
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)_fetchRecoveryInfoWithCompletion:(id)a3
{
  v4 = a3;
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __67__CDPCustodianRecoveryController__fetchRecoveryInfoWithCompletion___block_invoke;
  v14 = &unk_1E869DB38;
  v15 = self;
  v5 = v4;
  v16 = v5;
  v6 = MEMORY[0x1E12CA380](&v11);
  custodianController = self->_custodianController;
  if (objc_opt_respondsToSelector())
  {
    v8 = objc_alloc_init(MEMORY[0x1E698B868]);
    [v8 setRecoverySessionID:{self->_recoverySession, v11, v12, v13, v14, v15}];
    v9 = [(CDPContext *)self->_context telemetryFlowID];
    [v8 setTelemetryFlowID:v9];

    v10 = [(CDPContext *)self->_context altDSID];
    [v8 setAltDSID:v10];

    [(AACustodianController *)self->_custodianController fetchCustodianRecoveryKeysWithContext:v8 completion:v6];
  }

  else
  {
    [(AACustodianController *)self->_custodianController fetchCustodianRecoveryKeysWithSessionID:self->_recoverySession completion:v6, v11, v12, v13, v14, v15];
  }
}

void __67__CDPCustodianRecoveryController__fetchRecoveryInfoWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = _CDPLogSystem();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v8)
    {
      v9 = *(*(a1 + 32) + 16);
      v19 = 138412290;
      v20 = v9;
      _os_log_impl(&dword_1DED99000, v7, OS_LOG_TYPE_DEFAULT, "Successfuly obtained recovery keys for sessionID: %@", &v19, 0xCu);
    }

    v10 = objc_opt_respondsToSelector();
    v11 = [CDPCustodianRecoveryInfo alloc];
    v12 = [v5 wrappedRKC];
    v13 = [v5 wrappingKey];
    v14 = [v5 custodianUUID];
    if (v10)
    {
      v15 = [v5 recordBuildVersion];
      v16 = [(CDPCustodianRecoveryInfo *)v11 initWithWrappedRKC:v12 wrappingKey:v13 custodianUUID:v14 recordBuildVersion:v15];
    }

    else
    {
      v16 = [(CDPCustodianRecoveryInfo *)v11 initWithWrappedRKC:v12 wrappingKey:v13 custodianUUID:v14];
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (v8)
    {
      v17 = *(*(a1 + 32) + 16);
      v19 = 138412546;
      v20 = v17;
      v21 = 2112;
      v22 = v6;
      _os_log_impl(&dword_1DED99000, v7, OS_LOG_TYPE_DEFAULT, "Failed to fetch recovery keys for sessionID: %@ with error: %@", &v19, 0x16u);
    }

    (*(*(a1 + 40) + 16))();
  }

  v18 = *MEMORY[0x1E69E9840];
}

void __69__CDPCustodianRecoveryController_startRecoverySessionWithCompletion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1DED99000, a2, OS_LOG_TYPE_ERROR, "Failed to obtain recoverySession with error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end