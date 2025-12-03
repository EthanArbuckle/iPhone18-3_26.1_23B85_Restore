@interface LACDTOServiceXPCClient
- (BOOL)isFeatureAvailable;
- (BOOL)isFeatureEnabled;
- (BOOL)isFeatureStrictModeEnabled;
- (BOOL)isFeatureSupported;
- (BOOL)isSensorTrusted;
- (LACDTOServiceXPCClient)initWithEndpointProvider:(id)provider;
- (id)_connectionWithErrorHandler:(id)handler;
- (id)_remoteObjectProxyWithErrorHandler:(id)handler;
- (id)_synchronousRemoteObjectProxyWithErrorHandler:(id)handler;
- (id)ratchetState;
- (void)_handleConnectionClose;
- (void)cancelPendingEvaluationWithRatchetIdentifier:(id)identifier reason:(id)reason completion:(id)completion;
- (void)checkCanEnableFeatureWithCompletion:(id)completion;
- (void)checkIsFeatureAvailableWithCompletion:(id)completion;
- (void)checkIsFeatureEnabledWithCompletion:(id)completion;
- (void)checkIsFeatureStrictModeEnabledWithCompletion:(id)completion;
- (void)checkIsFeatureSupportedWithCompletion:(id)completion;
- (void)checkIsSensorTrustedWithCompletion:(id)completion;
- (void)dealloc;
- (void)disableFeatureStrictModeWithContext:(id)context completion:(id)completion;
- (void)disableFeatureWithContext:(id)context completion:(id)completion;
- (void)enableFeatureActivatingGracePeriodWithCompletion:(id)completion;
- (void)enableFeatureStrictModeWithCompletion:(id)completion;
- (void)enableFeatureWithCompletion:(id)completion;
- (void)ratchetStateCompositeWithCompletion:(id)completion;
- (void)ratchetStateWithCompletion:(id)completion;
@end

@implementation LACDTOServiceXPCClient

- (BOOL)isFeatureEnabled
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __42__LACDTOServiceXPCClient_isFeatureEnabled__block_invoke;
  v5[3] = &unk_1E7A970F0;
  v5[4] = &v6;
  v2 = [(LACDTOServiceXPCClient *)self _synchronousRemoteObjectProxyWithErrorHandler:v5];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __42__LACDTOServiceXPCClient_isFeatureEnabled__block_invoke_5;
  v4[3] = &unk_1E7A97140;
  v4[4] = &v6;
  [v2 checkIsFeatureEnabledWithCompletion:v4];

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

- (LACDTOServiceXPCClient)initWithEndpointProvider:(id)provider
{
  providerCopy = provider;
  v9.receiver = self;
  v9.super_class = LACDTOServiceXPCClient;
  v6 = [(LACDTOServiceXPCClient *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_endpointProvider, provider);
    v7->_connectionLock._os_unfair_lock_opaque = 0;
  }

  return v7;
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_connection invalidate];
  v3.receiver = self;
  v3.super_class = LACDTOServiceXPCClient;
  [(LACDTOServiceXPCClient *)&v3 dealloc];
}

- (id)ratchetState
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__5;
  v11 = __Block_byref_object_dispose__5;
  v12 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __38__LACDTOServiceXPCClient_ratchetState__block_invoke;
  v6[3] = &unk_1E7A970F0;
  v6[4] = &v7;
  v2 = [(LACDTOServiceXPCClient *)self _synchronousRemoteObjectProxyWithErrorHandler:v6];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __38__LACDTOServiceXPCClient_ratchetState__block_invoke_3;
  v5[3] = &unk_1E7A97118;
  v5[4] = &v7;
  [v2 ratchetStateWithCompletion:v5];

  v3 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v3;
}

void __38__LACDTOServiceXPCClient_ratchetState__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = LACLogDTO();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __38__LACDTOServiceXPCClient_ratchetState__block_invoke_cold_1();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;
}

void __38__LACDTOServiceXPCClient_ratchetState__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = LACLogDTO();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __38__LACDTOServiceXPCClient_ratchetState__block_invoke_3_cold_1();
    }
  }

  v8 = *(*(a1 + 32) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;
}

