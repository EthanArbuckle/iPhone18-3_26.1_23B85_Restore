@interface WhitelistChecker
- (BOOL)annotated:(id)a3;
- (BOOL)checkFile_WatchAndTV:(id)a3 withMetaData:(id)a4;
- (BOOL)checkFile_iOS:(id)a3 withMetaData:(id)a4;
- (BOOL)checkFile_macOS:(id)a3 withMetaData:(id)a4;
- (BOOL)file:(id)a3 blacklisted:(id)a4;
- (BOOL)file:(id)a3 whitelisted:(id)a4;
- (BOOL)handleSystemContainerFiles:(id)a3 withMetadata:(id)a4;
- (BOOL)load;
- (BOOL)loadFromFile:(id)a3;
- (BOOL)shouldRestoreSystemContainer_WatchAndTV:(id)a3 shared:(BOOL)a4;
- (BOOL)shouldRestoreSystemContainer_iOS:(id)a3 shared:(BOOL)a4;
- (WhitelistChecker)init;
- (id)checkManifest:(id)a3;
- (id)createFullPathList:(id)a3 rootPath:(id)a4 isAllowList:(BOOL)a5;
- (id)getRealPathForFile:(id)a3 withMetaData:(id)a4;
- (void)load;
@end

@implementation WhitelistChecker

- (WhitelistChecker)init
{
  v5.receiver = self;
  v5.super_class = WhitelistChecker;
  v2 = [(WhitelistChecker *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(WhitelistChecker *)v2 setDomainsPlistFilePath:@"/System/Library/PrivateFrameworks/MobileBackup.framework/Domains.plist"];
  }

  return v3;
}

- (BOOL)load
{
  v23[2] = *MEMORY[0x277D85DE8];
  v3 = +[MSDPlatform sharedInstance];
  v4 = [v3 macOS];

  if (!v4)
  {
    v9 = +[MSDPlatform sharedInstance];
    if ([v9 iOS])
    {
    }

    else
    {
      v10 = +[MSDPlatform sharedInstance];
      v11 = [v10 rOS];

      if (!v11)
      {
        v18 = generateCustomDomainsPlistForSecurityRulesCheck();
        [(WhitelistChecker *)self setDomains:v18];

        v19 = [(WhitelistChecker *)self domains];

        if (v19)
        {
          goto LABEL_11;
        }

        [WhitelistChecker load];
        goto LABEL_18;
      }
    }

    v12 = [(WhitelistChecker *)self domainsPlistFilePath];
    v13 = [MSDDomainsPlistPatcher patchDomainsPlist:v12];
    if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v14 = MEMORY[0x277CBEAC0];
      v15 = [v13 objectForKey:@"SystemDomains"];
      v16 = [v14 dictionaryWithDictionary:v15];
      [(WhitelistChecker *)self setDomains:v16];

      v17 = [(WhitelistChecker *)self domains];

      if (v17)
      {

        goto LABEL_11;
      }

      v22 = defaultLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [(WhitelistChecker *)v22 load];
      }
    }

    else
    {
      v22 = defaultLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [(WhitelistChecker *)v12 load];
      }
    }

LABEL_18:
    result = 0;
    goto LABEL_12;
  }

  v5 = MEMORY[0x277CBEB98];
  v6 = [@"/private/var/mnt/com.apple.mobilestoredemo.storage" stringByStandardizingPath];
  v23[0] = v6;
  v23[1] = @"/Library/Apple";
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
  v8 = [v5 setWithArray:v7];
  [(WhitelistChecker *)self setBlackListedPaths:v8];

LABEL_11:
  result = 1;
LABEL_12:
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)loadFromFile:(id)a3
{
  [(WhitelistChecker *)self setDomainsPlistFilePath:a3];

  return [(WhitelistChecker *)self load];
}

