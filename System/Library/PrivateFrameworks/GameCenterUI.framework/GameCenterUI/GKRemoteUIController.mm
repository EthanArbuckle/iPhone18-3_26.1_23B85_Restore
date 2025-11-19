@interface GKRemoteUIController
+ (id)remoteUIController;
- (BOOL)isUserInteractionEnabled;
- (Class)objectModel:(id)a3 customFooterClassForSection:(id)a4;
- (Class)objectModel:(id)a3 customHeaderClassForSection:(id)a4;
- (GKRemoteUIController)initWithObjectModel:(id)a3;
- (NSString)bagKey;
- (NSURL)fallbackURL;
- (UINavigationController)navigationController;
- (id)addThemeInfoToAttributes:(id)a3;
- (id)objectModel:(id)a3 tableFooterViewForAttributes:(id)a4 page:(id)a5;
- (id)objectModel:(id)a3 tableHeaderViewForAttributes:(id)a4 page:(id)a5;
- (id)viewControllerForAlertPresentation;
- (id)viewControllers;
- (int)preferredLayoutStyle;
- (int64_t)indexOfVisiblePage;
- (void)configureFromBagKey:(id)a3 player:(id)a4 withCompletionHandler:(id)a5;
- (void)didLoadURL:(id)a3 data:(id)a4 error:(id)a5;
- (void)finishLoadingWithError:(id)a3;
- (void)fireCompletionHandler;
- (void)indexOfVisiblePage;
- (void)loadInitialRemoteUIForPlayer:(id)a3 handler:(id)a4;
- (void)loadInitialRemoteUIWithHandler:(id)a3;
- (void)loadURL:(id)a3 forPlayer:(id)a4 postBody:(id)a5;
- (void)loadURL:(id)a3 forPlayer:(id)a4 postData:(id)a5;
- (void)loadURL:(id)a3 postBody:(id)a4;
- (void)loadURL:(id)a3 postData:(id)a4;
- (void)loader:(id)a3 receivedObjectModel:(id)a4 actionSignal:(unint64_t)a5;
- (void)objectModel:(id)a3 configureTableRow:(id)a4 page:(id)a5;
- (void)objectModel:(id)a3 configureTableSection:(id)a4 page:(id)a5;
- (void)objectModel:(id)a3 configureTableView:(id)a4 page:(id)a5;
- (void)objectModel:(id)a3 elementDidChange:(id)a4;
- (void)objectModel:(id)a3 pressedLink:(id)a4 httpMethod:(id)a5 completion:(id)a6;
- (void)objectModelPressedBack:(id)a3;
- (void)performAction:(unint64_t)a3 withObjectModel:(id)a4;
- (void)popObjectModelAnimated:(BOOL)a3;
- (void)presentInParentNavigationController:(id)a3 animated:(BOOL)a4;
- (void)presentObjectModel:(id)a3 animated:(BOOL)a4;
- (void)pushObjectModel:(id)a3 animated:(BOOL)a4;
- (void)replaceObjectModelAtIndex:(unint64_t)a3 withObjectObjectModel:(id)a4;
- (void)setAppleID:(id)a3;
- (void)setUserInteractionEnabled:(BOOL)a3;
- (void)takeValuesFromClientInfo:(id)a3 withCompletionHandler:(id)a4;
- (void)updateAccountAndMarkComplete:(BOOL)a3 completionHandler:(id)a4;
- (void)updatePostbackDictionary:(id)a3 withHandler:(id)a4;
@end

@implementation GKRemoteUIController

+ (id)remoteUIController
{
  v2 = objc_alloc_init(a1);

  return v2;
}

- (GKRemoteUIController)initWithObjectModel:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = GKRemoteUIController;
  v5 = [(GKRemoteUIController *)&v25 init];
  if (v5)
  {
    v6 = [MEMORY[0x277D0C138] localPlayer];
    objc_storeStrong(&v5->_playerForRemoteUI, v6);
    v7 = [v6 internal];
    v8 = [v7 playerID];
    playerID = v5->_playerID;
    v5->_playerID = v8;

    v10 = [v6 accountName];
    appleID = v5->_appleID;
    v5->_appleID = v10;

    v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
    objectModels = v5->_objectModels;
    v5->_objectModels = v12;

    v27 = 0;
    v28 = &v27;
    v29 = 0x2050000000;
    v14 = getRUILoaderClass_softClass;
    v30 = getRUILoaderClass_softClass;
    if (!getRUILoaderClass_softClass)
    {
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __getRUILoaderClass_block_invoke;
      v26[3] = &unk_279669DD0;
      v26[4] = &v27;
      __getRUILoaderClass_block_invoke(v26);
      v14 = v28[3];
    }

    v15 = v14;
    _Block_object_dispose(&v27, 8);
    v16 = objc_alloc_init(v14);
    loader = v5->_loader;
    v5->_loader = v16;

    v5->_shouldApplyGameCenterTheme = 1;
    v5->_isServerAuthenticated = 1;
    v5->_layoutStyle = [(GKRemoteUIController *)v5 preferredLayoutStyle];
    v5->_previousUseCustomBackButtonActionValue = [MEMORY[0x277D75780] _useCustomBackButtonAction];
    [MEMORY[0x277D75780] _setUseCustomBackButtonAction:1];
    if (([MEMORY[0x277D75780] _useCustomBackButtonAction] & 1) == 0)
    {
      v18 = MEMORY[0x277CCACA8];
      v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"Must have custom back button action"];
      v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/Framework/RemoteUI/GKRemoteUIController.m"];
      v21 = [v20 lastPathComponent];
      v22 = [v18 stringWithFormat:@"%@ (useCustomBackButtonAction == YES)\n[%s (%s:%d)]", v19, "-[GKRemoteUIController initWithObjectModel:]", objc_msgSend(v21, "UTF8String"), 134];

      [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v22}];
    }

    [(RUILoader *)v5->_loader setDelegate:v5];
    if (v4)
    {
      [(GKRemoteUIController *)v5 pushObjectModel:v4 animated:0];
    }

    v23 = v5;
  }

  return v5;
}

