@interface HMDHomeMediaSystemControllerMessageHandler
+ (id)logCategory;
- (BOOL)_shouldAddMediaSystemBypassPrimary:(id)a3 outSetupAccessoryUUID:(id *)a4 outFallbackReason:(unint64_t *)a5;
- (HMDHome)home;
- (HMDHomeMediaSystemControllerMessageHandler)initWithQueue:(id)a3 home:(id)a4 messageDispatcher:(id)a5 delegate:(id)a6;
- (HMDHomeMediaSystemControllerMessageHandler)initWithQueue:(id)a3 home:(id)a4 messageDispatcher:(id)a5 delegate:(id)a6 featuresDataSource:(id)a7;
- (HMDHomeMediaSystemControllerMessageHandlerDelegate)delegate;
- (NSUUID)messageTargetUUID;
- (id)appleMediaAccessoryWithUUID:(id)a3;
- (id)homeUUID;
- (id)logIdentifier;
- (id)mediaGroupsAggregator;
- (id)mediaSystemNameFromRoomWithAccessoryUUIDs:(id)a3;
- (id)messageDestination;
- (id)messageRouter;
- (id)preProcessMediaSystemMessage:(id)a3;
- (id)preferredAssociatedGroupIdentifierForMediaSystemBuilderPayload:(id)a3;
- (id)stagingMediaSystemDataFromData:(id)a3 accessoryUUIDs:(id)a4;
- (id)unconfiguredParticipantOnboardingManager;
- (id)updateMediaSystemCompletionBlockWithMessage:(id)a3 data:(id)a4 accessoryUUIDs:(id)a5;
- (id)updateParticipantWithAccessoryUUID:(id)a3 associatedGroupIdentifier:(id)a4;
- (id)updateParticipantWithDestinationManager:(id)a3 associatedGroupIdentifier:(id)a4;
- (id)validateConfiguredName:(id)a3;
- (id)validatePayload:(id)a3;
- (void)_legacyHandleAddMediaSystem:(id)a3;
- (void)_legacyHandleAddMediaSystemWithPreProcessedMessage:(id)a3;
- (void)_legacyHandleRemoveMediaSystem:(id)a3;
- (void)_legacyHandleUpdateMediaSystem:(id)a3;
- (void)_logAddMediaSystemMetricsUsingMessage:(id)a3 setupAccessoryUUID:(id)a4 setupRequestOption:(unint64_t)a5;
- (void)_logRemoveMediaSystemMetricsUsingMessage:(id)a3;
- (void)_registerForMessages;
- (void)_routeMessage:(id)a3 localHandler:(id)a4;
- (void)_sendRemoteMessageToAddMediaSystemBypassPrimary:(id)a3;
- (void)_sendRemoteMessageWithXPCMessage:(id)a3 device:(id)a4 withRetries:(unint64_t)a5 delay:(double)a6 lastError:(id)a7;
- (void)handleAddMediaSystemBypassPrimary:(id)a3;
- (void)locallyAddMediaSystemUsingRequestMessage:(id)a3;
- (void)locallyRemoveMediaSystemUsingRemoveRequestMessage:(id)a3;
- (void)locallyUpdateMediaSystemUsingRequestMessage:(id)a3;
- (void)queueOnboardingForUnconfiguredParticipantWithAccessoryUUID:(id)a3 associatedGroupIdentifier:(id)a4;
- (void)routeAddMediaSystem:(id)a3;
- (void)routeRemoveMediaSystem:(id)a3;
- (void)routeUpdateMediaSystem:(id)a3;
- (void)updateParticipantWithDestinationIdentifier:(id)a3 associatedGroupIdentifier:(id)a4;
- (void)updateParticipantWithDestinationIdentifiers:(id)a3 associatedGroupIdentifier:(id)a4;
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
  v2 = [(HMDHomeMediaSystemControllerMessageHandler *)self messageTargetUUID];
  v3 = [v2 UUIDString];

  return v3;
}

- (id)messageDestination
{
  v3 = objc_alloc(MEMORY[0x277D0F820]);
  v4 = [(HMDHomeMediaSystemControllerMessageHandler *)self messageTargetUUID];
  v5 = [v3 initWithTarget:v4];

  return v5;
}

- (NSUUID)messageTargetUUID
{
  v2 = [(HMDHomeMediaSystemControllerMessageHandler *)self home];
  v3 = [v2 uuid];

  return v3;
}

- (void)_routeMessage:(id)a3 localHandler:(id)a4
{
  v45 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDHomeMediaSystemControllerMessageHandler *)self home];
  v9 = v8;
  if (!v8)
  {
    v15 = objc_autoreleasePoolPush();
    v16 = self;
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

  v10 = [v8 primaryResident];
  v11 = [v10 isConfirmed];

  v12 = [v9 primaryResident];
  v13 = [v12 device];
  v14 = [v13 isCurrentDevice];

  if (!v11 || !v14)
  {
    if (![v6 isRemote])
    {
      v25 = [v6 copy];
      v24 = [v25 mutableCopy];

      [v24 setRemote:1];
      [v24 setSecureRemote:1];
      [v24 setTimeout:90.0];
      v26 = [HMDRemoteHomeMessageDestination alloc];
      v27 = [v6 destination];
      v28 = [v27 target];
      v29 = [(HMDHomeMediaSystemControllerMessageHandler *)self homeUUID];
      v30 = [(HMDRemoteHomeMessageDestination *)v26 initWithTarget:v28 homeUUID:v29];
      [v24 setDestination:v30];

      [v24 setRemoteRestriction:41];
      v31 = objc_autoreleasePoolPush();
      v32 = self;
      v33 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v34 = HMFGetLogIdentifier();
        v35 = [v24 identifier];
        v36 = [v6 identifier];
        v39 = 138543874;
        v40 = v34;
        v41 = 2112;
        v42 = v35;
        v43 = 2112;
        v44 = v36;
        _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_DEFAULT, "%{public}@Sending remote home message with identifier: %@ from local message identifier: %@", &v39, 0x20u);
      }

      objc_autoreleasePoolPop(v31);
      v37 = [(HMDHomeMediaSystemControllerMessageHandler *)v32 messageDispatcher];
      [v37 sendMessage:v24];

      goto LABEL_16;
    }

    v20 = objc_autoreleasePoolPush();
    v21 = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      v39 = 138543618;
      v40 = v23;
      v41 = 2112;
      v42 = v6;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@Only primary resident can handle remote message: %@", &v39, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
    v19 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:3202];
LABEL_12:
    v24 = v19;
    [v6 respondWithError:v19];
