@interface IKAppContext
- (void)_evaluateFoundationWithDeviceConfig:(id)a3 addPrivateInterfaces:(BOOL)a4;
- (void)evaluateFoundationJS;
- (void)exitAppWithOptions:(id)a3;
- (void)launchAppWithOptions:(id)a3;
- (void)resetFoundationJS;
@end

@implementation IKAppContext

- (void)evaluateFoundationJS
{
  kdebug_trace();
  v3 = [(IKAppContext *)self jsContext];
  v65 = 0;
  v66 = &v65;
  v67 = 0x3032000000;
  v68 = __Block_byref_object_copy__0;
  v69 = __Block_byref_object_dispose__0;
  v70 = 0;
  v59 = 0;
  v60 = &v59;
  v61 = 0x3032000000;
  v62 = __Block_byref_object_copy__0;
  v63 = __Block_byref_object_dispose__0;
  v64 = 0;
  v53 = 0;
  v54 = &v53;
  v55 = 0x3032000000;
  v56 = __Block_byref_object_copy__0;
  v57 = __Block_byref_object_dispose__0;
  v58 = 0;
  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = __Block_byref_object_copy__0;
  v51 = __Block_byref_object_dispose__0;
  v52 = 0;
  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  v46 = +[IKUtilites isAppTrusted];
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __40__IKAppContext_JS__evaluateFoundationJS__block_invoke;
  v42[3] = &unk_279799050;
  v42[4] = self;
  v42[5] = &v65;
  v42[6] = &v59;
  v42[7] = &v53;
  v42[8] = &v47;
  v42[9] = &v43;
  [(IKAppContext *)self evaluateDelegateBlockSync:v42];
  v4 = [IKJSDevice alloc];
  v5 = [(IKJSDevice *)v4 initWithAppContext:self deviceConfig:v66[5]];
  if (*(v44 + 24) == 1)
  {
    v6 = [MEMORY[0x277CD4658] valueWithObject:v5 inContext:v3];
    v7 = [MEMORY[0x277D7FCE0] sharedInstance];
    v8 = [v7 guid];
    [v6 setObject:v8 forKeyedSubscript:@"guid"];
  }

  [v3 setObject:v5 forKeyedSubscript:@"Device"];
  v9 = [IKJSDeviceSettings alloc];
  v10 = [(IKJSDeviceSettings *)v9 initWithAppContext:self deviceConfig:v66[5]];
  [v3 setObject:v10 forKeyedSubscript:@"Settings"];

  v11 = [(IKJSObject *)[IKDOMImplementationRegistry alloc] initWithAppContext:self];
  [v3 setObject:v11 forKeyedSubscript:@"DOMImplementationRegistry"];

  v12 = [(IKJSObject *)[IKJSApplication alloc] initWithAppContext:self];
  [v3 setObject:v12 forKeyedSubscript:@"App"];

  if (v60[5])
  {
    v13 = [IKJSNavigationDocument alloc];
    v14 = [(IKJSNavigationDocument *)v13 initWithAppContext:self navigationController:v60[5]];
    [v3 setObject:v14 forKeyedSubscript:@"navigationDocument"];
  }

  if (v54[5])
  {
    v15 = [IKJSNavigationDocument alloc];
    v16 = [(IKJSNavigationDocument *)v15 initWithAppContext:self navigationController:v54[5]];
    [v3 setObject:v16 forKeyedSubscript:@"modal"];
  }

  if (v48[5])
  {
    v17 = [IKJSTabBar alloc];
    v18 = [(IKJSTabBar *)v17 initWithAppContext:self appTabBar:v48[5]];
    [v3 setObject:v18 forKeyedSubscript:@"tabBar"];
  }

  v19 = [[IKJSStorage alloc] initWithAppContext:self appStorage:0];
  [v3 setObject:v19 forKeyedSubscript:@"sessionStorage"];

  v20 = [(IKAppContext *)self app];
  v21 = [v20 localStorage];

  if (v21)
  {
    v22 = [[IKJSStorage alloc] initWithAppContext:self appStorage:v21];
    [v3 setObject:v22 forKeyedSubscript:@"localStorage"];
  }

  v23 = [(IKAppContext *)self app];
  v24 = [v23 vendorStorage];

  if (v24)
  {
    v25 = [[IKJSStorage alloc] initWithAppContext:self appStorage:v24];
    [v3 setObject:v25 forKeyedSubscript:@"vendorStorage"];
  }

  v26 = [(IKAppContext *)self app];
  v27 = objc_opt_respondsToSelector();

  if (v27)
  {
    v28 = [(IKAppContext *)self app];
    v29 = [v28 userDefaultsStorage];

    if (v29)
    {
      v30 = [[IKJSUserDefaults alloc] initWithAppContext:self userDefaultsStorage:v29];
      [v3 setObject:v30 forKeyedSubscript:@"userDefaults"];
    }
  }

  v31 = [(IKJSObject *)[IKJSApplication alloc] initWithAppContext:self];
  [(IKAppContext *)self setJsApp:v31];

  v32 = [(IKAppContext *)self jsApp];
  [v3 setObject:v32 forKeyedSubscript:@"App"];

  v33 = [[IKJSWeakMap alloc] initWithAppContext:self];
  [(IKAppContext *)self setJsWeakMap:v33];

  [v3 setObject:objc_opt_class() forKeyedSubscript:@"CharacterData"];
  [v3 setObject:objc_opt_class() forKeyedSubscript:@"Comment"];
  [v3 setObject:objc_opt_class() forKeyedSubscript:@"CustomEvent"];
  [v3 setObject:objc_opt_class() forKeyedSubscript:@"Document"];
  [v3 setObject:objc_opt_class() forKeyedSubscript:@"DocumentFragment"];
  [v3 setObject:objc_opt_class() forKeyedSubscript:@"DOMException"];
  [v3 setObject:objc_opt_class() forKeyedSubscript:@"DOMImplementation"];
  [v3 setObject:objc_opt_class() forKeyedSubscript:@"DOMParser"];
  [v3 setObject:objc_opt_class() forKeyedSubscript:@"Element"];
  [v3 setObject:objc_opt_class() forKeyedSubscript:@"Event"];
  [v3 setObject:objc_opt_class() forKeyedSubscript:@"HTMLCollection"];
  [v3 setObject:objc_opt_class() forKeyedSubscript:@"Impression"];
  [v3 setObject:objc_opt_class() forKeyedSubscript:@"MediaItem"];
  v34 = objc_opt_new();
  [v3 setObject:v34 forKeyedSubscript:@"MediaItemChangeReason"];

  [v3 setObject:objc_opt_class() forKeyedSubscript:@"NamedNodeMap"];
  [v3 setObject:objc_opt_class() forKeyedSubscript:@"Node"];
  [v3 setObject:objc_opt_class() forKeyedSubscript:@"NodeList"];
  [v3 setObject:objc_opt_class() forKeyedSubscript:@"Player"];
  [v3 setObject:objc_opt_class() forKeyedSubscript:@"Playlist"];
  v35 = objc_opt_new();
  [v3 setObject:v35 forKeyedSubscript:@"PlaylistEndAction"];

  v36 = objc_opt_new();
  [v3 setObject:v36 forKeyedSubscript:@"PlaylistRepeatMode"];

  [v3 setObject:objc_opt_class() forKeyedSubscript:@"Text"];
  [v3 setObject:objc_opt_class() forKeyedSubscript:@"XMLHttpRequest"];
  [v3 setObject:objc_opt_class() forKeyedSubscript:@"XMLSerializer"];
  [v3 setObject:objc_opt_class() forKeyedSubscript:@"XPathException"];
  [v3 setObject:objc_opt_class() forKeyedSubscript:@"XPathExpression"];
  [v3 setObject:objc_opt_class() forKeyedSubscript:@"XPathResult"];
  [v3 setObject:objc_opt_class() forKeyedSubscript:@"Browser"];
  [v3 setObject:&__block_literal_global forKeyedSubscript:@"DataItem"];
  [v3 setObject:&__block_literal_global_173 forKeyedSubscript:@"DataSource"];
  [v3 setObject:objc_opt_class() forKeyedSubscript:@"NSError"];
  [v3 setObject:objc_opt_class() forKeyedSubscript:@"LoadIndexesRequest"];
  v37 = [(IKJSObject *)[IKJSViewModelService alloc] initWithAppContext:self];
  [(IKAppContext *)self setJsViewModelService:v37];

  [v3 setObject:objc_opt_class() forKeyedSubscript:@"ViewModelLink"];
  v38 = [(IKAppContext *)self jsViewModelService];
  [v3 setObject:v38 forKeyedSubscript:@"viewModelService"];

  [(IKAppContext *)self _evaluateFoundationWithDeviceConfig:v66[5] addPrivateInterfaces:1];
  v39 = [(IKAppContext *)self delegate];
  v40 = objc_opt_respondsToSelector();

  if (v40)
  {
    v41 = [(IKAppContext *)self delegate];
    [v41 appContext:self evaluateAppJavaScriptInContext:v3];
  }

  kdebug_trace();

  _Block_object_dispose(&v43, 8);
  _Block_object_dispose(&v47, 8);

  _Block_object_dispose(&v53, 8);
  _Block_object_dispose(&v59, 8);

  _Block_object_dispose(&v65, 8);
}

