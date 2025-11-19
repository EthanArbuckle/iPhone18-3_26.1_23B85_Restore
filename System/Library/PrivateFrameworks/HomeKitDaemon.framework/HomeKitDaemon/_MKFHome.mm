@interface _MKFHome
+ (id)findHomeMemberUsingReverseShareID:(id)a3 homeModelID:(id)a4 context:(id)a5;
+ (id)findHomeMemberWithUUID:(id)a3 context:(id)a4;
- (BOOL)residentSyncClientDidSync;
- (BOOL)validateForInsertOrUpdate:(id *)a3;
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
- (id)accessoryWithModelID:(id)a3 context:(id)a4;
- (id)createAccessoriesRelationOfType:(id)a3 modelID:(id)a4;
- (id)createTriggersRelationOfType:(id)a3 modelID:(id)a4;
- (id)findHomeMemberWithUUID:(id)a3;
- (id)guestAccessCode:(id)a3 withLabel:(id)a4 context:(id)a5;
- (id)homeMembers;
- (id)materializeOrCreateAccessoriesRelationOfType:(id)a3 modelID:(id)a4 createdNew:(BOOL *)a5;
- (id)materializeOrCreateTriggersRelationOfType:(id)a3 modelID:(id)a4 createdNew:(BOOL *)a5;
- (void)residentSyncContextualizeConditions:(id)a3 userContext:(id)a4;
- (void)setDidOnboardEventLog:(id)a3;
- (void)willSave;
@end

@implementation _MKFHome

- (NSArray)guests
{
  v2 = [(_MKFHome *)self valueForKey:@"guests_"];
  v3 = [v2 allObjects];

  return v3;
}

- (NSArray)zones
{
  v2 = [(_MKFHome *)self valueForKey:@"zones_"];
  v3 = [v2 allObjects];

  return v3;
}

- (NSArray)users
{
  v2 = [(_MKFHome *)self valueForKey:@"users_"];
  v3 = [v2 allObjects];

  return v3;
}

- (id)createTriggersRelationOfType:(id)a3 modelID:(id)a4
{
  v6 = a4;
  v7 = NSStringFromProtocol(a3);
  v8 = [(NSManagedObject *)self mkf_createRelationOnProperty:@"triggers_" modelProtocol:v7 keyValue:v6];

  return v8;
}

- (id)materializeOrCreateTriggersRelationOfType:(id)a3 modelID:(id)a4 createdNew:(BOOL *)a5
{
  v8 = a4;
  v9 = NSStringFromProtocol(a3);
  v10 = [(NSManagedObject *)self mkf_materializeOrCreateRelationOnProperty:@"triggers_" modelProtocol:v9 keyValue:v8 createdNew:a5];

  return v10;
}

- (NSArray)triggers
{
  v2 = [(_MKFHome *)self valueForKey:@"triggers_"];
  v3 = [v2 allObjects];

  return v3;
}

- (NSArray)settings
{
  v2 = [(_MKFHome *)self valueForKey:@"settings_"];
  v3 = [v2 allObjects];

  return v3;
}

- (NSArray)serviceGroups
{
  v2 = [(_MKFHome *)self valueForKey:@"serviceGroups_"];
  v3 = [v2 allObjects];

  return v3;
}

- (NSArray)rooms
{
  v2 = [(_MKFHome *)self valueForKey:@"rooms_"];
  v3 = [v2 allObjects];

  return v3;
}

- (NSArray)residents
{
  v2 = [(_MKFHome *)self valueForKey:@"residents_"];
  v3 = [v2 allObjects];

  return v3;
}

- (NSArray)residentSelections
{
  v2 = [(_MKFHome *)self valueForKey:@"residentSelections_"];
  v3 = [v2 allObjects];

  return v3;
}

- (NSArray)removedAccessCodes
{
  v2 = [(_MKFHome *)self valueForKey:@"removedAccessCodes_"];
  v3 = [v2 allObjects];

  return v3;
}

- (NSArray)persons
{
  v2 = [(_MKFHome *)self valueForKey:@"persons_"];
  v3 = [v2 allObjects];

  return v3;
}

- (NSArray)networkProtectionGroups
{
  v2 = [(_MKFHome *)self valueForKey:@"networkProtectionGroups_"];
  v3 = [v2 allObjects];

  return v3;
}

