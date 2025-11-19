@interface CATStateMachine
+ (CATStateMachine)new;
- (BOOL)canTransitionWithTriggeringEvent:(id)a3;
- (CATStateMachine)init;
- (CATStateMachine)initWithTarget:(id)a3;
- (id)addStateWithName:(id)a3;
- (id)description;
- (id)eventForTriggeringEvent:(id)a3;
- (id)stateWithName:(id)a3;
- (id)target;
- (void)addState:(id)a3;
- (void)dealloc;
- (void)delegateDidEnterState:(id)a3 event:(id)a4;
- (void)delegateWillExitState:(id)a3 event:(id)a4;
- (void)invokeAction:(SEL)a3 event:(id)a4;
- (void)start;
- (void)transitionWithTriggeringEvent:(id)a3;
@end

@implementation CATStateMachine

+ (CATStateMachine)new
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(a2);
  [v4 handleFailureInMethod:a2 object:a1 file:@"CATStateMachine.m" lineNumber:62 description:{@"%@ cannot call %@", a1, v5}];

  return 0;
}

- (CATStateMachine)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(a2);
  [v4 handleFailureInMethod:a2 object:self file:@"CATStateMachine.m" lineNumber:69 description:{@"%@ cannot call %@", v5, v6}];

  return 0;
}

- (CATStateMachine)initWithTarget:(id)a3
{
  v4 = a3;
  if (!v4)
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
    objc_storeWeak(&v5->_target, v4);
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"<%@: %p>", objc_opt_class(), v4];
    name = v5->_name;
    v5->_name = v8;
  }

  return v5;
}

- (void)dealloc
{
  OUTLINED_FUNCTION_0_2();
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v3 = *v1;
  OUTLINED_FUNCTION_0();
  [v2 handleFailureInMethod:v0 object:v3 file:? lineNumber:? description:?];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(CATStateMachine *)self name];
  v6 = [(CATStateMachine *)self currentState];
  v7 = [v6 name];
  v8 = v7;
  if (v7)
  {
    v9 = [v3 stringWithFormat:@"<%@: %p { name = %@, currentState = %@ }>", v4, self, v5, v7];
  }

  else
  {
    v10 = [(CATStateMachine *)self initialState];
    v11 = [v10 name];
    v9 = [v3 stringWithFormat:@"<%@: %p { name = %@, currentState = %@ }>", v4, self, v5, v11];
  }

  return v9;
}

- (id)addStateWithName:(id)a3
{
  v4 = a3;
  v5 = [[CATState alloc] initWithName:v4];

  [(CATStateMachine *)self addState:v5];

  return v5;
}

- (void)addState:(id)a3
{
  v11 = a3;
  v4 = [(CATStateMachine *)self currentState];

  if (v4)
  {
    [CATStateMachine addState:];
  }

  mStateByName = self->mStateByName;
  v6 = [v11 name];
  v7 = [(NSMutableDictionary *)mStateByName objectForKeyedSubscript:v6];

  if (v7)
  {
    [CATStateMachine addState:];
  }

  v8 = self->mStateByName;
  v9 = [v11 name];
  [(NSMutableDictionary *)v8 setObject:v11 forKeyedSubscript:v9];

  v10 = [(CATStateMachine *)self initialState];

  if (!v10)
  {
    [(CATStateMachine *)self setInitialState:v11];
  }
}

