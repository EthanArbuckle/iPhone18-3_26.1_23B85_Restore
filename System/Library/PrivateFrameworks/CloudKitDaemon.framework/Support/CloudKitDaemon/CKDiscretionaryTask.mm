@interface CKDiscretionaryTask
- (CKDiscretionaryClientConnection)connection;
- (CKDiscretionaryTask)initWithConnection:(id)a3 operationID:(id)a4 group:(id)a5 bundleID:(id)a6 isSpringBoardApp:(BOOL)a7 requiresPastBuddy:(BOOL)a8 options:(id)a9 schedulerClass:(Class)a10 startHandler:(id)a11 suspendHandler:(id)a12;
- (NDApplication)application;
- (id)_schedulerTaskIdentifier;
- (void)applicationEnteredForeground:(id)a3;
- (void)applicationNoLongerInForeground:(id)a3;
- (void)complete;
- (void)dealloc;
- (void)setResourceTimer:(id)a3;
- (void)setTask:(id)a3;
@end

@implementation CKDiscretionaryTask

- (CKDiscretionaryTask)initWithConnection:(id)a3 operationID:(id)a4 group:(id)a5 bundleID:(id)a6 isSpringBoardApp:(BOOL)a7 requiresPastBuddy:(BOOL)a8 options:(id)a9 schedulerClass:(Class)a10 startHandler:(id)a11 suspendHandler:(id)a12
{
  v67 = a8;
  v17 = a3;
  v69 = a4;
  v70 = a5;
  v71 = a6;
  v18 = a9;
  v19 = a11;
  v20 = a12;
  v80.receiver = self;
  v80.super_class = CKDiscretionaryTask;
  v21 = [(CKDiscretionaryTask *)&v80 init];
  v22 = v21;
  if (!v21)
  {
    goto LABEL_36;
  }

  objc_storeWeak(&v21->_connection, v17);
  v23 = [v17 serialQueue];
  serialQueue = v22->_serialQueue;
  v22->_serialQueue = v23;

  objc_storeStrong(&v22->_operationID, a4);
  objc_storeStrong(&v22->_options, a9);
  objc_storeStrong(&v22->_schedulerClass, a10);
  v25 = [v19 copy];
  startHandler = v22->_startHandler;
  v22->_startHandler = v25;

  v27 = [v20 copy];
  suspendHandler = v22->_suspendHandler;
  v22->_suspendHandler = v27;

  objc_storeStrong(&v22->_bundleID, a6);
  v22->_isSpringBoardApp = a7;
  v29 = os_transaction_create();
  transaction = v22->_transaction;
  v22->_transaction = v29;

  v31 = [v18 applicationBundleIdentifierOverride];
  bundleID = v31;
  if (!v31)
  {
    bundleID = v22->_bundleID;
  }

  v33 = [v18 secondarySourceApplicationBundleId];
  v34 = [NDCloudContainer containerIDForPrimaryIdentifier:bundleID secondaryIdentifier:v33];
  cloudDocsContainerID = v22->_cloudDocsContainerID;
  v22->_cloudDocsContainerID = v34;

  if (!v17 || !v22->_serialQueue || !v22->_operationID || (v36 = v22->_options) == 0 || !v22->_schedulerClass || !v22->_startHandler || !v22->_suspendHandler || !v22->_bundleID || !v22->_transaction)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v39 = ck_log_facility_ckdd;
    if (os_log_type_enabled(ck_log_facility_ckdd, OS_LOG_TYPE_ERROR))
    {
      v41 = v22->_serialQueue;
      operationID = v22->_operationID;
      schedulerClass = v22->_schedulerClass;
      v42 = v22->_startHandler;
      options = v22->_options;
      v43 = v39;
      v44 = objc_retainBlock(v42);
      v45 = objc_retainBlock(v22->_suspendHandler);
      v46 = v22->_transaction;
      v47 = v22->_bundleID;
      *buf = 134220032;
      v82 = v41;
      v83 = 2048;
      v84 = v17;
      v85 = 2048;
      v86 = operationID;
      v87 = 2048;
      v88 = options;
      v89 = 2048;
      v90 = schedulerClass;
      v91 = 2048;
      v92 = v44;
      v93 = 2048;
      v94 = v45;
      v95 = 2048;
      v96 = v46;
      v97 = 2048;
      v98 = v47;
      _os_log_error_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "Missing critical attribute for initilization of CKDiscretionaryTask. serialQueue:%p, connection:%p, operationID:%p, options:%p, scheduler:%p, startHandler:%p, suspendHandler:%p, transaction:%p, bundleID:%p", buf, 0x5Cu);
    }

    goto LABEL_21;
  }

  v37 = [(CKDiscretionaryOptions *)v36 discretionaryNetworkBehavior];
  if (v37 == 2)
  {
    v38 = 4;
  }

  else
  {
    if (v37 == 1)
    {
      v48 = [(CKDiscretionaryTask *)v22 application];
      [v48 addObserver:v22];
      if ([v48 hasForegroundBackgroundStates] && !objc_msgSend(v48, "isForeground"))
      {
        v49 = 3;
      }

      else
      {
        v49 = 2;
      }

      v66 = v49;

      goto LABEL_30;
    }

    if (v37)
    {
      v66 = 0;
      goto LABEL_30;
    }

    v38 = 1;
  }

  v66 = v38;
