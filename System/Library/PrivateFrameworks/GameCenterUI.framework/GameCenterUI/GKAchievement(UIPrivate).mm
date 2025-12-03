@interface GKAchievement(UIPrivate)
- (id)imageURL;
- (void)loadImageWithCompletionHandler:()UIPrivate;
- (void)showBanner;
@end

@implementation GKAchievement(UIPrivate)

- (id)imageURL
{
  _achievementDescription = [self _achievementDescription];
  imageURL = [_achievementDescription imageURL];

  return imageURL;
}

- (void)showBanner
{
  _achievementDescription = [self _achievementDescription];
  [_achievementDescription showBanner];
}

- (void)loadImageWithCompletionHandler:()UIPrivate
{
  v4 = a3;
  _achievementDescription = [self _achievementDescription];
  [_achievementDescription loadImageWithCompletionHandler:v4];
}

@end