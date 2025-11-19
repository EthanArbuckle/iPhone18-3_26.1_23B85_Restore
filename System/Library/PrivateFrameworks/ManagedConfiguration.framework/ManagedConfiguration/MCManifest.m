@interface MCManifest
+ (id)installedProfileDataWithIdentifier:(id)a3;
+ (id)installedProfileWithIdentifier:(id)a3;
+ (id)installedSystemProfileDataWithIdentifier:(id)a3;
+ (id)installedSystemProfileWithIdentifier:(id)a3;
+ (id)installedUserProfileDataWithIdentifier:(id)a3;
+ (id)installedUserProfileWithIdentifier:(id)a3;
+ (id)sharedManifest;
+ (void)_setSystemManifestPath:(id)a3 userManifestPath:(id)a4;
- (MCManifest)init;
- (id)_systemManifest;
- (id)_userManifest;
- (id)allInstalledPayloadsOfClass:(Class)a3;
- (id)identifiersOfProfilesWithFilterFlags:(int)a3;
- (id)installedMDMProfile;
- (id)installedProfileWithIdentifier:(id)a3 filterFlags:(int)a4;
- (id)systemManifest;
- (id)userManifest;
- (void)_adjustManifestIdentifier:(id)a3 isUserInstall:(BOOL)a4 flag:(int)a5 addingIdentifier:(BOOL)a6;
- (void)_setSystemManifest:(id)a3 userManifest:(id)a4;
- (void)dealloc;
- (void)invalidateCache;
@end

@implementation MCManifest

+ (void)_setSystemManifestPath:(id)a3 userManifestPath:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = __systemManifestFilePath;
  __systemManifestFilePath = v5;
  v9 = v5;

  v8 = __userManifestFilePath;
  __userManifestFilePath = v6;
}

+ (id)sharedManifest
{
  if (sharedManifest_once != -1)
  {
    +[MCManifest sharedManifest];
  }

  v3 = sharedManifest_obj;

  return v3;
}

uint64_t __28__MCManifest_sharedManifest__block_invoke()
{
  sharedManifest_obj = objc_alloc_init(MCManifest);

  return MEMORY[0x1EEE66BB8]();
}

+ (id)installedProfileWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [a1 installedSystemProfileDataWithIdentifier:v4];
  if (v5)
  {
    v6 = v5;
LABEL_4:
    v7 = [MCProfile profileWithData:v6 outError:0];
    goto LABEL_5;
  }

  v6 = [a1 installedUserProfileDataWithIdentifier:v4];
  if (v6)
  {
    goto LABEL_4;
  }

  v7 = 0;
LABEL_5:

  return v7;
}

