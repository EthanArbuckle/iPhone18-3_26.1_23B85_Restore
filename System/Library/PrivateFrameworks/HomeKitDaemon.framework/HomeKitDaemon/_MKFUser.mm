@interface _MKFUser
+ (NSPredicate)homeRelation;
+ (id)findUserUsingReverseShareID:(id)d homeModelID:(id)iD context:(id)context;
+ (id)logCategory;
+ (id)modelIDForParentRelationshipTo:(id)to;
+ (id)sharedUserDataRootForUser:(id)user context:(id)context;
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
- (_MKFUser)userWithAccessCode:(id)code context:(id)context;
- (id)additionalModelsForSameUser;
- (id)castIfMemberIsUser;
- (id)characteristicBulletinRegistrationForAccessory:(id)accessory serviceInstanceID:(id)d characteristicInstanceID:(id)iD deviceIdsIdentifier:(id)identifier context:(id)context;
- (id)createBulletinRegistrationsRelationOfType:(id)type modelID:(id)d;
- (id)createNotificationRegistrationsRelationOfType:(id)type modelID:(id)d;
- (id)findUserActivityStatusForType:(unint64_t)type;
- (id)materializeOrCreateBulletinRegistrationsRelationOfType:(id)type modelID:(id)d createdNew:(BOOL *)new;
- (id)materializeOrCreateNotificationRegistrationsRelationOfType:(id)type modelID:(id)d createdNew:(BOOL *)new;
- (id)matterBulletinRegistrationForEndpointID:(id)d accessoryUUID:(id)iD deviceIdsIdentifier:(id)identifier context:(id)context;
- (id)notificationRegistrationForCharacteristic:(id)characteristic deviceIdsDestination:(id)destination context:(id)context;
- (id)notificationRegistrationForMediaProperty:(id)property mediaProfile:(id)profile deviceIdsDestination:(id)destination context:(id)context;
- (id)sharedUserDataRoot;
- (void)residentSyncContextualizeConditions:(id)conditions userContext:(id)context;
@end

@implementation _MKFUser

- (NSArray)userActivityStatuses
{
  v2 = [(_MKFUser *)self valueForKey:@"userActivityStatuses_"];
  allObjects = [v2 allObjects];

  return allObjects;
}

- (NSArray)triggers
{
  v2 = [(_MKFUser *)self valueForKey:@"triggers_"];
  allObjects = [v2 allObjects];

  return allObjects;
}

- (NSArray)presenceEvents
{
  v2 = [(_MKFUser *)self valueForKey:@"presenceEvents_"];
  allObjects = [v2 allObjects];

  return allObjects;
}

- (NSArray)personsFromPhotos
{
  v2 = [(_MKFUser *)self valueForKey:@"personsFromPhotos_"];
  allObjects = [v2 allObjects];

  return allObjects;
}

- (NSArray)pairedHAPAccessories
{
  v2 = [(_MKFUser *)self valueForKey:@"pairedHAPAccessories_"];
  allObjects = [v2 allObjects];

  return allObjects;
}

- (NSArray)pairedAirPlayAccessories
{
  v2 = [(_MKFUser *)self valueForKey:@"pairedAirPlayAccessories_"];
  allObjects = [v2 allObjects];

  return allObjects;
}

- (id)createNotificationRegistrationsRelationOfType:(id)type modelID:(id)d
{
  dCopy = d;
  v7 = NSStringFromProtocol(type);
  v8 = [(NSManagedObject *)self mkf_createRelationOnProperty:@"notificationRegistrations_" modelProtocol:v7 keyValue:dCopy];

  return v8;
}

- (id)materializeOrCreateNotificationRegistrationsRelationOfType:(id)type modelID:(id)d createdNew:(BOOL *)new
{
  dCopy = d;
  v9 = NSStringFromProtocol(type);
  v10 = [(NSManagedObject *)self mkf_materializeOrCreateRelationOnProperty:@"notificationRegistrations_" modelProtocol:v9 keyValue:dCopy createdNew:new];

  return v10;
}

- (NSArray)notificationRegistrations
{
  v2 = [(_MKFUser *)self valueForKey:@"notificationRegistrations_"];
  allObjects = [v2 allObjects];

  return allObjects;
}

- (NSArray)locationEvents
{
  v2 = [(_MKFUser *)self valueForKey:@"locationEvents_"];
  allObjects = [v2 allObjects];

  return allObjects;
}

