@interface FriendRequestsDataSource.FriendRequestDataUpdateDelegate
- (void)refreshContentsForDataType:(unsigned int)type userInfo:(id)info;
@end

@implementation FriendRequestsDataSource.FriendRequestDataUpdateDelegate

- (void)refreshContentsForDataType:(unsigned int)type userInfo:(id)info
{
  v4 = *&type;
  sub_24E347C08();
  selfCopy = self;
  sub_24E0E02D0(v4);
}

@end