- (void)setAppleID:(id)a3
{
  v5 = a3;
  if (self->_appleID != v5)
  {
    v13 = v5;
    objc_storeStrong(&self->_appleID, a3);
    if (self->_appleID)
    {
      v6 = [MEMORY[0x277D0C1D8] shared];
      v7 = [v6 environment];

      v8 = [MEMORY[0x277D0C1C0] sharedController];
      v9 = [(GKLocalPlayer *)self->_playerForRemoteUI internal];
      v10 = [v8 credentialForPlayer:v9 environment:v7];

      v11 = [v10 altDSID];
      altDSID = self->_altDSID;
      self->_altDSID = v11;
    }

    else
    {
      [(GKRemoteUIController *)self setAltDSID:0];
    }

    v5 = v13;
  }
}

- (void)updateAccountAndMarkComplete:(BOOL)a3 completionHandler:(id)a4
{
  v4 = a3;
  v33 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = MEMORY[0x277D0C2A0];
  v8 = *MEMORY[0x277D0C2A0];
  if (!*MEMORY[0x277D0C2A0])
  {
    v9 = GKOSLoggers();
    v8 = *v7;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v10 = v8;
    v11 = [(GKRemoteUIController *)self authToken];
    v12 = [(GKRemoteUIController *)self appleID];
    v13 = [(GKRemoteUIController *)self playerID];
    *buf = 138412802;
    v28 = v11;
    v29 = 2112;
    v30 = v12;
    v31 = 2112;
    v32 = v13;
    _os_log_impl(&dword_24DE53000, v10, OS_LOG_TYPE_INFO, "Updating account with authToken = “%@”, appleID = “%@”, playerID = “%@”", buf, 0x20u);
  }

  v14 = [(GKRemoteUIController *)self authToken];
  if (![v14 length])
  {
    goto LABEL_10;
  }

  v15 = [(GKRemoteUIController *)self appleID];
  if (![v15 length])
  {

LABEL_10:
    goto LABEL_11;
  }

  v16 = [(GKRemoteUIController *)self playerID];
  v17 = [v16 length];

  if (!v17)
  {
LABEL_11:
    v6[2](v6);
    goto LABEL_12;
  }

  v18 = [MEMORY[0x277D0C010] proxyForLocalPlayer];
  v19 = [v18 accountServicePrivate];
  v20 = [(GKRemoteUIController *)self appleID];
  v21 = [(GKRemoteUIController *)self playerID];
  v22 = [(GKRemoteUIController *)self authToken];
  v23 = [(GKRemoteUIController *)self alias];
  v24 = [(GKRemoteUIController *)self altDSID];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __71__GKRemoteUIController_updateAccountAndMarkComplete_completionHandler___block_invoke;
  v25[3] = &unk_27966C990;
  v26 = v6;
  [v19 accountCreated:v20 playerID:v21 authenticationToken:v22 alias:v23 altDSID:v24 finished:v4 handler:v25];

LABEL_12:
}

void __71__GKRemoteUIController_updateAccountAndMarkComplete_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (!*MEMORY[0x277D0C2A0])
    {
      v7 = GKOSLoggers();
    }

    v8 = *MEMORY[0x277D0C290];
    if (os_log_type_enabled(*MEMORY[0x277D0C290], OS_LOG_TYPE_ERROR))
    {
      __71__GKRemoteUIController_updateAccountAndMarkComplete_completionHandler___block_invoke_cold_1(v6, v8);
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (BOOL)isUserInteractionEnabled
{
  v2 = [(GKRemoteUIController *)self navigationController];
  v3 = [v2 view];
  v4 = [v3 isUserInteractionEnabled];

  return v4;
}

- (void)setUserInteractionEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = [(GKRemoteUIController *)self navigationController];
  v4 = [v5 view];
  [v4 setUserInteractionEnabled:v3];
}

- (void)fireCompletionHandler
{
  if (![(GKRemoteUIController *)self complete])
  {
    [(GKRemoteUIController *)self setComplete:1];
    [(GKRemoteUIController *)self setUserInteractionEnabled:1];
    v6 = self;
    v3 = [(GKRemoteUIController *)v6 completionHandler];

    if (v3)
    {
      v4 = [(GKRemoteUIController *)v6 completionHandler];
      v5 = [(GKRemoteUIController *)v6 error];
      (v4)[2](v4, v6, v5);
    }

    [MEMORY[0x277D75780] _setUseCustomBackButtonAction:{-[GKRemoteUIController previousUseCustomBackButtonActionValue](v6, "previousUseCustomBackButtonActionValue")}];
    [(GKRemoteUIController *)v6 setCompletionHandler:0];
  }
}

- (void)presentInParentNavigationController:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v11 = a3;
  v6 = [(GKRemoteUIController *)self navigationController];

  if (v6)
  {
    [GKRemoteUIController presentInParentNavigationController:animated:];
  }

  [(GKRemoteUIController *)self setNavigationController:v11];
  v7 = [v11 viewControllers];
  v8 = [v7 copy];
  [(GKRemoteUIController *)self setStaticViewControllers:v8];

  v9 = [(GKRemoteUIController *)self objectModels];
  v10 = [v9 lastObject];

  if (v10)
  {
    [v10 presentInParentViewController:v11 animated:v4];
  }
}

- (id)addThemeInfoToAttributes:(id)a3
{
  v4 = [a3 mutableCopy];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[GKRemoteUIController layoutStyle](self, "layoutStyle")}];
  [v4 setObject:v5 forKeyedSubscript:@"GKLayoutStyle"];

  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[GKRemoteUIController shouldApplyGameCenterTheme](self, "shouldApplyGameCenterTheme")}];
  [v4 setObject:v6 forKeyedSubscript:@"GKApplyTheme"];

  return v4;
}

- (void)configureFromBagKey:(id)a3 player:(id)a4 withCompletionHandler:(id)a5
{
  v19[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v10)
  {
    [GKRemoteUIController configureFromBagKey:player:withCompletionHandler:];
  }

  v11 = [MEMORY[0x277D0C010] proxyForPlayer:v9];
  v12 = [v11 utilityServicePrivate];
  v19[0] = v8;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __73__GKRemoteUIController_configureFromBagKey_player_withCompletionHandler___block_invoke;
  v16[3] = &unk_27966C9B8;
  v17 = v8;
  v18 = v10;
  v16[4] = self;
  v14 = v8;
  v15 = v10;
  [v12 getCredentialInfoAndStoreBagValuesForKeys:v13 handler:v16];
}

