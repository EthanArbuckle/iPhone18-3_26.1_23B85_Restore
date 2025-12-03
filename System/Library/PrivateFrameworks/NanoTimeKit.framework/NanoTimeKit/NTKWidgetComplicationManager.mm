@interface NTKWidgetComplicationManager
+ (id)instanceForDevice:(id)device;
- (BOOL)_isWidgetAvailable:(id)available;
- (BOOL)isComplicationAvailable:(id)available forFamilies:(id)families;
- (BOOL)isComplicationConfigurable:(id)configurable;
- (BOOL)vendorExistsWithDescriptor:(id)descriptor;
- (NTKWidgetComplicationManager)initWithDevice:(id)device;
- (id)infoForDescriptor:(id)descriptor;
- (unint64_t)_widgetFamiliesForComplicationFamilies:(id)families;
- (void)_activate;
- (void)_lock_updateInfoForDescriptor:(id)descriptor extension:(id)extension;
- (void)_postUpdate;
- (void)_queue_updateComplicationDescriptorCache;
- (void)_registerObserver;
- (void)_updateInfo;
- (void)dealloc;
- (void)descriptorsDidChangeForDescriptorProvider:(id)provider;
- (void)enumerateAvailableDescriptorsWithBlock:(id)block;
- (void)enumerateDescriptorsCompatibleWithFamilies:(id)families locationStyle:(unint64_t)style withBlock:(id)block;
- (void)extensionsDidChangeForExtensionProvider:(id)provider;
- (void)reloadDescriptorsForAppBundleIdentifier:(id)identifier withCompletion:(id)completion;
@end

@implementation NTKWidgetComplicationManager

+ (id)instanceForDevice:(id)device
{
  deviceCopy = device;
  v4 = deviceCopy;
  if (deviceCopy)
  {
    pairingID = [deviceCopy pairingID];
    if (!pairingID)
    {
      pairingID = [MEMORY[0x277CBEB68] null];
    }

    os_unfair_lock_lock(&instanceForDevice__lock_0);
    v6 = instanceForDevice__uuidToProvider_0;
    if (!instanceForDevice__uuidToProvider_0)
    {
      v7 = objc_opt_new();
      v8 = instanceForDevice__uuidToProvider_0;
      instanceForDevice__uuidToProvider_0 = v7;

      v6 = instanceForDevice__uuidToProvider_0;
    }

    v9 = [v6 objectForKeyedSubscript:pairingID];
    if (!v9)
    {
      v9 = [[NTKWidgetComplicationManager alloc] initWithDevice:v4];
      [(NTKWidgetComplicationManager *)v9 _activate];
      [instanceForDevice__uuidToProvider_0 setObject:v9 forKeyedSubscript:pairingID];
    }

    os_unfair_lock_unlock(&instanceForDevice__lock_0);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (NTKWidgetComplicationManager)initWithDevice:(id)device
{
  deviceCopy = device;
  v14.receiver = self;
  v14.super_class = NTKWidgetComplicationManager;
  v6 = [(NTKWidgetComplicationManager *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, device);
    v8 = objc_opt_new();
    infoByDescriptor = v7->_infoByDescriptor;
    v7->_infoByDescriptor = v8;

    v7->_infoByDescriptorLock._os_unfair_lock_opaque = 0;
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("com.apple.NanoTimeKit.NTKWidgetComplicationManager.descriptors", v10);
    descriptorQueue = v7->_descriptorQueue;
    v7->_descriptorQueue = v11;

    [(NTKWidgetComplicationManager *)v7 _registerForReloadNotification];
  }

  return v7;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = NTKWidgetComplicationManager;
  [(NTKWidgetComplicationManager *)&v2 dealloc];
}

- (void)_activate
{
  if (!self->_activated)
  {
    self->_activated = 1;
    [(NTKWidgetComplicationManager *)self _registerObserver];
  }
}

- (void)_registerObserver
{
  v3 = _NTKLoggingObjectForDomain(47, "NTKLoggingDomainWidget");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_22D9C5000, v3, OS_LOG_TYPE_DEFAULT, "Widget complication manager observing NTKWidgetDescriptorProvider...", v9, 2u);
  }

  v4 = +[NTKWidgetDescriptorProvider sharedInstance];
  [v4 registerObserver:self];
  v5 = [objc_alloc(MEMORY[0x277CFA390]) initIncludingRelevanceBacked:_os_feature_enabled_impl()];
  [v5 setRemoteWidgetInclusions:2];
  v6 = [objc_alloc(MEMORY[0x277CFA3C0]) initWithWidgetsPredicate:v5 controlsPredicate:0];
  v7 = [objc_alloc(MEMORY[0x277CFA3B8]) initWithOptions:v6];
  widgetExtensionProvider = self->_widgetExtensionProvider;
  self->_widgetExtensionProvider = v7;

  [(CHSWidgetExtensionProvider *)self->_widgetExtensionProvider registerObserver:self];
}

