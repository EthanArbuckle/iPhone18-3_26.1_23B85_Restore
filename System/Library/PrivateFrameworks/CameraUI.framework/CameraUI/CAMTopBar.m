@interface CAMTopBar
- (BOOL)_shouldHideSubview:(id)a3;
- (BOOL)isFloating;
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (BOOL)shouldHideApertureButtonForGraphConfiguration:(id)a3;
- (BOOL)shouldHideDoneButtonForGraphConfiguration:(id)a3;
- (BOOL)shouldHideElapsedTimeViewForGraphConfiguration:(id)a3;
- (BOOL)shouldHideFlashButtonForGraphConfiguration:(id)a3;
- (BOOL)shouldHideFlipButtonForGraphConfiguration:(id)a3;
- (BOOL)shouldHideHDRButtonForGraphConfiguration:(id)a3;
- (BOOL)shouldHideIntensityButtonForGraphConfiguration:(id)a3;
- (BOOL)shouldHideLivePhotoButtonForGraphConfiguration:(id)a3;
- (BOOL)shouldHideSharedLibraryButtonForGraphConfiguration:(id)a3;
- (BOOL)shouldHideTimerButtonForGraphConfiguration:(id)a3;
- (BOOL)shouldHideVideoConfigurationStatusIndicatorForGraphConfiguration:(id)a3;
- (CAMControlVisibilityUpdateDelegate)visibilityUpdateDelegate;
- (CAMTopBar)initWithCoder:(id)a3;
- (CAMTopBar)initWithFrame:(CGRect)a3;
- (CGRect)collapsedFrameForMenuButton:(id)a3;
- (CGRect)expandedFrameForMenuButton:(id)a3;
- (UIEdgeInsets)_expandedMenuButtonTappableInsets;
- (double)_backgroundCornerRadiusForStyle:(int64_t)a3;
- (double)_interpolatedFloatingBarHeight;
- (double)_opacityForBackgroundStyle:(int64_t)a3;
- (id)_allowedControlsForMode:(int64_t)a3 style:(int64_t)a4;
- (id)_allowedControlsForPortraitMode;
- (id)_allowedControlsForSquareMode;
- (id)_allowedControlsForStillImageMode;
- (id)_allowedControlsForTimelapseMode;
- (id)_allowedControlsForVideoMode;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)hudItemForAccessibilityHUDManager:(id)a3;
- (id)touchingRecognizersToCancel;
- (void)_commonCAMTopBarInitialization;
- (void)_computeHorizontalLayoutForViewsBetweenLeftView:(id)a3 rightView:(id)a4 views:(id)a5 alignmentRects:(id)a6;
- (void)_iterateViewsInHUDManager:(id)a3 forHUDItem:(id)a4;
- (void)_layoutControls:(id)a3 apply:(BOOL)a4 withExpandedMenuButton:(id)a5 collapsingMenuButton:(id)a6 collapsingFrame:(CGRect *)a7;
- (void)_layoutDefaultStyle;
- (void)_layoutFloatingStyle;
- (void)_setMode:(int64_t)a3 style:(int64_t)a4 animationDuration:(double)a5 animationOptions:(unint64_t)a6;
- (void)_updateControlVisibilityAnimated:(BOOL)a3;
- (void)collapseMenuButton:(id)a3 animated:(BOOL)a4;
- (void)configureForMode:(int64_t)a3 animated:(BOOL)a4;
- (void)expandMenuButton:(id)a3 animated:(BOOL)a4;
- (void)layoutSubviews;
- (void)selectedByAccessibilityHUDManager:(id)a3;
- (void)setApertureButton:(id)a3;
- (void)setBackgroundStyle:(int64_t)a3 animated:(BOOL)a4;
- (void)setDoneButton:(id)a3;
- (void)setElapsedTimeView:(id)a3;
- (void)setFlashButton:(id)a3;
- (void)setFlipButton:(id)a3;
- (void)setHDRButton:(id)a3;
- (void)setIntensityButton:(id)a3;
- (void)setLivePhotoButton:(id)a3;
- (void)setOrientation:(int64_t)a3;
- (void)setSharedLibraryButton:(id)a3;
- (void)setStyle:(int64_t)a3 animated:(BOOL)a4;
- (void)setTimerButton:(id)a3;
- (void)setVideoConfigurationStatusIndicator:(id)a3;
@end

@implementation CAMTopBar

- (void)_commonCAMTopBarInitialization
{
  v3 = objc_alloc(MEMORY[0x1E69DD250]);
  v4 = [v3 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  backgroundView = self->__backgroundView;
  self->__backgroundView = v4;

  [(UIView *)self->__backgroundView setAutoresizingMask:18];
  [(UIView *)self->__backgroundView setUserInteractionEnabled:0];
  v6 = self->__backgroundView;

  [(CAMTopBar *)self addSubview:v6];
}

- (BOOL)isFloating
{
  v2 = [(CAMTopBar *)self style];

  return [CAMTopBar isFloatingStyle:v2];
}

- (id)_allowedControlsForStillImageMode
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = v3;
  if (self->_flashButton)
  {
    [v3 addObject:?];
  }

  if (self->_HDRButton)
  {
    [v4 addObject:?];
  }

  if (self->_livePhotoButton)
  {
    [v4 addObject:?];
  }

  if (self->_timerButton)
  {
    [v4 addObject:?];
  }

  if (self->_flipButton)
  {
    [v4 addObject:?];
  }

  return v4;
}

- (CAMControlVisibilityUpdateDelegate)visibilityUpdateDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_visibilityUpdateDelegate);

  return WeakRetained;
}

