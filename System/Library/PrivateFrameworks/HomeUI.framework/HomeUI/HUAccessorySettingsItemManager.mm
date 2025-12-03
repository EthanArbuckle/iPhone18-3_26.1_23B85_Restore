@interface HUAccessorySettingsItemManager
- (HUAccessorySettingsItemManager)initWithDelegate:(id)delegate accessoryGroupItem:(id)item;
- (id)_buildItemProvidersForHome:(id)home;
- (id)_buildSectionsWithDisplayedItems:(id)items;
- (id)_itemsToHideInSet:(id)set;
- (void)_registerForExternalUpdates;
- (void)_unregisterForExternalUpdates;
@end

@implementation HUAccessorySettingsItemManager

- (HUAccessorySettingsItemManager)initWithDelegate:(id)delegate accessoryGroupItem:(id)item
{
  itemCopy = item;
  delegateCopy = delegate;
  v8 = [itemCopy copy];
  v17.receiver = self;
  v17.super_class = HUAccessorySettingsItemManager;
  v9 = [(HFItemManager *)&v17 initWithDelegate:delegateCopy sourceItem:v8];

  if (v9)
  {
    v10 = [itemCopy copy];
    groupItem = v9->_groupItem;
    v9->_groupItem = v10;

    v12 = [HUAccessorySettingsItemModule alloc];
    groupItem = [(HUAccessorySettingsItemManager *)v9 groupItem];
    v14 = [(HUAccessorySettingsItemModule *)v12 initWithItemUpdater:v9 settingGroupItem:groupItem usageOptions:0];
    accessorySettingsSectionItemModule = v9->_accessorySettingsSectionItemModule;
    v9->_accessorySettingsSectionItemModule = v14;
  }

  return v9;
}

- (id)_buildItemProvidersForHome:(id)home
{
  accessorySettingsSectionItemModule = [(HUAccessorySettingsItemManager *)self accessorySettingsSectionItemModule];
  itemProviders = [accessorySettingsSectionItemModule itemProviders];
  allObjects = [itemProviders allObjects];

  return allObjects;
}

- (id)_buildSectionsWithDisplayedItems:(id)items
{
  itemsCopy = items;
  if ([itemsCopy count])
  {
    accessorySettingsSectionItemModule = [(HUAccessorySettingsItemManager *)self accessorySettingsSectionItemModule];
    v6 = [accessorySettingsSectionItemModule buildSectionsWithDisplayedItems:itemsCopy];
  }

  else
  {
    v6 = MEMORY[0x277CBEBF8];
  }

  return v6;
}

- (id)_itemsToHideInSet:(id)set
{
  v6.receiver = self;
  v6.super_class = HUAccessorySettingsItemManager;
  v3 = [(HFItemManager *)&v6 _itemsToHideInSet:set];
  v4 = [v3 mutableCopy];

  return v4;
}

- (void)_registerForExternalUpdates
{
  v4.receiver = self;
  v4.super_class = HUAccessorySettingsItemManager;
  [(HFItemManager *)&v4 _registerForExternalUpdates];
  accessorySettingsSectionItemModule = [(HUAccessorySettingsItemManager *)self accessorySettingsSectionItemModule];
  [accessorySettingsSectionItemModule registerForExternalUpdates];
}

- (void)_unregisterForExternalUpdates
{
  v4.receiver = self;
  v4.super_class = HUAccessorySettingsItemManager;
  [(HFItemManager *)&v4 _unregisterForExternalUpdates];
  accessorySettingsSectionItemModule = [(HUAccessorySettingsItemManager *)self accessorySettingsSectionItemModule];
  [accessorySettingsSectionItemModule unregisterForExternalUpdates];
}

@end