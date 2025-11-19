@interface _MKFHAPAccessory
+ (NSPredicate)homeRelation;
+ (id)modelIDForParentRelationshipTo:(id)a3;
- (BOOL)hasRGCapableService;
- (BOOL)supportsAnyMatterV1InPersonAccess;
- (BOOL)validateForInsertOrUpdate:(id *)a3;
- (MKFHAPAccessoryDatabaseID)databaseID;
- (NSArray)actionCharacteristicWrites;
- (NSArray)adaptiveTemperatureSleepScheduleRules;
- (NSArray)localPresenceRooms;
- (NSArray)matterPaths;
- (NSArray)naturalLightingActions;
- (NSArray)pairedUsers;
- (NSArray)services;
- (id)bulletinRegistrationFromFetchRequest:(id)a3 context:(id)a4;
- (id)cameraAccessModeBulletinRegistrationWithDeviceIdsIdentifier:(id)a3 user:(id)a4 context:(id)a5;
- (id)cameraReachabilityBulletinRegistrationWithDeviceIdsIdentifier:(id)a3 user:(id)a4 context:(id)a5;
- (id)cameraSignificantEventBulletinRegistrationWithDeviceIdsIdentifier:(id)a3 user:(id)a4 context:(id)a5;
- (id)characteristicFromInstanceID:(id)a3 context:(id)a4;
- (id)serviceWithID:(id)a3 context:(id)a4;
- (id)weekDayScheduleCapacity;
- (id)yearDayScheduleCapacity;
- (void)maybeFixUpCharacteristicWriteActionsInContext:(id)a3;
@end

@implementation _MKFHAPAccessory

- (NSArray)matterPaths
{
  v2 = [(_MKFHAPAccessory *)self valueForKey:@"matterPaths_"];
  v3 = [v2 allObjects];

  return v3;
}

- (NSArray)localPresenceRooms
{
  v2 = [(_MKFHAPAccessory *)self valueForKey:@"localPresenceRooms_"];
  v3 = [v2 allObjects];

  return v3;
}

- (NSArray)adaptiveTemperatureSleepScheduleRules
{
  v2 = [(_MKFHAPAccessory *)self valueForKey:@"adaptiveTemperatureSleepScheduleRules_"];
  v3 = [v2 allObjects];

  return v3;
}

- (NSArray)services
{
  v2 = [(_MKFHAPAccessory *)self valueForKey:@"services_"];
  v3 = [v2 allObjects];

  return v3;
}

- (NSArray)pairedUsers
{
  v2 = [(_MKFHAPAccessory *)self valueForKey:@"pairedUsers_"];
  v3 = [v2 allObjects];

  return v3;
}

- (NSArray)naturalLightingActions
{
  v2 = [(_MKFHAPAccessory *)self valueForKey:@"naturalLightingActions_"];
  v3 = [v2 allObjects];

  return v3;
}

- (NSArray)actionCharacteristicWrites
{
  v2 = [(_MKFHAPAccessory *)self valueForKey:@"actionCharacteristicWrites_"];
  v3 = [v2 allObjects];

  return v3;
}

- (MKFHAPAccessoryDatabaseID)databaseID
{
  v2 = [(MKFObjectDatabaseID *)[MKFHAPAccessoryDatabaseID alloc] initWithMKFObject:self];

  return v2;
}

- (BOOL)supportsAnyMatterV1InPersonAccess
{
  v3 = [(_MKFHAPAccessory *)self supportsMatterAccessCode];
  if ([v3 BOOLValue])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(_MKFHAPAccessory *)self supportsMatterWalletKey];
    v4 = [v5 BOOLValue];
  }

  return v4;
}

- (id)yearDayScheduleCapacity
{
  v3 = [(_MKFHAPAccessory *)self supportsMatterYearDaySchedule];
  v4 = [v3 BOOLValue];

  if (v4)
  {
    v5 = [(_MKFHAPAccessory *)self matterYearDayScheduleCapacity];
    if ([v5 integerValue] < 1)
    {
      v6 = &unk_283E73838;
    }

    else
    {
      v6 = [(_MKFHAPAccessory *)self matterYearDayScheduleCapacity];
    }
  }

  else
  {
    v6 = &unk_283E73850;
  }

  return v6;
}

- (id)weekDayScheduleCapacity
{
  v3 = [(_MKFHAPAccessory *)self supportsMatterWeekDaySchedule];
  v4 = [v3 BOOLValue];

  if (v4)
  {
    v5 = [(_MKFHAPAccessory *)self matterWeekDayScheduleCapacity];
    if ([v5 integerValue] < 1)
    {
      v6 = &unk_283E73838;
    }

    else
    {
      v6 = [(_MKFHAPAccessory *)self matterWeekDayScheduleCapacity];
    }
  }

  else
  {
    v6 = &unk_283E73850;
  }

  return v6;
}

