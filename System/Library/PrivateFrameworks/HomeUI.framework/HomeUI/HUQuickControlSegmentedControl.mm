@interface HUQuickControlSegmentedControl
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (BOOL)preferVerticalLayout;
- (HUQuickControlSegmentedControl)initWithSegments:(id)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)_handleGesture:(id)a3;
- (void)_setupConstraints;
- (void)_updateSegmentSelectionStateAnimated:(BOOL)a3;
- (void)_updateSegmentViewsForUILayoutDirection;
- (void)ensureCorrectHeaderViewOrientation;
- (void)layoutSubviews;
- (void)setSelectedSegmentIndex:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation HUQuickControlSegmentedControl

- (HUQuickControlSegmentedControl)initWithSegments:(id)a3
{
  v4 = a3;
  v28.receiver = self;
  v28.super_class = HUQuickControlSegmentedControl;
  v5 = [(HUQuickControlSegmentedControl *)&v28 init];
  if (v5)
  {
    v6 = [v4 copy];
    segments = v5->_segments;
    v5->_segments = v6;

    v27[0] = 0;
    v27[1] = v27;
    v27[2] = 0x2020000000;
    v27[3] = 0;
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __51__HUQuickControlSegmentedControl_initWithSegments___block_invoke;
    v26[3] = &unk_277DBBAB0;
    v26[4] = v27;
    v8 = [v4 na_map:v26];
    [(HUQuickControlSegmentedControl *)v5 setSegmentViews:v8];

    [(HUQuickControlSegmentedControl *)v5 _updateSegmentViewsForUILayoutDirection];
    v9 = objc_alloc(MEMORY[0x277D75A68]);
    v10 = [(HUQuickControlSegmentedControl *)v5 segmentViews];
    v11 = [v9 initWithArrangedSubviews:v10];
    [(HUQuickControlSegmentedControl *)v5 setSegmentStackView:v11];

    v12 = [(HUQuickControlSegmentedControl *)v5 segmentStackView];
    [v12 setTranslatesAutoresizingMaskIntoConstraints:0];

    v13 = [(HUQuickControlSegmentedControl *)v5 segmentStackView];
    [v13 setAxis:0];

    v14 = [(HUQuickControlSegmentedControl *)v5 segmentStackView];
    [v14 setDistribution:1];

    v15 = [(HUQuickControlSegmentedControl *)v5 segmentStackView];
    [(HUQuickControlSegmentedControl *)v5 addSubview:v15];

    v16 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:v5 action:sel__handleGesture_];
    [(HUQuickControlSegmentedControl *)v5 setGestureRecognizer:v16];

    v17 = [(HUQuickControlSegmentedControl *)v5 gestureRecognizer];
    [v17 setMinimumPressDuration:0.0];

    v18 = [(HUQuickControlSegmentedControl *)v5 gestureRecognizer];
    [(HUQuickControlSegmentedControl *)v5 addGestureRecognizer:v18];

    +[HUQuickControlSegmentedControlSegment borderInset];
    v20 = v19;
    v21 = [(HUQuickControlSegmentedControl *)v5 layer];
    [v21 setBorderWidth:v20];

    v22 = +[HUQuickControlSegmentedControlSegment selectedColor];
    v23 = [v22 CGColor];
    v24 = [(HUQuickControlSegmentedControl *)v5 layer];
    [v24 setBorderColor:v23];

    [(HUQuickControlSegmentedControl *)v5 setClipsToBounds:1];
    [(HUQuickControlSegmentedControl *)v5 _setupConstraints];
    _Block_object_dispose(v27, 8);
  }

  return v5;
}

HUQuickControlSegmentedControlSegment *__51__HUQuickControlSegmentedControl_initWithSegments___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __51__HUQuickControlSegmentedControl_initWithSegments___block_invoke_2;
  aBlock[3] = &unk_277DB7768;
  aBlock[4] = *(a1 + 32);
  v4 = _Block_copy(aBlock);
  v5 = objc_alloc_init(HUQuickControlSegmentedControlSegment);
  [(HUQuickControlSegmentedControlSegment *)v5 setTitle:v3];
  [(HUQuickControlSegmentedControlSegment *)v5 setTag:*(*(*(a1 + 32) + 8) + 24)];
  if (v4)
  {
    v4[2](v4);
  }

  return v5;
}

