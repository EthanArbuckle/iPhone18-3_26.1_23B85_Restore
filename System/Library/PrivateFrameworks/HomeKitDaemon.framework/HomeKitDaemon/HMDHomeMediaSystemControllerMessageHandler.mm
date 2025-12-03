@interface HMDHomeMediaSystemControllerMessageHandler
+ (id)logCategory;
- (BOOL)_shouldAddMediaSystemBypassPrimary:(id)primary outSetupAccessoryUUID:(id *)d outFallbackReason:(unint64_t *)reason;
- (HMDHome)home;
- (HMDHomeMediaSystemControllerMessageHandler)initWithQueue:(id)queue home:(id)home messageDispatcher:(id)dispatcher delegate:(id)delegate;
- (HMDHomeMediaSystemControllerMessageHandler)initWithQueue:(id)queue home:(id)home messageDispatcher:(id)dispatcher delegate:(id)delegate featuresDataSource:(id)source;
- (HMDHomeMediaSystemControllerMessageHandlerDelegate)delegate;
- (NSUUID)messageTargetUUID;
- (id)appleMediaAccessoryWithUUID:(id)d;
- (id)homeUUID;
- (id)logIdentifier;
- (id)mediaGroupsAggregator;
- (id)mediaSystemNameFromRoomWithAccessoryUUIDs:(id)ds;
- (id)messageDestination;
- (id)messageRouter;
- (id)preProcessMediaSystemMessage:(id)message;
- (id)preferredAssociatedGroupIdentifierForMediaSystemBuilderPayload:(id)payload;
- (id)stagingMediaSystemDataFromData:(id)data accessoryUUIDs:(id)ds;
- (id)unconfiguredParticipantOnboardingManager;
- (id)updateMediaSystemCompletionBlockWithMessage:(id)message data:(id)data accessoryUUIDs:(id)ds;
- (id)updateParticipantWithAccessoryUUID:(id)d associatedGroupIdentifier:(id)identifier;
- (id)updateParticipantWithDestinationManager:(id)manager associatedGroupIdentifier:(id)identifier;
- (id)validateConfiguredName:(id)name;
- (id)validatePayload:(id)payload;
- (void)_legacyHandleAddMediaSystem:(id)system;
- (void)_legacyHandleAddMediaSystemWithPreProcessedMessage:(id)message;
- (void)_legacyHandleRemoveMediaSystem:(id)system;
- (void)_legacyHandleUpdateMediaSystem:(id)system;
- (void)_logAddMediaSystemMetricsUsingMessage:(id)message setupAccessoryUUID:(id)d setupRequestOption:(unint64_t)option;
- (void)_logRemoveMediaSystemMetricsUsingMessage:(id)message;
- (void)_registerForMessages;
- (void)_routeMessage:(id)message localHandler:(id)handler;
- (void)_sendRemoteMessageToAddMediaSystemBypassPrimary:(id)primary;
- (void)_sendRemoteMessageWithXPCMessage:(id)message device:(id)device withRetries:(unint64_t)retries delay:(double)delay lastError:(id)error;
- (void)handleAddMediaSystemBypassPrimary:(id)primary;
- (void)locallyAddMediaSystemUsingRequestMessage:(id)message;
- (void)locallyRemoveMediaSystemUsingRemoveRequestMessage:(id)message;
- (void)locallyUpdateMediaSystemUsingRequestMessage:(id)message;
- (void)queueOnboardingForUnconfiguredParticipantWithAccessoryUUID:(id)d associatedGroupIdentifier:(id)identifier;
- (void)routeAddMediaSystem:(id)system;
- (void)routeRemoveMediaSystem:(id)system;
- (void)routeUpdateMediaSystem:(id)system;
- (void)updateParticipantWithDestinationIdentifier:(id)identifier associatedGroupIdentifier:(id)groupIdentifier;
- (void)updateParticipantWithDestinationIdentifiers:(id)identifiers associatedGroupIdentifier:(id)identifier;
@end

@implementation HMDHomeMediaSystemControllerMessageHandler

- (HMDHomeMediaSystemControllerMessageHandlerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (id)logIdentifier
{
  messageTargetUUID = [(HMDHomeMediaSystemControllerMessageHandler *)self messageTargetUUID];
  uUIDString = [messageTargetUUID UUIDString];

  return uUIDString;
}

- (id)messageDestination
{
  v3 = objc_alloc(MEMORY[0x277D0F820]);
  messageTargetUUID = [(HMDHomeMediaSystemControllerMessageHandler *)self messageTargetUUID];
  v5 = [v3 initWithTarget:messageTargetUUID];

  return v5;
}

- (NSUUID)messageTargetUUID
{
  home = [(HMDHomeMediaSystemControllerMessageHandler *)self home];
  uuid = [home uuid];

  return uuid;
}

- (void)_routeMessage:(id)message localHandler:(id)handler
{
  v45 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  handlerCopy = handler;
  home = [(HMDHomeMediaSystemControllerMessageHandler *)self home];
  v9 = home;
  if (!home)
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      v39 = 138543362;
      v40 = v18;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Cannot route the message: home is nil", &v39, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
    v19 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:2018];
    goto LABEL_12;
  }

  primaryResident = [home primaryResident];
  isConfirmed = [primaryResident isConfirmed];

  primaryResident2 = [v9 primaryResident];
  device = [primaryResident2 device];
  isCurrentDevice = [device isCurrentDevice];

  if (!isConfirmed || !isCurrentDevice)
  {
    if (![messageCopy isRemote])
    {
      v25 = [messageCopy copy];
      v24 = [v25 mutableCopy];

      [v24 setRemote:1];
      [v24 setSecureRemote:1];
      [v24 setTimeout:90.0];
      v26 = [HMDRemoteHomeMessageDestination alloc];
      destination = [messageCopy destination];
      target = [destination target];
      homeUUID = [(HMDHomeMediaSystemControllerMessageHandler *)self homeUUID];
      v30 = [(HMDRemoteHomeMessageDestination *)v26 initWithTarget:target homeUUID:homeUUID];
      [v24 setDestination:v30];

      [v24 setRemoteRestriction:41];
      v31 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v33 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v34 = HMFGetLogIdentifier();
        identifier = [v24 identifier];
        identifier2 = [messageCopy identifier];
        v39 = 138543874;
        v40 = v34;
        v41 = 2112;
        v42 = identifier;
        v43 = 2112;
        v44 = identifier2;
        _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_DEFAULT, "%{public}@Sending remote home message with identifier: %@ from local message identifier: %@", &v39, 0x20u);
      }

      objc_autoreleasePoolPop(v31);
      messageDispatcher = [(HMDHomeMediaSystemControllerMessageHandler *)selfCopy2 messageDispatcher];
      [messageDispatcher sendMessage:v24];

      goto LABEL_16;
    }

    v20 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      v39 = 138543618;
      v40 = v23;
      v41 = 2112;
      v42 = messageCopy;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@Only primary resident can handle remote message: %@", &v39, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
    v19 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:3202];
LABEL_12:
    v24 = v19;
    [messageCopy respondWithError:v19];
LABEL_16:

    goto LABEL_17;
  }

  handlerCopy[2](handlerCopy, messageCopy);
LABEL_17:

  v38 = *MEMORY[0x277D85DE8];
}

- (void)_legacyHandleUpdateMediaSystem:(id)system
{
  v49 = *MEMORY[0x277D85DE8];
  systemCopy = system;
  v5 = [(HMDHomeMediaSystemControllerMessageHandler *)self preProcessMediaSystemMessage:systemCopy];
  if (v5)
  {
    v6 = [systemCopy uuidForKey:*MEMORY[0x277CD2470]];
    v7 = [systemCopy stringForKey:*MEMORY[0x277CD2440]];
    v8 = [systemCopy stringForKey:*MEMORY[0x277CD2410]];
    v38 = [systemCopy arrayForKey:*MEMORY[0x277CD2438]];
    if (v6)
    {
      home = [(HMDHomeMediaSystemControllerMessageHandler *)self home];
      v10 = [home validateName:v7];

      if (v10)
      {
        v11 = v7 == 0;
      }

      else
      {
        v11 = 1;
      }

      if (v11)
      {
        v36 = v6;
        v37 = v8;
        v43 = 0;
        v44 = 0;
        v41 = 0;
        v42 = 0;
        v12 = [MEMORY[0x277CD1BF8] decodeComponentData:v38 leftComponentUUID:&v44 leftAccessoryUUID:&v43 rightComponentUUID:&v42 rightAccessoryUUID:&v41];
        v13 = v44;
        v14 = v43;
        v15 = v42;
        v16 = v41;
        v17 = v16;
        if (v12)
        {
          delegate = [(HMDHomeMediaSystemControllerMessageHandler *)self delegate];
          v39[0] = MEMORY[0x277D85DD0];
          v39[1] = 3221225472;
          v39[2] = __77__HMDHomeMediaSystemControllerMessageHandler__legacyHandleUpdateMediaSystem___block_invoke;
          v39[3] = &unk_278689230;
          v40 = systemCopy;
          [delegate messageHandlerUpdateMediaSystem:v36 configuredName:v7 leftUUID:v13 leftAccessoryUUID:v14 rightUUID:v15 rightAccessoryUUID:v17 builderSession:v37 completion:v39];

          v19 = v40;
        }

        else
        {
          v34 = v16;
          v35 = v13;
          v29 = objc_autoreleasePoolPush();
          selfCopy = self;
          v31 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            v32 = HMFGetLogIdentifier();
            *buf = 138543618;
            v46 = v32;
            v47 = 2112;
            v48 = v38;
            _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_ERROR, "%{public}@Could not decode components %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v29);
          v19 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
          [systemCopy respondWithError:v19];
          v17 = v34;
          v13 = v35;
        }

        v6 = v36;
        v8 = v37;
        goto LABEL_21;
      }

      v24 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v28 = HMFGetLogIdentifier();
        *buf = 138543618;
        v46 = v28;
        v47 = 2112;
        v48 = v7;
        _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_ERROR, "%{public}@Name already exists %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v24);
    }

    else
    {
      v20 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = HMFGetLogIdentifier();
        *buf = 138543618;
        v46 = v23;
        v47 = 2112;
        v48 = 0;
        _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@Message is missing mediaSystemUUID %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v20);
      v10 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    }

    [systemCopy respondWithError:v10];
LABEL_21:
  }

  v33 = *MEMORY[0x277D85DE8];
}

