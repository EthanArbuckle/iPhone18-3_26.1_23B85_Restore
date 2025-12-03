@interface HMDBiomeEventManager
- (HMDBiomeEventManager)init;
- (HMDBiomeEventManager)initWithNotificationCenter:(id)center actionSetStream:(id)stream mediaAccessoryStream:(id)accessoryStream accessoryStream:(id)a6 prunableStreamFactory:(id)factory workQueue:(id)queue;
- (void)_deleteAccessoryEventsPassingTest:(void *)test;
- (void)_deleteActionSetEventsPassingTest:(void *)test;
- (void)_deleteEventFromStartDate:(void *)date toEndDate:stream:passingDeleteEventTest:;
- (void)_deleteMediaAccessoryEventsPassingTest:(void *)test;
- (void)_handleAccessoryRemovedNotification:(id)notification;
- (void)_handleActionSetEmptiedNotification:(id)notification;
- (void)_handleHomeRemovedNotification:(id)notification;
- (void)_handleServiceRemovedNotification:(id)notification;
- (void)_submitAccessoryEvent:(id)event;
- (void)_submitActionSetEvent:(id)event;
- (void)_submitMediaAccessoryEvent:(id)event;
- (void)deleteAllEvents;
- (void)submitAccessoryEvent:(id)event;
- (void)submitActionSetEvent:(id)event;
- (void)submitMediaAccessoryEvent:(id)event;
@end

@implementation HMDBiomeEventManager

