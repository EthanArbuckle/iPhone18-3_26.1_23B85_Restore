@interface CAMControlStatusBar
- (BOOL)isControlExpanded;
- (BOOL)isIndicatorDesiredForType:(unint64_t)a3;
- (CAMApertureStatusIndicator)apertureIndicator;
- (CAMControlStatusBar)initWithFrame:(CGRect)a3;
- (CAMControlStatusBarDelegate)delegate;
- (CAMExposureBiasStatusIndicator)exposureBiasIndicator;
- (CAMFilterStatusIndicator)filterIndicator;
- (CAMFlashExpandableStatusIndicator)flashIndicator;
- (CAMHDRStatusIndicator)hdrIndicator;
- (CAMIntensityStatusIndicator)intensityIndicator;
- (CAMLivePhotoStatusIndicator)livePhotoIndicator;
- (CAMNightModeStatusIndicator)nightModeIndicator;
- (CAMPhotoFormatStatusIndicator)photoFormatStatusIndicator;
- (CAMProResStatusIndicator)proResIndicator;
- (CAMRAWStatusIndicator)rawIndicator;
- (CAMSemanticStyleStatusIndicator)semanticStyleIndicator;
- (CAMSharedLibraryStatusIndicator)sharedLibraryIndicator;
- (CAMSmartStyleStatusIndicator)smartStyleIndicator;
- (CAMTimerStatusIndicator)timerIndicator;
- (CAMVideoConfigurationStatusIndicator)videoConfigurationIndicator;
- (CAMVideoStabilizationStatusIndicator)videoStabilizationIndicator;
- (id)_createIndicatorForType:(unint64_t)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)hudItemForAccessibilityHUDManager:(id)a3;
- (id)indicatorForType:(unint64_t)a3;
- (void)_ensureDesiredIndicators;
- (void)_handleStatusIndicatorTapped:(id)a3;
- (void)_installIndicatorIfNeededForType:(unint64_t)a3;
- (void)_iterateViewsForHUDManager:(id)a3 withItemFoundBlock:(id)a4;
- (void)_layoutDesiredViewsForTypes:(id)a3 inDesiredTypes:(id)a4 atOrigin:(int64_t)a5;
- (void)_loadIndicatorIfNeededForType:(unint64_t)a3;
- (void)_prelayoutForNewTypes:(id)a3 oldTypes:(id)a4 atOrigin:(int64_t)a5;
- (void)_setDirectionIndicatorHiddenForSpace:(BOOL)a3;
- (void)_updateDirectionIndicatorAlphaAnimated:(BOOL)a3;
- (void)_updateExpandingInsetsForControl:(id)a3;
- (void)_updateIndicatorsVisibilityAnimated:(BOOL)a3;
- (void)collapseExpandedIndicatorAnimated:(BOOL)a3;
- (void)controlStatusIndicatorDidChangeIntrinsicContentSize:(id)a3 animated:(BOOL)a4;
- (void)expandingControl:(id)a3 didChangeExpanded:(BOOL)a4 animated:(BOOL)a5;
- (void)expandingControl:(id)a3 willChangeExpanded:(BOOL)a4 animated:(BOOL)a5;
- (void)layoutSubviews;
- (void)selectedByAccessibilityHUDManager:(id)a3;
- (void)setDirectionIndicatorVisible:(BOOL)a3 animated:(BOOL)a4;
- (void)setOrientation:(int64_t)a3 animated:(BOOL)a4;
- (void)setPrimaryAccessoryControl:(id)a3;
- (void)setPrimaryDesiredIndicatorTypes:(id)a3;
- (void)setPrimaryDesiredIndicatorTypes:(id)a3 secondaryDesiredIndicatorTypes:(id)a4 animated:(BOOL)a5;
- (void)setSecondaryAccessoryControl:(id)a3 animated:(BOOL)a4;
- (void)setSecondaryDesiredIndicatorTypes:(id)a3;
@end

@implementation CAMControlStatusBar

- (CAMControlStatusBar)initWithFrame:(CGRect)a3
{
  v10.receiver = self;
  v10.super_class = CAMControlStatusBar;
  v3 = [(CAMControlStatusBar *)&v10 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E695DF90] dictionary];
    statusIndicatorsByType = v3->__statusIndicatorsByType;
    v3->__statusIndicatorsByType = v4;

    primaryDesiredIndicatorTypes = v3->_primaryDesiredIndicatorTypes;
    v7 = MEMORY[0x1E695E0F0];
    v3->_primaryDesiredIndicatorTypes = MEMORY[0x1E695E0F0];

    secondaryDesiredIndicatorTypes = v3->_secondaryDesiredIndicatorTypes;
    v3->_secondaryDesiredIndicatorTypes = v7;
  }

  return v3;
}

