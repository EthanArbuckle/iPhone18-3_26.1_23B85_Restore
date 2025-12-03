@interface HMDMatterAttributeEventBase
+ (id)compareValueOfAttribute:(id)attribute againstValue:(id)value operatorType:(id)type;
+ (id)logCategory;
- (BOOL)_activate:(unint64_t)_activate completionHandler:(id)handler;
- (BOOL)isCompatibleWithEvent:(id)event;
- (HMDMatterAttributeEventBase)initWithCoder:(id)coder;
- (HMDMatterAttributeEventBase)initWithModel:(id)model home:(id)home;
- (HMDMatterPath)matterPath;
- (id)createPayload;
- (id)description;
- (void)__handleAttributesChangedNotification:(id)notification;
- (void)_registerForMessages;
- (void)encodeWithCoder:(id)coder;
- (void)handleAttributesChangedNotification:(id)notification;
@end

@implementation HMDMatterAttributeEventBase

- (BOOL)_activate:(unint64_t)_activate completionHandler:(id)handler
{
  v9.receiver = self;
  v9.super_class = HMDMatterAttributeEventBase;
  handlerCopy = handler;
  v6 = [(HMDEvent *)&v9 _activate:_activate completionHandler:0];
  v7 = _Block_copy(handlerCopy);

  if (v7)
  {
    v7[2](v7, 0);
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  v13.receiver = self;
  v13.super_class = HMDMatterAttributeEventBase;
  coderCopy = coder;
  [(HMDEvent *)&v13 encodeWithCoder:coderCopy];
  v5 = [(HMDMatterAttributeEventBase *)self matterPath:v13.receiver];
  attributeID = [v5 attributeID];
  [coderCopy encodeObject:attributeID forKey:*MEMORY[0x277CCF2D0]];

  matterPath = [(HMDMatterAttributeEventBase *)self matterPath];
  clusterID = [matterPath clusterID];
  [coderCopy encodeObject:clusterID forKey:*MEMORY[0x277CCFC00]];

  matterPath2 = [(HMDMatterAttributeEventBase *)self matterPath];
  endpointID = [matterPath2 endpointID];
  [coderCopy encodeObject:endpointID forKey:*MEMORY[0x277CCFD08]];

  matterPath3 = [(HMDMatterAttributeEventBase *)self matterPath];
  accessory = [matterPath3 accessory];
  [coderCopy encodeObject:accessory forKey:@"accessory"];
}

- (HMDMatterAttributeEventBase)initWithCoder:(id)coder
{
  coderCopy = coder;
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
  createPayload = [(HMDEvent *)&v17 createPayload];
  v5 = [v3 dictionaryWithDictionary:createPayload];

  matterPath = [(HMDMatterAttributeEventBase *)self matterPath];
  accessory = [matterPath accessory];
  uuid = [accessory uuid];
  [v5 setObject:uuid forKeyedSubscript:*MEMORY[0x277CCF0B0]];

  matterPath2 = [(HMDMatterAttributeEventBase *)self matterPath];
  attributeID = [matterPath2 attributeID];
  [v5 setObject:attributeID forKeyedSubscript:*MEMORY[0x277CCF2D8]];

  matterPath3 = [(HMDMatterAttributeEventBase *)self matterPath];
  clusterID = [matterPath3 clusterID];
  [v5 setObject:clusterID forKeyedSubscript:*MEMORY[0x277CCFC08]];

  matterPath4 = [(HMDMatterAttributeEventBase *)self matterPath];
  endpointID = [matterPath4 endpointID];
  [v5 setObject:endpointID forKeyedSubscript:*MEMORY[0x277CCFD10]];

  v15 = [v5 copy];

  return v15;
}

- (void)handleAttributesChangedNotification:(id)notification
{
  notificationCopy = notification;
  workQueue = [(HMDEvent *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__HMDMatterAttributeEventBase_handleAttributesChangedNotification___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = notificationCopy;
  v6 = notificationCopy;
  dispatch_async(workQueue, v7);
}

void __67__HMDMatterAttributeEventBase_handleAttributesChangedNotification___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) userInfo];
  [v1 __handleAttributesChangedNotification:v2];
}