+ (id)installedSystemProfileWithIdentifier:(id)a3
{
  v3 = [a1 installedSystemProfileDataWithIdentifier:a3];
  if (v3)
  {
    v4 = [MCProfile profileWithData:v3 outError:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)installedUserProfileWithIdentifier:(id)a3
{
  v3 = [a1 installedUserProfileDataWithIdentifier:a3];
  if (v3)
  {
    v4 = [MCProfile profileWithData:v3 outError:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)installedProfileWithIdentifier:(id)a3 filterFlags:(int)a4
{
  v4 = a4;
  v5 = a3;
  if ((v4 & 0x18) == 0)
  {
    v6 = [MCManifest installedProfileWithIdentifier:v5];
    goto LABEL_7;
  }

  if ((v4 & 8) == 0)
  {
    v6 = [MCManifest installedSystemProfileWithIdentifier:v5];
LABEL_7:
    v7 = v6;
    goto LABEL_8;
  }

  if ((v4 & 0x10) == 0)
  {
    v6 = [MCManifest installedUserProfileWithIdentifier:v5];
    goto LABEL_7;
  }

  v7 = 0;
LABEL_8:

  return v7;
}

- (id)installedMDMProfile
{
  v3 = [MEMORY[0x1E69AD428] sharedConfiguration];
  v4 = [v3 managingProfileIdentifier];

  if (v4)
  {
    v5 = [(MCManifest *)self installedProfileWithIdentifier:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)installedProfileDataWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [a1 installedSystemProfileDataWithIdentifier:v4];
  if (!v5)
  {
    v5 = [a1 installedUserProfileDataWithIdentifier:v4];
  }

  return v5;
}

+ (id)installedSystemProfileDataWithIdentifier:(id)a3
{
  v3 = a3;
  v4 = MCSystemProfileStorageDirectory();
  v5 = [v3 MCHashedFilenameWithExtension:@"stub"];

  v6 = [v4 stringByAppendingPathComponent:v5];

  v7 = [MEMORY[0x1E696AC08] defaultManager];
  LODWORD(v5) = [v7 fileExistsAtPath:v6];

  if (v5)
  {
    v8 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)installedUserProfileDataWithIdentifier:(id)a3
{
  v3 = a3;
  v4 = MCUserProfileStorageDirectory();
  v5 = [v3 MCHashedFilenameWithExtension:@"stub"];

  v6 = [v4 stringByAppendingPathComponent:v5];

  v7 = [MEMORY[0x1E696AC08] defaultManager];
  LODWORD(v5) = [v7 fileExistsAtPath:v6];

  if (v5)
  {
    v8 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (MCManifest)init
{
  v12.receiver = self;
  v12.super_class = MCManifest;
  v2 = [(MCManifest *)&v12 init];
  if (v2)
  {
    v3 = __systemManifestFilePath;
    if (!__systemManifestFilePath)
    {
      v4 = MCSystemManifestPath();
      v5 = __systemManifestFilePath;
      __systemManifestFilePath = v4;

      v3 = __systemManifestFilePath;
    }

    objc_storeStrong(&v2->_systemFilePath, v3);
    v6 = __userManifestFilePath;
    if (!__userManifestFilePath)
    {
      v7 = MCUserManifestPath();
      v8 = __userManifestFilePath;
      __userManifestFilePath = v7;

      v6 = __userManifestFilePath;
    }

    objc_storeStrong(&v2->_userFilePath, v6);
    v9 = dispatch_queue_create("com.apple.managedconfiguration.MCManifest._syncQueue", 0);
    syncQueue = v2->_syncQueue;
    v2->_syncQueue = v9;
  }

  return v2;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.ManagedConfiguration.profileListChanged", 0);
  dispatch_suspend(self->_syncQueue);
  v4.receiver = self;
  v4.super_class = MCManifest;
  [(MCManifest *)&v4 dealloc];
}

- (id)_systemManifest
{
  systemManifest = self->_systemManifest;
  if (!systemManifest)
  {
    v4 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:self->_systemFilePath];
    v5 = [MEMORY[0x1E696AE40] MCSafePropertyListWithData:v4 options:1 format:0 error:0];
    v6 = self->_systemManifest;
    self->_systemManifest = v5;

    v7 = self->_systemManifest;
    if (!v7)
    {
      v8 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:4];
      v9 = self->_systemManifest;
      self->_systemManifest = v8;

      v7 = self->_systemManifest;
    }

    _populateMissingManifestDictionaries(v7);

    systemManifest = self->_systemManifest;
  }

  return systemManifest;
}

- (id)_userManifest
{
  userManifest = self->_userManifest;
  if (!userManifest)
  {
    v4 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:self->_userFilePath];
    v5 = [MEMORY[0x1E696AE40] MCSafePropertyListWithData:v4 options:1 format:0 error:0];
    v6 = self->_userManifest;
    self->_userManifest = v5;

    v7 = self->_userManifest;
    if (!v7)
    {
      v8 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:4];
      v9 = self->_userManifest;
      self->_userManifest = v8;

      v7 = self->_userManifest;
    }

    _populateMissingManifestDictionaries(v7);

    userManifest = self->_userManifest;
  }

  return userManifest;
}

- (id)systemManifest
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__1;
  v10 = __Block_byref_object_dispose__1;
  v11 = 0;
  syncQueue = self->_syncQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __28__MCManifest_systemManifest__block_invoke;
  v5[3] = &unk_1E77D0260;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(syncQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __28__MCManifest_systemManifest__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _systemManifest];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (id)userManifest
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__1;
  v10 = __Block_byref_object_dispose__1;
  v11 = 0;
  syncQueue = self->_syncQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __26__MCManifest_userManifest__block_invoke;
  v5[3] = &unk_1E77D0260;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(syncQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __26__MCManifest_userManifest__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _userManifest];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (void)_setSystemManifest:(id)a3 userManifest:(id)a4
{
  v8 = a4;
  v6 = [a3 MCMutableDeepCopy];
  _populateMissingManifestDictionaries(v6);
  if (([(NSMutableDictionary *)self->_systemManifest isEqualToDictionary:v6]& 1) == 0)
  {
    objc_storeStrong(&self->_systemManifest, v6);
    [(NSMutableDictionary *)self->_systemManifest MCWriteToBinaryFile:self->_systemFilePath];
  }

  v7 = [v8 MCMutableDeepCopy];
  _populateMissingManifestDictionaries(v7);
  if (([(NSMutableDictionary *)self->_userManifest isEqualToDictionary:v7]& 1) == 0)
  {
    objc_storeStrong(&self->_userManifest, v7);
    [(NSMutableDictionary *)self->_userManifest MCWriteToBinaryFile:self->_userFilePath];
  }
}

- (id)identifiersOfProfilesWithFilterFlags:(int)a3
{
  v3 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  v6 = [(MCManifest *)self systemManifest];
  v7 = [(MCManifest *)self userManifest];
  if (v3)
  {
    if ((v3 & 8) == 0)
    {
      v8 = [v6 objectForKey:@"OrderedProfiles"];
      [v5 addObjectsFromArray:v8];
    }

    if ((v3 & 0x10) == 0)
    {
      v9 = [v7 objectForKey:@"OrderedProfiles"];
      [v5 addObjectsFromArray:v9];
    }
  }

  if ((v3 & 2) != 0)
  {
    if ((v3 & 8) == 0)
    {
      v10 = [v6 objectForKey:@"HiddenProfiles"];
      [v5 addObjectsFromArray:v10];
    }

    if ((v3 & 0x10) == 0)
    {
      v11 = [v7 objectForKey:@"HiddenProfiles"];
      [v5 addObjectsFromArray:v11];
    }
  }

  return v5;
}

- (id)allInstalledPayloadsOfClass:(Class)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E695DF70] array];
  v19 = self;
  [(MCManifest *)self allInstalledProfileIdentifiers];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v28 = 0u;
  v20 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v20)
  {
    v18 = *v26;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v26 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v25 + 1) + 8 * i);
        v7 = objc_autoreleasePoolPush();
        v8 = [(MCManifest *)v19 installedProfileWithIdentifier:v6];
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v9 = [v8 payloads];
        v10 = [v9 countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v22;
          do
          {
            for (j = 0; j != v11; ++j)
            {
              if (*v22 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v21 + 1) + 8 * j);
              if (objc_opt_isKindOfClass())
              {
                [v4 addObject:v14];
              }
            }

            v11 = [v9 countByEnumeratingWithState:&v21 objects:v29 count:16];
          }

          while (v11);
        }

        objc_autoreleasePoolPop(v7);
      }

      v20 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v20);
  }

  v15 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)_adjustManifestIdentifier:(id)a3 isUserInstall:(BOOL)a4 flag:(int)a5 addingIdentifier:(BOOL)a6
{
  v10 = a3;
  syncQueue = self->_syncQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__MCManifest__adjustManifestIdentifier_isUserInstall_flag_addingIdentifier___block_invoke;
  block[3] = &unk_1E77D1EC0;
  v16 = a4;
  v15 = a5;
  v17 = a6;
  block[4] = self;
  v14 = v10;
  v12 = v10;
  dispatch_sync(syncQueue, block);
}

