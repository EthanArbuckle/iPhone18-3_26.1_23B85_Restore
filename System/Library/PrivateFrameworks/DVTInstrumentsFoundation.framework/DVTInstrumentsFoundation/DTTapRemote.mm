@interface DTTapRemote
- (DTTapRemote)initWithConfig:(id)config memoHandler:(id)handler messageHandler:(id)messageHandler connection:(id)connection;
- (id)_fetchDataForReason:(unint64_t)reason;
- (void)_pause;
- (void)_processAllPendingMessagesIncludingMemoHandler:(BOOL)handler;
- (void)_start;
- (void)_stop;
- (void)_unpause;
- (void)messageReceived:(id)received;
@end

@implementation DTTapRemote

- (DTTapRemote)initWithConfig:(id)config memoHandler:(id)handler messageHandler:(id)messageHandler connection:(id)connection
{
  configCopy = config;
  handlerCopy = handler;
  messageHandlerCopy = messageHandler;
  connectionCopy = connection;
  v34.receiver = self;
  v34.super_class = DTTapRemote;
  v14 = [(DTTap *)&v34 initWithConfig:configCopy memoHandler:handlerCopy];
  v15 = v14;
  if (v14)
  {
    if (!messageHandlerCopy)
    {
      sub_24802EF90();
    }

    objc_storeStrong(&v14->_messageHandler, messageHandler);
    objc_storeStrong(&v15->_connection, connection);
    v15->_connectionEnabled = 1;
    objc_initWeak(&location, v15);
    serviceName = [configCopy serviceName];
    v17 = [connectionCopy makeChannelWithIdentifier:serviceName];
    channel = v15->_channel;
    v15->_channel = v17;

    v19 = v15->_channel;
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = sub_247FC401C;
    v31[3] = &unk_278EF3330;
    objc_copyWeak(&v32, &location);
    [(DTXChannel *)v19 setMessageHandler:v31];
    v29[0] = 0;
    v29[1] = v29;
    v29[2] = 0x2020000000;
    v30 = 1;
    config = [(DTTap *)v15 config];
    plist = [config plist];

    v22 = [MEMORY[0x277D03668] messageWithSelector:sel_setConfig_ objectArguments:{plist, 0}];
    v23 = v15->_channel;
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = sub_247FC4114;
    v28[3] = &unk_278EF1E08;
    v28[4] = v29;
    [(DTXChannel *)v23 sendMessageSync:v22 replyHandler:v28];

    v24 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v25 = dispatch_queue_create("DTTapRemote unprocessed message queue", v24);
    unprocessedMessageQueue = v15->_unprocessedMessageQueue;
    v15->_unprocessedMessageQueue = v25;

    _Block_object_dispose(v29, 8);
    objc_destroyWeak(&v32);
    objc_destroyWeak(&location);
  }

  return v15;
}

- (void)messageReceived:(id)received
{
  receivedCopy = received;
  v5 = receivedCopy;
  if (receivedCopy)
  {
    unprocessedMessageQueue = self->_unprocessedMessageQueue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = sub_247FC4254;
    v7[3] = &unk_278EF1550;
    v7[4] = self;
    v8 = receivedCopy;
    dispatch_async(unprocessedMessageQueue, v7);
  }
}

- (void)_processAllPendingMessagesIncludingMemoHandler:(BOOL)handler
{
  handlerCopy = handler;
  dispatch_sync(self->_unprocessedMessageQueue, &unk_285A18970);
  if (handlerCopy)
  {
    memoHandler = [(DTTap *)self memoHandler];
    [memoHandler processPendingMemos];
  }
}

- (void)_start
{
  if (self->_channel)
  {
    v6[0] = 0;
    v6[1] = v6;
    v6[2] = 0x2020000000;
    v7 = 1;
    v3 = [MEMORY[0x277D03668] messageWithSelector:sel_start objectArguments:0];
    channel = self->_channel;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = sub_247FC44A8;
    v5[3] = &unk_278EF1E08;
    v5[4] = v6;
    [(DTXChannel *)channel sendMessageSync:v3 replyHandler:v5];

    _Block_object_dispose(v6, 8);
    [(DTTapRemote *)self _processAllPendingMessagesIncludingMemoHandler:1];
  }
}

- (void)_stop
{
  if (self->_connectionEnabled)
  {
    if (!self->_channel)
    {
      return;
    }

    v6[0] = 0;
    v6[1] = v6;
    v6[2] = 0x2020000000;
    v7 = 1;
    v3 = [MEMORY[0x277D03668] messageWithSelector:sel_stop objectArguments:0];
    channel = self->_channel;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = sub_247FC46B8;
    v5[3] = &unk_278EF1E08;
    v5[4] = v6;
    [(DTXChannel *)channel sendMessageSync:v3 replyHandler:v5];

    _Block_object_dispose(v6, 8);
  }

  [(DTTapRemote *)self _processAllPendingMessagesIncludingMemoHandler:0];
  [(DTTap *)self setIsRunning:0];
}

- (void)_pause
{
  if (self->_channel)
  {
    v6[0] = 0;
    v6[1] = v6;
    v6[2] = 0x2020000000;
    v7 = 1;
    v3 = [MEMORY[0x277D03668] messageWithSelector:sel_pause objectArguments:0];
    channel = self->_channel;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = sub_247FC48B0;
    v5[3] = &unk_278EF1E08;
    v5[4] = v6;
    [(DTXChannel *)channel sendMessageSync:v3 replyHandler:v5];

    [(DTTapRemote *)self _processAllPendingMessagesIncludingMemoHandler:1];
    _Block_object_dispose(v6, 8);
  }
}

- (void)_unpause
{
  if (self->_channel)
  {
    v6[0] = 0;
    v6[1] = v6;
    v6[2] = 0x2020000000;
    v7 = 1;
    v3 = [MEMORY[0x277D03668] messageWithSelector:sel_unpause objectArguments:0];
    channel = self->_channel;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = sub_247FC4AA8;
    v5[3] = &unk_278EF1E08;
    v5[4] = v6;
    [(DTXChannel *)channel sendMessageSync:v3 replyHandler:v5];

    [(DTTapRemote *)self _processAllPendingMessagesIncludingMemoHandler:1];
    _Block_object_dispose(v6, 8);
  }
}

- (id)_fetchDataForReason:(unint64_t)reason
{
  config = [(DTTap *)self config];
  serviceVersion = [config serviceVersion];

  if (reason == 1 && serviceVersion >= 2)
  {
    channel = self->_channel;
    v8 = [MEMORY[0x277D03668] messageWithSelector:sel_fetchDataNow objectArguments:0];
    [(DTXChannel *)channel sendMessageSync:v8 replyHandler:&unk_285A18990];
  }

  [(DTTapRemote *)self _processAllPendingMessagesIncludingMemoHandler:reason != 0];
  memoHandler = [(DTTap *)self memoHandler];
  v10 = [memoHandler handleMemo:0];

  return v10;
}

@end