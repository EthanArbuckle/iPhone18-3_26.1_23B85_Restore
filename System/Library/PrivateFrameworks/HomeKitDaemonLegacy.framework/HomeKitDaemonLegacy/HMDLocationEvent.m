@interface HMDLocationEvent
+ (id)logCategory;
- (BOOL)_activate:(unint64_t)a3 completionHandler:(id)a4;
- (BOOL)doesThisTargetCurrentUser;
- (BOOL)isCompatibleWithEvent:(id)a3;
- (CLRegion)uniqueRegion;
- (HMDLocationEvent)initWithCoder:(id)a3;
- (HMDLocationEvent)initWithModel:(id)a3 home:(id)a4;
- (NSString)description;
- (id)analyticsTriggerEventData;
- (id)createPayload;
- (id)dumpStateWithPrivacyLevel:(unint64_t)a3;
- (id)emptyModelObject;
- (id)modelObjectWithChangeType:(unint64_t)a3;
- (void)_handleLocationEventOccurred:(id)a3;
- (void)_handleRetrieveLocationEventForEventTrigger:(id)a3;
- (void)_handleUpdateRequest:(id)a3;
- (void)_registerForMessages;
- (void)_transactionObjectUpdated:(id)a3 newValues:(id)a4 message:(id)a5;
- (void)checkFMFStatus:(id)a3;
- (void)didEnterRegion:(id)a3;
- (void)didExitRegion:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)fmfStatusUpdateNotification:(id)a3;
- (void)informLocationEventOccurrenceToResident;
- (void)locationEventOccurred;
@end

@implementation HMDLocationEvent

- (id)analyticsTriggerEventData
{
  v3 = objc_alloc_init(HMDAnalyticsTriggerEventData);
  [(HMDAnalyticsTriggerEventData *)v3 setEndEvent:[(HMDEvent *)self isEndEvent]];
  v4 = objc_alloc_init(HMDAnalyticsLocationEventData);
  v5 = [(HMDLocationEvent *)self region];
  -[HMDAnalyticsLocationEventData setNotifyOnEntry:](v4, "setNotifyOnEntry:", [v5 notifyOnEntry]);

  v6 = [(HMDLocationEvent *)self region];
  -[HMDAnalyticsLocationEventData setNotifyOnExit:](v4, "setNotifyOnExit:", [v6 notifyOnExit]);

  [(HMDAnalyticsTriggerEventData *)v3 setLocationEvent:v4];

  return v3;
}

