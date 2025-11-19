@interface HMDCameraSnapshotFileManager
+ (id)logCategory;
- (HMDCameraSnapshotFileManager)initWithWorkQueue:(id)a3 imageCacheDirectory:(id)a4 logIdentifier:(id)a5 uniqueIdentifier:(id)a6 messageDispatcher:(id)a7;
- (HMDCameraSnapshotFileManager)initWithWorkQueue:(id)a3 imageCacheDirectory:(id)a4 logIdentifier:(id)a5 uniqueIdentifier:(id)a6 messageDispatcher:(id)a7 snapshotSlotManager:(id)a8 notificationCenter:(id)a9;
- (NSDictionary)encodedMostRecentSnapshot;
- (id)_snapshotFileWithSlotIdentifier:(id *)a1;
- (id)createSlotForSnapshotFile:(id)a3 requestMessages:(id)a4 shouldNotifyClients:(BOOL)a5;
- (id)encodedMostRecentSnapshotForMessage:(id)a3;
- (void)_clearSlotForSnapshotFile:(void *)a1;
- (void)_createSlotForSnapshotFile:(void *)a1;
- (void)_notifyClientsOfUpdatedMostRecentSnapshot;
- (void)backboardServicesRelaunched:(id)a3;
- (void)handleFillSnapshotSlot:(id)a3;
- (void)handleProcessStateChange:(id)a3;
- (void)handleReleaseSnapshot:(id)a3;
- (void)registerForMessages;
@end

@implementation HMDCameraSnapshotFileManager

- (void)backboardServicesRelaunched:(id)a3
{
  v3 = self;
  if (self)
  {
    self = objc_getProperty(self, a2, 32, 1);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__HMDCameraSnapshotFileManager_backboardServicesRelaunched___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = v3;
  dispatch_async(&self->super.super, block);
}

void __60__HMDCameraSnapshotFileManager_backboardServicesRelaunched___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v13 = 138543362;
    v14 = v5;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Recreating slot for most recent snapshot file after backboard services relaunch", &v13, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v7 = *(a1 + 32);
  if (v7 && (v8 = objc_getProperty(*(a1 + 32), v6, 72, 1), [(HMDCameraSnapshotFileManager *)v7 _clearSlotForSnapshotFile:v8], (v9 = *(a1 + 32)) != 0))
  {
    Property = objc_getProperty(*(a1 + 32), v6, 72, 1);
    [(HMDCameraSnapshotFileManager *)v9 _createSlotForSnapshotFile:?];
    v11 = *(a1 + 32);
  }

  else
  {
    v11 = 0;
  }

  [(HMDCameraSnapshotFileManager *)v11 _notifyClientsOfUpdatedMostRecentSnapshot];
  v12 = *MEMORY[0x277D85DE8];
}

- (void)_clearSlotForSnapshotFile:(void *)a1
{
  if (a1)
  {
    v8 = a2;
    Property = objc_getProperty(a1, v3, 32, 1);
    dispatch_assert_queue_V2(Property);
    v6 = objc_getProperty(a1, v5, 64, 1);
    v7 = [v8 slotIdentifier];
    [v6 clearSlotWithIdentifier:v7];

    [v8 setFilled:0];
  }
}