- (void)layoutSubviews
{
  v16.receiver = self;
  v16.super_class = CAMTopBar;
  [(CAMTopBar *)&v16 layoutSubviews];
  v3 = [(CAMTopBar *)self _allowedControls];
  v4 = [(CAMTopBar *)self apertureButton];
  if (v4 && [v3 containsObject:v4])
  {
    v5 = [v3 lastObject];
    v6 = v4 != v5;

    [v4 setExpansionDirection:2 * v6];
  }

  v7 = [(CAMTopBar *)self style];
  v8 = v7;
  if (v7 == 1)
  {
    [(CAMTopBar *)self _layoutFloatingStyle];
  }

  else if (!v7)
  {
    [(CAMTopBar *)self _layoutDefaultStyle];
  }

  v9 = [(CAMTopBar *)self _backgroundView];
  [(CAMTopBar *)self _opacityForBackgroundStyle:[(CAMTopBar *)self backgroundStyle]];
  v11 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:v10];
  [v9 setBackgroundColor:v11];

  v12 = [v9 layer];
  [(CAMTopBar *)self _backgroundCornerRadiusForStyle:v8];
  v14 = v13;
  v15 = [(CAMTopBar *)self _backgroundMasksToBoundsForStyle:v8];
  [v12 setCornerRadius:v14];
  [v12 setMasksToBounds:v15];
}

- (void)_layoutDefaultStyle
{
  [(CAMTopBar *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v13 = [(CAMTopBar *)self _backgroundView];
  [v13 setFrame:{v4, v6, v8, v10}];
  v11 = [(CAMTopBar *)self _allowedControls];
  v12 = [(CAMTopBar *)self _expandedMenuButton];
  [(CAMTopBar *)self _layoutControls:v11 apply:1 withExpandedMenuButton:v12 collapsingMenuButton:0 collapsingFrame:0];
}

- (CAMTopBar)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = CAMTopBar;
  v3 = [(CAMTopBar *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(CAMTopBar *)v3 _commonCAMTopBarInitialization];
    v5 = v4;
  }

  return v4;
}

- (CAMTopBar)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = CAMTopBar;
  v3 = [(CAMTopBar *)&v7 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(CAMTopBar *)v3 _commonCAMTopBarInitialization];
    v5 = v4;
  }

  return v4;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  [(CAMTopBar *)self bounds];
  v8 = fmax(y, CGRectGetMidY(v16));
  v9 = [(CAMTopBar *)self _expandedMenuButton];
  [v9 frame];
  v15.x = x;
  v15.y = v8;
  if (CGRectContainsPoint(v17, v15))
  {
    v10 = v9;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = CAMTopBar;
    v10 = [(CAMTopBar *)&v13 hitTest:v7 withEvent:x, v8];
  }

  v11 = v10;

  return v11;
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v11.receiver = self;
  v11.super_class = CAMTopBar;
  v7 = [(CAMTopBar *)&v11 pointInside:a4 withEvent:?];
  v8 = [(CAMTopBar *)self _expandedMenuButton];
  [v8 frame];
  v12.x = x;
  v12.y = y;
  v9 = v7 | CGRectContainsPoint(v13, v12);

  return v9 & 1;
}

- (double)_backgroundCornerRadiusForStyle:(int64_t)a3
{
  result = 0.0;
  if (a3 == 1)
  {
    return 4.0;
  }

  return result;
}

