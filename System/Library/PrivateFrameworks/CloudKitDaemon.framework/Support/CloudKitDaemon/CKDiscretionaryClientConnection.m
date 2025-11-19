@interface CKDiscretionaryClientConnection
- (CKDiscretionaryClientConnection)initWithDaemon:(id)a3 connection:(id)a4;
- (CKDiscretionaryClientConnection)initWithDaemon:(id)a3 group:(id)a4 bundleID:(id)a5 isSpringBoardApp:(BOOL)a6 requiresPastBuddy:(BOOL)a7 scheduleSendBarrierBlock:(id)a8;
- (CKDiscretionaryDaemon)daemon;
- (void)cleanup;
- (void)finishOperationID:(id)a3;
- (void)handleCompletedTask:(id)a3 operationID:(id)a4;
- (void)queueOperationID:(id)a3 options:(id)a4 clientOperationCallbackProxyEndpoint:(id)a5 withBlock:(id)a6;
@end

@implementation CKDiscretionaryClientConnection

- (CKDiscretionaryClientConnection)initWithDaemon:(id)a3 group:(id)a4 bundleID:(id)a5 isSpringBoardApp:(BOOL)a6 requiresPastBuddy:(BOOL)a7 scheduleSendBarrierBlock:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a8;
  v33.receiver = self;
  v33.super_class = CKDiscretionaryClientConnection;
  v18 = [(CKDiscretionaryClientConnection *)&v33 init];
  v19 = v18;
  if (v18)
  {
    objc_storeWeak(&v18->_daemon, v14);
    v20 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    [v14 serialQueue];
    obj = a4;
    v21 = v16;
    v22 = v15;
    v24 = v23 = a7;
    v25 = dispatch_queue_create_with_target_V2("com.apple.ckdiscretionaryd.connection", v20, v24);
    serialQueue = v19->_serialQueue;
    v19->_serialQueue = v25;

    v27 = +[NSMutableDictionary dictionary];
    tasksByOperationID = v19->_tasksByOperationID;
    v19->_tasksByOperationID = v27;

    objc_storeStrong(&v19->_bundleID, a5);
    v19->_isSpringBoardApp = a6;
    v19->_requiresPastBuddy = v23;
    v15 = v22;
    v16 = v21;
    v29 = objc_retainBlock(v17);
    scheduleSendBarrierBlock = v19->_scheduleSendBarrierBlock;
    v19->_scheduleSendBarrierBlock = v29;

    objc_storeStrong(&v19->_group, obj);
  }

  return v19;
}

- (CKDiscretionaryClientConnection)initWithDaemon:(id)a3 connection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 _xpcConnection];
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

  v11 = [v7 _xpcConnection];
  v12 = v10;
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
    v12 = v13;
    if (!os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    *buf = 138412546;
    *&buf[4] = v13;
    *&buf[12] = 2112;
    *&buf[14] = v16;
    _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Failed to initialize LSApplicationExtensionRecord with bundle id %@: %@", buf, 0x16u);
    v12 = v13;
  }

  else
  {
    v12 = v13;
    if (v15)
    {
      v18 = [v15 containingBundleRecord];
      v12 = [v18 bundleIdentifier];
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
    *&buf[4] = v12;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Containing app for PlugIn is %{public}@", buf, 0xCu);
  }

LABEL_21:
  v20 = [v7 valueForEntitlement:kCKAllowAccessDuringBuddyEntitlementKey];
  if (v20 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v21 = [v20 BOOLValue] ^ 1;
    if (v12)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v21 = 1;
    if (v12)
    {
      goto LABEL_29;
    }
  }

  memset(buf, 0, 32);
  if (v7)
  {
    [v7 auditToken];
  }

  v28 = 0;
  v26 = *buf;
  v27 = *&buf[16];
  CPCopyBundleIdentifierAndTeamFromAuditToken();
  v12 = 0;
LABEL_29:
  objc_initWeak(buf, v7);
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100003D94;
  v24[3] = &unk_100010688;
  objc_copyWeak(&v25, buf);
  v22 = [(CKDiscretionaryClientConnection *)self initWithDaemon:v6 group:@"com.apple.ckdiscretionaryd" bundleID:v12 isSpringBoardApp:v10 != 0 requiresPastBuddy:v21 scheduleSendBarrierBlock:v24];
  objc_destroyWeak(&v25);
  objc_destroyWeak(buf);

  return v22;
}

- (void)queueOperationID:(id)a3 options:(id)a4 clientOperationCallbackProxyEndpoint:(id)a5 withBlock:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = a5;
  v14 = [[CKDOperationCallbackProxy alloc] initWithEndpoint:v13];

  [v14 activate];
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_1000040C8;
  v33[3] = &unk_1000106B0;
  v15 = v14;
  v34 = v15;
  v16 = v12;
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
    v20 = [(CKDiscretionaryClientConnection *)self bundleID];
    *buf = 138543874;
    v37 = v10;
    v38 = 2112;
    v39 = v20;
    v40 = 2048;
    v41 = self;
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
  v27 = v10;
  v28 = self;
  v29 = v11;
  v22 = v15;
  v23 = v11;
  v24 = v10;
  v25 = v17;
  dispatch_async(serialQueue, v26);

  objc_destroyWeak(&v32);
  objc_destroyWeak(buf);
}

- (void)finishOperationID:(id)a3
{
  v4 = a3;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v5 = ck_log_facility_ckdd;
  if (os_log_type_enabled(ck_log_facility_ckdd, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%{public}@ finishing", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100004A70;
  block[3] = &unk_100010750;
  objc_copyWeak(&v11, buf);
  v9 = v4;
  v10 = self;
  v7 = v4;
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
    v5 = [(CKDiscretionaryClientConnection *)self bundleID];
    *buf = 138543618;
    v10 = v5;
    v11 = 2048;
    v12 = self;
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

- (void)handleCompletedTask:(id)a3 operationID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = dispatch_group_create();
  v9 = [v6 callbackProxy];
  if (v9)
  {
    dispatch_group_enter(v8);
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100005150;
    v20[3] = &unk_1000107A0;
    v21 = v8;
    [v9 addBarrierBlock:v20];
  }

  objc_initWeak(&location, self);
  serialQueue = self->_serialQueue;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100005158;
  v14[3] = &unk_1000107C8;
  v15 = v6;
  v16 = v9;
  v11 = v9;
  v12 = v6;
  objc_copyWeak(&v18, &location);
  v17 = v7;
  v13 = v7;
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