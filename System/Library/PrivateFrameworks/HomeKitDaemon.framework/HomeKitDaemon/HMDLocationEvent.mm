@interface HMDLocationEvent
+ (id)logCategory;
- (BOOL)_activate:(unint64_t)_activate completionHandler:(id)handler;
- (BOOL)doesThisTargetCurrentUser;
- (BOOL)isCompatibleWithEvent:(id)event;
- (CLRegion)uniqueRegion;
- (HMDLocationEvent)initWithCoder:(id)coder;
- (HMDLocationEvent)initWithModel:(id)model home:(id)home;
- (NSString)description;
- (id)analyticsTriggerEventData;
- (id)createPayload;
- (id)dumpStateWithPrivacyLevel:(unint64_t)level;
- (id)emptyModelObject;
- (id)modelObjectWithChangeType:(unint64_t)type;
- (void)_handleLocationEventOccurred:(id)occurred;
- (void)_handleRetrieveLocationEventForEventTrigger:(id)trigger;
- (void)_handleUpdateRequest:(id)request;
- (void)_registerForMessages;
- (void)_transactionObjectUpdated:(id)updated newValues:(id)values message:(id)message;
- (void)checkFMFStatus:(id)status;
- (void)didEnterRegion:(id)region;
- (void)didExitRegion:(id)region;
- (void)encodeWithCoder:(id)coder;
- (void)fmfStatusUpdateNotification:(id)notification;
- (void)informLocationEventOccurrenceToResident;
- (void)locationEventOccurred;
@end

@implementation HMDLocationEvent

- (id)analyticsTriggerEventData
{
  v3 = objc_alloc_init(HMDAnalyticsTriggerEventData);
  [(HMDAnalyticsTriggerEventData *)v3 setEndEvent:[(HMDEvent *)self isEndEvent]];
  v4 = objc_alloc_init(HMDAnalyticsLocationEventData);
  region = [(HMDLocationEvent *)self region];
  -[HMDAnalyticsLocationEventData setNotifyOnEntry:](v4, "setNotifyOnEntry:", [region notifyOnEntry]);

  region2 = [(HMDLocationEvent *)self region];
  -[HMDAnalyticsLocationEventData setNotifyOnExit:](v4, "setNotifyOnExit:", [region2 notifyOnExit]);

  [(HMDAnalyticsTriggerEventData *)v3 setLocationEvent:v4];

  return v3;
}

- (void)didExitRegion:(id)region
{
  regionCopy = region;
  workQueue = [(HMDEvent *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __34__HMDLocationEvent_didExitRegion___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = regionCopy;
  v6 = regionCopy;
  dispatch_async(workQueue, v7);
}

uint64_t __34__HMDLocationEvent_didExitRegion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v9 = 138543618;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Received a exit callback from HMDLocation for the region callback: [%@]", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 32) locationEventOccurred];
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)didEnterRegion:(id)region
{
  regionCopy = region;
  workQueue = [(HMDEvent *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __35__HMDLocationEvent_didEnterRegion___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = regionCopy;
  v6 = regionCopy;
  dispatch_async(workQueue, v7);
}

uint64_t __35__HMDLocationEvent_didEnterRegion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v9 = 138543618;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Received a enter callback from HMDLocation for the region callback : [%@]", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 32) locationEventOccurred];
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)informLocationEventOccurrenceToResident
{
  v27 = *MEMORY[0x277D85DE8];
  eventTrigger = [(HMDEvent *)self eventTrigger];
  home = [eventTrigger home];

  homeManager = [home homeManager];
  messageDispatcher = [homeManager messageDispatcher];

  v7 = [HMDRemoteHomeMessageDestination alloc];
  uuid = [(HMDEvent *)self uuid];
  uuid2 = [home uuid];
  v10 = [(HMDRemoteHomeMessageDestination *)v7 initWithTarget:uuid homeUUID:uuid2];

  v11 = [HMDRemoteMessage secureMessageWithName:*MEMORY[0x277CD23F8] qualityOfService:17 destination:v10 messagePayload:MEMORY[0x277CBEC10]];
  identifier = [v11 identifier];
  objc_initWeak(&location, self);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __59__HMDLocationEvent_informLocationEventOccurrenceToResident__block_invoke;
  v19[3] = &unk_278687F40;
  objc_copyWeak(&v21, &location);
  v13 = identifier;
  v20 = v13;
  [v11 setResponseHandler:v19];
  v14 = objc_autoreleasePoolPush();
  selfCopy = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    *buf = 138543618;
    v24 = v17;
    v25 = 2114;
    v26 = v13;
    _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Sending message with identifier %{public}@ to inform location event to resident", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v14);
  [messageDispatcher sendMessage:v11 completionHandler:0];

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);

  v18 = *MEMORY[0x277D85DE8];
}

void __59__HMDLocationEvent_informLocationEventOccurrenceToResident__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = objc_autoreleasePoolPush();
  v9 = WeakRetained;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = *(a1 + 32);
    v14 = 138543618;
    v15 = v11;
    v16 = 2112;
    v17 = v12;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Message with identifier %@ to inform location event has been sent", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v13 = *MEMORY[0x277D85DE8];
}

