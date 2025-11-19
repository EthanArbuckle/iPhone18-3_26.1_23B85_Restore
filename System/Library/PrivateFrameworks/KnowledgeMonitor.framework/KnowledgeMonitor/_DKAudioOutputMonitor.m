@interface _DKAudioOutputMonitor
+ (id)_BMEventWithState:(id)a3 type:(id)a4 name:(id)a5 identifier:(id)a6 routeChangeReason:(id)a7;
+ (id)_eventWithState:(id)a3 type:(id)a4 name:(id)a5 identifier:(id)a6 routeChangeReason:(id)a7;
- (_DKAudioOutputMonitor)init;
- (void)deactivate;
- (void)dealloc;
- (void)onAudioRouteChangeNotification:(id)a3;
- (void)start;
@end

@implementation _DKAudioOutputMonitor

- (_DKAudioOutputMonitor)init
{
  v5.receiver = self;
  v5.super_class = _DKAudioOutputMonitor;
  v2 = [(_DKMonitor *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(_DKMonitor *)v2 setEventComparator:&__block_literal_global_17];
  }

  return v3;
}

- (void)dealloc
{
  [(_DKAudioOutputMonitor *)self deactivate];
  v3.receiver = self;
  v3.super_class = _DKAudioOutputMonitor;
  [(_DKMonitor *)&v3 dealloc];
}

+ (id)_eventWithState:(id)a3 type:(id)a4 name:(id)a5 identifier:(id)a6 routeChangeReason:(id)a7
{
  v31[4] = *MEMORY[0x277D85DE8];
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = &unk_2838F79A8;
  if (a7)
  {
    v14 = a7;
  }

  v15 = v14;
  v16 = a3;
  v17 = [MEMORY[0x277CFE180] portType];
  v30[0] = v17;
  v31[0] = v11;
  v18 = [MEMORY[0x277CFE180] portName];
  v30[1] = v18;
  v31[1] = v12;
  v19 = [MEMORY[0x277CFE180] identifier];
  v30[2] = v19;
  v31[2] = v13;
  v20 = [MEMORY[0x277CFE180] routeChangeReason];
  v30[3] = v20;
  v31[3] = v15;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:4];

  LOBYTE(v17) = [v16 BOOLValue];
  if (v17)
  {
    [MEMORY[0x277CFE188] external];
  }

  else
  {
    [MEMORY[0x277CFE188] internal];
  }
  v22 = ;
  v23 = MEMORY[0x277CFE1D8];
  v24 = [MEMORY[0x277CFE298] audioOutputRoutStream];
  v25 = [MEMORY[0x277CBEAA8] date];
  v26 = [MEMORY[0x277CBEAA8] distantFuture];
  v27 = [v23 eventWithStream:v24 startDate:v25 endDate:v26 value:v22 metadata:v21];

  v28 = *MEMORY[0x277D85DE8];

  return v27;
}

+ (id)_BMEventWithState:(id)a3 type:(id)a4 name:(id)a5 identifier:(id)a6 routeChangeReason:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  if ([v11 intValue])
  {
    if ([v11 intValue] == 1)
    {
      v16 = 1;
    }

    else if ([v11 intValue] == 2)
    {
      v16 = 2;
    }

    else if ([v11 intValue] == 3)
    {
      v16 = 3;
    }

    else if ([v11 intValue] == 4)
    {
      v16 = 4;
    }

    else if ([v11 intValue] == 6)
    {
      v16 = 5;
    }

    else if ([v11 intValue] == 7)
    {
      v16 = 6;
    }

    else if ([v11 intValue] == 8)
    {
      v16 = 7;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  v17 = [objc_alloc(MEMORY[0x277CF1020]) initWithExternal:v15 identifier:v12 portType:v14 portName:v13 routeChangeReason:v16 type:2];

  return v17;
}

- (void)start
{
  v3 = [MEMORY[0x277CB83F8] sharedInstance];
  outputMonitor = self->_outputMonitor;
  self->_outputMonitor = v3;

  v5 = BiomeLibrary();
  v6 = [v5 Audio];
  v7 = [v6 Route];
  v8 = [v7 source];
  source = self->_source;
  self->_source = v8;

  v10 = [MEMORY[0x277CCAB98] defaultCenter];
  [v10 addObserver:self selector:sel_onAudioRouteChangeNotification_ name:*MEMORY[0x277CB8210] object:0];

  [(_DKAudioOutputMonitor *)self onAudioRouteChangeNotification:0];
}

- (void)deactivate
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  outputMonitor = self->_outputMonitor;
  self->_outputMonitor = 0;
}

- (void)onAudioRouteChangeNotification:(id)a3
{
  v4 = a3;
  v5 = os_transaction_create();
  v6 = objc_autoreleasePoolPush();
  v7 = [(AVAudioSession *)self->_outputMonitor currentRoute];
  v8 = v7;
  if (v7)
  {
    v39 = 0;
    v40 = &v39;
    v41 = 0x2020000000;
    v42 = 0;
    v33 = 0;
    v34 = &v33;
    v35 = 0x3032000000;
    v36 = __Block_byref_object_copy__9;
    v37 = __Block_byref_object_dispose__9;
    v38 = 0;
    v9 = [v7 outputs];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __56___DKAudioOutputMonitor_onAudioRouteChangeNotification___block_invoke;
    v32[3] = &unk_27856F9A0;
    v32[4] = &v33;
    v32[5] = &v39;
    [v9 enumerateObjectsUsingBlock:v32];

    if (v34[5])
    {
      v30 = v6;
      v31 = v5;
      v10 = [v4 userInfo];
      v11 = [v10 objectForKeyedSubscript:*MEMORY[0x277CB8220]];

      v12 = [MEMORY[0x277CCABB0] numberWithBool:*(v40 + 24)];
      v13 = [v34[5] portType];
      v14 = [v34[5] portName];
      v15 = [v34[5] UID];
      v16 = [_DKAudioOutputMonitor _eventWithState:v12 type:v13 name:v14 identifier:v15 routeChangeReason:v11];

      [(_DKMonitor *)self setCurrentEvent:v16 inferHistoricalState:1];
      source = self->_source;
      v18 = [MEMORY[0x277CCABB0] numberWithBool:*(v40 + 24)];
      v19 = [v34[5] portType];
      v20 = [v34[5] portName];
      v21 = [v34[5] UID];
      v22 = [_DKAudioOutputMonitor _BMEventWithState:v18 type:v19 name:v20 identifier:v21 routeChangeReason:v11];
      [(BMSource *)source sendEvent:v22];

      v23 = *(v40 + 24);
      v24 = [v34[5] portType];
      v25 = [v34[5] portName];
      v26 = [v34[5] UID];
      v27 = [_DKAudioOutputMonitor contextValueForAudioOutputConnectionStatus:v23 type:v24 name:v25 identifier:v26 routeChangeReason:v11];

      v28 = [MEMORY[0x277CFE318] userContext];
      v29 = [MEMORY[0x277CFE338] keyPathForAudioOutputDataDictionary];
      [v28 setObject:v27 forKeyedSubscript:v29];

      v6 = v30;
      v5 = v31;
    }

    _Block_object_dispose(&v33, 8);

    _Block_object_dispose(&v39, 8);
  }

  objc_autoreleasePoolPop(v6);
}

@end