- (void)setSelectedSegmentIndex:(id)a3
{
  v5 = a3;
  if (self->_selectedSegmentIndex)
  {
    selectedSegmentIndex = self->_selectedSegmentIndex;
  }

  else
  {
    selectedSegmentIndex = &unk_2824911C0;
  }

  v7 = v5;
  if (([(NSNumber *)selectedSegmentIndex isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_selectedSegmentIndex, a3);
    [(HUQuickControlSegmentedControl *)self _updateSegmentSelectionStateAnimated:0];
  }
}

- (void)_handleGesture:(id)a3
{
  v21 = a3;
  [v21 locationInView:self];
  v4 = [(HUQuickControlSegmentedControl *)self hitTest:0 withEvent:?];
  objc_opt_class();
  v5 = v4;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v7, "tag")}];
  }

  else
  {
    v8 = 0;
  }

  v9 = [v21 state];
  v10 = v8;
  if ((v9 - 1) < 2)
  {
    goto LABEL_21;
  }

  if (v9 != 4)
  {
    if (v9 != 3)
    {
      goto LABEL_22;
    }

    if (v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = [(HUQuickControlSegmentedControl *)self selectedSegmentIndex];
    }

    v12 = v11;
    v13 = [(HUQuickControlSegmentedControl *)self selectedSegmentIndex];
    v14 = v13;
    if (v12 == v13)
    {

      v20 = v12;
      selectedSegmentIndex = self->_selectedSegmentIndex;
      self->_selectedSegmentIndex = v20;
    }

    else
    {
      v15 = [(HUQuickControlSegmentedControl *)self selectedSegmentIndex];
      v16 = [v12 isEqual:v15];

      objc_storeStrong(&self->_selectedSegmentIndex, v12);
      if (v16)
      {
        goto LABEL_19;
      }

      v17 = [(HUQuickControlSegmentedControl *)self selectionChangeHandler];

      if (!v17)
      {
        goto LABEL_19;
      }

      selectedSegmentIndex = [(HUQuickControlSegmentedControl *)self selectionChangeHandler];
      v19 = [(HUQuickControlSegmentedControl *)self selectedSegmentIndex];
      (selectedSegmentIndex)[2](selectedSegmentIndex, v19);
    }

LABEL_19:
  }

  v10 = 0;
LABEL_21:
  [(HUQuickControlSegmentedControl *)self setTrackingSegmentIndex:v10];
  [(HUQuickControlSegmentedControl *)self _updateSegmentSelectionStateAnimated:1];
LABEL_22:
}

- (void)_updateSegmentSelectionStateAnimated:(BOOL)a3
{
  v3 = 0.15;
  if (!a3)
  {
    v3 = 0.0;
  }

  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __71__HUQuickControlSegmentedControl__updateSegmentSelectionStateAnimated___block_invoke;
  v4[3] = &unk_277DB8488;
  v4[4] = self;
  [MEMORY[0x277D75D18] animateWithDuration:v4 animations:v3];
}

void __71__HUQuickControlSegmentedControl__updateSegmentSelectionStateAnimated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) segmentViews];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __71__HUQuickControlSegmentedControl__updateSegmentSelectionStateAnimated___block_invoke_2;
  v3[3] = &unk_277DBBAD8;
  v3[4] = *(a1 + 32);
  [v2 enumerateObjectsUsingBlock:v3];
}

void __71__HUQuickControlSegmentedControl__updateSegmentSelectionStateAnimated___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x277CCABB0];
  v6 = a2;
  v7 = [v5 numberWithUnsignedInteger:a3];
  v8 = [*(a1 + 32) selectedSegmentIndex];
  [v6 setSelected:{objc_msgSend(v7, "isEqual:", v8)}];

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v9 = [*(a1 + 32) trackingSegmentIndex];
  [v6 setHighlighted:{objc_msgSend(v10, "isEqual:", v9)}];
}

- (void)_updateSegmentViewsForUILayoutDirection
{
  v3 = [(HUQuickControlSegmentedControl *)self effectiveUserInterfaceLayoutDirection];
  if (![(HUQuickControlSegmentedControl *)self preferVerticalLayout])
  {
    v4 = v3 == 1;
    v5 = [(HUQuickControlSegmentedControl *)self segmentViews];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __73__HUQuickControlSegmentedControl__updateSegmentViewsForUILayoutDirection__block_invoke;
    v6[3] = &unk_277DBBB28;
    v7 = v4;
    v6[4] = self;
    [v5 enumerateObjectsUsingBlock:v6];
  }
}

void __73__HUQuickControlSegmentedControl__updateSegmentViewsForUILayoutDirection__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (*(a1 + 40) == 1)
  {
    v6 = [*(a1 + 32) segments];
    a3 = [v6 count] + ~a3;
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __73__HUQuickControlSegmentedControl__updateSegmentViewsForUILayoutDirection__block_invoke_2;
  v7[3] = &unk_277DBBB00;
  v7[4] = *(a1 + 32);
  v7[5] = a3;
  [v5 setRoundedCorners:__73__HUQuickControlSegmentedControl__updateSegmentViewsForUILayoutDirection__block_invoke_2(v7)];
}

