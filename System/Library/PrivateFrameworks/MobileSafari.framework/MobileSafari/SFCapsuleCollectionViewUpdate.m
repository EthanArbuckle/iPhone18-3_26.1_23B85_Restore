@interface SFCapsuleCollectionViewUpdate
- (NSIndexSet)indexesOfDeletedItems;
- (NSIndexSet)indexesOfInsertedItems;
- (SFCapsuleCollectionView)collectionView;
- (SFCapsuleCollectionViewUpdate)initWithCollectionView:(id)a3;
- (void)_calculateIndexesIfNeeded;
- (void)deleteItemsAtIndexes:(id)a3 animated:(BOOL)a4;
- (void)insertItemsAtIndexes:(id)a3 animated:(BOOL)a4;
- (void)setSelectedItemIndex:(int64_t)a3 animated:(BOOL)a4;
@end

@implementation SFCapsuleCollectionViewUpdate

- (SFCapsuleCollectionViewUpdate)initWithCollectionView:(id)a3
{
  v4 = a3;
  v26.receiver = self;
  v26.super_class = SFCapsuleCollectionViewUpdate;
  v5 = [(SFCapsuleCollectionViewUpdate *)&v26 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_collectionView, v4);
    v7 = [v4 _items];
    v8 = [v7 copy];
    itemsBeforeUpdate = v6->_itemsBeforeUpdate;
    v6->_itemsBeforeUpdate = v8;

    v10 = [v4 _indexesOfVisibleItemsIncludingAction:1];
    v11 = [v10 copy];
    indexesOfVisibleItemsBeforeUpdate = v6->_indexesOfVisibleItemsBeforeUpdate;
    v6->_indexesOfVisibleItemsBeforeUpdate = v11;

    v6->_selectedItemIndexBeforeUpdate = [v4 selectedItemIndex];
    v13 = [v4 _items];
    v14 = [v13 mutableCopy];
    itemsAfterUpdate = v6->_itemsAfterUpdate;
    v6->_itemsAfterUpdate = v14;

    v6->_selectedItemIndexAfterUpdate = v6->_selectedItemIndexBeforeUpdate;
    v16 = [MEMORY[0x1E695DFA8] set];
    deletedItems = v6->_deletedItems;
    v6->_deletedItems = v16;

    v18 = [MEMORY[0x1E695DFA8] set];
    insertedItems = v6->_insertedItems;
    v6->_insertedItems = v18;

    v20 = [MEMORY[0x1E696AC90] indexSet];
    indexesOfDeletedItems = v6->_indexesOfDeletedItems;
    v6->_indexesOfDeletedItems = v20;

    v22 = [MEMORY[0x1E696AC90] indexSet];
    indexesOfInsertedItems = v6->_indexesOfInsertedItems;
    v6->_indexesOfInsertedItems = v22;

    v24 = v6;
  }

  return v6;
}

- (void)setSelectedItemIndex:(int64_t)a3 animated:(BOOL)a4
{
  if (self->_selectedItemIndexAfterUpdate != a3)
  {
    indexesOfDeletedItems = self->_indexesOfDeletedItems;
    self->_indexesOfDeletedItems = 0;

    indexesOfInsertedItems = self->_indexesOfInsertedItems;
    self->_indexesOfInsertedItems = 0;

    self->_selectedItemIndexAfterUpdate = a3;
    self->_animated |= a4;
  }
}