LABEL_30:
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v50 = ck_log_facility_ckdd;
  if (os_log_type_enabled(ck_log_facility_ckdd, OS_LOG_TYPE_INFO))
  {
    v51 = v50;
    v52 = [(CKDiscretionaryTask *)v22 operationID];
    v53 = sub_100005454(v66);
    *buf = 138543618;
    v82 = v52;
    v83 = 2114;
    v84 = v53;
    _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_INFO, "%{public}@ scheduling in state %{public}@", buf, 0x16u);
  }

  objc_initWeak(buf, v22);
  v54 = v22->_serialQueue;
  v77[0] = _NSConcreteStackBlock;
  v77[1] = 3221225472;
  v77[2] = sub_100007000;
  v77[3] = &unk_100010860;
  objc_copyWeak(&v79, buf);
  v55 = v22;
  v78 = v55;
  v75[0] = _NSConcreteStackBlock;
  v75[1] = 3221225472;
  v75[2] = sub_1000071B0;
  v75[3] = &unk_100010888;
  objc_copyWeak(&v76, buf);
  v56 = [(objc_class *)a10 scheduleOperationID:v69 group:v70 bundleID:v71 requiresPastBuddy:v67 options:v18 state:v66 queue:v54 startHandler:v77 suspendHandler:v75];
  v57 = v55[15];
  v55[15] = v56;

  v58 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v22->_serialQueue);
  [v55 setResourceTimer:v58];

  v59 = v55[13];
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1000072D0;
  handler[3] = &unk_100010480;
  objc_copyWeak(&v74, buf);
  dispatch_source_set_event_handler(v59, handler);
  [v18 timeoutIntervalForResource];
  v61 = dispatch_time(0, (v60 * 1000000000.0));
  dispatch_source_set_timer(v55[13], v61, 0xFFFFFFFFFFFFFFFFLL, 0);
  dispatch_activate(v55[13]);
  if (v55[15])
  {
    objc_destroyWeak(&v74);
    objc_destroyWeak(&v76);

    objc_destroyWeak(&v79);
    objc_destroyWeak(buf);
LABEL_36:
    v40 = v22;
    goto LABEL_37;
  }

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v63 = ck_log_facility_ckdd;
  if (os_log_type_enabled(ck_log_facility_ckdd, OS_LOG_TYPE_ERROR))
  {
    *v72 = 0;
    _os_log_error_impl(&_mh_execute_header, v63, OS_LOG_TYPE_ERROR, "Failed to initialize CKDiscretionarySchedulerTask for CKDiscretionaryTask", v72, 2u);
  }

  objc_destroyWeak(&v74);
  objc_destroyWeak(&v76);

  objc_destroyWeak(&v79);
  objc_destroyWeak(buf);
LABEL_21:
  v40 = 0;
LABEL_37:

  return v40;
}

- (void)dealloc
{
  [(CKDiscretionaryTask *)self setTask:0];
  [(CKDiscretionaryTask *)self setResourceTimer:0];
  v3.receiver = self;
  v3.super_class = CKDiscretionaryTask;
  [(CKDiscretionaryTask *)&v3 dealloc];
}

- (void)setResourceTimer:(id)a3
{
  v4 = a3;
  resourceTimer = self->_resourceTimer;
  if (resourceTimer != v4 && resourceTimer != 0)
  {
    dispatch_source_cancel(resourceTimer);
    resourceTimer = self->_resourceTimer;
  }

  self->_resourceTimer = v4;
}

- (void)setTask:(id)a3
{
  v4 = a3;
  task = self->_task;
  if (task != v4 && task != 0)
  {
    if (self->_running)
    {
      [(CKDiscretionarySchedulerTask *)task finish];
    }

    else
    {
      [(CKDiscretionarySchedulerTask *)task cancel];
    }
  }

  v7 = self->_task;
  self->_task = v4;
}

