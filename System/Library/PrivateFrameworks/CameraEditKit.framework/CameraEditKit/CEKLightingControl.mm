@interface CEKLightingControl
- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)collapsedItemFading;
- (BOOL)_isLightingTypeEnabled:(int64_t)enabled;
- (BOOL)_isOverDialedWithSelectionAngularOffset:(double)offset selectionIndex:(unint64_t)index;
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (CEKLightingControl)initWithFrame:(CGRect)frame;
- (CEKLightingControlDelegate)delegate;
- (CGPoint)_dialCenter;
- (CGPoint)_dialCenterForWidth:(double)width;
- (CGPoint)_selectionPointForExpanded:(BOOL)expanded;
- (CGSize)sizeThatFits:(CGSize)fits;
- (UIEdgeInsets)alignmentRectInsets;
- (double)_angleFromCenterToPoint:(CGPoint)point;
- (double)_compressedItemOffsetForFractionalItemOffset:(double)offset;
- (double)_dialBadgePaddingExpanded:(BOOL)expanded;
- (double)_dialCenterDistanceBelowBoundsForWidth:(double)width;
- (double)_dialRadius;
- (double)_dialRadiusForWidth:(double)width;
- (double)_dialVisibleHeightExpanded:(BOOL)expanded;
- (double)_offsetAngleForItemAtIndex:(unint64_t)index withSelectionOffset:(double)offset;
- (double)_offsetAngleForRubberBandOffsetAngle:(double)angle selectionIndex:(unint64_t)index;
- (double)_offsetXForItemAtIndex:(unint64_t)index;
- (double)_rotationForPanGesture:(id)gesture;
- (double)_rubberBandOffsetAngleForOffsetAngle:(double)angle;
- (double)_safeWidthForWidth:(double)width;
- (double)contentHeightForWidth:(double)width;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (unint64_t)_enabledItemCount;
- (unint64_t)_itemCount;
- (unint64_t)nameBadgeFontStyle;
- (void)_cancelDelayedCollapse;
- (void)_collapseWithDelay:(double)delay;
- (void)_createBackgroundViewIfNeeded;
- (void)_createCollapsedControlViewsIfNeeded;
- (void)_createItemContainerIfNeeded;
- (void)_createItemViewsIfNeeded;
- (void)_createNameBadgeIfNeeded;
- (void)_createSelectionViewsIfNeeded;
- (void)_handleCollapseTimer:(id)timer;
- (void)_handlePanGesture:(id)gesture;
- (void)_handlePressGesture:(id)gesture;
- (void)_handleSettlingSelectionViewsFromOffset:(double)offset withProgress:(double)progress timingCurve:(id)curve;
- (void)_handleSnapFromOffset:(double)offset withProgress:(double)progress timingCurve:(id)curve;
- (void)_handleTapGesture:(id)gesture;
- (void)_handleTapRotationFromOffset:(double)offset withProgress:(double)progress timingCurve:(id)curve;
- (void)_layoutBackgroundExpanded:(BOOL)expanded;
- (void)_layoutCollapsedControlViews;
- (void)_layoutItemContainer;
- (void)_layoutItemViewsLinear;
- (void)_layoutItemViewsRadialWithSelectionOffsetAngle:(double)angle;
- (void)_layoutNameBadgeExpanded:(BOOL)expanded;
- (void)_layoutSelectionViewsExpanded:(BOOL)expanded;
- (void)_loadItemsIfNeeded;
- (void)_performFeedback;
- (void)_prepareFeedback;
- (void)_rotateForTapFromSelectionIndex:(unint64_t)index offset:(double)offset toSelectionIndex:(unint64_t)selectionIndex;
- (void)_setExpanded:(BOOL)expanded animated:(BOOL)animated shouldNotify:(BOOL)notify;
- (void)_setSelectedLightingType:(int64_t)type atIndex:(unint64_t)index shouldNotify:(BOOL)notify shouldSuppressHaptic:(BOOL)haptic animated:(BOOL)animated;
- (void)_setTracking:(BOOL)tracking;
- (void)_settleSelectionViewsFromSelectionOffsetAngle:(double)angle;
- (void)_snapFromSelectionOffsetAngle:(double)angle toAngle:(double)toAngle animated:(BOOL)animated;
- (void)_updateImagesForCollapedControlViews;
- (void)_updateItemViewsWithSelectionOffsetAngle:(double)angle;
- (void)_updateNameBadgeAnimated:(BOOL)animated;
- (void)_updateSelectionOverlayColorAnimated:(BOOL)animated;
- (void)_updateSelectionViewsWithSelectionOffsetAngle:(double)angle;
- (void)layoutSubviews;
- (void)ppt_selectLightingType:(int64_t)type;
- (void)preloadEffectChangeAnimation;
- (void)setAdditionalBottomPadding:(double)padding;
- (void)setCollapsedControlLocation:(unint64_t)location animated:(BOOL)animated;
- (void)setCollapsedItemFading:(id)fading animated:(BOOL)animated;
- (void)setCollapsedSelectionCenterPointBottomInset:(double)inset;
- (void)setCollapsedSelectionCenterPointEdgeInset:(double)inset;
- (void)setDelegate:(id)delegate;
- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated;
- (void)setLightingEffectSet:(int64_t)set animated:(BOOL)animated;
- (void)setMaxContentWidth:(double)width;
- (void)setNameBadgeFontStyle:(unint64_t)style;
- (void)setNameBadgeHidden:(BOOL)hidden animated:(BOOL)animated;
- (void)setOrientation:(int64_t)orientation;
- (void)setSelectedLightingType:(int64_t)type animated:(BOOL)animated;
- (void)tintColorDidChange;
@end

@implementation CEKLightingControl

- (CEKLightingControl)initWithFrame:(CGRect)frame
{
  v20.receiver = self;
  v20.super_class = CEKLightingControl;
  v3 = [(CEKLightingControl *)&v20 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    systemYellowColor = [MEMORY[0x1E69DC888] systemYellowColor];
    [(CEKLightingControl *)v3 setTintColor:systemYellowColor];

    v3->_collapsedSelectionCenterPointBottomInset = 34.0;
    v3->_selectedLightingType = [(CEKLightingControl *)v3 defaultLightingType];
    v3->_collapsedItemFading.leftRate = 0;
    v3->_collapsedItemFading.rightRate = 0;
    [(CEKLightingControl *)v3 _createBackgroundViewIfNeeded];
    [(CEKLightingControl *)v3 _createSelectionViewsIfNeeded];
    [(CEKLightingControl *)v3 _createNameBadgeIfNeeded];
    [(CEKLightingControl *)v3 _createItemContainerIfNeeded];
    effectTypes = v3->__effectTypes;
    v3->__effectTypes = &unk_1F2FE0308;

    v3->_lightingEffectSet = 2;
    v6 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F2FE02F0];
    enabledEffectTypes = v3->__enabledEffectTypes;
    v3->__enabledEffectTypes = v6;

    [(CEKLightingControl *)v3 _loadItemsIfNeeded];
    [(CEKLightingControl *)v3 _createItemViewsIfNeeded];
    v8 = [objc_alloc(MEMORY[0x1E69DCD28]) initWithTarget:v3 action:sel__handlePanGesture_];
    [(CEKLightingControl *)v3 addGestureRecognizer:v8];
    [v8 setMaximumNumberOfTouches:1];
    [v8 setAllowedScrollTypesMask:3];
    [v8 setDelegate:v3];
    objc_storeStrong(&v3->__panGesture, v8);
    v9 = [objc_alloc(MEMORY[0x1E69DCC48]) initWithTarget:v3 action:sel__handlePressGesture_];
    [(CEKLightingControl *)v3 addGestureRecognizer:v9];
    [v9 setMinimumPressDuration:0.0];
    [v9 setDelegate:v3];
    objc_storeStrong(&v3->__pressGesture, v9);
    v10 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:v3 action:sel__handleTapGesture_];
    [(CEKLightingControl *)v3 addGestureRecognizer:v10];
    [v10 setDelegate:v3];
    objc_storeStrong(&v3->__tapGesture, v10);
    v11 = objc_alloc_init(CEKAnimationGenerator);
    animationGenerator = v3->__animationGenerator;
    v3->__animationGenerator = v11;

    v13 = objc_alloc_init(CEKLightingFrameCache);
    frameCache = v3->__frameCache;
    v3->__frameCache = v13;

    if (CEKHapticsAllowed())
    {
      v15 = objc_alloc_init(CEKSelectionFeedbackGenerator);
      selectionFeedbackGenerator = v3->__selectionFeedbackGenerator;
      v3->__selectionFeedbackGenerator = v15;
    }

    v3->_maxContentWidth = 414.0;
    v3->_collapsedSelectionCenterPointEdgeInset = 44.0;
    systemTraitsAffectingColorAppearance = [MEMORY[0x1E69DD1B8] systemTraitsAffectingColorAppearance];
    v18 = [(CEKLightingControl *)v3 registerForTraitChanges:systemTraitsAffectingColorAppearance withAction:sel__traitCollectionColorsChanged];
  }

  return v3;
}

- (UIEdgeInsets)alignmentRectInsets
{
  _nameBadge = [(CEKLightingControl *)self _nameBadge];
  [_nameBadge intrinsicContentSize];
  v5 = v4;
  [(CEKLightingControl *)self _dialBadgePaddingExpanded:1];
  v7 = v6 + v5;

  v8 = 0.0;
  v9 = 0.0;
  v10 = 0.0;
  v11 = v7;
  result.right = v10;
  result.bottom = v9;
  result.left = v8;
  result.top = v11;
  return result;
}

