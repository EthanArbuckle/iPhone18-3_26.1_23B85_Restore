@interface GEOAPDaemonManagerBridge
- (BOOL)_hasEvalEntitlement;
- (BOOL)_hasTelemetryEntitlement;
- (void)dealloc;
- (void)flushEvalData;
- (void)flushUploadHistoryWithCompletion:(id)a3;
- (void)reportDailySettings:(id)a3 completion:(id)a4;
- (void)reportLogMsg:(id)a3 uploadBatchId:(unint64_t)a4 completion:(id)a5;
- (void)runAggregationTasks;
- (void)showEvalData;
- (void)showInflight;
- (void)showUploadCounts:(id)a3;
- (void)streamEvalData;
@end

@implementation GEOAPDaemonManagerBridge

- (void)showUploadCounts:(id)a3
{
  v3 = a3;
  v4 = +[GEOAPServiceManager sharedManager];
  [v4 showUploadCounts:v3];
}

- (void)flushUploadHistoryWithCompletion:(id)a3
{
  v3 = a3;
  v4 = +[GEOAPServiceManager sharedManager];
  [v4 flushUploadHistoryWithCompletion:v3];
}

- (void)showInflight
{
  if ([(GEOAPDaemonManagerBridge *)self _hasEvalEntitlement])
  {
    v3 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___GEOAPXPCMapsDebugPanelExporting];
    [(NSXPCConnection *)self->_conn setRemoteObjectInterface:v3];

    v4 = [(NSXPCConnection *)self->_conn remoteObjectProxy];
    v5 = +[GEOAPServiceManager sharedManager];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10000CE14;
    v9[3] = &unk_10003C9D8;
    v10 = v4;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10000CE58;
    v7[3] = &unk_10003D5B8;
    v8 = v10;
    v6 = v10;
    [v5 showInflightUploadsWithVisitorBlock:v9 completion:v7];
  }

  else
  {
    v6 = sub_100000F70();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "eval entitlement is required for this operation", buf, 2u);
    }
  }
}

- (void)flushEvalData
{
  v3 = sub_100000F70();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315138;
    v6 = "[GEOAPDaemonManagerBridge flushEvalData]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s", &v5, 0xCu);
  }

  if ([(GEOAPDaemonManagerBridge *)self _hasEvalEntitlement])
  {
    v4 = +[GEOAPServiceManager sharedManager];
    [v4 flushEvalData];
  }

  else
  {
    v4 = sub_100000F70();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v5) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "eval entitlement is required for this operation", &v5, 2u);
    }
  }
}

- (void)streamEvalData
{
  if ([(GEOAPDaemonManagerBridge *)self _hasEvalEntitlement])
  {
    v3 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___GEOAPXPCClientExporting];
    [(NSXPCConnection *)self->_conn setRemoteObjectInterface:v3];

    v4 = [(NSXPCConnection *)self->_conn remoteObjectProxy];
    objc_initWeak(&location, self);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10000D1EC;
    v14[3] = &unk_10003D440;
    v5 = v4;
    v15 = v5;
    objc_copyWeak(&v16, &location);
    [(NSXPCConnection *)self->_conn setInterruptionHandler:v14];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10000D274;
    v11[3] = &unk_10003D440;
    v6 = v5;
    v12 = v6;
    objc_copyWeak(&v13, &location);
    [(NSXPCConnection *)self->_conn setInvalidationHandler:v11];
    v7 = sub_100001018();
    v8 = v6;
    v9 = v8;
    if (v7)
    {
      v10 = v7[9];
      *buf = _NSConcreteStackBlock;
      v19 = 3221225472;
      v20 = sub_10001A21C;
      v21 = &unk_10003D5E0;
      v22 = v8;
      v23 = v7;
      geo_isolate_sync();
    }

    objc_destroyWeak(&v13);
    objc_destroyWeak(&v16);

    objc_destroyWeak(&location);
  }

  else
  {
    v9 = sub_100000F70();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "eval entitlement is required for this operation", buf, 2u);
    }
  }
}

- (void)showEvalData
{
  if ([(GEOAPDaemonManagerBridge *)self _hasEvalEntitlement])
  {
    v3 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___GEOAPXPCClientExporting];
    [(NSXPCConnection *)self->_conn setRemoteObjectInterface:v3];

    v4 = [(NSXPCConnection *)self->_conn remoteObjectProxy];
    v5 = dispatch_get_global_queue(17, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000D41C;
    block[3] = &unk_10003D5B8;
    v8 = v4;
    v6 = v4;
    dispatch_async(v5, block);
  }

  else
  {
    v6 = sub_100000F70();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "eval entitlement is required for this operation", buf, 2u);
    }
  }
}

- (void)runAggregationTasks
{
  v3 = sub_100000F70();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315138;
    v6 = "[GEOAPDaemonManagerBridge runAggregationTasks]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s", &v5, 0xCu);
  }

  if ([(GEOAPDaemonManagerBridge *)self _hasEvalEntitlement])
  {
    v4 = +[GEOAPServiceManager sharedManager];
    [v4 runAggregationTasks];
  }

  else
  {
    v4 = sub_100000F70();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v5) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "eval entitlement is required for this operation", &v5, 2u);
    }
  }
}

- (BOOL)_hasEvalEntitlement
{
  v2 = [(NSXPCConnection *)self->_conn valueForEntitlement:GEOAPEvalEntitlement];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = [v2 BOOLValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)reportLogMsg:(id)a3 uploadBatchId:(unint64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = sub_100000F70();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v16 = "[GEOAPDaemonManagerBridge reportLogMsg:uploadBatchId:completion:]";
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%s", buf, 0xCu);
  }

  if (GEOBatchIDIsTelemetryData() && ![(GEOAPDaemonManagerBridge *)self _hasTelemetryEntitlement])
  {
    v12 = dispatch_get_global_queue(21, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000DAC0;
    block[3] = &unk_10003C988;
    v14 = v9;
    dispatch_async(v12, block);

    v11 = v14;
  }

  else
  {
    v11 = +[GEOAPServiceManager sharedManager];
    [v11 reportLogMsg:v8 uploadBatchId:a4 completion:v9];
  }
}

- (BOOL)_hasTelemetryEntitlement
{
  v2 = [(NSXPCConnection *)self->_conn valueForEntitlement:GEOAPTelemetryEntitlement];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = [v2 BOOLValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)reportDailySettings:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = sub_100000F70();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 136315138;
    v10 = "[GEOAPDaemonManagerBridge reportDailySettings:completion:]";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%s", &v9, 0xCu);
  }

  v8 = +[GEOAPServiceManager sharedManager];
  [v8 reportDailySettings:v6 completion:v5];
}

- (void)dealloc
{
  v3 = sub_100000F70();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    v6 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "goodbye connection %p", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = GEOAPDaemonManagerBridge;
  [(GEOAPDaemonManagerBridge *)&v4 dealloc];
}

@end