@interface CDPWalrusDaemonService
- (CDPWalrusDaemonService)initWithEntitlements:(unint64_t)entitlements walrusController:(id)controller;
- (id)defaultWalrusStateController;
- (void)_checkWalrusBeforeFetchingPCSKeysForServices:(id)services pcsController:(id)controller completion:(id)completion;
- (void)_pcsKeysForServices:(id)services pcsController:(id)controller completion:(id)completion;
- (void)broadcastWalrusStateChange;
- (void)combinedWalrusStatusWithContext:(id)context completion:(id)completion;
- (void)pcsKeysForServices:(id)services completion:(id)completion;
- (void)repairWalrusWithCompletion:(id)completion;
- (void)updateWalrusStatus:(unint64_t)status authenticatedContext:(id)context completion:(id)completion;
- (void)updateWebAccessStatus:(unint64_t)status completion:(id)completion;
- (void)walrusStatusWithContext:(id)context completion:(id)completion;
- (void)webAccessStatusWithCompletion:(id)completion;
@end

@implementation CDPWalrusDaemonService

- (id)defaultWalrusStateController
{
  walrusStateController = self->_walrusStateController;
  if (!walrusStateController)
  {
    v4 = [CDPInternalWalrusStateController alloc];
    mEMORY[0x277CFD480] = [MEMORY[0x277CFD480] sharedInstance];
    v6 = objc_alloc_init(CDPDAccount);
    v7 = objc_alloc_init(CDPWalrusSecurityProxyImpl);
    v8 = objc_alloc_init(MEMORY[0x277CFD520]);
    v9 = [CDPDSecureBackupProxyImpl alloc];
    contextForPrimaryAccount = [MEMORY[0x277CFD4A8] contextForPrimaryAccount];
    v11 = [(CDPDSecureBackupProxyImpl *)v9 initWithContext:contextForPrimaryAccount];
    v12 = [(CDPInternalWalrusStateController *)v4 initWithAccount:mEMORY[0x277CFD480] cdpdAccount:v6 securityProxy:v7 pcsProxy:v8 sbProxy:v11];
    v13 = self->_walrusStateController;
    self->_walrusStateController = v12;

    walrusStateController = self->_walrusStateController;
  }

  return walrusStateController;
}

- (CDPWalrusDaemonService)initWithEntitlements:(unint64_t)entitlements walrusController:(id)controller
{
  controllerCopy = controller;
  v12.receiver = self;
  v12.super_class = CDPWalrusDaemonService;
  v7 = [(CDPWalrusDaemonService *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_entitlements = entitlements;
    if (controllerCopy)
    {
      defaultWalrusStateController = controllerCopy;
    }

    else
    {
      defaultWalrusStateController = [(CDPWalrusDaemonService *)v7 defaultWalrusStateController];
    }

    walrusStateController = v8->_walrusStateController;
    v8->_walrusStateController = defaultWalrusStateController;
  }

  return v8;
}

- (void)walrusStatusWithContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  if ([(CDPWalrusDaemonService *)self _allowWalrusAccess])
  {
    walrusStateController = [(CDPWalrusDaemonService *)self walrusStateController];
    [walrusStateController walrusStatusWithContext:contextCopy completion:completionCopy];
LABEL_7:

    goto LABEL_8;
  }

  v9 = _CDPLogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [CDPWalrusDaemonService walrusStatusWithContext:completion:];
  }

  if (completionCopy)
  {
    walrusStateController = _CDPStateError();
    completionCopy[2](completionCopy, 0, walrusStateController);
    goto LABEL_7;
  }

LABEL_8:
}

