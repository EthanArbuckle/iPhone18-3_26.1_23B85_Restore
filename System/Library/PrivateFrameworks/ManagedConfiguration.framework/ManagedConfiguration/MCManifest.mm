@interface MCManifest
+ (id)installedProfileDataWithIdentifier:(id)identifier;
+ (id)installedProfileWithIdentifier:(id)identifier;
+ (id)installedSystemProfileDataWithIdentifier:(id)identifier;
+ (id)installedSystemProfileWithIdentifier:(id)identifier;
+ (id)installedUserProfileDataWithIdentifier:(id)identifier;
+ (id)installedUserProfileWithIdentifier:(id)identifier;
+ (id)sharedManifest;
+ (void)_setSystemManifestPath:(id)path userManifestPath:(id)manifestPath;
- (MCManifest)init;
- (id)_systemManifest;
- (id)_userManifest;
- (id)allInstalledPayloadsOfClass:(Class)class;
- (id)identifiersOfProfilesWithFilterFlags:(int)flags;
- (id)installedMDMProfile;
- (id)installedProfileWithIdentifier:(id)identifier filterFlags:(int)flags;
- (id)systemManifest;
- (id)userManifest;
- (void)_adjustManifestIdentifier:(id)identifier isUserInstall:(BOOL)install flag:(int)flag addingIdentifier:(BOOL)addingIdentifier;
- (void)_setSystemManifest:(id)manifest userManifest:(id)userManifest;
- (void)dealloc;
- (void)invalidateCache;
@end

@implementation MCManifest

+ (void)_setSystemManifestPath:(id)path userManifestPath:(id)manifestPath
{
  pathCopy = path;
  manifestPathCopy = manifestPath;
  v7 = __systemManifestFilePath;
  __systemManifestFilePath = pathCopy;
  v9 = pathCopy;

  v8 = __userManifestFilePath;
  __userManifestFilePath = manifestPathCopy;
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

+ (id)installedProfileWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [self installedSystemProfileDataWithIdentifier:identifierCopy];
  if (v5)
  {
    v6 = v5;
LABEL_4:
    v7 = [MCProfile profileWithData:v6 outError:0];
    goto LABEL_5;
  }

  v6 = [self installedUserProfileDataWithIdentifier:identifierCopy];
  if (v6)
  {
    goto LABEL_4;
  }

  v7 = 0;
LABEL_5:

  return v7;
}