- (double)_interpolatedFloatingBarHeight
{
  v2 = [(CAMTopBar *)self window];
  v3 = [v2 screen];
  [v3 _referenceBounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v13.origin.x = v5;
  v13.origin.y = v7;
  v13.size.width = v9;
  v13.size.height = v11;
  return fmin(fmax(CGRectGetWidth(v13) * 0.0545455 + 17.5455, 35.0), 38.0);
}

- (void)_layoutFloatingStyle
{
  [(CAMTopBar *)self bounds];
  [(CAMTopBar *)self alignmentRectForFrame:?];
  v12 = [(CAMTopBar *)self _backgroundView];
  [(CAMTopBar *)self _interpolatedFloatingBarHeight];
  v4 = v3;
  UIRectCenteredIntegralRectScale();
  [v12 frameForAlignmentRect:0];
  x = v14.origin.x;
  y = v14.origin.y;
  width = v14.size.width;
  height = v14.size.height;
  MidX = CGRectGetMidX(v14);
  v15.origin.x = x;
  v15.origin.y = y;
  v15.size.width = width;
  v15.size.height = height;
  [v12 setCenter:{MidX, CGRectGetMidY(v15)}];
  [v12 setBounds:{0.0, 0.0, 274.0, v4}];
  v10 = [(CAMTopBar *)self _allowedControls];
  v11 = [(CAMTopBar *)self _expandedMenuButton];
  [(CAMTopBar *)self _layoutControls:v10 apply:1 withExpandedMenuButton:v11 collapsingMenuButton:0 collapsingFrame:0];
}

- (void)_layoutControls:(id)a3 apply:(BOOL)a4 withExpandedMenuButton:(id)a5 collapsingMenuButton:(id)a6 collapsingFrame:(CGRect *)a7
{
  v56 = a4;
  v10 = a3;
  v58 = a5;
  v57 = a6;
  v11 = [(CAMTopBar *)self _backgroundView];
  [v11 frame];
  [(CAMTopBar *)self alignmentRectForFrame:?];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = 440;
  v21 = [v10 containsObject:self->_elapsedTimeView];
  v22 = v21;
  if (v21 || [v10 count] == 1 && (v20 = 480, objc_msgSend(v10, "containsObject:", self->_timerButton)))
  {
    v23 = *(&self->super.super.super.isa + v20);
LABEL_3:
    v24 = v23;
    goto LABEL_9;
  }

  if ([v10 count] >= 2)
  {
    v25 = [v10 count];
    if (v25)
    {
      v23 = [v10 objectAtIndexedSubscript:v25 >> 1];
      goto LABEL_3;
    }
  }

  v24 = 0;
LABEL_9:
  v26 = [v10 firstObject];
  v27 = v26;
  if (v26 == v24)
  {
    v28 = 0;
  }

  else if (v26 == self->_doneButton)
  {
    v28 = 0;
  }

  else
  {
    v28 = v26;
  }

  v29 = v13 + 11.0;
  v30 = v15 + 0.0;
  v31 = v17 + -22.0;
  v32 = v28;
  v33 = [v10 lastObject];
  v34 = self->_doneButton;
  if (!v34)
  {
    if (v33 == v27 || v33 == v24)
    {
      v36 = 0;
    }

    else
    {
      v36 = v33;
    }

    v34 = v36;
  }

  v55 = v33;
  v37 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v72[0] = MEMORY[0x1E69E9820];
  v72[1] = 3221225472;
  v72[2] = __95__CAMTopBar__layoutControls_apply_withExpandedMenuButton_collapsingMenuButton_collapsingFrame___block_invoke;
  v72[3] = &unk_1E76FCDD8;
  v83 = v22 ^ 1;
  v79 = v29;
  v80 = v30;
  v81 = v31;
  v82 = v19;
  v78 = 0x4036000000000000;
  v72[4] = self;
  v38 = v32;
  v73 = v38;
  v39 = v34;
  v74 = v39;
  v40 = v24;
  v75 = v40;
  v41 = v11;
  v76 = v41;
  v42 = v37;
  v77 = v42;
  [v10 enumerateObjectsUsingBlock:v72];
  if (!v40)
  {
    v43 = v58;
    if (!v38)
    {
      goto LABEL_30;
    }

    v44 = v38;
    if (!v39)
    {
      goto LABEL_30;
    }

LABEL_29:
    [(CAMTopBar *)self _computeHorizontalLayoutForViewsBetweenLeftView:v44 rightView:v39 views:v10 alignmentRects:v42, v55];
    goto LABEL_30;
  }

  v43 = v58;
  if (v38)
  {
    [(CAMTopBar *)self _computeHorizontalLayoutForViewsBetweenLeftView:v38 rightView:v40 views:v10 alignmentRects:v42, v55];
  }

  v44 = v40;
  if (v39)
  {
    goto LABEL_29;
  }

LABEL_30:
  if ((v22 & 1) == 0)
  {
    v64[0] = MEMORY[0x1E69E9820];
    v64[1] = 3221225472;
    v64[2] = __95__CAMTopBar__layoutControls_apply_withExpandedMenuButton_collapsingMenuButton_collapsingFrame___block_invoke_2;
    v64[3] = &unk_1E76FCE00;
    v65 = v42;
    v66 = v38;
    v68 = v29;
    v69 = v30;
    v70 = v31;
    v71 = v19;
    v67 = v39;
    [v10 enumerateObjectsUsingBlock:v64];
  }

  if (v56)
  {
    v60[0] = MEMORY[0x1E69E9820];
    v60[1] = 3221225472;
    v60[2] = __95__CAMTopBar__layoutControls_apply_withExpandedMenuButton_collapsingMenuButton_collapsingFrame___block_invoke_3;
    v60[3] = &unk_1E76FCE28;
    v61 = v43;
    v62 = self;
    v63 = v42;
    [v10 enumerateObjectsUsingBlock:v60];
  }

  if (a7)
  {
    v45 = [v10 indexOfObjectIdenticalTo:v57];
    if (v45 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v46 = *MEMORY[0x1E695F058];
      v47 = *(MEMORY[0x1E695F058] + 8);
      v48 = *(MEMORY[0x1E695F058] + 16);
      v49 = *(MEMORY[0x1E695F058] + 24);
    }

    else
    {
      v50 = [v42 objectAtIndexedSubscript:v45];
      [v50 CGRectValue];
      [v57 frameForAlignmentRect:0 expanded:?];
      v46 = v51;
      v47 = v52;
      v48 = v53;
      v49 = v54;
    }

    a7->origin.x = v46;
    a7->origin.y = v47;
    a7->size.width = v48;
    a7->size.height = v49;
  }
}

void __95__CAMTopBar__layoutControls_apply_withExpandedMenuButton_collapsingMenuButton_collapsingFrame___block_invoke(uint64_t a1, void *a2)
{
  v13 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v13;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  if (v4)
  {
    [v4 intrinsicContentSizeForExpansion:0];
  }

  else
  {
    [v13 intrinsicContentSize];
  }

  v7 = v5;
  v8 = v6;
  if (*(a1 + 120) == 1)
  {
    v7 = *(a1 + 80);
  }

  UIRoundToViewScale();
  v10 = v9;
  if (*(a1 + 40) == v13)
  {
    MinX = CGRectGetMinX(*(a1 + 88));
  }

  else if (*(a1 + 48) == v13)
  {
    MinX = CGRectGetMaxX(*(a1 + 88)) - v7;
  }

  else if (*(a1 + 56) == v13)
  {
    [*(a1 + 64) frame];
    CGRectGetMidX(v15);
    UIRoundToViewScale();
  }

  else
  {
    MinX = *MEMORY[0x1E695F058];
  }

  v12 = [MEMORY[0x1E696B098] valueWithCGRect:{MinX, v10, v7, v8}];
  [*(a1 + 72) addObject:v12];
}

void __95__CAMTopBar__layoutControls_apply_withExpandedMenuButton_collapsingMenuButton_collapsingFrame___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v20 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v20;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = v6;
  if (v6)
  {
    [v6 intrinsicContentSizeForExpansion:0];
  }

  else
  {
    [v20 intrinsicContentSize];
  }

  v8 = [*(a1 + 32) objectAtIndexedSubscript:a3];
  [v8 CGRectValue];

  UIRectCenteredXInRectScale();
  v11 = v10;
  v13 = v12;
  v14 = v9;
  v16 = v15;
  if (*(a1 + 40) == v20)
  {
    MinX = CGRectGetMinX(*(a1 + 56));
    if (v11 < MinX)
    {
      v11 = MinX;
    }
  }

  else if (*(a1 + 48) == v20)
  {
    v17 = CGRectGetMaxX(*(a1 + 56)) - v9;
    if (v11 >= v17)
    {
      v11 = v17;
    }
  }

  v19 = [MEMORY[0x1E696B098] valueWithCGRect:{v11, v13, v14, v16, 0}];
  [*(a1 + 32) setObject:v19 atIndexedSubscript:a3];
}

