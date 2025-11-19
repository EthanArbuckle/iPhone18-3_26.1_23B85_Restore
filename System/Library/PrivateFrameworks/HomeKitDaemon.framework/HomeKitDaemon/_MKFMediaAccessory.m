@interface _MKFMediaAccessory
- (MKFMediaAccessoryDatabaseID)databaseID;
@end

@implementation _MKFMediaAccessory

- (MKFMediaAccessoryDatabaseID)databaseID
{
  v2 = [(MKFObjectDatabaseID *)[MKFMediaAccessoryDatabaseID alloc] initWithMKFObject:self];

  return v2;
}

@end