@interface FSModuleConnector
- (void)activateVolume:(id)volume resource:(id)resource options:(id)options replyHandler:(id)handler;
- (void)checkIn:(id)in replyHandler:(id)handler;
- (void)checkWithOptions:(id)options connection:(id)connection taskID:(id)d replyHandler:(id)handler;
- (void)deactivateVolume:(id)volume numericOptions:(unint64_t)options replyHandler:(id)handler;
- (void)formatWithOptions:(id)options connection:(id)connection taskID:(id)d replyHandler:(id)handler;
- (void)getLegacyVolumeEndpoint:(id)endpoint replyHandler:(id)handler;
- (void)getModuleListenerEndpoint:(id)endpoint;
- (void)getVolumeEndpoint:(id)endpoint replyHandler:(id)handler;
- (void)loadResource:(id)resource options:(id)options replyHandler:(id)handler;
- (void)ping:(id)ping;
- (void)probeResource:(id)resource replyHandler:(id)handler;
- (void)sendCloseResource:(id)resource;
- (void)sendConfigureUserClient:(id)client replyHandler:(id)handler;
- (void)sendIsVolumeUsed:(id)used bundle:(id)bundle replyHandler:(id)handler;
- (void)sendRevokeResource:(id)resource;
- (void)sendTaskUpdate:(id)update;
- (void)sendWipeResource:(id)resource replyHandler:(id)handler;
- (void)unloadResource:(id)resource options:(id)options replyHandler:(id)handler;
@end

@implementation FSModuleConnector

- (void)sendTaskUpdate:(id)update
{
  ourConnection = self->_ourConnection;
  if (ourConnection)
  {
    updateCopy = update;
    remoteObjectProxy = [(NSXPCConnection *)ourConnection remoteObjectProxy];
    [remoteObjectProxy taskStatusUpdate:updateCopy];
  }
}

- (void)sendRevokeResource:(id)resource
{
  resourceCopy = resource;
  v5 = fskit_std_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [FSModuleConnector sendRevokeResource:resourceCopy];
  }

  ourConnection = self->_ourConnection;
  if (ourConnection)
  {
    v7 = [(NSXPCConnection *)ourConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_2];
    [v7 revokeResource:resourceCopy replyHandler:&__block_literal_global_237];
    v8 = fskit_std_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [FSModuleConnector sendRevokeResource:];
    }
  }

  else
  {
    v7 = fskit_std_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [FSModuleConnector sendRevokeResource:];
    }
  }
}

void __40__FSModuleConnector_sendRevokeResource___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = fskit_std_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __40__FSModuleConnector_sendRevokeResource___block_invoke_cold_1();
  }
}

void __40__FSModuleConnector_sendRevokeResource___block_invoke_235(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = fskit_std_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __40__FSModuleConnector_sendRevokeResource___block_invoke_235_cold_1();
    }
  }
}

- (void)sendCloseResource:(id)resource
{
  resourceCopy = resource;
  v5 = fskit_std_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [FSModuleConnector sendCloseResource:resourceCopy];
  }

  ourConnection = self->_ourConnection;
  if (ourConnection)
  {
    v7 = [(NSXPCConnection *)ourConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_239];
    [v7 closeResource:resourceCopy replyHandler:&__block_literal_global_242];
    v8 = fskit_std_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [FSModuleConnector sendCloseResource:];
    }
  }

  else
  {
    v7 = fskit_std_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [FSModuleConnector sendCloseResource:];
    }
  }
}

void __39__FSModuleConnector_sendCloseResource___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = fskit_std_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __39__FSModuleConnector_sendCloseResource___block_invoke_cold_1();
  }
}

void __39__FSModuleConnector_sendCloseResource___block_invoke_240(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = fskit_std_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __39__FSModuleConnector_sendCloseResource___block_invoke_240_cold_1();
    }
  }
}

- (void)sendIsVolumeUsed:(id)used bundle:(id)bundle replyHandler:(id)handler
{
  usedCopy = used;
  bundleCopy = bundle;
  handlerCopy = handler;
  v11 = fskit_std_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [FSModuleConnector sendIsVolumeUsed:bundle:replyHandler:];
  }

  v12 = self->_ourConnection;
  if (v12)
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __58__FSModuleConnector_sendIsVolumeUsed_bundle_replyHandler___block_invoke;
    v16[3] = &unk_278FECE20;
    v13 = handlerCopy;
    v17 = v13;
    v14 = [(NSXPCConnection *)v12 synchronousRemoteObjectProxyWithErrorHandler:v16];
    [v14 isVolumeIDUsed:usedCopy bundle:bundleCopy replyHandler:v13];
    v15 = fskit_std_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [FSModuleConnector sendIsVolumeUsed:bundle:replyHandler:];
    }
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0);
  }
}

void __58__FSModuleConnector_sendIsVolumeUsed_bundle_replyHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = fskit_std_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __58__FSModuleConnector_sendIsVolumeUsed_bundle_replyHandler___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)sendWipeResource:(id)resource replyHandler:(id)handler
{
  resourceCopy = resource;
  handlerCopy = handler;
  v8 = fskit_std_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [FSModuleConnector sendWipeResource:replyHandler:];
  }

  v9 = self->_ourConnection;
  v10 = self->_ourModule;
  if (v9)
  {
    if ([(FSModuleExtension *)self->_ourModule delegateConformantFS])
    {
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __51__FSModuleConnector_sendWipeResource_replyHandler___block_invoke;
      v17[3] = &unk_278FECE20;
      v11 = handlerCopy;
      v18 = v11;
      v12 = [(NSXPCConnection *)v9 remoteObjectProxyWithErrorHandler:v17];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __51__FSModuleConnector_sendWipeResource_replyHandler___block_invoke_243;
      v14[3] = &unk_278FECE90;
      v15 = v10;
      v16 = v11;
      [v12 wipeResource:resourceCopy replyHandler:v14];
      v13 = fskit_std_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [FSModuleConnector sendWipeResource:replyHandler:];
      }
    }

    else
    {
      v12 = fs_errorForPOSIXError(8);
      (*(handlerCopy + 2))(handlerCopy, v12);
    }
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

void __51__FSModuleConnector_sendWipeResource_replyHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = fskit_std_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __51__FSModuleConnector_sendWipeResource_replyHandler___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __51__FSModuleConnector_sendWipeResource_replyHandler___block_invoke_243(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = fskit_std_log();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __51__FSModuleConnector_sendWipeResource_replyHandler___block_invoke_243_cold_1(a1);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __51__FSModuleConnector_sendWipeResource_replyHandler___block_invoke_243_cold_2(a1);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)sendConfigureUserClient:(id)client replyHandler:(id)handler
{
  clientCopy = client;
  handlerCopy = handler;
  v8 = fskit_std_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [FSModuleConnector sendConfigureUserClient:replyHandler:];
  }

  v9 = self->_ourConnection;
  if (v9)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __58__FSModuleConnector_sendConfigureUserClient_replyHandler___block_invoke;
    v13[3] = &unk_278FECE20;
    v10 = handlerCopy;
    v14 = v10;
    v11 = [(NSXPCConnection *)v9 synchronousRemoteObjectProxyWithErrorHandler:v13];
    [v11 configureUserClient:clientCopy replyHandler:v10];
    v12 = fskit_std_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [FSModuleConnector sendConfigureUserClient:replyHandler:];
    }
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