- (void)setCollapsedControlLocation:(unint64_t)location animated:(BOOL)animated
{
  if (self->_collapsedControlLocation != location)
  {
    v8[7] = v4;
    v8[8] = v5;
    animatedCopy = animated;
    self->_collapsedControlLocation = location;
    [(CEKLightingControl *)self _createCollapsedControlViewsIfNeeded];
    [(CEKLightingControl *)self setNeedsLayout];
    if (animatedCopy)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __59__CEKLightingControl_setCollapsedControlLocation_animated___block_invoke;
      v8[3] = &unk_1E7CC6358;
      v8[4] = self;
      [MEMORY[0x1E69DD250] animateWithDuration:v8 animations:0.25];
    }
  }
}

uint64_t __59__CEKLightingControl_setCollapsedControlLocation_animated___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  [v1 _selectionAngularOffset];

  return [v1 _updateItemViewsWithSelectionOffsetAngle:?];
}

- (void)setCollapsedSelectionCenterPointEdgeInset:(double)inset
{
  if (self->_collapsedSelectionCenterPointEdgeInset != inset)
  {
    self->_collapsedSelectionCenterPointEdgeInset = inset;
    [(CEKLightingControl *)self setNeedsLayout];
  }
}

- (void)setCollapsedSelectionCenterPointBottomInset:(double)inset
{
  if (self->_collapsedSelectionCenterPointBottomInset != inset)
  {
    self->_collapsedSelectionCenterPointBottomInset = inset;
    [(CEKLightingControl *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  isExpanded = [(CEKLightingControl *)self isExpanded];
  [(CEKLightingControl *)self _selectionAngularOffset];
  [(CEKLightingControl *)self _rubberBandOffsetAngleForOffsetAngle:?];
  v5 = v4;
  _animationGenerator = [(CEKLightingControl *)self _animationGenerator];
  v6 = [_animationGenerator isAnimatingForIdentifier:@"cubeSettling"];
  if (isExpanded)
  {
    if ([_animationGenerator isAnimatingForIdentifier:@"rotation"])
    {
      goto LABEL_7;
    }

    [(CEKLightingControl *)self _layoutItemViewsRadialWithSelectionOffsetAngle:v5];
  }

  else
  {
    [(CEKLightingControl *)self _layoutItemViewsLinear];
  }

  [(CEKLightingControl *)self _updateItemViewsWithSelectionOffsetAngle:v5];
  if ((v6 & 1) == 0)
  {
    [(CEKLightingControl *)self _updateSelectionViewsWithSelectionOffsetAngle:v5];
  }

LABEL_7:
  [(CEKLightingControl *)self _layoutBackgroundExpanded:isExpanded];
  [(CEKLightingControl *)self _layoutSelectionViewsExpanded:isExpanded];
  [(CEKLightingControl *)self _layoutNameBadgeExpanded:isExpanded];
  [(CEKLightingControl *)self _layoutItemContainer];
  [(CEKLightingControl *)self _layoutCollapsedControlViews];
}

- (void)setAdditionalBottomPadding:(double)padding
{
  if (self->_additionalBottomPadding != padding)
  {
    self->_additionalBottomPadding = padding;
    [(CEKLightingControl *)self setNeedsLayout];
  }
}

- (void)setMaxContentWidth:(double)width
{
  if (self->_maxContentWidth != width)
  {
    self->_maxContentWidth = width;
    [(CEKLightingControl *)self setNeedsLayout];
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(CEKLightingControl *)self _safeWidthForWidth:fits.width, fits.height];
  v5 = v4;
  [(CEKLightingControl *)self contentHeightForWidth:?];
  v7 = v6;
  v8 = v5;
  result.height = v7;
  result.width = v8;
  return result;
}

- (double)contentHeightForWidth:(double)width
{
  [(CEKLightingControl *)self _safeWidthForWidth:width];
  v5 = v4;
  [(CEKLightingControl *)self _dialCenterDistanceBelowBoundsForWidth:?];
  [(CEKLightingControl *)self _dialRadiusForWidth:v5];

  UIRoundToViewScale();
  return result;
}

- (double)_safeWidthForWidth:(double)width
{
  [(CEKLightingControl *)self maxContentWidth];
  v6 = v5;
  v7 = 320.0;
  if (v6 >= 320.0)
  {
    [(CEKLightingControl *)self maxContentWidth];
  }

  return fmin(v7, fmax(width, 320.0));
}

- (void)_layoutItemViewsRadialWithSelectionOffsetAngle:(double)angle
{
  [(CEKLightingControl *)self _selectionPointForExpanded:1];
  v34 = v5;
  _itemViewsForType = [(CEKLightingControl *)self _itemViewsForType];
  _itemShadowViewsForType = [(CEKLightingControl *)self _itemShadowViewsForType];
  _itemOutlineViewsForType = [(CEKLightingControl *)self _itemOutlineViewsForType];
  [(CEKLightingControl *)self _dialCenter];
  memset(&v40, 0, sizeof(v40));
  CGAffineTransformMakeTranslation(&v40, v9, v10);
  v38 = v40;
  memset(&v39, 0, sizeof(v39));
  CGAffineTransformInvert(&v39, &v38);
  if ([(CEKLightingControl *)self _itemCount])
  {
    v11 = 0;
    v12 = *MEMORY[0x1E695EFF8];
    v13 = *(MEMORY[0x1E695EFF8] + 8);
    v32 = vdupq_lane_s64(v34, 0);
    do
    {
      [(CEKLightingControl *)self _offsetAngleForItemAtIndex:v11 withSelectionOffset:angle, *&v32];
      tx = v39.tx;
      ty = v39.ty;
      v33 = *&v39.c;
      v35 = *&v39.a;
      CGAffineTransformMakeRotation(&t2, v16);
      *&t1.a = v35;
      *&t1.c = v33;
      t1.tx = tx;
      t1.ty = ty;
      CGAffineTransformConcat(&v38, &t1, &t2);
      t2 = v38;
      t1 = v40;
      CGAffineTransformConcat(&v38, &t2, &t1);
      UIPointRoundToViewScale();
      v18 = v17;
      v20 = v19;
      _effectTypes = [(CEKLightingControl *)self _effectTypes];
      v22 = [_effectTypes objectAtIndexedSubscript:v11];

      v23 = [_itemViewsForType objectForKeyedSubscript:v22];
      v24 = [_itemShadowViewsForType objectForKeyedSubscript:v22];
      v25 = [_itemOutlineViewsForType objectForKeyedSubscript:v22];
      [v23 setCenter:{v18, v20}];
      [v24 setCenter:{v18, v20}];
      [v25 setCenter:{v18, v20}];
      [v23 intrinsicContentSize];
      [v23 setBounds:{v12, v13, v26, v27}];
      [v24 intrinsicContentSize];
      [v24 setBounds:{v12, v13, v28, v29}];
      [v25 intrinsicContentSize];
      [v25 setBounds:{v12, v13, v30, v31}];

      ++v11;
    }

    while (v11 < [(CEKLightingControl *)self _itemCount]);
  }
}

- (void)_layoutItemViewsLinear
{
  [(CEKLightingControl *)self _selectionPointForExpanded:0];
  v4 = v3;
  v6 = v5;
  _itemViewsForType = [(CEKLightingControl *)self _itemViewsForType];
  _itemShadowViewsForType = [(CEKLightingControl *)self _itemShadowViewsForType];
  _itemOutlineViewsForType = [(CEKLightingControl *)self _itemOutlineViewsForType];
  if ([(CEKLightingControl *)self _itemCount])
  {
    v9 = 0;
    v10 = *MEMORY[0x1E695EFF8];
    v11 = *(MEMORY[0x1E695EFF8] + 8);
    do
    {
      [(CEKLightingControl *)self _offsetXForItemAtIndex:v9];
      v13 = v4 + v12;
      _effectTypes = [(CEKLightingControl *)self _effectTypes];
      v15 = [_effectTypes objectAtIndexedSubscript:v9];

      v16 = [_itemViewsForType objectForKeyedSubscript:v15];
      v17 = [_itemOutlineViewsForType objectForKeyedSubscript:v15];
      v18 = [_itemShadowViewsForType objectForKeyedSubscript:v15];
      [v16 setCenter:{v13, v6}];
      [v18 setCenter:{v13, v6}];
      [v17 setCenter:{v13, v6}];
      [v16 intrinsicContentSize];
      [v16 setBounds:{v10, v11, v19, v20}];
      [v18 intrinsicContentSize];
      [v18 setBounds:{v10, v11, v21, v22}];
      [v17 intrinsicContentSize];
      [v17 setBounds:{v10, v11, v23, v24}];

      ++v9;
    }

    while (v9 < [(CEKLightingControl *)self _itemCount]);
  }
}

- (void)_layoutCollapsedControlViews
{
  [(CEKLightingControl *)self _selectionPointForExpanded:0];
  v4 = v3;
  v6 = v5;
  collapsedControlLocation = [(CEKLightingControl *)self collapsedControlLocation];
  if (collapsedControlLocation)
  {
    if (collapsedControlLocation == 2)
    {
      [(CEKLightingControl *)self bounds];
      v10 = v9;
      [(CEKLightingControl *)self collapsedSelectionCenterPointEdgeInset];
      v4 = v10 - v11;
    }

    else if (collapsedControlLocation == 1)
    {
      [(CEKLightingControl *)self collapsedSelectionCenterPointEdgeInset];
      v4 = v8;
    }

    _collapsedControlItemView = [(CEKLightingControl *)self _collapsedControlItemView];
    _collapsedControlShadowView = [(CEKLightingControl *)self _collapsedControlShadowView];
    _collapsedControlSelectionOverlay = [(CEKLightingControl *)self _collapsedControlSelectionOverlay];
    _collapsedControlSelectionUnderlay = [(CEKLightingControl *)self _collapsedControlSelectionUnderlay];
    [_collapsedControlItemView setCenter:{v4, v6}];
    [_collapsedControlShadowView setCenter:{v4, v6}];
    [_collapsedControlSelectionOverlay setCenter:{v4, v6}];
    [_collapsedControlSelectionUnderlay setCenter:{v4, v6}];
    [_collapsedControlItemView intrinsicContentSize];
    [_collapsedControlItemView setBounds:CEKRectWithSize()];
    [_collapsedControlShadowView intrinsicContentSize];
    [_collapsedControlShadowView setBounds:CEKRectWithSize()];
    [_collapsedControlSelectionOverlay intrinsicContentSize];
    [_collapsedControlSelectionOverlay setBounds:CEKRectWithSize()];
    [_collapsedControlSelectionOverlay bounds];
    [_collapsedControlSelectionUnderlay setBounds:?];
    memset(&v17, 0, sizeof(v17));
    CGAffineTransformMakeScale(&v17, 0.8, 0.8);
    v16 = v17;
    [_collapsedControlItemView setTransform:&v16];
    v16 = v17;
    [_collapsedControlShadowView setTransform:&v16];
    v16 = v17;
    [_collapsedControlSelectionOverlay setTransform:&v16];
    v16 = v17;
    [_collapsedControlSelectionUnderlay setTransform:&v16];
  }
}

- (void)_layoutBackgroundExpanded:(BOOL)expanded
{
  expandedCopy = expanded;
  [(CEKLightingControl *)self bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  _backgroundView = [(CEKLightingControl *)self _backgroundView];
  [(CEKLightingControl *)self _dialRadius];
  [_backgroundView setRadius:?];
  [(CEKLightingControl *)self _dialVisibleHeightExpanded:1];
  v14 = v13;
  v23.origin.x = v6;
  v23.origin.y = v8;
  v23.size.width = v10;
  v23.size.height = v12;
  Width = CGRectGetWidth(v23);
  [(CEKLightingControl *)self additionalBottomPadding];
  v17 = v14 + 3.0 + v16;
  [(CEKLightingControl *)self _dialVisibleHeightExpanded:expandedCopy];
  v19 = v18;
  v24.origin.x = v6;
  v24.origin.y = v8;
  v24.size.width = v10;
  v24.size.height = v12;
  [_backgroundView setFrame:{0.0, CGRectGetMaxY(v24) - v19, Width, v17}];
  v20 = 1.0;
  if (!expandedCopy)
  {
    v20 = 0.0;
  }

  [_backgroundView setAlpha:v20];
}

- (void)_layoutSelectionViewsExpanded:(BOOL)expanded
{
  [(CEKLightingControl *)self _selectionPointForExpanded:expanded];
  v5 = v4;
  v7 = v6;
  _selectionOverlay = [(CEKLightingControl *)self _selectionOverlay];
  _selectionUnderlay = [(CEKLightingControl *)self _selectionUnderlay];
  [_selectionOverlay setCenter:{v5, v7}];
  [_selectionUnderlay setCenter:{v5, v7}];
  v10 = *MEMORY[0x1E695F058];
  v11 = *(MEMORY[0x1E695F058] + 8);
  [_selectionOverlay intrinsicContentSize];
  v13 = v12;
  v15 = v14;
  [_selectionOverlay setBounds:{v10, v11, v12, v14}];
  [_selectionUnderlay setBounds:{v10, v11, v13, v15}];
  isExpanded = [(CEKLightingControl *)self isExpanded];
  v17 = 0.75;
  memset(&v19.c, 0, 32);
  if (isExpanded)
  {
    v17 = 1.0;
  }

  *&v19.a = 0uLL;
  CGAffineTransformMakeScale(&v19, v17, v17);
  v18 = v19;
  [_selectionOverlay setTransform:&v18];
  v18 = v19;
  [_selectionUnderlay setTransform:&v18];
}

- (void)_layoutNameBadgeExpanded:(BOOL)expanded
{
  expandedCopy = expanded;
  _nameBadge = [(CEKLightingControl *)self _nameBadge];
  [(CEKLightingControl *)self bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [_nameBadge intrinsicContentSize];
  UIRectCenteredXInRectScale();
  v15 = v14;
  v26 = v16;
  v18 = v17;
  [(CEKLightingControl *)self _dialVisibleHeightExpanded:expandedCopy, 0];
  v20 = v19;
  [(CEKLightingControl *)self _dialBadgePaddingExpanded:expandedCopy];
  v22 = v21;
  v31.origin.x = v7;
  v31.origin.y = v9;
  v31.size.width = v11;
  v31.size.height = v13;
  [_nameBadge setFrame:{v15, CGRectGetMaxY(v31) - v20 - v22 - v18, v26, v18}];
  v23 = *(MEMORY[0x1E695EFD0] + 16);
  *&v30.a = *MEMORY[0x1E695EFD0];
  *&v30.c = v23;
  *&v30.tx = *(MEMORY[0x1E695EFD0] + 32);
  if ([(CEKLightingControl *)self orientation]== 2)
  {
    CGAffineTransformMakeRotation(&v30, 3.14159265);
  }

  v24 = MEMORY[0x1E69DD250];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v29 = v30;
  v27[2] = __47__CEKLightingControl__layoutNameBadgeExpanded___block_invoke;
  v27[3] = &unk_1E7CC6B10;
  v28 = _nameBadge;
  v25 = _nameBadge;
  [v24 performWithoutAnimation:v27];
}

uint64_t __47__CEKLightingControl__layoutNameBadgeExpanded___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 56);
  v3[0] = *(a1 + 40);
  v3[1] = v1;
  v3[2] = *(a1 + 72);
  return [*(a1 + 32) setTransform:v3];
}

- (void)_layoutItemContainer
{
  [(CEKLightingControl *)self bounds];
  v4 = v3;
  v6 = v5;
  _itemContainer = [(CEKLightingControl *)self _itemContainer];
  [_itemContainer setFrame:{0.0, 0.0, v4, v6}];
}

- (CGPoint)_selectionPointForExpanded:(BOOL)expanded
{
  expandedCopy = expanded;
  [(CEKLightingControl *)self collapsedSelectionCenterPointBottomInset];
  if (expandedCopy)
  {
    [(CEKLightingControl *)self _dialVisibleHeightExpanded:1];
    v7 = v6 + -36.0;
  }

  else
  {
    v7 = v5;
  }

  [(CEKLightingControl *)self bounds];
  x = v16.origin.x;
  y = v16.origin.y;
  width = v16.size.width;
  height = v16.size.height;
  MidX = CGRectGetMidX(v16);
  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  v13 = CGRectGetMaxY(v17) - v7;
  v14 = MidX;
  result.y = v13;
  result.x = v14;
  return result;
}

- (double)_dialVisibleHeightExpanded:(BOOL)expanded
{
  if (!expanded)
  {
    return 72.0;
  }

  [(CEKLightingControl *)self bounds];

  [(CEKLightingControl *)self contentHeightForWidth:v4];
  return result;
}

- (double)_dialRadius
{
  [(CEKLightingControl *)self bounds];

  [(CEKLightingControl *)self _dialRadiusForWidth:v3];
  return result;
}

- (double)_dialRadiusForWidth:(double)width
{
  [(CEKLightingControl *)self _safeWidthForWidth:width];
  [(CEKLightingControl *)self _dialCenterDistanceBelowBoundsForWidth:?];

  UIDistanceBetweenPoints();
  return result;
}

- (double)_dialBadgePaddingExpanded:(BOOL)expanded
{
  result = -5.0;
  if (expanded)
  {
    return 10.0;
  }

  return result;
}

- (CGPoint)_dialCenter
{
  [(CEKLightingControl *)self bounds];

  [(CEKLightingControl *)self _dialCenterForWidth:v3];
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGPoint)_dialCenterForWidth:(double)width
{
  [(CEKLightingControl *)self bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [(CEKLightingControl *)self _dialCenterDistanceBelowBoundsForWidth:width];
  v17.origin.x = v6;
  v17.origin.y = v8;
  v17.size.width = v10;
  v17.size.height = v12;
  CGRectGetMaxY(v17);
  UIRoundToViewScale();
  v14 = v13;
  v15 = width * 0.5;
  result.y = v14;
  result.x = v15;
  return result;
}

- (double)_dialCenterDistanceBelowBoundsForWidth:(double)width
{
  v3 = width * 0.2909 + -29.09;
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen scale];
  v6 = -1.0 / v5 + 84.0;

  return fmin(v6, v3);
}

- (double)_angleFromCenterToPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  [(CEKLightingControl *)self _dialCenter];

  return atan2(v6 - y, v5 - x);
}

- (double)_offsetAngleForItemAtIndex:(unint64_t)index withSelectionOffset:(double)offset
{
  [(CEKLightingControl *)self _angularSpacingForRadialLayout];
  v8 = v7;
  [(CEKLightingControl *)self _compressedItemOffsetForFractionalItemOffset:offset / v7 + (index - [(CEKLightingControl *)self _selectionIndex])];
  return v8 * v9;
}

- (double)_offsetXForItemAtIndex:(unint64_t)index
{
  [(CEKLightingControl *)self _spacingForLinearLayout];
  v6 = v5;
  [(CEKLightingControl *)self _compressedItemOffsetForFractionalItemOffset:(index - [(CEKLightingControl *)self _selectionIndex])];
  return v6 * v7;
}

- (double)_compressedItemOffsetForFractionalItemOffset:(double)offset
{
  v3 = fabs(offset);
  if (offset >= 0.0)
  {
    return v3 * (v3 * -0.039 + 1.024);
  }

  else
  {
    return -(v3 * (v3 * -0.039 + 1.024));
  }
}

- (double)_rotationForPanGesture:(id)gesture
{
  gestureCopy = gesture;
  [gestureCopy translationInView:self];
  v6 = v5;
  v8 = v7;
  [gestureCopy locationInView:self];
  v10 = v9;
  v12 = v11;

  v13 = v10 - v6;
  [(CEKLightingControl *)self _angleFromCenterToPoint:v10, v12];
  v15 = v14;
  [(CEKLightingControl *)self _angleFromCenterToPoint:v13, v12 - v8];
  result = v15 - v16;
  if (result > 3.14159265)
  {
    result = result + -6.28318531;
  }

  if (result < -3.14159265)
  {
    return result + 6.28318531;
  }

  return result;
}

- (BOOL)_isOverDialedWithSelectionAngularOffset:(double)offset selectionIndex:(unint64_t)index
{
  v6 = [(CEKLightingControl *)self _enabledItemCount]- 1;
  v7 = offset > 0.0;
  if (index)
  {
    v7 = 0;
  }

  v8 = v6 == index && offset < 0.0;
  return v7 || v8;
}

- (double)_rubberBandOffsetAngleForOffsetAngle:(double)angle
{
  [(CEKLightingControl *)self _angularSpacingForRadialLayout];
  v6 = v5;
  v7 = fabs(angle) / v5;
  v8 = [(CEKLightingControl *)self _isOverDialedWithSelectionAngularOffset:[(CEKLightingControl *)self _selectionIndex] selectionIndex:angle];
  if (v8 && v7 > 0.4)
  {
    v9 = -4.0 / ((v7 + 1.546) * 0.55 + 1.0) + 1.986;
  }

  else
  {
    v9 = pow(10000.0, v7) * 0.0014 + -0.0014;
  }

  if (v9 > 0.5 && !v8)
  {
    v9 = 0.5;
  }

  v11 = v6 * v9;
  result = -(v6 * v9);
  if (angle >= 0.0)
  {
    return v11;
  }

  return result;
}

- (double)_offsetAngleForRubberBandOffsetAngle:(double)angle selectionIndex:(unint64_t)index
{
  [(CEKLightingControl *)self _angularSpacingForRadialLayout];
  v8 = v7;
  v9 = fabs(angle) / v7;
  if ([(CEKLightingControl *)self _isOverDialedWithSelectionAngularOffset:index selectionIndex:angle]&& v9 > 0.05433)
  {
    v10 = (4.0 / (1.986 - v9) + -1.0) / 0.55 + -1.546;
  }

  else
  {
    v10 = log((v9 + 0.0014) * 714.286) * 0.108574 / 0.99999999;
  }

  v11 = v8 * v10;
  result = -(v8 * v10);
  if (angle >= 0.0)
  {
    return v11;
  }

  return result;
}

- (void)_handlePressGesture:(id)gesture
{
  state = [gesture state];
  if (state <= 4 && ((1 << state) & 0x1A) != 0)
  {

    [(CEKLightingControl *)self _setTracking:state == 1];
  }
}

- (void)_setTracking:(BOOL)tracking
{
  if (self->_tracking != tracking)
  {
    self->_tracking = tracking;
    if (tracking)
    {
      date = [MEMORY[0x1E695DF00] date];
      [(CEKLightingControl *)self _setTimeTrackingBegan:date];

      [(CEKLightingControl *)self _setExpanded:1 animated:1 shouldNotify:1];
      [(CEKLightingControl *)self _cancelDelayedCollapse];

      [(CEKLightingControl *)self _prepareFeedback];
    }

    else
    {
      _timeTrackingBegan = [(CEKLightingControl *)self _timeTrackingBegan];
      [_timeTrackingBegan timeIntervalSinceNow];
      v7 = v6;

      if (v7 >= -0.5)
      {
        v8 = [(CEKLightingControl *)self collapsedControlLocation]- 1;
        v9 = 1.0;
        if (v8 < 2)
        {
          v9 = 1.5;
        }

        [(CEKLightingControl *)self _collapseWithDelay:v9];
        [(CEKLightingControl *)self _selectionAngularOffset];
        [CEKLightingControl _snapFromSelectionOffsetAngle:"_snapFromSelectionOffsetAngle:toAngle:animated:" toAngle:1 animated:?];
      }

      else
      {
        [(CEKLightingControl *)self _setExpanded:0 animated:1 shouldNotify:1];
      }

      [(CEKLightingControl *)self _setTimeTrackingBegan:0];
    }
  }
}

- (void)_handlePanGesture:(id)gesture
{
  gestureCopy = gesture;
  state = [gestureCopy state];
  if (state == 3)
  {
    if (![(CEKLightingControl *)self isTracking])
    {
      goto LABEL_22;
    }

    selfCopy4 = self;
    v6 = 0;
    goto LABEL_13;
  }

  if (state == 2)
  {
    [(CEKLightingControl *)self _rotationForPanGesture:gestureCopy];
    v8 = v7;
    [(CEKLightingControl *)self _selectionAngularOffset];
    v10 = v8 + v9;
    [gestureCopy setTranslation:self inView:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
    [(CEKLightingControl *)self _angularSpacingForRadialLayout];
    v12 = v11;
    v13 = v11 * 0.5;
    _selectionIndex = [(CEKLightingControl *)self _selectionIndex];
    v15 = [(CEKLightingControl *)self _isOverDialedWithSelectionAngularOffset:_selectionIndex selectionIndex:v10];
    if (fabs(v10) >= v13 && !v15)
    {
      if (v10 <= 0.0)
      {
        v21 = v12;
      }

      else
      {
        v21 = -v12;
      }

      if (v10 <= 0.0)
      {
        v22 = _selectionIndex + 1;
      }

      else
      {
        v22 = _selectionIndex - 1;
      }

      v23 = v10 + v21;
      [(CEKLightingControl *)self _rubberBandOffsetAngleForOffsetAngle:v10];
      [(CEKLightingControl *)self _offsetAngleForRubberBandOffsetAngle:v22 selectionIndex:v21 + v24];
      v26 = v25;
      _effectTypes = [(CEKLightingControl *)self _effectTypes];
      v28 = [_effectTypes objectAtIndexedSubscript:v22];
      integerValue = [v28 integerValue];

      [(CEKLightingControl *)self _setSelectedLightingType:integerValue atIndex:v22 shouldNotify:1 shouldSuppressHaptic:0 animated:0];
      selfCopy3 = self;
      v17 = v26;
      v19 = v23;
      v20 = 1;
    }

    else
    {
      [(CEKLightingControl *)self _selectionAngularOffset];
      selfCopy3 = self;
      v19 = v10;
      v20 = 0;
    }

    [(CEKLightingControl *)selfCopy3 _snapFromSelectionOffsetAngle:v20 toAngle:v17 animated:v19];
    [(CEKLightingControl *)self setNeedsLayout];
    goto LABEL_22;
  }

  if (state == 1 && ![(CEKLightingControl *)self isTracking])
  {
    selfCopy4 = self;
    v6 = 1;
LABEL_13:
    [(CEKLightingControl *)selfCopy4 _setTracking:v6];
  }

LABEL_22:
}

- (void)_handleTapGesture:(id)gesture
{
  gestureCopy = gesture;
  _expandedAnimationCounter = [(CEKLightingControl *)self _expandedAnimationCounter];
  v5 = gestureCopy;
  if (!_expandedAnimationCounter)
  {
    [gestureCopy locationInView:self];
    v6 = 0;
    if ([(CEKLightingControl *)self _enabledItemCount])
    {
      v7 = 0;
      v8 = 1.79769313e308;
      do
      {
        _effectTypes = [(CEKLightingControl *)self _effectTypes];
        v10 = [_effectTypes objectAtIndexedSubscript:v7];

        _itemViewsForType = [(CEKLightingControl *)self _itemViewsForType];
        v12 = [_itemViewsForType objectForKeyedSubscript:v10];

        [v12 center];
        UIDistanceBetweenPoints();
        if (v13 < v8)
        {
          v14 = v13;
          v15 = v10;

          v6 = v15;
          v8 = v14;
        }

        ++v7;
      }

      while (v7 < [(CEKLightingControl *)self _enabledItemCount]);
      v16 = v8 > 30.0;
    }

    else
    {
      v16 = 1;
    }

    integerValue = [v6 integerValue];
    _effectTypes2 = [(CEKLightingControl *)self _effectTypes];
    v19 = [_effectTypes2 indexOfObject:v6];

    _selectionIndex = [(CEKLightingControl *)self _selectionIndex];
    if (!v16)
    {
      v21 = _selectionIndex;
      if (_selectionIndex != v19)
      {
        [(CEKLightingControl *)self _selectionAngularOffset];
        v23 = v22;
        [(CEKLightingControl *)self _setSelectedLightingType:integerValue atIndex:v19 shouldNotify:1 shouldSuppressHaptic:0 animated:0];
        [(CEKLightingControl *)self _rotateForTapFromSelectionIndex:v21 offset:v19 toSelectionIndex:v23];
      }
    }

    v5 = gestureCopy;
  }

  MEMORY[0x1EEE66BB8](_expandedAnimationCounter, v5);
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  _panGesture = [(CEKLightingControl *)self _panGesture];
  _pressGesture = [(CEKLightingControl *)self _pressGesture];
  _tapGesture = [(CEKLightingControl *)self _tapGesture];
  if (_pressGesture == recognizerCopy || _pressGesture == gestureRecognizerCopy)
  {
    v13 = _tapGesture == recognizerCopy || _tapGesture == gestureRecognizerCopy;
    v15 = _panGesture == recognizerCopy || _panGesture == gestureRecognizerCopy;
    v11 = v15 ^ v13;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  v36.receiver = self;
  v36.super_class = CEKLightingControl;
  v7 = [(CEKLightingControl *)&v36 hitTest:event withEvent:?];
  if (v7 == self)
  {
    if ([(CEKLightingControl *)self isExpanded])
    {
      [(CEKLightingControl *)self _dialCenter];
      [(CEKLightingControl *)self _dialRadius];
      v9 = v8;
      UIDistanceBetweenPoints();
      if (v10 <= v9)
      {
        goto LABEL_18;
      }

LABEL_17:

      v7 = 0;
      goto LABEL_18;
    }

    [(CEKLightingControl *)self bounds];
    v11 = v40.origin.x;
    v12 = v40.origin.y;
    width = v40.size.width;
    height = v40.size.height;
    MaxY = CGRectGetMaxY(v40);
    [(CEKLightingControl *)self _selectionPointForExpanded:0];
    v17 = MaxY - v16 + MaxY - v16;
    v18 = MaxY - v17;
    if ([(CEKLightingControl *)self collapsedItemFading]== 2 && v19 == 2)
    {
      collapsedControlLocation = [(CEKLightingControl *)self collapsedControlLocation];
      if (collapsedControlLocation == 2)
      {
        [(CEKLightingControl *)self collapsedSelectionCenterPointEdgeInset];
        MidX = width - v22;
      }

      else if (collapsedControlLocation == 1)
      {
        [(CEKLightingControl *)self collapsedSelectionCenterPointEdgeInset];
      }

      else
      {
        MidX = 0.0;
        if (!collapsedControlLocation)
        {
          v41.origin.x = v11;
          v41.origin.y = v12;
          v41.size.width = width;
          v41.size.height = height;
          MidX = CGRectGetMidX(v41);
        }
      }

      v11 = MidX + -50.0;
      width = 100.0;
    }

    v42.origin.x = v11;
    v42.origin.y = v18;
    v42.size.width = width;
    v42.size.height = v17;
    v38.x = x;
    v38.y = y;
    if (!CGRectContainsPoint(v42, v38))
    {
      _collapsedControlSelectionOverlay = [(CEKLightingControl *)self _collapsedControlSelectionOverlay];

      if (!_collapsedControlSelectionOverlay)
      {
        goto LABEL_17;
      }

      _collapsedControlSelectionOverlay2 = [(CEKLightingControl *)self _collapsedControlSelectionOverlay];
      superview = [_collapsedControlSelectionOverlay2 superview];
      _collapsedControlSelectionOverlay3 = [(CEKLightingControl *)self _collapsedControlSelectionOverlay];
      [_collapsedControlSelectionOverlay3 frame];
      [superview convertRect:self toView:?];
      v28 = v27;
      v30 = v29;
      v32 = v31;
      v34 = v33;

      v43.origin.x = v28;
      v43.origin.y = v30;
      v43.size.width = v32;
      v43.size.height = v34;
      v44 = CGRectInset(v43, -10.0, -10.0);
      v39.x = x;
      v39.y = y;
      if (!CGRectContainsPoint(v44, v39))
      {
        goto LABEL_17;
      }
    }
  }

LABEL_18:

  return v7;
}

- (void)_setExpanded:(BOOL)expanded animated:(BOOL)animated shouldNotify:(BOOL)notify
{
  if (self->_expanded != expanded)
  {
    notifyCopy = notify;
    animatedCopy = animated;
    expandedCopy = expanded;
    if (notify && self->_delegateFlags.respondsToWillChangeExpanded)
    {
      delegate = [(CEKLightingControl *)self delegate];
      [delegate lightingControl:self willChangeExpanded:expandedCopy];
    }

    _animationGenerator = [(CEKLightingControl *)self _animationGenerator];
    [_animationGenerator stopAllAnimations];
    if (animatedCopy)
    {
      [(CEKLightingControl *)self layoutIfNeeded];
    }

    self->_expanded = expandedCopy;
    [(CEKLightingControl *)self setNeedsLayout];
    [(CEKLightingControl *)self _selectionAngularOffset];
    v12 = v11;
    [(CEKLightingControl *)self _setSelectionAngularOffset:0.0];
    if (animatedCopy)
    {
      if (!expandedCopy)
      {
        [(CEKLightingControl *)self _rubberBandOffsetAngleForOffsetAngle:v12];
        [(CEKLightingControl *)self _settleSelectionViewsFromSelectionOffsetAngle:?];
      }

      [(CEKLightingControl *)self _setExpandedAnimationCounter:[(CEKLightingControl *)self _expandedAnimationCounter]+ 1];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __57__CEKLightingControl__setExpanded_animated_shouldNotify___block_invoke;
      v15[3] = &unk_1E7CC6358;
      v15[4] = self;
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __57__CEKLightingControl__setExpanded_animated_shouldNotify___block_invoke_2;
      v14[3] = &unk_1E7CC63C8;
      v14[4] = self;
      [MEMORY[0x1E69DD250] animateWithDuration:0x20000 delay:v15 usingSpringWithDamping:v14 initialSpringVelocity:0.5 options:0.0 animations:0.8 completion:0.0];
    }

    [(CEKLightingControl *)self _updateNameBadgeAnimated:animatedCopy];
    if (notifyCopy && self->_delegateFlags.respondsToDidChangeExpanded)
    {
      delegate2 = [(CEKLightingControl *)self delegate];
      [delegate2 lightingControlDidChangeExpanded:self];
    }
  }
}

uint64_t __57__CEKLightingControl__setExpanded_animated_shouldNotify___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 _expandedAnimationCounter] - 1;

  return [v1 _setExpandedAnimationCounter:v2];
}

- (void)_collapseWithDelay:(double)delay
{
  v4 = [MEMORY[0x1E695DFF0] timerWithTimeInterval:self target:sel__handleCollapseTimer_ selector:0 userInfo:0 repeats:delay];
  [(CEKLightingControl *)self _setCollapseTimer:v4];

  currentRunLoop = [MEMORY[0x1E695DFD0] currentRunLoop];
  _collapseTimer = [(CEKLightingControl *)self _collapseTimer];
  [currentRunLoop addTimer:_collapseTimer forMode:*MEMORY[0x1E695DA28]];
}

- (void)_handleCollapseTimer:(id)timer
{
  [(CEKLightingControl *)self _setCollapseTimer:0];

  [(CEKLightingControl *)self _setExpanded:0 animated:1 shouldNotify:1];
}

- (void)_cancelDelayedCollapse
{
  _collapseTimer = [(CEKLightingControl *)self _collapseTimer];
  [_collapseTimer invalidate];

  [(CEKLightingControl *)self _setCollapseTimer:0];
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    p_delegateFlags = &self->_delegateFlags;
    p_delegateFlags->respondsToWillChangeExpanded = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToDidChangeExpanded = objc_opt_respondsToSelector() & 1;
  }
}

- (void)setLightingEffectSet:(int64_t)set animated:(BOOL)animated
{
  if (self->_lightingEffectSet != set)
  {
    animatedCopy = animated;
    if (animated)
    {
      [(CEKLightingControl *)self layoutIfNeeded];
    }

    self->_lightingEffectSet = set;
    if (set > 3)
    {
      v7 = 0;
    }

    else
    {
      v7 = qword_1E7CC6F28[set];
    }

    v8 = [MEMORY[0x1E695DFD8] setWithArray:v7];
    [(CEKLightingControl *)self set_enabledEffectTypes:v8];

    [(CEKLightingControl *)self setNeedsLayout];
    if (![(CEKLightingControl *)self _isLightingTypeEnabled:[(CEKLightingControl *)self selectedLightingType]])
    {
      [(CEKLightingControl *)self setSelectedLightingType:[(CEKLightingControl *)self defaultLightingType] animated:animatedCopy];
    }

    if (animatedCopy)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __52__CEKLightingControl_setLightingEffectSet_animated___block_invoke;
      v9[3] = &unk_1E7CC6358;
      v9[4] = self;
      [MEMORY[0x1E69DD250] animateWithDuration:4 delay:v9 options:0 animations:0.4 completion:0.0];
    }
  }
}

