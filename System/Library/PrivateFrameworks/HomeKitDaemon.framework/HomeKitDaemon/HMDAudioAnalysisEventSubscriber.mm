@interface HMDAudioAnalysisEventSubscriber
+ (id)logCategory;
- (BOOL)shouldPublishEvent:(id)event;
- (HMDAudioAnalysisEventSubscriber)initWithContext:(id)context;
- (NSUUID)messageTargetUUID;
- (OS_dispatch_queue)messageReceiveQueue;
- (id)logIdentifier;
- (id)mediaSystemLastKnownEventKeyForAccessoryUUID:(id)d pairedAccessoryUUID:(id)iD reason:(unint64_t)reason;
- (id)stereoPairedCounterpartAccessory;
- (id)transformHMDBulletinToHMBulletin:(id)bulletin;
- (void)_handleAudioAnalysisEventMessage:(id)message;
- (void)_postBulletinNotificationWithBulletin:(id)bulletin;
- (void)_postOrUpdateNotificationWithBulletin:(id)bulletin;
- (void)_postOrUpdateNotificationWithBulletin:(id)bulletin stereoPairedAccessory:(id)accessory;
- (void)_postUpdateEventRouterEventIfDifferent:(id)different;
- (void)configureWithContext:(id)context;
- (void)deregisterForMessages;
- (void)postNotificationForEvent:(id)event;
- (void)postOrUpdateNotificationWithBulletinIfneeded:(id)ifneeded;
- (void)registerForMessages;
@end

@implementation HMDAudioAnalysisEventSubscriber