- (void)didExitRegion:(id)a3
{
  v4 = a3;
  v5 = [(HMDEvent *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __34__HMDLocationEvent_didExitRegion___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
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
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Received a exit callback from HMDLocation for the region callback: [%@]", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 32) locationEventOccurred];
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)didEnterRegion:(id)a3
{
  v4 = a3;
  v5 = [(HMDEvent *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __35__HMDLocationEvent_didEnterRegion___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
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
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Received a enter callback from HMDLocation for the region callback : [%@]", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 32) locationEventOccurred];
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)informLocationEventOccurrenceToResident
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = [(HMDEvent *)self eventTrigger];
  v4 = [v3 home];

  v5 = [v4 homeManager];
  v6 = [v5 messageDispatcher];

  v18 = [v6 remoteAccessDeviceForHome:v4];
  v7 = [HMDRemoteDeviceMessageDestination alloc];
  v8 = [(HMDEvent *)self uuid];
  v9 = [(HMDRemoteDeviceMessageDestination *)v7 initWithTarget:v8 device:v18];

  v10 = [HMDRemoteMessage secureMessageWithName:*MEMORY[0x277CD23F8] qualityOfService:17 destination:v9 messagePayload:MEMORY[0x277CBEC10]];
  v11 = [v10 identifier];
  objc_initWeak(&location, self);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __59__HMDLocationEvent_informLocationEventOccurrenceToResident__block_invoke;
  v19[3] = &unk_279733AE8;
  objc_copyWeak(&v21, &location);
  v12 = v11;
  v20 = v12;
  [v10 setResponseHandler:v19];
  v13 = objc_autoreleasePoolPush();
  v14 = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    *buf = 138543618;
    v24 = v16;
    v25 = 2114;
    v26 = v12;
    _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Sending message with identifier %{public}@ to inform location event to resident", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v13);
  [v6 sendMessage:v10 completionHandler:0];

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);

  v17 = *MEMORY[0x277D85DE8];
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
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Message with identifier %@ to inform location event has been sent", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v13 = *MEMORY[0x277D85DE8];
}

- (void)_handleLocationEventOccurred:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = HMDEventTriggerActivationTypeAsString([(HMDEvent *)v6 activationType]);
    v18 = 138543618;
    v19 = v8;
    v20 = 2112;
    v21 = v9;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Received remote message that location event has occurred, with current activation type %@", &v18, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  if ([(HMDEvent *)v6 activationType]== 2)
  {
    v10 = [HMDEventTriggerDevice alloc];
    v11 = [v4 remoteSourceDevice];
    v12 = [(HMDEvent *)v6 eventTrigger];
    v13 = [v12 home];
    v14 = [(HMDEventTriggerDevice *)v10 initWithDevice:v11 forHome:v13];

    v15 = [(HMDEvent *)v6 delegate];
    v16 = [v15 didOccurEvent:v6 causingDevice:v14];
  }

  [v4 respondWithPayload:0];

  v17 = *MEMORY[0x277D85DE8];
}

- (void)locationEventOccurred
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v7 = HMDEventTriggerActivationTypeAsString([(HMDEvent *)v4 activationType]);
    v22 = 138543618;
    v23 = v6;
    v24 = 2112;
    v25 = v7;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Received a callback that location event has occurred, current activation state: %@", &v22, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  v8 = +[HMDLostModeManager sharedManager];
  v9 = [v8 isLost];

  if (v9)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = v4;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v22 = 138543362;
      v23 = v13;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Device Lost. Not informing that location event has occurred", &v22, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
  }

  else
  {
    v14 = [(HMDEvent *)v4 activationType];
    if (v14 == 3)
    {
      v15 = [HMDEventTriggerDevice alloc];
      v16 = [(HMDEvent *)v4 eventTrigger];
      v17 = [v16 home];
      v18 = [(HMDEventTriggerDevice *)v15 initWithCurrentDeviceForHome:v17];

      v19 = [(HMDEvent *)v4 delegate];
      v20 = [v19 didOccurEvent:v4 causingDevice:v18];
    }

    else if (v14 == 1)
    {
      [(HMDLocationEvent *)v4 informLocationEventOccurrenceToResident];
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (BOOL)_activate:(unint64_t)a3 completionHandler:(id)a4
{
  v17[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v16.receiver = self;
  v16.super_class = HMDLocationEvent;
  v7 = [(HMDEvent *)&v16 _activate:a3 completionHandler:0];
  v8 = [(HMDLocationEvent *)self uniqueRegion];
  v9 = v8;
  if (v8)
  {
    v17[0] = v8;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  }

  else
  {
    v10 = MEMORY[0x277CBEBF8];
  }

  v11 = [(HMDLocationEvent *)self isActive];
  v12 = +[HMDLocation sharedManager];
  v13 = v12;
  if (v11)
  {
    [v12 registerForRegionUpdate:v10 withDelegate:self completionHandler:v6];
  }

  else
  {
    [v12 deregisterForRegionUpdate:v10 completionHandler:v6];
  }

  v14 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)_transactionObjectUpdated:(id)a3 newValues:(id)a4 message:(id)a5
{
  v49 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v14 = HMFGetLogIdentifier();
    *buf = 138543362;
    v44 = v14;
    _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Handling transaction updated", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v11);
  v15 = v9;
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
    v18 = [(HMDEvent *)v12 eventTrigger];
    v19 = [v10 name];
    v20 = [v19 isEqualToString:@"kMigratedEventsToRecordsRequest"];

    if (v20)
    {
      [v18 processEventRecords:v17 message:v10];
    }

    else
    {
      if ([v17 propertyWasSet:@"region"])
      {
        v21 = MEMORY[0x277CCAAC8];
        v22 = objc_opt_class();
        v23 = [v17 region];
        v42 = 0;
        v24 = [v21 unarchivedObjectOfClass:v22 fromData:v23 error:&v42];
        v25 = v42;

        if (!v24)
        {
          v34 = objc_autoreleasePoolPush();
          v35 = v12;
          v36 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            v37 = HMFGetLogIdentifier();
            *buf = 138543618;
            v44 = v37;
            v45 = 2112;
            v46 = v25;
            _os_log_impl(&dword_2531F8000, v36, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive region from event model: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v34);
          [v10 respondWithError:v25];

          goto LABEL_17;
        }

        v26 = [(HMDLocationEvent *)v12 region];
        v27 = [v26 isEqual:v24];

        if ((v27 & 1) == 0)
        {
          v28 = objc_autoreleasePoolPush();
          v29 = v12;
          v30 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
          {
            v41 = HMFGetLogIdentifier();
            v38 = [(HMDLocationEvent *)v29 region];
            regionAsString(v38);
            v31 = v39 = v25;
            regionAsString(v24);
            v32 = v40 = v28;
            *buf = 138543874;
            v44 = v41;
            v45 = 2112;
            v46 = v31;
            v47 = 2112;
            v48 = v32;
            _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_INFO, "%{public}@Updating region %@ to new region %@", buf, 0x20u);

            v28 = v40;
            v25 = v39;
          }

          objc_autoreleasePoolPop(v28);
          [(HMDLocationEvent *)v29 setRegion:v24];
          [v18 markChangedForMessage:v10];
        }
      }

      [v10 respondWithSuccess];
    }

LABEL_17:
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (id)modelObjectWithChangeType:(unint64_t)a3
{
  v5 = [HMDLocationEventModel alloc];
  v6 = [(HMDEvent *)self uuid];
  v7 = [(HMDEvent *)self eventTrigger];
  v8 = [v7 uuid];
  v9 = [(HMDBackingStoreModelObject *)v5 initWithObjectChangeType:a3 uuid:v6 parentUUID:v8];

  v10 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDEvent isEndEvent](self, "isEndEvent")}];
  [(HMDLocationEventModel *)v9 setEndEvent:v10];

  v11 = [(HMDLocationEvent *)self region];
  v12 = encodeRootObject();
  [(HMDLocationEventModel *)v9 setRegion:v12];

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = HMDLocationEvent;
  [(HMDEvent *)&v6 encodeWithCoder:v4];
  if ([v4 hmd_isForXPCTransport] && (objc_msgSend(v4, "hmd_isForXPCTransportAuthorizedForLocationAccess") & 1) != 0 || (objc_msgSend(v4, "hmd_isForLocalStore") & 1) != 0 || objc_msgSend(v4, "hmd_isForRemoteTransport") && !objc_msgSend(v4, "hmd_isForRemoteTransportOnSameAccount") || objc_msgSend(v4, "hmd_isForRemoteTransportOnSameAccount") && (objc_msgSend(v4, "hmd_isForRemoteGatewayCoder") & 1) == 0)
  {
    v5 = [(HMDLocationEvent *)self region];
    [v4 encodeObject:v5 forKey:@"HM.locationEventRegion"];
  }
}

