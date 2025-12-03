@interface HMDHomePrimaryResidentMessagingHandler
+ (id)logCategory;
- (HMDHomePrimaryResidentMessagingHandler)initWithMessageDispatcher:(id)dispatcher homeUUID:(id)d residentDeviceManager:(id)manager;
- (HMDHomePrimaryResidentMessagingHandler)initWithMessageDispatcher:(id)dispatcher homeUUID:(id)d residentDeviceManager:(id)manager dataSource:(id)source;
- (id)_errorForNoDiscoveredPrimaryResidentWithLastPrimaryResidentDiscoveryError:(id)error primaryIsKnownButUnreachable:(BOOL)unreachable;
- (id)_responseHandlerForRequestMessage:(id)message;
- (void)_discoverPrimaryResident;
- (void)_processPendingMessagesWithPrimaryResidentDevice:(id)device;
- (void)_sendMessage:(id)message toPrimaryResidentDevice:(id)device completionHandler:(id)handler;
- (void)handlePrimaryResidentUpdated:(id)updated;
- (void)handleResidentUpdated:(id)updated;
- (void)residentDeviceManager:(id)manager didCompleteDiscoveryWithPrimaryResidentDevice:(id)device error:(id)error;
- (void)residentDeviceManager:(id)manager didNotCompleteDiscoveryWithError:(id)error;
- (void)sendMessage:(id)message completionHandler:(id)handler;
- (void)setLastPrimaryResidentDiscoveryError:(uint64_t)error;
- (void)timerManager:(id)manager didFireForTimerContext:(id)context;
@end

@implementation HMDHomePrimaryResidentMessagingHandler

- (void)timerManager:(id)manager didFireForTimerContext:(id)context
{
  v48 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  contextCopy = context;
  object = [contextCopy object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = object;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if (v10)
  {
    os_unfair_lock_lock_with_options();
    if (self)
    {
      pendingMessages = self->_pendingMessages;
    }

    else
    {
      pendingMessages = 0;
    }

    v12 = pendingMessages;
    v13 = [(NSMapTable *)v12 objectForKey:v10];

    if (!v13)
    {
      os_unfair_lock_unlock(&self->_lock);
LABEL_36:

      goto LABEL_37;
    }

    if (self)
    {
      v14 = self->_pendingMessages;
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;
    [(NSMapTable *)v15 removeObjectForKey:v10];

    isMessageInFlight = [v13 isMessageInFlight];
    if (self)
    {
      residentDeviceManager = self->_residentDeviceManager;
    }

    else
    {
      residentDeviceManager = 0;
    }

    v18 = residentDeviceManager;
    primaryResidentDevice = [(HMDResidentDeviceManager *)v18 primaryResidentDevice];

    if (primaryResidentDevice)
    {
      v20 = [primaryResidentDevice isReachable] ^ 1;
      if (self)
      {
LABEL_14:
        lastPrimaryResidentDiscoveryError = self->_lastPrimaryResidentDiscoveryError;
        goto LABEL_15;
      }
    }

    else
    {
      v20 = 0;
      if (self)
      {
        goto LABEL_14;
      }
    }

    lastPrimaryResidentDiscoveryError = 0;
LABEL_15:
    v22 = lastPrimaryResidentDiscoveryError;

    os_unfair_lock_unlock(&self->_lock);
    queueTimerContext = [v13 queueTimerContext];

    if (queueTimerContext == contextCopy)
    {
      if (self)
      {
        timerManager = self->_timerManager;
      }

      else
      {
        timerManager = 0;
      }

      v26 = timerManager;
      messageTimerContext = [v13 messageTimerContext];
    }

    else
    {
      queueTimerContext2 = [v13 queueTimerContext];

      if (!queueTimerContext2)
      {
LABEL_27:
        if (isMessageInFlight)
        {
          v30 = objc_autoreleasePoolPush();
          selfCopy = self;
          v32 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
          {
            v33 = HMFGetLogIdentifier();
            v42 = 138543618;
            v43 = v33;
            v44 = 2114;
            v45 = v10;
            _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_INFO, "%{public}@Message %{public}@ timed out", &v42, 0x16u);
          }

          v34 = 0;
        }

        else
        {
          v34 = [(HMDHomePrimaryResidentMessagingHandler *)self _errorForNoDiscoveredPrimaryResidentWithLastPrimaryResidentDiscoveryError:v22 primaryIsKnownButUnreachable:v20];
          v30 = objc_autoreleasePoolPush();
          selfCopy2 = self;
          v32 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
          {
            v36 = HMFGetLogIdentifier();
            v42 = 138543874;
            v43 = v36;
            v44 = 2114;
            v45 = v10;
            v46 = 2112;
            v47 = v34;
            _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_INFO, "%{public}@Message %{public}@ timed out waiting to discover primary resident: %@", &v42, 0x20u);
          }
        }

        objc_autoreleasePoolPop(v30);
        v37 = [MEMORY[0x277CCA9B8] hmErrorWithCode:8 description:0 reason:0 suggestion:0 underlyingError:v34];
        message = [v13 message];
        [message respondWithError:v37];

        completionHandler = [v13 completionHandler];
        v40 = completionHandler;
        if (completionHandler)
        {
          (*(completionHandler + 16))(completionHandler, v37);
        }

        goto LABEL_36;
      }

      if (self)
      {
        v25 = self->_timerManager;
      }

      else
      {
        v25 = 0;
      }

      v26 = v25;
      messageTimerContext = [v13 queueTimerContext];
    }

    v29 = messageTimerContext;
    [(HMFTimerManager *)v26 cancelTimerForContext:messageTimerContext];

    goto LABEL_27;
  }

LABEL_37:

  v41 = *MEMORY[0x277D85DE8];
}

