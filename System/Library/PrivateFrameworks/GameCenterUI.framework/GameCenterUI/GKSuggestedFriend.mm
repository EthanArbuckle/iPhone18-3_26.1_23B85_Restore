@interface GKSuggestedFriend
- (GKSuggestedFriend)initWithContact:(id)contact contactAssociationID:(id)d supportsFriendingViaPush:(BOOL)push;
@end

@implementation GKSuggestedFriend

- (GKSuggestedFriend)initWithContact:(id)contact contactAssociationID:(id)d supportsFriendingViaPush:(BOOL)push
{
  contactCopy = contact;
  dCopy = d;
  v14.receiver = self;
  v14.super_class = GKSuggestedFriend;
  v11 = [(GKSuggestedFriend *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_contact, contact);
    objc_storeStrong(&v12->_contactAssociationID, d);
    v12->_supportsFriendingViaPush = push;
  }

  return v12;
}

@end