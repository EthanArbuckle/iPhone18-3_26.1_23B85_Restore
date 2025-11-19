@interface CUStateMachine
- (void)_firstTimeInit;
- (void)dealloc;
- (void)dispatchEvent:(id)a3;
- (void)invalidate;
- (void)start;
- (void)transitionToState:(id)a3;
@end

@implementation CUStateMachine

- (void)_firstTimeInit
{
  v85 = *MEMORY[0x1E69E9840];
  v3 = [(NSArray *)self->_states count];
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v63 = self;
  v4 = self->_states;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v78 objects:v84 count:16];
  if (v5)
  {
    v13 = v5;
    v14 = 0;
    v15 = *v79;
    do
    {
      v16 = 0;
      v17 = v14;
      do
      {
        if (*v79 != v15)
        {
          objc_enumerationMutation(v4);
        }

        v18 = *(*(&v78 + 1) + 8 * v16);
        if (*(v18 + 24))
        {
          FatalErrorF("Duplicate state %@", v6, v7, v8, v9, v10, v11, v12, *(*(&v78 + 1) + 8 * v16));
        }

        v14 = v17 + 1;
        *(v18 + 16) = v17;
        v19 = [objc_alloc(MEMORY[0x1E696AE08]) initWithOptions:2];
        v20 = *(v18 + 24);
        *(v18 + 24) = v19;

        [*(v18 + 24) setCount:v3];
        ++v16;
        ++v17;
      }

      while (v13 != v16);
      v13 = [(NSArray *)v4 countByEnumeratingWithState:&v78 objects:v84 count:16];
    }

    while (v13);
  }

  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  obj = v63->_states;
  v64 = [(NSArray *)obj countByEnumeratingWithState:&v74 objects:v83 count:16];
  v21 = 0;
  if (v64)
  {
    v62 = *v75;
    do
    {
      v22 = 0;
      do
      {
        if (*v75 != v62)
        {
          objc_enumerationMutation(obj);
        }

        v65 = v22;
        v23 = *(*(&v74 + 1) + 8 * v22);
        v70 = 0u;
        v71 = 0u;
        v72 = 0u;
        v73 = 0u;
        v24 = v63->_states;
        v25 = [(NSArray *)v24 countByEnumeratingWithState:&v70 objects:v82 count:16];
        if (v25)
        {
          v26 = v25;
          v27 = *v71;
          v66 = *v71;
          v67 = v24;
          do
          {
            v28 = 0;
            v68 = v26;
            do
            {
              if (*v71 != v27)
              {
                objc_enumerationMutation(v24);
              }

              v29 = *(*(&v70 + 1) + 8 * v28);
              if (v29 == v23)
              {
                [*(v23 + 24) replacePointerAtIndex:*(v29 + 16) withPointer:*(*(&v70 + 1) + 8 * v28)];
              }

              else
              {
                v30 = [*(v29 + 24) pointerAtIndex:*(v23 + 16)];
                if (v30)
                {
                  v31 = v30;
                  [*(v23 + 24) replacePointerAtIndex:*(v29 + 16) withPointer:v30];
                }

                else
                {
                  v32 = objc_alloc_init(MEMORY[0x1E695DF70]);
                  v33 = v23;
                  do
                  {
                    [v32 insertObject:v33 atIndex:0];
                    v34 = v33[5];

                    v33 = v34;
                  }

                  while (v34);
                  v35 = objc_alloc_init(MEMORY[0x1E695DF70]);
                  v36 = v29;
                  v37 = v36;
                  if (v36)
                  {
                    do
                    {
                      [v35 insertObject:v37 atIndex:0];
                      v38 = v37[5];

                      v37 = v38;
                    }

                    while (v38);
                  }

                  v39 = [v32 count];
                  if (v39 >= [v35 count])
                  {
                    v40 = v35;
                  }

                  else
                  {
                    v40 = v32;
                  }

                  v41 = [v40 count];
                  if (!v41)
                  {
                    goto LABEL_50;
                  }

                  v49 = v41;
                  v69 = v21;
                  v50 = 0;
                  v51 = 0;
                  while (1)
                  {
                    v31 = [v32 objectAtIndexedSubscript:v50];
                    v52 = [v35 objectAtIndexedSubscript:v50];

                    if (v31 != v52)
                    {
                      break;
                    }

                    ++v50;
                    v51 = v31;
                    if (v49 == v50)
                    {
                      goto LABEL_36;
                    }
                  }

                  v31 = v51;
LABEL_36:
                  v21 = v69;
                  if (!v31)
                  {
LABEL_50:
                    FatalErrorF("Find LCA failed...invalid state graph", v42, v43, v44, v45, v46, v47, v48, v60);
                  }

                  [*(v23 + 24) replacePointerAtIndex:v36[2] withPointer:v31];
                  v53 = [v32 count];
                  if (v53 <= [v35 count])
                  {
                    v54 = v35;
                  }

                  else
                  {
                    v54 = v32;
                  }

                  v55 = [v54 count];
                  if (v55 > v69)
                  {
                    v21 = v55;
                  }

                  v27 = v66;
                  v24 = v67;
                  v26 = v68;
                }
              }

              ++v28;
            }

            while (v28 != v26);
            v26 = [(NSArray *)v24 countByEnumeratingWithState:&v70 objects:v82 count:16];
          }

          while (v26);
        }

        v22 = v65 + 1;
      }

      while (v65 + 1 != v64);
      v64 = [(NSArray *)obj countByEnumeratingWithState:&v74 objects:v83 count:16];
    }

    while (v64);
  }

  v56 = objc_alloc_init(MEMORY[0x1E695DF70]);
  eventQueue = v63->_eventQueue;
  v63->_eventQueue = v56;

  v58 = [objc_alloc(MEMORY[0x1E696AE08]) initWithOptions:2];
  lcaPath = v63->_lcaPath;
  v63->_lcaPath = v58;

  [(NSPointerArray *)v63->_lcaPath setCount:v21];
  v63->_started = 1;
}