- (id)stateWithName:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->mStateByName objectForKeyedSubscript:v4];
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
  v4 = a1;
  _os_log_debug_impl(&dword_24329F000, a2, OS_LOG_TYPE_DEBUG, "%@ starting...", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (BOOL)canTransitionWithTriggeringEvent:(id)a3
{
  v4 = [(CATStateMachine *)self eventForTriggeringEvent:a3];
  v5 = [(CATStateMachine *)self currentState];
  v6 = [v4 trigger];
  v7 = [v5 transitionWithTriggeringEvent:v6];

  return v7 != 0;
}

- (void)transitionWithTriggeringEvent:(id)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [(CATStateMachine *)self currentState];

  if (!v6)
  {
    [CATStateMachine transitionWithTriggeringEvent:];
  }

  v7 = [(CATStateMachine *)self eventForTriggeringEvent:v5];
  v8 = [(CATStateMachine *)self currentState];
  v9 = [v7 trigger];
  v10 = [v8 transitionWithTriggeringEvent:v9];

  if (!v10)
  {
    [CATStateMachine transitionWithTriggeringEvent:];
  }

  p_mCalloutReason = &self->mCalloutReason;
  if (self->mCalloutReason)
  {
    [(CATStateMachine *)a2 transitionWithTriggeringEvent:self, v5];
  }

  if ([(CATStateMachine *)self logLevel])
  {
    v12 = _CATLogFSM();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v34 = [(CATStateMachine *)self currentState];
      v28 = [v34 name];
      v29 = [v10 state];
      v30 = [v29 name];
      v31 = [v7 trigger];
      *buf = 138413058;
      v36 = self;
      v37 = 2112;
      v38 = v28;
      v39 = 2112;
      v40 = v30;
      v41 = 2112;
      v42 = v31;
      _os_log_debug_impl(&dword_24329F000, v12, OS_LOG_TYPE_DEBUG, "%@ transitioning from %@ to %@ because %@", buf, 0x2Au);
    }
  }

  v13 = [v10 state];

  if (v13)
  {
    mCalloutReason = self->mCalloutReason;
    self->mCalloutReason = @"Calling Exit Action";

    if ([(CATStateMachine *)self logLevel]>= 2)
    {
      v15 = _CATLogFSM();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v32 = [(CATStateMachine *)self currentState];
        v33 = [v32 name];
        *buf = 138412546;
        v36 = self;
        v37 = 2112;
        v38 = v33;
        _os_log_debug_impl(&dword_24329F000, v15, OS_LOG_TYPE_DEBUG, "%@ leaving %@", buf, 0x16u);
      }
    }

    v16 = [(CATStateMachine *)self currentState];
    [(CATStateMachine *)self delegateWillExitState:v16 event:v7];

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

  v21 = [v10 state];

  if (v21)
  {
    v22 = [v10 state];
    [(CATStateMachine *)self setCurrentState:v22];

    if ([(CATStateMachine *)self logLevel]>= 2)
    {
      v23 = _CATLogFSM();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        v24 = [(CATStateMachine *)self currentState];
        [(CATStateMachine *)self transitionWithTriggeringEvent:v24, buf, v23];
      }
    }

    v25 = [(CATStateMachine *)self currentState];
    [(CATStateMachine *)self delegateDidEnterState:v25 event:v7];
  }

  v26 = *p_mCalloutReason;
  *p_mCalloutReason = 0;

  v27 = *MEMORY[0x277D85DE8];
}

- (id)eventForTriggeringEvent:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = [CATStateMachineEvent eventWithTrigger:v3 context:0];
  }

  v5 = v4;

  return v5;
}

- (void)delegateWillExitState:(id)a3 event:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 exitAction])
  {
    if ([(CATStateMachine *)self logLevel]>= 2)
    {
      v8 = _CATLogFSM();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        [CATStateMachine delegateWillExitState:event:];
      }
    }

    -[CATStateMachine invokeAction:event:](self, "invokeAction:event:", [v6 exitAction], v7);
  }
}

- (void)delegateDidEnterState:(id)a3 event:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 enterAction])
  {
    if ([(CATStateMachine *)self logLevel]>= 2)
    {
      v8 = _CATLogFSM();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        [CATStateMachine delegateDidEnterState:event:];
      }
    }

    -[CATStateMachine invokeAction:event:](self, "invokeAction:event:", [v6 enterAction], v7);
  }
}

- (void)invokeAction:(SEL)a3 event:(id)a4
{
  v6 = a4;
  if (a3)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = [(CATStateMachine *)self target];
    v9 = [v8 methodSignatureForSelector:a3];

    v10 = [MEMORY[0x277CBEAE8] invocationWithMethodSignature:v9];
    v11 = [(CATStateMachine *)self target];
    [v10 setTarget:v11];

    [v10 setSelector:a3];
    if ([v9 numberOfArguments] >= 3)
    {
      v12 = [v6 context];
      [v10 setArgument:&v12 atIndex:2];
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