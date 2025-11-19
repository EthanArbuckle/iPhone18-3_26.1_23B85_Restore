@interface CKDiscretionaryDASSchedulerTask
+ (unint64_t)_priorityForState:(unint64_t)a3;
- (CKDiscretionaryDASSchedulerTask)initWithOperationID:(id)a3 group:(id)a4 bundleID:(id)a5 requiresPastBuddy:(BOOL)a6 options:(id)a7 state:(unint64_t)a8 queue:(id)a9 startHandler:(id)a10 suspendHandler:(id)a11;
- (id)_nwEndpointDefault;
- (id)_nwParametersWithAllowsCellularAccess:(BOOL)a3 allowsExpensiveNetworkAccess:(BOOL)a4;
- (void)_schedule;
- (void)cancel;
- (void)finish;
- (void)setState:(unint64_t)a3;
@end

@implementation CKDiscretionaryDASSchedulerTask

- (CKDiscretionaryDASSchedulerTask)initWithOperationID:(id)a3 group:(id)a4 bundleID:(id)a5 requiresPastBuddy:(BOOL)a6 options:(id)a7 state:(unint64_t)a8 queue:(id)a9 startHandler:(id)a10 suspendHandler:(id)a11
{
  v37 = a3;
  v36 = a4;
  v35 = a5;
  v39 = a7;
  v34 = a9;
  v38 = a10;
  v17 = a11;
  v41.receiver = self;
  v41.super_class = CKDiscretionaryDASSchedulerTask;
  v18 = [(CKDiscretionarySchedulerTask *)&v41 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_operationID, a3);
    objc_storeStrong(&v19->_group, a4);
    objc_storeStrong(&v19->_queue, a9);
    objc_storeStrong(&v19->_bundleID, a5);
    v19->_requiresPastBuddy = a6;
    objc_storeStrong(&v19->_options, a7);
    v40.receiver = v19;
    v40.super_class = CKDiscretionaryDASSchedulerTask;
    [(CKDiscretionarySchedulerTask *)&v40 setState:a8];
    v20 = [v38 copy];
    startHandler = v19->_startHandler;
    v19->_startHandler = v20;

    v22 = [v17 copy];
    suspendHandler = v19->_suspendHandler;
    v19->_suspendHandler = v22;

    v24 = +[NSDate date];
    startAfter = v19->_startAfter;
    v19->_startAfter = v24;
    v26 = v24;

    [v39 timeoutIntervalForResource];
    v27 = [(NSDate *)v26 dateByAddingTimeInterval:?];
    startBefore = v19->_startBefore;
    v19->_startBefore = v27;
    v29 = v27;

    v30 = _os_activity_create(&_mh_execute_header, "internal/das-scheduler-task", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    osActivity = v19->_osActivity;
    v19->_osActivity = v30;
  }

  return v19;
}

+ (unint64_t)_priorityForState:(unint64_t)a3
{
  if (a3 < 3)
  {
    v3 = &_DASSchedulingPriorityUserInitiated;
    return *v3;
  }

  if (a3 == 3)
  {
    v3 = &_DASSchedulingPriorityBackground;
    return *v3;
  }

  if (a3 == 4)
  {
    v3 = &_DASSchedulingPriorityMaintenance;
    return *v3;
  }

  return 0;
}

- (void)setState:(unint64_t)a3
{
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v5 = [(CKDiscretionaryDASSchedulerTask *)self osActivity];
  os_activity_scope_enter(v5, &state);

  v6 = [(CKDiscretionaryDASSchedulerTask *)self queue];
  dispatch_assert_queue_V2(v6);

  v8.receiver = self;
  v8.super_class = CKDiscretionaryDASSchedulerTask;
  if ([(CKDiscretionarySchedulerTask *)&v8 state]!= a3)
  {
    if ([(CKDiscretionaryDASSchedulerTask *)self running])
    {
      if (a3 == 3)
      {
        [(CKDiscretionaryDASSchedulerTask *)self cancel];
      }
    }

    else
    {
      v7.receiver = self;
      v7.super_class = CKDiscretionaryDASSchedulerTask;
      [(CKDiscretionarySchedulerTask *)&v7 setState:a3];
      [(CKDiscretionaryDASSchedulerTask *)self setRescheduling:1];
      [(CKDiscretionaryDASSchedulerTask *)self _schedule];
    }
  }

  os_activity_scope_leave(&state);
}

- (void)cancel
{
  v3 = [(CKDiscretionaryDASSchedulerTask *)self osActivity:0];
  os_activity_scope_enter(v3, &v8);

  v4 = [(CKDiscretionaryDASSchedulerTask *)self dasActivity];

  if (v4)
  {
    v5 = [(CKDiscretionaryDASSchedulerTask *)self queue];
    dispatch_assert_queue_V2(v5);

    v6 = +[_DASScheduler sharedScheduler];
    v7 = [(CKDiscretionaryDASSchedulerTask *)self dasActivity];
    [v6 activityCanceled:v7];

    [(CKDiscretionaryDASSchedulerTask *)self setDasActivity:0];
  }

  os_activity_scope_leave(&v8);
}

- (void)finish
{
  v3 = [(CKDiscretionaryDASSchedulerTask *)self osActivity:0];
  os_activity_scope_enter(v3, &v8);

  v4 = [(CKDiscretionaryDASSchedulerTask *)self dasActivity];

  if (v4)
  {
    v5 = [(CKDiscretionaryDASSchedulerTask *)self queue];
    dispatch_assert_queue_V2(v5);

    v6 = +[_DASScheduler sharedScheduler];
    v7 = [(CKDiscretionaryDASSchedulerTask *)self dasActivity];
    [v6 activityCompleted:v7];

    [(CKDiscretionaryDASSchedulerTask *)self setDasActivity:0];
  }

  os_activity_scope_leave(&v8);
}

