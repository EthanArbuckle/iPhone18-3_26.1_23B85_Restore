@interface CLSCurationDebugObject
+ (id)stringForState:(unint64_t)state;
- (CLSCurationDebugObject)init;
- (id)dictionaryRepresentation;
- (void)beginTentativeSection;
- (void)endTentativeSectionWithSuccess:(BOOL)success;
- (void)resetWithReason:(id)reason agent:(id)agent stage:(id)stage;
- (void)setState:(unint64_t)state withReason:(id)reason agent:(id)agent stage:(id)stage;
@end

@implementation CLSCurationDebugObject

- (id)dictionaryRepresentation
{
  v36 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  selfCopy = self;
  v4 = [objc_opt_class() stringForState:self->_state];
  if (v4)
  {
    [dictionary setObject:v4 forKeyedSubscript:@"state"];
  }

  v25 = v4;
  v26 = dictionary;
  v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](selfCopy->_stateHistory, "count")}];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = selfCopy->_stateHistory;
  v6 = [(NSMutableArray *)obj countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v30;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v30 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v29 + 1) + 8 * i);
        v33[0] = @"state";
        v11 = [objc_opt_class() stringForState:{objc_msgSend(v10, "state", v25)}];
        v12 = v11;
        if (v11)
        {
          v13 = v11;
        }

        else
        {
          v13 = @"Invalid";
        }

        v34[0] = v13;
        v33[1] = @"agent";
        agent = [v10 agent];
        v15 = agent;
        if (agent)
        {
          v16 = agent;
        }

        else
        {
          v16 = @"Invalid";
        }

        v34[1] = v16;
        v33[2] = @"stage";
        stage = [v10 stage];
        v18 = stage;
        if (stage)
        {
          v19 = stage;
        }

        else
        {
          v19 = @"Invalid";
        }

        v34[2] = v19;
        v33[3] = @"reason";
        reason = [v10 reason];
        v21 = reason;
        if (reason)
        {
          v22 = reason;
        }

        else
        {
          v22 = @"Invalid";
        }

        v34[3] = v22;
        v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:4];

        [v5 addObject:v23];
      }

      v7 = [(NSMutableArray *)obj countByEnumeratingWithState:&v29 objects:v35 count:16];
    }

    while (v7);
  }

  [v26 setObject:v5 forKeyedSubscript:@"stateHistory"];

  return v26;
}

- (void)endTentativeSectionWithSuccess:(BOOL)success
{
  tentativeSectionStateHistoryLength = self->_tentativeSectionStateHistoryLength;
  if (tentativeSectionStateHistoryLength == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v12 = 0;
    v4 = MEMORY[0x277D86220];
    v5 = "Can't end a tentative section that didn't begin";
    v6 = &v12;
LABEL_7:
    _os_log_error_impl(&dword_22F907000, v4, OS_LOG_TYPE_ERROR, v5, v6, 2u);
    return;
  }

  if (tentativeSectionStateHistoryLength > [(NSMutableArray *)self->_stateHistory count])
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v11 = 0;
    v4 = MEMORY[0x277D86220];
    v5 = "Consistency error, state history can't be shorter at the end of a tentative section than at the beginning";
    v6 = &v11;
    goto LABEL_7;
  }

  if (!success)
  {
    v9 = self->_tentativeSectionStateHistoryLength;
    if (v9 < [(NSMutableArray *)self->_stateHistory count])
    {
      v10 = self->_tentativeSectionStateHistoryLength;
      self->_state = self->_stateAtBeginningOfTentativeSection;
      [(NSMutableArray *)self->_stateHistory removeObjectsInRange:v10, [(NSMutableArray *)self->_stateHistory count]- self->_tentativeSectionStateHistoryLength];
    }
  }

  *&self->_tentativeSectionStateHistoryLength = xmmword_22F9925E0;
}

- (void)beginTentativeSection
{
  if (self->_tentativeSectionStateHistoryLength == 0x7FFFFFFFFFFFFFFFLL)
  {
    self->_stateAtBeginningOfTentativeSection = self->_state;
    self->_tentativeSectionStateHistoryLength = [(NSMutableArray *)self->_stateHistory count];
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *v2 = 0;
    _os_log_error_impl(&dword_22F907000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Only one tentative section supported at a time", v2, 2u);
  }
}

- (void)resetWithReason:(id)reason agent:(id)agent stage:(id)stage
{
  if (self->_state != 4)
  {
    self->_state = 0;
  }

  stageCopy = stage;
  agentCopy = agent;
  reasonCopy = reason;
  v11 = [[CLSCurationDebugStateEntry alloc] initWithState:self->_state reason:reasonCopy agent:agentCopy stage:stageCopy];

  [(NSMutableArray *)self->_stateHistory addObject:v11];
}

- (void)setState:(unint64_t)state withReason:(id)reason agent:(id)agent stage:(id)stage
{
  reasonCopy = reason;
  agentCopy = agent;
  stageCopy = stage;
  if (state)
  {
    state = self->_state;
    switch(state)
    {
      case 1uLL:
        goto LABEL_5;
      case 4uLL:
        state = 4;
        break;
      case 3uLL:
LABEL_5:
        if (state == 4)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            v18 = 0;
            v14 = MEMORY[0x277D86220];
            v15 = "Algorithms should always be aware of the Required state";
            v16 = &v18;
LABEL_10:
            _os_log_error_impl(&dword_22F907000, v14, OS_LOG_TYPE_ERROR, v15, v16, 2u);
            goto LABEL_13;
          }

          goto LABEL_13;
        }

        break;
    }

    self->_state = state;
    v17 = [[CLSCurationDebugStateEntry alloc] initWithState:state reason:reasonCopy agent:agentCopy stage:stageCopy];
    [(NSMutableArray *)self->_stateHistory addObject:v17];

    goto LABEL_13;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    v14 = MEMORY[0x277D86220];
    v15 = "Curation Object can't transition to Unknown state, use resetWithReason to reset it.";
    v16 = buf;
    goto LABEL_10;
  }

LABEL_13:
}

- (CLSCurationDebugObject)init
{
  v6.receiver = self;
  v6.super_class = CLSCurationDebugObject;
  v2 = [(CLSCurationDebugObject *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    stateHistory = v2->_stateHistory;
    v2->_stateHistory = v3;

    v2->_tentativeSectionStateHistoryLength = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v2;
}

+ (id)stringForState:(unint64_t)state
{
  if (state > 4)
  {
    return @"Invalid State";
  }

  else
  {
    return off_2788A87D0[state];
  }
}

@end