- (void)_postUpdateEventRouterEventIfDifferent:(id)different
{
  v64 = *MEMORY[0x277D85DE8];
  differentCopy = different;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v59 = v8;
    v60 = 2112;
    v61 = differentCopy;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Posting audio analysis event for bulletin: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  context = [differentCopy context];
  accessory = [context accessory];
  uuid = [accessory uuid];

  uUIDString = [uuid UUIDString];
  if (uUIDString)
  {
    v13 = [(HMDAudioAnalysisEventSubscriber *)selfCopy transformHMDBulletinToHMBulletin:differentCopy];
    v14 = MEMORY[0x277CD1848];
    context2 = [(HMDAudioAnalysisEventSubscriber *)selfCopy context];
    home = [context2 home];
    uuid2 = [home uuid];
    v18 = [v14 topicWithAccessoryUUID:uuid homeUUID:uuid2];

    if (!v18)
    {
      v37 = objc_autoreleasePoolPush();
      v38 = selfCopy;
      v39 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        v40 = HMFGetLogIdentifier();
        *buf = 138543362;
        v59 = v40;
        _os_log_impl(&dword_229538000, v39, OS_LOG_TYPE_ERROR, "%{public}@nil topic", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v37);
      goto LABEL_29;
    }

    context3 = [(HMDAudioAnalysisEventSubscriber *)selfCopy context];
    eventStoreReadHandle = [context3 eventStoreReadHandle];

    v55 = eventStoreReadHandle;
    v21 = [eventStoreReadHandle lastEventForTopic:v18];
    v54 = v21;
    if (!v21)
    {
      goto LABEL_21;
    }

    v56 = 0;
    v22 = [MEMORY[0x277CD1848] decodeBulletinsFromEvent:v21 error:&v56];
    v23 = v56;
    if (!v23)
    {
      if (v22)
      {
        goto LABEL_11;
      }
    }

    v52 = v13;
    context = objc_autoreleasePoolPush();
    v24 = selfCopy;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v26 = HMFGetLogIdentifier();
      *buf = 138543874;
      v59 = v26;
      v60 = 2112;
      v61 = v18;
      v62 = 2112;
      v63 = v23;
      _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_INFO, "%{public}@Error reading stored event for topic %@, error: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(context);
    v13 = v52;
    if (v22)
    {
LABEL_11:
      v27 = v13;
      v28 = [v22 checkIfBulletinExists:{v13, context}];
      v53 = objc_autoreleasePoolPush();
      v29 = selfCopy;
      v30 = HMFGetOSLogHandle();
      v31 = os_log_type_enabled(v30, OS_LOG_TYPE_INFO);
      if (v28)
      {
        if (v31)
        {
          v32 = HMFGetLogIdentifier();
          *buf = 138543618;
          v59 = v32;
          v60 = 2112;
          v61 = v27;
          _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_INFO, "%{public}@Bulletin:%@ exists in events", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v53);
        v13 = v27;
        goto LABEL_28;
      }

      if (v31)
      {
        v46 = HMFGetLogIdentifier();
        *buf = 138543618;
        v59 = v46;
        v60 = 2112;
        v61 = v27;
        _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_INFO, "%{public}@Adding bulletin:%@ to events", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v53);
      v13 = v27;
      v45 = [v22 bulletinsByAddingOrReplacingBulletin:v27];
    }

    else
    {
LABEL_21:
      v41 = objc_autoreleasePoolPush();
      v42 = selfCopy;
      v43 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
      {
        v44 = HMFGetLogIdentifier();
        *buf = 138543618;
        v59 = v44;
        v60 = 2112;
        v61 = v13;
        _os_log_impl(&dword_229538000, v43, OS_LOG_TYPE_INFO, "%{public}@Adding new bulletin:%@ to events", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v41);
      v57 = v13;
      v45 = [MEMORY[0x277CBEA60] arrayWithObjects:&v57 count:1];
      v22 = 0;
    }

    v47 = objc_alloc(MEMORY[0x277CD1848]);
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v48 = [v47 initWithBulletins:v45 eventSource:uUIDString eventTimestamp:?];
    context4 = [(HMDAudioAnalysisEventSubscriber *)selfCopy context];
    [context4 forwardEvent:v48 topic:v18 completion:&__block_literal_global_163];

LABEL_28:
LABEL_29:

    goto LABEL_30;
  }

  v33 = objc_autoreleasePoolPush();
  v34 = selfCopy;
  v35 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
  {
    v36 = HMFGetLogIdentifier();
    *buf = 138543362;
    v59 = v36;
    _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_ERROR, "%{public}@nil event source", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v33);
LABEL_30:

  v50 = *MEMORY[0x277D85DE8];
}

- (id)transformHMDBulletinToHMBulletin:(id)bulletin
{
  bulletinCopy = bulletin;
  context = [bulletinCopy context];
  accessory = [context accessory];

  v6 = objc_alloc(MEMORY[0x277CD1850]);
  spiClientIdentifier = [accessory spiClientIdentifier];
  home = [accessory home];
  spiClientIdentifier2 = [home spiClientIdentifier];
  startDate = [bulletinCopy startDate];
  dateOfOccurrence = [bulletinCopy dateOfOccurrence];
  reason = [bulletinCopy reason];
  state = [bulletinCopy state];

  v14 = [v6 initWithAccessoryIdentifier:spiClientIdentifier homeIdentifier:spiClientIdentifier2 startDate:startDate endDate:dateOfOccurrence reason:reason state:state];

  return v14;
}

- (void)_handleAudioAnalysisEventMessage:(id)message
{
  v25 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v21 = 138543618;
    v22 = v8;
    v23 = 2112;
    v24 = messageCopy;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Received audio analysis notification message %@", &v21, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  messagePayload = [messageCopy messagePayload];
  v10 = [messagePayload hmf_dictionaryForKey:@"HMDAudioAnalysisBulletinDataMessageKey"];

  v11 = [[HMDAudioAnalysisEventBulletin alloc] initWithDictionary:v10];
  v12 = [HMDAudioAnalysisNotificationReceivedLogEvent alloc];
  reason = [(HMDAudioAnalysisEventBulletin *)v11 reason];
  state = [(HMDAudioAnalysisEventBulletin *)v11 state];
  dateOfOccurrence = [(HMDAudioAnalysisEventBulletin *)v11 dateOfOccurrence];
  v16 = [(HMDAudioAnalysisNotificationReceivedLogEvent *)v12 initWithReason:reason state:state notificationSentDate:dateOfOccurrence];

  context = [(HMDAudioAnalysisEventSubscriber *)selfCopy context];
  [(HMDAudioAnalysisEventBulletin *)v11 configureWithContext:context];

  if (v11)
  {
    [(HMDAudioAnalysisEventSubscriber *)selfCopy postNotificationForEvent:v11];
    context2 = [(HMDAudioAnalysisEventSubscriber *)selfCopy context];
    [context2 submitLogEvent:v16];
  }

  context3 = [(HMDAudioAnalysisEventSubscriber *)selfCopy context];
  [context3 submitLogEvent:v16];

  [messageCopy respondWithPayload:0];
  v20 = *MEMORY[0x277D85DE8];
}

- (void)_postBulletinNotificationWithBulletin:(id)bulletin
{
  v17 = *MEMORY[0x277D85DE8];
  bulletinCopy = bulletin;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v13 = 138543618;
    v14 = v8;
    v15 = 2112;
    v16 = bulletinCopy;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Posting audio analysis bulletin notification: %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  state = [bulletinCopy state];
  if (state == 1)
  {
    context = [(HMDAudioAnalysisEventSubscriber *)selfCopy context];
    bulletinBoard = [context bulletinBoard];
    [bulletinBoard updateAudioAnalysisEventNotification:bulletinCopy];
    goto LABEL_7;
  }

  if (!state)
  {
    context = [(HMDAudioAnalysisEventSubscriber *)selfCopy context];
    bulletinBoard = [context bulletinBoard];
    [bulletinBoard insertAudioAnalysisEventNotification:bulletinCopy];
LABEL_7:
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_postOrUpdateNotificationWithBulletin:(id)bulletin
{
  bulletinCopy = bulletin;
  [(HMDAudioAnalysisEventSubscriber *)self _postUpdateEventRouterEventIfDifferent:bulletinCopy];
  [(HMDAudioAnalysisEventSubscriber *)self _postBulletinNotificationWithBulletin:bulletinCopy];
}

- (id)mediaSystemLastKnownEventKeyForAccessoryUUID:(id)d pairedAccessoryUUID:(id)iD reason:(unint64_t)reason
{
  v5 = 0;
  v19[2] = *MEMORY[0x277D85DE8];
  if (d && iD)
  {
    iDCopy = iD;
    uUIDString = [d UUIDString];
    v19[0] = uUIDString;
    uUIDString2 = [iDCopy UUIDString];

    v19[1] = uUIDString2;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];

    v12 = [v11 sortedArrayUsingSelector:sel_compare_];

    v13 = MEMORY[0x277CCACA8];
    v14 = [v12 objectAtIndexedSubscript:0];
    v15 = [v12 objectAtIndexedSubscript:1];
    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:reason];
    v5 = [v13 stringWithFormat:@"accessory:%@.accessory:%@.reason.%@", v14, v15, v16];
  }

  v17 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)_postOrUpdateNotificationWithBulletin:(id)bulletin stereoPairedAccessory:(id)accessory
{
  v34 = *MEMORY[0x277D85DE8];
  bulletinCopy = bulletin;
  accessoryCopy = accessory;
  context = [(HMDAudioAnalysisEventSubscriber *)self context];
  uuid = [context uuid];
  v26 = accessoryCopy;
  uuid2 = [accessoryCopy uuid];
  v11 = -[HMDAudioAnalysisEventSubscriber mediaSystemLastKnownEventKeyForAccessoryUUID:pairedAccessoryUUID:reason:](self, "mediaSystemLastKnownEventKeyForAccessoryUUID:pairedAccessoryUUID:reason:", uuid, uuid2, [bulletinCopy reason]);

  v12 = objc_autoreleasePoolPush();
  selfCopy = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = HMFGetLogIdentifier();
    *buf = 138543618;
    v31 = v15;
    v32 = 2112;
    v33 = v11;
    _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Comparing key for stereo paired accessory: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v12);
  v16 = [(HMDAudioAnalysisEventSubscriber *)selfCopy transformHMDBulletinToHMBulletin:bulletinCopy];
  context2 = [(HMDAudioAnalysisEventSubscriber *)selfCopy context];
  home = [context2 home];
  audioAnalysisStereoPairController = [home audioAnalysisStereoPairController];
  context3 = [bulletinCopy context];
  accessory = [context3 accessory];
  notificationUUID = [bulletinCopy notificationUUID];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __95__HMDAudioAnalysisEventSubscriber__postOrUpdateNotificationWithBulletin_stereoPairedAccessory___block_invoke;
  v27[3] = &unk_278674260;
  v27[4] = selfCopy;
  v28 = v11;
  v29 = bulletinCopy;
  v23 = bulletinCopy;
  v24 = v11;
  [audioAnalysisStereoPairController compareOrUpdateRecentAudioAnalysisStereoPairEvent:v16 key:v24 accessory:accessory notificationUUID:notificationUUID window:20 completion:v27];

  v25 = *MEMORY[0x277D85DE8];
}

