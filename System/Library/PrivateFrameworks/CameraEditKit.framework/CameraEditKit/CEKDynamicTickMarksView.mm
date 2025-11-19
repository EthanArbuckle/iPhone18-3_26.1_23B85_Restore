@interface CEKDynamicTickMarksView
- (BOOL)_bounds:(CGRect)a3 containsTickMarkAtIndex:(unint64_t)a4;
- (BOOL)_isUsingCells;
- (BOOL)_isUsingImages;
- (CEKDynamicTickMarksView)initWithFrame:(CGRect)a3;
- (CEKSliderTickMarksDelegate)delegate;
- (CEKTickMarksCellDataProvider)cellDataProvider;
- (CEKTickMarksImageDataProvider)imageDataProvider;
- (CGAffineTransform)contentTransform;
- (CGRect)_frameForTickMarkAtIndex:(unint64_t)a3 selected:(BOOL)a4;
- (CGRect)frameForTickMarkAtIndex:(unint64_t)a3;
- (CGRect)visibleBounds;
- (double)_lengthForMagneticTickMark;
- (double)_lengthForStandardTickMark;
- (id)_colorForTickMarkAtIndex:(unint64_t)a3 selected:(BOOL)a4 isTickEnabled:(BOOL)a5;
- (id)_indexesIntersectingVisibleBounds;
- (void)_configureHighlightForTickMark:(id)a3 atIndex:(unint64_t)a4;
- (void)_configureTickMark:(id)a3 forIndex:(unint64_t)a4;
- (void)_configureTickMark:(id)a3 forIndex:(unint64_t)a4 selected:(BOOL)a5;
- (void)_dequeueAndInstallTickMarkForIndex:(unint64_t)a3;
- (void)_destroyAllTickMarks;
- (void)_layoutDynamicCellTickMark:(id)a3 atIndex:(unint64_t)a4;
- (void)_recycleTickMarks;
- (void)_refreshTickMarks;
- (void)_refreshTickMarksHighlight;
- (void)_removeAndEnqueueTickMarkAtIndex:(unint64_t)a3;
- (void)layoutSubviews;
- (void)performWaveAnimation;
- (void)setCellDataProvider:(id)a3;
- (void)setContentTransform:(CGAffineTransform *)a3;
- (void)setContentTransform:(CGAffineTransform *)a3 animated:(BOOL)a4;
- (void)setHighlightSelectedIndex:(BOOL)a3 animated:(BOOL)a4;
- (void)setImageDataProvider:(id)a3;
- (void)setSelectedTickMarkIndex:(unint64_t)a3 animated:(BOOL)a4;
- (void)setVisibleBounds:(CGRect)a3;
- (void)tickMarksModelDidChangeWidthForTickMarkCountWithModel:(id)a3;
@end

@implementation CEKDynamicTickMarksView

- (CEKDynamicTickMarksView)initWithFrame:(CGRect)a3
{
  v21.receiver = self;
  v21.super_class = CEKDynamicTickMarksView;
  v3 = [(CEKDynamicTickMarksView *)&v21 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(_TtC13CameraEditKit14TickMarksModel);
    tickMarksModel = v3->_tickMarksModel;
    v3->_tickMarksModel = v4;

    [(TickMarksModel *)v3->_tickMarksModel setTickMarkWidth:2.0];
    [(TickMarksModel *)v3->_tickMarksModel setDataSource:v3];
    [(TickMarksModel *)v3->_tickMarksModel setDelegate:v3];
    v6 = [MEMORY[0x1E696AC90] indexSet];
    installedTickMarkIndexes = v3->__installedTickMarkIndexes;
    v3->__installedTickMarkIndexes = v6;

    v8 = [MEMORY[0x1E696AD50] indexSet];
    waveIndexes = v3->__waveIndexes;
    v3->__waveIndexes = v8;

    v10 = [MEMORY[0x1E695DF90] dictionary];
    tickMarksByIndex = v3->__tickMarksByIndex;
    v3->__tickMarksByIndex = v10;

    v12 = [[_TtC13CameraEditKit24TickMarksVisibilityModel alloc] initWithModel:v3->_tickMarksModel];
    tickMarksVisibilityModel = v3->__tickMarksVisibilityModel;
    v3->__tickMarksVisibilityModel = v12;

    v14 = [MEMORY[0x1E695DFA8] set];
    tickMarksReusePool = v3->__tickMarksReusePool;
    v3->__tickMarksReusePool = v14;

    v16 = MEMORY[0x1E695EFD0];
    v17 = *(MEMORY[0x1E695EFD0] + 16);
    *&v3->_contentTransform.a = *MEMORY[0x1E695EFD0];
    *&v3->_contentTransform.c = v17;
    *&v3->_contentTransform.tx = *(v16 + 32);
    v18 = [MEMORY[0x1E696AC90] indexSetWithIndex:0];
    selectedIndexes = v3->__selectedIndexes;
    v3->__selectedIndexes = v18;

    v3->_enabled = 1;
  }

  return v3;
}

