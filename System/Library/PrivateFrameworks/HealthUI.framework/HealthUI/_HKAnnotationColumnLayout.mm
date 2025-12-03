@interface _HKAnnotationColumnLayout
- (CGSize)intrinsicContentSize;
- (_HKAnnotationColumnLayout)initWithContext:(int64_t)context;
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
- (void)_layoutColumnsWithWidth:(double)width columnSeparation:(double)separation currentSize:(CGSize)size;
- (void)addColumnView:(id)view;
- (void)clearViews;
- (void)clearViewsFromIndex:(unint64_t)index;
- (void)layoutSubviews;
- (void)setColumnView:(id)view atIndex:(unint64_t)index;
- (void)setIncludeSeparators:(BOOL)separators;
- (void)setReverseColumnsInRightToLeftLayoutDirection:(BOOL)direction;
@end

@implementation _HKAnnotationColumnLayout

- (_HKAnnotationColumnLayout)initWithContext:(int64_t)context
{
  v11.receiver = self;
  v11.super_class = _HKAnnotationColumnLayout;
  v4 = [(_HKAnnotationColumnLayout *)&v11 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v5 = v4;
  if (v4)
  {
    v4->_context = context;
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

- (void)setIncludeSeparators:(BOOL)separators
{
  if (self->_includeSeparators)
  {
    if (!separators)
    {
      [(_HKAnnotationColumnLayout *)self _clearSeparatorViews];
LABEL_6:
      [(_HKAnnotationColumnLayout *)self _invalidateLayout];
    }
  }

  else if (separators)
  {
    [(_HKAnnotationColumnLayout *)self _addSeparatorViews];
    goto LABEL_6;
  }

  self->_includeSeparators = separators;
}

- (void)setReverseColumnsInRightToLeftLayoutDirection:(BOOL)direction
{
  if (self->_reverseColumnsInRightToLeftLayoutDirection != direction)
  {
    self->_reverseColumnsInRightToLeftLayoutDirection = direction;
    [(_HKAnnotationColumnLayout *)self _invalidateLayout];
  }
}

- (void)addColumnView:(id)view
{
  viewCopy = view;
  if ([(_HKAnnotationColumnLayout *)self includeSeparators])
  {
    columnViews = [(_HKAnnotationColumnLayout *)self columnViews];
    v6 = [columnViews count];

    if (v6)
    {
      _makeSeparatorView = [(_HKAnnotationColumnLayout *)self _makeSeparatorView];
      separatorViews = [(_HKAnnotationColumnLayout *)self separatorViews];
      [separatorViews addObject:_makeSeparatorView];

      [(_HKAnnotationColumnLayout *)self addSubview:_makeSeparatorView];
    }
  }

  columnViews2 = [(_HKAnnotationColumnLayout *)self columnViews];
  [columnViews2 addObject:viewCopy];

  [viewCopy setTranslatesAutoresizingMaskIntoConstraints:1];
  [(_HKAnnotationColumnLayout *)self addSubview:viewCopy];

  [(_HKAnnotationColumnLayout *)self _invalidateLayout];
}

- (void)setColumnView:(id)view atIndex:(unint64_t)index
{
  viewCopy = view;
  columnViews = [(_HKAnnotationColumnLayout *)self columnViews];
  v7 = [columnViews count];

  if (v7 <= index)
  {
    [(_HKAnnotationColumnLayout *)self addColumnView:viewCopy];
  }

  else
  {
    columnViews2 = [(_HKAnnotationColumnLayout *)self columnViews];
    v9 = [columnViews2 objectAtIndexedSubscript:index];

    if (([v9 isEqual:viewCopy] & 1) == 0)
    {
      [v9 removeFromSuperview];
      columnViews3 = [(_HKAnnotationColumnLayout *)self columnViews];
      [columnViews3 setObject:viewCopy atIndexedSubscript:index];

      [viewCopy setTranslatesAutoresizingMaskIntoConstraints:1];
      [(_HKAnnotationColumnLayout *)self addSubview:viewCopy];
      [(_HKAnnotationColumnLayout *)self _invalidateLayout];
    }
  }
}

- (void)clearViews
{
  [(_HKAnnotationColumnLayout *)self _clearColumnViews];

  [(_HKAnnotationColumnLayout *)self _clearSeparatorViews];
}

- (void)clearViewsFromIndex:(unint64_t)index
{
  if (index)
  {
    if ([(NSMutableArray *)self->_columnViews count]> index)
    {
      if ([(NSMutableArray *)self->_columnViews count]> index)
      {
        indexCopy = index;
        do
        {
          v6 = [(NSMutableArray *)self->_columnViews objectAtIndexedSubscript:indexCopy];
          [v6 removeFromSuperview];

          ++indexCopy;
        }

        while (indexCopy < [(NSMutableArray *)self->_columnViews count]);
      }

      [(NSMutableArray *)self->_columnViews removeObjectsInRange:index, [(NSMutableArray *)self->_columnViews count]- index];
      if (self->_includeSeparators && [(NSMutableArray *)self->_separatorViews count])
      {
        v7 = index - 1;
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
  columnViews = [(_HKAnnotationColumnLayout *)self columnViews];
  v4 = [columnViews count];

  if (v4)
  {
    context = [(_HKAnnotationColumnLayout *)self context];
    if ((context - 1) >= 2)
    {
      if (!context)
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
  columnViews = [(_HKAnnotationColumnLayout *)self columnViews];
  v4 = [columnViews countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(columnViews);
        }

        [*(*(&v9 + 1) + 8 * v7++) removeFromSuperview];
      }

      while (v5 != v7);
      v5 = [columnViews countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  columnViews2 = [(_HKAnnotationColumnLayout *)self columnViews];
  [columnViews2 removeAllObjects];
}

- (void)_clearSeparatorViews
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  separatorViews = [(_HKAnnotationColumnLayout *)self separatorViews];
  v4 = [separatorViews countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(separatorViews);
        }

        [*(*(&v9 + 1) + 8 * v7++) removeFromSuperview];
      }

      while (v5 != v7);
      v5 = [separatorViews countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  separatorViews2 = [(_HKAnnotationColumnLayout *)self separatorViews];
  [separatorViews2 removeAllObjects];
}

- (void)_addSeparatorViews
{
  columnViews = [(_HKAnnotationColumnLayout *)self columnViews];
  v4 = [columnViews count];

  if (v4 >= 2)
  {
    v5 = v4 - 1;
    do
    {
      _makeSeparatorView = [(_HKAnnotationColumnLayout *)self _makeSeparatorView];
      separatorViews = [(_HKAnnotationColumnLayout *)self separatorViews];
      [separatorViews addObject:_makeSeparatorView];

      [(_HKAnnotationColumnLayout *)self addSubview:_makeSeparatorView];
      --v5;
    }

    while (v5);
  }
}

- (void)_layoutColumnsEqually
{
  columnViews = [(_HKAnnotationColumnLayout *)self columnViews];
  v4 = [columnViews count];

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

- (void)_layoutColumnsWithWidth:(double)width columnSeparation:(double)separation currentSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  widthCopy = width;
  if (width == 0.0)
  {
    [(_HKAnnotationColumnLayout *)self _minimumWidthForPackedLayout];
    v11 = v10 - width;
    columnViews = [(_HKAnnotationColumnLayout *)self columnViews];
    v13 = v11 / [columnViews count];

    v14 = fmax(v13, 0.0);
  }

  else
  {
    v14 = 0.0;
  }

  v15 = 0;
  v49 = separation * 0.5;
  v52 = 0;
  v53 = &v52;
  v54 = 0x2020000000;
  v55 = 0;
  v16 = 1.79769313e308;
  v48 = widthCopy;
  while (1)
  {
    columnViews2 = [(_HKAnnotationColumnLayout *)self columnViews];
    v18 = [columnViews2 count];

    if (v15 >= v18)
    {
      break;
    }

    columnViews3 = [(_HKAnnotationColumnLayout *)self columnViews];
    v20 = [columnViews3 objectAtIndexedSubscript:v15];

    [v20 systemLayoutSizeFittingSize:{width, v16}];
    v22 = v21;
    v24 = v23;
    if (v15)
    {
      if ([(_HKAnnotationColumnLayout *)self includeSeparators])
      {
        v25 = v16;
        v26 = v14;
        widthCopy2 = width;
        separationCopy = separation;
        v29 = v53[3];
        separatorViews = [(_HKAnnotationColumnLayout *)self separatorViews];
        v31 = [separatorViews objectAtIndexedSubscript:v15 - 1];

        [v31 setFrame:{v49 + v29, 0.0, 1.0, height}];
        separation = separationCopy;
        width = widthCopy2;
        v14 = v26;
        v16 = v25;
        widthCopy = v48;
      }

      v53[3] = v53[3] + separation;
      if (widthCopy <= 0.0)
      {
        v32 = v22;
      }

      else
      {
        v32 = widthCopy;
      }

      v33 = v32 - v14;
    }

    else
    {
      if (widthCopy > 0.0)
      {
        v22 = widthCopy;
      }

      columnViews4 = [(_HKAnnotationColumnLayout *)self columnViews];
      v35 = [columnViews4 count];
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
    columnViews5 = [(_HKAnnotationColumnLayout *)self columnViews];
    v39 = [columnViews5 count];

    if (v39)
    {
      columnViews6 = [(_HKAnnotationColumnLayout *)self columnViews];
      columnViews7 = [(_HKAnnotationColumnLayout *)self columnViews];
      v42 = [columnViews6 objectAtIndexedSubscript:{objc_msgSend(columnViews7, "count") - 1}];

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
        columnViews8 = [(_HKAnnotationColumnLayout *)self columnViews];
        v51[0] = MEMORY[0x1E69E9820];
        v51[1] = 3221225472;
        v51[2] = __82___HKAnnotationColumnLayout__layoutColumnsWithWidth_columnSeparation_currentSize___block_invoke;
        v51[3] = &unk_1E81B7728;
        v51[4] = self;
        v51[5] = &v52;
        *&v51[6] = v49;
        *&v51[7] = separation;
        [columnViews8 enumerateObjectsWithOptions:2 usingBlock:v51];
      }

      else
      {
        columnViews8 = [(_HKAnnotationColumnLayout *)self columnViews];
        v50[0] = MEMORY[0x1E69E9820];
        v50[1] = 3221225472;
        v50[2] = __82___HKAnnotationColumnLayout__layoutColumnsWithWidth_columnSeparation_currentSize___block_invoke_2;
        v50[3] = &unk_1E81B7750;
        v50[4] = self;
        *&v50[5] = v46;
        *&v50[6] = v49;
        [columnViews8 enumerateObjectsWithOptions:2 usingBlock:v50];
      }
    }
  }

  _Block_object_dispose(&v52, 8);
}

- (double)_minimumWidth
{
  context = [(_HKAnnotationColumnLayout *)self context];
  if ((context - 1) >= 2)
  {
    if (!context)
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
  columnViews = [(_HKAnnotationColumnLayout *)self columnViews];
  v4 = [columnViews count];

  [(_HKAnnotationColumnLayout *)self _columnSeparation];
  v6 = v5;
  [(_HKAnnotationColumnLayout *)self _largestColumnWidth];
  return v6 * (v4 - 1) + v7 * v4;
}

- (double)_minimumWidthForPackedLayout
{
  columnViews = [(_HKAnnotationColumnLayout *)self columnViews];
  v4 = [columnViews count];

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
  columnViews = [(_HKAnnotationColumnLayout *)self columnViews];
  v3 = [columnViews countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(columnViews);
        }

        [*(*(&v10 + 1) + 8 * i) systemLayoutSizeFittingSize:{1.79769313e308, 1.79769313e308}];
        if (v6 < v8)
        {
          v6 = v8;
        }
      }

      v4 = [columnViews countByEnumeratingWithState:&v10 objects:v14 count:16];
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
  context = [(_HKAnnotationColumnLayout *)self context];
  result = 10.0;
  if (context == 2)
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
  columnViews = [(_HKAnnotationColumnLayout *)self columnViews];
  v3 = [columnViews countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(columnViews);
        }

        [*(*(&v10 + 1) + 8 * i) systemLayoutSizeFittingSize:{1.79769313e308, 1.79769313e308}];
        v6 = v6 + v8;
      }

      v4 = [columnViews countByEnumeratingWithState:&v10 objects:v14 count:16];
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
  columnViews = [(_HKAnnotationColumnLayout *)self columnViews];
  v3 = [columnViews countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(columnViews);
        }

        [*(*(&v10 + 1) + 8 * i) systemLayoutSizeFittingSize:{1.79769313e308, 1.79769313e308}];
        if (v6 < v8)
        {
          v6 = v8;
        }
      }

      v4 = [columnViews countByEnumeratingWithState:&v10 objects:v14 count:16];
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
    hk_activitySeparatorDefaultColor = [MEMORY[0x1E69DC888] hk_activitySeparatorDefaultColor];
  }

  else
  {
    if (context != 1)
    {
      goto LABEL_10;
    }

    hk_activitySeparatorDefaultColor = [MEMORY[0x1E69DC888] hk_activitySeparatorLollipopColor];
  }

  v7 = hk_activitySeparatorDefaultColor;
  [v3 setBackgroundColor:hk_activitySeparatorDefaultColor];

LABEL_10:

  return v3;
}

@end