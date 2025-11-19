@interface HMDDeviceNotificationHandler
+ (id)logCategory;
- (HMDDeviceNotificationHandler)initWithDestination:(id)a3 watchDevice:(BOOL)a4 withRequestIdentifier:(id)a5 messageDispatcher:(id)a6 home:(id)a7 dataSource:(id)a8;
- (HMDHome)home;
- (id)_notificationUpdateWithRequestID:(id)a3 allowAdd:(BOOL)a4;
- (id)logIdentifier;
- (void)_beginCoalesce:(BOOL)a3;
- (void)_dispatchNotification;
- (void)_dispatchNotificationUpdate:(id)a3;
- (void)sendCoalescedRemoteNotificationForAccessories:(id)a3;
- (void)sendNotificationForActionSetResponses:(id)a3 notificationUpdateIdentifier:(id)a4;
- (void)sendNotificationForCharacteristicUpdates:(id)a3 withRequestIdentifier:(id)a4 notificationUpdateIdentifier:(id)a5 completion:(id)a6;
- (void)sendNotificationForMediaProperties:(id)a3 withRequestIdentifier:(id)a4 notificationUpdateIdentifier:(id)a5;
- (void)timerDidFire:(id)a3;
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
  v4 = [(HMDDeviceNotificationHandler *)self home];
  v5 = [v4 uuid];
  v6 = [(HMDDeviceNotificationHandler *)self destination];
  v7 = [v3 stringWithFormat:@"%@/%@", v5, v6];

  return v7;
}

- (void)timerDidFire:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDDeviceNotificationHandler *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDDeviceNotificationHandler *)self coalesceTimer];
  if ([v4 isEqual:v6])
  {
  }

  else
  {
    v7 = [(HMDDeviceNotificationHandler *)self delayTimer];
    v8 = [v4 isEqual:v7];

    if (!v8)
    {
      goto LABEL_7;
    }
  }

  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v14 = 138543618;
    v15 = v12;
    v16 = 2112;
    v17 = v4;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Notification timer fired %@", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  [(HMDDeviceNotificationHandler *)v10 _dispatchNotification];
