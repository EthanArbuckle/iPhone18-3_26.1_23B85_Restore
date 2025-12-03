@interface _MKFBulletinRegistration
+ (NSPredicate)homeRelation;
+ (id)modelIDForParentRelationshipTo:(id)to;
- (BOOL)shouldIncludeForRestrictedGuestWithContext:(id)context;
- (MKFBulletinRegistrationDatabaseID)databaseID;
- (MKFHome)home;
- (NSArray)conditions;
- (id)createConditionsRelationOfType:(id)type modelID:(id)d;
- (id)materializeOrCreateConditionsRelationOfType:(id)type modelID:(id)d createdNew:(BOOL *)new;
- (void)residentSyncContextualizeConditions:(id)conditions userContext:(id)context;
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

- (id)createConditionsRelationOfType:(id)type modelID:(id)d
{
  dCopy = d;
  v7 = NSStringFromProtocol(type);
  v8 = [(NSManagedObject *)self mkf_createRelationOnProperty:@"conditions_" modelProtocol:v7 keyValue:dCopy];

  return v8;
}

- (id)materializeOrCreateConditionsRelationOfType:(id)type modelID:(id)d createdNew:(BOOL *)new
{
  dCopy = d;
  v9 = NSStringFromProtocol(type);
  v10 = [(NSManagedObject *)self mkf_materializeOrCreateRelationOnProperty:@"conditions_" modelProtocol:v9 keyValue:dCopy createdNew:new];

  return v10;
}

- (NSArray)conditions
{
  v2 = [(_MKFBulletinRegistration *)self valueForKey:@"conditions_"];
  allObjects = [v2 allObjects];

  return allObjects;
}

- (MKFHome)home
{
  user = [(_MKFBulletinRegistration *)self user];
  home = [user home];

  return home;
}

- (MKFBulletinRegistrationDatabaseID)databaseID
{
  v2 = [(MKFObjectDatabaseID *)[MKFBulletinRegistrationDatabaseID alloc] initWithMKFObject:self];

  return v2;
}

- (void)residentSyncContextualizeConditions:(id)conditions userContext:(id)context
{
  v48 = *MEMORY[0x277D85DE8];
  conditionsCopy = conditions;
  contextCopy = context;
  v8 = contextCopy;
  v9 = contextCopy[2];
  if (!v9)
  {
    targetDeviceAddress = [contextCopy targetDeviceAddress];

    if (targetDeviceAddress)
    {
      v11 = +[_MKFBulletinRegistration fetchRequest];
      [v11 setResultType:1];
      targetUser = [v8 targetUser];
      isRestrictedGuest = [targetUser isRestrictedGuest];

      v14 = MEMORY[0x277CCAC30];
      targetUser2 = [v8 targetUser];
      targetDeviceAddress2 = [v8 targetDeviceAddress];
      idsIdentifier = [targetDeviceAddress2 idsIdentifier];
      v18 = idsIdentifier;
      v19 = @"user";
      if (isRestrictedGuest)
      {
        v19 = @"guest";
      }

      v20 = [v14 predicateWithFormat:@"(%K == %@) && (%K == %@)", v19, targetUser2, @"deviceIdsIdentifier", idsIdentifier];
      [v11 setPredicate:v20];

      v41 = 0;
      v21 = [v11 execute:&v41];
      v22 = v41;
      v23 = objc_autoreleasePoolPush();
      selfCopy = self;
      v25 = HMFGetOSLogHandle();
      v26 = v25;
      if (v21)
      {
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          HMFGetLogIdentifier();
          v27 = v40 = v22;
          targetDeviceAddress3 = [v8 targetDeviceAddress];
          *buf = 138543874;
          v43 = v27;
          v44 = 2114;
          v45 = v21;
          v46 = 2112;
          v47 = targetDeviceAddress3;
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
      selfCopy2 = self;
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

  objectID = [(_MKFBulletinRegistration *)self objectID];
  v38 = [v9 containsObject:objectID];

  if (v38)
  {
    [conditionsCopy addCondition:@"deviceIsTargetDevice"];
  }

  v39 = *MEMORY[0x277D85DE8];
}

- (BOOL)shouldIncludeForRestrictedGuestWithContext:(id)context
{
  contextCopy = context;
  selfCopy = self;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = selfCopy;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    characteristic = [(_MKFBulletinRegistration *)v7 characteristic];
    service = [characteristic service];
    accessory = [service accessory];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = accessory;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;

    if (v12)
    {
      v13 = [v12 shouldIncludeForRestrictedGuestWithContext:contextCopy];
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