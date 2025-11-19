@interface LACUISceneHostingControllerEmbeddedPasscode
- (LACUISceneHostingControllerEmbeddedPasscode)init;
- (void)endEditing;
- (void)handleAction:(id)a3 completion:(id)a4;
- (void)passcodeVerificationFinished:(id)a3;
- (void)sceneHostingControllerDidReconnect:(id)a3;
- (void)setContext:(id)a3;
- (void)startEditing;
@end

@implementation LACUISceneHostingControllerEmbeddedPasscode

- (LACUISceneHostingControllerEmbeddedPasscode)init
{
  v3 = objc_alloc(MEMORY[0x277D23FF0]);
  v4 = [v3 initWithAngelIdentifier:@"com.apple.LocalAuthenticationUIService" sceneIdentifier:*MEMORY[0x277D23E10]];
  v8.receiver = self;
  v8.super_class = LACUISceneHostingControllerEmbeddedPasscode;
  v5 = [(LACUISceneHostingController *)&v8 initWithConfiguration:v4];
  v6 = v5;
  if (v5)
  {
    [(LACUISceneHostingController *)v5 setSceneConnectionDelegate:v5];
  }

  return v6;
}

- (void)sceneHostingControllerDidReconnect:(id)a3
{
  if (self->_context)
  {
    [(LACUISceneHostingControllerEmbeddedPasscode *)self setContext:?];

    [(LACUISceneHostingControllerEmbeddedPasscode *)self startEditing];
  }
}

- (void)endEditing
{
  v3 = [[LACUIEmbeddedPasscodeAction alloc] initWithIdentifier:3 value:0];
  [(LACUISceneHostingController *)self sendAction:v3 completion:&__block_literal_global_0];
}

void __57__LACUISceneHostingControllerEmbeddedPasscode_endEditing__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = LACLogUI();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __57__LACUISceneHostingControllerEmbeddedPasscode_endEditing__block_invoke_cold_1();
  }
}

- (void)setContext:(id)a3
{
  objc_storeStrong(&self->_context, a3);
  v5 = a3;
  v6 = [[LACUIEmbeddedPasscodeAction alloc] initWithIdentifier:1 value:v5];

  [(LACUISceneHostingController *)self sendAction:v6 completion:&__block_literal_global_4];
}

void __58__LACUISceneHostingControllerEmbeddedPasscode_setContext___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = LACLogUI();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __58__LACUISceneHostingControllerEmbeddedPasscode_setContext___block_invoke_cold_1();
  }
}

- (void)startEditing
{
  v3 = [[LACUIEmbeddedPasscodeAction alloc] initWithIdentifier:2 value:0];
  [(LACUISceneHostingController *)self sendAction:v3 completion:&__block_literal_global_6];
}

void __59__LACUISceneHostingControllerEmbeddedPasscode_startEditing__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = LACLogUI();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __59__LACUISceneHostingControllerEmbeddedPasscode_startEditing__block_invoke_cold_1();
  }
}

- (void)passcodeVerificationFinished:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = LACLogUI();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v7 = 136315138;
    v8 = "[LACUISceneHostingControllerEmbeddedPasscode passcodeVerificationFinished:]";
    _os_log_impl(&dword_256063000, v4, OS_LOG_TYPE_INFO, "%s", &v7, 0xCu);
  }

  if (v3)
  {
    v5 = LACLogUI();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [LACUISceneHostingControllerEmbeddedPasscode passcodeVerificationFinished:];
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)handleAction:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[LACUIEmbeddedPasscodeAction alloc] initWithAction:v7];

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __71__LACUISceneHostingControllerEmbeddedPasscode_handleAction_completion___block_invoke;
  aBlock[3] = &unk_27981E690;
  aBlock[4] = self;
  v9 = v8;
  v15 = v9;
  v10 = v6;
  v16 = v10;
  v11 = _Block_copy(aBlock);
  if ([(LACUIEmbeddedPasscodeAction *)v9 identifier]== 4)
  {
    v12 = [(LACUIHostedSceneAction *)v9 valueDecodedForClass:objc_opt_class()];
    [(LACUISceneHostingControllerEmbeddedPasscode *)self passcodeVerificationFinished:v12];

    v13 = 0;
  }

  else
  {
    v13 = [MEMORY[0x277D24060] errorWithCode:*MEMORY[0x277D23E88] debugDescription:@"Cannot handle action"];
  }

  v11[2](v11, v13);
}

void __71__LACUISceneHostingControllerEmbeddedPasscode_handleAction_completion___block_invoke(void *a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = LACLogUI();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __71__LACUISceneHostingControllerEmbeddedPasscode_handleAction_completion___block_invoke_cold_1(a1, v3, v5);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = a1[4];
    v7 = a1[5];
    v9 = 138412546;
    v10 = v6;
    v11 = 2112;
    v12 = v7;
    _os_log_impl(&dword_256063000, v5, OS_LOG_TYPE_DEFAULT, "%@ handled action: %@", &v9, 0x16u);
  }

  (*(a1[6] + 16))();
  v8 = *MEMORY[0x277D85DE8];
}

void __57__LACUISceneHostingControllerEmbeddedPasscode_endEditing__block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_256063000, v0, v1, "End editing result: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __58__LACUISceneHostingControllerEmbeddedPasscode_setContext___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_256063000, v0, v1, "Set context result: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __59__LACUISceneHostingControllerEmbeddedPasscode_startEditing__block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_256063000, v0, v1, "Start editing result: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)passcodeVerificationFinished:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_256063000, v0, OS_LOG_TYPE_ERROR, "Passcode verification failed (%@).", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void __71__LACUISceneHostingControllerEmbeddedPasscode_handleAction_completion___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = 138412802;
  v7 = v3;
  v8 = 2112;
  v9 = v4;
  v10 = 2112;
  v11 = a2;
  _os_log_error_impl(&dword_256063000, log, OS_LOG_TYPE_ERROR, "%@ handle action: %@, error:%@", &v6, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

@end