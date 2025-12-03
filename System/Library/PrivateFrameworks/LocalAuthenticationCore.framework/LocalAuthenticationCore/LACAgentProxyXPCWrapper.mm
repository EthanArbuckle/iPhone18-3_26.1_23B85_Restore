@interface LACAgentProxyXPCWrapper
- (LACAgentProxyXPCWrapper)initWithConnection:(id)connection;
- (LACAgentProxyXPCWrapperDelegate)delegate;
- (void)_agentProxy:(id)proxy;
- (void)dumpStatusWithCompletion:(id)completion;
- (void)queryUuid:(id)uuid completionHandler:(id)handler;
- (void)registerAcmExternalizedFormHash:(unint64_t)hash uuid:(id)uuid completionHandler:(id)handler;
- (void)registerContextWithUuid:(id)uuid ownership:(id)ownership description:(id)description originalUuid:(id)originalUuid originalAcmHash:(unint64_t)hash completionHandler:(id)handler;
- (void)remoteAuthenticationInProgressWithPriority:(int64_t)priority reply:(id)reply;
- (void)setFUSDisabled:(BOOL)disabled completionHandler:(id)handler;
@end

@implementation LACAgentProxyXPCWrapper

- (LACAgentProxyXPCWrapper)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v9.receiver = self;
  v9.super_class = LACAgentProxyXPCWrapper;
  v6 = [(LACAgentProxyXPCWrapper *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, connection);
  }

  return v7;
}

- (void)dumpStatusWithCompletion:(id)completion
{
  completionCopy = completion;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __52__LACAgentProxyXPCWrapper_dumpStatusWithCompletion___block_invoke;
  v6[3] = &unk_1E7A96980;
  v7 = completionCopy;
  v5 = completionCopy;
  [(LACAgentProxyXPCWrapper *)self _agentProxy:v6];
}

uint64_t __52__LACAgentProxyXPCWrapper_dumpStatusWithCompletion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a3)
  {
    return (*(v3 + 16))(*(a1 + 32), 0);
  }

  else
  {
    return [a2 dumpStatusWithCompletion:v3];
  }
}

- (void)queryUuid:(id)uuid completionHandler:(id)handler
{
  uuidCopy = uuid;
  handlerCopy = handler;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __55__LACAgentProxyXPCWrapper_queryUuid_completionHandler___block_invoke;
  v10[3] = &unk_1E7A969A8;
  v11 = uuidCopy;
  v12 = handlerCopy;
  v8 = uuidCopy;
  v9 = handlerCopy;
  [(LACAgentProxyXPCWrapper *)self _agentProxy:v10];
}

uint64_t __55__LACAgentProxyXPCWrapper_queryUuid_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    return (*(*(a1 + 40) + 16))();
  }

  else
  {
    return [a2 queryUuid:*(a1 + 32) completionHandler:*(a1 + 40)];
  }
}

- (void)registerAcmExternalizedFormHash:(unint64_t)hash uuid:(id)uuid completionHandler:(id)handler
{
  uuidCopy = uuid;
  handlerCopy = handler;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __82__LACAgentProxyXPCWrapper_registerAcmExternalizedFormHash_uuid_completionHandler___block_invoke;
  v12[3] = &unk_1E7A969D0;
  v14 = handlerCopy;
  hashCopy = hash;
  v13 = uuidCopy;
  v10 = uuidCopy;
  v11 = handlerCopy;
  [(LACAgentProxyXPCWrapper *)self _agentProxy:v12];
}

uint64_t __82__LACAgentProxyXPCWrapper_registerAcmExternalizedFormHash_uuid_completionHandler___block_invoke(void *a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    return (*(a1[5] + 16))();
  }

  else
  {
    return [a2 registerAcmExternalizedFormHash:a1[6] uuid:a1[4] completionHandler:a1[5]];
  }
}

- (void)registerContextWithUuid:(id)uuid ownership:(id)ownership description:(id)description originalUuid:(id)originalUuid originalAcmHash:(unint64_t)hash completionHandler:(id)handler
{
  uuidCopy = uuid;
  ownershipCopy = ownership;
  descriptionCopy = description;
  originalUuidCopy = originalUuid;
  handlerCopy = handler;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __120__LACAgentProxyXPCWrapper_registerContextWithUuid_ownership_description_originalUuid_originalAcmHash_completionHandler___block_invoke;
  v24[3] = &unk_1E7A969F8;
  v25 = uuidCopy;
  v26 = ownershipCopy;
  v27 = descriptionCopy;
  v28 = originalUuidCopy;
  v29 = handlerCopy;
  hashCopy = hash;
  v19 = originalUuidCopy;
  v20 = descriptionCopy;
  v21 = ownershipCopy;
  v22 = uuidCopy;
  v23 = handlerCopy;
  [(LACAgentProxyXPCWrapper *)self _agentProxy:v24];
}