- (void)combinedWalrusStatusWithContext:(id)context completion:(id)completion
{
  v18 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  completionCopy = completion;
  if ([(CDPWalrusDaemonService *)self _allowWalrusAccess])
  {
    walrusStateController = [(CDPWalrusDaemonService *)self walrusStateController];
    v15 = 0;
    v9 = [walrusStateController combinedWalrusStatusWithContext:contextCopy error:&v15];
    v10 = v15;

    v11 = _CDPLogSystem();
    v12 = v11;
    if (v10)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [CDPWalrusDaemonService combinedWalrusStatusWithContext:v10 completion:?];
      }
    }

    else if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v17 = v9;
      _os_log_impl(&dword_24510B000, v12, OS_LOG_TYPE_DEFAULT, "Walrus combined status %@ status fetched successfully.", buf, 0xCu);
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy, v9, v10);
    }

    goto LABEL_14;
  }

  v13 = _CDPLogSystem();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    [CDPWalrusDaemonService walrusStatusWithContext:completion:];
  }

  if (completionCopy)
  {
    v10 = _CDPStateError();
    completionCopy[2](completionCopy, 0, v10);
LABEL_14:
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)repairWalrusWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([(CDPWalrusDaemonService *)self _allowWalrusAccess])
  {
    walrusStateController = [(CDPWalrusDaemonService *)self walrusStateController];
    [walrusStateController repairWalrusStatusWithCompletion:completionCopy];
LABEL_7:

    goto LABEL_8;
  }

  v6 = _CDPLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [CDPWalrusDaemonService walrusStatusWithContext:completion:];
  }

  if (completionCopy)
  {
    walrusStateController = _CDPStateError();
    completionCopy[2](completionCopy, walrusStateController);
    goto LABEL_7;
  }

LABEL_8:
}

- (void)broadcastWalrusStateChange
{
  if ([(CDPWalrusDaemonService *)self _allowWalrusAccess])
  {

    +[CDPBroadcaster broadcastWalrusStateChangeNotification];
  }

  else
  {
    v2 = _CDPLogSystem();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      [CDPWalrusDaemonService walrusStatusWithContext:completion:];
    }
  }
}

- (void)updateWalrusStatus:(unint64_t)status authenticatedContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  if ([(CDPWalrusDaemonService *)self _allowWalrusAccess])
  {
    if (status)
    {
      walrusStateController = [(CDPWalrusDaemonService *)self walrusStateController];
      password = [contextCopy password];
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __77__CDPWalrusDaemonService_updateWalrusStatus_authenticatedContext_completion___block_invoke;
      v16[3] = &unk_278E24E30;
      v17 = completionCopy;
      [walrusStateController setWalrusStatusEnabled:status == 1 password:password completion:v16];

      v12 = v17;
LABEL_13:

      goto LABEL_14;
    }

    v15 = _CDPLogSystem();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [CDPWalrusDaemonService updateWalrusStatus:authenticatedContext:completion:];
    }

    if (completionCopy)
    {
      v14 = [MEMORY[0x277CCA9B8] cdp_errorWithCode:-7002];
      goto LABEL_12;
    }
  }

  else
  {
    v13 = _CDPLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [CDPWalrusDaemonService updateWalrusStatus:authenticatedContext:completion:];
    }

    if (completionCopy)
    {
      v14 = _CDPStateError();
LABEL_12:
      v12 = v14;
      (*(completionCopy + 2))(completionCopy, 0, v14);
      goto LABEL_13;
    }
  }

LABEL_14:
}

void __77__CDPWalrusDaemonService_updateWalrusStatus_authenticatedContext_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _CDPLogSystem();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __77__CDPWalrusDaemonService_updateWalrusStatus_authenticatedContext_completion___block_invoke_cold_1();
    }

    v9 = _CDPStateErrorWithUnderlying();
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_24510B000, v8, OS_LOG_TYPE_DEFAULT, "Walrus status updated successfully.", v11, 2u);
    }

    v9 = 0;
    v6 = v8;
  }

  v10 = *(a1 + 32);
  if (v10)
  {
    (*(v10 + 16))(v10, v5, v9);
  }
}

- (void)webAccessStatusWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([(CDPWalrusDaemonService *)self _allowWalrusAccess])
  {
    walrusStateController = [(CDPWalrusDaemonService *)self walrusStateController];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __56__CDPWalrusDaemonService_webAccessStatusWithCompletion___block_invoke;
    v8[3] = &unk_278E24E58;
    v9 = completionCopy;
    [walrusStateController webAccessStatusWithCompletion:v8];

    v6 = v9;
LABEL_7:

    goto LABEL_8;
  }

  v7 = _CDPLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [CDPWalrusDaemonService webAccessStatusWithCompletion:];
  }

  if (completionCopy)
  {
    v6 = _CDPStateError();
    (*(completionCopy + 2))(completionCopy, 0, v6);
    goto LABEL_7;
  }

LABEL_8:
}

