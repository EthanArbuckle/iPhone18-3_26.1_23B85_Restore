@interface SFUnifiedTabBarSectionBackgroundView
- (SFUnifiedTabBarSectionBackgroundView)initWithFrame:(CGRect)frame;
@end

@implementation SFUnifiedTabBarSectionBackgroundView

- (SFUnifiedTabBarSectionBackgroundView)initWithFrame:(CGRect)frame
{
  v16.receiver = self;
  v16.super_class = SFUnifiedTabBarSectionBackgroundView;
  v3 = [(SFUnifiedBarItemView *)&v16 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
    captureGroup = [(_UIVisualEffectBackdropView *)v4->_glassCaptureView captureGroup];
    [captureGroup setGroupName:v10];

    layer = [(_UIVisualEffectBackdropView *)v4->_glassCaptureView layer];
    [layer setZPosition:-1.79769313e308];

    [(_UIVisualEffectBackdropView *)v4->_glassCaptureView setRenderMode:1];
    contentView = [(SFUnifiedBarItemView *)v4 contentView];
    [contentView addSubview:v4->_glassCaptureView];

    v14 = v4;
  }

  return v4;
}

@end