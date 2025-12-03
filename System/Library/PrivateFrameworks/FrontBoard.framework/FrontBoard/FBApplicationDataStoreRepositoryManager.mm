@interface FBApplicationDataStoreRepositoryManager
+ (id)sharedInstance;
- (BOOL)migrateFromApplicationStore:(id)store toApplicationStore:(id)applicationStore error:(id *)error;
- (BOOL)migrateFromPlistStoreAtURL:(id)l toSqliteStoreAtURL:(id)rL error:(id *)error;
- (BOOL)removeStoreAtURL:(id)l error:(id *)error;
- (id)_initWithDataStore:(id)store lsEnumerator:(id)enumerator;
- (id)_safeObjectForKey:(id)key forApplication:(id)application ofType:(Class)type;
- (id)urlByAppendingString:(id)string toURL:(id)l;
- (void)_handleApplicationInstalled:(id)installed;
- (void)clearExpiredUninstalledApplicationsFromStoreIfNecessary;
- (void)dealloc;
- (void)migrateApplicationStorePathIfNecessary;
- (void)objectChangedForKeys:(id)keys application:(id)application;
- (void)storeInvalidatedForIdentifier:(id)identifier;
@end

@implementation FBApplicationDataStoreRepositoryManager

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__FBApplicationDataStoreRepositoryManager_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken_6 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_6, block);
  }

  v2 = sharedInstance_sharedInstance;

  return v2;
}

void __57__FBApplicationDataStoreRepositoryManager_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedInstance_sharedInstance;
  sharedInstance_sharedInstance = v1;
}

