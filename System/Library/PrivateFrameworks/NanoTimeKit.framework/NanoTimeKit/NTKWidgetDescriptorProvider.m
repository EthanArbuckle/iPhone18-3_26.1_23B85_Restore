@interface NTKWidgetDescriptorProvider
+ (NTKWidgetDescriptorProvider)sharedInstance;
- (NSDictionary)descriptorsByExtensionIdentifier;
- (NSSet)descriptors;
- (NTKWidgetDescriptorProvider)init;
- (id)collatedDescriptors;
- (void)_queue_widgetDescriptorsChanged;
- (void)descriptorsDidChangeForDescriptorProvider:(id)a3;
- (void)registerObserver:(id)a3;
- (void)reloadDescriptorsForContainerIdentifier:(id)a3 completion:(id)a4;
- (void)unregisterObserver:(id)a3;
@end

@implementation NTKWidgetDescriptorProvider

+ (NTKWidgetDescriptorProvider)sharedInstance
{
  if (sharedInstance_onceToken_11 != -1)
  {
    +[NTKWidgetDescriptorProvider sharedInstance];
  }

  v3 = sharedInstance_instance_0;

  return v3;
}

void __45__NTKWidgetDescriptorProvider_sharedInstance__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedInstance_instance_0;
  sharedInstance_instance_0 = v0;
}

- (NTKWidgetDescriptorProvider)init
{
  v13.receiver = self;
  v13.super_class = NTKWidgetDescriptorProvider;
  v2 = [(NTKWidgetDescriptorProvider *)&v13 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    lock_observers = v3->_lock_observers;
    v3->_lock_observers = v4;

    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.NanoTimeKit.NTKWidgetDescriptorProvider", v6);
    queue = v3->_queue;
    v3->_queue = v7;

    v9 = v3->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __35__NTKWidgetDescriptorProvider_init__block_invoke;
    block[3] = &unk_27877DB10;
    v12 = v3;
    dispatch_async(v9, block);
  }

  return v3;
}

uint64_t __35__NTKWidgetDescriptorProvider_init__block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x277CFA380]) initIncludingIntents:1 relevanceBacked:_os_feature_enabled_impl()];
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;

  [*(*(a1 + 32) + 16) addObserver:?];
  v5 = *(a1 + 32);

  return [v5 _queue_widgetDescriptorsChanged];
}

- (void)registerObserver:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_lock_observers addObject:v4];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)unregisterObserver:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_lock_observers removeObject:v4];

  os_unfair_lock_unlock(&self->_lock);
}

- (NSSet)descriptors
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSSet *)self->_lock_widgetDescriptors copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSDictionary)descriptorsByExtensionIdentifier
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSDictionary *)self->_lock_descriptorsByExtensionIdentifier copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id)collatedDescriptors
{
  v3 = objc_opt_new();
  os_unfair_lock_lock(&self->_lock);
  lock_descriptorsByExtensionIdentifier = self->_lock_descriptorsByExtensionIdentifier;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __50__NTKWidgetDescriptorProvider_collatedDescriptors__block_invoke;
  v8[3] = &unk_278781D20;
  v9 = v3;
  v5 = v3;
  [(NSDictionary *)lock_descriptorsByExtensionIdentifier enumerateKeysAndObjectsUsingBlock:v8];
  os_unfair_lock_unlock(&self->_lock);
  v6 = [v5 copy];

  return v6;
}

- (void)reloadDescriptorsForContainerIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__NTKWidgetDescriptorProvider_reloadDescriptorsForContainerIdentifier_completion___block_invoke;
  block[3] = &unk_27877DC88;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

- (void)descriptorsDidChangeForDescriptorProvider:(id)a3
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__NTKWidgetDescriptorProvider_descriptorsDidChangeForDescriptorProvider___block_invoke;
  block[3] = &unk_27877DB10;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_queue_widgetDescriptorsChanged
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = [(CHSWidgetDescriptorProvider *)self->_widgetDescriptorProvider descriptors];
  v4 = [(CHSWidgetDescriptorProvider *)self->_widgetDescriptorProvider descriptorsByExtensionIdentifier];
  os_unfair_lock_lock(&self->_lock);
  lock_widgetDescriptors = self->_lock_widgetDescriptors;
  self->_lock_widgetDescriptors = v3;
  v6 = v3;

  lock_descriptorsByExtensionIdentifier = self->_lock_descriptorsByExtensionIdentifier;
  self->_lock_descriptorsByExtensionIdentifier = v4;
  v8 = v4;

  self->_lock_firstLoadCompleted = 1;
  v9 = [(NSHashTable *)self->_lock_observers copy];
  v10 = [v9 allObjects];

  os_unfair_lock_unlock(&self->_lock);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __62__NTKWidgetDescriptorProvider__queue_widgetDescriptorsChanged__block_invoke;
  v11[3] = &unk_278781D48;
  v11[4] = self;
  [v10 enumerateObjectsUsingBlock:v11];
}

@end