- (void)transitionToState:(id)a3
{
  v4 = a3;
  if (!self->_dispatching)
  {
    FatalErrorF("Transition to state %@ only allowed from a state handler", v5, v6, v7, v8, v9, v10, v11, v4);
  }

  if (self->_targetState)
  {
    FatalErrorF("Transition to state %@ while transitioning to state %@", v5, v6, v7, v8, v9, v10, v11, v4);
  }

  self->_targetState = v4;

  MEMORY[0x1EEE66BB8](v4, 0);
}

- (void)dispatchEvent:(id)a3
{
  v4 = a3;
  v52 = v4;
  if (self->_dispatching)
  {
    [(NSMutableArray *)self->_eventQueue addObject:v4];
  }

  else
  {
    v5 = v4;
    p_currentState = &self->_currentState;
    v7 = self->_currentState;
    while (1)
    {
      v8 = v7;
      while (1)
      {
        self->_dispatching = 1;
        v9 = (*(*(v8 + 8) + 16))();
        self->_dispatching = 0;
        if (v9 != 1)
        {
          break;
        }

        if (self->_targetState)
        {
          FatalErrorF("State %@ unhandled, but transitioned to state %@", v10, v11, v12, v13, v14, v15, v16, v8);
        }

        v17 = *(v8 + 40);

        v8 = v17;
        if (!v17)
        {
          FatalErrorF("Event %@ unhandled\n", v18, v19, v20, v21, v22, v23, v24, v5);
        }
      }

      if (v9 != 2)
      {
        FatalErrorF("State %@ bad result %ld", v10, v11, v12, v13, v14, v15, v16, v8);
      }

      self->_dispatching = 1;
      while (1)
      {
        targetState = self->_targetState;
        if (!targetState)
        {
          break;
        }

        v26 = [*(v8 + 24) pointerAtIndex:targetState->_index];
        for (i = *p_currentState; *p_currentState != v26; i = *p_currentState)
        {
          eventHandler = i->_eventHandler;
          v29 = +[CUStateEvent exitState];
          eventHandler[2](eventHandler, v29);

          objc_storeStrong(&self->_currentState, (*p_currentState)->_parent);
        }

        v30 = self->_targetState;
        if (v8 == v30)
        {
          v44 = *(v8 + 8);
          v45 = +[CUStateEvent exitState];
          (*(v44 + 16))(v44, v45);

          v46 = *(v8 + 8);
          v47 = +[CUStateEvent enterState];
          (*(v46 + 16))(v46, v47);

          objc_storeStrong(&self->_currentState, v8);
        }

        else
        {
          v31 = v30;

          if (v31 == v26)
          {
            v8 = v31;
          }

          else
          {
            v39 = 0;
            do
            {
              v40 = v31;
              v41 = v39++;
              [(NSPointerArray *)self->_lcaPath replacePointerAtIndex:v41 withPointer:v31];
              v31 = v31[5];
            }

            while (v31 != v26);
            v8 = v31;
            if (v39)
            {
              do
              {
                v8 = [(NSPointerArray *)self->_lcaPath pointerAtIndex:v41];

                v42 = *(v8 + 8);
                v43 = +[CUStateEvent enterState];
                (*(v42 + 16))(v42, v43);

                objc_storeStrong(&self->_currentState, v8);
                --v41;
                v31 = v8;
              }

              while (v41 != -1);
            }
          }
        }

        v48 = self->_targetState;
        if (self->_currentState != v48)
        {
          FatalErrorF("Transitioned state %@ not target %@", v32, v33, v34, v35, v36, v37, v38, self->_currentState);
        }

        self->_targetState = 0;

        v49 = self->_currentState->_eventHandler;
        v50 = +[CUStateEvent initialTransition];
        v49[2](v49, v50);
      }

      self->_dispatching = 0;
      v7 = self->_currentState;

      v51 = [(NSMutableArray *)self->_eventQueue firstObject];

      if (!v51)
      {
        break;
      }

      v5 = v51;

      [(NSMutableArray *)self->_eventQueue removeObjectAtIndex:0];
    }
  }
}

