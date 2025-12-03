@interface EDMailDropMetadataGenerator
- (BOOL)_shouldSearchForMailDropNodesInFileURL:(id)l;
- (id)withTimeout:(double)timeout do:(id)do completion:(id)completion;
- (void)_addScriptHandlerForKey:(id)key handler:(id)handler;
- (void)_findMailDropNodesInFileURL:(id)l promise:(id)promise;
- (void)dealloc;
- (void)generateMailDropMetadataForContentURL:(id)l completionHandler:(id)handler;
- (void)insertMailDropAttachmentViewForContentURL:(id)l HTMLByContentID:(id)d completionHandler:(id)handler;
- (void)tearDownWebView;
- (void)webView:(id)view didFailProvisionalNavigation:(id)navigation withError:(id)error;
- (void)webView:(id)view didFinishNavigation:(id)navigation;
- (void)webViewWebContentProcessDidTerminate:(id)terminate;
@end

@implementation EDMailDropMetadataGenerator

void ___ef_log_EDMailDropMetadataGenerator_block_invoke()
{
  v0 = os_log_create("com.apple.email", "EDMailDropMetadataGenerator");
  v1 = _ef_log_EDMailDropMetadataGenerator_log;
  _ef_log_EDMailDropMetadataGenerator_log = v0;
}

- (void)dealloc
{
  [(EDMailDropMetadataGenerator *)self tearDownWebView];
  v3.receiver = self;
  v3.super_class = EDMailDropMetadataGenerator;
  [(EDMailDropMetadataGenerator *)&v3 dealloc];
}

- (id)withTimeout:(double)timeout do:(id)do completion:(id)completion
{
  doCopy = do;
  completionCopy = completion;
  promise = [MEMORY[0x1E699B868] promise];
  v10 = objc_alloc_init(MEMORY[0x1E699B7F8]);
  future = [promise future];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __57__EDMailDropMetadataGenerator_withTimeout_do_completion___block_invoke;
  v28[3] = &unk_1E8253540;
  v12 = v10;
  v29 = v12;
  v13 = completionCopy;
  v30 = v13;
  [future addSuccessBlock:v28];

  future2 = [promise future];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __57__EDMailDropMetadataGenerator_withTimeout_do_completion___block_invoke_2;
  v25[3] = &unk_1E8253568;
  v15 = v12;
  v26 = v15;
  v16 = v13;
  v27 = v16;
  [future2 addFailureBlock:v25];

  doCopy[2](doCopy, promise);
  mainThreadScheduler = [MEMORY[0x1E699B978] mainThreadScheduler];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __57__EDMailDropMetadataGenerator_withTimeout_do_completion___block_invoke_3;
  v23[3] = &unk_1E8250260;
  v18 = promise;
  v24 = v18;
  v19 = [mainThreadScheduler afterDelay:v23 performBlock:timeout];
  [v15 addCancelable:v19];

  v20 = v24;
  v21 = v18;

  return v18;
}

void __57__EDMailDropMetadataGenerator_withTimeout_do_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) cancel];
  (*(*(a1 + 40) + 16))();
}

void __57__EDMailDropMetadataGenerator_withTimeout_do_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) cancel];
  (*(*(a1 + 40) + 16))();
}

void __57__EDMailDropMetadataGenerator_withTimeout_do_completion___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] ef_timeoutError];
  [v1 finishWithError:?];
}

- (void)generateMailDropMetadataForContentURL:(id)l completionHandler:(id)handler
{
  lCopy = l;
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __87__EDMailDropMetadataGenerator_generateMailDropMetadataForContentURL_completionHandler___block_invoke;
  v12 = &unk_1E8253590;
  selfCopy = self;
  v7 = lCopy;
  v14 = v7;
  v8 = [(EDMailDropMetadataGenerator *)self withTimeout:&v9 do:handler completion:5.0];
  [(EDMailDropMetadataGenerator *)self setActivePromise:v8, v9, v10, v11, v12, selfCopy];
}

- (void)tearDownWebView
{
  v19 = *MEMORY[0x1E69E9840];
  webView = [(EDMailDropMetadataGenerator *)self webView];
  configuration = [webView configuration];
  userContentController = [configuration userContentController];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  scriptHandlers = [(EDMailDropMetadataGenerator *)self scriptHandlers];
  v7 = [scriptHandlers countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(scriptHandlers);
        }

        name = [*(*(&v14 + 1) + 8 * v9) name];
        [userContentController removeScriptMessageHandlerForName:name];

        ++v9;
      }

      while (v7 != v9);
      v7 = [scriptHandlers countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  scriptHandlers2 = [(EDMailDropMetadataGenerator *)self scriptHandlers];
  [scriptHandlers2 removeAllObjects];

  webView2 = [(EDMailDropMetadataGenerator *)self webView];
  [webView2 _close];

  [(EDMailDropMetadataGenerator *)self setWebView:0];
  v13 = *MEMORY[0x1E69E9840];
}

