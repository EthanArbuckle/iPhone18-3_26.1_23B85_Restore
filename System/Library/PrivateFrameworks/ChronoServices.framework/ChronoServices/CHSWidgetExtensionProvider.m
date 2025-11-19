@interface CHSWidgetExtensionProvider
+ (id)_computeIconVersionsByForExtensions:(id)a3 withIconResolver:(id)a4;
+ (id)_makeWidgetExtensionSetWithExtensions:(id)a3 iconResolver:(id)a4;
- (BOOL)_isEDUMode;
- (CHSWidgetExtensionProvider)init;
- (CHSWidgetExtensionProvider)initWithConnection:(id)a3 providerOptions:(id)a4 eduProvider:(id)a5;
- (CHSWidgetExtensionProvider)initWithOptions:(id)a3;
- (CHSWidgetExtensionSet)_widgetExtensionSet;
- (NSSet)containers;
- (NSSet)extensions;
- (id)controlDescriptorForControl:(id)a3;
- (id)controlDescriptorForIdentifiable:(id)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (id)widgetDescriptorForIdentifiable:(id)a3;
- (id)widgetDescriptorForWidget:(id)a3;
- (id)widgetExtensionContainerForContainerBundleIdentifier:(id)a3;
- (id)widgetExtensionContainerForExtensionBundleIdentifier:(id)a3;
- (void)_lock_loadContentInitiallySynchronouslyIfNecessary;
- (void)_lock_notifyObserversExtensionsDidChange;
- (void)_lock_widgetExtensionsDidChange:(id)a3 postNotification:(BOOL)a4 reason:(id)a5;
- (void)dealloc;
- (void)invalidate;
- (void)registerObserver:(id)a3;
- (void)unregisterObserver:(id)a3;
- (void)widgetExtensionsDidChange:(id)a3;
@end

@implementation CHSWidgetExtensionProvider

