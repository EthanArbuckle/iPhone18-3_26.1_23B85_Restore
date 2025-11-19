@interface MUScrollableStackView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5;
- (MUScrollableStackView)initWithFrame:(CGRect)a3;
- (MUScrollableStackView)initWithPrimaryAxisCentering:(BOOL)a3;
- (UIEdgeInsets)contentEdgeInsets;
- (id)addArrangedCardShadowViewForView:(id)a3;
- (void)_commonInit;
- (void)_setupViews;
- (void)_updateForHorizontalAxisIfNeeded;
- (void)_updateOrientationWithNewAxis:(int64_t)a3;
- (void)layoutSubviews;
- (void)setContentSize:(CGSize)a3;
@end

@implementation MUScrollableStackView

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5
{
  [(MUStackView *)self->_stackView systemLayoutSizeFittingSize:a3.width withHorizontalFittingPriority:a3.height verticalFittingPriority:?];
  result.height = v6;
  result.width = v5;
  return result;
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3
{
  [(MUStackView *)self->_stackView systemLayoutSizeFittingSize:a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(MUStackView *)self->_stackView sizeThatFits:a3.width, a3.height];
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

- (void)setContentSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
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
  v3 = [(MUScrollableStackView *)self axis];
  if (v3 == 1)
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

  if (!v3)
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

- (void)_updateOrientationWithNewAxis:(int64_t)a3
{
  [(MUStackView *)self->_stackView setAxis:a3];
  [(NSLayoutConstraint *)self->_axisConstraint setActive:0];
  v4 = [(MUScrollableStackView *)self axis];
  if (v4 == 1)
  {
    v5 = [(MUStackView *)self->_stackView widthAnchor];
    v6 = [(MUScrollableStackView *)self widthAnchor];
  }

  else
  {
    if (v4)
    {
      goto LABEL_6;
    }

    v5 = [(MUStackView *)self->_stackView heightAnchor];
    v6 = [(MUScrollableStackView *)self heightAnchor];
  }

  v7 = v6;
  v8 = [v5 constraintEqualToAnchor:v6];
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
  v20 = [(MUStackView *)self->_stackView leadingAnchor];
  v19 = [(MUScrollableStackView *)self leadingAnchor];
  v18 = [v20 constraintEqualToAnchor:v19];
  v21[0] = v18;
  v17 = [(MUStackView *)self->_stackView trailingAnchor];
  v6 = [(MUScrollableStackView *)self trailingAnchor];
  v7 = [v17 constraintEqualToAnchor:v6];
  v21[1] = v7;
  v8 = [(MUStackView *)self->_stackView topAnchor];
  v9 = [(MUScrollableStackView *)self topAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];
  v21[2] = v10;
  v11 = [(MUStackView *)self->_stackView bottomAnchor];
  v12 = [(MUScrollableStackView *)self bottomAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];
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

- (MUScrollableStackView)initWithPrimaryAxisCentering:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = MUScrollableStackView;
  v4 = [(MUScrollableStackView *)&v7 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v5 = v4;
  if (v4)
  {
    v4->_primaryAxisCentering = a3;
    [(MUScrollableStackView *)v4 _commonInit];
  }

  return v5;
}

- (MUScrollableStackView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = MUScrollableStackView;
  v3 = [(MUScrollableStackView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(MUScrollableStackView *)v3 _commonInit];
  }

  return v4;
}

- (id)addArrangedCardShadowViewForView:(id)a3
{
  v4 = a3;
  v5 = [[MUPlatterView alloc] initWithContentView:v4];

  [(MUScrollableStackView *)self addArrangedSubview:v5];

  return v5;
}

@end