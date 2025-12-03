@interface HMDApplicationRegistry
+ (id)logCategory;
+ (id)sharedRegistry;
- (HMDApplicationRegistry)init;
- (NSArray)applications;
- (id)applicationInfoForBundleIdentifier:(id)identifier;
- (id)applicationInfoForBundleURL:(id)l;
- (void)applicationsDidInstall:(id)install;
- (void)applicationsDidUninstall:(id)uninstall;
- (void)dealloc;
@end

@implementation HMDApplicationRegistry

- (void)applicationsDidInstall:(id)install
{
  v15 = *MEMORY[0x277D85DE8];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __49__HMDApplicationRegistry_applicationsDidInstall___block_invoke;
  v13[3] = &unk_27972B878;
  v13[4] = self;
  v3 = [install na_map:v13];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        logAndPostNotification(@"HMDApplicationInstalledNotification", *(*(&v9 + 1) + 8 * v7++), 0);
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v14 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)applicationsDidUninstall:(id)uninstall
{
  v26 = *MEMORY[0x277D85DE8];
  uninstallCopy = uninstall;
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(uninstallCopy, "count")}];
  os_unfair_lock_lock_with_options();
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = uninstallCopy;
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v7)
  {
    v8 = *v21;
    do
    {
      v9 = 0;
      do
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = __HMDApplicationRegistryApplicationInfoForApplicationProxy(self, *(*(&v20 + 1) + 8 * v9));
        if (v10)
        {
          [(NSMutableSet *)self->_applications removeObject:v10];
          [v5 addObject:v10];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v7);
  }

  os_unfair_lock_unlock(&self->_lock);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v11 = v5;
  v12 = [v11 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v12)
  {
    v13 = *v17;
    do
    {
      v14 = 0;
      do
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v11);
        }

        logAndPostNotification(@"HMDApplicationUninstalledNotification", *(*(&v16 + 1) + 8 * v14++), 0);
      }

      while (v12 != v14);
      v12 = [v11 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v12);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (id)applicationInfoForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    os_unfair_lock_lock_with_options();
    v5 = __HMDApplicationRegistryApplicationWithBundleIdentifier(&self->super.super.isa, identifierCopy);
    if (v5)
    {
      v6 = v5;
      os_unfair_lock_unlock(&self->_lock);
    }

    else
    {
      v7 = [HMDApplicationInfo applicationInfoForBundleIdentifier:identifierCopy];
      if ([v7 isInstalled])
      {
        [(NSMutableSet *)self->_applications addObject:v7];
        os_unfair_lock_unlock(&self->_lock);
        __HMDApplicationRegistryHandleAddedApplicationInfo(self, v7);
      }

      else
      {
        os_unfair_lock_unlock(&self->_lock);
      }

      v6 = v7;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)applicationInfoForBundleURL:(id)l
{
  lCopy = l;
  if (lCopy)
  {
    os_unfair_lock_lock_with_options();
    v5 = __HMDApplicationRegistryApplicationForBundleURL(&self->super.super.isa, lCopy);
    if (v5 || (+[HMDApplicationInfo applicationInfoForBundleURL:](HMDApplicationInfo, "applicationInfoForBundleURL:", lCopy), v5 = objc_claimAutoreleasedReturnValue(), ![v5 isInstalled]))
    {
      os_unfair_lock_unlock(&self->_lock);
    }

    else
    {
      [(NSMutableSet *)self->_applications addObject:v5];
      os_unfair_lock_unlock(&self->_lock);
      __HMDApplicationRegistryHandleAddedApplicationInfo(self, v5);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSArray)applications
{
  os_unfair_lock_lock_with_options();
  allObjects = [(NSMutableSet *)self->_applications allObjects];
  os_unfair_lock_unlock(&self->_lock);

  return allObjects;
}

- (void)dealloc
{
  [(LSApplicationWorkspace *)self->_workspace removeObserver:self];
  v3.receiver = self;
  v3.super_class = HMDApplicationRegistry;
  [(HMDApplicationRegistry *)&v3 dealloc];
}

- (HMDApplicationRegistry)init
{
  v8.receiver = self;
  v8.super_class = HMDApplicationRegistry;
  v2 = [(HMDApplicationRegistry *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB58] set];
    applications = v2->_applications;
    v2->_applications = v3;

    defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
    workspace = v2->_workspace;
    v2->_workspace = defaultWorkspace;

    [(LSApplicationWorkspace *)v2->_workspace addObserver:v2];
  }

  return v2;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t3_115661 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t3_115661, &__block_literal_global_11_115662);
  }

  v3 = logCategory__hmf_once_v4_115663;

  return v3;
}

uint64_t __37__HMDApplicationRegistry_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v4_115663;
  logCategory__hmf_once_v4_115663 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (id)sharedRegistry
{
  if (sharedRegistry_onceToken_115668 != -1)
  {
    dispatch_once(&sharedRegistry_onceToken_115668, &__block_literal_global_115669);
  }

  v3 = sharedRegistry_sharedRegistry;

  return v3;
}

uint64_t __40__HMDApplicationRegistry_sharedRegistry__block_invoke()
{
  v0 = objc_alloc_init(HMDApplicationRegistry);
  v1 = sharedRegistry_sharedRegistry;
  sharedRegistry_sharedRegistry = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end