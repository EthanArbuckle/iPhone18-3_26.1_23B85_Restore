@interface CAMSemanticStylePicker
- (BOOL)_isScrollActive;
- (BOOL)expanded;
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (BOOL)scrollEnabled;
- (BOOL)scrollViewUserInteractionEnabled;
- (CAMSemanticStylePicker)initWithFrame:(CGRect)frame;
- (CAMSemanticStylePickerDelegate)delegate;
- (CGPoint)_contentOffsetForIndex:(unint64_t)index;
- (CGRect)modelStyleRectAtIndex:(unint64_t)index;
- (CGRect)presentatationStyleRectAtIndex:(unint64_t)index;
- (double)_fractionalIndexForContentOffset;
- (double)_fractionalIndexForContentOffset:(CGPoint)offset;
- (id)_tileFrames;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)_handlePageControlValueChanged:(id)changed;
- (void)_performHaptics;
- (void)_prepareHaptics;
- (void)_setSelectedStyleIndex:(unint64_t)index shouldDelegate:(BOOL)delegate shouldUpdateLayout:(BOOL)layout animated:(BOOL)animated;
- (void)_setSelectedTileExpanded:(BOOL)expanded;
- (void)_updateMaterialOpacityWithDuration:(double)duration;
- (void)_updateScrollViewContentOffset;
- (void)_updateTileAlphas;
- (void)layoutSubviews;
- (void)scrollViewDidScroll:(id)scroll;
- (void)setBounds:(CGRect)bounds;
- (void)setContentBottomMargin:(double)margin;
- (void)setExpanded:(BOOL)expanded animated:(BOOL)animated;
- (void)setFrame:(CGRect)frame;
- (void)setMaterial:(int64_t)material withDuration:(double)duration;
- (void)setMaterialColor:(id)color;
- (void)setNumberOfStyles:(unint64_t)styles;
- (void)setPageControlMaxNumberOfDots:(int64_t)dots;
- (void)setScrollEnabled:(BOOL)enabled;
- (void)setScrollViewUserInteractionEnabled:(BOOL)enabled;
- (void)setSpacerWidth:(double)width;
@end

@implementation CAMSemanticStylePicker

- (CAMSemanticStylePicker)initWithFrame:(CGRect)frame
{
  v21.receiver = self;
  v21.super_class = CAMSemanticStylePicker;
  v3 = [(CAMSemanticStylePicker *)&v21 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCD10]);
    pageControl = v3->_pageControl;
    v3->_pageControl = v4;

    [(UIPageControl *)v3->_pageControl addTarget:v3 action:sel__handlePageControlValueChanged_ forControlEvents:4096];
    [(UIPageControl *)v3->_pageControl addTarget:v3 action:sel__handlePageControlTouchDown_ forControlEvents:1];
    [(UIPageControl *)v3->_pageControl setAlpha:0.0];
    [(CAMSemanticStylePicker *)v3 addSubview:v3->_pageControl];
    v6 = objc_alloc_init(MEMORY[0x1E69DCEF8]);
    scrollView = v3->__scrollView;
    v3->__scrollView = v6;

    [(UIScrollView *)v3->__scrollView setShowsVerticalScrollIndicator:0];
    [(UIScrollView *)v3->__scrollView setShowsHorizontalScrollIndicator:0];
    [(UIScrollView *)v3->__scrollView setPagingEnabled:1];
    [(UIScrollView *)v3->__scrollView setClipsToBounds:0];
    [(UIScrollView *)v3->__scrollView setDelegate:v3];
    [(UIScrollView *)v3->__scrollView setContentInsetAdjustmentBehavior:2];
    [(UIScrollView *)v3->__scrollView _setAutomaticContentOffsetAdjustmentEnabled:0];
    if ([(CAMSemanticStylePicker *)v3 effectiveUserInterfaceLayoutDirection]== 1)
    {
      CGAffineTransformMakeRotation(&v20, 3.14159265);
      v8 = v3->__scrollView;
      v19 = v20;
      [(UIScrollView *)v8 setTransform:&v19];
    }

    [(CAMSemanticStylePicker *)v3 addSubview:v3->__scrollView];
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    tileViews = v3->__tileViews;
    v3->__tileViews = v9;

    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    spacerViews = v3->__spacerViews;
    v3->__spacerViews = v11;

    v3->_spacerWidth = 7.0;
    v13 = objc_alloc_init(MEMORY[0x1E69DD250]);
    [(NSMutableArray *)v3->__spacerViews addObject:v13];
    [(UIScrollView *)v3->__scrollView addSubview:v13];
    v3->__selectedTileExpanded = 1;
    v3->_hidesSelfWhenNotExpanded = 1;
    v14 = +[CAMCaptureCapabilities capabilities];
    allowHaptics = [v14 allowHaptics];

    if (allowHaptics)
    {
      v16 = +[CAMFeedbackController sharedController];
      feedbackController = v3->__feedbackController;
      v3->__feedbackController = v16;
    }
  }

  return v3;
}

