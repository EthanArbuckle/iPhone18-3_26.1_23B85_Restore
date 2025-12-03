@interface HUQuickControlStepperView
- (BOOL)_shouldRequireMinimumDragDistanceForGestureRecognizer:(id)recognizer;
- (CGPoint)lastTouchLocation;
- (CGSize)intrinsicContentSize;
- (HUQuickControlStepperView)initWithProfile:(id)profile;
- (HUQuickControlViewInteractionDelegate)interactionDelegate;
- (id)_stepperViewMetricsForControlSize:(unint64_t)size;
- (id)intrinsicSizeDescriptorForControlSize:(unint64_t)size;
- (void)_actuateTapticFeedback;
- (void)_createSegmentAndSeparatorViews;
- (void)_handleGesture:(id)gesture;
- (void)_layoutSegmentViews;
- (void)_prepareForTapticFeedback;
- (void)_updateSegmentHighlightedState;
- (void)_updateUIForReachabilityState:(unint64_t)state;
- (void)_updateUserInteractionActive:(BOOL)active forFirstTouch:(BOOL)touch;
- (void)layoutSubviews;
- (void)setProfile:(id)profile;
- (void)setReachabilityState:(unint64_t)state;
- (void)setValue:(id)value;
- (void)tintColorDidChange;
- (void)updateConstraints;
@end

@implementation HUQuickControlStepperView

- (HUQuickControlStepperView)initWithProfile:(id)profile
{
  profileCopy = profile;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HUQuickControlStepperView.m" lineNumber:88 description:{@"Invalid parameter not satisfying: %@", @"[profile isKindOfClass:[HUQuickControlStepperViewProfile class]]"}];
  }

  v23.receiver = self;
  v23.super_class = HUQuickControlStepperView;
  v6 = [(HUQuickControlStepperView *)&v23 init];
  v7 = v6;
  if (v6)
  {
    [(HUQuickControlStepperView *)v6 setProfile:profileCopy];
    [(HUQuickControlStepperView *)v7 setReachabilityState:0];
    v8 = objc_alloc_init(MEMORY[0x277D75D18]);
    [(HUQuickControlStepperView *)v7 setBackgroundView:v8];

    if ([MEMORY[0x277D14CE8] shouldUseControlCenterMaterials])
    {
      controlCenterTertiaryMaterial = [MEMORY[0x277CFC960] controlCenterTertiaryMaterial];
      [controlCenterTertiaryMaterial setAutoresizingMask:18];
      backgroundView = [(HUQuickControlStepperView *)v7 backgroundView];
      [backgroundView addSubview:controlCenterTertiaryMaterial];
    }

    else
    {
      controlCenterTertiaryMaterial = [MEMORY[0x277D75348] quaternarySystemFillColor];
      backgroundView = [(HUQuickControlStepperView *)v7 backgroundView];
      [backgroundView setBackgroundColor:controlCenterTertiaryMaterial];
    }

    backgroundView2 = [(HUQuickControlStepperView *)v7 backgroundView];
    layer = [backgroundView2 layer];
    [layer setMasksToBounds:1];

    backgroundView3 = [(HUQuickControlStepperView *)v7 backgroundView];
    [backgroundView3 setAutoresizingMask:18];

    backgroundView4 = [(HUQuickControlStepperView *)v7 backgroundView];
    [(HUQuickControlStepperView *)v7 addSubview:backgroundView4];

    [(HUQuickControlStepperView *)v7 _createSegmentAndSeparatorViews];
    layer2 = [(HUQuickControlStepperView *)v7 layer];
    [layer2 setAllowsGroupOpacity:0];

    layer3 = [(HUQuickControlStepperView *)v7 layer];
    [layer3 setAllowsGroupBlending:0];

    v17 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:v7 action:sel__handleGesture_];
    [(HUQuickControlStepperView *)v7 setGestureRecognizer:v17];

    gestureRecognizer = [(HUQuickControlStepperView *)v7 gestureRecognizer];
    [gestureRecognizer setDelegate:v7];

    gestureRecognizer2 = [(HUQuickControlStepperView *)v7 gestureRecognizer];
    [gestureRecognizer2 setMinimumPressDuration:0.0];

    gestureRecognizer3 = [(HUQuickControlStepperView *)v7 gestureRecognizer];
    [(HUQuickControlStepperView *)v7 addGestureRecognizer:gestureRecognizer3];

    [(HUQuickControlStepperView *)v7 _prepareForTapticFeedback];
  }

  return v7;
}

- (void)setProfile:(id)profile
{
  profileCopy = profile;
  controlSize = [(HUQuickControlViewProfile *)self->_profile controlSize];
  controlSize2 = [(HUQuickControlViewProfile *)profileCopy controlSize];
  profile = self->_profile;
  self->_profile = profileCopy;

  [(HUQuickControlStepperView *)self setNeedsLayout];
  if (controlSize != controlSize2)
  {

    [(HUQuickControlStepperView *)self invalidateIntrinsicContentSize];
  }
}

