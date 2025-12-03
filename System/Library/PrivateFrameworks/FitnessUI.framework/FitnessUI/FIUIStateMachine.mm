@interface FIUIStateMachine
- (FIUIStateMachine)initWithLabel:(id)label queue:(id)queue;
- (id)description;
- (id)graphDescription;
- (void)_queue_handleEvents;
- (void)_queue_processEvent:(int64_t)event;
- (void)_queue_setInitialStateIfNeeded:(id)needed;
- (void)addChildStates:(id)states toState:(id)state withEntryState:(id)entryState;
- (void)addState:(id)state;
- (void)addStates:(id)states;
- (void)dealloc;
- (void)event:(int64_t)event;
- (void)eventAsync:(int64_t)async;
- (void)export;
@end

@implementation FIUIStateMachine

- (id)graphDescription
{
  v82 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  allObjects = [(NSMutableSet *)self->_states allObjects];
  v56 = [allObjects sortedArrayUsingComparator:&__block_literal_global_17];

  label = [(FIUIStateMachine *)self label];
  v6 = [label stringByReplacingOccurrencesOfString:@" " withString:@"_"];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = @"state_machine";
  }

  label2 = [(FIUIState *)self->_initialState label];
  [v3 appendFormat:@"digraph %@ {\n   rankdir=LR;\n compound=true; \n   node [shape=doublecircle width=1]; %@;\n   node [shape=circle width=1];\n", v8, label2];

  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  selfCopy = self;
  obj = self->_parentStates;
  v10 = [(NSMutableSet *)obj countByEnumeratingWithState:&v74 objects:v81 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v75;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v75 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v74 + 1) + 8 * i);
        label3 = [v14 label];
        [v3 appendFormat:@"subgraph cluster%@ {\n", label3];

        label4 = [v14 label];
        [v3 appendFormat:@"label = <<font color=blue>%@</font>>; \n", label4];

        v72 = 0u;
        v73 = 0u;
        v70 = 0u;
        v71 = 0u;
        childStates = [v14 childStates];
        v18 = [childStates countByEnumeratingWithState:&v70 objects:v80 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v71;
          do
          {
            for (j = 0; j != v19; ++j)
            {
              if (*v71 != v20)
              {
                objc_enumerationMutation(childStates);
              }

              label5 = [*(*(&v70 + 1) + 8 * j) label];
              [v3 appendFormat:@"%@ ;\n", label5];
            }

            v19 = [childStates countByEnumeratingWithState:&v70 objects:v80 count:16];
          }

          while (v19);
        }

        [v3 appendString:@"}\n"];
      }

      v11 = [(NSMutableSet *)obj countByEnumeratingWithState:&v74 objects:v81 count:16];
    }

    while (v11);
  }

  allObjects2 = [(NSMutableSet *)selfCopy->_parentStates allObjects];
  v24 = [v56 arrayByAddingObjectsFromArray:allObjects2];

  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v53 = v24;
  v55 = [v53 countByEnumeratingWithState:&v66 objects:v79 count:16];
  if (v55)
  {
    v54 = *v67;
    do
    {
      v25 = 0;
      do
      {
        if (*v67 != v54)
        {
          objc_enumerationMutation(v53);
        }

        v57 = v25;
        v26 = *(*(&v66 + 1) + 8 * v25);
        v62 = 0u;
        v63 = 0u;
        v64 = 0u;
        v65 = 0u;
        allTransitions = [v26 allTransitions];
        v28 = [allTransitions sortedArrayUsingComparator:&__block_literal_global_338_0];

        v59 = v28;
        v29 = [v28 countByEnumeratingWithState:&v62 objects:v78 count:16];
        if (v29)
        {
          v30 = v29;
          obja = *v63;
          do
          {
            for (k = 0; k != v30; ++k)
            {
              if (*v63 != obja)
              {
                objc_enumerationMutation(v59);
              }

              v32 = *(*(&v62 + 1) + 8 * k);
              childStates2 = [v26 childStates];
              if ([childStates2 count])
              {
                childStates3 = [v26 childStates];
                allObjects3 = [childStates3 allObjects];
                firstObject = [allObjects3 firstObject];
              }

              else
              {
                firstObject = v26;
              }

              toState = [v32 toState];
              entryState = [toState entryState];
              toState2 = [v32 toState];
              v40 = toState2;
              if (entryState)
              {
                entryState2 = [toState2 entryState];

                v40 = entryState2;
              }

              label6 = [firstObject label];
              label7 = [v40 label];
              label8 = [v32 label];
              [v3 appendFormat:@"   %@ -> %@ [ label = %@ (%ld) ", label6, label7, label8, objc_msgSend(v32, "event")];

              childStates4 = [v26 childStates];
              v46 = [childStates4 count];

              if (v46)
              {
                label9 = [v26 label];
                [v3 appendFormat:@", ltail = cluster%@ ", label9];
              }

              toState3 = [v32 toState];
              entryState3 = [toState3 entryState];

              if (entryState3)
              {
                toState4 = [v32 toState];
                label10 = [toState4 label];
                [v3 appendFormat:@", lhead = cluster%@ ", label10];
              }

              [v3 appendString:@"];\n"];
            }

            v30 = [v59 countByEnumeratingWithState:&v62 objects:v78 count:16];
          }

          while (v30);
        }

        v25 = v57 + 1;
      }

      while (v57 + 1 != v55);
      v55 = [v53 countByEnumeratingWithState:&v66 objects:v79 count:16];
    }

    while (v55);
  }

  [v3 appendString:@"}"];

  return v3;
}