- (void)layoutSubviews
{
  [(CEKDynamicTickMarksView *)self _recycleTickMarks];
  if ([(CEKDynamicTickMarksView *)self _needsTickMarkRefresh])
  {

    [(CEKDynamicTickMarksView *)self _refreshTickMarks];
  }
}

- (void)setVisibleBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  p_visibleBounds = &self->_visibleBounds;
  if (!CGRectEqualToRect(a3, self->_visibleBounds))
  {
    p_visibleBounds->origin.x = x;
    p_visibleBounds->origin.y = y;
    p_visibleBounds->size.width = width;
    p_visibleBounds->size.height = height;

    [(CEKDynamicTickMarksView *)self setNeedsLayout];
  }
}

- (void)setSelectedTickMarkIndex:(unint64_t)a3 animated:(BOOL)a4
{
  selectedTickMarkIndex = self->_selectedTickMarkIndex;
  if (selectedTickMarkIndex != a3)
  {
    v5 = a4;
    self->_selectedTickMarkIndex = a3;
    v8 = [(CEKDynamicTickMarksView *)self _tickMarksByIndex];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __61__CEKDynamicTickMarksView_setSelectedTickMarkIndex_animated___block_invoke;
    aBlock[3] = &unk_1E7CC6460;
    v9 = v8;
    v40 = v9;
    v41 = self;
    v10 = _Block_copy(aBlock);
    if (selectedTickMarkIndex <= a3)
    {
      v11 = a3;
    }

    else
    {
      v11 = selectedTickMarkIndex;
    }

    if (selectedTickMarkIndex >= a3)
    {
      v12 = a3;
    }

    else
    {
      v12 = selectedTickMarkIndex;
    }

    v13 = v11 - v12;
    if (v5)
    {
      v14 = v12;
    }

    else
    {
      v14 = a3;
    }

    if (v5)
    {
      v15 = v13 + 1;
    }

    else
    {
      v15 = 1;
    }

    v16 = [MEMORY[0x1E696AD50] indexSetWithIndexesInRange:{v14, v15}];
    [v16 removeIndex:selectedTickMarkIndex];
    v17 = [(CEKDynamicTickMarksView *)self _selectedIndexes];
    [(CEKDynamicTickMarksView *)self _setSelectedIndexes:v16];
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __61__CEKDynamicTickMarksView_setSelectedTickMarkIndex_animated___block_invoke_2;
    v37[3] = &unk_1E7CC6488;
    v18 = v10;
    v38 = v18;
    [v16 enumerateIndexesUsingBlock:v37];
    if (v5)
    {
      v19 = [MEMORY[0x1E69DD280] behaviorWithDampingRatio:0.75 response:0.4];
      v20 = MEMORY[0x1E69DD250];
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __61__CEKDynamicTickMarksView_setSelectedTickMarkIndex_animated___block_invoke_4;
      v32[3] = &unk_1E7CC64B0;
      v33 = v17;
      v34 = v18;
      v21 = v18;
      [v20 _animateUsingSpringBehavior:v19 tracking:0 animations:v32 completion:0];
      objc_initWeak(&location, self);
      v22 = dispatch_time(0, 20000000);
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __61__CEKDynamicTickMarksView_setSelectedTickMarkIndex_animated___block_invoke_6;
      v26[3] = &unk_1E7CC6528;
      objc_copyWeak(v30, &location);
      v23 = v16;
      v30[1] = a3;
      v27 = v23;
      v28 = v19;
      v29 = v9;
      v24 = v19;
      dispatch_after(v22, MEMORY[0x1E69E96A0], v26);

      objc_destroyWeak(v30);
      objc_destroyWeak(&location);
    }

    else
    {
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __61__CEKDynamicTickMarksView_setSelectedTickMarkIndex_animated___block_invoke_3;
      v35[3] = &unk_1E7CC6488;
      v36 = v18;
      v25 = v18;
      [v17 enumerateIndexesUsingBlock:v35];
      v24 = v36;
    }
  }
}

void __61__CEKDynamicTickMarksView_setSelectedTickMarkIndex_animated___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
  v8 = [v6 objectForKeyedSubscript:v7];

  if (a3)
  {
    [v8 _removeAllRetargetableAnimations:0];
  }

  [*(a1 + 40) _configureTickMark:v8 forIndex:a2 selected:a3];
}

