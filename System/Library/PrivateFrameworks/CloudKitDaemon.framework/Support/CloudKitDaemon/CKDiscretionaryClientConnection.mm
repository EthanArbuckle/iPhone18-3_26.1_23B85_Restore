@interface CKDiscretionaryClientConnection
- (CKDiscretionaryClientConnection)initWithDaemon:(id)daemon connection:(id)connection;
- (CKDiscretionaryClientConnection)initWithDaemon:(id)daemon group:(id)group bundleID:(id)d isSpringBoardApp:(BOOL)app requiresPastBuddy:(BOOL)buddy scheduleSendBarrierBlock:(id)block;
- (CKDiscretionaryDaemon)daemon;
- (void)cleanup;
- (void)finishOperationID:(id)d;
- (void)handleCompletedTask:(id)task operationID:(id)d;
- (void)queueOperationID:(id)d options:(id)options clientOperationCallbackProxyEndpoint:(id)endpoint withBlock:(id)block;
@end

@implementation CKDiscretionaryClientConnection

- (CKDiscretionaryClientConnection)initWithDaemon:(id)daemon group:(id)group bundleID:(id)d isSpringBoardApp:(BOOL)app requiresPastBuddy:(BOOL)buddy scheduleSendBarrierBlock:(id)block
{
  daemonCopy = daemon;
  groupCopy = group;
  dCopy = d;
  blockCopy = block;
  v33.receiver = self;
  v33.super_class = CKDiscretionaryClientConnection;
  v18 = [(CKDiscretionaryClientConnection *)&v33 init];
  v19 = v18;
  if (v18)
  {
    objc_storeWeak(&v18->_daemon, daemonCopy);
    v20 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    [daemonCopy serialQueue];
    obj = group;
    v21 = dCopy;
    v22 = groupCopy;
    v24 = v23 = buddy;
    v25 = dispatch_queue_create_with_target_V2("com.apple.ckdiscretionaryd.connection", v20, v24);
    serialQueue = v19->_serialQueue;
    v19->_serialQueue = v25;

    v27 = +[NSMutableDictionary dictionary];
    tasksByOperationID = v19->_tasksByOperationID;
    v19->_tasksByOperationID = v27;

    objc_storeStrong(&v19->_bundleID, d);
    v19->_isSpringBoardApp = app;
    v19->_requiresPastBuddy = v23;
    groupCopy = v22;
    dCopy = v21;
    v29 = objc_retainBlock(blockCopy);
    scheduleSendBarrierBlock = v19->_scheduleSendBarrierBlock;
    v19->_scheduleSendBarrierBlock = v29;

    objc_storeStrong(&v19->_group, obj);
  }

  return v19;
}

