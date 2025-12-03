@interface MessageListThreadHelper
- (BOOL)_isNextItemAnExpandedItemID:(id)d snapshot:(id)snapshot;
- (BOOL)_isNextItemAnExpandedThreadItemID:(id)d snapshot:(id)snapshot;
- (BOOL)isThreadExpandingWithItemID:(id)d;
- (BOOL)needsFlushSeparatorForItemID:(id)d snapshot:(id)snapshot;
- (MessageListThreadHelper)initWithDelegate:(id)delegate isPrioritySection:(BOOL)section;
- (id)collapsingOrExpandingItemIDs;
- (id)itemIDsForReloadAfterDeletingItemIDs:(id)ds snapshot:(id)snapshot;
- (id)itemIDsForReloadAfterInsertingItemsAfterItemID:(id)d snapshot:(id)snapshot;
- (id)itemIDsInExpandedThread:(id)thread snapshot:(id)snapshot;
- (id)popItemIDsNeedingReloadPostUpdate;
- (id)threadItemIDForItemInExpandedThread:(id)thread snapshot:(id)snapshot;
- (int64_t)styleForMessageListItem:(id)item;
- (void)addExpandingThreadWithItemID:(id)d;
- (void)addItemIDsNeedingReloadPostUpdate:(id)update;
- (void)collapseMessageListItem:(id)item;
- (void)expandMessageListItem:(id)item;
- (void)removeExpandingThreadWithItemID:(id)d;
@end

@implementation MessageListThreadHelper

- (id)popItemIDsNeedingReloadPostUpdate
{
  os_unfair_lock_lock(&self->_itemIDsNeedingReloadLock);
  itemIDsNeedingReloadPostUpdate = [(MessageListThreadHelper *)self itemIDsNeedingReloadPostUpdate];
  allObjects = [itemIDsNeedingReloadPostUpdate allObjects];

  itemIDsNeedingReloadPostUpdate2 = [(MessageListThreadHelper *)self itemIDsNeedingReloadPostUpdate];
  [itemIDsNeedingReloadPostUpdate2 removeAllObjects];

  os_unfair_lock_unlock(&self->_itemIDsNeedingReloadLock);

  return allObjects;
}

