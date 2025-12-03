@interface _MKFHAPAccessory
+ (NSPredicate)homeRelation;
+ (id)modelIDForParentRelationshipTo:(id)to;
- (BOOL)hasRGCapableService;
- (BOOL)supportsAnyMatterV1InPersonAccess;
- (BOOL)validateForInsertOrUpdate:(id *)update;
- (MKFHAPAccessoryDatabaseID)databaseID;
- (NSArray)actionCharacteristicWrites;
- (NSArray)adaptiveTemperatureSleepScheduleRules;
- (NSArray)localPresenceRooms;
- (NSArray)matterPaths;
- (NSArray)naturalLightingActions;
- (NSArray)pairedUsers;
- (NSArray)services;
- (id)bulletinRegistrationFromFetchRequest:(id)request context:(id)context;
- (id)cameraAccessModeBulletinRegistrationWithDeviceIdsIdentifier:(id)identifier user:(id)user context:(id)context;
- (id)cameraReachabilityBulletinRegistrationWithDeviceIdsIdentifier:(id)identifier user:(id)user context:(id)context;
- (id)cameraSignificantEventBulletinRegistrationWithDeviceIdsIdentifier:(id)identifier user:(id)user context:(id)context;
- (id)characteristicFromInstanceID:(id)d context:(id)context;
- (id)serviceWithID:(id)d context:(id)context;
- (id)weekDayScheduleCapacity;
- (id)yearDayScheduleCapacity;
- (void)maybeFixUpCharacteristicWriteActionsInContext:(id)context;
@end

@implementation _MKFHAPAccessory

- (NSArray)matterPaths
{
  v2 = [(_MKFHAPAccessory *)self valueForKey:@"matterPaths_"];
  allObjects = [v2 allObjects];

  return allObjects;
}

- (NSArray)localPresenceRooms
{
  v2 = [(_MKFHAPAccessory *)self valueForKey:@"localPresenceRooms_"];
  allObjects = [v2 allObjects];

  return allObjects;
}

- (NSArray)adaptiveTemperatureSleepScheduleRules
{
  v2 = [(_MKFHAPAccessory *)self valueForKey:@"adaptiveTemperatureSleepScheduleRules_"];
  allObjects = [v2 allObjects];

  return allObjects;
}

- (NSArray)services
{
  v2 = [(_MKFHAPAccessory *)self valueForKey:@"services_"];
  allObjects = [v2 allObjects];

  return allObjects;
}

- (NSArray)pairedUsers
{
  v2 = [(_MKFHAPAccessory *)self valueForKey:@"pairedUsers_"];
  allObjects = [v2 allObjects];

  return allObjects;
}

- (NSArray)naturalLightingActions
{
  v2 = [(_MKFHAPAccessory *)self valueForKey:@"naturalLightingActions_"];
  allObjects = [v2 allObjects];

  return allObjects;
}

- (NSArray)actionCharacteristicWrites
{
  v2 = [(_MKFHAPAccessory *)self valueForKey:@"actionCharacteristicWrites_"];
  allObjects = [v2 allObjects];

  return allObjects;
}

- (MKFHAPAccessoryDatabaseID)databaseID
{
  v2 = [(MKFObjectDatabaseID *)[MKFHAPAccessoryDatabaseID alloc] initWithMKFObject:self];

  return v2;
}

- (BOOL)supportsAnyMatterV1InPersonAccess
{
  supportsMatterAccessCode = [(_MKFHAPAccessory *)self supportsMatterAccessCode];
  if ([supportsMatterAccessCode BOOLValue])
  {
    bOOLValue = 1;
  }

  else
  {
    supportsMatterWalletKey = [(_MKFHAPAccessory *)self supportsMatterWalletKey];
    bOOLValue = [supportsMatterWalletKey BOOLValue];
  }

  return bOOLValue;
}

