@interface CATState
+ (id)new;
- (CATState)init;
- (CATState)initWithName:(id)name;
- (SEL)enterAction;
- (SEL)exitAction;
- (id)description;
- (void)addTransitionToState:(id)state triggeringEvent:(id)event action:(SEL)action;
- (void)setEnterAction:(SEL)action;
- (void)setExitAction:(SEL)action;
@end

@implementation CATState

+ (id)new
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:@"CATState.m" lineNumber:23 description:{@"%@ cannot call %@", self, v5}];

  return 0;
}

- (CATState)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:@"CATState.m" lineNumber:30 description:{@"%@ cannot call %@", v5, v6}];

  return 0;
}

- (CATState)initWithName:(id)name
{
  nameCopy = name;
  if (!nameCopy)
  {
    [(CATState *)a2 initWithName:?];
  }

  v12.receiver = self;
  v12.super_class = CATState;
  v6 = [(CATState *)&v12 init];
  if (v6)
  {
    v7 = [nameCopy copy];
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
  name = [(CATState *)self name];
  v6 = [v3 stringWithFormat:@"<%@: %p { name = %@ }>", v4, self, name];

  return v6;
}

- (void)addTransitionToState:(id)state triggeringEvent:(id)event action:(SEL)action
{
  stateCopy = state;
  eventCopy = event;
  if (!eventCopy)
  {
    [CATState addTransitionToState:a2 triggeringEvent:self action:?];
  }

  v10 = [(NSMutableDictionary *)self->mTransitionByTriggeringEvent objectForKeyedSubscript:eventCopy];

  if (v10)
  {
    [CATState addTransitionToState:a2 triggeringEvent:self action:eventCopy];
  }

  v11 = [[CATTransition alloc] initWithState:stateCopy action:action];
  [(NSMutableDictionary *)self->mTransitionByTriggeringEvent setObject:v11 forKeyedSubscript:eventCopy];
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

- (void)setEnterAction:(SEL)action
{
  if (action)
  {
    actionCopy = action;
  }

  else
  {
    actionCopy = 0;
  }

  self->_enterAction = actionCopy;
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

- (void)setExitAction:(SEL)action
{
  if (action)
  {
    actionCopy = action;
  }

  else
  {
    actionCopy = 0;
  }

  self->_exitAction = actionCopy;
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