- (BOOL)_shouldSearchForMailDropNodesInFileURL:(id)l
{
  lCopy = l;
  v4 = [MEMORY[0x1E696AEC0] stringWithContentsOfURL:lCopy encoding:4 error:0];
  v5 = v4;
  if (!v4)
  {
    v7 = _ef_log_EDMailDropMetadataGenerator();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(EDMailDropMetadataGenerator *)lCopy _shouldSearchForMailDropNodesInFileURL:v7];
    }

    goto LABEL_7;
  }

  v6 = [v4 containsString:*MEMORY[0x1E699A798]];
  v7 = _ef_log_EDMailDropMetadataGenerator();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
  if (v6)
  {
    if (v8)
    {
      *buf = 0;
      v9 = 1;
      _os_log_impl(&dword_1C61EF000, v7, OS_LOG_TYPE_INFO, "HTML file seems to contain Mail Drop tags; proceeding with node search", buf, 2u);
      goto LABEL_11;
    }

LABEL_7:
    v9 = 1;
    goto LABEL_11;
  }

  if (v8)
  {
    *v11 = 0;
    _os_log_impl(&dword_1C61EF000, v7, OS_LOG_TYPE_INFO, "HTML file does not contain Mail Drop tags; skipping node search", v11, 2u);
  }

  v9 = 0;
LABEL_11:

  return v9;
}

- (void)_findMailDropNodesInFileURL:(id)l promise:(id)promise
{
  lCopy = l;
  promiseCopy = promise;
  if ([(EDMailDropMetadataGenerator *)self _shouldSearchForMailDropNodesInFileURL:lCopy])
  {
    mainThreadScheduler = [MEMORY[0x1E699B978] mainThreadScheduler];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __67__EDMailDropMetadataGenerator__findMailDropNodesInFileURL_promise___block_invoke;
    v9[3] = &unk_1E8250720;
    v9[4] = self;
    v10 = lCopy;
    v11 = promiseCopy;
    [mainThreadScheduler performBlock:v9];
  }

  else
  {
    [promiseCopy finishWithResult:MEMORY[0x1E695E0F0]];
  }
}

void __67__EDMailDropMetadataGenerator__findMailDropNodesInFileURL_promise___block_invoke(id *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69ADD50] commonWebViewConfiguration];
  [v2 _setClientNavigationsRunAtForegroundPriority:1];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__EDMailDropMetadataGenerator__findMailDropNodesInFileURL_promise___block_invoke_2;
  block[3] = &unk_1E8250260;
  block[4] = a1[4];
  if (_block_invoke_onceToken != -1)
  {
    dispatch_once(&_block_invoke_onceToken, block);
  }

  v3 = objc_alloc(MEMORY[0x1E6985358]);
  v4 = [v3 initWithSource:_block_invoke_mailDropSupportSource injectionTime:1 forMainFrameOnly:0];
  v5 = [v2 userContentController];
  [v5 addUserScript:v4];

  v6 = [a1[4] webView];
  LODWORD(v5) = v6 == 0;

  if (v5)
  {
    v7 = _ef_log_EDMailDropMetadataGenerator();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [a1[5] lastPathComponent];
      *buf = 138412290;
      v22 = v8;
      _os_log_impl(&dword_1C61EF000, v7, OS_LOG_TYPE_DEFAULT, "Creating a webview for parsing MailDrop nodes for HTML file %@", buf, 0xCu);
    }

    v9 = objc_alloc(MEMORY[0x1E69853A0]);
    v10 = [v9 initWithFrame:v2 configuration:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    [a1[4] setWebView:v10];

    v11 = a1[4];
    v12 = [v11 webView];
    [v12 setNavigationDelegate:v11];
  }

  objc_initWeak(buf, a1[4]);
  v13 = a1[4];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __67__EDMailDropMetadataGenerator__findMailDropNodesInFileURL_promise___block_invoke_21;
  v17[3] = &unk_1E82535B8;
  objc_copyWeak(&v19, buf);
  v18 = a1[6];
  [v13 _addScriptHandlerForKey:@"FinishedParsingMailDropNodes" handler:v17];
  v14 = [a1[4] webView];
  v15 = [v14 loadFileURL:a1[5] allowingReadAccessToURL:a1[5]];

  objc_destroyWeak(&v19);
  objc_destroyWeak(buf);

  v16 = *MEMORY[0x1E69E9840];
}

