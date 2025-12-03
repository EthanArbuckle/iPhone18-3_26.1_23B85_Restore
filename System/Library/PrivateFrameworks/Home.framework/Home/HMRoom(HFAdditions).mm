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
  accessories = [self accessories];
  v2 = [accessories na_flatMap:&__block_literal_global_102];

  return v2;
}

- (id)hf_unitaryCameraProfile
{
  hf_allCameraProfiles = [self hf_allCameraProfiles];
  if ([hf_allCameraProfiles count] == 1)
  {
    firstObject = [hf_allCameraProfiles firstObject];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

- (id)hf_allServices
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  accessories = [self accessories];
  v4 = [accessories countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(accessories);
        }

        services = [*(*(&v11 + 1) + 8 * i) services];
        [v2 addObjectsFromArray:services];
      }

      v5 = [accessories countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)hf_allZones
{
  home = [self home];
  zones = [home zones];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __34__HMRoom_HFAdditions__hf_allZones__block_invoke;
  v6[3] = &unk_277DF7EB0;
  v6[4] = self;
  v4 = [zones na_filter:v6];

  return v4;
}

- (id)hf_allUniqueMediaProfileContainersExcludingMediaGroups
{
  accessories = [self accessories];
  v3 = [accessories na_map:&__block_literal_global_3_14];

  hf_pairedHomePods = [self hf_pairedHomePods];
  v5 = [v3 arrayByAddingObjectsFromArray:hf_pairedHomePods];

  v6 = [v5 na_filter:&__block_literal_global_6_2];
  v7 = [v6 mutableCopy];

  v8 = [MEMORY[0x277CBEB98] setWithArray:v7];

  return v8;
}

- (id)hf_pairedHomePods
{
  accessories = [self accessories];
  v2 = [accessories na_map:&__block_literal_global_9_3];

  return v2;
}

- (id)hf_homePodPairsNotInHomeTheaterGroup
{
  hf_pairedHomePods = [self hf_pairedHomePods];
  v2 = [hf_pairedHomePods na_filter:&__block_literal_global_12_2];

  return v2;
}

- (id)hf_homePodsNotInHomeTheaterGroup
{
  accessories = [self accessories];
  v2 = [accessories na_filter:&__block_literal_global_15_3];

  return v2;
}

- (id)availableHomeTheaterMediaPartnerFor:()HFAdditions
{
  v4 = a3;
  if ([HFMediaHelper isHomePod:v4]|| [HFMediaHelper isHomePodMediaSystem:v4])
  {
    accessories = [self accessories];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __59__HMRoom_HFAdditions__availableHomeTheaterMediaPartnerFor___block_invoke;
    v19[3] = &unk_277DF3888;
    v20 = v4;
    v6 = [accessories na_firstObjectPassingTest:v19];

    mediaProfile = [v6 mediaProfile];

    mediaProfile2 = mediaProfile;
LABEL_4:

    goto LABEL_5;
  }

  if ([HFMediaHelper isAppleTV:v4])
  {
    hf_homePodPairsNotInHomeTheaterGroup = [self hf_homePodPairsNotInHomeTheaterGroup];
    v11 = [hf_homePodPairsNotInHomeTheaterGroup count];

    if (v11)
    {
      hf_homePodPairsNotInHomeTheaterGroup2 = [self hf_homePodPairsNotInHomeTheaterGroup];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __59__HMRoom_HFAdditions__availableHomeTheaterMediaPartnerFor___block_invoke_2;
      v17[3] = &unk_277DF7250;
      v13 = &v18;
      v18 = v4;
      mediaProfile2 = [hf_homePodPairsNotInHomeTheaterGroup2 na_firstObjectPassingTest:v17];
    }

    else
    {
      hf_homePodPairsNotInHomeTheaterGroup2 = [self hf_homePodsNotInHomeTheaterGroup];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __59__HMRoom_HFAdditions__availableHomeTheaterMediaPartnerFor___block_invoke_3;
      v15[3] = &unk_277DF3888;
      v13 = &v16;
      v16 = v4;
      v14 = [hf_homePodPairsNotInHomeTheaterGroup2 na_firstObjectPassingTest:v15];
      mediaProfile2 = [v14 mediaProfile];
    }

    mediaProfile = *v13;
    goto LABEL_4;
  }

  mediaProfile2 = 0;
LABEL_5:

  return mediaProfile2;
}

- (id)availableHomePodsSupportingStereoPairingVersions:()HFAdditions
{
  accessories = [self accessories];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __72__HMRoom_HFAdditions__availableHomePodsSupportingStereoPairingVersions___block_invoke;
  v7[3] = &__block_descriptor_40_e21_B16__0__HMAccessory_8l;
  v7[4] = a3;
  v5 = [accessories na_filter:v7];

  return v5;
}

- (uint64_t)hf_hasAtLeastOneAnnounceSupportedAccessory
{
  accessories = [self accessories];
  v2 = [accessories na_any:&__block_literal_global_18_3];

  return v2;
}

- (id)hf_allVisibleServices
{
  v1 = MEMORY[0x277CBEB98];
  accessories = [self accessories];
  v3 = [v1 setWithArray:accessories];
  v4 = [v3 na_flatMap:&__block_literal_global_21_2];

  return v4;
}

- (id)hf_visibleAccessories
{
  accessories = [self accessories];
  v2 = [accessories na_filter:&__block_literal_global_23_2];

  return v2;
}

- (uint64_t)hf_hasVisibleAccessories
{
  accessories = [self accessories];
  v2 = [accessories na_any:&__block_literal_global_25_5];

  return v2;
}

- (uint64_t)hf_shouldShowAnnounceButtonForThisRoom
{
  v16 = *MEMORY[0x277D85DE8];
  home = [self home];
  home2 = [self home];
  currentUser = [home2 currentUser];
  v5 = [home homeAccessControlForUser:currentUser];

  isAnnounceAccessAllowed = [v5 isAnnounceAccessAllowed];
  hf_atleastOneMediaAccessorySupportsAndHasAnnounceEnabled = [self hf_atleastOneMediaAccessorySupportsAndHasAnnounceEnabled];
  v8 = HFLogForCategory(7uLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11[0] = 67109634;
    v11[1] = isAnnounceAccessAllowed;
    v12 = 1024;
    v13 = hf_atleastOneMediaAccessorySupportsAndHasAnnounceEnabled;
    v14 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_DEFAULT, "isAnnounceAccessAllowedForThisUser = %d, atleastOneMediaAccessorySupportsAnnounce = [%d], for room = %@", v11, 0x18u);
  }

  v9 = *MEMORY[0x277D85DE8];
  return isAnnounceAccessAllowed & hf_atleastOneMediaAccessorySupportsAndHasAnnounceEnabled;
}

