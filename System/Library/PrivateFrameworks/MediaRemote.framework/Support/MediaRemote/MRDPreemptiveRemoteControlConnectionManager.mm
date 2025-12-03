@interface MRDPreemptiveRemoteControlConnectionManager
+ (id)sharedManager;
- (NSString)debugDescription;
- (id)_init;
- (void)_clearPendingClusterLeaderOperations;
- (void)_clearPendingGroupLeaderOperations;
- (void)_reevaluateClusterLeaderConnectionWithDeviceInfo:(id)info;
- (void)_reevaluateGroupLeaderConnectionWithDeviceInfo:(id)info;
- (void)addObserver:(id)observer;
- (void)removeObserver:(id)observer;
- (void)setGroupLeader:(id)leader;
- (void)setPreferredClusterLeader:(id)leader;
- (void)setPreviousClusterLeaderID:(id)d;
- (void)setPreviousGroupID:(id)d;
@end

@implementation MRDPreemptiveRemoteControlConnectionManager

- (id)_init
{
  v16.receiver = self;
  v16.super_class = MRDPreemptiveRemoteControlConnectionManager;
  v2 = [(MRDPreemptiveRemoteControlConnectionManager *)&v16 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.MediaRemote.MRDPreemptiveRemoteControlConnectionManager", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v6 = +[NSNotificationCenter defaultCenter];
    v7 = kMRDeviceInfoDidChangeNotification;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1001975D8;
    v14[3] = &unk_1004B99A0;
    v8 = v2;
    v15 = v8;
    v9 = [v6 addObserverForName:v7 object:0 queue:0 usingBlock:v14];

    queue = [(MRDPreemptiveRemoteControlConnectionManager *)v8 queue];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1001976F0;
    v12[3] = &unk_1004B6D08;
    v13 = v8;
    sub_10019FEE8(queue, v12);
  }

  return v2;
}

+ (id)sharedManager
{
  if (qword_100529680 != -1)
  {
    sub_1003AFC44();
  }

  v3 = qword_100529678;

  return v3;
}

