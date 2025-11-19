@interface NSDictionary(HMDCharacteristicResponse)
- (id)hmd_responseByRemovingEntriesForCharacteristics:()HMDCharacteristicResponse;
- (id)hmd_valueOfCharacteristic:()HMDCharacteristicResponse error:;
- (uint64_t)hmd_isValidResponseForWriteRequest:()HMDCharacteristicResponse naturalLightingEnabled:error:;
@end

@implementation NSDictionary(HMDCharacteristicResponse)

- (id)hmd_responseByRemovingEntriesForCharacteristics:()HMDCharacteristicResponse
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v29 = [a1 mutableCopy];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = v4;
  v33 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v33)
  {
    v32 = *v35;
    v28 = a1;
    do
    {
      for (i = 0; i != v33; ++i)
      {
        if (*v35 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v34 + 1) + 8 * i);
        v7 = [v6 service];
        v8 = [v7 instanceID];
        v9 = [v8 stringValue];

        v10 = [v7 accessory];
        v11 = [v10 uuid];
        v12 = [v11 UUIDString];

        v13 = [v6 instanceID];
        v14 = [v13 stringValue];

        v15 = [a1 hmf_dictionaryForKey:v12];
        v16 = v15;
        if (v15)
        {
          v17 = v9;
          v18 = [v15 hmf_dictionaryForKey:v9];
          v19 = v18;
          if (v18)
          {
            v20 = [v18 hmf_dictionaryForKey:v14];
            if (v20)
            {
              v30 = v20;
              v21 = [v19 mutableCopy];
              [v21 setObject:0 forKeyedSubscript:v14];
              v22 = [v16 mutableCopy];
              if ([v21 count])
              {
                v23 = [v21 copy];
                [v22 setObject:v23 forKeyedSubscript:v17];
              }

              else
              {
                [v22 setObject:0 forKeyedSubscript:v17];
              }

              if ([v22 count])
              {
                v24 = [v22 copy];
                [v29 setObject:v24 forKeyedSubscript:v12];
              }

              else
              {
                [v29 removeObjectForKey:v12];
              }

              a1 = v28;

              v20 = v30;
            }
          }

          v9 = v17;
        }
      }

      v33 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v33);
  }

  v25 = [v29 copy];
  v26 = *MEMORY[0x277D85DE8];

  return v25;
}

