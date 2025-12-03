@interface HMDDeviceNotificationHandler
+ (id)logCategory;
- (HMDDeviceNotificationHandler)initWithDestination:(id)destination watchDevice:(BOOL)device withRequestIdentifier:(id)identifier messageDispatcher:(id)dispatcher home:(id)home dataSource:(id)source;
- (HMDHome)home;
- (id)_notificationUpdateWithRequestID:(id)d allowAdd:(BOOL)add;
- (id)logIdentifier;
- (void)_beginCoalesce:(BOOL)coalesce;
- (void)_dispatchNotification;
- (void)_dispatchNotificationUpdate:(id)update;
- (void)sendCoalescedRemoteNotificationForAccessories:(id)accessories;
- (void)sendNotificationForActionSetResponses:(id)responses notificationUpdateIdentifier:(id)identifier;
- (void)sendNotificationForCharacteristicUpdates:(id)updates withRequestIdentifier:(id)identifier notificationUpdateIdentifier:(id)updateIdentifier completion:(id)completion;
- (void)sendNotificationForMediaProperties:(id)properties withRequestIdentifier:(id)identifier notificationUpdateIdentifier:(id)updateIdentifier;
- (void)timerDidFire:(id)fire;
@end

@implementation HMDDeviceNotificationHandler

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (id)logIdentifier
{
  v3 = MEMORY[0x277CCACA8];
  home = [(HMDDeviceNotificationHandler *)self home];
  uuid = [home uuid];
  destination = [(HMDDeviceNotificationHandler *)self destination];
  v7 = [v3 stringWithFormat:@"%@/%@", uuid, destination];

  return v7;
}

