@interface _MKFUser
+ (NSPredicate)homeRelation;
+ (id)findUserUsingReverseShareID:(id)a3 homeModelID:(id)a4 context:(id)a5;
+ (id)logCategory;
+ (id)modelIDForParentRelationshipTo:(id)a3;
+ (id)sharedUserDataRootForUser:(id)a3 context:(id)a4;
- (BOOL)isOwner;
- (BOOL)isOwnerOrAdmin;
- (BOOL)isResidentSyncParticipant;
- (BOOL)isRestrictedGuest;
- (MKFUserDatabaseID)databaseID;
- (NSArray)accessoriesWithListeningHistoryEnabled;
- (NSArray)accessoriesWithMediaContentProfileEnabled;
- (NSArray)accessoriesWithPersonalRequestsEnabled;
- (NSArray)bulletinConditions;
- (NSArray)bulletinRegistrations;
- (NSArray)faceprintsFromPhotos;
- (NSArray)locationEvents;
- (NSArray)notificationRegistrations;
- (NSArray)pairedAirPlayAccessories;
- (NSArray)pairedHAPAccessories;
- (NSArray)personsFromPhotos;
- (NSArray)presenceEvents;
- (NSArray)triggers;
- (NSArray)userActivityStatuses;
- (_MKFUser)userWithAccessCode:(id)a3 context:(id)a4;
- (id)additionalModelsForSameUser;
- (id)castIfMemberIsUser;
- (id)characteristicBulletinRegistrationForAccessory:(id)a3 serviceInstanceID:(id)a4 characteristicInstanceID:(id)a5 deviceIdsIdentifier:(id)a6 context:(id)a7;
- (id)createBulletinRegistrationsRelationOfType:(id)a3 modelID:(id)a4;
- (id)createNotificationRegistrationsRelationOfType:(id)a3 modelID:(id)a4;
- (id)findUserActivityStatusForType:(unint64_t)a3;
- (id)materializeOrCreateBulletinRegistrationsRelationOfType:(id)a3 modelID:(id)a4 createdNew:(BOOL *)a5;
- (id)materializeOrCreateNotificationRegistrationsRelationOfType:(id)a3 modelID:(id)a4 createdNew:(BOOL *)a5;
- (id)matterBulletinRegistrationForEndpointID:(id)a3 accessoryUUID:(id)a4 deviceIdsIdentifier:(id)a5 context:(id)a6;
- (id)notificationRegistrationForCharacteristic:(id)a3 deviceIdsDestination:(id)a4 context:(id)a5;
- (id)notificationRegistrationForMediaProperty:(id)a3 mediaProfile:(id)a4 deviceIdsDestination:(id)a5 context:(id)a6;
- (id)sharedUserDataRoot;
- (void)residentSyncContextualizeConditions:(id)a3 userContext:(id)a4;
@end

@implementation _MKFUser

- (NSArray)userActivityStatuses
{
  v2 = [(_MKFUser *)self valueForKey:@"userActivityStatuses_"];
  v3 = [v2 allObjects];

  return v3;
}

- (NSArray)triggers
{
  v2 = [(_MKFUser *)self valueForKey:@"triggers_"];
  v3 = [v2 allObjects];

  return v3;
}

- (NSArray)presenceEvents
{
  v2 = [(_MKFUser *)self valueForKey:@"presenceEvents_"];
  v3 = [v2 allObjects];

  return v3;
}

- (NSArray)personsFromPhotos
{
  v2 = [(_MKFUser *)self valueForKey:@"personsFromPhotos_"];
  v3 = [v2 allObjects];

  return v3;
}

- (NSArray)pairedHAPAccessories
{
  v2 = [(_MKFUser *)self valueForKey:@"pairedHAPAccessories_"];
  v3 = [v2 allObjects];

  return v3;
}

- (NSArray)pairedAirPlayAccessories
{
  v2 = [(_MKFUser *)self valueForKey:@"pairedAirPlayAccessories_"];
  v3 = [v2 allObjects];

  return v3;
}

- (id)createNotificationRegistrationsRelationOfType:(id)a3 modelID:(id)a4
{
  v6 = a4;
  v7 = NSStringFromProtocol(a3);
  v8 = [(NSManagedObject *)self mkf_createRelationOnProperty:@"notificationRegistrations_" modelProtocol:v7 keyValue:v6];

  return v8;
}

