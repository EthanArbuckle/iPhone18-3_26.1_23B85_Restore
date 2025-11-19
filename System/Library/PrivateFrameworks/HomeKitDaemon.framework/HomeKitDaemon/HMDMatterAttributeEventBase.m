@interface HMDMatterAttributeEventBase
+ (id)compareValueOfAttribute:(id)a3 againstValue:(id)a4 operatorType:(id)a5;
+ (id)logCategory;
- (BOOL)_activate:(unint64_t)a3 completionHandler:(id)a4;
- (BOOL)isCompatibleWithEvent:(id)a3;
- (HMDMatterAttributeEventBase)initWithCoder:(id)a3;
- (HMDMatterAttributeEventBase)initWithModel:(id)a3 home:(id)a4;
- (HMDMatterPath)matterPath;
- (id)createPayload;
- (id)description;
- (void)__handleAttributesChangedNotification:(id)a3;
- (void)_registerForMessages;
- (void)encodeWithCoder:(id)a3;
- (void)handleAttributesChangedNotification:(id)a3;
@end

@implementation HMDMatterAttributeEventBase

- (BOOL)_activate:(unint64_t)a3 completionHandler:(id)a4
{
  v9.receiver = self;
  v9.super_class = HMDMatterAttributeEventBase;
  v5 = a4;
  v6 = [(HMDEvent *)&v9 _activate:a3 completionHandler:0];
  v7 = _Block_copy(v5);

  if (v7)
  {
    v7[2](v7, 0);
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v13.receiver = self;
  v13.super_class = HMDMatterAttributeEventBase;
  v4 = a3;
  [(HMDEvent *)&v13 encodeWithCoder:v4];
  v5 = [(HMDMatterAttributeEventBase *)self matterPath:v13.receiver];
  v6 = [v5 attributeID];
  [v4 encodeObject:v6 forKey:*MEMORY[0x277CCF2D0]];

  v7 = [(HMDMatterAttributeEventBase *)self matterPath];
  v8 = [v7 clusterID];
  [v4 encodeObject:v8 forKey:*MEMORY[0x277CCFC00]];

  v9 = [(HMDMatterAttributeEventBase *)self matterPath];
  v10 = [v9 endpointID];
  [v4 encodeObject:v10 forKey:*MEMORY[0x277CCFD08]];

  v11 = [(HMDMatterAttributeEventBase *)self matterPath];
  v12 = [v11 accessory];
  [v4 encodeObject:v12 forKey:@"accessory"];
}

- (HMDMatterAttributeEventBase)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = MEMORY[0x277CCACA8];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"%@ is unavailable", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (id)createPayload
{
  v3 = MEMORY[0x277CBEB38];
  v17.receiver = self;
  v17.super_class = HMDMatterAttributeEventBase;
  v4 = [(HMDEvent *)&v17 createPayload];
  v5 = [v3 dictionaryWithDictionary:v4];

  v6 = [(HMDMatterAttributeEventBase *)self matterPath];
  v7 = [v6 accessory];
  v8 = [v7 uuid];
  [v5 setObject:v8 forKeyedSubscript:*MEMORY[0x277CCF0B0]];

  v9 = [(HMDMatterAttributeEventBase *)self matterPath];
  v10 = [v9 attributeID];
  [v5 setObject:v10 forKeyedSubscript:*MEMORY[0x277CCF2D8]];

  v11 = [(HMDMatterAttributeEventBase *)self matterPath];
  v12 = [v11 clusterID];
  [v5 setObject:v12 forKeyedSubscript:*MEMORY[0x277CCFC08]];

  v13 = [(HMDMatterAttributeEventBase *)self matterPath];
  v14 = [v13 endpointID];
  [v5 setObject:v14 forKeyedSubscript:*MEMORY[0x277CCFD10]];

  v15 = [v5 copy];

  return v15;
}

- (void)handleAttributesChangedNotification:(id)a3
{
  v4 = a3;
  v5 = [(HMDEvent *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__HMDMatterAttributeEventBase_handleAttributesChangedNotification___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __67__HMDMatterAttributeEventBase_handleAttributesChangedNotification___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) userInfo];
  [v1 __handleAttributesChangedNotification:v2];
}

- (void)__handleAttributesChangedNotification:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 hmf_numberForKey:@"HMDMatterAttributeChangedNotificationEndpointIDKey"];
  v6 = [v4 hmf_numberForKey:@"HMDMatterAttributeChangedNotificationClusterIDKey"];
  v7 = [v4 hmf_numberForKey:@"HMDMatterAttributeChangedNotificationAttributeIDKey"];
  v8 = v7;
  if (v5 && v6 && v7)
  {
    v9 = [(HMDMatterAttributeEventBase *)self matterPath];
    v10 = [(HMDMatterAttributeEventBase *)self matterPath];
    v11 = [v10 accessory];
    v12 = [HMDMatterPath PathWithAttributeID:v8 endpointID:v5 clusterID:v6 accessory:v11];
    v13 = [v9 isEqual:v12];

    if (v13)
    {
      v14 = objc_autoreleasePoolPush();
      v15 = self;
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = HMFGetLogIdentifier();
        v18 = [(HMDMatterAttributeEventBase *)v15 matterPath];
        v34 = 138543618;
        v35 = v17;
        v36 = 2112;
        v37 = v18;
        _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Received notification that attributes changed state, evaluating if trigger needs to be executed, %@", &v34, 0x16u);
      }

      objc_autoreleasePoolPop(v14);
      if ([(HMDMatterAttributeEventBase *)v15 _evaluateNewValue:v4])
      {
        v19 = [(HMDMatterAttributeEventBase *)v15 isActive];
        v20 = objc_autoreleasePoolPush();
        v21 = v15;
        v22 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          v23 = HMFGetLogIdentifier();
          v24 = v23;
          v25 = "Not firing";
          if (v19)
          {
            v25 = "Firing";
          }

          v26 = "is not";
          v34 = 138543874;
          v35 = v23;
          v37 = v25;
          v36 = 2080;
          if (v19)
          {
            v26 = "is";
          }

          v38 = 2080;
          v39 = v26;
          _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@%s event because it %s active", &v34, 0x20u);
        }

        objc_autoreleasePoolPop(v20);
        if (v19)
        {
          v27 = [(HMDEvent *)v21 delegate];
          v28 = [v27 didOccurEvent:v21 causingDevice:0];
        }
      }
    }
  }

  else
  {
    v29 = objc_autoreleasePoolPush();
    v30 = self;
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      v32 = HMFGetLogIdentifier();
      v34 = 138544130;
      v35 = v32;
      v36 = 2112;
      v37 = v5;
      v38 = 2112;
      v39 = v6;
      v40 = 2112;
      v41 = v8;
      _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_INFO, "%{public}@Attribute changed notification did not have endpointID/clusterID/attributeID %@/%@/%@", &v34, 0x2Au);
    }

    objc_autoreleasePoolPop(v29);
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (void)_registerForMessages
{
  v17 = *MEMORY[0x277D85DE8];
  v12.receiver = self;
  v12.super_class = HMDMatterAttributeEventBase;
  [(HMDEvent *)&v12 _registerForMessages];
  v3 = [(HMDMatterAttributeEventBase *)self matterPath];
  v4 = [v3 accessory];

  if (v4)
  {
    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    [v5 addObserver:self selector:sel_handleAttributesChangedNotification_ name:@"HMDMatterAttributeChangedNotification" object:v4];
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v10 = [(HMDMatterAttributeEventBase *)v7 matterPath];
      *buf = 138543618;
      v14 = v9;
      v15 = 2112;
      v16 = v10;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@Unable to find accessory on matter path %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (HMDMatterPath)matterPath
{
  v3 = [(HMDEvent *)self home];
  v4 = [(HMDMatterAttributeEventBase *)self matterPathUUID];
  v5 = [v3 matterPathWithUUID:v4];

  return v5;
}

- (BOOL)isCompatibleWithEvent:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HMDMatterAttributeEventBase;
  if ([(HMDEvent *)&v9 isCompatibleWithEvent:v4])
  {
    v5 = [(HMDMatterAttributeEventBase *)self matterPath];
    v6 = [v4 matterPath];
    v7 = [v5 isEqual:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HMDMatterAttributeEventBase;
  v4 = [(HMDEvent *)&v8 description];
  v5 = [(HMDMatterAttributeEventBase *)self matterPath];
  v6 = [v3 stringWithFormat:@"%@, %@", v4, v5];

  return v6;
}

- (HMDMatterAttributeEventBase)initWithModel:(id)a3 home:(id)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = HMDMatterAttributeEventBase;
  v7 = [(HMDEvent *)&v11 initWithModel:v6 home:a4];
  if (v7)
  {
    v8 = [v6 matterPathUUID];
    matterPathUUID = v7->_matterPathUUID;
    v7->_matterPathUUID = v8;
  }

  return v7;
}

+ (id)compareValueOfAttribute:(id)a3 againstValue:(id)a4 operatorType:(id)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [a5 unsignedIntegerValue];
  v10 = MEMORY[0x277CCABB0];
  v11 = compareCharacteristicValue(v8, v7, v9, &unk_283E753C8);

  return [v10 numberWithBool:v11];
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_279123 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_279123, &__block_literal_global_279124);
  }

  v3 = logCategory__hmf_once_v1_279125;

  return v3;
}

void __42__HMDMatterAttributeEventBase_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_279125;
  logCategory__hmf_once_v1_279125 = v1;
}

@end