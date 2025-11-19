@interface FollowingSettingsButtonView
- (NSString)accessibilityLabel;
@end

@implementation FollowingSettingsButtonView

- (NSString)accessibilityLabel
{
  v2 = self;
  v3 = [(FollowingSettingsButtonView *)v2 titleLabel];
  if (v3 && (v4 = v3, v5 = [v3 text], v4, v5))
  {
    sub_219BF5414();

    v6 = sub_219BF53D4();

    v7 = v6;
  }

  else
  {

    v7 = 0;
  }

  return v7;
}

@end