void __73__GKRemoteUIController_configureFromBagKey_player_withCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7)
{
  v31[1] = *MEMORY[0x277D85DE8];
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  if (a7)
  {
    [*(a1 + 32) setError:a7];
  }

  else
  {
    v17 = MEMORY[0x277CBEBC0];
    v18 = [a6 objectForKeyedSubscript:*(a1 + 40)];
    v19 = [v17 URLWithString:v18];
    [*(a1 + 32) setUrl:v19];

    v20 = [*(a1 + 32) url];

    if (!v20)
    {
      v21 = [*(a1 + 32) fallbackURL];
      [*(a1 + 32) setUrl:v21];
    }

    v22 = [*(a1 + 32) url];

    if (v22)
    {
      v23 = [*(a1 + 32) playerID];

      if (!v23)
      {
        [*(a1 + 32) setPlayerID:v13];
      }

      v24 = [*(a1 + 32) appleID];

      if (!v24)
      {
        [*(a1 + 32) setAppleID:v15];
      }

      [*(a1 + 32) setAuthToken:v14];
      [*(a1 + 32) setPushToken:v16];
    }

    else
    {
      v25 = MEMORY[0x277CCA9B8];
      v30 = *MEMORY[0x277CCA450];
      v26 = GKGameCenterUIFrameworkBundle();
      v27 = GKGetLocalizedStringFromTableInBundle();
      v31[0] = v27;
      v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:&v30 count:1];
      v29 = [v25 errorWithDomain:@"GKRemoteUIErrorDomain" code:1 userInfo:v28];
      [*(a1 + 32) setError:v29];
    }
  }

  (*(*(a1 + 48) + 16))();
}

- (void)loadInitialRemoteUIWithHandler:(id)a3
{
  [(GKRemoteUIController *)self setLoadHandler:a3];
  [(GKRemoteUIController *)self setLoadingInitialUI:1];
  v5 = [(GKRemoteUIController *)self postBodyForInitialLoad];
  v4 = [(GKRemoteUIController *)self url];
  [(GKRemoteUIController *)self loadURL:v4 postBody:v5];
}

- (void)loadInitialRemoteUIForPlayer:(id)a3 handler:(id)a4
{
  v6 = a3;
  [(GKRemoteUIController *)self setLoadHandler:a4];
  [(GKRemoteUIController *)self setLoadingInitialUI:1];
  v8 = [(GKRemoteUIController *)self postBodyForInitialLoad];
  v7 = [(GKRemoteUIController *)self url];
  [(GKRemoteUIController *)self loadURL:v7 forPlayer:v6 postBody:v8];
}

- (void)finishLoadingWithError:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__GKRemoteUIController_finishLoadingWithError___block_invoke;
  v6[3] = &unk_279669E48;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __47__GKRemoteUIController_finishLoadingWithError___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setUserInteractionEnabled:1];
  [*(a1 + 32) setError:*(a1 + 40)];
  [*(a1 + 32) setLoading:0];
  [*(a1 + 32) setLoadingInitialUI:0];
  v2 = [*(a1 + 32) loadHandler];
  v3 = v2;
  if (v2)
  {
    (*(v2 + 16))(v2, *(a1 + 40));
  }

  else if (*(a1 + 40))
  {
    [*(a1 + 32) fireCompletionHandler];
  }

  [*(a1 + 32) setLoadHandler:0];
}

- (void)loadURL:(id)a3 forPlayer:(id)a4 postBody:(id)a5
{
  v9 = a3;
  v8 = a4;
  if (a5)
  {
    a5 = [(GKRemoteUIController *)self postbackDataForDictionary:a5];
  }

  [(GKRemoteUIController *)self loadURL:v9 forPlayer:v8 postData:a5];
}

- (void)loadURL:(id)a3 postBody:(id)a4
{
  v6 = a3;
  if (a4)
  {
    a4 = [(GKRemoteUIController *)self postbackDataForDictionary:a4];
  }

  [(GKRemoteUIController *)self loadURL:v6 postData:a4];
}

- (void)didLoadURL:(id)a3 data:(id)a4 error:(id)a5
{
  v27[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    v11 = v10;
    v12 = [v10 userInfo];
    v13 = [v12 mutableCopy];

    if (!v13)
    {
      v13 = [MEMORY[0x277CBEB38] dictionary];
    }

    v14 = *MEMORY[0x277CCA450];
    v15 = [v13 objectForKeyedSubscript:*MEMORY[0x277CCA450]];

    if (!v15)
    {
      v16 = GKGameCenterUIFrameworkBundle();
      v17 = GKGetLocalizedStringFromTableInBundle();
      [v13 setObject:v17 forKeyedSubscript:v14];
    }

    v18 = MEMORY[0x277CCA9B8];
    v19 = [v11 domain];
    v20 = [v18 errorWithDomain:v19 code:objc_msgSend(v11 userInfo:{"code"), v13}];

    [(GKRemoteUIController *)self finishLoadingWithError:v20];
  }

  else
  {
    if (v9)
    {
      v21 = [(GKRemoteUIController *)self loader];
      [v21 loadXMLUIWithData:v9 baseURL:v8];

      goto LABEL_10;
    }

    v22 = MEMORY[0x277CCA9B8];
    v26 = *MEMORY[0x277CCA450];
    v23 = GKGameCenterUIFrameworkBundle();
    v24 = GKGetLocalizedStringFromTableInBundle();
    v27[0] = v24;
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:&v26 count:1];
    v11 = [v22 errorWithDomain:@"GKRemoteUIErrorDomain" code:2 userInfo:v25];

    [(GKRemoteUIController *)self finishLoadingWithError:v11];
  }

LABEL_10:
}

- (void)loadURL:(id)a3 postData:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    [GKRemoteUIController loadURL:postData:];
  }

  [(GKRemoteUIController *)self setLoading:1];
  if ([v6 isFileURL])
  {
    v14 = 0;
    v8 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfURL:v6 options:1 error:&v14];
    v9 = v14;
    [(GKRemoteUIController *)self didLoadURL:v6 data:v8 error:v9];
  }

  else
  {
    v10 = [MEMORY[0x277D0C010] proxyForLocalPlayer];
    v11 = [v10 utilityServicePrivate];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __41__GKRemoteUIController_loadURL_postData___block_invoke;
    v12[3] = &unk_27966C9E0;
    v12[4] = self;
    v13 = v6;
    [v11 loadDataForURL:v13 postBody:v7 completionHandler:v12];
  }
}

