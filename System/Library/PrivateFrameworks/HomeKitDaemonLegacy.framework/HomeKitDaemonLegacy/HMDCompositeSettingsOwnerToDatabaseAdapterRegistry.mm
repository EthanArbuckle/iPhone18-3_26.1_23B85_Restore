@interface HMDCompositeSettingsOwnerToDatabaseAdapterRegistry
- (HMDCompositeSettingsOwnerToDatabaseAdapterRegistry)init;
- (id)databaseAdapterForUUID:(id)d;
- (void)createDatabaseAdapterIfNotExistForUUID:(id)d homeUUID:(id)iD accessory:(id)accessory workQueue:(id)queue zoneName:(id)name;
- (void)removeZoneWithZoneName:(id)name uuid:(id)uuid workQueue:(id)queue;
@end

@implementation HMDCompositeSettingsOwnerToDatabaseAdapterRegistry

- (void)removeZoneWithZoneName:(id)name uuid:(id)uuid workQueue:(id)queue
{
  v23 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  uuidCopy = uuid;
  queueCopy = queue;
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    v19 = 138543618;
    v20 = v14;
    v21 = 2112;
    v22 = nameCopy;
    _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Asked to remove zone:%@", &v19, 0x16u);
  }

  objc_autoreleasePoolPop(v11);
  os_unfair_lock_lock_with_options();
  v15 = [(NSMapTable *)selfCopy->_settingOwnerToZoneManagerTable objectForKey:uuidCopy];
  os_unfair_lock_unlock(&selfCopy->_lock);
  if (!v15)
  {
    v16 = [HMDCompositeSettingsZoneManager alloc];
    v17 = +[HMDDatabase defaultDatabase];
    v15 = [(HMDCompositeSettingsZoneManager *)v16 initWithDatabase:v17 workQueue:queueCopy zoneName:nameCopy createZoneIfNotExists:0];
  }

  [(HMDCompositeSettingsZoneManager *)v15 remove];

  v18 = *MEMORY[0x277D85DE8];
}

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

  v20 = objc_getProperty(self, v19, 24, 1);
  v21 = [v20 objectForKey:iDCopy];

  if (!v21)
  {
    v22 = [HMDCompositeSettingsZoneManager alloc];
    v23 = +[HMDDatabase defaultDatabase];
    v21 = [(HMDCompositeSettingsZoneManager *)v22 initWithDatabase:v23 workQueue:queueCopy zoneName:nameCopy createZoneIfNotExists:1];

    [(NSMapTable *)self->_settingOwnerToZoneManagerTable setObject:v21 forKey:iDCopy];
  }

  if (!v18)
  {
    v24 = [[HMDCompositeSettingsLegacyDatabaseAdapter alloc] initWithZoneManager:v21 modelClass:objc_opt_class()];
    v26 = objc_getProperty(self, v25, 16, 1);
    [v26 setObject:v24 forKey:dCopy];
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
  v8.receiver = self;
  v8.super_class = HMDCompositeSettingsOwnerToDatabaseAdapterRegistry;
  v2 = [(HMDCompositeSettingsOwnerToDatabaseAdapterRegistry *)&v8 init];
  if (v2)
  {
    strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    settingOwnerToDatabaseAdapterTable = v2->_settingOwnerToDatabaseAdapterTable;
    v2->_settingOwnerToDatabaseAdapterTable = strongToStrongObjectsMapTable;

    v2->_lock._os_unfair_lock_opaque = 0;
    strongToStrongObjectsMapTable2 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    settingOwnerToZoneManagerTable = v2->_settingOwnerToZoneManagerTable;
    v2->_settingOwnerToZoneManagerTable = strongToStrongObjectsMapTable2;
  }

  return v2;
}

@end