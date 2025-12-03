@interface HMDCompositeSettingsOwnerToDatabaseAdapterRegistry
- (HMDCompositeSettingsOwnerToDatabaseAdapterRegistry)init;
- (id)databaseAdapterForUUID:(id)d;
- (void)createDatabaseAdapterIfNotExistForUUID:(id)d homeUUID:(id)iD accessory:(id)accessory workQueue:(id)queue zoneName:(id)name;
@end

@implementation HMDCompositeSettingsOwnerToDatabaseAdapterRegistry

- (void)createDatabaseAdapterIfNotExistForUUID:(id)d homeUUID:(id)iD accessory:(id)accessory workQueue:(id)queue zoneName:(id)name
{
  dCopy = d;
  iDCopy = iD;
  accessoryCopy = accessory;
  queueCopy = queue;
  nameCopy = name;
  os_unfair_lock_lock_with_options();
  settingOwnerToDatabaseAdapterTable = self->_settingOwnerToDatabaseAdapterTable;
  v17 = [dCopy copy];
  v18 = [(NSMapTable *)settingOwnerToDatabaseAdapterTable objectForKey:v17];

  if (!v18)
  {
    v19 = +[HMDCoreData sharedInstance];
    v20 = [v19 contextWithHomeUUID:iDCopy];

    v21 = [HMDCompositeSettingsHH2DatabaseAdapter alloc];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v23 = [(HMDCompositeSettingsHH2DatabaseAdapter *)v21 initWithAccessory:accessoryCopy homeID:iDCopy workingManagedObjectContext:v20 queue:queueCopy notificationCenter:defaultCenter];

    v25 = objc_getProperty(self, v24, 16, 1);
    [v25 setObject:v23 forKey:dCopy];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (id)databaseAdapterForUUID:(id)d
{
  dCopy = d;
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
  v8 = [dCopy copy];
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
    strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    settingOwnerToDatabaseAdapterTable = v2->_settingOwnerToDatabaseAdapterTable;
    v2->_settingOwnerToDatabaseAdapterTable = strongToStrongObjectsMapTable;

    v2->_lock._os_unfair_lock_opaque = 0;
  }

  return v2;
}

@end