- (id)_initWithDataStore:(id)store lsEnumerator:(id)enumerator
{
  storeCopy = store;
  enumeratorCopy = enumerator;
  v22.receiver = self;
  v22.super_class = FBApplicationDataStoreRepositoryManager;
  v8 = [(FBApplicationDataStoreRepositoryManager *)&v22 init];
  if (v8)
  {
    v9 = MEMORY[0x1E695DFF8];
    stringByExpandingTildeInPath = [@"~/Library/FrontBoard/applicationState.db" stringByExpandingTildeInPath];
    v11 = [v9 fileURLWithPath:stringByExpandingTildeInPath];
    dataStoreURL = v8->_dataStoreURL;
    v8->_dataStoreURL = v11;

    objc_storeStrong(&v8->_lsEnumerator, enumerator);
    DistributedCenter = CFNotificationCenterGetDistributedCenter();
    CFNotificationCenterAddObserver(DistributedCenter, v8, _handleApplicationsRegisteredNotification, @"com.apple.LaunchServices.applicationRegistered", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    [(FBApplicationDataStoreRepositoryManager *)v8 migrateApplicationStorePathIfNecessary];
    if (storeCopy)
    {
      v14 = storeCopy;
    }

    else
    {
      v14 = [[FBSqliteApplicationDataStoreRepository alloc] initWithStorePath:v8->_dataStoreURL];
    }

    dataStore = v8->_dataStore;
    v8->_dataStore = v14;

    [(FBApplicationDataStoreRepository *)v8->_dataStore setDelegate:v8];
    Serial = BSDispatchQueueCreateSerial();
    deferredWorkQueue = v8->_deferredWorkQueue;
    v8->_deferredWorkQueue = Serial;

    v18 = v8->_deferredWorkQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __75__FBApplicationDataStoreRepositoryManager__initWithDataStore_lsEnumerator___block_invoke;
    block[3] = &unk_1E783B580;
    v21 = v8;
    dispatch_async(v18, block);
  }

  return v8;
}

- (void)dealloc
{
  [(FBApplicationDataStoreRepository *)self->_dataStore flushSynchronously];
  [(FBApplicationDataStoreRepository *)self->_dataStore close];
  v3.receiver = self;
  v3.super_class = FBApplicationDataStoreRepositoryManager;
  [(FBApplicationDataStoreRepositoryManager *)&v3 dealloc];
}

- (id)urlByAppendingString:(id)string toURL:(id)l
{
  lCopy = l;
  stringCopy = string;
  lastPathComponent = [lCopy lastPathComponent];
  uRLByDeletingLastPathComponent = [lCopy URLByDeletingLastPathComponent];

  v9 = [lastPathComponent stringByAppendingString:stringCopy];

  v10 = [uRLByDeletingLastPathComponent URLByAppendingPathComponent:v9];

  return v10;
}

- (BOOL)removeStoreAtURL:(id)l error:(id *)error
{
  lCopy = l;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  if ([defaultManager removeItemAtURL:self->_dataStoreURL error:error])
  {
    v8 = [(FBApplicationDataStoreRepositoryManager *)self urlByAppendingString:@"-shm" toURL:lCopy];
    path = [v8 path];
    v10 = [defaultManager fileExistsAtPath:path];

    if (v10 && ![defaultManager removeItemAtURL:v8 error:error])
    {
      v14 = 0;
    }

    else
    {
      v11 = [(FBApplicationDataStoreRepositoryManager *)self urlByAppendingString:@"-wal" toURL:lCopy];
      path2 = [v11 path];
      v13 = [defaultManager fileExistsAtPath:path2];

      v14 = !v13 || [defaultManager removeItemAtURL:v11 error:error];
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)migrateApplicationStorePathIfNecessary
{
  v67[3] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E696AC08]);
  path = [(NSURL *)self->_dataStoreURL path];
  v5 = [v3 fileExistsAtPath:path];

  v48 = v5;
  if ((v5 & 1) == 0)
  {
    uRLByDeletingLastPathComponent = [(NSURL *)self->_dataStoreURL URLByDeletingLastPathComponent];
    [v3 createDirectoryAtURL:uRLByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:0];
  }

  v7 = MEMORY[0x1E695DFF8];
  stringByExpandingTildeInPath = [@"~/Library/FrontBoard/applicationState.plist" stringByExpandingTildeInPath];
  v9 = [v7 fileURLWithPath:stringByExpandingTildeInPath];
  v67[0] = v9;
  v10 = MEMORY[0x1E695DFF8];
  stringByExpandingTildeInPath2 = [@"~/Library/BackBoard/applicationState.plist" stringByExpandingTildeInPath];
  v12 = [v10 fileURLWithPath:stringByExpandingTildeInPath2];
  v67[1] = v12;
  v13 = MEMORY[0x1E695DFF8];
  stringByExpandingTildeInPath3 = [@"~/Library/SpringBoard/applicationstate.plist" stringByExpandingTildeInPath];
  v15 = [v13 fileURLWithPath:stringByExpandingTildeInPath3];
  v67[2] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v67 count:3];

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v17 = v16;
  v18 = [v17 countByEnumeratingWithState:&v55 objects:v66 count:16];
  if (v18)
  {
    v20 = v18;
    v21 = *v56;
    *&v19 = 138543874;
    v47 = v19;
    while (2)
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v56 != v21)
        {
          objc_enumerationMutation(v17);
        }

        v23 = *(*(&v55 + 1) + 8 * i);
        path2 = [v23 path];
        v25 = [v3 fileExistsAtPath:path2];

        if (v25)
        {
          if (v48)
          {
            dataStoreURL = self->_dataStoreURL;
            v54 = 0;
            v27 = [(FBApplicationDataStoreRepositoryManager *)self removeStoreAtURL:dataStoreURL error:&v54];
            v28 = v54;
            if (!v27)
            {
              v29 = FBLogAppDataStore();
              if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
              {
                v35 = self->_dataStoreURL;
                *buf = v47;
                v61 = v23;
                v62 = 2114;
                v63 = v35;
                v64 = 2114;
                v65 = v28;
                _os_log_error_impl(&dword_1A89DD000, v29, OS_LOG_TYPE_ERROR, "Unable to migrate application state store from %{public}@ to %{public}@ due to error: %{public}@", buf, 0x20u);
              }
            }
          }

          else
          {
            v28 = 0;
          }

          v30 = self->_dataStoreURL;
          v53 = v28;
          v31 = [(FBApplicationDataStoreRepositoryManager *)self migrateFromPlistStoreAtURL:v23 toSqliteStoreAtURL:v30 error:&v53];
          v32 = v53;

          if (v31)
          {
            v36 = FBLogAppDataStore();
            if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
            {
              v37 = self->_dataStoreURL;
              *buf = 138543618;
              v61 = v23;
              v62 = 2114;
              v63 = v37;
              _os_log_impl(&dword_1A89DD000, v36, OS_LOG_TYPE_INFO, "Successfully migrated application state store from %{public}@ to %{public}@.", buf, 0x16u);
            }

            goto LABEL_27;
          }

          if (v32)
          {
            v33 = FBLogAppDataStore();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
            {
              v34 = self->_dataStoreURL;
              *buf = v47;
              v61 = v23;
              v62 = 2114;
              v63 = v34;
              v64 = 2114;
              v65 = v32;
              _os_log_error_impl(&dword_1A89DD000, v33, OS_LOG_TYPE_ERROR, "Unable to migrate application state store from %{public}@ to %{public}@ due to error: %{public}@", buf, 0x20u);
            }
          }
        }
      }

      v20 = [v17 countByEnumeratingWithState:&v55 objects:v66 count:16];
      if (v20)
      {
        continue;
      }

      break;
    }
  }

