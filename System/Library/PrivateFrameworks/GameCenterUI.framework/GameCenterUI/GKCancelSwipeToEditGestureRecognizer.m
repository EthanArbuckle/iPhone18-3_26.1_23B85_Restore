@interface GKCancelSwipeToEditGestureRecognizer
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
@end

@implementation GKCancelSwipeToEditGestureRecognizer

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        if ([(GKCollectionViewCell *)self->_currentEditingCell touchWithinEditActions:*(*(&v14 + 1) + 8 * i)])
        {
          [(GKCancelSwipeToEditGestureRecognizer *)self setState:5];
          goto LABEL_11;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v13.receiver = self;
  v13.super_class = GKCancelSwipeToEditGestureRecognizer;
  [(GKCancelSwipeToEditGestureRecognizer *)&v13 touchesEnded:v8 withEvent:v7];
}

@end