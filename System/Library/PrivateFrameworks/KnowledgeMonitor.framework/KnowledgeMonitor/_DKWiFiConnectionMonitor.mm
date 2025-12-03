@interface _DKWiFiConnectionMonitor
- (void)_handleKnownNetworkProfileChangedEvent:(id)event;
- (void)_handleWiFiEvent:(id)event;
- (void)_handleWiFiStateChangeEvent:(id)event;
- (void)start;
- (void)stop;
@end

@implementation _DKWiFiConnectionMonitor

- (void)start
{
  v5.receiver = self;
  v5.super_class = _DKWiFiConnectionMonitor;
  if ([(_DKMonitor *)&v5 instantMonitorNeedsActivation])
  {
    queue = [(_DKMonitor *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __33___DKWiFiConnectionMonitor_start__block_invoke;
    block[3] = &unk_27856F060;
    block[4] = self;
    dispatch_sync(queue, block);
  }
}

- (void)_handleWiFiEvent:(id)event
{
  eventCopy = event;
  queue = [(_DKMonitor *)self queue];
  dispatch_assert_queue_V2(queue);

  type = [eventCopy type];
  if (type == 30)
  {
    type = [(_DKWiFiConnectionMonitor *)self _handleKnownNetworkProfileChangedEvent:eventCopy];
  }

  else
  {
    v6 = eventCopy;
    if (type != 2)
    {
      goto LABEL_6;
    }

    type = [(_DKWiFiConnectionMonitor *)self _handleWiFiStateChangeEvent:eventCopy];
  }

  v6 = eventCopy;
LABEL_6:

  MEMORY[0x2821F96F8](type, v6);
}

- (void)_handleWiFiStateChangeEvent:(id)event
{
  eventCopy = event;
  v4 = self->_currentSSID;
  networkName = [(CWFInterface *)self->_interface networkName];
  currentSSID = self->_currentSSID;
  self->_currentSSID = networkName;

  if (v4 != self->_currentSSID && ([(NSString *)v4 isEqual:?]& 1) == 0)
  {
    v7 = MEMORY[0x277CFE1F0];
    v8 = self->_currentSSID;
    type = [MEMORY[0x277CFE150] type];
    v10 = [v7 identifierWithString:v8 type:type];

    v11 = MEMORY[0x277CFE1D8];
    wifiConnectionStream = [MEMORY[0x277CFE298] wifiConnectionStream];
    timestamp = [eventCopy timestamp];
    distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
    v15 = [v11 eventWithStream:wifiConnectionStream startDate:timestamp endDate:distantFuture value:v10];

    currentEvent = [(_DKMonitor *)self currentEvent];
    [(_DKMonitor *)self setCurrentEvent:v15 inferHistoricalState:currentEvent != 0];

    v17 = self->_currentSSID;
    userContext = [MEMORY[0x277CFE318] userContext];
    keyPathForWiFiConnectionSSID = [MEMORY[0x277CFE338] keyPathForWiFiConnectionSSID];
    [userContext setObject:v17 forKeyedSubscript:keyPathForWiFiConnectionSSID];

    if (+[_DKWiFiConnectionMonitor writeToBiome])
    {
      timestamp2 = [eventCopy timestamp];
      [timestamp2 timeIntervalSinceReferenceDate];
      v22 = v21;

      if (v4)
      {
        v23 = objc_alloc(MEMORY[0x277CF1138]);
        v24 = [v23 initWithSSID:v4 starting:MEMORY[0x277CBEC28]];
        [(BMSource *)self->_source sendEvent:v24 timestamp:v22];
      }

      if (self->_currentSSID)
      {
        v25 = objc_alloc(MEMORY[0x277CF1138]);
        v26 = [v25 initWithSSID:self->_currentSSID starting:MEMORY[0x277CBEC38]];
        [(BMSource *)self->_source sendEvent:v26 timestamp:v22];
      }
    }
  }
}

- (void)_handleKnownNetworkProfileChangedEvent:(id)event
{
  v33 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  info = [eventCopy info];
  v6 = [info objectForKeyedSubscript:*MEMORY[0x277D02A98]];
  v7 = [v6 isEqual:&unk_2838F78B8];

  if (v7)
  {
    info2 = [eventCopy info];
    v9 = [info2 objectForKeyedSubscript:*MEMORY[0x277D02AA0]];

    networkName = [v9 networkName];
    contextChannel = [MEMORY[0x277CFE0C8] contextChannel];
    if (os_log_type_enabled(contextChannel, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v32 = networkName;
      _os_log_impl(&dword_22595A000, contextChannel, OS_LOG_TYPE_INFO, "Forgetting wifi networks with SSID: %@", buf, 0xCu);
    }

    v12 = MEMORY[0x277CFE260];
    wifiConnectionStream = [MEMORY[0x277CFE298] wifiConnectionStream];
    name = [wifiConnectionStream name];
    v15 = [v12 predicateForEventsWithStreamName:name];

    v16 = [MEMORY[0x277CFE260] predicateForEventsWithStringValue:networkName];
    v17 = MEMORY[0x277CCA920];
    v30[0] = v15;
    v30[1] = v16;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:2];
    v19 = [v17 andPredicateWithSubpredicates:v18];

    historicalDeletingHandler = [(_DKWiFiConnectionMonitor *)self historicalDeletingHandler];
    (historicalDeletingHandler)[2](historicalDeletingHandler, v19);

    v21 = BiomeLibrary();
    device = [v21 Device];
    wireless = [device Wireless];
    wiFi = [wireless WiFi];
    pruner = [wiFi pruner];

    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __67___DKWiFiConnectionMonitor__handleKnownNetworkProfileChangedEvent___block_invoke;
    v28[3] = &unk_27856F458;
    v29 = networkName;
    v26 = networkName;
    [pruner deleteWithPolicy:@"forget-this-network" eventsPassingTest:v28];
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)stop
{
  v5.receiver = self;
  v5.super_class = _DKWiFiConnectionMonitor;
  if ([(_DKMonitor *)&v5 instantMonitorNeedsDeactivation])
  {
    queue = [(_DKMonitor *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __32___DKWiFiConnectionMonitor_stop__block_invoke;
    block[3] = &unk_27856F060;
    block[4] = self;
    dispatch_sync(queue, block);
  }
}

@end