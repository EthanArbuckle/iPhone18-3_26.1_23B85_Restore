@interface CAMZoomButtonPlatter
- (CAMZoomButton)zoomFactorButton;
- (CAMZoomButtonPlatter)initWithFrame:(CGRect)a3;
- (CGSize)_intrinsicContentSizeForButtonCount:(unint64_t)a3;
- (CGSize)intrinsicContentSize;
- (double)_zoomFactorForButton:(id)a3 zoomPoint:(id)a4 isZoomFactorButton:(BOOL)a5;
- (double)defaultZoomFactorForButton:(id)a3;
- (id)_createPlatterImageForContentSize:(id)a3;
- (id)_createZoomButton;
- (id)_indexesForChanges:(id)a3;
- (id)baseZoomPointForButton:(id)a3;
- (id)nearestZoomButtonForPoint:(CGPoint)a3;
- (id)nearestZoomButtonForTouch:(id)a3;
- (unint64_t)buttonCount;
- (void)_cancelFocalLengthFlash;
- (void)_flashFocalLengthIfNeeded;
- (void)_updateButtonAccessoryAnimated:(BOOL)a3;
- (void)_updateButtonAlphas;
- (void)_updateButtonAlphasAnimationDuration:(double)a3;
- (void)_updateButtonsAnimated:(BOOL)a3;
- (void)layoutSubviews;
- (void)setButtonAccessoryPosition:(int64_t)a3 animated:(BOOL)a4;
- (void)setButtonAccessoryState:(int64_t)a3 animated:(BOOL)a4;
- (void)setCenterSelectedZoomEnabled:(BOOL)a3 animated:(BOOL)a4;
- (void)setCollapsed:(BOOL)a3 animated:(BOOL)a4;
- (void)setContentType:(int64_t)a3 animated:(BOOL)a4;
- (void)setHasLayoutConflictLeft:(BOOL)a3 animated:(BOOL)a4;
- (void)setHasLayoutConflictRight:(BOOL)a3 animated:(BOOL)a4;
- (void)setOrientation:(int64_t)a3 animated:(BOOL)a4;
- (void)setPreferredCustomLens:(int64_t)a3;
- (void)setZoomFactor:(double)a3 allowFlashingSubstate:(BOOL)a4 animated:(BOOL)a5;
- (void)setZoomPoints:(id)a3 animated:(BOOL)a4;
- (void)setZoomSymbols:(id)a3 animated:(BOOL)a4;
@end

@implementation CAMZoomButtonPlatter

- (CAMZoomButtonPlatter)initWithFrame:(CGRect)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = CAMZoomButtonPlatter;
  v3 = [(CAMZoomButtonPlatter *)&v11 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E695DF70] array];
    allButtons = v3->__allButtons;
    v3->__allButtons = v4;

    zoomPoints = v3->_zoomPoints;
    v3->_zoomPoints = MEMORY[0x1E695E0F0];

    v3->_preferredCustomLens = 0;
    v3->_contentType = 0;
    if (+[CAMUserPreferences solCamSelectedZoomCenteredEnabled])
    {
      CAMZoomButtonPlatterMargin = 0x3FF0000000000000;
    }

    v12[0] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    v8 = [(CAMZoomButtonPlatter *)v3 registerForTraitChanges:v7 withAction:sel__preferredContentSizeCategoryChanged];

    v9 = v3;
  }

  return v3;
}

- (void)layoutSubviews
{
  [(CAMZoomButtonPlatter *)self bounds];
  [(CAMZoomButtonPlatter *)self intrinsicContentSize];
  UIRectCenteredIntegralRectScale();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(CAMZoomButtonPlatter *)self buttonCount];
  v12 = [(CAMZoomButtonPlatter *)self traitCollection];
  v13 = [v12 preferredContentSizeCategory];
  [CAMZoomButton circleDiameterForContentSize:v13];
  v15 = v14 * 0.5;

  UIRectGetCenter();
  v17 = v16;
  v19 = v18;
  v29.origin.x = v4;
  v29.origin.y = v6;
  v29.size.width = v8;
  v29.size.height = v10;
  v20 = v15 + CGRectGetMinX(v29) + *&CAMZoomButtonPlatterMargin;
  v30.origin.x = v4;
  v30.origin.y = v6;
  v30.size.width = v8;
  v30.size.height = v10;
  MaxX = CGRectGetMaxX(v30);
  v22 = 0.0;
  if (v11 >= 2)
  {
    v22 = (MaxX - v15 - *&CAMZoomButtonPlatterMargin - v20) / (v11 - 1);
  }

  v23 = [(CAMZoomButtonPlatter *)self _allButtons];
  v24 = [(CAMZoomButtonPlatter *)self zoomFactorButton];
  v25 = [v23 indexOfObject:v24];

  LOBYTE(v23) = [(CAMZoomButtonPlatter *)self isCenterSelectedZoomEnabled];
  v26 = [(CAMZoomButtonPlatter *)self _allButtons];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __38__CAMZoomButtonPlatter_layoutSubviews__block_invoke;
  v27[3] = &__block_descriptor_81_e30_v32__0__CAMZoomButton_8Q16_B24l;
  v27[4] = v17;
  v27[5] = v19;
  v28 = v23;
  v27[6] = v25;
  *&v27[7] = v15;
  *&v27[8] = v20;
  *&v27[9] = v22;
  [v26 enumerateObjectsUsingBlock:v27];
}

