@interface HMDActionSetEvent
- (BOOL)shouldTriggerMicroLocationLocalizationScanForLogEventObserver:(id)a3;
- (BOOL)shouldTriggerMicroLocationRecordingScanForLogEventObserver:(id)a3;
- (HMDActionSetEvent)initWithActionSet:(id)a3 source:(unint64_t)a4 numAccessories:(unsigned int)a5 bundleId:(id)a6 transactionId:(id)a7;
- (HMDHome)home;
- (id)biomeEventsRepresentationForLogObserver:(id)a3;
- (id)microLocationMetadataForLogEventObserver:(id)a3;
@end

@implementation HMDActionSetEvent

- (id)biomeEventsRepresentationForLogObserver:(id)a3
{
  v46 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDActionSetEvent *)self home];
  v6 = v5;
  if (v5)
  {
    v41 = v5;
    v42 = v4;
    if (self)
    {
      v7 = MEMORY[0x277CCA970];
      v8 = v5;
      v9 = [v7 alloc];
      v10 = [(HMMDatedHomeLogEvent *)self startDate];
      v11 = [(HMMDatedHomeLogEvent *)self endDate];
      v12 = [v9 initWithStartDate:v10 endDate:v11];

      v13 = objc_alloc(MEMORY[0x277CF1980]);
      v14 = [v8 spiClientIdentifier];
      v15 = [v14 UUIDString];
      v16 = [v8 atHomeLevel];

      v17 = (v16 & 0xFFFFFFFFFFFFFFFELL) == 2;
      v18 = HMDRequestSourceAsString([(HMDActionSetEvent *)self triggerSource]);
      v19 = [(HMDActionSetEvent *)self bundleId];
      v20 = [(HMDActionSetEvent *)self clientMetricIdentifier];
      if (v20)
      {
        v21 = [v13 initWithDateInterval:v12 homeUniqueIdentifier:v15 homeOccupancy:v17 source:v18 clientName:v19 eventCorrelationIdentifier:v20];
      }

      else
      {
        [MEMORY[0x277CCAD78] UUID];
        v28 = v27 = v12;
        [v28 UUIDString];
        v29 = v40 = v14;
        v21 = [v13 initWithDateInterval:v27 homeUniqueIdentifier:v15 homeOccupancy:v17 source:v18 clientName:v19 eventCorrelationIdentifier:v29];

        v14 = v40;
        v12 = v27;
      }
    }

    else
    {
      v21 = 0;
    }

    v30 = objc_alloc(MEMORY[0x277CF1970]);
    v31 = [(HMDActionSetEvent *)self actionSetUniqueIdentifier];
    v32 = [v31 UUIDString];
    v33 = [(HMDActionSetEvent *)self actionSetType];
    v34 = [(HMDActionSetEvent *)self accessoryUniqueIdentifiers];
    v35 = [(HMDActionSetEvent *)self actionSetName];
    v6 = v41;
    v36 = [v41 name];
    v37 = [v30 initWithBase:v21 actionSetUniqueIdentifier:v32 actionSetType:v33 associatedAccessoryUniqueIdentifiers:v34 actionSetName:v35 homeName:v36];
    v43 = v37;
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v43 count:1];

    v4 = v42;
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    v23 = self;
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

- (BOOL)shouldTriggerMicroLocationRecordingScanForLogEventObserver:(id)a3
{
  v4 = [(HMDActionSetEvent *)self numAccessoriesInHome];
  v5 = [(HMDActionSetEvent *)self numNonEmptyScenesInHome];
  v6 = [(HMDActionSetEvent *)self triggerSource];
  if (v5 + v4 > 3)
  {
    return (v6 < 7) & ((0x18u >> v6) ^ 1);
  }

  else
  {
    return 0;
  }
}

