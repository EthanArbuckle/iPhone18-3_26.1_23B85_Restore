@interface CDPDRecoveryKeyController
- (BOOL)anyRecoveryKeysAreOctagonDistrustedWithError:(id *)a3;
- (BOOL)isRecoveryKeyAvailableWithError:(id *)a3;
- (CDPDRecoveryKeyController)initWithContext:(id)a3 uiProvider:(id)a4 authProvider:(id)a5;
- (CDPDRecoveryKeyController)initWithContext:(id)a3 uiProvider:(id)a4 authProvider:(id)a5 circleProxy:(id)a6 secureBackupProxy:(id)a7 octagonTrustProxy:(id)a8 pcsProxy:(id)a9;
- (void)_authenticateAndPerformRecoveryKeyOperation:(id)a3 completion:(id)a4;
- (void)authenticateAndDeleteRecoveryKeyWithCompletion:(id)a3;
- (void)authenticateAndGenerateNewRecoveryKeyWithCompletion:(id)a3;
- (void)dealloc;
- (void)deleteRecoveryKeyWithCompletion:(id)a3;
- (void)generateNewRecoveryKey:(id)a3;
- (void)generateRandomRecoveryKey:(id)a3;
- (void)recoverDataUsingMasterKeyWithCompletion:(id)a3;
- (void)secretValidator:(id)a3 validateRecoveryKeyWithContext:(id)a4 completion:(id)a5;
- (void)verifyRecoveryKey:(id)a3;
@end

@implementation CDPDRecoveryKeyController

- (CDPDRecoveryKeyController)initWithContext:(id)a3 uiProvider:(id)a4 authProvider:(id)a5
{
  v8 = MEMORY[0x277CFD498];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [[v8 alloc] initWithContext:v11];
  v13 = [[CDPDSecureBackupProxyImpl alloc] initWithContext:v11];
  v14 = [[CDPDOctagonTrustProxyImpl alloc] initWithContext:v11];
  v15 = objc_alloc_init(MEMORY[0x277CFD520]);
  v16 = [(CDPDRecoveryKeyController *)self initWithContext:v11 uiProvider:v10 authProvider:v9 circleProxy:v12 secureBackupProxy:v13 octagonTrustProxy:v14 pcsProxy:v15];

  return v16;
}

- (CDPDRecoveryKeyController)initWithContext:(id)a3 uiProvider:(id)a4 authProvider:(id)a5 circleProxy:(id)a6 secureBackupProxy:(id)a7 octagonTrustProxy:(id)a8 pcsProxy:(id)a9
{
  v31 = a3;
  v30 = a4;
  v29 = a5;
  v28 = a6;
  v16 = a7;
  v17 = a8;
  v18 = a9;
  v19 = [(CDPDRecoveryKeyController *)self init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_context, a3);
    objc_storeStrong(&v20->_uiProvider, a4);
    objc_storeStrong(&v20->_recoveryAuthProvider, a5);
    v21 = objc_alloc_init(CDPDAuthProxyImpl);
    internalAuthProvider = v20->_internalAuthProvider;
    v20->_internalAuthProvider = v21;

    objc_storeStrong(&v20->_circleProxy, a6);
    objc_storeStrong(&v20->_sbProxy, a7);
    objc_storeStrong(&v20->_otProxy, a8);
    v23 = [[CDPDPCSController alloc] initWithContext:v20->_context pcsProxy:v18, v28, v29, v30, v31];
    pcsController = v20->_pcsController;
    v20->_pcsController = v23;

    v25 = [[CDPDSecureBackupController alloc] initWithContext:v20->_context secureBackupProxy:v20->_sbProxy octagonTrustProxy:v20->_otProxy];
    secureBackupController = v20->_secureBackupController;
    v20->_secureBackupController = v25;
  }

  return v20;
}

- (BOOL)isRecoveryKeyAvailableWithError:(id *)a3
{
  v5 = _CDPLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [CDPDRecoveryKeyController isRecoveryKeyAvailableWithError:];
  }

  return [(CDPDSecureBackupController *)self->_secureBackupController supportsRecoveryKeyWithError:a3];
}

