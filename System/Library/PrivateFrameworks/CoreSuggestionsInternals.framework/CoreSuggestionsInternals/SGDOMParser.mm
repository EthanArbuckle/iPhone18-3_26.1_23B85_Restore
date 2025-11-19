@interface SGDOMParser
- (id)_parseDocument:(id)a3;
- (id)parseHTML:(id)a3;
- (id)webView;
- (void)runJavascriptOnWebView:(id)a3 withCallback:(id)a4;
- (void)webView:(id)a3 didFinishNavigation:(id)a4;
- (void)webViewWebContentProcessDidTerminate:(id)a3;
@end

@implementation SGDOMParser

- (void)runJavascriptOnWebView:(id)a3 withCallback:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = +[SGAsset localeAsset];
  v8 = [v7 filesystemPathForAssetDataRelativePath:@"HTMLPreprocessor.js"];

  if (v8)
  {
    v16 = 0;
    v9 = [MEMORY[0x277CCACA8] stringWithContentsOfFile:v8 encoding:4 error:&v16];
    v10 = v16;
    if (v9)
    {
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __51__SGDOMParser_runJavascriptOnWebView_withCallback___block_invoke;
      v14[3] = &unk_27894E6A8;
      v15 = v6;
      [v5 evaluateJavaScript:v9 completionHandler:v14];
    }

    else
    {
      v12 = sgEventsLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v18 = v10;
        _os_log_error_impl(&dword_231E60000, v12, OS_LOG_TYPE_ERROR, "SGDOMParser: jsContent nil: %@", buf, 0xCu);
      }

      (*(v6 + 2))(v6, MEMORY[0x277CBEC10]);
    }
  }

  else
  {
    v11 = sgEventsLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_231E60000, v11, OS_LOG_TYPE_ERROR, "SGDOMParser: Nil path for HTMLPreprocessor from asset", buf, 2u);
    }

    (*(v6 + 2))(v6, MEMORY[0x277CBEC10]);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __51__SGDOMParser_runJavascriptOnWebView_withCallback___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = sgEventsLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412290;
      v10 = v6;
      _os_log_error_impl(&dword_231E60000, v7, OS_LOG_TYPE_ERROR, "Error evaluating JS: %@", &v9, 0xCu);
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    objc_opt_class();
    objc_opt_isKindOfClass();
    (*(*(a1 + 32) + 16))();
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)webViewWebContentProcessDidTerminate:(id)a3
{
  loadedSem = self->_loadedSem;
  if (loadedSem)
  {
    dispatch_semaphore_signal(loadedSem);
  }
}

- (void)webView:(id)a3 didFinishNavigation:(id)a4
{
  loadedSem = self->_loadedSem;
  if (loadedSem)
  {
    dispatch_semaphore_signal(loadedSem);
  }
}

- (id)_parseDocument:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277D85CD0];
  dispatch_assert_queue_not_V2(MEMORY[0x277D85CD0]);
  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x3032000000;
  v33[3] = __Block_byref_object_copy__18529;
  v33[4] = __Block_byref_object_dispose__18530;
  v34 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__18529;
  v31 = __Block_byref_object_dispose__18530;
  v32 = 0;
  v6 = dispatch_semaphore_create(0);
  loadedSem = self->_loadedSem;
  self->_loadedSem = v6;

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__SGDOMParser__parseDocument___block_invoke;
  block[3] = &unk_2789561A8;
  v26 = v33;
  block[4] = self;
  v8 = v4;
  v25 = v8;
  dispatch_async(v5, block);

  [MEMORY[0x277D425A0] waitForSemaphore:self->_loadedSem];
  if (self->_webView)
  {
    v9 = sgEventsLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_231E60000, v9, OS_LOG_TYPE_DEBUG, "SGDOMParser: Loaded HTML Document", buf, 2u);
    }

    v10 = dispatch_semaphore_create(0);
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __30__SGDOMParser__parseDocument___block_invoke_20;
    v18 = &unk_278956180;
    v19 = self;
    v21 = v33;
    v22 = &v27;
    v11 = v10;
    v20 = v11;
    v12 = MEMORY[0x277D85CD0];
    dispatch_async(MEMORY[0x277D85CD0], &v15);

    [MEMORY[0x277D425A0] waitForSemaphore:{v11, v15, v16, v17, v18, v19}];
    v13 = v28[5];
  }

  else
  {
    v13 = v28[5];
  }

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(v33, 8);

  return v13;
}

