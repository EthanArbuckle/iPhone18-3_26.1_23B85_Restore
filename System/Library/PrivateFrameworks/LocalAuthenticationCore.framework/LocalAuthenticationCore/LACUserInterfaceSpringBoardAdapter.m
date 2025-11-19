@interface LACUserInterfaceSpringBoardAdapter
+ (id)_targetPredicateWithAuditTokenData:(id)a3;
+ (id)_targetPredicateWithLSApplicationInfoData:(id)a3;
- (LACUserInterfaceSpringBoardAdapter)initWithBundleId:(id)a3 configurationId:(id)a4;
- (id)_activationContextForRequest:(id)a3;
- (void)_finishWithError:(id)a3;
- (void)_processRequest:(id)a3 completion:(id)a4;
- (void)dealloc;
- (void)remoteAlertHandle:(id)a3 didInvalidateWithError:(id)a4;
- (void)remoteAlertHandleDidActivate:(id)a3;
- (void)remoteAlertHandleDidDeactivate:(id)a3;
- (void)terminateWithReason:(id)a3;
@end

@implementation LACUserInterfaceSpringBoardAdapter

- (LACUserInterfaceSpringBoardAdapter)initWithBundleId:(id)a3 configurationId:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = LACUserInterfaceSpringBoardAdapter;
  v9 = [(LACUserInterfaceSpringBoardAdapter *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_bundleId, a3);
    objc_storeStrong(&v10->_configurationId, a4);
  }

  return v10;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ instance was deallocated", self];
  v4 = [LACError errorWithCode:-1000 debugDescription:v3];
  [(LACUserInterfaceSpringBoardAdapter *)self _finishWithError:v4];

  if ([(SBSRemoteAlertHandle *)self->_alertHandle isValid])
  {
    [(SBSRemoteAlertHandle *)self->_alertHandle invalidate];
  }

  v5.receiver = self;
  v5.super_class = LACUserInterfaceSpringBoardAdapter;
  [(LACUserInterfaceSpringBoardAdapter *)&v5 dealloc];
}

- (void)terminateWithReason:(id)a3
{
  v4 = a3;
  v5 = LACLogUI();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [LACUserInterfaceSpringBoardAdapter terminateWithReason:];
  }

  [(SBSRemoteAlertHandle *)self->_alertHandle invalidate];
}

