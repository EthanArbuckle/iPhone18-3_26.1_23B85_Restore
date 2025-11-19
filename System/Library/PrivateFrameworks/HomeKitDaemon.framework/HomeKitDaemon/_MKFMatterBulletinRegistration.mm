@interface _MKFMatterBulletinRegistration
+ (id)modelIDForParentRelationshipTo:(id)a3;
- (MKFHome)home;
- (MKFMatterBulletinRegistrationDatabaseID)databaseID;
- (NSArray)matterPaths;
@end

@implementation _MKFMatterBulletinRegistration

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

- (NSArray)matterPaths
{
  v2 = [(_MKFMatterBulletinRegistration *)self valueForKey:@"matterPaths_"];
  v3 = [v2 allObjects];

  return v3;
}

- (MKFHome)home
{
  v3 = [(_MKFMatterBulletinRegistration *)self user];
  v4 = [v3 home];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = [(_MKFMatterBulletinRegistration *)self guest];
    v6 = [v7 home];
  }

  return v6;
}

- (MKFMatterBulletinRegistrationDatabaseID)databaseID
{
  v2 = [(MKFObjectDatabaseID *)[MKFMatterBulletinRegistrationDatabaseID alloc] initWithMKFObject:self];

  return v2;
}

@end