- (id)materializeOrCreateNotificationRegistrationsRelationOfType:(id)a3 modelID:(id)a4 createdNew:(BOOL *)a5
{
  v8 = a4;
  v9 = NSStringFromProtocol(a3);
  v10 = [(NSManagedObject *)self mkf_materializeOrCreateRelationOnProperty:@"notificationRegistrations_" modelProtocol:v9 keyValue:v8 createdNew:a5];

  return v10;
}

- (NSArray)notificationRegistrations
{
  v2 = [(_MKFUser *)self valueForKey:@"notificationRegistrations_"];
  v3 = [v2 allObjects];

  return v3;
}

- (NSArray)locationEvents
{
  v2 = [(_MKFUser *)self valueForKey:@"locationEvents_"];
  v3 = [v2 allObjects];

  return v3;
}

- (NSArray)faceprintsFromPhotos
{
  v2 = [(_MKFUser *)self valueForKey:@"faceprintsFromPhotos_"];
  v3 = [v2 allObjects];

  return v3;
}

- (id)createBulletinRegistrationsRelationOfType:(id)a3 modelID:(id)a4
{
  v6 = a4;
  v7 = NSStringFromProtocol(a3);
  v8 = [(NSManagedObject *)self mkf_createRelationOnProperty:@"bulletinRegistrations_" modelProtocol:v7 keyValue:v6];

  return v8;
}

- (id)materializeOrCreateBulletinRegistrationsRelationOfType:(id)a3 modelID:(id)a4 createdNew:(BOOL *)a5
{
  v8 = a4;
  v9 = NSStringFromProtocol(a3);
  v10 = [(NSManagedObject *)self mkf_materializeOrCreateRelationOnProperty:@"bulletinRegistrations_" modelProtocol:v9 keyValue:v8 createdNew:a5];

  return v10;
}

- (NSArray)bulletinRegistrations
{
  v2 = [(_MKFUser *)self valueForKey:@"bulletinRegistrations_"];
  v3 = [v2 allObjects];

  return v3;
}

- (NSArray)bulletinConditions
{
  v2 = [(_MKFUser *)self valueForKey:@"bulletinConditions_"];
  v3 = [v2 allObjects];

  return v3;
}

- (NSArray)accessoriesWithPersonalRequestsEnabled
{
  v2 = [(_MKFUser *)self valueForKey:@"accessoriesWithPersonalRequestsEnabled_"];
  v3 = [v2 allObjects];

  return v3;
}

- (NSArray)accessoriesWithMediaContentProfileEnabled
{
  v2 = [(_MKFUser *)self valueForKey:@"accessoriesWithMediaContentProfileEnabled_"];
  v3 = [v2 allObjects];

  return v3;
}

- (NSArray)accessoriesWithListeningHistoryEnabled
{
  v2 = [(_MKFUser *)self valueForKey:@"accessoriesWithListeningHistoryEnabled_"];
  v3 = [v2 allObjects];

  return v3;
}

- (MKFUserDatabaseID)databaseID
{
  v2 = [(MKFObjectDatabaseID *)[MKFUserDatabaseID alloc] initWithMKFObject:self];

  return v2;
}

- (id)findUserActivityStatusForType:(unint64_t)a3
{
  v4 = [(_MKFUser *)self userActivityStatuses];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42___MKFUser_findUserActivityStatusForType___block_invoke;
  v7[3] = &__block_descriptor_40_e40_B32__0___MKFUserActivityStatus__8Q16_B24l;
  v7[4] = a3;
  v5 = [v4 hmf_objectPassingTest:v7];

  return v5;
}

- (BOOL)isRestrictedGuest
{
  v2 = [(_MKFUser *)self privilege];
  v3 = [v2 isEqualToNumber:&unk_283E723C8];

  return v3;
}