void __40__IKAppContext_JS__evaluateFoundationJS__block_invoke(uint64_t a1, void *a2)
{
  v26 = a2;
  v3 = [*(a1 + 32) delegate];
  v4 = [v3 deviceConfigForContext:*(a1 + 32)];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = [*(a1 + 32) delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [*(a1 + 32) delegate];
    v10 = [v9 navigationControllerForContext:*(a1 + 32)];
    v11 = *(*(a1 + 48) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }

  v13 = [*(a1 + 32) delegate];
  v14 = objc_opt_respondsToSelector();

  if (v14)
  {
    v15 = [*(a1 + 32) delegate];
    v16 = [v15 modalControllerForContext:*(a1 + 32)];
    v17 = *(*(a1 + 56) + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v16;
  }

  v19 = [*(a1 + 32) delegate];
  v20 = objc_opt_respondsToSelector();

  if (v20)
  {
    v21 = [*(a1 + 32) delegate];
    v22 = [v21 tabBarForContext:*(a1 + 32)];
    v23 = *(*(a1 + 64) + 8);
    v24 = *(v23 + 40);
    *(v23 + 40) = v22;
  }

  v25 = [v26 app];
  if (objc_opt_respondsToSelector())
  {
    *(*(*(a1 + 72) + 8) + 24) = [v25 appIsTrusted];
  }
}

- (void)resetFoundationJS
{
  [(IKAppContext *)self setJsApp:0];
  [(IKAppContext *)self setJsFoundation:0];
  [(IKAppContext *)self setJsWeakMap:0];

  [(IKAppContext *)self setJsViewModelService:0];
}

- (void)launchAppWithOptions:(id)a3
{
  v4 = a3;
  v5 = [(IKAppContext *)self jsContext];
  v6 = ITMLKitGetLogObject(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(IKAppContext(JS) *)v4 launchAppWithOptions:v6];
  }

  v7 = [v5 objectForKeyedSubscript:@"App"];
  v8 = [v7 toObjectOfClass:objc_opt_class()];

  [v8 launchAppWithOptions:v4];
}

- (void)exitAppWithOptions:(id)a3
{
  v4 = a3;
  v8 = [(IKAppContext *)self jsContext];
  v5 = [v8 objectForKeyedSubscript:@"App"];
  v6 = [v5 toObjectOfClass:objc_opt_class()];

  [v6 exitAppWithOptions:v4];
  v7 = [(IKAppContext *)self jsFoundation];
  [v7 stopTimers];
}

- (void)_evaluateFoundationWithDeviceConfig:(id)a3 addPrivateInterfaces:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [[IKJSFoundation alloc] initWithAppContext:self deviceConfig:v6];
  [(IKAppContext *)self setJsFoundation:v7];

  v8 = [(IKAppContext *)self jsContext];
  objc_initWeak(location, self);
  if (v4)
  {
    v58[0] = MEMORY[0x277D85DD0];
    v58[1] = 3221225472;
    v58[2] = __77__IKAppContext_JS___evaluateFoundationWithDeviceConfig_addPrivateInterfaces___block_invoke;
    v58[3] = &unk_2797990B8;
    objc_copyWeak(&v59, location);
    v9 = MEMORY[0x259C21BA0](v58);
    [v8 setObject:v9 forKeyedSubscript:@"imageScaleFactor"];

    v56[0] = MEMORY[0x277D85DD0];
    v56[1] = 3221225472;
    v56[2] = __77__IKAppContext_JS___evaluateFoundationWithDeviceConfig_addPrivateInterfaces___block_invoke_2;
    v56[3] = &unk_2797990B8;
    objc_copyWeak(&v57, location);
    v10 = MEMORY[0x259C21BA0](v56);
    [v8 setObject:v10 forKeyedSubscript:@"layeredImageScaleFactor"];

    objc_destroyWeak(&v57);
    objc_destroyWeak(&v59);
    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v54[2] = __77__IKAppContext_JS___evaluateFoundationWithDeviceConfig_addPrivateInterfaces___block_invoke_3;
    v54[3] = &unk_2797990E0;
    objc_copyWeak(&v55, location);
    v11 = MEMORY[0x259C21BA0](v54);
    [v8 setObject:v11 forKeyedSubscript:@"formatLocalizedNumber"];

    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = __77__IKAppContext_JS___evaluateFoundationWithDeviceConfig_addPrivateInterfaces___block_invoke_4;
    v52[3] = &unk_279799108;
    objc_copyWeak(&v53, location);
    v12 = MEMORY[0x259C21BA0](v52);
    [v8 setObject:v12 forKeyedSubscript:@"formatLocalizedLocaleIdentifier"];

    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = __77__IKAppContext_JS___evaluateFoundationWithDeviceConfig_addPrivateInterfaces___block_invoke_5;
    v50[3] = &unk_279799108;
    objc_copyWeak(&v51, location);
    v13 = MEMORY[0x259C21BA0](v50);
    [v8 setObject:v13 forKeyedSubscript:@"joinComponentsWithLocalizedCommaAndSpace"];

    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = __77__IKAppContext_JS___evaluateFoundationWithDeviceConfig_addPrivateInterfaces___block_invoke_6;
    v48[3] = &unk_279799108;
    objc_copyWeak(&v49, location);
    v14 = MEMORY[0x259C21BA0](v48);
    [v8 setObject:v14 forKeyedSubscript:@"joinComponentsWithLocalizedSemicolonAndSpace"];

    objc_destroyWeak(&v49);
    objc_destroyWeak(&v51);
    objc_destroyWeak(&v53);
    objc_destroyWeak(&v55);
  }

  [v8 setObject:&__block_literal_global_241 forKeyedSubscript:@"UUID"];
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __77__IKAppContext_JS___evaluateFoundationWithDeviceConfig_addPrivateInterfaces___block_invoke_8;
  v46[3] = &unk_279799150;
  objc_copyWeak(&v47, location);
  v15 = MEMORY[0x259C21BA0](v46);
  [v8 setObject:v15 forKeyedSubscript:@"makeXMLHttpRequest"];

  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __77__IKAppContext_JS___evaluateFoundationWithDeviceConfig_addPrivateInterfaces___block_invoke_9;
  v44[3] = &unk_279799178;
  objc_copyWeak(&v45, location);
  v16 = MEMORY[0x259C21BA0](v44);
  [v8 setObject:v16 forKeyedSubscript:@"evaluateScripts"];

  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __77__IKAppContext_JS___evaluateFoundationWithDeviceConfig_addPrivateInterfaces___block_invoke_10;
  v42[3] = &unk_2797991A0;
  objc_copyWeak(&v43, location);
  v17 = MEMORY[0x259C21BA0](v42);
  [v8 setObject:v17 forKeyedSubscript:@"setInterval"];

  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __77__IKAppContext_JS___evaluateFoundationWithDeviceConfig_addPrivateInterfaces___block_invoke_11;
  v40[3] = &unk_2797991C8;
  objc_copyWeak(&v41, location);
  v18 = MEMORY[0x259C21BA0](v40);
  [v8 setObject:v18 forKeyedSubscript:@"clearInterval"];

  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __77__IKAppContext_JS___evaluateFoundationWithDeviceConfig_addPrivateInterfaces___block_invoke_12;
  v38[3] = &unk_2797991A0;
  objc_copyWeak(&v39, location);
  v19 = MEMORY[0x259C21BA0](v38);
  [v8 setObject:v19 forKeyedSubscript:@"setTimeout"];

  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __77__IKAppContext_JS___evaluateFoundationWithDeviceConfig_addPrivateInterfaces___block_invoke_13;
  v36[3] = &unk_2797991C8;
  objc_copyWeak(&v37, location);
  v20 = MEMORY[0x259C21BA0](v36);
  [v8 setObject:v20 forKeyedSubscript:@"clearTimeout"];

  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __77__IKAppContext_JS___evaluateFoundationWithDeviceConfig_addPrivateInterfaces___block_invoke_14;
  v34[3] = &unk_2797991F0;
  objc_copyWeak(&v35, location);
  v21 = MEMORY[0x259C21BA0](v34);
  [v8 setObject:v21 forKeyedSubscript:@"formatDate"];

  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __77__IKAppContext_JS___evaluateFoundationWithDeviceConfig_addPrivateInterfaces___block_invoke_15;
  v32[3] = &unk_279799108;
  objc_copyWeak(&v33, location);
  v22 = MEMORY[0x259C21BA0](v32);
  [v8 setObject:v22 forKeyedSubscript:@"formatDuration"];

  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __77__IKAppContext_JS___evaluateFoundationWithDeviceConfig_addPrivateInterfaces___block_invoke_16;
  v30[3] = &unk_279799218;
  objc_copyWeak(&v31, location);
  v23 = MEMORY[0x259C21BA0](v30);
  [v8 setObject:v23 forKeyedSubscript:@"formatNumber"];

  [v8 setObject:&__block_literal_global_292 forKeyedSubscript:@"canOpenURL"];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __77__IKAppContext_JS___evaluateFoundationWithDeviceConfig_addPrivateInterfaces___block_invoke_18;
  v28[3] = &unk_279799288;
  objc_copyWeak(&v29, location);
  v24 = MEMORY[0x259C21BA0](v28);
  [v8 setObject:v24 forKeyedSubscript:@"openURL"];

  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __77__IKAppContext_JS___evaluateFoundationWithDeviceConfig_addPrivateInterfaces___block_invoke_20;
  v26[3] = &unk_2797992D8;
  objc_copyWeak(&v27, location);
  v25 = MEMORY[0x259C21BA0](v26);
  [v8 setObject:v25 forKeyedSubscript:@"getActiveDocument"];

  [v8 setObject:&__block_literal_global_311 forKeyedSubscript:@"sort"];
  [v8 setObject:&__block_literal_global_318 forKeyedSubscript:@"atob"];
  [v8 setObject:&__block_literal_global_325 forKeyedSubscript:@"btoa"];
  [v8 setObject:&__block_literal_global_331 forKeyedSubscript:@"localizedUppercaseString"];
  [v8 setObject:&__block_literal_global_336 forKeyedSubscript:@"localizedLowercaseString"];
  [v8 setObject:&__block_literal_global_341 forKeyedSubscript:@"localizedCapitalizedString"];
  objc_destroyWeak(&v27);
  objc_destroyWeak(&v29);
  objc_destroyWeak(&v31);
  objc_destroyWeak(&v33);
  objc_destroyWeak(&v35);
  objc_destroyWeak(&v37);
  objc_destroyWeak(&v39);
  objc_destroyWeak(&v41);
  objc_destroyWeak(&v43);
  objc_destroyWeak(&v45);
  objc_destroyWeak(&v47);
  objc_destroyWeak(location);
}