- (BOOL)_isWidgetAvailable:(id)available
{
  v6 = (![v3 hiddenBySensitiveUI] || (objc_msgSend(MEMORY[0x277CBBB70], "sharedMonitor"), v4 = v3 = available;

  return v6;
}

- (BOOL)vendorExistsWithDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  extensionBundleIdentifier = [descriptorCopy extensionBundleIdentifier];
  v6 = NTKDebugSimulatedTombstoneExtensionBundleIdentifier();
  v7 = [extensionBundleIdentifier isEqual:v6];

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    os_unfair_lock_lock(&self->_widgetComplicationDescriptorCacheLock);
    v9 = self->_lock_widgetComplicationDescriptorCacheOrderedKeys;
    os_unfair_lock_unlock(&self->_widgetComplicationDescriptorCacheLock);
    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v18 = 0;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __59__NTKWidgetComplicationManager_vendorExistsWithDescriptor___block_invoke;
    v11[3] = &unk_278789380;
    v12 = descriptorCopy;
    selfCopy = self;
    v14 = &v15;
    [(NSArray *)v9 enumerateObjectsUsingBlock:v11];
    v8 = *(v16 + 24);

    _Block_object_dispose(&v15, 8);
  }

  return v8 & 1;
}

void __59__NTKWidgetComplicationManager_vendorExistsWithDescriptor___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v6 = [*(a1 + 32) kind];
  v7 = [v9 kind];
  v8 = [v6 isEqualToString:v7];

  if (v8 && [*(a1 + 40) _isWidgetAvailable:v9])
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    *a4 = 1;
  }
}

- (BOOL)isComplicationAvailable:(id)available forFamilies:(id)families
{
  availableCopy = available;
  familiesCopy = families;
  extensionBundleIdentifier = [availableCopy extensionBundleIdentifier];
  v9 = NTKDebugSimulatedTombstoneExtensionBundleIdentifier();
  v10 = [extensionBundleIdentifier isEqual:v9];

  if ((v10 & 1) == 0)
  {
    v12 = [(NTKWidgetComplicationManager *)self _widgetFamiliesForComplicationFamilies:familiesCopy];
    os_unfair_lock_lock(&self->_widgetComplicationDescriptorCacheLock);
    v13 = self->_lock_widgetComplicationDescriptorCacheOrderedKeys;
    os_unfair_lock_unlock(&self->_widgetComplicationDescriptorCacheLock);
    v29 = 0;
    v30 = &v29;
    v31 = 0x3032000000;
    v32 = __Block_byref_object_copy__56;
    v33 = __Block_byref_object_dispose__56;
    v34 = 0;
    v21 = MEMORY[0x277D85DD0];
    v22 = 3221225472;
    v23 = __68__NTKWidgetComplicationManager_isComplicationAvailable_forFamilies___block_invoke;
    v24 = &unk_2787893A8;
    v14 = availableCopy;
    v25 = v14;
    selfCopy = self;
    v27 = &v29;
    v28 = v12;
    [(NSArray *)v13 enumerateObjectsUsingBlock:&v21];
    v15 = v30[5];
    if (v15)
    {
      intentType = [v15 intentType];
      if (!intentType || ([v14 descriptor], v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v17, "intentReference"), v18 = objc_claimAutoreleasedReturnValue(), v18, v17, intentType, v18))
      {
        v11 = 1;
LABEL_11:

        _Block_object_dispose(&v29, 8);
        goto LABEL_12;
      }

      v19 = _NTKLoggingObjectForDomain(47, "NTKLoggingDomainWidget");
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [NTKWidgetComplicationManager isComplicationAvailable:v14 forFamilies:v19];
      }
    }

    v11 = 0;
    goto LABEL_11;
  }

  v11 = 0;
