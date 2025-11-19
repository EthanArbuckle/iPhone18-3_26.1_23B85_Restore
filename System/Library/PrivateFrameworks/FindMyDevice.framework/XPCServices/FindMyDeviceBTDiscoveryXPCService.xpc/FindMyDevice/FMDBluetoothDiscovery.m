@interface FMDBluetoothDiscovery
- (BOOL)_isDiscoveryActive;
- (FMDBluetoothDiscovery)init;
- (id)discoveredDevices;
- (void)dealloc;
- (void)finishDiscoveringWithError:(id)a3;
- (void)processDeviceInformation:(id)a3 lost:(BOOL)a4;
- (void)startBLEDiscovery;
- (void)stopBLEDiscovery;
- (void)stopDiscovery;
@end

@implementation FMDBluetoothDiscovery

- (FMDBluetoothDiscovery)init
{
  v5.receiver = self;
  v5.super_class = FMDBluetoothDiscovery;
  v2 = [(FMDBluetoothDiscovery *)&v5 init];
  if (v2)
  {
    v3 = +[NSMutableDictionary dictionary];
    [(FMDBluetoothDiscovery *)v2 setDevicesByIdentifier:v3];
  }

  return v2;
}

- (void)dealloc
{
  [(FMDBluetoothDiscovery *)self stopBLEDiscovery];
  [(FMDBluetoothDiscovery *)self finishDiscoveringWithError:0];
  v3.receiver = self;
  v3.super_class = FMDBluetoothDiscovery;
  [(FMDBluetoothDiscovery *)&v3 dealloc];
}

- (BOOL)_isDiscoveryActive
{
  v2 = [(FMDBluetoothDiscovery *)self deviceDiscovery];
  v3 = v2 != 0;

  return v3;
}

- (id)discoveredDevices
{
  v2 = [(FMDBluetoothDiscovery *)self devicesByIdentifier];
  v3 = [v2 allValues];

  return v3;
}

- (void)stopDiscovery
{
  if ([(FMDBluetoothDiscovery *)self _isDiscoveryActive])
  {
    [(FMDBluetoothDiscovery *)self stopBLEDiscovery];

    [(FMDBluetoothDiscovery *)self finishDiscoveringWithError:0];
  }
}

- (void)startBLEDiscovery
{
  v3 = [(FMDBluetoothDiscovery *)self deviceDiscovery];

  v4 = sub_1000012D0();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      sub_10000409C();
    }
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "FMDBluetoothDiscovery starting BLE Scanning", buf, 2u);
    }

    v6 = +[FMDSFDeviceDiscoveryFactory deviceDiscovery];
    [(FMDBluetoothDiscovery *)self setDeviceDiscovery:v6];

    v7 = [(FMDBluetoothDiscovery *)self deviceDiscovery];
    [v7 setChangeFlags:1];

    v8 = [(FMDBluetoothDiscovery *)self deviceDiscovery];
    [v8 setDiscoveryFlags:2];

    v9 = [(FMDBluetoothDiscovery *)self deviceDiscovery];
    [v9 setRssiThreshold:-120];

    v10 = [(FMDBluetoothDiscovery *)self deviceDiscovery];
    [v10 setScanRate:20];

    v11 = [(FMDBluetoothDiscovery *)self deviceDiscovery];
    [v11 setOverrideScreenOff:1];

    objc_initWeak(buf, self);
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1000033F8;
    v22[3] = &unk_10000CEF8;
    objc_copyWeak(&v23, buf);
    v12 = [(FMDBluetoothDiscovery *)self deviceDiscovery];
    [v12 setDeviceFoundHandler:v22];

    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100003470;
    v20[3] = &unk_10000CF20;
    objc_copyWeak(&v21, buf);
    v13 = [(FMDBluetoothDiscovery *)self deviceDiscovery];
    [v13 setDeviceChangedHandler:v20];

    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000034E8;
    v18[3] = &unk_10000CEF8;
    objc_copyWeak(&v19, buf);
    v14 = [(FMDBluetoothDiscovery *)self deviceDiscovery];
    [v14 setDeviceLostHandler:v18];

    v15 = [(FMDBluetoothDiscovery *)self deviceDiscovery];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100003560;
    v16[3] = &unk_10000C468;
    objc_copyWeak(&v17, buf);
    [v15 activateWithCompletion:v16];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&v19);
    objc_destroyWeak(&v21);
    objc_destroyWeak(&v23);
    objc_destroyWeak(buf);
  }
}

