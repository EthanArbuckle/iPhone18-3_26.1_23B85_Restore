@interface _MKFRoomPresence
- (MKFRoomPresenceDatabaseID)databaseID;
@end

@implementation _MKFRoomPresence

- (MKFRoomPresenceDatabaseID)databaseID
{
  v2 = [(MKFObjectDatabaseID *)[MKFRoomPresenceDatabaseID alloc] initWithMKFObject:self];

  return v2;
}

@end