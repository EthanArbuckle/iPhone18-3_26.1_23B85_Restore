@interface MRXPCConnectionMonitor
- (BOOL)_canSendMessage;
- (MRXPCConnectionMonitor)initWithConnection:(id)connection label:(id)label;
- (MRXPCConnectionMonitor)initWithXPCConnection:(id)connection label:(id)label;
- (MRXPCConnectionMonitorDelegate)delegate;
- (NSString)label;
- (id)_initWithLabel:(id)label;
- (id)debugDescription;
- (id)description;
- (void)_checkConnectionStatus;
- (void)_onCalloutQueue_notifyStatusDidChange:(unint64_t)change;
- (void)canSendMessage:(id)message;
@end

@implementation MRXPCConnectionMonitor

- (BOOL)_canSendMessage
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_currentMessageCount + 1;
  selfCopy->_currentMessageCount = v3;
  v4 = +[MRUserSettings currentSettings];
  checkXPCConnectionStatusDefaultInterval = [v4 checkXPCConnectionStatusDefaultInterval];

  v6 = +[NSDate now];
  lastMessageSentDate = selfCopy->_lastMessageSentDate;
  selfCopy->_lastMessageSentDate = v6;

  status = selfCopy->_status;
  ++selfCopy->_totalMessageCount;
  objc_sync_exit(selfCopy);

  if (v3 == checkXPCConnectionStatusDefaultInterval)
  {
    [(MRXPCConnectionMonitor *)selfCopy _checkConnectionStatus];
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
  selfCopy = self;
  v9 = v8;
  v24 = v9;
  v10 = objc_retainBlock(&v19);
  selfCopy2 = self;
  objc_sync_enter(selfCopy2);
  if (selfCopy2->_pendingBarrierCompletion)
  {
    objc_sync_exit(selfCopy2);
  }

  else
  {
    selfCopy2->_pendingBarrierCompletion = 1;
    v12 = [NSDate now:v19];
    lastStatusCheckDate = selfCopy2->_lastStatusCheckDate;
    selfCopy2->_lastStatusCheckDate = v12;

    objc_sync_exit(selfCopy2);
    v14 = +[MRUserSettings currentSettings];
    verboseConnectionMonitorLogging = [v14 verboseConnectionMonitorLogging];

    if (verboseConnectionMonitorLogging)
    {
      v16 = _MRLogForCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v29 = selfCopy2;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[ConnectionMonitor] Checking connection %@", buf, 0xCu);
      }
    }

    connection = selfCopy2->_connection;
    if (connection)
    {
      [(NSXPCConnection *)connection scheduleSendBarrierBlock:v10];
    }

    else
    {
      connection_t = selfCopy2->_connection_t;
      if (connection_t)
      {
        xpc_connection_send_barrier(connection_t, v10);
      }
    }
  }

  objc_destroyWeak(&v26);
  objc_destroyWeak(&location);
}

