@interface WFWKWebViewCapturer
+ (id)deniedExternalResourcesLoadError;
+ (void)loadWebResource:(id)resource withSize:(CGSize)size configuration:(id)configuration coercionOptions:(id)options completionHandler:(id)handler;
- (WFWKWebViewCapturer)initWithSize:(CGSize)size configuration:(id)configuration coercionOptions:(id)options;
- (id)errorWithErrorCode:(int64_t)code;
- (void)_webView:(id)view contentRuleListWithIdentifier:(id)identifier performedAction:(id)action forURL:(id)l;
- (void)generateBlockingContentRuleListWithCompletionHandler:(id)handler;
- (void)loadWebResource:(id)resource completionHandler:(id)handler;
- (void)webView:(id)view didFailNavigation:(id)navigation withError:(id)error;
- (void)webView:(id)view didFailProvisionalNavigation:(id)navigation withError:(id)error;
- (void)webView:(id)view didFinishNavigation:(id)navigation;
@end

@implementation WFWKWebViewCapturer

- (id)errorWithErrorCode:(int64_t)code
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCA9B8];
  v9 = *MEMORY[0x277CCA450];
  v5 = WFLocalizedString(@"The web content could not be loaded because an internal error occurred.");
  v10[0] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v7 = [v4 errorWithDomain:@"WFWKWebViewCapturerErrorDomain" code:code userInfo:v6];

  return v7;
}

- (void)_webView:(id)view contentRuleListWithIdentifier:(id)identifier performedAction:(id)action forURL:(id)l
{
  v36 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  lCopy = l;
  if (![(WFWKWebViewCapturer *)self didPresentSmartPrompt])
  {
    if ([(WFWKWebViewCapturer *)self userDidAllowLoadingExternalResources])
    {
      coercionOptions = getWFSecurityLogObject();
      if (os_log_type_enabled(coercionOptions, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315138;
        v33 = "[WFWKWebViewCapturer _webView:contentRuleListWithIdentifier:performedAction:forURL:]";
        _os_log_impl(&dword_21E1BD000, coercionOptions, OS_LOG_TYPE_DEBUG, "%s Ignoring WebKit content blocker delegate call because the user has already provided authorization to load external resources.", buf, 0xCu);
      }

      goto LABEL_21;
    }

    if ([actionCopy blockedLoad])
    {
      coercionOptions = [(WFWKWebViewCapturer *)self coercionOptions];
      if ([coercionOptions shouldContinueLoadingWebContentIfExternalResourcesAreDenied])
      {
        v11 = getWFSecurityLogObject();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315138;
          v33 = "[WFWKWebViewCapturer _webView:contentRuleListWithIdentifier:performedAction:forURL:]";
          _os_log_impl(&dword_21E1BD000, v11, OS_LOG_TYPE_DEBUG, "%s Ignoring WebKit content blocker delegate call because the coercion options specify that we should load web content anyway (may result in lossy output).", buf, 0xCu);
        }

        goto LABEL_21;
      }

      [(WFWKWebViewCapturer *)self setDidAttemptToLoadRemoteResources:1];
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __85__WFWKWebViewCapturer__webView_contentRuleListWithIdentifier_performedAction_forURL___block_invoke;
      aBlock[3] = &unk_278349550;
      aBlock[4] = self;
      v26 = _Block_copy(aBlock);
      host = [lCopy host];
      v13 = getWFSecurityLogObject();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        v33 = "[WFWKWebViewCapturer _webView:contentRuleListWithIdentifier:performedAction:forURL:]";
        v34 = 2112;
        v35 = host;
        _os_log_impl(&dword_21E1BD000, v13, OS_LOG_TYPE_DEBUG, "%s WFWKWebViewCapturer prevented loading of external resource at %@, using coercion options to request permission to load.", buf, 0x16u);
      }

      [(WFWKWebViewCapturer *)self setDidPresentSmartPrompt:1];
      [(WFWKWebViewCapturer *)self setPageNavigation:0];
      webView = [(WFWKWebViewCapturer *)self webView];
      v15 = [webView URL];
      v16 = v15;
      if (v15)
      {
        v17 = v15;
      }

      else
      {
        v17 = lCopy;
      }

      v18 = v17;

      webView2 = [(WFWKWebViewCapturer *)self webView];
      v20 = [webView2 URL];
      scheme = [v20 scheme];
      if ([scheme isEqualToString:@"data"])
      {
        isFileURL = [lCopy isFileURL];

        if (isFileURL)
        {
LABEL_20:
          permissionRequestor = [coercionOptions permissionRequestor];
          v27[0] = MEMORY[0x277D85DD0];
          v27[1] = 3221225472;
          v27[2] = __85__WFWKWebViewCapturer__webView_contentRuleListWithIdentifier_performedAction_forURL___block_invoke_125;
          v27[3] = &unk_2783478E0;
          v28 = host;
          selfCopy = self;
          v30 = v26;
          v24 = v26;
          v25 = host;
          [permissionRequestor requestUserConsentToLoadWebContentAtURL:v18 completionHandler:v27];

LABEL_21:
          goto LABEL_22;
        }

        webView2 = v18;
        v18 = lCopy;
      }

      else
      {
      }

      goto LABEL_20;
    }
  }