void __77__HMDHomeMediaSystemControllerMessageHandler__legacyHandleUpdateMediaSystem___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    [*(a1 + 32) respondWithError:v6];
  }

  else
  {
    v7 = *(a1 + 32);
    if (v5)
    {
      v10 = *MEMORY[0x277CD2418];
      v11[0] = v5;
      v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
      [v7 respondWithPayload:v8];
    }

    else
    {
      v8 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
      [v7 respondWithError:v8];
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)locallyUpdateMediaSystemUsingRequestMessage:(id)message
{
  v66 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    name = [messageCopy name];
    identifier = [messageCopy identifier];
    messagePayload = [messageCopy messagePayload];
    *buf = 138544130;
    v59 = v8;
    v60 = 2112;
    v61 = name;
    v62 = 2112;
    v63 = identifier;
    v64 = 2112;
    v65 = messagePayload;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Locally update media system using request message: %@(%@) payload: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v5);
  v12 = objc_alloc(MEMORY[0x277CD1BF8]);
  messagePayload2 = [messageCopy messagePayload];
  v14 = [v12 initWithPayload:messagePayload2];

  mediaGroupsAggregator = [(HMDHomeMediaSystemControllerMessageHandler *)selfCopy mediaGroupsAggregator];
  v16 = mediaGroupsAggregator;
  if (v14 && mediaGroupsAggregator)
  {
    uuid = [v14 uuid];
    v18 = [v16 localGroupWithIdentifier:uuid];

    mediaSystemData = [v18 mediaSystemData];
    if (mediaSystemData)
    {
      v20 = [(HMDHomeMediaSystemControllerMessageHandler *)selfCopy validatePayload:v14];
      if (!v20)
      {
        v21 = [mediaSystemData mutableCopy];
        configuredName = [v14 configuredName];
        v54 = mediaSystemData;
        if (configuredName)
        {
          [v21 setName:configuredName];
        }

        else
        {
          roomNameSentinel = [MEMORY[0x277CD1C08] roomNameSentinel];
          [v21 setName:roomNameSentinel];
        }

        configuredName2 = [v14 configuredName];
        [v21 setDefaultName:configuredName2 == 0];

        leftAccessoryUUID = [v14 leftAccessoryUUID];
        [v21 setLeftDestinationIdentifier:leftAccessoryUUID];

        rightAccessoryUUID = [v14 rightAccessoryUUID];
        [v21 setRightDestinationIdentifier:rightAccessoryUUID];

        leftAccessoryUUID2 = [v14 leftAccessoryUUID];
        v57[0] = leftAccessoryUUID2;
        rightAccessoryUUID2 = [v14 rightAccessoryUUID];
        v57[1] = rightAccessoryUUID2;
        v38 = [MEMORY[0x277CBEA60] arrayWithObjects:v57 count:2];
        [v16 updateGroup:v21 participantAccessoryUUIDs:v38];

        leftAccessoryUUID3 = [v14 leftAccessoryUUID];
        uuid2 = [v14 uuid];
        v39 = [(HMDHomeMediaSystemControllerMessageHandler *)selfCopy updateParticipantWithAccessoryUUID:leftAccessoryUUID3 associatedGroupIdentifier:uuid2];
        v56[0] = v39;
        [v14 rightAccessoryUUID];
        v40 = v53 = v21;
        uuid3 = [v14 uuid];
        v42 = [(HMDHomeMediaSystemControllerMessageHandler *)selfCopy updateParticipantWithAccessoryUUID:v40 associatedGroupIdentifier:uuid3];
        v56[1] = v42;
        v52 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:2];

        v43 = [MEMORY[0x277D2C900] chainFutures:v52];
        leftAccessoryUUID4 = [v14 leftAccessoryUUID];
        v55[0] = leftAccessoryUUID4;
        rightAccessoryUUID3 = [v14 rightAccessoryUUID];
        v55[1] = rightAccessoryUUID3;
        v46 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:2];
        v47 = [(HMDHomeMediaSystemControllerMessageHandler *)selfCopy updateMediaSystemCompletionBlockWithMessage:messageCopy data:v53 accessoryUUIDs:v46];
        v48 = [v43 addCompletionBlock:v47];

        v31 = 0;
        mediaSystemData = v54;
        goto LABEL_18;
      }
    }

    else
    {
      v27 = objc_autoreleasePoolPush();
      v28 = selfCopy;
      v29 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v30 = HMFGetLogIdentifier();
        *buf = 138543618;
        v59 = v30;
        v60 = 2112;
        v61 = v18;
        _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_ERROR, "%{public}@Failed to update media system due to missing media system group: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v27);
      v20 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
    }

    v31 = v20;
    [messageCopy respondWithError:v20];
LABEL_18:

    goto LABEL_19;
  }

  v23 = objc_autoreleasePoolPush();
  v24 = selfCopy;
  v25 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    v26 = HMFGetLogIdentifier();
    *buf = 138543874;
    v59 = v26;
    v60 = 2112;
    v61 = v14;
    v62 = 2112;
    v63 = v16;
    _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_ERROR, "%{public}@Failed to update media system due to missing dependencies payload: %@ aggregator: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v23);
  v18 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:4];
  [messageCopy respondWithError:v18];
LABEL_19:

  v49 = *MEMORY[0x277D85DE8];
}

- (void)routeUpdateMediaSystem:(id)system
{
  v24 = *MEMORY[0x277D85DE8];
  systemCopy = system;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    name = [systemCopy name];
    identifier = [systemCopy identifier];
    *buf = 138543874;
    v19 = v8;
    v20 = 2112;
    v21 = name;
    v22 = 2112;
    v23 = identifier;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Routing update media system message: %@(%@)", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
  if (isFeatureHomeTheaterQFAEnabledForTests && ([isFeatureHomeTheaterQFAEnabledForTests BOOLValue] & 1) == 0)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = selfCopy;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543362;
      v19 = v14;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Home theater QFA is not enabled using legacy flows", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    [(HMDHomeMediaSystemControllerMessageHandler *)v12 _legacyHandleUpdateMediaSystem:systemCopy];
  }

  else
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __69__HMDHomeMediaSystemControllerMessageHandler_routeUpdateMediaSystem___block_invoke;
    v16[3] = &unk_2786858B0;
    v16[4] = selfCopy;
    v17 = systemCopy;
    [(HMDHomeMediaSystemControllerMessageHandler *)selfCopy _routeMessage:v17 localHandler:v16];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_legacyHandleRemoveMediaSystem:(id)system
{
  systemCopy = system;
  v4 = [systemCopy uuidForKey:*MEMORY[0x277CD2470]];
  v5 = [systemCopy stringForKey:*MEMORY[0x277CD2410]];
  v6 = [(HMDHomeMediaSystemControllerMessageHandler *)self preProcessMediaSystemMessage:systemCopy];
  if (v6)
  {
    delegate = [(HMDHomeMediaSystemControllerMessageHandler *)self delegate];
    [delegate messageHandlerRemoveMediaSystem:v4 builderSession:v5 message:systemCopy];
  }
}

