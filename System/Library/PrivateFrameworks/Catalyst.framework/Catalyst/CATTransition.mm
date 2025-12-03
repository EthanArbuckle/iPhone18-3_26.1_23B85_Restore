@interface CATTransition
+ (id)new;
- (CATState)state;
- (CATTransition)init;
- (CATTransition)initWithState:(id)state action:(SEL)action;
- (SEL)action;
- (id)description;
@end

@implementation CATTransition

+ (id)new
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:@"CATTransition.m" lineNumber:21 description:{@"%@ cannot call %@", self, v5}];

  return 0;
}

- (CATTransition)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:@"CATTransition.m" lineNumber:28 description:{@"%@ cannot call %@", v5, v6}];

  return 0;
}

- (CATTransition)initWithState:(id)state action:(SEL)action
{
  stateCopy = state;
  v11.receiver = self;
  v11.super_class = CATTransition;
  v7 = [(CATTransition *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_state, stateCopy);
    if (action)
    {
      actionCopy = action;
    }

    else
    {
      actionCopy = 0;
    }

    v8->_action = actionCopy;
  }

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  if (self->_action)
  {
    action = self->_action;
  }

  else
  {
    action = 0;
  }

  v6 = NSStringFromSelector(action);
  state = [(CATTransition *)self state];
  name = [state name];
  v9 = [v3 stringWithFormat:@"<%@: %p { action = %@, state = %@ }>", v4, self, v6, name];

  return v9;
}

- (CATState)state
{
  WeakRetained = objc_loadWeakRetained(&self->_state);

  return WeakRetained;
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

@end