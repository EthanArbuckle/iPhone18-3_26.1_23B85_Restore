@interface _DKAudioOutputMonitor
+ (id)_BMEventWithState:(id)state type:(id)type name:(id)name identifier:(id)identifier routeChangeReason:(id)reason;
+ (id)_eventWithState:(id)state type:(id)type name:(id)name identifier:(id)identifier routeChangeReason:(id)reason;
- (_DKAudioOutputMonitor)init;
- (void)deactivate;
- (void)dealloc;
- (void)onAudioRouteChangeNotification:(id)notification;
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

+ (id)_eventWithState:(id)state type:(id)type name:(id)name identifier:(id)identifier routeChangeReason:(id)reason
{
  v31[4] = *MEMORY[0x277D85DE8];
  typeCopy = type;
  nameCopy = name;
  identifierCopy = identifier;
  reasonCopy = &unk_2838F79A8;
  if (reason)
  {
    reasonCopy = reason;
  }

  v15 = reasonCopy;
  stateCopy = state;
  portType = [MEMORY[0x277CFE180] portType];
  v30[0] = portType;
  v31[0] = typeCopy;
  portName = [MEMORY[0x277CFE180] portName];
  v30[1] = portName;
  v31[1] = nameCopy;
  identifier = [MEMORY[0x277CFE180] identifier];
  v30[2] = identifier;
  v31[2] = identifierCopy;
  routeChangeReason = [MEMORY[0x277CFE180] routeChangeReason];
  v30[3] = routeChangeReason;
  v31[3] = v15;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:4];

  LOBYTE(portType) = [stateCopy BOOLValue];
  if (portType)
  {
    [MEMORY[0x277CFE188] external];
  }

  else
  {
    [MEMORY[0x277CFE188] internal];
  }
  v22 = ;
  v23 = MEMORY[0x277CFE1D8];
  audioOutputRoutStream = [MEMORY[0x277CFE298] audioOutputRoutStream];
  date = [MEMORY[0x277CBEAA8] date];
  distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
  v27 = [v23 eventWithStream:audioOutputRoutStream startDate:date endDate:distantFuture value:v22 metadata:v21];

  v28 = *MEMORY[0x277D85DE8];

  return v27;
}

+ (id)_BMEventWithState:(id)state type:(id)type name:(id)name identifier:(id)identifier routeChangeReason:(id)reason
{
  reasonCopy = reason;
  identifierCopy = identifier;
  nameCopy = name;
  typeCopy = type;
  stateCopy = state;
  if ([reasonCopy intValue])
  {
    if ([reasonCopy intValue] == 1)
    {
      v16 = 1;
    }

    else if ([reasonCopy intValue] == 2)
    {
      v16 = 2;
    }

    else if ([reasonCopy intValue] == 3)
    {
      v16 = 3;
    }

    else if ([reasonCopy intValue] == 4)
    {
      v16 = 4;
    }

    else if ([reasonCopy intValue] == 6)
    {
      v16 = 5;
    }

    else if ([reasonCopy intValue] == 7)
    {
      v16 = 6;
    }

    else if ([reasonCopy intValue] == 8)
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

  v17 = [objc_alloc(MEMORY[0x277CF1020]) initWithExternal:stateCopy identifier:identifierCopy portType:typeCopy portName:nameCopy routeChangeReason:v16 type:2];

  return v17;
}

- (void)start
{
  mEMORY[0x277CB83F8] = [MEMORY[0x277CB83F8] sharedInstance];
  outputMonitor = self->_outputMonitor;
  self->_outputMonitor = mEMORY[0x277CB83F8];

  v5 = BiomeLibrary();
  audio = [v5 Audio];
  route = [audio Route];
  source = [route source];
  source = self->_source;
  self->_source = source;

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_onAudioRouteChangeNotification_ name:*MEMORY[0x277CB8210] object:0];

  [(_DKAudioOutputMonitor *)self onAudioRouteChangeNotification:0];
}

- (void)deactivate
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  outputMonitor = self->_outputMonitor;
  self->_outputMonitor = 0;
}

- (void)onAudioRouteChangeNotification:(id)notification
{
  notificationCopy = notification;
  v5 = os_transaction_create();
  v6 = objc_autoreleasePoolPush();
  currentRoute = [(AVAudioSession *)self->_outputMonitor currentRoute];
  v8 = currentRoute;
  if (currentRoute)
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
    outputs = [currentRoute outputs];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __56___DKAudioOutputMonitor_onAudioRouteChangeNotification___block_invoke;
    v32[3] = &unk_27856F9A0;
    v32[4] = &v33;
    v32[5] = &v39;
    [outputs enumerateObjectsUsingBlock:v32];

    if (v34[5])
    {
      v30 = v6;
      v31 = v5;
      userInfo = [notificationCopy userInfo];
      v11 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CB8220]];

      v12 = [MEMORY[0x277CCABB0] numberWithBool:*(v40 + 24)];
      portType = [v34[5] portType];
      portName = [v34[5] portName];
      v15 = [v34[5] UID];
      v16 = [_DKAudioOutputMonitor _eventWithState:v12 type:portType name:portName identifier:v15 routeChangeReason:v11];

      [(_DKMonitor *)self setCurrentEvent:v16 inferHistoricalState:1];
      source = self->_source;
      v18 = [MEMORY[0x277CCABB0] numberWithBool:*(v40 + 24)];
      portType2 = [v34[5] portType];
      portName2 = [v34[5] portName];
      v21 = [v34[5] UID];
      v22 = [_DKAudioOutputMonitor _BMEventWithState:v18 type:portType2 name:portName2 identifier:v21 routeChangeReason:v11];
      [(BMSource *)source sendEvent:v22];

      v23 = *(v40 + 24);
      portType3 = [v34[5] portType];
      portName3 = [v34[5] portName];
      v26 = [v34[5] UID];
      v27 = [_DKAudioOutputMonitor contextValueForAudioOutputConnectionStatus:v23 type:portType3 name:portName3 identifier:v26 routeChangeReason:v11];

      userContext = [MEMORY[0x277CFE318] userContext];
      keyPathForAudioOutputDataDictionary = [MEMORY[0x277CFE338] keyPathForAudioOutputDataDictionary];
      [userContext setObject:v27 forKeyedSubscript:keyPathForAudioOutputDataDictionary];

      v6 = v30;
      v5 = v31;
    }

    _Block_object_dispose(&v33, 8);

    _Block_object_dispose(&v39, 8);
  }

  objc_autoreleasePoolPop(v6);
}

@end