- (MessageListThreadHelper)initWithDelegate:(id)delegate isPrioritySection:(BOOL)section
{
  v14.receiver = self;
  v14.super_class = MessageListThreadHelper;
  v5 = [(MessageListItemHelper *)&v14 initWithDelegate:delegate];
  v6 = v5;
  if (v5)
  {
    v5->_isPrioritySection = section;
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

- (int64_t)styleForMessageListItem:(id)item
{
  itemCopy = item;
  itemID = [itemCopy itemID];
  if (itemID)
  {
    delegate = [(MessageListItemHelper *)self delegate];
    if ([itemCopy count] <= 1)
    {
      if ([delegate messageListItemHelper:self anyExpandedThreadContainsItemID:itemID])
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

- (BOOL)needsFlushSeparatorForItemID:(id)d snapshot:(id)snapshot
{
  dCopy = d;
  snapshotCopy = snapshot;
  if (dCopy)
  {
    delegate = [(MessageListItemHelper *)self delegate];
    if ([delegate messageListItemHelper:self anyExpandedThreadContainsItemID:dCopy])
    {
      v9 = [(MessageListItemHelper *)self _isNextItemLastExpandedItemID:dCopy snapshot:snapshotCopy];
    }

    else
    {
      v9 = [(MessageListThreadHelper *)self _isNextItemAnExpandedThreadItemID:dCopy snapshot:snapshotCopy];
    }

    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)collapseMessageListItem:(id)item
{
  itemCopy = item;
  collapsingItemIDs = [(MessageListThreadHelper *)self collapsingItemIDs];
  itemID = [itemCopy itemID];
  [collapsingItemIDs addObject:itemID];

  v8.receiver = self;
  v8.super_class = MessageListThreadHelper;
  delegate = [(MessageListItemHelper *)&v8 delegate];
  [delegate messageListThreadHelper:self didCollapseMessageListItem:itemCopy];
}

- (void)expandMessageListItem:(id)item
{
  v6.receiver = self;
  v6.super_class = MessageListThreadHelper;
  itemCopy = item;
  delegate = [(MessageListItemHelper *)&v6 delegate];
  [delegate messageListThreadHelper:self didExpandMessageListItem:{itemCopy, v6.receiver, v6.super_class}];
}

- (id)collapsingOrExpandingItemIDs
{
  v8.receiver = self;
  v8.super_class = MessageListThreadHelper;
  delegate = [(MessageListItemHelper *)&v8 delegate];
  collapsingItemIDs = [(MessageListThreadHelper *)self collapsingItemIDs];
  expandedThreadItemIDs = [delegate expandedThreadItemIDs];
  v6 = [collapsingItemIDs setByAddingObjectsFromSet:expandedThreadItemIDs];

  return v6;
}

- (id)itemIDsForReloadAfterInsertingItemsAfterItemID:(id)d snapshot:(id)snapshot
{
  dCopy = d;
  snapshotCopy = snapshot;
  collapsingOrExpandingItemIDs = [(MessageListThreadHelper *)self collapsingOrExpandingItemIDs];
  v9 = [collapsingOrExpandingItemIDs containsObject:dCopy];

  if (v9)
  {
    collapsingItemIDs = [(MessageListThreadHelper *)self collapsingItemIDs];
    [collapsingItemIDs removeObject:dCopy];

    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [v11 addObject:dCopy];
    v12 = [(MessageListItemHelper *)self itemIDBeforeItemID:dCopy snapshot:snapshotCopy];
    v13 = v12;
    if (v12 && ([v12 isEqual:dCopy] & 1) == 0)
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

- (id)itemIDsForReloadAfterDeletingItemIDs:(id)ds snapshot:(id)snapshot
{
  v37 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  snapshotCopy = snapshot;
  collapsingOrExpandingItemIDs = [(MessageListThreadHelper *)self collapsingOrExpandingItemIDs];
  if ([collapsingOrExpandingItemIDs count])
  {
    delegate = [(MessageListItemHelper *)self delegate];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __73__MessageListThreadHelper_itemIDsForReloadAfterDeletingItemIDs_snapshot___block_invoke;
    v33[3] = &unk_2781896E8;
    v10 = delegate;
    v34 = v10;
    selfCopy = self;
    v11 = [dsCopy ef_filter:v33];
    if ([v11 count])
    {
      v26 = v10;
      v27 = dsCopy;
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
            v18 = [(MessageListItemHelper *)self itemIDBeforeItemID:v17 snapshot:snapshotCopy, v25];
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
              while (![collapsingOrExpandingItemIDs containsObject:v19])
              {
                v21 = v19;
                v19 = [(MessageListItemHelper *)self itemIDBeforeItemID:v21 snapshot:snapshotCopy];

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
              v21 = [(MessageListItemHelper *)self itemIDBeforeItemID:v19 snapshot:snapshotCopy];

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

      collapsingItemIDs = [(MessageListThreadHelper *)self collapsingItemIDs];
      [collapsingItemIDs minusSet:v28];

      allObjects = [v28 allObjects];

      v10 = v26;
      dsCopy = v27;
      v11 = v25;
    }

    else
    {
      allObjects = MEMORY[0x277CBEBF8];
    }
  }

  else
  {
    allObjects = MEMORY[0x277CBEBF8];
  }

  return allObjects;
}

- (void)addItemIDsNeedingReloadPostUpdate:(id)update
{
  updateCopy = update;
  os_unfair_lock_lock(&self->_itemIDsNeedingReloadLock);
  itemIDsNeedingReloadPostUpdate = [(MessageListThreadHelper *)self itemIDsNeedingReloadPostUpdate];
  [itemIDsNeedingReloadPostUpdate addObjectsFromArray:updateCopy];

  os_unfair_lock_unlock(&self->_itemIDsNeedingReloadLock);
}

- (id)itemIDsInExpandedThread:(id)thread snapshot:(id)snapshot
{
  threadCopy = thread;
  snapshotCopy = snapshot;
  delegate = [(MessageListItemHelper *)self delegate];
  if ([delegate messageListItemHelper:self isItemIDExpandedThread:threadCopy])
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    while (1)
    {
      v10 = [(MessageListItemHelper *)self itemIDAfterItemID:threadCopy snapshot:snapshotCopy];
      if (!v10 || v10 == threadCopy)
      {
        break;
      }

      v11 = threadCopy;
      threadCopy = v10;

      if (![delegate messageListItemHelper:self anyExpandedThreadContainsItemID:threadCopy])
      {
        v10 = threadCopy;
        break;
      }

      [v9 addObject:threadCopy];
    }
  }

  else
  {
    v9 = MEMORY[0x277CBEBF8];
  }

  return v9;
}

- (id)threadItemIDForItemInExpandedThread:(id)thread snapshot:(id)snapshot
{
  threadCopy = thread;
  snapshotCopy = snapshot;
  delegate = [(MessageListItemHelper *)self delegate];
  if ([delegate messageListItemHelper:self isItemIDExpandedThread:threadCopy])
  {
    v9 = 0;
  }

  else
  {
    v10 = [(MessageListItemHelper *)self itemIDBeforeItemID:threadCopy snapshot:snapshotCopy];
    v9 = 0;
    if (!v10 || v10 == threadCopy)
    {
      v11 = threadCopy;
    }

    else
    {
      while (1)
      {
        v11 = v10;
        if ([delegate messageListItemHelper:self isItemIDExpandedThread:v10])
        {
          break;
        }

        v10 = [(MessageListItemHelper *)self itemIDBeforeItemID:v11 snapshot:snapshotCopy];
        v9 = 0;
        if (v10)
        {
          threadCopy = v11;
          if (v10 != v11)
          {
            continue;
          }
        }

        goto LABEL_11;
      }

      v10 = v11;
      v11 = threadCopy;
      v9 = v10;
    }

LABEL_11:

    threadCopy = v11;
  }

  return v9;
}

- (BOOL)_isNextItemAnExpandedItemID:(id)d snapshot:(id)snapshot
{
  dCopy = d;
  v7 = [(MessageListItemHelper *)self itemIDAfterItemID:dCopy snapshot:snapshot];

  v8 = 0;
  if (v7 && v7 != dCopy)
  {
    delegate = [(MessageListItemHelper *)self delegate];
    v8 = [delegate messageListItemHelper:self isItemIDExpandedThread:v7];
  }

  return v8;
}

- (BOOL)_isNextItemAnExpandedThreadItemID:(id)d snapshot:(id)snapshot
{
  dCopy = d;
  v7 = [(MessageListItemHelper *)self itemIDAfterItemID:dCopy snapshot:snapshot];

  v8 = 0;
  if (v7 && v7 != dCopy)
  {
    delegate = [(MessageListItemHelper *)self delegate];
    v8 = [delegate messageListItemHelper:self isItemIDExpandedThread:v7];
  }

  return v8;
}

- (void)addExpandingThreadWithItemID:(id)d
{
  dCopy = d;
  expandingItemIDs = [(MessageListThreadHelper *)self expandingItemIDs];
  [expandingItemIDs addObject:dCopy];
}

- (void)removeExpandingThreadWithItemID:(id)d
{
  dCopy = d;
  expandingItemIDs = [(MessageListThreadHelper *)self expandingItemIDs];
  [expandingItemIDs removeObject:dCopy];
}

- (BOOL)isThreadExpandingWithItemID:(id)d
{
  dCopy = d;
  expandingItemIDs = [(MessageListThreadHelper *)self expandingItemIDs];
  v6 = [expandingItemIDs containsObject:dCopy];

  return v6;
}

@end