- (void)insertItemsAtIndexes:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if ([v6 count])
  {
    indexesOfDeletedItems = self->_indexesOfDeletedItems;
    self->_indexesOfDeletedItems = 0;

    indexesOfInsertedItems = self->_indexesOfInsertedItems;
    self->_indexesOfInsertedItems = 0;

    v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v6, "count")}];
    v10 = [v9 count];
    if (v10 < [v6 count])
    {
      do
      {
        v11 = [SFCapsuleCollectionViewItem alloc];
        WeakRetained = objc_loadWeakRetained(&self->_collectionView);
        v13 = [(SFCapsuleCollectionViewItem *)v11 initWithCollectionView:WeakRetained];
        [v9 addObject:v13];

        v14 = [v9 count];
      }

      while (v14 < [v6 count]);
    }

    [(NSMutableSet *)self->_insertedItems addObjectsFromArray:v9];
    [(NSMutableArray *)self->_itemsAfterUpdate insertObjects:v9 atIndexes:v6];
    selectedItemIndexAfterUpdate = self->_selectedItemIndexAfterUpdate;
    self->_selectedItemIndexAfterUpdate = [v6 countOfIndexesInRange:{0, selectedItemIndexAfterUpdate + 1}] + selectedItemIndexAfterUpdate;
    if ([(NSMutableArray *)self->_itemsAfterUpdate count]> 1)
    {
      v16 = self->_selectedItemIndexAfterUpdate;
      if (v16 >= [(NSMutableArray *)self->_itemsAfterUpdate count]- 1)
      {
        self->_selectedItemIndexAfterUpdate = [(NSMutableArray *)self->_itemsAfterUpdate count]- 2;
      }
    }

    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __63__SFCapsuleCollectionViewUpdate_insertItemsAtIndexes_animated___block_invoke;
    v20[3] = &unk_1E721B498;
    v20[4] = self;
    v17 = [v6 indexesPassingTest:v20];
    v18 = v17;
    animated = self->_animated;
    if (v4 && !self->_animated)
    {
      animated = [v17 count] != 0;
    }

    self->_animated = animated;
  }
}

BOOL __63__SFCapsuleCollectionViewUpdate_insertItemsAtIndexes_animated___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = a2 - *(*(a1 + 32) + 104);
  if (v2 < 0)
  {
    v2 = *(*(a1 + 32) + 104) - a2;
  }

  return v2 < 2;
}

- (void)deleteItemsAtIndexes:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  indexesOfDeletedItems = self->_indexesOfDeletedItems;
  self->_indexesOfDeletedItems = 0;

  indexesOfInsertedItems = self->_indexesOfInsertedItems;
  self->_indexesOfInsertedItems = 0;

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __63__SFCapsuleCollectionViewUpdate_deleteItemsAtIndexes_animated___block_invoke;
  v22[3] = &unk_1E721B498;
  v22[4] = self;
  v9 = [v6 indexesPassingTest:v22];
  v10 = v9;
  animated = self->_animated;
  if (v4 && !self->_animated)
  {
    animated = [v9 count] != 0;
  }

  self->_animated = animated;
  deletedItems = self->_deletedItems;
  v13 = [(NSMutableArray *)self->_itemsAfterUpdate objectsAtIndexes:v6];
  [(NSMutableSet *)deletedItems addObjectsFromArray:v13];

  v14 = [(NSMutableArray *)self->_itemsAfterUpdate copy];
  [(NSMutableArray *)self->_itemsAfterUpdate removeObjectsAtIndexes:v6];
  selectedItemIndexAfterUpdate = self->_selectedItemIndexAfterUpdate;
  for (i = -[NSMutableArray count](self->_itemsAfterUpdate, "count"); selectedItemIndexAfterUpdate < i - 1 && [v6 containsIndex:selectedItemIndexAfterUpdate]; i = -[NSMutableArray count](self->_itemsAfterUpdate, "count"))
  {
    ++selectedItemIndexAfterUpdate;
  }

  if (selectedItemIndexAfterUpdate >= 1)
  {
    while ([v6 containsIndex:selectedItemIndexAfterUpdate])
    {
      if (selectedItemIndexAfterUpdate-- <= 1)
      {
        selectedItemIndexAfterUpdate = 0;
        break;
      }
    }
  }

  itemsAfterUpdate = self->_itemsAfterUpdate;
  v19 = [v14 objectAtIndexedSubscript:selectedItemIndexAfterUpdate];
  v20 = [(NSMutableArray *)itemsAfterUpdate indexOfObject:v19];

  if (v20 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v21 = 0;
  }

  else
  {
    v21 = v20;
  }

  self->_selectedItemIndexAfterUpdate = v21;
}

