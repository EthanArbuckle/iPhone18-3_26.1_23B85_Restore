@interface _MKFActionSet
+ (NSPredicate)homeRelation;
+ (id)modelIDForParentRelationshipTo:(id)to;
- (MKFActionSetDatabaseID)databaseID;
- (NSArray)actions;
- (NSArray)notificationRegistrations;
- (NSArray)triggers;
- (id)createActionsRelationOfType:(id)type modelID:(id)d;
- (id)materializeOrCreateActionsRelationOfType:(id)type modelID:(id)d createdNew:(BOOL *)new;
@end

@implementation _MKFActionSet

+ (NSPredicate)homeRelation
{
  if (homeRelation__hmf_once_t0_213891 != -1)
  {
    dispatch_once(&homeRelation__hmf_once_t0_213891, &__block_literal_global_213892);
  }

  v3 = homeRelation__hmf_once_v1_213893;

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

- (NSArray)triggers
{
  v2 = [(_MKFActionSet *)self valueForKey:@"triggers_"];
  allObjects = [v2 allObjects];

  return allObjects;
}

- (NSArray)notificationRegistrations
{
  v2 = [(_MKFActionSet *)self valueForKey:@"notificationRegistrations_"];
  allObjects = [v2 allObjects];

  return allObjects;
}

- (id)createActionsRelationOfType:(id)type modelID:(id)d
{
  dCopy = d;
  v7 = NSStringFromProtocol(type);
  v8 = [(NSManagedObject *)self mkf_createRelationOnProperty:@"actions_" modelProtocol:v7 keyValue:dCopy];

  return v8;
}

- (id)materializeOrCreateActionsRelationOfType:(id)type modelID:(id)d createdNew:(BOOL *)new
{
  dCopy = d;
  v9 = NSStringFromProtocol(type);
  v10 = [(NSManagedObject *)self mkf_materializeOrCreateRelationOnProperty:@"actions_" modelProtocol:v9 keyValue:dCopy createdNew:new];

  return v10;
}

- (NSArray)actions
{
  v2 = [(_MKFActionSet *)self valueForKey:@"actions_"];
  allObjects = [v2 allObjects];

  return allObjects;
}

- (MKFActionSetDatabaseID)databaseID
{
  v2 = [(MKFObjectDatabaseID *)[MKFActionSetDatabaseID alloc] initWithMKFObject:self];

  return v2;
}

@end