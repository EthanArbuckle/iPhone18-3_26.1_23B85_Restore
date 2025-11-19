@interface HMDCoreAnalyticsLogEventObserverDelegate
- (HMDCoreAnalyticsLogEventObserverDelegate)initWithDataSource:(id)a3;
- (HMDCoreAnalyticsLogEventObserverDelegateDataSource)dataSource;
- (NSDictionary)aggregatedHomeCategorizationDimensions;
- (NSDictionary)aggregatedHomeDimensions;
- (NSDictionary)deviceCapabilitiesAndEnablementsDimensions;
- (id)dimensionsForHome:(id)a3;
- (void)addAggregatedHomeDimensionsToEventDictionary:(id)a3;
- (void)addCommonDimensionsToEventDictionary:(id)a3;
- (void)addDimensionsForAccessoryIdentifier:(id)a3 toEventDictionary:(id)a4;
- (void)addDimensionsForHome:(id)a3 toEventDictionary:(id)a4;
- (void)configurationChanged;
@end

@implementation HMDCoreAnalyticsLogEventObserverDelegate

- (HMDCoreAnalyticsLogEventObserverDelegateDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (id)dimensionsForHome:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  v5 = [(NSMutableDictionary *)self->_homeDimensions objectForKeyedSubscript:v4];
  if (!v5)
  {
    v6 = [(HMDCoreAnalyticsLogEventObserverDelegate *)self dataSource];
    v7 = [v6 cachedHomeConfigurationForHomeUUID:v4];

    if (v7)
    {
      v8 = [MEMORY[0x277CBEB38] dictionary];
      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v7, "homeCategoryBitMask")}];
      [v8 setObject:v9 forKeyedSubscript:@"homeCategoryBitMask"];

      v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v7, "thirdPartyMediaCategoryBitMask")}];
      [v8 setObject:v10 forKeyedSubscript:@"thirdPartyMediaBitMask"];

      v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v7, "appleMediaCategoryBitMask")}];
      [v8 setObject:v11 forKeyedSubscript:@"appleMediaBitMask"];

      v12 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v7, "isOwnerUser")}];
      [v8 setObject:v12 forKeyedSubscript:@"isOwnerUserInHome"];

      v13 = MEMORY[0x277CCABB0];
      v14 = [v7 currentUserPrivilege] == 3 || objc_msgSend(v7, "currentUserPrivilege") == 4;
      v15 = [v13 numberWithInt:v14];
      [v8 setObject:v15 forKeyedSubscript:@"isAdminUserInHome"];

      v16 = +[HMDLogEventHistograms configurationDataHistogram];
      v17 = [v16 intervalIndexForValue:{objc_msgSend(v7, "numUsers")}];
      [v8 setObject:v17 forKeyedSubscript:@"numUsersInHome"];

      v18 = +[HMDLogEventHistograms configurationDataHistogram];
      v19 = [v18 intervalIndexForValue:{objc_msgSend(v7, "numAdmins")}];
      [v8 setObject:v19 forKeyedSubscript:@"numAdminUsersInHome"];

      v20 = +[HMDLogEventHistograms configurationDataHistogram];
      v21 = [v20 intervalIndexForValue:{objc_msgSend(v7, "numRestrictedGuests")}];
      [v8 setObject:v21 forKeyedSubscript:@"numRestrictedGuestsInHome"];

      v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v7, "currentUserPrivilege")}];
      [v8 setObject:v22 forKeyedSubscript:@"currentUserPrivilegeInHome"];

      v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v7, "userPrivilegeBitMask")}];
      [v8 setObject:v23 forKeyedSubscript:@"userPrivilegeBitMaskInHome"];

      v24 = +[HMDLogEventHistograms configurationDataHistogram];
      v25 = [v24 intervalIndexForValue:{objc_msgSend(v7, "numAccessories")}];
      [v8 setObject:v25 forKeyedSubscript:@"numAccessoriesInHome"];

      v26 = +[HMDLogEventHistograms configurationDataHistogram];
      v27 = [v26 intervalIndexForValue:{objc_msgSend(v7, "numSmartHomeAccessories")}];
      [v8 setObject:v27 forKeyedSubscript:@"numSmartHomeAccessoriesInHome"];

      v28 = +[HMDLogEventHistograms configurationDataHistogram];
      v29 = [v28 intervalIndexForValue:{objc_msgSend(v7, "numAppleMediaAccessories")}];
      [v8 setObject:v29 forKeyedSubscript:@"numAppleMediaAccessoriesInHome"];

      v30 = +[HMDLogEventHistograms configurationDataHistogram];
      v31 = [v30 intervalIndexForValue:{objc_msgSend(v7, "numThirdPartyMediaAccessories")}];
      [v8 setObject:v31 forKeyedSubscript:@"numThirdPartyMediaAccessoriesInHome"];

      v32 = +[HMDLogEventHistograms configurationDataHistogram];
      v33 = [v32 intervalIndexForValue:{objc_msgSend(v7, "numAppleAudioAccessories")}];
      [v8 setObject:v33 forKeyedSubscript:@"numAppleAudioAccessoriesInHome"];

      v34 = +[HMDLogEventHistograms configurationDataHistogram];
      v35 = [v34 intervalIndexForValue:{objc_msgSend(v7, "numAppleTVAccessories")}];
      [v8 setObject:v35 forKeyedSubscript:@"numAppleTVAccessoriesInHome"];

      v36 = +[HMDLogEventHistograms configurationDataHistogram];
      v37 = [v36 intervalIndexForValue:{objc_msgSend(v7, "numHAPAccessories")}];
      [v8 setObject:v37 forKeyedSubscript:@"numHAPAccessoriesInHome"];

      v38 = +[HMDLogEventHistograms configurationDataHistogram];
      v39 = [v38 intervalIndexForValue:{objc_msgSend(v7, "numCHIPAccessories")}];
      [v8 setObject:v39 forKeyedSubscript:@"numMatterAccessoriesInHome"];

      v40 = +[HMDLogEventHistograms configurationDataHistogram];
      v41 = [v40 intervalIndexForValue:{objc_msgSend(v7, "numCameraAccessories")}];
      [v8 setObject:v41 forKeyedSubscript:@"numCameraAccessoriesInHome"];

      v42 = +[HMDLogEventHistograms configurationDataHistogram];
      v43 = [v42 intervalIndexForValue:{objc_msgSend(v7, "numCameraAccessoriesRecordingEnabled")}];
      [v8 setObject:v43 forKeyedSubscript:@"numCamerasRecordingEnabledInHome"];

      v44 = +[HMDLogEventHistograms configurationDataHistogram];
      v45 = [v44 intervalIndexForValue:{objc_msgSend(v7, "numConfiguredWidgets")}];
      [v8 setObject:v45 forKeyedSubscript:@"numWidgetsInHome"];

      v46 = +[HMDLogEventHistograms configurationDataHistogram];
      v47 = [v46 intervalIndexForValue:{objc_msgSend(v7, "numScenes")}];
      [v8 setObject:v47 forKeyedSubscript:@"numScenesInHome"];

      v48 = +[HMDLogEventHistograms configurationDataHistogram];
      v49 = [v48 intervalIndexForValue:{objc_msgSend(v7, "numTriggers")}];
      [v8 setObject:v49 forKeyedSubscript:@"numTriggersInHome"];

      v50 = +[HMDLogEventHistograms configurationDataHistogram];
      v51 = [v50 intervalIndexForValue:{objc_msgSend(v7, "numActiveTriggers")}];
      [v8 setObject:v51 forKeyedSubscript:@"numActiveTriggersInHome"];

      v52 = +[HMDLogEventHistograms configurationDataHistogram];
      v53 = [v52 intervalIndexForValue:{objc_msgSend(v7, "numResidentsEnabled")}];
      [v8 setObject:v53 forKeyedSubscript:@"numEnabledResidentsInHome"];

      v54 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v7, "residentElectionBitMask")}];
      [v8 setObject:v54 forKeyedSubscript:@"residentElectionBitMask"];

      v55 = [v7 oldestTVOSBuildInHome];
      [v8 setObject:v55 forKeyedSubscript:@"oldestTVOSBuildInHome"];

      v56 = [v7 oldestTVOSVersionInHome];
      [v8 setObject:v56 forKeyedSubscript:@"oldestTVOSVersionInHome"];

      v57 = [v7 primaryResidentBuildInHome];
      [v8 setObject:v57 forKeyedSubscript:@"primaryResidentBuildInHome"];

      v58 = [v7 primaryResidentVersionInHome];
      [v8 setObject:v58 forKeyedSubscript:@"primaryResidentVersionInHome"];

      v5 = [v8 copy];
      [(NSMutableDictionary *)self->_homeDimensions setObject:v5 forKeyedSubscript:v4];
    }

    else
    {
      v5 = 0;
    }
  }

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (NSDictionary)aggregatedHomeDimensions
{
  os_unfair_lock_lock_with_options();
  aggregatedHomeDimensions = self->_aggregatedHomeDimensions;
  if (!aggregatedHomeDimensions)
  {
    v4 = [MEMORY[0x277CBEB38] dictionary];
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    v6 = [WeakRetained cachedConfiguration];

    if (v6)
    {
      v7 = +[HMDLogEventHistograms configurationDataHistogram];
      v8 = [v7 intervalIndexForValue:{objc_msgSend(v6, "totalHomes")}];
      [v4 setObject:v8 forKeyedSubscript:@"numHomes"];

      v9 = +[HMDLogEventHistograms configurationDataHistogram];
      v10 = [v9 intervalIndexForValue:{objc_msgSend(v6, "totalNonEmptyHomes")}];
      [v4 setObject:v10 forKeyedSubscript:@"numNonEmptyHomes"];

      v11 = +[HMDLogEventHistograms configurationDataHistogram];
      v12 = [v11 intervalIndexForValue:{objc_msgSend(v6, "totalOwnedHomes")}];
      [v4 setObject:v12 forKeyedSubscript:@"numOwnedHomes"];

      v13 = +[HMDLogEventHistograms configurationDataHistogram];
      v14 = [v13 intervalIndexForValue:{objc_msgSend(v6, "totalResidentEnabledHomes")}];
      [v4 setObject:v14 forKeyedSubscript:@"numResidentEnabledHomes"];

      v15 = +[HMDLogEventHistograms configurationDataHistogram];
      v16 = [v15 intervalIndexForValue:{objc_msgSend(v6, "totalUsers")}];
      [v4 setObject:v16 forKeyedSubscript:@"numUsers"];

      v17 = +[HMDLogEventHistograms configurationDataHistogram];
      v18 = [v17 intervalIndexForValue:{objc_msgSend(v6, "totalAdminUsers")}];
      [v4 setObject:v18 forKeyedSubscript:@"numAdminUsers"];

      v19 = +[HMDLogEventHistograms configurationDataHistogram];
      v20 = [v19 intervalIndexForValue:{objc_msgSend(v6, "totalRestrictedGuests")}];
      [v4 setObject:v20 forKeyedSubscript:@"numRestrictedGuests"];

      v21 = +[HMDLogEventHistograms configurationDataHistogram];
      v22 = [v21 intervalIndexForValue:{objc_msgSend(v6, "totalAccessories")}];
      [v4 setObject:v22 forKeyedSubscript:@"numAccessories"];

      v23 = +[HMDLogEventHistograms configurationDataHistogram];
      v24 = [v23 intervalIndexForValue:{objc_msgSend(v6, "totalCertifiedAccessories")}];
      [v4 setObject:v24 forKeyedSubscript:@"numCertifiedAccessories"];

      v25 = +[HMDLogEventHistograms configurationDataHistogram];
      v26 = [v25 intervalIndexForValue:{objc_msgSend(v6, "totalHAPAccessories")}];
      [v4 setObject:v26 forKeyedSubscript:@"numHAPAccessories"];

      v27 = +[HMDLogEventHistograms configurationDataHistogram];
      v28 = [v27 intervalIndexForValue:{objc_msgSend(v6, "totalHAPIPAccessories")}];
      [v4 setObject:v28 forKeyedSubscript:@"numHAPIPAccessories"];

      v29 = +[HMDLogEventHistograms configurationDataHistogram];
      v30 = [v29 intervalIndexForValue:{objc_msgSend(v6, "totalHAPBTAccessories")}];
      [v4 setObject:v30 forKeyedSubscript:@"numHAPBTAccessories"];

      v31 = +[HMDLogEventHistograms configurationDataHistogram];
      v32 = [v31 intervalIndexForValue:{objc_msgSend(v6, "totalCHIPAccessories")}];
      [v4 setObject:v32 forKeyedSubscript:@"numMatterAccessories"];

      v33 = +[HMDLogEventHistograms configurationDataHistogram];
      v34 = [v33 intervalIndexForValue:{objc_msgSend(v6, "totalThreadAccessories")}];
      [v4 setObject:v34 forKeyedSubscript:@"numThreadAccessories"];

      v35 = +[HMDLogEventHistograms configurationDataHistogram];
      v36 = [v35 intervalIndexForValue:{objc_msgSend(v6, "totalWOBLEAccessories")}];
      [v4 setObject:v36 forKeyedSubscript:@"numWOBLEAccessories"];

      v37 = +[HMDLogEventHistograms configurationDataHistogram];
      v38 = [v37 intervalIndexForValue:{objc_msgSend(v6, "totalWOLANAccessories")}];
      [v4 setObject:v38 forKeyedSubscript:@"numWOLANAccessories"];

      v39 = +[HMDLogEventHistograms configurationDataHistogram];
      v40 = [v39 intervalIndexForValue:{objc_msgSend(v6, "totalTelevisionServiceAccessories")}];
      [v4 setObject:v40 forKeyedSubscript:@"numTelevisionServiceAccessories"];

      v41 = +[HMDLogEventHistograms configurationDataHistogram];
      v42 = [v41 intervalIndexForValue:{objc_msgSend(v6, "totalBridgedAccessories")}];
      [v4 setObject:v42 forKeyedSubscript:@"numBridgedAccessories"];

      v43 = +[HMDLogEventHistograms configurationDataHistogram];
      v44 = [v43 intervalIndexForValue:{objc_msgSend(v6, "totalCameraAccessories")}];
      [v4 setObject:v44 forKeyedSubscript:@"numCameraAccessories"];

      v45 = +[HMDLogEventHistograms configurationDataHistogram];
      v46 = [v45 intervalIndexForValue:{objc_msgSend(v6, "totalCameraAccessoriesRecordingEnabled")}];
      [v4 setObject:v46 forKeyedSubscript:@"numCameraAccessoriesRecordingEnabled"];

      v47 = +[HMDLogEventHistograms configurationDataHistogram];
      v48 = [v47 intervalIndexForValue:{objc_msgSend(v6, "totalScenes")}];
      [v4 setObject:v48 forKeyedSubscript:@"numScenes"];

      v49 = +[HMDLogEventHistograms configurationDataHistogram];
      v50 = [v49 intervalIndexForValue:{objc_msgSend(v6, "totalTriggers")}];
      [v4 setObject:v50 forKeyedSubscript:@"numTriggers"];

      v51 = +[HMDLogEventHistograms configurationDataHistogram];
      v52 = [v51 intervalIndexForValue:{objc_msgSend(v6, "totalActiveTriggers")}];
      [v4 setObject:v52 forKeyedSubscript:@"numActiveTriggers"];

      v53 = +[HMDLogEventHistograms configurationDataHistogram];
      v54 = [v53 intervalIndexForValue:{objc_msgSend(v6, "totalWidgets")}];
      [v4 setObject:v54 forKeyedSubscript:@"numHomeWidgetsEnabled"];

      v55 = +[HMDLogEventHistograms configurationDataHistogram];
      v56 = [v55 intervalIndexForValue:{objc_msgSend(v6, "totalAppleAudioAccessories")}];
      [v4 setObject:v56 forKeyedSubscript:@"numAppleAudioAccessories"];

      v57 = +[HMDLogEventHistograms configurationDataHistogram];
      v58 = [v57 intervalIndexForValue:{objc_msgSend(v6, "totalAppleTVAccessories")}];
      [v4 setObject:v58 forKeyedSubscript:@"numAppleTVAccessories"];

      v59 = +[HMDLogEventHistograms configurationDataHistogram];
      v60 = [v59 intervalIndexForValue:{objc_msgSend(v6, "totalEnabledResidents")}];
      [v4 setObject:v60 forKeyedSubscript:@"numEnabledResidents"];

      v61 = +[HMDLogEventHistograms configurationDataHistogram];
      v62 = [v61 intervalIndexForValue:{objc_msgSend(v6, "totalSmartHomeAccessories")}];
      [v4 setObject:v62 forKeyedSubscript:@"numSmartHomeAccessories"];

      v63 = +[HMDLogEventHistograms configurationDataHistogram];
      v64 = [v63 intervalIndexForValue:{objc_msgSend(v6, "totalAppleMediaAccessories")}];
      [v4 setObject:v64 forKeyedSubscript:@"numAppleMediaAccessories"];

      v65 = +[HMDLogEventHistograms configurationDataHistogram];
      v66 = [v65 intervalIndexForValue:{objc_msgSend(v6, "totalThirdPartyMediaAccessories")}];
      [v4 setObject:v66 forKeyedSubscript:@"numThirdPartyMediaAccessories"];

      v67 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v6, "totalUserPrivilegeBitMask")}];
      [v4 setObject:v67 forKeyedSubscript:@"totalUserPrivilegeBitMask"];

      v68 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v6, "isTelevisionOnlyConfiguration")}];
      [v4 setObject:v68 forKeyedSubscript:@"televisionOnlyConfiguration"];

      v69 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v6, "isMediaOnlyConfiguration")}];
      [v4 setObject:v69 forKeyedSubscript:@"mediaOnlyConfiguration"];
    }

    v70 = [v4 copy];
    v71 = self->_aggregatedHomeDimensions;
    self->_aggregatedHomeDimensions = v70;

    aggregatedHomeDimensions = self->_aggregatedHomeDimensions;
  }

  v72 = aggregatedHomeDimensions;
  os_unfair_lock_unlock(&self->_lock);

  return v72;
}