id __30__SGDOMParser__parseDocument___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) webView];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(*(*(a1 + 48) + 8) + 40);
  if (v5)
  {
    return [v5 loadHTMLString:*(a1 + 40) baseURL:0];
  }

  v7 = sgLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *v8 = 0;
    _os_log_error_impl(&dword_231E60000, v7, OS_LOG_TYPE_ERROR, "SGDOMParser: Unable to load WebView", v8, 2u);
  }

  return dispatch_semaphore_signal(*(*(a1 + 32) + 8));
}

void __30__SGDOMParser__parseDocument___block_invoke_20(uint64_t a1)
{
  v1 = *(*(*(a1 + 48) + 8) + 40);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __30__SGDOMParser__parseDocument___block_invoke_2;
  v3[3] = &unk_27894E680;
  v5 = *(a1 + 56);
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  [v2 runJavascriptOnWebView:v1 withCallback:v3];
}

void __30__SGDOMParser__parseDocument___block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)webView
{
  webView = self->_webView;
  if (webView)
  {
LABEL_18:
    v10 = webView;
    goto LABEL_19;
  }

  v40 = 0;
  v41 = &v40;
  v42 = 0x2050000000;
  v4 = getWKWebViewConfigurationClass_softClass;
  v43 = getWKWebViewConfigurationClass_softClass;
  if (!getWKWebViewConfigurationClass_softClass)
  {
    v35 = MEMORY[0x277D85DD0];
    v36 = 3221225472;
    v37 = __getWKWebViewConfigurationClass_block_invoke;
    v38 = &unk_278955BF0;
    v39 = &v40;
    __getWKWebViewConfigurationClass_block_invoke(&v35);
    v4 = v41[3];
  }

  v5 = v4;
  _Block_object_dispose(&v40, 8);
  v6 = objc_opt_new();
  if (v6)
  {
    v7 = v6;
    v8 = [getWKWebsiteDataStoreClass() nonPersistentDataStore];
    if (v8)
    {
      [v7 setWebsiteDataStore:v8];
    }

    else
    {
      v11 = sgLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v35) = 0;
        _os_log_error_impl(&dword_231E60000, v11, OS_LOG_TYPE_ERROR, "SGDOMParser: datastore is nil", &v35, 2u);
      }
    }

    v12 = [v7 preferences];
    [v12 setJavaScriptCanOpenWindowsAutomatically:0];

    v13 = [v7 preferences];
    [v13 _setWebAudioEnabled:0];

    v14 = [v7 preferences];
    [v14 _setJavaScriptCanAccessClipboard:0];

    v15 = [v7 preferences];
    [v15 _setStorageBlockingPolicy:2];

    v16 = [v7 preferences];
    [v16 _setScreenCaptureEnabled:0];

    v17 = [v7 preferences];
    [v17 _setPeerConnectionEnabled:0];

    v18 = [v7 preferences];
    [v18 _setMediaDevicesEnabled:0];

    v19 = [v7 preferences];
    [v19 _setDOMPasteAllowed:0];

    v20 = [v7 preferences];
    [v20 _setAVFoundationEnabled:0];

    v21 = [v7 preferences];
    [v21 _setLoadsImagesAutomatically:0];

    v22 = [v7 preferences];
    [v22 _setRemotePlaybackEnabled:0];

    v23 = [v7 preferences];
    [v23 _setWebAudioEnabled:0];

    v24 = [v7 preferences];
    [v24 _setTextAutosizingEnabled:0];

    v25 = [v7 preferences];
    [v25 _setShouldEnableTextAutosizingBoost:0];

    v26 = [getWKWebsiteDataStoreClass() nonPersistentDataStore];
    [v7 setWebsiteDataStore:v26];

    [v7 setAllowsAirPlayForMediaPlayback:0];
    [v7 _setAllowUniversalAccessFromFileURLs:0];
    [v7 _setLegacyEncryptedMediaAPIEnabled:0];
    [v7 _setAllowsJavaScriptMarkup:0];
    [v7 setAllowsInlineMediaPlayback:0];
    [v7 setAllowsPictureInPictureMediaPlayback:0];
    v40 = 0;
    v41 = &v40;
    v42 = 0x2050000000;
    v27 = getWKWebpagePreferencesClass_softClass;
    v43 = getWKWebpagePreferencesClass_softClass;
    if (!getWKWebpagePreferencesClass_softClass)
    {
      v35 = MEMORY[0x277D85DD0];
      v36 = 3221225472;
      v37 = __getWKWebpagePreferencesClass_block_invoke;
      v38 = &unk_278955BF0;
      v39 = &v40;
      __getWKWebpagePreferencesClass_block_invoke(&v35);
      v27 = v41[3];
    }

    v28 = v27;
    _Block_object_dispose(&v40, 8);
    v29 = objc_opt_new();
    [v29 setAllowsContentJavaScript:0];
    [v29 setPreferredContentMode:2];
    [v7 setDefaultWebpagePreferences:v29];
    v40 = 0;
    v41 = &v40;
    v42 = 0x2050000000;
    v30 = getWKWebViewClass_softClass;
    v43 = getWKWebViewClass_softClass;
    if (!getWKWebViewClass_softClass)
    {
      v35 = MEMORY[0x277D85DD0];
      v36 = 3221225472;
      v37 = __getWKWebViewClass_block_invoke;
      v38 = &unk_278955BF0;
      v39 = &v40;
      __getWKWebViewClass_block_invoke(&v35);
      v30 = v41[3];
    }

    v31 = v30;
    _Block_object_dispose(&v40, 8);
    v32 = [[v30 alloc] initWithFrame:v7 configuration:{0.0, 0.0, 1366.0, 768.0}];
    v33 = self->_webView;
    self->_webView = v32;

    [(WKWebView *)self->_webView setNavigationDelegate:self];
    webView = self->_webView;
    goto LABEL_18;
  }

  v9 = sgLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v35) = 0;
    _os_log_error_impl(&dword_231E60000, v9, OS_LOG_TYPE_ERROR, "SGGDOMParser: Unable to load WKWebConfiguration", &v35, 2u);
  }

  v10 = 0;