- (void)_createSlotForSnapshotFile:(void *)a1
{
  if (a1)
  {
    v3 = a2;
    Property = objc_getProperty(a1, v4, 32, 1);
    dispatch_assert_queue_V2(Property);
    v7 = [objc_getProperty(a1 v6];
    [v3 setSlotIdentifier:v7];
  }
}

- (void)_notifyClientsOfUpdatedMostRecentSnapshot
{
  if (a1)
  {
    Property = objc_getProperty(a1, a2, 32, 1);
    dispatch_assert_queue_V2(Property);
    v11 = [a1 encodedMostRecentSnapshot];
    v4 = objc_alloc(MEMORY[0x277D0F820]);
    v5 = [a1 uniqueIdentifier];
    v6 = [v4 initWithTarget:v5];

    v7 = objc_alloc(MEMORY[0x277D0F848]);
    v8 = [v7 initWithName:*MEMORY[0x277CCF5C0] destination:v6 payload:v11];
    v9 = [[HMDHomeManagerXPCMessageSendPolicy alloc] initWithEntitlements:1 options:513 active:1];
    [v8 setSendPolicy:v9];

    [objc_getProperty(a1 v10];
  }
}

- (void)handleProcessStateChange:(id)a3
{
  v5 = a3;
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
  v8[2] = __57__HMDCameraSnapshotFileManager_handleProcessStateChange___block_invoke;
  v8[3] = &unk_27868A750;
  v9 = v5;
  v10 = self;
  v7 = v5;
  dispatch_async(Property, v8);
}

void __57__HMDCameraSnapshotFileManager_handleProcessStateChange___block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:@"processInfo"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    v6 = [v5 state];
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 40);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [v5 shortDescription];
      if (v6 > 4)
      {
        v12 = @"unknown";
      }

      else
      {
        v12 = off_278680668[v6];
      }

      v13 = v12;
      *buf = 138543874;
      v35 = v10;
      v36 = 2112;
      v37 = v11;
      v38 = 2112;
      v39 = v13;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_DEBUG, "%{public}@Received notification that process info state changed for process %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    if (v6)
    {
      v14 = *(a1 + 40);
      if (v14)
      {
        v14 = v14[3];
      }

      v15 = v14;
      v16 = [v15 objectForKey:v5];

      if (v16)
      {
        v17 = objc_autoreleasePoolPush();
        v18 = *(a1 + 40);
        v19 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v20 = HMFGetLogIdentifier();
          *buf = 138543874;
          v35 = v20;
          v36 = 2112;
          v37 = v5;
          v38 = 2112;
          v39 = v16;
          _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Removing snapshot file associated with non-foreground app %@: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v17);
        v21 = *(a1 + 40);
        if (v21)
        {
          v22 = *(v21 + 24);
        }

        else
        {
          v22 = 0;
        }

        [v22 removeObjectForKey:v5];
      }

      if (v6 == 4)
      {
        v23 = objc_autoreleasePoolPush();
        v24 = *(a1 + 40);
        v25 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          v26 = HMFGetLogIdentifier();
          *buf = 138543618;
          v35 = v26;
          v36 = 2112;
          v37 = v5;
          _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_INFO, "%{public}@Clearing any of the filled snapshot slots for terminated process: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v23);
        v27 = *(a1 + 40);
        if (v27)
        {
          v28 = *(v27 + 16);
        }

        else
        {
          v28 = 0;
        }

        v29 = [v28 objectForKey:v5];
        v30 = *(a1 + 40);
        if (v30)
        {
          v31 = *(v30 + 16);
        }

        else
        {
          v31 = 0;
        }

        [v31 removeObjectForKey:v5];
        v33[0] = MEMORY[0x277D85DD0];
        v33[1] = 3221225472;
        v33[2] = __57__HMDCameraSnapshotFileManager_handleProcessStateChange___block_invoke_20;
        v33[3] = &unk_2786845E8;
        v33[4] = *(a1 + 40);
        [v29 na_each:v33];
      }
    }
  }

  v32 = *MEMORY[0x277D85DE8];
}

void __57__HMDCameraSnapshotFileManager_handleProcessStateChange___block_invoke_20(uint64_t a1, void *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [(HMDCameraSnapshotFileManager *)*(a1 + 32) _snapshotFileWithSlotIdentifier:v3];
  if (v4)
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v5 = *(a1 + 32);
    if (v5)
    {
      v5 = v5[2];
    }

    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v25 objects:v35 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v26;
      while (2)
      {
        v10 = 0;
        do
        {
          if (*v26 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v25 + 1) + 8 * v10);
          v12 = *(a1 + 32);
          if (v12)
          {
            v13 = *(v12 + 16);
          }

          else
          {
            v13 = 0;
          }

          v14 = [v13 objectForKey:{*(*(&v25 + 1) + 8 * v10), v25}];
          if ([v14 containsObject:v3])
          {
            v20 = objc_autoreleasePoolPush();
            v21 = *(a1 + 32);
            v22 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
            {
              v23 = HMFGetLogIdentifier();
              *buf = 138543874;
              v30 = v23;
              v31 = 2112;
              v32 = v3;
              v33 = 2112;
              v34 = v11;
              _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@Cannot clear snapshot slot identifier %@ because is still in use by %@", buf, 0x20u);
            }

            objc_autoreleasePoolPop(v20);
            goto LABEL_22;
          }

          ++v10;
        }

        while (v8 != v10);
        v15 = [v6 countByEnumeratingWithState:&v25 objects:v35 count:16];
        v8 = v15;
        if (v15)
        {
          continue;
        }

        break;
      }
    }

    v16 = objc_autoreleasePoolPush();
    v17 = *(a1 + 32);
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543618;
      v30 = v19;
      v31 = 2112;
      v32 = v4;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Clearing snapshot slot for snapshot %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
    [(HMDCameraSnapshotFileManager *)*(a1 + 32) _clearSlotForSnapshotFile:v4];
  }

