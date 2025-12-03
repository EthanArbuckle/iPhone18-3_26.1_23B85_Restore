@interface CAMSmartStylePreviewGridView
+ (unint64_t)gridItemCountForLayout:(unint64_t)layout;
- ($3B1716E7537CC2F16D6737AAC3CCCADB)_subviewGeometryForIndex:(SEL)index;
- (BOOL)didFinishRendering;
- (CAMSmartStylePreviewGridView)initWithLayout:(unint64_t)layout;
- (CAMSmartStylePreviewGridViewDelegate)delegate;
- (CGRect)_subviewFrame1Big5SmallForIndex:(unint64_t)index;
- (CGRect)_subviewFrame2x2ForIndex:(unint64_t)index;
- (CGRect)_subviewFrameForIndex:(unint64_t)index;
- (unint64_t)gridItemCount;
- (void)_setExpansionAnimationCount:(int64_t)count;
- (void)_updateStyleOnPreviewViews;
- (void)handleTap:(id)tap;
- (void)layoutSubviews;
- (void)setExpandedItemIndex:(unint64_t)index animated:(BOOL)animated;
- (void)setLogIdentifier:(id)identifier;
- (void)setStyle:(id)style;
- (void)smartStylePreviewViewDidFinishRendering:(id)rendering;
- (void)speedUpFadeInAnimations;
- (void)updateGridIndex:(unint64_t)index withResourceLoadResult:(id)result;
@end

@implementation CAMSmartStylePreviewGridView

- (CAMSmartStylePreviewGridView)initWithLayout:(unint64_t)layout
{
  v16.receiver = self;
  v16.super_class = CAMSmartStylePreviewGridView;
  v4 = *MEMORY[0x1E695F058];
  v5 = *(MEMORY[0x1E695F058] + 8);
  v6 = *(MEMORY[0x1E695F058] + 16);
  v7 = *(MEMORY[0x1E695F058] + 24);
  v8 = [(CAMSmartStylePreviewGridView *)&v16 initWithFrame:*MEMORY[0x1E695F058], v5, v6, v7];
  v9 = v8;
  if (v8)
  {
    [(CAMSmartStylePreviewGridView *)v8 setClipsToBounds:1];
    v9->_layout = layout;
    v9->_expandedItemIndex = 0x7FFFFFFFFFFFFFFFLL;
    v10 = [CAMSmartStylePreviewGridView gridItemCountForLayout:layout];
    for (i = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v10]; v10; --v10)
    {
      v12 = [[CAMSmartStylePreviewView alloc] initWithFrame:v4, v5, v6, v7];
      [(CAMSmartStylePreviewView *)v12 setUserInteractionEnabled:0];
      [(CAMSmartStylePreviewView *)v12 setDelegate:v9];
      [(CAMSmartStylePreviewGridView *)v9 addSubview:v12];
      [i addObject:v12];
    }

    objc_storeStrong(&v9->__previewViews, i);
    if ([(CAMSmartStylePreviewGridView *)v9 _allowsExpandOnTap])
    {
      v13 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:v9 action:sel_handleTap_];
      [(CAMSmartStylePreviewGridView *)v9 addGestureRecognizer:v13];
    }

    v14 = v9;
  }

  return v9;
}

- (void)setLogIdentifier:(id)identifier
{
  identifierCopy = identifier;
  logIdentifier = self->_logIdentifier;
  if (logIdentifier != identifierCopy && ![(NSString *)logIdentifier isEqualToString:identifierCopy])
  {
    objc_storeStrong(&self->_logIdentifier, identifier);
    _previewViews = [(CAMSmartStylePreviewGridView *)self _previewViews];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __49__CAMSmartStylePreviewGridView_setLogIdentifier___block_invoke;
    v8[3] = &unk_1E76FA290;
    v8[4] = self;
    [_previewViews enumerateObjectsUsingBlock:v8];
  }
}

void __49__CAMSmartStylePreviewGridView_setLogIdentifier___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = *(a1 + 32);
  v6 = a2;
  v8 = [v5 logIdentifier];
  v7 = [v4 stringWithFormat:@"%@/cell=%lu", v8, a3];
  [v6 setLogIdentifier:v7];
}

- (unint64_t)gridItemCount
{
  layout = [(CAMSmartStylePreviewGridView *)self layout];

  return [CAMSmartStylePreviewGridView gridItemCountForLayout:layout];
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = CAMSmartStylePreviewGridView;
  [(CAMSmartStylePreviewGridView *)&v5 layoutSubviews];
  _previewViews = [(CAMSmartStylePreviewGridView *)self _previewViews];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __46__CAMSmartStylePreviewGridView_layoutSubviews__block_invoke;
  v4[3] = &unk_1E76FA290;
  v4[4] = self;
  [_previewViews enumerateObjectsUsingBlock:v4];
}

