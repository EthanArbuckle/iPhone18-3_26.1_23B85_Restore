@interface IDSRemoteURLConnection
- (BOOL)_connect;
- (BOOL)_disconnect;
- (IDSRemoteURLConnection)initWithURLRequest:(id)request completionBlock:(id)block;
- (IDSRemoteURLConnection)initWithURLRequest:(id)request completionBlockWithTimingData:(id)data;
- (void)_disconnected;
- (void)cancel;
- (void)dealloc;
- (void)load;
@end

@implementation IDSRemoteURLConnection

- (void)_disconnected
{
  if (self->_connection)
  {
    v3 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *v9 = 0;
      _os_log_impl(&dword_1A7AD9000, v3, OS_LOG_TYPE_DEBUG, "Clearing out _connection, we're disconnected", v9, 2u);
    }

    v4 = os_log_shim_legacy_logging_enabled();
    if (v4)
    {
      sub_1A7C66C58(v4, v5, @"Clearing out _connection, we're disconnected");
      sub_1A7C66CCC(v6, v7, @"Clearing out _connection, we're disconnected");
      if (_IMWillLog())
      {
        _IMAlwaysLog();
      }
    }

    xpc_connection_cancel(self->_connection);
    connection = self->_connection;
    self->_connection = 0;
  }

  self->_loading = 0;
}

- (BOOL)_disconnect
{
  self->_loading = 0;
  if (self->_connection)
  {
    v3 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *v10 = 0;
      _os_log_impl(&dword_1A7AD9000, v3, OS_LOG_TYPE_DEBUG, "Forcing a disconnect, terminating connection", v10, 2u);
    }

    v4 = os_log_shim_legacy_logging_enabled();
    if (v4)
    {
      sub_1A7C66C58(v4, v5, @"Forcing a disconnect, terminating connection");
      sub_1A7C66CCC(v6, v7, @"Forcing a disconnect, terminating connection");
      if (_IMWillLog())
      {
        _IMAlwaysLog();
      }
    }

    xpc_connection_cancel(self->_connection);
    connection = self->_connection;
    self->_connection = 0;
  }

  return 1;
}

- (BOOL)_connect
{
  if (self->_connection)
  {
    return 1;
  }

  v4 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A7AD9000, v4, OS_LOG_TYPE_DEFAULT, "Connecting to URLLoading agent", buf, 2u);
  }

  v5 = os_log_shim_legacy_logging_enabled();
  if (v5)
  {
    sub_1A7C66C58(v5, v6, @"Connecting to URLLoading agent");
    sub_1A7C66CCC(v7, v8, @"Connecting to URLLoading agent");
    if (_IMWillLog())
    {
      _IMAlwaysLog();
    }
  }

  [@"com.apple.idsremoteurlconnectionagent.embedded.auth" UTF8String];
  v9 = im_primary_queue();
  v10 = IMXPCCreateConnectionForServiceWithQueue();
  connection = self->_connection;
  self->_connection = v10;

  IMXPCConfigureConnection();
  return self->_connection != 0;
}

- (IDSRemoteURLConnection)initWithURLRequest:(id)request completionBlock:(id)block
{
  blockCopy = block;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1A7C6715C;
  v10[3] = &unk_1E77E24F0;
  v11 = blockCopy;
  v7 = blockCopy;
  v8 = [(IDSRemoteURLConnection *)self initWithURLRequest:request completionBlockWithTimingData:v10];

  return v8;
}

- (IDSRemoteURLConnection)initWithURLRequest:(id)request completionBlockWithTimingData:(id)data
{
  v23 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  dataCopy = data;
  v18.receiver = self;
  v18.super_class = IDSRemoteURLConnection;
  v9 = [(IDSRemoteURLConnection *)&v18 init];
  if (v9)
  {
    v10 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v20 = requestCopy;
      v21 = 2048;
      v22 = v9;
      _os_log_impl(&dword_1A7AD9000, v10, OS_LOG_TYPE_DEFAULT, "Init with URL request: %@  (%p)", buf, 0x16u);
    }

    v11 = os_log_shim_legacy_logging_enabled();
    if (v11)
    {
      sub_1A7C66C58(v11, v12, @"Init with URL request: %@  (%p)");
      sub_1A7C66CCC(v13, v14, @"Init with URL request: %@  (%p)");
      if (_IMWillLog())
      {
        _IMAlwaysLog();
      }
    }

    objc_storeStrong(&v9->_request, request);
    v15 = [dataCopy copy];
    block = v9->_block;
    v9->_block = v15;
  }

  return v9;
}

