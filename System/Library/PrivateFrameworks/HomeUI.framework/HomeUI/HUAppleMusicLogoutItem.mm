@interface HUAppleMusicLogoutItem
- (id)_subclass_updateWithOptions:(id)a3;
@end

@implementation HUAppleMusicLogoutItem

- (id)_subclass_updateWithOptions:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v10.receiver = self;
  v10.super_class = HUAppleMusicLogoutItem;
  v5 = [(HUAppleMusicItem *)&v10 _subclass_updateWithOptions:v4];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __54__HUAppleMusicLogoutItem__subclass_updateWithOptions___block_invoke;
  v8[3] = &unk_277DB77C8;
  objc_copyWeak(&v9, &location);
  v6 = [v5 flatMap:v8];
  objc_destroyWeak(&v9);

  objc_destroyWeak(&location);

  return v6;
}

id __54__HUAppleMusicLogoutItem__subclass_updateWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [v3 mutableCopy];

  v6 = [WeakRetained mediaProfileContainer];
  v7 = [v6 hf_appleMusicCurrentLoggedInAccount];

  v8 = v7 != 0;
  v9 = [WeakRetained mediaProfileContainer];
  v10 = [v9 hf_homePodSupportsMultiUser];

  if (v10)
  {
    v11 = [MEMORY[0x277D14400] sharedInstance];
    v12 = [MEMORY[0x277D146E8] sharedDispatcher];
    v13 = [v12 home];
    v14 = [v13 uniqueIdentifier];
    v15 = [v14 UUIDString];
    v16 = [v11 mediaAccountForHomeIdentifier:v15];

    objc_opt_class();
    v17 = v16;
    if (objc_opt_isKindOfClass())
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    v19 = v18;

    if (v7)
    {
      v20 = [v7 ams_altDSID];
      v21 = [v19 ams_altDSID];
      v8 = [v20 isEqualToString:v21] ^ 1;
    }

    else
    {
      v8 = 0;
    }
  }

  v22 = _HULocalizedStringWithDefaultValue(@"HUAppleMusicStopUsingThisAccount", @"HUAppleMusicStopUsingThisAccount", 1);
  v23 = *MEMORY[0x277D13F60];
  [v5 setObject:v22 forKeyedSubscript:*MEMORY[0x277D13F60]];

  v24 = [MEMORY[0x277CCABB0] numberWithInt:v8 ^ 1u];
  v25 = *MEMORY[0x277D13FB8];
  [v5 setObject:v24 forKeyedSubscript:*MEMORY[0x277D13FB8]];

  v26 = [WeakRetained mediaProfileContainer];
  v27 = [v26 hf_supportsPreferredMediaUser];

  if (v27)
  {
    v28 = _HULocalizedStringWithDefaultValue(@"HUAppleMusicSignOut", @"HUAppleMusicSignOut", 1);
    [v5 setObject:v28 forKeyedSubscript:v23];

    v29 = [MEMORY[0x277CCABB0] numberWithInt:v7 == 0];
    [v5 setObject:v29 forKeyedSubscript:v25];
  }

  v30 = [MEMORY[0x277D2C900] futureWithResult:v5];

  return v30;
}

@end