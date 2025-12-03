@interface HMDModernMessagingHandler
+ (id)logCategory;
- (HMDHome)home;
- (id)_policiesForHMMMRequestHandlerRestriction:(int64_t)restriction;
- (id)contextForRequestID:(id)d;
- (id)initForMappings:(id)mappings;
- (id)initForMappings:(id)mappings withContextFactory:(id)factory;
- (void)_createContextForRequestID:(id)d;
- (void)_handleHMMMRemoteMessage:(id)message;
- (void)_handleXPCConnectionDeactivatedNotification:(id)notification;
- (void)_sendHMMMRemoteMessageToClient:(id)client clientMessageName:(id)name message:(id)message;
- (void)_sendPendingHMMMRemoteMessagesForClientIdentifier:(id)identifier;
- (void)_storePendingHMMMRemoteMessage:(id)message;
- (void)configureWithHome:(id)home;
- (void)configureWithHome:(id)home xpcEventPublisher:(id)publisher;
- (void)handleRegisterHMMMMessage:(id)message;
- (void)handleSendHMMMMessage:(id)message;
- (void)handleUnregisterHMMMMessage:(id)message;
- (void)registerForMessages;
- (void)registerHMMMMessageHandlerWithMessageName:(id)name userRestriction:(int64_t)restriction clientConnection:(id)connection message:(id)message;
@end

