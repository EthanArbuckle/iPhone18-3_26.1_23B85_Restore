@interface HMMTRDeviceTopology
- (BOOL)isHAPCharacteristicDisabledAtEndpoint:(id)a3 hapServiceType:(id)a4 hapCharacteristic:(id)a5;
- (HMMTRDeviceTopology)init;
- (HMMTRDeviceTopology)initWithNodeId:(id)a3 server:(id)a4;
- (HMMTRDeviceTopology)initWithTopologyDictionary:(id)a3;
- (id)_dictionaryRepresentation;
- (id)description;
- (id)getAttributesForClusterClassName:(id)a3 endpoint:(id)a4;
- (id)getBridgeAggregateNodeEndpoint;
- (id)getClustersInUseAtEndpoint:(id)a3;
- (id)getEnabledOTARequestorEndpoint;
- (id)getEndpoints;
- (id)getFeatureMapForClusterClassName:(id)a3 endpoint:(id)a4;
- (id)getFixedLabelsAtEndpoint:(id)a3;
- (id)getHAPCategoriesAtEndpoint:(id)a3;
- (id)getHAPLinkedServiceTypesAtEndpoint:(id)a3;
- (id)getHAPServiceTypesAtEndpoint:(id)a3;
- (id)getNodeLabelAtEndpoint:(id)a3;
- (id)getPartsListAtEndpoint:(id)a3;
- (id)getVersionForKey:(id)a3;
- (id)storeForNodeId:(id)a3 server:(id)a4;
@end

@implementation HMMTRDeviceTopology

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(HMMTRDeviceTopology *)self _dictionaryRepresentation];
  v4 = [v2 stringWithFormat:@"Device Topology:%@", v3];

  return v4;
}

- (id)storeForNodeId:(id)a3 server:(id)a4
{
  v5 = a4;
  v6 = [(HMMTRDeviceTopology *)self _dictionaryRepresentation];
  v10 = 0;
  v7 = [MEMORY[0x277CCAC58] dataWithPropertyList:v6 format:100 options:0 error:&v10];
  v8 = [v7 copy];
  [v5 setTopology:v8];

  return 0;
}

- (id)_dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [(HMMTRDeviceTopology *)self hapServiceTypes];
  [v3 setObject:v4 forKey:@"HAPServiceTypes"];

  v5 = [(HMMTRDeviceTopology *)self hapLinkedServiceTypes];
  [v3 setObject:v5 forKey:@"HAPLinkedServiceTypes"];

  v6 = [(HMMTRDeviceTopology *)self clustersInUse];
  [v3 setObject:v6 forKey:@"ClustersInUse"];

  v7 = [(HMMTRDeviceTopology *)self hapCategories];
  [v3 setObject:v7 forKey:@"HAPCategories"];

  v8 = [(HMMTRDeviceTopology *)self hapDisabledCharacteristics];
  [v3 setObject:v8 forKey:@"HAPDisabledCharacteristics"];

  v9 = [(HMMTRDeviceTopology *)self deviceFeatureMapValues];
  [v3 setObject:v9 forKey:@"DeviceFeatureMapValues"];

  v10 = [(HMMTRDeviceTopology *)self deviceAttributeValues];
  [v3 setObject:v10 forKey:@"DeviceAttributeValues"];

  v11 = [(HMMTRDeviceTopology *)self nodeLabels];
  [v3 setObject:v11 forKey:@"NodeLabels"];

  v12 = [(HMMTRDeviceTopology *)self partsList];
  [v3 setObject:v12 forKey:@"PartsList"];

  v13 = [(HMMTRDeviceTopology *)self fixedLabels];
  [v3 setObject:v13 forKey:@"FixedLabels"];

  v14 = [(HMMTRDeviceTopology *)self versions];
  [v3 setObject:v14 forKey:@"Versions"];

  v15 = [(HMMTRDeviceTopology *)self otaRequestorEndpoints];
  [v3 setObject:v15 forKey:@"OTARequestorEndpoints"];

  return v3;
}

