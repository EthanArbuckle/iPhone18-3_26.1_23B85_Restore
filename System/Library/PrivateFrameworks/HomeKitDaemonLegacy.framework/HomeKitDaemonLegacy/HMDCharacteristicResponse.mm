@interface HMDCharacteristicResponse
+ (HMDCharacteristicResponse)responseWithRequest:(id)request characteristicUpdateDictionary:(id)dictionary;
+ (HMDCharacteristicResponse)responseWithRequest:(id)request error:(id)error;
+ (id)characteristicsUpdateDictionaryFromResponses:(id)responses;
+ (id)responsesWithRequests:(id)requests characteristicUpdateDictionary:(id)dictionary;
+ (id)responsesWithRequests:(id)requests error:(id)error;
- (HMDCharacteristicResponse)initWithRequest:(id)request error:(id)error;
- (NSDictionary)characteristicUpdateDictionary;
- (id)attributeDescriptions;
- (void)setValue:(id)value updatedTime:(id)time stateNumber:(id)number notificationContext:(id)context;
@end

@implementation HMDCharacteristicResponse

- (id)attributeDescriptions
{
  v49[8] = *MEMORY[0x277D85DE8];
  request = [(HMDCharacteristicResponse *)self request];
  characteristic = [request characteristic];

  accessory = [characteristic accessory];
  service = [characteristic service];
  v7 = objc_alloc(MEMORY[0x277D0F778]);
  v8 = MEMORY[0x277CCACA8];
  v48 = accessory;
  name = [accessory name];
  uniqueIdentifier = [accessory uniqueIdentifier];
  v45 = [v8 stringWithFormat:@"(%@/%@)", name, uniqueIdentifier];
  v44 = [v7 initWithName:@"Accessory" value:v45];
  v49[0] = v44;
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  v10 = MEMORY[0x277CCACA8];
  v43 = service;
  type = [service type];
  v41 = shortHAPTypeDescription(type);
  instanceID = [service instanceID];
  v38 = [v10 stringWithFormat:@"(%@/%@)", v41, instanceID];
  v37 = [v9 initWithName:@"Service" value:v38];
  v49[1] = v37;
  v11 = objc_alloc(MEMORY[0x277D0F778]);
  v12 = MEMORY[0x277CCACA8];
  v40 = characteristic;
  type2 = [characteristic type];
  v35 = shortHAPTypeDescription(type2);
  instanceID2 = [characteristic instanceID];
  v33 = [v12 stringWithFormat:@"(%@/%@)", v35, instanceID2];
  v32 = [v11 initWithName:@"Characteristic" value:v33];
  v49[2] = v32;
  v13 = objc_alloc(MEMORY[0x277D0F778]);
  request2 = [(HMDCharacteristicResponse *)self request];
  previousValue = [request2 previousValue];
  v14 = [v13 initWithName:@"Previous Value" value:previousValue];
  v49[3] = v14;
  v15 = objc_alloc(MEMORY[0x277D0F778]);
  value = [(HMDCharacteristicResponse *)self value];
  v17 = [v15 initWithName:@"Value" value:value];
  v49[4] = v17;
  v18 = objc_alloc(MEMORY[0x277D0F778]);
  value2 = [(HMDCharacteristicResponse *)self value];
  v20 = [v18 initWithName:@"Type" value:objc_opt_class()];
  v49[5] = v20;
  v21 = objc_alloc(MEMORY[0x277D0F778]);
  notificationContext = [(HMDCharacteristicResponse *)self notificationContext];
  v23 = [v21 initWithName:@"Notification Context" value:notificationContext];
  v49[6] = v23;
  v24 = objc_alloc(MEMORY[0x277D0F778]);
  error = [(HMDCharacteristicResponse *)self error];
  v26 = [v24 initWithName:@"Error" value:error];
  v49[7] = v26;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:8];

  v28 = *MEMORY[0x277D85DE8];

  return v27;
}

