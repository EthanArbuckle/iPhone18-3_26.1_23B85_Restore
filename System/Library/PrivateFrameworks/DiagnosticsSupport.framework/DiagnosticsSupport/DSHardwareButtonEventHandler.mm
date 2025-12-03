@interface DSHardwareButtonEventHandler
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToHandler:(id)handler;
- (SEL)action;
- (void)setAction:(SEL)action;
@end

@implementation DSHardwareButtonEventHandler

- (BOOL)isEqualToHandler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    target = [(DSHardwareButtonEventHandler *)self target];
    target2 = [handlerCopy target];

    action = [(DSHardwareButtonEventHandler *)self action];
    action2 = [handlerCopy action];
    preventPropagation = [(DSHardwareButtonEventHandler *)self preventPropagation];
    preventPropagation2 = [handlerCopy preventPropagation];
    events = [(DSHardwareButtonEventHandler *)self events];
    v12 = (events == [handlerCopy events]) & ~(preventPropagation ^ preventPropagation2);
    if (action != action2)
    {
      v12 = 0;
    }

    v13 = target == target2 && v12;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(DSHardwareButtonEventHandler *)self isEqualToHandler:equalCopy];
  }

  return v5;
}

- (SEL)action
{
  if (self->_action)
  {
    return self->_action;
  }

  else
  {
    return 0;
  }
}

- (void)setAction:(SEL)action
{
  if (action)
  {
    actionCopy = action;
  }

  else
  {
    actionCopy = 0;
  }

  self->_action = actionCopy;
}

@end