LABEL_19:

  return v10;
}

- (id)parseHTML:(id)a3
{
  v50 = *MEMORY[0x277D85DE8];
  v30 = a3;
  v5 = self;
  objc_sync_enter(v5);
  objc_storeStrong(&v5->_html, a3);
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = __Block_byref_object_copy__18529;
  v47 = __Block_byref_object_dispose__18530;
  v48 = 0;
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    *buf = 0;
    v40 = buf;
    v41 = 0x2020000000;
    v42 = 0;
    v6 = dispatch_get_global_queue(2, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __25__SGDOMParser_parseHTML___block_invoke;
    block[3] = &unk_278956180;
    v37 = &v43;
    block[4] = v5;
    v36 = v30;
    v38 = buf;
    dispatch_async(v6, block);

    v7 = *MEMORY[0x277CBE640];
    do
    {
      if (v40[24])
      {
        break;
      }

      v8 = [MEMORY[0x277CBEB88] currentRunLoop];
      v9 = [MEMORY[0x277CBEAA8] distantFuture];
      v10 = [v8 runMode:v7 beforeDate:v9];
    }

    while ((v10 & 1) != 0);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v11 = [(SGDOMParser *)v5 _parseDocument:v30];
    v12 = v44[5];
    v44[5] = v11;
  }

  v13 = [v44[5] objectForKeyedSubscript:@"plainText"];
  if (!v13 || ([v44[5] objectForKeyedSubscript:@"taggedCharacterRanges"], v14 = objc_claimAutoreleasedReturnValue(), v15 = v14 == 0, v14, v13, v15))
  {
    v26 = 0;
  }

  else
  {
    v16 = objc_opt_new();
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v17 = [v44[5] objectForKeyedSubscript:@"taggedCharacterRanges"];
    v18 = [v17 countByEnumeratingWithState:&v31 objects:v49 count:16];
    if (v18)
    {
      v19 = *v32;
      while (2)
      {
        v20 = 0;
        do
        {
          if (*v32 != v19)
          {
            objc_enumerationMutation(v17);
          }

          v21 = *(*(&v31 + 1) + 8 * v20);
          v22 = objc_autoreleasePoolPush();
          v23 = [[SGTaggedCharacterRange alloc] initWithDict:v21];
          if (v23)
          {
            [v16 addObject:v23];
          }

          else
          {
            v24 = sgEventsLogHandle();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_231E60000, v24, OS_LOG_TYPE_ERROR, "SGDOMParser: Error parsing tcr tags from js", buf, 2u);
            }
          }

          objc_autoreleasePoolPop(v22);
          if (!v23)
          {
            v26 = 0;
            goto LABEL_25;
          }

          ++v20;
        }

        while (v18 != v20);
        v18 = [v17 countByEnumeratingWithState:&v31 objects:v49 count:16];
        if (v18)
        {
          continue;
        }

        break;
      }
    }

    v25 = [SGDOMParserResult alloc];
    v17 = [v44[5] objectForKeyedSubscript:@"plainText"];
    v26 = [(SGDOMParserResult *)v25 initWithPlainText:v17 taggedCharacterRanges:v16];
LABEL_25:
  }

  _Block_object_dispose(&v43, 8);

  html = v5->_html;
  v5->_html = 0;

  objc_sync_exit(v5);
  v28 = *MEMORY[0x277D85DE8];

  return v26;
}

void __25__SGDOMParser_parseHTML___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _parseDocument:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  *(*(*(a1 + 56) + 8) + 24) = 1;
}

@end