- (void)_createSegmentAndSeparatorViews
{
  v29 = objc_opt_new();
  v27 = objc_opt_new();
  v26 = objc_opt_new();
  profile = [(HUQuickControlStepperView *)self profile];
  numberOfSegments = [profile numberOfSegments];

  if (numberOfSegments)
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
          controlCenterKeyLineOnDarkVibrancyEffect = [MEMORY[0x277D75D00] controlCenterKeyLineOnDarkVibrancyEffect];
          [v7 setEffect:controlCenterKeyLineOnDarkVibrancyEffect];
        }

        v9 = objc_alloc_init(HUQuickControlStepperSeparatorView);
        contentView = [v7 contentView];
        [contentView addSubview:v9];

        backgroundView = [(HUQuickControlStepperView *)self backgroundView];
        [backgroundView addSubview:v7];

        [v27 addObject:v9];
        [v26 addObject:v7];
        [v7 setTag:v5];
      }

      v12 = [HUQuickControlStepperSegmentView alloc];
      profile2 = [(HUQuickControlStepperView *)self profile];
      stepperStyle = [profile2 stepperStyle];
      profile3 = [(HUQuickControlStepperView *)self profile];
      orientation = [profile3 orientation];
      profile4 = [(HUQuickControlStepperView *)self profile];
      v18 = -[HUQuickControlStepperSegmentView initWithStyle:orientation:controlSize:](v12, "initWithStyle:orientation:controlSize:", stepperStyle, orientation, [profile4 controlSize]);

      [(HUQuickControlStepperSegmentView *)v18 setTag:v5];
      [(HUQuickControlStepperSegmentView *)v18 setSegmentLocation:v6];
      profile5 = [(HUQuickControlStepperView *)self profile];
      LODWORD(v12) = [profile5 showSegmentTitles];

      if (v12)
      {
        profile6 = [(HUQuickControlStepperView *)self profile];
        segmentTitles = [profile6 segmentTitles];
        v22 = [segmentTitles objectAtIndexedSubscript:v5];
        [(HUQuickControlStepperSegmentView *)v18 setTitle:v22];
      }

      backgroundView2 = [(HUQuickControlStepperView *)self backgroundView];
      [backgroundView2 addSubview:v18];

      [v29 addObject:v18];
      ++v5;
      profile7 = [(HUQuickControlStepperView *)self profile];
      numberOfSegments2 = [profile7 numberOfSegments];
    }

    while (v5 < numberOfSegments2);
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
  profile = [(HUQuickControlStepperView *)self profile];
  v4 = -[HUQuickControlStepperView _stepperViewMetricsForControlSize:](self, "_stepperViewMetricsForControlSize:", [profile controlSize]);
  [v4 cornerRadius];
  v6 = v5;

  backgroundView = [(HUQuickControlStepperView *)self backgroundView];
  [backgroundView _setContinuousCornerRadius:v6];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  segmentViews = [(HUQuickControlStepperView *)self segmentViews];
  v9 = [segmentViews countByEnumeratingWithState:&v21 objects:v26 count:16];
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
          objc_enumerationMutation(segmentViews);
        }

        [*(*(&v21 + 1) + 8 * i) setCornerRadius:v12];
      }

      v10 = [segmentViews countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v10);
  }

  profile2 = [(HUQuickControlStepperView *)self profile];
  stepperStyle = [profile2 stepperStyle];

  if (stepperStyle == 1)
  {
    systemLightGrayColor = [MEMORY[0x277D75348] systemLightGrayColor];
    v17 = 1.0;
    goto LABEL_12;
  }

  if (!stepperStyle)
  {
    systemLightGrayColor = [MEMORY[0x277D75348] clearColor];
    v17 = 0.0;
LABEL_12:
    cGColor = [systemLightGrayColor CGColor];
    layer = [(HUQuickControlStepperView *)self layer];
    [layer setBorderColor:cGColor];

    layer2 = [(HUQuickControlStepperView *)self layer];
    [layer2 setBorderWidth:v17];
  }

  [(HUQuickControlStepperView *)self _updateUIForReachabilityState:[(HUQuickControlStepperView *)self reachabilityState]];
}

