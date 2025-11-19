@interface CMContinuityCaptureStateMachine
- (BOOL)postEventWithName:(id)a3 data:(id)a4;
- (BOOL)postSameStateAction:(id)a3 transition:(id)a4 event:(id)a5;
- (BOOL)postStateChangeAction:(id)a3 transition:(id)a4 event:(id)a5;
- (CMContinuityCaptureStateMachine)initWithActionDelegate:(id)a3 queue:(id)a4;
- (id)description;
- (id)getDeferredEventsToPostForState:(id)a3;
- (id)getNewStateAfterPostingDeferredEvents:(id)a3 deferredEventsToPost:(id *)a4;
- (void)_enqueueEventWithNameToPost:(id)a3 data:(id)a4;
- (void)_notifyCompletion:(id)a3;
- (void)addEvents:(id)a3;
- (void)addStateTransitions:(id)a3;
- (void)aggregateEvents;
- (void)enqueueEventWithNameToPost:(id)a3 data:(id)a4;
- (void)notifyCompletion:(id)a3;
@end

@implementation CMContinuityCaptureStateMachine

- (void)addStateTransitions:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v6 = v4;
    v5 = self;
    objc_sync_enter(v5);
    [(NSMutableArray *)v5->_transactions addObjectsFromArray:v6];
    objc_sync_exit(v5);

    v4 = v6;
  }
}

- (void)addEvents:(id)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __45__CMContinuityCaptureStateMachine_addEvents___block_invoke;
  v3[3] = &unk_278D5C9A0;
  v3[4] = self;
  [a3 enumerateObjectsUsingBlock:v3];
}

void __45__CMContinuityCaptureStateMachine_addEvents___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 24);
  v3 = a2;
  v4 = [v3 name];
  [v2 setObject:v3 forKeyedSubscript:v4];
}

- (BOOL)postSameStateAction:(id)a3 transition:(id)a4 event:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 action];

  if (v11)
  {
    v12 = [v9 action];
    (v12)[2](v12, v10);
  }

  v13 = CMContinuityCaptureLog(0);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained(&self->_actionDelegate);
    v15 = [v8 name];
    v16 = [(CMContinuityCaptureStateMachine *)self currentState];
    v17 = [v16 name];
    v18 = [(CMContinuityCaptureStateMachine *)self currentState];
    [v18 pendingEvents];
    v19 = v22 = v8;
    deferredEvents = self->_deferredEvents;
    *buf = 138544642;
    v24 = WeakRetained;
    v25 = 2114;
    v26 = v15;
    v27 = 2114;
    v28 = v17;
    v29 = 2114;
    v30 = v10;
    v31 = 2114;
    v32 = v19;
    v33 = 2114;
    v34 = deferredEvents;
    _os_log_impl(&dword_242545000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ Transition to state %{public}@ from %{public}@ on event %{public}@ state pendingEvents %{public}@ deferredEvents %{public}@", buf, 0x3Eu);

    v8 = v22;
  }

  return 1;
}

- (id)getDeferredEventsToPostForState:(id)a3
{
  v4 = a3;
  if ([(NSMutableArray *)self->_deferredEvents count])
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v6 = [v4 name];
    v7 = [v6 isEqualToString:@"kCMContinuityCaptureStateStreaming"];

    if (v7)
    {
      v8 = [(NSMutableArray *)self->_deferredEvents objectAtIndexedSubscript:0];
      v9 = [v8 isEntry];

      v10 = v9;
      v11 = 1;
      if ([(NSMutableArray *)self->_deferredEvents count]>= 2)
      {
        do
        {
          v12 = [(NSMutableArray *)self->_deferredEvents objectAtIndexedSubscript:0];
          v13 = [v12 name];
          v14 = [(NSMutableArray *)self->_deferredEvents objectAtIndexedSubscript:v11];
          v15 = [v14 name];
          v16 = CMContinuityCaptureSMValidSameStateEventName(v13, v15);

          if (!v16)
          {
            break;
          }

          v17 = [(NSMutableArray *)self->_deferredEvents objectAtIndexedSubscript:v11];
          v18 = [v17 isEntry];

          if (v18)
          {
            ++v10;
          }

          else
          {
            v10 = 0;
          }

          ++v11;
        }

        while (v11 < [(NSMutableArray *)self->_deferredEvents count]);
      }

      v19 = 0;
      while (1)
      {
        v20 = [(NSMutableArray *)self->_deferredEvents objectAtIndexedSubscript:v19];
        v21 = [v20 isEntry];

        if (((v10 == 0) ^ v21))
        {
          break;
        }

        if (v11 == ++v19)
        {
          goto LABEL_17;
        }
      }

      v22 = [(NSMutableArray *)self->_deferredEvents objectAtIndexedSubscript:v19];
      if (v22)
      {
        v23 = v22;
        [v5 addObject:v22];
      }

LABEL_17:
      while (v11 < [(NSMutableArray *)self->_deferredEvents count])
      {
        v24 = [(NSMutableArray *)self->_deferredEvents objectAtIndexedSubscript:v11];
        [v5 addObject:v24];

        ++v11;
      }
    }

    else
    {
      [v5 addObjectsFromArray:self->_deferredEvents];
    }

    v25 = objc_alloc_init(MEMORY[0x277CBEB18]);
    deferredEvents = self->_deferredEvents;
    self->_deferredEvents = v25;
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  return v5;
}

