@interface HUQuickControlRingSliderView
- ($F24F406B2B787EFB06265DBA3D28CBD5)_getPossibleAngleRange12OClock;
- ($F24F406B2B787EFB06265DBA3D28CBD5)modelRangeValue;
- (BOOL)_areHandleViewsAnimating;
- (BOOL)_isPoint:(CGPoint)a3 withInMarginOfRing:(double)a4;
- (BOOL)_primaryHandleViewContainsPoint:(CGPoint)a3;
- (BOOL)_secondaryHandleViewContainsPoint:(CGPoint)a3;
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (CGPoint)_getCircleCenterPoint;
- (CGPoint)_getClosestPointOnMiddleCircleOfRing:(CGPoint)a3;
- (CGPoint)_getHandleCenterOnRingForValue:(double)a3;
- (CGPoint)_getPointForAngleFrom12OClock:(double)a3;
- (CGSize)_getEdgeRectSize;
- (CGSize)intrinsicContentSize;
- (HUQuickControlRingSliderView)initWithProfile:(id)a3;
- (HUQuickControlViewInteractionDelegate)interactionDelegate;
- (NSMutableArray)currentDirectionTapticValues;
- (NSMutableArray)gradationMarkingViews;
- (NSMutableDictionary)markingValuesAndViewsDictionary;
- (double)_getAngleFrom12OClockForPoint:(CGPoint)a3;
- (double)_getAngleFrom12OClockForValue:(double)a3;
- (double)_getClosestMarkingValueToValue:(double)a3;
- (double)_getMaxAngleFrom12OClock;
- (double)_getMaximumMarkingValue;
- (double)_getMinAngleFrom12OClock;
- (double)_getMinimumMarkingValue;
- (double)_getOneMarkerValueDifference;
- (double)_getSecondarySliderValue;
- (double)_getSliderValueForAngleFrom12OClock:(double)a3;
- (double)_getSliderValueForPoint:(CGPoint)a3;
- (double)_getStartAngleEdgeLocationShiftForBackgroundRing:(BOOL)a3;
- (id)intrinsicSizeDescriptorForControlSize:(unint64_t)a3;
- (id)secondaryValue;
- (id)value;
- (unint64_t)_getRingSliderAreaForAngleFrom12Oclock:(double)a3;
- (unint64_t)_getRingSliderAreaForAngleFrom12Oclock:(double)a3 minAngle:(double)a4 maxAngle:(double)a5;
- (unint64_t)_getRingSliderAreaForPoint:(CGPoint)a3;
- (void)_actuateImpactTapticFeedback;
- (void)_actuateSelectionTapticFeedback;
- (void)_animateToEnlargeHandleView:(id)a3;
- (void)_maskBackgroundImageViewToRingShape;
- (void)_prepareForTapticFeedback;
- (void)_redrawGradationMarkingViews;
- (void)_touchEnded;
- (void)_updateLabelsSize;
- (void)_updateModelValue:(id)a3 roundValue:(BOOL)a4 notifyInteractionDelegate:(BOOL)a5;
- (void)_updateModelValueWithNewPrimarySliderValue:(double)a3 roundValue:(BOOL)a4 notifyInteractionDelegate:(BOOL)a5;
- (void)_updateModelValueWithNewSecondarySliderValue:(double)a3 roundValue:(BOOL)a4 notifyInteractionDelegate:(BOOL)a5;
- (void)_updateModelValueWithSlidersPositions;
- (void)_updatePrimaryHandleViewPositionToSliderValue;
- (void)_updateRingViewAndHandleViews;
- (void)_updateSecondaryHandleViewPositionToSliderValue;
- (void)_updateSelectedRangeImageView;
- (void)_updateSupplementaryValueMarkingView;
- (void)_updateSupplementaryValueMarkingViewColor;
- (void)_updateTransform;
- (void)_updateUIForReachabilityState:(unint64_t)a3;
- (void)_updateUIForThresholdModeForPrimaryHandleViewWithTouchPoint:(CGPoint)a3 didTouchBegin:(BOOL)a4;
- (void)_updateUIForThresholdModeForSecondaryHandleViewWithTouchPoint:(CGPoint)a3 didTouchBegin:(BOOL)a4;
- (void)_updateUIForTouchPoint:(CGPoint)a3 didTouchBegin:(BOOL)a4 forHandleView:(id)a5 minValue:(double)a6 maxValue:(double)a7;
- (void)_updateUIWithTouchAtPoint:(CGPoint)a3 didTouchBegin:(BOOL)a4;
- (void)handlePanGestureRecognizer:(id)a3;
- (void)layoutSubviews;
- (void)setProfile:(id)a3;
- (void)setSecondaryValue:(id)a3;
- (void)setValue:(id)a3;
- (void)updatePrimaryLabelWithString:(id)a3 fontSize:(double)a4;
- (void)updateSupplementaryLabelWithString:(id)a3;
@end

@implementation HUQuickControlRingSliderView

- (NSMutableArray)currentDirectionTapticValues
{
  currentDirectionTapticValues = self->_currentDirectionTapticValues;
  if (!currentDirectionTapticValues)
  {
    v4 = objc_opt_new();
    v5 = self->_currentDirectionTapticValues;
    self->_currentDirectionTapticValues = v4;

    currentDirectionTapticValues = self->_currentDirectionTapticValues;
  }

  return currentDirectionTapticValues;
}

- (NSMutableDictionary)markingValuesAndViewsDictionary
{
  markingValuesAndViewsDictionary = self->_markingValuesAndViewsDictionary;
  if (!markingValuesAndViewsDictionary)
  {
    v4 = objc_opt_new();
    v5 = self->_markingValuesAndViewsDictionary;
    self->_markingValuesAndViewsDictionary = v4;

    markingValuesAndViewsDictionary = self->_markingValuesAndViewsDictionary;
  }

  return markingValuesAndViewsDictionary;
}

- (NSMutableArray)gradationMarkingViews
{
  gradationMarkingViews = self->_gradationMarkingViews;
  if (!gradationMarkingViews)
  {
    v4 = objc_opt_new();
    v5 = self->_gradationMarkingViews;
    self->_gradationMarkingViews = v4;

    gradationMarkingViews = self->_gradationMarkingViews;
  }

  return gradationMarkingViews;
}

- (HUQuickControlRingSliderView)initWithProfile:(id)a3
{
  v5 = a3;
  v47.receiver = self;
  v47.super_class = HUQuickControlRingSliderView;
  v6 = [(HUQuickControlRingSliderView *)&v47 init];
  v7 = v6;
  if (v6)
  {
    v6->_userInteractionActive = 0;
    objc_storeStrong(&v6->_profile, a3);
    v7->_reachabilityState = 0;
    v7->_modelRangeValue = HUFloatRangeNormal;
    v7->_supplementaryValue = 1.79769313e308;
    [(HUQuickControlRingSliderView *)v7 frame];
    v9 = v8;
    [(HUQuickControlRingSliderView *)v7 frame];
    if (v9 >= v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = v9;
    }

    v7->_outerRadius = v11 * 0.5;
    v12 = HUImageNamed(@"thermostat_gradient");
    gradientRingImage = v7->_gradientRingImage;
    v7->_gradientRingImage = v12;

    if ([MEMORY[0x277D14CE8] shouldUseControlCenterMaterials])
    {
      v14 = [MEMORY[0x277CFC960] controlCenterTertiaryMaterial];
    }

    else
    {
      v14 = objc_alloc_init(MEMORY[0x277D75D18]);
    }

    backgroundRingView = v7->_backgroundRingView;
    v7->_backgroundRingView = v14;

    v16 = [MEMORY[0x277D75348] quaternarySystemFillColor];
    [(UIView *)v7->_backgroundRingView setBackgroundColor:v16];

    [(HUQuickControlRingSliderView *)v7 addSubview:v7->_backgroundRingView];
    if ([MEMORY[0x277D14CE8] shouldUseControlCenterMaterials])
    {
      v17 = [MEMORY[0x277CFC960] controlCenterTertiaryMaterial];
    }

    else
    {
      v17 = objc_alloc_init(MEMORY[0x277D75D18]);
    }

    edgesAndColoredSupplementaryValueLineView = v7->_edgesAndColoredSupplementaryValueLineView;
    v7->_edgesAndColoredSupplementaryValueLineView = v17;

    v19 = [MEMORY[0x277D75348] quaternarySystemFillColor];
    [(UIView *)v7->_edgesAndColoredSupplementaryValueLineView setBackgroundColor:v19];

    [(HUQuickControlRingSliderView *)v7 addSubview:v7->_edgesAndColoredSupplementaryValueLineView];
    v20 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v7->_gradientRingImage];
    selectedRangeImageView = v7->_selectedRangeImageView;
    v7->_selectedRangeImageView = v20;

    [(UIImageView *)v7->_selectedRangeImageView setContentMode:1];
    [(UIImageView *)v7->_selectedRangeImageView setUserInteractionEnabled:0];
    [(HUQuickControlRingSliderView *)v7 addSubview:v7->_selectedRangeImageView];
    v22 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v7->_gradientRingImage];
    selectedRangeImageViewForEdges = v7->_selectedRangeImageViewForEdges;
    v7->_selectedRangeImageViewForEdges = v22;

    [(UIImageView *)v7->_selectedRangeImageViewForEdges setContentMode:1];
    [(UIImageView *)v7->_selectedRangeImageViewForEdges setUserInteractionEnabled:0];
    [(HUQuickControlRingSliderView *)v7 addSubview:v7->_selectedRangeImageViewForEdges];
    v24 = *&ringWidthToHanldeViewRatio * 35.0;
    v25 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{0.0, 0.0, 4.0, 19.0}];
    supplementaryValueMarkingView = v7->_supplementaryValueMarkingView;
    v7->_supplementaryValueMarkingView = v25;

    v27 = [(UIView *)v7->_supplementaryValueMarkingView layer];
    [v27 setCornerRadius:2.0];

    v28 = [MEMORY[0x277D75348] systemBlackColor];
    v29 = [v28 colorWithAlphaComponent:0.2];
    [(UIView *)v7->_supplementaryValueMarkingView setBackgroundColor:v29];

    [(HUQuickControlRingSliderView *)v7 addSubview:v7->_supplementaryValueMarkingView];
    v30 = -[HUQuickControlRingSliderHandleView initWithFrame:style:]([HUQuickControlRingSliderHandleView alloc], "initWithFrame:style:", [v5 handleViewStyle], 0.0, 0.0, v24, v24);
    primaryHandleView = v7->_primaryHandleView;
    v7->_primaryHandleView = v30;

    [(HUQuickControlRingSliderView *)v7 addSubview:v7->_primaryHandleView];
    v32 = -[HUQuickControlRingSliderHandleView initWithFrame:style:]([HUQuickControlRingSliderHandleView alloc], "initWithFrame:style:", [v5 handleViewStyle], 0.0, 0.0, v24, v24);
    secondaryHandleView = v7->_secondaryHandleView;
    v7->_secondaryHandleView = v32;

    [(HUQuickControlRingSliderView *)v7 addSubview:v7->_secondaryHandleView];
    -[HUQuickControlRingSliderHandleView setHidden:](v7->_secondaryHandleView, "setHidden:", [v5 hasSecondaryValue] ^ 1);
    v34 = [MEMORY[0x277D75348] systemWhiteColor];
    if (([v5 isHandleViewVisible] & 1) == 0)
    {
      v35 = [MEMORY[0x277D75348] clearColor];

      v34 = v35;
    }

    [(HUQuickControlRingSliderHandleView *)v7->_primaryHandleView _setColor:v34];
    [(HUQuickControlRingSliderHandleView *)v7->_secondaryHandleView _setColor:v34];
    v36 = objc_alloc_init(MEMORY[0x277D756B8]);
    supplementaryLabel = v7->_supplementaryLabel;
    v7->_supplementaryLabel = v36;

    [(UILabel *)v7->_supplementaryLabel setTextAlignment:1];
    [(UILabel *)v7->_supplementaryLabel setNumberOfLines:1];
    [(UILabel *)v7->_supplementaryLabel setAdjustsFontSizeToFitWidth:1];
    v38 = [MEMORY[0x277D75348] systemOrangeColor];
    [(UILabel *)v7->_supplementaryLabel setTextColor:v38];

    v39 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76918] variant:1024];
    [(UILabel *)v7->_supplementaryLabel setFont:v39];

    v40 = objc_alloc_init(MEMORY[0x277D756B8]);
    primaryLabel = v7->_primaryLabel;
    v7->_primaryLabel = v40;

    [(UILabel *)v7->_primaryLabel setTextAlignment:1];
    [(UILabel *)v7->_primaryLabel setNumberOfLines:1];
    [(UILabel *)v7->_primaryLabel setAdjustsFontSizeToFitWidth:1];
    v42 = objc_alloc_init(MEMORY[0x277D75D18]);
    labelsBackgroundView = v7->_labelsBackgroundView;
    v7->_labelsBackgroundView = v42;

    [(UIView *)v7->_labelsBackgroundView addSubview:v7->_supplementaryLabel];
    [(UIView *)v7->_labelsBackgroundView addSubview:v7->_primaryLabel];
    [(HUQuickControlRingSliderView *)v7 addSubview:v7->_labelsBackgroundView];
    v44 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:v7 action:sel_handlePanGestureRecognizer_];
    longPressPanGestureRecognizer = v7->_longPressPanGestureRecognizer;
    v7->_longPressPanGestureRecognizer = v44;

    [(UILongPressGestureRecognizer *)v7->_longPressPanGestureRecognizer setMinimumPressDuration:0.0];
    [(UILongPressGestureRecognizer *)v7->_longPressPanGestureRecognizer setDelaysTouchesBegan:1];
    [(HUQuickControlRingSliderView *)v7 addGestureRecognizer:v7->_longPressPanGestureRecognizer];
    [(UILongPressGestureRecognizer *)v7->_longPressPanGestureRecognizer setDelegate:v7];
    [(HUQuickControlRingSliderView *)v7 _prepareForTapticFeedback];
  }

  return v7;
}

