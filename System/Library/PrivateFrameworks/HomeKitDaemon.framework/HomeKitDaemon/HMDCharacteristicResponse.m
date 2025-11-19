@interface HMDCharacteristicResponse
+ (HMDCharacteristicResponse)responseWithRequest:(id)a3 characteristicUpdateDictionary:(id)a4;
+ (HMDCharacteristicResponse)responseWithRequest:(id)a3 error:(id)a4;
+ (id)characteristicsUpdateDictionaryFromResponses:(id)a3;
+ (id)responsesWithRequests:(id)a3 characteristicUpdateDictionary:(id)a4;
+ (id)responsesWithRequests:(id)a3 error:(id)a4;
- (BOOL)isRemote;
- (HMDCharacteristicResponse)initWithRequest:(id)a3 error:(id)a4;
- (NSDictionary)characteristicUpdateDictionary;
- (id)attributeDescriptions;
- (void)setRemote:(BOOL)a3;
- (void)setValue:(id)a3 updatedTime:(id)a4 stateNumber:(id)a5 notificationContext:(id)a6;
@end

@implementation HMDCharacteristicResponse

- (id)attributeDescriptions
{
  v49[8] = *MEMORY[0x277D85DE8];
  v3 = [(HMDCharacteristicResponse *)self request];
  v4 = [v3 characteristic];

  v5 = [v4 accessory];
  v6 = [v4 service];
  v7 = objc_alloc(MEMORY[0x277D0F778]);
  v8 = MEMORY[0x277CCACA8];
  v48 = v5;
  v47 = [v5 name];
  v46 = [v5 uniqueIdentifier];
  v45 = [v8 stringWithFormat:@"(%@/%@)", v47, v46];
  v44 = [v7 initWithName:@"Accessory" value:v45];
  v49[0] = v44;
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  v10 = MEMORY[0x277CCACA8];
  v43 = v6;
  v42 = [v6 type];
  v41 = shortHAPTypeDescription(v42);
  v39 = [v6 instanceID];
  v38 = [v10 stringWithFormat:@"(%@/%@)", v41, v39];
  v37 = [v9 initWithName:@"Service" value:v38];
  v49[1] = v37;
  v11 = objc_alloc(MEMORY[0x277D0F778]);
  v12 = MEMORY[0x277CCACA8];
  v40 = v4;
  v36 = [v4 type];
  v35 = shortHAPTypeDescription(v36);
  v34 = [v4 instanceID];
  v33 = [v12 stringWithFormat:@"(%@/%@)", v35, v34];
  v32 = [v11 initWithName:@"Characteristic" value:v33];
  v49[2] = v32;
  v13 = objc_alloc(MEMORY[0x277D0F778]);
  v31 = [(HMDCharacteristicResponse *)self request];
  v30 = [v31 previousValue];
  v14 = [v13 initWithName:@"Previous Value" value:v30];
  v49[3] = v14;
  v15 = objc_alloc(MEMORY[0x277D0F778]);
  v16 = [(HMDCharacteristicResponse *)self value];
  v17 = [v15 initWithName:@"Value" value:v16];
  v49[4] = v17;
  v18 = objc_alloc(MEMORY[0x277D0F778]);
  v19 = [(HMDCharacteristicResponse *)self value];
  v20 = [v18 initWithName:@"Type" value:objc_opt_class()];
  v49[5] = v20;
  v21 = objc_alloc(MEMORY[0x277D0F778]);
  v22 = [(HMDCharacteristicResponse *)self notificationContext];
  v23 = [v21 initWithName:@"Notification Context" value:v22];
  v49[6] = v23;
  v24 = objc_alloc(MEMORY[0x277D0F778]);
  v25 = [(HMDCharacteristicResponse *)self error];
  v26 = [v24 initWithName:@"Error" value:v25];
  v49[7] = v26;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:8];

  v28 = *MEMORY[0x277D85DE8];

  return v27;
}

