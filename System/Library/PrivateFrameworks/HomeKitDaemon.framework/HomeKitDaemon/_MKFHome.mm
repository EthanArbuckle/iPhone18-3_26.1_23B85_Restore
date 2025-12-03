@interface _MKFHome
+ (id)findHomeMemberUsingReverseShareID:(id)d homeModelID:(id)iD context:(id)context;
+ (id)findHomeMemberWithUUID:(id)d context:(id)context;
- (BOOL)residentSyncClientDidSync;
- (BOOL)validateForInsertOrUpdate:(id *)update;
- (MKFHomeDatabaseID)databaseID;
- (NSArray)accessories;
- (NSArray)actionSets;
- (NSArray)faceprints;
- (NSArray)guestAccessCodes;
- (NSArray)guests;
- (NSArray)invitations;
- (NSArray)matterControllerLocalKeyValuePairs;
- (NSArray)networkProtectionGroups;
- (NSArray)persons;
- (NSArray)removedAccessCodes;
- (NSArray)residentSelections;
- (NSArray)residents;
- (NSArray)rooms;
- (NSArray)serviceGroups;
- (NSArray)settings;
- (NSArray)triggers;
- (NSArray)users;
- (NSArray)zones;
- (id)accessoryWithModelID:(id)d context:(id)context;
- (id)createAccessoriesRelationOfType:(id)type modelID:(id)d;
- (id)createTriggersRelationOfType:(id)type modelID:(id)d;
- (id)findHomeMemberWithUUID:(id)d;
- (id)guestAccessCode:(id)code withLabel:(id)label context:(id)context;
- (id)homeMembers;
- (id)materializeOrCreateAccessoriesRelationOfType:(id)type modelID:(id)d createdNew:(BOOL *)new;
- (id)materializeOrCreateTriggersRelationOfType:(id)type modelID:(id)d createdNew:(BOOL *)new;
- (void)residentSyncContextualizeConditions:(id)conditions userContext:(id)context;
- (void)setDidOnboardEventLog:(id)log;
- (void)willSave;
@end

@implementation _MKFHome

- (NSArray)guests
{
  v2 = [(_MKFHome *)self valueForKey:@"guests_"];
  allObjects = [v2 allObjects];

  return allObjects;
}

- (NSArray)zones
{
  v2 = [(_MKFHome *)self valueForKey:@"zones_"];
  allObjects = [v2 allObjects];

  return allObjects;
}

- (NSArray)users
{
  v2 = [(_MKFHome *)self valueForKey:@"users_"];
  allObjects = [v2 allObjects];

  return allObjects;
}

- (id)createTriggersRelationOfType:(id)type modelID:(id)d
{
  dCopy = d;
  v7 = NSStringFromProtocol(type);
  v8 = [(NSManagedObject *)self mkf_createRelationOnProperty:@"triggers_" modelProtocol:v7 keyValue:dCopy];

  return v8;
}

- (id)materializeOrCreateTriggersRelationOfType:(id)type modelID:(id)d createdNew:(BOOL *)new
{
  dCopy = d;
  v9 = NSStringFromProtocol(type);
  v10 = [(NSManagedObject *)self mkf_materializeOrCreateRelationOnProperty:@"triggers_" modelProtocol:v9 keyValue:dCopy createdNew:new];

  return v10;
}

- (NSArray)triggers
{
  v2 = [(_MKFHome *)self valueForKey:@"triggers_"];
  allObjects = [v2 allObjects];

  return allObjects;
}

- (NSArray)settings
{
  v2 = [(_MKFHome *)self valueForKey:@"settings_"];
  allObjects = [v2 allObjects];

  return allObjects;
}

- (NSArray)serviceGroups
{
  v2 = [(_MKFHome *)self valueForKey:@"serviceGroups_"];
  allObjects = [v2 allObjects];

  return allObjects;
}

- (NSArray)rooms
{
  v2 = [(_MKFHome *)self valueForKey:@"rooms_"];
  allObjects = [v2 allObjects];

  return allObjects;
}