- (double)_getSecondarySliderValue
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = [(HUQuickControlRingSliderView *)self profile];
  v4 = [v3 hasSecondaryValue];

  if ((v4 & 1) == 0)
  {
    v5 = HFLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v7 = 136315138;
      v8 = "[HUQuickControlRingSliderView _getSecondarySliderValue]";
      _os_log_debug_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEBUG, "(%s) requesting secondary slider value when hasSecondaryValue is NO", &v7, 0xCu);
    }
  }

  [(HUQuickControlRingSliderView *)self modelRangeValue];
  return result;
}

- (id)value
{
  v3 = [(HUQuickControlRingSliderView *)self profile];
  v4 = [v3 hasSecondaryValue];

  if (v4)
  {
    v5 = MEMORY[0x277D148D8];
    [(HUQuickControlRingSliderView *)self modelRangeValue];
    [v5 rangeWithFloatRange:?];
  }

  else
  {
    v7 = MEMORY[0x277CCABB0];
    [(HUQuickControlRingSliderView *)self modelRangeValue];
    [v7 numberWithDouble:v8];
  }
  v6 = ;

  return v6;
}

- (void)setValue:(id)a3
{
  v22 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v4 = v22;
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;

    if ([v6 type] == 1)
    {
      [v6 floatRangeValue];
      v8 = v7;
      [v6 floatRangeValue];
      if (v8 < v9)
      {
        v8 = v9;
      }

      [v6 floatRangeValue];
      v11 = v10;
      [v6 floatRangeValue];
      if (v11 >= v12)
      {
        v11 = v12;
      }

      [(HUQuickControlRingSliderView *)self _getClosestMarkingValueToValue:v8];
      v14 = v13;
      [(HUQuickControlRingSliderView *)self _getClosestMarkingValueToValue:v11];
      v16 = v15;
    }

    else
    {
      v18 = [v6 midValue];
      [v18 doubleValue];
      v20 = v19;

      [(HUQuickControlRingSliderView *)self _getClosestMarkingValueToValue:v20];
      v14 = v21;
      v16 = 0.0;
    }
  }

  else
  {
    [v22 doubleValue];
    [(HUQuickControlRingSliderView *)self _getClosestMarkingValueToValue:?];
    v14 = v17;
    v16 = 0.0;
  }

  [(HUQuickControlRingSliderView *)self setModelRangeValue:v16, v14];
  [(HUQuickControlRingSliderView *)self _updateRingViewAndHandleViews];
}

- (id)secondaryValue
{
  v2 = MEMORY[0x277CCABB0];
  [(HUQuickControlRingSliderView *)self modelRangeValue];

  return [v2 numberWithDouble:?];
}

- (void)setSecondaryValue:(id)a3
{
  v13 = a3;
  if (v13)
  {
    objc_opt_class();
    v4 = v13;
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;

    [v6 doubleValue];
    v8 = v7;
    [(HUQuickControlRingSliderView *)self modelRangeValue];
    if (v8 >= v9)
    {
      v8 = v9;
    }

    [v6 doubleValue];
    v11 = v10;
    [(HUQuickControlRingSliderView *)self modelRangeValue];
    if (v11 >= v12)
    {
      v12 = v11;
    }

    [(HUQuickControlRingSliderView *)self setModelRangeValue:v8, v12];
  }

  else
  {
    [(HUQuickControlRingSliderView *)self modelRangeValue];
    [(HUQuickControlRingSliderView *)self setModelRangeValue:0.0];
  }
}

- (void)setProfile:(id)a3
{
  v4 = a3;
  v5 = [(HUQuickControlViewProfile *)self->_profile controlSize];
  v6 = [(HUQuickControlViewProfile *)v4 controlSize];
  profile = self->_profile;
  self->_profile = v4;

  [(HUQuickControlRingSliderView *)self setNeedsLayout];
  if (v5 != v6)
  {

    [(HUQuickControlRingSliderView *)self invalidateIntrinsicContentSize];
  }
}

- (void)_updateUIForReachabilityState:(unint64_t)a3
{
  if (a3 >= 2)
  {
    if (a3 == 2)
    {
      [(HUQuickControlRingSliderView *)self setAlpha:1.0];
      v7 = [(HUQuickControlRingSliderView *)self primaryHandleView];
      [v7 setHidden:{-[HUQuickControlRingSliderView showOffState](self, "showOffState")}];

      v8 = [(HUQuickControlRingSliderView *)self secondaryHandleView];
      v9 = [(HUQuickControlRingSliderView *)self profile];
      if ([v9 hasSecondaryValue])
      {
        v10 = [(HUQuickControlRingSliderView *)self showOffState];
      }

      else
      {
        v10 = 1;
      }

      [v8 setHidden:v10];

      v11 = [(HUQuickControlRingSliderView *)self labelsBackgroundView];
      [v11 setHidden:0];

      [(HUQuickControlRingSliderView *)self _updateSupplementaryValueMarkingView];
    }
  }

  else
  {
    [(HUQuickControlRingSliderView *)self setAlpha:0.5];
    v4 = [(HUQuickControlRingSliderView *)self primaryHandleView];
    [v4 setHidden:1];

    v5 = [(HUQuickControlRingSliderView *)self secondaryHandleView];
    [v5 setHidden:1];

    v6 = [(HUQuickControlRingSliderView *)self labelsBackgroundView];
    [v6 setHidden:1];

    v12 = [(HUQuickControlRingSliderView *)self supplementaryValueMarkingView];
    [v12 setHidden:1];
  }
}

- (CGSize)intrinsicContentSize
{
  v3 = [(HUQuickControlRingSliderView *)self profile];
  v4 = -[HUQuickControlRingSliderView intrinsicSizeDescriptorForControlSize:](self, "intrinsicSizeDescriptorForControlSize:", [v3 controlSize]);
  [v4 intrinsicSize];
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (id)intrinsicSizeDescriptorForControlSize:(unint64_t)a3
{
  v3 = HUQuickControlRingSliderMetricsForControlSize(a3);
  v4 = [v3 sizeDescriptor];

  return v4;
}

- (void)_updateModelValueWithNewPrimarySliderValue:(double)a3 roundValue:(BOOL)a4 notifyInteractionDelegate:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  [(HUQuickControlRingSliderView *)self modelRangeValue];

  [(HUQuickControlRingSliderView *)self _updateModelValue:v6 roundValue:v5 notifyInteractionDelegate:?];
}

- (void)_updateModelValueWithNewSecondarySliderValue:(double)a3 roundValue:(BOOL)a4 notifyInteractionDelegate:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v14 = *MEMORY[0x277D85DE8];
  v9 = [(HUQuickControlRingSliderView *)self profile];
  v10 = [v9 hasSecondaryValue];

  if ((v10 & 1) == 0)
  {
    v11 = HFLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = 136315138;
      v13 = "[HUQuickControlRingSliderView _updateModelValueWithNewSecondarySliderValue:roundValue:notifyInteractionDelegate:]";
      _os_log_debug_impl(&dword_20CEB6000, v11, OS_LOG_TYPE_DEBUG, "(%s) This method is being called when hasSecondaryValue is NO. 0 will be used instead.", &v12, 0xCu);
    }
  }

  [(HUQuickControlRingSliderView *)self modelRangeValue];
  [(HUQuickControlRingSliderView *)self _updateModelValue:v6 roundValue:v5 notifyInteractionDelegate:a3];
}

- (void)_updateModelValue:(id)a3 roundValue:(BOOL)a4 notifyInteractionDelegate:(BOOL)a5
{
  v5 = a5;
  [(HUQuickControlRingSliderView *)self setModelRangeValue:a4, a3.var0, a3.var1];
  if (v5 && [(HUQuickControlRingSliderView *)self isUserInteractionActive])
  {
    v8 = [(HUQuickControlRingSliderView *)self interactionDelegate];
    v7 = [(HUQuickControlRingSliderView *)self value];
    [v8 controlView:self valueDidChange:v7];
  }
}

- (void)layoutSubviews
{
  v39 = *MEMORY[0x277D85DE8];
  v36.receiver = self;
  v36.super_class = HUQuickControlRingSliderView;
  [(HUQuickControlRingSliderView *)&v36 layoutSubviews];
  [(HUQuickControlRingSliderView *)self frame];
  v4 = v3;
  [(HUQuickControlRingSliderView *)self frame];
  if (v4 >= v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = v4;
  }

  [(HUQuickControlRingSliderView *)self setOuterRadius:v6 * 0.5];
  v7 = [(HUQuickControlRingSliderView *)self gradationMarkingViews];
  v8 = [v7 count];
  v9 = [(HUQuickControlRingSliderView *)self profile];
  v10 = [v9 gradationMarkingValues];
  v11 = [v10 count];

  if (v8 != v11)
  {
    [(HUQuickControlRingSliderView *)self _redrawGradationMarkingViews];
  }

  [(HUQuickControlRingSliderView *)self _updateRingViewAndHandleViews];
  [(HUQuickControlRingSliderView *)self _updateSupplementaryValueMarkingView];
  [(HUQuickControlRingSliderView *)self _updateUIForReachabilityState:[(HUQuickControlRingSliderView *)self reachabilityState]];
  if ([(HUQuickControlRingSliderView *)self showOffState]|| ![(HUQuickControlRingSliderView *)self reachabilityState]|| [(HUQuickControlRingSliderView *)self reachabilityState]== 1)
  {
    v12 = [(HUQuickControlRingSliderView *)self selectedRangeImageView];
    [(HUQuickControlRingSliderView *)self bringSubviewToFront:v12];

    v13 = [(HUQuickControlRingSliderView *)self selectedRangeImageViewForEdges];
    [(HUQuickControlRingSliderView *)self bringSubviewToFront:v13];

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v14 = [(HUQuickControlRingSliderView *)self gradationMarkingViews];
    v15 = [v14 countByEnumeratingWithState:&v32 objects:v38 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v33;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v33 != v17)
          {
            objc_enumerationMutation(v14);
          }

          [(HUQuickControlRingSliderView *)self bringSubviewToFront:*(*(&v32 + 1) + 8 * i)];
        }

        v16 = [v14 countByEnumeratingWithState:&v32 objects:v38 count:16];
      }

      while (v16);
    }
  }

  else
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v19 = [(HUQuickControlRingSliderView *)self gradationMarkingViews];
    v20 = [v19 countByEnumeratingWithState:&v28 objects:v37 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v29;
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v29 != v22)
          {
            objc_enumerationMutation(v19);
          }

          [(HUQuickControlRingSliderView *)self bringSubviewToFront:*(*(&v28 + 1) + 8 * j)];
        }

        v21 = [v19 countByEnumeratingWithState:&v28 objects:v37 count:16];
      }

      while (v21);
    }

    v24 = [(HUQuickControlRingSliderView *)self selectedRangeImageView];
    [(HUQuickControlRingSliderView *)self bringSubviewToFront:v24];

    v14 = [(HUQuickControlRingSliderView *)self selectedRangeImageViewForEdges];
    [(HUQuickControlRingSliderView *)self bringSubviewToFront:v14];
  }

  v25 = [(HUQuickControlRingSliderView *)self supplementaryValueMarkingView];
  [(HUQuickControlRingSliderView *)self bringSubviewToFront:v25];

  v26 = [(HUQuickControlRingSliderView *)self primaryHandleView];
  [(HUQuickControlRingSliderView *)self bringSubviewToFront:v26];

  v27 = [(HUQuickControlRingSliderView *)self secondaryHandleView];
  [(HUQuickControlRingSliderView *)self bringSubviewToFront:v27];
}

