@interface FavoritesCollectionState
+ (OS_os_log)log;
+ (id)displayOrder;
- (BOOL)addExpandedItem:(id)a3;
- (BOOL)addItem:(id)a3 ordered:(BOOL)a4;
- (FavoritesCollectionState)initWithType:(unint64_t)a3;
- (NSArray)selectedItems;
- (NSArray)visibleItems;
- (id)addOrUpdateExpandedItem:(id)a3 didAdd:(BOOL *)a4 didReplace:(BOOL *)a5;
- (id)addOrUpdateItem:(id)a3 didAdd:(BOOL *)a4 didReplace:(BOOL *)a5;
- (id)dictionaryRepresentations;
- (id)expandedItemWithSyncKey:(id)a3;
- (id)itemWithSyncKey:(id)a3;
- (id)orderedAccountIds;
- (id)removeExpandedItem:(id)a3;
- (id)removeItem:(id)a3;
- (id)removeItemWithSyncKey:(id)a3;
- (int64_t)_indexForNewItem:(id)a3;
- (unint64_t)countOfVisibleItems;
- (void)_addAccountsCollectionVisibleItemsToArray:(id)a3;
- (void)_addMailboxCollectionVisibleItemsToArray:(id)a3;
- (void)_addSubitems:(id)a3 toArray:(id)a4;
- (void)_addVisibleItem:(id)a3 toArray:(id)a4;
- (void)invalidateVisibleItems;
- (void)setExpandedItems:(id)a3;
- (void)setItems:(id)a3;
@end

@implementation FavoritesCollectionState

+ (OS_os_log)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001C9E4;
  block[3] = &unk_1001562E8;
  block[4] = a1;
  if (qword_100185558 != -1)
  {
    dispatch_once(&qword_100185558, block);
  }

  v2 = qword_100185550;

  return v2;
}

- (FavoritesCollectionState)initWithType:(unint64_t)a3
{
  v12.receiver = self;
  v12.super_class = FavoritesCollectionState;
  v4 = [(FavoritesCollectionState *)&v12 init];
  if (v4)
  {
    v5 = objc_alloc_init(NSMutableArray);
    items = v4->_items;
    v4->_items = v5;

    v7 = objc_alloc_init(NSMutableArray);
    expandedItems = v4->_expandedItems;
    v4->_expandedItems = v7;

    v9 = objc_alloc_init(NSMutableDictionary);
    expandedItemBySyncKey = v4->_expandedItemBySyncKey;
    v4->_expandedItemBySyncKey = v9;

    v4->_type = a3;
  }

  return v4;
}

- (BOOL)addItem:(id)a3 ordered:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(FavoritesCollectionState *)self mutableItems];
  v8 = [v7 containsObject:v6];
  if ((v8 & 1) == 0)
  {
    if (v4 && (v9 = [(FavoritesCollectionState *)self _indexForNewItem:v6], v9 != 0x7FFFFFFFFFFFFFFFLL))
    {
      [v7 insertObject:v6 atIndex:v9];
    }

    else
    {
      [v7 addObject:v6];
    }
  }

  return v8 ^ 1;
}

- (BOOL)addExpandedItem:(id)a3
{
  v4 = a3;
  v5 = [v4 syncKey];

  if (v5)
  {
    v6 = [(FavoritesCollectionState *)self mutableExpandedItems];
    v7 = [(FavoritesCollectionState *)self mutableExpandedItemBySyncKey];
    v8 = [v4 syncKey];
    v9 = [v7 objectForKeyedSubscript:v8];
    v10 = v9 == 0;

    if (!v9)
    {
      [v6 addObject:v4];
      v11 = [v4 syncKey];
      [v7 setObject:v4 forKeyedSubscript:v11];
    }
  }

  else
  {
    v12 = +[FavoritesCollectionState log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14 = objc_opt_class();
      v15 = [v4 ef_publicDescription];
      v16 = 138412802;
      v17 = v14;
      v18 = 2048;
      v19 = self;
      v20 = 2114;
      v21 = v15;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "<%@: %p> Attempting to add an expanded item without a sync key: %{public}@", &v16, 0x20u);
    }

    v10 = 0;
  }

  return v10;
}

