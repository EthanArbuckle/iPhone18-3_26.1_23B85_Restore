@interface HUFirmwareUpdateItemModule
- (HUFirmwareUpdateItemModule)initWithItemUpdater:(id)a3;
- (HUFirmwareUpdateItemModule)initWithItemUpdater:(id)a3 home:(id)a4;
- (id)buildItemProviders;
- (id)buildSectionsWithDisplayedItems:(id)a3;
- (id)transformedUpdateOutcomeForItem:(id)a3 proposedOutcome:(id)a4;
@end

@implementation HUFirmwareUpdateItemModule

- (HUFirmwareUpdateItemModule)initWithItemUpdater:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_initWithItemUpdater_home_);
  [v5 handleFailureInMethod:a2 object:self file:@"HUFirmwareUpdateItemModule.m" lineNumber:32 description:{@"%s is unavailable; use %@ instead", "-[HUFirmwareUpdateItemModule initWithItemUpdater:]", v6}];

  return 0;
}

- (HUFirmwareUpdateItemModule)initWithItemUpdater:(id)a3 home:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = HUFirmwareUpdateItemModule;
  v8 = [(HFItemModule *)&v11 initWithItemUpdater:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_home, a4);
  }

  return v9;
}

- (id)buildItemProviders
{
  v3 = [HUFirmwareUpdateItemProvider alloc];
  v4 = [(HUFirmwareUpdateItemModule *)self home];
  v5 = [(HUFirmwareUpdateItemProvider *)v3 initWithHome:v4 style:2];
  [(HUFirmwareUpdateItemModule *)self setFirmwareUpdateItemProvider:v5];

  v6 = MEMORY[0x277CBEB98];
  v7 = [(HUFirmwareUpdateItemModule *)self firmwareUpdateItemProvider];
  v8 = [v6 na_setWithSafeObject:v7];

  return v8;
}

- (id)buildSectionsWithDisplayedItems:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"thirdPartyUpdates"];
  v7 = [(HUFirmwareUpdateItemModule *)self firmwareUpdateItemProvider];
  v8 = [v7 items];
  v9 = [v8 allObjects];
  v10 = [MEMORY[0x277D14778] defaultItemComparator];
  v11 = [v9 sortedArrayUsingComparator:v10];
  [v6 setItems:v11];

  v12 = [(HUFirmwareUpdateItemModule *)self home];
  LODWORD(v7) = [v12 hf_hasAccessoriesSupportingSoftwareUpdate];

  if (v7)
  {
    v13 = _HULocalizedStringWithDefaultValue(@"HUSoftwareUpdateLegacyThirdPartyUpdatesSectionHeader", @"HUSoftwareUpdateLegacyThirdPartyUpdatesSectionHeader", 1);
    [v6 setHeaderTitle:v13];
  }

  [v5 addObject:v6];
  v14 = [MEMORY[0x277D14778] filterSections:v5 toDisplayedItems:v4];

  return v14;
}

- (id)transformedUpdateOutcomeForItem:(id)a3 proposedOutcome:(id)a4
{
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([v5 sourceItem], v7 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v7, (isKindOfClass))
  {
    v9 = [v6 mutableCopy];
    v10 = [v6 objectForKeyedSubscript:@"HFResultApplicationIsInstalled"];
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

    v13 = [v6 objectForKeyedSubscript:@"HFResultApplicationPublisher"];
    [v9 setObject:v13 forKeyedSubscript:*MEMORY[0x277D13E30]];
  }

  else
  {
    v9 = v6;
  }

  return v9;
}

@end