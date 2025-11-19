@interface HMMTRHAPEnumerator
+ (id)logCategory;
- (HMMTRHAPEnumerator)initWithClusterIDCharacteristicMap:(id)a3;
- (id)_createBridgedHAPAccessoryWithServer:(id)a3 services:(id)a4 instanceId:(id)a5 endpointID:(id)a6;
- (id)_serviceLabelIndexMapForDescriptions:(id)a3;
- (id)enumerateBridgedAccessoriesFromAccessories:(id)a3 serviceDescriptionsDictionary:(id)a4 namesDictionary:(id)a5 topology:(id)a6 server:(id)a7 legacyInstanceIDAssignment:(BOOL)a8;
- (id)enumerateServicesFromServices:(id)a3 serviceDescriptionsDictionary:(id)a4 topology:(id)a5 nodeID:(id)a6 primaryAccessory:(id)a7 legacyInstanceIDAssignment:(BOOL)a8;
- (void)_createHAPServicesFromServiceDescriptions:(id)a3 topology:(id)a4 nodeID:(id)a5 accessoryEndpointID:(id)a6 services:(id)a7 startingServiceInstanceID:(int64_t *)a8 primaryAccessory:(id)a9 standaloneServiceLabelIndexMap:(id)a10;
@end

@implementation HMMTRHAPEnumerator

- (id)_createBridgedHAPAccessoryWithServer:(id)a3 services:(id)a4 instanceId:(id)a5 endpointID:(id)a6
{
  v8 = a3;
  v9 = MEMORY[0x277CFE9F8];
  v10 = a5;
  v11 = a4;
  v12 = [[v9 alloc] initWithServer:v8 instanceID:v10 parsedServices:v11];

  if (v12)
  {
    v13 = [v8 nodeID];
    v14 = [HMMTRUtilities identifierStringWithCHIPNodeID:v13];
    [v12 setIdentifier:v14];

    v15 = [v8 primaryAccessory];
    v16 = [v15 serverIdentifier];
    [v12 setServerIdentifier:v16];

    [v12 setPrimary:0];
  }

  return v12;
}

