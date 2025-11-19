@interface CDPDPCSController
- (BOOL)_shoudAllowKeyFetchForService:(id)a3;
- (BOOL)isCloudProtectionEnabledLocally:(id *)a3;
- (BOOL)isCompanionInKeychainCircle:(id *)a3;
- (CDPDPCSController)init;
- (CDPDPCSController)initWithContext:(id)a3 pcsProxy:(id)a4;
- (_PCSIdentitySetData)_getOrSetupIdentitySetRef:(id *)a3;
- (id)_fetchKeyForPCSIdentityRef:(_PCSIdentityData *)a3;
- (id)pcsKeysForService:(id)a3 error:(id *)a4;
- (void)_checkiCDPStatusNetwork:(BOOL)a3 withCompletion:(id)a4;
- (void)_enableCDPWithCompletion:(id)a3;
- (void)_reauthenticateAndCheckiCDPStatusWithNetwork:(BOOL)a3 completion:(id)a4;
- (void)enableCDPWithCompletion:(id)a3;
- (void)recoverAndSynchronizeKeysWithCompletion:(id)a3;
- (void)recoverKeysWithCompletion:(id)a3;
@end

@implementation CDPDPCSController

- (CDPDPCSController)init
{
  v6.receiver = self;
  v6.super_class = CDPDPCSController;
  v2 = [(CDPDPCSController *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CFD520]);
    pcsProxy = v2->_pcsProxy;
    v2->_pcsProxy = v3;
  }

  return v2;
}

- (CDPDPCSController)initWithContext:(id)a3 pcsProxy:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CDPDPCSController;
  v9 = [(CDPDPCSController *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_pcsProxy, a4);
    objc_storeStrong(&v10->_context, a3);
  }

  return v10;
}

- (void)recoverKeysWithCompletion:(id)a3
{
  v4 = a3;
  v5 = _CDPLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24510B000, v5, OS_LOG_TYPE_DEFAULT, "Starting to recover PCS state", buf, 2u);
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__CDPDPCSController_recoverKeysWithCompletion___block_invoke;
  v7[3] = &unk_278E24AE8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(CDPDPCSController *)self checkiCDPStatusNetwork:1 withCompletion:v7];
}

void __47__CDPDPCSController_recoverKeysWithCompletion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2)
  {
    v6 = *(a1 + 32);
    v7 = v6[1];
    v8 = [v6 _contextSetupDictionary];
    v13 = 0;
    v9 = [v7 pcsRestoreLocalBackup:v8 error:&v13];
    v10 = v13;
  }

  else
  {
    v10 = _CDPStateError();
    v9 = 0;
  }

  v11 = _CDPLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    v15 = v9;
    v16 = 2112;
    v17 = v10;
    _os_log_impl(&dword_24510B000, v11, OS_LOG_TYPE_DEFAULT, "PCS State restored %{BOOL}d with error: %@", buf, 0x12u);
  }

  (*(*(a1 + 40) + 16))();
  v12 = *MEMORY[0x277D85DE8];
}

- (void)recoverAndSynchronizeKeysWithCompletion:(id)a3
{
  v4 = a3;
  v5 = _CDPLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24510B000, v5, OS_LOG_TYPE_DEFAULT, "Starting to synchronize PCS state", buf, 2u);
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__CDPDPCSController_recoverAndSynchronizeKeysWithCompletion___block_invoke;
  v7[3] = &unk_278E24AE8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(CDPDPCSController *)self checkiCDPStatusNetwork:1 withCompletion:v7];
}

