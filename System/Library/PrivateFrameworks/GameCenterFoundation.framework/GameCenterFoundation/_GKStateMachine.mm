@interface _GKStateMachine
- (BOOL)_setCurrentState:(id)state;
- (NSString)currentState;
- (_GKStateMachine)init;
- (_GKStateMachineDelegate)delegate;
- (id)_validateTransitionFromState:(id)state toState:(id)toState;
- (void)_performTransitionFromState:(id)state toState:(id)toState;
@end

@implementation _GKStateMachine

- (_GKStateMachine)init
{
  v3.receiver = self;
  v3.super_class = _GKStateMachine;
  result = [(_GKStateMachine *)&v3 init];
  if (result)
  {
    result->_lock._os_unfair_lock_opaque = 0;
  }

  return result;
}

- (NSString)currentState
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_currentState;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (_GKStateMachineDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)_setCurrentState:(id)state
{
  v20 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  currentState = [(_GKStateMachine *)self currentState];
  if ([(_GKStateMachine *)self shouldLogStateTransitions])
  {
    v6 = os_log_GKGeneral;
    if (!os_log_GKGeneral)
    {
      v7 = GKOSLoggers();
      v6 = os_log_GKGeneral;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v16 = 138412546;
      v17 = currentState;
      v18 = 2112;
      v19 = stateCopy;
      _os_log_impl(&dword_227904000, v6, OS_LOG_TYPE_INFO, " ➤➤➤ request state change from %@ to %@", &v16, 0x16u);
    }
  }

  v8 = [(_GKStateMachine *)self _validateTransitionFromState:currentState toState:stateCopy];
  if (v8)
  {
    delegate = [(_GKStateMachine *)self delegate];
    v10 = delegate;
    if (delegate)
    {
      selfCopy = delegate;
    }

    else
    {
      selfCopy = self;
    }

    v12 = selfCopy;

    if (objc_opt_respondsToSelector())
    {
      [(_GKStateMachine *)v12 stateWillChange];
    }

    os_unfair_lock_lock(&self->_lock);
    objc_storeStrong(&self->_currentState, v8);
    os_unfair_lock_unlock(&self->_lock);
    [(_GKStateMachine *)self _performTransitionFromState:currentState toState:v8];
  }

  v13 = [stateCopy isEqual:v8];

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

- (id)_validateTransitionFromState:(id)state toState:(id)toState
{
  v45 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  toStateCopy = toState;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __56___GKStateMachine__validateTransitionFromState_toState___block_invoke;
  aBlock[3] = &unk_2785E25B8;
  aBlock[4] = self;
  v8 = stateCopy;
  v35 = v8;
  v9 = toStateCopy;
  v36 = v9;
  v10 = _Block_copy(aBlock);
  if (!v9)
  {
    if (!os_log_GKGeneral)
    {
      v11 = GKOSLoggers();
    }

    v12 = os_log_GKError;
    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      [_GKStateMachine _validateTransitionFromState:v12 toState:?];
    }

    v9 = v10[2](v10);
    if (!v9)
    {
      v18 = 0;
      goto LABEL_37;
    }
  }

  if (!v8)
  {
    goto LABEL_24;
  }

  validTransitions = [(_GKStateMachine *)self validTransitions];
  v14 = [validTransitions objectForKey:v8];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (([(_GKStateMachine *)v14 containsObject:v9]& 1) != 0)
    {
      goto LABEL_23;
    }
  }

  else if (([(_GKStateMachine *)v14 isEqual:v9]& 1) != 0)
  {
LABEL_23:

LABEL_24:
    delegate = [(_GKStateMachine *)self delegate];
    v23 = delegate;
    if (delegate)
    {
      selfCopy = delegate;
    }

    else
    {
      selfCopy = self;
    }

    v14 = selfCopy;

    v25 = [@"shouldEnter" stringByAppendingString:v9];
    v26 = NSSelectorFromString(v25);

    if ((objc_opt_respondsToSelector() & 1) != 0 && ([v14 v26] & 1) == 0)
    {
      if (!os_log_GKGeneral)
      {
        v27 = GKOSLoggers();
      }

      v28 = os_log_GKError;
      if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
      {
        v32 = v28;
        v33 = NSStringFromSelector(v26);
        *buf = 138413058;
        selfCopy3 = self;
        v39 = 2112;
        v40 = v9;
        v41 = 2112;
        v42 = v8;
        v43 = 2112;
        v44 = v33;
        _os_log_error_impl(&dword_227904000, v32, OS_LOG_TYPE_ERROR, "  ➤➤➤ %@ transition disallowed to %@ from %@ (via %@)", buf, 0x2Au);
      }

      v29 = v10[2](v10);

      v9 = v29;
    }

    v9 = v9;
    v18 = v9;
    goto LABEL_36;
  }

  v15 = [v8 isEqualToString:v9];
  v16 = os_log_GKGeneral;
  if (v15)
  {
    if (!os_log_GKGeneral)
    {
      v17 = GKOSLoggers();
      v16 = os_log_GKGeneral;
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      [(_GKStateMachine *)self _validateTransitionFromState:v9 toState:v16];
    }
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v19 = GKOSLoggers();
    }

    v20 = os_log_GKError;
    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      selfCopy3 = self;
      v39 = 2112;
      v40 = v9;
      v41 = 2112;
      v42 = v8;
      _os_log_error_impl(&dword_227904000, v20, OS_LOG_TYPE_ERROR, "  ➤➤➤ %@ cannot transition to %@ from %@", buf, 0x20u);
    }

    v21 = v10[2](v10);

    v9 = v21;
    if (v21)
    {
      goto LABEL_23;
    }
  }

  v18 = 0;
