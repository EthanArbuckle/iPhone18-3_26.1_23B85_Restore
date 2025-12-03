@interface HMDCoreAnalyticsLogEventObserverDelegate
- (HMDCoreAnalyticsLogEventObserverDelegate)initWithDataSource:(id)source;
- (HMDCoreAnalyticsLogEventObserverDelegateDataSource)dataSource;
- (NSDictionary)aggregatedHomeCategorizationDimensions;
- (NSDictionary)aggregatedHomeDimensions;
- (NSDictionary)deviceCapabilitiesAndEnablementsDimensions;
- (id)dimensionsForHome:(id)home;
- (void)addAggregatedHomeDimensionsToEventDictionary:(id)dictionary;
- (void)addCommonDimensionsToEventDictionary:(id)dictionary;
- (void)addDimensionsForAccessoryIdentifier:(id)identifier toEventDictionary:(id)dictionary;
- (void)addDimensionsForHome:(id)home toEventDictionary:(id)dictionary;
- (void)configurationChanged;
@end

@implementation HMDCoreAnalyticsLogEventObserverDelegate

- (HMDCoreAnalyticsLogEventObserverDelegateDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (id)dimensionsForHome:(id)home
{
  homeCopy = home;
  os_unfair_lock_lock_with_options();
  v5 = [(NSMutableDictionary *)self->_homeDimensions objectForKeyedSubscript:homeCopy];
  if (!v5)
  {
    dataSource = [(HMDCoreAnalyticsLogEventObserverDelegate *)self dataSource];
    v7 = [dataSource cachedHomeConfigurationForHomeUUID:homeCopy];

    if (v7)
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v7, "homeCategoryBitMask")}];
      [dictionary setObject:v9 forKeyedSubscript:@"homeCategoryBitMask"];

      v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v7, "thirdPartyMediaCategoryBitMask")}];
      [dictionary setObject:v10 forKeyedSubscript:@"thirdPartyMediaBitMask"];

      v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v7, "appleMediaCategoryBitMask")}];
      [dictionary setObject:v11 forKeyedSubscript:@"appleMediaBitMask"];

      v12 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v7, "isOwnerUser")}];
      [dictionary setObject:v12 forKeyedSubscript:@"isOwnerUserInHome"];

      v13 = MEMORY[0x277CCABB0];
      v14 = [v7 currentUserPrivilege] == 3 || objc_msgSend(v7, "currentUserPrivilege") == 4;
      v15 = [v13 numberWithInt:v14];
      [dictionary setObject:v15 forKeyedSubscript:@"isAdminUserInHome"];

      v16 = +[HMDLogEventHistograms configurationDataHistogram];
      v17 = [v16 intervalIndexForValue:{objc_msgSend(v7, "numUsers")}];
      [dictionary setObject:v17 forKeyedSubscript:@"numUsersInHome"];

      v18 = +[HMDLogEventHistograms configurationDataHistogram];
      v19 = [v18 intervalIndexForValue:{objc_msgSend(v7, "numAdmins")}];
      [dictionary setObject:v19 forKeyedSubscript:@"numAdminUsersInHome"];

      v20 = +[HMDLogEventHistograms configurationDataHistogram];
      v21 = [v20 intervalIndexForValue:{objc_msgSend(v7, "numRestrictedGuests")}];
      [dictionary setObject:v21 forKeyedSubscript:@"numRestrictedGuestsInHome"];

      v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v7, "currentUserPrivilege")}];
      [dictionary setObject:v22 forKeyedSubscript:@"currentUserPrivilegeInHome"];

      v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v7, "userPrivilegeBitMask")}];
      [dictionary setObject:v23 forKeyedSubscript:@"userPrivilegeBitMaskInHome"];

      v24 = +[HMDLogEventHistograms configurationDataHistogram];
      v25 = [v24 intervalIndexForValue:{objc_msgSend(v7, "numAccessories")}];
      [dictionary setObject:v25 forKeyedSubscript:@"numAccessoriesInHome"];

      v26 = +[HMDLogEventHistograms configurationDataHistogram];
      v27 = [v26 intervalIndexForValue:{objc_msgSend(v7, "numSmartHomeAccessories")}];
      [dictionary setObject:v27 forKeyedSubscript:@"numSmartHomeAccessoriesInHome"];

      v28 = +[HMDLogEventHistograms configurationDataHistogram];
      v29 = [v28 intervalIndexForValue:{objc_msgSend(v7, "numAppleMediaAccessories")}];
      [dictionary setObject:v29 forKeyedSubscript:@"numAppleMediaAccessoriesInHome"];

      v30 = +[HMDLogEventHistograms configurationDataHistogram];
      v31 = [v30 intervalIndexForValue:{objc_msgSend(v7, "numThirdPartyMediaAccessories")}];
      [dictionary setObject:v31 forKeyedSubscript:@"numThirdPartyMediaAccessoriesInHome"];

      v32 = +[HMDLogEventHistograms configurationDataHistogram];
      v33 = [v32 intervalIndexForValue:{objc_msgSend(v7, "numAppleAudioAccessories")}];
      [dictionary setObject:v33 forKeyedSubscript:@"numAppleAudioAccessoriesInHome"];

      v34 = +[HMDLogEventHistograms configurationDataHistogram];
      v35 = [v34 intervalIndexForValue:{objc_msgSend(v7, "numAppleTVAccessories")}];
      [dictionary setObject:v35 forKeyedSubscript:@"numAppleTVAccessoriesInHome"];

      v36 = +[HMDLogEventHistograms configurationDataHistogram];
      v37 = [v36 intervalIndexForValue:{objc_msgSend(v7, "numHAPAccessories")}];
      [dictionary setObject:v37 forKeyedSubscript:@"numHAPAccessoriesInHome"];

      v38 = +[HMDLogEventHistograms configurationDataHistogram];
      v39 = [v38 intervalIndexForValue:{objc_msgSend(v7, "numCHIPAccessories")}];
      [dictionary setObject:v39 forKeyedSubscript:@"numMatterAccessoriesInHome"];

      v40 = +[HMDLogEventHistograms configurationDataHistogram];
      v41 = [v40 intervalIndexForValue:{objc_msgSend(v7, "numCameraAccessories")}];
      [dictionary setObject:v41 forKeyedSubscript:@"numCameraAccessoriesInHome"];

      v42 = +[HMDLogEventHistograms configurationDataHistogram];
      v43 = [v42 intervalIndexForValue:{objc_msgSend(v7, "numCameraAccessoriesRecordingEnabled")}];
      [dictionary setObject:v43 forKeyedSubscript:@"numCamerasRecordingEnabledInHome"];

      v44 = +[HMDLogEventHistograms configurationDataHistogram];
      v45 = [v44 intervalIndexForValue:{objc_msgSend(v7, "numConfiguredWidgets")}];
      [dictionary setObject:v45 forKeyedSubscript:@"numWidgetsInHome"];

      v46 = +[HMDLogEventHistograms configurationDataHistogram];
      v47 = [v46 intervalIndexForValue:{objc_msgSend(v7, "numScenes")}];
      [dictionary setObject:v47 forKeyedSubscript:@"numScenesInHome"];

      v48 = +[HMDLogEventHistograms configurationDataHistogram];
      v49 = [v48 intervalIndexForValue:{objc_msgSend(v7, "numTriggers")}];
      [dictionary setObject:v49 forKeyedSubscript:@"numTriggersInHome"];

      v50 = +[HMDLogEventHistograms configurationDataHistogram];
      v51 = [v50 intervalIndexForValue:{objc_msgSend(v7, "numActiveTriggers")}];
      [dictionary setObject:v51 forKeyedSubscript:@"numActiveTriggersInHome"];

      v52 = +[HMDLogEventHistograms configurationDataHistogram];
      v53 = [v52 intervalIndexForValue:{objc_msgSend(v7, "numResidentsEnabled")}];
      [dictionary setObject:v53 forKeyedSubscript:@"numEnabledResidentsInHome"];

      v54 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v7, "residentElectionBitMask")}];
      [dictionary setObject:v54 forKeyedSubscript:@"residentElectionBitMask"];

      oldestTVOSBuildInHome = [v7 oldestTVOSBuildInHome];
      [dictionary setObject:oldestTVOSBuildInHome forKeyedSubscript:@"oldestTVOSBuildInHome"];

      oldestTVOSVersionInHome = [v7 oldestTVOSVersionInHome];
      [dictionary setObject:oldestTVOSVersionInHome forKeyedSubscript:@"oldestTVOSVersionInHome"];

      primaryResidentBuildInHome = [v7 primaryResidentBuildInHome];
      [dictionary setObject:primaryResidentBuildInHome forKeyedSubscript:@"primaryResidentBuildInHome"];

      primaryResidentVersionInHome = [v7 primaryResidentVersionInHome];
      [dictionary setObject:primaryResidentVersionInHome forKeyedSubscript:@"primaryResidentVersionInHome"];

      v5 = [dictionary copy];
      [(NSMutableDictionary *)self->_homeDimensions setObject:v5 forKeyedSubscript:homeCopy];
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
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    cachedConfiguration = [WeakRetained cachedConfiguration];

    if (cachedConfiguration)
    {
      v7 = +[HMDLogEventHistograms configurationDataHistogram];
      v8 = [v7 intervalIndexForValue:{objc_msgSend(cachedConfiguration, "totalHomes")}];
      [dictionary setObject:v8 forKeyedSubscript:@"numHomes"];

      v9 = +[HMDLogEventHistograms configurationDataHistogram];
      v10 = [v9 intervalIndexForValue:{objc_msgSend(cachedConfiguration, "totalNonEmptyHomes")}];
      [dictionary setObject:v10 forKeyedSubscript:@"numNonEmptyHomes"];

      v11 = +[HMDLogEventHistograms configurationDataHistogram];
      v12 = [v11 intervalIndexForValue:{objc_msgSend(cachedConfiguration, "totalOwnedHomes")}];
      [dictionary setObject:v12 forKeyedSubscript:@"numOwnedHomes"];

      v13 = +[HMDLogEventHistograms configurationDataHistogram];
      v14 = [v13 intervalIndexForValue:{objc_msgSend(cachedConfiguration, "totalResidentEnabledHomes")}];
      [dictionary setObject:v14 forKeyedSubscript:@"numResidentEnabledHomes"];

      v15 = +[HMDLogEventHistograms configurationDataHistogram];
      v16 = [v15 intervalIndexForValue:{objc_msgSend(cachedConfiguration, "totalUsers")}];
      [dictionary setObject:v16 forKeyedSubscript:@"numUsers"];

      v17 = +[HMDLogEventHistograms configurationDataHistogram];
      v18 = [v17 intervalIndexForValue:{objc_msgSend(cachedConfiguration, "totalAdminUsers")}];
      [dictionary setObject:v18 forKeyedSubscript:@"numAdminUsers"];

      v19 = +[HMDLogEventHistograms configurationDataHistogram];
      v20 = [v19 intervalIndexForValue:{objc_msgSend(cachedConfiguration, "totalRestrictedGuests")}];
      [dictionary setObject:v20 forKeyedSubscript:@"numRestrictedGuests"];

      v21 = +[HMDLogEventHistograms configurationDataHistogram];
      v22 = [v21 intervalIndexForValue:{objc_msgSend(cachedConfiguration, "totalAccessories")}];
      [dictionary setObject:v22 forKeyedSubscript:@"numAccessories"];

      v23 = +[HMDLogEventHistograms configurationDataHistogram];
      v24 = [v23 intervalIndexForValue:{objc_msgSend(cachedConfiguration, "totalCertifiedAccessories")}];
      [dictionary setObject:v24 forKeyedSubscript:@"numCertifiedAccessories"];

      v25 = +[HMDLogEventHistograms configurationDataHistogram];
      v26 = [v25 intervalIndexForValue:{objc_msgSend(cachedConfiguration, "totalHAPAccessories")}];
      [dictionary setObject:v26 forKeyedSubscript:@"numHAPAccessories"];

      v27 = +[HMDLogEventHistograms configurationDataHistogram];
      v28 = [v27 intervalIndexForValue:{objc_msgSend(cachedConfiguration, "totalHAPIPAccessories")}];
      [dictionary setObject:v28 forKeyedSubscript:@"numHAPIPAccessories"];

      v29 = +[HMDLogEventHistograms configurationDataHistogram];
      v30 = [v29 intervalIndexForValue:{objc_msgSend(cachedConfiguration, "totalHAPBTAccessories")}];
      [dictionary setObject:v30 forKeyedSubscript:@"numHAPBTAccessories"];

      v31 = +[HMDLogEventHistograms configurationDataHistogram];
      v32 = [v31 intervalIndexForValue:{objc_msgSend(cachedConfiguration, "totalCHIPAccessories")}];
      [dictionary setObject:v32 forKeyedSubscript:@"numMatterAccessories"];

      v33 = +[HMDLogEventHistograms configurationDataHistogram];
      v34 = [v33 intervalIndexForValue:{objc_msgSend(cachedConfiguration, "totalThreadAccessories")}];
      [dictionary setObject:v34 forKeyedSubscript:@"numThreadAccessories"];

      v35 = +[HMDLogEventHistograms configurationDataHistogram];
      v36 = [v35 intervalIndexForValue:{objc_msgSend(cachedConfiguration, "totalWOBLEAccessories")}];
      [dictionary setObject:v36 forKeyedSubscript:@"numWOBLEAccessories"];

      v37 = +[HMDLogEventHistograms configurationDataHistogram];
      v38 = [v37 intervalIndexForValue:{objc_msgSend(cachedConfiguration, "totalWOLANAccessories")}];
      [dictionary setObject:v38 forKeyedSubscript:@"numWOLANAccessories"];

      v39 = +[HMDLogEventHistograms configurationDataHistogram];
      v40 = [v39 intervalIndexForValue:{objc_msgSend(cachedConfiguration, "totalTelevisionServiceAccessories")}];
      [dictionary setObject:v40 forKeyedSubscript:@"numTelevisionServiceAccessories"];

      v41 = +[HMDLogEventHistograms configurationDataHistogram];
      v42 = [v41 intervalIndexForValue:{objc_msgSend(cachedConfiguration, "totalBridgedAccessories")}];
      [dictionary setObject:v42 forKeyedSubscript:@"numBridgedAccessories"];

      v43 = +[HMDLogEventHistograms configurationDataHistogram];
      v44 = [v43 intervalIndexForValue:{objc_msgSend(cachedConfiguration, "totalCameraAccessories")}];
      [dictionary setObject:v44 forKeyedSubscript:@"numCameraAccessories"];

      v45 = +[HMDLogEventHistograms configurationDataHistogram];
      v46 = [v45 intervalIndexForValue:{objc_msgSend(cachedConfiguration, "totalCameraAccessoriesRecordingEnabled")}];
      [dictionary setObject:v46 forKeyedSubscript:@"numCameraAccessoriesRecordingEnabled"];

      v47 = +[HMDLogEventHistograms configurationDataHistogram];
      v48 = [v47 intervalIndexForValue:{objc_msgSend(cachedConfiguration, "totalScenes")}];
      [dictionary setObject:v48 forKeyedSubscript:@"numScenes"];

      v49 = +[HMDLogEventHistograms configurationDataHistogram];
      v50 = [v49 intervalIndexForValue:{objc_msgSend(cachedConfiguration, "totalTriggers")}];
      [dictionary setObject:v50 forKeyedSubscript:@"numTriggers"];

      v51 = +[HMDLogEventHistograms configurationDataHistogram];
      v52 = [v51 intervalIndexForValue:{objc_msgSend(cachedConfiguration, "totalActiveTriggers")}];
      [dictionary setObject:v52 forKeyedSubscript:@"numActiveTriggers"];

      v53 = +[HMDLogEventHistograms configurationDataHistogram];
      v54 = [v53 intervalIndexForValue:{objc_msgSend(cachedConfiguration, "totalWidgets")}];
      [dictionary setObject:v54 forKeyedSubscript:@"numHomeWidgetsEnabled"];

      v55 = +[HMDLogEventHistograms configurationDataHistogram];
      v56 = [v55 intervalIndexForValue:{objc_msgSend(cachedConfiguration, "totalAppleAudioAccessories")}];
      [dictionary setObject:v56 forKeyedSubscript:@"numAppleAudioAccessories"];

      v57 = +[HMDLogEventHistograms configurationDataHistogram];
      v58 = [v57 intervalIndexForValue:{objc_msgSend(cachedConfiguration, "totalAppleTVAccessories")}];
      [dictionary setObject:v58 forKeyedSubscript:@"numAppleTVAccessories"];

      v59 = +[HMDLogEventHistograms configurationDataHistogram];
      v60 = [v59 intervalIndexForValue:{objc_msgSend(cachedConfiguration, "totalEnabledResidents")}];
      [dictionary setObject:v60 forKeyedSubscript:@"numEnabledResidents"];

      v61 = +[HMDLogEventHistograms configurationDataHistogram];
      v62 = [v61 intervalIndexForValue:{objc_msgSend(cachedConfiguration, "totalSmartHomeAccessories")}];
      [dictionary setObject:v62 forKeyedSubscript:@"numSmartHomeAccessories"];

      v63 = +[HMDLogEventHistograms configurationDataHistogram];
      v64 = [v63 intervalIndexForValue:{objc_msgSend(cachedConfiguration, "totalAppleMediaAccessories")}];
      [dictionary setObject:v64 forKeyedSubscript:@"numAppleMediaAccessories"];

      v65 = +[HMDLogEventHistograms configurationDataHistogram];
      v66 = [v65 intervalIndexForValue:{objc_msgSend(cachedConfiguration, "totalThirdPartyMediaAccessories")}];
      [dictionary setObject:v66 forKeyedSubscript:@"numThirdPartyMediaAccessories"];

      v67 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(cachedConfiguration, "totalUserPrivilegeBitMask")}];
      [dictionary setObject:v67 forKeyedSubscript:@"totalUserPrivilegeBitMask"];

      v68 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(cachedConfiguration, "isTelevisionOnlyConfiguration")}];
      [dictionary setObject:v68 forKeyedSubscript:@"televisionOnlyConfiguration"];

      v69 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(cachedConfiguration, "isMediaOnlyConfiguration")}];
      [dictionary setObject:v69 forKeyedSubscript:@"mediaOnlyConfiguration"];
    }

    v70 = [dictionary copy];
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
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    cachedConfiguration = [WeakRetained cachedConfiguration];

    if (cachedConfiguration)
    {
      v7 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(cachedConfiguration, "isFMFDevice")}];
      [dictionary setObject:v7 forKeyedSubscript:@"isFMFDevice"];

      v8 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(cachedConfiguration, "isStandaloneWatch")}];
      [dictionary setObject:v8 forKeyedSubscript:@"isStandaloneWatch"];

      v9 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(cachedConfiguration, "isResidentCapable")}];
      [dictionary setObject:v9 forKeyedSubscript:@"currentDeviceResidentCapable"];

      v10 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(cachedConfiguration, "isResidentEnabled")}];
      [dictionary setObject:v10 forKeyedSubscript:@"currentDeviceResidentEnabled"];

      v11 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(cachedConfiguration, "isPrimaryResidentForSomeHome")}];
      [dictionary setObject:v11 forKeyedSubscript:@"currentDeviceResidentPrimaryResidentAnyHome"];

      v12 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(cachedConfiguration, "isResidentFirstEnabledAnyHome")}];
      [dictionary setObject:v12 forKeyedSubscript:@"isResidentFirstEnabledAnyHome"];

      v13 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(cachedConfiguration, "isResidentElectionV2EnabledAnyHome")}];
      [dictionary setObject:v13 forKeyedSubscript:@"isResidentElectionV2EnabledAnyHome"];

      v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(cachedConfiguration, "totalResidentElectionBitMask")}];
      [dictionary setObject:v14 forKeyedSubscript:@"totalResidentElectionBitMask"];
    }

    [dictionary setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"isHH2Enabled"];
    [dictionary setObject:&unk_2866276A0 forKeyedSubscript:@"isHH2Enabled_INT"];
    v15 = [dictionary copy];
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
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    cachedConfiguration = [WeakRetained cachedConfiguration];

    if (cachedConfiguration)
    {
      v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(cachedConfiguration, "totalHomeCategoryBitMask")}];
      [dictionary setObject:v7 forKeyedSubscript:@"totalHomeCategoryBitMask"];

      v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(cachedConfiguration, "totalAppleMediaCategoryBitMask")}];
      [dictionary setObject:v8 forKeyedSubscript:@"totalAppleMediaBitMask"];

      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(cachedConfiguration, "totalThirdPartyMediaCategoryBitMask")}];
      [dictionary setObject:v9 forKeyedSubscript:@"totalThirdPartyMediaBitMask"];

      v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(cachedConfiguration, "currentUserPrivilegeBitMask")}];
      [dictionary setObject:v10 forKeyedSubscript:@"currentUserPrivilegeBitMask"];
    }

    v11 = [dictionary copy];
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

