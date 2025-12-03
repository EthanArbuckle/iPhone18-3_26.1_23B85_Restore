@interface MPCAssistantSendCommandResult
- (MPCAssistantSendCommandResult)initWithCommandResult:(id)result error:(id)error;
- (MPCAssistantSendCommandResult)initWithReturnStatuses:(id)statuses error:(id)error;
@end

@implementation MPCAssistantSendCommandResult

- (MPCAssistantSendCommandResult)initWithCommandResult:(id)result error:(id)error
{
  resultCopy = result;
  errorCopy = error;
  v23.receiver = self;
  v23.super_class = MPCAssistantSendCommandResult;
  v8 = [(MPCAssistantSendCommandResult *)&v23 init];
  if (!v8)
  {
    goto LABEL_11;
  }

  handlerReturnStatuses = [resultCopy handlerReturnStatuses];
  v10 = [handlerReturnStatuses copy];
  returnStatuses = v8->_returnStatuses;
  v8->_returnStatuses = v10;

  v12 = [resultCopy copy];
  commandResult = v8->_commandResult;
  v8->_commandResult = v12;

  if (errorCopy)
  {
    v14 = errorCopy;
LABEL_6:
    error = v8->_error;
    v8->_error = v14;
    goto LABEL_7;
  }

  if ([resultCopy sendError])
  {
    v14 = MPCAssistantCreateSendCommandError([resultCopy sendError]);
    goto LABEL_6;
  }

  error = [resultCopy error];

  if (!error)
  {
    goto LABEL_8;
  }

  error = [resultCopy error];
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

- (MPCAssistantSendCommandResult)initWithReturnStatuses:(id)statuses error:(id)error
{
  statusesCopy = statuses;
  errorCopy = error;
  v12.receiver = self;
  v12.super_class = MPCAssistantSendCommandResult;
  v8 = [(MPCAssistantSendCommandResult *)&v12 init];
  if (v8)
  {
    v9 = [statusesCopy copy];
    returnStatuses = v8->_returnStatuses;
    v8->_returnStatuses = v9;

    objc_storeStrong(&v8->_error, error);
  }

  return v8;
}

@end