- (BOOL)scrollEnabled
{
  _scrollView = [(CAMSemanticStylePicker *)self _scrollView];
  isScrollEnabled = [_scrollView isScrollEnabled];

  return isScrollEnabled;
}

- (void)setScrollEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  _scrollView = [(CAMSemanticStylePicker *)self _scrollView];
  [_scrollView setScrollEnabled:enabledCopy];
}

- (BOOL)scrollViewUserInteractionEnabled
{
  _scrollView = [(CAMSemanticStylePicker *)self _scrollView];
  isUserInteractionEnabled = [_scrollView isUserInteractionEnabled];

  return isUserInteractionEnabled;
}

- (void)setScrollViewUserInteractionEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  _scrollView = [(CAMSemanticStylePicker *)self _scrollView];
  [_scrollView setUserInteractionEnabled:enabledCopy];
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [(CAMSemanticStylePicker *)self bounds];
  v9 = v8;
  v11 = v10;
  v13.receiver = self;
  v13.super_class = CAMSemanticStylePicker;
  [(CAMSemanticStylePicker *)&v13 setBounds:x, y, width, height];
  if (width != v9 || height != v11)
  {
    [(CAMSemanticStylePicker *)self _setNeedsUpdateContentOffset:1];
  }
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [(CAMSemanticStylePicker *)self frame];
  v9 = v8;
  v11 = v10;
  v13.receiver = self;
  v13.super_class = CAMSemanticStylePicker;
  [(CAMSemanticStylePicker *)&v13 setFrame:x, y, width, height];
  if (width != v9 || height != v11)
  {
    [(CAMSemanticStylePicker *)self _setNeedsUpdateContentOffset:1];
  }
}

- (void)setSpacerWidth:(double)width
{
  if (self->_spacerWidth != width)
  {
    self->_spacerWidth = width;
    [(CAMSemanticStylePicker *)self setNeedsLayout];
  }
}

- (void)setNumberOfStyles:(unint64_t)styles
{
  if (self->_numberOfStyles != styles)
  {
    self->_numberOfStyles = styles;
    _tileViews = [(CAMSemanticStylePicker *)self _tileViews];
    v7 = [_tileViews count] - styles;

    if (v7 < 1)
    {
      if (v7 < 0)
      {
        if (-v7 > 1)
        {
          v14 = -v7;
        }

        else
        {
          v14 = 1;
        }

        do
        {
          v15 = objc_alloc_init(CAMSemanticStylePickerTileOverlayView);
          _tileViews2 = [(CAMSemanticStylePicker *)self _tileViews];
          [_tileViews2 addObject:v15];

          _scrollView = [(CAMSemanticStylePicker *)self _scrollView];
          [_scrollView addSubview:v15];

          v18 = objc_alloc_init(MEMORY[0x1E69DD250]);
          _spacerViews = [(CAMSemanticStylePicker *)self _spacerViews];
          [_spacerViews addObject:v18];

          _scrollView2 = [(CAMSemanticStylePicker *)self _scrollView];
          [_scrollView2 addSubview:v18];

          --v14;
        }

        while (v14);
      }
    }

    else
    {
      do
      {
        _tileViews3 = [(CAMSemanticStylePicker *)self _tileViews];
        lastObject = [_tileViews3 lastObject];

        [lastObject removeFromSuperview];
        _tileViews4 = [(CAMSemanticStylePicker *)self _tileViews];
        [_tileViews4 removeLastObject];

        _spacerViews2 = [(CAMSemanticStylePicker *)self _spacerViews];
        lastObject2 = [_spacerViews2 lastObject];

        [lastObject2 removeFromSuperview];
        _spacerViews3 = [(CAMSemanticStylePicker *)self _spacerViews];
        [_spacerViews3 removeLastObject];

        --v7;
      }

      while (v7);
    }

    pageControl = [(CAMSemanticStylePicker *)self pageControl];
    [pageControl setNumberOfPages:styles];

    if ([(CAMSemanticStylePicker *)self selectedStyleIndex]>= styles)
    {
      [(CAMSemanticStylePicker *)self setSelectedStyleIndex:styles - 1];
      [(CAMSemanticStylePicker *)self _setSelectedStyleIndex:[(CAMSemanticStylePicker *)self selectedStyleIndex] shouldDelegate:1 shouldUpdateLayout:1 animated:0];
    }

    [(CAMSemanticStylePicker *)self _updateMaterialOpacityWithDuration:0.0];
    [(CAMSemanticStylePicker *)self _setNeedsUpdateContentOffset:1];

    [(CAMSemanticStylePicker *)self setNeedsLayout];
  }
}