- (void)_submitMediaAccessoryEvent:(id)event
{
  eventCopy = event;
  workQueue = [(HMDBiomeEventManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  mediaAccessoryStream = [(HMDBiomeEventManager *)self mediaAccessoryStream];
  source = [mediaAccessoryStream source];
  [source sendEvent:eventCopy];
}

- (void)submitMediaAccessoryEvent:(id)event
{
  eventCopy = event;
  workQueue = [(HMDBiomeEventManager *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__HMDBiomeEventManager_submitMediaAccessoryEvent___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = eventCopy;
  v6 = eventCopy;
  dispatch_async(workQueue, v7);
}

- (void)_submitAccessoryEvent:(id)event
{
  eventCopy = event;
  workQueue = [(HMDBiomeEventManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  hapAccessoryStream = [(HMDBiomeEventManager *)self hapAccessoryStream];
  source = [hapAccessoryStream source];
  [source sendEvent:eventCopy];
}

- (void)submitAccessoryEvent:(id)event
{
  eventCopy = event;
  workQueue = [(HMDBiomeEventManager *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__HMDBiomeEventManager_submitAccessoryEvent___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = eventCopy;
  v6 = eventCopy;
  dispatch_async(workQueue, v7);
}

uint64_t __45__HMDBiomeEventManager_submitAccessoryEvent___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 40) serviceName];
    v7 = [*(a1 + 40) base];
    v8 = [v7 source];
    v9 = *(a1 + 40);
    v12 = 138544130;
    v13 = v5;
    v14 = 2112;
    v15 = v6;
    v16 = 2112;
    v17 = v8;
    v18 = 2112;
    v19 = v9;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Submitting accessory event for %@ with source %@: %@ ", &v12, 0x2Au);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 32) _submitAccessoryEvent:*(a1 + 40)];
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_submitActionSetEvent:(id)event
{
  eventCopy = event;
  workQueue = [(HMDBiomeEventManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  actionSetStream = [(HMDBiomeEventManager *)self actionSetStream];
  source = [actionSetStream source];
  [source sendEvent:eventCopy];
}

- (void)submitActionSetEvent:(id)event
{
  eventCopy = event;
  workQueue = [(HMDBiomeEventManager *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__HMDBiomeEventManager_submitActionSetEvent___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = eventCopy;
  v6 = eventCopy;
  dispatch_async(workQueue, v7);
}

- (void)deleteAllEvents
{
  objc_initWeak(&location, self);
  workQueue = [(HMDBiomeEventManager *)self workQueue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __39__HMDBiomeEventManager_deleteAllEvents__block_invoke;
  v4[3] = &unk_279732FD8;
  objc_copyWeak(&v5, &location);
  dispatch_async(workQueue, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __39__HMDBiomeEventManager_deleteAllEvents__block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v16 = WeakRetained;
    v2 = [WeakRetained workQueue];
    dispatch_assert_queue_V2(v2);

    v3 = objc_autoreleasePoolPush();
    v4 = v16;
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = HMFGetLogIdentifier();
      *buf = 138543362;
      v23 = v6;
      _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Deleting all events in biome", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = [v4 hapAccessoryStream];
    v21[0] = v7;
    v8 = [v4 mediaAccessoryStream];
    v21[1] = v8;
    v9 = [v4 actionSetStream];
    v21[2] = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:3];

    v11 = [v10 countByEnumeratingWithState:&v17 objects:buf count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v18;
      do
      {
        v14 = 0;
        do
        {
          if (*v18 != v13)
          {
            objc_enumerationMutation(v10);
          }

          [HMDBiomeEventManager _deleteEventFromStartDate:v4 toEndDate:*(*(&v17 + 1) + 8 * v14++) stream:&__block_literal_global_31_79831 passingDeleteEventTest:?];
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v17 objects:buf count:16];
      }

      while (v12);
    }

    WeakRetained = v16;
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_deleteEventFromStartDate:(void *)date toEndDate:stream:passingDeleteEventTest:
{
  v53 = *MEMORY[0x277D85DE8];
  v5 = a2;
  dateCopy = date;
  workQueue = [self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138544130;
    v42 = v11;
    v43 = 2112;
    v44 = 0;
    v45 = 2112;
    v46 = 0;
    v47 = 2112;
    v48 = v5;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Deleting matching biome events from: (%@) to: (%@) in stream: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v8);
  distantPast = [MEMORY[0x277CBEAA8] distantPast];
  [distantPast timeIntervalSinceReferenceDate];
  v14 = v13;

  distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
  [distantFuture timeIntervalSinceReferenceDate];
  v17 = v16;

  v18 = MEMORY[0x277CF0E28];
  identifier = [v5 identifier];
  v20 = [v18 streamForStreamIdentifier:identifier];

  if (v20)
  {
    prunableStreamFactory = [selfCopy prunableStreamFactory];
    v22 = prunableStreamFactory[2](prunableStreamFactory, v20);

    v40 = 0;
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __90__HMDBiomeEventManager__deleteEventFromStartDate_toEndDate_stream_passingDeleteEventTest___block_invoke;
    v35[3] = &unk_2797290F0;
    v36 = 0;
    v38 = v14;
    v39 = v17;
    v37 = dateCopy;
    [v22 pruneEventsWithError:&v40 predicateBlock:v35];
    v23 = v40;
    v24 = objc_autoreleasePoolPush();
    v25 = selfCopy;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = HMFGetLogIdentifier();
      v28 = HMFBooleanToString();
      *buf = 138544642;
      v42 = v27;
      v43 = 2112;
      v44 = 0;
      v45 = 2112;
      v46 = 0;
      v47 = 2112;
      v48 = v5;
      v49 = 2112;
      v50 = v28;
      v51 = 2112;
      v52 = v23;
      _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_INFO, "%{public}@Deleted matching biome events from: (%@) to: (%@) in stream: %@ with success: %@ (%@)", buf, 0x3Eu);
    }

    objc_autoreleasePoolPop(v24);
  }

  else
  {
    v29 = objc_autoreleasePoolPush();
    v30 = selfCopy;
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = HMFGetLogIdentifier();
      identifier2 = [v5 identifier];
      *buf = 138543874;
      v42 = v32;
      v43 = 2112;
      v44 = identifier2;
      v45 = 2112;
      v46 = v5;
      _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_ERROR, "%{public}@Unable to find public stream to prune for stream identifier: %@ of stream: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v29);
  }

  v34 = *MEMORY[0x277D85DE8];
}

uint64_t __90__HMDBiomeEventManager__deleteEventFromStartDate_toEndDate_stream_passingDeleteEventTest___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = *(a1 + 32);
  if (v5)
  {
    [v3 timestamp];
    v7 = v6 >= *(a1 + 48);
    v5 = *(a1 + 32);
    if (v5)
    {
      [v4 timestamp];
      LOBYTE(v5) = v8 > *(a1 + 56);
    }
  }

  else
  {
    v7 = 1;
  }

  v9 = 0;
  if (v7 && (v5 & 1) == 0)
  {
    v9 = (*(*(a1 + 40) + 16))();
  }

  return v9;
}

- (void)_handleActionSetEmptiedNotification:(id)notification
{
  v29 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = [userInfo objectForKey:@"HMDActionSetNotificationKey"];

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

  if (v8)
  {
    home = [v8 home];
    if (home)
    {
      workQueue = [(HMDBiomeEventManager *)self workQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __60__HMDBiomeEventManager__handleActionSetEmptiedNotification___block_invoke;
      block[3] = &unk_279734960;
      block[4] = self;
      v21 = v8;
      v22 = home;
      dispatch_async(workQueue, block);
    }

    else
    {
      v15 = objc_autoreleasePoolPush();
      selfCopy = self;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = HMFGetLogIdentifier();
        *buf = 138543874;
        v24 = v18;
        v25 = 2112;
        v26 = notificationCopy;
        v27 = 2112;
        v28 = v8;
        _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "%{public}@No home found for emptied action set notification: %@ for action set: %@", buf, 0x20u);
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
      *buf = 138543618;
      v24 = v14;
      v25 = 2112;
      v26 = notificationCopy;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@No action set found for emptied action set notification: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __60__HMDBiomeEventManager__handleActionSetEmptiedNotification___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) spiClientIdentifier];
  v4 = [*(a1 + 40) uuid];
  v5 = [*(a1 + 48) spiClientIdentifier];
  v6 = [*(a1 + 48) uuid];
  v16 = v3;
  v7 = v4;
  v8 = v5;
  v9 = v6;
  if (v2)
  {
    v10 = [v2 workQueue];
    dispatch_assert_queue_V2(v10);

    v11 = objc_autoreleasePoolPush();
    v12 = v2;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138544386;
      *&buf[4] = v14;
      *&buf[12] = 2112;
      *&buf[14] = v16;
      *&buf[22] = 2112;
      v18 = v7;
      *v19 = 2112;
      *&v19[2] = v8;
      *&v19[10] = 2112;
      *&v19[12] = v9;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Deleting matching biome events for action set with uniqueIdentifier: %@, uuid: %@, in home with uniqueIdentifier: %@ uuid %@", buf, 0x34u);
    }

    objc_autoreleasePoolPop(v11);
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __113__HMDBiomeEventManager__deleteAllEventsForActionSetUniqueIdentifier_actionSetUUID_homeUniqueIdentifier_homeUUID___block_invoke;
    v18 = &unk_279729050;
    *v19 = v16;
    *&v19[8] = v8;
    [(HMDBiomeEventManager *)v12 _deleteActionSetEventsPassingTest:buf];
  }

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t __113__HMDBiomeEventManager__deleteAllEventsForActionSetUniqueIdentifier_actionSetUUID_homeUniqueIdentifier_homeUUID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 actionSetUniqueIdentifier];
  if ([v4 hmf_isEqualToUUIDString:v5])
  {
    v6 = *(a1 + 40);
    v7 = [v3 base];
    v8 = [v7 homeUniqueIdentifier];
    v9 = [v6 hmf_isEqualToUUIDString:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_deleteActionSetEventsPassingTest:(void *)test
{
  v3 = a2;
  workQueue = [test workQueue];
  dispatch_assert_queue_V2(workQueue);

  actionSetStream = [test actionSetStream];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__HMDBiomeEventManager__deleteActionSetEventsPassingTest___block_invoke;
  v7[3] = &unk_279728FB0;
  v6 = v3;
  v8 = v6;
  [HMDBiomeEventManager _deleteEventFromStartDate:test toEndDate:actionSetStream stream:v7 passingDeleteEventTest:?];
}

uint64_t __58__HMDBiomeEventManager__deleteActionSetEventsPassingTest___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 eventBody];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = (*(*(a1 + 32) + 16))();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_handleServiceRemovedNotification:(id)notification
{
  v38 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = [userInfo objectForKey:@"HMDServiceNotificationKey"];

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

  if (v8)
  {
    accessory = [v8 accessory];
    v10 = accessory;
    if (accessory)
    {
      home = [accessory home];
      if (home)
      {
        workQueue = [(HMDBiomeEventManager *)self workQueue];
        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = __58__HMDBiomeEventManager__handleServiceRemovedNotification___block_invoke;
        v26[3] = &unk_279734870;
        v26[4] = self;
        v27 = v8;
        v28 = v10;
        v29 = home;
        dispatch_async(workQueue, v26);
      }

      else
      {
        v21 = objc_autoreleasePoolPush();
        selfCopy = self;
        v23 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v24 = HMFGetLogIdentifier();
          *buf = 138544130;
          v31 = v24;
          v32 = 2112;
          v33 = notificationCopy;
          v34 = 2112;
          v35 = v8;
          v36 = 2112;
          v37 = v10;
          _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_ERROR, "%{public}@No home found for removed service notification: %@ for service: %@ on accessory: %@", buf, 0x2Au);
        }

        objc_autoreleasePoolPop(v21);
      }
    }

    else
    {
      v17 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = HMFGetLogIdentifier();
        *buf = 138543874;
        v31 = v20;
        v32 = 2112;
        v33 = notificationCopy;
        v34 = 2112;
        v35 = v8;
        _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_ERROR, "%{public}@No accessory found for removed service notification: %@ for service: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v17);
    }
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543618;
      v31 = v16;
      v32 = 2112;
      v33 = notificationCopy;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@No service found for removed service notification: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
  }

  v25 = *MEMORY[0x277D85DE8];
}

void __58__HMDBiomeEventManager__handleServiceRemovedNotification___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) spiClientIdentifier];
  v4 = [*(a1 + 40) uuid];
  v5 = [*(a1 + 48) spiClientIdentifier];
  v6 = [*(a1 + 48) uuid];
  v7 = [*(a1 + 56) spiClientIdentifier];
  v8 = [*(a1 + 56) uuid];
  v20 = v3;
  v9 = v4;
  v10 = v5;
  v11 = v6;
  v12 = v7;
  v13 = v8;
  if (v2)
  {
    v14 = [v2 workQueue];
    dispatch_assert_queue_V2(v14);

    v15 = objc_autoreleasePoolPush();
    v16 = v2;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138544898;
      *&buf[4] = v18;
      *&buf[12] = 2112;
      *&buf[14] = v10;
      *&buf[22] = 2112;
      v22 = v11;
      *v23 = 2112;
      *&v23[2] = v20;
      *&v23[10] = 2112;
      *&v23[12] = v9;
      *&v23[20] = 2112;
      *&v23[22] = v12;
      v24 = 2112;
      v25 = v13;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Deleting matching biome events for accessory's (uniqueIdentifier: %@ uuid: %@) service with uniqueIdentifier: %@, uuid: %@, in home with uniqueIdentifier: %@ uuid %@", buf, 0x48u);
    }

    objc_autoreleasePoolPop(v15);
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __167__HMDBiomeEventManager__deleteAllEventsForAccessoryServiceUniqueIdentifier_accessoryServiceUUID_accessoryUniqueIdentifier_accessoryUUID_homeUniqueIdentifier_homeUUID___block_invoke;
    v22 = &unk_2797290C8;
    *v23 = v20;
    *&v23[8] = v10;
    *&v23[16] = v12;
    [(HMDBiomeEventManager *)v16 _deleteAccessoryEventsPassingTest:buf];
  }

  v19 = *MEMORY[0x277D85DE8];
}

uint64_t __167__HMDBiomeEventManager__deleteAllEventsForAccessoryServiceUniqueIdentifier_accessoryServiceUUID_accessoryUniqueIdentifier_accessoryUUID_homeUniqueIdentifier_homeUUID___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = [v3 serviceUniqueIdentifier];
  if ([v4 hmf_isEqualToUUIDString:v5])
  {
    v6 = a1[5];
    v7 = [v3 accessoryUniqueIdentifier];
    if ([v6 hmf_isEqualToUUIDString:v7])
    {
      v8 = a1[6];
      v9 = [v3 base];
      v10 = [v9 homeUniqueIdentifier];
      v11 = [v8 hmf_isEqualToUUIDString:v10];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)_deleteAccessoryEventsPassingTest:(void *)test
{
  v3 = a2;
  workQueue = [test workQueue];
  dispatch_assert_queue_V2(workQueue);

  hapAccessoryStream = [test hapAccessoryStream];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__HMDBiomeEventManager__deleteAccessoryEventsPassingTest___block_invoke;
  v7[3] = &unk_279728FB0;
  v6 = v3;
  v8 = v6;
  [HMDBiomeEventManager _deleteEventFromStartDate:test toEndDate:hapAccessoryStream stream:v7 passingDeleteEventTest:?];
}

uint64_t __58__HMDBiomeEventManager__deleteAccessoryEventsPassingTest___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 eventBody];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = (*(*(a1 + 32) + 16))();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_handleAccessoryRemovedNotification:(id)notification
{
  v31 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = [userInfo objectForKey:@"HMDAccessoryNotificationKey"];

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

  if (v8)
  {
    object = [notificationCopy object];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = object;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

    if (v11)
    {
      workQueue = [(HMDBiomeEventManager *)self workQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __60__HMDBiomeEventManager__handleAccessoryRemovedNotification___block_invoke;
      block[3] = &unk_279734960;
      block[4] = self;
      v23 = v8;
      v24 = v11;
      dispatch_async(workQueue, block);
    }

    else
    {
      v17 = objc_autoreleasePoolPush();
      selfCopy = self;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = HMFGetLogIdentifier();
        *buf = 138543874;
        v26 = v20;
        v27 = 2112;
        v28 = notificationCopy;
        v29 = 2112;
        v30 = v8;
        _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_ERROR, "%{public}@No home found for removed accessory notification: %@ for accessory: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v17);
    }
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543618;
      v26 = v16;
      v27 = 2112;
      v28 = notificationCopy;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@No accessory found for removed accessory notification: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __60__HMDBiomeEventManager__handleAccessoryRemovedNotification___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) spiClientIdentifier];
  v4 = [*(a1 + 40) uuid];
  v5 = [*(a1 + 48) spiClientIdentifier];
  v6 = [*(a1 + 48) uuid];
  v18 = v3;
  v7 = v4;
  v8 = v5;
  v9 = v6;
  if (v2)
  {
    v10 = [v2 workQueue];
    dispatch_assert_queue_V2(v10);

    v11 = objc_autoreleasePoolPush();
    v12 = v2;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138544386;
      *&buf[4] = v14;
      *&buf[12] = 2112;
      *&buf[14] = v18;
      *&buf[22] = 2112;
      v23 = v7;
      *v24 = 2112;
      *&v24[2] = v8;
      *&v24[10] = 2112;
      *&v24[12] = v9;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Deleting matching biome events for accessory with uniqueIdentifier: %@, uuid: %@, in home with uniqueIdentifier: %@ uuid %@", buf, 0x34u);
    }

    objc_autoreleasePoolPop(v11);
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __113__HMDBiomeEventManager__deleteAllEventsForAccessoryUniqueIdentifier_accessoryUUID_homeUniqueIdentifier_homeUUID___block_invoke;
    v23 = &unk_279729078;
    v15 = v18;
    *v24 = v15;
    v16 = v8;
    *&v24[8] = v16;
    [(HMDBiomeEventManager *)v12 _deleteAccessoryEventsPassingTest:buf];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __113__HMDBiomeEventManager__deleteAllEventsForAccessoryUniqueIdentifier_accessoryUUID_homeUniqueIdentifier_homeUUID___block_invoke_2;
    v19[3] = &unk_2797290A0;
    v20 = v15;
    v21 = v16;
    [(HMDBiomeEventManager *)v12 _deleteMediaAccessoryEventsPassingTest:v19];
  }

  v17 = *MEMORY[0x277D85DE8];
}

uint64_t __113__HMDBiomeEventManager__deleteAllEventsForAccessoryUniqueIdentifier_accessoryUUID_homeUniqueIdentifier_homeUUID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 accessoryUniqueIdentifier];
  if ([v4 hmf_isEqualToUUIDString:v5])
  {
    v6 = *(a1 + 40);
    v7 = [v3 base];
    v8 = [v7 homeUniqueIdentifier];
    v9 = [v6 hmf_isEqualToUUIDString:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t __113__HMDBiomeEventManager__deleteAllEventsForAccessoryUniqueIdentifier_accessoryUUID_homeUniqueIdentifier_homeUUID___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 accessoryUniqueIdentifier];
  if ([v4 hmf_isEqualToUUIDString:v5])
  {
    v6 = *(a1 + 40);
    v7 = [v3 base];
    v8 = [v7 homeUniqueIdentifier];
    v9 = [v6 hmf_isEqualToUUIDString:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_deleteMediaAccessoryEventsPassingTest:(void *)test
{
  v3 = a2;
  workQueue = [test workQueue];
  dispatch_assert_queue_V2(workQueue);

  mediaAccessoryStream = [test mediaAccessoryStream];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__HMDBiomeEventManager__deleteMediaAccessoryEventsPassingTest___block_invoke;
  v7[3] = &unk_279728FB0;
  v6 = v3;
  v8 = v6;
  [HMDBiomeEventManager _deleteEventFromStartDate:test toEndDate:mediaAccessoryStream stream:v7 passingDeleteEventTest:?];
}

uint64_t __63__HMDBiomeEventManager__deleteMediaAccessoryEventsPassingTest___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 eventBody];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = (*(*(a1 + 32) + 16))();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_handleHomeRemovedNotification:(id)notification
{
  v21 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = [userInfo objectForKey:@"HMDHomeNotificationKey"];

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

  if (v8)
  {
    workQueue = [(HMDBiomeEventManager *)self workQueue];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __55__HMDBiomeEventManager__handleHomeRemovedNotification___block_invoke;
    v15[3] = &unk_2797359B0;
    v15[4] = self;
    v16 = v8;
    dispatch_async(workQueue, v15);
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v18 = v13;
      v19 = 2112;
      v20 = notificationCopy;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_ERROR, "%{public}@No home found for home accessory notification: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __55__HMDBiomeEventManager__handleHomeRemovedNotification___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) spiClientIdentifier];
  v4 = [*(a1 + 40) uuid];
  v14 = v3;
  v5 = v4;
  if (v2)
  {
    v6 = [v2 workQueue];
    dispatch_assert_queue_V2(v6);

    v7 = objc_autoreleasePoolPush();
    v8 = v2;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543874;
      *&buf[4] = v10;
      *&buf[12] = 2112;
      *&buf[14] = v14;
      *&buf[22] = 2112;
      v20 = v5;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Deleting matching biome events for home with uniqueIdentifier: %@, uuid: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __73__HMDBiomeEventManager__deleteAllEventsForHomeUniqueIdentifier_homeUUID___block_invoke;
    v20 = &unk_279728FD8;
    v11 = v14;
    v21 = v11;
    [(HMDBiomeEventManager *)v8 _deleteActionSetEventsPassingTest:buf];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __73__HMDBiomeEventManager__deleteAllEventsForHomeUniqueIdentifier_homeUUID___block_invoke_2;
    v17[3] = &unk_279729000;
    v12 = v11;
    v18 = v12;
    [(HMDBiomeEventManager *)v8 _deleteAccessoryEventsPassingTest:v17];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __73__HMDBiomeEventManager__deleteAllEventsForHomeUniqueIdentifier_homeUUID___block_invoke_3;
    v15[3] = &unk_279729028;
    v16 = v12;
    [(HMDBiomeEventManager *)v8 _deleteMediaAccessoryEventsPassingTest:v15];
  }

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __73__HMDBiomeEventManager__deleteAllEventsForHomeUniqueIdentifier_homeUUID___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 base];
  v4 = [v3 homeUniqueIdentifier];
  v5 = [v2 hmf_isEqualToUUIDString:v4];

  return v5;
}

uint64_t __73__HMDBiomeEventManager__deleteAllEventsForHomeUniqueIdentifier_homeUUID___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 base];
  v4 = [v3 homeUniqueIdentifier];
  v5 = [v2 hmf_isEqualToUUIDString:v4];

  return v5;
}

uint64_t __73__HMDBiomeEventManager__deleteAllEventsForHomeUniqueIdentifier_homeUUID___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 base];
  v4 = [v3 homeUniqueIdentifier];
  v5 = [v2 hmf_isEqualToUUIDString:v4];

  return v5;
}

