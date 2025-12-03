@interface FMDBluetoothDiscovery
- (BOOL)_isDiscoveryActive;
- (FMDBluetoothDiscovery)init;
- (id)discoveredDevices;
- (void)dealloc;
- (void)finishDiscoveringWithError:(id)error;
- (void)processDeviceInformation:(id)information lost:(BOOL)lost;
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
  deviceDiscovery = [(FMDBluetoothDiscovery *)self deviceDiscovery];
  v3 = deviceDiscovery != 0;

  return v3;
}

- (id)discoveredDevices
{
  devicesByIdentifier = [(FMDBluetoothDiscovery *)self devicesByIdentifier];
  allValues = [devicesByIdentifier allValues];

  return allValues;
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
  deviceDiscovery = [(FMDBluetoothDiscovery *)self deviceDiscovery];

  v4 = sub_1000012D0();
  v5 = v4;
  if (deviceDiscovery)
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

    deviceDiscovery2 = [(FMDBluetoothDiscovery *)self deviceDiscovery];
    [deviceDiscovery2 setChangeFlags:1];

    deviceDiscovery3 = [(FMDBluetoothDiscovery *)self deviceDiscovery];
    [deviceDiscovery3 setDiscoveryFlags:2];

    deviceDiscovery4 = [(FMDBluetoothDiscovery *)self deviceDiscovery];
    [deviceDiscovery4 setRssiThreshold:-120];

    deviceDiscovery5 = [(FMDBluetoothDiscovery *)self deviceDiscovery];
    [deviceDiscovery5 setScanRate:20];

    deviceDiscovery6 = [(FMDBluetoothDiscovery *)self deviceDiscovery];
    [deviceDiscovery6 setOverrideScreenOff:1];

    objc_initWeak(buf, self);
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1000033F8;
    v22[3] = &unk_10000CEF8;
    objc_copyWeak(&v23, buf);
    deviceDiscovery7 = [(FMDBluetoothDiscovery *)self deviceDiscovery];
    [deviceDiscovery7 setDeviceFoundHandler:v22];

    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100003470;
    v20[3] = &unk_10000CF20;
    objc_copyWeak(&v21, buf);
    deviceDiscovery8 = [(FMDBluetoothDiscovery *)self deviceDiscovery];
    [deviceDiscovery8 setDeviceChangedHandler:v20];

    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000034E8;
    v18[3] = &unk_10000CEF8;
    objc_copyWeak(&v19, buf);
    deviceDiscovery9 = [(FMDBluetoothDiscovery *)self deviceDiscovery];
    [deviceDiscovery9 setDeviceLostHandler:v18];

    deviceDiscovery10 = [(FMDBluetoothDiscovery *)self deviceDiscovery];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100003560;
    v16[3] = &unk_10000C468;
    objc_copyWeak(&v17, buf);
    [deviceDiscovery10 activateWithCompletion:v16];

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

  deviceDiscovery = [(FMDBluetoothDiscovery *)self deviceDiscovery];
  [deviceDiscovery invalidate];

  [(FMDBluetoothDiscovery *)self setDeviceDiscovery:0];
  devicesByIdentifier = [(FMDBluetoothDiscovery *)self devicesByIdentifier];
  v6 = [devicesByIdentifier copy];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100003718;
  v8[3] = &unk_10000CF48;
  v8[4] = self;
  [v6 enumerateKeysAndObjectsUsingBlock:v8];
  devicesByIdentifier2 = [(FMDBluetoothDiscovery *)self devicesByIdentifier];
  [devicesByIdentifier2 removeAllObjects];
}

- (void)finishDiscoveringWithError:(id)error
{
  errorCopy = error;
  didEndDiscovery = [(FMDBluetoothDiscovery *)self didEndDiscovery];
  v5 = didEndDiscovery;
  if (didEndDiscovery)
  {
    (*(didEndDiscovery + 16))(didEndDiscovery, errorCopy);
  }
}

