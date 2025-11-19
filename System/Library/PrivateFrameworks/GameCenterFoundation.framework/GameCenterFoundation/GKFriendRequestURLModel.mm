@interface GKFriendRequestURLModel
- (id)description;
@end

@implementation GKFriendRequestURLModel

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(GKFriendRequestURLModel *)self friendSupportPageURL];
  v6 = [(GKFriendRequestURLModel *)self friendCode];
  v7 = [(GKFriendRequestURLModel *)self friendRequestState];
  v8 = [(GKFriendRequestURLModel *)self initiator];
  v9 = [(GKFriendRequestURLModel *)self friendRequestVersion];
  v10 = [v3 stringWithFormat:@"             \n\t <%@: %p>             \n\t friendSupportPageURL: %@             \n\t friendCode: %@             \n\t friendRequestState: %@             \n\t initiator: %@             \n\t friendRequestVersion: %@             \n             ", v4, self, v5, v6, v7, v8, v9];

  return v10;
}

@end