@implementation HMDModernMessagingHandler

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (void)handleSendHMMMMessage:(id)message
{
  v117 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    identifier = [messageCopy identifier];
    messageTargetUUID = [(HMDModernMessagingHandler *)selfCopy messageTargetUUID];
    *buf = 138543874;
    v108 = v7;
    v109 = 2112;
    v110 = identifier;
    v111 = 2112;
    v112 = messageTargetUUID;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@handleSendHMMMMessage with message: %@ for target: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
  messagePayload = [messageCopy messagePayload];
  v11 = *MEMORY[0x277CD07F0];
  v12 = [messagePayload hmf_stringForKey:*MEMORY[0x277CD07F0]];
  v13 = [messagePayload hmf_stringForKey:*MEMORY[0x277CD07E0]];
  v14 = [messagePayload hmf_stringForKey:*MEMORY[0x277CD07E8]];
  v15 = *MEMORY[0x277CD0808];
  v16 = [messagePayload hmf_dataForKey:*MEMORY[0x277CD0808]];
  v17 = [messagePayload hmf_dictionaryForKey:*MEMORY[0x277CD0800]];
  v18 = [v17 hmf_numberForKey:*MEMORY[0x277CD07D0]];
  v100 = [v17 hmf_numberForKey:*MEMORY[0x277CD07C8]];
  v98 = v17;
  v19 = [v17 hmf_numberForKey:*MEMORY[0x277CD07C0]];
  v99 = v19;
  if (v12 && v13 && v14 && v19)
  {
    v20 = v18;
    if (!v18)
    {
      v21 = v19;
      v20 = [MEMORY[0x277CCABB0] numberWithInt:2];
      v19 = v21;
    }

    v97 = v13;
    v22 = v100;
    if (!v100)
    {
      v22 = &unk_283E739D0;
    }

    bOOLValue = [v19 BOOLValue];
    v96 = [HMDModernMessagingRegistration prefixedHMMMMessageNameWithMessageName:v12];
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    [dictionary setObject:v16 forKeyedSubscript:v15];
    v95 = dictionary;
    [dictionary setObject:v11 forKeyedSubscript:v11];
    if ([v20 intValue])
    {
      if ([v20 intValue] == 1)
      {
        v24 = 8;
      }

      else
      {
        v24 = -1;
      }
    }

    else
    {
      v24 = 1;
    }

    v92 = v16;
    v33 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v97];
    v94 = v14;
    v34 = [[HMDDeviceAddress alloc] initWithIDSIdentifier:v33 idsDestination:v14];
    contextFactory = [(HMDModernMessagingHandler *)selfCopy contextFactory];
    v91 = v34;
    v36 = [contextFactory deviceForAddress:v34];

    v106 = 0;
    LOBYTE(contextFactory) = [HMDSecureRemoteMessageTransport isDeviceValidDestination:v36 error:&v106];
    v89 = v106;
    v90 = v36;
    v100 = v22;
    if ((contextFactory & 1) == 0)
    {
      v18 = v20;
      v71 = objc_autoreleasePoolPush();
      v72 = selfCopy;
      v73 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v75 = v74 = v33;
        *buf = 138543618;
        v108 = v75;
        v109 = 2112;
        v110 = v89;
        _os_log_impl(&dword_229538000, v73, OS_LOG_TYPE_ERROR, "%{public}@Device is not a valid destination for HMMM Messages, error: %@", buf, 0x16u);

        v33 = v74;
      }

      objc_autoreleasePoolPop(v71);
      [messageCopy respondWithError:v89];
      v13 = v97;
      v32 = v98;
      v26 = v94;
      v76 = v89;
      goto LABEL_41;
    }

    v86 = v33;
    if (bOOLValue)
    {
      v37 = 3;
    }

    else
    {
      v37 = 0;
    }

    v38 = [HMDRemoteDeviceMessageDestination alloc];
    messageTargetUUID2 = [(HMDModernMessagingHandler *)selfCopy messageTargetUUID];
    v40 = [(HMDRemoteDeviceMessageDestination *)v38 initWithTarget:messageTargetUUID2 device:v36];

    v41 = [HMDRemoteMessage alloc];
    qualityOfService = [messageCopy qualityOfService];
    [v22 doubleValue];
    v85 = v40;
    v43 = [(HMDRemoteMessage *)v41 initWithName:v96 qualityOfService:qualityOfService destination:v40 payload:v95 type:v37 timeout:1 secure:v24 restriction:?];
    v44 = objc_autoreleasePoolPush();
    v45 = selfCopy;
    v46 = HMFGetOSLogHandle();
    v87 = v43;
    if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
    {
      v47 = HMFGetLogIdentifier();
      identifier2 = [messageCopy identifier];
      identifier3 = [(HMDRemoteMessage *)v43 identifier];
      *buf = 138543874;
      v108 = v47;
      v109 = 2112;
      v110 = identifier2;
      v111 = 2112;
      v112 = identifier3;
      _os_log_impl(&dword_229538000, v46, OS_LOG_TYPE_INFO, "%{public}@Routing source hmmm message %@ as remote message %@", buf, 0x20u);

      v43 = v87;
    }

    v84 = v20;

    objc_autoreleasePoolPop(v44);
    if ((bOOLValue & 1) == 0)
    {
      identifier4 = [(HMDRemoteMessage *)v43 identifier];
      v102[0] = MEMORY[0x277D85DD0];
      v102[1] = 3221225472;
      v102[2] = __51__HMDModernMessagingHandler_handleSendHMMMMessage___block_invoke;
      v102[3] = &unk_27867DA38;
      v102[4] = v45;
      v102[5] = identifier4;
      v103 = v97;
      v104 = v94;
      v105 = messageCopy;
      [(HMDRemoteMessage *)v43 setResponseHandler:v102];
    }

    messageNameToRequestID = [(HMDModernMessagingHandler *)v45 messageNameToRequestID];
    v52 = [messageNameToRequestID objectForKeyedSubscript:v12];
    v88 = v12;
    if (v52)
    {
      v53 = v52;
      v54 = _messagingHandlerContexts;
      messageNameToRequestID2 = [(HMDModernMessagingHandler *)v45 messageNameToRequestID];
      v56 = [messageNameToRequestID2 objectForKeyedSubscript:v12];
      v57 = [v54 objectForKeyedSubscript:v56];
      if (v57)
      {
        v58 = v57;
        v83 = messageNameToRequestID2;
        v59 = v12;
        v60 = _messagingHandlerContexts;
        messageNameToRequestID3 = [(HMDModernMessagingHandler *)v45 messageNameToRequestID];
        v62 = [messageNameToRequestID3 objectForKeyedSubscript:v59];
        v63 = [v60 objectForKeyedSubscript:v62];
        messageDispatcher = [v63 messageDispatcher];

        if (messageDispatcher)
        {
          v18 = v84;
          v65 = _messagingHandlerContexts;
          messageNameToRequestID4 = [(HMDModernMessagingHandler *)v45 messageNameToRequestID];
          v67 = [messageNameToRequestID4 objectForKeyedSubscript:v88];
          v68 = [v65 objectForKeyedSubscript:v67];
          messageDispatcher2 = [v68 messageDispatcher];
          v70 = v87;
          [messageDispatcher2 sendMessage:v87];

          v33 = v86;
          if (bOOLValue)
          {
            [messageCopy respondWithSuccess];
          }

LABEL_40:

          v12 = v88;
          v76 = v89;
          v13 = v97;
          v32 = v98;
          v26 = v94;
LABEL_41:
          v25 = v92;
          v31 = v96;

          goto LABEL_42;
        }

LABEL_37:
        v77 = objc_autoreleasePoolPush();
        v78 = v45;
        v79 = HMFGetOSLogHandle();
        v33 = v86;
        v70 = v87;
        if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
        {
          v80 = HMFGetLogIdentifier();
          *buf = 138543618;
          v108 = v80;
          v109 = 2112;
          v110 = v88;
          _os_log_impl(&dword_229538000, v79, OS_LOG_TYPE_ERROR, "%{public}@Unknown message name: %@, discarding message", buf, 0x16u);
        }

        v18 = v84;

        objc_autoreleasePoolPop(v77);
        v81 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
        [messageCopy respondWithError:v81];

        goto LABEL_40;
      }
    }

    goto LABEL_37;
  }

  v25 = v16;
  v26 = v14;
  v27 = objc_autoreleasePoolPush();
  v28 = selfCopy;
  v29 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    v30 = HMFGetLogIdentifier();
    *buf = 138544386;
    v108 = v30;
    v109 = 2112;
    v110 = v12;
    v111 = 2112;
    v112 = v13;
    v113 = 2112;
    v114 = v26;
    v115 = 2112;
    v116 = v99;
    _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_ERROR, "%{public}@Cannot send HMMM message, missing required data: messageName: %@, idsIdentifier: %@, tokenURI: %@, oneWayNumber: %@", buf, 0x34u);
  }

  objc_autoreleasePoolPop(v27);
  v31 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
  [messageCopy respondWithError:v31];
  v32 = v98;
LABEL_42:

  v82 = *MEMORY[0x277D85DE8];
}

