@interface GDXPCSysdiagnoseService
- (GDXPCSysdiagnoseService)init;
- (id)diagnosticsWithError:(id *)error;
- (id)entityRelevanceRankingSupplementalDiagnosticsWithError:(id *)error;
- (id)entityResolutionSupplementalDiagnosticsWithError:(id *)error;
- (id)entityTaggingSupplementalDiagnosticsWithError:(id *)error;
- (id)eventViewDiagnosticsWithError:(id *)error;
- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)handler;
- (id)viewsSupplementalDiagnosticsWithError:(id *)error;
- (void)dealloc;
- (void)locked_establishConnection;
@end

@implementation GDXPCSysdiagnoseService

- (id)eventViewDiagnosticsWithError:(id *)error
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_1ABF1E6B4;
  v23 = sub_1ABF1E6C4;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_1ABF1E6B4;
  v17 = sub_1ABF1E6C4;
  v18 = 0;
  v5 = GDXPCLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1ABA78000, v5, OS_LOG_TYPE_DEFAULT, "GDXPCSysdiagnoseService: Event diagnostics data collection called.", buf, 2u);
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1ABF1E6CC;
  v11[3] = &unk_1E7962878;
  v11[4] = &v13;
  v11[5] = &v19;
  v6 = [(GDXPCSysdiagnoseService *)self synchronousRemoteObjectProxyWithErrorHandler:v11];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1ABF1E7B8;
  v10[3] = &unk_1E79627E8;
  v10[4] = &v19;
  v10[5] = &v13;
  [v6 eventViewDiagnosticsWithCompletion:v10];

  v7 = v20[5];
  if (error && !v7)
  {
    *error = v14[5];
    v7 = v20[5];
  }

  v8 = v7;
  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(&v19, 8);

  return v8;
}

- (id)viewsSupplementalDiagnosticsWithError:(id *)error
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_1ABF1E6B4;
  v23 = sub_1ABF1E6C4;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_1ABF1E6B4;
  v17 = sub_1ABF1E6C4;
  v18 = 0;
  v5 = GDXPCLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1ABA78000, v5, OS_LOG_TYPE_DEFAULT, "GDXPCSysdiagnoseService: Views supplemental diagnostics called.", buf, 2u);
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1ABF1EA78;
  v11[3] = &unk_1E7962878;
  v11[4] = &v13;
  v11[5] = &v19;
  v6 = [(GDXPCSysdiagnoseService *)self synchronousRemoteObjectProxyWithErrorHandler:v11];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1ABF1EB64;
  v10[3] = &unk_1E79627E8;
  v10[4] = &v19;
  v10[5] = &v13;
  [v6 viewsSupplementalDiagnosticsWithCompletion:v10];

  v7 = v20[5];
  if (error && !v7)
  {
    *error = v14[5];
    v7 = v20[5];
  }

  v8 = v7;
  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(&v19, 8);

  return v8;
}

- (id)entityResolutionSupplementalDiagnosticsWithError:(id *)error
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_1ABF1E6B4;
  v23 = sub_1ABF1E6C4;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_1ABF1E6B4;
  v17 = sub_1ABF1E6C4;
  v18 = 0;
  v5 = GDXPCLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1ABA78000, v5, OS_LOG_TYPE_DEFAULT, "GDXPCSysdiagnoseService: EntityResolution supplemental diagnostics called.", buf, 2u);
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1ABF1EE24;
  v11[3] = &unk_1E7962878;
  v11[4] = &v13;
  v11[5] = &v19;
  v6 = [(GDXPCSysdiagnoseService *)self synchronousRemoteObjectProxyWithErrorHandler:v11];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1ABF1EF10;
  v10[3] = &unk_1E79627E8;
  v10[4] = &v19;
  v10[5] = &v13;
  [v6 entityResolutionSupplementalDiagnosticsWithCompletion:v10];

  v7 = v20[5];
  if (error && !v7)
  {
    *error = v14[5];
    v7 = v20[5];
  }

  v8 = v7;
  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(&v19, 8);

  return v8;
}

