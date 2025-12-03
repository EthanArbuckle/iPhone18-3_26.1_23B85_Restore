@interface HUFirmwareUpdateItemModule
- (HUFirmwareUpdateItemModule)initWithItemUpdater:(id)updater;
- (HUFirmwareUpdateItemModule)initWithItemUpdater:(id)updater home:(id)home;
- (id)buildItemProviders;
- (id)buildSectionsWithDisplayedItems:(id)items;
- (id)transformedUpdateOutcomeForItem:(id)item proposedOutcome:(id)outcome;
@end

@implementation HUFirmwareUpdateItemModule

- (HUFirmwareUpdateItemModule)initWithItemUpdater:(id)updater
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_initWithItemUpdater_home_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUFirmwareUpdateItemModule.m" lineNumber:32 description:{@"%s is unavailable; use %@ instead", "-[HUFirmwareUpdateItemModule initWithItemUpdater:]", v6}];

  return 0;
}

- (HUFirmwareUpdateItemModule)initWithItemUpdater:(id)updater home:(id)home
{
  homeCopy = home;
  v11.receiver = self;
  v11.super_class = HUFirmwareUpdateItemModule;
  v8 = [(HFItemModule *)&v11 initWithItemUpdater:updater];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_home, home);
  }

  return v9;
}

- (id)buildItemProviders
{
  v3 = [HUFirmwareUpdateItemProvider alloc];
  home = [(HUFirmwareUpdateItemModule *)self home];
  v5 = [(HUFirmwareUpdateItemProvider *)v3 initWithHome:home style:2];
  [(HUFirmwareUpdateItemModule *)self setFirmwareUpdateItemProvider:v5];

  v6 = MEMORY[0x277CBEB98];
  firmwareUpdateItemProvider = [(HUFirmwareUpdateItemModule *)self firmwareUpdateItemProvider];
  v8 = [v6 na_setWithSafeObject:firmwareUpdateItemProvider];

  return v8;
}

- (id)buildSectionsWithDisplayedItems:(id)items
{
  itemsCopy = items;
  v5 = objc_opt_new();
  v6 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"thirdPartyUpdates"];
  firmwareUpdateItemProvider = [(HUFirmwareUpdateItemModule *)self firmwareUpdateItemProvider];
  items = [firmwareUpdateItemProvider items];
  allObjects = [items allObjects];
  defaultItemComparator = [MEMORY[0x277D14778] defaultItemComparator];
  v11 = [allObjects sortedArrayUsingComparator:defaultItemComparator];
  [v6 setItems:v11];

  home = [(HUFirmwareUpdateItemModule *)self home];
  LODWORD(firmwareUpdateItemProvider) = [home hf_hasAccessoriesSupportingSoftwareUpdate];

  if (firmwareUpdateItemProvider)
  {
    v13 = _HULocalizedStringWithDefaultValue(@"HUSoftwareUpdateLegacyThirdPartyUpdatesSectionHeader", @"HUSoftwareUpdateLegacyThirdPartyUpdatesSectionHeader", 1);
    [v6 setHeaderTitle:v13];
  }

  [v5 addObject:v6];
  v14 = [MEMORY[0x277D14778] filterSections:v5 toDisplayedItems:itemsCopy];

  return v14;
}

- (id)transformedUpdateOutcomeForItem:(id)item proposedOutcome:(id)outcome
{
  itemCopy = item;
  outcomeCopy = outcome;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([itemCopy sourceItem], v7 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v7, (isKindOfClass))
  {
    v9 = [outcomeCopy mutableCopy];
    v10 = [outcomeCopy objectForKeyedSubscript:@"HFResultApplicationIsInstalled"];
    if ([v10 BOOLValue])
    {
      v11 = @"HUDownloadButtonTitle_Open";
    }

    else
    {
      v11 = @"HUDownloadButtonTitle_View";
    }

    v12 = _HULocalizedStringWithDefaultValue(v11, v11, 1);
    [v9 setObject:v12 forKeyedSubscript:*MEMORY[0x277D13DE8]];

    v13 = [outcomeCopy objectForKeyedSubscript:@"HFResultApplicationPublisher"];
    [v9 setObject:v13 forKeyedSubscript:*MEMORY[0x277D13E30]];
  }

  else
  {
    v9 = outcomeCopy;
  }

  return v9;
}

@end