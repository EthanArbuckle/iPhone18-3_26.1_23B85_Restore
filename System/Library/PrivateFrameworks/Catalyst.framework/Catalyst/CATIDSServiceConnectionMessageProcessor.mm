@interface CATIDSServiceConnectionMessageProcessor
- (CATIDSServiceConnectionMessageProcessor)initWithWorkQueue:(id)queue connectionIdentifier:(id)identifier;
- (CATIDSServiceConnectionMessageProcessorDelegate)delegate;
- (void)receiveMessage:(id)message;
@end

@implementation CATIDSServiceConnectionMessageProcessor

- (CATIDSServiceConnectionMessageProcessor)initWithWorkQueue:(id)queue connectionIdentifier:(id)identifier
{
  queueCopy = queue;
  identifierCopy = identifier;
  v12.receiver = self;
  v12.super_class = CATIDSServiceConnectionMessageProcessor;
  v9 = [(CATIDSServiceConnectionMessageProcessor *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->mWorkQueue, queue);
    objc_storeStrong(&v10->mConnectionIdentifier, identifier);
  }

  return v10;
}

- (void)receiveMessage:(id)message
{
  messageCopy = message;
  CATAssertIsQueue(self->mWorkQueue);
  connectionIdentifier = [messageCopy connectionIdentifier];
  v5 = [connectionIdentifier isEqual:self->mConnectionIdentifier];

  if (v5)
  {
    delegate = [(CATIDSServiceConnectionMessageProcessor *)self delegate];
    [delegate messageProcessorWantsToExtendKeepAlive:self];

    receivedSequenceNumber = [messageCopy receivedSequenceNumber];

    if (receivedSequenceNumber)
    {
      delegate2 = [(CATIDSServiceConnectionMessageProcessor *)self delegate];
      receivedSequenceNumber2 = [messageCopy receivedSequenceNumber];
      [delegate2 messageProcessor:self wantsToAckUpTo:{objc_msgSend(receivedSequenceNumber2, "unsignedIntegerValue")}];
    }

    content = [messageCopy content];
    contentType = [content contentType];

    if (contentType <= 3)
    {
      if (contentType != 1)
      {
        if (contentType != 2)
        {
          goto LABEL_26;
        }

        delegate3 = [(CATIDSServiceConnectionMessageProcessor *)self delegate];
        [delegate3 messageProcessorWantsToAcknowledgeRemote:self];
        goto LABEL_25;
      }

      delegate3 = [(CATIDSServiceConnectionMessageProcessor *)self delegate];
      content2 = [messageCopy content];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [CATIDSServiceConnectionMessageProcessor receiveMessage:];
      }

      [delegate3 messageProcessor:self wantsAggregation:content2];
    }

    else
    {
      switch(contentType)
      {
        case 4:
          delegate3 = [(CATIDSServiceConnectionMessageProcessor *)self delegate];
          content2 = [messageCopy content];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            [CATIDSServiceConnectionMessageProcessor receiveMessage:];
          }

          error = [content2 error];
          [delegate3 messageProcessor:self wantsToCloseWithError:error];
          break;
        case 5:
          delegate3 = [(CATIDSServiceConnectionMessageProcessor *)self delegate];
          content2 = [messageCopy content];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            [CATIDSServiceConnectionMessageProcessor receiveMessage:];
          }

          [delegate3 messageProcessor:self receivedExpectedSequence:{objc_msgSend(content2, "expectedSequenceNumber")}];
          goto LABEL_24;
        case 6:
          delegate3 = [(CATIDSServiceConnectionMessageProcessor *)self delegate];
          content2 = [messageCopy content];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            [CATIDSServiceConnectionMessageProcessor receiveMessage:];
          }

          error = [content2 sequenceNumbers];
          [delegate3 messageProcessor:self wantsRetransmission:error];
          break;
        default:
          goto LABEL_26;
      }
    }

LABEL_24:

LABEL_25:
  }

LABEL_26:
}

- (CATIDSServiceConnectionMessageProcessorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)receiveMessage:.cold.1()
{
  v13 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[CATIDSServiceConnectionMessageProcessor receiveMessage:]"];
  v2 = objc_opt_class();
  NSStringFromClass(v2);
  objc_claimAutoreleasedReturnValue();
  v3 = OUTLINED_FUNCTION_1_0();
  v4 = NSStringFromClass(v3);
  [OUTLINED_FUNCTION_0_1(v4 v5];
}

- (void)receiveMessage:.cold.2()
{
  v13 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[CATIDSServiceConnectionMessageProcessor receiveMessage:]"];
  v2 = objc_opt_class();
  NSStringFromClass(v2);
  objc_claimAutoreleasedReturnValue();
  v3 = OUTLINED_FUNCTION_1_0();
  v4 = NSStringFromClass(v3);
  [OUTLINED_FUNCTION_0_1(v4 v5];
}

- (void)receiveMessage:.cold.3()
{
  v13 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[CATIDSServiceConnectionMessageProcessor receiveMessage:]"];
  v2 = objc_opt_class();
  NSStringFromClass(v2);
  objc_claimAutoreleasedReturnValue();
  v3 = OUTLINED_FUNCTION_1_0();
  v4 = NSStringFromClass(v3);
  [OUTLINED_FUNCTION_0_1(v4 v5];
}

- (void)receiveMessage:.cold.4()
{
  v13 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[CATIDSServiceConnectionMessageProcessor receiveMessage:]"];
  v2 = objc_opt_class();
  NSStringFromClass(v2);
  objc_claimAutoreleasedReturnValue();
  v3 = OUTLINED_FUNCTION_1_0();
  v4 = NSStringFromClass(v3);
  [OUTLINED_FUNCTION_0_1(v4 v5];
}

@end