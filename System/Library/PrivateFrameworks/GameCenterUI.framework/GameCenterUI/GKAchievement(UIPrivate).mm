@interface GKAchievement(UIPrivate)
- (id)imageURL;
- (void)loadImageWithCompletionHandler:()UIPrivate;
- (void)showBanner;
@end

@implementation GKAchievement(UIPrivate)

- (id)imageURL
{
  v1 = [a1 _achievementDescription];
  v2 = [v1 imageURL];

  return v2;
}

- (void)showBanner
{
  v1 = [a1 _achievementDescription];
  [v1 showBanner];
}

- (void)loadImageWithCompletionHandler:()UIPrivate
{
  v4 = a3;
  v5 = [a1 _achievementDescription];
  [v5 loadImageWithCompletionHandler:v4];
}

@end