- (void)verifyRecoveryKey:(id)a3
{
  v4 = a3;
  v5 = [(CDPContext *)self->_context dsid];

  if (v5)
  {
    v6 = [(CDPDDeviceSecretValidator *)[CDPDRecoveryKeyValidator alloc] initWithContext:self->_context delegate:self];
    v13[0] = 0;
    v13[1] = v13;
    v13[2] = 0x3032000000;
    v13[3] = __Block_byref_object_copy__4;
    v13[4] = __Block_byref_object_dispose__4;
    v14 = self;
    uiProvider = v14->_uiProvider;
    context = self->_context;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __47__CDPDRecoveryKeyController_verifyRecoveryKey___block_invoke;
    v10[3] = &unk_278E254B0;
    v11 = v4;
    v12 = v13;
    [(CDPStateUIProviderInternal *)uiProvider cdpContext:context promptForRecoveryKeyWithSecretValidator:v6 completion:v10];

    _Block_object_dispose(v13, 8);
LABEL_7:

    goto LABEL_8;
  }

  v9 = _CDPLogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [CDPDRecoveryKeyController verifyRecoveryKey:];
  }

  if (v4)
  {
    v6 = _CDPStateError();
    (*(v4 + 2))(v4, 0, v6);
    goto LABEL_7;
  }

LABEL_8:
}

void __47__CDPDRecoveryKeyController_verifyRecoveryKey___block_invoke(uint64_t a1, uint64_t a2, void *a3)
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
    _os_log_impl(&dword_24510B000, v6, OS_LOG_TYPE_DEFAULT, "Recovery key verification UI flow completed with success: %{BOOL}d - %@", v11, 0x12u);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, a2, v5);
  }

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = 0;

  v10 = *MEMORY[0x277D85DE8];
}

- (void)generateNewRecoveryKey:(id)a3
{
  v4 = a3;
  v5 = [(CDPContext *)self->_context dsid];

  if (v5)
  {
    v6 = [CDPDRecoveryKeyValidatorImpl alloc];
    context = self->_context;
    v8 = [(CDPDRecoveryKeyController *)self otProxy];
    v9 = [(CDPDRecoveryKeyValidatorImpl *)v6 initWithContext:context delegate:self octagonTrustProxy:v8];

    v20[0] = 0;
    v20[1] = v20;
    v20[2] = 0x3032000000;
    v20[3] = __Block_byref_object_copy__4;
    v20[4] = __Block_byref_object_dispose__4;
    v10 = self;
    v21 = v10;
    uiProvider = v10->_uiProvider;
    v12 = self->_context;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __52__CDPDRecoveryKeyController_generateNewRecoveryKey___block_invoke;
    v15[3] = &unk_278E25500;
    v13 = v9;
    v16 = v13;
    v17 = v10;
    v18 = v4;
    v19 = v20;
    [(CDPStateUIProviderInternal *)uiProvider cdpContext:v12 presentRecoveryKeyWithValidator:v13 completion:v15];

    _Block_object_dispose(v20, 8);
LABEL_7:

    goto LABEL_8;
  }

  v14 = _CDPLogSystem();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [CDPDRecoveryKeyController verifyRecoveryKey:];
  }

  if (v4)
  {
    v13 = _CDPStateError();
    (*(v4 + 2))(v4, 0, v13);
    goto LABEL_7;
  }

LABEL_8:
}

void __52__CDPDRecoveryKeyController_generateNewRecoveryKey___block_invoke(uint64_t a1, int a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _CDPLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    v26 = a2;
    v27 = 2112;
    v28 = v5;
    _os_log_impl(&dword_24510B000, v6, OS_LOG_TYPE_DEFAULT, "Recovery key UI flow completed with success %{BOOL}d - %@", buf, 0x12u);
  }

  if (a2 && [*(a1 + 32) recoveryKeyVerified])
  {
    v7 = _CDPLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_24510B000, v7, OS_LOG_TYPE_DEFAULT, "Recovery Key verified!", buf, 2u);
    }

    v8 = *(*(a1 + 40) + 40);
    v9 = [*(a1 + 32) recoveryKey];
    v24 = 0;
    v10 = [v8 generateVerifierWithRecoveryKey:v9 error:&v24];
    v11 = v24;

    if (!v10 || v11)
    {
      (*(*(a1 + 48) + 16))();
    }

    else
    {
      v12 = *(a1 + 40);
      v13 = *(v12 + 72);
      v14 = *(v12 + 8);
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __52__CDPDRecoveryKeyController_generateNewRecoveryKey___block_invoke_25;
      v20[3] = &unk_278E254D8;
      v22 = *(a1 + 48);
      v23 = a2;
      v21 = v5;
      [v13 cdpContext:v14 persistMasterKeyVerifier:v10 completion:v20];
    }
  }

  else
  {
    v15 = *(a1 + 48);
    if (v5)
    {
      (*(v15 + 16))(*(a1 + 48), 0, v5);
    }

    else
    {
      v16 = _CDPStateError();
      (*(v15 + 16))(v15, 0, v16);
    }
  }

  v17 = *(*(a1 + 56) + 8);
  v18 = *(v17 + 40);
  *(v17 + 40) = 0;

  v19 = *MEMORY[0x277D85DE8];
}

