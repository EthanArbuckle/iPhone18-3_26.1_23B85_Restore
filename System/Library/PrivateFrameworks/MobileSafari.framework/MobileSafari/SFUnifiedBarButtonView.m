@interface SFUnifiedBarButtonView
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (CGRect)_hitRect;
- (CGRect)_selectedIndicatorBounds;
- (SFUnifiedBarButtonView)initWithFrame:(CGRect)a3;
- (double)_horizontalTitlePadding;
- (double)preferredWidthForHeight:(double)a3;
- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5;
- (void)setEnabled:(BOOL)a3;
- (void)tintColorDidChange;
- (void)updateTitleFont;
@end

@implementation SFUnifiedBarButtonView

- (SFUnifiedBarButtonView)initWithFrame:(CGRect)a3
{
  v37[4] = *MEMORY[0x1E69E9840];
  v35.receiver = self;
  v35.super_class = SFUnifiedBarButtonView;
  v3 = [(SFUnifiedBarItemView *)&v35 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(UIView *)v3 sf_applyContentSizeCategoryLimitsForToolbarButton];
    v5 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    imageView = v4->_imageView;
    v4->_imageView = v5;

    v7 = [MEMORY[0x1E69DCAD8] safari_barButtonConfiguration];
    [(UIImageView *)v4->_imageView setPreferredSymbolConfiguration:v7];

    [(UIImageView *)v4->_imageView setContentMode:4];
    [(UIImageView *)v4->_imageView setTranslatesAutoresizingMaskIntoConstraints:0];
    v29 = [(SFUnifiedBarItemView *)v4 contentView];
    [v29 addSubview:v4->_imageView];
    v8 = [(UIImageView *)v4->_imageView leadingAnchor];
    v9 = [v29 leadingAnchor];
    v10 = [v8 constraintEqualToAnchor:v9];
    imageViewLeadingConstraint = v4->_imageViewLeadingConstraint;
    v4->_imageViewLeadingConstraint = v10;

    v27 = MEMORY[0x1E696ACD8];
    v37[0] = v4->_imageViewLeadingConstraint;
    v28 = [(UIImageView *)v4->_imageView topAnchor];
    v12 = [v29 topAnchor];
    v13 = [v28 constraintEqualToAnchor:v12];
    v37[1] = v13;
    v14 = [v29 trailingAnchor];
    v15 = [(UIImageView *)v4->_imageView trailingAnchor];
    v16 = [v14 constraintEqualToAnchor:v15];
    v37[2] = v16;
    v17 = [v29 bottomAnchor];
    v18 = [(UIImageView *)v4->_imageView bottomAnchor];
    v19 = [v17 constraintEqualToAnchor:v18];
    v37[3] = v19;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:4];
    [v27 activateConstraints:v20];

    v21 = [objc_alloc(MEMORY[0x1E69DCDB0]) initWithDelegate:v4];
    [(SFUnifiedBarButtonView *)v4 addInteraction:v21];
    if ([MEMORY[0x1E69C8880] isSolariumEnabled])
    {
      [(SFUnifiedBarItemView *)v4 setPlatterStyle:10];
    }

    objc_initWeak(&location, v4);
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __40__SFUnifiedBarButtonView_initWithFrame___block_invoke;
    v32[3] = &unk_1E721D1B8;
    objc_copyWeak(&v33, &location);
    [(SFUnifiedBarButtonView *)v4 setPointerStyleProvider:v32];
    v36 = objc_opt_class();
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v36 count:1];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __40__SFUnifiedBarButtonView_initWithFrame___block_invoke_2;
    v30[3] = &unk_1E721D1E0;
    v23 = v4;
    v31 = v23;
    v24 = [(SFUnifiedBarButtonView *)v23 registerForTraitChanges:v22 withHandler:v30];

    v25 = v23;
    objc_destroyWeak(&v33);
    objc_destroyWeak(&location);
  }

  return v4;
}

id __40__SFUnifiedBarButtonView_initWithFrame___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = [WeakRetained platterStyle];

  if (v11 && v11 != 10)
  {
    v12 = [objc_alloc(MEMORY[0x1E69DD070]) initWithView:v7];
    v14 = [MEMORY[0x1E69DCDB8] effectWithPreview:v12];
    v13 = [MEMORY[0x1E69DCDD0] styleWithEffect:v14 shape:v9];
  }

  else
  {
    v12 = [MEMORY[0x1E69DCDC8] sf_shapeForToolbarButton:v7];
    v13 = [MEMORY[0x1E69DCDD0] styleWithEffect:v8 shape:v12];
  }

  return v13;
}

void __40__SFUnifiedBarButtonView_initWithFrame___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 preferredContentSizeCategory];
  lhs = _SFToolbarContentSizeCategoryForPreferredCategory(v6);

  v7 = [v5 traitCollection];

  v8 = [v7 preferredContentSizeCategory];
  v9 = _SFToolbarContentSizeCategoryForPreferredCategory(v8);

  if (UIContentSizeCategoryCompareToCategory(lhs, v9))
  {
    [*(a1 + 32) updateTitleFont];
  }
}