- (NSArray)residents
{
  v2 = [(_MKFHome *)self valueForKey:@"residents_"];
  allObjects = [v2 allObjects];

  return allObjects;
}

- (NSArray)residentSelections
{
  v2 = [(_MKFHome *)self valueForKey:@"residentSelections_"];
  allObjects = [v2 allObjects];

  return allObjects;
}

- (NSArray)removedAccessCodes
{
  v2 = [(_MKFHome *)self valueForKey:@"removedAccessCodes_"];
  allObjects = [v2 allObjects];

  return allObjects;
}

- (NSArray)persons
{
  v2 = [(_MKFHome *)self valueForKey:@"persons_"];
  allObjects = [v2 allObjects];

  return allObjects;
}

- (NSArray)networkProtectionGroups
{
  v2 = [(_MKFHome *)self valueForKey:@"networkProtectionGroups_"];
  allObjects = [v2 allObjects];

  return allObjects;
}

- (NSArray)matterControllerLocalKeyValuePairs
{
  v2 = [(_MKFHome *)self valueForKey:@"matterControllerLocalKeyValuePairs_"];
  allObjects = [v2 allObjects];

  return allObjects;
}

- (NSArray)invitations
{
  v2 = [(_MKFHome *)self valueForKey:@"invitations_"];
  allObjects = [v2 allObjects];

  return allObjects;
}

- (NSArray)guestAccessCodes
{
  v2 = [(_MKFHome *)self valueForKey:@"guestAccessCodes_"];
  allObjects = [v2 allObjects];

  return allObjects;
}

- (NSArray)faceprints
{
  v2 = [(_MKFHome *)self valueForKey:@"faceprints_"];
  allObjects = [v2 allObjects];

  return allObjects;
}

- (NSArray)actionSets
{
  v2 = [(_MKFHome *)self valueForKey:@"actionSets_"];
  allObjects = [v2 allObjects];

  return allObjects;
}

- (id)createAccessoriesRelationOfType:(id)type modelID:(id)d
{
  dCopy = d;
  v7 = NSStringFromProtocol(type);
  v8 = [(NSManagedObject *)self mkf_createRelationOnProperty:@"accessories_" modelProtocol:v7 keyValue:dCopy];

  return v8;
}

- (id)materializeOrCreateAccessoriesRelationOfType:(id)type modelID:(id)d createdNew:(BOOL *)new
{
  dCopy = d;
  v9 = NSStringFromProtocol(type);
  v10 = [(NSManagedObject *)self mkf_materializeOrCreateRelationOnProperty:@"accessories_" modelProtocol:v9 keyValue:dCopy createdNew:new];

  return v10;
}

- (NSArray)accessories
{
  v2 = [(_MKFHome *)self valueForKey:@"accessories_"];
  allObjects = [v2 allObjects];

  return allObjects;
}

- (MKFHomeDatabaseID)databaseID
{
  v2 = [(MKFObjectDatabaseID *)[MKFHomeDatabaseID alloc] initWithMKFObject:self];

  return v2;
}

- (BOOL)validateForInsertOrUpdate:(id *)update
{
  v11.receiver = self;
  v11.super_class = _MKFHome;
  LODWORD(v5) = [(_MKFModel *)&v11 validateForInsertOrUpdate:?];
  if (v5)
  {
    defaultRoom = [(_MKFHome *)self defaultRoom];

    if (defaultRoom)
    {
      owner = [(_MKFHome *)self owner];

      if (owner)
      {
        LOBYTE(v5) = 1;
        return v5;
      }

      if (update)
      {
        v8 = [MEMORY[0x277CCA9B8] hmd_validationErrorWithDescription:@"owner is required" managedObject:self attributeName:@"owner"];
        goto LABEL_9;
      }
    }

    else if (update)
    {
      v8 = [MEMORY[0x277CCA9B8] hmd_validationErrorWithDescription:@"defaultRoom is required"];
LABEL_9:
      v9 = v8;
      v5 = v8;
      LOBYTE(v5) = 0;
      *update = v9;
      return v5;
    }

    LOBYTE(v5) = 0;
  }

  return v5;
}

