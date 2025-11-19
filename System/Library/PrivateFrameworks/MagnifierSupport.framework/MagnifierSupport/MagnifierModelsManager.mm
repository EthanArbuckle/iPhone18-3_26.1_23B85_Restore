@interface MagnifierModelsManager
+ (id)shared;
- (MagnifierModelsManager)init;
- (void)updateAssetURLs;
@end

@implementation MagnifierModelsManager

+ (id)shared
{
  if (shared_onceToken != -1)
  {
    +[MagnifierModelsManager shared];
  }

  v3 = shared_Manager;

  return v3;
}

void __32__MagnifierModelsManager_shared__block_invoke()
{
  v0 = objc_alloc_init(MagnifierModelsManager);
  v1 = shared_Manager;
  shared_Manager = v0;
}

- (MagnifierModelsManager)init
{
  v7.receiver = self;
  v7.super_class = MagnifierModelsManager;
  v2 = [(MagnifierModelsManager *)&v7 init];
  if (v2)
  {
    v3 = +[MagnifierAssetsManager sharedInstance];
    [(MagnifierModelsManager *)v2 setDownloadManager:v3];

    v4 = [(MagnifierModelsManager *)v2 downloadManager];
    [v4 setDelegate:v2];

    v5 = [(MagnifierModelsManager *)v2 downloadManager];
    [v5 refreshAssets];

    [(MagnifierModelsManager *)v2 updateAssetURLs];
  }

  return v2;
}

- (void)updateAssetURLs
{
  OUTLINED_FUNCTION_2(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_257BAC000, v0, v1, "[%@]: Sign Detector Model Properties : %@");
}

@end