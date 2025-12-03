@interface HFItemProviderUtilities
+ (id)_servicesForHome:(id)home canShowInControlCentre:(BOOL)centre withLimit:(unint64_t)limit includes:(unint64_t)includes ignoreUUIDs:(id)ds;
+ (id)favoriteActionSetsForHome:(id)home withLimit:(unint64_t)limit;
@end

@implementation HFItemProviderUtilities

+ (id)favoriteActionSetsForHome:(id)home withLimit:(unint64_t)limit
{
  if (limit)
  {
    homeCopy = home;
    hf_reorderableActionSetsList = [homeCopy hf_reorderableActionSetsList];
    actionSets = [homeCopy actionSets];

    v8 = [actionSets na_filter:&__block_literal_global_170];
    sortedHomeKitObjectComparator = [hf_reorderableActionSetsList sortedHomeKitObjectComparator];
    v10 = [v8 sortedArrayUsingComparator:sortedHomeKitObjectComparator];

    if ([v10 count] > limit)
    {
      v11 = [v10 subarrayWithRange:{0, limit}];

      v10 = v11;
    }
  }

  else
  {
    v10 = MEMORY[0x277CBEBF8];
  }

  return v10;
}

uint64_t __63__HFItemProviderUtilities_favoriteActionSetsForHome_withLimit___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (([v2 hf_isAnonymous] & 1) != 0 || (objc_msgSend(v2, "actions"), v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "count"), v3, !v4))
  {
    v5 = 0;
  }

  else
  {
    v5 = [v2 hf_effectiveShowInHomeDashboard];
  }

  return v5;
}