- (void)_handleLocationEventOccurred:(id)occurred
{
  v22 = *MEMORY[0x277D85DE8];
  occurredCopy = occurred;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = HMDEventTriggerActivationTypeAsString([(HMDEvent *)selfCopy activationType]);
    v18 = 138543618;
    v19 = v8;
    v20 = 2112;
    v21 = v9;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Received remote message that location event has occurred, with current activation type %@", &v18, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  if ([(HMDEvent *)selfCopy activationType]== 2)
  {
    v10 = [HMDEventTriggerDevice alloc];
    remoteSourceDevice = [occurredCopy remoteSourceDevice];
    eventTrigger = [(HMDEvent *)selfCopy eventTrigger];
    home = [eventTrigger home];
    v14 = [(HMDEventTriggerDevice *)v10 initWithDevice:remoteSourceDevice forHome:home];

    delegate = [(HMDEvent *)selfCopy delegate];
    v16 = [delegate didOccurEvent:selfCopy causingDevice:v14];
  }

  [occurredCopy respondWithPayload:0];

  v17 = *MEMORY[0x277D85DE8];
}

- (void)locationEventOccurred
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v7 = HMDEventTriggerActivationTypeAsString([(HMDEvent *)selfCopy activationType]);
    v22 = 138543618;
    v23 = v6;
    v24 = 2112;
    v25 = v7;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Received a callback that location event has occurred, current activation state: %@", &v22, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  v8 = +[HMDLostModeManager sharedManager];
  isLost = [v8 isLost];

  if (isLost)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = selfCopy;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v22 = 138543362;
      v23 = v13;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Device Lost. Not informing that location event has occurred", &v22, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
  }

  else
  {
    activationType = [(HMDEvent *)selfCopy activationType];
    if (activationType == 3)
    {
      v15 = [HMDEventTriggerDevice alloc];
      eventTrigger = [(HMDEvent *)selfCopy eventTrigger];
      home = [eventTrigger home];
      v18 = [(HMDEventTriggerDevice *)v15 initWithCurrentDeviceForHome:home];

      delegate = [(HMDEvent *)selfCopy delegate];
      v20 = [delegate didOccurEvent:selfCopy causingDevice:v18];
    }

    else if (activationType == 1)
    {
      [(HMDLocationEvent *)selfCopy informLocationEventOccurrenceToResident];
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (BOOL)_activate:(unint64_t)_activate completionHandler:(id)handler
{
  v17[1] = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v16.receiver = self;
  v16.super_class = HMDLocationEvent;
  v7 = [(HMDEvent *)&v16 _activate:_activate completionHandler:0];
  uniqueRegion = [(HMDLocationEvent *)self uniqueRegion];
  v9 = uniqueRegion;
  if (uniqueRegion)
  {
    v17[0] = uniqueRegion;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  }

  else
  {
    v10 = MEMORY[0x277CBEBF8];
  }

  isActive = [(HMDLocationEvent *)self isActive];
  v12 = +[HMDLocation sharedManager];
  v13 = v12;
  if (isActive)
  {
    [v12 registerForRegionUpdate:v10 withDelegate:self completionHandler:handlerCopy];
  }

  else
  {
    [v12 deregisterForRegionUpdate:v10 completionHandler:handlerCopy];
  }

  v14 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)_transactionObjectUpdated:(id)updated newValues:(id)values message:(id)message
{
  v49 = *MEMORY[0x277D85DE8];
  updatedCopy = updated;
  valuesCopy = values;
  messageCopy = message;
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v14 = HMFGetLogIdentifier();
    *buf = 138543362;
    v44 = v14;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Handling transaction updated", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v11);
  v15 = valuesCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  if (v17)
  {
    eventTrigger = [(HMDEvent *)selfCopy eventTrigger];
    name = [messageCopy name];
    v20 = [name isEqualToString:@"kMigratedEventsToRecordsRequest"];

    if (v20)
    {
      [eventTrigger processEventRecords:v17 message:messageCopy];
    }

    else
    {
      if ([v17 propertyWasSet:@"region"])
      {
        v21 = MEMORY[0x277CCAAC8];
        v22 = objc_opt_class();
        region = [v17 region];
        v42 = 0;
        v24 = [v21 unarchivedObjectOfClass:v22 fromData:region error:&v42];
        v25 = v42;

        if (!v24)
        {
          v34 = objc_autoreleasePoolPush();
          v35 = selfCopy;
          v36 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            v37 = HMFGetLogIdentifier();
            *buf = 138543618;
            v44 = v37;
            v45 = 2112;
            v46 = v25;
            _os_log_impl(&dword_229538000, v36, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive region from event model: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v34);
          [messageCopy respondWithError:v25];

          goto LABEL_17;
        }

        region2 = [(HMDLocationEvent *)selfCopy region];
        v27 = [region2 isEqual:v24];

        if ((v27 & 1) == 0)
        {
          v28 = objc_autoreleasePoolPush();
          v29 = selfCopy;
          v30 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
          {
            v41 = HMFGetLogIdentifier();
            region3 = [(HMDLocationEvent *)v29 region];
            regionAsString(region3);
            v31 = v39 = v25;
            regionAsString(v24);
            v32 = v40 = v28;
            *buf = 138543874;
            v44 = v41;
            v45 = 2112;
            v46 = v31;
            v47 = 2112;
            v48 = v32;
            _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_INFO, "%{public}@Updating region %@ to new region %@", buf, 0x20u);

            v28 = v40;
            v25 = v39;
          }

          objc_autoreleasePoolPop(v28);
          [(HMDLocationEvent *)v29 setRegion:v24];
          [eventTrigger markChangedForMessage:messageCopy];
        }
      }

      [messageCopy respondWithSuccess];
    }

LABEL_17:
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (id)modelObjectWithChangeType:(unint64_t)type
{
  v5 = [HMDLocationEventModel alloc];
  uuid = [(HMDEvent *)self uuid];
  eventTrigger = [(HMDEvent *)self eventTrigger];
  uuid2 = [eventTrigger uuid];
  v9 = [(HMDBackingStoreModelObject *)v5 initWithObjectChangeType:type uuid:uuid parentUUID:uuid2];

  v10 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDEvent isEndEvent](self, "isEndEvent")}];
  [(HMDLocationEventModel *)v9 setEndEvent:v10];

  region = [(HMDLocationEvent *)self region];
  v12 = encodeRootObject();
  [(HMDLocationEventModel *)v9 setRegion:v12];

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6.receiver = self;
  v6.super_class = HMDLocationEvent;
  [(HMDEvent *)&v6 encodeWithCoder:coderCopy];
  if ([coderCopy hmd_isForXPCTransport] && (objc_msgSend(coderCopy, "hmd_isForXPCTransportAuthorizedForLocationAccess") & 1) != 0 || (objc_msgSend(coderCopy, "hmd_isForLocalStore") & 1) != 0 || objc_msgSend(coderCopy, "hmd_isForRemoteTransport") && !objc_msgSend(coderCopy, "hmd_isForRemoteTransportOnSameAccount") || objc_msgSend(coderCopy, "hmd_isForRemoteTransportOnSameAccount") && (objc_msgSend(coderCopy, "hmd_isForRemoteGatewayCoder") & 1) == 0)
  {
    region = [(HMDLocationEvent *)self region];
    [coderCopy encodeObject:region forKey:@"HM.locationEventRegion"];
  }
}

