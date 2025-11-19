@interface _MKFNotificationRegistration
+ (NSPredicate)homeRelation;
+ (id)modelIDForParentRelationshipTo:(id)a3;
- (MKFHome)home;
- (MKFNotificationRegistrationDatabaseID)databaseID;
@end

@implementation _MKFNotificationRegistration

+ (NSPredicate)homeRelation
{
  if (homeRelation__hmf_once_t0_197850 != -1)
  {
    dispatch_once(&homeRelation__hmf_once_t0_197850, &__block_literal_global_197851);
  }

  v3 = homeRelation__hmf_once_v1_197852;

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

- (MKFHome)home
{
  v2 = [(_MKFNotificationRegistration *)self user];
  v3 = [v2 home];

  return v3;
}

- (MKFNotificationRegistrationDatabaseID)databaseID
{
  v2 = [(MKFObjectDatabaseID *)[MKFNotificationRegistrationDatabaseID alloc] initWithMKFObject:self];

  return v2;
}

@end