- (id)checkManifest:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v6 = v4;
  v26 = [v6 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (!v26)
  {
    goto LABEL_20;
  }

  v25 = *v28;
  v8 = 0x2798EF000uLL;
  *&v7 = 136315394;
  v23 = v7;
  v24 = v6;
  do
  {
    for (i = 0; i != v26; ++i)
    {
      if (*v28 != v25)
      {
        objc_enumerationMutation(v6);
      }

      v10 = *(*(&v27 + 1) + 8 * i);
      v11 = [v6 objectForKey:{v10, v23}];
      v12 = [(WhitelistChecker *)self getRealPathForFile:v10 withMetaData:v11];
      v13 = [*(v8 + 256) sharedInstance];
      v14 = [v13 macOS];

      if (v14)
      {
        if ([(WhitelistChecker *)self checkFile_macOS:v12 withMetaData:v11])
        {
          goto LABEL_18;
        }

        goto LABEL_15;
      }

      v15 = [*(v8 + 256) sharedInstance];
      if ([v15 iOS])
      {

LABEL_12:
        v18 = [(WhitelistChecker *)self checkFile_iOS:v12 withMetaData:v11];
        goto LABEL_14;
      }

      v16 = [*(v8 + 256) sharedInstance];
      v17 = [v16 rOS];

      if (v17)
      {
        goto LABEL_12;
      }

      v18 = [(WhitelistChecker *)self checkFile_WatchAndTV:v12 withMetaData:v11];
LABEL_14:
      v6 = v24;
      v8 = 0x2798EF000;
      if (v18)
      {
        goto LABEL_18;
      }

LABEL_15:
      v19 = defaultLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = v23;
        v32 = "[WhitelistChecker checkManifest:]";
        v33 = 2114;
        v34 = v10;
        _os_log_impl(&dword_259B7D000, v19, OS_LOG_TYPE_DEFAULT, "%s:%{public}@ failed the check.", buf, 0x16u);
      }

      [v5 addObject:v10];
LABEL_18:
    }

    v26 = [v6 countByEnumeratingWithState:&v27 objects:v35 count:16];
  }

  while (v26);
LABEL_20:

  if ([v5 count])
  {
    v20 = [v5 copy];
  }

  else
  {
    v20 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (BOOL)checkFile_macOS:(id)a3 withMetaData:(id)a4
{
  v5 = a3;
  v6 = [(WhitelistChecker *)self blackListedPaths];
  v7 = [v6 containsObject:v5];

  return v7 ^ 1;
}

- (BOOL)checkFile_iOS:(id)a3 withMetaData:(id)a4
{
  v51 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:{@"/var/mobile/Media", @"/var/mobile/Library/Backup/SystemContainers/", @"/var/mobile/Library/IdentityServices/Persistence/DoNotBackup", @"/var/root/Library/Backup/SystemContainers/", @"/var/wireless/Library/Preferences/com.apple.awdd.persistent.plist", @"/var/wireless/Library/Preferences/com.apple.awdd.plist", @"/var/MobileSoftwareUpdate/.MAAMigrated.plist", @"/var/MobileAsset/PreinstalledAssetsV2/InstallWithOs", @"/var/mobile/Library/Mobile Documents", 0}];
  if (![(WhitelistChecker *)self file:v6 whitelisted:v8]&& ![(WhitelistChecker *)self annotated:v7])
  {
    v32 = v8;
    v33 = v7;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    obj = [(WhitelistChecker *)self domains];
    v38 = [obj countByEnumeratingWithState:&v42 objects:v50 count:16];
    if (!v38)
    {
      v39 = 0;
      v10 = 0;
      v40 = 0;
      goto LABEL_33;
    }

    v40 = 0;
    v39 = 0;
    v10 = 0;
    v36 = *v43;
    v37 = v6;
    v34 = self;
    while (1)
    {
      v11 = 0;
      do
      {
        if (*v43 != v36)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v42 + 1) + 8 * v11);
        v13 = objc_autoreleasePoolPush();
        v14 = [(WhitelistChecker *)self domains];
        v15 = [v14 objectForKey:v12];

        v16 = [v15 objectForKey:@"RootPath"];
        if (!v16)
        {
          v27 = defaultLogHandle();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v47 = v12;
            _os_log_error_impl(&dword_259B7D000, v27, OS_LOG_TYPE_ERROR, "No root path find in domain %{public}@", buf, 0xCu);
          }

          v18 = 0;
          v26 = 0;
          goto LABEL_16;
        }

        v41 = v13;
        v17 = [v15 objectForKey:@"RelativePathsToBackupAndRestore"];
        v18 = [v17 mutableCopy];

        v19 = [v15 objectForKey:@"RelativePathsToOnlyBackupEncrypted"];
        [v18 addObjectsFromArray:v19];

        v20 = [v15 objectForKey:@"RelativePathsToRestoreOnly"];
        [v18 addObjectsFromArray:v20];

        v21 = [v15 objectForKey:@"RelativePathsToBackupToDriveAndStandardAccount"];
        [v18 addObjectsFromArray:v21];

        v22 = [(WhitelistChecker *)self createFullPathList:v18 rootPath:v16 isAllowList:1];

        if (!v22)
        {
          v27 = defaultLogHandle();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v47 = v12;
            _os_log_error_impl(&dword_259B7D000, v27, OS_LOG_TYPE_ERROR, "Cannot create allow list for domain %{public}@", buf, 0xCu);
          }

          v26 = 0;
          v10 = 0;
          v13 = v41;
          goto LABEL_16;
        }

        if ([(WhitelistChecker *)self file:v6 whitelisted:v22])
        {
          v23 = [v15 objectForKey:@"RelativePathsNotToRestore"];

          v24 = [(WhitelistChecker *)self createFullPathList:v23 rootPath:v16 isAllowList:0];

          if ([(WhitelistChecker *)self file:v6 blacklisted:v24])
          {
            v25 = defaultLogHandle();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543618;
              v47 = v6;
              v48 = 2114;
              v49 = v12;
              _os_log_impl(&dword_259B7D000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@ is black listed in %{public}@", buf, 0x16u);
            }

            v40 = 1;
            v18 = v23;
            v26 = 1;
            v39 = v24;
            v10 = v22;
            v13 = v41;
            v27 = v25;
            self = v34;
LABEL_16:

            v28 = 0;
            goto LABEL_20;
          }

          v28 = 0;
          v40 = 1;
          v18 = v23;
          v26 = 1;
          v39 = v24;
        }

        else
        {
          v28 = 1;
          v26 = v40;
        }

        v10 = v22;
        v13 = v41;