LABEL_16:

    goto LABEL_17;
  }

  v7[2](v7, v6);
LABEL_17:

  v38 = *MEMORY[0x277D85DE8];
}

- (void)_legacyHandleUpdateMediaSystem:(id)a3
{
  v49 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDHomeMediaSystemControllerMessageHandler *)self preProcessMediaSystemMessage:v4];
  if (v5)
  {
    v6 = [v4 uuidForKey:*MEMORY[0x277CD2470]];
    v7 = [v4 stringForKey:*MEMORY[0x277CD2440]];
    v8 = [v4 stringForKey:*MEMORY[0x277CD2410]];
    v38 = [v4 arrayForKey:*MEMORY[0x277CD2438]];
    if (v6)
    {
      v9 = [(HMDHomeMediaSystemControllerMessageHandler *)self home];
      v10 = [v9 validateName:v7];

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
          v18 = [(HMDHomeMediaSystemControllerMessageHandler *)self delegate];
          v39[0] = MEMORY[0x277D85DD0];
          v39[1] = 3221225472;
          v39[2] = __77__HMDHomeMediaSystemControllerMessageHandler__legacyHandleUpdateMediaSystem___block_invoke;
          v39[3] = &unk_278689230;
          v40 = v4;
          [v18 messageHandlerUpdateMediaSystem:v36 configuredName:v7 leftUUID:v13 leftAccessoryUUID:v14 rightUUID:v15 rightAccessoryUUID:v17 builderSession:v37 completion:v39];

          v19 = v40;
        }

        else
        {
          v34 = v16;
          v35 = v13;
          v29 = objc_autoreleasePoolPush();
          v30 = self;
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
          [v4 respondWithError:v19];
          v17 = v34;
          v13 = v35;
        }

        v6 = v36;
        v8 = v37;
        goto LABEL_21;
      }

      v24 = objc_autoreleasePoolPush();
      v25 = self;
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
      v21 = self;
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

    [v4 respondWithError:v10];
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

- (void)locallyUpdateMediaSystemUsingRequestMessage:(id)a3
{
  v66 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [v4 name];
    v10 = [v4 identifier];
    v11 = [v4 messagePayload];
    *buf = 138544130;
    v59 = v8;
    v60 = 2112;
    v61 = v9;
    v62 = 2112;
    v63 = v10;
    v64 = 2112;
    v65 = v11;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Locally update media system using request message: %@(%@) payload: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v5);
  v12 = objc_alloc(MEMORY[0x277CD1BF8]);
  v13 = [v4 messagePayload];
  v14 = [v12 initWithPayload:v13];

  v15 = [(HMDHomeMediaSystemControllerMessageHandler *)v6 mediaGroupsAggregator];
  v16 = v15;
  if (v14 && v15)
  {
    v17 = [v14 uuid];
    v18 = [v16 localGroupWithIdentifier:v17];

    v19 = [v18 mediaSystemData];
    if (v19)
    {
      v20 = [(HMDHomeMediaSystemControllerMessageHandler *)v6 validatePayload:v14];
      if (!v20)
      {
        v21 = [v19 mutableCopy];
        v22 = [v14 configuredName];
        v54 = v19;
        if (v22)
        {
          [v21 setName:v22];
        }

        else
        {
          v32 = [MEMORY[0x277CD1C08] roomNameSentinel];
          [v21 setName:v32];
        }

        v33 = [v14 configuredName];
        [v21 setDefaultName:v33 == 0];

        v34 = [v14 leftAccessoryUUID];
        [v21 setLeftDestinationIdentifier:v34];

        v35 = [v14 rightAccessoryUUID];
        [v21 setRightDestinationIdentifier:v35];

        v36 = [v14 leftAccessoryUUID];
        v57[0] = v36;
        v37 = [v14 rightAccessoryUUID];
        v57[1] = v37;
        v38 = [MEMORY[0x277CBEA60] arrayWithObjects:v57 count:2];
        [v16 updateGroup:v21 participantAccessoryUUIDs:v38];

        v51 = [v14 leftAccessoryUUID];
        v50 = [v14 uuid];
        v39 = [(HMDHomeMediaSystemControllerMessageHandler *)v6 updateParticipantWithAccessoryUUID:v51 associatedGroupIdentifier:v50];
        v56[0] = v39;
        [v14 rightAccessoryUUID];
        v40 = v53 = v21;
        v41 = [v14 uuid];
        v42 = [(HMDHomeMediaSystemControllerMessageHandler *)v6 updateParticipantWithAccessoryUUID:v40 associatedGroupIdentifier:v41];
        v56[1] = v42;
        v52 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:2];

        v43 = [MEMORY[0x277D2C900] chainFutures:v52];
        v44 = [v14 leftAccessoryUUID];
        v55[0] = v44;
        v45 = [v14 rightAccessoryUUID];
        v55[1] = v45;
        v46 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:2];
        v47 = [(HMDHomeMediaSystemControllerMessageHandler *)v6 updateMediaSystemCompletionBlockWithMessage:v4 data:v53 accessoryUUIDs:v46];
        v48 = [v43 addCompletionBlock:v47];

        v31 = 0;
        v19 = v54;
        goto LABEL_18;
      }
    }

    else
    {
      v27 = objc_autoreleasePoolPush();
      v28 = v6;
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
    [v4 respondWithError:v20];
LABEL_18:

    goto LABEL_19;
  }

  v23 = objc_autoreleasePoolPush();
  v24 = v6;
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
  [v4 respondWithError:v18];
LABEL_19:

  v49 = *MEMORY[0x277D85DE8];
}

- (void)routeUpdateMediaSystem:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [v4 name];
    v10 = [v4 identifier];
    *buf = 138543874;
    v19 = v8;
    v20 = 2112;
    v21 = v9;
    v22 = 2112;
    v23 = v10;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Routing update media system message: %@(%@)", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
  if (isFeatureHomeTheaterQFAEnabledForTests && ([isFeatureHomeTheaterQFAEnabledForTests BOOLValue] & 1) == 0)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = v6;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543362;
      v19 = v14;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Home theater QFA is not enabled using legacy flows", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    [(HMDHomeMediaSystemControllerMessageHandler *)v12 _legacyHandleUpdateMediaSystem:v4];
  }

  else
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __69__HMDHomeMediaSystemControllerMessageHandler_routeUpdateMediaSystem___block_invoke;
    v16[3] = &unk_2786858B0;
    v16[4] = v6;
    v17 = v4;
    [(HMDHomeMediaSystemControllerMessageHandler *)v6 _routeMessage:v17 localHandler:v16];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_legacyHandleRemoveMediaSystem:(id)a3
{
  v8 = a3;
  v4 = [v8 uuidForKey:*MEMORY[0x277CD2470]];
  v5 = [v8 stringForKey:*MEMORY[0x277CD2410]];
  v6 = [(HMDHomeMediaSystemControllerMessageHandler *)self preProcessMediaSystemMessage:v8];
  if (v6)
  {
    v7 = [(HMDHomeMediaSystemControllerMessageHandler *)self delegate];
    [v7 messageHandlerRemoveMediaSystem:v4 builderSession:v5 message:v8];
  }
}

