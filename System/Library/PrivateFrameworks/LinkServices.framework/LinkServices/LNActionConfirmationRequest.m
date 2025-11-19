@interface LNActionConfirmationRequest
- (LNActionConfirmationRequest)initWithCoder:(id)a3;
- (LNActionConfirmationRequest)initWithIdentifier:(id)a3 systemStyle:(id)a4 result:(id)a5;
- (void)encodeWithCoder:(id)a3;
- (void)respondWithConfirmation:(BOOL)a3;
- (void)respondWithError:(id)a3;
- (void)respondWithUpdates:(id)a3;
- (void)respondWithValue:(id)a3;
@end

@implementation LNActionConfirmationRequest

- (LNActionConfirmationRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"systemStyle"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"result"];

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
    v9 = 0;
  }

  else
  {
    self = [(LNActionConfirmationRequest *)self initWithIdentifier:v5 systemStyle:v6 result:v7];
    v9 = self;
  }

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(LNActionConfirmationRequest *)self identifier];
  [v4 encodeObject:v5 forKey:@"identifier"];

  v6 = [(LNActionConfirmationRequest *)self systemStyle];
  [v4 encodeObject:v6 forKey:@"systemStyle"];

  v7 = [(LNActionConfirmationRequest *)self result];
  [v4 encodeObject:v7 forKey:@"result"];
}

- (void)respondWithError:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  completionHandler = self->_completionHandler;
  if (completionHandler)
  {
    v6 = [(LNRequest *)self responseContext];
    v7 = [v4 errorWithResponseContext:v6];
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
      v11 = [(LNActionConfirmationRequest *)self identifier];
      v13 = 138543618;
      v14 = v10;
      v15 = 2114;
      v16 = v11;
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)respondWithUpdates:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_completionHandler)
  {
    v5 = [LNActionConfirmationResponse alloc];
    v6 = [(LNActionConfirmationRequest *)self identifier];
    v7 = [(LNRequest *)self responseContext];
    v8 = [(LNActionConfirmationResponse *)v5 initWithIdentifier:v6 context:v7 value:0 updates:v4];

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
      v11 = [(LNActionConfirmationRequest *)self identifier];
      v13 = 138543618;
      v14 = v10;
      v15 = 2114;
      v16 = v11;
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)respondWithValue:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_completionHandler)
  {
    v5 = [LNActionConfirmationResponse alloc];
    v6 = [(LNActionConfirmationRequest *)self identifier];
    v7 = [(LNRequest *)self responseContext];
    v8 = [(LNActionConfirmationResponse *)v5 initWithIdentifier:v6 context:v7 value:v4 updates:0];

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
      v11 = [(LNActionConfirmationRequest *)self identifier];
      v13 = 138543618;
      v14 = v10;
      v15 = 2114;
      v16 = v11;
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)respondWithConfirmation:(BOOL)a3
{
  v18 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v13 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:3072 userInfo:0];
    [(LNActionConfirmationRequest *)self respondWithError:?];
    goto LABEL_5;
  }

  if (self->_completionHandler)
  {
    v4 = [LNActionConfirmationResponse alloc];
    v5 = [(LNActionConfirmationRequest *)self identifier];
    v6 = [(LNRequest *)self responseContext];
    v13 = [(LNActionConfirmationResponse *)v4 initWithIdentifier:v5 context:v6 value:0 updates:0];

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
    v11 = [(LNActionConfirmationRequest *)self identifier];
    *buf = 138543618;
    v15 = v10;
    v16 = 2114;
    v17 = v11;
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (LNActionConfirmationRequest)initWithIdentifier:(id)a3 systemStyle:(id)a4 result:(id)a5
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (!v12)
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"LNActionConfirmationRequest.m" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"result"}];
  }

  v21.receiver = self;
  v21.super_class = LNActionConfirmationRequest;
  v13 = [(LNActionConfirmationRequest *)&v21 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_identifier, a3);
    objc_storeStrong(&v14->_systemStyle, a4);
    v15 = [v12 copy];
    v16 = v14->_result;
    v14->_result = v15;

    completionHandler = v14->_completionHandler;
    v14->_completionHandler = 0;

    v18 = v14;
  }

  return v14;
}

@end