- (void)timerDidFire:(id)fire
{
  v18 = *MEMORY[0x277D85DE8];
  fireCopy = fire;
  workQueue = [(HMDDeviceNotificationHandler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  coalesceTimer = [(HMDDeviceNotificationHandler *)self coalesceTimer];
  if ([fireCopy isEqual:coalesceTimer])
  {
  }

  else
  {
    delayTimer = [(HMDDeviceNotificationHandler *)self delayTimer];
    v8 = [fireCopy isEqual:delayTimer];

    if (!v8)
    {
      goto LABEL_7;
    }
  }

  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v14 = 138543618;
    v15 = v12;
    v16 = 2112;
    v17 = fireCopy;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Notification timer fired %@", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  [(HMDDeviceNotificationHandler *)selfCopy _dispatchNotification];
LABEL_7:

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_dispatchNotificationUpdate:(id)update
{
  v82[1] = *MEMORY[0x277D85DE8];
  updateCopy = update;
  workQueue = [(HMDDeviceNotificationHandler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (updateCopy)
  {
    characteristicUpdateTuples = [updateCopy characteristicUpdateTuples];
    characteristicUpdateTuples2 = [updateCopy characteristicUpdateTuples];
    v61 = [characteristicUpdateTuples2 na_map:&__block_literal_global_71];

    [v61 na_each:&__block_literal_global_74];
    mediaProperties = [updateCopy mediaProperties];
    actionSetResponses = [updateCopy actionSetResponses];
    if ([v61 count] || objc_msgSend(mediaProperties, "count") || objc_msgSend(actionSetResponses, "count"))
    {
      v81 = @"kNotificationUpdateIdentifierKey";
      notificationUpdateID = [updateCopy notificationUpdateID];
      v82[0] = notificationUpdateID;
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v82 forKeys:&v81 count:1];
      v60 = [v9 mutableCopy];

      destination = [(HMDDeviceNotificationHandler *)self destination];
      v56 = [HMDHome notificationPayloadForChangedCharacteristics:v61 destination:destination destinationIsXPCTransport:0];

      if ([v56 count])
      {
        [v60 setObject:v56 forKeyedSubscript:@"kCharacteristicNotificationsKey"];
      }

      if ([mediaProperties count])
      {
        v11 = [HMDMediaPropertyResponse serializeResponses:mediaProperties];
        if (v11)
        {
          [v60 setObject:v11 forKeyedSubscript:@"kMediaNotificationsKey"];
        }
      }

      if ([actionSetResponses count])
      {
        v12 = [HMDActionSetResponse serializeWithResponses:actionSetResponses];
        if (v12)
        {
          [v60 setObject:v12 forKeyedSubscript:@"HMDDeviceNotificationActionSetsKey"];
        }
      }

      requestID = [updateCopy requestID];
      if (requestID)
      {
        destination2 = [(HMDDeviceNotificationHandler *)self destination];
        v14 = [requestID isEqualToString:destination2];

        if ((v14 & 1) == 0)
        {
          [v60 setObject:requestID forKeyedSubscript:@"kRequestIdentifierKey"];
        }
      }

      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v15 = v61;
      v16 = [v15 countByEnumeratingWithState:&v66 objects:v80 count:16];
      if (v16)
      {
        v17 = *v67;
        while (2)
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v67 != v17)
            {
              objc_enumerationMutation(v15);
            }

            characteristic = [*(*(&v66 + 1) + 8 * i) characteristic];
            service = [characteristic service];
            destination3 = [(HMDDeviceNotificationHandler *)self destination];
            v22 = [service shouldIncludePresenceForDeviceWithDestination:destination3];

            if (v22)
            {
              LODWORD(v16) = 1;
              goto LABEL_28;
            }
          }

          v16 = [v15 countByEnumeratingWithState:&v66 objects:v80 count:16];
          if (v16)
          {
            continue;
          }

          break;
        }
      }

LABEL_28:

      home = [(HMDDeviceNotificationHandler *)self home];
      v24 = home;
      if (home)
      {
        if (v16)
        {
          presenceMonitor = [home presenceMonitor];
          currentHomePresence = [presenceMonitor currentHomePresence];
          serializedUUIDDictionary = [currentHomePresence serializedUUIDDictionary];

          presenceMonitor2 = [v24 presenceMonitor];
          currentHomePresence2 = [presenceMonitor2 currentHomePresence];
          serializedIdentifierDictionary = [currentHomePresence2 serializedIdentifierDictionary];

          [v60 setObject:serializedUUIDDictionary forKeyedSubscript:@"kPresenceDictionaryForNotificationKey"];
          [v60 setObject:serializedIdentifierDictionary forKeyedSubscript:@"kPresencePairingIdentifierDictionaryForNotificationKey"];
        }

        else
        {
          serializedIdentifierDictionary = 0;
          serializedUUIDDictionary = 0;
        }

        destination4 = [(HMDDeviceNotificationHandler *)self destination];
        v54 = [HMDDeviceHandle deviceHandleForDestination:destination4];

        v34 = +[HMDAccountRegistry sharedRegistry];
        v55 = [v34 deviceForHandle:v54];

        v35 = [HMDRemoteDeviceMessageDestination alloc];
        uuid = [v24 uuid];
        v53 = [(HMDRemoteDeviceMessageDestination *)v35 initWithTarget:uuid device:v55];

        v37 = [[HMDRemoteMessage alloc] initWithName:@"kCharacterisiticsChangedInternalNotificationKey" qualityOfService:17 destination:v53 payload:v60 type:3 timeout:1 secure:0.0];
        v38 = [v24 _userForDevice:v55];
        if (([v38 canGetUpdatesRemotely] & 1) == 0)
        {
          [(HMDRemoteMessage *)v37 setRestriction:14];
        }

        context = objc_autoreleasePoolPush();
        selfCopy = self;
        v40 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
        {
          v41 = HMFGetLogIdentifier();
          identifier = [(HMDRemoteMessage *)v37 identifier];
          v43 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v15, "count")}];
          v44 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(mediaProperties, "count")}];
          messagePayload = [(HMDRemoteMessage *)v37 messagePayload];
          *buf = 138544386;
          v71 = v41;
          v72 = 2112;
          v73 = identifier;
          v74 = 2112;
          v75 = v43;
          v76 = 2112;
          v77 = v44;
          v78 = 2112;
          v79 = messagePayload;
          _os_log_impl(&dword_229538000, v40, OS_LOG_TYPE_INFO, "%{public}@Dispatching remote notification %@ with characteristics[%@], media properties[%@], payload: %@", buf, 0x34u);
        }

        objc_autoreleasePoolPop(context);
        workQueue2 = [v24 workQueue];
        objc_initWeak(buf, selfCopy);
        messageDispatcher = [(HMDDeviceNotificationHandler *)selfCopy messageDispatcher];
        v62[0] = MEMORY[0x277D85DD0];
        v62[1] = 3221225472;
        v62[2] = __60__HMDDeviceNotificationHandler__dispatchNotificationUpdate___block_invoke_83;
        v62[3] = &unk_278685D08;
        objc_copyWeak(&v65, buf);
        v48 = workQueue2;
        v63 = v48;
        v64 = updateCopy;
        [messageDispatcher sendMessage:v37 completionHandler:v62];

        objc_destroyWeak(&v65);
        objc_destroyWeak(buf);
      }

      else
      {
        v29 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v31 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          v32 = HMFGetLogIdentifier();
          *buf = 138543618;
          v71 = v32;
          v72 = 2112;
          v73 = updateCopy;
          _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_ERROR, "%{public}@Unable to dispatch notification update %@ due to no home", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v29);
      }
    }
  }

  v49 = *MEMORY[0x277D85DE8];
}

