@interface _IDSSessionConnection
- (BOOL)startConnectionAsInitiator:(BOOL)a3 peerProtocolVersion:(unsigned int)a4 errorHandler:(id)a5;
- (BOOL)stopConnection:(id *)a3;
- (_IDSSessionConnection)initWithQueue:(id)a3;
- (_IDSSessionConnectionDelegate)delegate;
- (id)connectionInfoForCallID:(int64_t)a3;
- (id)connectionInfoWithState:(int64_t)a3;
- (int64_t)bestCallID;
- (void)conference:(id)a3 didReceiveData:(id)a4 forCallID:(int64_t)a5;
- (void)conference:(id)a3 didStartSession:(BOOL)a4 withUserInfo:(id)a5;
- (void)conference:(id)a3 didStopWithCallID:(int64_t)a4 error:(id)a5;
- (void)createConnectionData:(BOOL)a3 handler:(id)a4;
- (void)dealloc;
- (void)receivedRemoteConnectionData:(id)a3;
- (void)sendData:(id)a3;
@end

@implementation _IDSSessionConnection

- (_IDSSessionConnection)initWithQueue:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = _IDSSessionConnection;
  v5 = [(_IDSSessionConnection *)&v13 init];
  if (v5)
  {
    if (qword_100CBF278 == -1)
    {
      if (v4)
      {
LABEL_4:
        v6 = v4;
        v7 = *(v5 + 3);
        *(v5 + 3) = v6;
LABEL_7:

        v10 = objc_alloc_init(qword_100CBF270);
        v11 = *(v5 + 1);
        *(v5 + 1) = v10;

        [*(v5 + 1) setDelegate:v5];
        *(v5 + 36) = 0;
        goto LABEL_8;
      }
    }

    else
    {
      sub_10092BDD8();
      if (v4)
      {
        goto LABEL_4;
      }
    }

    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.apple.ids.connection.queue", v7);
    v9 = *(v5 + 3);
    *(v5 + 3) = v8;

    goto LABEL_7;
  }

LABEL_8:

  return v5;
}

- (void)dealloc
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = self->_connectionInfos;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v12 objects:v18 count:16];
  if (v4)
  {
    v5 = *v13;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        [v7 setState:4];
        -[AVConference stopCallID:](self->_connection, "stopCallID:", [v7 callID]);
      }

      v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v12 objects:v18 count:16];
    }

    while (v4);
  }

  v8 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = self;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Cleaning up: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v10 = self;
    _IDSLogV();
  }

  [(AVConference *)self->_connection setDelegate:0, v10];
  connectionQueue = self->_connectionQueue;
  self->_connectionQueue = 0;

  v11.receiver = self;
  v11.super_class = _IDSSessionConnection;
  [(_IDSSessionConnection *)&v11 dealloc];
}

- (id)connectionInfoWithState:(int64_t)a3
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_connectionInfos;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 state] == a3)
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (id)connectionInfoForCallID:(int64_t)a3
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_connectionInfos;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 callID] == a3)
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (int64_t)bestCallID
{
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v2 = self->_connectionInfos;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (!v3)
  {
    v15 = 0;
    goto LABEL_22;
  }

  v4 = v3;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = *v18;
  do
  {
    for (i = 0; i != v4; i = i + 1)
    {
      if (*v18 != v8)
      {
        objc_enumerationMutation(v2);
      }

      v10 = *(*(&v17 + 1) + 8 * i);
      if (([v10 isFinished] & 1) == 0)
      {
        v11 = v10;

        v7 = v11;
      }

      if (([v10 isFinished] & 1) == 0 && (objc_msgSend(v10, "isBeingHandedOff") & 1) == 0)
      {
        v12 = v10;

        v5 = v12;
      }

      if ([v10 state] <= 2)
      {
        v13 = v10;

        v6 = v13;
      }

      v14 = [v10 callID];
    }

    v15 = v14;
    v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v17 objects:v21 count:16];
  }

  while (v4);

  if (v5)
  {
    v15 = [(NSMutableArray *)v5 callID];

    v2 = v5;
LABEL_22:

    return v15;
  }

  if (v6)
  {
    v15 = [(NSMutableArray *)v6 callID];

    v2 = v6;
    goto LABEL_22;
  }

  if (v7)
  {
    v15 = [(NSMutableArray *)v7 callID];
    v2 = v7;
    goto LABEL_22;
  }

  return v15;
}

- (void)receivedRemoteConnectionData:(id)a3
{
  v4 = a3;
  connectionQueue = self->_connectionQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1005C6A3C;
  v7[3] = &unk_100BD6E40;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(connectionQueue, v7);
}

- (void)createConnectionData:(BOOL)a3 handler:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_retainBlock(v6);
    connectionQueue = self->_connectionQueue;
    *buf = 67109632;
    v19 = v4;
    v20 = 2048;
    v21 = v8;
    v22 = 2048;
    v23 = connectionQueue;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "createConnectionData: requiresWifi = %d, dataReadyHandler = %p, _connectionQueue = %p", buf, 0x1Cu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v13 = objc_retainBlock(v6);
    _IDSLogV();
  }

  if (v6)
  {
    v10 = [v6 copy];
    v11 = self->_connectionQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1005C6FC0;
    block[3] = &unk_100BE1208;
    v17 = v4;
    block[4] = self;
    v15 = v6;
    v16 = v10;
    v12 = v10;
    dispatch_async(v11, block);
  }
}

- (BOOL)startConnectionAsInitiator:(BOOL)a3 peerProtocolVersion:(unsigned int)a4 errorHandler:(id)a5
{
  v8 = a5;
  connectionQueue = self->_connectionQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1005C7F50;
  block[3] = &unk_100BE1230;
  v14 = a4;
  v15 = a3;
  block[4] = self;
  v13 = v8;
  v10 = v8;
  dispatch_async(connectionQueue, block);

  return 1;
}

- (BOOL)stopConnection:(id *)a3
{
  connectionQueue = self->_connectionQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1005C82BC;
  block[3] = &unk_100BD6ED0;
  block[4] = self;
  dispatch_async(connectionQueue, block);
  return 1;
}

- (void)sendData:(id)a3
{
  v4 = a3;
  connectionQueue = self->_connectionQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1005C8474;
  v7[3] = &unk_100BD6E40;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(connectionQueue, v7);
}

- (_IDSSessionConnectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)conference:(id)a3 didReceiveData:(id)a4 forCallID:(int64_t)a5
{
  v6 = a4;
  connectionQueue = self->_connectionQueue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1005C8784;
  v9[3] = &unk_100BD6E40;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(connectionQueue, v9);
}

- (void)conference:(id)a3 didStartSession:(BOOL)a4 withUserInfo:(id)a5
{
  v7 = a5;
  connectionQueue = self->_connectionQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1005C8954;
  block[3] = &unk_100BD8FC0;
  v11 = v7;
  v12 = self;
  v13 = a4;
  v9 = v7;
  dispatch_async(connectionQueue, block);
}

- (void)conference:(id)a3 didStopWithCallID:(int64_t)a4 error:(id)a5
{
  v7 = a5;
  connectionQueue = self->_connectionQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1005C8F08;
  block[3] = &unk_100BE04B0;
  v11 = v7;
  v12 = a4;
  block[4] = self;
  v9 = v7;
  dispatch_async(connectionQueue, block);
}

@end