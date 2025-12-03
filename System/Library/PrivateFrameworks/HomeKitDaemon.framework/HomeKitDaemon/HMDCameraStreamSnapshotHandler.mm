@interface HMDCameraStreamSnapshotHandler
+ (id)logCategory;
- (BOOL)isStreamAvailable;
- (BOOL)isStreamSetupInProgress;
- (HMDCameraStreamSnapshotHandler)initWithWorkQueue:(id)queue services:(id)services logIdentifier:(id)identifier;
- (void)_callDidGetNewSnapshot:(void *)snapshot;
- (void)addDelegate:(id)delegate;
- (void)addVideoStreamInterface:(id)interface;
- (void)getSnapshot:(unint64_t)snapshot;
- (void)removeDelegate:(id)delegate;
- (void)removeVideoStreamInterface:(id)interface;
- (void)setStreamAvailable:(uint64_t)available;
- (void)setStreamSetupStatusForService:(id)service inProgress:(BOOL)progress;
- (void)streamSnapshotCapture:(id)capture didGetLastSnapshot:(id)snapshot;
@end

@implementation HMDCameraStreamSnapshotHandler

- (void)streamSnapshotCapture:(id)capture didGetLastSnapshot:(id)snapshot
{
  v45 = *MEMORY[0x277D85DE8];
  captureCopy = capture;
  snapshotCopy = snapshot;
  if (self)
  {
    Property = objc_getProperty(self, v7, 24, 1);
  }

  else
  {
    Property = 0;
  }

  if ([Property containsObject:captureCopy])
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543618;
      v42 = v14;
      v43 = 2112;
      v44 = captureCopy;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Removing %@ from retired stream snapshot captures", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    if (self)
    {
      v16 = objc_getProperty(selfCopy, v15, 24, 1);
    }

    else
    {
      v16 = 0;
    }

    [v16 removeObject:captureCopy];
  }

  if (self)
  {
    v17 = objc_getProperty(self, v10, 16, 1);
  }

  else
  {
    v17 = 0;
  }

  if ([v17 containsObject:captureCopy])
  {
    v18 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543618;
      v42 = v21;
      v43 = 2112;
      v44 = captureCopy;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@Removing %@ from stream snapshot captures", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    if (self)
    {
      v23 = objc_getProperty(selfCopy2, v22, 16, 1);
    }

    else
    {
      v23 = 0;
    }

    [v23 removeObject:captureCopy];
  }

  v24 = snapshotCopy;
  if (self)
  {
    v25 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v28 = HMFGetLogIdentifier();
      *buf = 138543362;
      v42 = v28;
      _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_INFO, "%{public}@Calling delegate streamSnapshotHandler:didGetLastSnapshot", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v25);
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v30 = objc_getProperty(selfCopy3, v29, 48, 1);
    v31 = [v30 countByEnumeratingWithState:&v37 objects:buf count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v38;
      do
      {
        v34 = 0;
        do
        {
          if (*v38 != v33)
          {
            objc_enumerationMutation(v30);
          }

          v35 = *(*(&v37 + 1) + 8 * v34);
          if (objc_opt_respondsToSelector())
          {
            [v35 streamSnapshotHandler:selfCopy3 didGetLastSnapshot:{v24, v37}];
          }

          ++v34;
        }

        while (v32 != v34);
        v32 = [v30 countByEnumeratingWithState:&v37 objects:buf count:16];
      }

      while (v32);
    }
  }

  v36 = *MEMORY[0x277D85DE8];
}