- (id)addOrUpdateItem:(id)a3 didAdd:(BOOL *)a4 didReplace:(BOOL *)a5
{
  v8 = a3;
  v9 = [(FavoritesCollectionState *)self mutableItems];
  v10 = [v8 syncKey];
  v11 = [(FavoritesCollectionState *)self itemWithSyncKey:v10];

  if (v11)
  {
    v12 = [v9 indexOfObject:v11];
    if (v12 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v13 = 0;
LABEL_8:
      if (([v8 isEqual:v11] & 1) == 0)
      {
        [v9 replaceObjectAtIndex:v12 withObject:v8];
        if (a5)
        {
          goto LABEL_10;
        }
      }

      goto LABEL_11;
    }
  }

  else
  {
    v12 = [v9 indexOfObject:v8];
    if (v12 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v13 = [v9 objectAtIndexedSubscript:v12];
      goto LABEL_8;
    }
  }

  [(FavoritesCollectionState *)self addItem:v8 ordered:1];
  v13 = 0;
  a5 = a4;
  if (a4)
  {
LABEL_10:
    *a5 = 1;
  }

LABEL_11:

  return v13;
}

- (id)addOrUpdateExpandedItem:(id)a3 didAdd:(BOOL *)a4 didReplace:(BOOL *)a5
{
  v8 = a3;
  v9 = [v8 syncKey];

  if (v9)
  {
    v10 = [(FavoritesCollectionState *)self mutableExpandedItems];
    v11 = [(FavoritesCollectionState *)self mutableExpandedItemBySyncKey];
    v12 = [v8 syncKey];
    v13 = [(FavoritesCollectionState *)self expandedItemWithSyncKey:v12];

    if (v13)
    {
      v14 = [v10 indexOfObject:v13];
      if (v14 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v15 = 0;
LABEL_12:
        v17 = [v10 objectAtIndex:v14];
        v18 = [v17 syncKey];

        [v10 replaceObjectAtIndex:v14 withObject:v8];
        [v11 setObject:0 forKeyedSubscript:v18];
        v19 = [v8 syncKey];
        [v11 setObject:v8 forKeyedSubscript:v19];

        if (a5)
        {
          *a5 = 1;
        }

LABEL_15:
        goto LABEL_16;
      }
    }

    else
    {
      v14 = [v10 indexOfObject:v8];
      if (v14 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v15 = [v10 objectAtIndexedSubscript:v14];
        goto LABEL_12;
      }
    }

    [(FavoritesCollectionState *)self addExpandedItem:v8];
    v15 = 0;
    if (a4)
    {
      *a4 = 1;
    }

    goto LABEL_15;
  }

  v16 = +[FavoritesCollectionState log];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v21 = objc_opt_class();
    v22 = [v8 ef_publicDescription];
    v23 = 138412802;
    v24 = v21;
    v25 = 2048;
    v26 = self;
    v27 = 2114;
    v28 = v22;
    _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "<%@: %p> Attempting to add/update an expanded item without a sync key: %{public}@", &v23, 0x20u);
  }

  v15 = 0;
LABEL_16:

  return v15;
}

+ (id)displayOrder
{
  if (qword_100185568 != -1)
  {
    sub_1000D2374();
  }

  v3 = qword_100185560;

  return v3;
}

- (int64_t)_indexForNewItem:(id)a3
{
  v4 = a3;
  if (qword_100185578 != -1)
  {
    sub_1000D2388();
  }

  v5 = [(FavoritesCollectionState *)self items];
  if ([v5 count])
  {
    v6 = +[FavoritesCollectionState displayOrder];
    v7 = [v6 indexOfObject:objc_opt_class()];
    for (i = 0; ; ++i)
    {
      if (i >= [v5 count])
      {
        i = 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_12;
      }

      v9 = [v5 objectAtIndexedSubscript:i];
      if (([v9 isEqual:qword_100185570] & 1) == 0 && v7 < objc_msgSend(v6, "indexOfObject:", objc_opt_class()))
      {
        break;
      }
    }

LABEL_12:
  }

  else
  {
    i = 0x7FFFFFFFFFFFFFFFLL;
  }

  return i;
}

- (id)itemWithSyncKey:(id)a3
{
  v4 = a3;
  v5 = [(FavoritesCollectionState *)self items];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10001D69C;
  v10[3] = &unk_100156EC8;
  v6 = v4;
  v11 = v6;
  v7 = [v5 indexOfObjectPassingTest:v10];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else
  {
    v8 = [v5 objectAtIndex:v7];
  }

  return v8;
}

