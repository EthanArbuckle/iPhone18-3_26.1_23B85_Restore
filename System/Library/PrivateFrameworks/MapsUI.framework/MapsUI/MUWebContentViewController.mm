@interface MUWebContentViewController
+ (id)resolvedURLForRelativeURL:(id)a3;
- (BOOL)shouldAddLoadingIndicator;
- (MUWebContentViewController)initWithURL:(id)a3;
- (MUWebContentViewController)initWithURL:(id)a3 traits:(id)a4;
- (MUWebContentViewControllerDelegate)delegate;
- (void)_addLoadingSpinner;
- (void)_cancel;
- (void)_finishLoading;
- (void)_getAnalyticsShortSessionSnapshotWithCallbackHandler:(id)a3;
- (void)_invokeAction:(id)a3 callbackHandler:(id)a4;
- (void)_layoutAction:(id)a3 callbackHandler:(id)a4;
- (void)_propogateUserInterfaceStyleToWebModule;
- (void)_removeLoadingSpinner;
- (void)_removeModuleWithArguments:(id)a3 callbackHandler:(id)a4;
- (void)_resetBridge;
- (void)_setHeight:(double)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)_setHeight:(id)a3 callbackHandler:(id)a4;
- (void)_startLoading;
- (void)configureWithHTML:(id)a3 actionManager:(id)a4 initialDefaultHeight:(double)a5;
- (void)dealloc;
- (void)updateActionOverBridge:(id)a3;
- (void)viewDidLoad;
- (void)webBridgeDidConnect:(id)a3;
- (void)webView:(id)a3 decidePolicyForNavigationAction:(id)a4 decisionHandler:(id)a5;
- (void)webView:(id)a3 decidePolicyForNavigationResponse:(id)a4 decisionHandler:(id)a5;
- (void)webView:(id)a3 didCommitNavigation:(id)a4;
- (void)webView:(id)a3 didFailNavigation:(id)a4 withError:(id)a5;
- (void)webView:(id)a3 didFailProvisionalNavigation:(id)a4 withError:(id)a5;
@end

@implementation MUWebContentViewController

- (MUWebContentViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_layoutAction:(id)a3 callbackHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MUWebContentViewController *)self actionManager];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __60__MUWebContentViewController__layoutAction_callbackHandler___block_invoke;
  v11[3] = &unk_1E821A780;
  v12 = v6;
  v13 = v7;
  v9 = v6;
  v10 = v7;
  [v8 layoutActionsUsingArguments:v9 completion:v11];
}

void __60__MUWebContentViewController__layoutAction_callbackHandler___block_invoke(uint64_t a1, int a2)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    if (a2)
    {
      v3 = *(v2 + 16);
      v4 = *(a1 + 40);

      v3(v4, 0, 0);
    }

    else
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"error during layoutAction. Arguments: %@", *(a1 + 32)];
      (*(v2 + 16))(v2, 0, v5);
    }
  }
}

- (void)_invokeAction:(id)a3 callbackHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MUWebContentViewController *)self actionManager];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __60__MUWebContentViewController__invokeAction_callbackHandler___block_invoke;
  v11[3] = &unk_1E821A780;
  v12 = v6;
  v13 = v7;
  v9 = v6;
  v10 = v7;
  [v8 performActionUsingArguments:v9 contextMenu:0 completion:v11];
}

void __60__MUWebContentViewController__invokeAction_callbackHandler___block_invoke(uint64_t a1, int a2)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    if (a2)
    {
      v3 = *(v2 + 16);
      v4 = *(a1 + 40);

      v3(v4, 0, 0);
    }

    else
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"error performing actions from arguments: %@", *(a1 + 32)];
      (*(v2 + 16))(v2, 0, v5);
    }
  }
}

- (void)_removeModuleWithArguments:(id)a3 callbackHandler:(id)a4
{
  v8 = a4;
  v6 = a3;
  v7 = [(MUWebContentViewController *)self delegate];
  [v7 removeWebContentViewController:self arguments:v6];

  (*(v8 + 2))(v8, 0, 0);
}

- (void)_getAnalyticsShortSessionSnapshotWithCallbackHandler:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E69A2710] sharedInstance];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __83__MUWebContentViewController__getAnalyticsShortSessionSnapshotWithCallbackHandler___block_invoke;
  v6[3] = &unk_1E821A758;
  v7 = v3;
  v5 = v3;
  [v4 shortSessionValues:v6];
}

