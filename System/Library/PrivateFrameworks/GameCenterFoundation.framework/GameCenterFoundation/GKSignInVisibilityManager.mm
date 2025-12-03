@interface GKSignInVisibilityManager
- (GKSignInVisibilityManager)initWithFullscreenDefaultsKey:(id)key bannerDefaultsKey:(id)defaultsKey;
- (void)bannerDisabledWithConfig:(id)config handler:(id)handler;
- (void)bannerDisabledWithConfig:(id)config scope:(int64_t)scope handler:(id)handler;
- (void)didShowBanner;
- (void)didShowFullscreen;
- (void)loginDisabledWithConfig:(id)config handler:(id)handler;
- (void)loginDisabledWithConfig:(id)config scope:(int64_t)scope handler:(id)handler;
- (void)promptsDisabledWithConfig:(id)config handler:(id)handler;
- (void)promptsDisabledWithConfig:(id)config scope:(int64_t)scope handler:(id)handler;
- (void)reset;
@end

@implementation GKSignInVisibilityManager

- (GKSignInVisibilityManager)initWithFullscreenDefaultsKey:(id)key bannerDefaultsKey:(id)defaultsKey
{
  keyCopy = key;
  defaultsKeyCopy = defaultsKey;
  v14.receiver = self;
  v14.super_class = GKSignInVisibilityManager;
  v8 = [(GKSignInVisibilityManager *)&v14 init];
  if (v8)
  {
    v9 = [[GKLimitedPresentationManager alloc] initWithDefaultsKey:keyCopy];
    fullscreenManager = v8->_fullscreenManager;
    v8->_fullscreenManager = v9;

    v11 = [[GKLimitedPresentationManager alloc] initWithDefaultsKey:defaultsKeyCopy];
    bannerManager = v8->_bannerManager;
    v8->_bannerManager = v11;
  }

  return v8;
}

- (void)promptsDisabledWithConfig:(id)config handler:(id)handler
{
  handlerCopy = handler;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __63__GKSignInVisibilityManager_promptsDisabledWithConfig_handler___block_invoke;
  v8[3] = &unk_2785DD7A8;
  v9 = handlerCopy;
  v7 = handlerCopy;
  [(GKSignInVisibilityManager *)self promptsDisabledWithConfig:config scope:0 handler:v8];
}

- (void)promptsDisabledWithConfig:(id)config scope:(int64_t)scope handler:(id)handler
{
  configCopy = config;
  handlerCopy = handler;
  objc_initWeak(&location, self);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __69__GKSignInVisibilityManager_promptsDisabledWithConfig_scope_handler___block_invoke;
  v12[3] = &unk_2785DD7F8;
  objc_copyWeak(v15, &location);
  v10 = configCopy;
  v13 = v10;
  v15[1] = scope;
  v11 = handlerCopy;
  v14 = v11;
  [(GKSignInVisibilityManager *)self loginDisabledWithConfig:v10 scope:scope handler:v12];

  objc_destroyWeak(v15);
  objc_destroyWeak(&location);
}

void __69__GKSignInVisibilityManager_promptsDisabledWithConfig_scope_handler___block_invoke(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = *(a1 + 56);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __69__GKSignInVisibilityManager_promptsDisabledWithConfig_scope_handler___block_invoke_2;
  v7[3] = &unk_2785DD7D0;
  v6 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = a2;
  [WeakRetained bannerDisabledWithConfig:v6 scope:v5 handler:v7];
}

- (void)bannerDisabledWithConfig:(id)config handler:(id)handler
{
  handlerCopy = handler;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __62__GKSignInVisibilityManager_bannerDisabledWithConfig_handler___block_invoke;
  v8[3] = &unk_2785DD820;
  v9 = handlerCopy;
  v7 = handlerCopy;
  [(GKSignInVisibilityManager *)self bannerDisabledWithConfig:config scope:0 handler:v8];
}

- (void)bannerDisabledWithConfig:(id)config scope:(int64_t)scope handler:(id)handler
{
  handlerCopy = handler;
  configCopy = config;
  v10 = [[GKLimitedPresentationContext alloc] initWithScope:scope elementType:1];
  bannerManager = [(GKSignInVisibilityManager *)self bannerManager];
  bannerConfig = [configCopy bannerConfig];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __68__GKSignInVisibilityManager_bannerDisabledWithConfig_scope_handler___block_invoke;
  v14[3] = &unk_2785DD820;
  v15 = handlerCopy;
  v13 = handlerCopy;
  [bannerManager presentationDisabledWithConfig:bannerConfig context:v10 completionHandler:v14];
}

- (void)loginDisabledWithConfig:(id)config handler:(id)handler
{
  handlerCopy = handler;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __61__GKSignInVisibilityManager_loginDisabledWithConfig_handler___block_invoke;
  v8[3] = &unk_2785DD820;
  v9 = handlerCopy;
  v7 = handlerCopy;
  [(GKSignInVisibilityManager *)self loginDisabledWithConfig:config scope:0 handler:v8];
}

- (void)loginDisabledWithConfig:(id)config scope:(int64_t)scope handler:(id)handler
{
  handlerCopy = handler;
  configCopy = config;
  v10 = [[GKLimitedPresentationContext alloc] initWithScope:scope elementType:2];
  fullscreenManager = [(GKSignInVisibilityManager *)self fullscreenManager];
  sheetConfig = [configCopy sheetConfig];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __67__GKSignInVisibilityManager_loginDisabledWithConfig_scope_handler___block_invoke;
  v14[3] = &unk_2785DD820;
  v15 = handlerCopy;
  v13 = handlerCopy;
  [fullscreenManager presentationDisabledWithConfig:sheetConfig context:v10 completionHandler:v14];
}

- (void)reset
{
  bannerManager = [(GKSignInVisibilityManager *)self bannerManager];
  [bannerManager resetWithCompletionHandler:&__block_literal_global_3];

  fullscreenManager = [(GKSignInVisibilityManager *)self fullscreenManager];
  [fullscreenManager resetWithCompletionHandler:&__block_literal_global_26];
}

- (void)didShowBanner
{
  bannerManager = [(GKSignInVisibilityManager *)self bannerManager];
  [bannerManager didPresentWithCompletionHandler:&__block_literal_global_28];
}

- (void)didShowFullscreen
{
  fullscreenManager = [(GKSignInVisibilityManager *)self fullscreenManager];
  [fullscreenManager didPresentWithCompletionHandler:&__block_literal_global_30];
}

@end