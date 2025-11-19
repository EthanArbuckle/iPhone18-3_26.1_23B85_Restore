@interface HUNetworkConfigurationSettingsItemManager
- (HFNetworkConfigurationGroupItem)sourceNetworkConfigurationGroupItem;
- (HUNetworkConfigurationSettingsItemManager)initWithDelegate:(id)a3;
- (HUNetworkConfigurationSettingsItemManager)initWithDelegate:(id)a3 networkConfigurationGroupItem:(id)a4;
- (HUNetworkConfigurationSettingsItemManager)initWithDelegate:(id)a3 sourceItem:(id)a4;
- (id)_buildItemModulesForHome:(id)a3;
- (id)_buildSectionsWithDisplayedItems:(id)a3;
@end

@implementation HUNetworkConfigurationSettingsItemManager

- (HUNetworkConfigurationSettingsItemManager)initWithDelegate:(id)a3 networkConfigurationGroupItem:(id)a4
{
  v5.receiver = self;
  v5.super_class = HUNetworkConfigurationSettingsItemManager;
  return [(HFItemManager *)&v5 initWithDelegate:a3 sourceItem:a4];
}

- (HUNetworkConfigurationSettingsItemManager)initWithDelegate:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_initWithDelegate_networkConfigurationGroupItem_);
  [v5 handleFailureInMethod:a2 object:self file:@"HUNetworkConfigurationSettingsItemManager.m" lineNumber:30 description:{@"%s is unavailable; use %@ instead", "-[HUNetworkConfigurationSettingsItemManager initWithDelegate:]", v6}];

  return 0;
}

- (HUNetworkConfigurationSettingsItemManager)initWithDelegate:(id)a3 sourceItem:(id)a4
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithDelegate_networkConfigurationGroupItem_);
  [v6 handleFailureInMethod:a2 object:self file:@"HUNetworkConfigurationSettingsItemManager.m" lineNumber:35 description:{@"%s is unavailable; use %@ instead", "-[HUNetworkConfigurationSettingsItemManager initWithDelegate:sourceItem:]", v7}];

  return 0;
}

- (id)_buildItemModulesForHome:(id)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = [HUNetworkConfigurationSettingsModule alloc];
  v5 = [(HUNetworkConfigurationSettingsItemManager *)self sourceNetworkConfigurationGroupItem];
  v6 = [v5 group];
  v7 = [(HUNetworkConfigurationSettingsModule *)v4 initWithItemUpdater:self group:v6];
  [(HUNetworkConfigurationSettingsItemManager *)self setNetworkConfigurationSettingsModule:v7];

  v8 = [(HUNetworkConfigurationSettingsItemManager *)self networkConfigurationSettingsModule];
  v11[0] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];

  return v9;
}

- (id)_buildSectionsWithDisplayedItems:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [(HUNetworkConfigurationSettingsItemManager *)self networkConfigurationSettingsModule];
  v7 = [v6 buildSectionsWithDisplayedItems:v4];

  [v5 addObjectsFromArray:v7];
  v8 = [MEMORY[0x277D14778] filterSections:v5 toDisplayedItems:v4];

  return v8;
}

- (HFNetworkConfigurationGroupItem)sourceNetworkConfigurationGroupItem
{
  v3 = objc_opt_class();
  v4 = [(HFItemManager *)self sourceItem];
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = v4;
    if (v5)
    {
      goto LABEL_8;
    }

    v7 = [MEMORY[0x277CCA890] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [v7 handleFailureInFunction:v8 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v3, objc_opt_class()}];
  }

  v6 = 0;
LABEL_8:

  return v6;
}

@end