- (void)handleResidentUpdated:(id)updated
{
  v31 = *MEMORY[0x277D85DE8];
  updatedCopy = updated;
  userInfo = [updatedCopy userInfo];
  v6 = [userInfo hmf_UUIDForKey:@"HMDResidentDeviceManagerHomeUUIDNotificationKey"];

  homeUUID = [(HMDHomePrimaryResidentMessagingHandler *)self homeUUID];
  v8 = [homeUUID isEqual:v6];

  if (v8)
  {
    userInfo2 = [updatedCopy userInfo];
    v10 = [userInfo2 objectForKeyedSubscript:@"HMDResidentDeviceManagerResidentDeviceNotificationKey"];

    if (v10)
    {
      identifier = [v10 identifier];
      if (self)
      {
        residentDeviceManager = self->_residentDeviceManager;
      }

      else
      {
        residentDeviceManager = 0;
      }

      primaryResidentUUID = [(HMDResidentDeviceManager *)residentDeviceManager primaryResidentUUID];
      v14 = [identifier isEqual:primaryResidentUUID];

      if (!v14)
      {
        goto LABEL_17;
      }

      if ([v10 isReachable])
      {
        [(HMDHomePrimaryResidentMessagingHandler *)self _processPendingMessagesWithPrimaryResidentDevice:v10];
LABEL_17:

        goto LABEL_18;
      }

      v19 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = HMFGetLogIdentifier();
        v27 = 138543362;
        v28 = v22;
        v23 = "%{public}@The primary resident is unreachable. Not processing pending messages until it's reachable";
        v24 = v21;
        v25 = OS_LOG_TYPE_INFO;
        goto LABEL_15;
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
        v27 = 138543362;
        v28 = v22;
        v23 = "%{public}@Unexpectedly received update resident notification but the resident is nil";
        v24 = v21;
        v25 = OS_LOG_TYPE_ERROR;
LABEL_15:
        _os_log_impl(&dword_229538000, v24, v25, v23, &v27, 0xCu);
      }
    }

    objc_autoreleasePoolPop(v19);
    goto LABEL_17;
  }

  v15 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    v18 = HMFGetLogIdentifier();
    v27 = 138543618;
    v28 = v18;
    v29 = 2114;
    v30 = v6;
    _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Unexpectedly received update resident notification for the wrong home: %{public}@", &v27, 0x16u);
  }

  objc_autoreleasePoolPop(v15);
LABEL_18:

  v26 = *MEMORY[0x277D85DE8];
}

