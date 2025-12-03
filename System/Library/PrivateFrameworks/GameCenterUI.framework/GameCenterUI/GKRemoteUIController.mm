@interface GKRemoteUIController
+ (id)remoteUIController;
- (BOOL)isUserInteractionEnabled;
- (Class)objectModel:(id)model customFooterClassForSection:(id)section;
- (Class)objectModel:(id)model customHeaderClassForSection:(id)section;
- (GKRemoteUIController)initWithObjectModel:(id)model;
- (NSString)bagKey;
- (NSURL)fallbackURL;
- (UINavigationController)navigationController;
- (id)addThemeInfoToAttributes:(id)attributes;
- (id)objectModel:(id)model tableFooterViewForAttributes:(id)attributes page:(id)page;
- (id)objectModel:(id)model tableHeaderViewForAttributes:(id)attributes page:(id)page;
- (id)viewControllerForAlertPresentation;
- (id)viewControllers;
- (int)preferredLayoutStyle;
- (int64_t)indexOfVisiblePage;
- (void)configureFromBagKey:(id)key player:(id)player withCompletionHandler:(id)handler;
- (void)didLoadURL:(id)l data:(id)data error:(id)error;
- (void)finishLoadingWithError:(id)error;
- (void)fireCompletionHandler;
- (void)indexOfVisiblePage;
- (void)loadInitialRemoteUIForPlayer:(id)player handler:(id)handler;
- (void)loadInitialRemoteUIWithHandler:(id)handler;
- (void)loadURL:(id)l forPlayer:(id)player postBody:(id)body;
- (void)loadURL:(id)l forPlayer:(id)player postData:(id)data;
- (void)loadURL:(id)l postBody:(id)body;
- (void)loadURL:(id)l postData:(id)data;
- (void)loader:(id)loader receivedObjectModel:(id)model actionSignal:(unint64_t)signal;
- (void)objectModel:(id)model configureTableRow:(id)row page:(id)page;
- (void)objectModel:(id)model configureTableSection:(id)section page:(id)page;
- (void)objectModel:(id)model configureTableView:(id)view page:(id)page;
- (void)objectModel:(id)model elementDidChange:(id)change;
- (void)objectModel:(id)model pressedLink:(id)link httpMethod:(id)method completion:(id)completion;
- (void)objectModelPressedBack:(id)back;
- (void)performAction:(unint64_t)action withObjectModel:(id)model;
- (void)popObjectModelAnimated:(BOOL)animated;
- (void)presentInParentNavigationController:(id)controller animated:(BOOL)animated;
- (void)presentObjectModel:(id)model animated:(BOOL)animated;
- (void)pushObjectModel:(id)model animated:(BOOL)animated;
- (void)replaceObjectModelAtIndex:(unint64_t)index withObjectObjectModel:(id)model;
- (void)setAppleID:(id)d;
- (void)setUserInteractionEnabled:(BOOL)enabled;
- (void)takeValuesFromClientInfo:(id)info withCompletionHandler:(id)handler;
- (void)updateAccountAndMarkComplete:(BOOL)complete completionHandler:(id)handler;
- (void)updatePostbackDictionary:(id)dictionary withHandler:(id)handler;
@end

@implementation GKRemoteUIController

+ (id)remoteUIController
{
  v2 = objc_alloc_init(self);

  return v2;
}

- (GKRemoteUIController)initWithObjectModel:(id)model
{
  modelCopy = model;
  v25.receiver = self;
  v25.super_class = GKRemoteUIController;
  v5 = [(GKRemoteUIController *)&v25 init];
  if (v5)
  {
    localPlayer = [MEMORY[0x277D0C138] localPlayer];
    objc_storeStrong(&v5->_playerForRemoteUI, localPlayer);
    internal = [localPlayer internal];
    playerID = [internal playerID];
    playerID = v5->_playerID;
    v5->_playerID = playerID;

    accountName = [localPlayer accountName];
    appleID = v5->_appleID;
    v5->_appleID = accountName;

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
      lastPathComponent = [v20 lastPathComponent];
      v22 = [v18 stringWithFormat:@"%@ (useCustomBackButtonAction == YES)\n[%s (%s:%d)]", v19, "-[GKRemoteUIController initWithObjectModel:]", objc_msgSend(lastPathComponent, "UTF8String"), 134];

      [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v22}];
    }

    [(RUILoader *)v5->_loader setDelegate:v5];
    if (modelCopy)
    {
      [(GKRemoteUIController *)v5 pushObjectModel:modelCopy animated:0];
    }

    v23 = v5;
  }

  return v5;
}

