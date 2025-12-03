@interface IDSStewieDeviceInfoManager
- (IDSStewieDeviceInfoManager)initWithDelegate:(id)delegate queue:(id)queue pushHandler:(id)handler accountStore:(id)store stewieStore:(id)stewieStore;
- (IDSStewieDeviceInfoManager)initWithDelegate:(id)delegate stewieStore:(id)store queue:(id)queue;
- (IDSStewieDeviceInfoManagerDelegate)delegate;
- (void)_requestFeature:(id)feature completion:(id)completion;
- (void)accountCredentialChanged:(id)changed;
- (void)accountWasAdded:(id)added;
- (void)accountWasModified:(id)modified;
- (void)accountWasRemoved:(id)removed;
- (void)dealloc;
- (void)handler:(id)handler pushTokenChanged:(id)changed;
- (void)localeChanged:(id)changed;
- (void)performInitialDeviceInfoCheck;
- (void)requestAccessTokensForFeatures:(id)features;
@end

@implementation IDSStewieDeviceInfoManager

- (IDSStewieDeviceInfoManager)initWithDelegate:(id)delegate stewieStore:(id)store queue:(id)queue
{
  queueCopy = queue;
  storeCopy = store;
  delegateCopy = delegate;
  v11 = objc_alloc(IMWeakLinkClass());
  if (qword_100CBD628 != -1)
  {
    sub_100924430();
  }

  v12 = [NSSet setWithObject:qword_100CBD630];
  v13 = [v11 initWithAccountTypes:v12 delegate:self];

  v14 = +[IDSPushHandler sharedInstance];
  v15 = [(IDSStewieDeviceInfoManager *)self initWithDelegate:delegateCopy queue:queueCopy pushHandler:v14 accountStore:v13 stewieStore:storeCopy];

  return v15;
}

- (IDSStewieDeviceInfoManager)initWithDelegate:(id)delegate queue:(id)queue pushHandler:(id)handler accountStore:(id)store stewieStore:(id)stewieStore
{
  delegateCopy = delegate;
  queueCopy = queue;
  handlerCopy = handler;
  storeCopy = store;
  stewieStoreCopy = stewieStore;
  v27.receiver = self;
  v27.super_class = IDSStewieDeviceInfoManager;
  v17 = [(IDSStewieDeviceInfoManager *)&v27 init];
  v18 = v17;
  if (v17)
  {
    objc_storeWeak(&v17->_delegate, delegateCopy);
    objc_storeStrong(&v18->_mainQueue, queue);
    objc_storeStrong(&v18->_pushHandler, handler);
    [(IDSPushHandler *)v18->_pushHandler addListener:v18 topics:0 commands:0 queue:queueCopy];
    v19 = +[NSNotificationCenter defaultCenter];
    [v19 addObserver:v18 selector:"localeChanged:" name:IMCurrentPreferredLanguageChangedNotification object:0];

    objc_storeStrong(&v18->_accountStore, store);
    [(ACMonitoredAccountStore *)v18->_accountStore registerWithCompletion:&stru_100BDEA78];
    objc_storeStrong(&v18->_stewieStore, stewieStore);
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
  featureChangeObserver = [(IDSStewieDeviceInfoManager *)self featureChangeObserver];

  if (featureChangeObserver)
  {
    v5 = IMWeakLinkClass();
    featureChangeObserver2 = [(IDSStewieDeviceInfoManager *)self featureChangeObserver];
    [v5 unregisterForFeatureChangeNotificationsUsingObserver:featureChangeObserver2];

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

  pushHandler = [(IDSStewieDeviceInfoManager *)self pushHandler];
  pushToken = [pushHandler pushToken];
  [(IDSStewieDeviceInfoManager *)self setPushToken:pushToken];

  v6 = sub_100923B68(self);
  [(IDSStewieDeviceInfoManager *)self setLocale:v6];

  accountStore = [(IDSStewieDeviceInfoManager *)self accountStore];
  aa_primaryAppleAccount = [accountStore aa_primaryAppleAccount];
  normalizedDSID = [aa_primaryAppleAccount normalizedDSID];
  [(IDSStewieDeviceInfoManager *)self setDsid:normalizedDSID];

  v12[0] = @"networking.st.text-911";
  v12[1] = @"networking.st.find-my";
  v12[2] = @"networking.st.roadside";
  v12[3] = @"networking.st.imessage-lite";
  v12[4] = @"networking.st.sms";
  v10 = [NSArray arrayWithObjects:v12 count:5];
  [(IDSStewieDeviceInfoManager *)self requestAccessTokensForFeatures:v10];

  sub_100923C7C(self);
}

- (void)requestAccessTokensForFeatures:(id)features
{
  featuresCopy = features;
  v5 = objc_alloc_init(NSMutableArray);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = featuresCopy;
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
        promise = [v12 promise];
        [v5 addObject:promise];

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

- (void)_requestFeature:(id)feature completion:(id)completion
{
  completionCopy = completion;
  featureCopy = feature;
  [IMWeakLinkClass() requestFeatureWithId:featureCopy completion:completionCopy];
}

- (void)handler:(id)handler pushTokenChanged:(id)changed
{
  changedCopy = changed;
  v6 = +[IDSFoundationLog stewieProvisioning];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [changedCopy debugDescription];
    v13 = 138412290;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received notification that push token changed { token: %@ }", &v13, 0xCu);
  }

  pushToken = [(IDSStewieDeviceInfoManager *)self pushToken];
  v9 = [changedCopy isEqualToData:pushToken];

  if ((v9 & 1) == 0)
  {
    sub_100924444(self, changedCopy);
  }

  persistedDeviceInfo = [(IDSStewieStore *)self->_stewieStore persistedDeviceInfo];
  pushToken2 = [persistedDeviceInfo pushToken];

  if (changedCopy && !pushToken2)
  {
    v12 = +[IDSStewieProvisioningEventTracing sharedInstance];
    [v12 trackProvisioningStart];
  }
}

- (void)accountWasAdded:(id)added
{
  addedCopy = added;
  v5 = +[IDSFoundationLog stewieProvisioning];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = addedCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "ACMonitoredAccountStore - accountWasAdded: %@", buf, 0xCu);
  }

  mainQueue = [(IDSStewieDeviceInfoManager *)self mainQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100924420;
  v8[3] = &unk_100BD6E40;
  v8[4] = self;
  v9 = addedCopy;
  v7 = addedCopy;
  dispatch_async(mainQueue, v8);
}

- (void)accountWasRemoved:(id)removed
{
  removedCopy = removed;
  v5 = +[IDSFoundationLog stewieProvisioning];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = removedCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "ACMonitoredAccountStore - accountWasRemoved: %@", buf, 0xCu);
  }

  mainQueue = [(IDSStewieDeviceInfoManager *)self mainQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100924424;
  v8[3] = &unk_100BD6E40;
  v8[4] = self;
  v9 = removedCopy;
  v7 = removedCopy;
  dispatch_async(mainQueue, v8);
}

