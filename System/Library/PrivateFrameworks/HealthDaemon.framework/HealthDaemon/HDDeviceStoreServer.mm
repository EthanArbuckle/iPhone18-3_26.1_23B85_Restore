@interface HDDeviceStoreServer
+ (id)requiredEntitlements;
- (void)remote_deleteDevice:(id)device completion:(id)completion;
- (void)remote_fetchAllDevicesWithCompletion:(id)completion;
- (void)remote_fetchDevicesMatchingValues:(id)values forProperty:(id)property completion:(id)completion;
- (void)remote_fetchGymkitAndBluetoothDevicesMatchingValues:(id)values forProperty:(id)property completion:(id)completion;
@end

@implementation HDDeviceStoreServer

- (void)remote_fetchDevicesMatchingValues:(id)values forProperty:(id)property completion:(id)completion
{
  completionCopy = completion;
  propertyCopy = property;
  valuesCopy = values;
  profile = [(HDStandardTaskServer *)self profile];
  deviceManager = [profile deviceManager];
  v15 = 0;
  v13 = [deviceManager devicesWithProperty:propertyCopy matchingValues:valuesCopy error:&v15];

  v14 = v15;
  completionCopy[2](completionCopy, v13, v14);
}

- (void)remote_fetchGymkitAndBluetoothDevicesMatchingValues:(id)values forProperty:(id)property completion:(id)completion
{
  v111 = *MEMORY[0x277D85DE8];
  valuesCopy = values;
  propertyCopy = property;
  completionCopy = completion;
  profile = [(HDStandardTaskServer *)self profile];
  sourceManager = [profile sourceManager];
  v13 = *MEMORY[0x277CCE288];
  v102 = 0;
  v14 = [sourceManager allSourcesForBundleIdentifier:v13 error:&v102];
  v15 = v102;

  if (v14)
  {
    profile2 = [(HDStandardTaskServer *)self profile];
    sourceManager2 = [profile2 sourceManager];
    v18 = *MEMORY[0x277CCE2C0];
    v101 = v15;
    v19 = [sourceManager2 allSourcesForBundleIdentifier:v18 error:&v101];
    v20 = v101;

    if (v19)
    {
      selfCopy = self;
      profile3 = [(HDStandardTaskServer *)self profile];
      sourceManager3 = [profile3 sourceManager];
      v23 = *MEMORY[0x277CCE420];
      v100 = v20;
      v24 = [sourceManager3 allSourcesForBundleIdentifier:v23 error:&v100];
      v25 = v100;

      if (v24)
      {
        v76 = v24;
        v77 = v19;
        v75 = completionCopy;
        v26 = objc_alloc_init(MEMORY[0x277CBEB58]);
        v96 = 0u;
        v97 = 0u;
        v98 = 0u;
        v99 = 0u;
        v74 = v14;
        v27 = v14;
        v28 = [v27 countByEnumeratingWithState:&v96 objects:v110 count:16];
        if (v28)
        {
          v29 = v28;
          v30 = *v97;
          do
          {
            for (i = 0; i != v29; ++i)
            {
              if (*v97 != v30)
              {
                objc_enumerationMutation(v27);
              }

              v32 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(*(*(&v96 + 1) + 8 * i), "persistentID")}];
              [v26 addObject:v32];
            }

            v29 = [v27 countByEnumeratingWithState:&v96 objects:v110 count:16];
          }

          while (v29);
        }

        v94 = 0u;
        v95 = 0u;
        v92 = 0u;
        v93 = 0u;
        v33 = v77;
        v34 = [v33 countByEnumeratingWithState:&v92 objects:v109 count:16];
        if (v34)
        {
          v35 = v34;
          v36 = *v93;
          do
          {
            for (j = 0; j != v35; ++j)
            {
              if (*v93 != v36)
              {
                objc_enumerationMutation(v33);
              }

              v38 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(*(*(&v92 + 1) + 8 * j), "persistentID")}];
              [v26 addObject:v38];
            }

            v35 = [v33 countByEnumeratingWithState:&v92 objects:v109 count:16];
          }

          while (v35);
        }

        v90 = 0u;
        v91 = 0u;
        v88 = 0u;
        v89 = 0u;
        v39 = v24;
        v40 = [v39 countByEnumeratingWithState:&v88 objects:v108 count:16];
        if (v40)
        {
          v41 = v40;
          v42 = *v89;
          do
          {
            for (k = 0; k != v41; ++k)
            {
              if (*v89 != v42)
              {
                objc_enumerationMutation(v39);
              }

              v44 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(*(*(&v88 + 1) + 8 * k), "persistentID")}];
              [v26 addObject:v44];
            }

            v41 = [v39 countByEnumeratingWithState:&v88 objects:v108 count:16];
          }

          while (v41);
        }

        v45 = selfCopy;
        profile4 = [(HDStandardTaskServer *)selfCopy profile];
        dataProvenanceManager = [profile4 dataProvenanceManager];
        profile5 = [(HDStandardTaskServer *)selfCopy profile];
        v87 = v25;
        v49 = [dataProvenanceManager deviceIDsForSourceIDs:v26 profile:profile5 error:&v87];
        v50 = v87;

        v73 = v49;
        if (v49)
        {
          v71 = propertyCopy;
          v72 = valuesCopy;
          v51 = objc_alloc_init(MEMORY[0x277CBEB18]);
          v83 = 0u;
          v84 = 0u;
          v85 = 0u;
          v86 = 0u;
          obj = v49;
          v52 = [obj countByEnumeratingWithState:&v83 objects:v107 count:16];
          v79 = v51;
          if (v52)
          {
            v53 = v52;
            v54 = *v84;
            do
            {
              for (m = 0; m != v53; ++m)
              {
                v56 = v50;
                if (*v84 != v54)
                {
                  objc_enumerationMutation(obj);
                }

                v57 = *(*(&v83 + 1) + 8 * m);
                profile6 = [(HDStandardTaskServer *)v45 profile];
                deviceManager = [profile6 deviceManager];
                v82 = v50;
                v60 = [deviceManager deviceForPersistentID:v57 error:&v82];
                v50 = v82;

                if (v60)
                {
                  [v79 addObject:v60];
                  v45 = selfCopy;
                }

                else
                {
                  _HKInitializeLogging();
                  v61 = *MEMORY[0x277CCC2A0];
                  v45 = selfCopy;
                  if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412546;
                    v104 = selfCopy;
                    v105 = 2114;
                    v106 = v57;
                    _os_log_error_impl(&dword_228986000, v61, OS_LOG_TYPE_ERROR, "%@: Failed to fetch device with ID: %{public}@", buf, 0x16u);
                  }
                }
              }

              v53 = [obj countByEnumeratingWithState:&v83 objects:v107 count:16];
            }

            while (v53);
          }

          v62 = v45;
          v63 = v50;

          profile7 = [(HDStandardTaskServer *)v62 profile];
          deviceManager2 = [profile7 deviceManager];
          v81 = v50;
          propertyCopy = v71;
          valuesCopy = v72;
          v66 = [deviceManager2 devicesWithProperty:v71 matchingValues:v72 error:&v81];
          v50 = v81;

          v14 = v74;
          if (v66)
          {
            allObjects = [v66 allObjects];
            v68 = v79;
            [v79 addObjectsFromArray:allObjects];

            v69 = [MEMORY[0x277CBEB98] setWithArray:v79];
            completionCopy = v75;
            (v75)[2](v75, v69, 0);
          }

          else
          {
            completionCopy = v75;
            v75[2](v75, 0, v50);
            v68 = v79;
          }
        }

        else
        {
          completionCopy = v75;
          v75[2](v75, 0, v50);
          v14 = v74;
        }

        v24 = v76;

        v25 = v50;
        v19 = v77;
      }

      else
      {
        completionCopy[2](completionCopy, 0, v25);
      }

      v20 = v25;
    }

    else
    {
      completionCopy[2](completionCopy, 0, v20);
    }

    v15 = v20;
  }

  else
  {
    completionCopy[2](completionCopy, 0, v15);
  }

  v70 = *MEMORY[0x277D85DE8];
}

- (void)remote_fetchAllDevicesWithCompletion:(id)completion
{
  completionCopy = completion;
  profile = [(HDStandardTaskServer *)self profile];
  deviceManager = [profile deviceManager];
  v9 = 0;
  v7 = [deviceManager allDevicesWithError:&v9];
  v8 = v9;

  completionCopy[2](completionCopy, v7, v8);
}

- (void)remote_deleteDevice:(id)device completion:(id)completion
{
  completionCopy = completion;
  deviceCopy = device;
  profile = [(HDStandardTaskServer *)self profile];
  deviceManager = [profile deviceManager];
  v12 = 0;
  v10 = [deviceManager deleteDevice:deviceCopy error:&v12];

  v11 = v12;
  completionCopy[2](completionCopy, v10, v11);
}

+ (id)requiredEntitlements
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = *MEMORY[0x277CCC8B0];
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end