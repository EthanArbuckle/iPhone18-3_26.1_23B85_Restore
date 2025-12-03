@interface HMDActionSetEvent
- (BOOL)shouldTriggerMicroLocationLocalizationScanForLogEventObserver:(id)observer;
- (BOOL)shouldTriggerMicroLocationRecordingScanForLogEventObserver:(id)observer;
- (HMDActionSetEvent)initWithActionSet:(id)set source:(unint64_t)source numAccessories:(unsigned int)accessories bundleId:(id)id transactionId:(id)transactionId;
- (HMDHome)home;
- (id)biomeEventsRepresentationForLogObserver:(id)observer;
- (id)microLocationMetadataForLogEventObserver:(id)observer;
@end

@implementation HMDActionSetEvent

- (id)biomeEventsRepresentationForLogObserver:(id)observer
{
  v46 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  home = [(HMDActionSetEvent *)self home];
  v6 = home;
  if (home)
  {
    v41 = home;
    v42 = observerCopy;
    if (self)
    {
      v7 = MEMORY[0x277CCA970];
      v8 = home;
      v9 = [v7 alloc];
      startDate = [(HMMDatedHomeLogEvent *)self startDate];
      endDate = [(HMMDatedHomeLogEvent *)self endDate];
      v12 = [v9 initWithStartDate:startDate endDate:endDate];

      v13 = objc_alloc(MEMORY[0x277CF1980]);
      spiClientIdentifier = [v8 spiClientIdentifier];
      uUIDString = [spiClientIdentifier UUIDString];
      atHomeLevel = [v8 atHomeLevel];

      v17 = (atHomeLevel & 0xFFFFFFFFFFFFFFFELL) == 2;
      v18 = HMDRequestSourceAsString([(HMDActionSetEvent *)self triggerSource]);
      bundleId = [(HMDActionSetEvent *)self bundleId];
      clientMetricIdentifier = [(HMDActionSetEvent *)self clientMetricIdentifier];
      if (clientMetricIdentifier)
      {
        v21 = [v13 initWithDateInterval:v12 homeUniqueIdentifier:uUIDString homeOccupancy:v17 source:v18 clientName:bundleId eventCorrelationIdentifier:clientMetricIdentifier];
      }

      else
      {
        [MEMORY[0x277CCAD78] UUID];
        v28 = v27 = v12;
        [v28 UUIDString];
        v29 = v40 = spiClientIdentifier;
        v21 = [v13 initWithDateInterval:v27 homeUniqueIdentifier:uUIDString homeOccupancy:v17 source:v18 clientName:bundleId eventCorrelationIdentifier:v29];

        spiClientIdentifier = v40;
        v12 = v27;
      }
    }

    else
    {
      v21 = 0;
    }

    v30 = objc_alloc(MEMORY[0x277CF1970]);
    actionSetUniqueIdentifier = [(HMDActionSetEvent *)self actionSetUniqueIdentifier];
    uUIDString2 = [actionSetUniqueIdentifier UUIDString];
    actionSetType = [(HMDActionSetEvent *)self actionSetType];
    accessoryUniqueIdentifiers = [(HMDActionSetEvent *)self accessoryUniqueIdentifiers];
    actionSetName = [(HMDActionSetEvent *)self actionSetName];
    v6 = v41;
    name = [v41 name];
    v37 = [v30 initWithBase:v21 actionSetUniqueIdentifier:uUIDString2 actionSetType:actionSetType associatedAccessoryUniqueIdentifiers:accessoryUniqueIdentifiers actionSetName:actionSetName homeName:name];
    v43 = v37;
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v43 count:1];

    observerCopy = v42;
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    selfCopy = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543362;
      v45 = v25;
      _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@Unable to log action set event metadata to biome, no home", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v22);
    v26 = MEMORY[0x277CBEBF8];
  }

  v38 = *MEMORY[0x277D85DE8];

  return v26;
}

- (BOOL)shouldTriggerMicroLocationRecordingScanForLogEventObserver:(id)observer
{
  numAccessoriesInHome = [(HMDActionSetEvent *)self numAccessoriesInHome];
  numNonEmptyScenesInHome = [(HMDActionSetEvent *)self numNonEmptyScenesInHome];
  triggerSource = [(HMDActionSetEvent *)self triggerSource];
  if (numNonEmptyScenesInHome + numAccessoriesInHome > 3)
  {
    return (triggerSource < 7) & ((0x18u >> triggerSource) ^ 1);
  }

  else
  {
    return 0;
  }
}

- (BOOL)shouldTriggerMicroLocationLocalizationScanForLogEventObserver:(id)observer
{
  numAccessoriesInHome = [(HMDActionSetEvent *)self numAccessoriesInHome];
  numNonEmptyScenesInHome = [(HMDActionSetEvent *)self numNonEmptyScenesInHome];
  triggerSource = [(HMDActionSetEvent *)self triggerSource];
  if (numNonEmptyScenesInHome + numAccessoriesInHome > 3)
  {
    return (triggerSource < 7) & ((0x18u >> triggerSource) ^ 1);
  }

  else
  {
    return 0;
  }
}