LABEL_7:

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_dispatchNotificationUpdate:(id)a3
{
  v82[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDDeviceNotificationHandler *)self workQueue];
  dispatch_assert_queue_V2(v5);

  if (v4)
  {
    v6 = [v4 characteristicUpdateTuples];
    v7 = [v4 characteristicUpdateTuples];
    v61 = [v7 na_map:&__block_literal_global_71];

    [v61 na_each:&__block_literal_global_74];
    v59 = [v4 mediaProperties];
    v57 = [v4 actionSetResponses];
    if ([v61 count] || objc_msgSend(v59, "count") || objc_msgSend(v57, "count"))
    {
      v81 = @"kNotificationUpdateIdentifierKey";
      v8 = [v4 notificationUpdateID];
      v82[0] = v8;
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v82 forKeys:&v81 count:1];
      v60 = [v9 mutableCopy];

      v10 = [(HMDDeviceNotificationHandler *)self destination];
      v56 = [HMDHome notificationPayloadForChangedCharacteristics:v61 destination:v10 destinationIsXPCTransport:0];

      if ([v56 count])
      {
        [v60 setObject:v56 forKeyedSubscript:@"kCharacteristicNotificationsKey"];
      }

      if ([v59 count])
      {
        v11 = [HMDMediaPropertyResponse serializeResponses:v59];
        if (v11)
        {
          [v60 setObject:v11 forKeyedSubscript:@"kMediaNotificationsKey"];
        }
      }

      if ([v57 count])
      {
        v12 = [HMDActionSetResponse serializeWithResponses:v57];
        if (v12)
        {
          [v60 setObject:v12 forKeyedSubscript:@"HMDDeviceNotificationActionSetsKey"];
        }
      }

      v58 = [v4 requestID];
      if (v58)
      {
        v13 = [(HMDDeviceNotificationHandler *)self destination];
        v14 = [v58 isEqualToString:v13];

        if ((v14 & 1) == 0)
        {
          [v60 setObject:v58 forKeyedSubscript:@"kRequestIdentifierKey"];
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

            v19 = [*(*(&v66 + 1) + 8 * i) characteristic];
            v20 = [v19 service];
            v21 = [(HMDDeviceNotificationHandler *)self destination];
            v22 = [v20 shouldIncludePresenceForDeviceWithDestination:v21];

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

      v23 = [(HMDDeviceNotificationHandler *)self home];
      v24 = v23;
      if (v23)
      {
        if (v16)
        {
          v25 = [v23 presenceMonitor];
          v26 = [v25 currentHomePresence];
          v52 = [v26 serializedUUIDDictionary];

          v27 = [v24 presenceMonitor];
          v28 = [v27 currentHomePresence];
          v51 = [v28 serializedIdentifierDictionary];

          [v60 setObject:v52 forKeyedSubscript:@"kPresenceDictionaryForNotificationKey"];
          [v60 setObject:v51 forKeyedSubscript:@"kPresencePairingIdentifierDictionaryForNotificationKey"];
        }

        else
        {
          v51 = 0;
          v52 = 0;
        }

        v33 = [(HMDDeviceNotificationHandler *)self destination];
        v54 = [HMDDeviceHandle deviceHandleForDestination:v33];

        v34 = +[HMDAccountRegistry sharedRegistry];
        v55 = [v34 deviceForHandle:v54];

        v35 = [HMDRemoteDeviceMessageDestination alloc];
        v36 = [v24 uuid];
        v53 = [(HMDRemoteDeviceMessageDestination *)v35 initWithTarget:v36 device:v55];

        v37 = [[HMDRemoteMessage alloc] initWithName:@"kCharacterisiticsChangedInternalNotificationKey" qualityOfService:17 destination:v53 payload:v60 type:3 timeout:1 secure:0.0];
        v38 = [v24 _userForDevice:v55];
        if (([v38 canGetUpdatesRemotely] & 1) == 0)
        {
          [(HMDRemoteMessage *)v37 setRestriction:14];
        }

        context = objc_autoreleasePoolPush();
        v39 = self;
        v40 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
        {
          v41 = HMFGetLogIdentifier();
          v42 = [(HMDRemoteMessage *)v37 identifier];
          v43 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v15, "count")}];
          v44 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v59, "count")}];
          v45 = [(HMDRemoteMessage *)v37 messagePayload];
          *buf = 138544386;
          v71 = v41;
          v72 = 2112;
          v73 = v42;
          v74 = 2112;
          v75 = v43;
          v76 = 2112;
          v77 = v44;
          v78 = 2112;
          v79 = v45;
          _os_log_impl(&dword_229538000, v40, OS_LOG_TYPE_INFO, "%{public}@Dispatching remote notification %@ with characteristics[%@], media properties[%@], payload: %@", buf, 0x34u);
        }

        objc_autoreleasePoolPop(context);
        v46 = [v24 workQueue];
        objc_initWeak(buf, v39);
        v47 = [(HMDDeviceNotificationHandler *)v39 messageDispatcher];
        v62[0] = MEMORY[0x277D85DD0];
        v62[1] = 3221225472;
        v62[2] = __60__HMDDeviceNotificationHandler__dispatchNotificationUpdate___block_invoke_83;
        v62[3] = &unk_278685D08;
        objc_copyWeak(&v65, buf);
        v48 = v46;
        v63 = v48;
        v64 = v4;
        [v47 sendMessage:v37 completionHandler:v62];

        objc_destroyWeak(&v65);
        objc_destroyWeak(buf);
      }

      else
      {
        v29 = objc_autoreleasePoolPush();
        v30 = self;
        v31 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          v32 = HMFGetLogIdentifier();
          *buf = 138543618;
          v71 = v32;
          v72 = 2112;
          v73 = v4;
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
  v3 = [(HMDDeviceNotificationHandler *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDDeviceNotificationHandler *)self delayTimer];
  [v4 cancel];

  v5 = [(HMDDeviceNotificationHandler *)self coalesceTimer];
  [v5 cancel];

  [(HMDDeviceNotificationHandler *)self setDelayTimer:0];
  [(HMDDeviceNotificationHandler *)self setCoalesceTimer:0];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [(HMDDeviceNotificationHandler *)self deviceNotificationsByRequestIDs];
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * v10);
        v12 = objc_autoreleasePoolPush();
        [(HMDDeviceNotificationHandler *)self _dispatchNotificationUpdate:v11];
        objc_autoreleasePoolPop(v12);
        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v13 = [(HMDDeviceNotificationHandler *)self deviceNotificationsByRequestIDs];
  [v13 removeAllObjects];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_beginCoalesce:(BOOL)a3
{
  v30 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = [(HMDDeviceNotificationHandler *)self coalesceTimer];

    if (!v4)
    {
      v5 = [(HMDDeviceNotificationHandler *)self dataSource];
      v6 = [v5 timerWithType:0];
      [(HMDDeviceNotificationHandler *)self setCoalesceTimer:v6];

      v7 = [(HMDDeviceNotificationHandler *)self coalesceTimer];
      [v7 setDelegate:self];

      v8 = [(HMDDeviceNotificationHandler *)self workQueue];
      v9 = [(HMDDeviceNotificationHandler *)self coalesceTimer];
      [v9 setDelegateQueue:v8];

      v10 = [(HMDDeviceNotificationHandler *)self coalesceTimer];
      [v10 resume];

      v11 = objc_autoreleasePoolPush();
      v12 = self;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = HMFGetLogIdentifier();
        v15 = [(HMDDeviceNotificationHandler *)v12 coalesceTimer];
        v26 = 138543618;
        v27 = v14;
        v28 = 2112;
        v29 = v15;
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
    v17 = [(HMDDeviceNotificationHandler *)self delayTimer];

    if (!v17)
    {
      v18 = [(HMDDeviceNotificationHandler *)self dataSource];
      v19 = [v18 timerWithType:1];
      [(HMDDeviceNotificationHandler *)self setDelayTimer:v19];

      v20 = [(HMDDeviceNotificationHandler *)self delayTimer];
      [v20 setDelegate:self];

      v21 = [(HMDDeviceNotificationHandler *)self workQueue];
      v22 = [(HMDDeviceNotificationHandler *)self delayTimer];
      [v22 setDelegateQueue:v21];

      v23 = [(HMDDeviceNotificationHandler *)self delayTimer];
      [v23 resume];

      v11 = objc_autoreleasePoolPush();
      v12 = self;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = HMFGetLogIdentifier();
        v15 = [(HMDDeviceNotificationHandler *)v12 delayTimer];
        v26 = 138543618;
        v27 = v14;
        v28 = 2112;
        v29 = v15;
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

- (void)sendNotificationForActionSetResponses:(id)a3 notificationUpdateIdentifier:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDDeviceNotificationHandler *)self workQueue];
  dispatch_assert_queue_V2(v8);

  if (![v6 count])
  {
    v15 = objc_autoreleasePoolPush();
    v16 = self;
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

  v9 = [(HMDDeviceNotificationHandler *)self home];
  v10 = [v9 primaryResident];
  v11 = [v10 device];
  v12 = [v11 remoteDestinationString];
  v13 = [(HMDDeviceNotificationHandler *)self destination];
  v14 = [v12 isEqualToString:v13];

  if (v14)
  {
    v15 = objc_autoreleasePoolPush();
    v16 = self;
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
  [v20 updateWithUpdatedActionSetResponses:v6 notificationUpdateID:v7 completion:0];
  v21 = objc_autoreleasePoolPush();
  v22 = self;
  v23 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    v24 = HMFGetLogIdentifier();
    v26 = 138543618;
    v27 = v24;
    v28 = 2112;
    v29 = v6;
    _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_INFO, "%{public}@Coalescing action set responses %@", &v26, 0x16u);
  }

  objc_autoreleasePoolPop(v21);
  [(HMDDeviceNotificationHandler *)v22 _beginCoalesce:1];

LABEL_12:
  v25 = *MEMORY[0x277D85DE8];
}

