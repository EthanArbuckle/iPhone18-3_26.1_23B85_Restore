@interface LNNeedsValueRequest
- (LNNeedsValueRequest)initWithCoder:(id)a3;
- (LNNeedsValueRequest)initWithIdentifier:(id)a3 parameterName:(id)a4 dialog:(id)a5 viewSnippet:(id)a6;
- (void)encodeWithCoder:(id)a3;
- (void)respondWithError:(id)a3;
- (void)respondWithUpdates:(id)a3;
- (void)respondWithValue:(id)a3;
@end

@implementation LNNeedsValueRequest

- (LNNeedsValueRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"parameterName"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dialog"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"viewSnippet"];

  if (v5)
  {
    v9 = v6 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v10 = 0;
  }

  else
  {
    self = [(LNNeedsValueRequest *)self initWithIdentifier:v5 parameterName:v6 dialog:v7 viewSnippet:v8];
    v10 = self;
  }

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(LNNeedsValueRequest *)self identifier];
  [v4 encodeObject:v5 forKey:@"identifier"];

  v6 = [(LNNeedsValueRequest *)self parameterName];
  [v4 encodeObject:v6 forKey:@"parameterName"];

  v7 = [(LNNeedsValueRequest *)self dialog];
  [v4 encodeObject:v7 forKey:@"dialog"];

  v8 = [(LNNeedsValueRequest *)self viewSnippet];
  [v4 encodeObject:v8 forKey:@"viewSnippet"];
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
      v11 = [(LNNeedsValueRequest *)self identifier];
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
    v5 = [LNNeedsValueResponse alloc];
    v6 = [(LNNeedsValueRequest *)self identifier];
    v7 = [(LNRequest *)self responseContext];
    v8 = [(LNNeedsValueResponse *)v5 initWithIdentifier:v6 context:v7 value:0 updates:v4];

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
      v11 = [(LNNeedsValueRequest *)self identifier];
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
    v5 = [LNNeedsValueResponse alloc];
    v6 = [(LNNeedsValueRequest *)self identifier];
    v7 = [(LNRequest *)self responseContext];
    v8 = [(LNNeedsValueResponse *)v5 initWithIdentifier:v6 context:v7 value:v4 updates:0];

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
      v11 = [(LNNeedsValueRequest *)self identifier];
      v13 = 138543618;
      v14 = v10;
      v15 = 2114;
      v16 = v11;
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (LNNeedsValueRequest)initWithIdentifier:(id)a3 parameterName:(id)a4 dialog:(id)a5 viewSnippet:(id)a6
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (v12)
  {
    if (v13)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v25 = [MEMORY[0x1E696AAA8] currentHandler];
    [v25 handleFailureInMethod:a2 object:self file:@"LNNeedsValueRequest.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];

    if (v13)
    {
      goto LABEL_3;
    }
  }

  v26 = [MEMORY[0x1E696AAA8] currentHandler];
  [v26 handleFailureInMethod:a2 object:self file:@"LNNeedsValueRequest.m" lineNumber:26 description:{@"Invalid parameter not satisfying: %@", @"parameterName"}];

LABEL_3:
  v27.receiver = self;
  v27.super_class = LNNeedsValueRequest;
  v16 = [(LNNeedsValueRequest *)&v27 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_identifier, a3);
    objc_storeStrong(&v17->_parameterName, a4);
    v18 = [v14 copy];
    dialog = v17->_dialog;
    v17->_dialog = v18;

    v20 = [v15 copy];
    viewSnippet = v17->_viewSnippet;
    v17->_viewSnippet = v20;

    completionHandler = v17->_completionHandler;
    v17->_completionHandler = 0;

    v23 = v17;
  }

  return v17;
}

@end