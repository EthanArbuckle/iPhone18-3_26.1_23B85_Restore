@interface GameCenterDataUpdatePresenter
- (void)refreshContentsForDataType:(unsigned int)a3 userInfo:(id)a4;
- (void)refreshFriendContents:(id)a3;
- (void)refreshFriendSuggestionContents:(id)a3;
@end

@implementation GameCenterDataUpdatePresenter

- (void)refreshFriendContents:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24E0AD084();
}

- (void)refreshFriendSuggestionContents:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24E0AD14C(v4);
}

- (void)refreshContentsForDataType:(unsigned int)a3 userInfo:(id)a4
{
  v6 = sub_24E347C08();
  v7 = self;
  sub_24E0AD224(a3, v6);
}

@end