- (void)handlePrimaryResidentUpdated:(id)updated
{
  v24 = *MEMORY[0x277D85DE8];
  updatedCopy = updated;
  userInfo = [updatedCopy userInfo];
  v6 = [userInfo hmf_UUIDForKey:@"HMDResidentDeviceManagerHomeUUIDNotificationKey"];

  homeUUID = [(HMDHomePrimaryResidentMessagingHandler *)self homeUUID];
  v8 = [homeUUID isEqual:v6];

  if (v8)
  {
    userInfo2 = [updatedCopy userInfo];
    v10 = [userInfo2 objectForKeyedSubscript:@"HMDResidentDeviceManagerResidentDeviceNotificationKey"];

    if (v10)
    {
      [(HMDHomePrimaryResidentMessagingHandler *)self _processPendingMessagesWithPrimaryResidentDevice:v10];
    }

    else
    {
      v15 = objc_autoreleasePoolPush();
      selfCopy = self;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = HMFGetLogIdentifier();
        v20 = 138543362;
        v21 = v18;
        _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Unexpectedly received update primary resident notification but the primary resident is nil", &v20, 0xCu);
      }

      objc_autoreleasePoolPop(v15);
    }
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v20 = 138543618;
      v21 = v14;
      v22 = 2114;
      v23 = v6;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Unexpectedly received update primary resident notification for the wrong home: %{public}@", &v20, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (id)_errorForNoDiscoveredPrimaryResidentWithLastPrimaryResidentDiscoveryError:(id)error primaryIsKnownButUnreachable:(BOOL)unreachable
{
  unreachableCopy = unreachable;
  errorCopy = error;
  v6 = errorCopy;
  if (unreachableCopy)
  {
    v7 = MEMORY[0x277CCA9B8];
    v8 = 2709;
  }

  else
  {
    if (errorCopy)
    {
      v9 = errorCopy;
      goto LABEL_7;
    }

    v7 = MEMORY[0x277CCA9B8];
    v8 = 2038;
  }

  v9 = [v7 hmPrivateErrorWithCode:v8];
LABEL_7:
  v10 = v9;

  return v10;
}

- (void)_processPendingMessagesWithPrimaryResidentDevice:(id)device
{
  v132 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (deviceCopy)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543362;
      v121 = v8;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Processing pending messages", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    os_unfair_lock_lock_with_options();
    [(HMDHomePrimaryResidentMessagingHandler *)selfCopy setLastPrimaryResidentDiscoveryError:?];
    os_unfair_lock_unlock(&selfCopy->_lock);
    isCurrentDevice = [deviceCopy isCurrentDevice];
    if (isCurrentDevice)
    {
      v9 = objc_autoreleasePoolPush();
      v10 = selfCopy;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = HMFGetLogIdentifier();
        *buf = 138543362;
        v121 = v12;
        _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Current device is now the primary resident. Cancelling all pending messages. In-flight messages are not cancelled", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v9);
    }

    v81 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v79 = objc_alloc_init(MEMORY[0x277CBEB18]);
    os_unfair_lock_lock_with_options();
    v117 = 0u;
    v118 = 0u;
    v115 = 0u;
    v116 = 0u;
    if (selfCopy)
    {
      pendingMessages = selfCopy->_pendingMessages;
    }

    else
    {
      pendingMessages = 0;
    }

    v15 = pendingMessages;
    obj = [(NSMapTable *)v15 objectEnumerator];

    v16 = [obj countByEnumeratingWithState:&v115 objects:v131 count:16];
    v17 = 0;
    if (v16)
    {
      v85 = *v116;
      do
      {
        v86 = v16;
        for (i = 0; i != v86; ++i)
        {
          if (*v116 != v85)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v115 + 1) + 8 * i);
          if ([v19 isMessageInFlight])
          {
            ++v17;
            continue;
          }

          message = [v19 message];
          completionHandler = [v19 completionHandler];
          [v19 setCompletionHandler:0];
          v84 = v17;
          lastPrimaryResidentDestinationUUID = [v19 lastPrimaryResidentDestinationUUID];
          identifier = [deviceCopy identifier];
          v22 = [lastPrimaryResidentDestinationUUID isEqual:identifier];

          if (v22)
          {
            v23 = objc_autoreleasePoolPush();
            v24 = selfCopy;
            v25 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              v26 = v13;
              v27 = HMFGetLogIdentifier();
              message2 = [v19 message];
              identifier2 = [message2 identifier];
              *buf = 138543618;
              v121 = v27;
              v122 = 2112;
              v123 = identifier2;
              _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_ERROR, "%{public}@Warning: Old destination matches new primary. Message %@ cannot be re-sent to the same device.", buf, 0x16u);

              v13 = v26;
            }

            objc_autoreleasePoolPop(v23);
            aBlock[0] = MEMORY[0x277D85DD0];
            aBlock[1] = 3221225472;
            aBlock[2] = __91__HMDHomePrimaryResidentMessagingHandler__processPendingMessagesWithPrimaryResidentDevice___block_invoke;
            aBlock[3] = &unk_278689F98;
            aBlock[4] = v19;
            aBlock[5] = v24;
            v114 = completionHandler;
            v30 = _Block_copy(aBlock);
            [v81 addObject:v30];
          }

          else if (isCurrentDevice)
          {
            v109[0] = MEMORY[0x277D85DD0];
            v109[1] = 3221225472;
            v109[2] = __91__HMDHomePrimaryResidentMessagingHandler__processPendingMessagesWithPrimaryResidentDevice___block_invoke_2;
            v109[3] = &unk_278689F98;
            v110 = message;
            v111 = selfCopy;
            v112 = completionHandler;
            v31 = _Block_copy(v109);
            [v81 addObject:v31];
          }

          else
          {
            [v19 setMessageInFlight:1];
            identifier3 = [deviceCopy identifier];
            [v19 setLastPrimaryResidentDestinationUUID:identifier3];

            v105[0] = MEMORY[0x277D85DD0];
            v105[1] = 3221225472;
            v105[2] = __91__HMDHomePrimaryResidentMessagingHandler__processPendingMessagesWithPrimaryResidentDevice___block_invoke_3;
            v105[3] = &unk_278689AB8;
            v105[4] = selfCopy;
            v33 = message;
            v106 = v33;
            v107 = deviceCopy;
            v108 = completionHandler;
            v34 = _Block_copy(v105);
            [v81 addObject:v34];

            if ([v33 isRequestType])
            {
              queueTimerContext = [v19 queueTimerContext];

              if (queueTimerContext)
              {
                queueTimerContext2 = [v19 queueTimerContext];
                [v79 addObject:queueTimerContext2];

                [v19 setQueueTimerContext:0];
              }

              goto LABEL_27;
            }
          }

          [v13 addObject:v19];
LABEL_27:

          v17 = v84;
        }

        v16 = [obj countByEnumeratingWithState:&v115 objects:v131 count:16];
      }

      while (v16);
    }

    v37 = v17;

    v103 = 0u;
    v104 = 0u;
    v101 = 0u;
    v102 = 0u;
    v38 = v13;
    v39 = [v38 countByEnumeratingWithState:&v101 objects:v130 count:16];
    if (v39)
    {
      v40 = *v102;
      do
      {
        v41 = 0;
        do
        {
          if (*v102 != v40)
          {
            objc_enumerationMutation(v38);
          }

          if (selfCopy)
          {
            v42 = selfCopy->_pendingMessages;
          }

          else
          {
            v42 = 0;
          }

          v43 = *(*(&v101 + 1) + 8 * v41);
          v44 = v42;
          message3 = [v43 message];
          identifier4 = [message3 identifier];
          [(NSMapTable *)v44 removeObjectForKey:identifier4];

          ++v41;
        }

        while (v39 != v41);
        v47 = [v38 countByEnumeratingWithState:&v101 objects:v130 count:16];
        v39 = v47;
      }

      while (v47);
    }

    os_unfair_lock_unlock(&selfCopy->_lock);
    v99 = 0u;
    v100 = 0u;
    v97 = 0u;
    v98 = 0u;
    v48 = v38;
    v49 = [v48 countByEnumeratingWithState:&v97 objects:v129 count:16];
    if (v49)
    {
      v50 = *v98;
      do
      {
        v51 = 0;
        do
        {
          if (*v98 != v50)
          {
            objc_enumerationMutation(v48);
          }

          if (selfCopy)
          {
            timerManager = selfCopy->_timerManager;
          }

          else
          {
            timerManager = 0;
          }

          v53 = *(*(&v97 + 1) + 8 * v51);
          v54 = timerManager;
          messageTimerContext = [v53 messageTimerContext];
          [(HMFTimerManager *)v54 cancelTimerForContext:messageTimerContext];

          queueTimerContext3 = [v53 queueTimerContext];

          if (queueTimerContext3)
          {
            if (selfCopy)
            {
              v57 = selfCopy->_timerManager;
            }

            else
            {
              v57 = 0;
            }

            v58 = v57;
            queueTimerContext4 = [v53 queueTimerContext];
            [(HMFTimerManager *)v58 cancelTimerForContext:queueTimerContext4];
          }

          ++v51;
        }

        while (v49 != v51);
        v60 = [v48 countByEnumeratingWithState:&v97 objects:v129 count:16];
        v49 = v60;
      }

      while (v60);
    }

    v95 = 0u;
    v96 = 0u;
    v93 = 0u;
    v94 = 0u;
    v61 = v79;
    v62 = [v61 countByEnumeratingWithState:&v93 objects:v128 count:16];
    if (v62)
    {
      v63 = *v94;
      do
      {
        v64 = 0;
        do
        {
          if (*v94 != v63)
          {
            objc_enumerationMutation(v61);
          }

          if (selfCopy)
          {
            v65 = selfCopy->_timerManager;
          }

          else
          {
            v65 = 0;
          }

          [(HMFTimerManager *)v65 cancelTimerForContext:*(*(&v93 + 1) + 8 * v64++)];
        }

        while (v62 != v64);
        v66 = [v61 countByEnumeratingWithState:&v93 objects:v128 count:16];
        v62 = v66;
      }

      while (v66);
    }

    if ([v81 count])
    {
      v67 = objc_autoreleasePoolPush();
      v68 = selfCopy;
      v69 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
      {
        v70 = HMFGetLogIdentifier();
        if (isCurrentDevice)
        {
          v71 = @"Cancelling";
        }

        else
        {
          v71 = @"Sending";
        }

        v72 = [v81 count];
        *buf = 138544130;
        v121 = v70;
        v122 = 2112;
        v123 = v71;
        v124 = 2048;
        v125 = v72;
        v126 = 2048;
        v127 = v37;
        _os_log_impl(&dword_229538000, v69, OS_LOG_TYPE_INFO, "%{public}@%@ %lu pending messages (%lu in flight)", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v67);
      v91 = 0u;
      v92 = 0u;
      v89 = 0u;
      v90 = 0u;
      v73 = v81;
      v74 = [v73 countByEnumeratingWithState:&v89 objects:v119 count:16];
      if (v74)
      {
        v75 = *v90;
        do
        {
          for (j = 0; j != v74; ++j)
          {
            if (*v90 != v75)
            {
              objc_enumerationMutation(v73);
            }

            (*(*(*(&v89 + 1) + 8 * j) + 16))();
          }

          v74 = [v73 countByEnumeratingWithState:&v89 objects:v119 count:16];
        }

        while (v74);
      }
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v77 = HMFGetLogIdentifier();
      *buf = 138543362;
      v121 = v77;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@Unexpected nil detected in primary resident messaging handler", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    v81 = +[HMDTTRManager sharedManager];
    [v81 requestRadarWithDisplayReason:@"Unexpected nil detected in primary resident messaging handler" radarTitle:@"Unexpected nil detected in primary resident messaging handler" componentName:@"HomeKit" componentVersion:@"Resident" componentID:938669];
  }

  v78 = *MEMORY[0x277D85DE8];
}