void __52__CDPDRecoveryKeyController_generateNewRecoveryKey___block_invoke_25(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = _CDPLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __52__CDPDRecoveryKeyController_generateNewRecoveryKey___block_invoke_25_cold_1();
    }
  }

  v7 = *(a1 + 48);
  v8 = *(a1 + 32);
  (*(*(a1 + 40) + 16))();
}

- (void)authenticateAndGenerateNewRecoveryKeyWithCompletion:(id)a3
{
  v4 = a3;
  v5 = _CDPLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [CDPDRecoveryKeyController authenticateAndGenerateNewRecoveryKeyWithCompletion:];
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __81__CDPDRecoveryKeyController_authenticateAndGenerateNewRecoveryKeyWithCompletion___block_invoke;
  v7[3] = &unk_278E25528;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(CDPDRecoveryKeyController *)self _authenticateAndPerformRecoveryKeyOperation:v7 completion:v6];
}

uint64_t __81__CDPDRecoveryKeyController_authenticateAndGenerateNewRecoveryKeyWithCompletion___block_invoke(uint64_t a1)
{
  v2 = _CDPLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __81__CDPDRecoveryKeyController_authenticateAndGenerateNewRecoveryKeyWithCompletion___block_invoke_cold_1();
  }

  return [*(a1 + 32) generateNewRecoveryKey:*(a1 + 40)];
}

- (void)authenticateAndDeleteRecoveryKeyWithCompletion:(id)a3
{
  v4 = a3;
  v5 = _CDPLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [CDPDRecoveryKeyController authenticateAndDeleteRecoveryKeyWithCompletion:];
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __76__CDPDRecoveryKeyController_authenticateAndDeleteRecoveryKeyWithCompletion___block_invoke;
  v7[3] = &unk_278E25528;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(CDPDRecoveryKeyController *)self _authenticateAndPerformRecoveryKeyOperation:v7 completion:v6];
}

uint64_t __76__CDPDRecoveryKeyController_authenticateAndDeleteRecoveryKeyWithCompletion___block_invoke(uint64_t a1)
{
  v2 = _CDPLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __76__CDPDRecoveryKeyController_authenticateAndDeleteRecoveryKeyWithCompletion___block_invoke_cold_1();
  }

  return [*(a1 + 32) deleteRecoveryKeyWithCompletion:*(a1 + 40)];
}

- (void)_authenticateAndPerformRecoveryKeyOperation:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CDPDRecoveryKeyController *)self uiProvider];

  v9 = _CDPLogSystem();
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [CDPDRecoveryKeyController _authenticateAndPerformRecoveryKeyOperation:completion:];
    }

    v11 = [(CDPDRecoveryKeyController *)self uiProvider];
    context = self->_context;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __84__CDPDRecoveryKeyController__authenticateAndPerformRecoveryKeyOperation_completion___block_invoke;
    v21[3] = &unk_278E25550;
    v22 = v6;
    v23 = v7;
    [v11 cdpContext:context promptForLocalSecretWithCompletion:v21];

    v13 = v22;
    goto LABEL_9;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [(CDPDRecoveryKeyController *)v10 _authenticateAndPerformRecoveryKeyOperation:v14 completion:v15, v16, v17, v18, v19, v20];
  }

  if (v7)
  {
    v13 = [MEMORY[0x277CCA9B8] cdp_errorWithCode:-5306];
    (*(v7 + 2))(v7, 0, v13);
LABEL_9:
  }
}

