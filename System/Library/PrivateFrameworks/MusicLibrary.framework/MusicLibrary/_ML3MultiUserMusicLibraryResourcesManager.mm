@interface _ML3MultiUserMusicLibraryResourcesManager
- (NSString)cachedLibraryContainerPath;
- (NSString)cachedMusicContainerPath;
- (_ML3MultiUserMusicLibraryResourcesManager)initWithLibraryResourcesService:(id)service;
- (id)libraryContainerPath;
- (id)musicAssetsContainerPath;
- (void)emergencyDisconnectWithCompletion:(id)completion;
- (void)performDatabasePathChange:(id)change completion:(id)completion;
- (void)setCachedLibraryContainerPath:(id)path;
- (void)setCachedMusicContainerPath:(id)path;
@end

@implementation _ML3MultiUserMusicLibraryResourcesManager

- (void)emergencyDisconnectWithCompletion:(id)completion
{
  v11 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = os_log_create("com.apple.amp.medialibrary", "MultiUser");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    cachedLibraryContainerPath = [(_ML3MultiUserMusicLibraryResourcesManager *)self cachedLibraryContainerPath];
    v7 = 138543618;
    selfCopy = self;
    v9 = 2114;
    v10 = cachedLibraryContainerPath;
    _os_log_impl(&dword_22D2FA000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ - emergencyDisconnectWithCompletion: - Wiping cached media folder path: %{public}@", &v7, 0x16u);
  }

  [(_ML3MultiUserMusicLibraryResourcesManager *)self setCachedLibraryContainerPath:0];
  completionCopy[2](completionCopy, 1, 0);
}

- (void)performDatabasePathChange:(id)change completion:(id)completion
{
  v13 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  completionCopy = completion;
  v8 = os_log_create("com.apple.amp.medialibrary", "MultiUser");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543618;
    selfCopy = self;
    v11 = 2114;
    v12 = changeCopy;
    _os_log_impl(&dword_22D2FA000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ - performDatabasePathChange: - newPath=%{public}@ - No-Op", &v9, 0x16u);
  }

  [(_ML3MultiUserMusicLibraryResourcesManager *)self setCachedLibraryContainerPath:0];
  completionCopy[2](completionCopy, 1, 0);
}

