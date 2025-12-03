@interface HKLollipopController
+ (BOOL)pointSelectionContextsHaveUserInfo:(id)info;
- (BOOL)_selectionHasMoved:(id)moved;
- (HKLollipopController)initWithAnnotationDataSource:(id)source parentView:(id)view delegate:(id)delegate;
- (HKLollipopDelegate)delegate;
- (double)_backgroundViewCornerRadius;
- (double)_lollipopExtensionLength;
- (double)_lollipopExtensionWidth;
- (id)_lollipopAnnotationColor;
- (id)_lollipopExtensionColor;
- (id)_lollipopFieldColor;
- (id)_stickLocationsFromPointContexts:(id)contexts;
- (id)firstLollipopDateSinceDelta:(double)delta;
- (void)_bringViewsToFront;
- (void)_positionAnnotationViewWithStickLocations:(id)locations;
- (void)_rebuildExtensionsWithStickLocations:(id)locations;
- (void)_setAlpha:(double)alpha;
- (void)_setExtensionViewBackgrounds;
- (void)_setHidden:(BOOL)hidden;
- (void)setInvisibleAnimated:(BOOL)animated;
- (void)setVisibleWithRect:(CGRect)rect pointContexts:(id)contexts animated:(BOOL)animated;
- (void)updateWithPointContexts:(id)contexts;
@end

@implementation HKLollipopController