- (void)locallyRemoveMediaSystemUsingRemoveRequestMessage:(id)a3
{
  v45 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [v4 name];
    v10 = [v4 identifier];
    v11 = [v4 messagePayload];
    v37 = 138544130;
    v38 = v8;
    v39 = 2112;
    v40 = v9;
    v41 = 2112;
    v42 = v10;
    v43 = 2112;
    v44 = v11;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Locallying remove media system using request message: %@(%@) payload: %@", &v37, 0x2Au);
  }

  objc_autoreleasePoolPop(v5);
  v12 = [v4 messagePayload];
  v13 = [v12 hmf_UUIDForKey:*MEMORY[0x277CD2470]];

  if (v13)
  {
    v14 = [(HMDHomeMediaSystemControllerMessageHandler *)v6 mediaGroupsAggregator];
    v15 = v14;
    if (v14)
    {
      v16 = [v14 localGroupWithIdentifier:v13];
      v17 = [v16 mediaSystemData];
      v18 = v17;
      if (v17)
      {
        v19 = [v17 associatedGroupIdentifier];
        v20 = [v18 destinationUniqueIdentifiers];
        [(HMDHomeMediaSystemControllerMessageHandler *)v6 updateParticipantWithDestinationIdentifiers:v20 associatedGroupIdentifier:v19];

        [v15 removeGroupWithIdentifier:v13];
        [v4 respondWithSuccess];
      }

      else
      {
        v32 = objc_autoreleasePoolPush();
        v33 = v6;
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
        v19 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
        [v4 respondWithError:v19];
      }
    }

    else
    {
      v28 = objc_autoreleasePoolPush();
      v29 = v6;
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
      [v4 respondWithError:v16];
    }
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    v22 = v6;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      v25 = [v4 name];
      v26 = [v4 identifier];
      v27 = [v4 messagePayload];
      v37 = 138544130;
      v38 = v24;
      v39 = 2112;
      v40 = v25;
      v41 = 2112;
      v42 = v26;
      v43 = 2112;
      v44 = v27;
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@Failed to remove media system due to invalid payload in request message: %@(%@) payload: %@", &v37, 0x2Au);
    }

    objc_autoreleasePoolPop(v21);
    v15 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:8];
    [v4 respondWithError:v15];
  }

  v36 = *MEMORY[0x277D85DE8];
}

- (void)routeRemoveMediaSystem:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (isFeatureHomeTheaterQFAEnabledForTests && ([isFeatureHomeTheaterQFAEnabledForTests BOOLValue] & 1) == 0)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543362;
      v13 = v8;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@Home theater QFA is not enabled using legacy flows", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    [(HMDHomeMediaSystemControllerMessageHandler *)v6 _legacyHandleRemoveMediaSystem:v4];
  }

  else
  {
    [(HMDHomeMediaSystemControllerMessageHandler *)self _logRemoveMediaSystemMetricsUsingMessage:v4];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __69__HMDHomeMediaSystemControllerMessageHandler_routeRemoveMediaSystem___block_invoke;
    v10[3] = &unk_2786858B0;
    v10[4] = self;
    v11 = v4;
    [(HMDHomeMediaSystemControllerMessageHandler *)self _routeMessage:v11 localHandler:v10];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_legacyHandleAddMediaSystemWithPreProcessedMessage:(id)a3
{
  v51 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 uuidForKey:*MEMORY[0x277CD2470]];
  v6 = [v4 stringForKey:*MEMORY[0x277CD2440]];
  v7 = [v4 arrayForKey:*MEMORY[0x277CD2438]];
  v8 = [v4 stringForKey:*MEMORY[0x277CD2410]];
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
    v12 = self;
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

  v15 = [(HMDHomeMediaSystemControllerMessageHandler *)self home];
  v16 = [v15 validateName:v6];

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
    v26 = self;
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
    [v4 respondWithError:v16];
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
    v23 = [(HMDHomeMediaSystemControllerMessageHandler *)self delegate];
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __97__HMDHomeMediaSystemControllerMessageHandler__legacyHandleAddMediaSystemWithPreProcessedMessage___block_invoke;
    v39[3] = &unk_278689230;
    v40 = v4;
    [v23 messageHandlerAddMediaSystem:v5 configuredName:v6 leftUUID:v38 leftAccessoryUUID:v19 rightUUID:v20 rightAccessoryUUID:v22 builderSession:v9 completion:v39];

    v24 = v40;
  }

  else
  {
    v35 = v21;
    v36 = v20;
    v30 = objc_autoreleasePoolPush();
    v31 = self;
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
    [v4 respondWithError:v24];
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

- (void)_legacyHandleAddMediaSystem:(id)a3
{
  v4 = [(HMDHomeMediaSystemControllerMessageHandler *)self preProcessMediaSystemMessage:a3];
  if (v4)
  {
    v5 = v4;
    [(HMDHomeMediaSystemControllerMessageHandler *)self _legacyHandleAddMediaSystemWithPreProcessedMessage:v4];
    v4 = v5;
  }
}

- (id)appleMediaAccessoryWithUUID:(id)a3
{
  v4 = a3;
  v5 = [(HMDHomeMediaSystemControllerMessageHandler *)self home];
  v6 = [v5 homeManager];

  v7 = [v6 accessoryWithUUID:v4];

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
  v3 = [(HMDHomeMediaSystemControllerMessageHandler *)self home];
  v4 = [v3 uuid];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v13 = 138543618;
      v14 = v10;
      v15 = 2112;
      v16 = v3;
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
  v3 = [(HMDHomeMediaSystemControllerMessageHandler *)self home];
  v4 = [v3 mediaGroupsAggregator];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v13 = 138543618;
      v14 = v10;
      v15 = 2112;
      v16 = v3;
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
  v3 = [(HMDHomeMediaSystemControllerMessageHandler *)self home];
  v4 = [v3 primaryResidentMessageRouter];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v13 = 138543618;
      v14 = v10;
      v15 = 2112;
      v16 = v3;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to get primary message router in home: %@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)unconfiguredParticipantOnboardingManager
{
  v2 = [(HMDHomeMediaSystemControllerMessageHandler *)self home];
  v3 = [v2 mediaGroupsUnconfiguredParticipantOnboardingManager];

  return v3;
}

- (void)queueOnboardingForUnconfiguredParticipantWithAccessoryUUID:(id)a3 associatedGroupIdentifier:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = HMFGetLogIdentifier();
    v19 = 138543874;
    v20 = v11;
    v21 = 2112;
    v22 = v6;
    v23 = 2112;
    v24 = v7;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@Queueing onboarding participant accessory uuid: %@ associated group identifier: %@", &v19, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [(HMDHomeMediaSystemControllerMessageHandler *)v9 unconfiguredParticipantOnboardingManager];
  v13 = v12;
  if (v12)
  {
    [v12 queueOnboardingParticipantWithAccessoryUUID:v6 withAssociatedGroupIdentifier:v7];
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v15 = v9;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      v19 = 138543874;
      v20 = v17;
      v21 = 2112;
      v22 = v6;
      v23 = 2112;
      v24 = v7;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Failed to queue participant accessory uuid: %@ associated group identifier: %@ due to no onboarding manager", &v19, 0x20u);
    }

    objc_autoreleasePoolPop(v14);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (id)updateParticipantWithDestinationManager:(id)a3 associatedGroupIdentifier:(id)a4
{
  v6 = MEMORY[0x277D2C900];
  v7 = a4;
  v8 = a3;
  v9 = objc_alloc_init(v6);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __112__HMDHomeMediaSystemControllerMessageHandler_updateParticipantWithDestinationManager_associatedGroupIdentifier___block_invoke;
  v14[3] = &unk_27868A1D8;
  v14[4] = self;
  v10 = v9;
  v15 = v10;
  [v8 requestToUpdateAudioGroupIdentifier:v7 completion:v14];

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

- (id)updateParticipantWithAccessoryUUID:(id)a3 associatedGroupIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HMDHomeMediaSystemControllerMessageHandler *)self home];
  v9 = [v8 destinationManagerWithParentIdentifier:v6];
  if (v9)
  {
    v10 = [(HMDHomeMediaSystemControllerMessageHandler *)self updateParticipantWithDestinationManager:v9 associatedGroupIdentifier:v7];
  }

  else
  {
    [(HMDHomeMediaSystemControllerMessageHandler *)self queueOnboardingForUnconfiguredParticipantWithAccessoryUUID:v6 associatedGroupIdentifier:v7];

    v10 = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  return v10;
}

