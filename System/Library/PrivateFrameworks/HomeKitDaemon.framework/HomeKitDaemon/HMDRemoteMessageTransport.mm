@interface HMDRemoteMessageTransport
+ (id)logCategory;
+ (id)remoteMessageFromMessage:(id)message secure:(BOOL)secure accountRegistry:(id)registry;
+ (id)remoteMessageTransportsForProductInfo:(id)info;
- (BOOL)canSendMessage:(id)message;
- (BOOL)doesResponse:(id)response matchAllCapabilities:(id)capabilities;
- (HMDHomeMembershipVerifier)homeMembershipVerifier;
- (HMDRemoteMessageTransport)init;
- (HMDRemoteMessageTransport)initWithAccountRegistry:(id)registry;
- (HMDRemoteMessageTransportReachabilityDelegate)reachabilityDelegate;
- (double)defaultTimeout;
- (double)retryInterval;
- (id)dumpStateWithPrivacyLevel:(unint64_t)level;
- (id)matchResponse:(id)response requestedCapabilities:(id)capabilities;
- (id)remoteMessageFromMessage:(id)message;
- (id)start;
- (int64_t)compareCapability:(id)capability key:(id)key withCapability:(id)withCapability;
- (unint64_t)numRetries;
- (void)postDidReceiveRemoteMessageWithNoListenerFromDevice:(id)device;
@end

@implementation HMDRemoteMessageTransport

+ (id)remoteMessageTransportsForProductInfo:(id)info
{
  v12[2] = *MEMORY[0x277D85DE8];
  v3 = [HMDModernRemoteMessageTransport alloc];
  v4 = +[HMDAccountRegistry sharedRegistry];
  v5 = [(HMDModernRemoteMessageTransport *)v3 initWithAccountRegistry:v4];

  v6 = [HMDIDSMessageTransport alloc];
  v7 = +[HMDAccountRegistry sharedRegistry];
  v8 = [(HMDIDSMessageTransport *)v6 initWithAccountRegistry:v7 forServiceName:@"com.apple.private.alloy.willow"];

  v12[0] = v5;
  v12[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (HMDHomeMembershipVerifier)homeMembershipVerifier
{
  WeakRetained = objc_loadWeakRetained(&self->_homeMembershipVerifier);

  return WeakRetained;
}

- (HMDRemoteMessageTransportReachabilityDelegate)reachabilityDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_reachabilityDelegate);

  return WeakRetained;
}

- (id)dumpStateWithPrivacyLevel:(unint64_t)level
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v5 = [(HMFObject *)self debugDescription];
  [dictionary setObject:v5 forKeyedSubscript:*MEMORY[0x277D0F0D0]];

  return dictionary;
}

- (int64_t)compareCapability:(id)capability key:(id)key withCapability:(id)withCapability
{
  capabilityCopy = capability;
  keyCopy = key;
  withCapabilityCopy = withCapability;
  if (([keyCopy isEqualToString:@"kHomedVersionKey"] & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"kHomeConfigurationVersionKey") & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"kMetadataInfoSchemaVersionKey") & 1) != 0 || objc_msgSend(keyCopy, "isEqualToString:", @"kMetadataInfoVersionKey")) && (objc_opt_class(), (objc_opt_isKindOfClass()) && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v10 = [capabilityCopy compare:withCapabilityCopy];
  }

  else if ([keyCopy isEqualToString:*MEMORY[0x277CD0640]] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v10 = [capabilityCopy isEqualToString:withCapabilityCopy] - 1;
  }

  else
  {
    v10 = -1;
  }

  return v10;
}

