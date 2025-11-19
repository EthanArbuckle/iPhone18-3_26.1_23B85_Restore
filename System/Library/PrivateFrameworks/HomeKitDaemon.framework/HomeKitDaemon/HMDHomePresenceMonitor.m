@interface HMDHomePresenceMonitor
+ (id)interestingServiceTypeToCharacteristicTypesMap;
+ (id)logCategory;
- (BOOL)_setLocalActivityTimestampForUserUUID:(id)a3 timestamp:(id)a4;
- (BOOL)_shouldWeUpdateWorkingStoreAfterUpdatingUserPresence:(id)a3 withNewestLocalActivityTimeStamp:(id)a4;
- (BOOL)isUserAtHome:(id)a3;
- (HMDHomePresence)currentHomePresence;
- (HMDHomePresenceMonitor)init;
- (HMDHomePresenceMonitor)initWithCoder:(id)a3;
- (HMDHomePresenceUpdate)homePresenceUpdate;
- (NSDictionary)presenceMap;
- (id)getLastLocalActivityTimeStampForUserUUID:(id)a3;
- (void)_addUser:(id)a3;
- (void)_auditPresenceMap;
- (void)_evaluatePresence:(id)a3 newUserPresence:(id)a4 presenceStatusUpdateReason:(id)a5;
- (void)_handleAllowedPeriodNotification:(id)a3 withCompletionHandler:(id)a4;
- (void)_handlePrimaryResidentChangedNotification:(id)a3;
- (void)_handlePrivilegeUpdate:(id)a3;
- (void)_handleRestrictedGuestAllowedPeriodEndedNotification:(id)a3;
- (void)_handleRestrictedGuestAllowedPeriodStartedNotification:(id)a3;
- (void)_insertUserPresence:(id)a3;
- (void)_populatePresenceMapFromWorkingStore;
- (void)_preparePresenceMap;
- (void)_reEvaluatePresenceWithReason:(id)a3;
- (void)_registerForMessages;
- (void)_removeNonExistingUsers;
- (void)_removeUserPresence:(id)a3;
- (void)_saveUserPresenceToWorkingStore:(id)a3 forUser:(id)a4;
- (void)_startAuditTimer;
- (void)_updateUserPresence:(id)a3 presenceAuth:(id)a4 completion:(id)a5;
- (void)addNewUser:(id)a3;
- (void)configure:(id)a3 messageDispatcher:(id)a4;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)handleCharacteristicsChangedNotification:(id)a3;
- (void)handleMatterLockStateChangedNotification:(id)a3;
- (void)handleTimerFiredNotification:(id)a3;
- (void)handleUpdatedCharacteristics:(id)a3 userUUIDFromNotification:(id)a4;
- (void)handleUserHomePresencePayload:(id)a3 device:(id)a4 user:(id)a5 completion:(id)a6;
- (void)handleUserPresenceUpdate:(id)a3;
- (void)handleUserPresenceUpdateNotification:(id)a3;
- (void)removeUser:(id)a3;
- (void)resolveUserFromCharacteristicNotificationContext:(id)a3 completion:(id)a4;
- (void)setCurrentHomePresence:(id)a3;
- (void)updateLastLocalActivityTimestamp:(id)a3 forUserUUID:(id)a4;
@end

@implementation HMDHomePresenceMonitor

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(HMDHomePresenceMonitor *)self presenceMap];
  v5 = [v6 copy];
  [v4 encodeObject:v5 forKey:@"kHMDHomePresenceMonitorPresenceMapCodingKey"];
}

- (HMDHomePresenceMonitor)initWithCoder:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDHomePresenceMonitor *)self init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v16 = objc_opt_class();
    v17 = objc_opt_class();
    v18 = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v16 count:3];
    v8 = [v6 setWithArray:{v7, v16, v17}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"kHMDHomePresenceMonitorPresenceMapCodingKey"];
    v10 = [v9 mutableCopy];
    presenceMap = v5->_presenceMap;
    v5->_presenceMap = v10;

    if (!v5->_presenceMap)
    {
      v12 = [MEMORY[0x277CBEB38] dictionary];
      v13 = v5->_presenceMap;
      v5->_presenceMap = v12;
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)_removeUserPresence:(id)a3
{
  v7 = a3;
  os_unfair_lock_lock_with_options();
  presenceMap = self->_presenceMap;
  v5 = [v7 user];
  v6 = [v5 uuid];
  [(NSMutableDictionary *)presenceMap setObject:0 forKeyedSubscript:v6];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_insertUserPresence:(id)a3
{
  v7 = a3;
  os_unfair_lock_lock_with_options();
  presenceMap = self->_presenceMap;
  v5 = [v7 user];
  v6 = [v5 uuid];
  [(NSMutableDictionary *)presenceMap setObject:v7 forKeyedSubscript:v6];

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isUserAtHome:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  v5 = [(NSMutableDictionary *)self->_presenceMap objectForKeyedSubscript:v4];
  v6 = [v5 isAtHome];

  os_unfair_lock_unlock(&self->_lock);
  return v6;
}

- (id)getLastLocalActivityTimeStampForUserUUID:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  v5 = [(NSMutableDictionary *)self->_presenceMap objectForKeyedSubscript:v4];
  v6 = [v5 lastLocalActivityTimeStamp];

  os_unfair_lock_unlock(&self->_lock);

  return v6;
}

