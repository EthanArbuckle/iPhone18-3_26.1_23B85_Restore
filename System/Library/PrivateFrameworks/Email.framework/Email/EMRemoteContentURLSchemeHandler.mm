@interface EMRemoteContentURLSchemeHandler
+ (id)dataTaskForRequest:(id)request withSchemePrefix:(id)prefix session:(id)session scheduler:(id)scheduler allowProxying:(BOOL)proxying cancelationToken:(id *)token completionHandler:(id)handler;
- (EMRemoteContentURLSchemeHandler)initWithSession:(id)session schemePrefix:(id)prefix allowProxying:(BOOL)proxying;
- (void)setOnWebViewConfiguration:(id)configuration;
- (void)webView:(id)view startURLSchemeTask:(id)task;
- (void)webView:(id)view stopURLSchemeTask:(id)task;
@end

@implementation EMRemoteContentURLSchemeHandler

- (EMRemoteContentURLSchemeHandler)initWithSession:(id)session schemePrefix:(id)prefix allowProxying:(BOOL)proxying
{
  sessionCopy = session;
  prefixCopy = prefix;
  v16.receiver = self;
  v16.super_class = EMRemoteContentURLSchemeHandler;
  v11 = [(EMRemoteContentURLSchemeHandler *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_schemePrefix, prefix);
    mainThreadScheduler = [MEMORY[0x1E699B978] mainThreadScheduler];
    scheduler = v12->_scheduler;
    v12->_scheduler = mainThreadScheduler;

    objc_storeStrong(&v12->_session, session);
    v12->_allowProxying = proxying;
  }

  return v12;
}

- (void)setOnWebViewConfiguration:(id)configuration
{
  configurationCopy = configuration;
  remoteContentHTTPScheme = [(EMRemoteContentURLSchemeHandler *)self remoteContentHTTPScheme];
  [configurationCopy setURLSchemeHandler:self forURLScheme:remoteContentHTTPScheme];

  remoteContentHTTPSScheme = [(EMRemoteContentURLSchemeHandler *)self remoteContentHTTPSScheme];
  [configurationCopy setURLSchemeHandler:self forURLScheme:remoteContentHTTPSScheme];

  v6 = objc_alloc_init(MEMORY[0x1E695DFD8]);
  [configurationCopy _setAllowedNetworkHosts:v6];
}

+ (id)dataTaskForRequest:(id)request withSchemePrefix:(id)prefix session:(id)session scheduler:(id)scheduler allowProxying:(BOOL)proxying cancelationToken:(id *)token completionHandler:(id)handler
{
  proxyingCopy = proxying;
  requestCopy = request;
  prefixCopy = prefix;
  sessionCopy = session;
  schedulerCopy = scheduler;
  handlerCopy = handler;
  v34 = prefixCopy;
  v35 = requestCopy;
  v18 = objc_alloc_init(MEMORY[0x1E699B7F8]);
  v19 = [requestCopy mutableCopy];
  v20 = [requestCopy URL];
  v21 = [v20 ef_urlByRemovingPrefixFromScheme:prefixCopy];
  [v19 setURL:v21];

  if (token)
  {
    v22 = v18;
    *token = v18;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __138__EMRemoteContentURLSchemeHandler_dataTaskForRequest_withSchemePrefix_session_scheduler_allowProxying_cancelationToken_completionHandler___block_invoke;
  aBlock[3] = &unk_1E826F690;
  v23 = sessionCopy;
  v41 = v23;
  v24 = v19;
  v42 = v24;
  v46 = proxyingCopy;
  v25 = v18;
  v43 = v25;
  v26 = schedulerCopy;
  v44 = v26;
  v27 = handlerCopy;
  v45 = v27;
  v28 = _Block_copy(aBlock);
  v29 = objc_alloc_init(MEMORY[0x1E699B868]);
  v30 = v29;
  if (proxyingCopy)
  {
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __138__EMRemoteContentURLSchemeHandler_dataTaskForRequest_withSchemePrefix_session_scheduler_allowProxying_cancelationToken_completionHandler___block_invoke_4;
    v37[3] = &unk_1E826E798;
    v38 = v29;
    v39 = v28;
    EMPrivacyProxyIsDisabledForNetwork(v37);

    v31 = v38;
  }

  else
  {
    v31 = (*(v28 + 2))(v28, 0);
    [v30 finishWithResult:v31];
  }

  future = [v30 future];

  return future;
}

id __138__EMRemoteContentURLSchemeHandler_dataTaskForRequest_withSchemePrefix_session_scheduler_allowProxying_cancelationToken_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 72);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __138__EMRemoteContentURLSchemeHandler_dataTaskForRequest_withSchemePrefix_session_scheduler_allowProxying_cancelationToken_completionHandler___block_invoke_2;
  v9[3] = &unk_1E826F668;
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v12 = *(a1 + 64);
  v7 = [v4 dataTaskWithRequest:v5 isSynthetic:0 allowProxying:v6 failOpen:a2 background:0 completionHandler:v9];
  [*(a1 + 48) addCancelable:v7];

  return v7;
}