LABEL_22:
}

void __85__WFWKWebViewCapturer__webView_contentRuleListWithIdentifier_performedAction_forURL___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = getWFSecurityLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v6 = "[WFWKWebViewCapturer _webView:contentRuleListWithIdentifier:performedAction:forURL:]_block_invoke";
    _os_log_impl(&dword_21E1BD000, v2, OS_LOG_TYPE_DEBUG, "%s User authorized loading external resources, reloading with no content list", buf, 0xCu);
  }

  v3 = [*(a1 + 32) webView];
  [v3 stopLoading];

  [*(a1 + 32) setUserDidAllowLoadingExternalResources:1];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __85__WFWKWebViewCapturer__webView_contentRuleListWithIdentifier_performedAction_forURL___block_invoke_121;
  block[3] = &unk_278349550;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __85__WFWKWebViewCapturer__webView_contentRuleListWithIdentifier_performedAction_forURL___block_invoke_125(uint64_t a1, char a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v6 = getWFSecurityLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 32);
      v12 = 136315651;
      v13 = "[WFWKWebViewCapturer _webView:contentRuleListWithIdentifier:performedAction:forURL:]_block_invoke";
      v14 = 2113;
      v15 = v7;
      v16 = 2112;
      v17 = v5;
      _os_log_impl(&dword_21E1BD000, v6, OS_LOG_TYPE_INFO, "%s User denied loading external resource at %{private}@ with error %@, bailing out.", &v12, 0x20u);
    }

    [*(a1 + 40) setUserDidAllowLoadingExternalResources:0];
    v8 = [*(a1 + 40) webView];
    [v8 stopLoading];

    v9 = [*(a1 + 40) completionHandler];

    if (v9)
    {
      v10 = [*(a1 + 40) completionHandler];
      v11 = [objc_opt_class() deniedExternalResourcesLoadError];
      (v10)[2](v10, 0, v11);
    }
  }
}

void __85__WFWKWebViewCapturer__webView_contentRuleListWithIdentifier_performedAction_forURL___block_invoke_121(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = [v2 webResource];
  v3 = [*(a1 + 32) completionHandler];
  [v2 loadWebResource:v4 completionHandler:v3];
}

- (void)webView:(id)view didFailProvisionalNavigation:(id)navigation withError:(id)error
{
  errorCopy = error;
  navigationCopy = navigation;
  pageNavigation = [(WFWKWebViewCapturer *)self pageNavigation];
  v9 = [pageNavigation isEqual:navigationCopy];

  if (v9)
  {
    completionHandler = [(WFWKWebViewCapturer *)self completionHandler];

    if (completionHandler)
    {
      completionHandler2 = [(WFWKWebViewCapturer *)self completionHandler];
      (completionHandler2)[2](completionHandler2, 0, errorCopy);
    }

    [(WFWKWebViewCapturer *)self setCompletionHandler:0];
    [(WFWKWebViewCapturer *)self setWebView:0];
  }
}

- (void)webView:(id)view didFailNavigation:(id)navigation withError:(id)error
{
  errorCopy = error;
  navigationCopy = navigation;
  pageNavigation = [(WFWKWebViewCapturer *)self pageNavigation];
  v9 = [pageNavigation isEqual:navigationCopy];

  if (v9)
  {
    completionHandler = [(WFWKWebViewCapturer *)self completionHandler];

    if (completionHandler)
    {
      completionHandler2 = [(WFWKWebViewCapturer *)self completionHandler];
      (completionHandler2)[2](completionHandler2, 0, errorCopy);
    }

    [(WFWKWebViewCapturer *)self setCompletionHandler:0];
    [(WFWKWebViewCapturer *)self setWebView:0];
  }
}