void __61__CEKDynamicTickMarksView_setSelectedTickMarkIndex_animated___block_invoke_4(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __61__CEKDynamicTickMarksView_setSelectedTickMarkIndex_animated___block_invoke_5;
  v2[3] = &unk_1E7CC6488;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 enumerateIndexesUsingBlock:v2];
}

void __61__CEKDynamicTickMarksView_setSelectedTickMarkIndex_animated___block_invoke_6(uint64_t a1)
{
  objc_copyWeak(&to, (a1 + 56));
  v2 = objc_loadWeakRetained(&to);
  v3 = [v2 _selectedIndexes];
  v4 = *(a1 + 32);

  if (v3 == v4)
  {
    v5 = [MEMORY[0x1E696AD50] indexSetWithIndex:*(a1 + 64)];
    v6 = objc_loadWeakRetained(&to);
    [v6 _setSelectedIndexes:v5];

    v7 = *(a1 + 32);
    v8 = objc_loadWeakRetained(&to);
    [v7 removeIndex:{objc_msgSend(v8, "selectedTickMarkIndex")}];

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __61__CEKDynamicTickMarksView_setSelectedTickMarkIndex_animated___block_invoke_7;
    v10[3] = &unk_1E7CC6500;
    v9 = *(a1 + 32);
    v11 = *(a1 + 40);
    objc_copyWeak(&v13, &to);
    v12 = *(a1 + 48);
    [v9 enumerateIndexesUsingBlock:v10];

    objc_destroyWeak(&v13);
  }

  objc_destroyWeak(&to);
}

void __61__CEKDynamicTickMarksView_setSelectedTickMarkIndex_animated___block_invoke_7(uint64_t a1, void *a2)
{
  v4 = MEMORY[0x1E69DD250];
  v5 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __61__CEKDynamicTickMarksView_setSelectedTickMarkIndex_animated___block_invoke_8;
  v6[3] = &unk_1E7CC64D8;
  objc_copyWeak(v8, (a1 + 48));
  v7 = *(a1 + 40);
  v8[1] = a2;
  [v4 _animateUsingSpringBehavior:v5 tracking:0 animations:v6 completion:0];

  objc_destroyWeak(v8);
}

void __61__CEKDynamicTickMarksView_setSelectedTickMarkIndex_animated___block_invoke_8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 48)];
  v4 = [v2 objectForKeyedSubscript:v3];
  [WeakRetained _configureTickMark:v4 forIndex:*(a1 + 48) selected:0];
}

- (void)setHighlightSelectedIndex:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_highlightSelectedIndex != a3)
  {
    self->_highlightSelectedIndex = a3;
    if (a4)
    {
      v6[5] = v4;
      v6[6] = v5;
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __62__CEKDynamicTickMarksView_setHighlightSelectedIndex_animated___block_invoke;
      v6[3] = &unk_1E7CC6358;
      v6[4] = self;
      [MEMORY[0x1E69DD250] animateWithDuration:0 delay:v6 options:0 animations:0.3 completion:0.0];
    }

    else
    {

      [(CEKDynamicTickMarksView *)self _refreshTickMarksHighlight];
    }
  }
}

- (void)performWaveAnimation
{
  v3 = [MEMORY[0x1E696AD50] indexSet];
  [(CEKDynamicTickMarksView *)self _setWaveIndexes:v3];

  [(CEKDynamicTickMarksView *)self bounds];
  if (v4 != 0.0)
  {
    [(CEKDynamicTickMarksView *)self _setWaveAnimationDelayActive:1];
    v5 = [(CEKDynamicTickMarksView *)self _installedTickMarkIndexes];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __47__CEKDynamicTickMarksView_performWaveAnimation__block_invoke;
    v8[3] = &unk_1E7CC6550;
    v8[4] = self;
    [v5 enumerateIndexesUsingBlock:v8];

    v6 = dispatch_time(0, 100000000);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __47__CEKDynamicTickMarksView_performWaveAnimation__block_invoke_2;
    v7[3] = &unk_1E7CC6358;
    v7[4] = self;
    dispatch_after(v6, MEMORY[0x1E69E96A0], v7);
  }
}

void __47__CEKDynamicTickMarksView_performWaveAnimation__block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) _tickMarksByIndex];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
  v7 = [v4 objectForKeyedSubscript:v5];

  v6 = [*(a1 + 32) _waveIndexes];
  [v6 addIndex:a2];

  [*(a1 + 32) _configureTickMark:v7 forIndex:a2];
}

void __47__CEKDynamicTickMarksView_performWaveAnimation__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _setWaveAnimationDelayActive:0];
  v2 = [*(a1 + 32) _installedTickMarkIndexes];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __47__CEKDynamicTickMarksView_performWaveAnimation__block_invoke_3;
  v3[3] = &unk_1E7CC6550;
  v3[4] = *(a1 + 32);
  [v2 enumerateIndexesUsingBlock:v3];
}