void __83__MUWebContentViewController__getAnalyticsShortSessionSnapshotWithCallbackHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7)
{
  v24[3] = *MEMORY[0x1E69E9840];
  v12 = objc_alloc(MEMORY[0x1E695DF90]);
  v23[0] = @"sessionID";
  v21[0] = @"high";
  v13 = [MEMORY[0x1E69A2710] highBytesStringFromSession:{a2, a3}];
  v21[1] = @"low";
  v22[0] = v13;
  v14 = [MEMORY[0x1E69A2710] lowBytesStringFromSession:{a2, a3}];
  v22[1] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:2];
  v24[0] = v15;
  v23[1] = @"sequenceNumber";
  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a4];
  v24[1] = v16;
  v23[2] = @"relativeTimestamp";
  v17 = [MEMORY[0x1E696AD98] numberWithDouble:a7];
  v24[2] = v17;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:3];
  v19 = [v12 initWithDictionary:v18];

  (*(*(a1 + 32) + 16))();
  v20 = *MEMORY[0x1E69E9840];
}

- (void)_setHeight:(id)a3 callbackHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 objectForKeyedSubscript:@"height"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_5;
  }

  v9 = [v6 objectForKeyedSubscript:@"animated"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
LABEL_5:
    v7[2](v7, 0, @"invalid arguments");
    goto LABEL_6;
  }

  v11 = [v6 objectForKeyedSubscript:@"height"];
  [v11 doubleValue];
  v13 = v12;

  v14 = [v6 objectForKeyedSubscript:@"animated"];
  v15 = [v14 BOOLValue];

  v16 = *MEMORY[0x1E696F168];
  v17 = *(MEMORY[0x1E696F168] + 8);
  GEOConfigGetDouble();
  v19 = fmax(fmin(v13, v18), 0.0);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __57__MUWebContentViewController__setHeight_callbackHandler___block_invoke;
  v20[3] = &unk_1E821A730;
  v21 = v7;
  [(MUWebContentViewController *)self _setHeight:v15 animated:v20 completion:v19];

LABEL_6:
}

- (void)_setHeight:(double)a3 animated:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v8 = a5;
  [(NSLayoutConstraint *)self->_heightConstraint constant];
  if (v9 == a3)
  {
    if (v8)
    {
      v8[2](v8, 1);
    }
  }

  else
  {
    v10 = [(MUWebContentViewController *)self delegate];
    v11 = [v10 isWebContentViewControllerParentPlacecardLoading:self];

    objc_initWeak(&location, self);
    v12 = [(MUWebContentViewController *)self delegate];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __61__MUWebContentViewController__setHeight_animated_completion___block_invoke;
    v15[3] = &unk_1E821A708;
    objc_copyWeak(v16, &location);
    v16[1] = *&a3;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __61__MUWebContentViewController__setHeight_animated_completion___block_invoke_74;
    v13[3] = &unk_1E821A730;
    v14 = v8;
    [v12 webContentViewController:self performHeightChangeWithBlock:v15 animated:v5 & (v11 ^ 1u) completion:v13];

    objc_destroyWeak(v16);
    objc_destroyWeak(&location);
  }
}

void __61__MUWebContentViewController__setHeight_animated_completion___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = MUGetMUWebContentLog_22854();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = *(a1 + 40);
      v6 = 134217984;
      v7 = v4;
      _os_log_impl(&dword_1C5620000, v3, OS_LOG_TYPE_ERROR, "Setting web view height: %f", &v6, 0xCu);
    }

    [WeakRetained[124] setConstant:*(a1 + 40)];
  }

  v5 = *MEMORY[0x1E69E9840];
}

