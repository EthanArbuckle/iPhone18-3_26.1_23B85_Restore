@interface MessageListThreadHelper
- (BOOL)_isNextItemAnExpandedItemID:(id)a3 snapshot:(id)a4;
- (BOOL)_isNextItemAnExpandedThreadItemID:(id)a3 snapshot:(id)a4;
- (BOOL)isThreadExpandingWithItemID:(id)a3;
- (BOOL)needsFlushSeparatorForItemID:(id)a3 snapshot:(id)a4;
- (MessageListThreadHelper)initWithDelegate:(id)a3 isPrioritySection:(BOOL)a4;
- (id)collapsingOrExpandingItemIDs;
- (id)itemIDsForReloadAfterDeletingItemIDs:(id)a3 snapshot:(id)a4;
- (id)itemIDsForReloadAfterInsertingItemsAfterItemID:(id)a3 snapshot:(id)a4;
- (id)itemIDsInExpandedThread:(id)a3 snapshot:(id)a4;
- (id)popItemIDsNeedingReloadPostUpdate;
- (id)threadItemIDForItemInExpandedThread:(id)a3 snapshot:(id)a4;
- (int64_t)styleForMessageListItem:(id)a3;
- (void)addExpandingThreadWithItemID:(id)a3;
- (void)addItemIDsNeedingReloadPostUpdate:(id)a3;
- (void)collapseMessageListItem:(id)a3;
- (void)expandMessageListItem:(id)a3;
- (void)removeExpandingThreadWithItemID:(id)a3;
@end

@implementation MessageListThreadHelper

- (id)popItemIDsNeedingReloadPostUpdate
{
  os_unfair_lock_lock(&self->_itemIDsNeedingReloadLock);
  v3 = [(MessageListThreadHelper *)self itemIDsNeedingReloadPostUpdate];
  v4 = [v3 allObjects];

  v5 = [(MessageListThreadHelper *)self itemIDsNeedingReloadPostUpdate];
  [v5 removeAllObjects];

  os_unfair_lock_unlock(&self->_itemIDsNeedingReloadLock);

  return v4;
}

- (MessageListThreadHelper)initWithDelegate:(id)a3 isPrioritySection:(BOOL)a4
{
  v14.receiver = self;
  v14.super_class = MessageListThreadHelper;
  v5 = [(MessageListItemHelper *)&v14 initWithDelegate:a3];
  v6 = v5;
  if (v5)
  {
    v5->_isPrioritySection = a4;
    v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
    collapsingItemIDs = v6->_collapsingItemIDs;
    v6->_collapsingItemIDs = v7;

    v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
    expandingItemIDs = v6->_expandingItemIDs;
    v6->_expandingItemIDs = v9;

    v11 = objc_alloc_init(MEMORY[0x277CBEB58]);
    itemIDsNeedingReloadPostUpdate = v6->_itemIDsNeedingReloadPostUpdate;
    v6->_itemIDsNeedingReloadPostUpdate = v11;

    v6->_itemIDsNeedingReloadLock._os_unfair_lock_opaque = 0;
  }

  return v6;
}

