@interface HUMediaAccessoryAudioSettingsItemManager
- (HUMediaAccessoryAudioSettingsItemManager)initWithMediaSystemBuilder:(id)builder sourceItem:(id)item delegate:(id)delegate;
- (id)_buildItemProvidersForHome:(id)home;
- (id)_buildSectionsWithDisplayedItems:(id)items;
- (void)_registerForExternalUpdates;
- (void)_unregisterForExternalUpdates;
@end

@implementation HUMediaAccessoryAudioSettingsItemManager

- (HUMediaAccessoryAudioSettingsItemManager)initWithMediaSystemBuilder:(id)builder sourceItem:(id)item delegate:(id)delegate
{
  builderCopy = builder;
  itemCopy = item;
  delegateCopy = delegate;
  if (!builderCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HUMediaAccessoryAudioSettingsItemManager.m" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"builder"}];
  }

  v13 = [itemCopy copy];
  v17.receiver = self;
  v17.super_class = HUMediaAccessoryAudioSettingsItemManager;
  v14 = [(HFItemManager *)&v17 initWithDelegate:delegateCopy sourceItem:v13];

  if (v14)
  {
    objc_storeStrong(&v14->_mediaSystemBuilder, builder);
  }

  return v14;
}

- (id)_buildItemProvidersForHome:(id)home
{
  v21[1] = *MEMORY[0x277D85DE8];
  homeCopy = home;
  objc_initWeak(&location, self);
  v5 = objc_alloc(MEMORY[0x277D14B38]);
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __71__HUMediaAccessoryAudioSettingsItemManager__buildItemProvidersForHome___block_invoke;
  v18 = &unk_277DB7448;
  objc_copyWeak(&v19, &location);
  v6 = [v5 initWithResultsBlock:&v15];
  audioSettingsItem = self->_audioSettingsItem;
  self->_audioSettingsItem = v6;

  v8 = objc_alloc(MEMORY[0x277D14B40]);
  v9 = MEMORY[0x277CBEB98];
  v10 = [(HUMediaAccessoryAudioSettingsItemManager *)self audioSettingsItem:v15];
  v11 = [v9 setWithObject:v10];
  v12 = [v8 initWithItems:v11];

  v21[0] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);

  return v13;
}

id __71__HUMediaAccessoryAudioSettingsItemManager__buildItemProvidersForHome___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_opt_new();
  v3 = MEMORY[0x277CBEB58];
  v4 = [WeakRetained mediaSystemBuilder];
  v5 = [v4 mediaSystem];
  v6 = [v3 na_setWithSafeObject:v5];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [WeakRetained mediaSystemBuilder];
  v8 = [v7 accessories];

  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [v6 addObject:*(*(&v15 + 1) + 8 * i)];
      }

      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  [v2 setObject:v6 forKeyedSubscript:*MEMORY[0x277D13DA8]];
  v13 = [MEMORY[0x277D2C900] futureWithResult:v2];

  return v13;
}

- (id)_buildSectionsWithDisplayedItems:(id)items
{
  v14[1] = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  audioSettingsItem = [(HUMediaAccessoryAudioSettingsItemManager *)self audioSettingsItem];
  v6 = [itemsCopy containsObject:audioSettingsItem];

  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"MediaAccessoryAudioSettings"];
    audioSettingsItem2 = [(HUMediaAccessoryAudioSettingsItemManager *)self audioSettingsItem];
    v14[0] = audioSettingsItem2;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
    [v7 setItems:v9];

    v10 = _HULocalizedStringWithDefaultValue(@"HUMediaAccessoryAudioSettingsSectionFooter", @"HUMediaAccessoryAudioSettingsSectionFooter", 1);
    [v7 setFooterTitle:v10];

    v13 = v7;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v13 count:1];
  }

  else
  {
    v11 = MEMORY[0x277CBEBF8];
  }

  return v11;
}

- (void)_registerForExternalUpdates
{
  v2.receiver = self;
  v2.super_class = HUMediaAccessoryAudioSettingsItemManager;
  [(HFItemManager *)&v2 _registerForExternalUpdates];
}

- (void)_unregisterForExternalUpdates
{
  v2.receiver = self;
  v2.super_class = HUMediaAccessoryAudioSettingsItemManager;
  [(HFItemManager *)&v2 _unregisterForExternalUpdates];
}

@end