void __95__HMDAudioAnalysisEventSubscriber__postOrUpdateNotificationWithBulletin_stereoPairedAccessory___block_invoke(uint64_t a1, char a2, void *a3, void *a4)
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (a2)
  {
    v9 = [*(a1 + 48) context];
    v10 = [v9 accessory];

    if (v10 != v7)
    {
      v11 = [HMDAudioAnalysisEventSubscriberContext alloc];
      v12 = [*(a1 + 32) context];
      v13 = [v12 workQueue];
      v14 = [(HMDAudioAnalysisEventSubscriberContext *)v11 initWithAccessory:v7 queue:v13];

      [*(a1 + 48) configureWithContext:v14];
    }

    [*(a1 + 48) setNotificationUUID:v8];
    [*(a1 + 32) _postOrUpdateNotificationWithBulletin:*(a1 + 48)];
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v16 = *(a1 + 32);
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      v19 = *(a1 + 40);
      v21 = 138543618;
      v22 = v18;
      v23 = 2112;
      v24 = v19;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Home found existing recent notification for key: %@", &v21, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)postOrUpdateNotificationWithBulletinIfneeded:(id)ifneeded
{
  ifneededCopy = ifneeded;
  stereoPairedCounterpartAccessory = [(HMDAudioAnalysisEventSubscriber *)self stereoPairedCounterpartAccessory];
  v6 = stereoPairedCounterpartAccessory;
  if (stereoPairedCounterpartAccessory)
  {
    [(HMDAudioAnalysisEventSubscriber *)self _postOrUpdateNotificationWithBulletin:ifneededCopy stereoPairedAccessory:stereoPairedCounterpartAccessory];
  }

  else
  {
    [(HMDAudioAnalysisEventSubscriber *)self _postOrUpdateNotificationWithBulletin:ifneededCopy];
  }
}

- (void)postNotificationForEvent:(id)event
{
  v28 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    accessoryUUID = [eventCopy accessoryUUID];
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(eventCopy, "reason")}];
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(eventCopy, "state")}];
    notificationUUID = [eventCopy notificationUUID];
    v18 = 138544386;
    v19 = v8;
    v20 = 2112;
    v21 = accessoryUUID;
    v22 = 2112;
    v23 = v10;
    v24 = 2112;
    v25 = v11;
    v26 = 2112;
    v27 = notificationUUID;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Posting notification from accessoryUUID: %@, reason: %@, state: %@, notificationUUID: %@", &v18, 0x34u);
  }

  objc_autoreleasePoolPop(v5);
  if ([(HMDAudioAnalysisEventSubscriber *)selfCopy shouldPublishEvent:eventCopy])
  {
    [(HMDAudioAnalysisEventSubscriber *)selfCopy postOrUpdateNotificationWithBulletinIfneeded:eventCopy];
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = selfCopy;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v18 = 138543618;
      v19 = v16;
      v20 = 2112;
      v21 = eventCopy;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Notification predicate evaluation failed, not posting the notification for bulletin: %@", &v18, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)deregisterForMessages
{
  context = [(HMDAudioAnalysisEventSubscriber *)self context];
  dispatcher = [context dispatcher];
  [dispatcher deregisterReceiver:self];
}

- (void)registerForMessages
{
  v13[2] = *MEMORY[0x277D85DE8];
  v3 = +[HMDRemoteMessagePolicy defaultSecurePolicy];
  v13[0] = v3;
  context = [(HMDAudioAnalysisEventSubscriber *)self context];
  home = [context home];
  v6 = [HMDUserMessagePolicy userMessagePolicyWithHome:home userPrivilege:0 remoteAccessRequired:0];
  v13[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];

  context2 = [(HMDAudioAnalysisEventSubscriber *)self context];
  dispatcher = [context2 dispatcher];
  [dispatcher registerForMessage:@"HMDAudioAnalysisEventMessageKey" receiver:self policies:v7 selector:sel__handleAudioAnalysisEventMessage_];

  context3 = [(HMDAudioAnalysisEventSubscriber *)self context];
  dispatcher2 = [context3 dispatcher];
  [dispatcher2 registerForMessage:@"HMDAudioAnalysisPrimaryResidentRouteEventRequestMessage" receiver:self policies:v7 selector:sel__handleAudioAnalysisEventMessage_];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)configureWithContext:(id)context
{
  objc_storeStrong(&self->_context, context);

  [(HMDAudioAnalysisEventSubscriber *)self registerForMessages];
}

- (HMDAudioAnalysisEventSubscriber)initWithContext:(id)context
{
  contextCopy = context;
  v8.receiver = self;
  v8.super_class = HMDAudioAnalysisEventSubscriber;
  v5 = [(HMDAudioAnalysisEventSubscriber *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(HMDAudioAnalysisEventSubscriber *)v5 configureWithContext:contextCopy];
  }

  return v6;
}

- (OS_dispatch_queue)messageReceiveQueue
{
  context = [(HMDAudioAnalysisEventSubscriber *)self context];
  workQueue = [context workQueue];

  return workQueue;
}

- (NSUUID)messageTargetUUID
{
  context = [(HMDAudioAnalysisEventSubscriber *)self context];
  uuid = [context uuid];

  return uuid;
}

- (id)stereoPairedCounterpartAccessory
{
  context = [(HMDAudioAnalysisEventSubscriber *)self context];
  home = [context home];

  if (home)
  {
    mediaSystemController = [home mediaSystemController];
    mediaSystems = [mediaSystemController mediaSystems];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __67__HMDAudioAnalysisEventSubscriber_stereoPairedCounterpartAccessory__block_invoke;
    v14[3] = &unk_278675410;
    v14[4] = self;
    v7 = [mediaSystems na_firstObjectPassingTest:v14];

    accessories = [v7 accessories];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __67__HMDAudioAnalysisEventSubscriber_stereoPairedCounterpartAccessory__block_invoke_3;
    v13[3] = &unk_278681708;
    v13[4] = self;
    v9 = [accessories na_firstObjectPassingTest:v13];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

uint64_t __67__HMDAudioAnalysisEventSubscriber_stereoPairedCounterpartAccessory__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 accessories];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __67__HMDAudioAnalysisEventSubscriber_stereoPairedCounterpartAccessory__block_invoke_2;
  v6[3] = &unk_278681708;
  v6[4] = *(a1 + 32);
  v4 = [v3 na_any:v6];

  return v4;
}

uint64_t __67__HMDAudioAnalysisEventSubscriber_stereoPairedCounterpartAccessory__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 context];
  v5 = [v4 accessory];
  v6 = [v5 uuid];
  v7 = [v3 uuid];

  LODWORD(v3) = [v6 hmf_isEqualToUUID:v7];
  return v3 ^ 1;
}