- (void)locallyRemoveMediaSystemUsingRemoveRequestMessage:(id)message
{
  v45 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    name = [messageCopy name];
    identifier = [messageCopy identifier];
    messagePayload = [messageCopy messagePayload];
    v37 = 138544130;
    v38 = v8;
    v39 = 2112;
    v40 = name;
    v41 = 2112;
    v42 = identifier;
    v43 = 2112;
    v44 = messagePayload;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Locallying remove media system using request message: %@(%@) payload: %@", &v37, 0x2Au);
  }

  objc_autoreleasePoolPop(v5);
  messagePayload2 = [messageCopy messagePayload];
  v13 = [messagePayload2 hmf_UUIDForKey:*MEMORY[0x277CD2470]];

  if (v13)
  {
    mediaGroupsAggregator = [(HMDHomeMediaSystemControllerMessageHandler *)selfCopy mediaGroupsAggregator];
    v15 = mediaGroupsAggregator;
    if (mediaGroupsAggregator)
    {
      v16 = [mediaGroupsAggregator localGroupWithIdentifier:v13];
      mediaSystemData = [v16 mediaSystemData];
      v18 = mediaSystemData;
      if (mediaSystemData)
      {
        associatedGroupIdentifier = [mediaSystemData associatedGroupIdentifier];
        destinationUniqueIdentifiers = [v18 destinationUniqueIdentifiers];
        [(HMDHomeMediaSystemControllerMessageHandler *)selfCopy updateParticipantWithDestinationIdentifiers:destinationUniqueIdentifiers associatedGroupIdentifier:associatedGroupIdentifier];

        [v15 removeGroupWithIdentifier:v13];
        [messageCopy respondWithSuccess];
      }

      else
      {
        v32 = objc_autoreleasePoolPush();
        v33 = selfCopy;
        v34 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
        {
          v35 = HMFGetLogIdentifier();
          v37 = 138543618;
          v38 = v35;
          v39 = 2112;
          v40 = v16;
          _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_INFO, "%{public}@Failed to remove media system due to missing media system group: %@", &v37, 0x16u);
        }

        objc_autoreleasePoolPop(v32);
        associatedGroupIdentifier = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
        [messageCopy respondWithError:associatedGroupIdentifier];
      }
    }

    else
    {
      v28 = objc_autoreleasePoolPush();
      v29 = selfCopy;
      v30 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v31 = HMFGetLogIdentifier();
        v37 = 138543362;
        v38 = v31;
        _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_ERROR, "%{public}@Failed to remove media system due to no aggregator", &v37, 0xCu);
      }

      objc_autoreleasePoolPop(v28);
      v16 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:4];
      [messageCopy respondWithError:v16];
    }
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    v22 = selfCopy;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      name2 = [messageCopy name];
      identifier2 = [messageCopy identifier];
      messagePayload3 = [messageCopy messagePayload];
      v37 = 138544130;
      v38 = v24;
      v39 = 2112;
      v40 = name2;
      v41 = 2112;
      v42 = identifier2;
      v43 = 2112;
      v44 = messagePayload3;
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@Failed to remove media system due to invalid payload in request message: %@(%@) payload: %@", &v37, 0x2Au);
    }

    objc_autoreleasePoolPop(v21);
    v15 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:8];
    [messageCopy respondWithError:v15];
  }

  v36 = *MEMORY[0x277D85DE8];
}

- (void)routeRemoveMediaSystem:(id)system
{
  v14 = *MEMORY[0x277D85DE8];
  systemCopy = system;
  if (isFeatureHomeTheaterQFAEnabledForTests && ([isFeatureHomeTheaterQFAEnabledForTests BOOLValue] & 1) == 0)
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543362;
      v13 = v8;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@Home theater QFA is not enabled using legacy flows", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    [(HMDHomeMediaSystemControllerMessageHandler *)selfCopy _legacyHandleRemoveMediaSystem:systemCopy];
  }

  else
  {
    [(HMDHomeMediaSystemControllerMessageHandler *)self _logRemoveMediaSystemMetricsUsingMessage:systemCopy];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __69__HMDHomeMediaSystemControllerMessageHandler_routeRemoveMediaSystem___block_invoke;
    v10[3] = &unk_2786858B0;
    v10[4] = self;
    v11 = systemCopy;
    [(HMDHomeMediaSystemControllerMessageHandler *)self _routeMessage:v11 localHandler:v10];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_legacyHandleAddMediaSystemWithPreProcessedMessage:(id)message
{
  v51 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v5 = [messageCopy uuidForKey:*MEMORY[0x277CD2470]];
  v6 = [messageCopy stringForKey:*MEMORY[0x277CD2440]];
  v7 = [messageCopy arrayForKey:*MEMORY[0x277CD2438]];
  v8 = [messageCopy stringForKey:*MEMORY[0x277CD2410]];
  v9 = v8;
  if (v5)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543874;
      v46 = v14;
      v47 = 2112;
      v48 = v5;
      v49 = 2112;
      v50 = v9;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Message is missing required information uuid: %@, builderID: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v11);
    v16 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    goto LABEL_19;
  }

  home = [(HMDHomeMediaSystemControllerMessageHandler *)self home];
  v16 = [home validateName:v6];

  if (v16)
  {
    v17 = v6 == 0;
  }

  else
  {
    v17 = 1;
  }

  if (!v17)
  {
    v25 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v29 = HMFGetLogIdentifier();
      *buf = 138543618;
      v46 = v29;
      v47 = 2112;
      v48 = v6;
      _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_ERROR, "%{public}@Name already exists %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v25);
LABEL_19:
    [messageCopy respondWithError:v16];
    goto LABEL_24;
  }

  v43 = 0;
  v44 = 0;
  v41 = 0;
  v42 = 0;
  v37 = v7;
  v18 = [MEMORY[0x277CD1BF8] decodeComponentData:v7 leftComponentUUID:&v44 leftAccessoryUUID:&v43 rightComponentUUID:&v42 rightAccessoryUUID:&v41];
  v38 = v44;
  v19 = v43;
  v20 = v42;
  v21 = v41;
  v22 = v21;
  if (v18)
  {
    delegate = [(HMDHomeMediaSystemControllerMessageHandler *)self delegate];
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __97__HMDHomeMediaSystemControllerMessageHandler__legacyHandleAddMediaSystemWithPreProcessedMessage___block_invoke;
    v39[3] = &unk_278689230;
    v40 = messageCopy;
    [delegate messageHandlerAddMediaSystem:v5 configuredName:v6 leftUUID:v38 leftAccessoryUUID:v19 rightUUID:v20 rightAccessoryUUID:v22 builderSession:v9 completion:v39];

    v24 = v40;
  }

  else
  {
    v35 = v21;
    v36 = v20;
    v30 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v32 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = HMFGetLogIdentifier();
      *buf = 138543618;
      v46 = v33;
      v47 = 2112;
      v48 = v37;
      _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_ERROR, "%{public}@Could not decode components %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v30);
    v24 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    [messageCopy respondWithError:v24];
    v22 = v35;
    v20 = v36;
  }

  v7 = v37;
LABEL_24:

  v34 = *MEMORY[0x277D85DE8];
}

