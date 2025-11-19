@interface HUCameraAccessLevelOptionItemProvider
- (HUCameraAccessLevelOptionItemProvider)init;
- (HUCameraAccessLevelOptionItemProvider)initWithUser:(id)a3 home:(id)a4;
- (id)invalidationReasons;
- (id)reloadItems;
@end

@implementation HUCameraAccessLevelOptionItemProvider

- (HUCameraAccessLevelOptionItemProvider)initWithUser:(id)a3 home:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = HUCameraAccessLevelOptionItemProvider;
  v9 = [(HFItemProvider *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_user, a3);
    objc_storeStrong(&v10->_home, a4);
    v11 = objc_opt_new();
    items = v10->_items;
    v10->_items = v11;
  }

  return v10;
}

- (HUCameraAccessLevelOptionItemProvider)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithUser_home_);
  [v4 handleFailureInMethod:a2 object:self file:@"HUCameraAccessLevelOptionItemProvider.m" lineNumber:61 description:{@"%s is unavailable; use %@ instead", "-[HUCameraAccessLevelOptionItemProvider init]", v5}];

  return 0;
}

- (id)reloadItems
{
  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __52__HUCameraAccessLevelOptionItemProvider_reloadItems__block_invoke_3;
  v8[3] = &unk_277DB93F0;
  objc_copyWeak(&v9, &location);
  v3 = [(HFItemProvider *)self reloadItemsWithObjects:&unk_2824928E8 keyAdaptor:&__block_literal_global_38 itemAdaptor:&__block_literal_global_41_0 filter:0 itemMap:v8];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __52__HUCameraAccessLevelOptionItemProvider_reloadItems__block_invoke_5;
  v6[3] = &unk_277DB7FA8;
  objc_copyWeak(&v7, &location);
  v4 = [v3 flatMap:v6];
  objc_destroyWeak(&v7);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);

  return v4;
}

uint64_t __52__HUCameraAccessLevelOptionItemProvider_reloadItems__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 accessLevel];

  return [v2 numberWithUnsignedInteger:v3];
}

HUCameraAccessLevelOptionItem *__52__HUCameraAccessLevelOptionItemProvider_reloadItems__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained items];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __52__HUCameraAccessLevelOptionItemProvider_reloadItems__block_invoke_4;
  v12[3] = &unk_277DB85D8;
  v6 = v3;
  v13 = v6;
  v7 = [v5 na_firstObjectPassingTest:v12];

  if (!v7)
  {
    v8 = [HUCameraAccessLevelOptionItem alloc];
    v9 = [WeakRetained user];
    v10 = [WeakRetained home];
    v7 = -[HUCameraAccessLevelOptionItem initWithUser:home:accessLevel:](v8, "initWithUser:home:accessLevel:", v9, v10, [v6 unsignedIntegerValue]);
  }

  return v7;
}

BOOL __52__HUCameraAccessLevelOptionItemProvider_reloadItems__block_invoke_4(uint64_t a1, void *a2)
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

  if (v6)
  {
    v7 = [v6 accessLevel];
    v8 = v7 == [*(a1 + 32) unsignedIntegerValue];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id __52__HUCameraAccessLevelOptionItemProvider_reloadItems__block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained items];
  v6 = [v3 addedItems];
  [v5 unionSet:v6];

  v7 = [WeakRetained items];
  v8 = [v3 removedItems];
  [v7 minusSet:v8];

  v9 = [MEMORY[0x277D2C900] futureWithResult:v3];

  return v9;
}

- (id)invalidationReasons
{
  v5.receiver = self;
  v5.super_class = HUCameraAccessLevelOptionItemProvider;
  v2 = [(HFItemProvider *)&v5 invalidationReasons];
  v3 = [v2 setByAddingObject:*MEMORY[0x277D13B28]];

  return v3;
}

@end