- (uint64_t)hf_shouldShowAnnounceFeatureForThisRoom
{
  v9 = *MEMORY[0x277D85DE8];
  hf_atleastOneHomePodSupportsAnnounce = [self hf_atleastOneHomePodSupportsAnnounce];
  v3 = HFLogForCategory(7uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109378;
    v6[1] = hf_atleastOneHomePodSupportsAnnounce;
    v7 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_DEFAULT, "atleastOneHomePodSupportsAnnounce = [%d], for room = %@", v6, 0x12u);
  }

  v4 = *MEMORY[0x277D85DE8];
  return hf_atleastOneHomePodSupportsAnnounce;
}

- (uint64_t)hf_atleastOneHomePodSupportsAnnounce
{
  accessories = [self accessories];
  v2 = [accessories na_any:&__block_literal_global_27_5];

  return v2;
}

- (uint64_t)hf_atleastOneMediaAccessorySupportsAndHasAnnounceEnabled
{
  accessories = [self accessories];
  v2 = [accessories na_any:&__block_literal_global_29_0];

  return v2;
}

- (uint64_t)hf_hasAtLeastOneReachableHomeMediaAccessory
{
  accessories = [self accessories];
  v2 = [accessories na_any:&__block_literal_global_32_1];

  return v2;
}

- (HFReorderableHomeKitItemList)hf_reorderableServicesList
{
  v1 = [[HFReorderableHomeKitItemList alloc] initWithApplicationDataContainer:self category:@"roomServices"];

  return v1;
}

- (HFRoomDashboardReorderableItemList)hf_reorderableDashboardSectionList
{
  v1 = [[HFRoomDashboardReorderableItemList alloc] initWithApplicationDataContainer:self category:@"dashboardSections"];

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
  home = [self home];
  hf_dashboardSectionReorderableUUIDStringComparator = [home hf_dashboardSectionReorderableUUIDStringComparator];
  v5 = [v2 initWithKey:@"uniqueIdentifier.UUIDString" ascending:1 comparator:hf_dashboardSectionReorderableUUIDStringComparator];

  return v5;
}

- (id)hf_allNonEmptyActionSets
{
  home = [self home];
  hf_allNonEmptyActionSets = [home hf_allNonEmptyActionSets];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__HMRoom_HFAdditions__hf_allNonEmptyActionSets__block_invoke;
  v6[3] = &unk_277DF4280;
  v6[4] = self;
  v4 = [hf_allNonEmptyActionSets na_filter:v6];

  return v4;
}

- (id)hf_accessoryRepresentableUsageCountsWithFilter:()HFAdditions
{
  v4 = a3;
  v5 = [HFBiomeUsageCountsFetchRequest alloc];
  home = [self home];
  v7 = [(HFBiomeUsageCountsFetchRequest *)v5 initWithHome:home];

  [(HFBiomeAbstractFetchRequest *)v7 setRoom:self];
  [(HFBiomeUsageCountsFetchRequest *)v7 setFilter:v4];

  fetch = [(HFBiomeAbstractFetchRequest *)v7 fetch];

  return fetch;
}

@end