- (void)layoutSubviews
{
  v60 = *MEMORY[0x1E69E9840];
  v3 = [(CAMControlStatusBar *)self primaryDesiredIndicatorTypes];
  [(CAMControlStatusBar *)self _layoutAllDesiredTypes:v3 atOrigin:0];

  v4 = [(CAMControlStatusBar *)self secondaryDesiredIndicatorTypes];
  [(CAMControlStatusBar *)self _layoutAllDesiredTypes:v4 atOrigin:1];

  [(CAMControlStatusBar *)self bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [(CAMControlStatusBar *)self _statusIndicatorsByType];
  v14 = [(CAMControlStatusBar *)self secondaryDesiredIndicatorTypes];
  v15 = [v14 lastObject];

  v16 = [(CAMControlStatusBar *)self primaryDesiredIndicatorTypes];
  v17 = [v16 lastObject];

  MinX = v10;
  if (v15)
  {
    v19 = [v13 objectForKeyedSubscript:v15];
    [v19 frame];
    MinX = CGRectGetMinX(v61);
  }

  v54 = v15;
  if (v17)
  {
    v20 = [v13 objectForKeyedSubscript:v17];
    [v20 frame];
    MaxX = CGRectGetMaxX(v62);
  }

  else
  {
    MaxX = 0.0;
  }

  v53 = v17;
  v22 = [(CAMControlStatusBar *)self directionIndicator];
  v23 = v22;
  if (v22)
  {
    [v22 intrinsicContentSize];
    UIRectCenteredXInRectScale();
    v51 = v6;
    rect = v12;
    x = v63.origin.x;
    y = v63.origin.y;
    width = v63.size.width;
    height = v63.size.height;
    v50 = CGRectGetMaxX(v63);
    v64.origin.x = x;
    v64.origin.y = y;
    v64.size.width = width;
    v64.size.height = height;
    v49 = CGRectGetMinX(v64);
    v65.origin.x = x;
    v65.origin.y = y;
    v65.size.width = width;
    v65.size.height = height;
    v28 = CGRectGetWidth(v65);
    v29 = v28;
    if (MinX - MaxX >= v28)
    {
      v36 = MinX - width;
      if (MinX >= v50)
      {
        v36 = x;
      }

      if (MaxX <= v49)
      {
        v32 = v36;
      }

      else
      {
        v32 = MaxX;
      }
    }

    else
    {
      v66.origin.y = v8;
      v30 = v28;
      v66.size.width = v10;
      v66.origin.x = v51;
      v66.size.height = rect;
      CGRectGetMidY(v66);
      UIRectCenteredAboutPointScale();
      v32 = v31;
      y = v33;
      width = v34;
      v29 = v30;
      height = v35;
    }

    [(CAMControlStatusBar *)self _setDirectionIndicatorHiddenForSpace:MinX - MaxX < v29, MinX - MaxX, 0];
    [v23 setFrame:{v32, y, width, height}];
  }

  v37 = [(CAMControlStatusBar *)self _allDesiredTypes];
  v38 = [v37 mutableCopy];

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v39 = [(CAMControlStatusBar *)self secondaryDesiredIndicatorTypes];
  v40 = [v39 reverseObjectEnumerator];

  v41 = [v40 countByEnumeratingWithState:&v55 objects:v59 count:16];
  if (v41)
  {
    v42 = v41;
    v43 = *v56;
LABEL_17:
    v44 = 0;
    while (1)
    {
      if (*v56 != v43)
      {
        objc_enumerationMutation(v40);
      }

      v45 = *(*(&v55 + 1) + 8 * v44);
      v46 = [v13 objectForKeyedSubscript:v45];
      [v46 frame];
      v47 = CGRectGetMinX(v67);

      if (MaxX < v47)
      {
        break;
      }

      [v38 removeObject:v45];
      if (v42 == ++v44)
      {
        v42 = [v40 countByEnumeratingWithState:&v55 objects:v59 count:16];
        if (v42)
        {
          goto LABEL_17;
        }

        break;
      }
    }
  }

  v48 = [v38 copy];
  [(CAMControlStatusBar *)self _setAllVisibleTypes:v48];

  [(CAMControlStatusBar *)self _updateIndicatorsVisibilityAnimated:0];
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  [(CAMControlStatusBar *)self bounds];
  MidY = CGRectGetMidY(v16);
  v9 = MidY + -40.0;
  v10 = fmax(y, MidY);
  if (y >= v9)
  {
    v11 = v10;
  }

  else
  {
    v11 = y;
  }

  v14.receiver = self;
  v14.super_class = CAMControlStatusBar;
  v12 = [(CAMControlStatusBar *)&v14 hitTest:v7 withEvent:x, v11];

  return v12;
}

- (void)_layoutDesiredViewsForTypes:(id)a3 inDesiredTypes:(id)a4 atOrigin:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  [(CAMControlStatusBar *)self bounds];
  v38[0] = 0;
  v38[1] = v38;
  v38[2] = 0x2020000000;
  v39 = 0.0;
  if (a5)
  {
    if (a5 != 1)
    {
      goto LABEL_6;
    }

    v14 = v12 + -12.0;
  }

  else
  {
    v14 = 12.0;
  }

  v39 = v14;
LABEL_6:
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __75__CAMControlStatusBar__layoutDesiredViewsForTypes_inDesiredTypes_atOrigin___block_invoke;
  aBlock[3] = &unk_1E76FCD60;
  aBlock[5] = v10;
  aBlock[6] = v11;
  *&aBlock[7] = v12;
  aBlock[8] = v13;
  aBlock[9] = a5;
  aBlock[4] = v38;
  v15 = _Block_copy(aBlock);
  if (a5 == 1)
  {
    v16 = [(CAMControlStatusBar *)self secondaryAccessoryControl];
    v25 = v15[2](v15, v16, 16.0);
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v24 = [(CAMControlStatusBar *)self secondaryAccessoryControl];
    [v24 setFrame:{v25, v27, v29, v31}];
    goto LABEL_10;
  }

  if (!a5)
  {
    v16 = [(CAMControlStatusBar *)self primaryAccessoryControl];
    v17 = v15[2](v15, v16, 16.0);
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v24 = [(CAMControlStatusBar *)self primaryAccessoryControl];
    [v24 setFrame:{v17, v19, v21, v23}];
LABEL_10:
  }

  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __75__CAMControlStatusBar__layoutDesiredViewsForTypes_inDesiredTypes_atOrigin___block_invoke_2;
  v34[3] = &unk_1E76FCD88;
  v34[4] = self;
  v32 = v15;
  v36 = v32;
  v33 = v8;
  v35 = v33;
  [v9 enumerateObjectsUsingBlock:v34];

  _Block_object_dispose(v38, 8);
}

