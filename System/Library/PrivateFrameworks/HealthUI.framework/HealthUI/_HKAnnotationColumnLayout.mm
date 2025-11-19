@interface _HKAnnotationColumnLayout
- (CGSize)intrinsicContentSize;
- (_HKAnnotationColumnLayout)initWithContext:(int64_t)a3;
- (double)_columnSeparation;
- (double)_largestColumnWidth;
- (double)_minimumHeight;
- (double)_minimumWidth;
- (double)_minimumWidthForPackedLayout;
- (double)_minimumWithForEqualLayout;
- (double)_totalColumnWidth;
- (id)_makeSeparatorView;
- (void)_addSeparatorViews;
- (void)_clearColumnViews;
- (void)_clearSeparatorViews;
- (void)_invalidateLayout;
- (void)_layoutColumnsEqually;
- (void)_layoutColumnsPacked;
- (void)_layoutColumnsWithWidth:(double)a3 columnSeparation:(double)a4 currentSize:(CGSize)a5;
- (void)addColumnView:(id)a3;
- (void)clearViews;
- (void)clearViewsFromIndex:(unint64_t)a3;
- (void)layoutSubviews;
- (void)setColumnView:(id)a3 atIndex:(unint64_t)a4;
- (void)setIncludeSeparators:(BOOL)a3;
- (void)setReverseColumnsInRightToLeftLayoutDirection:(BOOL)a3;
@end

@implementation _HKAnnotationColumnLayout

- (_HKAnnotationColumnLayout)initWithContext:(int64_t)a3
{
  v11.receiver = self;
  v11.super_class = _HKAnnotationColumnLayout;
  v4 = [(_HKAnnotationColumnLayout *)&v11 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v5 = v4;
  if (v4)
  {
    v4->_context = a3;
    v4->_includeSeparators = 0;
    v4->_reverseColumnsInRightToLeftLayoutDirection = 1;
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    columnViews = v5->_columnViews;
    v5->_columnViews = v6;

    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    separatorViews = v5->_separatorViews;
    v5->_separatorViews = v8;
  }

  return v5;
}

- (void)setIncludeSeparators:(BOOL)a3
{
  if (self->_includeSeparators)
  {
    if (!a3)
    {
      [(_HKAnnotationColumnLayout *)self _clearSeparatorViews];
LABEL_6:
      [(_HKAnnotationColumnLayout *)self _invalidateLayout];
    }
  }

  else if (a3)
  {
    [(_HKAnnotationColumnLayout *)self _addSeparatorViews];
    goto LABEL_6;
  }

  self->_includeSeparators = a3;
}

- (void)setReverseColumnsInRightToLeftLayoutDirection:(BOOL)a3
{
  if (self->_reverseColumnsInRightToLeftLayoutDirection != a3)
  {
    self->_reverseColumnsInRightToLeftLayoutDirection = a3;
    [(_HKAnnotationColumnLayout *)self _invalidateLayout];
  }
}

- (void)addColumnView:(id)a3
{
  v4 = a3;
  if ([(_HKAnnotationColumnLayout *)self includeSeparators])
  {
    v5 = [(_HKAnnotationColumnLayout *)self columnViews];
    v6 = [v5 count];

    if (v6)
    {
      v7 = [(_HKAnnotationColumnLayout *)self _makeSeparatorView];
      v8 = [(_HKAnnotationColumnLayout *)self separatorViews];
      [v8 addObject:v7];

      [(_HKAnnotationColumnLayout *)self addSubview:v7];
    }
  }

  v9 = [(_HKAnnotationColumnLayout *)self columnViews];
  [v9 addObject:v4];

  [v4 setTranslatesAutoresizingMaskIntoConstraints:1];
  [(_HKAnnotationColumnLayout *)self addSubview:v4];

  [(_HKAnnotationColumnLayout *)self _invalidateLayout];
}

- (void)setColumnView:(id)a3 atIndex:(unint64_t)a4
{
  v11 = a3;
  v6 = [(_HKAnnotationColumnLayout *)self columnViews];
  v7 = [v6 count];

  if (v7 <= a4)
  {
    [(_HKAnnotationColumnLayout *)self addColumnView:v11];
  }

  else
  {
    v8 = [(_HKAnnotationColumnLayout *)self columnViews];
    v9 = [v8 objectAtIndexedSubscript:a4];

    if (([v9 isEqual:v11] & 1) == 0)
    {
      [v9 removeFromSuperview];
      v10 = [(_HKAnnotationColumnLayout *)self columnViews];
      [v10 setObject:v11 atIndexedSubscript:a4];

      [v11 setTranslatesAutoresizingMaskIntoConstraints:1];
      [(_HKAnnotationColumnLayout *)self addSubview:v11];
      [(_HKAnnotationColumnLayout *)self _invalidateLayout];
    }
  }
}

- (void)clearViews
{
  [(_HKAnnotationColumnLayout *)self _clearColumnViews];

  [(_HKAnnotationColumnLayout *)self _clearSeparatorViews];
}

- (void)clearViewsFromIndex:(unint64_t)a3
{
  if (a3)
  {
    if ([(NSMutableArray *)self->_columnViews count]> a3)
    {
      if ([(NSMutableArray *)self->_columnViews count]> a3)
      {
        v5 = a3;
        do
        {
          v6 = [(NSMutableArray *)self->_columnViews objectAtIndexedSubscript:v5];
          [v6 removeFromSuperview];

          ++v5;
        }

        while (v5 < [(NSMutableArray *)self->_columnViews count]);
      }

      [(NSMutableArray *)self->_columnViews removeObjectsInRange:a3, [(NSMutableArray *)self->_columnViews count]- a3];
      if (self->_includeSeparators && [(NSMutableArray *)self->_separatorViews count])
      {
        v7 = a3 - 1;
        if (v7 < [(NSMutableArray *)self->_separatorViews count])
        {
          v8 = v7;
          do
          {
            v9 = [(NSMutableArray *)self->_separatorViews objectAtIndexedSubscript:v8];
            [v9 removeFromSuperview];

            ++v8;
          }

          while (v8 < [(NSMutableArray *)self->_separatorViews count]);
        }

        separatorViews = self->_separatorViews;
        v11 = [(NSMutableArray *)separatorViews count]- v7;

        [(NSMutableArray *)separatorViews removeObjectsInRange:v7, v11];
      }
    }
  }

  else
  {

    [(_HKAnnotationColumnLayout *)self clearViews];
  }
}

- (void)layoutSubviews
{
  v3 = [(_HKAnnotationColumnLayout *)self columnViews];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(_HKAnnotationColumnLayout *)self context];
    if ((v5 - 1) >= 2)
    {
      if (!v5)
      {

        [(_HKAnnotationColumnLayout *)self _layoutColumnsEqually];
      }
    }

    else
    {

      [(_HKAnnotationColumnLayout *)self _layoutColumnsPacked];
    }
  }
}