void __38__CAMZoomButtonPlatter_layoutSubviews__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  [v6 intrinsicContentSize];
  UIRectCenteredAboutPointScale();
  [v6 frameForAlignmentRect:?];
  CAMViewSetBoundsAndCenterForFrame(v6, v2, v3, v4, v5);
}

- (void)_updateButtonAlphas
{
  v3 = [(CAMZoomButtonPlatter *)self _allButtons];
  v4 = [(CAMZoomButtonPlatter *)self zoomFactorButton];
  v5 = [v3 indexOfObject:v4];

  LOBYTE(v3) = [(CAMZoomButtonPlatter *)self isCenterSelectedZoomEnabled];
  v6 = [(CAMZoomButtonPlatter *)self _allButtons];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43__CAMZoomButtonPlatter__updateButtonAlphas__block_invoke;
  v7[3] = &unk_1E76FB920;
  v8 = v3;
  v7[4] = self;
  v7[5] = v5;
  [v6 enumerateObjectsUsingBlock:v7];
}

void __43__CAMZoomButtonPlatter__updateButtonAlphas__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v18 = a2;
  v6 = [v5 traitCollection];
  v7 = [v6 preferredContentSizeCategory];
  if (v7 == *MEMORY[0x1E69DDC88])
  {
    v12 = 1;
  }

  else
  {
    v8 = [*(a1 + 32) traitCollection];
    v9 = [v8 preferredContentSizeCategory];
    if (v9 == *MEMORY[0x1E69DDC78])
    {
      v12 = 1;
    }

    else
    {
      v10 = [*(a1 + 32) traitCollection];
      v11 = [v10 preferredContentSizeCategory];
      v12 = v11 == *MEMORY[0x1E69DDC70];
    }
  }

  v13 = 1.0;
  if (*(a1 + 48) == 1)
  {
    v14 = *(a1 + 40);
    if (v14 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v15 = a3 - v14;
      if (![*(a1 + 32) hasLayoutConflictLeft] || (v13 = 0.0, v15 >= -3) && (v15 != -3 || v12))
      {
        v16 = [*(a1 + 32) hasLayoutConflictRight];
        v17 = 0.0;
        if (v15 < 4 && (v15 != 3 || v12))
        {
          v17 = 1.0;
        }

        if (v16)
        {
          v13 = v17;
        }

        else
        {
          v13 = 1.0;
        }
      }
    }
  }

  if ([*(a1 + 32) isCollapsed] && *(a1 + 40) != a3)
  {
    v13 = 0.0;
  }

  [v18 setAlpha:v13];
}

- (void)_updateButtonAlphasAnimationDuration:(double)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __61__CAMZoomButtonPlatter__updateButtonAlphasAnimationDuration___block_invoke;
  v3[3] = &unk_1E76F77B0;
  v3[4] = self;
  [CAMView animateIfNeededWithDuration:v3 animations:a3];
}

- (CGSize)intrinsicContentSize
{
  if ([(CAMZoomButtonPlatter *)self isCollapsed])
  {
    v3 = 1;
  }

  else
  {
    v3 = [(CAMZoomButtonPlatter *)self buttonCount];
  }

  [(CAMZoomButtonPlatter *)self _intrinsicContentSizeForButtonCount:v3];
  result.height = v5;
  result.width = v4;
  return result;
}

- (CGSize)_intrinsicContentSizeForButtonCount:(unint64_t)a3
{
  v5 = [(CAMZoomButtonPlatter *)self traitCollection];
  v6 = [v5 preferredContentSizeCategory];
  [CAMZoomButton circleDiameterForContentSize:v6];
  v8 = v7;

  v9 = *&CAMZoomButtonPlatterMargin;
  v10 = a3;
  if ([(CAMZoomButtonPlatter *)self isCenterSelectedZoomEnabled])
  {
    v11 = v8 * 0.5 + (a3 - 1) * v8 + *&CAMZoomButtonPlatterMargin * v10;
    v12 = v11 + v11;
  }

  else
  {
    v12 = v9 * (a3 + 1) + v8 * v10;
  }

  v13 = v8 + v9 * 2.0;
  result.height = v13;
  result.width = v12;
  return result;
}