- (HMDBiomeEventManager)init
{
  v3 = HMDispatchQueueNameString();
  uTF8String = [v3 UTF8String];
  v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v6 = dispatch_queue_attr_make_with_qos_class(v5, QOS_CLASS_BACKGROUND, 0);
  v7 = dispatch_queue_create(uTF8String, v6);

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v9 = objc_alloc_init(MEMORY[0x277CF1978]);
  v10 = objc_alloc_init(MEMORY[0x277CF1990]);
  v11 = objc_alloc_init(MEMORY[0x277CF1968]);
  v12 = [(HMDBiomeEventManager *)self initWithNotificationCenter:defaultCenter actionSetStream:v9 mediaAccessoryStream:v10 accessoryStream:v11 prunableStreamFactory:&__block_literal_global_79866 workQueue:v7];

  return v12;
}

id __28__HMDBiomeEventManager_init__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [objc_alloc(MEMORY[0x277CF1B30]) initWithPublicStream:a2];

  return v2;
}

- (HMDBiomeEventManager)initWithNotificationCenter:(id)center actionSetStream:(id)stream mediaAccessoryStream:(id)accessoryStream accessoryStream:(id)a6 prunableStreamFactory:(id)factory workQueue:(id)queue
{
  centerCopy = center;
  streamCopy = stream;
  accessoryStreamCopy = accessoryStream;
  v16 = a6;
  factoryCopy = factory;
  queueCopy = queue;
  v30.receiver = self;
  v30.super_class = HMDBiomeEventManager;
  v19 = [(HMDBiomeEventManager *)&v30 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_workQueue, queue);
    objc_storeStrong(&v20->_notificationCenter, center);
    objc_storeStrong(&v20->_actionSetStream, stream);
    objc_storeStrong(&v20->_mediaAccessoryStream, accessoryStream);
    objc_storeStrong(&v20->_hapAccessoryStream, a6);
    v21 = _Block_copy(factoryCopy);
    prunableStreamFactory = v20->_prunableStreamFactory;
    v20->_prunableStreamFactory = v21;

    v23 = [(HMDBiomeEventManager *)v20 notificationCenter:streamCopy];
    [v23 addObserver:v20 selector:sel__handleAccessoryRemovedNotification_ name:@"HMDHomeAccessoryRemovedNotification" object:0];

    notificationCenter = [(HMDBiomeEventManager *)v20 notificationCenter];
    [notificationCenter addObserver:v20 selector:sel__handleActionSetEmptiedNotification_ name:@"HMDHomeActionSetEmptiedNotification" object:0];

    notificationCenter2 = [(HMDBiomeEventManager *)v20 notificationCenter];
    [notificationCenter2 addObserver:v20 selector:sel__handleServiceRemovedNotification_ name:@"HMDHomeServiceRemovedNotification" object:0];

    notificationCenter3 = [(HMDBiomeEventManager *)v20 notificationCenter];
    [notificationCenter3 addObserver:v20 selector:sel__handleHomeRemovedNotification_ name:@"HMDHomeRemovedNotification" object:0];
  }

  return v20;
}

@end