- (BOOL)doesResponse:(id)response matchAllCapabilities:(id)capabilities
{
  v24 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  capabilitiesCopy = capabilities;
  v8 = [capabilitiesCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(capabilitiesCopy);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        v13 = [responseCopy objectForKeyedSubscript:{v12, v19}];
        v14 = [capabilitiesCopy objectForKeyedSubscript:v12];
        v15 = [(HMDRemoteMessageTransport *)self compareCapability:v13 key:v12 withCapability:v14];

        if (v15 > 1)
        {
          v16 = 0;
          goto LABEL_11;
        }
      }

      v9 = [capabilitiesCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v16 = 1;
LABEL_11:

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

- (id)matchResponse:(id)response requestedCapabilities:(id)capabilities
{
  v81[1] = *MEMORY[0x277D85DE8];
  responseCopy = response;
  capabilitiesCopy = capabilities;
  v6 = objc_autoreleasePoolPush();
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543874;
    v71 = v8;
    v72 = 2112;
    v73 = capabilitiesCopy;
    v74 = 2112;
    v75 = responseCopy;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Select based on capability %@, and responses %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v6);
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v47 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:0 ascending:0 comparator:&__block_literal_global_316_277911];
  v81[0] = v47;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v81 count:1];
  v51 = [responseCopy sortedArrayUsingDescriptors:v11];

  v12 = objc_autoreleasePoolPush();
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    *buf = 138543618;
    v71 = v14;
    v72 = 2112;
    v73 = v51;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Sorted responses by homed version: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v12);
  v48 = responseCopy;
  v57 = v9;
  if ([responseCopy count] >= 2)
  {
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v15 = capabilitiesCopy;
    v52 = [v15 countByEnumeratingWithState:&v66 objects:v80 count:16];
    if (v52)
    {
      v50 = *v67;
      do
      {
        v16 = 0;
        do
        {
          if (*v67 != v50)
          {
            objc_enumerationMutation(v15);
          }

          v53 = v16;
          v17 = *(*(&v66 + 1) + 8 * v16);
          v62 = 0u;
          v63 = 0u;
          v64 = 0u;
          v65 = 0u;
          obj = v51;
          v18 = [obj countByEnumeratingWithState:&v62 objects:v79 count:16];
          if (v18)
          {
            v19 = v18;
            v20 = *v63;
            do
            {
              for (i = 0; i != v19; ++i)
              {
                if (*v63 != v20)
                {
                  objc_enumerationMutation(obj);
                }

                v22 = *(*(&v62 + 1) + 8 * i);
                if (([v9 containsObject:v22] & 1) == 0)
                {
                  [v9 addObject:v22];
                  [v10 addObject:&unk_283E75308];
                }

                v23 = [v22 objectForKeyedSubscript:v17];
                v24 = [v15 objectForKeyedSubscript:v17];
                v25 = [(HMDRemoteMessageTransport *)self compareCapability:v23 key:v17 withCapability:v24];

                v9 = v57;
                if ((v25 & 0x8000000000000000) == 0)
                {
                  v26 = [v57 indexOfObject:v22];
                  v27 = MEMORY[0x277CCABB0];
                  v28 = [v10 objectAtIndexedSubscript:v26];
                  v29 = [v27 numberWithInteger:{objc_msgSend(v28, "integerValue") + 1}];
                  [v10 replaceObjectAtIndex:v26 withObject:v29];
                }
              }

              v19 = [obj countByEnumeratingWithState:&v62 objects:v79 count:16];
            }

            while (v19);
          }

          v16 = v53 + 1;
        }

        while (v53 + 1 != v52);
        v52 = [v15 countByEnumeratingWithState:&v66 objects:v80 count:16];
      }

      while (v52);
    }
  }

  if (![v9 count])
  {
    [v9 addObjectsFromArray:v51];
  }

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = v10;
  v30 = [v56 countByEnumeratingWithState:&v58 objects:v78 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = *v59;
    do
    {
      for (j = 0; j != v31; ++j)
      {
        if (*v59 != v35)
        {
          objc_enumerationMutation(v56);
        }

        integerValue = [*(*(&v58 + 1) + 8 * j) integerValue];
        v38 = [v57 objectAtIndexedSubscript:v32];
        v39 = [v38 objectForKeyedSubscript:@"kIDSMessageResponseErrorDataKey"];

        if (v39)
        {
          v40 = integerValue;
        }

        else
        {
          v40 = integerValue + 1;
        }

        if (v40 > v34)
        {
          v33 = v32;
          v34 = v40;
        }

        ++v32;
      }

      v31 = [v56 countByEnumeratingWithState:&v58 objects:v78 count:16];
    }

    while (v31);
  }

  else
  {
    v33 = 0;
    v34 = 0;
  }

  v41 = objc_autoreleasePoolPush();
  v42 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
  {
    v43 = HMFGetLogIdentifier();
    *buf = 138544130;
    v71 = v43;
    v72 = 2048;
    v73 = v34;
    v74 = 2048;
    v75 = v33;
    v76 = 2112;
    v77 = v57;
    _os_log_impl(&dword_229538000, v42, OS_LOG_TYPE_INFO, "%{public}@Returning Best matched capability (Matched: %ld, Index: %ld) from Filtered list :%@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v41);
  v44 = [v57 objectAtIndexedSubscript:v33];

  v45 = *MEMORY[0x277D85DE8];

  return v44;
}

uint64_t __65__HMDRemoteMessageTransport_matchResponse_requestedCapabilities___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 hmf_stringForKey:@"kHomeKitVersionStringKey"];
  v7 = [v5 hmf_stringForKey:@"kHomeKitVersionStringKey"];
  v8 = v7;
  if (v6 | v7)
  {
    if (v6)
    {
      v9 = [[HMDHomeKitVersion alloc] initWithString:v6];
      if (v8)
      {
LABEL_4:
        v10 = [[HMDHomeKitVersion alloc] initWithString:v8];
        v11 = v10;
        v12 = v9 != 0;
        if (!v9 || !v10)
        {
          goto LABEL_17;
        }

LABEL_9:
        v14 = [v9 compare:v11];
        goto LABEL_22;
      }
    }

    else
    {
      v9 = 0;
      if (v7)
      {
        goto LABEL_4;
      }
    }

    v11 = 0;
    v12 = v9 != 0;
LABEL_17:
    v16 = !v12;
    v17 = 1;
    if (v16)
    {
      v17 = -1;
    }

    if (v9 | v11)
    {
      v14 = v17;
    }

    else
    {
      v14 = 0;
    }

    goto LABEL_22;
  }

  v9 = [v4 hmf_numberForKey:@"kHomedVersionKey"];
  v13 = [v5 hmf_numberForKey:@"kHomedVersionKey"];
  v11 = v13;
  if (v9 && v13)
  {
    goto LABEL_9;
  }

  v15 = 1;
  if (!v9)
  {
    v15 = -1;
  }

  if (v9 | v13)
  {
    v14 = v15;
  }

  else
  {
    v14 = 0;
  }