- (void)_redrawGradationMarkingViews
{
  v54 = *MEMORY[0x277D85DE8];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v3 = [(HUQuickControlRingSliderView *)self gradationMarkingViews];
  v4 = [v3 copy];

  v5 = [v4 countByEnumeratingWithState:&v48 objects:v53 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v49;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v49 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v48 + 1) + 8 * i);
        [v9 removeFromSuperview];
        v10 = [(HUQuickControlRingSliderView *)self gradationMarkingViews];
        [v10 removeObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v48 objects:v53 count:16];
    }

    while (v6);
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v11 = [(HUQuickControlRingSliderView *)self profile];
  v12 = [v11 gradationMarkingValues];

  obj = v12;
  v13 = [v12 countByEnumeratingWithState:&v44 objects:v52 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = 0;
    v16 = *v45;
    v40 = *(MEMORY[0x277CBF2C0] + 16);
    v41 = *MEMORY[0x277CBF2C0];
    v39 = *(MEMORY[0x277CBF2C0] + 32);
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v45 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v44 + 1) + 8 * j);
        v19 = [(HUQuickControlRingSliderView *)self profile];
        v20 = [v19 gradationMarkingViewStyle];

        if (v20 < 2)
        {
          v22 = 2.0;
          v21 = 19.0;
        }

        else
        {
          if (v20 == 2)
          {
            if (v15)
            {
              v21 = 6.33333333;
            }

            else
            {
              v21 = 19.0;
            }
          }

          else
          {
            v21 = 0.0;
            v22 = 0.0;
            if (v20 != 3)
            {
              goto LABEL_24;
            }

            if (v15)
            {
              v21 = 19.0;
            }

            else
            {
              v21 = 6.33333333;
            }
          }

          v22 = 2.0;
        }

LABEL_24:
        v23 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:0];
        [v23 setFrame:{0.0, 0.0, v22, v21}];
        v24 = [v23 layer];
        [v24 setCornerRadius:1.0];

        [v23 setClipsToBounds:1];
        if ([MEMORY[0x277D14CE8] shouldUseControlCenterMaterials])
        {
          v25 = [MEMORY[0x277D75D00] controlCenterKeyLineOnLightVibrancyEffect];
          [v23 setEffect:v25];
        }

        v26 = [(HUQuickControlRingSliderView *)self traitCollection];
        if ([v26 userInterfaceStyle] == 1)
        {

LABEL_29:
          v28 = [MEMORY[0x277D75348] systemBlackColor];
          v29 = v28;
          v30 = 0.1;
          goto LABEL_34;
        }

        v27 = [(HUQuickControlRingSliderView *)self showOffState];

        if (v27)
        {
          goto LABEL_29;
        }

        if ([MEMORY[0x277D14CE8] shouldUseControlCenterMaterials])
        {
          v31 = 0.3;
        }

        else
        {
          v31 = 0.1;
        }

        v28 = [MEMORY[0x277D75348] tertiarySystemFillColor];
        v29 = v28;
        v30 = v31;
LABEL_34:
        v32 = [v28 colorWithAlphaComponent:v30];
        [v23 setBackgroundColor:v32];

        [v18 floatValue];
        [(HUQuickControlRingSliderView *)self _getHandleCenterOnRingForValue:v33];
        [v23 setCenter:?];
        [v18 floatValue];
        [(HUQuickControlRingSliderView *)self _getAngleFrom12OClockForValue:v34];
        *&v42.a = v41;
        *&v42.c = v40;
        *&v42.tx = v39;
        CGAffineTransformRotate(&v43, &v42, v35);
        v42 = v43;
        [v23 setTransform:&v42];
        [(HUQuickControlRingSliderView *)self addSubview:v23];
        v36 = [(HUQuickControlRingSliderView *)self gradationMarkingViews];
        [v36 addObject:v23];

        v37 = [(HUQuickControlRingSliderView *)self markingValuesAndViewsDictionary];
        [v37 setObject:v23 forKey:v18];

        ++v15;
      }

      v14 = [obj countByEnumeratingWithState:&v44 objects:v52 count:16];
    }

    while (v14);
  }
}

- (void)_updateSupplementaryValueMarkingView
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = [(HUQuickControlRingSliderView *)self profile];
  if (![v3 shouldShowSupplementaryValue] || (-[HUQuickControlRingSliderView supplementaryValue](self, "supplementaryValue"), v4 > 1.0))
  {

LABEL_4:
    v30 = [(HUQuickControlRingSliderView *)self supplementaryValueMarkingView];
    [v30 setHidden:1];

    return;
  }

  v5 = [(HUQuickControlRingSliderView *)self showOffState];

  if (v5)
  {
    goto LABEL_4;
  }

  [(HUQuickControlRingSliderView *)self supplementaryValue];
  [(HUQuickControlRingSliderView *)self _getAngleFrom12OClockForValue:?];
  v7 = v6;
  [(HUQuickControlRingSliderView *)self _getPointForAngleFrom12OClock:?];
  v8 = [(HUQuickControlRingSliderView *)self gradationMarkingViews];
  v9 = [v8 firstObject];

  v10 = [(HUQuickControlRingSliderView *)self gradationMarkingViews];
  v11 = [v10 firstObject];
  [v11 center];
  UIDistanceBetweenPoints();
  v13 = v12;

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v14 = [(HUQuickControlRingSliderView *)self gradationMarkingViews];
  v15 = [v14 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v34;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v34 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v33 + 1) + 8 * i);
        [v19 center];
        UIDistanceBetweenPoints();
        if (v13 > v20)
        {
          v21 = v20;
          v22 = v19;

          v13 = v21;
          v9 = v22;
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v16);
  }

  if (v9)
  {
    [v9 center];
    v24 = v23;
    v26 = v25;
    v27 = [(HUQuickControlRingSliderView *)self supplementaryValueMarkingView];
    [v27 setCenter:{v24, v26}];
  }

  v28 = *(MEMORY[0x277CBF2C0] + 16);
  *&v31.a = *MEMORY[0x277CBF2C0];
  *&v31.c = v28;
  *&v31.tx = *(MEMORY[0x277CBF2C0] + 32);
  CGAffineTransformRotate(&v32, &v31, v7);
  v29 = [(HUQuickControlRingSliderView *)self supplementaryValueMarkingView];
  v31 = v32;
  [v29 setTransform:&v31];

  [(HUQuickControlRingSliderView *)self _updateSupplementaryValueMarkingViewColor];
}

- (void)_updateSupplementaryValueMarkingViewColor
{
  if ([(HUQuickControlRingSliderView *)self showOffState])
  {
    goto LABEL_10;
  }

  v3 = [(HUQuickControlRingSliderView *)self profile];
  if (([v3 shouldShowSupplementaryValue] & 1) == 0)
  {

    goto LABEL_10;
  }

  [(HUQuickControlRingSliderView *)self supplementaryValue];
  v5 = v4;

  if (v5 > 1.0)
  {
LABEL_10:
    v21 = [(HUQuickControlRingSliderView *)self supplementaryValueMarkingView];
    v24 = v21;
    goto LABEL_11;
  }

  [(HUQuickControlRingSliderView *)self _getEdgeRectSize];
  v7 = v6;
  [(HUQuickControlRingSliderView *)self _getMiddleCircleRadius];
  v9 = v7 / v8;
  [(HUQuickControlRingSliderView *)self _getMaxAngleFrom12OClock];
  v11 = v10;
  [(HUQuickControlRingSliderView *)self _getMinAngleFrom12OClock];
  v13 = v9 / (v11 - v12);
  [(HUQuickControlRingSliderView *)self _getPrimarySliderValue];
  v15 = v14;
  [(HUQuickControlRingSliderView *)self _getSecondarySliderValue];
  v17 = v16 - v13;
  [(HUQuickControlRingSliderView *)self supplementaryValue];
  [(HUQuickControlRingSliderView *)self _getClosestMarkingValueToValue:?];
  v19 = v18;
  v20 = v15 + v13;
  v21 = [(HUQuickControlRingSliderView *)self supplementaryValueMarkingView];
  v22 = v19 < v17 || v19 > v20;
  v24 = v21;
  if (!v22)
  {
    v23 = 0;
    goto LABEL_12;
  }

LABEL_11:
  v23 = 1;
LABEL_12:
  [v21 setHidden:v23];
}