void __138__EMRemoteContentURLSchemeHandler_dataTaskForRequest_withSchemePrefix_session_scheduler_allowProxying_cancelationToken_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (([*(a1 + 32) isCanceled] & 1) == 0)
  {
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __138__EMRemoteContentURLSchemeHandler_dataTaskForRequest_withSchemePrefix_session_scheduler_allowProxying_cancelationToken_completionHandler___block_invoke_3;
    v16 = &unk_1E826F640;
    v20 = *(a1 + 48);
    v17 = v7;
    v18 = v8;
    v19 = v9;
    v12 = [v11 performCancelableBlock:&v13];
    [v10 addCancelable:{v12, v13, v14, v15, v16}];
  }
}

void __138__EMRemoteContentURLSchemeHandler_dataTaskForRequest_withSchemePrefix_session_scheduler_allowProxying_cancelationToken_completionHandler___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = (*(*(a1 + 40) + 16))();
  [v1 finishWithResult:?];
}

- (void)webView:(id)view startURLSchemeTask:(id)task
{
  v33[1] = *MEMORY[0x1E69E9840];
  taskCopy = task;
  v6 = _os_activity_create(&dword_1C6655000, "[EMRemoteContentURLSchemeHandler webView:startURLSchemeTask:]", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v6, &state);
  request = [taskCopy request];
  v8 = [request URL];
  scheme = [v8 scheme];
  v10 = [scheme ef_hasCaseInsensitivePrefix:self->_schemePrefix];

  if (v10)
  {
    v11 = self->_scheduler;
    v12 = objc_opt_class();
    schemePrefix = self->_schemePrefix;
    session = self->_session;
    allowProxying = [(EMRemoteContentURLSchemeHandler *)self allowProxying];
    v30 = 0;
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __62__EMRemoteContentURLSchemeHandler_webView_startURLSchemeTask___block_invoke;
    v28[3] = &unk_1E826F6B8;
    v16 = taskCopy;
    v29 = v16;
    v17 = [v12 dataTaskForRequest:request withSchemePrefix:schemePrefix session:session scheduler:v11 allowProxying:allowProxying cancelationToken:&v30 completionHandler:v28];
    v18 = v30;
    objc_setAssociatedObject(v16, &kTokenKey, v18, 0x301);
    [v17 addSuccessBlock:&__block_literal_global_44];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __62__EMRemoteContentURLSchemeHandler_webView_startURLSchemeTask___block_invoke_3;
    v24[3] = &unk_1E826DF38;
    v19 = v18;
    v25 = v19;
    v20 = v11;
    v26 = v20;
    v27 = v16;
    [v17 addFailureBlock:v24];

    v21 = v29;
  }

  else
  {
    v22 = MEMORY[0x1E696ABC0];
    v32 = *MEMORY[0x1E696A980];
    v19 = [request URL];
    v33[0] = v19;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:&v32 count:1];
    v21 = [v22 errorWithDomain:*MEMORY[0x1E696A978] code:-1000 userInfo:v20];
    [taskCopy didFailWithError:v21];
  }

  os_activity_scope_leave(&state);
  v23 = *MEMORY[0x1E69E9840];
}

void __62__EMRemoteContentURLSchemeHandler_webView_startURLSchemeTask___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v10 = a2;
  v7 = a3;
  v8 = a4;
  v9 = *(a1 + 32);
  if (v7)
  {
    [v9 didReceiveResponse:v7];
    [*(a1 + 32) didReceiveData:v10];
    [*(a1 + 32) didFinish];
  }

  else
  {
    [v9 didFailWithError:v8];
  }
}

void __62__EMRemoteContentURLSchemeHandler_webView_startURLSchemeTask___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __62__EMRemoteContentURLSchemeHandler_webView_startURLSchemeTask___block_invoke_4;
  v11 = &unk_1E826F708;
  v12 = *(a1 + 48);
  v6 = v3;
  v13 = v6;
  v7 = [v5 performCancelableBlock:&v8];
  [v4 addCancelable:{v7, v8, v9, v10, v11}];
}

- (void)webView:(id)view stopURLSchemeTask:(id)task
{
  object = task;
  v4 = objc_getAssociatedObject(object, &kTokenKey);
  [v4 cancel];
  objc_setAssociatedObject(object, &kTokenKey, 0, 0x301);
}

@end