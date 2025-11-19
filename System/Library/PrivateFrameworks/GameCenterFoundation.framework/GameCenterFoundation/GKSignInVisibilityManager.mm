@interface GKSignInVisibilityManager
- (GKSignInVisibilityManager)initWithFullscreenDefaultsKey:(id)a3 bannerDefaultsKey:(id)a4;
- (void)bannerDisabledWithConfig:(id)a3 handler:(id)a4;
- (void)bannerDisabledWithConfig:(id)a3 scope:(int64_t)a4 handler:(id)a5;
- (void)didShowBanner;
- (void)didShowFullscreen;
- (void)loginDisabledWithConfig:(id)a3 handler:(id)a4;
- (void)loginDisabledWithConfig:(id)a3 scope:(int64_t)a4 handler:(id)a5;
- (void)promptsDisabledWithConfig:(id)a3 handler:(id)a4;
- (void)promptsDisabledWithConfig:(id)a3 scope:(int64_t)a4 handler:(id)a5;
- (void)reset;
@end

@implementation GKSignInVisibilityManager

- (GKSignInVisibilityManager)initWithFullscreenDefaultsKey:(id)a3 bannerDefaultsKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = GKSignInVisibilityManager;
  v8 = [(GKSignInVisibilityManager *)&v14 init];
  if (v8)
  {
    v9 = [[GKLimitedPresentationManager alloc] initWithDefaultsKey:v6];
    fullscreenManager = v8->_fullscreenManager;
    v8->_fullscreenManager = v9;

    v11 = [[GKLimitedPresentationManager alloc] initWithDefaultsKey:v7];
    bannerManager = v8->_bannerManager;
    v8->_bannerManager = v11;
  }

  return v8;
}

- (void)promptsDisabledWithConfig:(id)a3 handler:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __63__GKSignInVisibilityManager_promptsDisabledWithConfig_handler___block_invoke;
  v8[3] = &unk_2785DD7A8;
  v9 = v6;
  v7 = v6;
  [(GKSignInVisibilityManager *)self promptsDisabledWithConfig:a3 scope:0 handler:v8];
}

- (void)promptsDisabledWithConfig:(id)a3 scope:(int64_t)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a5;
  objc_initWeak(&location, self);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __69__GKSignInVisibilityManager_promptsDisabledWithConfig_scope_handler___block_invoke;
  v12[3] = &unk_2785DD7F8;
  objc_copyWeak(v15, &location);
  v10 = v8;
  v13 = v10;
  v15[1] = a4;
  v11 = v9;
  v14 = v11;
  [(GKSignInVisibilityManager *)self loginDisabledWithConfig:v10 scope:a4 handler:v12];

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

- (void)bannerDisabledWithConfig:(id)a3 handler:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __62__GKSignInVisibilityManager_bannerDisabledWithConfig_handler___block_invoke;
  v8[3] = &unk_2785DD820;
  v9 = v6;
  v7 = v6;
  [(GKSignInVisibilityManager *)self bannerDisabledWithConfig:a3 scope:0 handler:v8];
}

- (void)bannerDisabledWithConfig:(id)a3 scope:(int64_t)a4 handler:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [[GKLimitedPresentationContext alloc] initWithScope:a4 elementType:1];
  v11 = [(GKSignInVisibilityManager *)self bannerManager];
  v12 = [v9 bannerConfig];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __68__GKSignInVisibilityManager_bannerDisabledWithConfig_scope_handler___block_invoke;
  v14[3] = &unk_2785DD820;
  v15 = v8;
  v13 = v8;
  [v11 presentationDisabledWithConfig:v12 context:v10 completionHandler:v14];
}

- (void)loginDisabledWithConfig:(id)a3 handler:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __61__GKSignInVisibilityManager_loginDisabledWithConfig_handler___block_invoke;
  v8[3] = &unk_2785DD820;
  v9 = v6;
  v7 = v6;
  [(GKSignInVisibilityManager *)self loginDisabledWithConfig:a3 scope:0 handler:v8];
}

- (void)loginDisabledWithConfig:(id)a3 scope:(int64_t)a4 handler:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [[GKLimitedPresentationContext alloc] initWithScope:a4 elementType:2];
  v11 = [(GKSignInVisibilityManager *)self fullscreenManager];
  v12 = [v9 sheetConfig];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __67__GKSignInVisibilityManager_loginDisabledWithConfig_scope_handler___block_invoke;
  v14[3] = &unk_2785DD820;
  v15 = v8;
  v13 = v8;
  [v11 presentationDisabledWithConfig:v12 context:v10 completionHandler:v14];
}

- (void)reset
{
  v3 = [(GKSignInVisibilityManager *)self bannerManager];
  [v3 resetWithCompletionHandler:&__block_literal_global_3];

  v4 = [(GKSignInVisibilityManager *)self fullscreenManager];
  [v4 resetWithCompletionHandler:&__block_literal_global_26];
}

- (void)didShowBanner
{
  v2 = [(GKSignInVisibilityManager *)self bannerManager];
  [v2 didPresentWithCompletionHandler:&__block_literal_global_28];
}

- (void)didShowFullscreen
{
  v2 = [(GKSignInVisibilityManager *)self fullscreenManager];
  [v2 didPresentWithCompletionHandler:&__block_literal_global_30];
}

@end