- (void)_updateRingViewAndHandleViews
{
  v3 = [(HUQuickControlRingSliderView *)self backgroundRingView];
  [v3 frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(HUQuickControlRingSliderView *)self bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = [(HUQuickControlRingSliderView *)self backgroundRingView];
  [v20 setFrame:{v13, v15, v17, v19}];

  [(HUQuickControlRingSliderView *)self bounds];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = [(HUQuickControlRingSliderView *)self edgesAndColoredSupplementaryValueLineView];
  [v29 setFrame:{v22, v24, v26, v28}];

  [(HUQuickControlRingSliderView *)self bounds];
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v38 = [(HUQuickControlRingSliderView *)self selectedRangeImageView];
  [v38 setFrame:{v31, v33, v35, v37}];

  [(HUQuickControlRingSliderView *)self bounds];
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v47 = [(HUQuickControlRingSliderView *)self selectedRangeImageViewForEdges];
  [v47 setFrame:{v40, v42, v44, v46}];

  v48 = [(HUQuickControlRingSliderView *)self backgroundRingView];
  [v48 frame];
  v66.origin.x = v49;
  v66.origin.y = v50;
  v66.size.width = v51;
  v66.size.height = v52;
  v65.origin.x = v5;
  v65.origin.y = v7;
  v65.size.width = v9;
  v65.size.height = v11;
  v53 = CGRectEqualToRect(v65, v66);

  if (!v53 || ![(HUQuickControlRingSliderView *)self didMaskBackgroundImageView])
  {
    [(HUQuickControlRingSliderView *)self _maskBackgroundImageViewToRingShape];
  }

  [(HUQuickControlRingSliderView *)self _getCircleCenterPoint];
  v55 = v54;
  v57 = v56;
  v58 = [(HUQuickControlRingSliderView *)self labelsBackgroundView];
  [v58 setCenter:{v55, v57}];

  [(HUQuickControlRingSliderView *)self _updatePrimaryHandleViewPositionToSliderValue];
  v59 = [(HUQuickControlRingSliderView *)self secondaryHandleView];
  v60 = [(HUQuickControlRingSliderView *)self profile];
  if ([v60 hasSecondaryValue])
  {
    v61 = [(HUQuickControlRingSliderView *)self showOffState];
  }

  else
  {
    v61 = 1;
  }

  [v59 setHidden:v61];

  v62 = [(HUQuickControlRingSliderView *)self profile];
  v63 = [v62 hasSecondaryValue];

  if (v63)
  {
    [(HUQuickControlRingSliderView *)self _updateSecondaryHandleViewPositionToSliderValue];
  }

  [(HUQuickControlRingSliderView *)self _updateSelectedRangeImageView];

  [(HUQuickControlRingSliderView *)self _updateTransform];
}

- (void)_updateTransform
{
  v3 = [(HUQuickControlRingSliderView *)self profile];
  v4 = [v3 style];

  if (v4)
  {
    v9 = *(MEMORY[0x277CBF2C0] + 16);
    *&v12.a = *MEMORY[0x277CBF2C0];
    v10 = *&v12.a;
    *&v12.c = v9;
    *&v12.tx = *(MEMORY[0x277CBF2C0] + 32);
    v8 = *&v12.tx;
    [(HUQuickControlRingSliderView *)self setTransform:&v12];
    v5 = [(HUQuickControlRingSliderView *)self labelsBackgroundView];
    v6 = v5;
    *&v12.a = v10;
    *&v12.c = v9;
    v7 = v8;
  }

  else
  {
    CGAffineTransformMakeScale(&v13, -1.0, -1.0);
    v12 = v13;
    [(HUQuickControlRingSliderView *)self setTransform:&v12];
    CGAffineTransformMakeScale(&v11, -1.0, -1.0);
    v5 = [(HUQuickControlRingSliderView *)self labelsBackgroundView];
    v6 = v5;
    *&v12.a = *&v11.a;
    *&v12.c = *&v11.c;
    v7 = *&v11.tx;
  }

  *&v12.tx = v7;
  [v5 setTransform:&v12];
}

- (void)_updatePrimaryHandleViewPositionToSliderValue
{
  [(HUQuickControlRingSliderView *)self _getPrimarySliderValue];
  v4 = v3;
  [(HUQuickControlRingSliderView *)self _getHandleCenterOnRingForValue:?];
  v6 = v5;
  v8 = v7;
  v9 = [(HUQuickControlRingSliderView *)self primaryHandleView];
  [v9 setCenter:{v6, v8}];

  [(HUQuickControlRingSliderView *)self _getAngleFrom12OClockForValue:v4];
  v10 = *(MEMORY[0x277CBF2C0] + 16);
  *&v13.a = *MEMORY[0x277CBF2C0];
  *&v13.c = v10;
  *&v13.tx = *(MEMORY[0x277CBF2C0] + 32);
  CGAffineTransformRotate(&v14, &v13, v11);
  v12 = [(HUQuickControlRingSliderView *)self primaryHandleView];
  v13 = v14;
  [v12 setTransform:&v13];
}

- (void)_updateSecondaryHandleViewPositionToSliderValue
{
  v3 = [(HUQuickControlRingSliderView *)self profile];
  v4 = [v3 hasSecondaryValue];

  if ((v4 & 1) == 0)
  {
    NSLog(&cfstr_SProfileHassec.isa, "[HUQuickControlRingSliderView _updateSecondaryHandleViewPositionToSliderValue]");
  }

  [(HUQuickControlRingSliderView *)self _getSecondarySliderValue];
  v6 = v5;
  [(HUQuickControlRingSliderView *)self _getAngleFrom12OClockForValue:?];
  v8 = v7;
  [(HUQuickControlRingSliderView *)self _getHandleCenterOnRingForValue:v6];
  v10 = v9;
  v12 = v11;
  v13 = [(HUQuickControlRingSliderView *)self secondaryHandleView];
  [v13 setCenter:{v10, v12}];

  v14 = *(MEMORY[0x277CBF2C0] + 16);
  *&v16.a = *MEMORY[0x277CBF2C0];
  *&v16.c = v14;
  *&v16.tx = *(MEMORY[0x277CBF2C0] + 32);
  CGAffineTransformRotate(&v17, &v16, v8);
  v15 = [(HUQuickControlRingSliderView *)self secondaryHandleView];
  v16 = v17;
  [v15 setTransform:&v16];
}

- (void)_maskBackgroundImageViewToRingShape
{
  v68 = *MEMORY[0x277D85DE8];
  [(HUQuickControlRingSliderView *)self setDidMaskBackgroundImageView:1];
  [(HUQuickControlRingSliderView *)self _getMinAngleFrom12OClock];
  *&v3 = v3 + 4.71238898;
  v4 = fmodf(*&v3, 6.2832);
  [(HUQuickControlRingSliderView *)self _getMaxAngleFrom12OClock];
  *&v5 = v5 + 4.71238898;
  v6 = fmodf(*&v5, 6.2832);
  v7 = MEMORY[0x277D75208];
  [(HUQuickControlRingSliderView *)self _getMiddleCircleRadius];
  v9 = [v7 bezierPathWithArcCenter:1 radius:*MEMORY[0x277CBF348] startAngle:*(MEMORY[0x277CBF348] + 8) endAngle:v8 clockwise:{v4, v6}];
  v10 = [MEMORY[0x277CD9F90] layer];
  [v10 setPath:{objc_msgSend(v9, "CGPath")}];
  v11 = [MEMORY[0x277D75348] clearColor];
  [v10 setFillColor:{objc_msgSend(v11, "CGColor")}];

  v12 = [MEMORY[0x277D75348] systemWhiteColor];
  [v10 setStrokeColor:{objc_msgSend(v12, "CGColor")}];

  [v10 setLineWidth:35.0];
  [(HUQuickControlRingSliderView *)self _getCircleCenterPoint];
  [v10 setPosition:?];
  v13 = [(HUQuickControlRingSliderView *)self backgroundRingView];
  v14 = [v13 layer];
  [v14 setMask:v10];

  [(HUQuickControlRingSliderView *)self _getInnerCircleRadius];
  v16 = v15;
  v17 = [(HUQuickControlRingSliderView *)self profile];
  v18 = [v17 gradationMarkingValues];
  v19 = [v18 firstObject];
  [v19 floatValue];
  v21 = v20;

  v22 = [(HUQuickControlRingSliderView *)self profile];
  v23 = [v22 gradationMarkingValues];
  v24 = [v23 lastObject];
  [v24 floatValue];
  v26 = v25;

  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v27 = [(HUQuickControlRingSliderView *)self profile];
  v28 = [v27 gradationMarkingValues];

  v29 = [v28 countByEnumeratingWithState:&v63 objects:v67 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v64;
    do
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v64 != v31)
        {
          objc_enumerationMutation(v28);
        }

        v33 = *(*(&v63 + 1) + 8 * i);
        [v33 floatValue];
        if (v21 > v34)
        {
          [v33 floatValue];
          v21 = v35;
        }

        [v33 floatValue];
        if (v26 < v36)
        {
          [v33 floatValue];
          v26 = v37;
        }
      }

      v30 = [v28 countByEnumeratingWithState:&v63 objects:v67 count:16];
    }

    while (v30);
  }

  [(HUQuickControlRingSliderView *)self _getAngleFrom12OClockForValue:v21];
  *&v38 = v38 + 4.71238898;
  v59 = fmodf(*&v38, 6.2832);
  [(HUQuickControlRingSliderView *)self _getEdgeRectSize];
  v40 = v39;
  v60 = v39;
  v42 = v41;
  [(HUQuickControlRingSliderView *)self _getStartAngleEdgeLocationShiftForBackgroundRing:1];
  v44 = v43;
  [(HUQuickControlRingSliderView *)self outerRadius];
  v46 = v59 - v42 / v45;
  [(HUQuickControlRingSliderView *)self outerRadius];
  v48 = __sincos_stret(v46 + -2.0 / v47 - v44);
  v49 = [MEMORY[0x277D75208] bezierPathWithRoundedRect:3 byRoundingCorners:v16 * v48.__cosval cornerRadii:{v16 * v48.__sinval, v40, v42, 8.0, 8.0}];
  CGAffineTransformMakeTranslation(&v62, -(v16 * v48.__cosval), -(v16 * v48.__sinval));
  [v49 applyTransform:&v62];
  CGAffineTransformMakeScale(&v61, -1.0, -1.0);
  CGAffineTransformRotate(&v62, &v61, v59 + 3.14159265);
  [v49 applyTransform:&v62];
  CGAffineTransformMakeTranslation(&v62, v16 * v48.__cosval, v16 * v48.__sinval);
  [v49 applyTransform:&v62];
  [(HUQuickControlRingSliderView *)self _getAngleFrom12OClockForValue:v26];
  *&v50 = v50 + 4.71238898;
  v51 = fmodf(*&v50, 6.2832);
  v52 = __sincos_stret(v51);
  v53 = [MEMORY[0x277D75208] bezierPathWithRoundedRect:12 byRoundingCorners:v16 * v52.__cosval cornerRadii:{v16 * v52.__sinval, v60, v42, 8.0, 8.0}];
  CGAffineTransformMakeTranslation(&v62, -(v16 * v52.__cosval), -(v16 * v52.__sinval));
  [v53 applyTransform:&v62];
  v54 = *(MEMORY[0x277CBF2C0] + 16);
  *&v61.a = *MEMORY[0x277CBF2C0];
  *&v61.c = v54;
  *&v61.tx = *(MEMORY[0x277CBF2C0] + 32);
  CGAffineTransformRotate(&v62, &v61, v51);
  [v53 applyTransform:&v62];
  CGAffineTransformMakeTranslation(&v62, v16 * v52.__cosval, v16 * v52.__sinval);
  [v53 applyTransform:&v62];
  [v49 appendPath:v53];
  v55 = [MEMORY[0x277CD9F90] layer];
  [v55 setPath:{objc_msgSend(v49, "CGPath")}];
  v56 = [MEMORY[0x277D75348] systemWhiteColor];
  [v55 setFillColor:{objc_msgSend(v56, "CGColor")}];

  [(HUQuickControlRingSliderView *)self _getCircleCenterPoint];
  [v55 setPosition:?];
  v57 = [(HUQuickControlRingSliderView *)self edgesAndColoredSupplementaryValueLineView];
  v58 = [v57 layer];
  [v58 setMask:v55];
}

- (void)_updateUIWithTouchAtPoint:(CGPoint)a3 didTouchBegin:(BOOL)a4
{
  v4 = a4;
  y = a3.y;
  x = a3.x;
  v8 = [(HUQuickControlRingSliderView *)self profile];
  v9 = [v8 hasSecondaryValue];

  if (v9)
  {
    if ([(HUQuickControlRingSliderView *)self isDraggingPrimaryHandleView])
    {
      [(HUQuickControlRingSliderView *)self _updateUIForThresholdModeForPrimaryHandleViewWithTouchPoint:v4 didTouchBegin:x, y];
    }

    else if ([(HUQuickControlRingSliderView *)self isDraggingSecondaryHandleView])
    {
      [(HUQuickControlRingSliderView *)self _updateUIForThresholdModeForSecondaryHandleViewWithTouchPoint:v4 didTouchBegin:x, y];
    }
  }

  else
  {
    [(HUQuickControlRingSliderView *)self _getMinimumMarkingValue];
    v11 = v10;
    [(HUQuickControlRingSliderView *)self _getMaximumMarkingValue];
    v13 = v12;
    v14 = [(HUQuickControlRingSliderView *)self primaryHandleView];
    [(HUQuickControlRingSliderView *)self _updateUIForTouchPoint:v4 didTouchBegin:v14 forHandleView:x minValue:y maxValue:v11, v13];
  }

  [(HUQuickControlRingSliderView *)self _updateSelectedRangeImageView];
}

- (void)_updateUIForTouchPoint:(CGPoint)a3 didTouchBegin:(BOOL)a4 forHandleView:(id)a5 minValue:(double)a6 maxValue:(double)a7
{
  y = a3.y;
  x = a3.x;
  v76 = *MEMORY[0x277D85DE8];
  v12 = a5;
  [(HUQuickControlRingSliderView *)self _getAngleFrom12OClockForValue:a6];
  v14 = v13;
  v61 = a7;
  [(HUQuickControlRingSliderView *)self _getAngleFrom12OClockForValue:a7];
  v16 = v15;
  [(HUQuickControlRingSliderView *)self _getClosestPointOnMiddleCircleOfRing:x, y];
  v18 = v17;
  v20 = v19;
  [(HUQuickControlRingSliderView *)self _getAngleFrom12OClockForPoint:?];
  v22 = v21;
  v23 = [HUQuickControlRingSliderView _getRingSliderAreaForAngleFrom12Oclock:"_getRingSliderAreaForAngleFrom12Oclock:minAngle:maxAngle:" minAngle:? maxAngle:?];
  [v12 center];
  [(HUQuickControlRingSliderView *)self _getAngleFrom12OClockForPoint:?];
  v24 = [HUQuickControlRingSliderView _getRingSliderAreaForAngleFrom12Oclock:"_getRingSliderAreaForAngleFrom12Oclock:minAngle:maxAngle:" minAngle:? maxAngle:?];
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v25 = [(HUQuickControlRingSliderView *)self gradationMarkingViews];
  v26 = [v25 countByEnumeratingWithState:&v70 objects:v75 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = 0;
    v29 = *v71;
    v30 = 1.79769313e308;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v71 != v29)
        {
          objc_enumerationMutation(v25);
        }

        v32 = *(*(&v70 + 1) + 8 * i);
        [v32 center];
        UIDistanceBetweenPoints();
        if (v30 > v33)
        {
          v34 = v33;
          v35 = v32;

          v30 = v34;
          v28 = v35;
        }
      }

      v27 = [v25 countByEnumeratingWithState:&v70 objects:v75 count:16];
    }

    while (v27);

    v36 = v23 == 2;
    if (v24 == 3 && v23 == 2)
    {
      if (!v28)
      {
        v37 = v18;
        v38 = v20;
        goto LABEL_34;
      }

      goto LABEL_13;
    }

    if (v24 == 2 && v23 == 2)
    {
      if (v28)
      {
LABEL_13:
        [v28 center];
LABEL_34:
        [v12 setCenter:{v37, v38}];
        goto LABEL_35;
      }

LABEL_32:
      v37 = v18;
      v38 = v20;
      goto LABEL_34;
    }

    if (v24 != 2)
    {
      goto LABEL_30;
    }
  }

  else
  {

    v28 = 0;
    v36 = v23 == 2;
    if ((v24 & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      v37 = v18;
      v38 = v20;
      if (v23 == 2)
      {
        goto LABEL_34;
      }
    }

    if (v24 != 2)
    {
LABEL_30:
      if (v24 != 1 || !v36)
      {
        goto LABEL_35;
      }

LABEL_31:
      if (v28)
      {
        goto LABEL_13;
      }

      goto LABEL_32;
    }
  }

  if ([(HUQuickControlRingSliderView *)self prevTouchArea]== 2 && (v23 == 1 || v22 < v14))
  {
    v39 = self;
    v40 = v14;
    goto LABEL_69;
  }

  if (v24 == 1 && v36)
  {
    goto LABEL_31;
  }

  if ([(HUQuickControlRingSliderView *)self prevTouchArea]== 2 && (v23 == 3 || v22 > v16))
  {
    v39 = self;
    v40 = v16;
LABEL_69:
    [(HUQuickControlRingSliderView *)v39 _getPointForAngleFrom12OClock:v40];
    goto LABEL_34;
  }

LABEL_35:
  v41 = [(HUQuickControlRingSliderView *)self profile];
  v42 = [v41 handleViewStyle];

  if (v42 == 2)
  {
    [v12 center];
    [(HUQuickControlRingSliderView *)self _getAngleFrom12OClockForPoint:?];
    v43 = *(MEMORY[0x277CBF2C0] + 16);
    *&v68.a = *MEMORY[0x277CBF2C0];
    *&v68.c = v43;
    *&v68.tx = *(MEMORY[0x277CBF2C0] + 32);
    CGAffineTransformRotate(&v69, &v68, v44);
    v68 = v69;
    [v12 setTransform:&v68];
  }

  [(HUQuickControlRingSliderView *)self setPrevTouchArea:v23];
  [(HUQuickControlRingSliderView *)self _animateToEnlargeHandleView:v12];
  [(HUQuickControlRingSliderView *)self _getSliderValueForPoint:v18, v20];
  v46 = v45;
  [(HUQuickControlRingSliderView *)self prevSliderValue];
  [(HUQuickControlRingSliderView *)self _getClosestMarkingValueToValue:?];
  [(HUQuickControlRingSliderView *)self _getClosestMarkingValueToValue:v46];
  if (NACGFloatLessThanFloat())
  {
    v47 = 1;
  }

  else if (NACGFloatEqualToFloat())
  {
    v47 = 3;
  }

  else if (NACGFloatLessThanFloat())
  {
    v47 = 2;
  }

  else
  {
    v47 = 0;
  }

  if ([(HUQuickControlRingSliderView *)self _isIncreasingOrDecreasing:[(HUQuickControlRingSliderView *)self prevSlidingDirection]]&& [(HUQuickControlRingSliderView *)self _isIncreasingOrDecreasing:v47]&& [(HUQuickControlRingSliderView *)self prevSlidingDirection]!= v47)
  {
    v48 = [(HUQuickControlRingSliderView *)self currentDirectionTapticValues];
    [v48 removeAllObjects];
  }

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v49 = [(HUQuickControlRingSliderView *)self profile];
  v50 = [v49 gradationMarkingValues];

  v51 = [v50 countByEnumeratingWithState:&v64 objects:v74 count:16];
  if (v51)
  {
    v52 = *v65;
    while (2)
    {
      for (j = 0; j != v51; j = j + 1)
      {
        if (*v65 != v52)
        {
          objc_enumerationMutation(v50);
        }

        v54 = *(*(&v64 + 1) + 8 * j);
        [v54 floatValue];
        if (v55 + -0.005 < v46)
        {
          [v54 floatValue];
          if (v46 < v56 + 0.005)
          {
            v51 = v54;
            goto LABEL_59;
          }
        }
      }

      v51 = [v50 countByEnumeratingWithState:&v64 objects:v74 count:16];
      if (v51)
      {
        continue;
      }

      break;
    }
  }

LABEL_59:

  if (v51 && v46 >= a6 && v46 <= v61)
  {
    v57 = [(HUQuickControlRingSliderView *)self currentDirectionTapticValues];
    v62[0] = MEMORY[0x277D85DD0];
    v62[1] = 3221225472;
    v62[2] = __101__HUQuickControlRingSliderView__updateUIForTouchPoint_didTouchBegin_forHandleView_minValue_maxValue___block_invoke;
    v62[3] = &unk_277DBEC28;
    v58 = v51;
    v63 = v58;
    v59 = [v57 na_any:v62];

    if ((v59 & 1) == 0)
    {
      [(HUQuickControlRingSliderView *)self _prepareForTapticFeedback];
      [(HUQuickControlRingSliderView *)self _actuateSelectionTapticFeedback];
      v60 = [(HUQuickControlRingSliderView *)self currentDirectionTapticValues];
      [v60 addObject:v58];
    }
  }

  [(HUQuickControlRingSliderView *)self setPrevSliderValue:v46];
  if ([(HUQuickControlRingSliderView *)self _isIncreasingOrDecreasing:v47])
  {
    [(HUQuickControlRingSliderView *)self setPrevSlidingDirection:v47];
  }
}