- (void)_setSelectedStyleIndex:(unint64_t)index shouldDelegate:(BOOL)delegate shouldUpdateLayout:(BOOL)layout animated:(BOOL)animated
{
  if (self->_selectedStyleIndex != index)
  {
    animatedCopy = animated;
    layoutCopy = layout;
    delegateCopy = delegate;
    if (layout && animated)
    {
      [(CAMSemanticStylePicker *)self layoutIfNeeded];
    }

    self->_selectedStyleIndex = index;
    pageControl = [(CAMSemanticStylePicker *)self pageControl];
    [pageControl setCurrentPage:index];

    if (layoutCopy)
    {
      [(CAMSemanticStylePicker *)self setNeedsLayout];
      v12 = 0.3;
      if (!animatedCopy)
      {
        v12 = 0.0;
      }

      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __92__CAMSemanticStylePicker__setSelectedStyleIndex_shouldDelegate_shouldUpdateLayout_animated___block_invoke;
      v14[3] = &unk_1E76F77B0;
      v14[4] = self;
      [CAMView animateIfNeededWithDuration:v14 animations:v12];
    }

    if (delegateCopy)
    {
      delegate = [(CAMSemanticStylePicker *)self delegate];
      [delegate semanticStylePickerDidChangeSelectedStyle:self];
    }
  }
}

uint64_t __92__CAMSemanticStylePicker__setSelectedStyleIndex_shouldDelegate_shouldUpdateLayout_animated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) layoutIfNeeded];
  v2 = *(a1 + 32);

  return [v2 _updateScrollViewContentOffset];
}

- (void)_setSelectedTileExpanded:(BOOL)expanded
{
  if (self->__selectedTileExpanded != expanded)
  {
    self->__selectedTileExpanded = expanded;
    [(CAMSemanticStylePicker *)self setNeedsLayout];
  }
}

- (BOOL)expanded
{
  if ([(CAMSemanticStylePicker *)self hidesSelfWhenNotExpanded]&& ([(CAMSemanticStylePicker *)self isHidden]& 1) != 0)
  {
    return 0;
  }

  else
  {
    return ![(CAMSemanticStylePicker *)self _selectedTileExpanded];
  }
}

- (void)setExpanded:(BOOL)expanded animated:(BOOL)animated
{
  expandedCopy = expanded;
  if ([(CAMSemanticStylePicker *)self expanded]!= expanded)
  {
    [(CAMSemanticStylePicker *)self setUserInteractionEnabled:expandedCopy];
    if (expandedCopy)
    {
      v7 = 1.0;
    }

    else
    {
      v7 = 0.0;
    }

    hidesSelfWhenNotExpanded = [(CAMSemanticStylePicker *)self hidesSelfWhenNotExpanded];
    if (animated)
    {
      if (hidesSelfWhenNotExpanded)
      {
        [(CAMSemanticStylePicker *)self setHidden:0];
      }

      [(CAMSemanticStylePicker *)self layoutIfNeeded];
      [(CAMSemanticStylePicker *)self _setSelectedTileExpanded:expandedCopy ^ 1];
      [(CAMSemanticStylePicker *)self _setExpandedAnimationCounter:[(CAMSemanticStylePicker *)self _expansionAnimationCounter]+ 1];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __47__CAMSemanticStylePicker_setExpanded_animated___block_invoke;
      v12[3] = &unk_1E76F7A38;
      v12[4] = self;
      *&v12[5] = v7;
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __47__CAMSemanticStylePicker_setExpanded_animated___block_invoke_2;
      v10[3] = &unk_1E76F8AA0;
      v10[4] = self;
      v11 = !expandedCopy;
      [MEMORY[0x1E69DD250] animateWithDuration:2 delay:v12 usingSpringWithDamping:v10 initialSpringVelocity:0.5 options:0.0 animations:1.0 completion:1.0];
    }

    else
    {
      if (hidesSelfWhenNotExpanded)
      {
        [(CAMSemanticStylePicker *)self setHidden:expandedCopy ^ 1];
      }

      [(CAMSemanticStylePicker *)self _setSelectedTileExpanded:expandedCopy ^ 1];
      pageControl = [(CAMSemanticStylePicker *)self pageControl];
      [pageControl setAlpha:v7];
    }
  }
}

