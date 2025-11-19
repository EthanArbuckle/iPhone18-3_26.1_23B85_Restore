@interface MPCAssistantSendCommandResult
- (MPCAssistantSendCommandResult)initWithCommandResult:(id)a3 error:(id)a4;
- (MPCAssistantSendCommandResult)initWithReturnStatuses:(id)a3 error:(id)a4;
@end

@implementation MPCAssistantSendCommandResult

- (MPCAssistantSendCommandResult)initWithCommandResult:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v23.receiver = self;
  v23.super_class = MPCAssistantSendCommandResult;
  v8 = [(MPCAssistantSendCommandResult *)&v23 init];
  if (!v8)
  {
    goto LABEL_11;
  }

  v9 = [v6 handlerReturnStatuses];
  v10 = [v9 copy];
  returnStatuses = v8->_returnStatuses;
  v8->_returnStatuses = v10;

  v12 = [v6 copy];
  commandResult = v8->_commandResult;
  v8->_commandResult = v12;

  if (v7)
  {
    v14 = v7;
LABEL_6:
    error = v8->_error;
    v8->_error = v14;
    goto LABEL_7;
  }

  if ([v6 sendError])
  {
    v14 = MPCAssistantCreateSendCommandError([v6 sendError]);
    goto LABEL_6;
  }

  v20 = [v6 error];

  if (!v20)
  {
    goto LABEL_8;
  }

  error = [v6 error];
  v21 = MPCAssistantWrapError(error);
  v22 = v8->_error;
  v8->_error = v21;

LABEL_7:
LABEL_8:
  v16 = [(NSArray *)v8->_returnStatuses msv_firstWhere:&__block_literal_global_454];

  if (v8->_error && !v16)
  {
    v17 = [(NSArray *)v8->_returnStatuses arrayByAddingObject:&unk_1F4598FF8];
    v18 = v8->_returnStatuses;
    v8->_returnStatuses = v17;
  }

LABEL_11:

  return v8;
}

- (MPCAssistantSendCommandResult)initWithReturnStatuses:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = MPCAssistantSendCommandResult;
  v8 = [(MPCAssistantSendCommandResult *)&v12 init];
  if (v8)
  {
    v9 = [v6 copy];
    returnStatuses = v8->_returnStatuses;
    v8->_returnStatuses = v9;

    objc_storeStrong(&v8->_error, a4);
  }

  return v8;
}

@end