@interface IDSGroupSendAheadObserver
- (IDSGroupSendAheadObserver)initWithProtectionSpace:(int64_t)a3;
- (void)_sendAheadGroup:(id)a3 withContext:(id)a4;
- (void)groupContext:(id)a3 didUpdateGroup:(id)a4 withNewGroup:(id)a5;
@end

@implementation IDSGroupSendAheadObserver

- (IDSGroupSendAheadObserver)initWithProtectionSpace:(int64_t)a3
{
  v8.receiver = self;
  v8.super_class = IDSGroupSendAheadObserver;
  v4 = [(IDSGroupSendAheadObserver *)&v8 init];
  v5 = v4;
  if (v4)
  {
    if (a3)
    {
      v6 = 0;
    }

    else
    {
      v6 = @"com.apple.madrid";
    }

    objc_storeStrong(&v4->_topic, v6);
  }

  return v5;
}

- (void)_sendAheadGroup:(id)a3 withContext:(id)a4
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10057A308;
  v6[3] = &unk_100BE0858;
  v6[4] = self;
  v7 = a3;
  v5 = v7;
  [a4 _publicDataRepresentationForGroup:v5 completion:v6];
}

- (void)groupContext:(id)a3 didUpdateGroup:(id)a4 withNewGroup:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [(IDSGroupSendAheadObserver *)self topic];
    *buf = 138412290;
    v15 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Group updated, sending ahead to members { topic : %@ }", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v13 = [(IDSGroupSendAheadObserver *)self topic];
    _IDSLogV();
  }

  [(IDSGroupSendAheadObserver *)self _sendAheadGroup:v10 withContext:v8, v13];
}

@end