- (void)invalidate
{
  v19 = *MEMORY[0x1E69E9840];
  currentState = self->_currentState;
  self->_currentState = 0;

  [(NSMutableArray *)self->_eventQueue removeAllObjects];
  eventQueue = self->_eventQueue;
  self->_eventQueue = 0;

  [(NSPointerArray *)self->_lcaPath setCount:0];
  lcaPath = self->_lcaPath;
  self->_lcaPath = 0;

  targetState = self->_targetState;
  self->_targetState = 0;

  [(CUState *)self->_initialState invalidate];
  initialState = self->_initialState;
  self->_initialState = 0;

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = self->_states;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v14 + 1) + 8 * v12++) invalidate];
      }

      while (v10 != v12);
      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  states = self->_states;
  self->_states = 0;
}

- (void)start
{
  if (self->_started)
  {
    FatalErrorF("Attempt to start an already-started state machine", a2, v2, v3, v4, v5, v6, v7, v48);
  }

  [(CUStateMachine *)self _firstTimeInit];
  initialState = self->_initialState;
  if (!initialState)
  {
    FatalErrorF("No initial state", v9, v10, v11, v12, v13, v14, v15, v48);
  }

  v17 = initialState;
  v18 = -1;
  do
  {
    v19 = v18++;
    [(NSPointerArray *)self->_lcaPath replacePointerAtIndex:v18 withPointer:v17];
    v20 = v17[5];

    v17 = v20;
  }

  while (v20);
  self->_dispatching = 1;
  if (v19 != -2)
  {
    do
    {
      v21 = [(NSPointerArray *)self->_lcaPath pointerAtIndex:v18];
      eventHandler = v21->_eventHandler;
      v23 = +[CUStateEvent enterState];
      eventHandler[2](eventHandler, v23);

      currentState = self->_currentState;
      self->_currentState = v21;

      --v18;
    }

    while (v18 != -1);
  }

  v25 = self->_currentState->_eventHandler;
  v26 = +[CUStateEvent initialTransition];
  v25[2](v25, v26);

  for (i = self->_targetState; i; i = self->_targetState)
  {
    v28 = i;
    v29 = v28;
    if (v28 == self->_currentState)
    {

LABEL_22:
      FatalErrorF("Bad initial transition %@ -> %@", v33, v34, v35, v36, v37, v38, v39, self->_currentState);
    }

    v30 = 0;
    do
    {
      v31 = v29;
      v32 = v30++;
      [(NSPointerArray *)self->_lcaPath replacePointerAtIndex:v32 withPointer:v29];
      v29 = v29->_parent;
    }

    while (v29 != self->_currentState);

    if (!v30)
    {
      goto LABEL_22;
    }

    do
    {
      v40 = [(NSPointerArray *)self->_lcaPath pointerAtIndex:v32];
      v41 = v40[1];
      v42 = +[CUStateEvent enterState];
      (*(v41 + 16))(v41, v42);

      --v32;
    }

    while (v32 != -1);
    objc_storeStrong(&self->_currentState, self->_targetState);
    targetState = self->_targetState;
    self->_targetState = 0;

    v44 = self->_currentState->_eventHandler;
    v45 = +[CUStateEvent initialTransition];
    v44[2](v44, v45);
  }

  self->_dispatching = 0;
  v46 = [(NSMutableArray *)self->_eventQueue firstObject];
  if (v46)
  {
    v49 = v46;
    v47 = v46;

    [(NSMutableArray *)self->_eventQueue removeObjectAtIndex:0];
    [(CUStateMachine *)self dispatchEvent:v47];
    v46 = v49;
  }
}

- (void)dealloc
{
  if (self->_currentState || self->_targetState)
  {
    FatalErrorF("State machine invalidate not called", a2, v2, v3, v4, v5, v6, v7, v11.receiver);
  }

  [(NSMutableArray *)self->_eventQueue removeAllObjects];
  eventQueue = self->_eventQueue;
  self->_eventQueue = 0;

  [(NSPointerArray *)self->_lcaPath setCount:0];
  lcaPath = self->_lcaPath;
  self->_lcaPath = 0;

  v11.receiver = self;
  v11.super_class = CUStateMachine;
  [(CUStateMachine *)&v11 dealloc];
}

@end