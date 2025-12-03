@interface LACAnalyticsSessionClient
- (LACAnalyticsSessionClient)initWithContext:(id)context;
- (id)_bootstrapServiceWithError:(id *)error;
- (id)_callBlockOnSynchronousRemoteObjectProxy:(id)proxy;
- (id)_connectionWithError:(id *)error;
- (void)_connectionDidClose:(BOOL)close;
- (void)authenticationAttemptFailedForEvent:(int64_t)event;
- (void)authenticationStartedForEvent:(int64_t)event;
- (void)authenticationSuccessfulForEvent:(int64_t)event;
- (void)connectToExistingSession;
- (void)finishSession;
- (void)setContext:(id)context;
- (void)startSessionForDialogID:(id)d bundleID:(id)iD;
@end

@implementation LACAnalyticsSessionClient

- (LACAnalyticsSessionClient)initWithContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = LACAnalyticsSessionClient;
  v6 = [(LACAnalyticsSessionClient *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_context, context);
  }

  return v7;
}

- (void)startSessionForDialogID:(id)d bundleID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v8 = self->_context;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__10;
  v22 = __Block_byref_object_dispose__10;
  v23 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __62__LACAnalyticsSessionClient_startSessionForDialogID_bundleID___block_invoke;
  v13[3] = &unk_1E7A97D48;
  v9 = v8;
  v14 = v9;
  v10 = dCopy;
  v15 = v10;
  v11 = iDCopy;
  v16 = v11;
  v17 = &v18;
  v12 = [(LACAnalyticsSessionClient *)self _callBlockOnSynchronousRemoteObjectProxy:v13];
  objc_storeStrong(&self->_session, v19[5]);

  _Block_object_dispose(&v18, 8);
}

void __62__LACAnalyticsSessionClient_startSessionForDialogID_bundleID___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 uuid];
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __62__LACAnalyticsSessionClient_startSessionForDialogID_bundleID___block_invoke_2;
  v12[3] = &unk_1E7A97D20;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  *&v10 = *(a1 + 48);
  *(&v10 + 1) = *(a1 + 56);
  *&v11 = v8;
  *(&v11 + 1) = v9;
  v13 = v11;
  v14 = v10;
  [v4 startSessionForContext:v5 dialogID:v6 bundleID:v7 reply:v12];
}

void __62__LACAnalyticsSessionClient_startSessionForDialogID_bundleID___block_invoke_2(void *a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = LACLogAnalytics();
  v8 = 16 * (v5 == 0);
  if (os_log_type_enabled(v7, v8))
  {
    v9 = a1[4];
    v10 = a1[5];
    v11 = a1[6];
    v12 = @"success";
    if (!v5)
    {
      v12 = v6;
    }

    v16 = 138544387;
    v17 = v9;
    v18 = 2114;
    v19 = v10;
    v20 = 2113;
    v21 = v11;
    v22 = 2114;
    v23 = v9;
    v24 = 2114;
    v25 = v12;
    _os_log_impl(&dword_1B0233000, v7, v8, "startSessionForContext:%{public}@ dialogID:%{public}@ bundleID:%{private}@ on %{public}@: %{public}@", &v16, 0x34u);
  }

  v13 = *(a1[7] + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v5;

  v15 = *MEMORY[0x1E69E9840];
}

- (void)connectToExistingSession
{
  v3 = self->_context;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__10;
  v13 = __Block_byref_object_dispose__10;
  v14 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53__LACAnalyticsSessionClient_connectToExistingSession__block_invoke;
  v6[3] = &unk_1E7A97D98;
  v4 = v3;
  v7 = v4;
  v8 = &v9;
  v5 = [(LACAnalyticsSessionClient *)self _callBlockOnSynchronousRemoteObjectProxy:v6];
  objc_storeStrong(&self->_session, v10[5]);

  _Block_object_dispose(&v9, 8);
}

void __53__LACAnalyticsSessionClient_connectToExistingSession__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 uuid];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __53__LACAnalyticsSessionClient_connectToExistingSession__block_invoke_2;
  v8[3] = &unk_1E7A97D70;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = v6;
  v10 = v7;
  [v4 connectSessionForContext:v5 reply:v8];
}

