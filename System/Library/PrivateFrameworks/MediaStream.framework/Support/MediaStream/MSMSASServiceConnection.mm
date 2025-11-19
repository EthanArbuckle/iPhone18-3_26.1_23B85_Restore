@interface MSMSASServiceConnection
- (NSMutableDictionary)XPCForegroundRequestByPersonID;
- (NSMutableDictionary)foregroundPingTimerByPersonID;
- (id)workQueue;
- (void)XPCNSServiceConnection:(id)a3 didReceiveRequest:(id)a4 sequenceNumber:(unint64_t)a5;
- (void)XPCNSServiceConnectionDidDisconnect:(id)a3;
- (void)_foregroundPingTimerDidExpire:(id)a3;
- (void)_handleFocusAlbum:(id)a3;
- (void)_handleForegroundPing:(id)a3 request:(id)a4;
@end

@implementation MSMSASServiceConnection

- (void)XPCNSServiceConnectionDidDisconnect:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000073CC;
  v4[3] = &unk_100018B00;
  v4[4] = self;
  v5 = a3;
  v3 = v5;
  dispatch_async(&_dispatch_main_q, v4);
}

- (void)XPCNSServiceConnection:(id)a3 didReceiveRequest:(id)a4 sequenceNumber:(unint64_t)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [v8 message];
  [v9 objectForKey:kMSASFunctionNameKey];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000759C;
  block[3] = &unk_100018BA0;
  v15 = block[4] = self;
  v16 = v7;
  v17 = v8;
  v18 = v9;
  v10 = v9;
  v11 = v8;
  v12 = v7;
  v13 = v15;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_handleFocusAlbum:(id)a3
{
  v3 = a3;
  v4 = MSASPlatform();
  v7 = [v4 albumSharingDaemon];

  v5 = [v3 objectForKey:kMSASAlbumGUIDKey];
  v6 = [v3 objectForKey:kMSASPersonIDKey];

  [v7 setFocusAlbumGUID:v5 forPersonID:v6];
}

- (void)_foregroundPingTimerDidExpire:(id)a3
{
  v4 = a3;
  v5 = MSASPlatform();
  v6 = [v5 albumSharingDaemon];

  v7 = [v4 userInfo];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v12 = 138543618;
    v13 = self;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%{public}@: Dropping foreground assertion for personID “%@”", &v12, 0x16u);
  }

  [v6 didEndForegroundFocusForPersonID:v7];
  v8 = [(MSMSASServiceConnection *)self XPCForegroundRequestByPersonID];
  v9 = [v8 objectForKey:v7];

  if (v9)
  {
    [v9 sendReply:0];
    v10 = [(MSMSASServiceConnection *)self XPCForegroundRequestByPersonID];
    [v10 removeObjectForKey:v7];
  }

  v11 = [(MSMSASServiceConnection *)self foregroundPingTimerByPersonID];
  [v11 removeObjectForKey:v7];

  [v4 invalidate];
}

- (void)_handleForegroundPing:(id)a3 request:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 objectForKey:kMSASPersonIDKey];
  if (v8)
  {
    v9 = [v6 objectForKey:kMSASIsUIForegroundKey];
    v10 = [v9 BOOLValue];

    v11 = MSASPlatform();
    v12 = [v11 albumSharingDaemon];

    v13 = [v12 delegate];
    [v13 MSAlbumSharingDaemonDidUnidleMomentarily:v12];

    if (v10)
    {
      v14 = [(MSMSASServiceConnection *)self foregroundPingTimerByPersonID];
      v15 = [v14 objectForKey:v8];

      if (v15)
      {
        v16 = [NSDate dateWithTimeIntervalSinceNow:8.0];
        [v15 setFireDate:v16];
      }

      else
      {
        v15 = [NSTimer timerWithTimeInterval:self target:"_foregroundPingTimerDidExpire:" selector:v8 userInfo:0 repeats:8.0];
        v17 = [(MSMSASServiceConnection *)self foregroundPingTimerByPersonID];
        [v17 setObject:v15 forKey:v8];

        [v12 didBeginForegroundFocusForPersonID:v8];
        v16 = +[NSRunLoop currentRunLoop];
        [v16 addTimer:v15 forMode:NSRunLoopCommonModes];
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        v21 = 138543618;
        v22 = self;
        v23 = 2112;
        v24 = v8;
        _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "%{public}@: Holding foreground assertion for personID “%@”", &v21, 0x16u);
      }

      v18 = [(MSMSASServiceConnection *)self XPCForegroundRequestByPersonID];
      v19 = [v18 objectForKey:v8];

      if (v19)
      {
        [v19 sendReply:0];
      }

      v20 = [(MSMSASServiceConnection *)self XPCForegroundRequestByPersonID];
      [v20 setObject:v7 forKey:v8];

      [v12 retryOutstandingActivities];
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