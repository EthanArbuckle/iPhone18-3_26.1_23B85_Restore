@interface CEKLightingControl
- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)collapsedItemFading;
- (BOOL)_isLightingTypeEnabled:(int64_t)a3;
- (BOOL)_isOverDialedWithSelectionAngularOffset:(double)a3 selectionIndex:(unint64_t)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (CEKLightingControl)initWithFrame:(CGRect)a3;
- (CEKLightingControlDelegate)delegate;
- (CGPoint)_dialCenter;
- (CGPoint)_dialCenterForWidth:(double)a3;
- (CGPoint)_selectionPointForExpanded:(BOOL)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (UIEdgeInsets)alignmentRectInsets;
- (double)_angleFromCenterToPoint:(CGPoint)a3;
- (double)_compressedItemOffsetForFractionalItemOffset:(double)a3;
- (double)_dialBadgePaddingExpanded:(BOOL)a3;
- (double)_dialCenterDistanceBelowBoundsForWidth:(double)a3;
- (double)_dialRadius;
- (double)_dialRadiusForWidth:(double)a3;
- (double)_dialVisibleHeightExpanded:(BOOL)a3;
- (double)_offsetAngleForItemAtIndex:(unint64_t)a3 withSelectionOffset:(double)a4;
- (double)_offsetAngleForRubberBandOffsetAngle:(double)a3 selectionIndex:(unint64_t)a4;
- (double)_offsetXForItemAtIndex:(unint64_t)a3;
- (double)_rotationForPanGesture:(id)a3;
- (double)_rubberBandOffsetAngleForOffsetAngle:(double)a3;
- (double)_safeWidthForWidth:(double)a3;
- (double)contentHeightForWidth:(double)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (unint64_t)_enabledItemCount;
- (unint64_t)_itemCount;
- (unint64_t)nameBadgeFontStyle;
- (void)_cancelDelayedCollapse;
- (void)_collapseWithDelay:(double)a3;
- (void)_createBackgroundViewIfNeeded;
- (void)_createCollapsedControlViewsIfNeeded;
- (void)_createItemContainerIfNeeded;
- (void)_createItemViewsIfNeeded;
- (void)_createNameBadgeIfNeeded;
- (void)_createSelectionViewsIfNeeded;
- (void)_handleCollapseTimer:(id)a3;
- (void)_handlePanGesture:(id)a3;
- (void)_handlePressGesture:(id)a3;
- (void)_handleSettlingSelectionViewsFromOffset:(double)a3 withProgress:(double)a4 timingCurve:(id)a5;
- (void)_handleSnapFromOffset:(double)a3 withProgress:(double)a4 timingCurve:(id)a5;
- (void)_handleTapGesture:(id)a3;
- (void)_handleTapRotationFromOffset:(double)a3 withProgress:(double)a4 timingCurve:(id)a5;
- (void)_layoutBackgroundExpanded:(BOOL)a3;
- (void)_layoutCollapsedControlViews;
- (void)_layoutItemContainer;
- (void)_layoutItemViewsLinear;
- (void)_layoutItemViewsRadialWithSelectionOffsetAngle:(double)a3;
- (void)_layoutNameBadgeExpanded:(BOOL)a3;
- (void)_layoutSelectionViewsExpanded:(BOOL)a3;
- (void)_loadItemsIfNeeded;
- (void)_performFeedback;
- (void)_prepareFeedback;
- (void)_rotateForTapFromSelectionIndex:(unint64_t)a3 offset:(double)a4 toSelectionIndex:(unint64_t)a5;
- (void)_setExpanded:(BOOL)a3 animated:(BOOL)a4 shouldNotify:(BOOL)a5;
- (void)_setSelectedLightingType:(int64_t)a3 atIndex:(unint64_t)a4 shouldNotify:(BOOL)a5 shouldSuppressHaptic:(BOOL)a6 animated:(BOOL)a7;
- (void)_setTracking:(BOOL)a3;
- (void)_settleSelectionViewsFromSelectionOffsetAngle:(double)a3;
- (void)_snapFromSelectionOffsetAngle:(double)a3 toAngle:(double)a4 animated:(BOOL)a5;
- (void)_updateImagesForCollapedControlViews;
- (void)_updateItemViewsWithSelectionOffsetAngle:(double)a3;
- (void)_updateNameBadgeAnimated:(BOOL)a3;
- (void)_updateSelectionOverlayColorAnimated:(BOOL)a3;
- (void)_updateSelectionViewsWithSelectionOffsetAngle:(double)a3;
- (void)layoutSubviews;
- (void)ppt_selectLightingType:(int64_t)a3;
- (void)preloadEffectChangeAnimation;
- (void)setAdditionalBottomPadding:(double)a3;
- (void)setCollapsedControlLocation:(unint64_t)a3 animated:(BOOL)a4;
- (void)setCollapsedItemFading:(id)a3 animated:(BOOL)a4;
- (void)setCollapsedSelectionCenterPointBottomInset:(double)a3;
- (void)setCollapsedSelectionCenterPointEdgeInset:(double)a3;
- (void)setDelegate:(id)a3;
- (void)setHighlighted:(BOOL)a3 animated:(BOOL)a4;
- (void)setLightingEffectSet:(int64_t)a3 animated:(BOOL)a4;
- (void)setMaxContentWidth:(double)a3;
- (void)setNameBadgeFontStyle:(unint64_t)a3;
- (void)setNameBadgeHidden:(BOOL)a3 animated:(BOOL)a4;
- (void)setOrientation:(int64_t)a3;
- (void)setSelectedLightingType:(int64_t)a3 animated:(BOOL)a4;
- (void)tintColorDidChange;
@end

@implementation CEKLightingControl

- (CEKLightingControl)initWithFrame:(CGRect)a3
{
  v20.receiver = self;
  v20.super_class = CEKLightingControl;
  v3 = [(CEKLightingControl *)&v20 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E69DC888] systemYellowColor];
    [(CEKLightingControl *)v3 setTintColor:v4];

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
    v17 = [MEMORY[0x1E69DD1B8] systemTraitsAffectingColorAppearance];
    v18 = [(CEKLightingControl *)v3 registerForTraitChanges:v17 withAction:sel__traitCollectionColorsChanged];
  }

  return v3;
}