void __67__EDMailDropMetadataGenerator__findMailDropNodesInFileURL_promise___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v3 = [v2 pathForResource:@"EDMailDropSupport" ofType:@"js"];

  v10 = 0;
  v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithContentsOfFile:v3 encoding:4 error:&v10];
  v5 = v10;
  v6 = _block_invoke_mailDropSupportSource;
  _block_invoke_mailDropSupportSource = v4;

  if (!_block_invoke_mailDropSupportSource)
  {
    v7 = _ef_log_EDMailDropMetadataGenerator();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [v5 ef_publicDescription];
      __67__EDMailDropMetadataGenerator__findMailDropNodesInFileURL_promise___block_invoke_2_cold_1(v8, v11, v7);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __67__EDMailDropMetadataGenerator__findMailDropNodesInFileURL_promise___block_invoke_21(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = _ef_log_EDMailDropMetadataGenerator();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v12 = 138412290;
    v13 = v3;
    _os_log_impl(&dword_1C61EF000, v5, OS_LOG_TYPE_INFO, "MailDrop: Received Script message Finished MailDrop %@", &v12, 0xCu);
  }

  v6 = v3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 ef_all:&__block_literal_global_176];

    if (v7)
    {
      [*(a1 + 32) finishWithResult:v6];
      goto LABEL_10;
    }
  }

  else
  {
  }

  v8 = _ef_log_EDMailDropMetadataGenerator();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    __67__EDMailDropMetadataGenerator__findMailDropNodesInFileURL_promise___block_invoke_21_cold_1(v8);
  }

  v9 = *(a1 + 32);
  v10 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E699A730] code:2049 userInfo:0];
  [v9 finishWithError:v10];

  [WeakRetained tearDownWebView];
LABEL_10:

  v11 = *MEMORY[0x1E69E9840];
}

- (void)webViewWebContentProcessDidTerminate:(id)terminate
{
  v4 = _ef_log_EDMailDropMetadataGenerator();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [EDMailDropMetadataGenerator webViewWebContentProcessDidTerminate:v4];
  }

  activePromise = [(EDMailDropMetadataGenerator *)self activePromise];
  v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E699A730] code:2049 userInfo:0];
  [activePromise finishWithError:v6];

  [(EDMailDropMetadataGenerator *)self tearDownWebView];
}

- (void)webView:(id)view didFailProvisionalNavigation:(id)navigation withError:(id)error
{
  v11[3] = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v7 = _ef_log_EDMailDropMetadataGenerator();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    ef_publicDescription = [errorCopy ef_publicDescription];
    [EDMailDropMetadataGenerator webView:ef_publicDescription didFailProvisionalNavigation:v11 withError:v7];
  }

  activePromise = [(EDMailDropMetadataGenerator *)self activePromise];
  [activePromise finishWithError:errorCopy];

  [(EDMailDropMetadataGenerator *)self tearDownWebView];
  v10 = *MEMORY[0x1E69E9840];
}

- (void)webView:(id)view didFinishNavigation:(id)navigation
{
  v10 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  v5 = _ef_log_EDMailDropMetadataGenerator();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [viewCopy URL];
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&dword_1C61EF000, v5, OS_LOG_TYPE_INFO, "MailDrop: Finished loading webview for URL %@", &v8, 0xCu);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)insertMailDropAttachmentViewForContentURL:(id)l HTMLByContentID:(id)d completionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  if ([dCopy count])
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __107__EDMailDropMetadataGenerator_insertMailDropAttachmentViewForContentURL_HTMLByContentID_completionHandler___block_invoke;
    v16[3] = &unk_1E8253590;
    v17 = dCopy;
    selfCopy = self;
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __107__EDMailDropMetadataGenerator_insertMailDropAttachmentViewForContentURL_HTMLByContentID_completionHandler___block_invoke_30;
    v13 = &unk_1E8253608;
    selfCopy2 = self;
    v15 = handlerCopy;
    v9 = [(EDMailDropMetadataGenerator *)self withTimeout:v16 do:&v10 completion:5.0];
    [(EDMailDropMetadataGenerator *)self setActivePromise:v9, v10, v11, v12, v13, selfCopy2];
  }

  else
  {
    [(EDMailDropMetadataGenerator *)self tearDownWebView];
    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

void __107__EDMailDropMetadataGenerator_insertMailDropAttachmentViewForContentURL_HTMLByContentID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E696ACB0] dataWithJSONObject:*(a1 + 32) options:0 error:0];
  v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v4 encoding:4];
  v6 = [*(a1 + 40) webView];
  v7 = [v6 URL];

  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"replaceNodeWithIdWithHTML(%@)", v5];;
  v9 = [*(a1 + 40) webView];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __107__EDMailDropMetadataGenerator_insertMailDropAttachmentViewForContentURL_HTMLByContentID_completionHandler___block_invoke_2;
  v13[3] = &unk_1E82535E0;
  v10 = v7;
  v11 = *(a1 + 40);
  v14 = v10;
  v15 = v11;
  v12 = v3;
  v16 = v12;
  [v9 evaluateJavaScript:v8 completionHandler:v13];
}