- (void)_createHAPServicesFromServiceDescriptions:(id)a3 topology:(id)a4 nodeID:(id)a5 accessoryEndpointID:(id)a6 services:(id)a7 startingServiceInstanceID:(int64_t *)a8 primaryAccessory:(id)a9 standaloneServiceLabelIndexMap:(id)a10
{
  v122 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v85 = a4;
  v94 = a5;
  v80 = a6;
  v82 = a7;
  v15 = a9;
  v16 = a10;
  v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v88 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v18 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v96 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v107 = 0u;
  v108 = 0u;
  v109 = 0u;
  v110 = 0u;
  v19 = v14;
  v20 = [v19 countByEnumeratingWithState:&v107 objects:v121 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v108;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v108 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v107 + 1) + 8 * i);
        v25 = [v24 linkedServiceTypes];
        if ([v25 count])
        {
          v26 = v17;
        }

        else
        {
          v26 = v88;
        }

        [v26 addObject:v24];
      }

      v21 = [v19 countByEnumeratingWithState:&v107 objects:v121 count:16];
    }

    while (v21);
  }

  v84 = v16;
  v86 = v15;
  v79 = v19;

  v27 = [MEMORY[0x277CBEB18] arrayWithArray:v88];
  v78 = v17;
  [v27 addObjectsFromArray:v17];
  v105 = 0u;
  v106 = 0u;
  v103 = 0u;
  v104 = 0u;
  obj = v27;
  v90 = [obj countByEnumeratingWithState:&v103 objects:v120 count:16];
  if (v90)
  {
    v91 = 0;
    v87 = *v104;
    v81 = 1;
    while (1)
    {
      for (j = 0; j != v90; ++j)
      {
        if (*v104 != v87)
        {
          objc_enumerationMutation(obj);
        }

        v29 = *(*(&v103 + 1) + 8 * j);
        v30 = [MEMORY[0x277CBEB18] array];
        v31 = [v29 serviceType];
        v32 = [v29 linkedServiceTypes];
        v98 = [v29 endpoint];
        v33 = MEMORY[0x277CBEB18];
        v34 = [v29 requiredCharacteristics];
        v35 = [v33 arrayWithArray:v34];

        v36 = [v29 optionalCharacteristics];
        [v35 addObjectsFromArray:v36];

        [v96 setObject:MEMORY[0x277CBEBF8] forKey:v31];
        v97 = v35;
        if ([v35 count])
        {
          v93 = v32;
          if ([v29 optionalServiceLabelIndexIncluded])
          {
            if (v84)
            {
              v37 = [v29 endpoint];
              v38 = [v37 stringValue];
              v95 = [v84 valueForKey:v38];
            }

            else
            {
              v95 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
              ++v81;
            }

            v44 = objc_autoreleasePoolPush();
            v45 = self;
            v46 = HMFGetOSLogHandle();
            v43 = v91;
            if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
            {
              v47 = HMFGetLogIdentifier();
              v48 = [v29 endpoint];
              *buf = 138544130;
              v113 = v47;
              v114 = 2112;
              v115 = v95;
              v116 = 2112;
              v117 = v48;
              v118 = 2112;
              v119 = v94;
              _os_log_impl(&dword_22AEAE000, v46, OS_LOG_TYPE_INFO, "%{public}@Service label index enumerated to %@ for endpoint %@ of node %@", buf, 0x2Au);
            }

            objc_autoreleasePoolPop(v44);
            v32 = v93;
            if (!v91)
            {
LABEL_29:
              if (v84 || v81 >= 2)
              {
                v49 = objc_autoreleasePoolPush();
                v50 = self;
                v51 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
                {
                  v52 = HMFGetLogIdentifier();
                  *buf = 138543874;
                  v113 = v52;
                  v114 = 2112;
                  v115 = v80;
                  v116 = 2112;
                  v117 = v94;
                  _os_log_impl(&dword_22AEAE000, v51, OS_LOG_TYPE_INFO, "%{public}@Constructed Service Label service at endpoint %@ of node %@", buf, 0x20u);
                }

                objc_autoreleasePoolPop(v49);
                v53 = [HMMTRAccessoryServerFactory createHMMTRHAPServiceLabelServiceWithEndpointID:v80 nodeID:v94];
                v43 = v53;
                if (v86)
                {
                  [v53 setAccessory:?];
                }

                [v82 addObject:v43];
                if (v43)
                {
                  goto LABEL_36;
                }
              }

              v91 = 0;
LABEL_38:
              v101 = 0u;
              v102 = 0u;
              v99 = 0u;
              v100 = 0u;
              v55 = v32;
              v56 = [v55 countByEnumeratingWithState:&v99 objects:v111 count:16];
              if (v56)
              {
                v57 = v56;
                v58 = *v100;
                do
                {
                  for (k = 0; k != v57; ++k)
                  {
                    if (*v100 != v58)
                    {
                      objc_enumerationMutation(v55);
                    }

                    v60 = [v18 objectForKey:*(*(&v99 + 1) + 8 * k)];
                    if (v60)
                    {
                      [v30 addObject:v60];
                    }
                  }

                  v57 = [v55 countByEnumeratingWithState:&v99 objects:v111 count:16];
                }

                while (v57);
              }

              v61 = [MEMORY[0x277CBEA60] arrayWithArray:v30];
              [v96 setValue:v61 forKey:v31];

              v62 = objc_autoreleasePoolPush();
              v63 = self;
              v64 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
              {
                v65 = HMFGetLogIdentifier();
                *buf = 138543874;
                v113 = v65;
                v114 = 2112;
                v115 = v97;
                v116 = 2112;
                v117 = v94;
                _os_log_impl(&dword_22AEAE000, v64, OS_LOG_TYPE_INFO, "%{public}@Will construct service with characteristics %@ for nodeID %@", buf, 0x20u);
              }

              objc_autoreleasePoolPop(v62);
              if (a8)
              {
                v66 = [MEMORY[0x277CCABB0] numberWithInteger:*a8];
              }

              else
              {
                v66 = 0;
              }

              v67 = [(HMMTRHAPEnumerator *)v63 clusterIDCharacteristicMap];
              v68 = [v96 objectForKey:v31];
              v69 = [HMMTRAccessoryServerFactory createHMMTRHAPServiceCommon:v31 characteristics:v97 serviceLabelIndex:v95 serviceInstanceID:v66 endpointID:v98 nodeID:v94 topology:v85 clusterIDCharacteristicMap:v67 linkedServices:v68];

              if (v86)
              {
                [v69 setAccessory:?];
              }

              v70 = objc_autoreleasePoolPush();
              v71 = v63;
              v72 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
              {
                v73 = HMFGetLogIdentifier();
                *buf = 138544130;
                v113 = v73;
                v114 = 2112;
                v115 = v69;
                v116 = 2112;
                v117 = v98;
                v118 = 2112;
                v119 = v94;
                _os_log_impl(&dword_22AEAE000, v72, OS_LOG_TYPE_INFO, "%{public}@Constructed new service to add %@ at endpoint %@ of node %@", buf, 0x2Au);
              }

              objc_autoreleasePoolPop(v70);
              if (v69)
              {
                if (a8)
                {
                  v74 = *a8;
                  v75 = [v69 characteristics];
                  *a8 = +[HMMTRUtilities nextServiceInstanceID:previousCharacteristicsCount:](HMMTRUtilities, "nextServiceInstanceID:previousCharacteristicsCount:", v74, [v75 count]);
                }

                [v82 addObject:v69];
                v76 = [v69 instanceID];
                [v18 setObject:v76 forKey:v31];
              }

              v32 = v93;
              goto LABEL_61;
            }
          }

          else
          {
            v95 = 0;
            v43 = v91;
            if (!v91)
            {
              goto LABEL_29;
            }
          }

LABEL_36:
          v91 = v43;
          v54 = [v43 instanceID];
          [v30 addObject:v54];

          goto LABEL_38;
        }

        v39 = objc_autoreleasePoolPush();
        v40 = self;
        v41 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
        {
          v42 = HMFGetLogIdentifier();
          *buf = 138543874;
          v113 = v42;
          v114 = 2112;
          v115 = v31;
          v116 = 2112;
          v117 = v98;
          _os_log_impl(&dword_22AEAE000, v41, OS_LOG_TYPE_INFO, "%{public}@Not constructing new service of type %@ as there are no supported characteristics at endpoint %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v39);
LABEL_61:
      }

      v90 = [obj countByEnumeratingWithState:&v103 objects:v120 count:16];
      if (!v90)
      {
        goto LABEL_65;
      }
    }
  }

  v91 = 0;
LABEL_65:

  v77 = *MEMORY[0x277D85DE8];
}

- (id)enumerateBridgedAccessoriesFromAccessories:(id)a3 serviceDescriptionsDictionary:(id)a4 namesDictionary:(id)a5 topology:(id)a6 server:(id)a7 legacyInstanceIDAssignment:(BOOL)a8
{
  v8 = a8;
  v74 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a4;
  v54 = a5;
  v53 = a6;
  v15 = a7;
  v46 = v13;
  v49 = [MEMORY[0x277CBEB18] arrayWithArray:v13];
  v66 = 20;
  v52 = v8;
  v16 = &v66;
  v62 = 0u;
  v63 = 0u;
  if (!v8)
  {
    v16 = 0;
  }

  v51 = v16;
  v64 = 0uLL;
  v65 = 0uLL;
  v55 = v14;
  obj = [v14 allKeys];
  v56 = [obj countByEnumeratingWithState:&v62 objects:v73 count:16];
  if (v56)
  {
    v50 = *v63;
    v17 = 0x277CCA000uLL;
    v58 = v15;
    do
    {
      for (i = 0; i != v56; ++i)
      {
        if (*v63 != v50)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v62 + 1) + 8 * i);
        v61 = [v55 objectForKey:v19];
        v20 = objc_opt_new();
        v21 = [v54 objectForKey:v19];
        v22 = v21;
        if (!v21 || [v21 isEqual:&stru_283ED2308])
        {
          v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@, %@", @"Matter Accessory", v19];

          v22 = v23;
        }

        v24 = [HMMTRUtilities sanitizeHAPName:v22];

        v57 = v19;
        v25 = [*(v17 + 2992) numberWithInteger:{objc_msgSend(v19, "integerValue")}];
        v26 = v66;
        v27 = [v15 nodeID];
        LOBYTE(v45) = v52;
        v59 = v24;
        v28 = [HMMTRAccessoryServerFactory createInfoService:v24 model:@"Unknown" manufacturer:@"Unknown" serialNumber:@"Unknown" instanceID:v26 endpointID:v25 nodeID:v27 legacyInstanceIDAssignment:v45];

        [v20 addObject:v28];
        v29 = v66;
        v30 = [v28 characteristics];
        v66 = +[HMMTRUtilities nextServiceInstanceID:previousCharacteristicsCount:](HMMTRUtilities, "nextServiceInstanceID:previousCharacteristicsCount:", v29, [v30 count]);

        v15 = v58;
        v31 = [v58 nodeID];
        [(HMMTRHAPEnumerator *)self _createHAPServicesFromServiceDescriptions:v61 topology:v53 nodeID:v31 accessoryEndpointID:v25 services:v20 startingServiceInstanceID:v51 primaryAccessory:0 standaloneServiceLabelIndexMap:0];

        v32 = +[HMMTRProtocolMap protocolMap];
        v33 = [v32 primaryHAPServiceAmongServices:v20];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v34 = v33;
        }

        else
        {
          v34 = 0;
        }

        v35 = v34;

        [v35 setPrimary];
        if (v52)
        {
          v36 = [MEMORY[0x277CCABB0] numberWithInteger:v66];
        }

        else
        {
          v37 = [v58 nodeID];
          v36 = [HMMTRAccessoryServerFactory instanceIDForCharacteristicType:0 serviceType:0 endpointID:v25 nodeID:v37];
        }

        v38 = [(HMMTRHAPEnumerator *)self _createBridgedHAPAccessoryWithServer:v58 services:v20 instanceId:v36 endpointID:v25];
        if (v38)
        {
          [v49 addObject:v38];
          v39 = objc_autoreleasePoolPush();
          v40 = self;
          v41 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
          {
            HMFGetLogIdentifier();
            v42 = v48 = v39;
            *buf = 138543874;
            v68 = v42;
            v69 = 2112;
            v70 = v57;
            v71 = 2112;
            v72 = v38;
            _os_log_impl(&dword_22AEAE000, v41, OS_LOG_TYPE_INFO, "%{public}@Constructed at endpoint %@ a bridged accessory %@", buf, 0x20u);

            v39 = v48;
          }

          objc_autoreleasePoolPop(v39);
          v15 = v58;
        }

        v17 = 0x277CCA000;
      }

      v56 = [obj countByEnumeratingWithState:&v62 objects:v73 count:16];
    }

    while (v56);
  }

  v43 = *MEMORY[0x277D85DE8];

  return v49;
}