- (void)webView:(id)view didFinishNavigation:(id)navigation
{
  viewCopy = view;
  navigationCopy = navigation;
  pageNavigation = [(WFWKWebViewCapturer *)self pageNavigation];
  v9 = [pageNavigation isEqual:navigationCopy];

  if (v9)
  {
    v10 = dispatch_time(0, 200000000);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __51__WFWKWebViewCapturer_webView_didFinishNavigation___block_invoke;
    v11[3] = &unk_278347FF0;
    v11[4] = self;
    v12 = viewCopy;
    dispatch_after(v10, MEMORY[0x277D85CD0], v11);
  }
}

void __51__WFWKWebViewCapturer_webView_didFinishNavigation___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) completionHandler];
  if (v2)
  {
    v3 = v2;
    if ([*(a1 + 32) didAttemptToLoadRemoteResources])
    {
      v4 = [*(a1 + 32) userDidAllowLoadingExternalResources];

      if ((v4 & 1) == 0)
      {
        return;
      }
    }

    else
    {
    }

    v5 = [*(a1 + 32) completionHandler];
    v5[2](v5, *(a1 + 40), 0);

    v6 = *(a1 + 32);

    [v6 setCompletionHandler:0];
  }
}

- (void)generateBlockingContentRuleListWithCompletionHandler:(id)handler
{
  v25 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v17 = 0;
  v5 = [MEMORY[0x277CCAAA0] dataWithJSONObject:&unk_282F7BE48 options:0 error:&v17];
  v6 = v17;
  if (v6)
  {
    v7 = getWFSecurityLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315394;
      *&buf[4] = "[WFWKWebViewCapturer generateBlockingContentRuleListWithCompletionHandler:]";
      *&buf[12] = 2112;
      *&buf[14] = v6;
      _os_log_impl(&dword_21E1BD000, v7, OS_LOG_TYPE_FAULT, "%s Failed to serialize JSON content rule list: %@", buf, 0x16u);
    }

    handlerCopy[2](handlerCopy, 0, v6);
  }

  else
  {
    v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v5 encoding:4];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = [WFTemporaryFileManager createTemporaryDirectoryWithFilename:v10];

    if (v11)
    {
      v18 = 0;
      v19 = &v18;
      v20 = 0x2050000000;
      v12 = getWKContentRuleListStoreClass_softClass;
      v21 = getWKContentRuleListStoreClass_softClass;
      if (!getWKContentRuleListStoreClass_softClass)
      {
        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 3221225472;
        *&buf[16] = __getWKContentRuleListStoreClass_block_invoke;
        v23 = &unk_27834A178;
        v24 = &v18;
        __getWKContentRuleListStoreClass_block_invoke(buf);
        v12 = v19[3];
      }

      v13 = v12;
      _Block_object_dispose(&v18, 8);
      v14 = [v12 storeWithURL:v11];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __76__WFWKWebViewCapturer_generateBlockingContentRuleListWithCompletionHandler___block_invoke;
      v15[3] = &unk_2783478B8;
      v16 = handlerCopy;
      [v14 compileContentRuleListForIdentifier:@"com.apple.ContentKit.WFWKWebViewCapturerContentRuleList" encodedContentRuleList:v8 completionHandler:v15];
    }

    else
    {
      v14 = [(WFWKWebViewCapturer *)self errorWithErrorCode:1000];
      handlerCopy[2](handlerCopy, 0, v14);
    }
  }
}

void __76__WFWKWebViewCapturer_generateBlockingContentRuleListWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = getWFSecurityLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      v7 = 136315394;
      v8 = "[WFWKWebViewCapturer generateBlockingContentRuleListWithCompletionHandler:]_block_invoke";
      v9 = 2112;
      v10 = v4;
      _os_log_impl(&dword_21E1BD000, v5, OS_LOG_TYPE_FAULT, "%s Failed to create content rule list: %@", &v7, 0x16u);
    }

    v6 = *(*(a1 + 32) + 16);
  }

  else
  {
    v6 = *(*(a1 + 32) + 16);
  }

  v6();
}

