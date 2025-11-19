@interface ActivityFeedAchievementView
- (CGSize)sizeThatFits:(CGSize)a3;
- (NSString)accessibilityLabel;
- (void)layoutSubviews;
- (void)setAccessibilityLabel:(id)a3;
@end

@implementation ActivityFeedAchievementView

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = self;
  sub_24E2E8FF0();
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_24E2E916C();
}

- (NSString)accessibilityLabel
{
  v2 = self;
  sub_24E2EA818();
  v4 = v3;

  if (v4)
  {
    v5 = sub_24E347CB8();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setAccessibilityLabel:(id)a3
{
  if (a3)
  {
    v4 = sub_24E347CF8();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = self;
  sub_24E018BB0(v4, v6);
}

@end