- (CGSize)intrinsicContentSize
{
  [(_HKAnnotationColumnLayout *)self _minimumWidth];
  v4 = v3;
  [(_HKAnnotationColumnLayout *)self _minimumHeight];
  v6 = v5;
  v7 = v4;
  result.height = v6;
  result.width = v7;
  return result;
}

- (void)_invalidateLayout
{
  [(_HKAnnotationColumnLayout *)self invalidateIntrinsicContentSize];

  [(_HKAnnotationColumnLayout *)self setNeedsLayout];
}

- (void)_clearColumnViews
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(_HKAnnotationColumnLayout *)self columnViews];
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

        [*(*(&v9 + 1) + 8 * v7++) removeFromSuperview];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = [(_HKAnnotationColumnLayout *)self columnViews];
  [v8 removeAllObjects];
}

- (void)_clearSeparatorViews
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(_HKAnnotationColumnLayout *)self separatorViews];
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

        [*(*(&v9 + 1) + 8 * v7++) removeFromSuperview];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = [(_HKAnnotationColumnLayout *)self separatorViews];
  [v8 removeAllObjects];
}

- (void)_addSeparatorViews
{
  v3 = [(_HKAnnotationColumnLayout *)self columnViews];
  v4 = [v3 count];

  if (v4 >= 2)
  {
    v5 = v4 - 1;
    do
    {
      v6 = [(_HKAnnotationColumnLayout *)self _makeSeparatorView];
      v7 = [(_HKAnnotationColumnLayout *)self separatorViews];
      [v7 addObject:v6];

      [(_HKAnnotationColumnLayout *)self addSubview:v6];
      --v5;
    }

    while (v5);
  }
}

