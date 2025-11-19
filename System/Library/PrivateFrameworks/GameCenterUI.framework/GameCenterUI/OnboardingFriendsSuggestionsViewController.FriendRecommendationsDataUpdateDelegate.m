@interface OnboardingFriendsSuggestionsViewController.FriendRecommendationsDataUpdateDelegate
- (void)refreshContentsForDataType:(unsigned int)a3 userInfo:(id)a4;
@end

@implementation OnboardingFriendsSuggestionsViewController.FriendRecommendationsDataUpdateDelegate

- (void)refreshContentsForDataType:(unsigned int)a3 userInfo:(id)a4
{
  v4 = *&a3;
  v6 = sub_24E347C08();
  v7 = self;
  sub_24DFCB6B8(v4, v6);
}

@end