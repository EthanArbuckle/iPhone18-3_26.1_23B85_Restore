@interface _DKStarkMonitor
+ (id)_eventWithState:(BOOL)state;
- (void)deactivate;
- (void)dealloc;
- (void)sessionDidConnect:(id)connect;
- (void)sessionDidDisconnect:(id)disconnect;
- (void)start;
- (void)stop;
- (void)synchronouslyReflectCurrentValue;
- (void)updateCurrentState;
@end

@implementation _DKStarkMonitor

- (void)synchronouslyReflectCurrentValue
{
  currentEvent = [(_DKMonitor *)self currentEvent];

  if (!currentEvent)
  {

    [(_DKStarkMonitor *)self updateCurrentState];
  }
}

- (void)dealloc
{
  [(_DKStarkMonitor *)self deactivate];
  v3.receiver = self;
  v3.super_class = _DKStarkMonitor;
  [(_DKMonitor *)&v3 dealloc];
}

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
  carPlayIsConnectedStream = [MEMORY[0x277CFE298] carPlayIsConnectedStream];
  date = [MEMORY[0x277CBEAA8] date];
  distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
  v8 = [v4 eventWithStream:carPlayIsConnectedStream startDate:date endDate:distantFuture value:v3];

  return v8;
}

- (void)start
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "[_DKStarkMonitor start]";
  _os_log_error_impl(&dword_22595A000, log, OS_LOG_TYPE_ERROR, "%s: Error, can not initiate CARSessionStatus", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)stop
{
  v3.receiver = self;
  v3.super_class = _DKStarkMonitor;
  if ([(_DKMonitor *)&v3 instantMonitorNeedsDeactivation])
  {
    [(_DKStarkMonitor *)self deactivate];
  }
}

- (void)deactivate
{
  sessionStatus = [(_DKStarkMonitor *)self sessionStatus];

  if (sessionStatus)
  {
    sessionStatus2 = [(_DKStarkMonitor *)self sessionStatus];
    [sessionStatus2 removeSessionObserver:self];

    [(_DKStarkMonitor *)self setSessionStatus:0];
  }
}

- (void)updateCurrentState
{
  sessionStatus = [(_DKStarkMonitor *)self sessionStatus];
  currentSession = [sessionStatus currentSession];
  v5 = currentSession != 0;

  v6 = [_DKStarkMonitor _eventWithState:v5];
  [(_DKMonitor *)self setCurrentEvent:v6 inferHistoricalState:1];

  v9 = [MEMORY[0x277CCABB0] numberWithBool:v5];
  userContext = [MEMORY[0x277CFE318] userContext];
  keyPathForCarplayConnectedStatus = [MEMORY[0x277CFE338] keyPathForCarplayConnectedStatus];
  [userContext setObject:v9 forKeyedSubscript:keyPathForCarplayConnectedStatus];
}

- (void)sessionDidConnect:(id)connect
{
  if (connect)
  {
    queue = [(_DKMonitor *)self queue];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __37___DKStarkMonitor_sessionDidConnect___block_invoke;
    v8[3] = &unk_27856F060;
    v8[4] = self;
    v5 = v8;
    v6 = os_transaction_create();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __cd_dispatch_async_capture_tx_block_invoke_10;
    block[3] = &unk_27856F178;
    v10 = v6;
    v11 = v5;
    v7 = v6;
    dispatch_async(queue, block);
  }
}

- (void)sessionDidDisconnect:(id)disconnect
{
  if (disconnect)
  {
    queue = [(_DKMonitor *)self queue];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __40___DKStarkMonitor_sessionDidDisconnect___block_invoke;
    v8[3] = &unk_27856F060;
    v8[4] = self;
    v5 = v8;
    v6 = os_transaction_create();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __cd_dispatch_async_capture_tx_block_invoke_10;
    block[3] = &unk_27856F178;
    v10 = v6;
    v11 = v5;
    v7 = v6;
    dispatch_async(queue, block);
  }
}

@end