- (void)loadURL:(id)a3 forPlayer:(id)a4 postData:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8)
  {
    [GKRemoteUIController loadURL:forPlayer:postData:];
  }

  [(GKRemoteUIController *)self setLoading:1];
  if ([v8 isFileURL])
  {
    v17 = 0;
    v11 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfURL:v8 options:1 error:&v17];
    v12 = v17;
    [(GKRemoteUIController *)self didLoadURL:v8 data:v11 error:v12];
  }

  else
  {
    v13 = [MEMORY[0x277D0C010] proxyForPlayer:v9];
    v14 = [v13 utilityServicePrivate];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __51__GKRemoteUIController_loadURL_forPlayer_postData___block_invoke;
    v15[3] = &unk_27966C9E0;
    v15[4] = self;
    v16 = v8;
    [v14 loadDataForURL:v16 postBody:v10 completionHandler:v15];
  }
}

- (int)preferredLayoutStyle
{
  v2 = [MEMORY[0x277D0C048] isPreferences];
  v3 = [MEMORY[0x277D0C048] isGameCenter];
  v4 = [MEMORY[0x277D75418] currentDevice];
  v5 = [v4 userInterfaceIdiom];

  if (v2 & 1 | ((v3 & 1) == 0))
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (v5 == 1)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

- (NSURL)fallbackURL
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"GKRemoteUIController.m" lineNumber:427 description:@"Subclasses MUST implement fallbackURL"];

  return 0;
}

- (NSString)bagKey
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"GKRemoteUIController.m" lineNumber:433 description:@"Subclasses MUST implement bagKey"];

  return 0;
}

- (void)updatePostbackDictionary:(id)a3 withHandler:(id)a4
{
  if (a4)
  {
    (*(a4 + 2))(a4);
  }
}

- (void)takeValuesFromClientInfo:(id)a3 withCompletionHandler:(id)a4
{
  v54 = a3;
  v6 = a4;
  if (!v6)
  {
    [GKRemoteUIController takeValuesFromClientInfo:withCompletionHandler:];
  }

  v51 = [MEMORY[0x277D0C1D8] shared];
  v7 = [v54 objectForKeyedSubscript:@"firstName"];
  v8 = [v54 objectForKeyedSubscript:@"lastName"];
  v9 = [v54 objectForKeyedSubscript:@"appleID"];
  v10 = [v54 objectForKeyedSubscript:@"altDSID"];
  v11 = [v54 objectForKeyedSubscript:@"playerID"];
  v12 = [v54 objectForKeyedSubscript:@"alias"];
  v13 = [v54 objectForKeyedSubscript:@"authToken"];
  v14 = [v54 objectForKeyedSubscript:@"shouldAllowNearbyMultiplayer"];
  v47 = [v54 objectForKeyedSubscript:@"isAuthenticated"];
  if ([v47 isEqualToString:@"false"])
  {
    [(GKRemoteUIController *)self setIsServerAuthenticated:0];
  }

  v52 = v14;
  v53 = v10;
  v50 = v7;
  if (v7)
  {
    v15 = [(GKRemoteUIController *)self firstName];
    v16 = [v15 isEqualToString:v7];

    if ((v16 & 1) == 0)
    {
      [(GKRemoteUIController *)self setFirstName:v7];
      LODWORD(v7) = 1;
      if (!v8)
      {
        goto LABEL_13;
      }

      goto LABEL_11;
    }

    LODWORD(v7) = 0;
  }

  if (!v8)
  {
    goto LABEL_13;
  }

LABEL_11:
  v17 = [(GKRemoteUIController *)self lastName];
  v18 = [v17 isEqualToString:v8];

  if ((v18 & 1) == 0)
  {
    [(GKRemoteUIController *)self setLastName:v8];
    LODWORD(v7) = 1;
  }

LABEL_13:
  if (v9)
  {
    v19 = [(GKRemoteUIController *)self appleID];
    v20 = [v19 isEqualToString:v9];

    if ((v20 & 1) == 0)
    {
      [(GKRemoteUIController *)self setAppleID:v9];
      LODWORD(v7) = 1;
    }
  }

  if (v53)
  {
    v21 = [(GKRemoteUIController *)self altDSID];
    v22 = [v21 isEqualToString:v53];

    if ((v22 & 1) == 0)
    {
      [(GKRemoteUIController *)self setAltDSID:v53];
      LODWORD(v7) = 1;
    }
  }

  if (v11)
  {
    v23 = [(GKRemoteUIController *)self playerID];
    v24 = [v23 isEqualToString:v11];

    if ((v24 & 1) == 0)
    {
      [(GKRemoteUIController *)self setPlayerID:v11];
      LODWORD(v7) = 1;
    }
  }

  if (v12)
  {
    v25 = [(GKRemoteUIController *)self alias];
    v26 = [v25 isEqualToString:v12];

    if ((v26 & 1) == 0)
    {
      [(GKRemoteUIController *)self setAlias:v12];
      LODWORD(v7) = 1;
    }
  }

  v48 = v9;
  v49 = v8;
  if (v13 && (-[GKRemoteUIController authToken](self, "authToken"), v27 = objc_claimAutoreleasedReturnValue(), v28 = [v27 isEqualToString:v13], v27, (v28 & 1) == 0))
  {
    [(GKRemoteUIController *)self setAuthToken:v13];
    v29 = 1;
    LODWORD(v7) = 1;
  }

  else
  {
    v29 = 0;
  }

  if (v52)
  {
    [v51 setShouldAllowNearbyMultiplayer:{objc_msgSend(v52, "BOOLValue")}];
    v30 = [MEMORY[0x277D0C010] proxyForLocalPlayer];
    v31 = [v30 utilityServicePrivate];
    [v31 refreshPreferences];
  }

  v32 = [v54 objectForKeyedSubscript:@"authOkUrl"];

  if (v32)
  {
    v33 = [MEMORY[0x277CBEB38] dictionary];
    v34 = [v54 objectForKeyedSubscript:@"authTitle"];

    if (v34)
    {
      v35 = [v54 objectForKeyedSubscript:@"authTitle"];
      [v33 setObject:v35 forKeyedSubscript:@"authTitle"];
    }

    v36 = [v54 objectForKeyedSubscript:@"authOkUrl"];

    if (v36)
    {
      v37 = [v54 objectForKeyedSubscript:@"authOkUrl"];
      [v33 setObject:v37 forKeyedSubscript:@"authOkUrl"];
    }

    v38 = [v54 objectForKeyedSubscript:@"cancelUrl"];

    if (v38)
    {
      v39 = [v54 objectForKeyedSubscript:@"cancelUrl"];
      [v33 setObject:v39 forKeyedSubscript:@"cancelUrl"];
    }

    v40 = [v54 objectForKeyedSubscript:@"authUsername"];

    if (v40)
    {
      v41 = [v54 objectForKeyedSubscript:@"authUsername"];
      [v33 setObject:v41 forKeyedSubscript:@"authUsername"];
      v42 = [(GKRemoteUIController *)self appleID];

      if (!v42)
      {
        [(GKRemoteUIController *)self setAppleID:v41];
      }
    }

    v43 = [v54 objectForKeyedSubscript:@"altDSID"];

    if (v43)
    {
      v44 = [v54 objectForKeyedSubscript:@"altDSID"];
      [v33 setObject:v44 forKeyedSubscript:@"altDSID"];
    }

    v45 = [v54 objectForKeyedSubscript:@"authErrorMessage"];

    if (v45)
    {
      v46 = [v54 objectForKeyedSubscript:@"authErrorMessage"];
      [v33 setObject:v46 forKeyedSubscript:@"authErrorMessage"];
    }

    [(GKRemoteUIController *)self setAuthInfo:v33];
  }

  if ((v29 | v7) == 1)
  {
    [(GKRemoteUIController *)self updateAccountAndMarkComplete:0 completionHandler:v6];
  }

  else
  {
    v6[2](v6);
  }
}

