@interface CATStateMachine
+ (CATStateMachine)new;
- (BOOL)canTransitionWithTriggeringEvent:(id)event;
- (CATStateMachine)init;
- (CATStateMachine)initWithTarget:(id)target;
- (id)addStateWithName:(id)name;
- (id)description;
- (id)eventForTriggeringEvent:(id)event;
- (id)stateWithName:(id)name;
- (id)target;
- (void)addState:(id)state;
- (void)dealloc;
- (void)delegateDidEnterState:(id)state event:(id)event;
- (void)delegateWillExitState:(id)state event:(id)event;
- (void)invokeAction:(SEL)action event:(id)event;
- (void)start;
- (void)transitionWithTriggeringEvent:(id)event;
@end

@implementation CATStateMachine

+ (CATStateMachine)new
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:@"CATStateMachine.m" lineNumber:62 description:{@"%@ cannot call %@", self, v5}];

  return 0;
}

- (CATStateMachine)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:@"CATStateMachine.m" lineNumber:69 description:{@"%@ cannot call %@", v5, v6}];

  return 0;
}

- (CATStateMachine)initWithTarget:(id)target
{
  targetCopy = target;
  if (!targetCopy)
  {
    [CATStateMachine initWithTarget:];
  }

  v11.receiver = self;
  v11.super_class = CATStateMachine;
  v5 = [(CATStateMachine *)&v11 init];
  if (v5)
  {
    v6 = objc_opt_new();
    mStateByName = v5->mStateByName;
    v5->mStateByName = v6;

    v5->_logLevel = 0;
    objc_storeWeak(&v5->_target, targetCopy);
    targetCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"<%@: %p>", objc_opt_class(), targetCopy];
    name = v5->_name;
    v5->_name = targetCopy;
  }

  return v5;
}

- (void)dealloc
{
  OUTLINED_FUNCTION_0_2();
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v3 = *v1;
  OUTLINED_FUNCTION_0();
  [v2 handleFailureInMethod:v0 object:v3 file:? lineNumber:? description:?];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  name = [(CATStateMachine *)self name];
  currentState = [(CATStateMachine *)self currentState];
  name2 = [currentState name];
  v8 = name2;
  if (name2)
  {
    v9 = [v3 stringWithFormat:@"<%@: %p { name = %@, currentState = %@ }>", v4, self, name, name2];
  }

  else
  {
    initialState = [(CATStateMachine *)self initialState];
    name3 = [initialState name];
    v9 = [v3 stringWithFormat:@"<%@: %p { name = %@, currentState = %@ }>", v4, self, name, name3];
  }

  return v9;
}

- (id)addStateWithName:(id)name
{
  nameCopy = name;
  v5 = [[CATState alloc] initWithName:nameCopy];

  [(CATStateMachine *)self addState:v5];

  return v5;
}

- (void)addState:(id)state
{
  stateCopy = state;
  currentState = [(CATStateMachine *)self currentState];

  if (currentState)
  {
    [CATStateMachine addState:];
  }

  mStateByName = self->mStateByName;
  name = [stateCopy name];
  v7 = [(NSMutableDictionary *)mStateByName objectForKeyedSubscript:name];

  if (v7)
  {
    [CATStateMachine addState:];
  }

  v8 = self->mStateByName;
  name2 = [stateCopy name];
  [(NSMutableDictionary *)v8 setObject:stateCopy forKeyedSubscript:name2];

  initialState = [(CATStateMachine *)self initialState];

  if (!initialState)
  {
    [(CATStateMachine *)self setInitialState:stateCopy];
  }
}

- (id)stateWithName:(id)name
{
  nameCopy = name;
  v5 = [(NSMutableDictionary *)self->mStateByName objectForKeyedSubscript:nameCopy];
  if (!v5)
  {
    [CATStateMachine stateWithName:];
  }

  return v5;
}