- (id)yearDayScheduleCapacity
{
  supportsMatterYearDaySchedule = [(_MKFHAPAccessory *)self supportsMatterYearDaySchedule];
  bOOLValue = [supportsMatterYearDaySchedule BOOLValue];

  if (bOOLValue)
  {
    matterYearDayScheduleCapacity = [(_MKFHAPAccessory *)self matterYearDayScheduleCapacity];
    if ([matterYearDayScheduleCapacity integerValue] < 1)
    {
      matterYearDayScheduleCapacity2 = &unk_283E73838;
    }

    else
    {
      matterYearDayScheduleCapacity2 = [(_MKFHAPAccessory *)self matterYearDayScheduleCapacity];
    }
  }

  else
  {
    matterYearDayScheduleCapacity2 = &unk_283E73850;
  }

  return matterYearDayScheduleCapacity2;
}

- (id)weekDayScheduleCapacity
{
  supportsMatterWeekDaySchedule = [(_MKFHAPAccessory *)self supportsMatterWeekDaySchedule];
  bOOLValue = [supportsMatterWeekDaySchedule BOOLValue];

  if (bOOLValue)
  {
    matterWeekDayScheduleCapacity = [(_MKFHAPAccessory *)self matterWeekDayScheduleCapacity];
    if ([matterWeekDayScheduleCapacity integerValue] < 1)
    {
      matterWeekDayScheduleCapacity2 = &unk_283E73838;
    }

    else
    {
      matterWeekDayScheduleCapacity2 = [(_MKFHAPAccessory *)self matterWeekDayScheduleCapacity];
    }
  }

  else
  {
    matterWeekDayScheduleCapacity2 = &unk_283E73850;
  }

  return matterWeekDayScheduleCapacity2;
}

- (void)maybeFixUpCharacteristicWriteActionsInContext:(id)context
{
  v24[1] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  [contextCopy hmd_assertIsExecuting];
  v5 = +[_MKFCharacteristicWriteAction fetchRequest];
  v6 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@", @"accessory", self];
  [v5 setPredicate:v6];

  v24[0] = @"characteristicID";
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
  [v5 setPropertiesToFetch:v7];

  v19 = 0;
  v8 = [contextCopy executeFetchRequest:v5 error:&v19];
  v9 = v19;
  if (v8)
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __66___MKFHAPAccessory_maybeFixUpCharacteristicWriteActionsInContext___block_invoke;
    v15[3] = &unk_27867CF38;
    v16 = @"service";
    selfCopy = self;
    v18 = contextCopy;
    [v8 hmf_enumerateWithAutoreleasePoolUsingBlock:v15];
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v21 = v13;
      v22 = 2112;
      v23 = v9;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch actions: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (id)cameraSignificantEventBulletinRegistrationWithDeviceIdsIdentifier:(id)identifier user:(id)user context:(id)context
{
  contextCopy = context;
  userCopy = user;
  identifierCopy = identifier;
  v11 = +[_MKFCameraSignificantEventBulletinRegistration fetchRequest];
  v12 = [(_MKFHAPAccessory *)self predicateToFetchBulletinRegistrationOnDeviceIdsIdentifier:identifierCopy user:userCopy];

  [v11 setPredicate:v12];
  v13 = [(_MKFHAPAccessory *)self bulletinRegistrationFromFetchRequest:v11 context:contextCopy];

  return v13;
}

- (id)cameraAccessModeBulletinRegistrationWithDeviceIdsIdentifier:(id)identifier user:(id)user context:(id)context
{
  contextCopy = context;
  userCopy = user;
  identifierCopy = identifier;
  v11 = +[_MKFCameraAccessModeBulletinRegistration fetchRequest];
  v12 = [(_MKFHAPAccessory *)self predicateToFetchBulletinRegistrationOnDeviceIdsIdentifier:identifierCopy user:userCopy];

  [v11 setPredicate:v12];
  v13 = [(_MKFHAPAccessory *)self bulletinRegistrationFromFetchRequest:v11 context:contextCopy];

  return v13;
}

- (id)cameraReachabilityBulletinRegistrationWithDeviceIdsIdentifier:(id)identifier user:(id)user context:(id)context
{
  contextCopy = context;
  userCopy = user;
  identifierCopy = identifier;
  v11 = +[_MKFCameraReachabilityBulletinRegistration fetchRequest];
  v12 = [(_MKFHAPAccessory *)self predicateToFetchBulletinRegistrationOnDeviceIdsIdentifier:identifierCopy user:userCopy];

  [v11 setPredicate:v12];
  v13 = [(_MKFHAPAccessory *)self bulletinRegistrationFromFetchRequest:v11 context:contextCopy];

  return v13;
}

- (id)bulletinRegistrationFromFetchRequest:(id)request context:(id)context
{
  v24 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  contextCopy = context;
  v17 = 0;
  v8 = [contextCopy executeFetchRequest:requestCopy error:&v17];
  v9 = v17;
  if (v8)
  {
    firstObject = [v8 firstObject];
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543874;
      v19 = v14;
      v20 = 2112;
      v21 = selfCopy;
      v22 = 2112;
      v23 = v9;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch bulletin registrations on accessory %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v11);
    firstObject = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return firstObject;
}

- (id)characteristicFromInstanceID:(id)d context:(id)context
{
  v29 = *MEMORY[0x277D85DE8];
  dCopy = d;
  contextCopy = context;
  v8 = +[_MKFCharacteristic fetchRequest];
  dCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"(%K.%K == %@) AND (%K == %@)", @"service", @"accessory", self, @"instanceID", dCopy];
  [v8 setPredicate:dCopy];

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
      modelID = [(_MKFHAPAccessory *)selfCopy modelID];
      *buf = 138544130;
      v22 = v16;
      v23 = 2112;
      v24 = modelID;
      v25 = 2112;
      v26 = dCopy;
      v27 = 2112;
      v28 = v11;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch characteristics with accessory UUID %@ & instanceID %@: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v13);
    firstObject = 0;
  }

  v18 = *MEMORY[0x277D85DE8];

  return firstObject;
}

