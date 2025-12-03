@interface NTKComplicationDataSourceCache
+ (NTKComplicationDataSourceCache)sharedInstance;
- (Class)_dataSourceClassForComplicationType:(unint64_t)type family:(int64_t)family forDevice:(id)device;
- (Class)dataSourceClassForComplicationType:(unint64_t)type family:(int64_t)family forDevice:(id)device;
- (NTKComplicationDataSourceCache)init;
- (void)_invalidateCache;
- (void)dealloc;
@end

@implementation NTKComplicationDataSourceCache

+ (NTKComplicationDataSourceCache)sharedInstance
{
  if (sharedInstance_onceToken_16 != -1)
  {
    +[NTKComplicationDataSourceCache sharedInstance];
  }

  v3 = sharedInstance_instance_1;

  return v3;
}

void __48__NTKComplicationDataSourceCache_sharedInstance__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedInstance_instance_1;
  sharedInstance_instance_1 = v0;
}

- (NTKComplicationDataSourceCache)init
{
  v13.receiver = self;
  v13.super_class = NTKComplicationDataSourceCache;
  v2 = [(NTKComplicationDataSourceCache *)&v13 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = objc_opt_new();
    lock_cache = v3->_lock_cache;
    v3->_lock_cache = v4;

    objc_initWeak(&location, v3);
    pairedDeviceDidChangeCapabilities = [MEMORY[0x277D37B40] pairedDeviceDidChangeCapabilities];
    v7 = MEMORY[0x277D85CD0];
    v8 = MEMORY[0x277D85CD0];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __38__NTKComplicationDataSourceCache_init__block_invoke;
    v10[3] = &unk_27877E868;
    objc_copyWeak(&v11, &location);
    notify_register_dispatch(pairedDeviceDidChangeCapabilities, &v3->_capabilitiesChangedNotificationToken, v7, v10);

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  return v3;
}

void __38__NTKComplicationDataSourceCache_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _invalidateCache];
}

- (void)dealloc
{
  notify_cancel(self->_capabilitiesChangedNotificationToken);
  v3.receiver = self;
  v3.super_class = NTKComplicationDataSourceCache;
  [(NTKComplicationDataSourceCache *)&v3 dealloc];
}

- (Class)dataSourceClassForComplicationType:(unint64_t)type family:(int64_t)family forDevice:(id)device
{
  deviceCopy = device;
  v9 = objc_opt_new();
  pairingID = [deviceCopy pairingID];
  [v9 setPairingID:pairingID];

  [v9 setComplicationType:type];
  [v9 setComplicationFamily:family];
  os_unfair_lock_lock(&self->_lock);
  v11 = [(NSMutableDictionary *)self->_lock_cache objectForKeyedSubscript:v9];
  os_unfair_lock_unlock(&self->_lock);
  if (v11)
  {
    null = [MEMORY[0x277CBEB68] null];
    v13 = [v11 isEqual:null];

    v14 = v11;
    if (v13)
    {
      v15 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v14 = [(NTKComplicationDataSourceCache *)self _dataSourceClassForComplicationType:type family:family forDevice:deviceCopy];
    os_unfair_lock_lock(&self->_lock);
    if (v14)
    {
      [(NSMutableDictionary *)self->_lock_cache setObject:v14 forKeyedSubscript:v9];
    }

    else
    {
      null2 = [MEMORY[0x277CBEB68] null];
      [(NSMutableDictionary *)self->_lock_cache setObject:null2 forKeyedSubscript:v9];
    }

    os_unfair_lock_unlock(&self->_lock);
  }

  v15 = v14;
LABEL_9:

  return v15;
}

- (void)_invalidateCache
{
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableDictionary *)self->_lock_cache removeAllObjects];

  os_unfair_lock_unlock(&self->_lock);
}

- (Class)_dataSourceClassForComplicationType:(unint64_t)type family:(int64_t)family forDevice:(id)device
{
  v26 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  if (_dataSourceClassForComplicationType_family_forDevice__onceToken != -1)
  {
    [NTKComplicationDataSourceCache _dataSourceClassForComplicationType:family:forDevice:];
  }

  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v8 = +[NTKBundleComplicationManager sharedManager];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __87__NTKComplicationDataSourceCache__dataSourceClassForComplicationType_family_forDevice___block_invoke_2;
  v20[3] = &unk_2787844D0;
  v20[4] = &v21;
  v20[5] = type;
  [v8 enumerateBundlesForComplicationFamily:family device:deviceCopy withBlock:v20];

  if (v22[3])
  {
    v9 = 0;
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v10 = _dataSourceClassForComplicationType_family_forDevice____dataSourceClasses;
    v11 = [v10 countByEnumeratingWithState:&v16 objects:v25 count:16];
    if (v11)
    {
      v12 = *v17;
LABEL_7:
      v13 = 0;
      while (1)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v16 + 1) + 8 * v13);
        if ([v14 acceptsComplicationType:type withFamily:family forDevice:{deviceCopy, v16}])
        {
          break;
        }

        if (v11 == ++v13)
        {
          v11 = [v10 countByEnumeratingWithState:&v16 objects:v25 count:16];
          if (v11)
          {
            goto LABEL_7;
          }

          goto LABEL_13;
        }
      }
    }

    else
    {
LABEL_13:
      v14 = 0;
    }

    v9 = v14;
  }

  _Block_object_dispose(&v21, 8);

  return v9;
}

void __87__NTKComplicationDataSourceCache__dataSourceClassForComplicationType_family_forDevice___block_invoke()
{
  v2[10] = *MEMORY[0x277D85DE8];
  v2[0] = objc_opt_class();
  v2[1] = objc_opt_class();
  v2[2] = objc_opt_class();
  v2[3] = objc_opt_class();
  v2[4] = objc_opt_class();
  v2[5] = objc_opt_class();
  v2[6] = objc_opt_class();
  v2[7] = objc_opt_class();
  v2[8] = objc_opt_class();
  v2[9] = objc_opt_class();
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v2 count:10];
  v1 = _dataSourceClassForComplicationType_family_forDevice____dataSourceClasses;
  _dataSourceClassForComplicationType_family_forDevice____dataSourceClasses = v0;
}

void __87__NTKComplicationDataSourceCache__dataSourceClassForComplicationType_family_forDevice___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4, _BYTE *a5)
{
  v12 = a2;
  v9 = a3;
  v10 = a4;
  v11 = v10;
  if (v10 && [v10 integerValue] == *(a1 + 40))
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a5 = 1;
  }
}

@end