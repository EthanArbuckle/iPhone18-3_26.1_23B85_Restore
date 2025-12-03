@interface HMDCharacteristicWriteRequest
+ (id)logCategory;
+ (id)writeRequestForTransitionFetchWithLightProfile:(id)profile;
- (HMDCharacteristicWriteRequest)initWithCharacteristic:(id)characteristic value:(id)value authorizationData:(id)data identifier:(id)identifier type:(unint64_t)type includeResponseValue:(BOOL)responseValue contextData:(id)contextData;
- (id)attributeDescriptions;
@end

@implementation HMDCharacteristicWriteRequest

+ (id)writeRequestForTransitionFetchWithLightProfile:(id)profile
{
  v44 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  service = [profileCopy service];
  v6 = *MEMORY[0x277CCF7D8];
  v7 = [service findCharacteristicWithType:*MEMORY[0x277CCF7D8]];
  if (v7)
  {
    v8 = [service findCharacteristicWithType:@"00000143-0000-1000-8000-0026BB765291"];
    if (v8)
    {
      v9 = objc_alloc(MEMORY[0x277CFEAD8]);
      v10 = objc_alloc(MEMORY[0x277CFEC98]);
      instanceID = [v7 instanceID];
      v12 = [v10 initWithValue:instanceID];
      v13 = [v9 initWithHAPInstanceID:v12];

      v14 = [objc_alloc(MEMORY[0x277CFEAB8]) initWithTransitionFetch:v13 transitionStart:0];
      v37 = 0;
      v15 = [v14 serializeWithError:&v37];
      v16 = v37;
      context = objc_autoreleasePoolPush();
      selfCopy = self;
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
      selfCopy2 = self;
      v29 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v30 = HMFGetLogIdentifier();
        *buf = 138543874;
        v39 = v30;
        v40 = 2112;
        v41 = service;
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
    selfCopy3 = self;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = HMFGetLogIdentifier();
      *buf = 138543874;
      v39 = v26;
      v40 = 2112;
      v41 = service;
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
  attributeDescriptions = [(HMDCharacteristicRequest *)&v17 attributeDescriptions];
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  value = [(HMDCharacteristicWriteRequest *)self value];
  v6 = [v4 initWithName:@"Value" value:value];
  v18[0] = v6;
  v7 = objc_alloc(MEMORY[0x277D0F778]);
  value2 = [(HMDCharacteristicWriteRequest *)self value];
  v9 = [v7 initWithName:@"Type" value:objc_opt_class()];
  v18[1] = v9;
  v10 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDCharacteristicWriteRequest *)self includeResponseValue];
  v11 = HMFBooleanToString();
  v12 = [v10 initWithName:@"Include response value" value:v11];
  v18[2] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:3];
  v14 = [attributeDescriptions arrayByAddingObjectsFromArray:v13];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (HMDCharacteristicWriteRequest)initWithCharacteristic:(id)characteristic value:(id)value authorizationData:(id)data identifier:(id)identifier type:(unint64_t)type includeResponseValue:(BOOL)responseValue contextData:(id)contextData
{
  valueCopy = value;
  dataCopy = data;
  identifierCopy = identifier;
  contextDataCopy = contextData;
  v23.receiver = self;
  v23.super_class = HMDCharacteristicWriteRequest;
  v18 = [(HMDCharacteristicRequest *)&v23 initWithCharacteristic:characteristic];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_value, value);
    objc_storeStrong(&v19->_authorizationData, data);
    objc_storeStrong(&v19->_identifier, identifier);
    v19->_requestType = type;
    v19->_includeResponseValue = responseValue;
    objc_storeStrong(&v19->_contextData, contextData);
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