- (id)serviceWithID:(id)d context:(id)context
{
  v26 = *MEMORY[0x277D85DE8];
  dCopy = d;
  contextCopy = context;
  v8 = +[_MKFService fetchRequest];
  dCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"(%K == %@) AND (%K == %@)", @"accessory", self, @"instanceID", dCopy];
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
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch services with instanceID %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v13);
    firstObject = 0;
  }

  v17 = *MEMORY[0x277D85DE8];

  return firstObject;
}

- (BOOL)hasRGCapableService
{
  v3 = objc_autoreleasePoolPush();
  services = [(_MKFHAPAccessory *)self services];
  hmf_isEmpty = [services hmf_isEmpty];

  v8 = 0;
  if ((hmf_isEmpty & 1) == 0)
  {
    services2 = [(_MKFHAPAccessory *)self services];
    v7 = [services2 na_map:&__block_literal_global_174261];

    LOBYTE(services2) = [MEMORY[0x277CD1D80] doesAccessoryHaveRestrictedGuestCapableServiceTypes:v7];
    if (services2)
    {
      v8 = 1;
    }
  }

  objc_autoreleasePoolPop(v3);
  return v8;
}

- (BOOL)validateForInsertOrUpdate:(id *)update
{
  v10.receiver = self;
  v10.super_class = _MKFHAPAccessory;
  LODWORD(v5) = [(_MKFModel *)&v10 validateForInsertOrUpdate:?];
  if (v5)
  {
    if (_os_feature_enabled_impl() && (-[_MKFHAPAccessory adaptiveTemperatureDriver](self, "adaptiveTemperatureDriver"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 isEqual:&unk_283E73820], v6, v7))
    {
      if (update)
      {
        v8 = [MEMORY[0x277CCA9B8] hmd_validationErrorWithDescription:@"adaptive temperature driver cannot be unknown"];
        v5 = v8;
        LOBYTE(v5) = 0;
        *update = v8;
      }

      else
      {
        LOBYTE(v5) = 0;
      }
    }

    else
    {
      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

+ (NSPredicate)homeRelation
{
  if (homeRelation__hmf_once_t8 != -1)
  {
    dispatch_once(&homeRelation__hmf_once_t8, &__block_literal_global_61_174285);
  }

  v3 = homeRelation__hmf_once_v9;

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

@end