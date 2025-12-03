@interface HCServer
- (AXHeardServerDelegate)delegate;
- (AXHeardServerMessageDelegate)messageDelegate;
- (BOOL)isConnected;
- (HCServer)init;
- (id)sendSynchronousMessageWithPayloadAndGetResponse:(id)response andIdentifier:(unint64_t)identifier;
- (id)setupServerIfNecessary;
- (void)dealloc;
- (void)handleMessageWithPayload:(id)payload forIdentifier:(unint64_t)identifier;
- (void)handleReply:(id)reply;
- (void)resetConnection;
- (void)sendMessageWithPayload:(id)payload andIdentifier:(unint64_t)identifier;
- (void)sendMessageWithPayload:(id)payload identifier:(unint64_t)identifier andResponseBlock:(id)block;
- (void)sendSynchronousMessageWithPayload:(id)payload andIdentifier:(unint64_t)identifier;
- (void)terminateConnectionAndNotify:(BOOL)notify;
@end

@implementation HCServer

- (id)setupServerIfNecessary
{
  v16 = *MEMORY[0x1E69E9840];
  connectionQueue = [(HCServer *)self connectionQueue];
  mach_service = [(HCServer *)self xpcConnection];
  if (!mach_service)
  {
    if ([(HCServer *)self deadConnection])
    {
      mach_service = 0;
    }

    else
    {
      mach_service = xpc_connection_create_mach_service([@"com.apple.accessibility.heard" UTF8String], connectionQueue, 0);
      xpc_connection_set_target_queue(mach_service, connectionQueue);
      objc_initWeak(&location, self);
      v8 = MEMORY[0x1E69E9820];
      v9 = 3221225472;
      v10 = __34__HCServer_setupServerIfNecessary__block_invoke;
      v11 = &unk_1E857ED50;
      objc_copyWeak(&v12, &location);
      xpc_connection_set_event_handler(mach_service, &v8);
      xpc_connection_activate(mach_service);
      [(HCServer *)self setXpcConnection:mach_service, v8, v9, v10, v11];
      v5 = HCLogHearingXPC();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        selfCopy = self;
        _os_log_impl(&dword_1D952C000, v5, OS_LOG_TYPE_DEFAULT, "Set new xpc connection: %@", buf, 0xCu);
      }

      objc_destroyWeak(&v12);
      objc_destroyWeak(&location);
    }
  }

  v6 = *MEMORY[0x1E69E9840];

  return mach_service;
}

void __34__HCServer_setupServerIfNecessary__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleReply:v3];
}

- (HCServer)init
{
  v7.receiver = self;
  v7.super_class = HCServer;
  v2 = [(HCServer *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v4 = dispatch_queue_create("heard_xpc_queue", v3);

    [(HCServer *)v2 setConnectionQueue:v4];
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [(HCServer *)v2 setResponseBlocks:dictionary];
  }

  return v2;
}

- (void)dealloc
{
  [(HCServer *)self terminateConnectionAndNotify:1];
  v3.receiver = self;
  v3.super_class = HCServer;
  [(HCServer *)&v3 dealloc];
}

- (void)terminateConnectionAndNotify:(BOOL)notify
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = HCLogHearingXPC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_1D952C000, v5, OS_LOG_TYPE_DEFAULT, "Connection terminated: %@", buf, 0xCu);
  }

  connectionQueue = [(HCServer *)self connectionQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __41__HCServer_terminateConnectionAndNotify___block_invoke;
  v8[3] = &unk_1E857EC88;
  v8[4] = self;
  notifyCopy = notify;
  dispatch_async(connectionQueue, v8);

  v7 = *MEMORY[0x1E69E9840];
}

void __41__HCServer_terminateConnectionAndNotify___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setXpcConnection:0];
  if (*(a1 + 40) == 1)
  {
    v2 = [*(a1 + 32) delegate];
    if (v2)
    {
      v3 = v2;
      v4 = [*(a1 + 32) delegate];
      v5 = objc_opt_respondsToSelector();

      if (v5)
      {
        v6 = [*(a1 + 32) delegate];
        [v6 hearingServerDidDie:*(a1 + 32)];
      }
    }
  }
}

- (void)resetConnection
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = HCLogHearingXPC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_1D952C000, v3, OS_LOG_TYPE_DEFAULT, "Connection reset: %@", &v5, 0xCu);
  }

  [(HCServer *)self terminateConnectionAndNotify:1];
  v4 = *MEMORY[0x1E69E9840];
}

- (BOOL)isConnected
{
  xpcConnection = [(HCServer *)self xpcConnection];
  v3 = xpcConnection != 0;

  return v3;
}

