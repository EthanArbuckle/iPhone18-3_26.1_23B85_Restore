@interface HDDeviceStoreServer
+ (id)requiredEntitlements;
- (void)remote_deleteDevice:(id)a3 completion:(id)a4;
- (void)remote_fetchAllDevicesWithCompletion:(id)a3;
- (void)remote_fetchDevicesMatchingValues:(id)a3 forProperty:(id)a4 completion:(id)a5;
- (void)remote_fetchGymkitAndBluetoothDevicesMatchingValues:(id)a3 forProperty:(id)a4 completion:(id)a5;
@end

@implementation HDDeviceStoreServer

- (void)remote_fetchDevicesMatchingValues:(id)a3 forProperty:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(HDStandardTaskServer *)self profile];
  v12 = [v11 deviceManager];
  v15 = 0;
  v13 = [v12 devicesWithProperty:v9 matchingValues:v10 error:&v15];

  v14 = v15;
  v8[2](v8, v13, v14);
}

- (void)remote_fetchGymkitAndBluetoothDevicesMatchingValues:(id)a3 forProperty:(id)a4 completion:(id)a5
{
  v111 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HDStandardTaskServer *)self profile];
  v12 = [v11 sourceManager];
  v13 = *MEMORY[0x277CCE288];
  v102 = 0;
  v14 = [v12 allSourcesForBundleIdentifier:v13 error:&v102];
  v15 = v102;

  if (v14)
  {
    v16 = [(HDStandardTaskServer *)self profile];
    v17 = [v16 sourceManager];
    v18 = *MEMORY[0x277CCE2C0];
    v101 = v15;
    v19 = [v17 allSourcesForBundleIdentifier:v18 error:&v101];
    v20 = v101;

    if (v19)
    {
      v80 = self;
      v21 = [(HDStandardTaskServer *)self profile];
      v22 = [v21 sourceManager];
      v23 = *MEMORY[0x277CCE420];
      v100 = v20;
      v24 = [v22 allSourcesForBundleIdentifier:v23 error:&v100];
      v25 = v100;

      if (v24)
      {
        v76 = v24;
        v77 = v19;
        v75 = v10;
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

        v45 = v80;
        v46 = [(HDStandardTaskServer *)v80 profile];
        v47 = [v46 dataProvenanceManager];
        v48 = [(HDStandardTaskServer *)v80 profile];
        v87 = v25;
        v49 = [v47 deviceIDsForSourceIDs:v26 profile:v48 error:&v87];
        v50 = v87;

        v73 = v49;
        if (v49)
        {
          v71 = v9;
          v72 = v8;
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
                v58 = [(HDStandardTaskServer *)v45 profile];
                v59 = [v58 deviceManager];
                v82 = v50;
                v60 = [v59 deviceForPersistentID:v57 error:&v82];
                v50 = v82;

                if (v60)
                {
                  [v79 addObject:v60];
                  v45 = v80;
                }

                else
                {
                  _HKInitializeLogging();
                  v61 = *MEMORY[0x277CCC2A0];
                  v45 = v80;
                  if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412546;
                    v104 = v80;
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

          v64 = [(HDStandardTaskServer *)v62 profile];
          v65 = [v64 deviceManager];
          v81 = v50;
          v9 = v71;
          v8 = v72;
          v66 = [v65 devicesWithProperty:v71 matchingValues:v72 error:&v81];
          v50 = v81;

          v14 = v74;
          if (v66)
          {
            v67 = [v66 allObjects];
            v68 = v79;
            [v79 addObjectsFromArray:v67];

            v69 = [MEMORY[0x277CBEB98] setWithArray:v79];
            v10 = v75;
            (v75)[2](v75, v69, 0);
          }

          else
          {
            v10 = v75;
            v75[2](v75, 0, v50);
            v68 = v79;
          }
        }

        else
        {
          v10 = v75;
          v75[2](v75, 0, v50);
          v14 = v74;
        }

        v24 = v76;

        v25 = v50;
        v19 = v77;
      }

      else
      {
        v10[2](v10, 0, v25);
      }

      v20 = v25;
    }

    else
    {
      v10[2](v10, 0, v20);
    }

    v15 = v20;
  }

  else
  {
    v10[2](v10, 0, v15);
  }

  v70 = *MEMORY[0x277D85DE8];
}

- (void)remote_fetchAllDevicesWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(HDStandardTaskServer *)self profile];
  v6 = [v5 deviceManager];
  v9 = 0;
  v7 = [v6 allDevicesWithError:&v9];
  v8 = v9;

  v4[2](v4, v7, v8);
}

- (void)remote_deleteDevice:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HDStandardTaskServer *)self profile];
  v9 = [v8 deviceManager];
  v12 = 0;
  v10 = [v9 deleteDevice:v7 error:&v12];

  v11 = v12;
  v6[2](v6, v10, v11);
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