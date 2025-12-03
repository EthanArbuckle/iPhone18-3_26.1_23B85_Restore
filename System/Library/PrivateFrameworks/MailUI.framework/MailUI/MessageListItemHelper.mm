@interface MessageListItemHelper
- (BOOL)_isItemAfterItemIDSelected:(id)selected snapshot:(id)snapshot;
- (BOOL)_isItemBeforeItemIDSelected:(id)selected snapshot:(id)snapshot;
- (BOOL)_isItemIDSelected:(id)selected;
- (BOOL)_isNextItemLastExpandedItemID:(id)d snapshot:(id)snapshot;
- (MessageListItemHelper)initWithDelegate:(id)delegate;
- (MessageListItemHelperDelegate)delegate;
- (id)itemIDAfterItemID:(id)d snapshot:(id)snapshot;
- (id)itemIDBeforeItemID:(id)d snapshot:(id)snapshot;
- (int64_t)cellGroupingForItemID:(id)d snapshot:(id)snapshot isThreaded:(BOOL)threaded;
@end

@implementation MessageListItemHelper

- (MessageListItemHelperDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (MessageListItemHelper)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8.receiver = self;
  v8.super_class = MessageListItemHelper;
  v5 = [(MessageListItemHelper *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
  }

  return v6;
}

- (int64_t)cellGroupingForItemID:(id)d snapshot:(id)snapshot isThreaded:(BOOL)threaded
{
  threadedCopy = threaded;
  dCopy = d;
  snapshotCopy = snapshot;
  if (dCopy)
  {
    delegate = [(MessageListItemHelper *)self delegate];
    v11 = delegate;
    if (threadedCopy)
    {
      v12 = [delegate messageListItemHelper:self isItemIDExpandedThread:dCopy] ^ 1;
      threadedCopy = [v11 messageListItemHelper:self anyExpandedThreadContainsItemID:dCopy];
      v13 = [(MessageListItemHelper *)self _isNextItemLastExpandedItemID:dCopy snapshot:snapshotCopy]& threadedCopy ^ 1;
    }

    else
    {
      v12 = 1;
      LOBYTE(v13) = 1;
    }

    v15 = [(MessageListItemHelper *)self _isItemBeforeItemIDSelected:dCopy snapshot:snapshotCopy];
    v16 = [(MessageListItemHelper *)self _isItemAfterItemIDSelected:dCopy snapshot:snapshotCopy];
    v17 = [(MessageListItemHelper *)self _isItemIDSelected:dCopy];
    if ((v12 & 1) != 0 || v15 && v17)
    {
      v18 = !v17;
      v19 = !v16;
      v20 = v15 || !v17 || !v16;
      v21 = v20 | threadedCopy;
      if (threadedCopy)
      {
        v22 = v13;
      }

      else
      {
        v22 = ~v20;
      }

      if (v21)
      {
        v14 = 3;
      }

      else
      {
        v14 = 2;
      }

      if ((v22 & 1) == 0)
      {
        v14 = 3;
        if ((v12 | !v15))
        {
          v23 = v13 | v19 | v18;
          v24 = v18 || !v15;
          v25 = v24 || v19;
          v26 = v24 || v16;
          v27 = !v18 && !v15 && !v16;
          if (((v13 | (v16 && v17)) & 1) == 0)
          {
            v27 = 4;
          }

          if (!v26)
          {
            v27 = 4;
          }

          if (!v25)
          {
            v27 = 3;
          }

          if (v23)
          {
            v14 = v27;
          }
        }
      }
    }

    else
    {
      v14 = 2;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)_isItemBeforeItemIDSelected:(id)selected snapshot:(id)snapshot
{
  selectedCopy = selected;
  snapshotCopy = snapshot;
  v8 = [(MessageListItemHelper *)self itemIDBeforeItemID:selectedCopy snapshot:snapshotCopy];
  v13 = v8 && ([v8 isEqual:selectedCopy] & 1) == 0 && (objc_msgSend(snapshotCopy, "itemIdentifiers"), v10 = v9 = v8;

  return v13;
}

- (BOOL)_isItemAfterItemIDSelected:(id)selected snapshot:(id)snapshot
{
  selectedCopy = selected;
  snapshotCopy = snapshot;
  v8 = [(MessageListItemHelper *)self itemIDAfterItemID:selectedCopy snapshot:snapshotCopy];
  v13 = v8 && ([v8 isEqual:selectedCopy] & 1) == 0 && (objc_msgSend(snapshotCopy, "itemIdentifiers"), v10 = v9 = v8;

  return v13;
}

- (BOOL)_isItemIDSelected:(id)selected
{
  selectedCopy = selected;
  delegate = [(MessageListItemHelper *)self delegate];
  v6 = delegate;
  if (delegate)
  {
    v7 = [delegate messageListItemHelper:self isItemIDSelected:selectedCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)itemIDAfterItemID:(id)d snapshot:(id)snapshot
{
  dCopy = d;
  snapshotCopy = snapshot;
  v7 = [snapshotCopy indexOfItemIdentifier:dCopy];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else
  {
    v9 = v7 + 1;
    itemIdentifiers = [snapshotCopy itemIdentifiers];
    if (v9 >= [itemIdentifiers count])
    {
      v11 = dCopy;
    }

    else
    {
      v11 = [itemIdentifiers objectAtIndexedSubscript:v9];
    }

    v8 = v11;
  }

  return v8;
}

- (id)itemIDBeforeItemID:(id)d snapshot:(id)snapshot
{
  dCopy = d;
  snapshotCopy = snapshot;
  v7 = [snapshotCopy indexOfItemIdentifier:dCopy];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else if (v7)
  {
    v9 = v7 - 1;
    itemIdentifiers = [snapshotCopy itemIdentifiers];
    v11 = [itemIdentifiers objectAtIndexedSubscript:v9];

    v12 = [snapshotCopy sectionIdentifierForSectionContainingItemIdentifier:dCopy];
    v13 = [snapshotCopy sectionIdentifierForSectionContainingItemIdentifier:v11];
    if (EFObjectsAreEqual())
    {
      v14 = v11;
    }

    else
    {
      v14 = dCopy;
    }

    v8 = v14;
  }

  else
  {
    v8 = dCopy;
  }

  return v8;
}

- (BOOL)_isNextItemLastExpandedItemID:(id)d snapshot:(id)snapshot
{
  dCopy = d;
  v7 = [(MessageListItemHelper *)self itemIDAfterItemID:dCopy snapshot:snapshot];
  v8 = v7;
  if (v7)
  {
    if (v7 == dCopy)
    {
      v11 = 1;
    }

    else
    {
      delegate = [(MessageListItemHelper *)self delegate];
      v10 = [delegate messageListItemHelper:self anyExpandedThreadContainsItemID:v8];

      v11 = v10 ^ 1;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end