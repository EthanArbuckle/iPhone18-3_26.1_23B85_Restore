@interface HUAppleMusicAccountItemManager
- (BOOL)_showAppleMusicSettings;
- (BOOL)_showPrimaryUserSettings;
- (HUAppleMusicAccountItemManager)initWithMediaProfileContainer:(id)a3 delegate:(id)a4;
- (id)_buildItemModulesForHome:(id)a3;
- (id)_buildSectionsWithDisplayedItems:(id)a3;
- (void)setShouldDisableUpdates:(BOOL)a3;
@end

@implementation HUAppleMusicAccountItemManager

- (HUAppleMusicAccountItemManager)initWithMediaProfileContainer:(id)a3 delegate:(id)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = HUAppleMusicAccountItemManager;
  v8 = [(HFItemManager *)&v11 initWithDelegate:a4];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_mediaProfileContainer, a3);
  }

  return v9;
}

- (id)_buildItemModulesForHome:(id)a3
{
  location[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  if ([(HUAppleMusicAccountItemManager *)self _showAppleMusicSettings])
  {
    v6 = [HUAppleMusicAccountModule alloc];
    v7 = [(HUAppleMusicAccountItemManager *)self mediaProfileContainer];
    v8 = [(HUAppleMusicAccountModule *)v6 initWithMediaProfileContainer:v7 itemUpdater:self];
    [(HUAppleMusicAccountItemManager *)self setAppleMusicAccountModule:v8];

    objc_initWeak(location, self);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __59__HUAppleMusicAccountItemManager__buildItemModulesForHome___block_invoke;
    v19[3] = &unk_277DC46B8;
    objc_copyWeak(&v20, location);
    v9 = [(HUAppleMusicAccountItemManager *)self appleMusicAccountModule];
    [v9 setStateChangeObserver:v19];

    v10 = [(HUAppleMusicAccountItemManager *)self appleMusicAccountModule];
    [v5 addObject:v10];

    objc_destroyWeak(&v20);
    objc_destroyWeak(location);
  }

  else
  {
    v11 = HFLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v17 = [(HUAppleMusicAccountItemManager *)self mediaProfileContainer];
      LODWORD(location[0]) = 138412290;
      *(location + 4) = v17;
      _os_log_debug_impl(&dword_20CEB6000, v11, OS_LOG_TYPE_DEBUG, "Not showing AppleMusic Module for %@", location, 0xCu);
    }
  }

  if ([(HUAppleMusicAccountItemManager *)self _showPrimaryUserSettings])
  {
    v12 = [HUPrimaryUserSettingsItemModule alloc];
    v13 = [(HUAppleMusicAccountItemManager *)self mediaProfileContainer];
    v14 = [(HUPrimaryUserSettingsItemModule *)v12 initWithItemUpdater:self home:v4 mediaProfileContainer:v13];
    [(HUAppleMusicAccountItemManager *)self setPrimaryUserSettingsItemModule:v14];

    v15 = [(HUAppleMusicAccountItemManager *)self primaryUserSettingsItemModule];
    [v5 addObject:v15];
  }

  else
  {
    v15 = HFLogForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v18 = [(HUAppleMusicAccountItemManager *)self mediaProfileContainer];
      LODWORD(location[0]) = 138412290;
      *(location + 4) = v18;
      _os_log_debug_impl(&dword_20CEB6000, v15, OS_LOG_TYPE_DEBUG, "Not showing Primary User Module for %@", location, 0xCu);
    }
  }

  return v5;
}

void __59__HUAppleMusicAccountItemManager__buildItemModulesForHome___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _moduleStateDidChangeFrom:a2 to:a3];
}

- (id)_buildSectionsWithDisplayedItems:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v6 = [(HUAppleMusicAccountItemManager *)self primaryUserSettingsItemModule];

    if (v6)
    {
      v7 = [(HUAppleMusicAccountItemManager *)self primaryUserSettingsItemModule];
      v8 = [v7 buildSectionsWithDisplayedItems:v4];

      [v5 addObjectsFromArray:v8];
    }

    v9 = [(HUAppleMusicAccountItemManager *)self appleMusicAccountModule];
    v10 = [v9 buildSectionsWithDisplayedItems:v4];

    [v5 addObjectsFromArray:v10];
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  return v5;
}

- (void)setShouldDisableUpdates:(BOOL)a3
{
  if (self->_shouldDisableUpdates != a3)
  {
    self->_shouldDisableUpdates = a3;
    if (a3)
    {
      [(HFItemManager *)self disableExternalUpdatesWithReason:@"HUAppleMusicAccountItemManager_StateTransition"];
    }

    else
    {
      [(HFItemManager *)self endDisableExternalUpdatesWithReason:@"HUAppleMusicAccountItemManager_StateTransition"];
    }
  }
}

- (BOOL)_showPrimaryUserSettings
{
  v2 = [(HUAppleMusicAccountItemManager *)self mediaProfileContainer];
  v3 = [v2 hf_supportsPreferredMediaUser];

  return v3;
}

- (BOOL)_showAppleMusicSettings
{
  v2 = [(HUAppleMusicAccountItemManager *)self mediaProfileContainer];
  v3 = [v2 hf_backingAccessory];
  v4 = [v3 hf_isSiriEndpoint];

  return v4 ^ 1;
}

@end