- (void)stopBLEDiscovery
{
  v3 = sub_1000012D0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_100004218();
  }

  v4 = [(FMDBluetoothDiscovery *)self deviceDiscovery];
  [v4 invalidate];

  [(FMDBluetoothDiscovery *)self setDeviceDiscovery:0];
  v5 = [(FMDBluetoothDiscovery *)self devicesByIdentifier];
  v6 = [v5 copy];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100003718;
  v8[3] = &unk_10000CF48;
  v8[4] = self;
  [v6 enumerateKeysAndObjectsUsingBlock:v8];
  v7 = [(FMDBluetoothDiscovery *)self devicesByIdentifier];
  [v7 removeAllObjects];
}

- (void)finishDiscoveringWithError:(id)a3
{
  v6 = a3;
  v4 = [(FMDBluetoothDiscovery *)self didEndDiscovery];
  v5 = v4;
  if (v4)
  {
    (*(v4 + 16))(v4, v6);
  }
}

- (void)processDeviceInformation:(id)a3 lost:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  if ([(FMDBluetoothDiscovery *)self _isDiscoveryActive])
  {
    v8 = [v6 bleDevice];
    v9 = [v8 bluetoothAddress];
    v10 = [v9 fm_MACAddressString];

    if (!v10)
    {
      v11 = sub_1000012D0();
      if (os_log_type_enabled(&v11->super, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &v11->super, OS_LOG_TYPE_DEFAULT, "FMDBluetoothDiscovery failed to get bluetooth address.", buf, 2u);
      }

      goto LABEL_39;
    }

    v11 = [[FMDBLEBeaconIdentifier alloc] initWithBLEDevice:v8 other:0];
    v12 = [(FMDBLEBeaconIdentifier *)v11 isValid];
    v13 = sub_1000012D0();
    v14 = v13;
    if ((v12 & 1) == 0)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        sub_100004280();
      }

      goto LABEL_38;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v8 bluetoothAddress];
      v16 = [v8 advertisementFields];
      *buf = 138413058;
      v40 = v15;
      v41 = 2112;
      v42 = v11;
      v43 = 2112;
      v44 = v16;
      v45 = 2048;
      v46 = [v8 rssi];
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "FMDBluetoothDiscovery : %@ %@ %@ %li", buf, 0x2Au);
    }

    v17 = sub_1000012D0();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      if (v18)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "FMDBluetoothDiscovery lost beacon", buf, 2u);
      }

      v19 = [(FMDBluetoothDiscovery *)self devicesByIdentifier];
      [v19 removeObjectForKey:v11];

      v20 = [(FMDBluetoothDiscovery *)self didLoseDevice];

      if (!v20)
      {
        goto LABEL_39;
      }

      v21 = sub_1000012D0();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "FMDBluetoothDiscovery updating the callee with lost btle beacons", buf, 2u);
      }

      v14 = [(FMDBluetoothDiscovery *)self didLoseDevice];
      (*(v14 + 16))(v14, v8);
    }

    else
    {
      if (v18)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "FMDBluetoothDiscovery found change in beacon", buf, 2u);
      }

      v22 = [(FMDBluetoothDiscovery *)self devicesByIdentifier];
      v14 = [v22 objectForKeyedSubscript:v11];

      if (v14)
      {
        v23 = [v8 rssi];
        v24 = [v14 rssi];
        if (v23 - v24 >= 0)
        {
          v25 = v23 - v24;
        }

        else
        {
          v25 = v24 - v23;
        }

        v26 = sub_1000012D0();
        v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
        if (v25 < 0x15)
        {
          if (v27)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "FMDBluetoothDiscovery checking change in advertisement packet", buf, 2u);
          }

          v28 = [v8 advertisementFields];
          v29 = [v28 objectForKeyedSubscript:@"hsStatus"];
          v38 = [v29 unsignedIntValue];

          v30 = [v14 advertisementFields];
          v31 = [v30 objectForKeyedSubscript:@"hsStatus"];
          v32 = [v31 unsignedIntValue];

          if (v38 == v32)
          {
            goto LABEL_38;
          }
        }

        else
        {
          if (v27)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "FMDBluetoothDiscovery found rssi change was significant", buf, 2u);
          }
        }
      }

      v33 = sub_1000012D0();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        sub_1000042B4();
      }

      v34 = [(FMDBluetoothDiscovery *)self devicesByIdentifier];
      [v34 setObject:v8 forKeyedSubscript:v11];

      v35 = [(FMDBluetoothDiscovery *)self didDiscoverDevice];

      if (v35)
      {
        v36 = sub_1000012D0();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "FMDBluetoothDiscovery updating the callee with btle beacons", buf, 2u);
        }

        v37 = [(FMDBluetoothDiscovery *)self didDiscoverDevice];
        (v37)[2](v37, v8);
      }
    }

LABEL_38:

LABEL_39:
    goto LABEL_40;
  }

  v8 = sub_1000012D0();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "FMDBluetoothDiscovery is no longer active. Ignoring device.", buf, 2u);
  }

LABEL_40:

  objc_autoreleasePoolPop(v7);
}

@end