void __51__HMDModernMessagingHandler_handleSendHMMMMessage___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = *(a1 + 40);
    v16 = 138543618;
    v17 = v10;
    v18 = 2112;
    v19 = v11;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Received response for HMMM message: %@", &v16, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  if (v6)
  {
    v12 = [v6 mutableCopy];
  }

  else
  {
    v12 = [MEMORY[0x277CBEB38] dictionary];
  }

  v13 = v12;
  [v12 setObject:*(a1 + 48) forKeyedSubscript:*MEMORY[0x277CD07E0]];
  [v13 setObject:*(a1 + 56) forKeyedSubscript:*MEMORY[0x277CD07E8]];
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v13];
  [*(a1 + 64) respondWithPayload:v14 error:v5];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)handleUnregisterHMMMMessage:(id)message
{
  v50 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    identifier = [messageCopy identifier];
    *buf = 138543618;
    v45 = v7;
    v46 = 2112;
    v47 = identifier;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@handleUnregisterHMMMMessage with message: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  messagePayload = [messageCopy messagePayload];
  v36 = [messagePayload hmf_stringForKey:*MEMORY[0x277CD07F0]];
  if (v36)
  {
    v38 = [HMDModernMessagingRegistration prefixedHMMMMessageNameWithMessageName:?];
    os_unfair_recursive_lock_lock_with_options();
    registrationsByMessageName = [(HMDModernMessagingHandler *)selfCopy registrationsByMessageName];
    [registrationsByMessageName setObject:0 forKeyedSubscript:v36];

    os_unfair_recursive_lock_unlock();
    v10 = objc_autoreleasePoolPush();
    v11 = selfCopy;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      messageTargetUUID = [(HMDModernMessagingHandler *)v11 messageTargetUUID];
      *buf = 138543874;
      v45 = v13;
      v46 = 2112;
      v47 = v36;
      v48 = 2112;
      v49 = messageTargetUUID;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@(2) Deregistering for remote message with name: %@ for target: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v10);
    v15 = MEMORY[0x277CBEB98];
    messageNameToRequestID = [(HMDModernMessagingHandler *)v11 messageNameToRequestID];
    allValues = [messageNameToRequestID allValues];
    v18 = [v15 setWithArray:allValues];

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v19 = v18;
    v20 = [v19 countByEnumeratingWithState:&v39 objects:v43 count:16];
    if (v20)
    {
      v21 = *v40;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v40 != v21)
          {
            objc_enumerationMutation(v19);
          }

          v23 = *(*(&v39 + 1) + 8 * i);
          v24 = [_messagingHandlerContexts objectForKeyedSubscript:v23];
          if (v24)
          {
            v25 = [_messagingHandlerContexts objectForKeyedSubscript:v23];
            messageDispatcher = [v25 messageDispatcher];
            v27 = messageDispatcher == 0;

            if (!v27)
            {
              v28 = [_messagingHandlerContexts objectForKeyedSubscript:v23];
              messageDispatcher2 = [v28 messageDispatcher];
              [messageDispatcher2 deregisterForMessage:v38 receiver:v11];
            }
          }
        }

        v20 = [v19 countByEnumeratingWithState:&v39 objects:v43 count:16];
      }

      while (v20);
    }

    [messageCopy respondWithSuccess];
  }

  else
  {
    v30 = objc_autoreleasePoolPush();
    v31 = selfCopy;
    v32 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = HMFGetLogIdentifier();
      *buf = 138543618;
      v45 = v33;
      v46 = 2112;
      v47 = 0;
      _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_ERROR, "%{public}@Error unregistering HMMT request handler with message name: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v30);
    v38 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    [messageCopy respondWithError:v38];
  }

  v34 = *MEMORY[0x277D85DE8];
}

- (void)_handleHMMMRemoteMessage:(id)message
{
  v29 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    identifier = [messageCopy identifier];
    v25 = 138543618;
    v26 = v8;
    v27 = 2112;
    v28 = identifier;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Received hm modern messaging remote message: %@", &v25, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  name = [messageCopy name];
  v11 = [HMDModernMessagingRegistration clientHMMMMessageNameFromPrefixedMessageName:name];

  if (v11)
  {
    os_unfair_recursive_lock_lock_with_options();
    registrationsByMessageName = [(HMDModernMessagingHandler *)selfCopy registrationsByMessageName];
    v13 = [registrationsByMessageName objectForKeyedSubscript:v11];
    xpcConnection = [v13 xpcConnection];

    os_unfair_recursive_lock_unlock();
    if (xpcConnection)
    {
      [(HMDModernMessagingHandler *)selfCopy _sendHMMMRemoteMessageToClient:xpcConnection clientMessageName:v11 message:messageCopy];
    }

    else
    {
      eventPublisher = [(HMDModernMessagingHandler *)selfCopy eventPublisher];
      launchOnDemandClientIdentifiersByMessageName = [eventPublisher launchOnDemandClientIdentifiersByMessageName];
      v22 = [launchOnDemandClientIdentifiersByMessageName objectForKeyedSubscript:v11];

      if (v22)
      {
        [(HMDModernMessagingHandler *)selfCopy _storePendingHMMMRemoteMessage:messageCopy];
        eventPublisher2 = [(HMDModernMessagingHandler *)selfCopy eventPublisher];
        [eventPublisher2 publishLaunchEventForBundleID:v22];
      }
    }
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v16 = selfCopy;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      identifier2 = [messageCopy identifier];
      v25 = 138543618;
      v26 = v18;
      v27 = 2112;
      v28 = identifier2;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@HMMM message received without valid prefix. Discarding: %@", &v25, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)_sendPendingHMMMRemoteMessagesForClientIdentifier:(id)identifier
{
  v23 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v20 = v8;
    v21 = 2112;
    v22 = identifierCopy;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Sending pending HMMM messages to client with identifier: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  os_unfair_recursive_lock_lock_with_options();
  pendingMessages = [(HMDModernMessagingHandler *)selfCopy pendingMessages];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __79__HMDModernMessagingHandler__sendPendingHMMMRemoteMessagesForClientIdentifier___block_invoke;
  v17[3] = &unk_27867DA10;
  v17[4] = selfCopy;
  v10 = identifierCopy;
  v18 = v10;
  v11 = [pendingMessages na_filter:v17];

  pendingMessages2 = [(HMDModernMessagingHandler *)selfCopy pendingMessages];
  [pendingMessages2 removeObjectsInArray:v11];

  os_unfair_recursive_lock_unlock();
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __79__HMDModernMessagingHandler__sendPendingHMMMRemoteMessagesForClientIdentifier___block_invoke_2;
  v15[3] = &unk_2786858B0;
  v15[4] = selfCopy;
  v16 = v10;
  v13 = v10;
  [v11 na_each:v15];

  v14 = *MEMORY[0x277D85DE8];
}

uint64_t __79__HMDModernMessagingHandler__sendPendingHMMMRemoteMessagesForClientIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 name];
  v4 = [HMDModernMessagingRegistration clientHMMMMessageNameFromPrefixedMessageName:v3];

  v5 = [*(a1 + 32) eventPublisher];
  v6 = [v5 launchOnDemandClientIdentifiersByMessageName];
  v7 = [v6 objectForKeyedSubscript:v4];

  v8 = [v7 isEqualToString:*(a1 + 40)];
  return v8;
}

