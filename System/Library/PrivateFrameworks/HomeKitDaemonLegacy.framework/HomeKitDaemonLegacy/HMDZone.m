@interface HMDZone
+ (id)messageBindingForDispatcher:(id)a3 message:(id)a4 receiver:(id)a5;
- (BOOL)_handleSetRoomsTransactionWithRoomUUIDStrings:(id)a3 error:(id *)a4;
- (BOOL)updateZoneWithModel:(id)a3 message:(id)a4 error:(id *)a5;
- (HMDHome)home;
- (HMDZone)initWithCoder:(id)a3;
- (HMDZone)initWithName:(id)a3 uuid:(id)a4 home:(id)a5;
- (NSArray)roomUUIDs;
- (NSArray)rooms;
- (NSDictionary)assistantObject;
- (NSString)name;
- (NSString)urlString;
- (id)_checkForAddValidity:(id)a3;
- (id)_initWithCoder:(id)a3;
- (id)backingStoreObjects:(int64_t)a3;
- (id)dumpStateWithPrivacyLevel:(unint64_t)a3;
- (id)modelObjectWithChangeType:(unint64_t)a3;
- (void)_handleAddRoom:(id)a3;
- (void)_handleRemoveRoom:(id)a3;
- (void)_handleRename:(id)a3;
- (void)_registerForMessages;
- (void)addRoomIfNotPresent:(id)a3;
- (void)configure:(id)a3 queue:(id)a4;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)removeRoom:(id)a3;
- (void)setName:(id)a3;
- (void)transactionObjectUpdated:(id)a3 newValues:(id)a4 message:(id)a5;
@end