- (CHSWidgetExtensionSet)_widgetExtensionSet
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__0;
  v10 = __Block_byref_object_dispose__0;
  v11 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __49__CHSWidgetExtensionProvider__widgetExtensionSet__block_invoke;
  v5[3] = &unk_1E7453110;
  v5[4] = self;
  v5[5] = &v6;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  __49__CHSWidgetExtensionProvider__widgetExtensionSet__block_invoke(v5);
  os_unfair_lock_unlock(&self->_lock);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __49__CHSWidgetExtensionProvider__widgetExtensionSet__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _lock_loadContentInitiallySynchronouslyIfNecessary];
  v2 = [*(*(a1 + 32) + 32) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)_lock_loadContentInitiallySynchronouslyIfNecessary
{
  v23 = *MEMORY[0x1E69E9840];
  if (!self->_lock_subscription)
  {
    v3 = [(CHSWidgetExtensionProvider *)self _isEDUMode];
    v4 = CHSLogChronoServices();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    if (v3)
    {
      if (v5)
      {
        *buf = 134217984;
        v18 = self;
        _os_log_impl(&dword_195EB2000, v4, OS_LOG_TYPE_DEFAULT, "<CHSWidgetExtensionProvider:%p> Skipping sync load because in EDU mode.", buf, 0xCu);
      }

      v6 = 0;
      v7 = 0;
    }

    else
    {
      if (v5)
      {
        v8 = [(CHSWidgetExtensionProviderOptions *)self->_lock_providerOptions description];
        *buf = 134218242;
        v18 = self;
        v19 = 2114;
        v20 = v8;
        _os_log_impl(&dword_195EB2000, v4, OS_LOG_TYPE_DEFAULT, "<CHSWidgetExtensionProvider:%p> Loading synchronously options: %{public}@.", buf, 0x16u);
      }

      lock_connection = self->_lock_connection;
      v15 = 0;
      v16 = 0;
      v10 = [(CHSChronoServicesConnection *)lock_connection subscribeToExtensions:&v16 fromClient:self withOptions:self->_lock_providerOptions outExtensions:&v15];
      v7 = v16;
      v6 = v15;
      lock_subscription = self->_lock_subscription;
      self->_lock_subscription = v10;

      v4 = CHSLogChronoServices();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [v6 count];
        v13 = [(CHSWidgetExtensionProviderOptions *)self->_lock_providerOptions description];
        *buf = 134218498;
        v18 = self;
        v19 = 2048;
        v20 = v12;
        v21 = 2114;
        v22 = v13;
        _os_log_impl(&dword_195EB2000, v4, OS_LOG_TYPE_DEFAULT, "<CHSWidgetExtensionProvider:%p> Loaded synchronously - %lu received, options: %{public}@.", buf, 0x20u);
      }
    }

    [(CHSWidgetExtensionProvider *)self _lock_widgetExtensionsDidChange:v6 postNotification:0 reason:@"initial sync"];
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (NSSet)containers
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = [(CHSWidgetExtensionProvider *)self _widgetExtensionSet];
  v4 = [v3 widgetExtensionContainers];
  v5 = [v2 setWithArray:v4];

  return v5;
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

- (CHSWidgetExtensionProvider)initWithOptions:(id)a3
{
  v4 = a3;
  v5 = +[CHSChronoServicesConnection sharedInstance];
  v6 = [(CHSWidgetExtensionProvider *)self initWithConnection:v5 providerOptions:v4 eduProvider:&__block_literal_global_1];

  return v6;
}

uint64_t __46__CHSWidgetExtensionProvider_initWithOptions___block_invoke()
{
  v0 = [MEMORY[0x1E696AAE8] mainBundle];
  v1 = [v0 bundleIdentifier];
  if ([v1 isEqualToString:@"com.apple.springboard"])
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x2050000000;
    v2 = getUMUserManagerClass_softClass;
    v11 = getUMUserManagerClass_softClass;
    if (!getUMUserManagerClass_softClass)
    {
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __getUMUserManagerClass_block_invoke;
      v7[3] = &unk_1E74534C8;
      v7[4] = &v8;
      __getUMUserManagerClass_block_invoke(v7);
      v2 = v9[3];
    }

    v3 = v2;
    _Block_object_dispose(&v8, 8);
    v4 = [v2 sharedManager];
    v5 = [v4 isMultiUser];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (CHSWidgetExtensionProvider)init
{
  v3 = [CHSWidgetExtensionProviderOptions alloc];
  v4 = objc_alloc_init(CHSWidgetDescriptorsPredicate);
  v5 = [(CHSWidgetExtensionProviderOptions *)v3 initWithWidgetsPredicate:v4 controlsPredicate:0 includeIntents:1];

  v6 = [(CHSWidgetExtensionProvider *)self initWithOptions:v5];
  return v6;
}

- (CHSWidgetExtensionProvider)initWithConnection:(id)a3 providerOptions:(id)a4 eduProvider:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (initWithConnection_providerOptions_eduProvider____once != -1)
  {
    [CHSWidgetExtensionProvider initWithConnection:providerOptions:eduProvider:];
  }

  v30.receiver = self;
  v30.super_class = CHSWidgetExtensionProvider;
  v12 = [(CHSWidgetExtensionProvider *)&v30 init];
  v13 = v12;
  if (v12)
  {
    v12->_lock._os_unfair_lock_opaque = 0;
    v14 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    lock_observers = v13->_lock_observers;
    v13->_lock_observers = v14;

    objc_storeStrong(&v13->_lock_connection, a3);
    v16 = [v10 copy];
    lock_providerOptions = v13->_lock_providerOptions;
    v13->_lock_providerOptions = v16;

    [(CHSChronoServicesConnection *)v13->_lock_connection addClient:v13];
    v18 = _Block_copy(v11);
    eduModeProvider = v13->_eduModeProvider;
    v13->_eduModeProvider = v18;

    v20 = objc_alloc_init(CHSIconResolver);
    iconResolver = v13->_iconResolver;
    v13->_iconResolver = v20;

    v22 = [CHSWidgetExtensionSet alloc];
    v23 = [MEMORY[0x1E695DFD8] set];
    v24 = +[CHSEquivalentBundleIdentifierResolver defaultResolver];
    v25 = [(CHSWidgetExtensionSet *)v22 initWithExtensions:v23 equivalentBundleIdentifierResolver:v24 iconResolver:v13->_iconResolver];
    lock_extensionSet = v13->_lock_extensionSet;
    v13->_lock_extensionSet = v25;

    v27 = [MEMORY[0x1E695DF20] dictionary];
    lock_iconVersionByExtensionIdentity = v13->_lock_iconVersionByExtensionIdentity;
    v13->_lock_iconVersionByExtensionIdentity = v27;
  }

  return v13;
}

void __77__CHSWidgetExtensionProvider_initWithConnection_providerOptions_eduProvider___block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.chrono.descriptorProvider", v2);
  v1 = __calloutQueue_0;
  __calloutQueue_0 = v0;
}