- (void)accountWasModified:(id)modified
{
  modifiedCopy = modified;
  v5 = +[IDSFoundationLog stewieProvisioning];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = modifiedCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "ACMonitoredAccountStore - accountWasModified: %@", buf, 0xCu);
  }

  mainQueue = [(IDSStewieDeviceInfoManager *)self mainQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100924428;
  v8[3] = &unk_100BD6E40;
  v8[4] = self;
  v9 = modifiedCopy;
  v7 = modifiedCopy;
  dispatch_async(mainQueue, v8);
}

- (void)accountCredentialChanged:(id)changed
{
  changedCopy = changed;
  v5 = +[IDSFoundationLog stewieProvisioning];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = changedCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "ACMonitoredAccountStore - accountCredentialChanged: %@", buf, 0xCu);
  }

  mainQueue = [(IDSStewieDeviceInfoManager *)self mainQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10092442C;
  v8[3] = &unk_100BD6E40;
  v8[4] = self;
  v9 = changedCopy;
  v7 = changedCopy;
  dispatch_async(mainQueue, v8);
}

- (IDSStewieDeviceInfoManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)localeChanged:(id)changed
{
  v5 = sub_100923B68(self);
  v6 = +[IDSFoundationLog stewieProvisioning];
  if (sub_1004DA798(v6))
  {
    sub_1004DA77C();
    _os_log_impl(v7, v8, v9, v10, v11, 0xCu);
  }

  locale = [(IDSStewieDeviceInfoManager *)self locale];
  v13 = [v5 isEqualToString:locale];

  if ((v13 & 1) == 0)
  {
    v14 = +[IDSFoundationLog stewieProvisioning];
    if (sub_1004DA798(v14))
    {
      locale2 = [(IDSStewieDeviceInfoManager *)self locale];
      sub_1004DA78C();
      sub_1004DA77C();
      _os_log_impl(v15, v16, v17, v18, v19, 0x16u);
    }

    [(IDSStewieDeviceInfoManager *)self setLocale:v5];
    sub_100923C7C(self);
  }
}

@end