- (id)getNewStateAfterPostingDeferredEvents:(id)a3 deferredEventsToPost:(id *)a4
{
  v6 = a3;
  v7 = objc_alloc(MEMORY[0x277CBEB18]);
  v8 = [(CMContinuityCaptureStateMachine *)self getDeferredEventsToPostForState:v6];
  v9 = [v7 initWithArray:v8];

  v10 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v29 = 138543618;
    v30 = self;
    v31 = 2114;
    v32 = v9;
    _os_log_impl(&dword_242545000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ Deferred to post %{public}@", &v29, 0x16u);
  }

  if (v9 && [v9 count])
  {
    if (!v6)
    {
LABEL_8:
      v15 = [v9 firstObject];
      if (([v15 isEntry] & 1) != 0 || (objc_msgSend(v15, "name"), v16 = objc_claimAutoreleasedReturnValue(), valid = CMContinuityCaptureSMIsValidExitEventForState(v16, @"kCMContinuityCaptureStateStreaming"), v16, (valid & 1) == 0))
      {
        v26 = v9;
        *a4 = v9;
      }

      else if ([(NSMutableArray *)self->_previousStates count])
      {
        v18 = CMContinuityCaptureLog(2);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          WeakRetained = objc_loadWeakRetained(&self->_actionDelegate);
          v20 = [(NSMutableArray *)self->_previousStates lastObject];
          v29 = 138544130;
          v30 = WeakRetained;
          v31 = 2114;
          v32 = v9;
          v33 = 2114;
          v34 = v6;
          v35 = 2114;
          v36 = v20;
          _os_log_impl(&dword_242545000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ Deferred exit event %{public}@ for state %{public}@ , move to previous state %{public}@", &v29, 0x2Au);
        }

        v21 = [v6 exitAction];

        if (v21)
        {
          v22 = [v6 exitAction];
          v23 = [v9 firstObject];
          (v22)[2](v22, v23);
        }

        v24 = [(NSMutableArray *)self->_previousStates lastObject];
        [(NSMutableArray *)self->_previousStates removeLastObject];
        [v9 removeObjectAtIndex:0];
        v25 = v9;
        *a4 = v9;
        goto LABEL_18;
      }

      v24 = v6;
LABEL_18:

      goto LABEL_21;
    }

    v11 = [v6 name];
    v12 = [v11 isEqualToString:@"kCMContinuityCaptureStateTerminated"];

    if (!v12)
    {
      v13 = [v6 name];
      v14 = [v13 isEqualToString:@"kCMContinuityCaptureStateStreaming"];

      if (v14)
      {
        goto LABEL_8;
      }

      v27 = v9;
      *a4 = v9;
    }
  }

  v24 = v6;
LABEL_21:

  return v24;
}

