@interface NavdVehicleBluetoothStatus
- (BOOL)connected;
- (NavdVehicleBluetoothStatus)initWithCircuitBoard:(id)board connectTriggers:(id)triggers disconnectTriggers:(id)disconnectTriggers;
@end

@implementation NavdVehicleBluetoothStatus

- (NavdVehicleBluetoothStatus)initWithCircuitBoard:(id)board connectTriggers:(id)triggers disconnectTriggers:(id)disconnectTriggers
{
  boardCopy = board;
  triggersCopy = triggers;
  disconnectTriggersCopy = disconnectTriggers;
  v38.receiver = self;
  v38.super_class = NavdVehicleBluetoothStatus;
  v11 = [(NavdVehicleBluetoothStatus *)&v38 init];
  if (v11)
  {
    v12 = [[MapsSuggestionsQueue alloc] initSerialQueueWithName:@"NavdVehicleBluetoothStatusQueue"];
    queue = v11->_queue;
    v11->_queue = v12;

    v14 = [MapsSuggestionsSimpleTrigger alloc];
    innerQueue = [(MapsSuggestionsQueue *)v11->_queue innerQueue];
    v16 = [v14 initWithName:@"CarConnectTrigger" queue:innerQueue];
    outOnCarConnectTrigger = v11->_outOnCarConnectTrigger;
    v11->_outOnCarConnectTrigger = v16;

    v18 = [MapsSuggestionsSimpleTrigger alloc];
    innerQueue2 = [(MapsSuggestionsQueue *)v11->_queue innerQueue];
    v20 = [v18 initWithName:@"CarDisconnectTrigger" queue:innerQueue2];
    outOnCarDisconnectTrigger = v11->_outOnCarDisconnectTrigger;
    v11->_outOnCarDisconnectTrigger = v20;

    objc_initWeak(&location, v11);
    v22 = [MapsSuggestionsBlockCondition alloc];
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_1000293A8;
    v35[3] = &unk_100067250;
    objc_copyWeak(&v36, &location);
    v23 = [v22 initWithName:@"CarConnectedCondition" block:v35];
    carConnectCondition = v11->_carConnectCondition;
    v11->_carConnectCondition = v23;

    v25 = [MapsSuggestionsBlockCondition alloc];
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_1000294BC;
    v33[3] = &unk_100067250;
    objc_copyWeak(&v34, &location);
    v26 = [v25 initWithName:@"CarDisconnectedCondition" block:v33];
    carDisconnectCondition = v11->_carDisconnectCondition;
    v11->_carDisconnectCondition = v26;

    v28 = sub_1000295D0(v11, triggersCopy);
    v29 = [boardCopy addCircuit:v28];

    v30 = sub_100029704(v11, disconnectTriggersCopy);
    v31 = [boardCopy addCircuit:v30];

    objc_destroyWeak(&v34);
    objc_destroyWeak(&v36);
    objc_destroyWeak(&location);
  }

  return v11;
}

- (BOOL)connected
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  connected = selfCopy->_connected;
  objc_sync_exit(selfCopy);

  return connected;
}

@end