void __107__EDMailDropMetadataGenerator_insertMailDropAttachmentViewForContentURL_HTMLByContentID_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    v7 = *(a1 + 32);
    v18 = 0;
    v8 = [v5 writeToURL:v7 atomically:1 encoding:4 error:&v18];
    v9 = v18;
    v6 = v9;
    if (v8)
    {
      v10 = v9;
      goto LABEL_15;
    }

    v12 = _ef_log_EDMailDropMetadataGenerator();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [v6 ef_publicDescription];
      __107__EDMailDropMetadataGenerator_insertMailDropAttachmentViewForContentURL_HTMLByContentID_completionHandler___block_invoke_2_cold_1(v13, v23, v12);
    }

    if (v6)
    {
      v21 = *MEMORY[0x1E696AA08];
      v22 = v6;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    }

    else
    {
      v11 = 0;
    }

    v14 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E699A730] code:2049 userInfo:v11];
  }

  else
  {
    if (v6)
    {
      v19 = *MEMORY[0x1E696AA08];
      v20 = v6;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    }

    else
    {
      v11 = 0;
    }

    v14 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E699A730] code:2049 userInfo:v11];
  }

  v10 = v14;

LABEL_15:
  [*(a1 + 40) tearDownWebView];
  v15 = *(a1 + 48);
  if (v10)
  {
    [v15 finishWithError:v10];
  }

  else
  {
    v16 = [MEMORY[0x1E695DFB0] null];
    [v15 finishWithResult:v16];
  }

  v17 = *MEMORY[0x1E69E9840];
}

void __107__EDMailDropMetadataGenerator_insertMailDropAttachmentViewForContentURL_HTMLByContentID_completionHandler___block_invoke_30(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  [*(a1 + 32) tearDownWebView];
  (*(*(a1 + 40) + 16))();
}

- (void)_addScriptHandlerForKey:(id)key handler:(id)handler
{
  keyCopy = key;
  handlerCopy = handler;
  webView = [(EDMailDropMetadataGenerator *)self webView];
  if (!webView)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EDMailDropMetadataGenerator.m" lineNumber:247 description:{@"Invalid parameter not satisfying: %@", @"webView"}];
  }

  if (!self->_scriptHandlers)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    scriptHandlers = self->_scriptHandlers;
    self->_scriptHandlers = v9;
  }

  v11 = objc_alloc_init(EDMailDropWebViewScriptHandler);
  [(EDMailDropWebViewScriptHandler *)v11 setName:keyCopy];
  [(EDMailDropWebViewScriptHandler *)v11 setWebView:webView];
  [(EDMailDropWebViewScriptHandler *)v11 setHandler:handlerCopy];
  [(NSMutableArray *)self->_scriptHandlers addObject:v11];
  configuration = [webView configuration];
  userContentController = [configuration userContentController];
  name = [(EDMailDropWebViewScriptHandler *)v11 name];
  [userContentController addScriptMessageHandler:v11 name:name];
}

- (void)_shouldSearchForMailDropNodesInFileURL:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1C61EF000, a2, OS_LOG_TYPE_ERROR, "Could not load contents of URL %@ for pre-screening; proceeding with node search", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void __67__EDMailDropMetadataGenerator__findMailDropNodesInFileURL_promise___block_invoke_2_cold_1(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138543362;
  *(a2 + 4) = a1;
  OUTLINED_FUNCTION_7(&dword_1C61EF000, a2, a3, "could not load the mail drop support javascript resource: %{public}@", a2);
}

- (void)webView:(void *)a1 didFailProvisionalNavigation:(uint64_t)a2 withError:(NSObject *)a3 .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138543362;
  *(a2 + 4) = a1;
  OUTLINED_FUNCTION_7(&dword_1C61EF000, a2, a3, "MailDrop: Failed to load WebView Error %{public}@", a2);
}

void __107__EDMailDropMetadataGenerator_insertMailDropAttachmentViewForContentURL_HTMLByContentID_completionHandler___block_invoke_2_cold_1(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138543362;
  *(a2 + 4) = a1;
  OUTLINED_FUNCTION_7(&dword_1C61EF000, a2, a3, "Unable to rewrite HTML with updated maildrop nodes. Error: %{public}@", a2);
}

@end