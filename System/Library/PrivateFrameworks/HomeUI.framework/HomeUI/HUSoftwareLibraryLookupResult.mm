@interface HUSoftwareLibraryLookupResult
+ (id)_libraryResultForRequests:(id)requests;
+ (id)_storeResultForRequests:(id)requests;
+ (id)resultForAccessories:(id)accessories;
+ (id)resultForRequests:(id)requests;
- (HUSoftwareLibraryLookupResult)init;
@end

@implementation HUSoftwareLibraryLookupResult

- (HUSoftwareLibraryLookupResult)init
{
  v14.receiver = self;
  v14.super_class = HUSoftwareLibraryLookupResult;
  v2 = [(HUSoftwareLibraryLookupResult *)&v14 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB98] set];
    matchedLibraryItems = v2->_matchedLibraryItems;
    v2->_matchedLibraryItems = v3;

    dictionary = [MEMORY[0x277CBEAC0] dictionary];
    accessoriesByBundleIDs = v2->_accessoriesByBundleIDs;
    v2->_accessoriesByBundleIDs = dictionary;

    v7 = [MEMORY[0x277CBEB98] set];
    matchedStoreItems = v2->_matchedStoreItems;
    v2->_matchedStoreItems = v7;

    dictionary2 = [MEMORY[0x277CBEAC0] dictionary];
    accessoriesByStoreIDs = v2->_accessoriesByStoreIDs;
    v2->_accessoriesByStoreIDs = dictionary2;

    v11 = [MEMORY[0x277CBEB98] set];
    unmatchedRequests = v2->_unmatchedRequests;
    v2->_unmatchedRequests = v11;
  }

  return v2;
}

+ (id)resultForAccessories:(id)accessories
{
  v4 = [accessories na_map:&__block_literal_global_280];
  v5 = [self resultForRequests:v4];

  return v5;
}

HUSoftwareLibraryLookupRequest *__54__HUSoftwareLibraryLookupResult_resultForAccessories___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[HUSoftwareLibraryLookupRequest alloc] initWithAccessory:v2];

  return v3;
}

+ (id)resultForRequests:(id)requests
{
  v4 = [self _libraryResultForRequests:requests];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__HUSoftwareLibraryLookupResult_resultForRequests___block_invoke;
  v7[3] = &__block_descriptor_40_e49___NAFuture_16__0__HUSoftwareLibraryLookupResult_8l;
  v7[4] = self;
  v5 = [v4 flatMap:v7];

  return v5;
}

id __51__HUSoftwareLibraryLookupResult_resultForRequests___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 unmatchedRequests];
  v6 = [v4 _storeResultForRequests:v5];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __51__HUSoftwareLibraryLookupResult_resultForRequests___block_invoke_2;
  v10[3] = &unk_277DC4120;
  v11 = v3;
  v7 = v3;
  v8 = [v6 flatMap:v10];

  return v8;
}

id __51__HUSoftwareLibraryLookupResult_resultForRequests___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(HUSoftwareLibraryLookupResult);
  v5 = [*(a1 + 32) matchedLibraryItems];
  [(HUSoftwareLibraryLookupResult *)v4 setMatchedLibraryItems:v5];

  v6 = [*(a1 + 32) accessoriesByBundleIDs];
  [(HUSoftwareLibraryLookupResult *)v4 setAccessoriesByBundleIDs:v6];

  v7 = [v3 matchedStoreItems];
  [(HUSoftwareLibraryLookupResult *)v4 setMatchedStoreItems:v7];

  v8 = [v3 accessoriesByStoreIDs];
  [(HUSoftwareLibraryLookupResult *)v4 setAccessoriesByStoreIDs:v8];

  v9 = [v3 unmatchedRequests];

  [(HUSoftwareLibraryLookupResult *)v4 setUnmatchedRequests:v9];
  v10 = [MEMORY[0x277D2C900] futureWithResult:v4];

  return v10;
}

+ (id)_libraryResultForRequests:(id)requests
{
  requestsCopy = requests;
  v4 = MEMORY[0x277D2C900];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __59__HUSoftwareLibraryLookupResult__libraryResultForRequests___block_invoke;
  v8[3] = &unk_277DB7580;
  v9 = requestsCopy;
  v5 = requestsCopy;
  v6 = [v4 futureWithBlock:v8];

  return v6;
}

void __59__HUSoftwareLibraryLookupResult__libraryResultForRequests___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CBEB58];
  v4 = a2;
  v5 = [v3 set];
  v6 = [MEMORY[0x277CBEB38] dictionary];
  v7 = *(a1 + 32);
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __59__HUSoftwareLibraryLookupResult__libraryResultForRequests___block_invoke_2;
  v15 = &unk_277DC4168;
  v16 = v6;
  v17 = v5;
  v8 = v5;
  v9 = v6;
  v10 = [v7 na_map:&v12];
  v11 = objc_alloc_init(HUSoftwareLibraryLookupResult);
  [(HUSoftwareLibraryLookupResult *)v11 setMatchedLibraryItems:v10, v12, v13, v14, v15];
  [(HUSoftwareLibraryLookupResult *)v11 setAccessoriesByBundleIDs:v9];
  [(HUSoftwareLibraryLookupResult *)v11 setUnmatchedRequests:v8];
  [v4 finishWithResult:v11];
}

