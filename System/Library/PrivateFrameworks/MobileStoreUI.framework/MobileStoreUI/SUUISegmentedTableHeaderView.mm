@interface SUUISegmentedTableHeaderView
- (CGSize)sizeThatFits:(CGSize)result;
- (SUUISegmentedTableHeaderView)initWithFrame:(CGRect)frame;
- (id)_borderView;
- (void)layoutSubviews;
- (void)setHidesBorderView:(BOOL)view;
- (void)setSegmentedControl:(id)control;
@end

@implementation SUUISegmentedTableHeaderView

- (SUUISegmentedTableHeaderView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = SUUISegmentedTableHeaderView;
  v3 = [(SUUISegmentedTableHeaderView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x277D75DE8]) initWithPrivateStyle:2010];
    backdropView = v3->_backdropView;
    v3->_backdropView = v4;

    [(SUUISegmentedTableHeaderView *)v3 addSubview:v3->_backdropView];
  }

  return v3;
}

- (void)setHidesBorderView:(BOOL)view
{
  viewCopy = view;
  _borderView = [(SUUISegmentedTableHeaderView *)self _borderView];
  [_borderView setHidden:viewCopy];
}

- (void)setSegmentedControl:(id)control
{
  controlCopy = control;
  segmentedControl = self->_segmentedControl;
  v7 = controlCopy;
  if (segmentedControl != controlCopy)
  {
    [(UIView *)segmentedControl removeFromSuperview];
    objc_storeStrong(&self->_segmentedControl, control);
    if (self->_segmentedControl)
    {
      [(SUUISegmentedTableHeaderView *)self addSubview:?];
    }
  }
}

- (void)layoutSubviews
{
  [(SUUISegmentedTableHeaderView *)self bounds];
  v4 = v3;
  v6 = v5;
  [(_UIBackdropView *)self->_backdropView setFrame:?];
  segmentedControl = self->_segmentedControl;
  if (segmentedControl)
  {
    [(UIView *)segmentedControl frame];
    v9 = (v6 - v8) * 0.5;
    [(UIView *)self->_segmentedControl setFrame:15.0, floorf(v9), v4 + -15.0 + -15.0];
  }

  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v12 = 1.0 / v11;

  _borderView = [(SUUISegmentedTableHeaderView *)self _borderView];
  [_borderView setFrame:{0.0, v6 - v12, v4, v12}];
}

- (CGSize)sizeThatFits:(CGSize)result
{
  v3 = 44.0;
  result.height = v3;
  return result;
}

- (id)_borderView
{
  borderView = self->_borderView;
  if (!borderView)
  {
    v4 = objc_alloc_init(MEMORY[0x277D75D18]);
    v5 = self->_borderView;
    self->_borderView = v4;

    v6 = self->_borderView;
    v7 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.2];
    [(UIView *)v6 setBackgroundColor:v7];

    [(SUUISegmentedTableHeaderView *)self addSubview:self->_borderView];
    borderView = self->_borderView;
  }

  return borderView;
}

@end