- (void)_updateUIForThresholdModeForPrimaryHandleViewWithTouchPoint:(CGPoint)a3 didTouchBegin:(BOOL)a4
{
  v4 = a4;
  y = a3.y;
  x = a3.x;
  v44 = *MEMORY[0x277D85DE8];
  v8 = [(HUQuickControlRingSliderView *)self profile];
  v9 = [v8 hasSecondaryValue];

  if (v9)
  {
    [(HUQuickControlRingSliderView *)self _getSecondarySliderValue];
    v11 = v10;
    v12 = [(HUQuickControlRingSliderView *)self profile];
    v13 = [v12 handleViewStyle];

    if (v13 == 1)
    {
      [(HUQuickControlRingSliderView *)self _getSecondarySliderValue];
      v15 = v14;
      v16 = [(HUQuickControlRingSliderView *)self primaryHandleView];
      [v16 outerRadius];
      v18 = v17 * 3.14159265;
      [(HUQuickControlRingSliderView *)self outerRadius];
      v11 = v15 + v18 / (v19 * 3.14159265 + v19 * 3.14159265);
    }

    else
    {
      v21 = [(HUQuickControlRingSliderView *)self profile];
      v22 = [v21 handleViewStyle];

      if (v22 == 2)
      {
        [(HUQuickControlRingSliderView *)self modelRangeValue];
        [(HUQuickControlRingSliderView *)self _getClosestMarkingValueToValue:?];
        v24 = v23;
        [(HUQuickControlRingSliderView *)self modelRangeValue];
        [(HUQuickControlRingSliderView *)self _getClosestMarkingValueToValue:v25];
        if (v24 != v26)
        {
          [(HUQuickControlRingSliderView *)self _getSecondarySliderValue];
          v28 = v27;
          [(HUQuickControlRingSliderView *)self _getOneMarkerValueDifference];
          v11 = v28 + v29;
        }
      }
    }

    [(HUQuickControlRingSliderView *)self _getMinimumMarkingValue];
    v31 = v30;
    [(HUQuickControlRingSliderView *)self _getMaximumMarkingValue];
    v33 = v32;
    v34 = [(HUQuickControlRingSliderView *)self profile];
    v35 = [v34 primaryValueConstraints];
    v36 = [v35 minValue];
    [v36 floatValue];
    v38 = fmax(fmax(v31, v11), v37);

    v39 = [(HUQuickControlRingSliderView *)self primaryHandleView];
    [(HUQuickControlRingSliderView *)self _updateUIForTouchPoint:v4 didTouchBegin:x forHandleView:y minValue:v38 maxValue:v33];
  }

  else
  {
    v20 = HFLogForCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315394;
      v41 = "[HUQuickControlRingSliderView _updateUIForThresholdModeForPrimaryHandleViewWithTouchPoint:didTouchBegin:]";
      v42 = 2048;
      v43 = 959;
      _os_log_fault_impl(&dword_20CEB6000, v20, OS_LOG_TYPE_FAULT, "%s (Line: %ld) This method should only be called for threshold mode.", buf, 0x16u);
    }
  }
}

- (void)_updateUIForThresholdModeForSecondaryHandleViewWithTouchPoint:(CGPoint)a3 didTouchBegin:(BOOL)a4
{
  v4 = a4;
  y = a3.y;
  x = a3.x;
  v45 = *MEMORY[0x277D85DE8];
  v8 = [(HUQuickControlRingSliderView *)self profile];
  v9 = [v8 hasSecondaryValue];

  if (v9)
  {
    [(HUQuickControlRingSliderView *)self _getPrimarySliderValue];
    v11 = v10;
    v12 = [(HUQuickControlRingSliderView *)self profile];
    v13 = [v12 handleViewStyle];

    if (v13 == 1)
    {
      [(HUQuickControlRingSliderView *)self _getPrimarySliderValue];
      v15 = v14;
      v16 = [(HUQuickControlRingSliderView *)self secondaryHandleView];
      [v16 outerRadius];
      v18 = v17 * 3.14159265;
      [(HUQuickControlRingSliderView *)self outerRadius];
      v11 = v15 - v18 / (v19 * 3.14159265 + v19 * 3.14159265);
    }

    else
    {
      v21 = [(HUQuickControlRingSliderView *)self profile];
      v22 = [v21 handleViewStyle];

      if (v22 == 2)
      {
        [(HUQuickControlRingSliderView *)self modelRangeValue];
        [(HUQuickControlRingSliderView *)self _getClosestMarkingValueToValue:?];
        v24 = v23;
        [(HUQuickControlRingSliderView *)self modelRangeValue];
        [(HUQuickControlRingSliderView *)self _getClosestMarkingValueToValue:v25];
        if (v24 != v26)
        {
          [(HUQuickControlRingSliderView *)self _getPrimarySliderValue];
          v28 = v27;
          [(HUQuickControlRingSliderView *)self _getOneMarkerValueDifference];
          v11 = v28 - v29;
        }
      }
    }

    [(HUQuickControlRingSliderView *)self _getMinimumMarkingValue];
    v31 = v30;
    [(HUQuickControlRingSliderView *)self _getMaximumMarkingValue];
    v33 = v32;
    v34 = [(HUQuickControlRingSliderView *)self profile];
    v35 = [v34 secondaryValueConstraints];
    v36 = [v35 maxValue];
    [v36 floatValue];
    [(HUQuickControlRingSliderView *)self _getClosestMarkingValueToValue:v37];
    v39 = fmin(fmin(v38, v11), v33);

    v40 = [(HUQuickControlRingSliderView *)self secondaryHandleView];
    [(HUQuickControlRingSliderView *)self _updateUIForTouchPoint:v4 didTouchBegin:x forHandleView:y minValue:v31 maxValue:v39];
  }

  else
  {
    v20 = HFLogForCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315394;
      v42 = "[HUQuickControlRingSliderView _updateUIForThresholdModeForSecondaryHandleViewWithTouchPoint:didTouchBegin:]";
      v43 = 2048;
      v44 = 992;
      _os_log_fault_impl(&dword_20CEB6000, v20, OS_LOG_TYPE_FAULT, "%s (Line: %ld) This method should only be called for threshold mode.", buf, 0x16u);
    }
  }
}

- (void)_animateToEnlargeHandleView:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    [v3 transform];
  }

  else
  {
    memset(&t1, 0, sizeof(t1));
  }

  v8 = *(MEMORY[0x277CBF2C0] + 16);
  v9 = *MEMORY[0x277CBF2C0];
  *&t2.a = *MEMORY[0x277CBF2C0];
  *&t2.c = v8;
  v7 = *(MEMORY[0x277CBF2C0] + 32);
  *&t2.tx = v7;
  if (CGAffineTransformEqualToTransform(&t1, &t2) && [v4 handleViewStyle] == 1)
  {
    [v4 frame];
    *&t1.a = v9;
    *&t1.c = v8;
    *&t1.tx = v7;
    CGAffineTransformTranslate(&v12, &t1, v5 * 0.3 * -0.5, v5 * 0.3 * -0.5);
    t1 = v12;
    [v4 setTransform:&t1];
    v6 = MEMORY[0x277D75D18];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __60__HUQuickControlRingSliderView__animateToEnlargeHandleView___block_invoke;
    v10[3] = &unk_277DB8488;
    v11 = v4;
    [v6 animateWithDuration:v10 animations:0.15];
  }
}

uint64_t __60__HUQuickControlRingSliderView__animateToEnlargeHandleView___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    [v2 transform];
    v3 = *(a1 + 32);
  }

  else
  {
    v3 = 0;
    memset(&v5, 0, sizeof(v5));
  }

  CGAffineTransformScale(&v6, &v5, 1.3, 1.3);
  v5 = v6;
  return [v3 setTransform:&v5];
}

- (CGSize)_getEdgeRectSize
{
  v3 = [(HUQuickControlRingSliderView *)self profile];
  v4 = [v3 gradationMarkingValues];
  v5 = [v4 count];

  v6 = 0.0;
  if (v5 >= 2)
  {
    v7 = [(HUQuickControlRingSliderView *)self profile];
    v8 = [v7 gradationMarkingValues];
    v9 = [v8 objectAtIndexedSubscript:1];
    [v9 floatValue];
    v11 = v10;
    v12 = [(HUQuickControlRingSliderView *)self profile];
    v13 = [v12 gradationMarkingValues];
    v14 = [v13 firstObject];
    [v14 floatValue];
    v6 = (v11 - v15);
  }

  [(HUQuickControlRingSliderView *)self _getInnerCircleRadius];
  v17 = v6 * ((v16 + v16) * 3.14159265) * 0.5;
  v18 = 13.0;
  if (v17 <= 13.0)
  {
    v18 = v17;
  }

  v19 = 35.0;
  result.height = v18;
  result.width = v19;
  return result;
}

- (double)_getStartAngleEdgeLocationShiftForBackgroundRing:(BOOL)a3
{
  v3 = a3;
  v4 = [(HUQuickControlRingSliderView *)self profile];
  v5 = [v4 controlSize];

  if (v5 - 2 < 2)
  {
    return -0.004;
  }

  if (v5 > 1)
  {
    return 0.0;
  }

  result = -0.005;
  if (v3)
  {
    return -0.001;
  }

  return result;
}

- (double)_getOneMarkerValueDifference
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = [(HUQuickControlRingSliderView *)self profile];
  v4 = [v3 gradationMarkingValues];
  v5 = [v4 count];

  if (v5 < 2)
  {
    v21 = HFLogForCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = [(HUQuickControlRingSliderView *)self profile];
      v23 = [v22 gradationMarkingValues];
      v25 = 136315394;
      v26 = "[HUQuickControlRingSliderView _getOneMarkerValueDifference]";
      v27 = 2048;
      v28 = [v23 count];
      _os_log_impl(&dword_20CEB6000, v21, OS_LOG_TYPE_DEFAULT, "%s. profile gradation marking values count is %lu, not above 2", &v25, 0x16u);
    }

    return 0.0;
  }

  else
  {
    v6 = [(HUQuickControlRingSliderView *)self profile];
    v7 = [v6 gradationMarkingValues];
    v8 = [v7 objectAtIndexedSubscript:0];

    v9 = [(HUQuickControlRingSliderView *)self profile];
    v10 = [v9 gradationMarkingValues];
    v11 = [v10 objectAtIndexedSubscript:1];

    [v8 floatValue];
    v13 = v12;
    [v11 floatValue];
    if (v13 >= v14)
    {
      v15 = v8;
    }

    else
    {
      v15 = v11;
    }

    if (v13 >= v14)
    {
      v16 = v11;
    }

    else
    {
      v16 = v8;
    }

    [v15 floatValue];
    v18 = v17;
    [v16 floatValue];
    v20 = (v18 - v19);
  }

  return v20;
}