- (unint64_t)buttonCount
{
  v2 = [(CAMZoomButtonPlatter *)self zoomPoints];
  v3 = [v2 count];

  return v3;
}

- (void)setZoomFactor:(double)a3 allowFlashingSubstate:(BOOL)a4 animated:(BOOL)a5
{
  if (self->_zoomFactor != a3)
  {
    v6 = a5;
    v7 = a4;
    if ([(CAMZoomButtonPlatter *)self isCenterSelectedZoomEnabled]&& v6)
    {
      [(CAMZoomButtonPlatter *)self layoutIfNeeded];
    }

    self->_zoomFactor = a3;
    if (v7 && v6)
    {
      [(CAMZoomButtonPlatter *)self _flashFocalLengthIfNeeded];
    }

    [(CAMZoomButtonPlatter *)self _updateButtonsAnimated:v6];
    [(CAMZoomButtonPlatter *)self _updateButtonAccessoryAnimated:0];
    if ([(CAMZoomButtonPlatter *)self isCenterSelectedZoomEnabled])
    {
      [(CAMZoomButtonPlatter *)self setNeedsLayout];
      v9 = 0.3;
      if (!v6)
      {
        v9 = 0.0;
      }

      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __69__CAMZoomButtonPlatter_setZoomFactor_allowFlashingSubstate_animated___block_invoke;
      v10[3] = &unk_1E76F77B0;
      v10[4] = self;
      [MEMORY[0x1E69DD250] animateWithDuration:v10 animations:v9];
    }
  }
}

- (CAMZoomButton)zoomFactorButton
{
  v3 = [(CAMZoomButtonPlatter *)self zoomPoints];
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__13;
  v18 = __Block_byref_object_dispose__13;
  v19 = 0;
  [(CAMZoomButtonPlatter *)self zoomFactor];
  v5 = v4;
  v6 = [(CAMZoomButtonPlatter *)self _allButtons];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __40__CAMZoomButtonPlatter_zoomFactorButton__block_invoke;
  v10[3] = &unk_1E76FB948;
  v7 = v3;
  v13 = v5;
  v11 = v7;
  v12 = &v14;
  [v6 enumerateObjectsWithOptions:2 usingBlock:v10];

  v8 = v15[5];
  _Block_object_dispose(&v14, 8);

  return v8;
}