- (void)setAppleID:(id)d
{
  dCopy = d;
  if (self->_appleID != dCopy)
  {
    v13 = dCopy;
    objc_storeStrong(&self->_appleID, d);
    if (self->_appleID)
    {
      mEMORY[0x277D0C1D8] = [MEMORY[0x277D0C1D8] shared];
      environment = [mEMORY[0x277D0C1D8] environment];

      mEMORY[0x277D0C1C0] = [MEMORY[0x277D0C1C0] sharedController];
      internal = [(GKLocalPlayer *)self->_playerForRemoteUI internal];
      v10 = [mEMORY[0x277D0C1C0] credentialForPlayer:internal environment:environment];

      altDSID = [v10 altDSID];
      altDSID = self->_altDSID;
      self->_altDSID = altDSID;
    }

    else
    {
      [(GKRemoteUIController *)self setAltDSID:0];
    }

    dCopy = v13;
  }
}

- (void)updateAccountAndMarkComplete:(BOOL)complete completionHandler:(id)handler
{
  completeCopy = complete;
  v33 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
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
    authToken = [(GKRemoteUIController *)self authToken];
    appleID = [(GKRemoteUIController *)self appleID];
    playerID = [(GKRemoteUIController *)self playerID];
    *buf = 138412802;
    v28 = authToken;
    v29 = 2112;
    v30 = appleID;
    v31 = 2112;
    v32 = playerID;
    _os_log_impl(&dword_24DE53000, v10, OS_LOG_TYPE_INFO, "Updating account with authToken = “%@”, appleID = “%@”, playerID = “%@”", buf, 0x20u);
  }

  authToken2 = [(GKRemoteUIController *)self authToken];
  if (![authToken2 length])
  {
    goto LABEL_10;
  }

  appleID2 = [(GKRemoteUIController *)self appleID];
  if (![appleID2 length])
  {

LABEL_10:
    goto LABEL_11;
  }

  playerID2 = [(GKRemoteUIController *)self playerID];
  v17 = [playerID2 length];

  if (!v17)
  {
LABEL_11:
    handlerCopy[2](handlerCopy);
    goto LABEL_12;
  }

  proxyForLocalPlayer = [MEMORY[0x277D0C010] proxyForLocalPlayer];
  accountServicePrivate = [proxyForLocalPlayer accountServicePrivate];
  appleID3 = [(GKRemoteUIController *)self appleID];
  playerID3 = [(GKRemoteUIController *)self playerID];
  authToken3 = [(GKRemoteUIController *)self authToken];
  alias = [(GKRemoteUIController *)self alias];
  altDSID = [(GKRemoteUIController *)self altDSID];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __71__GKRemoteUIController_updateAccountAndMarkComplete_completionHandler___block_invoke;
  v25[3] = &unk_27966C990;
  v26 = handlerCopy;
  [accountServicePrivate accountCreated:appleID3 playerID:playerID3 authenticationToken:authToken3 alias:alias altDSID:altDSID finished:completeCopy handler:v25];

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
  navigationController = [(GKRemoteUIController *)self navigationController];
  view = [navigationController view];
  isUserInteractionEnabled = [view isUserInteractionEnabled];

  return isUserInteractionEnabled;
}

- (void)setUserInteractionEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  navigationController = [(GKRemoteUIController *)self navigationController];
  view = [navigationController view];
  [view setUserInteractionEnabled:enabledCopy];
}

- (void)fireCompletionHandler
{
  if (![(GKRemoteUIController *)self complete])
  {
    [(GKRemoteUIController *)self setComplete:1];
    [(GKRemoteUIController *)self setUserInteractionEnabled:1];
    selfCopy = self;
    completionHandler = [(GKRemoteUIController *)selfCopy completionHandler];

    if (completionHandler)
    {
      completionHandler2 = [(GKRemoteUIController *)selfCopy completionHandler];
      error = [(GKRemoteUIController *)selfCopy error];
      (completionHandler2)[2](completionHandler2, selfCopy, error);
    }

    [MEMORY[0x277D75780] _setUseCustomBackButtonAction:{-[GKRemoteUIController previousUseCustomBackButtonActionValue](selfCopy, "previousUseCustomBackButtonActionValue")}];
    [(GKRemoteUIController *)selfCopy setCompletionHandler:0];
  }
}

- (void)presentInParentNavigationController:(id)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  controllerCopy = controller;
  navigationController = [(GKRemoteUIController *)self navigationController];

  if (navigationController)
  {
    [GKRemoteUIController presentInParentNavigationController:animated:];
  }

  [(GKRemoteUIController *)self setNavigationController:controllerCopy];
  viewControllers = [controllerCopy viewControllers];
  v8 = [viewControllers copy];
  [(GKRemoteUIController *)self setStaticViewControllers:v8];

  objectModels = [(GKRemoteUIController *)self objectModels];
  lastObject = [objectModels lastObject];

  if (lastObject)
  {
    [lastObject presentInParentViewController:controllerCopy animated:animatedCopy];
  }
}