- (NSArray)faceprintsFromPhotos
{
  v2 = [(_MKFUser *)self valueForKey:@"faceprintsFromPhotos_"];
  allObjects = [v2 allObjects];

  return allObjects;
}

- (id)createBulletinRegistrationsRelationOfType:(id)type modelID:(id)d
{
  dCopy = d;
  v7 = NSStringFromProtocol(type);
  v8 = [(NSManagedObject *)self mkf_createRelationOnProperty:@"bulletinRegistrations_" modelProtocol:v7 keyValue:dCopy];

  return v8;
}

- (id)materializeOrCreateBulletinRegistrationsRelationOfType:(id)type modelID:(id)d createdNew:(BOOL *)new
{
  dCopy = d;
  v9 = NSStringFromProtocol(type);
  v10 = [(NSManagedObject *)self mkf_materializeOrCreateRelationOnProperty:@"bulletinRegistrations_" modelProtocol:v9 keyValue:dCopy createdNew:new];

  return v10;
}

- (NSArray)bulletinRegistrations
{
  v2 = [(_MKFUser *)self valueForKey:@"bulletinRegistrations_"];
  allObjects = [v2 allObjects];

  return allObjects;
}

- (NSArray)bulletinConditions
{
  v2 = [(_MKFUser *)self valueForKey:@"bulletinConditions_"];
  allObjects = [v2 allObjects];

  return allObjects;
}

- (NSArray)accessoriesWithPersonalRequestsEnabled
{
  v2 = [(_MKFUser *)self valueForKey:@"accessoriesWithPersonalRequestsEnabled_"];
  allObjects = [v2 allObjects];

  return allObjects;
}

- (NSArray)accessoriesWithMediaContentProfileEnabled
{
  v2 = [(_MKFUser *)self valueForKey:@"accessoriesWithMediaContentProfileEnabled_"];
  allObjects = [v2 allObjects];

  return allObjects;
}

- (NSArray)accessoriesWithListeningHistoryEnabled
{
  v2 = [(_MKFUser *)self valueForKey:@"accessoriesWithListeningHistoryEnabled_"];
  allObjects = [v2 allObjects];

  return allObjects;
}

- (MKFUserDatabaseID)databaseID
{
  v2 = [(MKFObjectDatabaseID *)[MKFUserDatabaseID alloc] initWithMKFObject:self];

  return v2;
}

- (id)findUserActivityStatusForType:(unint64_t)type
{
  userActivityStatuses = [(_MKFUser *)self userActivityStatuses];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42___MKFUser_findUserActivityStatusForType___block_invoke;
  v7[3] = &__block_descriptor_40_e40_B32__0___MKFUserActivityStatus__8Q16_B24l;
  v7[4] = type;
  v5 = [userActivityStatuses hmf_objectPassingTest:v7];

  return v5;
}

- (BOOL)isRestrictedGuest
{
  privilege = [(_MKFUser *)self privilege];
  v3 = [privilege isEqualToNumber:&unk_283E723C8];

  return v3;
}

- (id)castIfMemberIsUser
{
  selfCopy = self;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = selfCopy;
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
  managedObjectContext = [(_MKFUser *)self managedObjectContext];
  v4 = +[_MKFUser fetchRequest];
  v5 = MEMORY[0x277CCAC30];
  home = [(_MKFUser *)self home];
  modelID = [(_MKFUser *)self modelID];
  v8 = [v5 predicateWithFormat:@"(%K == %@) AND (%K != %@)", @"home", home, @"modelID", modelID];
  [v4 setPredicate:v8];

  v39[0] = @"accountIdentifier";
  v39[1] = @"idsMergeIdentifier";
  v39[2] = @"modelID";
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:3];
  [v4 setPropertiesToFetch:v9];

  v32 = 0;
  v10 = [managedObjectContext executeFetchRequest:v4 error:&v32];
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
    selfCopy = self;
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
        v36 = selfCopy;
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
      v36 = selfCopy;
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
  selfCopy2 = self;
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
  privilege = [(_MKFUser *)self privilege];
  LOBYTE(v3) = [v3 isResidentSyncParticipantWithPrivilege:{objc_msgSend(privilege, "unsignedIntegerValue")}];

  return v3;
}