void __40__CAMZoomButtonPlatter_zoomFactorButton__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v12 = a2;
  v8 = [*(a1 + 32) objectAtIndexedSubscript:a3];
  v9 = [v8 fundamentalZoomPoint];
  [v9 displayZoomFactor];
  v11 = v10;

  if (*(a1 + 48) >= v11)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (void)setZoomPoints:(id)a3 animated:(BOOL)a4
{
  v50 = a4;
  v77 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v47 = [v5 count];
  if (([v5 isEqualToArray:self->_zoomPoints] & 1) == 0)
  {
    v44 = v5;
    v6 = [(CAMZoomButtonPlatter *)self _allButtons];
    v45 = [v6 copy];
    v42 = [(CAMZoomButtonPlatter *)self zoomPoints];
    v46 = [v42 count];
    if (v50)
    {
      v7 = 0.3;
    }

    else
    {
      v7 = 0.0;
    }

    v43 = [v5 differenceFromArray:v42 withOptions:0 usingEquivalenceTest:&__block_literal_global_34];
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v8 = [v43 removals];
    obj = [v8 reverseObjectEnumerator];

    v9 = [obj countByEnumeratingWithState:&v71 objects:v76 count:16];
    if (v9)
    {
      v10 = *v72;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v72 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = [*(*(&v71 + 1) + 8 * i) index];
          v13 = [v6 objectAtIndexedSubscript:v12];
          [v6 removeObjectAtIndex:v12];
          if (v50)
          {
            v14 = [v13 layer];
            v15 = [v14 presentationLayer];
            v16 = v15;
            if (v15)
            {
              v17 = v15;
            }

            else
            {
              v17 = [v13 layer];
            }

            v18 = v17;

            [v18 position];
            [v13 setCenter:?];
            [v18 opacity];
            [v13 setAlpha:v19];
            v20 = MEMORY[0x1E69E9820];
            v66[0] = MEMORY[0x1E69E9820];
            v66[1] = 3221225472;
            v66[2] = __47__CAMZoomButtonPlatter_setZoomPoints_animated___block_invoke_2;
            v66[3] = &unk_1E76F9928;
            v69 = v46;
            v70 = v12;
            v68 = v47;
            v66[4] = self;
            v67 = v13;
            v64[0] = v20;
            v64[1] = 3221225472;
            v64[2] = __47__CAMZoomButtonPlatter_setZoomPoints_animated___block_invoke_3;
            v64[3] = &unk_1E76F7988;
            v65 = v67;
            [CAMView animateIfNeededWithDuration:v66 animations:v64 completion:0.3];
          }

          else
          {
            [v13 removeFromSuperview];
          }
        }

        v9 = [obj countByEnumeratingWithState:&v71 objects:v76 count:16];
      }

      while (v9);
    }

    v21 = [v43 insertions];
    v41 = [(CAMZoomButtonPlatter *)self _indexesForChanges:v21];
    v58 = 0;
    v59 = &v58;
    v60 = 0x3010000000;
    v61 = "";
    v62 = 0;
    v63 = 0;
    v57[0] = MEMORY[0x1E69E9820];
    v57[1] = 3221225472;
    v57[2] = __47__CAMZoomButtonPlatter_setZoomPoints_animated___block_invoke_4;
    v57[3] = &unk_1E76FB990;
    v57[4] = &v58;
    [v41 enumerateRangesUsingBlock:v57];
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v22 = v21;
    v23 = [v22 countByEnumeratingWithState:&v53 objects:v75 count:16];
    if (v23)
    {
      v24 = *v54;
      obja = (v46 - 1);
      do
      {
        v25 = 0;
        do
        {
          if (*v54 != v24)
          {
            objc_enumerationMutation(v22);
          }

          v26 = [*(*(&v53 + 1) + 8 * v25) index];
          v27 = [(CAMZoomButtonPlatter *)self _createZoomButton];
          [v6 insertObject:v27 atIndex:v26];
          [(CAMZoomButtonPlatter *)self addSubview:v27];
          if (v50)
          {
            if (v59[4])
            {
              if (v26 < obja)
              {
                goto LABEL_36;
              }

LABEL_33:
              v30 = [v45 lastObject];
              goto LABEL_34;
            }

            v28 = v59[5];
            if (v26 < v28 || v26 >= obja)
            {
              if (v26 >= v28)
              {
                goto LABEL_33;
              }

              v30 = [v45 firstObject];
LABEL_34:
              v31 = v30;
              [v30 center];
              [v27 setCenter:?];
              [v31 bounds];
              [v27 setBounds:?];
              if (v31)
              {
                [v31 transform];
              }

              else
              {
                memset(&v52[1], 0, sizeof(CGAffineTransform));
              }

              v52[0] = v52[1];
              [v27 setTransform:v52];
            }

            else
            {
LABEL_36:
              v32 = [(CAMZoomButtonPlatter *)self traitCollection];
              v33 = [v32 preferredContentSizeCategory];
              [CAMZoomButton circleDiameterForContentSize:v33];
              v35 = v34;

              [v27 setBounds:{0.0, 0.0, v35, v35}];
              [(CAMZoomButtonPlatter *)self bounds];
              UIRectGetCenter();
              [v27 setCenter:?];
              CGAffineTransformMakeScale(&v51, 0.65, 0.65);
              v52[0] = v51;
              [v27 setTransform:v52];
            }

            [v27 setAlpha:0.0];
            [v27 layoutIfNeeded];
          }

          ++v25;
        }

        while (v23 != v25);
        v36 = [v22 countByEnumeratingWithState:&v53 objects:v75 count:16];
        v23 = v36;
      }

      while (v36);
    }

    v37 = [v44 copy];
    zoomPoints = self->_zoomPoints;
    self->_zoomPoints = v37;

    v39 = [CAMZoomPoint displayZoomFactorsFromZoomPoints:v44];
    zoomFactors = self->_zoomFactors;
    self->_zoomFactors = v39;

    [(CAMZoomButtonPlatter *)self _updateButtonsAnimated:0];
    [(CAMZoomButtonPlatter *)self _updateButtonAccessoryAnimated:0];
    [(CAMZoomButtonPlatter *)self _cancelFocalLengthFlash];
    [(CAMZoomButtonPlatter *)self _updateButtonAlphasAnimationDuration:v7];
    if (v47 != v46)
    {
      [(CAMZoomButtonPlatter *)self invalidateIntrinsicContentSize];
    }

    _Block_object_dispose(&v58, 8);

    v5 = v44;
  }
}

BOOL __47__CAMZoomButtonPlatter_setZoomPoints_animated___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 fundamentalZoomPoint];
  [v5 displayZoomFactor];
  v7 = v6;
  v8 = [v4 fundamentalZoomPoint];

  [v8 displayZoomFactor];
  v10 = v7 == v9;

  return v10;
}