- (void)remoteAlertHandleDidActivate:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = LACLogUI();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[LACUserInterfaceSpringBoardAdapter remoteAlertHandleDidActivate:]";
    _os_log_impl(&dword_1B0233000, v5, OS_LOG_TYPE_DEFAULT, "%s", &v8, 0xCu);
  }

  if (self->_alertHandle != v4)
  {
    v6 = LACLogUI();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [LACUserInterfaceSpringBoardAdapter remoteAlertHandleDidActivate:];
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)remoteAlertHandleDidDeactivate:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = LACLogUI();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[LACUserInterfaceSpringBoardAdapter remoteAlertHandleDidDeactivate:]";
    _os_log_impl(&dword_1B0233000, v5, OS_LOG_TYPE_DEFAULT, "%s", &v8, 0xCu);
  }

  if (self->_alertHandle == v4)
  {
    [(LACUserInterfaceSpringBoardAdapter *)self _finishWithError:0];
  }

  else
  {
    v6 = LACLogUI();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [LACUserInterfaceSpringBoardAdapter remoteAlertHandleDidActivate:];
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)remoteAlertHandle:(id)a3 didInvalidateWithError:(id)a4
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = LACLogUI();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = "[LACUserInterfaceSpringBoardAdapter remoteAlertHandle:didInvalidateWithError:]";
    _os_log_impl(&dword_1B0233000, v6, OS_LOG_TYPE_DEFAULT, "%s", &v9, 0xCu);
  }

  if (self->_alertHandle == v5)
  {
    [(LACUserInterfaceSpringBoardAdapter *)self _finishWithError:0];
  }

  else
  {
    v7 = LACLogUI();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [LACUserInterfaceSpringBoardAdapter remoteAlertHandleDidActivate:];
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

+ (id)_targetPredicateWithAuditTokenData:(id)a3
{
  v3 = [MEMORY[0x1E696B098] valueWithBytes:objc_msgSend(a3 objCType:{"bytes"), "{?=[8I]}"}];
  v4 = v3;
  if (v3)
  {
    v10 = 0u;
    v11 = 0u;
    [v3 getValue:&v10 size:32];
    v9[0] = v10;
    v9[1] = v11;
    v5 = [MEMORY[0x1E698E628] tokenFromAuditToken:v9];
    v6 = [MEMORY[0x1E698E748] processHandleForAuditToken:v5];
    v7 = [MEMORY[0x1E69D42D0] predicateForProcess:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)_targetPredicateWithLSApplicationInfoData:(id)a3
{
  v3 = MEMORY[0x1E696ACD0];
  v4 = a3;
  v10 = 0;
  v5 = [v3 unarchivedObjectOfClass:objc_opt_class() fromData:v4 error:&v10];

  v6 = v10;
  if (v5)
  {
    v7 = [MEMORY[0x1E69D42D0] predicateForLaunchingApplicationIdentity:v5];
  }

  else
  {
    v8 = LACLogUI();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      +[LACUserInterfaceSpringBoardAdapter _targetPredicateWithLSApplicationInfoData:];
    }

    v7 = 0;
  }

  return v7;
}

- (id)_activationContextForRequest:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = [v3 clientAuditTokenData];
  v6 = [v3 isAuditTokenApplicationIdentity];
  v7 = [v3 isForSiri];

  v8 = [v4 activationContextWithAuditToken:v5 isAuditTokenApplicationIdentity:v6 isForSiri:v7];

  return v8;
}

- (void)_processRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  if (self->_handler)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ instance is already in use", self];
    v8 = [LACError errorWithCode:-1000 debugDescription:v7];
    [(LACUserInterfaceSpringBoardAdapter *)self _finishWithError:v8];
  }

  else
  {
    v9 = _Block_copy(a4);
    handler = self->_handler;
    self->_handler = v9;

    v7 = [MEMORY[0x1E69C75E8] identityForApplicationJobLabel:self->_bundleId];
    v8 = [objc_alloc(MEMORY[0x1E69D42A8]) initWithSceneProvidingProcess:v7 configurationIdentifier:self->_configurationId];
    v11 = objc_alloc_init(MEMORY[0x1E69D4290]);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __65__LACUserInterfaceSpringBoardAdapter__processRequest_completion___block_invoke;
    v17[3] = &unk_1E7A97168;
    v12 = v6;
    v18 = v12;
    v13 = __65__LACUserInterfaceSpringBoardAdapter__processRequest_completion___block_invoke(v17);
    [v11 setUserInfo:v13];

    v14 = [(LACUserInterfaceSpringBoardAdapter *)self _activationContextForRequest:v12];
    v15 = [MEMORY[0x1E69D42B0] newHandleWithDefinition:v8 configurationContext:v11];
    if (v15)
    {
      objc_storeStrong(&self->_alertHandle, v15);
      [(SBSRemoteAlertHandle *)self->_alertHandle registerObserver:self];
      [(SBSRemoteAlertHandle *)self->_alertHandle activateWithContext:v14];
    }

    else
    {
      v16 = [LACError errorWithCode:-4 debugDescription:@"Could not start remote alert"];
      [(LACUserInterfaceSpringBoardAdapter *)self _finishWithError:v16];
    }
  }
}

id __65__LACUserInterfaceSpringBoardAdapter__processRequest_completion___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(LACUserInterfaceRequestCoder);
  v3 = [(LACUserInterfaceRequestCoder *)v2 encode:*(a1 + 32)];

  return v3;
}

- (void)_finishWithError:(id)a3
{
  v4 = a3;
  handler = self->_handler;
  if (handler)
  {
    v6 = [handler copy];
    v7 = self->_handler;
    self->_handler = 0;

    (v6)[2](v6, v4);
  }

  else
  {
    v8 = LACLogDTOSensor();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [LACUserInterfaceSpringBoardAdapter _finishWithError:];
    }
  }
}

- (void)terminateWithReason:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1(&dword_1B0233000, v0, v1, "Terminating user interface with reason: '%{public}@'", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)remoteAlertHandleDidActivate:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1(&dword_1B0233000, v0, v1, "Ignoring activation callback from unknown handle: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)_targetPredicateWithLSApplicationInfoData:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1(&dword_1B0233000, v0, v1, "Failed to decode LSApplicationIdentity: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_finishWithError:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(&dword_1B0233000, v0, OS_LOG_TYPE_DEBUG, "Ignoring redundant finish request (%{public}@)", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

@end