- (void)dealloc
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __37__CHSWidgetExtensionProvider_dealloc__block_invoke;
  v4[3] = &unk_1E74530E8;
  v4[4] = self;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  __37__CHSWidgetExtensionProvider_dealloc__block_invoke(v4);
  os_unfair_lock_unlock(&self->_lock);
  v3.receiver = self;
  v3.super_class = CHSWidgetExtensionProvider;
  [(CHSWidgetExtensionProvider *)&v3 dealloc];
}

- (NSSet)extensions
{
  v2 = [(CHSWidgetExtensionProvider *)self _widgetExtensionSet];
  v3 = [v2 allExtensions];

  return v3;
}

- (id)widgetDescriptorForWidget:(id)a3
{
  v3 = [(CHSWidgetExtensionProvider *)self widgetDescriptorForIdentifiable:a3];

  return v3;
}

- (id)widgetDescriptorForIdentifiable:(id)a3
{
  v14[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 extensionIdentity];
  v6 = [(CHSWidgetExtensionProvider *)self _widgetExtensionSet];
  v7 = [v6 widgetExtensionForExtensionIdentity:v5];

  if (!v7)
  {
    v8 = CHSLogChronoServices();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [(CHSWidgetExtensionProvider *)self succinctDescription];
      [(CHSWidgetExtensionProvider *)v9 widgetDescriptorForIdentifiable:v5, v14];
    }
  }

  v10 = [v4 kind];
  v11 = [v7 widgetDescriptorForKind:v10];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)controlDescriptorForControl:(id)a3
{
  v3 = [(CHSWidgetExtensionProvider *)self controlDescriptorForIdentifiable:a3];

  return v3;
}

- (id)controlDescriptorForIdentifiable:(id)a3
{
  v14[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 extensionIdentity];
  v6 = [(CHSWidgetExtensionProvider *)self _widgetExtensionSet];
  v7 = [v6 widgetExtensionForExtensionIdentity:v5];

  if (!v7)
  {
    v8 = CHSLogChronoServices();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [(CHSWidgetExtensionProvider *)self succinctDescription];
      [(CHSWidgetExtensionProvider *)v9 controlDescriptorForIdentifiable:v5, v14];
    }
  }

  v10 = [v4 kind];
  v11 = [v7 controlDescriptorForKind:v10];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)widgetExtensionContainerForContainerBundleIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CHSWidgetExtensionProvider *)self _widgetExtensionSet];
  v6 = [v5 widgetExtensionContainerForContainerBundleIdentifier:v4];

  return v6;
}

- (id)widgetExtensionContainerForExtensionBundleIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CHSWidgetExtensionProvider *)self _widgetExtensionSet];
  v6 = [v5 widgetExtensionContainerForExtensionBundleIdentifier:v4];

  return v6;
}

- (void)registerObserver:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __47__CHSWidgetExtensionProvider_registerObserver___block_invoke;
  v6[3] = &unk_1E7453000;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  __47__CHSWidgetExtensionProvider_registerObserver___block_invoke(v6);
  os_unfair_lock_unlock(&self->_lock);
}

uint64_t __47__CHSWidgetExtensionProvider_registerObserver___block_invoke(uint64_t result)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = *(result + 32);
  if ((*(v1 + 56) & 1) == 0)
  {
    v2 = result;
    [*(v1 + 72) addObject:*(result + 40)];
    v3 = CHSLogChronoServices();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = MEMORY[0x1E696AEC0];
      v6 = *(v2 + 32);
      v5 = *(v2 + 40);
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = [v4 stringWithFormat:@"<%@:%p>", v8, *(v2 + 40)];
      *buf = 134218242;
      v12 = v6;
      v13 = 2114;
      v14 = v9;
      _os_log_impl(&dword_195EB2000, v3, OS_LOG_TYPE_DEFAULT, "<CHSWidgetExtensionProvider:%p> Add observer: %{public}@.", buf, 0x16u);
    }

    result = [*(v2 + 32) _lock_loadContentInitiallySynchronouslyIfNecessary];
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)unregisterObserver:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __49__CHSWidgetExtensionProvider_unregisterObserver___block_invoke;
  v6[3] = &unk_1E7453000;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  __49__CHSWidgetExtensionProvider_unregisterObserver___block_invoke(v6);
  os_unfair_lock_unlock(&self->_lock);
}

