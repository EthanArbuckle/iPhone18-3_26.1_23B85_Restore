@interface LCSExtensionAppProtectionAssistant
- (LCSExtensionAppProtectionAssistant)initWithExtension:(id)extension;
- (id)applicationIconImage;
- (id)createShieldUIViewController;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (void)addObserver:(id)observer;
- (void)appProtectionSubjectsChanged:(id)changed forSubscription:(id)subscription;
- (void)dealloc;
- (void)removeObserver:(id)observer;
- (void)requestUnshielding;
@end

@implementation LCSExtensionAppProtectionAssistant

- (LCSExtensionAppProtectionAssistant)initWithExtension:(id)extension
{
  extensionCopy = extension;
  v18.receiver = self;
  v18.super_class = LCSExtensionAppProtectionAssistant;
  v6 = [(LCSExtensionAppProtectionAssistant *)&v18 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_extension, extension);
    v8 = objc_alloc(MEMORY[0x277CEBE88]);
    applicationExtensionRecord = [extensionCopy applicationExtensionRecord];
    v10 = [v8 initWithApplicationExtensionRecord:applicationExtensionRecord];

    appProtectionExtension = v7->_appProtectionExtension;
    v7->_appProtectionExtension = v10;
    v12 = v10;

    v13 = [objc_alloc(MEMORY[0x277CEBE90]) initWithExtensionSubject:v12];
    v14 = [v13 addMonitor:v7];
    subscription = v7->_subscription;
    v7->_subscription = v14;

    [v13 resume];
    appProtectionRegistry = v7->_appProtectionRegistry;
    v7->_appProtectionRegistry = v13;

    LOBYTE(v13) = [(APExtension *)v12 isEffectivelyLocked];
    v7->_shouldShield = v13;
  }

  return v7;
}

- (void)dealloc
{
  [(APSubjectMonitorSubscription *)self->_subscription invalidate];
  [(APExtensionSubjectMonitorRegistry *)self->_appProtectionRegistry invalidate];
  v3.receiver = self;
  v3.super_class = LCSExtensionAppProtectionAssistant;
  [(LCSExtensionAppProtectionAssistant *)&v3 dealloc];
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  observers = self->_observers;
  v8 = observerCopy;
  if (!observers)
  {
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    v7 = self->_observers;
    self->_observers = weakObjectsHashTable;

    observerCopy = v8;
    observers = self->_observers;
  }

  [(NSHashTable *)observers addObject:observerCopy];
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  if (observerCopy)
  {
    [(NSHashTable *)self->_observers removeObject:observerCopy];
    if (![(NSHashTable *)self->_observers count])
    {
      observers = self->_observers;
      self->_observers = 0;
    }
  }

  MEMORY[0x2821F96F8]();
}

- (id)createShieldUIViewController
{
  v2 = [[LCSAppProtectionShieldViewController alloc] initWithAssistant:self];

  return v2;
}

- (id)applicationIconImage
{
  v3 = objc_alloc(MEMORY[0x277D1B1A8]);
  containerBundleIdentifier = [(LCSExtension *)self->_extension containerBundleIdentifier];
  v5 = [v3 initWithBundleIdentifier:containerBundleIdentifier];

  v6 = [objc_alloc(MEMORY[0x277D1B1C8]) initWithSize:64.0 scale:{64.0, 2.0}];
  [v6 setDrawBorder:1];
  v7 = [v5 prepareImageForDescriptor:v6];
  v8 = MEMORY[0x277D755B8];
  cGImage = [v7 CGImage];
  [v7 scale];
  v10 = [v8 imageWithCGImage:cGImage scale:0 orientation:?];

  return v10;
}

