@interface AllFriendsDataSource.FriendDataUpdateDelegate
- (void)refreshContentsForDataType:(unsigned int)type userInfo:(id)info;
@end

@implementation AllFriendsDataSource.FriendDataUpdateDelegate

- (void)refreshContentsForDataType:(unsigned int)type userInfo:(id)info
{
  v4 = *&type;
  sub_24E347C08();
  selfCopy = self;
  sub_24E0E162C(v4);
}

@end