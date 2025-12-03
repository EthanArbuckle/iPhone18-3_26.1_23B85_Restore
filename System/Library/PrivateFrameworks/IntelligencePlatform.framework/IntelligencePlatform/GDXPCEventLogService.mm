@interface GDXPCEventLogService
- (BOOL)logEndWithId:(int64_t)id timestamp:(id)timestamp dependencies:(id)dependencies payloadType:(id)type payloadVariant:(id)variant payload:(id)payload error:(id *)error;
- (BOOL)logInstantWithId:(int64_t)id timestamp:(id)timestamp name:(id)name parent:(int64_t)parent dependencies:(id)dependencies payloadType:(id)type payloadVariant:(id)variant payload:(id)self0 error:(id *)self1;
- (BOOL)logStartWithId:(int64_t)id timestamp:(id)timestamp name:(id)name parent:(int64_t)parent error:(id *)error;
- (GDXPCEventLogService)init;
- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)handler;
- (void)dealloc;
- (void)locked_establishConnection;
@end

@implementation GDXPCEventLogService

- (BOOL)logInstantWithId:(int64_t)id timestamp:(id)timestamp name:(id)name parent:(int64_t)parent dependencies:(id)dependencies payloadType:(id)type payloadVariant:(id)variant payload:(id)self0 error:(id *)self1
{
  timestampCopy = timestamp;
  nameCopy = name;
  dependenciesCopy = dependencies;
  typeCopy = type;
  variantCopy = variant;
  payloadCopy = payload;
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
  [v23 logInstantWithId:id timestamp:timestampCopy name:nameCopy parent:parent dependencies:dependenciesCopy payloadType:typeCopy payloadVariant:variantCopy payload:payloadCopy completion:v28];

  if (error && (v24 = v32[5]) != 0)
  {
    v25 = 0;
    *error = v24;
  }

  else
  {
    v25 = 1;
  }

  _Block_object_dispose(&v31, 8);

  return v25;
}

- (BOOL)logEndWithId:(int64_t)id timestamp:(id)timestamp dependencies:(id)dependencies payloadType:(id)type payloadVariant:(id)variant payload:(id)payload error:(id *)error
{
  timestampCopy = timestamp;
  dependenciesCopy = dependencies;
  typeCopy = type;
  variantCopy = variant;
  payloadCopy = payload;
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
  [v21 logEndWithId:id timestamp:timestampCopy dependencies:dependenciesCopy payloadType:typeCopy payloadVariant:variantCopy payload:payloadCopy completion:v25];

  if (error && (v22 = v29[5]) != 0)
  {
    v23 = 0;
    *error = v22;
  }

  else
  {
    v23 = 1;
  }

  _Block_object_dispose(&v28, 8);

  return v23;
}

- (BOOL)logStartWithId:(int64_t)id timestamp:(id)timestamp name:(id)name parent:(int64_t)parent error:(id *)error
{
  timestampCopy = timestamp;
  nameCopy = name;
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
  [v15 logStartWithId:id timestamp:timestampCopy name:nameCopy parent:parent completion:v19];

  if (error && (v16 = v23[5]) != 0)
  {
    v17 = 0;
    *error = v16;
  }

  else
  {
    v17 = 1;
  }

  _Block_object_dispose(&v22, 8);

  return v17;
}

- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(GDXPCEventLogService *)selfCopy locked_establishConnection];
  v6 = [(NSXPCConnection *)selfCopy->_connection synchronousRemoteObjectProxyWithErrorHandler:handlerCopy];
  objc_sync_exit(selfCopy);

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