LABEL_12:

  return v11;
}

void __68__NTKWidgetComplicationManager_isComplicationAvailable_forFamilies___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = a2;
  v7 = [*(a1 + 32) kind];
  v8 = [v10 kind];
  v9 = [v7 isEqualToString:v8];

  if (v9 && [*(a1 + 40) _isWidgetAvailable:v10] && (*(a1 + 56) & objc_msgSend(v10, "supportedFamilies")) != 0)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (BOOL)isComplicationConfigurable:(id)configurable
{
  configurableCopy = configurable;
  extensionBundleIdentifier = [configurableCopy extensionBundleIdentifier];
  v6 = NTKDebugSimulatedTombstoneExtensionBundleIdentifier();
  v7 = [extensionBundleIdentifier isEqual:v6];

  if ((v7 & 1) != 0 || !NTKUseComplicationEditor())
  {
    isConfigurable = 0;
  }

  else
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy__56;
    v22 = __Block_byref_object_dispose__56;
    v23 = 0;
    extensions = [(CHSWidgetExtensionProvider *)self->_widgetExtensionProvider extensions];
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __59__NTKWidgetComplicationManager_isComplicationConfigurable___block_invoke;
    v15 = &unk_2787893F8;
    v16 = configurableCopy;
    v17 = &v18;
    [extensions enumerateObjectsUsingBlock:&v12];

    v9 = v19[5];
    if (v9)
    {
      isConfigurable = [v9 isConfigurable];
    }

    else
    {
      isConfigurable = 0;
    }

    _Block_object_dispose(&v18, 8);
  }

  return isConfigurable;
}

void __59__NTKWidgetComplicationManager_isComplicationConfigurable___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = [v5 identity];
  v7 = [v6 isRemote];

  if (v7)
  {
    v8 = [v5 orderedWidgetDescriptors];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __59__NTKWidgetComplicationManager_isComplicationConfigurable___block_invoke_2;
    v11[3] = &unk_2787893D0;
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v12 = v9;
    v13 = v10;
    [v8 enumerateObjectsUsingBlock:v11];

    if (*(*(*(a1 + 40) + 8) + 40))
    {
      *a3 = 1;
    }
  }
}

void __59__NTKWidgetComplicationManager_isComplicationConfigurable___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = a2;
  v7 = [*(a1 + 32) kind];
  v8 = [v10 kind];
  v9 = [v7 isEqualToString:v8];

  if (v9)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (void)reloadDescriptorsForAppBundleIdentifier:(id)identifier withCompletion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v7 = +[NTKWidgetDescriptorProvider sharedInstance];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __87__NTKWidgetComplicationManager_reloadDescriptorsForAppBundleIdentifier_withCompletion___block_invoke;
  v10[3] = &unk_278789420;
  v11 = identifierCopy;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = identifierCopy;
  [v7 reloadDescriptorsForContainerIdentifier:v9 completion:v10];
}

void __87__NTKWidgetComplicationManager_reloadDescriptorsForAppBundleIdentifier_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 count];
  v5 = _NTKLoggingObjectForDomain(47, "NTKLoggingDomainWidget");
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      v7 = *(a1 + 32);
      v14 = 138412546;
      v15 = v7;
      v16 = 2048;
      v17 = [v3 count];
      v8 = "Reloaded descriptors for %@, with entries for %lu extensions found";
      v9 = v5;
      v10 = 22;