- (id)getEnabledOTARequestorEndpoint
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = [(NSMutableDictionary *)self->_otaRequestorEndpoints allKeys];
  v3 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v16;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v15 + 1) + 8 * i);
        v8 = [(NSMutableDictionary *)self->_otaRequestorEndpoints objectForKey:v7];
        v9 = [MEMORY[0x277CCABB0] numberWithBool:1];
        v10 = [v8 isEqualToNumber:v9];

        if (v10)
        {
          v11 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v7, "intValue")}];
          goto LABEL_11;
        }
      }

      v4 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)getVersionForKey:(id)a3
{
  v4 = a3;
  v5 = [(HMMTRDeviceTopology *)self versions];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (id)getFixedLabelsAtEndpoint:(id)a3
{
  fixedLabels = self->_fixedLabels;
  v4 = [a3 stringValue];
  v5 = [(NSMutableDictionary *)fixedLabels objectForKeyedSubscript:v4];

  return v5;
}

- (id)getPartsListAtEndpoint:(id)a3
{
  partsList = self->_partsList;
  v4 = [a3 stringValue];
  v5 = [(NSMutableDictionary *)partsList objectForKeyedSubscript:v4];

  return v5;
}

- (id)getNodeLabelAtEndpoint:(id)a3
{
  nodeLabels = self->_nodeLabels;
  v4 = [a3 stringValue];
  v5 = [(NSMutableDictionary *)nodeLabels objectForKeyedSubscript:v4];

  return v5;
}

- (id)getAttributesForClusterClassName:(id)a3 endpoint:(id)a4
{
  v70 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  deviceAttributeValues = self->_deviceAttributeValues;
  v52 = v7;
  v9 = [v7 stringValue];
  v10 = [(NSMutableDictionary *)deviceAttributeValues objectForKeyedSubscript:v9];

  v47 = [v6 copy];
  v11 = @"MTRCluster";
  if ([v6 hasPrefix:@"MTRCluster"] & 1) != 0 || (v11 = @"MTRBaseCluster", (objc_msgSend(v6, "hasPrefix:", @"MTRBaseCluster")) || (v11 = @"HMMTR", objc_msgSend(v6, "hasPrefix:", @"HMMTR")))
  {
    v12 = [v6 substringFromIndex:{-[__CFString length](v11, "length")}];

    v47 = v12;
  }

  if ([v10 count])
  {
    v43 = v10;
    v44 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    obj = v10;
    v53 = [obj countByEnumeratingWithState:&v55 objects:v69 count:16];
    if (v53)
    {
      v13 = *v56;
      v14 = @":";
      v48 = *v56;
      v50 = v6;
      do
      {
        for (i = 0; i != v53; ++i)
        {
          if (*v56 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v16 = [*(*(&v55 + 1) + 8 * i) componentsSeparatedByString:{v14, v43}];
          if ([v16 count] > 2)
          {
            v22 = [v16 objectAtIndexedSubscript:0];
            v23 = [v16 objectAtIndexedSubscript:1];
            v24 = v23;
            if (v22)
            {
              v25 = v23 == 0;
            }

            else
            {
              v25 = 1;
            }

            if (!v25 && [v22 hasSuffix:v47])
            {
              v26 = objc_alloc_init(MEMORY[0x277CBEB18]);
              v54 = objc_alloc_init(MEMORY[0x277CCABB8]);
              [v54 setNumberStyle:1];
              if ([v16 count] < 3)
              {
                goto LABEL_29;
              }

              v45 = v24;
              v46 = v22;
              v27 = 1;
              v28 = 3;
              v29 = 2;
              v30 = v26;
              v31 = v54;
              v49 = v30;
              do
              {
                v32 = [v16 objectAtIndexedSubscript:v29];
                v33 = [v31 numberFromString:v32];

                if (v33)
                {
                  [v30 addObject:v33];
                }

                else
                {
                  v34 = objc_autoreleasePoolPush();
                  v35 = self;
                  v36 = HMFGetOSLogHandle();
                  if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
                  {
                    HMFGetLogIdentifier();
                    v37 = v14;
                    v39 = v38 = self;
                    *buf = 138544130;
                    v60 = v39;
                    v61 = 2112;
                    v62 = v16;
                    v63 = 2112;
                    v64 = v50;
                    v65 = 2112;
                    v66 = v52;
                    _os_log_impl(&dword_22AEAE000, v36, OS_LOG_TYPE_ERROR, "%{public}@Unable to parse attribute string %@ for cluster %@ on endpoint %@, skipping.", buf, 0x2Au);

                    self = v38;
                    v14 = v37;
                    v30 = v49;
                  }

                  objc_autoreleasePoolPop(v34);
                  v27 = 0;
                  v31 = v54;
                }

                v29 = v28;
              }

              while ([v16 count] > v28++);
              v13 = v48;
              v26 = v30;
              v24 = v45;
              v22 = v46;
              if (v27)
              {
LABEL_29:
                [v44 setObject:v26 forKey:v24];
              }

              v6 = v50;
            }
          }

          else
          {
            v17 = objc_autoreleasePoolPush();
            v18 = self;
            v19 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              v20 = HMFGetLogIdentifier();
              v21 = [v16 count];
              *buf = 138544386;
              v60 = v20;
              v61 = 2112;
              v62 = v16;
              v63 = 2048;
              v64 = v21;
              v65 = 2112;
              v66 = v6;
              v67 = 2112;
              v68 = v52;
              _os_log_impl(&dword_22AEAE000, v19, OS_LOG_TYPE_ERROR, "%{public}@Invalid attribute string %@ and count %lu, for cluster %@ on endpoint %@", buf, 0x34u);

              v13 = v48;
            }

            objc_autoreleasePoolPop(v17);
          }
        }

        v53 = [obj countByEnumeratingWithState:&v55 objects:v69 count:16];
      }

      while (v53);
    }

    v10 = v43;
  }

  else
  {
    v44 = 0;
  }

  v41 = *MEMORY[0x277D85DE8];

  return v44;
}

- (id)getFeatureMapForClusterClassName:(id)a3 endpoint:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a3;
  deviceFeatureMapValues = self->_deviceFeatureMapValues;
  v8 = [a4 stringValue];
  v9 = [(NSMutableDictionary *)deviceFeatureMapValues objectForKeyedSubscript:v8];

  v26 = v6;
  v24 = ([v6 isEqualToString:@"MTRBaseClusterColorControl"] & 1) != 0 || objc_msgSend(v6, "isEqualToString:", @"HMMTRColorControl");
  if ([v9 count])
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    obj = v9;
    v10 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v10)
    {
      v11 = v10;
      v23 = v9;
      v12 = *v28;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v28 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = [*(*(&v27 + 1) + 8 * i) componentsSeparatedByString:{@":", v23}];
          v15 = [v14 objectAtIndexedSubscript:0];
          v16 = objc_alloc_init(MEMORY[0x277CCABB8]);
          [v16 setNumberStyle:1];
          v17 = [v14 objectAtIndexedSubscript:1];
          v18 = [v16 numberFromString:v17];

          if (v15)
          {
            v19 = v18 == 0;
          }

          else
          {
            v19 = 1;
          }

          if (!v19 && (v24 && ([v15 hasSuffix:@"ColorControl"] & 1) != 0 || (objc_msgSend(v26, "isEqualToString:", v15) & 1) != 0))
          {
            v20 = v18;

            goto LABEL_22;
          }
        }

        v11 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }

      v20 = 0;
