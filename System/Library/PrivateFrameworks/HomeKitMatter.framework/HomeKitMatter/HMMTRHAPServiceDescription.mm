@interface HMMTRHAPServiceDescription
+ (id)descriptionsDictionaryFromAccessoryInfo:(id)info;
- (HMMTRHAPServiceDescription)initWithType:(id)type linkedServiceTypes:(id)types endpoint:(id)endpoint name:(id)name optionalServiceLabelIndexIncluded:(BOOL)included;
- (id)attributeDescriptions;
- (id)padCharacteristicIDWithZeros:(id)zeros;
- (void)addFeatureMapForCharacteristic:(id)characteristic featureMap:(id)map;
- (void)addMandatoryCharacteristic:(id)characteristic;
- (void)addOptionalCharacteristic:(id)characteristic;
- (void)removeCharacteristic:(id)characteristic;
@end

@implementation HMMTRHAPServiceDescription

- (id)attributeDescriptions
{
  v30[8] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  serviceType = [(HMMTRHAPServiceDescription *)self serviceType];
  v28 = [v3 initWithName:@"ServiceType" value:serviceType];
  v30[0] = v28;
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  endpoint = [(HMMTRHAPServiceDescription *)self endpoint];
  v26 = [v4 initWithName:@"Endpoint" value:endpoint];
  v30[1] = v26;
  v5 = objc_alloc(MEMORY[0x277D0F778]);
  name = [(HMMTRHAPServiceDescription *)self name];
  v24 = [v5 initWithName:@"Name" value:name];
  v30[2] = v24;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  requiredCharacteristics = [(HMMTRHAPServiceDescription *)self requiredCharacteristics];
  v7 = [v6 initWithName:@"RequiredCharacteristics" value:requiredCharacteristics];
  v30[3] = v7;
  v8 = objc_alloc(MEMORY[0x277D0F778]);
  optionalCharacteristics = [(HMMTRHAPServiceDescription *)self optionalCharacteristics];
  v10 = [v8 initWithName:@"OptionalCharacteristics" value:optionalCharacteristics];
  v30[4] = v10;
  v11 = objc_alloc(MEMORY[0x277D0F778]);
  characteristicFeatureMap = [(HMMTRHAPServiceDescription *)self characteristicFeatureMap];
  v13 = [v11 initWithName:@"CharacteristicFeatureMap" value:characteristicFeatureMap];
  v30[5] = v13;
  v14 = objc_alloc(MEMORY[0x277D0F778]);
  v15 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMMTRHAPServiceDescription optionalServiceLabelIndexIncluded](self, "optionalServiceLabelIndexIncluded")}];
  v16 = [v14 initWithName:@"OptionalServiceLabelIndexIncluded" value:v15];
  v30[6] = v16;
  v17 = objc_alloc(MEMORY[0x277D0F778]);
  linkedServiceTypes = [(HMMTRHAPServiceDescription *)self linkedServiceTypes];
  v19 = [v17 initWithName:@"LinkedServiceTypes" value:linkedServiceTypes];
  v30[7] = v19;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:8];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)padCharacteristicIDWithZeros:(id)zeros
{
  zerosCopy = zeros;
  v4 = [zerosCopy length];
  if ((v4 - 1) > 7)
  {
    v5 = 0;
  }

  else
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:off_2786EC680[v4 - 1], zerosCopy, "-0000-1000-8000-0026BB765291"];
  }

  return v5;
}

