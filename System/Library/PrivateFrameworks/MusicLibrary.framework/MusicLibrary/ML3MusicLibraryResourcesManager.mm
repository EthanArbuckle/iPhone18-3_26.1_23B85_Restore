@interface ML3MusicLibraryResourcesManager
+ (ML3MusicLibraryResourcesManager)sharedManager;
- (ML3MusicLibraryResourcesManager)initWithBaseResourcesManager:(id)a3;
- (ML3MusicLibraryResourcesManager)initWithCoder:(id)a3;
- (ML3MusicLibraryResourcesManager)initWithContext:(id)a3;
- (_ML3BaseMusicLibraryResourcesManager)implementation;
- (id)libraryContainerPath;
- (id)libraryContainerPathByAppendingPathComponent:(id)a3;
- (id)libraryContainerRelativePath:(id)a3;
- (id)mediaFolderRelativePath:(id)a3;
- (id)musicAssetsContainerPath;
- (id)pathForBaseLocationPath:(int64_t)a3;
- (id)pathForResourceFileOrFolder:(int)a3;
- (id)pathForResourceFileOrFolder:(int)a3 basePath:(id)a4 relativeToBase:(BOOL)a5 createParentFolderIfNecessary:(BOOL)a6;
- (void)encodeWithCoder:(id)a3;
- (void)setContext:(id)a3;
@end

@implementation ML3MusicLibraryResourcesManager

+ (ML3MusicLibraryResourcesManager)sharedManager
{
  if (sharedManager_onceToken != -1)
  {
    dispatch_once(&sharedManager_onceToken, &__block_literal_global_20445);
  }

  v3 = sharedManager___sharedManager;

  return v3;
}

void __48__ML3MusicLibraryResourcesManager_sharedManager__block_invoke()
{
  v0 = [ML3MusicLibraryResourcesManager alloc];
  v3 = +[ML3MusicLibraryResourcesManagerContext contextForAutoupdatingSharedLibrary];
  v1 = [(ML3MusicLibraryResourcesManager *)v0 initWithContext:v3];
  v2 = sharedManager___sharedManager;
  sharedManager___sharedManager = v1;
}