LABEL_22:
      v9 = v23;
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (BOOL)isHAPCharacteristicDisabledAtEndpoint:(id)a3 hapServiceType:(id)a4 hapCharacteristic:(id)a5
{
  v32 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  hapDisabledCharacteristics = self->_hapDisabledCharacteristics;
  v11 = [a3 stringValue];
  v12 = [(NSMutableDictionary *)hapDisabledCharacteristics objectForKeyedSubscript:v11];

  if ([v12 count])
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v13 = v12;
    v14 = [v13 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v14)
    {
      v15 = v14;
      v26 = v12;
      v16 = *v28;
      while (2)
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v28 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = [*(*(&v27 + 1) + 8 * i) componentsSeparatedByString:@":"];
          v19 = [v18 objectAtIndexedSubscript:0];
          v20 = [v18 objectAtIndexedSubscript:1];
          v21 = v20;
          if (v19)
          {
            v22 = v20 == 0;
          }

          else
          {
            v22 = 1;
          }

          if (!v22 && [v8 isEqualToString:v19] && (objc_msgSend(v9, "isEqualToString:", v21) & 1) != 0)
          {

            v23 = 1;
            goto LABEL_18;
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v27 objects:v31 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }

      v23 = 0;
LABEL_18:
      v12 = v26;
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    v23 = 0;
  }

  v24 = *MEMORY[0x277D85DE8];
  return v23;
}

