@interface SFUnifiedBarItemGroupContainerView
- (SFUnifiedBarItemGroupContainerView)initWithFrame:(CGRect)frame;
@end

@implementation SFUnifiedBarItemGroupContainerView

- (SFUnifiedBarItemGroupContainerView)initWithFrame:(CGRect)frame
{
  v10.receiver = self;
  v10.super_class = SFUnifiedBarItemGroupContainerView;
  v3 = [(SFUnifiedBarItemGroupContainerView *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(UIView *)v3 safari_setFlexibleGlassBackgroundEnabled:1];
    v5 = objc_alloc(MEMORY[0x1E69DD250]);
    [(SFUnifiedBarItemGroupContainerView *)v4 bounds];
    v6 = [v5 initWithFrame:?];
    contentView = v4->_contentView;
    v4->_contentView = v6;

    [(UIView *)v4->_contentView setAutoresizingMask:18];
    [(SFUnifiedBarItemGroupContainerView *)v4 addSubview:v4->_contentView];
    v8 = v4;
  }

  return v4;
}

@end