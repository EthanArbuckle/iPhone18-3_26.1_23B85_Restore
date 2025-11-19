@interface BadgeView
- (BOOL)isHidden;
- (CGRect)frame;
- (void)layoutSubviews;
- (void)setFrame:(CGRect)a3;
- (void)setHidden:(BOOL)a3;
@end

@implementation BadgeView

- (BOOL)isHidden
{
  v2 = self;
  v3 = sub_24E28680C();

  return v3 & 1;
}

- (void)setHidden:(BOOL)a3
{
  v4 = self;
  sub_24E284CFC(a3);
}

- (CGRect)frame
{
  v2 = self;
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

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self;
  sub_24E286A84(x, y, width, height);
}

- (void)layoutSubviews
{
  v2 = self;
  sub_24E286DE8();
}

@end