- (UIEdgeInsets)alignmentRectInsets
{
  v3 = [(CEKLightingControl *)self _nameBadge];
  [v3 intrinsicContentSize];
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

- (void)setCollapsedControlLocation:(unint64_t)a3 animated:(BOOL)a4
{
  if (self->_collapsedControlLocation != a3)
  {
    v8[7] = v4;
    v8[8] = v5;
    v6 = a4;
    self->_collapsedControlLocation = a3;
    [(CEKLightingControl *)self _createCollapsedControlViewsIfNeeded];
    [(CEKLightingControl *)self setNeedsLayout];
    if (v6)
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

- (void)setCollapsedSelectionCenterPointEdgeInset:(double)a3
{
  if (self->_collapsedSelectionCenterPointEdgeInset != a3)
  {
    self->_collapsedSelectionCenterPointEdgeInset = a3;
    [(CEKLightingControl *)self setNeedsLayout];
  }
}

- (void)setCollapsedSelectionCenterPointBottomInset:(double)a3
{
  if (self->_collapsedSelectionCenterPointBottomInset != a3)
  {
    self->_collapsedSelectionCenterPointBottomInset = a3;
    [(CEKLightingControl *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  v3 = [(CEKLightingControl *)self isExpanded];
  [(CEKLightingControl *)self _selectionAngularOffset];
  [(CEKLightingControl *)self _rubberBandOffsetAngleForOffsetAngle:?];
  v5 = v4;
  v7 = [(CEKLightingControl *)self _animationGenerator];
  v6 = [v7 isAnimatingForIdentifier:@"cubeSettling"];
  if (v3)
  {
    if ([v7 isAnimatingForIdentifier:@"rotation"])
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
  [(CEKLightingControl *)self _layoutBackgroundExpanded:v3];
  [(CEKLightingControl *)self _layoutSelectionViewsExpanded:v3];
  [(CEKLightingControl *)self _layoutNameBadgeExpanded:v3];
  [(CEKLightingControl *)self _layoutItemContainer];
  [(CEKLightingControl *)self _layoutCollapsedControlViews];
}

- (void)setAdditionalBottomPadding:(double)a3
{
  if (self->_additionalBottomPadding != a3)
  {
    self->_additionalBottomPadding = a3;
    [(CEKLightingControl *)self setNeedsLayout];
  }
}

- (void)setMaxContentWidth:(double)a3
{
  if (self->_maxContentWidth != a3)
  {
    self->_maxContentWidth = a3;
    [(CEKLightingControl *)self setNeedsLayout];
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(CEKLightingControl *)self _safeWidthForWidth:a3.width, a3.height];
  v5 = v4;
  [(CEKLightingControl *)self contentHeightForWidth:?];
  v7 = v6;
  v8 = v5;
  result.height = v7;
  result.width = v8;
  return result;
}

- (double)contentHeightForWidth:(double)a3
{
  [(CEKLightingControl *)self _safeWidthForWidth:a3];
  v5 = v4;
  [(CEKLightingControl *)self _dialCenterDistanceBelowBoundsForWidth:?];
  [(CEKLightingControl *)self _dialRadiusForWidth:v5];

  UIRoundToViewScale();
  return result;
}

- (double)_safeWidthForWidth:(double)a3
{
  [(CEKLightingControl *)self maxContentWidth];
  v6 = v5;
  v7 = 320.0;
  if (v6 >= 320.0)
  {
    [(CEKLightingControl *)self maxContentWidth];
  }

  return fmin(v7, fmax(a3, 320.0));
}

- (void)_layoutItemViewsRadialWithSelectionOffsetAngle:(double)a3
{
  [(CEKLightingControl *)self _selectionPointForExpanded:1];
  v34 = v5;
  v6 = [(CEKLightingControl *)self _itemViewsForType];
  v7 = [(CEKLightingControl *)self _itemShadowViewsForType];
  v8 = [(CEKLightingControl *)self _itemOutlineViewsForType];
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
      [(CEKLightingControl *)self _offsetAngleForItemAtIndex:v11 withSelectionOffset:a3, *&v32];
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
      v21 = [(CEKLightingControl *)self _effectTypes];
      v22 = [v21 objectAtIndexedSubscript:v11];

      v23 = [v6 objectForKeyedSubscript:v22];
      v24 = [v7 objectForKeyedSubscript:v22];
      v25 = [v8 objectForKeyedSubscript:v22];
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
  v25 = [(CEKLightingControl *)self _itemViewsForType];
  v7 = [(CEKLightingControl *)self _itemShadowViewsForType];
  v8 = [(CEKLightingControl *)self _itemOutlineViewsForType];
  if ([(CEKLightingControl *)self _itemCount])
  {
    v9 = 0;
    v10 = *MEMORY[0x1E695EFF8];
    v11 = *(MEMORY[0x1E695EFF8] + 8);
    do
    {
      [(CEKLightingControl *)self _offsetXForItemAtIndex:v9];
      v13 = v4 + v12;
      v14 = [(CEKLightingControl *)self _effectTypes];
      v15 = [v14 objectAtIndexedSubscript:v9];

      v16 = [v25 objectForKeyedSubscript:v15];
      v17 = [v8 objectForKeyedSubscript:v15];
      v18 = [v7 objectForKeyedSubscript:v15];
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
  v7 = [(CEKLightingControl *)self collapsedControlLocation];
  if (v7)
  {
    if (v7 == 2)
    {
      [(CEKLightingControl *)self bounds];
      v10 = v9;
      [(CEKLightingControl *)self collapsedSelectionCenterPointEdgeInset];
      v4 = v10 - v11;
    }

    else if (v7 == 1)
    {
      [(CEKLightingControl *)self collapsedSelectionCenterPointEdgeInset];
      v4 = v8;
    }

    v12 = [(CEKLightingControl *)self _collapsedControlItemView];
    v13 = [(CEKLightingControl *)self _collapsedControlShadowView];
    v14 = [(CEKLightingControl *)self _collapsedControlSelectionOverlay];
    v15 = [(CEKLightingControl *)self _collapsedControlSelectionUnderlay];
    [v12 setCenter:{v4, v6}];
    [v13 setCenter:{v4, v6}];
    [v14 setCenter:{v4, v6}];
    [v15 setCenter:{v4, v6}];
    [v12 intrinsicContentSize];
    [v12 setBounds:CEKRectWithSize()];
    [v13 intrinsicContentSize];
    [v13 setBounds:CEKRectWithSize()];
    [v14 intrinsicContentSize];
    [v14 setBounds:CEKRectWithSize()];
    [v14 bounds];
    [v15 setBounds:?];
    memset(&v17, 0, sizeof(v17));
    CGAffineTransformMakeScale(&v17, 0.8, 0.8);
    v16 = v17;
    [v12 setTransform:&v16];
    v16 = v17;
    [v13 setTransform:&v16];
    v16 = v17;
    [v14 setTransform:&v16];
    v16 = v17;
    [v15 setTransform:&v16];
  }
}

- (void)_layoutBackgroundExpanded:(BOOL)a3
{
  v3 = a3;
  [(CEKLightingControl *)self bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v21 = [(CEKLightingControl *)self _backgroundView];
  [(CEKLightingControl *)self _dialRadius];
  [v21 setRadius:?];
  [(CEKLightingControl *)self _dialVisibleHeightExpanded:1];
  v14 = v13;
  v23.origin.x = v6;
  v23.origin.y = v8;
  v23.size.width = v10;
  v23.size.height = v12;
  Width = CGRectGetWidth(v23);
  [(CEKLightingControl *)self additionalBottomPadding];
  v17 = v14 + 3.0 + v16;
  [(CEKLightingControl *)self _dialVisibleHeightExpanded:v3];
  v19 = v18;
  v24.origin.x = v6;
  v24.origin.y = v8;
  v24.size.width = v10;
  v24.size.height = v12;
  [v21 setFrame:{0.0, CGRectGetMaxY(v24) - v19, Width, v17}];
  v20 = 1.0;
  if (!v3)
  {
    v20 = 0.0;
  }

  [v21 setAlpha:v20];
}

- (void)_layoutSelectionViewsExpanded:(BOOL)a3
{
  [(CEKLightingControl *)self _selectionPointForExpanded:a3];
  v5 = v4;
  v7 = v6;
  v8 = [(CEKLightingControl *)self _selectionOverlay];
  v9 = [(CEKLightingControl *)self _selectionUnderlay];
  [v8 setCenter:{v5, v7}];
  [v9 setCenter:{v5, v7}];
  v10 = *MEMORY[0x1E695F058];
  v11 = *(MEMORY[0x1E695F058] + 8);
  [v8 intrinsicContentSize];
  v13 = v12;
  v15 = v14;
  [v8 setBounds:{v10, v11, v12, v14}];
  [v9 setBounds:{v10, v11, v13, v15}];
  v16 = [(CEKLightingControl *)self isExpanded];
  v17 = 0.75;
  memset(&v19.c, 0, 32);
  if (v16)
  {
    v17 = 1.0;
  }

  *&v19.a = 0uLL;
  CGAffineTransformMakeScale(&v19, v17, v17);
  v18 = v19;
  [v8 setTransform:&v18];
  v18 = v19;
  [v9 setTransform:&v18];
}

- (void)_layoutNameBadgeExpanded:(BOOL)a3
{
  v3 = a3;
  v5 = [(CEKLightingControl *)self _nameBadge];
  [(CEKLightingControl *)self bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [v5 intrinsicContentSize];
  UIRectCenteredXInRectScale();
  v15 = v14;
  v26 = v16;
  v18 = v17;
  [(CEKLightingControl *)self _dialVisibleHeightExpanded:v3, 0];
  v20 = v19;
  [(CEKLightingControl *)self _dialBadgePaddingExpanded:v3];
  v22 = v21;
  v31.origin.x = v7;
  v31.origin.y = v9;
  v31.size.width = v11;
  v31.size.height = v13;
  [v5 setFrame:{v15, CGRectGetMaxY(v31) - v20 - v22 - v18, v26, v18}];
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
  v28 = v5;
  v25 = v5;
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
  v7 = [(CEKLightingControl *)self _itemContainer];
  [v7 setFrame:{0.0, 0.0, v4, v6}];
}

- (CGPoint)_selectionPointForExpanded:(BOOL)a3
{
  v3 = a3;
  [(CEKLightingControl *)self collapsedSelectionCenterPointBottomInset];
  if (v3)
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

- (double)_dialVisibleHeightExpanded:(BOOL)a3
{
  if (!a3)
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

- (double)_dialRadiusForWidth:(double)a3
{
  [(CEKLightingControl *)self _safeWidthForWidth:a3];
  [(CEKLightingControl *)self _dialCenterDistanceBelowBoundsForWidth:?];

  UIDistanceBetweenPoints();
  return result;
}

- (double)_dialBadgePaddingExpanded:(BOOL)a3
{
  result = -5.0;
  if (a3)
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

- (CGPoint)_dialCenterForWidth:(double)a3
{
  [(CEKLightingControl *)self bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [(CEKLightingControl *)self _dialCenterDistanceBelowBoundsForWidth:a3];
  v17.origin.x = v6;
  v17.origin.y = v8;
  v17.size.width = v10;
  v17.size.height = v12;
  CGRectGetMaxY(v17);
  UIRoundToViewScale();
  v14 = v13;
  v15 = a3 * 0.5;
  result.y = v14;
  result.x = v15;
  return result;
}

- (double)_dialCenterDistanceBelowBoundsForWidth:(double)a3
{
  v3 = a3 * 0.2909 + -29.09;
  v4 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v4 scale];
  v6 = -1.0 / v5 + 84.0;

  return fmin(v6, v3);
}

- (double)_angleFromCenterToPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(CEKLightingControl *)self _dialCenter];

  return atan2(v6 - y, v5 - x);
}

- (double)_offsetAngleForItemAtIndex:(unint64_t)a3 withSelectionOffset:(double)a4
{
  [(CEKLightingControl *)self _angularSpacingForRadialLayout];
  v8 = v7;
  [(CEKLightingControl *)self _compressedItemOffsetForFractionalItemOffset:a4 / v7 + (a3 - [(CEKLightingControl *)self _selectionIndex])];
  return v8 * v9;
}

- (double)_offsetXForItemAtIndex:(unint64_t)a3
{
  [(CEKLightingControl *)self _spacingForLinearLayout];
  v6 = v5;
  [(CEKLightingControl *)self _compressedItemOffsetForFractionalItemOffset:(a3 - [(CEKLightingControl *)self _selectionIndex])];
  return v6 * v7;
}

- (double)_compressedItemOffsetForFractionalItemOffset:(double)a3
{
  v3 = fabs(a3);
  if (a3 >= 0.0)
  {
    return v3 * (v3 * -0.039 + 1.024);
  }

  else
  {
    return -(v3 * (v3 * -0.039 + 1.024));
  }
}

- (double)_rotationForPanGesture:(id)a3
{
  v4 = a3;
  [v4 translationInView:self];
  v6 = v5;
  v8 = v7;
  [v4 locationInView:self];
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

- (BOOL)_isOverDialedWithSelectionAngularOffset:(double)a3 selectionIndex:(unint64_t)a4
{
  v6 = [(CEKLightingControl *)self _enabledItemCount]- 1;
  v7 = a3 > 0.0;
  if (a4)
  {
    v7 = 0;
  }

  v8 = v6 == a4 && a3 < 0.0;
  return v7 || v8;
}

- (double)_rubberBandOffsetAngleForOffsetAngle:(double)a3
{
  [(CEKLightingControl *)self _angularSpacingForRadialLayout];
  v6 = v5;
  v7 = fabs(a3) / v5;
  v8 = [(CEKLightingControl *)self _isOverDialedWithSelectionAngularOffset:[(CEKLightingControl *)self _selectionIndex] selectionIndex:a3];
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
  if (a3 >= 0.0)
  {
    return v11;
  }

  return result;
}

- (double)_offsetAngleForRubberBandOffsetAngle:(double)a3 selectionIndex:(unint64_t)a4
{
  [(CEKLightingControl *)self _angularSpacingForRadialLayout];
  v8 = v7;
  v9 = fabs(a3) / v7;
  if ([(CEKLightingControl *)self _isOverDialedWithSelectionAngularOffset:a4 selectionIndex:a3]&& v9 > 0.05433)
  {
    v10 = (4.0 / (1.986 - v9) + -1.0) / 0.55 + -1.546;
  }

  else
  {
    v10 = log((v9 + 0.0014) * 714.286) * 0.108574 / 0.99999999;
  }

  v11 = v8 * v10;
  result = -(v8 * v10);
  if (a3 >= 0.0)
  {
    return v11;
  }

  return result;
}

- (void)_handlePressGesture:(id)a3
{
  v4 = [a3 state];
  if (v4 <= 4 && ((1 << v4) & 0x1A) != 0)
  {

    [(CEKLightingControl *)self _setTracking:v4 == 1];
  }
}

- (void)_setTracking:(BOOL)a3
{
  if (self->_tracking != a3)
  {
    self->_tracking = a3;
    if (a3)
    {
      v4 = [MEMORY[0x1E695DF00] date];
      [(CEKLightingControl *)self _setTimeTrackingBegan:v4];

      [(CEKLightingControl *)self _setExpanded:1 animated:1 shouldNotify:1];
      [(CEKLightingControl *)self _cancelDelayedCollapse];

      [(CEKLightingControl *)self _prepareFeedback];
    }

    else
    {
      v5 = [(CEKLightingControl *)self _timeTrackingBegan];
      [v5 timeIntervalSinceNow];
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

- (void)_handlePanGesture:(id)a3
{
  v30 = a3;
  v4 = [v30 state];
  if (v4 == 3)
  {
    if (![(CEKLightingControl *)self isTracking])
    {
      goto LABEL_22;
    }

    v5 = self;
    v6 = 0;
    goto LABEL_13;
  }

  if (v4 == 2)
  {
    [(CEKLightingControl *)self _rotationForPanGesture:v30];
    v8 = v7;
    [(CEKLightingControl *)self _selectionAngularOffset];
    v10 = v8 + v9;
    [v30 setTranslation:self inView:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
    [(CEKLightingControl *)self _angularSpacingForRadialLayout];
    v12 = v11;
    v13 = v11 * 0.5;
    v14 = [(CEKLightingControl *)self _selectionIndex];
    v15 = [(CEKLightingControl *)self _isOverDialedWithSelectionAngularOffset:v14 selectionIndex:v10];
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
        v22 = v14 + 1;
      }

      else
      {
        v22 = v14 - 1;
      }

      v23 = v10 + v21;
      [(CEKLightingControl *)self _rubberBandOffsetAngleForOffsetAngle:v10];
      [(CEKLightingControl *)self _offsetAngleForRubberBandOffsetAngle:v22 selectionIndex:v21 + v24];
      v26 = v25;
      v27 = [(CEKLightingControl *)self _effectTypes];
      v28 = [v27 objectAtIndexedSubscript:v22];
      v29 = [v28 integerValue];

      [(CEKLightingControl *)self _setSelectedLightingType:v29 atIndex:v22 shouldNotify:1 shouldSuppressHaptic:0 animated:0];
      v18 = self;
      v17 = v26;
      v19 = v23;
      v20 = 1;
    }

    else
    {
      [(CEKLightingControl *)self _selectionAngularOffset];
      v18 = self;
      v19 = v10;
      v20 = 0;
    }

    [(CEKLightingControl *)v18 _snapFromSelectionOffsetAngle:v20 toAngle:v17 animated:v19];
    [(CEKLightingControl *)self setNeedsLayout];
    goto LABEL_22;
  }

  if (v4 == 1 && ![(CEKLightingControl *)self isTracking])
  {
    v5 = self;
    v6 = 1;
LABEL_13:
    [(CEKLightingControl *)v5 _setTracking:v6];
  }

LABEL_22:
}

- (void)_handleTapGesture:(id)a3
{
  v24 = a3;
  v4 = [(CEKLightingControl *)self _expandedAnimationCounter];
  v5 = v24;
  if (!v4)
  {
    [v24 locationInView:self];
    v6 = 0;
    if ([(CEKLightingControl *)self _enabledItemCount])
    {
      v7 = 0;
      v8 = 1.79769313e308;
      do
      {
        v9 = [(CEKLightingControl *)self _effectTypes];
        v10 = [v9 objectAtIndexedSubscript:v7];

        v11 = [(CEKLightingControl *)self _itemViewsForType];
        v12 = [v11 objectForKeyedSubscript:v10];

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

    v17 = [v6 integerValue];
    v18 = [(CEKLightingControl *)self _effectTypes];
    v19 = [v18 indexOfObject:v6];

    v20 = [(CEKLightingControl *)self _selectionIndex];
    if (!v16)
    {
      v21 = v20;
      if (v20 != v19)
      {
        [(CEKLightingControl *)self _selectionAngularOffset];
        v23 = v22;
        [(CEKLightingControl *)self _setSelectedLightingType:v17 atIndex:v19 shouldNotify:1 shouldSuppressHaptic:0 animated:0];
        [(CEKLightingControl *)self _rotateForTapFromSelectionIndex:v21 offset:v19 toSelectionIndex:v23];
      }
    }

    v5 = v24;
  }

  MEMORY[0x1EEE66BB8](v4, v5);
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CEKLightingControl *)self _panGesture];
  v9 = [(CEKLightingControl *)self _pressGesture];
  v10 = [(CEKLightingControl *)self _tapGesture];
  if (v9 == v6 || v9 == v7)
  {
    v13 = v10 == v6 || v10 == v7;
    v15 = v8 == v6 || v8 == v7;
    v11 = v15 ^ v13;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v36.receiver = self;
  v36.super_class = CEKLightingControl;
  v7 = [(CEKLightingControl *)&v36 hitTest:a4 withEvent:?];
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
      v20 = [(CEKLightingControl *)self collapsedControlLocation];
      if (v20 == 2)
      {
        [(CEKLightingControl *)self collapsedSelectionCenterPointEdgeInset];
        MidX = width - v22;
      }

      else if (v20 == 1)
      {
        [(CEKLightingControl *)self collapsedSelectionCenterPointEdgeInset];
      }

      else
      {
        MidX = 0.0;
        if (!v20)
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
      v23 = [(CEKLightingControl *)self _collapsedControlSelectionOverlay];

      if (!v23)
      {
        goto LABEL_17;
      }

      v24 = [(CEKLightingControl *)self _collapsedControlSelectionOverlay];
      v25 = [v24 superview];
      v26 = [(CEKLightingControl *)self _collapsedControlSelectionOverlay];
      [v26 frame];
      [v25 convertRect:self toView:?];
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

- (void)_setExpanded:(BOOL)a3 animated:(BOOL)a4 shouldNotify:(BOOL)a5
{
  if (self->_expanded != a3)
  {
    v5 = a5;
    v6 = a4;
    v7 = a3;
    if (a5 && self->_delegateFlags.respondsToWillChangeExpanded)
    {
      v9 = [(CEKLightingControl *)self delegate];
      [v9 lightingControl:self willChangeExpanded:v7];
    }

    v10 = [(CEKLightingControl *)self _animationGenerator];
    [v10 stopAllAnimations];
    if (v6)
    {
      [(CEKLightingControl *)self layoutIfNeeded];
    }

    self->_expanded = v7;
    [(CEKLightingControl *)self setNeedsLayout];
    [(CEKLightingControl *)self _selectionAngularOffset];
    v12 = v11;
    [(CEKLightingControl *)self _setSelectionAngularOffset:0.0];
    if (v6)
    {
      if (!v7)
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

    [(CEKLightingControl *)self _updateNameBadgeAnimated:v6];
    if (v5 && self->_delegateFlags.respondsToDidChangeExpanded)
    {
      v13 = [(CEKLightingControl *)self delegate];
      [v13 lightingControlDidChangeExpanded:self];
    }
  }
}

uint64_t __57__CEKLightingControl__setExpanded_animated_shouldNotify___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 _expandedAnimationCounter] - 1;

  return [v1 _setExpandedAnimationCounter:v2];
}

- (void)_collapseWithDelay:(double)a3
{
  v4 = [MEMORY[0x1E695DFF0] timerWithTimeInterval:self target:sel__handleCollapseTimer_ selector:0 userInfo:0 repeats:a3];
  [(CEKLightingControl *)self _setCollapseTimer:v4];

  v6 = [MEMORY[0x1E695DFD0] currentRunLoop];
  v5 = [(CEKLightingControl *)self _collapseTimer];
  [v6 addTimer:v5 forMode:*MEMORY[0x1E695DA28]];
}

- (void)_handleCollapseTimer:(id)a3
{
  [(CEKLightingControl *)self _setCollapseTimer:0];

  [(CEKLightingControl *)self _setExpanded:0 animated:1 shouldNotify:1];
}

- (void)_cancelDelayedCollapse
{
  v3 = [(CEKLightingControl *)self _collapseTimer];
  [v3 invalidate];

  [(CEKLightingControl *)self _setCollapseTimer:0];
}

- (void)setDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    p_delegateFlags = &self->_delegateFlags;
    p_delegateFlags->respondsToWillChangeExpanded = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToDidChangeExpanded = objc_opt_respondsToSelector() & 1;
  }
}

- (void)setLightingEffectSet:(int64_t)a3 animated:(BOOL)a4
{
  if (self->_lightingEffectSet != a3)
  {
    v4 = a4;
    if (a4)
    {
      [(CEKLightingControl *)self layoutIfNeeded];
    }

    self->_lightingEffectSet = a3;
    if (a3 > 3)
    {
      v7 = 0;
    }

    else
    {
      v7 = qword_1E7CC6F28[a3];
    }

    v8 = [MEMORY[0x1E695DFD8] setWithArray:v7];
    [(CEKLightingControl *)self set_enabledEffectTypes:v8];

    [(CEKLightingControl *)self setNeedsLayout];
    if (![(CEKLightingControl *)self _isLightingTypeEnabled:[(CEKLightingControl *)self selectedLightingType]])
    {
      [(CEKLightingControl *)self setSelectedLightingType:[(CEKLightingControl *)self defaultLightingType] animated:v4];
    }

    if (v4)
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

- (BOOL)_isLightingTypeEnabled:(int64_t)a3
{
  v4 = [(CEKLightingControl *)self _enabledEffectTypes];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v6 = [v4 containsObject:v5];

  return v6;
}

- (void)setSelectedLightingType:(int64_t)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7 = [(CEKLightingControl *)self _effectTypes];
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v9 = [v7 indexOfObject:v8];

  if (v9 != 0x7FFFFFFFFFFFFFFFLL)
  {

    [(CEKLightingControl *)self _setSelectedLightingType:a3 atIndex:v9 shouldNotify:0 shouldSuppressHaptic:1 animated:v4];
  }
}

- (void)ppt_selectLightingType:(int64_t)a3
{
  v5 = [(CEKLightingControl *)self _effectTypes];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v7 = [v5 indexOfObject:v6];

  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {

    [(CEKLightingControl *)self _setSelectedLightingType:a3 atIndex:v7 shouldNotify:1 shouldSuppressHaptic:1 animated:0];
  }
}

- (void)_setSelectedLightingType:(int64_t)a3 atIndex:(unint64_t)a4 shouldNotify:(BOOL)a5 shouldSuppressHaptic:(BOOL)a6 animated:(BOOL)a7
{
  if (self->_selectedLightingType != a3)
  {
    v7 = a7;
    v9 = a5;
    if (a7)
    {
      [(CEKLightingControl *)self layoutIfNeeded];
    }

    self->_selectedLightingType = a3;
    self->__selectionIndex = a4;
    [(CEKLightingControl *)self _updateNameBadgeAnimated:0];
    [(CEKLightingControl *)self _updateImagesForCollapedControlViews];
    if (v9)
    {
      v13 = [(CEKLightingControl *)self delegate];
      [v13 lightingControlDidChangeSelectedLightingType:self];
    }

    if (!a6)
    {
      [(CEKLightingControl *)self _performFeedback];
      [(CEKLightingControl *)self _prepareFeedback];
    }

    [(CEKLightingControl *)self setNeedsLayout];
    if (v7)
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

- (void)_snapFromSelectionOffsetAngle:(double)a3 toAngle:(double)a4 animated:(BOOL)a5
{
  if (a3 != a4)
  {
    v5 = a5;
    [(CEKLightingControl *)self _setSelectionAngularOffset:a4];
    if (v5)
    {
      objc_initWeak(&location, self);
      LODWORD(v8) = 1.0;
      v9 = [MEMORY[0x1E69793D0] functionWithControlPoints:0.0 :0.0 :0.0 :v8];
      v10 = [(CEKLightingControl *)self _animationGenerator];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __69__CEKLightingControl__snapFromSelectionOffsetAngle_toAngle_animated___block_invoke;
      v12[3] = &unk_1E7CC6EE8;
      objc_copyWeak(v14, &location);
      v14[1] = *&a3;
      v11 = v9;
      v13 = v11;
      [v10 startAnimationForIdentifier:@"rotation" duration:v12 updateHandler:0 completionHandler:0.2];

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

- (void)_handleSnapFromOffset:(double)a3 withProgress:(double)a4 timingCurve:(id)a5
{
  v8 = a5;
  [(CEKLightingControl *)self _selectionAngularOffset];
  [(CEKLightingControl *)self _rubberBandOffsetAngleForOffsetAngle:?];
  v10 = v9;
  [(CEKLightingControl *)self _rubberBandOffsetAngleForOffsetAngle:a3];
  v12 = v11;
  *&v11 = a4;
  [v8 _solveForInput:v11];
  LODWORD(a4) = v13;

  v14 = v12 + *&a4 * (v10 - v12);
  [(CEKLightingControl *)self _layoutItemViewsRadialWithSelectionOffsetAngle:v14];
  [(CEKLightingControl *)self _updateItemViewsWithSelectionOffsetAngle:v14];

  [(CEKLightingControl *)self _updateSelectionViewsWithSelectionOffsetAngle:v14];
}

- (void)_rotateForTapFromSelectionIndex:(unint64_t)a3 offset:(double)a4 toSelectionIndex:(unint64_t)a5
{
  [(CEKLightingControl *)self _angularSpacingForRadialLayout];
  v10 = v9;
  objc_initWeak(&location, self);
  LODWORD(v11) = 1.0;
  v12 = [MEMORY[0x1E69793D0] functionWithControlPoints:0.0 :0.0 :0.0 :v11];
  v13 = [(CEKLightingControl *)self _animationGenerator];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __78__CEKLightingControl__rotateForTapFromSelectionIndex_offset_toSelectionIndex___block_invoke;
  v15[3] = &unk_1E7CC6EE8;
  objc_copyWeak(v17, &location);
  *&v17[1] = v10 * (a5 - a3) + a4;
  v14 = v12;
  v16 = v14;
  [v13 startAnimationForIdentifier:@"rotation" duration:v15 updateHandler:0 completionHandler:0.35];

  objc_destroyWeak(v17);
  objc_destroyWeak(&location);
}

void __78__CEKLightingControl__rotateForTapFromSelectionIndex_offset_toSelectionIndex___block_invoke(uint64_t a1, double a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleTapRotationFromOffset:*(a1 + 32) withProgress:*(a1 + 48) timingCurve:a2];
}

- (void)_handleTapRotationFromOffset:(double)a3 withProgress:(double)a4 timingCurve:(id)a5
{
  v8 = a5;
  [(CEKLightingControl *)self _selectionAngularOffset];
  v10 = v9;
  *&v9 = a4;
  [v8 _solveForInput:v9];
  LODWORD(a4) = v11;

  v12 = a3 + *&a4 * (v10 - a3);
  [(CEKLightingControl *)self _layoutItemViewsRadialWithSelectionOffsetAngle:v12];
  [(CEKLightingControl *)self _updateItemViewsWithSelectionOffsetAngle:v12];

  [(CEKLightingControl *)self _updateSelectionViewsWithSelectionOffsetAngle:v12];
}

- (void)preloadEffectChangeAnimation
{
  v2 = [(CEKLightingControl *)self _frameCache];
  [v2 preloadForegroundFrames];
  [v2 preloadBackgroundFrames];
}

- (void)setHighlighted:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_highlighted != a3)
  {
    v5 = a4;
    v6 = a3;
    self->_highlighted = a3;
    v8 = [(CEKLightingControl *)self _nameBadge];
    [v8 setHighlighted:v6 animated:v5];

    [(CEKLightingControl *)self _updateSelectionOverlayColorAnimated:v5];
  }
}

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = CEKLightingControl;
  [(CEKLightingControl *)&v3 tintColorDidChange];
  [(CEKLightingControl *)self _updateSelectionOverlayColorAnimated:0];
}

- (void)_updateSelectionOverlayColorAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(CEKLightingControl *)self tintColor];
  v6 = [(CEKLightingControl *)self _nameBadge];
  [v6 setTintColor:v5];

  if ([(CEKLightingControl *)self isHighlighted])
  {
    [(CEKLightingControl *)self tintColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] labelColor];
  }
  v7 = ;
  v8 = [(CEKLightingControl *)self traitCollection];
  v9 = [v7 resolvedColorWithTraitCollection:v8];

  v10 = [(CEKLightingControl *)self _selectionOverlay];
  v11 = v10;
  if (v3)
  {
    v12 = MEMORY[0x1E69DD250];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __59__CEKLightingControl__updateSelectionOverlayColorAnimated___block_invoke;
    v14[3] = &unk_1E7CC6AE8;
    v15 = v10;
    v16 = v9;
    v17 = self;
    [v12 animateWithDuration:v14 animations:0.25];
  }

  else
  {
    [v10 setContentsMultiplyColor:v9];
    v13 = [(CEKLightingControl *)self _collapsedControlSelectionOverlay];
    [v13 setContentsMultiplyColor:v9];
  }
}

void __59__CEKLightingControl__updateSelectionOverlayColorAnimated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setContentsMultiplyColor:*(a1 + 40)];
  v2 = *(a1 + 40);
  v3 = [*(a1 + 48) _collapsedControlSelectionOverlay];
  [v3 setContentsMultiplyColor:v2];
}

- (void)_updateSelectionViewsWithSelectionOffsetAngle:(double)a3
{
  v5 = [(CEKLightingControl *)self _selectionIndex];
  v6 = [(CEKLightingControl *)self _isOverDialedWithSelectionAngularOffset:v5 selectionIndex:a3];
  [(CEKLightingControl *)self _angularSpacingForRadialLayout];
  v8 = -a3 / v7;
  if (fabs(v8) >= 0.5)
  {
    v9 = v8 + v5;
    v5 = fmax(fmin(([(CEKLightingControl *)self _enabledItemCount]- 1), round(v9)), 0.0);
    v8 = v9 - v5;
  }

  v10 = fmax(fmin(v8 * 0.15, 0.1889), -0.1889);
  if (v6)
  {
    v8 = v10;
  }

  v11 = -round(v8 * 90.0);
  v21 = [(CEKLightingControl *)self _frameCache];
  v12 = [(CEKLightingControl *)self _effectTypes];
  v13 = [v12 objectAtIndexedSubscript:v5];
  v14 = [v13 integerValue];

  v15 = [v21 foregroundFrameForAngle:v11];
  v16 = [v21 backgroundFrameForAngle:v11 lightingType:v14];
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
    v19 = [(CEKLightingControl *)self _selectionOverlay];
    [v19 setImage:v15];

    v20 = [(CEKLightingControl *)self _selectionUnderlay];
    [v20 setImage:v17];

    [(CEKLightingControl *)self _updateSelectionOverlayColorAnimated:0];
  }
}

- (void)_updateImagesForCollapedControlViews
{
  v3 = [(CEKLightingControl *)self _collapsedControlItemView];

  if (v3)
  {
    v4 = [(CEKLightingControl *)self _effectItemsForType];
    v5 = [MEMORY[0x1E696AD98] numberWithInteger:{-[CEKLightingControl selectedLightingType](self, "selectedLightingType")}];
    v15 = [v4 objectForKeyedSubscript:v5];

    v6 = [(CEKLightingControl *)self _frameCache];
    v7 = [v15 displayImage];
    v8 = [(CEKLightingControl *)self _collapsedControlItemView];
    [v8 setImage:v7];

    v9 = [v15 displayShadowImage];
    v10 = [(CEKLightingControl *)self _collapsedControlShadowView];
    [v10 setImage:v9];

    v11 = [v6 foregroundFrameForAngle:0];
    v12 = [(CEKLightingControl *)self _collapsedControlSelectionOverlay];
    [v12 setImage:v11];

    v13 = [v6 backgroundFrameForAngle:0 lightingType:{-[CEKLightingControl selectedLightingType](self, "selectedLightingType")}];
    v14 = [(CEKLightingControl *)self _collapsedControlSelectionUnderlay];
    [v14 setImage:v13];
  }
}

- (void)_settleSelectionViewsFromSelectionOffsetAngle:(double)a3
{
  objc_initWeak(&location, self);
  LODWORD(v5) = 1.0;
  v6 = [MEMORY[0x1E69793D0] functionWithControlPoints:0.0 :0.0 :0.0 :v5];
  v7 = [(CEKLightingControl *)self _animationGenerator];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __68__CEKLightingControl__settleSelectionViewsFromSelectionOffsetAngle___block_invoke;
  v9[3] = &unk_1E7CC6EE8;
  objc_copyWeak(v11, &location);
  v11[1] = *&a3;
  v8 = v6;
  v10 = v8;
  [v7 startAnimationForIdentifier:@"cubeSettling" duration:v9 updateHandler:0 completionHandler:0.25];

  objc_destroyWeak(v11);
  objc_destroyWeak(&location);
}

void __68__CEKLightingControl__settleSelectionViewsFromSelectionOffsetAngle___block_invoke(uint64_t a1, double a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleSettlingSelectionViewsFromOffset:*(a1 + 32) withProgress:*(a1 + 48) timingCurve:a2];
}

- (void)_handleSettlingSelectionViewsFromOffset:(double)a3 withProgress:(double)a4 timingCurve:(id)a5
{
  v5 = a3;
  *&a3 = a4;
  [a5 _solveForInput:a3];
  v8 = (1.0 - v7) * v5;

  [(CEKLightingControl *)self _updateSelectionViewsWithSelectionOffsetAngle:v8];
}

- (void)setCollapsedItemFading:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  if (a3.var0 != self->_collapsedItemFading.leftRate || a3.var1 != self->_collapsedItemFading.rightRate)
  {
    self->_collapsedItemFading = a3;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __54__CEKLightingControl_setCollapsedItemFading_animated___block_invoke;
    aBlock[3] = &unk_1E7CC6358;
    aBlock[4] = self;
    v5 = _Block_copy(aBlock);
    v6 = v5;
    if (v4)
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

- (void)_updateItemViewsWithSelectionOffsetAngle:(double)a3
{
  v4 = self;
  v58 = [(CEKLightingControl *)self selectedLightingType];
  v5 = [(CEKLightingControl *)v4 _effectItemsForType];
  v6 = [(CEKLightingControl *)v4 _itemViewsForType];
  v7 = [(CEKLightingControl *)v4 _itemShadowViewsForType];
  v8 = [(CEKLightingControl *)v4 _itemOutlineViewsForType];
  v60 = [(CEKLightingControl *)v4 _effectTypes];
  v9 = [(CEKLightingControl *)v4 isExpanded];
  v10 = [(CEKLightingControl *)v4 collapsedControlLocation];
  v11 = 1.0;
  v12 = v10 - 1;
  v57 = v9;
  if (v9)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = 1.0;
  }

  if (!v10)
  {
    v11 = 0.0;
  }

  if (v12 >= 2)
  {
    v13 = v11;
  }

  v52 = v13;
  v14 = v12 < 2 && !v9;
  v59 = v14;
  [(CEKLightingControl *)v4 _angularSpacingForRadialLayout];
  v16 = v15;
  v17 = [(CEKLightingControl *)v4 _itemCount];
  if ([(CEKLightingControl *)v4 _itemCount])
  {
    v18 = 0;
    v19 = v16 * (v17 - 1);
    v53 = fabs(a3);
    v55 = v6;
    v56 = v7;
    v54 = v8;
    do
    {
      v20 = [v60 objectAtIndexedSubscript:v18];
      v63 = [v6 objectForKeyedSubscript:v20];
      v62 = [v7 objectForKeyedSubscript:v20];
      v21 = [v8 objectForKeyedSubscript:v20];
      v61 = [v5 objectForKeyedSubscript:v20];
      v22 = [v61 lightingType];
      [(CEKLightingControl *)v4 _offsetAngleForItemAtIndex:v18 withSelectionOffset:a3];
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
        v37 = [(CEKLightingControl *)v4 collapsedItemFading];
        v38 = v4;
        v40 = v39;
        v41 = v38;
        v42 = [(CEKLightingControl *)v38 _selectionIndex];
        v43 = v18 - v42;
        if ((v18 - v42) >= 0)
        {
          v44 = v40;
        }

        else
        {
          v44 = v37;
        }

        if (v44 != 2)
        {
          v27 = v62;
          if (v44 == 1)
          {
            if (v43 < 0)
            {
              v43 = v42 - v18;
            }

            v24 = fmax(v43 * -0.375 + 1.0, 0.0);
            v4 = v41;
            v8 = v54;
            v6 = v55;
          }

          else
          {
            v4 = v41;
            v8 = v54;
            v6 = v55;
            if (!v44)
            {
              v24 = v25 * -0.7 + 1.0;
            }
          }

          goto LABEL_17;
        }

        if (v43 < 0)
        {
          v43 = v42 - v18;
        }

        v24 = fmax(1.0 - v43, 0.0);
        v4 = v41;
        v8 = v54;
        v6 = v55;
      }

      v27 = v62;
LABEL_17:
      v28 = 0.0;
      v29 = v24;
      if (v22 == v58 && v27 | v21)
      {
        [(CEKLightingControl *)v4 _angularSpacingForRadialLayout];
        v29 = v24 * (1.0 - (v30 * 0.5 - v53) / (v30 * 0.5 - v30 * 0.5 * 0.5));
        v28 = 1.0 - v29;
      }

      v31 = [(CEKLightingControl *)v4 _isLightingTypeEnabled:v22];
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
      v7 = v56;
    }

    while (v18 < [(CEKLightingControl *)v4 _itemCount]);
  }

  if (v59)
  {
    v45 = 0.0;
  }

  else
  {
    v45 = 1.0;
  }

  v46 = [(CEKLightingControl *)v4 _selectionUnderlay];
  [v46 setAlpha:v45];

  v47 = [(CEKLightingControl *)v4 _selectionOverlay];
  [v47 setAlpha:v45];

  v48 = [(CEKLightingControl *)v4 _collapsedControlItemView];
  [v48 setAlpha:v52];

  v49 = [(CEKLightingControl *)v4 _collapsedControlShadowView];
  [v49 setAlpha:v52];

  v50 = [(CEKLightingControl *)v4 _collapsedControlSelectionUnderlay];
  [v50 setAlpha:v52];

  v51 = [(CEKLightingControl *)v4 _collapsedControlSelectionOverlay];
  [v51 setAlpha:v52];
}

- (void)setNameBadgeHidden:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_nameBadgeHidden != a3)
  {
    self->_nameBadgeHidden = a3;
    [(CEKLightingControl *)self _updateNameBadgeAnimated:a4];
  }
}

- (void)_updateNameBadgeAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = ([(CEKLightingControl *)self isNameBadgeHidden]^ 1);
  v6 = [(CEKLightingControl *)self _nameBadge];
  v7 = v6;
  if (v3)
  {
    v8 = MEMORY[0x1E69DD250];
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __47__CEKLightingControl__updateNameBadgeAnimated___block_invoke;
    v12 = &unk_1E7CC6660;
    v13 = v6;
    v14 = v5;
    [v8 animateWithDuration:&v9 animations:0.25];
  }

  else
  {
    [v6 setAlpha:v5];
  }

  [v7 setLightingType:{-[CEKLightingControl selectedLightingType](self, "selectedLightingType", v9, v10, v11, v12)}];
}

- (void)setOrientation:(int64_t)a3
{
  orientation = self->_orientation;
  if (orientation != a3)
  {
    self->_orientation = a3;
    if (a3 == 2 || orientation == 2)
    {
      [(CEKLightingControl *)self setNeedsLayout];
    }
  }
}

- (void)setNameBadgeFontStyle:(unint64_t)a3
{
  v4 = [(CEKLightingControl *)self _nameBadge];
  [v4 setFontStyle:a3];
}

- (unint64_t)nameBadgeFontStyle
{
  v2 = [(CEKLightingControl *)self _nameBadge];
  v3 = [v2 fontStyle];

  return v3;
}

- (void)_loadItemsIfNeeded
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [(CEKLightingControl *)self _effectItemsForType];

  if (!v3)
  {
    v4 = [(CEKLightingControl *)self _effectTypes];
    v5 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v4, "count")}];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = v4;
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
  v2 = [(CEKLightingControl *)self _effectTypes];
  v3 = [v2 count];

  return v3;
}

- (unint64_t)_enabledItemCount
{
  v2 = [(CEKLightingControl *)self _enabledEffectTypes];
  v3 = [v2 count];

  return v3;
}

- (void)_createItemViewsIfNeeded
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = [(CEKLightingControl *)self _itemViewsForType];

  if (!v3)
  {
    [(CEKLightingControl *)self _loadItemsIfNeeded];
    v4 = [(CEKLightingControl *)self _effectItemsForType];
    v5 = [v4 allValues];

    v29 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v5, "count")}];
    v27 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v5, "count")}];
    v26 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v5, "count")}];
    v25 = [MEMORY[0x1E69DC888] colorWithDynamicProvider:&__block_literal_global_7];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    obj = v5;
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
          v10 = [v9 lightingType];
          v11 = [v9 displayImage];
          v12 = [v9 displayShadowImage];
          v13 = [v9 displayOutlineImage];
          if (v12)
          {
            v14 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v12];
            v15 = [MEMORY[0x1E696AD98] numberWithInteger:v10];
            [v27 setObject:v14 forKeyedSubscript:v15];

            v16 = [(CEKLightingControl *)self _itemContainer];
            [v16 addSubview:v14];
          }

          if (v13)
          {
            v17 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v13];
            [v17 setTintColor:v25];
            v18 = [MEMORY[0x1E696AD98] numberWithInteger:v10];
            [v26 setObject:v17 forKeyedSubscript:v18];

            v19 = [(CEKLightingControl *)self _itemContainer];
            [v19 addSubview:v17];
          }

          v20 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v11];
          v21 = [MEMORY[0x1E696AD98] numberWithInteger:v10];
          [v29 setObject:v20 forKeyedSubscript:v21];

          v22 = [(CEKLightingControl *)self _itemContainer];
          [v22 addSubview:v20];
        }

        v7 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v7);
    }

    v23 = [(CEKLightingControl *)self _selectionOverlay];
    [(CEKLightingControl *)self bringSubviewToFront:v23];

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
    v3 = [(CEKLightingControl *)self _collapsedControlItemView];

    if (!v3)
    {
      v4 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:0];
      [(CEKLightingControl *)self set_collapsedControlItemView:v4];

      v5 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:0];
      [(CEKLightingControl *)self set_collapsedControlShadowView:v5];

      v6 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
      [(CEKLightingControl *)self set_collapsedControlSelectionUnderlay:v6];

      v7 = objc_alloc_init(CEKMultiplyImageView);
      [(CEKLightingControl *)self set_collapsedControlSelectionOverlay:v7];

      v8 = [(CEKLightingControl *)self _itemContainer];
      v9 = [(CEKLightingControl *)self _collapsedControlSelectionUnderlay];
      [v8 addSubview:v9];

      v10 = [(CEKLightingControl *)self _itemContainer];
      v11 = [(CEKLightingControl *)self _collapsedControlShadowView];
      [v10 addSubview:v11];

      v12 = [(CEKLightingControl *)self _itemContainer];
      v13 = [(CEKLightingControl *)self _collapsedControlItemView];
      [v12 addSubview:v13];

      v14 = [(CEKLightingControl *)self _itemContainer];
      v15 = [(CEKLightingControl *)self _collapsedControlSelectionOverlay];
      [v14 addSubview:v15];

      [(CEKLightingControl *)self _updateImagesForCollapedControlViews];
    }
  }
}