- (id)expandedItemWithSyncKey:(id)a3
{
  v4 = a3;
  v5 = [(FavoritesCollectionState *)self expandedItemBySyncKey];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (id)removeItemWithSyncKey:(id)a3
{
  v4 = a3;
  v5 = [(FavoritesCollectionState *)self mutableItems];
  v6 = [(FavoritesCollectionState *)self itemWithSyncKey:v4];
  if (v6)
  {
    [v5 removeObject:v6];
  }

  return v6;
}

- (void)_addSubitems:(id)a3 toArray:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v9)
  {
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v8);
        }

        [(FavoritesCollectionState *)self _addVisibleItem:*(*(&v12 + 1) + 8 * v11) toArray:v7, v12];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v8 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)_addVisibleItem:(id)a3 toArray:(id)a4
{
  v11 = a3;
  v6 = a4;
  if ([v11 isVisible])
  {
    [v6 addObject:v11];
    v7 = [v11 subItems];
    v8 = [v7 count];

    if (-[FavoritesCollectionState isEditing](self, "isEditing") || ([v11 isExpandable] & 1) == 0)
    {
      if (![(FavoritesCollectionState *)self isEditing])
      {
        goto LABEL_11;
      }

      v9 = [v11 isExpandableInEditMode];
    }

    else
    {
      v9 = 1;
    }

    if (v8 && v9 && [v11 isExpanded])
    {
      v10 = [v11 subItems];
      [(FavoritesCollectionState *)self _addSubitems:v10 toArray:v6];
    }
  }

LABEL_11:
}

- (void)_addMailboxCollectionVisibleItemsToArray:(id)a3
{
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(FavoritesCollectionState *)self items];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        if (-[FavoritesCollectionState isEditing](self, "isEditing") || [v9 isSelected])
        {
          [(FavoritesCollectionState *)self _addVisibleItem:v9 toArray:v4];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)_addAccountsCollectionVisibleItemsToArray:(id)a3
{
  v4 = a3;
  [(FavoritesCollectionState *)self items];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v5 = v22 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v6)
  {
    v7 = 0;
    v8 = 0;
    v9 = *v22;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v21 + 1) + 8 * i);
        if ([v11 isVisible])
        {
          v12 = v11;

          ++v7;
          v8 = v12;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v6);
    LODWORD(v6) = v7 == 1;
  }

  else
  {
    v8 = 0;
  }

  if (([(FavoritesCollectionState *)self isEditing]& v6) == 1)
  {
    [v8 setExpanded:1];
LABEL_15:
    v13 = [v8 subItems];
    [(FavoritesCollectionState *)self _addSubitems:v13 toArray:v4];
    goto LABEL_16;
  }

  if (v6)
  {
    goto LABEL_15;
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v13 = v5;
  v14 = [v13 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v14)
  {
    v15 = *v18;
    do
    {
      for (j = 0; j != v14; j = j + 1)
      {
        if (*v18 != v15)
        {
          objc_enumerationMutation(v13);
        }

        [(FavoritesCollectionState *)self _addVisibleItem:*(*(&v17 + 1) + 8 * j) toArray:v4, v17];
      }

      v14 = [v13 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v14);
  }

LABEL_16:
}

- (id)removeItem:(id)a3
{
  v4 = a3;
  v5 = [(FavoritesCollectionState *)self mutableItems];
  if ([v5 containsObject:v4])
  {
    [v5 removeObject:v4];
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)removeExpandedItem:(id)a3
{
  v4 = a3;
  v5 = [v4 syncKey];

  if (v5)
  {
    v6 = [(FavoritesCollectionState *)self mutableExpandedItems];
    v7 = [(FavoritesCollectionState *)self mutableExpandedItemBySyncKey];
    v8 = [v4 syncKey];
    v9 = [v7 objectForKeyedSubscript:v8];

    if (v9)
    {
      [v6 removeObject:v4];
      v10 = [v4 syncKey];
      [v7 setObject:0 forKeyedSubscript:v10];

      v9 = v4;
    }
  }

  else
  {
    v11 = +[FavoritesCollectionState log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = objc_opt_class();
      v14 = [v4 ef_publicDescription];
      v15 = 138412802;
      v16 = v13;
      v17 = 2048;
      v18 = self;
      v19 = 2114;
      v20 = v14;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "<%@: %p> Attempting to remove an expanded item without a sync key: %{public}@", &v15, 0x20u);
    }

    v9 = 0;
  }

  return v9;
}

- (id)dictionaryRepresentations
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = objc_alloc_init(NSMutableArray);
  v5 = [(FavoritesCollectionState *)self items];
  v6 = [(FavoritesCollectionState *)self expandedItems];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v23 objects:v30 count:16];
  if (v8)
  {
    v9 = *v24;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = [*(*(&v23 + 1) + 8 * i) dictionaryRepresentation];
        if (v11)
        {
          [v3 addObject:v11];
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v23 objects:v30 count:16];
    }

    while (v8);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = v6;
  v13 = [v12 countByEnumeratingWithState:&v19 objects:v29 count:16];
  if (v13)
  {
    v14 = *v20;
    do
    {
      for (j = 0; j != v13; j = j + 1)
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = [*(*(&v19 + 1) + 8 * j) dictionaryRepresentationRemovingSyncKeys];
        if (v16)
        {
          [v4 addObject:v16];
        }
      }

      v13 = [v12 countByEnumeratingWithState:&v19 objects:v29 count:16];
    }

    while (v13);
  }

  v27[0] = @"items";
  v27[1] = @"expandedItems";
  v28[0] = v3;
  v28[1] = v4;
  v17 = [NSDictionary dictionaryWithObjects:v28 forKeys:v27 count:2];

  return v17;
}

