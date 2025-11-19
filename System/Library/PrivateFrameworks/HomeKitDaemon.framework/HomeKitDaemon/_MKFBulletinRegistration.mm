@interface _MKFBulletinRegistration
+ (NSPredicate)homeRelation;
+ (id)modelIDForParentRelationshipTo:(id)a3;
- (BOOL)shouldIncludeForRestrictedGuestWithContext:(id)a3;
- (MKFBulletinRegistrationDatabaseID)databaseID;
- (MKFHome)home;
- (NSArray)conditions;
- (id)createConditionsRelationOfType:(id)a3 modelID:(id)a4;
- (id)materializeOrCreateConditionsRelationOfType:(id)a3 modelID:(id)a4 createdNew:(BOOL *)a5;
- (void)residentSyncContextualizeConditions:(id)a3 userContext:(id)a4;
@end

@implementation _MKFBulletinRegistration

+ (NSPredicate)homeRelation
{
  if (homeRelation__hmf_once_t0_128187 != -1)
  {
    dispatch_once(&homeRelation__hmf_once_t0_128187, &__block_literal_global_128188);
  }

  v3 = homeRelation__hmf_once_v1_128189;

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

- (id)createConditionsRelationOfType:(id)a3 modelID:(id)a4
{
  v6 = a4;
  v7 = NSStringFromProtocol(a3);
  v8 = [(NSManagedObject *)self mkf_createRelationOnProperty:@"conditions_" modelProtocol:v7 keyValue:v6];

  return v8;
}

- (id)materializeOrCreateConditionsRelationOfType:(id)a3 modelID:(id)a4 createdNew:(BOOL *)a5
{
  v8 = a4;
  v9 = NSStringFromProtocol(a3);
  v10 = [(NSManagedObject *)self mkf_materializeOrCreateRelationOnProperty:@"conditions_" modelProtocol:v9 keyValue:v8 createdNew:a5];

  return v10;
}

- (NSArray)conditions
{
  v2 = [(_MKFBulletinRegistration *)self valueForKey:@"conditions_"];
  v3 = [v2 allObjects];

  return v3;
}

- (MKFHome)home
{
  v2 = [(_MKFBulletinRegistration *)self user];
  v3 = [v2 home];

  return v3;
}

- (MKFBulletinRegistrationDatabaseID)databaseID
{
  v2 = [(MKFObjectDatabaseID *)[MKFBulletinRegistrationDatabaseID alloc] initWithMKFObject:self];

  return v2;
}

- (void)residentSyncContextualizeConditions:(id)a3 userContext:(id)a4
{
  v48 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  v9 = v7[2];
  if (!v9)
  {
    v10 = [v7 targetDeviceAddress];

    if (v10)
    {
      v11 = +[_MKFBulletinRegistration fetchRequest];
      [v11 setResultType:1];
      v12 = [v8 targetUser];
      v13 = [v12 isRestrictedGuest];

      v14 = MEMORY[0x277CCAC30];
      v15 = [v8 targetUser];
      v16 = [v8 targetDeviceAddress];
      v17 = [v16 idsIdentifier];
      v18 = v17;
      v19 = @"user";
      if (v13)
      {
        v19 = @"guest";
      }

      v20 = [v14 predicateWithFormat:@"(%K == %@) && (%K == %@)", v19, v15, @"deviceIdsIdentifier", v17];
      [v11 setPredicate:v20];

      v41 = 0;
      v21 = [v11 execute:&v41];
      v22 = v41;
      v23 = objc_autoreleasePoolPush();
      v24 = self;
      v25 = HMFGetOSLogHandle();
      v26 = v25;
      if (v21)
      {
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          HMFGetLogIdentifier();
          v27 = v40 = v22;
          v28 = [v8 targetDeviceAddress];
          *buf = 138543874;
          v43 = v27;
          v44 = 2114;
          v45 = v21;
          v46 = 2112;
          v47 = v28;
          _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_DEBUG, "%{public}@Setting context->_relevantBulletinRegistrations to: %{public}@ for targetDeviceAddress: %@", buf, 0x20u);

          v22 = v40;
        }

        objc_autoreleasePoolPop(v23);
        v29 = [MEMORY[0x277CBEB98] setWithArray:v21];
      }

      else
      {
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          v35 = HMFGetLogIdentifier();
          *buf = 138543618;
          v43 = v35;
          v44 = 2114;
          v45 = v22;
          _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch relevant bulletin registrations: %{public}@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v23);
        v29 = [MEMORY[0x277CBEB98] set];
      }

      v36 = v8[2];
      v8[2] = v29;
    }

    else
    {
      v30 = objc_autoreleasePoolPush();
      v31 = self;
      v32 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        v33 = HMFGetLogIdentifier();
        *buf = 138543362;
        v43 = v33;
        _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_DEBUG, "%{public}@No targetDeviceAddress when trying to set context->_relevantBulletinRegistrations", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v30);
      v34 = [MEMORY[0x277CBEB98] set];
      v11 = v8[2];
      v8[2] = v34;
    }

    v9 = v8[2];
  }

  v37 = [(_MKFBulletinRegistration *)self objectID];
  v38 = [v9 containsObject:v37];

  if (v38)
  {
    [v6 addCondition:@"deviceIsTargetDevice"];
  }

  v39 = *MEMORY[0x277D85DE8];
}

- (BOOL)shouldIncludeForRestrictedGuestWithContext:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    v8 = [(_MKFBulletinRegistration *)v7 characteristic];
    v9 = [v8 service];
    v10 = [v9 accessory];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;

    if (v12)
    {
      v13 = [v12 shouldIncludeForRestrictedGuestWithContext:v4];
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end