void __84__CDPDRecoveryKeyController__authenticateAndPerformRecoveryKeyOperation_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _CDPLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __84__CDPDRecoveryKeyController__authenticateAndPerformRecoveryKeyOperation_completion___block_invoke_cold_1();
  }

  if (v5)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v8 = _CDPLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __84__CDPDRecoveryKeyController__authenticateAndPerformRecoveryKeyOperation_completion___block_invoke_cold_2(v6, v8);
    }

    v9 = *(a1 + 40);
    if (v9)
    {
      (*(v9 + 16))(v9, 0, v6);
    }
  }
}

- (void)deleteRecoveryKeyWithCompletion:(id)a3
{
  v4 = a3;
  secureBackupController = self->_secureBackupController;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__CDPDRecoveryKeyController_deleteRecoveryKeyWithCompletion___block_invoke;
  v7[3] = &unk_278E25578;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(CDPDSecureBackupController *)secureBackupController disableRecoveryKeyFromAllSystemsWithCompletion:v7];
}

void __61__CDPDRecoveryKeyController_deleteRecoveryKeyWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = *(*(a1 + 40) + 16);

    v4();
  }

  else
  {
    v10 = v2;
    v11 = v3;
    v5 = *(a1 + 32);
    v6 = *(v5 + 72);
    v7 = *(v5 + 8);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __61__CDPDRecoveryKeyController_deleteRecoveryKeyWithCompletion___block_invoke_2;
    v8[3] = &unk_278E24B10;
    v9 = *(a1 + 40);
    [v6 cdpContext:v7 persistMasterKeyVerifier:MEMORY[0x277CBEC10] completion:v8];
  }
}

void __61__CDPDRecoveryKeyController_deleteRecoveryKeyWithCompletion___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = _CDPLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __61__CDPDRecoveryKeyController_deleteRecoveryKeyWithCompletion___block_invoke_2_cold_1();
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)generateRandomRecoveryKey:(id)a3
{
  v4 = a3;
  v5 = [CDPDRecoveryKeyValidatorImpl alloc];
  context = self->_context;
  v7 = [(CDPDRecoveryKeyController *)self otProxy];
  v8 = [(CDPDRecoveryKeyValidatorImpl *)v5 initWithContext:context delegate:self octagonTrustProxy:v7];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __55__CDPDRecoveryKeyController_generateRandomRecoveryKey___block_invoke;
  v11[3] = &unk_278E255F0;
  v13 = self;
  v14 = v4;
  v12 = v8;
  v9 = v4;
  v10 = v8;
  [(CDPDRecoveryKeyValidatorImpl *)v10 generateRecoveryKey:v11];
}

void __55__CDPDRecoveryKeyController_generateRandomRecoveryKey___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__CDPDRecoveryKeyController_generateRandomRecoveryKey___block_invoke_2;
  v7[3] = &unk_278E255C8;
  v8 = v4;
  v5 = *(a1 + 48);
  v10 = v3;
  v11 = v5;
  v9 = *(a1 + 40);
  v6 = v3;
  [v8 confirmRecoveryKey:v6 completion:v7];
}

void __55__CDPDRecoveryKeyController_generateRandomRecoveryKey___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if ([MEMORY[0x277CFD560] shouldClearRKCacheAfterGeneration])
  {
    v5 = +[CDPRecoveryKeyCache sharedInstance];
    [v5 deleteCache];
  }

  if (v4 || ([*(a1 + 32) recoveryKey], v6 = objc_claimAutoreleasedReturnValue(), v6, !v6))
  {
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v7 = *(*(a1 + 40) + 40);
    v8 = [*(a1 + 32) recoveryKey];
    v17 = 0;
    v9 = [v7 generateVerifierWithRecoveryKey:v8 error:&v17];
    v10 = v17;

    if (v9)
    {
      v11 = *(a1 + 40);
      v12 = *(v11 + 72);
      v13 = *(v11 + 8);
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __55__CDPDRecoveryKeyController_generateRandomRecoveryKey___block_invoke_3;
      v14[3] = &unk_278E255A0;
      v16 = *(a1 + 56);
      v15 = *(a1 + 48);
      [v12 cdpContext:v13 persistMasterKeyVerifier:v9 completion:v14];
    }

    else
    {
      (*(*(a1 + 56) + 16))();
    }
  }
}

void __55__CDPDRecoveryKeyController_generateRandomRecoveryKey___block_invoke_3(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = _CDPLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __61__CDPDRecoveryKeyController_deleteRecoveryKeyWithCompletion___block_invoke_2_cold_1();
    }
  }

  v7 = *(a1 + 32);
  (*(*(a1 + 40) + 16))();
}

- (void)recoverDataUsingMasterKeyWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [CDPDAccountRecoveryValidator alloc];
  context = self->_context;
  recoveryAuthProvider = self->_recoveryAuthProvider;
  v8 = [(CDPDRecoveryKeyController *)self otProxy];
  v9 = [(CDPDAccountRecoveryValidator *)v5 initWithContext:context authProvider:recoveryAuthProvider octagonTrustProxy:v8];

  uiProvider = self->_uiProvider;
  v11 = self->_context;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __69__CDPDRecoveryKeyController_recoverDataUsingMasterKeyWithCompletion___block_invoke;
  v14[3] = &unk_278E25438;
  v15 = v9;
  v16 = self;
  v17 = v4;
  v12 = v4;
  v13 = v9;
  [(CDPStateUIProviderInternal *)uiProvider cdpContext:v11 promptForRecoveryKeyWithValidator:v13 completion:v14];
}

void __69__CDPDRecoveryKeyController_recoverDataUsingMasterKeyWithCompletion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2 && ([*(a1 + 32) recoveredInfo], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    v7 = _CDPLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(*(a1 + 40) + 48);
      *buf = 138412290;
      v19 = v8;
      _os_log_impl(&dword_24510B000, v7, OS_LOG_TYPE_DEFAULT, "Prompt for Recovery Key came back with success and recoveredInfo, attempting to cache with proxy %@", buf, 0xCu);
    }

    v9 = *(*(a1 + 40) + 48);
    v10 = [*(a1 + 32) recoveryKey];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __69__CDPDRecoveryKeyController_recoverDataUsingMasterKeyWithCompletion___block_invoke_34;
    v15[3] = &unk_278E25578;
    v17 = *(a1 + 48);
    v16 = *(a1 + 32);
    [v9 cacheRecoveryKey:v10 completionBlock:v15];
  }

  else
  {
    v11 = _CDPLogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __69__CDPDRecoveryKeyController_recoverDataUsingMasterKeyWithCompletion___block_invoke_cold_1();
    }

    v12 = *(a1 + 48);
    if (v5)
    {
      (*(v12 + 16))(v12, 0, v5);
    }

    else
    {
      v13 = _CDPStateError();
      (*(v12 + 16))(v12, 0, v13);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __69__CDPDRecoveryKeyController_recoverDataUsingMasterKeyWithCompletion___block_invoke_34(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) recoveredInfo];
  (*(v1 + 16))(v1, v2, 0);
}

- (BOOL)anyRecoveryKeysAreOctagonDistrustedWithError:(id *)a3
{
  v37 = *MEMORY[0x277D85DE8];
  context = self->_context;
  if (context)
  {
    goto LABEL_5;
  }

  v6 = _CDPLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [CDPDRecoveryKeyController anyRecoveryKeysAreOctagonDistrustedWithError:];
  }

  v7 = [MEMORY[0x277CFD4A8] contextForPrimaryAccount];
  v8 = self->_context;
  self->_context = v7;

  v9 = [MEMORY[0x277CFD4A8] preflightContext:self->_context];
  v10 = self->_context;
  self->_context = v9;

  context = self->_context;
  if (context)
  {
LABEL_5:
    v11 = [(CDPContext *)context cliqueConfiguration];
    v12 = _CDPSignpostLogSystem();
    v13 = _CDPSignpostCreate();

    v14 = _CDPSignpostLogSystem();
    v15 = v14;
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_24510B000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v13, "AnyRKAreOctagonDistrusted", " enableTelemetry=YES ", buf, 2u);
    }

    v16 = _CDPSignpostLogSystem();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v32 = v13;
      _os_log_impl(&dword_24510B000, v16, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: AnyRKAreOctagonDistrusted  enableTelemetry=YES ", buf, 0xCu);
    }

    v30 = 0;
    v17 = [MEMORY[0x277CDBD48] areRecoveryKeysDistrusted:v11 error:&v30];
    v18 = v30;
    Nanoseconds = _CDPSignpostGetNanoseconds();
    v20 = _CDPSignpostLogSystem();
    v21 = v20;
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
    {
      v22 = [v18 code];
      *buf = 67240192;
      LODWORD(v32) = v22;
      _os_signpost_emit_with_name_impl(&dword_24510B000, v21, OS_SIGNPOST_INTERVAL_END, v13, "AnyRKAreOctagonDistrusted", " Error=%{public,signpost.telemetry:number1,name=Error}d ", buf, 8u);
    }

    v23 = _CDPSignpostLogSystem();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = [v18 code];
      *buf = 134218496;
      v32 = v13;
      v33 = 2048;
      v34 = Nanoseconds / 1000000000.0;
      v35 = 1026;
      v36 = v24;
      _os_log_impl(&dword_24510B000, v23, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: AnyRKAreOctagonDistrusted  Error=%{public,signpost.telemetry:number1,name=Error}d ", buf, 0x1Cu);
    }

    v25 = _CDPLogSystem();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      [(CDPDRecoveryKeyController *)v17 anyRecoveryKeysAreOctagonDistrustedWithError:v18, v25];
    }

    if (a3)
    {
      v26 = v18;
      *a3 = v18;
    }
  }

  else
  {
    v29 = _CDPLogSystem();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      [CDPDRecoveryKeyController anyRecoveryKeysAreOctagonDistrustedWithError:];
    }

    if (a3)
    {
      [MEMORY[0x277CCA9B8] cdp_errorWithCode:-5003];
      *a3 = v17 = 0;
    }

    else
    {
      v17 = 0;
    }
  }

  v27 = *MEMORY[0x277D85DE8];
  return v17;
}