- (void)setLastPrimaryResidentDiscoveryError:(uint64_t)error
{
  if (error)
  {
    objc_storeStrong((error + 96), a2);
  }
}

void __91__HMDHomePrimaryResidentMessagingHandler__processPendingMessagesWithPrimaryResidentDevice___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) message];
  v3 = v2;
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = *(v4 + 80);
  }

  else
  {
    v5 = 0;
  }

  [v2 respondWithError:v5];

  v6 = _Block_copy(*(a1 + 48));
  if (v6)
  {
    v7 = *(a1 + 40);
    if (v7)
    {
      v8 = *(v7 + 80);
    }

    else
    {
      v8 = 0;
    }

    v9 = v6;
    (*(v6 + 2))(v6, v8);
    v6 = v9;
  }
}

void __91__HMDHomePrimaryResidentMessagingHandler__processPendingMessagesWithPrimaryResidentDevice___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = *(v3 + 72);
  }

  else
  {
    v4 = 0;
  }

  [v2 respondWithError:v4];
  v5 = _Block_copy(*(a1 + 48));
  if (v5)
  {
    v6 = *(a1 + 40);
    if (v6)
    {
      v7 = *(v6 + 72);
    }

    else
    {
      v7 = 0;
    }

    v8 = v5;
    (*(v5 + 2))(v5, v7);
    v5 = v8;
  }
}