LABEL_27:

  v38 = [MEMORY[0x1E695DFA8] setWithArray:v17];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v39 = [v38 countByEnumeratingWithState:&v49 objects:v59 count:16];
  if (v39)
  {
    v40 = v39;
    v41 = *v50;
    do
    {
      for (j = 0; j != v40; ++j)
      {
        if (*v50 != v41)
        {
          objc_enumerationMutation(v38);
        }

        v43 = *(*(&v49 + 1) + 8 * j);
        path3 = [v43 path];
        v45 = [v3 fileExistsAtPath:path3];

        if (v45)
        {
          [v3 removeItemAtURL:v43 error:0];
        }
      }

      v40 = [v38 countByEnumeratingWithState:&v49 objects:v59 count:16];
    }

    while (v40);
  }

  v46 = *MEMORY[0x1E69E9840];
}

- (BOOL)migrateFromApplicationStore:(id)store toApplicationStore:(id)applicationStore error:(id *)error
{
  v42 = *MEMORY[0x1E69E9840];
  storeCopy = store;
  applicationStoreCopy = applicationStore;
  [applicationStoreCopy beginBatchedUpdate];
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  applicationIdentifiersWithState = [applicationStoreCopy applicationIdentifiersWithState];
  v9 = [applicationIdentifiersWithState countByEnumeratingWithState:&v35 objects:v41 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v36;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v36 != v11)
        {
          objc_enumerationMutation(applicationIdentifiersWithState);
        }

        [applicationStoreCopy removeAllObjectsForApplication:*(*(&v35 + 1) + 8 * i)];
      }

      v10 = [applicationIdentifiersWithState countByEnumeratingWithState:&v35 objects:v41 count:16];
    }

    while (v10);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = [storeCopy applicationIdentifiersWithState];
  v26 = [obj countByEnumeratingWithState:&v31 objects:v40 count:16];
  if (v26)
  {
    v25 = *v32;
    do
    {
      for (j = 0; j != v26; ++j)
      {
        if (*v32 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v31 + 1) + 8 * j);
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v15 = [storeCopy keysForApplication:v14];
        v16 = [v15 countByEnumeratingWithState:&v27 objects:v39 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v28;
          do
          {
            for (k = 0; k != v17; ++k)
            {
              if (*v28 != v18)
              {
                objc_enumerationMutation(v15);
              }

              v20 = *(*(&v27 + 1) + 8 * k);
              v21 = [storeCopy objectForKey:v20 forApplication:v14];
              if (v21)
              {
                [applicationStoreCopy setObject:v21 forKey:v20 forApplication:v14];
              }
            }

            v17 = [v15 countByEnumeratingWithState:&v27 objects:v39 count:16];
          }

          while (v17);
        }
      }

      v26 = [obj countByEnumeratingWithState:&v31 objects:v40 count:16];
    }

    while (v26);
  }

  [applicationStoreCopy endBatchedUpdate];
  [applicationStoreCopy flushSynchronously];

  v22 = *MEMORY[0x1E69E9840];
  return 1;
}

