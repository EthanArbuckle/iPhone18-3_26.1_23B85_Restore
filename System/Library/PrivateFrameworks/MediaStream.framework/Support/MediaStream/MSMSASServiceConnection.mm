@interface MSMSASServiceConnection
- (NSMutableDictionary)XPCForegroundRequestByPersonID;
- (NSMutableDictionary)foregroundPingTimerByPersonID;
- (id)workQueue;
- (void)XPCNSServiceConnection:(id)connection didReceiveRequest:(id)request sequenceNumber:(unint64_t)number;
- (void)XPCNSServiceConnectionDidDisconnect:(id)disconnect;
- (void)_foregroundPingTimerDidExpire:(id)expire;
- (void)_handleFocusAlbum:(id)album;
- (void)_handleForegroundPing:(id)ping request:(id)request;
@end

@implementation MSMSASServiceConnection

- (void)XPCNSServiceConnectionDidDisconnect:(id)disconnect
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000073CC;
  v4[3] = &unk_100018B00;
  v4[4] = self;
  disconnectCopy = disconnect;
  v3 = disconnectCopy;
  dispatch_async(&_dispatch_main_q, v4);
}

- (void)XPCNSServiceConnection:(id)connection didReceiveRequest:(id)request sequenceNumber:(unint64_t)number
{
  connectionCopy = connection;
  requestCopy = request;
  message = [requestCopy message];
  [message objectForKey:kMSASFunctionNameKey];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000759C;
  block[3] = &unk_100018BA0;
  v15 = block[4] = self;
  v16 = connectionCopy;
  v17 = requestCopy;
  v18 = message;
  v10 = message;
  v11 = requestCopy;
  v12 = connectionCopy;
  v13 = v15;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_handleFocusAlbum:(id)album
{
  albumCopy = album;
  v4 = MSASPlatform();
  albumSharingDaemon = [v4 albumSharingDaemon];

  v5 = [albumCopy objectForKey:kMSASAlbumGUIDKey];
  v6 = [albumCopy objectForKey:kMSASPersonIDKey];

  [albumSharingDaemon setFocusAlbumGUID:v5 forPersonID:v6];
}

- (void)_foregroundPingTimerDidExpire:(id)expire
{
  expireCopy = expire;
  v5 = MSASPlatform();
  albumSharingDaemon = [v5 albumSharingDaemon];

  userInfo = [expireCopy userInfo];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v12 = 138543618;
    selfCopy = self;
    v14 = 2112;
    v15 = userInfo;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%{public}@: Dropping foreground assertion for personID “%@”", &v12, 0x16u);
  }

  [albumSharingDaemon didEndForegroundFocusForPersonID:userInfo];
  xPCForegroundRequestByPersonID = [(MSMSASServiceConnection *)self XPCForegroundRequestByPersonID];
  v9 = [xPCForegroundRequestByPersonID objectForKey:userInfo];

  if (v9)
  {
    [v9 sendReply:0];
    xPCForegroundRequestByPersonID2 = [(MSMSASServiceConnection *)self XPCForegroundRequestByPersonID];
    [xPCForegroundRequestByPersonID2 removeObjectForKey:userInfo];
  }

  foregroundPingTimerByPersonID = [(MSMSASServiceConnection *)self foregroundPingTimerByPersonID];
  [foregroundPingTimerByPersonID removeObjectForKey:userInfo];

  [expireCopy invalidate];
}

- (void)_handleForegroundPing:(id)ping request:(id)request
{
  pingCopy = ping;
  requestCopy = request;
  v8 = [pingCopy objectForKey:kMSASPersonIDKey];
  if (v8)
  {
    v9 = [pingCopy objectForKey:kMSASIsUIForegroundKey];
    bOOLValue = [v9 BOOLValue];

    v11 = MSASPlatform();
    albumSharingDaemon = [v11 albumSharingDaemon];

    delegate = [albumSharingDaemon delegate];
    [delegate MSAlbumSharingDaemonDidUnidleMomentarily:albumSharingDaemon];

    if (bOOLValue)
    {
      foregroundPingTimerByPersonID = [(MSMSASServiceConnection *)self foregroundPingTimerByPersonID];
      v15 = [foregroundPingTimerByPersonID objectForKey:v8];

      if (v15)
      {
        v16 = [NSDate dateWithTimeIntervalSinceNow:8.0];
        [v15 setFireDate:v16];
      }

      else
      {
        v15 = [NSTimer timerWithTimeInterval:self target:"_foregroundPingTimerDidExpire:" selector:v8 userInfo:0 repeats:8.0];
        foregroundPingTimerByPersonID2 = [(MSMSASServiceConnection *)self foregroundPingTimerByPersonID];
        [foregroundPingTimerByPersonID2 setObject:v15 forKey:v8];

        [albumSharingDaemon didBeginForegroundFocusForPersonID:v8];
        v16 = +[NSRunLoop currentRunLoop];
        [v16 addTimer:v15 forMode:NSRunLoopCommonModes];
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        v21 = 138543618;
        selfCopy = self;
        v23 = 2112;
        v24 = v8;
        _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "%{public}@: Holding foreground assertion for personID “%@”", &v21, 0x16u);
      }

      xPCForegroundRequestByPersonID = [(MSMSASServiceConnection *)self XPCForegroundRequestByPersonID];
      v19 = [xPCForegroundRequestByPersonID objectForKey:v8];

      if (v19)
      {
        [v19 sendReply:0];
      }

      xPCForegroundRequestByPersonID2 = [(MSMSASServiceConnection *)self XPCForegroundRequestByPersonID];
      [xPCForegroundRequestByPersonID2 setObject:requestCopy forKey:v8];

      [albumSharingDaemon retryOutstandingActivities];
    }
  }
}

- (id)workQueue
{
  if (qword_10001DD48 != -1)
  {
    dispatch_once(&qword_10001DD48, &stru_100018A88);
  }

  v3 = qword_10001DD50;

  return v3;
}

- (NSMutableDictionary)XPCForegroundRequestByPersonID
{
  XPCForegroundRequestByPersonID = self->_XPCForegroundRequestByPersonID;
  if (!XPCForegroundRequestByPersonID)
  {
    v4 = +[NSMutableDictionary dictionary];
    v5 = self->_XPCForegroundRequestByPersonID;
    self->_XPCForegroundRequestByPersonID = v4;

    XPCForegroundRequestByPersonID = self->_XPCForegroundRequestByPersonID;
  }

  return XPCForegroundRequestByPersonID;
}

- (NSMutableDictionary)foregroundPingTimerByPersonID
{
  foregroundPingTimerByPersonID = self->_foregroundPingTimerByPersonID;
  if (!foregroundPingTimerByPersonID)
  {
    v4 = +[NSMutableDictionary dictionary];
    v5 = self->_foregroundPingTimerByPersonID;
    self->_foregroundPingTimerByPersonID = v4;

    foregroundPingTimerByPersonID = self->_foregroundPingTimerByPersonID;
  }

  return foregroundPingTimerByPersonID;
}

@end