void __79__HMDModernMessagingHandler__sendPendingHMMMRemoteMessagesForClientIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [v3 shortDescription];
    v21 = 138543618;
    v22 = v7;
    v23 = 2112;
    v24 = v8;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Sending pending message: %@", &v21, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v9 = [v3 name];
  v10 = [HMDModernMessagingRegistration clientHMMMMessageNameFromPrefixedMessageName:v9];

  v11 = *(a1 + 32);
  os_unfair_recursive_lock_lock_with_options();
  v12 = [*(a1 + 32) registrationsByMessageName];
  v13 = [v12 objectForKeyedSubscript:v10];
  v14 = [v13 xpcConnection];

  os_unfair_recursive_lock_unlock();
  if (v14)
  {
    [*(a1 + 32) _sendHMMMRemoteMessageToClient:v14 clientMessageName:v10 message:v3];
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v16 = *(a1 + 32);
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      v19 = *(a1 + 40);
      v21 = 138543618;
      v22 = v18;
      v23 = 2112;
      v24 = v19;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Failed to send pending HMMM Remote message to client with identifier: %@ ... XPC Client is nil", &v21, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_storePendingHMMMRemoteMessage:(id)message
{
  v18 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    shortDescription = [messageCopy shortDescription];
    v14 = 138543618;
    v15 = v8;
    v16 = 2112;
    v17 = shortDescription;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Storing pending HMMM message: %@", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  os_unfair_recursive_lock_lock_with_options();
  pendingMessages = [(HMDModernMessagingHandler *)selfCopy pendingMessages];
  [pendingMessages addObject:messageCopy];
  while (1)
  {

    pendingMessages2 = [(HMDModernMessagingHandler *)selfCopy pendingMessages];
    v12 = [pendingMessages2 count] > 0x1E;

    if (!v12)
    {
      break;
    }

    pendingMessages = [(HMDModernMessagingHandler *)selfCopy pendingMessages];
    [pendingMessages hmf_removeFirstObject];
  }

  os_unfair_recursive_lock_unlock();

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_sendHMMMRemoteMessageToClient:(id)client clientMessageName:(id)name message:(id)message
{
  v78 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  nameCopy = name;
  messageCopy = message;
  v10 = messageCopy;
  if (nameCopy)
  {
    v11 = messageCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;

    if (v13)
    {
      messagePayload = [v11 messagePayload];
      v15 = *MEMORY[0x277CD0808];
      v16 = [messagePayload hmf_dataForKey:*MEMORY[0x277CD0808]];
      v17 = objc_alloc(MEMORY[0x277D0F820]);
      messageTargetUUID = [(HMDModernMessagingHandler *)self messageTargetUUID];
      v67 = [v17 initWithTarget:messageTargetUUID];

      destination = [v11 destination];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v20 = destination;
      }

      else
      {
        v20 = 0;
      }

      v21 = v20;

      if (v21)
      {
        v62 = messagePayload;
        v65 = v10;
        device = [v21 device];
        deviceAddress = [device deviceAddress];

        v24 = [v13 type] == 3;
        dictionary = [MEMORY[0x277CBEB38] dictionary];
        [dictionary setObject:nameCopy forKeyedSubscript:*MEMORY[0x277CD07F0]];
        [dictionary setObject:v16 forKeyedSubscript:v15];
        v63 = v24;
        v26 = [MEMORY[0x277CCABB0] numberWithBool:v24];
        [dictionary setObject:v26 forKeyedSubscript:*MEMORY[0x277CD07F8]];

        idsIdentifier = [deviceAddress idsIdentifier];
        uUIDString = [idsIdentifier UUIDString];
        [dictionary setObject:uUIDString forKeyedSubscript:*MEMORY[0x277CD07E0]];

        v61 = deviceAddress;
        idsDestination = [deviceAddress idsDestination];
        [dictionary setObject:idsDestination forKeyedSubscript:*MEMORY[0x277CD07E8]];

        home = [(HMDModernMessagingHandler *)self home];
        if (home)
        {
          v31 = [v11 userForHome:home];
          uuid = [v31 uuid];
          [dictionary setObject:uuid forKeyedSubscript:*MEMORY[0x277CD0810]];
        }

        v60 = home;
        v33 = [MEMORY[0x277D0F848] messageWithName:*MEMORY[0x277CD0820] qualityOfService:objc_msgSend(v11 destination:"qualityOfService") payload:{v67, dictionary}];
        [v33 setTransport:clientCopy];
        v69[0] = MEMORY[0x277D85DD0];
        v69[1] = 3221225472;
        v69[2] = __86__HMDModernMessagingHandler__sendHMMMRemoteMessageToClient_clientMessageName_message___block_invoke;
        v69[3] = &unk_27867D9E8;
        v71 = v63;
        v70 = v11;
        [v33 setResponseHandler:v69];
        v34 = objc_autoreleasePoolPush();
        selfCopy = self;
        v36 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
        {
          v37 = HMFGetLogIdentifier();
          [v33 identifier];
          v64 = v21;
          v39 = v38 = v16;
          *buf = 138543874;
          v73 = v37;
          v74 = 2112;
          v75 = v39;
          v76 = 2112;
          v77 = nameCopy;
          _os_log_impl(&dword_229538000, v36, OS_LOG_TYPE_INFO, "%{public}@Dispatching HMMM message %@ with name: %@ to client", buf, 0x20u);

          v16 = v38;
          v21 = v64;
        }

        objc_autoreleasePoolPop(v34);
        localMessageDispatcher = [(HMDModernMessagingHandler *)selfCopy localMessageDispatcher];
        [localMessageDispatcher sendMessage:v33];

        v10 = v65;
        v41 = v61;
        messagePayload = v62;
      }

      else
      {
        v53 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v55 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v56 = v66 = v10;
          [v11 identifier];
          v58 = v57 = messagePayload;
          *buf = 138543618;
          v73 = v56;
          v74 = 2112;
          v75 = v58;
          _os_log_impl(&dword_229538000, v55, OS_LOG_TYPE_ERROR, "%{public}@Invalid sender for HMMT request: %@", buf, 0x16u);

          messagePayload = v57;
          v10 = v66;
        }

        objc_autoreleasePoolPop(v53);
        v41 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
        [v11 respondWithError:v41];
        v21 = 0;
      }
    }

    else
    {
      v47 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v49 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v51 = v50 = v10;
        identifier = [v11 identifier];
        *buf = 138543618;
        v73 = v51;
        v74 = 2112;
        v75 = identifier;
        _os_log_impl(&dword_229538000, v49, OS_LOG_TYPE_ERROR, "%{public}@Invalid message for HMMT request: %@", buf, 0x16u);

        v10 = v50;
      }

      objc_autoreleasePoolPop(v47);
      messagePayload = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
      [v11 respondWithError:messagePayload];
    }
  }

  else
  {
    v42 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v44 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      v45 = HMFGetLogIdentifier();
      identifier2 = [v10 identifier];
      *buf = 138543618;
      v73 = v45;
      v74 = 2112;
      v75 = identifier2;
      _os_log_impl(&dword_229538000, v44, OS_LOG_TYPE_ERROR, "%{public}@HMMM message received without valid prefix. Discarding: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v42);
    v13 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    [v10 respondWithError:v13];
  }

  v59 = *MEMORY[0x277D85DE8];
}