- (NSDictionary)deviceCapabilitiesAndEnablementsDimensions
{
  os_unfair_lock_lock_with_options();
  deviceCapabilitiesAndEnablementsDimensions = self->_deviceCapabilitiesAndEnablementsDimensions;
  if (!deviceCapabilitiesAndEnablementsDimensions)
  {
    v4 = [MEMORY[0x277CBEB38] dictionary];
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    v6 = [WeakRetained cachedConfiguration];

    if (v6)
    {
      v7 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v6, "isFMFDevice")}];
      [v4 setObject:v7 forKeyedSubscript:@"isFMFDevice"];

      v8 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v6, "isStandaloneWatch")}];
      [v4 setObject:v8 forKeyedSubscript:@"isStandaloneWatch"];

      v9 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v6, "isResidentCapable")}];
      [v4 setObject:v9 forKeyedSubscript:@"currentDeviceResidentCapable"];

      v10 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v6, "isResidentEnabled")}];
      [v4 setObject:v10 forKeyedSubscript:@"currentDeviceResidentEnabled"];

      v11 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v6, "isPrimaryResidentForSomeHome")}];
      [v4 setObject:v11 forKeyedSubscript:@"currentDeviceResidentPrimaryResidentAnyHome"];

      v12 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v6, "isResidentFirstEnabledAnyHome")}];
      [v4 setObject:v12 forKeyedSubscript:@"isResidentFirstEnabledAnyHome"];

      v13 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v6, "isResidentElectionV2EnabledAnyHome")}];
      [v4 setObject:v13 forKeyedSubscript:@"isResidentElectionV2EnabledAnyHome"];

      v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v6, "totalResidentElectionBitMask")}];
      [v4 setObject:v14 forKeyedSubscript:@"totalResidentElectionBitMask"];
    }

    [v4 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"isHH2Enabled"];
    [v4 setObject:&unk_2866276A0 forKeyedSubscript:@"isHH2Enabled_INT"];
    v15 = [v4 copy];
    v16 = self->_deviceCapabilitiesAndEnablementsDimensions;
    self->_deviceCapabilitiesAndEnablementsDimensions = v15;

    deviceCapabilitiesAndEnablementsDimensions = self->_deviceCapabilitiesAndEnablementsDimensions;
  }

  v17 = deviceCapabilitiesAndEnablementsDimensions;
  os_unfair_lock_unlock(&self->_lock);

  return v17;
}

