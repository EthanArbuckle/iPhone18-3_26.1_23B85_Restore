@interface HUQuickControlStepperView
- (BOOL)_shouldRequireMinimumDragDistanceForGestureRecognizer:(id)a3;
- (CGPoint)lastTouchLocation;
- (CGSize)intrinsicContentSize;
- (HUQuickControlStepperView)initWithProfile:(id)a3;
- (HUQuickControlViewInteractionDelegate)interactionDelegate;
- (id)_stepperViewMetricsForControlSize:(unint64_t)a3;
- (id)intrinsicSizeDescriptorForControlSize:(unint64_t)a3;
- (void)_actuateTapticFeedback;
- (void)_createSegmentAndSeparatorViews;
- (void)_handleGesture:(id)a3;
- (void)_layoutSegmentViews;
- (void)_prepareForTapticFeedback;
- (void)_updateSegmentHighlightedState;
- (void)_updateUIForReachabilityState:(unint64_t)a3;
- (void)_updateUserInteractionActive:(BOOL)a3 forFirstTouch:(BOOL)a4;
- (void)layoutSubviews;
- (void)setProfile:(id)a3;
- (void)setReachabilityState:(unint64_t)a3;
- (void)setValue:(id)a3;
- (void)tintColorDidChange;
- (void)updateConstraints;
@end

@implementation HUQuickControlStepperView

- (HUQuickControlStepperView)initWithProfile:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v22 = [MEMORY[0x277CCA890] currentHandler];
    [v22 handleFailureInMethod:a2 object:self file:@"HUQuickControlStepperView.m" lineNumber:88 description:{@"Invalid parameter not satisfying: %@", @"[profile isKindOfClass:[HUQuickControlStepperViewProfile class]]"}];
  }

  v23.receiver = self;
  v23.super_class = HUQuickControlStepperView;
  v6 = [(HUQuickControlStepperView *)&v23 init];
  v7 = v6;
  if (v6)
  {
    [(HUQuickControlStepperView *)v6 setProfile:v5];
    [(HUQuickControlStepperView *)v7 setReachabilityState:0];
    v8 = objc_alloc_init(MEMORY[0x277D75D18]);
    [(HUQuickControlStepperView *)v7 setBackgroundView:v8];

    if ([MEMORY[0x277D14CE8] shouldUseControlCenterMaterials])
    {
      v9 = [MEMORY[0x277CFC960] controlCenterTertiaryMaterial];
      [v9 setAutoresizingMask:18];
      v10 = [(HUQuickControlStepperView *)v7 backgroundView];
      [v10 addSubview:v9];
    }

    else
    {
      v9 = [MEMORY[0x277D75348] quaternarySystemFillColor];
      v10 = [(HUQuickControlStepperView *)v7 backgroundView];
      [v10 setBackgroundColor:v9];
    }

    v11 = [(HUQuickControlStepperView *)v7 backgroundView];
    v12 = [v11 layer];
    [v12 setMasksToBounds:1];

    v13 = [(HUQuickControlStepperView *)v7 backgroundView];
    [v13 setAutoresizingMask:18];

    v14 = [(HUQuickControlStepperView *)v7 backgroundView];
    [(HUQuickControlStepperView *)v7 addSubview:v14];

    [(HUQuickControlStepperView *)v7 _createSegmentAndSeparatorViews];
    v15 = [(HUQuickControlStepperView *)v7 layer];
    [v15 setAllowsGroupOpacity:0];

    v16 = [(HUQuickControlStepperView *)v7 layer];
    [v16 setAllowsGroupBlending:0];

    v17 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:v7 action:sel__handleGesture_];
    [(HUQuickControlStepperView *)v7 setGestureRecognizer:v17];

    v18 = [(HUQuickControlStepperView *)v7 gestureRecognizer];
    [v18 setDelegate:v7];

    v19 = [(HUQuickControlStepperView *)v7 gestureRecognizer];
    [v19 setMinimumPressDuration:0.0];

    v20 = [(HUQuickControlStepperView *)v7 gestureRecognizer];
    [(HUQuickControlStepperView *)v7 addGestureRecognizer:v20];

    [(HUQuickControlStepperView *)v7 _prepareForTapticFeedback];
  }

  return v7;
}

