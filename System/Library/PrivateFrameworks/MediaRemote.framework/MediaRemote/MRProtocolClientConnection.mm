@interface MRProtocolClientConnection
- (BOOL)_client:(void *)a3 supportsMessage:;
- (MRDeviceInfo)deviceInfo;
- (MRProtocolClientConnection)initWithConnection:(id)a3 replyQueue:(id)a4;
- (MRProtocolClientConnectionDelegate)delegate;
- (MRSupportedProtocolMessages)supportedMessages;
- (NSError)error;
- (NSString)debugDescription;
- (id)_protocolMessageFromData:(uint64_t)a3 error:;
- (id)dataForMessage:(id)a3;
- (void)_adjustTimestamp:(uint64_t)a1;
- (void)_notifyDelegateClientDidDisconnectWithError:(id *)a1;
- (void)_parseMessageData:(uint64_t)a1;
- (void)_processMessage:(void *)a1;
- (void)_sendMessage:(void *)a3 reply:;
- (void)_sendMessage:(void *)a3 timeout:(double)a4 reply:;
- (void)dealloc;
- (void)disconnectWithError:(id)a3;
- (void)parser:(id)a3 didParseMessage:(id)a4;
- (void)sendMessage:(id)a3 timeout:(double)a4 reply:(id)a5;
- (void)setDeviceInfo:(id)a3;
- (void)setSupportedMessages:(id)a3;
@end

@implementation MRProtocolClientConnection

- (MRSupportedProtocolMessages)supportedMessages
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_supportedMessages;
  objc_sync_exit(v2);

  return v3;
}

- (MRDeviceInfo)deviceInfo
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_deviceInfo;
  objc_sync_exit(v2);

  return v3;
}

- (MRProtocolClientConnection)initWithConnection:(id)a3 replyQueue:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = MRProtocolClientConnection;
  v9 = [(MRProtocolClientConnection *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_replyQueue, a4);
    if (initWithConnection_replyQueue____onceToken != -1)
    {
      [MRProtocolClientConnection initWithConnection:replyQueue:];
    }

    objc_storeStrong(&v10->_sendQueue, initWithConnection_replyQueue____queue);
    objc_storeStrong(&v10->_connection, a3);
    [(MRExternalDeviceTransportConnection *)v10->_connection addObserver:v10];
    v11 = objc_alloc_init(MEMORY[0x1E69B1438]);
    parser = v10->_parser;
    v10->_parser = v11;

    [(MSVMessageParser *)v10->_parser setDelegate:v10];
    v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
    pendingReplyQueue = v10->_pendingReplyQueue;
    v10->_pendingReplyQueue = v13;
  }

  return v10;
}

void __60__MRProtocolClientConnection_initWithConnection_replyQueue___block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.mediaremote.protocolClientConnection.sendQueue", v2);
  v1 = initWithConnection_replyQueue____queue;
  initWithConnection_replyQueue____queue = v0;
}

- (void)dealloc
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = _MRLogForCategory(4uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v22 = self;
    _os_log_impl(&dword_1A2860000, v3, OS_LOG_TYPE_DEFAULT, "[ProtocolClientConnection] %{public}@ Dealloc", buf, 0xCu);
  }

  self->_disconnected = 1;
  [(MRExternalDeviceTransportConnection *)self->_connection removeObserver:self];
  v4 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:104 description:@"MRProtocolClientConnection.dealloc"];
  [(MRExternalDeviceTransportConnection *)self->_connection closeWithError:v4];
  Error = MRMediaRemoteCreateError(25);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [(NSMutableDictionary *)self->_pendingReplyQueue allValues];
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      v10 = 0;
      do
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * v10);
        v12 = [[MRProtocolMessage alloc] initWithUnderlyingCodableMessage:0 error:Error];
        v13 = [v11 reply];
        (v13)[2](v13, v12);

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v15.receiver = self;
  v15.super_class = MRProtocolClientConnection;
  [(MRProtocolClientConnection *)&v15 dealloc];
  v14 = *MEMORY[0x1E69E9840];
}

- (NSString)debugDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  v5 = [(MRProtocolClientConnection *)self connection];
  v6 = [v3 initWithFormat:@"<%@:%p %@>", v4, self, v5];

  return v6;
}