uint64_t __36__FIUIStateMachine_graphDescription__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 label];
  v6 = [v4 label];

  v7 = [v5 compare:v6];
  return v7;
}

uint64_t __36__FIUIStateMachine_graphDescription__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 label];
  v6 = [v4 label];

  v7 = [v5 compare:v6];
  return v7;
}

- (void)_queue_handleEvents
{
  dispatch_assert_queue_V2(self->_queue);
  if (!self->_handlingEvent)
  {
    self->_handlingEvent = 1;
    while ([(NSMutableArray *)self->_pendingEvents count])
    {
      firstObject = [(NSMutableArray *)self->_pendingEvents firstObject];
      longValue = [firstObject longValue];

      [(NSMutableArray *)self->_pendingEvents removeObjectAtIndex:0];
      [(FIUIStateMachine *)self _queue_processEvent:longValue];
    }

    self->_handlingEvent = 0;
  }
}

- (void)dealloc
{
  dispatch_queue_set_specific(self->_queue, self, 0, 0);
  v3.receiver = self;
  v3.super_class = FIUIStateMachine;
  [(FIUIStateMachine *)&v3 dealloc];
}

- (FIUIStateMachine)initWithLabel:(id)label queue:(id)queue
{
  labelCopy = label;
  queueCopy = queue;
  v18.receiver = self;
  v18.super_class = FIUIStateMachine;
  v9 = [(FIUIStateMachine *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_queue, queue);
    objc_storeStrong(&v10->_label, label);
    v11 = objc_opt_new();
    states = v10->_states;
    v10->_states = v11;

    array = [MEMORY[0x1E695DF70] array];
    pendingEvents = v10->_pendingEvents;
    v10->_pendingEvents = array;

    v15 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    parentStates = v10->_parentStates;
    v10->_parentStates = v15;
  }

  return v10;
}

- (void)event:(int64_t)event
{
  dispatch_assert_queue_V2(self->_queue);
  pendingEvents = self->_pendingEvents;
  v6 = [MEMORY[0x1E696AD98] numberWithLong:event];
  [(NSMutableArray *)pendingEvents addObject:v6];

  [(FIUIStateMachine *)self _queue_handleEvents];
}

- (void)eventAsync:(int64_t)async
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__FIUIStateMachine_eventAsync___block_invoke;
  block[3] = &unk_1E878CCB8;
  objc_copyWeak(v7, &location);
  v7[1] = async;
  dispatch_async(queue, block);
  objc_destroyWeak(v7);
  objc_destroyWeak(&location);
}

void __31__FIUIStateMachine_eventAsync___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained event:*(a1 + 40)];
}

