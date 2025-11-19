@interface CATTransition
+ (id)new;
- (CATState)state;
- (CATTransition)init;
- (CATTransition)initWithState:(id)a3 action:(SEL)a4;
- (SEL)action;
- (id)description;
@end

@implementation CATTransition

+ (id)new
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(a2);
  [v4 handleFailureInMethod:a2 object:a1 file:@"CATTransition.m" lineNumber:21 description:{@"%@ cannot call %@", a1, v5}];

  return 0;
}

- (CATTransition)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(a2);
  [v4 handleFailureInMethod:a2 object:self file:@"CATTransition.m" lineNumber:28 description:{@"%@ cannot call %@", v5, v6}];

  return 0;
}

- (CATTransition)initWithState:(id)a3 action:(SEL)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = CATTransition;
  v7 = [(CATTransition *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_state, v6);
    if (a4)
    {
      v9 = a4;
    }

    else
    {
      v9 = 0;
    }

    v8->_action = v9;
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
  v7 = [(CATTransition *)self state];
  v8 = [v7 name];
  v9 = [v3 stringWithFormat:@"<%@: %p { action = %@, state = %@ }>", v4, self, v6, v8];

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