@interface IDSRemoteAgentURLLoader
+ (BOOL)shouldAssertWiFi;
- (IDSRemoteAgentURLLoader)initWithURLRequest:(id)a3 completionBlock:(id)a4;
- (void)cancel;
- (void)dealloc;
- (void)load;
@end

@implementation IDSRemoteAgentURLLoader

+ (BOOL)shouldAssertWiFi
{
  if (qword_100015668 != -1)
  {
    sub_10000790C();
  }

  return byte_100015660;
}

- (IDSRemoteAgentURLLoader)initWithURLRequest:(id)a3 completionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v21.receiver = self;
  v21.super_class = IDSRemoteAgentURLLoader;
  v8 = [(IDSRemoteAgentURLLoader *)&v21 init];
  if (v8)
  {
    v9 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Creating loader with request: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v20 = v6;
      _IDSLogV();
    }

    v10 = [v6 mutableCopy];
    request = v8->_request;
    v8->_request = v10;

    v12 = [v7 copy];
    block = v8->_block;
    v8->_block = v12;

    remoteURLConnection = v8->_remoteURLConnection;
    v8->_remoteURLConnection = 0;

    v15 = +[NSString stringGUID];
    uniqueID = v8->_uniqueID;
    v8->_uniqueID = v15;

    v17 = [NSString stringWithFormat:@"%@-%@", @"IDSRemoteAgent", v8->_uniqueID];
    wifiAssertionToken = v8->_wifiAssertionToken;
    v8->_wifiAssertionToken = v17;
  }

  return v8;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = IDSRemoteAgentURLLoader;
  [(IDSRemoteAgentURLLoader *)&v2 dealloc];
}

- (void)load
{
  v3 = [IMRemoteURLConnection alloc];
  request = self->_request;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000266C;
  v9[3] = &unk_100010678;
  v9[4] = self;
  v5 = [v3 initWithURLRequest:request completionBlockWithTimingData:v9];
  remoteURLConnection = self->_remoteURLConnection;
  self->_remoteURLConnection = v5;

  [(IMRemoteURLConnection *)self->_remoteURLConnection setShouldUsePipelining:[(IDSRemoteAgentURLLoader *)self shouldUsePipelining]];
  [(IMRemoteURLConnection *)self->_remoteURLConnection setConcurrentConnections:[(IDSRemoteAgentURLLoader *)self concurrentConnections]];
  [(IMRemoteURLConnection *)self->_remoteURLConnection setDisableKeepAlive:[(IDSRemoteAgentURLLoader *)self disableKeepAlive]];
  [(IMRemoteURLConnection *)self->_remoteURLConnection setKeepAliveWifi:[(IDSRemoteAgentURLLoader *)self keepAliveWifi]];
  [(IMRemoteURLConnection *)self->_remoteURLConnection setKeepAliveCell:[(IDSRemoteAgentURLLoader *)self keepAliveCell]];
  v7 = self->_remoteURLConnection;
  v8 = [(IDSRemoteAgentURLLoader *)self bundleIdentifierForDataUsage];
  [(IMRemoteURLConnection *)v7 setBundleIdentifierForDataUsage:v8];

  [(IMRemoteURLConnection *)self->_remoteURLConnection setForceCellularIfPossible:[(IDSRemoteAgentURLLoader *)self forceCellularIfPossible]];
  [(IMRemoteURLConnection *)self->_remoteURLConnection setRequireIDSHost:[(IDSRemoteAgentURLLoader *)self requireIDSHost]];
  [(IMRemoteURLConnection *)self->_remoteURLConnection setShouldReturnTimingData:[(IDSRemoteAgentURLLoader *)self shouldReturnTimingData]];
  [(IMRemoteURLConnection *)self->_remoteURLConnection load];
}

- (void)cancel
{
  v3 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    request = self->_request;
    *buf = 138412546;
    v9 = request;
    v10 = 2048;
    v11 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Cancelling URL request: %@  (%p)", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v7 = self->_request;
    _IDSLogV();
  }

  block = self->_block;
  if (block)
  {
    self->_block = 0;
  }

  remoteURLConnection = self->_remoteURLConnection;
  if (remoteURLConnection)
  {
    [(IMRemoteURLConnection *)remoteURLConnection cancel];
  }
}

@end