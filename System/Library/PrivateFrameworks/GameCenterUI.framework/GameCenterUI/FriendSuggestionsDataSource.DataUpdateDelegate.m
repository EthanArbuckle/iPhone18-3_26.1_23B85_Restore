@interface FriendSuggestionsDataSource.DataUpdateDelegate
- (void)refreshContentsForDataType:(unsigned int)a3 userInfo:(id)a4;
@end

@implementation FriendSuggestionsDataSource.DataUpdateDelegate

- (void)refreshContentsForDataType:(unsigned int)a3 userInfo:(id)a4
{
  v4 = *&a3;
  sub_24E347C08();
  v6 = self;
  sub_24E0DD424(v4);
}

@end