- (void)_layoutSegmentViews
{
  profile = [(HUQuickControlStepperView *)self profile];
  numberOfSegments = [profile numberOfSegments];

  if (numberOfSegments)
  {
    profile2 = [(HUQuickControlStepperView *)self profile];
    v6 = -[HUQuickControlStepperView intrinsicSizeDescriptorForControlSize:](self, "intrinsicSizeDescriptorForControlSize:", [profile2 controlSize]);
    [v6 intrinsicSize];
    v8 = v7;
    v10 = v9;

    profile3 = [(HUQuickControlStepperView *)self profile];
    if ([profile3 orientation])
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
    segmentViews = [(HUQuickControlStepperView *)self segmentViews];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __48__HUQuickControlStepperView__layoutSegmentViews__block_invoke;
    v18[3] = &unk_277DC2910;
    v18[6] = v14;
    v18[7] = numberOfSegments;
    v18[8] = v16;
    v18[9] = numberOfSegments - 1;
    v18[4] = self;
    v18[5] = v19;
    v18[10] = v8;
    v18[11] = v10;
    v18[12] = v12;
    [segmentViews enumerateObjectsUsingBlock:v18];

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

- (void)_handleGesture:(id)gesture
{
  v37 = *MEMORY[0x277D85DE8];
  gestureCopy = gesture;
  if ([(HUQuickControlStepperView *)self conformsToProtocol:&unk_2824F3238]&& (objc_opt_respondsToSelector() & 1) != 0 && (![(HUQuickControlStepperView *)self reachabilityState]|| [(HUQuickControlStepperView *)self reachabilityState]== 1))
  {
    v5 = HUQuickControlReachabilityString([(HUQuickControlStepperView *)self reachabilityState]);
    v6 = HFLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v31 = 138412802;
      selfCopy = self;
      v33 = 2112;
      v34 = v5;
      v35 = 2080;
      v36 = "[HUQuickControlStepperView _handleGesture:]";
      _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "Control view %@ is in state %@. Ignoring long press gesture in %s.", &v31, 0x20u);
    }
  }

  else
  {
    state = [gestureCopy state];
    gestureRecognizer = [(HUQuickControlStepperView *)self gestureRecognizer];

    if ((state - 1) > 1)
    {
      if (state == 3)
      {
        trackingSegmentIndex = [(HUQuickControlStepperView *)self trackingSegmentIndex];

        if (trackingSegmentIndex)
        {
          selectedSegmentIndex = [(HUQuickControlStepperView *)self selectedSegmentIndex];
          trackingSegmentIndex2 = [(HUQuickControlStepperView *)self trackingSegmentIndex];
          v27 = [selectedSegmentIndex isEqual:trackingSegmentIndex2];

          trackingSegmentIndex3 = [(HUQuickControlStepperView *)self trackingSegmentIndex];
          [(HUQuickControlStepperView *)self setSelectedSegmentIndex:trackingSegmentIndex3];

          if ((v27 & 1) == 0)
          {
            interactionDelegate = [(HUQuickControlStepperView *)self interactionDelegate];
            value = [(HUQuickControlStepperView *)self value];
            [interactionDelegate controlView:self valueDidChange:value];
          }
        }
      }

      [(HUQuickControlStepperView *)self _updateUserInteractionActive:0 forFirstTouch:gestureRecognizer != gestureCopy];
      [(HUQuickControlStepperView *)self setTrackingSegmentIndex:0];
      [(HUQuickControlStepperView *)self setAccumulatedTouchDistance:0.0];
      [(HUQuickControlStepperView *)self setLastTouchLocation:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)];
      [(HUQuickControlStepperView *)self _updateSegmentHighlightedState];
      [(HUQuickControlStepperView *)self _actuateTapticFeedback];
    }

    else
    {
      [(HUQuickControlStepperView *)self _updateUserInteractionActive:1 forFirstTouch:gestureRecognizer != gestureCopy];
      [gestureCopy locationInView:self];
      v10 = v9;
      v12 = v11;
      if (![(HUQuickControlStepperView *)self _shouldRequireMinimumDragDistanceForGestureRecognizer:gestureCopy])
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

        trackingSegmentIndex4 = [(HUQuickControlStepperView *)self trackingSegmentIndex];
        v23 = [trackingSegmentIndex4 isEqual:v21];

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

- (BOOL)_shouldRequireMinimumDragDistanceForGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  gestureRecognizer = [(HUQuickControlStepperView *)self gestureRecognizer];

  return gestureRecognizer != recognizerCopy;
}

- (void)_updateUserInteractionActive:(BOOL)active forFirstTouch:(BOOL)touch
{
  touchCopy = touch;
  activeCopy = active;
  if ([(HUQuickControlStepperView *)self isUserInteractionActive]!= active)
  {
    [(HUQuickControlStepperView *)self setUserInteractionActive:activeCopy];
    interactionDelegate = [(HUQuickControlStepperView *)self interactionDelegate];
    [interactionDelegate controlView:self interactionStateDidChange:activeCopy forFirstTouch:touchCopy];
  }
}

- (void)updateConstraints
{
  v23.receiver = self;
  v23.super_class = HUQuickControlStepperView;
  [(HUQuickControlStepperView *)&v23 updateConstraints];
  v3 = MEMORY[0x277CCAAD0];
  constraints = [(HUQuickControlStepperView *)self constraints];
  [v3 deactivateConstraints:constraints];

  array = [MEMORY[0x277CBEB18] array];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __46__HUQuickControlStepperView_updateConstraints__block_invoke;
  aBlock[3] = &unk_277DB9438;
  v21 = array;
  selfCopy = self;
  v6 = array;
  v7 = _Block_copy(aBlock);
  backgroundView = [(HUQuickControlStepperView *)self backgroundView];
  v7[2](v7, backgroundView);

  profile = [(HUQuickControlStepperView *)self profile];
  v10 = -[HUQuickControlStepperView intrinsicSizeDescriptorForControlSize:](self, "intrinsicSizeDescriptorForControlSize:", [profile controlSize]);
  [v10 intrinsicSize];
  v12 = v11;
  v14 = v13;

  widthAnchor = [(HUQuickControlStepperView *)self widthAnchor];
  v16 = [widthAnchor constraintEqualToConstant:v12];
  [v16 setActive:1];

  heightAnchor = [(HUQuickControlStepperView *)self heightAnchor];
  v18 = [heightAnchor constraintEqualToConstant:v14];
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

- (id)_stepperViewMetricsForControlSize:(unint64_t)size
{
  profile = [(HUQuickControlStepperView *)self profile];
  orientation = [profile orientation];
  profile2 = [(HUQuickControlStepperView *)self profile];
  v8 = HUQuickControlStepperViewMetricsForOrientation(size, orientation, [profile2 numberOfSegments]);

  return v8;
}

- (CGSize)intrinsicContentSize
{
  profile = [(HUQuickControlStepperView *)self profile];
  controlSize = [profile controlSize];
  profile2 = [(HUQuickControlStepperView *)self profile];
  orientation = [profile2 orientation];
  profile3 = [(HUQuickControlStepperView *)self profile];
  v8 = HUQuickControlStepperViewMetricsForOrientation(controlSize, orientation, [profile3 numberOfSegments]);
  sizeDescriptor = [v8 sizeDescriptor];
  [sizeDescriptor intrinsicSize];
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

  feedbackGenerator = [(HUQuickControlStepperView *)self feedbackGenerator];
  [feedbackGenerator prepare];
}

- (void)_actuateTapticFeedback
{
  feedbackGenerator = [(HUQuickControlStepperView *)self feedbackGenerator];
  [feedbackGenerator impactOccurred];

  feedbackGenerator2 = [(HUQuickControlStepperView *)self feedbackGenerator];
  [feedbackGenerator2 prepare];
}

- (id)intrinsicSizeDescriptorForControlSize:(unint64_t)size
{
  v3 = [(HUQuickControlStepperView *)self _stepperViewMetricsForControlSize:size];
  sizeDescriptor = [v3 sizeDescriptor];

  return sizeDescriptor;
}

- (void)setValue:(id)value
{
  valueCopy = value;
  v5 = objc_opt_class();
  v10 = valueCopy;
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

    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [currentHandler handleFailureInFunction:v9 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v5, objc_opt_class()}];
  }

  v7 = 0;
LABEL_8:

  [(HUQuickControlStepperView *)self setSelectedSegmentIndex:v7];
  [(HUQuickControlStepperView *)self _updateSegmentHighlightedState];
}