void __56__CDPWalrusDaemonService_webAccessStatusWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _CDPLogSystem();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __56__CDPWalrusDaemonService_webAccessStatusWithCompletion___block_invoke_cold_1(v5);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134217984;
    v11 = a2;
    _os_log_impl(&dword_24510B000, v7, OS_LOG_TYPE_DEFAULT, "Web access status (%lu) fetched successfully.", &v10, 0xCu);
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, a2, v5);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)updateWebAccessStatus:(unint64_t)status completion:(id)completion
{
  completionCopy = completion;
  if ([(CDPWalrusDaemonService *)self _allowWalrusAccess])
  {
    if (status)
    {
      walrusStateController = [(CDPWalrusDaemonService *)self walrusStateController];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __59__CDPWalrusDaemonService_updateWebAccessStatus_completion___block_invoke;
      v12[3] = &unk_278E24780;
      v13 = completionCopy;
      [walrusStateController setWebAccessStatusEnabled:status == 1 completion:v12];

      v8 = v13;
LABEL_13:

      goto LABEL_14;
    }

    v11 = _CDPLogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [CDPWalrusDaemonService updateWebAccessStatus:completion:];
    }

    if (completionCopy)
    {
      v10 = [MEMORY[0x277CCA9B8] cdp_errorWithCode:-7002];
      goto LABEL_12;
    }
  }

  else
  {
    v9 = _CDPLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [CDPWalrusDaemonService updateWebAccessStatus:completion:];
    }

    if (completionCopy)
    {
      v10 = _CDPStateError();
LABEL_12:
      v8 = v10;
      (*(completionCopy + 2))(completionCopy, v10);
      goto LABEL_13;
    }
  }

LABEL_14:
}

void __59__CDPWalrusDaemonService_updateWebAccessStatus_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _CDPLogSystem();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __59__CDPWalrusDaemonService_updateWebAccessStatus_completion___block_invoke_cold_1(v3);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_24510B000, v5, OS_LOG_TYPE_DEFAULT, "Web access status updated successfully.", v7, 2u);
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, v3);
  }
}

- (void)pcsKeysForServices:(id)services completion:(id)completion
{
  servicesCopy = services;
  completionCopy = completion;
  if ([(CDPWalrusDaemonService *)self _allowWalrusPCSKeysAccess])
  {
    contextForPrimaryAccount = [MEMORY[0x277CFD4A8] contextForPrimaryAccount];
    v9 = objc_alloc_init(MEMORY[0x277CFD520]);
    v10 = [[CDPDPCSController alloc] initWithContext:contextForPrimaryAccount pcsProxy:v9];
    [(CDPWalrusDaemonService *)self _checkWalrusBeforeFetchingPCSKeysForServices:servicesCopy pcsController:v10 completion:completionCopy];
  }

  else
  {
    v11 = _CDPLogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [CDPWalrusDaemonService updateWalrusStatus:authenticatedContext:completion:];
    }

    if (completionCopy)
    {
      v12 = objc_alloc_init(MEMORY[0x277CBEAC0]);
      v13 = _CDPStateError();
      completionCopy[2](completionCopy, v12, v13);
    }
  }
}

- (void)_checkWalrusBeforeFetchingPCSKeysForServices:(id)services pcsController:(id)controller completion:(id)completion
{
  servicesCopy = services;
  controllerCopy = controller;
  completionCopy = completion;
  walrusStateController = [(CDPWalrusDaemonService *)self walrusStateController];
  v20 = 0;
  v12 = [walrusStateController walrusStatusWithContext:0 error:&v20];
  v13 = v20;

  if (v13)
  {
    v14 = _CDPLogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [CDPWalrusDaemonService _checkWalrusBeforeFetchingPCSKeysForServices:v13 pcsController:? completion:?];
    }

    if (completionCopy)
    {
      v15 = objc_alloc_init(MEMORY[0x277CBEAC0]);
      v16 = MEMORY[0x277CCA9B8];
      v17 = -7002;
LABEL_12:
      v19 = [v16 cdp_errorWithCode:v17];
      completionCopy[2](completionCopy, v15, v19);
    }
  }

  else if (v12 == 1)
  {
    [(CDPWalrusDaemonService *)self _pcsKeysForServices:servicesCopy pcsController:controllerCopy completion:completionCopy];
  }

  else
  {
    v18 = _CDPLogSystem();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [CDPWalrusDaemonService _checkWalrusBeforeFetchingPCSKeysForServices:pcsController:completion:];
    }

    if (completionCopy)
    {
      v15 = objc_alloc_init(MEMORY[0x277CBEAC0]);
      v16 = MEMORY[0x277CCA9B8];
      v17 = -7003;
      goto LABEL_12;
    }
  }
}