void __47__CEKDynamicTickMarksView_performWaveAnimation__block_invoke_3(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) _tickMarksByIndex];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
  v6 = [v4 objectForKeyedSubscript:v5];

  v7 = [*(a1 + 32) _tickMarksByIndex];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "selectedTickMarkIndex")}];
  v9 = [v7 objectForKeyedSubscript:v8];

  [v6 center];
  v11 = v10;
  [v9 center];
  v13 = v11 - v12;
  [*(a1 + 32) bounds];
  v15 = fabs(v13 / v14);
  [*(a1 + 32) _setWaveAnimationDelayActive:0];
  [*(a1 + 32) _configureTickMark:v6 forIndex:a2];
  v16 = objc_alloc_init(CEKFluidBehaviorSettings);
  [(CEKFluidBehaviorSettings *)v16 setDefaultValues];
  [(CEKFluidBehaviorSettings *)v16 setDampingRatio:0.6];
  [(CEKFluidBehaviorSettings *)v16 setResponse:v15 * 3.0 + 0.6];
  [(CEKFluidBehaviorSettings *)v16 setRetargetImpulse:0.2];
  v17 = MEMORY[0x1E69DD250];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __47__CEKDynamicTickMarksView_performWaveAnimation__block_invoke_4;
  v20[3] = &unk_1E7CC6578;
  v18 = *(a1 + 32);
  v21 = v6;
  v22 = a2;
  v20[4] = v18;
  v19 = v6;
  [v17 cek_animateWithSettings:v16 mode:3 animations:v20 completion:0];
}

uint64_t __47__CEKDynamicTickMarksView_performWaveAnimation__block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) _waveIndexes];
  [v2 removeIndex:*(a1 + 48)];

  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);

  return [v3 _configureTickMark:v4 forIndex:v5];
}

- (id)_colorForTickMarkAtIndex:(unint64_t)a3 selected:(BOOL)a4 isTickEnabled:(BOOL)a5
{
  v5 = a5;
  if (a4 && [(CEKDynamicTickMarksView *)self isEnabled])
  {
    v7 = [(CEKDynamicTickMarksView *)self tintColor];
    if (!v5)
    {
LABEL_4:
      v8 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.4];
      goto LABEL_7;
    }
  }

  else
  {
    v9 = [(CEKDynamicTickMarksView *)self tickMarksModel];
    v7 = [v9 mainTickMarkColor];

    if (!v5)
    {
      goto LABEL_4;
    }
  }

  v8 = v7;
LABEL_7:
  v10 = v8;

  return v10;
}

- (void)_configureTickMark:(id)a3 forIndex:(unint64_t)a4
{
  v6 = a3;
  [(CEKDynamicTickMarksView *)self _configureTickMark:v6 forIndex:a4 selected:[(CEKDynamicTickMarksView *)self selectedTickMarkIndex]== a4];
}

