@interface _HUQuickControlSingleControlHostView
- (HULayoutAnchorProviding)preferredFrameLayoutGuide;
- (_HUQuickControlSingleControlHostView)initWithContentView:(id)a3;
- (void)_setupConstraintSet;
- (void)didMoveToWindow;
- (void)setPreferredFrameLayoutGuide:(id)a3;
- (void)updateConstraints;
@end

@implementation _HUQuickControlSingleControlHostView

- (_HUQuickControlSingleControlHostView)initWithContentView:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _HUQuickControlSingleControlHostView;
  v6 = [(_HUQuickControlSingleControlHostView *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contentView, a3);
    [(UIView *)v7->_contentView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(_HUQuickControlSingleControlHostView *)v7 addSubview:v5];
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

- (void)setPreferredFrameLayoutGuide:(id)a3
{
  v8 = a3;
  v5 = [(_HUQuickControlSingleControlHostView *)self preferredFrameLayoutGuide];
  v6 = [v5 isEqual:v8];

  if ((v6 & 1) == 0)
  {
    objc_storeStrong(&self->_preferredFrameLayoutGuide, a3);
    v7 = [(_HUQuickControlSingleControlHostView *)self constraintSet];
    [v7 invalidate];
  }
}

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = _HUQuickControlSingleControlHostView;
  [(_HUQuickControlSingleControlHostView *)&v4 didMoveToWindow];
  v3 = [(_HUQuickControlSingleControlHostView *)self constraintSet];
  [v3 invalidate];
}

- (void)updateConstraints
{
  v4.receiver = self;
  v4.super_class = _HUQuickControlSingleControlHostView;
  [(_HUQuickControlSingleControlHostView *)&v4 updateConstraints];
  v3 = [(_HUQuickControlSingleControlHostView *)self constraintSet];
  [v3 activateIfNeeded];
}

- (void)_setupConstraintSet
{
  v3 = [objc_alloc(MEMORY[0x277D2C958]) initWithOwningView:self constraintBuilder:&__block_literal_global_250];
  constraintSet = self->_constraintSet;
  self->_constraintSet = v3;
}

@end