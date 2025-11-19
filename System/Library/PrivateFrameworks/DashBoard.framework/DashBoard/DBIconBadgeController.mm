@interface DBIconBadgeController
+ (id)_alwaysAllowedBadgeSources;
- (BOOL)notificationsEnabledForIdentifier:(id)a3;
- (DBIconBadgeController)init;
- (void)_badge_queue_removeBadgeSettingsForIdentifiers:(id)a3;
- (void)_badge_queue_updateNotificationSourcesWithIdentifiers:(id)a3;
- (void)addObserver:(id)a3;
- (void)applicationController:(id)a3 addedApplications:(id)a4 updatedApplications:(id)a5 removedApplications:(id)a6;
- (void)removeObserver:(id)a3;
- (void)userNotificationSettingsCenter:(id)a3 didUpdateNotificationSourceIdentifiers:(id)a4;
@end

@implementation DBIconBadgeController

- (DBIconBadgeController)init
{
  v38 = *MEMORY[0x277D85DE8];
  v36.receiver = self;
  v36.super_class = DBIconBadgeController;
  v2 = [(DBIconBadgeController *)&v36 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CF89C0]) initWithProtocol:&unk_285AFC6C8];
    observers = v2->_observers;
    v2->_observers = v3;

    v2->_lock._os_unfair_lock_opaque = 0;
    v5 = objc_opt_new();
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v6 = +[DBIconBadgeController _alwaysAllowedBadgeSources];
    v7 = [v6 countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v33;
      v10 = MEMORY[0x277CBEC38];
      do
      {
        v11 = 0;
        do
        {
          if (*v33 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [v5 setObject:v10 forKey:*(*(&v32 + 1) + 8 * v11++)];
        }

        while (v8 != v11);
        v8 = [v6 countByEnumeratingWithState:&v32 objects:v37 count:16];
      }

      while (v8);
    }

    v12 = [v5 copy];
    lock_badgesAllowedByIdentifier = v2->_lock_badgesAllowedByIdentifier;
    v2->_lock_badgesAllowedByIdentifier = v12;

    v14 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v15 = dispatch_queue_create("com.apple.carplayapp.badgeSettingsUpdateQueue", v14);
    badgeSettingsUpdateQueue = v2->_badgeSettingsUpdateQueue;
    v2->_badgeSettingsUpdateQueue = v15;

    v17 = +[DBNotificationSettingsCenter defaultCenter];
    [v17 addObserver:v2];

    v18 = +[DBApplicationController sharedInstance];
    v19 = [v18 allApplications];

    v20 = [v19 bs_map:&__block_literal_global_33];
    v21 = v2->_badgeSettingsUpdateQueue;
    v26 = MEMORY[0x277D85DD0];
    v27 = 3221225472;
    v28 = __29__DBIconBadgeController_init__block_invoke_2;
    v29 = &unk_278F014B8;
    v22 = v2;
    v30 = v22;
    v31 = v20;
    v23 = v20;
    dispatch_async(v21, &v26);
    v24 = [DBApplicationController sharedInstance:v26];
    [v24 addObserver:v22];
  }

  return v2;
}

void __29__DBIconBadgeController_init__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CBEB98] setWithArray:*(a1 + 40)];
  [v1 _badge_queue_updateNotificationSourcesWithIdentifiers:v2];
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  v5 = [(DBIconBadgeController *)self observers];
  [v5 addObserver:v4];
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  v5 = [(DBIconBadgeController *)self observers];
  [v5 removeObserver:v4];
}

- (BOOL)notificationsEnabledForIdentifier:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__5;
  v16 = __Block_byref_object_dispose__5;
  v5 = [(DBIconBadgeController *)self lock_badgesAllowedByIdentifier];
  v17 = [v5 copy];

  os_unfair_lock_unlock(&self->_lock);
  v6 = v13[5];
  if (!v6)
  {
    v7 = [(DBIconBadgeController *)self badgeSettingsUpdateQueue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __59__DBIconBadgeController_notificationsEnabledForIdentifier___block_invoke;
    v11[3] = &unk_278F016B8;
    v11[4] = self;
    v11[5] = &v12;
    dispatch_sync(v7, v11);

    v6 = v13[5];
  }

  v8 = [v6 objectForKey:v4];
  v9 = [v8 BOOLValue];

  _Block_object_dispose(&v12, 8);
  return v9;
}

void __59__DBIconBadgeController_notificationsEnabledForIdentifier___block_invoke(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 8));
  v2 = [*(a1 + 32) lock_badgesAllowedByIdentifier];
  v3 = [v2 copy];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = (*(a1 + 32) + 8);

  os_unfair_lock_unlock(v6);
}

+ (id)_alwaysAllowedBadgeSources
{
  if (_alwaysAllowedBadgeSources_onceToken != -1)
  {
    +[DBIconBadgeController _alwaysAllowedBadgeSources];
  }

  v3 = _alwaysAllowedBadgeSources___alwaysBadgeIdentifiers;

  return v3;
}

void __51__DBIconBadgeController__alwaysAllowedBadgeSources__block_invoke()
{
  v2[1] = *MEMORY[0x277D85DE8];
  v2[0] = @"com.apple.AutoSettings";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v2 count:1];
  v1 = _alwaysAllowedBadgeSources___alwaysBadgeIdentifiers;
  _alwaysAllowedBadgeSources___alwaysBadgeIdentifiers = v0;
}