- (void)loadWebResource:(id)resource completionHandler:(id)handler
{
  v36 = *MEMORY[0x277D85DE8];
  resourceCopy = resource;
  handlerCopy = handler;
  v8 = getWFGeneralLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v33 = "[WFWKWebViewCapturer loadWebResource:completionHandler:]";
    v34 = 2112;
    v35 = resourceCopy;
    _os_log_impl(&dword_21E1BD000, v8, OS_LOG_TYPE_DEFAULT, "%s WFWKWebViewCapturer is loading resource: %@", buf, 0x16u);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    file = [resourceCopy file];
    v10 = +[WFApplicationContext sharedContext];
    provider = [v10 provider];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      fileURL = [file fileURL];
      v13 = MEMORY[0x277CBEBC0];
      v14 = NSHomeDirectory();
      v15 = [v13 fileURLWithPath:v14 isDirectory:1];
      v16 = [fileURL wf_isContainedByDirectoryAtURL:v15];

      if (v16)
      {
LABEL_8:

        goto LABEL_9;
      }

      v10 = [file copy];
      [WFWebResource webResourceWithFile:v10];
      resourceCopy = provider = resourceCopy;
    }

    goto LABEL_8;
  }

LABEL_9:
  [(WFWKWebViewCapturer *)self setCompletionHandler:handlerCopy];
  [(WFWKWebViewCapturer *)self setWebResource:resourceCopy];
  userDidAllowLoadingExternalResources = [(WFWKWebViewCapturer *)self userDidAllowLoadingExternalResources];
  v18 = getWFSecurityLogObject();
  v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG);
  if (userDidAllowLoadingExternalResources)
  {
    if (v19)
    {
      *buf = 136315138;
      v33 = "[WFWKWebViewCapturer loadWebResource:completionHandler:]";
      _os_log_impl(&dword_21E1BD000, v18, OS_LOG_TYPE_DEBUG, "%s User allowed loading external resources, removing content block list.", buf, 0xCu);
    }

    webView = [(WFWKWebViewCapturer *)self webView];
    configuration = [webView configuration];
    userContentController = [configuration userContentController];
    [userContentController removeAllContentRuleLists];

    webView2 = [(WFWKWebViewCapturer *)self webView];
    v24 = [resourceCopy loadInWKWebView:webView2];
    [(WFWKWebViewCapturer *)self setPageNavigation:v24];
  }

  else
  {
    if (v19)
    {
      *buf = 136315138;
      v33 = "[WFWKWebViewCapturer loadWebResource:completionHandler:]";
      _os_log_impl(&dword_21E1BD000, v18, OS_LOG_TYPE_DEBUG, "%s User didn't yet allow loading external resources, preventing it.", buf, 0xCu);
    }

    v26 = MEMORY[0x277D85DD0];
    v27 = 3221225472;
    v28 = __57__WFWKWebViewCapturer_loadWebResource_completionHandler___block_invoke;
    v29 = &unk_278347890;
    selfCopy = self;
    v31 = resourceCopy;
    [(WFWKWebViewCapturer *)self generateBlockingContentRuleListWithCompletionHandler:&v26];
  }

  v25 = [(WFWKWebViewCapturer *)self webView:v26];
  objc_setAssociatedObject(v25, &loadWebResource_completionHandler__WFWKWebViewCapturer, self, 1);
}

void __57__WFWKWebViewCapturer_loadWebResource_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [*(a1 + 32) webView];
    v8 = [v7 configuration];
    v9 = [v8 userContentController];
    [v9 addContentRuleList:v5];

    v10 = *(a1 + 40);
    v11 = [*(a1 + 32) webView];
    v12 = [v10 loadInWKWebView:v11];
    [*(a1 + 32) setPageNavigation:v12];
  }

  else
  {
    v13 = getWFWorkflowExecutionLogObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v16 = 136315394;
      v17 = "[WFWKWebViewCapturer loadWebResource:completionHandler:]_block_invoke";
      v18 = 2112;
      v19 = v6;
      _os_log_impl(&dword_21E1BD000, v13, OS_LOG_TYPE_ERROR, "%s Failed to create content rule list: %@", &v16, 0x16u);
    }

    v14 = [*(a1 + 32) completionHandler];
    v15 = [*(a1 + 32) errorWithErrorCode:1001];
    (v14)[2](v14, 0, v15);
  }
}

