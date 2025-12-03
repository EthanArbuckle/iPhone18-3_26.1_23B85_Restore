@interface _HUQuickControlSingleControlHostView
- (HULayoutAnchorProviding)preferredFrameLayoutGuide;
- (_HUQuickControlSingleControlHostView)initWithContentView:(id)view;
- (void)_setupConstraintSet;
- (void)didMoveToWindow;
- (void)setPreferredFrameLayoutGuide:(id)guide;
- (void)updateConstraints;
@end

@implementation _HUQuickControlSingleControlHostView

- (_HUQuickControlSingleControlHostView)initWithContentView:(id)view
{
  viewCopy = view;
  v9.receiver = self;
  v9.super_class = _HUQuickControlSingleControlHostView;
  v6 = [(_HUQuickControlSingleControlHostView *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contentView, view);
    [(UIView *)v7->_contentView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(_HUQuickControlSingleControlHostView *)v7 addSubview:viewCopy];
    [(_HUQuickControlSingleControlHostView *)v7 _setupConstraintSet];
  }

  return v7;
}

- (HULayoutAnchorProviding)preferredFrameLayoutGuide
{
  if (self->_preferredFrameLayoutGuide)
  {
    self = self->_preferredFrameLayoutGuide;
  }

  return self;
}

- (void)setPreferredFrameLayoutGuide:(id)guide
{
  guideCopy = guide;
  preferredFrameLayoutGuide = [(_HUQuickControlSingleControlHostView *)self preferredFrameLayoutGuide];
  v6 = [preferredFrameLayoutGuide isEqual:guideCopy];

  if ((v6 & 1) == 0)
  {
    objc_storeStrong(&self->_preferredFrameLayoutGuide, guide);
    constraintSet = [(_HUQuickControlSingleControlHostView *)self constraintSet];
    [constraintSet invalidate];
  }
}

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = _HUQuickControlSingleControlHostView;
  [(_HUQuickControlSingleControlHostView *)&v4 didMoveToWindow];
  constraintSet = [(_HUQuickControlSingleControlHostView *)self constraintSet];
  [constraintSet invalidate];
}

- (void)updateConstraints
{
  v4.receiver = self;
  v4.super_class = _HUQuickControlSingleControlHostView;
  [(_HUQuickControlSingleControlHostView *)&v4 updateConstraints];
  constraintSet = [(_HUQuickControlSingleControlHostView *)self constraintSet];
  [constraintSet activateIfNeeded];
}

- (void)_setupConstraintSet
{
  v3 = [objc_alloc(MEMORY[0x277D2C958]) initWithOwningView:self constraintBuilder:&__block_literal_global_250];
  constraintSet = self->_constraintSet;
  self->_constraintSet = v3;
}

@end