void __95__CAMTopBar__layoutControls_apply_withExpandedMenuButton_collapsingMenuButton_collapsingFrame___block_invoke_3(id *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a1[4] == v5)
  {
    [a1[5] expandedFrameForMenuButton:?];
    [v5 setFrame:?];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;
    v8 = [a1[6] objectAtIndexedSubscript:a3];
    [v8 CGRectValue];
    if (v7)
    {
      [v7 frameForAlignmentRect:0 expanded:?];
    }

    else
    {
      [v5 frameForAlignmentRect:?];
    }

    v13 = v9;
    v14 = v10;
    v15 = v11;
    v16 = v12;
    v17 = [a1[5] _controlsNeedingNonAnimatedLayout];
    v18 = [v17 containsObject:v5];

    if (v18)
    {
      v19 = MEMORY[0x1E69DD250];
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __95__CAMTopBar__layoutControls_apply_withExpandedMenuButton_collapsingMenuButton_collapsingFrame___block_invoke_4;
      v20[3] = &unk_1E76F7768;
      v21 = v5;
      v22 = v13;
      v23 = v14;
      v24 = v15;
      v25 = v16;
      [v19 performWithoutAnimation:v20];
    }

    else
    {
      [v5 setFrame:{v13, v14, v15, v16}];
    }
  }
}

uint64_t __95__CAMTopBar__layoutControls_apply_withExpandedMenuButton_collapsingMenuButton_collapsingFrame___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) setFrame:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

- (void)_computeHorizontalLayoutForViewsBetweenLeftView:(id)a3 rightView:(id)a4 views:(id)a5 alignmentRects:(id)a6
{
  v47 = a4;
  v9 = a5;
  v10 = a6;
  v11 = [v9 indexOfObjectIdenticalTo:a3];
  v12 = [v9 indexOfObjectIdenticalTo:v47];
  if (v11 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = v12;
    if (v12 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v14 = v12 - v11;
      if (v12 - v11 != 1)
      {
        v15 = [v10 objectAtIndexedSubscript:v11];
        [v15 CGRectValue];
        v17 = v16;
        v19 = v18;
        v21 = v20;
        v23 = v22;
        v24 = [v10 objectAtIndexedSubscript:v13];
        [v24 CGRectValue];
        v26 = v25;
        v28 = v27;
        v30 = v29;
        v32 = v31;
        v49.origin.x = v17;
        v49.origin.y = v19;
        v49.size.width = v21;
        v49.size.height = v23;
        MaxX = CGRectGetMaxX(v49);
        v50.origin.x = v26;
        v50.origin.y = v28;
        v50.size.width = v30;
        v50.size.height = v32;
        MinX = CGRectGetMinX(v50);
        v35 = v11 + 1;
        if (v35 < v13)
        {
          v36 = MinX - MaxX;
          v37 = 0.0;
          v38 = v35;
          do
          {
            v39 = [v10 objectAtIndexedSubscript:v38];
            [v39 CGRectValue];
            v37 = v37 + v40;

            ++v38;
          }

          while (v13 != v38);
          if (v35 < v13)
          {
            v41 = (v36 - v37) / v14;
            v42 = MaxX + v41;
            do
            {
              v43 = [v10 objectAtIndexedSubscript:v35];
              [v43 CGRectValue];
              v45 = v44;
              UIRoundToViewScale();
              v42 = v42 + v41 + v45;
              v46 = [MEMORY[0x1E696B098] valueWithCGRect:?];
              [v10 setObject:v46 atIndexedSubscript:v35];

              ++v35;
            }

            while (v13 != v35);
          }
        }
      }
    }
  }
}

- (void)setOrientation:(int64_t)a3
{
  if (self->_orientation != a3)
  {
    self->_orientation = a3;
    [(CAMTopBar *)self _updateControlVisibilityAnimated:1];
  }
}

- (void)setStyle:(int64_t)a3 animated:(BOOL)a4
{
  if (self->_style != a3)
  {
    v14 = v8;
    v15 = v5;
    v16 = v4;
    if (a4)
    {
      v12 = 0.3;
    }

    else
    {
      v12 = 0.0;
    }

    v13 = [(CAMTopBar *)self _mode:v9];

    [(CAMTopBar *)self _setMode:v13 style:a3 animationDuration:0 animationOptions:v12];
  }
}

- (void)setBackgroundStyle:(int64_t)a3 animated:(BOOL)a4
{
  if (self->_backgroundStyle != a3)
  {
    self->_backgroundStyle = a3;
    if (a4)
    {
      [(CAMTopBar *)self layoutIfNeeded];
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __41__CAMTopBar_setBackgroundStyle_animated___block_invoke;
      v5[3] = &unk_1E76F77B0;
      v5[4] = self;
      [MEMORY[0x1E69DD250] animateWithDuration:6 delay:v5 options:0 animations:0.3 completion:0.0];
    }

    else
    {

      [(CAMTopBar *)self setNeedsLayout];
    }
  }
}

uint64_t __41__CAMTopBar_setBackgroundStyle_animated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setNeedsLayout];
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

- (double)_opacityForBackgroundStyle:(int64_t)a3
{
  result = 0.0;
  if (a3 == 2)
  {
    result = 1.0;
  }

  if (!a3)
  {
    return 0.3;
  }

  return result;
}

- (void)setFlashButton:(id)a3
{
  v5 = a3;
  flashButton = self->_flashButton;
  if (flashButton != v5)
  {
    v7 = v5;
    [(CAMFlashButton *)flashButton removeFromSuperview];
    [(CAMExpandableMenuButton *)self->_flashButton setExpandableMenuDelegate:0];
    objc_storeStrong(&self->_flashButton, a3);
    [(CAMExpandableMenuButton *)self->_flashButton setTappableEdgeInsets:10.0, 11.0, 10.0, 11.0];
    [(CAMExpandableMenuButton *)self->_flashButton setExpandableMenuDelegate:self];
    flashButton = [(CAMTopBar *)self addSubview:v7];
    v5 = v7;
  }

  MEMORY[0x1EEE66BB8](flashButton, v5);
}

- (void)setElapsedTimeView:(id)a3
{
  v5 = a3;
  elapsedTimeView = self->_elapsedTimeView;
  if (elapsedTimeView != v5)
  {
    v7 = v5;
    [(CAMElapsedTimeView *)elapsedTimeView removeFromSuperview];
    objc_storeStrong(&self->_elapsedTimeView, a3);
    elapsedTimeView = [(CAMTopBar *)self addSubview:v7];
    v5 = v7;
  }

  MEMORY[0x1EEE66BB8](elapsedTimeView, v5);
}