- (NSError)error
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSError *)v2->_error copy];
  objc_sync_exit(v2);

  return v3;
}

- (void)setDeviceInfo:(id)a3
{
  v4 = a3;
  obj = self;
  objc_sync_enter(obj);
  deviceInfo = obj->_deviceInfo;
  obj->_deviceInfo = v4;

  objc_sync_exit(obj);
}

- (void)setSupportedMessages:(id)a3
{
  v4 = a3;
  obj = self;
  objc_sync_enter(obj);
  supportedMessages = obj->_supportedMessages;
  obj->_supportedMessages = v4;

  objc_sync_exit(obj);
}

- (void)sendMessage:(id)a3 timeout:(double)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(MRProtocolClientConnection *)self sendQueue];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __56__MRProtocolClientConnection_sendMessage_timeout_reply___block_invoke;
  v13[3] = &unk_1E769FB58;
  v13[4] = self;
  v14 = v8;
  v16 = a4;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  dispatch_async(v10, v13);
}

- (void)_sendMessage:(void *)a3 timeout:(double)a4 reply:
{
  v50 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  if (a1)
  {
    v9 = [a1 sendQueue];
    dispatch_assert_queue_V2(v9);

    if (v8)
    {
      v47[0] = MEMORY[0x1E69E9820];
      v47[1] = 3221225472;
      v47[2] = __57__MRProtocolClientConnection__sendMessage_timeout_reply___block_invoke;
      v47[3] = &unk_1E76A3AF8;
      v47[4] = a1;
      v48 = v8;
      v10 = MEMORY[0x1A58E3570](v47);
    }

    else
    {
      v10 = 0;
    }

    objc_initWeak(&location, a1);
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __57__MRProtocolClientConnection__sendMessage_timeout_reply___block_invoke_3;
    v42[3] = &unk_1E76A3B20;
    v34 = v10;
    v44 = v34;
    v7 = v7;
    v43 = v7;
    objc_copyWeak(&v45, &location);
    v11 = MEMORY[0x1A58E3570](v42);
    if (*(a1 + 64) == 1)
    {
      v12 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:100 description:@"connection disconnection when message was attempted to be sent"];
      (v11)[2](v11, v12);
LABEL_38:

      objc_destroyWeak(&v45);
      objc_destroyWeak(&location);

      goto LABEL_39;
    }

    if (([*(a1 + 8) isValid] & 1) == 0)
    {
      v12 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:100 description:@"connection is not valid"];
      (v11)[2](v11, v12);
      goto LABEL_38;
    }

    if (!v7)
    {
      v12 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:2 description:@"attempting to send nil message"];
      (v11)[2](v11, v12);
      v7 = 0;
      goto LABEL_38;
    }

    v12 = [a1 supportedMessages];
    if (![(MRProtocolClientConnection *)a1 _client:v12 supportsMessage:v7])
    {
      v16 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:108 format:{@"client does not support message M%lu> > <%lu>", -[MRProtocolMessage type](v7, "type"), objc_msgSend(v12, "lastSupportedMessageType")}];
      (v11)[2](v11, v16);
LABEL_37:

      goto LABEL_38;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v33 = v7;
      v13 = [(MRCompositeMessage *)v33 messages];
      v14 = [v13 count] == 0;

      if (v14)
      {
        v15 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:2 description:@"attempting to send composite message with no children"];
        (v11)[2](v11, v15);
        goto LABEL_18;
      }

      if (v34)
      {
        v15 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:2 description:@"attempting to send composite message that expects a reply"];
        (v11)[2](v11, v15);
