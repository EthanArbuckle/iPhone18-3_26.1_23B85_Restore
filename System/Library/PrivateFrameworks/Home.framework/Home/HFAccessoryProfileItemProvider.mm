@interface HFAccessoryProfileItemProvider
- (HFAccessoryProfileItemProvider)init;
- (HFAccessoryProfileItemProvider)initWithHome:(id)home;
- (id)_profileItemForProfile:(id)profile;
- (id)_supportedProfileClasses;
- (id)copyWithZone:(_NSZone *)zone;
- (id)invalidationReasons;
- (id)reloadItems;
@end

@implementation HFAccessoryProfileItemProvider

- (HFAccessoryProfileItemProvider)initWithHome:(id)home
{
  homeCopy = home;
  v14.receiver = self;
  v14.super_class = HFAccessoryProfileItemProvider;
  v6 = [(HFItemProvider *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_home, home);
    v8 = [MEMORY[0x277CBEB58] set];
    profileItems = v7->_profileItems;
    v7->_profileItems = v8;

    v10 = objc_alloc_init(HFAccessoryProfileFilterOptions);
    filterOptions = v7->_filterOptions;
    v7->_filterOptions = v10;

    _supportedProfileClasses = [(HFAccessoryProfileItemProvider *)v7 _supportedProfileClasses];
    [(HFAccessoryProfileFilterOptions *)v7->_filterOptions setByClasses:_supportedProfileClasses];
  }

  return v7;
}

- (HFAccessoryProfileItemProvider)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithHome_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFAccessoryProfileItemProvider.m" lineNumber:39 description:{@"%s is unavailable; use %@ instead", "-[HFAccessoryProfileItemProvider init]", v5}];

  return 0;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  home = [(HFAccessoryProfileItemProvider *)self home];
  v6 = [v4 initWithHome:home];

  return v6;
}

- (id)reloadItems
{
  home = [(HFAccessoryProfileItemProvider *)self home];
  hf_allAccessoryProfiles = [home hf_allAccessoryProfiles];
  filterOptions = [(HFAccessoryProfileItemProvider *)self filterOptions];
  v6 = [HFAccessoryProfileFilter filterProfiles:hf_allAccessoryProfiles options:filterOptions];

  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __45__HFAccessoryProfileItemProvider_reloadItems__block_invoke;
  aBlock[3] = &unk_277DF5228;
  objc_copyWeak(&v14, &location);
  v7 = _Block_copy(aBlock);
  v8 = [(HFItemProvider *)self reloadItemsWithHomeKitObjects:v6 filter:0 itemMap:v7];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __45__HFAccessoryProfileItemProvider_reloadItems__block_invoke_3;
  v11[3] = &unk_277DF30B8;
  objc_copyWeak(&v12, &location);
  v9 = [v8 flatMap:v11];
  objc_destroyWeak(&v12);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);

  return v9;
}

id __45__HFAccessoryProfileItemProvider_reloadItems__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained _supportedProfileClasses];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __45__HFAccessoryProfileItemProvider_reloadItems__block_invoke_2;
  v16[3] = &unk_277DF9908;
  v6 = v3;
  v17 = v6;
  v7 = [v5 na_any:v16];

  if ((v7 & 1) == 0)
  {
    NSLog(&cfstr_Accessoryprofi_1.isa, v6);
  }

  v8 = objc_opt_class();
  v9 = v6;
  if (v9)
  {
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = v9;
    if (v10)
    {
      goto LABEL_10;
    }

    v12 = [MEMORY[0x277CCA890] currentHandler];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [v12 handleFailureInFunction:v13 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v8, objc_opt_class()}];
  }

  v11 = 0;
LABEL_10:

  v14 = [WeakRetained _profileItemForProfile:v11];

  return v14;
}

id __45__HFAccessoryProfileItemProvider_reloadItems__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained profileItems];
  v6 = [v3 addedItems];
  [v5 unionSet:v6];

  v7 = [WeakRetained profileItems];
  v8 = [v3 removedItems];
  [v7 minusSet:v8];

  v9 = [MEMORY[0x277D2C900] futureWithResult:v3];

  return v9;
}

- (id)invalidationReasons
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7.receiver = self;
  v7.super_class = HFAccessoryProfileItemProvider;
  invalidationReasons = [(HFItemProvider *)&v7 invalidationReasons];
  v8[0] = @"accessory";
  v8[1] = @"service";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:2];
  v4 = [invalidationReasons setByAddingObjectsFromArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)_supportedProfileClasses
{
  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();

  return [v2 setWithObject:v3];
}

- (id)_profileItemForProfile:(id)profile
{
  profileCopy = profile;
  v5 = [HFAccessoryProfileItem alloc];
  home = [(HFAccessoryProfileItemProvider *)self home];
  hf_characteristicValueManager = [home hf_characteristicValueManager];
  v8 = [(HFAccessoryProfileItem *)v5 initWithProfile:profileCopy valueSource:hf_characteristicValueManager];

  return v8;
}

@end