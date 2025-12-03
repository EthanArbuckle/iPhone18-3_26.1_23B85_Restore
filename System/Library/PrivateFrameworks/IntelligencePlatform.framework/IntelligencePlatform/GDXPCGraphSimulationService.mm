@interface GDXPCGraphSimulationService
- (BOOL)mockTripleEntityTaggingWithContactId:(id)id inferredRelationshipLabel:(id)label error:(id *)error;
- (GDXPCGraphSimulationService)init;
- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)handler;
- (void)dealloc;
- (void)locked_establishConnection;
@end

@implementation GDXPCGraphSimulationService

- (BOOL)mockTripleEntityTaggingWithContactId:(id)id inferredRelationshipLabel:(id)label error:(id *)error
{
  idCopy = id;
  labelCopy = label;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_1ABF118DC;
  v25 = sub_1ABF118EC;
  v26 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v10 = GDXPCLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1ABA78000, v10, OS_LOG_TYPE_DEFAULT, "GDXPCGraphSimulationService: mock triples for entity tagging called.", buf, 2u);
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_1ABF118F4;
  v15[3] = &unk_1E7962878;
  v15[4] = &v21;
  v15[5] = &v17;
  v11 = [(GDXPCGraphSimulationService *)self synchronousRemoteObjectProxyWithErrorHandler:v15];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_1ABF119D8;
  v14[3] = &unk_1E79628A0;
  v14[4] = &v17;
  v14[5] = &v21;
  [v11 mockTripleEntityTaggingWithContactId:idCopy inferredRelationshipLabel:labelCopy completion:v14];

  v12 = *(v18 + 24);
  if (error && (v18[3] & 1) == 0)
  {
    *error = v22[5];
    v12 = *(v18 + 24);
  }

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);

  return v12 & 1;
}

- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(GDXPCGraphSimulationService *)selfCopy locked_establishConnection];
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
      _os_log_impl(&dword_1ABA78000, v3, OS_LOG_TYPE_DEFAULT, "GDXPCGraphSimulationService: establishing connection.", buf, 2u);
    }

    v4 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.intelligenceplatform.KGSimulation" options:0];
    connection = self->_connection;
    self->_connection = v4;

    [(NSXPCConnection *)self->_connection setRemoteObjectInterface:self->_serverInterface];
    [(NSXPCConnection *)self->_connection setInterruptionHandler:&unk_1F20A1C58];
    objc_initWeak(buf, self);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_1ABF11BDC;
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
  v3.super_class = GDXPCGraphSimulationService;
  [(GDXPCGraphSimulationService *)&v3 dealloc];
}

- (GDXPCGraphSimulationService)init
{
  v6.receiver = self;
  v6.super_class = GDXPCGraphSimulationService;
  v2 = [(GDXPCGraphSimulationService *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F20E6390];
    serverInterface = v2->_serverInterface;
    v2->_serverInterface = v3;
  }

  return v2;
}

@end