- (void)_createBackgroundViewIfNeeded
{
  v3 = [(CEKLightingControl *)self _backgroundView];

  if (!v3)
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
  v3 = [(CEKLightingControl *)self _selectionOverlay];

  if (!v3)
  {
    v4 = objc_alloc_init(CEKMultiplyImageView);
    [(CEKLightingControl *)self addSubview:v4];
    [(CEKLightingControl *)self setNeedsLayout];
    [(CEKLightingControl *)self _setSelectionOverlay:v4];
    [(CEKLightingControl *)self _updateSelectionOverlayColorAnimated:0];
  }

  v5 = [(CEKLightingControl *)self _selectionUnderlay];

  if (!v5)
  {
    v7 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    [(CEKLightingControl *)self insertSubview:v7 atIndex:0];
    v6 = [(CEKLightingControl *)self _backgroundView];
    [(CEKLightingControl *)self sendSubviewToBack:v6];

    [(CEKLightingControl *)self _setSelectionUnderlay:v7];
  }
}

- (void)_createNameBadgeIfNeeded
{
  v3 = [(CEKLightingControl *)self _nameBadge];

  if (!v3)
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
  v3 = [(CEKLightingControl *)self _itemContainer];

  if (!v3)
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
  v2 = [(CEKLightingControl *)self _selectionFeedbackGenerator];
  [v2 prepareFeedback];
}

- (void)_performFeedback
{
  v2 = [(CEKLightingControl *)self _selectionFeedbackGenerator];
  [v2 performFeedback];
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