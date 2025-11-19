@interface IDSDaemonCapabilities
+ (id)sharedInstance;
- (IDSDaemonCapabilities)init;
- (void)_deferredUpdateCapabilities;
- (void)_listenForMGChanges;
- (void)_setupTokens;
- (void)_updateCapabilities;
- (void)carrierBundleInformationDidChange;
- (void)dealloc;
@end

@implementation IDSDaemonCapabilities

+ (id)sharedInstance
{
  if (qword_100CBEE58 != -1)
  {
    sub_1009288DC();
  }

  v3 = qword_100CBEE60;

  return v3;
}

- (IDSDaemonCapabilities)init
{
  v5.receiver = self;
  v5.super_class = IDSDaemonCapabilities;
  v2 = [(IDSDaemonCapabilities *)&v5 init];
  if (v2)
  {
    v3 = +[IDSCTAdapter sharedInstance];
    [v3 addListener:v2];

    [(IDSDaemonCapabilities *)v2 _setupTokens];
    [(IDSDaemonCapabilities *)v2 _listenForMGChanges];
    [(IDSDaemonCapabilities *)v2 _updateCapabilities];
  }

  return v2;
}

- (void)dealloc
{
  MGCancelNotifications();
  v3.receiver = self;
  v3.super_class = IDSDaemonCapabilities;
  [(IDSDaemonCapabilities *)&v3 dealloc];
}

- (void)_updateCapabilities
{
  v3 = sub_10051F9A4(@"AllowiMessage", 1);
  v4 = sub_10051F9A4(@"AllowsFaceTimeAudio", 0);
  v5 = MGGetBoolAnswer();
  v6 = MGGetBoolAnswer();
  v7 = v6;
  v8 = v4 | v5 ^ 1;
  v9 = v3 | 2;
  if ((v8 & 1) == 0)
  {
    v9 = v3;
  }

  v10 = v9 | 4;
  if (v6)
  {
    v11 = v10;
  }

  else
  {
    v11 = v3;
  }

  v12 = +[IMRGLog registration];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = @"NO";
    if (v3)
    {
      v14 = @"YES";
    }

    else
    {
      v14 = @"NO";
    }

    v19 = 138413058;
    v20 = v14;
    if ((v7 & v8) != 0)
    {
      v15 = @"YES";
    }

    else
    {
      v15 = @"NO";
    }

    v21 = 2112;
    v22 = v15;
    if (v7)
    {
      v13 = @"YES";
    }

    v23 = 2112;
    v24 = v13;
    v25 = 2048;
    v26 = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Posting iMessage allowed value from IDSDaemonCapabilities { allowiMessage: %@, allowFaceTimeAudio: %@, allowFaceTimeMultiway: %@, supportedServicesFlags: %llu }", &v19, 0x2Au);
  }

  notify_set_state(self->_supportedServicesToken, v11);
  v16 = IMUserScopedNotification();
  notify_post(v16);
  v17 = +[FTServiceStatus sharedInstance];
  [v17 _reload];

  v18 = +[FTDeviceSupport sharedInstance];
  [v18 _updateCapabilities];
}

- (void)_listenForMGChanges
{
  if (![(IDSDaemonCapabilities *)self MGVeniceChangedToken])
  {
    v3 = @"venice";
    [NSArray arrayWithObjects:&v3 count:1];
    [(IDSDaemonCapabilities *)self setMGVeniceChangedToken:MGRegisterForUpdates()];
  }
}

- (void)_setupTokens
{
  v3 = IMUserScopedNotification();

  notify_register_check(v3, &self->_supportedServicesToken);
}

- (void)carrierBundleInformationDidChange
{
  v3 = +[IMRGLog registration];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "IDSDaemonCapabilities received bundle info did change callback -- updating capabilities", v4, 2u);
  }

  [(IDSDaemonCapabilities *)self _deferredUpdateCapabilities];
}

- (void)_deferredUpdateCapabilities
{
  v3 = dispatch_time(0, 1000000000);
  v4 = im_primary_queue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10051FE30;
  block[3] = &unk_100BD6ED0;
  block[4] = self;
  dispatch_after(v3, v4, block);
}

@end