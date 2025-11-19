@interface CSPaddingView
- (CSPaddingView)initWithWrappedView:(id)a3;
- (void)_updateConstraints;
- (void)setHorizontalPadding:(double)a3;
- (void)setVerticalPadding:(double)a3;
@end

@implementation CSPaddingView

- (CSPaddingView)initWithWrappedView:(id)a3
{
  v5 = a3;
  v28.receiver = self;
  v28.super_class = CSPaddingView;
  v6 = [(CSPaddingView *)&v28 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_wrappedView, a3);
    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    v8 = [v5 leadingAnchor];
    v9 = [(CSPaddingView *)v7 leadingAnchor];
    v10 = [v8 constraintEqualToAnchor:v9 constant:v7->_leadingPadding];
    leadingConstraint = v7->_leadingConstraint;
    v7->_leadingConstraint = v10;

    v12 = [v5 trailingAnchor];
    v13 = [(CSPaddingView *)v7 trailingAnchor];
    v14 = [v12 constraintEqualToAnchor:v13 constant:-v7->_trailingPadding];
    trailingConstraint = v7->_trailingConstraint;
    v7->_trailingConstraint = v14;

    v16 = [v5 topAnchor];
    v17 = [(CSPaddingView *)v7 topAnchor];
    v18 = [v16 constraintEqualToAnchor:v17 constant:v7->_topPadding];
    topConstraint = v7->_topConstraint;
    v7->_topConstraint = v18;

    v20 = [v5 bottomAnchor];
    v21 = [(CSPaddingView *)v7 bottomAnchor];
    v22 = [v20 constraintEqualToAnchor:v21 constant:-v7->_bottomPadding];
    bottomConstraint = v7->_bottomConstraint;
    v7->_bottomConstraint = v22;

    [(CSPaddingView *)v7 addSubview:v5];
    v24 = MEMORY[0x277CCAAD0];
    v27[0] = v7->_leadingConstraint;
    v27[1] = v7->_trailingConstraint;
    v27[2] = v7->_topConstraint;
    v27[3] = v7->_bottomConstraint;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:4];
    [v24 activateConstraints:v25];
  }

  return v7;
}

- (void)setHorizontalPadding:(double)a3
{
  self->_leadingPadding = a3;
  self->_trailingPadding = a3;
  [(CSPaddingView *)self _updateConstraints];
}

- (void)setVerticalPadding:(double)a3
{
  self->_topPadding = a3;
  self->_bottomPadding = a3;
  [(CSPaddingView *)self _updateConstraints];
}

- (void)_updateConstraints
{
  [(NSLayoutConstraint *)self->_leadingConstraint setConstant:self->_leadingPadding];
  [(NSLayoutConstraint *)self->_trailingConstraint setConstant:-self->_trailingPadding];
  [(NSLayoutConstraint *)self->_topConstraint setConstant:self->_topPadding];
  bottomConstraint = self->_bottomConstraint;
  v4 = -self->_bottomPadding;

  [(NSLayoutConstraint *)bottomConstraint setConstant:v4];
}

@end