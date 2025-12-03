@interface MUScrollableSegmentedPickerContentView
- (MUScrollableSegmentedPickerContentView)initWithFrame:(CGRect)frame;
- (MUScrollableSegmentedPickerContentViewDelegate)delegate;
- (double)idealWidthForProposedSize:(CGSize)size;
- (void)_handleTapWithSegmentView:(id)view;
- (void)_setupSubviews;
- (void)_updateAppearance;
- (void)_updateGradientColors;
- (void)_updateGradientVisibility;
- (void)_updateSelectedIndexAnimated:(BOOL)animated invokeDelegate:(BOOL)delegate;
- (void)layoutSubviews;
- (void)setViewModels:(id)models;
- (void)updateSelectionViewPositionIfNeeded;
@end

@implementation MUScrollableSegmentedPickerContentView

- (MUScrollableSegmentedPickerContentViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_updateGradientColors
{
  v14[3] = *MEMORY[0x1E69E9840];
  traitCollection = [(MUScrollableSegmentedPickerContentView *)self traitCollection];
  if ([traitCollection userInterfaceStyle] == 2)
  {
    [MEMORY[0x1E69DC888] blackColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] whiteColor];
  }
  v4 = ;

  v5 = [v4 colorWithAlphaComponent:0.300000012];
  v6 = [v4 colorWithAlphaComponent:{0.200000003, v5}];
  v14[1] = v6;
  v7 = [v4 colorWithAlphaComponent:0.0];
  v14[2] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:3];

  traitCollection2 = [(MUScrollableSegmentedPickerContentView *)self traitCollection];
  layoutDirection = [traitCollection2 layoutDirection];

  if (layoutDirection == 1)
  {
    reverseObjectEnumerator = [v8 reverseObjectEnumerator];
    allObjects = [reverseObjectEnumerator allObjects];

    v8 = allObjects;
  }

  [(_MKGradientView *)self->_leadingGradientOverlayView setColors:v8];
  [(_MKGradientView *)self->_trailingGradientOverlayView setColors:v8];

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_handleTapWithSegmentView:(id)view
{
  contentStackView = self->_contentStackView;
  viewCopy = view;
  arrangedSubviews = [(MUScrollableStackView *)contentStackView arrangedSubviews];
  v7 = [arrangedSubviews indexOfObject:viewCopy];

  [(MUScrollableSegmentedPickerContentView *)self _setSelectedIndex:v7 animated:1 invokeDelegate:1];
}

- (void)_updateGradientVisibility
{
  traitCollection = [(MUScrollableSegmentedPickerContentView *)self traitCollection];
  layoutDirection = [traitCollection layoutDirection];

  if ((layoutDirection + 1) >= 2)
  {
    if (layoutDirection == 1)
    {
      [(MUScrollableStackView *)self->_contentStackView contentOffset];
      v13 = v12;
      [(MUScrollableStackView *)self->_contentStackView frame];
      v14 = CGRectGetWidth(v20) + v13;
      [(MUScrollableStackView *)self->_contentStackView contentSize];
      v6 = v14 >= v15;
      [(MUScrollableStackView *)self->_contentStackView contentOffset];
      v11 = v16 <= 0.0;
    }

    else
    {
      v11 = 0;
      v6 = 0;
    }
  }

  else
  {
    [(MUScrollableStackView *)self->_contentStackView contentOffset];
    v6 = v5 <= 0.0;
    [(MUScrollableStackView *)self->_contentStackView contentOffset];
    v8 = v7;
    [(MUScrollableStackView *)self->_contentStackView frame];
    v9 = CGRectGetWidth(v19) + v8;
    [(MUScrollableStackView *)self->_contentStackView contentSize];
    v11 = v9 >= v10;
  }

  [(MUGradientView *)self->_leadingGradientOverlayView setHidden:v6];
  trailingGradientOverlayView = self->_trailingGradientOverlayView;

  [(MUGradientView *)trailingGradientOverlayView setHidden:v11];
}

