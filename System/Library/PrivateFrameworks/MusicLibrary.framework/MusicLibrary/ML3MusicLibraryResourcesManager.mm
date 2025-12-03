@interface ML3MusicLibraryResourcesManager
+ (ML3MusicLibraryResourcesManager)sharedManager;
- (ML3MusicLibraryResourcesManager)initWithBaseResourcesManager:(id)manager;
- (ML3MusicLibraryResourcesManager)initWithCoder:(id)coder;
- (ML3MusicLibraryResourcesManager)initWithContext:(id)context;
- (_ML3BaseMusicLibraryResourcesManager)implementation;
- (id)libraryContainerPath;
- (id)libraryContainerPathByAppendingPathComponent:(id)component;
- (id)libraryContainerRelativePath:(id)path;
- (id)mediaFolderRelativePath:(id)path;
- (id)musicAssetsContainerPath;
- (id)pathForBaseLocationPath:(int64_t)path;
- (id)pathForResourceFileOrFolder:(int)folder;
- (id)pathForResourceFileOrFolder:(int)folder basePath:(id)path relativeToBase:(BOOL)base createParentFolderIfNecessary:(BOOL)necessary;
- (void)encodeWithCoder:(id)coder;
- (void)setContext:(id)context;
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
    context = [(ML3MusicLibraryResourcesManager *)self context];
    if ([context isMultiUserSupported])
    {
      context2 = [(ML3MusicLibraryResourcesManager *)self context];
      isRunningInDaemon = [context2 isRunningInDaemon];

      if (isRunningInDaemon)
      {
        context3 = [(ML3MusicLibraryResourcesManager *)self context];
        accountInfo = [context3 accountInfo];
        if (accountInfo)
        {
          v9 = accountInfo;
          context4 = [(ML3MusicLibraryResourcesManager *)self context];
          accountChangeObserver = [context4 accountChangeObserver];

          if (accountChangeObserver)
          {
LABEL_7:
            v13 = os_log_create("com.apple.amp.medialibrary", "MultiUser");
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
            {
              LOWORD(v48) = 0;
              _os_log_impl(&dword_22D2FA000, v13, OS_LOG_TYPE_DEBUG, "Creating a multi-users daemon library resource manager", &v48, 2u);
            }

            v14 = [_ML3MultiUserDaemonMusicLibraryResourcesManager alloc];
            context5 = [(ML3MusicLibraryResourcesManager *)self context];
            accountInfo2 = [context5 accountInfo];
            context6 = [(ML3MusicLibraryResourcesManager *)self context];
            accountChangeObserver2 = [context6 accountChangeObserver];
            v19 = [(_ML3MultiUserDaemonMusicLibraryResourcesManager *)v14 initWithAccountInfo:accountInfo2 accountChangeObserver:accountChangeObserver2];
            implementation = self->_implementation;
            self->_implementation = v19;

            goto LABEL_32;
          }
        }

        else
        {
        }

        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"ML3MusicLibraryResourcesManager.m" lineNumber:159 description:@"Daemon multi-users resources manager context must specify both account info provider and a media library account change observer"];

        goto LABEL_7;
      }
    }

    else
    {
    }

    context7 = [(ML3MusicLibraryResourcesManager *)self context];
    if ([context7 isMultiUserSupported])
    {
      context8 = [(ML3MusicLibraryResourcesManager *)self context];
      isRunningInDaemon2 = [context8 isRunningInDaemon];

      if ((isRunningInDaemon2 & 1) == 0)
      {
        context9 = [(ML3MusicLibraryResourcesManager *)self context];
        resourcesService = [context9 resourcesService];

        if (!resourcesService)
        {
          currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
          [currentHandler2 handleFailureInMethod:a2 object:self file:@"ML3MusicLibraryResourcesManager.m" lineNumber:164 description:@"Non-daemon multi-users resources manager context must specify the resources service"];
        }

        v26 = os_log_create("com.apple.amp.medialibrary", "MultiUser");
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(v48) = 0;
          _os_log_impl(&dword_22D2FA000, v26, OS_LOG_TYPE_DEBUG, "Creating a multi-users client resource manager", &v48, 2u);
        }

        v27 = [_ML3MultiUserMusicLibraryResourcesManager alloc];
        context5 = [(ML3MusicLibraryResourcesManager *)self context];
        accountInfo2 = [context5 resourcesService];
        v28 = [(_ML3MultiUserMusicLibraryResourcesManager *)v27 initWithLibraryResourcesService:accountInfo2];
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

    context10 = [(ML3MusicLibraryResourcesManager *)self context];
    isMultiUserSupported = [context10 isMultiUserSupported];

    if (isMultiUserSupported)
    {
      context5 = [MEMORY[0x277CCA890] currentHandler];
      [context5 handleFailureInMethod:a2 object:self file:@"ML3MusicLibraryResourcesManager.m" lineNumber:184 description:@"No implementation of ML3MusicLibraryResourcesManager supports the current configuration"];
LABEL_33:

      goto LABEL_34;
    }

    context11 = [(ML3MusicLibraryResourcesManager *)self context];
    libraryContainerIdentifier = [context11 libraryContainerIdentifier];

    if (libraryContainerIdentifier)
    {
      v33 = os_log_create("com.apple.amp.medialibrary", "MultiUser");
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        context12 = [(ML3MusicLibraryResourcesManager *)self context];
        libraryContainerIdentifier2 = [context12 libraryContainerIdentifier];
        v48 = 138543362;
        v49 = libraryContainerIdentifier2;
        _os_log_impl(&dword_22D2FA000, v33, OS_LOG_TYPE_DEBUG, "Creating a single library resource manager with library container: %{public}@", &v48, 0xCu);
      }

      v36 = [_ML3BaseMusicLibraryResourcesManager alloc];
      context5 = [(ML3MusicLibraryResourcesManager *)self context];
      accountInfo2 = [context5 libraryContainerIdentifier];
      v28 = [(_ML3BaseMusicLibraryResourcesManager *)v36 initWithLibraryContainerIdentifier:accountInfo2];
    }

    else
    {
      context13 = [(ML3MusicLibraryResourcesManager *)self context];
      accountInfo3 = [context13 accountInfo];

      v39 = os_log_create("com.apple.amp.medialibrary", "MultiUser");
      v40 = os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG);
      if (accountInfo3)
      {
        if (v40)
        {
          context14 = [(ML3MusicLibraryResourcesManager *)self context];
          accountInfo4 = [context14 accountInfo];
          v48 = 138543362;
          v49 = accountInfo4;
          _os_log_impl(&dword_22D2FA000, v39, OS_LOG_TYPE_DEBUG, "Creating a single library resource manager for account info: %{public}@", &v48, 0xCu);
        }
      }

      else if (v40)
      {
        LOWORD(v48) = 0;
        _os_log_impl(&dword_22D2FA000, v39, OS_LOG_TYPE_DEBUG, "Creating a single library resource manager for the default media folder", &v48, 2u);
      }

      v43 = [_ML3BaseMusicLibraryResourcesManager alloc];
      context5 = [(ML3MusicLibraryResourcesManager *)self context];
      accountInfo2 = [context5 accountInfo];
      v28 = [(_ML3BaseMusicLibraryResourcesManager *)v43 initWithAccountInfo:accountInfo2];
    }

    goto LABEL_31;
  }

