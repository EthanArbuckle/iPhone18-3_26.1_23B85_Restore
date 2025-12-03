@interface HMMTRDeviceTopology
- (BOOL)isHAPCharacteristicDisabledAtEndpoint:(id)endpoint hapServiceType:(id)type hapCharacteristic:(id)characteristic;
- (HMMTRDeviceTopology)init;
- (HMMTRDeviceTopology)initWithNodeId:(id)id server:(id)server;
- (HMMTRDeviceTopology)initWithTopologyDictionary:(id)dictionary;
- (id)_dictionaryRepresentation;
- (id)description;
- (id)getAttributesForClusterClassName:(id)name endpoint:(id)endpoint;
- (id)getBridgeAggregateNodeEndpoint;
- (id)getClustersInUseAtEndpoint:(id)endpoint;
- (id)getEnabledOTARequestorEndpoint;
- (id)getEndpoints;
- (id)getFeatureMapForClusterClassName:(id)name endpoint:(id)endpoint;
- (id)getFixedLabelsAtEndpoint:(id)endpoint;
- (id)getHAPCategoriesAtEndpoint:(id)endpoint;
- (id)getHAPLinkedServiceTypesAtEndpoint:(id)endpoint;
- (id)getHAPServiceTypesAtEndpoint:(id)endpoint;
- (id)getNodeLabelAtEndpoint:(id)endpoint;
- (id)getPartsListAtEndpoint:(id)endpoint;
- (id)getVersionForKey:(id)key;
- (id)storeForNodeId:(id)id server:(id)server;
@end

@implementation HMMTRDeviceTopology

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  _dictionaryRepresentation = [(HMMTRDeviceTopology *)self _dictionaryRepresentation];
  v4 = [v2 stringWithFormat:@"Device Topology:%@", _dictionaryRepresentation];

  return v4;
}

- (id)storeForNodeId:(id)id server:(id)server
{
  serverCopy = server;
  _dictionaryRepresentation = [(HMMTRDeviceTopology *)self _dictionaryRepresentation];
  v10 = 0;
  v7 = [MEMORY[0x277CCAC58] dataWithPropertyList:_dictionaryRepresentation format:100 options:0 error:&v10];
  v8 = [v7 copy];
  [serverCopy setTopology:v8];

  return 0;
}

- (id)_dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  hapServiceTypes = [(HMMTRDeviceTopology *)self hapServiceTypes];
  [v3 setObject:hapServiceTypes forKey:@"HAPServiceTypes"];

  hapLinkedServiceTypes = [(HMMTRDeviceTopology *)self hapLinkedServiceTypes];
  [v3 setObject:hapLinkedServiceTypes forKey:@"HAPLinkedServiceTypes"];

  clustersInUse = [(HMMTRDeviceTopology *)self clustersInUse];
  [v3 setObject:clustersInUse forKey:@"ClustersInUse"];

  hapCategories = [(HMMTRDeviceTopology *)self hapCategories];
  [v3 setObject:hapCategories forKey:@"HAPCategories"];

  hapDisabledCharacteristics = [(HMMTRDeviceTopology *)self hapDisabledCharacteristics];
  [v3 setObject:hapDisabledCharacteristics forKey:@"HAPDisabledCharacteristics"];

  deviceFeatureMapValues = [(HMMTRDeviceTopology *)self deviceFeatureMapValues];
  [v3 setObject:deviceFeatureMapValues forKey:@"DeviceFeatureMapValues"];

  deviceAttributeValues = [(HMMTRDeviceTopology *)self deviceAttributeValues];
  [v3 setObject:deviceAttributeValues forKey:@"DeviceAttributeValues"];

  nodeLabels = [(HMMTRDeviceTopology *)self nodeLabels];
  [v3 setObject:nodeLabels forKey:@"NodeLabels"];

  partsList = [(HMMTRDeviceTopology *)self partsList];
  [v3 setObject:partsList forKey:@"PartsList"];

  fixedLabels = [(HMMTRDeviceTopology *)self fixedLabels];
  [v3 setObject:fixedLabels forKey:@"FixedLabels"];

  versions = [(HMMTRDeviceTopology *)self versions];
  [v3 setObject:versions forKey:@"Versions"];

  otaRequestorEndpoints = [(HMMTRDeviceTopology *)self otaRequestorEndpoints];
  [v3 setObject:otaRequestorEndpoints forKey:@"OTARequestorEndpoints"];

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