- (void)start
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  selfCopy = self;
  _os_log_debug_impl(&dword_24329F000, a2, OS_LOG_TYPE_DEBUG, "%@ starting...", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (BOOL)canTransitionWithTriggeringEvent:(id)event
{
  v4 = [(CATStateMachine *)self eventForTriggeringEvent:event];
  currentState = [(CATStateMachine *)self currentState];
  trigger = [v4 trigger];
  v7 = [currentState transitionWithTriggeringEvent:trigger];

  return v7 != 0;
}

- (void)transitionWithTriggeringEvent:(id)event
{
  v43 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  currentState = [(CATStateMachine *)self currentState];

  if (!currentState)
  {
    [CATStateMachine transitionWithTriggeringEvent:];
  }

  v7 = [(CATStateMachine *)self eventForTriggeringEvent:eventCopy];
  currentState2 = [(CATStateMachine *)self currentState];
  trigger = [v7 trigger];
  v10 = [currentState2 transitionWithTriggeringEvent:trigger];

  if (!v10)
  {
    [CATStateMachine transitionWithTriggeringEvent:];
  }

  p_mCalloutReason = &self->mCalloutReason;
  if (self->mCalloutReason)
  {
    [(CATStateMachine *)a2 transitionWithTriggeringEvent:self, eventCopy];
  }

  if ([(CATStateMachine *)self logLevel])
  {
    v12 = _CATLogFSM();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      currentState3 = [(CATStateMachine *)self currentState];
      name = [currentState3 name];
      state = [v10 state];
      name2 = [state name];
      trigger2 = [v7 trigger];
      *buf = 138413058;
      selfCopy2 = self;
      v37 = 2112;
      v38 = name;
      v39 = 2112;
      v40 = name2;
      v41 = 2112;
      v42 = trigger2;
      _os_log_debug_impl(&dword_24329F000, v12, OS_LOG_TYPE_DEBUG, "%@ transitioning from %@ to %@ because %@", buf, 0x2Au);
    }
  }

  state2 = [v10 state];

  if (state2)
  {
    mCalloutReason = self->mCalloutReason;
    self->mCalloutReason = @"Calling Exit Action";

    if ([(CATStateMachine *)self logLevel]>= 2)
    {
      v15 = _CATLogFSM();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        currentState4 = [(CATStateMachine *)self currentState];
        name3 = [currentState4 name];
        *buf = 138412546;
        selfCopy2 = self;
        v37 = 2112;
        v38 = name3;
        _os_log_debug_impl(&dword_24329F000, v15, OS_LOG_TYPE_DEBUG, "%@ leaving %@", buf, 0x16u);
      }
    }

    currentState5 = [(CATStateMachine *)self currentState];
    [(CATStateMachine *)self delegateWillExitState:currentState5 event:v7];

    v17 = *p_mCalloutReason;
    *p_mCalloutReason = 0;
  }

  if ([v10 action])
  {
    v18 = self->mCalloutReason;
    self->mCalloutReason = @"Calling Transition Action";

    if ([(CATStateMachine *)self logLevel]>= 2)
    {
      v19 = _CATLogFSM();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        [(CATStateMachine *)self transitionWithTriggeringEvent:v10, v19];
      }
    }

    -[CATStateMachine invokeAction:event:](self, "invokeAction:event:", [v10 action], v7);
    v20 = *p_mCalloutReason;
    *p_mCalloutReason = 0;
  }

  state3 = [v10 state];

  if (state3)
  {
    state4 = [v10 state];
    [(CATStateMachine *)self setCurrentState:state4];

    if ([(CATStateMachine *)self logLevel]>= 2)
    {
      v23 = _CATLogFSM();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        currentState6 = [(CATStateMachine *)self currentState];
        [(CATStateMachine *)self transitionWithTriggeringEvent:currentState6, buf, v23];
      }
    }

    currentState7 = [(CATStateMachine *)self currentState];
    [(CATStateMachine *)self delegateDidEnterState:currentState7 event:v7];
  }

  v26 = *p_mCalloutReason;
  *p_mCalloutReason = 0;

  v27 = *MEMORY[0x277D85DE8];
}

- (id)eventForTriggeringEvent:(id)event
{
  eventCopy = event;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = eventCopy;
  }

  else
  {
    v4 = [CATStateMachineEvent eventWithTrigger:eventCopy context:0];
  }

  v5 = v4;

  return v5;
}

- (void)delegateWillExitState:(id)state event:(id)event
{
  stateCopy = state;
  eventCopy = event;
  if ([stateCopy exitAction])
  {
    if ([(CATStateMachine *)self logLevel]>= 2)
    {
      v8 = _CATLogFSM();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        [CATStateMachine delegateWillExitState:event:];
      }
    }

    -[CATStateMachine invokeAction:event:](self, "invokeAction:event:", [stateCopy exitAction], eventCopy);
  }
}