- (void)_configureTickMark:(id)a3 forIndex:(unint64_t)a4 selected:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  if (v8)
  {
    v9 = [(CEKDynamicTickMarksView *)self tickMarksModel];
    v10 = [v9 tickMarksCount];

    if (v10 > a4)
    {
      [(CEKDynamicTickMarksView *)self _frameForTickMarkAtIndex:a4 selected:v5];
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v18 = v17;
      if ([(CEKDynamicTickMarksView *)self _isUsingCells])
      {
        v19 = [(CEKDynamicTickMarksView *)self cellDataProvider];
        v20 = [v19 configurationAtIndex:a4];

        v21 = v8;
        [v21 setContentConfiguration:v20];
        [(CEKDynamicTickMarksView *)self contentTransform];
        v47 = v50;
        v48 = v51;
        v49 = v52;
        [v21 setTransform:&v47];
        v22 = [(CEKDynamicTickMarksView *)self _colorForTickMarkAtIndex:a4 selected:v5 isTickEnabled:1];
        [v21 setTintColor:v22];

        [v21 setAccessibilityIgnoresInvertColors:1];
        [(CEKDynamicTickMarksView *)self _layoutDynamicCellTickMark:v21 atIndex:a4];
LABEL_7:

        goto LABEL_23;
      }

      if ([(CEKDynamicTickMarksView *)self _isUsingImages])
      {
        v23 = [(CEKDynamicTickMarksView *)self imageDataProvider];
        v20 = [v23 imageForTickMarkAtIndex:a4];

        v24 = [(CEKDynamicTickMarksView *)self imageDataProvider];
        v25 = [v24 isDisabledAtIndex:a4];

        v21 = v8;
        [v21 setImage:v20];
        [(CEKDynamicTickMarksView *)self contentTransform];
        v47 = v44;
        v48 = v45;
        v49 = v46;
        [v21 setTransform:&v47];
        v26 = [(CEKDynamicTickMarksView *)self _colorForTickMarkAtIndex:a4 selected:v5 isTickEnabled:v25 ^ 1u];
        [v21 setTintColor:v26];

        [v21 setAccessibilityIgnoresInvertColors:1];
        [(CEKDynamicTickMarksView *)self _configureHighlightForTickMark:v21 atIndex:a4];
        goto LABEL_7;
      }

      [v8 setFrame:{v12, v14, v16, v18}];
      [v8 frame];
      v28 = v27 * 0.5;
      v29 = [v8 layer];
      [v29 setCornerRadius:v28];

      [v8 setAccessibilityIgnoresInvertColors:1];
      v30 = [(CEKDynamicTickMarksView *)self tickMarksModel];
      v31 = [v30 isMainTickMarkAtIndex:a4];

      v32 = [(CEKDynamicTickMarksView *)self magneticTickMarkIndexes];
      v33 = [v32 containsIndex:a4];

      v34 = [(CEKDynamicTickMarksView *)self tickMarksModel];
      if ([v34 endTickMarksProminent])
      {
        if (a4)
        {
          v35 = [(CEKDynamicTickMarksView *)self tickMarksModel];
          v36 = [v35 tickMarksCount] - 1 == a4;
        }

        else
        {
          v36 = 1;
        }
      }

      else
      {
        v36 = 0;
      }

      v37 = 1.0;
      if (!v5)
      {
        v38 = [(CEKDynamicTickMarksView *)self _tickMarksVisibilityModel];
        if ([v38 shouldHideTickMarkAtIndex:a4])
        {
        }

        else
        {
          v39 = [(CEKDynamicTickMarksView *)self _waveAnimationDelayActive];

          v37 = 0.4;
          if (v31)
          {
            v37 = 0.7;
          }

          if ((v33 | v36))
          {
            v37 = 1.0;
          }

          if (!v39)
          {
            goto LABEL_22;
          }
        }

        v37 = 0.0;
      }

LABEL_22:
      [v8 setAlpha:v37];
      v40 = MEMORY[0x1E69DD250];
      v41[0] = MEMORY[0x1E69E9820];
      v41[1] = 3221225472;
      v41[2] = __64__CEKDynamicTickMarksView__configureTickMark_forIndex_selected___block_invoke;
      v41[3] = &unk_1E7CC6578;
      v43 = a4;
      v41[4] = self;
      v42 = v8;
      [v40 performWithoutAnimation:v41];
    }
  }

LABEL_23:
}

void __64__CEKDynamicTickMarksView__configureTickMark_forIndex_selected___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _colorForTickMarkAtIndex:*(a1 + 48) selected:*(a1 + 48) == objc_msgSend(*(a1 + 32) isTickEnabled:{"selectedTickMarkIndex"), 1}];
  [*(a1 + 40) setBackgroundColor:v2];
}

- (void)_configureHighlightForTickMark:(id)a3 atIndex:(unint64_t)a4
{
  v6 = a3;
  if ([(CEKDynamicTickMarksView *)self _isUsingImages])
  {
    v7 = [(CEKDynamicTickMarksView *)self selectedTickMarkIndex];
    [(CEKDynamicTickMarksView *)self _frameForTickMarkAtIndex:a4 selected:v7 == a4];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v16 = v6;
    v17 = [(CEKDynamicTickMarksView *)self imageDataProvider];
    [v17 sizeForImageAtIndex:a4];

    v18 = [(CEKDynamicTickMarksView *)self highlightSelectedIndex];
    v19 = 1.0;
    if (v7 == a4 && v18)
    {
      memset(&v21, 0, sizeof(v21));
      CGAffineTransformMakeScale(&v21, 0.75, 0.75);
      v19 = 0.6;
    }

    v22.origin.x = v9;
    v22.origin.y = v11;
    v22.size.width = v13;
    v22.size.height = v15;
    CGRectGetMidX(v22);
    [(CEKDynamicTickMarksView *)self bounds];
    CGRectGetMidY(v23);
    CEKRectWithSize();
    v20 = [(CEKDynamicTickMarksView *)self traitCollection];
    [v20 displayScale];
    UIRectCenteredAboutPointScale();

    UIRectGetCenter();
    [v16 setCenter:?];
    [v16 setBounds:CEKRectWithSize()];
    [v16 setAlpha:v19];
  }
}