- (BOOL)postStateChangeAction:(id)a3 transition:(id)a4 event:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v10 isEntry])
  {
    goto LABEL_4;
  }

  if (![(NSMutableArray *)self->_previousStates count])
  {
    goto LABEL_10;
  }

  v11 = [(NSMutableArray *)self->_previousStates lastObject];
  v12 = [v11 name];
  v13 = [v8 name];
  v14 = [v12 isEqualToString:v13];

  if (v14)
  {
LABEL_4:
    v15 = CMContinuityCaptureLog(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      WeakRetained = objc_loadWeakRetained(&self->_actionDelegate);
      v17 = [v8 name];
      v18 = [(CMContinuityCaptureStateMachine *)self currentState];
      [v18 name];
      v49 = v8;
      v20 = v19 = v9;
      v21 = [(CMContinuityCaptureStateMachine *)self currentState];
      v22 = [v21 pendingEvents];
      deferredEvents = self->_deferredEvents;
      *buf = 138544642;
      v54 = WeakRetained;
      v55 = 2114;
      v56 = v17;
      v57 = 2114;
      v58 = v20;
      v59 = 2114;
      v60 = v10;
      v61 = 2114;
      v62 = v22;
      v63 = 2114;
      v64 = deferredEvents;
      _os_log_impl(&dword_242545000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ Transition to state %{public}@ from %{public}@ on event %{public}@ state pendingEvents %{public}@ deferredEvents %{public}@", buf, 0x3Eu);

      v9 = v19;
      v8 = v49;
    }

    v24 = [(CMContinuityCaptureStateMachine *)self currentState];
    v25 = [v24 exitAction];

    if (v25)
    {
      v26 = [(CMContinuityCaptureStateMachine *)self currentState];
      v27 = [v26 exitAction];
      (v27)[2](v27, v10);
    }

    v28 = [v10 isEntry];
    previousStates = self->_previousStates;
    if (v28)
    {
      v30 = [(CMContinuityCaptureStateMachine *)self currentState];
      [(NSMutableArray *)previousStates addObject:v30];
    }

    else if ([(NSMutableArray *)self->_previousStates count])
    {
      [(NSMutableArray *)self->_previousStates removeLastObject];
    }

    else
    {
      v33 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
      {
        v47 = objc_loadWeakRetained(&self->_actionDelegate);
        v48 = [(CMContinuityCaptureStateMachine *)self currentState];
        *buf = 138413058;
        v54 = v47;
        v55 = 2112;
        v56 = v10;
        v57 = 2112;
        v58 = v48;
        v59 = 2112;
        v60 = v8;
        _os_log_fault_impl(&dword_242545000, v33, OS_LOG_TYPE_FAULT, "%@ Unexpected SM event %@ current %@ dst %@", buf, 0x2Au);
      }
    }

    v34 = [v9 action];

    if (v34)
    {
      v35 = [v9 action];
      (v35)[2](v35, v10);
    }

    [(CMContinuityCaptureStateMachine *)self willChangeValueForKey:@"currentState"];
    v52 = 0;
    v36 = [(CMContinuityCaptureStateMachine *)self getNewStateAfterPostingDeferredEvents:v8 deferredEventsToPost:&v52];
    v32 = v52;
    [(CMContinuityCaptureStateMachine *)self setCurrentState:v36];

    [(CMContinuityCaptureStateMachine *)self didChangeValueForKey:@"currentState"];
    v37 = [(CMContinuityCaptureStateMachine *)self currentState];
    v38 = [v37 entryAction];

    if (v38)
    {
      v39 = [(CMContinuityCaptureStateMachine *)self currentState];
      v40 = [v39 entryAction];
      (v40)[2](v40, v10);
    }

    if (v32 && [v32 count])
    {
      v41 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        v42 = objc_loadWeakRetained(&self->_actionDelegate);
        v43 = [(CMContinuityCaptureStateMachine *)self currentState];
        *buf = 138543874;
        v54 = v42;
        v55 = 2114;
        v56 = v32;
        v57 = 2114;
        v58 = v43;
        _os_log_impl(&dword_242545000, v41, OS_LOG_TYPE_DEFAULT, "%{public}@ Post Deferred event %{public}@ on current state %{public}@", buf, 0x20u);
      }

      v44 = objc_loadWeakRetained(&self->_actionDelegate);
      v50[0] = MEMORY[0x277D85DD0];
      v50[1] = 3221225472;
      v50[2] = __74__CMContinuityCaptureStateMachine_postStateChangeAction_transition_event___block_invoke;
      v50[3] = &unk_278D5C9A0;
      v51 = v44;
      v45 = v44;
      [v32 enumerateObjectsUsingBlock:v50];
    }

    v31 = 1;
  }

  else
  {
LABEL_10:
    v31 = 0;
    v32 = 0;
  }

  return v31;
}