uint64_t __47__CAMZoomButtonPlatter_setZoomPoints_animated___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (*(a1 + 48) < v2 && *(a1 + 64) >= v2 >> 1)
  {
    [*(a1 + 32) _intrinsicContentSizeForButtonCount:?];
    v4 = v3;
    [*(a1 + 32) _intrinsicContentSizeForButtonCount:*(a1 + 48)];
    v6 = v5;
    [*(a1 + 40) center];
    [*(a1 + 40) setCenter:v7 + (v4 - v6) * -0.5];
  }

  v8 = *(a1 + 40);

  return [v8 setAlpha:0.0];
}

uint64_t __47__CAMZoomButtonPlatter_setZoomPoints_animated___block_invoke_4(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v4 = *(*(result + 32) + 8);
  *(v4 + 32) = a2;
  *(v4 + 40) = a3;
  *a4 = 1;
  return result;
}

- (id)nearestZoomButtonForTouch:(id)a3
{
  [a3 locationInView:self];

  return [(CAMZoomButtonPlatter *)self nearestZoomButtonForPoint:?];
}

- (id)nearestZoomButtonForPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__13;
  v20 = __Block_byref_object_dispose__13;
  v21 = 0;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x2020000000;
  v15[3] = 0x7FEFFFFFFFFFFFFFLL;
  if ([(CAMZoomButtonPlatter *)self isCollapsed])
  {
    v6 = [(CAMZoomButtonPlatter *)self zoomFactorButton];
    [v6 center];
    UIDistanceBetweenPoints();
    v8 = v7;
    [v6 bounds];
    v10 = v9;
    [v6 alpha];
    if (v11 > 0.0 && v8 <= v10 * 0.5 + 12.0)
    {
      objc_storeStrong(v17 + 5, v6);
    }
  }

  else
  {
    v6 = [(CAMZoomButtonPlatter *)self _allButtons];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __50__CAMZoomButtonPlatter_nearestZoomButtonForPoint___block_invoke;
    v14[3] = &unk_1E76FB9B8;
    *&v14[6] = x;
    *&v14[7] = y;
    v14[8] = 0x4028000000000000;
    v14[4] = v15;
    v14[5] = &v16;
    [v6 enumerateObjectsUsingBlock:v14];
  }

  v12 = v17[5];
  _Block_object_dispose(v15, 8);
  _Block_object_dispose(&v16, 8);

  return v12;
}

void __50__CAMZoomButtonPlatter_nearestZoomButtonForPoint___block_invoke(uint64_t a1, void *a2)
{
  v12 = a2;
  [v12 center];
  UIDistanceBetweenPoints();
  v5 = v4;
  [v12 bounds];
  v7 = v6;
  v8 = *(a1 + 64);
  [v12 alpha];
  if (v9 > 0.0 && v5 <= v8 + v7 * 0.5)
  {
    v11 = *(*(a1 + 32) + 8);
    if (v5 < *(v11 + 24))
    {
      *(v11 + 24) = v5;
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    }
  }
}

- (id)baseZoomPointForButton:(id)a3
{
  v4 = a3;
  v5 = [(CAMZoomButtonPlatter *)self _allButtons];
  v6 = [v5 indexOfObject:v4];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL || (-[CAMZoomButtonPlatter zoomPoints](self, "zoomPoints"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 count], v7, v6 >= v8))
  {
    v10 = 0;
  }

  else
  {
    v9 = [(CAMZoomButtonPlatter *)self zoomPoints];
    v10 = [v9 objectAtIndexedSubscript:v6];
  }

  return v10;
}

- (double)defaultZoomFactorForButton:(id)a3
{
  v4 = a3;
  v5 = [(CAMZoomButtonPlatter *)self baseZoomPointForButton:v4];
  [(CAMZoomButtonPlatter *)self _zoomFactorForButton:v4 zoomPoint:v5 isZoomFactorButton:0];
  v7 = v6;

  return v7;
}

- (void)setCollapsed:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_collapsed != a3)
  {
    if (a4)
    {
      [(CAMZoomButtonPlatter *)self layoutIfNeeded];
      self->_collapsed = a3;
      [(CAMZoomButtonPlatter *)self _updateButtonsAnimated:1];
      [(CAMZoomButtonPlatter *)self _updateButtonAccessoryAnimated:1];
      [(CAMZoomButtonPlatter *)self setNeedsLayout];
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __46__CAMZoomButtonPlatter_setCollapsed_animated___block_invoke;
      v6[3] = &unk_1E76F77B0;
      v6[4] = self;
      [MEMORY[0x1E69DD250] animateWithDuration:v6 animations:0.3];
    }

    else
    {
      self->_collapsed = a3;
      [(CAMZoomButtonPlatter *)self _updateButtonsAnimated:0];
      [(CAMZoomButtonPlatter *)self _updateButtonAccessoryAnimated:0];

      [(CAMZoomButtonPlatter *)self setNeedsLayout];
    }
  }
}

