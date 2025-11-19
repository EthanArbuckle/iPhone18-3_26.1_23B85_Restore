@interface HMDCompositeSettingsOwnerToDatabaseAdapterRegistry
- (HMDCompositeSettingsOwnerToDatabaseAdapterRegistry)init;
- (id)databaseAdapterForUUID:(id)a3;
- (void)createDatabaseAdapterIfNotExistForUUID:(id)a3 homeUUID:(id)a4 accessory:(id)a5 workQueue:(id)a6 zoneName:(id)a7;
@end

@implementation HMDCompositeSettingsOwnerToDatabaseAdapterRegistry

- (void)createDatabaseAdapterIfNotExistForUUID:(id)a3 homeUUID:(id)a4 accessory:(id)a5 workQueue:(id)a6 zoneName:(id)a7
{
  v26 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  os_unfair_lock_lock_with_options();
  settingOwnerToDatabaseAdapterTable = self->_settingOwnerToDatabaseAdapterTable;
  v17 = [v26 copy];
  v18 = [(NSMapTable *)settingOwnerToDatabaseAdapterTable objectForKey:v17];

  if (!v18)
  {
    v19 = +[HMDCoreData sharedInstance];
    v20 = [v19 contextWithHomeUUID:v12];

    v21 = [HMDCompositeSettingsHH2DatabaseAdapter alloc];
    v22 = [MEMORY[0x277CCAB98] defaultCenter];
    v23 = [(HMDCompositeSettingsHH2DatabaseAdapter *)v21 initWithAccessory:v13 homeID:v12 workingManagedObjectContext:v20 queue:v14 notificationCenter:v22];

    v25 = objc_getProperty(self, v24, 16, 1);
    [v25 setObject:v23 forKey:v26];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (id)databaseAdapterForUUID:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  if (self)
  {
    Property = objc_getProperty(self, v5, 16, 1);
  }

  else
  {
    Property = 0;
  }

  v7 = Property;
  v8 = [v4 copy];
  v9 = [v7 objectForKey:v8];

  os_unfair_lock_unlock(&self->_lock);

  return v9;
}

- (HMDCompositeSettingsOwnerToDatabaseAdapterRegistry)init
{
  v6.receiver = self;
  v6.super_class = HMDCompositeSettingsOwnerToDatabaseAdapterRegistry;
  v2 = [(HMDCompositeSettingsOwnerToDatabaseAdapterRegistry *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    settingOwnerToDatabaseAdapterTable = v2->_settingOwnerToDatabaseAdapterTable;
    v2->_settingOwnerToDatabaseAdapterTable = v3;

    v2->_lock._os_unfair_lock_opaque = 0;
  }

  return v2;
}

@end