LABEL_20:

        objc_autoreleasePoolPop(v13);
        if (!v28)
        {
          v40 = v26;
          v6 = v37;
          goto LABEL_33;
        }

        ++v11;
        v6 = v37;
      }

      while (v38 != v11);
      v29 = [obj countByEnumeratingWithState:&v42 objects:v50 count:16];
      v38 = v29;
      if (!v29)
      {
LABEL_33:

        v8 = v32;
        v7 = v33;
        v9 = v39;
        goto LABEL_34;
      }
    }
  }

  v9 = 0;
  v10 = 0;
  v40 = 1;
LABEL_34:

  v30 = *MEMORY[0x277D85DE8];
  return v40 & 1;
}

- (BOOL)checkFile_WatchAndTV:(id)a3 withMetaData:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x277CBEB18];
  v9 = [(WhitelistChecker *)self domains];
  v10 = [v9 objectForKey:@"ContentRootDomain"];
  v11 = [v8 arrayWithArray:v10];

  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:{@"/var/mobile/Media", @"/var/containers/", 0}];
  [v11 addObject:@"/var/mobile/Library/"];
  v13 = [(WhitelistChecker *)self file:v6 whitelisted:v12]|| [(WhitelistChecker *)self annotated:v7]|| [(WhitelistChecker *)self file:v6 whitelisted:v11];

  return v13;
}

- (BOOL)annotated:(id)a3
{
  v3 = a3;
  v4 = +[MSDPlatform sharedInstance];
  if ([v4 iOS])
  {

    v5 = @"MBRestoreAnnotation";
    v6 = &unk_286AE15A0;
  }

  else
  {
    v7 = +[MSDPlatform sharedInstance];
    v8 = [v7 rOS];

    if (v8)
    {
      v6 = &unk_286AE15A0;
    }

    else
    {
      v6 = &unk_286AE15B8;
    }

    if (v8)
    {
      v5 = @"MBRestoreAnnotation";
    }

    else
    {
      v5 = @"MSDAnnotation";
    }
  }

  v9 = [v3 objectForKey:@"MSDManifestFileExtendedAttributes"];

  v13 = 0;
  if (v9)
  {
    if ([v9 count])
    {
      v10 = [v9 objectForKey:v5];
      v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v10 encoding:4];
      v12 = [v6 containsObject:v11];

      if (v12)
      {
        v13 = 1;
      }
    }
  }

  return v13;
}

