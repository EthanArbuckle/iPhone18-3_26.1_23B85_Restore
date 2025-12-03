@interface HMHomeManager(HFAdditions)
+ (id)hf_homeFutureForName:()HFAdditions;
- (HFMutableReorderableHomeKitItemList)hf_mutableOrderedHomesList;
- (id)hf_homeForName:()HFAdditions;
- (id)hf_homeForURL:()HFAdditions;
- (id)hf_homeWithIdentifier:()HFAdditions;
- (id)hf_orderedHomes;
- (id)hf_orderedHomesList;
- (id)hf_setHasSeenOnboardingWelcomeView:()HFAdditions;
- (id)hf_setOrderedHomes:()HFAdditions;
- (id)hf_setSeenNewFeaturesViewVersion:()HFAdditions;
- (id)hf_updateApplicationDataFuture;
- (uint64_t)hf_canAccessHomeRemotely:()HFAdditions;
- (uint64_t)hf_containsAtLeastOneHomeThatRequiresUpdate;
- (uint64_t)hf_hasSeenOnboardingWelcomeView;
- (uint64_t)hf_lastNewFeaturesViewVersionSeen;
- (unint64_t)hf_hasDetectediCloudIssue;
- (void)hf_enableEventLogOnboardingFlag;
@end

@implementation HMHomeManager(HFAdditions)

- (id)hf_homeWithIdentifier:()HFAdditions
{
  v4 = a3;
  homes = [self homes];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __52__HMHomeManager_HFAdditions__hf_homeWithIdentifier___block_invoke;
  v9[3] = &unk_277DF5E78;
  v10 = v4;
  v6 = v4;
  v7 = [homes na_firstObjectPassingTest:v9];

  return v7;
}

- (HFMutableReorderableHomeKitItemList)hf_mutableOrderedHomesList
{
  v4 = objc_getAssociatedObject(self, a2);
  if (!v4)
  {
    v4 = [(HFReorderableHomeKitItemList *)[HFMutableReorderableHomeKitItemList alloc] initWithApplicationDataContainer:self category:@"OrderedHomes"];
    objc_setAssociatedObject(self, a2, v4, 1);
  }

  return v4;
}

- (id)hf_orderedHomesList
{
  hf_mutableOrderedHomesList = [self hf_mutableOrderedHomesList];
  v2 = [hf_mutableOrderedHomesList copy];

  return v2;
}

- (id)hf_orderedHomes
{
  homes = [self homes];
  hf_mutableOrderedHomesList = [self hf_mutableOrderedHomesList];
  sortedHomeKitObjectComparator = [hf_mutableOrderedHomesList sortedHomeKitObjectComparator];
  v5 = [homes sortedArrayUsingComparator:sortedHomeKitObjectComparator];

  return v5;
}

- (id)hf_setOrderedHomes:()HFAdditions
{
  v4 = a3;
  hf_mutableOrderedHomesList = [self hf_mutableOrderedHomesList];
  [hf_mutableOrderedHomesList setSortedHomeKitObjects:v4];

  hf_mutableOrderedHomesList2 = [self hf_mutableOrderedHomesList];
  v7 = [hf_mutableOrderedHomesList2 saveWithSender:0];

  return v7;
}

+ (id)hf_homeFutureForName:()HFAdditions
{
  v3 = a3;
  v4 = +[HFHomeKitDispatcher sharedDispatcher];
  allHomesFuture = [v4 allHomesFuture];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __51__HMHomeManager_HFAdditions__hf_homeFutureForName___block_invoke;
  v9[3] = &unk_277DF5938;
  v10 = v3;
  v6 = v3;
  v7 = [allHomesFuture flatMap:v9];

  return v7;
}

