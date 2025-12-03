@interface CLKUILayerHostView
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (UIView)superviewDelegate;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation CLKUILayerHostView

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  superviewDelegate = [(CLKUILayerHostView *)self superviewDelegate];
  v9 = [superviewDelegate hitTest:eventCopy withEvent:{x, y}];

  return v9;
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  eventCopy = event;
  superviewDelegate = [(CLKUILayerHostView *)self superviewDelegate];
  v9 = [superviewDelegate pointInside:eventCopy withEvent:{x, y}];

  return v9;
}

- (UIView)superviewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_superviewDelegate);

  return WeakRetained;
}

@end