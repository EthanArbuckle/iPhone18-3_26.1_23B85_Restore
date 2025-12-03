@interface GKFriendRequestURLModel
- (id)description;
@end

@implementation GKFriendRequestURLModel

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  friendSupportPageURL = [(GKFriendRequestURLModel *)self friendSupportPageURL];
  friendCode = [(GKFriendRequestURLModel *)self friendCode];
  friendRequestState = [(GKFriendRequestURLModel *)self friendRequestState];
  initiator = [(GKFriendRequestURLModel *)self initiator];
  friendRequestVersion = [(GKFriendRequestURLModel *)self friendRequestVersion];
  v10 = [v3 stringWithFormat:@"             \n\t <%@: %p>             \n\t friendSupportPageURL: %@             \n\t friendCode: %@             \n\t friendRequestState: %@             \n\t initiator: %@             \n\t friendRequestVersion: %@             \n             ", v4, self, friendSupportPageURL, friendCode, friendRequestState, initiator, friendRequestVersion];

  return v10;
}

@end