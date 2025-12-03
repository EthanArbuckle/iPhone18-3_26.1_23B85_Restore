@interface UICollectionView(IC)
- (double)ic_firstSelectedItemFrame;
- (double)ic_frameForItemAtIndexPath:()IC;
- (id)ic_cellAtLocation:()IC;
- (id)ic_firstItemIndexPath;
- (id)ic_middleVisibleIndexPath;
- (id)indexPathsForFocusedItems;
- (uint64_t)ic_reloadDataWithCompletion:()IC;
- (uint64_t)ic_selectFirstItemIfNoneSelected;
- (uint64_t)ic_selectionContainsFocusedItem;
- (void)ic_deselectAllItemsAnimated:()IC;
- (void)ic_selectCellAtIndexPath:()IC animated:;
@end

@implementation UICollectionView(IC)

- (void)ic_deselectAllItemsAnimated:()IC
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  indexPathsForSelectedItems = [self indexPathsForSelectedItems];
  v6 = [indexPathsForSelectedItems countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(indexPathsForSelectedItems);
        }

        [self deselectItemAtIndexPath:*(*(&v10 + 1) + 8 * v9++) animated:a3];
      }

      while (v7 != v9);
      v7 = [indexPathsForSelectedItems countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (id)ic_cellAtLocation:()IC
{
  v2 = [self indexPathForItemAtPoint:?];
  v3 = [self cellForItemAtIndexPath:v2];

  return v3;
}

- (id)ic_firstItemIndexPath
{
  if ([self numberOfSections] < 1)
  {
LABEL_5:
    v3 = 0;
  }

  else
  {
    v2 = 0;
    while ([self numberOfItemsInSection:v2] < 1)
    {
      if (++v2 >= [self numberOfSections])
      {
        goto LABEL_5;
      }
    }

    v3 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:v2];
  }

  return v3;
}

- (double)ic_firstSelectedItemFrame
{
  indexPathsForSelectedItems = [self indexPathsForSelectedItems];
  firstObject = [indexPathsForSelectedItems firstObject];

  if (firstObject)
  {
    [self ic_frameForItemAtIndexPath:firstObject];
    v5 = v4;
  }

  else
  {
    v5 = *MEMORY[0x1E695F050];
  }

  return v5;
}

- (id)ic_middleVisibleIndexPath
{
  [self ic_visibleRectConsideringInsets:1];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  collectionViewLayout = [self collectionViewLayout];
  v11 = [collectionViewLayout layoutAttributesForElementsInRect:{v3, v5, v7, v9}];

  if ([v11 count])
  {
    v12 = [v11 objectAtIndexedSubscript:{objc_msgSend(v11, "count") >> 1}];
    indexPath = [v12 indexPath];
  }

  else
  {
    indexPath = 0;
  }

  return indexPath;
}

- (double)ic_frameForItemAtIndexPath:()IC
{
  v4 = a3;
  collectionViewLayout = [self collectionViewLayout];
  v6 = [collectionViewLayout layoutAttributesForItemAtIndexPath:v4];

  if (v6)
  {
    [v6 frame];
    v8 = v7;
  }

  else
  {
    v8 = *MEMORY[0x1E695F050];
  }

  return v8;
}

- (uint64_t)ic_selectFirstItemIfNoneSelected
{
  indexPathsForSelectedItems = [self indexPathsForSelectedItems];
  v3 = [indexPathsForSelectedItems count];

  ic_firstItemIndexPath = [self ic_firstItemIndexPath];
  v5 = ic_firstItemIndexPath;
  if (v3)
  {
    v6 = 1;
  }

  else
  {
    v6 = ic_firstItemIndexPath == 0;
  }

  v7 = !v6;
  if (!v6)
  {
    [self selectItemAtIndexPath:ic_firstItemIndexPath animated:0 scrollPosition:0];
  }

  return v7;
}

- (void)ic_selectCellAtIndexPath:()IC animated:
{
  if (a3)
  {
    v6 = a3;
    indexPathsForSelectedItems = [self indexPathsForSelectedItems];
    rect2_8 = [indexPathsForSelectedItems firstObject];

    if (rect2_8)
    {
      [self deselectItemAtIndexPath:rect2_8 animated:0];
    }

    v8 = [self layoutAttributesForItemAtIndexPath:v6];
    [v8 frame];
    rect2 = v9;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    [self adjustedContentInset];
    v17 = v16;
    [self adjustedContentInset];
    v19 = v18;
    [self bounds];
    v21 = v20;
    [self bounds];
    v23 = v17 + v22;
    [self bounds];
    v25 = v24;
    [self bounds];
    v31.size.height = v26 - v17 - v19;
    v31.origin.x = v21;
    v31.origin.y = v23;
    v31.size.width = v25;
    v32.origin.x = rect2;
    v32.origin.y = v11;
    v32.size.width = v13;
    v32.size.height = v15;
    if (CGRectContainsRect(v31, v32))
    {
      v27 = 0;
    }

    else
    {
      v27 = 2;
    }

    [self selectItemAtIndexPath:v6 animated:a4 scrollPosition:v27];
  }
}

- (uint64_t)ic_reloadDataWithCompletion:()IC
{
  v4 = MEMORY[0x1E6979518];
  v5 = a3;
  [v4 begin];
  [MEMORY[0x1E6979518] setCompletionBlock:v5];

  [self reloadData];
  v6 = MEMORY[0x1E6979518];

  return [v6 commit];
}

- (id)indexPathsForFocusedItems
{
  v9[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69DCA38] focusSystemForEnvironment:self];
  if (v2)
  {
    objc_opt_class();
    focusedItem = [v2 focusedItem];
    v4 = ICDynamicCast();

    if (v4)
    {
      v5 = [self indexPathForCell:v4];
      v6 = v5;
      if (v5)
      {
        v9[0] = v5;
        v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (uint64_t)ic_selectionContainsFocusedItem
{
  indexPathsForFocusedItems = [self indexPathsForFocusedItems];
  firstObject = [indexPathsForFocusedItems firstObject];

  indexPathsForSelectedItems = [self indexPathsForSelectedItems];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __55__UICollectionView_IC__ic_selectionContainsFocusedItem__block_invoke;
  v8[3] = &unk_1E846B510;
  v9 = firstObject;
  v5 = firstObject;
  v6 = [indexPathsForSelectedItems ic_containsObjectPassingTest:v8];

  return v6;
}

@end