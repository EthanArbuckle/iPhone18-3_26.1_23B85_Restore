@interface CARSetupHeadUnitPairingPrompt
- (BOOL)wantsToPresentHeadUnitPairing;
- (CARSetupHeadUnitPairingPrompt)initWithKeyIdentifier:(id)identifier;
- (CARSetupHeadUnitPairingPromptDelegate)delegate;
- (id)headUnitPairingPromptViewController;
- (void)_servicePerform:(id)perform;
- (void)_setupConnection;
- (void)_synchronous_servicePerform:(id)perform;
- (void)dealloc;
- (void)invalidate;
- (void)presentHeadUnitPairingPrompt;
@end

@implementation CARSetupHeadUnitPairingPrompt

- (CARSetupHeadUnitPairingPrompt)initWithKeyIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = CARSetupHeadUnitPairingPrompt;
  v6 = [(CARSetupHeadUnitPairingPrompt *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_keyIdentifier, identifier);
    [(CARSetupHeadUnitPairingPrompt *)v7 _setupConnection];
  }

  return v7;
}

- (void)dealloc
{
  [(CARSetupHeadUnitPairingPrompt *)self invalidate];
  v3.receiver = self;
  v3.super_class = CARSetupHeadUnitPairingPrompt;
  [(CARSetupHeadUnitPairingPrompt *)&v3 dealloc];
}

- (BOOL)wantsToPresentHeadUnitPairing
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __62__CARSetupHeadUnitPairingPrompt_wantsToPresentHeadUnitPairing__block_invoke;
  v4[3] = &unk_278D8F668;
  v4[4] = self;
  v4[5] = &v5;
  [(CARSetupHeadUnitPairingPrompt *)self _synchronous_servicePerform:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __62__CARSetupHeadUnitPairingPrompt_wantsToPresentHeadUnitPairing__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 keyIdentifier];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __62__CARSetupHeadUnitPairingPrompt_wantsToPresentHeadUnitPairing__block_invoke_2;
  v6[3] = &unk_278D8F640;
  v6[4] = *(a1 + 40);
  [v4 wantsToPresentHeadUnitPairingPromptForKeyIdentifier:v5 completion:v6];
}

void __62__CARSetupHeadUnitPairingPrompt_wantsToPresentHeadUnitPairing__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2)
  {
    *(*(*(a1 + 32) + 8) + 24) = [a2 BOOLValue];
    v6 = CARSetupLogForCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      if (*(*(*(a1 + 32) + 8) + 24))
      {
        v7 = @"YES";
      }

      else
      {
        v7 = @"NO";
      }

      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&dword_242FD5000, v6, OS_LOG_TYPE_DEFAULT, "wantsToPresentHeadUnitPairing: %@", &v9, 0xCu);
    }
  }

  else
  {
    v6 = CARSetupLogForCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __62__CARSetupHeadUnitPairingPrompt_wantsToPresentHeadUnitPairing__block_invoke_2_cold_1();
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (id)headUnitPairingPromptViewController
{
  objc_initWeak(&location, self);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __68__CARSetupHeadUnitPairingPrompt_headUnitPairingPromptViewController__block_invoke;
  v4[3] = &unk_278D8F690;
  objc_copyWeak(&v5, &location);
  v2 = [CARSetupPrompts connectPromptWithBluetoothOnlyOption:0 wirelessEnablement:0 responseHandler:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);

  return v2;
}

void __68__CARSetupHeadUnitPairingPrompt_headUnitPairingPromptViewController__block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleDidFinishWithResult:a2];
}

- (void)presentHeadUnitPairingPrompt
{
  v3 = CARSetupLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_242FD5000, v3, OS_LOG_TYPE_INFO, "calling presentHeadUnitPairingPrompt", buf, 2u);
  }

  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __61__CARSetupHeadUnitPairingPrompt_presentHeadUnitPairingPrompt__block_invoke;
  v4[3] = &unk_278D8F708;
  v4[4] = self;
  [(CARSetupHeadUnitPairingPrompt *)self _servicePerform:v4];
}

void __61__CARSetupHeadUnitPairingPrompt_presentHeadUnitPairingPrompt__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 keyIdentifier];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __61__CARSetupHeadUnitPairingPrompt_presentHeadUnitPairingPrompt__block_invoke_2;
  v6[3] = &unk_278D8F6E0;
  v6[4] = *(a1 + 32);
  [v4 presentHeadUnitPairingPromptForKeyIdentifier:v5 completion:v6];
}

