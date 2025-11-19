@interface UIKitScrollableTextView
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)layoutSubviews;
- (void)safeAreaInsetsDidChange;
- (void)willMoveToWindow:(id)a3;
@end

@implementation UIKitScrollableTextView

- (void)willMoveToWindow:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_216AE5D1C(a3);
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
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
  v2 = self;
  sub_216AE5E94();
}

- (void)safeAreaInsetsDidChange
{
  v2 = self;
  sub_216AE5F58();
}

@end