LABEL_18:

        v16 = v33;
        v7 = v33;
        goto LABEL_37;
      }

      v7 = objc_alloc_init(MRCompositeMessage);
      v17 = [(MRCompositeMessage *)v33 transportOptions];

      if (v17)
      {
        v18 = [(MRCompositeMessage *)v33 transportOptions];
        [(MRCompositeMessage *)v7 setTransportOptions:v18];
      }

      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v19 = [(MRCompositeMessage *)v33 messages];
      v20 = [v19 countByEnumeratingWithState:&v38 objects:v49 count:16];
      if (v20)
      {
        v21 = *v39;
        do
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v39 != v21)
            {
              objc_enumerationMutation(v19);
            }

            v23 = *(*(&v38 + 1) + 8 * i);
            if ([(MRProtocolClientConnection *)a1 _client:v12 supportsMessage:v23])
            {
              [(MRCompositeMessage *)v7 addMessage:v23];
            }
          }

          v20 = [v19 countByEnumeratingWithState:&v38 objects:v49 count:16];
        }

        while (v20);
      }

      v24 = [(MRProtocolMessage *)v33 replyIdentifier];

      if (v24)
      {
        v25 = [[MRProtocolMessage alloc] initWithUnderlyingCodableMessage:0 error:0];
        v26 = [(MRProtocolMessage *)v33 replyIdentifier];
        [(MRProtocolMessage *)v25 setReplyIdentifier:v26];

        [(MRCompositeMessage *)v7 addMessage:v25];
      }
    }

    kdebug_trace();
    v16 = MEMORY[0x1A58E3570](v34);
    if (a4 > 0.0 && v34)
    {
      v27 = [MRBlockGuard alloc];
      v28 = [(MRProtocolMessage *)v7 uniqueIdentifier];
      v29 = [(MRBlockGuard *)v27 initWithTimeout:v28 reason:v11 handler:a4];

      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __57__MRProtocolClientConnection__sendMessage_timeout_reply___block_invoke_4;
      v35[3] = &unk_1E76A3AF8;
      v36 = v29;
      v37 = v34;
      v30 = v29;
      v31 = MEMORY[0x1A58E3570](v35);

      v16 = v31;
    }

    [(MRProtocolClientConnection *)a1 _sendMessage:v7 reply:v16];
    goto LABEL_37;
  }

LABEL_39:

  v32 = *MEMORY[0x1E69E9840];
}

void __57__MRProtocolClientConnection__sendMessage_timeout_reply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) replyQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__MRProtocolClientConnection__sendMessage_timeout_reply___block_invoke_2;
  v7[3] = &unk_1E769AB28;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void __57__MRProtocolClientConnection__sendMessage_timeout_reply___block_invoke_3(uint64_t a1, void *a2)
{
  if (*(a1 + 40))
  {
    v3 = a2;
    v7 = [[MRProtocolMessage alloc] initWithUnderlyingCodableMessage:0 error:v3];

    v4 = [*(a1 + 32) replyIdentifier];
    [(MRProtocolMessage *)v7 setReplyIdentifier:v4];

    v5 = +[MRProtocolMessageLogger sharedLogger];
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [v5 logMessage:@"Message Generated on behalf of" client:WeakRetained protocolMessage:*(a1 + 32)];

    (*(*(a1 + 40) + 16))();
  }
}

void __57__MRProtocolClientConnection__sendMessage_timeout_reply___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) disarm])
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (void)_sendMessage:(void *)a3 reply:
{
  v14 = a2;
  v5 = a3;
  if (a1)
  {
    v6 = [a1 sendQueue];
    dispatch_assert_queue_V2(v6);

    v7 = a1;
    objc_sync_enter(v7);
    if (v5)
    {
      v8 = [v14 replyIdentifier];

      if (!v8)
      {
        v9 = [MEMORY[0x1E696AFB0] UUID];
        v10 = [v9 UUIDString];
        [v14 setReplyIdentifier:v10];
      }

      v11 = objc_alloc_init(MRMessageReplyIdentifier);
      [(MRMessageReplyIdentifier *)v11 setReply:v5];
      v12 = v7[7];
      v13 = [v14 replyIdentifier];
      [v12 setObject:v11 forKey:v13];
    }

    [MRProtocolClientConnection _sendMessage:v7 reply:v14];
  }
}

- (void)disconnectWithError:(id)a3
{
  v6 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if (!v5->_disconnected)
  {
    objc_storeStrong(&v5->_error, a3);
    v5->_disconnected = 1;
    [(MRExternalDeviceTransportConnection *)v5->_connection closeWithError:v6];
    [(MRProtocolClientConnection *)&v5->super.isa _notifyDelegateClientDidDisconnectWithError:v6];
  }

  objc_sync_exit(v5);
}

