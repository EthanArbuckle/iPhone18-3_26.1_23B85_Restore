@interface HMDCharacteristicWriteRequest
+ (id)logCategory;
+ (id)writeRequestForTransitionFetchWithLightProfile:(id)a3;
- (HMDCharacteristicWriteRequest)initWithCharacteristic:(id)a3 value:(id)a4 authorizationData:(id)a5 identifier:(id)a6 type:(unint64_t)a7 includeResponseValue:(BOOL)a8 contextData:(id)a9;
- (id)attributeDescriptions;
@end

@implementation HMDCharacteristicWriteRequest

+ (id)writeRequestForTransitionFetchWithLightProfile:(id)a3
{
  v44 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 service];
  v6 = *MEMORY[0x277CCF7D8];
  v7 = [v5 findCharacteristicWithType:*MEMORY[0x277CCF7D8]];
  if (v7)
  {
    v8 = [v5 findCharacteristicWithType:@"00000143-0000-1000-8000-0026BB765291"];
    if (v8)
    {
      v9 = objc_alloc(MEMORY[0x277CFEAD8]);
      v10 = objc_alloc(MEMORY[0x277CFEC98]);
      v11 = [v7 instanceID];
      v12 = [v10 initWithValue:v11];
      v13 = [v9 initWithHAPInstanceID:v12];

      v14 = [objc_alloc(MEMORY[0x277CFEAB8]) initWithTransitionFetch:v13 transitionStart:0];
      v37 = 0;
      v15 = [v14 serializeWithError:&v37];
      v16 = v37;
      context = objc_autoreleasePoolPush();
      v17 = a1;
      v18 = HMFGetOSLogHandle();
      v19 = v18;
      if (v15)
      {
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          HMFGetLogIdentifier();
          v20 = v34 = v13;
          [v15 hmf_hexadecimalRepresentation];
          v21 = v33 = v16;
          *buf = 138543618;
          v39 = v20;
          v40 = 2112;
          v41 = v21;
          _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_DEBUG, "%{public}@Writing value to transition control characteristic: %@", buf, 0x16u);

          v16 = v33;
          v13 = v34;
        }

        objc_autoreleasePoolPop(context);
        v22 = [HMDCharacteristicWriteRequest writeRequestWithCharacteristic:v8 value:v15 authorizationData:0 identifier:0 type:0 includeResponseValue:1];
      }

      else
      {
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v35 = HMFGetLogIdentifier();
          *buf = 138543874;
          v39 = v35;
          v40 = 2112;
          v41 = v14;
          v42 = 2112;
          v43 = v16;
          _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_ERROR, "%{public}@Failed to serialize transition control write request %@:%@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(context);
        v22 = 0;
      }
    }

    else
    {
      v27 = objc_autoreleasePoolPush();
      v28 = a1;
      v29 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v30 = HMFGetLogIdentifier();
        *buf = 138543874;
        v39 = v30;
        v40 = 2112;
        v41 = v5;
        v42 = 2112;
        v43 = @"00000143-0000-1000-8000-0026BB765291";
        _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_ERROR, "%{public}@Service doesn't support Value Transition Control Characteristic %@:%@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v27);
      v22 = 0;
    }
  }

  else
  {
    v23 = objc_autoreleasePoolPush();
    v24 = a1;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = HMFGetLogIdentifier();
      *buf = 138543874;
      v39 = v26;
      v40 = 2112;
      v41 = v5;
      v42 = 2112;
      v43 = v6;
      _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_ERROR, "%{public}@Service doesn't support Color Temperature Characteristic %@:%@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v23);
    v22 = 0;
  }

  v31 = *MEMORY[0x277D85DE8];

  return v22;
}

- (id)attributeDescriptions
{
  v18[3] = *MEMORY[0x277D85DE8];
  v17.receiver = self;
  v17.super_class = HMDCharacteristicWriteRequest;
  v3 = [(HMDCharacteristicRequest *)&v17 attributeDescriptions];
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  v5 = [(HMDCharacteristicWriteRequest *)self value];
  v6 = [v4 initWithName:@"Value" value:v5];
  v18[0] = v6;
  v7 = objc_alloc(MEMORY[0x277D0F778]);
  v8 = [(HMDCharacteristicWriteRequest *)self value];
  v9 = [v7 initWithName:@"Type" value:objc_opt_class()];
  v18[1] = v9;
  v10 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDCharacteristicWriteRequest *)self includeResponseValue];
  v11 = HMFBooleanToString();
  v12 = [v10 initWithName:@"Include response value" value:v11];
  v18[2] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:3];
  v14 = [v3 arrayByAddingObjectsFromArray:v13];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (HMDCharacteristicWriteRequest)initWithCharacteristic:(id)a3 value:(id)a4 authorizationData:(id)a5 identifier:(id)a6 type:(unint64_t)a7 includeResponseValue:(BOOL)a8 contextData:(id)a9
{
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a9;
  v23.receiver = self;
  v23.super_class = HMDCharacteristicWriteRequest;
  v18 = [(HMDCharacteristicRequest *)&v23 initWithCharacteristic:a3];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_value, a4);
    objc_storeStrong(&v19->_authorizationData, a5);
    objc_storeStrong(&v19->_identifier, a6);
    v19->_requestType = a7;
    v19->_includeResponseValue = a8;
    objc_storeStrong(&v19->_contextData, a9);
  }

  return v19;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t3_191940 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t3_191940, &__block_literal_global_110_191941);
  }

  v3 = logCategory__hmf_once_v4_191942;

  return v3;
}

uint64_t __44__HMDCharacteristicWriteRequest_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v4_191942;
  logCategory__hmf_once_v4_191942 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end