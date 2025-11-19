@interface HUQuickControlAuxiliaryHostView
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (void)setAuxiliaryView:(id)a3;
- (void)updateConstraints;
@end

@implementation HUQuickControlAuxiliaryHostView

- (void)setAuxiliaryView:(id)a3
{
  v5 = a3;
  auxiliaryView = self->_auxiliaryView;
  if (auxiliaryView != v5)
  {
    v7 = v5;
    [(HUQuickControlAuxiliaryView *)auxiliaryView removeFromSuperview];
    objc_storeStrong(&self->_auxiliaryView, a3);
    [(HUQuickControlAuxiliaryView *)self->_auxiliaryView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(HUQuickControlAuxiliaryHostView *)self addSubview:self->_auxiliaryView];
    [(HUQuickControlAuxiliaryHostView *)self setNeedsUpdateConstraints];
    v5 = v7;
  }
}

- (void)updateConstraints
{
  v3 = [(HUQuickControlAuxiliaryHostView *)self auxiliaryView];

  if (v3)
  {
    v4 = objc_opt_new();
    v5 = [(HUQuickControlAuxiliaryHostView *)self auxiliaryView];
    v6 = [v5 centerXAnchor];
    v7 = [(HUQuickControlAuxiliaryHostView *)self centerXAnchor];
    v8 = [v6 constraintEqualToAnchor:v7];
    [v4 addObject:v8];

    v9 = [(HUQuickControlAuxiliaryHostView *)self auxiliaryView];
    v10 = [v9 centerYAnchor];
    v11 = [(HUQuickControlAuxiliaryHostView *)self centerYAnchor];
    v12 = [v10 constraintEqualToAnchor:v11];
    [v4 addObject:v12];

    v13 = [(HUQuickControlAuxiliaryHostView *)self auxiliaryView];
    v14 = [v13 widthAnchor];
    v15 = [(HUQuickControlAuxiliaryHostView *)self widthAnchor];
    LODWORD(v16) = 1132134400;
    v17 = [v14 hu_constraintsLessThanOrEqualToAnchor:v15 equalityPriority:v16];
    [v4 addObjectsFromArray:v17];

    v18 = [(HUQuickControlAuxiliaryHostView *)self auxiliaryView];
    v19 = [v18 heightAnchor];
    v20 = [(HUQuickControlAuxiliaryHostView *)self heightAnchor];
    LODWORD(v21) = 1132134400;
    v22 = [v19 hu_constraintsLessThanOrEqualToAnchor:v20 equalityPriority:v21];
    [v4 addObjectsFromArray:v22];

    [MEMORY[0x277CCAAD0] activateConstraints:v4];
  }

  v23.receiver = self;
  v23.super_class = HUQuickControlAuxiliaryHostView;
  [(HUQuickControlAuxiliaryHostView *)&v23 updateConstraints];
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(HUQuickControlAuxiliaryHostView *)self auxiliaryView];
  v9 = [(HUQuickControlAuxiliaryHostView *)self auxiliaryView];
  [(HUQuickControlAuxiliaryHostView *)self convertPoint:v9 toView:x, y];
  LOBYTE(self) = [v8 pointInside:v7 withEvent:?];

  return self;
}

@end