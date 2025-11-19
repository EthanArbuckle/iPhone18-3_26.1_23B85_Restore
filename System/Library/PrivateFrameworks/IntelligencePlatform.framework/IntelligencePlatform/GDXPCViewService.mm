@interface GDXPCViewService
- (BOOL)reportSQLiteErrorForViewName:(id)a3 sqliteErrorCode:(int64_t)a4 useCase:(id)a5 error:(id *)a6;
- (BOOL)reportUnknownErrorForViewName:(id)a3 useCase:(id)a4 error:(id *)a5;
- (GDXPCViewService)init;
- (id)accessInfoForViewName:(id)a3 useCase:(id)a4 error:(id *)a5;
- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)a3;
- (void)dealloc;
- (void)locked_establishConnection;
@end

@implementation GDXPCViewService

- (GDXPCViewService)init
{
  v6.receiver = self;
  v6.super_class = GDXPCViewService;
  v2 = [(GDXPCViewService *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F20E6690];
    serverInterface = v2->_serverInterface;
    v2->_serverInterface = v3;
  }

  return v2;
}

- (BOOL)reportSQLiteErrorForViewName:(id)a3 sqliteErrorCode:(int64_t)a4 useCase:(id)a5 error:(id *)a6
{
  v33 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a5;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_1ABF20110;
  v23 = sub_1ABF20120;
  v24 = 0;
  v12 = GDXPCLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v30 = v10;
    v31 = 2048;
    v32 = a4;
    _os_log_impl(&dword_1ABA78000, v12, OS_LOG_TYPE_DEFAULT, "GDXPCViewService: reportSQLiteErrorForViewName called (viewName=%@) (code=%lld).", buf, 0x16u);
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = sub_1ABF20128;
  v18[3] = &unk_1E79628C8;
  v18[4] = &v19;
  v13 = [(GDXPCViewService *)self synchronousRemoteObjectProxyWithErrorHandler:v18];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_1ABF201F4;
  v17[3] = &unk_1E79628A0;
  v17[4] = &v25;
  v17[5] = &v19;
  [v13 reportSQLiteErrorForViewName:v10 sqliteErrorCode:a4 useCase:v11 completion:v17];

  v14 = *(v26 + 24);
  if (a6 && (v26[3] & 1) == 0)
  {
    *a6 = v20[5];
    v14 = *(v26 + 24);
  }

  _Block_object_dispose(&v19, 8);

  _Block_object_dispose(&v25, 8);
  v15 = *MEMORY[0x1E69E9840];
  return v14 & 1;
}

- (BOOL)reportUnknownErrorForViewName:(id)a3 useCase:(id)a4 error:(id *)a5
{
  v29 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_1ABF20110;
  v21 = sub_1ABF20120;
  v22 = 0;
  v10 = GDXPCLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v28 = v8;
    _os_log_impl(&dword_1ABA78000, v10, OS_LOG_TYPE_DEFAULT, "GDXPCViewService: reportUnknownErrorForViewName called (viewName=%@).", buf, 0xCu);
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1ABF20474;
  v16[3] = &unk_1E79628C8;
  v16[4] = &v17;
  v11 = [(GDXPCViewService *)self synchronousRemoteObjectProxyWithErrorHandler:v16];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_1ABF20540;
  v15[3] = &unk_1E79628A0;
  v15[4] = &v23;
  v15[5] = &v17;
  [v11 reportUnknownErrorForViewName:v8 useCase:v9 completion:v15];

  v12 = *(v24 + 24);
  if (a5 && (v24[3] & 1) == 0)
  {
    *a5 = v18[5];
    v12 = *(v24 + 24);
  }

  _Block_object_dispose(&v17, 8);

  _Block_object_dispose(&v23, 8);
  v13 = *MEMORY[0x1E69E9840];
  return v12 & 1;
}

- (id)accessInfoForViewName:(id)a3 useCase:(id)a4 error:(id *)a5
{
  v34 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_1ABF20110;
  v28 = sub_1ABF20120;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_1ABF20110;
  v22 = sub_1ABF20120;
  v23 = 0;
  v10 = GDXPCLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v31 = v8;
    v32 = 2112;
    v33 = v9;
    _os_log_impl(&dword_1ABA78000, v10, OS_LOG_TYPE_DEFAULT, "GDXPCViewService: accessInfoForViewName called (viewName=%@) useCase: %@", buf, 0x16u);
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_1ABF20BBC;
  v17[3] = &unk_1E79628C8;
  v17[4] = &v18;
  v11 = [(GDXPCViewService *)self synchronousRemoteObjectProxyWithErrorHandler:v17];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1ABF20C88;
  v16[3] = &unk_1E7962918;
  v16[4] = &v24;
  v16[5] = &v18;
  [v11 accessInfoForViewName:v8 useCase:v9 completion:v16];

  v12 = v25[5];
  if (a5 && !v12)
  {
    *a5 = v19[5];
    v12 = v25[5];
  }

  v13 = v12;
  _Block_object_dispose(&v18, 8);

  _Block_object_dispose(&v24, 8);
  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  [(GDXPCViewService *)v5 locked_establishConnection];
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
      _os_log_impl(&dword_1ABA78000, v3, OS_LOG_TYPE_DEFAULT, "GDXPCViewService: establishing connection.", buf, 2u);
    }

    v4 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.intelligenceplatform.View" options:0];
    connection = self->_connection;
    self->_connection = v4;

    [(NSXPCConnection *)self->_connection setRemoteObjectInterface:self->_serverInterface];
    [(NSXPCConnection *)self->_connection setInterruptionHandler:&unk_1F20A1D78];
    objc_initWeak(buf, self);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_1ABF21648;
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
  v3.super_class = GDXPCViewService;
  [(GDXPCViewService *)&v3 dealloc];
}

@end