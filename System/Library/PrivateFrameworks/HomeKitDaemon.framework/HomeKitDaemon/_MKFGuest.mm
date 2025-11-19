@interface _MKFGuest
+ (NSPredicate)homeRelation;
+ (id)findGuestUsingReverseShareID:(id)a3 homeModelID:(id)a4 context:(id)a5;
+ (id)logCategory;
+ (id)modelIDForParentRelationshipTo:(id)a3;
- (BOOL)isResidentSyncParticipant;
- (BOOL)isRestrictedGuest;
- (BOOL)populateWorkingStoreFromRestrictedGuestSchedule:(id)a3;
- (MKFGuestDatabaseID)databaseID;
- (NSArray)allowedAccessories;
- (NSArray)bulletinConditions;
- (NSArray)bulletinRegistrations;
- (NSArray)notificationRegistrations;
- (NSArray)presenceEvents;
- (NSArray)userActivityStatuses;
- (NSArray)weekDayScheduleRules;
- (NSArray)yearDayScheduleRules;
- (id)allowedAccessoryUUIDs;
- (id)castIfMemberIsGuest;
- (id)characteristicBulletinRegistrationForAccessory:(id)a3 serviceInstanceID:(id)a4 characteristicInstanceID:(id)a5 deviceIdsIdentifier:(id)a6 context:(id)a7;
- (id)createAllowedAccessoriesRelationOfType:(id)a3 modelID:(id)a4;
- (id)createBulletinRegistrationsRelationOfType:(id)a3 modelID:(id)a4;
- (id)createNotificationRegistrationsRelationOfType:(id)a3 modelID:(id)a4;
- (id)findUserActivityStatusForType:(unint64_t)a3;
- (id)materializeOrCreateAllowedAccessoriesRelationOfType:(id)a3 modelID:(id)a4 createdNew:(BOOL *)a5;
- (id)materializeOrCreateBulletinRegistrationsRelationOfType:(id)a3 modelID:(id)a4 createdNew:(BOOL *)a5;
- (id)materializeOrCreateNotificationRegistrationsRelationOfType:(id)a3 modelID:(id)a4 createdNew:(BOOL *)a5;
- (id)matterBulletinRegistrationForEndpointID:(id)a3 accessoryUUID:(id)a4 deviceIdsIdentifier:(id)a5 context:(id)a6;
- (id)restrictedGuestSchedule;
- (void)dematerializeAllowedAccessoriesRelationship;
- (void)dematerializeWeekDayRuleRelationship;
- (void)dematerializeYearDayRuleRelationship;
- (void)residentSyncContextualizeConditions:(id)a3 userContext:(id)a4;
@end

@implementation _MKFGuest

- (NSArray)yearDayScheduleRules
{
  v2 = [(_MKFGuest *)self valueForKey:@"yearDayScheduleRules_"];
  v3 = [v2 allObjects];

  return v3;
}

- (NSArray)weekDayScheduleRules
{
  v2 = [(_MKFGuest *)self valueForKey:@"weekDayScheduleRules_"];
  v3 = [v2 allObjects];

  return v3;
}

- (NSArray)userActivityStatuses
{
  v2 = [(_MKFGuest *)self valueForKey:@"userActivityStatuses_"];
  v3 = [v2 allObjects];

  return v3;
}

- (NSArray)presenceEvents
{
  v2 = [(_MKFGuest *)self valueForKey:@"presenceEvents_"];
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
  v2 = [(_MKFGuest *)self valueForKey:@"notificationRegistrations_"];
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
  v2 = [(_MKFGuest *)self valueForKey:@"bulletinRegistrations_"];
  v3 = [v2 allObjects];

  return v3;
}

- (NSArray)bulletinConditions
{
  v2 = [(_MKFGuest *)self valueForKey:@"bulletinConditions_"];
  v3 = [v2 allObjects];

  return v3;
}