- (int64_t)styleForMessageListItem:(id)a3
{
  v4 = a3;
  v5 = [v4 itemID];
  if (v5)
  {
    v6 = [(MessageListItemHelper *)self delegate];
    if ([v4 count] <= 1)
    {
      if ([v6 messageListItemHelper:self anyExpandedThreadContainsItemID:v5])
      {
        v7 = 2;
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)needsFlushSeparatorForItemID:(id)a3 snapshot:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [(MessageListItemHelper *)self delegate];
    if ([v8 messageListItemHelper:self anyExpandedThreadContainsItemID:v6])
    {
      v9 = [(MessageListItemHelper *)self _isNextItemLastExpandedItemID:v6 snapshot:v7];
    }

    else
    {
      v9 = [(MessageListThreadHelper *)self _isNextItemAnExpandedThreadItemID:v6 snapshot:v7];
    }

    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)collapseMessageListItem:(id)a3
{
  v4 = a3;
  v5 = [(MessageListThreadHelper *)self collapsingItemIDs];
  v6 = [v4 itemID];
  [v5 addObject:v6];

  v8.receiver = self;
  v8.super_class = MessageListThreadHelper;
  v7 = [(MessageListItemHelper *)&v8 delegate];
  [v7 messageListThreadHelper:self didCollapseMessageListItem:v4];
}

- (void)expandMessageListItem:(id)a3
{
  v6.receiver = self;
  v6.super_class = MessageListThreadHelper;
  v4 = a3;
  v5 = [(MessageListItemHelper *)&v6 delegate];
  [v5 messageListThreadHelper:self didExpandMessageListItem:{v4, v6.receiver, v6.super_class}];
}

- (id)collapsingOrExpandingItemIDs
{
  v8.receiver = self;
  v8.super_class = MessageListThreadHelper;
  v3 = [(MessageListItemHelper *)&v8 delegate];
  v4 = [(MessageListThreadHelper *)self collapsingItemIDs];
  v5 = [v3 expandedThreadItemIDs];
  v6 = [v4 setByAddingObjectsFromSet:v5];

  return v6;
}

- (id)itemIDsForReloadAfterInsertingItemsAfterItemID:(id)a3 snapshot:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MessageListThreadHelper *)self collapsingOrExpandingItemIDs];
  v9 = [v8 containsObject:v6];

  if (v9)
  {
    v10 = [(MessageListThreadHelper *)self collapsingItemIDs];
    [v10 removeObject:v6];

    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [v11 addObject:v6];
    v12 = [(MessageListItemHelper *)self itemIDBeforeItemID:v6 snapshot:v7];
    v13 = v12;
    if (v12 && ([v12 isEqual:v6] & 1) == 0)
    {
      [v11 addObject:v13];
    }
  }

  else
  {
    v11 = MEMORY[0x277CBEBF8];
  }

  return v11;
}

- (id)itemIDsForReloadAfterDeletingItemIDs:(id)a3 snapshot:(id)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(MessageListThreadHelper *)self collapsingOrExpandingItemIDs];
  if ([v8 count])
  {
    v9 = [(MessageListItemHelper *)self delegate];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __73__MessageListThreadHelper_itemIDsForReloadAfterDeletingItemIDs_snapshot___block_invoke;
    v33[3] = &unk_2781896E8;
    v10 = v9;
    v34 = v10;
    v35 = self;
    v11 = [v6 ef_filter:v33];
    if ([v11 count])
    {
      v26 = v10;
      v27 = v6;
      v28 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v25 = v11;
      v12 = v11;
      v13 = [v12 countByEnumeratingWithState:&v29 objects:v36 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v30;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v30 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v29 + 1) + 8 * i);
            v18 = [(MessageListItemHelper *)self itemIDBeforeItemID:v17 snapshot:v7, v25];
            v19 = v18;
            if (v18)
            {
              v20 = v18 == v17;
            }

            else
            {
              v20 = 1;
            }

            if (!v20)
            {
              while (![v8 containsObject:v19])
              {
                v21 = v19;
                v19 = [(MessageListItemHelper *)self itemIDBeforeItemID:v21 snapshot:v7];

                if (v19 == v21)
                {

                  goto LABEL_20;
                }

                if (!v19 || v19 == v17)
                {
                  goto LABEL_21;
                }
              }

              [v28 addObject:v19];
              v21 = [(MessageListItemHelper *)self itemIDBeforeItemID:v19 snapshot:v7];

              if (v21)
              {
                [v28 addObject:v21];
              }

LABEL_20:

              v19 = 0;
            }

LABEL_21:
          }

          v14 = [v12 countByEnumeratingWithState:&v29 objects:v36 count:16];
        }

        while (v14);
      }

      v22 = [(MessageListThreadHelper *)self collapsingItemIDs];
      [v22 minusSet:v28];

      v23 = [v28 allObjects];

      v10 = v26;
      v6 = v27;
      v11 = v25;
    }

    else
    {
      v23 = MEMORY[0x277CBEBF8];
    }
  }

  else
  {
    v23 = MEMORY[0x277CBEBF8];
  }

  return v23;
}