double __75__CAMControlStatusBar__layoutDesiredViewsForTypes_inDesiredTypes_atOrigin___block_invoke(uint64_t a1, void *a2, double a3)
{
  v4 = *MEMORY[0x1E695F058];
  v3 = *(MEMORY[0x1E695F058] + 8);
  if (a2)
  {
    [a2 intrinsicContentSize];
    v8 = v7;
    v9 = *(a1 + 64);
    v10 = *(a1 + 72);
    if (v10)
    {
      if (v10 != 1)
      {
LABEL_8:
        v15.origin.x = v4;
        v15.origin.y = v3;
        v15.size.width = v8;
        v15.size.height = v9;
        *&v4 = CGRectInset(v15, a3 * -0.5, 0.0);
        return v4;
      }

      v4 = *(*(*(a1 + 32) + 8) + 24) - v7;
      v13.origin.x = v4;
      v13.origin.y = v3;
      v13.size.width = v8;
      v13.size.height = *(a1 + 64);
      v11 = CGRectGetMinX(v13) - a3;
    }

    else
    {
      v4 = *(*(*(a1 + 32) + 8) + 24);
      v14.origin.x = v4;
      v14.origin.y = v3;
      v14.size.width = v8;
      v14.size.height = *(a1 + 64);
      v11 = CGRectGetMaxX(v14) + a3;
    }

    *(*(*(a1 + 32) + 8) + 24) = v11;
    goto LABEL_8;
  }

  return v4;
}

void __75__CAMControlStatusBar__layoutDesiredViewsForTypes_inDesiredTypes_atOrigin___block_invoke_2(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = [*(a1 + 32) _statusIndicatorsByType];
  v4 = [v3 objectForKeyedSubscript:v13];

  v5 = (*(*(a1 + 48) + 16))(12.0);
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = *(a1 + 40);
  if (!v12 || [v12 containsObject:v13])
  {
    [v4 setFrame:{v5, v7, v9, v11}];
  }
}

- (void)_prelayoutForNewTypes:(id)a3 oldTypes:(id)a4 atOrigin:(int64_t)a5
{
  v28 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [MEMORY[0x1E695DFA8] setWithArray:v8];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v24;
    do
    {
      v15 = 0;
      do
      {
        if (*v24 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [v10 removeObject:*(*(&v23 + 1) + 8 * v15++)];
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v13);
  }

  v16 = MEMORY[0x1E69DD250];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __63__CAMControlStatusBar__prelayoutForNewTypes_oldTypes_atOrigin___block_invoke;
  v19[3] = &unk_1E76F8400;
  v19[4] = self;
  v20 = v10;
  v21 = v8;
  v22 = a5;
  v17 = v8;
  v18 = v10;
  [v16 performWithoutAnimation:v19];
}

void __63__CAMControlStatusBar__prelayoutForNewTypes_oldTypes_atOrigin___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) _layoutDesiredViewsForTypes:*(a1 + 40) inDesiredTypes:*(a1 + 48) atOrigin:*(a1 + 56)];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 40);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * v6);
        v8 = [*(a1 + 32) _statusIndicatorsByType];
        v9 = [v8 objectForKeyedSubscript:v7];
        [v9 layoutIfNeeded];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }
}