uint64_t __47__CAMSemanticStylePicker_setExpanded_animated___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) pageControl];
  [v3 setAlpha:v2];

  v4 = *(a1 + 32);

  return [v4 layoutIfNeeded];
}

uint64_t __47__CAMSemanticStylePicker_setExpanded_animated___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _setExpandedAnimationCounter:{objc_msgSend(*(a1 + 32), "_expansionAnimationCounter") - 1}];
  result = [*(a1 + 32) _expansionAnimationCounter];
  if (!result)
  {
    result = [*(a1 + 32) hidesSelfWhenNotExpanded];
    if (result)
    {
      v3 = *(a1 + 40);
      v4 = *(a1 + 32);

      return [v4 setHidden:v3];
    }
  }

  return result;
}

- (CGRect)presentatationStyleRectAtIndex:(unint64_t)index
{
  _tileViews = [(CAMSemanticStylePicker *)self _tileViews];
  v6 = [_tileViews count];

  if (v6 <= index)
  {
    v21 = *MEMORY[0x1E695F050];
    v22 = *(MEMORY[0x1E695F050] + 8);
    v23 = *(MEMORY[0x1E695F050] + 16);
    v24 = *(MEMORY[0x1E695F050] + 24);
  }

  else
  {
    _tileViews2 = [(CAMSemanticStylePicker *)self _tileViews];
    v8 = [_tileViews2 objectAtIndex:index];

    layer = [v8 layer];
    presentationLayer = [layer presentationLayer];
    if (presentationLayer)
    {
      layer2 = [v8 layer];
      presentationLayer2 = [layer2 presentationLayer];
      [presentationLayer2 frame];
      v14 = v13;
      v16 = v15;
      v18 = v17;
      v20 = v19;
    }

    else
    {
      [v8 frame];
      v14 = v25;
      v16 = v26;
      v18 = v27;
      v20 = v28;
    }

    superview = [v8 superview];
    [(CAMSemanticStylePicker *)self convertRect:superview fromView:v14, v16, v18, v20];
    v21 = v30;
    v22 = v31;
    v23 = v32;
    v24 = v33;
  }

  v34 = v21;
  v35 = v22;
  v36 = v23;
  v37 = v24;
  result.size.height = v37;
  result.size.width = v36;
  result.origin.y = v35;
  result.origin.x = v34;
  return result;
}

- (CGRect)modelStyleRectAtIndex:(unint64_t)index
{
  _tileViews = [(CAMSemanticStylePicker *)self _tileViews];
  v6 = [_tileViews count];

  if (v6 <= index)
  {
    v21 = *MEMORY[0x1E695F050];
    v23 = *(MEMORY[0x1E695F050] + 8);
    v25 = *(MEMORY[0x1E695F050] + 16);
    v27 = *(MEMORY[0x1E695F050] + 24);
  }

  else
  {
    _tileViews2 = [(CAMSemanticStylePicker *)self _tileViews];
    v8 = [_tileViews2 objectAtIndex:index];

    _tileFrames = [(CAMSemanticStylePicker *)self _tileFrames];
    v10 = [_tileFrames objectAtIndexedSubscript:index];
    [v10 CGRectValue];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;

    superview = [v8 superview];
    [(CAMSemanticStylePicker *)self convertRect:superview fromView:v12, v14, v16, v18];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;
  }

  v28 = v21;
  v29 = v23;
  v30 = v25;
  v31 = v27;
  result.size.height = v31;
  result.size.width = v30;
  result.origin.y = v29;
  result.origin.x = v28;
  return result;
}

