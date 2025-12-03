@interface _DKAudioInputMonitor
+ (id)_BMEventWithState:(id)state type:(id)type name:(id)name identifier:(id)identifier routeChangeReason:(id)reason;
+ (id)_eventWithState:(id)state type:(id)type name:(id)name identifier:(id)identifier routeChangeReason:(id)reason;
- (void)deactivate;
- (void)dealloc;
- (void)onAudioRouteChangeNotification:(id)notification;
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
  audioInputRouteStream = [MEMORY[0x277CFE298] audioInputRouteStream];
  date = [MEMORY[0x277CBEAA8] date];
  distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
  v27 = [v23 eventWithStream:audioInputRouteStream startDate:date endDate:distantFuture value:v22 metadata:v21];

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

  v17 = [objc_alloc(MEMORY[0x277CF1020]) initWithExternal:stateCopy identifier:identifierCopy portType:typeCopy portName:nameCopy routeChangeReason:v16 type:1];

  return v17;
}

- (void)start
{
  mEMORY[0x277CB83F8] = [MEMORY[0x277CB83F8] sharedInstance];
  inputMonitor = self->_inputMonitor;
  self->_inputMonitor = mEMORY[0x277CB83F8];

  v5 = BiomeLibrary();
  audio = [v5 Audio];
  route = [audio Route];
  source = [route source];
  source = self->_source;
  self->_source = source;

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_onAudioRouteChangeNotification_ name:*MEMORY[0x277CB8210] object:0];
}

- (void)deactivate
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  inputMonitor = self->_inputMonitor;
  self->_inputMonitor = 0;
}

- (void)onAudioRouteChangeNotification:(id)notification
{
  notificationCopy = notification;
  v5 = os_transaction_create();
  v6 = objc_autoreleasePoolPush();
  currentRoute = [(AVAudioSession *)self->_inputMonitor currentRoute];
  v8 = currentRoute;
  if (currentRoute)
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
    inputs = [currentRoute inputs];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __55___DKAudioInputMonitor_onAudioRouteChangeNotification___block_invoke;
    v29[3] = &unk_27856F9A0;
    v29[4] = &v30;
    v29[5] = &v36;
    [inputs enumerateObjectsUsingBlock:v29];

    if (v31[5])
    {
      v25 = v6;
      v26 = v5;
      v28 = notificationCopy;
      v10 = [MEMORY[0x277CCABB0] numberWithBool:*(v37 + 24)];
      portType = [v31[5] portType];
      portName = [v31[5] portName];
      v13 = [v31[5] UID];
      userInfo = [notificationCopy userInfo];
      v15 = *MEMORY[0x277CB8220];
      v16 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CB8220]];
      v27 = [_DKAudioInputMonitor _eventWithState:v10 type:portType name:portName identifier:v13 routeChangeReason:v16];

      [(_DKMonitor *)self setCurrentEvent:v27 inferHistoricalState:1];
      source = self->_source;
      v18 = [MEMORY[0x277CCABB0] numberWithBool:*(v37 + 24)];
      portType2 = [v31[5] portType];
      portName2 = [v31[5] portName];
      v21 = [v31[5] UID];
      userInfo2 = [notificationCopy userInfo];
      v23 = [userInfo2 objectForKeyedSubscript:v15];
      v24 = [_DKAudioInputMonitor _BMEventWithState:v18 type:portType2 name:portName2 identifier:v21 routeChangeReason:v23];
      [(BMSource *)source sendEvent:v24];

      notificationCopy = v28;
      v6 = v25;
      v5 = v26;
    }

    _Block_object_dispose(&v30, 8);

    _Block_object_dispose(&v36, 8);
  }

  objc_autoreleasePoolPop(v6);
}

@end