- (void)_updateExpandingInsetsForControl:(id)a3
{
  v9 = a3;
  [v9 frame];
  [v9 alignmentRectForFrame:?];
  [(CAMControlStatusBar *)self bounds];
  v12 = CGRectInset(v11, 12.0, 0.0);
  x = v12.origin.x;
  y = v12.origin.y;
  width = v12.size.width;
  height = v12.size.height;
  v8 = [v9 superview];
  [(CAMControlStatusBar *)self convertRect:v8 toView:x, y, width, height];

  CEKRectInsetsInRect();
  [v9 setExpansionInsets:?];
}

- (id)_createIndicatorForType:(unint64_t)a3
{
  v5 = off_1E76F3E48;
  switch(a3)
  {
    case 0uLL:
      goto LABEL_18;
    case 1uLL:
      v5 = off_1E76F4010;
      goto LABEL_18;
    case 2uLL:
      v5 = off_1E76F3EF8;
      goto LABEL_18;
    case 3uLL:
      v5 = off_1E76F46D8;
      goto LABEL_18;
    case 4uLL:
      v5 = off_1E76F3E28;
      goto LABEL_18;
    case 5uLL:
      v5 = off_1E76F39F8;
      goto LABEL_18;
    case 6uLL:
      v5 = off_1E76F3F50;
      goto LABEL_18;
    case 7uLL:
      v5 = off_1E76F3DB0;
      goto LABEL_18;
    case 8uLL:
      v6 = objc_alloc_init(CAMVideoConfigurationStatusIndicator);
      [(CAMControlStatusIndicator *)v6 setControlStatusType:8];
      goto LABEL_20;
    case 9uLL:
      v5 = off_1E76F4118;
      goto LABEL_18;
    case 0xAuLL:
      v5 = off_1E76F4408;
      goto LABEL_18;
    case 0xBuLL:
      v5 = off_1E76F4508;
      goto LABEL_18;
    case 0xCuLL:
      v5 = off_1E76F4350;
      goto LABEL_18;
    case 0xDuLL:
      v5 = off_1E76F4320;
      goto LABEL_18;
    case 0xEuLL:
      v5 = off_1E76F4468;
      goto LABEL_18;
    case 0xFuLL:
      v5 = off_1E76F4820;
      goto LABEL_18;
    case 0x10uLL:
      v5 = off_1E76F4220;
LABEL_18:
      v6 = objc_alloc_init(*v5);
      break;
    default:
      v6 = 0;
      break;
  }

  [(CAMControlStatusIndicator *)v6 setControlStatusType:a3];
  [(CAMVideoConfigurationStatusIndicator *)v6 addTarget:self action:sel__handleStatusIndicatorTapped_ forControlEvents:64];
LABEL_20:
  [(CAMVideoConfigurationStatusIndicator *)v6 setAlpha:0.0];

  return v6;
}

- (id)indicatorForType:(unint64_t)a3
{
  v4 = [(CAMControlStatusBar *)self _statusIndicatorsByType];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v6 = [v4 objectForKeyedSubscript:v5];

  return v6;
}

- (CAMFlashExpandableStatusIndicator)flashIndicator
{
  v2 = [(CAMControlStatusBar *)self _statusIndicatorsByType];
  v3 = [v2 objectForKeyedSubscript:&unk_1F16C82A0];

  return v3;
}

- (CAMLivePhotoStatusIndicator)livePhotoIndicator
{
  v2 = [(CAMControlStatusBar *)self _statusIndicatorsByType];
  v3 = [v2 objectForKeyedSubscript:&unk_1F16C82B8];

  return v3;
}

- (CAMHDRStatusIndicator)hdrIndicator
{
  v2 = [(CAMControlStatusBar *)self _statusIndicatorsByType];
  v3 = [v2 objectForKeyedSubscript:&unk_1F16C82D0];

  return v3;
}

- (CAMTimerStatusIndicator)timerIndicator
{
  v2 = [(CAMControlStatusBar *)self _statusIndicatorsByType];
  v3 = [v2 objectForKeyedSubscript:&unk_1F16C82E8];

  return v3;
}

- (CAMFilterStatusIndicator)filterIndicator
{
  v2 = [(CAMControlStatusBar *)self _statusIndicatorsByType];
  v3 = [v2 objectForKeyedSubscript:&unk_1F16C8300];

  return v3;
}

- (CAMApertureStatusIndicator)apertureIndicator
{
  v2 = [(CAMControlStatusBar *)self _statusIndicatorsByType];
  v3 = [v2 objectForKeyedSubscript:&unk_1F16C8318];

  return v3;
}

- (CAMIntensityStatusIndicator)intensityIndicator
{
  v2 = [(CAMControlStatusBar *)self _statusIndicatorsByType];
  v3 = [v2 objectForKeyedSubscript:&unk_1F16C8330];

  return v3;
}

