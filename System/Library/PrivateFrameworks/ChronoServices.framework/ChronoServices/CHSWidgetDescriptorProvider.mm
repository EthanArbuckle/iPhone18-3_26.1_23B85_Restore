@interface CHSWidgetDescriptorProvider
- (BOOL)_isEDUMode;
- (CHSWidgetDescriptorProvider)initWithConnection:(id)a3 extensionProvider:(id)a4;
- (CHSWidgetDescriptorProvider)initWithConnection:(id)a3 extensionProvider:(id)a4 providerOptions:(id)a5;
- (NSDictionary)descriptorsByExtensionIdentifier;
- (NSSet)descriptors;
- (id)_descriptorsFromExtensions:(id)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)descriptorForPersonality:(id)a3;
- (id)succinctDescription;
- (void)_lock_addNewDescriptorsFromDescriptors:(id)a3;
- (void)_lock_notifyObserversDescriptorsDidChange;
- (void)_lock_reloadContentAsynchronouslyForContainerIdentifier:(id)a3 completion:(id)a4;
- (void)addObserver:(id)a3;
- (void)dealloc;
- (void)extensionsDidChangeForExtensionProvider:(id)a3;
- (void)fetchDescriptorsForContainerIdentifier:(id)a3 completion:(id)a4;
- (void)removeObserver:(id)a3;
@end

@implementation CHSWidgetDescriptorProvider

- (CHSWidgetDescriptorProvider)initWithConnection:(id)a3 extensionProvider:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [CHSWidgetExtensionProviderOptions alloc];
  v9 = objc_alloc_init(CHSWidgetDescriptorsPredicate);
  v10 = [(CHSWidgetExtensionProviderOptions *)v8 initWithWidgetsPredicate:v9 controlsPredicate:0 includeIntents:1];

  v11 = [(CHSWidgetDescriptorProvider *)self initWithConnection:v6 extensionProvider:v7 providerOptions:v10];
  return v11;
}

- (CHSWidgetDescriptorProvider)initWithConnection:(id)a3 extensionProvider:(id)a4 providerOptions:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (initWithConnection_extensionProvider_providerOptions____once != -1)
  {
    [CHSWidgetDescriptorProvider initWithConnection:extensionProvider:providerOptions:];
  }

  v20.receiver = self;
  v20.super_class = CHSWidgetDescriptorProvider;
  v12 = [(CHSWidgetDescriptorProvider *)&v20 init];
  v13 = v12;
  if (v12)
  {
    v12->_lock._os_unfair_lock_opaque = 0;
    v14 = [MEMORY[0x1E695DFA8] set];
    lock_observers = v13->_lock_observers;
    v13->_lock_observers = v14;

    objc_storeStrong(&v13->_lock_connection, a3);
    objc_storeStrong(&v13->_extensionProvider, a4);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __84__CHSWidgetDescriptorProvider_initWithConnection_extensionProvider_providerOptions___block_invoke_2;
    v17[3] = &unk_1E7453000;
    v18 = v13;
    v19 = v11;
    os_unfair_lock_assert_not_owner(&v13->_lock);
    os_unfair_lock_lock(&v13->_lock);
    __84__CHSWidgetDescriptorProvider_initWithConnection_extensionProvider_providerOptions___block_invoke_2(v17);
    os_unfair_lock_unlock(&v13->_lock);
  }

  return v13;
}

void __84__CHSWidgetDescriptorProvider_initWithConnection_extensionProvider_providerOptions___block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.chrono.descriptorProvider", v2);
  v1 = __calloutQueue;
  __calloutQueue = v0;
}

void __84__CHSWidgetDescriptorProvider_initWithConnection_extensionProvider_providerOptions___block_invoke_2(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) cachedExtensionsWithOptions:*(a1 + 40)];
  v3 = *(a1 + 32);
  v4 = v2;
  v9 = v2;
  if (!v2)
  {
    v4 = [MEMORY[0x1E695DFD8] set];
  }

  v5 = [v3 _descriptorsFromExtensions:v4];
  v6 = *(a1 + 32);
  v7 = *(v6 + 32);
  *(v6 + 32) = v5;

  v8 = v9;
  if (!v9)
  {

    v8 = 0;
  }
}