- (NDApplication)application
{
  if (self->_application)
  {
    goto LABEL_16;
  }

  if (!self->_cloudDocsContainerID)
  {
    v9 = [(CKDiscretionaryOptions *)self->_options applicationBundleIdentifierOverride];
    bundleID = v9;
    if (!v9)
    {
      bundleID = self->_bundleID;
    }

    v6 = bundleID;

    if ([(NSString *)self->_bundleID isEqualToString:v6])
    {
      p_isa = self->_bundleID;
      if (self->_isSpringBoardApp)
      {
LABEL_11:
        v12 = [NDApplication springboardApplicationWithBundleIdentifier:p_isa];
LABEL_14:
        application = self->_application;
        self->_application = v12;

        goto LABEL_15;
      }
    }

    else
    {
      v13 = [NDApplication springBoardApplicationExistsWithIdentifier:v6];
      p_isa = &v6->isa;
      if (v13)
      {
        goto LABEL_11;
      }
    }

    v12 = [NDApplication applicationWithIdentifier:p_isa];
    goto LABEL_14;
  }

  v3 = [(NDApplication *)NDCloudContainer cloudContainerWithIdentifier:?];
  v4 = self->_application;
  self->_application = v3;

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v5 = ck_log_facility_ckdd;
  if (os_log_type_enabled(ck_log_facility_ckdd, OS_LOG_TYPE_INFO))
  {
    v6 = v5;
    v7 = [(CKDiscretionaryTask *)self operationID];
    cloudDocsContainerID = self->_cloudDocsContainerID;
    v17 = 138412546;
    v18 = v7;
    v19 = 2114;
    v20 = cloudDocsContainerID;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "{public}%@ monitoring cloud docs container ID %{public}@", &v17, 0x16u);

LABEL_15:
  }

LABEL_16:
  v15 = self->_application;

  return v15;
}

- (id)_schedulerTaskIdentifier
{
  v3 = [NSMutableString stringWithFormat:@"ckdiscretionaryd:%@", self->_operationID];
  if (self->_cloudDocsContainerID)
  {
    [v3 appendFormat:@":clouddocs-%@", self->_cloudDocsContainerID];
  }

  else
  {
    v4 = [(CKDiscretionaryOptions *)self->_options applicationBundleIdentifierOverride];

    bundleID = self->_bundleID;
    if (v4)
    {
      v6 = [(CKDiscretionaryOptions *)self->_options applicationBundleIdentifierOverride];
      [v3 appendFormat:@":%@-%@", bundleID, v6];
    }

    else
    {
      [v3 appendFormat:@":%@", self->_bundleID];
    }
  }

  return v3;
}

- (void)applicationEnteredForeground:(id)a3
{
  v4 = a3;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v5 = ck_log_facility_ckdd;
  if (os_log_type_enabled(ck_log_facility_ckdd, OS_LOG_TYPE_INFO))
  {
    v6 = v5;
    v7 = [(CKDiscretionaryTask *)self operationID];
    *buf = 138543362;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "applicationEnteredForeground, updating priority of %{public}@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100007A74;
  block[3] = &unk_100010480;
  objc_copyWeak(&v10, buf);
  dispatch_async(serialQueue, block);
  objc_destroyWeak(&v10);
  objc_destroyWeak(buf);
}

- (void)applicationNoLongerInForeground:(id)a3
{
  v4 = a3;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v5 = ck_log_facility_ckdd;
  if (os_log_type_enabled(ck_log_facility_ckdd, OS_LOG_TYPE_INFO))
  {
    v6 = v5;
    v7 = [(CKDiscretionaryTask *)self operationID];
    *buf = 138543362;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "applicationNoLongerInForeground, updating priority of %{public}@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100007D08;
  block[3] = &unk_100010480;
  objc_copyWeak(&v10, buf);
  dispatch_async(serialQueue, block);
  objc_destroyWeak(&v10);
  objc_destroyWeak(buf);
}

- (void)complete
{
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v3 = ck_log_facility_ckdd;
  if (os_log_type_enabled(ck_log_facility_ckdd, OS_LOG_TYPE_INFO))
  {
    v4 = v3;
    v5 = [(CKDiscretionaryTask *)self operationID];
    *buf = 138543362;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%{public}@ complete", buf, 0xCu);
  }

  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100007F68;
  block[3] = &unk_1000107A0;
  block[4] = self;
  dispatch_async(serialQueue, block);
}

- (CKDiscretionaryClientConnection)connection
{
  WeakRetained = objc_loadWeakRetained(&self->_connection);

  return WeakRetained;
}

@end