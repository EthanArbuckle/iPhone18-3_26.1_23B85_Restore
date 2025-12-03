@interface CKConversationListCollectionView
- (id)_indexPathForInsertionAtPoint:(CGPoint)point sourceIndexPath:(id)path;
- (void)setContentInset:(UIEdgeInsets)inset;
- (void)setScrollIndicatorInsets:(UIEdgeInsets)insets;
@end

@implementation CKConversationListCollectionView

- (void)setContentInset:(UIEdgeInsets)inset
{
  right = inset.right;
  bottom = inset.bottom;
  left = inset.left;
  top = inset.top;
  [(CKConversationListCollectionView *)self contentInset];
  if (v11 != left || v8 != top || v10 != right || v9 != bottom)
  {
    v15.receiver = self;
    v15.super_class = CKConversationListCollectionView;
    [(CKConversationListCollectionView *)&v15 setContentInset:top, left, bottom, right];
  }
}

- (void)setScrollIndicatorInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  [(CKConversationListCollectionView *)self scrollIndicatorInsets];
  if (v11 != left || v8 != top || v10 != right || v9 != bottom)
  {
    v15.receiver = self;
    v15.super_class = CKConversationListCollectionView;
    [(CKConversationListCollectionView *)&v15 setScrollIndicatorInsets:top, left, bottom, right];
  }
}

- (id)_indexPathForInsertionAtPoint:(CGPoint)point sourceIndexPath:(id)path
{
  y = point.y;
  x = point.x;
  pathCopy = path;
  if (IMGetCachedDomainBoolForKeyWithDefaultValue())
  {
    collectionViewLayout = [(CKConversationListCollectionView *)self collectionViewLayout];
    v9 = [collectionViewLayout _layoutAttributesForItemNearestPosition:x maximumDistance:{y, 1000.0}];

    indexPath = [v9 indexPath];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = CKConversationListCollectionView;
    indexPath = [(CKConversationListCollectionView *)&v12 _indexPathForInsertionAtPoint:pathCopy sourceIndexPath:x, y];
  }

  return indexPath;
}

@end