void __97__HMDHomeMediaSystemControllerMessageHandler__legacyHandleAddMediaSystemWithPreProcessedMessage___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    [*(a1 + 32) respondWithError:v6];
  }

  else
  {
    v7 = *(a1 + 32);
    if (v5)
    {
      v10 = *MEMORY[0x277CD2418];
      v11[0] = v5;
      v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
      [v7 respondWithPayload:v8];
    }

    else
    {
      v8 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
      [v7 respondWithError:v8];
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_legacyHandleAddMediaSystem:(id)system
{
  v4 = [(HMDHomeMediaSystemControllerMessageHandler *)self preProcessMediaSystemMessage:system];
  if (v4)
  {
    v5 = v4;
    [(HMDHomeMediaSystemControllerMessageHandler *)self _legacyHandleAddMediaSystemWithPreProcessedMessage:v4];
    v4 = v5;
  }
}

- (id)appleMediaAccessoryWithUUID:(id)d
{
  dCopy = d;
  home = [(HMDHomeMediaSystemControllerMessageHandler *)self home];
  homeManager = [home homeManager];

  v7 = [homeManager accessoryWithUUID:dCopy];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  return v8;
}

- (id)homeUUID
{
  v17 = *MEMORY[0x277D85DE8];
  home = [(HMDHomeMediaSystemControllerMessageHandler *)self home];
  uuid = [home uuid];
  v5 = uuid;
  if (uuid)
  {
    v6 = uuid;
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v13 = 138543618;
      v14 = v10;
      v15 = 2112;
      v16 = home;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Failed to get home uuid from home: %@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)mediaGroupsAggregator
{
  v17 = *MEMORY[0x277D85DE8];
  home = [(HMDHomeMediaSystemControllerMessageHandler *)self home];
  mediaGroupsAggregator = [home mediaGroupsAggregator];
  v5 = mediaGroupsAggregator;
  if (mediaGroupsAggregator)
  {
    v6 = mediaGroupsAggregator;
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v13 = 138543618;
      v14 = v10;
      v15 = 2112;
      v16 = home;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to get media groups aggregator from home: %@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)messageRouter
{
  v17 = *MEMORY[0x277D85DE8];
  home = [(HMDHomeMediaSystemControllerMessageHandler *)self home];
  primaryResidentMessageRouter = [home primaryResidentMessageRouter];
  v5 = primaryResidentMessageRouter;
  if (primaryResidentMessageRouter)
  {
    v6 = primaryResidentMessageRouter;
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v13 = 138543618;
      v14 = v10;
      v15 = 2112;
      v16 = home;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to get primary message router in home: %@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)unconfiguredParticipantOnboardingManager
{
  home = [(HMDHomeMediaSystemControllerMessageHandler *)self home];
  mediaGroupsUnconfiguredParticipantOnboardingManager = [home mediaGroupsUnconfiguredParticipantOnboardingManager];

  return mediaGroupsUnconfiguredParticipantOnboardingManager;
}

- (void)queueOnboardingForUnconfiguredParticipantWithAccessoryUUID:(id)d associatedGroupIdentifier:(id)identifier
{
  v25 = *MEMORY[0x277D85DE8];
  dCopy = d;
  identifierCopy = identifier;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = HMFGetLogIdentifier();
    v19 = 138543874;
    v20 = v11;
    v21 = 2112;
    v22 = dCopy;
    v23 = 2112;
    v24 = identifierCopy;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@Queueing onboarding participant accessory uuid: %@ associated group identifier: %@", &v19, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  unconfiguredParticipantOnboardingManager = [(HMDHomeMediaSystemControllerMessageHandler *)selfCopy unconfiguredParticipantOnboardingManager];
  v13 = unconfiguredParticipantOnboardingManager;
  if (unconfiguredParticipantOnboardingManager)
  {
    [unconfiguredParticipantOnboardingManager queueOnboardingParticipantWithAccessoryUUID:dCopy withAssociatedGroupIdentifier:identifierCopy];
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v15 = selfCopy;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      v19 = 138543874;
      v20 = v17;
      v21 = 2112;
      v22 = dCopy;
      v23 = 2112;
      v24 = identifierCopy;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Failed to queue participant accessory uuid: %@ associated group identifier: %@ due to no onboarding manager", &v19, 0x20u);
    }

    objc_autoreleasePoolPop(v14);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (id)updateParticipantWithDestinationManager:(id)manager associatedGroupIdentifier:(id)identifier
{
  v6 = MEMORY[0x277D2C900];
  identifierCopy = identifier;
  managerCopy = manager;
  v9 = objc_alloc_init(v6);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __112__HMDHomeMediaSystemControllerMessageHandler_updateParticipantWithDestinationManager_associatedGroupIdentifier___block_invoke;
  v14[3] = &unk_27868A1D8;
  v14[4] = self;
  v10 = v9;
  v15 = v10;
  [managerCopy requestToUpdateAudioGroupIdentifier:identifierCopy completion:v14];

  v11 = v15;
  v12 = v10;

  return v10;
}

void __112__HMDHomeMediaSystemControllerMessageHandler_updateParticipantWithDestinationManager_associatedGroupIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v9 = 138543618;
      v10 = v7;
      v11 = 2112;
      v12 = v3;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Request to update audio groups completed with error: %@", &v9, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 40) finishWithError:v3];
  }

  else
  {
    [*(a1 + 40) finishWithNoResult];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (id)updateParticipantWithAccessoryUUID:(id)d associatedGroupIdentifier:(id)identifier
{
  dCopy = d;
  identifierCopy = identifier;
  home = [(HMDHomeMediaSystemControllerMessageHandler *)self home];
  v9 = [home destinationManagerWithParentIdentifier:dCopy];
  if (v9)
  {
    futureWithNoResult = [(HMDHomeMediaSystemControllerMessageHandler *)self updateParticipantWithDestinationManager:v9 associatedGroupIdentifier:identifierCopy];
  }

  else
  {
    [(HMDHomeMediaSystemControllerMessageHandler *)self queueOnboardingForUnconfiguredParticipantWithAccessoryUUID:dCopy associatedGroupIdentifier:identifierCopy];

    futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  return futureWithNoResult;
}

- (void)updateParticipantWithDestinationIdentifier:(id)identifier associatedGroupIdentifier:(id)groupIdentifier
{
  v23 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  groupIdentifierCopy = groupIdentifier;
  home = [(HMDHomeMediaSystemControllerMessageHandler *)self home];
  v9 = [home destinationManagerWithDestinationIdentifier:identifierCopy];
  if (v9 || ([home destinationManagerWithParentIdentifier:identifierCopy], (v9 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v10 = v9;
    v11 = [(HMDHomeMediaSystemControllerMessageHandler *)self updateParticipantWithDestinationManager:v9 associatedGroupIdentifier:groupIdentifierCopy];
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      v17 = 138543874;
      v18 = v16;
      v19 = 2112;
      v20 = identifierCopy;
      v21 = 2112;
      v22 = home;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to update participant with destination identifier: %@ due to no destination manager found in home: %@", &v17, 0x20u);
    }

    objc_autoreleasePoolPop(v13);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)updateParticipantWithDestinationIdentifiers:(id)identifiers associatedGroupIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __116__HMDHomeMediaSystemControllerMessageHandler_updateParticipantWithDestinationIdentifiers_associatedGroupIdentifier___block_invoke;
  v8[3] = &unk_278677FA0;
  v8[4] = self;
  v9 = identifierCopy;
  v7 = identifierCopy;
  [identifiers na_each:v8];
}

- (id)mediaSystemNameFromRoomWithAccessoryUUIDs:(id)ds
{
  v22 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  home = [(HMDHomeMediaSystemControllerMessageHandler *)self home];
  if (home)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = dsCopy;
    v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v18;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [home accessoryWithUUID:{*(*(&v17 + 1) + 8 * i), v17}];
          room = [v11 room];
          if (room)
          {
            v14 = room;
            name = [room name];

            goto LABEL_13;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }
  }

  name = [MEMORY[0x277CD1C08] defaultGroupName];
LABEL_13:

  v15 = *MEMORY[0x277D85DE8];

  return name;
}

- (id)stagingMediaSystemDataFromData:(id)data accessoryUUIDs:(id)ds
{
  dsCopy = ds;
  v7 = [data mutableCopy];
  name = [v7 name];
  roomNameSentinel = [MEMORY[0x277CD1C08] roomNameSentinel];
  if ([name isEqualToString:roomNameSentinel])
  {
    [(HMDHomeMediaSystemControllerMessageHandler *)self mediaSystemNameFromRoomWithAccessoryUUIDs:dsCopy];
  }

  else
  {
    [v7 name];
  }
  v10 = ;
  [v7 setName:v10];

  return v7;
}

- (id)updateMediaSystemCompletionBlockWithMessage:(id)message data:(id)data accessoryUUIDs:(id)ds
{
  messageCopy = message;
  dataCopy = data;
  dsCopy = ds;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __110__HMDHomeMediaSystemControllerMessageHandler_updateMediaSystemCompletionBlockWithMessage_data_accessoryUUIDs___block_invoke;
  v16[3] = &unk_278674C08;
  v16[4] = self;
  v17 = messageCopy;
  v18 = dataCopy;
  v19 = dsCopy;
  v11 = dsCopy;
  v12 = dataCopy;
  v13 = messageCopy;
  v14 = _Block_copy(v16);

  return v14;
}

void __110__HMDHomeMediaSystemControllerMessageHandler_updateMediaSystemCompletionBlockWithMessage_data_accessoryUUIDs___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v6)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v28 = v11;
      v29 = 2112;
      v30 = v6;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Update media system participants completed with error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    [*(a1 + 40) respondWithError:v6];
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543362;
      v28 = v12;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Update media system participants completed", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    v13 = [*(a1 + 32) home];
    if (v13)
    {
      v14 = [*(a1 + 32) stagingMediaSystemDataFromData:*(a1 + 48) accessoryUUIDs:*(a1 + 56)];
      v15 = [[HMDMediaSystem alloc] initWithMediaSystemData:v14 home:v13];
      v16 = *(a1 + 40);
      v17 = [(HMDMediaSystem *)v15 serialize];
      v26 = v17;
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
      [v16 respondWithPayload:v18];
    }

    else
    {
      v19 = objc_autoreleasePoolPush();
      v20 = *(a1 + 32);
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = HMFGetLogIdentifier();
        *buf = 138543362;
        v28 = v22;
        _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@Failed to create update media system response due to no home", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v19);
      v23 = *(a1 + 40);
      v14 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
      [v23 respondWithError:v14];
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (id)validateConfiguredName:(id)name
{
  v37 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v5 = nameCopy;
  if (!nameCopy)
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      v31 = 138543362;
      v32 = v16;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to get name to validate", &v31, 0xCu);
    }

    objc_autoreleasePoolPop(v13);
    v11 = MEMORY[0x277CCA9B8];
    v12 = 2;
    goto LABEL_10;
  }

  if (![nameCopy length] || (v6 = objc_msgSend(v5, "length"), v6 > HMMaxLengthForNaming()))
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v31 = 138543618;
      v32 = v10;
      v33 = 2112;
      v34 = v5;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to get valid name due length of name: %@", &v31, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v11 = MEMORY[0x277CCA9B8];
    v12 = 3;
LABEL_10:
    v17 = [v11 hmErrorWithCode:v12];
    goto LABEL_11;
  }

  home = [(HMDHomeMediaSystemControllerMessageHandler *)self home];
  v21 = home;
  if (home)
  {
    v17 = [home validateName:v5];
    if (v17)
    {
      v22 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = HMFGetLogIdentifier();
        v31 = 138543874;
        v32 = v25;
        v33 = 2112;
        v34 = v5;
        v35 = 2112;
        v36 = v17;
        _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@Failed to get valid name: %@ error: %@", &v31, 0x20u);
      }

      objc_autoreleasePoolPop(v22);
      v26 = v17;
    }
  }

  else
  {
    v27 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = HMFGetLogIdentifier();
      v31 = 138543362;
      v32 = v30;
      _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_ERROR, "%{public}@Failed to get home during name validation", &v31, 0xCu);
    }

    objc_autoreleasePoolPop(v27);
    v17 = [MEMORY[0x277CCA9B8] hmErrorWithCode:21];
  }

LABEL_11:
  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)validatePayload:(id)payload
{
  configuredName = [payload configuredName];
  if (configuredName)
  {
    v5 = [(HMDHomeMediaSystemControllerMessageHandler *)self validateConfiguredName:configuredName];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)preferredAssociatedGroupIdentifierForMediaSystemBuilderPayload:(id)payload
{
  v44 = *MEMORY[0x277D85DE8];
  payloadCopy = payload;
  home = [(HMDHomeMediaSystemControllerMessageHandler *)self home];
  leftAccessoryUUID = [payloadCopy leftAccessoryUUID];
  v7 = [home destinationManagerWithParentIdentifier:leftAccessoryUUID];

  v35 = v7;
  destination = [v7 destination];
  audioGroupIdentifier = [destination audioGroupIdentifier];
  rightAccessoryUUID = [payloadCopy rightAccessoryUUID];
  v11 = [home destinationManagerWithParentIdentifier:rightAccessoryUUID];

  v34 = v11;
  destination2 = [v11 destination];
  audioGroupIdentifier2 = [destination2 audioGroupIdentifier];
  if (!destination || !destination2)
  {
    v14 = objc_autoreleasePoolPush();
    selfCopy = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v17 = v32 = payloadCopy;
      *buf = 138544130;
      v37 = v17;
      v38 = 2112;
      v39 = destination;
      v40 = 2112;
      v41 = destination2;
      v42 = 2112;
      v43 = home;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Preferred associated group will be derived without influence from missing left destination: %@ right destination: %@ in home: %@", buf, 0x2Au);

      payloadCopy = v32;
    }

    objc_autoreleasePoolPop(v14);
  }

  if (audioGroupIdentifier && audioGroupIdentifier2 && ([audioGroupIdentifier isEqual:audioGroupIdentifier2] & 1) == 0)
  {
    v25 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v29 = v28 = payloadCopy;
      *buf = 138543874;
      v37 = v29;
      v38 = 2112;
      v39 = destination;
      v40 = 2112;
      v41 = destination2;
      _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_INFO, "%{public}@Not setting a preferred group identifier due to miss matching groups on left destination: %@ right destination: %@", buf, 0x20u);

      payloadCopy = v28;
    }

    objc_autoreleasePoolPop(v25);
    v19 = 0;
  }

  else
  {
    if (audioGroupIdentifier)
    {
      v18 = audioGroupIdentifier;
    }

    else
    {
      v18 = audioGroupIdentifier2;
    }

    v19 = v18;
    if (v19)
    {
      v20 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v23 = v33 = payloadCopy;
        *buf = 138543618;
        v37 = v23;
        v38 = 2112;
        v39 = v19;
        _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@Setting preferred associated group identifier: %@", buf, 0x16u);

        payloadCopy = v33;
      }

      objc_autoreleasePoolPop(v20);
      v24 = v19;
    }
  }

  v30 = *MEMORY[0x277D85DE8];

  return v19;
}