- (id)createFullPathList:(id)a3 rootPath:(id)a4 isAllowList:(BOOL)a5
{
  v20 = a5;
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v22 = a4;
  v23 = [MEMORY[0x277CBEB18] arrayWithCapacity:0];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v6;
  v7 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v25;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v24 + 1) + 8 * i);
        v12 = objc_autoreleasePoolPush();
        v13 = [v11 componentsSeparatedByString:@"#"];
        v14 = [v13 objectAtIndexedSubscript:0];
        v15 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
        v16 = [v14 stringByTrimmingCharactersInSet:v15];

        if ([v16 length])
        {
          v17 = [v22 stringByAppendingPathComponent:v16];
          [v23 addObject:v17];
        }

        objc_autoreleasePoolPop(v12);
      }

      v8 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v8);
  }

  if (v20 && ![v23 count])
  {
    [v23 addObject:v22];
  }

  v18 = *MEMORY[0x277D85DE8];

  return v23;
}

- (BOOL)file:(id)a3 whitelisted:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = a4;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        if (![v5 rangeOfString:{v11, v15}] || !objc_msgSend(v11, "rangeOfString:", v5))
        {
          v12 = 1;
          goto LABEL_13;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      v12 = 0;
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v12 = 0;
  }

LABEL_13:

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

- (BOOL)file:(id)a3 blacklisted:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = a4;
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v21 + 1) + 8 * i);
        if (![v5 rangeOfString:{v11, v21}])
        {
          v13 = v12;
          v14 = [v5 length];
          if (v14 == [v11 length])
          {
            v16 = 1;
            goto LABEL_14;
          }

          v15 = [v5 length];
          if (v15 > [v11 length])
          {
            v16 = 1;
            v17 = [v5 substringWithRange:{v13, 1}];
            v18 = [v17 isEqualToString:@"/"];

            if (v18)
            {
              goto LABEL_14;
            }
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v16 = 0;
LABEL_14:

  v19 = *MEMORY[0x277D85DE8];
  return v16;
}

- (id)getRealPathForFile:(id)a3 withMetaData:(id)a4
{
  v5 = a3;
  v6 = [a4 valueForKey:@"MSDManifestFileAttributes"];
  v7 = [v6 valueForKey:@"NSFileType"];
  if (([v7 isEqualToString:@"NSFileTypeRegular"] & 1) != 0 || objc_msgSend(v7, "isEqualToString:", @"NSFileTypeDirectory"))
  {
    v8 = [v5 stringByStandardizingPath];
    if (([v5 isEqualToString:v8] & 1) == 0)
    {
      v9 = defaultLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [(WhitelistChecker *)v5 getRealPathForFile:v8 withMetaData:v9];
      }
    }
  }

  else
  {
    v8 = v5;
  }

  return v8;
}

- (BOOL)shouldRestoreSystemContainer_iOS:(id)a3 shared:(BOOL)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v18 = 0;
  v17 = 0;
  [v4 cStringUsingEncoding:4];
  v5 = container_create_or_lookup_path_for_current_user();
  if (v5 && v17 == 1)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"file://%s", v5];
    v7 = [MEMORY[0x277CBEBC0] fileURLWithString:v6];
    v16 = 0;
    v8 = *MEMORY[0x277CBE878];
    v15 = 0;
    v9 = [v7 getResourceValue:&v16 forKey:v8 error:&v15];
    v10 = v16;
    v11 = v15;
    if (v9 && [v10 BOOLValue])
    {
      v12 = defaultLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v20 = "[WhitelistChecker shouldRestoreSystemContainer_iOS:shared:]";
        v21 = 2114;
        v22 = v4;
        _os_log_impl(&dword_259B7D000, v12, OS_LOG_TYPE_DEFAULT, "%s:Container check failed for %{public}@. But still restoring.", buf, 0x16u);
      }
    }
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v11 = 0;
    v10 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return 1;
}

