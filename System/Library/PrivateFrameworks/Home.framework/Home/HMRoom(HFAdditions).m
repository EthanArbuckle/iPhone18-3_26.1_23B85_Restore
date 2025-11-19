@interface HMRoom(HFAdditions)
- (HFReorderableHomeKitItemList)hf_reorderableServicesList;
- (HFRoomDashboardReorderableItemList)hf_reorderableDashboardSectionList;
- (id)availableHomePodsSupportingStereoPairingVersions:()HFAdditions;
- (id)availableHomeTheaterMediaPartnerFor:()HFAdditions;
- (id)hf_accessoryRepresentableUsageCountsWithFilter:()HFAdditions;
- (id)hf_allCameraProfiles;
- (id)hf_allNonEmptyActionSets;
- (id)hf_allServices;
- (id)hf_allUniqueMediaProfileContainersExcludingMediaGroups;
- (id)hf_allVisibleServices;
- (id)hf_allZones;
- (id)hf_dashboardSectionReorderableUUIDStringComparator;
- (id)hf_homePodPairsNotInHomeTheaterGroup;
- (id)hf_homePodsNotInHomeTheaterGroup;
- (id)hf_pairedHomePods;
- (id)hf_roomsSortDescriptorUsingDashboardSectionOrder;
- (id)hf_unitaryCameraProfile;
- (id)hf_visibleAccessories;
- (uint64_t)hf_atleastOneHomePodSupportsAnnounce;
- (uint64_t)hf_atleastOneMediaAccessorySupportsAndHasAnnounceEnabled;
- (uint64_t)hf_hasAtLeastOneAnnounceSupportedAccessory;
- (uint64_t)hf_hasAtLeastOneReachableHomeMediaAccessory;
- (uint64_t)hf_hasVisibleAccessories;
- (uint64_t)hf_shouldShowAnnounceButtonForThisRoom;
- (uint64_t)hf_shouldShowAnnounceFeatureForThisRoom;
@end

@implementation HMRoom(HFAdditions)

- (id)hf_allCameraProfiles
{
  v1 = [a1 accessories];
  v2 = [v1 na_flatMap:&__block_literal_global_102];

  return v2;
}

- (id)hf_unitaryCameraProfile
{
  v1 = [a1 hf_allCameraProfiles];
  if ([v1 count] == 1)
  {
    v2 = [v1 firstObject];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)hf_allServices
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [a1 accessories];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v11 + 1) + 8 * i) services];
        [v2 addObjectsFromArray:v8];
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)hf_allZones
{
  v2 = [a1 home];
  v3 = [v2 zones];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __34__HMRoom_HFAdditions__hf_allZones__block_invoke;
  v6[3] = &unk_277DF7EB0;
  v6[4] = a1;
  v4 = [v3 na_filter:v6];

  return v4;
}

- (id)hf_allUniqueMediaProfileContainersExcludingMediaGroups
{
  v2 = [a1 accessories];
  v3 = [v2 na_map:&__block_literal_global_3_14];

  v4 = [a1 hf_pairedHomePods];
  v5 = [v3 arrayByAddingObjectsFromArray:v4];

  v6 = [v5 na_filter:&__block_literal_global_6_2];
  v7 = [v6 mutableCopy];

  v8 = [MEMORY[0x277CBEB98] setWithArray:v7];

  return v8;
}

- (id)hf_pairedHomePods
{
  v1 = [a1 accessories];
  v2 = [v1 na_map:&__block_literal_global_9_3];

  return v2;
}

- (id)hf_homePodPairsNotInHomeTheaterGroup
{
  v1 = [a1 hf_pairedHomePods];
  v2 = [v1 na_filter:&__block_literal_global_12_2];

  return v2;
}

- (id)hf_homePodsNotInHomeTheaterGroup
{
  v1 = [a1 accessories];
  v2 = [v1 na_filter:&__block_literal_global_15_3];

  return v2;
}

- (id)availableHomeTheaterMediaPartnerFor:()HFAdditions
{
  v4 = a3;
  if ([HFMediaHelper isHomePod:v4]|| [HFMediaHelper isHomePodMediaSystem:v4])
  {
    v5 = [a1 accessories];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __59__HMRoom_HFAdditions__availableHomeTheaterMediaPartnerFor___block_invoke;
    v19[3] = &unk_277DF3888;
    v20 = v4;
    v6 = [v5 na_firstObjectPassingTest:v19];

    v7 = [v6 mediaProfile];

    v8 = v7;
LABEL_4:

    goto LABEL_5;
  }

  if ([HFMediaHelper isAppleTV:v4])
  {
    v10 = [a1 hf_homePodPairsNotInHomeTheaterGroup];
    v11 = [v10 count];

    if (v11)
    {
      v12 = [a1 hf_homePodPairsNotInHomeTheaterGroup];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __59__HMRoom_HFAdditions__availableHomeTheaterMediaPartnerFor___block_invoke_2;
      v17[3] = &unk_277DF7250;
      v13 = &v18;
      v18 = v4;
      v8 = [v12 na_firstObjectPassingTest:v17];
    }

    else
    {
      v12 = [a1 hf_homePodsNotInHomeTheaterGroup];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __59__HMRoom_HFAdditions__availableHomeTheaterMediaPartnerFor___block_invoke_3;
      v15[3] = &unk_277DF3888;
      v13 = &v16;
      v16 = v4;
      v14 = [v12 na_firstObjectPassingTest:v15];
      v8 = [v14 mediaProfile];
    }

    v7 = *v13;
    goto LABEL_4;
  }

  v8 = 0;
LABEL_5:

  return v8;
}