- (CAMExposureBiasStatusIndicator)exposureBiasIndicator
{
  v2 = [(CAMControlStatusBar *)self _statusIndicatorsByType];
  v3 = [v2 objectForKeyedSubscript:&unk_1F16C8348];

  return v3;
}

- (CAMVideoConfigurationStatusIndicator)videoConfigurationIndicator
{
  v2 = [(CAMControlStatusBar *)self _statusIndicatorsByType];
  v3 = [v2 objectForKeyedSubscript:&unk_1F16C8360];

  return v3;
}

- (CAMNightModeStatusIndicator)nightModeIndicator
{
  v2 = [(CAMControlStatusBar *)self _statusIndicatorsByType];
  v3 = [v2 objectForKeyedSubscript:&unk_1F16C8378];

  return v3;
}

- (CAMSemanticStyleStatusIndicator)semanticStyleIndicator
{
  v2 = [(CAMControlStatusBar *)self _statusIndicatorsByType];
  v3 = [v2 objectForKeyedSubscript:&unk_1F16C8390];

  return v3;
}

- (CAMSmartStyleStatusIndicator)smartStyleIndicator
{
  v2 = [(CAMControlStatusBar *)self _statusIndicatorsByType];
  v3 = [v2 objectForKeyedSubscript:&unk_1F16C83A8];

  return v3;
}

- (CAMRAWStatusIndicator)rawIndicator
{
  v2 = [(CAMControlStatusBar *)self _statusIndicatorsByType];
  v3 = [v2 objectForKeyedSubscript:&unk_1F16C83C0];

  return v3;
}

- (CAMPhotoFormatStatusIndicator)photoFormatStatusIndicator
{
  v2 = [(CAMControlStatusBar *)self _statusIndicatorsByType];
  v3 = [v2 objectForKeyedSubscript:&unk_1F16C83D8];

  return v3;
}

- (CAMProResStatusIndicator)proResIndicator
{
  v2 = [(CAMControlStatusBar *)self _statusIndicatorsByType];
  v3 = [v2 objectForKeyedSubscript:&unk_1F16C83F0];

  return v3;
}

- (CAMSharedLibraryStatusIndicator)sharedLibraryIndicator
{
  v2 = [(CAMControlStatusBar *)self _statusIndicatorsByType];
  v3 = [v2 objectForKeyedSubscript:&unk_1F16C8408];

  return v3;
}

- (CAMVideoStabilizationStatusIndicator)videoStabilizationIndicator
{
  v2 = [(CAMControlStatusBar *)self _statusIndicatorsByType];
  v3 = [v2 objectForKeyedSubscript:&unk_1F16C8420];

  return v3;
}

- (void)_handleStatusIndicatorTapped:(id)a3
{
  v4 = a3;
  v6 = [(CAMControlStatusBar *)self delegate];
  v5 = [v4 controlStatusType];

  [v6 controlStatusBar:self didReceiveTapInIndicatorForType:v5];
}

- (void)setPrimaryDesiredIndicatorTypes:(id)a3
{
  v4 = a3;
  v5 = [(CAMControlStatusBar *)self secondaryDesiredIndicatorTypes];
  [(CAMControlStatusBar *)self setPrimaryDesiredIndicatorTypes:v4 secondaryDesiredIndicatorTypes:v5 animated:0];
}

- (void)setSecondaryDesiredIndicatorTypes:(id)a3
{
  v4 = a3;
  v5 = [(CAMControlStatusBar *)self primaryDesiredIndicatorTypes];
  [(CAMControlStatusBar *)self setPrimaryDesiredIndicatorTypes:v5 secondaryDesiredIndicatorTypes:v4 animated:0];
}

- (void)setPrimaryDesiredIndicatorTypes:(id)a3 secondaryDesiredIndicatorTypes:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  if (![v8 isEqual:self->_primaryDesiredIndicatorTypes] || (objc_msgSend(v9, "isEqual:", self->_secondaryDesiredIndicatorTypes) & 1) == 0)
  {
    v10 = self->_primaryDesiredIndicatorTypes;
    v11 = self->_secondaryDesiredIndicatorTypes;
    v12 = [v8 copy];
    v13 = [v9 copy];
    objc_storeStrong(&self->_primaryDesiredIndicatorTypes, v12);
    objc_storeStrong(&self->_secondaryDesiredIndicatorTypes, v13);
    v14 = [MEMORY[0x1E695DFA8] setWithArray:v13];
    [v14 addObjectsFromArray:v12];
    [(CAMControlStatusBar *)self _setAllDesiredTypes:v14];
    [(CAMControlStatusBar *)self _ensureDesiredIndicators];
    if (v5)
    {
      [(CAMControlStatusBar *)self _prelayoutForNewTypes:v12 oldTypes:v10 atOrigin:0];
      [(CAMControlStatusBar *)self _prelayoutForNewTypes:v13 oldTypes:v11 atOrigin:1];
      [(CAMControlStatusBar *)self setNeedsLayout];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __95__CAMControlStatusBar_setPrimaryDesiredIndicatorTypes_secondaryDesiredIndicatorTypes_animated___block_invoke;
      v15[3] = &unk_1E76F77B0;
      v15[4] = self;
      [MEMORY[0x1E69DD250] animateWithDuration:2 delay:v15 usingSpringWithDamping:0 initialSpringVelocity:0.5 options:0.0 animations:1.0 completion:1.0];
    }

    else
    {
      [(CAMControlStatusBar *)self setNeedsLayout];
    }
  }
}

