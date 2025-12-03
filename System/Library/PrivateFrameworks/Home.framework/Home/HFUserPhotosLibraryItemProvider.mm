@interface HFUserPhotosLibraryItemProvider
- (HFUserPhotosLibraryItemProvider)initWithHome:(id)home;
- (id)invalidationReasons;
- (id)reloadItems;
@end

@implementation HFUserPhotosLibraryItemProvider

- (HFUserPhotosLibraryItemProvider)initWithHome:(id)home
{
  homeCopy = home;
  v11.receiver = self;
  v11.super_class = HFUserPhotosLibraryItemProvider;
  v6 = [(HFItemProvider *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_home, home);
    v8 = [MEMORY[0x277CBEB58] set];
    userPhotosLibraryItems = v7->_userPhotosLibraryItems;
    v7->_userPhotosLibraryItems = v8;
  }

  return v7;
}

- (id)reloadItems
{
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __46__HFUserPhotosLibraryItemProvider_reloadItems__block_invoke;
  aBlock[3] = &unk_277DFDD80;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  home = [(HFUserPhotosLibraryItemProvider *)self home];
  hf_allUsersIncludingCurrentUser = [home hf_allUsersIncludingCurrentUser];
  v6 = [(HFItemProvider *)self reloadItemsWithHomeKitObjects:hf_allUsersIncludingCurrentUser filter:0 itemMap:v3];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __46__HFUserPhotosLibraryItemProvider_reloadItems__block_invoke_2;
  v10[3] = &unk_277DF6960;
  v10[4] = self;
  v7 = [v6 flatMap:v10];
  v8 = [v7 recover:&__block_literal_global_155];

  return v8;
}

HFUserPhotosLibraryItem *__46__HFUserPhotosLibraryItemProvider_reloadItems__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = v3;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    v7 = [HFUserPhotosLibraryItem alloc];
    v8 = [*(a1 + 32) home];
    v9 = [(HFUserPhotosLibraryItem *)v7 initWithUser:v6 inHome:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

id __46__HFUserPhotosLibraryItemProvider_reloadItems__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 userPhotosLibraryItems];
  v6 = [v4 addedItems];
  [v5 unionSet:v6];

  v7 = [*(a1 + 32) userPhotosLibraryItems];
  v8 = [v4 removedItems];
  [v7 minusSet:v8];

  v9 = [MEMORY[0x277D2C900] futureWithResult:v4];

  return v9;
}

id __46__HFUserPhotosLibraryItemProvider_reloadItems__block_invoke_3(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = HFLogForCategory(0x2CuLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v7 = 138412290;
    v8 = v2;
    _os_log_error_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_ERROR, "Person fetch failed with error %@", &v7, 0xCu);
  }

  v4 = [MEMORY[0x277D2C900] futureWithNoResult];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)invalidationReasons
{
  v5.receiver = self;
  v5.super_class = HFUserPhotosLibraryItemProvider;
  invalidationReasons = [(HFItemProvider *)&v5 invalidationReasons];
  v3 = [invalidationReasons setByAddingObject:@"user"];

  return v3;
}

@end