- (void)setHDRButton:(id)a3
{
  v5 = a3;
  HDRButton = self->_HDRButton;
  if (HDRButton != v5)
  {
    v7 = v5;
    [(CAMHDRButton *)HDRButton removeFromSuperview];
    [(CAMExpandableMenuButton *)self->_HDRButton setExpandableMenuDelegate:0];
    objc_storeStrong(&self->_HDRButton, a3);
    [(CAMExpandableMenuButton *)self->_HDRButton setTappableEdgeInsets:12.0, 11.0, 12.0, 11.0];
    [(CAMExpandableMenuButton *)self->_HDRButton setExpandableMenuDelegate:self];
    HDRButton = [(CAMTopBar *)self addSubview:v7];
    v5 = v7;
  }

  MEMORY[0x1EEE66BB8](HDRButton, v5);
}

- (void)setFlipButton:(id)a3
{
  v5 = a3;
  flipButton = self->_flipButton;
  if (flipButton != v5)
  {
    v8 = v5;
    [(CAMFlipButton *)flipButton removeFromSuperview];
    objc_storeStrong(&self->_flipButton, a3);
    v7 = CAMPixelWidthForView(self);
    [(CAMFlipButton *)self->_flipButton setTappableEdgeInsets:v7 + 9.0, v7 + 9.0, v7 + 9.0, v7 + 9.0];
    flipButton = [(CAMTopBar *)self addSubview:v8];
    v5 = v8;
  }

  MEMORY[0x1EEE66BB8](flipButton, v5);
}

- (void)setApertureButton:(id)a3
{
  v5 = a3;
  apertureButton = self->_apertureButton;
  if (apertureButton != v5)
  {
    v9 = v5;
    v7 = [(CEKApertureButton *)apertureButton superview];

    if (v7 == self)
    {
      [(CEKApertureButton *)self->_apertureButton removeFromSuperview];
    }

    v8 = [(CEKApertureButton *)self->_apertureButton delegate];

    if (v8 == self)
    {
      [(CEKApertureButton *)self->_apertureButton setDelegate:0];
    }

    objc_storeStrong(&self->_apertureButton, a3);
    [(CEKApertureButton *)self->_apertureButton setDelegate:self];
    [(CEKApertureButton *)self->_apertureButton setTappableEdgeInsets:11.0, 11.0, 11.0, 11.0];
    apertureButton = [(CAMTopBar *)self addSubview:v9];
    v5 = v9;
  }

  MEMORY[0x1EEE66BB8](apertureButton, v5);
}

- (void)setIntensityButton:(id)a3
{
  v5 = a3;
  intensityButton = self->_intensityButton;
  if (intensityButton != v5)
  {
    v8 = v5;
    v7 = [(CAMIntensityButton *)intensityButton superview];

    if (v7 == self)
    {
      [(CAMIntensityButton *)self->_intensityButton removeFromSuperview];
    }

    objc_storeStrong(&self->_intensityButton, a3);
    [(CAMIntensityButton *)self->_intensityButton setTappableEdgeInsets:11.0, 11.0, 11.0, 11.0];
    intensityButton = [(CAMTopBar *)self addSubview:v8];
    v5 = v8;
  }

  MEMORY[0x1EEE66BB8](intensityButton, v5);
}

- (void)setTimerButton:(id)a3
{
  v5 = a3;
  timerButton = self->_timerButton;
  if (timerButton != v5)
  {
    v7 = v5;
    [(CAMTimerButton *)timerButton removeFromSuperview];
    [(CAMExpandableMenuButton *)self->_timerButton setExpandableMenuDelegate:0];
    objc_storeStrong(&self->_timerButton, a3);
    [(CAMExpandableMenuButton *)self->_timerButton setTappableEdgeInsets:11.0, 11.0, 11.0, 11.0];
    [(CAMExpandableMenuButton *)self->_timerButton setExpandableMenuDelegate:self];
    timerButton = [(CAMTopBar *)self addSubview:v7];
    v5 = v7;
  }

  MEMORY[0x1EEE66BB8](timerButton, v5);
}

- (void)setLivePhotoButton:(id)a3
{
  v5 = a3;
  livePhotoButton = self->_livePhotoButton;
  if (livePhotoButton != v5)
  {
    v7 = v5;
    [(CAMLivePhotoButton *)livePhotoButton removeFromSuperview];
    [(CAMExpandableMenuButton *)self->_livePhotoButton setExpandableMenuDelegate:0];
    objc_storeStrong(&self->_livePhotoButton, a3);
    [(CAMExpandableMenuButton *)self->_livePhotoButton setExpandableMenuDelegate:self];
    [(CAMExpandableMenuButton *)v7 setTappableEdgeInsets:11.0, 11.0, 11.0, 11.0];
    livePhotoButton = [(CAMTopBar *)self addSubview:v7];
    v5 = v7;
  }

  MEMORY[0x1EEE66BB8](livePhotoButton, v5);
}

- (void)setSharedLibraryButton:(id)a3
{
  v5 = a3;
  sharedLibraryButton = self->_sharedLibraryButton;
  if (sharedLibraryButton != v5)
  {
    v7 = v5;
    [(CAMSharedLibraryButton *)sharedLibraryButton removeFromSuperview];
    [(CAMExpandableMenuButton *)self->_sharedLibraryButton setExpandableMenuDelegate:0];
    objc_storeStrong(&self->_sharedLibraryButton, a3);
    [(CAMExpandableMenuButton *)self->_sharedLibraryButton setExpandableMenuDelegate:self];
    [(CAMExpandableMenuButton *)v7 setTappableEdgeInsets:11.0, 11.0, 11.0, 11.0];
    [(CAMTopBar *)self addSubview:v7];
    sharedLibraryButton = [(CAMTopBar *)self _setMode:[(CAMTopBar *)self _mode] style:[(CAMTopBar *)self style] animationDuration:0 animationOptions:0.0];
    v5 = v7;
  }

  MEMORY[0x1EEE66BB8](sharedLibraryButton, v5);
}