- (void)_queue_processEvent:(int64_t)event
{
  dispatch_assert_queue_V2(self->_queue);
  v5 = self->_state;
  if (v5)
  {
    while (1)
    {
      v6 = [(FIUIState *)v5 transitionForEvent:event];
      if (v6)
      {
        break;
      }

      parentState = [(FIUIState *)v5 parentState];

      v5 = parentState;
      if (!parentState)
      {
        goto LABEL_4;
      }
    }

    v33 = v6;
  }

  else
  {
LABEL_4:
    v33 = 0;
  }

  v8 = self->_state;
  toState = [v33 toState];
  toState2 = [v33 toState];
  entryState = [toState2 entryState];

  if (entryState)
  {
    toState3 = [v33 toState];
    entryState2 = [toState3 entryState];

    toState = entryState2;
  }

  diagnosticHandler = [(FIUIStateMachine *)self diagnosticHandler];
  errorHandler = [(FIUIStateMachine *)self errorHandler];
  entry = [toState entry];
  exit = [(FIUIState *)self->_state exit];
  handler = [v33 handler];
  transitionalEventFilter = [(FIUIStateMachine *)self transitionalEventFilter];
  gate = [v33 gate];
  if (!v33 && [(FIUIState *)v8 isTransitional])
  {
    v29 = v8;
    transitionalEvents = self->_transitionalEvents;
    if (!transitionalEvents)
    {
      array = [MEMORY[0x1E695DF70] array];
      v20 = self->_transitionalEvents;
      self->_transitionalEvents = array;

      transitionalEvents = self->_transitionalEvents;
    }

    v21 = [MEMORY[0x1E696AD98] numberWithLong:event];
    [(NSMutableArray *)transitionalEvents addObject:v21];
    v22 = transitionalEventFilter;
    goto LABEL_34;
  }

  if (gate && ((gate)[2](gate, self, self->_state, toState, event, 0) & 1) == 0)
  {

    toState = 0;
  }

  v23 = v33;
  if (diagnosticHandler)
  {
    (diagnosticHandler)[2](diagnosticHandler, self, self->_state, toState, event, 0);
    v23 = v33;
  }

  if (!v23 && errorHandler)
  {
    (errorHandler)[2](errorHandler, self, self->_state, event, 0);
  }

  if (toState)
  {
    if (exit)
    {
      (*(exit + 16))();
    }

    objc_storeStrong(&self->_state, toState);
    if (handler)
    {
      (handler)[2](handler, self, v8, toState, event, 0);
    }

    v24 = entry;
    if (entry)
    {
      (*(entry + 16))(entry, self, v8, toState, event, 0);
    }

    if (([toState isTransitional] & 1) == 0)
    {
      v22 = transitionalEventFilter;
      if (![(NSMutableArray *)self->_transitionalEvents count])
      {
LABEL_35:
        v28 = exit;
        goto LABEL_38;
      }

      v29 = v8;
      v21 = self->_transitionalEvents;
      v25 = self->_transitionalEvents;
      self->_transitionalEvents = 0;

      if (transitionalEventFilter)
      {
        v26 = (*(transitionalEventFilter + 16))(transitionalEventFilter, self, toState, v21, 0);

        v21 = v26;
      }

      if ([(NSMutableArray *)v21 count])
      {
        v27 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndexesInRange:{0, -[NSMutableArray count](v21, "count")}];
        [(NSMutableArray *)self->_pendingEvents insertObjects:v21 atIndexes:v27];
      }

LABEL_34:

      v8 = v29;
      v24 = entry;
      goto LABEL_35;
    }
  }

  else
  {
    v24 = entry;
  }

  v28 = exit;
  v22 = transitionalEventFilter;
LABEL_38:
}

- (void)_queue_setInitialStateIfNeeded:(id)needed
{
  neededCopy = needed;
  dispatch_assert_queue_V2(self->_queue);
  if (!self->_state)
  {
    objc_storeStrong(&self->_state, needed);
    objc_storeStrong(&self->_initialState, needed);
  }
}

- (void)addState:(id)state
{
  queue = self->_queue;
  stateCopy = state;
  dispatch_assert_queue_V2(queue);
  [(NSMutableSet *)self->_states addObject:stateCopy];
  [(FIUIStateMachine *)self _queue_setInitialStateIfNeeded:stateCopy];
}

- (void)addStates:(id)states
{
  v16 = *MEMORY[0x1E69E9840];
  statesCopy = states;
  dispatch_assert_queue_V2(self->_queue);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = statesCopy;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(NSMutableSet *)self->_states addObject:*(*(&v11 + 1) + 8 * v9++), v11];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  firstObject = [v5 firstObject];
  [(FIUIStateMachine *)self _queue_setInitialStateIfNeeded:firstObject];
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = FIUIStateMachine;
  v3 = [(FIUIStateMachine *)&v6 description];
  v4 = [v3 stringByAppendingFormat:@"(%s)", dispatch_queue_get_label(self->_queue)];

  return v4;
}

- (void)export
{
  label = [(FIUIStateMachine *)self label];
  graphDescription = [(FIUIStateMachine *)self graphDescription];
  [FIUIStateMachineExporter exportWithName:label graphDescription:graphDescription];
}

- (void)addChildStates:(id)states toState:(id)state withEntryState:(id)entryState
{
  parentStates = self->_parentStates;
  entryStateCopy = entryState;
  stateCopy = state;
  statesCopy = states;
  [(NSMutableSet *)parentStates addObject:stateCopy];
  [stateCopy addChildStates:statesCopy withEntryState:entryStateCopy];
}

@end