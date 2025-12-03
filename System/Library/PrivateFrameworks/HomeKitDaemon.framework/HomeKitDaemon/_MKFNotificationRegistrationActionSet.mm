@interface _MKFNotificationRegistrationActionSet
+ (id)modelIDForParentRelationshipTo:(id)to;
- (BOOL)validateForInsertOrUpdate:(id *)update;
- (MKFHome)home;
- (MKFNotificationRegistrationActionSetDatabaseID)databaseID;
@end

@implementation _MKFNotificationRegistrationActionSet

- (MKFHome)home
{
  user = [(_MKFNotificationRegistrationActionSet *)self user];
  home = [user home];

  return home;
}

- (MKFNotificationRegistrationActionSetDatabaseID)databaseID
{
  v2 = [(MKFObjectDatabaseID *)[MKFNotificationRegistrationActionSetDatabaseID alloc] initWithMKFObject:self];

  return v2;
}

- (BOOL)validateForInsertOrUpdate:(id *)update
{
  v9.receiver = self;
  v9.super_class = _MKFNotificationRegistrationActionSet;
  LODWORD(v5) = [(_MKFModel *)&v9 validateForInsertOrUpdate:?];
  if (v5)
  {
    actionSet = [(_MKFNotificationRegistrationActionSet *)self actionSet];

    if (actionSet)
    {
      LOBYTE(v5) = 1;
    }

    else if (update)
    {
      v7 = [MEMORY[0x277CCA9B8] hmd_validationErrorWithDescription:@"action set is required"];
      v5 = v7;
      LOBYTE(v5) = 0;
      *update = v7;
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5;
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

@end