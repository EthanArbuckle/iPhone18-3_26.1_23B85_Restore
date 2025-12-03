@interface HMMTRHAPEnumerator
+ (id)logCategory;
- (HMMTRHAPEnumerator)initWithClusterIDCharacteristicMap:(id)map;
- (id)_createBridgedHAPAccessoryWithServer:(id)server services:(id)services instanceId:(id)id endpointID:(id)d;
- (id)_serviceLabelIndexMapForDescriptions:(id)descriptions;
- (id)enumerateBridgedAccessoriesFromAccessories:(id)accessories serviceDescriptionsDictionary:(id)dictionary namesDictionary:(id)namesDictionary topology:(id)topology server:(id)server legacyInstanceIDAssignment:(BOOL)assignment;
- (id)enumerateServicesFromServices:(id)services serviceDescriptionsDictionary:(id)dictionary topology:(id)topology nodeID:(id)d primaryAccessory:(id)accessory legacyInstanceIDAssignment:(BOOL)assignment;
- (void)_createHAPServicesFromServiceDescriptions:(id)descriptions topology:(id)topology nodeID:(id)d accessoryEndpointID:(id)iD services:(id)services startingServiceInstanceID:(int64_t *)instanceID primaryAccessory:(id)accessory standaloneServiceLabelIndexMap:(id)self0;
@end

@implementation HMMTRHAPEnumerator

- (id)_createBridgedHAPAccessoryWithServer:(id)server services:(id)services instanceId:(id)id endpointID:(id)d
{
  serverCopy = server;
  v9 = MEMORY[0x277CFE9F8];
  idCopy = id;
  servicesCopy = services;
  v12 = [[v9 alloc] initWithServer:serverCopy instanceID:idCopy parsedServices:servicesCopy];

  if (v12)
  {
    nodeID = [serverCopy nodeID];
    v14 = [HMMTRUtilities identifierStringWithCHIPNodeID:nodeID];
    [v12 setIdentifier:v14];

    primaryAccessory = [serverCopy primaryAccessory];
    serverIdentifier = [primaryAccessory serverIdentifier];
    [v12 setServerIdentifier:serverIdentifier];

    [v12 setPrimary:0];
  }

  return v12;
}