void __58__FSModuleConnector_sendConfigureUserClient_replyHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = fskit_std_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __58__FSModuleConnector_sendConfigureUserClient_replyHandler___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)ping:(id)ping
{
  pingCopy = ping;
  v5 = fskit_std_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [FSModuleConnector ping:];
  }

  if ([(FSModuleExtension *)self->_ourModule delegateConformantFS])
  {
    v6 = 0;
  }

  else
  {
    v6 = fs_errorForPOSIXError(8);
  }

  pingCopy[2](pingCopy, v6);
}

- (void)checkIn:(id)in replyHandler:(id)handler
{
  v23 = *MEMORY[0x277D85DE8];
  inCopy = in;
  handlerCopy = handler;
  v8 = fskit_std_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v22 = inCopy;
    _os_log_impl(&dword_24A929000, v8, OS_LOG_TYPE_DEFAULT, "FSModuleExtension.checkIn:extensionID:%@", buf, 0xCu);
  }

  v9 = self->_ourModule;
  objc_sync_enter(v9);
  instanceID = [(FSModuleExtension *)self->_ourModule instanceID];

  ourModule = self->_ourModule;
  if (!instanceID)
  {
    [(FSModuleExtension *)ourModule setInstanceID:inCopy];
    goto LABEL_9;
  }

  instanceID2 = [(FSModuleExtension *)ourModule instanceID];
  v13 = [instanceID2 isEqual:inCopy];

  if (v13)
  {
LABEL_9:
    v16 = 0;
    goto LABEL_10;
  }

  v14 = fskit_std_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    instanceID3 = [(FSModuleExtension *)self->_ourModule instanceID];
    [(FSModuleConnector *)inCopy checkIn:instanceID3 replyHandler:buf, v14];
  }

  v16 = fs_errorForPOSIXError(17);
LABEL_10:
  objc_sync_exit(v9);

  v17 = fskit_std_log();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138412290;
    v20 = v16;
    _os_log_impl(&dword_24A929000, v17, OS_LOG_TYPE_DEFAULT, "FSModuleExtension.checkIn returning %@", &v19, 0xCu);
  }

  handlerCopy[2](handlerCopy, v16);
  v18 = *MEMORY[0x277D85DE8];
}

- (void)getLegacyVolumeEndpoint:(id)endpoint replyHandler:(id)handler
{
  handlerCopy = handler;
  v5 = fs_errorForPOSIXError(45);
  handlerCopy[2](handlerCopy, 0, v5);
}

- (void)getVolumeEndpoint:(id)endpoint replyHandler:(id)handler
{
  v25 = *MEMORY[0x277D85DE8];
  endpointCopy = endpoint;
  handlerCopy = handler;
  v8 = fskit_std_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 136315394;
    v18 = "[FSModuleConnector getVolumeEndpoint:replyHandler:]";
    v19 = 2112;
    v20 = endpointCopy;
    _os_log_impl(&dword_24A929000, v8, OS_LOG_TYPE_DEFAULT, "%s:start:volID:%@", &v17, 0x16u);
  }

  if (endpointCopy)
  {
    volumes = [(FSModuleExtension *)self->_ourModule volumes];
    v10 = [volumes objectForKeyedSubscript:endpointCopy];

    if (v10)
    {
      listener = [v10 listener];
      endpoint = [listener endpoint];

      v13 = fskit_std_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        listener2 = [v10 listener];
        v17 = 136315906;
        v18 = "[FSModuleConnector getVolumeEndpoint:replyHandler:]";
        v19 = 2112;
        v20 = endpointCopy;
        v21 = 2112;
        v22 = listener2;
        v23 = 2112;
        v24 = endpoint;
        _os_log_impl(&dword_24A929000, v13, OS_LOG_TYPE_DEFAULT, "%s:end:found:volID:%@ listener %@ returning ep %@", &v17, 0x2Au);
      }

      handlerCopy[2](handlerCopy, endpoint, 0);
    }

    else
    {
      v15 = fskit_std_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 136315394;
        v18 = "[FSModuleConnector getVolumeEndpoint:replyHandler:]";
        v19 = 2112;
        v20 = endpointCopy;
        _os_log_impl(&dword_24A929000, v15, OS_LOG_TYPE_DEFAULT, "%s:end:ENOENT:volID:%@", &v17, 0x16u);
      }

      endpoint = fs_errorForPOSIXError(2);
      (handlerCopy)[2](handlerCopy, 0, endpoint);
    }
  }

  else
  {
    v10 = fs_errorForPOSIXError(5);
    (handlerCopy)[2](handlerCopy, 0, v10);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)probeResource:(id)resource replyHandler:(id)handler
{
  v33 = *MEMORY[0x277D85DE8];
  resourceCopy = resource;
  handlerCopy = handler;
  v8 = resourceCopy;
  v9 = v8;
  if ([v8 kind] == 1)
  {
    v10 = [(FSResource *)FSBlockDeviceResource dynamicCast:v8];
    if (v10)
    {
      v11 = fskit_std_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        fileDescriptor = [v10 fileDescriptor];
        _os_log_impl(&dword_24A929000, v11, OS_LOG_TYPE_DEFAULT, "Successful dynamic cast of resource to bd. Got fd %d", buf, 8u);
      }

      [v10 readFirstSectorAndLog];
    }

    v9 = v8;
    if ([v10 limited])
    {
      v12 = [FSBlockDeviceBufferResource bufferFromResource:v10];
      v13 = v12;
      v9 = v8;
      if (v12)
      {
        v9 = v12;
      }
    }
  }

  v14 = self->_ourModule;
  v23 = MEMORY[0x277D85DD0];
  v24 = 3221225472;
  v25 = __48__FSModuleConnector_probeResource_replyHandler___block_invoke;
  v26 = &unk_278FECEB8;
  selfCopy = self;
  v15 = v8;
  v28 = v15;
  v16 = v14;
  v29 = v16;
  v17 = handlerCopy;
  v30 = v17;
  v18 = _Block_copy(&v23);
  if ([(FSModuleExtension *)v16 isNormalFS:v23])
  {
    delegate = [(_EXExtension *)v16 delegate];
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      v20 = fskit_std_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_19;
      }

      goto LABEL_20;
    }

    goto LABEL_17;
  }

  if ([(FSModuleExtension *)v16 isSimpleFS])
  {
    delegate = [(_EXExtension *)v16 delegate];
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      v20 = fskit_std_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
LABEL_19:
        [FSModuleConnector probeResource:replyHandler:];
      }

LABEL_20:

      v21 = fs_errorForPOSIXError(45);
      (*(v17 + 2))(v17, 0, v21);

      goto LABEL_21;
    }

