@interface GradientColorSlider
- (void)layoutSubviews;
- (void)leftColorDidPanWithGr:(id)gr;
- (void)rightColorDidPanWithGr:(id)gr;
@end

@implementation GradientColorSlider

- (void)layoutSubviews
{
  selfCopy = self;
  sub_249FEE77C();
}

- (void)leftColorDidPanWithGr:(id)gr
{
  grCopy = gr;
  selfCopy = self;
  sub_249FEE8D4(grCopy);
}

- (void)rightColorDidPanWithGr:(id)gr
{
  grCopy = gr;
  selfCopy = self;
  sub_249FEEB98(grCopy);
}

@end