@implementation HMDZone

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (id)backingStoreObjects:(int64_t)a3
{
  v7[1] = *MEMORY[0x277D85DE8];
  v3 = [(HMDZone *)self modelObjectWithChangeType:1];
  v7[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)modelObjectWithChangeType:(unint64_t)a3
{
  v5 = [HMDZoneModel alloc];
  v6 = [(HMDZone *)self uuid];
  v7 = [(HMDZone *)self home];
  v8 = [v7 uuid];
  v9 = [(HMDBackingStoreModelObject *)v5 initWithObjectChangeType:a3 uuid:v6 parentUUID:v8];

  v10 = [(HMDZone *)self name];
  [(HMDZoneModel *)v9 setName:v10];

  v11 = [(HMDZone *)self roomUUIDs];
  v12 = [v11 mutableCopy];
  [(HMDZoneModel *)v9 setRoomUUIDs:v12];

  return v9;
}

- (void)transactionObjectUpdated:(id)a3 newValues:(id)a4 message:(id)a5
{
  v31 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v9;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  if (v13)
  {
    v24 = 0;
    [(HMDZone *)self updateZoneWithModel:v13 message:v10 error:&v24];
    v14 = v24;
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v16 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543874;
      v26 = v18;
      v27 = 2112;
      v28 = v11;
      v29 = 2112;
      v30 = objc_opt_class();
      v19 = v30;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "%{public}@Unknown model object (%@) sent to [%@ transactionObjectUpdated]", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v15);
    v14 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
  }

  v20 = v14;
  v21 = [v10 responseHandler];

  if (v21)
  {
    v22 = [v10 responseHandler];
    (v22)[2](v22, v20, 0);
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (BOOL)updateZoneWithModel:(id)a3 message:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [a4 transactionResult];
  v10 = [v8 name];
  if (v10)
  {
    v11 = v10;
    v12 = [(HMDZone *)self name];
    v13 = [v8 name];
    v14 = HMFEqualObjects();

    if ((v14 & 1) == 0)
    {
      v15 = [v8 name];
      v16 = [v15 hm_truncatedNameString];

      v17 = [(HMDZone *)self home];
      v18 = [(HMDZone *)self name];
      v19 = [v17 replaceName:v18 withNewName:v16];

      [(HMDZone *)self setName:v16];
      [v9 markChanged];
      [v9 markSaveToAssistant];
    }
  }

  v20 = [v8 roomUUIDs];
  if (v20)
  {
    if (![(HMDZone *)self _handleSetRoomsTransactionWithRoomUUIDStrings:v20 error:a5])
    {
      v21 = 0;
      goto LABEL_9;
    }

    [v9 markChanged];
    [v9 markSaveToAssistant];
  }

  v21 = 1;
LABEL_9:

  return v21;
}

- (void)removeRoom:(id)a3
{
  v6 = a3;
  v4 = [v6 uuid];
  v5 = [v4 UUIDString];

  os_unfair_lock_lock_with_options();
  [(NSMutableArray *)self->_roomUUIDs removeObject:v5];
  [(NSMutableDictionary *)self->_currentRooms setObject:0 forKeyedSubscript:v5];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)addRoomIfNotPresent:(id)a3
{
  v7 = a3;
  v4 = [v7 uuid];
  v5 = [v4 UUIDString];

  os_unfair_lock_lock_with_options();
  v6 = [(NSMutableDictionary *)self->_currentRooms objectForKeyedSubscript:v5];

  if (!v6)
  {
    [(NSMutableDictionary *)self->_currentRooms setObject:v7 forKeyedSubscript:v5];
    [(NSMutableArray *)self->_roomUUIDs addObject:v5];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)_handleSetRoomsTransactionWithRoomUUIDStrings:(id)a3 error:(id *)a4
{
  v82 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v57 = self;
  v58 = [(HMDZone *)self home];
  v59 = [MEMORY[0x277CBEB38] dictionary];
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  obj = v5;
  v6 = [obj countByEnumeratingWithState:&v64 objects:v81 count:16];
  if (v6)
  {
    v7 = *v65;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v65 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v64 + 1) + 8 * i);
        v10 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v9];
        v11 = [v58 roomWithUUID:v10];
        if (v11)
        {
          [v59 setObject:v11 forKeyedSubscript:v9];
        }
      }

      v6 = [obj countByEnumeratingWithState:&v64 objects:v81 count:16];
    }

    while (v6);
  }

  v12 = [obj mutableCopy];
  v51 = [MEMORY[0x277CBEB58] set];
  v50 = 8;
  os_unfair_lock_lock_with_options();
  v13 = [(NSMutableDictionary *)v57->_currentRooms allKeys];
  [v12 removeObjectsInArray:v13];

  v14 = [(NSMutableDictionary *)v57->_currentRooms allKeys];
  v53 = [v14 mutableCopy];

  [v53 removeObjectsInArray:obj];
  v15 = objc_autoreleasePoolPush();
  v16 = v57;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = HMFGetLogIdentifier();
    v19 = [(NSMutableDictionary *)v57->_currentRooms allKeys];
    name = v16->_name;
    v21 = [v58 name];
    *buf = 138544386;
    v72 = v18;
    v73 = 2112;
    v74 = v19;
    v75 = 2112;
    v76 = obj;
    v77 = 2112;
    v78 = name;
    v79 = 2112;
    v80 = v21;
    _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@About to update the zone from %@ to %@ in zone with name (%@) from home %@", buf, 0x34u);
  }

  objc_autoreleasePoolPop(v15);
  v22 = objc_autoreleasePoolPush();
  v23 = v16;
  v24 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = HMFGetLogIdentifier();
    *buf = 138543618;
    v72 = v25;
    v73 = 2112;
    v74 = v53;
    _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@Removing Rooms: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v22);
  v26 = objc_autoreleasePoolPush();
  v52 = v23;
  v27 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v28 = HMFGetLogIdentifier();
    *buf = 138543618;
    v72 = v28;
    v73 = 2112;
    v74 = v12;
    _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_DEFAULT, "%{public}@Adding Rooms: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v26);
  [v51 addObjectsFromArray:v12];
  [v51 addObjectsFromArray:v53];
  v29 = [obj mutableCopy];
  roomUUIDs = v52->_roomUUIDs;
  v52->_roomUUIDs = v29;

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v54 = v12;
  v31 = [v54 countByEnumeratingWithState:&v60 objects:v70 count:16];
  if (v31)
  {
    v32 = *v61;
    v33 = 1;
    do
    {
      for (j = 0; j != v31; ++j)
      {
        if (*v61 != v32)
        {
          objc_enumerationMutation(v54);
        }

        v35 = *(*(&v60 + 1) + 8 * j);
        v36 = [v59 objectForKeyedSubscript:{v35, v50}];
        if (v36)
        {
          [(NSMutableDictionary *)v57->_currentRooms setObject:v36 forKeyedSubscript:v35];
        }

        else
        {
          v37 = objc_autoreleasePoolPush();
          v38 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            v39 = HMFGetLogIdentifier();
            v40 = [v58 name];
            *buf = 138543874;
            v72 = v39;
            v73 = 2112;
            v74 = v35;
            v75 = 2112;
            v76 = v40;
            _os_log_impl(&dword_2531F8000, v38, OS_LOG_TYPE_ERROR, "%{public}@_handleSetRoomsZoneTransaction:message: Couldn't find the room with UUID %@ in home %@.", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v37);
          if (a4)
          {
            [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
            *a4 = v33 = 0;
          }

          else
          {
            v33 = 0;
          }
        }
      }

      v31 = [v54 countByEnumeratingWithState:&v60 objects:v70 count:16];
    }

    while (v31);
  }

  else
  {
    v33 = 1;
  }

  [(NSMutableDictionary *)v57->_currentRooms removeObjectsForKeys:v53];
  os_unfair_lock_unlock((v57 + v50));
  if ((v33 & (v58 != 0)) != 0)
  {
    v68[0] = *MEMORY[0x277CD0640];
    v41 = [v58 uuid];
    v42 = [v41 UUIDString];
    v69[0] = v42;
    v68[1] = *MEMORY[0x277CD27B0];
    v43 = [(HMDZone *)v52 name];
    v69[1] = v43;
    v68[2] = *MEMORY[0x277CD27B8];
    v44 = [(HMDZone *)v52 uuid];
    v45 = [v44 UUIDString];
    v69[2] = v45;
    v68[3] = HMDZoneRoomsAffectedKey;
    v46 = [v51 copy];
    v69[3] = v46;
    v47 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v69 forKeys:v68 count:4];

    logAndPostNotification(@"HMDZoneRoomsUpdatedNotification", v52, v47);
  }

  v48 = *MEMORY[0x277D85DE8];
  return v33 & 1;
}