- (void)_updateAppearance
{
  objc_initWeak(&location, self);
  viewModels = self->_viewModels;
  v5 = MEMORY[0x1E69E9820];
  v6 = 3221225472;
  v7 = __59__MUScrollableSegmentedPickerContentView__updateAppearance__block_invoke;
  v8 = &unk_1E8219518;
  objc_copyWeak(&v9, &location);
  v4 = MUMap(viewModels, &v5);
  [(MUScrollableStackView *)self->_contentStackView setArrangedSubviews:v4, v5, v6, v7, v8];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

MUScrollableSegmentedPickerSegmentView *__59__MUScrollableSegmentedPickerContentView__updateAppearance__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MUScrollableSegmentedPickerSegmentView alloc];
  v5 = [(MUScrollableSegmentedPickerSegmentView *)v4 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(MUScrollableSegmentedPickerSegmentView *)v5 setViewModel:v3];
  [(MUScrollableSegmentedPickerSegmentView *)v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = MEMORY[0x1E69DC628];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __59__MUScrollableSegmentedPickerContentView__updateAppearance__block_invoke_2;
  v13 = &unk_1E82194F0;
  objc_copyWeak(&v15, (a1 + 32));
  v7 = v5;
  v14 = v7;
  v8 = [v6 actionWithHandler:&v10];
  [(MUScrollableSegmentedPickerSegmentView *)v7 addAction:v8 forControlEvents:64, v10, v11, v12, v13];

  objc_destroyWeak(&v15);

  return v7;
}

void __59__MUScrollableSegmentedPickerContentView__updateAppearance__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _handleTapWithSegmentView:*(a1 + 32)];
    WeakRetained = v3;
  }
}

- (void)setViewModels:(id)models
{
  modelsCopy = models;
  if (([(NSArray *)self->_viewModels isEqual:?]& 1) == 0)
  {
    v4 = [modelsCopy copy];
    viewModels = self->_viewModels;
    self->_viewModels = v4;

    [(MUScrollableSegmentedPickerContentView *)self _updateAppearance];
  }
}

- (void)_updateSelectedIndexAnimated:(BOOL)animated invokeDelegate:(BOOL)delegate
{
  delegateCopy = delegate;
  animatedCopy = animated;
  selectedIndex = self->_selectedIndex;
  if (selectedIndex >= [(NSArray *)self->_viewModels count])
  {
    self->_selectedIndex = 0;
  }

  if (delegateCopy)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained segmentedPickerContentViewDidUpdateSelection:self];
  }

  arrangedSubviews = [(MUScrollableStackView *)self->_contentStackView arrangedSubviews];
  v10 = [arrangedSubviews objectAtIndexedSubscript:self->_selectedIndex];

  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __86__MUScrollableSegmentedPickerContentView__updateSelectedIndexAnimated_invokeDelegate___block_invoke;
  aBlock[3] = &unk_1E8219F48;
  objc_copyWeak(&v21, &location);
  v11 = v10;
  v20 = v11;
  v12 = _Block_copy(aBlock);
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __86__MUScrollableSegmentedPickerContentView__updateSelectedIndexAnimated_invokeDelegate___block_invoke_2;
  v17 = &unk_1E821BAC8;
  objc_copyWeak(&v18, &location);
  v13 = _Block_copy(&v14);
  if (animatedCopy)
  {
    [MEMORY[0x1E69DD250] animateWithDuration:0 delay:v12 options:0 animations:0.300000012 completion:{0.0, v14, v15, v16, v17}];
  }

  else
  {
    v12[2](v12);
  }

  v13[2](v13);

  objc_destroyWeak(&v18);
  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
}

void __86__MUScrollableSegmentedPickerContentView__updateSelectedIndexAnimated_invokeDelegate___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    [*(a1 + 32) frame];
    v16 = CGRectInset(v15, 4.0, 4.0);
    [WeakRetained[53] setFrame:{v16.origin.x, v16.origin.y, v16.size.width, v16.size.height}];
    [*(a1 + 32) center];
    [WeakRetained[53] setCenter:?];
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v3 = [WeakRetained[51] arrangedSubviews];
    v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v10;
      do
      {
        v7 = 0;
        do
        {
          if (*v10 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [*(*(&v9 + 1) + 8 * v7) setSelected:*(*(&v9 + 1) + 8 * v7) == *(a1 + 32)];
          ++v7;
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v5);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __86__MUScrollableSegmentedPickerContentView__updateSelectedIndexAnimated_invokeDelegate___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _updateGradientVisibility];
    WeakRetained = v2;
  }
}