- (_ML3BaseMusicLibraryResourcesManager)implementation
{
  v50 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  if (!self->_implementation)
  {
    v4 = [(ML3MusicLibraryResourcesManager *)self context];
    if ([v4 isMultiUserSupported])
    {
      v5 = [(ML3MusicLibraryResourcesManager *)self context];
      v6 = [v5 isRunningInDaemon];

      if (v6)
      {
        v7 = [(ML3MusicLibraryResourcesManager *)self context];
        v8 = [v7 accountInfo];
        if (v8)
        {
          v9 = v8;
          v10 = [(ML3MusicLibraryResourcesManager *)self context];
          v11 = [v10 accountChangeObserver];

          if (v11)
          {
LABEL_7:
            v13 = os_log_create("com.apple.amp.medialibrary", "MultiUser");
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
            {
              LOWORD(v48) = 0;
              _os_log_impl(&dword_22D2FA000, v13, OS_LOG_TYPE_DEBUG, "Creating a multi-users daemon library resource manager", &v48, 2u);
            }

            v14 = [_ML3MultiUserDaemonMusicLibraryResourcesManager alloc];
            v15 = [(ML3MusicLibraryResourcesManager *)self context];
            v16 = [v15 accountInfo];
            v17 = [(ML3MusicLibraryResourcesManager *)self context];
            v18 = [v17 accountChangeObserver];
            v19 = [(_ML3MultiUserDaemonMusicLibraryResourcesManager *)v14 initWithAccountInfo:v16 accountChangeObserver:v18];
            implementation = self->_implementation;
            self->_implementation = v19;

            goto LABEL_32;
          }
        }

        else
        {
        }

        v12 = [MEMORY[0x277CCA890] currentHandler];
        [v12 handleFailureInMethod:a2 object:self file:@"ML3MusicLibraryResourcesManager.m" lineNumber:159 description:@"Daemon multi-users resources manager context must specify both account info provider and a media library account change observer"];

        goto LABEL_7;
      }
    }

    else
    {
    }

    v21 = [(ML3MusicLibraryResourcesManager *)self context];
    if ([v21 isMultiUserSupported])
    {
      v22 = [(ML3MusicLibraryResourcesManager *)self context];
      v23 = [v22 isRunningInDaemon];

      if ((v23 & 1) == 0)
      {
        v24 = [(ML3MusicLibraryResourcesManager *)self context];
        v25 = [v24 resourcesService];

        if (!v25)
        {
          v47 = [MEMORY[0x277CCA890] currentHandler];
          [v47 handleFailureInMethod:a2 object:self file:@"ML3MusicLibraryResourcesManager.m" lineNumber:164 description:@"Non-daemon multi-users resources manager context must specify the resources service"];
        }

        v26 = os_log_create("com.apple.amp.medialibrary", "MultiUser");
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(v48) = 0;
          _os_log_impl(&dword_22D2FA000, v26, OS_LOG_TYPE_DEBUG, "Creating a multi-users client resource manager", &v48, 2u);
        }

        v27 = [_ML3MultiUserMusicLibraryResourcesManager alloc];
        v15 = [(ML3MusicLibraryResourcesManager *)self context];
        v16 = [v15 resourcesService];
        v28 = [(_ML3MultiUserMusicLibraryResourcesManager *)v27 initWithLibraryResourcesService:v16];
LABEL_31:
        v44 = self->_implementation;
        self->_implementation = v28;

LABEL_32:
        goto LABEL_33;
      }
    }

    else
    {
    }

    v29 = [(ML3MusicLibraryResourcesManager *)self context];
    v30 = [v29 isMultiUserSupported];

    if (v30)
    {
      v15 = [MEMORY[0x277CCA890] currentHandler];
      [v15 handleFailureInMethod:a2 object:self file:@"ML3MusicLibraryResourcesManager.m" lineNumber:184 description:@"No implementation of ML3MusicLibraryResourcesManager supports the current configuration"];
LABEL_33:

      goto LABEL_34;
    }

    v31 = [(ML3MusicLibraryResourcesManager *)self context];
    v32 = [v31 libraryContainerIdentifier];

    if (v32)
    {
      v33 = os_log_create("com.apple.amp.medialibrary", "MultiUser");
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        v34 = [(ML3MusicLibraryResourcesManager *)self context];
        v35 = [v34 libraryContainerIdentifier];
        v48 = 138543362;
        v49 = v35;
        _os_log_impl(&dword_22D2FA000, v33, OS_LOG_TYPE_DEBUG, "Creating a single library resource manager with library container: %{public}@", &v48, 0xCu);
      }

      v36 = [_ML3BaseMusicLibraryResourcesManager alloc];
      v15 = [(ML3MusicLibraryResourcesManager *)self context];
      v16 = [v15 libraryContainerIdentifier];
      v28 = [(_ML3BaseMusicLibraryResourcesManager *)v36 initWithLibraryContainerIdentifier:v16];
    }

    else
    {
      v37 = [(ML3MusicLibraryResourcesManager *)self context];
      v38 = [v37 accountInfo];

      v39 = os_log_create("com.apple.amp.medialibrary", "MultiUser");
      v40 = os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG);
      if (v38)
      {
        if (v40)
        {
          v41 = [(ML3MusicLibraryResourcesManager *)self context];
          v42 = [v41 accountInfo];
          v48 = 138543362;
          v49 = v42;
          _os_log_impl(&dword_22D2FA000, v39, OS_LOG_TYPE_DEBUG, "Creating a single library resource manager for account info: %{public}@", &v48, 0xCu);
        }
      }

      else if (v40)
      {
        LOWORD(v48) = 0;
        _os_log_impl(&dword_22D2FA000, v39, OS_LOG_TYPE_DEBUG, "Creating a single library resource manager for the default media folder", &v48, 2u);
      }

      v43 = [_ML3BaseMusicLibraryResourcesManager alloc];
      v15 = [(ML3MusicLibraryResourcesManager *)self context];
      v16 = [v15 accountInfo];
      v28 = [(_ML3BaseMusicLibraryResourcesManager *)v43 initWithAccountInfo:v16];
    }

    goto LABEL_31;
  }