- (NSDictionary)aggregatedHomeCategorizationDimensions
{
  os_unfair_lock_lock_with_options();
  aggregatedHomeCategorizationDimensions = self->_aggregatedHomeCategorizationDimensions;
  if (!aggregatedHomeCategorizationDimensions)
  {
    v4 = [MEMORY[0x277CBEB38] dictionary];
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    v6 = [WeakRetained cachedConfiguration];

    if (v6)
    {
      v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v6, "totalHomeCategoryBitMask")}];
      [v4 setObject:v7 forKeyedSubscript:@"totalHomeCategoryBitMask"];

      v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v6, "totalAppleMediaCategoryBitMask")}];
      [v4 setObject:v8 forKeyedSubscript:@"totalAppleMediaBitMask"];

      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v6, "totalThirdPartyMediaCategoryBitMask")}];
      [v4 setObject:v9 forKeyedSubscript:@"totalThirdPartyMediaBitMask"];

      v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v6, "currentUserPrivilegeBitMask")}];
      [v4 setObject:v10 forKeyedSubscript:@"currentUserPrivilegeBitMask"];
    }

    v11 = [v4 copy];
    v12 = self->_aggregatedHomeCategorizationDimensions;
    self->_aggregatedHomeCategorizationDimensions = v11;

    aggregatedHomeCategorizationDimensions = self->_aggregatedHomeCategorizationDimensions;
  }

  v13 = aggregatedHomeCategorizationDimensions;
  os_unfair_lock_unlock(&self->_lock);

  return v13;
}