- (NSString)debugDescription
{
  v3 = [[NSMutableString alloc] initWithFormat:@"<%@:%p {\n", objc_opt_class(), self];
  queue = [(MRDPreemptiveRemoteControlConnectionManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100197880;
  block[3] = &unk_1004B68F0;
  block[4] = self;
  v5 = v3;
  v10 = v5;
  dispatch_sync(queue, block);

  [v5 appendString:@"}>"];
  v6 = v10;
  v7 = v5;

  return v5;
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  queue = [(MRDPreemptiveRemoteControlConnectionManager *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100197A3C;
  v7[3] = &unk_1004B68F0;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_async(queue, v7);
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  queue = [(MRDPreemptiveRemoteControlConnectionManager *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100197B80;
  v7[3] = &unk_1004B68F0;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_async(queue, v7);
}

- (void)setPreviousGroupID:(id)d
{
  dCopy = d;
  queue = [(MRDPreemptiveRemoteControlConnectionManager *)self queue];
  dispatch_assert_queue_V2(queue);

  previousGroupID = self->_previousGroupID;
  p_previousGroupID = &self->_previousGroupID;
  v9 = previousGroupID;
  v10 = v9;
  if (v9 == dCopy)
  {
  }

  else
  {
    v11 = [(NSString *)v9 isEqual:dCopy];

    if ((v11 & 1) == 0)
    {
      v12 = *p_previousGroupID;
      v13 = _MRLogForCategory();
      v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
      if (v12)
      {
        if (v14)
        {
          v15 = *p_previousGroupID;
          v19 = 138544130;
          v20 = @"PreemptiveRemoteControlConnectionManager";
          v21 = 2114;
          v22 = @"previousGroupID";
          v23 = 2112;
          v24 = v15;
          v25 = 2112;
          v26 = dCopy;
          v16 = "Set: %{public}@ setting %{public}@ from <%@> to <%@>";
          v17 = v13;
          v18 = 42;
LABEL_9:
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, v16, &v19, v18);
        }
      }

      else if (v14)
      {
        v19 = 138543874;
        v20 = @"PreemptiveRemoteControlConnectionManager";
        v21 = 2114;
        v22 = @"previousGroupID";
        v23 = 2112;
        v24 = dCopy;
        v16 = "Set: %{public}@ setting %{public}@ to <%@>";
        v17 = v13;
        v18 = 32;
        goto LABEL_9;
      }

      objc_storeStrong(p_previousGroupID, d);
    }
  }
}

- (void)setGroupLeader:(id)leader
{
  leaderCopy = leader;
  queue = [(MRDPreemptiveRemoteControlConnectionManager *)self queue];
  dispatch_assert_queue_V2(queue);

  p_groupLeader = &self->_groupLeader;
  v8 = self->_groupLeader;
  v9 = v8;
  if (v8 == leaderCopy)
  {

    goto LABEL_12;
  }

  v10 = [(MRAVEndpoint *)v8 isEqual:leaderCopy];

  if ((v10 & 1) == 0)
  {
    debugName = [(MRAVEndpoint *)*p_groupLeader debugName];

    v12 = _MRLogForCategory();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    if (debugName)
    {
      if (!v13)
      {
        goto LABEL_10;
      }

      debugName2 = [(MRAVEndpoint *)*p_groupLeader debugName];
      debugName3 = [(MRAVEndpoint *)leaderCopy debugName];
      *buf = 138544130;
      v22 = @"PreemptiveRemoteControlConnectionManager";
      v23 = 2114;
      v24 = @"groupLeader";
      v25 = 2112;
      v26 = debugName2;
      v27 = 2112;
      v28 = debugName3;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Set: %{public}@ setting %{public}@ from <%@> to <%@>", buf, 0x2Au);
    }

    else
    {
      if (!v13)
      {
        goto LABEL_10;
      }

      debugName2 = [(MRAVEndpoint *)leaderCopy debugName];
      *buf = 138543874;
      v22 = @"PreemptiveRemoteControlConnectionManager";
      v23 = 2114;
      v24 = @"groupLeader";
      v25 = 2112;
      v26 = debugName2;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Set: %{public}@ setting %{public}@ to <%@>", buf, 0x20u);
    }

LABEL_10:
    objc_storeStrong(&self->_groupLeader, leader);
    if (leaderCopy)
    {
      [(NSHashTable *)self->_observers allObjects];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100198030;
      v18 = block[3] = &unk_1004B69D0;
      selfCopy = self;
      v20 = leaderCopy;
      v16 = v18;
      dispatch_async(&_dispatch_main_q, block);
    }
  }

LABEL_12:
}

- (void)setPreviousClusterLeaderID:(id)d
{
  dCopy = d;
  queue = [(MRDPreemptiveRemoteControlConnectionManager *)self queue];
  dispatch_assert_queue_V2(queue);

  previousClusterLeaderID = self->_previousClusterLeaderID;
  p_previousClusterLeaderID = &self->_previousClusterLeaderID;
  v9 = previousClusterLeaderID;
  v10 = v9;
  if (v9 == dCopy)
  {
  }

  else
  {
    v11 = [(NSString *)v9 isEqual:dCopy];

    if ((v11 & 1) == 0)
    {
      v12 = *p_previousClusterLeaderID;
      v13 = _MRLogForCategory();
      v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
      if (v12)
      {
        if (v14)
        {
          v15 = *p_previousClusterLeaderID;
          v19 = 138544130;
          v20 = @"PreemptiveRemoteControlConnectionManager";
          v21 = 2114;
          v22 = @"previousClusterLeaderID";
          v23 = 2112;
          v24 = v15;
          v25 = 2112;
          v26 = dCopy;
          v16 = "Set: %{public}@ setting %{public}@ from <%@> to <%@>";
          v17 = v13;
          v18 = 42;
LABEL_9:
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, v16, &v19, v18);
        }
      }

      else if (v14)
      {
        v19 = 138543874;
        v20 = @"PreemptiveRemoteControlConnectionManager";
        v21 = 2114;
        v22 = @"previousClusterLeaderID";
        v23 = 2112;
        v24 = dCopy;
        v16 = "Set: %{public}@ setting %{public}@ to <%@>";
        v17 = v13;
        v18 = 32;
        goto LABEL_9;
      }

      objc_storeStrong(p_previousClusterLeaderID, d);
    }
  }
}

- (void)setPreferredClusterLeader:(id)leader
{
  leaderCopy = leader;
  queue = [(MRDPreemptiveRemoteControlConnectionManager *)self queue];
  dispatch_assert_queue_V2(queue);

  p_preferredClusterLeader = &self->_preferredClusterLeader;
  v8 = self->_preferredClusterLeader;
  v9 = v8;
  if (v8 == leaderCopy)
  {

    goto LABEL_12;
  }

  v10 = [(MRAVEndpoint *)v8 isEqual:leaderCopy];

  if ((v10 & 1) == 0)
  {
    debugName = [(MRAVEndpoint *)*p_preferredClusterLeader debugName];

    v12 = _MRLogForCategory();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    if (debugName)
    {
      if (!v13)
      {
        goto LABEL_10;
      }

      debugName2 = [(MRAVEndpoint *)*p_preferredClusterLeader debugName];
      debugName3 = [(MRAVEndpoint *)leaderCopy debugName];
      *buf = 138544130;
      v22 = @"PreemptiveRemoteControlConnectionManager";
      v23 = 2114;
      v24 = @"clusterLeader";
      v25 = 2112;
      v26 = debugName2;
      v27 = 2112;
      v28 = debugName3;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Set: %{public}@ setting %{public}@ from <%@> to <%@>", buf, 0x2Au);
    }

    else
    {
      if (!v13)
      {
        goto LABEL_10;
      }

      debugName2 = [(MRAVEndpoint *)leaderCopy debugName];
      *buf = 138543874;
      v22 = @"PreemptiveRemoteControlConnectionManager";
      v23 = 2114;
      v24 = @"clusterLeader";
      v25 = 2112;
      v26 = debugName2;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Set: %{public}@ setting %{public}@ to <%@>", buf, 0x20u);
    }

LABEL_10:
    objc_storeStrong(&self->_preferredClusterLeader, leader);
    if (leaderCopy)
    {
      [(NSHashTable *)self->_observers allObjects];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1001985AC;
      v18 = block[3] = &unk_1004B69D0;
      selfCopy = self;
      v20 = leaderCopy;
      v16 = v18;
      dispatch_async(&_dispatch_main_q, block);
    }
  }

LABEL_12:
}

- (void)_reevaluateGroupLeaderConnectionWithDeviceInfo:(id)info
{
  infoCopy = info;
  queue = [(MRDPreemptiveRemoteControlConnectionManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100198990;
  v25[3] = &unk_1004C0AB8;
  v6 = infoCopy;
  v26 = v6;
  v7 = sub_100198990(v25);
  if ([v7 result])
  {
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100198A20;
    v23[3] = &unk_1004C0AE0;
    v23[4] = self;
    v8 = v6;
    v24 = v8;
    v9 = sub_100198A20(v23);
    if ([v9 result])
    {
      groupUID = [v8 groupUID];
      [(MRDPreemptiveRemoteControlConnectionManager *)self setPreviousGroupID:groupUID];
      [(MRDPreemptiveRemoteControlConnectionManager *)self _clearPendingGroupLeaderOperations];
      v11 = [[MRDConenctToGroupLeaderOperation alloc] initWithGroupID:groupUID];
      objc_initWeak(&location, v11);
      v16 = _NSConcreteStackBlock;
      v17 = 3221225472;
      v18 = sub_100198B38;
      v19 = &unk_1004B9630;
      objc_copyWeak(&v21, &location);
      selfCopy = self;
      [(MRDConenctToGroupLeaderOperation *)v11 setCompletionBlock:&v16];
      v12 = [(MRDPreemptiveRemoteControlConnectionManager *)self groupLeaderOperations:v16];

      if (!v12)
      {
        v13 = objc_alloc_init(NSOperationQueue);
        [(MRDPreemptiveRemoteControlConnectionManager *)self setGroupLeaderOperations:v13];

        groupLeaderOperations = [(MRDPreemptiveRemoteControlConnectionManager *)self groupLeaderOperations];
        [groupLeaderOperations setMaxConcurrentOperationCount:3];
      }

      groupLeaderOperations2 = [(MRDPreemptiveRemoteControlConnectionManager *)self groupLeaderOperations];
      [groupLeaderOperations2 addOperation:v11];

      objc_destroyWeak(&v21);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    [(MRDPreemptiveRemoteControlConnectionManager *)self _clearPendingGroupLeaderOperations];
    [(MRDPreemptiveRemoteControlConnectionManager *)self setPreviousGroupID:0];
    [(MRDPreemptiveRemoteControlConnectionManager *)self setGroupLeader:0];
  }
}

- (void)_reevaluateClusterLeaderConnectionWithDeviceInfo:(id)info
{
  infoCopy = info;
  queue = [(MRDPreemptiveRemoteControlConnectionManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100198EA4;
  v24[3] = &unk_1004C0AB8;
  v6 = infoCopy;
  v25 = v6;
  v7 = sub_100198EA4(v24);
  if ([v7 result])
  {
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100198F68;
    v22[3] = &unk_1004C0AE0;
    v22[4] = self;
    v8 = v6;
    v23 = v8;
    v9 = sub_100198F68(v22);
    if ([v9 result])
    {
      preferredClusterLeaderID = [v8 preferredClusterLeaderID];
      [(MRDPreemptiveRemoteControlConnectionManager *)self setPreviousClusterLeaderID:preferredClusterLeaderID];
      [(MRDPreemptiveRemoteControlConnectionManager *)self _clearPendingClusterLeaderOperations];
      v11 = [[MRDConenctToClusterLeaderOperation alloc] initWithClusterLeaderID:preferredClusterLeaderID];
      objc_initWeak(&location, v11);
      v15 = _NSConcreteStackBlock;
      v16 = 3221225472;
      v17 = sub_100199080;
      v18 = &unk_1004B9630;
      objc_copyWeak(&v20, &location);
      selfCopy = self;
      [(MRDConenctToClusterLeaderOperation *)v11 setCompletionBlock:&v15];
      v12 = [(MRDPreemptiveRemoteControlConnectionManager *)self clusterLeaderOperations:v15];

      if (!v12)
      {
        v13 = objc_alloc_init(NSOperationQueue);
        [(MRDPreemptiveRemoteControlConnectionManager *)self setClusterLeaderOperations:v13];
      }

      clusterLeaderOperations = [(MRDPreemptiveRemoteControlConnectionManager *)self clusterLeaderOperations];
      [clusterLeaderOperations addOperation:v11];

      objc_destroyWeak(&v20);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    [(MRDPreemptiveRemoteControlConnectionManager *)self _clearPendingClusterLeaderOperations];
    [(MRDPreemptiveRemoteControlConnectionManager *)self setPreferredClusterLeader:0];
  }
}

- (void)_clearPendingGroupLeaderOperations
{
  queue = [(MRDPreemptiveRemoteControlConnectionManager *)self queue];
  dispatch_assert_queue_V2(queue);

  groupLeaderOperations = [(MRDPreemptiveRemoteControlConnectionManager *)self groupLeaderOperations];
  operationCount = [groupLeaderOperations operationCount];

  if (operationCount)
  {
    v6 = _MRLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[PreemptiveRemoteControlConnectionManager] Cancelling pending groupLeaderOperations", v8, 2u);
    }

    groupLeaderOperations2 = [(MRDPreemptiveRemoteControlConnectionManager *)self groupLeaderOperations];
    [groupLeaderOperations2 cancelAllOperations];
  }
}

- (void)_clearPendingClusterLeaderOperations
{
  queue = [(MRDPreemptiveRemoteControlConnectionManager *)self queue];
  dispatch_assert_queue_V2(queue);

  clusterLeaderOperations = [(MRDPreemptiveRemoteControlConnectionManager *)self clusterLeaderOperations];
  operationCount = [clusterLeaderOperations operationCount];

  if (operationCount)
  {
    v6 = _MRLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[PreemptiveRemoteControlConnectionManager] Cancelling Pending clusterLeaderOperations", v8, 2u);
    }

    clusterLeaderOperations2 = [(MRDPreemptiveRemoteControlConnectionManager *)self clusterLeaderOperations];
    [clusterLeaderOperations2 cancelAllOperations];
  }
}

@end