LABEL_22:

  return v14;
}

- (id)remoteMessageFromMessage:(id)message
{
  messageCopy = message;
  v5 = objc_opt_class();
  accountRegistry = [(HMDRemoteMessageTransport *)self accountRegistry];
  v7 = [v5 remoteMessageFromMessage:messageCopy secure:0 accountRegistry:accountRegistry];

  return v7;
}

- (void)postDidReceiveRemoteMessageWithNoListenerFromDevice:(id)device
{
  deviceCopy = device;
  if (deviceCopy)
  {
    v5 = dispatch_get_global_queue(0, 0);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __81__HMDRemoteMessageTransport_postDidReceiveRemoteMessageWithNoListenerFromDevice___block_invoke;
    v6[3] = &unk_27868A750;
    v7 = deviceCopy;
    selfCopy = self;
    dispatch_async(v5, v6);
  }
}

void __81__HMDRemoteMessageTransport_postDidReceiveRemoteMessageWithNoListenerFromDevice___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = HMFGetLogIdentifier();
    v5 = *(a1 + 32);
    *buf = 138543618;
    v14 = v4;
    v15 = 2112;
    v16 = v5;
    _os_log_impl(&dword_229538000, v3, OS_LOG_TYPE_INFO, "%{public}@Posting notification about incoming message with no listeners from: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  v11 = @"kIDSMessageSourceIDKey";
  v7 = *(a1 + 40);
  v8 = [*(a1 + 32) remoteDestinationString];
  v12 = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  [v6 postNotificationName:@"HMDDidReceiveRemoteMessageWithNoListenerNotification" object:v7 userInfo:v9];

  v10 = *MEMORY[0x277D85DE8];
}