double __77__IKAppContext_JS___evaluateFoundationWithDeviceConfig_addPrivateInterfaces___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = 0.0;
  if (objc_opt_respondsToSelector())
  {
    [v3 floatValue];
    v4 = v5;
  }

  if (v4 != 3.0 && v4 != 1.0 && v4 != 2.0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained setException:0 withErrorMessage:@"Invalid Display Scale"];

    v4 = 1.0;
  }

  return v4;
}

double __77__IKAppContext_JS___evaluateFoundationWithDeviceConfig_addPrivateInterfaces___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = 0.0;
  if (objc_opt_respondsToSelector())
  {
    [v3 floatValue];
    v4 = v5;
  }

  if (v4 != 3.0 && v4 != 1.0 && v4 != 2.0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained setException:0 withErrorMessage:@"Invalid Display Scale"];

    v4 = 1.0;
  }

  return v4;
}

id __77__IKAppContext_JS___evaluateFoundationWithDeviceConfig_addPrivateInterfaces___block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = [a2 toObject];
  if ([v11 isString])
  {
    v16 = [v11 toString];
  }

  else
  {
    v16 = 0;
  }

  if ([v12 isString])
  {
    v17 = [v12 toString];
  }

  else
  {
    v17 = 0;
  }

  if ([v13 isString])
  {
    v18 = [v13 toString];
  }

  else
  {
    v18 = 0;
  }

  v24 = v11;
  if ([v14 isString])
  {
    v19 = [v14 toString];
  }

  else
  {
    v19 = 0;
  }

  v20 = v16;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    WeakRetained = +[IKFormatting sharedInstance];
    v22 = [WeakRetained formatLocalizedNumber:v15 style:v20 postiveFormat:v17 negativeFormat:v18 currencyCode:v19];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained setException:0 withErrorMessage:@"formatLocalizedNumber expects a Number object"];
    v22 = 0;
  }

  return v22;
}