- (BOOL)residentSyncClientDidSync
{
  residentSyncMetadata = [(_MKFHome *)self residentSyncMetadata];
  lastSyncTimestamp = [residentSyncMetadata lastSyncTimestamp];
  v4 = lastSyncTimestamp != 0;

  return v4;
}

- (id)accessoryWithModelID:(id)d context:(id)context
{
  v26 = *MEMORY[0x277D85DE8];
  dCopy = d;
  contextCopy = context;
  v8 = +[_MKFAccessory fetchRequest];
  dCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"(%K == %@) AND (%K == %@)", @"home", self, @"modelID", dCopy];
  [v8 setPredicate:dCopy];

  v19 = 0;
  v10 = [contextCopy executeFetchRequest:v8 error:&v19];
  v11 = v19;
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
      *buf = 138543874;
      v21 = v16;
      v22 = 2112;
      v23 = dCopy;
      v24 = 2112;
      v25 = v11;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch accessories for modelID %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v13);
    firstObject = 0;
  }

  v17 = *MEMORY[0x277D85DE8];

  return firstObject;
}

- (id)homeMembers
{
  array = [MEMORY[0x277CBEB18] array];
  users = [(_MKFHome *)self users];
  [array addObjectsFromArray:users];

  guests = [(_MKFHome *)self guests];
  [array addObjectsFromArray:guests];

  v6 = [array copy];

  return v6;
}

- (id)findHomeMemberWithUUID:(id)d
{
  dCopy = d;
  v5 = objc_opt_class();
  managedObjectContext = [(_MKFHome *)self managedObjectContext];
  v7 = [v5 findHomeMemberWithUUID:dCopy context:managedObjectContext];

  return v7;
}

- (void)setDidOnboardEventLog:(id)log
{
  v4 = [log copy];
  [(_MKFHome *)self setDidOnboardMemory:v4];
}

- (id)guestAccessCode:(id)code withLabel:(id)label context:(id)context
{
  v33 = *MEMORY[0x277D85DE8];
  codeCopy = code;
  labelCopy = label;
  contextCopy = context;
  v11 = +[_MKFGuestAccessCode fetchRequest];
  v12 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(%K == %@) AND (%K == %@) AND (%K == %@)", @"accessCode", codeCopy, @"label", labelCopy, @"home", self];
  [v11 setPredicate:v12];

  v24 = 0;
  v13 = [contextCopy executeFetchRequest:v11 error:&v24];
  v14 = v24;
  if (v13)
  {
    firstObject = [v13 firstObject];
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    selfCopy = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      [(_MKFHome *)selfCopy modelID];
      v20 = v23 = v16;
      *buf = 138544130;
      v26 = v19;
      v27 = 2112;
      v28 = codeCopy;
      v29 = 2112;
      v30 = v20;
      v31 = 2112;
      v32 = v14;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch guestAccessCodes with access code %@ and  %@: %@", buf, 0x2Au);

      v16 = v23;
    }

    objc_autoreleasePoolPop(v16);
    firstObject = 0;
  }

  v21 = *MEMORY[0x277D85DE8];

  return firstObject;
}

+ (id)findHomeMemberUsingReverseShareID:(id)d homeModelID:(id)iD context:(id)context
{
  dCopy = d;
  iDCopy = iD;
  contextCopy = context;
  v10 = [_MKFUser findUserUsingReverseShareID:dCopy homeModelID:iDCopy context:contextCopy];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = [_MKFGuest findGuestUsingReverseShareID:dCopy homeModelID:iDCopy context:contextCopy];
  }

  v13 = v12;

  return v13;
}

+ (id)findHomeMemberWithUUID:(id)d context:(id)context
{
  dCopy = d;
  contextCopy = context;
  v7 = [(_MKFModel *)_MKFUser modelWithModelID:dCopy context:contextCopy];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = [(_MKFModel *)_MKFGuest modelWithModelID:dCopy context:contextCopy];
  }

  v10 = v9;

  return v10;
}

