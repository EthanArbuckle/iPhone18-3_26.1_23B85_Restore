@interface MSUBrainClientImpl
- (id)init:(id)a3 version:(id)a4 endpoint:(id)a5 delgate:(id)a6;
- (void)_connectToServerIfNecessary_nolock;
- (void)_invalidateConnection;
- (void)_invalidateConnection_nolock;
- (void)applyUpdate:(id)a3 progress:(id)a4 completion:(id)a5;
- (void)commitUnlockOnceToken:(id)a3 progress:(id)a4 completion:(id)a5;
- (void)connectToServerIfNecessary;
- (void)dealloc;
- (void)handleConnectionError:(id)a3 method:(const char *)a4 handler:(id)a5;
- (void)noteConnectionDropped;
- (void)prepareUpdate:(id)a3 options:(id)a4 progress:(id)a5 completion:(id)a6;
@end

@implementation MSUBrainClientImpl

- (id)init:(id)a3 version:(id)a4 endpoint:(id)a5 delgate:(id)a6
{
  v10 = [(MSUBrainClientImpl *)self init];
  result = 0;
  if (a5)
  {
    if (v10)
    {
      v10->_brainVersion = a4;
      v10->_brainUUID = a3;
      v10->_serverEndpoint = a5;
      v10->_delegate = a6;
      v12 = a3;
      v13 = v10->_brainVersion;
      v14 = v10->_serverEndpoint;
      return v10;
    }
  }

  return result;
}

- (void)dealloc
{
  [(MSUBrainClientImpl *)self _invalidateConnection];
  self->_delegate = 0;

  v3.receiver = self;
  v3.super_class = MSUBrainClientImpl;
  [(MSUBrainClientImpl *)&v3 dealloc];
}

- (void)_invalidateConnection_nolock
{
  serverConnection = self->_serverConnection;
  if (serverConnection)
  {
    [(NSXPCConnection *)serverConnection setInvalidationHandler:0];
    [(NSXPCConnection *)self->_serverConnection setInterruptionHandler:0];
    [(NSXPCConnection *)self->_serverConnection invalidate];

    self->_serverConnection = 0;
    self->_connected = 0;
  }
}

- (void)_invalidateConnection
{
  objc_sync_enter(self);
  [(MSUBrainClientImpl *)self _invalidateConnection_nolock];

  objc_sync_exit(self);
}

- (void)_connectToServerIfNecessary_nolock
{
  if (!self->_connected)
  {
    [(MSUBrainClientImpl *)self _invalidateConnection];
    if (self->_serverEndpoint)
    {
      self->_serverConnection = [[NSXPCConnection alloc] initWithListenerEndpoint:self->_serverEndpoint];
    }

    v3 = dispatch_queue_create([objc_msgSend(@"com.apple.MobileSoftwareUpdate.UpdateBrainService2" stringByAppendingString:{@".connectionQueue", "UTF8String"}], &_dispatch_queue_attr_concurrent);
    [(NSXPCConnection *)self->_serverConnection _setQueue:v3];
    dispatch_release(v3);
    v4 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___MSUBrainNSXPCInterface];
    v5 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___MSUBrainDelegateNSXPCInterface];
    v6 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___MSURemoteableBlockNSXPCInterface];
    [(NSXPCInterface *)v4 setInterface:v6 forSelector:"_nsxpcPreflightUpdate:options:progress:completion:" argumentIndex:2 ofReply:0];
    [(NSXPCInterface *)v4 setInterface:v6 forSelector:"_nsxpcPrepareUpdate:options:progress:completion:" argumentIndex:2 ofReply:0];
    [(NSXPCInterface *)v4 setInterface:v6 forSelector:"_nsxpcCommitUnlockOnceToken:progress:completion:" argumentIndex:1 ofReply:0];
    [(NSXPCInterface *)v4 setInterface:v6 forSelector:"_nsxpcApplyUpdate:progress:completion:" argumentIndex:1 ofReply:0];
    [(NSXPCConnection *)self->_serverConnection setRemoteObjectInterface:v4];
    if (self->_delegate)
    {
      [(NSXPCConnection *)self->_serverConnection setExportedInterface:v5];
      [(NSXPCConnection *)self->_serverConnection setExportedObject:self->_delegate];
      delegate = self->_delegate;
    }

    else
    {
      delegate = 0;
    }

    v11[0] = 0;
    v11[1] = v11;
    v11[2] = 0x3052000000;
    v11[3] = __Block_byref_object_copy__4;
    v11[4] = __Block_byref_object_dispose__4;
    v11[5] = self;
    v10[0] = 0;
    v10[1] = v10;
    v10[2] = 0x3052000000;
    v10[3] = __Block_byref_object_copy__4;
    v10[4] = __Block_byref_object_dispose__4;
    v10[5] = delegate;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = __56__MSUBrainClientImpl__connectToServerIfNecessary_nolock__block_invoke;
    v9[3] = &unk_100049D08;
    v9[4] = v11;
    v9[5] = v10;
    [(NSXPCConnection *)self->_serverConnection setInvalidationHandler:v9, _NSConcreteStackBlock, 3221225472, __56__MSUBrainClientImpl__connectToServerIfNecessary_nolock__block_invoke_94, &unk_100049D08, v11, v10];
    [(NSXPCConnection *)self->_serverConnection setInterruptionHandler:&v8];
    [(NSXPCConnection *)self->_serverConnection resume];
    self->_connected = 1;
    _Block_object_dispose(v10, 8);
    _Block_object_dispose(v11, 8);
  }
}