- (BOOL)_isLightingTypeEnabled:(int64_t)enabled
{
  _enabledEffectTypes = [(CEKLightingControl *)self _enabledEffectTypes];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:enabled];
  v6 = [_enabledEffectTypes containsObject:v5];

  return v6;
}

- (void)setSelectedLightingType:(int64_t)type animated:(BOOL)animated
{
  animatedCopy = animated;
  _effectTypes = [(CEKLightingControl *)self _effectTypes];
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  v9 = [_effectTypes indexOfObject:v8];

  if (v9 != 0x7FFFFFFFFFFFFFFFLL)
  {

    [(CEKLightingControl *)self _setSelectedLightingType:type atIndex:v9 shouldNotify:0 shouldSuppressHaptic:1 animated:animatedCopy];
  }
}

- (void)ppt_selectLightingType:(int64_t)type
{
  _effectTypes = [(CEKLightingControl *)self _effectTypes];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  v7 = [_effectTypes indexOfObject:v6];

  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {

    [(CEKLightingControl *)self _setSelectedLightingType:type atIndex:v7 shouldNotify:1 shouldSuppressHaptic:1 animated:0];
  }
}

- (void)_setSelectedLightingType:(int64_t)type atIndex:(unint64_t)index shouldNotify:(BOOL)notify shouldSuppressHaptic:(BOOL)haptic animated:(BOOL)animated
{
  if (self->_selectedLightingType != type)
  {
    animatedCopy = animated;
    notifyCopy = notify;
    if (animated)
    {
      [(CEKLightingControl *)self layoutIfNeeded];
    }

    self->_selectedLightingType = type;
    self->__selectionIndex = index;
    [(CEKLightingControl *)self _updateNameBadgeAnimated:0];
    [(CEKLightingControl *)self _updateImagesForCollapedControlViews];
    if (notifyCopy)
    {
      delegate = [(CEKLightingControl *)self delegate];
      [delegate lightingControlDidChangeSelectedLightingType:self];
    }

    if (!haptic)
    {
      [(CEKLightingControl *)self _performFeedback];
      [(CEKLightingControl *)self _prepareFeedback];
    }

    [(CEKLightingControl *)self setNeedsLayout];
    if (animatedCopy)
    {
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __98__CEKLightingControl__setSelectedLightingType_atIndex_shouldNotify_shouldSuppressHaptic_animated___block_invoke;
      v14[3] = &unk_1E7CC6358;
      v14[4] = self;
      [MEMORY[0x1E69DD250] animateWithDuration:4 delay:v14 options:0 animations:0.15 completion:0.0];
    }
  }
}