- (HKLollipopController)initWithAnnotationDataSource:(id)source parentView:(id)view delegate:(id)delegate
{
  sourceCopy = source;
  viewCopy = view;
  delegateCopy = delegate;
  v23.receiver = self;
  v23.super_class = HKLollipopController;
  v11 = [(HKLollipopController *)&v23 init];
  if (v11)
  {
    v12 = [[HKInteractiveChartAnnotationView alloc] initWithContext:1];
    annotationView = v11->_annotationView;
    v11->_annotationView = v12;

    v14 = [MEMORY[0x1E696AEC0] hk_chartAccessibilityIdentifier:@"LollipopContainer"];
    [(HKInteractiveChartAnnotationView *)v11->_annotationView setAccessibilityIdentifier:v14];

    [(HKInteractiveChartAnnotationView *)v11->_annotationView setTranslatesAutoresizingMaskIntoConstraints:1];
    [(HKInteractiveChartAnnotationView *)v11->_annotationView setDataSource:sourceCopy];
    objc_storeWeak(&v11->_delegate, delegateCopy);
    objc_storeStrong(&v11->_parentView, view);
    v15 = objc_alloc(MEMORY[0x1E69DD250]);
    v16 = [v15 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    fieldView = v11->_fieldView;
    v11->_fieldView = v16;

    [(UIView *)v11->_fieldView setPreservesSuperviewLayoutMargins:1];
    v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
    extensionViews = v11->_extensionViews;
    v11->_extensionViews = v18;

    lastSelectionLocation = v11->_lastSelectionLocation;
    v11->_lastSelectionLocation = 0;

    lastFirstLollipopDate = v11->_lastFirstLollipopDate;
    v11->_lastFirstLollipopDate = 0;

    v11->_lastDismissTime = 0.0;
    *&v11->_centerLollipopVertically = 0;
    [(UIView *)v11->_parentView addSubview:v11->_fieldView];
    [(UIView *)v11->_fieldView addSubview:v11->_annotationView];
    [(HKLollipopController *)v11 setInvisibleAnimated:0];
  }

  return v11;
}

- (id)_lollipopFieldColor
{
  delegate = [(HKLollipopController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(HKLollipopController *)self delegate];
    lollipopFieldColor = [delegate2 lollipopFieldColor];
  }

  else
  {
    lollipopFieldColor = [MEMORY[0x1E69DC888] whiteColor];
  }

  return lollipopFieldColor;
}

- (id)_lollipopAnnotationColor
{
  delegate = [(HKLollipopController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(HKLollipopController *)self delegate];
    lollipopAnnotationColor = [delegate2 lollipopAnnotationColor];
  }

  else
  {
    lollipopAnnotationColor = [MEMORY[0x1E69DC888] blackColor];
  }

  return lollipopAnnotationColor;
}

- (id)_lollipopExtensionColor
{
  delegate = [(HKLollipopController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(HKLollipopController *)self delegate];
    lollipopExtensionColor = [delegate2 lollipopExtensionColor];
  }

  else
  {
    lollipopExtensionColor = [MEMORY[0x1E69DC888] hk_chartLollipopStickColor];
  }

  return lollipopExtensionColor;
}

- (double)_lollipopExtensionLength
{
  delegate = [(HKLollipopController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return -1.0;
  }

  delegate2 = [(HKLollipopController *)self delegate];
  [delegate2 lollipopExtensionLength];
  v7 = v6;

  return v7;
}

- (double)_lollipopExtensionWidth
{
  delegate = [(HKLollipopController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 2.0;
  }

  delegate2 = [(HKLollipopController *)self delegate];
  [delegate2 lollipopExtensionWidth];
  v7 = v6;

  return v7;
}

- (double)_backgroundViewCornerRadius
{
  delegate = [(HKLollipopController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0.0;
  }

  delegate2 = [(HKLollipopController *)self delegate];
  [delegate2 lollipopBackgroundViewCornerRadius];
  v7 = v6;

  return v7;
}

- (void)_setExtensionViewBackgrounds
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  extensionViews = [(HKLollipopController *)self extensionViews];
  v4 = [extensionViews countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(extensionViews);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        _lollipopExtensionColor = [(HKLollipopController *)self _lollipopExtensionColor];
        [v8 setBackgroundColor:_lollipopExtensionColor];

        ++v7;
      }

      while (v5 != v7);
      v5 = [extensionViews countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (void)updateWithPointContexts:(id)contexts
{
  contextsCopy = contexts;
  if ([(HKLollipopController *)self _selectionHasMoved:?])
  {
    delegate = [(HKLollipopController *)self delegate];
    annotationView = [(HKLollipopController *)self annotationView];
    dataSource = [annotationView dataSource];
    [delegate updateAnnotationDataSource:dataSource pointContexts:contextsCopy];

    annotationView2 = [(HKLollipopController *)self annotationView];
    [annotationView2 reloadData];

    _lollipopAnnotationColor = [(HKLollipopController *)self _lollipopAnnotationColor];
    annotationView3 = [(HKLollipopController *)self annotationView];
    [annotationView3 setBackgroundColor:_lollipopAnnotationColor];

    v10 = [(HKLollipopController *)self _stickLocationsFromPointContexts:contextsCopy];
    [(HKLollipopController *)self _positionAnnotationViewWithStickLocations:v10];
    [(HKLollipopController *)self _rebuildExtensionsWithStickLocations:v10];
  }
}

- (BOOL)_selectionHasMoved:(id)moved
{
  v26 = *MEMORY[0x1E69E9840];
  movedCopy = moved;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = movedCopy;
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v6);
        }

        selectedRangeXValues = [*(*(&v21 + 1) + 8 * i) selectedRangeXValues];
        [v5 addObject:selectedRangeXValues];
      }

      v8 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v8);
  }

  lastSelectionLocation = [(HKLollipopController *)self lastSelectionLocation];
  if (lastSelectionLocation && (v13 = lastSelectionLocation, -[HKLollipopController lastSelectionLocation](self, "lastSelectionLocation"), v14 = objc_claimAutoreleasedReturnValue(), v15 = [v14 isEqual:v5], v14, v13, (v15 & 1) != 0))
  {
    v16 = 0;
  }

  else
  {
    [(HKLollipopController *)self setLastSelectionLocation:v5, v21];
    firstObject = [v6 firstObject];
    selectedPointValueRange = [firstObject selectedPointValueRange];
    startDate = [selectedPointValueRange startDate];
    [(HKLollipopController *)self setLastFirstLollipopDate:startDate];

    v16 = 1;
  }

  return v16;
}