- (id)availableHomePodsSupportingStereoPairingVersions:()HFAdditions
{
  v4 = [a1 accessories];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __72__HMRoom_HFAdditions__availableHomePodsSupportingStereoPairingVersions___block_invoke;
  v7[3] = &__block_descriptor_40_e21_B16__0__HMAccessory_8l;
  v7[4] = a3;
  v5 = [v4 na_filter:v7];

  return v5;
}

- (uint64_t)hf_hasAtLeastOneAnnounceSupportedAccessory
{
  v1 = [a1 accessories];
  v2 = [v1 na_any:&__block_literal_global_18_3];

  return v2;
}

- (id)hf_allVisibleServices
{
  v1 = MEMORY[0x277CBEB98];
  v2 = [a1 accessories];
  v3 = [v1 setWithArray:v2];
  v4 = [v3 na_flatMap:&__block_literal_global_21_2];

  return v4;
}

- (id)hf_visibleAccessories
{
  v1 = [a1 accessories];
  v2 = [v1 na_filter:&__block_literal_global_23_2];

  return v2;
}

- (uint64_t)hf_hasVisibleAccessories
{
  v1 = [a1 accessories];
  v2 = [v1 na_any:&__block_literal_global_25_5];

  return v2;
}

- (uint64_t)hf_shouldShowAnnounceButtonForThisRoom
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [a1 home];
  v3 = [a1 home];
  v4 = [v3 currentUser];
  v5 = [v2 homeAccessControlForUser:v4];

  v6 = [v5 isAnnounceAccessAllowed];
  v7 = [a1 hf_atleastOneMediaAccessorySupportsAndHasAnnounceEnabled];
  v8 = HFLogForCategory(7uLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11[0] = 67109634;
    v11[1] = v6;
    v12 = 1024;
    v13 = v7;
    v14 = 2112;
    v15 = a1;
    _os_log_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_DEFAULT, "isAnnounceAccessAllowedForThisUser = %d, atleastOneMediaAccessorySupportsAnnounce = [%d], for room = %@", v11, 0x18u);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6 & v7;
}

- (uint64_t)hf_shouldShowAnnounceFeatureForThisRoom
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = [a1 hf_atleastOneHomePodSupportsAnnounce];
  v3 = HFLogForCategory(7uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109378;
    v6[1] = v2;
    v7 = 2112;
    v8 = a1;
    _os_log_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_DEFAULT, "atleastOneHomePodSupportsAnnounce = [%d], for room = %@", v6, 0x12u);
  }

  v4 = *MEMORY[0x277D85DE8];
  return v2;
}

- (uint64_t)hf_atleastOneHomePodSupportsAnnounce
{
  v1 = [a1 accessories];
  v2 = [v1 na_any:&__block_literal_global_27_5];

  return v2;
}

- (uint64_t)hf_atleastOneMediaAccessorySupportsAndHasAnnounceEnabled
{
  v1 = [a1 accessories];
  v2 = [v1 na_any:&__block_literal_global_29_0];

  return v2;
}

- (uint64_t)hf_hasAtLeastOneReachableHomeMediaAccessory
{
  v1 = [a1 accessories];
  v2 = [v1 na_any:&__block_literal_global_32_1];

  return v2;
}

- (HFReorderableHomeKitItemList)hf_reorderableServicesList
{
  v1 = [[HFReorderableHomeKitItemList alloc] initWithApplicationDataContainer:a1 category:@"roomServices"];

  return v1;
}

- (HFRoomDashboardReorderableItemList)hf_reorderableDashboardSectionList
{
  v1 = [[HFRoomDashboardReorderableItemList alloc] initWithApplicationDataContainer:a1 category:@"dashboardSections"];

  return v1;
}

- (id)hf_dashboardSectionReorderableUUIDStringComparator
{
  objc_initWeak(&location, val);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __73__HMRoom_HFAdditions__hf_dashboardSectionReorderableUUIDStringComparator__block_invoke;
  v3[3] = &unk_277DF8288;
  objc_copyWeak(&v4, &location);
  v1 = _Block_copy(v3);
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);

  return v1;
}

- (id)hf_roomsSortDescriptorUsingDashboardSectionOrder
{
  v2 = objc_alloc(MEMORY[0x277CCAC98]);
  v3 = [a1 home];
  v4 = [v3 hf_dashboardSectionReorderableUUIDStringComparator];
  v5 = [v2 initWithKey:@"uniqueIdentifier.UUIDString" ascending:1 comparator:v4];

  return v5;
}

- (id)hf_allNonEmptyActionSets
{
  v2 = [a1 home];
  v3 = [v2 hf_allNonEmptyActionSets];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__HMRoom_HFAdditions__hf_allNonEmptyActionSets__block_invoke;
  v6[3] = &unk_277DF4280;
  v6[4] = a1;
  v4 = [v3 na_filter:v6];

  return v4;
}

- (id)hf_accessoryRepresentableUsageCountsWithFilter:()HFAdditions
{
  v4 = a3;
  v5 = [HFBiomeUsageCountsFetchRequest alloc];
  v6 = [a1 home];
  v7 = [(HFBiomeUsageCountsFetchRequest *)v5 initWithHome:v6];

  [(HFBiomeAbstractFetchRequest *)v7 setRoom:a1];
  [(HFBiomeUsageCountsFetchRequest *)v7 setFilter:v4];

  v8 = [(HFBiomeAbstractFetchRequest *)v7 fetch];

  return v8;
}

@end