@interface CKAppGrabberCloseButton
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation CKAppGrabberCloseButton

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
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