- (CKDiscretionaryClientConnection)initWithDaemon:(id)daemon connection:(id)connection
{
  daemonCopy = daemon;
  connectionCopy = connection;
  _xpcConnection = [connectionCopy _xpcConnection];
  v9 = xpc_connection_copy_bundle_id();

  if (v9)
  {
    v10 = [NSString stringWithUTF8String:v9];
    free(v9);
  }

  else
  {
    v10 = 0;
  }

  _xpcConnection2 = [connectionCopy _xpcConnection];
  bundleIdentifier = v10;
  if ((xpc_connection_is_extension() & (v10 != 0)) != 1)
  {
    goto LABEL_21;
  }

  v13 = v10;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v14 = ck_log_facility_ckdd;
  if (os_log_type_enabled(ck_log_facility_ckdd, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    *&buf[4] = v13;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Client is a PlugIn with bundle identifier %{public}@", buf, 0xCu);
  }

  v29 = 0;
  v15 = [[LSApplicationExtensionRecord alloc] initWithBundleIdentifier:v13 error:&v29];
  v16 = v29;
  if (v16)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v17 = ck_log_facility_ck;
    bundleIdentifier = v13;
    if (!os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    *buf = 138412546;
    *&buf[4] = v13;
    *&buf[12] = 2112;
    *&buf[14] = v16;
    _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Failed to initialize LSApplicationExtensionRecord with bundle id %@: %@", buf, 0x16u);
    bundleIdentifier = v13;
  }

  else
  {
    bundleIdentifier = v13;
    if (v15)
    {
      containingBundleRecord = [v15 containingBundleRecord];
      bundleIdentifier = [containingBundleRecord bundleIdentifier];
    }
  }

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

LABEL_18:
  v19 = ck_log_facility_ckdd;
  if (os_log_type_enabled(ck_log_facility_ckdd, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    *&buf[4] = bundleIdentifier;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Containing app for PlugIn is %{public}@", buf, 0xCu);
  }

LABEL_21:
  v20 = [connectionCopy valueForEntitlement:kCKAllowAccessDuringBuddyEntitlementKey];
  if (v20 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v21 = [v20 BOOLValue] ^ 1;
    if (bundleIdentifier)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v21 = 1;
    if (bundleIdentifier)
    {
      goto LABEL_29;
    }
  }

  memset(buf, 0, 32);
  if (connectionCopy)
  {
    [connectionCopy auditToken];
  }

  v28 = 0;
  v26 = *buf;
  v27 = *&buf[16];
  CPCopyBundleIdentifierAndTeamFromAuditToken();
  bundleIdentifier = 0;
LABEL_29:
  objc_initWeak(buf, connectionCopy);
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100003D94;
  v24[3] = &unk_100010688;
  objc_copyWeak(&v25, buf);
  v22 = [(CKDiscretionaryClientConnection *)self initWithDaemon:daemonCopy group:@"com.apple.ckdiscretionaryd" bundleID:bundleIdentifier isSpringBoardApp:v10 != 0 requiresPastBuddy:v21 scheduleSendBarrierBlock:v24];
  objc_destroyWeak(&v25);
  objc_destroyWeak(buf);

  return v22;
}

- (void)queueOperationID:(id)d options:(id)options clientOperationCallbackProxyEndpoint:(id)endpoint withBlock:(id)block
{
  dCopy = d;
  optionsCopy = options;
  blockCopy = block;
  endpointCopy = endpoint;
  v14 = [[CKDOperationCallbackProxy alloc] initWithEndpoint:endpointCopy];

  [v14 activate];
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_1000040C8;
  v33[3] = &unk_1000106B0;
  v15 = v14;
  v34 = v15;
  v16 = blockCopy;
  v35 = v16;
  v17 = objc_retainBlock(v33);
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v18 = ck_log_facility_ckdd;
  if (os_log_type_enabled(ck_log_facility_ckdd, OS_LOG_TYPE_INFO))
  {
    v19 = v18;
    bundleID = [(CKDiscretionaryClientConnection *)self bundleID];
    *buf = 138543874;
    v37 = dCopy;
    v38 = 2112;
    v39 = bundleID;
    v40 = 2048;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "%{public}@ queued for %@ on connection %p", buf, 0x20u);
  }

  objc_initWeak(buf, self);
  serialQueue = self->_serialQueue;
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100004124;
  v26[3] = &unk_100010728;
  objc_copyWeak(&v32, buf);
  v30 = v15;
  v31 = v17;
  v27 = dCopy;
  selfCopy2 = self;
  v29 = optionsCopy;
  v22 = v15;
  v23 = optionsCopy;
  v24 = dCopy;
  v25 = v17;
  dispatch_async(serialQueue, v26);

  objc_destroyWeak(&v32);
  objc_destroyWeak(buf);
}

- (void)finishOperationID:(id)d
{
  dCopy = d;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v5 = ck_log_facility_ckdd;
  if (os_log_type_enabled(ck_log_facility_ckdd, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v13 = dCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%{public}@ finishing", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100004A70;
  block[3] = &unk_100010750;
  objc_copyWeak(&v11, buf);
  v9 = dCopy;
  selfCopy = self;
  v7 = dCopy;
  dispatch_async(serialQueue, block);

  objc_destroyWeak(&v11);
  objc_destroyWeak(buf);
}

- (void)cleanup
{
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v3 = ck_log_facility_ckdd;
  if (os_log_type_enabled(ck_log_facility_ckdd, OS_LOG_TYPE_INFO))
  {
    v4 = v3;
    bundleID = [(CKDiscretionaryClientConnection *)self bundleID];
    *buf = 138543618;
    v10 = bundleID;
    v11 = 2048;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "cleanup for %{public}@ on connection %p", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  serialQueue = self->_serialQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100004DB0;
  v7[3] = &unk_100010778;
  objc_copyWeak(&v8, buf);
  v7[4] = self;
  dispatch_async(serialQueue, v7);
  objc_destroyWeak(&v8);
  objc_destroyWeak(buf);
}

- (void)handleCompletedTask:(id)task operationID:(id)d
{
  taskCopy = task;
  dCopy = d;
  v8 = dispatch_group_create();
  callbackProxy = [taskCopy callbackProxy];
  if (callbackProxy)
  {
    dispatch_group_enter(v8);
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100005150;
    v20[3] = &unk_1000107A0;
    v21 = v8;
    [callbackProxy addBarrierBlock:v20];
  }

  objc_initWeak(&location, self);
  serialQueue = self->_serialQueue;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100005158;
  v14[3] = &unk_1000107C8;
  v15 = taskCopy;
  v16 = callbackProxy;
  v11 = callbackProxy;
  v12 = taskCopy;
  objc_copyWeak(&v18, &location);
  v17 = dCopy;
  v13 = dCopy;
  dispatch_group_notify(v8, serialQueue, v14);

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

- (CKDiscretionaryDaemon)daemon
{
  WeakRetained = objc_loadWeakRetained(&self->_daemon);

  return WeakRetained;
}

@end