LABEL_22:

  v24 = *MEMORY[0x277D85DE8];
}

- (id)_snapshotFileWithSlotIdentifier:(id *)a1
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (a1)
  {
    Property = objc_getProperty(a1, v3, 32, 1);
    dispatch_assert_queue_V2(Property);
    v7 = [objc_getProperty(a1 v6];
    v8 = [v7 isEqualToNumber:v4];

    if (v8)
    {
      v10 = objc_getProperty(a1, v9, 72, 1);
      goto LABEL_15;
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v11 = [a1[3] objectEnumerator];
    v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v22;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v22 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v21 + 1) + 8 * i);
          v17 = [v16 slotIdentifier];
          v18 = [v17 isEqualToNumber:v4];

          if (v18)
          {
            v10 = v16;

            goto LABEL_15;
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }
  }

  v10 = 0;
LABEL_15:

  v19 = *MEMORY[0x277D85DE8];

  return v10;
}

- (NSDictionary)encodedMostRecentSnapshot
{
  v2 = self;
  if (self)
  {
    v3 = objc_getProperty(self, a2, 72, 1);
    if (v3)
    {
      v5 = v3;
      Property = objc_getProperty(v2, v4, 72, 1);
      v2 = encodedSnapshotFile(Property);
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

- (id)encodedMostRecentSnapshotForMessage:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (self)
  {
    Property = objc_getProperty(self, v4, 32, 1);
    dispatch_assert_queue_V2(Property);
    v8 = objc_getProperty(self, v7, 72, 1);
  }

  else
  {
    dispatch_assert_queue_V2(0);
    v8 = 0;
  }

  v9 = v8;
  v10 = [v9 slotIdentifier];

  if (!v10)
  {
    v23 = objc_autoreleasePoolPush();
    v24 = self;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v26 = HMFGetLogIdentifier();
      v27 = [v5 shortDescription];
      v31 = 138543874;
      v32 = v26;
      v33 = 2112;
      v34 = v27;
      v35 = 2112;
      v36 = v9;
      _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_INFO, "%{public}@Not encoding invalid most recent snapshot for message %@: %@", &v31, 0x20u);
    }

    objc_autoreleasePoolPop(v23);
    goto LABEL_14;
  }

  v11 = [v9 dateCaptured];
  [v11 timeIntervalSinceNow];
  v13 = fabs(v12);

  if (v13 > 2.0)
  {
LABEL_14:
    v22 = 0;
    goto LABEL_19;
  }

  v14 = [v5 proxyConnection];
  v15 = [v14 processInfo];

  v16 = objc_autoreleasePoolPush();
  v17 = self;
  v18 = HMFGetOSLogHandle();
  v19 = v18;
  if (v15)
  {
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      v31 = 138543874;
      v32 = v20;
      v33 = 2112;
      v34 = v15;
      v35 = 2112;
      v36 = v9;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Associating process info %@ with most recent snapshot file: %@", &v31, 0x20u);
    }

    objc_autoreleasePoolPop(v16);
    if (self)
    {
      snapshotFilesByAssociatedProcessInfo = v17->_snapshotFilesByAssociatedProcessInfo;
    }

    else
    {
      snapshotFilesByAssociatedProcessInfo = 0;
    }

    [(NSMapTable *)snapshotFilesByAssociatedProcessInfo setObject:v9 forKey:v15];
    v22 = encodedSnapshotFile(v9);
  }

  else
  {
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v28 = HMFGetLogIdentifier();
      v31 = 138543618;
      v32 = v28;
      v33 = 2112;
      v34 = v5;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@Cannot encode most recent snapshot for message without process info: %@", &v31, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
    v22 = 0;
  }

LABEL_19:
  v29 = *MEMORY[0x277D85DE8];

  return v22;
}

