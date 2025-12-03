@interface CKFullscreenEffectDecorationView
- (CKFullscreenEffectView)effectView;
- (void)prepareForReuse;
- (void)setupForEffectView:(id)view;
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

- (void)setupForEffectView:(id)view
{
  viewCopy = view;
  [(CKFullscreenEffectDecorationView *)self bounds];
  [viewCopy setFrame:?];
  [(CKFullscreenEffectDecorationView *)self addSubview:viewCopy];
  [(CKFullscreenEffectDecorationView *)self setEffectView:viewCopy];
}

- (void)tearDownEffectView
{
  effectView = [(CKFullscreenEffectDecorationView *)self effectView];
  [effectView stopAnimation];

  effectView2 = [(CKFullscreenEffectDecorationView *)self effectView];
  [effectView2 removeFromSuperview];
}

- (CKFullscreenEffectView)effectView
{
  WeakRetained = objc_loadWeakRetained(&self->_effectView);

  return WeakRetained;
}

@end