- (void)_snapFromSelectionOffsetAngle:(double)angle toAngle:(double)toAngle animated:(BOOL)animated
{
  if (angle != toAngle)
  {
    animatedCopy = animated;
    [(CEKLightingControl *)self _setSelectionAngularOffset:toAngle];
    if (animatedCopy)
    {
      objc_initWeak(&location, self);
      LODWORD(v8) = 1.0;
      v9 = [MEMORY[0x1E69793D0] functionWithControlPoints:0.0 :0.0 :0.0 :v8];
      _animationGenerator = [(CEKLightingControl *)self _animationGenerator];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __69__CEKLightingControl__snapFromSelectionOffsetAngle_toAngle_animated___block_invoke;
      v12[3] = &unk_1E7CC6EE8;
      objc_copyWeak(v14, &location);
      v14[1] = *&angle;
      v11 = v9;
      v13 = v11;
      [_animationGenerator startAnimationForIdentifier:@"rotation" duration:v12 updateHandler:0 completionHandler:0.2];

      objc_destroyWeak(v14);
      objc_destroyWeak(&location);
    }

    else
    {

      [(CEKLightingControl *)self setNeedsLayout];
    }
  }
}

void __69__CEKLightingControl__snapFromSelectionOffsetAngle_toAngle_animated___block_invoke(uint64_t a1, double a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleSnapFromOffset:*(a1 + 32) withProgress:*(a1 + 48) timingCurve:a2];
}