LABEL_36:

LABEL_37:
  v30 = *MEMORY[0x277D85DE8];

  return v18;
}

- (void)_performTransitionFromState:(id)state toState:(id)toState
{
  v29 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  toStateCopy = toState;
  if ([(_GKStateMachine *)self shouldLogStateTransitions])
  {
    v8 = os_log_GKGeneral;
    if (!os_log_GKGeneral)
    {
      v9 = GKOSLoggers();
      v8 = os_log_GKGeneral;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      selfCopy = self;
      v25 = 2112;
      v26 = stateCopy;
      v27 = 2112;
      v28 = toStateCopy;
      _os_log_impl(&dword_227904000, v8, OS_LOG_TYPE_INFO, "  ➤➤➤ %@ state change from %@ to %@", buf, 0x20u);
    }
  }

  delegate = [(_GKStateMachine *)self delegate];
  v11 = delegate;
  if (delegate)
  {
    selfCopy2 = delegate;
  }

  else
  {
    selfCopy2 = self;
  }

  v13 = selfCopy2;

  if (stateCopy)
  {
    v14 = [@"didExit" stringByAppendingString:stateCopy];
    v15 = NSSelectorFromString(v14);

    if (objc_opt_respondsToSelector())
    {
      [v13 v15];
    }
  }

  v16 = [@"didEnter" stringByAppendingString:toStateCopy];
  v17 = NSSelectorFromString(v16);

  if (objc_opt_respondsToSelector())
  {
    [v13 v17];
  }

  v18 = @"Nil";
  if (stateCopy)
  {
    v18 = stateCopy;
  }

  v19 = v18;
  toStateCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"stateDidChangeFrom%@To%@", v19, toStateCopy];
  v21 = NSSelectorFromString(toStateCopy);

  if (objc_opt_respondsToSelector())
  {
    [v13 v21];
  }

  if (objc_opt_respondsToSelector())
  {
    [(_GKStateMachine *)v13 stateDidChange];
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)_validateTransitionFromState:(uint64_t)a1 toState:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_227904000, a2, OS_LOG_TYPE_ERROR, "validation for a state change failed:  ➤➤➤ %@ cannot transition to <nil> state", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_validateTransitionFromState:(os_log_t)log toState:.cold.2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_debug_impl(&dword_227904000, log, OS_LOG_TYPE_DEBUG, "  ➤➤➤ %@ ignoring reentry to %@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end