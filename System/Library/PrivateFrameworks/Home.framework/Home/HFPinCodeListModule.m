@interface HFPinCodeListModule
- (HFItemSectionAccessoryButtonHeaderDelegate)editButtonHeaderDelegate;
- (HFPinCodeListModule)initWithItemUpdater:(id)a3 pinCodeManager:(id)a4 listType:(unint64_t)a5 home:(id)a6 forAccessory:(id)a7;
- (id)_sectionIdentifier;
- (id)buildSectionsWithDisplayedItems:(id)a3;
- (id)itemProviders;
@end

@implementation HFPinCodeListModule

- (HFPinCodeListModule)initWithItemUpdater:(id)a3 pinCodeManager:(id)a4 listType:(unint64_t)a5 home:(id)a6 forAccessory:(id)a7
{
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v19.receiver = self;
  v19.super_class = HFPinCodeListModule;
  v16 = [(HFItemModule *)&v19 initWithItemUpdater:a3];
  v17 = v16;
  if (v16)
  {
    v16->_listType = a5;
    objc_storeStrong(&v16->_pinCodeManager, a4);
    objc_storeStrong(&v17->_home, a6);
    objc_storeStrong(&v17->_accessory, a7);
  }

  return v17;
}

- (id)itemProviders
{
  itemProviders = self->_itemProviders;
  if (!itemProviders)
  {
    v5 = [MEMORY[0x277CBEB58] set];
    if ([(HFPinCodeListModule *)self listType]== 2)
    {
      v6 = [HFStaticItem alloc];
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __36__HFPinCodeListModule_itemProviders__block_invoke;
      v28[3] = &unk_277DF7D00;
      v28[4] = self;
      v7 = [(HFStaticItem *)v6 initWithResultsBlock:v28];
      [(HFPinCodeListModule *)self setAddPinCodeItem:v7];

      v8 = [HFStaticItemProvider alloc];
      v9 = MEMORY[0x277CBEB98];
      v10 = [(HFPinCodeListModule *)self addPinCodeItem];
    }

    else
    {
      if ([(HFPinCodeListModule *)self listType]!= 3)
      {
LABEL_8:
        objc_opt_class();
        v15 = [(HFItemModule *)self itemUpdater];
        if (objc_opt_isKindOfClass())
        {
          v16 = v15;
        }

        else
        {
          v16 = 0;
        }

        v17 = v16;

        v18 = [HFPinCodeItemProvider alloc];
        v19 = [v17 home];

        v20 = [(HFPinCodeListModule *)self pinCodeManager];
        v21 = [(HFPinCodeListModule *)self listType];
        v22 = [(HFPinCodeListModule *)self accessory];
        v23 = [(HFPinCodeItemProvider *)v18 initWithHome:v19 pinCodeManager:v20 listType:v21 forAccessory:v22];
        [(HFPinCodeListModule *)self setPinCodeItemProvider:v23];

        v24 = [(HFPinCodeListModule *)self pinCodeItemProvider];
        [(NSSet *)v5 addObject:v24];

        v25 = self->_itemProviders;
        self->_itemProviders = v5;
        v26 = v5;

        v3 = self->_itemProviders;
        goto LABEL_12;
      }

      v11 = [[HFStaticItem alloc] initWithResultsBlock:&__block_literal_global_63];
      [(HFPinCodeListModule *)self setRevokePinCodeItem:v11];

      v8 = [HFStaticItemProvider alloc];
      v9 = MEMORY[0x277CBEB98];
      v10 = [(HFPinCodeListModule *)self revokePinCodeItem];
    }

    v12 = v10;
    v13 = [v9 setWithObject:v10];
    v14 = [(HFStaticItemProvider *)v8 initWithItems:v13];
    [(NSSet *)v5 addObject:v14];

    goto LABEL_8;
  }

  v3 = itemProviders;
LABEL_12:

  return v3;
}

id __36__HFPinCodeListModule_itemProviders__block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB38] dictionary];
  [v2 setObject:@"plus" forKeyedSubscript:@"iconNames"];
  v3 = 1;
  v4 = _HFLocalizedStringWithDefaultValue(@"HFPinCodeAddButtonTitle", @"HFPinCodeAddButtonTitle", 1);
  [v2 setObject:v4 forKeyedSubscript:@"title"];

  [v2 setObject:@"Home.Locks.Pincodes.AddGuest" forKeyedSubscript:@"HFResultDisplayAccessibilityIDKey"];
  v5 = +[HFHomeKitDispatcher sharedDispatcher];
  v6 = [v5 homeManager];
  v7 = [v6 hasOptedToHH2];

  if (v7)
  {
    v8 = [*(a1 + 32) home];
    v9 = [v8 residentDevices];
    v3 = [v9 count] != 0;
  }

  v10 = HFLogForCategory(0x4CuLL);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [*(a1 + 32) home];
    v12 = [v11 residentDevices];
    v13 = [v12 count];
    v14 = [*(a1 + 32) home];
    v19 = 136316162;
    v20 = "[HFPinCodeListModule itemProviders]_block_invoke";
    v21 = 1024;
    v22 = v3;
    v23 = 1024;
    v24 = v7;
    v25 = 2048;
    v26 = v13;
    v27 = 2112;
    v28 = v14;
    _os_log_impl(&dword_20D9BF000, v10, OS_LOG_TYPE_DEFAULT, "(%s) shouldShowInvitePeople = %{BOOL}d because hasOptedToHH2 = %{BOOL}d | residentDevices.count = %ld | home %@", &v19, 0x2Cu);
  }

  v15 = [MEMORY[0x277CCABB0] numberWithBool:!v3];
  [v2 setObject:v15 forKeyedSubscript:@"hidden"];

  v16 = [MEMORY[0x277D2C900] futureWithResult:v2];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

