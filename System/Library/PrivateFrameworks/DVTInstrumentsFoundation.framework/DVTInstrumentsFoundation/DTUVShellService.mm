@interface DTUVShellService
- (DTUVShellService)initWithChannel:(id)a3;
- (id)_makeDTXMessageFrom:(id)a3;
- (id)_makeDTXReplyHandlerFrom:(id)a3;
- (id)_makeServiceMessageFrom:(id)a3 error:(id *)a4;
- (id)_makeServiceReplyHandlerFrom:(id)a3;
- (id)createExternalService:(id)a3 error:(id *)a4;
- (void)_activateService;
- (void)_bindServiceCancelationToChannelCancelation;
- (void)_replyToQueuedMessages:(id)a3;
- (void)messageReceived:(id)a3;
- (void)sendMessage:(id)a3;
@end

@implementation DTUVShellService

- (DTUVShellService)initWithChannel:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = DTUVShellService;
  v5 = [(DTXService *)&v15 initWithChannel:v4];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB18] array];
    queuedServiceMessages = v5->_queuedServiceMessages;
    v5->_queuedServiceMessages = v6;

    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-MessageQueue", objc_opt_class()];
    v9 = dispatch_queue_create([v8 UTF8String], 0);
    messageQueue = v5->_messageQueue;
    v5->_messageQueue = v9;

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = sub_248003CE0;
    v12[3] = &unk_278EF45A8;
    v13 = v5;
    v14 = v4;
    DTUVLaunchPreviewShell(v12);
  }

  return v5;
}

- (void)_bindServiceCancelationToChannelCancelation
{
  service = self->_service;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_248003F40;
  v6[3] = &unk_278EF1070;
  v6[4] = self;
  [(DTUVService *)service observeCancelation:v6];
  v4 = [(DTXService *)self channel];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_248003F84;
  v5[3] = &unk_278EF1070;
  v5[4] = self;
  [v4 registerDisconnectHandler:v5];
}

- (void)_activateService
{
  service = self->_service;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = sub_248004014;
  v3[3] = &unk_278EF45D0;
  v3[4] = self;
  [(DTUVService *)service activateWithCompletion:v3];
}

- (void)_replyToQueuedMessages:(id)a3
{
  v4 = a3;
  messageQueue = self->_messageQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_248004298;
  v7[3] = &unk_278EF1550;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(messageQueue, v7);
}

- (void)messageReceived:(id)a3
{
  v4 = a3;
  if (*MEMORY[0x277D03698] != v4)
  {
    v12 = 0;
    v5 = [(DTUVShellService *)self _makeServiceMessageFrom:v4 error:&v12];
    v6 = v12;
    if (v5)
    {
      messageQueue = self->_messageQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_248004524;
      block[3] = &unk_278EF1550;
      block[4] = self;
      v11 = v5;
      dispatch_sync(messageQueue, block);
    }

    else
    {
      v8 = [(DTXService *)self channel];
      v9 = [v4 newReplyWithError:v6];
      [v8 sendControlAsync:v9 replyHandler:0];
    }
  }
}

- (void)sendMessage:(id)a3
{
  v4 = a3;
  v7 = [(DTUVShellService *)self _makeDTXMessageFrom:v4];
  v5 = [(DTUVShellService *)self _makeDTXReplyHandlerFrom:v4];

  v6 = [(DTXService *)self channel];
  [v6 sendControlAsync:v7 replyHandler:v5];
}

- (id)_makeServiceMessageFrom:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 stringForMessageKey:@"type"];
  v8 = [(DTUVShellService *)self _makeServiceReplyHandlerFrom:v6];
  v9 = [v6 object];

  v10 = DTUVMakeServiceMessage(v7, v9, v8, a4);

  return v10;
}

- (id)_makeServiceReplyHandlerFrom:(id)a3
{
  v4 = a3;
  if ([v4 integerForMessageKey:@"UVOneWayMessageKey"] == 1)
  {
    v5 = 0;
  }

  else
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = sub_248004778;
    v7[3] = &unk_278EF45F8;
    v8 = v4;
    v9 = self;
    v5 = _Block_copy(v7);
  }

  return v5;
}

- (id)_makeDTXMessageFrom:(id)a3
{
  v3 = a3;
  v4 = [v3 payload];

  v5 = MEMORY[0x277D03668];
  if (v4)
  {
    v6 = [v3 payload];
    v7 = [v5 messageWithObject:v6];
  }

  else
  {
    v7 = [MEMORY[0x277D03668] message];
  }

  v8 = [v3 messageType];

  if (v8)
  {
    v9 = [v3 messageType];
    [v7 setString:v9 forMessageKey:@"type"];
  }

  v10 = [v3 replyHandler];

  if (!v10)
  {
    [v7 setInteger:1 forMessageKey:@"UVOneWayMessageKey"];
  }

  return v7;
}

- (id)_makeDTXReplyHandlerFrom:(id)a3
{
  v3 = a3;
  v4 = [v3 replyHandler];

  if (v4)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = sub_2480049EC;
    aBlock[3] = &unk_278EF32E8;
    v7 = v3;
    v4 = _Block_copy(aBlock);
  }

  return v4;
}

- (id)createExternalService:(id)a3 error:(id *)a4
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

@end