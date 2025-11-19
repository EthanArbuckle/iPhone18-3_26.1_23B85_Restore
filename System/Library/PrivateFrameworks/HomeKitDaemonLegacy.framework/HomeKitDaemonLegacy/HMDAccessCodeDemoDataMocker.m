@interface HMDAccessCodeDemoDataMocker
+ (id)logCategory;
- (HMDAccessCodeDemoDataMocker)init;
- (id)_controlResponseForReadRequest:(id)a3;
- (id)_controlResponseForWriteRequest:(id)a3;
- (id)_handleAddRequest:(id)a3;
- (id)_handleListRequest;
- (id)_handleReadRequest:(id)a3;
- (id)_handleRemoveRequest:(id)a3;
- (id)_handleUpdateRequest:(id)a3;
- (id)handleReadRequests:(id)a3;
- (id)handleWriteRequests:(id)a3;
@end

@implementation HMDAccessCodeDemoDataMocker

- (id)_handleRemoveRequest:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v24 = [MEMORY[0x277CBEB18] array];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v22 = v4;
  obj = [v4 accessCodeControlRequest];
  v5 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v26;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v26 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = [*(*(&v25 + 1) + 8 * i) identifier];
        v10 = [v9 value];

        v11 = [(HMDAccessCodeDemoDataMocker *)self accessCodes];
        v12 = [v11 objectForKeyedSubscript:v10];

        v13 = [(HMDAccessCodeDemoDataMocker *)self accessCodes];
        [v13 removeObjectForKey:v10];

        v14 = [objc_alloc(MEMORY[0x277CFEC98]) initWithValue:v10];
        v15 = [objc_alloc(MEMORY[0x277CFE9E0]) initWithValue:0];
        v16 = [objc_alloc(MEMORY[0x277CFE9F0]) initWithValue:0];
        v17 = [objc_alloc(MEMORY[0x277CFE9D8]) initWithIdentifier:v14 accessCode:v12 flags:v15 statusCode:v16];
        [v24 addObject:v17];
      }

      v6 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v6);
  }

  v18 = [objc_alloc(MEMORY[0x277CFE9E8]) initWithValue:5];
  v19 = [objc_alloc(MEMORY[0x277CFE9C8]) initWithOperationType:v18 accessCodeControlRequest:0 accessCodeControlResponse:v24];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)_handleUpdateRequest:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v24 = [MEMORY[0x277CBEB18] array];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v22 = v4;
  obj = [v4 accessCodeControlRequest];
  v5 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v26;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v26 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v25 + 1) + 8 * i);
        v10 = [v9 identifier];
        v11 = [v10 value];

        v12 = [v9 accessCode];
        v13 = [(HMDAccessCodeDemoDataMocker *)self accessCodes];
        [v13 setObject:v12 forKeyedSubscript:v11];

        v14 = [objc_alloc(MEMORY[0x277CFEC98]) initWithValue:v11];
        v15 = [objc_alloc(MEMORY[0x277CFE9E0]) initWithValue:0];
        v16 = [objc_alloc(MEMORY[0x277CFE9F0]) initWithValue:0];
        v17 = [objc_alloc(MEMORY[0x277CFE9D8]) initWithIdentifier:v14 accessCode:v12 flags:v15 statusCode:v16];
        [v24 addObject:v17];
      }

      v6 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v6);
  }

  v18 = [objc_alloc(MEMORY[0x277CFE9E8]) initWithValue:4];
  v19 = [objc_alloc(MEMORY[0x277CFE9C8]) initWithOperationType:v18 accessCodeControlRequest:0 accessCodeControlResponse:v24];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)_handleAddRequest:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v26 = [MEMORY[0x277CBEB18] array];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v24 = v4;
  obj = [v4 accessCodeControlRequest];
  v5 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v28;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v28 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = [*(*(&v27 + 1) + 8 * i) accessCode];
        v10 = MEMORY[0x277CCABB0];
        v11 = [(HMDAccessCodeDemoDataMocker *)self accessCodes];
        v12 = [v11 allKeys];
        v13 = [v12 valueForKeyPath:@"@max.self"];
        v14 = [v10 numberWithInteger:{objc_msgSend(v13, "integerValue") + 1}];

        v15 = [(HMDAccessCodeDemoDataMocker *)self accessCodes];
        [v15 setObject:v9 forKeyedSubscript:v14];

        v16 = [objc_alloc(MEMORY[0x277CFEC98]) initWithValue:v14];
        v17 = [objc_alloc(MEMORY[0x277CFE9E0]) initWithValue:0];
        v18 = [objc_alloc(MEMORY[0x277CFE9F0]) initWithValue:0];
        v19 = [objc_alloc(MEMORY[0x277CFE9D8]) initWithIdentifier:v16 accessCode:v9 flags:v17 statusCode:v18];
        [v26 addObject:v19];
      }

      v6 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v6);
  }

  v20 = [objc_alloc(MEMORY[0x277CFE9E8]) initWithValue:3];
  v21 = [objc_alloc(MEMORY[0x277CFE9C8]) initWithOperationType:v20 accessCodeControlRequest:0 accessCodeControlResponse:v26];

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