- (id)castIfMemberIsUser
{
  v2 = self;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (id)additionalModelsForSameUser
{
  v39[3] = *MEMORY[0x277D85DE8];
  v3 = [(_MKFUser *)self managedObjectContext];
  v4 = +[_MKFUser fetchRequest];
  v5 = MEMORY[0x277CCAC30];
  v6 = [(_MKFUser *)self home];
  v7 = [(_MKFUser *)self modelID];
  v8 = [v5 predicateWithFormat:@"(%K == %@) AND (%K != %@)", @"home", v6, @"modelID", v7];
  [v4 setPredicate:v8];

  v39[0] = @"accountIdentifier";
  v39[1] = @"idsMergeIdentifier";
  v39[2] = @"modelID";
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:3];
  [v4 setPropertiesToFetch:v9];

  v32 = 0;
  v10 = [v3 executeFetchRequest:v4 error:&v32];
  v11 = v32;
  if (v10)
  {
    if (![v10 count])
    {
      v27 = [MEMORY[0x277CBEB98] set];
      goto LABEL_14;
    }

    v12 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v10, "count")}];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __39___MKFUser_additionalModelsForSameUser__block_invoke;
    v30[3] = &unk_278675330;
    v30[4] = self;
    v13 = v12;
    v31 = v13;
    [v10 hmf_enumerateWithAutoreleasePoolUsingBlock:v30];
    v14 = [v13 count];
    v15 = objc_autoreleasePoolPush();
    v16 = self;
    v17 = HMFGetOSLogHandle();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_INFO);
    if (v14)
    {
      if (v18)
      {
        v19 = HMFGetLogIdentifier();
        *buf = 138543874;
        v34 = v19;
        v35 = 2112;
        v36 = v16;
        v37 = 2112;
        v38 = v13;
        v20 = "%{public}@%@ matched additional models: %@";
        v21 = v17;
        v22 = 32;
LABEL_12:
        _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, v20, buf, v22);
      }
    }

    else if (v18)
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543618;
      v34 = v19;
      v35 = 2112;
      v36 = v16;
      v20 = "%{public}@%@ did not match any other models";
      v21 = v17;
      v22 = 22;
      goto LABEL_12;
    }

    objc_autoreleasePoolPop(v15);
    v27 = [v13 copy];

    goto LABEL_14;
  }

  v23 = objc_autoreleasePoolPush();
  v24 = self;
  v25 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    v26 = HMFGetLogIdentifier();
    *buf = 138543618;
    v34 = v26;
    v35 = 2112;
    v36 = v11;
    _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_ERROR, "%{public}@Failed to find user models: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v23);
  v27 = 0;
LABEL_14:

  v28 = *MEMORY[0x277D85DE8];

  return v27;
}

- (BOOL)isResidentSyncParticipant
{
  v3 = objc_opt_class();
  v4 = [(_MKFUser *)self privilege];
  LOBYTE(v3) = [v3 isResidentSyncParticipantWithPrivilege:{objc_msgSend(v4, "unsignedIntegerValue")}];

  return v3;
}

- (BOOL)isOwnerOrAdmin
{
  v3 = objc_opt_class();
  v4 = [(_MKFUser *)self privilege];
  LOBYTE(v3) = [v3 isOwnerOrAdminWithPrivilege:{objc_msgSend(v4, "unsignedIntegerValue")}];

  return v3;
}

- (BOOL)isOwner
{
  v3 = objc_opt_class();
  v4 = [(_MKFUser *)self privilege];
  LOBYTE(v3) = [v3 isOwnerWithPrivilege:{objc_msgSend(v4, "unsignedIntegerValue")}];

  return v3;
}

- (id)sharedUserDataRoot
{
  v3 = objc_opt_class();
  v4 = [(_MKFUser *)self managedObjectContext];
  v5 = [v3 sharedUserDataRootForUser:self context:v4];

  return v5;
}