- (void)updateParticipantWithDestinationIdentifier:(id)a3 associatedGroupIdentifier:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDHomeMediaSystemControllerMessageHandler *)self home];
  v9 = [v8 destinationManagerWithDestinationIdentifier:v6];
  if (v9 || ([v8 destinationManagerWithParentIdentifier:v6], (v9 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v10 = v9;
    v11 = [(HMDHomeMediaSystemControllerMessageHandler *)self updateParticipantWithDestinationManager:v9 associatedGroupIdentifier:v7];
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      v17 = 138543874;
      v18 = v16;
      v19 = 2112;
      v20 = v6;
      v21 = 2112;
      v22 = v8;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to update participant with destination identifier: %@ due to no destination manager found in home: %@", &v17, 0x20u);
    }

    objc_autoreleasePoolPop(v13);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)updateParticipantWithDestinationIdentifiers:(id)a3 associatedGroupIdentifier:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __116__HMDHomeMediaSystemControllerMessageHandler_updateParticipantWithDestinationIdentifiers_associatedGroupIdentifier___block_invoke;
  v8[3] = &unk_278677FA0;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  [a3 na_each:v8];
}

- (id)mediaSystemNameFromRoomWithAccessoryUUIDs:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDHomeMediaSystemControllerMessageHandler *)self home];
  if (v5)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = v4;
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

          v11 = [v5 accessoryWithUUID:{*(*(&v17 + 1) + 8 * i), v17}];
          v12 = [v11 room];
          if (v12)
          {
            v14 = v12;
            v13 = [v12 name];

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

  v13 = [MEMORY[0x277CD1C08] defaultGroupName];
LABEL_13:

  v15 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)stagingMediaSystemDataFromData:(id)a3 accessoryUUIDs:(id)a4
{
  v6 = a4;
  v7 = [a3 mutableCopy];
  v8 = [v7 name];
  v9 = [MEMORY[0x277CD1C08] roomNameSentinel];
  if ([v8 isEqualToString:v9])
  {
    [(HMDHomeMediaSystemControllerMessageHandler *)self mediaSystemNameFromRoomWithAccessoryUUIDs:v6];
  }

  else
  {
    [v7 name];
  }
  v10 = ;
  [v7 setName:v10];

  return v7;
}

- (id)updateMediaSystemCompletionBlockWithMessage:(id)a3 data:(id)a4 accessoryUUIDs:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __110__HMDHomeMediaSystemControllerMessageHandler_updateMediaSystemCompletionBlockWithMessage_data_accessoryUUIDs___block_invoke;
  v16[3] = &unk_278674C08;
  v16[4] = self;
  v17 = v8;
  v18 = v9;
  v19 = v10;
  v11 = v10;
  v12 = v9;
  v13 = v8;
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