- (void)setCachedLibraryContainerPath:(id)path
{
  pathCopy = path;
  serialQueue = [(_ML3MultiUserMusicLibraryResourcesManager *)self serialQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __75___ML3MultiUserMusicLibraryResourcesManager_setCachedLibraryContainerPath___block_invoke;
  v7[3] = &unk_2787660F0;
  v7[4] = self;
  v8 = pathCopy;
  v6 = pathCopy;
  dispatch_sync(serialQueue, v7);
}

- (NSString)cachedLibraryContainerPath
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__28328;
  v11 = __Block_byref_object_dispose__28329;
  v12 = 0;
  serialQueue = [(_ML3MultiUserMusicLibraryResourcesManager *)self serialQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __71___ML3MultiUserMusicLibraryResourcesManager_cachedLibraryContainerPath__block_invoke;
  v6[3] = &unk_278766080;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(serialQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)setCachedMusicContainerPath:(id)path
{
  pathCopy = path;
  serialQueue = [(_ML3MultiUserMusicLibraryResourcesManager *)self serialQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __73___ML3MultiUserMusicLibraryResourcesManager_setCachedMusicContainerPath___block_invoke;
  v7[3] = &unk_2787660F0;
  v7[4] = self;
  v8 = pathCopy;
  v6 = pathCopy;
  dispatch_sync(serialQueue, v7);
}

- (NSString)cachedMusicContainerPath
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__28328;
  v11 = __Block_byref_object_dispose__28329;
  v12 = 0;
  serialQueue = [(_ML3MultiUserMusicLibraryResourcesManager *)self serialQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __69___ML3MultiUserMusicLibraryResourcesManager_cachedMusicContainerPath__block_invoke;
  v6[3] = &unk_278766080;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(serialQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id)musicAssetsContainerPath
{
  v31 = *MEMORY[0x277D85DE8];
  cachedMusicContainerPath = [(_ML3MultiUserMusicLibraryResourcesManager *)self cachedMusicContainerPath];

  v4 = os_log_create("com.apple.amp.medialibrary", "MultiUser");
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (cachedMusicContainerPath)
  {
    if (v5)
    {
      *buf = 138543362;
      selfCopy5 = self;
      _os_log_impl(&dword_22D2FA000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ - musicContainerPath - Using the cached path", buf, 0xCu);
    }
  }

  else
  {
    if (v5)
    {
      *buf = 138543362;
      selfCopy5 = self;
      _os_log_impl(&dword_22D2FA000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ - musicContainerPath - Using the service to retrieve musicContainerPath", buf, 0xCu);
    }

    libraryResourcesServices = [(_ML3MultiUserMusicLibraryResourcesManager *)self libraryResourcesServices];
    v24 = 0;
    v4 = [libraryResourcesServices musicContainerPathWithError:&v24];
    v7 = v24;

    if (v7)
    {
      v12 = _ML3LogCategoryMultiUser();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        selfCopy5 = self;
        v29 = 2114;
        v30 = v7;
        _os_log_impl(&dword_22D2FA000, v12, OS_LOG_TYPE_ERROR, "%{public}@ - musicContainerPath - Fatal error retrieving library container path [throwing] - error=%{public}@", buf, 0x16u);
      }

      if (MSVDeviceOSIsInternalInstall())
      {
        v13 = _ML3LogCategoryMultiUser();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
        {
          *buf = 138543618;
          selfCopy5 = self;
          v29 = 2114;
          v30 = v7;
          _os_log_impl(&dword_22D2FA000, v13, OS_LOG_TYPE_FAULT, "%{public}@ - musicContainerPath - Fatal error retrieving library container path [throwing] - error=%{public}@", buf, 0x16u);
        }
      }

      v14 = dispatch_semaphore_create(0);
      v15 = MEMORY[0x277D27EF0];
      v16 = *MEMORY[0x277D27EB8];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __69___ML3MultiUserMusicLibraryResourcesManager_musicAssetsContainerPath__block_invoke;
      v23[3] = &unk_278765FB8;
      v17 = v14;
      v23[4] = v17;
      [v15 snapshotWithDomain:v16 type:@"Bug" subType:@"musicContainerPath" context:@"Failed Getting Path" triggerThresholdValues:0 events:0 completion:v23];
      dispatch_semaphore_wait(v17, 0xFFFFFFFFFFFFFFFFLL);
      v18 = MEMORY[0x277CBEAD8];
      v19 = *MEMORY[0x277CBE658];
      v25 = @"error";
      v26 = v7;
      v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
      v21 = [v18 exceptionWithName:v19 reason:@"Unable to retrieve media library folder" userInfo:v20];
      v22 = v21;

      objc_exception_throw(v21);
    }

    [(_ML3MultiUserMusicLibraryResourcesManager *)self setCachedMusicContainerPath:v4];
  }

  v8 = os_log_create("com.apple.amp.medialibrary", "MultiUser");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    cachedMusicContainerPath2 = [(_ML3MultiUserMusicLibraryResourcesManager *)self cachedMusicContainerPath];
    *buf = 138543618;
    selfCopy5 = self;
    v29 = 2114;
    v30 = cachedMusicContainerPath2;
    _os_log_impl(&dword_22D2FA000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ - musicContainerPath - Retrieved path: %{public}@", buf, 0x16u);
  }

  cachedMusicContainerPath3 = [(_ML3MultiUserMusicLibraryResourcesManager *)self cachedMusicContainerPath];

  return cachedMusicContainerPath3;
}

- (id)libraryContainerPath
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__28328;
  v11 = __Block_byref_object_dispose__28329;
  v12 = 0;
  serialQueue = [(_ML3MultiUserMusicLibraryResourcesManager *)self serialQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __65___ML3MultiUserMusicLibraryResourcesManager_libraryContainerPath__block_invoke;
  v6[3] = &unk_278766080;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(serialQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (_ML3MultiUserMusicLibraryResourcesManager)initWithLibraryResourcesService:(id)service
{
  serviceCopy = service;
  v12.receiver = self;
  v12.super_class = _ML3MultiUserMusicLibraryResourcesManager;
  v6 = [(_ML3BaseMusicLibraryResourcesManager *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_libraryResourcesServices, service);
    v8 = +[ML3MusicLibraryAccountChangeObserverProxy sharedProxy];
    [v8 addAccountChangeObserver:v7];

    v9 = dispatch_queue_create("com.apple.medialibraryd.multi-users-resources-serial-queue", 0);
    serialQueue = v7->_serialQueue;
    v7->_serialQueue = v9;
  }

  return v7;
}

@end