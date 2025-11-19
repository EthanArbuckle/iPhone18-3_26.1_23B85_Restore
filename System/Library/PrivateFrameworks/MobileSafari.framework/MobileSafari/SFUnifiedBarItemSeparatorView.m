@interface SFUnifiedBarItemSeparatorView
- (NSString)backdropGroupName;
- (SFUnifiedBarItemSeparatorView)initWithFrame:(CGRect)a3;
- (void)_setContinuousCornerRadius:(double)a3;
- (void)_setCornerRadius:(double)a3;
- (void)setBackdropGroupName:(id)a3;
@end

@implementation SFUnifiedBarItemSeparatorView

- (SFUnifiedBarItemSeparatorView)initWithFrame:(CGRect)a3
{
  v12.receiver = self;
  v12.super_class = SFUnifiedBarItemSeparatorView;
  v3 = [(SFUnifiedBarItemSeparatorView *)&v12 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69DD838]);
    [(SFUnifiedBarItemSeparatorView *)v3 bounds];
    v5 = [v4 initWithFrame:?];
    backdropView = v3->_backdropView;
    v3->_backdropView = v5;

    [(_UIVisualEffectBackdropView *)v3->_backdropView setAutoresizingMask:18];
    v7 = objc_alloc(MEMORY[0x1E69DD250]);
    [(SFUnifiedBarItemSeparatorView *)v3 bounds];
    v8 = [v7 initWithFrame:?];
    fillView = v3->_fillView;
    v3->_fillView = v8;

    [(UIView *)v3->_fillView setAutoresizingMask:18];
    [(SFUnifiedBarItemSeparatorView *)v3 addSubview:v3->_backdropView];
    [(SFUnifiedBarItemSeparatorView *)v3 addSubview:v3->_fillView];
    v10 = v3;
  }

  return v3;
}

- (void)_setContinuousCornerRadius:(double)a3
{
  v5.receiver = self;
  v5.super_class = SFUnifiedBarItemSeparatorView;
  [(SFUnifiedBarItemSeparatorView *)&v5 _setContinuousCornerRadius:?];
  [(UIView *)self->_fillView _setContinuousCornerRadius:a3];
}

- (void)_setCornerRadius:(double)a3
{
  v5.receiver = self;
  v5.super_class = SFUnifiedBarItemSeparatorView;
  [(SFUnifiedBarItemSeparatorView *)&v5 _setCornerRadius:?];
  [(UIView *)self->_fillView _setCornerRadius:a3];
}

- (NSString)backdropGroupName
{
  v2 = [(_UIVisualEffectBackdropView *)self->_backdropView captureGroup];
  v3 = [v2 groupName];

  return v3;
}

- (void)setBackdropGroupName:(id)a3
{
  backdropView = self->_backdropView;
  v4 = a3;
  v5 = [(_UIVisualEffectBackdropView *)backdropView captureGroup];
  [v5 setGroupName:v4];
}

@end