- (BOOL)isIndicatorDesiredForType:(unint64_t)a3
{
  v4 = [(CAMControlStatusBar *)self _allDesiredTypes];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v6 = [v4 containsObject:v5];

  return v6;
}

- (void)collapseExpandedIndicatorAnimated:(BOOL)a3
{
  v3 = a3;
  v4 = [(CAMControlStatusBar *)self _expandedControl];
  [v4 setExpanded:0 animated:v3];
}

- (BOOL)isControlExpanded
{
  v2 = [(CAMControlStatusBar *)self _expandedControl];
  v3 = v2 != 0;

  return v3;
}

- (void)setDirectionIndicatorVisible:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_directionIndicatorVisible != a3)
  {
    v5 = a4;
    self->_directionIndicatorVisible = a3;
    if (a3)
    {
      v7 = [(CAMControlStatusBar *)self directionIndicator];

      if (!v7)
      {
        v8 = objc_alloc_init(CAMDirectionalIndicator);
        directionIndicator = self->_directionIndicator;
        self->_directionIndicator = v8;

        [(CAMControlStatusBar *)self addSubview:self->_directionIndicator];
        if (v5)
        {
          [(CAMDirectionalIndicator *)self->_directionIndicator setAlpha:0.0];
        }
      }
    }

    [(CAMControlStatusBar *)self _updateDirectionIndicatorAlphaAnimated:v5];
  }
}

- (void)_setDirectionIndicatorHiddenForSpace:(BOOL)a3
{
  if (self->__directionIndicatorHiddenForSpace != a3)
  {
    self->__directionIndicatorHiddenForSpace = a3;
    [(CAMControlStatusBar *)self _updateDirectionIndicatorAlphaAnimated:0];
  }
}

- (void)_updateDirectionIndicatorAlphaAnimated:(BOOL)a3
{
  if ([(CAMControlStatusBar *)self isDirectionIndicatorVisible]&& ![(CAMControlStatusBar *)self _isDirectionIndicatorHiddenForSpace])
  {
    v5 = [(CAMControlStatusBar *)self _expandedControl];
    v4 = v5 == 0;
  }

  else
  {
    v4 = 0;
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __62__CAMControlStatusBar__updateDirectionIndicatorAlphaAnimated___block_invoke;
  v6[3] = &unk_1E76F7850;
  v6[4] = self;
  v7 = v4;
  [CAMView animateIfNeededWithDuration:2 usingSpringWithDamping:v6 initialSpringVelocity:0 options:0.5 animations:1.0 completion:1.0];
}

void __62__CAMControlStatusBar__updateDirectionIndicatorAlphaAnimated___block_invoke(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v1 = 1.0;
  }

  else
  {
    v1 = 0.0;
  }

  v2 = [*(a1 + 32) directionIndicator];
  [v2 setAlpha:v1];
}

- (void)setPrimaryAccessoryControl:(id)a3
{
  v5 = a3;
  if (self->_primaryAccessoryControl != v5)
  {
    v8 = v5;
    v6 = self;
    v7 = [(UIView *)self->_primaryAccessoryControl superview];

    if (v7 == v6)
    {
      [(UIView *)self->_primaryAccessoryControl removeFromSuperview];
    }

    objc_storeStrong(&self->_primaryAccessoryControl, a3);
    [(CAMControlStatusBar *)v6 addSubview:self->_primaryAccessoryControl];

    v5 = v8;
  }
}

- (void)setSecondaryAccessoryControl:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  if (self->_secondaryAccessoryControl == v7)
  {
    goto LABEL_10;
  }

  v8 = self;
  v9 = [(UIView *)self->_secondaryAccessoryControl superview];

  if (v9 == v8)
  {
    [(UIView *)self->_secondaryAccessoryControl removeFromSuperview];
    if (!v4)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  if (v4)
  {
LABEL_4:
    [(CAMControlStatusBar *)v8 layoutIfNeeded];
  }

LABEL_5:
  objc_storeStrong(&self->_secondaryAccessoryControl, a3);
  if (v7)
  {
    [(CAMControlStatusBar *)v8 addSubview:self->_secondaryAccessoryControl];
  }

  [(CAMControlStatusBar *)v8 setNeedsLayout];
  if (v4)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __61__CAMControlStatusBar_setSecondaryAccessoryControl_animated___block_invoke;
    v10[3] = &unk_1E76F77B0;
    v10[4] = v8;
    [MEMORY[0x1E69DD250] animateWithDuration:2 delay:v10 usingSpringWithDamping:0 initialSpringVelocity:0.5 options:0.0 animations:1.0 completion:1.0];
  }

