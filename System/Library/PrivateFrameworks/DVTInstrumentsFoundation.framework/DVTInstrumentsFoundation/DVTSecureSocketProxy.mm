@interface DVTSecureSocketProxy
- (void)_onIOQueue_cancelProxy;
- (void)_onIOQueue_finishCleanup;
- (void)_onIOQueue_sendDataToConnection:(id)connection;
- (void)readDataFromSocketAndSendToConnection;
- (void)receiveDataFromConnectionAndWriteToSocket;
@end

@implementation DVTSecureSocketProxy

- (void)_onIOQueue_cancelProxy
{
  ioQueue = [(DVTSecureSocketProxy *)self ioQueue];
  dispatch_assert_queue_V2(ioQueue);

  if (![(DVTSecureSocketProxy *)self cancelled])
  {
    [(DVTSecureSocketProxy *)self setCancelled:1];
    [(DVTSecureSocketProxy *)self setSendDataToConnection:0];
    [(DVTSecureSocketProxy *)self setReceiveDataFromConnection:0];
    if (![(DVTSecureSocketProxy *)self pendingWrites])
    {
      socketIOChannel = [(DVTSecureSocketProxy *)self socketIOChannel];
      dispatch_io_close(socketIOChannel, 1uLL);
    }

    canReceiveFromConnection = [(DVTSecureSocketProxy *)self canReceiveFromConnection];
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = sub_247F7A248;
    handler[3] = &unk_278EF1070;
    handler[4] = self;
    dispatch_source_set_cancel_handler(canReceiveFromConnection, handler);

    canSendToConnection = [(DVTSecureSocketProxy *)self canSendToConnection];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = sub_247F7A330;
    v9[3] = &unk_278EF1070;
    v9[4] = self;
    dispatch_source_set_cancel_handler(canSendToConnection, v9);

    canReceiveFromConnection2 = [(DVTSecureSocketProxy *)self canReceiveFromConnection];
    dispatch_source_cancel(canReceiveFromConnection2);

    canSendToConnection2 = [(DVTSecureSocketProxy *)self canSendToConnection];
    dispatch_source_cancel(canSendToConnection2);
  }
}

- (void)_onIOQueue_finishCleanup
{
  ioQueue = [(DVTSecureSocketProxy *)self ioQueue];
  dispatch_assert_queue_V2(ioQueue);

  cleanupConnection = [(DVTSecureSocketProxy *)self cleanupConnection];
  if (cleanupConnection)
  {
    v8 = cleanupConnection;
    canReceiveFromConnection = [(DVTSecureSocketProxy *)self canReceiveFromConnection];
    if (canReceiveFromConnection || ([(DVTSecureSocketProxy *)self canSendToConnection], (canReceiveFromConnection = objc_claimAutoreleasedReturnValue()) != 0))
    {
    }

    else
    {
      socketIOChannel = [(DVTSecureSocketProxy *)self socketIOChannel];

      if (!socketIOChannel)
      {
        cleanupConnection2 = [(DVTSecureSocketProxy *)self cleanupConnection];
        cleanupConnection2[2]();

        [(DVTSecureSocketProxy *)self setCleanupConnection:0];
      }
    }
  }
}

- (void)receiveDataFromConnectionAndWriteToSocket
{
  receiveFromConnectionQueue = [(DVTSecureSocketProxy *)self receiveFromConnectionQueue];
  dispatch_assert_queue_V2(receiveFromConnectionQueue);

  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_247F7A674;
  v12 = sub_247F7A684;
  receiveFromConnectionBufferPool = [(DVTSecureSocketProxy *)self receiveFromConnectionBufferPool];
  blockingAcquireBuffer = [receiveFromConnectionBufferPool blockingAcquireBuffer];

  ioQueue = [(DVTSecureSocketProxy *)self ioQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_247F7A68C;
  v7[3] = &unk_278EF1890;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(ioQueue, v7);

  if (v9[5])
  {
    receiveFromConnectionBufferPool2 = [(DVTSecureSocketProxy *)self receiveFromConnectionBufferPool];
    [receiveFromConnectionBufferPool2 releaseBuffer:v9[5]];
  }

  _Block_object_dispose(&v8, 8);
}

- (void)readDataFromSocketAndSendToConnection
{
  sendToConnectionQueue = [(DVTSecureSocketProxy *)self sendToConnectionQueue];
  dispatch_assert_queue_V2(sendToConnectionQueue);

  ioQueue = [(DVTSecureSocketProxy *)self ioQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_247F7AB60;
  block[3] = &unk_278EF1070;
  block[4] = self;
  dispatch_sync(ioQueue, block);

  sendToConnectionCompleted = [(DVTSecureSocketProxy *)self sendToConnectionCompleted];
  dispatch_group_wait(sendToConnectionCompleted, 0xFFFFFFFFFFFFFFFFLL);
}

- (void)_onIOQueue_sendDataToConnection:(id)connection
{
  connectionCopy = connection;
  ioQueue = [(DVTSecureSocketProxy *)self ioQueue];
  dispatch_assert_queue_V2(ioQueue);

  if (![(DVTSecureSocketProxy *)self cancelled])
  {
    applier[0] = MEMORY[0x277D85DD0];
    applier[1] = 3221225472;
    applier[2] = sub_247F7AF04;
    applier[3] = &unk_278EF18E0;
    applier[4] = self;
    dispatch_data_apply(connectionCopy, applier);
  }
}

@end