- (id)_stickLocationsFromPointContexts:(id)contexts
{
  v31 = *MEMORY[0x1E69E9840];
  contextsCopy = contexts;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v4 = [contextsCopy countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v25;
    v7 = 1.79769313e308;
    v8 = -1.79769313e308;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v25 != v6)
        {
          objc_enumerationMutation(contextsCopy);
        }

        v10 = *(*(&v24 + 1) + 8 * i);
        selectedRangeXValues = [v10 selectedRangeXValues];
        minValue = [selectedRangeXValues minValue];
        [minValue doubleValue];
        v14 = v13;

        if (v7 >= v14)
        {
          v7 = v14;
        }

        selectedRangeXValues2 = [v10 selectedRangeXValues];
        maxValue = [selectedRangeXValues2 maxValue];
        [maxValue doubleValue];
        v18 = v17;

        if (v8 < v18)
        {
          v8 = v18;
        }
      }

      v5 = [contextsCopy countByEnumeratingWithState:&v24 objects:v30 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 1.79769313e308;
    v8 = -1.79769313e308;
  }

  v19 = [MEMORY[0x1E696AD98] numberWithDouble:v7];
  v20 = v19;
  if (vabdd_f64(v8, v7) >= 0.1)
  {
    v28[0] = v19;
    v22 = [MEMORY[0x1E696AD98] numberWithDouble:v8];
    v28[1] = v22;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:2];
  }

  else
  {
    v29 = v19;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v29 count:1];
  }

  return v21;
}

- (void)_positionAnnotationViewWithStickLocations:(id)locations
{
  v46 = *MEMORY[0x1E69E9840];
  locationsCopy = locations;
  fieldView = [(HKLollipopController *)self fieldView];
  [fieldView layoutMargins];
  v39 = v6;

  fieldView2 = [(HKLollipopController *)self fieldView];
  [fieldView2 frame];
  v9 = v8;
  v40 = v10;
  v12 = v11;

  annotationView = [(HKLollipopController *)self annotationView];
  [annotationView systemLayoutSizeFittingSize:{*MEMORY[0x1E69DE090], *(MEMORY[0x1E69DE090] + 8)}];
  v15 = v14;
  v17 = v16;

  centerLollipopVertically = [(HKLollipopController *)self centerLollipopVertically];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v19 = locationsCopy;
  v20 = [v19 countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v42;
    v23 = 1.79769313e308;
    v24 = -1.79769313e308;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v42 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v26 = *(*(&v41 + 1) + 8 * i);
        [v26 doubleValue];
        v28 = v9 + v27;
        if (v23 >= v28)
        {
          v23 = v28;
        }

        [v26 doubleValue];
        v30 = v9 + v29;
        if (v24 < v30)
        {
          v24 = v30;
        }
      }

      v21 = [v19 countByEnumeratingWithState:&v41 objects:v45 count:16];
    }

    while (v21);
  }

  else
  {
    v23 = 1.79769313e308;
    v24 = -1.79769313e308;
  }

  if (v17 >= v12)
  {
    v17 = v12;
  }

  v31 = v12 - v17 + -0.5;
  if (centerLollipopVertically)
  {
    v31 = (v12 - v17) * 0.5;
  }

  v38 = v31;
  v32 = fmax(v39, 16.0);

  v33 = v24 - v23 + v32 * 2.0;
  if (v15 >= v33)
  {
    v33 = v15;
  }

  if (v33 >= v40 + v32 * -2.0)
  {
    v34 = v40 + v32 * -2.0;
  }

  else
  {
    v34 = v33;
  }

  v35 = (v24 + v23) * 0.5 + v34 * -0.5;
  if (v35 < v32 + v9)
  {
    v35 = v32 + v9;
  }

  if (v32 + v34 + v35 > v9 + v40)
  {
    v35 = v9 + v40 - v32 - v34;
  }

  v36 = v35 - v9;
  annotationView2 = [(HKLollipopController *)self annotationView];
  [annotationView2 setFrame:{v36, v38, v34, v17}];
}

