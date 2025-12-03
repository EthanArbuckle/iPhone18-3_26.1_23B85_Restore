@interface PDAccountStatementMetadataProcessorRequest
- (BOOL)_canCoalesceRequest:(id)request;
- (BOOL)coalesceWithRequest:(id)request;
- (PDAccountStatementMetadataProcessorRequest)initWithAccountIdentifier:(id)identifier statementIdentifier:(id)statementIdentifier reason:(unint64_t)reason completion:(id)completion;
- (id)description;
- (void)addCompletion:(id)completion;
- (void)callCompletionsWithStatementMetadata:(id)metadata error:(id)error;
@end

@implementation PDAccountStatementMetadataProcessorRequest

- (PDAccountStatementMetadataProcessorRequest)initWithAccountIdentifier:(id)identifier statementIdentifier:(id)statementIdentifier reason:(unint64_t)reason completion:(id)completion
{
  identifierCopy = identifier;
  statementIdentifierCopy = statementIdentifier;
  completionCopy = completion;
  v18.receiver = self;
  v18.super_class = PDAccountStatementMetadataProcessorRequest;
  v14 = [(PDAccountStatementMetadataProcessorRequest *)&v18 init];
  if (v14)
  {
    v15 = objc_alloc_init(NSMutableArray);
    completionHandlers = v14->_completionHandlers;
    v14->_completionHandlers = v15;

    objc_storeStrong(&v14->_accountIdentifier, identifier);
    objc_storeStrong(&v14->_statementIdentifier, statementIdentifier);
    v14->_reason = reason;
    [(PDAccountStatementMetadataProcessorRequest *)v14 addCompletion:completionCopy];
  }

  return v14;
}

- (void)addCompletion:(id)completion
{
  completionHandlers = self->_completionHandlers;
  v4 = objc_retainBlock(completion);
  [(NSMutableArray *)completionHandlers safelyAddObject:v4];
}

- (BOOL)coalesceWithRequest:(id)request
{
  requestCopy = request;
  v5 = [(PDAccountStatementMetadataProcessorRequest *)self _canCoalesceRequest:requestCopy];
  if (v5)
  {
    completionHandlers = self->_completionHandlers;
    completionHandlers = [requestCopy completionHandlers];
    [(NSMutableArray *)completionHandlers addObjectsFromArray:completionHandlers];
  }

  return v5;
}

- (void)callCompletionsWithStatementMetadata:(id)metadata error:(id)error
{
  metadataCopy = metadata;
  errorCopy = error;
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

- (BOOL)_canCoalesceRequest:(id)request
{
  requestCopy = request;
  accountIdentifier = self->_accountIdentifier;
  accountIdentifier = [requestCopy accountIdentifier];
  v7 = accountIdentifier;
  v8 = accountIdentifier;
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
  statementIdentifier = [requestCopy statementIdentifier];
  v14 = statementIdentifier;
  v15 = statementIdentifier;
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
  v18 = reason == [requestCopy reason];
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