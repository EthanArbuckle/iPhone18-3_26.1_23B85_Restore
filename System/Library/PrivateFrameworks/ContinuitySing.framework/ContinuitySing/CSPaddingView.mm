@interface CSPaddingView
- (CSPaddingView)initWithWrappedView:(id)view;
- (void)_updateConstraints;
- (void)setHorizontalPadding:(double)padding;
- (void)setVerticalPadding:(double)padding;
@end

@implementation CSPaddingView

- (CSPaddingView)initWithWrappedView:(id)view
{
  viewCopy = view;
  v28.receiver = self;
  v28.super_class = CSPaddingView;
  v6 = [(CSPaddingView *)&v28 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_wrappedView, view);
    [viewCopy setTranslatesAutoresizingMaskIntoConstraints:0];
    leadingAnchor = [viewCopy leadingAnchor];
    leadingAnchor2 = [(CSPaddingView *)v7 leadingAnchor];
    v10 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:v7->_leadingPadding];
    leadingConstraint = v7->_leadingConstraint;
    v7->_leadingConstraint = v10;

    trailingAnchor = [viewCopy trailingAnchor];
    trailingAnchor2 = [(CSPaddingView *)v7 trailingAnchor];
    v14 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-v7->_trailingPadding];
    trailingConstraint = v7->_trailingConstraint;
    v7->_trailingConstraint = v14;

    topAnchor = [viewCopy topAnchor];
    topAnchor2 = [(CSPaddingView *)v7 topAnchor];
    v18 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:v7->_topPadding];
    topConstraint = v7->_topConstraint;
    v7->_topConstraint = v18;

    bottomAnchor = [viewCopy bottomAnchor];
    bottomAnchor2 = [(CSPaddingView *)v7 bottomAnchor];
    v22 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-v7->_bottomPadding];
    bottomConstraint = v7->_bottomConstraint;
    v7->_bottomConstraint = v22;

    [(CSPaddingView *)v7 addSubview:viewCopy];
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

- (void)setHorizontalPadding:(double)padding
{
  self->_leadingPadding = padding;
  self->_trailingPadding = padding;
  [(CSPaddingView *)self _updateConstraints];
}

- (void)setVerticalPadding:(double)padding
{
  self->_topPadding = padding;
  self->_bottomPadding = padding;
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