@interface MRSendCommandResultMessage
- (MRCommandResult)commandResult;
- (MRSendCommandResultMessage)initWithCommandID:(id)a3 commandResult:(id)a4;
- (unsigned)sendError;
@end

@implementation MRSendCommandResultMessage

- (MRSendCommandResultMessage)initWithCommandID:(id)a3 commandResult:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v22.receiver = self;
  v22.super_class = MRSendCommandResultMessage;
  v8 = [(MRProtocolMessage *)&v22 init];
  if (v8)
  {
    v9 = objc_alloc_init(_MRSendCommandResultMessageProtobuf);
    [(_MRSendCommandResultMessageProtobuf *)v9 setCommandID:v6];
    [(_MRSendCommandResultMessageProtobuf *)v9 setSendError:[(MRCommandResult *)v8->_commandResult sendError]];
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v10 = [v7 handlerReturnStatuses];
    v11 = [v10 countByEnumeratingWithState:&v18 objects:v23 count:16];
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
            objc_enumerationMutation(v10);
          }

          -[_MRSendCommandResultMessageProtobuf addHandlerReturnStatus:](v9, "addHandlerReturnStatus:", [*(*(&v18 + 1) + 8 * v14++) unsignedIntValue]);
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v12);
    }

    v15 = [v7 protobuf];
    [(_MRSendCommandResultMessageProtobuf *)v9 setCommandResult:v15];

    [(MRProtocolMessage *)v8 setUnderlyingCodableMessage:v9];
  }

  v16 = *MEMORY[0x1E69E9840];
  return v8;
}

- (unsigned)sendError
{
  v2 = [(MRSendCommandResultMessage *)self commandResult];
  v3 = [v2 sendError];

  return v3;
}

- (MRCommandResult)commandResult
{
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_commandResult)
  {
    v3 = [(MRProtocolMessage *)v2 underlyingCodableMessage];
    v4 = [v3 hasCommandResult];

    if (v4)
    {
      v5 = [MRCommandResult alloc];
      v6 = [(MRProtocolMessage *)v2 underlyingCodableMessage];
      v7 = [v6 commandResult];
      v8 = [(MRCommandResult *)v5 initWithProtobuf:v7];
    }

    else
    {
      v9 = objc_alloc(MEMORY[0x1E695DF70]);
      v10 = [(MRProtocolMessage *)v2 underlyingCodableMessage];
      v6 = [v9 initWithCapacity:{objc_msgSend(v10, "handlerReturnStatusCount")}];

      for (i = 0; ; ++i)
      {
        v12 = [(MRProtocolMessage *)v2 underlyingCodableMessage];
        v13 = [v12 handlerReturnStatusCount];

        if (v13 <= i)
        {
          break;
        }

        v14 = MEMORY[0x1E696AD98];
        v15 = [(MRProtocolMessage *)v2 underlyingCodableMessage];
        v16 = [v14 numberWithInt:{objc_msgSend(v15, "handlerReturnStatusAtIndex:", i)}];
        [v6 addObject:v16];
      }

      v17 = [MRCommandResult alloc];
      v7 = [(MRProtocolMessage *)v2 underlyingCodableMessage];
      v8 = -[MRCommandResult initWithHandlerStatuses:sendError:](v17, "initWithHandlerStatuses:sendError:", v6, [v7 sendError]);
    }

    commandResult = v2->_commandResult;
    v2->_commandResult = v8;
  }

  v19 = v2->_commandResult;
  objc_sync_exit(v2);

  return v19;
}

@end