- (id)validateConfiguredName:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v13 = objc_autoreleasePoolPush();
    v14 = self;
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

  if (![v4 length] || (v6 = objc_msgSend(v5, "length"), v6 > HMMaxLengthForNaming()))
  {
    v7 = objc_autoreleasePoolPush();
    v8 = self;
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

  v20 = [(HMDHomeMediaSystemControllerMessageHandler *)self home];
  v21 = v20;
  if (v20)
  {
    v17 = [v20 validateName:v5];
    if (v17)
    {
      v22 = objc_autoreleasePoolPush();
      v23 = self;
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
    v28 = self;
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

- (id)validatePayload:(id)a3
{
  v4 = [a3 configuredName];
  if (v4)
  {
    v5 = [(HMDHomeMediaSystemControllerMessageHandler *)self validateConfiguredName:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)preferredAssociatedGroupIdentifierForMediaSystemBuilderPayload:(id)a3
{
  v44 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDHomeMediaSystemControllerMessageHandler *)self home];
  v6 = [v4 leftAccessoryUUID];
  v7 = [v5 destinationManagerWithParentIdentifier:v6];

  v35 = v7;
  v8 = [v7 destination];
  v9 = [v8 audioGroupIdentifier];
  v10 = [v4 rightAccessoryUUID];
  v11 = [v5 destinationManagerWithParentIdentifier:v10];

  v34 = v11;
  v12 = [v11 destination];
  v13 = [v12 audioGroupIdentifier];
  if (!v8 || !v12)
  {
    v14 = objc_autoreleasePoolPush();
    v15 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v17 = v32 = v4;
      *buf = 138544130;
      v37 = v17;
      v38 = 2112;
      v39 = v8;
      v40 = 2112;
      v41 = v12;
      v42 = 2112;
      v43 = v5;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Preferred associated group will be derived without influence from missing left destination: %@ right destination: %@ in home: %@", buf, 0x2Au);

      v4 = v32;
    }

    objc_autoreleasePoolPop(v14);
  }

  if (v9 && v13 && ([v9 isEqual:v13] & 1) == 0)
  {
    v25 = objc_autoreleasePoolPush();
    v26 = self;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v29 = v28 = v4;
      *buf = 138543874;
      v37 = v29;
      v38 = 2112;
      v39 = v8;
      v40 = 2112;
      v41 = v12;
      _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_INFO, "%{public}@Not setting a preferred group identifier due to miss matching groups on left destination: %@ right destination: %@", buf, 0x20u);

      v4 = v28;
    }

    objc_autoreleasePoolPop(v25);
    v19 = 0;
  }

  else
  {
    if (v9)
    {
      v18 = v9;
    }

    else
    {
      v18 = v13;
    }

    v19 = v18;
    if (v19)
    {
      v20 = objc_autoreleasePoolPush();
      v21 = self;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v23 = v33 = v4;
        *buf = 138543618;
        v37 = v23;
        v38 = 2112;
        v39 = v19;
        _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@Setting preferred associated group identifier: %@", buf, 0x16u);

        v4 = v33;
      }

      objc_autoreleasePoolPop(v20);
      v24 = v19;
    }
  }

  v30 = *MEMORY[0x277D85DE8];

  return v19;
}

- (void)locallyAddMediaSystemUsingRequestMessage:(id)a3
{
  v65 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [v4 name];
    v10 = [v4 identifier];
    v11 = [v4 messagePayload];
    *buf = 138544130;
    v58 = v8;
    v59 = 2112;
    v60 = v9;
    v61 = 2112;
    v62 = v10;
    v63 = 2112;
    v64 = v11;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Locally add media system using request message: %@(%@) payload: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v5);
  v12 = objc_alloc(MEMORY[0x277CD1BF8]);
  v13 = [v4 messagePayload];
  v14 = [v12 initWithPayload:v13];

  v15 = [(HMDHomeMediaSystemControllerMessageHandler *)v6 homeUUID];
  v16 = [(HMDHomeMediaSystemControllerMessageHandler *)v6 mediaGroupsAggregator];
  v17 = v16;
  if (!v14 || !v15 || !v16)
  {
    v22 = objc_autoreleasePoolPush();
    v23 = v6;
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
      v64 = v15;
      _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_INFO, "%{public}@Failed to add media system due to missing dependencies payload: %@ aggregator: %@ homeUUID: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v22);
    v18 = [MEMORY[0x277CCA9B8] hmErrorWithCode:21];
    goto LABEL_12;
  }

  v18 = [(HMDHomeMediaSystemControllerMessageHandler *)v6 validatePayload:v14];
  if (v18)
  {
LABEL_12:
    v26 = v18;
    [v4 respondWithError:v18];
    goto LABEL_13;
  }

  v19 = [v14 configuredName];
  v20 = v19;
  v52 = v17;
  if (v19)
  {
    v21 = v19;
  }

  else
  {
    v21 = [MEMORY[0x277CD1C08] roomNameSentinel];
  }

  v53 = v21;

  v28 = [v14 configuredName];
  v29 = v28 == 0;

  v30 = objc_alloc(MEMORY[0x277CD1C08]);
  v31 = [v14 uuid];
  v32 = [(HMDHomeMediaSystemControllerMessageHandler *)v6 preferredAssociatedGroupIdentifierForMediaSystemBuilderPayload:v14];
  v33 = [v14 leftAccessoryUUID];
  v34 = [v14 rightAccessoryUUID];
  v51 = [v30 initWithIdentifier:v31 parentIdentifier:v15 name:v53 defaultName:v29 associatedGroupIdentifier:v32 leftDestinationIdentifier:v33 rightDestinationIdentifier:v34];

  v35 = [v14 leftAccessoryUUID];
  v56[0] = v35;
  v36 = [v14 rightAccessoryUUID];
  v56[1] = v36;
  v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:2];
  v17 = v52;
  [v52 updateGroup:v51 participantAccessoryUUIDs:v37];

  v49 = [v14 leftAccessoryUUID];
  v48 = [v14 uuid];
  v38 = [(HMDHomeMediaSystemControllerMessageHandler *)v6 updateParticipantWithAccessoryUUID:v49 associatedGroupIdentifier:v48];
  v55[0] = v38;
  v39 = [v14 rightAccessoryUUID];
  v40 = [v14 uuid];
  v41 = [(HMDHomeMediaSystemControllerMessageHandler *)v6 updateParticipantWithAccessoryUUID:v39 associatedGroupIdentifier:v40];
  v55[1] = v41;
  v50 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:2];

  v42 = [MEMORY[0x277D2C900] chainFutures:v50];
  v43 = [v14 leftAccessoryUUID];
  v54[0] = v43;
  v44 = [v14 rightAccessoryUUID];
  v54[1] = v44;
  v45 = [MEMORY[0x277CBEA60] arrayWithObjects:v54 count:2];
  v46 = [(HMDHomeMediaSystemControllerMessageHandler *)v6 updateMediaSystemCompletionBlockWithMessage:v4 data:v51 accessoryUUIDs:v45];
  v47 = [v42 addCompletionBlock:v46];

  v26 = 0;
LABEL_13:

  v27 = *MEMORY[0x277D85DE8];
}