- (void)_layoutDynamicCellTickMark:(id)a3 atIndex:(unint64_t)a4
{
  v18 = a3;
  if ([(CEKDynamicTickMarksView *)self _isUsingCells])
  {
    [(CEKDynamicTickMarksView *)self _frameForTickMarkAtIndex:a4 selected:[(CEKDynamicTickMarksView *)self selectedTickMarkIndex]== a4];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v14 = [(CEKDynamicTickMarksView *)self traitCollection];
    [v14 displayScale];

    v20.origin.x = v7;
    v20.origin.y = v9;
    v20.size.width = v11;
    v20.size.height = v13;
    MidX = CGRectGetMidX(v20);
    [(CEKDynamicTickMarksView *)self bounds];
    MidY = CGRectGetMidY(v21);
    v17 = [v18 contentConfiguration];
    [v17 contentSize];
    UISizeCeilToScale();

    CEKRectWithSize();
    UIRectCenteredAboutPointScale();
    [v18 setCenter:{MidX, MidY}];
    [v18 setBounds:CEKRectWithSize()];
  }
}

- (double)_lengthForMagneticTickMark
{
  [(CEKDynamicTickMarksView *)self bounds];

  UIRoundToViewScale();
  return result;
}

- (double)_lengthForStandardTickMark
{
  [(CEKDynamicTickMarksView *)self bounds];

  UIRoundToViewScale();
  return result;
}

- (CGRect)frameForTickMarkAtIndex:(unint64_t)a3
{
  v5 = [(CEKDynamicTickMarksView *)self selectedTickMarkIndex]== a3;

  [(CEKDynamicTickMarksView *)self _frameForTickMarkAtIndex:a3 selected:v5];
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (CGRect)_frameForTickMarkAtIndex:(unint64_t)a3 selected:(BOOL)a4
{
  v4 = a4;
  v7 = [(CEKDynamicTickMarksView *)self tickMarksModel];
  if ([v7 endTickMarksProminent])
  {
    if (a3)
    {
      v8 = a3 + 1 == [v7 tickMarksCount];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = [(CEKDynamicTickMarksView *)self magneticTickMarkIndexes];
  v10 = [v9 containsIndex:a3];

  if (v4)
  {
    [(CEKDynamicTickMarksView *)self _lengthForSelectedTickMark];
  }

  else if ((v10 | v8))
  {
    [(CEKDynamicTickMarksView *)self _lengthForMagneticTickMark];
  }

  else
  {
    [(CEKDynamicTickMarksView *)self _lengthForStandardTickMark];
  }

  v12 = v11;
  [v7 xOffsetForTickMarkIndex:a3];
  v14 = v13;
  v15 = [(CEKDynamicTickMarksView *)self _waveIndexes];
  v16 = [v15 containsIndex:a3];

  if ((v16 & !v4) != 0)
  {
    v12 = 0.1;
  }

  [(CEKDynamicTickMarksView *)self bounds];
  v18 = v17 - v12;
  [v7 tickMarkWidth];
  v20 = v19;

  v21 = v14;
  v22 = v18;
  v23 = v20;
  v24 = v12;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

- (void)_recycleTickMarks
{
  v3 = [(CEKDynamicTickMarksView *)self _indexesIntersectingVisibleBounds];
  v4 = [(CEKDynamicTickMarksView *)self _installedTickMarkIndexes];
  v5 = [v4 mutableCopy];
  [v5 removeIndexes:v3];
  v6 = [v3 mutableCopy];
  [v6 removeIndexes:v4];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __44__CEKDynamicTickMarksView__recycleTickMarks__block_invoke;
  v8[3] = &unk_1E7CC6550;
  v8[4] = self;
  [v5 enumerateIndexesUsingBlock:v8];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__CEKDynamicTickMarksView__recycleTickMarks__block_invoke_2;
  v7[3] = &unk_1E7CC6550;
  v7[4] = self;
  [v6 enumerateIndexesUsingBlock:v7];
  [(CEKDynamicTickMarksView *)self _setInstalledTickMarkIndexes:v3];
}

- (void)_refreshTickMarks
{
  v3 = [(CEKDynamicTickMarksView *)self _installedTickMarkIndexes];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __44__CEKDynamicTickMarksView__refreshTickMarks__block_invoke;
  v4[3] = &unk_1E7CC6550;
  v4[4] = self;
  [v3 enumerateIndexesUsingBlock:v4];

  self->__needsTickMarkRefresh = 0;
}

void __44__CEKDynamicTickMarksView__refreshTickMarks__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v6 = [v3 _tickMarksByIndex];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
  v5 = [v6 objectForKeyedSubscript:v4];
  [v3 _configureTickMark:v5 forIndex:a2];
}

- (void)_refreshTickMarksHighlight
{
  v3 = [(CEKDynamicTickMarksView *)self _installedTickMarkIndexes];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __53__CEKDynamicTickMarksView__refreshTickMarksHighlight__block_invoke;
  v4[3] = &unk_1E7CC6550;
  v4[4] = self;
  [v3 enumerateIndexesUsingBlock:v4];
}

void __53__CEKDynamicTickMarksView__refreshTickMarksHighlight__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v6 = [v3 _tickMarksByIndex];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
  v5 = [v6 objectForKeyedSubscript:v4];
  [v3 _configureHighlightForTickMark:v5 atIndex:a2];
}

- (id)_indexesIntersectingVisibleBounds
{
  v3 = [(CEKDynamicTickMarksView *)self tickMarksModel];
  v4 = [v3 tickMarksCount];

  if (v4 && ((-[CEKDynamicTickMarksView visibleBounds](self, "visibleBounds"), v6 = v5, v8 = v7, v10 = v9, v12 = v11, -[CEKDynamicTickMarksView tickMarksModel](self, "tickMarksModel"), v13 = objc_claimAutoreleasedReturnValue(), v14 = [v13 floorTickMarkIndexForXOffset:v6], v13, -[CEKDynamicTickMarksView _bounds:containsTickMarkAtIndex:](self, "_bounds:containsTickMarkAtIndex:", v14, v6, v8, v10, v12)) || (++v14, -[CEKDynamicTickMarksView _bounds:containsTickMarkAtIndex:](self, "_bounds:containsTickMarkAtIndex:", v14, v6, v8, v10, v12))) && v14 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v16 = [(CEKDynamicTickMarksView *)self tickMarksModel];
    v20.origin.x = v6;
    v20.origin.y = v8;
    v20.size.width = v10;
    v20.size.height = v12;
    v17 = [v16 floorTickMarkIndexForXOffset:CGRectGetMaxX(v20)];

    v15 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{v14, v17 - v14 + 1}];
  }

  else
  {
    v15 = [MEMORY[0x1E696AC90] indexSet];
  }

  return v15;
}

- (BOOL)_bounds:(CGRect)a3 containsTickMarkAtIndex:(unint64_t)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(CEKDynamicTickMarksView *)self frameForTickMarkAtIndex:a4];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = x;
  v17 = y;
  v18 = width;
  v19 = height;

  return CGRectIntersectsRect(*&v16, *&v9);
}

