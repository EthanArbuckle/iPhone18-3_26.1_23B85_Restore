@interface HMDAudioAnalysisEventSubscriber
+ (id)logCategory;
- (BOOL)shouldPublishEvent:(id)a3;
- (HMDAudioAnalysisEventSubscriber)initWithContext:(id)a3;
- (NSUUID)messageTargetUUID;
- (OS_dispatch_queue)messageReceiveQueue;
- (id)logIdentifier;
- (id)mediaSystemLastKnownEventKeyForAccessoryUUID:(id)a3 pairedAccessoryUUID:(id)a4 reason:(unint64_t)a5;
- (id)stereoPairedCounterpartAccessory;
- (id)transformHMDBulletinToHMBulletin:(id)a3;
- (void)_handleAudioAnalysisEventMessage:(id)a3;
- (void)_postBulletinNotificationWithBulletin:(id)a3;
- (void)_postOrUpdateNotificationWithBulletin:(id)a3;
- (void)_postOrUpdateNotificationWithBulletin:(id)a3 stereoPairedAccessory:(id)a4;
- (void)_postUpdateEventRouterEventIfDifferent:(id)a3;
- (void)configureWithContext:(id)a3;
- (void)deregisterForMessages;
- (void)postNotificationForEvent:(id)a3;
- (void)postOrUpdateNotificationWithBulletinIfneeded:(id)a3;
- (void)registerForMessages;
@end

@implementation HMDAudioAnalysisEventSubscriber