LABEL_34:
  os_unfair_lock_unlock(&self->_lock);
  v45 = self->_implementation;

  return v45;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  context = [(ML3MusicLibraryResourcesManager *)self context];
  if ([context isMultiUserSupported])
  {

    [coderCopy encodeBool:0 forKey:@"isManagingResourceForSingleUserWithAccountInfoKey"];
  }

  else
  {
    context2 = [(ML3MusicLibraryResourcesManager *)self context];
    accountInfo = [context2 accountInfo];

    [coderCopy encodeBool:accountInfo != 0 forKey:@"isManagingResourceForSingleUserWithAccountInfoKey"];
    if (accountInfo)
    {
      [coderCopy encodeObject:self->_implementation forKey:@"implementationKey"];
    }
  }
}

- (ML3MusicLibraryResourcesManager)initWithCoder:(id)coder
{
  coderCopy = coder;
  if ([coderCopy decodeBoolForKey:@"isManagingResourceForSingleUserWithAccountInfoKey"])
  {
    v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"implementationKey"];
    self = [(ML3MusicLibraryResourcesManager *)self initWithBaseResourcesManager:v5];

    selfCopy = self;
  }

  else
  {
    selfCopy = +[ML3MusicLibraryResourcesManager sharedManager];
  }

  return selfCopy;
}

