@interface _MKFPresenceEvent
+ (NSPredicate)homeRelation;
+ (id)modelIDForParentRelationshipTo:(id)a3;
- (BOOL)validateForInsertOrUpdate:(id *)a3;
- (MKFHome)home;
- (MKFPresenceEventDatabaseID)databaseID;
- (NSArray)guests;
- (NSArray)users;
@end

@implementation _MKFPresenceEvent

- (NSArray)guests
{
  v2 = [(_MKFPresenceEvent *)self valueForKey:@"guests_"];
  v3 = [v2 allObjects];

  return v3;
}

- (NSArray)users
{
  v2 = [(_MKFPresenceEvent *)self valueForKey:@"users_"];
  v3 = [v2 allObjects];

  return v3;
}

- (MKFHome)home
{
  v2 = [(_MKFPresenceEvent *)self trigger];
  v3 = [v2 home];

  return v3;
}

- (MKFPresenceEventDatabaseID)databaseID
{
  v2 = [(MKFObjectDatabaseID *)[MKFPresenceEventDatabaseID alloc] initWithMKFObject:self];

  return v2;
}

- (BOOL)validateForInsertOrUpdate:(id *)a3
{
  v13.receiver = self;
  v13.super_class = _MKFPresenceEvent;
  if ([(_MKFEvent *)&v13 validateForInsertOrUpdate:?])
  {
    v5 = [(_MKFPresenceEvent *)self presenceType];
    v6 = [(_MKFPresenceEvent *)self activation];
    [v6 unsignedIntegerValue];

    v7 = eventTypeForPresenceTypeAndGranularity();
    v8 = userTypeForPresenceTypeAndGranularity();
    if (v7 == *MEMORY[0x277CD23E8] || v8 == *MEMORY[0x277CD23F0])
    {
      if (a3)
      {
        v10 = @"Invalid presenceType or activation";
LABEL_13:
        [MEMORY[0x277CCA9B8] hmd_validationErrorWithDescription:v10];
        *a3 = v11 = 0;
LABEL_16:

        return v11;
      }
    }

    else
    {
      if (v8 != 1)
      {
        v11 = 1;
        goto LABEL_16;
      }

      if (a3)
      {
        v10 = @"HMPresenceEventUserTypeCurrentUser must be resolved to a user list";
        goto LABEL_13;
      }
    }

    v11 = 0;
    goto LABEL_16;
  }

  return 0;
}

+ (NSPredicate)homeRelation
{
  if (homeRelation__hmf_once_t0_75043 != -1)
  {
    dispatch_once(&homeRelation__hmf_once_t0_75043, &__block_literal_global_75044);
  }

  v3 = homeRelation__hmf_once_v1_75045;

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