id __77__IKAppContext_JS___evaluateFoundationWithDeviceConfig_addPrivateInterfaces___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isString])
  {
    v4 = [v3 toString];
  }

  else
  {
    v4 = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    WeakRetained = +[IKFormatting sharedInstance];
    v6 = [WeakRetained formatLocalizedLocaleIdentifier:v4];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained setException:0 withErrorMessage:@"formatLocalizedLocaleIdentifier expects a String object"];
    v6 = 0;
  }

  return v6;
}

id __77__IKAppContext_JS___evaluateFoundationWithDeviceConfig_addPrivateInterfaces___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isArray])
  {
    v4 = [v3 toArray];
  }

  else
  {
    v4 = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    WeakRetained = +[IKFormatting sharedInstance];
    v6 = [WeakRetained joinComponentsWithLocalizedCommaAndSpace:v4];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained setException:0 withErrorMessage:@"joinComponentsWithLocalizedCommaAndSpace expects a String object"];
    v6 = 0;
  }

  return v6;
}

id __77__IKAppContext_JS___evaluateFoundationWithDeviceConfig_addPrivateInterfaces___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isArray])
  {
    v4 = [v3 toArray];
  }

  else
  {
    v4 = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    WeakRetained = +[IKFormatting sharedInstance];
    v6 = [WeakRetained joinComponentsWithLocalizedSemicolonAndSpace:v4];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained setException:0 withErrorMessage:@"joinComponentsWithLocalizedSemicolonAndSpace expects a String object"];
    v6 = 0;
  }

  return v6;
}

