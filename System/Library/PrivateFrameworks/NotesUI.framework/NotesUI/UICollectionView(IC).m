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
  v5 = [a1 indexPathsForSelectedItems];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v5);
        }

        [a1 deselectItemAtIndexPath:*(*(&v10 + 1) + 8 * v9++) animated:a3];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (id)ic_cellAtLocation:()IC
{
  v2 = [a1 indexPathForItemAtPoint:?];
  v3 = [a1 cellForItemAtIndexPath:v2];

  return v3;
}

- (id)ic_firstItemIndexPath
{
  if ([a1 numberOfSections] < 1)
  {
LABEL_5:
    v3 = 0;
  }

  else
  {
    v2 = 0;
    while ([a1 numberOfItemsInSection:v2] < 1)
    {
      if (++v2 >= [a1 numberOfSections])
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
  v2 = [a1 indexPathsForSelectedItems];
  v3 = [v2 firstObject];

  if (v3)
  {
    [a1 ic_frameForItemAtIndexPath:v3];
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
  [a1 ic_visibleRectConsideringInsets:1];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = [a1 collectionViewLayout];
  v11 = [v10 layoutAttributesForElementsInRect:{v3, v5, v7, v9}];

  if ([v11 count])
  {
    v12 = [v11 objectAtIndexedSubscript:{objc_msgSend(v11, "count") >> 1}];
    v13 = [v12 indexPath];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (double)ic_frameForItemAtIndexPath:()IC
{
  v4 = a3;
  v5 = [a1 collectionViewLayout];
  v6 = [v5 layoutAttributesForItemAtIndexPath:v4];

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
  v2 = [a1 indexPathsForSelectedItems];
  v3 = [v2 count];

  v4 = [a1 ic_firstItemIndexPath];
  v5 = v4;
  if (v3)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 == 0;
  }

  v7 = !v6;
  if (!v6)
  {
    [a1 selectItemAtIndexPath:v4 animated:0 scrollPosition:0];
  }

  return v7;
}

- (void)ic_selectCellAtIndexPath:()IC animated:
{
  if (a3)
  {
    v6 = a3;
    v7 = [a1 indexPathsForSelectedItems];
    rect2_8 = [v7 firstObject];

    if (rect2_8)
    {
      [a1 deselectItemAtIndexPath:rect2_8 animated:0];
    }

    v8 = [a1 layoutAttributesForItemAtIndexPath:v6];
    [v8 frame];
    rect2 = v9;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    [a1 adjustedContentInset];
    v17 = v16;
    [a1 adjustedContentInset];
    v19 = v18;
    [a1 bounds];
    v21 = v20;
    [a1 bounds];
    v23 = v17 + v22;
    [a1 bounds];
    v25 = v24;
    [a1 bounds];
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

    [a1 selectItemAtIndexPath:v6 animated:a4 scrollPosition:v27];
  }
}

- (uint64_t)ic_reloadDataWithCompletion:()IC
{
  v4 = MEMORY[0x1E6979518];
  v5 = a3;
  [v4 begin];
  [MEMORY[0x1E6979518] setCompletionBlock:v5];

  [a1 reloadData];
  v6 = MEMORY[0x1E6979518];

  return [v6 commit];
}

- (id)indexPathsForFocusedItems
{
  v9[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69DCA38] focusSystemForEnvironment:a1];
  if (v2)
  {
    objc_opt_class();
    v3 = [v2 focusedItem];
    v4 = ICDynamicCast();

    if (v4)
    {
      v5 = [a1 indexPathForCell:v4];
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
  v2 = [a1 indexPathsForFocusedItems];
  v3 = [v2 firstObject];

  v4 = [a1 indexPathsForSelectedItems];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __55__UICollectionView_IC__ic_selectionContainsFocusedItem__block_invoke;
  v8[3] = &unk_1E846B510;
  v9 = v3;
  v5 = v3;
  v6 = [v4 ic_containsObjectPassingTest:v8];

  return v6;
}

@end