- (BOOL)_shouldWeUpdateWorkingStoreAfterUpdatingUserPresence:(id)a3 withNewestLocalActivityTimeStamp:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [v6 lastLocalActivityTimeStamp];
      v20 = 138543874;
      v21 = v11;
      v22 = 2112;
      v23 = v12;
      v24 = 2112;
      v25 = v7;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_DEBUG, "%{public}@lastTime: %@, current: %@", &v20, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    [v6 setLastLocalActivityTimeStamp:v7];
    v13 = [v6 lastLocalActivityUpdateTimeStampInWorkingStore];
    if (v13)
    {
      v14 = [v6 lastLocalActivityUpdateTimeStampInWorkingStore];
      [v7 timeIntervalSinceDate:v14];
      v16 = fabs(v15);
    }

    else
    {
      v16 = 0.0;
    }

    v17 = v16 >= 3600.0 || v16 <= 0.0;
  }

  else
  {
    [v6 setLastLocalActivityTimeStamp:0];
    v17 = 1;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

- (BOOL)_setLocalActivityTimestampForUserUUID:(id)a3 timestamp:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  os_unfair_lock_lock_with_options();
  v8 = [(NSMutableDictionary *)self->_presenceMap objectForKeyedSubscript:v6];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 user];
    v11 = [v10 isRemoteAccessAllowed];

    v12 = (v11 & 1) == 0 && [(HMDHomePresenceMonitor *)self _shouldWeUpdateWorkingStoreAfterUpdatingUserPresence:v9 withNewestLocalActivityTimeStamp:v7];
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v19 = 138543618;
      v20 = v16;
      v21 = 2112;
      v22 = v6;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Could not find the user in the presence map. %@", &v19, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    v12 = 1;
  }

  os_unfair_lock_unlock(&self->_lock);
  v17 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)handleMatterLockStateChangedNotification:(id)a3
{
  v4 = a3;
  v5 = [(HMDHomePresenceBase *)self home];
  if ([v5 isCurrentDeviceConfirmedPrimaryResident])
  {
    v6 = [(HMDHomePresenceBase *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __67__HMDHomePresenceMonitor_handleMatterLockStateChangedNotification___block_invoke;
    block[3] = &unk_27868A010;
    v8 = v4;
    v9 = self;
    v10 = v5;
    dispatch_async(v6, block);
  }
}

void __67__HMDHomePresenceMonitor_handleMatterLockStateChangedNotification___block_invoke(id *a1)
{
  v71 = *MEMORY[0x277D85DE8];
  v2 = [a1[4] object];
  if ([v2 conformsToProtocol:&unk_283F010C8])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  v5 = [a1[4] userInfo];
  v6 = objc_autoreleasePoolPush();
  v7 = a1[5];
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [a1[4] name];
    v11 = [v4 shortDescription];
    *buf = 138544130;
    v64 = v9;
    v65 = 2112;
    v66 = v10;
    v67 = 2112;
    v68 = v11;
    v69 = 2112;
    v70 = v5;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_DEBUG, "%{public}@Received '%@' notification for %@: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v6);
  v12 = [v5 objectForKeyedSubscript:@"HMDAccessoryMatterLockOperationDateNotificationKey"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  v15 = [v5 objectForKeyedSubscript:@"HMDAccessoryMatterLockOperationTypeNotificationKey"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  v18 = [v17 unsignedIntegerValue];
  if (v18 - 2 < 2)
  {
    v31 = objc_autoreleasePoolPush();
    v32 = a1[5];
    v33 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = HMFGetLogIdentifier();
      *buf = 138543618;
      v64 = v34;
      v65 = 2112;
      v66 = v17;
      v35 = "%{public}@Unexpected operation type: %@";
      v36 = v33;
      v37 = OS_LOG_TYPE_ERROR;
LABEL_31:
      _os_log_impl(&dword_229538000, v36, v37, v35, buf, 0x16u);
    }

LABEL_32:

    objc_autoreleasePoolPop(v31);
    goto LABEL_51;
  }

  if (v18 > 1)
  {
    v31 = objc_autoreleasePoolPush();
    v32 = a1[5];
    v33 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
    {
      v34 = HMFGetLogIdentifier();
      *buf = 138543618;
      v64 = v34;
      v65 = 2112;
      v66 = v17;
      v35 = "%{public}@Unhandled MTRDoorLockLockOperationType: %@";
      v36 = v33;
      v37 = OS_LOG_TYPE_FAULT;
      goto LABEL_31;
    }

    goto LABEL_32;
  }

  [v17 unsignedIntegerValue];
  v19 = [v5 objectForKeyedSubscript:@"HMDAccessoryMatterLockOperationSourceNotificationKey"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  v21 = v20;

  v22 = [v21 unsignedIntegerValue];
  if (v22 <= 0xA && ((1 << v22) & 0x508) != 0)
  {
    v23 = [v5 objectForKeyedSubscript:@"HMDAccessoryMatterLockUserUUIDNotificationKey"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = v23;
    }

    else
    {
      v24 = 0;
    }

    v25 = v24;

    if (v25)
    {
      v61 = v21;
      v62 = v14;
      v60 = [v4 home];
      v26 = [v60 uuid];
      v27 = [a1[6] uuid];
      v28 = [v26 hmf_isEqualToUUID:v27];

      if (v28)
      {
        v29 = [a1[6] userWithUUID:v25];
        if (v29)
        {
          v21 = v61;
          if (v62)
          {
            v30 = v12;
          }

          else
          {
            v30 = [MEMORY[0x277CBEAA8] now];
          }

          v58 = v30;
          v50 = v60;
          [a1[5] updateLastLocalActivityTimestamp:v30 forUserUUID:v25];
        }

        else
        {
          v53 = objc_autoreleasePoolPush();
          v54 = a1[5];
          v55 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
          {
            v56 = HMFGetLogIdentifier();
            v57 = a1[6];
            *buf = 138543874;
            v64 = v56;
            v65 = 2112;
            v66 = v25;
            v67 = 2112;
            v68 = v57;
            _os_log_impl(&dword_229538000, v55, OS_LOG_TYPE_ERROR, "%{public}@Unable to find user with UUID %@ in home %@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v53);
          v50 = v60;
          v21 = v61;
        }
      }

      else
      {
        v47 = objc_autoreleasePoolPush();
        v48 = a1[5];
        v49 = HMFGetOSLogHandle();
        v50 = v60;
        if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          v51 = HMFGetLogIdentifier();
          v52 = a1[6];
          *buf = 138544130;
          v64 = v51;
          v65 = 2112;
          v66 = v4;
          v67 = 2112;
          v68 = v52;
          v69 = 2112;
          v70 = v60;
          _os_log_impl(&dword_229538000, v49, OS_LOG_TYPE_ERROR, "%{public}@Ignoring matter lock event as it pertains to an accessory in a different home: %@, %@ != %@", buf, 0x2Au);
        }

        objc_autoreleasePoolPop(v47);
        v21 = v61;
      }

      v14 = v62;
    }

    else
    {
      v38 = objc_autoreleasePoolPush();
      v39 = a1[5];
      v40 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v42 = v41 = v14;
        *buf = 138543362;
        v64 = v42;
        _os_log_impl(&dword_229538000, v40, OS_LOG_TYPE_ERROR, "%{public}@Matter lock state change notification does not contain the userUUID. Ignoring it.", buf, 0xCu);

        v14 = v41;
      }

      objc_autoreleasePoolPop(v38);
    }
  }

  else
  {
    v43 = objc_autoreleasePoolPush();
    v44 = a1[5];
    v45 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
    {
      v46 = HMFGetLogIdentifier();
      *buf = 138543618;
      v64 = v46;
      v65 = 2112;
      v66 = v21;
      _os_log_impl(&dword_229538000, v45, OS_LOG_TYPE_DEBUG, "%{public}@Unhandled MTRDoorLockOperationSource: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v43);
  }

LABEL_51:
  v59 = *MEMORY[0x277D85DE8];
}

- (void)updateLastLocalActivityTimestamp:(id)a3 forUserUUID:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6 && v7 && [(HMDHomePresenceMonitor *)self _setLocalActivityTimestampForUserUUID:v7 timestamp:v6])
  {
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543618;
      v25 = v12;
      v26 = 2112;
      v27 = v8;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Was asked to update the local activity time stamp for the user uuid: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    v13 = +[HMDCoreData sharedInstance];
    v14 = [(HMDHomePresenceBase *)v10 home];
    v15 = [v14 uuid];
    v16 = [v13 contextWithHomeUUID:v15];

    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __71__HMDHomePresenceMonitor_updateLastLocalActivityTimestamp_forUserUUID___block_invoke;
    v19[3] = &unk_2786891E0;
    v20 = v8;
    v21 = v16;
    v22 = v10;
    v23 = v6;
    v17 = v16;
    [v17 performBlock:v19];
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __71__HMDHomePresenceMonitor_updateLastLocalActivityTimestamp_forUserUUID___block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) managedObjectContext];
  v4 = [_MKFHome findHomeMemberWithUUID:v2 context:v3];

  if (v4)
  {
    [v4 setLastLocalActivityTimeStamp:*(a1 + 56)];
    v5 = *(a1 + 40);
    v25 = 0;
    v6 = [v5 save:&v25];
    v7 = v25;
    if (v6)
    {
      v8 = *(a1 + 48);
      os_unfair_lock_lock_with_options();
      v9 = [MEMORY[0x277CBEAA8] now];
      v10 = [*(*(a1 + 48) + 64) objectForKeyedSubscript:*(a1 + 32)];
      [v10 setLastLocalActivityUpdateTimeStampInWorkingStore:v9];

      os_unfair_lock_unlock(v8 + 14);
      v11 = objc_autoreleasePoolPush();
      v12 = *(a1 + 48);
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = HMFGetLogIdentifier();
        v15 = *(a1 + 56);
        v16 = *(a1 + 32);
        *buf = 138543874;
        v27 = v14;
        v28 = 2112;
        v29 = v15;
        v30 = 2112;
        v31 = v16;
        _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Successfully updated home member's local activity timestamp to [%@] for user [%@] in the working store", buf, 0x20u);
      }
    }

    else
    {
      v11 = objc_autoreleasePoolPush();
      v12 = *(a1 + 48);
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v22 = HMFGetLogIdentifier();
        v23 = *(a1 + 32);
        *buf = 138543874;
        v27 = v22;
        v28 = 2112;
        v29 = v23;
        v30 = 2112;
        v31 = v7;
        _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Unable to save the home member's local activity timestamp : %@, error: %@", buf, 0x20u);
      }
    }

    objc_autoreleasePoolPop(v11);
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    v18 = *(a1 + 48);
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      v21 = *(a1 + 32);
      *buf = 138543618;
      v27 = v20;
      v28 = 2112;
      v29 = v21;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Did not find the home member with model id : %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)resolveUserFromCharacteristicNotificationContext:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HMDHomePresenceBase *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [v6 service];
  v10 = [v9 accessory];
  v11 = [v10 home];
  v12 = [v11 lockNotificationManager];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __86__HMDHomePresenceMonitor_resolveUserFromCharacteristicNotificationContext_completion___block_invoke;
  aBlock[3] = &unk_278670D90;
  v19 = v6;
  v20 = v7;
  aBlock[4] = self;
  v13 = v6;
  v14 = v7;
  v15 = _Block_copy(aBlock);
  v16 = [v13 notificationContext];
  v17 = [v10 uuid];
  [v12 resolveEncodedCharacteristicNotificationContext:v16 accessoryUUID:v17 completion:v15];
}

void __86__HMDHomePresenceMonitor_resolveUserFromCharacteristicNotificationContext_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [v5 userUUID];

  if (v7)
  {
    v8 = *(a1 + 48);
    v9 = [v5 userUUID];
    (*(v8 + 16))(v8, v9, 0);
LABEL_5:

    goto LABEL_6;
  }

  v10 = [v5 labelIdentifier];

  if (v10)
  {
    v11 = *(a1 + 48);
    v9 = [v5 labelIdentifier];
    (*(v11 + 16))(v11, 0, v9);
    goto LABEL_5;
  }

  v13 = objc_autoreleasePoolPush();
  v14 = *(a1 + 32);
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v16 = HMFGetLogIdentifier();
    v17 = *(a1 + 40);
    v18 = 138543874;
    v19 = v16;
    v20 = 2112;
    v21 = v17;
    v22 = 2112;
    v23 = v6;
    _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to resolve user with notification context for characteristic %@: %@", &v18, 0x20u);
  }

  objc_autoreleasePoolPop(v13);
  (*(*(a1 + 48) + 16))();
LABEL_6:

  v12 = *MEMORY[0x277D85DE8];
}

