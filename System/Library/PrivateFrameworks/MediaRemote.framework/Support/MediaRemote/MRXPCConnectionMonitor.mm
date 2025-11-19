@interface MRXPCConnectionMonitor
- (BOOL)_canSendMessage;
- (MRXPCConnectionMonitor)initWithConnection:(id)a3 label:(id)a4;
- (MRXPCConnectionMonitor)initWithXPCConnection:(id)a3 label:(id)a4;
- (MRXPCConnectionMonitorDelegate)delegate;
- (NSString)label;
- (id)_initWithLabel:(id)a3;
- (id)debugDescription;
- (id)description;
- (void)_checkConnectionStatus;
- (void)_onCalloutQueue_notifyStatusDidChange:(unint64_t)a3;
- (void)canSendMessage:(id)a3;
@end

@implementation MRXPCConnectionMonitor

- (BOOL)_canSendMessage
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_currentMessageCount + 1;
  v2->_currentMessageCount = v3;
  v4 = +[MRUserSettings currentSettings];
  v5 = [v4 checkXPCConnectionStatusDefaultInterval];

  v6 = +[NSDate now];
  lastMessageSentDate = v2->_lastMessageSentDate;
  v2->_lastMessageSentDate = v6;

  status = v2->_status;
  ++v2->_totalMessageCount;
  objc_sync_exit(v2);

  if (v3 == v5)
  {
    [(MRXPCConnectionMonitor *)v2 _checkConnectionStatus];
  }

  return status == 0;
}

- (void)_checkConnectionStatus
{
  objc_initWeak(&location, self);
  v3 = [MRBlockGuard alloc];
  v4 = +[MRUserSettings currentSettings];
  [v4 checkXPCConnectionStatusDefaultResponseTimeout];
  v6 = v5;
  calloutQueue = self->_calloutQueue;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_10015BC30;
  v25[3] = &unk_1004B7D50;
  objc_copyWeak(&v26, &location);
  v8 = [v3 initWithTimeout:@"XPCConnectionBarrier" reason:calloutQueue queue:v25 handler:v6];

  v19 = _NSConcreteStackBlock;
  v20 = 3221225472;
  v21 = sub_100034E04;
  v22 = &unk_1004B68F0;
  v23 = self;
  v9 = v8;
  v24 = v9;
  v10 = objc_retainBlock(&v19);
  v11 = self;
  objc_sync_enter(v11);
  if (v11->_pendingBarrierCompletion)
  {
    objc_sync_exit(v11);
  }

  else
  {
    v11->_pendingBarrierCompletion = 1;
    v12 = [NSDate now:v19];
    lastStatusCheckDate = v11->_lastStatusCheckDate;
    v11->_lastStatusCheckDate = v12;

    objc_sync_exit(v11);
    v14 = +[MRUserSettings currentSettings];
    v15 = [v14 verboseConnectionMonitorLogging];

    if (v15)
    {
      v16 = _MRLogForCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v29 = v11;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[ConnectionMonitor] Checking connection %@", buf, 0xCu);
      }
    }

    connection = v11->_connection;
    if (connection)
    {
      [(NSXPCConnection *)connection scheduleSendBarrierBlock:v10];
    }

    else
    {
      connection_t = v11->_connection_t;
      if (connection_t)
      {
        xpc_connection_send_barrier(connection_t, v10);
      }
    }
  }

  objc_destroyWeak(&v26);
  objc_destroyWeak(&location);
}

- (MRXPCConnectionMonitor)initWithConnection:(id)a3 label:(id)a4
{
  v7 = a3;
  v8 = [(MRXPCConnectionMonitor *)self _initWithLabel:a4];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(v8 + 4, a3);
    v9->_pid = [v7 processIdentifier];
    if (v7)
    {
      [v7 auditToken];
    }

    else
    {
      memset(v13, 0, sizeof(v13));
    }

    v10 = sub_100007074(v13);
    bundleID = v9->_bundleID;
    v9->_bundleID = v10;
  }

  return v9;
}

- (MRXPCConnectionMonitor)initWithXPCConnection:(id)a3 label:(id)a4
{
  v7 = a3;
  v8 = [(MRXPCConnectionMonitor *)self _initWithLabel:a4];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(v8 + 5, a3);
    v9->_pid = xpc_connection_get_pid(v7);
    xpc_connection_get_audit_token();
    memset(v13, 0, sizeof(v13));
    v10 = sub_100007074(v13);
    bundleID = v9->_bundleID;
    v9->_bundleID = v10;
  }

  return v9;
}

- (id)_initWithLabel:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = MRXPCConnectionMonitor;
  v6 = [(MRXPCConnectionMonitor *)&v11 init];
  if (v6)
  {
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.apple.MediaRemote.connectionMonitor", v7);
    calloutQueue = v6->_calloutQueue;
    v6->_calloutQueue = v8;

    objc_storeStrong(&v6->_label, a3);
  }

  return v6;
}