void __53__LACAnalyticsSessionClient_connectToExistingSession__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = LACLogAnalytics();
  v8 = 16 * (v5 == 0);
  if (os_log_type_enabled(v7, v8))
  {
    v9 = @"success";
    v10 = *(a1 + 32);
    if (!v5)
    {
      v9 = v6;
    }

    v14 = 138543874;
    v15 = v10;
    v16 = 2114;
    v17 = v10;
    v18 = 2114;
    v19 = v9;
    _os_log_impl(&dword_1B0233000, v7, v8, "connectSessionForContext:%{public}@ on %{public}@: %{public}@", &v14, 0x20u);
  }

  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v5;

  v13 = *MEMORY[0x1E69E9840];
}

- (void)finishSession
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1(&dword_1B0233000, v0, v1, "%{public}@: no session to finish", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __42__LACAnalyticsSessionClient_finishSession__block_invoke(uint64_t a1, int a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = LACLogAnalytics();
  v7 = v6;
  if (a2)
  {
    v8 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v8 = OS_LOG_TYPE_ERROR;
  }

  if (os_log_type_enabled(v6, v8))
  {
    v9 = *(a1 + 32);
    v10 = @"success";
    if (!a2)
    {
      v10 = v5;
    }

    v12 = 138543618;
    v13 = v9;
    v14 = 2114;
    v15 = v10;
    _os_log_impl(&dword_1B0233000, v7, v8, "finishSession for %{public}@: %{public}@", &v12, 0x16u);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)authenticationStartedForEvent:(int64_t)event
{
  if (self->_session)
  {
    v5 = self->_context;
    session = self->_session;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __59__LACAnalyticsSessionClient_authenticationStartedForEvent___block_invoke;
    v8[3] = &unk_1E7A97DE8;
    v9 = v5;
    eventCopy = event;
    v7 = v5;
    [(LACAnalyticsSessionXPC *)session authenticationStartedForEvent:event reply:v8];
  }

  else
  {
    v7 = LACLogAnalytics();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [LACAnalyticsSessionClient authenticationStartedForEvent:];
    }
  }
}

void __59__LACAnalyticsSessionClient_authenticationStartedForEvent___block_invoke(uint64_t a1, int a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = LACLogAnalytics();
  v7 = v6;
  if (a2)
  {
    v8 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v8 = OS_LOG_TYPE_ERROR;
  }

  if (os_log_type_enabled(v6, v8))
  {
    v9 = NSStringFromLACEvent(*(a1 + 40));
    v10 = v9;
    v11 = *(a1 + 32);
    v12 = @"success";
    v14 = 138543874;
    if (!a2)
    {
      v12 = v5;
    }

    v15 = v9;
    v16 = 2114;
    v17 = v11;
    v18 = 2114;
    v19 = v12;
    _os_log_impl(&dword_1B0233000, v7, v8, "authenticationStartedForEvent:%{public}@ for %{public}@: %{public}@", &v14, 0x20u);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)authenticationAttemptFailedForEvent:(int64_t)event
{
  if (self->_session)
  {
    v5 = self->_context;
    session = self->_session;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __65__LACAnalyticsSessionClient_authenticationAttemptFailedForEvent___block_invoke;
    v8[3] = &unk_1E7A97DE8;
    v9 = v5;
    eventCopy = event;
    v7 = v5;
    [(LACAnalyticsSessionXPC *)session authenticationAttemptFailedForEvent:event reply:v8];
  }

  else
  {
    v7 = LACLogAnalytics();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [LACAnalyticsSessionClient authenticationAttemptFailedForEvent:];
    }
  }
}

void __65__LACAnalyticsSessionClient_authenticationAttemptFailedForEvent___block_invoke(uint64_t a1, int a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = LACLogAnalytics();
  v7 = v6;
  if (a2)
  {
    v8 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v8 = OS_LOG_TYPE_ERROR;
  }

  if (os_log_type_enabled(v6, v8))
  {
    v9 = NSStringFromLACEvent(*(a1 + 40));
    v10 = v9;
    v11 = *(a1 + 32);
    v12 = @"success";
    v14 = 138543874;
    if (!a2)
    {
      v12 = v5;
    }

    v15 = v9;
    v16 = 2114;
    v17 = v11;
    v18 = 2114;
    v19 = v12;
    _os_log_impl(&dword_1B0233000, v7, v8, "authenticationAttemptFailedForEvent:%{public}@ for %{public}@: %{public}@", &v14, 0x20u);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)authenticationSuccessfulForEvent:(int64_t)event
{
  if (self->_session)
  {
    v5 = self->_context;
    session = self->_session;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __62__LACAnalyticsSessionClient_authenticationSuccessfulForEvent___block_invoke;
    v8[3] = &unk_1E7A97DE8;
    v9 = v5;
    eventCopy = event;
    v7 = v5;
    [(LACAnalyticsSessionXPC *)session authenticationSuccessfulForEvent:event reply:v8];
  }

  else
  {
    v7 = LACLogAnalytics();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [LACAnalyticsSessionClient authenticationSuccessfulForEvent:];
    }
  }
}

void __62__LACAnalyticsSessionClient_authenticationSuccessfulForEvent___block_invoke(uint64_t a1, int a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = LACLogAnalytics();
  v7 = v6;
  if (a2)
  {
    v8 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v8 = OS_LOG_TYPE_ERROR;
  }

  if (os_log_type_enabled(v6, v8))
  {
    v9 = NSStringFromLACEvent(*(a1 + 40));
    v10 = v9;
    v11 = *(a1 + 32);
    v12 = @"success";
    v14 = 138543874;
    if (!a2)
    {
      v12 = v5;
    }

    v15 = v9;
    v16 = 2114;
    v17 = v11;
    v18 = 2114;
    v19 = v12;
    _os_log_impl(&dword_1B0233000, v7, v8, "authenticationSuccessfulForEvent:%{public}@ for %{public}@: %{public}@", &v14, 0x20u);
  }

  v13 = *MEMORY[0x1E69E9840];
}

void __58__LACAnalyticsSessionClient_authenticationAction_failing___block_invoke(uint64_t a1, int a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = LACLogAnalytics();
  v7 = v6;
  if (a2)
  {
    v8 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v8 = OS_LOG_TYPE_ERROR;
  }

  if (os_log_type_enabled(v6, v8))
  {
    v9 = NSStringFromLACAnalyticsAction(*(a1 + 40));
    v10 = v9;
    v11 = *(a1 + 48);
    v12 = *(a1 + 32);
    v13 = @"success";
    if (!a2)
    {
      v13 = v5;
    }

    v15 = 138544130;
    v16 = v9;
    v17 = 1024;
    v18 = v11;
    v19 = 2114;
    v20 = v12;
    v21 = 2114;
    v22 = v13;
    _os_log_impl(&dword_1B0233000, v7, v8, "authenticationAction:%{public}@ failing:%d for %{public}@: %{public}@", &v15, 0x26u);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)setContext:(id)context
{
  contextCopy = context;
  v6 = contextCopy;
  if (self->_session)
  {
    if (contextCopy)
    {
      objc_storeStrong(&self->_context, context);
      session = self->_session;
      uuid = [(LACContext *)self->_context uuid];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __40__LACAnalyticsSessionClient_setContext___block_invoke;
      v10[3] = &unk_1E7A97DC0;
      v11 = v6;
      [(LACAnalyticsSessionXPC *)session updateContextUUID:uuid reply:v10];

      v9 = v11;
    }

    else
    {
      v9 = LACLogAnalytics();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [LACAnalyticsSessionClient setContext:];
      }
    }
  }

  else
  {
    v9 = LACLogAnalytics();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [LACAnalyticsSessionClient setContext:];
    }
  }
}

