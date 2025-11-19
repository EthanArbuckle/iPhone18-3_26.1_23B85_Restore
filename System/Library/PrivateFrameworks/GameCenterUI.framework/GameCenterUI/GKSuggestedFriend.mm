@interface GKSuggestedFriend
- (GKSuggestedFriend)initWithContact:(id)a3 contactAssociationID:(id)a4 supportsFriendingViaPush:(BOOL)a5;
@end

@implementation GKSuggestedFriend

- (GKSuggestedFriend)initWithContact:(id)a3 contactAssociationID:(id)a4 supportsFriendingViaPush:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = GKSuggestedFriend;
  v11 = [(GKSuggestedFriend *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_contact, a3);
    objc_storeStrong(&v12->_contactAssociationID, a4);
    v12->_supportsFriendingViaPush = a5;
  }

  return v12;
}

@end