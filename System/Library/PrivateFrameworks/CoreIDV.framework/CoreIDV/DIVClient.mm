@interface DIVClient
- (BOOL)isDisconnected;
- (DIVClient)init;
- (id)context;
- (id)createDaemonDisconnectedError;
- (id)remoteObjectProxyWithErrorHandler:(id)handler;
- (id)serverConnection;
- (void)concludeVerification:(id)verification;
- (void)configure:(id)configure completion:(id)completion;
- (void)confirmVerificationCompletedWithFeedback:(id)feedback;
- (void)dealloc;
- (void)getVerificationResultWithOptions:(id)options completion:(id)completion;
- (void)init;
- (void)invalidate;
- (void)performVerificationWithAttributes:(id)attributes completion:(id)completion;
- (void)setContext:(id)context;
- (void)setIsDisconnected:(BOOL)disconnected;
- (void)shareVerificationResultWithOptions:(id)options completion:(id)completion;
@end

@implementation DIVClient

- (DIVClient)init
{
  v40.receiver = self;
  v40.super_class = DIVClient;
  v2 = [(DIVClient *)&v40 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v2->_isDisconnected = 0;
    v4 = DIV_LOG_SIGNPOST();
    v5 = DIV_LOG_SIGNPOST();
    v6 = os_signpost_id_make_with_pointer(v5, v3);

    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
    {
      LOWORD(buf) = 0;
      _os_signpost_emit_with_name_impl(&dword_21CC90000, v4, OS_SIGNPOST_INTERVAL_BEGIN, v6, "sessionLifetime", "", &buf, 2u);
    }

    v7 = DIV_LOG_SIGNPOST();
    v8 = DIV_LOG_SIGNPOST();
    v9 = os_signpost_id_make_with_pointer(v8, v3);

    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
    {
      LOWORD(buf) = 0;
      _os_signpost_emit_with_name_impl(&dword_21CC90000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v9, "initThroughShare", "", &buf, 2u);
    }

    v10 = DIV_LOG_CLIENT_1();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [(DIVClient *)v10 init];
    }

    v11 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.coreidvd.proofing" options:4096];
    serverConnection = v3->_serverConnection;
    v3->_serverConnection = v11;

    v13 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_282E80CD0];
    [(NSXPCConnection *)v3->_serverConnection setRemoteObjectInterface:v13];

    v36 = MEMORY[0x277CBEB98];
    v35 = objc_opt_class();
    v34 = objc_opt_class();
    v33 = objc_opt_class();
    v32 = objc_opt_class();
    v31 = objc_opt_class();
    v30 = objc_opt_class();
    v29 = objc_opt_class();
    v28 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = objc_opt_class();
    v18 = objc_opt_class();
    v19 = objc_opt_class();
    v20 = objc_opt_class();
    v21 = objc_opt_class();
    v22 = objc_opt_class();
    v23 = [v36 setWithObjects:{v35, v34, v33, v32, v31, v30, v29, v28, v14, v15, v16, v17, v18, v19, v20, v21, v22, objc_opt_class(), 0}];
    remoteObjectInterface = [(NSXPCConnection *)v3->_serverConnection remoteObjectInterface];
    [remoteObjectInterface setClasses:v23 forSelector:sel_performVerificationWithAttributes_completion_ argumentIndex:0 ofReply:1];

    v25 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];

    remoteObjectInterface2 = [(NSXPCConnection *)v3->_serverConnection remoteObjectInterface];
    [remoteObjectInterface2 setClasses:v25 forSelector:sel_shareVerificationResultWithOptions_completion_ argumentIndex:0 ofReply:1];

    objc_initWeak(&buf, v3);
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __17__DIVClient_init__block_invoke;
    v37[3] = &unk_278320C88;
    objc_copyWeak(&v38, &buf);
    [(NSXPCConnection *)v3->_serverConnection setInterruptionHandler:v37];
    [(NSXPCConnection *)v3->_serverConnection activate];
    objc_destroyWeak(&v38);
    objc_destroyWeak(&buf);
  }

  return v3;
}

void __17__DIVClient_init__block_invoke(uint64_t a1)
{
  v2 = DIV_LOG_CLIENT_1();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __17__DIVClient_init__block_invoke_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained setIsDisconnected:1];
  }
}