- (void)delegateDidEnterState:(id)state event:(id)event
{
  stateCopy = state;
  eventCopy = event;
  if ([stateCopy enterAction])
  {
    if ([(CATStateMachine *)self logLevel]>= 2)
    {
      v8 = _CATLogFSM();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        [CATStateMachine delegateDidEnterState:event:];
      }
    }

    -[CATStateMachine invokeAction:event:](self, "invokeAction:event:", [stateCopy enterAction], eventCopy);
  }
}

- (void)invokeAction:(SEL)action event:(id)event
{
  eventCopy = event;
  if (action)
  {
    v7 = objc_autoreleasePoolPush();
    target = [(CATStateMachine *)self target];
    v9 = [target methodSignatureForSelector:action];

    v10 = [MEMORY[0x277CBEAE8] invocationWithMethodSignature:v9];
    target2 = [(CATStateMachine *)self target];
    [v10 setTarget:target2];

    [v10 setSelector:action];
    if ([v9 numberOfArguments] >= 3)
    {
      context = [eventCopy context];
      [v10 setArgument:&context atIndex:2];
    }

    [v10 invoke];

    objc_autoreleasePoolPop(v7);
  }
}

- (id)target
{
  WeakRetained = objc_loadWeakRetained(&self->_target);

  return WeakRetained;
}

- (void)initWithTarget:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:@"target" object:? file:? lineNumber:? description:?];
}

- (void)addState:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v9 = [MEMORY[0x277CCA890] currentHandler];
  v2 = NSStringFromSelector(v1);
  v3 = [v0 currentState];
  [OUTLINED_FUNCTION_1_1(v3 v4];
}

- (void)addState:.cold.2()
{
  OUTLINED_FUNCTION_0_2();
  v9 = [MEMORY[0x277CCA890] currentHandler];
  v2 = [v1 name];
  [OUTLINED_FUNCTION_1_1(v2 v3];
}

- (void)stateWithName:.cold.1()
{
  OUTLINED_FUNCTION_0_2();
  v3 = [MEMORY[0x277CCA890] currentHandler];
  [v3 handleFailureInMethod:v2 object:v1 file:@"CATStateMachine.m" lineNumber:132 description:{@"%@ couldn't get a state for %@", v1, v0}];
}

- (void)transitionWithTriggeringEvent:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v2 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

- (void)transitionWithTriggeringEvent:.cold.2()
{
  OUTLINED_FUNCTION_0_2();
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [v2 currentState];
  [v4 handleFailureInMethod:v1 object:v2 file:@"CATStateMachine.m" lineNumber:166 description:{@"%@ cannot transition from %@ with %@", v2, v3, v0}];
}

- (void)transitionWithTriggeringEvent:(uint64_t)a3 .cold.3(const char *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = [MEMORY[0x277CCA890] currentHandler];
  v8 = NSStringFromSelector(a1);
  [v9 handleFailureInMethod:a1 object:a3 file:@"CATStateMachine.m" lineNumber:168 description:{@"%@ cannot call %@ with event '%@' because the receiver is already '%@'", a3, v8, a4, *a2}];
}

- (void)transitionWithTriggeringEvent:(os_log_t)log .cold.4(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_debug_impl(&dword_24329F000, log, OS_LOG_TYPE_DEBUG, "%@ invoking action for %@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)transitionWithTriggeringEvent:(uint8_t *)buf .cold.5(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_debug_impl(&dword_24329F000, log, OS_LOG_TYPE_DEBUG, "%@ entering %@", buf, 0x16u);
}

- (void)delegateWillExitState:event:.cold.1()
{
  OUTLINED_FUNCTION_0_2();
  v12 = *MEMORY[0x277D85DE8];
  v2 = NSStringFromSelector([v1 exitAction]);
  v3 = [v0 name];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_5(&dword_24329F000, v4, v5, "%@ invoking exit action (%@) for %@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)delegateDidEnterState:event:.cold.1()
{
  OUTLINED_FUNCTION_0_2();
  v12 = *MEMORY[0x277D85DE8];
  v2 = NSStringFromSelector([v1 enterAction]);
  v3 = [v0 name];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_5(&dword_24329F000, v4, v5, "%@ invoking enter action (%@) for %@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

@end