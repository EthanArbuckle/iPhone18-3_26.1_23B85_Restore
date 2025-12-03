@interface _DKDoNotDisturbMonitor
+ (id)_eventWithState:(BOOL)state;
- (void)start;
- (void)stateService:(id)service didReceiveDoNotDisturbStateUpdate:(id)update;
- (void)stop;
@end

@implementation _DKDoNotDisturbMonitor

+ (id)_eventWithState:(BOOL)state
{
  if (state)
  {
    [MEMORY[0x277CFE1A0] yes];
  }

  else
  {
    [MEMORY[0x277CFE1A0] no];
  }
  v3 = ;
  v4 = MEMORY[0x277CFE1D8];
  doNotDisturbStream = [MEMORY[0x277CFE298] doNotDisturbStream];
  date = [MEMORY[0x277CBEAA8] date];
  distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
  v8 = [v4 eventWithStream:doNotDisturbStream startDate:date endDate:distantFuture value:v3];

  return v8;
}

- (void)stateService:(id)service didReceiveDoNotDisturbStateUpdate:(id)update
{
  v51 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  array = [MEMORY[0x277CBEB18] array];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v43 = updateCopy;
  state = [updateCopy state];
  activeModeAssertionMetadata = [state activeModeAssertionMetadata];

  v8 = [activeModeAssertionMetadata countByEnumeratingWithState:&v44 objects:v50 count:16];
  v9 = 0x277CFE000uLL;
  if (v8)
  {
    v10 = v8;
    v11 = *v45;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v45 != v11)
        {
          objc_enumerationMutation(activeModeAssertionMetadata);
        }

        v13 = *(*(&v44 + 1) + 8 * i);
        v14 = objc_opt_new();
        modeIdentifier = [v13 modeIdentifier];

        if (modeIdentifier)
        {
          modeIdentifier2 = [v13 modeIdentifier];
          [*(v9 + 824) modeIdentifier];
          v18 = v17 = v9;
          [v14 setObject:modeIdentifier2 forKey:v18];

          v9 = v17;
        }

        activeDateInterval = [v13 activeDateInterval];

        if (activeDateInterval)
        {
          activeDateInterval2 = [v13 activeDateInterval];
          activeDateInterval3 = [*(v9 + 824) activeDateInterval];
          [v14 setObject:activeDateInterval2 forKey:activeDateInterval3];
        }

        [array addObject:v14];
      }

      v10 = [activeModeAssertionMetadata countByEnumeratingWithState:&v44 objects:v50 count:16];
    }

    while (v10);
  }

  doNotDisturbState = [*(v9 + 824) doNotDisturbState];
  v48[0] = doNotDisturbState;
  v23 = MEMORY[0x277CCABB0];
  state2 = [v43 state];
  v25 = [v23 numberWithBool:{objc_msgSend(state2, "isActive")}];
  v49[0] = v25;
  doNotDisturbUpdateReason = [*(v9 + 824) doNotDisturbUpdateReason];
  v48[1] = doNotDisturbUpdateReason;
  [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v43, "reason")}];
  v28 = v27 = v9;
  v49[1] = v28;
  doNotDisturbStateMetadataArray = [*(v27 + 824) doNotDisturbStateMetadataArray];
  v48[2] = doNotDisturbStateMetadataArray;
  v49[2] = array;
  v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:v48 count:3];

  userContext = [MEMORY[0x277CFE318] userContext];
  keyPathForDoNotDisturbStatusDataDictionary = [*(v27 + 824) keyPathForDoNotDisturbStatusDataDictionary];
  [userContext setObject:v30 forKeyedSubscript:keyPathForDoNotDisturbStatusDataDictionary];

  v33 = MEMORY[0x277CCABB0];
  state3 = [v43 state];
  v35 = [v33 numberWithBool:{objc_msgSend(state3, "isActive")}];
  userContext2 = [MEMORY[0x277CFE318] userContext];
  keyPathForDoNotDisturbStatus = [*(v27 + 824) keyPathForDoNotDisturbStatus];
  [userContext2 setObject:v35 forKeyedSubscript:keyPathForDoNotDisturbStatus];

  v38 = objc_opt_class();
  state4 = [v43 state];
  v40 = [v38 _eventWithState:{objc_msgSend(state4, "isActive")}];
  [(_DKMonitor *)self setCurrentEvent:v40 inferHistoricalState:1];

  v41 = *MEMORY[0x277D85DE8];
}

- (void)start
{
  v5.receiver = self;
  v5.super_class = _DKDoNotDisturbMonitor;
  if ([(_DKMonitor *)&v5 instantMonitorNeedsActivation])
  {
    v3 = [MEMORY[0x277D05AB0] serviceForClientIdentifier:@"com.apple.duet.knowledge"];
    dndStateService = self->_dndStateService;
    self->_dndStateService = v3;

    [(DNDStateService *)self->_dndStateService addStateUpdateListener:self withCompletionHandler:&__block_literal_global_3];
  }
}

- (void)stop
{
  v3.receiver = self;
  v3.super_class = _DKDoNotDisturbMonitor;
  if ([(_DKMonitor *)&v3 instantMonitorNeedsDeactivation])
  {
    [(DNDStateService *)self->_dndStateService removeStateUpdateListener:self];
  }
}

@end