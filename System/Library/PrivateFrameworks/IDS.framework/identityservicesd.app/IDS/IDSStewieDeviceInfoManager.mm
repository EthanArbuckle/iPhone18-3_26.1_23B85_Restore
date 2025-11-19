@interface IDSStewieDeviceInfoManager
- (IDSStewieDeviceInfoManager)initWithDelegate:(id)a3 queue:(id)a4 pushHandler:(id)a5 accountStore:(id)a6 stewieStore:(id)a7;
- (IDSStewieDeviceInfoManager)initWithDelegate:(id)a3 stewieStore:(id)a4 queue:(id)a5;
- (IDSStewieDeviceInfoManagerDelegate)delegate;
- (void)_requestFeature:(id)a3 completion:(id)a4;
- (void)accountCredentialChanged:(id)a3;
- (void)accountWasAdded:(id)a3;
- (void)accountWasModified:(id)a3;
- (void)accountWasRemoved:(id)a3;
- (void)dealloc;
- (void)handler:(id)a3 pushTokenChanged:(id)a4;
- (void)localeChanged:(id)a3;
- (void)performInitialDeviceInfoCheck;
- (void)requestAccessTokensForFeatures:(id)a3;
@end

@implementation IDSStewieDeviceInfoManager

- (IDSStewieDeviceInfoManager)initWithDelegate:(id)a3 stewieStore:(id)a4 queue:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_alloc(IMWeakLinkClass());
  if (qword_100CBD628 != -1)
  {
    sub_100924430();
  }

  v12 = [NSSet setWithObject:qword_100CBD630];
  v13 = [v11 initWithAccountTypes:v12 delegate:self];

  v14 = +[IDSPushHandler sharedInstance];
  v15 = [(IDSStewieDeviceInfoManager *)self initWithDelegate:v10 queue:v8 pushHandler:v14 accountStore:v13 stewieStore:v9];

  return v15;
}

- (IDSStewieDeviceInfoManager)initWithDelegate:(id)a3 queue:(id)a4 pushHandler:(id)a5 accountStore:(id)a6 stewieStore:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v27.receiver = self;
  v27.super_class = IDSStewieDeviceInfoManager;
  v17 = [(IDSStewieDeviceInfoManager *)&v27 init];
  v18 = v17;
  if (v17)
  {
    objc_storeWeak(&v17->_delegate, v12);
    objc_storeStrong(&v18->_mainQueue, a4);
    objc_storeStrong(&v18->_pushHandler, a5);
    [(IDSPushHandler *)v18->_pushHandler addListener:v18 topics:0 commands:0 queue:v13];
    v19 = +[NSNotificationCenter defaultCenter];
    [v19 addObserver:v18 selector:"localeChanged:" name:IMCurrentPreferredLanguageChangedNotification object:0];

    objc_storeStrong(&v18->_accountStore, a6);
    [(ACMonitoredAccountStore *)v18->_accountStore registerWithCompletion:&stru_100BDEA78];
    objc_storeStrong(&v18->_stewieStore, a7);
    v20 = IMWeakLinkClass();
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_1004D9720;
    v25[3] = &unk_100BD6ED0;
    v21 = v18;
    v26 = v21;
    v22 = [v20 registerForFeatureChangeNotificationsUsingBlock:v25];
    featureChangeObserver = v21->_featureChangeObserver;
    v21->_featureChangeObserver = v22;
  }

  return v18;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  [(IDSPushHandler *)self->_pushHandler removeListener:self];
  v4 = [(IDSStewieDeviceInfoManager *)self featureChangeObserver];

  if (v4)
  {
    v5 = IMWeakLinkClass();
    v6 = [(IDSStewieDeviceInfoManager *)self featureChangeObserver];
    [v5 unregisterForFeatureChangeNotificationsUsingObserver:v6];

    [(IDSStewieDeviceInfoManager *)self setFeatureChangeObserver:0];
  }

  v7.receiver = self;
  v7.super_class = IDSStewieDeviceInfoManager;
  [(IDSStewieDeviceInfoManager *)&v7 dealloc];
}

- (void)performInitialDeviceInfoCheck
{
  v3 = +[IDSFoundationLog stewieProvisioning];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Performing initial stewie device info check", v11, 2u);
  }

  v4 = [(IDSStewieDeviceInfoManager *)self pushHandler];
  v5 = [v4 pushToken];
  [(IDSStewieDeviceInfoManager *)self setPushToken:v5];

  v6 = sub_100923B68(self);
  [(IDSStewieDeviceInfoManager *)self setLocale:v6];

  v7 = [(IDSStewieDeviceInfoManager *)self accountStore];
  v8 = [v7 aa_primaryAppleAccount];
  v9 = [v8 normalizedDSID];
  [(IDSStewieDeviceInfoManager *)self setDsid:v9];

  v12[0] = @"networking.st.text-911";
  v12[1] = @"networking.st.find-my";
  v12[2] = @"networking.st.roadside";
  v12[3] = @"networking.st.imessage-lite";
  v12[4] = @"networking.st.sms";
  v10 = [NSArray arrayWithObjects:v12 count:5];
  [(IDSStewieDeviceInfoManager *)self requestAccessTokensForFeatures:v10];

  sub_100923C7C(self);
}

