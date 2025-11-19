@interface HMDHomePrimaryResidentMessagingHandler
+ (id)logCategory;
- (HMDHomePrimaryResidentMessagingHandler)initWithMessageDispatcher:(id)a3 homeUUID:(id)a4 residentDeviceManager:(id)a5;
- (HMDHomePrimaryResidentMessagingHandler)initWithMessageDispatcher:(id)a3 homeUUID:(id)a4 residentDeviceManager:(id)a5 dataSource:(id)a6;
- (id)_errorForNoDiscoveredPrimaryResidentWithLastPrimaryResidentDiscoveryError:(id)a3 primaryIsKnownButUnreachable:(BOOL)a4;
- (id)_responseHandlerForRequestMessage:(id)a3;
- (void)_discoverPrimaryResident;
- (void)_processPendingMessagesWithPrimaryResidentDevice:(id)a3;
- (void)_sendMessage:(id)a3 toPrimaryResidentDevice:(id)a4 completionHandler:(id)a5;
- (void)handlePrimaryResidentUpdated:(id)a3;
- (void)handleResidentUpdated:(id)a3;
- (void)residentDeviceManager:(id)a3 didCompleteDiscoveryWithPrimaryResidentDevice:(id)a4 error:(id)a5;
- (void)residentDeviceManager:(id)a3 didNotCompleteDiscoveryWithError:(id)a4;
- (void)sendMessage:(id)a3 completionHandler:(id)a4;
- (void)setLastPrimaryResidentDiscoveryError:(uint64_t)a1;
- (void)timerManager:(id)a3 didFireForTimerContext:(id)a4;
@end

@implementation HMDHomePrimaryResidentMessagingHandler

