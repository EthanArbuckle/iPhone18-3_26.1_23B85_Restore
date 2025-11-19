@interface LoadingIndicatorAccessoryView
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)didMoveToSuperview;
- (void)layoutSubviews;
@end

@implementation LoadingIndicatorAccessoryView

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v4 = self;
  v5 = sub_24E0EFAE4(width);
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
  sub_24E0EFBC0();
}

- (void)didMoveToSuperview
{
  v2 = self;
  sub_24E0EFD7C();
}

@end