- (id)dataForMessage:(id)a3
{
  v23[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v23[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v4 messages];

    v5 = v6;
  }

  v7 = objc_alloc_init(MEMORY[0x1E695DF88]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [(MRProtocolClientConnection *)self encryptDataForMessage:*(*(&v18 + 1) + 8 * i)];
        if (v13)
        {
          v14 = objc_alloc_init(MEMORY[0x1E695DF88]);
          v15 = [MEMORY[0x1E69B1438] createHeader:{objc_msgSend(v13, "length")}];
          [v14 appendData:v15];
          [v14 appendData:v13];
          [v7 appendData:v14];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  v16 = *MEMORY[0x1E69E9840];

  return v7;
}

- (void)_parseMessageData:(uint64_t)a1
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1 && (*(a1 + 64) & 1) == 0)
  {
    kdebug_trace();
    [*(a1 + 16) processData:v3];
    kdebug_trace();
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)parser:(id)a3 didParseMessage:(id)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v7 && !self->_disconnected)
  {
    v31 = 0;
    v8 = [(MRProtocolClientConnection *)self decryptData:v7 error:&v31];
    v9 = v31;
    if (v9)
    {
      v10 = v9;
      v11 = _MRLogForCategory(4uLL);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v34 = self;
        _os_log_impl(&dword_1A2860000, v11, OS_LOG_TYPE_DEFAULT, "[ProtocolClientConnection] %{public}@ Crypto Error. Disconnecting...", buf, 0xCu);
      }

      [(MRProtocolClientConnection *)self disconnectWithError:v10];
    }

    else
    {
      v13 = objc_autoreleasePoolPush();
      v30 = 0;
      v14 = [(MRProtocolClientConnection *)self _protocolMessageFromData:v8 error:&v30];
      v10 = v30;
      if (v10)
      {
        v15 = _MRLogForCategory(4uLL);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v34 = self;
          _os_log_impl(&dword_1A2860000, v15, OS_LOG_TYPE_DEFAULT, "[ProtocolClientConnection] %{public}@ Parse Error. Disconnecting...", buf, 0xCu);
        }

        [(MRProtocolClientConnection *)self disconnectWithError:v10];
      }

      else
      {
        v24 = v13;
        v25 = v8;
        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        v23 = v14;
        v16 = v14;
        v17 = [v16 countByEnumeratingWithState:&v26 objects:v32 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v27;
          do
          {
            for (i = 0; i != v18; ++i)
            {
              if (*v27 != v19)
              {
                objc_enumerationMutation(v16);
              }

              v21 = *(*(&v26 + 1) + 8 * i);
              v22 = +[MRProtocolMessageLogger sharedLogger];
              [v22 logMessage:@"Message Received From" client:self protocolMessage:v21];

              [v21 setClientConnection:self];
              [(MRProtocolClientConnection *)self _adjustTimestamp:v21];
              [(MRProtocolClientConnection *)self _processMessage:v21];
            }

            v18 = [v16 countByEnumeratingWithState:&v26 objects:v32 count:16];
          }

          while (v18);
        }

        v13 = v24;
        v8 = v25;
        v14 = v23;
      }

      objc_autoreleasePoolPop(v13);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_processMessage:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = a1;
    objc_sync_enter(v4);
    v5 = [v3 replyIdentifier];

    if (v5)
    {
      v7 = v4[7];
      v8 = [v3 replyIdentifier];
      v9 = [v7 objectForKey:v8];

      if (_os_feature_enabled_impl() && (v10 = [v9 messageNumber], v10 != objc_msgSend(v3, "type")) && objc_msgSend(v9, "messageNumber"))
      {
        v6 = 0;
      }

      else
      {
        v6 = [v9 reply];
        if (v6)
        {
          v11 = v4[7];
          v12 = [v3 replyIdentifier];
          [v11 removeObjectForKey:v12];

          [v3 setIsIncomingReply:1];
        }
      }
    }

    else
    {
      v6 = 0;
    }

    [(MRProtocolClientConnection *)v6 _processMessage:v4, &v13, v3];
  }
}