- (BOOL)_isScrollActive
{
  _scrollView = [(CAMSemanticStylePicker *)self _scrollView];
  if ([_scrollView isTracking])
  {
    isDecelerating = 1;
  }

  else
  {
    isDecelerating = [_scrollView isDecelerating];
  }

  return isDecelerating;
}

- (CGPoint)_contentOffsetForIndex:(unint64_t)index
{
  if ([(CAMSemanticStylePicker *)self numberOfStyles])
  {
    _scrollView = [(CAMSemanticStylePicker *)self _scrollView];
    [_scrollView frame];
    v7 = v6;

    v8 = v7 * index;
    v9 = 0.0;
  }

  else
  {
    v8 = *MEMORY[0x1E695EFF8];
    v9 = *(MEMORY[0x1E695EFF8] + 8);
  }

  result.y = v9;
  result.x = v8;
  return result;
}

- (double)_fractionalIndexForContentOffset
{
  _scrollView = [(CAMSemanticStylePicker *)self _scrollView];
  [_scrollView contentOffset];
  [(CAMSemanticStylePicker *)self _fractionalIndexForContentOffset:?];
  v5 = v4;

  return v5;
}

- (double)_fractionalIndexForContentOffset:(CGPoint)offset
{
  x = offset.x;
  v4 = [(CAMSemanticStylePicker *)self _scrollView:offset.x];
  [v4 frame];
  v6 = v5;

  result = x / v6;
  if (v6 == 0.0)
  {
    return 0.0;
  }

  return result;
}

- (void)_updateScrollViewContentOffset
{
  [(CAMSemanticStylePicker *)self _contentOffsetForIndex:[(CAMSemanticStylePicker *)self selectedStyleIndex]];
  v4 = v3;
  v6 = v5;
  _scrollView = [(CAMSemanticStylePicker *)self _scrollView];
  [_scrollView setContentOffset:{v4, v6}];

  delegate = [(CAMSemanticStylePicker *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    delegate2 = [(CAMSemanticStylePicker *)self delegate];
    [delegate2 semanticStylePickerDidUpdateFractionalPageIndex:self];
  }
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  v19.receiver = self;
  v19.super_class = CAMSemanticStylePicker;
  v7 = [(CAMSemanticStylePicker *)&v19 pointInside:event withEvent:?];
  if (v7)
  {
    pageControl = [(CAMSemanticStylePicker *)self pageControl];
    [pageControl alpha];
    v10 = v9;

    if (v10 <= 0.0 || (-[CAMSemanticStylePicker pageControl](self, "pageControl"), v11 = objc_claimAutoreleasedReturnValue(), -[CAMSemanticStylePicker convertPoint:toView:](self, "convertPoint:toView:", v11, x, y), v13 = v12, v11, -[CAMSemanticStylePicker pageControl](self, "pageControl"), v14 = objc_claimAutoreleasedReturnValue(), [v14 bounds], v15 = CGRectGetMaxY(v20) + 15.0, v14, v13 <= v15))
    {
      LOBYTE(v7) = 1;
    }

    else
    {
      v16 = os_log_create("com.apple.camera", "Camera");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *v18 = 0;
        _os_log_impl(&dword_1A3640000, v16, OS_LOG_TYPE_DEFAULT, "Ignoring touch below page control", v18, 2u);
      }

      LOBYTE(v7) = 0;
    }
  }

  return v7;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v10.receiver = self;
  v10.super_class = CAMSemanticStylePicker;
  v5 = [(CAMSemanticStylePicker *)&v10 hitTest:event withEvent:test.x, test.y];
  if (v5 == self)
  {
    _scrollView = [(CAMSemanticStylePicker *)self _scrollView];
    isScrollEnabled = [_scrollView isScrollEnabled];

    if (isScrollEnabled)
    {
      _scrollView2 = [(CAMSemanticStylePicker *)self _scrollView];
    }

    else
    {
      _scrollView2 = 0;
    }

    v5 = _scrollView2;
  }

  return v5;
}

- (void)setMaterial:(int64_t)material withDuration:(double)duration
{
  if (self->_material != material)
  {
    self->_material = material;
    [(CAMSemanticStylePicker *)self _updateMaterialOpacityWithDuration:duration];
  }
}