id __59__HUSoftwareLibraryLookupResult__libraryResultForRequests___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x277CC1E60];
  v5 = [v3 bundleID];
  v6 = [v4 applicationProxyForIdentifier:v5];

  if ([v6 hf_isInstalledForLaunching] && (objc_msgSend(v3, "bundleID"), v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    v8 = [v3 accessory];

    if (v8)
    {
      v9 = *(a1 + 32);
      v10 = [v3 bundleID];
      v11 = [v9 na_objectForKey:v10 withDefaultValue:&__block_literal_global_37_0];
      v12 = [v3 accessory];
      [v11 addObject:v12];
    }

    v13 = v6;
  }

  else
  {
    [*(a1 + 40) addObject:v3];
    v13 = 0;
  }

  return v13;
}

+ (id)_storeResultForRequests:(id)requests
{
  requestsCopy = requests;
  if ([requestsCopy count])
  {
    v4 = [requestsCopy na_map:&__block_literal_global_41_2];
    v5 = MEMORY[0x277CEE3F8];
    bagSubProfile = [MEMORY[0x277CEE510] bagSubProfile];
    bagSubProfileVersion = [MEMORY[0x277CEE510] bagSubProfileVersion];
    v8 = [v5 bagForProfile:bagSubProfile profileVersion:bagSubProfileVersion];

    v9 = objc_alloc(MEMORY[0x277CEE510]);
    v10 = [v9 initWithBag:v8 caller:*MEMORY[0x277D13948] keyProfile:*MEMORY[0x277CEE1E8]];
    allObjects = [v4 allObjects];
    v12 = [v10 performLookupWithBundleIdentifiers:0 itemIdentifiers:allObjects];

    v13 = MEMORY[0x277D2C900];
    v21 = MEMORY[0x277D85DD0];
    v22 = v12;
    v23 = requestsCopy;
    v14 = MEMORY[0x277D2C938];
    v15 = v12;
    mainThreadScheduler = [v14 mainThreadScheduler];
    v17 = [v13 futureWithBlock:&v21 scheduler:mainThreadScheduler];
  }

  else
  {
    v18 = MEMORY[0x277D2C900];
    v19 = objc_alloc_init(HUSoftwareLibraryLookupResult);
    v17 = [v18 futureWithResult:v19];
  }

  return v17;
}

void __57__HUSoftwareLibraryLookupResult__storeResultForRequests___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __57__HUSoftwareLibraryLookupResult__storeResultForRequests___block_invoke_3;
  v6[3] = &unk_277DC4200;
  v4 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = v3;
  v5 = v3;
  [v4 addFinishBlock:v6];
}

void __57__HUSoftwareLibraryLookupResult__storeResultForRequests___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v5 = *(a1 + 32);
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __57__HUSoftwareLibraryLookupResult__storeResultForRequests___block_invoke_4;
  v16 = &unk_277DC41D8;
  v17 = v3;
  v18 = v4;
  v6 = v4;
  v7 = v3;
  v8 = [v5 na_filter:&v13];
  v9 = objc_alloc_init(HUSoftwareLibraryLookupResult);
  v10 = MEMORY[0x277CBEB98];
  v11 = [v7 allItems];
  v12 = [v10 setWithArray:v11];
  [(HUSoftwareLibraryLookupResult *)v9 setMatchedStoreItems:v12];

  [(HUSoftwareLibraryLookupResult *)v9 setAccessoriesByStoreIDs:v6];
  [(HUSoftwareLibraryLookupResult *)v9 setUnmatchedRequests:v8];
  [*(a1 + 40) finishWithResult:v9];
}

BOOL __57__HUSoftwareLibraryLookupResult__storeResultForRequests___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) allItems];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __57__HUSoftwareLibraryLookupResult__storeResultForRequests___block_invoke_5;
  v13[3] = &unk_277DC41B0;
  v5 = v3;
  v14 = v5;
  v6 = [v4 na_firstObjectPassingTest:v13];

  v7 = [v5 accessory];

  if (v7 && v6)
  {
    v8 = *(a1 + 40);
    v9 = [v5 storeID];
    v10 = [v8 na_objectForKey:v9 withDefaultValue:&__block_literal_global_46_2];
    v11 = [v5 accessory];
    [v10 addObject:v11];
  }

  return v6 == 0;
}

uint64_t __57__HUSoftwareLibraryLookupResult__storeResultForRequests___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = [a2 iTunesStoreIdentifier];
  v4 = [v3 stringValue];
  v5 = [*(a1 + 32) storeID];
  v6 = [v4 isEqualToString:v5];

  return v6;
}

@end