- (void)_layoutColumnsEqually
{
  v3 = [(_HKAnnotationColumnLayout *)self columnViews];
  v4 = [v3 count];

  [(_HKAnnotationColumnLayout *)self frame];
  v6 = v5;
  v8 = v7;
  [(_HKAnnotationColumnLayout *)self _columnSeparation];
  v10 = v9;
  v11 = (v6 - v9 * (v4 + -1.0)) / v4;

  [(_HKAnnotationColumnLayout *)self _layoutColumnsWithWidth:v11 columnSeparation:v10 currentSize:v6, v8];
}

- (void)_layoutColumnsPacked
{
  [(_HKAnnotationColumnLayout *)self _columnSeparation];
  v4 = v3;
  [(_HKAnnotationColumnLayout *)self frame];

  [(_HKAnnotationColumnLayout *)self _layoutColumnsWithWidth:0.0 columnSeparation:v4 currentSize:?];
}

- (void)_layoutColumnsWithWidth:(double)a3 columnSeparation:(double)a4 currentSize:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  v8 = a3;
  if (a3 == 0.0)
  {
    [(_HKAnnotationColumnLayout *)self _minimumWidthForPackedLayout];
    v11 = v10 - width;
    v12 = [(_HKAnnotationColumnLayout *)self columnViews];
    v13 = v11 / [v12 count];

    v14 = fmax(v13, 0.0);
  }

  else
  {
    v14 = 0.0;
  }

  v15 = 0;
  v49 = a4 * 0.5;
  v52 = 0;
  v53 = &v52;
  v54 = 0x2020000000;
  v55 = 0;
  v16 = 1.79769313e308;
  v48 = v8;
  while (1)
  {
    v17 = [(_HKAnnotationColumnLayout *)self columnViews];
    v18 = [v17 count];

    if (v15 >= v18)
    {
      break;
    }

    v19 = [(_HKAnnotationColumnLayout *)self columnViews];
    v20 = [v19 objectAtIndexedSubscript:v15];

    [v20 systemLayoutSizeFittingSize:{width, v16}];
    v22 = v21;
    v24 = v23;
    if (v15)
    {
      if ([(_HKAnnotationColumnLayout *)self includeSeparators])
      {
        v25 = v16;
        v26 = v14;
        v27 = width;
        v28 = a4;
        v29 = v53[3];
        v30 = [(_HKAnnotationColumnLayout *)self separatorViews];
        v31 = [v30 objectAtIndexedSubscript:v15 - 1];

        [v31 setFrame:{v49 + v29, 0.0, 1.0, height}];
        a4 = v28;
        width = v27;
        v14 = v26;
        v16 = v25;
        v8 = v48;
      }

      v53[3] = v53[3] + a4;
      if (v8 <= 0.0)
      {
        v32 = v22;
      }

      else
      {
        v32 = v8;
      }

      v33 = v32 - v14;
    }

    else
    {
      if (v8 > 0.0)
      {
        v22 = v8;
      }

      v34 = [(_HKAnnotationColumnLayout *)self columnViews];
      v35 = [v34 count];
      v33 = v22 - v14;

      if (v35 == 1)
      {
        [(_HKAnnotationColumnLayout *)self frame];
        if (v33 < v36)
        {
          v33 = v36;
        }
      }
    }

    if (height >= v24)
    {
      v37 = v24;
    }

    else
    {
      v37 = height;
    }

    [v20 setFrame:{v53[3], height - v37, v33}];
    v53[3] = v33 + v53[3];

    ++v15;
  }

  if ([(_HKAnnotationColumnLayout *)self effectiveUserInterfaceLayoutDirection]== 1)
  {
    v38 = [(_HKAnnotationColumnLayout *)self columnViews];
    v39 = [v38 count];

    if (v39)
    {
      v40 = [(_HKAnnotationColumnLayout *)self columnViews];
      v41 = [(_HKAnnotationColumnLayout *)self columnViews];
      v42 = [v40 objectAtIndexedSubscript:{objc_msgSend(v41, "count") - 1}];

      [v42 frame];
      v44 = v43;
      [v42 frame];
      if (v44 + v45 >= width)
      {
        v46 = 0.0;
      }

      else
      {
        v46 = width - (v44 + v45);
      }

      v53[3] = fmax(v46, 0.0);
      if ([(_HKAnnotationColumnLayout *)self reverseColumnsInRightToLeftLayoutDirection])
      {
        v47 = [(_HKAnnotationColumnLayout *)self columnViews];
        v51[0] = MEMORY[0x1E69E9820];
        v51[1] = 3221225472;
        v51[2] = __82___HKAnnotationColumnLayout__layoutColumnsWithWidth_columnSeparation_currentSize___block_invoke;
        v51[3] = &unk_1E81B7728;
        v51[4] = self;
        v51[5] = &v52;
        *&v51[6] = v49;
        *&v51[7] = a4;
        [v47 enumerateObjectsWithOptions:2 usingBlock:v51];
      }

      else
      {
        v47 = [(_HKAnnotationColumnLayout *)self columnViews];
        v50[0] = MEMORY[0x1E69E9820];
        v50[1] = 3221225472;
        v50[2] = __82___HKAnnotationColumnLayout__layoutColumnsWithWidth_columnSeparation_currentSize___block_invoke_2;
        v50[3] = &unk_1E81B7750;
        v50[4] = self;
        *&v50[5] = v46;
        *&v50[6] = v49;
        [v47 enumerateObjectsWithOptions:2 usingBlock:v50];
      }
    }
  }

  _Block_object_dispose(&v52, 8);
}