- (void)_logRemoveMediaSystemMetricsUsingMessage:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDHomeMediaSystemControllerMessageHandler *)self home];
  v6 = [v4 messagePayload];
  v7 = v6;
  if (v5 && v6)
  {
    v8 = [v6 objectForKeyedSubscript:*MEMORY[0x277CD2470]];
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
    v13 = self;
    v14 = HMFGetOSLogHandle();
    v15 = v14;
    if (v11)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v16 = HMFGetLogIdentifier();
        v17 = [v4 name];
        v25 = 138543874;
        v26 = v16;
        v27 = 2112;
        v28 = v17;
        v29 = 2112;
        v30 = v11;
        _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Received %@ message for media system UUID: %@", &v25, 0x20u);
      }

      objc_autoreleasePoolPop(v12);
      v18 = [v5 mediaSystemSetupMetricDispatcher];
      [v18 markRequestReceivedForGroupIdentifier:v11 metricType:2 setupSessionIdentifier:0 setupRequestOption:0 setupSessionStartTimeMS:0];
    }

    else
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v23 = HMFGetLogIdentifier();
        v25 = 138543618;
        v26 = v23;
        v27 = 2112;
        v28 = v4;
        _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Message %@ payload does not contain valid media system UUID", &v25, 0x16u);
      }

      objc_autoreleasePoolPop(v12);
    }
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    v20 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      v25 = 138543874;
      v26 = v22;
      v27 = 2112;
      v28 = v5;
      v29 = 2112;
      v30 = v7;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@home: %@ or payload: %@ is nil", &v25, 0x20u);
    }

    objc_autoreleasePoolPop(v19);
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)_logAddMediaSystemMetricsUsingMessage:(id)a3 setupAccessoryUUID:(id)a4 setupRequestOption:(unint64_t)a5
{
  v41 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [(HMDHomeMediaSystemControllerMessageHandler *)self home];
  v11 = objc_alloc(MEMORY[0x277CD1BF8]);
  v12 = [v8 messagePayload];
  v13 = [v11 initWithPayload:v12];

  v14 = objc_autoreleasePoolPush();
  v15 = self;
  v16 = HMFGetOSLogHandle();
  v17 = v16;
  if (v10 && v13)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      v19 = [v8 name];
      *buf = 138543874;
      v36 = v18;
      v37 = 2112;
      v38 = v19;
      v39 = 2112;
      v40 = v13;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Received %@ message for media system builder payload %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v14);
    v20 = [v10 homeManager];
    v21 = v20;
    v33 = v9;
    v34 = 0.0;
    if (v9)
    {
      v22 = [v20 setupSessionIdentifierForAccessoryUUID:v9 outStartTime:&v34];
    }

    else
    {
      v22 = 0;
    }

    v24 = a5;
    v25 = objc_autoreleasePoolPush();
    v26 = v15;
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
    v30 = [v10 mediaSystemSetupMetricDispatcher];
    v31 = [v13 uuid];
    [v30 markRequestReceivedForGroupIdentifier:v31 metricType:1 setupSessionIdentifier:v22 setupRequestOption:v24 setupSessionStartTimeMS:v29];

    v9 = v33;
  }

  else
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543874;
      v36 = v23;
      v37 = 2112;
      v38 = v10;
      v39 = 2112;
      v40 = v13;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Home: %@ or media system builder payload: %@ is nil", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v14);
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (void)handleAddMediaSystemBypassPrimary:(id)a3
{
  v97 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [v4 name];
    v10 = [v4 identifier];
    v11 = [v4 messagePayload];
    *buf = 138544130;
    v90 = v8;
    v91 = 2112;
    v92 = v9;
    v93 = 2112;
    v94 = v10;
    v95 = 2112;
    v96 = v11;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling add media system bypassing primary resident using message: %@(%@) payload: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v5);
  v12 = objc_alloc(MEMORY[0x277CD1BF8]);
  v13 = [v4 messagePayload];
  v14 = [v12 initWithPayload:v13];

  v15 = [(HMDHomeMediaSystemControllerMessageHandler *)v6 home];
  v16 = [v15 homeManager];
  v17 = v16;
  if (!v14 || !v15 || !v16)
  {
    v24 = objc_autoreleasePoolPush();
    v25 = v6;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = HMFGetLogIdentifier();
      v28 = [v15 uuid];
      v29 = [v17 uuid];
      *buf = 138544130;
      v90 = v27;
      v91 = 2112;
      v92 = v14;
      v93 = 2112;
      v94 = v28;
      v95 = 2112;
      v96 = v29;
      _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_INFO, "%{public}@Missing dependencies payload: %@ homeUUID: %@ homeManagerUUID: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v24);
    v19 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:9018];
    goto LABEL_13;
  }

  v18 = [(HMDHomeMediaSystemControllerMessageHandler *)v6 validatePayload:v14];
  if (!v18)
  {
    v31 = [v17 currentAccessory];
    v32 = v31;
    if (v31)
    {
      v33 = [(HMDMediaSystem *)v31 uuid];
      v34 = [(HMDMediaSystem *)v14 leftAccessoryUUID];
      if ([v33 hmf_isEqualToUUID:v34])
      {

LABEL_19:
        v38 = [(HMDMediaSystem *)v32 uuid];
        v39 = [v15 destinationManagerWithParentIdentifier:v38];

        if (v39)
        {
          v40 = [(HMDMediaSystem *)v14 configuredName];
          v41 = v40;
          v77 = v39;
          if (v40)
          {
            v42 = v40;
          }

          else
          {
            v42 = [MEMORY[0x277CD1C08] roomNameSentinel];
          }

          v85 = v42;

          v52 = [(HMDMediaSystem *)v14 configuredName];
          v82 = v52 == 0;

          v53 = [v15 uuid];
          v54 = [(HMDMediaSystem *)v14 uuid];
          v55 = [(HMDMediaSystem *)v14 leftAccessoryUUID];
          v56 = [(HMDMediaSystem *)v14 rightAccessoryUUID];
          v57 = objc_alloc(MEMORY[0x277CD1C08]);
          v79 = v53;
          v58 = v82;
          v81 = v56;
          v83 = v55;
          v59 = [v57 initWithIdentifier:v54 parentIdentifier:v53 name:v85 defaultName:v58 associatedGroupIdentifier:0 leftDestinationIdentifier:v55 rightDestinationIdentifier:v56];
          v78 = v54;
          v60 = v54;
          v39 = v77;
          LODWORD(v55) = [v77 updateTargetDeviceAudioGroupIdentifier:v60];
          v61 = [v77 addGroupDataForTargetDevice:v59];
          v80 = v32;
          v76 = v59;
          if (v55 && (v61 & 1) != 0)
          {
            v88[0] = v83;
            v88[1] = v56;
            v62 = [MEMORY[0x277CBEA60] arrayWithObjects:v88 count:2];
            v63 = [(HMDHomeMediaSystemControllerMessageHandler *)v6 stagingMediaSystemDataFromData:v59 accessoryUUIDs:v62];

            v64 = [[HMDMediaSystem alloc] initWithMediaSystemData:v63 home:v15];
            v65 = objc_autoreleasePoolPush();
            v66 = v6;
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
            v69 = [(HMDMediaSystem *)v64 serialize];
            v87 = v69;
            v70 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v87 forKeys:&v86 count:1];
            [v4 respondWithPayload:v70];
          }

          else
          {
            v71 = objc_autoreleasePoolPush();
            v72 = v6;
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
            [v4 respondWithError:v63];
          }

          v32 = v80;
          v51 = v85;
        }

        else
        {
          v47 = objc_autoreleasePoolPush();
          v48 = v6;
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
          [v4 respondWithError:v51];
        }

LABEL_39:
        v19 = 0;
        goto LABEL_14;
      }

      v35 = [(HMDMediaSystem *)v32 uuid];
      [(HMDMediaSystem *)v14 rightAccessoryUUID];
      v37 = v36 = v32;
      v84 = [v35 hmf_isEqualToUUID:v37];

      v32 = v36;
      if (v84)
      {
        goto LABEL_19;
      }
    }

    v43 = objc_autoreleasePoolPush();
    v44 = v6;
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
    [v4 respondWithError:v39];
    goto LABEL_39;
  }

  v19 = v18;
  v20 = objc_autoreleasePoolPush();
  v21 = v6;
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
  [v4 respondWithError:v19];
