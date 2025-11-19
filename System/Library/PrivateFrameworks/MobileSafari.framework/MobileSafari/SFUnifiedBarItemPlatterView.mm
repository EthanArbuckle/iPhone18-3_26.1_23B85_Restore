@interface SFUnifiedBarItemPlatterView
- (SFUnifiedBarItemPlatterView)initWithFrame:(CGRect)a3;
- (void)_setContinuousCornerRadius:(double)a3;
- (void)_setCornerRadius:(double)a3;
@end

@implementation SFUnifiedBarItemPlatterView

- (SFUnifiedBarItemPlatterView)initWithFrame:(CGRect)a3
{
  v9.receiver = self;
  v9.super_class = SFUnifiedBarItemPlatterView;
  v3 = [(SFUnifiedBarItemPlatterView *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

- (void)_setContinuousCornerRadius:(double)a3
{
  v5.receiver = self;
  v5.super_class = SFUnifiedBarItemPlatterView;
  [(SFUnifiedBarItemPlatterView *)&v5 _setContinuousCornerRadius:?];
  [(UIVisualEffectView *)self->_effectView _setContinuousCornerRadius:a3];
}

- (void)_setCornerRadius:(double)a3
{
  v5.receiver = self;
  v5.super_class = SFUnifiedBarItemPlatterView;
  [(SFUnifiedBarItemPlatterView *)&v5 _setCornerRadius:?];
  [(UIVisualEffectView *)self->_effectView _setCornerRadius:a3];
}

@end