- (BOOL)isOwnerOrAdmin
{
  v3 = objc_opt_class();
  privilege = [(_MKFUser *)self privilege];
  LOBYTE(v3) = [v3 isOwnerOrAdminWithPrivilege:{objc_msgSend(privilege, "unsignedIntegerValue")}];

  return v3;
}

- (BOOL)isOwner
{
  v3 = objc_opt_class();
  privilege = [(_MKFUser *)self privilege];
  LOBYTE(v3) = [v3 isOwnerWithPrivilege:{objc_msgSend(privilege, "unsignedIntegerValue")}];

  return v3;
}

- (id)sharedUserDataRoot
{
  v3 = objc_opt_class();
  managedObjectContext = [(_MKFUser *)self managedObjectContext];
  v5 = [v3 sharedUserDataRootForUser:self context:managedObjectContext];

  return v5;
}

- (id)notificationRegistrationForMediaProperty:(id)property mediaProfile:(id)profile deviceIdsDestination:(id)destination context:(id)context
{
  v40 = *MEMORY[0x277D85DE8];
  propertyCopy = property;
  profileCopy = profile;
  destinationCopy = destination;
  contextCopy = context;
  v14 = +[_MKFNotificationRegistrationMediaProperty fetchRequest];
  uniqueIdentifier = [profileCopy uniqueIdentifier];
  accessory = [profileCopy accessory];
  uuid = [accessory uuid];

  v28 = propertyCopy;
  v18 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(%K == %@) AND (%K == %@) AND (%K == %@) AND (%K == %@) AND (%K.modelID == %@)", @"user", self, @"deviceIdsDestination", destinationCopy, @"mediaProperty", propertyCopy, @"mediaProfileIdentifier", uniqueIdentifier, @"accessory", uuid];
  [v14 setPredicate:v18];

  v29 = 0;
  v19 = [contextCopy executeFetchRequest:v14 error:&v29];
  v20 = v29;
  if (v19)
  {
    firstObject = [v19 firstObject];
  }

  else
  {
    context = objc_autoreleasePoolPush();
    selfCopy = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v26 = HMFGetLogIdentifier();
      *buf = 138544386;
      v31 = v26;
      v32 = 2112;
      v33 = v28;
      v34 = 2112;
      v35 = profileCopy;
      v36 = 2112;
      v37 = destinationCopy;
      v38 = 2112;
      v39 = v20;
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch notification registrations for mediaProperty: %@, mediaProfile: %@, deviceIdsDestination: %@, error: %@", buf, 0x34u);
    }

    objc_autoreleasePoolPop(context);
    firstObject = 0;
  }

  v24 = *MEMORY[0x277D85DE8];

  return firstObject;
}

- (id)notificationRegistrationForCharacteristic:(id)characteristic deviceIdsDestination:(id)destination context:(id)context
{
  v43 = *MEMORY[0x277D85DE8];
  characteristicCopy = characteristic;
  destinationCopy = destination;
  contextCopy = context;
  v11 = +[_MKFNotificationRegistrationCharacteristic fetchRequest];
  instanceID = [characteristicCopy instanceID];
  service = [characteristicCopy service];
  instanceID2 = [service instanceID];

  accessory = [characteristicCopy accessory];
  uuid = [accessory uuid];

  if (instanceID && instanceID2 && uuid)
  {
    v17 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(%K == %@) AND (%K == %@) AND (%K.%K == %@) AND (%K.%K.%K == %@) AND (%K.%K.%K.modelID == %@)", @"user", self, @"deviceIdsDestination", destinationCopy, @"characteristic", @"instanceID", instanceID, @"characteristic", @"service", @"instanceID", instanceID2, @"characteristic", @"service", @"accessory", uuid];
    [v11 setPredicate:v17];

    v32 = contextCopy;
    v34 = 0;
    v18 = [contextCopy executeFetchRequest:v11 error:&v34];
    v19 = v34;
    if (v18)
    {
      firstObject = [v18 firstObject];
    }

    else
    {
      context = objc_autoreleasePoolPush();
      selfCopy = self;
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v30 = HMFGetLogIdentifier();
        *buf = 138544130;
        v36 = v30;
        v37 = 2112;
        v38 = characteristicCopy;
        v39 = 2112;
        v40 = destinationCopy;
        v41 = 2112;
        v42 = v19;
        _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch notification registrations for characteristic: %@, deviceIdsDestination: %@, error: %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(context);
      firstObject = 0;
    }

    contextCopy = v32;
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v33 = destinationCopy;
      v25 = v24 = contextCopy;
      *buf = 138544130;
      v36 = v25;
      v37 = 2112;
      v38 = instanceID;
      v39 = 2112;
      v40 = instanceID2;
      v41 = 2112;
      v42 = uuid;
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@Error before fetching registration for characteristic, characteristic value should not be nil: instanceID: %@, serviceInstanceID: %@, accessoryUUID: %@", buf, 0x2Au);

      contextCopy = v24;
      destinationCopy = v33;
    }

    objc_autoreleasePoolPop(v21);
    firstObject = 0;
  }

  v28 = *MEMORY[0x277D85DE8];

  return firstObject;
}