- (HMDLocationEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HMDLocationEvent;
  v5 = [(HMDEvent *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.locationEventRegion"];
    region = v5->_region;
    v5->_region = v6;
  }

  return v5;
}

- (BOOL)isCompatibleWithEvent:(id)a3
{
  v4.receiver = self;
  v4.super_class = HMDLocationEvent;
  return [(HMDEvent *)&v4 isCompatibleWithEvent:a3];
}

- (id)createPayload
{
  v3 = MEMORY[0x277CBEB38];
  v10.receiver = self;
  v10.super_class = HMDLocationEvent;
  v4 = [(HMDEvent *)&v10 createPayload];
  v5 = [v3 dictionaryWithDictionary:v4];

  v6 = [(HMDLocationEvent *)self region];
  v7 = encodeRootObject();
  [v5 setObject:v7 forKeyedSubscript:*MEMORY[0x277CD2400]];

  v8 = [v5 copy];

  return v8;
}

- (CLRegion)uniqueRegion
{
  v53 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v7 = [(HMDLocationEvent *)v4 region];
    *buf = 138543618;
    v48 = v6;
    v49 = 2112;
    v50 = v7;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@unique region %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  v8 = MEMORY[0x277CCACA8];
  v9 = [(HMDLocationEvent *)v4 region];
  v10 = [v9 identifier];
  v11 = [(HMDEvent *)v4 uuid];
  v12 = [v11 UUIDString];
  v13 = [v8 stringWithFormat:@"%@-%@", v10, v12];

  v14 = [(HMDLocationEvent *)v4 region];
  objc_opt_class();
  LOBYTE(v11) = objc_opt_isKindOfClass();

  v15 = [(HMDLocationEvent *)v4 region];
  if (v11)
  {
    v16 = objc_alloc(MEMORY[0x277CBFBC8]);
    [v15 center];
    v18 = v17;
    v20 = v19;
    [v15 radius];
    v22 = [v16 initWithCenter:v13 radius:1 identifier:v18 nearbyAllowed:{v20, v21}];
    [v22 setNotifyOnExit:{objc_msgSend(v15, "notifyOnExit")}];
    [v22 setNotifyOnEntry:{objc_msgSend(v15, "notifyOnEntry")}];
    [v22 setReferenceFrame:{objc_msgSend(v15, "referenceFrame")}];
    if (!v22)
    {
      v23 = objc_autoreleasePoolPush();
      v24 = v4;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = HMFGetLogIdentifier();
        *buf = 138543618;
        v48 = v26;
        v49 = 2112;
        v50 = v15;
        v27 = "%{public}@Error getting circle region for unique region, %@";
LABEL_21:
        _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_ERROR, v27, buf, 0x16u);

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
    v15 = [(HMDLocationEvent *)v4 region];
    v29 = [v15 major];
    if (v29 && (v30 = v29, [v15 minor], v31 = objc_claimAutoreleasedReturnValue(), v31, v30, v31))
    {
      v32 = objc_alloc(MEMORY[0x277CBFBB8]);
      v33 = [v15 proximityUUID];
      v34 = [v15 major];
      v35 = [v34 unsignedShortValue];
      v36 = [v15 minor];
      v22 = [v32 initWithProximityUUID:v33 major:v35 minor:objc_msgSend(v36 identifier:{"unsignedShortValue"), v13}];
    }

    else
    {
      v43 = [v15 major];

      v44 = objc_alloc(MEMORY[0x277CBFBB8]);
      v33 = [v15 proximityUUID];
      if (!v43)
      {
        v22 = [v44 initWithProximityUUID:v33 identifier:v13];
LABEL_18:

        [v22 setNotifyOnExit:{objc_msgSend(v15, "notifyOnExit")}];
        [v22 setNotifyOnEntry:{objc_msgSend(v15, "notifyOnEntry")}];
        if (!v22)
        {
          v23 = objc_autoreleasePoolPush();
          v24 = v4;
          v25 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            v26 = HMFGetLogIdentifier();
            *buf = 138543618;
            v48 = v26;
            v49 = 2112;
            v50 = v15;
            v27 = "%{public}@Error getting beacon region for unique region, %@";
            goto LABEL_21;
          }

LABEL_22:

          objc_autoreleasePoolPop(v23);
        }

LABEL_23:

        goto LABEL_24;
      }

      v34 = [v15 major];
      v22 = [v44 initWithProximityUUID:v33 major:objc_msgSend(v34 identifier:{"unsignedShortValue"), v13}];
    }

    goto LABEL_18;
  }

  v37 = objc_autoreleasePoolPush();
  v38 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
  {
    v39 = HMFGetLogIdentifier();
    v40 = [(HMDLocationEvent *)v4 region];
    v41 = objc_opt_class();
    v42 = [(HMDLocationEvent *)v4 region];
    *buf = 138543874;
    v48 = v39;
    v49 = 2112;
    v50 = v41;
    v51 = 2112;
    v52 = v42;
    _os_log_impl(&dword_2531F8000, v38, OS_LOG_TYPE_ERROR, "%{public}@Cannot create unique region for region of unsupported class %@: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v37);
  v22 = 0;
LABEL_24:

  v45 = *MEMORY[0x277D85DE8];

  return v22;
}

- (id)dumpStateWithPrivacyLevel:(unint64_t)a3
{
  v14.receiver = self;
  v14.super_class = HMDLocationEvent;
  v4 = [(HMDEvent *)&v14 dumpStateWithPrivacyLevel:a3];
  v5 = [v4 mutableCopy];

  v6 = MEMORY[0x277CCACA8];
  v7 = [(HMDLocationEvent *)self region];
  v8 = [(HMDLocationEvent *)self region];
  [v8 notifyOnEntry];
  v9 = HMFBooleanToString();
  v10 = [(HMDLocationEvent *)self region];
  [v10 notifyOnExit];
  v11 = HMFBooleanToString();
  v12 = [v6 stringWithFormat:@"Region: %@, Entry: %@, Exit: %@", v7, v9, v11];

  [v5 setObject:v12 forKeyedSubscript:*MEMORY[0x277D0F0F8]];

  return v5;
}

- (void)_handleRetrieveLocationEventForEventTrigger:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 isAuthorizedForLocationAccess])
  {
    v5 = [v4 proxyConnection];
    v6 = [v5 processInfo];
    v7 = [v6 locationAuthorization];
    [v7 mark];

    v8 = [MEMORY[0x277CBEB38] dictionary];
    v9 = [(HMDLocationEvent *)self region];
    v10 = encodeRootObject();
    [v8 setObject:v10 forKeyedSubscript:*MEMORY[0x277CD2400]];

    v11 = [(HMDEvent *)self eventTrigger];
    v12 = [v11 mostRecentFireDate];

    if (v12)
    {
      v13 = [v11 mostRecentFireDate];
      [v8 setObject:v13 forKeyedSubscript:*MEMORY[0x277CD2750]];
    }

    [v4 respondWithPayload:v8];
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
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@Client does not have authorization to location", &v18, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
    [v4 respondWithPayload:0];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_handleUpdateRequest:(id)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 isAuthorizedForLocationAccess])
  {
    v5 = [v4 dataForKey:*MEMORY[0x277CD2400]];
    v36 = 0;
    v6 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v5 error:&v36];
    v7 = v36;
    if (v6)
    {
      if (HMIsValidRegion())
      {
        v8 = [(HMDLocationEvent *)self emptyModelObject];
        v9 = encodeRootObject();
        [v8 setRegion:v9];

        v10 = [(HMDEvent *)self eventTrigger];
        v11 = [v10 home];
        v12 = [v11 backingStore];
        v13 = [v4 name];
        +[HMDBackingStoreTransactionOptions defaultXPCOptions];
        v14 = v32 = v7;
        v15 = [v12 transaction:v13 options:v14];

        [v15 add:v8];
        v33[0] = MEMORY[0x277D85DD0];
        v33[1] = 3221225472;
        v33[2] = __41__HMDLocationEvent__handleUpdateRequest___block_invoke;
        v33[3] = &unk_2797358C8;
        v34 = v4;
        v35 = v8;
        v16 = v8;
        [v15 run:v33];

        v7 = v32;
LABEL_15:

        goto LABEL_16;
      }

      v27 = objc_autoreleasePoolPush();
      v28 = self;
      v29 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v30 = HMFGetLogIdentifier();
        *buf = 138543362;
        v38 = v30;
        _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_ERROR, "%{public}@Cannot handle update request as provided region is not valid", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v27);
      v25 = MEMORY[0x277CCA9B8];
      v26 = 3;
    }

    else
    {
      v21 = objc_autoreleasePoolPush();
      v22 = self;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = HMFGetLogIdentifier();
        *buf = 138543618;
        v38 = v24;
        v39 = 2112;
        v40 = v7;
        _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive region from region data: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v21);
      v25 = MEMORY[0x277CCA9B8];
      v26 = 20;
    }

    v15 = [v25 hmErrorWithCode:v26];
    [v4 respondWithError:v15];
    goto LABEL_15;
  }

  v17 = objc_autoreleasePoolPush();
  v18 = self;
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    v20 = HMFGetLogIdentifier();
    *buf = 138543362;
    v38 = v20;
    _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_ERROR, "%{public}@Cannot handle update request as the client is not authorized for location services", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v17);
  v5 = [MEMORY[0x277CCA9B8] hmErrorWithCode:85];
  [v4 respondWithError:v5];
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