- (id)addThemeInfoToAttributes:(id)attributes
{
  v4 = [attributes mutableCopy];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[GKRemoteUIController layoutStyle](self, "layoutStyle")}];
  [v4 setObject:v5 forKeyedSubscript:@"GKLayoutStyle"];

  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[GKRemoteUIController shouldApplyGameCenterTheme](self, "shouldApplyGameCenterTheme")}];
  [v4 setObject:v6 forKeyedSubscript:@"GKApplyTheme"];

  return v4;
}

- (void)configureFromBagKey:(id)key player:(id)player withCompletionHandler:(id)handler
{
  v19[1] = *MEMORY[0x277D85DE8];
  keyCopy = key;
  playerCopy = player;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    [GKRemoteUIController configureFromBagKey:player:withCompletionHandler:];
  }

  v11 = [MEMORY[0x277D0C010] proxyForPlayer:playerCopy];
  utilityServicePrivate = [v11 utilityServicePrivate];
  v19[0] = keyCopy;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __73__GKRemoteUIController_configureFromBagKey_player_withCompletionHandler___block_invoke;
  v16[3] = &unk_27966C9B8;
  v17 = keyCopy;
  v18 = handlerCopy;
  v16[4] = self;
  v14 = keyCopy;
  v15 = handlerCopy;
  [utilityServicePrivate getCredentialInfoAndStoreBagValuesForKeys:v13 handler:v16];
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

- (void)loadInitialRemoteUIWithHandler:(id)handler
{
  [(GKRemoteUIController *)self setLoadHandler:handler];
  [(GKRemoteUIController *)self setLoadingInitialUI:1];
  postBodyForInitialLoad = [(GKRemoteUIController *)self postBodyForInitialLoad];
  v4 = [(GKRemoteUIController *)self url];
  [(GKRemoteUIController *)self loadURL:v4 postBody:postBodyForInitialLoad];
}

- (void)loadInitialRemoteUIForPlayer:(id)player handler:(id)handler
{
  playerCopy = player;
  [(GKRemoteUIController *)self setLoadHandler:handler];
  [(GKRemoteUIController *)self setLoadingInitialUI:1];
  postBodyForInitialLoad = [(GKRemoteUIController *)self postBodyForInitialLoad];
  v7 = [(GKRemoteUIController *)self url];
  [(GKRemoteUIController *)self loadURL:v7 forPlayer:playerCopy postBody:postBodyForInitialLoad];
}

- (void)finishLoadingWithError:(id)error
{
  errorCopy = error;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__GKRemoteUIController_finishLoadingWithError___block_invoke;
  v6[3] = &unk_279669E48;
  v6[4] = self;
  v7 = errorCopy;
  v5 = errorCopy;
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

- (void)loadURL:(id)l forPlayer:(id)player postBody:(id)body
{
  lCopy = l;
  playerCopy = player;
  if (body)
  {
    body = [(GKRemoteUIController *)self postbackDataForDictionary:body];
  }

  [(GKRemoteUIController *)self loadURL:lCopy forPlayer:playerCopy postData:body];
}

- (void)loadURL:(id)l postBody:(id)body
{
  lCopy = l;
  if (body)
  {
    body = [(GKRemoteUIController *)self postbackDataForDictionary:body];
  }

  [(GKRemoteUIController *)self loadURL:lCopy postData:body];
}

- (void)didLoadURL:(id)l data:(id)data error:(id)error
{
  v27[1] = *MEMORY[0x277D85DE8];
  lCopy = l;
  dataCopy = data;
  errorCopy = error;
  if (errorCopy)
  {
    v11 = errorCopy;
    userInfo = [errorCopy userInfo];
    dictionary = [userInfo mutableCopy];

    if (!dictionary)
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
    }

    v14 = *MEMORY[0x277CCA450];
    v15 = [dictionary objectForKeyedSubscript:*MEMORY[0x277CCA450]];

    if (!v15)
    {
      v16 = GKGameCenterUIFrameworkBundle();
      v17 = GKGetLocalizedStringFromTableInBundle();
      [dictionary setObject:v17 forKeyedSubscript:v14];
    }

    v18 = MEMORY[0x277CCA9B8];
    domain = [v11 domain];
    v20 = [v18 errorWithDomain:domain code:objc_msgSend(v11 userInfo:{"code"), dictionary}];

    [(GKRemoteUIController *)self finishLoadingWithError:v20];
  }

  else
  {
    if (dataCopy)
    {
      loader = [(GKRemoteUIController *)self loader];
      [loader loadXMLUIWithData:dataCopy baseURL:lCopy];

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

- (void)loadURL:(id)l postData:(id)data
{
  lCopy = l;
  dataCopy = data;
  if (!lCopy)
  {
    [GKRemoteUIController loadURL:postData:];
  }

  [(GKRemoteUIController *)self setLoading:1];
  if ([lCopy isFileURL])
  {
    v14 = 0;
    v8 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfURL:lCopy options:1 error:&v14];
    v9 = v14;
    [(GKRemoteUIController *)self didLoadURL:lCopy data:v8 error:v9];
  }

  else
  {
    proxyForLocalPlayer = [MEMORY[0x277D0C010] proxyForLocalPlayer];
    utilityServicePrivate = [proxyForLocalPlayer utilityServicePrivate];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __41__GKRemoteUIController_loadURL_postData___block_invoke;
    v12[3] = &unk_27966C9E0;
    v12[4] = self;
    v13 = lCopy;
    [utilityServicePrivate loadDataForURL:v13 postBody:dataCopy completionHandler:v12];
  }
}

- (void)loadURL:(id)l forPlayer:(id)player postData:(id)data
{
  lCopy = l;
  playerCopy = player;
  dataCopy = data;
  if (!lCopy)
  {
    [GKRemoteUIController loadURL:forPlayer:postData:];
  }

  [(GKRemoteUIController *)self setLoading:1];
  if ([lCopy isFileURL])
  {
    v17 = 0;
    v11 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfURL:lCopy options:1 error:&v17];
    v12 = v17;
    [(GKRemoteUIController *)self didLoadURL:lCopy data:v11 error:v12];
  }

  else
  {
    v13 = [MEMORY[0x277D0C010] proxyForPlayer:playerCopy];
    utilityServicePrivate = [v13 utilityServicePrivate];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __51__GKRemoteUIController_loadURL_forPlayer_postData___block_invoke;
    v15[3] = &unk_27966C9E0;
    v15[4] = self;
    v16 = lCopy;
    [utilityServicePrivate loadDataForURL:v16 postBody:dataCopy completionHandler:v15];
  }
}

- (int)preferredLayoutStyle
{
  isPreferences = [MEMORY[0x277D0C048] isPreferences];
  isGameCenter = [MEMORY[0x277D0C048] isGameCenter];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (isPreferences & 1 | ((isGameCenter & 1) == 0))
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (userInterfaceIdiom == 1)
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
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"GKRemoteUIController.m" lineNumber:427 description:@"Subclasses MUST implement fallbackURL"];

  return 0;
}

