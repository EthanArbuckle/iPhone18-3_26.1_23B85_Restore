@interface CPSHighlightablePlatterView
- (void)setHighlighted:(BOOL)a3;
@end

@implementation CPSHighlightablePlatterView

- (void)setHighlighted:(BOOL)a3
{
  v4 = MEMORY[0x277D75348];
  if (a3)
  {
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v4 colorNamed:@"bannerHighlightColor" inBundle:? compatibleWithTraitCollection:?];
    [(CPSHighlightablePlatterView *)self setBackgroundColor:v5];
  }

  else
  {
    v6 = [MEMORY[0x277D75348] clearColor];
    [(CPSHighlightablePlatterView *)self setBackgroundColor:?];
  }
}

@end