uint64_t __46__MRProtocolClientConnection__processMessage___block_invoke(void *a1)
{
  v2 = a1[4];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v4 = a1[4];
    v5 = a1[5];
    v6 = a1[6];

    return [v4 clientConnection:v5 didReceiveMessage:v6];
  }

  return result;
}

uint64_t __74__MRProtocolClientConnection__notifyDelegateClientDidDisconnectWithError___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v18;
    do
    {
      v6 = 0;
      do
      {
        if (*v18 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v17 + 1) + 8 * v6);
        v8 = *(a1 + 40);
        if (v8)
        {
          v9 = [v8 mr_errorByEnvelopingWithMRError:121];
        }

        else
        {
          v10 = objc_alloc(MEMORY[0x1E696ABC0]);
          v9 = [v10 initWithMRError:{121, v17}];
        }

        v11 = v9;
        v12 = [[MRProtocolMessage alloc] initWithUnderlyingCodableMessage:0 error:v9];
        v13 = [v7 reply];
        (v13)[2](v13, v12);

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v4);
  }

  v14 = *(a1 + 48);
  result = objc_opt_respondsToSelector();
  if (result)
  {
    result = [*(a1 + 48) clientDidDisconnect:*(a1 + 56) error:*(a1 + 40)];
  }

  v16 = *MEMORY[0x1E69E9840];
  return result;
}

- (MRProtocolClientConnectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)_client:(void *)a3 supportsMessage:
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (a1)
  {
    a1 = ([v5 isSupported:{objc_msgSend(v6, "type")}] & 1) != 0 || objc_msgSend(v7, "type") == 15;
  }

  return a1;
}

- (void)_notifyDelegateClientDidDisconnectWithError:(id *)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = [a1[7] allValues];
    WeakRetained = objc_loadWeakRetained(a1 + 12);
    v6 = [a1 replyQueue];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __74__MRProtocolClientConnection__notifyDelegateClientDidDisconnectWithError___block_invoke;
    v9[3] = &unk_1E769FC08;
    v10 = v4;
    v11 = v3;
    v12 = WeakRetained;
    v13 = a1;
    v7 = WeakRetained;
    v8 = v4;
    dispatch_async(v6, v9);
  }
}

- (id)_protocolMessageFromData:(uint64_t)a3 error:
{
  v8[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v3 = [MRProtocolMessage protocolMessageWithProtobufData:a2 error:a3];
    v4 = v3;
    if (v3)
    {
      v8[0] = v3;
      v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (void)_adjustTimestamp:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v8 = v3;
    v5 = [v3 timestamp];
    v4 = v8;
    if (v5)
    {
      if (!*(a1 + 32))
      {
        v6 = mach_absolute_time();
        v4 = v8;
        *(a1 + 32) = v6;
      }

      if (!*(a1 + 24))
      {
        v7 = [v4 timestamp];
        v4 = v8;
        *(a1 + 24) = v7;
      }

      [v8 setTimestamp:{*(a1 + 32) + ((objc_msgSend(v4, "timestamp") - *(a1 + 24)) / MRTimeUtilitiesGetProcessorTimeScale())}];
      v4 = v8;
    }
  }
}

- (void)_sendMessage:(id *)a1 reply:(void *)a2 .cold.1(id *a1, void *a2)
{
  v4 = a1[1];
  objc_sync_exit(a1);

  v5 = +[MRProtocolMessageLogger sharedLogger];
  [v5 logMessage:@"Message Sent To" client:a1 protocolMessage:a2];

  v7 = [a1 dataForMessage:a2];
  v6 = [a2 transportOptions];
  [v4 sendTransportData:v7 options:v6];
}

- (void)_processMessage:(void *)(a1 .cold.1(void (**a1)(void, void), id *obj, id *a3, void *a4)
{
  objc_sync_exit(obj);

  if (a1)
  {
    (a1)[2](a1, a4);
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(obj + 12);
    v9 = [obj replyQueue];
    *a3 = MEMORY[0x1E69E9820];
    a3[1] = 3221225472;
    a3[2] = __46__MRProtocolClientConnection__processMessage___block_invoke;
    a3[3] = &unk_1E769BA00;
    a3[4] = WeakRetained;
    a3[5] = obj;
    a3[6] = a4;
    v10 = WeakRetained;
    dispatch_async(v9, a3);
  }
}

@end