void __74__CMContinuityCaptureStateMachine_postStateChangeAction_transition_event___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v3 name];
  v4 = [v3 data];

  [v2 postDeferredEvent:v5 data:v4];
}

- (void)_enqueueEventWithNameToPost:(id)a3 data:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (CMContinuityCaptureValidSMEvent(v6))
  {
    if (v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = MEMORY[0x277CBEC10];
    }

    dispatch_assert_queue_V2(self->_queue);
    v12 = CMContinuityCaptureLog(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      currentState = self->_currentState;
      *buf = 138543874;
      v26 = self;
      v27 = 2114;
      v28 = v6;
      v29 = 2114;
      v30 = currentState;
      _os_log_impl(&dword_242545000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ enqueueEvent %{public}@ on current state %{public}@", buf, 0x20u);
    }

    v14 = [(NSMutableArray *)self->_eventQueue count];
    eventQueue = self->_eventQueue;
    if (v14)
    {
      v22[0] = v6;
      v19 = @"kCMContinuityCaptureEventName";
      v20 = @"kCMContinuityCaptureEventEnqueueTime";
      v11 = CMContinuityCaptureGetCurrentTimeString();
      v21 = @"kCMContinuityCaptureEventData";
      v22[1] = v11;
      v22[2] = v8;
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v19 count:3];
      [(NSMutableArray *)eventQueue addObject:v16, v19, v20];
    }

    else
    {
      v24[0] = v6;
      v23[0] = @"kCMContinuityCaptureEventName";
      v23[1] = @"kCMContinuityCaptureEventEnqueueTime";
      v17 = CMContinuityCaptureGetCurrentTimeString();
      v23[2] = @"kCMContinuityCaptureEventData";
      v24[1] = v17;
      v24[2] = v8;
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:3];
      [(NSMutableArray *)eventQueue addObject:v18];

      if ([(CMContinuityCaptureStateMachine *)self postEventWithName:v6 data:v8])
      {
LABEL_17:

        goto LABEL_18;
      }

      v11 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"ContinuityCapture" code:2 userInfo:0];
      [(CMContinuityCaptureStateMachine *)self _notifyCompletion:v11];
    }

LABEL_16:

    goto LABEL_17;
  }

  v9 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [(CMContinuityCaptureStateMachine *)self _enqueueEventWithNameToPost:v6 data:v9];
  }

  if (v7)
  {
    v10 = [v7 objectForKeyedSubscript:@"CMContinuityCaptureStateMachineEventDataCompletionBlock"];

    if (v10)
    {
      v8 = [v7 objectForKeyedSubscript:@"CMContinuityCaptureStateMachineEventDataCompletionBlock"];
      v11 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"ContinuityCapture" code:2 userInfo:0];
      (*(v8 + 2))(v8, v11);
      goto LABEL_16;
    }
  }

LABEL_18:
}

- (void)enqueueEventWithNameToPost:(id)a3 data:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  queue = self->_queue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __67__CMContinuityCaptureStateMachine_enqueueEventWithNameToPost_data___block_invoke;
  v11[3] = &unk_278D5C120;
  objc_copyWeak(&v14, &location);
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __67__CMContinuityCaptureStateMachine_enqueueEventWithNameToPost_data___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _enqueueEventWithNameToPost:*(a1 + 32) data:*(a1 + 40)];
    WeakRetained = v3;
  }
}

- (void)aggregateEvents
{
  v3 = objc_alloc(MEMORY[0x277CBEB18]);
  WeakRetained = objc_loadWeakRetained(&self->_actionDelegate);
  v4 = [WeakRetained aggregateEvents:self->_eventQueue];
  v5 = [v3 initWithArray:v4];
  eventQueue = self->_eventQueue;
  self->_eventQueue = v5;
}

- (void)notifyCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__CMContinuityCaptureStateMachine_notifyCompletion___block_invoke;
  block[3] = &unk_278D5C0A8;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __52__CMContinuityCaptureStateMachine_notifyCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _notifyCompletion:*(a1 + 32)];
    WeakRetained = v3;
  }
}