- (void)_dequeueAndInstallTickMarkForIndex:(unint64_t)a3
{
  v10 = [(CEKDynamicTickMarksView *)self _tickMarksReusePool];
  v5 = [v10 anyObject];
  if (v5)
  {
    v6 = v5;
    [v10 removeObject:v5];
  }

  else
  {
    if ([(CEKDynamicTickMarksView *)self _isUsingCells])
    {
      v7 = CEKDynamicTickCell;
    }

    else if ([(CEKDynamicTickMarksView *)self _isUsingImages])
    {
      v7 = MEMORY[0x1E69DCAE0];
    }

    else
    {
      v7 = MEMORY[0x1E69DD250];
    }

    v6 = objc_alloc_init(v7);
  }

  [(CEKDynamicTickMarksView *)self addSubview:v6];
  v8 = [(CEKDynamicTickMarksView *)self _tickMarksByIndex];
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [v8 setObject:v6 forKeyedSubscript:v9];

  [(CEKDynamicTickMarksView *)self _configureTickMark:v6 forIndex:a3];
}

- (void)_removeAndEnqueueTickMarkAtIndex:(unint64_t)a3
{
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v4 = [(CEKDynamicTickMarksView *)self _tickMarksByIndex];
  v5 = [v4 objectForKeyedSubscript:v8];

  v6 = [(CEKDynamicTickMarksView *)self _tickMarksByIndex];
  [v6 setObject:0 forKeyedSubscript:v8];

  [v5 removeFromSuperview];
  [v5 _removeAllRetargetableAnimations:0];
  v7 = [(CEKDynamicTickMarksView *)self _tickMarksReusePool];
  [v7 addObject:v5];
}

- (void)_destroyAllTickMarks
{
  v3 = [(CEKDynamicTickMarksView *)self _installedTickMarkIndexes];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47__CEKDynamicTickMarksView__destroyAllTickMarks__block_invoke;
  v7[3] = &unk_1E7CC6550;
  v7[4] = self;
  [v3 enumerateIndexesUsingBlock:v7];

  v4 = [(CEKDynamicTickMarksView *)self _tickMarksReusePool];
  [v4 removeAllObjects];

  v5 = [MEMORY[0x1E696AC90] indexSet];
  [(CEKDynamicTickMarksView *)self _setInstalledTickMarkIndexes:v5];

  v6 = [MEMORY[0x1E696AC90] indexSetWithIndex:{-[CEKDynamicTickMarksView selectedTickMarkIndex](self, "selectedTickMarkIndex")}];
  [(CEKDynamicTickMarksView *)self _setSelectedIndexes:v6];
}

