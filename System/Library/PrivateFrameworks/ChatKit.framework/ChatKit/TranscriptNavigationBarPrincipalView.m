@interface TranscriptNavigationBarPrincipalView
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)handleTap;
- (void)layoutSubviews;
@end

@implementation TranscriptNavigationBarPrincipalView

- (void)layoutSubviews
{
  v2 = self;
  sub_190C2434C();
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
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
  v2 = self;
  sub_190C24AB4();
}

@end