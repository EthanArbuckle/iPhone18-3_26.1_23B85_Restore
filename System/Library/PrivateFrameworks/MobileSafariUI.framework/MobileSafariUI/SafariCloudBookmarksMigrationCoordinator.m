@interface SafariCloudBookmarksMigrationCoordinator
+ (id)migrationCoordinator;
- (BOOL)_evaluateMigrationEnabled;
- (SafariCloudBookmarksMigrationCoordinator)initWithSyncAgent:(id)a3;
- (void)_detectedLocalMigrationStateTransition:(id)a3;
- (void)dealloc;
- (void)getLocalMigrationStateForMigrationCoordinator:(id)a3 completionHandler:(id)a4;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
@end

@implementation SafariCloudBookmarksMigrationCoordinator

+ (id)migrationCoordinator
{
  if (migrationCoordinator_onceToken != -1)
  {
    +[SafariCloudBookmarksMigrationCoordinator migrationCoordinator];
  }

  v3 = migrationCoordinator_coordinator;

  return v3;
}

void __64__SafariCloudBookmarksMigrationCoordinator_migrationCoordinator__block_invoke()
{
  v0 = [MEMORY[0x277D49B18] sharedProxy];
  v1 = [[SafariCloudBookmarksMigrationCoordinator alloc] initWithSyncAgent:v0];
  v2 = migrationCoordinator_coordinator;
  migrationCoordinator_coordinator = v1;

  v3 = SafariCloudBookmarksMigrationCoordinatorLogsDirectoryURL();
  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v9 = 0;
  v5 = [v4 createDirectoryAtURL:v3 withIntermediateDirectories:1 attributes:0 error:&v9];
  v6 = v9;

  if ((v5 & 1) == 0)
  {
    v7 = WBS_LOG_CHANNEL_PREFIXCloudBookmarks();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __64__SafariCloudBookmarksMigrationCoordinator_migrationCoordinator__block_invoke_cold_1(v7, v6);
    }
  }

  v8 = [objc_alloc(MEMORY[0x277D49A10]) initWithDirectoryURL:v3 logName:@"migrationEligibility" maximumLogAge:60];
  [migrationCoordinator_coordinator setKeyActionsLogger:v8];
}

- (BOOL)_evaluateMigrationEnabled
{
  if ([MEMORY[0x277D49A08] hasInternalContent])
  {
    v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v3 = [v2 integerForKey:*MEMORY[0x277D4A188]];

    if (v3 == -1)
    {
      return 0;
    }
  }

  v4 = +[FeatureManager sharedFeatureManager];
  v5 = [v4 isCloudKitBookmarksAvailable];

  return v5;
}

- (SafariCloudBookmarksMigrationCoordinator)initWithSyncAgent:(id)a3
{
  v11.receiver = self;
  v11.super_class = SafariCloudBookmarksMigrationCoordinator;
  v3 = [(WBSCloudBookmarksMigrationCoordinator *)&v11 initWithSyncAgent:a3 localDataProvider:self];
  v4 = v3;
  if (v3)
  {
    [(WBSCloudBookmarksMigrationCoordinator *)v3 setMigrationEnabled:[(SafariCloudBookmarksMigrationCoordinator *)v3 _evaluateMigrationEnabled]];
    v5 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [v5 addObserver:v4 forKeyPath:*MEMORY[0x277D4A188] options:0 context:kvoContext_2];
    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    v7 = *MEMORY[0x277D7B5F8];
    v8 = [MEMORY[0x277D7B5A8] mainBookmarkCollection];
    [v6 addObserver:v4 selector:sel__detectedLocalMigrationStateTransition_ name:v7 object:v8];

    v9 = v4;
  }

  return v4;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x277D7B5F8] object:0];
  v4 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v4 removeObserver:self forKeyPath:*MEMORY[0x277D4A188] context:kvoContext_2];

  v5.receiver = self;
  v5.super_class = SafariCloudBookmarksMigrationCoordinator;
  [(SafariCloudBookmarksMigrationCoordinator *)&v5 dealloc];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (kvoContext_2 == a6)
  {
    if ([a3 isEqualToString:{*MEMORY[0x277D4A188], a4, a5}])
    {
      v7 = [(SafariCloudBookmarksMigrationCoordinator *)self _evaluateMigrationEnabled];

      [(WBSCloudBookmarksMigrationCoordinator *)self setMigrationEnabled:v7];
    }
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SafariCloudBookmarksMigrationCoordinator;
    [(SafariCloudBookmarksMigrationCoordinator *)&v8 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:?];
  }
}

- (void)_detectedLocalMigrationStateTransition:(id)a3
{
  v12 = [a3 userInfo];
  v4 = [v12 safari_numberForKey:*MEMORY[0x277D7B628]];
  v5 = [v12 safari_numberForKey:*MEMORY[0x277D7B648]];
  v6 = v5;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v8 = [v4 integerValue];
    v9 = [v6 integerValue];
    if ((v8 - 4) >= 0xFFFFFFFFFFFFFFFDLL && v9 == 0)
    {
      [(WBSCloudBookmarksMigrationCoordinator *)self startCoordinatingMigration];
      v11 = [MEMORY[0x277D7B5A8] safariBookmarkCollection];
      [v11 _postBookmarksChangedSyncNotification];
    }
  }
}

- (void)getLocalMigrationStateForMigrationCoordinator:(id)a3 completionHandler:(id)a4
{
  v4 = a4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __108__SafariCloudBookmarksMigrationCoordinator_getLocalMigrationStateForMigrationCoordinator_completionHandler___block_invoke;
  block[3] = &unk_2781D4D90;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __108__SafariCloudBookmarksMigrationCoordinator_getLocalMigrationStateForMigrationCoordinator_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D7B5A8] mainBookmarkCollection];
  v3 = v2;
  if (v2)
  {
    [v2 _cloudKitLocalMigrationState];
  }

  (*(*(a1 + 32) + 16))();
}

void __64__SafariCloudBookmarksMigrationCoordinator_migrationCoordinator__block_invoke_cold_1(void *a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  v5 = 138543362;
  v6 = v4;
  _os_log_error_impl(&dword_215819000, v3, OS_LOG_TYPE_ERROR, "Could not create migration coordinator logs directory: %{public}@", &v5, 0xCu);
}

@end