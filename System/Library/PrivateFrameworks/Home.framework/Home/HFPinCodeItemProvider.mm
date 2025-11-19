@interface HFPinCodeItemProvider
- (HFPinCodeItemProvider)init;
- (HFPinCodeItemProvider)initWithHome:(id)a3 pinCodeManager:(id)a4 listType:(unint64_t)a5 forAccessory:(id)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (id)invalidationReasons;
- (id)reloadItems;
@end

@implementation HFPinCodeItemProvider

- (HFPinCodeItemProvider)initWithHome:(id)a3 pinCodeManager:(id)a4 listType:(unint64_t)a5 forAccessory:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v19.receiver = self;
  v19.super_class = HFPinCodeItemProvider;
  v14 = [(HFItemProvider *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_home, a3);
    objc_storeStrong(&v15->_pinCodeManager, a4);
    v15->_listType = a5;
    v16 = [MEMORY[0x277CBEB58] set];
    pinCodeItems = v15->_pinCodeItems;
    v15->_pinCodeItems = v16;

    objc_storeStrong(&v15->_accessory, a6);
  }

  return v15;
}

- (HFPinCodeItemProvider)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithHome_pinCodeManager_listType_forAccessory_);
  [v4 handleFailureInMethod:a2 object:self file:@"HFPinCodeItemProvider.m" lineNumber:45 description:{@"%s is unavailable; use %@ instead", "-[HFPinCodeItemProvider init]", v5}];

  return 0;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(HFPinCodeItemProvider *)self home];
  v6 = [(HFPinCodeItemProvider *)self pinCodeManager];
  v7 = [(HFPinCodeItemProvider *)self listType];
  v8 = [(HFPinCodeItemProvider *)self accessory];
  v9 = [v4 initWithHome:v5 pinCodeManager:v6 listType:v7 forAccessory:v8];

  return v9;
}

- (id)reloadItems
{
  v3 = [(HFPinCodeItemProvider *)self listType];
  v4 = 0;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v5 = [(HFPinCodeItemProvider *)self pinCodeManager];
      v6 = [v5 removedUserPINCodes];
    }

    else
    {
      if (v3 != 4)
      {
        goto LABEL_11;
      }

      v5 = [(HFPinCodeItemProvider *)self pinCodeManager];
      v6 = [v5 otherEcosystemGuestPinCodes];
    }
  }

  else if (v3 == 1)
  {
    v5 = [(HFPinCodeItemProvider *)self pinCodeManager];
    v6 = [v5 userPinCodes];
  }

  else
  {
    if (v3 != 2)
    {
      goto LABEL_11;
    }

    v5 = [(HFPinCodeItemProvider *)self pinCodeManager];
    v6 = [v5 guestPinCodes];
  }

  v4 = v6;

LABEL_11:
  objc_initWeak(&location, self);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __36__HFPinCodeItemProvider_reloadItems__block_invoke_3;
  v9[3] = &unk_277E00620;
  v9[4] = self;
  v10 = &__block_literal_global_198;
  v11 = &__block_literal_global_11_8;
  objc_copyWeak(&v12, &location);
  v7 = [v4 flatMap:v9];
  objc_destroyWeak(&v12);

  objc_destroyWeak(&location);

  return v7;
}

uint64_t __36__HFPinCodeItemProvider_reloadItems__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 hash];

  return [v2 numberWithUnsignedInteger:v3];
}

uint64_t __36__HFPinCodeItemProvider_reloadItems__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 hash];

  return [v2 numberWithUnsignedInteger:v3];
}

id __36__HFPinCodeItemProvider_reloadItems__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) listType] == 3)
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __36__HFPinCodeItemProvider_reloadItems__block_invoke_4;
    v14[3] = &unk_277DFCD58;
    v14[4] = *(a1 + 32);
    v4 = [v3 na_filter:v14];

    v3 = v4;
  }

  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __36__HFPinCodeItemProvider_reloadItems__block_invoke_5;
  v13[3] = &unk_277E005F8;
  v13[4] = v5;
  v8 = [v5 reloadItemsWithObjects:v3 keyAdaptor:v6 itemAdaptor:v7 filter:0 itemMap:v13];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __36__HFPinCodeItemProvider_reloadItems__block_invoke_6;
  v11[3] = &unk_277DF30B8;
  objc_copyWeak(&v12, (a1 + 56));
  v9 = [v8 flatMap:v11];
  objc_destroyWeak(&v12);

  return v9;
}

uint64_t __36__HFPinCodeItemProvider_reloadItems__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = [a2 accessories];
  v4 = [*(a1 + 32) accessory];
  v5 = [v3 containsObject:v4];

  return v5;
}

HFPinCodeItem *__36__HFPinCodeItemProvider_reloadItems__block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [HFPinCodeItem alloc];
  v5 = [*(a1 + 32) home];
  v6 = [*(a1 + 32) accessory];
  v7 = [(HFPinCodeItem *)v4 initWithPinCode:v3 inHome:v5 onAccessory:v6];

  return v7;
}

id __36__HFPinCodeItemProvider_reloadItems__block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained pinCodeItems];
  v6 = [v3 removedItems];
  [v5 minusSet:v6];

  v7 = [WeakRetained pinCodeItems];
  v8 = [v3 addedItems];
  [v7 unionSet:v8];

  v9 = [MEMORY[0x277D2C900] futureWithResult:v3];

  return v9;
}

- (id)invalidationReasons
{
  v8[3] = *MEMORY[0x277D85DE8];
  v7.receiver = self;
  v7.super_class = HFPinCodeItemProvider;
  v2 = [(HFItemProvider *)&v7 invalidationReasons];
  v8[0] = @"accessory";
  v8[1] = @"service";
  v8[2] = @"user";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:3];
  v4 = [v2 setByAddingObjectsFromArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

@end