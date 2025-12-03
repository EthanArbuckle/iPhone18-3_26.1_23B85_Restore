@interface SFUnifiedBarItemPlatterView
- (SFUnifiedBarItemPlatterView)initWithFrame:(CGRect)frame;
- (void)_setContinuousCornerRadius:(double)radius;
- (void)_setCornerRadius:(double)radius;
@end

@implementation SFUnifiedBarItemPlatterView

- (SFUnifiedBarItemPlatterView)initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = SFUnifiedBarItemPlatterView;
  v3 = [(SFUnifiedBarItemPlatterView *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69DD298]);
    [(SFUnifiedBarItemPlatterView *)v3 bounds];
    v5 = [v4 initWithFrame:?];
    effectView = v3->_effectView;
    v3->_effectView = v5;

    [(UIVisualEffectView *)v3->_effectView setAutoresizingMask:18];
    [(SFUnifiedBarItemPlatterView *)v3 addSubview:v3->_effectView];
    v7 = v3;
  }

  return v3;
}

- (void)_setContinuousCornerRadius:(double)radius
{
  v5.receiver = self;
  v5.super_class = SFUnifiedBarItemPlatterView;
  [(SFUnifiedBarItemPlatterView *)&v5 _setContinuousCornerRadius:?];
  [(UIVisualEffectView *)self->_effectView _setContinuousCornerRadius:radius];
}

- (void)_setCornerRadius:(double)radius
{
  v5.receiver = self;
  v5.super_class = SFUnifiedBarItemPlatterView;
  [(SFUnifiedBarItemPlatterView *)&v5 _setCornerRadius:?];
  [(UIVisualEffectView *)self->_effectView _setCornerRadius:radius];
}

@end