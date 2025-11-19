@interface _MKFBulletinTimeSpecification
- (MKFBulletinTimeSpecificationDatabaseID)databaseID;
@end

@implementation _MKFBulletinTimeSpecification

- (MKFBulletinTimeSpecificationDatabaseID)databaseID
{
  v2 = [(MKFObjectDatabaseID *)[MKFBulletinTimeSpecificationDatabaseID alloc] initWithMKFObject:self];

  return v2;
}

@end