- (id)orderedAccountIds
{
  v3 = objc_alloc_init(NSMutableArray);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(FavoritesCollectionState *)self items];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = [*(*(&v11 + 1) + 8 * i) account];
        v9 = [v8 uniqueID];

        if (v9)
        {
          [v3 addObject:v9];
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  return v3;
}

- (NSArray)selectedItems
{
  selectedItems = self->_selectedItems;
  if (!selectedItems)
  {
    v4 = [(FavoritesCollectionState *)self items];
    v5 = [v4 ef_filter:&stru_100156F08];
    v6 = self->_selectedItems;
    self->_selectedItems = v5;

    selectedItems = self->_selectedItems;
  }

  v7 = [(NSArray *)selectedItems copy];

  return v7;
}

- (NSArray)visibleItems
{
  visibleItems = self->_visibleItems;
  if (!visibleItems)
  {
    v4 = objc_alloc_init(NSMutableArray);
    if ([(FavoritesCollectionState *)self isMailboxesCollection])
    {
      [(FavoritesCollectionState *)self _addMailboxCollectionVisibleItemsToArray:v4];
    }

    else if ([(FavoritesCollectionState *)self isAccountsCollection])
    {
      [(FavoritesCollectionState *)self _addAccountsCollectionVisibleItemsToArray:v4];
    }

    else
    {
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v5 = [(FavoritesCollectionState *)self items];
      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        v7 = *v14;
        do
        {
          v8 = 0;
          do
          {
            if (*v14 != v7)
            {
              objc_enumerationMutation(v5);
            }

            [(FavoritesCollectionState *)self _addVisibleItem:*(*(&v13 + 1) + 8 * v8) toArray:v4];
            v8 = v8 + 1;
          }

          while (v6 != v8);
          v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        }

        while (v6);
      }
    }

    v9 = [v4 copy];
    v11 = self->_visibleItems;
    p_visibleItems = &self->_visibleItems;
    *p_visibleItems = v9;

    visibleItems = *p_visibleItems;
  }

  return visibleItems;
}

- (void)invalidateVisibleItems
{
  v3 = +[FavoritesCollectionState log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_1000D239C(self, v3);
  }

  visibleItems = self->_visibleItems;
  self->_visibleItems = 0;

  selectedItems = self->_selectedItems;
  self->_selectedItems = 0;
}

- (void)setItems:(id)a3
{
  v5 = a3;
  v4 = [(FavoritesCollectionState *)self mutableItems];
  [v4 setArray:v5];
}

- (void)setExpandedItems:(id)a3
{
  v8 = a3;
  v4 = [(FavoritesCollectionState *)self mutableExpandedItems];
  [v4 setArray:v8];

  v5 = [(FavoritesCollectionState *)self mutableExpandedItemBySyncKey];
  v6 = [v8 valueForKey:@"syncKey"];
  v7 = [NSDictionary dictionaryWithObjects:v8 forKeys:v6];
  [v5 setDictionary:v7];
}

- (unint64_t)countOfVisibleItems
{
  v2 = [(FavoritesCollectionState *)self items];
  v3 = [v2 ef_countObjectsPassingTest:&stru_100156F28];

  return v3;
}

@end