@interface BadgeView
- (BOOL)isHidden;
- (CGRect)frame;
- (void)layoutSubviews;
- (void)setFrame:(CGRect)frame;
- (void)setHidden:(BOOL)hidden;
@end

@implementation BadgeView

- (BOOL)isHidden
{
  selfCopy = self;
  v3 = sub_24E28680C();

  return v3 & 1;
}

- (void)setHidden:(BOOL)hidden
{
  selfCopy = self;
  sub_24E284CFC(hidden);
}

- (CGRect)frame
{
  selfCopy = self;
  sub_24E2869D4();
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
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  selfCopy = self;
  sub_24E286A84(x, y, width, height);
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_24E286DE8();
}

@end