- (void)setButtonAccessoryState:(int64_t)a3 animated:(BOOL)a4
{
  if (self->_buttonAccessoryState != a3)
  {
    self->_buttonAccessoryState = a3;
    [(CAMZoomButtonPlatter *)self _updateButtonAccessoryAnimated:a4];
  }
}

- (void)setButtonAccessoryPosition:(int64_t)a3 animated:(BOOL)a4
{
  if (self->_buttonAccessoryPosition != a3)
  {
    self->_buttonAccessoryPosition = a3;
    [(CAMZoomButtonPlatter *)self _updateButtonAccessoryAnimated:a4];
  }
}

- (void)_updateButtonAccessoryAnimated:(BOOL)a3
{
  v3 = a3;
  v20 = *MEMORY[0x1E69E9840];
  v5 = [(CAMZoomButtonPlatter *)self buttonAccessoryState];
  v6 = [(CAMZoomButtonPlatter *)self zoomFactorButton];
  v7 = [(CAMZoomButtonPlatter *)self isCollapsed];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [(CAMZoomButtonPlatter *)self _allButtons];
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v15 + 1) + 8 * v12);
        if (v7 && v13 == v6)
        {
          v14 = v5;
        }

        else
        {
          v14 = 0;
        }

        [*(*(&v15 + 1) + 8 * v12) setAccessoryState:v14 animated:v3];
        [v13 setAccessoryPosition:-[CAMZoomButtonPlatter buttonAccessoryPosition](self animated:{"buttonAccessoryPosition"), v3}];
        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }
}

- (void)setPreferredCustomLens:(int64_t)a3
{
  if (self->_preferredCustomLens != a3)
  {
    self->_preferredCustomLens = a3;
    [(CAMZoomButtonPlatter *)self _updateButtonsAnimated:0];
  }
}

- (void)setCenterSelectedZoomEnabled:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_centerSelectedZoomEnabled != a3)
  {
    if (a4)
    {
      [(CAMZoomButtonPlatter *)self layoutIfNeeded];
      self->_centerSelectedZoomEnabled = a3;
      [(CAMZoomButtonPlatter *)self setNeedsLayout];
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __62__CAMZoomButtonPlatter_setCenterSelectedZoomEnabled_animated___block_invoke;
      v7[3] = &unk_1E76F77B0;
      v7[4] = self;
      v6 = 0.3;
      [MEMORY[0x1E69DD250] animateWithDuration:v7 animations:0.3];
    }

    else
    {
      self->_centerSelectedZoomEnabled = a3;
      [(CAMZoomButtonPlatter *)self setNeedsLayout];
      v6 = 0.0;
    }

    [(CAMZoomButtonPlatter *)self _updateButtonAlphasAnimationDuration:v6];
  }
}

- (void)setHasLayoutConflictLeft:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_hasLayoutConflictLeft != a3)
  {
    self->_hasLayoutConflictLeft = a3;
    v4 = 0.65;
    if (!a4)
    {
      v4 = 0.0;
    }

    [(CAMZoomButtonPlatter *)self _updateButtonAlphasAnimationDuration:v4];
  }
}

- (void)setHasLayoutConflictRight:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_hasLayoutConflictRight != a3)
  {
    self->_hasLayoutConflictRight = a3;
    v4 = 0.65;
    if (!a4)
    {
      v4 = 0.0;
    }

    [(CAMZoomButtonPlatter *)self _updateButtonAlphasAnimationDuration:v4];
  }
}

- (void)_updateButtonsAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(CAMZoomButtonPlatter *)self zoomPoints];
  v6 = [(CAMZoomButtonPlatter *)self _allButtons];
  v7 = [(CAMZoomButtonPlatter *)self zoomFactorButton];
  v8 = [(CAMZoomButtonPlatter *)self isCollapsed];
  v9 = [v5 firstObject];
  [v9 displayZoomFactor];
  v11 = v10;

  v12 = [v5 lastObject];
  [v12 displayZoomFactor];
  v14 = v13;

  v15 = v11;
  v16 = floorf(v15);
  v17 = +[CAMZoomButton zoomFactorFormatter];
  v18 = [v17 decimalSeparator];
  v19 = [v18 isEqualToString:{@", "}];

  v20 = v14;
  v21 = floorf(v20);
  if (v11 == v16 || v14 == v21)
  {
    v28 = ([v6 count] == 2) | v19;
  }

  else
  {
    v28 = 1;
  }

  v23 = v28 & 1;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __47__CAMZoomButtonPlatter__updateButtonsAnimated___block_invoke;
  v29[3] = &unk_1E76FBA08;
  if (v3)
  {
    v24 = 0.3;
  }

  else
  {
    v24 = 0.0;
  }

  v30 = v6;
  v31 = v5;
  v35 = v3;
  v36 = v8;
  v32 = v7;
  v33 = self;
  v37 = v23;
  v34 = v24;
  v25 = v7;
  v26 = v5;
  v27 = v6;
  [CAMView animateIfNeededWithDuration:v29 animations:v24];
}