- (void)setRemote:(BOOL)a3
{
  os_unfair_lock_lock_with_options();
  self->_remote = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isRemote
{
  os_unfair_lock_lock_with_options();
  remote = self->_remote;
  os_unfair_lock_unlock(&self->_lock);
  return remote;
}

- (NSDictionary)characteristicUpdateDictionary
{
  v3 = [(HMDCharacteristicResponse *)self request];
  v4 = [v3 characteristic];

  v5 = [v4 service];
  v6 = [v5 accessory];
  v7 = v6;
  v8 = MEMORY[0x277CBEC10];
  if (v5 && v6)
  {
    v8 = [MEMORY[0x277CBEB38] dictionary];
    v9 = [v7 uuid];
    v10 = [v9 UUIDString];
    [v8 setObject:v10 forKeyedSubscript:*MEMORY[0x277CCF0B0]];

    v11 = [v5 instanceID];
    [v8 setObject:v11 forKeyedSubscript:*MEMORY[0x277CD25F8]];

    v12 = [v4 instanceID];
    [v8 setObject:v12 forKeyedSubscript:*MEMORY[0x277CD2140]];

    if ([(HMDCharacteristicResponse *)self isRemote])
    {
      [v8 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"HMDCharacteristicRequestIsRemoteKey"];
    }

    v13 = [(HMDCharacteristicResponse *)self error];

    if (v13)
    {
      v14 = MEMORY[0x277CCAAB0];
      v15 = [(HMDCharacteristicResponse *)self error];
      v16 = [v14 archivedDataWithRootObject:v15 requiringSecureCoding:1 error:0];
      [v8 setObject:v16 forKeyedSubscript:*MEMORY[0x277CD2128]];
    }

    else
    {
      v17 = [(HMDCharacteristicResponse *)self value];
      [v8 setObject:v17 forKeyedSubscript:*MEMORY[0x277CD21B8]];

      v18 = [(HMDCharacteristicResponse *)self valueUpdatedTime];
      if (v18)
      {
        [v8 setObject:v18 forKeyedSubscript:*MEMORY[0x277CD21E0]];
      }

      else
      {
        v19 = [v4 lastKnownValueUpdateTime];
        [v8 setObject:v19 forKeyedSubscript:*MEMORY[0x277CD21E0]];
      }

      v20 = [(HMDCharacteristicResponse *)self stateNumber];
      if (v20)
      {
        [v8 setObject:v20 forKeyedSubscript:*MEMORY[0x277CD21D0]];
      }

      else
      {
        v21 = [v4 stateNumber];
        [v8 setObject:v21 forKeyedSubscript:*MEMORY[0x277CD21D0]];
      }

      v22 = [(HMDCharacteristicResponse *)self notificationContext];
      if (v22)
      {
        v15 = v22;
        [v8 setObject:v22 forKeyedSubscript:*MEMORY[0x277CD2150]];
      }

      else
      {
        v23 = [v4 notificationContext];
        [v8 setObject:v23 forKeyedSubscript:*MEMORY[0x277CD2150]];

        v15 = 0;
      }
    }
  }

  return v8;
}

- (void)setValue:(id)a3 updatedTime:(id)a4 stateNumber:(id)a5 notificationContext:(id)a6
{
  v17 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(HMDCharacteristicResponse *)self error];

  if (!v14)
  {
    objc_storeStrong(&self->_value, a3);
    if (v11)
    {
      v15 = v11;
    }

    else
    {
      v15 = [MEMORY[0x277CBEAA8] date];
    }

    valueUpdatedTime = self->_valueUpdatedTime;
    self->_valueUpdatedTime = v15;

    if (v12)
    {
      objc_storeStrong(&self->_stateNumber, a5);
    }

    objc_storeStrong(&self->_notificationContext, a6);
  }
}

- (HMDCharacteristicResponse)initWithRequest:(id)a3 error:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = HMDCharacteristicResponse;
  v9 = [(HMDCharacteristicResponse *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_request, a3);
    objc_storeStrong(&v10->_error, a4);
    v11 = [v7 characteristic];
    v12 = [v11 value];
    value = v10->_value;
    v10->_value = v12;
  }

  return v10;
}

+ (id)characteristicsUpdateDictionaryFromResponses:(id)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v39;
    v33 = *v39;
    v34 = v4;
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
        v10 = [v9 request];
        v11 = [v10 characteristic];

        v12 = [v11 service];
        v13 = [v11 accessory];
        v14 = v13;
        if (v11)
        {
          v15 = v12 == 0;
        }

        else
        {
          v15 = 1;
        }

        if (!v15 && v13 != 0)
        {
          v17 = [v13 uuid];
          v18 = [v17 UUIDString];

          v19 = [v12 instanceID];
          v20 = [v19 stringValue];

          v21 = [v11 instanceID];
          v37 = [v21 stringValue];

          v22 = [v4 hmf_mutableDictionaryForKey:v18];
          v23 = v22;
          if (v22)
          {
            v24 = v22;
          }

          else
          {
            v24 = [MEMORY[0x277CBEB38] dictionary];
          }

          v25 = v24;

          [v4 setObject:v25 forKeyedSubscript:v18];
          v26 = [v25 hmf_mutableDictionaryForKey:v20];
          v27 = v26;
          if (v26)
          {
            v28 = v26;
          }

          else
          {
            v28 = [MEMORY[0x277CBEB38] dictionary];
          }

          v29 = v28;

          [v25 setObject:v29 forKeyedSubscript:v20];
          v30 = [v9 characteristicUpdateDictionary];
          [v29 setObject:v30 forKeyedSubscript:v37];

          v7 = v33;
          v4 = v34;
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

  return v4;
}

