@interface CATIDSServiceConnectionMessageProcessor
- (CATIDSServiceConnectionMessageProcessor)initWithWorkQueue:(id)a3 connectionIdentifier:(id)a4;
- (CATIDSServiceConnectionMessageProcessorDelegate)delegate;
- (void)receiveMessage:(id)a3;
@end

@implementation CATIDSServiceConnectionMessageProcessor

- (CATIDSServiceConnectionMessageProcessor)initWithWorkQueue:(id)a3 connectionIdentifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CATIDSServiceConnectionMessageProcessor;
  v9 = [(CATIDSServiceConnectionMessageProcessor *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->mWorkQueue, a3);
    objc_storeStrong(&v10->mConnectionIdentifier, a4);
  }

  return v10;
}

- (void)receiveMessage:(id)a3
{
  v15 = a3;
  CATAssertIsQueue(self->mWorkQueue);
  v4 = [v15 connectionIdentifier];
  v5 = [v4 isEqual:self->mConnectionIdentifier];

  if (v5)
  {
    v6 = [(CATIDSServiceConnectionMessageProcessor *)self delegate];
    [v6 messageProcessorWantsToExtendKeepAlive:self];

    v7 = [v15 receivedSequenceNumber];

    if (v7)
    {
      v8 = [(CATIDSServiceConnectionMessageProcessor *)self delegate];
      v9 = [v15 receivedSequenceNumber];
      [v8 messageProcessor:self wantsToAckUpTo:{objc_msgSend(v9, "unsignedIntegerValue")}];
    }

    v10 = [v15 content];
    v11 = [v10 contentType];

    if (v11 <= 3)
    {
      if (v11 != 1)
      {
        if (v11 != 2)
        {
          goto LABEL_26;
        }

        v12 = [(CATIDSServiceConnectionMessageProcessor *)self delegate];
        [v12 messageProcessorWantsToAcknowledgeRemote:self];
        goto LABEL_25;
      }

      v12 = [(CATIDSServiceConnectionMessageProcessor *)self delegate];
      v13 = [v15 content];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [CATIDSServiceConnectionMessageProcessor receiveMessage:];
      }

      [v12 messageProcessor:self wantsAggregation:v13];
    }

    else
    {
      switch(v11)
      {
        case 4:
          v12 = [(CATIDSServiceConnectionMessageProcessor *)self delegate];
          v13 = [v15 content];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            [CATIDSServiceConnectionMessageProcessor receiveMessage:];
          }

          v14 = [v13 error];
          [v12 messageProcessor:self wantsToCloseWithError:v14];
          break;
        case 5:
          v12 = [(CATIDSServiceConnectionMessageProcessor *)self delegate];
          v13 = [v15 content];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            [CATIDSServiceConnectionMessageProcessor receiveMessage:];
          }

          [v12 messageProcessor:self receivedExpectedSequence:{objc_msgSend(v13, "expectedSequenceNumber")}];
          goto LABEL_24;
        case 6:
          v12 = [(CATIDSServiceConnectionMessageProcessor *)self delegate];
          v13 = [v15 content];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            [CATIDSServiceConnectionMessageProcessor receiveMessage:];
          }

          v14 = [v13 sequenceNumbers];
          [v12 messageProcessor:self wantsRetransmission:v14];
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