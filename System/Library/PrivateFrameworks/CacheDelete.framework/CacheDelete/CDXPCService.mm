@interface CDXPCService
- (CDXPCService)initWithInfo:(id)a3;
- (id)addProcInfoForConnection:(id)a3 toDict:(id)a4;
- (void)_serviceCallback:(id)a3 replyBlock:(id)a4;
- (void)_serviceCancelPurge:(id)a3;
- (void)_serviceNotify:(id)a3 replyBlock:(id)a4;
- (void)_servicePeriodic:(int)a3 info:(id)a4 replyBlock:(id)a5;
- (void)_servicePurge:(int)a3 info:(id)a4 replyBlock:(id)a5;
- (void)_servicePurgeable:(int)a3 info:(id)a4 replyBlock:(id)a5;
- (void)connectionWasInvalidated;
- (void)dealloc;
- (void)doWithProxy:(id)a3 failure:(id)a4;
- (void)invalidateConnection;
- (void)obtainXPCConnection:(id)a3;
- (void)resumeConnection;
@end

@implementation CDXPCService

- (void)resumeConnection
{
  v2 = [(CDXPCService *)self xpcConnection];
  [v2 resume];
}

- (CDXPCService)initWithInfo:(id)a3
{
  v4.receiver = self;
  v4.super_class = CDXPCService;
  return [(CDService *)&v4 initWithInfo:a3];
}

- (void)dealloc
{
  if ([(CDService *)self _inFlight])
  {
    v3 = [(CDService *)self requestQueue];
    dispatch_resume(v3);
  }

  if ([(CDXPCService *)self isConnected])
  {
    [(CDXPCService *)self invalidateConnection];
  }

  v4.receiver = self;
  v4.super_class = CDXPCService;
  [(CDXPCService *)&v4 dealloc];
}

- (id)addProcInfoForConnection:(id)a3 toDict:(id)a4
{
  v5 = a3;
  v6 = [a4 mutableCopy];
  v7 = v6;
  if (v5)
  {
    if (!v6)
    {
      v7 = objc_opt_new();
    }

    v8 = signingIdForConnection();
    v9 = processNameForConnection();
    if (v8)
    {
      [v7 setObject:v8 forKeyedSubscript:@"CACHE_DELETE_SIGNING_ID"];
    }

    if (v9)
    {
      [v7 setObject:v9 forKeyedSubscript:@"CACHE_DELETE_PROCNAME"];
    }
  }

  v10 = [v7 copy];

  return v10;
}

- (void)_servicePurgeable:(int)a3 info:(id)a4 replyBlock:(id)a5
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = __50__CDXPCService__servicePurgeable_info_replyBlock___block_invoke;
  v11[3] = &unk_100061E08;
  v15 = a3;
  v12 = a4;
  v13 = self;
  v14 = a5;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __50__CDXPCService__servicePurgeable_info_replyBlock___block_invoke_4;
  v9[3] = &unk_100061E30;
  v10 = v14;
  v7 = v14;
  v8 = v12;
  [(CDXPCService *)self doWithProxy:v11 failure:v9];
}

void __50__CDXPCService__servicePurgeable_info_replyBlock___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = *(a1 + 32);
  v10 = a2;
  v11 = [v9 mutableCopy];
  v12 = [NSNumber numberWithInt:*(a1 + 56)];
  [v11 setObject:v12 forKeyedSubscript:@"CACHE_DELETE_URGENCY"];

  v13 = *(a1 + 56);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = __50__CDXPCService__servicePurgeable_info_replyBlock___block_invoke_2;
  v18[3] = &unk_100061DE0;
  v14 = *(a1 + 32);
  v15 = *(a1 + 48);
  v18[4] = *(a1 + 40);
  v20 = v8;
  v21 = v15;
  v19 = v7;
  v16 = v7;
  v17 = v8;
  [v10 servicePurgeable:v13 info:v14 replyBlock:v18];
}

void __50__CDXPCService__servicePurgeable_info_replyBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) serviceQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __50__CDXPCService__servicePurgeable_info_replyBlock___block_invoke_3;
  block[3] = &unk_100061DB8;
  v12 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v13 = v5;
  block[4] = v6;
  v10 = v7;
  v11 = v3;
  v8 = v3;
  dispatch_async(v4, block);
}