void __61__CDPDPCSController_recoverAndSynchronizeKeysWithCompletion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2)
  {
    v6 = *(a1 + 32);
    v7 = v6[1];
    v8 = [v6 _contextSetupDictionary];
    v13 = 0;
    v9 = [v7 pcsSynchronizeKeysWithInfo:v8 error:&v13];
    v10 = v13;
  }

  else
  {
    v10 = _CDPStateError();
    v9 = 0;
  }

  v11 = _CDPLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    v15 = v9;
    v16 = 2112;
    v17 = v10;
    _os_log_impl(&dword_24510B000, v11, OS_LOG_TYPE_DEFAULT, "PCS State synchronized %{BOOL}d with error: %@", buf, 0x12u);
  }

  (*(*(a1 + 40) + 16))();
  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __59__CDPDPCSController_checkiCDPStatusNetwork_withCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __59__CDPDPCSController_checkiCDPStatusNetwork_withCompletion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if ([v4 isAuthenticationError])
  {
    [*(a1 + 32) _reauthenticateAndCheckiCDPStatusWithNetwork:*(a1 + 48) completion:*(a1 + 40)];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (void)_reauthenticateAndCheckiCDPStatusWithNetwork:(BOOL)a3 completion:(id)a4
{
  v6 = a4;
  v7 = _CDPLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [CDPDPCSController _reauthenticateAndCheckiCDPStatusWithNetwork:completion:];
  }

  context = self->_context;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __77__CDPDPCSController__reauthenticateAndCheckiCDPStatusWithNetwork_completion___block_invoke;
  v10[3] = &unk_278E24B38;
  v12 = a3;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  [(CDPContext *)context reauthenticateUserWithCompletion:v10];
}

uint64_t __77__CDPDPCSController__reauthenticateAndCheckiCDPStatusWithNetwork_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  a3;
  if (a2)
  {
    [*(a1 + 32) _checkiCDPStatusNetwork:*(a1 + 48) withCompletion:*(a1 + 40)];
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

- (void)_checkiCDPStatusNetwork:(BOOL)a3 withCompletion:(id)a4
{
  v4 = a3;
  v6 = a4;
  v17 = 0;
  v7 = [(CDPDPCSController *)self _getOrSetupIdentitySetRef:&v17];
  v8 = v17;
  if (v7)
  {
    v9 = _CDPLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [CDPDPCSController _checkiCDPStatusNetwork:withCompletion:];
    }

    pcsProxy = self->_pcsProxy;
    if (v4)
    {
      v11 = [(CDPDPCSController *)self _contextSetupDictionary];
      v16 = 0;
      v12 = [(CDPProtectedCloudStorageProxy *)pcsProxy pcsIdentitySetIsInICDPNetwork:v7 options:v11 error:&v16];
      v13 = v16;
    }

    else
    {
      v15 = 0;
      v12 = [(CDPProtectedCloudStorageProxy *)pcsProxy pcsIdentitySetIsInICDPLocal:v7 error:&v15];
      v13 = v15;
    }

    v14 = _CDPLogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [(CDPDPCSController *)v12 _checkiCDPStatusNetwork:v13 withCompletion:v14];
    }

    if (v6)
    {
      v6[2](v6, v12, v13);
    }

    CFRelease(v7);
  }

  else if (v6)
  {
    v6[2](v6, 0, v8);
  }
}

