@interface AvatarView
- (CGRect)jet_focusedFrame;
- (UIColor)backgroundColor;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)color;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation AvatarView

- (UIColor)backgroundColor
{
  selfCopy = self;
  v3 = sub_24E1DDB6C();

  return v3;
}

- (void)setBackgroundColor:(id)color
{
  colorCopy = color;
  selfCopy = self;
  sub_24E1DDC08(color);
}

- (CGRect)jet_focusedFrame
{
  selfCopy = self;
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
  selfCopy = self;
  sub_24E1DDCCC();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_24E1DDF2C(change);
}

@end