- (id)hf_homeForURL:()HFAdditions
{
  v4 = a3;
  v5 = [[HFURLComponents alloc] initWithURL:v4];

  v6 = [(HFURLComponents *)v5 valueForParameter:@"homeid"];
  if (v6)
  {
    homes = [self homes];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __44__HMHomeManager_HFAdditions__hf_homeForURL___block_invoke;
    v10[3] = &unk_277DF5E78;
    v11 = v6;
    v8 = [homes na_firstObjectPassingTest:v10];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)hf_homeForName:()HFAdditions
{
  v4 = a3;
  hf_orderedHomes = [self hf_orderedHomes];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __45__HMHomeManager_HFAdditions__hf_homeForName___block_invoke;
  v10[3] = &unk_277DF5E78;
  v11 = v4;
  v6 = v4;
  v7 = [hf_orderedHomes na_filter:v10];

  if ([v7 count] == 1)
  {
    v8 = [v7 objectAtIndexedSubscript:0];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (uint64_t)hf_hasSeenOnboardingWelcomeView
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = HFLogForCategory(9uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    _cached_hasSeenOnboardingWelcomeViewNumber = [self _cached_hasSeenOnboardingWelcomeViewNumber];
    applicationData = [self applicationData];
    v5 = [applicationData objectForKey:@"hasSeenOnboardingWelcomeView"];
    v16 = 138412546;
    v17 = _cached_hasSeenOnboardingWelcomeViewNumber;
    v18 = 2112;
    v19 = v5;
    _os_log_impl(&dword_20D9BF000, v2, OS_LOG_TYPE_DEFAULT, "*** Cached_hasSeenOnboardingWelcomeViewNumber =  [%@] - applicationData = [%@] ***", &v16, 0x16u);
  }

  v6 = HFLogForCategory(9uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    applicationData2 = [self applicationData];
    dictionary = [applicationData2 dictionary];
    v16 = 138412290;
    v17 = dictionary;
    _os_log_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_DEFAULT, "*** applicationData = [%@] ***", &v16, 0xCu);
  }

  _cached_hasSeenOnboardingWelcomeViewNumber2 = [self _cached_hasSeenOnboardingWelcomeViewNumber];
  v10 = _cached_hasSeenOnboardingWelcomeViewNumber2;
  if (_cached_hasSeenOnboardingWelcomeViewNumber2)
  {
    v11 = _cached_hasSeenOnboardingWelcomeViewNumber2;
  }

  else
  {
    applicationData3 = [self applicationData];
    v11 = [applicationData3 objectForKey:@"hasSeenOnboardingWelcomeView"];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bOOLValue = [v11 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return bOOLValue;
}

- (id)hf_setHasSeenOnboardingWelcomeView:()HFAdditions
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = HFLogForCategory(9uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [MEMORY[0x277CCABB0] numberWithBool:a3];
    *buf = 138412290;
    v18 = v6;
    _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "*** Setting HasSeenOnboardingWelcomeView =  [%@]  ***", buf, 0xCu);
  }

  v7 = [MEMORY[0x277CCABB0] numberWithBool:a3];
  applicationData = [self applicationData];
  [applicationData setObject:v7 forKeyedSubscript:@"hasSeenOnboardingWelcomeView"];

  [self set_cached_hasSeenOnboardingWelcomeViewNumber:v7];
  hf_updateApplicationDataFuture = [self hf_updateApplicationDataFuture];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __65__HMHomeManager_HFAdditions__hf_setHasSeenOnboardingWelcomeView___block_invoke;
  v14[3] = &unk_277DF7350;
  v16 = a3;
  v14[4] = self;
  v15 = v7;
  v10 = v7;
  v11 = [hf_updateApplicationDataFuture addCompletionBlock:v14];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (uint64_t)hf_lastNewFeaturesViewVersionSeen
{
  _cached_lastOnboardingNewFeaturesVersionSeenNumber = [self _cached_lastOnboardingNewFeaturesVersionSeenNumber];
  v3 = _cached_lastOnboardingNewFeaturesVersionSeenNumber;
  if (_cached_lastOnboardingNewFeaturesVersionSeenNumber)
  {
    v4 = _cached_lastOnboardingNewFeaturesVersionSeenNumber;
  }

  else
  {
    applicationData = [self applicationData];
    v4 = [applicationData objectForKey:@"lastOnboardingNewFeaturesVersionSeen"];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    integerValue = [v4 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

- (id)hf_setSeenNewFeaturesViewVersion:()HFAdditions
{
  if ([self hf_lastNewFeaturesViewVersionSeen] <= a3)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
    applicationData = [self applicationData];
    [applicationData setObject:v6 forKeyedSubscript:@"lastOnboardingNewFeaturesVersionSeen"];

    [self set_cached_lastOnboardingNewFeaturesVersionSeenNumber:v6];
    hf_updateApplicationDataFuture = [self hf_updateApplicationDataFuture];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __63__HMHomeManager_HFAdditions__hf_setSeenNewFeaturesViewVersion___block_invoke;
    v11[3] = &unk_277DF7378;
    v12 = v6;
    v13 = a3;
    v11[4] = self;
    v9 = v6;
    futureWithNoResult = [hf_updateApplicationDataFuture addCompletionBlock:v11];
  }

  else
  {
    futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  return futureWithNoResult;
}

- (unint64_t)hf_hasDetectediCloudIssue
{
  if ([self dataSyncState] == 1)
  {
    return ([self status] >> 5) & 1;
  }

  else
  {
    return 1;
  }
}

- (id)hf_updateApplicationDataFuture
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __60__HMHomeManager_HFAdditions__hf_updateApplicationDataFuture__block_invoke;
  v3[3] = &unk_277DF2C68;
  v3[4] = self;
  v1 = [MEMORY[0x277D2C900] futureWithErrorOnlyHandlerAdapterBlock:v3];

  return v1;
}

- (void)hf_enableEventLogOnboardingFlag
{
  homes = [self homes];
  [homes na_each:&__block_literal_global_55];
}

- (uint64_t)hf_canAccessHomeRemotely:()HFAdditions
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([self residentProvisioningStatus])
  {
    v6 = HFLogForCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v12 = 138412290;
      v13 = v4;
      _os_log_error_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_ERROR, "No remote access to %@. Some resident on the account needs 2FA.", &v12, 0xCu);
    }

    goto LABEL_9;
  }

  hf_remoteAccessState = [v4 hf_remoteAccessState];
  if (([self residentProvisioningStatus] & 2) != 0 && hf_remoteAccessState == 1)
  {
    v6 = HFLogForCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      uniqueIdentifier = [v4 uniqueIdentifier];
      v12 = 138412546;
      v13 = v4;
      v14 = 2114;
      v15 = uniqueIdentifier;
      v8 = "No remote access to %@ (uniqueIdentifier: %{public}@). A resident that cannot be seen requires a key transfer and there are no enabled resident devices on the account.";
LABEL_6:
      _os_log_error_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_ERROR, v8, &v12, 0x16u);
    }
  }

  else
  {
    if (hf_remoteAccessState != 1 || ([v4 hf_isCurrentLocationHome] & 1) != 0)
    {
      v9 = 1;
      goto LABEL_10;
    }

    v6 = HFLogForCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      uniqueIdentifier = [v4 uniqueIdentifier];
      v12 = 138412546;
      v13 = v4;
      v14 = 2114;
      v15 = uniqueIdentifier;
      v8 = "No remote access to %@ (uniqueIdentifier: %{public}@). there are no enabled resident devices on the account and the user is not home.";
      goto LABEL_6;
    }
  }

LABEL_9:

  v9 = 0;
LABEL_10:

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (uint64_t)hf_containsAtLeastOneHomeThatRequiresUpdate
{
  homes = [self homes];
  v2 = [homes na_any:&__block_literal_global_27_1];

  return v2;
}

@end