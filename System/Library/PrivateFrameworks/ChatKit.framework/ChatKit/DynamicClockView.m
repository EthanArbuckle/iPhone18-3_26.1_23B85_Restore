@interface DynamicClockView
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)didMoveToWindow;
- (void)layoutSubviews;
@end

@implementation DynamicClockView

- (void)layoutSubviews
{
  v2 = self;
  sub_190911974();
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
  sub_190910470(width, height);
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)didMoveToWindow
{
  v2 = self;
  sub_190911B44();
}

@end