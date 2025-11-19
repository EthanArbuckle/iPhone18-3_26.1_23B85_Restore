@interface ProgressLockupView
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)layoutSubviews;
@end

@implementation ProgressLockupView

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = self;
  sub_24E169BB4();
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
  sub_24E169CC0();
}

@end