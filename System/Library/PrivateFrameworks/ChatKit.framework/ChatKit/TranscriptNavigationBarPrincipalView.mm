@interface TranscriptNavigationBarPrincipalView
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)handleTap;
- (void)layoutSubviews;
@end

@implementation TranscriptNavigationBarPrincipalView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_190C2434C();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  sub_190C2465C(width, height);
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)handleTap
{
  selfCopy = self;
  sub_190C24AB4();
}

@end