- (void)setProfile:(id)a3
{
  v4 = a3;
  v5 = [(HUQuickControlViewProfile *)self->_profile controlSize];
  v6 = [(HUQuickControlViewProfile *)v4 controlSize];
  profile = self->_profile;
  self->_profile = v4;

  [(HUQuickControlStepperView *)self setNeedsLayout];
  if (v5 != v6)
  {

    [(HUQuickControlStepperView *)self invalidateIntrinsicContentSize];
  }
}

- (void)_createSegmentAndSeparatorViews
{
  v29 = objc_opt_new();
  v27 = objc_opt_new();
  v26 = objc_opt_new();
  v3 = [(HUQuickControlStepperView *)self profile];
  v4 = [v3 numberOfSegments];

  if (v4)
  {
    v5 = 0;
    v28 = MEMORY[0x277D85DD0];
    do
    {
      v30[0] = v28;
      v30[1] = 3221225472;
      v30[2] = __60__HUQuickControlStepperView__createSegmentAndSeparatorViews__block_invoke;
      v30[3] = &unk_277DBBB00;
      v30[4] = self;
      v30[5] = v5;
      v6 = __60__HUQuickControlStepperView__createSegmentAndSeparatorViews__block_invoke(v30);
      if (v6)
      {
        v7 = objc_alloc_init(MEMORY[0x277D75D68]);
        if ([MEMORY[0x277D14CE8] shouldUseControlCenterMaterials])
        {
          v8 = [MEMORY[0x277D75D00] controlCenterKeyLineOnDarkVibrancyEffect];
          [v7 setEffect:v8];
        }

        v9 = objc_alloc_init(HUQuickControlStepperSeparatorView);
        v10 = [v7 contentView];
        [v10 addSubview:v9];

        v11 = [(HUQuickControlStepperView *)self backgroundView];
        [v11 addSubview:v7];

        [v27 addObject:v9];
        [v26 addObject:v7];
        [v7 setTag:v5];
      }

      v12 = [HUQuickControlStepperSegmentView alloc];
      v13 = [(HUQuickControlStepperView *)self profile];
      v14 = [v13 stepperStyle];
      v15 = [(HUQuickControlStepperView *)self profile];
      v16 = [v15 orientation];
      v17 = [(HUQuickControlStepperView *)self profile];
      v18 = -[HUQuickControlStepperSegmentView initWithStyle:orientation:controlSize:](v12, "initWithStyle:orientation:controlSize:", v14, v16, [v17 controlSize]);

      [(HUQuickControlStepperSegmentView *)v18 setTag:v5];
      [(HUQuickControlStepperSegmentView *)v18 setSegmentLocation:v6];
      v19 = [(HUQuickControlStepperView *)self profile];
      LODWORD(v12) = [v19 showSegmentTitles];

      if (v12)
      {
        v20 = [(HUQuickControlStepperView *)self profile];
        v21 = [v20 segmentTitles];
        v22 = [v21 objectAtIndexedSubscript:v5];
        [(HUQuickControlStepperSegmentView *)v18 setTitle:v22];
      }

      v23 = [(HUQuickControlStepperView *)self backgroundView];
      [v23 addSubview:v18];

      [v29 addObject:v18];
      ++v5;
      v24 = [(HUQuickControlStepperView *)self profile];
      v25 = [v24 numberOfSegments];
    }

    while (v5 < v25);
  }

  [(HUQuickControlStepperView *)self setSegmentViews:v29];
  [(HUQuickControlStepperView *)self setSeparatorViews:v27];
  [(HUQuickControlStepperView *)self setSeparatorEffectViews:v26];
}