- (void)_postUpdateEventRouterEventIfDifferent:(id)a3
{
  v64 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v59 = v8;
    v60 = 2112;
    v61 = v4;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Posting audio analysis event for bulletin: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [v4 context];
  v10 = [v9 accessory];
  v11 = [v10 uuid];

  v12 = [v11 UUIDString];
  if (v12)
  {
    v13 = [(HMDAudioAnalysisEventSubscriber *)v6 transformHMDBulletinToHMBulletin:v4];
    v14 = MEMORY[0x277CD1848];
    v15 = [(HMDAudioAnalysisEventSubscriber *)v6 context];
    v16 = [v15 home];
    v17 = [v16 uuid];
    v18 = [v14 topicWithAccessoryUUID:v11 homeUUID:v17];

    if (!v18)
    {
      v37 = objc_autoreleasePoolPush();
      v38 = v6;
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

    v19 = [(HMDAudioAnalysisEventSubscriber *)v6 context];
    v20 = [v19 eventStoreReadHandle];

    v55 = v20;
    v21 = [v20 lastEventForTopic:v18];
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
    v24 = v6;
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
      v29 = v6;
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
      v42 = v6;
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
    v48 = [v47 initWithBulletins:v45 eventSource:v12 eventTimestamp:?];
    v49 = [(HMDAudioAnalysisEventSubscriber *)v6 context];
    [v49 forwardEvent:v48 topic:v18 completion:&__block_literal_global_163];

LABEL_28:
LABEL_29:

    goto LABEL_30;
  }

  v33 = objc_autoreleasePoolPush();
  v34 = v6;
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

- (id)transformHMDBulletinToHMBulletin:(id)a3
{
  v3 = a3;
  v4 = [v3 context];
  v5 = [v4 accessory];

  v6 = objc_alloc(MEMORY[0x277CD1850]);
  v7 = [v5 spiClientIdentifier];
  v8 = [v5 home];
  v9 = [v8 spiClientIdentifier];
  v10 = [v3 startDate];
  v11 = [v3 dateOfOccurrence];
  v12 = [v3 reason];
  v13 = [v3 state];

  v14 = [v6 initWithAccessoryIdentifier:v7 homeIdentifier:v9 startDate:v10 endDate:v11 reason:v12 state:v13];

  return v14;
}

- (void)_handleAudioAnalysisEventMessage:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v21 = 138543618;
    v22 = v8;
    v23 = 2112;
    v24 = v4;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Received audio analysis notification message %@", &v21, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [v4 messagePayload];
  v10 = [v9 hmf_dictionaryForKey:@"HMDAudioAnalysisBulletinDataMessageKey"];

  v11 = [[HMDAudioAnalysisEventBulletin alloc] initWithDictionary:v10];
  v12 = [HMDAudioAnalysisNotificationReceivedLogEvent alloc];
  v13 = [(HMDAudioAnalysisEventBulletin *)v11 reason];
  v14 = [(HMDAudioAnalysisEventBulletin *)v11 state];
  v15 = [(HMDAudioAnalysisEventBulletin *)v11 dateOfOccurrence];
  v16 = [(HMDAudioAnalysisNotificationReceivedLogEvent *)v12 initWithReason:v13 state:v14 notificationSentDate:v15];

  v17 = [(HMDAudioAnalysisEventSubscriber *)v6 context];
  [(HMDAudioAnalysisEventBulletin *)v11 configureWithContext:v17];

  if (v11)
  {
    [(HMDAudioAnalysisEventSubscriber *)v6 postNotificationForEvent:v11];
    v18 = [(HMDAudioAnalysisEventSubscriber *)v6 context];
    [v18 submitLogEvent:v16];
  }

  v19 = [(HMDAudioAnalysisEventSubscriber *)v6 context];
  [v19 submitLogEvent:v16];

  [v4 respondWithPayload:0];
  v20 = *MEMORY[0x277D85DE8];
}

- (void)_postBulletinNotificationWithBulletin:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v13 = 138543618;
    v14 = v8;
    v15 = 2112;
    v16 = v4;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Posting audio analysis bulletin notification: %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [v4 state];
  if (v9 == 1)
  {
    v10 = [(HMDAudioAnalysisEventSubscriber *)v6 context];
    v11 = [v10 bulletinBoard];
    [v11 updateAudioAnalysisEventNotification:v4];
    goto LABEL_7;
  }

  if (!v9)
  {
    v10 = [(HMDAudioAnalysisEventSubscriber *)v6 context];
    v11 = [v10 bulletinBoard];
    [v11 insertAudioAnalysisEventNotification:v4];
LABEL_7:
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_postOrUpdateNotificationWithBulletin:(id)a3
{
  v4 = a3;
  [(HMDAudioAnalysisEventSubscriber *)self _postUpdateEventRouterEventIfDifferent:v4];
  [(HMDAudioAnalysisEventSubscriber *)self _postBulletinNotificationWithBulletin:v4];
}

- (id)mediaSystemLastKnownEventKeyForAccessoryUUID:(id)a3 pairedAccessoryUUID:(id)a4 reason:(unint64_t)a5
{
  v5 = 0;
  v19[2] = *MEMORY[0x277D85DE8];
  if (a3 && a4)
  {
    v8 = a4;
    v9 = [a3 UUIDString];
    v19[0] = v9;
    v10 = [v8 UUIDString];

    v19[1] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];

    v12 = [v11 sortedArrayUsingSelector:sel_compare_];

    v13 = MEMORY[0x277CCACA8];
    v14 = [v12 objectAtIndexedSubscript:0];
    v15 = [v12 objectAtIndexedSubscript:1];
    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a5];
    v5 = [v13 stringWithFormat:@"accessory:%@.accessory:%@.reason.%@", v14, v15, v16];
  }

  v17 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)_postOrUpdateNotificationWithBulletin:(id)a3 stereoPairedAccessory:(id)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDAudioAnalysisEventSubscriber *)self context];
  v9 = [v8 uuid];
  v26 = v7;
  v10 = [v7 uuid];
  v11 = -[HMDAudioAnalysisEventSubscriber mediaSystemLastKnownEventKeyForAccessoryUUID:pairedAccessoryUUID:reason:](self, "mediaSystemLastKnownEventKeyForAccessoryUUID:pairedAccessoryUUID:reason:", v9, v10, [v6 reason]);

  v12 = objc_autoreleasePoolPush();
  v13 = self;
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
  v16 = [(HMDAudioAnalysisEventSubscriber *)v13 transformHMDBulletinToHMBulletin:v6];
  v17 = [(HMDAudioAnalysisEventSubscriber *)v13 context];
  v18 = [v17 home];
  v19 = [v18 audioAnalysisStereoPairController];
  v20 = [v6 context];
  v21 = [v20 accessory];
  v22 = [v6 notificationUUID];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __95__HMDAudioAnalysisEventSubscriber__postOrUpdateNotificationWithBulletin_stereoPairedAccessory___block_invoke;
  v27[3] = &unk_278674260;
  v27[4] = v13;
  v28 = v11;
  v29 = v6;
  v23 = v6;
  v24 = v11;
  [v19 compareOrUpdateRecentAudioAnalysisStereoPairEvent:v16 key:v24 accessory:v21 notificationUUID:v22 window:20 completion:v27];

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

- (void)postOrUpdateNotificationWithBulletinIfneeded:(id)a3
{
  v4 = a3;
  v5 = [(HMDAudioAnalysisEventSubscriber *)self stereoPairedCounterpartAccessory];
  v6 = v5;
  if (v5)
  {
    [(HMDAudioAnalysisEventSubscriber *)self _postOrUpdateNotificationWithBulletin:v4 stereoPairedAccessory:v5];
  }

  else
  {
    [(HMDAudioAnalysisEventSubscriber *)self _postOrUpdateNotificationWithBulletin:v4];
  }
}

