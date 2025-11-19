@interface NFStateMachine
- (NFStateMachine)initWithState:(id)a3 withOwner:(id)a4;
- (id)debugDescription;
- (id)description;
- (id)fireEventWithName:(id)a3 withContext:(id)a4;
- (id)owner;
- (void)activate;
- (void)activateIfNeeded;
- (void)addEvent:(id)a3;
- (void)addState:(id)a3;
- (void)deactivate;
- (void)deactivateIfNeeded;
@end

@implementation NFStateMachine

- (void)activate
{
  [MEMORY[0x277CCACC8] isMainThread];
  [(NFStateMachine *)self setStatusToken:[(NFStateMachine *)self statusToken]+ 1];
  if (([(NFStateMachine *)self statusToken]& 0x8000000000000000) == 0)
  {

    [(NFStateMachine *)self setStatus:1];
  }
}

- (id)owner
{
  WeakRetained = objc_loadWeakRetained(&self->_owner);

  return WeakRetained;
}

- (NFStateMachine)initWithState:(id)a3 withOwner:(id)a4
{
  v7 = a3;
  v8 = a4;
  v20.receiver = self;
  v20.super_class = NFStateMachine;
  v9 = [(NFStateMachine *)&v20 init];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_owner, v8);
    objc_storeStrong(&v10->_state, a3);
    v10->_status = 0;
    v10->_statusToken = 0;
    v11 = MEMORY[0x277CBEB38];
    v12 = [v7 name];
    v13 = [v11 dictionaryWithObject:v7 forKey:v12];
    states = v10->_states;
    v10->_states = v13;

    v15 = objc_opt_new();
    events = v10->_events;
    v10->_events = v15;

    v17 = [[NFMutexLock alloc] initWithOptions:1];
    lock = v10->_lock;
    v10->_lock = v17;
  }

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(NFStateMachine *)self state];
  v5 = [v3 stringWithFormat:@"{%p state=%@, status=%ld, statusToken=%ld}", self, v4, -[NFStateMachine status](self, "status"), -[NFStateMachine statusToken](self, "statusToken")];

  return v5;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(NFStateMachine *)self state];
  v5 = [(NFStateMachine *)self status];
  v6 = [(NFStateMachine *)self statusToken];
  v7 = [(NFStateMachine *)self states];
  v8 = [(NFStateMachine *)self events];
  v9 = [v3 stringWithFormat:@"{%p state=%@, status=%ld, statusToken=%ld, states=%@, events=%@}", self, v4, v5, v6, v7, v8];

  return v9;
}

- (void)activateIfNeeded
{
  [MEMORY[0x277CCACC8] isMainThread];
  if ([(NFStateMachine *)self status]!= 1)
  {

    [(NFStateMachine *)self activate];
  }
}

- (void)deactivate
{
  [MEMORY[0x277CCACC8] isMainThread];
  [(NFStateMachine *)self setStatusToken:[(NFStateMachine *)self statusToken]- 1];
  if ([(NFStateMachine *)self statusToken]<= 0)
  {

    [(NFStateMachine *)self setStatus:2];
  }
}

- (void)deactivateIfNeeded
{
  [MEMORY[0x277CCACC8] isMainThread];
  if ([(NFStateMachine *)self status]!= 2)
  {

    [(NFStateMachine *)self deactivate];
  }
}

- (void)addState:(id)a3
{
  v4 = a3;
  [MEMORY[0x277CCACC8] isMainThread];
  v5 = [(NFStateMachine *)self states];
  v6 = [v4 name];
  v7 = [v5 objectForKey:v6];

  if (v7 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NFStateMachine addState:];
  }

  v8 = [(NFStateMachine *)self states];
  v9 = [v4 name];
  [v8 setObject:v4 forKey:v9];
}

- (void)addEvent:(id)a3
{
  v4 = a3;
  [MEMORY[0x277CCACC8] isMainThread];
  v5 = [(NFStateMachine *)self events];
  v6 = [v4 name];
  v7 = [v5 objectForKey:v6];

  if (v7 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NFStateMachine addEvent:];
  }

  v8 = [(NFStateMachine *)self events];
  v9 = [v4 name];
  [v8 setObject:v4 forKey:v9];
}