- (id)enumerateServicesFromServices:(id)a3 serviceDescriptionsDictionary:(id)a4 topology:(id)a5 nodeID:(id)a6 primaryAccessory:(id)a7 legacyInstanceIDAssignment:(BOOL)a8
{
  v8 = a8;
  v77 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v53 = a5;
  v57 = a6;
  v55 = a7;
  v66 = 20;
  if (v8)
  {
    v16 = &v66;
  }

  else
  {
    v16 = 0;
  }

  v56 = objc_opt_new();
  v54 = [(HMMTRHAPEnumerator *)self _serviceLabelIndexMapForDescriptions:v15];
  v17 = objc_autoreleasePoolPush();
  v18 = self;
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = HMFGetLogIdentifier();
    *buf = 138544130;
    v70 = v20;
    v71 = 2112;
    v72 = v55;
    v73 = 2112;
    v74 = v57;
    v75 = 2112;
    v76 = v54;
    _os_log_impl(&dword_22AEAE000, v19, OS_LOG_TYPE_INFO, "%{public}@Computed service label index map for non-bridged accessory %@ of node %@: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v17);
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v51 = v15;
  v21 = [v15 allValues];
  v22 = [v21 countByEnumeratingWithState:&v62 objects:v68 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v63;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v63 != v24)
        {
          objc_enumerationMutation(v21);
        }

        [(HMMTRHAPEnumerator *)v18 _createHAPServicesFromServiceDescriptions:*(*(&v62 + 1) + 8 * i) topology:v53 nodeID:v57 accessoryEndpointID:&unk_283EE7BA8 services:v56 startingServiceInstanceID:v16 primaryAccessory:v55 standaloneServiceLabelIndexMap:v54];
      }

      v23 = [v21 countByEnumeratingWithState:&v62 objects:v68 count:16];
    }

    while (v23);
  }

  v26 = v56;
  if ([v56 count])
  {
    v27 = objc_opt_new();
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v50 = v14;
    v28 = v14;
    v29 = [v28 countByEnumeratingWithState:&v58 objects:v67 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v59;
      do
      {
        v32 = 0;
        v52 = v30;
        do
        {
          if (*v59 != v31)
          {
            objc_enumerationMutation(v28);
          }

          v33 = *(*(&v58 + 1) + 8 * v32);
          v34 = [v33 instanceID];
          v35 = [v34 unsignedLongLongValue];

          if (v35 > 0x13)
          {
            v36 = objc_autoreleasePoolPush();
            v37 = v18;
            v38 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
            {
              HMFGetLogIdentifier();
              v39 = v31;
              v40 = v18;
              v41 = v28;
              v43 = v42 = v27;
              *buf = 138543874;
              v70 = v43;
              v71 = 2112;
              v72 = v33;
              v73 = 2112;
              v74 = v57;
              _os_log_impl(&dword_22AEAE000, v38, OS_LOG_TYPE_DEBUG, "%{public}@Dropping existing service %@ of node %@ to replace", buf, 0x20u);

              v27 = v42;
              v28 = v41;
              v18 = v40;
              v31 = v39;
              v30 = v52;
            }

            objc_autoreleasePoolPop(v36);
          }

          else
          {
            [v27 addObject:v33];
          }

          ++v32;
        }

        while (v30 != v32);
        v30 = [v28 countByEnumeratingWithState:&v58 objects:v67 count:16];
      }

      while (v30);
    }

    v26 = v56;
    [v27 addObjectsFromArray:v56];
    v14 = v50;
  }

  else
  {
    v44 = objc_autoreleasePoolPush();
    v45 = v18;
    v46 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      v47 = HMFGetLogIdentifier();
      *buf = 138543618;
      v70 = v47;
      v71 = 2112;
      v72 = v57;
      _os_log_impl(&dword_22AEAE000, v46, OS_LOG_TYPE_ERROR, "%{public}@Could not construct any of the services of node %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v44);
    v27 = 0;
  }

  v48 = *MEMORY[0x277D85DE8];

  return v27;
}

