@interface _MKFEvent
+ (NSPredicate)homeRelation;
+ (id)modelIDForParentRelationshipTo:(id)to;
- (BOOL)validateForInsertOrUpdate:(id *)update;
- (MKFEventDatabaseID)databaseID;
- (MKFHome)home;
@end

@implementation _MKFEvent

+ (NSPredicate)homeRelation
{
  if (homeRelation__hmf_once_t1 != -1)
  {
    dispatch_once(&homeRelation__hmf_once_t1, &__block_literal_global_140988);
  }

  v3 = homeRelation__hmf_once_v2;

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

- (MKFHome)home
{
  trigger = [(_MKFEvent *)self trigger];
  home = [trigger home];

  return home;
}

- (MKFEventDatabaseID)databaseID
{
  v2 = [(MKFObjectDatabaseID *)[MKFEventDatabaseID alloc] initWithMKFObject:self];

  return v2;
}

- (BOOL)validateForInsertOrUpdate:(id *)update
{
  trigger = [(_MKFEvent *)self trigger];

  if (update && !trigger)
  {
    *update = [MEMORY[0x277CCA9B8] hmd_validationErrorWithDescription:@"Trigger is required"];
  }

  return trigger != 0;
}

@end