- (void)_handleSnapFromOffset:(double)offset withProgress:(double)progress timingCurve:(id)curve
{
  curveCopy = curve;
  [(CEKLightingControl *)self _selectionAngularOffset];
  [(CEKLightingControl *)self _rubberBandOffsetAngleForOffsetAngle:?];
  v10 = v9;
  [(CEKLightingControl *)self _rubberBandOffsetAngleForOffsetAngle:offset];
  v12 = v11;
  *&v11 = progress;
  [curveCopy _solveForInput:v11];
  LODWORD(progress) = v13;

  v14 = v12 + *&progress * (v10 - v12);
  [(CEKLightingControl *)self _layoutItemViewsRadialWithSelectionOffsetAngle:v14];
  [(CEKLightingControl *)self _updateItemViewsWithSelectionOffsetAngle:v14];

  [(CEKLightingControl *)self _updateSelectionViewsWithSelectionOffsetAngle:v14];
}

- (void)_rotateForTapFromSelectionIndex:(unint64_t)index offset:(double)offset toSelectionIndex:(unint64_t)selectionIndex
{
  [(CEKLightingControl *)self _angularSpacingForRadialLayout];
  v10 = v9;
  objc_initWeak(&location, self);
  LODWORD(v11) = 1.0;
  v12 = [MEMORY[0x1E69793D0] functionWithControlPoints:0.0 :0.0 :0.0 :v11];
  _animationGenerator = [(CEKLightingControl *)self _animationGenerator];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __78__CEKLightingControl__rotateForTapFromSelectionIndex_offset_toSelectionIndex___block_invoke;
  v15[3] = &unk_1E7CC6EE8;
  objc_copyWeak(v17, &location);
  *&v17[1] = v10 * (selectionIndex - index) + offset;
  v14 = v12;
  v16 = v14;
  [_animationGenerator startAnimationForIdentifier:@"rotation" duration:v15 updateHandler:0 completionHandler:0.35];

  objc_destroyWeak(v17);
  objc_destroyWeak(&location);
}