uint64_t __60__HUQuickControlStepperView__createSegmentAndSeparatorViews__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (!v1)
  {
    return 0;
  }

  v2 = [*(a1 + 32) profile];
  v3 = [v2 numberOfSegments] - 1;

  if (v1 == v3)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (void)layoutSubviews
{
  v27 = *MEMORY[0x277D85DE8];
  v25.receiver = self;
  v25.super_class = HUQuickControlStepperView;
  [(HUQuickControlStepperView *)&v25 layoutSubviews];
  [(HUQuickControlStepperView *)self _layoutSegmentViews];
  v3 = [(HUQuickControlStepperView *)self profile];
  v4 = -[HUQuickControlStepperView _stepperViewMetricsForControlSize:](self, "_stepperViewMetricsForControlSize:", [v3 controlSize]);
  [v4 cornerRadius];
  v6 = v5;

  v7 = [(HUQuickControlStepperView *)self backgroundView];
  [v7 _setContinuousCornerRadius:v6];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = [(HUQuickControlStepperView *)self segmentViews];
  v9 = [v8 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
    v12 = fmax(v6 + -8.0, 0.0);
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v21 + 1) + 8 * i) setCornerRadius:v12];
      }

      v10 = [v8 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v10);
  }

  v14 = [(HUQuickControlStepperView *)self profile];
  v15 = [v14 stepperStyle];

  if (v15 == 1)
  {
    v16 = [MEMORY[0x277D75348] systemLightGrayColor];
    v17 = 1.0;
    goto LABEL_12;
  }

  if (!v15)
  {
    v16 = [MEMORY[0x277D75348] clearColor];
    v17 = 0.0;
LABEL_12:
    v18 = [v16 CGColor];
    v19 = [(HUQuickControlStepperView *)self layer];
    [v19 setBorderColor:v18];

    v20 = [(HUQuickControlStepperView *)self layer];
    [v20 setBorderWidth:v17];
  }

  [(HUQuickControlStepperView *)self _updateUIForReachabilityState:[(HUQuickControlStepperView *)self reachabilityState]];
}

- (void)_layoutSegmentViews
{
  v3 = [(HUQuickControlStepperView *)self profile];
  v4 = [v3 numberOfSegments];

  if (v4)
  {
    v5 = [(HUQuickControlStepperView *)self profile];
    v6 = -[HUQuickControlStepperView intrinsicSizeDescriptorForControlSize:](self, "intrinsicSizeDescriptorForControlSize:", [v5 controlSize]);
    [v6 intrinsicSize];
    v8 = v7;
    v10 = v9;

    v11 = [(HUQuickControlStepperView *)self profile];
    if ([v11 orientation])
    {
      v12 = v8;
    }

    else
    {
      v12 = v10;
    }

    UIRoundToViewScale();
    v14 = v13;
    UIFloorToViewScale();
    v16 = v15;
    v19[0] = 0;
    v19[1] = v19;
    v19[2] = 0x2020000000;
    v19[3] = 0;
    v17 = [(HUQuickControlStepperView *)self segmentViews];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __48__HUQuickControlStepperView__layoutSegmentViews__block_invoke;
    v18[3] = &unk_277DC2910;
    v18[6] = v14;
    v18[7] = v4;
    v18[8] = v16;
    v18[9] = v4 - 1;
    v18[4] = self;
    v18[5] = v19;
    v18[10] = v8;
    v18[11] = v10;
    v18[12] = v12;
    [v17 enumerateObjectsUsingBlock:v18];

    _Block_object_dispose(v19, 8);
  }
}

