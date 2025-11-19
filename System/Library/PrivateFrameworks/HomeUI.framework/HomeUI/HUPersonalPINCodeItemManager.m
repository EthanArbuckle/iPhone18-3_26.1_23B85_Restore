@interface HUPersonalPINCodeItemManager
- (HUPersonalPINCodeItemManager)initWithDelegate:(id)a3;
- (HUPersonalPINCodeItemManager)initWithDelegate:(id)a3 item:(id)a4 pinCodeManager:(id)a5 home:(id)a6;
- (HUPersonalPINCodeItemManager)initWithDelegate:(id)a3 sourceItem:(id)a4;
- (id)_buildItemProvidersForHome:(id)a3;
- (id)_buildSectionsWithDisplayedItems:(id)a3;
- (id)_homeFuture;
- (id)_itemsToUpdateForApplicationResignActive;
@end

@implementation HUPersonalPINCodeItemManager

- (HUPersonalPINCodeItemManager)initWithDelegate:(id)a3 item:(id)a4 pinCodeManager:(id)a5 home:(id)a6
{
  v11 = a5;
  v12 = a6;
  v16.receiver = self;
  v16.super_class = HUPersonalPINCodeItemManager;
  v13 = [(HFItemManager *)&v16 initWithDelegate:a3 sourceItem:a4];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_pinCodeManager, a5);
    objc_storeStrong(&v14->_overrideHome, a6);
  }

  return v14;
}

- (HUPersonalPINCodeItemManager)initWithDelegate:(id)a3 sourceItem:(id)a4
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithDelegate_item_pinCodeManager_home_);
  [v6 handleFailureInMethod:a2 object:self file:@"HUPersonalPINCodeItemManager.m" lineNumber:58 description:{@"%s is unavailable; use %@ instead", "-[HUPersonalPINCodeItemManager initWithDelegate:sourceItem:]", v7}];

  return 0;
}

- (HUPersonalPINCodeItemManager)initWithDelegate:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_initWithDelegate_item_pinCodeManager_home_);
  [v5 handleFailureInMethod:a2 object:self file:@"HUPersonalPINCodeItemManager.m" lineNumber:63 description:{@"%s is unavailable; use %@ instead", "-[HUPersonalPINCodeItemManager initWithDelegate:]", v6}];

  return 0;
}