+ (id)installedSystemProfileWithIdentifier:(id)identifier
{
  v3 = [self installedSystemProfileDataWithIdentifier:identifier];
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

+ (id)installedUserProfileWithIdentifier:(id)identifier
{
  v3 = [self installedUserProfileDataWithIdentifier:identifier];
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

- (id)installedProfileWithIdentifier:(id)identifier filterFlags:(int)flags
{
  flagsCopy = flags;
  identifierCopy = identifier;
  if ((flagsCopy & 0x18) == 0)
  {
    v6 = [MCManifest installedProfileWithIdentifier:identifierCopy];
    goto LABEL_7;
  }

  if ((flagsCopy & 8) == 0)
  {
    v6 = [MCManifest installedSystemProfileWithIdentifier:identifierCopy];
LABEL_7:
    v7 = v6;
    goto LABEL_8;
  }

  if ((flagsCopy & 0x10) == 0)
  {
    v6 = [MCManifest installedUserProfileWithIdentifier:identifierCopy];
    goto LABEL_7;
  }

  v7 = 0;
LABEL_8:

  return v7;
}

- (id)installedMDMProfile
{
  mEMORY[0x1E69AD428] = [MEMORY[0x1E69AD428] sharedConfiguration];
  managingProfileIdentifier = [mEMORY[0x1E69AD428] managingProfileIdentifier];

  if (managingProfileIdentifier)
  {
    v5 = [(MCManifest *)self installedProfileWithIdentifier:managingProfileIdentifier];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)installedProfileDataWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [self installedSystemProfileDataWithIdentifier:identifierCopy];
  if (!v5)
  {
    v5 = [self installedUserProfileDataWithIdentifier:identifierCopy];
  }

  return v5;
}

+ (id)installedSystemProfileDataWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = MCSystemProfileStorageDirectory();
  v5 = [identifierCopy MCHashedFilenameWithExtension:@"stub"];

  v6 = [v4 stringByAppendingPathComponent:v5];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  LODWORD(v5) = [defaultManager fileExistsAtPath:v6];

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

+ (id)installedUserProfileDataWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = MCUserProfileStorageDirectory();
  v5 = [identifierCopy MCHashedFilenameWithExtension:@"stub"];

  v6 = [v4 stringByAppendingPathComponent:v5];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  LODWORD(v5) = [defaultManager fileExistsAtPath:v6];

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

- (void)_setSystemManifest:(id)manifest userManifest:(id)userManifest
{
  userManifestCopy = userManifest;
  mCMutableDeepCopy = [manifest MCMutableDeepCopy];
  _populateMissingManifestDictionaries(mCMutableDeepCopy);
  if (([(NSMutableDictionary *)self->_systemManifest isEqualToDictionary:mCMutableDeepCopy]& 1) == 0)
  {
    objc_storeStrong(&self->_systemManifest, mCMutableDeepCopy);
    [(NSMutableDictionary *)self->_systemManifest MCWriteToBinaryFile:self->_systemFilePath];
  }

  mCMutableDeepCopy2 = [userManifestCopy MCMutableDeepCopy];
  _populateMissingManifestDictionaries(mCMutableDeepCopy2);
  if (([(NSMutableDictionary *)self->_userManifest isEqualToDictionary:mCMutableDeepCopy2]& 1) == 0)
  {
    objc_storeStrong(&self->_userManifest, mCMutableDeepCopy2);
    [(NSMutableDictionary *)self->_userManifest MCWriteToBinaryFile:self->_userFilePath];
  }
}

- (id)identifiersOfProfilesWithFilterFlags:(int)flags
{
  flagsCopy = flags;
  array = [MEMORY[0x1E695DF70] array];
  systemManifest = [(MCManifest *)self systemManifest];
  userManifest = [(MCManifest *)self userManifest];
  if (flagsCopy)
  {
    if ((flagsCopy & 8) == 0)
    {
      v8 = [systemManifest objectForKey:@"OrderedProfiles"];
      [array addObjectsFromArray:v8];
    }

    if ((flagsCopy & 0x10) == 0)
    {
      v9 = [userManifest objectForKey:@"OrderedProfiles"];
      [array addObjectsFromArray:v9];
    }
  }

  if ((flagsCopy & 2) != 0)
  {
    if ((flagsCopy & 8) == 0)
    {
      v10 = [systemManifest objectForKey:@"HiddenProfiles"];
      [array addObjectsFromArray:v10];
    }

    if ((flagsCopy & 0x10) == 0)
    {
      v11 = [userManifest objectForKey:@"HiddenProfiles"];
      [array addObjectsFromArray:v11];
    }
  }

  return array;
}

- (id)allInstalledPayloadsOfClass:(Class)class
{
  v31 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  selfCopy = self;
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
        v8 = [(MCManifest *)selfCopy installedProfileWithIdentifier:v6];
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        payloads = [v8 payloads];
        v10 = [payloads countByEnumeratingWithState:&v21 objects:v29 count:16];
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
                objc_enumerationMutation(payloads);
              }

              v14 = *(*(&v21 + 1) + 8 * j);
              if (objc_opt_isKindOfClass())
              {
                [array addObject:v14];
              }
            }

            v11 = [payloads countByEnumeratingWithState:&v21 objects:v29 count:16];
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

  return array;
}

- (void)_adjustManifestIdentifier:(id)identifier isUserInstall:(BOOL)install flag:(int)flag addingIdentifier:(BOOL)addingIdentifier
{
  identifierCopy = identifier;
  syncQueue = self->_syncQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__MCManifest__adjustManifestIdentifier_isUserInstall_flag_addingIdentifier___block_invoke;
  block[3] = &unk_1E77D1EC0;
  installCopy = install;
  flagCopy = flag;
  addingIdentifierCopy = addingIdentifier;
  block[4] = self;
  v14 = identifierCopy;
  v12 = identifierCopy;
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