- (void)dealloc
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __38__CHSWidgetDescriptorProvider_dealloc__block_invoke;
  v4[3] = &unk_1E74530E8;
  v4[4] = self;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  __38__CHSWidgetDescriptorProvider_dealloc__block_invoke(v4);
  os_unfair_lock_unlock(&self->_lock);
  v3.receiver = self;
  v3.super_class = CHSWidgetDescriptorProvider;
  [(CHSWidgetDescriptorProvider *)&v3 dealloc];
}

- (NSDictionary)descriptorsByExtensionIdentifier
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy_;
  v10 = __Block_byref_object_dispose_;
  v11 = MEMORY[0x1E695E0F8];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __63__CHSWidgetDescriptorProvider_descriptorsByExtensionIdentifier__block_invoke;
  v5[3] = &unk_1E7453110;
  v5[4] = self;
  v5[5] = &v6;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  __63__CHSWidgetDescriptorProvider_descriptorsByExtensionIdentifier__block_invoke(v5);
  os_unfair_lock_unlock(&self->_lock);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __63__CHSWidgetDescriptorProvider_descriptorsByExtensionIdentifier__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  if (v3)
  {
    if ([v3 count])
    {
      goto LABEL_5;
    }

    v2 = *(a1 + 32);
  }

  v4 = [*(v2 + 8) extensions];
  v5 = [v2 _descriptorsFromExtensions:v4];
  v6 = *(a1 + 32);
  v7 = *(v6 + 32);
  *(v6 + 32) = v5;

LABEL_5:
  v8 = *(*(a1 + 32) + 32);
  v9 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v9, v8);
}

- (NSSet)descriptors
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = [(CHSWidgetDescriptorProvider *)self descriptorsByExtensionIdentifier];
  v4 = [v3 allValues];
  v5 = [v4 bs_flatten];
  v6 = [v2 setWithArray:v5];

  return v6;
}

- (id)descriptorForPersonality:(id)a3
{
  v4 = a3;
  v5 = [(CHSWidgetDescriptorProvider *)self descriptorsByExtensionIdentifier];
  v6 = [v4 extensionBundleIdentifier];
  v7 = [v5 objectForKey:v6];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __56__CHSWidgetDescriptorProvider_descriptorForPersonality___block_invoke;
  v11[3] = &unk_1E7453138;
  v8 = v4;
  v12 = v8;
  v9 = [v7 bs_firstObjectPassingTest:v11];

  return v9;
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __43__CHSWidgetDescriptorProvider_addObserver___block_invoke;
  v6[3] = &unk_1E7453000;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  __43__CHSWidgetDescriptorProvider_addObserver___block_invoke(v6);
  os_unfair_lock_unlock(&self->_lock);
}

uint64_t __43__CHSWidgetDescriptorProvider_addObserver___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 40) addObject:*(a1 + 40)];
  v3 = *(a1 + 32);
  if ((*(v3 + 20) & 1) == 0)
  {
    *(v3 + 20) = 1;
    v4 = *(*(a1 + 32) + 8);

    return [v4 registerObserver:?];
  }

  return result;
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__CHSWidgetDescriptorProvider_removeObserver___block_invoke;
  v6[3] = &unk_1E7453000;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  __46__CHSWidgetDescriptorProvider_removeObserver___block_invoke(v6);
  os_unfair_lock_unlock(&self->_lock);
}

- (void)fetchDescriptorsForContainerIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __81__CHSWidgetDescriptorProvider_fetchDescriptorsForContainerIdentifier_completion___block_invoke;
  v10[3] = &unk_1E7453160;
  v10[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  __81__CHSWidgetDescriptorProvider_fetchDescriptorsForContainerIdentifier_completion___block_invoke(v10);
  os_unfair_lock_unlock(&self->_lock);
}

