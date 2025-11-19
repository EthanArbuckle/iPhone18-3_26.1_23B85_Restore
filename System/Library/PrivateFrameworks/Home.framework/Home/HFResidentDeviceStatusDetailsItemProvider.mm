@interface HFResidentDeviceStatusDetailsItemProvider
- (HFResidentDeviceStatusDetailsItemProvider)init;
- (HFResidentDeviceStatusDetailsItemProvider)initWithHome:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)invalidationReasons;
- (id)reloadItems;
@end

@implementation HFResidentDeviceStatusDetailsItemProvider

- (HFResidentDeviceStatusDetailsItemProvider)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithHome_);
  [v4 handleFailureInMethod:a2 object:self file:@"HFResidentDeviceStatusDetailsItemProvider.m" lineNumber:24 description:{@"%s is unavailable; use %@ instead", "-[HFResidentDeviceStatusDetailsItemProvider init]", v5}];

  return 0;
}

- (HFResidentDeviceStatusDetailsItemProvider)initWithHome:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = HFResidentDeviceStatusDetailsItemProvider;
  v6 = [(HFItemProvider *)&v10 init];
  if (v6)
  {
    v7 = [MEMORY[0x277CBEB58] set];
    residentDeviceItems = v6->_residentDeviceItems;
    v6->_residentDeviceItems = v7;

    objc_storeStrong(&v6->_home, a3);
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(HFResidentDeviceStatusDetailsItemProvider *)self home];
  v6 = [v4 initWithHome:v5];

  return v6;
}

- (id)reloadItems
{
  objc_initWeak(&location, self);
  v3 = [(HFResidentDeviceStatusDetailsItemProvider *)self home];
  v4 = [v3 residentDevices];
  v5 = [(HFResidentDeviceStatusDetailsItemProvider *)self filter];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __56__HFResidentDeviceStatusDetailsItemProvider_reloadItems__block_invoke;
  v11[3] = &unk_277DF3090;
  v11[4] = self;
  v6 = [(HFItemProvider *)self reloadItemsWithHomeKitObjects:v4 filter:v5 itemMap:v11];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __56__HFResidentDeviceStatusDetailsItemProvider_reloadItems__block_invoke_2;
  v9[3] = &unk_277DF30B8;
  objc_copyWeak(&v10, &location);
  v7 = [v6 flatMap:v9];
  objc_destroyWeak(&v10);

  objc_destroyWeak(&location);

  return v7;
}

HFResidentDeviceStatusDetailsItem *__56__HFResidentDeviceStatusDetailsItemProvider_reloadItems__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [HFResidentDeviceStatusDetailsItem alloc];
  v5 = [*(a1 + 32) home];
  v6 = [(HFResidentDeviceStatusDetailsItem *)v4 initWithHome:v5 residentDevice:v3];

  return v6;
}

id __56__HFResidentDeviceStatusDetailsItemProvider_reloadItems__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained residentDeviceItems];
  v6 = [v3 removedItems];
  [v5 minusSet:v6];

  v7 = [WeakRetained residentDeviceItems];
  v8 = [v3 addedItems];
  [v7 unionSet:v8];

  v9 = [MEMORY[0x277D2C900] futureWithResult:v3];

  return v9;
}

- (id)invalidationReasons
{
  v5.receiver = self;
  v5.super_class = HFResidentDeviceStatusDetailsItemProvider;
  v2 = [(HFItemProvider *)&v5 invalidationReasons];
  v3 = [v2 setByAddingObject:@"residentDevice"];

  return v3;
}

@end