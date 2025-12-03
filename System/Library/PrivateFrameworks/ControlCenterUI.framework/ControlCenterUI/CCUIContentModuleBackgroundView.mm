@interface CCUIContentModuleBackgroundView
- (CCUIContentModuleBackgroundView)initWithFrame:(CGRect)frame;
- (void)setUserInteractionEnabled:(BOOL)enabled;
@end

@implementation CCUIContentModuleBackgroundView

- (CCUIContentModuleBackgroundView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = CCUIContentModuleBackgroundView;
  v3 = [(CCUIContentModuleBackgroundView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(CCUIContentModuleBackgroundView *)v3 setBackgroundColor:clearColor];

    [(CCUIContentModuleBackgroundView *)v3 setAlpha:0.0];
    layer = [(CCUIContentModuleBackgroundView *)v3 layer];
    [layer setHitTestsAsOpaque:1];
  }

  return v3;
}

- (void)setUserInteractionEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v6.receiver = self;
  v6.super_class = CCUIContentModuleBackgroundView;
  [(CCUIContentModuleBackgroundView *)&v6 setUserInteractionEnabled:?];
  layer = [(CCUIContentModuleBackgroundView *)self layer];
  [layer setHitTestsAsOpaque:!enabledCopy];
}

@end