- (id)entityRelevanceRankingSupplementalDiagnosticsWithError:(id *)error
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_1ABF1E6B4;
  v23 = sub_1ABF1E6C4;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_1ABF1E6B4;
  v17 = sub_1ABF1E6C4;
  v18 = 0;
  v5 = GDXPCLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1ABA78000, v5, OS_LOG_TYPE_DEFAULT, "GDXPCSysdiagnoseService: EntityRelevanceRanking supplemental diagnostics called.", buf, 2u);
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1ABF1F1D0;
  v11[3] = &unk_1E7962878;
  v11[4] = &v13;
  v11[5] = &v19;
  v6 = [(GDXPCSysdiagnoseService *)self synchronousRemoteObjectProxyWithErrorHandler:v11];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1ABF1F2BC;
  v10[3] = &unk_1E79627E8;
  v10[4] = &v19;
  v10[5] = &v13;
  [v6 entityRelevanceRankingSupplementalDiagnosticsWithCompletion:v10];

  v7 = v20[5];
  if (error && !v7)
  {
    *error = v14[5];
    v7 = v20[5];
  }

  v8 = v7;
  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(&v19, 8);

  return v8;
}

- (id)entityTaggingSupplementalDiagnosticsWithError:(id *)error
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_1ABF1E6B4;
  v23 = sub_1ABF1E6C4;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_1ABF1E6B4;
  v17 = sub_1ABF1E6C4;
  v18 = 0;
  v5 = GDXPCLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1ABA78000, v5, OS_LOG_TYPE_DEFAULT, "GDXPCSysdiagnoseService: EntityTagging supplemental diagnostics called.", buf, 2u);
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1ABF1F57C;
  v11[3] = &unk_1E7962878;
  v11[4] = &v13;
  v11[5] = &v19;
  v6 = [(GDXPCSysdiagnoseService *)self synchronousRemoteObjectProxyWithErrorHandler:v11];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1ABF1F668;
  v10[3] = &unk_1E79627E8;
  v10[4] = &v19;
  v10[5] = &v13;
  [v6 entityTaggingSupplementalDiagnosticsWithCompletion:v10];

  v7 = v20[5];
  if (error && !v7)
  {
    *error = v14[5];
    v7 = v20[5];
  }

  v8 = v7;
  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(&v19, 8);

  return v8;
}

- (id)diagnosticsWithError:(id *)error
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_1ABF1E6B4;
  v23 = sub_1ABF1E6C4;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_1ABF1E6B4;
  v17 = sub_1ABF1E6C4;
  v18 = 0;
  v5 = GDXPCLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1ABA78000, v5, OS_LOG_TYPE_DEFAULT, "GDXPCSysdiagnoseService: diagnostics called.", buf, 2u);
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1ABF1F928;
  v11[3] = &unk_1E7962878;
  v11[4] = &v13;
  v11[5] = &v19;
  v6 = [(GDXPCSysdiagnoseService *)self synchronousRemoteObjectProxyWithErrorHandler:v11];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1ABF1FA14;
  v10[3] = &unk_1E79627E8;
  v10[4] = &v19;
  v10[5] = &v13;
  [v6 diagnosticsWithCompletion:v10];

  v7 = v20[5];
  if (error && !v7)
  {
    *error = v14[5];
    v7 = v20[5];
  }

  v8 = v7;
  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(&v19, 8);

  return v8;
}

- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(GDXPCSysdiagnoseService *)selfCopy locked_establishConnection];
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
      _os_log_impl(&dword_1ABA78000, v3, OS_LOG_TYPE_DEFAULT, "GDXPCSysdiagnoseService: establishing connection.", buf, 2u);
    }

    v4 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.intelligenceplatform.Sysdiagnose" options:0];
    connection = self->_connection;
    self->_connection = v4;

    [(NSXPCConnection *)self->_connection setRemoteObjectInterface:self->_serverInterface];
    [(NSXPCConnection *)self->_connection setInterruptionHandler:&unk_1F20A1D58];
    objc_initWeak(buf, self);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_1ABF1FC80;
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
  v3.super_class = GDXPCSysdiagnoseService;
  [(GDXPCSysdiagnoseService *)&v3 dealloc];
}

- (GDXPCSysdiagnoseService)init
{
  v6.receiver = self;
  v6.super_class = GDXPCSysdiagnoseService;
  v2 = [(GDXPCSysdiagnoseService *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F20E6630];
    serverInterface = v2->_serverInterface;
    v2->_serverInterface = v3;
  }

  return v2;
}

@end