id __36__HFPinCodeListModule_itemProviders__block_invoke_15()
{
  v0 = [MEMORY[0x277CBEB38] dictionary];
  v1 = _HFLocalizedStringWithDefaultValue(@"HFPinCodeRevokeRemovedUserButtonTitle", @"HFPinCodeRevokeRemovedUserButtonTitle", 1);
  [v0 setObject:v1 forKeyedSubscript:@"title"];

  [v0 setObject:@"Home.Locks.PinCodes.RevokeAccessCode" forKeyedSubscript:@"HFResultDisplayAccessibilityIDKey"];
  [v0 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"hidden"];
  v2 = [MEMORY[0x277D2C900] futureWithResult:v0];

  return v2;
}

- (id)_sectionIdentifier
{
  v2 = [(HFPinCodeListModule *)self listType];
  if (v2 - 1 > 3)
  {
    v3 = 0;
  }

  else
  {
    v3 = off_277DF7D20[v2 - 1];
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"PinCodes-%@", v3];
}

- (id)buildSectionsWithDisplayedItems:(id)a3
{
  v27[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HFPinCodeListModule *)self pinCodeItemProvider];
  v6 = [v5 items];
  v7 = [v6 allObjects];
  v8 = [v7 mutableCopy];

  v9 = +[HFItemSection defaultItemComparator];
  [v8 sortUsingComparator:v9];

  if (![v8 count] && (-[HFPinCodeListModule listType](self, "listType") == 1 || -[HFPinCodeListModule listType](self, "listType") == 3 || -[HFPinCodeListModule listType](self, "listType") == 4))
  {
    v12 = MEMORY[0x277CBEBF8];
    goto LABEL_24;
  }

  v10 = [(HFPinCodeListModule *)self addPinCodeItem];

  if (v10)
  {
    v11 = [(HFPinCodeListModule *)self addPinCodeItem];
  }

  else
  {
    v13 = [(HFPinCodeListModule *)self revokePinCodeItem];

    if (!v13)
    {
      goto LABEL_11;
    }

    v11 = [(HFPinCodeListModule *)self revokePinCodeItem];
  }

  v14 = v11;
  [v8 addObject:v11];

LABEL_11:
  v15 = [(HFPinCodeListModule *)self listType]- 1;
  if (v15 > 3)
  {
    v16 = 0;
  }

  else
  {
    v16 = _HFLocalizedStringWithDefaultValue(off_277DF7D40[v15], off_277DF7D40[v15], 1);
  }

  v17 = [HFMutableItemSection alloc];
  v18 = [(HFPinCodeListModule *)self _sectionIdentifier];
  v19 = [(HFItemSection *)v17 initWithIdentifier:v18];

  [(HFMutableItemSection *)v19 setItems:v8 filteringToDisplayedItems:v4];
  [(HFItemSection *)v19 setHeaderTitle:v16];
  v20 = [(HFPinCodeListModule *)self accessory];

  if (!v20)
  {
    goto LABEL_23;
  }

  v21 = [(HFPinCodeListModule *)self listType];
  switch(v21)
  {
    case 3uLL:
      v22 = @"HFPinCodeRemovedUsersSectionFooter";
      goto LABEL_21;
    case 2uLL:
      v23 = _HFLocalizedStringWithDefaultValue(@"HFPinCodeListGuestsHeaderButtonEditTitle", @"HFPinCodeListGuestsHeaderButtonEditTitle", 1);
      [(HFItemSection *)v19 setHeaderAccessoryButtonTitle:v23];

      v24 = [(HFPinCodeListModule *)self editButtonHeaderDelegate];
      [(HFItemSection *)v19 setHeaderAccessoryButtonDelegate:v24];
LABEL_22:

      break;
    case 1uLL:
      v22 = @"HFPinCodeUserSectionFooter";
LABEL_21:
      v24 = _HFLocalizedStringWithDefaultValue(v22, v22, 1);
      [(HFItemSection *)v19 setFooterTitle:v24];
      goto LABEL_22;
  }

LABEL_23:
  v27[0] = v19;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:1];

LABEL_24:
  v25 = *MEMORY[0x277D85DE8];

  return v12;
}

- (HFItemSectionAccessoryButtonHeaderDelegate)editButtonHeaderDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_editButtonHeaderDelegate);

  return WeakRetained;
}

@end