- (void)_handleRename:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 stringForKey:*MEMORY[0x277CD27B0]];
  v6 = HMMaxLengthForNaming();
  if ([v5 length] <= v6)
  {
    v11 = [(HMDZone *)self home];
    v12 = [(HMDZone *)self name];
    v13 = [v11 replaceName:v12 withNewName:v5];

    if (v13)
    {
      [v4 respondWithError:v13];
    }

    else
    {
      v14 = [HMDZoneModel alloc];
      v15 = [(HMDZone *)self uuid];
      v16 = [v11 uuid];
      v17 = [(HMDBackingStoreModelObject *)v14 initWithObjectChangeType:2 uuid:v15 parentUUID:v16];

      [(HMDZoneModel *)v17 setName:v5];
      v18 = [v11 backingStore];
      v19 = [v4 name];
      v20 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
      v21 = [v18 transaction:v19 options:v20];

      [v21 add:v17];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __25__HMDZone__handleRename___block_invoke;
      v23[3] = &unk_279734D88;
      v24 = v4;
      v25 = self;
      v26 = v5;
      [v21 run:v23];
    }
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543362;
      v28 = v10;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_ERROR, "%{public}@New name is longer than the pre-defined max length", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    v11 = [MEMORY[0x277CCA9B8] hmErrorWithCode:46];
    [v4 respondWithError:v11];
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __25__HMDZone__handleRename___block_invoke(uint64_t a1, uint64_t a2)
{
  v22[3] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = *MEMORY[0x277D85DE8];

    [v3 respondWithError:a2];
  }

  else
  {
    v19 = *MEMORY[0x277CD0640];
    v5 = [*(a1 + 40) home];
    v6 = [v5 uuid];
    v7 = [v6 UUIDString];
    v22[0] = v7;
    v20 = *MEMORY[0x277CD27B0];
    v8 = v20;
    v9 = [*(a1 + 40) name];
    v22[1] = v9;
    v21 = *MEMORY[0x277CD27B8];
    v10 = [*(a1 + 40) uuid];
    v11 = [v10 UUIDString];
    v22[2] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v19 count:3];

    logAndPostNotification(@"HMDZoneNameChangedNotification", *(a1 + 40), v12);
    v13 = *(a1 + 32);
    v14 = *(a1 + 48);
    v17 = v8;
    v18 = v14;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    [v13 respondWithPayload:v15];

    v16 = *MEMORY[0x277D85DE8];
  }
}