- (id)description
{
  v3 = [NSString alloc];
  v4 = objc_opt_class();
  v5 = [(MRXPCConnectionMonitor *)self label];
  v6 = [v3 initWithFormat:@"<%@ %p : %@>", v4, self, v5];

  return v6;
}

- (id)debugDescription
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [NSMutableString stringWithFormat:@"<%@ %p {\n", objc_opt_class(), v2];
  status = v2->_status;
  v5 = @"?";
  if (status == 1)
  {
    v5 = @"Suspended";
  }

  if (status)
  {
    v6 = v5;
  }

  else
  {
    v6 = @"Running";
  }

  v7 = v6;
  [v3 appendFormat:@"    status = %@\n", v7];

  [v3 appendFormat:@"    currentMessageCount = %lu\n", v2->_currentMessageCount];
  [v3 appendFormat:@"    totalMessageCount = %lu\n", v2->_totalMessageCount];
  lastMessageSentDate = v2->_lastMessageSentDate;
  if (lastMessageSentDate)
  {
    [(NSDate *)lastMessageSentDate timeIntervalSinceNow];
    [v3 appendFormat:@"    lastMessageSent = %f seconds ago\n", -v9];
  }

  lastStatusCheckDate = v2->_lastStatusCheckDate;
  if (lastStatusCheckDate)
  {
    [(NSDate *)lastStatusCheckDate timeIntervalSinceNow];
    [v3 appendFormat:@"    lastStatusCheck = %f seconds ago\n", -v11];
  }

  lastStatusChangeDate = v2->_lastStatusChangeDate;
  if (lastStatusChangeDate)
  {
    [(NSDate *)lastStatusChangeDate timeIntervalSinceNow];
    [v3 appendFormat:@"    lastStatusChange = %f seconds ago\n", -v13];
  }

  if (v2->_pendingBarrierCompletion)
  {
    [v3 appendString:@"    pendingBarrierCompletion = YES\n"];
  }

  v14 = +[MRUserSettings currentSettings];
  v15 = [v14 checkXPCConnectionStatusDefaultInterval];
  v16 = +[MRUserSettings currentSettings];
  [v16 checkXPCConnectionStatusDefaultResponseTimeout];
  [v3 appendFormat:@"    params = {%lu x %f}\n", v15, v17];

  [v3 appendFormat:@"}>\n"];
  objc_sync_exit(v2);

  return v3;
}

- (NSString)label
{
  v2 = [[NSString alloc] initWithFormat:@"%@:%@-%d", self->_label, self->_bundleID, self->_pid];

  return v2;
}

- (void)canSendMessage:(id)a3
{
  v4 = a3;
  calloutQueue = self->_calloutQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10015BBEC;
  v7[3] = &unk_1004B8B50;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(calloutQueue, v7);
}

- (void)_onCalloutQueue_notifyStatusDidChange:(unint64_t)a3
{
  dispatch_assert_queue_V2(self->_calloutQueue);
  v5 = self;
  objc_sync_enter(v5);
  v6 = _MRLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"?";
    if (a3 == 1)
    {
      v7 = @"Suspended";
    }

    if (!a3)
    {
      v7 = @"Running";
    }

    v8 = v7;
    [(NSDate *)v5->_lastStatusChangeDate timeIntervalSinceNow];
    *buf = 138412802;
    v29 = v8;
    v30 = 2112;
    v31 = v5;
    v32 = 2048;
    v33 = -v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[ConnectionMonitor] Updated connectionStatus = %@ for %@ after %lf seconds", buf, 0x20u);
  }

  v5->_status = a3;
  v10 = +[NSDate now];
  lastStatusChangeDate = v5->_lastStatusChangeDate;
  v5->_lastStatusChangeDate = v10;

  WeakRetained = objc_loadWeakRetained(&v5->_delegate);
  objc_sync_exit(v5);

  if (a3)
  {
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained connectionDidInvalidate:v5];
    }
  }

  else
  {
    v13 = +[NSDate now];
    v14 = [MRDTaskAssertion alloc];
    v15 = [(MRXPCConnectionMonitor *)v5 pid];
    v16 = [(MRXPCConnectionMonitor *)v5 bundleID];
    v17 = [(MRXPCConnectionMonitor *)v5 label];
    v18 = [(MRDTaskAssertion *)v14 initWithType:5 pid:v15 bundleID:v16 name:v17];

    if (objc_opt_respondsToSelector())
    {
      [WeakRetained connectionDidResume:v5];
    }

    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_10015BF78;
    v24[3] = &unk_1004B69D0;
    v19 = v18;
    v25 = v19;
    v26 = v5;
    v20 = v13;
    v27 = v20;
    v21 = objc_retainBlock(v24);
    connection = v5->_connection;
    if (connection)
    {
      [(NSXPCConnection *)connection scheduleSendBarrierBlock:v21];
    }

    else
    {
      connection_t = v5->_connection_t;
      if (connection_t)
      {
        xpc_connection_send_barrier(connection_t, v21);
      }
    }
  }
}

- (MRXPCConnectionMonitorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end