- (BOOL)migrateFromPlistStoreAtURL:(id)l toSqliteStoreAtURL:(id)rL error:(id *)error
{
  rLCopy = rL;
  lCopy = l;
  v10 = [[FBPlistApplicationDataStoreRepository alloc] initWithStorePath:lCopy];

  v11 = [[FBSqliteApplicationDataStoreRepository alloc] initWithStorePath:rLCopy];
  if (v10)
  {
    v12 = v11 == 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = !v12 && [(FBApplicationDataStoreRepositoryManager *)self migrateFromApplicationStore:v10 toApplicationStore:v11 error:error];

  return v13;
}

- (void)clearExpiredUninstalledApplicationsFromStoreIfNecessary
{
  v84 = *MEMORY[0x1E69E9840];
  [(FBApplicationDataStoreRepository *)self->_dataStore beginBatchedUpdate];
  lsEnumerator = self->_lsEnumerator;
  if (lsEnumerator)
  {
    v4 = lsEnumerator;
  }

  else
  {
    v4 = [MEMORY[0x1E69635F8] enumeratorWithOptions:0];
  }

  v5 = v4;
  v6 = self->_lsEnumerator;
  self->_lsEnumerator = 0;

  allObjects = [(LSEnumerator *)v5 allObjects];
  if ([allObjects count])
  {
    v53 = v5;
    v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    v52 = allObjects;
    v9 = allObjects;
    v10 = [v9 countByEnumeratingWithState:&v73 objects:v83 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v74;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v74 != v12)
          {
            objc_enumerationMutation(v9);
          }

          bundleIdentifier = [*(*(&v73 + 1) + 8 * i) bundleIdentifier];
          if (bundleIdentifier)
          {
            [v8 addObject:bundleIdentifier];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v73 objects:v83 count:16];
      }

      while (v11);
    }

    applicationIdentifiersWithState = [(FBApplicationDataStoreRepository *)self->_dataStore applicationIdentifiersWithState];
    v54 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"_SBUninstalledDate", @"__SBUninstalledDate", 0}];
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    obj = applicationIdentifiersWithState;
    v55 = v16;
    v56 = v8;
    v59 = [obj countByEnumeratingWithState:&v69 objects:v82 count:16];
    if (v59)
    {
      v17 = *v70;
      v57 = *v70;
      do
      {
        v18 = 0;
        do
        {
          if (*v70 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v69 + 1) + 8 * v18);
          fbs_bundleIDFromAppID = [v19 fbs_bundleIDFromAppID];
          v21 = [v8 containsObject:fbs_bundleIDFromAppID];

          v22 = [(FBApplicationDataStoreRepositoryManager *)self _safeObjectForKey:@"__UninstallDate" forApplication:v19 ofType:objc_opt_class()];
          v23 = v22;
          if (!v22)
          {
            v67 = 0u;
            v68 = 0u;
            v65 = 0u;
            v66 = 0u;
            v24 = v16;
            v25 = [v24 countByEnumeratingWithState:&v65 objects:v81 count:16];
            if (v25)
            {
              v26 = v25;
              v27 = *v66;
              while (2)
              {
                for (j = 0; j != v26; ++j)
                {
                  if (*v66 != v27)
                  {
                    objc_enumerationMutation(v24);
                  }

                  v29 = [(FBApplicationDataStoreRepositoryManager *)self _safeObjectForKey:*(*(&v65 + 1) + 8 * j) forApplication:v19 ofType:objc_opt_class()];
                  if (v29)
                  {
                    v23 = v29;
                    goto LABEL_30;
                  }
                }

                v26 = [v24 countByEnumeratingWithState:&v65 objects:v81 count:16];
                if (v26)
                {
                  continue;
                }

                break;
              }

              v23 = 0;
LABEL_30:
              v16 = v55;
              v8 = v56;
            }

            else
            {
              v23 = 0;
            }

            v17 = v57;
          }

          [(FBApplicationDataStoreRepository *)self->_dataStore removeObjectsForKeys:v16 forApplication:v19];
          v30 = v21 ^ 1;
          if (!v23)
          {
            v30 = 1;
          }

          if ((v30 & 1) == 0)
          {
            v31 = FBLogAppDataStore();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v80 = v19;
              _os_log_impl(&dword_1A89DD000, v31, OS_LOG_TYPE_DEFAULT, "Application has been re-installed: %{public}@", buf, 0xCu);
            }

LABEL_39:
            [(FBApplicationDataStoreRepository *)self->_dataStore removeObjectForKey:@"__UninstallDate" forApplication:v19];
            goto LABEL_53;
          }

          if (v23)
          {
            v32 = 1;
          }

          else
          {
            v32 = v21;
          }

          if (v32)
          {
            if (v23)
            {
              v33 = v21 == 1;
            }

            else
            {
              v33 = 1;
            }

            if (v33)
            {
              goto LABEL_39;
            }

            [v23 timeIntervalSinceNow];
            if (v34 >= -86400.0)
            {
              if (!v22)
              {
                [(FBApplicationDataStoreRepository *)self->_dataStore setObject:v23 forKey:@"__UninstallDate" forApplication:v19];
              }
            }

            else
            {
              [v54 addObject:v19];
            }
          }

          else
          {
            v35 = FBLogAppDataStore();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v80 = v19;
              _os_log_impl(&dword_1A89DD000, v35, OS_LOG_TYPE_DEFAULT, "Flagging application as uninstalled: %{public}@", buf, 0xCu);
            }

            dataStore = self->_dataStore;
            date = [MEMORY[0x1E695DF00] date];
            [(FBApplicationDataStoreRepository *)dataStore setObject:date forKey:@"__UninstallDate" forApplication:v19];
          }