- (id)_handleReadRequest:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v23 = [MEMORY[0x277CBEB18] array];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v21 = v4;
  obj = [v4 accessCodeControlRequest];
  v5 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v25;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = [*(*(&v24 + 1) + 8 * i) identifier];
        v10 = [v9 value];

        v11 = [(HMDAccessCodeDemoDataMocker *)self accessCodes];
        v12 = [v11 objectForKeyedSubscript:v10];

        v13 = [objc_alloc(MEMORY[0x277CFEC98]) initWithValue:v10];
        v14 = [objc_alloc(MEMORY[0x277CFE9E0]) initWithValue:0];
        v15 = [objc_alloc(MEMORY[0x277CFE9F0]) initWithValue:0];
        v16 = [objc_alloc(MEMORY[0x277CFE9D8]) initWithIdentifier:v13 accessCode:v12 flags:v14 statusCode:v15];
        [v23 addObject:v16];
      }

      v6 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v6);
  }

  v17 = [objc_alloc(MEMORY[0x277CFE9E8]) initWithValue:2];
  v18 = [objc_alloc(MEMORY[0x277CFE9C8]) initWithOperationType:v17 accessCodeControlRequest:0 accessCodeControlResponse:v23];

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (id)_handleListRequest
{
  v28 = *MEMORY[0x277D85DE8];
  v22 = [MEMORY[0x277CBEB18] array];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v3 = [(HMDAccessCodeDemoDataMocker *)self accessCodes];
  v4 = [v3 allKeys];

  obj = v4;
  v5 = [v4 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v24;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v24 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v23 + 1) + 8 * i);
        v10 = [objc_alloc(MEMORY[0x277CFEC98]) initWithValue:v9];
        v11 = [objc_alloc(MEMORY[0x277CFE9E0]) initWithValue:0];
        v12 = [objc_alloc(MEMORY[0x277CFE9F0]) initWithValue:0];
        v13 = objc_alloc(MEMORY[0x277CFE9D8]);
        v14 = [(HMDAccessCodeDemoDataMocker *)self accessCodes];
        v15 = [v14 objectForKeyedSubscript:v9];
        v16 = [v13 initWithIdentifier:v10 accessCode:v15 flags:v11 statusCode:v12];

        [v22 addObject:v16];
      }

      v6 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v6);
  }

  v17 = [objc_alloc(MEMORY[0x277CFE9E8]) initWithValue:1];
  v18 = [objc_alloc(MEMORY[0x277CFE9C8]) initWithOperationType:v17 accessCodeControlRequest:0 accessCodeControlResponse:v22];

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (id)_controlResponseForWriteRequest:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277CFE9C8];
  v6 = [v4 value];
  v18 = 0;
  v7 = [v5 parsedFromData:v6 error:&v18];
  v8 = v18;

  if (v7)
  {
    v9 = [v7 operationType];
    v10 = [v9 value];

    if (v10 <= 2)
    {
      if (v10 == 1)
      {
        v11 = [(HMDAccessCodeDemoDataMocker *)self _handleListRequest];
      }

      else
      {
        if (v10 != 2)
        {
          goto LABEL_17;
        }

        v11 = [(HMDAccessCodeDemoDataMocker *)self _handleReadRequest:v7];
      }
    }

    else
    {
      switch(v10)
      {
        case 3:
          v11 = [(HMDAccessCodeDemoDataMocker *)self _handleAddRequest:v7];
          break;
        case 4:
          v11 = [(HMDAccessCodeDemoDataMocker *)self _handleUpdateRequest:v7];
          break;
        case 5:
          v11 = [(HMDAccessCodeDemoDataMocker *)self _handleRemoveRequest:v7];
          break;
        default:
          goto LABEL_17;
      }
    }

    v9 = v11;
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v20 = v15;
      v21 = 2112;
      v22 = 0;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@Failed to parse HAPAccessCodeControl from NSData: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    v9 = 0;
  }

LABEL_17:

  v16 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)_controlResponseForReadRequest:(id)a3
{
  v3 = [objc_alloc(MEMORY[0x277CFE9B8]) initWithValue:1];
  v4 = [objc_alloc(MEMORY[0x277CFEC98]) initWithValue:&unk_28662A148];
  v5 = [objc_alloc(MEMORY[0x277CFEC98]) initWithValue:&unk_28662A160];
  v6 = [objc_alloc(MEMORY[0x277CFEC98]) initWithValue:&unk_28662A178];
  v7 = [objc_alloc(MEMORY[0x277CFE9C0]) initWithCharacterSet:v3 minimumValueLength:v4 maximumValueLength:v5 maximumAccessCodes:v6];

  return v7;
}