LABEL_6:
      _os_log_impl(&dword_22D9C5000, v9, OS_LOG_TYPE_DEFAULT, v8, &v14, v10);
    }
  }

  else if (v6)
  {
    v11 = *(a1 + 32);
    v14 = 138412290;
    v15 = v11;
    v8 = "Reloaded descriptors for %@, but none were returned";
    v9 = v5;
    v10 = 12;
    goto LABEL_6;
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), v3, v12, v13);
}

- (void)descriptorsDidChangeForDescriptorProvider:(id)provider
{
  v4 = _NTKLoggingObjectForDomain(47, "NTKLoggingDomainWidget");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_22D9C5000, v4, OS_LOG_TYPE_DEFAULT, "Descriptors changed", v5, 2u);
  }

  [(NTKWidgetComplicationManager *)self _postUpdate];
}

- (void)_queue_updateComplicationDescriptorCache
{
  dispatch_assert_queue_V2(self->_descriptorQueue);
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  extensions = [(CHSWidgetExtensionProvider *)self->_widgetExtensionProvider extensions];
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __72__NTKWidgetComplicationManager__queue_updateComplicationDescriptorCache__block_invoke;
  v15 = &unk_278789498;
  v16 = v3;
  v17 = v4;
  v6 = v4;
  v7 = v3;
  [extensions enumerateObjectsUsingBlock:&v12];

  os_unfair_lock_lock(&self->_widgetComplicationDescriptorCacheLock);
  v8 = [v7 copy];
  lock_widgetComplicationDescriptorCache = self->_lock_widgetComplicationDescriptorCache;
  self->_lock_widgetComplicationDescriptorCache = v8;

  v10 = [v6 copy];
  lock_widgetComplicationDescriptorCacheOrderedKeys = self->_lock_widgetComplicationDescriptorCacheOrderedKeys;
  self->_lock_widgetComplicationDescriptorCacheOrderedKeys = v10;

  os_unfair_lock_unlock(&self->_widgetComplicationDescriptorCacheLock);
}

void __72__NTKWidgetComplicationManager__queue_updateComplicationDescriptorCache__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 identity];
  v5 = [v4 isRemote];

  if (v5)
  {
    v6 = [v3 orderedWidgetDescriptors];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __72__NTKWidgetComplicationManager__queue_updateComplicationDescriptorCache__block_invoke_2;
    v7[3] = &unk_278789470;
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    [v6 enumerateObjectsUsingBlock:v7];
  }
}

void __72__NTKWidgetComplicationManager__queue_updateComplicationDescriptorCache__block_invoke_2(uint64_t a1, void *a2)
{
  v18[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 intentType];

  if (v4)
  {
    v5 = objc_opt_new();
    if ([v3 isConfigurable])
    {
      v6 = [v3 defaultIntentReference];
      v7 = [v6 intent];

      v8 = [objc_alloc(MEMORY[0x277CBBBD0]) initWithWidgetDescriptor:v3 intent:v7];
      [v5 addObject:v8];
    }

    else
    {
      v10 = [v3 intentRecommendations];
      v12 = MEMORY[0x277D85DD0];
      v13 = 3221225472;
      v14 = __72__NTKWidgetComplicationManager__queue_updateComplicationDescriptorCache__block_invoke_3;
      v15 = &unk_278789448;
      v16 = v3;
      v17 = v5;
      [v10 enumerateObjectsUsingBlock:&v12];
    }

    v9 = [v5 copy];
  }

  else
  {
    v5 = [objc_alloc(MEMORY[0x277CBBBD0]) initWithWidgetDescriptor:v3];
    v18[0] = v5;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
  }

  v11 = v9;
  [*(a1 + 32) setObject:v9 forKeyedSubscript:v3];

  [*(a1 + 40) addObject:v3];
}