void __46__CAMSmartStylePreviewGridView_layoutSubviews__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v6 = *(a1 + 32);
  if (v6)
  {
    [v6 _subviewGeometryForIndex:a3];
  }

  v7[2] = v10;
  v7[3] = v11;
  v7[4] = v12;
  v7[5] = v13;
  v7[0] = v8;
  v7[1] = v9;
  CAMViewSetGeometry(v5, v7);
}

- ($3B1716E7537CC2F16D6737AAC3CCCADB)_subviewGeometryForIndex:(SEL)index
{
  [(CAMSmartStylePreviewGridView *)self _subviewFrameForIndex:a4];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  retstr->var0.origin = 0u;
  retstr->var0.size = 0u;
  retstr->var1 = 0u;
  *&retstr->var2.a = 0u;
  *&retstr->var2.c = 0u;
  *&retstr->var2.tx = 0u;
  result = [(CAMSmartStylePreviewGridView *)self expandedItemIndex:CAMViewGeometryForFrame(retstr];
  if (result != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(CAMSmartStylePreviewGridView *)self bounds];
    v16 = v15;
    v18 = v17;
    UIRectGetCenter();
    rect_16 = v19;
    rect_24 = v20;
    result = [(CAMSmartStylePreviewGridView *)self _subviewFrameForIndex:[(CAMSmartStylePreviewGridView *)self expandedItemIndex]];
    if (v23 > 0.0)
    {
      v25 = v24;
      if (v24 > 0.0)
      {
        v26 = v23;
        v27 = v16 / v23;
        rect = v21;
        rect_8 = v18 / v24;
        v28 = v21;
        v38.origin.x = v7;
        v31 = v22;
        v38.origin.y = v9;
        v38.size.width = v11;
        v38.size.height = v13;
        MidX = CGRectGetMidX(v38);
        v39.origin.x = v28;
        v39.origin.y = v31;
        v39.size.width = v26;
        v39.size.height = v25;
        retstr->var1.x = rect_16 + (MidX - CGRectGetMidX(v39)) * v27;
        v40.origin.x = v7;
        v40.origin.y = v9;
        v40.size.width = v11;
        v40.size.height = v13;
        MidY = CGRectGetMidY(v40);
        v41.origin.x = rect;
        v41.origin.y = v31;
        v41.size.width = v26;
        v41.size.height = v25;
        retstr->var1.y = rect_24 + (MidY - CGRectGetMidY(v41)) * rect_8;
        result = CGAffineTransformMakeScale(&v37, v27, rect_8);
        v30 = *&v37.c;
        *&retstr->var2.a = *&v37.a;
        *&retstr->var2.c = v30;
        *&retstr->var2.tx = *&v37.tx;
      }
    }
  }

  return result;
}