LABEL_14:

  v30 = *MEMORY[0x277D85DE8];
}

- (BOOL)_shouldAddMediaSystemBypassPrimary:(id)a3 outSetupAccessoryUUID:(id *)a4 outFallbackReason:(unint64_t *)a5
{
  v74 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = objc_alloc(MEMORY[0x277CD1BF8]);
  v10 = [v8 messagePayload];
  v11 = [v9 initWithPayload:v10];

  v12 = [(HMDHomeMediaSystemControllerMessageHandler *)self validatePayload:v11];
  if (v12)
  {
    v13 = objc_autoreleasePoolPush();
    v14 = self;
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
    v18 = v14;
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
    if (a5)
    {
      *a5 |= 8uLL;
    }
  }

  else
  {
    v22 = [(HMDHomeMediaSystemControllerMessageHandler *)self home];
    v23 = [v22 homeManager];

    v24 = [v23 hasMediaSystemHints];
    v25 = [v23 peerAccessoryUUIDFromHints];
    v26 = v25;
    if (v24 && v25)
    {
      v27 = [v11 leftAccessoryUUID];
      v28 = [v11 rightAccessoryUUID];
      v67 = v28;
      if ([v26 hmf_isEqualToUUID:v27] & 1) != 0 || (objc_msgSend(v26, "hmf_isEqualToUUID:", v28))
      {
        v29 = [(HMDHomeMediaSystemControllerMessageHandler *)self appleMediaAccessoryWithUUID:v26];
        v30 = [v29 deviceForDirectMessaging];
        v66 = v29;
        if (v29 && v30)
        {
          v58 = v30;
          v31 = [(HMDHomeMediaSystemControllerMessageHandler *)self appleMediaAccessoryWithUUID:v27];
          [(HMDHomeMediaSystemControllerMessageHandler *)self appleMediaAccessoryWithUUID:v67];
          v60 = v59 = v31;
          if (v31 && [v31 supportsStereoOdeonTTSUBypassingPrimary] && v60 && (objc_msgSend(v60, "supportsStereoOdeonTTSUBypassingPrimary") & 1) != 0)
          {
            if (a4)
            {
              if ([v26 hmf_isEqualToUUID:v27])
              {
                v32 = v67;
              }

              else
              {
                v32 = v27;
              }

              *a4 = v32;
            }

            v62 = v27;
            v33 = objc_autoreleasePoolPush();
            v34 = self;
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
            v27 = v62;
          }

          else
          {
            context = objc_autoreleasePoolPush();
            v46 = self;
            v47 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
            {
              v56 = HMFGetLogIdentifier();
              [v59 supportsStereoOdeonTTSUBypassingPrimary];
              v48 = HMFBooleanToString();
              [v60 supportsStereoOdeonTTSUBypassingPrimary];
              HMFBooleanToString();
              v49 = v64 = v27;
              *buf = 138543874;
              v69 = v56;
              v70 = 2112;
              v71 = v48;
              v72 = 2112;
              v73 = v49;
              _os_log_impl(&dword_229538000, v47, OS_LOG_TYPE_ERROR, "%{public}@At least one accessory does not support the feature. Left: %@, Right: %@", buf, 0x20u);

              v27 = v64;
            }

            objc_autoreleasePoolPop(context);
            v21 = 0;
            if (a5)
            {
              *a5 |= 0x80uLL;
            }
          }

          v41 = v58;
        }

        else
        {
          v41 = v30;
          v63 = v27;
          v42 = objc_autoreleasePoolPush();
          v43 = self;
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
          if (a5)
          {
            *a5 |= 0x40uLL;
          }

          v27 = v63;
        }
      }

      else
      {
        v65 = v27;
        v50 = objc_autoreleasePoolPush();
        v51 = self;
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
        if (a5)
        {
          *a5 |= 0x20uLL;
        }

        v27 = v65;
      }
    }

    else
    {
      v37 = objc_autoreleasePoolPush();
      v38 = self;
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
      if (a5)
      {
        *a5 |= 0x10uLL;
      }
    }
  }

  v54 = *MEMORY[0x277D85DE8];
  return v21;
}