- (BOOL)shouldRestoreSystemContainer_WatchAndTV:(id)a3 shared:(BOOL)a4
{
  v5 = a3;
  v6 = [(WhitelistChecker *)self domains];
  v7 = [v6 objectForKey:@"SystemContainerDomain"];

  LOBYTE(v6) = [v7 containsObject:v5];
  return v6;
}

- (BOOL)handleSystemContainerFiles:(id)a3 withMetadata:(id)a4
{
  v47 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = +[MSDPlatform sharedInstance];
  v8 = [v7 iOS];

  v9 = v8 == 0;
  if (v8)
  {
    v10 = &unk_286AE15E8;
  }

  else
  {
    v10 = &unk_286AE1618;
  }

  if (v9)
  {
    v11 = &unk_286AE1600;
  }

  else
  {
    v11 = &unk_286AE15D0;
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  if (v9)
  {
    v12 = 6;
  }

  else
  {
    v12 = 8;
  }

  v13 = [v11 countByEnumeratingWithState:&v41 objects:v46 count:{16, self}];
  v36 = v12;
  if (v13)
  {
    v14 = v13;
    v15 = *v42;
    while (2)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v42 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v41 + 1) + 8 * i);
        if ([v5 rangeOfString:v17] != 0x7FFFFFFFFFFFFFFFLL)
        {
          v18 = v6;
          v19 = [v5 stringByReplacingOccurrencesOfString:v17 withString:&stru_286AD9A18];
          v20 = 1;
          goto LABEL_20;
        }
      }

      v14 = [v11 countByEnumeratingWithState:&v41 objects:v46 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  v18 = v6;
  v19 = 0;
  v20 = 0;
LABEL_20:
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v21 = [v10 countByEnumeratingWithState:&v37 objects:v45 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v38;
    while (2)
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v38 != v23)
        {
          objc_enumerationMutation(v10);
        }

        v25 = *(*(&v37 + 1) + 8 * j);
        if ([v5 rangeOfString:v25] != 0x7FFFFFFFFFFFFFFFLL)
        {
          v28 = [v5 stringByReplacingOccurrencesOfString:v25 withString:&stru_286AD9A18];

          v26 = 0;
          v19 = v28;
          goto LABEL_31;
        }
      }

      v22 = [v10 countByEnumeratingWithState:&v37 objects:v45 count:16];
      if (v22)
      {
        continue;
      }

      break;
    }
  }

  v26 = 1;
  if (!v20)
  {
    v27 = 0;
    goto LABEL_34;
  }

LABEL_31:
  v27 = [v5 componentsSeparatedByString:@"/"];
  if ([v27 count] != v36 || (objc_msgSend(v35, "annotated:", v18) & 1) != 0)
  {
LABEL_33:
    LOBYTE(v26) = 1;
    goto LABEL_34;
  }

  v31 = +[MSDPlatform sharedInstance];
  v32 = [v31 iOS];

  if (v32)
  {
    if ([v35 shouldRestoreSystemContainer_iOS:v19 shared:v26])
    {
      goto LABEL_33;
    }
  }

  else if ([v35 shouldRestoreSystemContainer_WatchAndTV:v19 shared:v26])
  {
    goto LABEL_33;
  }

  v33 = defaultLogHandle();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
  {
    [WhitelistChecker handleSystemContainerFiles:v5 withMetadata:v33];
  }

  LOBYTE(v26) = 0;
LABEL_34:

  v29 = *MEMORY[0x277D85DE8];
  return v26;
}

- (void)load
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_259B7D000, a2, OS_LOG_TYPE_ERROR, "Cannot load domains.plist from %{public}@.", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)getRealPathForFile:(os_log_t)log withMetaData:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138543618;
  v5 = a1;
  v6 = 2114;
  v7 = a2;
  _os_log_debug_impl(&dword_259B7D000, log, OS_LOG_TYPE_DEBUG, "Manifest file path %{public}@ is not same as real path: %{public}@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)handleSystemContainerFiles:(uint64_t)a1 withMetadata:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 136315394;
  v4 = "[WhitelistChecker handleSystemContainerFiles:withMetadata:]";
  v5 = 2114;
  v6 = a1;
  _os_log_error_impl(&dword_259B7D000, a2, OS_LOG_TYPE_ERROR, "%s:Container check failed for %{public}@", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

@end