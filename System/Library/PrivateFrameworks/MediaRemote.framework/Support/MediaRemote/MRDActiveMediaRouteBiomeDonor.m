@interface MRDActiveMediaRouteBiomeDonor
- (MRDActiveMediaRouteBiomeDonor)init;
- (void)_handleActiveSystemEndpointDidChangeNotification:(id)a3;
- (void)_handleActiveSystemEndpointOutputDevicesDidChangeNotification:(id)a3;
- (void)donateActiveEndpointOfType:(int)a3;
- (void)setActiveSystemEndpoint:(id)a3;
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

- (void)_handleActiveSystemEndpointDidChangeNotification:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:kMRMediaRemoteActiveEndpointTypeUserInfoKey];
  v7 = [v6 intValue];

  if (!v7)
  {
    v8 = _MRLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = v4;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[MRDRRC].AMRBD _handleActiveSystemEndpointDidChangeNotification: %@", buf, 0xCu);
    }

    v9 = [v4 userInfo];
    v10 = [v9 objectForKeyedSubscript:kMRAVEndpointOutputDeviceIdentifierUserInfoKey];

    v11 = [(MRDActiveMediaRouteBiomeDonor *)self queue];
    v12 = v10;
    MRAVEndpointResolveActiveSystemEndpointWithType();
  }
}

- (void)_handleActiveSystemEndpointOutputDevicesDidChangeNotification:(id)a3
{
  v4 = a3;
  v5 = _MRLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 name];
    v17 = [v4 userInfo];
    v7 = [v17 objectForKeyedSubscript:MRAVEndpointOutputDeviceUserInfoKey];
    v16 = [(MRDActiveMediaRouteBiomeDonor *)self activeSystemEndpoint];
    [v16 localizedName];
    v8 = v15 = v4;
    v14 = [(MRDActiveMediaRouteBiomeDonor *)self activeSystemEndpoint];
    v9 = [v14 outputDevices];
    v10 = [v9 msv_map:&stru_1004BFFB8];
    v11 = [(MRDActiveMediaRouteBiomeDonor *)self activeSystemEndpoint];
    v12 = [v11 resolvedOutputDevices];
    v13 = [v12 msv_map:&stru_1004BFFD8];
    *buf = 138413314;
    v19 = v6;
    v20 = 2112;
    v21 = v7;
    v22 = 2112;
    v23 = v8;
    v24 = 2112;
    v25 = v10;
    v26 = 2112;
    v27 = v13;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[MRDRRC].AMRBD got %@ for %@ - %@ (%@ -> %@)", buf, 0x34u);

    v4 = v15;
  }

  [(MRDActiveMediaRouteBiomeDonor *)self donateActiveEndpointOfType:1];
}

- (void)setActiveSystemEndpoint:(id)a3
{
  v5 = a3;
  v6 = self->_activeSystemEndpoint;
  v7 = v6;
  if (v6 == v5)
  {
LABEL_10:

    goto LABEL_11;
  }

  v8 = [(MRAVEndpoint *)v6 isEqual:v5];

  if ((v8 & 1) == 0)
  {
    v7 = self->_activeSystemEndpoint;
    objc_storeStrong(&self->_activeSystemEndpoint, a3);
    v9 = _MRLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412546;
      v17 = v7;
      v18 = 2112;
      v19 = v5;
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

    if (v5)
    {
      v13 = +[NSNotificationCenter defaultCenter];
      [v13 addObserver:self selector:"_handleActiveSystemEndpointOutputDevicesDidChangeNotification:" name:MRAVEndpointDidAddOutputDeviceNotification object:v5];

      v14 = +[NSNotificationCenter defaultCenter];
      [v14 addObserver:self selector:"_handleActiveSystemEndpointOutputDevicesDidChangeNotification:" name:MRAVEndpointDidChangeOutputDeviceNotification object:v5];

      v15 = +[NSNotificationCenter defaultCenter];
      [v15 addObserver:self selector:"_handleActiveSystemEndpointOutputDevicesDidChangeNotification:" name:MRAVEndpointDidRemoveOutputDeviceNotification object:v5];
    }

    [(MRDActiveMediaRouteBiomeDonor *)self donateActiveEndpointOfType:1];
    goto LABEL_10;
  }

LABEL_11:
}

- (void)donateActiveEndpointOfType:(int)a3
{
  v5 = [(MRDActiveMediaRouteBiomeDonor *)self donationQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10017C694;
  v6[3] = &unk_1004B87D0;
  v7 = a3;
  v6[4] = self;
  dispatch_async(v5, v6);
}

@end