void __48__HUQuickControlStepperView__layoutSegmentViews__block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v36 = a2;
  v5 = 0.0;
  if (*(a1 + 56) - 1 == a3)
  {
    v5 = *(a1 + 64);
  }

  v6 = *(a1 + 48);
  v7 = *(a1 + 72);
  if (v7 <= a3)
  {
    v9 = 0;
  }

  else
  {
    v8 = [*(a1 + 32) separatorViews];
    v9 = [v8 objectAtIndexedSubscript:a3];

    v7 = *(a1 + 72);
  }

  v10 = MEMORY[0x277CBF3A0];
  if (v7 <= a3)
  {
    v12 = 0;
  }

  else
  {
    v11 = [*(a1 + 32) separatorEffectViews];
    v12 = [v11 objectAtIndexedSubscript:a3];
  }

  v13 = v10[1];
  v14 = v6 + v5;
  v15 = [*(a1 + 32) profile];
  v16 = [v15 orientation];

  if (v16 == 2)
  {
    v30 = *(a1 + 40);
    v21 = (a1 + 40);
    v31 = *(v30 + 8);
    v32 = *(v31 + 24);
    v33 = v21[6];
    v34 = v21[7] - v32 - v14;
    *(v31 + 24) = v14 + v32;
    [v36 setFrame:{v34, v13, v14, v33}];
    v20 = v34 + -1.0;
    goto LABEL_15;
  }

  if (v16 == 1)
  {
    v28 = *(a1 + 40);
    v21 = (a1 + 40);
    v29 = *(v28 + 8);
    v20 = v14 + *(v29 + 24);
    *(v29 + 24) = v20;
    [v36 setFrame:?];
LABEL_15:
    v35 = v21[6];
    v17 = v35 * 0.5;
    MaxY = (v35 - v35 * 0.5) * 0.5;
    v18 = 1.0;
    goto LABEL_16;
  }

  v17 = 0.0;
  v18 = 0.0;
  MaxY = 0.0;
  v20 = 0.0;
  if (v16)
  {
    goto LABEL_17;
  }

  v22 = *(a1 + 40);
  v21 = (a1 + 40);
  v23 = *v10;
  v24 = *(v22 + 8);
  v25 = *(v24 + 24);
  v26 = v21[5];
  *(v24 + 24) = v14 + v25;
  [v36 setFrame:{v23, v25, v26, v14}];
  v38.origin.x = v23;
  v38.origin.y = v25;
  v38.size.width = v26;
  v38.size.height = v14;
  MaxY = CGRectGetMaxY(v38);
  v27 = v21[5];
  v18 = v27 * 0.5;
  v20 = (v27 - v27 * 0.5) * 0.5;
  v17 = 1.0;
LABEL_16:
  *(*(*v21 + 8) + 24) = *(*(*v21 + 8) + 24) + 1.0;
LABEL_17:
  [v12 setFrame:{v20, MaxY, v18, v17}];
  [v9 setFrame:{0.0, 0.0, v18, v17}];
}