- (void)processDeviceInformation:(id)information lost:(BOOL)lost
{
  lostCopy = lost;
  informationCopy = information;
  v7 = objc_autoreleasePoolPush();
  if ([(FMDBluetoothDiscovery *)self _isDiscoveryActive])
  {
    bleDevice = [informationCopy bleDevice];
    bluetoothAddress = [bleDevice bluetoothAddress];
    fm_MACAddressString = [bluetoothAddress fm_MACAddressString];

    if (!fm_MACAddressString)
    {
      v11 = sub_1000012D0();
      if (os_log_type_enabled(&v11->super, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &v11->super, OS_LOG_TYPE_DEFAULT, "FMDBluetoothDiscovery failed to get bluetooth address.", buf, 2u);
      }

      goto LABEL_39;
    }

    v11 = [[FMDBLEBeaconIdentifier alloc] initWithBLEDevice:bleDevice other:0];
    isValid = [(FMDBLEBeaconIdentifier *)v11 isValid];
    v13 = sub_1000012D0();
    didLoseDevice2 = v13;
    if ((isValid & 1) == 0)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        sub_100004280();
      }

      goto LABEL_38;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      bluetoothAddress2 = [bleDevice bluetoothAddress];
      advertisementFields = [bleDevice advertisementFields];
      *buf = 138413058;
      v40 = bluetoothAddress2;
      v41 = 2112;
      v42 = v11;
      v43 = 2112;
      v44 = advertisementFields;
      v45 = 2048;
      rssi = [bleDevice rssi];
      _os_log_impl(&_mh_execute_header, didLoseDevice2, OS_LOG_TYPE_DEFAULT, "FMDBluetoothDiscovery : %@ %@ %@ %li", buf, 0x2Au);
    }

    v17 = sub_1000012D0();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
    if (lostCopy)
    {
      if (v18)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "FMDBluetoothDiscovery lost beacon", buf, 2u);
      }

      devicesByIdentifier = [(FMDBluetoothDiscovery *)self devicesByIdentifier];
      [devicesByIdentifier removeObjectForKey:v11];

      didLoseDevice = [(FMDBluetoothDiscovery *)self didLoseDevice];

      if (!didLoseDevice)
      {
        goto LABEL_39;
      }

      v21 = sub_1000012D0();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "FMDBluetoothDiscovery updating the callee with lost btle beacons", buf, 2u);
      }

      didLoseDevice2 = [(FMDBluetoothDiscovery *)self didLoseDevice];
      (*(didLoseDevice2 + 16))(didLoseDevice2, bleDevice);
    }

    else
    {
      if (v18)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "FMDBluetoothDiscovery found change in beacon", buf, 2u);
      }

      devicesByIdentifier2 = [(FMDBluetoothDiscovery *)self devicesByIdentifier];
      didLoseDevice2 = [devicesByIdentifier2 objectForKeyedSubscript:v11];

      if (didLoseDevice2)
      {
        rssi2 = [bleDevice rssi];
        rssi3 = [didLoseDevice2 rssi];
        if (rssi2 - rssi3 >= 0)
        {
          v25 = rssi2 - rssi3;
        }

        else
        {
          v25 = rssi3 - rssi2;
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

          advertisementFields2 = [bleDevice advertisementFields];
          v29 = [advertisementFields2 objectForKeyedSubscript:@"hsStatus"];
          unsignedIntValue = [v29 unsignedIntValue];

          advertisementFields3 = [didLoseDevice2 advertisementFields];
          v31 = [advertisementFields3 objectForKeyedSubscript:@"hsStatus"];
          unsignedIntValue2 = [v31 unsignedIntValue];

          if (unsignedIntValue == unsignedIntValue2)
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

      devicesByIdentifier3 = [(FMDBluetoothDiscovery *)self devicesByIdentifier];
      [devicesByIdentifier3 setObject:bleDevice forKeyedSubscript:v11];

      didDiscoverDevice = [(FMDBluetoothDiscovery *)self didDiscoverDevice];

      if (didDiscoverDevice)
      {
        v36 = sub_1000012D0();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "FMDBluetoothDiscovery updating the callee with btle beacons", buf, 2u);
        }

        didDiscoverDevice2 = [(FMDBluetoothDiscovery *)self didDiscoverDevice];
        (didDiscoverDevice2)[2](didDiscoverDevice2, bleDevice);
      }
    }

LABEL_38:

LABEL_39:
    goto LABEL_40;
  }

  bleDevice = sub_1000012D0();
  if (os_log_type_enabled(bleDevice, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, bleDevice, OS_LOG_TYPE_DEFAULT, "FMDBluetoothDiscovery is no longer active. Ignoring device.", buf, 2u);
  }

LABEL_40:

  objc_autoreleasePoolPop(v7);
}

@end