uint64_t __49__CHSWidgetExtensionProvider_unregisterObserver___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = CHSLogChronoServices();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = MEMORY[0x1E696AEC0];
    v5 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = [v3 stringWithFormat:@"<%@:%p>", v7, *(a1 + 40)];
    *buf = 134218242;
    v12 = v5;
    v13 = 2114;
    v14 = v8;
    _os_log_impl(&dword_195EB2000, v2, OS_LOG_TYPE_DEFAULT, "<CHSWidgetExtensionProvider:%p> Remove observer: %{public}@.", buf, 0x16u);
  }

  result = [*(*(a1 + 32) + 72) removeObject:*(a1 + 40)];
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)invalidate
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __40__CHSWidgetExtensionProvider_invalidate__block_invoke;
  v3[3] = &unk_1E74530E8;
  v3[4] = self;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  __40__CHSWidgetExtensionProvider_invalidate__block_invoke(v3);
  os_unfair_lock_unlock(&self->_lock);
}

void __40__CHSWidgetExtensionProvider_invalidate__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((*(v2 + 56) & 1) == 0)
  {
    *(v2 + 56) = 1;
    [*(*(a1 + 32) + 48) invalidate];
    v4 = *(a1 + 32);
    v5 = *(v4 + 48);
    *(v4 + 48) = 0;
  }
}

