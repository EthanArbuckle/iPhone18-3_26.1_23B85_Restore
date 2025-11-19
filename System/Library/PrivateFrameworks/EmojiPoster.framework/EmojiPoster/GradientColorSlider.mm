@interface GradientColorSlider
- (void)layoutSubviews;
- (void)leftColorDidPanWithGr:(id)a3;
- (void)rightColorDidPanWithGr:(id)a3;
@end

@implementation GradientColorSlider

- (void)layoutSubviews
{
  v2 = self;
  sub_249FEE77C();
}

- (void)leftColorDidPanWithGr:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_249FEE8D4(v4);
}

- (void)rightColorDidPanWithGr:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_249FEEB98(v4);
}

@end