- (CGRect)_subviewFrameForIndex:(unint64_t)index
{
  layout = [(CAMSmartStylePreviewGridView *)self layout];
  switch(layout)
  {
    case 2uLL:
      [(CAMSmartStylePreviewGridView *)self _subviewFrame1Big5SmallForIndex:index];
      break;
    case 1uLL:
      [(CAMSmartStylePreviewGridView *)self _subviewFrame2x2ForIndex:index];
      break;
    case 0uLL:
      [(CAMSmartStylePreviewGridView *)self bounds];
      break;
  }

  traitCollection = [(CAMSmartStylePreviewGridView *)self traitCollection];
  [traitCollection displayScale];
  UIRectIntegralWithScale();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = v8;
  v16 = v10;
  v17 = v12;
  v18 = v14;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (CGRect)_subviewFrame2x2ForIndex:(unint64_t)index
{
  [(CAMSmartStylePreviewGridView *)self bounds];
  v5 = v4 * 0.5;
  v7 = v6 * 0.5;
  v8 = v5 * (index & 1);
  v9 = v7 * (index >> 1);
  result.size.height = v7;
  result.size.width = v5;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

- (CGRect)_subviewFrame1Big5SmallForIndex:(unint64_t)index
{
  [(CAMSmartStylePreviewGridView *)self bounds];
  v5 = v4 / 3.0;
  v7 = v6 / 3.0;
  v8 = 0.0;
  if (index <= 1)
  {
    if (index)
    {
      if (index != 1)
      {
LABEL_11:
        v8 = v5 + v5;
        goto LABEL_12;
      }

      v8 = v5 + v5;
    }

    v9 = 0.0;
    goto LABEL_13;
  }

  v8 = v5 + v5;
  v9 = v7;
  if (index == 2)
  {
    goto LABEL_13;
  }

  if (index != 3)
  {
    v8 = v5;
    v9 = v7 + v7;
    if (index == 4)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  v8 = 0.0;
LABEL_12:
  v9 = v7 + v7;
LABEL_13:
  if (!index)
  {
    v7 = v7 + v7;
    v5 = v5 + v5;
  }

  result.size.height = v7;
  result.size.width = v5;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

+ (unint64_t)gridItemCountForLayout:(unint64_t)layout
{
  if (layout > 2)
  {
    return 0;
  }

  else
  {
    return qword_1A3A686B0[layout];
  }
}

- (void)setExpandedItemIndex:(unint64_t)index animated:(BOOL)animated
{
  if (self->_expandedItemIndex != index)
  {
    animatedCopy = animated;
    indexCopy = index;
    _previewViews = [(CAMSmartStylePreviewGridView *)self _previewViews];
    v8 = [_previewViews count];

    if (v8 < indexCopy)
    {
      indexCopy = 0x7FFFFFFFFFFFFFFFLL;
    }

    if (animatedCopy)
    {
      [(CAMSmartStylePreviewGridView *)self layoutIfNeeded];
      self->_expandedItemIndex = indexCopy;
      [(CAMSmartStylePreviewGridView *)self setNeedsLayout];
      [(CAMSmartStylePreviewGridView *)self _setExpansionAnimationCount:[(CAMSmartStylePreviewGridView *)self _expansionAnimationCount]+ 1];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __62__CAMSmartStylePreviewGridView_setExpandedItemIndex_animated___block_invoke;
      v10[3] = &unk_1E76F77B0;
      v10[4] = self;
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __62__CAMSmartStylePreviewGridView_setExpandedItemIndex_animated___block_invoke_2;
      v9[3] = &unk_1E76F7988;
      v9[4] = self;
      [MEMORY[0x1E69DD250] animateWithDuration:v10 animations:v9 completion:0.35];
    }

    else
    {
      self->_expandedItemIndex = indexCopy;
      [(CAMSmartStylePreviewGridView *)self setNeedsLayout];
    }

    [(CAMSmartStylePreviewGridView *)self _updateStyleOnPreviewViews];
  }
}

uint64_t __62__CAMSmartStylePreviewGridView_setExpandedItemIndex_animated___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 _expansionAnimationCount] - 1;

  return [v1 _setExpansionAnimationCount:v2];
}

- (void)_setExpansionAnimationCount:(int64_t)count
{
  if (self->__expansionAnimationCount != count)
  {
    isAnimatingGrid = [(CAMSmartStylePreviewGridView *)self isAnimatingGrid];
    self->__expansionAnimationCount = count;
    isAnimatingGrid2 = [(CAMSmartStylePreviewGridView *)self isAnimatingGrid];
    if (isAnimatingGrid != isAnimatingGrid2)
    {
      v7 = isAnimatingGrid2;
      delegate = [(CAMSmartStylePreviewGridView *)self delegate];
      [delegate smartStylePreviewGridView:self didChangeAnimatingGrid:v7];
    }
  }
}

- (void)updateGridIndex:(unint64_t)index withResourceLoadResult:(id)result
{
  resultCopy = result;
  _previewViews = [(CAMSmartStylePreviewGridView *)self _previewViews];
  v8 = [_previewViews count];

  if (v8 <= index)
  {
    v11 = os_log_create("com.apple.camera", "SmartStyleSettings");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [CAMSmartStylePreviewGridView updateGridIndex:index withResourceLoadResult:v11];
    }
  }

  else
  {
    _previewViews2 = [(CAMSmartStylePreviewGridView *)self _previewViews];
    v10 = [_previewViews2 objectAtIndexedSubscript:index];

    [v10 setResourceLoadResult:resultCopy];
  }
}

- (BOOL)didFinishRendering
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 1;
  _previewViews = [(CAMSmartStylePreviewGridView *)self _previewViews];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __50__CAMSmartStylePreviewGridView_didFinishRendering__block_invoke;
  v4[3] = &unk_1E76FA2B8;
  v4[4] = &v5;
  [_previewViews enumerateObjectsUsingBlock:v4];

  LOBYTE(_previewViews) = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return _previewViews;
}

uint64_t __50__CAMSmartStylePreviewGridView_didFinishRendering__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 didFinishRendering];
  if ((result & 1) == 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a4 = 1;
  }

  return result;
}