- (id)succinctDescription
{
  v2 = [(CHSWidgetExtensionProvider *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x3032000000;
  v12[3] = __Block_byref_object_copy__0;
  v12[4] = __Block_byref_object_dispose__0;
  v13 = 0;
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x2020000000;
  v11[3] = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __56__CHSWidgetExtensionProvider_succinctDescriptionBuilder__block_invoke;
  v10[3] = &unk_1E7453450;
  v10[4] = self;
  v10[5] = v12;
  v10[6] = v11;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  __56__CHSWidgetExtensionProvider_succinctDescriptionBuilder__block_invoke(v10);
  os_unfair_lock_unlock(&self->_lock);
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __56__CHSWidgetExtensionProvider_succinctDescriptionBuilder__block_invoke_2;
  v6[3] = &unk_1E7453478;
  v4 = v3;
  v7 = v4;
  v8 = v12;
  v9 = v11;
  [v4 appendProem:self block:v6];

  _Block_object_dispose(v11, 8);
  _Block_object_dispose(v12, 8);

  return v4;
}

void __56__CHSWidgetExtensionProvider_succinctDescriptionBuilder__block_invoke(void *a1)
{
  v2 = [*(a1[4] + 64) copy];
  v3 = *(a1[5] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [*(a1[4] + 32) allExtensions];
  *(*(a1[6] + 8) + 24) = [v5 count];
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(CHSWidgetExtensionProvider *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = a3;
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x3032000000;
  v13[3] = __Block_byref_object_copy__0;
  v13[4] = __Block_byref_object_dispose__0;
  v14 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __68__CHSWidgetExtensionProvider_descriptionBuilderWithMultilinePrefix___block_invoke;
  v12[3] = &unk_1E74534A0;
  v12[4] = self;
  v12[5] = v13;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  __68__CHSWidgetExtensionProvider_descriptionBuilderWithMultilinePrefix___block_invoke(v12);
  os_unfair_lock_unlock(&self->_lock);
  v5 = [(CHSWidgetExtensionProvider *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __68__CHSWidgetExtensionProvider_descriptionBuilderWithMultilinePrefix___block_invoke_2;
  v9[3] = &unk_1E7453000;
  v6 = v5;
  v10 = v6;
  v11 = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:v4 block:v9];
  v7 = v6;

  _Block_object_dispose(v13, 8);

  return v7;
}

void __68__CHSWidgetExtensionProvider_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 64) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __68__CHSWidgetExtensionProvider_descriptionBuilderWithMultilinePrefix___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = [*(a1 + 40) _widgetExtensionSet];
  v2 = [v3 widgetExtensionContainers];
  [v1 appendArraySection:v2 withName:@"containers" skipIfEmpty:0];
}

- (void)widgetExtensionsDidChange:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __56__CHSWidgetExtensionProvider_widgetExtensionsDidChange___block_invoke;
  v6[3] = &unk_1E7453000;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  __56__CHSWidgetExtensionProvider_widgetExtensionsDidChange___block_invoke(v6);
  os_unfair_lock_unlock(&self->_lock);
}

- (void)_lock_widgetExtensionsDidChange:(id)a3 postNotification:(BOOL)a4 reason:(id)a5
{
  v6 = a4;
  v23 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = CHSLogChronoServices();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 134218498;
    v18 = self;
    v19 = 2048;
    v20 = [v8 count];
    v21 = 2114;
    v22 = v9;
    _os_log_impl(&dword_195EB2000, v10, OS_LOG_TYPE_DEFAULT, "<CHSWidgetExtensionProvider:%p> Widget extensions changed - %lu received for %{public}@.", &v17, 0x20u);
  }

  if (!v8)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DFD8]);
  }

  if (!self->_lock_invalidated)
  {
    v11 = [(CHSWidgetExtensionSet *)self->_lock_extensionSet allExtensions];
    v12 = [CHSWidgetExtensionProvider _computeIconVersionsByForExtensions:v11 withIconResolver:self->_iconResolver];
    if (![v8 isEqualToSet:v11] || !-[NSDictionary isEqualToDictionary:](v12, "isEqualToDictionary:", self->_lock_iconVersionByExtensionIdentity))
    {
      v13 = [CHSWidgetExtensionProvider _makeWidgetExtensionSetWithExtensions:v8 iconResolver:self->_iconResolver];
      lock_extensionSet = self->_lock_extensionSet;
      self->_lock_extensionSet = v13;

      if (v6)
      {
        [(CHSWidgetExtensionProvider *)self _lock_notifyObserversExtensionsDidChange];
      }
    }

    lock_iconVersionByExtensionIdentity = self->_lock_iconVersionByExtensionIdentity;
    self->_lock_iconVersionByExtensionIdentity = v12;
  }

  v16 = *MEMORY[0x1E69E9840];
}

+ (id)_makeWidgetExtensionSetWithExtensions:(id)a3 iconResolver:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [CHSWidgetExtensionSet alloc];
  v8 = +[CHSEquivalentBundleIdentifierResolver defaultResolver];
  v9 = [(CHSWidgetExtensionSet *)v7 initWithExtensions:v5 equivalentBundleIdentifierResolver:v8 iconResolver:v6];

  return v9;
}

+ (id)_computeIconVersionsByForExtensions:(id)a3 withIconResolver:(id)a4
{
  v4 = objc_opt_new();

  return v4;
}

- (void)_lock_notifyObserversExtensionsDidChange
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [(NSHashTable *)self->_lock_observers copy];
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
          v9[2] = __70__CHSWidgetExtensionProvider__lock_notifyObserversExtensionsDidChange__block_invoke;
          v9[3] = &unk_1E7453000;
          v9[4] = v7;
          v9[5] = self;
          dispatch_async(__calloutQueue_0, v9);
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

- (void)widgetDescriptorForIdentifiable:(uint64_t)a3 .cold.1(void *a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0(a1, a2, a3, 5.8382e-34);
  _os_log_error_impl(&dword_195EB2000, v5, OS_LOG_TYPE_ERROR, "[%{public}@] (Widget) Unable to find extension for extension identity: %{public}@.", v4, 0x16u);
}

- (void)controlDescriptorForIdentifiable:(uint64_t)a3 .cold.1(void *a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0(a1, a2, a3, 5.8382e-34);
  _os_log_error_impl(&dword_195EB2000, v5, OS_LOG_TYPE_ERROR, "[%{public}@] (Control) Unable to find extension for extension identity: %{public}@.", v4, 0x16u);
}

@end