void __60__HMDDeviceNotificationHandler__dispatchNotificationUpdate___block_invoke_83(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __60__HMDDeviceNotificationHandler__dispatchNotificationUpdate___block_invoke_2_84;
    v6[3] = &unk_27868A750;
    v5 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = v3;
    dispatch_async(v5, v6);
  }
}

void __60__HMDDeviceNotificationHandler__dispatchNotificationUpdate___block_invoke_2_84(uint64_t a1)
{
  v2 = [*(a1 + 32) completions];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __60__HMDDeviceNotificationHandler__dispatchNotificationUpdate___block_invoke_3;
  v3[3] = &unk_278687BD0;
  v4 = *(a1 + 40);
  [v2 na_each:v3];
}

void __60__HMDDeviceNotificationHandler__dispatchNotificationUpdate___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 characteristicResponse];
  v2 = [v3 request];
  [v2 setCompleted:1];
}

void *__60__HMDDeviceNotificationHandler__dispatchNotificationUpdate___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 characteristicResponse];
  v4 = [v3 request];
  if ([v4 isCompleted])
  {
    v5 = 0;
  }

  else
  {
    v5 = v2;
  }

  v6 = v5;

  return v5;
}

- (void)_dispatchNotification
{
  v20 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDDeviceNotificationHandler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  delayTimer = [(HMDDeviceNotificationHandler *)self delayTimer];
  [delayTimer cancel];

  coalesceTimer = [(HMDDeviceNotificationHandler *)self coalesceTimer];
  [coalesceTimer cancel];

  [(HMDDeviceNotificationHandler *)self setDelayTimer:0];
  [(HMDDeviceNotificationHandler *)self setCoalesceTimer:0];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  deviceNotificationsByRequestIDs = [(HMDDeviceNotificationHandler *)self deviceNotificationsByRequestIDs];
  v7 = [deviceNotificationsByRequestIDs countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(deviceNotificationsByRequestIDs);
        }

        v11 = *(*(&v15 + 1) + 8 * v10);
        v12 = objc_autoreleasePoolPush();
        [(HMDDeviceNotificationHandler *)self _dispatchNotificationUpdate:v11];
        objc_autoreleasePoolPop(v12);
        ++v10;
      }

      while (v8 != v10);
      v8 = [deviceNotificationsByRequestIDs countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  deviceNotificationsByRequestIDs2 = [(HMDDeviceNotificationHandler *)self deviceNotificationsByRequestIDs];
  [deviceNotificationsByRequestIDs2 removeAllObjects];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_beginCoalesce:(BOOL)coalesce
{
  v30 = *MEMORY[0x277D85DE8];
  if (coalesce)
  {
    coalesceTimer = [(HMDDeviceNotificationHandler *)self coalesceTimer];

    if (!coalesceTimer)
    {
      dataSource = [(HMDDeviceNotificationHandler *)self dataSource];
      v6 = [dataSource timerWithType:0];
      [(HMDDeviceNotificationHandler *)self setCoalesceTimer:v6];

      coalesceTimer2 = [(HMDDeviceNotificationHandler *)self coalesceTimer];
      [coalesceTimer2 setDelegate:self];

      workQueue = [(HMDDeviceNotificationHandler *)self workQueue];
      coalesceTimer3 = [(HMDDeviceNotificationHandler *)self coalesceTimer];
      [coalesceTimer3 setDelegateQueue:workQueue];

      coalesceTimer4 = [(HMDDeviceNotificationHandler *)self coalesceTimer];
      [coalesceTimer4 resume];

      v11 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = HMFGetLogIdentifier();
        coalesceTimer5 = [(HMDDeviceNotificationHandler *)selfCopy2 coalesceTimer];
        v26 = 138543618;
        v27 = v14;
        v28 = 2112;
        v29 = coalesceTimer5;
        v16 = "%{public}@Running coalescence timer %@";
LABEL_9:
        _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, v16, &v26, 0x16u);

        goto LABEL_10;
      }

      goto LABEL_10;
    }

    goto LABEL_11;
  }

  if ([(HMDDeviceNotificationHandler *)self delaySupported])
  {
    delayTimer = [(HMDDeviceNotificationHandler *)self delayTimer];

    if (!delayTimer)
    {
      dataSource2 = [(HMDDeviceNotificationHandler *)self dataSource];
      v19 = [dataSource2 timerWithType:1];
      [(HMDDeviceNotificationHandler *)self setDelayTimer:v19];

      delayTimer2 = [(HMDDeviceNotificationHandler *)self delayTimer];
      [delayTimer2 setDelegate:self];

      workQueue2 = [(HMDDeviceNotificationHandler *)self workQueue];
      delayTimer3 = [(HMDDeviceNotificationHandler *)self delayTimer];
      [delayTimer3 setDelegateQueue:workQueue2];

      delayTimer4 = [(HMDDeviceNotificationHandler *)self delayTimer];
      [delayTimer4 resume];

      v11 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = HMFGetLogIdentifier();
        coalesceTimer5 = [(HMDDeviceNotificationHandler *)selfCopy2 delayTimer];
        v26 = 138543618;
        v27 = v14;
        v28 = 2112;
        v29 = coalesceTimer5;
        v16 = "%{public}@Running delay timer %@";
        goto LABEL_9;
      }

LABEL_10:

      objc_autoreleasePoolPop(v11);
    }