- (void)_handleGesture:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(HUQuickControlStepperView *)self conformsToProtocol:&unk_2824F3238]&& (objc_opt_respondsToSelector() & 1) != 0 && (![(HUQuickControlStepperView *)self reachabilityState]|| [(HUQuickControlStepperView *)self reachabilityState]== 1))
  {
    v5 = HUQuickControlReachabilityString([(HUQuickControlStepperView *)self reachabilityState]);
    v6 = HFLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v31 = 138412802;
      v32 = self;
      v33 = 2112;
      v34 = v5;
      v35 = 2080;
      v36 = "[HUQuickControlStepperView _handleGesture:]";
      _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "Control view %@ is in state %@. Ignoring long press gesture in %s.", &v31, 0x20u);
    }
  }

  else
  {
    v7 = [v4 state];
    v8 = [(HUQuickControlStepperView *)self gestureRecognizer];

    if ((v7 - 1) > 1)
    {
      if (v7 == 3)
      {
        v24 = [(HUQuickControlStepperView *)self trackingSegmentIndex];

        if (v24)
        {
          v25 = [(HUQuickControlStepperView *)self selectedSegmentIndex];
          v26 = [(HUQuickControlStepperView *)self trackingSegmentIndex];
          v27 = [v25 isEqual:v26];

          v28 = [(HUQuickControlStepperView *)self trackingSegmentIndex];
          [(HUQuickControlStepperView *)self setSelectedSegmentIndex:v28];

          if ((v27 & 1) == 0)
          {
            v29 = [(HUQuickControlStepperView *)self interactionDelegate];
            v30 = [(HUQuickControlStepperView *)self value];
            [v29 controlView:self valueDidChange:v30];
          }
        }
      }

      [(HUQuickControlStepperView *)self _updateUserInteractionActive:0 forFirstTouch:v8 != v4];
      [(HUQuickControlStepperView *)self setTrackingSegmentIndex:0];
      [(HUQuickControlStepperView *)self setAccumulatedTouchDistance:0.0];
      [(HUQuickControlStepperView *)self setLastTouchLocation:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)];
      [(HUQuickControlStepperView *)self _updateSegmentHighlightedState];
      [(HUQuickControlStepperView *)self _actuateTapticFeedback];
    }

    else
    {
      [(HUQuickControlStepperView *)self _updateUserInteractionActive:1 forFirstTouch:v8 != v4];
      [v4 locationInView:self];
      v10 = v9;
      v12 = v11;
      if (![(HUQuickControlStepperView *)self _shouldRequireMinimumDragDistanceForGestureRecognizer:v4])
      {
        goto LABEL_16;
      }

      [(HUQuickControlStepperView *)self lastTouchLocation];
      if (v14 != *MEMORY[0x277CBF348] || v13 != *(MEMORY[0x277CBF348] + 8))
      {
        [(HUQuickControlStepperView *)self lastTouchLocation];
        UIDistanceBetweenPoints();
        v17 = v16;
        [(HUQuickControlStepperView *)self accumulatedTouchDistance];
        [(HUQuickControlStepperView *)self setAccumulatedTouchDistance:v17 + v18];
      }

      [(HUQuickControlStepperView *)self setLastTouchLocation:v10, v12];
      [(HUQuickControlStepperView *)self accumulatedTouchDistance];
      if (v19 >= 25.0)
      {
LABEL_16:
        v20 = [(HUQuickControlStepperView *)self hitTest:0 withEvent:v10, v12];
        objc_opt_class();
        v21 = 0;
        if (objc_opt_isKindOfClass())
        {
          v21 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v20, "tag")}];
        }

        v22 = [(HUQuickControlStepperView *)self trackingSegmentIndex];
        v23 = [v22 isEqual:v21];

        if ((v23 & 1) == 0)
        {
          [(HUQuickControlStepperView *)self setTrackingSegmentIndex:v21];
          [(HUQuickControlStepperView *)self _updateSegmentHighlightedState];
        }
      }
    }
  }
}

- (void)_updateSegmentHighlightedState
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __59__HUQuickControlStepperView__updateSegmentHighlightedState__block_invoke;
  v2[3] = &unk_277DB8488;
  v2[4] = self;
  [MEMORY[0x277D75D18] animateWithDuration:v2 animations:0.15];
}

void __59__HUQuickControlStepperView__updateSegmentHighlightedState__block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) trackingSegmentIndex];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = [*(a1 + 32) selectedSegmentIndex];
  }

  v5 = v4;

  if ([*(a1 + 32) reachabilityState] == 1 || !objc_msgSend(*(a1 + 32), "reachabilityState"))
  {
    v8 = 1;
    v6 = v5;
    v5 = 0;
    goto LABEL_9;
  }

  if (v5)
  {
    v6 = [*(a1 + 32) segmentViews];
    v7 = [v6 objectAtIndexedSubscript:{objc_msgSend(v5, "integerValue")}];
    [v7 setIsSegmentViewHighlighted:1];

    v8 = 0;
LABEL_9:

    goto LABEL_10;
  }

  v8 = 1;
LABEL_10:
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v9 = [*(a1 + 32) segmentViews];
  v10 = [v9 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v30;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v30 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v29 + 1) + 8 * i);
        if ((v8 & 1) == 0)
        {
          v15 = [*(*(&v29 + 1) + 8 * i) tag];
          if (v15 == [v5 integerValue])
          {
            continue;
          }
        }

        [v14 setIsSegmentViewHighlighted:0];
      }

      v11 = [v9 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v11);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v16 = [*(a1 + 32) separatorEffectViews];
  v17 = [v16 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v26;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v26 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v25 + 1) + 8 * j);
        if (v8)
        {
          v22 = 0;
        }

        else
        {
          v23 = [*(*(&v25 + 1) + 8 * j) tag];
          if (v23 == [v5 integerValue])
          {
            v22 = 1;
          }

          else
          {
            v24 = [v21 tag];
            v22 = v24 == [v5 integerValue] + 1;
          }
        }

        [v21 setHidden:v22];
      }

      v18 = [v16 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v18);
  }
}

