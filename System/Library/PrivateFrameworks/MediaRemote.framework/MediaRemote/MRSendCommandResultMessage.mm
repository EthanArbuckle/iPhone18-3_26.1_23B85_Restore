@interface MRSendCommandResultMessage
- (MRCommandResult)commandResult;
- (MRSendCommandResultMessage)initWithCommandID:(id)d commandResult:(id)result;
- (unsigned)sendError;
@end

@implementation MRSendCommandResultMessage

- (MRSendCommandResultMessage)initWithCommandID:(id)d commandResult:(id)result
{
  v24 = *MEMORY[0x1E69E9840];
  dCopy = d;
  resultCopy = result;
  v22.receiver = self;
  v22.super_class = MRSendCommandResultMessage;
  v8 = [(MRProtocolMessage *)&v22 init];
  if (v8)
  {
    v9 = objc_alloc_init(_MRSendCommandResultMessageProtobuf);
    [(_MRSendCommandResultMessageProtobuf *)v9 setCommandID:dCopy];
    [(_MRSendCommandResultMessageProtobuf *)v9 setSendError:[(MRCommandResult *)v8->_commandResult sendError]];
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    handlerReturnStatuses = [resultCopy handlerReturnStatuses];
    v11 = [handlerReturnStatuses countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v19;
      do
      {
        v14 = 0;
        do
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(handlerReturnStatuses);
          }

          -[_MRSendCommandResultMessageProtobuf addHandlerReturnStatus:](v9, "addHandlerReturnStatus:", [*(*(&v18 + 1) + 8 * v14++) unsignedIntValue]);
        }

        while (v12 != v14);
        v12 = [handlerReturnStatuses countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v12);
    }

    protobuf = [resultCopy protobuf];
    [(_MRSendCommandResultMessageProtobuf *)v9 setCommandResult:protobuf];

    [(MRProtocolMessage *)v8 setUnderlyingCodableMessage:v9];
  }

  v16 = *MEMORY[0x1E69E9840];
  return v8;
}

- (unsigned)sendError
{
  commandResult = [(MRSendCommandResultMessage *)self commandResult];
  sendError = [commandResult sendError];

  return sendError;
}

- (MRCommandResult)commandResult
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_commandResult)
  {
    underlyingCodableMessage = [(MRProtocolMessage *)selfCopy underlyingCodableMessage];
    hasCommandResult = [underlyingCodableMessage hasCommandResult];

    if (hasCommandResult)
    {
      v5 = [MRCommandResult alloc];
      underlyingCodableMessage2 = [(MRProtocolMessage *)selfCopy underlyingCodableMessage];
      commandResult = [underlyingCodableMessage2 commandResult];
      v8 = [(MRCommandResult *)v5 initWithProtobuf:commandResult];
    }

    else
    {
      v9 = objc_alloc(MEMORY[0x1E695DF70]);
      underlyingCodableMessage3 = [(MRProtocolMessage *)selfCopy underlyingCodableMessage];
      underlyingCodableMessage2 = [v9 initWithCapacity:{objc_msgSend(underlyingCodableMessage3, "handlerReturnStatusCount")}];

      for (i = 0; ; ++i)
      {
        underlyingCodableMessage4 = [(MRProtocolMessage *)selfCopy underlyingCodableMessage];
        handlerReturnStatusCount = [underlyingCodableMessage4 handlerReturnStatusCount];

        if (handlerReturnStatusCount <= i)
        {
          break;
        }

        v14 = MEMORY[0x1E696AD98];
        underlyingCodableMessage5 = [(MRProtocolMessage *)selfCopy underlyingCodableMessage];
        v16 = [v14 numberWithInt:{objc_msgSend(underlyingCodableMessage5, "handlerReturnStatusAtIndex:", i)}];
        [underlyingCodableMessage2 addObject:v16];
      }

      v17 = [MRCommandResult alloc];
      commandResult = [(MRProtocolMessage *)selfCopy underlyingCodableMessage];
      v8 = -[MRCommandResult initWithHandlerStatuses:sendError:](v17, "initWithHandlerStatuses:sendError:", underlyingCodableMessage2, [commandResult sendError]);
    }

    commandResult = selfCopy->_commandResult;
    selfCopy->_commandResult = v8;
  }

  v19 = selfCopy->_commandResult;
  objc_sync_exit(selfCopy);

  return v19;
}

@end