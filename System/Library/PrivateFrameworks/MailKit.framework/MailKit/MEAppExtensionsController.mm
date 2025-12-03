@interface MEAppExtensionsController
+ (id)_emailExtensionAttributeDictionary;
+ (id)log;
+ (id)sharedInstance;
- (BOOL)_extension:(id)_extension matchesCapabilities:(id)capabilities;
- (BOOL)_extension:(id)_extension matchesCriteria:(id)criteria;
- (BOOL)_extension:(id)_extension matchesOldCriteria:(id)criteria;
- (BOOL)hasSecurityExtensionsEnabled;
- (MEAppExtensionsController)init;
- (id)_extensionsNewlyMatchingFromNewExtensions:(id)extensions currentExtensions:(id)currentExtensions forCriteria:(id)criteria;
- (id)_extensionsNoLongerMatchingFromNewExtensions:(id)extensions currentExtensions:(id)currentExtensions forCriteria:(id)criteria;
- (id)_remoteEmailExtensionsForExtensions:(id)extensions enabledOnly:(BOOL)only;
- (id)extensionForIdentifier:(id)identifier;
- (void)_logExtensionsStateWithReason:(id)reason;
- (void)_startMatchingExtensions;
- (void)dealloc;
@end

@implementation MEAppExtensionsController

+ (id)log
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__MEAppExtensionsController_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken != -1)
  {
    dispatch_once(&log_onceToken, block);
  }

  v2 = log_log;

  return v2;
}

void __32__MEAppExtensionsController_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log;
  log_log = v1;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[MEAppExtensionsController sharedInstance];
  }

  v3 = sharedInstance_sIntance;

  return v3;
}

void __43__MEAppExtensionsController_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(MEAppExtensionsController);
  v1 = sharedInstance_sIntance;
  sharedInstance_sIntance = v0;
}

+ (id)_emailExtensionAttributeDictionary
{
  if (_emailExtensionAttributeDictionary_onceToken != -1)
  {
    +[MEAppExtensionsController _emailExtensionAttributeDictionary];
  }

  v3 = _emailExtensionAttributeDictionary_sMatchDictionary;

  return v3;
}

void __63__MEAppExtensionsController__emailExtensionAttributeDictionary__block_invoke()
{
  v4[1] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D3D378];
  v4[0] = @"com.apple.email.extension";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:&v3 count:1];
  v1 = _emailExtensionAttributeDictionary_sMatchDictionary;
  _emailExtensionAttributeDictionary_sMatchDictionary = v0;

  v2 = *MEMORY[0x277D85DE8];
}

- (MEAppExtensionsController)init
{
  v17.receiver = self;
  v17.super_class = MEAppExtensionsController;
  v2 = [(MEAppExtensionsController *)&v17 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.email.extension.remoteExtensionLoader", v3);
    [(MEAppExtensionsController *)v2 setQueue:v4];

    weakToStrongObjectsMapTable = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    observers = v2->_observers;
    v2->_observers = weakToStrongObjectsMapTable;

    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_attr_make_with_qos_class(v7, QOS_CLASS_BACKGROUND, 0);
    v9 = dispatch_queue_create("com.apple.email.MEAppExtensionsController.stateCaptureQueue", v8);
    stateCaptureQueue = v2->_stateCaptureQueue;
    v2->_stateCaptureQueue = v9;

    objc_initWeak(&location, v2);
    v11 = v2->_stateCaptureQueue;
    objc_copyWeak(&v15, &location);
    v12 = EFLogRegisterStateCaptureBlock();
    stateCaptureCancelable = v2->_stateCaptureCancelable;
    v2->_stateCaptureCancelable = v12;

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  return v2;
}

id __33__MEAppExtensionsController_init__block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  os_unfair_lock_lock(WeakRetained + 4);
  v2 = *(WeakRetained + 4);
  os_unfair_lock_unlock(WeakRetained + 4);
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v2;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v6)
  {
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [v9 ef_publicDescription];
        [v3 addObject:v10];

        if ([v9 isEnabled])
        {
          v11 = [v9 ef_publicDescription];
          [v4 addObject:v11];
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v6);
  }

  v19[0] = @"All Extensions";
  v19[1] = @"Enabled Extensions";
  v20[0] = v3;
  v20[1] = v4;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (void)dealloc
{
  [(MEAppExtensionsController *)self _stopMatchingExtensions];
  [(EFCancelable *)self->_stateCaptureCancelable cancel];
  v3.receiver = self;
  v3.super_class = MEAppExtensionsController;
  [(MEAppExtensionsController *)&v3 dealloc];
}