void __50__CDXPCService__servicePurgeable_info_replyBlock___block_invoke_3(uint64_t a1)
{
  v2 = (*(*(a1 + 56) + 16))();
  v3 = *(a1 + 64);
  if (v3)
  {
    v4 = v2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v5 = [*(a1 + 32) addProcInfoForConnection:*(a1 + 40) toDict:*(a1 + 48)];
    (*(v3 + 16))(v3, v5);
  }
}

void __50__CDXPCService__servicePurgeable_info_replyBlock___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v5 = @"CACHE_DELETE_ERROR";
  v6 = a2;
  v3 = a2;
  v4 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  (*(v2 + 16))(v2, v4);
}

- (void)_servicePurge:(int)a3 info:(id)a4 replyBlock:(id)a5
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = __46__CDXPCService__servicePurge_info_replyBlock___block_invoke;
  v11[3] = &unk_100061E08;
  v15 = a3;
  v12 = a4;
  v13 = self;
  v14 = a5;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __46__CDXPCService__servicePurge_info_replyBlock___block_invoke_4;
  v9[3] = &unk_100061E30;
  v10 = v14;
  v7 = v14;
  v8 = v12;
  [(CDXPCService *)self doWithProxy:v11 failure:v9];
}

void __46__CDXPCService__servicePurge_info_replyBlock___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = *(a1 + 32);
  v10 = a2;
  v11 = [v9 mutableCopy];
  v12 = [NSNumber numberWithInt:*(a1 + 56)];
  [v11 setObject:v12 forKeyedSubscript:@"CACHE_DELETE_URGENCY"];

  v13 = *(a1 + 56);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = __46__CDXPCService__servicePurge_info_replyBlock___block_invoke_2;
  v18[3] = &unk_100061DE0;
  v14 = *(a1 + 32);
  v15 = *(a1 + 48);
  v18[4] = *(a1 + 40);
  v20 = v8;
  v21 = v15;
  v19 = v7;
  v16 = v7;
  v17 = v8;
  [v10 servicePurge:v13 info:v14 replyBlock:v18];
}

void __46__CDXPCService__servicePurge_info_replyBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) serviceQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __46__CDXPCService__servicePurge_info_replyBlock___block_invoke_3;
  block[3] = &unk_100061DB8;
  v12 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v13 = v5;
  block[4] = v6;
  v10 = v7;
  v11 = v3;
  v8 = v3;
  dispatch_async(v4, block);
}

void __46__CDXPCService__servicePurge_info_replyBlock___block_invoke_3(uint64_t a1)
{
  v2 = (*(*(a1 + 56) + 16))();
  v3 = *(a1 + 64);
  if (v3)
  {
    v4 = v2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v5 = [*(a1 + 32) addProcInfoForConnection:*(a1 + 40) toDict:*(a1 + 48)];
    (*(v3 + 16))(v3, v5);
  }
}

void __46__CDXPCService__servicePurge_info_replyBlock___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v5 = @"CACHE_DELETE_ERROR";
    v6 = a2;
    v3 = a2;
    v4 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
    (*(v2 + 16))(v2, v4);
  }
}

- (void)_servicePeriodic:(int)a3 info:(id)a4 replyBlock:(id)a5
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = __49__CDXPCService__servicePeriodic_info_replyBlock___block_invoke;
  v11[3] = &unk_100061E08;
  v15 = a3;
  v12 = a4;
  v13 = self;
  v14 = a5;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __49__CDXPCService__servicePeriodic_info_replyBlock___block_invoke_4;
  v9[3] = &unk_100061E30;
  v10 = v14;
  v7 = v14;
  v8 = v12;
  [(CDXPCService *)self doWithProxy:v11 failure:v9];
}

void __49__CDXPCService__servicePeriodic_info_replyBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = *(a1 + 32);
  v8 = a2;
  v9 = [v7 mutableCopy];
  v10 = [NSNumber numberWithInt:*(a1 + 56)];
  [v9 setObject:v10 forKeyedSubscript:@"CACHE_DELETE_URGENCY"];

  v11 = *(a1 + 56);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = __49__CDXPCService__servicePeriodic_info_replyBlock___block_invoke_2;
  v15[3] = &unk_100061E58;
  v12 = *(a1 + 32);
  v13 = *(a1 + 48);
  v15[4] = *(a1 + 40);
  v16 = v6;
  v17 = v13;
  v14 = v6;
  [v8 servicePeriodic:v11 info:v12 replyBlock:v15];
}

