@interface CPSHighlightablePlatterView
- (void)setHighlighted:(BOOL)highlighted;
@end

@implementation CPSHighlightablePlatterView

- (void)setHighlighted:(BOOL)highlighted
{
  v4 = MEMORY[0x277D75348];
  if (highlighted)
  {
    clearColor = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v4 colorNamed:@"bannerHighlightColor" inBundle:? compatibleWithTraitCollection:?];
    [(CPSHighlightablePlatterView *)self setBackgroundColor:v5];
  }

  else
  {
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(CPSHighlightablePlatterView *)self setBackgroundColor:?];
  }
}

@end