void __42__LACDTOServiceXPCClient_isFeatureEnabled__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = LACLogDTO();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __38__LACDTOServiceXPCClient_ratchetState__block_invoke_cold_1();
  }

  *(*(*(a1 + 32) + 8) + 24) = 0;
}

void __42__LACDTOServiceXPCClient_isFeatureEnabled__block_invoke_5(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = LACLogDTO();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __42__LACDTOServiceXPCClient_isFeatureEnabled__block_invoke_5_cold_1();
    }
  }

  *(*(*(a1 + 32) + 8) + 24) = a2;
}

- (BOOL)isFeatureSupported
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __44__LACDTOServiceXPCClient_isFeatureSupported__block_invoke;
  v5[3] = &unk_1E7A970F0;
  v5[4] = &v6;
  v2 = [(LACDTOServiceXPCClient *)self _synchronousRemoteObjectProxyWithErrorHandler:v5];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __44__LACDTOServiceXPCClient_isFeatureSupported__block_invoke_7;
  v4[3] = &unk_1E7A97140;
  v4[4] = &v6;
  [v2 checkIsFeatureSupportedWithCompletion:v4];

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

void __44__LACDTOServiceXPCClient_isFeatureSupported__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = LACLogDTO();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __38__LACDTOServiceXPCClient_ratchetState__block_invoke_cold_1();
  }

  *(*(*(a1 + 32) + 8) + 24) = 0;
}

void __44__LACDTOServiceXPCClient_isFeatureSupported__block_invoke_7(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = LACLogDTO();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __44__LACDTOServiceXPCClient_isFeatureSupported__block_invoke_7_cold_1();
    }
  }

  *(*(*(a1 + 32) + 8) + 24) = a2;
}

- (BOOL)isFeatureAvailable
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __44__LACDTOServiceXPCClient_isFeatureAvailable__block_invoke;
  v5[3] = &unk_1E7A970F0;
  v5[4] = &v6;
  v2 = [(LACDTOServiceXPCClient *)self _synchronousRemoteObjectProxyWithErrorHandler:v5];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __44__LACDTOServiceXPCClient_isFeatureAvailable__block_invoke_8;
  v4[3] = &unk_1E7A97140;
  v4[4] = &v6;
  [v2 checkIsFeatureAvailableWithCompletion:v4];

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

void __44__LACDTOServiceXPCClient_isFeatureAvailable__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = LACLogDTO();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __38__LACDTOServiceXPCClient_ratchetState__block_invoke_cold_1();
  }

  *(*(*(a1 + 32) + 8) + 24) = 0;
}

void __44__LACDTOServiceXPCClient_isFeatureAvailable__block_invoke_8(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = LACLogDTO();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __44__LACDTOServiceXPCClient_isFeatureAvailable__block_invoke_8_cold_1();
    }
  }

  *(*(*(a1 + 32) + 8) + 24) = a2;
}

- (BOOL)isFeatureStrictModeEnabled
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __52__LACDTOServiceXPCClient_isFeatureStrictModeEnabled__block_invoke;
  v5[3] = &unk_1E7A970F0;
  v5[4] = &v6;
  v2 = [(LACDTOServiceXPCClient *)self _synchronousRemoteObjectProxyWithErrorHandler:v5];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __52__LACDTOServiceXPCClient_isFeatureStrictModeEnabled__block_invoke_9;
  v4[3] = &unk_1E7A97140;
  v4[4] = &v6;
  [v2 checkIsFeatureStrictModeEnabledWithCompletion:v4];

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

void __52__LACDTOServiceXPCClient_isFeatureStrictModeEnabled__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = LACLogDTO();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __38__LACDTOServiceXPCClient_ratchetState__block_invoke_cold_1();
  }

  *(*(*(a1 + 32) + 8) + 24) = 0;
}

void __52__LACDTOServiceXPCClient_isFeatureStrictModeEnabled__block_invoke_9(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = LACLogDTO();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __52__LACDTOServiceXPCClient_isFeatureStrictModeEnabled__block_invoke_9_cold_1();
    }
  }

  *(*(*(a1 + 32) + 8) + 24) = a2;
}