uint64_t __86__HMDModernMessagingHandler__sendHMMMRemoteMessageToClient_clientMessageName_message___block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  if ((*(result + 40) & 1) == 0)
  {
    return [*(result + 32) respondWithPayload:a3 error:a2];
  }

  return result;
}

- (void)handleRegisterHMMMMessage:(id)message
{
  v30 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    identifier = [messageCopy identifier];
    messageTargetUUID = [(HMDModernMessagingHandler *)selfCopy messageTargetUUID];
    v24 = 138543874;
    v25 = v8;
    v26 = 2112;
    v27 = identifier;
    v28 = 2112;
    v29 = messageTargetUUID;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@handleRegisterHMMMMessage with message: %@ for target: %@", &v24, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
  messagePayload = [messageCopy messagePayload];
  v12 = [messagePayload hmf_stringForKey:*MEMORY[0x277CD07F0]];
  v13 = [messagePayload hmf_dictionaryForKey:*MEMORY[0x277CD0800]];
  v14 = [v13 hmf_numberForKey:*MEMORY[0x277CD07D8]];
  if (!v14)
  {
    v14 = [MEMORY[0x277CCABB0] numberWithInt:0];
  }

  transport = [messageCopy transport];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = transport;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  if (v17 && v12)
  {
    -[HMDModernMessagingHandler registerHMMMMessageHandlerWithMessageName:userRestriction:clientConnection:message:](selfCopy, "registerHMMMMessageHandlerWithMessageName:userRestriction:clientConnection:message:", v12, [v14 integerValue], v17, messageCopy);
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    v19 = selfCopy;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      v24 = 138543362;
      v25 = v21;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@Error while registering HMMM request handler: could not determine XPC client or message name", &v24, 0xCu);
    }

    objc_autoreleasePoolPop(v18);
    v22 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    [messageCopy respondWithError:v22];
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)registerHMMMMessageHandlerWithMessageName:(id)name userRestriction:(int64_t)restriction clientConnection:(id)connection message:(id)message
{
  v62 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  connectionCopy = connection;
  messageCopy = message;
  v45 = connectionCopy;
  clientIdentifier = [connectionCopy clientIdentifier];
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    *buf = 138543874;
    v57 = v14;
    v58 = 2112;
    v59 = nameCopy;
    v60 = 2112;
    v61 = clientIdentifier;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Registering message name %@ for client identifier %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v11);
  v49 = [[HMDModernMessagingRegistration alloc] initWithMessageName:nameCopy xpcConnection:connectionCopy];
  v48 = [(HMDModernMessagingHandler *)selfCopy _policiesForHMMMRequestHandlerRestriction:restriction];
  os_unfair_recursive_lock_lock_with_options();
  registrationsByMessageName = [(HMDModernMessagingHandler *)selfCopy registrationsByMessageName];
  [registrationsByMessageName setObject:v49 forKeyedSubscript:nameCopy];

  os_unfair_recursive_lock_unlock();
  eventPublisher = [(HMDModernMessagingHandler *)selfCopy eventPublisher];
  launchOnDemandClientIdentifiersByMessageName = [eventPublisher launchOnDemandClientIdentifiersByMessageName];
  v18 = [launchOnDemandClientIdentifiersByMessageName objectForKeyedSubscript:nameCopy];
  v19 = v18 == 0;

  v20 = objc_autoreleasePoolPush();
  v50 = selfCopy;
  v21 = HMFGetOSLogHandle();
  v22 = os_log_type_enabled(v21, OS_LOG_TYPE_INFO);
  if (v19)
  {
    if (v22)
    {
      v25 = HMFGetLogIdentifier();
      v26 = HMMMUserRestrictionToString();
      *buf = 138543874;
      v57 = v25;
      v58 = 2112;
      v59 = nameCopy;
      v60 = 2112;
      v61 = v26;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@Registering HMMM request handler for message name: %@ with userRestriction: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v20);
    v27 = MEMORY[0x277CBEB98];
    messageNameToRequestID = [(HMDModernMessagingHandler *)v50 messageNameToRequestID];
    allValues = [messageNameToRequestID allValues];
    v30 = [v27 setWithArray:allValues];

    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v31 = v30;
    v32 = [v31 countByEnumeratingWithState:&v51 objects:v55 count:16];
    if (v32)
    {
      v33 = *v52;
      do
      {
        for (i = 0; i != v32; ++i)
        {
          if (*v52 != v33)
          {
            objc_enumerationMutation(v31);
          }

          v35 = *(*(&v51 + 1) + 8 * i);
          v36 = [_messagingHandlerContexts objectForKeyedSubscript:v35];
          if (v36)
          {
            v37 = [_messagingHandlerContexts objectForKeyedSubscript:v35];
            messageDispatcher = [v37 messageDispatcher];
            v39 = messageDispatcher == 0;

            if (!v39)
            {
              v40 = [_messagingHandlerContexts objectForKeyedSubscript:v35];
              messageDispatcher2 = [v40 messageDispatcher];
              prefixedMessageName = [(HMDModernMessagingRegistration *)v49 prefixedMessageName];
              [messageDispatcher2 registerForMessage:prefixedMessageName receiver:v50 policies:v48 selector:sel__handleHMMMRemoteMessage_];
            }
          }
        }

        v32 = [v31 countByEnumeratingWithState:&v51 objects:v55 count:16];
      }

      while (v32);
    }
  }

  else
  {
    if (v22)
    {
      v23 = HMFGetLogIdentifier();
      v24 = HMMMUserRestrictionToString();
      *buf = 138543874;
      v57 = v23;
      v58 = 2112;
      v59 = nameCopy;
      v60 = 2112;
      v61 = v24;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@Not registering HMMM request handler for message name: %@ with userRestriction: %@, already registered via launch on demand", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v20);
  }

  [messageCopy respondWithSuccess];
  [(HMDModernMessagingHandler *)v50 _sendPendingHMMMRemoteMessagesForClientIdentifier:clientIdentifier];

  v43 = *MEMORY[0x277D85DE8];
}