- (void)updateTitleFont
{
  v3 = [(SFUnifiedBarButtonView *)self _titleView];
  if (v3)
  {
    v4 = MEMORY[0x1E69DD1B8];
    v10 = v3;
    v5 = [(SFUnifiedBarButtonView *)self traitCollection];
    v6 = [v5 preferredContentSizeCategory];
    v7 = _SFToolbarContentSizeCategoryForPreferredCategory(v6);
    v8 = [v4 traitCollectionWithPreferredContentSizeCategory:v7];

    v9 = [MEMORY[0x1E69DB878] _sf_preferredFontForTextStyle:*MEMORY[0x1E69DDD80] weight:v8 compatibleWithTraitCollection:*MEMORY[0x1E69DB958]];
    [v10 setFont:v9];

    [v10 setLineBreakMode:4];
    v3 = v10;
  }
}

- (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  if ([(SFUnifiedBarButtonView *)self isEnabled]!= a3)
  {
    v5.receiver = self;
    v5.super_class = SFUnifiedBarButtonView;
    [(SFUnifiedBarButtonView *)&v5 setEnabled:v3];
    [(SFUnifiedBarButtonView *)self tintColorDidChange];
  }
}

- (void)tintColorDidChange
{
  if (([(SFUnifiedBarButtonView *)self isEnabled]& 1) != 0)
  {
    [(SFUnifiedBarButtonView *)self tintColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] quaternaryLabelColor];
  }
  v3 = ;
  [(UIImageView *)self->_imageView setTintColor:v3];
  [(SFUnifiedBarButtonView *)self setTitleColor:v3 forState:0];
}

- (double)preferredWidthForHeight:(double)a3
{
  v4 = [(UIImageView *)self->_imageView image];

  if (v4)
  {
    [(UIImageView *)self->_imageView intrinsicContentSize];
    return result;
  }

  v6 = [(SFUnifiedBarButtonView *)self titleForState:0];
  if (v6)
  {
  }

  else
  {
    v7 = [(SFUnifiedBarButtonView *)self attributedTitleForState:0];

    if (!v7)
    {
      return 0.0;
    }
  }

  [(SFUnifiedBarButtonView *)self bounds];
  v8 = 200.0;
  [(SFUnifiedBarButtonView *)self sizeThatFits:200.0, v9];
  if (v10 < 200.0)
  {
    [(SFUnifiedBarButtonView *)self bounds];
    [(SFUnifiedBarButtonView *)self sizeThatFits:200.0, v11];
    v8 = v12;
  }

  [(SFUnifiedBarButtonView *)self _horizontalTitlePadding];
  return v8 + v13 * 2.0;
}

- (double)_horizontalTitlePadding
{
  v2 = [(SFUnifiedBarItemView *)self platterStyle];
  result = 0.0;
  if (v2 == 10)
  {
    return 12.0;
  }

  return result;
}

- (CGRect)_selectedIndicatorBounds
{
  v3 = [(SFUnifiedBarButtonView *)self _titleView];
  v4 = [v3 text];
  v5 = [v4 length];

  if (v5)
  {
    v6 = [(SFUnifiedBarButtonView *)self titleLabel];
    [v6 frame];
    x = v7;
    y = v9;
    width = v11;
    height = v13;

    if (([MEMORY[0x1E69C8880] isSolariumEnabled] & 1) == 0)
    {
      v24.origin.x = x;
      v24.origin.y = y;
      v24.size.width = width;
      v24.size.height = height;
      v25 = CGRectInset(v24, 6.0, 0.0);
      x = v25.origin.x;
      y = v25.origin.y;
      width = v25.size.width;
      height = v25.size.height;
    }
  }

  else
  {
    v15 = [(SFUnifiedBarButtonView *)self imageView];
    [v15 frame];
    x = v16;
    y = v17;
    width = v18;
    height = v19;
  }

  v20 = x;
  v21 = y;
  v22 = width;
  v23 = height;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (CGRect)_hitRect
{
  [(SFUnifiedBarButtonView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(SFUnifiedBarItemView *)self barMetrics];
  [v11 minimumItemSpacing];
  v13 = v12 * -0.5;
  v22.origin.x = v4;
  v22.origin.y = v6;
  v22.size.width = v8;
  v22.size.height = v10;
  v23 = CGRectInset(v22, v13, 0.0);
  x = v23.origin.x;
  y = v23.origin.y;
  width = v23.size.width;
  height = v23.size.height;

  v18 = x;
  v19 = y;
  v20 = width;
  v21 = height;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  [(SFUnifiedBarButtonView *)self _hitRect];
  v10 = x;
  v11 = y;

  return CGRectContainsPoint(*&v6, *&v10);
}

- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5
{
  v5 = MEMORY[0x1E69DCDC0];
  [(SFUnifiedBarButtonView *)self _hitRect:a3];

  return [v5 regionWithRect:@"UnifiedBarButton" identifier:?];
}

@end