- (id)_nwEndpointDefault
{
  host = nw_endpoint_create_host("www.apple.com", "443");
  v3 = host;
  if (host)
  {
    v4 = host;
  }

  return v3;
}

- (id)_nwParametersWithAllowsCellularAccess:(BOOL)a3 allowsExpensiveNetworkAccess:(BOOL)a4
{
  v6 = nw_parameters_create();
  v7 = v6;
  if (v6)
  {
    if (!a3)
    {
      nw_parameters_prohibit_interface_type(v6, nw_interface_type_cellular);
    }

    if (!a4)
    {
      nw_parameters_set_prohibit_expensive(v7, 1);
    }

    v8 = v7;
  }

  return v7;
}

- (void)_schedule
{
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v3 = [(CKDiscretionaryDASSchedulerTask *)self osActivity];
  os_activity_scope_enter(v3, &state);

  [(CKDiscretionaryDASSchedulerTask *)self cancel];
  v4 = [objc_opt_class() _priorityForState:{-[CKDiscretionarySchedulerTask state](self, "state")}];
  v5 = [(CKDiscretionaryDASSchedulerTask *)self _activityName];
  v6 = [(CKDiscretionaryDASSchedulerTask *)self startAfter];
  v7 = [(CKDiscretionaryDASSchedulerTask *)self startBefore];
  v8 = [_DASActivity activityWithName:v5 priority:v4 duration:v4 startingAfter:v6 startingBefore:v7];

  v9 = [(CKDiscretionaryDASSchedulerTask *)self queue];
  [v8 setHandlerQueue:v9];

  v10 = [(CKDiscretionaryDASSchedulerTask *)self options];
  LOBYTE(v6) = [v10 requiresNetworkAccess];

  if (v6)
  {
    [v8 setRequiresNetwork:1];
    v11 = [(CKDiscretionaryDASSchedulerTask *)self options];
    [v8 setRequiresInexpensiveNetworking:{objc_msgSend(v11, "allowsExpensiveNetworkAccess") ^ 1}];

    v12 = [(CKDiscretionaryDASSchedulerTask *)self options];
    v13 = [v12 allowsCellularAccess];
    v14 = [(CKDiscretionaryDASSchedulerTask *)self options];
    v15 = -[CKDiscretionaryDASSchedulerTask _nwParametersWithAllowsCellularAccess:allowsExpensiveNetworkAccess:](self, "_nwParametersWithAllowsCellularAccess:allowsExpensiveNetworkAccess:", v13, [v14 allowsExpensiveNetworkAccess]);

    v16 = [NWParameters parametersWithCParameters:v15];
    v17 = [(CKDiscretionaryDASSchedulerTask *)self _nwEndpointDefault];
    v18 = [NWEndpoint endpointWithCEndpoint:v17];
    v19 = v18;
    if (v18)
    {
      v43[0] = kNWEndpointKey;
      v43[1] = kNWParametersKey;
      v44[0] = v18;
      v44[1] = v16;
      v20 = [NSDictionary dictionaryWithObjects:v44 forKeys:v43 count:2];
      [v8 setUserInfo:v20];
    }
  }

  else
  {
    [v8 setRequiresNetwork:0];
  }

  [v8 setRequiresBuddyComplete:{-[CKDiscretionaryDASSchedulerTask requiresPastBuddy](self, "requiresPastBuddy")}];
  v21 = +[_DASFileProtection completeUntilFirstUserAuthentication];
  [v8 setFileProtection:v21];

  [v8 setCancelAfterDeadline:0];
  v22 = [(CKDiscretionaryDASSchedulerTask *)self options];
  v23 = [v22 applicationBundleIdentifierOverride];
  v24 = v23;
  if (!v23)
  {
    v24 = [(CKDiscretionaryDASSchedulerTask *)self bundleID];
  }

  [v8 setBundleId:v24];
  if (!v23)
  {
  }

  v25 = objc_alloc_init(NSMutableArray);
  v26 = [v8 bundleId];
  [v25 addObject:v26];

  v27 = [(CKDiscretionaryDASSchedulerTask *)self options];
  v28 = [v27 secondarySourceApplicationBundleId];

  if (v28)
  {
    v29 = [(CKDiscretionaryDASSchedulerTask *)self options];
    v30 = [v29 secondarySourceApplicationBundleId];
    [v25 addObject:v30];
  }

  [v8 setRelatedApplications:v25];
  [(CKDiscretionaryDASSchedulerTask *)self setDasActivity:v8];
  [(CKDiscretionaryDASSchedulerTask *)self setRescheduling:0];
  objc_initWeak(&location, self);
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_100006188;
  v39[3] = &unk_100010818;
  objc_copyWeak(&v40, &location);
  [v8 setStartHandler:v39];
  v34 = _NSConcreteStackBlock;
  v35 = 3221225472;
  v36 = sub_10000631C;
  v37 = &unk_100010818;
  objc_copyWeak(&v38, &location);
  [v8 setSuspendHandler:&v34];
  v31 = [_DASScheduler sharedScheduler:v34];
  v32 = [(CKDiscretionaryDASSchedulerTask *)self group];
  v33 = [_DASActivityGroup groupWithName:v32 maxConcurrent:3];
  [v31 submitActivity:v8 inGroup:v33];

  objc_destroyWeak(&v38);
  objc_destroyWeak(&v40);
  objc_destroyWeak(&location);

  os_activity_scope_leave(&state);
}

@end