- (void)setMaterialColor:(id)color
{
  v15 = *MEMORY[0x1E69E9840];
  colorCopy = color;
  if (([(UIColor *)self->_materialColor isEqual:colorCopy]& 1) == 0)
  {
    self->_materialColor = colorCopy;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    _tileViews = [(CAMSemanticStylePicker *)self _tileViews];
    v6 = [_tileViews countByEnumeratingWithState:&v10 objects:v14 count:16];
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
            objc_enumerationMutation(_tileViews);
          }

          [*(*(&v10 + 1) + 8 * v9++) setMaterialColor:colorCopy];
        }

        while (v7 != v9);
        v7 = [_tileViews countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }

    [(CAMSemanticStylePicker *)self _updateMaterialOpacityWithDuration:0.0];
  }
}

- (void)_updateMaterialOpacityWithDuration:(double)duration
{
  material = [(CAMSemanticStylePicker *)self material];
  v6 = 0;
  if (material <= 4)
  {
    v6 = qword_1A3A69E20[material];
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__CAMSemanticStylePicker__updateMaterialOpacityWithDuration___block_invoke;
  v7[3] = &unk_1E76F7A38;
  v7[4] = self;
  v7[5] = v6;
  [CAMView animateIfNeededWithDuration:4 options:v7 animations:0 completion:duration];
}

void __61__CAMSemanticStylePicker__updateMaterialOpacityWithDuration___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v2 = [*(a1 + 32) _spacerViews];
  v3 = [v2 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v20;
    do
    {
      v6 = 0;
      do
      {
        if (*v20 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v19 + 1) + 8 * v6);
        v8 = [*(a1 + 32) materialColor];
        v9 = [v8 colorWithAlphaComponent:*(a1 + 40)];
        [v7 setBackgroundColor:v9];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v4);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = [*(a1 + 32) _tileViews];
  v11 = [v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [*(*(&v15 + 1) + 8 * v14++) setCornerTargetAlpha:*(a1 + 40)];
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v12);
  }
}

- (void)setPageControlMaxNumberOfDots:(int64_t)dots
{
  if (self->_pageControlMaxNumberOfDots != dots)
  {
    self->_pageControlMaxNumberOfDots = dots;
    [(CAMSemanticStylePicker *)self setNeedsLayout];
  }
}