- (void)_handleXPCConnectionDeactivatedNotification:(id)notification
{
  v28 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:@"connection"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (!v8)
  {
    _HMFPreconditionFailure();
  }

  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    clientIdentifier = [v8 clientIdentifier];
    *buf = 138543618;
    v25 = v12;
    v26 = 2112;
    v27 = clientIdentifier;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@XPC connection deactivated with client identifier: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  array = [MEMORY[0x277CBEB18] array];
  os_unfair_recursive_lock_lock_with_options();
  registrationsByMessageName = [(HMDModernMessagingHandler *)selfCopy registrationsByMessageName];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __73__HMDModernMessagingHandler__handleXPCConnectionDeactivatedNotification___block_invoke;
  v21[3] = &unk_27867D9C0;
  v16 = v8;
  v22 = v16;
  v17 = array;
  v23 = v17;
  [registrationsByMessageName na_each:v21];

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __73__HMDModernMessagingHandler__handleXPCConnectionDeactivatedNotification___block_invoke_2;
  v20[3] = &unk_278688770;
  v20[4] = selfCopy;
  [v17 na_each:v20];

  os_unfair_recursive_lock_unlock();
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __73__HMDModernMessagingHandler__handleXPCConnectionDeactivatedNotification___block_invoke_3;
  v19[3] = &unk_278688770;
  v19[4] = selfCopy;
  [v17 na_each:v19];

  v18 = *MEMORY[0x277D85DE8];
}

void __73__HMDModernMessagingHandler__handleXPCConnectionDeactivatedNotification___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = [a3 xpcConnection];
  v6 = [v5 isEqual:*(a1 + 32)];

  if (v6)
  {
    [*(a1 + 40) addObject:v7];
  }
}

void __73__HMDModernMessagingHandler__handleXPCConnectionDeactivatedNotification___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 registrationsByMessageName];
  [v4 setObject:0 forKeyedSubscript:v3];
}

