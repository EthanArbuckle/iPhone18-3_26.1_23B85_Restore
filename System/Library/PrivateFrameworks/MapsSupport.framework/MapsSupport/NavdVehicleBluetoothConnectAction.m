@interface NavdVehicleBluetoothConnectAction
- (NSString)uniqueName;
- (NavdVehicleBluetoothConnectAction)initWithConditions:(id)a3 resourceDepot:(id)a4 notifier:(id)a5 completionHandler:(id)a6;
- (id).cxx_construct;
- (void)actWithHandler:(id)a3;
@end

@implementation NavdVehicleBluetoothConnectAction

- (NavdVehicleBluetoothConnectAction)initWithConditions:(id)a3 resourceDepot:(id)a4 notifier:(id)a5 completionHandler:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v27.receiver = self;
  v27.super_class = NavdVehicleBluetoothConnectAction;
  v15 = [(NavdVehicleBluetoothConnectAction *)&v27 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_conditions, a3);
    objc_storeStrong(&v16->_resourceDepot, a4);
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

    objc_storeStrong(&v16->_notifier, a5);
    v22 = [v14 copy];
    handler = v16->_handler;
    v16->_handler = v22;
  }

  return v16;
}

- (void)actWithHandler:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001B798;
  block[3] = &unk_1000659A0;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  innerQueue = self->_queue._innerQueue;
  v6 = v4;
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