- (id)_tileFrames
{
  v3 = objc_alloc(MEMORY[0x1E695DF70]);
  _tileViews = [(CAMSemanticStylePicker *)self _tileViews];
  v5 = [v3 initWithCapacity:{objc_msgSend(_tileViews, "count")}];

  [(CAMSemanticStylePicker *)self bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [(CAMSemanticStylePicker *)self spacerWidth];
  v15 = v14;
  v16 = v11 + -20.0 + v14 * -2.0;
  UIRectCenteredIntegralRectScale();
  v18 = v17;
  [(CAMSemanticStylePicker *)self _fractionalIndexForContentOffset];
  CEKProgressClamped();
  UICeilToViewScale();
  v20 = v19;
  _tileViews2 = [(CAMSemanticStylePicker *)self _tileViews];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __37__CAMSemanticStylePicker__tileFrames__block_invoke;
  v26[3] = &unk_1E76FB460;
  v28 = v15 + 10.0 - v18;
  v29 = v16;
  v30 = v15;
  v31 = v7;
  v32 = v9;
  v33 = v11;
  v26[4] = self;
  v34 = v13;
  v35 = v20;
  v22 = v5;
  v27 = v22;
  [_tileViews2 enumerateObjectsUsingBlock:v26];

  v23 = v27;
  v24 = v22;

  return v22;
}

void __37__CAMSemanticStylePicker__tileFrames__block_invoke(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = *(a1 + 56);
  v6 = *(a1 + 48) + a3 * (v5 + *(a1 + 64));
  v7 = *(a1 + 96);
  if ([*(a1 + 32) _selectedTileExpanded])
  {
    if ([*(a1 + 32) selectedStyleIndex] - 1 == a3)
    {
      v8 = *(a1 + 104);
LABEL_4:
      v5 = v5 - v8;
      goto LABEL_9;
    }

    if ([*(a1 + 32) selectedStyleIndex] == a3)
    {
      v9 = *(a1 + 104);
      v6 = v6 - v9;
      v5 = v5 + v9 * 2.0;
    }

    else if ([*(a1 + 32) selectedStyleIndex] + 1 == a3)
    {
      v8 = *(a1 + 104);
      v6 = v6 + v8;
      goto LABEL_4;
    }
  }

LABEL_9:
  v10 = [MEMORY[0x1E696B098] valueWithCGRect:{v6, 0.0, v5, v7}];
  [*(a1 + 40) addObject:v10];
}

- (void)layoutSubviews
{
  [(CAMSemanticStylePicker *)self bounds];
  v41 = v4;
  v42 = v3;
  v6 = v5;
  v8 = v7;
  [(CAMSemanticStylePicker *)self spacerWidth];
  v10 = v9;
  v43 = v9 + v6 + 10.0;
  v11 = v9 + v6 + -20.0 + v9 * -2.0;
  UIRectCenteredIntegralRectScale();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  _scrollView = [(CAMSemanticStylePicker *)self _scrollView];
  [_scrollView setFrame:{v13, v15, v17, v19}];

  v21 = v11 * [(CAMSemanticStylePicker *)self numberOfStyles];
  _scrollView2 = [(CAMSemanticStylePicker *)self _scrollView];
  [_scrollView2 setContentSize:{v21, v8}];

  _tileFrames = [(CAMSemanticStylePicker *)self _tileFrames];
  _tileViews = [(CAMSemanticStylePicker *)self _tileViews];
  v52[0] = MEMORY[0x1E69E9820];
  v52[1] = 3221225472;
  v52[2] = __40__CAMSemanticStylePicker_layoutSubviews__block_invoke;
  v52[3] = &unk_1E76FB488;
  v25 = _tileFrames;
  v53 = v25;
  [_tileViews enumerateObjectsUsingBlock:v52];

  _spacerViews = [(CAMSemanticStylePicker *)self _spacerViews];
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __40__CAMSemanticStylePicker_layoutSubviews__block_invoke_2;
  v44[3] = &unk_1E76FB4B0;
  v46 = v43;
  v47 = v10;
  v44[4] = self;
  v45 = v25;
  v48 = v42;
  v49 = v41;
  v50 = v6;
  v51 = v8;
  v27 = v25;
  [_spacerViews enumerateObjectsUsingBlock:v44];

  pageControl = [(CAMSemanticStylePicker *)self pageControl];
  numberOfPages = [pageControl numberOfPages];

  if ([(CAMSemanticStylePicker *)self pageControlMaxNumberOfDots]>= 1)
  {
    pageControlMaxNumberOfDots = [(CAMSemanticStylePicker *)self pageControlMaxNumberOfDots];
    if (numberOfPages >= pageControlMaxNumberOfDots)
    {
      numberOfPages = pageControlMaxNumberOfDots;
    }
  }

  pageControl2 = [(CAMSemanticStylePicker *)self pageControl];
  [pageControl2 sizeForNumberOfPages:numberOfPages];
  v33 = v32;
  v35 = v34;

  [(CAMSemanticStylePicker *)self contentBottomMargin];
  UIPointRoundToViewScale();
  v37 = v36;
  v39 = v38;
  pageControl3 = [(CAMSemanticStylePicker *)self pageControl];
  [pageControl3 setFrame:{v37, v39, v33, v35 + 20.0}];

  if ([(CAMSemanticStylePicker *)self _needsUpdateContentOffset])
  {
    [(CAMSemanticStylePicker *)self _setNeedsUpdateContentOffset:0];
    [(CAMSemanticStylePicker *)self _updateScrollViewContentOffset];
  }

  [(CAMSemanticStylePicker *)self _updateTileAlphas];
}

void __40__CAMSemanticStylePicker_layoutSubviews__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v4 objectAtIndexedSubscript:a3];
  [v6 CGRectValue];
  [v5 setFrame:?];
}