void __40__LACAnalyticsSessionClient_setContext___block_invoke(uint64_t a1, int a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = LACLogAnalytics();
  v7 = v6;
  if (a2)
  {
    v8 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v8 = OS_LOG_TYPE_ERROR;
  }

  if (os_log_type_enabled(v6, v8))
  {
    v9 = *(a1 + 32);
    v10 = @"success";
    if (!a2)
    {
      v10 = v5;
    }

    v12 = 138543618;
    v13 = v9;
    v14 = 2114;
    v15 = v10;
    _os_log_impl(&dword_1B0233000, v7, v8, "updateContext:%{public}@: %{public}@", &v12, 0x16u);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (id)_callBlockOnSynchronousRemoteObjectProxy:(id)proxy
{
  proxyCopy = proxy;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__10;
  v17 = __Block_byref_object_dispose__10;
  v18 = 0;
  connection = self->_connection;
  if (connection)
  {
    goto LABEL_3;
  }

  obj = 0;
  v6 = [(LACAnalyticsSessionClient *)self _connectionWithError:&obj];
  objc_storeStrong(&v18, obj);
  v7 = self->_connection;
  self->_connection = v6;

  connection = self->_connection;
  if (connection)
  {
LABEL_3:
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __70__LACAnalyticsSessionClient__callBlockOnSynchronousRemoteObjectProxy___block_invoke;
    v11[3] = &unk_1E7A970F0;
    v11[4] = &v13;
    v8 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v11];
    if (v8)
    {
      proxyCopy[2](proxyCopy, v8);
    }

    v9 = v14[5];
  }

  else
  {
    v9 = v14[5];
  }

  _Block_object_dispose(&v13, 8);

  return v9;
}

- (id)_connectionWithError:(id *)error
{
  v22 = *MEMORY[0x1E69E9840];
  v18 = 0;
  v4 = [(LACAnalyticsSessionClient *)self _bootstrapServiceWithError:&v18];
  v5 = v18;
  if (v4)
  {
    v6 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithListenerEndpoint:v4];
    v7 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F26A22E0];
    [v6 setRemoteObjectInterface:v7];

    v8 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F269D4F0];
    remoteObjectInterface = [v6 remoteObjectInterface];
    [remoteObjectInterface setInterface:v8 forSelector:sel_startSessionForContext_dialogID_bundleID_reply_ argumentIndex:0 ofReply:1];

    remoteObjectInterface2 = [v6 remoteObjectInterface];
    [remoteObjectInterface2 setInterface:v8 forSelector:sel_connectSessionForContext_reply_ argumentIndex:0 ofReply:1];

    objc_initWeak(location, self);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __50__LACAnalyticsSessionClient__connectionWithError___block_invoke;
    v16[3] = &unk_1E7A95380;
    objc_copyWeak(&v17, location);
    [v6 setInvalidationHandler:v16];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __50__LACAnalyticsSessionClient__connectionWithError___block_invoke_2;
    v14[3] = &unk_1E7A95380;
    objc_copyWeak(&v15, location);
    [v6 setInterruptionHandler:v14];
    [v6 resume];
    objc_destroyWeak(&v15);
    objc_destroyWeak(&v17);
    objc_destroyWeak(location);
  }

  else
  {
    v6 = 0;
  }

  v11 = LACLogAnalytics();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *location = 138543618;
    *&location[4] = self;
    v20 = 2114;
    v21 = v6;
    _os_log_impl(&dword_1B0233000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ created: %{public}@", location, 0x16u);
  }

  v12 = *MEMORY[0x1E69E9840];

  return v6;
}