- (void)postNotificationForEvent:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [v4 accessoryUUID];
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v4, "reason")}];
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v4, "state")}];
    v12 = [v4 notificationUUID];
    v18 = 138544386;
    v19 = v8;
    v20 = 2112;
    v21 = v9;
    v22 = 2112;
    v23 = v10;
    v24 = 2112;
    v25 = v11;
    v26 = 2112;
    v27 = v12;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Posting notification from accessoryUUID: %@, reason: %@, state: %@, notificationUUID: %@", &v18, 0x34u);
  }

  objc_autoreleasePoolPop(v5);
  if ([(HMDAudioAnalysisEventSubscriber *)v6 shouldPublishEvent:v4])
  {
    [(HMDAudioAnalysisEventSubscriber *)v6 postOrUpdateNotificationWithBulletinIfneeded:v4];
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = v6;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v18 = 138543618;
      v19 = v16;
      v20 = 2112;
      v21 = v4;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Notification predicate evaluation failed, not posting the notification for bulletin: %@", &v18, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)deregisterForMessages
{
  v4 = [(HMDAudioAnalysisEventSubscriber *)self context];
  v3 = [v4 dispatcher];
  [v3 deregisterReceiver:self];
}

- (void)registerForMessages
{
  v13[2] = *MEMORY[0x277D85DE8];
  v3 = +[HMDRemoteMessagePolicy defaultSecurePolicy];
  v13[0] = v3;
  v4 = [(HMDAudioAnalysisEventSubscriber *)self context];
  v5 = [v4 home];
  v6 = [HMDUserMessagePolicy userMessagePolicyWithHome:v5 userPrivilege:0 remoteAccessRequired:0];
  v13[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];

  v8 = [(HMDAudioAnalysisEventSubscriber *)self context];
  v9 = [v8 dispatcher];
  [v9 registerForMessage:@"HMDAudioAnalysisEventMessageKey" receiver:self policies:v7 selector:sel__handleAudioAnalysisEventMessage_];

  v10 = [(HMDAudioAnalysisEventSubscriber *)self context];
  v11 = [v10 dispatcher];
  [v11 registerForMessage:@"HMDAudioAnalysisPrimaryResidentRouteEventRequestMessage" receiver:self policies:v7 selector:sel__handleAudioAnalysisEventMessage_];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)configureWithContext:(id)a3
{
  objc_storeStrong(&self->_context, a3);

  [(HMDAudioAnalysisEventSubscriber *)self registerForMessages];
}

- (HMDAudioAnalysisEventSubscriber)initWithContext:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = HMDAudioAnalysisEventSubscriber;
  v5 = [(HMDAudioAnalysisEventSubscriber *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(HMDAudioAnalysisEventSubscriber *)v5 configureWithContext:v4];
  }

  return v6;
}

- (OS_dispatch_queue)messageReceiveQueue
{
  v2 = [(HMDAudioAnalysisEventSubscriber *)self context];
  v3 = [v2 workQueue];

  return v3;
}

- (NSUUID)messageTargetUUID
{
  v2 = [(HMDAudioAnalysisEventSubscriber *)self context];
  v3 = [v2 uuid];

  return v3;
}

- (id)stereoPairedCounterpartAccessory
{
  v3 = [(HMDAudioAnalysisEventSubscriber *)self context];
  v4 = [v3 home];

  if (v4)
  {
    v5 = [v4 mediaSystemController];
    v6 = [v5 mediaSystems];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __67__HMDAudioAnalysisEventSubscriber_stereoPairedCounterpartAccessory__block_invoke;
    v14[3] = &unk_278675410;
    v14[4] = self;
    v7 = [v6 na_firstObjectPassingTest:v14];

    v8 = [v7 accessories];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __67__HMDAudioAnalysisEventSubscriber_stereoPairedCounterpartAccessory__block_invoke_3;
    v13[3] = &unk_278681708;
    v13[4] = self;
    v9 = [v8 na_firstObjectPassingTest:v13];

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

- (BOOL)shouldPublishEvent:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!_os_feature_enabled_impl())
  {
    goto LABEL_4;
  }

  v5 = [v4 context];
  v6 = [v5 isAudioAnalysisEventNotificationEnabled];

  if ((v6 & 1) == 0)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [v4 context];
      v14 = [v13 uuid];
      v19 = 138543618;
      v20 = v12;
      v21 = 2112;
      v22 = v14;
      v15 = "%{public}@Notification is not enabled for uuid %@";
LABEL_9:
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, v15, &v19, 0x16u);
    }

LABEL_10:

    objc_autoreleasePoolPop(v9);
    goto LABEL_11;
  }

  v7 = [v4 context];
  v8 = [v7 audioAnalysisEventNotificationCondition];

  if (!v8)
  {
    v9 = objc_autoreleasePoolPush();
    v16 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [v4 context];
      v14 = [v13 uuid];
      v19 = 138543618;
      v20 = v12;
      v21 = 2112;
      v22 = v14;
      v15 = "%{public}@Notification does not have a condition set for uuid %@";
      goto LABEL_9;
    }

    goto LABEL_10;
  }

LABEL_4:
  v6 = 1;
LABEL_11:

  v17 = *MEMORY[0x277D85DE8];
  return v6;
}

- (id)logIdentifier
{
  v2 = [(HMDAudioAnalysisEventSubscriber *)self context];
  v3 = [v2 uuid];
  v4 = [v3 UUIDString];

  return v4;
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