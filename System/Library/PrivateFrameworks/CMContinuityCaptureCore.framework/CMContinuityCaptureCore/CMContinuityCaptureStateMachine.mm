@interface CMContinuityCaptureStateMachine
- (BOOL)postEventWithName:(id)name data:(id)data;
- (BOOL)postSameStateAction:(id)action transition:(id)transition event:(id)event;
- (BOOL)postStateChangeAction:(id)action transition:(id)transition event:(id)event;
- (CMContinuityCaptureStateMachine)initWithActionDelegate:(id)delegate queue:(id)queue;
- (id)description;
- (id)getDeferredEventsToPostForState:(id)state;
- (id)getNewStateAfterPostingDeferredEvents:(id)events deferredEventsToPost:(id *)post;
- (void)_enqueueEventWithNameToPost:(id)post data:(id)data;
- (void)_notifyCompletion:(id)completion;
- (void)addEvents:(id)events;
- (void)addStateTransitions:(id)transitions;
- (void)aggregateEvents;
- (void)enqueueEventWithNameToPost:(id)post data:(id)data;
- (void)notifyCompletion:(id)completion;
@end

@implementation CMContinuityCaptureStateMachine

- (void)addStateTransitions:(id)transitions
{
  transitionsCopy = transitions;
  if (transitionsCopy)
  {
    v6 = transitionsCopy;
    selfCopy = self;
    objc_sync_enter(selfCopy);
    [(NSMutableArray *)selfCopy->_transactions addObjectsFromArray:v6];
    objc_sync_exit(selfCopy);

    transitionsCopy = v6;
  }
}

- (void)addEvents:(id)events
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __45__CMContinuityCaptureStateMachine_addEvents___block_invoke;
  v3[3] = &unk_278D5C9A0;
  v3[4] = self;
  [events enumerateObjectsUsingBlock:v3];
}

void __45__CMContinuityCaptureStateMachine_addEvents___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 24);
  v3 = a2;
  v4 = [v3 name];
  [v2 setObject:v3 forKeyedSubscript:v4];
}

- (BOOL)postSameStateAction:(id)action transition:(id)transition event:(id)event
{
  actionCopy = action;
  transitionCopy = transition;
  eventCopy = event;
  action = [transitionCopy action];

  if (action)
  {
    action2 = [transitionCopy action];
    (action2)[2](action2, eventCopy);
  }

  v13 = CMContinuityCaptureLog(0);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained(&self->_actionDelegate);
    name = [actionCopy name];
    currentState = [(CMContinuityCaptureStateMachine *)self currentState];
    name2 = [currentState name];
    currentState2 = [(CMContinuityCaptureStateMachine *)self currentState];
    [currentState2 pendingEvents];
    v19 = v22 = actionCopy;
    deferredEvents = self->_deferredEvents;
    *buf = 138544642;
    v24 = WeakRetained;
    v25 = 2114;
    v26 = name;
    v27 = 2114;
    v28 = name2;
    v29 = 2114;
    v30 = eventCopy;
    v31 = 2114;
    v32 = v19;
    v33 = 2114;
    v34 = deferredEvents;
    _os_log_impl(&dword_242545000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ Transition to state %{public}@ from %{public}@ on event %{public}@ state pendingEvents %{public}@ deferredEvents %{public}@", buf, 0x3Eu);

    actionCopy = v22;
  }

  return 1;
}