- (void)handleReply:(id)reply
{
  replyCopy = reply;
  v5 = MEMORY[0x1DA732070]();
  if (v5 == MEMORY[0x1E69E9E98])
  {
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __24__HCServer_handleReply___block_invoke;
    v22[3] = &unk_1E857ECB0;
    v22[4] = self;
    v9 = MEMORY[0x1DA731E20](v22);
    v10 = v9;
    if (replyCopy == MEMORY[0x1E69E9E18])
    {
      v11 = dispatch_get_global_queue(21, 0);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __24__HCServer_handleReply___block_invoke_7;
      block[3] = &unk_1E857ED28;
      block[4] = self;
      v21 = v10;
      dispatch_async(v11, block);
    }

    else
    {
      (*(v9 + 16))(v9, 1);
    }

    if (replyCopy == MEMORY[0x1E69E9E20])
    {
      v12 = HCLogHearingXPC();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [HCServer handleReply:v12];
      }

      [(HCServer *)self setDeadConnection:1];
    }

    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error in client connection event handler: %s", xpc_dictionary_get_string(replyCopy, *MEMORY[0x1E69E9E28])];
    [(HCServer *)self handleMessageError:v13 destructive:1];
  }

  else if (v5 == MEMORY[0x1E69E9E80])
  {
    v19 = 0;
    v6 = [MEMORY[0x1E6988810] dictionaryFromXPCMessage:replyCopy error:&v19];
    v7 = v19;
    if (v7)
    {
      goto LABEL_4;
    }

    v14 = [v6 objectForKey:@"axha_payload"];
    if (!v14)
    {
      goto LABEL_4;
    }

    v15 = v14;
    v16 = [v6 objectForKey:@"axha_messageID"];
    unsignedLongLongValue = [v16 unsignedLongLongValue];

    if (unsignedLongLongValue)
    {
      v8 = [v6 objectForKey:@"axha_payload"];
      v18 = [v6 objectForKey:@"axha_messageID"];
      -[HCServer handleMessageWithPayload:forIdentifier:](self, "handleMessageWithPayload:forIdentifier:", v8, [v18 unsignedLongLongValue]);
    }

    else
    {
LABEL_4:
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Malformed message: %@", v6];
      [(HCServer *)self handleMessageError:v8 destructive:0];
    }
  }
}

uint64_t __24__HCServer_handleReply___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = HCLogHearingXPC();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_1D952C000, v3, OS_LOG_TYPE_DEFAULT, "Restarting connection", v6, 2u);
    }

    return [*(a1 + 32) resetConnection];
  }

  else
  {
    v5 = *(a1 + 32);

    return [v5 terminateConnectionAndNotify:0];
  }
}

void __24__HCServer_handleReply___block_invoke_7(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __24__HCServer_handleReply___block_invoke_2;
  v2[3] = &unk_1E857ED00;
  v2[4] = v1;
  v3 = *(a1 + 40);
  [v1 shouldRestartOnInterruption:v2];
}

void __24__HCServer_handleReply___block_invoke_2(uint64_t a1, char a2)
{
  v4 = [*(a1 + 32) connectionQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __24__HCServer_handleReply___block_invoke_3;
  v6[3] = &unk_1E857ECD8;
  v7 = *(a1 + 40);
  v8 = a2;
  dispatch_async(v4, v6);

  v5 = HCLogHearingXPC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __24__HCServer_handleReply___block_invoke_2_cold_1(a2, v5);
  }
}

- (void)sendSynchronousMessageWithPayload:(id)payload andIdentifier:(unint64_t)identifier
{
  v5 = MEMORY[0x1E6988810];
  v6 = [HCUtilities messagePayloadFromDictionary:payload andIdentifier:identifier];
  v13 = 0;
  v7 = [v5 copyXPCMessageFromDictionary:v6 inReplyToXPCMessage:0 error:&v13];
  v8 = v13;

  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = v7 == 0;
  }

  if (!v9)
  {
    connectionQueue = [(HCServer *)self connectionQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __60__HCServer_sendSynchronousMessageWithPayload_andIdentifier___block_invoke;
    block[3] = &unk_1E857ED78;
    block[4] = self;
    v12 = v7;
    dispatch_async(connectionQueue, block);
  }
}

void __60__HCServer_sendSynchronousMessageWithPayload_andIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) setupServerIfNecessary];
  if (v2)
  {
    v4 = v2;
    v3 = xpc_connection_send_message_with_reply_sync(v2, *(a1 + 40));
    [*(a1 + 32) handleReply:v3];

    v2 = v4;
  }
}

- (id)sendSynchronousMessageWithPayloadAndGetResponse:(id)response andIdentifier:(unint64_t)identifier
{
  responseCopy = response;
  v7 = MEMORY[0x1E6988810];
  v8 = [HCUtilities messagePayloadFromDictionary:responseCopy andIdentifier:identifier];
  v24 = 0;
  v9 = [v7 copyXPCMessageFromDictionary:v8 inReplyToXPCMessage:0 error:&v24];
  v10 = v24;

  v11 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy_;
  v22 = __Block_byref_object_dispose_;
  v23 = 0;
  if (!v10 && v9)
  {
    connectionQueue = [(HCServer *)self connectionQueue];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __74__HCServer_sendSynchronousMessageWithPayloadAndGetResponse_andIdentifier___block_invoke;
    v15[3] = &unk_1E857EDA0;
    v15[4] = self;
    v16 = v9;
    v17 = &v18;
    dispatch_sync(connectionQueue, v15);

    v11 = v19[5];
  }

  v13 = v11;
  _Block_object_dispose(&v18, 8);

  return v13;
}