LABEL_17:
    [delegate probeResource:v15 replyHandler:v18];
LABEL_21:
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __48__FSModuleConnector_probeResource_replyHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = fskit_std_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    v15 = v5;
    _os_log_impl(&dword_24A929000, v7, OS_LOG_TYPE_DEFAULT, "Returning %@", &v14, 0xCu);
  }

  [*(a1 + 32) sendCloseResource:*(a1 + 40)];
  if (v5 | v6)
  {
    if (v6)
    {
      v11 = fskit_std_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        __48__FSModuleConnector_probeResource_replyHandler___block_invoke_cold_1(a1);
      }

      v12 = *(*(a1 + 56) + 16);
    }

    else
    {
      v12 = *(*(a1 + 56) + 16);
    }

    v12();
  }

  else
  {
    v8 = fskit_std_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      __48__FSModuleConnector_probeResource_replyHandler___block_invoke_cold_2(a1);
    }

    v9 = *(a1 + 56);
    v10 = fs_errorForPOSIXError(43);
    (*(v9 + 16))(v9, 0, v10);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)checkWithOptions:(id)options connection:(id)connection taskID:(id)d replyHandler:(id)handler
{
  v52 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  connectionCopy = connection;
  dCopy = d;
  handlerCopy = handler;
  v12 = fskit_std_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[FSModuleConnector checkWithOptions:connection:taskID:replyHandler:]";
    _os_log_impl(&dword_24A929000, v12, OS_LOG_TYPE_DEFAULT, "%s:start", &buf, 0xCu);
  }

  if ([(FSModuleExtension *)self->_ourModule supportsSimpleMaintenanceOps])
  {
    delegate = [(_EXExtension *)self->_ourModule delegate];
    v14 = self->_ourModule;
    v15 = dispatch_group_create();
    *&buf = 0;
    *(&buf + 1) = &buf;
    v48 = 0x3032000000;
    v49 = __Block_byref_object_copy_;
    v50 = __Block_byref_object_dispose_;
    v51 = 0;
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __69__FSModuleConnector_checkWithOptions_connection_taskID_replyHandler___block_invoke;
    v45[3] = &unk_278FECEE0;
    v45[4] = self;
    v16 = v14;
    v46 = v16;
    [connectionCopy setEarlyCompletedBlock:v45];
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __69__FSModuleConnector_checkWithOptions_connection_taskID_replyHandler___block_invoke_2;
    v43[3] = &unk_278FECF08;
    v17 = v15;
    v44 = v17;
    [connectionCopy setLateCompletedBlock:v43];
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __69__FSModuleConnector_checkWithOptions_connection_taskID_replyHandler___block_invoke_3;
    v42[3] = &unk_278FECF30;
    v42[4] = &buf;
    [connectionCopy connect:v42];
    if (*(*(&buf + 1) + 40))
    {
      v18 = fskit_std_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *v41 = 0;
        _os_log_impl(&dword_24A929000, v18, OS_LOG_TYPE_DEFAULT, "checkWithOptions: encountered on connect error!", v41, 2u);
      }

      (*(handlerCopy + 2))(handlerCopy, 0, *(*(&buf + 1) + 40));
      v19 = 0;
      v20 = 0;
    }

    else
    {
      v21 = FSTaskPurposeCheck[0];
      bundleID = [(FSModuleExtension *)v16 bundleID];
      instanceID = [(FSModuleExtension *)v16 instanceID];
      v24 = [FSTaskDescription taskDescriptionWithID:dCopy state:1 purpose:v21 error:0 bundleID:bundleID extensionID:instanceID resource:0];

      v25 = [[FSTask alloc] initWithMessageConnection:connectionCopy taskID:dCopy];
      v26 = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __69__FSModuleConnector_checkWithOptions_connection_taskID_replyHandler___block_invoke_250;
      block[3] = &unk_278FECF58;
      v20 = v24;
      v31 = v20;
      v32 = v17;
      v33 = delegate;
      v19 = v25;
      v34 = v19;
      v35 = optionsCopy;
      v36 = v16;
      v37 = dCopy;
      v40 = handlerCopy;
      v38 = connectionCopy;
      selfCopy = self;
      dispatch_async(v26, block);
    }

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    delegate = fs_errorForPOSIXError(45);
    (*(handlerCopy + 2))(handlerCopy, 0, delegate);
  }

  v27 = *MEMORY[0x277D85DE8];
}

void __69__FSModuleConnector_checkWithOptions_connection_taskID_replyHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) resource];
  [v1 sendRevokeResource:v2];
}

void __69__FSModuleConnector_checkWithOptions_connection_taskID_replyHandler___block_invoke_250(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  dispatch_group_enter(*(a1 + 40));
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = [*(a1 + 64) taskOptions];
  v26 = 0;
  v6 = [v3 startCheckWithTask:v4 options:v5 error:&v26];
  v7 = v26;

  v8 = fskit_std_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [*(a1 + 72) resource];
    v10 = [v9 getProgressURLKey];
    *buf = 136315394;
    *v28 = "[FSModuleConnector checkWithOptions:connection:taskID:replyHandler:]_block_invoke";
    *&v28[8] = 2112;
    v29 = v10;
    _os_log_impl(&dword_24A929000, v8, OS_LOG_TYPE_INFO, "%s: publishing progress (%@)", buf, 0x16u);
  }

  v11 = [*(a1 + 72) resource];
  v12 = [v11 getProgressURLKey];
  [v6 setUserInfoObject:v12 forKey:*MEMORY[0x277CCA640]];

  [v6 publish];
  if (v7)
  {
    (*(*(a1 + 104) + 16))();
    v13 = 0;
    if (!v6)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v13 = [FSModuleTask taskWithID:*(a1 + 80) description:*(a1 + 32) progress:v6];
  v14 = [*(a1 + 72) taskSet];
  objc_sync_enter(v14);
  v15 = [*(a1 + 72) taskSet];
  [v15 setObject:v13 forKey:*(a1 + 80)];

  objc_sync_exit(v14);
  [v2 setTaskHasCancellationHandler:{objc_msgSend(*(a1 + 56), "hasCancellationHandler")}];
  v16 = fskit_std_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [*(a1 + 56) hasCancellationHandler];
    v18 = [v2 taskHasCancellationHandler];
    *buf = 67109376;
    *v28 = v17;
    *&v28[4] = 1024;
    *&v28[6] = v18;
    _os_log_impl(&dword_24A929000, v16, OS_LOG_TYPE_DEFAULT, "Testing: just set hasCancellation to %d, we see %d", buf, 0xEu);
  }

  (*(*(a1 + 104) + 16))();
  dispatch_group_wait(*(a1 + 40), 0xFFFFFFFFFFFFFFFFLL);
  if (v6)
  {
LABEL_9:
    v19 = [v6 totalUnitCount];
    if (v19 > [v6 completedUnitCount])
    {
      [v6 setCompletedUnitCount:{objc_msgSend(v6, "totalUnitCount")}];
    }
  }