void __103__MEAppExtensionsController_registerMailAppExtensionsObserver_capabilities_includeDisabled_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  os_unfair_lock_lock(WeakRetained + 4);
  v2 = *(WeakRetained + 1);
  v3 = objc_loadWeakRetained((a1 + 40));
  [v2 removeObjectForKey:v3];

  if (![*(WeakRetained + 1) count])
  {
    [WeakRetained _stopMatchingExtensions];
  }

  os_unfair_lock_unlock(WeakRetained + 4);
}

- (id)extensionForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_lock_lock(&self->_lock);
  v5 = self->_allRemoteExtensions;
  os_unfair_lock_unlock(&self->_lock);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __52__MEAppExtensionsController_extensionForIdentifier___block_invoke;
  v9[3] = &unk_279858E10;
  v10 = identifierCopy;
  v6 = identifierCopy;
  v7 = [(NSArray *)v5 ef_firstObjectPassingTest:v9];

  return v7;
}

uint64_t __52__MEAppExtensionsController_extensionForIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 extensionID];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (BOOL)hasSecurityExtensionsEnabled
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = self->_allRemoteExtensions;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = v2;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = *v14;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        if ([v7 isEnabled])
        {
          capabilities = [v7 capabilities];
          v9 = [capabilities containsObject:@"MEMessageSecurityHandler"];

          if (v9)
          {
            v10 = 1;
            goto LABEL_12;
          }
        }
      }

      v4 = [(NSArray *)v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_12:

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)_startMatchingExtensions
{
  v3 = MEMORY[0x277CCA9C8];
  v4 = +[MEAppExtensionsController _emailExtensionAttributeDictionary];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__MEAppExtensionsController__startMatchingExtensions__block_invoke;
  v7[3] = &unk_279858E80;
  v7[4] = self;
  v5 = [v3 beginMatchingExtensionsWithAttributes:v4 completion:v7];
  extensionMatchingContext = self->_extensionMatchingContext;
  self->_extensionMatchingContext = v5;
}

void __53__MEAppExtensionsController__startMatchingExtensions__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_initWeak(&location, *(a1 + 32));
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__MEAppExtensionsController__startMatchingExtensions__block_invoke_2;
  block[3] = &unk_279858E58;
  objc_copyWeak(&v8, &location);
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, block);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __53__MEAppExtensionsController__startMatchingExtensions__block_invoke_2(uint64_t a1)
{
  v51 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v30 = *(WeakRetained + 4);
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = v30;
  v3 = [obj countByEnumeratingWithState:&v44 objects:v50 count:16];
  if (v3)
  {
    v4 = *v45;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v45 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v44 + 1) + 8 * i);
        v7 = [v6 extensionID];
        [v2 setObject:v6 forKeyedSubscript:v7];
      }

      v3 = [obj countByEnumeratingWithState:&v44 objects:v50 count:16];
    }

    while (v3);
  }

  v8 = [WeakRetained _remoteEmailExtensionsForExtensions:*(a1 + 32) enabledOnly:0];
  v31 = [v8 allValues];

  v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v34 = v31;
  v10 = [v34 countByEnumeratingWithState:&v40 objects:v49 count:16];
  if (v10)
  {
    v11 = *v41;
    do
    {
      for (j = 0; j != v10; ++j)
      {
        if (*v41 != v11)
        {
          objc_enumerationMutation(v34);
        }

        v13 = *(*(&v40 + 1) + 8 * j);
        v14 = [v13 extensionID];
        [v9 setObject:v13 forKeyedSubscript:v14];
      }

      v10 = [v34 countByEnumeratingWithState:&v40 objects:v49 count:16];
    }

    while (v10);
  }

  os_unfair_lock_lock(WeakRetained + 4);
  objc_storeStrong(WeakRetained + 4, v31);
  v15 = WeakRetained;
  v16 = [*(WeakRetained + 1) copy];
  *(WeakRetained + 40) = 1;
  os_unfair_lock_unlock(WeakRetained + 4);
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v32 = [v16 keyEnumerator];
  v17 = [v32 countByEnumeratingWithState:&v36 objects:v48 count:16];
  if (v17)
  {
    v18 = *v37;
    do
    {
      for (k = 0; k != v17; ++k)
      {
        if (*v37 != v18)
        {
          objc_enumerationMutation(v32);
        }

        v20 = *(*(&v36 + 1) + 8 * k);
        v21 = [v16 objectForKey:{v20, v30}];
        v22 = [v15 _extensionsNewlyMatchingFromNewExtensions:v9 currentExtensions:v2 forCriteria:v21];
        v23 = [v15 _extensionsNoLongerMatchingFromNewExtensions:v9 currentExtensions:v2 forCriteria:v21];
        [v20 extensionsMatched:v22];
        if ([v23 count])
        {
          [v20 extensionsNoLongerMatching:v23];
        }

        v15 = WeakRetained;
      }

      v17 = [v32 countByEnumeratingWithState:&v36 objects:v48 count:16];
    }

    while (v17);
  }

  v24 = [v34 ef_compactMap:&__block_literal_global_51];
  v25 = *(WeakRetained + 8);
  *(WeakRetained + 8) = v24;

  v26 = @"processing updates";
  if (!v30)
  {
    v26 = @"startup";
  }

  v27 = v26;
  [WeakRetained _logExtensionsStateWithReason:v27];
  v28 = [MEMORY[0x277CCAB98] defaultCenter];
  [v28 postNotificationName:@"MEMailAppExtensionsEnabledStateChanged" object:WeakRetained];

  v29 = *MEMORY[0x277D85DE8];
}

