@interface GKLeaderboardScoreFlowLayout
- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)a3;
- (CGSize)contentSizeBeforeInsertingItemsAbove;
- (void)prepareForCollectionViewUpdates:(id)a3;
@end

@implementation GKLeaderboardScoreFlowLayout

- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(GKLeaderboardScoreFlowLayout *)self heightOfInsertedItems];
  v7 = y + v6;
  [(GKLeaderboardScoreFlowLayout *)self setHeightOfInsertedItems:0.0];
  v8 = x;
  v9 = v7;
  result.y = v9;
  result.x = v8;
  return result;
}

- (void)prepareForCollectionViewUpdates:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v19.receiver = self;
  v19.super_class = GKLeaderboardScoreFlowLayout;
  [(GKLeaderboardScoreFlowLayout *)&v19 prepareForCollectionViewUpdates:v4];
  if ([(GKLeaderboardScoreFlowLayout *)self isInsertingItemsAbove])
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      v9 = 0.0;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          if (![v11 updateAction])
          {
            v12 = [v11 indexPathAfterUpdate];
            if (v12)
            {
              v13 = [(UICollectionViewFlowLayout *)self layoutAttributesForItemAtIndexPath:v12];
              [v13 frame];
              v9 = v9 + v14;
            }
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v15 objects:v20 count:16];
      }

      while (v7);
    }

    else
    {
      v9 = 0.0;
    }

    [(GKLeaderboardScoreFlowLayout *)self setHeightOfInsertedItems:v9];
  }
}

- (CGSize)contentSizeBeforeInsertingItemsAbove
{
  width = self->_contentSizeBeforeInsertingItemsAbove.width;
  height = self->_contentSizeBeforeInsertingItemsAbove.height;
  result.height = height;
  result.width = width;
  return result;
}

@end