- (id)succinctDescription
{
  v2 = [(CHSWidgetDescriptorProvider *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(CHSWidgetDescriptorProvider *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = a3;
  v5 = [(CHSWidgetDescriptorProvider *)self succinctDescriptionBuilder];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __69__CHSWidgetDescriptorProvider_descriptionBuilderWithMultilinePrefix___block_invoke;
  v10[3] = &unk_1E7453000;
  v10[4] = self;
  v6 = v5;
  v11 = v6;
  [v6 appendBodySectionWithName:0 multilinePrefix:v4 block:v10];
  v7 = v11;
  v8 = v6;

  return v6;
}

void __69__CHSWidgetDescriptorProvider_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __69__CHSWidgetDescriptorProvider_descriptionBuilderWithMultilinePrefix___block_invoke_2;
  v5[3] = &unk_1E7453000;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v6 = v3;
  v7 = v4;
  os_unfair_lock_assert_not_owner(v2 + 4);
  os_unfair_lock_lock(v2 + 4);
  __69__CHSWidgetDescriptorProvider_descriptionBuilderWithMultilinePrefix___block_invoke_2(v5);
  os_unfair_lock_unlock(v2 + 4);
}

void __69__CHSWidgetDescriptorProvider_descriptionBuilderWithMultilinePrefix___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = [*(a1 + 40) descriptors];
  v2 = [v3 allObjects];
  [v1 appendArraySection:v2 withName:@"descriptors" skipIfEmpty:0];
}

- (void)extensionsDidChangeForExtensionProvider:(id)a3
{
  v4 = a3;
  v5 = [v4 extensions];
  v6 = [(CHSWidgetDescriptorProvider *)self _descriptorsFromExtensions:v5];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __71__CHSWidgetDescriptorProvider_extensionsDidChangeForExtensionProvider___block_invoke;
  v8[3] = &unk_1E7453000;
  v9 = v6;
  v10 = self;
  v7 = v6;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  __71__CHSWidgetDescriptorProvider_extensionsDidChangeForExtensionProvider___block_invoke(v8);
  os_unfair_lock_unlock(&self->_lock);
}

uint64_t __71__CHSWidgetDescriptorProvider_extensionsDidChangeForExtensionProvider___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isEqualToDictionary:*(*(a1 + 40) + 32)];
  if ((result & 1) == 0)
  {
    objc_storeStrong((*(a1 + 40) + 32), *(a1 + 32));
    v3 = *(a1 + 40);

    return [v3 _lock_notifyObserversDescriptorsDidChange];
  }

  return result;
}

- (id)_descriptorsFromExtensions:(id)a3
{
  v3 = a3;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy_;
  v11 = __Block_byref_object_dispose_;
  v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __58__CHSWidgetDescriptorProvider__descriptorsFromExtensions___block_invoke;
  v6[3] = &unk_1E7453188;
  v6[4] = &v7;
  [v3 bs_each:v6];
  v4 = [v8[5] copy];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __58__CHSWidgetDescriptorProvider__descriptorsFromExtensions___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 identity];
  v4 = [v3 extensionBundleIdentifier];

  v5 = [v6 orderedWidgetDescriptors];
  [*(*(*(a1 + 32) + 8) + 40) setObject:v5 forKeyedSubscript:v4];
}

- (BOOL)_isEDUMode
{
  eduModeProvider = self->_eduModeProvider;
  if (eduModeProvider)
  {
    LOBYTE(eduModeProvider) = eduModeProvider[2]();
  }

  return eduModeProvider;
}

