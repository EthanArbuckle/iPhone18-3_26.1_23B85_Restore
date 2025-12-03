@interface CAMControlStatusBar
- (BOOL)isControlExpanded;
- (BOOL)isIndicatorDesiredForType:(unint64_t)type;
- (CAMApertureStatusIndicator)apertureIndicator;
- (CAMControlStatusBar)initWithFrame:(CGRect)frame;
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
- (id)_createIndicatorForType:(unint64_t)type;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (id)hudItemForAccessibilityHUDManager:(id)manager;
- (id)indicatorForType:(unint64_t)type;
- (void)_ensureDesiredIndicators;
- (void)_handleStatusIndicatorTapped:(id)tapped;
- (void)_installIndicatorIfNeededForType:(unint64_t)type;
- (void)_iterateViewsForHUDManager:(id)manager withItemFoundBlock:(id)block;
- (void)_layoutDesiredViewsForTypes:(id)types inDesiredTypes:(id)desiredTypes atOrigin:(int64_t)origin;
- (void)_loadIndicatorIfNeededForType:(unint64_t)type;
- (void)_prelayoutForNewTypes:(id)types oldTypes:(id)oldTypes atOrigin:(int64_t)origin;
- (void)_setDirectionIndicatorHiddenForSpace:(BOOL)space;
- (void)_updateDirectionIndicatorAlphaAnimated:(BOOL)animated;
- (void)_updateExpandingInsetsForControl:(id)control;
- (void)_updateIndicatorsVisibilityAnimated:(BOOL)animated;
- (void)collapseExpandedIndicatorAnimated:(BOOL)animated;
- (void)controlStatusIndicatorDidChangeIntrinsicContentSize:(id)size animated:(BOOL)animated;
- (void)expandingControl:(id)control didChangeExpanded:(BOOL)expanded animated:(BOOL)animated;
- (void)expandingControl:(id)control willChangeExpanded:(BOOL)expanded animated:(BOOL)animated;
- (void)layoutSubviews;
- (void)selectedByAccessibilityHUDManager:(id)manager;
- (void)setDirectionIndicatorVisible:(BOOL)visible animated:(BOOL)animated;
- (void)setOrientation:(int64_t)orientation animated:(BOOL)animated;
- (void)setPrimaryAccessoryControl:(id)control;
- (void)setPrimaryDesiredIndicatorTypes:(id)types;
- (void)setPrimaryDesiredIndicatorTypes:(id)types secondaryDesiredIndicatorTypes:(id)indicatorTypes animated:(BOOL)animated;
- (void)setSecondaryAccessoryControl:(id)control animated:(BOOL)animated;
- (void)setSecondaryDesiredIndicatorTypes:(id)types;
@end

@implementation CAMControlStatusBar