- (double)idealWidthForProposedSize:(CGSize)size
{
  width = size.width;
  [(MUScrollableStackView *)self->_contentStackView systemLayoutSizeFittingSize:size.width, size.height];
  return fmin(width, v4);
}

- (void)updateSelectionViewPositionIfNeeded
{
  [(UIVisualEffectView *)self->_selectedPillView bounds];
  if (v4 == *MEMORY[0x1E695F060] && v3 == *(MEMORY[0x1E695F060] + 8))
  {
    [(MUScrollableSegmentedPickerContentView *)self _updateSelectedIndexAnimated:0 invokeDelegate:0];
    selectedPillView = self->_selectedPillView;
    [(UIVisualEffectView *)selectedPillView bounds];
    v7 = CGRectGetHeight(v9) * 0.5;

    [(UIVisualEffectView *)selectedPillView _setCornerRadius:1 continuous:15 maskedCorners:v7];
  }
}

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = MUScrollableSegmentedPickerContentView;
  [(MUScrollableSegmentedPickerContentView *)&v12 layoutSubviews];
  [(MUScrollableSegmentedPickerContentView *)self bounds];
  Height = CGRectGetHeight(v13);
  traitCollection = [(MUScrollableSegmentedPickerContentView *)self traitCollection];
  layoutDirection = [traitCollection layoutDirection];

  v6 = layoutDirection + 1;
  if ((layoutDirection + 1) > 2)
  {
    v7 = 0;
    v8 = 0;
  }

  else
  {
    v7 = qword_1C587A0F0[v6];
    v8 = qword_1C587A108[v6];
  }

  v9 = Height * 0.5;
  [(UIVisualEffectView *)self->_backgroundBlurView _setCornerRadius:1 continuous:15 maskedCorners:v9];
  [(MUGradientView *)self->_leadingGradientOverlayView _setContinuousCornerRadius:v9];
  layer = [(MUGradientView *)self->_leadingGradientOverlayView layer];
  [layer setMaskedCorners:v7];

  [(MUGradientView *)self->_trailingGradientOverlayView _setContinuousCornerRadius:v9];
  layer2 = [(MUGradientView *)self->_trailingGradientOverlayView layer];
  [layer2 setMaskedCorners:v8];

  [(MUScrollableSegmentedPickerContentView *)self updateSelectionViewPositionIfNeeded];
}