- (BOOL)_shouldRequireMinimumDragDistanceForGestureRecognizer:(id)a3
{
  v4 = a3;
  v5 = [(HUQuickControlStepperView *)self gestureRecognizer];

  return v5 != v4;
}

- (void)_updateUserInteractionActive:(BOOL)a3 forFirstTouch:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if ([(HUQuickControlStepperView *)self isUserInteractionActive]!= a3)
  {
    [(HUQuickControlStepperView *)self setUserInteractionActive:v5];
    v7 = [(HUQuickControlStepperView *)self interactionDelegate];
    [v7 controlView:self interactionStateDidChange:v5 forFirstTouch:v4];
  }
}

- (void)updateConstraints
{
  v23.receiver = self;
  v23.super_class = HUQuickControlStepperView;
  [(HUQuickControlStepperView *)&v23 updateConstraints];
  v3 = MEMORY[0x277CCAAD0];
  v4 = [(HUQuickControlStepperView *)self constraints];
  [v3 deactivateConstraints:v4];

  v5 = [MEMORY[0x277CBEB18] array];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __46__HUQuickControlStepperView_updateConstraints__block_invoke;
  aBlock[3] = &unk_277DB9438;
  v21 = v5;
  v22 = self;
  v6 = v5;
  v7 = _Block_copy(aBlock);
  v8 = [(HUQuickControlStepperView *)self backgroundView];
  v7[2](v7, v8);

  v9 = [(HUQuickControlStepperView *)self profile];
  v10 = -[HUQuickControlStepperView intrinsicSizeDescriptorForControlSize:](self, "intrinsicSizeDescriptorForControlSize:", [v9 controlSize]);
  [v10 intrinsicSize];
  v12 = v11;
  v14 = v13;

  v15 = [(HUQuickControlStepperView *)self widthAnchor];
  v16 = [v15 constraintEqualToConstant:v12];
  [v16 setActive:1];

  v17 = [(HUQuickControlStepperView *)self heightAnchor];
  v18 = [v17 constraintEqualToConstant:v14];
  [v18 setActive:1];

  [MEMORY[0x277CCAAD0] activateConstraints:v6];
  [(HUQuickControlStepperView *)self setConstraints:v6];
  v19.receiver = self;
  v19.super_class = HUQuickControlStepperView;
  [(HUQuickControlStepperView *)&v19 updateConstraints];
}

void __46__HUQuickControlStepperView_updateConstraints__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 topAnchor];
  v6 = [*(a1 + 40) topAnchor];
  v7 = [v5 constraintEqualToAnchor:v6];
  [v3 addObject:v7];

  v8 = *(a1 + 32);
  v9 = [v4 bottomAnchor];
  v10 = [*(a1 + 40) bottomAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];
  [v8 addObject:v11];

  v12 = *(a1 + 32);
  v13 = [v4 leadingAnchor];
  v14 = [*(a1 + 40) leadingAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];
  [v12 addObject:v15];

  v16 = *(a1 + 32);
  v19 = [v4 trailingAnchor];

  v17 = [*(a1 + 40) trailingAnchor];
  v18 = [v19 constraintEqualToAnchor:v17];
  [v16 addObject:v18];
}

- (id)_stepperViewMetricsForControlSize:(unint64_t)a3
{
  v5 = [(HUQuickControlStepperView *)self profile];
  v6 = [v5 orientation];
  v7 = [(HUQuickControlStepperView *)self profile];
  v8 = HUQuickControlStepperViewMetricsForOrientation(a3, v6, [v7 numberOfSegments]);

  return v8;
}