- (void)checkFMFStatus:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v11 = 138543618;
    v12 = v8;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Checking the ownership with fmfStatus %@", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  if (-[HMDLocationEvent doesThisTargetCurrentUser](v6, "doesThisTargetCurrentUser") && [v4 value] == 2)
  {
    v9 = [(HMDEvent *)v6 eventTrigger];
    [v9 takeOverOwnershipOfTrigger];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)doesThisTargetCurrentUser
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [(HMDEvent *)self eventTrigger];
  v4 = [v3 home];
  v5 = [v3 owner];
  v6 = [v4 currentUser];
  v7 = [v5 isEqual:v6];
  if ((v7 & 1) == 0)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v14 = 138543874;
      v15 = v11;
      v16 = 2112;
      v17 = v5;
      v18 = 2112;
      v19 = v6;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Not taking the ownership since this trigger belongs to user %@, this device's user %@", &v14, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)fmfStatusUpdateNotification:(id)a3
{
  v4 = a3;
  v5 = [(HMDEvent *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__HMDLocationEvent_fmfStatusUpdateNotification___block_invoke;
  v7[3] = &unk_2797359B0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
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
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Received FMF status update notification with %@", &v9, 0x16u);
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
  v3 = [(HMDEvent *)self home];
  v4 = [HMDUserMessagePolicy userMessagePolicyWithHome:v3 userPrivilege:0 remoteAccessRequired:0];
  v5 = [(HMDEvent *)self msgDispatcher];
  v6 = [HMDXPCMessagePolicy policyWithEntitlements:1];
  v20[0] = v6;
  v20[1] = v4;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
  [v5 registerForMessage:@"kRetrieveLocationEventRequestKey" receiver:self policies:v7 selector:sel__handleRetrieveLocationEventForEventTrigger_];

  v8 = [(HMDEvent *)self msgDispatcher];
  v9 = *MEMORY[0x277CD23F8];
  v10 = [HMDXPCMessagePolicy policyWithEntitlements:1];
  v19[0] = v10;
  v19[1] = v4;
  v11 = +[HMDRemoteMessagePolicy defaultSecurePolicy];
  v19[2] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:3];
  [v8 registerForMessage:v9 receiver:self policies:v12 selector:sel__handleLocationEventOccurred_];

  v13 = [MEMORY[0x277CCAB98] defaultCenter];
  [v13 addObserver:self selector:sel_fmfStatusUpdateNotification_ name:@"HMDFMFStatusUpdateNotification" object:0];

  v14 = [v3 homeManager];
  v15 = [v14 fmfHandler];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __40__HMDLocationEvent__registerForMessages__block_invoke;
  v17[3] = &unk_279723060;
  v17[4] = self;
  [v15 queryFMFStatusWithCompletion:v17];

  v16 = *MEMORY[0x277D85DE8];
}

void __40__HMDLocationEvent__registerForMessages__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) workQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __40__HMDLocationEvent__registerForMessages__block_invoke_2;
  v6[3] = &unk_2797359B0;
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
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@FMF Device Status is %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 32) checkFMFStatus:*(a1 + 40)];
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)emptyModelObject
{
  v3 = [HMDLocationEventModel alloc];
  v4 = [(HMDEvent *)self uuid];
  v5 = [(HMDEvent *)self eventTrigger];
  v6 = [v5 uuid];
  v7 = [(HMDBackingStoreModelObject *)v3 initWithObjectChangeType:2 uuid:v4 parentUUID:v6];

  return v7;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = HMDLocationEvent;
  v4 = [(HMDEvent *)&v9 description];
  v5 = [(HMDLocationEvent *)self region];
  v6 = regionAsString(v5);
  v7 = [v3 stringWithFormat:@"%@, %@", v4, v6];

  return v7;
}

- (HMDLocationEvent)initWithModel:(id)a3 home:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v22.receiver = self;
  v22.super_class = HMDLocationEvent;
  v8 = [(HMDEvent *)&v22 initWithModel:v6 home:v7];
  if (v8)
  {
    v9 = MEMORY[0x277CCAAC8];
    v10 = objc_opt_class();
    v11 = [v6 region];
    v21 = 0;
    v12 = [v9 unarchivedObjectOfClass:v10 fromData:v11 error:&v21];
    v13 = v21;
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
        v24 = v18;
        v25 = 2112;
        v26 = v13;
        _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive region from object model's region: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v15);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
  return v8;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t1_12775 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t1_12775, &__block_literal_global_12776);
  }

  v3 = logCategory__hmf_once_v2_12777;

  return v3;
}

uint64_t __31__HMDLocationEvent_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  logCategory__hmf_once_v2_12777 = HMFCreateOSLogHandle();

  return MEMORY[0x2821F96F8]();
}

@end