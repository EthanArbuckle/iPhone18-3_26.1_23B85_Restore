@interface HUAppleMusicLoginItem
- (id)_subclass_updateWithOptions:(id)options;
@end

@implementation HUAppleMusicLoginItem

- (id)_subclass_updateWithOptions:(id)options
{
  optionsCopy = options;
  objc_initWeak(&location, self);
  v10.receiver = self;
  v10.super_class = HUAppleMusicLoginItem;
  v5 = [(HUAppleMusicItem *)&v10 _subclass_updateWithOptions:optionsCopy];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __53__HUAppleMusicLoginItem__subclass_updateWithOptions___block_invoke;
  v8[3] = &unk_277DB77C8;
  objc_copyWeak(&v9, &location);
  v6 = [v5 flatMap:v8];
  objc_destroyWeak(&v9);

  objc_destroyWeak(&location);

  return v6;
}

id __53__HUAppleMusicLoginItem__subclass_updateWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [v3 mutableCopy];

  v6 = [MEMORY[0x277D14808] sharedDispatcher];
  v7 = [v6 appleMusicMagicAuthCapableAccounts];
  v8 = [v7 count];

  if (v8)
  {
    v9 = *MEMORY[0x277D13FB8];
    [v5 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D13FB8]];
  }

  else
  {
    v10 = MEMORY[0x277CCABB0];
    v11 = [WeakRetained mediaProfileContainer];
    v12 = [v11 hf_appleMusicCurrentLoggedInAccount];
    v13 = [v10 numberWithInt:v12 != 0];
    v9 = *MEMORY[0x277D13FB8];
    [v5 setObject:v13 forKeyedSubscript:*MEMORY[0x277D13FB8]];
  }

  v14 = [WeakRetained mediaProfileContainer];
  v15 = [v14 hf_homePodSupportsMultiUser];

  if (v15)
  {
    v16 = [WeakRetained mediaProfileContainer];
    v17 = [v16 hf_appleMusicCurrentLoggedInAccount];

    v18 = [MEMORY[0x277D14400] sharedInstance];
    v19 = [MEMORY[0x277D146E8] sharedDispatcher];
    v20 = [v19 home];
    v21 = [v20 uniqueIdentifier];
    v22 = [v21 UUIDString];
    v23 = [v18 mediaAccountForHomeIdentifier:v22];

    objc_opt_class();
    v24 = v23;
    if (objc_opt_isKindOfClass())
    {
      v25 = v24;
    }

    else
    {
      v25 = 0;
    }

    v26 = v25;

    v27 = MEMORY[0x277CCABB0];
    if (v17)
    {
      v20 = [v17 ams_altDSID];
      v22 = [v26 ams_altDSID];
      v28 = [v20 isEqualToString:v22] ^ 1;
    }

    else
    {
      v28 = 0;
    }

    v29 = [v27 numberWithInt:v28];
    [v5 setObject:v29 forKeyedSubscript:v9];

    if (v17)
    {
    }

    v30 = HFLocalizedString();
    v31 = *MEMORY[0x277D13F60];
    [v5 setObject:v30 forKeyedSubscript:*MEMORY[0x277D13F60]];

    v32 = [WeakRetained mediaProfileContainer];
    v33 = [v32 hf_supportsPreferredMediaUser];

    if (v33)
    {
      v34 = _HULocalizedStringWithDefaultValue(@"HUPrimaryUserSettingsHomePodAccountSection_SignInButton", @"HUPrimaryUserSettingsHomePodAccountSection_SignInButton", 1);
      [v5 setObject:v34 forKeyedSubscript:v31];

      v35 = [MEMORY[0x277CCABB0] numberWithInt:v17 != 0];
      [v5 setObject:v35 forKeyedSubscript:v9];
    }
  }

  else
  {
    v17 = HFLocalizedString();
    [v5 setObject:v17 forKeyedSubscript:*MEMORY[0x277D13F60]];
  }

  v36 = [MEMORY[0x277D2C900] futureWithResult:v5];

  return v36;
}

@end