- (void)_callDidGetNewSnapshot:(void *)snapshot
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (snapshot)
  {
    Property = objc_getProperty(snapshot, v3, 32, 1);
    dispatch_assert_queue_V2(Property);
    v6 = objc_autoreleasePoolPush();
    snapshotCopy = snapshot;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543362;
      v24 = v9;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Calling delegate streamSnapshotHandler:didGetNewSnapshot", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v11 = objc_getProperty(snapshotCopy, v10, 48, 1);
    v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v19;
      do
      {
        v15 = 0;
        do
        {
          if (*v19 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v18 + 1) + 8 * v15);
          if (objc_opt_respondsToSelector())
          {
            [v16 streamSnapshotHandler:snapshotCopy didGetNewSnapshot:{v4, v18}];
          }

          ++v15;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v13);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)getSnapshot:(unint64_t)snapshot
{
  selfCopy = self;
  if (self)
  {
    self = objc_getProperty(self, a2, 32, 1);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__HMDCameraStreamSnapshotHandler_getSnapshot___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = selfCopy;
  dispatch_async(&self->super.super, block);
}

void __46__HMDCameraStreamSnapshotHandler_getSnapshot___block_invoke(uint64_t a1, const char *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  memset(v9, 0, sizeof(v9));
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 16, 1);
  }

  if ([Property countByEnumeratingWithState:v9 objects:v12 count:16])
  {
    [**(&v9[0] + 1) captureCurrentFrame];
  }

  else
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      *buf = 138543362;
      v11 = v7;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@There is no valid snapshot capture object", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    [(HMDCameraStreamSnapshotHandler *)*(a1 + 32) _callDidGetNewSnapshot:?];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)removeVideoStreamInterface:(id)interface
{
  interfaceCopy = interface;
  if (self)
  {
    Property = objc_getProperty(self, v4, 32, 1);
  }

  else
  {
    Property = 0;
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __61__HMDCameraStreamSnapshotHandler_removeVideoStreamInterface___block_invoke;
  v8[3] = &unk_27868A750;
  v8[4] = self;
  v9 = interfaceCopy;
  v7 = interfaceCopy;
  dispatch_async(Property, v8);
}

void __61__HMDCameraStreamSnapshotHandler_removeVideoStreamInterface___block_invoke(uint64_t a1, const char *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 16, 1);
  }

  v4 = [Property copy];
  v5 = [v4 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v28;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v28 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v27 + 1) + 8 * i);
        v10 = [v9 videoStreamInterface];
        v11 = *(a1 + 40);

        if (v10 == v11)
        {
          v12 = objc_autoreleasePoolPush();
          v13 = *(a1 + 32);
          v14 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            v15 = HMFGetLogIdentifier();
            *buf = 138543618;
            v32 = v15;
            v33 = 2112;
            v34 = v9;
            _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Removing %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v12);
          v17 = *(a1 + 32);
          if (v17)
          {
            v17 = objc_getProperty(v17, v16, 16, 1);
          }

          [v17 removeObject:v9];
          if ([*(a1 + 40) state] == 2)
          {
            v18 = objc_autoreleasePoolPush();
            v19 = *(a1 + 32);
            v20 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
            {
              v21 = HMFGetLogIdentifier();
              *buf = 138543618;
              v32 = v21;
              v33 = 2112;
              v34 = v9;
              _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@Adding %@ to retired-snapshot-captures", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v18);
            v23 = *(a1 + 32);
            if (v23)
            {
              v23 = objc_getProperty(v23, v22, 24, 1);
            }

            [v23 addObject:v9];
            [v9 captureLastFrame];
          }

          goto LABEL_22;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v27 objects:v35 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_22:

  v25 = *(a1 + 32);
  if (v25)
  {
    v25 = objc_getProperty(v25, v24, 16, 1);
  }

  if (![v25 count])
  {
    [(HMDCameraStreamSnapshotHandler *)*(a1 + 32) setStreamAvailable:?];
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)setStreamAvailable:(uint64_t)available
{
  if (available)
  {
    os_unfair_lock_lock_with_options();
    *(available + 12) = a2;

    os_unfair_lock_unlock((available + 8));
  }
}

- (void)addVideoStreamInterface:(id)interface
{
  interfaceCopy = interface;
  if (self)
  {
    Property = objc_getProperty(self, v4, 32, 1);
  }

  else
  {
    Property = 0;
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __58__HMDCameraStreamSnapshotHandler_addVideoStreamInterface___block_invoke;
  v8[3] = &unk_27868A750;
  v8[4] = self;
  v9 = interfaceCopy;
  v7 = interfaceCopy;
  dispatch_async(Property, v8);
}

void __58__HMDCameraStreamSnapshotHandler_addVideoStreamInterface___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 40) sessionID];
    v19 = 138543618;
    v20 = v5;
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Adding video stream interface %@", &v19, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v8 = [HMDCameraStreamSnapshotCapture alloc];
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, v7, 32, 1);
  }

  v11 = Property;
  v13 = *(a1 + 32);
  v12 = *(a1 + 40);
  if (v13)
  {
    v14 = objc_getProperty(*(a1 + 32), v10, 32, 1);
  }

  else
  {
    v14 = 0;
  }

  v15 = [(HMDCameraStreamSnapshotCapture *)v8 initWithWorkQueue:v11 videoStreamInterface:v12 delegate:v13 delegateQueue:v14];

  v17 = *(a1 + 32);
  if (v17)
  {
    v17 = objc_getProperty(v17, v16, 16, 1);
  }

  [v17 addObject:v15];
  [(HMDCameraStreamSnapshotHandler *)*(a1 + 32) setStreamAvailable:?];

  v18 = *MEMORY[0x277D85DE8];
}