- (NSArray)matterControllerLocalKeyValuePairs
{
  v2 = [(_MKFHome *)self valueForKey:@"matterControllerLocalKeyValuePairs_"];
  v3 = [v2 allObjects];

  return v3;
}

- (NSArray)invitations
{
  v2 = [(_MKFHome *)self valueForKey:@"invitations_"];
  v3 = [v2 allObjects];

  return v3;
}

- (NSArray)guestAccessCodes
{
  v2 = [(_MKFHome *)self valueForKey:@"guestAccessCodes_"];
  v3 = [v2 allObjects];

  return v3;
}

- (NSArray)faceprints
{
  v2 = [(_MKFHome *)self valueForKey:@"faceprints_"];
  v3 = [v2 allObjects];

  return v3;
}

- (NSArray)actionSets
{
  v2 = [(_MKFHome *)self valueForKey:@"actionSets_"];
  v3 = [v2 allObjects];

  return v3;
}

- (id)createAccessoriesRelationOfType:(id)a3 modelID:(id)a4
{
  v6 = a4;
  v7 = NSStringFromProtocol(a3);
  v8 = [(NSManagedObject *)self mkf_createRelationOnProperty:@"accessories_" modelProtocol:v7 keyValue:v6];

  return v8;
}

- (id)materializeOrCreateAccessoriesRelationOfType:(id)a3 modelID:(id)a4 createdNew:(BOOL *)a5
{
  v8 = a4;
  v9 = NSStringFromProtocol(a3);
  v10 = [(NSManagedObject *)self mkf_materializeOrCreateRelationOnProperty:@"accessories_" modelProtocol:v9 keyValue:v8 createdNew:a5];

  return v10;
}

- (NSArray)accessories
{
  v2 = [(_MKFHome *)self valueForKey:@"accessories_"];
  v3 = [v2 allObjects];

  return v3;
}

- (MKFHomeDatabaseID)databaseID
{
  v2 = [(MKFObjectDatabaseID *)[MKFHomeDatabaseID alloc] initWithMKFObject:self];

  return v2;
}

- (BOOL)validateForInsertOrUpdate:(id *)a3
{
  v11.receiver = self;
  v11.super_class = _MKFHome;
  LODWORD(v5) = [(_MKFModel *)&v11 validateForInsertOrUpdate:?];
  if (v5)
  {
    v6 = [(_MKFHome *)self defaultRoom];

    if (v6)
    {
      v7 = [(_MKFHome *)self owner];

      if (v7)
      {
        LOBYTE(v5) = 1;
        return v5;
      }

      if (a3)
      {
        v8 = [MEMORY[0x277CCA9B8] hmd_validationErrorWithDescription:@"owner is required" managedObject:self attributeName:@"owner"];
        goto LABEL_9;
      }
    }

    else if (a3)
    {
      v8 = [MEMORY[0x277CCA9B8] hmd_validationErrorWithDescription:@"defaultRoom is required"];
LABEL_9:
      v9 = v8;
      v5 = v8;
      LOBYTE(v5) = 0;
      *a3 = v9;
      return v5;
    }

    LOBYTE(v5) = 0;
  }

  return v5;
}

- (BOOL)residentSyncClientDidSync
{
  v2 = [(_MKFHome *)self residentSyncMetadata];
  v3 = [v2 lastSyncTimestamp];
  v4 = v3 != 0;

  return v4;
}

- (id)accessoryWithModelID:(id)a3 context:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = +[_MKFAccessory fetchRequest];
  v9 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(%K == %@) AND (%K == %@)", @"home", self, @"modelID", v6];
  [v8 setPredicate:v9];

  v19 = 0;
  v10 = [v7 executeFetchRequest:v8 error:&v19];
  v11 = v19;
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
      *buf = 138543874;
      v21 = v16;
      v22 = 2112;
      v23 = v6;
      v24 = 2112;
      v25 = v11;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch accessories for modelID %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v13);
    v12 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)homeMembers
{
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [(_MKFHome *)self users];
  [v3 addObjectsFromArray:v4];

  v5 = [(_MKFHome *)self guests];
  [v3 addObjectsFromArray:v5];

  v6 = [v3 copy];

  return v6;
}

- (id)findHomeMemberWithUUID:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [(_MKFHome *)self managedObjectContext];
  v7 = [v5 findHomeMemberWithUUID:v4 context:v6];

  return v7;
}