void __76__MCManifest__adjustManifestIdentifier_isUserInstall_flag_addingIdentifier___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 52);
  v3 = *(a1 + 32);
  if (v2)
  {
    [v3 _userManifest];
  }

  else
  {
    [v3 _systemManifest];
  }
  v4 = ;
  v21 = [v4 MCMutableDeepCopy];

  v5 = *(a1 + 48);
  if (v5)
  {
    v6 = MEMORY[0x1E695DFA8];
    v7 = [v21 objectForKeyedSubscript:@"OrderedProfiles"];
    v8 = [v6 setWithArray:v7];

    v9 = *(a1 + 40);
    if (*(a1 + 53) == 1)
    {
      [v8 addObject:v9];
    }

    else
    {
      [v8 removeObject:v9];
    }

    v10 = [v8 allObjects];
    [v21 setObject:v10 forKeyedSubscript:@"OrderedProfiles"];

    v5 = *(a1 + 48);
  }

  if ((v5 & 2) != 0)
  {
    v11 = MEMORY[0x1E695DFA8];
    v12 = [v21 objectForKeyedSubscript:@"HiddenProfiles"];
    v13 = [v11 setWithArray:v12];

    v14 = *(a1 + 40);
    if (*(a1 + 53) == 1)
    {
      [v13 addObject:v14];
    }

    else
    {
      [v13 removeObject:v14];
    }

    v15 = [v13 allObjects];
    [v21 setObject:v15 forKeyedSubscript:@"HiddenProfiles"];
  }

  v16 = *(a1 + 32);
  if (*(a1 + 52) == 1)
  {
    v17 = [v16 _systemManifest];
    v18 = v16;
    v19 = v17;
    v20 = v21;
  }

  else
  {
    v17 = [v16 _userManifest];
    v18 = v16;
    v19 = v21;
    v20 = v17;
  }

  [v18 _setSystemManifest:v19 userManifest:v20];
}

- (void)invalidateCache
{
  syncQueue = self->_syncQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __29__MCManifest_invalidateCache__block_invoke;
  block[3] = &unk_1E77D0180;
  block[4] = self;
  dispatch_sync(syncQueue, block);
}

void __29__MCManifest_invalidateCache__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  *(v2 + 24) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 32);
  *(v4 + 32) = 0;
}

@end