uint64_t __56__MSUBrainClientImpl__connectToServerIfNecessary_nolock__block_invoke(uint64_t a1)
{
  v2 = msuSharedLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = @"com.apple.MobileSoftwareUpdate.UpdateBrainService2";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "connection to %@ invalidated", &v4, 0xCu);
  }

  [*(*(*(a1 + 32) + 8) + 40) noteConnectionDropped];
  result = *(*(*(a1 + 40) + 8) + 40);
  if (result)
  {
    result = objc_opt_respondsToSelector();
    if (result)
    {
      return [*(*(*(a1 + 40) + 8) + 40) connectionInvalidated];
    }
  }

  return result;
}

uint64_t __56__MSUBrainClientImpl__connectToServerIfNecessary_nolock__block_invoke_94(uint64_t a1)
{
  v2 = msuSharedLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __56__MSUBrainClientImpl__connectToServerIfNecessary_nolock__block_invoke_94_cold_1(v2);
  }

  [*(*(*(a1 + 32) + 8) + 40) noteConnectionDropped];
  result = *(*(*(a1 + 40) + 8) + 40);
  if (result)
  {
    result = objc_opt_respondsToSelector();
    if (result)
    {
      return [*(*(*(a1 + 40) + 8) + 40) connectionInterrupted];
    }
  }

  return result;
}

- (void)connectToServerIfNecessary
{
  objc_sync_enter(self);
  [(MSUBrainClientImpl *)self _connectToServerIfNecessary_nolock];

  objc_sync_exit(self);
}

- (void)noteConnectionDropped
{
  objc_sync_enter(self);
  self->_connected = 0;

  objc_sync_exit(self);
}

- (void)handleConnectionError:(id)a3 method:(const char *)a4 handler:(id)a5
{
  if (a3)
  {
    v9 = msuSharedLogger();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (a4)
    {
      if (v10)
      {
        [MSUBrainClientImpl handleConnectionError:a4 method:a3 handler:v9];
      }
    }

    else if (v10)
    {
      [MSUBrainClientImpl handleConnectionError:a3 method:v9 handler:?];
    }

    [(MSUBrainClientImpl *)self _invalidateConnection];
    (*(a5 + 2))(a5);
  }
}

id __66__MSUBrainClientImpl_preflightUpdate_options_progress_completion___block_invoke(void *a1, uint64_t a2)
{
  v2 = a1[6];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __66__MSUBrainClientImpl_preflightUpdate_options_progress_completion___block_invoke_2;
  v6[3] = &unk_100049D30;
  v3 = a1[4];
  v4 = a1[5];
  v6[4] = a2;
  v6[5] = v4;
  return [v3 handleConnectionError:a2 method:v2 handler:v6];
}