id __77__IKAppContext_JS___evaluateFoundationWithDeviceConfig_addPrivateInterfaces___block_invoke_7()
{
  v0 = [MEMORY[0x277CCAD78] UUID];
  v1 = [v0 UUIDString];

  return v1;
}

IKJSXMLHTTPRequest *__77__IKAppContext_JS___evaluateFoundationWithDeviceConfig_addPrivateInterfaces___block_invoke_8(uint64_t a1)
{
  v2 = [IKJSXMLHTTPRequest alloc];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [(IKJSXMLHTTPRequest *)v2 initWithAppContext:WeakRetained jingleRequest:0];

  return v4;
}

void __77__IKAppContext_JS___evaluateFoundationWithDeviceConfig_addPrivateInterfaces___block_invoke_9(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [IKScriptsEvaluator alloc];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = [(IKScriptsEvaluator *)v7 initWithScripts:v6 withContext:WeakRetained callback:v5 jingleRequest:0];

  [(IKScriptsEvaluator *)v9 evaluate];
}

id __77__IKAppContext_JS___evaluateFoundationWithDeviceConfig_addPrivateInterfaces___block_invoke_10(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = [WeakRetained jsFoundation];
  v8 = [v7 setInterval:v5 time:a3];

  return v8;
}

void __77__IKAppContext_JS___evaluateFoundationWithDeviceConfig_addPrivateInterfaces___block_invoke_11(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained jsFoundation];
  [v4 clearInterval:v3];
}

