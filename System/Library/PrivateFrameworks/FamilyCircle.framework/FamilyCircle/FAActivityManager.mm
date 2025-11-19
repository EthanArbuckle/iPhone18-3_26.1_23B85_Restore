@interface FAActivityManager
- (FAActivityManager)initWithQueueProvider:(id)a3;
- (void)checkinXPCActivities;
- (void)handleAccountAddition:(id)a3 completion:(id)a4;
- (void)handleAccountDeletion:(id)a3 completion:(id)a4;
@end

@implementation FAActivityManager

- (FAActivityManager)initWithQueueProvider:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = FAActivityManager;
  v5 = [(FAActivityManager *)&v15 init];
  if (v5)
  {
    v6 = [[FAHeartbeatActivity alloc] initWithQueueProvider:v4];
    heartbeatActivity = v5->_heartbeatActivity;
    v5->_heartbeatActivity = v6;

    objc_initWeak(&location, v5->_heartbeatActivity);
    v8 = [FAOSUpdatedActivity alloc];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10000AAEC;
    v12[3] = &unk_1000A64D8;
    objc_copyWeak(&v13, &location);
    v9 = [v8 initWithHeartbeatActivityHandler:v12];
    osUpdatedActivity = v5->_osUpdatedActivity;
    v5->_osUpdatedActivity = v9;

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  return v5;
}

- (void)checkinXPCActivities
{
  v3 = _FALogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Checking in XPC activities..", v5, 2u);
  }

  [(FAHeartbeatActivity *)self->_heartbeatActivity checkin];
  v4 = [(FAActivityManager *)self osUpdatedActivity];
  [v4 checkinWithCompletionHandler:&stru_1000A6518];
}

- (void)handleAccountAddition:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = _FALogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Handling account addition.", buf, 2u);
  }

  [(FAActivityManager *)self checkinXPCActivities];
  heartbeatActivity = self->_heartbeatActivity;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000AD14;
  v9[3] = &unk_1000A6540;
  v10 = v5;
  v8 = v5;
  [(FAHeartbeatActivity *)heartbeatActivity performHeartbeatCheckinWithCompletion:v9];
  v8[2](v8, 1);
}

- (void)handleAccountDeletion:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = _FALogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Handling account deletion.", v9, 2u);
  }

  [(FAHeartbeatActivity *)self->_heartbeatActivity unregister];
  v7 = +[PDSRegistrarService sharedInstance];
  [v7 removeRegistrationFromPDS];

  v8 = [(FAActivityManager *)self osUpdatedActivity];
  [v8 unregister];

  v5[2](v5, 1);
}

@end