LABEL_11:
  [*(a1 + 88) completed:0 replyHandler:&__block_literal_global_255];
  if (v7)
  {
    v20 = v2;
  }

  else
  {
    v20 = [v2 updatedDescriptionInState:3 error:0];

    [*(a1 + 96) sendTaskUpdate:v20];
  }

  v21 = [*(a1 + 72) taskSet];
  objc_sync_enter(v21);
  v22 = [*(a1 + 72) taskSet];
  [v22 removeObjectForKey:*(a1 + 80)];

  objc_sync_exit(v21);
  v23 = fskit_std_log();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    v24 = *(a1 + 80);
    *buf = 136315394;
    *v28 = "[FSModuleConnector checkWithOptions:connection:taskID:replyHandler:]_block_invoke_2";
    *&v28[8] = 2112;
    v29 = v24;
    _os_log_impl(&dword_24A929000, v23, OS_LOG_TYPE_INFO, "%s: Check task UUID (%@) finished", buf, 0x16u);
  }

  [v6 unpublish];
  v25 = *MEMORY[0x277D85DE8];
}

- (void)formatWithOptions:(id)options connection:(id)connection taskID:(id)d replyHandler:(id)handler
{
  v52 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  connectionCopy = connection;
  dCopy = d;
  handlerCopy = handler;
  v12 = fskit_std_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[FSModuleConnector formatWithOptions:connection:taskID:replyHandler:]";
    _os_log_impl(&dword_24A929000, v12, OS_LOG_TYPE_DEFAULT, "%s:start", &buf, 0xCu);
  }

  if ([(FSModuleExtension *)self->_ourModule supportsSimpleMaintenanceOps])
  {
    delegate = [(_EXExtension *)self->_ourModule delegate];
    v14 = self->_ourModule;
    v15 = dispatch_group_create();
    *&buf = 0;
    *(&buf + 1) = &buf;
    v48 = 0x3032000000;
    v49 = __Block_byref_object_copy_;
    v50 = __Block_byref_object_dispose_;
    v51 = 0;
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __70__FSModuleConnector_formatWithOptions_connection_taskID_replyHandler___block_invoke;
    v45[3] = &unk_278FECEE0;
    v45[4] = self;
    v16 = v14;
    v46 = v16;
    [connectionCopy setEarlyCompletedBlock:v45];
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __70__FSModuleConnector_formatWithOptions_connection_taskID_replyHandler___block_invoke_2;
    v43[3] = &unk_278FECF08;
    v17 = v15;
    v44 = v17;
    [connectionCopy setLateCompletedBlock:v43];
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __70__FSModuleConnector_formatWithOptions_connection_taskID_replyHandler___block_invoke_3;
    v42[3] = &unk_278FECF30;
    v42[4] = &buf;
    [connectionCopy connect:v42];
    if (*(*(&buf + 1) + 40))
    {
      v18 = fskit_std_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *v41 = 0;
        _os_log_impl(&dword_24A929000, v18, OS_LOG_TYPE_DEFAULT, "formatWithOptions: encountered on connect error!", v41, 2u);
      }

      (*(handlerCopy + 2))(handlerCopy, 0, *(*(&buf + 1) + 40));
      v19 = 0;
      v20 = 0;
    }

    else
    {
      v21 = FSTaskPurposeFormat[0];
      bundleID = [(FSModuleExtension *)v16 bundleID];
      instanceID = [(FSModuleExtension *)v16 instanceID];
      v24 = [FSTaskDescription taskDescriptionWithID:dCopy state:1 purpose:v21 error:0 bundleID:bundleID extensionID:instanceID resource:0];

      v25 = [[FSTask alloc] initWithMessageConnection:connectionCopy taskID:dCopy];
      v26 = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __70__FSModuleConnector_formatWithOptions_connection_taskID_replyHandler___block_invoke_258;
      block[3] = &unk_278FECF58;
      v20 = v24;
      v31 = v20;
      v32 = v17;
      v33 = delegate;
      v19 = v25;
      v34 = v19;
      v35 = optionsCopy;
      v36 = v16;
      v37 = dCopy;
      v40 = handlerCopy;
      v38 = connectionCopy;
      selfCopy = self;
      dispatch_async(v26, block);
    }

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    delegate = fs_errorForPOSIXError(45);
    (*(handlerCopy + 2))(handlerCopy, 0, delegate);
  }

  v27 = *MEMORY[0x277D85DE8];
}

void __70__FSModuleConnector_formatWithOptions_connection_taskID_replyHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) resource];
  [v1 sendRevokeResource:v2];
}

void __70__FSModuleConnector_formatWithOptions_connection_taskID_replyHandler___block_invoke_258(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  dispatch_group_enter(*(a1 + 40));
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = [*(a1 + 64) taskOptions];
  v26 = 0;
  v6 = [v3 startFormatWithTask:v4 options:v5 error:&v26];
  v7 = v26;

  v8 = fskit_std_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [*(a1 + 72) resource];
    v10 = [v9 getProgressURLKey];
    *buf = 136315394;
    *v28 = "[FSModuleConnector formatWithOptions:connection:taskID:replyHandler:]_block_invoke";
    *&v28[8] = 2112;
    v29 = v10;
    _os_log_impl(&dword_24A929000, v8, OS_LOG_TYPE_INFO, "%s: publishing progress (%@)", buf, 0x16u);
  }

  v11 = [*(a1 + 72) resource];
  v12 = [v11 getProgressURLKey];
  [v6 setUserInfoObject:v12 forKey:*MEMORY[0x277CCA640]];

  [v6 publish];
  if (v7)
  {
    (*(*(a1 + 104) + 16))();
    v13 = 0;
    if (!v6)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v13 = [FSModuleTask taskWithID:*(a1 + 80) description:*(a1 + 32) progress:v6];
  v14 = [*(a1 + 72) taskSet];
  objc_sync_enter(v14);
  v15 = [*(a1 + 72) taskSet];
  [v15 setObject:v13 forKey:*(a1 + 80)];

  objc_sync_exit(v14);
  [v2 setTaskHasCancellationHandler:{objc_msgSend(*(a1 + 56), "hasCancellationHandler")}];
  v16 = fskit_std_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [*(a1 + 56) hasCancellationHandler];
    v18 = [v2 taskHasCancellationHandler];
    *buf = 67109376;
    *v28 = v17;
    *&v28[4] = 1024;
    *&v28[6] = v18;
    _os_log_impl(&dword_24A929000, v16, OS_LOG_TYPE_DEFAULT, "Testing: just set hasCancellation to %d, we see %d", buf, 0xEu);
  }

  (*(*(a1 + 104) + 16))();
  dispatch_group_wait(*(a1 + 40), 0xFFFFFFFFFFFFFFFFLL);
  if (v6)
  {
LABEL_9:
    v19 = [v6 totalUnitCount];
    if (v19 > [v6 completedUnitCount])
    {
      [v6 setCompletedUnitCount:{objc_msgSend(v6, "totalUnitCount")}];
    }
  }