- (id)getEndpoints
{
  v2 = [(NSMutableDictionary *)self->_clustersInUse allKeys];
  v3 = [v2 valueForKeyPath:@"self.integerValue"];

  return v3;
}

- (id)getBridgeAggregateNodeEndpoint
{
  v30 = *MEMORY[0x277D85DE8];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v3 = [(NSMutableDictionary *)self->_hapCategories allKeys];
  v4 = [v3 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v25;
    v7 = 0x277CCA000uLL;
    v19 = *v25;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v25 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = [*(v7 + 2992) numberWithInt:{objc_msgSend(*(*(&v24 + 1) + 8 * i), "intValue")}];
        v10 = [(HMMTRDeviceTopology *)self getHAPCategoriesAtEndpoint:v9];
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v11 = v10;
        v12 = [v11 countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v21;
          while (2)
          {
            for (j = 0; j != v13; ++j)
            {
              if (*v21 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v20 + 1) + 8 * j);
              if (v16 && ([v16 isEqual:&unk_283EE80D0] & 1) != 0)
              {

                goto LABEL_20;
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v20 objects:v28 count:16];
            if (v13)
            {
              continue;
            }

            break;
          }
        }

        v6 = v19;
        v7 = 0x277CCA000;
      }

      v5 = [v3 countByEnumeratingWithState:&v24 objects:v29 count:16];
      v9 = 0;
    }

    while (v5);
  }

  else
  {
    v9 = 0;
  }

LABEL_20:

  v17 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)getHAPCategoriesAtEndpoint:(id)a3
{
  hapCategories = self->_hapCategories;
  v4 = [a3 stringValue];
  v5 = [(NSMutableDictionary *)hapCategories objectForKeyedSubscript:v4];

  return v5;
}

- (id)getClustersInUseAtEndpoint:(id)a3
{
  clustersInUse = self->_clustersInUse;
  v4 = [a3 stringValue];
  v5 = [(NSMutableDictionary *)clustersInUse objectForKeyedSubscript:v4];

  return v5;
}

- (id)getHAPLinkedServiceTypesAtEndpoint:(id)a3
{
  hapLinkedServiceTypes = self->_hapLinkedServiceTypes;
  v4 = [a3 stringValue];
  v5 = [(NSMutableDictionary *)hapLinkedServiceTypes objectForKeyedSubscript:v4];

  return v5;
}

- (id)getHAPServiceTypesAtEndpoint:(id)a3
{
  hapServiceTypes = self->_hapServiceTypes;
  v4 = [a3 stringValue];
  v5 = [(NSMutableDictionary *)hapServiceTypes objectForKeyedSubscript:v4];

  return v5;
}

