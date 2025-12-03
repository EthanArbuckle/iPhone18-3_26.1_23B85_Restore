@interface MRDActiveMediaRouteBiomeDonor
- (MRDActiveMediaRouteBiomeDonor)init;
- (void)_handleActiveSystemEndpointDidChangeNotification:(id)notification;
- (void)_handleActiveSystemEndpointOutputDevicesDidChangeNotification:(id)notification;
- (void)donateActiveEndpointOfType:(int)type;
- (void)setActiveSystemEndpoint:(id)endpoint;
@end

@implementation MRDActiveMediaRouteBiomeDonor

- (MRDActiveMediaRouteBiomeDonor)init
{
  v11.receiver = self;
  v11.super_class = MRDActiveMediaRouteBiomeDonor;
  v2 = [(MRDActiveMediaRouteBiomeDonor *)&v11 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.mediaremote.MRDActiveMediaRouteBiomeDonor", v3);
    [(MRDActiveMediaRouteBiomeDonor *)v2 setQueue:v4];

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_attr_make_with_qos_class(v5, QOS_CLASS_UTILITY, 0);
    v7 = dispatch_queue_create("com.apple.mediaremote.MRDActiveMediaRouteBiomeDonor.Donations", v6);
    [(MRDActiveMediaRouteBiomeDonor *)v2 setDonationQueue:v7];

    v8 = +[MRAVLocalEndpoint sharedLocalEndpoint];
    [(MRDActiveMediaRouteBiomeDonor *)v2 setActiveSystemEndpoint:v8];

    v9 = +[NSNotificationCenter defaultCenter];
    [v9 addObserver:v2 selector:"_handleActiveSystemEndpointDidChangeNotification:" name:kMRMediaRemoteActiveSystemEndpointDidChangeNotification object:0];
  }

  return v2;
}

- (void)_handleActiveSystemEndpointDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:kMRMediaRemoteActiveEndpointTypeUserInfoKey];
  intValue = [v6 intValue];

  if (!intValue)
  {
    v8 = _MRLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = notificationCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[MRDRRC].AMRBD _handleActiveSystemEndpointDidChangeNotification: %@", buf, 0xCu);
    }

    userInfo2 = [notificationCopy userInfo];
    v10 = [userInfo2 objectForKeyedSubscript:kMRAVEndpointOutputDeviceIdentifierUserInfoKey];

    queue = [(MRDActiveMediaRouteBiomeDonor *)self queue];
    v12 = v10;
    MRAVEndpointResolveActiveSystemEndpointWithType();
  }
}

- (void)_handleActiveSystemEndpointOutputDevicesDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  v5 = _MRLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    name = [notificationCopy name];
    userInfo = [notificationCopy userInfo];
    v7 = [userInfo objectForKeyedSubscript:MRAVEndpointOutputDeviceUserInfoKey];
    activeSystemEndpoint = [(MRDActiveMediaRouteBiomeDonor *)self activeSystemEndpoint];
    [activeSystemEndpoint localizedName];
    v8 = v15 = notificationCopy;
    activeSystemEndpoint2 = [(MRDActiveMediaRouteBiomeDonor *)self activeSystemEndpoint];
    outputDevices = [activeSystemEndpoint2 outputDevices];
    v10 = [outputDevices msv_map:&stru_1004BFFB8];
    activeSystemEndpoint3 = [(MRDActiveMediaRouteBiomeDonor *)self activeSystemEndpoint];
    resolvedOutputDevices = [activeSystemEndpoint3 resolvedOutputDevices];
    v13 = [resolvedOutputDevices msv_map:&stru_1004BFFD8];
    *buf = 138413314;
    v19 = name;
    v20 = 2112;
    v21 = v7;
    v22 = 2112;
    v23 = v8;
    v24 = 2112;
    v25 = v10;
    v26 = 2112;
    v27 = v13;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[MRDRRC].AMRBD got %@ for %@ - %@ (%@ -> %@)", buf, 0x34u);

    notificationCopy = v15;
  }

  [(MRDActiveMediaRouteBiomeDonor *)self donateActiveEndpointOfType:1];
}

- (void)setActiveSystemEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  v6 = self->_activeSystemEndpoint;
  v7 = v6;
  if (v6 == endpointCopy)
  {
LABEL_10:

    goto LABEL_11;
  }

  v8 = [(MRAVEndpoint *)v6 isEqual:endpointCopy];

  if ((v8 & 1) == 0)
  {
    v7 = self->_activeSystemEndpoint;
    objc_storeStrong(&self->_activeSystemEndpoint, endpoint);
    v9 = _MRLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412546;
      v17 = v7;
      v18 = 2112;
      v19 = endpointCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[MRDRRC].AMRBD set ASE from %@ to %@", &v16, 0x16u);
    }

    if (v7)
    {
      v10 = +[NSNotificationCenter defaultCenter];
      [v10 removeObserver:self name:MRAVEndpointDidAddOutputDeviceNotification object:v7];

      v11 = +[NSNotificationCenter defaultCenter];
      [v11 removeObserver:self name:MRAVEndpointDidChangeOutputDeviceNotification object:v7];

      v12 = +[NSNotificationCenter defaultCenter];
      [v12 removeObserver:self name:MRAVEndpointDidRemoveOutputDeviceNotification object:v7];
    }

    if (endpointCopy)
    {
      v13 = +[NSNotificationCenter defaultCenter];
      [v13 addObserver:self selector:"_handleActiveSystemEndpointOutputDevicesDidChangeNotification:" name:MRAVEndpointDidAddOutputDeviceNotification object:endpointCopy];

      v14 = +[NSNotificationCenter defaultCenter];
      [v14 addObserver:self selector:"_handleActiveSystemEndpointOutputDevicesDidChangeNotification:" name:MRAVEndpointDidChangeOutputDeviceNotification object:endpointCopy];

      v15 = +[NSNotificationCenter defaultCenter];
      [v15 addObserver:self selector:"_handleActiveSystemEndpointOutputDevicesDidChangeNotification:" name:MRAVEndpointDidRemoveOutputDeviceNotification object:endpointCopy];
    }

    [(MRDActiveMediaRouteBiomeDonor *)self donateActiveEndpointOfType:1];
    goto LABEL_10;
  }

LABEL_11:
}

- (void)donateActiveEndpointOfType:(int)type
{
  donationQueue = [(MRDActiveMediaRouteBiomeDonor *)self donationQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10017C694;
  v6[3] = &unk_1004B87D0;
  typeCopy = type;
  v6[4] = self;
  dispatch_async(donationQueue, v6);
}

@end