- (id)_buildItemProvidersForHome:(id)a3
{
  v68[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  v5 = [(HFItemManager *)self sourceItem];
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  objc_opt_class();
  v8 = [(HFItemManager *)self sourceItem];
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v53 = v9;
  if (!(v9 | v7))
  {
    v10 = [(HFItemManager *)self sourceItem];
    NSLog(&cfstr_ExpectedItemTo.isa, v10);
  }

  v11 = [v7 isGuest];
  if ([v4 hf_hasHomeHubSupportingAccessCodes])
  {
    v12 = 1;
  }

  else
  {
    v12 = [v4 hf_currentUserIsOwner];
  }

  v50 = v12;
  v51 = v11;
  v13 = v7 != 0;
  v14 = objc_alloc(MEMORY[0x277D14B38]);
  v58[0] = MEMORY[0x277D85DD0];
  v58[1] = 3221225472;
  v58[2] = __59__HUPersonalPINCodeItemManager__buildItemProvidersForHome___block_invoke;
  v58[3] = &unk_277DB8250;
  v59 = v4;
  v60 = v7;
  v61 = v11 & 1;
  v54 = v4;
  v55 = v7;
  v15 = [v14 initWithResultsBlock:v58];
  [(HUPersonalPINCodeItemManager *)self setPinCodeValueItem:v15];

  v16 = objc_alloc(MEMORY[0x277D14B38]);
  v67[0] = *MEMORY[0x277D13F60];
  v17 = v67[0];
  v18 = _HULocalizedStringWithDefaultValue(@"HUPinCodeChangeCellTitle", @"HUPinCodeChangeCellTitle", 1);
  v19 = *MEMORY[0x277D13DC8];
  v68[0] = v18;
  v68[1] = @"Home.Locks.Pincode.ChangeAccessCode";
  v20 = *MEMORY[0x277D13FB8];
  v67[1] = v19;
  v67[2] = v20;
  v52 = v13 & v12;
  v21 = [MEMORY[0x277CCABB0] numberWithInt:v13 & v12 ^ 1u];
  v68[2] = v21;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v68 forKeys:v67 count:3];
  v23 = [v16 initWithResults:v22];
  [(HUPersonalPINCodeItemManager *)self setPinCodeChangeItem:v23];

  v24 = objc_alloc(MEMORY[0x277D14B38]);
  v65[0] = v17;
  v25 = _HULocalizedStringWithDefaultValue(@"HUPinCodeShareButtonTitle", @"HUPinCodeShareButtonTitle", 1);
  v66[0] = v25;
  v66[1] = @"Home.Locks.Pincode.ShareAccessCode";
  v65[1] = v19;
  v65[2] = v20;
  v26 = [MEMORY[0x277CCABB0] numberWithInt:v13 & v51 ^ 1u];
  v66[2] = v26;
  v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v66 forKeys:v65 count:3];
  v28 = [v24 initWithResults:v27];
  [(HUPersonalPINCodeItemManager *)self setShareButtonItem:v28];

  if (v55)
  {
    v29 = 1;
  }

  else
  {
    v29 = v53 == 0;
  }

  v30 = !v29;
  v31 = v30 & v50;
  v32 = objc_alloc(MEMORY[0x277D14B38]);
  v63[0] = v17;
  v33 = _HULocalizedStringWithDefaultValue(@"HUPinCodeCreateUserPINButtonTitle", @"HUPinCodeCreateUserPINButtonTitle", 1);
  v64[0] = v33;
  v64[1] = @"Home.Locks.PinCode.CreateAccessCode";
  v63[1] = v19;
  v63[2] = v20;
  v34 = [MEMORY[0x277CCABB0] numberWithInt:v31 ^ 1u];
  v64[2] = v34;
  v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v64 forKeys:v63 count:3];
  v36 = [v32 initWithResults:v35];
  [(HUPersonalPINCodeItemManager *)self setCreateUserPINButtonItem:v36];

  v37 = objc_alloc(MEMORY[0x277D14B38]);
  v56[0] = MEMORY[0x277D85DD0];
  v56[1] = 3221225472;
  v56[2] = __59__HUPersonalPINCodeItemManager__buildItemProvidersForHome___block_invoke_2;
  v56[3] = &unk_277DB8A10;
  v57 = v52 & (v51 ^ 1);
  v56[4] = self;
  v38 = [v37 initWithResultsBlock:v56];
  [(HUPersonalPINCodeItemManager *)self setRemoveUserPINButtonItem:v38];

  v39 = objc_opt_new();
  v40 = [(HUPersonalPINCodeItemManager *)self pinCodeValueItem];
  [v39 na_safeAddObject:v40];

  v41 = [(HUPersonalPINCodeItemManager *)self pinCodeChangeItem];
  [v39 na_safeAddObject:v41];

  v42 = [(HUPersonalPINCodeItemManager *)self shareButtonItem];
  [v39 na_safeAddObject:v42];

  v43 = [(HUPersonalPINCodeItemManager *)self createUserPINButtonItem];
  [v39 na_safeAddObject:v43];

  v44 = [(HUPersonalPINCodeItemManager *)self removeUserPINButtonItem];
  [v39 na_safeAddObject:v44];

  v45 = objc_alloc(MEMORY[0x277D14B40]);
  v46 = [MEMORY[0x277CBEB98] setWithArray:v39];
  v47 = [v45 initWithItems:v46];

  v62 = v47;
  v48 = [MEMORY[0x277CBEA60] arrayWithObjects:&v62 count:1];

  return v48;
}