- (id)viewControllers
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [(GKRemoteUIController *)self staticViewControllers];
  if (v4)
  {
    [v3 addObjectsFromArray:v4];
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(GKRemoteUIController *)self objectModels];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v12 + 1) + 8 * i) displayedPages];
        [v3 addObjectsFromArray:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v3;
}

- (int64_t)indexOfVisiblePage
{
  v3 = [(GKRemoteUIController *)self navigationController];

  if (!v3)
  {
    [GKRemoteUIController indexOfVisiblePage];
  }

  v4 = [(GKRemoteUIController *)self objectModels];
  v5 = [v4 lastObject];

  v6 = [(GKRemoteUIController *)self navigationController];
  v7 = [v6 topViewController];

  v8 = [v5 displayedPages];
  v9 = [v8 count];
  while (v9-- >= 1)
  {
    v11 = [v8 objectAtIndexedSubscript:v9];

    if (v7 == v11)
    {
      goto LABEL_8;
    }
  }

  v9 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_8:

  return v9;
}

- (void)pushObjectModel:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v14 = a3;
  [v14 setDelegate:self];
  v6 = [(GKRemoteUIController *)self objectModels];
  v7 = [v6 firstObject];
  v8 = [v7 defaultPages];
  v9 = [v8 firstObject];

  v10 = GKGameCenterUIFrameworkBundle();
  v11 = GKGetLocalizedStringFromTableInBundle();
  [v9 setBackButtonTitle:v11];

  v12 = [(GKRemoteUIController *)self objectModels];
  [v12 addObject:v14];

  v13 = [(GKRemoteUIController *)self navigationController];
  if (v13)
  {
    [v14 presentInParentViewController:v13 animated:v4];
  }
}

- (void)popObjectModelAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(GKRemoteUIController *)self navigationController];

  if (!v5)
  {
    [GKRemoteUIController popObjectModelAnimated:];
  }

  v11 = [(GKRemoteUIController *)self objectModels];
  v6 = [v11 lastObject];
  v7 = [(GKRemoteUIController *)self navigationController];
  v8 = [(GKRemoteUIController *)self indexOfVisiblePage];
  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (v8)
    {
      v9 = 0;
    }

    else
    {
      v9 = v3;
    }

    v10 = [v7 popViewControllerAnimated:v9];
  }

  [v6 setDelegate:0];
  [v11 removeLastObject];
  if (![v11 count])
  {
    [(GKRemoteUIController *)self fireCompletionHandler];
  }
}

- (void)replaceObjectModelAtIndex:(unint64_t)a3 withObjectObjectModel:(id)a4
{
  v7 = a4;
  v8 = [(GKRemoteUIController *)self navigationController];

  if (!v8)
  {
    [GKRemoteUIController replaceObjectModelAtIndex:withObjectObjectModel:];
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __72__GKRemoteUIController_replaceObjectModelAtIndex_withObjectObjectModel___block_invoke;
  v10[3] = &unk_27966CA08;
  v12 = a3;
  v13 = a2;
  v10[4] = self;
  v11 = v7;
  v9 = v7;
  [v9 presentWithBlock:v10];
}

void __72__GKRemoteUIController_replaceObjectModelAtIndex_withObjectObjectModel___block_invoke(uint64_t a1)
{
  v2 = a1 + 32;
  v3 = [*(a1 + 32) objectModels];
  v4 = *(v2 + 16);
  v7 = v3;
  if (v4 >= [v3 count])
  {
    __72__GKRemoteUIController_replaceObjectModelAtIndex_withObjectObjectModel___block_invoke_cold_1();
  }

  [v7 replaceObjectAtIndex:*(a1 + 48) withObject:*(a1 + 40)];
  v5 = [*(a1 + 32) viewControllers];
  v6 = [*(a1 + 32) navigationController];
  [v6 _gkSetViewControllers:v5 transition:*MEMORY[0x277CDA928]];
}

- (void)presentObjectModel:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(GKRemoteUIController *)self navigationController];

  if (!v7)
  {
    [GKRemoteUIController presentObjectModel:animated:];
  }

  v8 = [(GKRemoteUIController *)self presentedRemoteUIController];

  if (v8)
  {
    [GKRemoteUIController presentObjectModel:animated:];
  }

  v9 = objc_alloc_init(MEMORY[0x277D757A0]);
  v10 = [MEMORY[0x277D75418] currentDevice];
  v11 = [v10 userInterfaceIdiom];

  if (v11 == 1)
  {
    [v9 setModalPresentationStyle:16];
  }

  v12 = [(GKRemoteUIController *)self navigationController];
  v13 = [[GKRemoteUIController alloc] initWithObjectModel:v6];

  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __52__GKRemoteUIController_presentObjectModel_animated___block_invoke;
  v18 = &unk_27966A760;
  v19 = v12;
  v20 = self;
  v14 = v12;
  [(GKRemoteUIController *)v13 setCompletionHandler:&v15];
  [(GKRemoteUIController *)v13 presentInParentNavigationController:v9 animated:v4, v15, v16, v17, v18];
  [(GKRemoteUIController *)self setPresentedRemoteUIController:v13];
  [v14 presentViewController:v9 animated:1 completion:0];
}