- (void)setVideoConfigurationStatusIndicator:(id)a3
{
  v5 = a3;
  videoConfigurationStatusIndicator = self->_videoConfigurationStatusIndicator;
  if (videoConfigurationStatusIndicator != v5)
  {
    v9 = v5;
    v7 = [(CAMVideoConfigurationStatusIndicator *)videoConfigurationStatusIndicator superview];

    if (v7 == self)
    {
      [(CAMVideoConfigurationStatusIndicator *)self->_videoConfigurationStatusIndicator removeFromSuperview];
    }

    v8 = [(CAMControlStatusIndicator *)self->_videoConfigurationStatusIndicator delegate];

    if (v8 == self)
    {
      [(CAMControlStatusIndicator *)self->_videoConfigurationStatusIndicator setDelegate:0];
    }

    objc_storeStrong(&self->_videoConfigurationStatusIndicator, a3);
    [(CAMControlStatusIndicator *)self->_videoConfigurationStatusIndicator setDelegate:self];
    videoConfigurationStatusIndicator = [(CAMTopBar *)self addSubview:self->_videoConfigurationStatusIndicator];
    v5 = v9;
  }

  MEMORY[0x1EEE66BB8](videoConfigurationStatusIndicator, v5);
}

- (void)setDoneButton:(id)a3
{
  v5 = a3;
  doneButton = self->_doneButton;
  if (doneButton != v5)
  {
    v7 = v5;
    [(PUReviewScreenDoneButton *)doneButton removeFromSuperview];
    objc_storeStrong(&self->_doneButton, a3);
    [(PUReviewScreenDoneButton *)self->_doneButton setTappableEdgeInsets:11.0, 11.0, 11.0, 11.0];
    doneButton = [(CAMTopBar *)self addSubview:self->_doneButton];
    v5 = v7;
  }

  MEMORY[0x1EEE66BB8](doneButton, v5);
}

- (id)_allowedControlsForPortraitMode
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = v3;
  if (self->_flashButton)
  {
    [v3 addObject:?];
  }

  if (self->_HDRButton)
  {
    [v4 addObject:?];
  }

  if (self->_timerButton)
  {
    [v4 addObject:?];
  }

  if (self->_intensityButton)
  {
    [v4 addObject:?];
  }

  if (self->_apertureButton)
  {
    [v4 addObject:?];
  }

  return v4;
}

- (id)_allowedControlsForSquareMode
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = v3;
  if (self->_flashButton)
  {
    [v3 addObject:?];
  }

  if (self->_HDRButton)
  {
    [v4 addObject:?];
  }

  if (self->_timerButton)
  {
    [v4 addObject:?];
  }

  if (self->_flipButton)
  {
    [v4 addObject:?];
  }

  return v4;
}

- (id)_allowedControlsForVideoMode
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = v3;
  if (self->_flashButton)
  {
    [v3 addObject:?];
  }

  if (self->_elapsedTimeView)
  {
    [v4 addObject:?];
  }

  if (self->_videoConfigurationStatusIndicator)
  {
    [v4 addObject:?];
  }

  if (self->_flipButton)
  {
    [v4 addObject:?];
  }

  return v4;
}

- (id)_allowedControlsForTimelapseMode
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = v3;
  if (self->_flipButton)
  {
    [v3 addObject:?];
  }

  return v4;
}

- (void)configureForMode:(int64_t)a3 animated:(BOOL)a4
{
  if (a4)
  {
    v6 = 0.25;
  }

  else
  {
    v6 = 0.0;
  }

  v7 = [(CAMTopBar *)self style];

  [(CAMTopBar *)self _setMode:a3 style:v7 animationDuration:0 animationOptions:v6];
}

- (id)_allowedControlsForMode:(int64_t)a3 style:(int64_t)a4
{
  v5 = 0;
  if (a3 > 3)
  {
    switch(a3)
    {
      case 4:
        v6 = [(CAMTopBar *)self _allowedControlsForSquareMode:4];
        break;
      case 5:
        v6 = [(CAMTopBar *)self _allowedControlsForTimelapseMode:5];
        break;
      case 6:
        v6 = [(CAMTopBar *)self _allowedControlsForPortraitMode:6];
        break;
      default:
        goto LABEL_15;
    }
  }

  else if ((a3 - 1) < 2)
  {
    v6 = [(CAMTopBar *)self _allowedControlsForVideoMode];
  }

  else if (a3)
  {
    if (a3 != 3)
    {
      goto LABEL_15;
    }

    v6 = [(CAMTopBar *)self _allowedControlsForPanoramaMode:3];
  }

  else
  {
    v6 = [(CAMTopBar *)self _allowedControlsForStillImageMode:0];
  }

  v5 = v6;
LABEL_15:
  sharedLibraryButton = self->_sharedLibraryButton;
  if (sharedLibraryButton)
  {
    [v5 insertObject:sharedLibraryButton atIndex:0];
  }

  v8 = [(CAMTopBar *)self doneButton];

  if (v8)
  {
    v9 = [(CAMTopBar *)self doneButton];
    [v5 addObject:v9];
  }

  return v5;
}

- (void)_setMode:(int64_t)a3 style:(int64_t)a4 animationDuration:(double)a5 animationOptions:(unint64_t)a6
{
  if (a5 > 0.0)
  {
    [(CAMTopBar *)self layoutIfNeeded];
  }

  v11 = [(CAMTopBar *)self _allowedControlsForMode:a3 style:a4];
  v12 = [(CAMTopBar *)self _allowedControls];
  self->__mode = a3;
  self->_style = a4;
  objc_storeStrong(&self->__allowedControls, v11);
  [(CAMTopBar *)self setNeedsLayout];
  if (a5 > 0.0)
  {
    v13 = [MEMORY[0x1E695DFA8] setWithArray:v11];
    v14 = [MEMORY[0x1E695DFD8] setWithArray:v12];
    [v13 minusSet:v14];

    [(CAMTopBar *)self _setControlsNeedingNonAnimatedLayout:v13];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __63__CAMTopBar__setMode_style_animationDuration_animationOptions___block_invoke;
    v15[3] = &unk_1E76F77B0;
    v15[4] = self;
    [MEMORY[0x1E69DD250] animateWithDuration:a6 | 2 delay:v15 options:0 animations:a5 completion:0.0];
  }
}