void __74__HCServer_sendSynchronousMessageWithPayloadAndGetResponse_andIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) setupServerIfNecessary];
  v3 = v2;
  if (v2)
  {
    v4 = xpc_connection_send_message_with_reply_sync(v2, *(a1 + 40));
    v5 = v4;
    if (v4 && MEMORY[0x1DA732070](v4) == MEMORY[0x1E69E9E80])
    {
      v12 = 0;
      v6 = [MEMORY[0x1E6988810] dictionaryFromXPCMessage:v5 error:&v12];
      v7 = v12;
      if (!v7)
      {
        v8 = [v6 objectForKey:@"axha_payload"];

        if (v8)
        {
          v9 = [v6 objectForKey:@"axha_payload"];
          v10 = *(*(a1 + 48) + 8);
          v11 = *(v10 + 40);
          *(v10 + 40) = v9;
        }
      }
    }
  }
}

- (void)sendMessageWithPayload:(id)payload andIdentifier:(unint64_t)identifier
{
  v5 = MEMORY[0x1E6988810];
  v6 = [HCUtilities messagePayloadFromDictionary:payload andIdentifier:identifier];
  v13 = 0;
  v7 = [v5 copyXPCMessageFromDictionary:v6 inReplyToXPCMessage:0 error:&v13];
  v8 = v13;

  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = v7 == 0;
  }

  if (!v9)
  {
    connectionQueue = [(HCServer *)self connectionQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __49__HCServer_sendMessageWithPayload_andIdentifier___block_invoke;
    block[3] = &unk_1E857ED78;
    block[4] = self;
    v12 = v7;
    dispatch_async(connectionQueue, block);
  }
}

void __49__HCServer_sendMessageWithPayload_andIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) setupServerIfNecessary];
  if (v2)
  {
    v3 = v2;
    xpc_connection_send_message(v2, *(a1 + 40));
    v2 = v3;
  }
}

- (void)sendMessageWithPayload:(id)payload identifier:(unint64_t)identifier andResponseBlock:(id)block
{
  payloadCopy = payload;
  blockCopy = block;
  connectionQueue = [(HCServer *)self connectionQueue];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __63__HCServer_sendMessageWithPayload_identifier_andResponseBlock___block_invoke;
  v13[3] = &unk_1E857EDC8;
  v14 = payloadCopy;
  selfCopy = self;
  v16 = blockCopy;
  identifierCopy = identifier;
  v11 = blockCopy;
  v12 = payloadCopy;
  dispatch_async(connectionQueue, v13);
}

void __63__HCServer_sendMessageWithPayload_identifier_andResponseBlock___block_invoke(uint64_t a1)
{
  v6 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:*(a1 + 32)];
  if (*(a1 + 48))
  {
    v2 = [MEMORY[0x1E696AFB0] UUID];
    v3 = [v2 UUIDString];

    [v6 setValue:v3 forKey:@"HCMessageUUIDKey"];
    v4 = [*(a1 + 40) responseBlocks];
    v5 = MEMORY[0x1DA731E20](*(a1 + 48));
    [v4 setValue:v5 forKey:v3];
  }

  [*(a1 + 40) sendMessageWithPayload:v6 andIdentifier:*(a1 + 56)];
}

- (void)handleMessageWithPayload:(id)payload forIdentifier:(unint64_t)identifier
{
  payloadCopy = payload;
  v6 = [payloadCopy valueForKey:@"HCMessageUUIDKey"];
  responseBlocks = [(HCServer *)self responseBlocks];
  v8 = [responseBlocks valueForKey:v6];

  if (v8)
  {
    (v8)[2](v8, payloadCopy);
    responseBlocks2 = [(HCServer *)self responseBlocks];
    [responseBlocks2 removeObjectForKey:v6];
  }

  else
  {
    messageDelegate = [(HCServer *)self messageDelegate];
    v11 = objc_opt_respondsToSelector();

    if ((v11 & 1) == 0)
    {
      goto LABEL_6;
    }

    responseBlocks2 = [(HCServer *)self messageDelegate];
    [responseBlocks2 handleMessageWithPayload:payloadCopy forIdentifier:identifier];
  }

LABEL_6:
}

- (AXHeardServerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (AXHeardServerMessageDelegate)messageDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_messageDelegate);

  return WeakRetained;
}

void __24__HCServer_handleReply___block_invoke_2_cold_1(char a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = 67109120;
  v3[1] = a1 & 1;
  _os_log_error_impl(&dword_1D952C000, a2, OS_LOG_TYPE_ERROR, "Connection interrupted, restarting: %d", v3, 8u);
  v2 = *MEMORY[0x1E69E9840];
}

@end