- (void)setDidOnboardEventLog:(id)a3
{
  v4 = [a3 copy];
  [(_MKFHome *)self setDidOnboardMemory:v4];
}

- (id)guestAccessCode:(id)a3 withLabel:(id)a4 context:(id)a5
{
  v33 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[_MKFGuestAccessCode fetchRequest];
  v12 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(%K == %@) AND (%K == %@) AND (%K == %@)", @"accessCode", v8, @"label", v9, @"home", self];
  [v11 setPredicate:v12];

  v24 = 0;
  v13 = [v10 executeFetchRequest:v11 error:&v24];
  v14 = v24;
  if (v13)
  {
    v15 = [v13 firstObject];
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    v17 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      [(_MKFHome *)v17 modelID];
      v20 = v23 = v16;
      *buf = 138544130;
      v26 = v19;
      v27 = 2112;
      v28 = v8;
      v29 = 2112;
      v30 = v20;
      v31 = 2112;
      v32 = v14;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch guestAccessCodes with access code %@ and  %@: %@", buf, 0x2Au);

      v16 = v23;
    }

    objc_autoreleasePoolPop(v16);
    v15 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];

  return v15;
}

+ (id)findHomeMemberUsingReverseShareID:(id)a3 homeModelID:(id)a4 context:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [_MKFUser findUserUsingReverseShareID:v7 homeModelID:v8 context:v9];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = [_MKFGuest findGuestUsingReverseShareID:v7 homeModelID:v8 context:v9];
  }

  v13 = v12;

  return v13;
}

+ (id)findHomeMemberWithUUID:(id)a3 context:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [(_MKFModel *)_MKFUser modelWithModelID:v5 context:v6];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = [(_MKFModel *)_MKFGuest modelWithModelID:v5 context:v6];
  }

  v10 = v9;

  return v10;
}

- (void)residentSyncContextualizeConditions:(id)a3 userContext:(id)a4
{
  v11 = a3;
  v5 = a4;
  if ([v5 targetIsResident])
  {
    [v11 addCondition:@"resident"];
  }

  v6 = [v5 targetUser];
  v7 = [v6 isOwner];

  if (v7)
  {
    [v11 addCondition:@"owner"];
  }

  v8 = [v5 targetUser];
  v9 = [v8 isOwnerOrAdmin];

  if (v9)
  {
    [v11 addCondition:@"admin"];
  }

  v10 = [v5 targetDeviceAddress];

  if (v10)
  {
    [v11 addCondition:@"fetch"];
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
    v3 = [(_MKFHome *)self owned];
    v4 = [v3 BOOLValue];

    if (v4)
    {
      v5 = [(_MKFHome *)self managedObjectContext];
      v6 = [v5 hmd_transactionAuthor];

      if (v6 <= 0xB && ((1 << v6) & 0xC58) != 0)
      {
        v7 = [(_MKFHome *)self changedValues];
        if ([v7 count])
        {
          v8 = [v7 objectForKeyedSubscript:@"accessories_"];

          if (v8)
          {
            v9 = [(_MKFHome *)self accessories];
            v10 = [v9 count];

            v11 = [(_MKFHome *)self numberOfCameras];
            v12 = v11;
            if (v10)
            {
              v33 = v7;
              v32 = [v11 unsignedIntValue];

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
              v31 = self;
              v18 = [(_MKFHome *)self accessories];
              v19 = [v18 countByEnumeratingWithState:&v34 objects:v39 count:16];
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
                      objc_enumerationMutation(v18);
                    }

                    v24 = [*(*(&v34 + 1) + 8 * i) accessoryCategory];
                    v25 = [v13 categoryForIdentifier:v24];

                    v26 = [v25 uuidStr];
                    v27 = [v17 containsObject:v26];

                    v21 += v27;
                  }

                  v20 = [v18 countByEnumeratingWithState:&v34 objects:v39 count:16];
                }

                while (v20);
              }

              else
              {
                v21 = 0;
              }

              if (v21 != v32)
              {
                v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v21];
                [(_MKFHome *)v31 setNumberOfCameras:v29];
              }

              v7 = v33;
            }

            else
            {
              v28 = [v11 isEqualToNumber:&unk_283E75050];

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