- (void)_handleRemoveRoom:(id)a3
{
  v4 = a3;
  v5 = [v4 uuidForKey:*MEMORY[0x277CD0D40]];
  v6 = [(HMDZone *)self home];
  v7 = [HMDZoneModel alloc];
  v8 = [(HMDZone *)self uuid];
  v9 = [v6 uuid];
  v10 = [(HMDBackingStoreModelObject *)v7 initWithObjectChangeType:2 uuid:v8 parentUUID:v9];

  os_unfair_lock_lock_with_options();
  roomUUIDs = self->_roomUUIDs;
  v12 = [v5 UUIDString];
  LODWORD(roomUUIDs) = [(NSMutableArray *)roomUUIDs containsObject:v12];

  if (roomUUIDs)
  {
    v13 = self->_roomUUIDs;
    v14 = [v5 UUIDString];
    [(NSMutableArray *)v13 removeObject:v14];

    v15 = [(NSMutableArray *)self->_roomUUIDs copy];
    [(HMDZoneModel *)v10 setRoomUUIDs:v15];

    os_unfair_lock_unlock(&self->_lock);
    v16 = [v6 backingStore];
    v17 = [v4 name];
    v18 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
    v19 = [v16 transaction:v17 options:v18];

    [v19 add:v10];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __29__HMDZone__handleRemoveRoom___block_invoke;
    v21[3] = &unk_279734D88;
    v21[4] = self;
    v22 = v5;
    v23 = v4;
    [v19 run:v21];
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
    v20 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    [v4 respondWithError:v20];
  }
}

void __29__HMDZone__handleRemoveRoom___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  if (v6)
  {
    v3 = *(a1 + 32);
    os_unfair_lock_lock_with_options();
    v4 = *(*(a1 + 32) + 16);
    v5 = [*(a1 + 40) UUIDString];
    [v4 addObject:v5];

    os_unfair_lock_unlock(v3 + 2);
    [*(a1 + 48) respondWithError:v6];
  }

  else
  {
    [*(a1 + 48) respondWithSuccess];
  }
}

- (id)_checkForAddValidity:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  v5 = [(HMDZone *)self home];
  v6 = [v5 roomWithUUID:v4];
  v7 = v6;
  v8 = 2;
  if (!v5 || !v6)
  {
    goto LABEL_9;
  }

  v9 = [v5 roomForEntireHome];
  v10 = [v9 uuid];
  v11 = [v4 isEqual:v10];

  if (v11)
  {
    v8 = 24;
LABEL_9:
    v19 = [MEMORY[0x277CCA9B8] hmErrorWithCode:v8];
    goto LABEL_10;
  }

  v12 = [v7 home];
  v13 = [v12 uuid];
  v14 = [v5 uuid];
  v15 = [v13 isEqual:v14];

  if (!v15)
  {
    v8 = 11;
    goto LABEL_9;
  }

  roomUUIDs = self->_roomUUIDs;
  v17 = [v7 uuid];
  v18 = [v17 UUIDString];
  LOBYTE(roomUUIDs) = [(NSMutableArray *)roomUUIDs containsObject:v18];

  if (roomUUIDs)
  {
    v8 = 1;
    goto LABEL_9;
  }

  v22 = [(NSMutableArray *)self->_roomUUIDs count];
  if (v22 >= maximumRoomsPerZone)
  {
    v23 = objc_autoreleasePoolPush();
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = HMFGetLogIdentifier();
      v26 = [v7 name];
      name = self->_name;
      v28 = [v5 name];
      v29 = 138544130;
      v30 = v25;
      v31 = 2112;
      v32 = v26;
      v33 = 2112;
      v34 = name;
      v35 = 2112;
      v36 = v28;
      _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_INFO, "%{public}@Can't add room %@ to zone %@ in home %@; already at maximum rooms for zone", &v29, 0x2Au);
    }

    objc_autoreleasePoolPop(v23);
    v8 = 49;
    goto LABEL_9;
  }

  v19 = 0;
