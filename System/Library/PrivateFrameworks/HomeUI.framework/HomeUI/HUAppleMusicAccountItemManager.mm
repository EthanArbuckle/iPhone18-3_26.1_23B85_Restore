@interface HUAppleMusicAccountItemManager
- (BOOL)_showAppleMusicSettings;
- (BOOL)_showPrimaryUserSettings;
- (HUAppleMusicAccountItemManager)initWithMediaProfileContainer:(id)container delegate:(id)delegate;
- (id)_buildItemModulesForHome:(id)home;
- (id)_buildSectionsWithDisplayedItems:(id)items;
- (void)setShouldDisableUpdates:(BOOL)updates;
@end

@implementation HUAppleMusicAccountItemManager

- (HUAppleMusicAccountItemManager)initWithMediaProfileContainer:(id)container delegate:(id)delegate
{
  containerCopy = container;
  v11.receiver = self;
  v11.super_class = HUAppleMusicAccountItemManager;
  v8 = [(HFItemManager *)&v11 initWithDelegate:delegate];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_mediaProfileContainer, container);
  }

  return v9;
}

- (id)_buildItemModulesForHome:(id)home
{
  location[3] = *MEMORY[0x277D85DE8];
  homeCopy = home;
  v5 = objc_opt_new();
  if ([(HUAppleMusicAccountItemManager *)self _showAppleMusicSettings])
  {
    v6 = [HUAppleMusicAccountModule alloc];
    mediaProfileContainer = [(HUAppleMusicAccountItemManager *)self mediaProfileContainer];
    v8 = [(HUAppleMusicAccountModule *)v6 initWithMediaProfileContainer:mediaProfileContainer itemUpdater:self];
    [(HUAppleMusicAccountItemManager *)self setAppleMusicAccountModule:v8];

    objc_initWeak(location, self);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __59__HUAppleMusicAccountItemManager__buildItemModulesForHome___block_invoke;
    v19[3] = &unk_277DC46B8;
    objc_copyWeak(&v20, location);
    appleMusicAccountModule = [(HUAppleMusicAccountItemManager *)self appleMusicAccountModule];
    [appleMusicAccountModule setStateChangeObserver:v19];

    appleMusicAccountModule2 = [(HUAppleMusicAccountItemManager *)self appleMusicAccountModule];
    [v5 addObject:appleMusicAccountModule2];

    objc_destroyWeak(&v20);
    objc_destroyWeak(location);
  }

  else
  {
    v11 = HFLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      mediaProfileContainer2 = [(HUAppleMusicAccountItemManager *)self mediaProfileContainer];
      LODWORD(location[0]) = 138412290;
      *(location + 4) = mediaProfileContainer2;
      _os_log_debug_impl(&dword_20CEB6000, v11, OS_LOG_TYPE_DEBUG, "Not showing AppleMusic Module for %@", location, 0xCu);
    }
  }

  if ([(HUAppleMusicAccountItemManager *)self _showPrimaryUserSettings])
  {
    v12 = [HUPrimaryUserSettingsItemModule alloc];
    mediaProfileContainer3 = [(HUAppleMusicAccountItemManager *)self mediaProfileContainer];
    v14 = [(HUPrimaryUserSettingsItemModule *)v12 initWithItemUpdater:self home:homeCopy mediaProfileContainer:mediaProfileContainer3];
    [(HUAppleMusicAccountItemManager *)self setPrimaryUserSettingsItemModule:v14];

    primaryUserSettingsItemModule = [(HUAppleMusicAccountItemManager *)self primaryUserSettingsItemModule];
    [v5 addObject:primaryUserSettingsItemModule];
  }

  else
  {
    primaryUserSettingsItemModule = HFLogForCategory();
    if (os_log_type_enabled(primaryUserSettingsItemModule, OS_LOG_TYPE_DEBUG))
    {
      mediaProfileContainer4 = [(HUAppleMusicAccountItemManager *)self mediaProfileContainer];
      LODWORD(location[0]) = 138412290;
      *(location + 4) = mediaProfileContainer4;
      _os_log_debug_impl(&dword_20CEB6000, primaryUserSettingsItemModule, OS_LOG_TYPE_DEBUG, "Not showing Primary User Module for %@", location, 0xCu);
    }
  }

  return v5;
}

void __59__HUAppleMusicAccountItemManager__buildItemModulesForHome___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _moduleStateDidChangeFrom:a2 to:a3];
}

- (id)_buildSectionsWithDisplayedItems:(id)items
{
  itemsCopy = items;
  if ([itemsCopy count])
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    primaryUserSettingsItemModule = [(HUAppleMusicAccountItemManager *)self primaryUserSettingsItemModule];

    if (primaryUserSettingsItemModule)
    {
      primaryUserSettingsItemModule2 = [(HUAppleMusicAccountItemManager *)self primaryUserSettingsItemModule];
      v8 = [primaryUserSettingsItemModule2 buildSectionsWithDisplayedItems:itemsCopy];

      [v5 addObjectsFromArray:v8];
    }

    appleMusicAccountModule = [(HUAppleMusicAccountItemManager *)self appleMusicAccountModule];
    v10 = [appleMusicAccountModule buildSectionsWithDisplayedItems:itemsCopy];

    [v5 addObjectsFromArray:v10];
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  return v5;
}

- (void)setShouldDisableUpdates:(BOOL)updates
{
  if (self->_shouldDisableUpdates != updates)
  {
    self->_shouldDisableUpdates = updates;
    if (updates)
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
  mediaProfileContainer = [(HUAppleMusicAccountItemManager *)self mediaProfileContainer];
  hf_supportsPreferredMediaUser = [mediaProfileContainer hf_supportsPreferredMediaUser];

  return hf_supportsPreferredMediaUser;
}

- (BOOL)_showAppleMusicSettings
{
  mediaProfileContainer = [(HUAppleMusicAccountItemManager *)self mediaProfileContainer];
  hf_backingAccessory = [mediaProfileContainer hf_backingAccessory];
  hf_isSiriEndpoint = [hf_backingAccessory hf_isSiriEndpoint];

  return hf_isSiriEndpoint ^ 1;
}

@end