- (BOOL)shouldTriggerMicroLocationLocalizationScanForLogEventObserver:(id)a3
{
  v4 = [(HMDActionSetEvent *)self numAccessoriesInHome];
  v5 = [(HMDActionSetEvent *)self numNonEmptyScenesInHome];
  v6 = [(HMDActionSetEvent *)self triggerSource];
  if (v5 + v4 > 3)
  {
    return (v6 < 7) & ((0x18u >> v6) ^ 1);
  }

  else
  {
    return 0;
  }
}

- (id)microLocationMetadataForLogEventObserver:(id)a3
{
  v4 = MEMORY[0x277D28780];
  v5 = [(HMDActionSetEvent *)self actionSetUniqueIdentifier];
  v6 = [v5 UUIDString];
  v7 = [(HMDActionSetEvent *)self actionSetName];
  v8 = [(HMDActionSetEvent *)self actionSetType];
  v9 = [(HMDActionSetEvent *)self bundleId];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = @"Unknown";
  }

  v12 = HMDRequestSourceAsString([(HMDActionSetEvent *)self triggerSource]);
  v13 = [(HMDActionSetEvent *)self homeName];
  v14 = [v4 metadataForHomekitActionSetEventWithUUID:v6 name:v7 type:v8 clientName:v11 source:v12 homeName:v13];

  return v14;
}

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (HMDActionSetEvent)initWithActionSet:(id)a3 source:(unint64_t)a4 numAccessories:(unsigned int)a5 bundleId:(id)a6 transactionId:(id)a7
{
  v12 = a3;
  v13 = a6;
  v14 = a7;
  v15 = [v12 home];
  v16 = [v15 uuid];
  v54.receiver = self;
  v54.super_class = HMDActionSetEvent;
  v17 = [(HMMDatedHomeLogEvent *)&v54 initWithHomeUUID:v16];

  if (v17)
  {
    v18 = [v12 home];
    v19 = [MEMORY[0x277D0F770] currentActivity];
    v20 = [v19 clientMetricIdentifier];
    clientMetricIdentifier = v17->_clientMetricIdentifier;
    v17->_clientMetricIdentifier = v20;

    v22 = [v12 uuid];
    v23 = [v22 copy];
    actionSetUUID = v17->_actionSetUUID;
    v17->_actionSetUUID = v23;

    v25 = [v12 spiClientIdentifier];
    v26 = [v25 copy];
    actionSetUniqueIdentifier = v17->_actionSetUniqueIdentifier;
    v17->_actionSetUniqueIdentifier = v26;

    v17->_numAccessoriesModified = a5;
    v28 = [v18 accessories];
    v17->_numAccessoriesInHome = [v28 count];

    v29 = [v18 actionSets];
    v30 = [v29 na_filter:&__block_literal_global_129746];
    v17->_numNonEmptyScenesInHome = [v30 count];

    v17->_triggerSource = a4;
    v31 = [v13 copy];
    bundleId = v17->_bundleId;
    v17->_bundleId = v31;

    v33 = [v14 copy];
    transactionId = v17->_transactionId;
    v17->_transactionId = v33;

    v35 = [v12 serializedIdentifier];
    v36 = [v35 copy];
    serializedIdentifier = v17->_serializedIdentifier;
    v17->_serializedIdentifier = v36;

    v38 = [v12 name];
    v39 = [v38 copy];
    actionSetName = v17->_actionSetName;
    v17->_actionSetName = v39;

    v41 = [v12 type];
    v42 = [v41 copy];
    actionSetType = v17->_actionSetType;
    v17->_actionSetType = v42;

    objc_storeWeak(&v17->_home, v18);
    v44 = [v18 name];
    v45 = [v44 copy];
    homeName = v17->_homeName;
    v17->_homeName = v45;

    v47 = [v12 associatedAccessories];
    v48 = [v47 na_map:&__block_literal_global_3_129747];
    accessoryUUIDs = v17->_accessoryUUIDs;
    v17->_accessoryUUIDs = v48;

    v50 = [v12 associatedAccessories];
    v51 = [v50 na_map:&__block_literal_global_5_129748];
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