id __53__MEAppExtensionsController__startMatchingExtensions__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isEnabled])
  {
    v3 = [v2 extensionID];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_extensionsNewlyMatchingFromNewExtensions:(id)extensions currentExtensions:(id)currentExtensions forCriteria:(id)criteria
{
  v29 = *MEMORY[0x277D85DE8];
  extensionsCopy = extensions;
  currentExtensionsCopy = currentExtensions;
  criteriaCopy = criteria;
  includeDisabled = [criteriaCopy includeDisabled];
  v21 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = [extensionsCopy allValues];
  v10 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v10)
  {
    v11 = *v25;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v24 + 1) + 8 * i);
        if ([(MEAppExtensionsController *)self _extension:v13 matchesCriteria:criteriaCopy, extensionsCopy])
        {
          extensionID = [v13 extensionID];
          v15 = [currentExtensionsCopy objectForKeyedSubscript:extensionID];

          if (includeDisabled)
          {
            if (!v15)
            {
              goto LABEL_12;
            }
          }

          else if ([v13 isEnabled])
          {
            previouslyEnabledExtensionIdentifiers = self->_previouslyEnabledExtensionIdentifiers;
            extensionID2 = [v13 extensionID];
            LOBYTE(previouslyEnabledExtensionIdentifiers) = [(NSArray *)previouslyEnabledExtensionIdentifiers containsObject:extensionID2];

            if ((previouslyEnabledExtensionIdentifiers & 1) == 0)
            {
LABEL_12:
              [v21 addObject:v13];
            }
          }

          continue;
        }
      }

      v10 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v10);
  }

  v18 = *MEMORY[0x277D85DE8];

  return v21;
}

- (id)_extensionsNoLongerMatchingFromNewExtensions:(id)extensions currentExtensions:(id)currentExtensions forCriteria:(id)criteria
{
  v29 = *MEMORY[0x277D85DE8];
  extensionsCopy = extensions;
  currentExtensionsCopy = currentExtensions;
  criteriaCopy = criteria;
  includeDisabled = [criteriaCopy includeDisabled];
  v21 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = [currentExtensionsCopy allValues];
  v10 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v10)
  {
    v11 = *v25;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v24 + 1) + 8 * i);
        extensionID = [v13 extensionID];
        v15 = [extensionsCopy objectForKeyedSubscript:extensionID];

        if (![(MEAppExtensionsController *)self _extension:v15 matchesCriteria:criteriaCopy]&& [(MEAppExtensionsController *)self _extension:v13 matchesOldCriteria:criteriaCopy])
        {
          if (includeDisabled)
          {
            if (v15)
            {
              goto LABEL_14;
            }

LABEL_13:
            [v21 addObject:v13];
            goto LABEL_14;
          }

          if (([v15 isEnabled] & 1) == 0)
          {
            previouslyEnabledExtensionIdentifiers = self->_previouslyEnabledExtensionIdentifiers;
            extensionID2 = [v15 extensionID];
            LOBYTE(previouslyEnabledExtensionIdentifiers) = [(NSArray *)previouslyEnabledExtensionIdentifiers containsObject:extensionID2];

            if (previouslyEnabledExtensionIdentifiers)
            {
              goto LABEL_13;
            }
          }
        }

LABEL_14:
      }

      v10 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v10);
  }

  v18 = *MEMORY[0x277D85DE8];

  return v21;
}

