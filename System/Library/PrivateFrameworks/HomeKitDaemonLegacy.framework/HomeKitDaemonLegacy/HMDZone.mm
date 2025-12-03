@interface HMDZone
+ (id)messageBindingForDispatcher:(id)dispatcher message:(id)message receiver:(id)receiver;
- (BOOL)_handleSetRoomsTransactionWithRoomUUIDStrings:(id)strings error:(id *)error;
- (BOOL)updateZoneWithModel:(id)model message:(id)message error:(id *)error;
- (HMDHome)home;
- (HMDZone)initWithCoder:(id)coder;
- (HMDZone)initWithName:(id)name uuid:(id)uuid home:(id)home;
- (NSArray)roomUUIDs;
- (NSArray)rooms;
- (NSDictionary)assistantObject;
- (NSString)name;
- (NSString)urlString;
- (id)_checkForAddValidity:(id)validity;
- (id)_initWithCoder:(id)coder;
- (id)backingStoreObjects:(int64_t)objects;
- (id)dumpStateWithPrivacyLevel:(unint64_t)level;
- (id)modelObjectWithChangeType:(unint64_t)type;
- (void)_handleAddRoom:(id)room;
- (void)_handleRemoveRoom:(id)room;
- (void)_handleRename:(id)rename;
- (void)_registerForMessages;
- (void)addRoomIfNotPresent:(id)present;
- (void)configure:(id)configure queue:(id)queue;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)removeRoom:(id)room;
- (void)setName:(id)name;
- (void)transactionObjectUpdated:(id)updated newValues:(id)values message:(id)message;
@end

