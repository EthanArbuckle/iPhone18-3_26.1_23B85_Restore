@interface MessageListItemHelper
- (BOOL)_isItemAfterItemIDSelected:(id)a3 snapshot:(id)a4;
- (BOOL)_isItemBeforeItemIDSelected:(id)a3 snapshot:(id)a4;
- (BOOL)_isItemIDSelected:(id)a3;
- (BOOL)_isNextItemLastExpandedItemID:(id)a3 snapshot:(id)a4;
- (MessageListItemHelper)initWithDelegate:(id)a3;
- (MessageListItemHelperDelegate)delegate;
- (id)itemIDAfterItemID:(id)a3 snapshot:(id)a4;
- (id)itemIDBeforeItemID:(id)a3 snapshot:(id)a4;
- (int64_t)cellGroupingForItemID:(id)a3 snapshot:(id)a4 isThreaded:(BOOL)a5;
@end

@implementation MessageListItemHelper

- (MessageListItemHelperDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (MessageListItemHelper)initWithDelegate:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = MessageListItemHelper;
  v5 = [(MessageListItemHelper *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
  }

  return v6;
}

- (int64_t)cellGroupingForItemID:(id)a3 snapshot:(id)a4 isThreaded:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  if (v8)
  {
    v10 = [(MessageListItemHelper *)self delegate];
    v11 = v10;
    if (v5)
    {
      v12 = [v10 messageListItemHelper:self isItemIDExpandedThread:v8] ^ 1;
      v5 = [v11 messageListItemHelper:self anyExpandedThreadContainsItemID:v8];
      v13 = [(MessageListItemHelper *)self _isNextItemLastExpandedItemID:v8 snapshot:v9]& v5 ^ 1;
    }

    else
    {
      v12 = 1;
      LOBYTE(v13) = 1;
    }

    v15 = [(MessageListItemHelper *)self _isItemBeforeItemIDSelected:v8 snapshot:v9];
    v16 = [(MessageListItemHelper *)self _isItemAfterItemIDSelected:v8 snapshot:v9];
    v17 = [(MessageListItemHelper *)self _isItemIDSelected:v8];
    if ((v12 & 1) != 0 || v15 && v17)
    {
      v18 = !v17;
      v19 = !v16;
      v20 = v15 || !v17 || !v16;
      v21 = v20 | v5;
      if (v5)
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

- (BOOL)_isItemBeforeItemIDSelected:(id)a3 snapshot:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MessageListItemHelper *)self itemIDBeforeItemID:v6 snapshot:v7];
  v13 = v8 && ([v8 isEqual:v6] & 1) == 0 && (objc_msgSend(v7, "itemIdentifiers"), v10 = v9 = v8;

  return v13;
}

- (BOOL)_isItemAfterItemIDSelected:(id)a3 snapshot:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MessageListItemHelper *)self itemIDAfterItemID:v6 snapshot:v7];
  v13 = v8 && ([v8 isEqual:v6] & 1) == 0 && (objc_msgSend(v7, "itemIdentifiers"), v10 = v9 = v8;

  return v13;
}

- (BOOL)_isItemIDSelected:(id)a3
{
  v4 = a3;
  v5 = [(MessageListItemHelper *)self delegate];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 messageListItemHelper:self isItemIDSelected:v4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)itemIDAfterItemID:(id)a3 snapshot:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 indexOfItemIdentifier:v5];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else
  {
    v9 = v7 + 1;
    v10 = [v6 itemIdentifiers];
    if (v9 >= [v10 count])
    {
      v11 = v5;
    }

    else
    {
      v11 = [v10 objectAtIndexedSubscript:v9];
    }

    v8 = v11;
  }

  return v8;
}

- (id)itemIDBeforeItemID:(id)a3 snapshot:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 indexOfItemIdentifier:v5];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else if (v7)
  {
    v9 = v7 - 1;
    v10 = [v6 itemIdentifiers];
    v11 = [v10 objectAtIndexedSubscript:v9];

    v12 = [v6 sectionIdentifierForSectionContainingItemIdentifier:v5];
    v13 = [v6 sectionIdentifierForSectionContainingItemIdentifier:v11];
    if (EFObjectsAreEqual())
    {
      v14 = v11;
    }

    else
    {
      v14 = v5;
    }

    v8 = v14;
  }

  else
  {
    v8 = v5;
  }

  return v8;
}

- (BOOL)_isNextItemLastExpandedItemID:(id)a3 snapshot:(id)a4
{
  v6 = a3;
  v7 = [(MessageListItemHelper *)self itemIDAfterItemID:v6 snapshot:a4];
  v8 = v7;
  if (v7)
  {
    if (v7 == v6)
    {
      v11 = 1;
    }

    else
    {
      v9 = [(MessageListItemHelper *)self delegate];
      v10 = [v9 messageListItemHelper:self anyExpandedThreadContainsItemID:v8];

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