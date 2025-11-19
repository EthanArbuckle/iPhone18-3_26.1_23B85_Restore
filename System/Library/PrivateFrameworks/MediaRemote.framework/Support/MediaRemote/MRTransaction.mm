@interface MRTransaction
- (MRTransaction)initWithName:(unint64_t)a3 fromMessage:(id)a4 withDelegate:(id)a5;
- (MRTransaction)initWithName:(unint64_t)a3 playerPath:(id)a4;
- (MRTransactionDelegate)delegate;
- (double)outOfMemoryWaitDuration;
- (unint64_t)_calculateMemory;
- (void)_processMessage:(id)a3;
- (void)_query:(id)a3;
- (void)_transactionEnded;
- (void)cancel;
- (void)dealloc;
- (void)send:(id)a3 toConnection:(id)a4 completion:(id)a5;
@end

@implementation MRTransaction

- (MRTransaction)initWithName:(unint64_t)a3 fromMessage:(id)a4 withDelegate:(id)a5
{
  v8 = a4;
  v9 = a5;
  v22.receiver = self;
  v22.super_class = MRTransaction;
  v10 = [(MRTransaction *)&v22 init];
  v11 = v10;
  if (v10)
  {
    v10->_name = a3;
    v12 = MRCreatePlayerPathFromXPCMessage();
    playerPath = v11->_playerPath;
    v11->_playerPath = v12;

    objc_storeWeak(&v11->_delegate, v9);
    v14 = _MRLogForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v17 = MRTransactionNameGetDescription();
      v18 = v11->_playerPath;
      *buf = 134218498;
      v24 = v11;
      v25 = 2112;
      v26 = v17;
      v27 = 2112;
      v28 = v18;
      _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "[MRDTransaction] New Transaction: %p %@ for playerPath %@", buf, 0x20u);
    }

    v15 = dispatch_get_global_queue(0, 0);
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000B5B38;
    v19[3] = &unk_1004B68F0;
    v20 = v11;
    v21 = v8;
    dispatch_async(v15, v19);
  }

  return v11;
}

- (MRTransaction)initWithName:(unint64_t)a3 playerPath:(id)a4
{
  v7 = a4;
  v14.receiver = self;
  v14.super_class = MRTransaction;
  v8 = [(MRTransaction *)&v14 init];
  v9 = v8;
  if (v8)
  {
    v8->_name = a3;
    objc_storeStrong(&v8->_playerPath, a4);
    v10 = _MRLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v12 = MRTransactionNameGetDescription();
      playerPath = v9->_playerPath;
      *buf = 134218498;
      v16 = v9;
      v17 = 2112;
      v18 = v12;
      v19 = 2112;
      v20 = playerPath;
      _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "[MRDTransaction] New Transaction: %p %@ for playerPath %@", buf, 0x20u);
    }
  }

  return v9;
}

- (double)outOfMemoryWaitDuration
{
  if (qword_100529318 != -1)
  {
    sub_1003A6ACC();
  }

  return *&qword_100529310;
}

- (void)dealloc
{
  v3 = _MRLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_1003A6AE0();
  }

  [(MRDTaskAssertion *)self->_taskAssertion invalidateWithReason:@"Deprecated"];
  v4.receiver = self;
  v4.super_class = MRTransaction;
  [(MRTransaction *)&v4 dealloc];
}

- (void)send:(id)a3 toConnection:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 count])
  {
    v11 = MRCreateXPCMessage();
    v12 = MRTransactionPacketsCreateExternalRepresentation();
    xpc_dictionary_set_data(v11, "MRXPC_TRANSACTION_DATA", [v12 bytes], objc_msgSend(v12, "length"));
    playerPath = self->_playerPath;
    MRAddPlayerPathToXPCMessage();
    xpc_dictionary_set_uint64(v11, "MRXPC_TRANSACTION_NAME", self->_name);
    v14 = dispatch_get_global_queue(0, 0);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000B5F18;
    v16[3] = &unk_1004BA8F0;
    v17 = v11;
    v18 = v10;
    v15 = v11;
    xpc_connection_send_message_with_reply(v9, v15, v14, v16);
  }

  else
  {
    (*(v10 + 2))(v10, 0);
  }
}

