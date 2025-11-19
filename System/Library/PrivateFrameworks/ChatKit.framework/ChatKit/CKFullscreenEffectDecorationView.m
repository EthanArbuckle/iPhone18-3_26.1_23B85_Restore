@interface CKFullscreenEffectDecorationView
- (CKFullscreenEffectView)effectView;
- (void)prepareForReuse;
- (void)setupForEffectView:(id)a3;
- (void)tearDownEffectView;
@end

@implementation CKFullscreenEffectDecorationView

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = CKFullscreenEffectDecorationView;
  [(CKFullscreenEffectDecorationView *)&v3 prepareForReuse];
  [(CKFullscreenEffectDecorationView *)self tearDownEffectView];
}

- (void)setupForEffectView:(id)a3
{
  v4 = a3;
  [(CKFullscreenEffectDecorationView *)self bounds];
  [v4 setFrame:?];
  [(CKFullscreenEffectDecorationView *)self addSubview:v4];
  [(CKFullscreenEffectDecorationView *)self setEffectView:v4];
}

- (void)tearDownEffectView
{
  v3 = [(CKFullscreenEffectDecorationView *)self effectView];
  [v3 stopAnimation];

  v4 = [(CKFullscreenEffectDecorationView *)self effectView];
  [v4 removeFromSuperview];
}

- (CKFullscreenEffectView)effectView
{
  WeakRetained = objc_loadWeakRetained(&self->_effectView);

  return WeakRetained;
}

@end