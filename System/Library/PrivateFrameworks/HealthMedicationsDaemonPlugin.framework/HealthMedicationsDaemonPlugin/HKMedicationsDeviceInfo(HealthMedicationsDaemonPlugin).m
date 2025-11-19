@interface HKMedicationsDeviceInfo(HealthMedicationsDaemonPlugin)
+ (id)deviceInfoFromStorageGroup:()HealthMedicationsDaemonPlugin syncIdentityManager:;
+ (id)localDeviceInfo;
@end

@implementation HKMedicationsDeviceInfo(HealthMedicationsDaemonPlugin)

+ (id)localDeviceInfo
{
  v0 = objc_alloc(MEMORY[0x277D115E0]);
  v1 = [MEMORY[0x277CCDD30] sharedBehavior];
  v2 = [v1 currentDeviceDisplayName];
  v3 = [MEMORY[0x277CCDD30] sharedBehavior];
  v4 = [v3 currentDeviceProductType];
  v5 = [MEMORY[0x277CCDD30] sharedBehavior];
  v6 = v5;
  if (v5)
  {
    [v5 currentOSVersionStruct];
  }

  else
  {
    memset(v9, 0, sizeof(v9));
  }

  v7 = [v0 _initLocalDeviceWithName:v2 model:v4 operatingSystemVersion:v9 scheduleCompatibilityVersion:1];

  return v7;
}

+ (id)deviceInfoFromStorageGroup:()HealthMedicationsDaemonPlugin syncIdentityManager:
{
  v45 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v35 = a4;
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v7 = [v5 storageEntries];
  v8 = [v7 countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v41;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v41 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v40 + 1) + 8 * i);
        v13 = [v12 key];
        [v6 setObject:v12 forKeyedSubscript:v13];
      }

      v9 = [v7 countByEnumeratingWithState:&v40 objects:v44 count:16];
    }

    while (v9);
  }

  v14 = [v5 deviceContext];
  v15 = [v14 syncIdentity];
  v16 = [v15 hardwareIdentifier];

  v17 = [v6 objectForKeyedSubscript:@"_Name"];
  v18 = [v17 stringValue:0];

  v19 = [v6 objectForKeyedSubscript:@"_Model"];
  v20 = [v19 stringValue:0];

  v21 = [v6 objectForKeyedSubscript:@"_OperatingSystemVersion"];
  v22 = [v21 stringValue:0];

  v23 = [v6 objectForKeyedSubscript:@"_ScheduleCompatibilityVersion"];
  v24 = [v23 numberValue:0];

  v25 = 0;
  if (v16 && v18 && v20 && v22 && v24)
  {
    v38 = 0uLL;
    v39 = 0;
    HKNSOperatingSystemVersionFromString();
    v33 = [v24 integerValue];
    [v5 deviceContext];
    v26 = v34 = v5;
    v27 = [v26 syncIdentity];
    v28 = [v35 currentSyncIdentity];
    v29 = [v28 identity];
    v32 = [v27 isEqual:v29];

    v5 = v34;
    v36 = 0uLL;
    v37 = 0;
    v25 = [objc_alloc(MEMORY[0x277D115E0]) initWithHardwareIdentifier:v16 name:v18 model:v20 operatingSystemVersion:&v36 scheduleCompatibilityVersion:v33 localDevice:v32];
  }

  v30 = *MEMORY[0x277D85DE8];

  return v25;
}

@end