- (void)_sendRemoteMessageWithXPCMessage:(id)a3 device:(id)a4 withRetries:(unint64_t)a5 delay:(double)a6 lastError:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a7;
  if (a5)
  {
    v15 = [v12 copy];
    v16 = [v15 mutableCopy];

    [v16 setName:*MEMORY[0x277CD2088]];
    [v16 setRemote:1];
    [v16 setSecureRemote:1];
    if (a5 != 1)
    {
      [v16 setTimeout:15.0];
    }

    v17 = [HMDRemoteDeviceMessageDestination alloc];
    v18 = [v12 destination];
    v19 = [v18 target];
    v20 = [(HMDRemoteDeviceMessageDestination *)v17 initWithTarget:v19 device:v13];
    [v16 setDestination:v20];

    [v16 setRemoteRestriction:41];
    objc_initWeak(&location, self);
    v22 = MEMORY[0x277D85DD0];
    v23 = 3221225472;
    v24 = __114__HMDHomeMediaSystemControllerMessageHandler__sendRemoteMessageWithXPCMessage_device_withRetries_delay_lastError___block_invoke;
    v25 = &unk_278674BE0;
    objc_copyWeak(v28, &location);
    v26 = v12;
    v28[1] = a5;
    v27 = v13;
    v28[2] = *&a6;
    [v16 setResponseHandler:&v22];
    v21 = [(HMDHomeMediaSystemControllerMessageHandler *)self messageDispatcher:v22];
    [v21 sendMessage:v16];

    objc_destroyWeak(v28);
    objc_destroyWeak(&location);
  }

  else
  {
    v16 = [MEMORY[0x277CCA9B8] hmErrorWithCode:4 description:@"Exceeded maximum retries" reason:@"All messages failed" suggestion:0 underlyingError:v14];
    [v12 respondWithError:v16];
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

- (void)_sendRemoteMessageToAddMediaSystemBypassPrimary:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDHomeMediaSystemControllerMessageHandler *)self home];
  v6 = [v5 homeManager];

  v7 = [v6 peerAccessoryUUIDFromHints];
  v8 = [(HMDHomeMediaSystemControllerMessageHandler *)self appleMediaAccessoryWithUUID:v7];
  v9 = [v8 deviceForDirectMessaging];
  v10 = objc_autoreleasePoolPush();
  v11 = self;
  v12 = HMFGetOSLogHandle();
  v13 = v12;
  if (v8 && v9)
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
    [(HMDHomeMediaSystemControllerMessageHandler *)v11 _sendRemoteMessageWithXPCMessage:v4 device:v9 withRetries:3 delay:0 lastError:15.0];
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
    [v4 respondWithError:v16];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)routeAddMediaSystem:(id)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [v4 name];
    v10 = [v4 identifier];
    *buf = 138543874;
    v34 = v8;
    v35 = 2112;
    v36 = v9;
    v37 = 2112;
    v38 = v10;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Routing add media system message: %@(%@)", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
  if (isFeatureHomeTheaterQFAEnabledForTests && ([isFeatureHomeTheaterQFAEnabledForTests BOOLValue] & 1) == 0)
  {
    v24 = objc_autoreleasePoolPush();
    v25 = v6;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138543362;
      v34 = v27;
      _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_ERROR, "%{public}@Home theater QFA is not enabled using legacy flows", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v24);
    [(HMDHomeMediaSystemControllerMessageHandler *)v25 _legacyHandleAddMediaSystem:v4];
  }

  else
  {
    v31 = 0;
    v32 = 0;
    v11 = [(HMDHomeMediaSystemControllerMessageHandler *)v6 _shouldAddMediaSystemBypassPrimary:v4 outSetupAccessoryUUID:&v31 outFallbackReason:&v32];
    v12 = v31;
    if (v11 && (-[HMDHomeMediaSystemControllerMessageHandler home](v6, "home"), v13 = objc_claimAutoreleasedReturnValue(), [v13 featuresDataSource], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "isStereoOdeonTTSUBypassingPrimaryEnabled"), v14, v13, v15))
    {
      v32 |= 2uLL;
      [(HMDHomeMediaSystemControllerMessageHandler *)v6 _logAddMediaSystemMetricsUsingMessage:v4 setupAccessoryUUID:v12 setupRequestOption:?];
      v16 = objc_autoreleasePoolPush();
      v17 = v6;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = HMFGetLogIdentifier();
        *buf = 138543362;
        v34 = v19;
        _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@Routing the addMediaSystem request directly to the peer accessory", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v16);
      [(HMDHomeMediaSystemControllerMessageHandler *)v17 _sendRemoteMessageToAddMediaSystemBypassPrimary:v4];
    }

    else
    {
      v32 |= 4uLL;
      [(HMDHomeMediaSystemControllerMessageHandler *)v6 _logAddMediaSystemMetricsUsingMessage:v4 setupAccessoryUUID:v12 setupRequestOption:?];
      v20 = objc_autoreleasePoolPush();
      v21 = v6;
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
      v30 = v4;
      [(HMDHomeMediaSystemControllerMessageHandler *)v21 _routeMessage:v30 localHandler:v29];
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (id)preProcessMediaSystemMessage:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDHomeMediaSystemControllerMessageHandler *)self home];
  if (![v5 isSharedAdmin])
  {
    goto LABEL_6;
  }

  v6 = [v5 primaryResident];
  v7 = v6;
  if (v6 && ([v6 isReachable] & 1) != 0)
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
      v8 = v4;
      v24 = v8;
      v25 = v5;
      v9 = _Block_copy(aBlock);
      v10 = [v8 mutableCopy];
      v11 = [v8 identifier];
      [v10 setIdentifier:v11];

      [v10 setResponseHandler:v9];
      [v10 setRemote:{objc_msgSend(v8, "isRemote")}];
      v12 = [v10 copy];

      objc_destroyWeak(&v26);
      objc_destroyWeak(location);
      goto LABEL_11;
    }

    v13 = objc_autoreleasePoolPush();
    v21 = self;
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
    v14 = self;
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
  [v4 respondWithError:v18];

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
  v3 = [(HMDHomeMediaSystemControllerMessageHandler *)self home];
  v4 = +[HMDRemoteMessagePolicy defaultSecurePolicy];
  v5 = [HMDXPCMessagePolicy policyWithEntitlements:5];
  v6 = [HMDUserMessagePolicy userMessagePolicyWithHome:v3 userPrivilege:4 remoteAccessRequired:0];
  v10[0] = v4;
  v10[1] = v5;
  v10[2] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:3];
  v8 = [(HMDHomeMediaSystemControllerMessageHandler *)self messageDispatcher];
  [v8 registerForMessage:*MEMORY[0x277CD2098] receiver:self policies:v7 selector:sel_routeAddMediaSystem_];
  [v8 registerForMessage:*MEMORY[0x277CD2518] receiver:self policies:v7 selector:sel_routeRemoveMediaSystem_];

  v9 = *MEMORY[0x277D85DE8];
}

- (HMDHomeMediaSystemControllerMessageHandler)initWithQueue:(id)a3 home:(id)a4 messageDispatcher:(id)a5 delegate:(id)a6 featuresDataSource:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v21.receiver = self;
  v21.super_class = HMDHomeMediaSystemControllerMessageHandler;
  v18 = [(HMDHomeMediaSystemControllerMessageHandler *)&v21 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_queue, a3);
    objc_storeWeak(&v19->_home, v14);
    objc_storeStrong(&v19->_messageDispatcher, a5);
    objc_storeWeak(&v19->_delegate, v16);
    objc_storeStrong(&v19->_featuresDataSource, a7);
    [(HMDHomeMediaSystemControllerMessageHandler *)v19 _registerForMessages];
  }

  return v19;
}

- (HMDHomeMediaSystemControllerMessageHandler)initWithQueue:(id)a3 home:(id)a4 messageDispatcher:(id)a5 delegate:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = objc_alloc_init(HMDFeaturesDataSource);
  v15 = [(HMDHomeMediaSystemControllerMessageHandler *)self initWithQueue:v13 home:v12 messageDispatcher:v11 delegate:v10 featuresDataSource:v14];

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