- (id)fireEventWithName:(id)a3 withContext:(id)a4
{
  v61[3] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  [MEMORY[0x277CCACC8] isMainThread];
  v8 = [(NFStateMachine *)self owner];
  v9 = v8;
  if (!v8)
  {
    v23 = __48__NFStateMachine_fireEventWithName_withContext___block_invoke();
    goto LABEL_16;
  }

  v10 = v8;
  if ([(NFStateMachine *)self status]== 1)
  {
    v11 = [(NFStateMachine *)self events];
    v12 = [v11 objectForKey:v6];

    if (v12)
    {
      v13 = [v12 states];
      v14 = [(NFStateMachine *)self state];
      v15 = [v13 containsObject:v14];

      if (v15)
      {
        v16 = [(NFStateMachine *)self state];
        v17 = [v12 destinationState];
        v18 = [[NFStateMachineTransition alloc] initWithStateMachine:self event:v12 fromState:v16 toState:v17 context:v7];
        if ([v17 canTry:v18 withOwner:v10])
        {
          v19 = [(NFStateMachine *)self lock];
          [v19 lock];

          [v16 willExit:v18 withOwner:v10];
          [v17 willEnter:v18 withOwner:v10];
          [(NFStateMachine *)self setState:v17];
          v52[0] = MEMORY[0x277D85DD0];
          v52[1] = 3221225472;
          v52[2] = __48__NFStateMachine_fireEventWithName_withContext___block_invoke_3;
          v52[3] = &unk_27997DA40;
          v53 = v16;
          v41 = v18;
          v20 = v18;
          v54 = v20;
          v38 = v10;
          v55 = v38;
          v42 = [NFPromise firstly:v52];
          v40 = zalgoIfMain();
          v48[0] = MEMORY[0x277D85DD0];
          v48[1] = 3221225472;
          v48[2] = __48__NFStateMachine_fireEventWithName_withContext___block_invoke_4;
          v48[3] = &unk_27997DA68;
          v49 = v17;
          v36 = v20;
          v50 = v36;
          v35 = v38;
          v51 = v35;
          v39 = [v42 thenOn:v40 then:v48];
          v37 = zalgoIfMain();
          v34 = [v39 errorOn:v37 error:&__block_literal_global_50];
          v33 = zalgoIfMain();
          v47[0] = MEMORY[0x277D85DD0];
          v47[1] = 3221225472;
          v47[2] = __48__NFStateMachine_fireEventWithName_withContext___block_invoke_54;
          v47[3] = &unk_27997DAB0;
          v47[4] = self;
          v21 = [v34 alwaysOn:v33 always:v47];
          v22 = zalgoIfMain();
          v43[0] = MEMORY[0x277D85DD0];
          v43[1] = 3221225472;
          v43[2] = __48__NFStateMachine_fireEventWithName_withContext___block_invoke_2_56;
          v43[3] = &unk_27997DA68;
          v44 = v12;
          v45 = v36;
          v46 = v35;
          v23 = [v21 thenOn:v22 then:v43];

          v18 = v41;
        }

        else
        {
          v23 = __48__NFStateMachine_fireEventWithName_withContext___block_invoke_2();
        }

        goto LABEL_14;
      }

      v29 = *MEMORY[0x277CCA450];
      v57[0] = @"event does not allow transition from current state";
      v56[0] = v29;
      v56[1] = @"currentState";
      v30 = [(NFStateMachine *)self state];
      v56[2] = @"event";
      v57[1] = v30;
      v57[2] = v12;
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v57 forKeys:v56 count:3];

      v27 = MEMORY[0x277CCA9B8];
      v28 = -102;
    }

    else
    {
      v58[0] = *MEMORY[0x277CCA450];
      v58[1] = v6;
      v59[0] = @"event for name not found in state machine";
      v59[1] = @"eventName";
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v59 forKeys:v58 count:2];
      v27 = MEMORY[0x277CCA9B8];
      v28 = -101;
    }

    v17 = [v27 fc_createStateMachineErrorForCode:v28 userInfo:v16];
    v23 = [NFPromise asVoid:v17];
LABEL_14:

    goto LABEL_15;
  }

  v24 = *MEMORY[0x277CCA450];
  v61[0] = @"cannot fire event when state machine is not active";
  v60[0] = v24;
  v60[1] = @"status";
  v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[NFStateMachine status](self, "status")}];
  v61[1] = v25;
  v60[2] = @"statusToken";
  v26 = [MEMORY[0x277CCABB0] numberWithInteger:{-[NFStateMachine statusToken](self, "statusToken")}];
  v61[2] = v26;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v61 forKeys:v60 count:3];

  v16 = [MEMORY[0x277CCA9B8] fc_createStateMachineErrorForCode:-100 userInfo:v12];
  v23 = [NFPromise asVoid:v16];
LABEL_15:

LABEL_16:
  v31 = *MEMORY[0x277D85DE8];

  return v23;
}

id __48__NFStateMachine_fireEventWithName_withContext___block_invoke()
{
  v0 = [MEMORY[0x277CCA9B8] fc_createStateMachineErrorForCode:-104 userInfo:0];
  v1 = [NFPromise asVoid:v0];

  return v1;
}

id __48__NFStateMachine_fireEventWithName_withContext___block_invoke_2()
{
  v0 = [MEMORY[0x277CCA9B8] fc_createStateMachineErrorForCode:-103 userInfo:0];
  v1 = [NFPromise asVoid:v0];

  return v1;
}

void __48__NFStateMachine_fireEventWithName_withContext___block_invoke_5()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __48__NFStateMachine_fireEventWithName_withContext___block_invoke_5_cold_1();
  }
}

void __48__NFStateMachine_fireEventWithName_withContext___block_invoke_54(uint64_t a1)
{
  v1 = [*(a1 + 32) lock];
  [v1 unlock];
}

- (void)addState:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Attempting to register a state that already exists"];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BED3000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)addEvent:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Attempting to register an event that already exists"];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BED3000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

void __48__NFStateMachine_fireEventWithName_withContext___block_invoke_5_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"state machine did enter/exit is not allowed to throw errors as the state has already been alerted"];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BED3000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

@end