- (void)residentDeviceManager:(id)manager didNotCompleteDiscoveryWithError:(id)error
{
  v17 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  errorCopy = error;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v13 = 138543618;
    v14 = v11;
    v15 = 2112;
    v16 = errorCopy;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Primary resident discovery did not complete with error: %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  os_unfair_lock_lock_with_options();
  [(HMDHomePrimaryResidentMessagingHandler *)selfCopy setLastPrimaryResidentDiscoveryError:errorCopy];
  os_unfair_lock_unlock(&selfCopy->_lock);

  v12 = *MEMORY[0x277D85DE8];
}

- (void)residentDeviceManager:(id)manager didCompleteDiscoveryWithPrimaryResidentDevice:(id)device error:(id)error
{
  v31 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  deviceCopy = device;
  errorCopy = error;
  if ([errorCopy isHMFError] && objc_msgSend(errorCopy, "code") == 12)
  {
    if (self)
    {
      residentDeviceManager = self->_residentDeviceManager;
    }

    else
    {
      residentDeviceManager = 0;
    }

    primaryResidentDevice = [(HMDResidentDeviceManager *)residentDeviceManager primaryResidentDevice];

    deviceCopy = primaryResidentDevice;
    if (!primaryResidentDevice)
    {
      if (self)
      {
        v13 = self->_residentDeviceManager;
      }

      else
      {
        v13 = 0;
      }

      hasAnyResident = [(HMDResidentDeviceManager *)v13 hasAnyResident];
      v15 = objc_autoreleasePoolPush();
      selfCopy = self;
      v17 = HMFGetOSLogHandle();
      v18 = v17;
      if (hasAnyResident)
      {
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v19 = HMFGetLogIdentifier();
          v27 = 138543362;
          v28 = v19;
          _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Primary resident discovery was cancelled and there is no primary resident", &v27, 0xCu);
        }

        objc_autoreleasePoolPop(v15);
        os_unfair_lock_lock_with_options();
        v20 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:2039];
        [(HMDHomePrimaryResidentMessagingHandler *)selfCopy setLastPrimaryResidentDiscoveryError:v20];

        os_unfair_lock_unlock(&selfCopy->_lock);
      }

      else
      {
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v26 = HMFGetLogIdentifier();
          v27 = 138543362;
          v28 = v26;
          _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Primary resident discovery was cancelled, there is no primary resident, home has no residents", &v27, 0xCu);
        }

        objc_autoreleasePoolPop(v15);
      }

      goto LABEL_17;
    }

LABEL_16:
    [(HMDHomePrimaryResidentMessagingHandler *)self _processPendingMessagesWithPrimaryResidentDevice:deviceCopy];

    goto LABEL_17;
  }

  if (!errorCopy)
  {
    goto LABEL_16;
  }

  v21 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v23 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    v24 = HMFGetLogIdentifier();
    v27 = 138543618;
    v28 = v24;
    v29 = 2112;
    v30 = errorCopy;
    _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_INFO, "%{public}@Primary resident discovery failed and we're not processing pending messages. %@", &v27, 0x16u);
  }

  objc_autoreleasePoolPop(v21);
  os_unfair_lock_lock_with_options();
  [(HMDHomePrimaryResidentMessagingHandler *)selfCopy2 setLastPrimaryResidentDiscoveryError:errorCopy];
  os_unfair_lock_unlock(&selfCopy2->_lock);

LABEL_17:
  v25 = *MEMORY[0x277D85DE8];
}

- (void)_discoverPrimaryResident
{
  selfCopy = self;
  if (self)
  {
    self = self->_residentDeviceManager;
  }

  [(HMDHomePrimaryResidentMessagingHandler *)self discoverPrimaryResidentForRequester:selfCopy];
}

- (id)_responseHandlerForRequestMessage:(id)message
{
  messageCopy = message;
  objc_initWeak(&location, self);
  identifier = [messageCopy identifier];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __76__HMDHomePrimaryResidentMessagingHandler__responseHandlerForRequestMessage___block_invoke;
  aBlock[3] = &unk_278687F40;
  objc_copyWeak(&v11, &location);
  v10 = identifier;
  v6 = identifier;
  v7 = _Block_copy(aBlock);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);

  return v7;
}

