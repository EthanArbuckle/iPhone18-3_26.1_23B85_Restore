@interface OnboardingFriendsSuggestionsViewController.FriendRecommendationsDataUpdateDelegate
- (void)refreshContentsForDataType:(unsigned int)type userInfo:(id)info;
@end

@implementation OnboardingFriendsSuggestionsViewController.FriendRecommendationsDataUpdateDelegate

- (void)refreshContentsForDataType:(unsigned int)type userInfo:(id)info
{
  v4 = *&type;
  v6 = sub_24E347C08();
  selfCopy = self;
  sub_24DFCB6B8(v4, v6);
}

@end