- (void)_updateSelectedRangeImageView
{
  v74 = *MEMORY[0x277D85DE8];
  [(HUQuickControlRingSliderView *)self _getEdgeRectSize];
  v65 = v4;
  v66 = v3;
  v5 = [(HUQuickControlRingSliderView *)self profile];
  v6 = [v5 gradationMarkingValues];
  v7 = [v6 firstObject];
  [v7 floatValue];
  v9 = v8;

  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v10 = [(HUQuickControlRingSliderView *)self profile];
  v11 = [v10 gradationMarkingValues];

  v12 = [v11 countByEnumeratingWithState:&v69 objects:v73 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v70;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v70 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v69 + 1) + 8 * i);
        [v16 floatValue];
        if (v9 > v17)
        {
          [v16 floatValue];
          v9 = v18;
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v69 objects:v73 count:16];
    }

    while (v13);
  }

  v19 = [(HUQuickControlRingSliderView *)self profile];
  if ([v19 hasSecondaryValue])
  {
    [(HUQuickControlRingSliderView *)self _getSecondarySliderValue];
    v9 = v20;
  }

  [(HUQuickControlRingSliderView *)self _getAngleFrom12OClockForValue:v9];
  v22 = v21;

  if ([(HUQuickControlRingSliderView *)self showOffState]|| ![(HUQuickControlRingSliderView *)self reachabilityState]|| [(HUQuickControlRingSliderView *)self reachabilityState]== 1)
  {
    [(HUQuickControlRingSliderView *)self _getMaxAngleFrom12OClock];
    v24 = v23;
    [(HUQuickControlRingSliderView *)self _getMinAngleFrom12OClock];
    v22 = v25;
  }

  else
  {
    v58 = [(HUQuickControlRingSliderView *)self primaryHandleView];
    [v58 center];
    [(HUQuickControlRingSliderView *)self _getAngleFrom12OClockForPoint:?];
    v24 = v59;
  }

  v26 = v24 + 4.71238898;
  v27 = fmodf(v26, 6.2832);
  v28 = v22 + 4.71238898;
  v64 = fmodf(v28, 6.2832);
  v29 = [MEMORY[0x277CD9F90] layer];
  [(HUQuickControlRingSliderView *)self _getMiddleCircleRadius];
  v63 = v30;
  v31 = [MEMORY[0x277D75208] bezierPathWithArcCenter:1 radius:*MEMORY[0x277CBF348] startAngle:*(MEMORY[0x277CBF348] + 8) endAngle:? clockwise:?];
  [v29 setLineWidth:35.0];
  [(HUQuickControlRingSliderView *)self _getCircleCenterPoint];
  [v29 setPosition:?];
  v32 = [MEMORY[0x277D75348] clearColor];
  [v29 setFillColor:{objc_msgSend(v32, "CGColor")}];

  [v29 setPath:{objc_msgSend(v31, "CGPath")}];
  v33 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:1.0];
  [v29 setStrokeColor:{objc_msgSend(v33, "CGColor")}];

  v34 = [(HUQuickControlRingSliderView *)self selectedRangeImageView];
  v35 = [v34 layer];
  [v35 setMask:v29];

  [(HUQuickControlRingSliderView *)self _updateSupplementaryValueMarkingViewColor];
  [(HUQuickControlRingSliderView *)self _getInnerCircleRadius];
  v37 = v36;
  v38 = __sincos_stret(v27 + -0.001);
  v39 = [MEMORY[0x277D75208] bezierPathWithRoundedRect:12 byRoundingCorners:v38.__cosval * v37 cornerRadii:{v38.__sinval * v37, v66, v65, 8.0, 8.0}];
  [v39 setUsesEvenOddFillRule:1];
  CGAffineTransformMakeTranslation(&v68, -(v38.__cosval * v37), -(v38.__sinval * v37));
  [v39 applyTransform:&v68];
  v61 = *(MEMORY[0x277CBF2C0] + 16);
  v62 = *MEMORY[0x277CBF2C0];
  *&v67.a = *MEMORY[0x277CBF2C0];
  *&v67.c = v61;
  v60 = *(MEMORY[0x277CBF2C0] + 32);
  *&v67.tx = v60;
  CGAffineTransformRotate(&v68, &v67, v27 + -0.001);
  [v39 applyTransform:&v68];
  CGAffineTransformMakeTranslation(&v68, v38.__cosval * v37, v38.__sinval * v37);
  [v39 applyTransform:&v68];
  [(HUQuickControlRingSliderView *)self _getStartAngleEdgeLocationShiftForBackgroundRing:0];
  v41 = v40;
  [(HUQuickControlRingSliderView *)self outerRadius];
  v43 = v64 - v65 / v42;
  [(HUQuickControlRingSliderView *)self outerRadius];
  v45 = __sincos_stret(v43 + -2.0 / v44 - v41);
  v46 = [MEMORY[0x277D75208] bezierPathWithRoundedRect:3 byRoundingCorners:v37 * v45.__cosval cornerRadii:{v37 * v45.__sinval, v66, v65, 8.0, 8.0}];
  [v46 setUsesEvenOddFillRule:1];
  CGAffineTransformMakeTranslation(&v68, -(v37 * v45.__cosval), -(v37 * v45.__sinval));
  [v46 applyTransform:&v68];
  CGAffineTransformMakeScale(&v67, -1.0, -1.0);
  CGAffineTransformRotate(&v68, &v67, v64 + 3.14159265);
  [v46 applyTransform:&v68];
  CGAffineTransformMakeTranslation(&v68, v37 * v45.__cosval, v37 * v45.__sinval);
  [v46 applyTransform:&v68];
  [v39 appendPath:v46];
  if ([(HUQuickControlRingSliderView *)self reachabilityState]!= 1 && [(HUQuickControlRingSliderView *)self reachabilityState])
  {
    [(HUQuickControlRingSliderView *)self supplementaryValue];
    [(HUQuickControlRingSliderView *)self _getClosestMarkingValueToValue:?];
    [(HUQuickControlRingSliderView *)self _getAngleFrom12OClockForValue:?];
    v48 = v47;
    [(HUQuickControlRingSliderView *)self _getMiddleCircleRadius];
    *&v49 = v48 - 2.0 / v49 + 4.71238898;
    v50 = fmodf(*&v49, 6.2832);
    v51 = (v63 + v37) * 0.5;
    v52 = __sincos_stret(v50);
    v53 = [MEMORY[0x277D75208] bezierPathWithRoundedRect:v51 * v52.__cosval cornerRadius:{v51 * v52.__sinval, 19.0, 4.0, 2.0}];
    CGAffineTransformMakeTranslation(&v68, -(v51 * v52.__cosval), -(v51 * v52.__sinval));
    [v53 applyTransform:&v68];
    *&v67.a = v62;
    *&v67.c = v61;
    *&v67.tx = v60;
    CGAffineTransformRotate(&v68, &v67, v50);
    [v53 applyTransform:&v68];
    CGAffineTransformMakeTranslation(&v68, v51 * v52.__cosval, v51 * v52.__sinval);
    [v53 applyTransform:&v68];
    [v39 appendPath:v53];
  }

  v54 = [MEMORY[0x277CD9F90] layer];
  [v54 setPath:{objc_msgSend(v39, "CGPath")}];
  v55 = [MEMORY[0x277D75348] systemWhiteColor];
  [v54 setFillColor:{objc_msgSend(v55, "CGColor")}];

  [(HUQuickControlRingSliderView *)self _getCircleCenterPoint];
  [v54 setPosition:?];
  v56 = [(HUQuickControlRingSliderView *)self selectedRangeImageViewForEdges];
  v57 = [v56 layer];
  [v57 setMask:v54];
}

- (double)_getClosestMarkingValueToValue:(double)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = [(HUQuickControlRingSliderView *)self profile];
  v6 = [v5 gradationMarkingValues];
  v7 = [v6 firstObject];
  [v7 floatValue];
  v9 = v8;

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v10 = [(HUQuickControlRingSliderView *)self profile];
  v11 = [v10 gradationMarkingValues];

  v12 = [v11 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v12)
  {
    v13 = v12;
    if (v9 >= a3)
    {
      v14 = v9 - a3;
    }

    else
    {
      v14 = a3 - v9;
    }

    v15 = *v28;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v28 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v27 + 1) + 8 * i);
        [v17 floatValue];
        v19 = v18;
        [v17 floatValue];
        v21 = v20;
        v22 = a3 - v21;
        v23 = v21 - a3;
        if (v19 >= a3)
        {
          v24 = v23;
        }

        else
        {
          v24 = v22;
        }

        if (v24 < v14)
        {
          [v17 floatValue];
          v9 = v25;
          v14 = v24;
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v13);
  }

  return v9;
}

- (BOOL)_areHandleViewsAnimating
{
  v3 = [(HUQuickControlRingSliderView *)self primaryHandleView];
  v4 = [v3 layer];
  v5 = [v4 animationKeys];
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v7 = [(HUQuickControlRingSliderView *)self secondaryHandleView];
    v8 = [v7 layer];
    v9 = [v8 animationKeys];
    v6 = v9 != 0;
  }

  return v6;
}

- (void)_updateModelValueWithSlidersPositions
{
  v3 = [(HUQuickControlRingSliderView *)self primaryHandleView];
  [v3 center];
  [(HUQuickControlRingSliderView *)self _getSliderValueForPoint:?];
  v5 = v4;

  v6 = [(HUQuickControlRingSliderView *)self profile];
  v7 = [v6 hasSecondaryValue];

  v8 = 0.0;
  if (v7)
  {
    v9 = [(HUQuickControlRingSliderView *)self secondaryHandleView];
    [v9 center];
    [(HUQuickControlRingSliderView *)self _getSliderValueForPoint:?];
    v8 = v10;
  }

  [(HUQuickControlRingSliderView *)self _updateModelValue:1 roundValue:1 notifyInteractionDelegate:v8, v5];
}

- (void)_touchEnded
{
  if ((_MergedGlobals_1_2 & 1) != 0 || (_MergedGlobals_1_2 & 0x100) != 0)
  {
    return;
  }

  if ([(HUQuickControlRingSliderView *)self isDraggingPrimaryHandleView])
  {
    v3 = [(HUQuickControlRingSliderView *)self primaryHandleView];
    v4 = v3;
    if (v3)
    {
      [v3 transform];
    }

    else
    {
      memset(&t1, 0, sizeof(t1));
    }

    v5 = *(MEMORY[0x277CBF2C0] + 16);
    *&t2.a = *MEMORY[0x277CBF2C0];
    *&t2.c = v5;
    *&t2.tx = *(MEMORY[0x277CBF2C0] + 32);
    v6 = CGAffineTransformEqualToTransform(&t1, &t2);

    if (!v6)
    {
      v9 = [(HUQuickControlRingSliderView *)self primaryHandleView];
      v10 = &_MergedGlobals_1_2;
LABEL_16:
      *v10 = 1;
      goto LABEL_17;
    }
  }

  if ([(HUQuickControlRingSliderView *)self isDraggingSecondaryHandleView])
  {
    v7 = [(HUQuickControlRingSliderView *)self secondaryHandleView];
    v8 = v7;
    if (v7)
    {
      [v7 transform];
    }

    else
    {
      memset(&t1, 0, sizeof(t1));
    }

    v11 = *(MEMORY[0x277CBF2C0] + 16);
    *&t2.a = *MEMORY[0x277CBF2C0];
    *&t2.c = v11;
    *&t2.tx = *(MEMORY[0x277CBF2C0] + 32);
    v12 = CGAffineTransformEqualToTransform(&t1, &t2);

    if (!v12)
    {
      v9 = [(HUQuickControlRingSliderView *)self secondaryHandleView];
      v10 = (&_MergedGlobals_1_2 + 1);
      goto LABEL_16;
    }
  }

  v9 = 0;
LABEL_17:
  [(HUQuickControlRingSliderView *)self _actuateImpactTapticFeedback];
  v13 = [(HUQuickControlRingSliderView *)self profile];
  v14 = [v13 handleViewStyle];

  if (v14 == 1)
  {
    if (v9)
    {
      [v9 frame];
      v16 = v15 * 0.3 * 0.5;
      [v9 transform];
      CGAffineTransformTranslate(&v23, &t1, v16, v16);
      t1 = v23;
      [v9 setTransform:&t1];
      v17 = MEMORY[0x277D75D18];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __43__HUQuickControlRingSliderView__touchEnded__block_invoke;
      v21[3] = &unk_277DB8488;
      v22 = v9;
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __43__HUQuickControlRingSliderView__touchEnded__block_invoke_2;
      v20[3] = &unk_277DB8C28;
      v20[4] = self;
      [v17 animateWithDuration:v21 animations:v20 completion:0.15];
    }
  }

  else
  {
    [(HUQuickControlRingSliderView *)self setIsDraggingPrimaryHandleView:0];
    [(HUQuickControlRingSliderView *)self setIsDraggingSecondaryHandleView:0];
    _MergedGlobals_1_2 = 0;
  }

  [(HUQuickControlRingSliderView *)self setPrevTouchArea:0];
  v18 = [(HUQuickControlRingSliderView *)self interactionDelegate];
  [v18 controlView:self interactionStateDidChange:0 forFirstTouch:0];

  [(HUQuickControlRingSliderView *)self setUserInteractionActive:0];
  v19 = [(HUQuickControlRingSliderView *)self currentDirectionTapticValues];
  [v19 removeAllObjects];
}

