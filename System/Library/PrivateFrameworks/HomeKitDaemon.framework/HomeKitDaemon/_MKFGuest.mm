@interface _MKFGuest
+ (NSPredicate)homeRelation;
+ (id)findGuestUsingReverseShareID:(id)d homeModelID:(id)iD context:(id)context;
+ (id)logCategory;
+ (id)modelIDForParentRelationshipTo:(id)to;
- (BOOL)isResidentSyncParticipant;
- (BOOL)isRestrictedGuest;
- (BOOL)populateWorkingStoreFromRestrictedGuestSchedule:(id)schedule;
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
- (id)characteristicBulletinRegistrationForAccessory:(id)accessory serviceInstanceID:(id)d characteristicInstanceID:(id)iD deviceIdsIdentifier:(id)identifier context:(id)context;
- (id)createAllowedAccessoriesRelationOfType:(id)type modelID:(id)d;
- (id)createBulletinRegistrationsRelationOfType:(id)type modelID:(id)d;
- (id)createNotificationRegistrationsRelationOfType:(id)type modelID:(id)d;
- (id)findUserActivityStatusForType:(unint64_t)type;
- (id)materializeOrCreateAllowedAccessoriesRelationOfType:(id)type modelID:(id)d createdNew:(BOOL *)new;
- (id)materializeOrCreateBulletinRegistrationsRelationOfType:(id)type modelID:(id)d createdNew:(BOOL *)new;
- (id)materializeOrCreateNotificationRegistrationsRelationOfType:(id)type modelID:(id)d createdNew:(BOOL *)new;
- (id)matterBulletinRegistrationForEndpointID:(id)d accessoryUUID:(id)iD deviceIdsIdentifier:(id)identifier context:(id)context;
- (id)restrictedGuestSchedule;
- (void)dematerializeAllowedAccessoriesRelationship;
- (void)dematerializeWeekDayRuleRelationship;
- (void)dematerializeYearDayRuleRelationship;
- (void)residentSyncContextualizeConditions:(id)conditions userContext:(id)context;
@end

@implementation _MKFGuest

- (NSArray)yearDayScheduleRules
{
  v2 = [(_MKFGuest *)self valueForKey:@"yearDayScheduleRules_"];
  allObjects = [v2 allObjects];

  return allObjects;
}

- (NSArray)weekDayScheduleRules
{
  v2 = [(_MKFGuest *)self valueForKey:@"weekDayScheduleRules_"];
  allObjects = [v2 allObjects];

  return allObjects;
}

- (NSArray)userActivityStatuses
{
  v2 = [(_MKFGuest *)self valueForKey:@"userActivityStatuses_"];
  allObjects = [v2 allObjects];

  return allObjects;
}

- (NSArray)presenceEvents
{
  v2 = [(_MKFGuest *)self valueForKey:@"presenceEvents_"];
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
  v2 = [(_MKFGuest *)self valueForKey:@"notificationRegistrations_"];
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
  v2 = [(_MKFGuest *)self valueForKey:@"bulletinRegistrations_"];
  allObjects = [v2 allObjects];

  return allObjects;
}

- (NSArray)bulletinConditions
{
  v2 = [(_MKFGuest *)self valueForKey:@"bulletinConditions_"];
  allObjects = [v2 allObjects];

  return allObjects;
}

- (id)createAllowedAccessoriesRelationOfType:(id)type modelID:(id)d
{
  dCopy = d;
  v7 = NSStringFromProtocol(type);
  v8 = [(NSManagedObject *)self mkf_createRelationOnProperty:@"allowedAccessories_" modelProtocol:v7 keyValue:dCopy];

  return v8;
}

- (id)materializeOrCreateAllowedAccessoriesRelationOfType:(id)type modelID:(id)d createdNew:(BOOL *)new
{
  dCopy = d;
  v9 = NSStringFromProtocol(type);
  v10 = [(NSManagedObject *)self mkf_materializeOrCreateRelationOnProperty:@"allowedAccessories_" modelProtocol:v9 keyValue:dCopy createdNew:new];

  return v10;
}

- (NSArray)allowedAccessories
{
  v2 = [(_MKFGuest *)self valueForKey:@"allowedAccessories_"];
  allObjects = [v2 allObjects];

  return allObjects;
}

- (MKFGuestDatabaseID)databaseID
{
  v2 = [(MKFObjectDatabaseID *)[MKFGuestDatabaseID alloc] initWithMKFObject:self];

  return v2;
}

