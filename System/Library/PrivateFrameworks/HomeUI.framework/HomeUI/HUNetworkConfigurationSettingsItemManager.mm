@interface HUNetworkConfigurationSettingsItemManager
- (HFNetworkConfigurationGroupItem)sourceNetworkConfigurationGroupItem;
- (HUNetworkConfigurationSettingsItemManager)initWithDelegate:(id)delegate;
- (HUNetworkConfigurationSettingsItemManager)initWithDelegate:(id)delegate networkConfigurationGroupItem:(id)item;
- (HUNetworkConfigurationSettingsItemManager)initWithDelegate:(id)delegate sourceItem:(id)item;
- (id)_buildItemModulesForHome:(id)home;
- (id)_buildSectionsWithDisplayedItems:(id)items;
@end

@implementation HUNetworkConfigurationSettingsItemManager

- (HUNetworkConfigurationSettingsItemManager)initWithDelegate:(id)delegate networkConfigurationGroupItem:(id)item
{
  v5.receiver = self;
  v5.super_class = HUNetworkConfigurationSettingsItemManager;
  return [(HFItemManager *)&v5 initWithDelegate:delegate sourceItem:item];
}

- (HUNetworkConfigurationSettingsItemManager)initWithDelegate:(id)delegate
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_initWithDelegate_networkConfigurationGroupItem_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUNetworkConfigurationSettingsItemManager.m" lineNumber:30 description:{@"%s is unavailable; use %@ instead", "-[HUNetworkConfigurationSettingsItemManager initWithDelegate:]", v6}];

  return 0;
}

- (HUNetworkConfigurationSettingsItemManager)initWithDelegate:(id)delegate sourceItem:(id)item
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithDelegate_networkConfigurationGroupItem_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUNetworkConfigurationSettingsItemManager.m" lineNumber:35 description:{@"%s is unavailable; use %@ instead", "-[HUNetworkConfigurationSettingsItemManager initWithDelegate:sourceItem:]", v7}];

  return 0;
}

- (id)_buildItemModulesForHome:(id)home
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = [HUNetworkConfigurationSettingsModule alloc];
  sourceNetworkConfigurationGroupItem = [(HUNetworkConfigurationSettingsItemManager *)self sourceNetworkConfigurationGroupItem];
  group = [sourceNetworkConfigurationGroupItem group];
  v7 = [(HUNetworkConfigurationSettingsModule *)v4 initWithItemUpdater:self group:group];
  [(HUNetworkConfigurationSettingsItemManager *)self setNetworkConfigurationSettingsModule:v7];

  networkConfigurationSettingsModule = [(HUNetworkConfigurationSettingsItemManager *)self networkConfigurationSettingsModule];
  v11[0] = networkConfigurationSettingsModule;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];

  return v9;
}

- (id)_buildSectionsWithDisplayedItems:(id)items
{
  itemsCopy = items;
  v5 = objc_opt_new();
  networkConfigurationSettingsModule = [(HUNetworkConfigurationSettingsItemManager *)self networkConfigurationSettingsModule];
  v7 = [networkConfigurationSettingsModule buildSectionsWithDisplayedItems:itemsCopy];

  [v5 addObjectsFromArray:v7];
  v8 = [MEMORY[0x277D14778] filterSections:v5 toDisplayedItems:itemsCopy];

  return v8;
}

- (HFNetworkConfigurationGroupItem)sourceNetworkConfigurationGroupItem
{
  v3 = objc_opt_class();
  sourceItem = [(HFItemManager *)self sourceItem];
  if (sourceItem)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = sourceItem;
    }

    else
    {
      v5 = 0;
    }

    v6 = sourceItem;
    if (v5)
    {
      goto LABEL_8;
    }

    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [currentHandler handleFailureInFunction:v8 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v3, objc_opt_class()}];
  }

  v6 = 0;
LABEL_8:

  return v6;
}

@end