- (HMDLocationEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = HMDLocationEvent;
  v5 = [(HMDEvent *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.locationEventRegion"];
    region = v5->_region;
    v5->_region = v6;
  }

  return v5;
}

- (BOOL)isCompatibleWithEvent:(id)event
{
  v4.receiver = self;
  v4.super_class = HMDLocationEvent;
  return [(HMDEvent *)&v4 isCompatibleWithEvent:event];
}

- (id)createPayload
{
  v3 = MEMORY[0x277CBEB38];
  v10.receiver = self;
  v10.super_class = HMDLocationEvent;
  createPayload = [(HMDEvent *)&v10 createPayload];
  v5 = [v3 dictionaryWithDictionary:createPayload];

  region = [(HMDLocationEvent *)self region];
  v7 = encodeRootObject();
  [v5 setObject:v7 forKeyedSubscript:*MEMORY[0x277CD2400]];

  v8 = [v5 copy];

  return v8;
}

- (CLRegion)uniqueRegion
{
  v53 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    region = [(HMDLocationEvent *)selfCopy region];
    *buf = 138543618;
    v48 = v6;
    v49 = 2112;
    v50 = region;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@unique region %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  v8 = MEMORY[0x277CCACA8];
  region2 = [(HMDLocationEvent *)selfCopy region];
  identifier = [region2 identifier];
  uuid = [(HMDEvent *)selfCopy uuid];
  uUIDString = [uuid UUIDString];
  v13 = [v8 stringWithFormat:@"%@-%@", identifier, uUIDString];

  region3 = [(HMDLocationEvent *)selfCopy region];
  objc_opt_class();
  LOBYTE(uuid) = objc_opt_isKindOfClass();

  region4 = [(HMDLocationEvent *)selfCopy region];
  if (uuid)
  {
    v16 = objc_alloc(MEMORY[0x277CBFBC8]);
    [region4 center];
    v18 = v17;
    v20 = v19;
    [region4 radius];
    v22 = [v16 initWithCenter:v13 radius:1 identifier:v18 nearbyAllowed:{v20, v21}];
    [v22 setNotifyOnExit:{objc_msgSend(region4, "notifyOnExit")}];
    [v22 setNotifyOnEntry:{objc_msgSend(region4, "notifyOnEntry")}];
    [v22 setReferenceFrame:{objc_msgSend(region4, "referenceFrame")}];
    if (!v22)
    {
      v23 = objc_autoreleasePoolPush();
      v24 = selfCopy;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = HMFGetLogIdentifier();
        *buf = 138543618;
        v48 = v26;
        v49 = 2112;
        v50 = region4;
        v27 = "%{public}@Error getting circle region for unique region, %@";
LABEL_21:
        _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_ERROR, v27, buf, 0x16u);

        goto LABEL_22;
      }

      goto LABEL_22;
    }

    goto LABEL_23;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    region4 = [(HMDLocationEvent *)selfCopy region];
    major = [region4 major];
    if (major && (v30 = major, [region4 minor], v31 = objc_claimAutoreleasedReturnValue(), v31, v30, v31))
    {
      v32 = objc_alloc(MEMORY[0x277CBFBB8]);
      proximityUUID = [region4 proximityUUID];
      major2 = [region4 major];
      unsignedShortValue = [major2 unsignedShortValue];
      minor = [region4 minor];
      v22 = [v32 initWithProximityUUID:proximityUUID major:unsignedShortValue minor:objc_msgSend(minor identifier:{"unsignedShortValue"), v13}];
    }

    else
    {
      major3 = [region4 major];

      v44 = objc_alloc(MEMORY[0x277CBFBB8]);
      proximityUUID = [region4 proximityUUID];
      if (!major3)
      {
        v22 = [v44 initWithProximityUUID:proximityUUID identifier:v13];
LABEL_18:

        [v22 setNotifyOnExit:{objc_msgSend(region4, "notifyOnExit")}];
        [v22 setNotifyOnEntry:{objc_msgSend(region4, "notifyOnEntry")}];
        if (!v22)
        {
          v23 = objc_autoreleasePoolPush();
          v24 = selfCopy;
          v25 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            v26 = HMFGetLogIdentifier();
            *buf = 138543618;
            v48 = v26;
            v49 = 2112;
            v50 = region4;
            v27 = "%{public}@Error getting beacon region for unique region, %@";
            goto LABEL_21;
          }

LABEL_22:

          objc_autoreleasePoolPop(v23);
        }

LABEL_23:

        goto LABEL_24;
      }

      major2 = [region4 major];
      v22 = [v44 initWithProximityUUID:proximityUUID major:objc_msgSend(major2 identifier:{"unsignedShortValue"), v13}];
    }

    goto LABEL_18;
  }

  v37 = objc_autoreleasePoolPush();
  v38 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
  {
    v39 = HMFGetLogIdentifier();
    region5 = [(HMDLocationEvent *)selfCopy region];
    v41 = objc_opt_class();
    region6 = [(HMDLocationEvent *)selfCopy region];
    *buf = 138543874;
    v48 = v39;
    v49 = 2112;
    v50 = v41;
    v51 = 2112;
    v52 = region6;
    _os_log_impl(&dword_229538000, v38, OS_LOG_TYPE_ERROR, "%{public}@Cannot create unique region for region of unsupported class %@: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v37);
  v22 = 0;
LABEL_24:

  v45 = *MEMORY[0x277D85DE8];

  return v22;
}

- (id)dumpStateWithPrivacyLevel:(unint64_t)level
{
  v14.receiver = self;
  v14.super_class = HMDLocationEvent;
  v4 = [(HMDEvent *)&v14 dumpStateWithPrivacyLevel:level];
  v5 = [v4 mutableCopy];

  v6 = MEMORY[0x277CCACA8];
  region = [(HMDLocationEvent *)self region];
  region2 = [(HMDLocationEvent *)self region];
  [region2 notifyOnEntry];
  v9 = HMFBooleanToString();
  region3 = [(HMDLocationEvent *)self region];
  [region3 notifyOnExit];
  v11 = HMFBooleanToString();
  v12 = [v6 stringWithFormat:@"Region: %@, Entry: %@, Exit: %@", region, v9, v11];

  [v5 setObject:v12 forKeyedSubscript:*MEMORY[0x277D0F0F8]];

  return v5;
}

- (void)_handleRetrieveLocationEventForEventTrigger:(id)trigger
{
  v20 = *MEMORY[0x277D85DE8];
  triggerCopy = trigger;
  if ([triggerCopy isAuthorizedForLocationAccess])
  {
    proxyConnection = [triggerCopy proxyConnection];
    processInfo = [proxyConnection processInfo];
    locationAuthorization = [processInfo locationAuthorization];
    [locationAuthorization mark];

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    region = [(HMDLocationEvent *)self region];
    v10 = encodeRootObject();
    [dictionary setObject:v10 forKeyedSubscript:*MEMORY[0x277CD2400]];

    eventTrigger = [(HMDEvent *)self eventTrigger];
    mostRecentFireDate = [eventTrigger mostRecentFireDate];

    if (mostRecentFireDate)
    {
      mostRecentFireDate2 = [eventTrigger mostRecentFireDate];
      [dictionary setObject:mostRecentFireDate2 forKeyedSubscript:*MEMORY[0x277CD2750]];
    }

    [triggerCopy respondWithPayload:dictionary];
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      v18 = 138543362;
      v19 = v16;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Client does not have authorization to location", &v18, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
    [triggerCopy respondWithPayload:0];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_handleUpdateRequest:(id)request
{
  v41 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  if ([requestCopy isAuthorizedForLocationAccess])
  {
    v5 = [requestCopy dataForKey:*MEMORY[0x277CD2400]];
    v36 = 0;
    v6 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v5 error:&v36];
    v7 = v36;
    if (v6)
    {
      if (HMIsValidRegion())
      {
        emptyModelObject = [(HMDLocationEvent *)self emptyModelObject];
        v9 = encodeRootObject();
        [emptyModelObject setRegion:v9];

        eventTrigger = [(HMDEvent *)self eventTrigger];
        home = [eventTrigger home];
        backingStore = [home backingStore];
        name = [requestCopy name];
        +[HMDBackingStoreTransactionOptions defaultXPCOptions];
        v14 = v32 = v7;
        v15 = [backingStore transaction:name options:v14];

        [v15 add:emptyModelObject];
        v33[0] = MEMORY[0x277D85DD0];
        v33[1] = 3221225472;
        v33[2] = __41__HMDLocationEvent__handleUpdateRequest___block_invoke;
        v33[3] = &unk_27868A1D8;
        v34 = requestCopy;
        v35 = emptyModelObject;
        v16 = emptyModelObject;
        [v15 run:v33];

        v7 = v32;
LABEL_15:

        goto LABEL_16;
      }

      v27 = objc_autoreleasePoolPush();
      selfCopy = self;
      v29 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v30 = HMFGetLogIdentifier();
        *buf = 138543362;
        v38 = v30;
        _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_ERROR, "%{public}@Cannot handle update request as provided region is not valid", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v27);
      v25 = MEMORY[0x277CCA9B8];
      v26 = 3;
    }

    else
    {
      v21 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = HMFGetLogIdentifier();
        *buf = 138543618;
        v38 = v24;
        v39 = 2112;
        v40 = v7;
        _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive region from region data: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v21);
      v25 = MEMORY[0x277CCA9B8];
      v26 = 20;
    }

    v15 = [v25 hmErrorWithCode:v26];
    [requestCopy respondWithError:v15];
    goto LABEL_15;
  }

  v17 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    v20 = HMFGetLogIdentifier();
    *buf = 138543362;
    v38 = v20;
    _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Cannot handle update request as the client is not authorized for location services", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v17);
  v5 = [MEMORY[0x277CCA9B8] hmErrorWithCode:85];
  [requestCopy respondWithError:v5];
LABEL_16:

  v31 = *MEMORY[0x277D85DE8];
}