void __78__CEKLightingControl__rotateForTapFromSelectionIndex_offset_toSelectionIndex___block_invoke(uint64_t a1, double a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleTapRotationFromOffset:*(a1 + 32) withProgress:*(a1 + 48) timingCurve:a2];
}

- (void)_handleTapRotationFromOffset:(double)offset withProgress:(double)progress timingCurve:(id)curve
{
  curveCopy = curve;
  [(CEKLightingControl *)self _selectionAngularOffset];
  v10 = v9;
  *&v9 = progress;
  [curveCopy _solveForInput:v9];
  LODWORD(progress) = v11;

  v12 = offset + *&progress * (v10 - offset);
  [(CEKLightingControl *)self _layoutItemViewsRadialWithSelectionOffsetAngle:v12];
  [(CEKLightingControl *)self _updateItemViewsWithSelectionOffsetAngle:v12];

  [(CEKLightingControl *)self _updateSelectionViewsWithSelectionOffsetAngle:v12];
}

- (void)preloadEffectChangeAnimation
{
  _frameCache = [(CEKLightingControl *)self _frameCache];
  [_frameCache preloadForegroundFrames];
  [_frameCache preloadBackgroundFrames];
}

- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated
{
  if (self->_highlighted != highlighted)
  {
    animatedCopy = animated;
    highlightedCopy = highlighted;
    self->_highlighted = highlighted;
    _nameBadge = [(CEKLightingControl *)self _nameBadge];
    [_nameBadge setHighlighted:highlightedCopy animated:animatedCopy];

    [(CEKLightingControl *)self _updateSelectionOverlayColorAnimated:animatedCopy];
  }
}

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = CEKLightingControl;
  [(CEKLightingControl *)&v3 tintColorDidChange];
  [(CEKLightingControl *)self _updateSelectionOverlayColorAnimated:0];
}

- (void)_updateSelectionOverlayColorAnimated:(BOOL)animated
{
  animatedCopy = animated;
  tintColor = [(CEKLightingControl *)self tintColor];
  _nameBadge = [(CEKLightingControl *)self _nameBadge];
  [_nameBadge setTintColor:tintColor];

  if ([(CEKLightingControl *)self isHighlighted])
  {
    [(CEKLightingControl *)self tintColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] labelColor];
  }
  v7 = ;
  traitCollection = [(CEKLightingControl *)self traitCollection];
  v9 = [v7 resolvedColorWithTraitCollection:traitCollection];

  _selectionOverlay = [(CEKLightingControl *)self _selectionOverlay];
  v11 = _selectionOverlay;
  if (animatedCopy)
  {
    v12 = MEMORY[0x1E69DD250];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __59__CEKLightingControl__updateSelectionOverlayColorAnimated___block_invoke;
    v14[3] = &unk_1E7CC6AE8;
    v15 = _selectionOverlay;
    v16 = v9;
    selfCopy = self;
    [v12 animateWithDuration:v14 animations:0.25];
  }

  else
  {
    [_selectionOverlay setContentsMultiplyColor:v9];
    _collapsedControlSelectionOverlay = [(CEKLightingControl *)self _collapsedControlSelectionOverlay];
    [_collapsedControlSelectionOverlay setContentsMultiplyColor:v9];
  }
}

void __59__CEKLightingControl__updateSelectionOverlayColorAnimated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setContentsMultiplyColor:*(a1 + 40)];
  v2 = *(a1 + 40);
  v3 = [*(a1 + 48) _collapsedControlSelectionOverlay];
  [v3 setContentsMultiplyColor:v2];
}

- (void)_updateSelectionViewsWithSelectionOffsetAngle:(double)angle
{
  _selectionIndex = [(CEKLightingControl *)self _selectionIndex];
  v6 = [(CEKLightingControl *)self _isOverDialedWithSelectionAngularOffset:_selectionIndex selectionIndex:angle];
  [(CEKLightingControl *)self _angularSpacingForRadialLayout];
  v8 = -angle / v7;
  if (fabs(v8) >= 0.5)
  {
    v9 = v8 + _selectionIndex;
    _selectionIndex = fmax(fmin(([(CEKLightingControl *)self _enabledItemCount]- 1), round(v9)), 0.0);
    v8 = v9 - _selectionIndex;
  }

  v10 = fmax(fmin(v8 * 0.15, 0.1889), -0.1889);
  if (v6)
  {
    v8 = v10;
  }

  v11 = -round(v8 * 90.0);
  _frameCache = [(CEKLightingControl *)self _frameCache];
  _effectTypes = [(CEKLightingControl *)self _effectTypes];
  v13 = [_effectTypes objectAtIndexedSubscript:_selectionIndex];
  integerValue = [v13 integerValue];

  v15 = [_frameCache foregroundFrameForAngle:v11];
  v16 = [_frameCache backgroundFrameForAngle:v11 lightingType:integerValue];
  v17 = v16;
  if (v15)
  {
    v18 = v16 == 0;
  }

  else
  {
    v18 = 1;
  }

  if (!v18)
  {
    _selectionOverlay = [(CEKLightingControl *)self _selectionOverlay];
    [_selectionOverlay setImage:v15];

    _selectionUnderlay = [(CEKLightingControl *)self _selectionUnderlay];
    [_selectionUnderlay setImage:v17];

    [(CEKLightingControl *)self _updateSelectionOverlayColorAnimated:0];
  }
}

- (void)_updateImagesForCollapedControlViews
{
  _collapsedControlItemView = [(CEKLightingControl *)self _collapsedControlItemView];

  if (_collapsedControlItemView)
  {
    _effectItemsForType = [(CEKLightingControl *)self _effectItemsForType];
    v5 = [MEMORY[0x1E696AD98] numberWithInteger:{-[CEKLightingControl selectedLightingType](self, "selectedLightingType")}];
    v15 = [_effectItemsForType objectForKeyedSubscript:v5];

    _frameCache = [(CEKLightingControl *)self _frameCache];
    displayImage = [v15 displayImage];
    _collapsedControlItemView2 = [(CEKLightingControl *)self _collapsedControlItemView];
    [_collapsedControlItemView2 setImage:displayImage];

    displayShadowImage = [v15 displayShadowImage];
    _collapsedControlShadowView = [(CEKLightingControl *)self _collapsedControlShadowView];
    [_collapsedControlShadowView setImage:displayShadowImage];

    v11 = [_frameCache foregroundFrameForAngle:0];
    _collapsedControlSelectionOverlay = [(CEKLightingControl *)self _collapsedControlSelectionOverlay];
    [_collapsedControlSelectionOverlay setImage:v11];

    v13 = [_frameCache backgroundFrameForAngle:0 lightingType:{-[CEKLightingControl selectedLightingType](self, "selectedLightingType")}];
    _collapsedControlSelectionUnderlay = [(CEKLightingControl *)self _collapsedControlSelectionUnderlay];
    [_collapsedControlSelectionUnderlay setImage:v13];
  }
}

