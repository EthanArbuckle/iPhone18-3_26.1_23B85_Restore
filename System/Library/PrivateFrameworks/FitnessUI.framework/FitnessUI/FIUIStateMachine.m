@interface FIUIStateMachine
- (FIUIStateMachine)initWithLabel:(id)a3 queue:(id)a4;
- (id)description;
- (id)graphDescription;
- (void)_queue_handleEvents;
- (void)_queue_processEvent:(int64_t)a3;
- (void)_queue_setInitialStateIfNeeded:(id)a3;
- (void)addChildStates:(id)a3 toState:(id)a4 withEntryState:(id)a5;
- (void)addState:(id)a3;
- (void)addStates:(id)a3;
- (void)dealloc;
- (void)event:(int64_t)a3;
- (void)eventAsync:(int64_t)a3;
- (void)export;
@end

@implementation FIUIStateMachine

- (id)graphDescription
{
  v82 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v4 = [(NSMutableSet *)self->_states allObjects];
  v56 = [v4 sortedArrayUsingComparator:&__block_literal_global_17];

  v5 = [(FIUIStateMachine *)self label];
  v6 = [v5 stringByReplacingOccurrencesOfString:@" " withString:@"_"];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = @"state_machine";
  }

  v9 = [(FIUIState *)self->_initialState label];
  [v3 appendFormat:@"digraph %@ {\n   rankdir=LR;\n compound=true; \n   node [shape=doublecircle width=1]; %@;\n   node [shape=circle width=1];\n", v8, v9];

  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v58 = self;
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
        v15 = [v14 label];
        [v3 appendFormat:@"subgraph cluster%@ {\n", v15];

        v16 = [v14 label];
        [v3 appendFormat:@"label = <<font color=blue>%@</font>>; \n", v16];

        v72 = 0u;
        v73 = 0u;
        v70 = 0u;
        v71 = 0u;
        v17 = [v14 childStates];
        v18 = [v17 countByEnumeratingWithState:&v70 objects:v80 count:16];
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
                objc_enumerationMutation(v17);
              }

              v22 = [*(*(&v70 + 1) + 8 * j) label];
              [v3 appendFormat:@"%@ ;\n", v22];
            }

            v19 = [v17 countByEnumeratingWithState:&v70 objects:v80 count:16];
          }

          while (v19);
        }

        [v3 appendString:@"}\n"];
      }

      v11 = [(NSMutableSet *)obj countByEnumeratingWithState:&v74 objects:v81 count:16];
    }

    while (v11);
  }

  v23 = [(NSMutableSet *)v58->_parentStates allObjects];
  v24 = [v56 arrayByAddingObjectsFromArray:v23];

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
        v27 = [v26 allTransitions];
        v28 = [v27 sortedArrayUsingComparator:&__block_literal_global_338_0];

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
              v33 = [v26 childStates];
              if ([v33 count])
              {
                v34 = [v26 childStates];
                v35 = [v34 allObjects];
                v36 = [v35 firstObject];
              }

              else
              {
                v36 = v26;
              }

              v37 = [v32 toState];
              v38 = [v37 entryState];
              v39 = [v32 toState];
              v40 = v39;
              if (v38)
              {
                v41 = [v39 entryState];

                v40 = v41;
              }

              v42 = [v36 label];
              v43 = [v40 label];
              v44 = [v32 label];
              [v3 appendFormat:@"   %@ -> %@ [ label = %@ (%ld) ", v42, v43, v44, objc_msgSend(v32, "event")];

              v45 = [v26 childStates];
              v46 = [v45 count];

              if (v46)
              {
                v47 = [v26 label];
                [v3 appendFormat:@", ltail = cluster%@ ", v47];
              }

              v48 = [v32 toState];
              v49 = [v48 entryState];

              if (v49)
              {
                v50 = [v32 toState];
                v51 = [v50 label];
                [v3 appendFormat:@", lhead = cluster%@ ", v51];
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
      v3 = [(NSMutableArray *)self->_pendingEvents firstObject];
      v4 = [v3 longValue];

      [(NSMutableArray *)self->_pendingEvents removeObjectAtIndex:0];
      [(FIUIStateMachine *)self _queue_processEvent:v4];
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

- (FIUIStateMachine)initWithLabel:(id)a3 queue:(id)a4
{
  v7 = a3;
  v8 = a4;
  v18.receiver = self;
  v18.super_class = FIUIStateMachine;
  v9 = [(FIUIStateMachine *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_queue, a4);
    objc_storeStrong(&v10->_label, a3);
    v11 = objc_opt_new();
    states = v10->_states;
    v10->_states = v11;

    v13 = [MEMORY[0x1E695DF70] array];
    pendingEvents = v10->_pendingEvents;
    v10->_pendingEvents = v13;

    v15 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    parentStates = v10->_parentStates;
    v10->_parentStates = v15;
  }

  return v10;
}

- (void)event:(int64_t)a3
{
  dispatch_assert_queue_V2(self->_queue);
  pendingEvents = self->_pendingEvents;
  v6 = [MEMORY[0x1E696AD98] numberWithLong:a3];
  [(NSMutableArray *)pendingEvents addObject:v6];

  [(FIUIStateMachine *)self _queue_handleEvents];
}

- (void)eventAsync:(int64_t)a3
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__FIUIStateMachine_eventAsync___block_invoke;
  block[3] = &unk_1E878CCB8;
  objc_copyWeak(v7, &location);
  v7[1] = a3;
  dispatch_async(queue, block);
  objc_destroyWeak(v7);
  objc_destroyWeak(&location);
}

