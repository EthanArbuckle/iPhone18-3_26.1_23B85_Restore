@interface HUAccessorySettingsProfileItemManager
- (HUAccessorySettingsProfileItemManager)initWithDelegate:(id)a3 accessoryGroupItem:(id)a4;
- (id)_buildItemProvidersForHome:(id)a3;
- (id)_buildSectionsWithDisplayedItems:(id)a3;
@end

@implementation HUAccessorySettingsProfileItemManager

- (HUAccessorySettingsProfileItemManager)initWithDelegate:(id)a3 accessoryGroupItem:(id)a4
{
  v6 = a4;
  v11.receiver = self;
  v11.super_class = HUAccessorySettingsProfileItemManager;
  v7 = [(HFItemManager *)&v11 initWithDelegate:a3 sourceItem:v6];
  if (v7)
  {
    v8 = [[HUAccessorySettingsProfileModule alloc] initWithItemUpdater:v7 settingGroupItem:v6];
    profileModule = v7->_profileModule;
    v7->_profileModule = v8;
  }

  return v7;
}

- (id)_buildItemProvidersForHome:(id)a3
{
  v3 = [(HUAccessorySettingsProfileItemManager *)self profileModule];
  v4 = [v3 itemProviders];
  v5 = [v4 allObjects];

  return v5;
}

- (id)_buildSectionsWithDisplayedItems:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v5 = [(HUAccessorySettingsProfileItemManager *)self profileModule];
    v6 = [v5 buildSectionsWithDisplayedItems:v4];
  }

  else
  {
    v6 = MEMORY[0x277CBEBF8];
  }

  return v6;
}

@end