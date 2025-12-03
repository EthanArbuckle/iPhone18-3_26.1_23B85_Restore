@interface MXFrontBoardServices
+ (id)sharedInstance;
- (BOOL)getLayoutRoleForDisplayID:(id)d layoutRole:(int64_t *)role;
- (BOOL)isAppInPiP:(id)p;
- (BOOL)isAppInSplitView:(id)view;
- (MXFrontBoardServices)init;
- (id)copyPrimaryAppDisplayID;
- (void)clearLayoutRoleCache;
- (void)layoutChanged:(id)changed;
- (void)updateLayoutRoleCache:(int64_t)cache displayID:(id)d;
@end

@implementation MXFrontBoardServices

void __28__MXFrontBoardServices_init__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_autoreleasePoolPush();
  [+[MXFrontBoardServices sharedInstance](MXFrontBoardServices layoutChanged:"layoutChanged:", a3];

  objc_autoreleasePoolPop(v4);
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_6 != -1)
  {
    +[MXFrontBoardServices sharedInstance];
  }

  return sharedInstance_sSharedInstance_6;
}

- (void)clearLayoutRoleCache
{
  [(NSLock *)self->mDisplayLayoutCacheLock lock];
  [(NSMutableDictionary *)self->mDisplayLayoutCache removeAllObjects];
  mDisplayLayoutCacheLock = self->mDisplayLayoutCacheLock;

  [(NSLock *)mDisplayLayoutCacheLock unlock];
}

MXFrontBoardServices *__38__MXFrontBoardServices_sharedInstance__block_invoke()
{
  result = objc_alloc_init(MXFrontBoardServices);
  sharedInstance_sSharedInstance_6 = result;
  return result;
}

- (MXFrontBoardServices)init
{
  v7.receiver = self;
  v7.super_class = MXFrontBoardServices;
  v2 = [(MXFrontBoardServices *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AAC8]);
    gFrontboardServicesLib = dlopen("/System/Library/PrivateFrameworks/FrontBoardServices.framework/FrontBoardServices", 4);
    if (gFrontboardServicesLib && (gFBSDisplayLayoutMonitorClass = objc_getClass("FBSDisplayLayoutMonitor")) != 0 && (gFBSDisplayLayoutMonitorConfigurationClass = objc_getClass("FBSDisplayLayoutMonitorConfiguration")) != 0 && (v4 = dlopen("/System/Library/PrivateFrameworks/SpringBoardServices.framework/SpringBoardServices", 4), (gSpringboardServicesLib = v4) != 0))
    {
      gSBSDisplayLayoutRoleDescription = dlsym(v4, "SBSDisplayLayoutRoleDescription");
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __28__MXFrontBoardServices_init__block_invoke;
      block[3] = &unk_1E7AE7CE0;
      block[4] = v2;
      if (init_once_token != -1)
      {
        dispatch_once(&init_once_token, block);
      }
    }

    else
    {

      return 0;
    }
  }

  return v2;
}

id __28__MXFrontBoardServices_init__block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 24) = objc_alloc_init(MEMORY[0x1E695DF90]);
  *(*(a1 + 32) + 16) = objc_alloc_init(MEMORY[0x1E696AD10]);
  v2 = [gFBSDisplayLayoutMonitorConfigurationClass configurationForDefaultMainDisplayMonitor];
  [v2 setTransitionHandler:&__block_literal_global_11_0];
  result = [gFBSDisplayLayoutMonitorClass monitorWithConfiguration:v2];
  *(*(a1 + 32) + 8) = result;
  return result;
}

- (id)copyPrimaryAppDisplayID
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  currentLayout = [(FBSDisplayLayoutMonitor *)self->mFrontBoardServicesMonitor currentLayout];
  if (currentLayout && (v5 = [currentLayout elements]) != 0)
  {
    v6 = v5;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v16 + 1) + 8 * i);
          if ([v11 layoutRole] == 1)
          {
            bundleIdentifier = [v11 bundleIdentifier];
            if (bundleIdentifier)
            {
              v13 = bundleIdentifier;
              goto LABEL_15;
            }
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v13 = 0;
LABEL_15:
    objc_autoreleasePoolPop(v3);
  }

  else
  {
    objc_autoreleasePoolPop(v3);
    v13 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

- (BOOL)isAppInSplitView:(id)view
{
  v5 = 0;
  if ([(MXFrontBoardServices *)self getLayoutRoleForDisplayID:view layoutRole:&v5])
  {
    v3 = 0x686u >> v5;
    if (v5 > 0xA)
    {
      LOBYTE(v3) = 0;
    }
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3 & 1;
}

- (BOOL)isAppInPiP:(id)p
{
  v4 = 0;
  result = [(MXFrontBoardServices *)self getLayoutRoleForDisplayID:p layoutRole:&v4];
  if (v4 != 5)
  {
    return 0;
  }

  return result;
}

- (BOOL)getLayoutRoleForDisplayID:(id)d layoutRole:(int64_t *)role
{
  v4 = 0;
  if (d && role)
  {
    [(NSLock *)self->mDisplayLayoutCacheLock lock];
    v8 = [(NSMutableDictionary *)self->mDisplayLayoutCache objectForKey:d];
    [(NSLock *)self->mDisplayLayoutCacheLock unlock];
    v4 = v8 != 0;
    if (v8)
    {
      integerValue = [v8 integerValue];
    }

    else
    {
      integerValue = 0;
    }

    *role = integerValue;
  }

  return v4;
}

- (void)updateLayoutRoleCache:(int64_t)cache displayID:(id)d
{
  if (d)
  {
    v6 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInteger:cache];
    [(NSLock *)self->mDisplayLayoutCacheLock lock];
    [(NSMutableDictionary *)self->mDisplayLayoutCache setObject:v6 forKey:d];
    [(NSLock *)self->mDisplayLayoutCacheLock unlock];
  }
}

- (void)layoutChanged:(id)changed
{
  v24 = *MEMORY[0x1E69E9840];
  elements = [changed elements];
  if (elements)
  {
    v5 = elements;
    [(MXFrontBoardServices *)self clearLayoutRoleCache];
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (!v6)
    {
      v16 = 0;
      v18 = 0;
      v8 = 0;
      v9 = 0;
      goto LABEL_23;
    }

    v7 = v6;
    v16 = 0;
    v18 = 0;
    v8 = 0;
    v9 = 0;
    v10 = *v20;
    while (1)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        layoutRole = [v12 layoutRole];
        bundleIdentifier = [v12 bundleIdentifier];
        if (layoutRole > 3)
        {
          if (layoutRole == 4)
          {
            v18 = 1;
          }

          else if (layoutRole == 7 && [v12 level] == 2)
          {
            v9 = 1;
          }
        }

        else
        {
          if (layoutRole == 1)
          {
            -[MXFrontBoardServices updateLayoutRoleCache:displayID:](self, "updateLayoutRoleCache:displayID:", 1, bundleIdentifier, [v12 bundleIdentifier]);
            continue;
          }

          if (layoutRole == 3)
          {
            v8 = 1;
          }
        }

        [(MXFrontBoardServices *)self updateLayoutRoleCache:layoutRole displayID:bundleIdentifier, v17];
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (!v7)
      {
LABEL_23:
        cmsmDisplayLayoutChanged(v9, v8, v18, v16);
        break;
      }
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

@end