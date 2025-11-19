@interface PBUIHUDWindow
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation PBUIHUDWindow

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v10.receiver = self;
  v10.super_class = PBUIHUDWindow;
  v5 = [(PBUIHUDWindow *)&v10 hitTest:a4 withEvent:a3.x, a3.y];
  v6 = [(PBUIHUDWindow *)self hitTestViews];
  v7 = [v6 firstObject];

  if (v7 && (v5 == v7 || [v5 isDescendantOfView:v7]))
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