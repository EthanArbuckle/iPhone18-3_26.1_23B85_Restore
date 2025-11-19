@interface GKAppLevelSignInVisibility
+ (void)didShowBanner;
+ (void)didShowFullscreen;
+ (void)fetchAppLevelVisibilityConstraintsWithHandler:(id)a3;
+ (void)fetchConfigsWithHandler:(id)a3;
@end

@implementation GKAppLevelSignInVisibility

+ (void)fetchConfigsWithHandler:(id)a3
{
  v11[3] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277D0C010] proxyForLocalPlayer];
  v5 = [v4 utilityService];
  v6 = *MEMORY[0x277D0B9D8];
  v11[0] = *MEMORY[0x277D0BD68];
  v11[1] = v6;
  v11[2] = *MEMORY[0x277D0B9D0];
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:3];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __54__GKAppLevelSignInVisibility_fetchConfigsWithHandler___block_invoke;
  v9[3] = &unk_27967F2B8;
  v10 = v3;
  v8 = v3;
  [v5 getStoreBagValuesForKeys:v7 handler:v9];
}

void __54__GKAppLevelSignInVisibility_fetchConfigsWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEAC0]);
  }

  v12 = v3;
  v4 = objc_alloc_init(MEMORY[0x277D0C220]);
  v5 = objc_alloc_init(MEMORY[0x277D0C220]);
  v6 = [v12 integerValueFromKey:*MEMORY[0x277D0B9D8] defaultValue:1];
  v7 = [v5 sheetConfig];
  [v7 setLimit:v6];

  v8 = [v12 integerValueFromKey:*MEMORY[0x277D0B9D0] defaultValue:1];
  v9 = [v5 bannerConfig];
  [v9 setLimit:v8];

  v10 = [v12 integerValueFromKey:*MEMORY[0x277D0BD68] defaultValue:1];
  v11 = [v4 sheetConfig];
  [v11 setLimit:v10];

  (*(*(a1 + 32) + 16))();
}

+ (void)fetchAppLevelVisibilityConstraintsWithHandler:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __76__GKAppLevelSignInVisibility_fetchAppLevelVisibilityConstraintsWithHandler___block_invoke;
  v6[3] = &unk_27967F3A8;
  v7 = v4;
  v5 = v4;
  [a1 fetchConfigsWithHandler:v6];
}

void __76__GKAppLevelSignInVisibility_fetchAppLevelVisibilityConstraintsWithHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = MEMORY[0x277D0C020];
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKAppLevelSignInVisibility.m", 73, "+[GKAppLevelSignInVisibility fetchAppLevelVisibilityConstraintsWithHandler:]_block_invoke"];
  v9 = [v7 dispatchGroupWithName:v8];

  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x2020000000;
  v29 = 0;
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x2020000000;
  v27 = 0;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x2020000000;
  v25 = 0;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __76__GKAppLevelSignInVisibility_fetchAppLevelVisibilityConstraintsWithHandler___block_invoke_2;
  v20[3] = &unk_27967F308;
  v10 = v6;
  v21 = v10;
  v22 = v28;
  v23 = v26;
  [v9 perform:v20];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __76__GKAppLevelSignInVisibility_fetchAppLevelVisibilityConstraintsWithHandler___block_invoke_4;
  v17[3] = &unk_27967F358;
  v11 = v5;
  v18 = v11;
  v19 = v24;
  [v9 perform:v17];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __76__GKAppLevelSignInVisibility_fetchAppLevelVisibilityConstraintsWithHandler___block_invoke_6;
  v12[3] = &unk_27967F380;
  v14 = v28;
  v15 = v26;
  v16 = v24;
  v13 = *(a1 + 32);
  [v9 notifyOnMainQueueWithBlock:v12];

  _Block_object_dispose(v24, 8);
  _Block_object_dispose(v26, 8);
  _Block_object_dispose(v28, 8);
}

void __76__GKAppLevelSignInVisibility_fetchAppLevelVisibilityConstraintsWithHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277D0C228] shared];
  v5 = *(a1 + 32);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __76__GKAppLevelSignInVisibility_fetchAppLevelVisibilityConstraintsWithHandler___block_invoke_3;
  v7[3] = &unk_27967F2E0;
  v9 = *(a1 + 40);
  v8 = v3;
  v6 = v3;
  [v4 promptsDisabledWithConfig:v5 scope:2 handler:v7];
}

uint64_t __76__GKAppLevelSignInVisibility_fetchAppLevelVisibilityConstraintsWithHandler___block_invoke_3(void *a1, char a2, char a3)
{
  *(*(a1[5] + 8) + 24) = a2;
  *(*(a1[6] + 8) + 24) = a3;
  return (*(a1[4] + 16))();
}

void __76__GKAppLevelSignInVisibility_fetchAppLevelVisibilityConstraintsWithHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277D0C228] sharedWithoutPersistence];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __76__GKAppLevelSignInVisibility_fetchAppLevelVisibilityConstraintsWithHandler___block_invoke_5;
  v8[3] = &unk_27967F330;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v9 = v3;
  v10 = v5;
  v7 = v3;
  [v4 loginDisabledWithConfig:v6 scope:3 handler:v8];
}

void __76__GKAppLevelSignInVisibility_fetchAppLevelVisibilityConstraintsWithHandler___block_invoke_6(void *a1)
{
  v2 = objc_alloc_init(GKAppLevelSignInVisibilityData);
  [(GKAppLevelSignInVisibilityData *)v2 setAppLevelFullscreenDisabled:*(*(a1[5] + 8) + 24)];
  [(GKAppLevelSignInVisibilityData *)v2 setAppLevelBannerDisabled:*(*(a1[6] + 8) + 24)];
  [(GKAppLevelSignInVisibilityData *)v2 setProcessLevelPromptDisabled:*(*(a1[7] + 8) + 24)];
  (*(a1[4] + 16))();
}

+ (void)didShowBanner
{
  v2 = [MEMORY[0x277D0C228] shared];
  [v2 didShowBanner];

  v3 = [MEMORY[0x277D0C228] sharedWithoutPersistence];
  [v3 didShowFullscreen];
}

+ (void)didShowFullscreen
{
  v2 = [MEMORY[0x277D0C228] shared];
  [v2 didShowFullscreen];

  v3 = [MEMORY[0x277D0C228] sharedWithoutPersistence];
  [v3 didShowFullscreen];
}

@end