- (void)cancel
{
  v3 = _MRLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_1003A6B90();
  }

  [(MRTransaction *)self _transactionEnded];
}

- (void)_processMessage:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == &_xpc_error_connection_interrupted || v4 == &_xpc_error_connection_invalid)
  {
    v7 = _MRLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1003A6CF0();
    }

    [(MRTransaction *)self _transactionEnded];
  }

  else
  {
    self->_bytesInUse = 0;
    v8 = MRCreateDataFromXPCMessage();
    v9 = MRTransactionPacketsCreateFromExternalRepresentation();
    uint64 = xpc_dictionary_get_uint64(v5, "MRXPC_TRANSACTION_DATA_REQUESTED_SIZE");
    v11 = _MRLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      sub_1003A6C30(self, v8);
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v14 = [v8 length];
    v15 = dispatch_get_global_queue(0, 0);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000B6174;
    v16[3] = &unk_1004B68F0;
    v16[4] = self;
    v17 = v5;
    [WeakRetained transaction:self didReceivePackets:v9 receivedSize:v14 requestedSize:uint64 queue:v15 completion:v16];
  }
}

- (void)_query:(id)a3
{
  v4 = a3;
  if (xpc_dictionary_get_BOOL(v4, "MRXPC_TRANSACTION_ENDED"))
  {
    v5 = _MRLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_1003A6F3C();
    }

    [(MRTransaction *)self _transactionEnded];
  }

  else
  {
    v6 = [(MRTransaction *)self _calculateMemory];
    self->_bytesInUse = v6;
    if (v6)
    {
      v7 = xpc_dictionary_get_remote_connection(v4);
      if (v7)
      {
        reply = xpc_dictionary_create_reply(v4);
        v9 = reply;
        if (reply)
        {
          xpc_dictionary_set_uint64(reply, "MRXPC_TRANSACTION_DATA_REQUESTED_SIZE", self->_bytesInUse);
          v10 = _MRLogForCategory();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
          {
            sub_1003A6D7C(self, &self->_bytesInUse);
          }

          v11 = dispatch_get_global_queue(0, 0);
          handler[0] = _NSConcreteStackBlock;
          handler[1] = 3221225472;
          handler[2] = sub_1000B6568;
          handler[3] = &unk_1004B6E08;
          handler[4] = self;
          xpc_connection_send_message_with_reply(v7, v9, v11, handler);
        }

        else
        {
          v18 = _MRLogForCategory();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            sub_1003A6E24();
          }

          [(MRTransaction *)self _transactionEnded];
        }
      }

      else
      {
        v17 = _MRLogForCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          sub_1003A6EB0();
        }

        [(MRTransaction *)self _transactionEnded];
      }
    }

    else
    {
      v12 = _MRLogForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        [(MRTransaction *)self outOfMemoryWaitDuration];
        *buf = 134218240;
        v23 = self;
        v24 = 2048;
        v25 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%p No memory available, waiting %lf and requesting again", buf, 0x16u);
      }

      [(MRTransaction *)self outOfMemoryWaitDuration];
      v15 = dispatch_time(0, (v14 * 1000000000.0));
      v16 = dispatch_get_global_queue(0, 0);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000B64B4;
      block[3] = &unk_1004B68F0;
      block[4] = self;
      v21 = v4;
      dispatch_after(v15, v16, block);
    }
  }
}

- (void)_transactionEnded
{
  v3 = _MRLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_1003A6FD0();
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained transactionDidEnd:self bytesRemaining:self->_bytesInUse];
}

- (unint64_t)_calculateMemory
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = [WeakRetained transactionRequestingMemorySize:self];

  return v4;
}

- (MRTransactionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end