LABEL_11:
    v24 = *MEMORY[0x277D85DE8];
    return;
  }

  v25 = *MEMORY[0x277D85DE8];

  [(HMDDeviceNotificationHandler *)self _dispatchNotification];
}

- (void)sendNotificationForActionSetResponses:(id)responses notificationUpdateIdentifier:(id)identifier
{
  v30 = *MEMORY[0x277D85DE8];
  responsesCopy = responses;
  identifierCopy = identifier;
  workQueue = [(HMDDeviceNotificationHandler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (![responsesCopy count])
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      v26 = 138543362;
      v27 = v18;
      v19 = "%{public}@No action sets updated";
      goto LABEL_7;
    }

LABEL_8:

    objc_autoreleasePoolPop(v15);
    goto LABEL_12;
  }

  home = [(HMDDeviceNotificationHandler *)self home];
  primaryResident = [home primaryResident];
  device = [primaryResident device];
  remoteDestinationString = [device remoteDestinationString];
  destination = [(HMDDeviceNotificationHandler *)self destination];
  v14 = [remoteDestinationString isEqualToString:destination];

  if (v14)
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      v26 = 138543362;
      v27 = v18;
      v19 = "%{public}@No action set notification will be sent to the primary";
LABEL_7:
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, v19, &v26, 0xCu);

      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v20 = [(HMDDeviceNotificationHandler *)self _notificationUpdateWithRequestID:0 allowAdd:1];
  [v20 updateWithUpdatedActionSetResponses:responsesCopy notificationUpdateID:identifierCopy completion:0];
  v21 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v23 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    v24 = HMFGetLogIdentifier();
    v26 = 138543618;
    v27 = v24;
    v28 = 2112;
    v29 = responsesCopy;
    _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_INFO, "%{public}@Coalescing action set responses %@", &v26, 0x16u);
  }

  objc_autoreleasePoolPop(v21);
  [(HMDDeviceNotificationHandler *)selfCopy3 _beginCoalesce:1];

