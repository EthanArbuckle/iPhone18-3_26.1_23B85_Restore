@interface SFStartPageNavigationBar
- (id)hitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation SFStartPageNavigationBar

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v12.receiver = self;
  v12.super_class = SFStartPageNavigationBar;
  v5 = [(SFStartPageNavigationBar *)&v12 hitTest:event withEvent:test.x, test.y];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  topItem = [(SFStartPageNavigationBar *)self topItem];
  standardAppearance = [topItem standardAppearance];
  backgroundEffect = [standardAppearance backgroundEffect];

  if (backgroundEffect || (isKindOfClass & 1) != 0)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end