- (void)handleUpdatedCharacteristics:(id)a3 userUUIDFromNotification:(id)a4
{
  v83 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDHomePresenceBase *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v62 = [(HMDHomePresenceBase *)self home];
  v9 = [objc_opt_class() interestingServiceTypeToCharacteristicTypesMap];
  v60 = [MEMORY[0x277CBEB18] array];
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  obj = v6;
  v68 = [obj countByEnumeratingWithState:&v70 objects:v82 count:16];
  if (!v68)
  {
    v58 = 0;
    goto LABEL_39;
  }

  v58 = 0;
  v67 = *v71;
  v64 = self;
  v59 = v7;
  v61 = v9;
  do
  {
    v10 = 0;
    do
    {
      if (*v71 != v67)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v70 + 1) + 8 * v10);
      v12 = [v11 service];
      v13 = [v12 type];
      v14 = [v9 objectForKeyedSubscript:v13];

      if (!v14)
      {
        v37 = objc_autoreleasePoolPush();
        v38 = self;
        v39 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
        {
          v40 = HMFGetLogIdentifier();
          *buf = 138543618;
          v75 = v40;
          v76 = 2112;
          v77 = v12;
          v41 = v39;
          v42 = OS_LOG_TYPE_DEBUG;
          v43 = "%{public}@Ignoring service because it's not interesting: %@";
          goto LABEL_26;
        }

LABEL_27:

        objc_autoreleasePoolPop(v37);
        goto LABEL_28;
      }

      v15 = [v11 type];
      v16 = [v14 containsObject:v15];

      if ((v16 & 1) == 0)
      {
        v37 = objc_autoreleasePoolPush();
        v38 = self;
        v39 = HMFGetOSLogHandle();
        if (!os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_27;
        }

        v40 = HMFGetLogIdentifier();
        *buf = 138543618;
        v75 = v40;
        v76 = 2112;
        v77 = v11;
        v41 = v39;
        v42 = OS_LOG_TYPE_DEBUG;
        v43 = "%{public}@Ignoring characteristic because it's not interesting: %@";
LABEL_26:
        _os_log_impl(&dword_229538000, v41, v42, v43, buf, 0x16u);

        self = v64;
        goto LABEL_27;
      }

      v17 = [v11 previousValue];

      if (!v17)
      {
        v37 = objc_autoreleasePoolPush();
        v38 = self;
        v39 = HMFGetOSLogHandle();
        if (!os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
        {
          goto LABEL_27;
        }

        v40 = HMFGetLogIdentifier();
        *buf = 138543618;
        v75 = v40;
        v76 = 2112;
        v77 = v11;
        v41 = v39;
        v42 = OS_LOG_TYPE_INFO;
        v43 = "%{public}@Ignoring characteristic with no previous value because we don't know if it changed: %@";
        goto LABEL_26;
      }

      v63 = [v12 accessory];
      v65 = [v63 home];
      v18 = [v65 uuid];
      v19 = [v62 uuid];
      v20 = [v18 hmf_isEqualToUUID:v19];

      v21 = objc_autoreleasePoolPush();
      v22 = self;
      v23 = HMFGetOSLogHandle();
      v24 = v23;
      if (v20)
      {
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          v25 = HMFGetLogIdentifier();
          v26 = [v11 previousValue];
          v27 = [v11 value];
          *buf = 138544130;
          v75 = v25;
          v76 = 2112;
          v77 = v11;
          v78 = 2112;
          v79 = v26;
          v80 = 2112;
          v81 = v27;
          _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_DEBUG, "%{public}@Found interesting characteristic whose value has changed: <%@: %@ -> %@>", buf, 0x2Au);

          v7 = v59;
          self = v64;
        }

        objc_autoreleasePoolPop(v21);
        [v60 addObject:v11];
        if (!v7)
        {
          v28 = [v65 lockNotificationManager];
          if ([v28 shouldResolveNotificationContextForCharacteristic:v11])
          {
            v29 = objc_autoreleasePoolPush();
            v30 = v22;
            v31 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
            {
              v32 = HMFGetLogIdentifier();
              *buf = 138543618;
              v75 = v32;
              v76 = 2112;
              v77 = v11;
              _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_INFO, "%{public}@Characteristic includes notification context that needs to be resolved: %@", buf, 0x16u);

              self = v64;
            }

            objc_autoreleasePoolPop(v29);
            if (v58)
            {
              v33 = objc_autoreleasePoolPush();
              v34 = v30;
              v35 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
              {
                v36 = HMFGetLogIdentifier();
                *buf = 138543618;
                v75 = v36;
                v76 = 2112;
                v77 = obj;
                _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_ERROR, "%{public}@Multiple characteristics with notification context at once, using first: %@", buf, 0x16u);

                self = v64;
              }

              objc_autoreleasePoolPop(v33);
            }

            else
            {
              v58 = v11;
            }
          }
        }
      }

      else
      {
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v44 = HMFGetLogIdentifier();
          *buf = 138544130;
          v75 = v44;
          v76 = 2112;
          v77 = v11;
          v78 = 2112;
          v79 = v62;
          v80 = 2112;
          v81 = v65;
          _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@Ignoring updated characteristic as it belongs to an accessory in a different home: %@, %@ != %@", buf, 0x2Au);
        }

        objc_autoreleasePoolPop(v21);
      }

      v9 = v61;
LABEL_28:

      ++v10;
    }

    while (v68 != v10);
    v45 = [obj countByEnumeratingWithState:&v70 objects:v82 count:16];
    v68 = v45;
  }

  while (v45);
LABEL_39:

  if (![v60 count])
  {
    v52 = objc_autoreleasePoolPush();
    v53 = self;
    v54 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
    {
      v55 = HMFGetLogIdentifier();
      *buf = 138543362;
      v75 = v55;
      _os_log_impl(&dword_229538000, v54, OS_LOG_TYPE_DEBUG, "%{public}@Ignoring updates since none are interesting", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v52);
    goto LABEL_48;
  }

  if (!v58)
  {
    v56 = [MEMORY[0x277CBEAA8] now];
    [(HMDHomePresenceMonitor *)self updateLastLocalActivityTimestamp:v56 forUserUUID:v7];

LABEL_48:
    v51 = v58;
    goto LABEL_49;
  }

  v46 = objc_autoreleasePoolPush();
  v47 = self;
  v48 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
  {
    v49 = HMFGetLogIdentifier();
    *buf = 138543362;
    v75 = v49;
    _os_log_impl(&dword_229538000, v48, OS_LOG_TYPE_INFO, "%{public}@Resolving user from characteristic notification context", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v46);
  v69[0] = MEMORY[0x277D85DD0];
  v69[1] = 3221225472;
  v69[2] = __80__HMDHomePresenceMonitor_handleUpdatedCharacteristics_userUUIDFromNotification___block_invoke;
  v69[3] = &unk_278670D68;
  v69[4] = v47;
  v50 = v47;
  v51 = v58;
  [(HMDHomePresenceMonitor *)v50 resolveUserFromCharacteristicNotificationContext:v58 completion:v69];
LABEL_49:

  v57 = *MEMORY[0x277D85DE8];
}

void __80__HMDHomePresenceMonitor_handleUpdatedCharacteristics_userUUIDFromNotification___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v14 = 138543874;
    v15 = v10;
    v16 = 2112;
    v17 = v5;
    v18 = 2112;
    v19 = v6;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Characteristic notification context resolved: %@, %@", &v14, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  if (!v5)
  {
    v11 = *(a1 + 32);
    v12 = [MEMORY[0x277CBEAA8] now];
    [v11 updateLastLocalActivityTimestamp:v12 forUserUUID:0];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)handleCharacteristicsChangedNotification:(id)a3
{
  v4 = a3;
  v5 = [(HMDHomePresenceBase *)self home];
  if ([v5 isCurrentDeviceConfirmedPrimaryResident])
  {
    v6 = [(HMDHomePresenceBase *)self workQueue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __67__HMDHomePresenceMonitor_handleCharacteristicsChangedNotification___block_invoke;
    v7[3] = &unk_27868A750;
    v8 = v4;
    v9 = self;
    dispatch_async(v6, v7);
  }
}

void __67__HMDHomePresenceMonitor_handleCharacteristicsChangedNotification___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:@"kModifiedCharacteristicsKey"];
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

  if ([v5 count])
  {
    v6 = [v2 objectForKeyedSubscript:@"kUserUUIDKey"];
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

    v9 = [v2 objectForKeyedSubscript:@"kMessageUserOverrideKey"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

    v12 = [v11 UUIDString];
    v13 = [v12 isEqualToString:@"78AD2561-F044-48C7-B1B9-E16DBFD56E52"];

    if ((v13 & 1) != 0 || (v11 ? (v14 = v11) : (v14 = v8), (v15 = v14) == 0))
    {
      v17 = objc_autoreleasePoolPush();
      v18 = *(a1 + 40);
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        v20 = HMFGetLogIdentifier();
        v27 = 138543362;
        v28 = v20;
        _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_DEBUG, "%{public}@The notification does not contain a user UUID.", &v27, 0xCu);
      }

      objc_autoreleasePoolPop(v17);
    }

    else
    {
      v16 = v15;
      [*(a1 + 40) handleUpdatedCharacteristics:v5 userUUIDFromNotification:v15];
    }
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    v22 = *(a1 + 40);
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      v24 = HMFGetLogIdentifier();
      v25 = *(a1 + 32);
      v27 = 138543618;
      v28 = v24;
      v29 = 2112;
      v30 = v25;
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_DEBUG, "%{public}@Ignoring notification with no changed characteristics: %@", &v27, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)_handleAllowedPeriodNotification:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HMDHomePresenceBase *)self home];
  v9 = [v8 isCurrentDeviceConfirmedPrimaryResident];

  if (v9)
  {
    v10 = [(HMDHomePresenceBase *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __81__HMDHomePresenceMonitor__handleAllowedPeriodNotification_withCompletionHandler___block_invoke;
    block[3] = &unk_278689F98;
    block[4] = self;
    v12 = v6;
    v13 = v7;
    dispatch_async(v10, block);
  }
}

void __81__HMDHomePresenceMonitor__handleAllowedPeriodNotification_withCompletionHandler___block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 40) name];
    v29 = 138543618;
    v30 = v5;
    v31 = 2112;
    v32 = v6;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@RG allowed period notification: %@", &v29, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = [*(a1 + 40) object];
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

  if (v9 && ([v9 isRestrictedGuest] & 1) != 0)
  {
    v10 = [*(a1 + 32) presenceMap];
    v11 = [v9 uuid];
    v12 = [v10 objectForKeyedSubscript:v11];

    if (v12)
    {
      v13 = _Block_copy(*(a1 + 48));
      v14 = v13;
      if (!v13)
      {
LABEL_20:

        goto LABEL_21;
      }

      v15 = v13[2];
    }

    else
    {
      v23 = objc_autoreleasePoolPush();
      v24 = *(a1 + 32);
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = HMFGetLogIdentifier();
        v29 = 138543618;
        v30 = v26;
        v31 = 2112;
        v32 = v9;
        _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_ERROR, "%{public}@Did not find presence information for restricted guest: %@", &v29, 0x16u);
      }

      objc_autoreleasePoolPop(v23);
      v27 = _Block_copy(*(a1 + 48));
      v14 = v27;
      if (!v27)
      {
        goto LABEL_20;
      }

      v15 = v27[2];
    }

    v15();
    goto LABEL_20;
  }

  v16 = objc_autoreleasePoolPush();
  v17 = *(a1 + 32);
  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    v19 = HMFGetLogIdentifier();
    v20 = [*(a1 + 32) home];
    v21 = [v20 users];
    v29 = 138543618;
    v30 = v19;
    v31 = 2112;
    v32 = v21;
    _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@[RG] Unable to add the user in the presence map as we could not find it inside the users list in home or not RG: %@", &v29, 0x16u);
  }

  objc_autoreleasePoolPop(v16);
  v22 = _Block_copy(*(a1 + 48));
  v12 = v22;
  if (v22)
  {
    (*(v22 + 2))(v22, 0);
  }

