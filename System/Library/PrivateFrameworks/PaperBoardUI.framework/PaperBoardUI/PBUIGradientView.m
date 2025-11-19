@interface PBUIGradientView
- (void)setGradient:(id)a3;
@end

@implementation PBUIGradientView

- (void)setGradient:(id)a3
{
  v5 = a3;
  if (self->_gradient != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_gradient, a3);
    v6 = [(PBUIGradientView *)self layer];
    [(PBUIWallpaperGradient *)v7 configureLayer:v6];

    v5 = v7;
  }
}

@end