- (void)tickMarksModelDidChangeWidthForTickMarkCountWithModel:(id)a3
{
  [(CEKDynamicTickMarksView *)self _setNeedsRefreshTickMarks];
  v4 = [(CEKDynamicTickMarksView *)self _tickMarksVisibilityModel];
  [v4 setNeedsRebuild];

  v5 = [(CEKDynamicTickMarksView *)self delegate];
  [v5 tickMarksViewDidChangeWidthForTickMarkCount:self];
}

- (void)setImageDataProvider:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_imageDataProvider);

  v5 = obj;
  if (WeakRetained != obj)
  {
    v6 = objc_loadWeakRetained(&self->_imageDataProvider);
    v7 = v6 != 0;

    v8 = objc_storeWeak(&self->_imageDataProvider, obj);
    if (((v7 ^ (obj == 0)) & 1) == 0)
    {
      [(CEKDynamicTickMarksView *)self _destroyAllTickMarks];
    }

    [(CEKDynamicTickMarksView *)self reloadContent];
    v5 = obj;
  }
}

- (BOOL)_isUsingImages
{
  v2 = [(CEKDynamicTickMarksView *)self imageDataProvider];
  v3 = v2 != 0;

  return v3;
}

- (void)setCellDataProvider:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_cellDataProvider);

  v5 = obj;
  if (WeakRetained != obj)
  {
    v6 = objc_loadWeakRetained(&self->_cellDataProvider);
    v7 = v6 != 0;

    v8 = objc_storeWeak(&self->_cellDataProvider, obj);
    if (((v7 ^ (obj == 0)) & 1) == 0)
    {
      [(CEKDynamicTickMarksView *)self _destroyAllTickMarks];
    }

    [(CEKDynamicTickMarksView *)self reloadContent];
    v5 = obj;
  }
}

- (BOOL)_isUsingCells
{
  if ([(CEKDynamicTickMarksView *)self _isUsingImages])
  {
    return 0;
  }

  v4 = [(CEKDynamicTickMarksView *)self cellDataProvider];
  v3 = v4 != 0;

  return v3;
}

- (void)setContentTransform:(CGAffineTransform *)a3
{
  v3 = *&a3->c;
  v4[0] = *&a3->a;
  v4[1] = v3;
  v4[2] = *&a3->tx;
  [(CEKDynamicTickMarksView *)self setContentTransform:v4 animated:0];
}

- (void)setContentTransform:(CGAffineTransform *)a3 animated:(BOOL)a4
{
  v4 = a4;
  p_contentTransform = &self->_contentTransform;
  v8 = *&a3->c;
  *&t1.a = *&a3->a;
  *&t1.c = v8;
  *&t1.tx = *&a3->tx;
  v9 = *&self->_contentTransform.c;
  *&t2.a = *&self->_contentTransform.a;
  *&t2.c = v9;
  *&t2.tx = *&self->_contentTransform.tx;
  if (!CGAffineTransformEqualToTransform(&t1, &t2))
  {
    if (v4)
    {
      [(CEKDynamicTickMarksView *)self layoutIfNeeded];
      v10 = *&a3->a;
      v11 = *&a3->tx;
      *&p_contentTransform->c = *&a3->c;
      *&p_contentTransform->tx = v11;
      *&p_contentTransform->a = v10;
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __56__CEKDynamicTickMarksView_setContentTransform_animated___block_invoke;
      v14[3] = &unk_1E7CC6358;
      v14[4] = self;
      [MEMORY[0x1E69DD250] animateWithDuration:0 delay:v14 options:0 animations:0.3 completion:0.0];
    }

    else
    {
      v12 = *&a3->a;
      v13 = *&a3->tx;
      *&p_contentTransform->c = *&a3->c;
      *&p_contentTransform->tx = v13;
      *&p_contentTransform->a = v12;
      [(CEKDynamicTickMarksView *)self _refreshTickMarks];
    }
  }
}

- (CEKTickMarksImageDataProvider)imageDataProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_imageDataProvider);

  return WeakRetained;
}

- (CEKTickMarksCellDataProvider)cellDataProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_cellDataProvider);

  return WeakRetained;
}

- (CGAffineTransform)contentTransform
{
  v3 = *&self[11].tx;
  *&retstr->a = *&self[11].c;
  *&retstr->c = v3;
  *&retstr->tx = *&self[12].a;
  return self;
}

- (CEKSliderTickMarksDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGRect)visibleBounds
{
  x = self->_visibleBounds.origin.x;
  y = self->_visibleBounds.origin.y;
  width = self->_visibleBounds.size.width;
  height = self->_visibleBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end