void __73__HMDModernMessagingHandler__handleXPCConnectionDeactivatedNotification___block_invoke_3(uint64_t a1, void *a2)
{
  v43 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) eventPublisher];
  v5 = [v4 launchOnDemandClientIdentifiersByMessageName];
  v6 = [v5 objectForKeyedSubscript:v3];

  if (!v6)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [*(a1 + 32) messageTargetUUID];
      *buf = 138543874;
      v38 = v10;
      v39 = 2112;
      v40 = v3;
      v41 = 2112;
      v42 = v11;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@(Cleanup) Deregistering for remote message with name: %@ for target: %@", buf, 0x20u);
    }

    v31 = v3;

    objc_autoreleasePoolPop(v7);
    v12 = MEMORY[0x277CBEB98];
    v13 = a1;
    v14 = [*(a1 + 32) messageNameToRequestID];
    v15 = [v14 allValues];
    v16 = [v12 setWithArray:v15];

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v17 = v16;
    v18 = [v17 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v33;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v33 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v32 + 1) + 8 * i);
          v23 = [_messagingHandlerContexts objectForKeyedSubscript:v22];
          if (v23)
          {
            v24 = v23;
            v25 = [_messagingHandlerContexts objectForKeyedSubscript:v22];
            v26 = [v25 messageDispatcher];

            if (v26)
            {
              v27 = [_messagingHandlerContexts objectForKeyedSubscript:v22];
              v28 = [v27 messageDispatcher];
              v29 = [HMDModernMessagingRegistration prefixedHMMMMessageNameWithMessageName:v31];
              [v28 deregisterForMessage:v29 receiver:*(v13 + 32)];
            }
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v19);
    }

    v3 = v31;
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (id)_policiesForHMMMRequestHandlerRestriction:(int64_t)restriction
{
  v15[2] = *MEMORY[0x277D85DE8];
  v5 = +[(HMDRemoteMessagePolicy *)HMDMutableRemoteMessagePolicy];
  v6 = v5;
  if (restriction == 2)
  {
    v13[0] = v5;
    userPolicy = [(HMDModernMessagingHandler *)self userPolicy];
    v13[1] = userPolicy;
    v8 = v13;
  }

  else if (restriction == 1)
  {
    v14[0] = v5;
    userPolicy = [(HMDModernMessagingHandler *)self adminPolicy];
    v14[1] = userPolicy;
    v8 = v14;
  }

  else if (restriction)
  {
    v12[0] = v5;
    userPolicy = [(HMDModernMessagingHandler *)self ownerPolicy];
    v12[1] = userPolicy;
    v8 = v12;
  }

  else
  {
    v15[0] = v5;
    userPolicy = [(HMDModernMessagingHandler *)self ownerPolicy];
    v15[1] = userPolicy;
    v8 = v15;
  }

  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)registerForMessages
{
  v28[2] = *MEMORY[0x277D85DE8];
  localMessageDispatcher = [(HMDModernMessagingHandler *)self localMessageDispatcher];
  v4 = *MEMORY[0x277CD0828];
  v5 = [HMDXPCMessagePolicy policyWithEntitlements:4194309];
  v28[0] = v5;
  v6 = [HMDXPCBackgroundMessagePolicy policyWithEntitlementRequirement:1];
  v28[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:2];
  [localMessageDispatcher registerForMessage:v4 receiver:self policies:v7 selector:sel_handleSendHMMMMessage_];

  localMessageDispatcher2 = [(HMDModernMessagingHandler *)self localMessageDispatcher];
  v9 = *MEMORY[0x277CD0818];
  v10 = [HMDXPCMessagePolicy policyWithEntitlements:4194309];
  v27[0] = v10;
  v11 = [HMDXPCBackgroundMessagePolicy policyWithEntitlementRequirement:1];
  v27[1] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];
  [localMessageDispatcher2 registerForMessage:v9 receiver:self policies:v12 selector:sel_handleRegisterHMMMMessage_];

  localMessageDispatcher3 = [(HMDModernMessagingHandler *)self localMessageDispatcher];
  v14 = *MEMORY[0x277CD0830];
  v15 = [HMDXPCMessagePolicy policyWithEntitlements:4194309];
  v26[0] = v15;
  v16 = [HMDXPCBackgroundMessagePolicy policyWithEntitlementRequirement:1];
  v26[1] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
  [localMessageDispatcher3 registerForMessage:v14 receiver:self policies:v17 selector:sel_handleUnregisterHMMMMessage_];

  v18 = [(HMDModernMessagingHandler *)self _policiesForHMMMRequestHandlerRestriction:2];
  eventPublisher = [(HMDModernMessagingHandler *)self eventPublisher];
  launchOnDemandClientIdentifiersByMessageName = [eventPublisher launchOnDemandClientIdentifiersByMessageName];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __48__HMDModernMessagingHandler_registerForMessages__block_invoke;
  v24[3] = &unk_27867D998;
  v24[4] = self;
  v25 = v18;
  v21 = v18;
  [launchOnDemandClientIdentifiersByMessageName na_each:v24];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__handleXPCConnectionDeactivatedNotification_ name:@"HMDXPCClientConnectionDidDeactivateNotification" object:0];

  v23 = *MEMORY[0x277D85DE8];
}

