@interface RTHelperServiceLifeCycleManager
+ (id)createSourceForSignal:(int)a3 withBlock:(id)a4;
- (RTHelperServiceLifeCycleManager)initWithEntitlementProvider:(id)a3 exitHandler:(id)a4 timerManager:(id)a5;
- (RTHelperServiceLifeCycleManager)initWithExitHandler:(id)a3;
- (void)_extendLifetime;
- (void)_handleLifeCycleTimerExpiration;
- (void)connection:(id)a3 handleInvocation:(id)a4 isReply:(BOOL)a5;
- (void)dealloc;
- (void)serviceListener:(id)a3 didAcceptConnection:(id)a4;
@end

@implementation RTHelperServiceLifeCycleManager

- (void)_extendLifetime
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    v3 = sub_1000011A0(&qword_1000B29A0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *v4 = 0;
      _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "extending the life time of the helper service.", v4, 2u);
    }
  }

  xpc_transaction_interrupt_clean_exit();
  [(RTTimer *)self->_transactionTimer suspend];
  [(RTTimer *)self->_transactionTimer fireAfterDelay:120.0];
  [(RTTimer *)self->_transactionTimer resume];
}

+ (id)createSourceForSignal:(int)a3 withBlock:(id)a4
{
  v5 = a4;
  signal(a3, 1);
  v6 = dispatch_source_create(&_dispatch_source_type_signal, a3, 0, &_dispatch_main_q);
  dispatch_source_set_event_handler(v6, v5);

  dispatch_resume(v6);

  return v6;
}

- (RTHelperServiceLifeCycleManager)initWithExitHandler:(id)a3
{
  v4 = a3;
  v5 = +[RTEntitlementProvider helperServiceProtocolEntitlementProvider];
  v6 = objc_opt_new();
  v7 = [(RTHelperServiceLifeCycleManager *)self initWithEntitlementProvider:v5 exitHandler:v4 timerManager:v6];

  return v7;
}

- (RTHelperServiceLifeCycleManager)initWithEntitlementProvider:(id)a3 exitHandler:(id)a4 timerManager:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = v11;
  if (!v9)
  {
    v18 = sub_1000011A0(&qword_1000B2958);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    *buf = 0;
    v19 = "Invalid parameter not satisfying: entitlementProvider";
LABEL_13:
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, v19, buf, 2u);
    goto LABEL_14;
  }

  if (!v10)
  {
    v18 = sub_1000011A0(&qword_1000B2958);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    *buf = 0;
    v19 = "Invalid parameter not satisfying: exitHandler";
    goto LABEL_13;
  }

  if (!v11)
  {
    v18 = sub_1000011A0(&qword_1000B2958);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v19 = "Invalid parameter not satisfying: timerManager";
      goto LABEL_13;
    }

LABEL_14:

    v20 = 0;
    goto LABEL_18;
  }

  v45.receiver = self;
  v45.super_class = RTHelperServiceLifeCycleManager;
  v13 = [(RTHelperServiceLifeCycleManager *)&v45 init];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
    v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [(RTHelperServiceLifeCycleManager *)v15 UTF8String];
    }

    else
    {
      v21 = [NSString stringWithFormat:@"%@-%p", objc_opt_class(), v15];
      v17 = [v21 UTF8String];
    }

    v22 = dispatch_queue_create(v17, v16);

    queue = v15->_queue;
    v15->_queue = v22;

    objc_storeStrong(&v15->_entitlementProvider, a3);
    objc_storeStrong(&v15->_timerManager, a5);
    v24 = [v10 copy];
    exitHandler = v15->_exitHandler;
    v15->_exitHandler = v24;

    timerManager = v15->_timerManager;
    v27 = objc_opt_class();
    v28 = NSStringFromClass(v27);
    v29 = v15->_queue;
    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_100088820;
    v43[3] = &unk_1000A8B40;
    v30 = v15;
    v44 = v30;
    v31 = [(RTTimerManager *)timerManager timerWithIdentifier:v28 queue:v29 handler:v43];
    v32 = v30[4];
    v30[4] = v31;

    [v30[4] fireAfterDelay:120.0];
    [v30[4] resume];
    v33 = [NSSet setWithObjects:@"routined", @"wedge", @"Routine", 0];
    v34 = v30[3];
    v30[3] = v33;

    v35 = objc_opt_new();
    v36 = v30[1];
    v30[1] = v35;

    v37 = v30[1];
    v38 = objc_opt_class();
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_100088828;
    v41[3] = &unk_1000A8B40;
    v42 = v30;
    v39 = [v38 createSourceForSignal:15 withBlock:v41];
    [v37 addObject:v39];
  }

  self = v14;
  v20 = self;
LABEL_18:

  return v20;
}

- (void)dealloc
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_signals;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        dispatch_source_cancel(*(*(&v9 + 1) + 8 * v7));
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  [(RTTimer *)self->_transactionTimer invalidate];
  v8.receiver = self;
  v8.super_class = RTHelperServiceLifeCycleManager;
  [(RTHelperServiceLifeCycleManager *)&v8 dealloc];
}

- (void)_handleLifeCycleTimerExpiration
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    v3 = sub_1000011A0(&qword_1000B29A0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *v5 = 0;
      _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "life cycle timer of the helper service expired.", v5, 2u);
    }
  }

  exitHandler = self->_exitHandler;
  if (exitHandler)
  {
    exitHandler[2]();
  }
}

- (void)serviceListener:(id)a3 didAcceptConnection:(id)a4
{
  v5 = a4;
  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100088B14;
  v8[3] = &unk_1000A8B68;
  v9 = v5;
  v10 = self;
  v7 = v5;
  dispatch_async(queue, v8);
}

- (void)connection:(id)a3 handleInvocation:(id)a4 isReply:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  [v10 retainArguments];
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x3032000000;
  v28[3] = sub_100001230;
  v28[4] = sub_100088DC8;
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  v13 = NSStringFromSelector(a2);
  v14 = [NSString stringWithFormat:@"%@-%@", v12, v13];
  v15 = v14;
  [v14 UTF8String];
  v29 = os_transaction_create();

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    v16 = sub_1000011A0(&qword_1000B2958);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      v22 = NSStringFromSelector(a2);
      *buf = 138412546;
      v31 = v21;
      v32 = 2112;
      v33 = v22;
      _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "creating os_transaction, %@, %@", buf, 0x16u);
    }
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100088DD0;
  block[3] = &unk_1000A99F0;
  v27 = a5;
  block[4] = self;
  v24 = v10;
  v25 = v9;
  v26 = v28;
  v18 = v9;
  v19 = v10;
  dispatch_async(queue, block);

  _Block_object_dispose(v28, 8);
}

@end