LABEL_21:

  v28 = *MEMORY[0x277D85DE8];
}

- (void)_handleRestrictedGuestAllowedPeriodEndedNotification:(id)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __79__HMDHomePresenceMonitor__handleRestrictedGuestAllowedPeriodEndedNotification___block_invoke;
  v3[3] = &unk_278670D40;
  v3[4] = self;
  [(HMDHomePresenceMonitor *)self _handleAllowedPeriodNotification:a3 withCompletionHandler:v3];
}

void __79__HMDHomePresenceMonitor__handleRestrictedGuestAllowedPeriodEndedNotification___block_invoke(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (!v3)
  {
    goto LABEL_11;
  }

  v5 = [v3 rawPresenceRegionStatus];
  if ([v5 value] == 2)
  {

LABEL_8:
    v24 = objc_autoreleasePoolPush();
    v25 = *(a1 + 32);
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = HMFGetLogIdentifier();
      v29 = 138543362;
      v30 = v27;
      _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_INFO, "%{public}@Not simulating user not atHome presence as RG is not atHome", &v29, 0xCu);
    }

    objc_autoreleasePoolPop(v24);
    goto LABEL_11;
  }

  v6 = [v4 rawPresenceRegionStatus];
  v7 = [v6 value];

  if (!v7)
  {
    goto LABEL_8;
  }

  v8 = [v4 user];
  v9 = [HMDUserPresence alloc];
  v10 = [v4 presenceRegionStatus];
  v11 = [MEMORY[0x277CBEAA8] now];
  v12 = [v4 deviceWhichUpdatedUserPresence];
  v13 = [(HMDUserPresence *)v9 initWithUser:v8 presenceRegionStatus:v10 timeStamp:v11 presenceUpdateReason:0 device:v12];

  v14 = *(a1 + 32);
  os_unfair_lock_lock_with_options();
  v15 = *(*(a1 + 32) + 64);
  v16 = [v8 uuid];
  [v15 setObject:v13 forKeyedSubscript:v16];

  os_unfair_lock_unlock(v14 + 14);
  v17 = objc_autoreleasePoolPush();
  v18 = *(a1 + 32);
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = HMFGetLogIdentifier();
    v29 = 138543618;
    v30 = v20;
    v31 = 2112;
    v32 = v13;
    _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@RG Period Ended : %@", &v29, 0x16u);
  }

  objc_autoreleasePoolPop(v17);
  v21 = *(a1 + 32);
  v22 = [(HMDUserPresence *)v13 deviceWhichUpdatedUserPresence];
  v23 = [HMDUserPresenceUpdateReason reasonWithValue:2];
  [v21 _evaluatePresence:v22 newUserPresence:v13 presenceStatusUpdateReason:v23];

LABEL_11:
  v28 = *MEMORY[0x277D85DE8];
}

- (void)_handleRestrictedGuestAllowedPeriodStartedNotification:(id)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __81__HMDHomePresenceMonitor__handleRestrictedGuestAllowedPeriodStartedNotification___block_invoke;
  v3[3] = &unk_278670D40;
  v3[4] = self;
  [(HMDHomePresenceMonitor *)self _handleAllowedPeriodNotification:a3 withCompletionHandler:v3];
}

void __81__HMDHomePresenceMonitor__handleRestrictedGuestAllowedPeriodStartedNotification___block_invoke(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 rawPresenceRegionStatus];
    v6 = [v5 value];

    if (v6 == 1)
    {
      v7 = [v4 user];
      v8 = [HMDUserPresence alloc];
      v9 = [v4 presenceRegionStatus];
      v10 = [MEMORY[0x277CBEAA8] now];
      v11 = [v4 deviceWhichUpdatedUserPresence];
      v12 = [(HMDUserPresence *)v8 initWithUser:v7 presenceRegionStatus:v9 timeStamp:v10 presenceUpdateReason:0 device:v11];

      v13 = *(a1 + 32);
      os_unfair_lock_lock_with_options();
      v14 = *(*(a1 + 32) + 64);
      v15 = [v7 uuid];
      [v14 setObject:v12 forKeyedSubscript:v15];

      os_unfair_lock_unlock(v13 + 14);
      v16 = objc_autoreleasePoolPush();
      v17 = *(a1 + 32);
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = HMFGetLogIdentifier();
        v20 = [(HMDUserPresence *)v12 shortDescription];
        v29 = 138543618;
        v30 = v19;
        v31 = 2112;
        v32 = v20;
        _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@RG Period Started : %@", &v29, 0x16u);
      }

      objc_autoreleasePoolPop(v16);
      v21 = *(a1 + 32);
      v22 = [(HMDUserPresence *)v12 deviceWhichUpdatedUserPresence];
      v23 = [HMDUserPresenceUpdateReason reasonWithValue:2];
      [v21 _evaluatePresence:v22 newUserPresence:v12 presenceStatusUpdateReason:v23];
    }

    else
    {
      v24 = objc_autoreleasePoolPush();
      v25 = *(a1 + 32);
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        v27 = HMFGetLogIdentifier();
        v29 = 138543362;
        v30 = v27;
        _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_INFO, "%{public}@Not simulating user atHome presence as RG is not atHome", &v29, 0xCu);
      }

      objc_autoreleasePoolPop(v24);
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (HMDHomePresenceUpdate)homePresenceUpdate
{
  v3 = [HMDHomePresenceUpdate alloc];
  v4 = [(HMDHomePresenceMonitor *)self currentHomePresence];
  v5 = [(HMDHomePresenceUpdate *)v3 initWithHomePresence:v4 userPresence:0 update:0 causingDevice:0];

  return v5;
}

- (void)_evaluatePresence:(id)a3 newUserPresence:(id)a4 presenceStatusUpdateReason:(id)a5
{
  v68 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HMDHomePresenceBase *)self home];
  [(HMDHomePresenceMonitor *)self _auditPresenceMap];
  v12 = [(HMDHomePresenceMonitor *)self presenceMap];
  v13 = objc_autoreleasePoolPush();
  v14 = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    *buf = 138543618;
    v61 = v16;
    v62 = 2112;
    v63 = v12;
    _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Evaluating home presence with current presence map: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v13);
  v17 = [[HMDHomePresence alloc] initWithHome:v11 userPresenceMap:v12 lastUpdateByDevice:v8];
  v18 = [(HMDHomePresenceMonitor *)v14 currentHomePresence];

  v55 = v12;
  if (v18)
  {
    v19 = [(HMDHomePresenceMonitor *)v14 currentHomePresence];
    v56 = HMFEqualObjects();
  }

  else
  {
    v56 = 1;
  }

  v20 = objc_autoreleasePoolPush();
  v21 = v14;
  v22 = HMFGetOSLogHandle();
  v57 = v11;
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    v23 = HMFGetLogIdentifier();
    [(HMDHomePresenceMonitor *)v21 currentHomePresence];
    v24 = v53 = v20;
    v25 = [v24 shortDescription];
    [(HMDHomePresence *)v17 shortDescription];
    v26 = v17;
    v27 = v10;
    v29 = v28 = v9;
    HMFBooleanToString();
    v30 = v54 = v8;
    *buf = 138544130;
    v61 = v23;
    v62 = 2112;
    v63 = v25;
    v64 = 2112;
    v65 = v29;
    v66 = 2112;
    v67 = v30;
    _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@Updating home presence from %@ to %@, Equal: %@", buf, 0x2Au);

    v9 = v28;
    v10 = v27;
    v17 = v26;

    v11 = v57;
    v20 = v53;

    v8 = v54;
  }

  objc_autoreleasePoolPop(v20);
  [(HMDHomePresenceMonitor *)v21 setCurrentHomePresence:v17];
  v31 = objc_autoreleasePoolPush();
  v32 = v21;
  v33 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
  {
    v34 = HMFGetLogIdentifier();
    *buf = 138543362;
    v61 = v34;
    _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_INFO, "%{public}@Current home presence evaluated, sending notification", buf, 0xCu);

    v11 = v57;
  }

  objc_autoreleasePoolPop(v31);
  logAndPostNotification(@"HMDHomePresenceEvaluatedNotification", v32, 0);
  if ((v56 & 1) == 0)
  {
    [v11 saveWithReason:@"HMDHomePresenceMonitorUpdatedReason" postSyncNotification:0];
    v35 = v10;
    v36 = [v10 value];
    v37 = v36 == 2;
    v38 = [v9 user];
    if ([v38 isRestrictedGuest])
    {
      v39 = v36 == 2;
      v40 = [v9 user];
      v41 = v17;
      v42 = v9;
      v43 = v39 & ~[v40 isAccessCurrentlyAllowedBySchedule];

      v37 = v39 & ~v43;
      v9 = v42;
      v17 = v41;
    }

    else
    {
    }

    v44 = [HMDHomePresenceUpdate alloc];
    v45 = [(HMDHomePresenceMonitor *)v32 currentHomePresence];
    v46 = [(HMDHomePresenceUpdate *)v44 initWithHomePresence:v45 userPresence:v9 update:v37 causingDevice:v8];

    v47 = objc_autoreleasePoolPush();
    v48 = v32;
    v49 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
    {
      v50 = HMFGetLogIdentifier();
      *buf = 138543618;
      v61 = v50;
      v62 = 2112;
      v63 = v46;
      _os_log_impl(&dword_229538000, v49, OS_LOG_TYPE_INFO, "%{public}@Sending home presence update %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v47);
    v58 = @"HMDHomePresenceUpdateKey";
    v59 = v46;
    v51 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
    logAndPostNotification(@"HMDHomePresenceUpdateNotification", v48, v51);

    v10 = v35;
    v11 = v57;
  }

  [(HMDHomePresenceMonitor *)v32 _startAuditTimer];

  v52 = *MEMORY[0x277D85DE8];
}

- (void)_saveUserPresenceToWorkingStore:(id)a3 forUser:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[HMDCoreData sharedInstance];
  v9 = [(HMDHomePresenceBase *)self home];
  v10 = [v9 uuid];
  v11 = [v8 contextWithHomeUUID:v10];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __66__HMDHomePresenceMonitor__saveUserPresenceToWorkingStore_forUser___block_invoke;
  v15[3] = &unk_2786891E0;
  v16 = v7;
  v17 = v11;
  v18 = self;
  v19 = v6;
  v12 = v6;
  v13 = v11;
  v14 = v7;
  [v13 performBlock:v15];
}

