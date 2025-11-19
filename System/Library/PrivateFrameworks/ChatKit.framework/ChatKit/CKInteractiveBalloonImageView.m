@interface CKInteractiveBalloonImageView
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation CKInteractiveBalloonImageView

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v7.receiver = self;
  v7.super_class = CKInteractiveBalloonImageView;
  v5 = [(CKInteractiveBalloonImageView *)&v7 hitTest:a4 withEvent:a3.x, a3.y];
  if (v5 == self)
  {

    v5 = 0;
  }

  return v5;
}

@end