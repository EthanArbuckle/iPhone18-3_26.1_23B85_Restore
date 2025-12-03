@interface IDSGroupSendAheadObserver
- (IDSGroupSendAheadObserver)initWithProtectionSpace:(int64_t)space;
- (void)_sendAheadGroup:(id)group withContext:(id)context;
- (void)groupContext:(id)context didUpdateGroup:(id)group withNewGroup:(id)newGroup;
@end

@implementation IDSGroupSendAheadObserver

- (IDSGroupSendAheadObserver)initWithProtectionSpace:(int64_t)space
{
  v8.receiver = self;
  v8.super_class = IDSGroupSendAheadObserver;
  v4 = [(IDSGroupSendAheadObserver *)&v8 init];
  v5 = v4;
  if (v4)
  {
    if (space)
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

- (void)_sendAheadGroup:(id)group withContext:(id)context
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10057A308;
  v6[3] = &unk_100BE0858;
  v6[4] = self;
  groupCopy = group;
  v5 = groupCopy;
  [context _publicDataRepresentationForGroup:v5 completion:v6];
}

- (void)groupContext:(id)context didUpdateGroup:(id)group withNewGroup:(id)newGroup
{
  contextCopy = context;
  groupCopy = group;
  newGroupCopy = newGroup;
  v11 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    topic = [(IDSGroupSendAheadObserver *)self topic];
    *buf = 138412290;
    v15 = topic;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Group updated, sending ahead to members { topic : %@ }", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    topic2 = [(IDSGroupSendAheadObserver *)self topic];
    _IDSLogV();
  }

  [(IDSGroupSendAheadObserver *)self _sendAheadGroup:newGroupCopy withContext:contextCopy, topic2];
}

@end