- (void)dealloc
{
  [(DIVClient *)self invalidate];
  v3 = DIV_LOG_SIGNPOST();
  v4 = DIV_LOG_SIGNPOST();
  v5 = os_signpost_id_make_with_pointer(v4, self);

  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_21CC90000, v3, OS_SIGNPOST_INTERVAL_END, v5, "sessionLifetime", "", buf, 2u);
  }

  v6.receiver = self;
  v6.super_class = DIVClient;
  [(DIVClient *)&v6 dealloc];
}

- (void)configure:(id)configure completion:(id)completion
{
  configureCopy = configure;
  completionCopy = completion;
  v8 = DIV_LOG_SIGNPOST();
  v9 = DIV_LOG_SIGNPOST();
  v10 = os_signpost_id_make_with_pointer(v9, self);

  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_21CC90000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v10, "configure", "", buf, 2u);
  }

  if (configureCopy && ([configureCopy serviceName], v11 = objc_claimAutoreleasedReturnValue(), v11, v11))
  {
    [(DIVClient *)self setContext:configureCopy];
    v12 = DIV_LOG_CLIENT_1();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [DIVClient configure:v12 completion:?];
    }

    if (![(DIVClient *)self isDisconnected])
    {
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __34__DIVClient_configure_completion___block_invoke;
      aBlock[3] = &unk_278320CB0;
      aBlock[4] = self;
      v21 = completionCopy;
      v15 = _Block_copy(aBlock);
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __34__DIVClient_configure_completion___block_invoke_84;
      v18[3] = &unk_278320C10;
      v19 = v15;
      v16 = v15;
      v17 = [(DIVClient *)self remoteObjectProxyWithErrorHandler:v18];
      [v17 configure:configureCopy completion:v16];

      goto LABEL_14;
    }

    createDaemonDisconnectedError = [(DIVClient *)self createDaemonDisconnectedError];
  }

  else
  {
    createDaemonDisconnectedError = [MEMORY[0x277CCA9B8] errorWithDomain:@"DIVError" code:-2 userInfo:0];
    v14 = DIV_LOG_CLIENT_1();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [DIVClient configure:completion:];
    }
  }

  (*(completionCopy + 2))(completionCopy, createDaemonDisconnectedError);

LABEL_14:
}

void __34__DIVClient_configure_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = DIV_LOG_SIGNPOST();
  v5 = DIV_LOG_SIGNPOST();
  v6 = os_signpost_id_make_with_pointer(v5, *(a1 + 32));

  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *v7 = 0;
    _os_signpost_emit_with_name_impl(&dword_21CC90000, v4, OS_SIGNPOST_INTERVAL_END, v6, "configure", "", v7, 2u);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)performVerificationWithAttributes:(id)attributes completion:(id)completion
{
  attributesCopy = attributes;
  completionCopy = completion;
  v8 = DIV_LOG_CLIENT_1();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [DIVClient performVerificationWithAttributes:completion:];
  }

  v9 = DIV_LOG_SIGNPOST();
  v10 = DIV_LOG_SIGNPOST();
  v11 = os_signpost_id_make_with_pointer(v10, self);

  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_21CC90000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v11, "performVerificationWithAttributes", "", buf, 2u);
  }

  if ([(DIVClient *)self isDisconnected])
  {
    createDaemonDisconnectedError = [(DIVClient *)self createDaemonDisconnectedError];
    (*(completionCopy + 2))(completionCopy, 0, 0, createDaemonDisconnectedError);
  }

  else
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __58__DIVClient_performVerificationWithAttributes_completion___block_invoke;
    aBlock[3] = &unk_278320CD8;
    aBlock[4] = self;
    v19 = completionCopy;
    v13 = _Block_copy(aBlock);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __58__DIVClient_performVerificationWithAttributes_completion___block_invoke_86;
    v16[3] = &unk_278320C10;
    v17 = v13;
    v14 = v13;
    v15 = [(DIVClient *)self remoteObjectProxyWithErrorHandler:v16];
    [v15 performVerificationWithAttributes:attributesCopy completion:v14];
  }
}

