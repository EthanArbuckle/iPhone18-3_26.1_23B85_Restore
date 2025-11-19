@interface HMDWatchSyncState
+ (BOOL)isNewBetter:(unint64_t)a3 present:(unint64_t)a4;
- (BOOL)removeSync;
- (HMDWatchSync)currentSync;
- (HMDWatchSyncState)initWithDeviceId:(id)a3 pairedSync:(id)a4;
- (NSString)identifier;
- (id)description;
- (void)addNewSync:(id)a3;
- (void)dealloc;
@end

@implementation HMDWatchSyncState

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HMDWatchSyncState *)self identifier];
  v5 = [v3 stringWithFormat:@"<%@, %@>", v4, self->_syncs];

  return v5;
}

- (void)dealloc
{
  v3 = [(HMDWatchSyncState *)self pairedSync];

  if (v3)
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
      v6 = [(HMDWatchSyncState *)self identifier];
      v7 = [(NSMutableArray *)self->_syncs objectAtIndex:0];
      v11 = 138543874;
      v12 = v5;
      v13 = 2112;
      v14 = v6;
      v15 = 2112;
      v16 = v7;
      _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@%@ Removing sync option %@, marking sync complete", &v11, 0x20u);
    }

    objc_autoreleasePoolPop(v3);
    [(NSMutableArray *)self->_syncs removeObjectAtIndex:0];
    v8 = [(HMDWatchSyncState *)self pairedSync];
    [v8 syncComplete];
  }

  result = [(NSMutableArray *)self->_syncs count]!= 0;
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)addNewSync:(id)a3
{
  v47 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v5 = self->_syncs;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v36 objects:v46 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v36 + 1) + 8 * i);
        if (([v10 inProgress] & 1) == 0)
        {
          v17 = +[HMDWatchSyncState isNewBetter:present:](HMDWatchSyncState, "isNewBetter:present:", [v4 syncOption], objc_msgSend(v10, "syncOption"));
          v18 = objc_autoreleasePoolPush();
          v19 = HMFGetOSLogHandle();
          v20 = os_log_type_enabled(v19, OS_LOG_TYPE_INFO);
          if (v17)
          {
            if (v20)
            {
              v21 = HMFGetLogIdentifier();
              v22 = [v4 syncOption];
              if (v22 > 2)
              {
                v23 = @"Unknown watch sync option";
              }

              else
              {
                v23 = off_279723608[v22];
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
            [v10 setSyncOption:{objc_msgSend(v4, "syncOption")}];
          }

          else
          {
            if (v20)
            {
              v24 = HMFGetLogIdentifier();
              v25 = [v4 syncOption];
              if (v25 > 2)
              {
                v26 = @"Unknown watch sync option";
              }

              else
              {
                v26 = off_279723608[v25];
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

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v36 objects:v46 count:16];
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
    v14 = [(HMDWatchSyncState *)self identifier];
    v15 = [v4 syncOption];
    if (v15 > 2)
    {
      v16 = @"Unknown watch sync option";
    }

    else
    {
      v16 = off_279723608[v15];
    }

    v27 = v16;
    *buf = 138543874;
    v41 = v13;
    v42 = 2112;
    v43 = v14;
    v44 = 2112;
    v45 = v27;
    _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@%@ Adding the sync option: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v11);
  [(NSMutableArray *)self->_syncs addObject:v4];
  v28 = [(HMDWatchSyncState *)self pairedSync];

  if (v28)
  {
    v29 = objc_autoreleasePoolPush();
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      v31 = HMFGetLogIdentifier();
      v32 = [(HMDWatchSyncState *)self identifier];
      *buf = 138543618;
      v41 = v31;
      v42 = 2112;
      v43 = v32;
      _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_INFO, "%{public}@%@ Need to sync to watch", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v29);
    v5 = [(HMDWatchSyncState *)self pairedSync];
    [(NSMutableArray *)v5 needToSync];
LABEL_31:
  }

  v35 = *MEMORY[0x277D85DE8];
}

- (NSString)identifier
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(HMDWatchSyncState *)self deviceId];
  v4 = [v2 stringWithFormat:@"[HMDWatchSyncState: %@]", v3];

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

- (HMDWatchSyncState)initWithDeviceId:(id)a3 pairedSync:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = HMDWatchSyncState;
  v8 = [(HMDWatchSyncState *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    deviceId = v8->_deviceId;
    v8->_deviceId = v9;

    v11 = [MEMORY[0x277CBEB18] array];
    syncs = v8->_syncs;
    v8->_syncs = v11;

    objc_storeStrong(&v8->_pairedSync, a4);
  }

  return v8;
}

+ (BOOL)isNewBetter:(unint64_t)a3 present:(unint64_t)a4
{
  v4 = a3 - 1 < 2;
  if (a4)
  {
    v4 = 0;
  }

  if (a4 == 2)
  {
    return a3 == 1;
  }

  else
  {
    return v4;
  }
}

@end