void __48__HMDModernMessagingHandler_registerForMessages__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v43 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v28 = a3;
  v29 = v5;
  v31 = [HMDModernMessagingRegistration prefixedHMMMMessageNameWithMessageName:v5];
  v6 = objc_autoreleasePoolPush();
  v7 = *(a1 + 32);
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [*(a1 + 32) messageTargetUUID];
    *buf = 138543874;
    v38 = v9;
    v39 = 2112;
    v40 = v31;
    v41 = 2112;
    v42 = v10;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Registering for launch on demand message with name: %@ for target: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v6);
  v11 = MEMORY[0x277CBEB98];
  v30 = a1;
  v12 = [*(a1 + 32) messageNameToRequestID];
  v13 = [v12 allValues];
  v14 = [v11 setWithArray:v13];

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v15 = v14;
  v16 = [v15 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v33;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v33 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v32 + 1) + 8 * i);
        v21 = [_messagingHandlerContexts objectForKeyedSubscript:v20];
        if (v21)
        {
          v22 = v21;
          v23 = [_messagingHandlerContexts objectForKeyedSubscript:v20];
          v24 = [v23 messageDispatcher];

          if (v24)
          {
            v25 = [_messagingHandlerContexts objectForKeyedSubscript:v20];
            v26 = [v25 messageDispatcher];
            [v26 registerForMessage:v31 receiver:*(v30 + 32) policies:*(v30 + 40) selector:sel__handleHMMMRemoteMessage_];
          }
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v17);
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)configureWithHome:(id)home
{
  homeCopy = home;
  v5 = +[HMDModernMessagingXPCEventPublisher shared];
  [(HMDModernMessagingHandler *)self configureWithHome:homeCopy xpcEventPublisher:v5];
}

- (void)configureWithHome:(id)home xpcEventPublisher:(id)publisher
{
  publisherCopy = publisher;
  homeCopy = home;
  [(HMDModernMessagingHandler *)self setHome:homeCopy];
  messageTargetUUID = [homeCopy messageTargetUUID];
  [(HMDModernMessagingHandler *)self setHomeUUID:messageTargetUUID];

  messageReceiveQueue = [homeCopy messageReceiveQueue];
  [(HMDModernMessagingHandler *)self setWorkQueue:messageReceiveQueue];

  msgDispatcher = [homeCopy msgDispatcher];
  [(HMDModernMessagingHandler *)self setLocalMessageDispatcher:msgDispatcher];

  v11 = [HMDUserMessagePolicy userMessagePolicyWithHome:homeCopy userPrivilege:3 remoteAccessRequired:0];
  [(HMDModernMessagingHandler *)self setOwnerPolicy:v11];

  v12 = [HMDUserMessagePolicy userMessagePolicyWithHome:homeCopy userPrivilege:4 remoteAccessRequired:0];
  [(HMDModernMessagingHandler *)self setAdminPolicy:v12];

  v13 = [HMDUserMessagePolicy userMessagePolicyWithHome:homeCopy userPrivilege:0 remoteAccessRequired:0];

  [(HMDModernMessagingHandler *)self setUserPolicy:v13];
  [(HMDModernMessagingHandler *)self setEventPublisher:publisherCopy];

  [(HMDModernMessagingHandler *)self registerForMessages];
}

- (id)initForMappings:(id)mappings withContextFactory:(id)factory
{
  v32 = *MEMORY[0x277D85DE8];
  mappingsCopy = mappings;
  factoryCopy = factory;
  v30.receiver = self;
  v30.super_class = HMDModernMessagingHandler;
  v8 = [(HMDModernMessagingHandler *)&v30 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_contextFactory, factory);
    v10 = [mappingsCopy copy];
    messageNameToRequestID = v9->_messageNameToRequestID;
    v9->_messageNameToRequestID = v10;

    v12 = MEMORY[0x277CBEB98];
    allValues = [(NSDictionary *)v9->_messageNameToRequestID allValues];
    v14 = [v12 setWithArray:allValues];

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v15 = v14;
    v16 = [v15 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v27;
      do
      {
        v19 = 0;
        do
        {
          if (*v27 != v18)
          {
            objc_enumerationMutation(v15);
          }

          [(HMDModernMessagingHandler *)v9 _createContextForRequestID:*(*(&v26 + 1) + 8 * v19++), v26];
        }

        while (v17 != v19);
        v17 = [v15 countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v17);
    }

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    registrationsByMessageName = v9->_registrationsByMessageName;
    v9->_registrationsByMessageName = dictionary;

    v22 = [MEMORY[0x277CBEB18] arrayWithCapacity:30];
    pendingMessages = v9->_pendingMessages;
    v9->_pendingMessages = v22;
  }

  v24 = *MEMORY[0x277D85DE8];
  return v9;
}

- (id)initForMappings:(id)mappings
{
  mappingsCopy = mappings;
  v5 = +[HMDAccountRegistry sharedRegistry];
  v6 = [[HMDModernMessagingHandlerDefaultContextFactory alloc] initWithAccountRegistry:v5];
  v7 = [(HMDModernMessagingHandler *)self initForMappings:mappingsCopy withContextFactory:v6];

  return v7;
}

- (void)_createContextForRequestID:(id)d
{
  dCopy = d;
  v4 = _messagingHandlerContexts;
  objc_sync_enter(v4);
  v5 = dCopy;
  v6 = _messagingHandlerContexts;
  if (!_messagingHandlerContexts)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v8 = _messagingHandlerContexts;
    _messagingHandlerContexts = v7;

    v6 = _messagingHandlerContexts;
    v5 = dCopy;
  }

  v9 = [v6 objectForKeyedSubscript:v5];

  if (!v9)
  {
    contextFactory = [(HMDModernMessagingHandler *)self contextFactory];
    v11 = [contextFactory createContextForRequestID:dCopy];
    [_messagingHandlerContexts setObject:v11 forKeyedSubscript:dCopy];
  }

  objc_sync_exit(v4);
}

- (id)contextForRequestID:(id)d
{
  if (d)
  {
    v4 = [_messagingHandlerContexts objectForKeyedSubscript:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_184797 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_184797, &__block_literal_global_184798);
  }

  v3 = logCategory__hmf_once_v1_184799;

  return v3;
}

void __40__HMDModernMessagingHandler_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_184799;
  logCategory__hmf_once_v1_184799 = v1;
}

@end