id __77__IKAppContext_JS___evaluateFoundationWithDeviceConfig_addPrivateInterfaces___block_invoke_12(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = [WeakRetained jsFoundation];
  v8 = [v7 setTimeout:v5 time:a3];

  return v8;
}

void __77__IKAppContext_JS___evaluateFoundationWithDeviceConfig_addPrivateInterfaces___block_invoke_13(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained jsFoundation];
  [v4 clearTimeout:v3];
}

id __77__IKAppContext_JS___evaluateFoundationWithDeviceConfig_addPrivateInterfaces___block_invoke_14(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 toObject];
  if ([v5 isString])
  {
    v7 = [v5 toString];
  }

  else
  {
    v7 = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    WeakRetained = +[IKFormatting sharedInstance];
    v9 = [WeakRetained formatDate:v6 format:v7];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained setException:0 withErrorMessage:@"formatDate expects a Date object"];
    v9 = 0;
  }

  return v9;
}

id __77__IKAppContext_JS___evaluateFoundationWithDeviceConfig_addPrivateInterfaces___block_invoke_15(uint64_t a1, void *a2)
{
  v3 = [a2 toObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    WeakRetained = +[IKFormatting sharedInstance];
    v5 = [WeakRetained formatDuration:v3];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained setException:0 withErrorMessage:@"formatDuration expects a Number object"];
    v5 = 0;
  }

  return v5;
}