@implementation HMDZone

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (id)backingStoreObjects:(int64_t)objects
{
  v7[1] = *MEMORY[0x277D85DE8];
  v3 = [(HMDZone *)self modelObjectWithChangeType:1];
  v7[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)modelObjectWithChangeType:(unint64_t)type
{
  v5 = [HMDZoneModel alloc];
  uuid = [(HMDZone *)self uuid];
  home = [(HMDZone *)self home];
  uuid2 = [home uuid];
  v9 = [(HMDBackingStoreModelObject *)v5 initWithObjectChangeType:type uuid:uuid parentUUID:uuid2];

  name = [(HMDZone *)self name];
  [(HMDZoneModel *)v9 setName:name];

  roomUUIDs = [(HMDZone *)self roomUUIDs];
  v12 = [roomUUIDs mutableCopy];
  [(HMDZoneModel *)v9 setRoomUUIDs:v12];

  return v9;
}

- (void)transactionObjectUpdated:(id)updated newValues:(id)values message:(id)message
{
  v31 = *MEMORY[0x277D85DE8];
  updatedCopy = updated;
  valuesCopy = values;
  messageCopy = message;
  v11 = valuesCopy;
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
    [(HMDZone *)self updateZoneWithModel:v13 message:messageCopy error:&v24];
    v14 = v24;
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
  responseHandler = [messageCopy responseHandler];

  if (responseHandler)
  {
    responseHandler2 = [messageCopy responseHandler];
    (responseHandler2)[2](responseHandler2, v20, 0);
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (BOOL)updateZoneWithModel:(id)model message:(id)message error:(id *)error
{
  modelCopy = model;
  transactionResult = [message transactionResult];
  name = [modelCopy name];
  if (name)
  {
    v11 = name;
    name2 = [(HMDZone *)self name];
    name3 = [modelCopy name];
    v14 = HMFEqualObjects();

    if ((v14 & 1) == 0)
    {
      name4 = [modelCopy name];
      hm_truncatedNameString = [name4 hm_truncatedNameString];

      home = [(HMDZone *)self home];
      name5 = [(HMDZone *)self name];
      v19 = [home replaceName:name5 withNewName:hm_truncatedNameString];

      [(HMDZone *)self setName:hm_truncatedNameString];
      [transactionResult markChanged];
      [transactionResult markSaveToAssistant];
    }
  }

  roomUUIDs = [modelCopy roomUUIDs];
  if (roomUUIDs)
  {
    if (![(HMDZone *)self _handleSetRoomsTransactionWithRoomUUIDStrings:roomUUIDs error:error])
    {
      v21 = 0;
      goto LABEL_9;
    }

    [transactionResult markChanged];
    [transactionResult markSaveToAssistant];
  }

  v21 = 1;
LABEL_9:

  return v21;
}

- (void)removeRoom:(id)room
{
  roomCopy = room;
  uuid = [roomCopy uuid];
  uUIDString = [uuid UUIDString];

  os_unfair_lock_lock_with_options();
  [(NSMutableArray *)self->_roomUUIDs removeObject:uUIDString];
  [(NSMutableDictionary *)self->_currentRooms setObject:0 forKeyedSubscript:uUIDString];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)addRoomIfNotPresent:(id)present
{
  presentCopy = present;
  uuid = [presentCopy uuid];
  uUIDString = [uuid UUIDString];

  os_unfair_lock_lock_with_options();
  v6 = [(NSMutableDictionary *)self->_currentRooms objectForKeyedSubscript:uUIDString];

  if (!v6)
  {
    [(NSMutableDictionary *)self->_currentRooms setObject:presentCopy forKeyedSubscript:uUIDString];
    [(NSMutableArray *)self->_roomUUIDs addObject:uUIDString];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)_handleSetRoomsTransactionWithRoomUUIDStrings:(id)strings error:(id *)error
{
  v82 = *MEMORY[0x277D85DE8];
  stringsCopy = strings;
  selfCopy = self;
  home = [(HMDZone *)self home];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  obj = stringsCopy;
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
        v11 = [home roomWithUUID:v10];
        if (v11)
        {
          [dictionary setObject:v11 forKeyedSubscript:v9];
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
  allKeys = [(NSMutableDictionary *)selfCopy->_currentRooms allKeys];
  [v12 removeObjectsInArray:allKeys];

  allKeys2 = [(NSMutableDictionary *)selfCopy->_currentRooms allKeys];
  v53 = [allKeys2 mutableCopy];

  [v53 removeObjectsInArray:obj];
  v15 = objc_autoreleasePoolPush();
  v16 = selfCopy;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = HMFGetLogIdentifier();
    allKeys3 = [(NSMutableDictionary *)selfCopy->_currentRooms allKeys];
    name = v16->_name;
    name = [home name];
    *buf = 138544386;
    v72 = v18;
    v73 = 2112;
    v74 = allKeys3;
    v75 = 2112;
    v76 = obj;
    v77 = 2112;
    v78 = name;
    v79 = 2112;
    v80 = name;
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
        v36 = [dictionary objectForKeyedSubscript:{v35, v50}];
        if (v36)
        {
          [(NSMutableDictionary *)selfCopy->_currentRooms setObject:v36 forKeyedSubscript:v35];
        }

        else
        {
          v37 = objc_autoreleasePoolPush();
          v38 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            v39 = HMFGetLogIdentifier();
            name2 = [home name];
            *buf = 138543874;
            v72 = v39;
            v73 = 2112;
            v74 = v35;
            v75 = 2112;
            v76 = name2;
            _os_log_impl(&dword_2531F8000, v38, OS_LOG_TYPE_ERROR, "%{public}@_handleSetRoomsZoneTransaction:message: Couldn't find the room with UUID %@ in home %@.", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v37);
          if (error)
          {
            [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
            *error = v33 = 0;
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

  [(NSMutableDictionary *)selfCopy->_currentRooms removeObjectsForKeys:v53];
  os_unfair_lock_unlock((selfCopy + v50));
  if ((v33 & (home != 0)) != 0)
  {
    v68[0] = *MEMORY[0x277CD0640];
    uuid = [home uuid];
    uUIDString = [uuid UUIDString];
    v69[0] = uUIDString;
    v68[1] = *MEMORY[0x277CD27B0];
    name3 = [(HMDZone *)v52 name];
    v69[1] = name3;
    v68[2] = *MEMORY[0x277CD27B8];
    uuid2 = [(HMDZone *)v52 uuid];
    uUIDString2 = [uuid2 UUIDString];
    v69[2] = uUIDString2;
    v68[3] = HMDZoneRoomsAffectedKey;
    v46 = [v51 copy];
    v69[3] = v46;
    v47 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v69 forKeys:v68 count:4];

    logAndPostNotification(@"HMDZoneRoomsUpdatedNotification", v52, v47);
  }

  v48 = *MEMORY[0x277D85DE8];
  return v33 & 1;
}

- (void)_handleRename:(id)rename
{
  v29 = *MEMORY[0x277D85DE8];
  renameCopy = rename;
  v5 = [renameCopy stringForKey:*MEMORY[0x277CD27B0]];
  v6 = HMMaxLengthForNaming();
  if ([v5 length] <= v6)
  {
    home = [(HMDZone *)self home];
    name = [(HMDZone *)self name];
    v13 = [home replaceName:name withNewName:v5];

    if (v13)
    {
      [renameCopy respondWithError:v13];
    }

    else
    {
      v14 = [HMDZoneModel alloc];
      uuid = [(HMDZone *)self uuid];
      uuid2 = [home uuid];
      v17 = [(HMDBackingStoreModelObject *)v14 initWithObjectChangeType:2 uuid:uuid parentUUID:uuid2];

      [(HMDZoneModel *)v17 setName:v5];
      backingStore = [home backingStore];
      name2 = [renameCopy name];
      v20 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
      v21 = [backingStore transaction:name2 options:v20];

      [v21 add:v17];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __25__HMDZone__handleRename___block_invoke;
      v23[3] = &unk_279734D88;
      v24 = renameCopy;
      selfCopy = self;
      v26 = v5;
      [v21 run:v23];
    }
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543362;
      v28 = v10;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_ERROR, "%{public}@New name is longer than the pre-defined max length", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    home = [MEMORY[0x277CCA9B8] hmErrorWithCode:46];
    [renameCopy respondWithError:home];
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

- (void)_handleRemoveRoom:(id)room
{
  roomCopy = room;
  v5 = [roomCopy uuidForKey:*MEMORY[0x277CD0D40]];
  home = [(HMDZone *)self home];
  v7 = [HMDZoneModel alloc];
  uuid = [(HMDZone *)self uuid];
  uuid2 = [home uuid];
  v10 = [(HMDBackingStoreModelObject *)v7 initWithObjectChangeType:2 uuid:uuid parentUUID:uuid2];

  os_unfair_lock_lock_with_options();
  roomUUIDs = self->_roomUUIDs;
  uUIDString = [v5 UUIDString];
  LODWORD(roomUUIDs) = [(NSMutableArray *)roomUUIDs containsObject:uUIDString];

  if (roomUUIDs)
  {
    v13 = self->_roomUUIDs;
    uUIDString2 = [v5 UUIDString];
    [(NSMutableArray *)v13 removeObject:uUIDString2];

    v15 = [(NSMutableArray *)self->_roomUUIDs copy];
    [(HMDZoneModel *)v10 setRoomUUIDs:v15];

    os_unfair_lock_unlock(&self->_lock);
    backingStore = [home backingStore];
    name = [roomCopy name];
    v18 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
    v19 = [backingStore transaction:name options:v18];

    [v19 add:v10];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __29__HMDZone__handleRemoveRoom___block_invoke;
    v21[3] = &unk_279734D88;
    v21[4] = self;
    v22 = v5;
    v23 = roomCopy;
    [v19 run:v21];
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
    v20 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    [roomCopy respondWithError:v20];
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

- (id)_checkForAddValidity:(id)validity
{
  v37 = *MEMORY[0x277D85DE8];
  validityCopy = validity;
  os_unfair_lock_assert_owner(&self->_lock);
  home = [(HMDZone *)self home];
  v6 = [home roomWithUUID:validityCopy];
  v7 = v6;
  v8 = 2;
  if (!home || !v6)
  {
    goto LABEL_9;
  }

  roomForEntireHome = [home roomForEntireHome];
  uuid = [roomForEntireHome uuid];
  v11 = [validityCopy isEqual:uuid];

  if (v11)
  {
    v8 = 24;
LABEL_9:
    v19 = [MEMORY[0x277CCA9B8] hmErrorWithCode:v8];
    goto LABEL_10;
  }

  home2 = [v7 home];
  uuid2 = [home2 uuid];
  uuid3 = [home uuid];
  v15 = [uuid2 isEqual:uuid3];

  if (!v15)
  {
    v8 = 11;
    goto LABEL_9;
  }

  roomUUIDs = self->_roomUUIDs;
  uuid4 = [v7 uuid];
  uUIDString = [uuid4 UUIDString];
  LOBYTE(roomUUIDs) = [(NSMutableArray *)roomUUIDs containsObject:uUIDString];

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
      name = [v7 name];
      name = self->_name;
      name2 = [home name];
      v29 = 138544130;
      v30 = v25;
      v31 = 2112;
      v32 = name;
      v33 = 2112;
      v34 = name;
      v35 = 2112;
      v36 = name2;
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

- (void)_handleAddRoom:(id)room
{
  roomCopy = room;
  v5 = [roomCopy uuidForKey:*MEMORY[0x277CD0D40]];
  home = [(HMDZone *)self home];
  v7 = [HMDZoneModel alloc];
  uuid = [(HMDZone *)self uuid];
  uuid2 = [home uuid];
  v10 = [(HMDBackingStoreModelObject *)v7 initWithObjectChangeType:2 uuid:uuid parentUUID:uuid2];

  os_unfair_lock_lock_with_options();
  v11 = [(HMDZone *)self _checkForAddValidity:v5];
  if (v11)
  {
    os_unfair_lock_unlock(&self->_lock);
    [roomCopy respondWithError:v11];
  }

  else
  {
    roomUUIDs = self->_roomUUIDs;
    uUIDString = [v5 UUIDString];
    [(NSMutableArray *)roomUUIDs addObject:uUIDString];

    v14 = [(NSMutableArray *)self->_roomUUIDs copy];
    [(HMDZoneModel *)v10 setRoomUUIDs:v14];

    os_unfair_lock_unlock(&self->_lock);
    backingStore = [home backingStore];
    name = [roomCopy name];
    v17 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
    v18 = [backingStore transaction:name options:v17];

    [v18 add:v10];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __26__HMDZone__handleAddRoom___block_invoke;
    v19[3] = &unk_279734D88;
    v19[4] = self;
    v20 = v5;
    v21 = roomCopy;
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
  home = [(HMDZone *)self home];
  v4 = home;
  if (home)
  {
    administratorHandler = [home administratorHandler];
    v6 = *MEMORY[0x277CCF1F8];
    v7 = [HMDConfigurationMessagePolicy policyWithOperationTypes:2];
    v27[0] = v7;
    v8 = [HMDXPCMessagePolicy policyWithEntitlements:1];
    v27[1] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];
    [administratorHandler registerForMessage:v6 receiver:self policies:v9 selector:sel__handleAddRoom_];

    administratorHandler2 = [v4 administratorHandler];
    v11 = *MEMORY[0x277CD0CA0];
    v12 = [HMDConfigurationMessagePolicy policyWithOperationTypes:2];
    v26[0] = v12;
    v13 = [HMDXPCMessagePolicy policyWithEntitlements:1];
    v26[1] = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
    [administratorHandler2 registerForMessage:v11 receiver:self policies:v14 selector:sel__handleRemoveRoom_];

    administratorHandler3 = [v4 administratorHandler];
    v16 = *MEMORY[0x277CD2558];
    v17 = [HMDConfigurationMessagePolicy policyWithOperationTypes:2];
    v18 = [HMDXPCMessagePolicy policyWithEntitlements:1, v17];
    v25[1] = v18;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
    [administratorHandler3 registerForMessage:v16 receiver:self policies:v19 selector:sel__handleRename_];
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    selfCopy = self;
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = objc_autoreleasePoolPush();
  home = [(HMDZone *)self home];
  [coderCopy encodeConditionalObject:home forKey:@"home"];

  name = [(HMDZone *)self name];
  [coderCopy encodeObject:name forKey:@"zoneName"];

  uuid = [(HMDZone *)self uuid];
  uUIDString = [uuid UUIDString];
  [coderCopy encodeObject:uUIDString forKey:@"zoneUUID"];

  rooms = [(HMDZone *)self rooms];
  [coderCopy hm_encodeArrayOfConditionalObjects:rooms forKey:@"rooms"];

  roomUUIDs = [(HMDZone *)self roomUUIDs];
  [coderCopy encodeObject:roomUUIDs forKey:@"roomUUID"];

  objc_autoreleasePoolPop(v4);
}

- (id)_initWithCoder:(id)coder
{
  v41[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"zoneName"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"zoneUUID"];
  v7 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v6];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"home"];
  v9 = [(HMDZone *)self initWithName:v5 uuid:v7 home:v8];
  if (v9)
  {
    v35 = v8;
    array = [MEMORY[0x277CBEB18] array];
    v11 = [coderCopy hm_decodeArrayOfConditionalObjects:objc_opt_class() forKey:@"rooms"];
    [array setArray:v11];

    v12 = MEMORY[0x277CBEB98];
    v41[0] = objc_opt_class();
    v41[1] = objc_opt_class();
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:2];
    v14 = [v12 setWithArray:v13];
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"roomUUID"];

    v34 = array;
    if ([v15 count])
    {
      [(HMDZone *)v9 _handleSetRoomsTransactionWithRoomUUIDStrings:v15 error:0];
    }

    else
    {
      v30 = v15;
      v31 = v7;
      v32 = v5;
      v33 = coderCopy;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v16 = array;
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
            uuid = [v21 uuid];
            uUIDString = [uuid UUIDString];
            [(NSMutableDictionary *)currentRooms setObject:v21 forKeyedSubscript:uUIDString];
          }

          v18 = [v16 countByEnumeratingWithState:&v36 objects:v40 count:16];
        }

        while (v18);
      }

      allKeys = [(NSMutableDictionary *)v9->_currentRooms allKeys];
      v26 = [allKeys mutableCopy];
      roomUUIDs = v9->_roomUUIDs;
      v9->_roomUUIDs = v26;

      v5 = v32;
      coderCopy = v33;
      v7 = v31;
      v15 = v30;
    }

    v8 = v35;
  }

  v28 = *MEMORY[0x277D85DE8];
  return v9;
}

- (HMDZone)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_autoreleasePoolPush();
  v6 = [(HMDZone *)self _initWithCoder:coderCopy];
  objc_autoreleasePoolPop(v5);

  return v6;
}

- (id)dumpStateWithPrivacyLevel:(unint64_t)level
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
  v6 = MEMORY[0x277CCACA8];
  name = [(HMDZone *)self name];
  uuid = [(HMDZone *)self uuid];
  uUIDString = [uuid UUIDString];
  urlString = [(HMDZone *)self urlString];
  v11 = [v6 stringWithFormat:@"name: %@  uuid: %@, assistantIdentifier: %@", name, uUIDString, urlString];

  [v5 setObject:v11 forKeyedSubscript:*MEMORY[0x277D0F170]];
  rooms = [(HMDZone *)self rooms];
  v13 = [rooms count];

  if (v13)
  {
    v14 = MEMORY[0x277CBEB18];
    rooms2 = [(HMDZone *)self rooms];
    v16 = [v14 arrayWithCapacity:{objc_msgSend(rooms2, "count")}];

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    rooms3 = [(HMDZone *)self rooms];
    v18 = [rooms3 countByEnumeratingWithState:&v25 objects:v29 count:16];
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
            objc_enumerationMutation(rooms3);
          }

          v22 = [*(*(&v25 + 1) + 8 * i) dumpStateWithPrivacyLevel:level];
          [v16 addObject:v22];
        }

        v19 = [rooms3 countByEnumeratingWithState:&v25 objects:v29 count:16];
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
  allValues = [(NSMutableDictionary *)self->_currentRooms allValues];
  os_unfair_lock_unlock(&self->_lock);

  return allValues;
}

- (NSArray)roomUUIDs
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSMutableArray *)self->_roomUUIDs copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setName:(id)name
{
  nameCopy = name;
  os_unfair_lock_lock_with_options();
  hm_truncatedNameString = [nameCopy hm_truncatedNameString];
  v5 = [hm_truncatedNameString copy];
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

- (void)configure:(id)configure queue:(id)queue
{
  queueCopy = queue;
  [(HMDZone *)self setMsgDispatcher:configure];
  [(HMDZone *)self setWorkQueue:queueCopy];

  [(HMDZone *)self _registerForMessages];
}

- (void)dealloc
{
  msgDispatcher = [(HMDZone *)self msgDispatcher];
  [msgDispatcher deregisterReceiver:self];

  home = [(HMDZone *)self home];
  administratorHandler = [home administratorHandler];
  [administratorHandler deregisterReceiver:self];

  v6.receiver = self;
  v6.super_class = HMDZone;
  [(HMDZone *)&v6 dealloc];
}

- (HMDZone)initWithName:(id)name uuid:(id)uuid home:(id)home
{
  nameCopy = name;
  uuidCopy = uuid;
  homeCopy = home;
  v29.receiver = self;
  v29.super_class = HMDZone;
  v11 = [(HMDZone *)&v29 init];
  if (v11)
  {
    hm_truncatedNameString = [nameCopy hm_truncatedNameString];
    v13 = [hm_truncatedNameString copy];
    name = v11->_name;
    v11->_name = v13;

    if (uuidCopy)
    {
      uUID = [uuidCopy copy];
    }

    else
    {
      uUID = [MEMORY[0x277CCAD78] UUID];
    }

    v16 = uUID;
    v17 = [MEMORY[0x277D0F890] hmf_cachedInstanceForNSUUID:uUID];
    uuid = v11->_uuid;
    v11->_uuid = v17;

    v19 = spiClientIdentifierForUUID(v11->_uuid);
    v20 = [MEMORY[0x277D0F890] hmf_cachedInstanceForNSUUID:v19];
    spiClientIdentifier = v11->_spiClientIdentifier;
    v11->_spiClientIdentifier = v20;

    objc_storeWeak(&v11->_home, homeCopy);
    msgDispatcher = [homeCopy msgDispatcher];
    msgDispatcher = v11->_msgDispatcher;
    v11->_msgDispatcher = msgDispatcher;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    currentRooms = v11->_currentRooms;
    v11->_currentRooms = dictionary;

    array = [MEMORY[0x277CBEB18] array];
    roomUUIDs = v11->_roomUUIDs;
    v11->_roomUUIDs = array;
  }

  return v11;
}

+ (id)messageBindingForDispatcher:(id)dispatcher message:(id)message receiver:(id)receiver
{
  v22[3] = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v6 = [HMDConfigurationMessagePolicy policyWithOperationTypes:2];
  v7 = [HMDXPCMessagePolicy policyWithEntitlements:1, v6];
  v22[1] = v7;
  v8 = objc_opt_new();
  v22[2] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:3];

  name = [messageCopy name];
  v11 = *MEMORY[0x277CCF1F8];
  LOBYTE(v7) = HMFEqualObjects();

  name2 = [messageCopy name];
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

  name2 = [messageCopy name];
  if (v15)
  {
    v13 = &selRef__handleRemoveRoom_;
    goto LABEL_7;
  }

  v16 = *MEMORY[0x277CD2558];
  v17 = HMFEqualObjects();

  if (v17)
  {
    name2 = [messageCopy name];
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
  home = [(HMDZone *)self home];
  name = [(HMDZone *)self name];
  v5 = name;
  if (name && home)
  {
    name2 = [home name];

    if (name2)
    {
      v21[0] = *MEMORY[0x277D48178];
      v7 = [(HMDZone *)self name:@"objectType"];
      v21[1] = v7;
      v20[2] = @"objectIdentifier";
      urlString = [(HMDZone *)self urlString];
      v21[2] = urlString;
      v20[3] = @"objectHome";
      name3 = [home name];
      v21[3] = name3;
      v20[4] = @"objectHomeIdentifier";
      urlString2 = [home urlString];
      v20[5] = @"objectReference";
      v21[4] = urlString2;
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
    name4 = [(HMDZone *)self name];
    uuid = [(HMDZone *)self uuid];
    uUIDString = [uuid UUIDString];
    *buf = 138544130;
    v23 = v14;
    v24 = 2112;
    v25 = name4;
    v26 = 2112;
    v27 = uUIDString;
    v28 = 2112;
    v29 = home;
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
  uuid = [(HMDZone *)self uuid];
  v4 = hm_assistantIdentifier();

  return v4;
}

@end