- (void)sendNotificationForMediaProperties:(id)a3 withRequestIdentifier:(id)a4 notificationUpdateIdentifier:(id)a5
{
  v38 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HMDDeviceNotificationHandler *)self workQueue];
  dispatch_assert_queue_V2(v11);

  if ([v8 count])
  {
    v12 = [(HMDDeviceNotificationHandler *)self _notificationUpdateWithRequestID:v9 allowAdd:1];
    v13 = [(HMDDeviceNotificationHandler *)self home];
    v14 = [v13 primaryResident];
    [v14 device];
    v15 = v29 = v10;
    v16 = [v15 remoteDestinationString];
    v17 = [(HMDDeviceNotificationHandler *)self destination];
    v18 = [v16 isEqualToString:v17] ^ 1;

    v10 = v29;
    [v12 updateWithUpdatedMediaPropertiesByMediaResponses:v8 notificationUpdateID:v29 completion:0];
    v19 = objc_autoreleasePoolPush();
    v20 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      v23 = HMFBooleanToString();
      *buf = 138544130;
      v31 = v22;
      v32 = 2112;
      v33 = v8;
      v34 = 2112;
      v35 = v9;
      v36 = 2112;
      v37 = v23;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@Coalescing media notifications %@, id: %@, shouldCoalesce: %@", buf, 0x2Au);

      v10 = v29;
    }

    objc_autoreleasePoolPop(v19);
    [(HMDDeviceNotificationHandler *)v20 _beginCoalesce:(v9 == 0) & v18];
  }

  else
  {
    v24 = objc_autoreleasePoolPush();
    v25 = self;
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

- (id)_notificationUpdateWithRequestID:(id)a3 allowAdd:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(HMDDeviceNotificationHandler *)self workQueue];
  dispatch_assert_queue_V2(v7);

  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = [(HMDDeviceNotificationHandler *)self destination];
  }

  v9 = v8;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__19997;
  v29 = __Block_byref_object_dispose__19998;
  v30 = 0;
  v10 = [(HMDDeviceNotificationHandler *)self deviceNotificationsByRequestIDs];
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __74__HMDDeviceNotificationHandler__notificationUpdateWithRequestID_allowAdd___block_invoke;
  v22 = &unk_278671088;
  v11 = v9;
  v23 = v11;
  v24 = &v25;
  [v10 enumerateObjectsUsingBlock:&v19];

  v12 = v26[5];
  if (!v12 && v4)
  {
    v13 = [HMDDeviceNotificationUpdate alloc];
    v14 = [(HMDDeviceNotificationUpdate *)v13 initWithRequestID:v11, v19, v20, v21, v22];
    v15 = v26[5];
    v26[5] = v14;

    v16 = [(HMDDeviceNotificationHandler *)self deviceNotificationsByRequestIDs];
    [v16 addObject:v26[5]];

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

- (void)sendCoalescedRemoteNotificationForAccessories:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDDeviceNotificationHandler *)self workQueue];
  dispatch_assert_queue_V2(v5);

  if ([v4 count])
  {
    v6 = [(HMDDeviceNotificationHandler *)self deviceNotificationsByRequestIDs];
    v7 = [v6 array];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __78__HMDDeviceNotificationHandler_sendCoalescedRemoteNotificationForAccessories___block_invoke;
    v17[3] = &unk_278671060;
    v8 = v4;
    v18 = v8;
    v9 = [v7 na_filter:v17];

    if ([v9 count])
    {
      v10 = [v8 na_map:&__block_literal_global_20041];
      v11 = objc_autoreleasePoolPush();
      v12 = self;
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
      [(HMDDeviceNotificationHandler *)v12 _dispatchNotification];
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

- (void)sendNotificationForCharacteristicUpdates:(id)a3 withRequestIdentifier:(id)a4 notificationUpdateIdentifier:(id)a5 completion:(id)a6
{
  v68 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(HMDDeviceNotificationHandler *)self workQueue];
  dispatch_assert_queue_V2(v14);

  if ([v10 count])
  {
    v51 = v13;
    v52 = v12;
    v15 = [(HMDDeviceNotificationHandler *)self _notificationUpdateWithRequestID:v11 allowAdd:1];
    v16 = [(HMDDeviceNotificationHandler *)self home];
    v17 = [v16 primaryResident];
    v18 = [v17 device];
    v19 = [v18 remoteDestinationString];
    v50 = self;
    v20 = [(HMDDeviceNotificationHandler *)self destination];
    v21 = [v19 isEqualToString:v20] ^ 1;

    v22 = (v11 == 0) & v21;
    v56 = +[HMDHAPMetadata getSharedInstance];
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v53 = v10;
    v23 = v10;
    v24 = [v23 countByEnumeratingWithState:&v57 objects:v67 count:16];
    if (v24)
    {
      v25 = v24;
      v48 = v15;
      v49 = v11;
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

          v28 = [*(*(&v57 + 1) + 8 * i) characteristic];
          v29 = [v28 service];
          v30 = [v28 type];
          v31 = [v29 type];
          v32 = [v56 shouldCoalesceCharacteristicNotifications:v30 forService:v31];

          v22 = v32 & v22;
          v33 = [v28 type];
          v34 = [v29 type];
          LOBYTE(v32) = [v56 requiresDeviceUnlock:v33 forService:v34];

          v26 |= v32;
        }

        v25 = [obj countByEnumeratingWithState:&v57 objects:v67 count:16];
      }

      while (v25);

      v15 = v48;
      v13 = v51;
      v12 = v52;
      [v48 updateWithCharacteristicUpdates:obj notificationUpdateID:v52 completion:v51];
      v11 = v49;
      if (v26)
      {
        v35 = objc_autoreleasePoolPush();
        v36 = v50;
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
        v39 = [(HMDDeviceNotificationHandler *)v36 deviceNotificationsByRequestIDs];
        v40 = [v39 indexOfObject:v48];

        if (v40)
        {
          v41 = [(HMDDeviceNotificationHandler *)v36 deviceNotificationsByRequestIDs];
          [v41 removeObject:v48];

          v42 = [(HMDDeviceNotificationHandler *)v36 deviceNotificationsByRequestIDs];
          [v42 insertObject:v48 atIndex:0];
        }

        [(HMDDeviceNotificationHandler *)v36 _dispatchNotification];
        goto LABEL_21;
      }
    }

    else
    {

      v12 = v52;
      [v15 updateWithCharacteristicUpdates:v23 notificationUpdateID:v52 completion:v13];
    }

    [(HMDDeviceNotificationHandler *)v50 _beginCoalesce:v22];
LABEL_21:

    v10 = v53;
    goto LABEL_22;
  }

  v43 = objc_autoreleasePoolPush();
  v44 = self;
  v45 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
  {
    v46 = HMFGetLogIdentifier();
    *buf = 138543618;
    v62 = v46;
    v63 = 2112;
    v64 = v11;
    _os_log_impl(&dword_229538000, v45, OS_LOG_TYPE_INFO, "%{public}@No characteristics updated for: %@, returning", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v43);
  if (v13)
  {
    v15 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
    v13[2](v13, v15);
LABEL_22:
  }

  v47 = *MEMORY[0x277D85DE8];
}

- (HMDDeviceNotificationHandler)initWithDestination:(id)a3 watchDevice:(BOOL)a4 withRequestIdentifier:(id)a5 messageDispatcher:(id)a6 home:(id)a7 dataSource:(id)a8
{
  v14 = a3;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v25.receiver = self;
  v25.super_class = HMDDeviceNotificationHandler;
  v18 = [(HMDDeviceNotificationHandler *)&v25 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_destination, a3);
    objc_storeWeak(&v19->_home, v16);
    v19->_delaySupported = !a4;
    v20 = [MEMORY[0x277CBEB40] orderedSet];
    deviceNotificationsByRequestIDs = v19->_deviceNotificationsByRequestIDs;
    v19->_deviceNotificationsByRequestIDs = v20;

    v22 = [v16 workQueue];
    workQueue = v19->_workQueue;
    v19->_workQueue = v22;

    objc_storeStrong(&v19->_messageDispatcher, a6);
    objc_storeStrong(&v19->_dataSource, a8);
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