uint64_t __61__MUWebContentViewController__setHeight_animated_completion___block_invoke_74(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_propogateUserInterfaceStyleToWebModule
{
  v9[1] = *MEMORY[0x1E69E9840];
  if ([(MUWebBridge *)self->_bridge connectionState]== 1)
  {
    bridge = self->_bridge;
    v4 = [(MUWebContentViewController *)self mk_theme];
    v5 = [v4 javaScriptName];
    v6 = v5;
    if (!v5)
    {
      v6 = [MEMORY[0x1E695DFB0] null];
    }

    v9[0] = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
    [(MUWebBridge *)bridge callMethod:@"setTheme" arguments:v7 callbackHandler:0];

    if (!v5)
    {
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)webBridgeDidConnect:(id)a3
{
  v29[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_initWeak(&location, self);
  bridge = self->_bridge;
  v6 = [(MUWebContentViewController *)self mk_theme];
  v7 = [v6 javaScriptName];
  v8 = v7;
  if (!v7)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v29[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
  [(MUWebBridge *)bridge callMethod:@"setTheme" arguments:v9 callbackHandler:0];

  if (!v7)
  {
  }

  if (MapsFeature_IsEnabled_PlaceCardShowcase())
  {
    v10 = [(MUWebContentViewController *)self actionManager];
    v11 = [v10 supportedPlaceEnrichmentActions];

    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if ([v11 count])
    {
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __50__MUWebContentViewController_webBridgeDidConnect___block_invoke;
      v25[3] = &unk_1E821A698;
      v25[4] = self;
      v13 = v12;
      v26 = v13;
      [v11 enumerateObjectsUsingBlock:v25];
      v14 = objc_alloc(MEMORY[0x1E695DEC8]);
      v15 = objc_alloc(MEMORY[0x1E695DF20]);
      v16 = [v13 copy];
      v28 = v16;
      v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v28 count:1];
      v18 = [v15 initWithObjects:v17 forKeys:&unk_1F450E3B0];
      v19 = [v14 initWithObjects:{v18, 0}];

      v20 = [v19 copy];
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  v21 = self->_bridge;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __50__MUWebContentViewController_webBridgeDidConnect___block_invoke_2;
  v23[3] = &unk_1E821A6E0;
  objc_copyWeak(&v24, &location);
  [(MUWebBridge *)v21 callMethod:@"initializeModule" arguments:v20 callbackHandler:v23];
  objc_destroyWeak(&v24);

  objc_destroyWeak(&location);
  v22 = *MEMORY[0x1E69E9840];
}

void __50__MUWebContentViewController_webBridgeDidConnect___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 actionManager];
  v7 = [v5 dictionaryForAction:v4];

  v6 = v7;
  if (v7)
  {
    [*(a1 + 40) addObject:v7];
    v6 = v7;
  }
}

void __50__MUWebContentViewController_webBridgeDidConnect___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = MUGetMUWebContentLog_22854();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = v4;
      _os_log_impl(&dword_1C5620000, v5, OS_LOG_TYPE_ERROR, "Error initializing module: %@", &v8, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _cancel];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _finishLoading];
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)webView:(id)a3 decidePolicyForNavigationAction:(id)a4 decisionHandler:(id)a5
{
  v20 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = MUGetMUWebContentLog_22854();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v16 = 134218242;
    v17 = v7;
    v18 = 2112;
    v19 = v8;
    _os_log_impl(&dword_1C5620000, v10, OS_LOG_TYPE_DEBUG, "<WKWebView: %p> decide policy for action %@", &v16, 0x16u);
  }

  if ([v8 navigationType])
  {
    v11 = 1;
  }

  else
  {
    v12 = [MEMORY[0x1E696F3B8] sharedInstance];
    v13 = [v8 request];
    v14 = [v13 URL];
    [v12 openURL:v14 completionHandler:0];

    v11 = 0;
  }

  v9[2](v9, v11);

  v15 = *MEMORY[0x1E69E9840];
}

- (void)webView:(id)a3 decidePolicyForNavigationResponse:(id)a4 decisionHandler:(id)a5
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = MUGetMUWebContentLog_22854();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v15 = 134218242;
    v16 = v7;
    v17 = 2112;
    v18 = v8;
    _os_log_impl(&dword_1C5620000, v10, OS_LOG_TYPE_DEBUG, "<WKWebView: %p> decide policy for response %@", &v15, 0x16u);
  }

  if ([v8 isForMainFrame])
  {
    v11 = [v8 response];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v13 = [v8 response];
      if (([v13 statusCode] - 200) >= 0x64)
      {
        v9[2](v9, 0);

        goto LABEL_8;
      }
    }
  }

  v9[2](v9, 1);