LABEL_11:
  [*(a1 + 88) completed:0 replyHandler:&__block_literal_global_261];
  if (v7)
  {
    v20 = v2;
  }

  else
  {
    v20 = [v2 updatedDescriptionInState:3 error:0];

    [*(a1 + 96) sendTaskUpdate:v20];
  }

  v21 = [*(a1 + 72) taskSet];
  objc_sync_enter(v21);
  v22 = [*(a1 + 72) taskSet];
  [v22 removeObjectForKey:*(a1 + 80)];

  objc_sync_exit(v21);
  v23 = fskit_std_log();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    v24 = *(a1 + 80);
    *buf = 136315394;
    *v28 = "[FSModuleConnector formatWithOptions:connection:taskID:replyHandler:]_block_invoke_2";
    *&v28[8] = 2112;
    v29 = v24;
    _os_log_impl(&dword_24A929000, v23, OS_LOG_TYPE_INFO, "%s: Format task UUID (%@) finished", buf, 0x16u);
  }

  [v6 unpublish];
  v25 = *MEMORY[0x277D85DE8];
}

- (void)loadResource:(id)resource options:(id)options replyHandler:(id)handler
{
  v55 = *MEMORY[0x277D85DE8];
  resourceCopy = resource;
  optionsCopy = options;
  handlerCopy = handler;
  v9 = fskit_std_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[FSModuleConnector loadResource:options:replyHandler:]";
    _os_log_impl(&dword_24A929000, v9, OS_LOG_TYPE_DEFAULT, "%s:start", &buf, 0xCu);
  }

  v10 = self->_ourModule;
  if ([(FSModuleExtension *)v10 isNormalFS]|| [(FSModuleExtension *)v10 isSimpleFS])
  {
    v11 = dispatch_get_global_queue(0, 0);
    *&buf = 0;
    *(&buf + 1) = &buf;
    v51 = 0x3032000000;
    v52 = __Block_byref_object_copy_;
    v53 = __Block_byref_object_dispose_;
    v54 = 0;
    v45 = 0;
    v46 = &v45;
    v47 = 0x2020000000;
    v48 = 0;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    taskOptions = [optionsCopy taskOptions];
    v12TaskOptions = [taskOptions taskOptions];

    v14 = [v12TaskOptions countByEnumeratingWithState:&v41 objects:v49 count:16];
    if (v14)
    {
      v15 = *v42;
      do
      {
        v16 = 0;
        do
        {
          if (*v42 != v15)
          {
            objc_enumerationMutation(v12TaskOptions);
          }

          if ([*(*(&v41 + 1) + 8 * v16) containsString:{@"-f", resourceCopy}])
          {
            *(v46 + 24) = 1;
          }

          ++v16;
        }

        while (v14 != v16);
        v14 = [v12TaskOptions countByEnumeratingWithState:&v41 objects:v49 count:16];
      }

      while (v14);
    }

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __55__FSModuleConnector_loadResource_options_replyHandler___block_invoke;
    aBlock[3] = &unk_278FECFF8;
    v17 = v10;
    v34 = v17;
    v39 = &v45;
    v18 = resourceCopy;
    v35 = v18;
    v19 = handlerCopy;
    selfCopy = self;
    v38 = v19;
    p_buf = &buf;
    v36 = v11;
    v20 = v11;
    v21 = _Block_copy(aBlock);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__FSModuleConnector_loadResource_options_replyHandler___block_invoke_270;
    block[3] = &unk_278FED070;
    v28 = v17;
    v29 = v18;
    v30 = optionsCopy;
    v31 = v21;
    v32 = v19;
    v22 = v21;
    dispatch_async(v20, block);

    _Block_object_dispose(&v45, 8);
    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v23 = fs_errorForPOSIXError(45);
    (*(handlerCopy + 2))(handlerCopy, 0, v23);
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __55__FSModuleConnector_loadResource_options_replyHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy_;
  v35 = __Block_byref_object_dispose_;
  v36 = 0;
  v7 = dispatch_group_create();
  v8 = [*(a1 + 32) delegate];
  v9 = [v8 containerStatus];
  if (!v9)
  {
    if (!v6)
    {
      goto LABEL_19;
    }

    v11 = 0;
LABEL_10:
    if (*(*(*(a1 + 72) + 8) + 24) == 1 && [v6 code] == 43 && objc_msgSend(v11, "code") == 43)
    {
      [*(a1 + 32) setResource:*(a1 + 40)];
      (*(*(a1 + 64) + 16))();
      goto LABEL_23;
    }

    v18 = fskit_std_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      __55__FSModuleConnector_loadResource_options_replyHandler___block_invoke_cold_1();
    }

LABEL_22:

    (*(*(a1 + 64) + 16))();
    goto LABEL_23;
  }

  v10 = [v8 containerStatus];
  v11 = [v10 status];

  if (v6)
  {
    goto LABEL_10;
  }

  if ([v9 state] != 2 && objc_msgSend(v9, "state") != 1)
  {
    if (v11)
    {
      v6 = v11;
      v11 = v6;
      goto LABEL_20;
    }

LABEL_19:
    v6 = fs_errorForPOSIXError(43);
    v11 = 0;
LABEL_20:
    v18 = fskit_std_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      __55__FSModuleConnector_loadResource_options_replyHandler___block_invoke_cold_2();
    }

    goto LABEL_22;
  }

  v12 = objc_opt_new();
  v13 = v32[5];
  v32[5] = v12;

  if (v5)
  {
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __55__FSModuleConnector_loadResource_options_replyHandler___block_invoke_263;
    v25[3] = &unk_278FECFA8;
    v26 = v7;
    v14 = *(a1 + 32);
    v15 = *(a1 + 80);
    v27 = v14;
    v29 = v15;
    v28 = *(a1 + 40);
    v30 = &v31;
    [v5 enumerateObjectsUsingBlock:v25];
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__FSModuleConnector_loadResource_options_replyHandler___block_invoke_268;
  block[3] = &unk_278FECFD0;
  v16 = *(a1 + 48);
  v17 = *(a1 + 80);
  block[4] = *(a1 + 56);
  v23 = v17;
  v20 = *(a1 + 40);
  v21 = *(a1 + 32);
  v22 = *(a1 + 64);
  v24 = &v31;
  dispatch_group_notify(v7, v16, block);

  v6 = 0;
LABEL_23:

  _Block_object_dispose(&v31, 8);
}

void __55__FSModuleConnector_loadResource_options_replyHandler___block_invoke_263(uint64_t a1, void *a2)
{
  v3 = a2;
  dispatch_group_enter(*(a1 + 32));
  v4 = v3;
  v5 = *(a1 + 40);
  v6 = [v4 volumeID];
  v7 = [*(a1 + 40) bundleID];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __55__FSModuleConnector_loadResource_options_replyHandler___block_invoke_2;
  v14[3] = &unk_278FECF80;
  v15 = v4;
  v16 = v4;
  v13 = *(a1 + 48);
  v8 = v13;
  v9 = *(a1 + 40);
  v19 = *(a1 + 64);
  *&v10 = *(a1 + 32);
  *(&v11 + 1) = v9;
  *(&v10 + 1) = *(&v13 + 1);
  *&v11 = v13;
  v18 = v10;
  v17 = v11;
  v12 = v4;
  [v5 sendIsVolumeUsed:v6 bundle:v7 replyHandler:v14];
}