void __49__CDXPCService__servicePeriodic_info_replyBlock___block_invoke_2(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] serviceQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __49__CDXPCService__servicePeriodic_info_replyBlock___block_invoke_3;
  block[3] = &unk_100061EA8;
  v8 = a1[5];
  v9 = a1[6];
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, block);
}

uint64_t __49__CDXPCService__servicePeriodic_info_replyBlock___block_invoke_3(void *a1)
{
  v2 = (*(a1[5] + 16))();
  result = a1[6];
  if (result)
  {
    v4 = v2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v5 = a1[4];
    v6 = *(result + 16);

    return v6();
  }

  return result;
}

void __49__CDXPCService__servicePeriodic_info_replyBlock___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v5 = @"CACHE_DELETE_ERROR";
    v6 = a2;
    v3 = a2;
    v4 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
    (*(v2 + 16))(v2, v4);
  }
}

- (void)_serviceCancelPurge:(id)a3
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __36__CDXPCService__serviceCancelPurge___block_invoke;
  v6[3] = &unk_100061ED0;
  v7 = self;
  v8 = a3;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = __36__CDXPCService__serviceCancelPurge___block_invoke_4;
  v4[3] = &unk_100061E30;
  v5 = v8;
  v3 = v8;
  [(CDXPCService *)v7 doWithProxy:v6 failure:v4];
}

void __36__CDXPCService__serviceCancelPurge___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __36__CDXPCService__serviceCancelPurge___block_invoke_2;
  v9[3] = &unk_100061EA8;
  v7 = *(a1 + 40);
  v9[4] = *(a1 + 32);
  v10 = v6;
  v11 = v7;
  v8 = v6;
  [a2 serviceCancelPurge:v9];
}

void __36__CDXPCService__serviceCancelPurge___block_invoke_2(id *a1)
{
  v2 = [a1[4] serviceQueue];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = __36__CDXPCService__serviceCancelPurge___block_invoke_3;
  v3[3] = &unk_100061E80;
  v4 = a1[5];
  v5 = a1[6];
  dispatch_async(v2, v3);
}

uint64_t __36__CDXPCService__serviceCancelPurge___block_invoke_3(uint64_t a1)
{
  v2 = (*(*(a1 + 32) + 16))();
  result = *(a1 + 40);
  if (result)
  {
    v4 = v2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

void __36__CDXPCService__serviceCancelPurge___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CDGetLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "ServiceCancelPurge failed: %@", &v6, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))();
  }
}

- (void)_serviceNotify:(id)a3 replyBlock:(id)a4
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = __42__CDXPCService__serviceNotify_replyBlock___block_invoke;
  v10[3] = &unk_100061EF8;
  v11 = a3;
  v12 = self;
  v13 = a4;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __42__CDXPCService__serviceNotify_replyBlock___block_invoke_4;
  v8[3] = &unk_100061E30;
  v9 = v13;
  v6 = v13;
  v7 = v11;
  [(CDXPCService *)self doWithProxy:v10 failure:v8];
}

void __42__CDXPCService__serviceNotify_replyBlock___block_invoke(void *a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = __42__CDXPCService__serviceNotify_replyBlock___block_invoke_2;
  v10[3] = &unk_100061EA8;
  v7 = a1[4];
  v8 = a1[6];
  v10[4] = a1[5];
  v11 = v6;
  v12 = v8;
  v9 = v6;
  [a2 serviceNotify:v7 replyBlock:v10];
}

void __42__CDXPCService__serviceNotify_replyBlock___block_invoke_2(id *a1)
{
  v2 = [a1[4] serviceQueue];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = __42__CDXPCService__serviceNotify_replyBlock___block_invoke_3;
  v3[3] = &unk_100061E80;
  v4 = a1[5];
  v5 = a1[6];
  dispatch_async(v2, v3);
}

uint64_t __42__CDXPCService__serviceNotify_replyBlock___block_invoke_3(uint64_t a1)
{
  v2 = (*(*(a1 + 32) + 16))();
  result = *(a1 + 40);
  if (result)
  {
    v4 = v2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

void __42__CDXPCService__serviceNotify_replyBlock___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CDGetLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "ServiceNotify failed: %@", &v6, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))();
  }
}

