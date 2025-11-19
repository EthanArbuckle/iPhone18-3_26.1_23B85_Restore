@interface FAHeartbeatActivity
- (BOOL)_checkAndDeferActivityIfNeeded:(id)a3;
- (FAHeartbeatActivity)initWithQueueProvider:(id)a3;
- (id)_familyGrandSlamSignerWithAccountStore:(id)a3;
- (id)_grandSlamAccountForAccountStore:(id)a3;
- (id)_grandSlamSignerWithAccountStore:(id)a3;
- (id)_primaryAccount;
- (void)_performHeartbeatCheckinForActivity:(id)a3 completion:(id)a4;
- (void)scheduleWithCompletionHandler:(id)a3;
- (void)unregister;
@end

@implementation FAHeartbeatActivity

- (FAHeartbeatActivity)initWithQueueProvider:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = FAHeartbeatActivity;
  v6 = [(FAHeartbeatActivity *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queueProvider, a3);
    v7->_timeInterval = XPC_ACTIVITY_INTERVAL_1_DAY;
  }

  return v7;
}

- (void)_performHeartbeatCheckinForActivity:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _FALogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Performing heartbeat operation!", buf, 2u);
  }

  if ([(FAHeartbeatActivity *)self _checkAndDeferActivityIfNeeded:v6])
  {
    if (v7)
    {
      v7[2](v7, 0);
    }
  }

  else
  {
    v9 = +[ACAccountStore defaultStore];
    v10 = objc_alloc_init(FADeviceInfo);
    v11 = [FANetworkService alloc];
    v12 = [v9 aa_primaryAppleAccount];
    v13 = objc_opt_new();
    v14 = +[AAURLSession sharedSession];
    v15 = [(FANetworkService *)v11 initWithAccount:v12 deviceInfo:v10 urlProvider:v13 urlSession:v14];

    v16 = +[ACAccountStore defaultStore];
    v17 = [FAHeartbeatOperation alloc];
    v18 = [(FAHeartbeatActivity *)self _grandSlamSignerWithAccountStore:v16];
    v19 = [(FAHeartbeatActivity *)self _familyGrandSlamSignerWithAccountStore:v16];
    v20 = [(FAHeartbeatOperation *)v17 initWithNetworkService:v15 grandSlamSigner:v18 familyGrandSlamSigner:v19];

    if ([(FAHeartbeatActivity *)self _checkAndDeferActivityIfNeeded:v6])
    {
      if (v7)
      {
        v7[2](v7, 0);
      }
    }

    else
    {
      v21 = [(FAHeartbeatOperation *)v20 fetchHeartbeatData];
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_10000CC20;
      v22[3] = &unk_1000A6720;
      v22[4] = self;
      v23 = v6;
      v24 = v7;
      [v21 onComplete:v22];
    }
  }
}

- (BOOL)_checkAndDeferActivityIfNeeded:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && xpc_activity_should_defer(v3))
  {
    v5 = xpc_activity_set_state(v4, 3);
    v6 = _FALogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8[0] = 67109120;
      v8[1] = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Family heartbeat activity deferred with status: %d", v8, 8u);
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (id)_primaryAccount
{
  v2 = +[ACAccountStore defaultStore];
  v3 = [v2 aa_primaryAppleAccount];

  return v3;
}

- (id)_grandSlamAccountForAccountStore:(id)a3
{
  v4 = a3;
  v5 = [(FAHeartbeatActivity *)self _primaryAccount];
  v6 = [v4 aa_grandSlamAccountForiCloudAccount:v5];

  return v6;
}

- (id)_grandSlamSignerWithAccountStore:(id)a3
{
  v4 = a3;
  v5 = [AAGrandSlamSigner alloc];
  v6 = [(FAHeartbeatActivity *)self _grandSlamAccountForAccountStore:v4];
  v7 = [v5 initWithAccountStore:v4 grandSlamAccount:v6 appTokenID:AAGrandSlamAppTokenIDiCloudSettings];

  return v7;
}

- (id)_familyGrandSlamSignerWithAccountStore:(id)a3
{
  v4 = a3;
  v5 = [AAGrandSlamSigner alloc];
  v6 = [(FAHeartbeatActivity *)self _grandSlamAccountForAccountStore:v4];
  v7 = [v5 initWithAccountStore:v4 grandSlamAccount:v6 appTokenID:AAGrandSlamAppTokenIDFamilySharing];

  [v7 setHeaderFieldKey:AAFamilyGrandSlamTokenHeaderKey];

  return v7;
}

- (void)scheduleWithCompletionHandler:(id)a3
{
  v5 = sub_100022F18(&qword_1000B82B8, &qword_10008C6C0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = &v16 - v8;
  v10 = _Block_copy(a3);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_10008E260;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10008C7F0;
  v14[5] = v13;
  v15 = self;
  sub_100071FE8(0, 0, v9, &unk_10008C6E0, v14);
}

- (void)unregister
{
  v2 = self;
  sub_100069140(v3);
  sub_1000297A8(v3, v3[3]);
  dispatch thunk of BackgroundTaskScheduler.unregister()();

  sub_100024F7C(v3);
}

@end