void __72__NTKWidgetComplicationManager__queue_updateComplicationDescriptorCache__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CBBBD0];
  v4 = a2;
  v5 = [[v3 alloc] initWithWidgetDescriptor:*(a1 + 32) intentRecommendation:v4];

  [*(a1 + 40) addObject:v5];
}

- (unint64_t)_widgetFamiliesForComplicationFamilies:(id)families
{
  v15 = *MEMORY[0x277D85DE8];
  familiesCopy = families;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [familiesCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(familiesCopy);
        }

        [*(*(&v10 + 1) + 8 * i) integerValue];
        CLKWidgetFamilyForComplicationFamily();
        v6 |= CHSWidgetFamilyMaskFromWidgetFamily();
      }

      v5 = [familiesCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)enumerateDescriptorsCompatibleWithFamilies:(id)families locationStyle:(unint64_t)style withBlock:(id)block
{
  blockCopy = block;
  v9 = [(NTKWidgetComplicationManager *)self _widgetFamiliesForComplicationFamilies:families];
  os_unfair_lock_lock(&self->_widgetComplicationDescriptorCacheLock);
  v10 = self->_lock_widgetComplicationDescriptorCache;
  v11 = self->_lock_widgetComplicationDescriptorCacheOrderedKeys;
  os_unfair_lock_unlock(&self->_widgetComplicationDescriptorCacheLock);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __99__NTKWidgetComplicationManager_enumerateDescriptorsCompatibleWithFamilies_locationStyle_withBlock___block_invoke;
  v14[3] = &unk_2787894E8;
  v15 = v10;
  selfCopy = self;
  styleCopy = style;
  v19 = v9;
  v17 = blockCopy;
  v12 = blockCopy;
  v13 = v10;
  [(NSArray *)v11 enumerateObjectsUsingBlock:v14];
}

void __99__NTKWidgetComplicationManager_enumerateDescriptorsCompatibleWithFamilies_locationStyle_withBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) objectForKeyedSubscript:v3];
  if ([*(a1 + 40) _isWidgetAvailable:v3])
  {
    v5 = CHSWidgetLocationStyleForNTKLocationStyle(*(a1 + 56));
    v6 = v5;
    if (v5)
    {
      v7 = [v3 disfavoredFamiliesForLocation:{objc_msgSend(v5, "unsignedIntegerValue")}];
      v8 = *(a1 + 64);
      if ((v8 & v7) != 0)
      {
LABEL_8:

        goto LABEL_9;
      }
    }

    else
    {
      v8 = *(a1 + 64);
    }

    if (([v3 supportedFamilies] & v8) != 0)
    {
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __99__NTKWidgetComplicationManager_enumerateDescriptorsCompatibleWithFamilies_locationStyle_withBlock___block_invoke_2;
      v9[3] = &unk_2787894C0;
      v10 = *(a1 + 48);
      [v4 enumerateObjectsUsingBlock:v9];
    }

    goto LABEL_8;
  }

LABEL_9:
}

- (void)enumerateAvailableDescriptorsWithBlock:(id)block
{
  blockCopy = block;
  os_unfair_lock_lock(&self->_widgetComplicationDescriptorCacheLock);
  v5 = self->_lock_widgetComplicationDescriptorCacheOrderedKeys;
  os_unfair_lock_unlock(&self->_widgetComplicationDescriptorCacheLock);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __71__NTKWidgetComplicationManager_enumerateAvailableDescriptorsWithBlock___block_invoke;
  v7[3] = &unk_278789510;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  [(NSArray *)v5 enumerateObjectsUsingBlock:v7];
}

void __71__NTKWidgetComplicationManager_enumerateAvailableDescriptorsWithBlock___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([*(a1 + 32) _isWidgetAvailable:?])
  {
    [v4 supportedFamilies];
    v3 = CLKComplicationFamiliesForWidgetFamilies();
    (*(*(a1 + 40) + 16))();
  }
}