LABEL_53:

          ++v18;
        }

        while (v18 != v59);
        v38 = [obj countByEnumeratingWithState:&v69 objects:v82 count:16];
        v59 = v38;
      }

      while (v38);
    }

    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v39 = v54;
    v40 = [v39 countByEnumeratingWithState:&v61 objects:v78 count:16];
    if (v40)
    {
      v41 = v40;
      v42 = *v62;
      do
      {
        for (k = 0; k != v41; ++k)
        {
          if (*v62 != v42)
          {
            objc_enumerationMutation(v39);
          }

          v44 = *(*(&v61 + 1) + 8 * k);
          v45 = FBLogAppDataStore();
          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v80 = v44;
            _os_log_impl(&dword_1A89DD000, v45, OS_LOG_TYPE_DEFAULT, "Purging application state of expired identifier: %{public}@", buf, 0xCu);
          }

          [(FBApplicationDataStoreRepository *)self->_dataStore removeAllObjectsForApplication:v44];
        }

        v41 = [v39 countByEnumeratingWithState:&v61 objects:v78 count:16];
      }

      while (v41);
    }

    [(FBApplicationDataStoreRepository *)self->_dataStore endBatchedUpdate];
    v46 = dispatch_time(0, 86400000000000);
    deferredWorkQueue = self->_deferredWorkQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __98__FBApplicationDataStoreRepositoryManager_clearExpiredUninstalledApplicationsFromStoreIfNecessary__block_invoke_57;
    block[3] = &unk_1E783B580;
    block[4] = self;
    dispatch_after(v46, deferredWorkQueue, block);

    allObjects = v52;
    v5 = v53;
  }

  else
  {
    v48 = FBLogAppDataStore();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      [(FBApplicationDataStoreRepositoryManager *)v48 clearExpiredUninstalledApplicationsFromStoreIfNecessary];
    }

    v49 = dispatch_time(0, 10000000000);
    v50 = self->_deferredWorkQueue;
    v77[0] = MEMORY[0x1E69E9820];
    v77[1] = 3221225472;
    v77[2] = __98__FBApplicationDataStoreRepositoryManager_clearExpiredUninstalledApplicationsFromStoreIfNecessary__block_invoke;
    v77[3] = &unk_1E783B580;
    v77[4] = self;
    dispatch_after(v49, v50, v77);
  }

  v51 = *MEMORY[0x1E69E9840];
}