- (void)locallyAddMediaSystemUsingRequestMessage:(id)message
{
  v65 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    name = [messageCopy name];
    identifier = [messageCopy identifier];
    messagePayload = [messageCopy messagePayload];
    *buf = 138544130;
    v58 = v8;
    v59 = 2112;
    v60 = name;
    v61 = 2112;
    v62 = identifier;
    v63 = 2112;
    v64 = messagePayload;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Locally add media system using request message: %@(%@) payload: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v5);
  v12 = objc_alloc(MEMORY[0x277CD1BF8]);
  messagePayload2 = [messageCopy messagePayload];
  v14 = [v12 initWithPayload:messagePayload2];

  homeUUID = [(HMDHomeMediaSystemControllerMessageHandler *)selfCopy homeUUID];
  mediaGroupsAggregator = [(HMDHomeMediaSystemControllerMessageHandler *)selfCopy mediaGroupsAggregator];
  v17 = mediaGroupsAggregator;
  if (!v14 || !homeUUID || !mediaGroupsAggregator)
  {
    v22 = objc_autoreleasePoolPush();
    v23 = selfCopy;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138544130;
      v58 = v25;
      v59 = 2112;
      v60 = v14;
      v61 = 2112;
      v62 = v17;
      v63 = 2112;
      v64 = homeUUID;
      _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_INFO, "%{public}@Failed to add media system due to missing dependencies payload: %@ aggregator: %@ homeUUID: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v22);
    v18 = [MEMORY[0x277CCA9B8] hmErrorWithCode:21];
    goto LABEL_12;
  }

  v18 = [(HMDHomeMediaSystemControllerMessageHandler *)selfCopy validatePayload:v14];
  if (v18)
  {
LABEL_12:
    v26 = v18;
    [messageCopy respondWithError:v18];
    goto LABEL_13;
  }

  configuredName = [v14 configuredName];
  v20 = configuredName;
  v52 = v17;
  if (configuredName)
  {
    roomNameSentinel = configuredName;
  }

  else
  {
    roomNameSentinel = [MEMORY[0x277CD1C08] roomNameSentinel];
  }

  v53 = roomNameSentinel;

  configuredName2 = [v14 configuredName];
  v29 = configuredName2 == 0;

  v30 = objc_alloc(MEMORY[0x277CD1C08]);
  uuid = [v14 uuid];
  v32 = [(HMDHomeMediaSystemControllerMessageHandler *)selfCopy preferredAssociatedGroupIdentifierForMediaSystemBuilderPayload:v14];
  leftAccessoryUUID = [v14 leftAccessoryUUID];
  rightAccessoryUUID = [v14 rightAccessoryUUID];
  v51 = [v30 initWithIdentifier:uuid parentIdentifier:homeUUID name:v53 defaultName:v29 associatedGroupIdentifier:v32 leftDestinationIdentifier:leftAccessoryUUID rightDestinationIdentifier:rightAccessoryUUID];

  leftAccessoryUUID2 = [v14 leftAccessoryUUID];
  v56[0] = leftAccessoryUUID2;
  rightAccessoryUUID2 = [v14 rightAccessoryUUID];
  v56[1] = rightAccessoryUUID2;
  v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:2];
  v17 = v52;
  [v52 updateGroup:v51 participantAccessoryUUIDs:v37];

  leftAccessoryUUID3 = [v14 leftAccessoryUUID];
  uuid2 = [v14 uuid];
  v38 = [(HMDHomeMediaSystemControllerMessageHandler *)selfCopy updateParticipantWithAccessoryUUID:leftAccessoryUUID3 associatedGroupIdentifier:uuid2];
  v55[0] = v38;
  rightAccessoryUUID3 = [v14 rightAccessoryUUID];
  uuid3 = [v14 uuid];
  v41 = [(HMDHomeMediaSystemControllerMessageHandler *)selfCopy updateParticipantWithAccessoryUUID:rightAccessoryUUID3 associatedGroupIdentifier:uuid3];
  v55[1] = v41;
  v50 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:2];

  v42 = [MEMORY[0x277D2C900] chainFutures:v50];
  leftAccessoryUUID4 = [v14 leftAccessoryUUID];
  v54[0] = leftAccessoryUUID4;
  rightAccessoryUUID4 = [v14 rightAccessoryUUID];
  v54[1] = rightAccessoryUUID4;
  v45 = [MEMORY[0x277CBEA60] arrayWithObjects:v54 count:2];
  v46 = [(HMDHomeMediaSystemControllerMessageHandler *)selfCopy updateMediaSystemCompletionBlockWithMessage:messageCopy data:v51 accessoryUUIDs:v45];
  v47 = [v42 addCompletionBlock:v46];

  v26 = 0;
LABEL_13:

  v27 = *MEMORY[0x277D85DE8];
}