- (void)prepareUpdate:(id)a3 options:(id)a4 progress:(id)a5 completion:(id)a6
{
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = __64__MSUBrainClientImpl_prepareUpdate_options_progress_completion___block_invoke;
  v15[3] = &unk_100049D58;
  v15[5] = a6;
  v15[6] = "[MSUBrainClientImpl prepareUpdate:options:progress:completion:]";
  v15[4] = self;
  v10 = [(MSUBrainClientImpl *)self _remoteInterfaceWithErrorHandler:v15];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = __64__MSUBrainClientImpl_prepareUpdate_options_progress_completion___block_invoke_3;
  v14[3] = &unk_100049D80;
  v14[4] = a5;
  v11 = [[MSURemoteableBlock alloc] initWithProgressBlock:v14];
  v12 = v11;
  if (v10)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = __64__MSUBrainClientImpl_prepareUpdate_options_progress_completion___block_invoke_4;
    v13[3] = &unk_100049DA8;
    v13[4] = a6;
    [v10 _nsxpcPrepareUpdate:a3 options:a4 progress:v11 completion:v13];
  }

  else
  {
    v16 = NSDebugDescriptionErrorKey;
    v17 = @"no remote object connection";
    (*(a6 + 2))(a6, [NSError errorWithDomain:@"MobileSoftwareUpdateErrorDomain" code:1364 userInfo:[NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1]]);
  }
}

id __64__MSUBrainClientImpl_prepareUpdate_options_progress_completion___block_invoke(void *a1, uint64_t a2)
{
  v2 = a1[6];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __64__MSUBrainClientImpl_prepareUpdate_options_progress_completion___block_invoke_2;
  v6[3] = &unk_100049D30;
  v3 = a1[4];
  v4 = a1[5];
  v6[4] = a2;
  v6[5] = v4;
  return [v3 handleConnectionError:a2 method:v2 handler:v6];
}

- (void)commitUnlockOnceToken:(id)a3 progress:(id)a4 completion:(id)a5
{
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = __64__MSUBrainClientImpl_commitUnlockOnceToken_progress_completion___block_invoke;
  v13[3] = &unk_100049D58;
  v13[5] = a5;
  v13[6] = "[MSUBrainClientImpl commitUnlockOnceToken:progress:completion:]";
  v13[4] = self;
  v8 = [(MSUBrainClientImpl *)self _remoteInterfaceWithErrorHandler:v13];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = __64__MSUBrainClientImpl_commitUnlockOnceToken_progress_completion___block_invoke_3;
  v12[3] = &unk_100049D80;
  v12[4] = a4;
  v9 = [[MSURemoteableBlock alloc] initWithProgressBlock:v12];
  v10 = v9;
  if (v8)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = __64__MSUBrainClientImpl_commitUnlockOnceToken_progress_completion___block_invoke_4;
    v11[3] = &unk_100049DA8;
    v11[4] = a5;
    [v8 _nsxpcCommitUnlockOnceToken:a3 progress:v9 completion:v11];
  }

  else
  {
    v14 = NSDebugDescriptionErrorKey;
    v15 = @"no remote object connection";
    (*(a5 + 2))(a5, [NSError errorWithDomain:@"MobileSoftwareUpdateErrorDomain" code:1364 userInfo:[NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1]]);
  }
}

id __64__MSUBrainClientImpl_commitUnlockOnceToken_progress_completion___block_invoke(void *a1, uint64_t a2)
{
  v2 = a1[6];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __64__MSUBrainClientImpl_commitUnlockOnceToken_progress_completion___block_invoke_2;
  v6[3] = &unk_100049D30;
  v3 = a1[4];
  v4 = a1[5];
  v6[4] = a2;
  v6[5] = v4;
  return [v3 handleConnectionError:a2 method:v2 handler:v6];
}

- (void)applyUpdate:(id)a3 progress:(id)a4 completion:(id)a5
{
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = __54__MSUBrainClientImpl_applyUpdate_progress_completion___block_invoke;
  v13[3] = &unk_100049D58;
  v13[5] = a5;
  v13[6] = "[MSUBrainClientImpl applyUpdate:progress:completion:]";
  v13[4] = self;
  v8 = [(MSUBrainClientImpl *)self _remoteInterfaceWithErrorHandler:v13];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = __54__MSUBrainClientImpl_applyUpdate_progress_completion___block_invoke_3;
  v12[3] = &unk_100049D80;
  v12[4] = a4;
  v9 = [[MSURemoteableBlock alloc] initWithProgressBlock:v12];
  v10 = v9;
  if (v8)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = __54__MSUBrainClientImpl_applyUpdate_progress_completion___block_invoke_4;
    v11[3] = &unk_100049DA8;
    v11[4] = a5;
    [v8 _nsxpcApplyUpdate:a3 progress:v9 completion:v11];
  }

  else
  {
    v14 = NSDebugDescriptionErrorKey;
    v15 = @"no remote object connection";
    (*(a5 + 2))(a5, [NSError errorWithDomain:@"MobileSoftwareUpdateErrorDomain" code:1364 userInfo:[NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1]]);
  }
}

