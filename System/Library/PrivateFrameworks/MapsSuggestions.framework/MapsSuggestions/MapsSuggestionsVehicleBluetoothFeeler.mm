@interface MapsSuggestionsVehicleBluetoothFeeler
- (BOOL)updateSignals;
- (MapsSuggestionsVehicleBluetoothFeeler)initWithDelegate:(id)a3 name:(id)a4;
- (void)_updateForConnectionState:(int)a3;
- (void)dealloc;
@end

@implementation MapsSuggestionsVehicleBluetoothFeeler

- (BOOL)updateSignals
{
  v3 = sub_1000040F0(self);
  sub_100020F34(self, v3);
  return 1;
}

- (MapsSuggestionsVehicleBluetoothFeeler)initWithDelegate:(id)a3 name:(id)a4
{
  objc_initWeak(&location, a3);
  v6 = a4;
  v7 = objc_loadWeakRetained(&location);
  v24.receiver = self;
  v24.super_class = MapsSuggestionsVehicleBluetoothFeeler;
  v8 = [(MapsSuggestionsBaseFeeler *)&v24 initWithDelegate:v7 name:v6];

  if (v8)
  {
    v9 = dispatch_queue_create("MapsSuggestionsVehicleBluetoothFeeler", 0);
    queue = v8->_queue;
    v8->_queue = v9;

    v11 = [[MapsSuggestionsMutableSignalPack alloc] initWithCapacity:1];
    signalPack = v8->_signalPack;
    v8->_signalPack = v11;

    objc_initWeak(&from, v8);
    v13 = v8->_queue;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100020C08;
    handler[3] = &unk_1000757E8;
    objc_copyWeak(&v22, &from);
    notify_register_dispatch("com.apple.locationd.vehicle.connected", &v8->_notificationTokenConnect, v13, handler);
    v14 = v8->_queue;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100020D14;
    v19[3] = &unk_1000757E8;
    objc_copyWeak(&v20, &from);
    notify_register_dispatch("com.apple.locationd.vehicle.disconnected", &v8->_notificationTokenDisconnect, v14, v19);
    v15 = v8->_queue;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100020E20;
    v17[3] = &unk_1000757E8;
    objc_copyWeak(&v18, &from);
    notify_register_dispatch("com.apple.locationd.vehicle.exit", &v8->_notificationTokenExit, v15, v17);
    objc_destroyWeak(&v18);
    objc_destroyWeak(&v20);
    objc_destroyWeak(&v22);
    objc_destroyWeak(&from);
  }

  objc_destroyWeak(&location);
  return v8;
}

- (void)dealloc
{
  notificationTokenConnect = self->_notificationTokenConnect;
  if (notificationTokenConnect)
  {
    notify_cancel(notificationTokenConnect);
    self->_notificationTokenConnect = 0;
  }

  notificationTokenDisconnect = self->_notificationTokenDisconnect;
  if (notificationTokenDisconnect)
  {
    notify_cancel(notificationTokenDisconnect);
    self->_notificationTokenDisconnect = 0;
  }

  notificationTokenExit = self->_notificationTokenExit;
  if (notificationTokenExit)
  {
    notify_cancel(notificationTokenExit);
    self->_notificationTokenExit = 0;
  }

  v6.receiver = self;
  v6.super_class = MapsSuggestionsVehicleBluetoothFeeler;
  [(MapsSuggestionsVehicleBluetoothFeeler *)&v6 dealloc];
}

- (void)_updateForConnectionState:(int)a3
{
  if (sub_1000040F0(self) != a3)
  {
    sub_10004CBA8(self, a3);
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6[0] = 67109120;
      v6[1] = sub_1000040F0(self);
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "bluetoothFeeler: setting connection state to %d", v6, 8u);
    }

    [(MapsSuggestionsVehicleBluetoothFeeler *)self updateSignals];
  }
}

@end