uint64_t __73__HUQuickControlSegmentedControl__updateSegmentViewsForUILayoutDirection__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (!v1)
  {
    return 5;
  }

  v2 = [*(a1 + 32) segments];
  v3 = [v2 count] - 1;

  if (v1 == v3)
  {
    return 10;
  }

  else
  {
    return 0;
  }
}

- (void)_setupConstraints
{
  v23 = [MEMORY[0x277CBEB18] array];
  v3 = [(HUQuickControlSegmentedControl *)self layer];
  [v3 borderWidth];
  v5 = v4;

  v6 = [(HUQuickControlSegmentedControl *)self segmentStackView];
  v7 = [v6 centerXAnchor];
  v8 = [(HUQuickControlSegmentedControl *)self centerXAnchor];
  v9 = [v7 constraintEqualToAnchor:v8];
  [v23 addObject:v9];

  v10 = [(HUQuickControlSegmentedControl *)self segmentStackView];
  v11 = [v10 centerYAnchor];
  v12 = [(HUQuickControlSegmentedControl *)self centerYAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];
  [v23 addObject:v13];

  v14 = [(HUQuickControlSegmentedControl *)self segmentStackView];
  v15 = [v14 widthAnchor];
  v16 = [(HUQuickControlSegmentedControl *)self widthAnchor];
  v17 = v5 * -2.0;
  v18 = [v15 constraintEqualToAnchor:v16 constant:v17];
  [v23 addObject:v18];

  v19 = [(HUQuickControlSegmentedControl *)self segmentStackView];
  v20 = [v19 heightAnchor];
  v21 = [(HUQuickControlSegmentedControl *)self heightAnchor];
  v22 = [v20 constraintEqualToAnchor:v21 constant:v17];
  [v23 addObject:v22];

  [MEMORY[0x277CCAAD0] activateConstraints:v23];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = HUQuickControlSegmentedControl;
  [(HUQuickControlSegmentedControl *)&v4 traitCollectionDidChange:a3];
  [(HUQuickControlSegmentedControl *)self _updateSegmentViewsForUILayoutDirection];
}

- (BOOL)preferVerticalLayout
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = [(HUQuickControlSegmentedControl *)self segmentViews];
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    v7 = *MEMORY[0x277D76C78];
    v8 = *(MEMORY[0x277D76C78] + 8);
    v9 = 0.0;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v15 + 1) + 8 * i) systemLayoutSizeFittingSize:{v7, v8}];
        v9 = v9 + v11;
      }

      v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  else
  {
    v9 = 0.0;
  }

  v12 = [(HUQuickControlSegmentedControl *)self superview];
  [v12 bounds];
  v13 = v9 > CGRectGetWidth(v21);

  return v13;
}

- (void)ensureCorrectHeaderViewOrientation
{
  v5 = [(HUQuickControlSegmentedControl *)self segmentStackView];
  v3 = [(HUQuickControlSegmentedControl *)self preferVerticalLayout];
  v4 = !v3;
  [v5 setAxis:v3];
  [v5 setDistribution:v4];
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = HUQuickControlSegmentedControl;
  [(HUQuickControlSegmentedControl *)&v6 layoutSubviews];
  [(HUQuickControlSegmentedControl *)self ensureCorrectHeaderViewOrientation];
  [(HUQuickControlSegmentedControl *)self bounds];
  v4 = v3 * 0.5;
  v5 = [(HUQuickControlSegmentedControl *)self layer];
  [v5 setCornerRadius:v4];
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  [(HUQuickControlSegmentedControl *)self bounds];
  v11 = CGRectInset(v10, 0.0, -10.0);
  v6 = x;
  v7 = y;

  return CGRectContainsPoint(v11, *&v6);
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v25 = *MEMORY[0x277D85DE8];
  v7 = a4;
  if ([(HUQuickControlSegmentedControl *)self pointInside:v7 withEvent:x, y])
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = [(HUQuickControlSegmentedControl *)self segmentViews];
    v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      v12 = *v21;
      v13 = 1.79769313e308;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v21 != v12)
          {
            objc_enumerationMutation(v8);
          }

          v15 = *(*(&v20 + 1) + 8 * i);
          [v15 center];
          UIDistanceBetweenPoints();
          if (v16 < v13)
          {
            v17 = v16;
            v18 = v15;

            v13 = v17;
            v11 = v18;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v10);
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end