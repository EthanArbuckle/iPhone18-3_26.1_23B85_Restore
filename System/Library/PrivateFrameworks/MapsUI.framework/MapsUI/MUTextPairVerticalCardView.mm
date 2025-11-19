@interface MUTextPairVerticalCardView
- (MUTextPairVerticalCardView)initWithFrame:(CGRect)a3;
- (void)_recalculateStackingIfNeeded;
- (void)_updateAppearance;
- (void)layoutSubviews;
- (void)setViewModels:(id)a3;
@end

@implementation MUTextPairVerticalCardView

- (void)_recalculateStackingIfNeeded
{
  v24 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v3 = [(MUStackView *)self arrangedSubviews];
  v4 = [v3 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v4)
  {
    v5 = *v19;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v18 + 1) + 8 * i);
        [(MUTextPairVerticalCardView *)self bounds];
        if ([v7 shouldStackForProposedWidth:CGRectGetWidth(v25) + -32.0])
        {
          v4 = 1;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v18 objects:v23 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = [(MUStackView *)self arrangedSubviews];
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      for (j = 0; j != v10; ++j)
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v14 + 1) + 8 * j) setStacked:v4];
      }

      v10 = [v8 countByEnumeratingWithState:&v14 objects:v22 count:16];
    }

    while (v10);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = MUTextPairVerticalCardView;
  [(MUTextPairVerticalCardView *)&v4 layoutSubviews];
  [(MUTextPairVerticalCardView *)self _recalculateStackingIfNeeded];
  v3.receiver = self;
  v3.super_class = MUTextPairVerticalCardView;
  [(MUTextPairVerticalCardView *)&v3 layoutSubviews];
}

- (void)_updateAppearance
{
  v31 = *MEMORY[0x1E69E9840];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v3 = [(MUStackView *)self arrangedSubviews];
  v4 = [v3 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v26;
    do
    {
      v7 = 0;
      do
      {
        if (*v26 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(MUPlaceVerticalCardContainerView *)self removeArrangedSubview:*(*(&v25 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v5);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = self->_viewModels;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
    v12 = *MEMORY[0x1E695F058];
    v13 = *(MEMORY[0x1E695F058] + 8);
    v14 = *(MEMORY[0x1E695F058] + 16);
    v15 = *(MEMORY[0x1E695F058] + 24);
    do
    {
      v16 = 0;
      do
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v17 = *(*(&v21 + 1) + 8 * v16);
        v18 = [MUTextPairView alloc];
        v19 = [(MUTextPairView *)v18 initWithFrame:v12, v13, v14, v15, v21];
        [(MUTextPairView *)v19 setViewModel:v17];
        [(MUStackView *)self addArrangedSubview:v19];

        ++v16;
      }

      while (v10 != v16);
      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v10);
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)setViewModels:(id)a3
{
  v6 = a3;
  if (![(NSArray *)self->_viewModels isEqualToArray:?])
  {
    v4 = [v6 copy];
    viewModels = self->_viewModels;
    self->_viewModels = v4;

    [(MUTextPairVerticalCardView *)self _updateAppearance];
  }
}

- (MUTextPairVerticalCardView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = MUTextPairVerticalCardView;
  v3 = [(MUPlaceVerticalCardContainerView *)&v6 initWithShowsSeparators:0, a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(MUTextPairVerticalCardView *)v3 setAccessibilityIdentifier:@"TextPairVerticalCard"];
  }

  return v4;
}

@end