- (void)_logRemoveMediaSystemMetricsUsingMessage:(id)message
{
  v31 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  home = [(HMDHomeMediaSystemControllerMessageHandler *)self home];
  messagePayload = [messageCopy messagePayload];
  v7 = messagePayload;
  if (home && messagePayload)
  {
    v8 = [messagePayload objectForKeyedSubscript:*MEMORY[0x277CD2470]];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    v11 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v10];
    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    v15 = v14;
    if (v11)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v16 = HMFGetLogIdentifier();
        name = [messageCopy name];
        v25 = 138543874;
        v26 = v16;
        v27 = 2112;
        v28 = name;
        v29 = 2112;
        v30 = v11;
        _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Received %@ message for media system UUID: %@", &v25, 0x20u);
      }

      objc_autoreleasePoolPop(v12);
      mediaSystemSetupMetricDispatcher = [home mediaSystemSetupMetricDispatcher];
      [mediaSystemSetupMetricDispatcher markRequestReceivedForGroupIdentifier:v11 metricType:2 setupSessionIdentifier:0 setupRequestOption:0 setupSessionStartTimeMS:0];
    }

    else
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v23 = HMFGetLogIdentifier();
        v25 = 138543618;
        v26 = v23;
        v27 = 2112;
        v28 = messageCopy;
        _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Message %@ payload does not contain valid media system UUID", &v25, 0x16u);
      }

      objc_autoreleasePoolPop(v12);
    }
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      v25 = 138543874;
      v26 = v22;
      v27 = 2112;
      v28 = home;
      v29 = 2112;
      v30 = v7;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@home: %@ or payload: %@ is nil", &v25, 0x20u);
    }

    objc_autoreleasePoolPop(v19);
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)_logAddMediaSystemMetricsUsingMessage:(id)message setupAccessoryUUID:(id)d setupRequestOption:(unint64_t)option
{
  v41 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  dCopy = d;
  home = [(HMDHomeMediaSystemControllerMessageHandler *)self home];
  v11 = objc_alloc(MEMORY[0x277CD1BF8]);
  messagePayload = [messageCopy messagePayload];
  v13 = [v11 initWithPayload:messagePayload];

  v14 = objc_autoreleasePoolPush();
  selfCopy = self;
  v16 = HMFGetOSLogHandle();
  v17 = v16;
  if (home && v13)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      name = [messageCopy name];
      *buf = 138543874;
      v36 = v18;
      v37 = 2112;
      v38 = name;
      v39 = 2112;
      v40 = v13;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Received %@ message for media system builder payload %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v14);
    homeManager = [home homeManager];
    v21 = homeManager;
    v33 = dCopy;
    v34 = 0.0;
    if (dCopy)
    {
      v22 = [homeManager setupSessionIdentifierForAccessoryUUID:dCopy outStartTime:&v34];
    }

    else
    {
      v22 = 0;
    }

    optionCopy = option;
    v25 = objc_autoreleasePoolPush();
    v26 = selfCopy;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v28 = HMFGetLogIdentifier();
      *buf = 138543618;
      v36 = v28;
      v37 = 2112;
      v38 = v22;
      _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_INFO, "%{public}@Found associated setup session identifier %@ during media system grouping", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v25);
    v29 = 1000 * v34;
    mediaSystemSetupMetricDispatcher = [home mediaSystemSetupMetricDispatcher];
    uuid = [v13 uuid];
    [mediaSystemSetupMetricDispatcher markRequestReceivedForGroupIdentifier:uuid metricType:1 setupSessionIdentifier:v22 setupRequestOption:optionCopy setupSessionStartTimeMS:v29];

    dCopy = v33;
  }

  else
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543874;
      v36 = v23;
      v37 = 2112;
      v38 = home;
      v39 = 2112;
      v40 = v13;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Home: %@ or media system builder payload: %@ is nil", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v14);
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (void)handleAddMediaSystemBypassPrimary:(id)primary
{
  v97 = *MEMORY[0x277D85DE8];
  primaryCopy = primary;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    name = [primaryCopy name];
    identifier = [primaryCopy identifier];
    messagePayload = [primaryCopy messagePayload];
    *buf = 138544130;
    v90 = v8;
    v91 = 2112;
    v92 = name;
    v93 = 2112;
    v94 = identifier;
    v95 = 2112;
    v96 = messagePayload;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling add media system bypassing primary resident using message: %@(%@) payload: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v5);
  v12 = objc_alloc(MEMORY[0x277CD1BF8]);
  messagePayload2 = [primaryCopy messagePayload];
  v14 = [v12 initWithPayload:messagePayload2];

  home = [(HMDHomeMediaSystemControllerMessageHandler *)selfCopy home];
  homeManager = [home homeManager];
  v17 = homeManager;
  if (!v14 || !home || !homeManager)
  {
    v24 = objc_autoreleasePoolPush();
    v25 = selfCopy;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = HMFGetLogIdentifier();
      uuid = [home uuid];
      uuid2 = [v17 uuid];
      *buf = 138544130;
      v90 = v27;
      v91 = 2112;
      v92 = v14;
      v93 = 2112;
      v94 = uuid;
      v95 = 2112;
      v96 = uuid2;
      _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_INFO, "%{public}@Missing dependencies payload: %@ homeUUID: %@ homeManagerUUID: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v24);
    v19 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:9018];
    goto LABEL_13;
  }

  v18 = [(HMDHomeMediaSystemControllerMessageHandler *)selfCopy validatePayload:v14];
  if (!v18)
  {
    currentAccessory = [v17 currentAccessory];
    v32 = currentAccessory;
    if (currentAccessory)
    {
      uuid3 = [(HMDMediaSystem *)currentAccessory uuid];
      leftAccessoryUUID = [(HMDMediaSystem *)v14 leftAccessoryUUID];
      if ([uuid3 hmf_isEqualToUUID:leftAccessoryUUID])
      {

LABEL_19:
        uuid4 = [(HMDMediaSystem *)v32 uuid];
        v39 = [home destinationManagerWithParentIdentifier:uuid4];

        if (v39)
        {
          configuredName = [(HMDMediaSystem *)v14 configuredName];
          v41 = configuredName;
          v77 = v39;
          if (configuredName)
          {
            roomNameSentinel = configuredName;
          }

          else
          {
            roomNameSentinel = [MEMORY[0x277CD1C08] roomNameSentinel];
          }

          v85 = roomNameSentinel;

          configuredName2 = [(HMDMediaSystem *)v14 configuredName];
          v82 = configuredName2 == 0;

          uuid5 = [home uuid];
          uuid6 = [(HMDMediaSystem *)v14 uuid];
          leftAccessoryUUID2 = [(HMDMediaSystem *)v14 leftAccessoryUUID];
          rightAccessoryUUID = [(HMDMediaSystem *)v14 rightAccessoryUUID];
          v57 = objc_alloc(MEMORY[0x277CD1C08]);
          v79 = uuid5;
          v58 = v82;
          v81 = rightAccessoryUUID;
          v83 = leftAccessoryUUID2;
          v59 = [v57 initWithIdentifier:uuid6 parentIdentifier:uuid5 name:v85 defaultName:v58 associatedGroupIdentifier:0 leftDestinationIdentifier:leftAccessoryUUID2 rightDestinationIdentifier:rightAccessoryUUID];
          v78 = uuid6;
          v60 = uuid6;
          v39 = v77;
          LODWORD(leftAccessoryUUID2) = [v77 updateTargetDeviceAudioGroupIdentifier:v60];
          v61 = [v77 addGroupDataForTargetDevice:v59];
          v80 = v32;
          v76 = v59;
          if (leftAccessoryUUID2 && (v61 & 1) != 0)
          {
            v88[0] = v83;
            v88[1] = rightAccessoryUUID;
            v62 = [MEMORY[0x277CBEA60] arrayWithObjects:v88 count:2];
            v63 = [(HMDHomeMediaSystemControllerMessageHandler *)selfCopy stagingMediaSystemDataFromData:v59 accessoryUUIDs:v62];

            v64 = [[HMDMediaSystem alloc] initWithMediaSystemData:v63 home:home];
            v65 = objc_autoreleasePoolPush();
            v66 = selfCopy;
            v67 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
            {
              HMFGetLogIdentifier();
              v68 = v75 = v65;
              *buf = 138543618;
              v90 = v68;
              v91 = 2112;
              v92 = v64;
              _os_log_impl(&dword_229538000, v67, OS_LOG_TYPE_DEFAULT, "%{public}@Responding with the staged media system %@", buf, 0x16u);

              v65 = v75;
            }

            objc_autoreleasePoolPop(v65);
            v86 = *MEMORY[0x277CD2418];
            serialize = [(HMDMediaSystem *)v64 serialize];
            v87 = serialize;
            v70 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v87 forKeys:&v86 count:1];
            [primaryCopy respondWithPayload:v70];
          }

          else
          {
            v71 = objc_autoreleasePoolPush();
            v72 = selfCopy;
            v73 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
            {
              v74 = HMFGetLogIdentifier();
              *buf = 138543362;
              v90 = v74;
              _os_log_impl(&dword_229538000, v73, OS_LOG_TYPE_ERROR, "%{public}@Failed to update group identifier and group data on target device", buf, 0xCu);
            }

            objc_autoreleasePoolPop(v71);
            v63 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:9021];
            [primaryCopy respondWithError:v63];
          }

          v32 = v80;
          v51 = v85;
        }

        else
        {
          v47 = objc_autoreleasePoolPush();
          v48 = selfCopy;
          v49 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
          {
            v50 = HMFGetLogIdentifier();
            *buf = 138543362;
            v90 = v50;
            _os_log_impl(&dword_229538000, v49, OS_LOG_TYPE_ERROR, "%{public}@Current accessory does not have destination manager", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v47);
          v51 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:9020];
          [primaryCopy respondWithError:v51];
        }

LABEL_39:
        v19 = 0;
        goto LABEL_14;
      }

      uuid7 = [(HMDMediaSystem *)v32 uuid];
      [(HMDMediaSystem *)v14 rightAccessoryUUID];
      v37 = v36 = v32;
      v84 = [uuid7 hmf_isEqualToUUID:v37];

      v32 = v36;
      if (v84)
      {
        goto LABEL_19;
      }
    }

    v43 = objc_autoreleasePoolPush();
    v44 = selfCopy;
    v45 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      v46 = HMFGetLogIdentifier();
      *buf = 138543874;
      v90 = v46;
      v91 = 2112;
      v92 = v32;
      v93 = 2112;
      v94 = v14;
      _os_log_impl(&dword_229538000, v45, OS_LOG_TYPE_ERROR, "%{public}@Current accessory %@ is not part of the media system payload %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v43);
    v39 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:9019];
    [primaryCopy respondWithError:v39];
    goto LABEL_39;
  }

  v19 = v18;
  v20 = objc_autoreleasePoolPush();
  v21 = selfCopy;
  v22 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    v23 = HMFGetLogIdentifier();
    *buf = 138543618;
    v90 = v23;
    v91 = 2112;
    v92 = v19;
    _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@Failed to validate media system builder payload with error %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v20);
LABEL_13:
  [primaryCopy respondWithError:v19];
LABEL_14:

  v30 = *MEMORY[0x277D85DE8];
}

