@interface BRShareLookupParticipantsOperation
- (BRShareLookupParticipantsOperation)initWithUserIdentities:(id)a3;
- (void)finishWithResult:(id)a3 error:(id)a4;
- (void)main;
@end

@implementation BRShareLookupParticipantsOperation

- (BRShareLookupParticipantsOperation)initWithUserIdentities:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = BRShareLookupParticipantsOperation;
  v6 = [(BRShareOperation *)&v9 initWithDirectConnection];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_userIdentities, a3);
  }

  return v7;
}

- (void)main
{
  v3 = [(BRShareOperation *)self remoteObject];
  userIdentities = self->_userIdentities;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __42__BRShareLookupParticipantsOperation_main__block_invoke;
  v5[3] = &unk_1E7A14918;
  v5[4] = self;
  [v3 startOperation:self toLookupShareParticipants:userIdentities reply:v5];
}

- (void)finishWithResult:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BRShareLookupParticipantsOperation *)self lookupParticipantsCompletionBlock];
  v9 = v8;
  if (v8)
  {
    (*(v8 + 16))(v8, v6, v7);
    [(BRShareLookupParticipantsOperation *)self setLookupParticipantsCompletionBlock:0];
  }

  v10.receiver = self;
  v10.super_class = BRShareLookupParticipantsOperation;
  [(BROperation *)&v10 finishWithResult:v6 error:v7];
}

@end