- (CGSize)intrinsicContentSize
{
  v3 = [(HUQuickControlStepperView *)self profile];
  v4 = [v3 controlSize];
  v5 = [(HUQuickControlStepperView *)self profile];
  v6 = [v5 orientation];
  v7 = [(HUQuickControlStepperView *)self profile];
  v8 = HUQuickControlStepperViewMetricsForOrientation(v4, v6, [v7 numberOfSegments]);
  v9 = [v8 sizeDescriptor];
  [v9 intrinsicSize];
  v11 = v10;
  v13 = v12;

  v14 = v11;
  v15 = v13;
  result.height = v15;
  result.width = v14;
  return result;
}

- (void)_prepareForTapticFeedback
{
  v3 = [objc_alloc(MEMORY[0x277D755F0]) initWithStyle:3];
  [(HUQuickControlStepperView *)self setFeedbackGenerator:v3];

  v4 = [(HUQuickControlStepperView *)self feedbackGenerator];
  [v4 prepare];
}

- (void)_actuateTapticFeedback
{
  v3 = [(HUQuickControlStepperView *)self feedbackGenerator];
  [v3 impactOccurred];

  v4 = [(HUQuickControlStepperView *)self feedbackGenerator];
  [v4 prepare];
}

- (id)intrinsicSizeDescriptorForControlSize:(unint64_t)a3
{
  v3 = [(HUQuickControlStepperView *)self _stepperViewMetricsForControlSize:a3];
  v4 = [v3 sizeDescriptor];

  return v4;
}

- (void)setValue:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v10 = v4;
  if (v10)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v10;
    }

    else
    {
      v6 = 0;
    }

    v7 = v10;
    if (v6)
    {
      goto LABEL_8;
    }

    v8 = [MEMORY[0x277CCA890] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [v8 handleFailureInFunction:v9 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v5, objc_opt_class()}];
  }

  v7 = 0;
LABEL_8:

  [(HUQuickControlStepperView *)self setSelectedSegmentIndex:v7];
  [(HUQuickControlStepperView *)self _updateSegmentHighlightedState];
}

- (void)setReachabilityState:(unint64_t)a3
{
  v15 = *MEMORY[0x277D85DE8];
  self->_reachabilityState = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(HUQuickControlStepperView *)self segmentViews];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) setReachabilityState:a3];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  [(HUQuickControlStepperView *)self _updateUIForReachabilityState:a3];
}

- (void)tintColorDidChange
{
  v5.receiver = self;
  v5.super_class = HUQuickControlStepperView;
  [(HUQuickControlStepperView *)&v5 tintColorDidChange];
  v3 = [(HUQuickControlStepperView *)self segmentViews];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __47__HUQuickControlStepperView_tintColorDidChange__block_invoke;
  v4[3] = &unk_277DC2938;
  v4[4] = self;
  [v3 enumerateObjectsUsingBlock:v4];
}

void __47__HUQuickControlStepperView_tintColorDidChange__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v2 profile];
  v4 = [v5 tintColor];
  [v3 setTintColor:v4];
}

- (void)_updateUIForReachabilityState:(unint64_t)a3
{
  if (a3 >= 2)
  {
    if (a3 != 2)
    {
      goto LABEL_6;
    }

    v4 = 1;
    v5 = 1.0;
  }

  else
  {
    v4 = 0;
    v5 = 0.5;
  }

  [(HUQuickControlStepperView *)self setAlpha:v5];
  [(HUQuickControlStepperView *)self setUserInteractionEnabled:v4];
LABEL_6:

  [(HUQuickControlStepperView *)self _updateSegmentHighlightedState];
}

- (HUQuickControlViewInteractionDelegate)interactionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_interactionDelegate);

  return WeakRetained;
}

- (CGPoint)lastTouchLocation
{
  x = self->_lastTouchLocation.x;
  y = self->_lastTouchLocation.y;
  result.y = y;
  result.x = x;
  return result;
}

@end