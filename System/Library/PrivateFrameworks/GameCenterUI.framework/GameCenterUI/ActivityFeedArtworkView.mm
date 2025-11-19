@interface ActivityFeedArtworkView
- (CGSize)sizeThatFits:(CGSize)a3;
- (NSString)accessibilityLabel;
- (void)layoutSubviews;
- (void)setAccessibilityLabel:(id)a3;
@end

@implementation ActivityFeedArtworkView

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = self;
  v4 = sub_24E17E520();
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_24E17E6A0();
}

- (NSString)accessibilityLabel
{
  v2 = self;
  sub_24E17F120();
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