+ (id)_servicesForHome:(id)home canShowInControlCentre:(BOOL)centre withLimit:(unint64_t)limit includes:(unint64_t)includes ignoreUUIDs:(id)ds
{
  dsCopy = ds;
  if (limit)
  {
    homeCopy = home;
    hf_reorderableServicesList = [homeCopy hf_reorderableServicesList];
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __98__HFItemProviderUtilities__servicesForHome_canShowInControlCentre_withLimit_includes_ignoreUUIDs___block_invoke;
    aBlock[3] = &__block_descriptor_41_e75_B16__0___HFFavoritable__HFIncludedContextProtocol__HFShowInHomeDashboard__8l;
    aBlock[4] = includes;
    v73 = includes == 0;
    v13 = _Block_copy(aBlock);
    limitCopy = limit;
    v14 = MEMORY[0x277CBEB98];
    hf_allVisibleServices = [homeCopy hf_allVisibleServices];
    v67[0] = MEMORY[0x277D85DD0];
    v67[1] = 3221225472;
    v67[2] = __98__HFItemProviderUtilities__servicesForHome_canShowInControlCentre_withLimit_includes_ignoreUUIDs___block_invoke_3;
    v67[3] = &unk_277DFE828;
    v16 = v13;
    v69 = v16;
    v49 = dsCopy;
    v17 = dsCopy;
    centreCopy = centre;
    v68 = v17;
    v70 = &__block_literal_global_4_11;
    v18 = [hf_allVisibleServices na_filter:v67];
    v50 = [v14 setWithSet:v18];

    v19 = MEMORY[0x277CBEB98];
    hf_visibleAccessories = [homeCopy hf_visibleAccessories];
    v62[0] = MEMORY[0x277D85DD0];
    v62[1] = 3221225472;
    v62[2] = __98__HFItemProviderUtilities__servicesForHome_canShowInControlCentre_withLimit_includes_ignoreUUIDs___block_invoke_4;
    v62[3] = &unk_277DFE850;
    centreCopy2 = centre;
    v21 = v16;
    v64 = v21;
    v22 = v17;
    v63 = v22;
    v65 = &__block_literal_global_4_11;
    v23 = [hf_visibleAccessories na_filter:v62];
    v24 = [v19 setWithArray:v23];

    v25 = MEMORY[0x277CBEB58];
    serviceGroups = [homeCopy serviceGroups];
    v59[0] = MEMORY[0x277D85DD0];
    v59[1] = 3221225472;
    v59[2] = __98__HFItemProviderUtilities__servicesForHome_canShowInControlCentre_withLimit_includes_ignoreUUIDs___block_invoke_7;
    v59[3] = &unk_277DFE878;
    v27 = v22;
    v60 = v27;
    v28 = v21;
    v61 = v28;
    v29 = [serviceGroups na_filter:v59];
    v30 = [v25 setWithArray:v29];

    v31 = objc_opt_new();
    hf_mediaAccessories = [homeCopy hf_mediaAccessories];
    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 3221225472;
    v55[2] = __98__HFItemProviderUtilities__servicesForHome_canShowInControlCentre_withLimit_includes_ignoreUUIDs___block_invoke_9;
    v55[3] = &unk_277DFE8A0;
    v33 = v28;
    v58 = v33;
    v34 = v27;
    v56 = v34;
    v35 = v31;
    v57 = v35;
    [hf_mediaAccessories enumerateObjectsUsingBlock:v55];

    v36 = objc_opt_new();
    mediaSystems = [homeCopy mediaSystems];

    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = __98__HFItemProviderUtilities__servicesForHome_canShowInControlCentre_withLimit_includes_ignoreUUIDs___block_invoke_10;
    v51[3] = &unk_277DFE8C8;
    v38 = v33;
    v54 = v38;
    v52 = v34;
    v39 = v36;
    v53 = v39;
    [mediaSystems enumerateObjectsUsingBlock:v51];

    v40 = [MEMORY[0x277CBEB58] set];
    [v40 unionSet:v24];
    [v40 unionSet:v50];
    [v40 unionSet:v30];
    [v40 unionSet:v35];
    [v40 unionSet:v39];
    allObjects = [v40 allObjects];
    v42 = [allObjects mutableCopy];

    sortedHomeKitObjectComparator = [hf_reorderableServicesList sortedHomeKitObjectComparator];
    [v42 sortUsingComparator:sortedHomeKitObjectComparator];

    v44 = [v42 copy];
    if ([v44 count] > limitCopy)
    {
      v45 = [v44 subarrayWithRange:{0, limitCopy}];

      v44 = v45;
    }

    dsCopy = v49;
  }

  else
  {
    v44 = MEMORY[0x277CBEBF8];
  }

  return v44;
}

uint64_t __98__HFItemProviderUtilities__servicesForHome_canShowInControlCentre_withLimit_includes_ignoreUUIDs___block_invoke(uint64_t a1, void *a2)
{
  if (*(a1 + 32) != 2)
  {
    return *(a1 + 40) == [a2 hf_effectiveShowInHomeDashboard];
  }

  return [a2 hf_shouldBeOnForContextType:0];
}

uint64_t __98__HFItemProviderUtilities__servicesForHome_canShowInControlCentre_withLimit_includes_ignoreUUIDs___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = (*(*(a1 + 40) + 16))();
  v5 = *(a1 + 32);
  v6 = [v3 uniqueIdentifier];
  if ([v5 containsObject:v6])
  {
    v7 = 1;
  }

  else
  {
    v8 = *(a1 + 32);
    v9 = [v3 accessory];
    v10 = [v9 uniqueIdentifier];
    v7 = [v8 containsObject:v10];
  }

  if (*(a1 + 56) == 1)
  {
    v11 = [v3 hf_showsAsServiceInControlCentre] ^ 1;
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  v12 = 0;
  if (!(v7 & 1 | ((v4 & 1) == 0)) && (v11 & 1) == 0)
  {
    if ([v3 hf_isInGroup])
    {
      v12 = 0;
    }

    else
    {
      v13 = *(a1 + 48);
      v14 = [v3 accessory];
      v12 = (*(v13 + 16))(v13, v14) ^ 1;
    }
  }

  return v12;
}

