@interface MessageListPositionHelper
- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)a3;
- (CGRect)_visibleRectInMessageList;
- (MessageListPositionHelper)initWithCollectionView:(id)a3 dataSource:(id)a4;
- (NSArray)actuallyVisibleItemIDs;
- (id)_firstVisibleIndexPathForCollectionView:(id)a3;
- (void)_calculateStartingPositionForCollectionView:(id)a3 dataSource:(id)a4;
- (void)recalculateFirstVisibleIndex;
- (void)setUserIsScrolling:(BOOL)a3;
@end

@implementation MessageListPositionHelper

uint64_t ___ef_log_MessageListPositionHelper_block_invoke()
{
  _ef_log_MessageListPositionHelper_log = os_log_create("com.apple.email", "MessageListPositionHelper");

  return MEMORY[0x2821F96F8]();
}

- (MessageListPositionHelper)initWithCollectionView:(id)a3 dataSource:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = MessageListPositionHelper;
  v9 = [(MessageListPositionHelper *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_collectionView, a3);
    objc_storeStrong(&v10->_dataSource, a4);
    [(MessageListPositionHelper *)v10 _calculateStartingPositionForCollectionView:v7 dataSource:v8];
  }

  return v10;
}

- (void)setUserIsScrolling:(BOOL)a3
{
  if (self->_userIsScrolling != a3)
  {
    self->_userIsScrolling = a3;
    if (!a3)
    {
      [(MessageListPositionHelper *)self recalculateFirstVisibleIndex];
    }
  }
}

- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v41 = *MEMORY[0x277D85DE8];
  if (![(MessageListPositionHelper *)self userIsScrolling])
  {
    v6 = [(MessageListPositionHelper *)self firstVisibleItemID];

    if (v6)
    {
      v7 = [(MessageListPositionHelper *)self dataSource];
      v8 = [(MessageListPositionHelper *)self firstVisibleItemID];
      v9 = [v7 indexPathForItemIdentifier:v8];

      if (!v9)
      {
        v12 = _ef_log_MessageListPositionHelper();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          LOWORD(v31) = 0;
          v13 = "Item no longer present in list. Not adjusting content offset.";
          v14 = v12;
          v15 = 2;
          goto LABEL_10;
        }

LABEL_19:

        goto LABEL_20;
      }

      v10 = [v9 item];
      v11 = [(MessageListPositionHelper *)self firstVisibleIndex];
      if (v10 == v11)
      {
        v12 = _ef_log_MessageListPositionHelper();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v31 = 134217984;
          v32 = v10;
          v13 = "First visible index (%ld) unchanged. Not adjusting content offset.";
          v14 = v12;
          v15 = 12;
LABEL_10:
          _os_log_impl(&dword_214A5E000, v14, OS_LOG_TYPE_INFO, v13, &v31, v15);
          goto LABEL_19;
        }

        goto LABEL_19;
      }

      v16 = v11;
      v17 = [(MessageListPositionHelper *)self collectionView];
      v12 = v17;
      if (v16 > 2)
      {
        v23 = [v17 cellForItemAtIndexPath:v9];
        [v23 frame];
        v25 = v24;

        [(MessageListPositionHelper *)self firstVisibleCellOrigin];
        v27 = v25 - v26;
        [(MessageListPositionHelper *)self startingContentOffset];
        y = v28 + v27;
        v19 = _ef_log_MessageListPositionHelper();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v31 = 134219010;
          v32 = v10;
          v33 = 2114;
          v34 = v9;
          v35 = 2048;
          v36 = v25;
          v37 = 2048;
          v38 = v27;
          v39 = 2048;
          v40 = y;
          v20 = "targetContentOffsetForProposedContentOffset - index:%ld indexPath:%{public}@ cellOrigin:%f cellDelta:%f offset:%f";
          v21 = v19;
          v22 = 52;
          goto LABEL_17;
        }
      }

      else
      {
        if (v10 <= v16)
        {
          goto LABEL_19;
        }

        [v17 adjustedContentInset];
        y = -v18;
        v19 = _ef_log_MessageListPositionHelper();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v31 = 134217984;
          v32 = v10;
          v20 = "Pinning to top - new first visible index %ld";
          v21 = v19;
          v22 = 12;
LABEL_17:
          _os_log_impl(&dword_214A5E000, v21, OS_LOG_TYPE_DEFAULT, v20, &v31, v22);
        }
      }

      x = 0.0;
      goto LABEL_19;
    }

    [(MessageListPositionHelper *)self recalculateFirstVisibleIndex];
  }

