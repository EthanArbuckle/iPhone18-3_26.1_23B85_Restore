@interface HMDCompositeSettingsOwnerToDatabaseAdapterRegistry
- (HMDCompositeSettingsOwnerToDatabaseAdapterRegistry)init;
- (id)databaseAdapterForUUID:(id)a3;
- (void)createDatabaseAdapterIfNotExistForUUID:(id)a3 homeUUID:(id)a4 accessory:(id)a5 workQueue:(id)a6 zoneName:(id)a7;
- (void)removeZoneWithZoneName:(id)a3 uuid:(id)a4 workQueue:(id)a5;
@end

@implementation HMDCompositeSettingsOwnerToDatabaseAdapterRegistry

- (void)removeZoneWithZoneName:(id)a3 uuid:(id)a4 workQueue:(id)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    v19 = 138543618;
    v20 = v14;
    v21 = 2112;
    v22 = v8;
    _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Asked to remove zone:%@", &v19, 0x16u);
  }

  objc_autoreleasePoolPop(v11);
  os_unfair_lock_lock_with_options();
  v15 = [(NSMapTable *)v12->_settingOwnerToZoneManagerTable objectForKey:v9];
  os_unfair_lock_unlock(&v12->_lock);
  if (!v15)
  {
    v16 = [HMDCompositeSettingsZoneManager alloc];
    v17 = +[HMDDatabase defaultDatabase];
    v15 = [(HMDCompositeSettingsZoneManager *)v16 initWithDatabase:v17 workQueue:v10 zoneName:v8 createZoneIfNotExists:0];
  }

  [(HMDCompositeSettingsZoneManager *)v15 remove];

  v18 = *MEMORY[0x277D85DE8];
}

- (void)createDatabaseAdapterIfNotExistForUUID:(id)a3 homeUUID:(id)a4 accessory:(id)a5 workQueue:(id)a6 zoneName:(id)a7
{
  v27 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  os_unfair_lock_lock_with_options();
  settingOwnerToDatabaseAdapterTable = self->_settingOwnerToDatabaseAdapterTable;
  v17 = [v27 copy];
  v18 = [(NSMapTable *)settingOwnerToDatabaseAdapterTable objectForKey:v17];

  v20 = objc_getProperty(self, v19, 24, 1);
  v21 = [v20 objectForKey:v12];

  if (!v21)
  {
    v22 = [HMDCompositeSettingsZoneManager alloc];
    v23 = +[HMDDatabase defaultDatabase];
    v21 = [(HMDCompositeSettingsZoneManager *)v22 initWithDatabase:v23 workQueue:v14 zoneName:v15 createZoneIfNotExists:1];

    [(NSMapTable *)self->_settingOwnerToZoneManagerTable setObject:v21 forKey:v12];
  }

  if (!v18)
  {
    v24 = [[HMDCompositeSettingsLegacyDatabaseAdapter alloc] initWithZoneManager:v21 modelClass:objc_opt_class()];
    v26 = objc_getProperty(self, v25, 16, 1);
    [v26 setObject:v24 forKey:v27];
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
  v8.receiver = self;
  v8.super_class = HMDCompositeSettingsOwnerToDatabaseAdapterRegistry;
  v2 = [(HMDCompositeSettingsOwnerToDatabaseAdapterRegistry *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    settingOwnerToDatabaseAdapterTable = v2->_settingOwnerToDatabaseAdapterTable;
    v2->_settingOwnerToDatabaseAdapterTable = v3;

    v2->_lock._os_unfair_lock_opaque = 0;
    v5 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    settingOwnerToZoneManagerTable = v2->_settingOwnerToZoneManagerTable;
    v2->_settingOwnerToZoneManagerTable = v5;
  }

  return v2;
}

@end