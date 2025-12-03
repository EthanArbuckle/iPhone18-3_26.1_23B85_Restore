@interface CKDiscretionaryDASSchedulerTask
+ (unint64_t)_priorityForState:(unint64_t)state;
- (CKDiscretionaryDASSchedulerTask)initWithOperationID:(id)d group:(id)group bundleID:(id)iD requiresPastBuddy:(BOOL)buddy options:(id)options state:(unint64_t)state queue:(id)queue startHandler:(id)self0 suspendHandler:(id)self1;
- (id)_nwEndpointDefault;
- (id)_nwParametersWithAllowsCellularAccess:(BOOL)access allowsExpensiveNetworkAccess:(BOOL)networkAccess;
- (void)_schedule;
- (void)cancel;
- (void)finish;
- (void)setState:(unint64_t)state;
@end

@implementation CKDiscretionaryDASSchedulerTask

- (CKDiscretionaryDASSchedulerTask)initWithOperationID:(id)d group:(id)group bundleID:(id)iD requiresPastBuddy:(BOOL)buddy options:(id)options state:(unint64_t)state queue:(id)queue startHandler:(id)self0 suspendHandler:(id)self1
{
  dCopy = d;
  groupCopy = group;
  iDCopy = iD;
  optionsCopy = options;
  queueCopy = queue;
  handlerCopy = handler;
  suspendHandlerCopy = suspendHandler;
  v41.receiver = self;
  v41.super_class = CKDiscretionaryDASSchedulerTask;
  v18 = [(CKDiscretionarySchedulerTask *)&v41 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_operationID, d);
    objc_storeStrong(&v19->_group, group);
    objc_storeStrong(&v19->_queue, queue);
    objc_storeStrong(&v19->_bundleID, iD);
    v19->_requiresPastBuddy = buddy;
    objc_storeStrong(&v19->_options, options);
    v40.receiver = v19;
    v40.super_class = CKDiscretionaryDASSchedulerTask;
    [(CKDiscretionarySchedulerTask *)&v40 setState:state];
    v20 = [handlerCopy copy];
    startHandler = v19->_startHandler;
    v19->_startHandler = v20;

    v22 = [suspendHandlerCopy copy];
    suspendHandler = v19->_suspendHandler;
    v19->_suspendHandler = v22;

    v24 = +[NSDate date];
    startAfter = v19->_startAfter;
    v19->_startAfter = v24;
    v26 = v24;

    [optionsCopy timeoutIntervalForResource];
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

+ (unint64_t)_priorityForState:(unint64_t)state
{
  if (state < 3)
  {
    v3 = &_DASSchedulingPriorityUserInitiated;
    return *v3;
  }

  if (state == 3)
  {
    v3 = &_DASSchedulingPriorityBackground;
    return *v3;
  }

  if (state == 4)
  {
    v3 = &_DASSchedulingPriorityMaintenance;
    return *v3;
  }

  return 0;
}

- (void)setState:(unint64_t)state
{
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  osActivity = [(CKDiscretionaryDASSchedulerTask *)self osActivity];
  os_activity_scope_enter(osActivity, &state);

  queue = [(CKDiscretionaryDASSchedulerTask *)self queue];
  dispatch_assert_queue_V2(queue);

  v8.receiver = self;
  v8.super_class = CKDiscretionaryDASSchedulerTask;
  if ([(CKDiscretionarySchedulerTask *)&v8 state]!= state)
  {
    if ([(CKDiscretionaryDASSchedulerTask *)self running])
    {
      if (state == 3)
      {
        [(CKDiscretionaryDASSchedulerTask *)self cancel];
      }
    }

    else
    {
      v7.receiver = self;
      v7.super_class = CKDiscretionaryDASSchedulerTask;
      [(CKDiscretionarySchedulerTask *)&v7 setState:state];
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

  dasActivity = [(CKDiscretionaryDASSchedulerTask *)self dasActivity];

  if (dasActivity)
  {
    queue = [(CKDiscretionaryDASSchedulerTask *)self queue];
    dispatch_assert_queue_V2(queue);

    v6 = +[_DASScheduler sharedScheduler];
    dasActivity2 = [(CKDiscretionaryDASSchedulerTask *)self dasActivity];
    [v6 activityCanceled:dasActivity2];

    [(CKDiscretionaryDASSchedulerTask *)self setDasActivity:0];
  }

  os_activity_scope_leave(&v8);
}

- (void)finish
{
  v3 = [(CKDiscretionaryDASSchedulerTask *)self osActivity:0];
  os_activity_scope_enter(v3, &v8);

  dasActivity = [(CKDiscretionaryDASSchedulerTask *)self dasActivity];

  if (dasActivity)
  {
    queue = [(CKDiscretionaryDASSchedulerTask *)self queue];
    dispatch_assert_queue_V2(queue);

    v6 = +[_DASScheduler sharedScheduler];
    dasActivity2 = [(CKDiscretionaryDASSchedulerTask *)self dasActivity];
    [v6 activityCompleted:dasActivity2];

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

- (id)_nwParametersWithAllowsCellularAccess:(BOOL)access allowsExpensiveNetworkAccess:(BOOL)networkAccess
{
  v6 = nw_parameters_create();
  v7 = v6;
  if (v6)
  {
    if (!access)
    {
      nw_parameters_prohibit_interface_type(v6, nw_interface_type_cellular);
    }

    if (!networkAccess)
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
  osActivity = [(CKDiscretionaryDASSchedulerTask *)self osActivity];
  os_activity_scope_enter(osActivity, &state);

  [(CKDiscretionaryDASSchedulerTask *)self cancel];
  v4 = [objc_opt_class() _priorityForState:{-[CKDiscretionarySchedulerTask state](self, "state")}];
  _activityName = [(CKDiscretionaryDASSchedulerTask *)self _activityName];
  startAfter = [(CKDiscretionaryDASSchedulerTask *)self startAfter];
  startBefore = [(CKDiscretionaryDASSchedulerTask *)self startBefore];
  v8 = [_DASActivity activityWithName:_activityName priority:v4 duration:v4 startingAfter:startAfter startingBefore:startBefore];

  queue = [(CKDiscretionaryDASSchedulerTask *)self queue];
  [v8 setHandlerQueue:queue];

  options = [(CKDiscretionaryDASSchedulerTask *)self options];
  LOBYTE(startAfter) = [options requiresNetworkAccess];

  if (startAfter)
  {
    [v8 setRequiresNetwork:1];
    options2 = [(CKDiscretionaryDASSchedulerTask *)self options];
    [v8 setRequiresInexpensiveNetworking:{objc_msgSend(options2, "allowsExpensiveNetworkAccess") ^ 1}];

    options3 = [(CKDiscretionaryDASSchedulerTask *)self options];
    allowsCellularAccess = [options3 allowsCellularAccess];
    options4 = [(CKDiscretionaryDASSchedulerTask *)self options];
    v15 = -[CKDiscretionaryDASSchedulerTask _nwParametersWithAllowsCellularAccess:allowsExpensiveNetworkAccess:](self, "_nwParametersWithAllowsCellularAccess:allowsExpensiveNetworkAccess:", allowsCellularAccess, [options4 allowsExpensiveNetworkAccess]);

    v16 = [NWParameters parametersWithCParameters:v15];
    _nwEndpointDefault = [(CKDiscretionaryDASSchedulerTask *)self _nwEndpointDefault];
    v18 = [NWEndpoint endpointWithCEndpoint:_nwEndpointDefault];
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
  options5 = [(CKDiscretionaryDASSchedulerTask *)self options];
  applicationBundleIdentifierOverride = [options5 applicationBundleIdentifierOverride];
  bundleID = applicationBundleIdentifierOverride;
  if (!applicationBundleIdentifierOverride)
  {
    bundleID = [(CKDiscretionaryDASSchedulerTask *)self bundleID];
  }

  [v8 setBundleId:bundleID];
  if (!applicationBundleIdentifierOverride)
  {
  }

  v25 = objc_alloc_init(NSMutableArray);
  bundleId = [v8 bundleId];
  [v25 addObject:bundleId];

  options6 = [(CKDiscretionaryDASSchedulerTask *)self options];
  secondarySourceApplicationBundleId = [options6 secondarySourceApplicationBundleId];

  if (secondarySourceApplicationBundleId)
  {
    options7 = [(CKDiscretionaryDASSchedulerTask *)self options];
    secondarySourceApplicationBundleId2 = [options7 secondarySourceApplicationBundleId];
    [v25 addObject:secondarySourceApplicationBundleId2];
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
  group = [(CKDiscretionaryDASSchedulerTask *)self group];
  v33 = [_DASActivityGroup groupWithName:group maxConcurrent:3];
  [v31 submitActivity:v8 inGroup:v33];

  objc_destroyWeak(&v38);
  objc_destroyWeak(&v40);
  objc_destroyWeak(&location);

  os_activity_scope_leave(&state);
}

@end