- (id)getDeferredEventsToPostForState:(id)state
{
  stateCopy = state;
  if ([(NSMutableArray *)self->_deferredEvents count])
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    name = [stateCopy name];
    v7 = [name isEqualToString:@"kCMContinuityCaptureStateStreaming"];

    if (v7)
    {
      v8 = [(NSMutableArray *)self->_deferredEvents objectAtIndexedSubscript:0];
      isEntry = [v8 isEntry];

      v10 = isEntry;
      v11 = 1;
      if ([(NSMutableArray *)self->_deferredEvents count]>= 2)
      {
        do
        {
          v12 = [(NSMutableArray *)self->_deferredEvents objectAtIndexedSubscript:0];
          name2 = [v12 name];
          v14 = [(NSMutableArray *)self->_deferredEvents objectAtIndexedSubscript:v11];
          name3 = [v14 name];
          v16 = CMContinuityCaptureSMValidSameStateEventName(name2, name3);

          if (!v16)
          {
            break;
          }

          v17 = [(NSMutableArray *)self->_deferredEvents objectAtIndexedSubscript:v11];
          isEntry2 = [v17 isEntry];

          if (isEntry2)
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
        isEntry3 = [v20 isEntry];

        if (((v10 == 0) ^ isEntry3))
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

- (id)getNewStateAfterPostingDeferredEvents:(id)events deferredEventsToPost:(id *)post
{
  eventsCopy = events;
  v7 = objc_alloc(MEMORY[0x277CBEB18]);
  v8 = [(CMContinuityCaptureStateMachine *)self getDeferredEventsToPostForState:eventsCopy];
  v9 = [v7 initWithArray:v8];

  v10 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v29 = 138543618;
    selfCopy = self;
    v31 = 2114;
    v32 = v9;
    _os_log_impl(&dword_242545000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ Deferred to post %{public}@", &v29, 0x16u);
  }

  if (v9 && [v9 count])
  {
    if (!eventsCopy)
    {
LABEL_8:
      firstObject = [v9 firstObject];
      if (([firstObject isEntry] & 1) != 0 || (objc_msgSend(firstObject, "name"), v16 = objc_claimAutoreleasedReturnValue(), valid = CMContinuityCaptureSMIsValidExitEventForState(v16, @"kCMContinuityCaptureStateStreaming"), v16, (valid & 1) == 0))
      {
        v26 = v9;
        *post = v9;
      }

      else if ([(NSMutableArray *)self->_previousStates count])
      {
        v18 = CMContinuityCaptureLog(2);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          WeakRetained = objc_loadWeakRetained(&self->_actionDelegate);
          lastObject = [(NSMutableArray *)self->_previousStates lastObject];
          v29 = 138544130;
          selfCopy = WeakRetained;
          v31 = 2114;
          v32 = v9;
          v33 = 2114;
          v34 = eventsCopy;
          v35 = 2114;
          v36 = lastObject;
          _os_log_impl(&dword_242545000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ Deferred exit event %{public}@ for state %{public}@ , move to previous state %{public}@", &v29, 0x2Au);
        }

        exitAction = [eventsCopy exitAction];

        if (exitAction)
        {
          exitAction2 = [eventsCopy exitAction];
          firstObject2 = [v9 firstObject];
          (exitAction2)[2](exitAction2, firstObject2);
        }

        lastObject2 = [(NSMutableArray *)self->_previousStates lastObject];
        [(NSMutableArray *)self->_previousStates removeLastObject];
        [v9 removeObjectAtIndex:0];
        v25 = v9;
        *post = v9;
        goto LABEL_18;
      }

      lastObject2 = eventsCopy;
LABEL_18:

      goto LABEL_21;
    }

    name = [eventsCopy name];
    v12 = [name isEqualToString:@"kCMContinuityCaptureStateTerminated"];

    if (!v12)
    {
      name2 = [eventsCopy name];
      v14 = [name2 isEqualToString:@"kCMContinuityCaptureStateStreaming"];

      if (v14)
      {
        goto LABEL_8;
      }

      v27 = v9;
      *post = v9;
    }
  }

  lastObject2 = eventsCopy;
LABEL_21:

  return lastObject2;
}

- (BOOL)postStateChangeAction:(id)action transition:(id)transition event:(id)event
{
  actionCopy = action;
  transitionCopy = transition;
  eventCopy = event;
  if ([eventCopy isEntry])
  {
    goto LABEL_4;
  }

  if (![(NSMutableArray *)self->_previousStates count])
  {
    goto LABEL_10;
  }

  lastObject = [(NSMutableArray *)self->_previousStates lastObject];
  name = [lastObject name];
  name2 = [actionCopy name];
  v14 = [name isEqualToString:name2];

  if (v14)
  {
LABEL_4:
    v15 = CMContinuityCaptureLog(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      WeakRetained = objc_loadWeakRetained(&self->_actionDelegate);
      name3 = [actionCopy name];
      currentState = [(CMContinuityCaptureStateMachine *)self currentState];
      [currentState name];
      v49 = actionCopy;
      v20 = v19 = transitionCopy;
      currentState2 = [(CMContinuityCaptureStateMachine *)self currentState];
      pendingEvents = [currentState2 pendingEvents];
      deferredEvents = self->_deferredEvents;
      *buf = 138544642;
      v54 = WeakRetained;
      v55 = 2114;
      v56 = name3;
      v57 = 2114;
      v58 = v20;
      v59 = 2114;
      v60 = eventCopy;
      v61 = 2114;
      v62 = pendingEvents;
      v63 = 2114;
      v64 = deferredEvents;
      _os_log_impl(&dword_242545000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ Transition to state %{public}@ from %{public}@ on event %{public}@ state pendingEvents %{public}@ deferredEvents %{public}@", buf, 0x3Eu);

      transitionCopy = v19;
      actionCopy = v49;
    }

    currentState3 = [(CMContinuityCaptureStateMachine *)self currentState];
    exitAction = [currentState3 exitAction];

    if (exitAction)
    {
      currentState4 = [(CMContinuityCaptureStateMachine *)self currentState];
      exitAction2 = [currentState4 exitAction];
      (exitAction2)[2](exitAction2, eventCopy);
    }

    isEntry = [eventCopy isEntry];
    previousStates = self->_previousStates;
    if (isEntry)
    {
      currentState5 = [(CMContinuityCaptureStateMachine *)self currentState];
      [(NSMutableArray *)previousStates addObject:currentState5];
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
        currentState6 = [(CMContinuityCaptureStateMachine *)self currentState];
        *buf = 138413058;
        v54 = v47;
        v55 = 2112;
        v56 = eventCopy;
        v57 = 2112;
        v58 = currentState6;
        v59 = 2112;
        v60 = actionCopy;
        _os_log_fault_impl(&dword_242545000, v33, OS_LOG_TYPE_FAULT, "%@ Unexpected SM event %@ current %@ dst %@", buf, 0x2Au);
      }
    }

    action = [transitionCopy action];

    if (action)
    {
      action2 = [transitionCopy action];
      (action2)[2](action2, eventCopy);
    }

    [(CMContinuityCaptureStateMachine *)self willChangeValueForKey:@"currentState"];
    v52 = 0;
    v36 = [(CMContinuityCaptureStateMachine *)self getNewStateAfterPostingDeferredEvents:actionCopy deferredEventsToPost:&v52];
    v32 = v52;
    [(CMContinuityCaptureStateMachine *)self setCurrentState:v36];

    [(CMContinuityCaptureStateMachine *)self didChangeValueForKey:@"currentState"];
    currentState7 = [(CMContinuityCaptureStateMachine *)self currentState];
    entryAction = [currentState7 entryAction];

    if (entryAction)
    {
      currentState8 = [(CMContinuityCaptureStateMachine *)self currentState];
      entryAction2 = [currentState8 entryAction];
      (entryAction2)[2](entryAction2, eventCopy);
    }

    if (v32 && [v32 count])
    {
      v41 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        v42 = objc_loadWeakRetained(&self->_actionDelegate);
        currentState9 = [(CMContinuityCaptureStateMachine *)self currentState];
        *buf = 138543874;
        v54 = v42;
        v55 = 2114;
        v56 = v32;
        v57 = 2114;
        v58 = currentState9;
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

- (void)_enqueueEventWithNameToPost:(id)post data:(id)data
{
  postCopy = post;
  dataCopy = data;
  if (CMContinuityCaptureValidSMEvent(postCopy))
  {
    if (dataCopy)
    {
      v8 = dataCopy;
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
      selfCopy = self;
      v27 = 2114;
      v28 = postCopy;
      v29 = 2114;
      v30 = currentState;
      _os_log_impl(&dword_242545000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ enqueueEvent %{public}@ on current state %{public}@", buf, 0x20u);
    }

    v14 = [(NSMutableArray *)self->_eventQueue count];
    eventQueue = self->_eventQueue;
    if (v14)
    {
      v22[0] = postCopy;
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
      v24[0] = postCopy;
      v23[0] = @"kCMContinuityCaptureEventName";
      v23[1] = @"kCMContinuityCaptureEventEnqueueTime";
      v17 = CMContinuityCaptureGetCurrentTimeString();
      v23[2] = @"kCMContinuityCaptureEventData";
      v24[1] = v17;
      v24[2] = v8;
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:3];
      [(NSMutableArray *)eventQueue addObject:v18];

      if ([(CMContinuityCaptureStateMachine *)self postEventWithName:postCopy data:v8])
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
    [(CMContinuityCaptureStateMachine *)self _enqueueEventWithNameToPost:postCopy data:v9];
  }

  if (dataCopy)
  {
    v10 = [dataCopy objectForKeyedSubscript:@"CMContinuityCaptureStateMachineEventDataCompletionBlock"];

    if (v10)
    {
      v8 = [dataCopy objectForKeyedSubscript:@"CMContinuityCaptureStateMachineEventDataCompletionBlock"];
      v11 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"ContinuityCapture" code:2 userInfo:0];
      (*(v8 + 2))(v8, v11);
      goto LABEL_16;
    }
  }

LABEL_18:
}

- (void)enqueueEventWithNameToPost:(id)post data:(id)data
{
  postCopy = post;
  dataCopy = data;
  objc_initWeak(&location, self);
  queue = self->_queue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __67__CMContinuityCaptureStateMachine_enqueueEventWithNameToPost_data___block_invoke;
  v11[3] = &unk_278D5C120;
  objc_copyWeak(&v14, &location);
  v12 = postCopy;
  v13 = dataCopy;
  v9 = dataCopy;
  v10 = postCopy;
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

- (void)notifyCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__CMContinuityCaptureStateMachine_notifyCompletion___block_invoke;
  block[3] = &unk_278D5C0A8;
  objc_copyWeak(&v9, &location);
  v8 = completionCopy;
  v6 = completionCopy;
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

- (void)_notifyCompletion:(id)completion
{
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_queue);
  WeakRetained = objc_loadWeakRetained(&self->_actionDelegate);
  selfCopy = self;
  eventQueue = self->_eventQueue;
  p_eventQueue = &self->_eventQueue;
  if ([(NSMutableArray *)eventQueue count])
  {
    v8 = CMContinuityCaptureLog(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_loadWeakRetained(&selfCopy->_actionDelegate);
      currentState = selfCopy->_currentState;
      firstObject = [(NSMutableArray *)selfCopy->_eventQueue firstObject];
      v12 = [firstObject objectForKeyedSubscript:@"kCMContinuityCaptureEventName"];
      firstObject2 = [(NSMutableArray *)selfCopy->_eventQueue firstObject];
      v14 = [firstObject2 objectForKeyedSubscript:@"kCMContinuityCaptureEventEnqueueTime"];
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
      v15 = objc_loadWeakRetained(&selfCopy->_actionDelegate);
      firstObject3 = [(NSMutableArray *)*p_eventQueue firstObject];
      v17 = [firstObject3 objectForKeyedSubscript:@"kCMContinuityCaptureEventName"];
      firstObject4 = [(NSMutableArray *)*p_eventQueue firstObject];
      v19 = [firstObject4 objectForKeyedSubscript:@"kCMContinuityCaptureEventData"];
      [v15 postActionCompletionForEventName:v17 eventData:v19 error:completionCopy];
    }

    [(NSMutableArray *)*p_eventQueue removeObjectAtIndex:0];
    if (CMContinityCaptureDebugLogEnabled())
    {
      v20 = CMContinuityCaptureLog(0);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        [(CMContinuityCaptureStateMachine *)&selfCopy->_actionDelegate _notifyCompletion:v20];
      }
    }

    if ([(NSMutableArray *)*p_eventQueue count])
    {
      v38 = completionCopy;
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
              v28 = objc_loadWeakRetained(&selfCopy->_actionDelegate);
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

      [(CMContinuityCaptureStateMachine *)selfCopy aggregateEvents];
      completionCopy = v38;
      p_eventQueue = v37;
    }

    if ([(NSMutableArray *)*p_eventQueue count])
    {
      v31 = [(NSMutableArray *)selfCopy->_eventQueue objectAtIndexedSubscript:0];
      v32 = [v31 objectForKeyedSubscript:@"kCMContinuityCaptureEventName"];
      v33 = [(NSMutableArray *)selfCopy->_eventQueue objectAtIndexedSubscript:0];
      v34 = [v33 objectForKeyedSubscript:@"kCMContinuityCaptureEventData"];
      v35 = [(CMContinuityCaptureStateMachine *)selfCopy postEventWithName:v32 data:v34];

      if (!v35)
      {
        v36 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"ContinuityCapture" code:2 userInfo:0];
        [(CMContinuityCaptureStateMachine *)selfCopy _notifyCompletion:v36];
      }
    }
  }
}

- (BOOL)postEventWithName:(id)name data:(id)data
{
  nameCopy = name;
  dataCopy = data;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v9 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:selfCopy->_transactions];
  objc_sync_exit(selfCopy);

  if (v9)
  {
    currentState = [(CMContinuityCaptureStateMachine *)selfCopy currentState];

    if (currentState)
    {
      v11 = [(NSMutableDictionary *)selfCopy->_events objectForKeyedSubscript:nameCopy];
      currentState = v11;
      if (v11)
      {
        [v11 setData:dataCopy];
        v12 = CMContinuityCaptureLog(0);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          WeakRetained = objc_loadWeakRetained(&selfCopy->_actionDelegate);
          currentState2 = [(CMContinuityCaptureStateMachine *)selfCopy currentState];
          name = [currentState2 name];
          *buf = 138543874;
          v24 = WeakRetained;
          v25 = 2114;
          v26 = currentState;
          v27 = 2114;
          v28 = name;
          _os_log_impl(&dword_242545000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ Post event %{public}@ on currentState %{public}@", buf, 0x20u);
        }

        action = [currentState action];

        if (action)
        {
          action2 = [currentState action];
          action2[2]();
        }

        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = __58__CMContinuityCaptureStateMachine_postEventWithName_data___block_invoke;
        v20[3] = &unk_278D5C9C8;
        v20[4] = selfCopy;
        v18 = currentState;
        v21 = v18;
        v22 = &v29;
        [v9 enumerateObjectsUsingBlock:v20];
        LOBYTE(currentState) = *(v30 + 24);
      }
    }
  }

  else
  {
    LOBYTE(currentState) = 0;
  }

  _Block_object_dispose(&v29, 8);
  return currentState & 1;
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
  weakRetained = [v3 stringWithFormat:@"<%p> %@", self, WeakRetained];

  return weakRetained;
}

- (CMContinuityCaptureStateMachine)initWithActionDelegate:(id)delegate queue:(id)queue
{
  delegateCopy = delegate;
  queueCopy = queue;
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

  objc_storeStrong(&v8->_queue, queue);
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

  if (v8->_eventQueue && (v19 = objc_storeWeak(&v8->_actionDelegate, delegateCopy), delegateCopy, delegateCopy))
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