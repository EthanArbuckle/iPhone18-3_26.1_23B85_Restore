@interface SFUnifiedTabBarSectionBackgroundView
- (SFUnifiedTabBarSectionBackgroundView)initWithFrame:(CGRect)a3;
@end

@implementation SFUnifiedTabBarSectionBackgroundView

- (SFUnifiedTabBarSectionBackgroundView)initWithFrame:(CGRect)a3
{
  v16.receiver = self;
  v16.super_class = SFUnifiedTabBarSectionBackgroundView;
  v3 = [(SFUnifiedBarItemView *)&v16 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(SFUnifiedBarItemView *)v3 setPlatterStyle:13];
    v5 = _SFBackdropGroupNameForOwner(v4);
    glassCaptureGroupName = v4->_glassCaptureGroupName;
    v4->_glassCaptureGroupName = v5;

    v7 = objc_alloc(MEMORY[0x1E69DD838]);
    [(SFUnifiedTabBarSectionBackgroundView *)v4 bounds];
    v8 = [v7 initWithFrame:?];
    glassCaptureView = v4->_glassCaptureView;
    v4->_glassCaptureView = v8;

    [(_UIVisualEffectBackdropView *)v4->_glassCaptureView setAutoresizingMask:18];
    v10 = v4->_glassCaptureGroupName;
    v11 = [(_UIVisualEffectBackdropView *)v4->_glassCaptureView captureGroup];
    [v11 setGroupName:v10];

    v12 = [(_UIVisualEffectBackdropView *)v4->_glassCaptureView layer];
    [v12 setZPosition:-1.79769313e308];

    [(_UIVisualEffectBackdropView *)v4->_glassCaptureView setRenderMode:1];
    v13 = [(SFUnifiedBarItemView *)v4 contentView];
    [v13 addSubview:v4->_glassCaptureView];

    v14 = v4;
  }

  return v4;
}

@end