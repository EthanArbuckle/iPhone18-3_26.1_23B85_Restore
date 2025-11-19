@interface _DKAudioInputMonitor
+ (id)_BMEventWithState:(id)a3 type:(id)a4 name:(id)a5 identifier:(id)a6 routeChangeReason:(id)a7;
+ (id)_eventWithState:(id)a3 type:(id)a4 name:(id)a5 identifier:(id)a6 routeChangeReason:(id)a7;
- (void)deactivate;
- (void)dealloc;
- (void)onAudioRouteChangeNotification:(id)a3;
- (void)start;
@end

@implementation _DKAudioInputMonitor

- (void)dealloc
{
  [(_DKAudioInputMonitor *)self deactivate];
  v3.receiver = self;
  v3.super_class = _DKAudioInputMonitor;
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
  v24 = [MEMORY[0x277CFE298] audioInputRouteStream];
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

  v17 = [objc_alloc(MEMORY[0x277CF1020]) initWithExternal:v15 identifier:v12 portType:v14 portName:v13 routeChangeReason:v16 type:1];

  return v17;
}

- (void)start
{
  v3 = [MEMORY[0x277CB83F8] sharedInstance];
  inputMonitor = self->_inputMonitor;
  self->_inputMonitor = v3;

  v5 = BiomeLibrary();
  v6 = [v5 Audio];
  v7 = [v6 Route];
  v8 = [v7 source];
  source = self->_source;
  self->_source = v8;

  v10 = [MEMORY[0x277CCAB98] defaultCenter];
  [v10 addObserver:self selector:sel_onAudioRouteChangeNotification_ name:*MEMORY[0x277CB8210] object:0];
}

- (void)deactivate
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  inputMonitor = self->_inputMonitor;
  self->_inputMonitor = 0;
}

- (void)onAudioRouteChangeNotification:(id)a3
{
  v4 = a3;
  v5 = os_transaction_create();
  v6 = objc_autoreleasePoolPush();
  v7 = [(AVAudioSession *)self->_inputMonitor currentRoute];
  v8 = v7;
  if (v7)
  {
    v36 = 0;
    v37 = &v36;
    v38 = 0x2020000000;
    v39 = 0;
    v30 = 0;
    v31 = &v30;
    v32 = 0x3032000000;
    v33 = __Block_byref_object_copy__9;
    v34 = __Block_byref_object_dispose__9;
    v35 = 0;
    v9 = [v7 inputs];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __55___DKAudioInputMonitor_onAudioRouteChangeNotification___block_invoke;
    v29[3] = &unk_27856F9A0;
    v29[4] = &v30;
    v29[5] = &v36;
    [v9 enumerateObjectsUsingBlock:v29];

    if (v31[5])
    {
      v25 = v6;
      v26 = v5;
      v28 = v4;
      v10 = [MEMORY[0x277CCABB0] numberWithBool:*(v37 + 24)];
      v11 = [v31[5] portType];
      v12 = [v31[5] portName];
      v13 = [v31[5] UID];
      v14 = [v4 userInfo];
      v15 = *MEMORY[0x277CB8220];
      v16 = [v14 objectForKeyedSubscript:*MEMORY[0x277CB8220]];
      v27 = [_DKAudioInputMonitor _eventWithState:v10 type:v11 name:v12 identifier:v13 routeChangeReason:v16];

      [(_DKMonitor *)self setCurrentEvent:v27 inferHistoricalState:1];
      source = self->_source;
      v18 = [MEMORY[0x277CCABB0] numberWithBool:*(v37 + 24)];
      v19 = [v31[5] portType];
      v20 = [v31[5] portName];
      v21 = [v31[5] UID];
      v22 = [v4 userInfo];
      v23 = [v22 objectForKeyedSubscript:v15];
      v24 = [_DKAudioInputMonitor _BMEventWithState:v18 type:v19 name:v20 identifier:v21 routeChangeReason:v23];
      [(BMSource *)source sendEvent:v24];

      v4 = v28;
      v6 = v25;
      v5 = v26;
    }

    _Block_object_dispose(&v30, 8);

    _Block_object_dispose(&v36, 8);
  }

  objc_autoreleasePoolPop(v6);
}

@end