- (id)start
{
  startPromise = [(HMDRemoteMessageTransport *)self startPromise];
  [startPromise fulfillWithValue:0];

  return [(HMDRemoteMessageTransport *)self startFuture];
}

- (HMDRemoteMessageTransport)initWithAccountRegistry:(id)registry
{
  registryCopy = registry;
  v11.receiver = self;
  v11.super_class = HMDRemoteMessageTransport;
  v6 = [(HMDRemoteMessageTransport *)&v11 init];
  if (v6)
  {
    obj = 0;
    v7 = [MEMORY[0x277D0F7C0] futureWithPromise:&obj];
    startFuture = v6->_startFuture;
    v6->_startFuture = v7;

    objc_storeStrong(&v6->_startPromise, obj);
    objc_storeStrong(&v6->_accountRegistry, registry);
  }

  return v6;
}

- (BOOL)canSendMessage:(id)message
{
  messageCopy = message;
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = MEMORY[0x277CCACA8];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"You must override %@ in a subclass", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (double)retryInterval
{
  mEMORY[0x277D0F8D0] = [MEMORY[0x277D0F8D0] sharedPreferences];
  v3 = [mEMORY[0x277D0F8D0] preferenceForKey:@"HMDRemoteMessageTransportSendMessageRetryIntervalKey"];
  numberValue = [v3 numberValue];
  [numberValue doubleValue];
  v6 = v5;

  return v6;
}

- (unint64_t)numRetries
{
  mEMORY[0x277D0F8D0] = [MEMORY[0x277D0F8D0] sharedPreferences];
  v3 = [mEMORY[0x277D0F8D0] preferenceForKey:@"HMDRemoteMessageTransportSendMessageNumberOfRetriesKey"];
  numberValue = [v3 numberValue];
  unsignedIntegerValue = [numberValue unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (double)defaultTimeout
{
  mEMORY[0x277D0F8D0] = [MEMORY[0x277D0F8D0] sharedPreferences];
  v3 = [mEMORY[0x277D0F8D0] preferenceForKey:@"HMDRemoteMessageTransportSendMessageDefaultTimeoutKey"];
  numberValue = [v3 numberValue];
  [numberValue doubleValue];
  v6 = v5;

  return v6;
}

- (HMDRemoteMessageTransport)init
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t18_277949 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t18_277949, &__block_literal_global_321_277950);
  }

  v3 = logCategory__hmf_once_v19_277951;

  return v3;
}

void __40__HMDRemoteMessageTransport_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v19_277951;
  logCategory__hmf_once_v19_277951 = v1;
}

