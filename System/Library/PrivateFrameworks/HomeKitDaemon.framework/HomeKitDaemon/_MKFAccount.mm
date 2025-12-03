@interface _MKFAccount
+ (id)modelIDForParentRelationshipTo:(id)to;
- (MKFAccountDatabaseID)databaseID;
- (NSArray)devices;
- (NSArray)handles;
@end

@implementation _MKFAccount

- (NSArray)devices
{
  v2 = [(_MKFAccount *)self valueForKey:@"devices_"];
  allObjects = [v2 allObjects];

  return allObjects;
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

- (NSArray)handles
{
  v2 = [(_MKFAccount *)self valueForKey:@"handles_"];
  allObjects = [v2 allObjects];

  return allObjects;
}

- (MKFAccountDatabaseID)databaseID
{
  v2 = [(MKFObjectDatabaseID *)[MKFAccountDatabaseID alloc] initWithMKFObject:self];

  return v2;
}

@end