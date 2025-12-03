@interface HUAppleMusicAccountItem
- (HUAppleMusicAccountItem)init;
- (HUAppleMusicAccountItem)initWithMediaProfileContainer:(id)container account:(id)account;
- (id)_subclass_updateWithOptions:(id)options;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation HUAppleMusicAccountItem

- (HUAppleMusicAccountItem)initWithMediaProfileContainer:(id)container account:(id)account
{
  containerCopy = container;
  accountCopy = account;
  if (!accountCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HUAppleMusicAccountItem.m" lineNumber:24 description:{@"Invalid parameter not satisfying: %@", @"account"}];
  }

  v13.receiver = self;
  v13.super_class = HUAppleMusicAccountItem;
  v9 = [(HUAppleMusicItem *)&v13 initWithMediaProfileContainer:containerCopy];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_account, account);
  }

  return v10;
}

- (HUAppleMusicAccountItem)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithMediaProfileContainer_account_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUAppleMusicAccountItem.m" lineNumber:35 description:{@"%s is unavailable; use %@ instead", "-[HUAppleMusicAccountItem init]", v5}];

  return 0;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  mediaProfileContainer = [(HUAppleMusicItem *)self mediaProfileContainer];
  account = [(HUAppleMusicAccountItem *)self account];
  v7 = [v4 initWithMediaProfileContainer:mediaProfileContainer account:account];

  [v7 copyLatestResultsFromItem:self];
  return v7;
}

- (id)_subclass_updateWithOptions:(id)options
{
  optionsCopy = options;
  objc_initWeak(&location, self);
  v10.receiver = self;
  v10.super_class = HUAppleMusicAccountItem;
  v5 = [(HUAppleMusicItem *)&v10 _subclass_updateWithOptions:optionsCopy];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55__HUAppleMusicAccountItem__subclass_updateWithOptions___block_invoke;
  v8[3] = &unk_277DB77C8;
  objc_copyWeak(&v9, &location);
  v6 = [v5 flatMap:v8];
  objc_destroyWeak(&v9);

  objc_destroyWeak(&location);

  return v6;
}

id __55__HUAppleMusicAccountItem__subclass_updateWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [v3 mutableCopy];

  v6 = [WeakRetained mediaProfileContainer];
  v7 = [v6 hf_appleMusicCurrentLoggedInAccountDSID];
  v8 = [WeakRetained account];
  v9 = [v8 aa_altDSID];
  v10 = [v7 isEqualToString:v9];

  v11 = [WeakRetained mediaProfileContainer];
  LODWORD(v7) = [v11 hf_homePodSupportsMultiUser];

  if (v7)
  {
    v12 = [WeakRetained mediaProfileContainer];
    v13 = [v12 hf_appleMusicCurrentLoggedInAccount];

    if (v13)
    {
      v14 = [WeakRetained mediaProfileContainer];
      v15 = [v14 hf_appleMusicCurrentLoggedInAccount];
      [v5 setObject:v15 forKeyedSubscript:@"HOAppleMusicAccountKey"];
    }

    v16 = [MEMORY[0x277CCABB0] numberWithBool:v13 != 0];
    [v5 setObject:v16 forKeyedSubscript:@"HOAppleMusicAccountIsLoggedInKey"];
  }

  else
  {
    v17 = [WeakRetained account];

    if (v17)
    {
      v18 = [WeakRetained account];
      [v5 setObject:v18 forKeyedSubscript:@"HOAppleMusicAccountKey"];

      v19 = [MEMORY[0x277CCABB0] numberWithBool:v10];
      [v5 setObject:v19 forKeyedSubscript:@"HOAppleMusicAccountIsLoggedInKey"];

      v20 = [WeakRetained account];
      v21 = [v20 username];
      v22 = [v21 length];

      if (v22)
      {
        v23 = [WeakRetained account];
        v24 = [v23 username];
        v31 = HULocalizedStringWithFormat(@"HUAppleMusicAccountUseFormatString", @"%@", v25, v26, v27, v28, v29, v30, v24);
        [v5 setObject:v31 forKeyedSubscript:*MEMORY[0x277D13F60]];

        v32 = MEMORY[0x277CBEC28];
        goto LABEL_10;
      }
    }

    else
    {
      [v5 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"HOAppleMusicAccountIsLoggedInKey"];
    }
  }

  v32 = MEMORY[0x277CBEC38];
LABEL_10:
  [v5 setObject:v32 forKeyedSubscript:*MEMORY[0x277D13FB8]];
  v33 = [MEMORY[0x277D2C900] futureWithResult:v5];

  return v33;
}

@end