- (BOOL)_extension:(id)_extension matchesOldCriteria:(id)criteria
{
  _extensionCopy = _extension;
  criteriaCopy = criteria;
  if ([criteriaCopy includeDisabled] & 1) != 0 || (previouslyEnabledExtensionIdentifiers = self->_previouslyEnabledExtensionIdentifiers, objc_msgSend(_extensionCopy, "extensionID"), v9 = objc_claimAutoreleasedReturnValue(), LOBYTE(previouslyEnabledExtensionIdentifiers) = -[NSArray containsObject:](previouslyEnabledExtensionIdentifiers, "containsObject:", v9), v9, (previouslyEnabledExtensionIdentifiers))
  {
    capabilities = [criteriaCopy capabilities];
    v11 = [(MEAppExtensionsController *)self _extension:_extensionCopy matchesCapabilities:capabilities];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)_extension:(id)_extension matchesCriteria:(id)criteria
{
  _extensionCopy = _extension;
  criteriaCopy = criteria;
  if ([criteriaCopy includeDisabled] & 1) != 0 || (objc_msgSend(_extensionCopy, "isEnabled"))
  {
    capabilities = [criteriaCopy capabilities];
    v9 = [(MEAppExtensionsController *)self _extension:_extensionCopy matchesCapabilities:capabilities];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)_extension:(id)_extension matchesCapabilities:(id)capabilities
{
  _extensionCopy = _extension;
  v6 = [MEMORY[0x277CBEB98] setWithArray:capabilities];
  v7 = MEMORY[0x277CBEB98];
  capabilities = [_extensionCopy capabilities];
  v9 = [v7 setWithArray:capabilities];

  LOBYTE(capabilities) = [v6 intersectsSet:v9];
  return capabilities;
}

- (id)_remoteEmailExtensionsForExtensions:(id)extensions enabledOnly:(BOOL)only
{
  onlyCopy = only;
  v35 = *MEMORY[0x277D85DE8];
  extensionsCopy = extensions;
  v23 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(extensionsCopy, "count")}];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = extensionsCopy;
  v6 = [v5 countByEnumeratingWithState:&v24 objects:v34 count:16];
  if (v6)
  {
    v7 = *v25;
    v8 = !onlyCopy;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v24 + 1) + 8 * i);
        identifier = [v10 identifier];
        _plugIn = [v10 _plugIn];
        userElection = [_plugIn userElection];

        if (((v8 | [v10 optedIn]) & 1) != 0 || userElection < 2uLL)
        {
          _plugIn2 = [v10 _plugIn];
          v15 = [[MERemoteExtension alloc] initWithExtension:v10];
          identifier2 = [_plugIn2 identifier];
          [v23 setObject:v15 forKeyedSubscript:identifier2];

          v17 = +[MEAppExtensionsController log];
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v29 = identifier;
            _os_log_impl(&dword_257F67000, v17, OS_LOG_TYPE_DEFAULT, "Found email extension with identifier:%@", buf, 0xCu);
          }
        }

        else
        {
          _plugIn2 = +[MEAppExtensionsController log];
          if (os_log_type_enabled(_plugIn2, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412802;
            v29 = identifier;
            v30 = 2080;
            v31 = "NO";
            v32 = 2048;
            v33 = userElection;
            _os_log_debug_impl(&dword_257F67000, _plugIn2, OS_LOG_TYPE_DEBUG, "Skipping extension:%@, optedIn:%s, election:%ld", buf, 0x20u);
          }
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v24 objects:v34 count:16];
    }

    while (v6);
  }

  v18 = +[MEAppExtensionsController log];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [v23 count];
    *buf = 134217984;
    v29 = v19;
    _os_log_impl(&dword_257F67000, v18, OS_LOG_TYPE_DEFAULT, "Found %lu email extensions", buf, 0xCu);
  }

  v20 = *MEMORY[0x277D85DE8];

  return v23;
}

- (void)_logExtensionsStateWithReason:(id)reason
{
  v28 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  os_unfair_lock_lock(&self->_lock);
  v7 = self->_allRemoteExtensions;
  os_unfair_lock_unlock(&self->_lock);
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = v7;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v17 objects:v27 count:16];
  if (v9)
  {
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        ef_publicDescription = [v12 ef_publicDescription];
        [v5 addObject:ef_publicDescription];

        if ([v12 isEnabled])
        {
          ef_publicDescription2 = [v12 ef_publicDescription];
          [v6 addObject:ef_publicDescription2];
        }
      }

      v9 = [(NSArray *)v8 countByEnumeratingWithState:&v17 objects:v27 count:16];
    }

    while (v9);
  }

  v15 = MEMailExtensionsLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v22 = reasonCopy;
    v23 = 2114;
    v24 = v6;
    v25 = 2114;
    v26 = v5;
    _os_log_impl(&dword_257F67000, v15, OS_LOG_TYPE_DEFAULT, "Current Mail Extensions for %{public}@ - \nEnabled Extensions - %{public}@\nAll Extensions %{public}@", buf, 0x20u);
  }

  v16 = *MEMORY[0x277D85DE8];
}

@end