- (id)_safeObjectForKey:(id)key forApplication:(id)application ofType:(Class)type
{
  v5 = [(FBApplicationDataStoreRepository *)self->_dataStore objectForKey:key forApplication:application];
  if (v5 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_handleApplicationInstalled:(id)installed
{
  v27 = *MEMORY[0x1E69E9840];
  installedCopy = installed;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = [installedCopy countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v22;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(installedCopy);
        }

        [(FBApplicationDataStoreRepository *)self->_dataStore removeObjectForKey:@"__UninstallDate" forApplication:*(*(&v21 + 1) + 8 * i)];
      }

      v6 = [installedCopy countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v6);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  applicationIdentifiersWithState = [(FBApplicationDataStoreRepository *)self->_dataStore applicationIdentifiersWithState];
  v10 = [applicationIdentifiersWithState countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (j = 0; j != v11; ++j)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(applicationIdentifiersWithState);
        }

        v14 = *(*(&v17 + 1) + 8 * j);
        fbs_bundleIDFromAppID = [v14 fbs_bundleIDFromAppID];
        if ([installedCopy containsObject:fbs_bundleIDFromAppID])
        {
          [(FBApplicationDataStoreRepository *)self->_dataStore removeObjectForKey:@"__UninstallDate" forApplication:v14];
        }
      }

      v11 = [applicationIdentifiersWithState countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v11);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)objectChangedForKeys:(id)keys application:(id)application
{
  v28 = *MEMORY[0x1E69E9840];
  keysCopy = keys;
  applicationCopy = application;
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = keysCopy;
  v10 = [obj countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v22;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v21 + 1) + 8 * i);
        v15 = objc_autoreleasePoolPush();
        v16 = [(FBApplicationDataStoreRepository *)self->_dataStore objectForKey:v14 forApplication:applicationCopy];
        v25[0] = @"FBApplicationStoreRepositoryChangeKey";
        v25[1] = @"FBApplicationStoreRepositoryChangeApp";
        v26[0] = v14;
        v26[1] = applicationCopy;
        v17 = v16;
        v25[2] = @"FBApplicationStoreRepositoryChangeValue";
        if (!v16)
        {
          null = [MEMORY[0x1E695DFB0] null];
          v17 = null;
        }

        v26[2] = v17;
        v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:3];
        [defaultCenter postNotificationName:@"FBApplicationStoreRepositoryChangeNotification" object:0 userInfo:v18];

        if (!v16)
        {
        }

        objc_autoreleasePoolPop(v15);
      }

      v11 = [obj countByEnumeratingWithState:&v21 objects:v27 count:16];
    }

    while (v11);
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)storeInvalidatedForIdentifier:(id)identifier
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AD88];
  identifierCopy = identifier;
  defaultCenter = [v3 defaultCenter];
  v8 = @"FBApplicationStoreRepositoryChangeApp";
  v9[0] = identifierCopy;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];

  [defaultCenter postNotificationName:@"FBApplicationStoreRepositoryInvalidatedNotification" object:0 userInfo:v6];
  v7 = *MEMORY[0x1E69E9840];
}

@end