id __59__HUPersonalPINCodeItemManager__buildItemProvidersForHome___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v3 = _HULocalizedStringWithDefaultValue(@"HUPinCodeValueCellTitle", @"HUPinCodeValueCellTitle", 1);
  [v2 setObject:v3 forKeyedSubscript:*MEMORY[0x277D13F60]];

  [v2 setObject:@"Home.Locks.PinCode.AccessCode" forKeyedSubscript:*MEMORY[0x277D13DC8]];
  v4 = [*(a1 + 32) currentUser];
  v5 = [v4 uniqueIdentifier];
  v6 = [*(a1 + 40) user];
  v7 = [v6 uniqueIdentifier];
  v8 = [v5 isEqual:v7];

  v9 = [MEMORY[0x277D14670] sharedInstance];
  if ([v9 isActive])
  {
    v10 = *(a1 + 48) | v8;

    if (v10)
    {
      v11 = [*(a1 + 40) pinCodeValue];
      goto LABEL_6;
    }
  }

  else
  {
  }

  v11 = _HULocalizedStringWithDefaultValue(@"HUPINCodeMasking", @"HUPINCodeMasking", 1);
LABEL_6:
  v12 = v11;
  [v2 setObject:v11 forKeyedSubscript:*MEMORY[0x277D13E20]];

  v13 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 40) == 0];
  [v2 setObject:v13 forKeyedSubscript:*MEMORY[0x277D13FB8]];

  v14 = [MEMORY[0x277D2C900] futureWithResult:v2];

  return v14;
}

id __59__HUPersonalPINCodeItemManager__buildItemProvidersForHome___block_invoke_2(uint64_t a1)
{
  v11[4] = *MEMORY[0x277D85DE8];
  v10[0] = *MEMORY[0x277D13F60];
  v2 = _HULocalizedStringWithDefaultValue(@"HUPinCodeRemoveUserPINButtonTitle", @"HUPinCodeRemoveUserPINButtonTitle", 1);
  v3 = *MEMORY[0x277D13DC8];
  v11[0] = v2;
  v11[1] = @"Home.Locks.PinCode.RemoveAccessCode";
  v4 = *MEMORY[0x277D13FB8];
  v10[1] = v3;
  v10[2] = v4;
  v5 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 40) ^ 1u];
  v11[2] = v5;
  v10[3] = *MEMORY[0x277D13EA8];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 32), "operationInProgress")}];
  v11[3] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:4];

  v8 = [MEMORY[0x277D2C900] futureWithResult:v7];

  return v8;
}

- (id)_buildSectionsWithDisplayedItems:(id)a3
{
  v22[2] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB18];
  v5 = a3;
  v6 = [v4 array];
  v7 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"PinCodeValue"];
  v8 = [(HUPersonalPINCodeItemManager *)self pinCodeValueItem];
  v22[0] = v8;
  v9 = [(HUPersonalPINCodeItemManager *)self pinCodeChangeItem];
  v22[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
  [v7 setItems:v10];

  [v6 na_safeAddObject:v7];
  v11 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"SharePinCode"];
  v12 = [(HUPersonalPINCodeItemManager *)self shareButtonItem];
  v21 = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:1];
  [v11 setItems:v13];

  [v6 na_safeAddObject:v11];
  v14 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"CreateRemovePIN"];
  v15 = [(HUPersonalPINCodeItemManager *)self createUserPINButtonItem];
  v16 = [(HUPersonalPINCodeItemManager *)self removeUserPINButtonItem];
  v20[1] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
  [v14 setItems:v17];

  [v6 na_safeAddObject:v14];
  v18 = [MEMORY[0x277D14778] filterSections:v6 toDisplayedItems:v5];

  return v18;
}

- (id)_homeFuture
{
  v2 = MEMORY[0x277D2C900];
  v3 = [(HUPersonalPINCodeItemManager *)self overrideHome];
  v4 = [v2 futureWithResult:v3];

  return v4;
}

- (id)_itemsToUpdateForApplicationResignActive
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [(HUPersonalPINCodeItemManager *)self pinCodeValueItem];
  v4 = [v2 na_setWithSafeObject:v3];

  return v4;
}

@end