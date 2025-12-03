@interface HFAccessoryProfileGroupItemProvider
- (HFAccessoryProfileGroupItemProvider)init;
- (HFAccessoryProfileGroupItemProvider)initWithHome:(id)home;
- (id)_profileGroupItemForProfiles:(id)profiles groupIdentifier:(id)identifier;
- (id)_supportedProfileClasses;
- (id)copyWithZone:(_NSZone *)zone;
- (id)invalidationReasons;
- (id)reloadItems;
@end

@implementation HFAccessoryProfileGroupItemProvider

- (HFAccessoryProfileGroupItemProvider)initWithHome:(id)home
{
  homeCopy = home;
  v16.receiver = self;
  v16.super_class = HFAccessoryProfileGroupItemProvider;
  v6 = [(HFItemProvider *)&v16 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_home, home);
    v8 = [MEMORY[0x277CBEB58] set];
    profileGroupItems = v7->_profileGroupItems;
    v7->_profileGroupItems = v8;

    v10 = objc_alloc_init(HFAccessoryProfileFilterOptions);
    filterOptions = v7->_filterOptions;
    v7->_filterOptions = v10;

    _supportedProfileClasses = [(HFAccessoryProfileGroupItemProvider *)v7 _supportedProfileClasses];
    [(HFAccessoryProfileFilterOptions *)v7->_filterOptions setByClasses:_supportedProfileClasses];

    v13 = objc_alloc_init(HFAccessoryProfileGroupOptions);
    groupOptions = v7->_groupOptions;
    v7->_groupOptions = v13;
  }

  return v7;
}

- (HFAccessoryProfileGroupItemProvider)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithHome_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFAccessoryProfileGroupItemProvider.m" lineNumber:42 description:{@"%s is unavailable; use %@ instead", "-[HFAccessoryProfileGroupItemProvider init]", v5}];

  return 0;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  home = [(HFAccessoryProfileGroupItemProvider *)self home];
  v6 = [v4 initWithHome:home];

  return v6;
}

- (id)reloadItems
{
  home = [(HFAccessoryProfileGroupItemProvider *)self home];
  hf_allAccessoryProfiles = [home hf_allAccessoryProfiles];
  filterOptions = [(HFAccessoryProfileGroupItemProvider *)self filterOptions];
  v6 = [HFAccessoryProfileFilter filterProfiles:hf_allAccessoryProfiles options:filterOptions];

  groupOptions = [(HFAccessoryProfileGroupItemProvider *)self groupOptions];
  v8 = [HFAccessoryProfileGroup groupProfiles:v6 options:groupOptions];

  objc_initWeak(&location, self);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __50__HFAccessoryProfileGroupItemProvider_reloadItems__block_invoke_3;
  v14[3] = &unk_277DFB120;
  v14[4] = self;
  v9 = [(HFItemProvider *)self reloadItemsWithObjects:v8 keyAdaptor:&__block_literal_global_107 itemAdaptor:&__block_literal_global_14_7 filter:0 itemMap:v14];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __50__HFAccessoryProfileGroupItemProvider_reloadItems__block_invoke_4;
  v12[3] = &unk_277DF30B8;
  objc_copyWeak(&v13, &location);
  v10 = [v9 flatMap:v12];
  objc_destroyWeak(&v13);

  objc_destroyWeak(&location);

  return v10;
}

id __50__HFAccessoryProfileGroupItemProvider_reloadItems__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_class();
  v4 = v2;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = v4;
    if (v5)
    {
      goto LABEL_8;
    }

    v7 = [MEMORY[0x277CCA890] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [v7 handleFailureInFunction:v8 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v3, objc_opt_class()}];
  }

  v6 = 0;
LABEL_8:

  v9 = [v6 groupIdentifier];

  return v9;
}

id __50__HFAccessoryProfileGroupItemProvider_reloadItems__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 profiles];
  v5 = [v3 groupIdentifier];

  v6 = [v2 _profileGroupItemForProfiles:v4 groupIdentifier:v5];

  return v6;
}

id __50__HFAccessoryProfileGroupItemProvider_reloadItems__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained profileGroupItems];
  v6 = [v3 addedItems];
  [v5 unionSet:v6];

  v7 = [WeakRetained profileGroupItems];
  v8 = [v3 removedItems];
  [v7 minusSet:v8];

  v9 = [MEMORY[0x277D2C900] futureWithResult:v3];

  return v9;
}

- (id)invalidationReasons
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7.receiver = self;
  v7.super_class = HFAccessoryProfileGroupItemProvider;
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

- (id)_profileGroupItemForProfiles:(id)profiles groupIdentifier:(id)identifier
{
  identifierCopy = identifier;
  profilesCopy = profiles;
  v8 = [HFAccessoryProfileGroupItem alloc];
  v9 = [MEMORY[0x277CBEB98] setWithArray:profilesCopy];

  home = [(HFAccessoryProfileGroupItemProvider *)self home];
  hf_characteristicValueManager = [home hf_characteristicValueManager];
  v12 = [(HFAccessoryProfileGroupItem *)v8 initWithProfiles:v9 groupIdentifier:identifierCopy valueSource:hf_characteristicValueManager];

  return v12;
}

@end