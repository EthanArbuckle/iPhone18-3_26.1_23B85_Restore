@interface HUBridgeListItemManager
- (BOOL)isBridgeItem:(id)a3;
- (BOOL)isResidentDeviceItem:(id)a3;
- (HUBridgeListItemManager)initWithDelegate:(id)a3 sourceItem:(id)a4;
- (HUBridgeListItemManager)initWithHome:(id)a3 delegate:(id)a4;
- (id)_buildItemProvidersForHome:(id)a3;
- (id)_buildSectionsWithDisplayedItems:(id)a3;
- (id)_homeFuture;
- (id)_itemsToHideInSet:(id)a3;
- (id)bridgeItemForAccessory:(id)a3;
@end

@implementation HUBridgeListItemManager

- (HUBridgeListItemManager)initWithHome:(id)a3 delegate:(id)a4
{
  v8 = a3;
  v9 = a4;
  if (!v8)
  {
    v13 = [MEMORY[0x277CCA890] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"HUBridgeListItemManager.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"home"}];
  }

  v14.receiver = self;
  v14.super_class = HUBridgeListItemManager;
  v10 = [(HFItemManager *)&v14 initWithDelegate:v9 sourceItem:0];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_overrideHome, a3);
  }

  return v11;
}

- (HUBridgeListItemManager)initWithDelegate:(id)a3 sourceItem:(id)a4
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithHome_delegate_);
  [v6 handleFailureInMethod:a2 object:self file:@"HUBridgeListItemManager.m" lineNumber:34 description:{@"%s is unavailable; use %@ instead", "-[HUBridgeListItemManager initWithDelegate:sourceItem:]", v7}];

  return 0;
}

- (BOOL)isBridgeItem:(id)a3
{
  v4 = a3;
  v5 = [(HUBridgeListItemManager *)self bridgeItemProvider];
  v6 = [v5 items];
  v7 = [v6 containsObject:v4];

  return v7;
}

- (BOOL)isResidentDeviceItem:(id)a3
{
  v4 = a3;
  v5 = [(HUBridgeListItemManager *)self residentDeviceItemProvider];
  v6 = [v5 items];
  v7 = [v6 containsObject:v4];

  return v7;
}

- (id)bridgeItemForAccessory:(id)a3
{
  v4 = a3;
  v5 = [(HUBridgeListItemManager *)self bridgeItemProvider];
  v6 = [v5 items];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __50__HUBridgeListItemManager_bridgeItemForAccessory___block_invoke;
  v10[3] = &unk_277DB85D8;
  v11 = v4;
  v7 = v4;
  v8 = [v6 na_firstObjectPassingTest:v10];

  return v8;
}

uint64_t __50__HUBridgeListItemManager_bridgeItemForAccessory___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = v3;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = [v6 accessory];
  v8 = [v7 isEqual:*(a1 + 32)];

  return v8;
}

- (id)_buildItemProvidersForHome:(id)a3
{
  v12[2] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D149C0];
  v5 = a3;
  v6 = [[v4 alloc] initWithHome:v5];
  [(HUBridgeListItemManager *)self setResidentDeviceItemProvider:v6];

  v7 = [objc_alloc(MEMORY[0x277D14430]) initWithHome:v5];
  [(HUBridgeListItemManager *)self setBridgeItemProvider:v7];

  v8 = [(HUBridgeListItemManager *)self residentDeviceItemProvider];
  v12[0] = v8;
  v9 = [(HUBridgeListItemManager *)self bridgeItemProvider];
  v12[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];

  return v10;
}

- (id)_buildSectionsWithDisplayedItems:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUBridgeAndResidentDeviceHubSectionIdentifier"];
  v7 = [(HUBridgeListItemManager *)self residentDeviceItemProvider];
  v8 = [v7 items];
  v9 = [v8 allObjects];
  v10 = [objc_opt_class() residentDeviceItemComparator];
  v11 = [v9 sortedArrayUsingComparator:v10];
  [v6 setItems:v11 filteringToDisplayedItems:v4];

  v12 = _HULocalizedStringWithDefaultValue(@"HUBridgeAndResidentListHomeHubSectionTitle", @"HUBridgeAndResidentListHomeHubSectionTitle", 1);
  [v6 setHeaderTitle:v12];

  v13 = _HULocalizedStringWithDefaultValue(@"HUBridgeAndResidentListHomeHubSectionFooter", @"HUBridgeAndResidentListHomeHubSectionFooter", 1);
  [v6 setFooterTitle:v13];

  [v5 addObject:v6];
  v14 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUBridgeAndResidentDeviceBridgeSectionIdentifier"];
  v15 = [(HUBridgeListItemManager *)self bridgeItemProvider];
  v16 = [v15 items];
  [v14 setItemsUsingDefaultSortComparator:v16];

  v17 = _HULocalizedStringWithDefaultValue(@"HUBridgeAndResidentListBridgesSectionTitle", @"HUBridgeAndResidentListBridgesSectionTitle", 1);
  [v14 setHeaderTitle:v17];

  [v5 addObject:v14];
  v18 = [MEMORY[0x277D14778] filterSections:v5 toDisplayedItems:v4];

  return v18;
}

- (id)_itemsToHideInSet:(id)a3
{
  v5.receiver = self;
  v5.super_class = HUBridgeListItemManager;
  v3 = [(HFItemManager *)&v5 _itemsToHideInSet:a3];
  return 0;
}

- (id)_homeFuture
{
  v2 = MEMORY[0x277D2C900];
  v3 = [(HUBridgeListItemManager *)self overrideHome];
  v4 = [v2 futureWithResult:v3];

  return v4;
}

uint64_t __55__HUBridgeListItemManager_residentDeviceItemComparator__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = objc_opt_class();
  v7 = v4;
  if (!v7)
  {
    goto LABEL_7;
  }

  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v7;
  if (!v8)
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [v10 handleFailureInFunction:v11 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v6, objc_opt_class()}];

LABEL_7:
    v9 = 0;
  }

  v12 = [v9 residentDevice];
  v13 = [v12 status];

  if ((v13 & 2) != 0)
  {
    v23 = -1;
    goto LABEL_21;
  }

  v14 = objc_opt_class();
  v15 = v5;
  if (v15)
  {
    if (objc_opt_isKindOfClass())
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    v17 = v15;
    if (v16)
    {
      goto LABEL_16;
    }

    v18 = [MEMORY[0x277CCA890] currentHandler];
    v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [v18 handleFailureInFunction:v19 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v14, objc_opt_class()}];
  }

  v17 = 0;
LABEL_16:

  v20 = [v17 residentDevice];
  v21 = [v20 status];

  if ((v21 & 2) != 0)
  {
    v23 = 1;
  }

  else
  {
    v22 = [MEMORY[0x277D14778] defaultItemComparator];
    v23 = (v22)[2](v22, v7, v15);
  }

LABEL_21:
  return v23;
}

@end