void __47__CAMZoomButtonPlatter__updateButtonsAnimated___block_invoke(uint64_t a1)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __47__CAMZoomButtonPlatter__updateButtonsAnimated___block_invoke_2;
  v5[3] = &unk_1E76FB9E0;
  v2 = *(a1 + 32);
  v6 = *(a1 + 40);
  v3 = *(a1 + 48);
  v10 = *(a1 + 72);
  v11 = *(a1 + 73);
  v4 = *(a1 + 56);
  v7 = v3;
  v8 = v4;
  v9 = *(a1 + 64);
  [v2 enumerateObjectsUsingBlock:v5];
  [*(a1 + 56) _updateButtonAlphas];
}

void __47__CAMZoomButtonPlatter__updateButtonsAnimated___block_invoke_2(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = a2;
  v6 = [*(a1 + 32) objectAtIndexedSubscript:a3];
  v7 = *(a1 + 40);
  v8 = v7 == v5;
  if (*(a1 + 64) == 1 && *(a1 + 65) == 1 && v7 != v5)
  {
    goto LABEL_11;
  }

  [*(a1 + 48) _zoomFactorForButton:v5 zoomPoint:v6 isZoomFactorButton:v7 == v5];
  [v5 setZoomFactor:?];
  [v5 setEnlargeText:0];
  [v5 setShowZoomFactorSymbol:v7 == v5];
  [v5 setUseLeadingZero:*(a1 + 66) & 1u | (v7 == v5)];
  v10 = [*(a1 + 48) zoomSymbols];
  if (![v10 count])
  {
    goto LABEL_10;
  }

  v11 = [*(a1 + 48) zoomSymbols];
  v12 = [v11 count];

  if (v12 > a3)
  {
    v10 = [*(a1 + 48) zoomSymbols];
    v13 = [v10 objectAtIndexedSubscript:a3];
    [v5 setZoomSymbol:objc_msgSend(v13 animated:{"intValue"), *(a1 + 64)}];

LABEL_10:
  }

LABEL_11:
  v14 = v7 != v5;
  v15 = MEMORY[0x1E69DD250];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __47__CAMZoomButtonPlatter__updateButtonsAnimated___block_invoke_3;
  v20[3] = &unk_1E76F9818;
  v16 = v5;
  v21 = v16;
  v22 = v8;
  v23 = *(a1 + 65);
  [v15 performWithoutAnimation:v20];
  CGAffineTransformMakeScale(&v19, 1.0, 1.0);
  v18 = v19;
  [v16 setTransform:&v18];
  [v16 setShouldHideBackground:v14 animationDuration:*(a1 + 56)];
  if ([*(a1 + 48) isCenterSelectedZoomEnabled] && (objc_msgSend(v16, "shouldHideBackground") & 1) != 0)
  {
    v17 = 2;
  }

  else
  {
    v17 = 1;
  }

  [v16 setTextShadowStrength:v17];
}

void __47__CAMZoomButtonPlatter__updateButtonsAnimated___block_invoke_3(uint64_t a1)
{
  if (*(a1 + 40) == 1 && *(a1 + 41) != 1)
  {
    v2 = [MEMORY[0x1E69DC888] systemYellowColor];
  }

  else
  {
    v2 = [MEMORY[0x1E69DC888] whiteColor];
  }

  v3 = v2;
  [*(a1 + 32) setTintColor:v2];
}

- (double)_zoomFactorForButton:(id)a3 zoomPoint:(id)a4 isZoomFactorButton:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v5)
  {
    [(CAMZoomButtonPlatter *)self zoomFactor];
LABEL_8:
    v17 = v11;
    goto LABEL_12;
  }

  if (![v9 isCustomLens])
  {
    if (!v10)
    {
      v17 = 1.0;
      goto LABEL_12;
    }

    [v10 displayZoomFactor];
    goto LABEL_8;
  }

  v12 = +[CAMCaptureCapabilities capabilities];
  v13 = [v12 effectiveFocalLengthForCustomLens:{-[CAMZoomButtonPlatter preferredCustomLens](self, "preferredCustomLens")}];
  v14 = [v10 allZoomPoints];
  v21 = MEMORY[0x1E69E9820];
  v22 = 3221225472;
  v23 = __74__CAMZoomButtonPlatter__zoomFactorForButton_zoomPoint_isZoomFactorButton___block_invoke;
  v24 = &unk_1E76FBA30;
  v25 = v12;
  v26 = v13;
  v15 = v12;
  v16 = [v14 indexOfObjectPassingTest:&v21];
  if (v16 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [v10 fundamentalZoomPoint];
  }

  else
  {
    [v14 objectAtIndexedSubscript:{v16, v21, v22, v23, v24, v25, v26}];
  }
  v18 = ;
  [v18 displayZoomFactor];
  v17 = v19;

