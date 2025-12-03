@interface PBUIHUDWindow
- (id)hitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation PBUIHUDWindow

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v10.receiver = self;
  v10.super_class = PBUIHUDWindow;
  v5 = [(PBUIHUDWindow *)&v10 hitTest:event withEvent:test.x, test.y];
  hitTestViews = [(PBUIHUDWindow *)self hitTestViews];
  firstObject = [hitTestViews firstObject];

  if (firstObject && (v5 == firstObject || [v5 isDescendantOfView:firstObject]))
  {
    v8 = v5;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end