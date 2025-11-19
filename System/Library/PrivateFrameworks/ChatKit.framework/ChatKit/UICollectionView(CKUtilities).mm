@interface UICollectionView(CKUtilities)
- (BOOL)__ck_isScrolledToBottomHidingIndexPath:()CKUtilities;
- (double)__ck_bottomOffsetHidingIndexPath:()CKUtilities;
- (double)__ck_bottomOffsetHidingIndexPath:()CKUtilities computedInsets:skippingLayoutUpdate:;
- (double)__ck_contentSize;
- (double)__ck_offsetForTopOfCellAtIndexPath:()CKUtilities hidingCellAtIndexPath:;
- (id)__ck_indexPathForLastItem;
- (void)__ck_reloadDataKeepingSelection;
@end

@implementation UICollectionView(CKUtilities)

- (double)__ck_contentSize
{
  v1 = [a1 collectionViewLayout];
  [v1 collectionViewContentSize];
  v3 = v2;

  return v3;
}

- (id)__ck_indexPathForLastItem
{
  v1 = [a1 numberOfItemsInSection:0];
  if (v1 < 1)
  {
    v2 = 0;
  }

  else
  {
    v2 = [MEMORY[0x1E696AC88] indexPathForItem:v1 - 1 inSection:0];
  }

  return v2;
}

- (BOOL)__ck_isScrolledToBottomHidingIndexPath:()CKUtilities
{
  [a1 __ck_bottomOffsetHidingIndexPath:?];
  v3 = v2;
  [a1 contentOffset];
  return v4 >= v3 + -0.00000011920929;
}

- (double)__ck_bottomOffsetHidingIndexPath:()CKUtilities
{
  v4 = a3;
  [a1 contentInset];
  [a1 __ck_bottomOffsetHidingIndexPath:v4 computedInsets:0 skippingLayoutUpdate:?];
  v6 = v5;

  return v6;
}

- (double)__ck_bottomOffsetHidingIndexPath:()CKUtilities computedInsets:skippingLayoutUpdate:
{
  v14 = a7;
  v20.receiver = a1;
  v20.super_class = UICollectionView_0;
  objc_msgSendSuper2(&v20, sel___ck_bottomOffsetWithComputedInsets_, a2, a3, a4, a5);
  v16 = v15;
  if (v14)
  {
    if ((a8 & 1) == 0)
    {
      [a1 setNeedsLayout];
      [a1 layoutIfNeeded];
    }

    v17 = [a1 collectionViewLayout];
    v18 = [v17 layoutAttributesForItemAtIndexPath:v14];
    [v18 frame];

    [a1 bounds];
    if (CKMainScreenScale_once_17 != -1)
    {
      [UICollectionView(CKUtilities) __ck_bottomOffsetHidingIndexPath:computedInsets:skippingLayoutUpdate:];
    }
  }

  [a1 __ck_scrollToTopContentOffset];

  return v16;
}

- (double)__ck_offsetForTopOfCellAtIndexPath:()CKUtilities hidingCellAtIndexPath:
{
  v6 = a3;
  v7 = a4;
  [a1 contentOffset];
  v9 = v8;
  v10 = [a1 collectionViewLayout];
  v11 = [v10 layoutAttributesForItemAtIndexPath:v6];
  v12 = v11;
  if (v11)
  {
    [v11 frame];
    [a1 contentInset];
  }

  else
  {
    v13 = IMLogHandleForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [UICollectionView(CKUtilities) __ck_offsetForTopOfCellAtIndexPath:hidingCellAtIndexPath:];
    }
  }

  [a1 __ck_scrollToTopContentOffset];
  if (v7)
  {
    v14 = [v10 layoutAttributesForItemAtIndexPath:v7];
    v15 = v14;
    if (v14)
    {
      [v14 frame];
      [a1 bounds];
      if (CKMainScreenScale_once_17 != -1)
      {
        [UICollectionView(CKUtilities) __ck_bottomOffsetHidingIndexPath:computedInsets:skippingLayoutUpdate:];
      }
    }

    else
    {
      v16 = IMLogHandleForCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [UICollectionView(CKUtilities) __ck_offsetForTopOfCellAtIndexPath:hidingCellAtIndexPath:];
      }
    }
  }

  return v9;
}

- (void)__ck_reloadDataKeepingSelection
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = [a1 indexPathsForSelectedItems];
  [a1 reloadData];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = v2;
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

        [a1 selectItemAtIndexPath:*(*(&v8 + 1) + 8 * v7++) animated:0 scrollPosition:{0, v8}];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

@end