- (_MKFUser)userWithAccessCode:(id)code context:(id)context
{
  v29 = *MEMORY[0x277D85DE8];
  codeCopy = code;
  contextCopy = context;
  v8 = +[_MKFUserAccessCode fetchRequest];
  v9 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(%K == %@) AND (%K == %@)", @"accessCode", codeCopy, @"user", self];
  [v8 setPredicate:v9];

  v20 = 0;
  v10 = [contextCopy executeFetchRequest:v8 error:&v20];
  v11 = v20;
  if (v10)
  {
    firstObject = [v10 firstObject];
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      modelID = [(_MKFUser *)selfCopy modelID];
      *buf = 138544130;
      v22 = v16;
      v23 = 2112;
      v24 = codeCopy;
      v25 = 2112;
      v26 = modelID;
      v27 = 2112;
      v28 = v11;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch userAccessCodes with access code %@ and user UUID %@: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v13);
    firstObject = 0;
  }

  v18 = *MEMORY[0x277D85DE8];

  return firstObject;
}

- (id)matterBulletinRegistrationForEndpointID:(id)d accessoryUUID:(id)iD deviceIdsIdentifier:(id)identifier context:(id)context
{
  v35 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  identifierCopy = identifier;
  contextCopy = context;
  [contextCopy hmd_assertIsExecuting];
  v14 = +[_MKFMatterBulletinRegistration fetchRequest];
  iDCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"(%K == %@) AND (%K == %@) AND (%K.%K contains %@) AND (%K.%K.modelID contains %@)", @"user", self, @"deviceIdsIdentifier", identifierCopy, @"matterPaths_", @"endpointID", dCopy, @"matterPaths_", @"accessory", iDCopy];
  [v14 setPredicate:iDCopy];

  v26 = 0;
  v16 = [contextCopy executeFetchRequest:v14 error:&v26];
  v17 = v26;
  if (v16)
  {
    firstObject = [v16 firstObject];
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    selfCopy = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v22 = v25 = v19;
      *buf = 138544130;
      v28 = v22;
      v29 = 2112;
      v30 = dCopy;
      v31 = 2112;
      v32 = iDCopy;
      v33 = 2112;
      v34 = v17;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch Matter bulletin registration with endpointID %@: on accessory %@, error: %@", buf, 0x2Au);

      v19 = v25;
    }

    objc_autoreleasePoolPop(v19);
    firstObject = 0;
  }

  v23 = *MEMORY[0x277D85DE8];

  return firstObject;
}

- (id)characteristicBulletinRegistrationForAccessory:(id)accessory serviceInstanceID:(id)d characteristicInstanceID:(id)iD deviceIdsIdentifier:(id)identifier context:(id)context
{
  v37 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  dCopy = d;
  iDCopy = iD;
  identifierCopy = identifier;
  contextCopy = context;
  v17 = +[_MKFCharacteristicBulletinRegistration fetchRequest];
  accessoryCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"(%K == %@) AND (%K == %@) AND (%K.%K == %@) AND (%K.%K.%K == %@) AND (%K.%K.%K.modelID == %@)", @"user", self, @"deviceIdsIdentifier", identifierCopy, @"characteristic", @"instanceID", iDCopy, @"characteristic", @"service", @"instanceID", dCopy, @"characteristic", @"service", @"accessory", accessoryCopy];
  [v17 setPredicate:accessoryCopy];

  v28 = 0;
  v19 = [contextCopy executeFetchRequest:v17 error:&v28];
  v20 = v28;
  if (v19)
  {
    firstObject = [v19 firstObject];
  }

  else
  {
    context = objc_autoreleasePoolPush();
    selfCopy = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v26 = HMFGetLogIdentifier();
      *buf = 138544130;
      v30 = v26;
      v31 = 2112;
      v32 = iDCopy;
      v33 = 2112;
      v34 = accessoryCopy;
      v35 = 2112;
      v36 = v20;
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch characteristic bulletin registration with characteristic instanceID %@: on accessory %@, error: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(context);
    firstObject = 0;
  }

  v24 = *MEMORY[0x277D85DE8];

  return firstObject;
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