void __52__GKRemoteUIController_presentObjectModel_animated___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  [*(a1 + 32) dismissViewControllerAnimated:1 completion:0];
  [*(a1 + 40) setPresentedRemoteUIController:0];
  v4 = v5;
  if (v5)
  {
    [*(a1 + 40) setError:v5];
    [*(a1 + 40) fireCompletionHandler];
    v4 = v5;
  }
}

- (void)performAction:(unint64_t)a3 withObjectModel:(id)a4
{
  v15 = a4;
  v7 = [(GKRemoteUIController *)self objectModels];
  if ([v7 count])
  {
    v8 = 1;
  }

  else
  {
    v8 = a3 - 3 >= 2;
  }

  if (v8)
  {
    v9 = a3;
  }

  else
  {
    v9 = 2;
  }

  if (v9 <= 2)
  {
    if (v9 == 1)
    {
      [(GKRemoteUIController *)self fireCompletionHandler];
      goto LABEL_23;
    }

    if (v9 == 2)
    {
      [(GKRemoteUIController *)self pushObjectModel:v15 animated:1];
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  if (v9 == 3)
  {
    -[GKRemoteUIController replaceObjectModelAtIndex:withObjectObjectModel:](self, "replaceObjectModelAtIndex:withObjectObjectModel:", [v7 count] - 1, v15);
    goto LABEL_23;
  }

  if (v9 != 4)
  {
    if (v9 == 5)
    {
      [(GKRemoteUIController *)self presentObjectModel:v15 animated:1];
      goto LABEL_23;
    }

LABEL_22:
    v13 = [MEMORY[0x277CCA890] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"GKRemoteUIController.m" lineNumber:709 description:{@"Unhandled action signal type: %d", v9}];

    goto LABEL_23;
  }

  v10 = [v15 defaultPages];
  v11 = [v10 count];

  if (v11)
  {
    v12 = [v7 count];
    if (v12 <= 1)
    {
      v14 = v12;
      [GKRemoteUIController performAction:withObjectModel:];
      v12 = v14;
    }

    [(GKRemoteUIController *)self replaceObjectModelAtIndex:v12 - 2 withObjectObjectModel:v15];
  }

  [(GKRemoteUIController *)self popObjectModelAnimated:1];
LABEL_23:
}

- (void)loader:(id)a3 receivedObjectModel:(id)a4 actionSignal:(unint64_t)a5
{
  v7 = a4;
  [v7 setDelegate:self];
  v8 = [v7 clientInfo];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __64__GKRemoteUIController_loader_receivedObjectModel_actionSignal___block_invoke;
  v10[3] = &unk_27966A7D0;
  v11 = v7;
  v12 = a5;
  v10[4] = self;
  v9 = v7;
  [(GKRemoteUIController *)self takeValuesFromClientInfo:v8 withCompletionHandler:v10];
}

void __64__GKRemoteUIController_loader_receivedObjectModel_actionSignal___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2[13])
  {
LABEL_6:
    if ([v2 loadingInitialUI] && *(a1 + 48) == 1)
    {
      v18 = *(a1 + 32);
      v26 = [MEMORY[0x277CCA9B8] errorWithDomain:@"GKRemoteUIErrorDomain" code:0 userInfo:0];
      [v18 finishLoadingWithError:v26];
    }

    else
    {
      [*(a1 + 32) finishLoadingWithError:0];
      v20 = *(a1 + 40);
      v19 = *(a1 + 48);
      v21 = *(a1 + 32);

      [v21 performAction:v19 withObjectModel:v20];
    }

    return;
  }

  v3 = [*(a1 + 32) navigationController];

  v2 = *(a1 + 32);
  if (v3)
  {
    if (v2[13])
    {
      v4 = [*(a1 + 32) navigationController];

      v2 = *(a1 + 32);
      if (v4)
      {
        v5 = [v2[13] copy];
        [*(a1 + 32) setAuthInfo:0];
        v6 = [v5 objectForKeyedSubscript:@"authUsername"];
        v7 = MEMORY[0x277CBEBC0];
        v8 = [v5 objectForKeyedSubscript:@"authOkUrl"];
        v9 = [v7 URLWithString:v8];

        v10 = MEMORY[0x277CBEBC0];
        v11 = [v5 objectForKeyedSubscript:@"cancelUrl"];
        v12 = [v10 URLWithString:v11];

        v13 = MEMORY[0x277D0C888];
        v14 = [*(a1 + 32) navigationController];
        v15 = [v13 authenticatorForPlayerWithUsername:v6 password:0 withPresentingViewController:v14];
        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = __64__GKRemoteUIController_loader_receivedObjectModel_actionSignal___block_invoke_2;
        v27[3] = &unk_27966CA30;
        v27[4] = *(a1 + 32);
        v28 = v9;
        v29 = v12;
        v16 = v12;
        v17 = v9;
        [v15 authenticateUsingAuthUIAllowingAppleIDCreation:0 usernameEditable:0 dismissHandler:0 completionHandler:v27];

        return;
      }
    }

    goto LABEL_6;
  }

  v22 = MEMORY[0x277CCA9B8];
  v23 = [v2[13] copy];
  v24 = [v22 errorWithDomain:@"GKRemoteUIErrorDomain" code:3 userInfo:v23];
  [v2 finishLoadingWithError:v24];

  v25 = *(a1 + 32);

  [v25 setAuthInfo:0];
}