id __77__IKAppContext_JS___evaluateFoundationWithDeviceConfig_addPrivateInterfaces___block_invoke_16(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [a2 toObject];
  if ([v9 isString])
  {
    v13 = [v9 toString];
  }

  else
  {
    v13 = 0;
  }

  if ([v10 isString])
  {
    v14 = [v10 toString];
  }

  else
  {
    v14 = 0;
  }

  if ([v11 isString])
  {
    v15 = [v11 toString];
  }

  else
  {
    v15 = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    WeakRetained = +[IKFormatting sharedInstance];
    v17 = [WeakRetained formatNumber:v12 style:v13 postiveFormat:v14 negativeFormat:v15];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained setException:0 withErrorMessage:@"formatNumber expects a Number object"];
    v17 = 0;
  }

  return v17;
}

uint64_t __77__IKAppContext_JS___evaluateFoundationWithDeviceConfig_addPrivateInterfaces___block_invoke_17(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = MEMORY[0x277CBEBC0];
  v3 = a2;
  v4 = [[v2 alloc] initWithString:v3];

  v5 = [MEMORY[0x277D75128] sharedApplication];
  v6 = [v5 canOpenURL:v4];

  return v6;
}

void __77__IKAppContext_JS___evaluateFoundationWithDeviceConfig_addPrivateInterfaces___block_invoke_18(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = MEMORY[0x277CBEBC0];
    v7 = a2;
    v8 = [[v6 alloc] initWithString:v7];

    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __77__IKAppContext_JS___evaluateFoundationWithDeviceConfig_addPrivateInterfaces___block_invoke_19;
    v11[3] = &unk_279799260;
    v12 = v8;
    v13 = v5;
    v10 = v8;
    [WeakRetained evaluateDelegateBlockSync:v11];
  }
}