+ (id)remoteMessageFromMessage:(id)message secure:(BOOL)secure accountRegistry:(id)registry
{
  secureCopy = secure;
  v73[1] = *MEMORY[0x277D85DE8];
  messageCopy = message;
  registryCopy = registry;
  v10 = messageCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  if (v12)
  {
    v13 = v10;
    if (secureCopy)
    {
      [(HMDRemoteMessage *)v12 setSecure:1];
      v13 = v10;
    }
  }

  else
  {
    untrustedClientIdentifier = [(HMDRemoteMessage *)v10 untrustedClientIdentifier];

    selfCopy = self;
    if (untrustedClientIdentifier)
    {
      v72 = *MEMORY[0x277D0F1D0];
      untrustedClientIdentifier2 = [(HMDRemoteMessage *)v10 untrustedClientIdentifier];
      v73[0] = untrustedClientIdentifier2;
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v73 forKeys:&v72 count:1];
    }

    else
    {
      v16 = 0;
    }

    v17 = [HMDRemoteMessage alloc];
    name = [(HMDRemoteMessage *)v10 name];
    qualityOfService = [(HMDRemoteMessage *)v10 qualityOfService];
    destination = [(HMDRemoteMessage *)v10 destination];
    messagePayload = [(HMDRemoteMessage *)v10 messagePayload];
    [(HMDRemoteMessage *)v10 timeout];
    v23 = v22;
    LOBYTE(v56) = [(HMFMessage *)v10 isSecureRemote]|| secureCopy;
    v13 = [(HMDRemoteMessage *)v17 initWithName:name qualityOfService:qualityOfService destination:destination payload:messagePayload headers:v16 type:3 timeout:v23 secure:v56 restriction:[(HMFMessage *)v10 remoteRestriction] sendOptions:0];

    identifier = [(HMDRemoteMessage *)v10 identifier];
    [(HMDRemoteMessage *)v13 setIdentifier:identifier];

    responseHandler = [(HMDRemoteMessage *)v10 responseHandler];
    [(HMDRemoteMessage *)v13 setResponseHandler:responseHandler];

    self = selfCopy;
  }

  attributedMessageName = [(HMDRemoteMessage *)v13 attributedMessageName];

  if (!attributedMessageName)
  {
    name2 = [(HMDRemoteMessage *)v10 name];
    [(HMDRemoteMessage *)v13 setAttributedMessageName:name2];
  }

  if (registryCopy)
  {
    destination2 = [(HMDRemoteMessage *)v13 destination];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = destination2;
    }

    else
    {
      v29 = 0;
    }

    v30 = v29;

    if (v30)
    {
      v59 = 0;
      device = [v30 device];
      handles = [device handles];
      firstObject = [handles firstObject];
      v34 = [registryCopy deviceForHandle:firstObject exists:&v59];

      if (v59 == 1)
      {
        v35 = objc_autoreleasePoolPush();
        v36 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
        {
          v37 = HMFGetLogIdentifier();
          [v30 device];
          v38 = v58 = self;
          *buf = 138543874;
          v61 = v37;
          v62 = 2112;
          v63 = v38;
          v64 = 2112;
          v65 = v34;
          _os_log_impl(&dword_229538000, v36, OS_LOG_TYPE_DEBUG, "%{public}@Replacing device destination, %@, with device: %@", buf, 0x20u);

          self = v58;
        }

        objc_autoreleasePoolPop(v35);
        v39 = [HMDRemoteDeviceMessageDestination alloc];
        target = [v30 target];
        v41 = [(HMDRemoteDeviceMessageDestination *)v39 initWithTarget:target device:v34];

        [(HMDRemoteMessage *)v13 setDestination:v41];
        preferredHandle = [v30 preferredHandle];

        if (preferredHandle)
        {
          preferredHandle2 = [v30 preferredHandle];
          [(HMDRemoteDeviceMessageDestination *)v41 setPreferredHandle:preferredHandle2];
        }
      }
    }
  }

  v44 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v46 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
  {
    v47 = HMFGetLogIdentifier();
    identifier2 = [(HMDRemoteMessage *)v13 identifier];
    name3 = [(HMDRemoteMessage *)v13 name];
    [(HMDRemoteMessage *)v13 timeout];
    v51 = v50;
    type = [(HMDRemoteMessage *)v13 type];
    if (type > 3)
    {
      v53 = 0;
    }

    else
    {
      v53 = off_278689828[type];
    }

    *buf = 138544642;
    v61 = v47;
    v62 = 2112;
    v63 = selfCopy2;
    v64 = 2112;
    v65 = identifier2;
    v66 = 2112;
    v67 = name3;
    v68 = 2048;
    v69 = v51;
    v70 = 2112;
    v71 = v53;
    _os_log_impl(&dword_229538000, v46, OS_LOG_TYPE_DEBUG, "%{public}@[%@] Created remote message from message with identifier: %@ name: %@ timeout: %.0f and type: %@", buf, 0x3Eu);
  }

  objc_autoreleasePoolPop(v44);
  v54 = *MEMORY[0x277D85DE8];

  return v13;
}

@end