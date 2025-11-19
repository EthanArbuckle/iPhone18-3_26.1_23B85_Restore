@interface DVTSecureSocketProxy
- (void)_onIOQueue_cancelProxy;
- (void)_onIOQueue_finishCleanup;
- (void)_onIOQueue_sendDataToConnection:(id)a3;
- (void)readDataFromSocketAndSendToConnection;
- (void)receiveDataFromConnectionAndWriteToSocket;
@end

@implementation DVTSecureSocketProxy

- (void)_onIOQueue_cancelProxy
{
  v3 = [(DVTSecureSocketProxy *)self ioQueue];
  dispatch_assert_queue_V2(v3);

  if (![(DVTSecureSocketProxy *)self cancelled])
  {
    [(DVTSecureSocketProxy *)self setCancelled:1];
    [(DVTSecureSocketProxy *)self setSendDataToConnection:0];
    [(DVTSecureSocketProxy *)self setReceiveDataFromConnection:0];
    if (![(DVTSecureSocketProxy *)self pendingWrites])
    {
      v4 = [(DVTSecureSocketProxy *)self socketIOChannel];
      dispatch_io_close(v4, 1uLL);
    }

    v5 = [(DVTSecureSocketProxy *)self canReceiveFromConnection];
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = sub_247F7A248;
    handler[3] = &unk_278EF1070;
    handler[4] = self;
    dispatch_source_set_cancel_handler(v5, handler);

    v6 = [(DVTSecureSocketProxy *)self canSendToConnection];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = sub_247F7A330;
    v9[3] = &unk_278EF1070;
    v9[4] = self;
    dispatch_source_set_cancel_handler(v6, v9);

    v7 = [(DVTSecureSocketProxy *)self canReceiveFromConnection];
    dispatch_source_cancel(v7);

    v8 = [(DVTSecureSocketProxy *)self canSendToConnection];
    dispatch_source_cancel(v8);
  }
}

- (void)_onIOQueue_finishCleanup
{
  v3 = [(DVTSecureSocketProxy *)self ioQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(DVTSecureSocketProxy *)self cleanupConnection];
  if (v4)
  {
    v8 = v4;
    v5 = [(DVTSecureSocketProxy *)self canReceiveFromConnection];
    if (v5 || ([(DVTSecureSocketProxy *)self canSendToConnection], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
    {
    }

    else
    {
      v6 = [(DVTSecureSocketProxy *)self socketIOChannel];

      if (!v6)
      {
        v7 = [(DVTSecureSocketProxy *)self cleanupConnection];
        v7[2]();

        [(DVTSecureSocketProxy *)self setCleanupConnection:0];
      }
    }
  }
}

- (void)receiveDataFromConnectionAndWriteToSocket
{
  v3 = [(DVTSecureSocketProxy *)self receiveFromConnectionQueue];
  dispatch_assert_queue_V2(v3);

  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_247F7A674;
  v12 = sub_247F7A684;
  v4 = [(DVTSecureSocketProxy *)self receiveFromConnectionBufferPool];
  v13 = [v4 blockingAcquireBuffer];

  v5 = [(DVTSecureSocketProxy *)self ioQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_247F7A68C;
  v7[3] = &unk_278EF1890;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(v5, v7);

  if (v9[5])
  {
    v6 = [(DVTSecureSocketProxy *)self receiveFromConnectionBufferPool];
    [v6 releaseBuffer:v9[5]];
  }

  _Block_object_dispose(&v8, 8);
}

- (void)readDataFromSocketAndSendToConnection
{
  v3 = [(DVTSecureSocketProxy *)self sendToConnectionQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(DVTSecureSocketProxy *)self ioQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_247F7AB60;
  block[3] = &unk_278EF1070;
  block[4] = self;
  dispatch_sync(v4, block);

  v5 = [(DVTSecureSocketProxy *)self sendToConnectionCompleted];
  dispatch_group_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
}

- (void)_onIOQueue_sendDataToConnection:(id)a3
{
  v4 = a3;
  v5 = [(DVTSecureSocketProxy *)self ioQueue];
  dispatch_assert_queue_V2(v5);

  if (![(DVTSecureSocketProxy *)self cancelled])
  {
    applier[0] = MEMORY[0x277D85DD0];
    applier[1] = 3221225472;
    applier[2] = sub_247F7AF04;
    applier[3] = &unk_278EF18E0;
    applier[4] = self;
    dispatch_data_apply(v4, applier);
  }
}

@end