- (id)handleReadRequests:(id)a3
{
  v55 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v33 = [MEMORY[0x277CBEB38] dictionary];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v4 = v3;
  v32 = [v4 countByEnumeratingWithState:&v40 objects:v54 count:16];
  if (v32)
  {
    v31 = *v41;
    obj = v4;
    v30 = *MEMORY[0x277CD21B8];
    while (2)
    {
      for (i = 0; i != v32; ++i)
      {
        if (*v41 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v40 + 1) + 8 * i);
        v7 = [(HMDAccessCodeDemoDataMocker *)self _controlResponseForReadRequest:v6];
        v39 = 0;
        v8 = [v7 serializeWithError:&v39];
        v9 = v39;
        if (!v8)
        {
          v23 = objc_autoreleasePoolPush();
          v24 = self;
          v25 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            v26 = HMFGetLogIdentifier();
            *buf = 138543618;
            v51 = v26;
            v52 = 2112;
            v53 = v7;
            _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_ERROR, "%{public}@Failed to serialize access code control response: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v23);
          v4 = obj;

          v22 = 0;
          v21 = v33;
          goto LABEL_13;
        }

        v10 = [v6 characteristic];
        v38 = [v10 service];

        v37 = [v38 instanceID];
        v11 = [v38 accessory];
        v12 = [v11 uuid];

        v13 = [v6 characteristic];
        v14 = [v13 instanceID];

        v15 = [v37 stringValue];
        v48 = v15;
        v16 = [v14 stringValue];
        v45 = v8;
        v46 = v16;
        v44 = v30;
        v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
        v47 = v17;
        [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
        v18 = v36 = v9;
        v49 = v18;
        [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
        v19 = v35 = v7;
        v20 = [v12 UUIDString];
        [v33 setObject:v19 forKeyedSubscript:v20];
      }

      v4 = obj;
      v32 = [obj countByEnumeratingWithState:&v40 objects:v54 count:16];
      if (v32)
      {
        continue;
      }

      break;
    }
  }

  v21 = v33;
  v22 = v33;
LABEL_13:

  v27 = *MEMORY[0x277D85DE8];

  return v22;
}

- (id)handleWriteRequests:(id)a3
{
  v56 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v5 = v3;
  v33 = [v5 countByEnumeratingWithState:&v41 objects:v55 count:16];
  if (v33)
  {
    v32 = *v42;
    obj = v5;
    v31 = *MEMORY[0x277CD21B8];
    v34 = v4;
    while (2)
    {
      for (i = 0; i != v33; ++i)
      {
        if (*v42 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v41 + 1) + 8 * i);
        v8 = [(HMDAccessCodeDemoDataMocker *)self _controlResponseForWriteRequest:v7];
        if (!v8)
        {
          goto LABEL_14;
        }

        v9 = v8;
        v40 = 0;
        v10 = [v8 serializeWithError:&v40];
        v11 = v40;
        if (!v10)
        {
          v24 = objc_autoreleasePoolPush();
          v25 = self;
          v26 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            v27 = HMFGetLogIdentifier();
            *buf = 138543618;
            v52 = v27;
            v53 = 2112;
            v54 = v9;
            _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_ERROR, "%{public}@Failed to serialize access code control response: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v24);
LABEL_14:
          v5 = obj;

          v23 = 0;
          v4 = v34;
          goto LABEL_15;
        }

        v12 = [v7 characteristic];
        v39 = [v12 service];

        v38 = [v39 instanceID];
        v13 = [v39 accessory];
        v14 = [v13 uuid];

        v15 = [v7 characteristic];
        v16 = [v15 instanceID];

        v17 = [v38 stringValue];
        v49 = v17;
        v18 = [v16 stringValue];
        v46 = v10;
        v47 = v18;
        v45 = v31;
        v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
        v48 = v19;
        [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
        v20 = v37 = v11;
        v50 = v20;
        v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
        [v14 UUIDString];
        v22 = v36 = v9;
        [v34 setObject:v21 forKeyedSubscript:v22];
      }

      v5 = obj;
      v4 = v34;
      v33 = [obj countByEnumeratingWithState:&v41 objects:v55 count:16];
      if (v33)
      {
        continue;
      }

      break;
    }
  }

  v23 = v4;
LABEL_15:

  v28 = *MEMORY[0x277D85DE8];

  return v23;
}

- (HMDAccessCodeDemoDataMocker)init
{
  v11[3] = *MEMORY[0x277D85DE8];
  v9.receiver = self;
  v9.super_class = HMDAccessCodeDemoDataMocker;
  v2 = [(HMDAccessCodeDemoDataMocker *)&v9 init];
  if (v2)
  {
    v3 = MEMORY[0x277CBEB38];
    v10[0] = &unk_28662A100;
    v10[1] = &unk_28662A118;
    v11[0] = @"1234";
    v11[1] = @"56789";
    v10[2] = &unk_28662A130;
    v11[2] = @"2468";
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:3];
    v5 = [v3 dictionaryWithDictionary:v4];
    accessCodes = v2->_accessCodes;
    v2->_accessCodes = v5;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v2;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t3_160399 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t3_160399, &__block_literal_global_160400);
  }

  v3 = logCategory__hmf_once_v4_160401;

  return v3;
}

uint64_t __42__HMDAccessCodeDemoDataMocker_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v4_160401;
  logCategory__hmf_once_v4_160401 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end