- (void)_serviceCallback:(id)a3 replyBlock:(id)a4
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = __44__CDXPCService__serviceCallback_replyBlock___block_invoke;
  v10[3] = &unk_100061EF8;
  v11 = a3;
  v12 = self;
  v13 = a4;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __44__CDXPCService__serviceCallback_replyBlock___block_invoke_4;
  v8[3] = &unk_100061E30;
  v9 = v13;
  v6 = v13;
  v7 = v11;
  [(CDXPCService *)self doWithProxy:v10 failure:v8];
}

void __44__CDXPCService__serviceCallback_replyBlock___block_invoke(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = __44__CDXPCService__serviceCallback_replyBlock___block_invoke_2;
  v13[3] = &unk_100061DE0;
  v9 = a1[4];
  v10 = a1[6];
  v13[4] = a1[5];
  v15 = v8;
  v16 = v10;
  v14 = v7;
  v11 = v7;
  v12 = v8;
  [a2 serviceCallback:v9 replyBlock:v13];
}

void __44__CDXPCService__serviceCallback_replyBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) serviceQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __44__CDXPCService__serviceCallback_replyBlock___block_invoke_3;
  block[3] = &unk_100061DB8;
  v12 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v13 = v5;
  block[4] = v6;
  v10 = v7;
  v11 = v3;
  v8 = v3;
  dispatch_async(v4, block);
}

void __44__CDXPCService__serviceCallback_replyBlock___block_invoke_3(uint64_t a1)
{
  v2 = (*(*(a1 + 56) + 16))();
  v3 = *(a1 + 64);
  if (v3)
  {
    v4 = v2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v5 = [*(a1 + 32) addProcInfoForConnection:*(a1 + 40) toDict:*(a1 + 48)];
    (*(v3 + 16))(v3, v5);
  }
}

void __44__CDXPCService__serviceCallback_replyBlock___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CDGetLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v10 = v3;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "ServiceCancelPurge failed: %@", buf, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    v7 = @"CACHE_DELETE_ERROR";
    v8 = v3;
    v6 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
    (*(v5 + 16))(v5, v6);
  }
}

- (void)doWithProxy:(id)a3 failure:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x2020000000;
  v16 = 0;
  [(CDService *)self set_inFlight:1];
  v8 = [(CDService *)self requestQueue];
  dispatch_suspend(v8);

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = __36__CDXPCService_doWithProxy_failure___block_invoke;
  v11[3] = &unk_100061F98;
  v14 = v15;
  v11[4] = self;
  v9 = v7;
  v12 = v9;
  v10 = v6;
  v13 = v10;
  [(CDXPCService *)self obtainXPCConnection:v11];

  _Block_object_dispose(v15, 8);
}

