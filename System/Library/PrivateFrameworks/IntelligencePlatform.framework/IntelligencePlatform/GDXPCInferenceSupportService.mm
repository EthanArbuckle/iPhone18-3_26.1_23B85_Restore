@interface GDXPCInferenceSupportService
- (GDXPCInferenceSupportService)init;
- (id)assetEntryResultDataForAssetId:(id)id inDomainId:(id)domainId remoteOptionsData:(id)data error:(id *)error;
- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)handler;
- (void)dealloc;
- (void)locked_establishConnection;
@end

@implementation GDXPCInferenceSupportService

- (id)assetEntryResultDataForAssetId:(id)id inDomainId:(id)domainId remoteOptionsData:(id)data error:(id *)error
{
  idCopy = id;
  domainIdCopy = domainId;
  dataCopy = data;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = sub_1ABF12064;
  v31 = sub_1ABF12074;
  v32 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_1ABF12064;
  v25 = sub_1ABF12074;
  v26 = 0;
  v13 = GDXPCLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1ABA78000, v13, OS_LOG_TYPE_DEFAULT, "GDXPCInferenceSupportService: assetEntryDataForAssetId called.", buf, 2u);
  }

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = sub_1ABF1207C;
  v19[3] = &unk_1E79628C8;
  v19[4] = &v21;
  v14 = [(GDXPCInferenceSupportService *)self synchronousRemoteObjectProxyWithErrorHandler:v19];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = sub_1ABF12148;
  v18[3] = &unk_1E7962668;
  v18[4] = &v27;
  v18[5] = &v21;
  [v14 assetEntryResultDataForAssetId:idCopy inDomainId:domainIdCopy remoteOptionsData:dataCopy completion:v18];

  v15 = v28[5];
  if (error && !v15)
  {
    *error = v22[5];
    v15 = v28[5];
  }

  v16 = v15;
  _Block_object_dispose(&v21, 8);

  _Block_object_dispose(&v27, 8);

  return v16;
}

- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(GDXPCInferenceSupportService *)selfCopy locked_establishConnection];
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
      _os_log_impl(&dword_1ABA78000, v3, OS_LOG_TYPE_DEFAULT, "GDXPCInferenceSupportService: establishing connection.", buf, 2u);
    }

    v4 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.intelligenceplatform.InferenceSupport" options:0];
    connection = self->_connection;
    self->_connection = v4;

    [(NSXPCConnection *)self->_connection setRemoteObjectInterface:self->_serverInterface];
    [(NSXPCConnection *)self->_connection setInterruptionHandler:&unk_1F20A1C78];
    objc_initWeak(buf, self);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_1ABF123B4;
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
  v3.super_class = GDXPCInferenceSupportService;
  [(GDXPCInferenceSupportService *)&v3 dealloc];
}

- (GDXPCInferenceSupportService)init
{
  v6.receiver = self;
  v6.super_class = GDXPCInferenceSupportService;
  v2 = [(GDXPCInferenceSupportService *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F20E63F0];
    serverInterface = v2->_serverInterface;
    v2->_serverInterface = v3;
  }

  return v2;
}

@end