void __76__HMDHomePrimaryResidentMessagingHandler__responseHandlerForRequestMessage___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v50 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if ([v5 isHMError])
    {
      v8 = [v5 code] != 3202;
    }

    else
    {
      v8 = 1;
    }

    v41 = v5;
    os_unfair_lock_lock_with_options();
    v9 = *(WeakRetained + 8);
    v10 = [v9 objectForKey:*(a1 + 32)];

    if (v10)
    {
      v11 = *(WeakRetained + 5);
      v39 = [v11 primaryResidentDevice];

      if (!v8)
      {
        if (![v39 isCurrentDevice])
        {
          v25 = *(WeakRetained + 5);
          v26 = [v25 primaryResidentDevice];

          v27 = [v10 lastPrimaryResidentDestinationUUID];
          v28 = [v26 identifier];
          v29 = HMFEqualObjects();

          if ((v29 & 1) != 0 || ![v26 isReachable])
          {
            [v10 setMessageInFlight:0];
            os_unfair_lock_unlock(WeakRetained + 2);
            [WeakRetained _discoverPrimaryResident];
          }

          else
          {
            v30 = [v26 identifier];
            [v10 setLastPrimaryResidentDestinationUUID:v30];

            v40 = [v10 completionHandler];
            [v10 setCompletionHandler:0];
            os_unfair_lock_unlock(WeakRetained + 2);
            context = objc_autoreleasePoolPush();
            v31 = WeakRetained;
            v32 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
            {
              v33 = HMFGetLogIdentifier();
              v34 = [v10 message];
              v35 = [v34 identifier];
              *buf = 138543618;
              v43 = v33;
              v44 = 2114;
              v45 = v35;
              _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_INFO, "%{public}@Retrying message %{public}@ since the primary resident has changed since the last message", buf, 0x16u);
            }

            objc_autoreleasePoolPop(context);
            v36 = [v10 message];
            [v31 _sendMessage:v36 toPrimaryResidentDevice:v26 completionHandler:v40];
          }

          goto LABEL_21;
        }

        v12 = *(WeakRetained + 9);

        v41 = v12;
      }

      v13 = *(WeakRetained + 8);
      [v13 removeObjectForKey:*(a1 + 32)];

      os_unfair_lock_unlock(WeakRetained + 2);
      v14 = *(WeakRetained + 7);
      v15 = [v10 messageTimerContext];
      [v14 cancelTimerForContext:v15];

      v16 = objc_autoreleasePoolPush();
      v17 = WeakRetained;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        v19 = HMFGetLogIdentifier();
        v20 = [v10 message];
        v21 = [v20 identifier];
        *buf = 138544130;
        v43 = v19;
        v44 = 2114;
        v45 = v21;
        v46 = 2112;
        v47 = v6;
        v48 = 2112;
        v49 = v41;
        _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_DEBUG, "%{public}@Responding to message %{public}@ with payload: %@, error: %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v16);
      v22 = [v10 message];
      [v22 respondWithPayload:v6 error:v41];

      v23 = [v10 completionHandler];
      v24 = v23;
      if (v23)
      {
        (*(v23 + 16))(v23, v41);
      }
    }

    else
    {
      os_unfair_lock_unlock(WeakRetained + 2);
    }

LABEL_21:
  }

  v37 = *MEMORY[0x277D85DE8];
}

- (void)_sendMessage:(id)message toPrimaryResidentDevice:(id)device completionHandler:(id)handler
{
  v44 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  deviceCopy = device;
  handlerCopy = handler;
  device = [deviceCopy device];
  v12 = [HMDRemoteDeviceMessageDestination alloc];
  destination = [messageCopy destination];
  target = [destination target];
  v15 = v12;
  v16 = device;
  v17 = [(HMDRemoteDeviceMessageDestination *)v15 initWithTarget:target device:device];

  v18 = messageCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  v20 = v19;

  if (v20)
  {
    v21 = [v20 copyWithDestination:v17];
  }

  else
  {
    v21 = [v18 mutableCopy];
    identifier = [v18 identifier];
    [v21 setIdentifier:identifier];

    [v21 setDestination:v17];
  }

  if ([v18 isRequestType])
  {
    v23 = [(HMDHomePrimaryResidentMessagingHandler *)self _responseHandlerForRequestMessage:v18];
    [v21 setResponseHandler:v23];
  }

  v24 = objc_autoreleasePoolPush();
  selfCopy = self;
  v26 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    HMFGetLogIdentifier();
    v27 = v37 = deviceCopy;
    [v21 identifier];
    v28 = v36 = handlerCopy;
    [v16 shortDescription];
    v35 = v24;
    v29 = v20;
    v30 = v17;
    v32 = v31 = v16;
    *buf = 138543874;
    v39 = v27;
    v40 = 2114;
    v41 = v28;
    v42 = 2114;
    v43 = v32;
    _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_INFO, "%{public}@Sending message %{public}@ to device %{public}@", buf, 0x20u);

    v16 = v31;
    v17 = v30;
    v20 = v29;
    v24 = v35;

    handlerCopy = v36;
    deviceCopy = v37;
  }

  objc_autoreleasePoolPop(v24);
  if (selfCopy)
  {
    messageDispatcher = selfCopy->_messageDispatcher;
  }

  else
  {
    messageDispatcher = 0;
  }

  [(HMFMessageDispatcher *)messageDispatcher sendMessage:v21 completionHandler:handlerCopy];

  v34 = *MEMORY[0x277D85DE8];
}