- (void)setStreamSetupStatusForService:(id)service inProgress:(BOOL)progress
{
  serviceCopy = service;
  if (self)
  {
    Property = objc_getProperty(self, v6, 32, 1);
  }

  else
  {
    Property = 0;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__HMDCameraStreamSnapshotHandler_setStreamSetupStatusForService_inProgress___block_invoke;
  block[3] = &unk_278688BD0;
  block[4] = self;
  v11 = serviceCopy;
  progressCopy = progress;
  v9 = serviceCopy;
  dispatch_async(Property, block);
}

void __76__HMDCameraStreamSnapshotHandler_setStreamSetupStatusForService_inProgress___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 48)];
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, v2, 40, 1);
  }

  v5 = *(a1 + 40);
  v6 = Property;
  v7 = [v5 instanceID];
  [v6 setObject:v3 forKeyedSubscript:v7];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = *(a1 + 32);
  if (v9)
  {
    v9 = objc_getProperty(v9, v8, 40, 1);
  }

  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (v11)
  {
    v13 = v11;
    LOBYTE(v14) = 0;
    v15 = *v25;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v25 != v15)
        {
          objc_enumerationMutation(v10);
        }

        if (v14)
        {
          v14 = 1;
        }

        else
        {
          v17 = *(*(&v24 + 1) + 8 * i);
          v18 = *(a1 + 32);
          if (v18)
          {
            v18 = objc_getProperty(v18, v12, 40, 1);
          }

          v19 = [v18 objectForKeyedSubscript:{v17, v24}];
          v14 = [v19 BOOLValue];
        }
      }

      v13 = [v10 countByEnumeratingWithState:&v24 objects:v30 count:16];
    }

    while (v13);
  }

  else
  {
    v14 = 0;
  }

  v20 = *(a1 + 32);
  if (v20)
  {
    os_unfair_lock_lock_with_options();
    if (*(v20 + 13) == v14)
    {
      os_unfair_lock_unlock((v20 + 8));
    }

    else
    {
      *(v20 + 13) = v14;
      os_unfair_lock_unlock((v20 + 8));
      v22 = objc_getProperty(v20, v21, 32, 1);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __60__HMDCameraStreamSnapshotHandler_callStreamSetupInProgress___block_invoke;
      block[3] = &unk_278688650;
      block[4] = v20;
      v29 = v14;
      dispatch_async(v22, block);
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

void __60__HMDCameraStreamSnapshotHandler_callStreamSetupInProgress___block_invoke(uint64_t a1, const char *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(a1 + 40);
    Property = objc_getProperty(*(a1 + 32), a2, 32, 1);
    dispatch_assert_queue_V2(Property);
    v5 = objc_autoreleasePoolPush();
    v6 = v2;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543362;
      v22 = v8;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Calling delegate streamSnapshotHandler:didChangeStreamSetupInProgress", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v10 = objc_getProperty(v6, v9, 48, 1);
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

          v15 = *(*(&v17 + 1) + 8 * v14);
          if (objc_opt_respondsToSelector())
          {
            [v15 streamSnapshotHandler:v6 didChangeStreamSetupInProgress:{v3, v17}];
          }

          ++v14;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v17 objects:buf count:16];
      }

      while (v12);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (BOOL)isStreamSetupInProgress
{
  os_unfair_lock_lock_with_options();
  streamSetupInProgress = self->_streamSetupInProgress;
  os_unfair_lock_unlock(&self->_lock);
  return streamSetupInProgress;
}

- (BOOL)isStreamAvailable
{
  os_unfair_lock_lock_with_options();
  streamAvailable = self->_streamAvailable;
  os_unfair_lock_unlock(&self->_lock);
  return streamAvailable;
}

- (void)removeDelegate:(id)delegate
{
  delegateCopy = delegate;
  if (self)
  {
    Property = objc_getProperty(self, v4, 32, 1);
  }

  else
  {
    Property = 0;
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __49__HMDCameraStreamSnapshotHandler_removeDelegate___block_invoke;
  v8[3] = &unk_27868A750;
  v8[4] = self;
  v9 = delegateCopy;
  v7 = delegateCopy;
  dispatch_async(Property, v8);
}

uint64_t __49__HMDCameraStreamSnapshotHandler_removeDelegate___block_invoke(uint64_t a1, const char *a2)
{
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 48, 1);
  }

  v4 = *(a1 + 40);

  return [Property removeObject:v4];
}

