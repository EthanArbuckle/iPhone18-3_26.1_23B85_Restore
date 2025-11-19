@interface HKLollipopController
+ (BOOL)pointSelectionContextsHaveUserInfo:(id)a3;
- (BOOL)_selectionHasMoved:(id)a3;
- (HKLollipopController)initWithAnnotationDataSource:(id)a3 parentView:(id)a4 delegate:(id)a5;
- (HKLollipopDelegate)delegate;
- (double)_backgroundViewCornerRadius;
- (double)_lollipopExtensionLength;
- (double)_lollipopExtensionWidth;
- (id)_lollipopAnnotationColor;
- (id)_lollipopExtensionColor;
- (id)_lollipopFieldColor;
- (id)_stickLocationsFromPointContexts:(id)a3;
- (id)firstLollipopDateSinceDelta:(double)a3;
- (void)_bringViewsToFront;
- (void)_positionAnnotationViewWithStickLocations:(id)a3;
- (void)_rebuildExtensionsWithStickLocations:(id)a3;
- (void)_setAlpha:(double)a3;
- (void)_setExtensionViewBackgrounds;
- (void)_setHidden:(BOOL)a3;
- (void)setInvisibleAnimated:(BOOL)a3;
- (void)setVisibleWithRect:(CGRect)a3 pointContexts:(id)a4 animated:(BOOL)a5;
- (void)updateWithPointContexts:(id)a3;
@end

@implementation HKLollipopController

- (HKLollipopController)initWithAnnotationDataSource:(id)a3 parentView:(id)a4 delegate:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
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
    [(HKInteractiveChartAnnotationView *)v11->_annotationView setDataSource:v8];
    objc_storeWeak(&v11->_delegate, v10);
    objc_storeStrong(&v11->_parentView, a4);
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
  v3 = [(HKLollipopController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(HKLollipopController *)self delegate];
    v6 = [v5 lollipopFieldColor];
  }

  else
  {
    v6 = [MEMORY[0x1E69DC888] whiteColor];
  }

  return v6;
}

- (id)_lollipopAnnotationColor
{
  v3 = [(HKLollipopController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(HKLollipopController *)self delegate];
    v6 = [v5 lollipopAnnotationColor];
  }

  else
  {
    v6 = [MEMORY[0x1E69DC888] blackColor];
  }

  return v6;
}

- (id)_lollipopExtensionColor
{
  v3 = [(HKLollipopController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(HKLollipopController *)self delegate];
    v6 = [v5 lollipopExtensionColor];
  }

  else
  {
    v6 = [MEMORY[0x1E69DC888] hk_chartLollipopStickColor];
  }

  return v6;
}