- (void)requestUnshielding
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = LCSLogExtension();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    succinctDescription = [(LCSExtensionAppProtectionAssistant *)self succinctDescription];
    *buf = 138543362;
    v16 = succinctDescription;
    _os_log_impl(&dword_256175000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ will request unshielding", buf, 0xCu);
  }

  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"AppProtectionLocalizedDescription" value:0 table:0];

  v7 = MEMORY[0x277CCACA8];
  localizedDisplayName = [(LCSExtension *)self->_extension localizedDisplayName];
  v9 = [v7 stringWithFormat:v6, localizedDisplayName];

  objc_initWeak(buf, self);
  mEMORY[0x277CEBE98] = [MEMORY[0x277CEBE98] sharedGuard];
  appProtectionExtension = self->_appProtectionExtension;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __56__LCSExtensionAppProtectionAssistant_requestUnshielding__block_invoke;
  v13[3] = &unk_279824C70;
  v13[4] = self;
  objc_copyWeak(&v14, buf);
  [mEMORY[0x277CEBE98] authenticateForExtension:appProtectionExtension reasonDescription:v9 completion:v13];

  objc_destroyWeak(&v14);
  objc_destroyWeak(buf);

  v12 = *MEMORY[0x277D85DE8];
}

void __56__LCSExtensionAppProtectionAssistant_requestUnshielding__block_invoke(uint64_t a1, int a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = LCSLogExtension();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [*(a1 + 32) succinctDescription];
    *buf = 138412802;
    v13 = v7;
    v14 = 1024;
    v15 = a2;
    v16 = 2114;
    v17 = v5;
    _os_log_impl(&dword_256175000, v6, OS_LOG_TYPE_DEFAULT, "authenticateForSubject: %@ with success: %{BOOL}u error: %{public}@", buf, 0x1Cu);
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __56__LCSExtensionAppProtectionAssistant_requestUnshielding__block_invoke_13;
  v9[3] = &unk_279824C48;
  objc_copyWeak(&v10, (a1 + 40));
  v11 = a2;
  dispatch_async(MEMORY[0x277D85CD0], v9);
  objc_destroyWeak(&v10);

  v8 = *MEMORY[0x277D85DE8];
}

void __56__LCSExtensionAppProtectionAssistant_requestUnshielding__block_invoke_13(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained && *(a1 + 40) == 1)
  {
    *(WeakRetained + 8) = 0;
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = [WeakRetained[4] allObjects];
    v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      do
      {
        v8 = 0;
        do
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v11 + 1) + 8 * v8);
          if (objc_opt_respondsToSelector())
          {
            [v9 extensionAppProtectionAssistantShouldShieldDidChange:v3];
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)appProtectionSubjectsChanged:(id)changed forSubscription:(id)subscription
{
  v31 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v6 = [changedCopy countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v26;
    v19 = *v26;
    v20 = changedCopy;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(changedCopy);
        }

        v10 = *(*(&v25 + 1) + 8 * i);
        if ([v10 isEqual:{self->_appProtectionExtension, v19, v20}])
        {
          isEffectivelyLocked = [v10 isEffectivelyLocked];
          if (self->_shouldShield != isEffectivelyLocked)
          {
            self->_shouldShield = isEffectivelyLocked;
            v21 = 0u;
            v22 = 0u;
            v23 = 0u;
            v24 = 0u;
            allObjects = [(NSHashTable *)self->_observers allObjects];
            v13 = [allObjects countByEnumeratingWithState:&v21 objects:v29 count:16];
            if (v13)
            {
              v14 = v13;
              v15 = *v22;
              do
              {
                for (j = 0; j != v14; ++j)
                {
                  if (*v22 != v15)
                  {
                    objc_enumerationMutation(allObjects);
                  }

                  v17 = *(*(&v21 + 1) + 8 * j);
                  if (objc_opt_respondsToSelector())
                  {
                    [v17 extensionAppProtectionAssistantShouldShieldDidChange:self];
                  }
                }

                v14 = [allObjects countByEnumeratingWithState:&v21 objects:v29 count:16];
              }

              while (v14);
            }

            v8 = v19;
            changedCopy = v20;
          }
        }
      }

      v7 = [changedCopy countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v7);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(LCSExtensionAppProtectionAssistant *)self succinctDescriptionBuilder];
  bundleIdentifier = [(LCSExtension *)self->_extension bundleIdentifier];
  [succinctDescriptionBuilder appendString:bundleIdentifier withName:@"extension"];

  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(LCSExtensionAppProtectionAssistant *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(LCSExtensionAppProtectionAssistant *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __76__LCSExtensionAppProtectionAssistant_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_279824C98;
  v6 = succinctDescriptionBuilder;
  v10 = v6;
  selfCopy = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v9];

  v7 = v6;
  return v6;
}

@end