void __41__HMDLocationEvent__handleUpdateRequest___block_invoke(uint64_t a1, uint64_t a2)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = *MEMORY[0x277D85DE8];
    v4 = *(a1 + 32);

    [v4 respondWithError:a2];
  }

  else
  {
    v8 = *MEMORY[0x277CD2400];
    v5 = [*(a1 + 40) region];
    v9[0] = v5;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
    [v2 respondWithPayload:v6];

    v7 = *MEMORY[0x277D85DE8];
  }
}

- (void)checkFMFStatus:(id)status
{
  v15 = *MEMORY[0x277D85DE8];
  statusCopy = status;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v11 = 138543618;
    v12 = v8;
    v13 = 2112;
    v14 = statusCopy;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Checking the ownership with fmfStatus %@", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  if (-[HMDLocationEvent doesThisTargetCurrentUser](selfCopy, "doesThisTargetCurrentUser") && [statusCopy value] == 2)
  {
    eventTrigger = [(HMDEvent *)selfCopy eventTrigger];
    [eventTrigger takeOverOwnershipOfTrigger];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)doesThisTargetCurrentUser
{
  v21 = *MEMORY[0x277D85DE8];
  eventTrigger = [(HMDEvent *)self eventTrigger];
  home = [eventTrigger home];
  userUUID = [(HMDLocationEvent *)self userUUID];
  v6 = [home userWithUUID:userUUID];

  currentUser = [home currentUser];
  v8 = [v6 isEqual:currentUser];
  if ((v8 & 1) == 0)
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v15 = 138543874;
      v16 = v12;
      v17 = 2112;
      v18 = v6;
      v19 = 2112;
      v20 = currentUser;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Not taking the ownership since this trigger belongs to user %@, this device's user %@", &v15, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
  }

  v13 = *MEMORY[0x277D85DE8];
  return v8;
}