LABEL_10:

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (void)_handleAddRoom:(id)a3
{
  v4 = a3;
  v5 = [v4 uuidForKey:*MEMORY[0x277CD0D40]];
  v6 = [(HMDZone *)self home];
  v7 = [HMDZoneModel alloc];
  v8 = [(HMDZone *)self uuid];
  v9 = [v6 uuid];
  v10 = [(HMDBackingStoreModelObject *)v7 initWithObjectChangeType:2 uuid:v8 parentUUID:v9];

  os_unfair_lock_lock_with_options();
  v11 = [(HMDZone *)self _checkForAddValidity:v5];
  if (v11)
  {
    os_unfair_lock_unlock(&self->_lock);
    [v4 respondWithError:v11];
  }

  else
  {
    roomUUIDs = self->_roomUUIDs;
    v13 = [v5 UUIDString];
    [(NSMutableArray *)roomUUIDs addObject:v13];

    v14 = [(NSMutableArray *)self->_roomUUIDs copy];
    [(HMDZoneModel *)v10 setRoomUUIDs:v14];

    os_unfair_lock_unlock(&self->_lock);
    v15 = [v6 backingStore];
    v16 = [v4 name];
    v17 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
    v18 = [v15 transaction:v16 options:v17];

    [v18 add:v10];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __26__HMDZone__handleAddRoom___block_invoke;
    v19[3] = &unk_279734D88;
    v19[4] = self;
    v20 = v5;
    v21 = v4;
    [v18 run:v19];
  }
}

void __26__HMDZone__handleAddRoom___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  if (v6)
  {
    v3 = *(a1 + 32);
    os_unfair_lock_lock_with_options();
    v4 = *(*(a1 + 32) + 16);
    v5 = [*(a1 + 40) UUIDString];
    [v4 removeObject:v5];

    os_unfair_lock_unlock(v3 + 2);
    [*(a1 + 48) respondWithError:v6];
  }

  else
  {
    [*(a1 + 48) respondWithSuccess];
  }
}

- (void)_registerForMessages
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = [(HMDZone *)self home];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 administratorHandler];
    v6 = *MEMORY[0x277CCF1F8];
    v7 = [HMDConfigurationMessagePolicy policyWithOperationTypes:2];
    v27[0] = v7;
    v8 = [HMDXPCMessagePolicy policyWithEntitlements:1];
    v27[1] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];
    [v5 registerForMessage:v6 receiver:self policies:v9 selector:sel__handleAddRoom_];

    v10 = [v4 administratorHandler];
    v11 = *MEMORY[0x277CD0CA0];
    v12 = [HMDConfigurationMessagePolicy policyWithOperationTypes:2];
    v26[0] = v12;
    v13 = [HMDXPCMessagePolicy policyWithEntitlements:1];
    v26[1] = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
    [v10 registerForMessage:v11 receiver:self policies:v14 selector:sel__handleRemoveRoom_];

    v15 = [v4 administratorHandler];
    v16 = *MEMORY[0x277CD2558];
    v17 = [HMDConfigurationMessagePolicy policyWithOperationTypes:2];
    v18 = [HMDXPCMessagePolicy policyWithEntitlements:1, v17];
    v25[1] = v18;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
    [v15 registerForMessage:v16 receiver:self policies:v19 selector:sel__handleRename_];
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    v21 = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543362;
      v29 = v23;
      _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_ERROR, "%{public}@Not going to register for messages as home is nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v20);
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)encodeWithCoder:(id)a3
{
  v11 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = [(HMDZone *)self home];
  [v11 encodeConditionalObject:v5 forKey:@"home"];

  v6 = [(HMDZone *)self name];
  [v11 encodeObject:v6 forKey:@"zoneName"];

  v7 = [(HMDZone *)self uuid];
  v8 = [v7 UUIDString];
  [v11 encodeObject:v8 forKey:@"zoneUUID"];

  v9 = [(HMDZone *)self rooms];
  [v11 hm_encodeArrayOfConditionalObjects:v9 forKey:@"rooms"];

  v10 = [(HMDZone *)self roomUUIDs];
  [v11 encodeObject:v10 forKey:@"roomUUID"];

  objc_autoreleasePoolPop(v4);
}

