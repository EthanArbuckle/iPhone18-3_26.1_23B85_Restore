@interface _DKDoNotDisturbMonitor
+ (id)_eventWithState:(BOOL)a3;
- (void)start;
- (void)stateService:(id)a3 didReceiveDoNotDisturbStateUpdate:(id)a4;
- (void)stop;
@end

@implementation _DKDoNotDisturbMonitor

+ (id)_eventWithState:(BOOL)a3
{
  if (a3)
  {
    [MEMORY[0x277CFE1A0] yes];
  }

  else
  {
    [MEMORY[0x277CFE1A0] no];
  }
  v3 = ;
  v4 = MEMORY[0x277CFE1D8];
  v5 = [MEMORY[0x277CFE298] doNotDisturbStream];
  v6 = [MEMORY[0x277CBEAA8] date];
  v7 = [MEMORY[0x277CBEAA8] distantFuture];
  v8 = [v4 eventWithStream:v5 startDate:v6 endDate:v7 value:v3];

  return v8;
}

- (void)stateService:(id)a3 didReceiveDoNotDisturbStateUpdate:(id)a4
{
  v51 = *MEMORY[0x277D85DE8];
  v4 = a4;
  v5 = [MEMORY[0x277CBEB18] array];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v43 = v4;
  v6 = [v4 state];
  v7 = [v6 activeModeAssertionMetadata];

  v8 = [v7 countByEnumeratingWithState:&v44 objects:v50 count:16];
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
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v44 + 1) + 8 * i);
        v14 = objc_opt_new();
        v15 = [v13 modeIdentifier];

        if (v15)
        {
          v16 = [v13 modeIdentifier];
          [*(v9 + 824) modeIdentifier];
          v18 = v17 = v9;
          [v14 setObject:v16 forKey:v18];

          v9 = v17;
        }

        v19 = [v13 activeDateInterval];

        if (v19)
        {
          v20 = [v13 activeDateInterval];
          v21 = [*(v9 + 824) activeDateInterval];
          [v14 setObject:v20 forKey:v21];
        }

        [v5 addObject:v14];
      }

      v10 = [v7 countByEnumeratingWithState:&v44 objects:v50 count:16];
    }

    while (v10);
  }

  v22 = [*(v9 + 824) doNotDisturbState];
  v48[0] = v22;
  v23 = MEMORY[0x277CCABB0];
  v24 = [v43 state];
  v25 = [v23 numberWithBool:{objc_msgSend(v24, "isActive")}];
  v49[0] = v25;
  v26 = [*(v9 + 824) doNotDisturbUpdateReason];
  v48[1] = v26;
  [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v43, "reason")}];
  v28 = v27 = v9;
  v49[1] = v28;
  v29 = [*(v27 + 824) doNotDisturbStateMetadataArray];
  v48[2] = v29;
  v49[2] = v5;
  v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:v48 count:3];

  v31 = [MEMORY[0x277CFE318] userContext];
  v32 = [*(v27 + 824) keyPathForDoNotDisturbStatusDataDictionary];
  [v31 setObject:v30 forKeyedSubscript:v32];

  v33 = MEMORY[0x277CCABB0];
  v34 = [v43 state];
  v35 = [v33 numberWithBool:{objc_msgSend(v34, "isActive")}];
  v36 = [MEMORY[0x277CFE318] userContext];
  v37 = [*(v27 + 824) keyPathForDoNotDisturbStatus];
  [v36 setObject:v35 forKeyedSubscript:v37];

  v38 = objc_opt_class();
  v39 = [v43 state];
  v40 = [v38 _eventWithState:{objc_msgSend(v39, "isActive")}];
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