void __66__HMDHomePresenceMonitor__saveUserPresenceToWorkingStore_forUser___block_invoke(id *a1)
{
  v39 = *MEMORY[0x277D85DE8];
  v2 = [a1[4] uuid];
  v3 = [a1[5] managedObjectContext];
  v4 = [_MKFHome findHomeMemberWithUUID:v2 context:v3];

  if (v4)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(a1[7], "value")}];
    [v4 setPresenceRegionStatus:v5];

    v6 = [MEMORY[0x277CBEAA8] date];
    [v4 setPresenceUpdateTimeStamp:v6];

    v7 = [v4 lastLocalActivityTimeStamp];
    if ([a1[7] value] == 2)
    {
      [v4 setLastLocalActivityTimeStamp:0];

      v7 = 0;
    }

    v8 = a1[5];
    v30 = 0;
    v9 = [v8 save:&v30];
    v10 = v30;
    if (v9)
    {
      v11 = a1[6];
      v12 = [a1[4] uuid];
      [v11 _setLocalActivityTimestampForUserUUID:v12 timestamp:v7];

      v13 = objc_autoreleasePoolPush();
      v14 = a1[6];
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = HMFGetLogIdentifier();
        v17 = a1[7];
        v18 = a1[4];
        *buf = 138544130;
        v32 = v16;
        v33 = 2112;
        v34 = v17;
        v35 = 2112;
        v36 = v18;
        v37 = 2112;
        v38 = v7;
        v19 = "%{public}@Successfully updated home member's presence to [%@] for user [%@] in the working store. [lastAccessTime: %@]";
        v20 = v15;
        v21 = OS_LOG_TYPE_INFO;
LABEL_12:
        _os_log_impl(&dword_229538000, v20, v21, v19, buf, 0x2Au);
      }
    }

    else
    {
      v13 = objc_autoreleasePoolPush();
      v14 = a1[6];
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = HMFGetLogIdentifier();
        v27 = a1[4];
        v28 = a1[7];
        *buf = 138544130;
        v32 = v16;
        v33 = 2112;
        v34 = v27;
        v35 = 2112;
        v36 = v28;
        v37 = 2112;
        v38 = v10;
        v19 = "%{public}@Unable to save the home member presence for user : %@ / %@, error: %@";
        v20 = v15;
        v21 = OS_LOG_TYPE_ERROR;
        goto LABEL_12;
      }
    }

    objc_autoreleasePoolPop(v13);
    goto LABEL_14;
  }

  v22 = objc_autoreleasePoolPush();
  v23 = a1[6];
  v24 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    v25 = HMFGetLogIdentifier();
    v26 = [a1[4] uuid];
    *buf = 138543618;
    v32 = v25;
    v33 = 2112;
    v34 = v26;
    _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@Did not find the home member with model id : %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v22);
LABEL_14:

  v29 = *MEMORY[0x277D85DE8];
}

- (void)_updateUserPresence:(id)a3 presenceAuth:(id)a4 completion:(id)a5
{
  v40 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 presenceAuthStatus];
  v12 = HMFEqualObjects();

  v13 = objc_autoreleasePoolPush();
  v14 = self;
  v15 = HMFGetOSLogHandle();
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_INFO);
  if (v12)
  {
    if (v16)
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543618;
      v33 = v17;
      v34 = 2112;
      v35 = v8;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Auth and compute status are not changing for user %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    v18 = _Block_copy(v10);
    v19 = v18;
    if (v18)
    {
      (*(v18 + 2))(v18);
    }
  }

  else
  {
    if (v16)
    {
      v20 = HMFGetLogIdentifier();
      v21 = [v8 presenceAuthStatus];
      *buf = 138544130;
      v33 = v20;
      v34 = 2112;
      v35 = v21;
      v36 = 2112;
      v37 = v9;
      v38 = 2112;
      v39 = v8;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Presence auth status is changing from %@ to %@ for user %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v13);
    v19 = [(HMDHomePresenceBase *)v14 home];
    if ([v8 isOwner])
    {
      [v19 setPresenceAuthStatus:v9];
      v22 = [v19 currentUser];
      [v22 setPresenceAuthStatus:v9];

      v23 = _Block_copy(v10);
      v24 = v23;
      if (v23)
      {
        (*(v23 + 2))(v23);
      }
    }

    else
    {
      v24 = [v8 newModelWithChangeType:2];
      v25 = [v9 number];
      [v24 setPresenceAuthorizationStatus:v25];

      v26 = [v19 backingStore];
      v27 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
      v28 = [v26 transaction:@"kRemoteUpdateUserPresenceNotificationKey" options:v27];

      [v28 add:v24];
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __70__HMDHomePresenceMonitor__updateUserPresence_presenceAuth_completion___block_invoke;
      v30[3] = &unk_278688DD0;
      v31 = v10;
      [v28 run:v30];
    }
  }

  v29 = *MEMORY[0x277D85DE8];
}

void __70__HMDHomePresenceMonitor__updateUserPresence_presenceAuth_completion___block_invoke(uint64_t a1)
{
  v1 = _Block_copy(*(a1 + 32));
  if (v1)
  {
    v2 = v1;
    v1[2]();
    v1 = v2;
  }
}