- (id)notificationRegistrationForMediaProperty:(id)a3 mediaProfile:(id)a4 deviceIdsDestination:(id)a5 context:(id)a6
{
  v40 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = +[_MKFNotificationRegistrationMediaProperty fetchRequest];
  v15 = [v11 uniqueIdentifier];
  v16 = [v11 accessory];
  v17 = [v16 uuid];

  v28 = v10;
  v18 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(%K == %@) AND (%K == %@) AND (%K == %@) AND (%K == %@) AND (%K.modelID == %@)", @"user", self, @"deviceIdsDestination", v12, @"mediaProperty", v10, @"mediaProfileIdentifier", v15, @"accessory", v17];
  [v14 setPredicate:v18];

  v29 = 0;
  v19 = [v13 executeFetchRequest:v14 error:&v29];
  v20 = v29;
  if (v19)
  {
    v21 = [v19 firstObject];
  }

  else
  {
    context = objc_autoreleasePoolPush();
    v22 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v26 = HMFGetLogIdentifier();
      *buf = 138544386;
      v31 = v26;
      v32 = 2112;
      v33 = v28;
      v34 = 2112;
      v35 = v11;
      v36 = 2112;
      v37 = v12;
      v38 = 2112;
      v39 = v20;
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch notification registrations for mediaProperty: %@, mediaProfile: %@, deviceIdsDestination: %@, error: %@", buf, 0x34u);
    }

    objc_autoreleasePoolPop(context);
    v21 = 0;
  }

  v24 = *MEMORY[0x277D85DE8];

  return v21;
}

- (id)notificationRegistrationForCharacteristic:(id)a3 deviceIdsDestination:(id)a4 context:(id)a5
{
  v43 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[_MKFNotificationRegistrationCharacteristic fetchRequest];
  v12 = [v8 instanceID];
  v13 = [v8 service];
  v14 = [v13 instanceID];

  v15 = [v8 accessory];
  v16 = [v15 uuid];

  if (v12 && v14 && v16)
  {
    v17 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(%K == %@) AND (%K == %@) AND (%K.%K == %@) AND (%K.%K.%K == %@) AND (%K.%K.%K.modelID == %@)", @"user", self, @"deviceIdsDestination", v9, @"characteristic", @"instanceID", v12, @"characteristic", @"service", @"instanceID", v14, @"characteristic", @"service", @"accessory", v16];
    [v11 setPredicate:v17];

    v32 = v10;
    v34 = 0;
    v18 = [v10 executeFetchRequest:v11 error:&v34];
    v19 = v34;
    if (v18)
    {
      v20 = [v18 firstObject];
    }

    else
    {
      context = objc_autoreleasePoolPush();
      v26 = self;
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v30 = HMFGetLogIdentifier();
        *buf = 138544130;
        v36 = v30;
        v37 = 2112;
        v38 = v8;
        v39 = 2112;
        v40 = v9;
        v41 = 2112;
        v42 = v19;
        _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch notification registrations for characteristic: %@, deviceIdsDestination: %@, error: %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(context);
      v20 = 0;
    }

    v10 = v32;
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    v22 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v33 = v9;
      v25 = v24 = v10;
      *buf = 138544130;
      v36 = v25;
      v37 = 2112;
      v38 = v12;
      v39 = 2112;
      v40 = v14;
      v41 = 2112;
      v42 = v16;
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@Error before fetching registration for characteristic, characteristic value should not be nil: instanceID: %@, serviceInstanceID: %@, accessoryUUID: %@", buf, 0x2Au);

      v10 = v24;
      v9 = v33;
    }

    objc_autoreleasePoolPop(v21);
    v20 = 0;
  }

  v28 = *MEMORY[0x277D85DE8];

  return v20;
}

- (_MKFUser)userWithAccessCode:(id)a3 context:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = +[_MKFUserAccessCode fetchRequest];
  v9 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(%K == %@) AND (%K == %@)", @"accessCode", v6, @"user", self];
  [v8 setPredicate:v9];

  v20 = 0;
  v10 = [v7 executeFetchRequest:v8 error:&v20];
  v11 = v20;
  if (v10)
  {
    v12 = [v10 firstObject];
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      v17 = [(_MKFUser *)v14 modelID];
      *buf = 138544130;
      v22 = v16;
      v23 = 2112;
      v24 = v6;
      v25 = 2112;
      v26 = v17;
      v27 = 2112;
      v28 = v11;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch userAccessCodes with access code %@ and user UUID %@: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v13);
    v12 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)matterBulletinRegistrationForEndpointID:(id)a3 accessoryUUID:(id)a4 deviceIdsIdentifier:(id)a5 context:(id)a6
{
  v35 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  [v13 hmd_assertIsExecuting];
  v14 = +[_MKFMatterBulletinRegistration fetchRequest];
  v15 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(%K == %@) AND (%K == %@) AND (%K.%K contains %@) AND (%K.%K.modelID contains %@)", @"user", self, @"deviceIdsIdentifier", v12, @"matterPaths_", @"endpointID", v10, @"matterPaths_", @"accessory", v11];
  [v14 setPredicate:v15];

  v26 = 0;
  v16 = [v13 executeFetchRequest:v14 error:&v26];
  v17 = v26;
  if (v16)
  {
    v18 = [v16 firstObject];
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    v20 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v22 = v25 = v19;
      *buf = 138544130;
      v28 = v22;
      v29 = 2112;
      v30 = v10;
      v31 = 2112;
      v32 = v11;
      v33 = 2112;
      v34 = v17;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch Matter bulletin registration with endpointID %@: on accessory %@, error: %@", buf, 0x2Au);

      v19 = v25;
    }

    objc_autoreleasePoolPop(v19);
    v18 = 0;
  }

  v23 = *MEMORY[0x277D85DE8];

  return v18;
}

