@interface HUAppleMusicCurrentlyLoggedInAccountItem
- (id)_subclass_updateWithOptions:(id)a3;
- (id)account;
@end

@implementation HUAppleMusicCurrentlyLoggedInAccountItem

- (id)account
{
  v2 = [(HUAppleMusicItem *)self mediaProfileContainer];
  v3 = [v2 hf_appleMusicCurrentLoggedInAccount];

  return v3;
}

- (id)_subclass_updateWithOptions:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v10.receiver = self;
  v10.super_class = HUAppleMusicCurrentlyLoggedInAccountItem;
  v5 = [(HUAppleMusicAccountItem *)&v10 _subclass_updateWithOptions:v4];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __72__HUAppleMusicCurrentlyLoggedInAccountItem__subclass_updateWithOptions___block_invoke;
  v8[3] = &unk_277DB77C8;
  objc_copyWeak(&v9, &location);
  v6 = [v5 flatMap:v8];
  objc_destroyWeak(&v9);

  objc_destroyWeak(&location);

  return v6;
}

id __72__HUAppleMusicCurrentlyLoggedInAccountItem__subclass_updateWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [v3 mutableCopy];

  v6 = [WeakRetained mediaProfileContainer];
  v7 = [v6 hf_homePodSupportsMultiUser];

  if (v7)
  {
    v8 = [MEMORY[0x277D14400] sharedInstance];
    v9 = [MEMORY[0x277D146E8] sharedDispatcher];
    v10 = [v9 home];
    v11 = [v10 uniqueIdentifier];
    v12 = [v11 UUIDString];
    v13 = [v8 mediaAccountForHomeIdentifier:v12];

    objc_opt_class();
    v14 = v13;
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;

    v17 = [WeakRetained account];
    if (v17 && (v18 = v17, [WeakRetained account], v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v19, "ams_altDSID"), v20 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "ams_altDSID"), v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v20, "isEqualToString:", v21), v21, v20, v19, v18, (v22 & 1) == 0))
    {
      v30 = _HULocalizedStringWithDefaultValue(@"HUAppleMusicUsername", @"HUAppleMusicUsername", 1);
      [v5 setObject:v30 forKeyedSubscript:*MEMORY[0x277D13F60]];

      v31 = [WeakRetained account];
      v32 = [v31 username];
      [v5 setObject:v32 forKeyedSubscript:*MEMORY[0x277D13E20]];

      v23 = MEMORY[0x277CBEC28];
    }

    else
    {
      v23 = MEMORY[0x277CBEC38];
    }

    v28 = *MEMORY[0x277D13FB8];
    [v5 setObject:v23 forKeyedSubscript:*MEMORY[0x277D13FB8]];
  }

  else
  {
    v24 = [WeakRetained account];

    if (v24)
    {
      v25 = _HULocalizedStringWithDefaultValue(@"HUAppleMusicUsername", @"HUAppleMusicUsername", 1);
      [v5 setObject:v25 forKeyedSubscript:*MEMORY[0x277D13F60]];

      v26 = [WeakRetained account];
      v27 = [v26 username];
      [v5 setObject:v27 forKeyedSubscript:*MEMORY[0x277D13E20]];

      v28 = *MEMORY[0x277D13FB8];
      v29 = MEMORY[0x277CBEC28];
    }

    else
    {
      v28 = *MEMORY[0x277D13FB8];
      v29 = MEMORY[0x277CBEC38];
    }

    [v5 setObject:v29 forKeyedSubscript:v28];
  }

  v33 = [WeakRetained mediaProfileContainer];
  v34 = [v33 hf_supportsPreferredMediaUser];

  if (v34)
  {
    v35 = _HULocalizedStringWithDefaultValue(@"HUPrimaryUserSettingsHomePodAccountSection_AccountInfoTitle", @"HUPrimaryUserSettingsHomePodAccountSection_AccountInfoTitle", 1);
    [v5 setObject:v35 forKeyedSubscript:*MEMORY[0x277D13F60]];

    v36 = [WeakRetained mediaProfileContainer];
    v37 = [v36 hf_appleMusicCurrentLoggedInAccount];

    if (v37)
    {
      v38 = [WeakRetained account];
      v39 = [v38 username];
      [v5 setObject:v39 forKeyedSubscript:*MEMORY[0x277D13E20]];
    }

    else
    {
      v38 = _HULocalizedStringWithDefaultValue(@"HUPrimaryUserSettingsHomePodAccountSection_AccountInfoPlaceholderValue", @"HUPrimaryUserSettingsHomePodAccountSection_AccountInfoPlaceholderValue", 1);
      [v5 setObject:v38 forKeyedSubscript:*MEMORY[0x277D13E20]];
    }

    [v5 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:v28];
  }

  v40 = [MEMORY[0x277D2C900] futureWithResult:v5];

  return v40;
}

@end