- (void)addDimensionsForHome:(id)home toEventDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v7 = [(HMDCoreAnalyticsLogEventObserverDelegate *)self dimensionsForHome:home];
  [dictionaryCopy addEntriesFromDictionary:v7];
}

- (void)addAggregatedHomeDimensionsToEventDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  aggregatedHomeDimensions = [(HMDCoreAnalyticsLogEventObserverDelegate *)self aggregatedHomeDimensions];
  [dictionaryCopy addEntriesFromDictionary:aggregatedHomeDimensions];
}

- (void)addDimensionsForAccessoryIdentifier:(id)identifier toEventDictionary:(id)dictionary
{
  v19 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  dictionaryCopy = dictionary;
  dataSource = [(HMDCoreAnalyticsLogEventObserverDelegate *)self dataSource];
  v9 = [dataSource accessoryForIdentifier:identifierCopy];

  if (v9)
  {
    [v9 populateVendorDetailsForCoreAnalytics:dictionaryCopy keyPrefix:@"accessory"];
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v15 = 138543618;
      v16 = v13;
      v17 = 2114;
      v18 = identifierCopy;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_ERROR, "%{public}@Accessory with identifier %{public}@ doesn't exist", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)addCommonDimensionsToEventDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  dataSource = [(HMDCoreAnalyticsLogEventObserverDelegate *)self dataSource];
  aggregatedHomeCategorizationDimensions = [(HMDCoreAnalyticsLogEventObserverDelegate *)self aggregatedHomeCategorizationDimensions];
  [dictionaryCopy addEntriesFromDictionary:aggregatedHomeCategorizationDimensions];

  deviceCapabilitiesAndEnablementsDimensions = [(HMDCoreAnalyticsLogEventObserverDelegate *)self deviceCapabilitiesAndEnablementsDimensions];
  [dictionaryCopy addEntriesFromDictionary:deviceCapabilitiesAndEnablementsDimensions];

  v7 = MEMORY[0x277CCABB0];
  deviceStateProvider = [dataSource deviceStateProvider];
  v9 = [v7 numberWithUnsignedInteger:{objc_msgSend(deviceStateProvider, "currentDataSyncState")}];
  [dictionaryCopy setObject:v9 forKeyedSubscript:@"dataSyncState"];

  v10 = MEMORY[0x277CCABB0];
  deviceStateProvider2 = [dataSource deviceStateProvider];
  v12 = [v10 numberWithUnsignedInteger:{objc_msgSend(deviceStateProvider2, "currentHomeManagerStatus")}];
  [dictionaryCopy setObject:v12 forKeyedSubscript:@"homeManagerStatus"];

  v13 = MEMORY[0x277CCABB0];
  deviceStateProvider3 = [dataSource deviceStateProvider];
  v15 = [v13 numberWithInteger:{objc_msgSend(deviceStateProvider3, "deviceDaysSinceSoftwareUpdate")}];
  [dictionaryCopy setObject:v15 forKeyedSubscript:@"daysSinceSWUpdate"];

  v16 = MEMORY[0x277CCABB0];
  deviceStateProvider4 = [dataSource deviceStateProvider];
  v18 = [v16 numberWithUnsignedInteger:{objc_msgSend(deviceStateProvider4, "bitMappedMissingKeys")}];
  [dictionaryCopy setObject:v18 forKeyedSubscript:@"missingKeyTypes"];

  v19 = MEMORY[0x277CCABB0];
  deviceStateProvider5 = [dataSource deviceStateProvider];
  v21 = [v19 numberWithUnsignedInteger:{objc_msgSend(deviceStateProvider5, "bitMappedDuplicateKeys")}];
  [dictionaryCopy setObject:v21 forKeyedSubscript:@"duplicateKeyTypes"];
}

- (HMDCoreAnalyticsLogEventObserverDelegate)initWithDataSource:(id)source
{
  sourceCopy = source;
  v13.receiver = self;
  v13.super_class = HMDCoreAnalyticsLogEventObserverDelegate;
  v5 = [(HMDCoreAnalyticsLogEventObserverDelegate *)&v13 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_dataSource, sourceCopy);
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    homeDimensions = v6->_homeDimensions;
    v6->_homeDimensions = dictionary;

    objc_initWeak(&location, v6);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __63__HMDCoreAnalyticsLogEventObserverDelegate_initWithDataSource___block_invoke;
    v10[3] = &unk_279724810;
    objc_copyWeak(&v11, &location);
    [sourceCopy addConfigurationChangedObserver:v10];
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