uint64_t __63__CAMTopBar__setMode_style_animationDuration_animationOptions___block_invoke(uint64_t a1)
{
  [*(a1 + 32) layoutIfNeeded];
  v2 = *(a1 + 32);

  return [v2 _setControlsNeedingNonAnimatedLayout:0];
}

- (void)_updateControlVisibilityAnimated:(BOOL)a3
{
  v3 = a3;
  v4 = [(CAMTopBar *)self visibilityUpdateDelegate];
  [v4 updateControlVisibilityAnimated:v3];
}

- (BOOL)_shouldHideSubview:(id)a3
{
  v4 = a3;
  v5 = [(CAMTopBar *)self _expandedMenuButton];
  if (v5)
  {
    v6 = [(CAMTopBar *)self _shouldExpandButtonsHorizontally];
    v7 = v5 != v4 && v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)shouldHideFlashButtonForGraphConfiguration:(id)a3
{
  v3 = self;
  v4 = [(CAMTopBar *)self flashButton];
  LOBYTE(v3) = [(CAMTopBar *)v3 _shouldHideSubview:v4];

  return v3;
}

- (BOOL)shouldHideHDRButtonForGraphConfiguration:(id)a3
{
  v3 = self;
  v4 = [(CAMTopBar *)self HDRButton];
  LOBYTE(v3) = [(CAMTopBar *)v3 _shouldHideSubview:v4];

  return v3;
}

- (BOOL)shouldHideTimerButtonForGraphConfiguration:(id)a3
{
  v3 = self;
  v4 = [(CAMTopBar *)self timerButton];
  LOBYTE(v3) = [(CAMTopBar *)v3 _shouldHideSubview:v4];

  return v3;
}

- (BOOL)shouldHideApertureButtonForGraphConfiguration:(id)a3
{
  v3 = self;
  v4 = [(CAMTopBar *)self apertureButton];
  LOBYTE(v3) = [(CAMTopBar *)v3 _shouldHideSubview:v4];

  return v3;
}

- (BOOL)shouldHideIntensityButtonForGraphConfiguration:(id)a3
{
  v3 = self;
  v4 = [(CAMTopBar *)self intensityButton];
  LOBYTE(v3) = [(CAMTopBar *)v3 _shouldHideSubview:v4];

  return v3;
}

- (BOOL)shouldHideFlipButtonForGraphConfiguration:(id)a3
{
  v3 = self;
  v4 = [(CAMTopBar *)self flipButton];
  LOBYTE(v3) = [(CAMTopBar *)v3 _shouldHideSubview:v4];

  return v3;
}

- (BOOL)shouldHideElapsedTimeViewForGraphConfiguration:(id)a3
{
  v3 = self;
  v4 = [(CAMTopBar *)self elapsedTimeView];
  LOBYTE(v3) = [(CAMTopBar *)v3 _shouldHideSubview:v4];

  return v3;
}

- (BOOL)shouldHideLivePhotoButtonForGraphConfiguration:(id)a3
{
  v3 = self;
  v4 = [(CAMTopBar *)self livePhotoButton];
  LOBYTE(v3) = [(CAMTopBar *)v3 _shouldHideSubview:v4];

  return v3;
}

- (BOOL)shouldHideSharedLibraryButtonForGraphConfiguration:(id)a3
{
  v3 = self;
  v4 = [(CAMTopBar *)self sharedLibraryButton];
  LOBYTE(v3) = [(CAMTopBar *)v3 _shouldHideSubview:v4];

  return v3;
}

- (BOOL)shouldHideVideoConfigurationStatusIndicatorForGraphConfiguration:(id)a3
{
  v3 = self;
  v4 = [(CAMTopBar *)self videoConfigurationStatusIndicator];
  LOBYTE(v3) = [(CAMTopBar *)v3 _shouldHideSubview:v4];

  return v3;
}

- (BOOL)shouldHideDoneButtonForGraphConfiguration:(id)a3
{
  v3 = self;
  v4 = [(CAMTopBar *)self doneButton];
  LOBYTE(v3) = [(CAMTopBar *)v3 _shouldHideSubview:v4];

  return v3;
}

- (CGRect)collapsedFrameForMenuButton:(id)a3
{
  v19 = 0u;
  v20 = 0u;
  v4 = a3;
  v5 = [(CAMTopBar *)self _allowedControls];
  [(CAMTopBar *)self _layoutControls:v5 apply:0 withExpandedMenuButton:0 collapsingMenuButton:v4 collapsingFrame:&v19];

  [v4 intrinsicContentSizeForExpansion:0];
  v7 = v6;
  v9 = v8;

  if (v20.f64[0] == v7 && v20.f64[1] == v9)
  {
    [(CAMTopBar *)self _expandedMenuButtonTappableInsets];
    v12.f64[1] = v11;
    v14.f64[1] = v13;
    v19 = vsubq_f64(v19, v12);
    v20 = vsubq_f64(v20, vsubq_f64(vnegq_f64(v14), v12));
  }

  v16 = v19.f64[1];
  v15 = v19.f64[0];
  v18 = v20.f64[1];
  v17 = v20.f64[0];
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (void)collapseMenuButton:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if ([v6 isExpanded])
  {
    [(CAMTopBar *)self collapsedFrameForMenuButton:v6];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    [(CAMTopBar *)self _setExpandedMenuButton:0];
    v15 = MEMORY[0x1E69DD250];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __41__CAMTopBar_collapseMenuButton_animated___block_invoke;
    v17[3] = &unk_1E76F7768;
    v16 = v6;
    v18 = v16;
    v19 = v8;
    v20 = v10;
    v21 = v12;
    v22 = v14;
    [v15 performWithoutAnimation:v17];
    [v16 finishCollapsingAnimated:v4];
    [(CAMTopBar *)self _updateControlVisibilityAnimated:v4];
  }
}

uint64_t __41__CAMTopBar_collapseMenuButton_animated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) startCollapsingWithProposedFrame:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);

  return [v2 setFrame:{v3, v4, v5, v6}];
}