LABEL_12:
  v25 = *MEMORY[0x277D85DE8];
}

- (void)sendNotificationForMediaProperties:(id)properties withRequestIdentifier:(id)identifier notificationUpdateIdentifier:(id)updateIdentifier
{
  v38 = *MEMORY[0x277D85DE8];
  propertiesCopy = properties;
  identifierCopy = identifier;
  updateIdentifierCopy = updateIdentifier;
  workQueue = [(HMDDeviceNotificationHandler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if ([propertiesCopy count])
  {
    v12 = [(HMDDeviceNotificationHandler *)self _notificationUpdateWithRequestID:identifierCopy allowAdd:1];
    home = [(HMDDeviceNotificationHandler *)self home];
    primaryResident = [home primaryResident];
    [primaryResident device];
    v15 = v29 = updateIdentifierCopy;
    remoteDestinationString = [v15 remoteDestinationString];
    destination = [(HMDDeviceNotificationHandler *)self destination];
    v18 = [remoteDestinationString isEqualToString:destination] ^ 1;

    updateIdentifierCopy = v29;
    [v12 updateWithUpdatedMediaPropertiesByMediaResponses:propertiesCopy notificationUpdateID:v29 completion:0];
    v19 = objc_autoreleasePoolPush();
    selfCopy = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      v23 = HMFBooleanToString();
      *buf = 138544130;
      v31 = v22;
      v32 = 2112;
      v33 = propertiesCopy;
      v34 = 2112;
      v35 = identifierCopy;
      v36 = 2112;
      v37 = v23;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@Coalescing media notifications %@, id: %@, shouldCoalesce: %@", buf, 0x2Au);

      updateIdentifierCopy = v29;
    }

    objc_autoreleasePoolPop(v19);
    [(HMDDeviceNotificationHandler *)selfCopy _beginCoalesce:(identifierCopy == 0) & v18];
  }

  else
  {
    v24 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138543362;
      v31 = v27;
      _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_INFO, "%{public}@No media properties updated, returning", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v24);
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (id)_notificationUpdateWithRequestID:(id)d allowAdd:(BOOL)add
{
  addCopy = add;
  dCopy = d;
  workQueue = [(HMDDeviceNotificationHandler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (dCopy)
  {
    destination = dCopy;
  }

  else
  {
    destination = [(HMDDeviceNotificationHandler *)self destination];
  }

  v9 = destination;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__19997;
  v29 = __Block_byref_object_dispose__19998;
  v30 = 0;
  deviceNotificationsByRequestIDs = [(HMDDeviceNotificationHandler *)self deviceNotificationsByRequestIDs];
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __74__HMDDeviceNotificationHandler__notificationUpdateWithRequestID_allowAdd___block_invoke;
  v22 = &unk_278671088;
  v11 = v9;
  v23 = v11;
  v24 = &v25;
  [deviceNotificationsByRequestIDs enumerateObjectsUsingBlock:&v19];

  v12 = v26[5];
  if (!v12 && addCopy)
  {
    v13 = [HMDDeviceNotificationUpdate alloc];
    v14 = [(HMDDeviceNotificationUpdate *)v13 initWithRequestID:v11, v19, v20, v21, v22];
    v15 = v26[5];
    v26[5] = v14;

    deviceNotificationsByRequestIDs2 = [(HMDDeviceNotificationHandler *)self deviceNotificationsByRequestIDs];
    [deviceNotificationsByRequestIDs2 addObject:v26[5]];

    v12 = v26[5];
  }

  v17 = v12;

  _Block_object_dispose(&v25, 8);

  return v17;
}

void __74__HMDDeviceNotificationHandler__notificationUpdateWithRequestID_allowAdd___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v8 = *(a1 + 32);
  v10 = v7;
  v9 = [v7 requestID];
  LODWORD(v8) = [v8 isEqualToString:v9];

  if (v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (void)sendCoalescedRemoteNotificationForAccessories:(id)accessories
{
  v25 = *MEMORY[0x277D85DE8];
  accessoriesCopy = accessories;
  workQueue = [(HMDDeviceNotificationHandler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if ([accessoriesCopy count])
  {
    deviceNotificationsByRequestIDs = [(HMDDeviceNotificationHandler *)self deviceNotificationsByRequestIDs];
    array = [deviceNotificationsByRequestIDs array];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __78__HMDDeviceNotificationHandler_sendCoalescedRemoteNotificationForAccessories___block_invoke;
    v17[3] = &unk_278671060;
    v8 = accessoriesCopy;
    v18 = v8;
    v9 = [array na_filter:v17];

    if ([v9 count])
    {
      v10 = [v8 na_map:&__block_literal_global_20041];
      v11 = objc_autoreleasePoolPush();
      selfCopy = self;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = HMFGetLogIdentifier();
        v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v9, "count")}];
        *buf = 138543874;
        v20 = v14;
        v21 = 2112;
        v22 = v15;
        v23 = 2112;
        v24 = v10;
        _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Sending all coalesced remote notifications including %@ updates for %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v11);
      [(HMDDeviceNotificationHandler *)selfCopy _dispatchNotification];
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

uint64_t __78__HMDDeviceNotificationHandler_sendCoalescedRemoteNotificationForAccessories___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 characteristicUpdateTuples];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __78__HMDDeviceNotificationHandler_sendCoalescedRemoteNotificationForAccessories___block_invoke_2;
  v6[3] = &unk_278671038;
  v7 = *(a1 + 32);
  v4 = [v3 na_any:v6];

  return v4;
}

uint64_t __78__HMDDeviceNotificationHandler_sendCoalescedRemoteNotificationForAccessories___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 characteristic];
  v4 = [v3 accessory];
  v5 = [v2 containsObject:v4];

  return v5;
}

- (void)sendNotificationForCharacteristicUpdates:(id)updates withRequestIdentifier:(id)identifier notificationUpdateIdentifier:(id)updateIdentifier completion:(id)completion
{
  v68 = *MEMORY[0x277D85DE8];
  updatesCopy = updates;
  identifierCopy = identifier;
  updateIdentifierCopy = updateIdentifier;
  completionCopy = completion;
  workQueue = [(HMDDeviceNotificationHandler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if ([updatesCopy count])
  {
    v51 = completionCopy;
    v52 = updateIdentifierCopy;
    v15 = [(HMDDeviceNotificationHandler *)self _notificationUpdateWithRequestID:identifierCopy allowAdd:1];
    home = [(HMDDeviceNotificationHandler *)self home];
    primaryResident = [home primaryResident];
    device = [primaryResident device];
    remoteDestinationString = [device remoteDestinationString];
    selfCopy = self;
    destination = [(HMDDeviceNotificationHandler *)self destination];
    v21 = [remoteDestinationString isEqualToString:destination] ^ 1;

    v22 = (identifierCopy == 0) & v21;
    v56 = +[HMDHAPMetadata getSharedInstance];
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v53 = updatesCopy;
    v23 = updatesCopy;
    v24 = [v23 countByEnumeratingWithState:&v57 objects:v67 count:16];
    if (v24)
    {
      v25 = v24;
      v48 = v15;
      v49 = identifierCopy;
      v26 = 0;
      obj = v23;
      v55 = *v58;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v58 != v55)
          {
            objc_enumerationMutation(obj);
          }

          characteristic = [*(*(&v57 + 1) + 8 * i) characteristic];
          service = [characteristic service];
          type = [characteristic type];
          type2 = [service type];
          v32 = [v56 shouldCoalesceCharacteristicNotifications:type forService:type2];

          v22 = v32 & v22;
          type3 = [characteristic type];
          type4 = [service type];
          LOBYTE(v32) = [v56 requiresDeviceUnlock:type3 forService:type4];

          v26 |= v32;
        }

        v25 = [obj countByEnumeratingWithState:&v57 objects:v67 count:16];
      }

      while (v25);

      v15 = v48;
      completionCopy = v51;
      updateIdentifierCopy = v52;
      [v48 updateWithCharacteristicUpdates:obj notificationUpdateID:v52 completion:v51];
      identifierCopy = v49;
      if (v26)
      {
        v35 = objc_autoreleasePoolPush();
        v36 = selfCopy;
        v37 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
        {
          v38 = HMFGetLogIdentifier();
          *buf = 138543874;
          v62 = v38;
          v63 = 2112;
          v64 = obj;
          v65 = 2112;
          v66 = v49;
          _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_INFO, "%{public}@Not coalescing notifications for %@, id: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v35);
        deviceNotificationsByRequestIDs = [(HMDDeviceNotificationHandler *)v36 deviceNotificationsByRequestIDs];
        v40 = [deviceNotificationsByRequestIDs indexOfObject:v48];

        if (v40)
        {
          deviceNotificationsByRequestIDs2 = [(HMDDeviceNotificationHandler *)v36 deviceNotificationsByRequestIDs];
          [deviceNotificationsByRequestIDs2 removeObject:v48];

          deviceNotificationsByRequestIDs3 = [(HMDDeviceNotificationHandler *)v36 deviceNotificationsByRequestIDs];
          [deviceNotificationsByRequestIDs3 insertObject:v48 atIndex:0];
        }

        [(HMDDeviceNotificationHandler *)v36 _dispatchNotification];
        goto LABEL_21;
      }
    }

    else
    {

      updateIdentifierCopy = v52;
      [v15 updateWithCharacteristicUpdates:v23 notificationUpdateID:v52 completion:completionCopy];
    }

    [(HMDDeviceNotificationHandler *)selfCopy _beginCoalesce:v22];
LABEL_21:

    updatesCopy = v53;
    goto LABEL_22;
  }

  v43 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v45 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
  {
    v46 = HMFGetLogIdentifier();
    *buf = 138543618;
    v62 = v46;
    v63 = 2112;
    v64 = identifierCopy;
    _os_log_impl(&dword_229538000, v45, OS_LOG_TYPE_INFO, "%{public}@No characteristics updated for: %@, returning", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v43);
  if (completionCopy)
  {
    v15 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
    completionCopy[2](completionCopy, v15);
LABEL_22:
  }

  v47 = *MEMORY[0x277D85DE8];
}

- (HMDDeviceNotificationHandler)initWithDestination:(id)destination watchDevice:(BOOL)device withRequestIdentifier:(id)identifier messageDispatcher:(id)dispatcher home:(id)home dataSource:(id)source
{
  destinationCopy = destination;
  dispatcherCopy = dispatcher;
  homeCopy = home;
  sourceCopy = source;
  v25.receiver = self;
  v25.super_class = HMDDeviceNotificationHandler;
  v18 = [(HMDDeviceNotificationHandler *)&v25 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_destination, destination);
    objc_storeWeak(&v19->_home, homeCopy);
    v19->_delaySupported = !device;
    orderedSet = [MEMORY[0x277CBEB40] orderedSet];
    deviceNotificationsByRequestIDs = v19->_deviceNotificationsByRequestIDs;
    v19->_deviceNotificationsByRequestIDs = orderedSet;

    workQueue = [homeCopy workQueue];
    workQueue = v19->_workQueue;
    v19->_workQueue = workQueue;

    objc_storeStrong(&v19->_messageDispatcher, dispatcher);
    objc_storeStrong(&v19->_dataSource, source);
  }

  return v19;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t13 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t13, &__block_literal_global_89);
  }

  v3 = logCategory__hmf_once_v14;

  return v3;
}

void __43__HMDDeviceNotificationHandler_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v14;
  logCategory__hmf_once_v14 = v1;
}

@end