- (BOOL)isCloudProtectionEnabledLocally:(id *)a3
{
  v5 = _CDPLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24510B000, v5, OS_LOG_TYPE_DEFAULT, "Checking local iCDP state...", buf, 2u);
  }

  v6 = [(CDPDPCSController *)self _contextSetupDictionary];
  pcsProxy = self->_pcsProxy;
  v16 = 0;
  v8 = [(CDPProtectedCloudStorageProxy *)pcsProxy pcsIdentityCreateWithInfo:v6 error:&v16];
  v9 = v16;
  v10 = v9;
  if (v8)
  {
    v11 = self->_pcsProxy;
    v15 = 0;
    v12 = [(CDPProtectedCloudStorageProxy *)v11 pcsIdentitySetIsInICDPLocal:v8 error:&v15];
    CFRelease(v8);
  }

  else if (a3)
  {
    v13 = v9;
    v12 = 0;
    *a3 = v10;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)isCompanionInKeychainCircle:(id *)a3
{
  v5 = _CDPLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24510B000, v5, OS_LOG_TYPE_DEFAULT, "Checking companion circle state...", buf, 2u);
  }

  v6 = [(CDPDPCSController *)self _contextSetupDictionary];
  pcsProxy = self->_pcsProxy;
  v16 = 0;
  v8 = [(CDPProtectedCloudStorageProxy *)pcsProxy pcsIdentityCreateWithInfo:v6 error:&v16];
  v9 = v16;
  v10 = v9;
  if (v8)
  {
    v11 = self->_pcsProxy;
    v15 = 0;
    v12 = [(CDPProtectedCloudStorageProxy *)v11 pcsIdentitySetCompanionInCircle:v8 error:&v15];
    CFRelease(v8);
  }

  else if (a3)
  {
    v13 = v9;
    v12 = 0;
    *a3 = v10;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (_PCSIdentitySetData)_getOrSetupIdentitySetRef:(id *)a3
{
  v4 = [(CDPDPCSController *)self _contextSetupDictionary];
  pcsProxy = self->_pcsProxy;
  v14 = 0;
  v6 = [(CDPProtectedCloudStorageProxy *)pcsProxy pcsIdentityCreateWithInfo:v4 error:&v14];
  v7 = v14;
  if (v6)
  {
    goto LABEL_6;
  }

  v8 = _CDPLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [CDPDPCSController _getOrSetupIdentitySetRef:];
  }

  v9 = self->_pcsProxy;
  v13 = v7;
  v6 = [(CDPProtectedCloudStorageProxy *)v9 pcsIdentitySetupWithInfo:v4 error:&v13];
  v10 = v13;

  if (v6)
  {
    v7 = v10;
LABEL_6:
    v11 = _CDPLogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [CDPDPCSController _getOrSetupIdentitySetRef:];
    }

    v10 = v7;
    goto LABEL_9;
  }

  v11 = _CDPLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    [CDPDPCSController _getOrSetupIdentitySetRef:];
  }

  v6 = 0;
LABEL_9:

  return v6;
}

- (void)enableCDPWithCompletion:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __45__CDPDPCSController_enableCDPWithCompletion___block_invoke;
  v6[3] = &unk_278E24AE8;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(CDPDPCSController *)self _enableCDPWithCompletion:v6];
}

void __45__CDPDPCSController_enableCDPWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if ([v5 isAuthenticationError])
  {
    v6 = _CDPLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __45__CDPDPCSController_enableCDPWithCompletion___block_invoke_cold_1();
    }

    v8 = *(a1 + 32);
    v7 = *(a1 + 40);
    v9 = *(v8 + 16);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __45__CDPDPCSController_enableCDPWithCompletion___block_invoke_17;
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

uint64_t __45__CDPDPCSController_enableCDPWithCompletion___block_invoke_17(uint64_t a1, int a2, void *a3)
{
  a3;
  if (a2)
  {
    [*(a1 + 32) _enableCDPWithCompletion:*(a1 + 40)];
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

- (void)_enableCDPWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(CDPDPCSController *)self _contextSetupDictionary];
  pcsProxy = self->_pcsProxy;
  v9 = 0;
  v7 = [(CDPProtectedCloudStorageProxy *)pcsProxy pcsIdentityMigrateToiCDPWithInfo:v5 error:&v9];
  v8 = v9;
  if (v4)
  {
    v4[2](v4, v7, v8);
  }
}

- (id)pcsKeysForService:(id)a3 error:(id *)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = _CDPLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v29 = v6;
    _os_log_impl(&dword_24510B000, v7, OS_LOG_TYPE_DEFAULT, "Checking PCS identities for service: %@", buf, 0xCu);
  }

  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (!v6)
  {
    v17 = _CDPLogSystem();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [CDPDPCSController pcsKeysForService:v17 error:?];
    }

    if (a4)
    {
      v18 = MEMORY[0x277CCA9B8];
      v19 = -5003;
LABEL_20:
      [v18 cdp_errorWithCode:v19];
      *a4 = v16 = 0;
      goto LABEL_27;
    }