- (void)secretValidator:(id)a3 validateRecoveryKeyWithContext:(id)a4 completion:(id)a5
{
  context = self->_context;
  v8 = a5;
  v11 = a4;
  v9 = [(CDPContext *)context type];
  secureBackupController = self->_secureBackupController;
  if (v9 == 9)
  {
    [(CDPDSecureBackupController *)secureBackupController validateAndRepairRecoveryKeyMismatchWithContext:v11 authProvider:self->_internalAuthProvider circleProxy:self->_circleProxy completion:v8];
  }

  else
  {
    [(CDPDSecureBackupController *)secureBackupController validateRecoveryKeyWithContext:v11 completion:v8];
  }
}

- (void)dealloc
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)isRecoveryKeyAvailableWithError:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)verifyRecoveryKey:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __52__CDPDRecoveryKeyController_generateNewRecoveryKey___block_invoke_25_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_24510B000, v0, v1, "Failed to persist RK verifier: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)authenticateAndGenerateNewRecoveryKeyWithCompletion:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __81__CDPDRecoveryKeyController_authenticateAndGenerateNewRecoveryKeyWithCompletion___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)authenticateAndDeleteRecoveryKeyWithCompletion:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __76__CDPDRecoveryKeyController_authenticateAndDeleteRecoveryKeyWithCompletion___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_authenticateAndPerformRecoveryKeyOperation:completion:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_authenticateAndPerformRecoveryKeyOperation:(uint64_t)a3 completion:(uint64_t)a4 .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_24510B000, a1, a3, "UI Provider is nil. Cannot proceed. (%s)", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __84__CDPDRecoveryKeyController__authenticateAndPerformRecoveryKeyOperation_completion___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __84__CDPDRecoveryKeyController__authenticateAndPerformRecoveryKeyOperation_completion___block_invoke_cold_2(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 136315394;
  v4 = "[CDPDRecoveryKeyController _authenticateAndPerformRecoveryKeyOperation:completion:]_block_invoke";
  v5 = 2112;
  v6 = a1;
  _os_log_error_impl(&dword_24510B000, a2, OS_LOG_TYPE_ERROR, "Failed to get local secret with error (%s): %@", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

void __61__CDPDRecoveryKeyController_deleteRecoveryKeyWithCompletion___block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_24510B000, v0, v1, "Failed to persist verifier: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __69__CDPDRecoveryKeyController_recoverDataUsingMasterKeyWithCompletion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_24510B000, v0, v1, "Recovery Key prompt came back with error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)anyRecoveryKeysAreOctagonDistrustedWithError:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)anyRecoveryKeysAreOctagonDistrustedWithError:(os_log_t)log .cold.2(char a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 67109378;
  v4[1] = a1 & 1;
  v5 = 2112;
  v6 = a2;
  _os_log_debug_impl(&dword_24510B000, log, OS_LOG_TYPE_DEBUG, "Octagon reports hasDistrustedRKs=%{BOOL}d with error: %@", v4, 0x12u);
  v3 = *MEMORY[0x277D85DE8];
}

@end