- (WFWKWebViewCapturer)initWithSize:(CGSize)size configuration:(id)configuration coercionOptions:(id)options
{
  height = size.height;
  width = size.width;
  configurationCopy = configuration;
  optionsCopy = options;
  if (!optionsCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFWKWebViewCapturer.m" lineNumber:81 description:{@"Invalid parameter not satisfying: %@", @"coercionOptions"}];
  }

  v22.receiver = self;
  v22.super_class = WFWKWebViewCapturer;
  v12 = [(WFWKWebViewCapturer *)&v22 init];
  if (v12)
  {
    if (!configurationCopy)
    {
      v28 = 0;
      v29 = &v28;
      v30 = 0x2050000000;
      v13 = getWKWebViewConfigurationClass_softClass_14197;
      v31 = getWKWebViewConfigurationClass_softClass_14197;
      if (!getWKWebViewConfigurationClass_softClass_14197)
      {
        v23 = MEMORY[0x277D85DD0];
        v24 = 3221225472;
        v25 = __getWKWebViewConfigurationClass_block_invoke_14198;
        v26 = &unk_27834A178;
        v27 = &v28;
        __getWKWebViewConfigurationClass_block_invoke_14198(&v23);
        v13 = v29[3];
      }

      v14 = v13;
      _Block_object_dispose(&v28, 8);
      configurationCopy = objc_opt_new();
    }

    v28 = 0;
    v29 = &v28;
    v30 = 0x2050000000;
    v15 = getWKWebViewClass_softClass_14199;
    v31 = getWKWebViewClass_softClass_14199;
    if (!getWKWebViewClass_softClass_14199)
    {
      v23 = MEMORY[0x277D85DD0];
      v24 = 3221225472;
      v25 = __getWKWebViewClass_block_invoke_14200;
      v26 = &unk_27834A178;
      v27 = &v28;
      __getWKWebViewClass_block_invoke_14200(&v23);
      v15 = v29[3];
    }

    v16 = v15;
    _Block_object_dispose(&v28, 8);
    v17 = [[v15 alloc] initWithFrame:configurationCopy configuration:{0.0, 0.0, width, height}];
    webView = v12->_webView;
    v12->_webView = v17;

    [(WKWebView *)v12->_webView setNavigationDelegate:v12];
    objc_storeStrong(&v12->_coercionOptions, options);
    *&v12->_didAttemptToLoadRemoteResources = 0;
    v12->_didPresentSmartPrompt = 0;
    v19 = v12;
  }

  return v12;
}

+ (id)deniedExternalResourcesLoadError
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCA9B8];
  v7 = *MEMORY[0x277CCA450];
  v3 = WFLocalizedString(@"The web content could not be loaded because your privacy settings do not allow this shortcut to load external web content. You can change this in the Privacy tab of the shortcut's settings.");
  v8[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v5 = [v2 errorWithDomain:@"WFWKWebViewCapturerErrorDomain" code:1002 userInfo:v4];

  return v5;
}

+ (void)loadWebResource:(id)resource withSize:(CGSize)size configuration:(id)configuration coercionOptions:(id)options completionHandler:(id)handler
{
  height = size.height;
  width = size.width;
  resourceCopy = resource;
  configurationCopy = configuration;
  optionsCopy = options;
  handlerCopy = handler;
  v23 = MEMORY[0x277D85DD0];
  v24 = 3221225472;
  v25 = __96__WFWKWebViewCapturer_loadWebResource_withSize_configuration_coercionOptions_completionHandler___block_invoke;
  v26 = &unk_278347868;
  v31 = width;
  v32 = height;
  v16 = configurationCopy;
  v27 = v16;
  v17 = optionsCopy;
  v28 = v17;
  v18 = resourceCopy;
  v29 = v18;
  v19 = handlerCopy;
  v30 = v19;
  v20 = _Block_copy(&v23);
  v21 = MEMORY[0x277CCACC8];
  v22 = v20;
  if ([v21 isMainThread])
  {
    v22[2](v22);
  }

  else
  {
    dispatch_async(MEMORY[0x277D85CD0], v22);
  }
}

void __96__WFWKWebViewCapturer_loadWebResource_withSize_configuration_coercionOptions_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [[WFWKWebViewCapturer alloc] initWithSize:*(a1 + 32) configuration:*(a1 + 40) coercionOptions:*(a1 + 64), *(a1 + 72)];
  [(WFWKWebViewCapturer *)v2 loadWebResource:*(a1 + 48) completionHandler:*(a1 + 56)];
}

@end