void __50__LACAnalyticsSessionClient__connectionWithError___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _connectionDidClose:1];
}

void __50__LACAnalyticsSessionClient__connectionWithError___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _connectionDidClose:0];
}

- (void)_connectionDidClose:(BOOL)close
{
  v16 = *MEMORY[0x1E69E9840];
  if (self->_connection)
  {
    closeCopy = close;
    v5 = LACLogAnalytics();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      connection = self->_connection;
      v9 = "interrupted";
      v10 = 138543874;
      if (closeCopy)
      {
        v9 = "invalidated";
      }

      selfCopy = self;
      v12 = 2114;
      v13 = connection;
      v14 = 2082;
      v15 = v9;
      _os_log_error_impl(&dword_1B0233000, v5, OS_LOG_TYPE_ERROR, "%{public}@ found %{public}@ %{public}s", &v10, 0x20u);
    }

    [(NSXPCConnection *)self->_connection invalidate];
    v6 = self->_connection;
    self->_connection = 0;
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (id)_bootstrapServiceWithError:(id *)error
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__10;
  v18 = __Block_byref_object_dispose__10;
  v19 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__10;
  v12 = __Block_byref_object_dispose__10;
  v13 = 0;
  context = self->_context;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__LACAnalyticsSessionClient__bootstrapServiceWithError___block_invoke;
  v7[3] = &unk_1E7A97E38;
  v7[4] = &v14;
  v7[5] = &v8;
  [(LACContext *)context bootstrapServiceType:@"kLAServiceTypeAnalytics" completionHandler:v7];
  if (error)
  {
    *error = v9[5];
  }

  v5 = v15[5];
  _Block_object_dispose(&v8, 8);

  _Block_object_dispose(&v14, 8);

  return v5;
}

void __56__LACAnalyticsSessionClient__bootstrapServiceWithError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (void)authenticationStartedForEvent:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1(&dword_1B0233000, v0, v1, "%{public}@: no session for starting authentication", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)authenticationAttemptFailedForEvent:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1(&dword_1B0233000, v0, v1, "%{public}@: no session for failed authentication attempt", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)authenticationSuccessfulForEvent:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1(&dword_1B0233000, v0, v1, "%{public}@: no session for successful authentication", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)authenticationAction:failing:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1(&dword_1B0233000, v0, v1, "%{public}@: no session for authentication action", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)setContext:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1(&dword_1B0233000, v0, v1, "%{public}@: no context for session update", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)setContext:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1(&dword_1B0233000, v0, v1, "%{public}@: no session for updated context", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end