LABEL_8:

  v14 = *MEMORY[0x1E69E9840];
}

- (void)webView:(id)a3 didFailProvisionalNavigation:(id)a4 withError:(id)a5
{
  v16 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  if (self->_currentWebNavigation == a4)
  {
    v10 = MUGetMUWebContentLog_22854();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = 134218242;
      v13 = v8;
      v14 = 2112;
      v15 = v9;
      _os_log_impl(&dword_1C5620000, v10, OS_LOG_TYPE_ERROR, "<WKWebView: %p> failed to load content with error %@", &v12, 0x16u);
    }

    [(MUWebContentViewController *)self _cancel];
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)webView:(id)a3 didFailNavigation:(id)a4 withError:(id)a5
{
  v16 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  if (self->_currentWebNavigation == a4)
  {
    v10 = MUGetMUWebContentLog_22854();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = 134218242;
      v13 = v8;
      v14 = 2112;
      v15 = v9;
      _os_log_impl(&dword_1C5620000, v10, OS_LOG_TYPE_ERROR, "<WKWebView: %p> failed to load content with error %@", &v12, 0x16u);
    }

    [(MUWebContentViewController *)self _cancel];
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)webView:(id)a3 didCommitNavigation:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = MUGetMUWebContentLog_22854();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [v6 URL];
    v12 = 134218242;
    v13 = v6;
    v14 = 2112;
    v15 = v9;
    _os_log_impl(&dword_1C5620000, v8, OS_LOG_TYPE_INFO, "<WKWebView: %p> starting to load content with at url %@", &v12, 0x16u);
  }

  currentWebNavigation = self->_currentWebNavigation;
  self->_currentWebNavigation = v7;

  [(MUWebContentViewController *)self _startLoading];
  [(MUWebContentViewController *)self _resetBridge];

  v11 = *MEMORY[0x1E69E9840];
}

- (void)updateActionOverBridge:(id)a3
{
  v4 = a3;
  if (MapsFeature_IsEnabled_PlaceCardShowcase())
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if ([v4 count])
    {
      v6 = MEMORY[0x1E69E9820];
      v7 = 3221225472;
      v8 = __53__MUWebContentViewController_updateActionOverBridge___block_invoke;
      v9 = &unk_1E821A698;
      v10 = self;
      v11 = v5;
      [v4 enumerateObjectsUsingBlock:&v6];
    }

    [(MUWebBridge *)self->_bridge callMethod:@"updateActions" arguments:v5 callbackHandler:&__block_literal_global_22887, v6, v7, v8, v9, v10];
  }
}

void __53__MUWebContentViewController_updateActionOverBridge___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 actionManager];
  v7 = [v5 dictionaryForAction:v4];

  v6 = v7;
  if (v7)
  {
    [*(a1 + 40) addObject:v7];
    v6 = v7;
  }
}

void __53__MUWebContentViewController_updateActionOverBridge___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (v3)
  {
    v4 = MUGetMUWebContentLog_22854();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 138412290;
      v7 = v3;
      _os_log_impl(&dword_1C5620000, v4, OS_LOG_TYPE_ERROR, "Error updating actions: %@", &v6, 0xCu);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)_resetBridge
{
  bridge = self->_bridge;
  if (bridge)
  {
    [(MUWebBridge *)bridge closeConnection];
  }

  v4 = [[MUWebBridge alloc] initWithWebViewFactoryItem:self->_webViewFactoryItem];
  v5 = self->_bridge;
  self->_bridge = v4;

  [(MUWebBridge *)self->_bridge setDelegate:self];
  objc_initWeak(&location, self);
  v6 = self->_bridge;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __42__MUWebContentViewController__resetBridge__block_invoke;
  v19[3] = &unk_1E821A670;
  objc_copyWeak(&v20, &location);
  [(MUWebBridge *)v6 addCallableMethod:@"setHeight" handler:v19];
  v7 = self->_bridge;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __42__MUWebContentViewController__resetBridge__block_invoke_2;
  v17[3] = &unk_1E821A670;
  objc_copyWeak(&v18, &location);
  [(MUWebBridge *)v7 addCallableMethod:@"getAnalyticsShortSessionSnapshot" handler:v17];
  v8 = self->_bridge;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __42__MUWebContentViewController__resetBridge__block_invoke_3;
  v15[3] = &unk_1E821A670;
  objc_copyWeak(&v16, &location);
  [(MUWebBridge *)v8 addCallableMethod:@"removeModule" handler:v15];
  if (MapsFeature_IsEnabled_PlaceCardShowcase())
  {
    v9 = self->_bridge;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __42__MUWebContentViewController__resetBridge__block_invoke_4;
    v13[3] = &unk_1E821A670;
    objc_copyWeak(&v14, &location);
    [(MUWebBridge *)v9 addCallableMethod:@"invokeAction" handler:v13];
    v10 = self->_bridge;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __42__MUWebContentViewController__resetBridge__block_invoke_5;
    v11[3] = &unk_1E821A670;
    objc_copyWeak(&v12, &location);
    [(MUWebBridge *)v10 addCallableMethod:@"layoutActions" handler:v11];
    objc_destroyWeak(&v12);
    objc_destroyWeak(&v14);
  }

  objc_destroyWeak(&v16);
  objc_destroyWeak(&v18);
  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

void __42__MUWebContentViewController__resetBridge__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setHeight:v6 callbackHandler:v5];
}

