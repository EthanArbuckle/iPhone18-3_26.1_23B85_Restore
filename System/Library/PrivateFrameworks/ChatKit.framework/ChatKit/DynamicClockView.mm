@interface DynamicClockView
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)didMoveToWindow;
- (void)layoutSubviews;
@end

@implementation DynamicClockView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_190911974();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
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
  selfCopy = self;
  sub_190911B44();
}

@end