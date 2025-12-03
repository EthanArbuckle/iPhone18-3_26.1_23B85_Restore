@interface CKImmediatePanGestureRecognizer
- (void)touchesBegan:(id)began withEvent:(id)event;
@end

@implementation CKImmediatePanGestureRecognizer

- (void)touchesBegan:(id)began withEvent:(id)event
{
  v5.receiver = self;
  v5.super_class = CKImmediatePanGestureRecognizer;
  [(CKImmediatePanGestureRecognizer *)&v5 touchesBegan:began withEvent:event];
  [(CKImmediatePanGestureRecognizer *)self setState:1];
}

@end