- (void)removeCharacteristic:(id)characteristic
{
  v11 = [(HMMTRHAPServiceDescription *)self padCharacteristicIDWithZeros:characteristic];
  if (v11)
  {
    if ([(NSArray *)self->_requiredCharacteristics containsObject:v11])
    {
      v4 = [MEMORY[0x277CBEB18] arrayWithArray:self->_requiredCharacteristics];
      [(NSArray *)v4 removeObject:v11];
      requiredCharacteristics = self->_requiredCharacteristics;
      self->_requiredCharacteristics = v4;
    }

    if ([(NSArray *)self->_optionalCharacteristics containsObject:v11])
    {
      v6 = [MEMORY[0x277CBEB18] arrayWithArray:self->_optionalCharacteristics];
      [(NSArray *)v6 removeObject:v11];
      optionalCharacteristics = self->_optionalCharacteristics;
      self->_optionalCharacteristics = v6;
    }

    v8 = [(NSDictionary *)self->_characteristicFeatureMap objectForKeyedSubscript:v11];

    if (v8)
    {
      v9 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:self->_characteristicFeatureMap];
      [(NSDictionary *)v9 removeObjectForKey:v11];
      characteristicFeatureMap = self->_characteristicFeatureMap;
      self->_characteristicFeatureMap = v9;
    }
  }
}

- (void)addFeatureMapForCharacteristic:(id)characteristic featureMap:(id)map
{
  mapCopy = map;
  v6 = [(HMMTRHAPServiceDescription *)self padCharacteristicIDWithZeros:characteristic];
  if (mapCopy && v6)
  {
    v7 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:self->_characteristicFeatureMap];
    [(NSDictionary *)v7 setObject:mapCopy forKey:v6];
    characteristicFeatureMap = self->_characteristicFeatureMap;
    self->_characteristicFeatureMap = v7;
  }
}

- (void)addMandatoryCharacteristic:(id)characteristic
{
  v4 = [(HMMTRHAPServiceDescription *)self padCharacteristicIDWithZeros:characteristic];
  if (v4)
  {
    v7 = v4;
    v5 = [MEMORY[0x277CBEB18] arrayWithArray:self->_requiredCharacteristics];
    [(NSArray *)v5 addObject:v7];
    requiredCharacteristics = self->_requiredCharacteristics;
    self->_requiredCharacteristics = v5;

    v4 = v7;
  }
}

- (void)addOptionalCharacteristic:(id)characteristic
{
  v4 = [(HMMTRHAPServiceDescription *)self padCharacteristicIDWithZeros:characteristic];
  if (v4)
  {
    v7 = v4;
    v5 = [MEMORY[0x277CBEB18] arrayWithArray:self->_optionalCharacteristics];
    [(NSArray *)v5 addObject:v7];
    optionalCharacteristics = self->_optionalCharacteristics;
    self->_optionalCharacteristics = v5;

    v4 = v7;
  }
}

- (HMMTRHAPServiceDescription)initWithType:(id)type linkedServiceTypes:(id)types endpoint:(id)endpoint name:(id)name optionalServiceLabelIndexIncluded:(BOOL)included
{
  typeCopy = type;
  typesCopy = types;
  endpointCopy = endpoint;
  nameCopy = name;
  v24.receiver = self;
  v24.super_class = HMMTRHAPServiceDescription;
  v17 = [(HMMTRHAPServiceDescription *)&v24 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_serviceType, type);
    objc_storeStrong(&v18->_linkedServiceTypes, types);
    objc_storeStrong(&v18->_endpoint, endpoint);
    objc_storeStrong(&v18->_name, name);
    optionalCharacteristics = v18->_optionalCharacteristics;
    v20 = MEMORY[0x277CBEBF8];
    v18->_optionalCharacteristics = MEMORY[0x277CBEBF8];

    requiredCharacteristics = v18->_requiredCharacteristics;
    v18->_requiredCharacteristics = v20;

    characteristicFeatureMap = v18->_characteristicFeatureMap;
    v18->_characteristicFeatureMap = MEMORY[0x277CBEC10];

    v18->_optionalServiceLabelIndexIncluded = included;
  }

  return v18;
}

