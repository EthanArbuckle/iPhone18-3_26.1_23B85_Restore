@interface MUScrollableStackView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
- (MUScrollableStackView)initWithFrame:(CGRect)frame;
- (MUScrollableStackView)initWithPrimaryAxisCentering:(BOOL)centering;
- (UIEdgeInsets)contentEdgeInsets;
- (id)addArrangedCardShadowViewForView:(id)view;
- (void)_commonInit;
- (void)_setupViews;
- (void)_updateForHorizontalAxisIfNeeded;
- (void)_updateOrientationWithNewAxis:(int64_t)axis;
- (void)layoutSubviews;
- (void)setContentSize:(CGSize)size;
@end

@implementation MUScrollableStackView

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority
{
  [(MUStackView *)self->_stackView systemLayoutSizeFittingSize:size.width withHorizontalFittingPriority:size.height verticalFittingPriority:?];
  result.height = v6;
  result.width = v5;
  return result;
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size
{
  [(MUStackView *)self->_stackView systemLayoutSizeFittingSize:size.width, size.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(MUStackView *)self->_stackView sizeThatFits:fits.width, fits.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)intrinsicContentSize
{
  [(MUStackView *)self->_stackView intrinsicContentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (UIEdgeInsets)contentEdgeInsets
{
  [(MUStackView *)self->_stackView contentEdgeInsets];
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (void)setContentSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  if (![(MUScrollableStackView *)self axis])
  {
    [(MUScrollableStackView *)self frame];
    height = CGRectGetHeight(v7);
  }

  v6.receiver = self;
  v6.super_class = MUScrollableStackView;
  [(MUScrollableStackView *)&v6 setContentSize:width, height];
}

- (void)_updateForHorizontalAxisIfNeeded
{
  if (![(MUScrollableStackView *)self axis])
  {
    [(MUScrollableStackView *)self contentSize];
    if (self->_cachedContentSize.width != v4 || self->_cachedContentSize.height != v3)
    {
      [(MUScrollableStackView *)self contentSize];
      self->_cachedContentSize.width = v6;
      self->_cachedContentSize.height = v7;
      if ([(UIView *)self _mapsui_isRTL])
      {
        [(MUScrollableStackView *)self contentSize];
        v9 = v8;
        [(MUScrollableStackView *)self frame];
        v10 = v9 - CGRectGetWidth(v12);

        [(MUScrollableStackView *)self setContentOffset:0 animated:v10, 0.0];
      }
    }
  }
}

- (void)layoutSubviews
{
  v10.receiver = self;
  v10.super_class = MUScrollableStackView;
  [(MUScrollableStackView *)&v10 layoutSubviews];
  axis = [(MUScrollableStackView *)self axis];
  if (axis == 1)
  {
    if (!self->_primaryAxisCentering)
    {
      return;
    }

    [(MUScrollableStackView *)self frame];
    Height = CGRectGetHeight(v13);
    [(MUStackView *)self->_stackView frame];
    v9 = CGRectGetHeight(v14);
    v7 = 0.0;
    v6 = fmax((Height - v9) * 0.5, 0.0);
    goto LABEL_7;
  }

  if (!axis)
  {
    [(MUScrollableStackView *)self _updateForHorizontalAxisIfNeeded];
    if (self->_primaryAxisCentering)
    {
      [(MUScrollableStackView *)self frame];
      Width = CGRectGetWidth(v11);
      [(MUStackView *)self->_stackView frame];
      v5 = (Width - CGRectGetWidth(v12)) * 0.5;
      v6 = 0.0;
      v7 = fmax(v5, 0.0);
LABEL_7:
      [(MUScrollableStackView *)self setContentInset:v6, v7, v6, v7];
    }
  }
}

- (void)_updateOrientationWithNewAxis:(int64_t)axis
{
  [(MUStackView *)self->_stackView setAxis:axis];
  [(NSLayoutConstraint *)self->_axisConstraint setActive:0];
  axis = [(MUScrollableStackView *)self axis];
  if (axis == 1)
  {
    widthAnchor = [(MUStackView *)self->_stackView widthAnchor];
    widthAnchor2 = [(MUScrollableStackView *)self widthAnchor];
  }

  else
  {
    if (axis)
    {
      goto LABEL_6;
    }

    widthAnchor = [(MUStackView *)self->_stackView heightAnchor];
    widthAnchor2 = [(MUScrollableStackView *)self heightAnchor];
  }

  v7 = widthAnchor2;
  v8 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  axisConstraint = self->_axisConstraint;
  self->_axisConstraint = v8;

LABEL_6:
  v10 = self->_axisConstraint;

  [(NSLayoutConstraint *)v10 setActive:1];
}

- (void)_setupViews
{
  v21[4] = *MEMORY[0x1E69E9840];
  v3 = [MUStackView alloc];
  v4 = [(MUStackView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  stackView = self->_stackView;
  self->_stackView = v4;

  [(MUStackView *)self->_stackView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(MUScrollableStackView *)self addSubview:self->_stackView];
  [(MUScrollableStackView *)self setScrollEnabled:1];
  [(MUScrollableStackView *)self setShowsHorizontalScrollIndicator:0];
  v16 = MEMORY[0x1E696ACD8];
  leadingAnchor = [(MUStackView *)self->_stackView leadingAnchor];
  leadingAnchor2 = [(MUScrollableStackView *)self leadingAnchor];
  v18 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v21[0] = v18;
  trailingAnchor = [(MUStackView *)self->_stackView trailingAnchor];
  trailingAnchor2 = [(MUScrollableStackView *)self trailingAnchor];
  v7 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v21[1] = v7;
  topAnchor = [(MUStackView *)self->_stackView topAnchor];
  topAnchor2 = [(MUScrollableStackView *)self topAnchor];
  v10 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v21[2] = v10;
  bottomAnchor = [(MUStackView *)self->_stackView bottomAnchor];
  bottomAnchor2 = [(MUScrollableStackView *)self bottomAnchor];
  v13 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v21[3] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:4];
  [v16 activateConstraints:v14];

  [(MUScrollableStackView *)self _updateOrientationWithNewAxis:1];
  v15 = *MEMORY[0x1E69E9840];
}

- (void)_commonInit
{
  [(MUScrollableStackView *)self _setupViews];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  [(MUScrollableStackView *)self setAccessibilityIdentifier:v4];
}

- (MUScrollableStackView)initWithPrimaryAxisCentering:(BOOL)centering
{
  v7.receiver = self;
  v7.super_class = MUScrollableStackView;
  v4 = [(MUScrollableStackView *)&v7 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v5 = v4;
  if (v4)
  {
    v4->_primaryAxisCentering = centering;
    [(MUScrollableStackView *)v4 _commonInit];
  }

  return v5;
}

- (MUScrollableStackView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = MUScrollableStackView;
  v3 = [(MUScrollableStackView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(MUScrollableStackView *)v3 _commonInit];
  }

  return v4;
}

- (id)addArrangedCardShadowViewForView:(id)view
{
  viewCopy = view;
  v5 = [[MUPlatterView alloc] initWithContentView:viewCopy];

  [(MUScrollableStackView *)self addArrangedSubview:v5];

  return v5;
}

@end