- (BOOL)isSensorTrusted
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __41__LACDTOServiceXPCClient_isSensorTrusted__block_invoke;
  v5[3] = &unk_1E7A970F0;
  v5[4] = &v6;
  v2 = [(LACDTOServiceXPCClient *)self _synchronousRemoteObjectProxyWithErrorHandler:v5];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __41__LACDTOServiceXPCClient_isSensorTrusted__block_invoke_10;
  v4[3] = &unk_1E7A97140;
  v4[4] = &v6;
  [v2 checkIsSensorTrustedWithCompletion:v4];

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

void __41__LACDTOServiceXPCClient_isSensorTrusted__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = LACLogDTO();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __38__LACDTOServiceXPCClient_ratchetState__block_invoke_cold_1();
  }

  *(*(*(a1 + 32) + 8) + 24) = 0;
}

void __41__LACDTOServiceXPCClient_isSensorTrusted__block_invoke_10(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = LACLogDTO();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __41__LACDTOServiceXPCClient_isSensorTrusted__block_invoke_10_cold_1();
    }
  }

  *(*(*(a1 + 32) + 8) + 24) = a2;
}

- (void)ratchetStateWithCompletion:(id)completion
{
  completionCopy = completion;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__LACDTOServiceXPCClient_ratchetStateWithCompletion___block_invoke;
  v7[3] = &unk_1E7A95A10;
  v8 = completionCopy;
  v5 = completionCopy;
  v6 = [(LACDTOServiceXPCClient *)self _remoteObjectProxyWithErrorHandler:v7];
  [v6 ratchetStateWithCompletion:v5];
}

- (void)ratchetStateCompositeWithCompletion:(id)completion
{
  completionCopy = completion;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__LACDTOServiceXPCClient_ratchetStateCompositeWithCompletion___block_invoke;
  v7[3] = &unk_1E7A95A10;
  v8 = completionCopy;
  v5 = completionCopy;
  v6 = [(LACDTOServiceXPCClient *)self _remoteObjectProxyWithErrorHandler:v7];
  [v6 ratchetStateCompositeWithCompletion:v5];
}

- (void)checkIsFeatureEnabledWithCompletion:(id)completion
{
  completionCopy = completion;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__LACDTOServiceXPCClient_checkIsFeatureEnabledWithCompletion___block_invoke;
  v7[3] = &unk_1E7A95A10;
  v8 = completionCopy;
  v5 = completionCopy;
  v6 = [(LACDTOServiceXPCClient *)self _synchronousRemoteObjectProxyWithErrorHandler:v7];
  [v6 checkIsFeatureEnabledWithCompletion:v5];
}

- (void)checkIsFeatureSupportedWithCompletion:(id)completion
{
  completionCopy = completion;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __64__LACDTOServiceXPCClient_checkIsFeatureSupportedWithCompletion___block_invoke;
  v7[3] = &unk_1E7A95A10;
  v8 = completionCopy;
  v5 = completionCopy;
  v6 = [(LACDTOServiceXPCClient *)self _synchronousRemoteObjectProxyWithErrorHandler:v7];
  [v6 checkIsFeatureSupportedWithCompletion:v5];
}

- (void)checkIsFeatureAvailableWithCompletion:(id)completion
{
  completionCopy = completion;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __64__LACDTOServiceXPCClient_checkIsFeatureAvailableWithCompletion___block_invoke;
  v7[3] = &unk_1E7A95A10;
  v8 = completionCopy;
  v5 = completionCopy;
  v6 = [(LACDTOServiceXPCClient *)self _synchronousRemoteObjectProxyWithErrorHandler:v7];
  [v6 checkIsFeatureAvailableWithCompletion:v5];
}

- (void)checkIsFeatureStrictModeEnabledWithCompletion:(id)completion
{
  completionCopy = completion;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __72__LACDTOServiceXPCClient_checkIsFeatureStrictModeEnabledWithCompletion___block_invoke;
  v7[3] = &unk_1E7A95A10;
  v8 = completionCopy;
  v5 = completionCopy;
  v6 = [(LACDTOServiceXPCClient *)self _synchronousRemoteObjectProxyWithErrorHandler:v7];
  [v6 checkIsFeatureStrictModeEnabledWithCompletion:v5];
}