- (id)hmd_valueOfCharacteristic:()HMDCharacteristicResponse error:
{
  v55 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [v6 service];
  v8 = [v7 instanceID];
  v9 = [v7 accessory];
  v10 = [v9 uuid];

  v11 = [v6 instanceID];
  v12 = [v10 UUIDString];
  v13 = [a1 hmf_dictionaryForKey:v12];

  if (v13)
  {
    v14 = [v8 stringValue];
    v15 = [v13 hmf_dictionaryForKey:v14];

    if (v15)
    {
      v44 = v11;
      v16 = [v11 stringValue];
      v17 = [v15 hmf_dictionaryForKey:v16];

      if (v17)
      {
        v18 = [v17 objectForKeyedSubscript:*MEMORY[0x277CD21B8]];
        v19 = [v17 hmf_dataForKey:*MEMORY[0x277CD2128]];
        v20 = v19;
        if (a4 && !v18)
        {
          v40 = v8;
          v42 = v19;
          v21 = MEMORY[0x277CCAAC8];
          v22 = objc_opt_class();
          v46 = 0;
          v23 = v21;
          v20 = v42;
          v24 = [v23 unarchivedObjectOfClass:v22 fromData:v42 error:&v46];
          v41 = v46;
          if (v24)
          {
            v25 = v24;
            *a4 = v24;
          }

          else
          {
            *a4 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
            context = objc_autoreleasePoolPush();
            v35 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
            {
              v36 = HMFGetLogIdentifier();
              *buf = 138543874;
              v48 = v36;
              v49 = 2112;
              v50 = v42;
              v51 = 2112;
              v52 = v41;
              _os_log_impl(&dword_2531F8000, v35, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode error from data %@:%@", buf, 0x20u);

              v20 = v42;
            }

            objc_autoreleasePoolPop(context);
          }

          v8 = v40;
        }
      }

      else
      {
        v32 = objc_autoreleasePoolPush();
        v33 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v34 = v43 = v32;
          *buf = 138544130;
          v48 = v34;
          v49 = 2112;
          v50 = v44;
          v51 = 2112;
          v52 = v8;
          v53 = 2112;
          v54 = v10;
          _os_log_impl(&dword_2531F8000, v33, OS_LOG_TYPE_ERROR, "%{public}@Missing entry for characteristic with iid of service with iid of accessory with uuid %@:%@:%@", buf, 0x2Au);

          v32 = v43;
        }

        objc_autoreleasePoolPop(v32);
        if (a4)
        {
          [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
          *a4 = v18 = 0;
        }

        else
        {
          v18 = 0;
        }
      }

      v11 = v44;
    }

    else
    {
      v29 = objc_autoreleasePoolPush();
      v30 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v31 = v45 = v11;
        *buf = 138543874;
        v48 = v31;
        v49 = 2112;
        v50 = v8;
        v51 = 2112;
        v52 = v10;
        _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_ERROR, "%{public}@Missing entry for service with iid of accessory with uuid %@:%@", buf, 0x20u);

        v11 = v45;
      }

      objc_autoreleasePoolPop(v29);
      if (a4)
      {
        [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
        *a4 = v18 = 0;
      }

      else
      {
        v18 = 0;
      }
    }
  }

  else
  {
    v26 = objc_autoreleasePoolPush();
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = HMFGetLogIdentifier();
      *buf = 138543618;
      v48 = v28;
      v49 = 2112;
      v50 = v10;
      _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_ERROR, "%{public}@Missing entry for accessory with uuid in write response %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v26);
    if (a4)
    {
      [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
      *a4 = v18 = 0;
    }

    else
    {
      v18 = 0;
    }
  }

  v37 = *MEMORY[0x277D85DE8];

  return v18;
}

- (uint64_t)hmd_isValidResponseForWriteRequest:()HMDCharacteristicResponse naturalLightingEnabled:error:
{
  v68[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = objc_autoreleasePoolPush();
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v68[0] = v8;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v68 count:1];
    *buf = 138543874;
    v61 = v11;
    v62 = 2112;
    v63 = v12;
    v64 = 2112;
    v65 = a1;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@[Natural Lighting] Received response for requests %@:%@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  v13 = [v8 characteristic];
  v59 = 0;
  v14 = [a1 hmd_valueOfCharacteristic:v13 error:&v59];
  v15 = v59;

  if (v14)
  {
    v16 = v14;
    objc_opt_class();
    v17 = objc_opt_isKindOfClass() & 1;
    if (v17)
    {
      v18 = v16;
    }

    else
    {
      v18 = 0;
    }

    v19 = v18;

    if (v17)
    {
      v57 = v19;
      v20 = [v8 value];
      v21 = [v16 isEqual:v20];

      v22 = objc_autoreleasePoolPush();
      v23 = HMFGetOSLogHandle();
      v24 = v23;
      if (v21)
      {
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          v25 = HMFGetLogIdentifier();
          *buf = 138543362;
          v61 = v25;
          _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_INFO, "%{public}@[Natural Lighting] Calling completion by ignoring the write response", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v22);
        v26 = 1;
        v27 = v15;
      }

      else
      {
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          v37 = HMFGetLogIdentifier();
          v38 = [v16 hmf_hexadecimalRepresentation];
          *buf = 138543618;
          v61 = v37;
          v62 = 2112;
          v63 = v38;
          _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_DEBUG, "%{public}@[Natural Lighting] Decoding value transition control response: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v22);
        v58 = v15;
        v39 = [MEMORY[0x277CFEAC0] parsedFromData:v16 error:&v58];
        v27 = v58;

        v40 = objc_autoreleasePoolPush();
        v41 = HMFGetOSLogHandle();
        v42 = v41;
        if (v39)
        {
          if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
          {
            v43 = HMFGetLogIdentifier();
            *buf = 138543618;
            v61 = v43;
            v62 = 2112;
            v63 = v39;
            _os_log_impl(&dword_2531F8000, v42, OS_LOG_TYPE_INFO, "%{public}@[Natural Lighting] Transition control response is: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v40);
          v44 = [v8 characteristic];
          v45 = [v44 service];
          v46 = [v45 findCharacteristicWithType:*MEMORY[0x277CCF7D8]];

          v47 = [v39 isNaturalLightingEnabledForCharacteristic:v46] ^ a4;
          if (v47 == 1)
          {
            context = objc_autoreleasePoolPush();
            v48 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
            {
              v55 = HMFGetLogIdentifier();
              v49 = HMFBooleanToString();
              v50 = HMFBooleanToString();
              *buf = 138543874;
              v61 = v55;
              v62 = 2112;
              v63 = v49;
              v64 = 2112;
              v65 = v50;
              _os_log_impl(&dword_2531F8000, v48, OS_LOG_TYPE_ERROR, "%{public}@[Natural Lighting] Write response indicates Natural Lighting was enabled: %@ expected: %@", buf, 0x20u);
            }

            objc_autoreleasePoolPop(context);
            *a5 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
          }

          v26 = v47 ^ 1u;
        }

        else
        {
          if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
          {
            v51 = HMFGetLogIdentifier();
            *buf = 138543874;
            v61 = v51;
            v62 = 2112;
            v63 = v16;
            v64 = 2112;
            v65 = v27;
            _os_log_impl(&dword_2531F8000, v42, OS_LOG_TYPE_ERROR, "%{public}@[Natural Lighting] Failed to parse Transition Control Response %@:%@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v40);
          if (a5)
          {
            v52 = v27;
            v26 = 0;
            *a5 = v27;
          }

          else
          {
            v26 = 0;
          }
        }
      }

      v19 = v57;
    }

    else
    {
      v32 = objc_autoreleasePoolPush();
      v33 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v35 = v34 = v19;
        v36 = objc_opt_class();
        *buf = 138544130;
        v61 = v35;
        v62 = 2112;
        v63 = v8;
        v64 = 2112;
        v65 = v16;
        v66 = 2112;
        v67 = v36;
        _os_log_impl(&dword_2531F8000, v33, OS_LOG_TYPE_ERROR, "%{public}@[Natural Lighting] Response value for request %@ is not of expected type %@:%@", buf, 0x2Au);

        v19 = v34;
      }

      objc_autoreleasePoolPop(v32);
      if (a5)
      {
        [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
        *a5 = v26 = 0;
      }

      else
      {
        v26 = 0;
      }

      v27 = v15;
    }

    v15 = v27;
  }

  else
  {
    v28 = objc_autoreleasePoolPush();
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = HMFGetLogIdentifier();
      *buf = 138543874;
      v61 = v30;
      v62 = 2112;
      v63 = v8;
      v64 = 2112;
      v65 = v15;
      _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_ERROR, "%{public}@[Natural Lighting] Failed to parse response for request %@:%@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v28);
    if (a5)
    {
      v31 = v15;
      v26 = 0;
      *a5 = v15;
    }

    else
    {
      v26 = 0;
    }
  }

  v53 = *MEMORY[0x277D85DE8];
  return v26;
}

@end