void __40__CAMSemanticStylePicker_layoutSubviews__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v31 = a2;
  v6 = [v5 _spacerViews];
  v7 = [v6 count] - 1;

  v8 = v7 == a3 || a3 == 0;
  v9 = 56;
  if (v8)
  {
    v9 = 48;
  }

  v10 = *(a1 + v9);
  v11 = *(a1 + 40);
  if (v7 == a3)
  {
    v12 = [v11 lastObject];
    [v12 CGRectValue];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;

    v33.origin.x = v14;
    v33.origin.y = v16;
    v33.size.width = v18;
    v33.size.height = v20;
    MaxX = CGRectGetMaxX(v33);
  }

  else
  {
    v22 = [v11 objectAtIndexedSubscript:a3];
    [v22 CGRectValue];
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;

    v34.origin.x = v24;
    v34.origin.y = v26;
    v34.size.width = v28;
    v34.size.height = v30;
    MaxX = CGRectGetMinX(v34) - v10;
  }

  [v31 setFrame:{MaxX, 0.0, v10, *(a1 + 88)}];
}

- (void)setContentBottomMargin:(double)margin
{
  if (self->_contentBottomMargin != margin)
  {
    self->_contentBottomMargin = margin;
    [(CAMSemanticStylePicker *)self setNeedsLayout];
  }
}

- (void)_updateTileAlphas
{
  v35 = *MEMORY[0x1E69E9840];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  _tileViews = [(CAMSemanticStylePicker *)self _tileViews];
  v4 = [_tileViews countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v31;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v31 != v6)
        {
          objc_enumerationMutation(_tileViews);
        }

        v8 = *(*(&v30 + 1) + 8 * i);
        [v8 frame];
        v10 = v9;
        v12 = v11;
        v14 = v13;
        v16 = v15;
        superview = [v8 superview];
        [(CAMSemanticStylePicker *)self convertRect:superview fromView:v10, v12, v14, v16];
        v19 = v18;
        v21 = v20;
        v23 = v22;
        v25 = v24;

        [(CAMSemanticStylePicker *)self bounds];
        v37.origin.x = v26;
        v37.origin.y = v27;
        v37.size.width = v28;
        v37.size.height = v29;
        v36.origin.x = v19;
        v36.origin.y = v21;
        v36.size.width = v23;
        v36.size.height = v25;
        CGRectIntersection(v36, v37);
        CEKProgressClamped();
        CEKInterpolate();
        [v8 setTileAlpha:?];
      }

      v5 = [_tileViews countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v5);
  }
}

- (void)scrollViewDidScroll:(id)scroll
{
  if ([(CAMSemanticStylePicker *)self _isScrollActive])
  {
    [(CAMSemanticStylePicker *)self _fractionalIndexForContentOffset];
    v5 = llround(v4);
    if (v5 != [(CAMSemanticStylePicker *)self selectedStyleIndex]&& v5 < [(CAMSemanticStylePicker *)self numberOfStyles])
    {
      [(CAMSemanticStylePicker *)self _setSelectedStyleIndex:v5 shouldDelegate:1 shouldUpdateLayout:0 animated:0];
    }
  }

  if ([(CAMSemanticStylePicker *)self _selectedTileExpanded])
  {
    [(CAMSemanticStylePicker *)self setNeedsLayout];
  }

  [(CAMSemanticStylePicker *)self _updateTileAlphas];
  delegate = [(CAMSemanticStylePicker *)self delegate];
  [delegate semanticStylePickerDidScroll:self];

  delegate2 = [(CAMSemanticStylePicker *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate3 = [(CAMSemanticStylePicker *)self delegate];
    [delegate3 semanticStylePickerDidUpdateFractionalPageIndex:self];
  }
}

- (void)_prepareHaptics
{
  _feedbackController = [(CAMSemanticStylePicker *)self _feedbackController];
  [_feedbackController prepareDiscreteFeedback:0];
}

- (void)_performHaptics
{
  _feedbackController = [(CAMSemanticStylePicker *)self _feedbackController];
  [_feedbackController performDiscreteFeedback:0];
}

- (void)_handlePageControlValueChanged:(id)changed
{
  changedCopy = changed;
  [(CAMSemanticStylePicker *)self _performHaptics];
  [(CAMSemanticStylePicker *)self _prepareHaptics];
  interactionState = [changedCopy interactionState];

  pageControl = [(CAMSemanticStylePicker *)self pageControl];
  -[CAMSemanticStylePicker _setSelectedStyleIndex:shouldDelegate:shouldUpdateLayout:animated:](self, "_setSelectedStyleIndex:shouldDelegate:shouldUpdateLayout:animated:", [pageControl currentPage], 1, 1, interactionState == 1);
}

- (CAMSemanticStylePickerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end