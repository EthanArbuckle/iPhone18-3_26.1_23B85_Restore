@interface HUAccessorySettingsProfileItemManager
- (HUAccessorySettingsProfileItemManager)initWithDelegate:(id)delegate accessoryGroupItem:(id)item;
- (id)_buildItemProvidersForHome:(id)home;
- (id)_buildSectionsWithDisplayedItems:(id)items;
@end

@implementation HUAccessorySettingsProfileItemManager

- (HUAccessorySettingsProfileItemManager)initWithDelegate:(id)delegate accessoryGroupItem:(id)item
{
  itemCopy = item;
  v11.receiver = self;
  v11.super_class = HUAccessorySettingsProfileItemManager;
  v7 = [(HFItemManager *)&v11 initWithDelegate:delegate sourceItem:itemCopy];
  if (v7)
  {
    v8 = [[HUAccessorySettingsProfileModule alloc] initWithItemUpdater:v7 settingGroupItem:itemCopy];
    profileModule = v7->_profileModule;
    v7->_profileModule = v8;
  }

  return v7;
}

- (id)_buildItemProvidersForHome:(id)home
{
  profileModule = [(HUAccessorySettingsProfileItemManager *)self profileModule];
  itemProviders = [profileModule itemProviders];
  allObjects = [itemProviders allObjects];

  return allObjects;
}

- (id)_buildSectionsWithDisplayedItems:(id)items
{
  itemsCopy = items;
  if ([itemsCopy count])
  {
    profileModule = [(HUAccessorySettingsProfileItemManager *)self profileModule];
    v6 = [profileModule buildSectionsWithDisplayedItems:itemsCopy];
  }

  else
  {
    v6 = MEMORY[0x277CBEBF8];
  }

  return v6;
}

@end