void __55__FSModuleConnector_loadResource_options_replyHandler___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 72) + 8);
  v7 = v5;
  if (!v5)
  {
    v7 = *(v6 + 40);
  }

  objc_storeStrong((v6 + 40), v7);
  if (a2)
  {
    v8 = objc_opt_new();
    v9 = [v8 fs_volumeIdentifier];
    [*(a1 + 32) setVolumeID:v9];

    v10 = fskit_std_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __55__FSModuleConnector_loadResource_options_replyHandler___block_invoke_2_cold_1(a1, (a1 + 32), v10);
    }
  }

  v11 = [FSModuleVolume volumeWithName:*(a1 + 32) resource:*(a1 + 48)];
  [v11 setOurExtension:*(a1 + 56)];
  v12 = fskit_std_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    __55__FSModuleConnector_loadResource_options_replyHandler___block_invoke_2_cold_2();
  }

  v13 = [*(a1 + 56) volumes];
  v14 = [*(a1 + 32) volumeID];
  [v13 setObject:v11 forKey:v14];

  v15 = [*(a1 + 32) volumeID];
  v16 = [*(a1 + 32) name];
  v17 = +[FSVolumeDescription volumeDescriptionWithID:name:state:](FSVolumeDescription, "volumeDescriptionWithID:name:state:", v15, v16, [*(a1 + 32) state]);

  [*(*(*(a1 + 80) + 8) + 40) addObject:v17];
  dispatch_group_leave(*(a1 + 64));
}

uint64_t __55__FSModuleConnector_loadResource_options_replyHandler___block_invoke_268(uint64_t a1)
{
  v2 = fskit_std_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __55__FSModuleConnector_loadResource_options_replyHandler___block_invoke_268_cold_1(a1);
  }

  if (!*(*(*(a1 + 64) + 8) + 40))
  {
    v3 = fskit_std_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __55__FSModuleConnector_loadResource_options_replyHandler___block_invoke_268_cold_2(a1);
    }

    [*(a1 + 48) setResource:*(a1 + 40)];
    v4 = *(*(*(a1 + 64) + 8) + 40);
  }

  v5 = *(*(*(a1 + 72) + 8) + 40);
  return (*(*(a1 + 56) + 16))();
}

void __55__FSModuleConnector_loadResource_options_replyHandler___block_invoke_270(uint64_t a1)
{
  v2 = *(a1 + 32);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __55__FSModuleConnector_loadResource_options_replyHandler___block_invoke_2_271;
  v16[3] = &unk_278FECF08;
  v17 = v2;
  [v17 sendConfigureUserClientWithReplyHandler:v16];
  v3 = [*(a1 + 32) isNormalFS];
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [v4 delegate];
    if (objc_opt_respondsToSelector())
    {
      v6 = *(a1 + 40);
      v7 = [*(a1 + 48) taskOptions];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __55__FSModuleConnector_loadResource_options_replyHandler___block_invoke_273;
      v14[3] = &unk_278FED020;
      v15 = *(a1 + 56);
      [v5 loadResource:v6 options:v7 replyHandler:v14];

      v8 = v15;
LABEL_8:

      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if ([v4 isSimpleFS])
  {
    v5 = [*(a1 + 32) delegate];
    if (objc_opt_respondsToSelector())
    {
      v9 = *(a1 + 40);
      v10 = [*(a1 + 48) taskOptions];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __55__FSModuleConnector_loadResource_options_replyHandler___block_invoke_274;
      v12[3] = &unk_278FED048;
      v13 = *(a1 + 56);
      [v5 loadResource:v9 options:v10 replyHandler:v12];

      v8 = v13;
      goto LABEL_8;
    }

LABEL_7:
    v11 = *(a1 + 64);
    v8 = fs_errorForPOSIXError(45);
    (*(v11 + 16))(v11, 0, v8);
    goto LABEL_8;
  }

LABEL_9:
}

void __55__FSModuleConnector_loadResource_options_replyHandler___block_invoke_2_271(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = fskit_std_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) bundleID];
    v6 = [v3 description];
    v8 = 136315650;
    v9 = "[FSModuleConnector loadResource:options:replyHandler:]_block_invoke_2";
    v10 = 2114;
    v11 = v5;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&dword_24A929000, v4, OS_LOG_TYPE_DEFAULT, "%s: configureUserClient for FSModule %{public}@ returned error (%@)", &v8, 0x20u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __55__FSModuleConnector_loadResource_options_replyHandler___block_invoke_273(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!(v5 | v6))
  {
    v7 = fskit_std_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __55__FSModuleConnector_loadResource_options_replyHandler___block_invoke_273_cold_1();
    }

    v6 = fs_errorForPOSIXError(43);
  }

  (*(*(a1 + 32) + 16))();
}

void __55__FSModuleConnector_loadResource_options_replyHandler___block_invoke_274(uint64_t a1, void *a2, void *a3)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (!(v5 | v6))
  {
    v7 = fskit_std_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __55__FSModuleConnector_loadResource_options_replyHandler___block_invoke_273_cold_1();
    }

    v8 = fs_errorForPOSIXError(43);
    v9 = *(a1 + 32);
    goto LABEL_7;
  }

  v8 = v6;
  v9 = *(a1 + 32);
  if (!v5)
  {
LABEL_7:
    (*(v9 + 16))(v9, 0, v8);
    goto LABEL_8;
  }

  v12[0] = v5;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  (*(v9 + 16))(v9, v10, v8);

LABEL_8:
  v11 = *MEMORY[0x277D85DE8];
}