- (void)addDelegate:(id)delegate
{
  delegateCopy = delegate;
  if (self)
  {
    Property = objc_getProperty(self, v4, 32, 1);
  }

  else
  {
    Property = 0;
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __46__HMDCameraStreamSnapshotHandler_addDelegate___block_invoke;
  v8[3] = &unk_27868A750;
  v8[4] = self;
  v9 = delegateCopy;
  v7 = delegateCopy;
  dispatch_async(Property, v8);
}

uint64_t __46__HMDCameraStreamSnapshotHandler_addDelegate___block_invoke(uint64_t a1, const char *a2)
{
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 48, 1);
  }

  v4 = *(a1 + 40);

  return [Property addObject:v4];
}

- (HMDCameraStreamSnapshotHandler)initWithWorkQueue:(id)queue services:(id)services logIdentifier:(id)identifier
{
  v40 = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  servicesCopy = services;
  identifierCopy = identifier;
  v38.receiver = self;
  v38.super_class = HMDCameraStreamSnapshotHandler;
  v12 = [(HMDCameraStreamSnapshotHandler *)&v38 init];
  v13 = v12;
  if (v12)
  {
    v32 = identifierCopy;
    v33 = queueCopy;
    v12->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v12->_workQueue, queue);
    v14 = [MEMORY[0x277CBEB58] set];
    streamSnapshotCaptures = v13->_streamSnapshotCaptures;
    v13->_streamSnapshotCaptures = v14;

    v16 = [MEMORY[0x277CBEB58] set];
    retiredStreamSnapshotCaptures = v13->_retiredStreamSnapshotCaptures;
    v13->_retiredStreamSnapshotCaptures = v16;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    serviceInstanceStreamStatus = v13->_serviceInstanceStreamStatus;
    v13->_serviceInstanceStreamStatus = dictionary;

    objc_storeStrong(&v13->_logIdentifier, identifier);
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    delegates = v13->_delegates;
    v13->_delegates = weakObjectsHashTable;

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v22 = servicesCopy;
    v23 = [v22 countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v35;
      v26 = MEMORY[0x277CBEC28];
      do
      {
        v27 = 0;
        do
        {
          if (*v35 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v28 = v13->_serviceInstanceStreamStatus;
          instanceID = [*(*(&v34 + 1) + 8 * v27) instanceID];
          [(NSMutableDictionary *)v28 setObject:v26 forKeyedSubscript:instanceID];

          ++v27;
        }

        while (v24 != v27);
        v24 = [v22 countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v24);
    }

    identifierCopy = v32;
    queueCopy = v33;
  }

  v30 = *MEMORY[0x277D85DE8];
  return v13;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_60078 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_60078, &__block_literal_global_60079);
  }

  v3 = logCategory__hmf_once_v1_60080;

  return v3;
}

void __45__HMDCameraStreamSnapshotHandler_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_60080;
  logCategory__hmf_once_v1_60080 = v1;
}

@end