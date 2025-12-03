@interface HUQuickControlSegmentedControl
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (BOOL)preferVerticalLayout;
- (HUQuickControlSegmentedControl)initWithSegments:(id)segments;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)_handleGesture:(id)gesture;
- (void)_setupConstraints;
- (void)_updateSegmentSelectionStateAnimated:(BOOL)animated;
- (void)_updateSegmentViewsForUILayoutDirection;
- (void)ensureCorrectHeaderViewOrientation;
- (void)layoutSubviews;
- (void)setSelectedSegmentIndex:(id)index;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation HUQuickControlSegmentedControl

- (HUQuickControlSegmentedControl)initWithSegments:(id)segments
{
  segmentsCopy = segments;
  v28.receiver = self;
  v28.super_class = HUQuickControlSegmentedControl;
  v5 = [(HUQuickControlSegmentedControl *)&v28 init];
  if (v5)
  {
    v6 = [segmentsCopy copy];
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
    v8 = [segmentsCopy na_map:v26];
    [(HUQuickControlSegmentedControl *)v5 setSegmentViews:v8];

    [(HUQuickControlSegmentedControl *)v5 _updateSegmentViewsForUILayoutDirection];
    v9 = objc_alloc(MEMORY[0x277D75A68]);
    segmentViews = [(HUQuickControlSegmentedControl *)v5 segmentViews];
    v11 = [v9 initWithArrangedSubviews:segmentViews];
    [(HUQuickControlSegmentedControl *)v5 setSegmentStackView:v11];

    segmentStackView = [(HUQuickControlSegmentedControl *)v5 segmentStackView];
    [segmentStackView setTranslatesAutoresizingMaskIntoConstraints:0];

    segmentStackView2 = [(HUQuickControlSegmentedControl *)v5 segmentStackView];
    [segmentStackView2 setAxis:0];

    segmentStackView3 = [(HUQuickControlSegmentedControl *)v5 segmentStackView];
    [segmentStackView3 setDistribution:1];

    segmentStackView4 = [(HUQuickControlSegmentedControl *)v5 segmentStackView];
    [(HUQuickControlSegmentedControl *)v5 addSubview:segmentStackView4];

    v16 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:v5 action:sel__handleGesture_];
    [(HUQuickControlSegmentedControl *)v5 setGestureRecognizer:v16];

    gestureRecognizer = [(HUQuickControlSegmentedControl *)v5 gestureRecognizer];
    [gestureRecognizer setMinimumPressDuration:0.0];

    gestureRecognizer2 = [(HUQuickControlSegmentedControl *)v5 gestureRecognizer];
    [(HUQuickControlSegmentedControl *)v5 addGestureRecognizer:gestureRecognizer2];

    +[HUQuickControlSegmentedControlSegment borderInset];
    v20 = v19;
    layer = [(HUQuickControlSegmentedControl *)v5 layer];
    [layer setBorderWidth:v20];

    v22 = +[HUQuickControlSegmentedControlSegment selectedColor];
    cGColor = [v22 CGColor];
    layer2 = [(HUQuickControlSegmentedControl *)v5 layer];
    [layer2 setBorderColor:cGColor];

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

- (void)setSelectedSegmentIndex:(id)index
{
  indexCopy = index;
  if (self->_selectedSegmentIndex)
  {
    selectedSegmentIndex = self->_selectedSegmentIndex;
  }

  else
  {
    selectedSegmentIndex = &unk_2824911C0;
  }

  v7 = indexCopy;
  if (([(NSNumber *)selectedSegmentIndex isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_selectedSegmentIndex, index);
    [(HUQuickControlSegmentedControl *)self _updateSegmentSelectionStateAnimated:0];
  }
}

- (void)_handleGesture:(id)gesture
{
  gestureCopy = gesture;
  [gestureCopy locationInView:self];
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

  state = [gestureCopy state];
  v10 = v8;
  if ((state - 1) < 2)
  {
    goto LABEL_21;
  }

  if (state != 4)
  {
    if (state != 3)
    {
      goto LABEL_22;
    }

    if (v8)
    {
      selectedSegmentIndex = v8;
    }

    else
    {
      selectedSegmentIndex = [(HUQuickControlSegmentedControl *)self selectedSegmentIndex];
    }

    v12 = selectedSegmentIndex;
    selectedSegmentIndex2 = [(HUQuickControlSegmentedControl *)self selectedSegmentIndex];
    v14 = selectedSegmentIndex2;
    if (v12 == selectedSegmentIndex2)
    {

      v20 = v12;
      selectedSegmentIndex = self->_selectedSegmentIndex;
      self->_selectedSegmentIndex = v20;
    }

    else
    {
      selectedSegmentIndex3 = [(HUQuickControlSegmentedControl *)self selectedSegmentIndex];
      v16 = [v12 isEqual:selectedSegmentIndex3];

      objc_storeStrong(&self->_selectedSegmentIndex, v12);
      if (v16)
      {
        goto LABEL_19;
      }

      selectionChangeHandler = [(HUQuickControlSegmentedControl *)self selectionChangeHandler];

      if (!selectionChangeHandler)
      {
        goto LABEL_19;
      }

      selectedSegmentIndex = [(HUQuickControlSegmentedControl *)self selectionChangeHandler];
      selectedSegmentIndex4 = [(HUQuickControlSegmentedControl *)self selectedSegmentIndex];
      (selectedSegmentIndex)[2](selectedSegmentIndex, selectedSegmentIndex4);
    }

LABEL_19:
  }

  v10 = 0;
LABEL_21:
  [(HUQuickControlSegmentedControl *)self setTrackingSegmentIndex:v10];
  [(HUQuickControlSegmentedControl *)self _updateSegmentSelectionStateAnimated:1];
LABEL_22:
}

- (void)_updateSegmentSelectionStateAnimated:(BOOL)animated
{
  v3 = 0.15;
  if (!animated)
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
  effectiveUserInterfaceLayoutDirection = [(HUQuickControlSegmentedControl *)self effectiveUserInterfaceLayoutDirection];
  if (![(HUQuickControlSegmentedControl *)self preferVerticalLayout])
  {
    v4 = effectiveUserInterfaceLayoutDirection == 1;
    segmentViews = [(HUQuickControlSegmentedControl *)self segmentViews];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __73__HUQuickControlSegmentedControl__updateSegmentViewsForUILayoutDirection__block_invoke;
    v6[3] = &unk_277DBBB28;
    v7 = v4;
    v6[4] = self;
    [segmentViews enumerateObjectsUsingBlock:v6];
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
  array = [MEMORY[0x277CBEB18] array];
  layer = [(HUQuickControlSegmentedControl *)self layer];
  [layer borderWidth];
  v5 = v4;

  segmentStackView = [(HUQuickControlSegmentedControl *)self segmentStackView];
  centerXAnchor = [segmentStackView centerXAnchor];
  centerXAnchor2 = [(HUQuickControlSegmentedControl *)self centerXAnchor];
  v9 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [array addObject:v9];

  segmentStackView2 = [(HUQuickControlSegmentedControl *)self segmentStackView];
  centerYAnchor = [segmentStackView2 centerYAnchor];
  centerYAnchor2 = [(HUQuickControlSegmentedControl *)self centerYAnchor];
  v13 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  [array addObject:v13];

  segmentStackView3 = [(HUQuickControlSegmentedControl *)self segmentStackView];
  widthAnchor = [segmentStackView3 widthAnchor];
  widthAnchor2 = [(HUQuickControlSegmentedControl *)self widthAnchor];
  v17 = v5 * -2.0;
  v18 = [widthAnchor constraintEqualToAnchor:widthAnchor2 constant:v17];
  [array addObject:v18];

  segmentStackView4 = [(HUQuickControlSegmentedControl *)self segmentStackView];
  heightAnchor = [segmentStackView4 heightAnchor];
  heightAnchor2 = [(HUQuickControlSegmentedControl *)self heightAnchor];
  v22 = [heightAnchor constraintEqualToAnchor:heightAnchor2 constant:v17];
  [array addObject:v22];

  [MEMORY[0x277CCAAD0] activateConstraints:array];
}

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = HUQuickControlSegmentedControl;
  [(HUQuickControlSegmentedControl *)&v4 traitCollectionDidChange:change];
  [(HUQuickControlSegmentedControl *)self _updateSegmentViewsForUILayoutDirection];
}

- (BOOL)preferVerticalLayout
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  segmentViews = [(HUQuickControlSegmentedControl *)self segmentViews];
  v4 = [segmentViews countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(segmentViews);
        }

        [*(*(&v15 + 1) + 8 * i) systemLayoutSizeFittingSize:{v7, v8}];
        v9 = v9 + v11;
      }

      v5 = [segmentViews countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  else
  {
    v9 = 0.0;
  }

  superview = [(HUQuickControlSegmentedControl *)self superview];
  [superview bounds];
  v13 = v9 > CGRectGetWidth(v21);

  return v13;
}

- (void)ensureCorrectHeaderViewOrientation
{
  segmentStackView = [(HUQuickControlSegmentedControl *)self segmentStackView];
  preferVerticalLayout = [(HUQuickControlSegmentedControl *)self preferVerticalLayout];
  v4 = !preferVerticalLayout;
  [segmentStackView setAxis:preferVerticalLayout];
  [segmentStackView setDistribution:v4];
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = HUQuickControlSegmentedControl;
  [(HUQuickControlSegmentedControl *)&v6 layoutSubviews];
  [(HUQuickControlSegmentedControl *)self ensureCorrectHeaderViewOrientation];
  [(HUQuickControlSegmentedControl *)self bounds];
  v4 = v3 * 0.5;
  layer = [(HUQuickControlSegmentedControl *)self layer];
  [layer setCornerRadius:v4];
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  [(HUQuickControlSegmentedControl *)self bounds];
  v11 = CGRectInset(v10, 0.0, -10.0);
  v6 = x;
  v7 = y;

  return CGRectContainsPoint(v11, *&v6);
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  v25 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  if ([(HUQuickControlSegmentedControl *)self pointInside:eventCopy withEvent:x, y])
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    segmentViews = [(HUQuickControlSegmentedControl *)self segmentViews];
    v9 = [segmentViews countByEnumeratingWithState:&v20 objects:v24 count:16];
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
            objc_enumerationMutation(segmentViews);
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

        v10 = [segmentViews countByEnumeratingWithState:&v20 objects:v24 count:16];
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