- (NSDictionary)characteristicUpdateDictionary
{
  request = [(HMDCharacteristicResponse *)self request];
  characteristic = [request characteristic];

  service = [characteristic service];
  accessory = [service accessory];
  v7 = accessory;
  dictionary = MEMORY[0x277CBEC10];
  if (service && accessory)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    uuid = [v7 uuid];
    uUIDString = [uuid UUIDString];
    [dictionary setObject:uUIDString forKeyedSubscript:*MEMORY[0x277CCF0B0]];

    instanceID = [service instanceID];
    [dictionary setObject:instanceID forKeyedSubscript:*MEMORY[0x277CD25F8]];

    instanceID2 = [characteristic instanceID];
    [dictionary setObject:instanceID2 forKeyedSubscript:*MEMORY[0x277CD2140]];

    error = [(HMDCharacteristicResponse *)self error];

    if (error)
    {
      v14 = MEMORY[0x277CCAAB0];
      error2 = [(HMDCharacteristicResponse *)self error];
      v16 = [v14 archivedDataWithRootObject:error2 requiringSecureCoding:1 error:0];
      [dictionary setObject:v16 forKeyedSubscript:*MEMORY[0x277CD2128]];
    }

    else
    {
      value = [(HMDCharacteristicResponse *)self value];
      [dictionary setObject:value forKeyedSubscript:*MEMORY[0x277CD21B8]];

      valueUpdatedTime = [(HMDCharacteristicResponse *)self valueUpdatedTime];
      if (valueUpdatedTime)
      {
        [dictionary setObject:valueUpdatedTime forKeyedSubscript:*MEMORY[0x277CD21E0]];
      }

      else
      {
        lastKnownValueUpdateTime = [characteristic lastKnownValueUpdateTime];
        [dictionary setObject:lastKnownValueUpdateTime forKeyedSubscript:*MEMORY[0x277CD21E0]];
      }

      stateNumber = [(HMDCharacteristicResponse *)self stateNumber];
      if (stateNumber)
      {
        [dictionary setObject:stateNumber forKeyedSubscript:*MEMORY[0x277CD21D0]];
      }

      else
      {
        stateNumber2 = [characteristic stateNumber];
        [dictionary setObject:stateNumber2 forKeyedSubscript:*MEMORY[0x277CD21D0]];
      }

      notificationContext = [(HMDCharacteristicResponse *)self notificationContext];
      if (notificationContext)
      {
        error2 = notificationContext;
        [dictionary setObject:notificationContext forKeyedSubscript:*MEMORY[0x277CD2150]];
      }

      else
      {
        notificationContext2 = [characteristic notificationContext];
        [dictionary setObject:notificationContext2 forKeyedSubscript:*MEMORY[0x277CD2150]];

        error2 = 0;
      }
    }
  }

  return dictionary;
}

- (void)setValue:(id)value updatedTime:(id)time stateNumber:(id)number notificationContext:(id)context
{
  valueCopy = value;
  timeCopy = time;
  numberCopy = number;
  contextCopy = context;
  error = [(HMDCharacteristicResponse *)self error];

  if (!error)
  {
    objc_storeStrong(&self->_value, value);
    if (timeCopy)
    {
      date = timeCopy;
    }

    else
    {
      date = [MEMORY[0x277CBEAA8] date];
    }

    valueUpdatedTime = self->_valueUpdatedTime;
    self->_valueUpdatedTime = date;

    if (numberCopy)
    {
      objc_storeStrong(&self->_stateNumber, number);
    }

    objc_storeStrong(&self->_notificationContext, context);
  }
}

- (HMDCharacteristicResponse)initWithRequest:(id)request error:(id)error
{
  requestCopy = request;
  errorCopy = error;
  v15.receiver = self;
  v15.super_class = HMDCharacteristicResponse;
  v9 = [(HMDCharacteristicResponse *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_request, request);
    objc_storeStrong(&v10->_error, error);
    characteristic = [requestCopy characteristic];
    value = [characteristic value];
    value = v10->_value;
    v10->_value = value;
  }

  return v10;
}

+ (id)characteristicsUpdateDictionaryFromResponses:(id)responses
{
  v43 = *MEMORY[0x277D85DE8];
  responsesCopy = responses;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = responsesCopy;
  v5 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v39;
    v33 = *v39;
    v34 = dictionary;
    do
    {
      v8 = 0;
      v35 = v6;
      do
      {
        if (*v39 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v38 + 1) + 8 * v8);
        request = [v9 request];
        characteristic = [request characteristic];

        service = [characteristic service];
        accessory = [characteristic accessory];
        v14 = accessory;
        if (characteristic)
        {
          v15 = service == 0;
        }

        else
        {
          v15 = 1;
        }

        if (!v15 && accessory != 0)
        {
          uuid = [accessory uuid];
          uUIDString = [uuid UUIDString];

          instanceID = [service instanceID];
          stringValue = [instanceID stringValue];

          instanceID2 = [characteristic instanceID];
          stringValue2 = [instanceID2 stringValue];

          v22 = [dictionary hmf_mutableDictionaryForKey:uUIDString];
          v23 = v22;
          if (v22)
          {
            dictionary2 = v22;
          }

          else
          {
            dictionary2 = [MEMORY[0x277CBEB38] dictionary];
          }

          v25 = dictionary2;

          [dictionary setObject:v25 forKeyedSubscript:uUIDString];
          v26 = [v25 hmf_mutableDictionaryForKey:stringValue];
          v27 = v26;
          if (v26)
          {
            dictionary3 = v26;
          }

          else
          {
            dictionary3 = [MEMORY[0x277CBEB38] dictionary];
          }

          v29 = dictionary3;

          [v25 setObject:v29 forKeyedSubscript:stringValue];
          characteristicUpdateDictionary = [v9 characteristicUpdateDictionary];
          [v29 setObject:characteristicUpdateDictionary forKeyedSubscript:stringValue2];

          v7 = v33;
          dictionary = v34;
          v6 = v35;
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
    }

    while (v6);
  }

  v31 = *MEMORY[0x277D85DE8];

  return dictionary;
}

