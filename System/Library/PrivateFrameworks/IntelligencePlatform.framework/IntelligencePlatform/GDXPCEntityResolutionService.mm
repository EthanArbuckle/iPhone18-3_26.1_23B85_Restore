@interface GDXPCEntityResolutionService
- (BOOL)warmupForMode:(int64_t)mode error:(id *)error;
- (GDXPCEntityResolutionService)init;
- (id)generateMentionsForQuery:(id)query error:(id *)error;
- (id)requestAssetDownloadForAssetType:(id)type localeIdentifier:(id)identifier error:(id *)error;
- (id)submitCollectionQuery:(id)query withError:(id *)error;
- (id)submitQuery:(id)query withError:(id *)error;
- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)handler;
- (void)dealloc;
- (void)locked_establishConnection;
@end

@implementation GDXPCEntityResolutionService

- (id)requestAssetDownloadForAssetType:(id)type localeIdentifier:(id)identifier error:(id *)error
{
  typeCopy = type;
  identifierCopy = identifier;
  if (_os_feature_enabled_impl())
  {
    *v24 = 0;
    v25 = v24;
    v26 = 0x3032000000;
    v27 = sub_1ABF0EDC4;
    v28 = sub_1ABF0EDD4;
    v29 = 0;
    v10 = GDXPCLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1ABA78000, v10, OS_LOG_TYPE_DEFAULT, "GDXPCEntityResolutionService: requestAssetDownloadForAssetType called.", buf, 2u);
    }

    *buf = 0;
    v19 = buf;
    v20 = 0x3032000000;
    v21 = sub_1ABF0EDC4;
    v22 = sub_1ABF0EDD4;
    v23 = 0;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = sub_1ABF0EDDC;
    v17[3] = &unk_1E79628C8;
    v17[4] = buf;
    v11 = [(GDXPCEntityResolutionService *)self synchronousRemoteObjectProxyWithErrorHandler:v17];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = sub_1ABF0EEA8;
    v16[3] = &unk_1E79624B0;
    v16[4] = v24;
    v16[5] = buf;
    [v11 requestAssetDownloadForAssetType:typeCopy localeIdentifier:identifierCopy withCompletion:v16];

    v12 = *(v25 + 5);
    if (error && !v12)
    {
      *error = *(v19 + 5);
      v12 = *(v25 + 5);
    }

    v13 = v12;
    _Block_object_dispose(buf, 8);

    _Block_object_dispose(v24, 8);
  }

  else
  {
    v14 = GDXPCLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *v24 = 0;
      _os_log_impl(&dword_1ABA78000, v14, OS_LOG_TYPE_DEFAULT, "IntelligencePlatform|NERD is not enabled.", v24, 2u);
    }

    v13 = 0;
  }

  return v13;
}

- (id)generateMentionsForQuery:(id)query error:(id *)error
{
  queryCopy = query;
  if (_os_feature_enabled_impl())
  {
    *v21 = 0;
    v22 = v21;
    v23 = 0x3032000000;
    v24 = sub_1ABF0EDC4;
    v25 = sub_1ABF0EDD4;
    v26 = 0;
    v7 = GDXPCLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1ABA78000, v7, OS_LOG_TYPE_DEFAULT, "GDXPCEntityResolutionService: generateMentionsForQuery called.", buf, 2u);
    }

    *buf = 0;
    v16 = buf;
    v17 = 0x3032000000;
    v18 = sub_1ABF0EDC4;
    v19 = sub_1ABF0EDD4;
    v20 = 0;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = sub_1ABF0F1D8;
    v14[3] = &unk_1E79628C8;
    v14[4] = buf;
    v8 = [(GDXPCEntityResolutionService *)self synchronousRemoteObjectProxyWithErrorHandler:v14];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_1ABF0F2A4;
    v13[3] = &unk_1E7962488;
    v13[4] = v21;
    v13[5] = buf;
    [v8 generateMentionsForQuery:queryCopy withCompletion:v13];

    v9 = *(v22 + 5);
    if (error && !v9)
    {
      *error = *(v16 + 5);
      v9 = *(v22 + 5);
    }

    v10 = v9;
    _Block_object_dispose(buf, 8);

    _Block_object_dispose(v21, 8);
  }

  else
  {
    v11 = GDXPCLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v21 = 0;
      _os_log_impl(&dword_1ABA78000, v11, OS_LOG_TYPE_DEFAULT, "IntelligencePlatform|NERD is not enabled.", v21, 2u);
    }

    v10 = 0;
  }

  return v10;
}