LABEL_20:
  v29 = x;
  v30 = y;
  result.y = v30;
  result.x = v29;
  return result;
}

- (void)recalculateFirstVisibleIndex
{
  v4 = [(MessageListPositionHelper *)self collectionView];
  v3 = [(MessageListPositionHelper *)self dataSource];
  [(MessageListPositionHelper *)self _calculateStartingPositionForCollectionView:v4 dataSource:v3];
}

- (NSArray)actuallyVisibleItemIDs
{
  [(MessageListPositionHelper *)self _visibleRectInMessageList];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(MessageListPositionHelper *)self collectionView];
  v12 = [(MessageListPositionHelper *)self _sortedIndexPathsForVisibleItemsInCollectionView:v11];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __51__MessageListPositionHelper_actuallyVisibleItemIDs__block_invoke;
  v15[3] = &unk_278189238;
  v15[4] = self;
  v15[5] = v4;
  v15[6] = v6;
  v15[7] = v8;
  v15[8] = v10;
  v13 = [v12 ef_compactMap:v15];

  return v13;
}

id __51__MessageListPositionHelper_actuallyVisibleItemIDs__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) collectionView];
  v5 = [v4 cellForItemAtIndexPath:v3];

  [v5 frame];
  MidX = CGRectGetMidX(v12);
  [v5 frame];
  v11.y = CGRectGetMidY(v13);
  v11.x = MidX;
  if (CGRectContainsPoint(*(a1 + 40), v11))
  {
    v7 = [*(a1 + 32) dataSource];
    v8 = [v7 itemIdentifierForIndexPath:v3];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (CGRect)_visibleRectInMessageList
{
  v3 = [(MessageListPositionHelper *)self collectionView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [(MessageListPositionHelper *)self collectionView];
  [v12 contentOffset];
  v14 = v13;

  v15 = [(MessageListPositionHelper *)self collectionView];
  [v15 adjustedContentInset];
  v17 = v16;
  v19 = v18;

  v20 = v14 + v17;
  v26.origin.x = v5;
  v26.origin.y = v7;
  v26.size.width = v9;
  v26.size.height = v11;
  v21 = CGRectGetHeight(v26) - v17 - v19;
  v27.origin.x = v5;
  v27.origin.y = v7;
  v27.size.width = v9;
  v27.size.height = v11;
  Width = CGRectGetWidth(v27);
  v23 = 0.0;
  v24 = v20;
  v25 = v21;
  result.size.height = v25;
  result.size.width = Width;
  result.origin.y = v24;
  result.origin.x = v23;
  return result;
}

- (id)_firstVisibleIndexPathForCollectionView:(id)a3
{
  v3 = [(MessageListPositionHelper *)self _sortedIndexPathsForVisibleItemsInCollectionView:a3];
  v4 = [v3 firstObject];

  return v4;
}

- (void)_calculateStartingPositionForCollectionView:(id)a3 dataSource:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(MessageListPositionHelper *)self _firstVisibleIndexPathForCollectionView:v6];
  if (v8)
  {
    v9 = [v7 itemIdentifierForIndexPath:v8];
    [(MessageListPositionHelper *)self setFirstVisibleItemID:v9];

    -[MessageListPositionHelper setFirstVisibleIndex:](self, "setFirstVisibleIndex:", [v8 item]);
    [v6 contentOffset];
    [(MessageListPositionHelper *)self setStartingContentOffset:v10];
    v11 = [v6 cellForItemAtIndexPath:v8];
    [v11 frame];
    [(MessageListPositionHelper *)self setFirstVisibleCellOrigin:v12];
  }

  v13 = _ef_log_MessageListPositionHelper();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = [(MessageListPositionHelper *)self firstVisibleItemID];
    v15 = 138543874;
    v16 = v8;
    v17 = 2114;
    v18 = v14;
    v19 = 2048;
    v20 = [(MessageListPositionHelper *)self firstVisibleIndex];
    _os_log_impl(&dword_214A5E000, v13, OS_LOG_TYPE_INFO, "Updating starting position for first visible indexpath:%{public}@ itemID:%{public}@ index:%ld", &v15, 0x20u);
  }
}

@end