void __36__CDXPCService_doWithProxy_failure___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  v8 = *(*(a1 + 56) + 8);
  if (*(v8 + 24) == 1)
  {
    v9 = CDGetLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      v30 = [*(a1 + 32) ID];
      v31 = *(a1 + 32);
      v32 = objc_opt_class();
      v33 = NSStringFromClass(v32);
      *v51 = 138412546;
      *&v51[4] = v30;
      *&v51[12] = 2112;
      *&v51[14] = v33;
      _os_log_fault_impl(&_mh_execute_header, v9, OS_LOG_TYPE_FAULT, "%@: obtainXPCConnection callback fired more than once for %@!", v51, 0x16u);
    }

    v10 = [*(a1 + 32) ID];
    v11 = *(a1 + 32);
    v12 = objc_opt_class();
    v35 = NSStringFromClass(v12);
    _CacheDeleteAbortWithMessage();
  }

  else
  {
    *(v8 + 24) = 1;
    if (!v5 || v6)
    {
      v26 = CDGetLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v34 = [*(a1 + 32) ID];
        *v51 = 138412546;
        *&v51[4] = v34;
        *&v51[12] = 2112;
        *&v51[14] = v7;
        _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%@: obtainXPCConnection failed to get a connection: %@", v51, 0x16u);
      }

      v27 = *(a1 + 32);
      if (v5)
      {
        [v27 invalidateConnection];
      }

      else if ([v27 _inFlight])
      {
        [*(a1 + 32) set_inFlight:0];
        v28 = [*(a1 + 32) requestQueue];
        dispatch_resume(v28);
      }

      v29 = *(a1 + 40);
      if (v29)
      {
        (*(v29 + 16))(v29, v7);
      }
    }

    else
    {
      [*(a1 + 32) setXpcConnection:v5];
      *v51 = 0;
      *&v51[8] = v51;
      *&v51[16] = 0x2020000000;
      v52 = 0;
      v47[0] = 0;
      v47[1] = v47;
      v47[2] = 0x2020000000;
      v48 = 0;
      v45[0] = 0;
      v45[1] = v45;
      v45[2] = 0x2020000000;
      v46 = 0;
      objc_initWeak(&location, *(a1 + 32));
      v13 = [*(a1 + 32) serviceQueue];
      v14 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v13);
      [*(a1 + 32) setWatchdog_timer:v14];

      v15 = [*(a1 + 32) watchdog_timer];
      v16 = dispatch_time(0, 90000000000);
      dispatch_source_set_timer(v15, v16, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);

      v17 = [*(a1 + 32) watchdog_timer];
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = __36__CDXPCService_doWithProxy_failure___block_invoke_20;
      handler[3] = &unk_100060DD0;
      handler[4] = *(a1 + 32);
      handler[5] = v47;
      dispatch_source_set_event_handler(v17, handler);

      v18 = [*(a1 + 32) watchdog_timer];
      dispatch_resume(v18);

      if (([*(a1 + 32) isConnected] & 1) == 0)
      {
        v19 = CDGetLogHandle();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = [*(a1 + 32) ID];
          *buf = 138412290;
          v50 = v20;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Connecting to %@", buf, 0xCu);
        }

        v21 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___CacheDeleteServiceProtocol];
        v22 = [*(a1 + 32) xpcConnection];
        [v22 setRemoteObjectInterface:v21];

        [*(a1 + 32) resumeConnection];
        [*(a1 + 32) setIsConnected:1];
      }

      v23 = [*(a1 + 32) xpcConnection];
      v38[0] = _NSConcreteStackBlock;
      v38[1] = 3221225472;
      v38[2] = __36__CDXPCService_doWithProxy_failure___block_invoke_35;
      v38[3] = &unk_100061F48;
      objc_copyWeak(&v42, &location);
      v40 = v51;
      v41 = v45;
      v39 = *(a1 + 40);
      v24 = [v23 remoteObjectProxyWithErrorHandler:v38];

      v25 = *(a1 + 48);
      v36[0] = _NSConcreteStackBlock;
      v36[1] = 3221225472;
      v36[2] = __36__CDXPCService_doWithProxy_failure___block_invoke_37;
      v36[3] = &unk_100061F70;
      objc_copyWeak(&v37, &location);
      v36[4] = v45;
      v36[5] = v51;
      v36[6] = v47;
      (*(v25 + 16))(v25, v24, v5, v36);
      objc_destroyWeak(&v37);

      objc_destroyWeak(&v42);
      objc_destroyWeak(&location);
      _Block_object_dispose(v45, 8);
      _Block_object_dispose(v47, 8);
      _Block_object_dispose(v51, 8);
    }
  }
}

void __36__CDXPCService_doWithProxy_failure___block_invoke_20(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 24) = 1;
  v2 = CDGetLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = [*(a1 + 32) ID];
    v4 = 138412546;
    v5 = v3;
    v6 = 2048;
    v7 = 90;
    _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%@: failed to respond after %llu seconds, deleted is dirty for this reason.", &v4, 0x16u);
  }
}

void __36__CDXPCService_doWithProxy_failure___block_invoke_35(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained serviceQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __36__CDXPCService_doWithProxy_failure___block_invoke_2;
    block[3] = &unk_100061F20;
    v10 = v3;
    v11 = v5;
    v13 = *(a1 + 48);
    v8 = *(a1 + 32);
    v7 = v8;
    v12 = v8;
    dispatch_async(v6, block);
  }
}

