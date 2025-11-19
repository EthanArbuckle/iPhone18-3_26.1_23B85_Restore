@interface CKConversationListCollectionView
- (id)_indexPathForInsertionAtPoint:(CGPoint)a3 sourceIndexPath:(id)a4;
- (void)setContentInset:(UIEdgeInsets)a3;
- (void)setScrollIndicatorInsets:(UIEdgeInsets)a3;
@end

@implementation CKConversationListCollectionView

- (void)setContentInset:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  [(CKConversationListCollectionView *)self contentInset];
  if (v11 != left || v8 != top || v10 != right || v9 != bottom)
  {
    v15.receiver = self;
    v15.super_class = CKConversationListCollectionView;
    [(CKConversationListCollectionView *)&v15 setContentInset:top, left, bottom, right];
  }
}

- (void)setScrollIndicatorInsets:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  [(CKConversationListCollectionView *)self scrollIndicatorInsets];
  if (v11 != left || v8 != top || v10 != right || v9 != bottom)
  {
    v15.receiver = self;
    v15.super_class = CKConversationListCollectionView;
    [(CKConversationListCollectionView *)&v15 setScrollIndicatorInsets:top, left, bottom, right];
  }
}

- (id)_indexPathForInsertionAtPoint:(CGPoint)a3 sourceIndexPath:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  if (IMGetCachedDomainBoolForKeyWithDefaultValue())
  {
    v8 = [(CKConversationListCollectionView *)self collectionViewLayout];
    v9 = [v8 _layoutAttributesForItemNearestPosition:x maximumDistance:{y, 1000.0}];

    v10 = [v9 indexPath];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = CKConversationListCollectionView;
    v10 = [(CKConversationListCollectionView *)&v12 _indexPathForInsertionAtPoint:v7 sourceIndexPath:x, y];
  }

  return v10;
}

@end