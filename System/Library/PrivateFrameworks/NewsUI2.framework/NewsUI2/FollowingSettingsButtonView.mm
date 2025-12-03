@interface FollowingSettingsButtonView
- (NSString)accessibilityLabel;
@end

@implementation FollowingSettingsButtonView

- (NSString)accessibilityLabel
{
  selfCopy = self;
  titleLabel = [(FollowingSettingsButtonView *)selfCopy titleLabel];
  if (titleLabel && (v4 = titleLabel, v5 = [titleLabel text], v4, v5))
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