- (void)maybeFixUpCharacteristicWriteActionsInContext:(id)a3
{
  v24[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  [v4 hmd_assertIsExecuting];
  v5 = +[_MKFCharacteristicWriteAction fetchRequest];
  v6 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@", @"accessory", self];
  [v5 setPredicate:v6];

  v24[0] = @"characteristicID";
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
  [v5 setPropertiesToFetch:v7];

  v19 = 0;
  v8 = [v4 executeFetchRequest:v5 error:&v19];
  v9 = v19;
  if (v8)
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __66___MKFHAPAccessory_maybeFixUpCharacteristicWriteActionsInContext___block_invoke;
    v15[3] = &unk_27867CF38;
    v16 = @"service";
    v17 = self;
    v18 = v4;
    [v8 hmf_enumerateWithAutoreleasePoolUsingBlock:v15];
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
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

- (id)cameraSignificantEventBulletinRegistrationWithDeviceIdsIdentifier:(id)a3 user:(id)a4 context:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = +[_MKFCameraSignificantEventBulletinRegistration fetchRequest];
  v12 = [(_MKFHAPAccessory *)self predicateToFetchBulletinRegistrationOnDeviceIdsIdentifier:v10 user:v9];

  [v11 setPredicate:v12];
  v13 = [(_MKFHAPAccessory *)self bulletinRegistrationFromFetchRequest:v11 context:v8];

  return v13;
}

- (id)cameraAccessModeBulletinRegistrationWithDeviceIdsIdentifier:(id)a3 user:(id)a4 context:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = +[_MKFCameraAccessModeBulletinRegistration fetchRequest];
  v12 = [(_MKFHAPAccessory *)self predicateToFetchBulletinRegistrationOnDeviceIdsIdentifier:v10 user:v9];

  [v11 setPredicate:v12];
  v13 = [(_MKFHAPAccessory *)self bulletinRegistrationFromFetchRequest:v11 context:v8];

  return v13;
}

- (id)cameraReachabilityBulletinRegistrationWithDeviceIdsIdentifier:(id)a3 user:(id)a4 context:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = +[_MKFCameraReachabilityBulletinRegistration fetchRequest];
  v12 = [(_MKFHAPAccessory *)self predicateToFetchBulletinRegistrationOnDeviceIdsIdentifier:v10 user:v9];

  [v11 setPredicate:v12];
  v13 = [(_MKFHAPAccessory *)self bulletinRegistrationFromFetchRequest:v11 context:v8];

  return v13;
}

- (id)bulletinRegistrationFromFetchRequest:(id)a3 context:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v17 = 0;
  v8 = [v7 executeFetchRequest:v6 error:&v17];
  v9 = v17;
  if (v8)
  {
    v10 = [v8 firstObject];
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543874;
      v19 = v14;
      v20 = 2112;
      v21 = v12;
      v22 = 2112;
      v23 = v9;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch bulletin registrations on accessory %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v11);
    v10 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)characteristicFromInstanceID:(id)a3 context:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = +[_MKFCharacteristic fetchRequest];
  v9 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(%K.%K == %@) AND (%K == %@)", @"service", @"accessory", self, @"instanceID", v6];
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
      v17 = [(_MKFHAPAccessory *)v14 modelID];
      *buf = 138544130;
      v22 = v16;
      v23 = 2112;
      v24 = v17;
      v25 = 2112;
      v26 = v6;
      v27 = 2112;
      v28 = v11;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch characteristics with accessory UUID %@ & instanceID %@: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v13);
    v12 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)serviceWithID:(id)a3 context:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = +[_MKFService fetchRequest];
  v9 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(%K == %@) AND (%K == %@)", @"accessory", self, @"instanceID", v6];
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
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch services with instanceID %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v13);
    v12 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];

  return v12;
}

- (BOOL)hasRGCapableService
{
  v3 = objc_autoreleasePoolPush();
  v4 = [(_MKFHAPAccessory *)self services];
  v5 = [v4 hmf_isEmpty];

  v8 = 0;
  if ((v5 & 1) == 0)
  {
    v6 = [(_MKFHAPAccessory *)self services];
    v7 = [v6 na_map:&__block_literal_global_174261];

    LOBYTE(v6) = [MEMORY[0x277CD1D80] doesAccessoryHaveRestrictedGuestCapableServiceTypes:v7];
    if (v6)
    {
      v8 = 1;
    }
  }

  objc_autoreleasePoolPop(v3);
  return v8;
}

- (BOOL)validateForInsertOrUpdate:(id *)a3
{
  v10.receiver = self;
  v10.super_class = _MKFHAPAccessory;
  LODWORD(v5) = [(_MKFModel *)&v10 validateForInsertOrUpdate:?];
  if (v5)
  {
    if (_os_feature_enabled_impl() && (-[_MKFHAPAccessory adaptiveTemperatureDriver](self, "adaptiveTemperatureDriver"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 isEqual:&unk_283E73820], v6, v7))
    {
      if (a3)
      {
        v8 = [MEMORY[0x277CCA9B8] hmd_validationErrorWithDescription:@"adaptive temperature driver cannot be unknown"];
        v5 = v8;
        LOBYTE(v5) = 0;
        *a3 = v8;
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

@end