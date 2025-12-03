@interface PBUIGradientView
- (void)setGradient:(id)gradient;
@end

@implementation PBUIGradientView

- (void)setGradient:(id)gradient
{
  gradientCopy = gradient;
  if (self->_gradient != gradientCopy)
  {
    v7 = gradientCopy;
    objc_storeStrong(&self->_gradient, gradient);
    layer = [(PBUIGradientView *)self layer];
    [(PBUIWallpaperGradient *)v7 configureLayer:layer];

    gradientCopy = v7;
  }
}

@end