void __64__GKRemoteUIController_loader_receivedObjectModel_actionSignal___block_invoke_2(void *a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v19[2] = *MEMORY[0x277D85DE8];
  v9 = a1[4];
  if (a2 && a3 && !a7)
  {
    v10 = a1[5];
    if (a4)
    {
      v11 = a4;
    }

    else
    {
      v11 = a2;
    }

    v18[0] = @"authUsername";
    v18[1] = @"authPassword";
    v19[0] = v11;
    v19[1] = a3;
    v12 = MEMORY[0x277CBEAC0];
    v13 = a4;
    v14 = a3;
    v15 = a2;
    v16 = [v12 dictionaryWithObjects:v19 forKeys:v18 count:2];
    [v9 loadURL:v10 postBody:v16];
  }

  else
  {
    v17 = a1[6];
    v14 = a4;
    v15 = a3;
    v16 = a2;
    [v9 loadURL:v17 postBody:0];
  }
}

- (id)viewControllerForAlertPresentation
{
  v2 = [(GKRemoteUIController *)self navigationController];
  v3 = [v2 topViewController];

  return v3;
}

- (void)objectModelPressedBack:(id)a3
{
  v4 = [(GKRemoteUIController *)self objectModels];
  v5 = [v4 lastObject];

  if (([v5 goBack] & 1) == 0)
  {
    [(GKRemoteUIController *)self popObjectModelAnimated:1];
  }
}

- (void)objectModel:(id)a3 elementDidChange:(id)a4
{
  v5 = [a4 name];
  v6 = [v5 isEqualToString:@"Dismiss"];

  if (v6)
  {

    [(GKRemoteUIController *)self fireCompletionHandler];
  }
}

- (void)objectModel:(id)a3 pressedLink:(id)a4 httpMethod:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = a5;
  [(GKRemoteUIController *)self setUserInteractionEnabled:0];
  v14 = [v13 lowercaseString];

  LOBYTE(v13) = [v14 isEqualToString:@"post"];
  if (v13)
  {
    v15 = [v10 postbackDictionary];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __70__GKRemoteUIController_objectModel_pressedLink_httpMethod_completion___block_invoke;
    v18[3] = &unk_27966AB18;
    v18[4] = self;
    v19 = v15;
    v20 = v11;
    v21 = v12;
    v16 = v15;
    [(GKRemoteUIController *)self updatePostbackDictionary:v16 withHandler:v18];
  }

  else
  {
    v17 = [(GKRemoteUIController *)self playerForRemoteUI];
    [(GKRemoteUIController *)self loadURL:v11 forPlayer:v17 postBody:0];

    (*(v12 + 2))(v12, 1, 0);
  }
}

void __70__GKRemoteUIController_objectModel_pressedLink_httpMethod_completion___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) postbackDataForDictionary:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = [v2 playerForRemoteUI];
  [v2 loadURL:v3 forPlayer:v4 postData:v5];

  (*(*(a1 + 56) + 16))();
}

- (void)objectModel:(id)a3 configureTableView:(id)a4 page:(id)a5
{
  v11 = a5;
  v7 = [a4 tableView];
  [v7 _setTopPadding:0.0];
  [v7 _setBottomPadding:0.0];
  if ([(GKRemoteUIController *)self shouldApplyGameCenterTheme])
  {
    [v7 setSectionFooterHeight:0.0];
    v8 = [(GKRemoteUIController *)self layoutStyle];
    v9 = 60.0;
    if (v8 == 2)
    {
      v9 = 72.0;
    }

    [v7 setRowHeight:v9];
    v10 = [(GKRemoteUIController *)self layoutStyle];
    if (v10 <= 2)
    {
      [v11 setCustomMargin:dbl_24E3679C0[v10]];
    }
  }
}

- (void)objectModel:(id)a3 configureTableSection:(id)a4 page:(id)a5
{
  v9 = a4;
  v6 = [v9 footerView];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v6 setDelegate:self];
  }

  v7 = [v9 attributes];
  v8 = [v7 objectForKeyedSubscript:@"drawTopSeparator"];

  if (v8)
  {
    [v9 setDrawTopSeparator:{objc_msgSend(v8, "BOOLValue")}];
  }
}