- (void)disableFeatureWithContext:(id)context completion:(id)completion
{
  completionCopy = completion;
  contextCopy = context;
  v8 = [(LACDTOServiceXPCClient *)self _remoteObjectProxyWithErrorHandler:completionCopy];
  [v8 disableFeatureWithContext:contextCopy completion:completionCopy];
}

- (void)checkCanEnableFeatureWithCompletion:(id)completion
{
  completionCopy = completion;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__LACDTOServiceXPCClient_checkCanEnableFeatureWithCompletion___block_invoke;
  v7[3] = &unk_1E7A95A10;
  v8 = completionCopy;
  v5 = completionCopy;
  v6 = [(LACDTOServiceXPCClient *)self _remoteObjectProxyWithErrorHandler:v7];
  [v6 checkCanEnableFeatureWithCompletion:v5];
}

- (void)enableFeatureWithCompletion:(id)completion
{
  completionCopy = completion;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__LACDTOServiceXPCClient_enableFeatureWithCompletion___block_invoke;
  v7[3] = &unk_1E7A95A10;
  v8 = completionCopy;
  v5 = completionCopy;
  v6 = [(LACDTOServiceXPCClient *)self _remoteObjectProxyWithErrorHandler:v7];
  [v6 enableFeatureWithCompletion:v5];
}

- (void)enableFeatureActivatingGracePeriodWithCompletion:(id)completion
{
  completionCopy = completion;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __75__LACDTOServiceXPCClient_enableFeatureActivatingGracePeriodWithCompletion___block_invoke;
  v7[3] = &unk_1E7A95A10;
  v8 = completionCopy;
  v5 = completionCopy;
  v6 = [(LACDTOServiceXPCClient *)self _remoteObjectProxyWithErrorHandler:v7];
  [v6 enableFeatureActivatingGracePeriodWithCompletion:v5];
}

- (void)enableFeatureStrictModeWithCompletion:(id)completion
{
  completionCopy = completion;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __64__LACDTOServiceXPCClient_enableFeatureStrictModeWithCompletion___block_invoke;
  v7[3] = &unk_1E7A95A10;
  v8 = completionCopy;
  v5 = completionCopy;
  v6 = [(LACDTOServiceXPCClient *)self _remoteObjectProxyWithErrorHandler:v7];
  [v6 enableFeatureStrictModeWithCompletion:v5];
}

- (void)disableFeatureStrictModeWithContext:(id)context completion:(id)completion
{
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __73__LACDTOServiceXPCClient_disableFeatureStrictModeWithContext_completion___block_invoke;
  v10[3] = &unk_1E7A95A10;
  v11 = completionCopy;
  v7 = completionCopy;
  contextCopy = context;
  v9 = [(LACDTOServiceXPCClient *)self _remoteObjectProxyWithErrorHandler:v10];
  [v9 disableFeatureStrictModeWithContext:contextCopy completion:v7];
}

- (void)cancelPendingEvaluationWithRatchetIdentifier:(id)identifier reason:(id)reason completion:(id)completion
{
  completionCopy = completion;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __89__LACDTOServiceXPCClient_cancelPendingEvaluationWithRatchetIdentifier_reason_completion___block_invoke;
  v13[3] = &unk_1E7A95A10;
  v14 = completionCopy;
  v9 = completionCopy;
  reasonCopy = reason;
  identifierCopy = identifier;
  v12 = [(LACDTOServiceXPCClient *)self _remoteObjectProxyWithErrorHandler:v13];
  [v12 cancelPendingEvaluationWithRatchetIdentifier:identifierCopy reason:reasonCopy completion:v9];
}