- (id)_serviceLabelIndexMapForDescriptions:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v5 = [v3 allKeys];
  v6 = [v5 sortedArrayUsingComparator:&__block_literal_global_489];

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v6;
  v23 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v23)
  {
    v22 = *v30;
    v7 = 1;
    do
    {
      v8 = 0;
      do
      {
        if (*v30 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v24 = v8;
        v9 = [v3 objectForKey:*(*(&v29 + 1) + 8 * v8)];
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v10 = [v9 countByEnumeratingWithState:&v25 objects:v33 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v26;
          do
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v26 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v25 + 1) + 8 * i);
              if ([v14 optionalServiceLabelIndexIncluded])
              {
                v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v7];
                v16 = [v14 endpoint];
                v17 = [v16 stringValue];
                [v4 setValue:v15 forKey:v17];

                ++v7;
              }
            }

            v11 = [v9 countByEnumeratingWithState:&v25 objects:v33 count:16];
          }

          while (v11);
        }

        v8 = v24 + 1;
      }

      while (v24 + 1 != v23);
      v23 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v23);
  }

  if ([v4 count])
  {
    v18 = v4;
  }

  else
  {
    v18 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

uint64_t __59__HMMTRHAPEnumerator__serviceLabelIndexMapForDescriptions___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  v6 = [v4 numberWithInteger:{objc_msgSend(a2, "integerValue")}];
  v7 = MEMORY[0x277CCABB0];
  v8 = [v5 integerValue];

  v9 = [v7 numberWithInteger:v8];
  v10 = [v6 compare:v9];

  return v10;
}

- (HMMTRHAPEnumerator)initWithClusterIDCharacteristicMap:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HMMTRHAPEnumerator;
  v6 = [(HMMTRHAPEnumerator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_clusterIDCharacteristicMap, a3);
  }

  return v7;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t10 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t10, &__block_literal_global_62);
  }

  v3 = logCategory__hmf_once_v11;

  return v3;
}

uint64_t __33__HMMTRHAPEnumerator_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  logCategory__hmf_once_v11 = HMFCreateOSLogHandle();

  return MEMORY[0x2821F96F8]();
}

@end