uint64_t __67__HMDAudioAnalysisEventSubscriber_stereoPairedCounterpartAccessory__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 context];
  v5 = [v4 accessory];
  v6 = [v5 uuid];
  v7 = [v3 uuid];

  v8 = [v6 hmf_isEqualToUUID:v7];
  return v8;
}

- (BOOL)shouldPublishEvent:(id)event
{
  v23 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  if (!_os_feature_enabled_impl())
  {
    goto LABEL_4;
  }

  context = [eventCopy context];
  isAudioAnalysisEventNotificationEnabled = [context isAudioAnalysisEventNotificationEnabled];

  if ((isAudioAnalysisEventNotificationEnabled & 1) == 0)
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      context2 = [eventCopy context];
      uuid = [context2 uuid];
      v19 = 138543618;
      v20 = v12;
      v21 = 2112;
      v22 = uuid;
      v15 = "%{public}@Notification is not enabled for uuid %@";
LABEL_9:
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, v15, &v19, 0x16u);
    }

LABEL_10:

    objc_autoreleasePoolPop(v9);
    goto LABEL_11;
  }

  context3 = [eventCopy context];
  audioAnalysisEventNotificationCondition = [context3 audioAnalysisEventNotificationCondition];

  if (!audioAnalysisEventNotificationCondition)
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      context2 = [eventCopy context];
      uuid = [context2 uuid];
      v19 = 138543618;
      v20 = v12;
      v21 = 2112;
      v22 = uuid;
      v15 = "%{public}@Notification does not have a condition set for uuid %@";
      goto LABEL_9;
    }

    goto LABEL_10;
  }

LABEL_4:
  isAudioAnalysisEventNotificationEnabled = 1;
LABEL_11:

  v17 = *MEMORY[0x277D85DE8];
  return isAudioAnalysisEventNotificationEnabled;
}

- (id)logIdentifier
{
  context = [(HMDAudioAnalysisEventSubscriber *)self context];
  uuid = [context uuid];
  uUIDString = [uuid UUIDString];

  return uUIDString;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t2_54432 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t2_54432, &__block_literal_global_133);
  }

  v3 = logCategory__hmf_once_v3_54433;

  return v3;
}

void __46__HMDAudioAnalysisEventSubscriber_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v3_54433;
  logCategory__hmf_once_v3_54433 = v1;
}

@end