- (void)_pcsKeysForServices:(id)services pcsController:(id)controller completion:(id)completion
{
  servicesCopy = services;
  controllerCopy = controller;
  completionCopy = completion;
  walrusStateController = [(CDPWalrusDaemonService *)self walrusStateController];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __71__CDPWalrusDaemonService__pcsKeysForServices_pcsController_completion___block_invoke;
  v15[3] = &unk_278E24E80;
  v17 = controllerCopy;
  v18 = completionCopy;
  v16 = servicesCopy;
  v12 = controllerCopy;
  v13 = servicesCopy;
  v14 = completionCopy;
  [walrusStateController webAccessStatusWithCompletion:v15];
}

void __71__CDPWalrusDaemonService__pcsKeysForServices_pcsController_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    v6 = _CDPLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __71__CDPWalrusDaemonService__pcsKeysForServices_pcsController_completion___block_invoke_cold_1(v5);
    }

    v7 = *(a1 + 48);
    if (v7)
    {
      v8 = objc_alloc_init(MEMORY[0x277CBEAC0]);
      v9 = MEMORY[0x277CCA9B8];
      v10 = -7102;
LABEL_26:
      v23 = [v9 cdp_errorWithCode:v10];
      (*(v7 + 16))(v7, v8, v23);
      goto LABEL_27;
    }
  }

  else
  {
    if (a2 == 1)
    {
      v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v11 = *(a1 + 32);
      v12 = [v11 countByEnumeratingWithState:&v28 objects:v36 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v29;
        v26 = v8;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v29 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v28 + 1) + 8 * i);
            v17 = *(a1 + 40);
            v27 = 0;
            v18 = [v17 pcsKeysForService:v16 error:&v27];
            v19 = v27;
            if (v19)
            {
              v20 = _CDPLogSystem();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
              {
                v21 = [v19 description];
                *buf = 138412546;
                v33 = v16;
                v34 = 2112;
                v35 = v21;
                _os_log_error_impl(&dword_24510B000, v20, OS_LOG_TYPE_ERROR, "Error fetching key for service %@: %@", buf, 0x16u);

                v8 = v26;
              }
            }

            else if (v18)
            {
              [v8 setObject:v18 forKeyedSubscript:v16];
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v28 objects:v36 count:16];
        }

        while (v13);
      }

      v22 = *(a1 + 48);
      if (!v22)
      {
        v5 = 0;
        goto LABEL_28;
      }

      v23 = [v8 copy];
      (*(v22 + 16))(v22, v23, 0);
      v5 = 0;
LABEL_27:

LABEL_28:
      goto LABEL_29;
    }

    v24 = _CDPLogSystem();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      __71__CDPWalrusDaemonService__pcsKeysForServices_pcsController_completion___block_invoke_cold_2();
    }

    v7 = *(a1 + 48);
    if (v7)
    {
      v8 = objc_alloc_init(MEMORY[0x277CBEAC0]);
      v9 = MEMORY[0x277CCA9B8];
      v10 = -7103;
      goto LABEL_26;
    }
  }

LABEL_29:

  v25 = *MEMORY[0x277D85DE8];
}

- (void)combinedWalrusStatusWithContext:(void *)a1 completion:.cold.2(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  [a1 code];
  v8 = [a1 description];
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

void __77__CDPWalrusDaemonService_updateWalrusStatus_authenticatedContext_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_24510B000, v0, v1, "Failed to update walrus status with error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __56__CDPWalrusDaemonService_webAccessStatusWithCompletion___block_invoke_cold_1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 description];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

void __59__CDPWalrusDaemonService_updateWebAccessStatus_completion___block_invoke_cold_1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 description];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_checkWalrusBeforeFetchingPCSKeysForServices:(void *)a1 pcsController:completion:.cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 description];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_checkWalrusBeforeFetchingPCSKeysForServices:pcsController:completion:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_24510B000, v0, v1, "Walrus status (%lu) is not enabled, abandoning pcs key fetch.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __71__CDPWalrusDaemonService__pcsKeysForServices_pcsController_completion___block_invoke_cold_1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 description];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

void __71__CDPWalrusDaemonService__pcsKeysForServices_pcsController_completion___block_invoke_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_24510B000, v0, v1, "Web access status (%lu) is not enabled, abandoning pcs key fetch.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end