- (void)fmfStatusUpdateNotification:(id)notification
{
  notificationCopy = notification;
  workQueue = [(HMDEvent *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__HMDLocationEvent_fmfStatusUpdateNotification___block_invoke;
  v7[3] = &unk_27868A750;
  v8 = notificationCopy;
  selfCopy = self;
  v6 = notificationCopy;
  dispatch_async(workQueue, v7);
}

void __48__HMDLocationEvent_fmfStatusUpdateNotification___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) userInfo];
  v3 = [HMDFMF fmfStatusWithDict:v2];
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 40);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v9 = 138543618;
    v10 = v7;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Received FMF status update notification with %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  [*(a1 + 40) checkFMFStatus:v3];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_registerForMessages
{
  v20[2] = *MEMORY[0x277D85DE8];
  v18.receiver = self;
  v18.super_class = HMDLocationEvent;
  [(HMDEvent *)&v18 _registerForMessages];
  home = [(HMDEvent *)self home];
  v4 = [HMDUserMessagePolicy userMessagePolicyWithHome:home userPrivilege:0 remoteAccessRequired:0];
  msgDispatcher = [(HMDEvent *)self msgDispatcher];
  v6 = [HMDXPCMessagePolicy policyWithEntitlements:1];
  v20[0] = v6;
  v20[1] = v4;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
  [msgDispatcher registerForMessage:@"kRetrieveLocationEventRequestKey" receiver:self policies:v7 selector:sel__handleRetrieveLocationEventForEventTrigger_];

  msgDispatcher2 = [(HMDEvent *)self msgDispatcher];
  v9 = *MEMORY[0x277CD23F8];
  v10 = [HMDXPCMessagePolicy policyWithEntitlements:1];
  v19[0] = v10;
  v19[1] = v4;
  v11 = +[HMDRemoteMessagePolicy defaultSecurePrimaryResidentPolicy];
  v19[2] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:3];
  [msgDispatcher2 registerForMessage:v9 receiver:self policies:v12 selector:sel__handleLocationEventOccurred_];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_fmfStatusUpdateNotification_ name:@"HMDFMFStatusUpdateNotification" object:0];

  homeManager = [home homeManager];
  fmfHandler = [homeManager fmfHandler];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __40__HMDLocationEvent__registerForMessages__block_invoke;
  v17[3] = &unk_278683EF8;
  v17[4] = self;
  [fmfHandler queryFMFStatusWithCompletion:v17];

  v16 = *MEMORY[0x277D85DE8];
}