LABEL_10:
}

- (void)setOrientation:(int64_t)a3 animated:(BOOL)a4
{
  v18 = *MEMORY[0x1E69E9840];
  if (self->_orientation != a3)
  {
    v4 = a4;
    self->_orientation = a3;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = [(CAMControlStatusBar *)self _statusIndicatorsByType];
    v7 = [v6 allValues];

    v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v13 + 1) + 8 * i);
          if ([v12 supportsOrientations])
          {
            [v12 setOrientation:a3 animated:v4];
          }

          else
          {
            [CAMView rotateView:v12 toInterfaceOrientation:a3 animated:v4];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v9);
    }
  }
}

- (void)_ensureDesiredIndicators
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(CAMControlStatusBar *)self _allDesiredTypes];
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

        v8 = [*(*(&v9 + 1) + 8 * v7) integerValue];
        [(CAMControlStatusBar *)self _loadIndicatorIfNeededForType:v8];
        [(CAMControlStatusBar *)self _installIndicatorIfNeededForType:v8];
        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)_loadIndicatorIfNeededForType:(unint64_t)a3
{
  v9 = [(CAMControlStatusBar *)self _statusIndicatorsByType];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v6 = [v9 objectForKeyedSubscript:v5];

  if (!v6)
  {
    v6 = [(CAMControlStatusBar *)self _createIndicatorForType:a3];
    [v6 setOrientation:{-[CAMControlStatusBar orientation](self, "orientation")}];
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    [v9 setObject:v6 forKeyedSubscript:v7];

    if (objc_opt_respondsToSelector())
    {
      [v6 setDelegate:self];
    }

    v8 = [(CAMControlStatusBar *)self delegate];
    [v8 controlStatusBar:self didCreateIndicatorForType:a3];
  }
}

- (void)_installIndicatorIfNeededForType:(unint64_t)a3
{
  v8 = self;
  v4 = [(CAMControlStatusBar *)v8 _statusIndicatorsByType];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (v6)
  {
    v7 = [v6 superview];

    if (v7 != v8)
    {
      [(CAMControlStatusBar *)v8 addSubview:v6];
    }
  }
}

- (void)_updateIndicatorsVisibilityAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(CAMControlStatusBar *)self _allVisibleTypes];
  if (v3)
  {
    v6 = 0.5;
  }

  else
  {
    v6 = 0.0;
  }

  v7 = [(CAMControlStatusBar *)self _expandedControl];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __59__CAMControlStatusBar__updateIndicatorsVisibilityAnimated___block_invoke;
  v10[3] = &unk_1E76F7938;
  v10[4] = self;
  v11 = v5;
  v12 = v7;
  v8 = v7;
  v9 = v5;
  [CAMView animateIfNeededWithDuration:2 usingSpringWithDamping:v10 initialSpringVelocity:0 options:v6 animations:1.0 completion:1.0];
}

void __59__CAMControlStatusBar__updateIndicatorsVisibilityAnimated___block_invoke(id *a1)
{
  v2 = [a1[4] _statusIndicatorsByType];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __59__CAMControlStatusBar__updateIndicatorsVisibilityAnimated___block_invoke_2;
  v3[3] = &unk_1E76FCDB0;
  v4 = a1[5];
  v5 = a1[6];
  [v2 enumerateKeysAndObjectsUsingBlock:v3];
}

void __59__CAMControlStatusBar__updateIndicatorsVisibilityAnimated___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v10 = a3;
  v6 = [v5 containsObject:a2];
  v7 = 0.0;
  if (v6)
  {
    v8 = *(a1 + 40);
    v7 = 1.0;
    v9 = 0.0;
    if (v8 == v10)
    {
      v9 = 1.0;
    }

    if (v8)
    {
      v7 = v9;
    }
  }

  [v10 setAlpha:v7];
}

- (void)controlStatusIndicatorDidChangeIntrinsicContentSize:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  [(CAMControlStatusBar *)self setNeedsLayout];
  if (v4)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __84__CAMControlStatusBar_controlStatusIndicatorDidChangeIntrinsicContentSize_animated___block_invoke;
    v6[3] = &unk_1E76F77B0;
    v6[4] = self;
    [MEMORY[0x1E69DD250] animateWithDuration:2 delay:v6 usingSpringWithDamping:0 initialSpringVelocity:0.5 options:0.0 animations:1.0 completion:1.0];
  }
}