- (CGRect)expandedFrameForMenuButton:(id)a3
{
  v4 = a3;
  v5 = [v4 orientation] - 3;
  v6 = [(CAMTopBar *)self _backgroundView];
  [v6 frame];
  [(CAMTopBar *)self alignmentRectForFrame:?];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [(CAMTopBar *)self collapsedFrameForMenuButton:v4];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  [v4 alignmentRectForFrame:0 expanded:?];
  if (v5 >= 2)
  {
    v20 = v12;
    v12 = v23;
  }

  else
  {
    v35.origin.x = v8;
    v35.origin.y = v10;
    v35.size.width = v12;
    v35.size.height = v14;
    CGRectGetHeight(v35);
    v36.origin.x = v16;
    v36.origin.y = v18;
    v36.size.width = v20;
    v36.size.height = v22;
    CGRectGetHeight(v36);
    UIRoundToViewScale();
    v10 = v24;
    v8 = v16;
  }

  [v4 frameForAlignmentRect:1 expanded:{v8, v10, v20, v12}];
  v28 = v27;
  v30 = v29;
  if (v5 < 2)
  {
    v22 = v26;
    v18 = v25;
  }

  v31 = v28;
  v32 = v18;
  v33 = v30;
  v34 = v22;
  result.size.height = v34;
  result.size.width = v33;
  result.origin.y = v32;
  result.origin.x = v31;
  return result;
}

- (void)expandMenuButton:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (([v6 isExpanded] & 1) == 0)
  {
    v7 = [(CAMTopBar *)self _expandedMenuButton];
    v8 = v7;
    if (v7)
    {
      v9 = MEMORY[0x1E69DD250];
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __39__CAMTopBar_expandMenuButton_animated___block_invoke;
      v26[3] = &unk_1E76F7960;
      v26[4] = self;
      v27 = v7;
      [v9 performWithoutAnimation:v26];
    }

    [(CAMTopBar *)self _setExpandedMenuButton:v6];
    [(CAMTopBar *)self expandedFrameForMenuButton:v6];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v18 = MEMORY[0x1E69DD250];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __39__CAMTopBar_expandMenuButton_animated___block_invoke_2;
    v20[3] = &unk_1E76F7768;
    v19 = v6;
    v21 = v19;
    v22 = v11;
    v23 = v13;
    v24 = v15;
    v25 = v17;
    [v18 performWithoutAnimation:v20];
    [v19 finishExpansionAnimated:v4];
    [(CAMTopBar *)self _updateControlVisibilityAnimated:v4];
  }
}

uint64_t __39__CAMTopBar_expandMenuButton_animated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) collapsedFrameForMenuButton:*(a1 + 40)];
  [*(a1 + 40) startCollapsingWithProposedFrame:?];
  v2 = *(a1 + 40);

  return [v2 finishCollapsingAnimated:0];
}

uint64_t __39__CAMTopBar_expandMenuButton_animated___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) startExpansionWithProposedFrame:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);

  return [v2 setFrame:{v3, v4, v5, v6}];
}

- (id)touchingRecognizersToCancel
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(CAMTopBar *)self _allowedControls];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = [v9 touchingGestureRecognizer];
          [v3 addObject:v10];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)_iterateViewsInHUDManager:(id)a3 forHUDItem:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v24 = 0;
  v8 = [(CAMTopBar *)self _expandedMenuButton];

  if (v8)
  {
    v9 = [(CAMTopBar *)self _expandedMenuButton];
    v7[2](v7, v9, &v24);
  }

  else
  {
    v10 = [(CAMTopBar *)self _allowedControls];
    [v6 locationOfAccessibilityGestureInView:self];
    v12 = v11;
    v14 = v13;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v9 = v10;
    v15 = [v9 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v21;
LABEL_5:
      v18 = 0;
      while (1)
      {
        if (*v21 != v17)
        {
          objc_enumerationMutation(v9);
        }

        v19 = *(*(&v20 + 1) + 8 * v18);
        [v19 frame];
        v27.x = v12;
        v27.y = v14;
        if (CGRectContainsPoint(v28, v27))
        {
          if ([v19 conformsToProtocol:&unk_1F16D4378])
          {
            v7[2](v7, v19, &v24);
            if (v24)
            {
              break;
            }
          }
        }

        if (v16 == ++v18)
        {
          v16 = [v9 countByEnumeratingWithState:&v20 objects:v25 count:16];
          if (v16)
          {
            goto LABEL_5;
          }

          break;
        }
      }
    }
  }
}

- (id)hudItemForAccessibilityHUDManager:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__22;
  v15 = __Block_byref_object_dispose__22;
  v16 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __47__CAMTopBar_hudItemForAccessibilityHUDManager___block_invoke;
  v8[3] = &unk_1E76F7C78;
  v10 = &v11;
  v5 = v4;
  v9 = v5;
  [(CAMTopBar *)self _iterateViewsInHUDManager:v5 forHUDItem:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

void __47__CAMTopBar_hudItemForAccessibilityHUDManager___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = [a2 hudItemForAccessibilityHUDManager:*(a1 + 32)];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  *a3 = 1;
}

- (void)selectedByAccessibilityHUDManager:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __47__CAMTopBar_selectedByAccessibilityHUDManager___block_invoke;
  v6[3] = &unk_1E76F7CA0;
  v7 = v4;
  v5 = v4;
  [(CAMTopBar *)self _iterateViewsInHUDManager:v5 forHUDItem:v6];
}

uint64_t __47__CAMTopBar_selectedByAccessibilityHUDManager___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  result = [a2 selectedByAccessibilityHUDManager:*(a1 + 32)];
  *a3 = 1;
  return result;
}

- (UIEdgeInsets)_expandedMenuButtonTappableInsets
{
  top = self->__expandedMenuButtonTappableInsets.top;
  left = self->__expandedMenuButtonTappableInsets.left;
  bottom = self->__expandedMenuButtonTappableInsets.bottom;
  right = self->__expandedMenuButtonTappableInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end