- (void)handleUserHomePresencePayload:(id)a3 device:(id)a4 user:(id)a5 completion:(id)a6
{
  v98 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v78 = a4;
  v11 = a5;
  v12 = a6;
  v13 = objc_autoreleasePoolPush();
  v14 = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    *buf = 138544130;
    v89 = v16;
    v90 = 2112;
    v91 = v10;
    v92 = 2112;
    v93 = v78;
    v94 = 2112;
    v95 = *&v11;
    _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Received user presence: [%@] from device [%@] for user [%@]", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v13);
  if (v11)
  {
    v17 = [(HMDHomePresenceBase *)v14 home];
    if (([v17 isCurrentDeviceConfirmedPrimaryResident] & 1) == 0)
    {
      v55 = objc_autoreleasePoolPush();
      v56 = v14;
      v57 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
      {
        v58 = HMFGetLogIdentifier();
        *buf = 138543362;
        v89 = v58;
        _os_log_impl(&dword_229538000, v57, OS_LOG_TYPE_INFO, "%{public}@This device is not the current resident, cannot process the presence update, responding with error", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v55);
      v18 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:2708];
      if (v12)
      {
        v12[2](v12, v18);
      }

      goto LABEL_38;
    }

    v18 = [MEMORY[0x277CD1F00] authWithDict:v10];
    if (!v18)
    {
      v19 = MEMORY[0x277CD1F00];
      v20 = [v10 hmf_numberForKey:@"kUserPresenceAuthStatusKey"];
      v18 = [v19 authWithNumber:v20];
    }

    v76 = [HMDUserPresenceRegion regionWithDict:v10];
    v75 = [HMDUserPresenceUpdateReason reasonWithDict:v10];
    v21 = objc_autoreleasePoolPush();
    v22 = v14;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = HMFGetLogIdentifier();
      v25 = [v11 userID];
      *buf = 138544386;
      v89 = v24;
      v90 = 2114;
      v91 = v18;
      v92 = 2114;
      v93 = v76;
      v94 = 2114;
      v95 = *&v75;
      v96 = 2112;
      v97 = v25;
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_INFO, "%{public}@Received user presence message with auth: %{public}@, region: %{public}@, reason: %{public}@, user: %@", buf, 0x34u);
    }

    objc_autoreleasePoolPop(v21);
    if (([v10 hmf_BOOLForKey:@"kUserPresenceIsActivityStateEnabledKey"] & 1) == 0)
    {
      v26 = [v17 homeActivityStateManager];
      v27 = [v26 homeActivityStateAggregatorManager];
      [v27 processUserPresenceWithAuthStatus:v18 regionStatus:v76 updateReason:v75 forUser:v11 fromDevice:v78];
    }

    v28 = [(HMDHomePresenceMonitor *)v22 presenceMap];
    v29 = [v11 uuid];
    v77 = [v28 objectForKeyedSubscript:v29];

    if (!v77)
    {
      v59 = objc_autoreleasePoolPush();
      v60 = v22;
      v61 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
      {
        v62 = HMFGetLogIdentifier();
        v63 = [v11 uuid];
        *buf = 138543618;
        v89 = v62;
        v90 = 2112;
        v91 = v63;
        _os_log_impl(&dword_229538000, v61, OS_LOG_TYPE_INFO, "%{public}@Could not find the user with UUID %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v59);
      v40 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
      if (v12)
      {
        v12[2](v12, v40);
      }

      goto LABEL_37;
    }

    v30 = [v77 user];
    v31 = [v30 presenceAuthStatus];
    if (HMFEqualObjects())
    {
      v32 = [v77 presenceRegionStatus];
      v33 = HMFEqualObjects();

      if (v33)
      {
        [v77 setPresenceRegionStatus:v76];
        v34 = objc_autoreleasePoolPush();
        v35 = v22;
        v36 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
        {
          v37 = HMFGetLogIdentifier();
          *buf = 138543618;
          v89 = v37;
          v90 = 2112;
          v91 = v77;
          _os_log_impl(&dword_229538000, v36, OS_LOG_TYPE_INFO, "%{public}@User presence auth or region status for %@ are not changing, updated presence timestamp", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v34);
        v38 = [MEMORY[0x277D0F8D0] sharedPreferences];
        v39 = [v38 preferenceForKey:@"kPresenceTimestampThresholdMinutes"];
        v40 = [v39 numberValue];

        LODWORD(v38) = [(HMDUserPresence *)v40 intValue];
        v41 = [v77 updateTimestamp];
        v42 = [MEMORY[0x277CBEAA8] date];
        [v41 timeIntervalSinceDate:v42];
        v43 = (60 * v38);
        v45 = fabs(v44);
        v46 = vabdd_f64(v45, v43) < 2.22044605e-16 || v45 < v43;

        if (v46)
        {
          v47 = objc_autoreleasePoolPush();
          v48 = v35;
          v49 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
          {
            v73 = HMFGetLogIdentifier();
            v74 = [v77 updateTimestamp];
            v72 = [v74 hmf_localTimeDescription];
            v50 = [MEMORY[0x277CBEAA8] date];
            v71 = [v50 hmf_localTimeDescription];
            *buf = 138544130;
            v89 = v73;
            v90 = 2112;
            v91 = v72;
            v92 = 2112;
            v93 = v71;
            v94 = 2048;
            v95 = v43;
            _os_log_impl(&dword_229538000, v49, OS_LOG_TYPE_INFO, "%{public}@Not updating timestamp from %@ to %@ as it is within %f.", buf, 0x2Au);
          }

          objc_autoreleasePoolPop(v47);
        }

        else
        {
          v70 = [v77 user];
          [(HMDHomePresenceMonitor *)v35 _saveUserPresenceToWorkingStore:v76 forUser:v70];
        }

        if (v12)
        {
          v12[2](v12, 0);
        }

        goto LABEL_37;
      }
    }

    else
    {
    }

    v64 = [HMDUserPresence alloc];
    v65 = [v77 user];
    v66 = [MEMORY[0x277CBEAA8] now];
    v67 = [(HMDUserPresence *)v64 initWithUser:v65 presenceRegionStatus:v76 timeStamp:v66 presenceUpdateReason:v75 device:v78];

    objc_initWeak(buf, v22);
    v68 = [(HMDUserPresence *)v67 user];
    v79[0] = MEMORY[0x277D85DD0];
    v79[1] = 3221225472;
    v79[2] = __79__HMDHomePresenceMonitor_handleUserHomePresencePayload_device_user_completion___block_invoke;
    v79[3] = &unk_278670D18;
    objc_copyWeak(&v87, buf);
    v80 = v77;
    v40 = v67;
    v81 = v40;
    v82 = v11;
    v83 = v76;
    v86 = v12;
    v84 = v78;
    v85 = v75;
    [(HMDHomePresenceMonitor *)v22 _updateUserPresence:v68 presenceAuth:v18 completion:v79];

    objc_destroyWeak(&v87);
    objc_destroyWeak(buf);
LABEL_37:

LABEL_38:
    goto LABEL_39;
  }

  v51 = objc_autoreleasePoolPush();
  v52 = v14;
  v53 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
  {
    v54 = HMFGetLogIdentifier();
    *buf = 138543362;
    v89 = v54;
    _os_log_impl(&dword_229538000, v53, OS_LOG_TYPE_INFO, "%{public}@Remote user is nil", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v51);
  v17 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
  if (v12)
  {
    v12[2](v12, v17);
  }

LABEL_39:

  v69 = *MEMORY[0x277D85DE8];
}

void __79__HMDHomePresenceMonitor_handleUserHomePresencePayload_device_user_completion___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 88));
  if (WeakRetained)
  {
    v3 = objc_autoreleasePoolPush();
    v4 = WeakRetained;
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = HMFGetLogIdentifier();
      v7 = [*(a1 + 32) user];
      v8 = *(a1 + 32);
      v9 = *(a1 + 40);
      v17 = 138544130;
      v18 = v6;
      v19 = 2112;
      v20 = v7;
      v21 = 2112;
      v22 = v8;
      v23 = 2112;
      v24 = v9;
      _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Updated presence for user %@ from %@ to %@", &v17, 0x2Au);
    }

    objc_autoreleasePoolPop(v3);
    os_unfair_lock_lock_with_options();
    v10 = *&v4[16]._os_unfair_lock_opaque;
    v11 = *(a1 + 40);
    v12 = [*(a1 + 48) uuid];
    [v10 setObject:v11 forKeyedSubscript:v12];

    [*(a1 + 40) setLastLocalActivityUpdateTimeStampInWorkingStore:0];
    os_unfair_lock_unlock(v4 + 14);
    v13 = *(a1 + 56);
    v14 = [*(a1 + 40) user];
    [(os_unfair_lock_s *)v4 _saveUserPresenceToWorkingStore:v13 forUser:v14];

    v15 = *(a1 + 80);
    if (v15)
    {
      (*(v15 + 16))(v15, 0);
    }

    [(os_unfair_lock_s *)v4 _evaluatePresence:*(a1 + 64) newUserPresence:*(a1 + 40) presenceStatusUpdateReason:*(a1 + 72)];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)handleUserPresenceUpdateNotification:(id)a3
{
  v4 = a3;
  v5 = [(HMDHomePresenceBase *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__HMDHomePresenceMonitor_handleUserPresenceUpdateNotification___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __63__HMDHomePresenceMonitor_handleUserPresenceUpdateNotification___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 40) userInfo];
    v14 = 138543618;
    v15 = v5;
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Received presence update notification with note %@", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = +[HMDAppleAccountManager sharedManager];
  v8 = [v7 device];

  v9 = [*(a1 + 32) home];
  v10 = [v9 currentUser];

  v11 = *(a1 + 32);
  v12 = [*(a1 + 40) userInfo];
  [v11 handleUserHomePresencePayload:v12 device:v8 user:v10 completion:0];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)handleUserPresenceUpdate:(id)a3
{
  v4 = a3;
  v5 = [(HMDHomePresenceBase *)self home];
  v6 = [v4 userForHome:v5];

  v7 = [v4 messagePayload];
  v8 = [v4 remoteSourceDevice];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __51__HMDHomePresenceMonitor_handleUserPresenceUpdate___block_invoke;
  v10[3] = &unk_27868A250;
  v11 = v4;
  v9 = v4;
  [(HMDHomePresenceMonitor *)self handleUserHomePresencePayload:v7 device:v8 user:v6 completion:v10];
}

- (void)removeUser:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDHomePresenceMonitor *)self presenceMap];
  v6 = [v4 uuid];
  v7 = [v5 objectForKeyedSubscript:v6];

  if (v7)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v22 = v11;
      v23 = 2112;
      v24 = v4;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Removing user %@ from the presence map", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    os_unfair_lock_lock_with_options();
    presenceMap = v9->_presenceMap;
    v13 = [v4 uuid];
    [(NSMutableDictionary *)presenceMap removeObjectForKey:v13];

    os_unfair_lock_unlock(&v9->_lock);
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"Removed user : %@", v4];
    [(HMDHomePresenceMonitor *)v9 _reEvaluatePresenceWithReason:v14];
  }

  v15 = objc_autoreleasePoolPush();
  v16 = self;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = HMFGetLogIdentifier();
    v19 = [(HMDHomePresenceMonitor *)v16 presenceMap];
    *buf = 138543874;
    v22 = v18;
    v23 = 2112;
    v24 = v4;
    v25 = 2112;
    v26 = v19;
    _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Presence map after removing user : %@, %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v15);
  v20 = *MEMORY[0x277D85DE8];
}

- (void)addNewUser:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543618;
    v11 = v8;
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Adding new user %@ to the presence map", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  [(HMDHomePresenceMonitor *)v6 _addUser:v4];
  [(HMDHomePresenceMonitor *)v6 _evaluatePresence:0 newUserPresence:0 presenceStatusUpdateReason:0];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_addUser:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 uuid];

  if (v5)
  {
    os_unfair_lock_lock_with_options();
    v6 = [[HMDUserPresence alloc] initWithUser:v4 presenceRegionStatus:0];
    presenceMap = self->_presenceMap;
    v8 = [v4 uuid];
    [(NSMutableDictionary *)presenceMap setObject:v6 forKeyedSubscript:v8];

    os_unfair_lock_unlock(&self->_lock);
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [(HMDHomePresenceMonitor *)v10 presenceMap];
      v16 = 138543874;
      v17 = v12;
      v18 = 2112;
      v19 = v4;
      v20 = 2112;
      v21 = v13;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Presence map after adding new user : %@, %@", &v16, 0x20u);
    }
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v16 = 138543618;
      v17 = v14;
      v18 = 2112;
      v19 = v4;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@UUID for user %@ is nil, not adding it to the monitor map.", &v16, 0x16u);
    }
  }

  objc_autoreleasePoolPop(v9);
  v15 = *MEMORY[0x277D85DE8];
}