- (id)characteristicBulletinRegistrationForAccessory:(id)a3 serviceInstanceID:(id)a4 characteristicInstanceID:(id)a5 deviceIdsIdentifier:(id)a6 context:(id)a7
{
  v37 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = +[_MKFCharacteristicBulletinRegistration fetchRequest];
  v18 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(%K == %@) AND (%K == %@) AND (%K.%K == %@) AND (%K.%K.%K == %@) AND (%K.%K.%K.modelID == %@)", @"user", self, @"deviceIdsIdentifier", v15, @"characteristic", @"instanceID", v14, @"characteristic", @"service", @"instanceID", v13, @"characteristic", @"service", @"accessory", v12];
  [v17 setPredicate:v18];

  v28 = 0;
  v19 = [v16 executeFetchRequest:v17 error:&v28];
  v20 = v28;
  if (v19)
  {
    v21 = [v19 firstObject];
  }

  else
  {
    context = objc_autoreleasePoolPush();
    v22 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v26 = HMFGetLogIdentifier();
      *buf = 138544130;
      v30 = v26;
      v31 = 2112;
      v32 = v14;
      v33 = 2112;
      v34 = v12;
      v35 = 2112;
      v36 = v20;
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch characteristic bulletin registration with characteristic instanceID %@: on accessory %@, error: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(context);
    v21 = 0;
  }

  v24 = *MEMORY[0x277D85DE8];

  return v21;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t25 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t25, &__block_literal_global_819);
  }

  v3 = logCategory__hmf_once_v26;

  return v3;
}

+ (NSPredicate)homeRelation
{
  if (homeRelation__hmf_once_t23 != -1)
  {
    dispatch_once(&homeRelation__hmf_once_t23, &__block_literal_global_66327);
  }

  v3 = homeRelation__hmf_once_v24;

  return v3;
}

+ (id)modelIDForParentRelationshipTo:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = MEMORY[0x277CCACA8];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"You must override %@ in a subclass", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

+ (id)sharedUserDataRootForUser:(id)a3 context:(id)a4
{
  v66 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [v6 hmd_coreData];
  v8 = [v5 home];
  v9 = [v8 modelID];

  v10 = [v5 reverseShareID];
  if ([v5 isOwner])
  {
    v11 = objc_autoreleasePoolPush();
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v14 = [v5 modelID];
      *buf = 138543618;
      v61 = v13;
      v62 = 2112;
      v63 = v14;
      v15 = "%{public}@Owner %@ does not have a reverse share for their own home";
LABEL_21:
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, v15, buf, 0x16u);

      goto LABEL_22;
    }

    goto LABEL_22;
  }

  if (!v10)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v14 = [v5 modelID];
      *buf = 138543618;
      v61 = v13;
      v62 = 2112;
      v63 = v14;
      v15 = "%{public}@Shared user %@ does not have a reverse share assigned";
      goto LABEL_21;
    }

