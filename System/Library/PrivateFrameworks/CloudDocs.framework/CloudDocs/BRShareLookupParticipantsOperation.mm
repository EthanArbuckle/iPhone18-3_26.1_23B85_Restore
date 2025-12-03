@interface BRShareLookupParticipantsOperation
- (BRShareLookupParticipantsOperation)initWithUserIdentities:(id)identities;
- (void)finishWithResult:(id)result error:(id)error;
- (void)main;
@end

@implementation BRShareLookupParticipantsOperation

- (BRShareLookupParticipantsOperation)initWithUserIdentities:(id)identities
{
  identitiesCopy = identities;
  v9.receiver = self;
  v9.super_class = BRShareLookupParticipantsOperation;
  initWithDirectConnection = [(BRShareOperation *)&v9 initWithDirectConnection];
  v7 = initWithDirectConnection;
  if (initWithDirectConnection)
  {
    objc_storeStrong(&initWithDirectConnection->_userIdentities, identities);
  }

  return v7;
}

- (void)main
{
  remoteObject = [(BRShareOperation *)self remoteObject];
  userIdentities = self->_userIdentities;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __42__BRShareLookupParticipantsOperation_main__block_invoke;
  v5[3] = &unk_1E7A14918;
  v5[4] = self;
  [remoteObject startOperation:self toLookupShareParticipants:userIdentities reply:v5];
}

- (void)finishWithResult:(id)result error:(id)error
{
  resultCopy = result;
  errorCopy = error;
  lookupParticipantsCompletionBlock = [(BRShareLookupParticipantsOperation *)self lookupParticipantsCompletionBlock];
  v9 = lookupParticipantsCompletionBlock;
  if (lookupParticipantsCompletionBlock)
  {
    (*(lookupParticipantsCompletionBlock + 16))(lookupParticipantsCompletionBlock, resultCopy, errorCopy);
    [(BRShareLookupParticipantsOperation *)self setLookupParticipantsCompletionBlock:0];
  }

  v10.receiver = self;
  v10.super_class = BRShareLookupParticipantsOperation;
  [(BROperation *)&v10 finishWithResult:resultCopy error:errorCopy];
}

@end