void __31__FIUIStateMachine_eventAsync___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained event:*(a1 + 40)];
}

- (void)_queue_processEvent:(int64_t)a3
{
  dispatch_assert_queue_V2(self->_queue);
  v5 = self->_state;
  if (v5)
  {
    while (1)
    {
      v6 = [(FIUIState *)v5 transitionForEvent:a3];
      if (v6)
      {
        break;
      }

      v7 = [(FIUIState *)v5 parentState];

      v5 = v7;
      if (!v7)
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
  v9 = [v33 toState];
  v10 = [v33 toState];
  v11 = [v10 entryState];

  if (v11)
  {
    v12 = [v33 toState];
    v13 = [v12 entryState];

    v9 = v13;
  }

  v14 = [(FIUIStateMachine *)self diagnosticHandler];
  v15 = [(FIUIStateMachine *)self errorHandler];
  v31 = [v9 entry];
  v32 = [(FIUIState *)self->_state exit];
  v16 = [v33 handler];
  v30 = [(FIUIStateMachine *)self transitionalEventFilter];
  v17 = [v33 gate];
  if (!v33 && [(FIUIState *)v8 isTransitional])
  {
    v29 = v8;
    transitionalEvents = self->_transitionalEvents;
    if (!transitionalEvents)
    {
      v19 = [MEMORY[0x1E695DF70] array];
      v20 = self->_transitionalEvents;
      self->_transitionalEvents = v19;

      transitionalEvents = self->_transitionalEvents;
    }

    v21 = [MEMORY[0x1E696AD98] numberWithLong:a3];
    [(NSMutableArray *)transitionalEvents addObject:v21];
    v22 = v30;
    goto LABEL_34;
  }

  if (v17 && ((v17)[2](v17, self, self->_state, v9, a3, 0) & 1) == 0)
  {

    v9 = 0;
  }

  v23 = v33;
  if (v14)
  {
    (v14)[2](v14, self, self->_state, v9, a3, 0);
    v23 = v33;
  }

  if (!v23 && v15)
  {
    (v15)[2](v15, self, self->_state, a3, 0);
  }

  if (v9)
  {
    if (v32)
    {
      (*(v32 + 16))();
    }

    objc_storeStrong(&self->_state, v9);
    if (v16)
    {
      (v16)[2](v16, self, v8, v9, a3, 0);
    }

    v24 = v31;
    if (v31)
    {
      (*(v31 + 16))(v31, self, v8, v9, a3, 0);
    }

    if (([v9 isTransitional] & 1) == 0)
    {
      v22 = v30;
      if (![(NSMutableArray *)self->_transitionalEvents count])
      {
LABEL_35:
        v28 = v32;
        goto LABEL_38;
      }

      v29 = v8;
      v21 = self->_transitionalEvents;
      v25 = self->_transitionalEvents;
      self->_transitionalEvents = 0;

      if (v30)
      {
        v26 = (*(v30 + 16))(v30, self, v9, v21, 0);

        v21 = v26;
      }

      if ([(NSMutableArray *)v21 count])
      {
        v27 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndexesInRange:{0, -[NSMutableArray count](v21, "count")}];
        [(NSMutableArray *)self->_pendingEvents insertObjects:v21 atIndexes:v27];
      }

LABEL_34:

      v8 = v29;
      v24 = v31;
      goto LABEL_35;
    }
  }

  else
  {
    v24 = v31;
  }

  v28 = v32;
  v22 = v30;
LABEL_38:
}

- (void)_queue_setInitialStateIfNeeded:(id)a3
{
  v5 = a3;
  dispatch_assert_queue_V2(self->_queue);
  if (!self->_state)
  {
    objc_storeStrong(&self->_state, a3);
    objc_storeStrong(&self->_initialState, a3);
  }
}

- (void)addState:(id)a3
{
  queue = self->_queue;
  v5 = a3;
  dispatch_assert_queue_V2(queue);
  [(NSMutableSet *)self->_states addObject:v5];
  [(FIUIStateMachine *)self _queue_setInitialStateIfNeeded:v5];
}

- (void)addStates:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = v4;
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

  v10 = [v5 firstObject];
  [(FIUIStateMachine *)self _queue_setInitialStateIfNeeded:v10];
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
  v4 = [(FIUIStateMachine *)self label];
  v3 = [(FIUIStateMachine *)self graphDescription];
  [FIUIStateMachineExporter exportWithName:v4 graphDescription:v3];
}

- (void)addChildStates:(id)a3 toState:(id)a4 withEntryState:(id)a5
{
  parentStates = self->_parentStates;
  v8 = a5;
  v9 = a4;
  v10 = a3;
  [(NSMutableSet *)parentStates addObject:v9];
  [v9 addChildStates:v10 withEntryState:v8];
}

@end