- (id)createSlotForSnapshotFile:(id)a3 requestMessages:(id)a4 shouldNotifyClients:(BOOL)a5
{
  v71 = a5;
  v90 = *MEMORY[0x277D85DE8];
  v74 = a3;
  v8 = a4;
  if (self)
  {
    Property = objc_getProperty(self, v7, 32, 1);
  }

  else
  {
    Property = 0;
  }

  dispatch_assert_queue_V2(Property);
  v11 = [v74 filePath];
  if (self)
  {
    v12 = objc_getProperty(self, v10, 32, 1);
    dispatch_assert_queue_V2(v12);
    v14 = [objc_getProperty(self v13];
    v15 = [v14 isEqualToString:v11];

    if (v15)
    {
      v17 = objc_getProperty(self, v16, 72, 1);
      goto LABEL_17;
    }

    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v18 = [(NSMapTable *)self->_snapshotFilesByAssociatedProcessInfo objectEnumerator];
    v19 = [v18 countByEnumeratingWithState:&v79 objects:buf count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v80;
      while (2)
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v80 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v79 + 1) + 8 * i);
          v24 = [v23 filePath];
          v25 = [v24 isEqualToString:v11];

          if (v25)
          {
            v17 = v23;

            goto LABEL_17;
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v79 objects:buf count:16];
        if (v20)
        {
          continue;
        }

        break;
      }
    }
  }

  v17 = 0;
