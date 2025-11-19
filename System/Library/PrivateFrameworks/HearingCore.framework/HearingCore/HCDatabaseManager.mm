@interface HCDatabaseManager
- (BOOL)saveIfPossible;
- (HCDatabaseManager)init;
- (id)databaseFilePath;
- (void)contentDidUpdate:(id)a3;
- (void)dealloc;
- (void)setupDatabase;
- (void)storesWillChange:(id)a3;
@end

@implementation HCDatabaseManager

void __34__HCDatabaseManager_setupDatabase__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Loaded stores %@", a3];
  [v3 logMessage:v4];
}

- (void)setupDatabase
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1D952C000, a2, OS_LOG_TYPE_ERROR, "Database Manager: Protected state, will not create database: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void __25__HCDatabaseManager_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained logMessage:@"Auth changed"];

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 setupDatabase];

  v4 = objc_loadWeakRetained((a1 + 32));
  [v4 saveIfPossible];
}

- (BOOL)saveIfPossible
{
  v2 = self;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x3032000000;
  v6[3] = __Block_byref_object_copy__1;
  v6[4] = __Block_byref_object_dispose__1;
  v7 = 0;
  v3 = [(HCDatabaseManager *)self managedObjectContext];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __35__HCDatabaseManager_saveIfPossible__block_invoke;
  v5[3] = &unk_1E857EF80;
  v5[4] = v2;
  v5[5] = v6;
  v5[6] = &v8;
  [v3 performBlockAndWait:v5];

  LOBYTE(v2) = *(v9 + 24);
  _Block_object_dispose(v6, 8);

  _Block_object_dispose(&v8, 8);
  return v2;
}

void __35__HCDatabaseManager_saveIfPossible__block_invoke(uint64_t a1)
{
  v2 = +[HCUtilities isProtectedDataAvailable];
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [*(a1 + 32) managedObjectContext];
    v5 = [v4 persistentStoreCoordinator];
    v6 = [v5 persistentStores];
    if ([v6 count])
    {
      v7 = [*(a1 + 32) managedObjectContext];
      v8 = [v7 hasChanges];

      if (v8)
      {
        v9 = [*(a1 + 32) managedObjectContext];
        v10 = *(*(a1 + 40) + 8);
        obj = *(v10 + 40);
        [v9 save:&obj];
        objc_storeStrong((v10 + 40), obj);

        *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 40) + 8) + 40) == 0;
        v11 = *(a1 + 32);
        v12 = *(*(*(a1 + 40) + 8) + 40);
        if (*(*(*(a1 + 48) + 8) + 24))
        {
          [MEMORY[0x1E696AEC0] stringWithFormat:@"Updated DB %@", *(*(*(a1 + 40) + 8) + 40)];
        }

        else
        {
          [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed DB save with err %@", *(*(*(a1 + 40) + 8) + 40)];
        }
        v19 = ;
        [v11 logMessage:v19];

        return;
      }
    }

    else
    {
    }

    v13 = *(a1 + 32);
    v14 = MEMORY[0x1E696AEC0];
    v20 = [v13 managedObjectContext];
    v15 = [v20 persistentStoreCoordinator];
    v16 = [v15 persistentStores];
    v17 = [*(a1 + 32) managedObjectContext];
    v18 = [v14 stringWithFormat:@"No persistent stores[%@], or changes:[%d]", v16, objc_msgSend(v17, "hasChanges")];
    [v13 logMessage:v18];
  }

  else
  {
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Protected data state, not saving"];
    [v3 logMessage:v20];
  }
}

- (HCDatabaseManager)init
{
  v11.receiver = self;
  v11.super_class = HCDatabaseManager;
  v2 = [(HCDatabaseManager *)&v11 init];
  v3 = v2;
  if (v2)
  {
    [(HCDatabaseManager *)v2 setupDatabase];
  }

  if (MKBDeviceFormattedForContentProtection())
  {
    objc_initWeak(&location, v3);
    v4 = *MEMORY[0x1E69B1A70];
    v5 = MEMORY[0x1E69E96A0];
    v6 = MEMORY[0x1E69E96A0];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __25__HCDatabaseManager_init__block_invoke;
    v8[3] = &unk_1E857EF30;
    objc_copyWeak(&v9, &location);
    notify_register_dispatch(v4, &v3->_contentProtectionNotifyToken, v5, v8);

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }

  return v3;
}

- (id)databaseFilePath
{
  v3 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
  v4 = [v3 lastObject];
  v5 = [v4 stringByAppendingPathComponent:@"Accessibility"];

  v6 = [MEMORY[0x1E696AAE8] mainBundle];
  v7 = [v6 bundleIdentifier];
  v8 = [v7 isEqualToString:@"com.apple.accessibility.HearingTestApp"];

  if (v8)
  {

    v5 = @"/var/mobile/Library/Accessibility";
  }

  v9 = [(HCDatabaseManager *)self cloudKitContainer];
  v10 = [(__CFString *)v5 stringByAppendingPathComponent:v9];
  v11 = [v10 stringByAppendingPathExtension:@"sqlite"];

  v12 = [MEMORY[0x1E695DFF8] fileURLWithPath:v11];

  return v12;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  [(HCDatabaseManager *)self setManagedObjectContext:0];
  v4.receiver = self;
  v4.super_class = HCDatabaseManager;
  [(HCDatabaseManager *)&v4 dealloc];
}

- (void)storesWillChange:(id)a3
{
  v4 = [(HCDatabaseManager *)self managedObjectContext];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __38__HCDatabaseManager_storesWillChange___block_invoke;
  v5[3] = &unk_1E857EDF0;
  v5[4] = self;
  [v4 performBlock:v5];
}

void __38__HCDatabaseManager_storesWillChange___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = [v2 hasChanges];

  v4 = *(a1 + 32);
  if (v3)
  {

    [v4 saveIfPossible];
  }

  else
  {
    v5 = [v4 managedObjectContext];
    [v5 reset];
  }
}

- (void)contentDidUpdate:(id)a3
{
  v4 = a3;
  v5 = [(HCDatabaseManager *)self managedObjectContext];
  [v5 mergeChangesFromContextDidSaveNotification:v4];
}

@end