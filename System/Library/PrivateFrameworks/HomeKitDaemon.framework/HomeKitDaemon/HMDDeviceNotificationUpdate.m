@interface HMDDeviceNotificationUpdate
- (HMDDeviceNotificationUpdate)initWithRequestID:(id)a3;
- (HMDDeviceNotificationUpdate)updateWithCharacteristicUpdates:(id)a3 notificationUpdateID:(id)a4 completion:(id)a5;
- (HMDDeviceNotificationUpdate)updateWithUpdatedActionSetResponses:(id)a3 notificationUpdateID:(id)a4 completion:(id)a5;
- (HMDDeviceNotificationUpdate)updateWithUpdatedMediaPropertiesByMediaResponses:(id)a3 notificationUpdateID:(id)a4 completion:(id)a5;
- (NSArray)actionSetResponses;
- (NSArray)characteristicUpdateTuples;
- (NSArray)completions;
- (NSArray)mediaProperties;
- (void)_updateWithNotificationUpdateID:(id)a3 completion:(id)a4;
@end

@implementation HMDDeviceNotificationUpdate

- (NSArray)completions
{
  os_unfair_lock_lock_with_options();
  notificationsCompletions = self->_notificationsCompletions;
  if (!notificationsCompletions)
  {
    notificationsCompletions = MEMORY[0x277CBEBF8];
  }

  v4 = notificationsCompletions;
  os_unfair_lock_unlock(&self->_lock);

  return v4;
}

- (NSArray)characteristicUpdateTuples
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSMapTable *)self->_characteristicUpdateTuples objectEnumerator];
  v4 = [v3 allObjects];
  v5 = v4;
  v6 = MEMORY[0x277CBEBF8];
  if (v4)
  {
    v6 = v4;
  }

  v7 = v6;

  os_unfair_lock_unlock(&self->_lock);

  return v7;
}

- (NSArray)actionSetResponses
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSMutableDictionary *)self->_updatedActionSetResponsesByActionSetUUID na_flatMap:&__block_literal_global_235];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

id __49__HMDDeviceNotificationUpdate_actionSetResponses__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v8[0] = a3;
  v3 = MEMORY[0x277CBEA60];
  v4 = a3;
  v5 = [v3 arrayWithObjects:v8 count:1];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (NSArray)mediaProperties
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSMutableDictionary *)self->_updatedMediaPropertiesByMediaProfile na_flatMap:&__block_literal_global_232];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (HMDDeviceNotificationUpdate)updateWithCharacteristicUpdates:(id)a3 notificationUpdateID:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  os_unfair_lock_lock_with_options();
  [(HMDDeviceNotificationUpdate *)self _updateWithNotificationUpdateID:v9 completion:v10];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __95__HMDDeviceNotificationUpdate_updateWithCharacteristicUpdates_notificationUpdateID_completion___block_invoke;
  v12[3] = &unk_2786710F0;
  v12[4] = self;
  [v8 na_each:v12];
  os_unfair_lock_unlock(&self->_lock);

  return result;
}

void __95__HMDDeviceNotificationUpdate_updateWithCharacteristicUpdates_notificationUpdateID_completion___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 characteristic];
  v5 = [*(*(a1 + 32) + 24) objectForKey:v4];

  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = HMFGetLogIdentifier();
      v10 = 138543618;
      v11 = v8;
      v12 = 2112;
      v13 = v4;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Overriding the existing changed characteristic: %@ to send notifications", &v10, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
  }

  [*(*(a1 + 32) + 24) setObject:v3 forKey:v4];

  v9 = *MEMORY[0x277D85DE8];
}

- (HMDDeviceNotificationUpdate)updateWithUpdatedActionSetResponses:(id)a3 notificationUpdateID:(id)a4 completion:(id)a5
{
  v26 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  os_unfair_lock_lock_with_options();
  v20 = v9;
  [(HMDDeviceNotificationUpdate *)self _updateWithNotificationUpdateID:v9 completion:v10];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = v8;
  v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v12)
  {
    v13 = *v22;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v22 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v21 + 1) + 8 * i);
        updatedActionSetResponsesByActionSetUUID = self->_updatedActionSetResponsesByActionSetUUID;
        v17 = [v15 actionSetUUID];
        [(NSMutableDictionary *)updatedActionSetResponsesByActionSetUUID setObject:v15 forKeyedSubscript:v17];
      }

      v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v12);
  }

  os_unfair_lock_unlock(&self->_lock);
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

- (HMDDeviceNotificationUpdate)updateWithUpdatedMediaPropertiesByMediaResponses:(id)a3 notificationUpdateID:(id)a4 completion:(id)a5
{
  v35 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  os_unfair_lock_lock_with_options();
  v28 = v9;
  [(HMDDeviceNotificationUpdate *)self _updateWithNotificationUpdateID:v9 completion:v10];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v8;
  v11 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v11)
  {
    v12 = *v31;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v31 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v30 + 1) + 8 * i);
        updatedMediaPropertiesByMediaProfile = self->_updatedMediaPropertiesByMediaProfile;
        v16 = [v14 request];
        v17 = [v16 mediaProfile];
        v18 = [v17 uniqueIdentifier];
        v19 = [(NSMutableDictionary *)updatedMediaPropertiesByMediaProfile objectForKeyedSubscript:v18];

        if (!v19)
        {
          v19 = [MEMORY[0x277CBEB38] dictionary];
        }

        v20 = [v14 request];
        v21 = [v20 property];
        [v19 setObject:v14 forKeyedSubscript:v21];

        v22 = self->_updatedMediaPropertiesByMediaProfile;
        v23 = [v14 request];
        v24 = [v23 mediaProfile];
        v25 = [v24 uniqueIdentifier];
        [(NSMutableDictionary *)v22 setObject:v19 forKeyedSubscript:v25];
      }

      v11 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v11);
  }

  os_unfair_lock_unlock(&self->_lock);
  v27 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_updateWithNotificationUpdateID:(id)a3 completion:(id)a4
{
  v10 = a3;
  v7 = a4;
  os_unfair_lock_assert_owner(&self->_lock);
  if (v10)
  {
    objc_storeStrong(&self->_notificationUpdateID, a3);
  }

  if (v7)
  {
    notificationsCompletions = self->_notificationsCompletions;
    v9 = _Block_copy(v7);
    [(NSMutableArray *)notificationsCompletions addObject:v9];
  }
}

- (HMDDeviceNotificationUpdate)initWithRequestID:(id)a3
{
  v5 = a3;
  v17.receiver = self;
  v17.super_class = HMDDeviceNotificationUpdate;
  v6 = [(HMDDeviceNotificationUpdate *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_requestID, a3);
    v7->_lock._os_unfair_lock_opaque = 0;
    v8 = [MEMORY[0x277CBEB18] array];
    notificationsCompletions = v7->_notificationsCompletions;
    v7->_notificationsCompletions = v8;

    v10 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    characteristicUpdateTuples = v7->_characteristicUpdateTuples;
    v7->_characteristicUpdateTuples = v10;

    v12 = [MEMORY[0x277CBEB38] dictionary];
    updatedMediaPropertiesByMediaProfile = v7->_updatedMediaPropertiesByMediaProfile;
    v7->_updatedMediaPropertiesByMediaProfile = v12;

    v14 = [MEMORY[0x277CBEB38] dictionary];
    updatedActionSetResponsesByActionSetUUID = v7->_updatedActionSetResponsesByActionSetUUID;
    v7->_updatedActionSetResponsesByActionSetUUID = v14;
  }

  return v7;
}

@end