void __58__DIVClient_performVerificationWithAttributes_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = a2;
  v8 = DIV_LOG_SIGNPOST();
  v9 = DIV_LOG_SIGNPOST();
  v10 = os_signpost_id_make_with_pointer(v9, *(a1 + 32));

  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *v11 = 0;
    _os_signpost_emit_with_name_impl(&dword_21CC90000, v8, OS_SIGNPOST_INTERVAL_END, v10, "performVerificationWithAttributes", "", v11, 2u);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)shareVerificationResultWithOptions:(id)options completion:(id)completion
{
  optionsCopy = options;
  completionCopy = completion;
  v8 = DIV_LOG_CLIENT_1();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [DIVClient shareVerificationResultWithOptions:completion:];
  }

  v9 = DIV_LOG_SIGNPOST();
  v10 = DIV_LOG_SIGNPOST();
  v11 = os_signpost_id_make_with_pointer(v10, self);

  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_21CC90000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v11, "shareVerificationResultWithOptions", "", buf, 2u);
  }

  if ([(DIVClient *)self isDisconnected])
  {
    createDaemonDisconnectedError = [(DIVClient *)self createDaemonDisconnectedError];
    completionCopy[2](completionCopy, 0, createDaemonDisconnectedError);
  }

  else
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __59__DIVClient_shareVerificationResultWithOptions_completion___block_invoke;
    aBlock[3] = &unk_278320D00;
    aBlock[4] = self;
    v19 = completionCopy;
    v13 = _Block_copy(aBlock);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __59__DIVClient_shareVerificationResultWithOptions_completion___block_invoke_88;
    v16[3] = &unk_278320C10;
    v17 = v13;
    v14 = v13;
    v15 = [(DIVClient *)self remoteObjectProxyWithErrorHandler:v16];
    [v15 shareVerificationResultWithOptions:optionsCopy completion:v14];
  }
}

void __59__DIVClient_shareVerificationResultWithOptions_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = DIV_LOG_SIGNPOST();
  v8 = DIV_LOG_SIGNPOST();
  v9 = os_signpost_id_make_with_pointer(v8, *(a1 + 32));

  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *v10 = 0;
    _os_signpost_emit_with_name_impl(&dword_21CC90000, v7, OS_SIGNPOST_INTERVAL_END, v9, "shareVerificationResultWithOptions", "", v10, 2u);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)getVerificationResultWithOptions:(id)options completion:(id)completion
{
  optionsCopy = options;
  completionCopy = completion;
  v8 = DIV_LOG_CLIENT_1();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [DIVClient getVerificationResultWithOptions:completion:];
  }

  v9 = DIV_LOG_SIGNPOST();
  v10 = DIV_LOG_SIGNPOST();
  v11 = os_signpost_id_make_with_pointer(v10, self);

  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_21CC90000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v11, "getVerificationResultWithOptions", "", buf, 2u);
  }

  if ([(DIVClient *)self isDisconnected])
  {
    createDaemonDisconnectedError = [(DIVClient *)self createDaemonDisconnectedError];
    completionCopy[2](completionCopy, 0, createDaemonDisconnectedError);
  }

  else
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __57__DIVClient_getVerificationResultWithOptions_completion___block_invoke;
    aBlock[3] = &unk_278320D28;
    aBlock[4] = self;
    v19 = completionCopy;
    v13 = _Block_copy(aBlock);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __57__DIVClient_getVerificationResultWithOptions_completion___block_invoke_90;
    v16[3] = &unk_278320C10;
    v17 = v13;
    v14 = v13;
    v15 = [(DIVClient *)self remoteObjectProxyWithErrorHandler:v16];
    [v15 getVerificationResultWithOptions:optionsCopy completion:v14];
  }
}

void __57__DIVClient_getVerificationResultWithOptions_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = DIV_LOG_SIGNPOST();
  v8 = DIV_LOG_SIGNPOST();
  v9 = os_signpost_id_make_with_pointer(v8, *(a1 + 32));

  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_21CC90000, v7, OS_SIGNPOST_INTERVAL_END, v9, "getVerificationResultWithOptions", "", buf, 2u);
  }

  v10 = DIV_LOG_SIGNPOST();
  v11 = DIV_LOG_SIGNPOST();
  v12 = os_signpost_id_make_with_pointer(v11, *(a1 + 32));

  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *v14 = 0;
    _os_signpost_emit_with_name_impl(&dword_21CC90000, v10, OS_SIGNPOST_INTERVAL_END, v12, "initThroughShare", "", v14, 2u);
  }

  if (v5)
  {
    v13 = [MEMORY[0x277CCACA8] _newZStringWithString:v5];
  }

  else
  {
    v13 = 0;
  }

  (*(*(a1 + 40) + 16))();
}