- (void)requestAccessTokensForFeatures:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableArray);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = v4;
  v6 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      v9 = 0;
      do
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v19 + 1) + 8 * v9);
        v11 = objc_alloc_init(CUTUnsafePromiseSeal);
        v17[0] = _NSConcreteStackBlock;
        v17[1] = 3221225472;
        v17[2] = sub_1004D9C78;
        v17[3] = &unk_100BDEAA0;
        v17[4] = self;
        v17[5] = v10;
        v18 = v11;
        v12 = v11;
        [(IDSStewieDeviceInfoManager *)self _requestFeature:v10 completion:v17];
        v13 = [v12 promise];
        [v5 addObject:v13];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  v14 = [CUTUnsafePromise allWithPartialSuccesses:v5];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100923CF0;
  v16[3] = &unk_100BD8870;
  v16[4] = self;
  [v14 registerResultBlock:v16];
}

- (void)_requestFeature:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = a3;
  [IMWeakLinkClass() requestFeatureWithId:v6 completion:v5];
}

- (void)handler:(id)a3 pushTokenChanged:(id)a4
{
  v5 = a4;
  v6 = +[IDSFoundationLog stewieProvisioning];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v5 debugDescription];
    v13 = 138412290;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received notification that push token changed { token: %@ }", &v13, 0xCu);
  }

  v8 = [(IDSStewieDeviceInfoManager *)self pushToken];
  v9 = [v5 isEqualToData:v8];

  if ((v9 & 1) == 0)
  {
    sub_100924444(self, v5);
  }

  v10 = [(IDSStewieStore *)self->_stewieStore persistedDeviceInfo];
  v11 = [v10 pushToken];

  if (v5 && !v11)
  {
    v12 = +[IDSStewieProvisioningEventTracing sharedInstance];
    [v12 trackProvisioningStart];
  }
}

- (void)accountWasAdded:(id)a3
{
  v4 = a3;
  v5 = +[IDSFoundationLog stewieProvisioning];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "ACMonitoredAccountStore - accountWasAdded: %@", buf, 0xCu);
  }

  v6 = [(IDSStewieDeviceInfoManager *)self mainQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100924420;
  v8[3] = &unk_100BD6E40;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_async(v6, v8);
}

- (void)accountWasRemoved:(id)a3
{
  v4 = a3;
  v5 = +[IDSFoundationLog stewieProvisioning];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "ACMonitoredAccountStore - accountWasRemoved: %@", buf, 0xCu);
  }

  v6 = [(IDSStewieDeviceInfoManager *)self mainQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100924424;
  v8[3] = &unk_100BD6E40;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_async(v6, v8);
}

- (void)accountWasModified:(id)a3
{
  v4 = a3;
  v5 = +[IDSFoundationLog stewieProvisioning];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "ACMonitoredAccountStore - accountWasModified: %@", buf, 0xCu);
  }

  v6 = [(IDSStewieDeviceInfoManager *)self mainQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100924428;
  v8[3] = &unk_100BD6E40;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_async(v6, v8);
}

- (void)accountCredentialChanged:(id)a3
{
  v4 = a3;
  v5 = +[IDSFoundationLog stewieProvisioning];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "ACMonitoredAccountStore - accountCredentialChanged: %@", buf, 0xCu);
  }

  v6 = [(IDSStewieDeviceInfoManager *)self mainQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10092442C;
  v8[3] = &unk_100BD6E40;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_async(v6, v8);
}

- (IDSStewieDeviceInfoManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)localeChanged:(id)a3
{
  v5 = sub_100923B68(self);
  v6 = +[IDSFoundationLog stewieProvisioning];
  if (sub_1004DA798(v6))
  {
    sub_1004DA77C();
    _os_log_impl(v7, v8, v9, v10, v11, 0xCu);
  }

  v12 = [(IDSStewieDeviceInfoManager *)self locale];
  v13 = [v5 isEqualToString:v12];

  if ((v13 & 1) == 0)
  {
    v14 = +[IDSFoundationLog stewieProvisioning];
    if (sub_1004DA798(v14))
    {
      v20 = [(IDSStewieDeviceInfoManager *)self locale];
      sub_1004DA78C();
      sub_1004DA77C();
      _os_log_impl(v15, v16, v17, v18, v19, 0x16u);
    }

    [(IDSStewieDeviceInfoManager *)self setLocale:v5];
    sub_100923C7C(self);
  }
}

@end