LABEL_17:

  v72 = v17;
  if (v17)
  {
    v26 = objc_autoreleasePoolPush();
    v27 = self;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      v29 = HMFGetLogIdentifier();
      *buf = 138543618;
      v85 = v29;
      v86 = 2112;
      v87 = v17;
      _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_INFO, "%{public}@Skipping slot creation because snapshot file exists with same path: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v26);
    [v74 setUnmanaged:1];
    v30 = v17;

    v74 = v30;
  }

  else
  {
    [(HMDCameraSnapshotFileManager *)self _createSlotForSnapshotFile:v74];
  }

  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  obj = v8;
  v31 = [obj countByEnumeratingWithState:&v75 objects:v83 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v76;
    do
    {
      v34 = 0;
      do
      {
        if (*v76 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v35 = *(*(&v75 + 1) + 8 * v34);
        v36 = [v35 proxyConnection];
        v37 = [v36 processInfo];

        v38 = objc_autoreleasePoolPush();
        v39 = self;
        v40 = HMFGetOSLogHandle();
        v41 = v40;
        if (v37)
        {
          if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
          {
            v42 = HMFGetLogIdentifier();
            *buf = 138543874;
            v85 = v42;
            v86 = 2112;
            v87 = v37;
            v88 = 2112;
            v89 = v74;
            _os_log_impl(&dword_229538000, v41, OS_LOG_TYPE_INFO, "%{public}@Associating process info %@ with snapshot file: %@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v38);
          if (self)
          {
            snapshotFilesByAssociatedProcessInfo = v39->_snapshotFilesByAssociatedProcessInfo;
          }

          else
          {
            snapshotFilesByAssociatedProcessInfo = 0;
          }

          [(NSMapTable *)snapshotFilesByAssociatedProcessInfo setObject:v74 forKey:v37];
        }

        else
        {
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
          {
            v44 = HMFGetLogIdentifier();
            *buf = 138543618;
            v85 = v44;
            v86 = 2112;
            v87 = v35;
            _os_log_impl(&dword_229538000, v41, OS_LOG_TYPE_DEFAULT, "%{public}@Cannot associate snapshot file for message without process info: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v38);
        }

        ++v34;
      }

      while (v32 != v34);
      v45 = [obj countByEnumeratingWithState:&v75 objects:v83 count:16];
      v32 = v45;
    }

    while (v45);
  }

  v47 = v74;
  if (self)
  {
    v48 = objc_getProperty(self, v46, 32, 1);
    dispatch_assert_queue_V2(v48);
    v49 = v47;
    v51 = objc_getProperty(self, v50, 32, 1);
    dispatch_assert_queue_V2(v51);
    v52 = [v49 slotIdentifier];

    if (v52)
    {
      if (objc_getProperty(self, v53, 72, 1))
      {
        v55 = [objc_getProperty(self v54];
        v56 = [v49 dateCaptured];
        v57 = [v55 compare:v56];

        if (v57 != -1)
        {
          goto LABEL_53;
        }
      }

      else
      {
      }

      v62 = objc_autoreleasePoolPush();
      v63 = self;
      v64 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
      {
        v65 = HMFGetLogIdentifier();
        *buf = 138543618;
        v85 = v65;
        v86 = 2112;
        v87 = v49;
        _os_log_impl(&dword_229538000, v64, OS_LOG_TYPE_INFO, "%{public}@Updating most recent snapshot to %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v62);
      objc_setProperty_atomic(v63, v66, v49, 72);
      if (v71)
      {
        [(HMDCameraSnapshotFileManager *)v63 _notifyClientsOfUpdatedMostRecentSnapshot];
      }
    }

    else
    {
      v58 = objc_autoreleasePoolPush();
      v59 = self;
      v60 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
      {
        v61 = HMFGetLogIdentifier();
        *buf = 138543618;
        v85 = v61;
        v86 = 2112;
        v87 = v49;
        _os_log_impl(&dword_229538000, v60, OS_LOG_TYPE_INFO, "%{public}@Not updating most recent snapshot with invalid snaphot: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v58);
    }
  }

LABEL_53:

  v68 = encodedSnapshotFile(v47);

  v69 = *MEMORY[0x277D85DE8];

  return v68;
}

- (void)handleReleaseSnapshot:(id)a3
{
  v52 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (self)
  {
    Property = objc_getProperty(self, v4, 32, 1);
  }

  else
  {
    Property = 0;
  }

  dispatch_assert_queue_V2(Property);
  v7 = [v5 numberForKey:*MEMORY[0x277CD1060]];
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  v11 = v10;
  v42 = v7;
  if (v7)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543618;
      v49 = v12;
      v50 = 2112;
      v51 = v7;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Releasing snapshot file with slot identifier: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v13 = &OBJC_IVAR___HMDMediaAccessoryAdvertisement__lock;
    v40 = v5;
    if (self)
    {
      snapshotFilesByAssociatedProcessInfo = v9->_snapshotFilesByAssociatedProcessInfo;
    }

    else
    {
      snapshotFilesByAssociatedProcessInfo = 0;
    }

    v15 = [(NSMapTable *)snapshotFilesByAssociatedProcessInfo copy];
    v16 = [v15 countByEnumeratingWithState:&v43 objects:v47 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v44;
      obj = v15;
      while (2)
      {
        v19 = 0;
        do
        {
          if (*v44 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v43 + 1) + 8 * v19);
          v21 = v13;
          if (self)
          {
            v22 = *(&v9->super.super.isa + v13[244]);
          }

          else
          {
            v22 = 0;
          }

          v23 = v22;
          v24 = [v23 objectForKey:v20];

          v25 = [v24 slotIdentifier];
          v26 = [v25 isEqualToNumber:v42];

          if (v26)
          {
            v33 = objc_autoreleasePoolPush();
            v34 = v9;
            v35 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
            {
              v36 = HMFGetLogIdentifier();
              *buf = 138543618;
              v49 = v36;
              v50 = 2112;
              v51 = v24;
              _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_INFO, "%{public}@Releasing snapshot file: %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v33);
            v5 = v40;
            v32 = obj;
            if (self)
            {
              v37 = *(&v34->super.super.isa + v21[244]);
            }

            else
            {
              v37 = 0;
            }

            [v37 removeObjectForKey:v20];
            [v40 respondWithSuccess];

            goto LABEL_32;
          }

          ++v19;
          v13 = v21;
        }

        while (v17 != v19);
        v15 = obj;
        v27 = [obj countByEnumeratingWithState:&v43 objects:v47 count:16];
        v17 = v27;
        if (v27)
        {
          continue;
        }

        break;
      }
    }

    v28 = objc_autoreleasePoolPush();
    v29 = v9;
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = HMFGetLogIdentifier();
      *buf = 138543618;
      v49 = v31;
      v50 = 2112;
      v51 = v42;
      _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_DEFAULT, "%{public}@Could not find snapshot file to release with slot identifier: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v28);
    v32 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    v5 = v40;
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v38 = HMFGetLogIdentifier();
      *buf = 138543618;
      v49 = v38;
      v50 = 2112;
      v51 = v5;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Cannot find slot identifier in release snapshot message payload: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v32 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
  }

  [v5 respondWithError:v32];
LABEL_32:

  v39 = *MEMORY[0x277D85DE8];
}

- (void)handleFillSnapshotSlot:(id)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (self)
  {
    Property = objc_getProperty(self, v4, 32, 1);
  }

  else
  {
    Property = 0;
  }

  dispatch_assert_queue_V2(Property);
  v7 = [v5 numberForKey:*MEMORY[0x277CD1060]];
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v38 = v11;
    v39 = 2112;
    v40 = v7;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Filling snapshot with slot identifier %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [v5 proxyConnection];
  v13 = [v12 processInfo];

  if (v13)
  {
    if (self)
    {
      filledSnapshotSlotIdentifiersByProcess = v9->_filledSnapshotSlotIdentifiersByProcess;
    }

    else
    {
      filledSnapshotSlotIdentifiersByProcess = 0;
    }

    v15 = [(NSMapTable *)filledSnapshotSlotIdentifiersByProcess objectForKey:v13];
    if (!v15)
    {
      v15 = [MEMORY[0x277CBEB58] set];
      if (self)
      {
        v16 = v9->_filledSnapshotSlotIdentifiersByProcess;
      }

      else
      {
        v16 = 0;
      }

      [(NSMapTable *)v16 setObject:v15 forKey:v13];
    }

    [v15 addObject:v7];
    v17 = [(HMDCameraSnapshotFileManager *)&v9->super.super.isa _snapshotFileWithSlotIdentifier:v7];
    v18 = v17;
    if (v17)
    {
      v36 = 0;
      v20 = v17;
      if (self)
      {
        LOBYTE(self) = 1;
        v21 = objc_getProperty(v9, v19, 32, 1);
        dispatch_assert_queue_V2(v21);
        if (([v20 isFilled] & 1) == 0)
        {
          v23 = objc_getProperty(v9, v22, 64, 1);
          v24 = [v20 slotIdentifier];
          v25 = [v20 filePath];
          self = [v23 fillSlotWithIdentifier:v24 filePath:v25 error:&v36];

          [v20 setFilled:self];
        }
      }

      v26 = v36;
      if (self)
      {
        [v5 respondWithSuccess];
LABEL_25:

        goto LABEL_26;
      }
    }

    else
    {
      v31 = objc_autoreleasePoolPush();
      v32 = v9;
      v33 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v34 = HMFGetLogIdentifier();
        *buf = 138543618;
        v38 = v34;
        v39 = 2112;
        v40 = v7;
        _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_ERROR, "%{public}@Cannot fill snapshot with slot identifier %@ because it no longer exist", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v31);
      v26 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    }

    [v5 respondWithError:v26];
    goto LABEL_25;
  }

  v27 = objc_autoreleasePoolPush();
  v28 = v9;
  v29 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v30 = HMFGetLogIdentifier();
    *buf = 138543618;
    v38 = v30;
    v39 = 2112;
    v40 = v5;
    _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_DEFAULT, "%{public}@Cannot fill snapshot for message without process info: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v27);
  v15 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
  [v5 respondWithError:v15];
LABEL_26:

  v35 = *MEMORY[0x277D85DE8];
}

- (void)registerForMessages
{
  v2 = self;
  v103 = *MEMORY[0x277D85DE8];
  if (self)
  {
    Property = objc_getProperty(self, a2, 32, 1);
    dispatch_assert_queue_V2(Property);
    v5 = objc_getProperty(v2, v4, 56, 1);
  }

  else
  {
    dispatch_assert_queue_V2(0);
    v5 = 0;
  }

  [v5 addObserver:v2 selector:sel_handleProcessStateChange_ name:HMDProcessMonitorProcessStateDidChangeNotification object:0];
  if (v2)
  {
    v7 = objc_getProperty(v2, v6, 56, 1);
    v9 = objc_getProperty(v2, v8, 64, 1);
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  [v7 addObserver:v2 selector:sel_backboardServicesRelaunched_ name:@"HMDBackboardServicesRelaunchNotification" object:v9];

  if (!v2)
  {
    goto LABEL_51;
  }

  v11 = objc_getProperty(v2, v10, 32, 1);
  dispatch_assert_queue_V2(v11);
  v13 = objc_getProperty(v2, v12, 32, 1);
  dispatch_assert_queue_V2(v13);
  v14 = [MEMORY[0x277CCAA00] defaultManager];
  v16 = [v14 contentsOfDirectoryAtPath:objc_getProperty(v2 error:{v15, 48, 1), 0}];

  v76 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v16, "count")}];
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  obj = v16;
  v17 = [obj countByEnumeratingWithState:&v85 objects:v99 count:16];
  if (!v17)
  {
    goto LABEL_22;
  }

  v18 = v17;
  v19 = *v86;
  v77 = v2;
  do
  {
    for (i = 0; i != v18; ++i)
    {
      if (*v86 != v19)
      {
        objc_enumerationMutation(obj);
      }

      v21 = *(*(&v85 + 1) + 8 * i);
      v22 = [MEMORY[0x277CBEAA8] hmd_dateFromSnapshotFileName:v21];
      v23 = v22;
      if (!v22)
      {
        v25 = objc_autoreleasePoolPush();
        v26 = v2;
        v27 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          v28 = HMFGetLogIdentifier();
          *buf = 138543618;
          v96 = v28;
          v97 = 2112;
          v98 = v21;
          v29 = v27;
          v30 = "%{public}@Ignoring snapshot file with malformed date string: %@";
LABEL_17:
          _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_DEFAULT, v30, buf, 0x16u);

          v2 = v77;
        }

LABEL_18:

        objc_autoreleasePoolPop(v25);
        goto LABEL_20;
      }

      [v22 timeIntervalSinceNow];
      if (v24 > 86400.0)
      {
        v25 = objc_autoreleasePoolPush();
        v26 = v2;
        v27 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          v28 = HMFGetLogIdentifier();
          *buf = 138543618;
          v96 = v28;
          v97 = 2112;
          v98 = v21;
          v29 = v27;
          v30 = "%{public}@Ignoring snapshot file with date in the future: %@";
          goto LABEL_17;
        }

        goto LABEL_18;
      }

      [v76 setObject:v23 forKeyedSubscript:v21];
LABEL_20:
    }

    v18 = [obj countByEnumeratingWithState:&v85 objects:v99 count:16];
  }

  while (v18);
LABEL_22:

  v31 = objc_autoreleasePoolPush();
  v32 = v2;
  v33 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
  {
    v34 = HMFGetLogIdentifier();
    *buf = 138543618;
    v96 = v34;
    v97 = 2112;
    v98 = v76;
    _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_INFO, "%{public}@Built the snapshot file dictionary: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v31);
  v35 = [v76 allValues];
  v36 = [v35 sortedArrayUsingSelector:sel_compare_];

  v37 = [v36 lastObject];
  v38 = [v37 hmd_snapshotFileName];

  v78 = v32;
  if (v38)
  {
    v75 = v36;
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v39 = obj;
    v40 = [v39 countByEnumeratingWithState:&v81 objects:buf count:16];
    if (v40)
    {
      v41 = v40;
      v42 = *v82;
      do
      {
        for (j = 0; j != v41; ++j)
        {
          if (*v82 != v42)
          {
            objc_enumerationMutation(v39);
          }

          v44 = *(*(&v81 + 1) + 8 * j);
          if (([v44 isEqualToString:v38] & 1) == 0)
          {
            v46 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@", objc_getProperty(v32, v45, 48, 1), v44];
            v47 = objc_autoreleasePoolPush();
            v48 = v32;
            v49 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
            {
              v50 = HMFGetLogIdentifier();
              *v89 = 138543618;
              v90 = v50;
              v91 = 2112;
              v92 = v46;
              _os_log_impl(&dword_229538000, v49, OS_LOG_TYPE_INFO, "%{public}@Removing obsolete snapshot at path: %@", v89, 0x16u);

              v32 = v78;
            }

            objc_autoreleasePoolPop(v47);
            v51 = [MEMORY[0x277CCAA00] defaultManager];
            [v51 removeItemAtPath:v46 error:0];
          }
        }

        v41 = [v39 countByEnumeratingWithState:&v81 objects:buf count:16];
      }

      while (v41);
    }

    v53 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@", objc_getProperty(v32, v52, 48, 1), v38];
    v54 = [HMDCameraSnapshotFile alloc];
    v36 = v75;
    v55 = [v75 lastObject];
    v80 = 0;
    v56 = [(HMDCameraSnapshotFile *)v54 initWithFilePath:v53 dateCaptured:v55 error:&v80];
    v57 = v80;

    v32 = v78;
    v58 = objc_autoreleasePoolPush();
    v59 = v78;
    v60 = HMFGetOSLogHandle();
    v61 = v60;
    if (v56)
    {
      if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
      {
        v62 = HMFGetLogIdentifier();
        *v89 = 138543618;
        v90 = v62;
        v91 = 2112;
        v92 = v56;
        _os_log_impl(&dword_229538000, v61, OS_LOG_TYPE_INFO, "%{public}@Found and created the most recent snapshot file: %@", v89, 0x16u);
      }

      objc_autoreleasePoolPop(v58);
      v63 = v56;
    }

    else
    {
      if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
      {
        v64 = HMFGetLogIdentifier();
        *v89 = 138543874;
        v90 = v64;
        v91 = 2112;
        v92 = v53;
        v93 = 2112;
        v94 = v57;
        _os_log_impl(&dword_229538000, v61, OS_LOG_TYPE_ERROR, "%{public}@Failed to create most recent snapshot file with path %@: %@", v89, 0x20u);
      }

      objc_autoreleasePoolPop(v58);
    }
  }

  else
  {
    v56 = 0;
  }

  if (v56)
  {
    v65 = [(HMDCameraSnapshotFileManager *)v32 createSlotForSnapshotFile:v56 requestMessages:MEMORY[0x277CBEBF8] shouldNotifyClients:0];
    v66 = objc_autoreleasePoolPush();
    v67 = v32;
    v68 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v68, OS_LOG_TYPE_INFO))
    {
      v69 = HMFGetLogIdentifier();
      v71 = objc_getProperty(v67, v70, 72, 1);
      *v99 = 138543618;
      v100 = v69;
      v101 = 2112;
      v102 = v71;
      _os_log_impl(&dword_229538000, v68, OS_LOG_TYPE_INFO, "%{public}@Created the most recent snapshot %@", v99, 0x16u);
    }
  }

  else
  {
    v66 = objc_autoreleasePoolPush();
    v72 = v32;
    v68 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v68, OS_LOG_TYPE_INFO))
    {
      v73 = HMFGetLogIdentifier();
      *v99 = 138543362;
      v100 = v73;
      _os_log_impl(&dword_229538000, v68, OS_LOG_TYPE_INFO, "%{public}@No recent snapshot found", v99, 0xCu);
    }
  }

  objc_autoreleasePoolPop(v66);