- (void)_createHAPServicesFromServiceDescriptions:(id)descriptions topology:(id)topology nodeID:(id)d accessoryEndpointID:(id)iD services:(id)services startingServiceInstanceID:(int64_t *)instanceID primaryAccessory:(id)accessory standaloneServiceLabelIndexMap:(id)self0
{
  v122 = *MEMORY[0x277D85DE8];
  descriptionsCopy = descriptions;
  topologyCopy = topology;
  dCopy = d;
  iDCopy = iD;
  servicesCopy = services;
  accessoryCopy = accessory;
  mapCopy = map;
  v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v88 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v18 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v96 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v107 = 0u;
  v108 = 0u;
  v109 = 0u;
  v110 = 0u;
  v19 = descriptionsCopy;
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
        linkedServiceTypes = [v24 linkedServiceTypes];
        if ([linkedServiceTypes count])
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

  v84 = mapCopy;
  v86 = accessoryCopy;
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
        array = [MEMORY[0x277CBEB18] array];
        serviceType = [v29 serviceType];
        linkedServiceTypes2 = [v29 linkedServiceTypes];
        endpoint = [v29 endpoint];
        v33 = MEMORY[0x277CBEB18];
        requiredCharacteristics = [v29 requiredCharacteristics];
        v35 = [v33 arrayWithArray:requiredCharacteristics];

        optionalCharacteristics = [v29 optionalCharacteristics];
        [v35 addObjectsFromArray:optionalCharacteristics];

        [v96 setObject:MEMORY[0x277CBEBF8] forKey:serviceType];
        v97 = v35;
        if ([v35 count])
        {
          v93 = linkedServiceTypes2;
          if ([v29 optionalServiceLabelIndexIncluded])
          {
            if (v84)
            {
              endpoint2 = [v29 endpoint];
              stringValue = [endpoint2 stringValue];
              v95 = [v84 valueForKey:stringValue];
            }

            else
            {
              v95 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
              ++v81;
            }

            v44 = objc_autoreleasePoolPush();
            selfCopy = self;
            v46 = HMFGetOSLogHandle();
            v43 = v91;
            if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
            {
              v47 = HMFGetLogIdentifier();
              endpoint3 = [v29 endpoint];
              *buf = 138544130;
              v113 = v47;
              v114 = 2112;
              v115 = v95;
              v116 = 2112;
              v117 = endpoint3;
              v118 = 2112;
              v119 = dCopy;
              _os_log_impl(&dword_22AEAE000, v46, OS_LOG_TYPE_INFO, "%{public}@Service label index enumerated to %@ for endpoint %@ of node %@", buf, 0x2Au);
            }

            objc_autoreleasePoolPop(v44);
            linkedServiceTypes2 = v93;
            if (!v91)
            {
LABEL_29:
              if (v84 || v81 >= 2)
              {
                v49 = objc_autoreleasePoolPush();
                selfCopy2 = self;
                v51 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
                {
                  v52 = HMFGetLogIdentifier();
                  *buf = 138543874;
                  v113 = v52;
                  v114 = 2112;
                  v115 = iDCopy;
                  v116 = 2112;
                  v117 = dCopy;
                  _os_log_impl(&dword_22AEAE000, v51, OS_LOG_TYPE_INFO, "%{public}@Constructed Service Label service at endpoint %@ of node %@", buf, 0x20u);
                }

                objc_autoreleasePoolPop(v49);
                v53 = [HMMTRAccessoryServerFactory createHMMTRHAPServiceLabelServiceWithEndpointID:iDCopy nodeID:dCopy];
                v43 = v53;
                if (v86)
                {
                  [v53 setAccessory:?];
                }

                [servicesCopy addObject:v43];
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
              v55 = linkedServiceTypes2;
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
                      [array addObject:v60];
                    }
                  }

                  v57 = [v55 countByEnumeratingWithState:&v99 objects:v111 count:16];
                }

                while (v57);
              }

              v61 = [MEMORY[0x277CBEA60] arrayWithArray:array];
              [v96 setValue:v61 forKey:serviceType];

              v62 = objc_autoreleasePoolPush();
              selfCopy3 = self;
              v64 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
              {
                v65 = HMFGetLogIdentifier();
                *buf = 138543874;
                v113 = v65;
                v114 = 2112;
                v115 = v97;
                v116 = 2112;
                v117 = dCopy;
                _os_log_impl(&dword_22AEAE000, v64, OS_LOG_TYPE_INFO, "%{public}@Will construct service with characteristics %@ for nodeID %@", buf, 0x20u);
              }

              objc_autoreleasePoolPop(v62);
              if (instanceID)
              {
                v66 = [MEMORY[0x277CCABB0] numberWithInteger:*instanceID];
              }

              else
              {
                v66 = 0;
              }

              clusterIDCharacteristicMap = [(HMMTRHAPEnumerator *)selfCopy3 clusterIDCharacteristicMap];
              v68 = [v96 objectForKey:serviceType];
              v69 = [HMMTRAccessoryServerFactory createHMMTRHAPServiceCommon:serviceType characteristics:v97 serviceLabelIndex:v95 serviceInstanceID:v66 endpointID:endpoint nodeID:dCopy topology:topologyCopy clusterIDCharacteristicMap:clusterIDCharacteristicMap linkedServices:v68];

              if (v86)
              {
                [v69 setAccessory:?];
              }

              v70 = objc_autoreleasePoolPush();
              v71 = selfCopy3;
              v72 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
              {
                v73 = HMFGetLogIdentifier();
                *buf = 138544130;
                v113 = v73;
                v114 = 2112;
                v115 = v69;
                v116 = 2112;
                v117 = endpoint;
                v118 = 2112;
                v119 = dCopy;
                _os_log_impl(&dword_22AEAE000, v72, OS_LOG_TYPE_INFO, "%{public}@Constructed new service to add %@ at endpoint %@ of node %@", buf, 0x2Au);
              }

              objc_autoreleasePoolPop(v70);
              if (v69)
              {
                if (instanceID)
                {
                  v74 = *instanceID;
                  characteristics = [v69 characteristics];
                  *instanceID = +[HMMTRUtilities nextServiceInstanceID:previousCharacteristicsCount:](HMMTRUtilities, "nextServiceInstanceID:previousCharacteristicsCount:", v74, [characteristics count]);
                }

                [servicesCopy addObject:v69];
                instanceID = [v69 instanceID];
                [v18 setObject:instanceID forKey:serviceType];
              }

              linkedServiceTypes2 = v93;
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
          instanceID2 = [v43 instanceID];
          [array addObject:instanceID2];

          goto LABEL_38;
        }

        v39 = objc_autoreleasePoolPush();
        selfCopy4 = self;
        v41 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
        {
          v42 = HMFGetLogIdentifier();
          *buf = 138543874;
          v113 = v42;
          v114 = 2112;
          v115 = serviceType;
          v116 = 2112;
          v117 = endpoint;
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

- (id)enumerateBridgedAccessoriesFromAccessories:(id)accessories serviceDescriptionsDictionary:(id)dictionary namesDictionary:(id)namesDictionary topology:(id)topology server:(id)server legacyInstanceIDAssignment:(BOOL)assignment
{
  assignmentCopy = assignment;
  v74 = *MEMORY[0x277D85DE8];
  accessoriesCopy = accessories;
  dictionaryCopy = dictionary;
  namesDictionaryCopy = namesDictionary;
  topologyCopy = topology;
  serverCopy = server;
  v46 = accessoriesCopy;
  v49 = [MEMORY[0x277CBEB18] arrayWithArray:accessoriesCopy];
  v66 = 20;
  v52 = assignmentCopy;
  v16 = &v66;
  v62 = 0u;
  v63 = 0u;
  if (!assignmentCopy)
  {
    v16 = 0;
  }

  v51 = v16;
  v64 = 0uLL;
  v65 = 0uLL;
  v55 = dictionaryCopy;
  obj = [dictionaryCopy allKeys];
  v56 = [obj countByEnumeratingWithState:&v62 objects:v73 count:16];
  if (v56)
  {
    v50 = *v63;
    v17 = 0x277CCA000uLL;
    v58 = serverCopy;
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
        v21 = [namesDictionaryCopy objectForKey:v19];
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
        nodeID = [serverCopy nodeID];
        LOBYTE(v45) = v52;
        v59 = v24;
        v28 = [HMMTRAccessoryServerFactory createInfoService:v24 model:@"Unknown" manufacturer:@"Unknown" serialNumber:@"Unknown" instanceID:v26 endpointID:v25 nodeID:nodeID legacyInstanceIDAssignment:v45];

        [v20 addObject:v28];
        v29 = v66;
        characteristics = [v28 characteristics];
        v66 = +[HMMTRUtilities nextServiceInstanceID:previousCharacteristicsCount:](HMMTRUtilities, "nextServiceInstanceID:previousCharacteristicsCount:", v29, [characteristics count]);

        serverCopy = v58;
        nodeID2 = [v58 nodeID];
        [(HMMTRHAPEnumerator *)self _createHAPServicesFromServiceDescriptions:v61 topology:topologyCopy nodeID:nodeID2 accessoryEndpointID:v25 services:v20 startingServiceInstanceID:v51 primaryAccessory:0 standaloneServiceLabelIndexMap:0];

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
          nodeID3 = [v58 nodeID];
          v36 = [HMMTRAccessoryServerFactory instanceIDForCharacteristicType:0 serviceType:0 endpointID:v25 nodeID:nodeID3];
        }

        v38 = [(HMMTRHAPEnumerator *)self _createBridgedHAPAccessoryWithServer:v58 services:v20 instanceId:v36 endpointID:v25];
        if (v38)
        {
          [v49 addObject:v38];
          v39 = objc_autoreleasePoolPush();
          selfCopy = self;
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
          serverCopy = v58;
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

- (id)enumerateServicesFromServices:(id)services serviceDescriptionsDictionary:(id)dictionary topology:(id)topology nodeID:(id)d primaryAccessory:(id)accessory legacyInstanceIDAssignment:(BOOL)assignment
{
  assignmentCopy = assignment;
  v77 = *MEMORY[0x277D85DE8];
  servicesCopy = services;
  dictionaryCopy = dictionary;
  topologyCopy = topology;
  dCopy = d;
  accessoryCopy = accessory;
  v66 = 20;
  if (assignmentCopy)
  {
    v16 = &v66;
  }

  else
  {
    v16 = 0;
  }

  v56 = objc_opt_new();
  v54 = [(HMMTRHAPEnumerator *)self _serviceLabelIndexMapForDescriptions:dictionaryCopy];
  v17 = objc_autoreleasePoolPush();
  selfCopy = self;
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = HMFGetLogIdentifier();
    *buf = 138544130;
    v70 = v20;
    v71 = 2112;
    v72 = accessoryCopy;
    v73 = 2112;
    v74 = dCopy;
    v75 = 2112;
    v76 = v54;
    _os_log_impl(&dword_22AEAE000, v19, OS_LOG_TYPE_INFO, "%{public}@Computed service label index map for non-bridged accessory %@ of node %@: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v17);
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v51 = dictionaryCopy;
  allValues = [dictionaryCopy allValues];
  v22 = [allValues countByEnumeratingWithState:&v62 objects:v68 count:16];
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
          objc_enumerationMutation(allValues);
        }

        [(HMMTRHAPEnumerator *)selfCopy _createHAPServicesFromServiceDescriptions:*(*(&v62 + 1) + 8 * i) topology:topologyCopy nodeID:dCopy accessoryEndpointID:&unk_283EE7BA8 services:v56 startingServiceInstanceID:v16 primaryAccessory:accessoryCopy standaloneServiceLabelIndexMap:v54];
      }

      v23 = [allValues countByEnumeratingWithState:&v62 objects:v68 count:16];
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
    v50 = servicesCopy;
    v28 = servicesCopy;
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
          instanceID = [v33 instanceID];
          unsignedLongLongValue = [instanceID unsignedLongLongValue];

          if (unsignedLongLongValue > 0x13)
          {
            v36 = objc_autoreleasePoolPush();
            v37 = selfCopy;
            v38 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
            {
              HMFGetLogIdentifier();
              v39 = v31;
              v40 = selfCopy;
              v41 = v28;
              v43 = v42 = v27;
              *buf = 138543874;
              v70 = v43;
              v71 = 2112;
              v72 = v33;
              v73 = 2112;
              v74 = dCopy;
              _os_log_impl(&dword_22AEAE000, v38, OS_LOG_TYPE_DEBUG, "%{public}@Dropping existing service %@ of node %@ to replace", buf, 0x20u);

              v27 = v42;
              v28 = v41;
              selfCopy = v40;
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
    servicesCopy = v50;
  }

  else
  {
    v44 = objc_autoreleasePoolPush();
    v45 = selfCopy;
    v46 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      v47 = HMFGetLogIdentifier();
      *buf = 138543618;
      v70 = v47;
      v71 = 2112;
      v72 = dCopy;
      _os_log_impl(&dword_22AEAE000, v46, OS_LOG_TYPE_ERROR, "%{public}@Could not construct any of the services of node %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v44);
    v27 = 0;
  }

  v48 = *MEMORY[0x277D85DE8];

  return v27;
}

- (id)_serviceLabelIndexMapForDescriptions:(id)descriptions
{
  v35 = *MEMORY[0x277D85DE8];
  descriptionsCopy = descriptions;
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  allKeys = [descriptionsCopy allKeys];
  v6 = [allKeys sortedArrayUsingComparator:&__block_literal_global_489];

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
        v9 = [descriptionsCopy objectForKey:*(*(&v29 + 1) + 8 * v8)];
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
                endpoint = [v14 endpoint];
                stringValue = [endpoint stringValue];
                [v4 setValue:v15 forKey:stringValue];

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

- (HMMTRHAPEnumerator)initWithClusterIDCharacteristicMap:(id)map
{
  mapCopy = map;
  v9.receiver = self;
  v9.super_class = HMMTRHAPEnumerator;
  v6 = [(HMMTRHAPEnumerator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_clusterIDCharacteristicMap, map);
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