LABEL_21:
    v16 = 0;
    goto LABEL_27;
  }

  if (![(CDPDPCSController *)self _shoudAllowKeyFetchForService:v6])
  {
    v20 = _CDPLogSystem();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [CDPDPCSController pcsKeysForService:error:];
    }

    if (a4)
    {
      v18 = MEMORY[0x277CCA9B8];
      v19 = -5302;
      goto LABEL_20;
    }

    goto LABEL_21;
  }

  v9 = [(CDPDPCSController *)self _contextSetupDictionary];
  v10 = _CDPLogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [CDPDPCSController pcsKeysForService:error:];
  }

  v11 = [(CDPProtectedCloudStorageProxy *)self->_pcsProxy pcsIdentityCreateWithInfo:v9 error:a4];
  if (v11)
  {
    v12 = v11;
    v26 = *MEMORY[0x277D430D8];
    v27 = v6;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    v14 = _CDPLogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [CDPDPCSController pcsKeysForService:error:];
    }

    v24 = v8;
    v25 = v13;
    v15 = v13;
    PCSIdentitySetEnumerateIdentities();
    CFRelease(v12);
  }

  else if (a4)
  {
    v21 = _CDPLogSystem();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [CDPDPCSController pcsKeysForService:a4 error:v21];
    }

    v16 = 0;
    goto LABEL_26;
  }

  v16 = [v8 copy];
LABEL_26:

LABEL_27:
  v22 = *MEMORY[0x277D85DE8];

  return v16;
}

void __45__CDPDPCSController_pcsKeysForService_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _fetchKeyForPCSIdentityRef:a2];
  if (v3)
  {
    [*(a1 + 40) addObject:v3];
  }

  v4 = _CDPLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __45__CDPDPCSController_pcsKeysForService_error___block_invoke_cold_1(a1, v4);
  }
}

- (id)_fetchKeyForPCSIdentityRef:(_PCSIdentityData *)a3
{
  _PCSIdentityGetKey();
  v3 = _PCSKeyCopyExportedPrivateKey();
  v4 = v3;
  if (v3)
  {
    CFRelease(v3);
  }

  return v4;
}

- (BOOL)_shoudAllowKeyFetchForService:(id)a3
{
  v3 = _shoudAllowKeyFetchForService__onceToken;
  v4 = a3;
  if (v3 != -1)
  {
    [CDPDPCSController _shoudAllowKeyFetchForService:];
  }

  v5 = [_shoudAllowKeyFetchForService__allowedServices containsObject:v4];

  return v5;
}

uint64_t __51__CDPDPCSController__shoudAllowKeyFetchForService___block_invoke()
{
  v0 = *MEMORY[0x277D43040];
  _shoudAllowKeyFetchForService__allowedServices = [MEMORY[0x277CBEB98] setWithObjects:{*MEMORY[0x277D43008], *MEMORY[0x277D43040], *MEMORY[0x277D43070], *MEMORY[0x277D43068], *MEMORY[0x277D43060], *MEMORY[0x277D43080], *MEMORY[0x277D43050], *MEMORY[0x277D43078], *MEMORY[0x277CFD908], *MEMORY[0x277CFD910], 0}];

  return MEMORY[0x2821F96F8]();
}

- (void)_checkiCDPStatusNetwork:withCompletion:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_checkiCDPStatusNetwork:(os_log_t)log withCompletion:.cold.2(char a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 67109378;
  v4[1] = a1 & 1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_24510B000, log, OS_LOG_TYPE_ERROR, "PCSIdentitySetIsICDPNetwork returned isEnabled=%i error=%@", v4, 0x12u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)_getOrSetupIdentitySetRef:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_24510B000, v0, v1, "PCSIdentityCreate return NULL with error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_getOrSetupIdentitySetRef:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_24510B000, v0, v1, "PCSIdentitySetup returned NULL with error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __45__CDPDPCSController_enableCDPWithCompletion___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)pcsKeysForService:error:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_24510B000, v0, v1, "Fetching keys for %@ is not allowed.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)pcsKeysForService:error:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)pcsKeysForService:error:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)pcsKeysForService:(id *)a1 error:(NSObject *)a2 .cold.4(id *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [*a1 description];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_24510B000, a2, OS_LOG_TYPE_ERROR, "Failed to create PCS identity set with error: %@", v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

void __45__CDPDPCSController_pcsKeysForService_error___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  [*(a1 + 40) count];
  v4 = *(a1 + 48);
  OUTLINED_FUNCTION_0();
  v8 = 2112;
  v9 = v5;
  _os_log_error_impl(&dword_24510B000, a2, OS_LOG_TYPE_ERROR, "Fetched %lu keys for service %@", v7, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

@end