BOOL __63__SFCapsuleCollectionViewUpdate_deleteItemsAtIndexes_animated___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = a2 - *(*(a1 + 32) + 104);
  if (v2 < 0)
  {
    v2 = *(*(a1 + 32) + 104) - a2;
  }

  return v2 < 2;
}

- (NSIndexSet)indexesOfDeletedItems
{
  [(SFCapsuleCollectionViewUpdate *)self _calculateIndexesIfNeeded];
  indexesOfDeletedItems = self->_indexesOfDeletedItems;

  return indexesOfDeletedItems;
}

- (NSIndexSet)indexesOfInsertedItems
{
  [(SFCapsuleCollectionViewUpdate *)self _calculateIndexesIfNeeded];
  indexesOfInsertedItems = self->_indexesOfInsertedItems;

  return indexesOfInsertedItems;
}

- (void)_calculateIndexesIfNeeded
{
  if (!self->_indexesOfDeletedItems || !self->_indexesOfInsertedItems)
  {
    v3.f64[0] = NAN;
    v3.f64[1] = NAN;
    *&self->_indexBeforeUpdateOfSelectedItemAfterUpdate = vnegq_f64(v3);
    if ([(NSArray *)self->_itemsBeforeUpdate count]< 2)
    {
      v4 = 0;
    }

    else
    {
      v4 = [(NSArray *)self->_itemsBeforeUpdate objectAtIndexedSubscript:self->_selectedItemIndexBeforeUpdate];
    }

    if ([(NSMutableArray *)self->_itemsAfterUpdate count]< 2)
    {
      v5 = 0;
    }

    else
    {
      v5 = [(NSMutableArray *)self->_itemsAfterUpdate objectAtIndexedSubscript:self->_selectedItemIndexAfterUpdate];
    }

    itemsBeforeUpdate = self->_itemsBeforeUpdate;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __58__SFCapsuleCollectionViewUpdate__calculateIndexesIfNeeded__block_invoke;
    v17[3] = &unk_1E721B4C0;
    v18 = v5;
    v19 = self;
    v7 = v5;
    v8 = [(NSArray *)itemsBeforeUpdate indexesOfObjectsPassingTest:v17];
    indexesOfDeletedItems = self->_indexesOfDeletedItems;
    self->_indexesOfDeletedItems = v8;

    itemsAfterUpdate = self->_itemsAfterUpdate;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __58__SFCapsuleCollectionViewUpdate__calculateIndexesIfNeeded__block_invoke_2;
    v14[3] = &unk_1E721B4C0;
    v15 = v4;
    v16 = self;
    v11 = v4;
    v12 = [(NSMutableArray *)itemsAfterUpdate indexesOfObjectsPassingTest:v14];
    indexesOfInsertedItems = self->_indexesOfInsertedItems;
    self->_indexesOfInsertedItems = v12;
  }
}

uint64_t __58__SFCapsuleCollectionViewUpdate__calculateIndexesIfNeeded__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 32) == a2)
  {
    *(*(a1 + 40) + 56) = a3;
  }

  return [*(*(a1 + 40) + 16) containsObject:a2];
}

uint64_t __58__SFCapsuleCollectionViewUpdate__calculateIndexesIfNeeded__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 32) == a2)
  {
    *(*(a1 + 40) + 64) = a3;
  }

  return [*(*(a1 + 40) + 24) containsObject:a2];
}

- (SFCapsuleCollectionView)collectionView
{
  WeakRetained = objc_loadWeakRetained(&self->_collectionView);

  return WeakRetained;
}

@end