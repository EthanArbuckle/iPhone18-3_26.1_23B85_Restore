@interface CKAppGrabberCloseButton
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
@end

@implementation CKAppGrabberCloseButton

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  [(CKAppGrabberCloseButton *)self bounds];
  v7 = v6 + -16.0;
  v9 = v8 + -16.0;
  v11 = v10 + 32.0;
  v13 = v12 + 32.0;
  v14 = x;
  v15 = y;

  return CGRectContainsPoint(*&v7, *&v14);
}

@end