- (HMMTRDeviceTopology)initWithTopologyDictionary:(id)a3
{
  v4 = a3;
  v5 = [(HMMTRDeviceTopology *)self init];
  v6 = v5;
  if (v5)
  {
    hapServiceTypes = v5->_hapServiceTypes;
    v8 = [v4 objectForKey:@"HAPServiceTypes"];
    [(NSMutableDictionary *)hapServiceTypes addEntriesFromDictionary:v8];

    hapLinkedServiceTypes = v6->_hapLinkedServiceTypes;
    v10 = [v4 objectForKey:@"HAPLinkedServiceTypes"];
    [(NSMutableDictionary *)hapLinkedServiceTypes addEntriesFromDictionary:v10];

    clustersInUse = v6->_clustersInUse;
    v12 = [v4 objectForKey:@"ClustersInUse"];
    [(NSMutableDictionary *)clustersInUse addEntriesFromDictionary:v12];

    hapCategories = v6->_hapCategories;
    v14 = [v4 objectForKey:@"HAPCategories"];
    [(NSMutableDictionary *)hapCategories addEntriesFromDictionary:v14];

    hapDisabledCharacteristics = v6->_hapDisabledCharacteristics;
    v16 = [v4 objectForKey:@"HAPDisabledCharacteristics"];
    [(NSMutableDictionary *)hapDisabledCharacteristics addEntriesFromDictionary:v16];

    deviceFeatureMapValues = v6->_deviceFeatureMapValues;
    v18 = [v4 objectForKey:@"DeviceFeatureMapValues"];
    [(NSMutableDictionary *)deviceFeatureMapValues addEntriesFromDictionary:v18];

    deviceAttributeValues = v6->_deviceAttributeValues;
    v20 = [v4 objectForKey:@"DeviceAttributeValues"];
    [(NSMutableDictionary *)deviceAttributeValues addEntriesFromDictionary:v20];

    nodeLabels = v6->_nodeLabels;
    v22 = [v4 objectForKey:@"NodeLabels"];
    [(NSMutableDictionary *)nodeLabels addEntriesFromDictionary:v22];

    partsList = v6->_partsList;
    v24 = [v4 objectForKey:@"PartsList"];
    [(NSMutableDictionary *)partsList addEntriesFromDictionary:v24];

    fixedLabels = v6->_fixedLabels;
    v26 = [v4 objectForKey:@"FixedLabels"];
    [(NSMutableDictionary *)fixedLabels addEntriesFromDictionary:v26];

    versions = v6->_versions;
    v28 = [v4 objectForKeyedSubscript:@"Versions"];
    [(NSMutableDictionary *)versions addEntriesFromDictionary:v28];

    otaRequestorEndpoints = v6->_otaRequestorEndpoints;
    v30 = [v4 objectForKeyedSubscript:@"OTARequestorEndpoints"];
    [(NSMutableDictionary *)otaRequestorEndpoints addEntriesFromDictionary:v30];
  }

  return v6;
}