- (double)_lollipopExtensionLength
{
  v3 = [(HKLollipopController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return -1.0;
  }

  v5 = [(HKLollipopController *)self delegate];
  [v5 lollipopExtensionLength];
  v7 = v6;

  return v7;
}

- (double)_lollipopExtensionWidth
{
  v3 = [(HKLollipopController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 2.0;
  }

  v5 = [(HKLollipopController *)self delegate];
  [v5 lollipopExtensionWidth];
  v7 = v6;

  return v7;
}

- (double)_backgroundViewCornerRadius
{
  v3 = [(HKLollipopController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0.0;
  }

  v5 = [(HKLollipopController *)self delegate];
  [v5 lollipopBackgroundViewCornerRadius];
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
  v3 = [(HKLollipopController *)self extensionViews];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        v9 = [(HKLollipopController *)self _lollipopExtensionColor];
        [v8 setBackgroundColor:v9];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (void)updateWithPointContexts:(id)a3
{
  v11 = a3;
  if ([(HKLollipopController *)self _selectionHasMoved:?])
  {
    v4 = [(HKLollipopController *)self delegate];
    v5 = [(HKLollipopController *)self annotationView];
    v6 = [v5 dataSource];
    [v4 updateAnnotationDataSource:v6 pointContexts:v11];

    v7 = [(HKLollipopController *)self annotationView];
    [v7 reloadData];

    v8 = [(HKLollipopController *)self _lollipopAnnotationColor];
    v9 = [(HKLollipopController *)self annotationView];
    [v9 setBackgroundColor:v8];

    v10 = [(HKLollipopController *)self _stickLocationsFromPointContexts:v11];
    [(HKLollipopController *)self _positionAnnotationViewWithStickLocations:v10];
    [(HKLollipopController *)self _rebuildExtensionsWithStickLocations:v10];
  }
}

- (BOOL)_selectionHasMoved:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = v4;
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

        v11 = [*(*(&v21 + 1) + 8 * i) selectedRangeXValues];
        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v8);
  }

  v12 = [(HKLollipopController *)self lastSelectionLocation];
  if (v12 && (v13 = v12, -[HKLollipopController lastSelectionLocation](self, "lastSelectionLocation"), v14 = objc_claimAutoreleasedReturnValue(), v15 = [v14 isEqual:v5], v14, v13, (v15 & 1) != 0))
  {
    v16 = 0;
  }

  else
  {
    [(HKLollipopController *)self setLastSelectionLocation:v5, v21];
    v17 = [v6 firstObject];
    v18 = [v17 selectedPointValueRange];
    v19 = [v18 startDate];
    [(HKLollipopController *)self setLastFirstLollipopDate:v19];

    v16 = 1;
  }

  return v16;
}

- (id)_stickLocationsFromPointContexts:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v24 objects:v30 count:16];
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
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v24 + 1) + 8 * i);
        v11 = [v10 selectedRangeXValues];
        v12 = [v11 minValue];
        [v12 doubleValue];
        v14 = v13;

        if (v7 >= v14)
        {
          v7 = v14;
        }

        v15 = [v10 selectedRangeXValues];
        v16 = [v15 maxValue];
        [v16 doubleValue];
        v18 = v17;

        if (v8 < v18)
        {
          v8 = v18;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v24 objects:v30 count:16];
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

- (void)_positionAnnotationViewWithStickLocations:(id)a3
{
  v46 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(HKLollipopController *)self fieldView];
  [v5 layoutMargins];
  v39 = v6;

  v7 = [(HKLollipopController *)self fieldView];
  [v7 frame];
  v9 = v8;
  v40 = v10;
  v12 = v11;

  v13 = [(HKLollipopController *)self annotationView];
  [v13 systemLayoutSizeFittingSize:{*MEMORY[0x1E69DE090], *(MEMORY[0x1E69DE090] + 8)}];
  v15 = v14;
  v17 = v16;

  v18 = [(HKLollipopController *)self centerLollipopVertically];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v19 = v4;
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
  if (v18)
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
  v37 = [(HKLollipopController *)self annotationView];
  [v37 setFrame:{v36, v38, v34, v17}];
}

- (void)_rebuildExtensionsWithStickLocations:(id)a3
{
  v60 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 count];
  v6 = [(HKLollipopController *)self extensionViews];
  v7 = [v6 count];

  if (v5 != v7)
  {
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v8 = [(HKLollipopController *)self extensionViews];
    v9 = [v8 countByEnumeratingWithState:&v55 objects:v59 count:16];
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
            objc_enumerationMutation(v8);
          }

          [*(*(&v55 + 1) + 8 * v12++) removeFromSuperview];
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v55 objects:v59 count:16];
      }

      while (v10);
    }

    v13 = [(HKLollipopController *)self extensionViews];
    [v13 removeAllObjects];

    if ([v4 count])
    {
      v14 = 0;
      v15 = *MEMORY[0x1E695F058];
      v16 = *(MEMORY[0x1E695F058] + 8);
      v17 = *(MEMORY[0x1E695F058] + 16);
      v18 = *(MEMORY[0x1E695F058] + 24);
      do
      {
        v19 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v15, v16, v17, v18}];
        v20 = [(HKLollipopController *)self parentView];
        [v20 addSubview:v19];

        v21 = [(HKLollipopController *)self extensionViews];
        [v21 addObject:v19];

        ++v14;
      }

      while (v14 < [v4 count]);
    }

    [(HKLollipopController *)self _setExtensionViewBackgrounds];
  }

  [(HKLollipopController *)self _lollipopExtensionLength];
  if (v22 >= 0.0)
  {
    v23 = v22;
    v24 = [(HKLollipopController *)self fieldView];
    [v24 frame];
    v26 = v25;
    v28 = v27;

    v29 = [(HKLollipopController *)self annotationView];
    [v29 frame];
    v31 = v30;
    v33 = v32;

    v34 = [(HKLollipopController *)self annotationView];
    [v34 frame];
    v36 = v35;

    if ([v4 count])
    {
      v37 = 0;
      v38 = v33 + v26 + v31;
      v39 = v23 + v26 + v28;
      do
      {
        v40 = [v4 objectAtIndexedSubscript:v37];
        [v40 doubleValue];
        v42 = HKUIFloorToScreenScale(v41);
        v43 = [(HKLollipopController *)self fieldView];
        [v43 frame];
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
        v53 = [(HKLollipopController *)self extensionViews];
        v54 = [v53 objectAtIndexedSubscript:v37];
        [v54 setFrame:{v45 + v47 * -0.5, v51, v47, v52}];

        ++v37;
      }

      while (v37 < [v4 count]);
    }
  }
}