- (MRXPCConnectionMonitor)initWithConnection:(id)connection label:(id)label
{
  connectionCopy = connection;
  v8 = [(MRXPCConnectionMonitor *)self _initWithLabel:label];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(v8 + 4, connection);
    v9->_pid = [connectionCopy processIdentifier];
    if (connectionCopy)
    {
      [connectionCopy auditToken];
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

- (MRXPCConnectionMonitor)initWithXPCConnection:(id)connection label:(id)label
{
  connectionCopy = connection;
  v8 = [(MRXPCConnectionMonitor *)self _initWithLabel:label];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(v8 + 5, connection);
    v9->_pid = xpc_connection_get_pid(connectionCopy);
    xpc_connection_get_audit_token();
    memset(v13, 0, sizeof(v13));
    v10 = sub_100007074(v13);
    bundleID = v9->_bundleID;
    v9->_bundleID = v10;
  }

  return v9;
}

- (id)_initWithLabel:(id)label
{
  labelCopy = label;
  v11.receiver = self;
  v11.super_class = MRXPCConnectionMonitor;
  v6 = [(MRXPCConnectionMonitor *)&v11 init];
  if (v6)
  {
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.apple.MediaRemote.connectionMonitor", v7);
    calloutQueue = v6->_calloutQueue;
    v6->_calloutQueue = v8;

    objc_storeStrong(&v6->_label, label);
  }

  return v6;
}

- (id)description
{
  v3 = [NSString alloc];
  v4 = objc_opt_class();
  label = [(MRXPCConnectionMonitor *)self label];
  v6 = [v3 initWithFormat:@"<%@ %p : %@>", v4, self, label];

  return v6;
}

- (id)debugDescription
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  selfCopy = [NSMutableString stringWithFormat:@"<%@ %p {\n", objc_opt_class(), selfCopy];
  status = selfCopy->_status;
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
  [selfCopy appendFormat:@"    status = %@\n", v7];

  [selfCopy appendFormat:@"    currentMessageCount = %lu\n", selfCopy->_currentMessageCount];
  [selfCopy appendFormat:@"    totalMessageCount = %lu\n", selfCopy->_totalMessageCount];
  lastMessageSentDate = selfCopy->_lastMessageSentDate;
  if (lastMessageSentDate)
  {
    [(NSDate *)lastMessageSentDate timeIntervalSinceNow];
    [selfCopy appendFormat:@"    lastMessageSent = %f seconds ago\n", -v9];
  }

  lastStatusCheckDate = selfCopy->_lastStatusCheckDate;
  if (lastStatusCheckDate)
  {
    [(NSDate *)lastStatusCheckDate timeIntervalSinceNow];
    [selfCopy appendFormat:@"    lastStatusCheck = %f seconds ago\n", -v11];
  }

  lastStatusChangeDate = selfCopy->_lastStatusChangeDate;
  if (lastStatusChangeDate)
  {
    [(NSDate *)lastStatusChangeDate timeIntervalSinceNow];
    [selfCopy appendFormat:@"    lastStatusChange = %f seconds ago\n", -v13];
  }

  if (selfCopy->_pendingBarrierCompletion)
  {
    [selfCopy appendString:@"    pendingBarrierCompletion = YES\n"];
  }

  v14 = +[MRUserSettings currentSettings];
  checkXPCConnectionStatusDefaultInterval = [v14 checkXPCConnectionStatusDefaultInterval];
  v16 = +[MRUserSettings currentSettings];
  [v16 checkXPCConnectionStatusDefaultResponseTimeout];
  [selfCopy appendFormat:@"    params = {%lu x %f}\n", checkXPCConnectionStatusDefaultInterval, v17];

  [selfCopy appendFormat:@"}>\n"];
  objc_sync_exit(selfCopy);

  return selfCopy;
}

- (NSString)label
{
  v2 = [[NSString alloc] initWithFormat:@"%@:%@-%d", self->_label, self->_bundleID, self->_pid];

  return v2;
}

- (void)canSendMessage:(id)message
{
  messageCopy = message;
  calloutQueue = self->_calloutQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10015BBEC;
  v7[3] = &unk_1004B8B50;
  v7[4] = self;
  v8 = messageCopy;
  v6 = messageCopy;
  dispatch_async(calloutQueue, v7);
}

- (void)_onCalloutQueue_notifyStatusDidChange:(unint64_t)change
{
  dispatch_assert_queue_V2(self->_calloutQueue);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = _MRLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"?";
    if (change == 1)
    {
      v7 = @"Suspended";
    }

    if (!change)
    {
      v7 = @"Running";
    }

    v8 = v7;
    [(NSDate *)selfCopy->_lastStatusChangeDate timeIntervalSinceNow];
    *buf = 138412802;
    v29 = v8;
    v30 = 2112;
    v31 = selfCopy;
    v32 = 2048;
    v33 = -v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[ConnectionMonitor] Updated connectionStatus = %@ for %@ after %lf seconds", buf, 0x20u);
  }

  selfCopy->_status = change;
  v10 = +[NSDate now];
  lastStatusChangeDate = selfCopy->_lastStatusChangeDate;
  selfCopy->_lastStatusChangeDate = v10;

  WeakRetained = objc_loadWeakRetained(&selfCopy->_delegate);
  objc_sync_exit(selfCopy);

  if (change)
  {
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained connectionDidInvalidate:selfCopy];
    }
  }

  else
  {
    v13 = +[NSDate now];
    v14 = [MRDTaskAssertion alloc];
    v15 = [(MRXPCConnectionMonitor *)selfCopy pid];
    bundleID = [(MRXPCConnectionMonitor *)selfCopy bundleID];
    label = [(MRXPCConnectionMonitor *)selfCopy label];
    v18 = [(MRDTaskAssertion *)v14 initWithType:5 pid:v15 bundleID:bundleID name:label];

    if (objc_opt_respondsToSelector())
    {
      [WeakRetained connectionDidResume:selfCopy];
    }

    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_10015BF78;
    v24[3] = &unk_1004B69D0;
    v19 = v18;
    v25 = v19;
    v26 = selfCopy;
    v20 = v13;
    v27 = v20;
    v21 = objc_retainBlock(v24);
    connection = selfCopy->_connection;
    if (connection)
    {
      [(NSXPCConnection *)connection scheduleSendBarrierBlock:v21];
    }

    else
    {
      connection_t = selfCopy->_connection_t;
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