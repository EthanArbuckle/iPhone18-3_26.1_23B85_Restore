@interface GDXPCEventLogService
- (BOOL)logEndWithId:(int64_t)a3 timestamp:(id)a4 dependencies:(id)a5 payloadType:(id)a6 payloadVariant:(id)a7 payload:(id)a8 error:(id *)a9;
- (BOOL)logInstantWithId:(int64_t)a3 timestamp:(id)a4 name:(id)a5 parent:(int64_t)a6 dependencies:(id)a7 payloadType:(id)a8 payloadVariant:(id)a9 payload:(id)a10 error:(id *)a11;
- (BOOL)logStartWithId:(int64_t)a3 timestamp:(id)a4 name:(id)a5 parent:(int64_t)a6 error:(id *)a7;
- (GDXPCEventLogService)init;
- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)a3;
- (void)dealloc;
- (void)locked_establishConnection;
@end

@implementation GDXPCEventLogService

- (BOOL)logInstantWithId:(int64_t)a3 timestamp:(id)a4 name:(id)a5 parent:(int64_t)a6 dependencies:(id)a7 payloadType:(id)a8 payloadVariant:(id)a9 payload:(id)a10 error:(id *)a11
{
  v16 = a4;
  v17 = a5;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v21 = a10;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = sub_1ABF104B0;
  v35 = sub_1ABF104C0;
  v36 = 0;
  v22 = GDXPCLog();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1ABA78000, v22, OS_LOG_TYPE_DEFAULT, "GDXPCEventLogService: logInstantWithId called.", buf, 2u);
  }

  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = sub_1ABF104C8;
  v29[3] = &unk_1E79628C8;
  v29[4] = &v31;
  v23 = [(GDXPCEventLogService *)self synchronousRemoteObjectProxyWithErrorHandler:v29];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = sub_1ABF10594;
  v28[3] = &unk_1E79624F8;
  v28[4] = &v31;
  [v23 logInstantWithId:a3 timestamp:v16 name:v17 parent:a6 dependencies:v18 payloadType:v19 payloadVariant:v20 payload:v21 completion:v28];

  if (a11 && (v24 = v32[5]) != 0)
  {
    v25 = 0;
    *a11 = v24;
  }

  else
  {
    v25 = 1;
  }

  _Block_object_dispose(&v31, 8);

  return v25;
}

- (BOOL)logEndWithId:(int64_t)a3 timestamp:(id)a4 dependencies:(id)a5 payloadType:(id)a6 payloadVariant:(id)a7 payload:(id)a8 error:(id *)a9
{
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = sub_1ABF104B0;
  v32 = sub_1ABF104C0;
  v33 = 0;
  v20 = GDXPCLog();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1ABA78000, v20, OS_LOG_TYPE_DEFAULT, "GDXPCEventLogService: logEndWithId called.", buf, 2u);
  }

  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = sub_1ABF107E4;
  v26[3] = &unk_1E79628C8;
  v26[4] = &v28;
  v21 = [(GDXPCEventLogService *)self synchronousRemoteObjectProxyWithErrorHandler:v26];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = sub_1ABF108B0;
  v25[3] = &unk_1E79624F8;
  v25[4] = &v28;
  [v21 logEndWithId:a3 timestamp:v15 dependencies:v16 payloadType:v17 payloadVariant:v18 payload:v19 completion:v25];

  if (a9 && (v22 = v29[5]) != 0)
  {
    v23 = 0;
    *a9 = v22;
  }

  else
  {
    v23 = 1;
  }

  _Block_object_dispose(&v28, 8);

  return v23;
}

- (BOOL)logStartWithId:(int64_t)a3 timestamp:(id)a4 name:(id)a5 parent:(int64_t)a6 error:(id *)a7
{
  v12 = a4;
  v13 = a5;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_1ABF104B0;
  v26 = sub_1ABF104C0;
  v27 = 0;
  v14 = GDXPCLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1ABA78000, v14, OS_LOG_TYPE_DEFAULT, "GDXPCEventLogService: logStartWithId called.", buf, 2u);
  }

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = sub_1ABF10AC4;
  v20[3] = &unk_1E79628C8;
  v20[4] = &v22;
  v15 = [(GDXPCEventLogService *)self synchronousRemoteObjectProxyWithErrorHandler:v20];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = sub_1ABF10B90;
  v19[3] = &unk_1E79624F8;
  v19[4] = &v22;
  [v15 logStartWithId:a3 timestamp:v12 name:v13 parent:a6 completion:v19];

  if (a7 && (v16 = v23[5]) != 0)
  {
    v17 = 0;
    *a7 = v16;
  }

  else
  {
    v17 = 1;
  }

  _Block_object_dispose(&v22, 8);

  return v17;
}

- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  [(GDXPCEventLogService *)v5 locked_establishConnection];
  v6 = [(NSXPCConnection *)v5->_connection synchronousRemoteObjectProxyWithErrorHandler:v4];
  objc_sync_exit(v5);

  return v6;
}

- (void)locked_establishConnection
{
  if (!self->_connection)
  {
    v3 = GDXPCLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_1ABA78000, v3, OS_LOG_TYPE_DEFAULT, "GDXPCEventLogService: establishing connection.", buf, 2u);
    }

    v4 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.intelligenceplatform.EventLog" options:0];
    connection = self->_connection;
    self->_connection = v4;

    [(NSXPCConnection *)self->_connection setRemoteObjectInterface:self->_serverInterface];
    [(NSXPCConnection *)self->_connection setInterruptionHandler:&unk_1F20A1C18];
    objc_initWeak(buf, self);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_1ABF10D88;
    v6[3] = &unk_1E7962850;
    objc_copyWeak(&v7, buf);
    [(NSXPCConnection *)self->_connection setInvalidationHandler:v6];
    [(NSXPCConnection *)self->_connection resume];
    objc_destroyWeak(&v7);
    objc_destroyWeak(buf);
  }
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_connection invalidate];
  v3.receiver = self;
  v3.super_class = GDXPCEventLogService;
  [(GDXPCEventLogService *)&v3 dealloc];
}

- (GDXPCEventLogService)init
{
  v6.receiver = self;
  v6.super_class = GDXPCEventLogService;
  v2 = [(GDXPCEventLogService *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F20E62D0];
    serverInterface = v2->_serverInterface;
    v2->_serverInterface = v3;
  }

  return v2;
}

@end