- (void)configurationChanged
{
  os_unfair_lock_lock_with_options();
  aggregatedHomeCategorizationDimensions = self->_aggregatedHomeCategorizationDimensions;
  self->_aggregatedHomeCategorizationDimensions = 0;

  deviceCapabilitiesAndEnablementsDimensions = self->_deviceCapabilitiesAndEnablementsDimensions;
  self->_deviceCapabilitiesAndEnablementsDimensions = 0;

  aggregatedHomeDimensions = self->_aggregatedHomeDimensions;
  self->_aggregatedHomeDimensions = 0;

  [(NSMutableDictionary *)self->_homeDimensions removeAllObjects];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)addDimensionsForHome:(id)a3 toEventDictionary:(id)a4
{
  v6 = a4;
  v7 = [(HMDCoreAnalyticsLogEventObserverDelegate *)self dimensionsForHome:a3];
  [v6 addEntriesFromDictionary:v7];
}

- (void)addAggregatedHomeDimensionsToEventDictionary:(id)a3
{
  v4 = a3;
  v5 = [(HMDCoreAnalyticsLogEventObserverDelegate *)self aggregatedHomeDimensions];
  [v4 addEntriesFromDictionary:v5];
}

- (void)addDimensionsForAccessoryIdentifier:(id)a3 toEventDictionary:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDCoreAnalyticsLogEventObserverDelegate *)self dataSource];
  v9 = [v8 accessoryForIdentifier:v6];

  if (v9)
  {
    [v9 populateVendorDetailsForCoreAnalytics:v7 keyPrefix:@"accessory"];
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v15 = 138543618;
      v16 = v13;
      v17 = 2114;
      v18 = v6;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_ERROR, "%{public}@Accessory with identifier %{public}@ doesn't exist", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)addCommonDimensionsToEventDictionary:(id)a3
{
  v4 = a3;
  v22 = [(HMDCoreAnalyticsLogEventObserverDelegate *)self dataSource];
  v5 = [(HMDCoreAnalyticsLogEventObserverDelegate *)self aggregatedHomeCategorizationDimensions];
  [v4 addEntriesFromDictionary:v5];

  v6 = [(HMDCoreAnalyticsLogEventObserverDelegate *)self deviceCapabilitiesAndEnablementsDimensions];
  [v4 addEntriesFromDictionary:v6];

  v7 = MEMORY[0x277CCABB0];
  v8 = [v22 deviceStateProvider];
  v9 = [v7 numberWithUnsignedInteger:{objc_msgSend(v8, "currentDataSyncState")}];
  [v4 setObject:v9 forKeyedSubscript:@"dataSyncState"];

  v10 = MEMORY[0x277CCABB0];
  v11 = [v22 deviceStateProvider];
  v12 = [v10 numberWithUnsignedInteger:{objc_msgSend(v11, "currentHomeManagerStatus")}];
  [v4 setObject:v12 forKeyedSubscript:@"homeManagerStatus"];

  v13 = MEMORY[0x277CCABB0];
  v14 = [v22 deviceStateProvider];
  v15 = [v13 numberWithInteger:{objc_msgSend(v14, "deviceDaysSinceSoftwareUpdate")}];
  [v4 setObject:v15 forKeyedSubscript:@"daysSinceSWUpdate"];

  v16 = MEMORY[0x277CCABB0];
  v17 = [v22 deviceStateProvider];
  v18 = [v16 numberWithUnsignedInteger:{objc_msgSend(v17, "bitMappedMissingKeys")}];
  [v4 setObject:v18 forKeyedSubscript:@"missingKeyTypes"];

  v19 = MEMORY[0x277CCABB0];
  v20 = [v22 deviceStateProvider];
  v21 = [v19 numberWithUnsignedInteger:{objc_msgSend(v20, "bitMappedDuplicateKeys")}];
  [v4 setObject:v21 forKeyedSubscript:@"duplicateKeyTypes"];
}

- (HMDCoreAnalyticsLogEventObserverDelegate)initWithDataSource:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = HMDCoreAnalyticsLogEventObserverDelegate;
  v5 = [(HMDCoreAnalyticsLogEventObserverDelegate *)&v13 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_dataSource, v4);
    v7 = [MEMORY[0x277CBEB38] dictionary];
    homeDimensions = v6->_homeDimensions;
    v6->_homeDimensions = v7;

    objc_initWeak(&location, v6);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __63__HMDCoreAnalyticsLogEventObserverDelegate_initWithDataSource___block_invoke;
    v10[3] = &unk_279724810;
    objc_copyWeak(&v11, &location);
    [v4 addConfigurationChangedObserver:v10];
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  return v6;
}

void __63__HMDCoreAnalyticsLogEventObserverDelegate_initWithDataSource___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained configurationChanged];
}

@end