- (void)_notifyCompletion:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  WeakRetained = objc_loadWeakRetained(&self->_actionDelegate);
  v39 = self;
  eventQueue = self->_eventQueue;
  p_eventQueue = &self->_eventQueue;
  if ([(NSMutableArray *)eventQueue count])
  {
    v8 = CMContinuityCaptureLog(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_loadWeakRetained(&v39->_actionDelegate);
      currentState = v39->_currentState;
      v11 = [(NSMutableArray *)v39->_eventQueue firstObject];
      v12 = [v11 objectForKeyedSubscript:@"kCMContinuityCaptureEventName"];
      v13 = [(NSMutableArray *)v39->_eventQueue firstObject];
      v14 = [v13 objectForKeyedSubscript:@"kCMContinuityCaptureEventEnqueueTime"];
      *buf = 138544130;
      v46 = v9;
      v47 = 2114;
      v48 = currentState;
      v49 = 2114;
      v50 = v12;
      v51 = 2114;
      v52 = v14;
      _os_log_impl(&dword_242545000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ currentState: %{public}@ completedEvent Name:%{public}@ EnqueueTime:%{public}@", buf, 0x2Au);
    }

    if (WeakRetained)
    {
      v15 = objc_loadWeakRetained(&v39->_actionDelegate);
      v16 = [(NSMutableArray *)*p_eventQueue firstObject];
      v17 = [v16 objectForKeyedSubscript:@"kCMContinuityCaptureEventName"];
      v18 = [(NSMutableArray *)*p_eventQueue firstObject];
      v19 = [v18 objectForKeyedSubscript:@"kCMContinuityCaptureEventData"];
      [v15 postActionCompletionForEventName:v17 eventData:v19 error:v4];
    }

    [(NSMutableArray *)*p_eventQueue removeObjectAtIndex:0];
    if (CMContinityCaptureDebugLogEnabled())
    {
      v20 = CMContinuityCaptureLog(0);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        [(CMContinuityCaptureStateMachine *)&v39->_actionDelegate _notifyCompletion:v20];
      }
    }

    if ([(NSMutableArray *)*p_eventQueue count])
    {
      v38 = v4;
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v37 = p_eventQueue;
      v21 = *p_eventQueue;
      v22 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v41 objects:v40 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v42;
        do
        {
          for (i = 0; i != v23; ++i)
          {
            if (*v42 != v24)
            {
              objc_enumerationMutation(v21);
            }

            v26 = *(*(&v41 + 1) + 8 * i);
            v27 = CMContinuityCaptureLog(0);
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
            {
              v28 = objc_loadWeakRetained(&v39->_actionDelegate);
              v29 = [v26 objectForKeyedSubscript:@"kCMContinuityCaptureEventName"];
              v30 = [v26 objectForKeyedSubscript:@"kCMContinuityCaptureEventEnqueueTime"];
              *buf = 138543874;
              v46 = v28;
              v47 = 2114;
              v48 = v29;
              v49 = 2114;
              v50 = v30;
              _os_log_impl(&dword_242545000, v27, OS_LOG_TYPE_DEFAULT, "%{public}@ pendingEvent Name:%{public}@ EnqueueTime:%{public}@", buf, 0x20u);
            }
          }

          v23 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v41 objects:v40 count:16];
        }

        while (v23);
      }

      [(CMContinuityCaptureStateMachine *)v39 aggregateEvents];
      v4 = v38;
      p_eventQueue = v37;
    }

    if ([(NSMutableArray *)*p_eventQueue count])
    {
      v31 = [(NSMutableArray *)v39->_eventQueue objectAtIndexedSubscript:0];
      v32 = [v31 objectForKeyedSubscript:@"kCMContinuityCaptureEventName"];
      v33 = [(NSMutableArray *)v39->_eventQueue objectAtIndexedSubscript:0];
      v34 = [v33 objectForKeyedSubscript:@"kCMContinuityCaptureEventData"];
      v35 = [(CMContinuityCaptureStateMachine *)v39 postEventWithName:v32 data:v34];

      if (!v35)
      {
        v36 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"ContinuityCapture" code:2 userInfo:0];
        [(CMContinuityCaptureStateMachine *)v39 _notifyCompletion:v36];
      }
    }
  }
}

