@interface _MKFMatterPath
+ (NSPredicate)homeRelation;
+ (id)modelIDForParentRelationshipTo:(id)a3;
- (BOOL)_validateParentsForInsertOrUpdate:(id *)a3;
- (BOOL)validateForInsertOrUpdate:(id *)a3;
- (MKFHome)home;
- (MKFMatterPathDatabaseID)databaseID;
- (NSArray)actionCommands;
- (NSArray)eventAttributes;
- (NSArray)matterBulletinRegistrations;
- (NSUUID)hmd_parentModelID;
@end

@implementation _MKFMatterPath

- (NSArray)matterBulletinRegistrations
{
  v2 = [(_MKFMatterPath *)self valueForKey:@"matterBulletinRegistrations_"];
  v3 = [v2 allObjects];

  return v3;
}

- (NSArray)eventAttributes
{
  v2 = [(_MKFMatterPath *)self valueForKey:@"eventAttributes_"];
  v3 = [v2 allObjects];

  return v3;
}

- (NSArray)actionCommands
{
  v2 = [(_MKFMatterPath *)self valueForKey:@"actionCommands_"];
  v3 = [v2 allObjects];

  return v3;
}

- (MKFHome)home
{
  v2 = [(_MKFMatterPath *)self accessory];
  v3 = [v2 home];

  return v3;
}

- (MKFMatterPathDatabaseID)databaseID
{
  v2 = [(MKFObjectDatabaseID *)[MKFMatterPathDatabaseID alloc] initWithMKFObject:self];

  return v2;
}

- (BOOL)_validateParentsForInsertOrUpdate:(id *)a3
{
  v5 = +[HMDCoreData featuresDataSource];
  if (![v5 isRVCEnabled])
  {
    goto LABEL_21;
  }

  v6 = [(_MKFMatterPath *)self entity];
  v7 = +[_MKFMatterPath entity];
  v8 = [v6 isKindOfEntity:v7];

  if (v8)
  {
    v5 = [(_MKFMatterPath *)self valueForKey:@"accessory"];
    if (v5)
    {
      v9 = [(_MKFMatterPath *)self valueForKey:@"endpointID"];
      if (v9)
      {
        v10 = v9;
        v11 = [(_MKFMatterPath *)self valueForKey:@"clusterID"];

        if (v11)
        {
          v12 = [(_MKFMatterPath *)self valueForKey:@"attributeID"];
          v13 = [(_MKFMatterPath *)self valueForKey:@"commandID"];
          v14 = [(_MKFMatterPath *)self valueForKey:@"eventID"];
          v15 = v14;
          if (v12 && v13 || v12 | v13 && v14)
          {
            if (a3)
            {
              *a3 = [MEMORY[0x277CCA9B8] hmd_validationErrorWithDescription:@"only attribute/command/event can be set"];
            }

            goto LABEL_19;
          }

LABEL_21:
          v16 = 1;
          goto LABEL_22;
        }
      }

      if (a3)
      {
        v17 = @"both endpoint and cluster are needed";
LABEL_18:
        [MEMORY[0x277CCA9B8] hmd_validationErrorWithDescription:v17];
        *a3 = v16 = 0;
LABEL_22:

        return v16;
      }
    }

    else if (a3)
    {
      v17 = @"at least on accessory is required";
      goto LABEL_18;
    }

LABEL_19:
    v16 = 0;
    goto LABEL_22;
  }

  return 1;
}

- (BOOL)validateForInsertOrUpdate:(id *)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [(_MKFMatterPath *)v6 modelID];
    v14 = 138543618;
    v15 = v8;
    v16 = 2112;
    v17 = v9;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Validating matter path (%@) for insert or update", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  if (a3)
  {
    *a3 = 0;
  }

  if ([(_MKFMatterPath *)v6 _validateParentsForInsertOrUpdate:a3])
  {
    v10 = [(_MKFMatterPath *)v6 accessory];
    v11 = v10 != 0;

    if (a3 && !v10)
    {
      [MEMORY[0x277CCA9B8] hmd_validationErrorWithDescription:@"at least one accessory is required" managedObject:v6 attributeName:@"accessory"];
      *a3 = v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

+ (NSPredicate)homeRelation
{
  if (homeRelation__hmf_once_t6 != -1)
  {
    dispatch_once(&homeRelation__hmf_once_t6, &__block_literal_global_208240);
  }

  v3 = homeRelation__hmf_once_v7;

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

- (NSUUID)hmd_parentModelID
{
  v3 = objc_opt_class();
  if (HMDManagedObjectClassIsBSORepresentable(v3))
  {
    v4 = [(NSManagedObject *)self hmd_lastKnownValueForKey:@"accessory"];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 hmd_modelID];
    }

    else
    {
      v6 = 0;
    }

    return v6;
  }

  else
  {
    v8 = _HMFPreconditionFailure();
    [(HMDMatterPathModel *)v8 cd_populateParentRelationshipInContext:v9 error:v10, v11];
  }

  return result;
}

@end