+ (id)responsesWithRequests:(id)a3 characteristicUpdateDictionary:(id)a4
{
  v98[1] = *MEMORY[0x277D85DE8];
  v60 = a3;
  v6 = a4;
  v7 = [v6 hmf_dictionaryForKey:@"kModifiedCharacteristicsForAccessoryKey"];
  v56 = v6;
  if (!v7)
  {
    v7 = [v6 hmf_dictionaryForKey:@"kCharacteristicNotificationsKey"];
    if (!v7)
    {
      if ([v60 count] == 1)
      {
        v8 = [v6 hmf_stringForKey:*MEMORY[0x277CCF0B0]];
        v9 = [v6 hmf_numberForKey:*MEMORY[0x277CD2140]];
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
          v12 = [v60 firstObject];
          v13 = [v12 characteristic];
          v14 = [v13 accessory];
          v15 = [v14 uuid];
          v16 = [v15 UUIDString];
          if ([v16 isEqualToString:v8])
          {
            v17 = [v12 characteristic];
            [v17 instanceID];
            v19 = v18 = a1;
            v71 = [v19 isEqualToNumber:v73];

            a1 = v18;
            if (v71)
            {
              v20 = [HMDCharacteristicResponse responseWithRequest:v12 characteristicUpdateDictionary:v6];
              v98[0] = v20;
              v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v98 count:1];

              v22 = v73;
              goto LABEL_53;
            }
          }

          else
          {
          }

          v10 = v73;
        }
      }

      v7 = v6;
    }
  }

  v8 = v7;
  v22 = [MEMORY[0x277CBEB18] array];
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
    v68 = a1;
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

        v30 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
        v83[0] = MEMORY[0x277D85DD0];
        v83[1] = 3221225472;
        v83[2] = __82__HMDCharacteristicResponse_responsesWithRequests_characteristicUpdateDictionary___block_invoke;
        v83[3] = &unk_278689EF8;
        v83[4] = v25;
        v31 = v30;
        v84 = v31;
        [v60 na_each:v83];
        v81 = 0u;
        v82 = 0u;
        v79 = 0u;
        v80 = 0u;
        v65 = v29;
        v63 = [v29 allKeys];
        v66 = [v63 countByEnumeratingWithState:&v79 objects:v96 count:16];
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
                objc_enumerationMutation(v63);
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
              v70 = [v36 allKeys];
              v37 = [v70 countByEnumeratingWithState:&v75 objects:v95 count:16];
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
                      objc_enumerationMutation(v70);
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
                        [v22 addObject:v47];
                      }

                      else
                      {
                        v48 = v22;
                        v49 = objc_autoreleasePoolPush();
                        v50 = a1;
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
                          _os_log_impl(&dword_229538000, v51, OS_LOG_TYPE_ERROR, "%{public}@Invalid characteristic update for request: %@. Update Dict: %@", buf, 0x20u);

                          a1 = v68;
                        }

                        objc_autoreleasePoolPop(v49);
                        v22 = v48;
                        v23 = 0x277CBE000;
                        v31 = v69;
                      }
                    }
                  }

                  v38 = [v70 countByEnumeratingWithState:&v75 objects:v95 count:16];
                }

                while (v38);
              }

              v32 = v67 + 1;
            }

            while (v67 + 1 != v66);
            v66 = [v63 countByEnumeratingWithState:&v79 objects:v96 count:16];
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

  v21 = [v22 copy];
  v6 = v56;
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

+ (HMDCharacteristicResponse)responseWithRequest:(id)a3 characteristicUpdateDictionary:(id)a4
{
  v5 = a4;
  v6 = *MEMORY[0x277CD2128];
  v7 = a3;
  v8 = [v5 errorFromDataForKey:v6];
  v9 = [objc_opt_class() responseWithRequest:v7 error:v8];

  if (!v8)
  {
    v10 = [v5 objectForKeyedSubscript:*MEMORY[0x277CD21B8]];
    v11 = [v5 hmf_numberForKey:*MEMORY[0x277CD21D0]];
    v12 = [v5 hmf_dateForKey:*MEMORY[0x277CD21E0]];
    v13 = [v5 hmf_dataForKey:*MEMORY[0x277CD2150]];
    [v9 setValue:v10 updatedTime:v12 stateNumber:v11 notificationContext:v13];
  }

  return v9;
}

+ (id)responsesWithRequests:(id)a3 error:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v5, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = v5;
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

        v13 = [HMDCharacteristicResponse responseWithRequest:*(*(&v16 + 1) + 8 * i) error:v6, v16];
        [v7 addObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (HMDCharacteristicResponse)responseWithRequest:(id)a3 error:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithRequest:v7 error:v6];

  return v8;
}

@end