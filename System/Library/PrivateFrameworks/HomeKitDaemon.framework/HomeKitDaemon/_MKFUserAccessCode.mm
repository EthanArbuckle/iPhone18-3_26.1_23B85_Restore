@interface _MKFUserAccessCode
+ (NSPredicate)homeRelation;
- (MKFHome)home;
- (MKFUserAccessCodeDatabaseID)databaseID;
- (NSUUID)hmd_parentModelID;
@end

@implementation _MKFUserAccessCode

+ (NSPredicate)homeRelation
{
  if (homeRelation__hmf_once_t0_107868 != -1)
  {
    dispatch_once(&homeRelation__hmf_once_t0_107868, &__block_literal_global_107869);
  }

  v3 = homeRelation__hmf_once_v1_107870;

  return v3;
}

- (MKFHome)home
{
  v2 = [(_MKFUserAccessCode *)self user];
  v3 = [v2 home];

  return v3;
}

- (MKFUserAccessCodeDatabaseID)databaseID
{
  v2 = [(MKFObjectDatabaseID *)[MKFUserAccessCodeDatabaseID alloc] initWithMKFObject:self];

  return v2;
}

- (NSUUID)hmd_parentModelID
{
  v3 = objc_opt_class();
  if (HMDManagedObjectClassIsBSORepresentable(v3))
  {
    v4 = [(NSManagedObject *)self hmd_lastKnownValueForKey:@"user"];
    if (v4 || ([(NSManagedObject *)self hmd_lastKnownValueForKey:@"guest"], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v5 = v4;
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
    [(HMDUserAccessCodeModel *)v8 cd_populateParentRelationshipInContext:v9 error:v10, v11];
  }

  return result;
}

@end