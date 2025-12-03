@interface GameCenterDataUpdatePresenter
- (void)refreshContentsForDataType:(unsigned int)type userInfo:(id)info;
- (void)refreshFriendContents:(id)contents;
- (void)refreshFriendSuggestionContents:(id)contents;
@end

@implementation GameCenterDataUpdatePresenter

- (void)refreshFriendContents:(id)contents
{
  contentsCopy = contents;
  selfCopy = self;
  sub_24E0AD084();
}

- (void)refreshFriendSuggestionContents:(id)contents
{
  contentsCopy = contents;
  selfCopy = self;
  sub_24E0AD14C(contentsCopy);
}

- (void)refreshContentsForDataType:(unsigned int)type userInfo:(id)info
{
  v6 = sub_24E347C08();
  selfCopy = self;
  sub_24E0AD224(type, v6);
}

@end