- (void)setVisibleWithRect:(CGRect)a3 pointContexts:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11 = a4;
  if (![(HKLollipopController *)self isVisible])
  {
    [(HKLollipopController *)self setNoAnimationVisibility:1];
    v12 = [(HKLollipopController *)self fieldView];
    [v12 setFrame:{x, y, width, height}];

    v13 = [(HKLollipopController *)self _lollipopFieldColor];
    v14 = [(HKLollipopController *)self fieldView];
    [v14 setBackgroundColor:v13];

    [(HKLollipopController *)self _backgroundViewCornerRadius];
    v16 = v15;
    v17 = [(HKLollipopController *)self fieldView];
    v18 = [v17 layer];
    [v18 setCornerRadius:v16];

    [(HKLollipopController *)self updateWithPointContexts:v11];
    v19 = [(HKLollipopController *)self _lollipopAnnotationColor];
    v20 = [(HKLollipopController *)self annotationView];
    [v20 setBackgroundColor:v19];

    [(HKLollipopController *)self _setExtensionViewBackgrounds];
    [(HKLollipopController *)self _bringViewsToFront];
    [(HKLollipopController *)self _setHidden:0];
    if (v5)
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

- (void)setInvisibleAnimated:(BOOL)a3
{
  v3 = a3;
  if ([(HKLollipopController *)self isVisible])
  {
    [(HKLollipopController *)self setLastDismissTime:CFAbsoluteTimeGetCurrent()];
    [(HKLollipopController *)self setNoAnimationVisibility:0];
    if (v3)
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

- (id)firstLollipopDateSinceDelta:(double)a3
{
  if ([(HKLollipopController *)self isVisible]|| (Current = CFAbsoluteTimeGetCurrent(), [(HKLollipopController *)self lastDismissTime], Current - v6 <= a3))
  {
    v7 = [(HKLollipopController *)self lastFirstLollipopDate];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (BOOL)pointSelectionContextsHaveUserInfo:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v10 + 1) + 8 * i) userInfo];
        v5 += [v8 count];
      }

      v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
    LOBYTE(v4) = v5 > 0;
  }

  return v4;
}

- (void)_bringViewsToFront
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [(HKLollipopController *)self parentView];
  v4 = [(HKLollipopController *)self fieldView];
  [v3 bringSubviewToFront:v4];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(HKLollipopController *)self extensionViews];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        v11 = [(HKLollipopController *)self parentView];
        [v11 bringSubviewToFront:v10];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

- (void)_setHidden:(BOOL)a3
{
  v3 = a3;
  v16 = *MEMORY[0x1E69E9840];
  v5 = [(HKLollipopController *)self fieldView];
  [v5 setHidden:v3];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = [(HKLollipopController *)self extensionViews];
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * v10++) setHidden:v3];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }

  [(HKLollipopController *)self setLastSelectionLocation:0];
}

- (void)_setAlpha:(double)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = [(HKLollipopController *)self fieldView];
  [v5 setAlpha:a3];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = [(HKLollipopController *)self extensionViews];
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * v10++) setAlpha:a3];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
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