- (void)_updateInfo
{
  os_unfair_lock_lock(&self->_infoByDescriptorLock);
  [(NSMutableDictionary *)self->_infoByDescriptor removeAllObjects];
  extensions = [(CHSWidgetExtensionProvider *)self->_widgetExtensionProvider extensions];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __43__NTKWidgetComplicationManager__updateInfo__block_invoke;
  v4[3] = &unk_278789538;
  v4[4] = self;
  [extensions enumerateObjectsUsingBlock:v4];

  os_unfair_lock_unlock(&self->_infoByDescriptorLock);
}

void __43__NTKWidgetComplicationManager__updateInfo__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 identity];
  v5 = [v4 isRemote];

  if (v5)
  {
    v6 = [v3 orderedWidgetDescriptors];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __43__NTKWidgetComplicationManager__updateInfo__block_invoke_2;
    v7[3] = &unk_278789470;
    v7[4] = *(a1 + 32);
    v8 = v3;
    [v6 enumerateObjectsUsingBlock:v7];
  }
}

- (void)_lock_updateInfoForDescriptor:(id)descriptor extension:(id)extension
{
  descriptorCopy = descriptor;
  extensionCopy = extension;
  os_unfair_lock_assert_owner(&self->_infoByDescriptorLock);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __72__NTKWidgetComplicationManager__lock_updateInfoForDescriptor_extension___block_invoke;
  aBlock[3] = &unk_278789560;
  v8 = descriptorCopy;
  v25 = v8;
  v9 = extensionCopy;
  v26 = v9;
  selfCopy = self;
  v10 = _Block_copy(aBlock);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __72__NTKWidgetComplicationManager__lock_updateInfoForDescriptor_extension___block_invoke_2;
  v20[3] = &unk_278789588;
  v11 = v8;
  v21 = v11;
  v12 = v9;
  v22 = v12;
  selfCopy2 = self;
  v13 = _Block_copy(v20);
  intentType = [v11 intentType];

  if (intentType)
  {
    if ([v11 isConfigurable])
    {
      defaultIntentReference = [v11 defaultIntentReference];
      intent = [defaultIntentReference intent];

      v13[2](v13, intent);
    }

    else
    {
      intentRecommendations = [v11 intentRecommendations];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __72__NTKWidgetComplicationManager__lock_updateInfoForDescriptor_extension___block_invoke_3;
      v18[3] = &unk_2787895B0;
      v19 = v10;
      [intentRecommendations enumerateObjectsUsingBlock:v18];
    }
  }

  else
  {
    (*(v10 + 2))(v10, 0);
  }
}

void __72__NTKWidgetComplicationManager__lock_updateInfoForDescriptor_extension___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [objc_alloc(MEMORY[0x277CBBBD0]) initWithWidgetDescriptor:*(a1 + 32) intentRecommendation:v7];
  if (v7)
  {
    [v7 localizedDescription];
  }

  else
  {
    [*(a1 + 32) displayName];
  }
  v4 = ;
  v5 = [*(a1 + 40) containerBundleLocalizedDisplayName];
  v6 = [[NTKWidgetComplicationInfo alloc] initWithAppName:v5 displayName:v4];
  [*(*(a1 + 48) + 24) setObject:v6 forKeyedSubscript:v3];
}

void __72__NTKWidgetComplicationManager__lock_updateInfoForDescriptor_extension___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CBBBD0];
  v4 = a2;
  v8 = [[v3 alloc] initWithWidgetDescriptor:*(a1 + 32) intent:v4];

  v5 = [*(a1 + 32) displayName];
  v6 = [*(a1 + 40) containerBundleLocalizedDisplayName];
  v7 = [[NTKWidgetComplicationInfo alloc] initWithAppName:v6 displayName:v5];
  [*(*(a1 + 48) + 24) setObject:v7 forKeyedSubscript:v8];
}