- (id)createAllowedAccessoriesRelationOfType:(id)a3 modelID:(id)a4
{
  v6 = a4;
  v7 = NSStringFromProtocol(a3);
  v8 = [(NSManagedObject *)self mkf_createRelationOnProperty:@"allowedAccessories_" modelProtocol:v7 keyValue:v6];

  return v8;
}

- (id)materializeOrCreateAllowedAccessoriesRelationOfType:(id)a3 modelID:(id)a4 createdNew:(BOOL *)a5
{
  v8 = a4;
  v9 = NSStringFromProtocol(a3);
  v10 = [(NSManagedObject *)self mkf_materializeOrCreateRelationOnProperty:@"allowedAccessories_" modelProtocol:v9 keyValue:v8 createdNew:a5];

  return v10;
}

- (NSArray)allowedAccessories
{
  v2 = [(_MKFGuest *)self valueForKey:@"allowedAccessories_"];
  v3 = [v2 allObjects];

  return v3;
}

- (MKFGuestDatabaseID)databaseID
{
  v2 = [(MKFObjectDatabaseID *)[MKFGuestDatabaseID alloc] initWithMKFObject:self];

  return v2;
}

- (id)findUserActivityStatusForType:(unint64_t)a3
{
  v4 = [(_MKFGuest *)self userActivityStatuses];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43___MKFGuest_findUserActivityStatusForType___block_invoke;
  v7[3] = &__block_descriptor_40_e40_B32__0___MKFUserActivityStatus__8Q16_B24l;
  v7[4] = a3;
  v5 = [v4 hmf_objectPassingTest:v7];

  return v5;
}

- (void)dematerializeYearDayRuleRelationship
{
  v3 = [(_MKFGuest *)self valueForKey:@"yearDayScheduleRules_"];
  [(_MKFModel *)self deleteObjects:v3];
}

- (void)dematerializeWeekDayRuleRelationship
{
  v3 = [(_MKFGuest *)self valueForKey:@"weekDayScheduleRules_"];
  [(_MKFModel *)self deleteObjects:v3];
}

- (void)dematerializeAllowedAccessoriesRelationship
{
  v3 = [MEMORY[0x277CBEB98] set];
  [(_MKFGuest *)self setValue:v3 forKey:@"allowedAccessories_"];
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
  v15 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(%K == %@) AND (%K == %@) AND (%K.%K contains %@) AND (%K.%K.modelID contains %@)", @"guest", self, @"deviceIdsIdentifier", v12, @"matterPaths_", @"endpointID", v10, @"matterPaths_", @"accessory", v11];
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
  v53[2] = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v38 = a7;
  v15 = +[_MKFCharacteristicBulletinRegistration fetchRequest];
  v37 = MEMORY[0x277CCAC30];
  v39 = HAPInstanceIDFromValue();
  v41 = v13;
  v53[0] = v39;
  v16 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v13, "longLongValue")}];
  v53[1] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:2];
  v18 = HAPInstanceIDFromValue();
  v52[0] = v18;
  v42 = v12;
  v19 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v12, "longLongValue")}];
  v52[1] = v19;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:2];
  v21 = v11;
  v35 = v11;
  v22 = v14;
  v23 = [v37 predicateWithFormat:@"(%K == %@) AND (%K == %@) AND (%K.%K IN %@) AND (%K.%K.%K IN %@) AND (%K.%K.%K.modelID == %@)", @"guest", self, @"deviceIdsIdentifier", v14, @"characteristic", @"instanceID", v17, @"characteristic", @"service", @"instanceID", v20, @"characteristic", @"service", @"accessory", v35];
  [v15 setPredicate:v23];

  v24 = v15;
  v43 = 0;
  v25 = [v38 executeFetchRequest:v15 error:&v43];
  v26 = v43;
  if (v25)
  {
    v27 = [v25 firstObject];
    v28 = v41;
  }

  else
  {
    v29 = objc_autoreleasePoolPush();
    v30 = self;
    v31 = HMFGetOSLogHandle();
    v28 = v41;
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v32 = v40 = v24;
      *buf = 138544130;
      v45 = v32;
      v46 = 2112;
      v47 = v41;
      v48 = 2112;
      v49 = v21;
      v50 = 2112;
      v51 = v26;
      _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch characteristic bulletin registration with characteristic instanceID %@: on accessory %@, error: %@", buf, 0x2Au);

      v24 = v40;
    }

    objc_autoreleasePoolPop(v29);
    v27 = 0;
  }

  v33 = *MEMORY[0x277D85DE8];

  return v27;
}

