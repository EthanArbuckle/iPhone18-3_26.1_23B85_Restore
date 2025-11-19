@interface HMRoom
@end

@implementation HMRoom

uint64_t __34__HMRoom_HFAdditions__hf_allZones__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 rooms];
  v4 = [v3 containsObject:*(a1 + 32)];

  return v4;
}

id __77__HMRoom_HFAdditions__hf_allUniqueMediaProfileContainersExcludingMediaGroups__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 hf_isMediaAccessory])
  {
    v3 = [v2 mediaProfile];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

BOOL __77__HMRoom_HFAdditions__hf_allUniqueMediaProfileContainersExcludingMediaGroups__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 hf_backingAccessory];
  v4 = [v3 home];
  v5 = [v2 hf_backingAccessory];

  v6 = [v4 hf_mediaSystemForAccessory:v5];

  return v6 == 0;
}

id __40__HMRoom_HFAdditions__hf_pairedHomePods__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 hf_isHomePod])
  {
    v3 = [v2 home];
    v4 = [v3 hf_mediaSystemForAccessory:v2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

BOOL __59__HMRoom_HFAdditions__hf_homePodPairsNotInHomeTheaterGroup__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 home];
  v4 = [v2 audioDestinationIdentifier];

  v5 = [v3 hf_appleTVUsingAudioDestination:v4];
  v6 = v5 == 0;

  return v6;
}

BOOL __55__HMRoom_HFAdditions__hf_homePodsNotInHomeTheaterGroup__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 hf_isHomePod] && (objc_msgSend(v2, "home"), v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "hf_mediaSystemForAccessory:", v2), v4 = objc_claimAutoreleasedReturnValue(), v4, v3, !v4))
  {
    v7 = [v2 home];
    v8 = [v2 audioDestinationIdentifier];
    v9 = [v7 hf_appleTVUsingAudioDestination:v8];
    v5 = v9 == 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

BOOL __59__HMRoom_HFAdditions__availableHomeTheaterMediaPartnerFor___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 hf_isAppleTV])
  {
    v4 = [HFMediaHelper canMediaProfileContainer:*(a1 + 32) supportHomeTheaterWithAppleTV:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

BOOL __59__HMRoom_HFAdditions__availableHomeTheaterMediaPartnerFor___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 hf_backingAccessory];
  v5 = [HFMediaHelper canMediaProfileContainer:v3 supportHomeTheaterWithAppleTV:v4];

  return v5;
}

BOOL __59__HMRoom_HFAdditions__availableHomeTheaterMediaPartnerFor___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 mediaProfile];
  v4 = [*(a1 + 32) hf_backingAccessory];
  v5 = [HFMediaHelper canMediaProfileContainer:v3 supportHomeTheaterWithAppleTV:v4];

  return v5;
}

BOOL __72__HMRoom_HFAdditions__availableHomePodsSupportingStereoPairingVersions___block_invoke(uint64_t a1, void *a2)
{
  v6 = [v3 hf_isHomePod] && (objc_msgSend(v3, "home"), v4 = v3 = a2;

  return v6;
}

uint64_t __59__HMRoom_HFAdditions__hf_atleastOneHomePodSupportsAnnounce__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 hf_isHomePod])
  {
    v3 = [v2 supportsAnnounce];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void *__79__HMRoom_HFAdditions__hf_atleastOneMediaAccessorySupportsAndHasAnnounceEnabled__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 hf_isHomePod])
  {
    v3 = [v2 mediaProfile];
    v4 = [v3 hf_settingsValueManager];

    v5 = [v2 settings];
    v6 = [v5 hf_accessorySettingAtKeyPath:@"root.announce.enabled"];

    objc_opt_class();
    v7 = [v4 valueForSetting:v6];
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;

    if (v9)
    {
      v10 = [v9 BOOLValue];

      if ((v10 & 1) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v11 = [v2 hf_siriEndpointProfile];

  if (v11)
  {
    v12 = [v2 mediaProfile];
    v4 = [v12 hf_mediaAccessoryCommonSettingsManager];

    objc_opt_class();
    v13 = [v4 settingValueForKeyPath:HFAnnounceEnabledKeyPath];
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;

    if (v15)
    {
      v16 = [v15 BOOLValue];

      if (v16)
      {
LABEL_14:
        v11 = [v2 supportsAnnounce];
        goto LABEL_18;
      }

LABEL_17:
      v11 = 0;
      goto LABEL_18;
    }

LABEL_16:

    goto LABEL_17;
  }

LABEL_18:

  return v11;
}

uint64_t __66__HMRoom_HFAdditions__hf_hasAtLeastOneReachableHomeMediaAccessory__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 hf_isHomePod])
  {
    v3 = [v2 mediaProfile];
    v4 = [v3 settings];
    v5 = [v4 isControllable];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t __73__HMRoom_HFAdditions__hf_dashboardSectionReorderableUUIDStringComparator__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = [WeakRetained hf_reorderableDashboardSectionList];
  v9 = [v8 sortedIdentifiersWithIdentifier1:v6 identifier2:v5];

  if (v9)
  {
    v10 = -1;
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

uint64_t __47__HMRoom_HFAdditions__hf_allNonEmptyActionSets__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 actions];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__HMRoom_HFAdditions__hf_allNonEmptyActionSets__block_invoke_2;
  v6[3] = &unk_277DF6308;
  v6[4] = *(a1 + 32);
  v4 = [v3 na_any:v6];

  return v4;
}

uint64_t __47__HMRoom_HFAdditions__hf_allNonEmptyActionSets__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 hf_affectedAccessoryRepresentables];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__HMRoom_HFAdditions__hf_allNonEmptyActionSets__block_invoke_3;
  v6[3] = &unk_277DF5C10;
  v6[4] = *(a1 + 32);
  v4 = [v3 na_any:v6];

  return v4;
}

BOOL __44__HMRoom_HFDemoMode__hf_demoModeAccessories__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 room];
  v4 = v2 == v3;

  return v4;
}

void __55__HMRoom_HFApplicationData___hf_updateApplicationData___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1 + 32) home];
    [v4 home:v3 didUpdateApplicationDataForRoom:*(a1 + 32)];
  }
}

void __84__HMRoom_HFApplicationData__hf_updateApplicationData_handleError_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v15 = a2;
  v3 = +[HFHomeKitDispatcher sharedDispatcher];
  v4 = [v3 homeManager];
  if ([v4 hasOptedToHH2])
  {
    v5 = [*(a1 + 32) home];
    v6 = [v5 residentDevices];
    v7 = [v6 count];

    v8 = HFOperationUpdateApplicationDataResidentSync;
    if (!v7)
    {
      v8 = HFOperationUpdateApplicationDataCloudSync;
    }
  }

  else
  {

    v8 = HFOperationUpdateApplicationDataCloudSync;
  }

  v9 = *(a1 + 56);
  v10 = *v8;
  v11 = +[HFErrorHandler sharedHandler];
  v12 = v11;
  if (v9 == 1)
  {
    [v11 handleError:v15 operationType:v10 options:0 retryBlock:0 cancelBlock:0];
  }

  else
  {
    [v11 logError:v15 operationDescription:v10];
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v14 = [WeakRetained applicationData];
  [WeakRetained _hf_updateApplicationData:v14];

  (*(*(a1 + 40) + 16))();
}

@end