- (void)_settleSelectionViewsFromSelectionOffsetAngle:(double)angle
{
  objc_initWeak(&location, self);
  LODWORD(v5) = 1.0;
  v6 = [MEMORY[0x1E69793D0] functionWithControlPoints:0.0 :0.0 :0.0 :v5];
  _animationGenerator = [(CEKLightingControl *)self _animationGenerator];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __68__CEKLightingControl__settleSelectionViewsFromSelectionOffsetAngle___block_invoke;
  v9[3] = &unk_1E7CC6EE8;
  objc_copyWeak(v11, &location);
  v11[1] = *&angle;
  v8 = v6;
  v10 = v8;
  [_animationGenerator startAnimationForIdentifier:@"cubeSettling" duration:v9 updateHandler:0 completionHandler:0.25];

  objc_destroyWeak(v11);
  objc_destroyWeak(&location);
}

void __68__CEKLightingControl__settleSelectionViewsFromSelectionOffsetAngle___block_invoke(uint64_t a1, double a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleSettlingSelectionViewsFromOffset:*(a1 + 32) withProgress:*(a1 + 48) timingCurve:a2];
}

- (void)_handleSettlingSelectionViewsFromOffset:(double)offset withProgress:(double)progress timingCurve:(id)curve
{
  offsetCopy = offset;
  *&offset = progress;
  [curve _solveForInput:offset];
  v8 = (1.0 - v7) * offsetCopy;

  [(CEKLightingControl *)self _updateSelectionViewsWithSelectionOffsetAngle:v8];
}

- (void)setCollapsedItemFading:(id)fading animated:(BOOL)animated
{
  animatedCopy = animated;
  if (fading.var0 != self->_collapsedItemFading.leftRate || fading.var1 != self->_collapsedItemFading.rightRate)
  {
    self->_collapsedItemFading = fading;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __54__CEKLightingControl_setCollapsedItemFading_animated___block_invoke;
    aBlock[3] = &unk_1E7CC6358;
    aBlock[4] = self;
    v5 = _Block_copy(aBlock);
    v6 = v5;
    if (animatedCopy)
    {
      [MEMORY[0x1E69DD250] animateWithDuration:v5 animations:0.25];
    }

    else
    {
      (*(v5 + 2))(v5);
    }
  }
}

uint64_t __54__CEKLightingControl_setCollapsedItemFading_animated___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  [v1 _selectionAngularOffset];

  return [v1 _updateItemViewsWithSelectionOffsetAngle:?];
}

- (void)_updateItemViewsWithSelectionOffsetAngle:(double)angle
{
  selfCopy = self;
  selectedLightingType = [(CEKLightingControl *)self selectedLightingType];
  _effectItemsForType = [(CEKLightingControl *)selfCopy _effectItemsForType];
  _itemViewsForType = [(CEKLightingControl *)selfCopy _itemViewsForType];
  _itemShadowViewsForType = [(CEKLightingControl *)selfCopy _itemShadowViewsForType];
  _itemOutlineViewsForType = [(CEKLightingControl *)selfCopy _itemOutlineViewsForType];
  _effectTypes = [(CEKLightingControl *)selfCopy _effectTypes];
  isExpanded = [(CEKLightingControl *)selfCopy isExpanded];
  collapsedControlLocation = [(CEKLightingControl *)selfCopy collapsedControlLocation];
  v11 = 1.0;
  v12 = collapsedControlLocation - 1;
  v57 = isExpanded;
  if (isExpanded)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = 1.0;
  }

  if (!collapsedControlLocation)
  {
    v11 = 0.0;
  }

  if (v12 >= 2)
  {
    v13 = v11;
  }

  v52 = v13;
  v14 = v12 < 2 && !isExpanded;
  v59 = v14;
  [(CEKLightingControl *)selfCopy _angularSpacingForRadialLayout];
  v16 = v15;
  _itemCount = [(CEKLightingControl *)selfCopy _itemCount];
  if ([(CEKLightingControl *)selfCopy _itemCount])
  {
    v18 = 0;
    v19 = v16 * (_itemCount - 1);
    v53 = fabs(angle);
    v55 = _itemViewsForType;
    v56 = _itemShadowViewsForType;
    v54 = _itemOutlineViewsForType;
    do
    {
      v20 = [_effectTypes objectAtIndexedSubscript:v18];
      v63 = [_itemViewsForType objectForKeyedSubscript:v20];
      v62 = [_itemShadowViewsForType objectForKeyedSubscript:v20];
      v21 = [_itemOutlineViewsForType objectForKeyedSubscript:v20];
      v61 = [_effectItemsForType objectForKeyedSubscript:v20];
      lightingType = [v61 lightingType];
      [(CEKLightingControl *)selfCopy _offsetAngleForItemAtIndex:v18 withSelectionOffset:angle];
      v24 = 1.0;
      v25 = fmin(fabs(v23) / v19, 1.0);
      v26 = (v25 * (v25 * v25) + v25 * v25 * -4.0 + v25 * 5.0) * 0.5 * -0.3 + 1.0;
      memset(&v65.c, 0, 32);
      if (!v57)
      {
        v26 = v26 * 0.75;
      }

      *&v65.a = 0uLL;
      CGAffineTransformMakeScale(&v65, v26, v26);
      if (!v57)
      {
        collapsedItemFading = [(CEKLightingControl *)selfCopy collapsedItemFading];
        v38 = selfCopy;
        v40 = v39;
        v41 = v38;
        _selectionIndex = [(CEKLightingControl *)v38 _selectionIndex];
        v43 = v18 - _selectionIndex;
        if ((v18 - _selectionIndex) >= 0)
        {
          v44 = v40;
        }

        else
        {
          v44 = collapsedItemFading;
        }

        if (v44 != 2)
        {
          v27 = v62;
          if (v44 == 1)
          {
            if (v43 < 0)
            {
              v43 = _selectionIndex - v18;
            }

            v24 = fmax(v43 * -0.375 + 1.0, 0.0);
            selfCopy = v41;
            _itemOutlineViewsForType = v54;
            _itemViewsForType = v55;
          }

          else
          {
            selfCopy = v41;
            _itemOutlineViewsForType = v54;
            _itemViewsForType = v55;
            if (!v44)
            {
              v24 = v25 * -0.7 + 1.0;
            }
          }

          goto LABEL_17;
        }

        if (v43 < 0)
        {
          v43 = _selectionIndex - v18;
        }

        v24 = fmax(1.0 - v43, 0.0);
        selfCopy = v41;
        _itemOutlineViewsForType = v54;
        _itemViewsForType = v55;
      }

      v27 = v62;
LABEL_17:
      v28 = 0.0;
      v29 = v24;
      if (lightingType == selectedLightingType && v27 | v21)
      {
        [(CEKLightingControl *)selfCopy _angularSpacingForRadialLayout];
        v29 = v24 * (1.0 - (v30 * 0.5 - v53) / (v30 * 0.5 - v30 * 0.5 * 0.5));
        v28 = 1.0 - v29;
      }

      v31 = [(CEKLightingControl *)selfCopy _isLightingTypeEnabled:lightingType];
      if (v31)
      {
        v32 = v24;
      }

      else
      {
        v32 = 0.0;
      }

      if (v31)
      {
        v33 = v29;
      }

      else
      {
        v33 = 0.0;
      }

      if (v31)
      {
        v34 = v28;
      }

      else
      {
        v34 = 0.0;
      }

      if (v59)
      {
        v32 = 0.0;
        v35 = 0.0;
      }

      else
      {
        v35 = v33;
      }

      if (v59)
      {
        v36 = 0.0;
      }

      else
      {
        v36 = v34;
      }

      [v63 setAlpha:{v32, v33, v34}];
      [v27 setAlpha:v36];
      [v21 setAlpha:v35];
      v64 = v65;
      [v63 setTransform:&v64];
      v64 = v65;
      [v27 setTransform:&v64];
      v64 = v65;
      [v21 setTransform:&v64];

      ++v18;
      _itemShadowViewsForType = v56;
    }

    while (v18 < [(CEKLightingControl *)selfCopy _itemCount]);
  }

  if (v59)
  {
    v45 = 0.0;
  }

  else
  {
    v45 = 1.0;
  }

  _selectionUnderlay = [(CEKLightingControl *)selfCopy _selectionUnderlay];
  [_selectionUnderlay setAlpha:v45];

  _selectionOverlay = [(CEKLightingControl *)selfCopy _selectionOverlay];
  [_selectionOverlay setAlpha:v45];

  _collapsedControlItemView = [(CEKLightingControl *)selfCopy _collapsedControlItemView];
  [_collapsedControlItemView setAlpha:v52];

  _collapsedControlShadowView = [(CEKLightingControl *)selfCopy _collapsedControlShadowView];
  [_collapsedControlShadowView setAlpha:v52];

  _collapsedControlSelectionUnderlay = [(CEKLightingControl *)selfCopy _collapsedControlSelectionUnderlay];
  [_collapsedControlSelectionUnderlay setAlpha:v52];

  _collapsedControlSelectionOverlay = [(CEKLightingControl *)selfCopy _collapsedControlSelectionOverlay];
  [_collapsedControlSelectionOverlay setAlpha:v52];
}

- (void)setNameBadgeHidden:(BOOL)hidden animated:(BOOL)animated
{
  if (self->_nameBadgeHidden != hidden)
  {
    self->_nameBadgeHidden = hidden;
    [(CEKLightingControl *)self _updateNameBadgeAnimated:animated];
  }
}

- (void)_updateNameBadgeAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v5 = ([(CEKLightingControl *)self isNameBadgeHidden]^ 1);
  _nameBadge = [(CEKLightingControl *)self _nameBadge];
  v7 = _nameBadge;
  if (animatedCopy)
  {
    v8 = MEMORY[0x1E69DD250];
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __47__CEKLightingControl__updateNameBadgeAnimated___block_invoke;
    v12 = &unk_1E7CC6660;
    v13 = _nameBadge;
    v14 = v5;
    [v8 animateWithDuration:&v9 animations:0.25];
  }

  else
  {
    [_nameBadge setAlpha:v5];
  }

  [v7 setLightingType:{-[CEKLightingControl selectedLightingType](self, "selectedLightingType", v9, v10, v11, v12)}];
}

