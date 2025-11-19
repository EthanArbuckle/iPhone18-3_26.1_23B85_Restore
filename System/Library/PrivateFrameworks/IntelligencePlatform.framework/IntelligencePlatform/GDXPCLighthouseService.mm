@interface GDXPCLighthouseService
- (GDXPCLighthouseService)init;
- (id)collectDBStats:(id *)a3;
- (id)collectDBStatus:(id *)a3;
- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)a3;
- (void)dealloc;
- (void)locked_establishConnection;
@end

@implementation GDXPCLighthouseService

- (id)collectDBStatus:(id *)a3
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_1ABF1DBA0;
  v23 = sub_1ABF1DBB0;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_1ABF1DBA0;
  v17 = sub_1ABF1DBB0;
  v18 = 0;
  v5 = GDXPCLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1ABA78000, v5, OS_LOG_TYPE_DEFAULT, "GDXPCLighthouseService: collectDBStatus called.", buf, 2u);
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1ABF1DBB8;
  v11[3] = &unk_1E79628C8;
  v11[4] = &v13;
  v6 = [(GDXPCLighthouseService *)self synchronousRemoteObjectProxyWithErrorHandler:v11];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1ABF1DC84;
  v10[3] = &unk_1E79627B0;
  v10[4] = &v13;
  v10[5] = &v19;
  [v6 collectDBStatusWithCompletion:v10];

  v7 = v20[5];
  if (a3 && !v7)
  {
    *a3 = v14[5];
    v7 = v20[5];
  }

  v8 = v7;
  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(&v19, 8);

  return v8;
}

- (id)collectDBStats:(id *)a3
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_1ABF1DBA0;
  v23 = sub_1ABF1DBB0;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_1ABF1DBA0;
  v17 = sub_1ABF1DBB0;
  v18 = 0;
  v5 = GDXPCLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1ABA78000, v5, OS_LOG_TYPE_DEFAULT, "GDXPCLighthouseService: collectDBStats called.", buf, 2u);
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1ABF1DF3C;
  v11[3] = &unk_1E79628C8;
  v11[4] = &v13;
  v6 = [(GDXPCLighthouseService *)self synchronousRemoteObjectProxyWithErrorHandler:v11];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1ABF1E008;
  v10[3] = &unk_1E79627B0;
  v10[4] = &v13;
  v10[5] = &v19;
  [v6 collectDBStatsWithCompletion:v10];

  v7 = v20[5];
  if (a3 && !v7)
  {
    *a3 = v14[5];
    v7 = v20[5];
  }

  v8 = v7;
  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(&v19, 8);

  return v8;
}

- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  [(GDXPCLighthouseService *)v5 locked_establishConnection];
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
      _os_log_impl(&dword_1ABA78000, v3, OS_LOG_TYPE_DEFAULT, "GDXPCLighthouseService: establishing connection.", buf, 2u);
    }

    v4 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.intelligenceplatform.Lighthouse" options:0];
    connection = self->_connection;
    self->_connection = v4;

    [(NSXPCConnection *)self->_connection setRemoteObjectInterface:self->_serverInterface];
    [(NSXPCConnection *)self->_connection setInterruptionHandler:&unk_1F20A1D38];
    objc_initWeak(buf, self);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_1ABF1E26C;
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
  v3.super_class = GDXPCLighthouseService;
  [(GDXPCLighthouseService *)&v3 dealloc];
}

- (GDXPCLighthouseService)init
{
  v6.receiver = self;
  v6.super_class = GDXPCLighthouseService;
  v2 = [(GDXPCLighthouseService *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F20E65D0];
    serverInterface = v2->_serverInterface;
    v2->_serverInterface = v3;
  }

  return v2;
}

@end