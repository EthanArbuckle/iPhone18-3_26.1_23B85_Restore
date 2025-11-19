@interface CKConversationListCollectionViewCompositionalLayout
- (id)layoutAttributesForElementsInRect:(CGRect)a3;
@end

@implementation CKConversationListCollectionViewCompositionalLayout

- (id)layoutAttributesForElementsInRect:(CGRect)a3
{
  v3 = self;
  v27 = *MEMORY[0x1E69E9840];
  v25.receiver = self;
  v25.super_class = CKConversationListCollectionViewCompositionalLayout;
  [(CKConversationListCollectionViewCompositionalLayout *)&v25 layoutAttributesForElementsInRect:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = v24 = 0u;
  v4 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v22;
    v19 = v3;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v22 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v21 + 1) + 8 * i);
        v9 = [(CKConversationListCollectionViewCompositionalLayout *)v3 collectionView];
        v10 = [v8 indexPath];
        v11 = [v9 cellForItemAtIndexPath:v10];

        if (v11)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v12 = [v11 configurationState];
            if (v12)
            {
              v13 = +[CKUIBehavior sharedBehaviors];
              v14 = v5;
              v15 = v6;
              v16 = [v13 suppressPinActivityForState:v12];

              v3 = v19;
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