- (double)_minimumWidth
{
  v3 = [(_HKAnnotationColumnLayout *)self context];
  if ((v3 - 1) >= 2)
  {
    if (!v3)
    {

      [(_HKAnnotationColumnLayout *)self _minimumWithForEqualLayout];
    }
  }

  else
  {

    [(_HKAnnotationColumnLayout *)self _minimumWidthForPackedLayout];
  }

  return result;
}

- (double)_minimumWithForEqualLayout
{
  v3 = [(_HKAnnotationColumnLayout *)self columnViews];
  v4 = [v3 count];

  [(_HKAnnotationColumnLayout *)self _columnSeparation];
  v6 = v5;
  [(_HKAnnotationColumnLayout *)self _largestColumnWidth];
  return v6 * (v4 - 1) + v7 * v4;
}

- (double)_minimumWidthForPackedLayout
{
  v3 = [(_HKAnnotationColumnLayout *)self columnViews];
  v4 = [v3 count];

  [(_HKAnnotationColumnLayout *)self _columnSeparation];
  v6 = v5;
  [(_HKAnnotationColumnLayout *)self _totalColumnWidth];
  return v7 + v6 * (v4 - 1);
}

- (double)_largestColumnWidth
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [(_HKAnnotationColumnLayout *)self columnViews];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    v6 = 0.0;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v10 + 1) + 8 * i) systemLayoutSizeFittingSize:{1.79769313e308, 1.79769313e308}];
        if (v6 < v8)
        {
          v6 = v8;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  else
  {
    v6 = 0.0;
  }

  return v6;
}

- (double)_columnSeparation
{
  v2 = [(_HKAnnotationColumnLayout *)self context];
  result = 10.0;
  if (v2 == 2)
  {
    return 20.0;
  }

  return result;
}

- (double)_totalColumnWidth
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [(_HKAnnotationColumnLayout *)self columnViews];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    v6 = 0.0;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v10 + 1) + 8 * i) systemLayoutSizeFittingSize:{1.79769313e308, 1.79769313e308}];
        v6 = v6 + v8;
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  else
  {
    v6 = 0.0;
  }

  return v6;
}

- (double)_minimumHeight
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [(_HKAnnotationColumnLayout *)self columnViews];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    v6 = 0.0;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v10 + 1) + 8 * i) systemLayoutSizeFittingSize:{1.79769313e308, 1.79769313e308}];
        if (v6 < v8)
        {
          v6 = v8;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  else
  {
    v6 = 0.0;
  }

  return v6;
}

- (id)_makeSeparatorView
{
  v3 = objc_alloc_init(MEMORY[0x1E69DD250]);
  [v3 setTranslatesAutoresizingMaskIntoConstraints:1];
  context = self->_context;
  if (context)
  {
    v5 = context == 2;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v6 = [MEMORY[0x1E69DC888] hk_activitySeparatorDefaultColor];
  }

  else
  {
    if (context != 1)
    {
      goto LABEL_10;
    }

    v6 = [MEMORY[0x1E69DC888] hk_activitySeparatorLollipopColor];
  }

  v7 = v6;
  [v3 setBackgroundColor:v6];

LABEL_10:

  return v3;
}

@end