- (NSString)bagKey
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"GKRemoteUIController.m" lineNumber:433 description:@"Subclasses MUST implement bagKey"];

  return 0;
}

- (void)updatePostbackDictionary:(id)dictionary withHandler:(id)handler
{
  if (handler)
  {
    (*(handler + 2))(handler);
  }
}

- (void)takeValuesFromClientInfo:(id)info withCompletionHandler:(id)handler
{
  infoCopy = info;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    [GKRemoteUIController takeValuesFromClientInfo:withCompletionHandler:];
  }

  mEMORY[0x277D0C1D8] = [MEMORY[0x277D0C1D8] shared];
  v7 = [infoCopy objectForKeyedSubscript:@"firstName"];
  v8 = [infoCopy objectForKeyedSubscript:@"lastName"];
  v9 = [infoCopy objectForKeyedSubscript:@"appleID"];
  v10 = [infoCopy objectForKeyedSubscript:@"altDSID"];
  v11 = [infoCopy objectForKeyedSubscript:@"playerID"];
  v12 = [infoCopy objectForKeyedSubscript:@"alias"];
  v13 = [infoCopy objectForKeyedSubscript:@"authToken"];
  v14 = [infoCopy objectForKeyedSubscript:@"shouldAllowNearbyMultiplayer"];
  v47 = [infoCopy objectForKeyedSubscript:@"isAuthenticated"];
  if ([v47 isEqualToString:@"false"])
  {
    [(GKRemoteUIController *)self setIsServerAuthenticated:0];
  }

  v52 = v14;
  v53 = v10;
  v50 = v7;
  if (v7)
  {
    firstName = [(GKRemoteUIController *)self firstName];
    v16 = [firstName isEqualToString:v7];

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
  lastName = [(GKRemoteUIController *)self lastName];
  v18 = [lastName isEqualToString:v8];

  if ((v18 & 1) == 0)
  {
    [(GKRemoteUIController *)self setLastName:v8];
    LODWORD(v7) = 1;
  }

LABEL_13:
  if (v9)
  {
    appleID = [(GKRemoteUIController *)self appleID];
    v20 = [appleID isEqualToString:v9];

    if ((v20 & 1) == 0)
    {
      [(GKRemoteUIController *)self setAppleID:v9];
      LODWORD(v7) = 1;
    }
  }

  if (v53)
  {
    altDSID = [(GKRemoteUIController *)self altDSID];
    v22 = [altDSID isEqualToString:v53];

    if ((v22 & 1) == 0)
    {
      [(GKRemoteUIController *)self setAltDSID:v53];
      LODWORD(v7) = 1;
    }
  }

  if (v11)
  {
    playerID = [(GKRemoteUIController *)self playerID];
    v24 = [playerID isEqualToString:v11];

    if ((v24 & 1) == 0)
    {
      [(GKRemoteUIController *)self setPlayerID:v11];
      LODWORD(v7) = 1;
    }
  }

  if (v12)
  {
    alias = [(GKRemoteUIController *)self alias];
    v26 = [alias isEqualToString:v12];

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
    [mEMORY[0x277D0C1D8] setShouldAllowNearbyMultiplayer:{objc_msgSend(v52, "BOOLValue")}];
    proxyForLocalPlayer = [MEMORY[0x277D0C010] proxyForLocalPlayer];
    utilityServicePrivate = [proxyForLocalPlayer utilityServicePrivate];
    [utilityServicePrivate refreshPreferences];
  }

  v32 = [infoCopy objectForKeyedSubscript:@"authOkUrl"];

  if (v32)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v34 = [infoCopy objectForKeyedSubscript:@"authTitle"];

    if (v34)
    {
      v35 = [infoCopy objectForKeyedSubscript:@"authTitle"];
      [dictionary setObject:v35 forKeyedSubscript:@"authTitle"];
    }

    v36 = [infoCopy objectForKeyedSubscript:@"authOkUrl"];

    if (v36)
    {
      v37 = [infoCopy objectForKeyedSubscript:@"authOkUrl"];
      [dictionary setObject:v37 forKeyedSubscript:@"authOkUrl"];
    }

    v38 = [infoCopy objectForKeyedSubscript:@"cancelUrl"];

    if (v38)
    {
      v39 = [infoCopy objectForKeyedSubscript:@"cancelUrl"];
      [dictionary setObject:v39 forKeyedSubscript:@"cancelUrl"];
    }

    v40 = [infoCopy objectForKeyedSubscript:@"authUsername"];

    if (v40)
    {
      v41 = [infoCopy objectForKeyedSubscript:@"authUsername"];
      [dictionary setObject:v41 forKeyedSubscript:@"authUsername"];
      appleID2 = [(GKRemoteUIController *)self appleID];

      if (!appleID2)
      {
        [(GKRemoteUIController *)self setAppleID:v41];
      }
    }

    v43 = [infoCopy objectForKeyedSubscript:@"altDSID"];

    if (v43)
    {
      v44 = [infoCopy objectForKeyedSubscript:@"altDSID"];
      [dictionary setObject:v44 forKeyedSubscript:@"altDSID"];
    }

    v45 = [infoCopy objectForKeyedSubscript:@"authErrorMessage"];

    if (v45)
    {
      v46 = [infoCopy objectForKeyedSubscript:@"authErrorMessage"];
      [dictionary setObject:v46 forKeyedSubscript:@"authErrorMessage"];
    }

    [(GKRemoteUIController *)self setAuthInfo:dictionary];
  }

  if ((v29 | v7) == 1)
  {
    [(GKRemoteUIController *)self updateAccountAndMarkComplete:0 completionHandler:handlerCopy];
  }

  else
  {
    handlerCopy[2](handlerCopy);
  }
}