- (BOOL)_shouldAddMediaSystemBypassPrimary:(id)primary outSetupAccessoryUUID:(id *)d outFallbackReason:(unint64_t *)reason
{
  v74 = *MEMORY[0x277D85DE8];
  primaryCopy = primary;
  v9 = objc_alloc(MEMORY[0x277CD1BF8]);
  messagePayload = [primaryCopy messagePayload];
  v11 = [v9 initWithPayload:messagePayload];

  v12 = [(HMDHomeMediaSystemControllerMessageHandler *)self validatePayload:v11];
  if (v12)
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543618;
      v69 = v16;
      v70 = 2112;
      v71 = v12;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to validate the media system payload with error %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    v17 = objc_autoreleasePoolPush();
    v18 = selfCopy;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543362;
      v69 = v20;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@No media system hints or no peer accessory UUID in hints", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v17);
    v21 = 0;
    if (reason)
    {
      *reason |= 8uLL;
    }
  }

  else
  {
    home = [(HMDHomeMediaSystemControllerMessageHandler *)self home];
    homeManager = [home homeManager];

    hasMediaSystemHints = [homeManager hasMediaSystemHints];
    peerAccessoryUUIDFromHints = [homeManager peerAccessoryUUIDFromHints];
    v26 = peerAccessoryUUIDFromHints;
    if (hasMediaSystemHints && peerAccessoryUUIDFromHints)
    {
      leftAccessoryUUID = [v11 leftAccessoryUUID];
      rightAccessoryUUID = [v11 rightAccessoryUUID];
      v67 = rightAccessoryUUID;
      if ([v26 hmf_isEqualToUUID:leftAccessoryUUID] & 1) != 0 || (objc_msgSend(v26, "hmf_isEqualToUUID:", rightAccessoryUUID))
      {
        v29 = [(HMDHomeMediaSystemControllerMessageHandler *)self appleMediaAccessoryWithUUID:v26];
        deviceForDirectMessaging = [v29 deviceForDirectMessaging];
        v66 = v29;
        if (v29 && deviceForDirectMessaging)
        {
          v58 = deviceForDirectMessaging;
          v31 = [(HMDHomeMediaSystemControllerMessageHandler *)self appleMediaAccessoryWithUUID:leftAccessoryUUID];
          [(HMDHomeMediaSystemControllerMessageHandler *)self appleMediaAccessoryWithUUID:v67];
          v60 = v59 = v31;
          if (v31 && [v31 supportsStereoOdeonTTSUBypassingPrimary] && v60 && (objc_msgSend(v60, "supportsStereoOdeonTTSUBypassingPrimary") & 1) != 0)
          {
            if (d)
            {
              if ([v26 hmf_isEqualToUUID:leftAccessoryUUID])
              {
                v32 = v67;
              }

              else
              {
                v32 = leftAccessoryUUID;
              }

              *d = v32;
            }

            v62 = leftAccessoryUUID;
            v33 = objc_autoreleasePoolPush();
            selfCopy2 = self;
            v35 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
            {
              v36 = HMFGetLogIdentifier();
              *buf = 138543362;
              v69 = v36;
              _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_INFO, "%{public}@Should use the hints to bypass the primary resident request for adding media system", buf, 0xCu);
            }

            objc_autoreleasePoolPop(v33);
            v21 = 1;
            leftAccessoryUUID = v62;
          }

          else
          {
            context = objc_autoreleasePoolPush();
            selfCopy3 = self;
            v47 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
            {
              v56 = HMFGetLogIdentifier();
              [v59 supportsStereoOdeonTTSUBypassingPrimary];
              v48 = HMFBooleanToString();
              [v60 supportsStereoOdeonTTSUBypassingPrimary];
              HMFBooleanToString();
              v49 = v64 = leftAccessoryUUID;
              *buf = 138543874;
              v69 = v56;
              v70 = 2112;
              v71 = v48;
              v72 = 2112;
              v73 = v49;
              _os_log_impl(&dword_229538000, v47, OS_LOG_TYPE_ERROR, "%{public}@At least one accessory does not support the feature. Left: %@, Right: %@", buf, 0x20u);

              leftAccessoryUUID = v64;
            }

            objc_autoreleasePoolPop(context);
            v21 = 0;
            if (reason)
            {
              *reason |= 0x80uLL;
            }
          }

          v41 = v58;
        }

        else
        {
          v41 = deviceForDirectMessaging;
          v63 = leftAccessoryUUID;
          v42 = objc_autoreleasePoolPush();
          selfCopy4 = self;
          v44 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
          {
            HMFGetLogIdentifier();
            v45 = v61 = v42;
            *buf = 138543874;
            v69 = v45;
            v70 = 2112;
            v71 = v66;
            v72 = 2112;
            v73 = v41;
            _os_log_impl(&dword_229538000, v44, OS_LOG_TYPE_ERROR, "%{public}@Peer accessory %@ or device %@ is nil", buf, 0x20u);

            v42 = v61;
          }

          objc_autoreleasePoolPop(v42);
          v21 = 0;
          if (reason)
          {
            *reason |= 0x40uLL;
          }

          leftAccessoryUUID = v63;
        }
      }

      else
      {
        v65 = leftAccessoryUUID;
        v50 = objc_autoreleasePoolPush();
        selfCopy5 = self;
        v52 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
        {
          v53 = HMFGetLogIdentifier();
          *buf = 138543362;
          v69 = v53;
          _os_log_impl(&dword_229538000, v52, OS_LOG_TYPE_ERROR, "%{public}@Peer accessory UUID in hints does not match left or right accessory UUID", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v50);
        v21 = 0;
        if (reason)
        {
          *reason |= 0x20uLL;
        }

        leftAccessoryUUID = v65;
      }
    }

    else
    {
      v37 = objc_autoreleasePoolPush();
      selfCopy6 = self;
      v39 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        v40 = HMFGetLogIdentifier();
        *buf = 138543362;
        v69 = v40;
        _os_log_impl(&dword_229538000, v39, OS_LOG_TYPE_INFO, "%{public}@No media system hints or no peer accessory UUID in hints", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v37);
      v21 = 0;
      if (reason)
      {
        *reason |= 0x10uLL;
      }
    }
  }

  v54 = *MEMORY[0x277D85DE8];
  return v21;
}

- (void)_sendRemoteMessageWithXPCMessage:(id)message device:(id)device withRetries:(unint64_t)retries delay:(double)delay lastError:(id)error
{
  messageCopy = message;
  deviceCopy = device;
  errorCopy = error;
  if (retries)
  {
    v15 = [messageCopy copy];
    v16 = [v15 mutableCopy];

    [v16 setName:*MEMORY[0x277CD2088]];
    [v16 setRemote:1];
    [v16 setSecureRemote:1];
    if (retries != 1)
    {
      [v16 setTimeout:15.0];
    }

    v17 = [HMDRemoteDeviceMessageDestination alloc];
    destination = [messageCopy destination];
    target = [destination target];
    v20 = [(HMDRemoteDeviceMessageDestination *)v17 initWithTarget:target device:deviceCopy];
    [v16 setDestination:v20];

    [v16 setRemoteRestriction:41];
    objc_initWeak(&location, self);
    v22 = MEMORY[0x277D85DD0];
    v23 = 3221225472;
    v24 = __114__HMDHomeMediaSystemControllerMessageHandler__sendRemoteMessageWithXPCMessage_device_withRetries_delay_lastError___block_invoke;
    v25 = &unk_278674BE0;
    objc_copyWeak(v28, &location);
    v26 = messageCopy;
    v28[1] = retries;
    v27 = deviceCopy;
    v28[2] = *&delay;
    [v16 setResponseHandler:&v22];
    v21 = [(HMDHomeMediaSystemControllerMessageHandler *)self messageDispatcher:v22];
    [v21 sendMessage:v16];

    objc_destroyWeak(v28);
    objc_destroyWeak(&location);
  }

  else
  {
    v16 = [MEMORY[0x277CCA9B8] hmErrorWithCode:4 description:@"Exceeded maximum retries" reason:@"All messages failed" suggestion:0 underlyingError:errorCopy];
    [messageCopy respondWithError:v16];
  }
}

