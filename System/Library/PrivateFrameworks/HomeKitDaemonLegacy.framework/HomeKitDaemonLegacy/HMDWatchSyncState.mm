@interface HMDWatchSyncState
+ (BOOL)isNewBetter:(unint64_t)better present:(unint64_t)present;
- (BOOL)removeSync;
- (HMDWatchSync)currentSync;
- (HMDWatchSyncState)initWithDeviceId:(id)id pairedSync:(id)sync;
- (NSString)identifier;
- (id)description;
- (void)addNewSync:(id)sync;
- (void)dealloc;
@end

@implementation HMDWatchSyncState

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  identifier = [(HMDWatchSyncState *)self identifier];
  v5 = [v3 stringWithFormat:@"<%@, %@>", identifier, self->_syncs];

  return v5;
}

- (void)dealloc
{
  pairedSync = [(HMDWatchSyncState *)self pairedSync];

  if (pairedSync)
  {
    v4 = [(NSMutableArray *)self->_syncs count];
    if (v4)
    {
      v5 = v4;
      do
      {
        [(HMDWatchSyncState *)self removeSync];
        --v5;
      }

      while (v5);
    }
  }

  v6.receiver = self;
  v6.super_class = HMDWatchSyncState;
  [(HMDWatchSyncState *)&v6 dealloc];
}

- (BOOL)removeSync
{
  v17 = *MEMORY[0x277D85DE8];
  if ([(NSMutableArray *)self->_syncs count])
  {
    v3 = objc_autoreleasePoolPush();
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = HMFGetLogIdentifier();
      identifier = [(HMDWatchSyncState *)self identifier];
      v7 = [(NSMutableArray *)self->_syncs objectAtIndex:0];
      v11 = 138543874;
      v12 = v5;
      v13 = 2112;
      v14 = identifier;
      v15 = 2112;
      v16 = v7;
      _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@%@ Removing sync option %@, marking sync complete", &v11, 0x20u);
    }

    objc_autoreleasePoolPop(v3);
    [(NSMutableArray *)self->_syncs removeObjectAtIndex:0];
    pairedSync = [(HMDWatchSyncState *)self pairedSync];
    [pairedSync syncComplete];
  }

  result = [(NSMutableArray *)self->_syncs count]!= 0;
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)addNewSync:(id)sync
{
  v47 = *MEMORY[0x277D85DE8];
  syncCopy = sync;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  pairedSync2 = self->_syncs;
  v6 = [(NSMutableArray *)pairedSync2 countByEnumeratingWithState:&v36 objects:v46 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v37;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v37 != v8)
        {
          objc_enumerationMutation(pairedSync2);
        }

        v10 = *(*(&v36 + 1) + 8 * i);
        if (([v10 inProgress] & 1) == 0)
        {
          v17 = +[HMDWatchSyncState isNewBetter:present:](HMDWatchSyncState, "isNewBetter:present:", [syncCopy syncOption], objc_msgSend(v10, "syncOption"));
          v18 = objc_autoreleasePoolPush();
          v19 = HMFGetOSLogHandle();
          v20 = os_log_type_enabled(v19, OS_LOG_TYPE_INFO);
          if (v17)
          {
            if (v20)
            {
              v21 = HMFGetLogIdentifier();
              syncOption = [syncCopy syncOption];
              if (syncOption > 2)
              {
                v23 = @"Unknown watch sync option";
              }

              else
              {
                v23 = off_279723608[syncOption];
              }

              v33 = v23;
              *buf = 138543874;
              v41 = v21;
              v42 = 2112;
              v43 = v10;
              v44 = 2112;
              v45 = v33;
              _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@Upgrading %@ with %@", buf, 0x20u);
            }

            objc_autoreleasePoolPop(v18);
            [v10 setSyncOption:{objc_msgSend(syncCopy, "syncOption")}];
          }

          else
          {
            if (v20)
            {
              v24 = HMFGetLogIdentifier();
              syncOption2 = [syncCopy syncOption];
              if (syncOption2 > 2)
              {
                v26 = @"Unknown watch sync option";
              }

              else
              {
                v26 = off_279723608[syncOption2];
              }

              v34 = v26;
              *buf = 138543874;
              v41 = v24;
              v42 = 2112;
              v43 = v10;
              v44 = 2112;
              v45 = v34;
              _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@Not upgrading %@ with %@", buf, 0x20u);
            }

            objc_autoreleasePoolPop(v18);
          }

          goto LABEL_31;
        }
      }

      v7 = [(NSMutableArray *)pairedSync2 countByEnumeratingWithState:&v36 objects:v46 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = objc_autoreleasePoolPush();
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    identifier = [(HMDWatchSyncState *)self identifier];
    syncOption3 = [syncCopy syncOption];
    if (syncOption3 > 2)
    {
      v16 = @"Unknown watch sync option";
    }

    else
    {
      v16 = off_279723608[syncOption3];
    }

    v27 = v16;
    *buf = 138543874;
    v41 = v13;
    v42 = 2112;
    v43 = identifier;
    v44 = 2112;
    v45 = v27;
    _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@%@ Adding the sync option: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v11);
  [(NSMutableArray *)self->_syncs addObject:syncCopy];
  pairedSync = [(HMDWatchSyncState *)self pairedSync];

  if (pairedSync)
  {
    v29 = objc_autoreleasePoolPush();
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      v31 = HMFGetLogIdentifier();
      identifier2 = [(HMDWatchSyncState *)self identifier];
      *buf = 138543618;
      v41 = v31;
      v42 = 2112;
      v43 = identifier2;
      _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_INFO, "%{public}@%@ Need to sync to watch", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v29);
    pairedSync2 = [(HMDWatchSyncState *)self pairedSync];
    [(NSMutableArray *)pairedSync2 needToSync];
LABEL_31:
  }

  v35 = *MEMORY[0x277D85DE8];
}

- (NSString)identifier
{
  v2 = MEMORY[0x277CCACA8];
  deviceId = [(HMDWatchSyncState *)self deviceId];
  v4 = [v2 stringWithFormat:@"[HMDWatchSyncState: %@]", deviceId];

  return v4;
}

- (HMDWatchSync)currentSync
{
  v3 = [(NSMutableArray *)self->_syncs count];
  if (v3)
  {
    v3 = [(NSMutableArray *)self->_syncs objectAtIndex:0];
  }

  return v3;
}

- (HMDWatchSyncState)initWithDeviceId:(id)id pairedSync:(id)sync
{
  idCopy = id;
  syncCopy = sync;
  v14.receiver = self;
  v14.super_class = HMDWatchSyncState;
  v8 = [(HMDWatchSyncState *)&v14 init];
  if (v8)
  {
    v9 = [idCopy copy];
    deviceId = v8->_deviceId;
    v8->_deviceId = v9;

    array = [MEMORY[0x277CBEB18] array];
    syncs = v8->_syncs;
    v8->_syncs = array;

    objc_storeStrong(&v8->_pairedSync, sync);
  }

  return v8;
}

+ (BOOL)isNewBetter:(unint64_t)better present:(unint64_t)present
{
  v4 = better - 1 < 2;
  if (present)
  {
    v4 = 0;
  }

  if (present == 2)
  {
    return better == 1;
  }

  else
  {
    return v4;
  }
}

@end