void __40__HMDLocationEvent__registerForMessages__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) workQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __40__HMDLocationEvent__registerForMessages__block_invoke_2;
  v6[3] = &unk_27868A750;
  v6[4] = *(a1 + 32);
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, v6);
}

uint64_t __40__HMDLocationEvent__registerForMessages__block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v9 = 138543618;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@FMF Device Status is %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 32) checkFMFStatus:*(a1 + 40)];
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)emptyModelObject
{
  v3 = [HMDLocationEventModel alloc];
  uuid = [(HMDEvent *)self uuid];
  eventTrigger = [(HMDEvent *)self eventTrigger];
  uuid2 = [eventTrigger uuid];
  v7 = [(HMDBackingStoreModelObject *)v3 initWithObjectChangeType:2 uuid:uuid parentUUID:uuid2];

  return v7;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = HMDLocationEvent;
  v4 = [(HMDEvent *)&v9 description];
  region = [(HMDLocationEvent *)self region];
  v6 = regionAsString(region);
  v7 = [v3 stringWithFormat:@"%@, %@", v4, v6];

  return v7;
}

- (HMDLocationEvent)initWithModel:(id)model home:(id)home
{
  v29 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  homeCopy = home;
  v24.receiver = self;
  v24.super_class = HMDLocationEvent;
  v8 = [(HMDEvent *)&v24 initWithModel:modelCopy home:homeCopy];
  if (v8)
  {
    v9 = MEMORY[0x277CCAAC8];
    v10 = objc_opt_class();
    region = [modelCopy region];
    v23 = 0;
    v12 = [v9 unarchivedObjectOfClass:v10 fromData:region error:&v23];
    v13 = v23;
    region = v8->_region;
    v8->_region = v12;

    if (!v8->_region)
    {
      v15 = objc_autoreleasePoolPush();
      v16 = v8;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = HMFGetLogIdentifier();
        *buf = 138543618;
        v26 = v18;
        v27 = 2112;
        v28 = v13;
        _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive region from object model's region: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v15);
    }

    userUUID = [modelCopy userUUID];
    userUUID = v8->_userUUID;
    v8->_userUUID = userUUID;
  }

  v21 = *MEMORY[0x277D85DE8];
  return v8;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t1_18636 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t1_18636, &__block_literal_global_18637);
  }

  v3 = logCategory__hmf_once_v2_18638;

  return v3;
}

void __31__HMDLocationEvent_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v2_18638;
  logCategory__hmf_once_v2_18638 = v1;
}

@end