- (id)viewControllers
{
  v17 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  staticViewControllers = [(GKRemoteUIController *)self staticViewControllers];
  if (staticViewControllers)
  {
    [array addObjectsFromArray:staticViewControllers];
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  objectModels = [(GKRemoteUIController *)self objectModels];
  v6 = [objectModels countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(objectModels);
        }

        displayedPages = [*(*(&v12 + 1) + 8 * i) displayedPages];
        [array addObjectsFromArray:displayedPages];
      }

      v7 = [objectModels countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return array;
}

- (int64_t)indexOfVisiblePage
{
  navigationController = [(GKRemoteUIController *)self navigationController];

  if (!navigationController)
  {
    [GKRemoteUIController indexOfVisiblePage];
  }

  objectModels = [(GKRemoteUIController *)self objectModels];
  lastObject = [objectModels lastObject];

  navigationController2 = [(GKRemoteUIController *)self navigationController];
  topViewController = [navigationController2 topViewController];

  displayedPages = [lastObject displayedPages];
  v9 = [displayedPages count];
  while (v9-- >= 1)
  {
    v11 = [displayedPages objectAtIndexedSubscript:v9];

    if (topViewController == v11)
    {
      goto LABEL_8;
    }
  }

  v9 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_8:

  return v9;
}

- (void)pushObjectModel:(id)model animated:(BOOL)animated
{
  animatedCopy = animated;
  modelCopy = model;
  [modelCopy setDelegate:self];
  objectModels = [(GKRemoteUIController *)self objectModels];
  firstObject = [objectModels firstObject];
  defaultPages = [firstObject defaultPages];
  firstObject2 = [defaultPages firstObject];

  v10 = GKGameCenterUIFrameworkBundle();
  v11 = GKGetLocalizedStringFromTableInBundle();
  [firstObject2 setBackButtonTitle:v11];

  objectModels2 = [(GKRemoteUIController *)self objectModels];
  [objectModels2 addObject:modelCopy];

  navigationController = [(GKRemoteUIController *)self navigationController];
  if (navigationController)
  {
    [modelCopy presentInParentViewController:navigationController animated:animatedCopy];
  }
}

- (void)popObjectModelAnimated:(BOOL)animated
{
  animatedCopy = animated;
  navigationController = [(GKRemoteUIController *)self navigationController];

  if (!navigationController)
  {
    [GKRemoteUIController popObjectModelAnimated:];
  }

  objectModels = [(GKRemoteUIController *)self objectModels];
  lastObject = [objectModels lastObject];
  navigationController2 = [(GKRemoteUIController *)self navigationController];
  indexOfVisiblePage = [(GKRemoteUIController *)self indexOfVisiblePage];
  if (indexOfVisiblePage != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (indexOfVisiblePage)
    {
      v9 = 0;
    }

    else
    {
      v9 = animatedCopy;
    }

    v10 = [navigationController2 popViewControllerAnimated:v9];
  }

  [lastObject setDelegate:0];
  [objectModels removeLastObject];
  if (![objectModels count])
  {
    [(GKRemoteUIController *)self fireCompletionHandler];
  }
}

- (void)replaceObjectModelAtIndex:(unint64_t)index withObjectObjectModel:(id)model
{
  modelCopy = model;
  navigationController = [(GKRemoteUIController *)self navigationController];

  if (!navigationController)
  {
    [GKRemoteUIController replaceObjectModelAtIndex:withObjectObjectModel:];
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __72__GKRemoteUIController_replaceObjectModelAtIndex_withObjectObjectModel___block_invoke;
  v10[3] = &unk_27966CA08;
  indexCopy = index;
  v13 = a2;
  v10[4] = self;
  v11 = modelCopy;
  v9 = modelCopy;
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

- (void)presentObjectModel:(id)model animated:(BOOL)animated
{
  animatedCopy = animated;
  modelCopy = model;
  navigationController = [(GKRemoteUIController *)self navigationController];

  if (!navigationController)
  {
    [GKRemoteUIController presentObjectModel:animated:];
  }

  presentedRemoteUIController = [(GKRemoteUIController *)self presentedRemoteUIController];

  if (presentedRemoteUIController)
  {
    [GKRemoteUIController presentObjectModel:animated:];
  }

  v9 = objc_alloc_init(MEMORY[0x277D757A0]);
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    [v9 setModalPresentationStyle:16];
  }

  navigationController2 = [(GKRemoteUIController *)self navigationController];
  v13 = [[GKRemoteUIController alloc] initWithObjectModel:modelCopy];

  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __52__GKRemoteUIController_presentObjectModel_animated___block_invoke;
  v18 = &unk_27966A760;
  v19 = navigationController2;
  selfCopy = self;
  v14 = navigationController2;
  [(GKRemoteUIController *)v13 setCompletionHandler:&v15];
  [(GKRemoteUIController *)v13 presentInParentNavigationController:v9 animated:animatedCopy, v15, v16, v17, v18];
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

- (void)performAction:(unint64_t)action withObjectModel:(id)model
{
  modelCopy = model;
  objectModels = [(GKRemoteUIController *)self objectModels];
  if ([objectModels count])
  {
    v8 = 1;
  }

  else
  {
    v8 = action - 3 >= 2;
  }

  if (v8)
  {
    actionCopy = action;
  }

  else
  {
    actionCopy = 2;
  }

  if (actionCopy <= 2)
  {
    if (actionCopy == 1)
    {
      [(GKRemoteUIController *)self fireCompletionHandler];
      goto LABEL_23;
    }

    if (actionCopy == 2)
    {
      [(GKRemoteUIController *)self pushObjectModel:modelCopy animated:1];
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  if (actionCopy == 3)
  {
    -[GKRemoteUIController replaceObjectModelAtIndex:withObjectObjectModel:](self, "replaceObjectModelAtIndex:withObjectObjectModel:", [objectModels count] - 1, modelCopy);
    goto LABEL_23;
  }

  if (actionCopy != 4)
  {
    if (actionCopy == 5)
    {
      [(GKRemoteUIController *)self presentObjectModel:modelCopy animated:1];
      goto LABEL_23;
    }

LABEL_22:
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"GKRemoteUIController.m" lineNumber:709 description:{@"Unhandled action signal type: %d", actionCopy}];

    goto LABEL_23;
  }

  defaultPages = [modelCopy defaultPages];
  v11 = [defaultPages count];

  if (v11)
  {
    v12 = [objectModels count];
    if (v12 <= 1)
    {
      v14 = v12;
      [GKRemoteUIController performAction:withObjectModel:];
      v12 = v14;
    }

    [(GKRemoteUIController *)self replaceObjectModelAtIndex:v12 - 2 withObjectObjectModel:modelCopy];
  }

  [(GKRemoteUIController *)self popObjectModelAnimated:1];
LABEL_23:
}

- (void)loader:(id)loader receivedObjectModel:(id)model actionSignal:(unint64_t)signal
{
  modelCopy = model;
  [modelCopy setDelegate:self];
  clientInfo = [modelCopy clientInfo];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __64__GKRemoteUIController_loader_receivedObjectModel_actionSignal___block_invoke;
  v10[3] = &unk_27966A7D0;
  v11 = modelCopy;
  signalCopy = signal;
  v10[4] = self;
  v9 = modelCopy;
  [(GKRemoteUIController *)self takeValuesFromClientInfo:clientInfo withCompletionHandler:v10];
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
  navigationController = [(GKRemoteUIController *)self navigationController];
  topViewController = [navigationController topViewController];

  return topViewController;
}

- (void)objectModelPressedBack:(id)back
{
  objectModels = [(GKRemoteUIController *)self objectModels];
  lastObject = [objectModels lastObject];

  if (([lastObject goBack] & 1) == 0)
  {
    [(GKRemoteUIController *)self popObjectModelAnimated:1];
  }
}

- (void)objectModel:(id)model elementDidChange:(id)change
{
  name = [change name];
  v6 = [name isEqualToString:@"Dismiss"];

  if (v6)
  {

    [(GKRemoteUIController *)self fireCompletionHandler];
  }
}

- (void)objectModel:(id)model pressedLink:(id)link httpMethod:(id)method completion:(id)completion
{
  modelCopy = model;
  linkCopy = link;
  completionCopy = completion;
  methodCopy = method;
  [(GKRemoteUIController *)self setUserInteractionEnabled:0];
  lowercaseString = [methodCopy lowercaseString];

  LOBYTE(methodCopy) = [lowercaseString isEqualToString:@"post"];
  if (methodCopy)
  {
    postbackDictionary = [modelCopy postbackDictionary];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __70__GKRemoteUIController_objectModel_pressedLink_httpMethod_completion___block_invoke;
    v18[3] = &unk_27966AB18;
    v18[4] = self;
    v19 = postbackDictionary;
    v20 = linkCopy;
    v21 = completionCopy;
    v16 = postbackDictionary;
    [(GKRemoteUIController *)self updatePostbackDictionary:v16 withHandler:v18];
  }

  else
  {
    playerForRemoteUI = [(GKRemoteUIController *)self playerForRemoteUI];
    [(GKRemoteUIController *)self loadURL:linkCopy forPlayer:playerForRemoteUI postBody:0];

    (*(completionCopy + 2))(completionCopy, 1, 0);
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

- (void)objectModel:(id)model configureTableView:(id)view page:(id)page
{
  pageCopy = page;
  tableView = [view tableView];
  [tableView _setTopPadding:0.0];
  [tableView _setBottomPadding:0.0];
  if ([(GKRemoteUIController *)self shouldApplyGameCenterTheme])
  {
    [tableView setSectionFooterHeight:0.0];
    layoutStyle = [(GKRemoteUIController *)self layoutStyle];
    v9 = 60.0;
    if (layoutStyle == 2)
    {
      v9 = 72.0;
    }

    [tableView setRowHeight:v9];
    layoutStyle2 = [(GKRemoteUIController *)self layoutStyle];
    if (layoutStyle2 <= 2)
    {
      [pageCopy setCustomMargin:dbl_24E3679C0[layoutStyle2]];
    }
  }
}

- (void)objectModel:(id)model configureTableSection:(id)section page:(id)page
{
  sectionCopy = section;
  footerView = [sectionCopy footerView];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [footerView setDelegate:self];
  }

  attributes = [sectionCopy attributes];
  v8 = [attributes objectForKeyedSubscript:@"drawTopSeparator"];

  if (v8)
  {
    [sectionCopy setDrawTopSeparator:{objc_msgSend(v8, "BOOLValue")}];
  }
}

- (void)objectModel:(id)model configureTableRow:(id)row page:(id)page
{
  rowCopy = row;
  shouldApplyGameCenterTheme = [(GKRemoteUIController *)self shouldApplyGameCenterTheme];
  v7 = rowCopy;
  if (shouldApplyGameCenterTheme)
  {
    tableCell = [rowCopy tableCell];
    if ([(GKRemoteUIController *)self layoutStyle]== 2)
    {
      v9 = 134.0;
    }

    else
    {
      [(GKRemoteUIController *)self layoutStyle];
      v9 = 88.0;
    }

    [tableCell setTextFieldOffset:v9];
    attributes = [rowCopy attributes];
    v11 = [attributes mutableCopy];

    [v11 removeObjectForKey:@"height"];
    [rowCopy setAttributes:v11];
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    v14 = 0x277D0C8C0;
    if (userInterfaceIdiom == 1 && *MEMORY[0x277D0C8F0] & 1 | ((*MEMORY[0x277D0C258] & 1) == 0))
    {
      v14 = 0x277D0C8B8;
    }

    v15 = objc_alloc_init(*v14);
    textStyle = [MEMORY[0x277D0C8B0] textStyle];
    editableTextField = [tableCell editableTextField];
    v18 = [v11 objectForKeyedSubscript:@"editFieldStyle"];
    v19 = [textStyle styleWithName:v18 fallback:@"remoteUIEditField" layoutMode:{-[GKRemoteUIController layoutStyle](self, "layoutStyle")}];

    v48 = v19;
    if (editableTextField)
    {
      if (![(GKRemoteUIController *)self layoutStyle])
      {
        [rowCopy setHeight:50.0];
      }

      if (v19)
      {
        v20 = [v19 replayOnBaseStyle:v15 systemContentSizeDidChange:0];
        [v20 applyToEditField:editableTextField];
      }

      v21 = @"remoteUIEditLabel";
    }

    else
    {
      v21 = @"remoteUILabel";
    }

    textLabel = [tableCell textLabel];
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

    v26 = textLabel;
    v27 = [v11 objectForKeyedSubscript:@"labelStyle"];
    v28 = [textStyle styleWithName:v27 fallback:v25 layoutMode:{-[GKRemoteUIController layoutStyle](self, "layoutStyle")}];

    v51 = v28;
    v52 = v26;
    if (v28)
    {
      text = [v26 text];

      if (text)
      {
        v30 = [v51 replayOnBaseStyle:v15 systemContentSizeDidChange:0];
        v31 = objc_alloc(MEMORY[0x277CCA898]);
        [v26 text];
        v49 = editableTextField;
        v32 = textStyle;
        v33 = v15;
        v35 = v34 = tableCell;
        attributes2 = [v30 attributes];
        v37 = [v31 initWithString:v35 attributes:attributes2];

        tableCell = v34;
        v15 = v33;
        textStyle = v32;
        editableTextField = v49;
        [v52 setAttributedText:v37];
      }
    }

    v50 = tableCell;
    detailTextLabel = [tableCell detailTextLabel];
    if (v24)
    {
      v39 = @"remoteUISelectField";
    }

    else
    {
      v39 = @"remoteUIDetailLabel";
    }

    v40 = [v11 objectForKeyedSubscript:@"detailLabelStyle"];
    v41 = [textStyle styleWithName:v40 fallback:v39 layoutMode:{-[GKRemoteUIController layoutStyle](self, "layoutStyle")}];

    if (v41)
    {
      text2 = [detailTextLabel text];

      if (text2)
      {
        v43 = [v41 replayOnBaseStyle:v15 systemContentSizeDidChange:0];
        v44 = objc_alloc(MEMORY[0x277CCA898]);
        text3 = [detailTextLabel text];
        attributes3 = [v43 attributes];
        v47 = [v44 initWithString:text3 attributes:attributes3];

        [detailTextLabel setAttributedText:v47];
      }
    }

    v7 = rowCopy;
  }

  MEMORY[0x2821F96F8](shouldApplyGameCenterTheme, v7);
}

- (Class)objectModel:(id)model customHeaderClassForSection:(id)section
{
  sectionCopy = section;
  attributes = [sectionCopy attributes];
  v7 = [attributes objectForKeyedSubscript:@"header"];
  if (v7)
  {
    v8 = [(GKRemoteUIController *)self addThemeInfoToAttributes:attributes];
    [sectionCopy setAttributes:v8];

    v9 = objc_opt_class();
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (Class)objectModel:(id)model customFooterClassForSection:(id)section
{
  sectionCopy = section;
  attributes = [sectionCopy attributes];
  v7 = [attributes objectForKeyedSubscript:@"footer"];
  v8 = [attributes objectForKeyedSubscript:@"button"];
  if (v7 | v8)
  {
    v9 = [(GKRemoteUIController *)self addThemeInfoToAttributes:attributes];
    [sectionCopy setAttributes:v9];

    v10 = objc_opt_class();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)objectModel:(id)model tableHeaderViewForAttributes:(id)attributes page:(id)page
{
  v6 = [(GKRemoteUIController *)self addThemeInfoToAttributes:attributes];
  v7 = [[GKRemoteUITableHeaderView alloc] initWithAttributes:v6];
  [(GKRemoteUITableHeaderView *)v7 setDelegate:self];

  return v7;
}

- (id)objectModel:(id)model tableFooterViewForAttributes:(id)attributes page:(id)page
{
  v6 = [(GKRemoteUIController *)self addThemeInfoToAttributes:attributes];
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
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
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