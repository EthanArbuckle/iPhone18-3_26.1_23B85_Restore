@interface SessionContentView
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)layoutSubviews;
- (void)tapAction;
@end

@implementation SessionContentView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1A2250F80();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  selfCopy = self;
  v5 = sub_1A2251CBC(width);
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)tapAction
{
  v2 = *((*MEMORY[0x1E69E7D40] & self->super.super.super.isa) + 0x110);
  selfCopy = self;
  v3 = v2();
  if (v3)
  {
    v4 = v3;
    v3();

    sub_1A210F5C0(v4);
  }

  else
  {
  }
}

@end