uint64_t __43__HUQuickControlRingSliderView__touchEnded__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(MEMORY[0x277CBF2C0] + 16);
  v4[0] = *MEMORY[0x277CBF2C0];
  v4[1] = v2;
  v4[2] = *(MEMORY[0x277CBF2C0] + 32);
  return [v1 setTransform:v4];
}

uint64_t __43__HUQuickControlRingSliderView__touchEnded__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setIsDraggingPrimaryHandleView:0];
  result = [*(a1 + 32) setIsDraggingSecondaryHandleView:0];
  _MergedGlobals_1_2 = 0;
  return result;
}

- (void)updateSupplementaryLabelWithString:(id)a3
{
  v5 = a3;
  if ([v5 length])
  {
    v4 = [(HUQuickControlRingSliderView *)self supplementaryLabel];
    [v4 setText:v5];

    [(HUQuickControlRingSliderView *)self _updateLabelsSize];
  }
}

- (void)updatePrimaryLabelWithString:(id)a3 fontSize:(double)a4
{
  v9 = a3;
  if ([v9 length])
  {
    v6 = [(HUQuickControlRingSliderView *)self primaryLabel];
    [v6 setText:v9];

    v7 = [MEMORY[0x277D74300] monospacedDigitSystemFontOfSize:a4 weight:*MEMORY[0x277D743F8]];
    v8 = [(HUQuickControlRingSliderView *)self primaryLabel];
    [v8 setFont:v7];

    [(HUQuickControlRingSliderView *)self _updateLabelsSize];
  }
}

- (void)_updateLabelsSize
{
  v3 = [(HUQuickControlRingSliderView *)self supplementaryLabel];
  [v3 sizeToFit];

  v4 = [(HUQuickControlRingSliderView *)self primaryLabel];
  [v4 sizeToFit];

  [(HUQuickControlRingSliderView *)self frame];
  v6 = v5 + -70.0;
  [(HUQuickControlRingSliderView *)self frame];
  v8 = v6 + v7 * -0.1 * 2.0;
  v9 = [(HUQuickControlRingSliderView *)self supplementaryLabel];
  [v9 frame];
  if (v10 > v8)
  {
    [(HUQuickControlRingSliderView *)self frame];
    v12 = v11;

    if (v12 <= 0.0)
    {
      goto LABEL_5;
    }

    v13 = [(HUQuickControlRingSliderView *)self supplementaryLabel];
    [v13 frame];
    v15 = v14;
    v17 = v16;
    v19 = v18;

    v9 = [(HUQuickControlRingSliderView *)self supplementaryLabel];
    [v9 setFrame:{v15, v17, v8, v19}];
  }

LABEL_5:
  v20 = [(HUQuickControlRingSliderView *)self primaryLabel];
  [v20 frame];
  if (v21 > v8)
  {
    [(HUQuickControlRingSliderView *)self frame];
    v23 = v22;

    if (v23 <= 0.0)
    {
      goto LABEL_9;
    }

    v24 = [(HUQuickControlRingSliderView *)self primaryLabel];
    [v24 frame];
    v26 = v25;
    v28 = v27;
    v30 = v29;

    v20 = [(HUQuickControlRingSliderView *)self primaryLabel];
    [v20 setFrame:{v26, v28, v8, v30}];
  }

LABEL_9:
  v31 = [(HUQuickControlRingSliderView *)self supplementaryLabel];
  [v31 frame];
  v33 = v32;

  v34 = [(HUQuickControlRingSliderView *)self primaryLabel];
  [v34 frame];
  v36 = v35 + 3.0;

  if (v33 < v36)
  {
    v33 = v36;
  }

  v37 = [(HUQuickControlRingSliderView *)self supplementaryLabel];
  [v37 frame];
  v39 = v38;
  v40 = [(HUQuickControlRingSliderView *)self primaryLabel];
  [v40 frame];
  v42 = v39 + v41;

  [(HUQuickControlRingSliderView *)self _getCircleCenterPoint];
  v43 = v33 * 0.5;
  v45 = v44 - v33 * 0.5;
  [(HUQuickControlRingSliderView *)self _getCircleCenterPoint];
  v47 = v46 - v42 * 0.5;
  v48 = [(HUQuickControlRingSliderView *)self labelsBackgroundView];
  [v48 setFrame:{v45, v47, v33, v42}];

  v49 = [(HUQuickControlRingSliderView *)self supplementaryLabel];
  [v49 frame];
  v51 = v33 * 0.5 - v50 * 0.5;

  v52 = [(HUQuickControlRingSliderView *)self supplementaryLabel];
  [v52 frame];
  v54 = v53;
  v56 = v55;

  v57 = [(HUQuickControlRingSliderView *)self supplementaryLabel];
  [v57 setFrame:{v51, 0.0, v54, v56}];

  v58 = [(HUQuickControlRingSliderView *)self primaryLabel];
  [v58 frame];
  v60 = v43 - v59 * 0.5 + 3.0;

  v61 = [(HUQuickControlRingSliderView *)self primaryLabel];
  [v61 frame];
  v63 = v62;

  v64 = [(HUQuickControlRingSliderView *)self primaryLabel];
  [v64 frame];
  v66 = v65;

  v67 = [(HUQuickControlRingSliderView *)self primaryLabel];
  [v67 setFrame:{v60, v56, v63, v66}];
}

- (void)_prepareForTapticFeedback
{
  v3 = objc_alloc_init(MEMORY[0x277D75A10]);
  [(HUQuickControlRingSliderView *)self setSelectionFeedbackGenerator:v3];

  v4 = [(HUQuickControlRingSliderView *)self selectionFeedbackGenerator];
  [v4 prepare];

  v5 = [objc_alloc(MEMORY[0x277D755F0]) initWithStyle:1];
  [(HUQuickControlRingSliderView *)self setImpactFeedbackGenerator:v5];

  v6 = [(HUQuickControlRingSliderView *)self impactFeedbackGenerator];
  [v6 prepare];
}

- (void)_actuateSelectionTapticFeedback
{
  v3 = [(HUQuickControlRingSliderView *)self selectionFeedbackGenerator];
  [v3 selectionChanged];

  v4 = [(HUQuickControlRingSliderView *)self selectionFeedbackGenerator];
  [v4 prepare];
}

- (void)_actuateImpactTapticFeedback
{
  v3 = [(HUQuickControlRingSliderView *)self impactFeedbackGenerator];
  [v3 impactOccurred];

  v4 = [(HUQuickControlRingSliderView *)self impactFeedbackGenerator];
  [v4 prepare];
}

- (double)_getSliderValueForAngleFrom12OClock:(double)a3
{
  [(HUQuickControlRingSliderView *)self _getPointForAngleFrom12OClock:a3];

  [(HUQuickControlRingSliderView *)self _getSliderValueForPoint:?];
  return result;
}

- (double)_getSliderValueForPoint:(CGPoint)a3
{
  [(HUQuickControlRingSliderView *)self _getAngleFrom12OClockForPoint:a3.x, a3.y];
  v5 = v4;
  [(HUQuickControlRingSliderView *)self _getPossibleAngleRange12OClock];
  return (v5 - v6) / (v7 - v6);
}

- (double)_getAngleFrom12OClockForValue:(double)a3
{
  v3 = a3;
  v12 = *MEMORY[0x277D85DE8];
  if (a3 < 0.0)
  {
    v5 = HFLogForCategory();
    v6 = 0.0;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *v11 = 136315394;
      *&v11[4] = "[HUQuickControlRingSliderView _getAngleFrom12OClockForValue:]";
      *&v11[12] = 2048;
      *&v11[14] = v3;
      v7 = "(%s) value = %f when expected to be between 0.0 and 1.0. Adjusting it to 0.0";
LABEL_9:
      _os_log_debug_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEBUG, v7, v11, 0x16u);
      goto LABEL_6;
    }

    goto LABEL_6;
  }

  v6 = 1.0;
  if (a3 > 1.0)
  {
    v5 = HFLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *v11 = 136315394;
      *&v11[4] = "[HUQuickControlRingSliderView _getAngleFrom12OClockForValue:]";
      *&v11[12] = 2048;
      *&v11[14] = v3;
      v7 = "(%s) value = %f when expected to be between 0.0 and 1.0. Adjusting it to 1.0";
      goto LABEL_9;
    }

LABEL_6:

    v3 = v6;
  }

  [(HUQuickControlRingSliderView *)self _getPossibleAngleRange12OClock:*v11];
  return v9 + (v8 - v9) * v3;
}

- (CGPoint)_getHandleCenterOnRingForValue:(double)a3
{
  [(HUQuickControlRingSliderView *)self _getAngleFrom12OClockForValue:a3];
  v5 = v4;
  [(HUQuickControlRingSliderView *)self _getMiddleCircleRadius];
  v7 = v6;
  [(HUQuickControlRingSliderView *)self _getCircleCenterPoint];
  v9 = v8;
  v11 = v10;
  v12 = __sincos_stret(v5);
  v13 = v9 + v7 * v12.__sinval;
  v14 = v11 - v7 * v12.__cosval;
  result.y = v14;
  result.x = v13;
  return result;
}

- (double)_getAngleFrom12OClockForPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(HUQuickControlRingSliderView *)self bounds];
  if (v6 != 0.0 || ([(HUQuickControlRingSliderView *)self bounds], result = 0.0, v8 != 0.0))
  {
    [(HUQuickControlRingSliderView *)self _getMiddleCircleRadius];
    v10 = v9;
    [(HUQuickControlRingSliderView *)self _getCircleCenterPoint];
    v12 = v11;
    v14 = v13;
    [(HUQuickControlRingSliderView *)self _getClosestPointOnMiddleCircleOfRing:x, y];
    v16 = v15;
    v18 = v17;
    UIDistanceBetweenPoints();
    if (v10 > 0.0 && vabdd_f64(v19, v10) >= 0.05)
    {
      NSLog(&cfstr_TheDistanceBet.isa, *&v10);
    }

    if (v16 < v12 || v18 >= v14)
    {
      if (v16 <= v12 || v18 < v14)
      {
        v22 = (v12 - v16) / v10;
        if (v16 > v12 || v18 <= v14)
        {
          v20 = acos(v22);
          v21 = 4.71238898;
        }

        else
        {
          v20 = asin(v22);
          v21 = 3.14159265;
        }
      }

      else
      {
        v20 = acos((v16 - v12) / v10);
        v21 = 1.57079633;
      }

      return v20 + v21;
    }

    else
    {

      return asin((v16 - v12) / v10);
    }
  }

  return result;
}

- (CGPoint)_getPointForAngleFrom12OClock:(double)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = fmodf(v5, 6.2832);
  [(HUQuickControlRingSliderView *)self _getMiddleCircleRadius];
  if (v7 <= 0.0)
  {
    v17 = HFLogForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      v20 = NSStringFromSelector(a2);
      v25 = 138412546;
      v26 = v19;
      v27 = 2112;
      v28 = v20;
      _os_log_impl(&dword_20CEB6000, v17, OS_LOG_TYPE_DEFAULT, "(%@/%@) middleCircleRadius should be > 0", &v25, 0x16u);
    }

    v15 = *MEMORY[0x277CBF348];
    v16 = *(MEMORY[0x277CBF348] + 8);
  }

  else
  {
    v8 = v7;
    v9 = v6;
    [(HUQuickControlRingSliderView *)self frame];
    v11 = v10 * 0.5;
    [(HUQuickControlRingSliderView *)self frame];
    v13 = v12 * 0.5;
    if (v6 < 0.0 || v9 >= 1.57079633)
    {
      if (v9 < 1.57079633 || v9 >= 3.14159265)
      {
        v22 = -v8;
        if (v9 < 3.14159265 || v9 >= 4.71238898)
        {
          v24 = __sincos_stret(v9 + -4.71238898);
          v15 = v11 + v22 * v24.__cosval;
          v16 = v13 + v22 * v24.__sinval;
        }

        else
        {
          v23 = __sincos_stret(v9 + -3.14159265);
          v15 = v11 + v22 * v23.__sinval;
          v16 = v13 + v8 * v23.__cosval;
        }
      }

      else
      {
        v21 = __sincos_stret(v9 + -1.57079633);
        v15 = v11 + v8 * v21.__cosval;
        v16 = v13 + v8 * v21.__sinval;
      }
    }

    else
    {
      v14 = __sincos_stret(v6);
      v15 = v11 + v8 * v14.__sinval;
      v16 = v13 - v8 * v14.__cosval;
    }
  }

  result.y = v16;
  result.x = v15;
  return result;
}