- (void)checkIsSensorTrustedWithCompletion:(id)completion
{
  completionCopy = completion;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__LACDTOServiceXPCClient_checkIsSensorTrustedWithCompletion___block_invoke;
  v7[3] = &unk_1E7A95A10;
  v8 = completionCopy;
  v5 = completionCopy;
  v6 = [(LACDTOServiceXPCClient *)self _remoteObjectProxyWithErrorHandler:v7];
  [v6 checkIsSensorTrustedWithCompletion:v5];
}

- (id)_remoteObjectProxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [(LACDTOServiceXPCClient *)self _connectionWithErrorHandler:handlerCopy];
  v6 = [v5 remoteObjectProxyWithErrorHandler:handlerCopy];

  return v6;
}

- (id)_synchronousRemoteObjectProxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [(LACDTOServiceXPCClient *)self _connectionWithErrorHandler:handlerCopy];
  v6 = [v5 synchronousRemoteObjectProxyWithErrorHandler:handlerCopy];

  return v6;
}

- (id)_connectionWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  os_unfair_lock_lock(&self->_connectionLock);
  if (self->_connection)
  {
    v5 = 0;
  }

  else
  {
    endpointProvider = self->_endpointProvider;
    v18 = 0;
    v7 = [(LACDTOServiceXPCEndpointProvider *)endpointProvider endpoint:&v18];
    v5 = v18;
    if (v7)
    {
      v8 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithListenerEndpoint:v7];
      connection = self->_connection;
      self->_connection = v8;

      v10 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F269BE00];
      [(NSXPCConnection *)self->_connection setRemoteObjectInterface:v10];

      objc_initWeak(&location, self);
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __54__LACDTOServiceXPCClient__connectionWithErrorHandler___block_invoke;
      aBlock[3] = &unk_1E7A95380;
      objc_copyWeak(&v16, &location);
      v11 = _Block_copy(aBlock);
      [(NSXPCConnection *)self->_connection setInvalidationHandler:v11];
      [(NSXPCConnection *)self->_connection setInterruptionHandler:v11];
      [(NSXPCConnection *)self->_connection resume];

      objc_destroyWeak(&v16);
      objc_destroyWeak(&location);
    }

    if (!(self->_connection | v5))
    {
      v5 = [LACError errorWithCode:-1000 debugDescription:@"XPC connection to LACDTOServiceXPC could not be created"];
    }

    if (v5)
    {
      handlerCopy[2](handlerCopy, v5);
    }
  }

  os_unfair_lock_unlock(&self->_connectionLock);
  v12 = self->_connection;
  v13 = v12;

  return v12;
}

void __54__LACDTOServiceXPCClient__connectionWithErrorHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleConnectionClose];
}

- (void)_handleConnectionClose
{
  if (self->_connection)
  {
    v3 = LACLogDTO();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [(LACDTOServiceXPCClient *)v3 _handleConnectionClose];
    }

    [(NSXPCConnection *)self->_connection invalidate];
    connection = self->_connection;
    self->_connection = 0;
  }
}

void __38__LACDTOServiceXPCClient_ratchetState__block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1(&dword_1B0233000, v0, v1, "Could not get synchronous remote object proxy (%{public}@)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __38__LACDTOServiceXPCClient_ratchetState__block_invoke_3_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1(&dword_1B0233000, v0, v1, "Could not fetch ratchet state (%{public}@)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __42__LACDTOServiceXPCClient_isFeatureEnabled__block_invoke_5_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1(&dword_1B0233000, v0, v1, "Could not fetch feature enabled status (%{public}@)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __44__LACDTOServiceXPCClient_isFeatureSupported__block_invoke_7_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1(&dword_1B0233000, v0, v1, "Could not fetch feature supported status (%{public}@)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __44__LACDTOServiceXPCClient_isFeatureAvailable__block_invoke_8_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1(&dword_1B0233000, v0, v1, "Could not fetch feature available status (%{public}@)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __52__LACDTOServiceXPCClient_isFeatureStrictModeEnabled__block_invoke_9_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1(&dword_1B0233000, v0, v1, "Could not fetch feature strict mode status (%{public}@)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __41__LACDTOServiceXPCClient_isSensorTrusted__block_invoke_10_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1(&dword_1B0233000, v0, v1, "Could not fetch sensor trust status (%{public}@)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end