+ (id)responsesWithRequests:(id)requests characteristicUpdateDictionary:(id)dictionary
{
  v98[1] = *MEMORY[0x277D85DE8];
  requestsCopy = requests;
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy hmf_dictionaryForKey:@"kModifiedCharacteristicsForAccessoryKey"];
  v56 = dictionaryCopy;
  if (!v7)
  {
    v7 = [dictionaryCopy hmf_dictionaryForKey:@"kCharacteristicNotificationsKey"];
    if (!v7)
    {
      if ([requestsCopy count] == 1)
      {
        v8 = [dictionaryCopy hmf_stringForKey:*MEMORY[0x277CCF0B0]];
        v9 = [dictionaryCopy hmf_numberForKey:*MEMORY[0x277CD2140]];
        v10 = HAPInstanceIDFromValue();

        if (v8)
        {
          v11 = v10 == 0;
        }

        else
        {
          v11 = 1;
        }

        if (!v11)
        {
          v73 = v10;
          firstObject = [requestsCopy firstObject];
          characteristic = [firstObject characteristic];
          accessory = [characteristic accessory];
          uuid = [accessory uuid];
          uUIDString = [uuid UUIDString];
          if ([uUIDString isEqualToString:v8])
          {
            characteristic2 = [firstObject characteristic];
            [characteristic2 instanceID];
            v19 = v18 = self;
            v71 = [v19 isEqualToNumber:v73];

            self = v18;
            if (v71)
            {
              v20 = [HMDCharacteristicResponse responseWithRequest:firstObject characteristicUpdateDictionary:dictionaryCopy];
              v98[0] = v20;
              v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v98 count:1];

              array = v73;
              goto LABEL_53;
            }
          }

          else
          {
          }

          v10 = v73;
        }
      }

      v7 = dictionaryCopy;
    }
  }

  v8 = v7;
  array = [MEMORY[0x277CBEB18] array];
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  obj = [v8 allKeys];
  v61 = [obj countByEnumeratingWithState:&v85 objects:v97 count:16];
  if (v61)
  {
    v58 = *v86;
    v23 = 0x277CBE000uLL;
    v59 = v8;
    selfCopy = self;
    do
    {
      v24 = 0;
      do
      {
        if (*v86 != v58)
        {
          objc_enumerationMutation(obj);
        }

        v62 = v24;
        v25 = *(*(&v85 + 1) + 8 * v24);
        v26 = [v8 objectForKeyedSubscript:v25];
        v27 = *(v23 + 2752);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v28 = v26;
        }

        else
        {
          v28 = 0;
        }

        v29 = v28;

        strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
        v83[0] = MEMORY[0x277D85DD0];
        v83[1] = 3221225472;
        v83[2] = __82__HMDCharacteristicResponse_responsesWithRequests_characteristicUpdateDictionary___block_invoke;
        v83[3] = &unk_2797357D0;
        v83[4] = v25;
        v31 = strongToStrongObjectsMapTable;
        v84 = v31;
        [requestsCopy na_each:v83];
        v81 = 0u;
        v82 = 0u;
        v79 = 0u;
        v80 = 0u;
        v65 = v29;
        allKeys = [v29 allKeys];
        v66 = [allKeys countByEnumeratingWithState:&v79 objects:v96 count:16];
        if (v66)
        {
          v64 = *v80;
          v69 = v31;
          do
          {
            v32 = 0;
            do
            {
              if (*v80 != v64)
              {
                objc_enumerationMutation(allKeys);
              }

              v67 = v32;
              v33 = [v65 objectForKeyedSubscript:*(*(&v79 + 1) + 8 * v32)];
              v34 = *(v23 + 2752);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v35 = v33;
              }

              else
              {
                v35 = 0;
              }

              v36 = v35;

              v77 = 0u;
              v78 = 0u;
              v75 = 0u;
              v76 = 0u;
              v72 = v36;
              allKeys2 = [v36 allKeys];
              v37 = [allKeys2 countByEnumeratingWithState:&v75 objects:v95 count:16];
              if (v37)
              {
                v38 = v37;
                v74 = *v76;
                do
                {
                  for (i = 0; i != v38; ++i)
                  {
                    if (*v76 != v74)
                    {
                      objc_enumerationMutation(allKeys2);
                    }

                    v40 = *(*(&v75 + 1) + 8 * i);
                    v41 = HAPInstanceIDFromValue();
                    v42 = [v31 objectForKey:v41];

                    if (v42)
                    {
                      v43 = [v72 objectForKeyedSubscript:v40];
                      v44 = *(v23 + 2752);
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v45 = v43;
                      }

                      else
                      {
                        v45 = 0;
                      }

                      v46 = v45;

                      if (v46)
                      {
                        v47 = [HMDCharacteristicResponse responseWithRequest:v42 characteristicUpdateDictionary:v46];
                        [array addObject:v47];
                      }

                      else
                      {
                        v48 = array;
                        v49 = objc_autoreleasePoolPush();
                        selfCopy2 = self;
                        v51 = HMFGetOSLogHandle();
                        if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
                        {
                          v52 = HMFGetLogIdentifier();
                          v53 = [v72 objectForKeyedSubscript:v40];
                          *buf = 138543874;
                          v90 = v52;
                          v91 = 2112;
                          v92 = v42;
                          v93 = 2112;
                          v94 = v53;
                          _os_log_impl(&dword_2531F8000, v51, OS_LOG_TYPE_ERROR, "%{public}@Invalid characteristic update for request: %@. Update Dict: %@", buf, 0x20u);

                          self = selfCopy;
                        }

                        objc_autoreleasePoolPop(v49);
                        array = v48;
                        v23 = 0x277CBE000;
                        v31 = v69;
                      }
                    }
                  }

                  v38 = [allKeys2 countByEnumeratingWithState:&v75 objects:v95 count:16];
                }

                while (v38);
              }

              v32 = v67 + 1;
            }

            while (v67 + 1 != v66);
            v66 = [allKeys countByEnumeratingWithState:&v79 objects:v96 count:16];
          }

          while (v66);
        }

        v24 = v62 + 1;
        v8 = v59;
      }

      while (v62 + 1 != v61);
      v61 = [obj countByEnumeratingWithState:&v85 objects:v97 count:16];
    }

    while (v61);
  }

  v21 = [array copy];
  dictionaryCopy = v56;
