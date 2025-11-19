@interface PDAccountStatementMetadataProcessorRequest
- (BOOL)_canCoalesceRequest:(id)a3;
- (BOOL)coalesceWithRequest:(id)a3;
- (PDAccountStatementMetadataProcessorRequest)initWithAccountIdentifier:(id)a3 statementIdentifier:(id)a4 reason:(unint64_t)a5 completion:(id)a6;
- (id)description;
- (void)addCompletion:(id)a3;
- (void)callCompletionsWithStatementMetadata:(id)a3 error:(id)a4;
@end

@implementation PDAccountStatementMetadataProcessorRequest

- (PDAccountStatementMetadataProcessorRequest)initWithAccountIdentifier:(id)a3 statementIdentifier:(id)a4 reason:(unint64_t)a5 completion:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v18.receiver = self;
  v18.super_class = PDAccountStatementMetadataProcessorRequest;
  v14 = [(PDAccountStatementMetadataProcessorRequest *)&v18 init];
  if (v14)
  {
    v15 = objc_alloc_init(NSMutableArray);
    completionHandlers = v14->_completionHandlers;
    v14->_completionHandlers = v15;

    objc_storeStrong(&v14->_accountIdentifier, a3);
    objc_storeStrong(&v14->_statementIdentifier, a4);
    v14->_reason = a5;
    [(PDAccountStatementMetadataProcessorRequest *)v14 addCompletion:v13];
  }

  return v14;
}

- (void)addCompletion:(id)a3
{
  completionHandlers = self->_completionHandlers;
  v4 = objc_retainBlock(a3);
  [(NSMutableArray *)completionHandlers safelyAddObject:v4];
}

- (BOOL)coalesceWithRequest:(id)a3
{
  v4 = a3;
  v5 = [(PDAccountStatementMetadataProcessorRequest *)self _canCoalesceRequest:v4];
  if (v5)
  {
    completionHandlers = self->_completionHandlers;
    v7 = [v4 completionHandlers];
    [(NSMutableArray *)completionHandlers addObjectsFromArray:v7];
  }

  return v5;
}

- (void)callCompletionsWithStatementMetadata:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = self->_completionHandlers;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        (*(*(*(&v13 + 1) + 8 * v12) + 16))(*(*(&v13 + 1) + 8 * v12));
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (BOOL)_canCoalesceRequest:(id)a3
{
  v4 = a3;
  accountIdentifier = self->_accountIdentifier;
  v6 = [v4 accountIdentifier];
  v7 = accountIdentifier;
  v8 = v6;
  v9 = v8;
  if (v7 == v8)
  {
  }

  else
  {
    if (v7)
    {
      v10 = v8 == 0;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {

LABEL_18:
      v18 = 0;
      goto LABEL_19;
    }

    v11 = [(NSString *)v7 isEqualToString:v8];

    if (!v11)
    {
      v18 = 0;
      goto LABEL_20;
    }
  }

  statementIdentifier = self->_statementIdentifier;
  v13 = [v4 statementIdentifier];
  v14 = statementIdentifier;
  v15 = v13;
  v7 = v15;
  if (v14 == v15)
  {

    goto LABEL_16;
  }

  if (!v14 || !v15)
  {

    goto LABEL_18;
  }

  v16 = [(NSString *)v14 isEqualToString:v15];

  if (!v16)
  {
    goto LABEL_18;
  }

LABEL_16:
  reason = self->_reason;
  v18 = reason == [v4 reason];
LABEL_19:

LABEL_20:
  return v18;
}

- (id)description
{
  v3 = objc_alloc_init(NSMutableString);
  [v3 appendFormat:@"<%@: %p; ", objc_opt_class(), self];
  [v3 appendFormat:@"accountIdentifier: '%@'; ", self->_accountIdentifier];
  if (self->_statementIdentifier)
  {
    [v3 appendFormat:@"statementIdentifier: '%@'; ", self->_statementIdentifier];
  }

  reason = self->_reason;
  v5 = @"statementChanged";
  if (reason == 1)
  {
    v5 = @"manualTrigger";
  }

  if (reason == 2)
  {
    v6 = @"scheduledActivity";
  }

  else
  {
    v6 = v5;
  }

  [v3 appendFormat:@"reason: '%@'; ", v6];
  [v3 appendFormat:@">"];

  return v3;
}

@end