- (void)timerManager:(id)a3 didFireForTimerContext:(id)a4
{
  v48 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v7 object];
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

    v16 = [v13 isMessageInFlight];
    if (self)
    {
      residentDeviceManager = self->_residentDeviceManager;
    }

    else
    {
      residentDeviceManager = 0;
    }

    v18 = residentDeviceManager;
    v19 = [(HMDResidentDeviceManager *)v18 primaryResidentDevice];

    if (v19)
    {
      v20 = [v19 isReachable] ^ 1;
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
    v23 = [v13 queueTimerContext];

    if (v23 == v7)
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
      v27 = [v13 messageTimerContext];
    }

    else
    {
      v24 = [v13 queueTimerContext];

      if (!v24)
      {
LABEL_27:
        if (v16)
        {
          v30 = objc_autoreleasePoolPush();
          v31 = self;
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
          v35 = self;
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
        v38 = [v13 message];
        [v38 respondWithError:v37];

        v39 = [v13 completionHandler];
        v40 = v39;
        if (v39)
        {
          (*(v39 + 16))(v39, v37);
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
      v27 = [v13 queueTimerContext];
    }

    v29 = v27;
    [(HMFTimerManager *)v26 cancelTimerForContext:v27];

    goto LABEL_27;
  }

LABEL_37:

  v41 = *MEMORY[0x277D85DE8];
}

- (void)handleResidentUpdated:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 hmf_UUIDForKey:@"HMDResidentDeviceManagerHomeUUIDNotificationKey"];

  v7 = [(HMDHomePrimaryResidentMessagingHandler *)self homeUUID];
  v8 = [v7 isEqual:v6];

  if (v8)
  {
    v9 = [v4 userInfo];
    v10 = [v9 objectForKeyedSubscript:@"HMDResidentDeviceManagerResidentDeviceNotificationKey"];

    if (v10)
    {
      v11 = [v10 identifier];
      if (self)
      {
        residentDeviceManager = self->_residentDeviceManager;
      }

      else
      {
        residentDeviceManager = 0;
      }

      v13 = [(HMDResidentDeviceManager *)residentDeviceManager primaryResidentUUID];
      v14 = [v11 isEqual:v13];

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
      v20 = self;
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
      v20 = self;
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
  v16 = self;
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

- (void)handlePrimaryResidentUpdated:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 hmf_UUIDForKey:@"HMDResidentDeviceManagerHomeUUIDNotificationKey"];

  v7 = [(HMDHomePrimaryResidentMessagingHandler *)self homeUUID];
  v8 = [v7 isEqual:v6];

  if (v8)
  {
    v9 = [v4 userInfo];
    v10 = [v9 objectForKeyedSubscript:@"HMDResidentDeviceManagerResidentDeviceNotificationKey"];

    if (v10)
    {
      [(HMDHomePrimaryResidentMessagingHandler *)self _processPendingMessagesWithPrimaryResidentDevice:v10];
    }

    else
    {
      v15 = objc_autoreleasePoolPush();
      v16 = self;
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
    v12 = self;
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

- (id)_errorForNoDiscoveredPrimaryResidentWithLastPrimaryResidentDiscoveryError:(id)a3 primaryIsKnownButUnreachable:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = v5;
  if (v4)
  {
    v7 = MEMORY[0x277CCA9B8];
    v8 = 2709;
  }

  else
  {
    if (v5)
    {
      v9 = v5;
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

- (void)_processPendingMessagesWithPrimaryResidentDevice:(id)a3
{
  v132 = *MEMORY[0x277D85DE8];
  v83 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = self;
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v83)
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
    [(HMDHomePrimaryResidentMessagingHandler *)v5 setLastPrimaryResidentDiscoveryError:?];
    os_unfair_lock_unlock(&v5->_lock);
    v80 = [v83 isCurrentDevice];
    if (v80)
    {
      v9 = objc_autoreleasePoolPush();
      v10 = v5;
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
    if (v5)
    {
      pendingMessages = v5->_pendingMessages;
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

          v87 = [v19 message];
          v88 = [v19 completionHandler];
          [v19 setCompletionHandler:0];
          v84 = v17;
          v20 = [v19 lastPrimaryResidentDestinationUUID];
          v21 = [v83 identifier];
          v22 = [v20 isEqual:v21];

          if (v22)
          {
            v23 = objc_autoreleasePoolPush();
            v24 = v5;
            v25 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              v26 = v13;
              v27 = HMFGetLogIdentifier();
              v28 = [v19 message];
              v29 = [v28 identifier];
              *buf = 138543618;
              v121 = v27;
              v122 = 2112;
              v123 = v29;
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
            v114 = v88;
            v30 = _Block_copy(aBlock);
            [v81 addObject:v30];
          }

          else if (v80)
          {
            v109[0] = MEMORY[0x277D85DD0];
            v109[1] = 3221225472;
            v109[2] = __91__HMDHomePrimaryResidentMessagingHandler__processPendingMessagesWithPrimaryResidentDevice___block_invoke_2;
            v109[3] = &unk_278689F98;
            v110 = v87;
            v111 = v5;
            v112 = v88;
            v31 = _Block_copy(v109);
            [v81 addObject:v31];
          }

          else
          {
            [v19 setMessageInFlight:1];
            v32 = [v83 identifier];
            [v19 setLastPrimaryResidentDestinationUUID:v32];

            v105[0] = MEMORY[0x277D85DD0];
            v105[1] = 3221225472;
            v105[2] = __91__HMDHomePrimaryResidentMessagingHandler__processPendingMessagesWithPrimaryResidentDevice___block_invoke_3;
            v105[3] = &unk_278689AB8;
            v105[4] = v5;
            v33 = v87;
            v106 = v33;
            v107 = v83;
            v108 = v88;
            v34 = _Block_copy(v105);
            [v81 addObject:v34];

            if ([v33 isRequestType])
            {
              v35 = [v19 queueTimerContext];

              if (v35)
              {
                v36 = [v19 queueTimerContext];
                [v79 addObject:v36];

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

          if (v5)
          {
            v42 = v5->_pendingMessages;
          }

          else
          {
            v42 = 0;
          }

          v43 = *(*(&v101 + 1) + 8 * v41);
          v44 = v42;
          v45 = [v43 message];
          v46 = [v45 identifier];
          [(NSMapTable *)v44 removeObjectForKey:v46];

          ++v41;
        }

        while (v39 != v41);
        v47 = [v38 countByEnumeratingWithState:&v101 objects:v130 count:16];
        v39 = v47;
      }

      while (v47);
    }

    os_unfair_lock_unlock(&v5->_lock);
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

          if (v5)
          {
            timerManager = v5->_timerManager;
          }

          else
          {
            timerManager = 0;
          }

          v53 = *(*(&v97 + 1) + 8 * v51);
          v54 = timerManager;
          v55 = [v53 messageTimerContext];
          [(HMFTimerManager *)v54 cancelTimerForContext:v55];

          v56 = [v53 queueTimerContext];

          if (v56)
          {
            if (v5)
            {
              v57 = v5->_timerManager;
            }

            else
            {
              v57 = 0;
            }

            v58 = v57;
            v59 = [v53 queueTimerContext];
            [(HMFTimerManager *)v58 cancelTimerForContext:v59];
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

          if (v5)
          {
            v65 = v5->_timerManager;
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
      v68 = v5;
      v69 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
      {
        v70 = HMFGetLogIdentifier();
        if (v80)
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

- (void)setLastPrimaryResidentDiscoveryError:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 96), a2);
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

- (void)residentDeviceManager:(id)a3 didNotCompleteDiscoveryWithError:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v13 = 138543618;
    v14 = v11;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Primary resident discovery did not complete with error: %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  os_unfair_lock_lock_with_options();
  [(HMDHomePrimaryResidentMessagingHandler *)v9 setLastPrimaryResidentDiscoveryError:v7];
  os_unfair_lock_unlock(&v9->_lock);

  v12 = *MEMORY[0x277D85DE8];
}

- (void)residentDeviceManager:(id)a3 didCompleteDiscoveryWithPrimaryResidentDevice:(id)a4 error:(id)a5
{
  v31 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v10 isHMFError] && objc_msgSend(v10, "code") == 12)
  {
    if (self)
    {
      residentDeviceManager = self->_residentDeviceManager;
    }

    else
    {
      residentDeviceManager = 0;
    }

    v12 = [(HMDResidentDeviceManager *)residentDeviceManager primaryResidentDevice];

    v9 = v12;
    if (!v12)
    {
      if (self)
      {
        v13 = self->_residentDeviceManager;
      }

      else
      {
        v13 = 0;
      }

      v14 = [(HMDResidentDeviceManager *)v13 hasAnyResident];
      v15 = objc_autoreleasePoolPush();
      v16 = self;
      v17 = HMFGetOSLogHandle();
      v18 = v17;
      if (v14)
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
        [(HMDHomePrimaryResidentMessagingHandler *)v16 setLastPrimaryResidentDiscoveryError:v20];

        os_unfair_lock_unlock(&v16->_lock);
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
    [(HMDHomePrimaryResidentMessagingHandler *)self _processPendingMessagesWithPrimaryResidentDevice:v9];

    goto LABEL_17;
  }

  if (!v10)
  {
    goto LABEL_16;
  }

  v21 = objc_autoreleasePoolPush();
  v22 = self;
  v23 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    v24 = HMFGetLogIdentifier();
    v27 = 138543618;
    v28 = v24;
    v29 = 2112;
    v30 = v10;
    _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_INFO, "%{public}@Primary resident discovery failed and we're not processing pending messages. %@", &v27, 0x16u);
  }

  objc_autoreleasePoolPop(v21);
  os_unfair_lock_lock_with_options();
  [(HMDHomePrimaryResidentMessagingHandler *)v22 setLastPrimaryResidentDiscoveryError:v10];
  os_unfair_lock_unlock(&v22->_lock);

LABEL_17:
  v25 = *MEMORY[0x277D85DE8];
}

- (void)_discoverPrimaryResident
{
  v2 = self;
  if (self)
  {
    self = self->_residentDeviceManager;
  }

  [(HMDHomePrimaryResidentMessagingHandler *)self discoverPrimaryResidentForRequester:v2];
}

- (id)_responseHandlerForRequestMessage:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [v4 identifier];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __76__HMDHomePrimaryResidentMessagingHandler__responseHandlerForRequestMessage___block_invoke;
  aBlock[3] = &unk_278687F40;
  objc_copyWeak(&v11, &location);
  v10 = v5;
  v6 = v5;
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

- (void)_sendMessage:(id)a3 toPrimaryResidentDevice:(id)a4 completionHandler:(id)a5
{
  v44 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 device];
  v12 = [HMDRemoteDeviceMessageDestination alloc];
  v13 = [v8 destination];
  v14 = [v13 target];
  v15 = v12;
  v16 = v11;
  v17 = [(HMDRemoteDeviceMessageDestination *)v15 initWithTarget:v14 device:v11];

  v18 = v8;
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
    v22 = [v18 identifier];
    [v21 setIdentifier:v22];

    [v21 setDestination:v17];
  }

  if ([v18 isRequestType])
  {
    v23 = [(HMDHomePrimaryResidentMessagingHandler *)self _responseHandlerForRequestMessage:v18];
    [v21 setResponseHandler:v23];
  }

  v24 = objc_autoreleasePoolPush();
  v25 = self;
  v26 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    HMFGetLogIdentifier();
    v27 = v37 = v9;
    [v21 identifier];
    v28 = v36 = v10;
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

    v10 = v36;
    v9 = v37;
  }

  objc_autoreleasePoolPop(v24);
  if (v25)
  {
    messageDispatcher = v25->_messageDispatcher;
  }

  else
  {
    messageDispatcher = 0;
  }

  [(HMFMessageDispatcher *)messageDispatcher sendMessage:v21 completionHandler:v10];

  v34 = *MEMORY[0x277D85DE8];
}

- (void)sendMessage:(id)a3 completionHandler:(id)a4
{
  v76 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 destination];
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

  if (v10)
  {
    v11 = [v10 queueTimeout];
    [v11 doubleValue];
    v13 = v12;

    v14 = [v10 queueTimeout];
    v16 = v13 >= 2.22044605e-16 || v14 == 0;
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
    v19 = [(HMDResidentDeviceManager *)v18 primaryResidentDevice];

    if (self)
    {
      lastPrimaryResidentDiscoveryError = self->_lastPrimaryResidentDiscoveryError;
    }

    else
    {
      lastPrimaryResidentDiscoveryError = 0;
    }

    v69 = lastPrimaryResidentDiscoveryError;
    if (v19)
    {
      v66 = [v19 isReachable] ^ 1;
    }

    else
    {
      v66 = 0;
    }

    if ([v19 isCurrentDevice])
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
        v27 = self;
        v28 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          v29 = HMFGetLogIdentifier();
          v30 = [v6 identifier];
          *buf = 138543874;
          v71 = v29;
          v72 = 2114;
          v73 = v30;
          v74 = 2112;
          v75 = v25;
          _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_INFO, "%{public}@Cannot send message %{public}@ due to error: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v26);
        [v6 respondWithError:v25];
        v31 = _Block_copy(v7);
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
      if (v19)
      {
        v33 = [v19 isReachable];
      }

      else
      {
        v33 = 0;
      }

      v34 = [v6 isRequestType];
      v35 = [v10 queueTimeout];
      v37 = v13 <= 2.22044605e-16 || v35 == 0;

      [v6 timeout];
      v39 = v68;
      if (v33)
      {
        v39 = v34;
      }

      if (v39)
      {
        if ((v37 | v34))
        {
          if (v38 <= 2.22044605e-16)
          {
            v41 = 60.0;
          }

          else
          {
            [v6 timeout];
            v41 = v40;
          }
        }

        else
        {
          v41 = v13;
          if (v38 > 2.22044605e-16)
          {
            [v6 timeout];
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
        v45 = [v6 identifier];
        v65 = [(HMFTimerManager *)v44 startTimerWithTimeInterval:v45 object:v41];

        v67 = [[HMDHomePrimaryResidentMessagingHandlerPendingMessageContext alloc] initWithMessage:v6 messageTimerContext:v65];
        if (((v37 | v33) & 1) == 0 && ((v34 ^ 1) & 1) == 0)
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
          v48 = [v6 identifier];
          v49 = [(HMFTimerManager *)v47 startTimerWithTimeInterval:v48 object:v13];
          [(HMDHomePrimaryResidentMessagingHandlerPendingMessageContext *)v67 setQueueTimerContext:v49];
        }

        if (v33)
        {
          [(HMDHomePrimaryResidentMessagingHandlerPendingMessageContext *)v67 setMessageInFlight:1];
          v50 = [v19 identifier];
          [(HMDHomePrimaryResidentMessagingHandlerPendingMessageContext *)v67 setLastPrimaryResidentDestinationUUID:v50];
        }

        else
        {
          [(HMDHomePrimaryResidentMessagingHandlerPendingMessageContext *)v67 setCompletionHandler:v7];
        }

        v51 = objc_autoreleasePoolPush();
        v52 = self;
        v53 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
        {
          v64 = v51;
          v54 = HMFGetLogIdentifier();
          v55 = [v6 identifier];
          *buf = 138543618;
          v71 = v54;
          v72 = 2114;
          v73 = v55;
          _os_log_impl(&dword_229538000, v53, OS_LOG_TYPE_INFO, "%{public}@Enqueueing message %{public}@", buf, 0x16u);

          v51 = v64;
        }

        objc_autoreleasePoolPop(v51);
        if (self)
        {
          pendingMessages = v52->_pendingMessages;
        }

        else
        {
          pendingMessages = 0;
        }

        v57 = pendingMessages;
        v58 = [v6 identifier];
        [(NSMapTable *)v57 setObject:v67 forKey:v58];
      }

      os_unfair_lock_unlock(&self->_lock);
      if (v33)
      {
        [(HMDHomePrimaryResidentMessagingHandler *)self _sendMessage:v6 toPrimaryResidentDevice:v19 completionHandler:v7];
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
      [v6 respondWithError:v60];
      v61 = _Block_copy(v7);
      v62 = v61;
      if (v61)
      {
        (*(v61 + 2))(v61, v60);
      }
    }

    goto LABEL_71;
  }

  v21 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
  [v6 respondWithError:v21];
  v22 = _Block_copy(v7);
  v23 = v22;
  if (v22)
  {
    (*(v22 + 2))(v22, v21);
  }

LABEL_73:
  v63 = *MEMORY[0x277D85DE8];
}

- (HMDHomePrimaryResidentMessagingHandler)initWithMessageDispatcher:(id)a3 homeUUID:(id)a4 residentDeviceManager:(id)a5 dataSource:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v30.receiver = self;
  v30.super_class = HMDHomePrimaryResidentMessagingHandler;
  v15 = [(HMDHomePrimaryResidentMessagingHandler *)&v30 init];
  v16 = v15;
  if (v15)
  {
    v15->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v15->_messageDispatcher, a3);
    objc_storeStrong(&v16->_homeUUID, a4);
    objc_storeStrong(&v16->_residentDeviceManager, a5);
    v17 = [v14 notificationCenter];
    notificationCenter = v16->_notificationCenter;
    v16->_notificationCenter = v17;

    v19 = [v14 timerManager];
    timerManager = v16->_timerManager;
    v16->_timerManager = v19;

    [(HMFTimerManager *)v16->_timerManager setDelegate:v16];
    v21 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    pendingMessages = v16->_pendingMessages;
    v16->_pendingMessages = v21;

    v23 = [MEMORY[0x277CCA9B8] hmErrorWithCode:23 description:@"Cannot send message because the current device is the primary resident" reason:@"Sending message to the current device is not supported" suggestion:0];
    destinationIsCurrentDeviceError = v16->_destinationIsCurrentDeviceError;
    v16->_destinationIsCurrentDeviceError = v23;

    v25 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:3205 description:@"Cannot send message because the original primary is the same device as the newly discovered primary" reason:@"Sending a message to the same device multiple times is not supported" suggestion:0];
    repeatedDestinationError = v16->_repeatedDestinationError;
    v16->_repeatedDestinationError = v25;

    v27 = [v12 UUIDString];
    logIdentifier = v16->_logIdentifier;
    v16->_logIdentifier = v27;

    [(NSNotificationCenter *)v16->_notificationCenter addObserver:v16 selector:sel_handlePrimaryResidentUpdated_ name:@"HMDResidentDeviceManagerUpdatePrimaryResidentNotification" object:v13];
    [(NSNotificationCenter *)v16->_notificationCenter addObserver:v16 selector:sel_handleResidentUpdated_ name:@"HMDResidentDeviceManagerUpdateResidentNotification" object:v13];
  }

  return v16;
}

- (HMDHomePrimaryResidentMessagingHandler)initWithMessageDispatcher:(id)a3 homeUUID:(id)a4 residentDeviceManager:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_alloc_init(HMDHomePrimaryResidentMessagingHandlerDefaultDataSource);
  v12 = [(HMDHomePrimaryResidentMessagingHandler *)self initWithMessageDispatcher:v10 homeUUID:v9 residentDeviceManager:v8 dataSource:v11];

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