- (id)getVersionForKey:(id)key
{
  keyCopy = key;
  versions = [(HMMTRDeviceTopology *)self versions];
  v6 = [versions objectForKeyedSubscript:keyCopy];

  return v6;
}

- (id)getFixedLabelsAtEndpoint:(id)endpoint
{
  fixedLabels = self->_fixedLabels;
  stringValue = [endpoint stringValue];
  v5 = [(NSMutableDictionary *)fixedLabels objectForKeyedSubscript:stringValue];

  return v5;
}

- (id)getPartsListAtEndpoint:(id)endpoint
{
  partsList = self->_partsList;
  stringValue = [endpoint stringValue];
  v5 = [(NSMutableDictionary *)partsList objectForKeyedSubscript:stringValue];

  return v5;
}

- (id)getNodeLabelAtEndpoint:(id)endpoint
{
  nodeLabels = self->_nodeLabels;
  stringValue = [endpoint stringValue];
  v5 = [(NSMutableDictionary *)nodeLabels objectForKeyedSubscript:stringValue];

  return v5;
}

- (id)getAttributesForClusterClassName:(id)name endpoint:(id)endpoint
{
  v70 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  endpointCopy = endpoint;
  deviceAttributeValues = self->_deviceAttributeValues;
  v52 = endpointCopy;
  stringValue = [endpointCopy stringValue];
  v10 = [(NSMutableDictionary *)deviceAttributeValues objectForKeyedSubscript:stringValue];

  v47 = [nameCopy copy];
  v11 = @"MTRCluster";
  if ([nameCopy hasPrefix:@"MTRCluster"] & 1) != 0 || (v11 = @"MTRBaseCluster", (objc_msgSend(nameCopy, "hasPrefix:", @"MTRBaseCluster")) || (v11 = @"HMMTR", objc_msgSend(nameCopy, "hasPrefix:", @"HMMTR")))
  {
    v12 = [nameCopy substringFromIndex:{-[__CFString length](v11, "length")}];

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
      v50 = nameCopy;
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
                  selfCopy = self;
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

              nameCopy = v50;
            }
          }

          else
          {
            v17 = objc_autoreleasePoolPush();
            selfCopy2 = self;
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
              v66 = nameCopy;
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

- (id)getFeatureMapForClusterClassName:(id)name endpoint:(id)endpoint
{
  v32 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  deviceFeatureMapValues = self->_deviceFeatureMapValues;
  stringValue = [endpoint stringValue];
  v9 = [(NSMutableDictionary *)deviceFeatureMapValues objectForKeyedSubscript:stringValue];

  v26 = nameCopy;
  v24 = ([nameCopy isEqualToString:@"MTRBaseClusterColorControl"] & 1) != 0 || objc_msgSend(nameCopy, "isEqualToString:", @"HMMTRColorControl");
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

- (BOOL)isHAPCharacteristicDisabledAtEndpoint:(id)endpoint hapServiceType:(id)type hapCharacteristic:(id)characteristic
{
  v32 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  characteristicCopy = characteristic;
  hapDisabledCharacteristics = self->_hapDisabledCharacteristics;
  stringValue = [endpoint stringValue];
  v12 = [(NSMutableDictionary *)hapDisabledCharacteristics objectForKeyedSubscript:stringValue];

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

          if (!v22 && [typeCopy isEqualToString:v19] && (objc_msgSend(characteristicCopy, "isEqualToString:", v21) & 1) != 0)
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
  allKeys = [(NSMutableDictionary *)self->_clustersInUse allKeys];
  v3 = [allKeys valueForKeyPath:@"self.integerValue"];

  return v3;
}

- (id)getBridgeAggregateNodeEndpoint
{
  v30 = *MEMORY[0x277D85DE8];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  allKeys = [(NSMutableDictionary *)self->_hapCategories allKeys];
  v4 = [allKeys countByEnumeratingWithState:&v24 objects:v29 count:16];
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
          objc_enumerationMutation(allKeys);
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

      v5 = [allKeys countByEnumeratingWithState:&v24 objects:v29 count:16];
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

- (id)getHAPCategoriesAtEndpoint:(id)endpoint
{
  hapCategories = self->_hapCategories;
  stringValue = [endpoint stringValue];
  v5 = [(NSMutableDictionary *)hapCategories objectForKeyedSubscript:stringValue];

  return v5;
}

- (id)getClustersInUseAtEndpoint:(id)endpoint
{
  clustersInUse = self->_clustersInUse;
  stringValue = [endpoint stringValue];
  v5 = [(NSMutableDictionary *)clustersInUse objectForKeyedSubscript:stringValue];

  return v5;
}

- (id)getHAPLinkedServiceTypesAtEndpoint:(id)endpoint
{
  hapLinkedServiceTypes = self->_hapLinkedServiceTypes;
  stringValue = [endpoint stringValue];
  v5 = [(NSMutableDictionary *)hapLinkedServiceTypes objectForKeyedSubscript:stringValue];

  return v5;
}

- (id)getHAPServiceTypesAtEndpoint:(id)endpoint
{
  hapServiceTypes = self->_hapServiceTypes;
  stringValue = [endpoint stringValue];
  v5 = [(NSMutableDictionary *)hapServiceTypes objectForKeyedSubscript:stringValue];

  return v5;
}

- (HMMTRDeviceTopology)initWithTopologyDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [(HMMTRDeviceTopology *)self init];
  v6 = v5;
  if (v5)
  {
    hapServiceTypes = v5->_hapServiceTypes;
    v8 = [dictionaryCopy objectForKey:@"HAPServiceTypes"];
    [(NSMutableDictionary *)hapServiceTypes addEntriesFromDictionary:v8];

    hapLinkedServiceTypes = v6->_hapLinkedServiceTypes;
    v10 = [dictionaryCopy objectForKey:@"HAPLinkedServiceTypes"];
    [(NSMutableDictionary *)hapLinkedServiceTypes addEntriesFromDictionary:v10];

    clustersInUse = v6->_clustersInUse;
    v12 = [dictionaryCopy objectForKey:@"ClustersInUse"];
    [(NSMutableDictionary *)clustersInUse addEntriesFromDictionary:v12];

    hapCategories = v6->_hapCategories;
    v14 = [dictionaryCopy objectForKey:@"HAPCategories"];
    [(NSMutableDictionary *)hapCategories addEntriesFromDictionary:v14];

    hapDisabledCharacteristics = v6->_hapDisabledCharacteristics;
    v16 = [dictionaryCopy objectForKey:@"HAPDisabledCharacteristics"];
    [(NSMutableDictionary *)hapDisabledCharacteristics addEntriesFromDictionary:v16];

    deviceFeatureMapValues = v6->_deviceFeatureMapValues;
    v18 = [dictionaryCopy objectForKey:@"DeviceFeatureMapValues"];
    [(NSMutableDictionary *)deviceFeatureMapValues addEntriesFromDictionary:v18];

    deviceAttributeValues = v6->_deviceAttributeValues;
    v20 = [dictionaryCopy objectForKey:@"DeviceAttributeValues"];
    [(NSMutableDictionary *)deviceAttributeValues addEntriesFromDictionary:v20];

    nodeLabels = v6->_nodeLabels;
    v22 = [dictionaryCopy objectForKey:@"NodeLabels"];
    [(NSMutableDictionary *)nodeLabels addEntriesFromDictionary:v22];

    partsList = v6->_partsList;
    v24 = [dictionaryCopy objectForKey:@"PartsList"];
    [(NSMutableDictionary *)partsList addEntriesFromDictionary:v24];

    fixedLabels = v6->_fixedLabels;
    v26 = [dictionaryCopy objectForKey:@"FixedLabels"];
    [(NSMutableDictionary *)fixedLabels addEntriesFromDictionary:v26];

    versions = v6->_versions;
    v28 = [dictionaryCopy objectForKeyedSubscript:@"Versions"];
    [(NSMutableDictionary *)versions addEntriesFromDictionary:v28];

    otaRequestorEndpoints = v6->_otaRequestorEndpoints;
    v30 = [dictionaryCopy objectForKeyedSubscript:@"OTARequestorEndpoints"];
    [(NSMutableDictionary *)otaRequestorEndpoints addEntriesFromDictionary:v30];
  }

  return v6;
}

- (HMMTRDeviceTopology)initWithNodeId:(id)id server:(id)server
{
  v54 = *MEMORY[0x277D85DE8];
  idCopy = id;
  serverCopy = server;
  v8 = [(HMMTRDeviceTopology *)self init];
  if (!v8)
  {
    goto LABEL_12;
  }

  topology = [serverCopy topology];
  if (!topology)
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
      v53 = idCopy;
      _os_log_impl(&dword_22AEAE000, v20, OS_LOG_TYPE_ERROR, "%{public}@No enumeration/topology dictionary found for NodeId:%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    goto LABEL_10;
  }

  v10 = topology;
  v49 = 0;
  v11 = [MEMORY[0x277CCAC58] propertyListWithData:topology options:0 format:0 error:&v49];
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