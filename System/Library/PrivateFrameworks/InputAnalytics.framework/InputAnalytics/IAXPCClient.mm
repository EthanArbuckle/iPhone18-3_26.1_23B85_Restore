@interface IAXPCClient
- (IAXPCClient)initWithServiceName:(id)name;
- (IAXPCProtocolObject)server;
- (void)dealloc;
- (void)invalidateConnection;
- (void)logMessage:(id)message;
@end

@implementation IAXPCClient

- (IAXPCProtocolObject)server
{
  if (_os_feature_enabled_impl())
  {
    v4 = objc_msgSend_remoteObjectProxyWithErrorHandler_(self->_connection, v3, &unk_1F4FDA630);
  }

  else
  {
    v4 = self->_serverInstance;
  }

  return v4;
}

- (IAXPCClient)initWithServiceName:(id)name
{
  v61 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  if (!objc_msgSend_xpcEnabled(IAUtility, v5, v6) || (v54.receiver = self, v54.super_class = IAXPCClient, (self = [(IAXPCClient *)&v54 init]) == 0))
  {
    selfCopy2 = 0;
    goto LABEL_23;
  }

  v8 = objc_msgSend_interfaceWithProtocol_(MEMORY[0x1E696B0D0], v7, &unk_1F4FE9D88);
  v9 = objc_alloc(MEMORY[0x1E696B0B8]);
  v11 = objc_msgSend_initWithMachServiceName_options_(v9, v10, nameCopy, 0);
  connection = self->_connection;
  self->_connection = v11;

  objc_msgSend_setRemoteObjectInterface_(self->_connection, v13, v8);
  v50 = 0;
  v51 = &v50;
  v52 = 0x2020000000;
  selfCopy = self;
  v46 = 0;
  v47 = &v46;
  v48 = 0x2020000000;
  v49 = self->_connection;
  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  serverInstance = self->_serverInstance;
  v14 = sub_1D4610F0C();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = v51[3];
    *buf = 134217984;
    v56 = v15;
    _os_log_impl(&dword_1D460F000, v14, OS_LOG_TYPE_INFO, "Initialized 0x%lx", buf, 0xCu);
  }

  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = sub_1D4621C64;
  v41[3] = &unk_1E848A7F0;
  v41[4] = &v50;
  v41[5] = &v46;
  v41[6] = &v42;
  objc_msgSend_setInterruptionHandler_(self->_connection, v16, v41);
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = sub_1D4621CB0;
  v40[3] = &unk_1E848A7F0;
  v40[4] = &v50;
  v40[5] = &v46;
  v40[6] = &v42;
  objc_msgSend_setInvalidationHandler_(self->_connection, v17, v40);
  if (_os_feature_enabled_impl())
  {
    v18 = sub_1D4610F0C();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = v51[3];
      *buf = 134217984;
      v56 = v19;
      v20 = "0x%lx using per-call remote object proxy with IXAXPCProtocol. Calling connection resume now";
LABEL_18:
      _os_log_impl(&dword_1D460F000, v18, OS_LOG_TYPE_INFO, v20, buf, 0xCu);
    }
  }

  else
  {
    if (_os_feature_enabled_impl())
    {
      v22 = sub_1D4610F0C();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = v51[3];
        *buf = 134217984;
        v56 = v23;
        _os_log_impl(&dword_1D460F000, v22, OS_LOG_TYPE_INFO, "0x%lx calling connection resume before shared instance", buf, 0xCu);
      }

      objc_msgSend_resume(self->_connection, v24, v25);
    }

    v26 = sub_1D4610F0C();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = v51[3];
      *buf = 134217984;
      v56 = v27;
      _os_log_impl(&dword_1D460F000, v26, OS_LOG_TYPE_INFO, "0x%lx using shared remote object proxy", buf, 0xCu);
    }

    v29 = objc_msgSend_remoteObjectProxyWithErrorHandler_(self->_connection, v28, &unk_1F4FDA610);
    v30 = self->_serverInstance;
    self->_serverInstance = v29;

    if (_os_feature_enabled_impl())
    {
      goto LABEL_20;
    }

    v18 = sub_1D4610F0C();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v31 = v51[3];
      *buf = 134217984;
      v56 = v31;
      v20 = "0x%lx calling connection resume after shared instance";
      goto LABEL_18;
    }
  }

  objc_msgSend_resume(self->_connection, v32, v33);
LABEL_20:
  v34 = sub_1D4610F0C();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
  {
    v35 = v51[3];
    v36 = v47[3];
    v37 = v43[3];
    *buf = 134218496;
    v56 = v35;
    v57 = 2048;
    v58 = v36;
    v59 = 2048;
    v60 = v37;
    _os_log_impl(&dword_1D460F000, v34, OS_LOG_TYPE_INFO, "IAXPCclient 0x%lx init created _connection 0x%lx _server 0x%lx with IXAXPCProtocol", buf, 0x20u);
  }

  self = self;
  _Block_object_dispose(&v42, 8);
  _Block_object_dispose(&v46, 8);
  _Block_object_dispose(&v50, 8);

  selfCopy2 = self;
LABEL_23:

  v38 = *MEMORY[0x1E69E9840];
  return selfCopy2;
}

- (void)dealloc
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = sub_1D4610F0C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_1D460F000, v3, OS_LOG_TYPE_INFO, "dealloc 0x%lx", buf, 0xCu);
  }

  objc_msgSend_invalidateConnection(self, v4, v5);
  v7.receiver = self;
  v7.super_class = IAXPCClient;
  [(IAXPCClient *)&v7 dealloc];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)invalidateConnection
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = sub_1D4610F0C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = self;
    _os_log_impl(&dword_1D460F000, v3, OS_LOG_TYPE_INFO, "invalidateConnection called 0x%lx", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v12 = 0x2020000000;
  selfCopy = self;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1D4621FC8;
  v10[3] = &unk_1E848A838;
  v10[4] = &buf;
  objc_msgSend_setInvalidationHandler_(self->_connection, v4, v10);
  objc_msgSend_invalidate(self->_connection, v5, v6);
  serverInstance = self->_serverInstance;
  self->_serverInstance = 0;

  connection = self->_connection;
  self->_connection = 0;

  _Block_object_dispose(&buf, 8);
  v9 = *MEMORY[0x1E69E9840];
}

- (void)logMessage:(id)message
{
  messageCopy = message;
  v8 = objc_msgSend_server(self, v5, v6);
  objc_msgSend_logMessage_(v8, v7, messageCopy);
}

@end