LABEL_53:

  v54 = *MEMORY[0x277D85DE8];

  return v21;
}

void __82__HMDCharacteristicResponse_responsesWithRequests_characteristicUpdateDictionary___block_invoke(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = [v11 characteristic];
  v4 = [v3 accessory];
  v5 = [v4 uuid];
  v6 = [v5 UUIDString];
  v7 = [v6 isEqualToString:*(a1 + 32)];

  if (v7)
  {
    v8 = *(a1 + 40);
    v9 = [v11 characteristic];
    v10 = [v9 instanceID];
    [v8 setObject:v11 forKey:v10];
  }
}

+ (HMDCharacteristicResponse)responseWithRequest:(id)request characteristicUpdateDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v6 = *MEMORY[0x277CD2128];
  requestCopy = request;
  v8 = [dictionaryCopy errorFromDataForKey:v6];
  v9 = [objc_opt_class() responseWithRequest:requestCopy error:v8];

  if (!v8)
  {
    v10 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x277CD21B8]];
    v11 = [dictionaryCopy hmf_numberForKey:*MEMORY[0x277CD21D0]];
    v12 = [dictionaryCopy hmf_dateForKey:*MEMORY[0x277CD21E0]];
    v13 = [dictionaryCopy hmf_dataForKey:*MEMORY[0x277CD2150]];
    [v9 setValue:v10 updatedTime:v12 stateNumber:v11 notificationContext:v13];
  }

  return v9;
}

+ (id)responsesWithRequests:(id)requests error:(id)error
{
  v21 = *MEMORY[0x277D85DE8];
  requestsCopy = requests;
  errorCopy = error;
  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(requestsCopy, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = requestsCopy;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [HMDCharacteristicResponse responseWithRequest:*(*(&v16 + 1) + 8 * i) error:errorCopy, v16];
        [v7 addObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (HMDCharacteristicResponse)responseWithRequest:(id)request error:(id)error
{
  errorCopy = error;
  requestCopy = request;
  v8 = [[self alloc] initWithRequest:requestCopy error:errorCopy];

  return v8;
}

@end