- (id)infoForDescriptor:(id)descriptor
{
  v28 = *MEMORY[0x277D85DE8];
  descriptorCopy = descriptor;
  os_unfair_lock_lock(&self->_infoByDescriptorLock);
  v5 = [(NSMutableDictionary *)self->_infoByDescriptor objectForKeyedSubscript:descriptorCopy];
  if (!v5)
  {
    [(NSMutableDictionary *)self->_infoByDescriptor allKeys];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v6 = v26 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v7)
    {
      v8 = v7;
      selfCopy = self;
      v9 = *v24;
LABEL_4:
      v10 = 0;
      v22 = v8;
      while (1)
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v23 + 1) + 8 * v10);
        extensionBundleIdentifier = [v11 extensionBundleIdentifier];
        extensionBundleIdentifier2 = [descriptorCopy extensionBundleIdentifier];
        if ([extensionBundleIdentifier isEqualToString:extensionBundleIdentifier2])
        {
          [v11 kind];
          v15 = v14 = v6;
          [descriptorCopy kind];
          v17 = v16 = descriptorCopy;
          v18 = [v15 isEqualToString:v17];

          descriptorCopy = v16;
          v6 = v14;
          v8 = v22;

          if (v18)
          {
            v19 = v11;

            if (v19)
            {
              self = selfCopy;
              v5 = [(NSMutableDictionary *)selfCopy->_infoByDescriptor objectForKeyedSubscript:v19];
              goto LABEL_17;
            }

            v5 = 0;
            self = selfCopy;
            goto LABEL_19;
          }
        }

        else
        {
        }

        if (v8 == ++v10)
        {
          v8 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
          if (v8)
          {
            goto LABEL_4;
          }

          v5 = 0;
          v19 = v6;
          self = selfCopy;
          goto LABEL_17;
        }
      }
    }

    v5 = 0;
    v19 = v6;
LABEL_17:

LABEL_19:
  }

  os_unfair_lock_unlock(&self->_infoByDescriptorLock);

  return v5;
}

- (void)extensionsDidChangeForExtensionProvider:(id)provider
{
  providerCopy = provider;
  widgetExtensionProvider = self->_widgetExtensionProvider;
  v6 = _NTKLoggingObjectForDomain(47, "NTKLoggingDomainWidget");
  v7 = v6;
  if (widgetExtensionProvider == providerCopy)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_22D9C5000, v7, OS_LOG_TYPE_DEFAULT, "Widget extension changed", v8, 2u);
    }

    [(NTKWidgetComplicationManager *)self _postUpdate];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(NTKWidgetComplicationManager *)providerCopy extensionsDidChangeForExtensionProvider:v7];
    }
  }
}

- (void)_postUpdate
{
  descriptorQueue = self->_descriptorQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__NTKWidgetComplicationManager__postUpdate__block_invoke;
  block[3] = &unk_27877DB10;
  block[4] = self;
  dispatch_async(descriptorQueue, block);
}

void __43__NTKWidgetComplicationManager__postUpdate__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateInfo];
  [*(a1 + 32) _queue_updateComplicationDescriptorCache];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__NTKWidgetComplicationManager__postUpdate__block_invoke_2;
  block[3] = &unk_27877DB10;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __43__NTKWidgetComplicationManager__postUpdate__block_invoke_2(uint64_t a1)
{
  v2 = _NTKLoggingObjectForDomain(47, "NTKLoggingDomainWidget");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_22D9C5000, v2, OS_LOG_TYPE_DEFAULT, "Posting notification of complication change", v4, 2u);
  }

  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 postNotificationName:@"NTKWidgetComplicationProviderComplicationsDidChange" object:*(a1 + 32)];
}

- (void)isComplicationAvailable:(uint64_t)a1 forFamilies:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_22D9C5000, a2, OS_LOG_TYPE_ERROR, "%@ is missing an intent!", &v2, 0xCu);
}

- (void)extensionsDidChangeForExtensionProvider:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_22D9C5000, log, OS_LOG_TYPE_ERROR, "Wrong provider %@ given to %@ - ignoring update", &v3, 0x16u);
}

@end