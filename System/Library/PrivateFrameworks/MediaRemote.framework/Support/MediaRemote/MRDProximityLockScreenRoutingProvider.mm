@interface MRDProximityLockScreenRoutingProvider
- (MRDLockScreenRoutingProviderDelegate)delegate;
- (MRDProximityLockScreenRoutingProvider)initWithDispatchQueue:(id)a3;
- (NSArray)nearbyDeviceIdentifiers;
- (id)deviceForUID:(id)a3;
- (void)_configureObserver;
- (void)clearNearbyDevices;
- (void)didSwitchRouteTo:(id)a3;
- (void)startObservationIfNeeded;
@end

@implementation MRDProximityLockScreenRoutingProvider

- (MRDProximityLockScreenRoutingProvider)initWithDispatchQueue:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = MRDProximityLockScreenRoutingProvider;
  v6 = [(MRDProximityLockScreenRoutingProvider *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v6->_invalidated = 1;
    objc_storeStrong(&v6->_queue, a3);
    v8 = objc_alloc_init(NSMutableSet);
    nearbyDevices = v7->_nearbyDevices;
    v7->_nearbyDevices = v8;

    [(MRDProximityLockScreenRoutingProvider *)v7 startObservationIfNeeded];
  }

  return v7;
}

- (NSArray)nearbyDeviceIdentifiers
{
  v2 = [(MRDProximityLockScreenRoutingProvider *)self observer];
  v3 = [v2 knownDevices];
  v4 = [v3 sortedArrayUsingComparator:&stru_1004B7C98];

  v5 = [v4 msv_compactMap:&stru_1004B7CD8];

  return v5;
}

- (id)deviceForUID:(id)a3
{
  v4 = a3;
  v5 = [(MRDProximityLockScreenRoutingProvider *)self observer];
  v6 = [v5 knownDevices];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100062B88;
  v10[3] = &unk_1004B7D00;
  v11 = v4;
  v7 = v4;
  v8 = [v6 msv_firstWhere:v10];

  return v8;
}

- (void)didSwitchRouteTo:(id)a3
{
  v4 = [(MRDProximityLockScreenRoutingProvider *)self deviceForUID:a3];
  if (v4)
  {
    v6 = v4;
    v5 = [(MRDProximityLockScreenRoutingProvider *)self observer];
    [v5 didSwitchRouteToDevice:v6];

    v4 = v6;
  }
}

- (void)startObservationIfNeeded
{
  v3 = _MRLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v7 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[ProximityProvider] startObservationIfNeeded (%p)", buf, 0xCu);
  }

  v4 = [(MRDProximityLockScreenRoutingProvider *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100062D40;
  block[3] = &unk_1004B6D08;
  block[4] = self;
  dispatch_async(v4, block);
}

- (void)_configureObserver
{
  objc_initWeak(&location, self);
  v3 = objc_alloc_init(off_10051EB60());
  [(MRDProximityLockScreenRoutingProvider *)self setObserver:v3];

  v4 = [(MRDProximityLockScreenRoutingProvider *)self queue];
  v5 = [(MRDProximityLockScreenRoutingProvider *)self observer];
  [v5 setDispatchQueue:v4];

  v6 = _MRLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(MRDProximityLockScreenRoutingProvider *)self observer];
    *buf = 138412546;
    v22 = v7;
    v23 = 2048;
    v24 = self;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[ProximityProvider] configuring observer: %@ (%p)", buf, 0x16u);
  }

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000630FC;
  v18[3] = &unk_1004B7D28;
  objc_copyWeak(&v19, &location);
  v8 = [(MRDProximityLockScreenRoutingProvider *)self observer];
  [v8 setDeviceLost:v18];

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100063258;
  v16[3] = &unk_1004B7D28;
  objc_copyWeak(&v17, &location);
  v9 = [(MRDProximityLockScreenRoutingProvider *)self observer];
  [v9 setDeviceUpdated:v16];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000633CC;
  v14[3] = &unk_1004B7D50;
  objc_copyWeak(&v15, &location);
  v10 = [(MRDProximityLockScreenRoutingProvider *)self observer];
  [v10 setInvalidationHandler:v14];

  v11 = [(MRDProximityLockScreenRoutingProvider *)self observer];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100063450;
  v12[3] = &unk_1004B7D50;
  objc_copyWeak(&v13, &location);
  [v11 activateWithCompletion:v12];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&v15);
  objc_destroyWeak(&v17);
  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

- (void)clearNearbyDevices
{
  v3 = [(MRDProximityLockScreenRoutingProvider *)self nearbyDevices];
  v4 = [v3 count];

  if (v4)
  {
    v5 = _MRLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[ProximityProvider] Removing all nearby devices.", v7, 2u);
    }

    v6 = [(MRDProximityLockScreenRoutingProvider *)self nearbyDevices];
    [v6 removeAllObjects];
  }
}

- (MRDLockScreenRoutingProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end