LABEL_34:
  os_unfair_lock_unlock(&self->_lock);
  v45 = self->_implementation;

  return v45;
}

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  v4 = [(ML3MusicLibraryResourcesManager *)self context];
  if ([v4 isMultiUserSupported])
  {

    [v7 encodeBool:0 forKey:@"isManagingResourceForSingleUserWithAccountInfoKey"];
  }

  else
  {
    v5 = [(ML3MusicLibraryResourcesManager *)self context];
    v6 = [v5 accountInfo];

    [v7 encodeBool:v6 != 0 forKey:@"isManagingResourceForSingleUserWithAccountInfoKey"];
    if (v6)
    {
      [v7 encodeObject:self->_implementation forKey:@"implementationKey"];
    }
  }
}

- (ML3MusicLibraryResourcesManager)initWithCoder:(id)a3
{
  v4 = a3;
  if ([v4 decodeBoolForKey:@"isManagingResourceForSingleUserWithAccountInfoKey"])
  {
    v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"implementationKey"];
    self = [(ML3MusicLibraryResourcesManager *)self initWithBaseResourcesManager:v5];

    v6 = self;
  }

  else
  {
    v6 = +[ML3MusicLibraryResourcesManager sharedManager];
  }

  return v6;
}

- (ML3MusicLibraryResourcesManager)initWithBaseResourcesManager:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ML3MusicLibraryResourcesManager;
  v6 = [(ML3MusicLibraryResourcesManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_implementation, a3);
  }

  return v7;
}

- (ML3MusicLibraryResourcesManager)initWithContext:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ML3MusicLibraryResourcesManager;
  v6 = [(ML3MusicLibraryResourcesManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_context, a3);
    v7->_lock._os_unfair_lock_opaque = 0;
  }

  return v7;
}

- (id)mediaFolderRelativePath:(id)a3
{
  v4 = a3;
  v5 = [(ML3MusicLibraryResourcesManager *)self implementation];
  v6 = [v5 mediaFolderRelativePath:v4];

  return v6;
}

- (id)pathForBaseLocationPath:(int64_t)a3
{
  v4 = [(ML3MusicLibraryResourcesManager *)self implementation];
  v5 = [v4 pathForBaseLocationPath:a3];

  return v5;
}

- (id)pathForResourceFileOrFolder:(int)a3 basePath:(id)a4 relativeToBase:(BOOL)a5 createParentFolderIfNecessary:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v8 = *&a3;
  v10 = a4;
  v11 = [(ML3MusicLibraryResourcesManager *)self implementation];
  v12 = [v11 pathForResourceFileOrFolder:v8 basePath:v10 relativeToBase:v7 createParentFolderIfNecessary:v6];

  return v12;
}

- (id)musicAssetsContainerPath
{
  v2 = [(ML3MusicLibraryResourcesManager *)self implementation];
  v3 = [v2 musicAssetsContainerPath];

  return v3;
}

- (id)pathForResourceFileOrFolder:(int)a3
{
  v3 = *&a3;
  v4 = [(ML3MusicLibraryResourcesManager *)self implementation];
  v5 = [v4 pathForResourceFileOrFolder:v3];

  return v5;
}

- (id)libraryContainerRelativePath:(id)a3
{
  v4 = a3;
  v5 = [(ML3MusicLibraryResourcesManager *)self implementation];
  v6 = [v5 libraryContainerRelativePath:v4];

  return v6;
}

- (id)libraryContainerPathByAppendingPathComponent:(id)a3
{
  v4 = a3;
  v5 = [(ML3MusicLibraryResourcesManager *)self implementation];
  v6 = [v5 libraryContainerPathByAppendingPathComponent:v4];

  return v6;
}

- (id)libraryContainerPath
{
  v2 = [(ML3MusicLibraryResourcesManager *)self implementation];
  v3 = [v2 libraryContainerPath];

  return v3;
}

- (void)setContext:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = +[ML3MusicLibraryResourcesManagerContext contextForAutoupdatingSharedLibrary];
  }

  context = self->_context;
  self->_context = v5;

  implementation = self->_implementation;
  self->_implementation = 0;
}

@end