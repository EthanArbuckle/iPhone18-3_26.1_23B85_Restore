@interface HFResidentDeviceItemProvider
- (HFResidentDeviceItemProvider)init;
- (HFResidentDeviceItemProvider)initWithHome:(id)a3;
- (id)invalidationReasons;
- (id)reloadItems;
@end

@implementation HFResidentDeviceItemProvider

- (HFResidentDeviceItemProvider)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithHome_);
  [v4 handleFailureInMethod:a2 object:self file:@"HFResidentDeviceItemProvider.m" lineNumber:24 description:{@"%s is unavailable; use %@ instead", "-[HFResidentDeviceItemProvider init]", v5}];

  return 0;
}

- (HFResidentDeviceItemProvider)initWithHome:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = HFResidentDeviceItemProvider;
  v6 = [(HFItemProvider *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_home, a3);
    v8 = [MEMORY[0x277CBEB58] set];
    residentDeviceItems = v7->_residentDeviceItems;
    v7->_residentDeviceItems = v8;
  }

  return v7;
}

- (id)reloadItems
{
  objc_initWeak(&location, self);
  v3 = [(HFResidentDeviceItemProvider *)self home];
  v4 = [v3 residentDevices];
  v5 = [(HFResidentDeviceItemProvider *)self filter];
  v6 = [(HFItemProvider *)self reloadItemsWithHomeKitObjects:v4 filter:v5 itemMap:&__block_literal_global_179];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __43__HFResidentDeviceItemProvider_reloadItems__block_invoke_2;
  v9[3] = &unk_277DF30B8;
  objc_copyWeak(&v10, &location);
  v7 = [v6 flatMap:v9];
  objc_destroyWeak(&v10);

  objc_destroyWeak(&location);

  return v7;
}

HFResidentDeviceItem *__43__HFResidentDeviceItemProvider_reloadItems__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[HFResidentDeviceItem alloc] initWithResidentDevice:v2];

  return v3;
}

id __43__HFResidentDeviceItemProvider_reloadItems__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained residentDeviceItems];
  v6 = [v3 addedItems];
  [v5 unionSet:v6];

  v7 = [WeakRetained residentDeviceItems];
  v8 = [v3 removedItems];
  [v7 minusSet:v8];

  v9 = [MEMORY[0x277D2C900] futureWithResult:v3];

  return v9;
}

- (id)invalidationReasons
{
  v5.receiver = self;
  v5.super_class = HFResidentDeviceItemProvider;
  v2 = [(HFItemProvider *)&v5 invalidationReasons];
  v3 = [v2 setByAddingObject:@"residentDevice"];

  return v3;
}

@end