uint64_t __98__HFItemProviderUtilities__servicesForHome_canShowInControlCentre_withLimit_includes_ignoreUUIDs___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 profiles];
  v5 = [v4 na_any:&__block_literal_global_9_7];

  if (*(a1 + 56) == 1)
  {
    v6 = [v3 hf_showsAsAccessoryInControlCentre] ^ 1;
  }

  else
  {
    v6 = 0;
  }

  v7 = (*(*(a1 + 40) + 16))();
  v8 = *(a1 + 32);
  v9 = [v3 uniqueIdentifier];
  if ([v8 containsObject:v9])
  {

    v10 = 0;
  }

  else
  {
    v11 = [v3 hf_visibleServices];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __98__HFItemProviderUtilities__servicesForHome_canShowInControlCentre_withLimit_includes_ignoreUUIDs___block_invoke_6;
    v14[3] = &unk_277DF4020;
    v15 = *(a1 + 32);
    v12 = [v11 na_any:v14];

    v10 = 0;
    if (v7 && (v12 & 1) == 0)
    {
      if (([v3 hf_areAllServicesInGroups] | v6 | v5))
      {
        v10 = 0;
      }

      else
      {
        v10 = (*(*(a1 + 48) + 16))();
      }
    }
  }

  return v10;
}

uint64_t __98__HFItemProviderUtilities__servicesForHome_canShowInControlCentre_withLimit_includes_ignoreUUIDs___block_invoke_6(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 uniqueIdentifier];
  v4 = [v2 containsObject:v3];

  return v4;
}

uint64_t __98__HFItemProviderUtilities__servicesForHome_canShowInControlCentre_withLimit_includes_ignoreUUIDs___block_invoke_7(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 uniqueIdentifier];
  v6 = [v4 containsObject:v5];

  v7 = 0;
  if ([v3 hf_isSupported] && (v6 & 1) == 0)
  {
    v8 = [v3 services];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __98__HFItemProviderUtilities__servicesForHome_canShowInControlCentre_withLimit_includes_ignoreUUIDs___block_invoke_8;
    v10[3] = &unk_277DF66C8;
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v7 = [v8 na_any:v10];
  }

  return v7;
}

uint64_t __98__HFItemProviderUtilities__servicesForHome_canShowInControlCentre_withLimit_includes_ignoreUUIDs___block_invoke_8(uint64_t a1, void *a2)
{
  v2 = a1;
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 uniqueIdentifier];
  LODWORD(v3) = [v3 containsObject:v5];

  LODWORD(v2) = (*(*(v2 + 40) + 16))();
  return v2 & (v3 ^ 1);
}

void __98__HFItemProviderUtilities__servicesForHome_canShowInControlCentre_withLimit_includes_ignoreUUIDs___block_invoke_9(uint64_t a1, void *a2)
{
  v7 = a2;
  if ((*(*(a1 + 48) + 16))())
  {
    v3 = [v7 home];
    v4 = [v3 hf_mediaSystemForAccessory:v7];

    if (!v4)
    {
      v5 = *(a1 + 32);
      v6 = [v7 uniqueIdentifier];
      LOBYTE(v5) = [v5 containsObject:v6];

      if ((v5 & 1) == 0)
      {
        [*(a1 + 40) addObject:v7];
      }
    }
  }
}

void __98__HFItemProviderUtilities__servicesForHome_canShowInControlCentre_withLimit_includes_ignoreUUIDs___block_invoke_10(uint64_t a1, void *a2)
{
  v5 = a2;
  if ((*(*(a1 + 48) + 16))())
  {
    v3 = *(a1 + 32);
    v4 = [v5 uniqueIdentifier];
    LOBYTE(v3) = [v3 containsObject:v4];

    if ((v3 & 1) == 0)
    {
      [*(a1 + 40) addObject:v5];
    }
  }
}

@end