@interface _MKFMatterBulletinRegistration
+ (id)modelIDForParentRelationshipTo:(id)to;
- (MKFHome)home;
- (MKFMatterBulletinRegistrationDatabaseID)databaseID;
- (NSArray)matterPaths;
@end

@implementation _MKFMatterBulletinRegistration

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

- (NSArray)matterPaths
{
  v2 = [(_MKFMatterBulletinRegistration *)self valueForKey:@"matterPaths_"];
  allObjects = [v2 allObjects];

  return allObjects;
}

- (MKFHome)home
{
  user = [(_MKFMatterBulletinRegistration *)self user];
  home = [user home];
  v5 = home;
  if (home)
  {
    home2 = home;
  }

  else
  {
    guest = [(_MKFMatterBulletinRegistration *)self guest];
    home2 = [guest home];
  }

  return home2;
}

- (MKFMatterBulletinRegistrationDatabaseID)databaseID
{
  v2 = [(MKFObjectDatabaseID *)[MKFMatterBulletinRegistrationDatabaseID alloc] initWithMKFObject:self];

  return v2;
}

@end