void __42__MUWebContentViewController__resetBridge__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _getAnalyticsShortSessionSnapshotWithCallbackHandler:v4];
}

void __42__MUWebContentViewController__resetBridge__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _removeModuleWithArguments:v6 callbackHandler:v5];
}

void __42__MUWebContentViewController__resetBridge__block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _invokeAction:v6 callbackHandler:v5];
}

void __42__MUWebContentViewController__resetBridge__block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _layoutAction:v6 callbackHandler:v5];
}

- (BOOL)shouldAddLoadingIndicator
{
  if (self->_url)
  {
    return 1;
  }

  v3 = *MEMORY[0x1E696F140];
  v4 = *(MEMORY[0x1E696F140] + 8);
  return GEOConfigGetBOOL();
}

- (void)_removeLoadingSpinner
{
  activityIndicatorView = self->_activityIndicatorView;
  if (activityIndicatorView)
  {
    [(UIActivityIndicatorView *)activityIndicatorView removeFromSuperview];
    v4 = self->_activityIndicatorView;
    self->_activityIndicatorView = 0;
  }
}

- (void)_addLoadingSpinner
{
  v19[2] = *MEMORY[0x1E69E9840];
  if (!self->_activityIndicatorView && [(MUWebContentViewController *)self shouldAddLoadingIndicator])
  {
    v3 = objc_alloc(MEMORY[0x1E69DC638]);
    v4 = [v3 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    activityIndicatorView = self->_activityIndicatorView;
    self->_activityIndicatorView = v4;

    [(UIActivityIndicatorView *)self->_activityIndicatorView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIActivityIndicatorView *)self->_activityIndicatorView setActivityIndicatorViewStyle:100];
    [(UIActivityIndicatorView *)self->_activityIndicatorView startAnimating];
    v6 = self->_activityIndicatorView;
    v7 = [(MUWebContentViewController *)self view];
    [v7 _mapkit_insertSubviewAboveAllOtherSubviews:v6];

    v18 = MEMORY[0x1E696ACD8];
    v8 = [(UIActivityIndicatorView *)v6 centerXAnchor];
    v9 = [(MUWebContentViewController *)self view];
    v10 = [v9 centerXAnchor];
    v11 = [v8 constraintEqualToAnchor:v10];
    v19[0] = v11;
    v12 = [(UIActivityIndicatorView *)v6 centerYAnchor];
    v13 = [(MUWebContentViewController *)self view];
    v14 = [v13 centerYAnchor];
    v15 = [v12 constraintEqualToAnchor:v14];
    v19[1] = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
    [v18 activateConstraints:v16];
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)_cancel
{
  [(WKWebView *)self->_webView stopLoading];
  [(MUWebBridge *)self->_bridge closeConnection];
  if (self->_loading)
  {
    self->_loading = 0;
    [(MUWebContentViewController *)self _removeLoadingSpinner];
    v3 = [(MUWebContentViewController *)self delegate];
    [v3 webContentViewControllerDidStopLoading:self];
  }

  v4 = [(MUWebContentViewController *)self delegate];
  [v4 removeWebContentViewController:self arguments:0];
}

- (void)_finishLoading
{
  if (self->_loading)
  {
    [(WKWebView *)self->_webView alpha];
    if (v3 != 1.0)
    {
      v4 = [(MUWebContentViewController *)self delegate];
      v5 = [v4 isWebContentViewControllerParentPlacecardLoading:self];

      if (v5)
      {
        [(WKWebView *)self->_webView setAlpha:1.0];
      }

      else
      {
        [MEMORY[0x1E6979518] begin];
        [MEMORY[0x1E6979518] setAnimationDuration:*MEMORY[0x1E696F4D8]];
        v6 = MEMORY[0x1E6979518];
        v7 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979ED0]];
        [v6 setAnimationTimingFunction:v7];

        [(WKWebView *)self->_webView setAlpha:1.0];
        [MEMORY[0x1E6979518] commit];
      }
    }

    self->_loading = 0;
    [(MUWebContentViewController *)self _removeLoadingSpinner];
    v8 = [(MUWebContentViewController *)self delegate];
    [v8 webContentViewControllerDidStopLoading:self];

    v9 = [MEMORY[0x1E696AD88] defaultCenter];
    [v9 postNotificationName:@"MUWebContentViewControllerDidFinishLoadingNotification" object:self];
  }
}