- (ML3MusicLibraryResourcesManager)initWithBaseResourcesManager:(id)manager
{
  managerCopy = manager;
  v9.receiver = self;
  v9.super_class = ML3MusicLibraryResourcesManager;
  v6 = [(ML3MusicLibraryResourcesManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_implementation, manager);
  }

  return v7;
}

- (ML3MusicLibraryResourcesManager)initWithContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = ML3MusicLibraryResourcesManager;
  v6 = [(ML3MusicLibraryResourcesManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_context, context);
    v7->_lock._os_unfair_lock_opaque = 0;
  }

  return v7;
}

- (id)mediaFolderRelativePath:(id)path
{
  pathCopy = path;
  implementation = [(ML3MusicLibraryResourcesManager *)self implementation];
  v6 = [implementation mediaFolderRelativePath:pathCopy];

  return v6;
}

- (id)pathForBaseLocationPath:(int64_t)path
{
  implementation = [(ML3MusicLibraryResourcesManager *)self implementation];
  v5 = [implementation pathForBaseLocationPath:path];

  return v5;
}

- (id)pathForResourceFileOrFolder:(int)folder basePath:(id)path relativeToBase:(BOOL)base createParentFolderIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  baseCopy = base;
  v8 = *&folder;
  pathCopy = path;
  implementation = [(ML3MusicLibraryResourcesManager *)self implementation];
  v12 = [implementation pathForResourceFileOrFolder:v8 basePath:pathCopy relativeToBase:baseCopy createParentFolderIfNecessary:necessaryCopy];

  return v12;
}

- (id)musicAssetsContainerPath
{
  implementation = [(ML3MusicLibraryResourcesManager *)self implementation];
  musicAssetsContainerPath = [implementation musicAssetsContainerPath];

  return musicAssetsContainerPath;
}

- (id)pathForResourceFileOrFolder:(int)folder
{
  v3 = *&folder;
  implementation = [(ML3MusicLibraryResourcesManager *)self implementation];
  v5 = [implementation pathForResourceFileOrFolder:v3];

  return v5;
}

- (id)libraryContainerRelativePath:(id)path
{
  pathCopy = path;
  implementation = [(ML3MusicLibraryResourcesManager *)self implementation];
  v6 = [implementation libraryContainerRelativePath:pathCopy];

  return v6;
}

- (id)libraryContainerPathByAppendingPathComponent:(id)component
{
  componentCopy = component;
  implementation = [(ML3MusicLibraryResourcesManager *)self implementation];
  v6 = [implementation libraryContainerPathByAppendingPathComponent:componentCopy];

  return v6;
}

- (id)libraryContainerPath
{
  implementation = [(ML3MusicLibraryResourcesManager *)self implementation];
  libraryContainerPath = [implementation libraryContainerPath];

  return libraryContainerPath;
}

- (void)setContext:(id)context
{
  contextCopy = context;
  v8 = contextCopy;
  if (contextCopy)
  {
    v5 = contextCopy;
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