- (id)microLocationMetadataForLogEventObserver:(id)observer
{
  v4 = MEMORY[0x277D28780];
  actionSetUniqueIdentifier = [(HMDActionSetEvent *)self actionSetUniqueIdentifier];
  uUIDString = [actionSetUniqueIdentifier UUIDString];
  actionSetName = [(HMDActionSetEvent *)self actionSetName];
  actionSetType = [(HMDActionSetEvent *)self actionSetType];
  bundleId = [(HMDActionSetEvent *)self bundleId];
  v10 = bundleId;
  if (bundleId)
  {
    v11 = bundleId;
  }

  else
  {
    v11 = @"Unknown";
  }

  v12 = HMDRequestSourceAsString([(HMDActionSetEvent *)self triggerSource]);
  homeName = [(HMDActionSetEvent *)self homeName];
  v14 = [v4 metadataForHomekitActionSetEventWithUUID:uUIDString name:actionSetName type:actionSetType clientName:v11 source:v12 homeName:homeName];

  return v14;
}

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (HMDActionSetEvent)initWithActionSet:(id)set source:(unint64_t)source numAccessories:(unsigned int)accessories bundleId:(id)id transactionId:(id)transactionId
{
  setCopy = set;
  idCopy = id;
  transactionIdCopy = transactionId;
  home = [setCopy home];
  uuid = [home uuid];
  v54.receiver = self;
  v54.super_class = HMDActionSetEvent;
  v17 = [(HMMDatedHomeLogEvent *)&v54 initWithHomeUUID:uuid];

  if (v17)
  {
    home2 = [setCopy home];
    currentActivity = [MEMORY[0x277D0F770] currentActivity];
    clientMetricIdentifier = [currentActivity clientMetricIdentifier];
    clientMetricIdentifier = v17->_clientMetricIdentifier;
    v17->_clientMetricIdentifier = clientMetricIdentifier;

    uuid2 = [setCopy uuid];
    v23 = [uuid2 copy];
    actionSetUUID = v17->_actionSetUUID;
    v17->_actionSetUUID = v23;

    spiClientIdentifier = [setCopy spiClientIdentifier];
    v26 = [spiClientIdentifier copy];
    actionSetUniqueIdentifier = v17->_actionSetUniqueIdentifier;
    v17->_actionSetUniqueIdentifier = v26;

    v17->_numAccessoriesModified = accessories;
    accessories = [home2 accessories];
    v17->_numAccessoriesInHome = [accessories count];

    actionSets = [home2 actionSets];
    v30 = [actionSets na_filter:&__block_literal_global_129746];
    v17->_numNonEmptyScenesInHome = [v30 count];

    v17->_triggerSource = source;
    v31 = [idCopy copy];
    bundleId = v17->_bundleId;
    v17->_bundleId = v31;

    v33 = [transactionIdCopy copy];
    transactionId = v17->_transactionId;
    v17->_transactionId = v33;

    serializedIdentifier = [setCopy serializedIdentifier];
    v36 = [serializedIdentifier copy];
    serializedIdentifier = v17->_serializedIdentifier;
    v17->_serializedIdentifier = v36;

    name = [setCopy name];
    v39 = [name copy];
    actionSetName = v17->_actionSetName;
    v17->_actionSetName = v39;

    type = [setCopy type];
    v42 = [type copy];
    actionSetType = v17->_actionSetType;
    v17->_actionSetType = v42;

    objc_storeWeak(&v17->_home, home2);
    name2 = [home2 name];
    v45 = [name2 copy];
    homeName = v17->_homeName;
    v17->_homeName = v45;

    associatedAccessories = [setCopy associatedAccessories];
    v48 = [associatedAccessories na_map:&__block_literal_global_3_129747];
    accessoryUUIDs = v17->_accessoryUUIDs;
    v17->_accessoryUUIDs = v48;

    associatedAccessories2 = [setCopy associatedAccessories];
    v51 = [associatedAccessories2 na_map:&__block_literal_global_5_129748];
    accessoryUniqueIdentifiers = v17->_accessoryUniqueIdentifiers;
    v17->_accessoryUniqueIdentifiers = v51;
  }

  return v17;
}

id __84__HMDActionSetEvent_initWithActionSet_source_numAccessories_bundleId_transactionId___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 spiClientIdentifier];
  v3 = [v2 UUIDString];

  return v3;
}

id __84__HMDActionSetEvent_initWithActionSet_source_numAccessories_bundleId_transactionId___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 uuid];
  v3 = [v2 UUIDString];

  return v3;
}

BOOL __84__HMDActionSetEvent_initWithActionSet_source_numAccessories_bundleId_transactionId___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 actions];
  v3 = [v2 count] != 0;

  return v3;
}

@end