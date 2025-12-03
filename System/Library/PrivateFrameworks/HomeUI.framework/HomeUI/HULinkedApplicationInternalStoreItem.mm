@interface HULinkedApplicationInternalStoreItem
- (HULinkedApplicationInternalStoreItem)initWithBundleIdentifier:(id)identifier;
- (HULinkedApplicationInternalStoreItem)initWithBundleIdentifier:(id)identifier associatedAccessories:(id)accessories;
- (id)_subclass_updateWithOptions:(id)options;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation HULinkedApplicationInternalStoreItem

- (HULinkedApplicationInternalStoreItem)initWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = HULinkedApplicationInternalStoreItem;
  v6 = [(HULinkedApplicationItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bundleIdentifier, identifier);
  }

  return v7;
}

- (HULinkedApplicationInternalStoreItem)initWithBundleIdentifier:(id)identifier associatedAccessories:(id)accessories
{
  accessoriesCopy = accessories;
  v7 = [(HULinkedApplicationInternalStoreItem *)self initWithBundleIdentifier:identifier];
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
  bundleIdentifier = [(HULinkedApplicationInternalStoreItem *)self bundleIdentifier];
  v6 = [bundleIdentifier copy];
  associatedAccessories = [(HULinkedApplicationItem *)self associatedAccessories];
  v8 = [v4 initWithBundleIdentifier:v6 associatedAccessories:associatedAccessories];

  [v8 copyLatestResultsFromItem:self];
  return v8;
}

- (id)_subclass_updateWithOptions:(id)options
{
  optionsCopy = options;
  objc_initWeak(&location, self);
  v10.receiver = self;
  v10.super_class = HULinkedApplicationInternalStoreItem;
  v5 = [(HULinkedApplicationItem *)&v10 _subclass_updateWithOptions:optionsCopy];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __68__HULinkedApplicationInternalStoreItem__subclass_updateWithOptions___block_invoke;
  v8[3] = &unk_277DB77C8;
  objc_copyWeak(&v9, &location);
  v6 = [v5 flatMap:v8];
  objc_destroyWeak(&v9);

  objc_destroyWeak(&location);

  return v6;
}

id __68__HULinkedApplicationInternalStoreItem__subclass_updateWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [v3 mutableCopy];

  v6 = MEMORY[0x277CBEBC0];
  v7 = MEMORY[0x277CCACA8];
  v8 = [WeakRetained bundleIdentifier];
  v9 = [v7 stringWithFormat:@"https://appshack.swe.apple.com/apps/%@", v8];
  v10 = [v6 URLWithString:v9];
  [v5 setObject:v10 forKeyedSubscript:@"HFResultApplicationStoreURL"];

  v11 = MEMORY[0x277CCABB0];
  v12 = MEMORY[0x277D143E8];
  v13 = [WeakRetained bundleIdentifier];
  v14 = [v11 numberWithBool:{objc_msgSend(v12, "canHandleBundleID:", v13)}];
  [v5 setObject:v14 forKeyedSubscript:@"HFResultApplicationIsInstalled"];

  v15 = [MEMORY[0x277D2C900] futureWithResult:v5];

  return v15;
}

@end