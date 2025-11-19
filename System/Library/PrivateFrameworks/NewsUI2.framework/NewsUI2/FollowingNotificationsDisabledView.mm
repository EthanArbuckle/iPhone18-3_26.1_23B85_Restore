@interface FollowingNotificationsDisabledView
- (CGPoint)accessibilityActivationPoint;
- (CGSize)sizeThatFits:(CGSize)result;
- (NSString)accessibilityLabel;
@end

@implementation FollowingNotificationsDisabledView

- (CGSize)sizeThatFits:(CGSize)result
{
  v3 = 320.0;
  result.height = v3;
  return result;
}

- (NSString)accessibilityLabel
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC7NewsUI234FollowingNotificationsDisabledView_subtitleLabel);
  v3 = self;
  v4 = [v2 text];
  if (v4)
  {
    v5 = v4;
    sub_219BF5414();

    v6 = sub_219BF53D4();
  }

  else
  {

    v6 = 0;
  }

  return v6;
}

- (CGPoint)accessibilityActivationPoint
{
  [*(&self->super.super.super.isa + OBJC_IVAR____TtC7NewsUI234FollowingNotificationsDisabledView_button) accessibilityActivationPoint];
  result.y = v3;
  result.x = v2;
  return result;
}

@end