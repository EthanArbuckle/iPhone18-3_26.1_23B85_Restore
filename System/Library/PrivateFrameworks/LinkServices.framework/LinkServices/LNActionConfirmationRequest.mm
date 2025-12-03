@interface LNActionConfirmationRequest
- (LNActionConfirmationRequest)initWithCoder:(id)coder;
- (LNActionConfirmationRequest)initWithIdentifier:(id)identifier systemStyle:(id)style result:(id)result;
- (void)encodeWithCoder:(id)coder;
- (void)respondWithConfirmation:(BOOL)confirmation;
- (void)respondWithError:(id)error;
- (void)respondWithUpdates:(id)updates;
- (void)respondWithValue:(id)value;
@end

@implementation LNActionConfirmationRequest

- (LNActionConfirmationRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"systemStyle"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"result"];

  if (v5)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    selfCopy = 0;
  }

  else
  {
    self = [(LNActionConfirmationRequest *)self initWithIdentifier:v5 systemStyle:v6 result:v7];
    selfCopy = self;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(LNActionConfirmationRequest *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  systemStyle = [(LNActionConfirmationRequest *)self systemStyle];
  [coderCopy encodeObject:systemStyle forKey:@"systemStyle"];

  result = [(LNActionConfirmationRequest *)self result];
  [coderCopy encodeObject:result forKey:@"result"];
}

- (void)respondWithError:(id)error
{
  v17 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  completionHandler = self->_completionHandler;
  if (completionHandler)
  {
    responseContext = [(LNRequest *)self responseContext];
    v7 = [errorCopy errorWithResponseContext:responseContext];
    completionHandler[2](completionHandler, 0, v7);

    v8 = self->_completionHandler;
    self->_completionHandler = 0;
  }

  else
  {
    v9 = getLNLogCategoryExecution();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = objc_opt_class();
      identifier = [(LNActionConfirmationRequest *)self identifier];
      v13 = 138543618;
      v14 = v10;
      v15 = 2114;
      v16 = identifier;
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)respondWithUpdates:(id)updates
{
  v17 = *MEMORY[0x1E69E9840];
  updatesCopy = updates;
  if (self->_completionHandler)
  {
    v5 = [LNActionConfirmationResponse alloc];
    identifier = [(LNActionConfirmationRequest *)self identifier];
    responseContext = [(LNRequest *)self responseContext];
    v8 = [(LNActionConfirmationResponse *)v5 initWithIdentifier:identifier context:responseContext value:0 updates:updatesCopy];

    (*(self->_completionHandler + 2))();
    completionHandler = self->_completionHandler;
    self->_completionHandler = 0;
  }

  else
  {
    v8 = getLNLogCategoryExecution();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = objc_opt_class();
      identifier2 = [(LNActionConfirmationRequest *)self identifier];
      v13 = 138543618;
      v14 = v10;
      v15 = 2114;
      v16 = identifier2;
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)respondWithValue:(id)value
{
  v17 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  if (self->_completionHandler)
  {
    v5 = [LNActionConfirmationResponse alloc];
    identifier = [(LNActionConfirmationRequest *)self identifier];
    responseContext = [(LNRequest *)self responseContext];
    v8 = [(LNActionConfirmationResponse *)v5 initWithIdentifier:identifier context:responseContext value:valueCopy updates:0];

    (*(self->_completionHandler + 2))();
    completionHandler = self->_completionHandler;
    self->_completionHandler = 0;
  }

  else
  {
    v8 = getLNLogCategoryExecution();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = objc_opt_class();
      identifier2 = [(LNActionConfirmationRequest *)self identifier];
      v13 = 138543618;
      v14 = v10;
      v15 = 2114;
      v16 = identifier2;
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)respondWithConfirmation:(BOOL)confirmation
{
  v18 = *MEMORY[0x1E69E9840];
  if (!confirmation)
  {
    v13 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:3072 userInfo:0];
    [(LNActionConfirmationRequest *)self respondWithError:?];
    goto LABEL_5;
  }

  if (self->_completionHandler)
  {
    v4 = [LNActionConfirmationResponse alloc];
    identifier = [(LNActionConfirmationRequest *)self identifier];
    responseContext = [(LNRequest *)self responseContext];
    v13 = [(LNActionConfirmationResponse *)v4 initWithIdentifier:identifier context:responseContext value:0 updates:0];

    (*(self->_completionHandler + 2))();
    completionHandler = self->_completionHandler;
    self->_completionHandler = 0;

LABEL_5:
    v8 = *MEMORY[0x1E69E9840];

    return;
  }

  v9 = getLNLogCategoryExecution();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = objc_opt_class();
    identifier2 = [(LNActionConfirmationRequest *)self identifier];
    *buf = 138543618;
    v15 = v10;
    v16 = 2114;
    v17 = identifier2;
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (LNActionConfirmationRequest)initWithIdentifier:(id)identifier systemStyle:(id)style result:(id)result
{
  identifierCopy = identifier;
  styleCopy = style;
  resultCopy = result;
  if (!resultCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNActionConfirmationRequest.m" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"result"}];
  }

  v21.receiver = self;
  v21.super_class = LNActionConfirmationRequest;
  v13 = [(LNActionConfirmationRequest *)&v21 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_identifier, identifier);
    objc_storeStrong(&v14->_systemStyle, style);
    v15 = [resultCopy copy];
    v16 = v14->_result;
    v14->_result = v15;

    completionHandler = v14->_completionHandler;
    v14->_completionHandler = 0;

    v18 = v14;
  }

  return v14;
}

@end