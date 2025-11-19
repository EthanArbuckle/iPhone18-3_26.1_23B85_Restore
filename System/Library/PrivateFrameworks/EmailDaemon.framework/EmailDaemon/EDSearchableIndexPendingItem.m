@interface EDSearchableIndexPendingItem
- (BOOL)isEqual:(id)a3;
- (BOOL)requiresPreprocessing;
- (EDSearchableIndexPendingItem)initWithItem:(id)a3;
- (int64_t)compare:(id)a3;
- (unint64_t)estimatedSizeInBytes;
- (unint64_t)hash;
- (void)addItem:(id)a3;
- (void)addPendingItem:(id)a3;
@end

@implementation EDSearchableIndexPendingItem

- (EDSearchableIndexPendingItem)initWithItem:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = EDSearchableIndexPendingItem;
  v6 = [(EDSearchableIndexPendingItem *)&v13 init];
  if (v6)
  {
    v7 = [v5 identifier];
    v8 = [v7 copy];
    identifier = v6->_identifier;
    v6->_identifier = v8;

    v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v5, 0}];
    items = v6->_items;
    v6->_items = v10;

    objc_storeStrong(&v6->_referenceItem, a3);
  }

  return v6;
}

- (void)addItem:(id)a3
{
  v12 = a3;
  v5 = [v12 identifier];
  v6 = [(EDSearchableIndexPendingItem *)self identifier];
  v7 = [v5 isEqualToString:v6];

  if ((v7 & 1) == 0)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"EDSearchableIndexPendingItem.m" lineNumber:30 description:@"Additional items added to a pending item must have the same identifier"];
  }

  [(NSMutableArray *)self->_items ef_insertObject:v12 usingComparator:&__block_literal_global_79 allowDuplicates:0];
  v8 = [(NSMutableArray *)self->_items sortedArrayUsingComparator:&__block_literal_global_8];
  v9 = [v8 firstObject];
  referenceItem = self->_referenceItem;
  self->_referenceItem = v9;
}

uint64_t __40__EDSearchableIndexPendingItem_addItem___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = +[EDSearchableIndexItem indexingPriorityByIndexingType:](EDSearchableIndexItem, "indexingPriorityByIndexingType:", [v4 indexingType]);
  v7 = +[EDSearchableIndexItem indexingPriorityByIndexingType:](EDSearchableIndexItem, "indexingPriorityByIndexingType:", [v5 indexingType]);
  if (v7 >= v6)
  {
    if (v7 <= v6)
    {
      v9 = [v4 itemInstantiationTime];
      v10 = [v5 itemInstantiationTime];
      if (v10 <= v9)
      {
        v11 = 0;
      }

      else
      {
        v11 = -1;
      }

      if (v10 < v9)
      {
        v8 = 1;
      }

      else
      {
        v8 = v11;
      }
    }

    else
    {
      v8 = -1;
    }
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (void)addPendingItem:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [a3 items];
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v4);
        }

        [(EDSearchableIndexPendingItem *)self addItem:*(*(&v9 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  v5 = [(EDSearchableIndexPendingItem *)self referenceItem];
  v6 = [v4 referenceItem];
  v7 = EDIndexableItemCompare(v5, v6);

  return v7;
}

- (unint64_t)estimatedSizeInBytes
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [(EDSearchableIndexPendingItem *)self items];
  v3 = 0;
  v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v3 += [*(*(&v9 + 1) + 8 * v6++) estimatedSizeInBytes];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x1E69E9840];
  return v3;
}

- (BOOL)requiresPreprocessing
{
  v2 = [(EDSearchableIndexPendingItem *)self items];
  v3 = [v2 ef_any:&__block_literal_global_11_0];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(EDSearchableIndexPendingItem *)self identifier];
    v7 = [v5 identifier];
    v8 = [v6 isEqualToString:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v2 = [(EDSearchableIndexPendingItem *)self identifier];
  v3 = [v2 hash];

  return v3;
}

@end