- (void)_removeNonExistingUsers
{
  v33 = *MEMORY[0x277D85DE8];
  v2 = [(HMDHomePresenceBase *)self home];
  v3 = [v2 usersSupportingPresence];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v4 = [(HMDHomePresenceMonitor *)self presenceMap];
  obj = [v4 allValues];

  v5 = [obj countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v5)
  {
    v7 = *v25;
    *&v6 = 138543618;
    v21 = v6;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v24 + 1) + 8 * i);
        v10 = [v9 user];
        v11 = [v3 containsObject:v10];

        if ((v11 & 1) == 0)
        {
          v12 = objc_autoreleasePoolPush();
          v13 = self;
          v14 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            v15 = HMFGetLogIdentifier();
            v16 = [v9 user];
            *buf = v21;
            v29 = v15;
            v30 = 2112;
            v31 = v16;
            _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Removing the user %@ from presence map since it isn't part of home anymore", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v12);
          os_unfair_lock_lock_with_options();
          presenceMap = v13->_presenceMap;
          v18 = [v9 user];
          v19 = [v18 uuid];
          [(NSMutableDictionary *)presenceMap removeObjectForKey:v19];

          os_unfair_lock_unlock(&v13->_lock);
        }
      }

      v5 = [obj countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v5);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_preparePresenceMap
{
  v2 = self;
  v33 = *MEMORY[0x277D85DE8];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v3 = [(HMDHomePresenceBase *)self home];
  v4 = [v3 usersSupportingPresence];

  v5 = [v4 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v25;
    *&v6 = 138543618;
    v22 = v6;
    do
    {
      v9 = 0;
      v23 = v7;
      do
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v24 + 1) + 8 * v9);
        v11 = [(HMDHomePresenceMonitor *)v2 presenceMap];
        v12 = [v10 uuid];
        v13 = [v11 objectForKeyedSubscript:v12];

        if (!v13)
        {
          v14 = objc_autoreleasePoolPush();
          v15 = v2;
          v16 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            HMFGetLogIdentifier();
            v17 = v2;
            v18 = v8;
            v20 = v19 = v4;
            *buf = v22;
            v29 = v20;
            v30 = 2112;
            v31 = v10;
            _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Adding home user %@ to the presence map, as it isn't present", buf, 0x16u);

            v4 = v19;
            v8 = v18;
            v2 = v17;
            v7 = v23;
          }

          objc_autoreleasePoolPop(v14);
          [(HMDHomePresenceMonitor *)v15 _addUser:v10];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v4 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v7);
  }

  [(HMDHomePresenceMonitor *)v2 _removeNonExistingUsers];
  v21 = *MEMORY[0x277D85DE8];
}

- (void)_populatePresenceMapFromWorkingStore
{
  v3 = [(HMDHomePresenceBase *)self home];
  v4 = +[HMDCoreData sharedInstance];
  v5 = [v3 uuid];
  v6 = [v4 contextWithHomeUUID:v5];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __62__HMDHomePresenceMonitor__populatePresenceMapFromWorkingStore__block_invoke;
  v9[3] = &unk_27868A010;
  v10 = v3;
  v11 = self;
  v12 = v6;
  v7 = v6;
  v8 = v3;
  [v7 unsafeSynchronousBlock:v9];
}

void __62__HMDHomePresenceMonitor__populatePresenceMapFromWorkingStore__block_invoke(id *a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = [a1[4] uuid];
  v3 = [HMCContext findHomeWithModelID:v2];

  if (v3)
  {
    v4 = MEMORY[0x277CBEB38];
    v5 = [v3 users];
    v6 = [v4 dictionaryWithCapacity:{objc_msgSend(v5, "count")}];

    v7 = [v3 homeMembers];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __62__HMDHomePresenceMonitor__populatePresenceMapFromWorkingStore__block_invoke_76;
    v22[3] = &unk_2786784D0;
    v8 = a1[4];
    v9 = a1[5];
    v23 = v8;
    v24 = v9;
    v10 = v6;
    v25 = v10;
    [v7 hmf_enumerateWithAutoreleasePoolUsingBlock:v22];

    v11 = a1[5];
    os_unfair_lock_lock_with_options();
    objc_storeStrong(a1[5] + 8, v6);
    os_unfair_lock_unlock(v11 + 14);
    v12 = objc_autoreleasePoolPush();
    v13 = a1[5];
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v27 = v15;
      v28 = 2112;
      v29 = v10;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Loaded presence map from working store: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    [a1[5] _preparePresenceMap];
    [a1[6] reset];
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    v17 = a1[5];
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      v20 = [a1[4] uuid];
      *buf = 138543618;
      v27 = v19;
      v28 = 2112;
      v29 = v20;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Did not find the home with model id : %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __62__HMDHomePresenceMonitor__populatePresenceMapFromWorkingStore__block_invoke_76(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) users];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __62__HMDHomePresenceMonitor__populatePresenceMapFromWorkingStore__block_invoke_2;
  v21[3] = &unk_278688680;
  v5 = v3;
  v22 = v5;
  v6 = [v4 na_firstObjectPassingTest:v21];

  if (v6)
  {
    v7 = [HMDUserPresence alloc];
    v8 = [v5 presenceRegionStatus];
    v9 = +[HMDUserPresenceRegion regionWithValue:](HMDUserPresenceRegion, "regionWithValue:", [v8 intValue]);
    v10 = [v5 presenceUpdateTimeStamp];
    v11 = [(HMDUserPresence *)v7 initWithUser:v6 presenceRegionStatus:v9 timeStamp:v10];

    v12 = [v5 lastLocalActivityTimeStamp];
    [(HMDUserPresence *)v11 setLastLocalActivityTimeStamp:v12];

    v13 = [v5 lastLocalActivityTimeStamp];
    [(HMDUserPresence *)v11 setLastLocalActivityUpdateTimeStampInWorkingStore:v13];

    v14 = *(a1 + 48);
    v15 = [v6 uuid];
    [v14 setObject:v11 forKeyedSubscript:v15];
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    v17 = *(a1 + 40);
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543618;
      v24 = v19;
      v25 = 2112;
      v26 = v5;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Did not find the home member [%@] which exist in working store but not in HMDHome.users", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
  }

  v20 = *MEMORY[0x277D85DE8];
}

uint64_t __62__HMDHomePresenceMonitor__populatePresenceMapFromWorkingStore__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 modelID];
  v5 = [v3 uuid];

  v6 = [v4 isEqual:v5];
  return v6;
}

- (void)_handlePrimaryResidentChangedNotification:(id)a3
{
  v4 = [(HMDHomePresenceBase *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__HMDHomePresenceMonitor__handlePrimaryResidentChangedNotification___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(v4, block);
}

uint64_t __68__HMDHomePresenceMonitor__handlePrimaryResidentChangedNotification___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v5;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Loading presence map from working store due to Primary Resident change.", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  [*(a1 + 32) _populatePresenceMapFromWorkingStore];
  result = [*(a1 + 32) _reEvaluatePresenceWithReason:@"Primary resident changed"];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_handlePrivilegeUpdate:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:@"kUserUUIDKey"];

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
    v9 = [(HMDHomePresenceBase *)self workQueue];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __49__HMDHomePresenceMonitor__handlePrivilegeUpdate___block_invoke;
    v15[3] = &unk_27868A750;
    v15[4] = self;
    v15[5] = v8;
    dispatch_async(v9, v15);
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543362;
      v17 = v13;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@User privilege changed but the userInfo does not have the required key inside it.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __49__HMDHomePresenceMonitor__handlePrivilegeUpdate___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) home];
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 32);
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v17 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@User privilege changed: Updating presence map", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = [v2 users];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __49__HMDHomePresenceMonitor__handlePrivilegeUpdate___block_invoke_69;
  v15[3] = &unk_278688680;
  v15[4] = *(a1 + 40);
  v8 = [v7 na_firstObjectPassingTest:v15];

  if (v8)
  {
    if ([v8 privilege] != 2)
    {
      [*(a1 + 32) _addUser:v8];
      [*(a1 + 32) _evaluatePresence:0 newUserPresence:0 presenceStatusUpdateReason:0];
      goto LABEL_12;
    }

    v9 = objc_autoreleasePoolPush();
    v10 = *(a1 + 32);
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543618;
      v17 = v12;
      v18 = 2112;
      v19 = v8;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Pending user cannot be added to the presence map until they are confirmed by accepting the invitation: %@", buf, 0x16u);
LABEL_9:
    }
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = *(a1 + 32);
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [v2 users];
      *buf = 138543618;
      v17 = v12;
      v18 = 2112;
      v19 = v13;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Unable to add the user in the presence map as we could not find it inside the users list in home: %@", buf, 0x16u);

      goto LABEL_9;
    }
  }

  objc_autoreleasePoolPop(v9);
LABEL_12:

  v14 = *MEMORY[0x277D85DE8];
}