- (CGPoint)_getClosestPointOnMiddleCircleOfRing:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(HUQuickControlRingSliderView *)self outerRadius];
  v7 = v6 + -17.5;
  [(HUQuickControlRingSliderView *)self frame];
  v9 = v8 * 0.5;
  [(HUQuickControlRingSliderView *)self frame];
  v11 = v10 * 0.5;
  UIDistanceBetweenPoints();
  v13 = v11 + v7 * (y - v11) / v12;
  v14 = v9 + v7 * (x - v9) / v12;
  result.y = v13;
  result.x = v14;
  return result;
}

- (BOOL)_primaryHandleViewContainsPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(HUQuickControlRingSliderView *)self primaryHandleView];
  [v6 convertPoint:self fromView:{x, y}];
  v8 = v7;
  v10 = v9;

  v11 = [(HUQuickControlRingSliderView *)self primaryHandleView];
  [v11 bounds];
  v13.x = v8;
  v13.y = v10;
  LOBYTE(v6) = CGRectContainsPoint(v14, v13);

  return v6;
}

- (BOOL)_secondaryHandleViewContainsPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(HUQuickControlRingSliderView *)self profile];
  v7 = [v6 hasSecondaryValue];

  if (!v7)
  {
    return 0;
  }

  v8 = [(HUQuickControlRingSliderView *)self secondaryHandleView];
  [v8 convertPoint:self fromView:{x, y}];
  v10 = v9;
  v12 = v11;

  v13 = [(HUQuickControlRingSliderView *)self secondaryHandleView];
  [v13 bounds];
  v15.x = v10;
  v15.y = v12;
  LOBYTE(v8) = CGRectContainsPoint(v16, v15);

  return v8;
}

- (BOOL)_isPoint:(CGPoint)a3 withInMarginOfRing:(double)a4
{
  [(HUQuickControlRingSliderView *)self _getCircleCenterPoint];
  UIDistanceBetweenPoints();
  v7 = v6;
  [(HUQuickControlRingSliderView *)self outerRadius];
  if (v7 > v8 + a4)
  {
    return 0;
  }

  [(HUQuickControlRingSliderView *)self outerRadius];
  return v7 >= v10 + -35.0 - a4;
}

- (CGPoint)_getCircleCenterPoint
{
  [(HUQuickControlRingSliderView *)self frame];
  v4 = v3 * 0.5;
  [(HUQuickControlRingSliderView *)self frame];
  v6 = v5 * 0.5;
  v7 = v4;
  result.y = v6;
  result.x = v7;
  return result;
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)_getPossibleAngleRange12OClock
{
  [(HUQuickControlRingSliderView *)self _getMinAngleFrom12OClock];
  v4 = v3;
  [(HUQuickControlRingSliderView *)self _getMaxAngleFrom12OClock];
  v6 = v5;
  v7 = v4;
  result.var1 = v6;
  result.var0 = v7;
  return result;
}

- (double)_getMinAngleFrom12OClock
{
  v2 = [(HUQuickControlRingSliderView *)self profile];
  v3 = [v2 style];

  result = 0.0;
  if (v3 <= 2)
  {
    return dbl_20D5CAD40[v3];
  }

  return result;
}

- (double)_getMaxAngleFrom12OClock
{
  v3 = [(HUQuickControlRingSliderView *)self profile];
  v4 = [v3 style];

  if (v4 > 2)
  {
    return 6.28318531;
  }

  [(HUQuickControlRingSliderView *)self _getMinAngleFrom12OClock];
  return 6.28318531 - v5;
}

- (unint64_t)_getRingSliderAreaForAngleFrom12Oclock:(double)a3 minAngle:(double)a4 maxAngle:(double)a5
{
  v5 = a4 + -0.05;
  if (a3 >= 0.0)
  {
    v6 = v5 == a3;
    v7 = v5 < a3;
  }

  else
  {
    v6 = 1;
    v7 = 0;
  }

  if (!v7 && !v6)
  {
    return 4;
  }

  v8 = a4 + 0.05;
  if (v5 <= a3)
  {
    v9 = v8 == a3;
    v10 = v8 < a3;
  }

  else
  {
    v9 = 1;
    v10 = 0;
  }

  if (!v10 && !v9)
  {
    return 1;
  }

  v11 = a5 + -0.05;
  if (v8 <= a3)
  {
    v12 = v11 == a3;
    v13 = v11 < a3;
  }

  else
  {
    v12 = 1;
    v13 = 0;
  }

  if (!v13 && !v12)
  {
    return 2;
  }

  v14 = a5 + 0.05;
  if (v11 <= a3 && v14 >= a3)
  {
    return 3;
  }

  if (v14 < a3)
  {
    v17 = a3 == 6.28318531;
    v16 = a3 >= 6.28318531;
  }

  else
  {
    v16 = 1;
    v17 = 0;
  }

  if (!v17 && v16)
  {
    return 0;
  }

  else
  {
    return 4;
  }
}

- (unint64_t)_getRingSliderAreaForPoint:(CGPoint)a3
{
  [(HUQuickControlRingSliderView *)self _getAngleFrom12OClockForPoint:a3.x, a3.y];

  return [(HUQuickControlRingSliderView *)self _getRingSliderAreaForAngleFrom12Oclock:?];
}

- (unint64_t)_getRingSliderAreaForAngleFrom12Oclock:(double)a3
{
  [(HUQuickControlRingSliderView *)self _getMinAngleFrom12OClock];
  v6 = v5;
  [(HUQuickControlRingSliderView *)self _getMaxAngleFrom12OClock];

  return [(HUQuickControlRingSliderView *)self _getRingSliderAreaForAngleFrom12Oclock:a3 minAngle:v6 maxAngle:v7];
}

- (void)handlePanGestureRecognizer:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(HUQuickControlRingSliderView *)self conformsToProtocol:&unk_2824F3238]&& (objc_opt_respondsToSelector() & 1) != 0 && (![(HUQuickControlRingSliderView *)self reachabilityState]|| [(HUQuickControlRingSliderView *)self reachabilityState]== 1))
  {
    v5 = HUQuickControlReachabilityString([(HUQuickControlRingSliderView *)self reachabilityState]);
    v6 = HFLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v32 = 138412802;
      v33 = self;
      v34 = 2112;
      v35 = v5;
      v36 = 2080;
      v37 = "[HUQuickControlRingSliderView handlePanGestureRecognizer:]";
      _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "Control view %@ is in state %@. Ignoring tap gesture in %s", &v32, 0x20u);
    }
  }

  else if (![(HUQuickControlRingSliderView *)self showOffState])
  {
    [v4 locationInView:self];
    v8 = v7;
    v10 = v9;
    v11 = [v4 state];
    if ((v11 - 3) >= 3)
    {
      if (v11 == 2)
      {
        if (![(HUQuickControlRingSliderView *)self isUserInteractionActive])
        {
          goto LABEL_9;
        }

        [(HUQuickControlRingSliderView *)self setUserInteractionActive:1];
        v27 = self;
        v28 = v8;
        v29 = v10;
        v30 = 0;
      }

      else
      {
        if (v11 != 1)
        {
          goto LABEL_9;
        }

        [(HUQuickControlRingSliderView *)self setIsDraggingPrimaryHandleView:[(HUQuickControlRingSliderView *)self _primaryHandleViewContainsPoint:v8, v10]];
        [(HUQuickControlRingSliderView *)self setIsDraggingSecondaryHandleView:[(HUQuickControlRingSliderView *)self _secondaryHandleViewContainsPoint:v8, v10]];
        if ([(HUQuickControlRingSliderView *)self isDraggingPrimaryHandleView]|| [(HUQuickControlRingSliderView *)self isDraggingSecondaryHandleView])
        {
          [(HUQuickControlRingSliderView *)self _prepareForTapticFeedback];
          [(HUQuickControlRingSliderView *)self _actuateImpactTapticFeedback];
        }

        if ([(HUQuickControlRingSliderView *)self isDraggingPrimaryHandleView]&& [(HUQuickControlRingSliderView *)self isDraggingSecondaryHandleView])
        {
          v12 = [(HUQuickControlRingSliderView *)self primaryHandleView];
          [v12 center];
          UIDistanceBetweenPoints();
          v14 = v13;

          v15 = [(HUQuickControlRingSliderView *)self secondaryHandleView];
          [v15 center];
          UIDistanceBetweenPoints();
          v17 = v16;

          [(HUQuickControlRingSliderView *)self setIsDraggingPrimaryHandleView:v14 <= v17];
          [(HUQuickControlRingSliderView *)self setIsDraggingSecondaryHandleView:[(HUQuickControlRingSliderView *)self isDraggingPrimaryHandleView]^ 1];
        }

        [(HUQuickControlRingSliderView *)self modelRangeValue];
        [(HUQuickControlRingSliderView *)self _getClosestMarkingValueToValue:?];
        v19 = v18;
        [(HUQuickControlRingSliderView *)self modelRangeValue];
        [(HUQuickControlRingSliderView *)self _getClosestMarkingValueToValue:v20];
        if (v19 == v21)
        {
          v22 = [(HUQuickControlRingSliderView *)self profile];
          v23 = [v22 hasSecondaryValue];

          if (v23)
          {
            [(HUQuickControlRingSliderView *)self _getMinimumMarkingValue];
            v25 = v24;
            if (v19 == v24 || ([(HUQuickControlRingSliderView *)self _getMaximumMarkingValue], v19 == v26))
            {
              [(HUQuickControlRingSliderView *)self setIsDraggingPrimaryHandleView:v19 == v25];
              [(HUQuickControlRingSliderView *)self setIsDraggingSecondaryHandleView:v19 != v25];
            }
          }
        }

        if (![(HUQuickControlRingSliderView *)self isDraggingPrimaryHandleView]&& ![(HUQuickControlRingSliderView *)self isDraggingSecondaryHandleView])
        {
          v31 = [(HUQuickControlRingSliderView *)self interactionDelegate];
          [v31 controlView:self interactionStateDidChange:0 forFirstTouch:1];

          [(HUQuickControlRingSliderView *)self setUserInteractionActive:0];
          goto LABEL_9;
        }

        [(HUQuickControlRingSliderView *)self setUserInteractionActive:1];
        v27 = self;
        v28 = v8;
        v29 = v10;
        v30 = 1;
      }

      [(HUQuickControlRingSliderView *)v27 _updateUIWithTouchAtPoint:v30 didTouchBegin:v28, v29];
      [(HUQuickControlRingSliderView *)self _updateModelValueWithSlidersPositions];
      goto LABEL_9;
    }

    if ([(HUQuickControlRingSliderView *)self isUserInteractionActive])
    {
      [(HUQuickControlRingSliderView *)self _updateUIWithTouchAtPoint:0 didTouchBegin:v8, v10];
      [(HUQuickControlRingSliderView *)self _updateModelValueWithSlidersPositions];
      [(HUQuickControlRingSliderView *)self _touchEnded];
    }
  }

LABEL_9:
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v5 = a3;
  v6 = [(HUQuickControlRingSliderView *)self longPressPanGestureRecognizer];
  v7 = [v5 isEqual:v6];

  if (!v7)
  {
    return 1;
  }

  v8 = [(HUQuickControlRingSliderView *)self longPressPanGestureRecognizer];
  [v8 locationInView:self];

  [(HUQuickControlRingSliderView *)self _getCircleCenterPoint];
  UIDistanceBetweenPoints();
  v10 = v9;
  [(HUQuickControlRingSliderView *)self _getMiddleCircleRadius];
  if (v10 < v11 + -35.0)
  {
    return 1;
  }

  [(HUQuickControlRingSliderView *)self _getMiddleCircleRadius];
  return v10 > v13 + 35.0;
}

- (double)_getMinimumMarkingValue
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = [(HUQuickControlRingSliderView *)self profile];
  v4 = [v3 gradationMarkingValues];
  v5 = [v4 firstObject];
  [v5 floatValue];
  v7 = v6;

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = [(HUQuickControlRingSliderView *)self profile];
  v9 = [v8 gradationMarkingValues];

  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        [v14 floatValue];
        if (v7 > v15)
        {
          [v14 floatValue];
          v7 = v16;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  return v7;
}

- (double)_getMaximumMarkingValue
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = [(HUQuickControlRingSliderView *)self profile];
  v4 = [v3 gradationMarkingValues];
  v5 = [v4 firstObject];
  [v5 floatValue];
  v7 = v6;

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = [(HUQuickControlRingSliderView *)self profile];
  v9 = [v8 gradationMarkingValues];

  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        [v14 floatValue];
        if (v7 < v15)
        {
          [v14 floatValue];
          v7 = v16;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  return v7;
}

- (HUQuickControlViewInteractionDelegate)interactionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_interactionDelegate);

  return WeakRetained;
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)modelRangeValue
{
  minimum = self->_modelRangeValue.minimum;
  maximum = self->_modelRangeValue.maximum;
  result.var1 = maximum;
  result.var0 = minimum;
  return result;
}

@end