- (void)_lock_reloadContentAsynchronouslyForContainerIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  lock_connection = self->_lock_connection;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __98__CHSWidgetDescriptorProvider__lock_reloadContentAsynchronouslyForContainerIdentifier_completion___block_invoke;
  v11[3] = &unk_1E74531B0;
  v11[4] = self;
  v9 = v6;
  v12 = v9;
  objc_copyWeak(&v14, &location);
  v13 = v7;
  v10 = v7;
  [(CHSChronoServicesConnection *)lock_connection fetchDescriptorsForContainerBundleIdentifier:v9 completion:v11];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __98__CHSWidgetDescriptorProvider__lock_reloadContentAsynchronouslyForContainerIdentifier_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = CHSLogChronoServices();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = *(a1 + 40);
      *buf = 134218498;
      v17 = v8;
      v18 = 2112;
      v19 = v9;
      v20 = 2112;
      v21 = v6;
      _os_log_impl(&dword_195EB2000, v7, OS_LOG_TYPE_DEFAULT, "<CHSWidgetDescriptorProvider:%p> Cache descriptors for container identifier: %@ returned error: %@", buf, 0x20u);
    }
  }

  if (!v5)
  {
    v10 = 0;
LABEL_12:
    (*(*(a1 + 48) + 16))(*(a1 + 48), 0);
    goto LABEL_13;
  }

  v10 = [v5 descriptorsByExtensionIdentifier];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v12 = WeakRetained;
  if (WeakRetained)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __98__CHSWidgetDescriptorProvider__lock_reloadContentAsynchronouslyForContainerIdentifier_completion___block_invoke_14;
    v14[3] = &unk_1E7453000;
    v14[4] = WeakRetained;
    v15 = v10;
    os_unfair_lock_assert_not_owner(v12 + 4);
    os_unfair_lock_lock(v12 + 4);
    __98__CHSWidgetDescriptorProvider__lock_reloadContentAsynchronouslyForContainerIdentifier_completion___block_invoke_14(v14);
    os_unfair_lock_unlock(v12 + 4);
  }

  if (!v10 || ![v10 count])
  {
    goto LABEL_12;
  }

  (*(*(a1 + 48) + 16))(*(a1 + 48), v10);
LABEL_13:

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_lock_addNewDescriptorsFromDescriptors:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(NSDictionary *)self->_lock_descriptorsByExtensionIdentifier mutableCopy];
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __70__CHSWidgetDescriptorProvider__lock_addNewDescriptorsFromDescriptors___block_invoke;
  v16 = &unk_1E74531D8;
  v6 = v5;
  v17 = v6;
  v18 = &v19;
  [v4 enumerateKeysAndObjectsUsingBlock:&v13];
  if (*(v20 + 24) == 1)
  {
    objc_storeStrong(&self->_lock_descriptorsByExtensionIdentifier, v5);
    [(CHSWidgetDescriptorProvider *)self _lock_notifyObserversDescriptorsDidChange:v13];
    v7 = CHSLogChronoServices();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v6 count];
      *buf = 134218498;
      v24 = self;
      v25 = 2112;
      v26 = v4;
      v27 = 2048;
      v28 = v8;
      v9 = "<CHSWidgetDescriptorProvider:%p> Added descriptors: %@ for extension count: %lu";
      v10 = v7;
      v11 = 32;
LABEL_6:
      _os_log_impl(&dword_195EB2000, v10, OS_LOG_TYPE_DEFAULT, v9, buf, v11);
    }
  }

  else
  {
    v7 = CHSLogChronoServices();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v24 = self;
      v25 = 2112;
      v26 = v4;
      v9 = "<CHSWidgetDescriptorProvider:%p> No descriptor update needed. Already discovered descriptors: %@";
      v10 = v7;
      v11 = 22;
      goto LABEL_6;
    }
  }

  _Block_object_dispose(&v19, 8);
  v12 = *MEMORY[0x1E69E9840];
}

void __70__CHSWidgetDescriptorProvider__lock_addNewDescriptorsFromDescriptors___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) objectForKey:v8];
  v7 = v6;
  if (!v6 || ([v6 isEqualToArray:v5] & 1) == 0)
  {
    [*(a1 + 32) setObject:v5 forKey:v8];
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

- (void)_lock_notifyObserversDescriptorsDidChange
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [(NSMutableSet *)self->_lock_observers copy];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v10 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          v9[0] = MEMORY[0x1E69E9820];
          v9[1] = 3221225472;
          v9[2] = __72__CHSWidgetDescriptorProvider__lock_notifyObserversDescriptorsDidChange__block_invoke;
          v9[3] = &unk_1E7453000;
          v9[4] = v7;
          v9[5] = self;
          dispatch_async(__calloutQueue, v9);
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x1E69E9840];
}

@end