uint64_t __49__HMDHomePresenceMonitor__handlePrivilegeUpdate___block_invoke_69(uint64_t a1, void *a2)
{
  v3 = [a2 uuid];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (void)_startAuditTimer
{
  v41 = *MEMORY[0x277D85DE8];
  v3 = [(HMDHomePresenceMonitor *)self timerID];
  if (v3)
  {
    v4 = +[HMDBackgroundTaskManager sharedManager];
    [v4 cancelTaskWithIdentifier:v3 onObserver:self];

    v5 = [(HMDHomePresenceBase *)self home];
    v6 = [v5 primaryResident];
    v7 = [v6 device];

    if ([v7 isCurrentDevice])
    {
      v8 = [MEMORY[0x277CBEAA8] now];
      v9 = [v8 hmf_dateComponents];

      v10 = [v9 minute];
      [v9 setMinute:presenceMonitorAuditInMinutes + v10];
      v11 = [MEMORY[0x277CBEA80] currentCalendar];
      v12 = [v11 dateFromComponents:v9];

      v13 = objc_autoreleasePoolPush();
      v14 = self;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = HMFGetLogIdentifier();
        v17 = [v12 hmf_localTimeDescription];
        *buf = 138543874;
        v36 = v16;
        v37 = 2112;
        v38 = v3;
        v39 = 2112;
        v40 = v17;
        _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Starting the audit timer (%@) to fire at %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v13);
      v18 = +[HMDBackgroundTaskManager sharedManager];
      v34 = 0;
      v19 = [v18 scheduleTaskWithIdentifier:v3 fireDate:v12 onObserver:v14 selector:sel_handleTimerFiredNotification_ error:&v34];
      v20 = v34;

      if ((v19 & 1) == 0)
      {
        v21 = objc_autoreleasePoolPush();
        v22 = v14;
        v23 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v24 = HMFGetLogIdentifier();
          *buf = 138543874;
          v36 = v24;
          v37 = 2112;
          v38 = v3;
          v39 = 2112;
          v40 = v20;
          _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@Failed to start timer %@ with error %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v21);
      }
    }

    else
    {
      v29 = objc_autoreleasePoolPush();
      v30 = self;
      v31 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        v32 = HMFGetLogIdentifier();
        *buf = 138543362;
        v36 = v32;
        _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_INFO, "%{public}@This is not the resident device, not starting the audit timer", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v29);
    }
  }

  else
  {
    v25 = objc_autoreleasePoolPush();
    v26 = self;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = HMFGetLogIdentifier();
      *buf = 138543362;
      v36 = v28;
      _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_ERROR, "%{public}@Unable to start audit timer with nil timer id", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v25);
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (void)_auditPresenceMap
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v7 = [(HMDHomePresenceMonitor *)v4 presenceMap];
    *buf = 138543618;
    v26 = v6;
    v27 = 2112;
    v28 = v7;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Auditing the presence map %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  [(HMDHomePresenceMonitor *)v4 _removeNonExistingUsers];
  v8 = [(HMDHomePresenceMonitor *)v4 presenceMap];
  v9 = [(HMDHomePresenceBase *)v4 home];
  v10 = [v9 primaryResident];
  v11 = [v10 device];

  v12 = [v11 isCurrentDevice];
  v13 = objc_autoreleasePoolPush();
  v14 = v4;
  v15 = HMFGetOSLogHandle();
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_INFO);
  if (v12)
  {
    if (v16)
    {
      v17 = HMFGetLogIdentifier();
      v18 = [v11 name];
      v19 = [v11 identifier];
      *buf = 138543874;
      v26 = v17;
      v27 = 2112;
      v28 = v18;
      v29 = 2112;
      v30 = v19;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@This device is the primary resident: [%@ / %@]", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v13);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __43__HMDHomePresenceMonitor__auditPresenceMap__block_invoke;
    v24[3] = &unk_278670CD0;
    v24[4] = v14;
    v20 = v24;
  }

  else
  {
    if (v16)
    {
      v21 = HMFGetLogIdentifier();
      v22 = [v11 identifier];
      *buf = 138543618;
      v26 = v21;
      v27 = 2112;
      v28 = v22;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@This device is not the primary resident : %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    v20 = &__block_literal_global_62;
  }

  [v8 enumerateKeysAndObjectsUsingBlock:v20];

  v23 = *MEMORY[0x277D85DE8];
}

void __43__HMDHomePresenceMonitor__auditPresenceMap__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [v6 user];
  v8 = [v7 presenceAuthStatus];
  v9 = [v8 value];

  if (v9 == 1)
  {
    v10 = [v6 presenceRegionStatus];

    if (v10)
    {
      v11 = [v6 updateTimestamp];

      if (v11)
      {
        v12 = [v6 updateTimestamp];
        [v12 timeIntervalSinceNow];
        v14 = fabs(v13);

        v15 = (60 * (presenceMonitorRefreshGracePeriodInMinutes + presenceFeedRefreshInMinutes));
        v16 = objc_autoreleasePoolPush();
        v17 = *(a1 + 32);
        v18 = HMFGetOSLogHandle();
        v19 = os_log_type_enabled(v18, OS_LOG_TYPE_INFO);
        if (v14 <= v15)
        {
          if (v19)
          {
            v21 = HMFGetLogIdentifier();
            v23 = 138544130;
            v24 = v21;
            v25 = 2112;
            v26 = v6;
            v27 = 2048;
            v28 = v14;
            v29 = 2048;
            v30 = v15;
            _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@%@ update is still valid as the time since last update %lf is less than allowed %lf", &v23, 0x2Au);
          }

          objc_autoreleasePoolPop(v16);
        }

        else
        {
          if (v19)
          {
            v20 = HMFGetLogIdentifier();
            v23 = 138544130;
            v24 = v20;
            v25 = 2112;
            v26 = v6;
            v27 = 2048;
            v28 = v14;
            v29 = 2048;
            v30 = v15;
            _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@%@ update is stale as the time since last update %lf is more than allowed %lf", &v23, 0x2Au);
          }

          objc_autoreleasePoolPop(v16);
          [v6 setPresenceRegionStatus:0];
        }
      }
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)handleTimerFiredNotification:(id)a3
{
  v4 = [a3 userInfo];
  v8 = [v4 hmf_stringForKey:@"HMD.BGTM.NK"];

  v5 = [(HMDHomePresenceMonitor *)self timerID];
  v6 = HMFEqualObjects();

  if (v6)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"BTM Timer fired with ID: %@", v8];
    [(HMDHomePresenceMonitor *)self _reEvaluatePresenceWithReason:v7];
  }
}

- (void)_reEvaluatePresenceWithReason:(id)a3
{
  v4 = a3;
  v5 = [(HMDHomePresenceBase *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__HMDHomePresenceMonitor__reEvaluatePresenceWithReason___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

uint64_t __56__HMDHomePresenceMonitor__reEvaluatePresenceWithReason___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v9 = 138543618;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Re-evaluating presence due to reason: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 32) _evaluatePresence:0 newUserPresence:0 presenceStatusUpdateReason:0];
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)setCurrentHomePresence:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  currentHomePresence = self->_currentHomePresence;
  self->_currentHomePresence = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (HMDHomePresence)currentHomePresence
{
  os_unfair_lock_lock_with_options();
  v3 = self->_currentHomePresence;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSDictionary)presenceMap
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSMutableDictionary *)self->_presenceMap copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)_registerForMessages
{
  v20[2] = *MEMORY[0x277D85DE8];
  v19.receiver = self;
  v19.super_class = HMDHomePresenceMonitor;
  [(HMDHomePresenceBase *)&v19 _registerForMessages];
  v3 = +[(HMDRemoteMessagePolicy *)HMDMutableRemoteMessagePolicy];
  [v3 setRoles:{objc_msgSend(v3, "roles") | 4}];
  v4 = [v3 copy];
  v5 = [(HMDHomePresenceBase *)self home];
  v6 = [(HMDHomePresenceBase *)self msgDispatcher];
  v20[0] = v4;
  v7 = [HMDUserMessagePolicy userMessagePolicyWithHome:v5 userPrivilege:5 remoteAccessRequired:0];
  v20[1] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
  [v6 registerForMessage:@"kRemoteUpdateUserPresenceNotificationKey" receiver:self policies:v8 selector:sel_handleUserPresenceUpdate_];

  v9 = [v5 presenceFeeder];
  if (v9)
  {
    v10 = [MEMORY[0x277CCAB98] defaultCenter];
    [v10 addObserver:self selector:sel_handleUserPresenceUpdateNotification_ name:@"HMDUserPresenceUpdateLocalNotification" object:v9];
  }

  v11 = [MEMORY[0x277CCAB98] defaultCenter];
  v12 = [v5 residentDeviceManager];
  [v11 addObserver:self selector:sel__handlePrimaryResidentChangedNotification_ name:@"HMDResidentDeviceManagerUpdatePrimaryResidentNotification" object:v12];

  v13 = [MEMORY[0x277CCAB98] defaultCenter];
  [v13 addObserver:self selector:sel__handlePrivilegeUpdate_ name:@"HMDUserPrivilegeDidChangeNotification" object:0];

  v14 = [MEMORY[0x277CCAB98] defaultCenter];
  [v14 addObserver:self selector:sel__handleRestrictedGuestAllowedPeriodStartedNotification_ name:@"HMDUserRestrictedGuestScheduleStartedNotification" object:0];

  v15 = [MEMORY[0x277CCAB98] defaultCenter];
  [v15 addObserver:self selector:sel__handleRestrictedGuestAllowedPeriodEndedNotification_ name:@"HMDUserRestrictedGuestScheduleEndedNotification" object:0];

  v16 = [MEMORY[0x277CCAB98] defaultCenter];
  [v16 addObserver:self selector:sel_handleCharacteristicsChangedNotification_ name:@"HMDAccessoryCharacteristicsChangedNotification" object:0];

  v17 = [MEMORY[0x277CCAB98] defaultCenter];
  [v17 addObserver:self selector:sel_handleMatterLockStateChangedNotification_ name:@"HMDAccessoryMatterLockStateChangedNotification" object:0];

  v18 = *MEMORY[0x277D85DE8];
}

- (void)configure:(id)a3 messageDispatcher:(id)a4
{
  v10.receiver = self;
  v10.super_class = HMDHomePresenceMonitor;
  [(HMDHomePresenceBase *)&v10 configure:a3 messageDispatcher:a4];
  v5 = MEMORY[0x277CCACA8];
  v6 = [(HMDHomePresenceBase *)self presenceMonitorMessageTargetUUID];
  v7 = [v6 UUIDString];
  v8 = [v5 stringWithFormat:@"presence.monitor/%@", v7];
  timerID = self->_timerID;
  self->_timerID = v8;

  [(HMDHomePresenceMonitor *)self _populatePresenceMapFromWorkingStore];
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = HMDHomePresenceMonitor;
  [(HMDHomePresenceMonitor *)&v4 dealloc];
}

- (HMDHomePresenceMonitor)init
{
  v6.receiver = self;
  v6.super_class = HMDHomePresenceMonitor;
  v2 = [(HMDHomePresenceMonitor *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    presenceMap = v2->_presenceMap;
    v2->_presenceMap = v3;

    v2->_lock._os_unfair_lock_opaque = 0;
  }

  return v2;
}

+ (id)interestingServiceTypeToCharacteristicTypesMap
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = *MEMORY[0x277CD0EB0];
  v6 = *MEMORY[0x277CCFB40];
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:&v6 count:1];
  v8[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_18266 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_18266, &__block_literal_global_18267);
  }

  v3 = logCategory__hmf_once_v1_18268;

  return v3;
}

void __37__HMDHomePresenceMonitor_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_18268;
  logCategory__hmf_once_v1_18268 = v1;
}

@end