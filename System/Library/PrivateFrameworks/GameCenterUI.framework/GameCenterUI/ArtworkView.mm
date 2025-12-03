@interface ArtworkView
- (CGRect)frame;
- (UIColor)backgroundColor;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)color;
- (void)setFrame:(CGRect)frame;
@end

@implementation ArtworkView

- (UIColor)backgroundColor
{
  selfCopy = self;
  v3 = sub_24E0D9934();

  return v3;
}

- (void)setBackgroundColor:(id)color
{
  colorCopy = color;
  selfCopy = self;
  sub_24E0D99D0(color);
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_24E0D9A28();
}

- (CGRect)frame
{
  selfCopy = self;
  sub_24E0D9F08();
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

- (void)setFrame:(CGRect)frame
{
  selfCopy = self;
  sub_24E0D9FB4();
}

@end