- (id)findUserActivityStatusForType:(unint64_t)type
{
  userActivityStatuses = [(_MKFGuest *)self userActivityStatuses];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43___MKFGuest_findUserActivityStatusForType___block_invoke;
  v7[3] = &__block_descriptor_40_e40_B32__0___MKFUserActivityStatus__8Q16_B24l;
  v7[4] = type;
  v5 = [userActivityStatuses hmf_objectPassingTest:v7];

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

- (id)matterBulletinRegistrationForEndpointID:(id)d accessoryUUID:(id)iD deviceIdsIdentifier:(id)identifier context:(id)context
{
  v35 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  identifierCopy = identifier;
  contextCopy = context;
  [contextCopy hmd_assertIsExecuting];
  v14 = +[_MKFMatterBulletinRegistration fetchRequest];
  iDCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"(%K == %@) AND (%K == %@) AND (%K.%K contains %@) AND (%K.%K.modelID contains %@)", @"guest", self, @"deviceIdsIdentifier", identifierCopy, @"matterPaths_", @"endpointID", dCopy, @"matterPaths_", @"accessory", iDCopy];
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
  v53[2] = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  dCopy = d;
  iDCopy = iD;
  identifierCopy = identifier;
  contextCopy = context;
  v15 = +[_MKFCharacteristicBulletinRegistration fetchRequest];
  v37 = MEMORY[0x277CCAC30];
  v39 = HAPInstanceIDFromValue();
  v41 = iDCopy;
  v53[0] = v39;
  v16 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(iDCopy, "longLongValue")}];
  v53[1] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:2];
  v18 = HAPInstanceIDFromValue();
  v52[0] = v18;
  v42 = dCopy;
  v19 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(dCopy, "longLongValue")}];
  v52[1] = v19;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:2];
  v21 = accessoryCopy;
  v35 = accessoryCopy;
  v22 = identifierCopy;
  v23 = [v37 predicateWithFormat:@"(%K == %@) AND (%K == %@) AND (%K.%K IN %@) AND (%K.%K.%K IN %@) AND (%K.%K.%K.modelID == %@)", @"guest", self, @"deviceIdsIdentifier", identifierCopy, @"characteristic", @"instanceID", v17, @"characteristic", @"service", @"instanceID", v20, @"characteristic", @"service", @"accessory", v35];
  [v15 setPredicate:v23];

  v24 = v15;
  v43 = 0;
  v25 = [contextCopy executeFetchRequest:v15 error:&v43];
  v26 = v43;
  if (v25)
  {
    firstObject = [v25 firstObject];
    v28 = v41;
  }

  else
  {
    v29 = objc_autoreleasePoolPush();
    selfCopy = self;
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
    firstObject = 0;
  }

  v33 = *MEMORY[0x277D85DE8];

  return firstObject;
}

- (BOOL)populateWorkingStoreFromRestrictedGuestSchedule:(id)schedule
{
  scheduleCopy = schedule;
  [(_MKFGuest *)self dematerializeWeekDayRuleRelationship];
  [(_MKFGuest *)self dematerializeYearDayRuleRelationship];
  v5 = 1;
  if (scheduleCopy)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 1;
    weekDayRules = [scheduleCopy weekDayRules];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __61___MKFGuest_populateWorkingStoreFromRestrictedGuestSchedule___block_invoke;
    v10[3] = &unk_27867D420;
    v10[4] = self;
    v10[5] = &v11;
    [weekDayRules hmf_enumerateWithAutoreleasePoolUsingBlock:v10];

    yearDayRules = [scheduleCopy yearDayRules];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __61___MKFGuest_populateWorkingStoreFromRestrictedGuestSchedule___block_invoke_26;
    v9[3] = &unk_27867D448;
    v9[4] = self;
    v9[5] = &v11;
    [yearDayRules hmf_enumerateWithAutoreleasePoolUsingBlock:v9];

    v5 = *(v12 + 24);
    _Block_object_dispose(&v11, 8);
  }

  return v5 & 1;
}

- (id)restrictedGuestSchedule
{
  weekDayScheduleRules = [(_MKFGuest *)self weekDayScheduleRules];
  v4 = [weekDayScheduleRules na_map:&__block_literal_global_153539];

  yearDayScheduleRules = [(_MKFGuest *)self yearDayScheduleRules];
  v6 = [yearDayScheduleRules na_map:&__block_literal_global_22_153540];

  v7 = [objc_alloc(MEMORY[0x277CD1D78]) initWithWeekDayRules:v4 yearDayRules:v6];

  return v7;
}

- (id)allowedAccessoryUUIDs
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB18];
  allowedAccessories = [(_MKFGuest *)self allowedAccessories];
  v5 = [v3 arrayWithCapacity:{objc_msgSend(allowedAccessories, "count")}];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  allowedAccessories2 = [(_MKFGuest *)self allowedAccessories];
  v7 = [allowedAccessories2 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(allowedAccessories2);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = objc_autoreleasePoolPush();
        modelID = [v11 modelID];
        [v5 addObject:modelID];

        objc_autoreleasePoolPop(v12);
      }

      v8 = [allowedAccessories2 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v14 = [v5 copy];
  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)castIfMemberIsGuest
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

- (BOOL)isRestrictedGuest
{
  privilege = [(_MKFGuest *)self privilege];
  v3 = [privilege isEqualToNumber:&unk_283E73598];

  return v3;
}

- (BOOL)isResidentSyncParticipant
{
  privilege = [(_MKFGuest *)self privilege];
  v3 = +[_MKFUser isResidentSyncParticipantWithPrivilege:](_MKFUser, "isResidentSyncParticipantWithPrivilege:", [privilege unsignedIntegerValue]);

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

+ (id)findGuestUsingReverseShareID:(id)d homeModelID:(id)iD context:(id)context
{
  v29 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  contextCopy = context;
  v11 = +[_MKFGuest fetchRequest];
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

- (void)residentSyncContextualizeConditions:(id)conditions userContext:(id)context
{
  conditionsCopy = conditions;
  selfCopy = self;
  contextCopy = context;
  if ([(_MKFGuest *)selfCopy conformsToProtocol:&unk_283EF3CF0])
  {
    v8 = selfCopy;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  targetUser = [contextCopy targetUser];

  if (v9 == targetUser)
  {
    [conditionsCopy addCondition:@"userIsTargetUser"];
  }
}

@end