+ (id)descriptionsDictionaryFromAccessoryInfo:(id)info
{
  v70 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v41 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = MEMORY[0x277CBEB18];
  v48 = infoCopy;
  accessoryInfoDictionary = [infoCopy accessoryInfoDictionary];
  allKeys = [accessoryInfoDictionary allKeys];
  v7 = [v4 arrayWithArray:allKeys];

  [v7 sortUsingComparator:&__block_literal_global];
  v46 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  obj = v7;
  v39 = [obj countByEnumeratingWithState:&v57 objects:v69 count:16];
  if (v39)
  {
    v37 = *v58;
    do
    {
      v8 = 0;
      do
      {
        if (*v58 != v37)
        {
          objc_enumerationMutation(obj);
        }

        v44 = v8;
        v9 = *(*(&v57 + 1) + 8 * v8);
        v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v40 = v9;
        v11 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v9, "integerValue")}];
        v12 = [v48 partsListForEndpoint:v11];
        v13 = [v48 serviceDescriptionsForEndpoint:v11];
        v14 = objc_autoreleasePoolPush();
        selfCopy = self;
        v16 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v17 = HMFGetLogIdentifier();
          *buf = 138543874;
          v64 = v17;
          v65 = 2112;
          v66 = v13;
          v67 = 2112;
          v68 = v11;
          _os_log_impl(&dword_22AEAE000, v16, OS_LOG_TYPE_INFO, "%{public}@Retrieved service description @%@ at endpoint %@", buf, 0x20u);
        }

        v43 = v11;

        objc_autoreleasePoolPop(v14);
        if (v13)
        {
          [v10 addObjectsFromArray:v13];
        }

        v42 = v13;
        v47 = v10;
        v55 = 0u;
        v56 = 0u;
        v53 = 0u;
        v54 = 0u;
        v45 = v12;
        v18 = [v45 countByEnumeratingWithState:&v53 objects:v62 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v54;
          do
          {
            for (i = 0; i != v19; ++i)
            {
              if (*v54 != v20)
              {
                objc_enumerationMutation(v45);
              }

              v22 = *(*(&v53 + 1) + 8 * i);
              v23 = [v48 serviceDescriptionsForEndpoint:v22];
              v24 = objc_autoreleasePoolPush();
              v25 = selfCopy;
              v26 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
              {
                v27 = HMFGetLogIdentifier();
                *buf = 138543874;
                v64 = v27;
                v65 = 2112;
                v66 = v23;
                v67 = 2112;
                v68 = v22;
                _os_log_impl(&dword_22AEAE000, v26, OS_LOG_TYPE_INFO, "%{public}@Retrieved service description @%@ at composed endpoint %@", buf, 0x20u);
              }

              objc_autoreleasePoolPop(v24);
              if (v23)
              {
                [v47 addObjectsFromArray:v23];
                stringValue = [v22 stringValue];
                [v46 addObject:stringValue];
              }
            }

            v19 = [v45 countByEnumeratingWithState:&v53 objects:v62 count:16];
          }

          while (v19);
        }

        if (v47)
        {
          [v41 setObject:v47 forKey:v40];
        }

        v8 = v44 + 1;
      }

      while (v44 + 1 != v39);
      v39 = [obj countByEnumeratingWithState:&v57 objects:v69 count:16];
    }

    while (v39);
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v29 = v46;
  v30 = [v29 countByEnumeratingWithState:&v49 objects:v61 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v50;
    do
    {
      for (j = 0; j != v31; ++j)
      {
        if (*v50 != v32)
        {
          objc_enumerationMutation(v29);
        }

        [v41 removeObjectForKey:*(*(&v49 + 1) + 8 * j)];
      }

      v31 = [v29 countByEnumeratingWithState:&v49 objects:v61 count:16];
    }

    while (v31);
  }

  v34 = *MEMORY[0x277D85DE8];

  return v41;
}

uint64_t __70__HMMTRHAPServiceDescription_descriptionsDictionaryFromAccessoryInfo___block_invoke(uint64_t a1, void *a2, void *a3)
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

@end