- (void)__handleAttributesChangedNotification:(id)notification
{
  v42 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  v5 = [notificationCopy hmf_numberForKey:@"HMDMatterAttributeChangedNotificationEndpointIDKey"];
  v6 = [notificationCopy hmf_numberForKey:@"HMDMatterAttributeChangedNotificationClusterIDKey"];
  v7 = [notificationCopy hmf_numberForKey:@"HMDMatterAttributeChangedNotificationAttributeIDKey"];
  v8 = v7;
  if (v5 && v6 && v7)
  {
    matterPath = [(HMDMatterAttributeEventBase *)self matterPath];
    matterPath2 = [(HMDMatterAttributeEventBase *)self matterPath];
    accessory = [matterPath2 accessory];
    v12 = [HMDMatterPath PathWithAttributeID:v8 endpointID:v5 clusterID:v6 accessory:accessory];
    v13 = [matterPath isEqual:v12];

    if (v13)
    {
      v14 = objc_autoreleasePoolPush();
      selfCopy = self;
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = HMFGetLogIdentifier();
        matterPath3 = [(HMDMatterAttributeEventBase *)selfCopy matterPath];
        v34 = 138543618;
        v35 = v17;
        v36 = 2112;
        v37 = matterPath3;
        _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Received notification that attributes changed state, evaluating if trigger needs to be executed, %@", &v34, 0x16u);
      }

      objc_autoreleasePoolPop(v14);
      if ([(HMDMatterAttributeEventBase *)selfCopy _evaluateNewValue:notificationCopy])
      {
        isActive = [(HMDMatterAttributeEventBase *)selfCopy isActive];
        v20 = objc_autoreleasePoolPush();
        v21 = selfCopy;
        v22 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          v23 = HMFGetLogIdentifier();
          v24 = v23;
          v25 = "Not firing";
          if (isActive)
          {
            v25 = "Firing";
          }

          v26 = "is not";
          v34 = 138543874;
          v35 = v23;
          v37 = v25;
          v36 = 2080;
          if (isActive)
          {
            v26 = "is";
          }

          v38 = 2080;
          v39 = v26;
          _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@%s event because it %s active", &v34, 0x20u);
        }

        objc_autoreleasePoolPop(v20);
        if (isActive)
        {
          delegate = [(HMDEvent *)v21 delegate];
          v28 = [delegate didOccurEvent:v21 causingDevice:0];
        }
      }
    }
  }

  else
  {
    v29 = objc_autoreleasePoolPush();
    selfCopy2 = self;
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
  matterPath = [(HMDMatterAttributeEventBase *)self matterPath];
  accessory = [matterPath accessory];

  if (accessory)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:self selector:sel_handleAttributesChangedNotification_ name:@"HMDMatterAttributeChangedNotification" object:accessory];
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      matterPath2 = [(HMDMatterAttributeEventBase *)selfCopy matterPath];
      *buf = 138543618;
      v14 = v9;
      v15 = 2112;
      v16 = matterPath2;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@Unable to find accessory on matter path %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (HMDMatterPath)matterPath
{
  home = [(HMDEvent *)self home];
  matterPathUUID = [(HMDMatterAttributeEventBase *)self matterPathUUID];
  v5 = [home matterPathWithUUID:matterPathUUID];

  return v5;
}

- (BOOL)isCompatibleWithEvent:(id)event
{
  eventCopy = event;
  v9.receiver = self;
  v9.super_class = HMDMatterAttributeEventBase;
  if ([(HMDEvent *)&v9 isCompatibleWithEvent:eventCopy])
  {
    matterPath = [(HMDMatterAttributeEventBase *)self matterPath];
    matterPath2 = [eventCopy matterPath];
    v7 = [matterPath isEqual:matterPath2];
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
  matterPath = [(HMDMatterAttributeEventBase *)self matterPath];
  v6 = [v3 stringWithFormat:@"%@, %@", v4, matterPath];

  return v6;
}

- (HMDMatterAttributeEventBase)initWithModel:(id)model home:(id)home
{
  modelCopy = model;
  v11.receiver = self;
  v11.super_class = HMDMatterAttributeEventBase;
  v7 = [(HMDEvent *)&v11 initWithModel:modelCopy home:home];
  if (v7)
  {
    matterPathUUID = [modelCopy matterPathUUID];
    matterPathUUID = v7->_matterPathUUID;
    v7->_matterPathUUID = matterPathUUID;
  }

  return v7;
}

+ (id)compareValueOfAttribute:(id)attribute againstValue:(id)value operatorType:(id)type
{
  valueCopy = value;
  attributeCopy = attribute;
  unsignedIntegerValue = [type unsignedIntegerValue];
  v10 = MEMORY[0x277CCABB0];
  v11 = compareCharacteristicValue(attributeCopy, valueCopy, unsignedIntegerValue, &unk_283E753C8);

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