LABEL_22:

    objc_autoreleasePoolPop(v11);
    v35 = 0;
    goto LABEL_31;
  }

  v16 = +[MKFCKSharedUserDataRoot fetchRequest];
  v17 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@", @"homeModelID", v9];
  [v16 setPredicate:v17];

  v58 = 0;
  v18 = [v6 executeFetchRequest:v16 error:&v58];
  v19 = v58;
  v50 = v18;
  if (v18)
  {
    if ([v18 count])
    {
      v47 = v5;
      v48 = v19;
      v43 = v16;
      v44 = v9;
      v52 = v10;
      v45 = v7;
      v46 = v6;
      v20 = [v7 container];
      v54 = 0u;
      v55 = 0u;
      v56 = 0u;
      v57 = 0u;
      obj = v18;
      v21 = [obj countByEnumeratingWithState:&v54 objects:v59 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v55;
        while (2)
        {
          for (i = 0; i != v22; ++i)
          {
            if (*v55 != v23)
            {
              objc_enumerationMutation(obj);
            }

            v25 = *(*(&v54 + 1) + 8 * i);
            v26 = [v25 objectID];
            v27 = [v20 recordForManagedObjectID:v26];

            if (v27)
            {
              v28 = [v52 zoneID];
              v29 = [v27 recordID];
              v30 = [v29 zoneID];
              v31 = [v28 isEqual:v30];

              if (v31)
              {
                v35 = v25;

                goto LABEL_29;
              }
            }
          }

          v22 = [obj countByEnumeratingWithState:&v54 objects:v59 count:16];
          if (v22)
          {
            continue;
          }

          break;
        }
      }

      v32 = objc_autoreleasePoolPush();
      v33 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v34 = HMFGetLogIdentifier();
        *buf = 138543362;
        v61 = v34;
        _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_ERROR, "%{public}@Failed to find associated shared data root for user", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v32);
      v35 = 0;
LABEL_29:
      v6 = v46;
      v5 = v47;
      v9 = v44;
      v7 = v45;
      v10 = v52;
      v19 = v48;

      v16 = v43;
      goto LABEL_30;
    }

    v36 = objc_autoreleasePoolPush();
    v37 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v40 = v49 = v19;
      *buf = 138543618;
      v61 = v40;
      v62 = 2112;
      v63 = v9;
      _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_ERROR, "%{public}@No shared user data roots for home %@", buf, 0x16u);

      v19 = v49;
    }
  }

  else
  {
    v36 = objc_autoreleasePoolPush();
    v37 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v53 = v36;
      v39 = v38 = v19;
      *buf = 138543874;
      v61 = v39;
      v62 = 2112;
      v63 = v9;
      v64 = 2112;
      v65 = v38;
      _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch shared user data roots for home %@: %@", buf, 0x20u);

      v19 = v38;
      v36 = v53;
    }
  }

  objc_autoreleasePoolPop(v36);
  v35 = 0;
LABEL_30:

LABEL_31:
  v41 = *MEMORY[0x277D85DE8];

  return v35;
}

+ (id)findUserUsingReverseShareID:(id)a3 homeModelID:(id)a4 context:(id)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[_MKFUser fetchRequest];
  v12 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@ && %K.%K == %@", @"reverseShareID", v8, @"home", @"modelID", v9];
  [v11 setPredicate:v12];

  [v11 setFetchLimit:2];
  v24 = 0;
  v13 = [v10 executeFetchRequest:v11 error:&v24];
  v14 = v24;
  if (v13)
  {
    if ([v13 count] == 1)
    {
      v15 = [v13 firstObject];
      goto LABEL_10;
    }

    v16 = objc_autoreleasePoolPush();
    v17 = a1;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      v21 = [v13 count];
      *buf = 138543618;
      v26 = v19;
      v27 = 2048;
      v28 = v21;
      v20 = "%{public}@Failed to fetch working store user resulted into error: %zd matching users";
      goto LABEL_8;
    }
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    v17 = a1;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543618;
      v26 = v19;
      v27 = 2114;
      v28 = v14;
      v20 = "%{public}@Failed to fetch working store user resulted into error: %{public}@";
LABEL_8:
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, v20, buf, 0x16u);
    }
  }

  objc_autoreleasePoolPop(v16);
  v15 = 0;
LABEL_10:

  v22 = *MEMORY[0x277D85DE8];

  return v15;
}

- (void)residentSyncContextualizeConditions:(id)a3 userContext:(id)a4
{
  v7 = a3;
  v6 = [a4 targetUser];

  if (v6 == self)
  {
    [v7 addCondition:@"userIsTargetUser"];
  }

  if ([(_MKFUser *)self isOwner])
  {
    [v7 addCondition:@"userIsOwner"];
  }
}

@end