- (void)setReachabilityState:(unint64_t)state
{
  v15 = *MEMORY[0x277D85DE8];
  self->_reachabilityState = state;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  segmentViews = [(HUQuickControlStepperView *)self segmentViews];
  v6 = [segmentViews countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(segmentViews);
        }

        [*(*(&v10 + 1) + 8 * v9++) setReachabilityState:state];
      }

      while (v7 != v9);
      v7 = [segmentViews countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  [(HUQuickControlStepperView *)self _updateUIForReachabilityState:state];
}

- (void)tintColorDidChange
{
  v5.receiver = self;
  v5.super_class = HUQuickControlStepperView;
  [(HUQuickControlStepperView *)&v5 tintColorDidChange];
  segmentViews = [(HUQuickControlStepperView *)self segmentViews];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __47__HUQuickControlStepperView_tintColorDidChange__block_invoke;
  v4[3] = &unk_277DC2938;
  v4[4] = self;
  [segmentViews enumerateObjectsUsingBlock:v4];
}

void __47__HUQuickControlStepperView_tintColorDidChange__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v2 profile];
  v4 = [v5 tintColor];
  [v3 setTintColor:v4];
}

- (void)_updateUIForReachabilityState:(unint64_t)state
{
  if (state >= 2)
  {
    if (state != 2)
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