LABEL_51:
  v74 = *MEMORY[0x277D85DE8];
}

- (HMDCameraSnapshotFileManager)initWithWorkQueue:(id)a3 imageCacheDirectory:(id)a4 logIdentifier:(id)a5 uniqueIdentifier:(id)a6 messageDispatcher:(id)a7 snapshotSlotManager:(id)a8 notificationCenter:(id)a9
{
  v35 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v34 = a7;
  v19 = a8;
  v20 = a9;
  v36.receiver = self;
  v36.super_class = HMDCameraSnapshotFileManager;
  v21 = [(HMDCameraSnapshotFileManager *)&v36 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_workQueue, a3);
    v23 = [v17 copy];
    logIdentifier = v22->_logIdentifier;
    v22->_logIdentifier = v23;

    v25 = [v16 copy];
    imageCacheDirectory = v22->_imageCacheDirectory;
    v22->_imageCacheDirectory = v25;

    v27 = [v18 copy];
    uniqueIdentifier = v22->_uniqueIdentifier;
    v22->_uniqueIdentifier = v27;

    objc_storeStrong(&v22->_messageDispatcher, a7);
    objc_storeStrong(&v22->_snapshotSlotManager, a8);
    objc_storeStrong(&v22->_notificationCenter, a9);
    v29 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    snapshotFilesByAssociatedProcessInfo = v22->_snapshotFilesByAssociatedProcessInfo;
    v22->_snapshotFilesByAssociatedProcessInfo = v29;

    v31 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    filledSnapshotSlotIdentifiersByProcess = v22->_filledSnapshotSlotIdentifiersByProcess;
    v22->_filledSnapshotSlotIdentifiersByProcess = v31;
  }

  return v22;
}

- (HMDCameraSnapshotFileManager)initWithWorkQueue:(id)a3 imageCacheDirectory:(id)a4 logIdentifier:(id)a5 uniqueIdentifier:(id)a6 messageDispatcher:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = +[HMDCameraSnapshotSlotManager sharedManager];
  v18 = [MEMORY[0x277CCAB98] defaultCenter];
  v19 = [(HMDCameraSnapshotFileManager *)self initWithWorkQueue:v16 imageCacheDirectory:v15 logIdentifier:v14 uniqueIdentifier:v13 messageDispatcher:v12 snapshotSlotManager:v17 notificationCenter:v18];

  return v19;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t30_246120 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t30_246120, &__block_literal_global_246121);
  }

  v3 = logCategory__hmf_once_v31_246122;

  return v3;
}

void __43__HMDCameraSnapshotFileManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v31_246122;
  logCategory__hmf_once_v31_246122 = v1;
}

@end