- (void)_badge_queue_updateNotificationSourcesWithIdentifiers:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  badgeSettingsUpdateQueue = self->_badgeSettingsUpdateQueue;
  v5 = a3;
  dispatch_assert_queue_V2(badgeSettingsUpdateQueue);
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v7 = [MEMORY[0x277D77F68] currentNotificationSettingsCenter];
  v8 = [v7 notificationSourcesWithIdentifiers:v5];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __79__DBIconBadgeController__badge_queue_updateNotificationSourcesWithIdentifiers___block_invoke;
  v14[3] = &unk_278F03B68;
  v9 = v6;
  v15 = v9;
  [v8 enumerateObjectsUsingBlock:v14];
  v10 = DBLogForCategory(0x10uLL);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v17 = v9;
    _os_log_impl(&dword_248146000, v10, OS_LOG_TYPE_DEFAULT, "Updated user notification settings %{public}@", buf, 0xCu);
  }

  os_unfair_lock_lock(&self->_lock);
  v11 = [(NSDictionary *)self->_lock_badgesAllowedByIdentifier mutableCopy];
  [v11 addEntriesFromDictionary:v9];
  v12 = [v11 copy];
  lock_badgesAllowedByIdentifier = self->_lock_badgesAllowedByIdentifier;
  self->_lock_badgesAllowedByIdentifier = v12;

  os_unfair_lock_unlock(&self->_lock);
}

void __79__DBIconBadgeController__badge_queue_updateNotificationSourcesWithIdentifiers___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 sourceSettings];
  v9 = [v4 notificationSettings];

  v5 = [v9 badgeSetting] == 2;
  v6 = *(a1 + 32);
  v7 = [MEMORY[0x277CCABB0] numberWithBool:v5];
  v8 = [v3 sourceIdentifier];

  [v6 setObject:v7 forKey:v8];
}

- (void)_badge_queue_removeBadgeSettingsForIdentifiers:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSDictionary *)self->_lock_badgesAllowedByIdentifier mutableCopy];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [v5 removeObjectForKey:{*(*(&v13 + 1) + 8 * v10++), v13}];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v11 = [v5 copy];
  lock_badgesAllowedByIdentifier = self->_lock_badgesAllowedByIdentifier;
  self->_lock_badgesAllowedByIdentifier = v11;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)applicationController:(id)a3 addedApplications:(id)a4 updatedApplications:(id)a5 removedApplications:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = [(DBIconBadgeController *)self badgeSettingsUpdateQueue];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __105__DBIconBadgeController_applicationController_addedApplications_updatedApplications_removedApplications___block_invoke;
  v16[3] = &unk_278F02180;
  v17 = v11;
  v18 = self;
  v19 = v9;
  v20 = v10;
  v13 = v10;
  v14 = v9;
  v15 = v11;
  dispatch_async(v12, v16);
}

void __105__DBIconBadgeController_applicationController_addedApplications_updatedApplications_removedApplications___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) bs_map:&__block_literal_global_78];
  [*(a1 + 40) _badge_queue_removeBadgeSettingsForIdentifiers:v2];
  v3 = [*(a1 + 48) setByAddingObjectsFromSet:*(a1 + 56)];
  v4 = [v3 bs_map:&__block_literal_global_80_0];

  v5 = DBLogForCategory(0x10uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = v4;
    _os_log_impl(&dword_248146000, v5, OS_LOG_TYPE_DEFAULT, "Updating user notification settings for %{public}@", &v7, 0xCu);
  }

  [*(a1 + 40) _badge_queue_updateNotificationSourcesWithIdentifiers:v4];
  v6 = [*(a1 + 40) observers];
  [v6 iconBadgeController:*(a1 + 40) didUpdateForIdentifiers:v4];
}

- (void)userNotificationSettingsCenter:(id)a3 didUpdateNotificationSourceIdentifiers:(id)a4
{
  v5 = a4;
  v6 = [(DBIconBadgeController *)self badgeSettingsUpdateQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __95__DBIconBadgeController_userNotificationSettingsCenter_didUpdateNotificationSourceIdentifiers___block_invoke;
  v8[3] = &unk_278F014B8;
  v9 = v5;
  v10 = self;
  v7 = v5;
  dispatch_async(v6, v8);
}

void __95__DBIconBadgeController_userNotificationSettingsCenter_didUpdateNotificationSourceIdentifiers___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = +[DBApplicationController sharedInstance];
  v3 = *(a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __95__DBIconBadgeController_userNotificationSettingsCenter_didUpdateNotificationSourceIdentifiers___block_invoke_2;
  v8[3] = &unk_278F03B90;
  v4 = v2;
  v9 = v4;
  v5 = [v3 bs_filter:v8];
  if ([v5 count])
  {
    v6 = DBLogForCategory(0x10uLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v11 = v5;
      _os_log_impl(&dword_248146000, v6, OS_LOG_TYPE_DEFAULT, "User Notification settings updated for: %{public}@", buf, 0xCu);
    }

    [*(a1 + 40) _badge_queue_updateNotificationSourcesWithIdentifiers:v5];
    v7 = [*(a1 + 40) observers];
    [v7 iconBadgeController:*(a1 + 40) didUpdateForIdentifiers:v5];
  }
}

BOOL __95__DBIconBadgeController_userNotificationSettingsCenter_didUpdateNotificationSourceIdentifiers___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) applicationWithBundleIdentifier:a2];
  v3 = v2 != 0;

  return v3;
}

@end