- (void)addItemIDsNeedingReloadPostUpdate:(id)a3
{
  v5 = a3;
  os_unfair_lock_lock(&self->_itemIDsNeedingReloadLock);
  v4 = [(MessageListThreadHelper *)self itemIDsNeedingReloadPostUpdate];
  [v4 addObjectsFromArray:v5];

  os_unfair_lock_unlock(&self->_itemIDsNeedingReloadLock);
}

- (id)itemIDsInExpandedThread:(id)a3 snapshot:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MessageListItemHelper *)self delegate];
  if ([v8 messageListItemHelper:self isItemIDExpandedThread:v6])
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    while (1)
    {
      v10 = [(MessageListItemHelper *)self itemIDAfterItemID:v6 snapshot:v7];
      if (!v10 || v10 == v6)
      {
        break;
      }

      v11 = v6;
      v6 = v10;

      if (![v8 messageListItemHelper:self anyExpandedThreadContainsItemID:v6])
      {
        v10 = v6;
        break;
      }

      [v9 addObject:v6];
    }
  }

  else
  {
    v9 = MEMORY[0x277CBEBF8];
  }

  return v9;
}

- (id)threadItemIDForItemInExpandedThread:(id)a3 snapshot:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MessageListItemHelper *)self delegate];
  if ([v8 messageListItemHelper:self isItemIDExpandedThread:v6])
  {
    v9 = 0;
  }

  else
  {
    v10 = [(MessageListItemHelper *)self itemIDBeforeItemID:v6 snapshot:v7];
    v9 = 0;
    if (!v10 || v10 == v6)
    {
      v11 = v6;
    }

    else
    {
      while (1)
      {
        v11 = v10;
        if ([v8 messageListItemHelper:self isItemIDExpandedThread:v10])
        {
          break;
        }

        v10 = [(MessageListItemHelper *)self itemIDBeforeItemID:v11 snapshot:v7];
        v9 = 0;
        if (v10)
        {
          v6 = v11;
          if (v10 != v11)
          {
            continue;
          }
        }

        goto LABEL_11;
      }

      v10 = v11;
      v11 = v6;
      v9 = v10;
    }

LABEL_11:

    v6 = v11;
  }

  return v9;
}

- (BOOL)_isNextItemAnExpandedItemID:(id)a3 snapshot:(id)a4
{
  v6 = a3;
  v7 = [(MessageListItemHelper *)self itemIDAfterItemID:v6 snapshot:a4];

  v8 = 0;
  if (v7 && v7 != v6)
  {
    v9 = [(MessageListItemHelper *)self delegate];
    v8 = [v9 messageListItemHelper:self isItemIDExpandedThread:v7];
  }

  return v8;
}

- (BOOL)_isNextItemAnExpandedThreadItemID:(id)a3 snapshot:(id)a4
{
  v6 = a3;
  v7 = [(MessageListItemHelper *)self itemIDAfterItemID:v6 snapshot:a4];

  v8 = 0;
  if (v7 && v7 != v6)
  {
    v9 = [(MessageListItemHelper *)self delegate];
    v8 = [v9 messageListItemHelper:self isItemIDExpandedThread:v7];
  }

  return v8;
}

- (void)addExpandingThreadWithItemID:(id)a3
{
  v4 = a3;
  v5 = [(MessageListThreadHelper *)self expandingItemIDs];
  [v5 addObject:v4];
}

- (void)removeExpandingThreadWithItemID:(id)a3
{
  v4 = a3;
  v5 = [(MessageListThreadHelper *)self expandingItemIDs];
  [v5 removeObject:v4];
}

- (BOOL)isThreadExpandingWithItemID:(id)a3
{
  v4 = a3;
  v5 = [(MessageListThreadHelper *)self expandingItemIDs];
  v6 = [v5 containsObject:v4];

  return v6;
}

@end