- (void)residentSyncContextualizeConditions:(id)conditions userContext:(id)context
{
  conditionsCopy = conditions;
  contextCopy = context;
  if ([contextCopy targetIsResident])
  {
    [conditionsCopy addCondition:@"resident"];
  }

  targetUser = [contextCopy targetUser];
  isOwner = [targetUser isOwner];

  if (isOwner)
  {
    [conditionsCopy addCondition:@"owner"];
  }

  targetUser2 = [contextCopy targetUser];
  isOwnerOrAdmin = [targetUser2 isOwnerOrAdmin];

  if (isOwnerOrAdmin)
  {
    [conditionsCopy addCondition:@"admin"];
  }

  targetDeviceAddress = [contextCopy targetDeviceAddress];

  if (targetDeviceAddress)
  {
    [conditionsCopy addCondition:@"fetch"];
  }
}

- (void)willSave
{
  v40[2] = *MEMORY[0x277D85DE8];
  v38.receiver = self;
  v38.super_class = _MKFHome;
  [(_MKFModel *)&v38 willSave];
  if (([(_MKFHome *)self isUpdated]& 1) != 0 || [(_MKFHome *)self isInserted])
  {
    owned = [(_MKFHome *)self owned];
    bOOLValue = [owned BOOLValue];

    if (bOOLValue)
    {
      managedObjectContext = [(_MKFHome *)self managedObjectContext];
      hmd_transactionAuthor = [managedObjectContext hmd_transactionAuthor];

      if (hmd_transactionAuthor <= 0xB && ((1 << hmd_transactionAuthor) & 0xC58) != 0)
      {
        changedValues = [(_MKFHome *)self changedValues];
        if ([changedValues count])
        {
          v8 = [changedValues objectForKeyedSubscript:@"accessories_"];

          if (v8)
          {
            accessories = [(_MKFHome *)self accessories];
            v10 = [accessories count];

            numberOfCameras = [(_MKFHome *)self numberOfCameras];
            v12 = numberOfCameras;
            if (v10)
            {
              v33 = changedValues;
              unsignedIntValue = [numberOfCameras unsignedIntValue];

              v13 = +[HMDHAPMetadata getSharedInstance];
              v14 = MEMORY[0x277CBEB98];
              v15 = *MEMORY[0x277CCE8B8];
              v40[0] = *MEMORY[0x277CCE948];
              v40[1] = v15;
              v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:2];
              v17 = [v14 setWithArray:v16];

              v36 = 0u;
              v37 = 0u;
              v34 = 0u;
              v35 = 0u;
              selfCopy = self;
              accessories2 = [(_MKFHome *)self accessories];
              v19 = [accessories2 countByEnumeratingWithState:&v34 objects:v39 count:16];
              if (v19)
              {
                v20 = v19;
                v21 = 0;
                v22 = *v35;
                do
                {
                  for (i = 0; i != v20; ++i)
                  {
                    if (*v35 != v22)
                    {
                      objc_enumerationMutation(accessories2);
                    }

                    accessoryCategory = [*(*(&v34 + 1) + 8 * i) accessoryCategory];
                    v25 = [v13 categoryForIdentifier:accessoryCategory];

                    uuidStr = [v25 uuidStr];
                    v27 = [v17 containsObject:uuidStr];

                    v21 += v27;
                  }

                  v20 = [accessories2 countByEnumeratingWithState:&v34 objects:v39 count:16];
                }

                while (v20);
              }

              else
              {
                v21 = 0;
              }

              if (v21 != unsignedIntValue)
              {
                v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v21];
                [(_MKFHome *)selfCopy setNumberOfCameras:v29];
              }

              changedValues = v33;
            }

            else
            {
              v28 = [numberOfCameras isEqualToNumber:&unk_283E75050];

              if ((v28 & 1) == 0)
              {
                [(_MKFHome *)self setNumberOfCameras:&unk_283E75050];
              }
            }
          }
        }
      }
    }
  }

  v30 = *MEMORY[0x277D85DE8];
}

@end