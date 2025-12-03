@interface NavdVehicleBluetoothConnectAction
- (NSString)uniqueName;
- (NavdVehicleBluetoothConnectAction)initWithConditions:(id)conditions resourceDepot:(id)depot notifier:(id)notifier completionHandler:(id)handler;
- (id).cxx_construct;
- (void)actWithHandler:(id)handler;
@end

@implementation NavdVehicleBluetoothConnectAction

- (NavdVehicleBluetoothConnectAction)initWithConditions:(id)conditions resourceDepot:(id)depot notifier:(id)notifier completionHandler:(id)handler
{
  conditionsCopy = conditions;
  depotCopy = depot;
  notifierCopy = notifier;
  handlerCopy = handler;
  v27.receiver = self;
  v27.super_class = NavdVehicleBluetoothConnectAction;
  v15 = [(NavdVehicleBluetoothConnectAction *)&v27 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_conditions, conditions);
    objc_storeStrong(&v16->_resourceDepot, depot);
    v17 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    sub_10001A824(&v25, @"NavdVehicleBluetoothConnectActionQueue", v17);
    v18 = v25;
    v25 = 0;
    innerQueue = v16->_queue._innerQueue;
    v16->_queue._innerQueue = v18;

    v20 = v26;
    v26 = 0;
    name = v16->_queue._name;
    v16->_queue._name = v20;

    objc_storeStrong(&v16->_notifier, notifier);
    v22 = [handlerCopy copy];
    handler = v16->_handler;
    v16->_handler = v22;
  }

  return v16;
}

- (void)actWithHandler:(id)handler
{
  handlerCopy = handler;
  objc_initWeak(&location, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001B798;
  block[3] = &unk_1000659A0;
  objc_copyWeak(&v9, &location);
  v8 = handlerCopy;
  innerQueue = self->_queue._innerQueue;
  v6 = handlerCopy;
  dispatch_async(innerQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (NSString)uniqueName
{
  v2 = objc_opt_class();

  return [v2 description];
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

@end