@interface ML3MultiUserMusicLibraryResourcesManager
@end

@implementation ML3MultiUserMusicLibraryResourcesManager

uint64_t __71___ML3MultiUserMusicLibraryResourcesManager_cachedLibraryContainerPath__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

uint64_t __69___ML3MultiUserMusicLibraryResourcesManager_cachedMusicContainerPath__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

void __65___ML3MultiUserMusicLibraryResourcesManager_libraryContainerPath__block_invoke(uint64_t a1)
{
  v42 = *MEMORY[0x277D85DE8];
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + 16));
  v2 = *(*(*(a1 + 40) + 8) + 40);
  v3 = os_log_create("com.apple.amp.medialibrary", "MultiUser");
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      v5 = *(a1 + 32);
      *buf = 138543362;
      v37 = v5;
      _os_log_impl(&dword_22D2FA000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ - libraryContainerPath - Using the cached path", buf, 0xCu);
    }
  }

  else
  {
    if (v4)
    {
      v6 = *(a1 + 32);
      *buf = 138543362;
      v37 = v6;
      _os_log_impl(&dword_22D2FA000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ - libraryContainerPath - Using the service to retrieve libraryContainerPath", buf, 0xCu);
    }

    v7 = [*(a1 + 32) libraryResourcesServices];
    v33 = 0;
    v8 = [v7 libraryContainerPathWithError:&v33];
    v9 = v33;
    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v8;

    if (v9 || (v12 = *(*(*(a1 + 40) + 8) + 40)) == 0)
    {
      v18 = _ML3LogCategoryMultiUser();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = *(a1 + 32);
        v20 = *(*(*(a1 + 40) + 8) + 40);
        *buf = 138543874;
        v37 = v19;
        v38 = 2114;
        v39 = v9;
        v40 = 2114;
        v41 = v20;
        _os_log_impl(&dword_22D2FA000, v18, OS_LOG_TYPE_ERROR, "%{public}@ - libraryContainerPath - Fatal error retrieving library container path [throwing] - error=%{public}@, libraryContainerPath=%{public}@", buf, 0x20u);
      }

      if (MSVDeviceOSIsInternalInstall())
      {
        v21 = _ML3LogCategoryMultiUser();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
        {
          v22 = *(a1 + 32);
          *buf = 138543618;
          v37 = v22;
          v38 = 2114;
          v39 = v9;
          _os_log_impl(&dword_22D2FA000, v21, OS_LOG_TYPE_FAULT, "%{public}@ - libraryContainerPath - Fatal error retrieving library container path [throwing] - error=%{public}@", buf, 0x16u);
        }
      }

      v23 = dispatch_semaphore_create(0);
      v24 = MEMORY[0x277D27EF0];
      v25 = *MEMORY[0x277D27EB8];
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __65___ML3MultiUserMusicLibraryResourcesManager_libraryContainerPath__block_invoke_9;
      v32[3] = &unk_278765FB8;
      v26 = v23;
      v32[4] = v26;
      [v24 snapshotWithDomain:v25 type:@"Bug" subType:@"LibraryContainerPath" context:@"Failed Getting Path" triggerThresholdValues:0 events:0 completion:v32];
      dispatch_semaphore_wait(v26, 0xFFFFFFFFFFFFFFFFLL);
      v27 = MEMORY[0x277CBEAD8];
      v28 = *MEMORY[0x277CBE658];
      v34 = @"error";
      v35 = v9;
      v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
      v30 = [v27 exceptionWithName:v28 reason:@"Unable to retrieve media library folder" userInfo:v29];
      v31 = v30;

      objc_exception_throw(v30);
    }

    v13 = *(a1 + 32);
    v14 = v12;
    v3 = *(v13 + 16);
    *(v13 + 16) = v14;
  }

  v15 = os_log_create("com.apple.amp.medialibrary", "MultiUser");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = *(a1 + 32);
    v17 = *(*(*(a1 + 40) + 8) + 40);
    *buf = 138543618;
    v37 = v16;
    v38 = 2114;
    v39 = v17;
    _os_log_impl(&dword_22D2FA000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ - libraryContainerPath - Retrieved path: %{public}@", buf, 0x16u);
  }
}

@end