- (void)_rebuildExtensionsWithStickLocations:(id)locations
{
  v60 = *MEMORY[0x1E69E9840];
  locationsCopy = locations;
  v5 = [locationsCopy count];
  extensionViews = [(HKLollipopController *)self extensionViews];
  v7 = [extensionViews count];

  if (v5 != v7)
  {
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    extensionViews2 = [(HKLollipopController *)self extensionViews];
    v9 = [extensionViews2 countByEnumeratingWithState:&v55 objects:v59 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v56;
      do
      {
        v12 = 0;
        do
        {
          if (*v56 != v11)
          {
            objc_enumerationMutation(extensionViews2);
          }

          [*(*(&v55 + 1) + 8 * v12++) removeFromSuperview];
        }

        while (v10 != v12);
        v10 = [extensionViews2 countByEnumeratingWithState:&v55 objects:v59 count:16];
      }

      while (v10);
    }

    extensionViews3 = [(HKLollipopController *)self extensionViews];
    [extensionViews3 removeAllObjects];

    if ([locationsCopy count])
    {
      v14 = 0;
      v15 = *MEMORY[0x1E695F058];
      v16 = *(MEMORY[0x1E695F058] + 8);
      v17 = *(MEMORY[0x1E695F058] + 16);
      v18 = *(MEMORY[0x1E695F058] + 24);
      do
      {
        v19 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v15, v16, v17, v18}];
        parentView = [(HKLollipopController *)self parentView];
        [parentView addSubview:v19];

        extensionViews4 = [(HKLollipopController *)self extensionViews];
        [extensionViews4 addObject:v19];

        ++v14;
      }

      while (v14 < [locationsCopy count]);
    }

    [(HKLollipopController *)self _setExtensionViewBackgrounds];
  }

  [(HKLollipopController *)self _lollipopExtensionLength];
  if (v22 >= 0.0)
  {
    v23 = v22;
    fieldView = [(HKLollipopController *)self fieldView];
    [fieldView frame];
    v26 = v25;
    v28 = v27;

    annotationView = [(HKLollipopController *)self annotationView];
    [annotationView frame];
    v31 = v30;
    v33 = v32;

    annotationView2 = [(HKLollipopController *)self annotationView];
    [annotationView2 frame];
    v36 = v35;

    if ([locationsCopy count])
    {
      v37 = 0;
      v38 = v33 + v26 + v31;
      v39 = v23 + v26 + v28;
      do
      {
        v40 = [locationsCopy objectAtIndexedSubscript:v37];
        [v40 doubleValue];
        v42 = HKUIFloorToScreenScale(v41);
        fieldView2 = [(HKLollipopController *)self fieldView];
        [fieldView2 frame];
        v45 = v42 + v44;

        [(HKLollipopController *)self _lollipopExtensionWidth];
        v47 = v46;
        +[HKInteractiveChartAnnotationView annotationCornerRadius];
        v49 = vabdd_f64(v45, v36);
        v50 = 0.0;
        if (v49 <= v48)
        {
          v50 = v48 - floor(sqrt((v48 + v48) * v49 - (v45 - v36) * (v45 - v36)));
        }

        v51 = v38 - v50;
        v52 = v39 - (v38 - v50);
        extensionViews5 = [(HKLollipopController *)self extensionViews];
        v54 = [extensionViews5 objectAtIndexedSubscript:v37];
        [v54 setFrame:{v45 + v47 * -0.5, v51, v47, v52}];

        ++v37;
      }

      while (v37 < [locationsCopy count]);
    }
  }
}

- (void)setVisibleWithRect:(CGRect)rect pointContexts:(id)contexts animated:(BOOL)animated
{
  animatedCopy = animated;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  contextsCopy = contexts;
  if (![(HKLollipopController *)self isVisible])
  {
    [(HKLollipopController *)self setNoAnimationVisibility:1];
    fieldView = [(HKLollipopController *)self fieldView];
    [fieldView setFrame:{x, y, width, height}];

    _lollipopFieldColor = [(HKLollipopController *)self _lollipopFieldColor];
    fieldView2 = [(HKLollipopController *)self fieldView];
    [fieldView2 setBackgroundColor:_lollipopFieldColor];

    [(HKLollipopController *)self _backgroundViewCornerRadius];
    v16 = v15;
    fieldView3 = [(HKLollipopController *)self fieldView];
    layer = [fieldView3 layer];
    [layer setCornerRadius:v16];

    [(HKLollipopController *)self updateWithPointContexts:contextsCopy];
    _lollipopAnnotationColor = [(HKLollipopController *)self _lollipopAnnotationColor];
    annotationView = [(HKLollipopController *)self annotationView];
    [annotationView setBackgroundColor:_lollipopAnnotationColor];

    [(HKLollipopController *)self _setExtensionViewBackgrounds];
    [(HKLollipopController *)self _bringViewsToFront];
    [(HKLollipopController *)self _setHidden:0];
    if (animatedCopy)
    {
      [(HKLollipopController *)self _setAlpha:0.0];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __66__HKLollipopController_setVisibleWithRect_pointContexts_animated___block_invoke;
      v21[3] = &unk_1E81B55A8;
      v21[4] = self;
      [MEMORY[0x1E69DD250] animateWithDuration:v21 animations:0.12];
    }
  }
}

