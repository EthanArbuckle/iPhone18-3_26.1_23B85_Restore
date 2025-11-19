@interface NTKCompanionBundleComplicationSyncCoordinator
+ (NTKCompanionBundleComplicationSyncCoordinator)sharedInstance;
- (NTKCompanionBundleComplicationSyncCoordinator)init;
- (id)descriptorsForBundleIdentifier:(id)a3;
- (void)_lock_updateLoaded;
- (void)activeDeviceChanged;
- (void)complicationCollectionDidLoad:(id)a3;
- (void)complicationCollectionDidReload:(id)a3;
- (void)dealloc;
@end

@implementation NTKCompanionBundleComplicationSyncCoordinator

+ (NTKCompanionBundleComplicationSyncCoordinator)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__NTKCompanionBundleComplicationSyncCoordinator_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_onceToken_21 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_21, block);
  }

  v2 = sharedInstance_instance_2;

  return v2;
}

void __63__NTKCompanionBundleComplicationSyncCoordinator_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedInstance_instance_2;
  sharedInstance_instance_2 = v1;
}

- (NTKCompanionBundleComplicationSyncCoordinator)init
{
  v6.receiver = self;
  v6.super_class = NTKCompanionBundleComplicationSyncCoordinator;
  v2 = [(NTKCompanionBundleComplicationSyncCoordinator *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = [MEMORY[0x277CCAB98] defaultCenter];
    [v4 addObserver:v3 selector:sel_activeDeviceChanged name:*MEMORY[0x277CBB640] object:0];

    [(NTKCompanionBundleComplicationSyncCoordinator *)v3 activeDeviceChanged];
  }

  return v3;
}

- (void)activeDeviceChanged
{
  os_unfair_lock_lock(&self->_lock);
  complicationCollection = self->_complicationCollection;
  if (complicationCollection)
  {
    [(NTKComplicationCollection *)complicationCollection removeObserver:self];
  }

  v4 = [MEMORY[0x277CBBAE8] currentDevice];
  v5 = [NTKCompanionComplicationCollectionManager sharedBundleComplicationCollectionForDevice:v4];
  v6 = self->_complicationCollection;
  self->_complicationCollection = v5;

  [(NTKComplicationCollection *)self->_complicationCollection addObserver:self];
  self->_loaded = 0;
  [(NTKCompanionBundleComplicationSyncCoordinator *)self _lock_updateLoaded];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_lock_updateLoaded
{
  loaded = self->_loaded;
  v4 = [(NTKComplicationCollection *)self->_complicationCollection hasLoaded];
  self->_loaded = v4;
  if (!loaded && v4)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __67__NTKCompanionBundleComplicationSyncCoordinator__lock_updateLoaded__block_invoke;
    block[3] = &unk_27877DB10;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x277CBB640] object:0];

  v4.receiver = self;
  v4.super_class = NTKCompanionBundleComplicationSyncCoordinator;
  [(NTKCompanionBundleComplicationSyncCoordinator *)&v4 dealloc];
}

- (id)descriptorsForBundleIdentifier:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NTKComplicationCollection *)self->_complicationCollection complicationDescriptorsForClientIdentifier:v4];

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (void)complicationCollectionDidLoad:(id)a3
{
  os_unfair_lock_lock(&self->_lock);
  [(NTKCompanionBundleComplicationSyncCoordinator *)self _lock_updateLoaded];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)complicationCollectionDidReload:(id)a3
{
  os_unfair_lock_lock(&self->_lock);
  [(NTKCompanionBundleComplicationSyncCoordinator *)self _lock_updateLoaded];

  os_unfair_lock_unlock(&self->_lock);
}

void __67__NTKCompanionBundleComplicationSyncCoordinator__lock_updateLoaded__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"NTKCompanionBundleComplicationManagerDidLoadNotification" object:*(a1 + 32)];
}

@end