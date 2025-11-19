@interface _MKFActionSet
+ (NSPredicate)homeRelation;
+ (id)modelIDForParentRelationshipTo:(id)a3;
- (MKFActionSetDatabaseID)databaseID;
- (NSArray)actions;
- (NSArray)notificationRegistrations;
- (NSArray)triggers;
- (id)createActionsRelationOfType:(id)a3 modelID:(id)a4;
- (id)materializeOrCreateActionsRelationOfType:(id)a3 modelID:(id)a4 createdNew:(BOOL *)a5;
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

- (NSArray)triggers
{
  v2 = [(_MKFActionSet *)self valueForKey:@"triggers_"];
  v3 = [v2 allObjects];

  return v3;
}

- (NSArray)notificationRegistrations
{
  v2 = [(_MKFActionSet *)self valueForKey:@"notificationRegistrations_"];
  v3 = [v2 allObjects];

  return v3;
}

- (id)createActionsRelationOfType:(id)a3 modelID:(id)a4
{
  v6 = a4;
  v7 = NSStringFromProtocol(a3);
  v8 = [(NSManagedObject *)self mkf_createRelationOnProperty:@"actions_" modelProtocol:v7 keyValue:v6];

  return v8;
}

- (id)materializeOrCreateActionsRelationOfType:(id)a3 modelID:(id)a4 createdNew:(BOOL *)a5
{
  v8 = a4;
  v9 = NSStringFromProtocol(a3);
  v10 = [(NSManagedObject *)self mkf_materializeOrCreateRelationOnProperty:@"actions_" modelProtocol:v9 keyValue:v8 createdNew:a5];

  return v10;
}

- (NSArray)actions
{
  v2 = [(_MKFActionSet *)self valueForKey:@"actions_"];
  v3 = [v2 allObjects];

  return v3;
}

- (MKFActionSetDatabaseID)databaseID
{
  v2 = [(MKFObjectDatabaseID *)[MKFActionSetDatabaseID alloc] initWithMKFObject:self];

  return v2;
}

@end