+ (id)modelIDForParentRelationshipTo:(id)to
{
  toCopy = to;
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = MEMORY[0x277CCACA8];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"You must override %@ in a subclass", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

+ (id)sharedUserDataRootForUser:(id)user context:(id)context
{
  v66 = *MEMORY[0x277D85DE8];
  userCopy = user;
  contextCopy = context;
  hmd_coreData = [contextCopy hmd_coreData];
  home = [userCopy home];
  modelID = [home modelID];

  reverseShareID = [userCopy reverseShareID];
  if ([userCopy isOwner])
  {
    v11 = objc_autoreleasePoolPush();
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      modelID2 = [userCopy modelID];
      *buf = 138543618;
      v61 = v13;
      v62 = 2112;
      v63 = modelID2;
      v15 = "%{public}@Owner %@ does not have a reverse share for their own home";
LABEL_21:
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, v15, buf, 0x16u);

      goto LABEL_22;
    }

    goto LABEL_22;
  }

  if (!reverseShareID)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      modelID2 = [userCopy modelID];
      *buf = 138543618;
      v61 = v13;
      v62 = 2112;
      v63 = modelID2;
      v15 = "%{public}@Shared user %@ does not have a reverse share assigned";
      goto LABEL_21;
    }

LABEL_22:

    objc_autoreleasePoolPop(v11);
    v35 = 0;
    goto LABEL_31;
  }

  v16 = +[MKFCKSharedUserDataRoot fetchRequest];
  v17 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@", @"homeModelID", modelID];
  [v16 setPredicate:v17];

  v58 = 0;
  v18 = [contextCopy executeFetchRequest:v16 error:&v58];
  v19 = v58;
  v50 = v18;
  if (v18)
  {
    if ([v18 count])
    {
      v47 = userCopy;
      v48 = v19;
      v43 = v16;
      v44 = modelID;
      v52 = reverseShareID;
      v45 = hmd_coreData;
      v46 = contextCopy;
      container = [hmd_coreData container];
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
            objectID = [v25 objectID];
            v27 = [container recordForManagedObjectID:objectID];

            if (v27)
            {
              zoneID = [v52 zoneID];
              recordID = [v27 recordID];
              zoneID2 = [recordID zoneID];
              v31 = [zoneID isEqual:zoneID2];

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
      contextCopy = v46;
      userCopy = v47;
      modelID = v44;
      hmd_coreData = v45;
      reverseShareID = v52;
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
      v63 = modelID;
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
      v63 = modelID;
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

+ (id)findUserUsingReverseShareID:(id)d homeModelID:(id)iD context:(id)context
{
  v29 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  contextCopy = context;
  v11 = +[_MKFUser fetchRequest];
  iDCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@ && %K.%K == %@", @"reverseShareID", dCopy, @"home", @"modelID", iDCopy];
  [v11 setPredicate:iDCopy];

  [v11 setFetchLimit:2];
  v24 = 0;
  v13 = [contextCopy executeFetchRequest:v11 error:&v24];
  v14 = v24;
  if (v13)
  {
    if ([v13 count] == 1)
    {
      firstObject = [v13 firstObject];
      goto LABEL_10;
    }

    v16 = objc_autoreleasePoolPush();
    selfCopy2 = self;
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
    selfCopy2 = self;
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
  firstObject = 0;
LABEL_10:

  v22 = *MEMORY[0x277D85DE8];

  return firstObject;
}

- (void)residentSyncContextualizeConditions:(id)conditions userContext:(id)context
{
  conditionsCopy = conditions;
  targetUser = [context targetUser];

  if (targetUser == self)
  {
    [conditionsCopy addCondition:@"userIsTargetUser"];
  }

  if ([(_MKFUser *)self isOwner])
  {
    [conditionsCopy addCondition:@"userIsOwner"];
  }
}

@end