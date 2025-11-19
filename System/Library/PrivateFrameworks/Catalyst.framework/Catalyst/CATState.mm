@interface CATState
+ (id)new;
- (CATState)init;
- (CATState)initWithName:(id)a3;
- (SEL)enterAction;
- (SEL)exitAction;
- (id)description;
- (void)addTransitionToState:(id)a3 triggeringEvent:(id)a4 action:(SEL)a5;
- (void)setEnterAction:(SEL)a3;
- (void)setExitAction:(SEL)a3;
@end

@implementation CATState

+ (id)new
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(a2);
  [v4 handleFailureInMethod:a2 object:a1 file:@"CATState.m" lineNumber:23 description:{@"%@ cannot call %@", a1, v5}];

  return 0;
}

- (CATState)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(a2);
  [v4 handleFailureInMethod:a2 object:self file:@"CATState.m" lineNumber:30 description:{@"%@ cannot call %@", v5, v6}];

  return 0;
}

- (CATState)initWithName:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [(CATState *)a2 initWithName:?];
  }

  v12.receiver = self;
  v12.super_class = CATState;
  v6 = [(CATState *)&v12 init];
  if (v6)
  {
    v7 = [v5 copy];
    name = v6->_name;
    v6->_name = v7;

    v9 = objc_opt_new();
    mTransitionByTriggeringEvent = v6->mTransitionByTriggeringEvent;
    v6->mTransitionByTriggeringEvent = v9;
  }

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(CATState *)self name];
  v6 = [v3 stringWithFormat:@"<%@: %p { name = %@ }>", v4, self, v5];

  return v6;
}

- (void)addTransitionToState:(id)a3 triggeringEvent:(id)a4 action:(SEL)a5
{
  v12 = a3;
  v9 = a4;
  if (!v9)
  {
    [CATState addTransitionToState:a2 triggeringEvent:self action:?];
  }

  v10 = [(NSMutableDictionary *)self->mTransitionByTriggeringEvent objectForKeyedSubscript:v9];

  if (v10)
  {
    [CATState addTransitionToState:a2 triggeringEvent:self action:v9];
  }

  v11 = [[CATTransition alloc] initWithState:v12 action:a5];
  [(NSMutableDictionary *)self->mTransitionByTriggeringEvent setObject:v11 forKeyedSubscript:v9];
}

- (SEL)enterAction
{
  if (self->_enterAction)
  {
    return self->_enterAction;
  }

  else
  {
    return 0;
  }
}

- (void)setEnterAction:(SEL)a3
{
  if (a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = 0;
  }

  self->_enterAction = v3;
}

- (SEL)exitAction
{
  if (self->_exitAction)
  {
    return self->_exitAction;
  }

  else
  {
    return 0;
  }
}

- (void)setExitAction:(SEL)a3
{
  if (a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = 0;
  }

  self->_exitAction = v3;
}

- (void)initWithName:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CATState.m" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"name"}];
}

- (void)addTransitionToState:(uint64_t)a1 triggeringEvent:(uint64_t)a2 action:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CATState.m" lineNumber:68 description:{@"Invalid parameter not satisfying: %@", @"triggeringEvent"}];
}

- (void)addTransitionToState:(uint64_t)a1 triggeringEvent:(uint64_t)a2 action:(uint64_t)a3 .cold.2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"CATState.m" lineNumber:69 description:{@"%@ cannot add duplicate transition for %@", a2, a3}];
}

@end