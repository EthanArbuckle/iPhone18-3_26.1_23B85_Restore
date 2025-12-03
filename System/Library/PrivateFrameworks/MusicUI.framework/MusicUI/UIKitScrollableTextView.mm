@interface UIKitScrollableTextView
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)layoutSubviews;
- (void)safeAreaInsetsDidChange;
- (void)willMoveToWindow:(id)window;
@end

@implementation UIKitScrollableTextView

- (void)willMoveToWindow:(id)window
{
  windowCopy = window;
  selfCopy = self;
  sub_216AE5D1C(window);
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  v6 = sub_216AE5DE8(width, height);
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_216AE5E94();
}

- (void)safeAreaInsetsDidChange
{
  selfCopy = self;
  sub_216AE5F58();
}

@end