- (void)_startLoading
{
  self->_loading = 1;
  [(WKWebView *)self->_webView setAlpha:0.0];

  [(MUWebContentViewController *)self _addLoadingSpinner];
}

- (void)viewDidLoad
{
  v46[5] = *MEMORY[0x1E69E9840];
  v45.receiver = self;
  v45.super_class = MUWebContentViewController;
  [(MUWebContentViewController *)&v45 viewDidLoad];
  v3 = MEMORY[0x1E696ACD8];
  v4 = [(MUWebContentViewController *)self view];
  v5 = [v3 constraintWithItem:v4 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:self->_defaultHeight];
  heightConstraint = self->_heightConstraint;
  self->_heightConstraint = v5;

  v7 = [[MUWebBridgeConfiguration alloc] initWithNativeControllerName:@"placeCardNativeController" webControllerName:@"placeCardWebController" bridgeVersion:@"1.0"];
  v8 = +[MUWebViewFactory sharedWebViewFactory];
  v44 = v7;
  v9 = [v8 dequeueItemWithBridgeConfiguration:v7];
  webViewFactoryItem = self->_webViewFactoryItem;
  self->_webViewFactoryItem = v9;

  v11 = [(MUWebViewFactoryItem *)self->_webViewFactoryItem webView];
  webView = self->_webView;
  self->_webView = v11;

  [(WKWebView *)self->_webView setNavigationDelegate:self];
  [(WKWebView *)self->_webView setUIDelegate:self];
  [(WKWebView *)self->_webView setAccessibilityIdentifier:@"MUWebContentView"];
  v13 = [(MUWebContentViewController *)self view];
  [v13 addSubview:self->_webView];

  v36 = MEMORY[0x1E696ACD8];
  v42 = [(WKWebView *)self->_webView leadingAnchor];
  v43 = [(MUWebContentViewController *)self view];
  v41 = [v43 leadingAnchor];
  v40 = [v42 constraintEqualToAnchor:v41];
  v46[0] = v40;
  v38 = [(WKWebView *)self->_webView trailingAnchor];
  v39 = [(MUWebContentViewController *)self view];
  v37 = [v39 trailingAnchor];
  v35 = [v38 constraintEqualToAnchor:v37];
  v46[1] = v35;
  v34 = [(WKWebView *)self->_webView topAnchor];
  v14 = [(MUWebContentViewController *)self view];
  v15 = [v14 topAnchor];
  v16 = [v34 constraintEqualToAnchor:v15];
  v46[2] = v16;
  v17 = [(WKWebView *)self->_webView bottomAnchor];
  v18 = [(MUWebContentViewController *)self view];
  v19 = [v18 bottomAnchor];
  v20 = [v17 constraintEqualToAnchor:v19];
  v21 = self->_heightConstraint;
  v46[3] = v20;
  v46[4] = v21;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:5];
  [v36 activateConstraints:v22];

  if (self->_html)
  {
    v23 = GEOGetURL();
    v24 = [(MUWebContentTraits *)self->_webContentTraits queryItems];
    v25 = v44;
    v26 = [MUWebBridge URLByAddingConfiguration:v44 toURL:v23 additionalQueryItems:v24];

    v27 = [(WKWebView *)self->_webView loadHTMLString:self->_html baseURL:v26];
    currentWebNavigation = self->_currentWebNavigation;
    self->_currentWebNavigation = v27;
LABEL_3:

    goto LABEL_4;
  }

  v25 = v44;
  if (self->_url)
  {
    resolvedURL = self->_resolvedURL;
    if (resolvedURL)
    {
      v31 = [(MUWebContentTraits *)self->_webContentTraits queryItems];
      v26 = [MUWebBridge URLByAddingConfiguration:v44 toURL:resolvedURL additionalQueryItems:v31];

      currentWebNavigation = [MEMORY[0x1E696AF68] requestWithURL:v26];
      v32 = [(WKWebView *)self->_webView loadRequest:currentWebNavigation];
      v33 = self->_currentWebNavigation;
      self->_currentWebNavigation = v32;

      goto LABEL_3;
    }
  }

