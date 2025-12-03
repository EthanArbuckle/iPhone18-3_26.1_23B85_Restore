@interface HUQuickControlAuxiliaryHostView
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (void)setAuxiliaryView:(id)view;
- (void)updateConstraints;
@end

@implementation HUQuickControlAuxiliaryHostView

- (void)setAuxiliaryView:(id)view
{
  viewCopy = view;
  auxiliaryView = self->_auxiliaryView;
  if (auxiliaryView != viewCopy)
  {
    v7 = viewCopy;
    [(HUQuickControlAuxiliaryView *)auxiliaryView removeFromSuperview];
    objc_storeStrong(&self->_auxiliaryView, view);
    [(HUQuickControlAuxiliaryView *)self->_auxiliaryView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(HUQuickControlAuxiliaryHostView *)self addSubview:self->_auxiliaryView];
    [(HUQuickControlAuxiliaryHostView *)self setNeedsUpdateConstraints];
    viewCopy = v7;
  }
}

- (void)updateConstraints
{
  auxiliaryView = [(HUQuickControlAuxiliaryHostView *)self auxiliaryView];

  if (auxiliaryView)
  {
    v4 = objc_opt_new();
    auxiliaryView2 = [(HUQuickControlAuxiliaryHostView *)self auxiliaryView];
    centerXAnchor = [auxiliaryView2 centerXAnchor];
    centerXAnchor2 = [(HUQuickControlAuxiliaryHostView *)self centerXAnchor];
    v8 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    [v4 addObject:v8];

    auxiliaryView3 = [(HUQuickControlAuxiliaryHostView *)self auxiliaryView];
    centerYAnchor = [auxiliaryView3 centerYAnchor];
    centerYAnchor2 = [(HUQuickControlAuxiliaryHostView *)self centerYAnchor];
    v12 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [v4 addObject:v12];

    auxiliaryView4 = [(HUQuickControlAuxiliaryHostView *)self auxiliaryView];
    widthAnchor = [auxiliaryView4 widthAnchor];
    widthAnchor2 = [(HUQuickControlAuxiliaryHostView *)self widthAnchor];
    LODWORD(v16) = 1132134400;
    v17 = [widthAnchor hu_constraintsLessThanOrEqualToAnchor:widthAnchor2 equalityPriority:v16];
    [v4 addObjectsFromArray:v17];

    auxiliaryView5 = [(HUQuickControlAuxiliaryHostView *)self auxiliaryView];
    heightAnchor = [auxiliaryView5 heightAnchor];
    heightAnchor2 = [(HUQuickControlAuxiliaryHostView *)self heightAnchor];
    LODWORD(v21) = 1132134400;
    v22 = [heightAnchor hu_constraintsLessThanOrEqualToAnchor:heightAnchor2 equalityPriority:v21];
    [v4 addObjectsFromArray:v22];

    [MEMORY[0x277CCAAD0] activateConstraints:v4];
  }

  v23.receiver = self;
  v23.super_class = HUQuickControlAuxiliaryHostView;
  [(HUQuickControlAuxiliaryHostView *)&v23 updateConstraints];
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  eventCopy = event;
  auxiliaryView = [(HUQuickControlAuxiliaryHostView *)self auxiliaryView];
  auxiliaryView2 = [(HUQuickControlAuxiliaryHostView *)self auxiliaryView];
  [(HUQuickControlAuxiliaryHostView *)self convertPoint:auxiliaryView2 toView:x, y];
  LOBYTE(self) = [auxiliaryView pointInside:eventCopy withEvent:?];

  return self;
}

@end