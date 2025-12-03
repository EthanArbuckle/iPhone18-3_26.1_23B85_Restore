@interface CKConversationListCollectionViewCompositionalLayout
- (id)layoutAttributesForElementsInRect:(CGRect)rect;
@end

@implementation CKConversationListCollectionViewCompositionalLayout

- (id)layoutAttributesForElementsInRect:(CGRect)rect
{
  selfCopy = self;
  v27 = *MEMORY[0x1E69E9840];
  v25.receiver = self;
  v25.super_class = CKConversationListCollectionViewCompositionalLayout;
  [(CKConversationListCollectionViewCompositionalLayout *)&v25 layoutAttributesForElementsInRect:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = v24 = 0u;
  v4 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v22;
    v19 = selfCopy;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v22 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v21 + 1) + 8 * i);
        collectionView = [(CKConversationListCollectionViewCompositionalLayout *)selfCopy collectionView];
        indexPath = [v8 indexPath];
        v11 = [collectionView cellForItemAtIndexPath:indexPath];

        if (v11)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            configurationState = [v11 configurationState];
            if (configurationState)
            {
              v13 = +[CKUIBehavior sharedBehaviors];
              v14 = v5;
              v15 = v6;
              v16 = [v13 suppressPinActivityForState:configurationState];

              selfCopy = v19;
              v17 = v16 ^ 1u;
              v6 = v15;
              v5 = v14;
              [v8 setZIndex:v17];
            }
          }
        }
      }

      v5 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v5);
  }

  return obj;
}

@end