- (id)_initWithCoder:(id)a3
{
  v41[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"zoneName"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"zoneUUID"];
  v7 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v6];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"home"];
  v9 = [(HMDZone *)self initWithName:v5 uuid:v7 home:v8];
  if (v9)
  {
    v35 = v8;
    v10 = [MEMORY[0x277CBEB18] array];
    v11 = [v4 hm_decodeArrayOfConditionalObjects:objc_opt_class() forKey:@"rooms"];
    [v10 setArray:v11];

    v12 = MEMORY[0x277CBEB98];
    v41[0] = objc_opt_class();
    v41[1] = objc_opt_class();
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:2];
    v14 = [v12 setWithArray:v13];
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"roomUUID"];

    v34 = v10;
    if ([v15 count])
    {
      [(HMDZone *)v9 _handleSetRoomsTransactionWithRoomUUIDStrings:v15 error:0];
    }

    else
    {
      v30 = v15;
      v31 = v7;
      v32 = v5;
      v33 = v4;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v16 = v10;
      v17 = [v16 countByEnumeratingWithState:&v36 objects:v40 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v37;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v37 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = *(*(&v36 + 1) + 8 * i);
            currentRooms = v9->_currentRooms;
            v23 = [v21 uuid];
            v24 = [v23 UUIDString];
            [(NSMutableDictionary *)currentRooms setObject:v21 forKeyedSubscript:v24];
          }

          v18 = [v16 countByEnumeratingWithState:&v36 objects:v40 count:16];
        }

        while (v18);
      }

      v25 = [(NSMutableDictionary *)v9->_currentRooms allKeys];
      v26 = [v25 mutableCopy];
      roomUUIDs = v9->_roomUUIDs;
      v9->_roomUUIDs = v26;

      v5 = v32;
      v4 = v33;
      v7 = v31;
      v15 = v30;
    }

    v8 = v35;
  }

  v28 = *MEMORY[0x277D85DE8];
  return v9;
}

- (HMDZone)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [(HMDZone *)self _initWithCoder:v4];
  objc_autoreleasePoolPop(v5);

  return v6;
}

- (id)dumpStateWithPrivacyLevel:(unint64_t)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
  v6 = MEMORY[0x277CCACA8];
  v7 = [(HMDZone *)self name];
  v8 = [(HMDZone *)self uuid];
  v9 = [v8 UUIDString];
  v10 = [(HMDZone *)self urlString];
  v11 = [v6 stringWithFormat:@"name: %@  uuid: %@, assistantIdentifier: %@", v7, v9, v10];

  [v5 setObject:v11 forKeyedSubscript:*MEMORY[0x277D0F170]];
  v12 = [(HMDZone *)self rooms];
  v13 = [v12 count];

  if (v13)
  {
    v14 = MEMORY[0x277CBEB18];
    v15 = [(HMDZone *)self rooms];
    v16 = [v14 arrayWithCapacity:{objc_msgSend(v15, "count")}];

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v17 = [(HMDZone *)self rooms];
    v18 = [v17 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v26;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v26 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = [*(*(&v25 + 1) + 8 * i) dumpStateWithPrivacyLevel:a3];
          [v16 addObject:v22];
        }

        v19 = [v17 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v19);
    }

    [v5 setObject:v16 forKeyedSubscript:*MEMORY[0x277D0F140]];
  }

  v23 = *MEMORY[0x277D85DE8];

  return v5;
}

- (NSArray)rooms
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSMutableDictionary *)self->_currentRooms allValues];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSArray)roomUUIDs
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSMutableArray *)self->_roomUUIDs copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setName:(id)a3
{
  v7 = a3;
  os_unfair_lock_lock_with_options();
  v4 = [v7 hm_truncatedNameString];
  v5 = [v4 copy];
  name = self->_name;
  self->_name = v5;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)name
{
  os_unfair_lock_lock_with_options();
  v3 = self->_name;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)configure:(id)a3 queue:(id)a4
{
  v6 = a4;
  [(HMDZone *)self setMsgDispatcher:a3];
  [(HMDZone *)self setWorkQueue:v6];

  [(HMDZone *)self _registerForMessages];
}

- (void)dealloc
{
  v3 = [(HMDZone *)self msgDispatcher];
  [v3 deregisterReceiver:self];

  v4 = [(HMDZone *)self home];
  v5 = [v4 administratorHandler];
  [v5 deregisterReceiver:self];

  v6.receiver = self;
  v6.super_class = HMDZone;
  [(HMDZone *)&v6 dealloc];
}

