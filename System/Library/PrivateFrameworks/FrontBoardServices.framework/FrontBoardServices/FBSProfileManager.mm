@interface FBSProfileManager
+ (id)sharedInstance;
- (BOOL)isManaged:(id)a3;
- (BOOL)isStarted;
- (FBSProfileManager)init;
- (id)profilesForSignerIdentity:(id)a3;
- (void)_managedAppsChangedNotification:(id)a3;
- (void)_reloadProfiles;
- (void)_workQueue_reloadManagedApplicationBundleIDs;
- (void)_workQueue_reloadProfiles;
- (void)dealloc;
- (void)startService;
@end

@implementation FBSProfileManager

+ (id)sharedInstance
{
  if (sharedInstance___once != -1)
  {
    +[FBSProfileManager sharedInstance];
  }

  v3 = sharedInstance___instance;

  return v3;
}

uint64_t __35__FBSProfileManager_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(FBSProfileManager);
  v1 = sharedInstance___instance;
  sharedInstance___instance = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (FBSProfileManager)init
{
  v3.receiver = self;
  v3.super_class = FBSProfileManager;
  if ([(FBSProfileManager *)&v3 init])
  {
    [off_1E76BC9B8 serial];
    [objc_claimAutoreleasedReturnValue() serviceClass:25];
    objc_claimAutoreleasedReturnValue();
    BSDispatchQueueCreate();
  }

  return 0;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 removeObserver:self];

  v5.receiver = self;
  v5.super_class = FBSProfileManager;
  [(FBSProfileManager *)&v5 dealloc];
}

- (void)startService
{
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__FBSProfileManager_startService__block_invoke;
  block[3] = &unk_1E76BCDB0;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __33__FBSProfileManager_startService__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _workQueue_reloadProfiles];
  [*(a1 + 32) _workQueue_reloadManagedApplicationBundleIDs];
  *(*(a1 + 32) + 8) = 1;
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, *(a1 + 32), _handleProfilesChangedNotification, @"MISProvisioningProfileInstalled", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  CFNotificationCenterAddObserver(DarwinNotifyCenter, *(a1 + 32), _handleProfilesChangedNotification, @"MISProvisioningProfileRemoved", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  v3 = *(a1 + 32);
  v4 = getMCManagedAppsChangedNotification();
  [v5 addObserver:v3 selector:sel__managedAppsChangedNotification_ name:v4 object:0];
}

- (BOOL)isStarted
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  workQueue = self->_workQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __30__FBSProfileManager_isStarted__block_invoke;
  v5[3] = &unk_1E76BDA68;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(workQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)isManaged:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__FBSProfileManager_isManaged___block_invoke;
  block[3] = &unk_1E76BDCD8;
  v9 = v4;
  v10 = &v11;
  block[4] = self;
  v6 = v4;
  dispatch_sync(workQueue, block);
  LOBYTE(workQueue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return workQueue;
}

uint64_t __31__FBSProfileManager_isManaged___block_invoke(void *a1)
{
  result = [*(a1[4] + 24) containsObject:a1[5]];
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

- (id)profilesForSignerIdentity:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__6;
  v16 = __Block_byref_object_dispose__6;
  v17 = 0;
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__FBSProfileManager_profilesForSignerIdentity___block_invoke;
  block[3] = &unk_1E76BDCD8;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(workQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __47__FBSProfileManager_profilesForSignerIdentity___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 32) objectForKey:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (void)_reloadProfiles
{
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__FBSProfileManager__reloadProfiles__block_invoke;
  block[3] = &unk_1E76BCDB0;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (void)_workQueue_reloadProfiles
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = soft_MISCopyErrorStringForErrorCode(a2);
  v8 = 138543618;
  v9 = v6;
  v10 = 2114;
  v11 = v7;
  _os_log_error_impl(&dword_1A2DBB000, a3, OS_LOG_TYPE_ERROR, "%{public}@: Error loading provisioning profiles: %{public}@", &v8, 0x16u);
}

uint64_t __46__FBSProfileManager__workQueue_reloadProfiles__block_invoke(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  soft_MISProvisioningProfileGetDeveloperCertificates(a2);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v4 = v16 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = *v16;
    do
    {
      v7 = 0;
      do
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = soft_SecCertificateCreateWithData(0, *(*(&v15 + 1) + 8 * v7));
        v14 = v8;
        if (v8)
        {
          v9 = soft_SecCertificateCopySubjectSummary(v8);
          if (v9)
          {
            v10 = [*(a1 + 32) objectForKey:{v9, context, v14, v15}];
            if (!v10)
            {
              v10 = [MEMORY[0x1E695DF70] array];
              [*(a1 + 32) setObject:v10 forKey:v9];
            }

            v11 = [[FBSApplicationProvisioningProfile alloc] initWithSignerIdentity:v9 profile:a2];
            if (v11)
            {
              [v10 addObject:v11];
            }
          }
        }

        fbs_release(&v14);
        ++v7;
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  objc_autoreleasePoolPop(context);
  return 1;
}

- (void)_workQueue_reloadManagedApplicationBundleIDs
{
  v9 = self->_workQueue_managedApplicationBundleIDs;
  v3 = objc_alloc(MEMORY[0x1E695DFD8]);
  v4 = [getMCProfileConnectionClass() sharedConnection];
  v5 = [v4 managedAppIDs];
  v6 = [v3 initWithArray:v5];

  if (([v6 isEqual:v9] & 1) == 0)
  {
    v7 = [v6 copy];
    workQueue_managedApplicationBundleIDs = self->_workQueue_managedApplicationBundleIDs;
    self->_workQueue_managedApplicationBundleIDs = v7;
  }
}

- (void)_managedAppsChangedNotification:(id)a3
{
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__FBSProfileManager__managedAppsChangedNotification___block_invoke;
  block[3] = &unk_1E76BCDB0;
  block[4] = self;
  dispatch_async(workQueue, block);
}

@end