- (id)submitCollectionQuery:(id)query withError:(id *)error
{
  queryCopy = query;
  if (_os_feature_enabled_impl())
  {
    *v21 = 0;
    v22 = v21;
    v23 = 0x3032000000;
    v24 = sub_1ABF0EDC4;
    v25 = sub_1ABF0EDD4;
    v26 = 0;
    v7 = GDXPCLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1ABA78000, v7, OS_LOG_TYPE_DEFAULT, "GDXPCEntityResolutionService: submitCollectionQuery called.", buf, 2u);
    }

    *buf = 0;
    v16 = buf;
    v17 = 0x3032000000;
    v18 = sub_1ABF0EDC4;
    v19 = sub_1ABF0EDD4;
    v20 = 0;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = sub_1ABF0F5D4;
    v14[3] = &unk_1E79628C8;
    v14[4] = buf;
    v8 = [(GDXPCEntityResolutionService *)self synchronousRemoteObjectProxyWithErrorHandler:v14];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_1ABF0F6A0;
    v13[3] = &unk_1E7962460;
    v13[4] = v21;
    v13[5] = buf;
    [v8 submitCollectionQuery:queryCopy withCompletion:v13];

    v9 = *(v22 + 5);
    if (error && !v9)
    {
      *error = *(v16 + 5);
      v9 = *(v22 + 5);
    }

    v10 = v9;
    _Block_object_dispose(buf, 8);

    _Block_object_dispose(v21, 8);
  }

  else
  {
    v11 = GDXPCLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v21 = 0;
      _os_log_impl(&dword_1ABA78000, v11, OS_LOG_TYPE_DEFAULT, "IntelligencePlatform|NERD is not enabled.", v21, 2u);
    }

    v10 = 0;
  }

  return v10;
}

- (id)submitQuery:(id)query withError:(id *)error
{
  queryCopy = query;
  if (_os_feature_enabled_impl())
  {
    *v21 = 0;
    v22 = v21;
    v23 = 0x3032000000;
    v24 = sub_1ABF0EDC4;
    v25 = sub_1ABF0EDD4;
    v26 = 0;
    v7 = GDXPCLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1ABA78000, v7, OS_LOG_TYPE_DEFAULT, "GDXPCEntityResolutionService: submitQuery called.", buf, 2u);
    }

    *buf = 0;
    v16 = buf;
    v17 = 0x3032000000;
    v18 = sub_1ABF0EDC4;
    v19 = sub_1ABF0EDD4;
    v20 = 0;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = sub_1ABF0F9D0;
    v14[3] = &unk_1E79628C8;
    v14[4] = buf;
    v8 = [(GDXPCEntityResolutionService *)self synchronousRemoteObjectProxyWithErrorHandler:v14];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_1ABF0FA9C;
    v13[3] = &unk_1E79625A0;
    v13[4] = v21;
    v13[5] = buf;
    [v8 submitQuery:queryCopy withCompletion:v13];

    v9 = *(v22 + 5);
    if (error && !v9)
    {
      *error = *(v16 + 5);
      v9 = *(v22 + 5);
    }

    v10 = v9;
    _Block_object_dispose(buf, 8);

    _Block_object_dispose(v21, 8);
  }

  else
  {
    v11 = GDXPCLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v21 = 0;
      _os_log_impl(&dword_1ABA78000, v11, OS_LOG_TYPE_DEFAULT, "IntelligencePlatform|NERD is not enabled.", v21, 2u);
    }

    v10 = 0;
  }

  return v10;
}

- (BOOL)warmupForMode:(int64_t)mode error:(id *)error
{
  if (_os_feature_enabled_impl())
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v23 = 0;
    v7 = GDXPCLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1ABA78000, v7, OS_LOG_TYPE_DEFAULT, "GDXPCEntityResolutionService: warmup called.", buf, 2u);
    }

    *buf = 0;
    v15 = buf;
    v16 = 0x3032000000;
    v17 = sub_1ABF0EDC4;
    v18 = sub_1ABF0EDD4;
    v19 = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_1ABF0FD80;
    v13[3] = &unk_1E79628C8;
    v13[4] = buf;
    v8 = [(GDXPCEntityResolutionService *)self synchronousRemoteObjectProxyWithErrorHandler:v13];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1ABF0FE4C;
    v12[3] = &unk_1E79628A0;
    v12[4] = &v20;
    v12[5] = buf;
    [v8 warmupForMode:mode withCompletion:v12];

    v9 = *(v21 + 24);
    if (error && (v21[3] & 1) == 0)
    {
      *error = *(v15 + 5);
      v9 = *(v21 + 24);
    }

    _Block_object_dispose(buf, 8);

    _Block_object_dispose(&v20, 8);
  }

  else
  {
    v10 = GDXPCLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1ABA78000, v10, OS_LOG_TYPE_DEFAULT, "IntelligencePlatform|NERD is not enabled.", buf, 2u);
    }

    v9 = 0;
  }

  return v9 & 1;
}

- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(GDXPCEntityResolutionService *)selfCopy locked_establishConnection];
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
      _os_log_impl(&dword_1ABA78000, v3, OS_LOG_TYPE_DEFAULT, "GDXPCEntityResolutionService: establishing connection.", buf, 2u);
    }

    v4 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.intelligenceplatform.EntityResolution" options:0];
    connection = self->_connection;
    self->_connection = v4;

    [(NSXPCConnection *)self->_connection setRemoteObjectInterface:self->_serverInterface];
    [(NSXPCConnection *)self->_connection setInterruptionHandler:&unk_1F20A1BF8];
    objc_initWeak(buf, self);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_1ABF10050;
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
  v3.super_class = GDXPCEntityResolutionService;
  [(GDXPCEntityResolutionService *)&v3 dealloc];
}

- (GDXPCEntityResolutionService)init
{
  v6.receiver = self;
  v6.super_class = GDXPCEntityResolutionService;
  v2 = [(GDXPCEntityResolutionService *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F20E6270];
    serverInterface = v2->_serverInterface;
    v2->_serverInterface = v3;
  }

  return v2;
}

@end