- (void)setInvisibleAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if ([(HKLollipopController *)self isVisible])
  {
    [(HKLollipopController *)self setLastDismissTime:CFAbsoluteTimeGetCurrent()];
    [(HKLollipopController *)self setNoAnimationVisibility:0];
    if (animatedCopy)
    {
      [(HKLollipopController *)self _setAlpha:1.0];
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __45__HKLollipopController_setInvisibleAnimated___block_invoke;
      v6[3] = &unk_1E81B55A8;
      v6[4] = self;
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __45__HKLollipopController_setInvisibleAnimated___block_invoke_2;
      v5[3] = &unk_1E81B7C10;
      v5[4] = self;
      [MEMORY[0x1E69DD250] animateWithDuration:v6 animations:v5 completion:0.12];
    }

    else
    {

      [(HKLollipopController *)self _setHidden:1];
    }
  }
}

uint64_t __45__HKLollipopController_setInvisibleAnimated___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) noAnimationVisibility];
  v3 = *(a1 + 32);
  if (v2)
  {

    return [v3 _setAlpha:1.0];
  }

  else
  {

    return [v3 _setHidden:1];
  }
}

- (id)firstLollipopDateSinceDelta:(double)delta
{
  if ([(HKLollipopController *)self isVisible]|| (Current = CFAbsoluteTimeGetCurrent(), [(HKLollipopController *)self lastDismissTime], Current - v6 <= delta))
  {
    lastFirstLollipopDate = [(HKLollipopController *)self lastFirstLollipopDate];
  }

  else
  {
    lastFirstLollipopDate = 0;
  }

  return lastFirstLollipopDate;
}

+ (BOOL)pointSelectionContextsHaveUserInfo:(id)info
{
  v15 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [infoCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = 0;
    v6 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(infoCopy);
        }

        userInfo = [*(*(&v10 + 1) + 8 * i) userInfo];
        v5 += [userInfo count];
      }

      v4 = [infoCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
    LOBYTE(v4) = v5 > 0;
  }

  return v4;
}

- (void)_bringViewsToFront
{
  v17 = *MEMORY[0x1E69E9840];
  parentView = [(HKLollipopController *)self parentView];
  fieldView = [(HKLollipopController *)self fieldView];
  [parentView bringSubviewToFront:fieldView];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  extensionViews = [(HKLollipopController *)self extensionViews];
  v6 = [extensionViews countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(extensionViews);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        parentView2 = [(HKLollipopController *)self parentView];
        [parentView2 bringSubviewToFront:v10];

        ++v9;
      }

      while (v7 != v9);
      v7 = [extensionViews countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

- (void)_setHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  v16 = *MEMORY[0x1E69E9840];
  fieldView = [(HKLollipopController *)self fieldView];
  [fieldView setHidden:hiddenCopy];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  extensionViews = [(HKLollipopController *)self extensionViews];
  v7 = [extensionViews countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(extensionViews);
        }

        [*(*(&v11 + 1) + 8 * v10++) setHidden:hiddenCopy];
      }

      while (v8 != v10);
      v8 = [extensionViews countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }

  [(HKLollipopController *)self setLastSelectionLocation:0];
}

- (void)_setAlpha:(double)alpha
{
  v16 = *MEMORY[0x1E69E9840];
  fieldView = [(HKLollipopController *)self fieldView];
  [fieldView setAlpha:alpha];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  extensionViews = [(HKLollipopController *)self extensionViews];
  v7 = [extensionViews countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(extensionViews);
        }

        [*(*(&v11 + 1) + 8 * v10++) setAlpha:alpha];
      }

      while (v8 != v10);
      v8 = [extensionViews countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (HKLollipopDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end