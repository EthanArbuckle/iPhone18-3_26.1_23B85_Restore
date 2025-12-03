@interface HULinkedApplicationLibraryItem
- (HULinkedApplicationLibraryItem)init;
- (HULinkedApplicationLibraryItem)initWithApplicationProxy:(id)proxy;
- (HULinkedApplicationLibraryItem)initWithApplicationProxy:(id)proxy associatedAccessories:(id)accessories;
- (id)_subclass_updateWithOptions:(id)options;
- (id)bundleIdentifier;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation HULinkedApplicationLibraryItem

- (HULinkedApplicationLibraryItem)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithApplicationProxy_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HULinkedApplicationItem.m" lineNumber:133 description:{@"%s is unavailable; use %@ instead", "-[HULinkedApplicationLibraryItem init]", v5}];

  return 0;
}

- (HULinkedApplicationLibraryItem)initWithApplicationProxy:(id)proxy
{
  proxyCopy = proxy;
  v9.receiver = self;
  v9.super_class = HULinkedApplicationLibraryItem;
  v6 = [(HULinkedApplicationItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_applicationProxy, proxy);
  }

  return v7;
}

- (HULinkedApplicationLibraryItem)initWithApplicationProxy:(id)proxy associatedAccessories:(id)accessories
{
  accessoriesCopy = accessories;
  v7 = [(HULinkedApplicationLibraryItem *)self initWithApplicationProxy:proxy];
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
  applicationProxy = [(HULinkedApplicationLibraryItem *)self applicationProxy];
  associatedAccessories = [(HULinkedApplicationItem *)self associatedAccessories];
  v7 = [v4 initWithApplicationProxy:applicationProxy associatedAccessories:associatedAccessories];

  [v7 copyLatestResultsFromItem:self];
  return v7;
}

- (id)bundleIdentifier
{
  applicationProxy = [(HULinkedApplicationLibraryItem *)self applicationProxy];
  bundleIdentifier = [applicationProxy bundleIdentifier];

  return bundleIdentifier;
}

- (id)_subclass_updateWithOptions:(id)options
{
  v8.receiver = self;
  v8.super_class = HULinkedApplicationLibraryItem;
  v4 = [(HULinkedApplicationItem *)&v8 _subclass_updateWithOptions:options];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__HULinkedApplicationLibraryItem__subclass_updateWithOptions___block_invoke;
  v7[3] = &unk_277DBB878;
  v7[4] = self;
  v5 = [v4 flatMap:v7];

  return v5;
}

id __62__HULinkedApplicationLibraryItem__subclass_updateWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277D759A0] mainScreen];
  [v4 scale];
  v6 = v5;

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __62__HULinkedApplicationLibraryItem__subclass_updateWithOptions___block_invoke_2;
  v16[3] = &unk_277DBC9F8;
  v16[4] = *(a1 + 32);
  v16[5] = v6;
  v7 = [MEMORY[0x277D2C900] futureWithBlock:v16];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __62__HULinkedApplicationLibraryItem__subclass_updateWithOptions___block_invoke_4;
  v12[3] = &unk_277DC0B40;
  v8 = *(a1 + 32);
  v13 = v3;
  v14 = v8;
  v15 = v6;
  v9 = v3;
  v10 = [v7 flatMap:v12];

  return v10;
}

void __62__HULinkedApplicationLibraryItem__subclass_updateWithOptions___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc(MEMORY[0x277D1B1A8]);
  v5 = [*(a1 + 32) applicationProxy];
  v6 = [v4 initWithResourceProxy:v5];

  v7 = [objc_alloc(MEMORY[0x277D1B1C8]) initWithSize:60.0 scale:{60.0, *(a1 + 40)}];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __62__HULinkedApplicationLibraryItem__subclass_updateWithOptions___block_invoke_3;
  v9[3] = &unk_277DB8540;
  v10 = v3;
  v8 = v3;
  [v6 getImageForImageDescriptor:v7 completion:v9];
}

id __62__HULinkedApplicationLibraryItem__subclass_updateWithOptions___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 mutableCopy];
  v6 = [*(a1 + 40) applicationProxy];
  v7 = [v6 localizedName];

  v8 = [*(a1 + 40) applicationProxy];
  v9 = [v8 vendorName];

  v10 = [*(a1 + 40) applicationProxy];
  v11 = [v10 hf_isInstalledForLaunching];

  v12 = MEMORY[0x277D755B8];
  v13 = [v4 CGImage];

  v14 = [v12 imageWithCGImage:v13 scale:0 orientation:*(a1 + 48)];
  v15 = *(a1 + 40);
  if (v7 && v14)
  {
    v16 = [v15 bundleIdentifier];
    [v5 setObject:v16 forKeyedSubscript:@"HFResultApplicationBundleIdentifier"];

    [v5 setObject:v7 forKeyedSubscript:*MEMORY[0x277D13F60]];
    [v5 setObject:v9 forKeyedSubscript:@"HFResultApplicationPublisher"];
    v17 = [MEMORY[0x277CCABB0] numberWithBool:v11];
    [v5 setObject:v17 forKeyedSubscript:@"HFResultApplicationIsInstalled"];

    [v5 setObject:v14 forKeyedSubscript:*MEMORY[0x277D13E98]];
    v18 = [MEMORY[0x277D2C900] futureWithResult:v5];
  }

  else
  {
    v18 = [v15 _failedUpdateOutcome];
  }

  v19 = v18;

  return v19;
}

@end