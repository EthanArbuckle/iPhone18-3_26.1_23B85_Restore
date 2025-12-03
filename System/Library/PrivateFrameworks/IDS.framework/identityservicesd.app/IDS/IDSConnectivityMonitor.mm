@interface IDSConnectivityMonitor
- (IDSConnectivityMonitor)init;
- (double)timeConnected;
- (double)timeDisconnected;
- (void)checkConnectivityState:(id)state;
- (void)deliveryController:(id)controller uniqueID:(id)d isConnected:(BOOL)connected;
- (void)sendMonitorMessage;
@end

@implementation IDSConnectivityMonitor

- (IDSConnectivityMonitor)init
{
  v3.receiver = self;
  v3.super_class = IDSConnectivityMonitor;
  return [(IDSConnectivityMonitor *)&v3 init];
}

- (void)checkConnectivityState:(id)state
{
  v4 = +[IDSPairingManager sharedInstance];
  pairedDeviceUUIDString = [v4 pairedDeviceUUIDString];

  if (pairedDeviceUUIDString)
  {
    v6 = +[IDSUTunDeliveryController sharedInstance];
    isConnected = [v6 isConnected];

    if (isConnected)
    {
      [(IDSConnectivityMonitor *)self sendMonitorMessage];
    }

    else
    {
      v8 = +[IDSFoundationLog ConnectivityMonitor];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v15 = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "IDS is not connected, do not send monitoring message.", v15, 2u);
      }

      v9 = objc_alloc_init(IDSConnectivityMonitorMetricProperties);
      v10 = +[IDSUTunDeliveryController sharedInstance];
      -[IDSConnectivityMonitorMetricProperties setTerminusConnected:](v9, "setTerminusConnected:", [v10 isTerminusConnected]);

      v11 = +[IDSUTunDeliveryController sharedInstance];
      -[IDSConnectivityMonitorMetricProperties setTerminusNearby:](v9, "setTerminusNearby:", [v11 isTerminusNearby]);

      v12 = +[IDSUTunDeliveryController sharedInstance];
      -[IDSConnectivityMonitorMetricProperties setTerminusRegistered:](v9, "setTerminusRegistered:", [v12 isTerminusRegistered]);

      [(IDSConnectivityMonitorMetricProperties *)v9 setPairedDeviceCBUUIDString:pairedDeviceUUIDString];
      [(IDSConnectivityMonitorMetricProperties *)v9 setSuccess:0];
      [(IDSConnectivityMonitor *)self timeConnected];
      [(IDSConnectivityMonitorMetricProperties *)v9 setTimeConnected:?];
      [(IDSConnectivityMonitor *)self timeDisconnected];
      [(IDSConnectivityMonitorMetricProperties *)v9 setTimeDisconnected:?];
      v13 = [[IDSConnectivityMonitorMetric alloc] initWithProperties:v9];
      v14 = [IDSRTCLogger loggerWithCategory:3000];
      [v14 logMetric:v13];
    }
  }
}

- (void)sendMonitorMessage
{
  v3 = +[NSString stringGUID];
  v4 = objc_alloc_init(IDSSendParameters);
  [v4 setPriority:200];
  v18 = IDSDefaultPairedDevice;
  v5 = [NSArray arrayWithObjects:&v18 count:1];
  v6 = [NSSet setWithArray:v5];
  v7 = [IDSDestination destinationWithStrings:v6];
  [v4 setDestinations:v7];

  v8 = [NSNumber numberWithInteger:242];
  [v4 setCommand:v8];

  [v4 setFromID:0];
  [v4 setIdentifier:v3];
  v9 = IDSGetUUIDData();
  [v4 setMessageUUID:v9];

  [v4 setLocalDelivery:1];
  v10 = +[IDSDAccountController sharedInstance];
  v11 = +[IDSDServiceController sharedInstance];
  v12 = [v11 serviceWithIdentifier:@"com.apple.private.alloy.connectivity.monitor"];
  v13 = [v10 localAccountOnService:v12];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10044727C;
  v15[3] = &unk_100BD8CD8;
  v16 = v3;
  selfCopy = self;
  v14 = v3;
  [v13 sendMessageWithSendParameters:v4 willSendBlock:0 completionBlock:v15];
}

- (double)timeConnected
{
  lastConnection = [(IDSConnectivityMonitor *)self lastConnection];

  if (!lastConnection)
  {
    return 0.0;
  }

  v4 = +[NSDate date];
  lastConnection2 = [(IDSConnectivityMonitor *)self lastConnection];
  [v4 timeIntervalSinceDate:lastConnection2];
  v7 = v6;

  return v7;
}

- (double)timeDisconnected
{
  lastDisconnection = [(IDSConnectivityMonitor *)self lastDisconnection];

  if (!lastDisconnection)
  {
    return 0.0;
  }

  v4 = +[NSDate date];
  lastDisconnection2 = [(IDSConnectivityMonitor *)self lastDisconnection];
  [v4 timeIntervalSinceDate:lastDisconnection2];
  v7 = v6;

  return v7;
}

- (void)deliveryController:(id)controller uniqueID:(id)d isConnected:(BOOL)connected
{
  connectedCopy = connected;
  v7 = [NSDate date:controller];
  if (connectedCopy)
  {
    [(IDSConnectivityMonitor *)self setLastConnection:v7];

    [(IDSConnectivityMonitor *)self setLastDisconnection:0];
  }

  else
  {
    [(IDSConnectivityMonitor *)self setLastDisconnection:v7];

    [(IDSConnectivityMonitor *)self setLastConnection:0];
  }
}

@end