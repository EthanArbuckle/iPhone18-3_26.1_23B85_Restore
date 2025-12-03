@interface LoadingIndicatorAccessoryView
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)didMoveToSuperview;
- (void)layoutSubviews;
@end

@implementation LoadingIndicatorAccessoryView

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  selfCopy = self;
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
  selfCopy = self;
  sub_24E0EFBC0();
}

- (void)didMoveToSuperview
{
  selfCopy = self;
  sub_24E0EFD7C();
}

@end