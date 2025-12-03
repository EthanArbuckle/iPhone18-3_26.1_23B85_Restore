@interface SUUIScrollingSegmentedControllerNavigationBarTitleView
+ (UIEdgeInsets)defaultLayoutMargins;
- (CGSize)sizeThatFits:(CGSize)fits;
- (SUUIScrollingSegmentedControllerNavigationBarTitleView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setLayoutStyle:(int64_t)style;
- (void)setSegmentedControl:(id)control;
@end

@implementation SUUIScrollingSegmentedControllerNavigationBarTitleView

- (SUUIScrollingSegmentedControllerNavigationBarTitleView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = SUUIScrollingSegmentedControllerNavigationBarTitleView;
  v3 = [(SUUIScrollingSegmentedControllerNavigationBarTitleView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_segmentedControlMinimumHeight = 29.0;
    [objc_opt_class() defaultLayoutMargins];
    [(SUUIScrollingSegmentedControllerNavigationBarTitleView *)v4 setLayoutMargins:?];
  }

  return v4;
}

- (void)layoutSubviews
{
  v28.receiver = self;
  v28.super_class = SUUIScrollingSegmentedControllerNavigationBarTitleView;
  [(SUUIScrollingSegmentedControllerNavigationBarTitleView *)&v28 layoutSubviews];
  if (self->_segmentedControl)
  {
    traitCollection = [(SUUIScrollingSegmentedControllerNavigationBarTitleView *)self traitCollection];
    [traitCollection displayScale];
    v5 = v4;

    if (v5 <= 0.00000011920929)
    {
      mainScreen = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen scale];
      v5 = v7;
    }

    [(SUUIScrollingSegmentedControllerNavigationBarTitleView *)self bounds];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    [(SUUIScrollingSegmentedControllerNavigationBarTitleView *)self layoutMargins];
    v17 = v16;
    v19 = v9 + v18;
    v21 = v11 + v20;
    v23 = v13 - (v18 + v22);
    v24 = v15 - (v20 + v17);
    if (self->_layoutStyle != 1)
    {
      [(SUUIInteractiveSegmentedControl *)self->_segmentedControl sizeThatFits:v23, v24];
      v27 = v5;
      UIRectCenteredXInRectScale();
      v19 = v25;
      v21 = v26;
    }

    [(SUUIInteractiveSegmentedControl *)self->_segmentedControl setFrame:v19, v21, v23, v24, *&v27];
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(SUUIInteractiveSegmentedControl *)self->_segmentedControl sizeThatFits:1.79769313e308, self->_segmentedControlMinimumHeight];
  v5 = v4;
  v7 = v6;
  [(SUUIScrollingSegmentedControllerNavigationBarTitleView *)self layoutMargins];
  v10 = v5 + v8 + v9;
  v13 = v7 + v11 + v12;
  v14 = v10;
  result.height = v13;
  result.width = v14;
  return result;
}

+ (UIEdgeInsets)defaultLayoutMargins
{
  v2 = 4.0;
  v3 = 8.0;
  v4 = 4.0;
  v5 = 8.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (void)setSegmentedControl:(id)control
{
  controlCopy = control;
  segmentedControl = self->_segmentedControl;
  if (segmentedControl != controlCopy)
  {
    v8 = controlCopy;
    superview = [(SUUIInteractiveSegmentedControl *)segmentedControl superview];

    if (superview == self)
    {
      [(SUUIInteractiveSegmentedControl *)self->_segmentedControl removeFromSuperview];
    }

    objc_storeStrong(&self->_segmentedControl, control);
    segmentedControl = [(SUUIScrollingSegmentedControllerNavigationBarTitleView *)self addSubview:self->_segmentedControl];
    controlCopy = v8;
  }

  MEMORY[0x2821F96F8](segmentedControl, controlCopy);
}

- (void)setLayoutStyle:(int64_t)style
{
  if (self->_layoutStyle != style)
  {
    self->_layoutStyle = style;
    [(SUUIScrollingSegmentedControllerNavigationBarTitleView *)self setNeedsLayout];
  }
}

@end