- (void)unloadResource:(id)resource options:(id)options replyHandler:(id)handler
{
  v32 = *MEMORY[0x277D85DE8];
  resourceCopy = resource;
  optionsCopy = options;
  handlerCopy = handler;
  v11 = fskit_std_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v31 = "[FSModuleConnector unloadResource:options:replyHandler:]";
    _os_log_impl(&dword_24A929000, v11, OS_LOG_TYPE_DEFAULT, "%s:start", buf, 0xCu);
  }

  if ([(FSModuleExtension *)self->_ourModule isNormalFS]|| [(FSModuleExtension *)self->_ourModule isSimpleFS])
  {
    v12 = self->_ourModule;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __57__FSModuleConnector_unloadResource_options_replyHandler___block_invoke;
    aBlock[3] = &unk_278FED098;
    v13 = v12;
    v26 = v13;
    selfCopy = self;
    v14 = resourceCopy;
    v28 = v14;
    v29 = handlerCopy;
    v15 = _Block_copy(aBlock);
    delegate = [(_EXExtension *)v13 delegate];
    v17 = objc_opt_respondsToSelector();

    if (v17)
    {
      v18 = dispatch_get_global_queue(0, 0);
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __57__FSModuleConnector_unloadResource_options_replyHandler___block_invoke_278;
      v20[3] = &unk_278FED0C0;
      v21 = v13;
      v22 = v14;
      v23 = optionsCopy;
      v24 = v15;
      dispatch_async(v18, v20);
    }

    else
    {
      (*(v15 + 2))(v15, 0);
    }
  }

  else
  {
    v13 = fs_errorForPOSIXError(45);
    (*(handlerCopy + 2))(handlerCopy, v13);
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __57__FSModuleConnector_unloadResource_options_replyHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    v4 = [*(a1 + 32) volumes];
    [v4 removeAllObjects];

    [*(a1 + 40) sendRevokeResource:*(a1 + 48)];
    v5 = fskit_std_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __57__FSModuleConnector_unloadResource_options_replyHandler___block_invoke_cold_1();
    }

    [*(a1 + 32) setResource:0];
  }

  (*(*(a1 + 56) + 16))();
}

void __57__FSModuleConnector_unloadResource_options_replyHandler___block_invoke_278(uint64_t a1)
{
  v2 = [*(a1 + 32) isNormalFS];
  v3 = *(a1 + 32);
  if ((v2 & 1) == 0)
  {
    if (![v3 isSimpleFS])
    {
      return;
    }

    v3 = *(a1 + 32);
  }

  v6 = [v3 delegate];
  v4 = *(a1 + 40);
  v5 = [*(a1 + 48) taskOptions];
  [v6 unloadResource:v4 options:v5 replyHandler:*(a1 + 56)];
}

- (void)activateVolume:(id)volume resource:(id)resource options:(id)options replyHandler:(id)handler
{
  v31 = *MEMORY[0x277D85DE8];
  volumeCopy = volume;
  optionsCopy = options;
  handlerCopy = handler;
  v12 = fskit_std_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v30 = "[FSModuleConnector activateVolume:resource:options:replyHandler:]";
    _os_log_impl(&dword_24A929000, v12, OS_LOG_TYPE_DEFAULT, "%s:start", buf, 0xCu);
  }

  v13 = self->_ourModule;
  volumes = [(FSModuleExtension *)v13 volumes];
  v15 = [volumes objectForKeyedSubscript:volumeCopy];

  if (v15 && ([v15 volume], v16 = objc_claimAutoreleasedReturnValue(), v16, v16))
  {
    volume = [v15 volume];
    v18 = dispatch_get_global_queue(0, 0);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __66__FSModuleConnector_activateVolume_resource_options_replyHandler___block_invoke;
    v22[3] = &unk_278FED138;
    v23 = volume;
    v24 = optionsCopy;
    v25 = volumeCopy;
    v28 = handlerCopy;
    v26 = v13;
    v27 = v15;
    v19 = volume;
    dispatch_async(v18, v22);
  }

  else
  {
    v20 = fskit_std_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      [FSModuleConnector activateVolume:resource:options:replyHandler:];
    }

    v19 = fs_errorForPOSIXError(45);
    (*(handlerCopy + 2))(handlerCopy, v19);
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __66__FSModuleConnector_activateVolume_resource_options_replyHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) taskOptions];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __66__FSModuleConnector_activateVolume_resource_options_replyHandler___block_invoke_2;
  v9[3] = &unk_278FED110;
  v4 = *(a1 + 48);
  v5 = *(a1 + 72);
  v6 = *(a1 + 56);
  *&v7 = *(a1 + 64);
  *(&v7 + 1) = v5;
  *&v8 = v4;
  *(&v8 + 1) = v6;
  v10 = v8;
  v11 = v7;
  [v2 activateWithOptions:v3 replyHandler:v9];
}

void __66__FSModuleConnector_activateVolume_resource_options_replyHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = fskit_std_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __66__FSModuleConnector_activateVolume_resource_options_replyHandler___block_invoke_2_cold_1(a1);
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v8 = fskit_std_log();
    v9 = v8;
    if (v5)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        __66__FSModuleConnector_activateVolume_resource_options_replyHandler___block_invoke_2_cold_2(a1);
      }

      [*(a1 + 48) updateRootItem:v5 replyHandler:&__block_literal_global_282];
      v10 = *(a1 + 48);
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __66__FSModuleConnector_activateVolume_resource_options_replyHandler___block_invoke_2_283;
      v13[3] = &unk_278FED0E8;
      v14 = v10;
      v15 = v5;
      v16 = *(a1 + 56);
      [v14 fetchAndSetTypeForItem:v15 replyHandler:v13];
    }

    else
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        __66__FSModuleConnector_activateVolume_resource_options_replyHandler___block_invoke_2_cold_3(a1);
      }

      v11 = *(a1 + 56);
      v12 = fs_errorForPOSIXError(43);
      (*(v11 + 16))(v11, v12);
    }
  }
}

uint64_t __66__FSModuleConnector_activateVolume_resource_options_replyHandler___block_invoke_2_283(uint64_t a1)
{
  v2 = (a1 + 40);
  [*(a1 + 32) insertIntoFHCache:*(a1 + 40)];
  [*(v2 - 1) setRootFSItem:*v2];
  v3 = fskit_std_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __66__FSModuleConnector_activateVolume_resource_options_replyHandler___block_invoke_2_283_cold_1(v2);
  }

  return (*(*(a1 + 48) + 16))();
}

- (void)deactivateVolume:(id)volume numericOptions:(unint64_t)options replyHandler:(id)handler
{
  v24 = *MEMORY[0x277D85DE8];
  volumeCopy = volume;
  handlerCopy = handler;
  v10 = fskit_std_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v23 = "[FSModuleConnector deactivateVolume:numericOptions:replyHandler:]";
    _os_log_impl(&dword_24A929000, v10, OS_LOG_TYPE_DEFAULT, "%s:start", buf, 0xCu);
  }

  v11 = self->_ourModule;
  volumes = [(FSModuleExtension *)v11 volumes];
  v13 = [volumes objectForKeyedSubscript:volumeCopy];

  if (v13 && ([v13 volume], v14 = objc_claimAutoreleasedReturnValue(), v14, v14))
  {
    volume = [v13 volume];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __66__FSModuleConnector_deactivateVolume_numericOptions_replyHandler___block_invoke;
    v18[3] = &unk_278FED0E8;
    v19 = volumeCopy;
    v20 = v13;
    v21 = handlerCopy;
    [volume deactivateWithOptions:options replyHandler:v18];
  }

  else
  {
    v16 = fskit_std_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      [FSModuleConnector deactivateVolume:numericOptions:replyHandler:];
    }

    volume = fs_errorForPOSIXError(45);
    (*(handlerCopy + 2))(handlerCopy, volume);
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __66__FSModuleConnector_deactivateVolume_numericOptions_replyHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = fskit_std_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __66__FSModuleConnector_deactivateVolume_numericOptions_replyHandler___block_invoke_cold_1(a1, v3);
    }
  }

  v5 = [*(a1 + 40) stopUsingVolume];
  (*(*(a1 + 48) + 16))();
}

