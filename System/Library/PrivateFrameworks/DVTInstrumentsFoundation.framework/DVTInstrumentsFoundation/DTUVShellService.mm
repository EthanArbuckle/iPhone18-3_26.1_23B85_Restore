@interface DTUVShellService
- (DTUVShellService)initWithChannel:(id)channel;
- (id)_makeDTXMessageFrom:(id)from;
- (id)_makeDTXReplyHandlerFrom:(id)from;
- (id)_makeServiceMessageFrom:(id)from error:(id *)error;
- (id)_makeServiceReplyHandlerFrom:(id)from;
- (id)createExternalService:(id)service error:(id *)error;
- (void)_activateService;
- (void)_bindServiceCancelationToChannelCancelation;
- (void)_replyToQueuedMessages:(id)messages;
- (void)messageReceived:(id)received;
- (void)sendMessage:(id)message;
@end

@implementation DTUVShellService

- (DTUVShellService)initWithChannel:(id)channel
{
  channelCopy = channel;
  v15.receiver = self;
  v15.super_class = DTUVShellService;
  v5 = [(DTXService *)&v15 initWithChannel:channelCopy];
  if (v5)
  {
    array = [MEMORY[0x277CBEB18] array];
    queuedServiceMessages = v5->_queuedServiceMessages;
    v5->_queuedServiceMessages = array;

    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-MessageQueue", objc_opt_class()];
    v9 = dispatch_queue_create([v8 UTF8String], 0);
    messageQueue = v5->_messageQueue;
    v5->_messageQueue = v9;

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = sub_248003CE0;
    v12[3] = &unk_278EF45A8;
    v13 = v5;
    v14 = channelCopy;
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
  channel = [(DTXService *)self channel];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_248003F84;
  v5[3] = &unk_278EF1070;
  v5[4] = self;
  [channel registerDisconnectHandler:v5];
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

- (void)_replyToQueuedMessages:(id)messages
{
  messagesCopy = messages;
  messageQueue = self->_messageQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_248004298;
  v7[3] = &unk_278EF1550;
  v7[4] = self;
  v8 = messagesCopy;
  v6 = messagesCopy;
  dispatch_sync(messageQueue, v7);
}

- (void)messageReceived:(id)received
{
  receivedCopy = received;
  if (*MEMORY[0x277D03698] != receivedCopy)
  {
    v12 = 0;
    v5 = [(DTUVShellService *)self _makeServiceMessageFrom:receivedCopy error:&v12];
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
      channel = [(DTXService *)self channel];
      v9 = [receivedCopy newReplyWithError:v6];
      [channel sendControlAsync:v9 replyHandler:0];
    }
  }
}

- (void)sendMessage:(id)message
{
  messageCopy = message;
  v7 = [(DTUVShellService *)self _makeDTXMessageFrom:messageCopy];
  v5 = [(DTUVShellService *)self _makeDTXReplyHandlerFrom:messageCopy];

  channel = [(DTXService *)self channel];
  [channel sendControlAsync:v7 replyHandler:v5];
}

- (id)_makeServiceMessageFrom:(id)from error:(id *)error
{
  fromCopy = from;
  v7 = [fromCopy stringForMessageKey:@"type"];
  v8 = [(DTUVShellService *)self _makeServiceReplyHandlerFrom:fromCopy];
  object = [fromCopy object];

  v10 = DTUVMakeServiceMessage(v7, object, v8, error);

  return v10;
}

- (id)_makeServiceReplyHandlerFrom:(id)from
{
  fromCopy = from;
  if ([fromCopy integerForMessageKey:@"UVOneWayMessageKey"] == 1)
  {
    v5 = 0;
  }

  else
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = sub_248004778;
    v7[3] = &unk_278EF45F8;
    v8 = fromCopy;
    selfCopy = self;
    v5 = _Block_copy(v7);
  }

  return v5;
}

- (id)_makeDTXMessageFrom:(id)from
{
  fromCopy = from;
  payload = [fromCopy payload];

  v5 = MEMORY[0x277D03668];
  if (payload)
  {
    payload2 = [fromCopy payload];
    message = [v5 messageWithObject:payload2];
  }

  else
  {
    message = [MEMORY[0x277D03668] message];
  }

  messageType = [fromCopy messageType];

  if (messageType)
  {
    messageType2 = [fromCopy messageType];
    [message setString:messageType2 forMessageKey:@"type"];
  }

  replyHandler = [fromCopy replyHandler];

  if (!replyHandler)
  {
    [message setInteger:1 forMessageKey:@"UVOneWayMessageKey"];
  }

  return message;
}

- (id)_makeDTXReplyHandlerFrom:(id)from
{
  fromCopy = from;
  replyHandler = [fromCopy replyHandler];

  if (replyHandler)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = sub_2480049EC;
    aBlock[3] = &unk_278EF32E8;
    v7 = fromCopy;
    replyHandler = _Block_copy(aBlock);
  }

  return replyHandler;
}

- (id)createExternalService:(id)service error:(id *)error
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

@end