- (void)setStyle:(id)style
{
  v13 = *MEMORY[0x1E69E9840];
  styleCopy = style;
  style = self->_style;
  if (style != styleCopy && ([(CEKSmartStyle *)style isEqualToSmartStyle:styleCopy]& 1) == 0)
  {
    v7 = os_log_create("com.apple.camera", "SmartStyleSettings");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      logIdentifier = [(CAMSmartStylePreviewGridView *)self logIdentifier];
      v9 = 138543618;
      v10 = logIdentifier;
      v11 = 2114;
      v12 = styleCopy;
      _os_log_impl(&dword_1A3640000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: setting style %{public}@", &v9, 0x16u);
    }

    objc_storeStrong(&self->_style, style);
    [(CAMSmartStylePreviewGridView *)self _updateStyleOnPreviewViews];
  }
}

- (void)_updateStyleOnPreviewViews
{
  expandedItemIndex = [(CAMSmartStylePreviewGridView *)self expandedItemIndex];
  [MEMORY[0x1E69B3C60] begin];
  _previewViews = [(CAMSmartStylePreviewGridView *)self _previewViews];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __58__CAMSmartStylePreviewGridView__updateStyleOnPreviewViews__block_invoke;
  v5[3] = &unk_1E76FA2E0;
  v5[4] = self;
  v5[5] = expandedItemIndex;
  [_previewViews enumerateObjectsUsingBlock:v5];

  [MEMORY[0x1E69B3C60] commit];
}

void __58__CAMSmartStylePreviewGridView__updateStyleOnPreviewViews__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 40);
  if (v4 == 0x7FFFFFFFFFFFFFFFLL || v4 == a3)
  {
    v6 = *(a1 + 32);
    v7 = a2;
    v8 = [v6 style];
    [v7 setStyle:v8];
  }
}

- (void)speedUpFadeInAnimations
{
  _previewViews = [(CAMSmartStylePreviewGridView *)self _previewViews];
  [_previewViews enumerateObjectsUsingBlock:&__block_literal_global_14];
}

- (void)handleTap:(id)tap
{
  tapCopy = tap;
  if ([(CAMSmartStylePreviewGridView *)self _allowsExpandOnTap])
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    expandedItemIndex = [(CAMSmartStylePreviewGridView *)self expandedItemIndex];
    if (expandedItemIndex == 0x7FFFFFFFFFFFFFFFLL && (-[CAMSmartStylePreviewGridView _previewViews](self, "_previewViews"), v5 = objc_claimAutoreleasedReturnValue(), v7 = MEMORY[0x1E69E9820], v8 = 3221225472, v9 = __42__CAMSmartStylePreviewGridView_handleTap___block_invoke, v10 = &unk_1E76FA328, v11 = tapCopy, v12 = &v13, [v5 enumerateObjectsUsingBlock:&v7], v5, v11, v14[3] == 0x7FFFFFFFFFFFFFFFLL))
    {
      v6 = os_log_create("com.apple.camera", "SmartStyleSettings");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [CAMSmartStylePreviewGridView handleTap:v6];
      }
    }

    else
    {
      v6 = [(CAMSmartStylePreviewGridView *)self delegate:v7];
      [v6 smartStylePreviewGridView:self didTapItemAtIndex:v14[3]];
    }

    _Block_object_dispose(&v13, 8);
  }
}

BOOL __42__CAMSmartStylePreviewGridView_handleTap___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = *(a1 + 32);
  v8 = a2;
  [v7 locationInView:v8];
  v10 = v9;
  v12 = v11;
  [v8 bounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v23.origin.x = v14;
  v23.origin.y = v16;
  v23.size.width = v18;
  v23.size.height = v20;
  v22.x = v10;
  v22.y = v12;
  result = CGRectContainsPoint(v23, v22);
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = a3;
    *a4 = 1;
  }

  return result;
}

- (void)smartStylePreviewViewDidFinishRendering:(id)rendering
{
  if ([(CAMSmartStylePreviewGridView *)self didFinishRendering])
  {
    delegate = [(CAMSmartStylePreviewGridView *)self delegate];
    [delegate smartStylePreviewGridViewDidFinishRendering:self];
  }
}

- (CAMSmartStylePreviewGridViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)updateGridIndex:(uint64_t)a1 withResourceLoadResult:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&dword_1A3640000, a2, OS_LOG_TYPE_ERROR, "Attempting to set resourceLoadResult on bad grid index: %lu", &v2, 0xCu);
}

@end