- (void)getModuleListenerEndpoint:(id)endpoint
{
  v11 = *MEMORY[0x277D85DE8];
  endpointCopy = endpoint;
  secondaryListener = [(FSModuleExtension *)self->_ourModule secondaryListener];
  v6 = fskit_std_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = secondaryListener;
    _os_log_impl(&dword_24A929000, v6, OS_LOG_TYPE_DEFAULT, "getModuleListenerEndpoint got listener %@", &v9, 0xCu);
  }

  if (secondaryListener)
  {
    endpoint = [secondaryListener endpoint];
    endpointCopy[2](endpointCopy, endpoint, 0);
  }

  else
  {
    endpoint = fs_errorForPOSIXError(12);
    (endpointCopy)[2](endpointCopy, 0, endpoint);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)sendRevokeResource:(void *)a1 .cold.1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 getResourceID];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_24A929000, v2, v3, "%s:start:resource(%@)", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)sendRevokeResource:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)sendRevokeResource:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __40__FSModuleConnector_sendRevokeResource___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __40__FSModuleConnector_sendRevokeResource___block_invoke_235_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)sendCloseResource:(void *)a1 .cold.1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 getResourceID];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_24A929000, v2, v3, "%s:start:resource(%@)", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)sendCloseResource:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)sendCloseResource:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __39__FSModuleConnector_sendCloseResource___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __39__FSModuleConnector_sendCloseResource___block_invoke_240_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)sendIsVolumeUsed:bundle:replyHandler:.cold.1()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 136315650;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_6(&dword_24A929000, v0, v1, "%s:start:volumeID(%@):bundleID(%@)", v3);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)sendIsVolumeUsed:bundle:replyHandler:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __58__FSModuleConnector_sendIsVolumeUsed_bundle_replyHandler___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)sendWipeResource:replyHandler:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)sendWipeResource:replyHandler:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __51__FSModuleConnector_sendWipeResource_replyHandler___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __51__FSModuleConnector_sendWipeResource_replyHandler___block_invoke_243_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + 32) bundleID];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);

  v7 = *MEMORY[0x277D85DE8];
}

void __51__FSModuleConnector_sendWipeResource_replyHandler___block_invoke_243_cold_2(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + 32) bundleID];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3(&dword_24A929000, v2, v3, "%s: %{public}@ sendWipeResource done, no errors", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)sendConfigureUserClient:replyHandler:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)sendConfigureUserClient:replyHandler:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __58__FSModuleConnector_sendConfigureUserClient_replyHandler___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)checkIn:(uint8_t *)buf replyHandler:(os_log_t)log .cold.1(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_24A929000, log, OS_LOG_TYPE_ERROR, "Attempt to set instance UUID to %@ after already set to %@", buf, 0x16u);
}

- (void)probeResource:replyHandler:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  OUTLINED_FUNCTION_9();
  v1 = v0;
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

void __48__FSModuleConnector_probeResource_replyHandler___block_invoke_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + 48) bundleID];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

void __48__FSModuleConnector_probeResource_replyHandler___block_invoke_cold_2(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + 48) bundleID];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_11(&dword_24A929000, v2, v3, "FSModule %{public}@ probe: returned nil result", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

void __55__FSModuleConnector_loadResource_options_replyHandler___block_invoke_cold_1()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 136315650;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_7(&dword_24A929000, v0, v1, "%s: load error %@, container status %@", v3);
  v2 = *MEMORY[0x277D85DE8];
}

void __55__FSModuleConnector_loadResource_options_replyHandler___block_invoke_cold_2()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 136315650;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_7(&dword_24A929000, v0, v1, "%s: unexpected container state %@,%@", v3);
  v2 = *MEMORY[0x277D85DE8];
}

void __55__FSModuleConnector_loadResource_options_replyHandler___block_invoke_2_cold_1(uint64_t a1, id *a2, NSObject *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = [*(a1 + 40) volumeID];
  v7 = [*(a1 + 48) getResourceID];
  v8 = [*a2 volumeID];
  v10 = 136315906;
  v11 = "[FSModuleConnector loadResource:options:replyHandler:]_block_invoke_2";
  v12 = 2112;
  v13 = v6;
  v14 = 2112;
  v15 = v7;
  v16 = 2112;
  v17 = v8;
  _os_log_error_impl(&dword_24A929000, a3, OS_LOG_TYPE_ERROR, "%s: VolumeID (%@) of resource (%@) is being used, using new volumeID (%@) to avoid collision.", &v10, 0x2Au);

  v9 = *MEMORY[0x277D85DE8];
}

void __55__FSModuleConnector_loadResource_options_replyHandler___block_invoke_2_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __55__FSModuleConnector_loadResource_options_replyHandler___block_invoke_268_cold_1(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + 32) ourModule];
  v2 = [v1 volumes];
  [v2 count];
  OUTLINED_FUNCTION_3(&dword_24A929000, v3, v4, "%s: module volume now has %lu volumes", v5, v6, v7, v8, 2u);

  v9 = *MEMORY[0x277D85DE8];
}

void __55__FSModuleConnector_loadResource_options_replyHandler___block_invoke_268_cold_2(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + 40) getResourceID];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_24A929000, v2, v3, "%s: Setting up the module resource to (%@)", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

void __55__FSModuleConnector_loadResource_options_replyHandler___block_invoke_273_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __57__FSModuleConnector_unloadResource_options_replyHandler___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)activateVolume:resource:options:replyHandler:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __66__FSModuleConnector_activateVolume_resource_options_replyHandler___block_invoke_2_cold_1(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v5 = 136315650;
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_7(&dword_24A929000, v2, v3, "%s: activate volume (%@) reply(%@)", v5);
  v4 = *MEMORY[0x277D85DE8];
}

void __66__FSModuleConnector_activateVolume_resource_options_replyHandler___block_invoke_2_cold_2(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v5 = 136315650;
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_6(&dword_24A929000, v2, v3, "%s: activate volume (%@) found root item (%@)", v5);
  v4 = *MEMORY[0x277D85DE8];
}

void __66__FSModuleConnector_activateVolume_resource_options_replyHandler___block_invoke_2_cold_3(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + 40) bundleID];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_11(&dword_24A929000, v2, v3, "FSModule %{public}@ activateVolume: returned nil result", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

void __66__FSModuleConnector_activateVolume_resource_options_replyHandler___block_invoke_2_283_cold_1(id *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [*a1 fileHandle];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_24A929000, v2, v3, "%s:error:0:rootItem:%@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)deactivateVolume:numericOptions:replyHandler:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __66__FSModuleConnector_deactivateVolume_numericOptions_replyHandler___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v9 = [a2 description];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);

  v8 = *MEMORY[0x277D85DE8];
}

@end