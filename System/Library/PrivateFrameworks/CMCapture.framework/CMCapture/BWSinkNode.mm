@interface BWSinkNode
- (BOOL)isActive;
- (BWSinkNode)initWithSinkID:(id)a3;
- (NSString)currentStateDebugString;
- (int64_t)liveConfigurationID;
- (uint64_t)_setupSinkNodeStateMachine;
- (void)configurationWithID:(int64_t)a3 updatedFormat:(id)a4 didBecomeLiveForInput:(id)a5;
- (void)dealloc;
- (void)didReachEndOfDataForConfigurationID:(id)a3 input:(id)a4;
- (void)didReachEndOfDataForInput:(id)a3;
- (void)notifyWhenConfigurationID:(int64_t)a3 becomesLive:(id)a4;
@end

@implementation BWSinkNode

- (uint64_t)_setupSinkNodeStateMachine
{
  if (result)
  {
    v1 = result;
    v2 = [[FigStateMachine alloc] initWithLabel:@"BWSinkNodeStateMachine" stateCount:4 initialState:1 owner:result];
    *(v1 + 128) = v2;
    [(FigStateMachine *)v2 setPerformsAtomicStateTransitions:0];
    [OUTLINED_FUNCTION_0_46() setLabel:@"Idle" forState:1];
    [OUTLINED_FUNCTION_0_46() setLabel:@"Activating" forState:2];
    [OUTLINED_FUNCTION_0_46() setLabel:@"Active" forState:4];
    v3 = OUTLINED_FUNCTION_0_46();

    return [v3 setLabel:@"Deactivating" forState:8];
  }

  return result;
}

- (BOOL)isActive
{
  os_unfair_lock_lock(&self->_stateLock);
  v3 = [(FigStateMachine *)self->_stateMachine currentState];
  os_unfair_lock_unlock(&self->_stateLock);
  return v3 != 1;
}

- (BWSinkNode)initWithSinkID:(id)a3
{
  if (!a3)
  {
    [BWSinkNode initWithSinkID:];
  }

  v8.receiver = self;
  v8.super_class = BWSinkNode;
  v5 = [(BWNode *)&v8 init];
  v6 = v5;
  if (v5)
  {
    v5->_stateLock._os_unfair_lock_opaque = 0;
    [(BWSinkNode *)v5 _setupSinkNodeStateMachine];
    v6->_sinkID = [a3 copy];
    v6->_configurationHandlerLock = FigSimpleMutexCreate();
    v6->_configurationLiveHandlers = objc_alloc_init(MEMORY[0x1E695DF70]);
    v6->_configurationLiveIDs = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  return v6;
}

- (void)dealloc
{
  [(FigStateMachine *)self->_stateMachine currentState];

  liveConfigurationIDsByInputIndex = self->_liveConfigurationIDsByInputIndex;
  if (liveConfigurationIDsByInputIndex)
  {
    self->_liveConfigurationIDsByInputIndex = 0;
    free(liveConfigurationIDsByInputIndex);
  }

  FigSimpleMutexDestroy();
  v4.receiver = self;
  v4.super_class = BWSinkNode;
  [(BWNode *)&v4 dealloc];
}

- (void)notifyWhenConfigurationID:(int64_t)a3 becomesLive:(id)a4
{
  FigSimpleMutexLock();
  liveConfigurationID = self->_liveConfigurationID;
  if (liveConfigurationID >= a3)
  {
    FigSimpleMutexUnlock();
    v9 = *(a4 + 2);

    v9(a4, liveConfigurationID);
  }

  else
  {
    v8 = [a4 copy];
    [(NSMutableArray *)self->_configurationLiveHandlers addObject:v8];

    -[NSMutableArray addObject:](self->_configurationLiveIDs, "addObject:", [MEMORY[0x1E696AD98] numberWithLongLong:a3]);

    FigSimpleMutexUnlock();
  }
}

- (NSString)currentStateDebugString
{
  os_unfair_lock_lock(&self->_stateLock);
  v3 = [(NSString *)[(FigStateMachine *)self->_stateMachine currentStateLabel] lowercaseString];
  os_unfair_lock_unlock(&self->_stateLock);
  return v3;
}

- (int64_t)liveConfigurationID
{
  FigSimpleMutexLock();
  liveConfigurationID = self->_liveConfigurationID;
  FigSimpleMutexUnlock();
  return liveConfigurationID;
}

- (void)configurationWithID:(int64_t)a3 updatedFormat:(id)a4 didBecomeLiveForInput:(id)a5
{
  if ([(BWNode *)self supportsConcurrentLiveInputCallbacks:a3])
  {
    v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ supports concurrent live input callbacks, and BWSinkNode doesn't know how to manage the idle state for nodes with concurrent input callbacks", self];
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:v25 userInfo:0]);
  }

  [(BWNode *)self requestedConfigurationID];
  v8 = [(BWNode *)self allInputsHaveReachedState:1];
  os_unfair_lock_lock(&self->_stateLock);
  [(FigStateMachine *)self->_stateMachine transitionToState:2 fromState:1];
  if (v8 && [(FigStateMachine *)self->_stateMachine transitionToState:4 fromState:2])
  {
    handlersToCallWhenActive = self->_handlersToCallWhenActive;
    self->_handlersToCallWhenActive = 0;
    os_unfair_lock_unlock(&self->_stateLock);
    if (handlersToCallWhenActive)
    {
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v10 = [(NSMutableArray *)handlersToCallWhenActive countByEnumeratingWithState:&v33 objects:v32 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v34;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v34 != v12)
            {
              objc_enumerationMutation(handlersToCallWhenActive);
            }

            (*(*(*(&v33 + 1) + 8 * i) + 16))();
          }

          v11 = [(NSMutableArray *)handlersToCallWhenActive countByEnumeratingWithState:&v33 objects:v32 count:16];
        }

        while (v11);
      }
    }
  }

  else
  {
    os_unfair_lock_unlock(&self->_stateLock);
  }

  FigSimpleMutexLock();
  liveConfigurationIDsByInputIndex = self->_liveConfigurationIDsByInputIndex;
  if (!liveConfigurationIDsByInputIndex)
  {
    v15 = malloc_type_malloc(8 * [(NSArray *)[(BWNode *)self inputs] count], 0x100004000313F17uLL);
    self->_liveConfigurationIDsByInputIndex = v15;
    bzero(v15, 8 * [(NSArray *)[(BWNode *)self inputs] count]);
    liveConfigurationIDsByInputIndex = self->_liveConfigurationIDsByInputIndex;
  }

  liveConfigurationIDsByInputIndex[[a5 index]] = a3;
  if ([(NSArray *)[(BWNode *)self inputs] count])
  {
    v16 = 0;
    v17 = 0x7FFFFFFFLL;
    do
    {
      if (self->_liveConfigurationIDsByInputIndex[v16] < v17)
      {
        v17 = self->_liveConfigurationIDsByInputIndex[v16];
      }

      ++v16;
    }

    while ([(NSArray *)[(BWNode *)self inputs] count]> v16);
  }

  else
  {
    v17 = 0x7FFFFFFFLL;
  }

  self->_liveConfigurationID = v17;
  if (-[NSMutableArray count](self->_configurationLiveIDs, "count") && (configurationLiveIDs = self->_configurationLiveIDs, v31[0] = MEMORY[0x1E69E9820], v31[1] = 3221225472, v31[2] = __70__BWSinkNode_configurationWithID_updatedFormat_didBecomeLiveForInput___block_invoke, v31[3] = &unk_1E7991E48, v31[4] = self, v19 = -[NSMutableArray indexesOfObjectsPassingTest:](configurationLiveIDs, "indexesOfObjectsPassingTest:", v31), [v19 count]))
  {
    v20 = [(NSMutableArray *)self->_configurationLiveHandlers objectsAtIndexes:v19];
    [(NSMutableArray *)self->_configurationLiveHandlers removeObjectsAtIndexes:v19];
    [(NSMutableArray *)self->_configurationLiveIDs removeObjectsAtIndexes:v19];
    FigSimpleMutexUnlock();
    if (v20)
    {
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v21 = [v20 countByEnumeratingWithState:&v27 objects:v26 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v28;
        do
        {
          for (j = 0; j != v22; ++j)
          {
            if (*v28 != v23)
            {
              objc_enumerationMutation(v20);
            }

            (*(*(*(&v27 + 1) + 8 * j) + 16))();
          }

          v22 = [v20 countByEnumeratingWithState:&v27 objects:v26 count:16];
        }

        while (v22);
      }
    }
  }

  else
  {
    FigSimpleMutexUnlock();
  }
}

