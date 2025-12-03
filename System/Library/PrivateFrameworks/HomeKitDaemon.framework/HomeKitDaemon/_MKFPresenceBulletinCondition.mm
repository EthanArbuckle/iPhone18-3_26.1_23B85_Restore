@interface _MKFPresenceBulletinCondition
+ (id)modelIDForParentRelationshipTo:(id)to;
- (MKFHome)home;
- (MKFPresenceBulletinConditionDatabaseID)databaseID;
- (NSArray)guests;
- (NSArray)users;
@end

@implementation _MKFPresenceBulletinCondition

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

- (NSArray)guests
{
  v2 = [(_MKFPresenceBulletinCondition *)self valueForKey:@"guests_"];
  allObjects = [v2 allObjects];

  return allObjects;
}

- (NSArray)users
{
  v2 = [(_MKFPresenceBulletinCondition *)self valueForKey:@"users_"];
  allObjects = [v2 allObjects];

  return allObjects;
}

- (MKFHome)home
{
  bulletinRegistration = [(_MKFPresenceBulletinCondition *)self bulletinRegistration];
  home = [bulletinRegistration home];

  return home;
}

- (MKFPresenceBulletinConditionDatabaseID)databaseID
{
  v2 = [(MKFObjectDatabaseID *)[MKFPresenceBulletinConditionDatabaseID alloc] initWithMKFObject:self];

  return v2;
}

@end