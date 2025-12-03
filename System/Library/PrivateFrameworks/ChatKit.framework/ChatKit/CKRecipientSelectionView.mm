@interface CKRecipientSelectionView
- (id)hitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation CKRecipientSelectionView

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v7.receiver = self;
  v7.super_class = CKRecipientSelectionView;
  v5 = [(CKRecipientSelectionView *)&v7 hitTest:event withEvent:test.x, test.y];
  if (v5 == self)
  {

    v5 = 0;
  }

  return v5;
}

@end