@interface FriendSuggestionsDataSource.DataUpdateDelegate
- (void)refreshContentsForDataType:(unsigned int)type userInfo:(id)info;
@end

@implementation FriendSuggestionsDataSource.DataUpdateDelegate

- (void)refreshContentsForDataType:(unsigned int)type userInfo:(id)info
{
  v4 = *&type;
  sub_24E347C08();
  selfCopy = self;
  sub_24E0DD424(v4);
}

@end