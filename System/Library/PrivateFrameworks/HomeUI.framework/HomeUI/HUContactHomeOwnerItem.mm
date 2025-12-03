@interface HUContactHomeOwnerItem
- (HUContactHomeOwnerItem)initWithHome:(id)home;
- (id)_homeOwnerName;
- (id)_subclass_updateWithOptions:(id)options;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation HUContactHomeOwnerItem

- (HUContactHomeOwnerItem)initWithHome:(id)home
{
  homeCopy = home;
  v9.receiver = self;
  v9.super_class = HUContactHomeOwnerItem;
  v6 = [(HUContactHomeOwnerItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_home, home);
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  home = [(HUContactHomeOwnerItem *)self home];
  v6 = [v4 initWithHome:home];

  return v6;
}

- (id)_subclass_updateWithOptions:(id)options
{
  v19[1] = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  v5 = [optionsCopy objectForKey:*MEMORY[0x277D13BB0]];
  bOOLValue = [v5 BOOLValue];

  if ((bOOLValue & 1) != 0 || (-[HUContactHomeOwnerItem home](self, "home"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 hf_currentUserIsRestrictedGuest], v7, (v8 & 1) == 0))
  {
    v18 = *MEMORY[0x277D13FB8];
    v19[0] = MEMORY[0x277CBEC38];
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    v12 = MEMORY[0x277D2C900];
    v13 = [objc_alloc(MEMORY[0x277D14780]) initWithResults:v11];
    v10 = [v12 futureWithResult:v13];
  }

  else
  {
    objc_initWeak(&location, self);
    _homeOwnerName = [(HUContactHomeOwnerItem *)self _homeOwnerName];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __54__HUContactHomeOwnerItem__subclass_updateWithOptions___block_invoke;
    v15[3] = &unk_277DC4640;
    objc_copyWeak(&v16, &location);
    v10 = [_homeOwnerName flatMap:v15];
    objc_destroyWeak(&v16);

    objc_destroyWeak(&location);
  }

  return v10;
}

id __54__HUContactHomeOwnerItem__subclass_updateWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([v3 length])
  {
    v5 = [WeakRetained home];
    v6 = [v5 owner];
    v7 = [v6 userID];
    v8 = [v3 isEqualToString:v7] ^ 1;
  }

  else
  {
    v8 = 0;
  }

  v15 = [MEMORY[0x277CBEB38] dictionary];
  if (v8)
  {
    HULocalizedStringWithFormat(@"HURestrictedGuestAccess_ContactOwner_WithName_Button_Title", @"%@", v9, v10, v11, v12, v13, v14, v3);
  }

  else
  {
    _HULocalizedStringWithDefaultValue(@"HURestrictedGuestAccess_ContactOwner_Button_Title", @"HURestrictedGuestAccess_ContactOwner_Button_Title", 1);
  }
  v16 = ;
  [v15 setObject:v16 forKeyedSubscript:*MEMORY[0x277D13F60]];
  [v15 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D13E60]];
  v17 = MEMORY[0x277CBEB98];
  v18 = objc_opt_class();
  v19 = [v17 setWithObjects:{v18, objc_opt_class(), 0}];
  [v15 setObject:v19 forKeyedSubscript:*MEMORY[0x277D13DA0]];

  v20 = MEMORY[0x277D2C900];
  v21 = [MEMORY[0x277D14780] outcomeWithResults:v15];
  v22 = [v20 futureWithResult:v21];

  return v22;
}

- (id)_homeOwnerName
{
  if ([MEMORY[0x277D14CE8] isInternalTest])
  {
    v3 = HFLogForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_INFO, "Skipping home owner name lookup as this is an internal unit test", buf, 2u);
    }

    v4 = [MEMORY[0x277D2C900] futureWithResult:&stru_2823E0EE8];
  }

  else
  {
    globalAsyncScheduler = [MEMORY[0x277D2C938] globalAsyncScheduler];
    home = [(HUContactHomeOwnerItem *)self home];
    objc_initWeak(buf, home);
    v7 = MEMORY[0x277D2C900];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __40__HUContactHomeOwnerItem__homeOwnerName__block_invoke;
    v9[3] = &unk_277DBCA20;
    objc_copyWeak(&v10, buf);
    v4 = [v7 futureWithBlock:v9 scheduler:globalAsyncScheduler];
    objc_destroyWeak(&v10);
    objc_destroyWeak(buf);
  }

  return v4;
}

void __40__HUContactHomeOwnerItem__homeOwnerName__block_invoke(uint64_t a1, void *a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = [objc_alloc(MEMORY[0x277D14CA8]) initWithHome:WeakRetained];
    [v5 setStyle:1];
    v6 = [WeakRetained owner];
    v7 = [WeakRetained hf_handleForUser:v6];

    if ([MEMORY[0x277D14CE8] isAMac])
    {
      v8 = [MEMORY[0x277CBDA78] descriptorForRequiredKeysForStyle:1000];
      v13[0] = v8;
      v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];

      v10 = [MEMORY[0x277D145B0] defaultStore];
      v11 = [v10 contactForUserHandle:v7 withKeys:v9];

      v12 = [MEMORY[0x277CBDA78] stringFromContact:v11 style:1000];
    }

    else
    {
      v12 = [v5 stringForObjectValue:v7];
    }

    [v3 finishWithResult:v12];
  }

  else
  {
    [v3 finishWithResult:&stru_2823E0EE8];
  }
}

@end