- (void)sendMessage:(id)message completionHandler:(id)handler
{
  v76 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  handlerCopy = handler;
  destination = [messageCopy destination];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = destination;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if (v10)
  {
    queueTimeout = [v10 queueTimeout];
    [queueTimeout doubleValue];
    v13 = v12;

    queueTimeout2 = [v10 queueTimeout];
    v16 = v13 >= 2.22044605e-16 || queueTimeout2 == 0;
    v68 = v16;

    os_unfair_lock_lock_with_options();
    if (self)
    {
      residentDeviceManager = self->_residentDeviceManager;
    }

    else
    {
      residentDeviceManager = 0;
    }

    v18 = residentDeviceManager;
    primaryResidentDevice = [(HMDResidentDeviceManager *)v18 primaryResidentDevice];

    if (self)
    {
      lastPrimaryResidentDiscoveryError = self->_lastPrimaryResidentDiscoveryError;
    }

    else
    {
      lastPrimaryResidentDiscoveryError = 0;
    }

    v69 = lastPrimaryResidentDiscoveryError;
    if (primaryResidentDevice)
    {
      v66 = [primaryResidentDevice isReachable] ^ 1;
    }

    else
    {
      v66 = 0;
    }

    if ([primaryResidentDevice isCurrentDevice])
    {
      if (self)
      {
        destinationIsCurrentDeviceError = self->_destinationIsCurrentDeviceError;
      }

      else
      {
        destinationIsCurrentDeviceError = 0;
      }

      v25 = destinationIsCurrentDeviceError;
      os_unfair_lock_unlock(&self->_lock);
      if (v25)
      {
        v26 = objc_autoreleasePoolPush();
        selfCopy = self;
        v28 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          v29 = HMFGetLogIdentifier();
          identifier = [messageCopy identifier];
          *buf = 138543874;
          v71 = v29;
          v72 = 2114;
          v73 = identifier;
          v74 = 2112;
          v75 = v25;
          _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_INFO, "%{public}@Cannot send message %{public}@ due to error: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v26);
        [messageCopy respondWithError:v25];
        v31 = _Block_copy(handlerCopy);
        v32 = v31;
        if (v31)
        {
          (*(v31 + 2))(v31, v25);
        }

        goto LABEL_72;
      }
    }

    else
    {
      if (primaryResidentDevice)
      {
        isReachable = [primaryResidentDevice isReachable];
      }

      else
      {
        isReachable = 0;
      }

      isRequestType = [messageCopy isRequestType];
      queueTimeout3 = [v10 queueTimeout];
      v37 = v13 <= 2.22044605e-16 || queueTimeout3 == 0;

      [messageCopy timeout];
      v39 = v68;
      if (isReachable)
      {
        v39 = isRequestType;
      }

      if (v39)
      {
        if ((v37 | isRequestType))
        {
          if (v38 <= 2.22044605e-16)
          {
            v41 = 60.0;
          }

          else
          {
            [messageCopy timeout];
            v41 = v40;
          }
        }

        else
        {
          v41 = v13;
          if (v38 > 2.22044605e-16)
          {
            [messageCopy timeout];
            if (v42 >= v13)
            {
              v41 = v13;
            }

            else
            {
              v41 = v42;
            }
          }
        }

        if (self)
        {
          timerManager = self->_timerManager;
        }

        else
        {
          timerManager = 0;
        }

        v44 = timerManager;
        identifier2 = [messageCopy identifier];
        v65 = [(HMFTimerManager *)v44 startTimerWithTimeInterval:identifier2 object:v41];

        v67 = [[HMDHomePrimaryResidentMessagingHandlerPendingMessageContext alloc] initWithMessage:messageCopy messageTimerContext:v65];
        if (((v37 | isReachable) & 1) == 0 && ((isRequestType ^ 1) & 1) == 0)
        {
          if (self)
          {
            v46 = self->_timerManager;
          }

          else
          {
            v46 = 0;
          }

          v47 = v46;
          identifier3 = [messageCopy identifier];
          v49 = [(HMFTimerManager *)v47 startTimerWithTimeInterval:identifier3 object:v13];
          [(HMDHomePrimaryResidentMessagingHandlerPendingMessageContext *)v67 setQueueTimerContext:v49];
        }

        if (isReachable)
        {
          [(HMDHomePrimaryResidentMessagingHandlerPendingMessageContext *)v67 setMessageInFlight:1];
          identifier4 = [primaryResidentDevice identifier];
          [(HMDHomePrimaryResidentMessagingHandlerPendingMessageContext *)v67 setLastPrimaryResidentDestinationUUID:identifier4];
        }

        else
        {
          [(HMDHomePrimaryResidentMessagingHandlerPendingMessageContext *)v67 setCompletionHandler:handlerCopy];
        }

        v51 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v53 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
        {
          v64 = v51;
          v54 = HMFGetLogIdentifier();
          identifier5 = [messageCopy identifier];
          *buf = 138543618;
          v71 = v54;
          v72 = 2114;
          v73 = identifier5;
          _os_log_impl(&dword_229538000, v53, OS_LOG_TYPE_INFO, "%{public}@Enqueueing message %{public}@", buf, 0x16u);

          v51 = v64;
        }

        objc_autoreleasePoolPop(v51);
        if (self)
        {
          pendingMessages = selfCopy2->_pendingMessages;
        }

        else
        {
          pendingMessages = 0;
        }

        v57 = pendingMessages;
        identifier6 = [messageCopy identifier];
        [(NSMapTable *)v57 setObject:v67 forKey:identifier6];
      }

      os_unfair_lock_unlock(&self->_lock);
      if (isReachable)
      {
        [(HMDHomePrimaryResidentMessagingHandler *)self _sendMessage:messageCopy toPrimaryResidentDevice:primaryResidentDevice completionHandler:handlerCopy];
LABEL_71:
        v25 = 0;
LABEL_72:

        goto LABEL_73;
      }
    }

    [(HMDHomePrimaryResidentMessagingHandler *)self _discoverPrimaryResident];
    if (!v68)
    {
      v59 = [(HMDHomePrimaryResidentMessagingHandler *)self _errorForNoDiscoveredPrimaryResidentWithLastPrimaryResidentDiscoveryError:v69 primaryIsKnownButUnreachable:v66];
      v60 = [MEMORY[0x277CCA9B8] hmErrorWithCode:8 description:0 reason:0 suggestion:0 underlyingError:v59];
      [messageCopy respondWithError:v60];
      v61 = _Block_copy(handlerCopy);
      v62 = v61;
      if (v61)
      {
        (*(v61 + 2))(v61, v60);
      }
    }

    goto LABEL_71;
  }

  v21 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
  [messageCopy respondWithError:v21];
  v22 = _Block_copy(handlerCopy);
  v23 = v22;
  if (v22)
  {
    (*(v22 + 2))(v22, v21);
  }

LABEL_73:
  v63 = *MEMORY[0x277D85DE8];
}

