@interface CKInteractiveBalloonImageView
- (id)hitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation CKInteractiveBalloonImageView

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v7.receiver = self;
  v7.super_class = CKInteractiveBalloonImageView;
  v5 = [(CKInteractiveBalloonImageView *)&v7 hitTest:event withEvent:test.x, test.y];
  if (v5 == self)
  {

    v5 = 0;
  }

  return v5;
}

@end