@interface _DKWiFiConnectionMonitor
- (void)_handleKnownNetworkProfileChangedEvent:(id)a3;
- (void)_handleWiFiEvent:(id)a3;
- (void)_handleWiFiStateChangeEvent:(id)a3;
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
    v3 = [(_DKMonitor *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __33___DKWiFiConnectionMonitor_start__block_invoke;
    block[3] = &unk_27856F060;
    block[4] = self;
    dispatch_sync(v3, block);
  }
}

- (void)_handleWiFiEvent:(id)a3
{
  v7 = a3;
  v4 = [(_DKMonitor *)self queue];
  dispatch_assert_queue_V2(v4);

  v5 = [v7 type];
  if (v5 == 30)
  {
    v5 = [(_DKWiFiConnectionMonitor *)self _handleKnownNetworkProfileChangedEvent:v7];
  }

  else
  {
    v6 = v7;
    if (v5 != 2)
    {
      goto LABEL_6;
    }

    v5 = [(_DKWiFiConnectionMonitor *)self _handleWiFiStateChangeEvent:v7];
  }

  v6 = v7;
LABEL_6:

  MEMORY[0x2821F96F8](v5, v6);
}

- (void)_handleWiFiStateChangeEvent:(id)a3
{
  v27 = a3;
  v4 = self->_currentSSID;
  v5 = [(CWFInterface *)self->_interface networkName];
  currentSSID = self->_currentSSID;
  self->_currentSSID = v5;

  if (v4 != self->_currentSSID && ([(NSString *)v4 isEqual:?]& 1) == 0)
  {
    v7 = MEMORY[0x277CFE1F0];
    v8 = self->_currentSSID;
    v9 = [MEMORY[0x277CFE150] type];
    v10 = [v7 identifierWithString:v8 type:v9];

    v11 = MEMORY[0x277CFE1D8];
    v12 = [MEMORY[0x277CFE298] wifiConnectionStream];
    v13 = [v27 timestamp];
    v14 = [MEMORY[0x277CBEAA8] distantFuture];
    v15 = [v11 eventWithStream:v12 startDate:v13 endDate:v14 value:v10];

    v16 = [(_DKMonitor *)self currentEvent];
    [(_DKMonitor *)self setCurrentEvent:v15 inferHistoricalState:v16 != 0];

    v17 = self->_currentSSID;
    v18 = [MEMORY[0x277CFE318] userContext];
    v19 = [MEMORY[0x277CFE338] keyPathForWiFiConnectionSSID];
    [v18 setObject:v17 forKeyedSubscript:v19];

    if (+[_DKWiFiConnectionMonitor writeToBiome])
    {
      v20 = [v27 timestamp];
      [v20 timeIntervalSinceReferenceDate];
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

- (void)_handleKnownNetworkProfileChangedEvent:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 info];
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277D02A98]];
  v7 = [v6 isEqual:&unk_2838F78B8];

  if (v7)
  {
    v8 = [v4 info];
    v9 = [v8 objectForKeyedSubscript:*MEMORY[0x277D02AA0]];

    v10 = [v9 networkName];
    v11 = [MEMORY[0x277CFE0C8] contextChannel];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v32 = v10;
      _os_log_impl(&dword_22595A000, v11, OS_LOG_TYPE_INFO, "Forgetting wifi networks with SSID: %@", buf, 0xCu);
    }

    v12 = MEMORY[0x277CFE260];
    v13 = [MEMORY[0x277CFE298] wifiConnectionStream];
    v14 = [v13 name];
    v15 = [v12 predicateForEventsWithStreamName:v14];

    v16 = [MEMORY[0x277CFE260] predicateForEventsWithStringValue:v10];
    v17 = MEMORY[0x277CCA920];
    v30[0] = v15;
    v30[1] = v16;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:2];
    v19 = [v17 andPredicateWithSubpredicates:v18];

    v20 = [(_DKWiFiConnectionMonitor *)self historicalDeletingHandler];
    (v20)[2](v20, v19);

    v21 = BiomeLibrary();
    v22 = [v21 Device];
    v23 = [v22 Wireless];
    v24 = [v23 WiFi];
    v25 = [v24 pruner];

    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __67___DKWiFiConnectionMonitor__handleKnownNetworkProfileChangedEvent___block_invoke;
    v28[3] = &unk_27856F458;
    v29 = v10;
    v26 = v10;
    [v25 deleteWithPolicy:@"forget-this-network" eventsPassingTest:v28];
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)stop
{
  v5.receiver = self;
  v5.super_class = _DKWiFiConnectionMonitor;
  if ([(_DKMonitor *)&v5 instantMonitorNeedsDeactivation])
  {
    v3 = [(_DKMonitor *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __32___DKWiFiConnectionMonitor_stop__block_invoke;
    block[3] = &unk_27856F060;
    block[4] = self;
    dispatch_sync(v3, block);
  }
}

@end