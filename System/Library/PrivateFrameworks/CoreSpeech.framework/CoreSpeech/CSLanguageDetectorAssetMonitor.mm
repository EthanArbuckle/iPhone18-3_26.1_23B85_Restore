@interface CSLanguageDetectorAssetMonitor
+ (id)sharedInstance;
- (CSLanguageDetectorAssetMonitor)init;
- (CSLanguageDetectorAssetMonitorDelegate)delegate;
- (void)_supportedLocale:(id)locale;
- (void)startMonitor;
- (void)supportedLocale:(id)locale;
@end

@implementation CSLanguageDetectorAssetMonitor

- (CSLanguageDetectorAssetMonitorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_supportedLocale:(id)locale
{
  localeCopy = locale;
  if (localeCopy)
  {
    if ([MEMORY[0x277D018F8] supportLanguageDetector])
    {
      v4 = objc_alloc_init(CSAssetDownloadingOption);
      [(CSAssetDownloadingOption *)v4 setAllowLanguageDetectorAssetDownloading:1];
      v5 = +[CSAssetManager sharedManager];
      [v5 setAssetDownloadingOption:v4];

      v6 = +[CSAssetManager sharedManager];
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __51__CSLanguageDetectorAssetMonitor__supportedLocale___block_invoke;
      v7[3] = &unk_2784C6B00;
      v8 = localeCopy;
      [v6 assetOfType:2 language:@"en-US" completion:v7];
    }

    else
    {
      v4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01590] code:1052 userInfo:0];
      (*(localeCopy + 2))(localeCopy, 0, v4);
    }
  }
}

void __51__CSLanguageDetectorAssetMonitor__supportedLocale___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = *(a1 + 32);
    v8 = [v5 languageDetectorSupportedLocale];
    (*(v7 + 16))(v7, v8, 0);
  }

  else
  {
    v9 = *MEMORY[0x277D015D8];
    if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_ERROR))
    {
      v11 = v9;
      v12 = [v6 localizedDescription];
      v13 = 136315394;
      v14 = "[CSLanguageDetectorAssetMonitor _supportedLocale:]_block_invoke";
      v15 = 2114;
      v16 = v12;
      _os_log_error_impl(&dword_222E4D000, v11, OS_LOG_TYPE_ERROR, "%s LanguageDetector supported locale is nil : %{public}@", &v13, 0x16u);
    }

    (*(*(a1 + 32) + 16))();
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)supportedLocale:(id)locale
{
  localeCopy = locale;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__CSLanguageDetectorAssetMonitor_supportedLocale___block_invoke;
  v7[3] = &unk_2784C6E98;
  v7[4] = self;
  v8 = localeCopy;
  v6 = localeCopy;
  dispatch_async(queue, v7);
}

- (void)startMonitor
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__CSLanguageDetectorAssetMonitor_startMonitor__block_invoke;
  block[3] = &unk_2784C6FD0;
  block[4] = self;
  dispatch_async(queue, block);
}

void __46__CSLanguageDetectorAssetMonitor_startMonitor__block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if (*(v1 + 8) == -1)
  {
    v3 = *(v1 + 24);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __46__CSLanguageDetectorAssetMonitor_startMonitor__block_invoke_2;
    handler[3] = &unk_2784C6BA0;
    handler[4] = v1;
    notify_register_dispatch("com.apple.MobileAsset.LanguageDetectorAssets.ma.new-asset-installed", (v1 + 8), v3, handler);
  }

  else
  {
    v2 = *MEMORY[0x277D015D8];
    if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v7 = "[CSLanguageDetectorAssetMonitor startMonitor]_block_invoke";
      _os_log_error_impl(&dword_222E4D000, v2, OS_LOG_TYPE_ERROR, "%s Cannot start monitoring language detector asset, since we already registered", buf, 0xCu);
    }
  }

  v4 = *MEMORY[0x277D85DE8];
}

uint64_t __46__CSLanguageDetectorAssetMonitor_startMonitor__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __46__CSLanguageDetectorAssetMonitor_startMonitor__block_invoke_3;
  v3[3] = &unk_2784C36E8;
  v3[4] = v1;
  return [v1 _supportedLocale:v3];
}

void __46__CSLanguageDetectorAssetMonitor_startMonitor__block_invoke_3(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained((*(a1 + 32) + 16));
    [v5 languageDetectorAssetMonitor:*(a1 + 32) didReceiveNewAssetWithSupportLocale:v6];
  }
}

- (CSLanguageDetectorAssetMonitor)init
{
  v7.receiver = self;
  v7.super_class = CSLanguageDetectorAssetMonitor;
  v2 = [(CSLanguageDetectorAssetMonitor *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_notifyToken = -1;
    v4 = dispatch_queue_create("CSLanguageDetectorAssetMonitor", 0);
    queue = v3->_queue;
    v3->_queue = v4;
  }

  return v3;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_3511 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_3511, &__block_literal_global_3512);
  }

  v3 = sharedInstance_sharedInstance_3513;

  return v3;
}

void __48__CSLanguageDetectorAssetMonitor_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(CSLanguageDetectorAssetMonitor);
  v1 = sharedInstance_sharedInstance_3513;
  sharedInstance_sharedInstance_3513 = v0;
}

@end