void __61__CARSetupHeadUnitPairingPrompt_presentHeadUnitPairingPrompt__block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = CARSetupLogForCategory(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    if (a2)
    {
      v7 = @"YES";
    }

    *buf = 138543618;
    v12 = v7;
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&dword_242FD5000, v6, OS_LOG_TYPE_DEFAULT, "presentHeadUnitPairingPrompt completed: %{public}@ error: %@", buf, 0x16u);
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __61__CARSetupHeadUnitPairingPrompt_presentHeadUnitPairingPrompt__block_invoke_9;
  v9[3] = &unk_278D8F6B8;
  v9[4] = *(a1 + 32);
  v10 = a2;
  dispatch_async(MEMORY[0x277D85CD0], v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)invalidate
{
  connection = [(CARSetupHeadUnitPairingPrompt *)self connection];
  [connection invalidate];

  [(CARSetupHeadUnitPairingPrompt *)self setConnection:0];
}

- (void)_setupConnection
{
  v3 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.carkit.headUnitPairingPrompt.service" options:4096];
  v4 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2855B8EA8];
  [v3 setRemoteObjectInterface:v4];
  objc_initWeak(&location, self);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__CARSetupHeadUnitPairingPrompt__setupConnection__block_invoke;
  v7[3] = &unk_278D8F730;
  objc_copyWeak(&v8, &location);
  [v3 setInterruptionHandler:v7];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __49__CARSetupHeadUnitPairingPrompt__setupConnection__block_invoke_66;
  v5[3] = &unk_278D8F730;
  objc_copyWeak(&v6, &location);
  [v3 setInvalidationHandler:v5];
  [v3 resume];
  [(CARSetupHeadUnitPairingPrompt *)self setConnection:v3];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __49__CARSetupHeadUnitPairingPrompt__setupConnection__block_invoke(uint64_t a1)
{
  v2 = CARSetupLogForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __49__CARSetupHeadUnitPairingPrompt__setupConnection__block_invoke_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleConnectionReset];
}

void __49__CARSetupHeadUnitPairingPrompt__setupConnection__block_invoke_66(uint64_t a1)
{
  v2 = CARSetupLogForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __49__CARSetupHeadUnitPairingPrompt__setupConnection__block_invoke_66_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained invalidate];
}

- (void)_servicePerform:(id)perform
{
  performCopy = perform;
  connection = [(CARSetupHeadUnitPairingPrompt *)self connection];
  v6 = [connection remoteObjectProxyWithErrorHandler:&__block_literal_global_1];

  performCopy[2](performCopy, v6);
}

void __49__CARSetupHeadUnitPairingPrompt__servicePerform___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = CARSetupLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __49__CARSetupHeadUnitPairingPrompt__servicePerform___block_invoke_cold_1();
  }
}

- (void)_synchronous_servicePerform:(id)perform
{
  performCopy = perform;
  connection = [(CARSetupHeadUnitPairingPrompt *)self connection];
  v6 = [connection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_69];

  performCopy[2](performCopy, v6);
}

void __61__CARSetupHeadUnitPairingPrompt__synchronous_servicePerform___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = CARSetupLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __49__CARSetupHeadUnitPairingPrompt__servicePerform___block_invoke_cold_1();
  }
}

void __60__CARSetupHeadUnitPairingPrompt__handleDidFinishWithResult___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 keyIdentifier];
  [v4 handleReceivedResponse:v2 forKeyIdentifier:v5 completion:&__block_literal_global_77];
}

void __60__CARSetupHeadUnitPairingPrompt__handleDidFinishWithResult___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v4 = a3;
  v5 = CARSetupLogForCategory(0);
  v6 = v5;
  if (a2)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_242FD5000, v6, OS_LOG_TYPE_INFO, "head unit pairing service handled the response", v7, 2u);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __60__CARSetupHeadUnitPairingPrompt__handleDidFinishWithResult___block_invoke_2_cold_1();
  }
}

- (CARSetupHeadUnitPairingPromptDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __62__CARSetupHeadUnitPairingPrompt_wantsToPresentHeadUnitPairing__block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __49__CARSetupHeadUnitPairingPrompt__servicePerform___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __60__CARSetupHeadUnitPairingPrompt__handleDidFinishWithResult___block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end