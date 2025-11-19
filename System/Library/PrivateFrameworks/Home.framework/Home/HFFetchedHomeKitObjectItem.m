@interface HFFetchedHomeKitObjectItem
- (HFFetchedHomeKitObjectItem)initWithHomeKitObject:(id)a3;
- (id)_homeKitObjectFetch;
- (id)_subclass_updateWithOptions:(id)a3;
@end

@implementation HFFetchedHomeKitObjectItem

- (id)_subclass_updateWithOptions:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:HFItemUpdateOptionFullUpdateIndicated];
  if ([v5 BOOLValue] || (-[HFFetchedHomeKitObjectItem homeKitObject](self, "homeKitObject"), (v6 = objc_claimAutoreleasedReturnValue()) == 0))
  {

    objc_initWeak(&location, self);
  }

  else
  {
    v7 = v6;
    v8 = [objc_opt_class() alwaysPerformFullFetch];

    objc_initWeak(&location, self);
    if ((v8 & 1) == 0)
    {
      v9 = MEMORY[0x277D2C900];
      v10 = [(HFFetchedHomeKitObjectItem *)self homeKitObject];
      v11 = [v9 futureWithResult:v10];

      v12 = 0;
      goto LABEL_7;
    }
  }

  v11 = [(HFFetchedHomeKitObjectItem *)self _homeKitObjectFetch];
  v12 = 1;
LABEL_7:
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __58__HFFetchedHomeKitObjectItem__subclass_updateWithOptions___block_invoke;
  v18[3] = &unk_277DFBFE8;
  objc_copyWeak(&v19, &location);
  v20 = v12;
  v13 = [v11 flatMap:v18];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __58__HFFetchedHomeKitObjectItem__subclass_updateWithOptions___block_invoke_2;
  v16[3] = &unk_277DF5330;
  objc_copyWeak(&v17, &location);
  v14 = [v13 recover:v16];
  objc_destroyWeak(&v17);

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);

  return v14;
}

id __58__HFFetchedHomeKitObjectItem__subclass_updateWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v18[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v5 = WeakRetained;
    if (*(a1 + 40) == 1)
    {
      [WeakRetained setHomeKitObject:v3];
    }

    v17 = @"dependentHomeKitObjects";
    v6 = MEMORY[0x277CBEB98];
    v7 = [v5 homeKitObject];
    v8 = [v6 setWithObject:v7];
    v18[0] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];

    v10 = MEMORY[0x277D2C900];
    v11 = [HFItemUpdateOutcome outcomeWithResults:v9];
    v12 = [v10 futureWithResult:v11];
  }

  else
  {
    v13 = MEMORY[0x277D2C900];
    v14 = [MEMORY[0x277CCA9B8] hf_errorWithCode:30];
    v12 = [v13 futureWithError:v14];
  }

  v15 = *MEMORY[0x277D85DE8];

  return v12;
}

id __58__HFFetchedHomeKitObjectItem__subclass_updateWithOptions___block_invoke_2(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory(0x2CuLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    *buf = 138412546;
    v15 = WeakRetained;
    v16 = 2112;
    v17 = v3;
    _os_log_error_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_ERROR, "%@: Failed to fetch HomeKit object with error: %@. Recovering and hiding update result.", buf, 0x16u);
  }

  v5 = MEMORY[0x277D2C900];
  v12 = @"hidden";
  v13 = MEMORY[0x277CBEC38];
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v7 = [HFItemUpdateOutcome outcomeWithResults:v6];
  v8 = [v5 futureWithResult:v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (HFFetchedHomeKitObjectItem)initWithHomeKitObject:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HFFetchedHomeKitObjectItem;
  v6 = [(HFFetchedHomeKitObjectItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_homeKitObject, a3);
  }

  return v7;
}

- (id)_homeKitObjectFetch
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"HFFetchedHomeKitObjectItem.m" lineNumber:71 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[HFFetchedHomeKitObjectItem _homeKitObjectFetch]", objc_opt_class()}];

  return 0;
}

@end