- (void)expandingControl:(id)a3 willChangeExpanded:(BOOL)a4 animated:(BOOL)a5
{
  v5 = a4;
  v8 = a3;
  v7 = [(CAMControlStatusBar *)self delegate];
  [v7 controlStatusBar:self willChangeExpandingControl:v8 expanded:v5];

  if (v5)
  {
    [(CAMControlStatusBar *)self _updateExpandingInsetsForControl:v8];
  }
}

- (void)expandingControl:(id)a3 didChangeExpanded:(BOOL)a4 animated:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v13 = a3;
  v8 = [(CAMControlStatusBar *)self _expandedControl];
  v9 = v8;
  if (v6)
  {
    [(CAMControlStatusBar *)self _setExpandedControl:v13];
    [v9 setExpanded:0 animated:v5];
    v10 = [v13 superview];
    [v10 bringSubviewToFront:v13];

LABEL_6:
    [(CAMControlStatusBar *)self _updateIndicatorsVisibilityAnimated:v5];
    [(CAMControlStatusBar *)self _updateDirectionIndicatorAlphaAnimated:v5];
    goto LABEL_7;
  }

  if (v9 == v13)
  {
    [(CAMControlStatusBar *)self _setExpandedControl:0];
  }

  v11 = [(CAMControlStatusBar *)self _expandedControl];

  if (!v11)
  {
    goto LABEL_6;
  }

LABEL_7:
  v12 = [(CAMControlStatusBar *)self delegate];
  [v12 controlStatusBar:self didChangeExpandingControl:v13 expanded:v6];
}

- (void)_iterateViewsForHUDManager:(id)a3 withItemFoundBlock:(id)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(CAMControlStatusBar *)self _expandedControl];

  if (v8)
  {
    v9 = [(CAMControlStatusBar *)self _expandedControl];
LABEL_3:
    v10 = v9;
    v7[2](v7, v9);

    goto LABEL_23;
  }

  [v6 locationOfAccessibilityGestureInView:self];
  v12 = v11;
  v14 = v13;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v15 = [(CAMControlStatusBar *)self _allVisibleTypes];
  v16 = [v15 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v30;
    while (2)
    {
      v19 = 0;
      do
      {
        if (*v30 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v29 + 1) + 8 * v19);
        v21 = [(CAMControlStatusBar *)self _statusIndicatorsByType];
        v22 = [v21 objectForKeyedSubscript:v20];

        [v22 frame];
        v35.x = v12;
        v35.y = v14;
        if (CGRectContainsPoint(v39, v35))
        {
          v7[2](v7, v22);

          goto LABEL_22;
        }

        ++v19;
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (v17)
      {
        continue;
      }

      break;
    }
  }

  if ([(CAMControlStatusBar *)self isDirectionIndicatorVisible])
  {
    v23 = [(CAMControlStatusBar *)self directionIndicator];
    [v23 frame];
    v36.x = v12;
    v36.y = v14;
    v24 = CGRectContainsPoint(v40, v36);

    if (v24)
    {
      v9 = [(CAMControlStatusBar *)self directionIndicator];
      goto LABEL_3;
    }
  }

  v15 = [(CAMControlStatusBar *)self primaryAccessoryControl];
  v25 = [(CAMControlStatusBar *)self secondaryAccessoryControl];
  if ([v15 conformsToProtocol:&unk_1F16D4378] && (objc_msgSend(v15, "frame"), v37.x = v12, v37.y = v14, v26 = CGRectContainsPoint(v41, v37), v27 = v15, v26) || objc_msgSend(v25, "conformsToProtocol:", &unk_1F16D4378) && (objc_msgSend(v25, "frame"), v38.x = v12, v38.y = v14, v28 = CGRectContainsPoint(v42, v38), v27 = v25, v28))
  {
    v7[2](v7, v27);
  }

LABEL_22:
LABEL_23:
}

- (id)hudItemForAccessibilityHUDManager:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__21;
  v15 = __Block_byref_object_dispose__21;
  v16 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __57__CAMControlStatusBar_hudItemForAccessibilityHUDManager___block_invoke;
  v8[3] = &unk_1E76F79B0;
  v10 = &v11;
  v5 = v4;
  v9 = v5;
  [(CAMControlStatusBar *)self _iterateViewsForHUDManager:v5 withItemFoundBlock:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

uint64_t __57__CAMControlStatusBar_hudItemForAccessibilityHUDManager___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 hudItemForAccessibilityHUDManager:*(a1 + 32)];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x1EEE66BB8](v3, v5);
}

- (void)selectedByAccessibilityHUDManager:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __57__CAMControlStatusBar_selectedByAccessibilityHUDManager___block_invoke;
  v6[3] = &unk_1E76F79D8;
  v7 = v4;
  v5 = v4;
  [(CAMControlStatusBar *)self _iterateViewsForHUDManager:v5 withItemFoundBlock:v6];
}

- (CAMControlStatusBarDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end