- (void)_setupSubviews
{
  v55[2] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69DD298]);
  v4 = [MEMORY[0x1E69DC730] effectWithStyle:9];
  v5 = [v3 initWithEffect:v4];
  backgroundBlurView = self->_backgroundBlurView;
  self->_backgroundBlurView = v5;

  [(UIVisualEffectView *)self->_backgroundBlurView setClipsToBounds:1];
  [(MUScrollableSegmentedPickerContentView *)self addSubview:self->_backgroundBlurView];
  v7 = [MUScrollableStackView alloc];
  v8 = *MEMORY[0x1E695F058];
  v9 = *(MEMORY[0x1E695F058] + 8);
  v10 = *(MEMORY[0x1E695F058] + 16);
  v11 = *(MEMORY[0x1E695F058] + 24);
  v12 = [(MUScrollableStackView *)v7 initWithFrame:*MEMORY[0x1E695F058], v9, v10, v11];
  contentStackView = self->_contentStackView;
  self->_contentStackView = v12;

  [(MUScrollableStackView *)self->_contentStackView setAxis:0];
  [(MUScrollableStackView *)self->_contentStackView setDelegate:self];
  contentView = [(UIVisualEffectView *)self->_backgroundBlurView contentView];
  [contentView addSubview:self->_contentStackView];

  v15 = [MUEdgeLayout alloc];
  v16 = self->_contentStackView;
  contentView2 = [(UIVisualEffectView *)self->_backgroundBlurView contentView];
  v51 = [(MUEdgeLayout *)v15 initWithItem:v16 container:contentView2];

  [(MUConstraintLayout *)v51 activate];
  v50 = [[MUEdgeLayout alloc] initWithItem:self->_backgroundBlurView container:self];
  [(MUConstraintLayout *)v50 activate];
  v18 = objc_alloc(MEMORY[0x1E69DD298]);
  v19 = [MEMORY[0x1E69DC730] effectWithStyle:9];
  v20 = [v18 initWithEffect:v19];
  selectedPillView = self->_selectedPillView;
  self->_selectedPillView = v20;

  [(UIVisualEffectView *)self->_selectedPillView setClipsToBounds:1];
  v22 = [MEMORY[0x1E69DC888] colorWithWhite:0.5 alpha:0.45];
  contentView3 = [(UIVisualEffectView *)self->_selectedPillView contentView];
  [contentView3 setBackgroundColor:v22];

  [(MUScrollableStackView *)self->_contentStackView addSubview:self->_selectedPillView];
  [(MUScrollableStackView *)self->_contentStackView sendSubviewToBack:self->_selectedPillView];
  v24 = [(_MKGradientView *)[MUGradientView alloc] initWithFrame:v8, v9, v10, v11];
  leadingGradientOverlayView = self->_leadingGradientOverlayView;
  self->_leadingGradientOverlayView = v24;

  [(MUGradientView *)self->_leadingGradientOverlayView setUserInteractionEnabled:0];
  [(_MKGradientView *)self->_leadingGradientOverlayView setLocations:&unk_1F450E2C0];
  [(_MKGradientView *)self->_leadingGradientOverlayView setStartPoint:0.0, 0.5];
  [(_MKGradientView *)self->_leadingGradientOverlayView setEndPoint:1.0, 0.5];
  [(MUScrollableSegmentedPickerContentView *)self addSubview:self->_leadingGradientOverlayView];
  v26 = [MUSizeLayout alloc];
  v27 = self->_leadingGradientOverlayView;
  +[MUSizeLayout useIntrinsicContentSize];
  v29 = [(MUSizeLayout *)v26 initWithItem:v27 size:32.0, v28];
  v30 = [[MUEdgeLayout alloc] initWithItem:self->_leadingGradientOverlayView container:self];
  [(MUEdgeLayout *)v30 setEdges:7];
  v31 = MEMORY[0x1E696ACD8];
  v55[0] = v29;
  v55[1] = v30;
  v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:2];
  [v31 _mapsui_activateLayouts:v32];

  v33 = [(_MKGradientView *)[MUGradientView alloc] initWithFrame:v8, v9, v10, v11];
  trailingGradientOverlayView = self->_trailingGradientOverlayView;
  self->_trailingGradientOverlayView = v33;

  [(MUGradientView *)self->_trailingGradientOverlayView setUserInteractionEnabled:0];
  [(_MKGradientView *)self->_trailingGradientOverlayView setLocations:&unk_1F450E2C0];
  [(_MKGradientView *)self->_trailingGradientOverlayView setStartPoint:1.0, 0.5];
  [(_MKGradientView *)self->_trailingGradientOverlayView setEndPoint:0.0, 0.5];
  [(MUScrollableSegmentedPickerContentView *)self addSubview:self->_trailingGradientOverlayView];
  v35 = [MUSizeLayout alloc];
  v36 = self->_trailingGradientOverlayView;
  +[MUSizeLayout useIntrinsicContentSize];
  v38 = [(MUSizeLayout *)v35 initWithItem:v36 size:32.0, v37];
  v39 = [[MUEdgeLayout alloc] initWithItem:self->_trailingGradientOverlayView container:self];
  [(MUEdgeLayout *)v39 setEdges:13];
  v40 = MEMORY[0x1E696ACD8];
  v54[0] = v38;
  v54[1] = v39;
  v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:2];
  [v40 _mapsui_activateLayouts:v41];

  [(MUScrollableSegmentedPickerContentView *)self _updateGradientColors];
  layer = [(MUScrollableSegmentedPickerContentView *)self layer];
  [layer setAllowsGroupOpacity:0];

  v43 = objc_opt_self();
  v53 = v43;
  v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v53 count:1];
  v45 = [(MUScrollableSegmentedPickerContentView *)self registerForTraitChanges:v44 withAction:sel__updateForContentSizeCategoryChange];

  v46 = objc_opt_self();
  v52 = v46;
  v47 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v52 count:1];
  v48 = [(MUScrollableSegmentedPickerContentView *)self registerForTraitChanges:v47 withAction:sel__updateGradientColors];

  v49 = *MEMORY[0x1E69E9840];
}

- (MUScrollableSegmentedPickerContentView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = MUScrollableSegmentedPickerContentView;
  v3 = [(MUScrollableSegmentedPickerContentView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(MUScrollableSegmentedPickerContentView *)v3 _setupSubviews];
  }

  return v4;
}

@end