- (HMMTRDeviceTopology)initWithNodeId:(id)a3 server:(id)a4
{
  v54 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMMTRDeviceTopology *)self init];
  if (!v8)
  {
    goto LABEL_12;
  }

  v9 = [v7 topology];
  if (!v9)
  {
    v18 = objc_autoreleasePoolPush();
    v19 = v8;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543618;
      v51 = v21;
      v52 = 2112;
      v53 = v6;
      _os_log_impl(&dword_22AEAE000, v20, OS_LOG_TYPE_ERROR, "%{public}@No enumeration/topology dictionary found for NodeId:%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    goto LABEL_10;
  }

  v10 = v9;
  v49 = 0;
  v11 = [MEMORY[0x277CCAC58] propertyListWithData:v9 options:0 format:0 error:&v49];
  v12 = v49;
  if (!v12)
  {
    hapServiceTypes = v8->_hapServiceTypes;
    v24 = [v11 objectForKey:@"HAPServiceTypes"];
    [(NSMutableDictionary *)hapServiceTypes addEntriesFromDictionary:v24];

    hapLinkedServiceTypes = v8->_hapLinkedServiceTypes;
    v26 = [v11 objectForKey:@"HAPLinkedServiceTypes"];
    [(NSMutableDictionary *)hapLinkedServiceTypes addEntriesFromDictionary:v26];

    clustersInUse = v8->_clustersInUse;
    v28 = [v11 objectForKey:@"ClustersInUse"];
    [(NSMutableDictionary *)clustersInUse addEntriesFromDictionary:v28];

    hapCategories = v8->_hapCategories;
    v30 = [v11 objectForKey:@"HAPCategories"];
    [(NSMutableDictionary *)hapCategories addEntriesFromDictionary:v30];

    hapDisabledCharacteristics = v8->_hapDisabledCharacteristics;
    v32 = [v11 objectForKey:@"HAPDisabledCharacteristics"];
    [(NSMutableDictionary *)hapDisabledCharacteristics addEntriesFromDictionary:v32];

    deviceFeatureMapValues = v8->_deviceFeatureMapValues;
    v34 = [v11 objectForKey:@"DeviceFeatureMapValues"];
    [(NSMutableDictionary *)deviceFeatureMapValues addEntriesFromDictionary:v34];

    deviceAttributeValues = v8->_deviceAttributeValues;
    v36 = [v11 objectForKey:@"DeviceAttributeValues"];
    [(NSMutableDictionary *)deviceAttributeValues addEntriesFromDictionary:v36];

    nodeLabels = v8->_nodeLabels;
    v38 = [v11 objectForKey:@"NodeLabels"];
    [(NSMutableDictionary *)nodeLabels addEntriesFromDictionary:v38];

    partsList = v8->_partsList;
    v40 = [v11 objectForKey:@"PartsList"];
    [(NSMutableDictionary *)partsList addEntriesFromDictionary:v40];

    fixedLabels = v8->_fixedLabels;
    v42 = [v11 objectForKey:@"FixedLabels"];
    [(NSMutableDictionary *)fixedLabels addEntriesFromDictionary:v42];

    versions = v8->_versions;
    v44 = [v11 objectForKeyedSubscript:@"Versions"];
    [(NSMutableDictionary *)versions addEntriesFromDictionary:v44];

    otaRequestorEndpoints = v8->_otaRequestorEndpoints;
    v46 = [v11 objectForKeyedSubscript:@"OTARequestorEndpoints"];
    [(NSMutableDictionary *)otaRequestorEndpoints addEntriesFromDictionary:v46];

LABEL_12:
    v22 = v8;
    goto LABEL_13;
  }

  v13 = v12;
  v14 = objc_autoreleasePoolPush();
  v15 = v8;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v17 = HMFGetLogIdentifier();
    *buf = 138543618;
    v51 = v17;
    v52 = 2112;
    v53 = v13;
    _os_log_impl(&dword_22AEAE000, v16, OS_LOG_TYPE_ERROR, "%{public}@Could not decode string to generate topology dictionary. Error: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v14);
LABEL_10:
  v22 = 0;
LABEL_13:

  v47 = *MEMORY[0x277D85DE8];
  return v22;
}

- (HMMTRDeviceTopology)init
{
  v28.receiver = self;
  v28.super_class = HMMTRDeviceTopology;
  v2 = [(HMMTRDeviceTopology *)&v28 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    hapServiceTypes = v2->_hapServiceTypes;
    v2->_hapServiceTypes = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    hapLinkedServiceTypes = v2->_hapLinkedServiceTypes;
    v2->_hapLinkedServiceTypes = v5;

    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    clustersInUse = v2->_clustersInUse;
    v2->_clustersInUse = v7;

    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    hapCategories = v2->_hapCategories;
    v2->_hapCategories = v9;

    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    hapDisabledCharacteristics = v2->_hapDisabledCharacteristics;
    v2->_hapDisabledCharacteristics = v11;

    v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
    deviceFeatureMapValues = v2->_deviceFeatureMapValues;
    v2->_deviceFeatureMapValues = v13;

    v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
    deviceAttributeValues = v2->_deviceAttributeValues;
    v2->_deviceAttributeValues = v15;

    v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
    nodeLabels = v2->_nodeLabels;
    v2->_nodeLabels = v17;

    v19 = objc_alloc_init(MEMORY[0x277CBEB38]);
    partsList = v2->_partsList;
    v2->_partsList = v19;

    v21 = objc_alloc_init(MEMORY[0x277CBEB38]);
    fixedLabels = v2->_fixedLabels;
    v2->_fixedLabels = v21;

    v23 = objc_alloc_init(MEMORY[0x277CBEB38]);
    versions = v2->_versions;
    v2->_versions = v23;

    v25 = objc_alloc_init(MEMORY[0x277CBEB38]);
    otaRequestorEndpoints = v2->_otaRequestorEndpoints;
    v2->_otaRequestorEndpoints = v25;
  }

  return v2;
}

@end