- (CAMControlStatusBar)initWithFrame:(CGRect)frame
{
  v10.receiver = self;
  v10.super_class = CAMControlStatusBar;
  v3 = [(CAMControlStatusBar *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    statusIndicatorsByType = v3->__statusIndicatorsByType;
    v3->__statusIndicatorsByType = dictionary;

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
  primaryDesiredIndicatorTypes = [(CAMControlStatusBar *)self primaryDesiredIndicatorTypes];
  [(CAMControlStatusBar *)self _layoutAllDesiredTypes:primaryDesiredIndicatorTypes atOrigin:0];

  secondaryDesiredIndicatorTypes = [(CAMControlStatusBar *)self secondaryDesiredIndicatorTypes];
  [(CAMControlStatusBar *)self _layoutAllDesiredTypes:secondaryDesiredIndicatorTypes atOrigin:1];

  [(CAMControlStatusBar *)self bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  _statusIndicatorsByType = [(CAMControlStatusBar *)self _statusIndicatorsByType];
  secondaryDesiredIndicatorTypes2 = [(CAMControlStatusBar *)self secondaryDesiredIndicatorTypes];
  lastObject = [secondaryDesiredIndicatorTypes2 lastObject];

  primaryDesiredIndicatorTypes2 = [(CAMControlStatusBar *)self primaryDesiredIndicatorTypes];
  lastObject2 = [primaryDesiredIndicatorTypes2 lastObject];

  MinX = v10;
  if (lastObject)
  {
    v19 = [_statusIndicatorsByType objectForKeyedSubscript:lastObject];
    [v19 frame];
    MinX = CGRectGetMinX(v61);
  }

  v54 = lastObject;
  if (lastObject2)
  {
    v20 = [_statusIndicatorsByType objectForKeyedSubscript:lastObject2];
    [v20 frame];
    MaxX = CGRectGetMaxX(v62);
  }

  else
  {
    MaxX = 0.0;
  }

  v53 = lastObject2;
  directionIndicator = [(CAMControlStatusBar *)self directionIndicator];
  v23 = directionIndicator;
  if (directionIndicator)
  {
    [directionIndicator intrinsicContentSize];
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

  _allDesiredTypes = [(CAMControlStatusBar *)self _allDesiredTypes];
  v38 = [_allDesiredTypes mutableCopy];

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  secondaryDesiredIndicatorTypes3 = [(CAMControlStatusBar *)self secondaryDesiredIndicatorTypes];
  reverseObjectEnumerator = [secondaryDesiredIndicatorTypes3 reverseObjectEnumerator];

  v41 = [reverseObjectEnumerator countByEnumeratingWithState:&v55 objects:v59 count:16];
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
        objc_enumerationMutation(reverseObjectEnumerator);
      }

      v45 = *(*(&v55 + 1) + 8 * v44);
      v46 = [_statusIndicatorsByType objectForKeyedSubscript:v45];
      [v46 frame];
      v47 = CGRectGetMinX(v67);

      if (MaxX < v47)
      {
        break;
      }

      [v38 removeObject:v45];
      if (v42 == ++v44)
      {
        v42 = [reverseObjectEnumerator countByEnumeratingWithState:&v55 objects:v59 count:16];
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

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
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
  v12 = [(CAMControlStatusBar *)&v14 hitTest:eventCopy withEvent:x, v11];

  return v12;
}

- (void)_layoutDesiredViewsForTypes:(id)types inDesiredTypes:(id)desiredTypes atOrigin:(int64_t)origin
{
  typesCopy = types;
  desiredTypesCopy = desiredTypes;
  [(CAMControlStatusBar *)self bounds];
  v38[0] = 0;
  v38[1] = v38;
  v38[2] = 0x2020000000;
  v39 = 0.0;
  if (origin)
  {
    if (origin != 1)
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
  aBlock[9] = origin;
  aBlock[4] = v38;
  v15 = _Block_copy(aBlock);
  if (origin == 1)
  {
    secondaryAccessoryControl = [(CAMControlStatusBar *)self secondaryAccessoryControl];
    v25 = v15[2](v15, secondaryAccessoryControl, 16.0);
    v27 = v26;
    v29 = v28;
    v31 = v30;
    secondaryAccessoryControl2 = [(CAMControlStatusBar *)self secondaryAccessoryControl];
    [secondaryAccessoryControl2 setFrame:{v25, v27, v29, v31}];
    goto LABEL_10;
  }

  if (!origin)
  {
    secondaryAccessoryControl = [(CAMControlStatusBar *)self primaryAccessoryControl];
    v17 = v15[2](v15, secondaryAccessoryControl, 16.0);
    v19 = v18;
    v21 = v20;
    v23 = v22;
    secondaryAccessoryControl2 = [(CAMControlStatusBar *)self primaryAccessoryControl];
    [secondaryAccessoryControl2 setFrame:{v17, v19, v21, v23}];
LABEL_10:
  }

  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __75__CAMControlStatusBar__layoutDesiredViewsForTypes_inDesiredTypes_atOrigin___block_invoke_2;
  v34[3] = &unk_1E76FCD88;
  v34[4] = self;
  v32 = v15;
  v36 = v32;
  v33 = typesCopy;
  v35 = v33;
  [desiredTypesCopy enumerateObjectsUsingBlock:v34];

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

- (void)_prelayoutForNewTypes:(id)types oldTypes:(id)oldTypes atOrigin:(int64_t)origin
{
  v28 = *MEMORY[0x1E69E9840];
  typesCopy = types;
  oldTypesCopy = oldTypes;
  v10 = [MEMORY[0x1E695DFA8] setWithArray:typesCopy];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v11 = oldTypesCopy;
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
  v21 = typesCopy;
  originCopy = origin;
  v17 = typesCopy;
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

- (void)_updateExpandingInsetsForControl:(id)control
{
  controlCopy = control;
  [controlCopy frame];
  [controlCopy alignmentRectForFrame:?];
  [(CAMControlStatusBar *)self bounds];
  v12 = CGRectInset(v11, 12.0, 0.0);
  x = v12.origin.x;
  y = v12.origin.y;
  width = v12.size.width;
  height = v12.size.height;
  superview = [controlCopy superview];
  [(CAMControlStatusBar *)self convertRect:superview toView:x, y, width, height];

  CEKRectInsetsInRect();
  [controlCopy setExpansionInsets:?];
}

- (id)_createIndicatorForType:(unint64_t)type
{
  v5 = off_1E76F3E48;
  switch(type)
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

  [(CAMControlStatusIndicator *)v6 setControlStatusType:type];
  [(CAMVideoConfigurationStatusIndicator *)v6 addTarget:self action:sel__handleStatusIndicatorTapped_ forControlEvents:64];
LABEL_20:
  [(CAMVideoConfigurationStatusIndicator *)v6 setAlpha:0.0];

  return v6;
}

- (id)indicatorForType:(unint64_t)type
{
  _statusIndicatorsByType = [(CAMControlStatusBar *)self _statusIndicatorsByType];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:type];
  v6 = [_statusIndicatorsByType objectForKeyedSubscript:v5];

  return v6;
}

- (CAMFlashExpandableStatusIndicator)flashIndicator
{
  _statusIndicatorsByType = [(CAMControlStatusBar *)self _statusIndicatorsByType];
  v3 = [_statusIndicatorsByType objectForKeyedSubscript:&unk_1F16C82A0];

  return v3;
}

- (CAMLivePhotoStatusIndicator)livePhotoIndicator
{
  _statusIndicatorsByType = [(CAMControlStatusBar *)self _statusIndicatorsByType];
  v3 = [_statusIndicatorsByType objectForKeyedSubscript:&unk_1F16C82B8];

  return v3;
}

- (CAMHDRStatusIndicator)hdrIndicator
{
  _statusIndicatorsByType = [(CAMControlStatusBar *)self _statusIndicatorsByType];
  v3 = [_statusIndicatorsByType objectForKeyedSubscript:&unk_1F16C82D0];

  return v3;
}

- (CAMTimerStatusIndicator)timerIndicator
{
  _statusIndicatorsByType = [(CAMControlStatusBar *)self _statusIndicatorsByType];
  v3 = [_statusIndicatorsByType objectForKeyedSubscript:&unk_1F16C82E8];

  return v3;
}

- (CAMFilterStatusIndicator)filterIndicator
{
  _statusIndicatorsByType = [(CAMControlStatusBar *)self _statusIndicatorsByType];
  v3 = [_statusIndicatorsByType objectForKeyedSubscript:&unk_1F16C8300];

  return v3;
}

- (CAMApertureStatusIndicator)apertureIndicator
{
  _statusIndicatorsByType = [(CAMControlStatusBar *)self _statusIndicatorsByType];
  v3 = [_statusIndicatorsByType objectForKeyedSubscript:&unk_1F16C8318];

  return v3;
}

- (CAMIntensityStatusIndicator)intensityIndicator
{
  _statusIndicatorsByType = [(CAMControlStatusBar *)self _statusIndicatorsByType];
  v3 = [_statusIndicatorsByType objectForKeyedSubscript:&unk_1F16C8330];

  return v3;
}

- (CAMExposureBiasStatusIndicator)exposureBiasIndicator
{
  _statusIndicatorsByType = [(CAMControlStatusBar *)self _statusIndicatorsByType];
  v3 = [_statusIndicatorsByType objectForKeyedSubscript:&unk_1F16C8348];

  return v3;
}

- (CAMVideoConfigurationStatusIndicator)videoConfigurationIndicator
{
  _statusIndicatorsByType = [(CAMControlStatusBar *)self _statusIndicatorsByType];
  v3 = [_statusIndicatorsByType objectForKeyedSubscript:&unk_1F16C8360];

  return v3;
}

- (CAMNightModeStatusIndicator)nightModeIndicator
{
  _statusIndicatorsByType = [(CAMControlStatusBar *)self _statusIndicatorsByType];
  v3 = [_statusIndicatorsByType objectForKeyedSubscript:&unk_1F16C8378];

  return v3;
}

- (CAMSemanticStyleStatusIndicator)semanticStyleIndicator
{
  _statusIndicatorsByType = [(CAMControlStatusBar *)self _statusIndicatorsByType];
  v3 = [_statusIndicatorsByType objectForKeyedSubscript:&unk_1F16C8390];

  return v3;
}

- (CAMSmartStyleStatusIndicator)smartStyleIndicator
{
  _statusIndicatorsByType = [(CAMControlStatusBar *)self _statusIndicatorsByType];
  v3 = [_statusIndicatorsByType objectForKeyedSubscript:&unk_1F16C83A8];

  return v3;
}

- (CAMRAWStatusIndicator)rawIndicator
{
  _statusIndicatorsByType = [(CAMControlStatusBar *)self _statusIndicatorsByType];
  v3 = [_statusIndicatorsByType objectForKeyedSubscript:&unk_1F16C83C0];

  return v3;
}

- (CAMPhotoFormatStatusIndicator)photoFormatStatusIndicator
{
  _statusIndicatorsByType = [(CAMControlStatusBar *)self _statusIndicatorsByType];
  v3 = [_statusIndicatorsByType objectForKeyedSubscript:&unk_1F16C83D8];

  return v3;
}

- (CAMProResStatusIndicator)proResIndicator
{
  _statusIndicatorsByType = [(CAMControlStatusBar *)self _statusIndicatorsByType];
  v3 = [_statusIndicatorsByType objectForKeyedSubscript:&unk_1F16C83F0];

  return v3;
}

- (CAMSharedLibraryStatusIndicator)sharedLibraryIndicator
{
  _statusIndicatorsByType = [(CAMControlStatusBar *)self _statusIndicatorsByType];
  v3 = [_statusIndicatorsByType objectForKeyedSubscript:&unk_1F16C8408];

  return v3;
}

- (CAMVideoStabilizationStatusIndicator)videoStabilizationIndicator
{
  _statusIndicatorsByType = [(CAMControlStatusBar *)self _statusIndicatorsByType];
  v3 = [_statusIndicatorsByType objectForKeyedSubscript:&unk_1F16C8420];

  return v3;
}

- (void)_handleStatusIndicatorTapped:(id)tapped
{
  tappedCopy = tapped;
  delegate = [(CAMControlStatusBar *)self delegate];
  controlStatusType = [tappedCopy controlStatusType];

  [delegate controlStatusBar:self didReceiveTapInIndicatorForType:controlStatusType];
}

- (void)setPrimaryDesiredIndicatorTypes:(id)types
{
  typesCopy = types;
  secondaryDesiredIndicatorTypes = [(CAMControlStatusBar *)self secondaryDesiredIndicatorTypes];
  [(CAMControlStatusBar *)self setPrimaryDesiredIndicatorTypes:typesCopy secondaryDesiredIndicatorTypes:secondaryDesiredIndicatorTypes animated:0];
}

- (void)setSecondaryDesiredIndicatorTypes:(id)types
{
  typesCopy = types;
  primaryDesiredIndicatorTypes = [(CAMControlStatusBar *)self primaryDesiredIndicatorTypes];
  [(CAMControlStatusBar *)self setPrimaryDesiredIndicatorTypes:primaryDesiredIndicatorTypes secondaryDesiredIndicatorTypes:typesCopy animated:0];
}

- (void)setPrimaryDesiredIndicatorTypes:(id)types secondaryDesiredIndicatorTypes:(id)indicatorTypes animated:(BOOL)animated
{
  animatedCopy = animated;
  typesCopy = types;
  indicatorTypesCopy = indicatorTypes;
  if (![typesCopy isEqual:self->_primaryDesiredIndicatorTypes] || (objc_msgSend(indicatorTypesCopy, "isEqual:", self->_secondaryDesiredIndicatorTypes) & 1) == 0)
  {
    v10 = self->_primaryDesiredIndicatorTypes;
    v11 = self->_secondaryDesiredIndicatorTypes;
    v12 = [typesCopy copy];
    v13 = [indicatorTypesCopy copy];
    objc_storeStrong(&self->_primaryDesiredIndicatorTypes, v12);
    objc_storeStrong(&self->_secondaryDesiredIndicatorTypes, v13);
    v14 = [MEMORY[0x1E695DFA8] setWithArray:v13];
    [v14 addObjectsFromArray:v12];
    [(CAMControlStatusBar *)self _setAllDesiredTypes:v14];
    [(CAMControlStatusBar *)self _ensureDesiredIndicators];
    if (animatedCopy)
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

- (BOOL)isIndicatorDesiredForType:(unint64_t)type
{
  _allDesiredTypes = [(CAMControlStatusBar *)self _allDesiredTypes];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:type];
  v6 = [_allDesiredTypes containsObject:v5];

  return v6;
}

- (void)collapseExpandedIndicatorAnimated:(BOOL)animated
{
  animatedCopy = animated;
  _expandedControl = [(CAMControlStatusBar *)self _expandedControl];
  [_expandedControl setExpanded:0 animated:animatedCopy];
}

- (BOOL)isControlExpanded
{
  _expandedControl = [(CAMControlStatusBar *)self _expandedControl];
  v3 = _expandedControl != 0;

  return v3;
}

- (void)setDirectionIndicatorVisible:(BOOL)visible animated:(BOOL)animated
{
  if (self->_directionIndicatorVisible != visible)
  {
    animatedCopy = animated;
    self->_directionIndicatorVisible = visible;
    if (visible)
    {
      directionIndicator = [(CAMControlStatusBar *)self directionIndicator];

      if (!directionIndicator)
      {
        v8 = objc_alloc_init(CAMDirectionalIndicator);
        directionIndicator = self->_directionIndicator;
        self->_directionIndicator = v8;

        [(CAMControlStatusBar *)self addSubview:self->_directionIndicator];
        if (animatedCopy)
        {
          [(CAMDirectionalIndicator *)self->_directionIndicator setAlpha:0.0];
        }
      }
    }

    [(CAMControlStatusBar *)self _updateDirectionIndicatorAlphaAnimated:animatedCopy];
  }
}

- (void)_setDirectionIndicatorHiddenForSpace:(BOOL)space
{
  if (self->__directionIndicatorHiddenForSpace != space)
  {
    self->__directionIndicatorHiddenForSpace = space;
    [(CAMControlStatusBar *)self _updateDirectionIndicatorAlphaAnimated:0];
  }
}

- (void)_updateDirectionIndicatorAlphaAnimated:(BOOL)animated
{
  if ([(CAMControlStatusBar *)self isDirectionIndicatorVisible]&& ![(CAMControlStatusBar *)self _isDirectionIndicatorHiddenForSpace])
  {
    _expandedControl = [(CAMControlStatusBar *)self _expandedControl];
    v4 = _expandedControl == 0;
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

- (void)setPrimaryAccessoryControl:(id)control
{
  controlCopy = control;
  if (self->_primaryAccessoryControl != controlCopy)
  {
    v8 = controlCopy;
    selfCopy = self;
    superview = [(UIView *)self->_primaryAccessoryControl superview];

    if (superview == selfCopy)
    {
      [(UIView *)self->_primaryAccessoryControl removeFromSuperview];
    }

    objc_storeStrong(&self->_primaryAccessoryControl, control);
    [(CAMControlStatusBar *)selfCopy addSubview:self->_primaryAccessoryControl];

    controlCopy = v8;
  }
}

- (void)setSecondaryAccessoryControl:(id)control animated:(BOOL)animated
{
  animatedCopy = animated;
  controlCopy = control;
  if (self->_secondaryAccessoryControl == controlCopy)
  {
    goto LABEL_10;
  }

  selfCopy = self;
  superview = [(UIView *)self->_secondaryAccessoryControl superview];

  if (superview == selfCopy)
  {
    [(UIView *)self->_secondaryAccessoryControl removeFromSuperview];
    if (!animatedCopy)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  if (animatedCopy)
  {
LABEL_4:
    [(CAMControlStatusBar *)selfCopy layoutIfNeeded];
  }

LABEL_5:
  objc_storeStrong(&self->_secondaryAccessoryControl, control);
  if (controlCopy)
  {
    [(CAMControlStatusBar *)selfCopy addSubview:self->_secondaryAccessoryControl];
  }

  [(CAMControlStatusBar *)selfCopy setNeedsLayout];
  if (animatedCopy)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __61__CAMControlStatusBar_setSecondaryAccessoryControl_animated___block_invoke;
    v10[3] = &unk_1E76F77B0;
    v10[4] = selfCopy;
    [MEMORY[0x1E69DD250] animateWithDuration:2 delay:v10 usingSpringWithDamping:0 initialSpringVelocity:0.5 options:0.0 animations:1.0 completion:1.0];
  }

LABEL_10:
}

- (void)setOrientation:(int64_t)orientation animated:(BOOL)animated
{
  v18 = *MEMORY[0x1E69E9840];
  if (self->_orientation != orientation)
  {
    animatedCopy = animated;
    self->_orientation = orientation;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    _statusIndicatorsByType = [(CAMControlStatusBar *)self _statusIndicatorsByType];
    allValues = [_statusIndicatorsByType allValues];

    v8 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
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
            objc_enumerationMutation(allValues);
          }

          v12 = *(*(&v13 + 1) + 8 * i);
          if ([v12 supportsOrientations])
          {
            [v12 setOrientation:orientation animated:animatedCopy];
          }

          else
          {
            [CAMView rotateView:v12 toInterfaceOrientation:orientation animated:animatedCopy];
          }
        }

        v9 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
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
  _allDesiredTypes = [(CAMControlStatusBar *)self _allDesiredTypes];
  v4 = [_allDesiredTypes countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(_allDesiredTypes);
        }

        integerValue = [*(*(&v9 + 1) + 8 * v7) integerValue];
        [(CAMControlStatusBar *)self _loadIndicatorIfNeededForType:integerValue];
        [(CAMControlStatusBar *)self _installIndicatorIfNeededForType:integerValue];
        ++v7;
      }

      while (v5 != v7);
      v5 = [_allDesiredTypes countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)_loadIndicatorIfNeededForType:(unint64_t)type
{
  _statusIndicatorsByType = [(CAMControlStatusBar *)self _statusIndicatorsByType];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:type];
  v6 = [_statusIndicatorsByType objectForKeyedSubscript:v5];

  if (!v6)
  {
    v6 = [(CAMControlStatusBar *)self _createIndicatorForType:type];
    [v6 setOrientation:{-[CAMControlStatusBar orientation](self, "orientation")}];
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:type];
    [_statusIndicatorsByType setObject:v6 forKeyedSubscript:v7];

    if (objc_opt_respondsToSelector())
    {
      [v6 setDelegate:self];
    }

    delegate = [(CAMControlStatusBar *)self delegate];
    [delegate controlStatusBar:self didCreateIndicatorForType:type];
  }
}

- (void)_installIndicatorIfNeededForType:(unint64_t)type
{
  selfCopy = self;
  _statusIndicatorsByType = [(CAMControlStatusBar *)selfCopy _statusIndicatorsByType];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:type];
  v6 = [_statusIndicatorsByType objectForKeyedSubscript:v5];

  if (v6)
  {
    superview = [v6 superview];

    if (superview != selfCopy)
    {
      [(CAMControlStatusBar *)selfCopy addSubview:v6];
    }
  }
}

- (void)_updateIndicatorsVisibilityAnimated:(BOOL)animated
{
  animatedCopy = animated;
  _allVisibleTypes = [(CAMControlStatusBar *)self _allVisibleTypes];
  if (animatedCopy)
  {
    v6 = 0.5;
  }

  else
  {
    v6 = 0.0;
  }

  _expandedControl = [(CAMControlStatusBar *)self _expandedControl];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __59__CAMControlStatusBar__updateIndicatorsVisibilityAnimated___block_invoke;
  v10[3] = &unk_1E76F7938;
  v10[4] = self;
  v11 = _allVisibleTypes;
  v12 = _expandedControl;
  v8 = _expandedControl;
  v9 = _allVisibleTypes;
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

- (void)controlStatusIndicatorDidChangeIntrinsicContentSize:(id)size animated:(BOOL)animated
{
  animatedCopy = animated;
  [(CAMControlStatusBar *)self setNeedsLayout];
  if (animatedCopy)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __84__CAMControlStatusBar_controlStatusIndicatorDidChangeIntrinsicContentSize_animated___block_invoke;
    v6[3] = &unk_1E76F77B0;
    v6[4] = self;
    [MEMORY[0x1E69DD250] animateWithDuration:2 delay:v6 usingSpringWithDamping:0 initialSpringVelocity:0.5 options:0.0 animations:1.0 completion:1.0];
  }
}

- (void)expandingControl:(id)control willChangeExpanded:(BOOL)expanded animated:(BOOL)animated
{
  expandedCopy = expanded;
  controlCopy = control;
  delegate = [(CAMControlStatusBar *)self delegate];
  [delegate controlStatusBar:self willChangeExpandingControl:controlCopy expanded:expandedCopy];

  if (expandedCopy)
  {
    [(CAMControlStatusBar *)self _updateExpandingInsetsForControl:controlCopy];
  }
}

- (void)expandingControl:(id)control didChangeExpanded:(BOOL)expanded animated:(BOOL)animated
{
  animatedCopy = animated;
  expandedCopy = expanded;
  controlCopy = control;
  _expandedControl = [(CAMControlStatusBar *)self _expandedControl];
  v9 = _expandedControl;
  if (expandedCopy)
  {
    [(CAMControlStatusBar *)self _setExpandedControl:controlCopy];
    [v9 setExpanded:0 animated:animatedCopy];
    superview = [controlCopy superview];
    [superview bringSubviewToFront:controlCopy];

LABEL_6:
    [(CAMControlStatusBar *)self _updateIndicatorsVisibilityAnimated:animatedCopy];
    [(CAMControlStatusBar *)self _updateDirectionIndicatorAlphaAnimated:animatedCopy];
    goto LABEL_7;
  }

  if (v9 == controlCopy)
  {
    [(CAMControlStatusBar *)self _setExpandedControl:0];
  }

  _expandedControl2 = [(CAMControlStatusBar *)self _expandedControl];

  if (!_expandedControl2)
  {
    goto LABEL_6;
  }

LABEL_7:
  delegate = [(CAMControlStatusBar *)self delegate];
  [delegate controlStatusBar:self didChangeExpandingControl:controlCopy expanded:expandedCopy];
}

- (void)_iterateViewsForHUDManager:(id)manager withItemFoundBlock:(id)block
{
  v34 = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  blockCopy = block;
  _expandedControl = [(CAMControlStatusBar *)self _expandedControl];

  if (_expandedControl)
  {
    _expandedControl2 = [(CAMControlStatusBar *)self _expandedControl];
LABEL_3:
    v10 = _expandedControl2;
    blockCopy[2](blockCopy, _expandedControl2);

    goto LABEL_23;
  }

  [managerCopy locationOfAccessibilityGestureInView:self];
  v12 = v11;
  v14 = v13;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  _allVisibleTypes = [(CAMControlStatusBar *)self _allVisibleTypes];
  v16 = [_allVisibleTypes countByEnumeratingWithState:&v29 objects:v33 count:16];
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
          objc_enumerationMutation(_allVisibleTypes);
        }

        v20 = *(*(&v29 + 1) + 8 * v19);
        _statusIndicatorsByType = [(CAMControlStatusBar *)self _statusIndicatorsByType];
        v22 = [_statusIndicatorsByType objectForKeyedSubscript:v20];

        [v22 frame];
        v35.x = v12;
        v35.y = v14;
        if (CGRectContainsPoint(v39, v35))
        {
          blockCopy[2](blockCopy, v22);

          goto LABEL_22;
        }

        ++v19;
      }

      while (v17 != v19);
      v17 = [_allVisibleTypes countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (v17)
      {
        continue;
      }

      break;
    }
  }

  if ([(CAMControlStatusBar *)self isDirectionIndicatorVisible])
  {
    directionIndicator = [(CAMControlStatusBar *)self directionIndicator];
    [directionIndicator frame];
    v36.x = v12;
    v36.y = v14;
    v24 = CGRectContainsPoint(v40, v36);

    if (v24)
    {
      _expandedControl2 = [(CAMControlStatusBar *)self directionIndicator];
      goto LABEL_3;
    }
  }

  _allVisibleTypes = [(CAMControlStatusBar *)self primaryAccessoryControl];
  secondaryAccessoryControl = [(CAMControlStatusBar *)self secondaryAccessoryControl];
  if ([_allVisibleTypes conformsToProtocol:&unk_1F16D4378] && (objc_msgSend(_allVisibleTypes, "frame"), v37.x = v12, v37.y = v14, v26 = CGRectContainsPoint(v41, v37), v27 = _allVisibleTypes, v26) || objc_msgSend(secondaryAccessoryControl, "conformsToProtocol:", &unk_1F16D4378) && (objc_msgSend(secondaryAccessoryControl, "frame"), v38.x = v12, v38.y = v14, v28 = CGRectContainsPoint(v42, v38), v27 = secondaryAccessoryControl, v28))
  {
    blockCopy[2](blockCopy, v27);
  }

LABEL_22:
LABEL_23:
}

- (id)hudItemForAccessibilityHUDManager:(id)manager
{
  managerCopy = manager;
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
  v5 = managerCopy;
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

- (void)selectedByAccessibilityHUDManager:(id)manager
{
  managerCopy = manager;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __57__CAMControlStatusBar_selectedByAccessibilityHUDManager___block_invoke;
  v6[3] = &unk_1E76F79D8;
  v7 = managerCopy;
  v5 = managerCopy;
  [(CAMControlStatusBar *)self _iterateViewsForHUDManager:v5 withItemFoundBlock:v6];
}

- (CAMControlStatusBarDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end