- (BOOL)postEventWithName:(id)a3 data:(id)a4
{
  v6 = a3;
  v7 = a4;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v8 = self;
  objc_sync_enter(v8);
  v9 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:v8->_transactions];
  objc_sync_exit(v8);

  if (v9)
  {
    v10 = [(CMContinuityCaptureStateMachine *)v8 currentState];

    if (v10)
    {
      v11 = [(NSMutableDictionary *)v8->_events objectForKeyedSubscript:v6];
      v10 = v11;
      if (v11)
      {
        [v11 setData:v7];
        v12 = CMContinuityCaptureLog(0);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          WeakRetained = objc_loadWeakRetained(&v8->_actionDelegate);
          v14 = [(CMContinuityCaptureStateMachine *)v8 currentState];
          v15 = [v14 name];
          *buf = 138543874;
          v24 = WeakRetained;
          v25 = 2114;
          v26 = v10;
          v27 = 2114;
          v28 = v15;
          _os_log_impl(&dword_242545000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ Post event %{public}@ on currentState %{public}@", buf, 0x20u);
        }

        v16 = [v10 action];

        if (v16)
        {
          v17 = [v10 action];
          v17[2]();
        }

        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = __58__CMContinuityCaptureStateMachine_postEventWithName_data___block_invoke;
        v20[3] = &unk_278D5C9C8;
        v20[4] = v8;
        v18 = v10;
        v21 = v18;
        v22 = &v29;
        [v9 enumerateObjectsUsingBlock:v20];
        LOBYTE(v10) = *(v30 + 24);
      }
    }
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  _Block_object_dispose(&v29, 8);
  return v10 & 1;
}

void __58__CMContinuityCaptureStateMachine_postEventWithName_data___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v15 = a2;
  v6 = [*(a1 + 32) currentState];
  v7 = [v15 transactionFromStateOnEvent:v6 event:*(a1 + 40)];

  if (v7)
  {
    v8 = [v7 name];
    v9 = [*(a1 + 32) currentState];
    v10 = [v9 name];
    v11 = [v8 isEqualToString:v10];

    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    if (v11)
    {
      v14 = [v12 postSameStateAction:v7 transition:v15 event:v13];
    }

    else
    {
      v14 = [v12 postStateChangeAction:v7 transition:v15 event:v13];
    }

    *(*(*(a1 + 48) + 8) + 24) = v14;
    *a4 = *(*(*(a1 + 48) + 8) + 24);
  }
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  WeakRetained = objc_loadWeakRetained(&self->_actionDelegate);
  v5 = [v3 stringWithFormat:@"<%p> %@", self, WeakRetained];

  return v5;
}

- (CMContinuityCaptureStateMachine)initWithActionDelegate:(id)a3 queue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v22.receiver = self;
  v22.super_class = CMContinuityCaptureStateMachine;
  v8 = [(CMContinuityCaptureStateMachine *)&v22 init];
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  transactions = v8->_transactions;
  v8->_transactions = v9;

  if (!v8->_transactions)
  {
    goto LABEL_10;
  }

  objc_storeStrong(&v8->_queue, a4);
  if (!v8->_queue)
  {
    goto LABEL_10;
  }

  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  previousStates = v8->_previousStates;
  v8->_previousStates = v11;

  if (!v8->_previousStates)
  {
    goto LABEL_10;
  }

  v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
  deferredEvents = v8->_deferredEvents;
  v8->_deferredEvents = v13;

  if (!v8->_deferredEvents)
  {
    goto LABEL_10;
  }

  v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
  events = v8->_events;
  v8->_events = v15;

  if (!v8->_events)
  {
    goto LABEL_10;
  }

  v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
  eventQueue = v8->_eventQueue;
  v8->_eventQueue = v17;

  if (v8->_eventQueue && (v19 = objc_storeWeak(&v8->_actionDelegate, v6), v6, v6))
  {
    v20 = v8;
  }

  else
  {
LABEL_10:
    v20 = 0;
  }

  return v20;
}

- (void)_enqueueEventWithNameToPost:(os_log_t)log data:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_242545000, log, OS_LOG_TYPE_ERROR, "%@ Invalid SM EventName %@", &v3, 0x16u);
}

- (void)_notifyCompletion:(NSObject *)a3 .cold.1(id *a1, uint64_t *a2, NSObject *a3)
{
  WeakRetained = objc_loadWeakRetained(a1);
  v6 = *a2;
  v7 = 138543618;
  v8 = WeakRetained;
  v9 = 2114;
  v10 = v6;
  _os_log_debug_impl(&dword_242545000, a3, OS_LOG_TYPE_DEBUG, "%{public}@ pendingActions %{public}@", &v7, 0x16u);
}

@end