- (void)setOrientation:(int64_t)orientation
{
  orientation = self->_orientation;
  if (orientation != orientation)
  {
    self->_orientation = orientation;
    if (orientation == 2 || orientation == 2)
    {
      [(CEKLightingControl *)self setNeedsLayout];
    }
  }
}

- (void)setNameBadgeFontStyle:(unint64_t)style
{
  _nameBadge = [(CEKLightingControl *)self _nameBadge];
  [_nameBadge setFontStyle:style];
}

- (unint64_t)nameBadgeFontStyle
{
  _nameBadge = [(CEKLightingControl *)self _nameBadge];
  fontStyle = [_nameBadge fontStyle];

  return fontStyle;
}

- (void)_loadItemsIfNeeded
{
  v18 = *MEMORY[0x1E69E9840];
  _effectItemsForType = [(CEKLightingControl *)self _effectItemsForType];

  if (!_effectItemsForType)
  {
    _effectTypes = [(CEKLightingControl *)self _effectTypes];
    v5 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(_effectTypes, "count")}];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = _effectTypes;
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v13 + 1) + 8 * i);
          v12 = -[CEKLightingControlItem initWithType:]([CEKLightingControlItem alloc], "initWithType:", [v11 integerValue]);
          [v5 setObject:v12 forKeyedSubscript:v11];
        }

        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }

    [(CEKLightingControl *)self _setEffectItemsForType:v5];
  }
}

- (unint64_t)_itemCount
{
  _effectTypes = [(CEKLightingControl *)self _effectTypes];
  v3 = [_effectTypes count];

  return v3;
}

- (unint64_t)_enabledItemCount
{
  _enabledEffectTypes = [(CEKLightingControl *)self _enabledEffectTypes];
  v3 = [_enabledEffectTypes count];

  return v3;
}

- (void)_createItemViewsIfNeeded
{
  v35 = *MEMORY[0x1E69E9840];
  _itemViewsForType = [(CEKLightingControl *)self _itemViewsForType];

  if (!_itemViewsForType)
  {
    [(CEKLightingControl *)self _loadItemsIfNeeded];
    _effectItemsForType = [(CEKLightingControl *)self _effectItemsForType];
    allValues = [_effectItemsForType allValues];

    v29 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(allValues, "count")}];
    v27 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(allValues, "count")}];
    v26 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(allValues, "count")}];
    v25 = [MEMORY[0x1E69DC888] colorWithDynamicProvider:&__block_literal_global_7];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    obj = allValues;
    v6 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v6)
    {
      v7 = v6;
      v28 = *v31;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v31 != v28)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v30 + 1) + 8 * i);
          lightingType = [v9 lightingType];
          displayImage = [v9 displayImage];
          displayShadowImage = [v9 displayShadowImage];
          displayOutlineImage = [v9 displayOutlineImage];
          if (displayShadowImage)
          {
            v14 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:displayShadowImage];
            v15 = [MEMORY[0x1E696AD98] numberWithInteger:lightingType];
            [v27 setObject:v14 forKeyedSubscript:v15];

            _itemContainer = [(CEKLightingControl *)self _itemContainer];
            [_itemContainer addSubview:v14];
          }

          if (displayOutlineImage)
          {
            v17 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:displayOutlineImage];
            [v17 setTintColor:v25];
            v18 = [MEMORY[0x1E696AD98] numberWithInteger:lightingType];
            [v26 setObject:v17 forKeyedSubscript:v18];

            _itemContainer2 = [(CEKLightingControl *)self _itemContainer];
            [_itemContainer2 addSubview:v17];
          }

          v20 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:displayImage];
          v21 = [MEMORY[0x1E696AD98] numberWithInteger:lightingType];
          [v29 setObject:v20 forKeyedSubscript:v21];

          _itemContainer3 = [(CEKLightingControl *)self _itemContainer];
          [_itemContainer3 addSubview:v20];
        }

        v7 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v7);
    }

    _selectionOverlay = [(CEKLightingControl *)self _selectionOverlay];
    [(CEKLightingControl *)self bringSubviewToFront:_selectionOverlay];

    [(CEKLightingControl *)self _setItemViewsForType:v29];
    [(CEKLightingControl *)self _setItemShadowViewsForType:v27];
    [(CEKLightingControl *)self _setItemOutlineViewsForType:v26];
  }
}

id __46__CEKLightingControl__createItemViewsIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  if ([a2 userInterfaceStyle] == 1)
  {
    [MEMORY[0x1E69DC888] tertiaryLabelColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.5];
  }
  v2 = ;

  return v2;
}

- (void)_createCollapsedControlViewsIfNeeded
{
  if ([(CEKLightingControl *)self collapsedControlLocation])
  {
    _collapsedControlItemView = [(CEKLightingControl *)self _collapsedControlItemView];

    if (!_collapsedControlItemView)
    {
      v4 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:0];
      [(CEKLightingControl *)self set_collapsedControlItemView:v4];

      v5 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:0];
      [(CEKLightingControl *)self set_collapsedControlShadowView:v5];

      v6 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
      [(CEKLightingControl *)self set_collapsedControlSelectionUnderlay:v6];

      v7 = objc_alloc_init(CEKMultiplyImageView);
      [(CEKLightingControl *)self set_collapsedControlSelectionOverlay:v7];

      _itemContainer = [(CEKLightingControl *)self _itemContainer];
      _collapsedControlSelectionUnderlay = [(CEKLightingControl *)self _collapsedControlSelectionUnderlay];
      [_itemContainer addSubview:_collapsedControlSelectionUnderlay];

      _itemContainer2 = [(CEKLightingControl *)self _itemContainer];
      _collapsedControlShadowView = [(CEKLightingControl *)self _collapsedControlShadowView];
      [_itemContainer2 addSubview:_collapsedControlShadowView];

      _itemContainer3 = [(CEKLightingControl *)self _itemContainer];
      _collapsedControlItemView2 = [(CEKLightingControl *)self _collapsedControlItemView];
      [_itemContainer3 addSubview:_collapsedControlItemView2];

      _itemContainer4 = [(CEKLightingControl *)self _itemContainer];
      _collapsedControlSelectionOverlay = [(CEKLightingControl *)self _collapsedControlSelectionOverlay];
      [_itemContainer4 addSubview:_collapsedControlSelectionOverlay];

      [(CEKLightingControl *)self _updateImagesForCollapedControlViews];
    }
  }
}

- (void)_createBackgroundViewIfNeeded
{
  _backgroundView = [(CEKLightingControl *)self _backgroundView];

  if (!_backgroundView)
  {
    v4 = objc_alloc_init(CEKLightingDialBackground);
    [(CEKLightingDialBackground *)v4 setUserInteractionEnabled:0];
    [(CEKLightingControl *)self _dialRadius];
    [(CEKLightingDialBackground *)v4 setRadius:?];
    [(CEKLightingControl *)self insertSubview:v4 atIndex:0];
    [(CEKLightingControl *)self _setBackgroundView:v4];
  }
}

- (void)_createSelectionViewsIfNeeded
{
  _selectionOverlay = [(CEKLightingControl *)self _selectionOverlay];

  if (!_selectionOverlay)
  {
    v4 = objc_alloc_init(CEKMultiplyImageView);
    [(CEKLightingControl *)self addSubview:v4];
    [(CEKLightingControl *)self setNeedsLayout];
    [(CEKLightingControl *)self _setSelectionOverlay:v4];
    [(CEKLightingControl *)self _updateSelectionOverlayColorAnimated:0];
  }

  _selectionUnderlay = [(CEKLightingControl *)self _selectionUnderlay];

  if (!_selectionUnderlay)
  {
    v7 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    [(CEKLightingControl *)self insertSubview:v7 atIndex:0];
    _backgroundView = [(CEKLightingControl *)self _backgroundView];
    [(CEKLightingControl *)self sendSubviewToBack:_backgroundView];

    [(CEKLightingControl *)self _setSelectionUnderlay:v7];
  }
}

- (void)_createNameBadgeIfNeeded
{
  _nameBadge = [(CEKLightingControl *)self _nameBadge];

  if (!_nameBadge)
  {
    v4 = objc_alloc_init(CEKLightingNameBadge);
    [(CEKBadgeView *)v4 setDelegate:self];
    [(CEKLightingControl *)self addSubview:v4];
    [(CEKLightingControl *)self _setNameBadge:v4];
    [(CEKLightingControl *)self _updateNameBadgeAnimated:0];
  }
}

- (void)_createItemContainerIfNeeded
{
  _itemContainer = [(CEKLightingControl *)self _itemContainer];

  if (!_itemContainer)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DD250]);
    [(CEKLightingControl *)self addSubview:v4];
    [v4 setClipsToBounds:1];
    [v4 setUserInteractionEnabled:0];
    [(CEKLightingControl *)self _setItemContainer:v4];
  }
}

- (void)_prepareFeedback
{
  _selectionFeedbackGenerator = [(CEKLightingControl *)self _selectionFeedbackGenerator];
  [_selectionFeedbackGenerator prepareFeedback];
}

- (void)_performFeedback
{
  _selectionFeedbackGenerator = [(CEKLightingControl *)self _selectionFeedbackGenerator];
  [_selectionFeedbackGenerator performFeedback];
}

- (CEKLightingControlDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)collapsedItemFading
{
  p_collapsedItemFading = &self->_collapsedItemFading;
  leftRate = self->_collapsedItemFading.leftRate;
  rightRate = p_collapsedItemFading->rightRate;
  result.var1 = rightRate;
  result.var0 = leftRate;
  return result;
}

@end