uint64_t __120__LACAgentProxyXPCWrapper_registerContextWithUuid_ownership_description_originalUuid_originalAcmHash_completionHandler___block_invoke(void *a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    return (*(a1[8] + 16))();
  }

  else
  {
    return [a2 registerContextWithUuid:a1[4] ownership:a1[5] description:a1[6] originalUuid:a1[7] originalAcmHash:a1[9] completionHandler:a1[8]];
  }
}

- (void)remoteAuthenticationInProgressWithPriority:(int64_t)priority reply:(id)reply
{
  replyCopy = reply;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __76__LACAgentProxyXPCWrapper_remoteAuthenticationInProgressWithPriority_reply___block_invoke;
  v8[3] = &unk_1E7A96A20;
  v9 = replyCopy;
  priorityCopy = priority;
  v7 = replyCopy;
  [(LACAgentProxyXPCWrapper *)self _agentProxy:v8];
}

uint64_t __76__LACAgentProxyXPCWrapper_remoteAuthenticationInProgressWithPriority_reply___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    return (*(*(a1 + 32) + 16))();
  }

  else
  {
    return [a2 remoteAuthenticationInProgressWithPriority:*(a1 + 40) reply:*(a1 + 32)];
  }
}

- (void)setFUSDisabled:(BOOL)disabled completionHandler:(id)handler
{
  handlerCopy = handler;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __60__LACAgentProxyXPCWrapper_setFUSDisabled_completionHandler___block_invoke;
  v8[3] = &unk_1E7A96A48;
  v9 = handlerCopy;
  disabledCopy = disabled;
  v7 = handlerCopy;
  [(LACAgentProxyXPCWrapper *)self _agentProxy:v8];
}

uint64_t __60__LACAgentProxyXPCWrapper_setFUSDisabled_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    return (*(*(a1 + 32) + 16))();
  }

  else
  {
    return [a2 setFUSDisabled:*(a1 + 40) completionHandler:*(a1 + 32)];
  }
}

- (void)_agentProxy:(id)proxy
{
  proxyCopy = proxy;
  v5 = proxyCopy;
  agentProxy = self->_agentProxy;
  if (agentProxy)
  {
    (*(proxyCopy + 2))(proxyCopy, agentProxy, 0);
  }

  else
  {
    objc_initWeak(&location, self);
    connection = self->_connection;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __39__LACAgentProxyXPCWrapper__agentProxy___block_invoke;
    v13[3] = &unk_1E7A96A70;
    v8 = v5;
    v14 = v8;
    objc_copyWeak(&v15, &location);
    v9 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v13];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __39__LACAgentProxyXPCWrapper__agentProxy___block_invoke_2;
    v10[3] = &unk_1E7A96A98;
    v11 = v8;
    objc_copyWeak(&v12, &location);
    [v9 registerAgentProxyWithCompletionHandler:v10];

    objc_destroyWeak(&v12);
    objc_destroyWeak(&v15);

    objc_destroyWeak(&location);
  }
}

void __39__LACAgentProxyXPCWrapper__agentProxy___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = LACLogServer();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __39__LACAgentProxyXPCWrapper__agentProxy___block_invoke_cold_1(v3, v4);
  }

  (*(*(a1 + 32) + 16))();
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = objc_loadWeakRetained(WeakRetained + 3);
    [v7 agentProxyWrapper:v6 didFailToObtainRemoteProxyWithError:v3];
  }
}

void __39__LACAgentProxyXPCWrapper__agentProxy___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    v8 = LACLogServer();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __39__LACAgentProxyXPCWrapper__agentProxy___block_invoke_2_cold_1(v7, v8);
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v10 = WeakRetained;
    if (WeakRetained)
    {
      objc_storeStrong(WeakRetained + 2, a2);
      (*(*(a1 + 32) + 16))();
    }
  }
}

- (LACAgentProxyXPCWrapperDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __39__LACAgentProxyXPCWrapper__agentProxy___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_1B0233000, a2, OS_LOG_TYPE_ERROR, "Error on connection to system daemon: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void __39__LACAgentProxyXPCWrapper__agentProxy___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_1B0233000, a2, OS_LOG_TYPE_ERROR, "Failed to register agent proxy: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end