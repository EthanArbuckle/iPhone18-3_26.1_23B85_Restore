@interface HUQuickControlPanningContext
- (CGRect)controlFrame;
- (HUQuickControlPanningContext)init;
- (void)assertConfigurationIsValid;
@end

@implementation HUQuickControlPanningContext

- (HUQuickControlPanningContext)init
{
  v3.receiver = self;
  v3.super_class = HUQuickControlPanningContext;
  result = [(HUQuickControlPanningContext *)&v3 init];
  if (result)
  {
    result->_verticalDragCoefficient = 1.0;
  }

  return result;
}

- (void)assertConfigurationIsValid
{
  [(HUQuickControlPanningContext *)self controlFrame];
  if (CGRectIsEmpty(v2))
  {
    NSLog(&cfstr_EmptyInitialFr.isa);
  }
}

- (CGRect)controlFrame
{
  x = self->_controlFrame.origin.x;
  y = self->_controlFrame.origin.y;
  width = self->_controlFrame.size.width;
  height = self->_controlFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end