- (HMDHomePrimaryResidentMessagingHandler)initWithMessageDispatcher:(id)dispatcher homeUUID:(id)d residentDeviceManager:(id)manager dataSource:(id)source
{
  dispatcherCopy = dispatcher;
  dCopy = d;
  managerCopy = manager;
  sourceCopy = source;
  v30.receiver = self;
  v30.super_class = HMDHomePrimaryResidentMessagingHandler;
  v15 = [(HMDHomePrimaryResidentMessagingHandler *)&v30 init];
  v16 = v15;
  if (v15)
  {
    v15->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v15->_messageDispatcher, dispatcher);
    objc_storeStrong(&v16->_homeUUID, d);
    objc_storeStrong(&v16->_residentDeviceManager, manager);
    notificationCenter = [sourceCopy notificationCenter];
    notificationCenter = v16->_notificationCenter;
    v16->_notificationCenter = notificationCenter;

    timerManager = [sourceCopy timerManager];
    timerManager = v16->_timerManager;
    v16->_timerManager = timerManager;

    [(HMFTimerManager *)v16->_timerManager setDelegate:v16];
    strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    pendingMessages = v16->_pendingMessages;
    v16->_pendingMessages = strongToStrongObjectsMapTable;

    v23 = [MEMORY[0x277CCA9B8] hmErrorWithCode:23 description:@"Cannot send message because the current device is the primary resident" reason:@"Sending message to the current device is not supported" suggestion:0];
    destinationIsCurrentDeviceError = v16->_destinationIsCurrentDeviceError;
    v16->_destinationIsCurrentDeviceError = v23;

    v25 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:3205 description:@"Cannot send message because the original primary is the same device as the newly discovered primary" reason:@"Sending a message to the same device multiple times is not supported" suggestion:0];
    repeatedDestinationError = v16->_repeatedDestinationError;
    v16->_repeatedDestinationError = v25;

    uUIDString = [dCopy UUIDString];
    logIdentifier = v16->_logIdentifier;
    v16->_logIdentifier = uUIDString;

    [(NSNotificationCenter *)v16->_notificationCenter addObserver:v16 selector:sel_handlePrimaryResidentUpdated_ name:@"HMDResidentDeviceManagerUpdatePrimaryResidentNotification" object:managerCopy];
    [(NSNotificationCenter *)v16->_notificationCenter addObserver:v16 selector:sel_handleResidentUpdated_ name:@"HMDResidentDeviceManagerUpdateResidentNotification" object:managerCopy];
  }

  return v16;
}

- (HMDHomePrimaryResidentMessagingHandler)initWithMessageDispatcher:(id)dispatcher homeUUID:(id)d residentDeviceManager:(id)manager
{
  managerCopy = manager;
  dCopy = d;
  dispatcherCopy = dispatcher;
  v11 = objc_alloc_init(HMDHomePrimaryResidentMessagingHandlerDefaultDataSource);
  v12 = [(HMDHomePrimaryResidentMessagingHandler *)self initWithMessageDispatcher:dispatcherCopy homeUUID:dCopy residentDeviceManager:managerCopy dataSource:v11];

  return v12;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t42 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t42, &__block_literal_global_3958);
  }

  v3 = logCategory__hmf_once_v43;

  return v3;
}

void __53__HMDHomePrimaryResidentMessagingHandler_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v43;
  logCategory__hmf_once_v43 = v1;
}

@end