- (void)objectModel:(id)a3 configureTableRow:(id)a4 page:(id)a5
{
  v53 = a4;
  v6 = [(GKRemoteUIController *)self shouldApplyGameCenterTheme];
  v7 = v53;
  if (v6)
  {
    v8 = [v53 tableCell];
    if ([(GKRemoteUIController *)self layoutStyle]== 2)
    {
      v9 = 134.0;
    }

    else
    {
      [(GKRemoteUIController *)self layoutStyle];
      v9 = 88.0;
    }

    [v8 setTextFieldOffset:v9];
    v10 = [v53 attributes];
    v11 = [v10 mutableCopy];

    [v11 removeObjectForKey:@"height"];
    [v53 setAttributes:v11];
    v12 = [MEMORY[0x277D75418] currentDevice];
    v13 = [v12 userInterfaceIdiom];

    v14 = 0x277D0C8C0;
    if (v13 == 1 && *MEMORY[0x277D0C8F0] & 1 | ((*MEMORY[0x277D0C258] & 1) == 0))
    {
      v14 = 0x277D0C8B8;
    }

    v15 = objc_alloc_init(*v14);
    v16 = [MEMORY[0x277D0C8B0] textStyle];
    v17 = [v8 editableTextField];
    v18 = [v11 objectForKeyedSubscript:@"editFieldStyle"];
    v19 = [v16 styleWithName:v18 fallback:@"remoteUIEditField" layoutMode:{-[GKRemoteUIController layoutStyle](self, "layoutStyle")}];

    v48 = v19;
    if (v17)
    {
      if (![(GKRemoteUIController *)self layoutStyle])
      {
        [v53 setHeight:50.0];
      }

      if (v19)
      {
        v20 = [v19 replayOnBaseStyle:v15 systemContentSizeDidChange:0];
        [v20 applyToEditField:v17];
      }

      v21 = @"remoteUIEditLabel";
    }

    else
    {
      v21 = @"remoteUILabel";
    }

    v22 = [v8 textLabel];
    v23 = [v11 objectForKeyedSubscript:@"class"];
    v24 = [v23 isEqualToString:@"selectPage"];

    if (v24)
    {
      v25 = @"remoteUISelectLabel";
    }

    else
    {
      v25 = v21;
    }

    v26 = v22;
    v27 = [v11 objectForKeyedSubscript:@"labelStyle"];
    v28 = [v16 styleWithName:v27 fallback:v25 layoutMode:{-[GKRemoteUIController layoutStyle](self, "layoutStyle")}];

    v51 = v28;
    v52 = v26;
    if (v28)
    {
      v29 = [v26 text];

      if (v29)
      {
        v30 = [v51 replayOnBaseStyle:v15 systemContentSizeDidChange:0];
        v31 = objc_alloc(MEMORY[0x277CCA898]);
        [v26 text];
        v49 = v17;
        v32 = v16;
        v33 = v15;
        v35 = v34 = v8;
        v36 = [v30 attributes];
        v37 = [v31 initWithString:v35 attributes:v36];

        v8 = v34;
        v15 = v33;
        v16 = v32;
        v17 = v49;
        [v52 setAttributedText:v37];
      }
    }

    v50 = v8;
    v38 = [v8 detailTextLabel];
    if (v24)
    {
      v39 = @"remoteUISelectField";
    }

    else
    {
      v39 = @"remoteUIDetailLabel";
    }

    v40 = [v11 objectForKeyedSubscript:@"detailLabelStyle"];
    v41 = [v16 styleWithName:v40 fallback:v39 layoutMode:{-[GKRemoteUIController layoutStyle](self, "layoutStyle")}];

    if (v41)
    {
      v42 = [v38 text];

      if (v42)
      {
        v43 = [v41 replayOnBaseStyle:v15 systemContentSizeDidChange:0];
        v44 = objc_alloc(MEMORY[0x277CCA898]);
        v45 = [v38 text];
        v46 = [v43 attributes];
        v47 = [v44 initWithString:v45 attributes:v46];

        [v38 setAttributedText:v47];
      }
    }

    v7 = v53;
  }

  MEMORY[0x2821F96F8](v6, v7);
}

- (Class)objectModel:(id)a3 customHeaderClassForSection:(id)a4
{
  v5 = a4;
  v6 = [v5 attributes];
  v7 = [v6 objectForKeyedSubscript:@"header"];
  if (v7)
  {
    v8 = [(GKRemoteUIController *)self addThemeInfoToAttributes:v6];
    [v5 setAttributes:v8];

    v9 = objc_opt_class();
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (Class)objectModel:(id)a3 customFooterClassForSection:(id)a4
{
  v5 = a4;
  v6 = [v5 attributes];
  v7 = [v6 objectForKeyedSubscript:@"footer"];
  v8 = [v6 objectForKeyedSubscript:@"button"];
  if (v7 | v8)
  {
    v9 = [(GKRemoteUIController *)self addThemeInfoToAttributes:v6];
    [v5 setAttributes:v9];

    v10 = objc_opt_class();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)objectModel:(id)a3 tableHeaderViewForAttributes:(id)a4 page:(id)a5
{
  v6 = [(GKRemoteUIController *)self addThemeInfoToAttributes:a4];
  v7 = [[GKRemoteUITableHeaderView alloc] initWithAttributes:v6];
  [(GKRemoteUITableHeaderView *)v7 setDelegate:self];

  return v7;
}

- (id)objectModel:(id)a3 tableFooterViewForAttributes:(id)a4 page:(id)a5
{
  v6 = [(GKRemoteUIController *)self addThemeInfoToAttributes:a4];
  v7 = [[GKRemoteUITableFooterView alloc] initWithAttributes:v6];
  [(GKRemoteUITableFooterView *)v7 setDelegate:self];

  return v7;
}

- (UINavigationController)navigationController
{
  WeakRetained = objc_loadWeakRetained(&self->_navigationController);

  return WeakRetained;
}

void __71__GKRemoteUIController_updateAccountAndMarkComplete_completionHandler___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_24DE53000, a2, OS_LOG_TYPE_ERROR, "couldn't create account due to error = %@", &v2, 0xCu);
}

- (void)presentInParentNavigationController:animated:.cold.1()
{
  OUTLINED_FUNCTION_0_8();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_5();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)configureFromBagKey:player:withCompletionHandler:.cold.1()
{
  OUTLINED_FUNCTION_0_8();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_5();
  [v0 handleFailureInMethod:@"handler!=nil" object:? file:? lineNumber:? description:?];
}

- (void)loadURL:postData:.cold.1()
{
  OUTLINED_FUNCTION_0_8();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_5();
  [v0 handleFailureInMethod:@"url != nil" object:? file:? lineNumber:? description:?];
}

- (void)loadURL:forPlayer:postData:.cold.1()
{
  OUTLINED_FUNCTION_0_8();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_5();
  [v0 handleFailureInMethod:@"url != nil" object:? file:? lineNumber:? description:?];
}

- (void)takeValuesFromClientInfo:withCompletionHandler:.cold.1()
{
  OUTLINED_FUNCTION_0_8();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_5();
  [v0 handleFailureInMethod:@"handler != nil" object:? file:? lineNumber:? description:?];
}

- (void)indexOfVisiblePage
{
  OUTLINED_FUNCTION_0_8();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_5();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)popObjectModelAnimated:.cold.1()
{
  OUTLINED_FUNCTION_0_8();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_5();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)replaceObjectModelAtIndex:withObjectObjectModel:.cold.1()
{
  OUTLINED_FUNCTION_0_8();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_5();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void __72__GKRemoteUIController_replaceObjectModelAtIndex_withObjectObjectModel___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0_8();
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInMethod:*(v1 + 56) object:*v0 file:@"GKRemoteUIController.m" lineNumber:622 description:@"Index out of range of object models"];
}

- (void)presentObjectModel:animated:.cold.1()
{
  OUTLINED_FUNCTION_0_8();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_5();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)presentObjectModel:animated:.cold.2()
{
  OUTLINED_FUNCTION_0_8();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_5();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)performAction:withObjectModel:.cold.1()
{
  OUTLINED_FUNCTION_0_8();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_5();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end