void __77__IKAppContext_JS___evaluateFoundationWithDeviceConfig_addPrivateInterfaces___block_invoke_19(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[IKUtilites isAppTrusted];
  v8 = [v3 app];

  if (objc_opt_respondsToSelector())
  {
    if (([v8 appIsTrusted] & 1) == 0)
    {
      goto LABEL_6;
    }

LABEL_5:
    v5 = [MEMORY[0x277CC1E80] defaultWorkspace];
    v6 = [v5 openSensitiveURL:*(a1 + 32) withOptions:*(a1 + 40)];

    if (v6)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v4)
  {
    goto LABEL_5;
  }

LABEL_6:
  v7 = [MEMORY[0x277CC1E80] defaultWorkspace];
  [v7 openURL:*(a1 + 32)];

LABEL_7:
}

id __77__IKAppContext_JS___evaluateFoundationWithDeviceConfig_addPrivateInterfaces___block_invoke_20(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__0;
  v9 = __Block_byref_object_dispose__0;
  v10 = 0;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __77__IKAppContext_JS___evaluateFoundationWithDeviceConfig_addPrivateInterfaces___block_invoke_21;
  v4[3] = &unk_2797992B0;
  v4[4] = &v5;
  [WeakRetained evaluateDelegateBlockSync:v4];

  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __77__IKAppContext_JS___evaluateFoundationWithDeviceConfig_addPrivateInterfaces___block_invoke_21(uint64_t a1, void *a2)
{
  v7 = [a2 app];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v7 activeDocument];
    v4 = [v3 jsDocument];
    v5 = *(*(a1 + 32) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }
}

id __77__IKAppContext_JS___evaluateFoundationWithDeviceConfig_addPrivateInterfaces___block_invoke_22(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v7 = 0;
  if (v4 && (isKindOfClass & 1) != 0)
  {
    if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v7 = 0;
    }

    else
    {
      v7 = [IKUtilites sort:v4 options:v5];
    }
  }

  return v7;
}

id __77__IKAppContext_JS___evaluateFoundationWithDeviceConfig_addPrivateInterfaces___block_invoke_23(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CBEA90];
  v3 = a2;
  v4 = [[v2 alloc] initWithBase64EncodedString:v3 options:0];

  v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v4 encoding:4];

  return v5;
}

id __77__IKAppContext_JS___evaluateFoundationWithDeviceConfig_addPrivateInterfaces___block_invoke_24(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isString])
  {
    v3 = [v2 toString];
    v4 = [v3 dataUsingEncoding:4];

    v5 = [v4 base64EncodedStringWithOptions:0];
LABEL_5:

    goto LABEL_7;
  }

  if ([v2 isInstanceOf:objc_opt_class()])
  {
    v4 = [v2 toObject];
    v6 = [v4 data];
    v5 = [v6 base64EncodedStringWithOptions:0];

    goto LABEL_5;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

@end