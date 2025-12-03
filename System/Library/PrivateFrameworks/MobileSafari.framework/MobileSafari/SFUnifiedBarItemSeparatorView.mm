@interface SFUnifiedBarItemSeparatorView
- (NSString)backdropGroupName;
- (SFUnifiedBarItemSeparatorView)initWithFrame:(CGRect)frame;
- (void)_setContinuousCornerRadius:(double)radius;
- (void)_setCornerRadius:(double)radius;
- (void)setBackdropGroupName:(id)name;
@end

@implementation SFUnifiedBarItemSeparatorView

- (SFUnifiedBarItemSeparatorView)initWithFrame:(CGRect)frame
{
  v12.receiver = self;
  v12.super_class = SFUnifiedBarItemSeparatorView;
  v3 = [(SFUnifiedBarItemSeparatorView *)&v12 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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

- (void)_setContinuousCornerRadius:(double)radius
{
  v5.receiver = self;
  v5.super_class = SFUnifiedBarItemSeparatorView;
  [(SFUnifiedBarItemSeparatorView *)&v5 _setContinuousCornerRadius:?];
  [(UIView *)self->_fillView _setContinuousCornerRadius:radius];
}

- (void)_setCornerRadius:(double)radius
{
  v5.receiver = self;
  v5.super_class = SFUnifiedBarItemSeparatorView;
  [(SFUnifiedBarItemSeparatorView *)&v5 _setCornerRadius:?];
  [(UIView *)self->_fillView _setCornerRadius:radius];
}

- (NSString)backdropGroupName
{
  captureGroup = [(_UIVisualEffectBackdropView *)self->_backdropView captureGroup];
  groupName = [captureGroup groupName];

  return groupName;
}

- (void)setBackdropGroupName:(id)name
{
  backdropView = self->_backdropView;
  nameCopy = name;
  captureGroup = [(_UIVisualEffectBackdropView *)backdropView captureGroup];
  [captureGroup setGroupName:nameCopy];
}

@end