void __114__HMDHomeMediaSystemControllerMessageHandler__sendRemoteMessageWithXPCMessage_device_withRetries_delay_lastError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (v5)
  {
    if ([v5 isHMError] && objc_msgSend(v5, "code") == 8 || objc_msgSend(v5, "isHMFError") && objc_msgSend(v5, "code") == 13)
    {
      v8 = objc_autoreleasePoolPush();
      v9 = WeakRetained;
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = HMFGetLogIdentifier();
        v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 56) - 1];
        *buf = 138543618;
        v23 = v11;
        v24 = 2112;
        v25 = v12;
        _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Resend remote message due to timeout with retries: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v8);
      [v9 _sendRemoteMessageWithXPCMessage:*(a1 + 32) device:*(a1 + 40) withRetries:*(a1 + 56) - 1 delay:v5 lastError:*(a1 + 64)];
    }

    else
    {
      v13 = dispatch_time(0, (*(a1 + 64) * 1000000000.0));
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __114__HMDHomeMediaSystemControllerMessageHandler__sendRemoteMessageWithXPCMessage_device_withRetries_delay_lastError___block_invoke_18;
      v16[3] = &unk_27867A828;
      v14 = *(a1 + 56);
      v16[4] = WeakRetained;
      v20 = v14;
      v17 = *(a1 + 32);
      v18 = *(a1 + 40);
      v21 = *(a1 + 64);
      v19 = v5;
      dispatch_after(v13, MEMORY[0x277D85CD0], v16);
    }
  }

  else
  {
    [*(a1 + 32) respondWithPayload:v6 error:0];
  }

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t __114__HMDHomeMediaSystemControllerMessageHandler__sendRemoteMessageWithXPCMessage_device_withRetries_delay_lastError___block_invoke_18(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 64) - 1];
    v9 = 138543618;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Resend remote message due to failed message with retries: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 32) _sendRemoteMessageWithXPCMessage:*(a1 + 40) device:*(a1 + 48) withRetries:*(a1 + 64) - 1 delay:*(a1 + 56) lastError:*(a1 + 72)];
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_sendRemoteMessageToAddMediaSystemBypassPrimary:(id)primary
{
  v22 = *MEMORY[0x277D85DE8];
  primaryCopy = primary;
  home = [(HMDHomeMediaSystemControllerMessageHandler *)self home];
  homeManager = [home homeManager];

  peerAccessoryUUIDFromHints = [homeManager peerAccessoryUUIDFromHints];
  v8 = [(HMDHomeMediaSystemControllerMessageHandler *)self appleMediaAccessoryWithUUID:peerAccessoryUUIDFromHints];
  deviceForDirectMessaging = [v8 deviceForDirectMessaging];
  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  v13 = v12;
  if (v8 && deviceForDirectMessaging)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = HMFGetLogIdentifier();
      v18 = 138543618;
      v19 = v14;
      v20 = 2112;
      v21 = &unk_283E722C0;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@Sending remote message to add media system bypassing primary resident with retries: %@", &v18, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    [(HMDHomeMediaSystemControllerMessageHandler *)selfCopy _sendRemoteMessageWithXPCMessage:primaryCopy device:deviceForDirectMessaging withRetries:3 delay:0 lastError:15.0];
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v18 = 138543362;
      v19 = v15;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@No peer accessory found in home manager", &v18, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    v16 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:9017];
    [primaryCopy respondWithError:v16];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)routeAddMediaSystem:(id)system
{
  v39 = *MEMORY[0x277D85DE8];
  systemCopy = system;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    name = [systemCopy name];
    identifier = [systemCopy identifier];
    *buf = 138543874;
    v34 = v8;
    v35 = 2112;
    v36 = name;
    v37 = 2112;
    v38 = identifier;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Routing add media system message: %@(%@)", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
  if (isFeatureHomeTheaterQFAEnabledForTests && ([isFeatureHomeTheaterQFAEnabledForTests BOOLValue] & 1) == 0)
  {
    v24 = objc_autoreleasePoolPush();
    v25 = selfCopy;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138543362;
      v34 = v27;
      _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_ERROR, "%{public}@Home theater QFA is not enabled using legacy flows", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v24);
    [(HMDHomeMediaSystemControllerMessageHandler *)v25 _legacyHandleAddMediaSystem:systemCopy];
  }

  else
  {
    v31 = 0;
    v32 = 0;
    v11 = [(HMDHomeMediaSystemControllerMessageHandler *)selfCopy _shouldAddMediaSystemBypassPrimary:systemCopy outSetupAccessoryUUID:&v31 outFallbackReason:&v32];
    v12 = v31;
    if (v11 && (-[HMDHomeMediaSystemControllerMessageHandler home](selfCopy, "home"), v13 = objc_claimAutoreleasedReturnValue(), [v13 featuresDataSource], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "isStereoOdeonTTSUBypassingPrimaryEnabled"), v14, v13, v15))
    {
      v32 |= 2uLL;
      [(HMDHomeMediaSystemControllerMessageHandler *)selfCopy _logAddMediaSystemMetricsUsingMessage:systemCopy setupAccessoryUUID:v12 setupRequestOption:?];
      v16 = objc_autoreleasePoolPush();
      v17 = selfCopy;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = HMFGetLogIdentifier();
        *buf = 138543362;
        v34 = v19;
        _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@Routing the addMediaSystem request directly to the peer accessory", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v16);
      [(HMDHomeMediaSystemControllerMessageHandler *)v17 _sendRemoteMessageToAddMediaSystemBypassPrimary:systemCopy];
    }

    else
    {
      v32 |= 4uLL;
      [(HMDHomeMediaSystemControllerMessageHandler *)selfCopy _logAddMediaSystemMetricsUsingMessage:systemCopy setupAccessoryUUID:v12 setupRequestOption:?];
      v20 = objc_autoreleasePoolPush();
      v21 = selfCopy;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = HMFGetLogIdentifier();
        *buf = 138543362;
        v34 = v23;
        _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@Routing the addMediaSystem request to primary resident", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v20);
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __66__HMDHomeMediaSystemControllerMessageHandler_routeAddMediaSystem___block_invoke;
      v29[3] = &unk_2786858B0;
      v29[4] = v21;
      v30 = systemCopy;
      [(HMDHomeMediaSystemControllerMessageHandler *)v21 _routeMessage:v30 localHandler:v29];
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (id)preProcessMediaSystemMessage:(id)message
{
  v30 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  home = [(HMDHomeMediaSystemControllerMessageHandler *)self home];
  if (![home isSharedAdmin])
  {
    goto LABEL_6;
  }

  primaryResident = [home primaryResident];
  v7 = primaryResident;
  if (primaryResident && ([primaryResident isReachable] & 1) != 0)
  {
    if ([v7 supportsMediaSystem])
    {

LABEL_6:
      objc_initWeak(location, self);
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __75__HMDHomeMediaSystemControllerMessageHandler_preProcessMediaSystemMessage___block_invoke;
      aBlock[3] = &unk_278689460;
      objc_copyWeak(&v26, location);
      v8 = messageCopy;
      v24 = v8;
      v25 = home;
      v9 = _Block_copy(aBlock);
      v10 = [v8 mutableCopy];
      identifier = [v8 identifier];
      [v10 setIdentifier:identifier];

      [v10 setResponseHandler:v9];
      [v10 setRemote:{objc_msgSend(v8, "isRemote")}];
      v12 = [v10 copy];

      objc_destroyWeak(&v26);
      objc_destroyWeak(location);
      goto LABEL_11;
    }

    v13 = objc_autoreleasePoolPush();
    selfCopy = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      *location = 138543618;
      *&location[4] = v22;
      v28 = 2112;
      v29 = v7;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Resident device does not support media system: %@", location, 0x16u);
    }

    v17 = 92;
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      *location = 138543618;
      *&location[4] = v16;
      v28 = 2112;
      v29 = v7;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Resident device isn't available or reachable: %@", location, 0x16u);
    }

    v17 = 91;
  }

  objc_autoreleasePoolPop(v13);
  v18 = [MEMORY[0x277CCA9B8] hmErrorWithCode:v17];
  [messageCopy respondWithError:v18];

  v12 = 0;
LABEL_11:

  v19 = *MEMORY[0x277D85DE8];

  return v12;
}

void __75__HMDHomeMediaSystemControllerMessageHandler_preProcessMediaSystemMessage___block_invoke(id *a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained && !v5 && [a1[5] isSharedAdmin])
  {
    v8 = objc_autoreleasePoolPush();
    v9 = WeakRetained;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = a1[4];
      v18 = 138543618;
      v19 = v11;
      v20 = 2112;
      v21 = v12;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Relaying the message %@", &v18, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v13 = [a1[5] administratorHandler];
    v14 = [v13 operationForMessage:a1[4] error:0];
    if (v14)
    {
      [v13 addOperation:v14];
    }
  }

  v15 = [a1[4] responseHandler];

  if (v15)
  {
    v16 = [a1[4] responseHandler];
    (v16)[2](v16, v5, v6);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_registerForMessages
{
  v10[3] = *MEMORY[0x277D85DE8];
  home = [(HMDHomeMediaSystemControllerMessageHandler *)self home];
  v4 = +[HMDRemoteMessagePolicy defaultSecurePolicy];
  v5 = [HMDXPCMessagePolicy policyWithEntitlements:5];
  v6 = [HMDUserMessagePolicy userMessagePolicyWithHome:home userPrivilege:4 remoteAccessRequired:0];
  v10[0] = v4;
  v10[1] = v5;
  v10[2] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:3];
  messageDispatcher = [(HMDHomeMediaSystemControllerMessageHandler *)self messageDispatcher];
  [messageDispatcher registerForMessage:*MEMORY[0x277CD2098] receiver:self policies:v7 selector:sel_routeAddMediaSystem_];
  [messageDispatcher registerForMessage:*MEMORY[0x277CD2518] receiver:self policies:v7 selector:sel_routeRemoveMediaSystem_];

  v9 = *MEMORY[0x277D85DE8];
}

- (HMDHomeMediaSystemControllerMessageHandler)initWithQueue:(id)queue home:(id)home messageDispatcher:(id)dispatcher delegate:(id)delegate featuresDataSource:(id)source
{
  queueCopy = queue;
  homeCopy = home;
  dispatcherCopy = dispatcher;
  delegateCopy = delegate;
  sourceCopy = source;
  v21.receiver = self;
  v21.super_class = HMDHomeMediaSystemControllerMessageHandler;
  v18 = [(HMDHomeMediaSystemControllerMessageHandler *)&v21 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_queue, queue);
    objc_storeWeak(&v19->_home, homeCopy);
    objc_storeStrong(&v19->_messageDispatcher, dispatcher);
    objc_storeWeak(&v19->_delegate, delegateCopy);
    objc_storeStrong(&v19->_featuresDataSource, source);
    [(HMDHomeMediaSystemControllerMessageHandler *)v19 _registerForMessages];
  }

  return v19;
}

- (HMDHomeMediaSystemControllerMessageHandler)initWithQueue:(id)queue home:(id)home messageDispatcher:(id)dispatcher delegate:(id)delegate
{
  delegateCopy = delegate;
  dispatcherCopy = dispatcher;
  homeCopy = home;
  queueCopy = queue;
  v14 = objc_alloc_init(HMDFeaturesDataSource);
  v15 = [(HMDHomeMediaSystemControllerMessageHandler *)self initWithQueue:queueCopy home:homeCopy messageDispatcher:dispatcherCopy delegate:delegateCopy featuresDataSource:v14];

  return v15;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t71 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t71, &__block_literal_global_59341);
  }

  v3 = logCategory__hmf_once_v72;

  return v3;
}

void __57__HMDHomeMediaSystemControllerMessageHandler_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v72;
  logCategory__hmf_once_v72 = v1;
}

@end