@interface SharedDataMigration
+ (BOOL)_migrateCacheFileFromSubpath:(id)subpath toSubpath:(id)toSubpath ensureIsDirectory:(BOOL)directory;
+ (BOOL)migrateRecentSearches;
+ (BOOL)migrateThumbnails;
+ (id)_userCachesDirectoryPath;
+ (void)migratePersistentStorageDefaults;
+ (void)migrateTabDatabaseIfNeeded;
@end

@implementation SharedDataMigration

+ (id)_userCachesDirectoryPath
{
  v2 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  if ([v2 count])
  {
    v3 = [v2 objectAtIndex:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (BOOL)_migrateCacheFileFromSubpath:(id)subpath toSubpath:(id)toSubpath ensureIsDirectory:(BOOL)directory
{
  directoryCopy = directory;
  subpathCopy = subpath;
  toSubpathCopy = toSubpath;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  _userCachesDirectoryPath = [objc_opt_class() _userCachesDirectoryPath];
  v11 = _userCachesDirectoryPath;
  if (_userCachesDirectoryPath)
  {
    v12 = [_userCachesDirectoryPath stringByAppendingPathComponent:subpathCopy];
    if (directoryCopy)
    {
      v37 = 0;
      v13 = 1;
      if (![defaultManager fileExistsAtPath:v12 isDirectory:&v37] || (v37 & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    else if (![defaultManager fileExistsAtPath:v12])
    {
      v13 = 1;
LABEL_23:

      goto LABEL_24;
    }

    v14 = [v11 stringByAppendingPathComponent:toSubpathCopy];
    if ([defaultManager fileExistsAtPath:v14])
    {
      v15 = [defaultManager attributesOfItemAtPath:v12 error:0];
      fileModificationDate = [v15 fileModificationDate];

      v17 = [defaultManager attributesOfItemAtPath:v14 error:0];
      fileModificationDate2 = [v17 fileModificationDate];

      if ([fileModificationDate2 compare:fileModificationDate] != -1)
      {
        v35 = 0;
        v19 = [defaultManager removeItemAtPath:v12 error:&v35];
        v20 = v35;
        v21 = v20;
        if ((v19 & 1) == 0)
        {
          v22 = [v20 description];
          NSLog(@"Failed to remove %@ because %@", v12, v22);
        }

        v13 = 1;
        goto LABEL_20;
      }

      v36 = 0;
      v23 = [defaultManager removeItemAtPath:v14 error:&v36];
      v24 = v36;
      v25 = v24;
      if ((v23 & 1) == 0)
      {
        v26 = [v24 description];
        NSLog(@"Failed to remove %@ because %@", v14, v26);
      }
    }

    lastPathComponent = [v12 lastPathComponent];
    NSLog(@"Migrating %@ ...", lastPathComponent);

    v34 = 0;
    v13 = [defaultManager moveItemAtPath:v12 toPath:v14 error:&v34];
    v28 = v34;
    v29 = v28;
    if (v13)
    {
LABEL_22:

      goto LABEL_23;
    }

    v30 = [v28 description];
    NSLog(@"Failed to migrate %@ because %@", v12, v30);

    v33 = v29;
    v31 = [defaultManager removeItemAtPath:v14 error:&v33];
    fileModificationDate = v33;

    if (v31)
    {
LABEL_21:
      v29 = fileModificationDate;
      goto LABEL_22;
    }

    fileModificationDate2 = [fileModificationDate description];
    NSLog(@"Failed to remove %@ because %@", v14, fileModificationDate2);
LABEL_20:

    goto LABEL_21;
  }

  v13 = 0;
LABEL_24:

  return v13;
}

+ (void)migratePersistentStorageDefaults
{
  safari_browserDefaults = [MEMORY[0x277CBEBD0] safari_browserDefaults];
  v2 = SafariLibraryPath();
  stringByResolvingSymlinksInPath = [v2 stringByResolvingSymlinksInPath];

  v4 = [stringByResolvingSymlinksInPath stringByAppendingPathComponent:@"WebKit/WebsiteData/LocalStorage"];
  v5 = [stringByResolvingSymlinksInPath stringByAppendingPathComponent:@"WebKit/WebsiteData/WebSQL"];
  [safari_browserDefaults setBool:1 forKey:@"WebKitLocalStorageEnabledPreferenceKey"];
  [safari_browserDefaults setObject:v4 forKey:*MEMORY[0x277D7B828]];
  [safari_browserDefaults setObject:v5 forKey:*MEMORY[0x277D7B818]];
  [safari_browserDefaults synchronize];
}

+ (BOOL)migrateRecentSearches
{
  v2 = [@"com.apple.mobilesafari" stringByAppendingPathComponent:@"RecentSearches.plist"];
  v3 = [objc_opt_class() _migrateCacheFileFromSubpath:@"Safari/RecentSearches.plist" toSubpath:v2 ensureIsDirectory:0];

  return v3;
}

+ (BOOL)migrateThumbnails
{
  v2 = [@"com.apple.mobilesafari" stringByAppendingPathComponent:@"Thumbnails"];
  v3 = [objc_opt_class() _migrateCacheFileFromSubpath:@"Safari/Thumbnails" toSubpath:v2 ensureIsDirectory:1];

  return v3;
}

+ (void)migrateTabDatabaseIfNeeded
{
  v50 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277D7B568]);
  safariTabCollectionConfiguration = [MEMORY[0x277D7B520] safariTabCollectionConfiguration];
  v4 = [v2 initWithConfiguration:safariTabCollectionConfiguration openDatabase:1];

  if (([v4 hasCompletedMigration] & 1) == 0)
  {
    [v4 lockSync];
    mEMORY[0x277D28F00] = [MEMORY[0x277D28F00] sharedBrowserSavedState];
    [mEMORY[0x277D28F00] browserWindows];
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    obj = v48 = 0u;
    v38 = [obj countByEnumeratingWithState:&v45 objects:v49 count:16];
    if (v38)
    {
      v36 = *v46;
      v34 = *MEMORY[0x277D29100];
      v35 = *MEMORY[0x277D29108];
      v32 = *MEMORY[0x277D290F8];
      v31 = *MEMORY[0x277D290E8];
      v30 = *MEMORY[0x277D290F0];
      v33 = v4;
      do
      {
        v5 = 0;
        do
        {
          if (*v46 != v36)
          {
            objc_enumerationMutation(obj);
          }

          v6 = *(*(&v45 + 1) + 8 * v5);
          v7 = objc_alloc(MEMORY[0x277D7B598]);
          uUIDString = [v6 UUIDString];
          sceneID = [v6 sceneID];
          v10 = [v7 initWithUUID:uUIDString sceneID:sceneID];

          uUID = [v6 UUID];
          v12 = [mEMORY[0x277D28F00] savedTabsStateForBrowserControllerWithUUID:uUID];

          if (v12)
          {
            [v4 saveWindowState:v10];
            v13 = [v12 objectForKey:v35];
            v14 = [v12 objectForKey:v34];
            if ([v13 count] || objc_msgSend(v14, "count"))
            {
              aBlock[0] = MEMORY[0x277D85DD0];
              aBlock[1] = 3221225472;
              aBlock[2] = __49__SharedDataMigration_migrateTabDatabaseIfNeeded__block_invoke;
              aBlock[3] = &unk_2781D8DE8;
              v40 = v4;
              v44 = v40;
              v15 = _Block_copy(aBlock);
              v41 = v15[2](v15, v13);
              v39 = v15[2](v15, v14);
              localTabGroup = [v10 localTabGroup];
              privateTabGroup = [v10 privateTabGroup];
              v17 = [v12 safari_numberForKey:v32];
              unsignedIntegerValue = [v17 unsignedIntegerValue];

              if (unsignedIntegerValue < [v13 count])
              {
                v19 = [v13 objectAtIndexedSubscript:unsignedIntegerValue];
                v20 = [v19 safari_stringForKey:v31];
                [localTabGroup setLastSelectedTabUUID:v20];
                [localTabGroup uuid];
                v22 = v21 = v14;
                [v10 setActiveTabUUID:v20 forTabGroupWithUUID:v22];

                v14 = v21;
              }

              v23 = [v12 safari_numberForKey:v30];
              unsignedIntegerValue2 = [v23 unsignedIntegerValue];

              if (unsignedIntegerValue2 < [v14 count])
              {
                v25 = [v14 objectAtIndexedSubscript:unsignedIntegerValue2];
                v26 = [v25 safari_stringForKey:v31];
                [privateTabGroup setLastSelectedTabUUID:v26];
                [privateTabGroup uuid];
                v28 = v27 = v14;
                [v10 setActiveTabUUID:v26 forTabGroupWithUUID:v28];

                v14 = v27;
              }

              [v40 insertTabs:v41 inTabGroup:localTabGroup afterTab:0];
              [v40 insertTabs:v39 inTabGroup:privateTabGroup afterTab:0];

              v4 = v33;
            }
          }

          ++v5;
        }

        while (v38 != v5);
        v38 = [obj countByEnumeratingWithState:&v45 objects:v49 count:16];
      }

      while (v38);
    }

    [v4 setCompletedMigration:1];
    [v4 unlockSync];
  }
}

id __49__SharedDataMigration_migrateTabDatabaseIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __49__SharedDataMigration_migrateTabDatabaseIfNeeded__block_invoke_2;
  v5[3] = &unk_2781D8DC0;
  v6 = *(a1 + 32);
  v3 = [a2 safari_mapObjectsUsingBlock:v5];

  return v3;
}

id __49__SharedDataMigration_migrateTabDatabaseIfNeeded__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *MEMORY[0x277D290E8];
  v4 = a2;
  v5 = [v4 safari_stringForKey:v3];
  v6 = [v4 safari_stringForKey:*MEMORY[0x277D290D8]];
  v7 = objc_alloc(MEMORY[0x277CBEBC0]);
  v8 = [v4 safari_stringForKey:*MEMORY[0x277D290E0]];

  v9 = [v7 initWithString:v8];
  v10 = objc_alloc(MEMORY[0x277D7B560]);
  v11 = [*(a1 + 32) currentDeviceIdentifier];
  v12 = [v10 initWithUUID:v5 title:v6 url:v9 deviceIdentifier:v11];

  return v12;
}

@end