- (void)dealloc
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    request = self->_request;
    *buf = 138412546;
    v13 = request;
    v14 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1A7AD9000, v3, OS_LOG_TYPE_DEFAULT, "Released URL request: %@  (%p)", buf, 0x16u);
  }

  v5 = os_log_shim_legacy_logging_enabled();
  if (v5)
  {
    sub_1A7C66C58(v5, v6, @"Released URL request: %@  (%p)");
    v9 = self->_request;
    selfCopy3 = self;
    sub_1A7C66CCC(v7, v8, @"Released URL request: %@  (%p)");
    if (_IMWillLog())
    {
      v9 = self->_request;
      selfCopy3 = self;
      _IMAlwaysLog();
    }
  }

  [(IDSRemoteURLConnection *)self _disconnect:v9];
  v11.receiver = self;
  v11.super_class = IDSRemoteURLConnection;
  [(IDSRemoteURLConnection *)&v11 dealloc];
}

- (void)load
{
  v32 = *MEMORY[0x1E69E9840];
  if (!self->_loading)
  {
    self->_cancelled = 0;
    if ([(IDSRemoteURLConnection *)self _connect])
    {
      v3 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        request = self->_request;
        bundleIdentifierForDataUsage = [(IDSRemoteURLConnection *)self bundleIdentifierForDataUsage];
        *buf = 138412802;
        v27 = request;
        v28 = 2112;
        v29 = bundleIdentifierForDataUsage;
        v30 = 2048;
        selfCopy = self;
        _os_log_impl(&dword_1A7AD9000, v3, OS_LOG_TYPE_DEFAULT, "Sending URL request: %@ (Data usage identifier: %@)  (%p)", buf, 0x20u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        v6 = self->_request;
        bundleIdentifierForDataUsage2 = [(IDSRemoteURLConnection *)self bundleIdentifierForDataUsage];
        sub_1A7C66C58(bundleIdentifierForDataUsage2, v7, @"Sending URL request: %@ (Data usage identifier: %@)  (%p)");

        v8 = self->_request;
        v23 = [(IDSRemoteURLConnection *)self bundleIdentifierForDataUsage:v6];
        sub_1A7C66CCC(v23, v9, @"Sending URL request: %@ (Data usage identifier: %@)  (%p)");

        if (_IMWillLog())
        {
          v24 = [(IDSRemoteURLConnection *)self bundleIdentifierForDataUsage:v8];
          _IMAlwaysLog();
        }
      }

      self->_loading = 1;
      v10 = xpc_dictionary_create(0, 0, 0);
      v13 = self->_request;
      IMInsertKeyedCodableObjectsToXPCDictionary();
      v14 = [(IDSRemoteURLConnection *)self forceCellularIfPossible:v13];
      IMInsertBoolsToXPCDictionary();
      v15 = [(IDSRemoteURLConnection *)self requireIDSHost:v14];
      IMInsertBoolsToXPCDictionary();
      v16 = [(IDSRemoteURLConnection *)self bundleIdentifierForDataUsage:v15];
      IMInsertNSStringsToXPCDictionary();

      v17 = [(IDSRemoteURLConnection *)self shouldUsePipelining:v16];
      IMInsertBoolsToXPCDictionary();
      v18 = [(IDSRemoteURLConnection *)self concurrentConnections:v17];
      IMInsertIntsToXPCDictionary();
      v19 = [(IDSRemoteURLConnection *)self disableKeepAlive:v18];
      IMInsertBoolsToXPCDictionary();
      v20 = [(IDSRemoteURLConnection *)self keepAliveWifi:v19];
      IMInsertIntsToXPCDictionary();
      v21 = [(IDSRemoteURLConnection *)self keepAliveCell:v20];
      IMInsertIntsToXPCDictionary();
      [(IDSRemoteURLConnection *)self shouldReturnTimingData:v21];
      IMInsertBoolsToXPCDictionary();
      connection = self->_connection;
      v12 = im_primary_queue();
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = sub_1A7C6781C;
      handler[3] = &unk_1E77E2518;
      handler[4] = self;
      xpc_connection_send_message_with_reply(connection, v10, v12, handler);
    }
  }
}

- (void)cancel
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    request = self->_request;
    *buf = 138412546;
    v13 = request;
    v14 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1A7AD9000, v3, OS_LOG_TYPE_DEFAULT, "Cancelling URL request: %@  (%p)", buf, 0x16u);
  }

  v5 = os_log_shim_legacy_logging_enabled();
  if (v5)
  {
    sub_1A7C66C58(v5, v6, @"Cancelling URL request: %@  (%p)");
    v10 = self->_request;
    selfCopy3 = self;
    sub_1A7C66CCC(v7, v8, @"Cancelling URL request: %@  (%p)");
    if (_IMWillLog())
    {
      v10 = self->_request;
      selfCopy3 = self;
      _IMAlwaysLog();
    }
  }

  self->_cancelled = 1;
  block = self->_block;
  if (block)
  {
    self->_block = 0;
  }

  [(IDSRemoteURLConnection *)self _disconnect:v10];
}

@end