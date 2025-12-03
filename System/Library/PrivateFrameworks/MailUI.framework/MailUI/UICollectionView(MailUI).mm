@interface UICollectionView(MailUI)
- (BOOL)mui_isIndexPathVisible:()MailUI;
- (double)mui_safeVisibleBounds;
- (id)mui_indexPathsForPreparedItems;
- (id)mui_sortedIndexPathsForVisibleItems;
@end

@implementation UICollectionView(MailUI)

- (id)mui_sortedIndexPathsForVisibleItems
{
  indexPathsForVisibleItems = [self indexPathsForVisibleItems];
  v2 = [indexPathsForVisibleItems sortedArrayUsingSelector:sel_compare_];

  return v2;
}

- (id)mui_indexPathsForPreparedItems
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__UICollectionView_MailUI__mui_indexPathsForPreparedItems__block_invoke;
  block[3] = &unk_278188BB0;
  block[4] = self;
  if (mui_indexPathsForPreparedItems_onceToken != -1)
  {
    dispatch_once(&mui_indexPathsForPreparedItems_onceToken, block);
  }

  if (mui_indexPathsForPreparedItems_shouldUseImprovedSPI == 1)
  {
    _indexPathsForPreparedItems = [self _indexPathsForPreparedItems];
  }

  else
  {
    preparedCells = [self preparedCells];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __58__UICollectionView_MailUI__mui_indexPathsForPreparedItems__block_invoke_2;
    v5[3] = &unk_27818A5B0;
    v5[4] = self;
    _indexPathsForPreparedItems = [preparedCells ef_compactMap:v5];
  }

  return _indexPathsForPreparedItems;
}

- (double)mui_safeVisibleBounds
{
  [self visibleBounds];
  v3 = v2;
  [self safeAreaInsets];
  return v3 + v4;
}

- (BOOL)mui_isIndexPathVisible:()MailUI
{
  v4 = a3;
  indexPathsForVisibleItems = [self indexPathsForVisibleItems];
  v6 = [indexPathsForVisibleItems containsObject:v4];

  if (v6)
  {
    v7 = [self layoutAttributesForItemAtIndexPath:v4];
    [self mui_safeVisibleBounds];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    [v7 frame];
    v23.origin.x = v16;
    v23.origin.y = v17;
    v23.size.width = v18;
    v23.size.height = v19;
    v22.origin.x = v9;
    v22.origin.y = v11;
    v22.size.width = v13;
    v22.size.height = v15;
    v20 = CGRectContainsRect(v22, v23);
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

@end