- (void)didReachEndOfDataForInput:(id)a3
{
  v4 = [(BWNode *)self allInputsHaveReachedState:0];
  os_unfair_lock_lock(&self->_stateLock);
  [(FigStateMachine *)self->_stateMachine transitionToState:8 fromState:4];
  if (v4 && [(FigStateMachine *)self->_stateMachine transitionToState:1 fromState:8])
  {
    handlersToCallWhenIdle = self->_handlersToCallWhenIdle;
    self->_handlersToCallWhenIdle = 0;
    os_unfair_lock_unlock(&self->_stateLock);
    if (handlersToCallWhenIdle)
    {
      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      v6 = [(NSMutableArray *)handlersToCallWhenIdle countByEnumeratingWithState:&v11 objects:v10 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v12;
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v12 != v8)
            {
              objc_enumerationMutation(handlersToCallWhenIdle);
            }

            (*(*(*(&v11 + 1) + 8 * i) + 16))();
          }

          v7 = [(NSMutableArray *)handlersToCallWhenIdle countByEnumeratingWithState:&v11 objects:v10 count:16];
        }

        while (v7);
      }
    }
  }

  else
  {

    os_unfair_lock_unlock(&self->_stateLock);
  }
}

- (void)didReachEndOfDataForConfigurationID:(id)a3 input:(id)a4
{
  v6 = [(BWNode *)self allInputsHaveReachedState:0, a4];
  os_unfair_lock_lock(&self->_stateLock);
  [(FigStateMachine *)self->_stateMachine transitionToState:8 fromState:4];
  if (v6 && (v7 = [(FigStateMachine *)self->_stateMachine transitionToState:1 fromState:8], !a3) && v7)
  {
    handlersToCallWhenIdle = self->_handlersToCallWhenIdle;
    self->_handlersToCallWhenIdle = 0;
    os_unfair_lock_unlock(&self->_stateLock);
    if (handlersToCallWhenIdle)
    {
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v9 = [(NSMutableArray *)handlersToCallWhenIdle countByEnumeratingWithState:&v14 objects:v13 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v15;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v15 != v11)
            {
              objc_enumerationMutation(handlersToCallWhenIdle);
            }

            (*(*(*(&v14 + 1) + 8 * i) + 16))();
          }

          v10 = [(NSMutableArray *)handlersToCallWhenIdle countByEnumeratingWithState:&v14 objects:v13 count:16];
        }

        while (v10);
      }
    }
  }

  else
  {

    os_unfair_lock_unlock(&self->_stateLock);
  }
}

@end