void __36__CDXPCService_doWithProxy_failure___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = CDGetLogHandle();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v5 = [*(a1 + 40) ID];
      v6 = *(a1 + 32);
      *buf = 138412546;
      v12 = v5;
      v13 = 2112;
      v14 = v6;
      _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%@: remoteObjectProxyWithErrorHandler error: %@", buf, 0x16u);
    }
  }

  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    v3 = CDGetLogHandle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      v7 = [*(a1 + 40) ID];
      v8 = *(a1 + 32);
      *buf = 138412546;
      v12 = v7;
      v13 = 2112;
      v14 = v8;
      _os_log_fault_impl(&_mh_execute_header, v3, OS_LOG_TYPE_FAULT, "%@: Received an error after the request succeeded! error: %@", buf, 0x16u);
    }

    v9 = [*(a1 + 40) ID];
    v10 = *(a1 + 32);
    _CacheDeleteAbortWithMessage();
  }

  v4 = *(*(a1 + 64) + 8);
  if ((*(v4 + 24) & 1) == 0)
  {
    *(v4 + 24) = 1;
    (*(*(a1 + 48) + 16))(*(a1 + 48), *(a1 + 32));
    [*(a1 + 40) invalidateConnection];
  }
}

uint64_t __36__CDXPCService_doWithProxy_failure___block_invoke_37(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (!WeakRetained)
  {
LABEL_7:
    v7 = 0;
    goto LABEL_11;
  }

  v4 = [WeakRetained serviceQueue];
  dispatch_assert_queue_V2(v4);

  v5 = *(*(a1 + 32) + 8);
  if (*(v5 + 24))
  {
    if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
    {
      v6 = CDGetLogHandle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        v11 = [v3 ID];
        v12 = *(*(*(a1 + 40) + 8) + 24);
        *buf = 138412546;
        v16 = v11;
        v17 = 1024;
        v18 = v12;
        _os_log_fault_impl(&_mh_execute_header, v6, OS_LOG_TYPE_FAULT, "%@: Received completion after we sent a callback! Success = %d", buf, 0x12u);
      }

      v13 = [v3 ID];
      v14 = *(*(*(a1 + 40) + 8) + 24);
      _CacheDeleteAbortWithMessage();
    }

    goto LABEL_7;
  }

  *(v5 + 24) = 1;
  *(*(*(a1 + 40) + 8) + 24) = 1;
  v8 = CDGetLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v3 ID];
    *buf = 138412290;
    v16 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@: Successful Request", buf, 0xCu);
  }

  [v3 invalidateConnection];
  v7 = 1;
LABEL_11:

  return v7;
}

- (void)obtainXPCConnection:(id)a3
{
  v6 = a3;
  v4 = [(CDXPCService *)self xpcConnection];

  if (v4)
  {
    v5 = [(CDXPCService *)self xpcConnection];
    v6[2](v6, v5, 0);
  }

  else
  {
    [NSException raise:@"com.apple.cache_delete.CDXPCService.no_connection" format:@"Subclass needs to implement this"];
  }
}

- (void)invalidateConnection
{
  v3 = [(CDXPCService *)self xpcConnection];

  if (v3)
  {
    v4 = [(CDXPCService *)self xpcConnection];
    [v4 invalidate];

    [(CDXPCService *)self connectionWasInvalidated];
  }

  else
  {
    v5 = CDGetLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v10 = [(CDService *)self ID];
      v11 = 138412290;
      v12 = v10;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%@: invalidate and connection is nil!", &v11, 0xCu);
    }
  }

  v6 = [(CDXPCService *)self watchdog_timer];

  if (v6)
  {
    v7 = [(CDXPCService *)self watchdog_timer];
    dispatch_source_cancel(v7);

    [(CDXPCService *)self setWatchdog_timer:0];
  }

  else
  {
    v8 = CDGetLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(CDXPCService *)self watchdog_timer];
      v11 = 134218240;
      v12 = self;
      v13 = 2048;
      v14 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "watchdog timer is nil, self: %p, timer: %p", &v11, 0x16u);
    }
  }
}

- (void)connectionWasInvalidated
{
  v3 = CDGetLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v5 = [(CDService *)self ID];
    v6 = 138412290;
    v7 = v5;
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Connection to %@ was invalidated.", &v6, 0xCu);
  }

  [(CDXPCService *)self setXpcConnection:0];
  [(CDXPCService *)self setIsConnected:0];
  if ([(CDService *)self _inFlight])
  {
    [(CDService *)self set_inFlight:0];
    v4 = [(CDService *)self requestQueue];
    dispatch_resume(v4);
  }
}

@end