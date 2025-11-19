@interface AvatarView
- (CGRect)jet_focusedFrame;
- (UIColor)backgroundColor;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation AvatarView

- (UIColor)backgroundColor
{
  v2 = self;
  v3 = sub_24E1DDB6C();

  return v3;
}

- (void)setBackgroundColor:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_24E1DDC08(a3);
}

- (CGRect)jet_focusedFrame
{
  v2 = self;
  sub_24E1DDCB4();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_24E1DDCCC();
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_24E1DDF2C(a3);
}

@end