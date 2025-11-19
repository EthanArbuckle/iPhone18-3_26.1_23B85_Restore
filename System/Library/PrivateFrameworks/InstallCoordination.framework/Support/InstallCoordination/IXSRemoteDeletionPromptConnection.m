@interface IXSRemoteDeletionPromptConnection
- (IXSRemoteDeletionPromptConnection)init;
- (void)_communicateFailureForHandle:(id)a3 withError:(id)a4;
- (void)_discardRemoteAlertHandle:(id)a3;
- (void)dealloc;
- (void)dismissAlert;
- (void)remoteAlertHandle:(id)a3 didInvalidateWithError:(id)a4;
- (void)remoteAlertHandleDidActivate:(id)a3;
- (void)remoteAlertHandleDidDeactivate:(id)a3;
- (void)startConnectionWithConfig:(id)a3 alertDefinition:(id)a4 completion:(id)a5;
@end

@implementation IXSRemoteDeletionPromptConnection

- (IXSRemoteDeletionPromptConnection)init
{
  v8.receiver = self;
  v8.super_class = IXSRemoteDeletionPromptConnection;
  v2 = [(IXSRemoteDeletionPromptConnection *)&v8 init];
  v3 = v2;
  if (v2)
  {
    serviceConnection = v2->_serviceConnection;
    v2->_serviceConnection = 0;

    listenerConnection = v3->_listenerConnection;
    v3->_listenerConnection = 0;

    *&v3->_lastDismissWasSwipeDown = 0;
    completion = v3->_completion;
    v3->_completion = 0;
  }

  return v3;
}

- (void)startConnectionWithConfig:(id)a3 alertDefinition:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x3032000000;
  v32[3] = sub_10009560C;
  v32[4] = sub_10009561C;
  v33 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_10009560C;
  v30 = sub_10009561C;
  v31 = 0;
  v11 = &_dispatch_main_q;
  v12 = xpc_connection_create(0, &_dispatch_main_q);

  v18 = _NSConcreteStackBlock;
  v19 = 3221225472;
  v20 = sub_100095624;
  v21 = &unk_100103A40;
  v22 = self;
  v13 = v10;
  v23 = v13;
  v24 = v32;
  v25 = &v26;
  xpc_connection_set_event_handler(v12, &v18);
  xpc_connection_activate(v12);
  v14 = xpc_endpoint_create(v12);
  [(IXSRemoteDeletionPromptConnection *)self setListenerConnection:v12, v18, v19, v20, v21, v22];
  [v8 setXpcEndpoint:v14];
  v15 = [SBSRemoteAlertHandle newHandleWithDefinition:v9 configurationContext:v8];
  v16 = v27[5];
  v27[5] = v15;

  v17 = objc_alloc_init(SBSRemoteAlertActivationContext);
  [v27[5] registerObserver:self];
  [v27[5] activateWithContext:v17];
  [(IXSRemoteDeletionPromptConnection *)self setCompletion:v13];

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(v32, 8);
}

- (void)_communicateFailureForHandle:(id)a3 withError:(id)a4
{
  v6 = a4;
  [(IXSRemoteDeletionPromptConnection *)self _discardRemoteAlertHandle:a3];
  v7 = [(IXSRemoteDeletionPromptConnection *)self completion];
  v7[2](v7, 5, v6);
}

- (void)_discardRemoteAlertHandle:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    [v4 invalidate];
    [v5 unregisterObserver:self];
  }

  else
  {
    v6 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1000A8B78();
    }
  }
}

- (void)dismissAlert
{
  v3 = [(IXSRemoteDeletionPromptConnection *)self serviceConnection];
  if (v3)
  {
    keys = "invalidate";
    v6 = xpc_BOOL_create(![(IXSRemoteDeletionPromptConnection *)self lastDismissWasSwipeDown]);
    v4 = xpc_dictionary_create(&keys, &v6, 1uLL);
    xpc_connection_send_message(v3, v4);
  }

  else
  {
    v5 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1000A8BF8();
    }
  }
}

- (void)dealloc
{
  listenerConnection = self->_listenerConnection;
  if (listenerConnection)
  {
    xpc_connection_cancel(listenerConnection);
    v4 = self->_listenerConnection;
    self->_listenerConnection = 0;
  }

  serviceConnection = self->_serviceConnection;
  if (serviceConnection)
  {
    xpc_connection_cancel(serviceConnection);
    v6 = self->_serviceConnection;
    self->_serviceConnection = 0;
  }

  v7.receiver = self;
  v7.super_class = IXSRemoteDeletionPromptConnection;
  [(IXSRemoteDeletionPromptConnection *)&v7 dealloc];
}

- (void)remoteAlertHandleDidActivate:(id)a3
{
  v3 = sub_1000031B0(off_100121958);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[IXSRemoteDeletionPromptConnection remoteAlertHandleDidActivate:]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s: Remote alert handle activated", &v4, 0xCu);
  }
}

- (void)remoteAlertHandleDidDeactivate:(id)a3
{
  v4 = a3;
  if ([(IXSRemoteDeletionPromptConnection *)self wasCleanExit])
  {
    [(IXSRemoteDeletionPromptConnection *)self _discardRemoteAlertHandle:v4];
    v5 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 136315138;
      *&v8[4] = "[IXSRemoteDeletionPromptConnection remoteAlertHandleDidDeactivate:]";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: Remote alert handle deactivated", v8, 0xCu);
    }
  }

  else
  {
    v6 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1000A8C78();
    }

    v5 = sub_1000405FC("[IXSRemoteDeletionPromptConnection remoteAlertHandleDidDeactivate:]", 180, @"IXErrorDomain", 1uLL, 0, 0, @"Remote alert deactivated without invalidating alert handle", v7, *v8);
    [(IXSRemoteDeletionPromptConnection *)self _communicateFailureForHandle:v4 withError:v5];
  }
}

- (void)remoteAlertHandle:(id)a3 didInvalidateWithError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(IXSRemoteDeletionPromptConnection *)self wasCleanExit];
  v9 = sub_1000031B0(off_100121958);
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 136315138;
      *&v13[4] = "[IXSRemoteDeletionPromptConnection remoteAlertHandle:didInvalidateWithError:]";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s: Remote alert handle invalidated", v13, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000A8CFC();
    }

    v12 = sub_1000405FC("[IXSRemoteDeletionPromptConnection remoteAlertHandle:didInvalidateWithError:]", 191, @"IXErrorDomain", 1uLL, v7, 0, @"Remote alert was invalidated unexpectedly", v11, *v13);

    [(IXSRemoteDeletionPromptConnection *)self _communicateFailureForHandle:v6 withError:v12];
    v7 = v12;
  }
}

@end