id __54__MSUBrainClientImpl_applyUpdate_progress_completion___block_invoke(void *a1, uint64_t a2)
{
  v2 = a1[6];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __54__MSUBrainClientImpl_applyUpdate_progress_completion___block_invoke_2;
  v6[3] = &unk_100049D30;
  v3 = a1[4];
  v4 = a1[5];
  v6[4] = a2;
  v6[5] = v4;
  return [v3 handleConnectionError:a2 method:v2 handler:v6];
}

id __52__MSUBrainClientImpl_cancelUpdate_purge_completion___block_invoke(void *a1, uint64_t a2)
{
  v2 = a1[6];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __52__MSUBrainClientImpl_cancelUpdate_purge_completion___block_invoke_2;
  v6[3] = &unk_100049D30;
  v3 = a1[4];
  v4 = a1[5];
  v6[4] = a2;
  v6[5] = v4;
  return [v3 handleConnectionError:a2 method:v2 handler:v6];
}

id __87__MSUBrainClientImpl_calculateUpdateStorageRequirements_attributes_options_info_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v5 = _NSConcreteStackBlock;
  v6 = 3221225472;
  v7 = __87__MSUBrainClientImpl_calculateUpdateStorageRequirements_attributes_options_info_error___block_invoke_2;
  v8 = &unk_100049DD0;
  v10 = *(a1 + 40);
  v9 = a2;
  v3 = *(a1 + 64);
  v11 = *(a1 + 56);
  v12 = v3;
  return [v2 handleConnectionError:a2 method:? handler:?];
}

void __87__MSUBrainClientImpl_calculateUpdateStorageRequirements_attributes_options_info_error___block_invoke_2(uint64_t a1)
{
  if (*(*(*(a1 + 40) + 8) + 24))
  {
    v2 = msuSharedLogger();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __87__MSUBrainClientImpl_calculateUpdateStorageRequirements_attributes_options_info_error___block_invoke_2_cold_1(a1, v2);
    }
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 40) = [*(a1 + 32) copy];
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }
}

void __87__MSUBrainClientImpl_calculateUpdateStorageRequirements_attributes_options_info_error___block_invoke_99(void *a1, void *a2, void *a3)
{
  if (*(*(a1[4] + 8) + 24))
  {
    v6 = msuSharedLogger();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = a1[9];
      v10 = 136315650;
      v11 = v7;
      v12 = 2112;
      v13 = a2;
      v14 = 2112;
      v15 = a3;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s: method call already abandoned. info=%@ error=%@", &v10, 0x20u);
    }
  }

  else
  {
    if (a3)
    {
      v8 = [a3 copy];
      v9 = 7;
    }

    else
    {
      *(*(a1[5] + 8) + 24) = 1;
      v8 = [a2 copy];
      v9 = 6;
    }

    *(*(a1[v9] + 8) + 40) = v8;
    *(*(a1[8] + 8) + 24) = 1;
  }
}

void __56__MSUBrainClientImpl__connectToServerIfNecessary_nolock__block_invoke_94_cold_1(os_log_t log)
{
  v1 = 138412290;
  v2 = @"com.apple.MobileSoftwareUpdate.UpdateBrainService2";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "connection to %@ interrupted", &v1, 0xCu);
}

- (void)handleConnectionError:(uint64_t)a1 method:(uint64_t)a2 handler:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 136315394;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s - connection error: %@", &v3, 0x16u);
}

- (void)handleConnectionError:(uint64_t)a1 method:(NSObject *)a2 handler:.cold.2(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "connection error: %@", &v2, 0xCu);
}

void __87__MSUBrainClientImpl_calculateUpdateStorageRequirements_attributes_options_info_error___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 64);
  v3 = *(a1 + 32);
  v4 = 136315394;
  v5 = v2;
  v6 = 2112;
  v7 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%s: method call already abandoned. error=%@", &v4, 0x16u);
}

@end