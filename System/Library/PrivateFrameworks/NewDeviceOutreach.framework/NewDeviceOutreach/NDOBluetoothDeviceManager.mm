@interface NDOBluetoothDeviceManager
- (NDOBluetoothDeviceManager)init;
- (id)getCurrentDateTimeInEpochSecondsString;
- (id)populateAirPodsData:(id)data withAccessoryInfo:(id)info;
- (void)bluetoothManagerDidBecomeAvailable:(id)available;
- (void)getBluetoothAudioDevicesWithCompletionHandler:(id)handler;
- (void)getConnectedAudioDevicesWithCompletionHandler:(id)handler;
- (void)setupBluetoothManager;
@end

@implementation NDOBluetoothDeviceManager

- (NDOBluetoothDeviceManager)init
{
  v5.receiver = self;
  v5.super_class = NDOBluetoothDeviceManager;
  v2 = [(NDOBluetoothDeviceManager *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(NDOBluetoothDeviceManager *)v2 setupBluetoothManager];
  }

  return v3;
}

- (void)setupBluetoothManager
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_create("com.apple.ndoagent.BluetoothManagerQueue", v3);
  [(NDOBluetoothDeviceManager *)self setBluetoothManagerQueue:v4];

  bluetoothManagerQueue = [(NDOBluetoothDeviceManager *)self bluetoothManagerQueue];
  [BluetoothManager setSharedInstanceQueue:bluetoothManagerQueue];

  bluetoothManagerQueue2 = [(NDOBluetoothDeviceManager *)self bluetoothManagerQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100012698;
  block[3] = &unk_10009A728;
  block[4] = self;
  dispatch_sync(bluetoothManagerQueue2, block);

  v7 = +[NSNotificationCenter defaultCenter];
  [v7 addObserver:self selector:"bluetoothManagerDidBecomeAvailable:" name:BluetoothAvailabilityChangedNotification object:0];

  v8 = +[NSNotificationCenter defaultCenter];
  [v8 addObserver:self selector:"bluetoothManagerDidBecomeAvailable:" name:BluetoothDeviceConnectSuccessNotification object:0];
}

- (void)bluetoothManagerDidBecomeAvailable:(id)available
{
  availableCopy = available;
  v4 = _NDOLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_100073920(availableCopy, v4);
  }
}

- (void)getConnectedAudioDevicesWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = _NDOLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1000739C0(v5, v6, v7, v8, v9, v10, v11, v12);
  }

  bluetoothManagerQueue = [(NDOBluetoothDeviceManager *)self bluetoothManagerQueue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100012824;
  v15[3] = &unk_10009A5F8;
  v15[4] = self;
  v16 = handlerCopy;
  v14 = handlerCopy;
  dispatch_sync(bluetoothManagerQueue, v15);
}

- (id)getCurrentDateTimeInEpochSecondsString
{
  v2 = +[NSDate date];
  [v2 timeIntervalSince1970];
  v4 = v3;

  return [NSString stringWithFormat:@"%ld", v4];
}

- (id)populateAirPodsData:(id)data withAccessoryInfo:(id)info
{
  dataCopy = data;
  infoCopy = info;
  v8 = _NDOLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_100073A38(v8, v9, v10, v11, v12, v13, v14, v15);
  }

  v16 = objc_opt_new();
  if (dataCopy && [infoCopy count] >= 0xF)
  {
    v17 = [infoCopy objectAtIndexedSubscript:3];
    v18 = [infoCopy objectAtIndexedSubscript:1];
    v34 = [infoCopy objectAtIndexedSubscript:8];
    v33 = [infoCopy objectAtIndexedSubscript:9];
    v19 = [infoCopy objectAtIndexedSubscript:4];
    v31 = [infoCopy objectAtIndexedSubscript:13];
    v30 = [infoCopy objectAtIndexedSubscript:14];
    firmwareVersion = [dataCopy firmwareVersion];
    caseVersion = [dataCopy caseVersion];
    getCurrentDateTimeInEpochSecondsString = [(NDOBluetoothDeviceManager *)self getCurrentDateTimeInEpochSecondsString];
    [NDOTypeChecking safeAddValue:v17 forKey:@"caseSerialNumber" toDictionary:v16];
    [NDOTypeChecking safeAddValue:v18 forKey:@"caseModelNumber" toDictionary:v16];
    v32 = v19;
    [NDOTypeChecking safeAddValue:v19 forKey:@"caseFirmwareVersion" toDictionary:v16];
    [NDOTypeChecking safeAddValue:caseVersion forKey:@"caseFirmwareMarketingName" toDictionary:v16];
    [NDOTypeChecking safeAddValue:caseVersion forKey:@"caseVersion" toDictionary:v16];
    v29 = getCurrentDateTimeInEpochSecondsString;
    [NDOTypeChecking safeAddValue:getCurrentDateTimeInEpochSecondsString forKey:@"firmwareUpdateDate" toDictionary:v16];
    productID = [dataCopy productID];
    if (productID == 8223 || productID == 8202)
    {
      [NDOTypeChecking safeAddValue:firmwareVersion forKey:@"caseFirmwareMarketingName" toDictionary:v16];
      v24 = v31;
      [NDOTypeChecking safeAddValue:v31 forKey:@"caseFirstPairingDate" toDictionary:v16];
      v25 = [NSNumber numberWithBool:1];
      [NDOTypeChecking safeAddValue:v25 forKey:@"isAirPodsMax" toDictionary:v16];

      v26 = v33;
      v27 = v30;
    }

    else
    {
      [NDOTypeChecking safeAddValue:v34 forKey:@"leftBudSerialNumber" toDictionary:v16];
      [NDOTypeChecking safeAddValue:firmwareVersion forKey:@"leftBudFirmwareVersion" toDictionary:v16];
      [NDOTypeChecking safeAddValue:firmwareVersion forKey:@"leftBudFirmwareMarketingName" toDictionary:v16];
      [NDOTypeChecking safeAddValue:v18 forKey:@"leftBudModelNumber" toDictionary:v16];
      v24 = v31;
      [NDOTypeChecking safeAddValue:v31 forKey:@"leftBudFirstPairingDate" toDictionary:v16];
      v26 = v33;
      [NDOTypeChecking safeAddValue:v33 forKey:@"rightBudSerialNumber" toDictionary:v16];
      [NDOTypeChecking safeAddValue:firmwareVersion forKey:@"rightBudFirmwareVersion" toDictionary:v16];
      [NDOTypeChecking safeAddValue:firmwareVersion forKey:@"rightBudFirmwareMarketingName" toDictionary:v16];
      [NDOTypeChecking safeAddValue:v18 forKey:@"rightBudModelNumber" toDictionary:v16];
      v27 = v30;
      [NDOTypeChecking safeAddValue:v30 forKey:@"rightBudFirstPairingDate" toDictionary:v16];
    }
  }

  return v16;
}

- (void)getBluetoothAudioDevicesWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = _NDOLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_100073AB0(v5, v6, v7, v8, v9, v10, v11, v12);
  }

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100012EE8;
  v14[3] = &unk_10009AC10;
  v14[4] = self;
  v15 = handlerCopy;
  v13 = handlerCopy;
  [(NDOBluetoothDeviceManager *)self getConnectedAudioDevicesWithCompletionHandler:v14];
}

@end