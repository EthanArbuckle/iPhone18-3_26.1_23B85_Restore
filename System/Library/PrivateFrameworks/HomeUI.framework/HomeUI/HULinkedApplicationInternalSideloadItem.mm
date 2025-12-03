@interface HULinkedApplicationInternalSideloadItem
- (HULinkedApplicationInternalSideloadItem)initWithBundleIdentifier:(id)identifier;
- (HULinkedApplicationInternalSideloadItem)initWithBundleIdentifier:(id)identifier associatedAccessories:(id)accessories;
- (id)_subclass_updateWithOptions:(id)options;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation HULinkedApplicationInternalSideloadItem

- (HULinkedApplicationInternalSideloadItem)initWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = HULinkedApplicationInternalSideloadItem;
  v6 = [(HULinkedApplicationItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bundleIdentifier, identifier);
  }

  return v7;
}

- (HULinkedApplicationInternalSideloadItem)initWithBundleIdentifier:(id)identifier associatedAccessories:(id)accessories
{
  accessoriesCopy = accessories;
  v7 = [(HULinkedApplicationInternalSideloadItem *)self initWithBundleIdentifier:identifier];
  v8 = v7;
  if (v7)
  {
    [(HULinkedApplicationItem *)v7 setAssociatedAccessories:accessoriesCopy];
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  bundleIdentifier = [(HULinkedApplicationInternalSideloadItem *)self bundleIdentifier];
  v6 = [bundleIdentifier copy];
  associatedAccessories = [(HULinkedApplicationItem *)self associatedAccessories];
  v8 = [v4 initWithBundleIdentifier:v6 associatedAccessories:associatedAccessories];

  [v8 copyLatestResultsFromItem:self];
  return v8;
}

- (id)_subclass_updateWithOptions:(id)options
{
  v8.receiver = self;
  v8.super_class = HULinkedApplicationInternalSideloadItem;
  v4 = [(HULinkedApplicationItem *)&v8 _subclass_updateWithOptions:options];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __71__HULinkedApplicationInternalSideloadItem__subclass_updateWithOptions___block_invoke;
  v7[3] = &unk_277DBB878;
  v7[4] = self;
  v5 = [v4 flatMap:v7];

  return v5;
}

id __71__HULinkedApplicationInternalSideloadItem__subclass_updateWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 mutableCopy];
  v4 = MEMORY[0x277CCABB0];
  v5 = MEMORY[0x277D143E8];
  v6 = [*(a1 + 32) bundleIdentifier];
  v7 = [v4 numberWithBool:{objc_msgSend(v5, "canHandleBundleID:", v6)}];
  [v3 setObject:v7 forKeyedSubscript:@"HFResultApplicationIsInstalled"];

  v8 = [MEMORY[0x277D2C900] futureWithResult:v3];

  return v8;
}

@end