LABEL_12:
  return v17;
}

- (id)_createPlatterImageForContentSize:(id)a3
{
  [(CAMZoomButtonPlatter *)self intrinsicContentSize];
  height = v10.height;
  v10.width = v10.height;
  UIGraphicsBeginImageContextWithOptions(v10, 0, 0.0);
  v4 = [MEMORY[0x1E69DC728] bezierPathWithOvalInRect:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), height, height}];
  v5 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.15];
  [v5 set];
  [v4 fill];
  v6 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  UIFloorToViewScale();
  UIEdgeInsetsMakeWithEdges();
  v7 = [v6 resizableImageWithCapInsets:?];

  return v7;
}

- (id)_createZoomButton
{
  v3 = [[CAMZoomButton alloc] initForPlatter:1];
  [v3 setOrientation:{-[CAMZoomButtonPlatter orientation](self, "orientation")}];

  return v3;
}

- (id)_indexesForChanges:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E696AD50] indexSet];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [v4 addIndex:{objc_msgSend(*(*(&v11 + 1) + 8 * i), "index", v11)}];
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  return v4;
}

- (void)_flashFocalLengthIfNeeded
{
  v25 = *MEMORY[0x1E69E9840];
  [(CAMZoomButtonPlatter *)self zoomFactor];
  v4 = v3;
  v5 = [(CAMZoomButtonPlatter *)self zoomFactorButton];
  v6 = [(CAMZoomButtonPlatter *)self baseZoomPointForButton:v5];
  if ([v6 isCustomLens])
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v7 = [v6 allZoomPoints];
    v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v21;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v21 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v20 + 1) + 8 * i);
          [v12 displayZoomFactor];
          if (vabdd_f64(v13, v4) < 0.001)
          {
            v14 = [v12 customLens];

            v7 = +[CAMCaptureCapabilities capabilities];
            [v5 setFocalLength:{objc_msgSend(v7, "effectiveFocalLengthForCustomLens:", v14)}];
            [v5 setContentType:2 animated:1];
            v15 = [(CAMZoomButtonPlatter *)self _focalLengthFlashID]+ 1;
            [(CAMZoomButtonPlatter *)self _setFocalLengthFlashID:v15];
            v16 = dispatch_time(0, 1000000000);
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            block[2] = __49__CAMZoomButtonPlatter__flashFocalLengthIfNeeded__block_invoke;
            block[3] = &unk_1E76F97F0;
            block[4] = self;
            v19 = v15;
            v18 = v5;
            dispatch_after(v16, MEMORY[0x1E69E96A0], block);

            goto LABEL_12;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }
}

uint64_t __49__CAMZoomButtonPlatter__flashFocalLengthIfNeeded__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _focalLengthFlashID];
  if (result == *(a1 + 48))
  {
    v3 = *(a1 + 40);
    v4 = [*(a1 + 32) contentType];

    return [v3 setContentType:v4 animated:1];
  }

  return result;
}

- (void)_cancelFocalLengthFlash
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(CAMZoomButtonPlatter *)self _allButtons];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) setContentType:-[CAMZoomButtonPlatter contentType](self animated:{"contentType"), 0}];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  [(CAMZoomButtonPlatter *)self _setFocalLengthFlashID:[(CAMZoomButtonPlatter *)self _focalLengthFlashID]+ 1];
}

- (void)setContentType:(int64_t)a3 animated:(BOOL)a4
{
  v15 = *MEMORY[0x1E69E9840];
  if (self->_contentType != a3)
  {
    self->_contentType = a3;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = [(CAMZoomButtonPlatter *)self _allButtons];
    v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [*(*(&v10 + 1) + 8 * i) setContentType:a3 animated:0];
        }

        v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }
  }
}

- (void)setZoomSymbols:(id)a3 animated:(BOOL)a4
{
  if (self->_zoomSymbols != a3)
  {
    self->_zoomSymbols = a3;
    [(CAMZoomButtonPlatter *)self _updateButtonsAnimated:a4];
  }
}

- (void)setOrientation:(int64_t)a3 animated:(BOOL)a4
{
  if (self->_orientation != a3)
  {
    v11 = v4;
    v12 = v5;
    self->_orientation = a3;
    v8 = [(CAMZoomButtonPlatter *)self _allButtons];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __48__CAMZoomButtonPlatter_setOrientation_animated___block_invoke;
    v9[3] = &__block_descriptor_41_e30_v32__0__CAMZoomButton_8Q16_B24l;
    v9[4] = a3;
    v10 = a4;
    [v8 enumerateObjectsUsingBlock:v9];
  }
}

@end