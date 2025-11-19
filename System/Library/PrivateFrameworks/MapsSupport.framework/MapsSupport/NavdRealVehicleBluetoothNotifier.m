@interface NavdRealVehicleBluetoothNotifier
- (NavdRealVehicleBluetoothNotifier)init;
- (id).cxx_construct;
- (void)clear;
- (void)showWithTitle:(id)a3 message:(id)a4 actionURL:(id)a5;
@end

@implementation NavdRealVehicleBluetoothNotifier

- (NavdRealVehicleBluetoothNotifier)init
{
  v11.receiver = self;
  v11.super_class = NavdRealVehicleBluetoothNotifier;
  v2 = [(NavdRealVehicleBluetoothNotifier *)&v11 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    sub_10001A824(&v9, @"NavdRealVehicleBluetoothNotifierQueue", v3);
    v4 = v9;
    v9 = 0;
    innerQueue = v2->_queue._innerQueue;
    v2->_queue._innerQueue = v4;

    v6 = v10;
    v10 = 0;
    name = v2->_queue._name;
    v2->_queue._name = v6;

    sub_100030054(v2);
  }

  return v2;
}

- (void)showWithTitle:(id)a3 message:(id)a4 actionURL:(id)a5
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000301B0;
  v11[3] = &unk_100067818;
  v12 = self;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  innerQueue = v12->_queue._innerQueue;
  v8 = v15;
  v9 = v14;
  v10 = v13;
  dispatch_async(innerQueue, v11);
}

- (void)clear
{
  objc_initWeak(&location, self);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000302B8;
  v3[3] = &unk_100065548;
  objc_copyWeak(&v4, &location);
  dispatch_async(self->_queue._innerQueue, v3);
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

- (id).cxx_construct
{
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

@end