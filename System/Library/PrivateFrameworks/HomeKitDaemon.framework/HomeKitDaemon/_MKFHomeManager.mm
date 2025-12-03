@interface _MKFHomeManager
+ (NSUUID)defaultModelID;
+ (id)fetchWithContext:(id)context error:(id *)error;
- (BOOL)validateModelID:(id *)d error:(id *)error;
- (MKFHomeManagerDatabaseID)databaseID;
- (NSArray)accounts;
- (NSArray)homes;
- (NSArray)incomingInvitations;
- (void)awakeFromInsert;
@end

@implementation _MKFHomeManager

- (NSArray)incomingInvitations
{
  v2 = [(_MKFHomeManager *)self valueForKey:@"incomingInvitations_"];
  allObjects = [v2 allObjects];

  return allObjects;
}

- (NSArray)homes
{
  v2 = [(_MKFHomeManager *)self valueForKey:@"homes_"];
  allObjects = [v2 allObjects];

  return allObjects;
}

- (NSArray)accounts
{
  v2 = [(_MKFHomeManager *)self valueForKey:@"accounts_"];
  allObjects = [v2 allObjects];

  return allObjects;
}

- (MKFHomeManagerDatabaseID)databaseID
{
  v2 = [(MKFObjectDatabaseID *)[MKFHomeManagerDatabaseID alloc] initWithMKFObject:self];

  return v2;
}

+ (id)fetchWithContext:(id)context error:(id *)error
{
  v26 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  fetchRequest = [self fetchRequest];
  v8 = MEMORY[0x277CCAC30];
  v9 = +[_MKFHomeManager defaultModelID];
  v10 = [v8 predicateWithFormat:@"%K == %@", @"modelID", v9];
  [fetchRequest setPredicate:v10];

  v21 = 0;
  v11 = [contextCopy executeFetchRequest:fetchRequest error:&v21];
  v12 = v21;
  if (v11)
  {
    firstObject = [v11 firstObject];
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    selfCopy = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543618;
      v23 = v17;
      v24 = 2112;
      v25 = v12;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch home managers: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    if (error)
    {
      v18 = v12;
      firstObject = 0;
      *error = v12;
    }

    else
    {
      firstObject = 0;
    }
  }

  v19 = *MEMORY[0x277D85DE8];

  return firstObject;
}

+ (NSUUID)defaultModelID
{
  v2 = objc_alloc(MEMORY[0x277CCAD78]);
  v3 = [v2 initWithUUIDString:*MEMORY[0x277CD23C8]];

  return v3;
}

- (BOOL)validateModelID:(id *)d error:(id *)error
{
  v25 = *MEMORY[0x277D85DE8];
  v18.receiver = self;
  v18.super_class = _MKFHomeManager;
  LODWORD(v7) = [_MKFModel validateModelID:sel_validateModelID_error_ error:?];
  if (v7)
  {
    defaultModelID = [objc_opt_class() defaultModelID];
    v9 = [defaultModelID isEqual:*d];

    if (v9)
    {
      LOBYTE(v7) = 1;
    }

    else
    {
      v10 = objc_autoreleasePoolPush();
      selfCopy = self;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = HMFGetLogIdentifier();
        v14 = *d;
        *buf = 138543874;
        v20 = v13;
        v21 = 2112;
        v22 = @"modelID";
        v23 = 2112;
        v24 = v14;
        _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Invalid value for %@: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v10);
      v15 = [objc_opt_class() hmd_errorForInvalidValue:*d key:@"modelID"];
      v7 = v15;
      LOBYTE(v7) = 0;
      *error = v15;
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)awakeFromInsert
{
  v4.receiver = self;
  v4.super_class = _MKFHomeManager;
  [(_MKFHomeManager *)&v4 awakeFromInsert];
  defaultModelID = [objc_opt_class() defaultModelID];
  [(_MKFHomeManager *)self setPrimitiveModelID:defaultModelID];
}

@end