- (HMDZone)initWithName:(id)a3 uuid:(id)a4 home:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v29.receiver = self;
  v29.super_class = HMDZone;
  v11 = [(HMDZone *)&v29 init];
  if (v11)
  {
    v12 = [v8 hm_truncatedNameString];
    v13 = [v12 copy];
    name = v11->_name;
    v11->_name = v13;

    if (v9)
    {
      v15 = [v9 copy];
    }

    else
    {
      v15 = [MEMORY[0x277CCAD78] UUID];
    }

    v16 = v15;
    v17 = [MEMORY[0x277D0F890] hmf_cachedInstanceForNSUUID:v15];
    uuid = v11->_uuid;
    v11->_uuid = v17;

    v19 = spiClientIdentifierForUUID(v11->_uuid);
    v20 = [MEMORY[0x277D0F890] hmf_cachedInstanceForNSUUID:v19];
    spiClientIdentifier = v11->_spiClientIdentifier;
    v11->_spiClientIdentifier = v20;

    objc_storeWeak(&v11->_home, v10);
    v22 = [v10 msgDispatcher];
    msgDispatcher = v11->_msgDispatcher;
    v11->_msgDispatcher = v22;

    v24 = [MEMORY[0x277CBEB38] dictionary];
    currentRooms = v11->_currentRooms;
    v11->_currentRooms = v24;

    v26 = [MEMORY[0x277CBEB18] array];
    roomUUIDs = v11->_roomUUIDs;
    v11->_roomUUIDs = v26;
  }

  return v11;
}

+ (id)messageBindingForDispatcher:(id)a3 message:(id)a4 receiver:(id)a5
{
  v22[3] = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [HMDConfigurationMessagePolicy policyWithOperationTypes:2];
  v7 = [HMDXPCMessagePolicy policyWithEntitlements:1, v6];
  v22[1] = v7;
  v8 = objc_opt_new();
  v22[2] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:3];

  v10 = [v5 name];
  v11 = *MEMORY[0x277CCF1F8];
  LOBYTE(v7) = HMFEqualObjects();

  v12 = [v5 name];
  if (v7)
  {
    v13 = &selRef__handleAddRoom_;
LABEL_7:
    v18 = *v13;
    v19 = HMFCreateMessageBinding();

    goto LABEL_8;
  }

  v14 = *MEMORY[0x277CD0CA0];
  v15 = HMFEqualObjects();

  v12 = [v5 name];
  if (v15)
  {
    v13 = &selRef__handleRemoveRoom_;
    goto LABEL_7;
  }

  v16 = *MEMORY[0x277CD2558];
  v17 = HMFEqualObjects();

  if (v17)
  {
    v12 = [v5 name];
    v13 = &selRef__handleRename_;
    goto LABEL_7;
  }

  v19 = 0;
LABEL_8:

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (NSDictionary)assistantObject
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = [(HMDZone *)self home];
  v4 = [(HMDZone *)self name];
  v5 = v4;
  if (v4 && v3)
  {
    v6 = [v3 name];

    if (v6)
    {
      v21[0] = *MEMORY[0x277D48178];
      v7 = [(HMDZone *)self name:@"objectType"];
      v21[1] = v7;
      v20[2] = @"objectIdentifier";
      v8 = [(HMDZone *)self urlString];
      v21[2] = v8;
      v20[3] = @"objectHome";
      v9 = [v3 name];
      v21[3] = v9;
      v20[4] = @"objectHomeIdentifier";
      v10 = [v3 urlString];
      v20[5] = @"objectReference";
      v21[4] = v10;
      v21[5] = self;
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:6];

      goto LABEL_9;
    }
  }

  else
  {
  }

  v12 = objc_autoreleasePoolPush();
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = HMFGetLogIdentifier();
    v15 = [(HMDZone *)self name];
    v16 = [(HMDZone *)self uuid];
    v17 = [v16 UUIDString];
    *buf = 138544130;
    v23 = v14;
    v24 = 2112;
    v25 = v15;
    v26 = 2112;
    v27 = v17;
    v28 = 2112;
    v29 = v3;
    _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@Skipping because attribute(s) is nil: self %@/%@  self.home %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v12);
  v11 = 0;
LABEL_9:

  v18 = *MEMORY[0x277D85DE8];

  return v11;
}

- (NSString)urlString
{
  v2 = *MEMORY[0x277CCF2C0];
  v3 = [(HMDZone *)self uuid];
  v4 = hm_assistantIdentifier();

  return v4;
}

@end