- (void)invalidate
{
  v3 = DIV_LOG_CLIENT_1();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [DIVClient invalidate];
  }

  serverConnection = [(DIVClient *)self serverConnection];
  [serverConnection invalidate];
}

- (void)concludeVerification:(id)verification
{
  verificationCopy = verification;
  if (![(DIVClient *)self isDisconnected])
  {
    v5 = DIV_LOG_CLIENT_1();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [DIVClient concludeVerification:];
    }

    v6 = [(DIVClient *)self remoteObjectProxyWithErrorHandler:0];
    [v6 concludeVerification:verificationCopy];
  }
}

- (void)confirmVerificationCompletedWithFeedback:(id)feedback
{
  feedbackCopy = feedback;
  v5 = DIV_LOG_CLIENT_1();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [DIVClient confirmVerificationCompletedWithFeedback:];
  }

  if ([(DIVClient *)self isDisconnected])
  {
    v6 = DIV_LOG_CLIENT_1();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [DIVClient confirmVerificationCompletedWithFeedback:];
    }
  }

  else
  {
    date = [MEMORY[0x277CBEAA8] date];
    [feedbackCopy setFinishDate:date];

    v6 = [(DIVClient *)self remoteObjectProxyWithErrorHandler:0];
    [v6 confirmVerificationCompletedWithFeedback:feedbackCopy];
  }
}

- (id)serverConnection
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_serverConnection;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id)context
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_context;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setContext:(id)context
{
  contextCopy = context;
  os_unfair_lock_lock(&self->_lock);
  context = self->_context;
  self->_context = contextCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isDisconnected
{
  os_unfair_lock_lock(&self->_lock);
  isDisconnected = self->_isDisconnected;
  os_unfair_lock_unlock(&self->_lock);
  return isDisconnected;
}

- (void)setIsDisconnected:(BOOL)disconnected
{
  os_unfair_lock_lock(&self->_lock);
  self->_isDisconnected = disconnected;

  os_unfair_lock_unlock(&self->_lock);
}

- (id)createDaemonDisconnectedError
{
  v2 = DIV_LOG_CLIENT_1();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    [DIVClient createDaemonDisconnectedError];
  }

  v3 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DIVError" code:-19 userInfo:0];

  return v3;
}

- (id)remoteObjectProxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  serverConnection = [(DIVClient *)self serverConnection];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __47__DIVClient_remoteObjectProxyWithErrorHandler___block_invoke;
  v9[3] = &unk_278320C60;
  v9[4] = self;
  v10 = handlerCopy;
  v6 = handlerCopy;
  v7 = [serverConnection remoteObjectProxyWithErrorHandler:v9];

  return v7;
}

void __47__DIVClient_remoteObjectProxyWithErrorHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = DIV_LOG_CLIENT_1();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __47__DIVClient_remoteObjectProxyWithErrorHandler___block_invoke_cold_1(v3, v4);
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    v6 = [*(a1 + 32) createDaemonDisconnectedError];
    (*(v5 + 16))(v5, v6);
  }
}

- (void)init
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 138543618;
  v3 = @"com.apple.coreidvd.proofing";
  v4 = 1024;
  v5 = 4096;
  _os_log_debug_impl(&dword_21CC90000, log, OS_LOG_TYPE_DEBUG, "connecting to %{public}@ (%x)", &v2, 0x12u);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)configure:(void *)a1 completion:(NSObject *)a2 .cold.1(void *a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = [a1 context];
  v4 = [v3 serviceName];
  v6 = 138543362;
  v7 = v4;
  _os_log_debug_impl(&dword_21CC90000, a2, OS_LOG_TYPE_DEBUG, "configure with context -> service name:%{public}@", &v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

void __47__DIVClient_remoteObjectProxyWithErrorHandler___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_21CC90000, a2, OS_LOG_TYPE_ERROR, "DIVClient remote object proxy error: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end