@interface _MKFIncomingInvitation
- (MKFIncomingInvitationDatabaseID)databaseID;
@end

@implementation _MKFIncomingInvitation

- (MKFIncomingInvitationDatabaseID)databaseID
{
  v2 = [(MKFObjectDatabaseID *)[MKFIncomingInvitationDatabaseID alloc] initWithMKFObject:self];

  return v2;
}

@end