- (BOOL)populateWorkingStoreFromRestrictedGuestSchedule:(id)a3
{
  v4 = a3;
  [(_MKFGuest *)self dematerializeWeekDayRuleRelationship];
  [(_MKFGuest *)self dematerializeYearDayRuleRelationship];
  v5 = 1;
  if (v4)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 1;
    v6 = [v4 weekDayRules];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __61___MKFGuest_populateWorkingStoreFromRestrictedGuestSchedule___block_invoke;
    v10[3] = &unk_27867D420;
    v10[4] = self;
    v10[5] = &v11;
    [v6 hmf_enumerateWithAutoreleasePoolUsingBlock:v10];

    v7 = [v4 yearDayRules];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __61___MKFGuest_populateWorkingStoreFromRestrictedGuestSchedule___block_invoke_26;
    v9[3] = &unk_27867D448;
    v9[4] = self;
    v9[5] = &v11;
    [v7 hmf_enumerateWithAutoreleasePoolUsingBlock:v9];

    v5 = *(v12 + 24);
    _Block_object_dispose(&v11, 8);
  }

  return v5 & 1;
}

- (id)restrictedGuestSchedule
{
  v3 = [(_MKFGuest *)self weekDayScheduleRules];
  v4 = [v3 na_map:&__block_literal_global_153539];

  v5 = [(_MKFGuest *)self yearDayScheduleRules];
  v6 = [v5 na_map:&__block_literal_global_22_153540];

  v7 = [objc_alloc(MEMORY[0x277CD1D78]) initWithWeekDayRules:v4 yearDayRules:v6];

  return v7;
}

- (id)allowedAccessoryUUIDs
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB18];
  v4 = [(_MKFGuest *)self allowedAccessories];
  v5 = [v3 arrayWithCapacity:{objc_msgSend(v4, "count")}];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [(_MKFGuest *)self allowedAccessories];
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = objc_autoreleasePoolPush();
        v13 = [v11 modelID];
        [v5 addObject:v13];

        objc_autoreleasePoolPop(v12);
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v14 = [v5 copy];
  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)castIfMemberIsGuest
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

- (BOOL)isRestrictedGuest
{
  v2 = [(_MKFGuest *)self privilege];
  v3 = [v2 isEqualToNumber:&unk_283E73598];

  return v3;
}

- (BOOL)isResidentSyncParticipant
{
  v2 = [(_MKFGuest *)self privilege];
  v3 = +[_MKFUser isResidentSyncParticipantWithPrivilege:](_MKFUser, "isResidentSyncParticipantWithPrivilege:", [v2 unsignedIntegerValue]);

  return v3;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t9_153559 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t9_153559, &__block_literal_global_650);
  }

  v3 = logCategory__hmf_once_v10_153560;

  return v3;
}

+ (NSPredicate)homeRelation
{
  if (homeRelation__hmf_once_t7 != -1)
  {
    dispatch_once(&homeRelation__hmf_once_t7, &__block_literal_global_76_153561);
  }

  v3 = homeRelation__hmf_once_v8;

  return v3;
}

+ (id)findGuestUsingReverseShareID:(id)a3 homeModelID:(id)a4 context:(id)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[_MKFGuest fetchRequest];
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

- (void)residentSyncContextualizeConditions:(id)a3 userContext:(id)a4
{
  v11 = a3;
  v6 = self;
  v7 = a4;
  if ([(_MKFGuest *)v6 conformsToProtocol:&unk_283EF3CF0])
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  v10 = [v7 targetUser];

  if (v9 == v10)
  {
    [v11 addCondition:@"userIsTargetUser"];
  }
}

@end