LABEL_4:
  [(MUWebContentViewController *)self _startLoading];

  v29 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  if (self->_webViewFactoryItem)
  {
    v3 = +[MUWebViewFactory sharedWebViewFactory];
    [v3 requeueItem:self->_webViewFactoryItem];
  }

  v4.receiver = self;
  v4.super_class = MUWebContentViewController;
  [(MUWebContentViewController *)&v4 dealloc];
}

- (MUWebContentViewController)initWithURL:(id)a3 traits:(id)a4
{
  v26[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = [objc_opt_class() resolvedURLForRelativeURL:v7];
  if (!v9)
  {
    goto LABEL_7;
  }

  v10 = +[MUWebContentBlocker sharedBlocker];
  v11 = [v10 shouldBlockLoadingOfURL:v9];

  if (v11)
  {
    goto LABEL_7;
  }

  v12 = [MEMORY[0x1E69A22B0] sharedNetworkObserver];
  v13 = [v12 isNetworkReachable];

  if (v13)
  {
    v25.receiver = self;
    v25.super_class = MUWebContentViewController;
    v14 = [(MUWebContentViewController *)&v25 init];
    v15 = v14;
    if (v14)
    {
      objc_storeStrong(&v14->_url, a3);
      objc_storeStrong(&v15->_resolvedURL, v9);
      objc_storeStrong(&v15->_webContentTraits, a4);
      v16 = *MEMORY[0x1E696F160];
      v17 = *(MEMORY[0x1E696F160] + 8);
      GEOConfigGetDouble();
      v15->_defaultHeight = v18;
      v19 = objc_opt_self();
      v26[0] = v19;
      v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
      v21 = [(MUWebContentViewController *)v15 registerForTraitChanges:v20 withAction:sel__propogateUserInterfaceStyleToWebModule];
    }

    self = v15;
    v22 = self;
  }

  else
  {
LABEL_7:
    v22 = 0;
  }

  v23 = *MEMORY[0x1E69E9840];
  return v22;
}

- (MUWebContentViewController)initWithURL:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [(MUWebContentViewController *)self initWithURL:v4 traits:v5];

  return v6;
}

- (void)configureWithHTML:(id)a3 actionManager:(id)a4 initialDefaultHeight:(double)a5
{
  v14 = a3;
  v9 = a4;
  v10 = [MEMORY[0x1E69A22B0] sharedNetworkObserver];
  if ([v10 isNetworkReachable])
  {
    IsEnabled_PlaceCardShowcase = MapsFeature_IsEnabled_PlaceCardShowcase();

    if (IsEnabled_PlaceCardShowcase)
    {
      objc_storeStrong(&self->_html, a3);
      objc_storeStrong(&self->_actionManager, a4);
      v12 = objc_opt_new();
      webContentTraits = self->_webContentTraits;
      self->_webContentTraits = v12;

      self->_defaultHeight = a5;
    }
  }

  else
  {
  }
}

+ (id)resolvedURLForRelativeURL:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = GEOGetURL();
    v5 = MEMORY[0x1E695DFF8];
    v6 = [v3 relativeString];

    v7 = [v5 URLWithString:v6 relativeToURL:v4];
    v8 = [v7 absoluteURL];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end