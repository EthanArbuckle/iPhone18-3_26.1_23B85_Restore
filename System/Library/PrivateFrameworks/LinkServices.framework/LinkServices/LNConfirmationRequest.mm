@interface LNConfirmationRequest
- (LNConfirmationRequest)initWithCoder:(id)a3;
- (LNConfirmationRequest)initWithIdentifier:(id)a3 parameterName:(id)a4 value:(id)a5 dialog:(id)a6 viewSnippet:(id)a7;
- (void)encodeWithCoder:(id)a3;
- (void)respondWithError:(id)a3;
- (void)respondWithUpdates:(id)a3;
@end

@implementation LNConfirmationRequest

- (LNConfirmationRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"parameterName"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"value"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dialog"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"viewSnippet"];

  v10 = 0;
  if (v5 && v6 && v7)
  {
    self = [(LNConfirmationRequest *)self initWithIdentifier:v5 parameterName:v6 value:v7 dialog:v8 viewSnippet:v9];
    v10 = self;
  }

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(LNConfirmationRequest *)self identifier];
  [v4 encodeObject:v5 forKey:@"identifier"];

  v6 = [(LNConfirmationRequest *)self parameterName];
  [v4 encodeObject:v6 forKey:@"parameterName"];

  v7 = [(LNConfirmationRequest *)self value];
  [v4 encodeObject:v7 forKey:@"value"];

  v8 = [(LNConfirmationRequest *)self dialog];
  [v4 encodeObject:v8 forKey:@"dialog"];

  v9 = [(LNConfirmationRequest *)self viewSnippet];
  [v4 encodeObject:v9 forKey:@"viewSnippet"];
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
      v11 = [(LNConfirmationRequest *)self identifier];
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
    v5 = [LNConfirmationResponse alloc];
    v6 = [(LNConfirmationRequest *)self identifier];
    v7 = [(LNRequest *)self responseContext];
    v8 = [(LNConfirmationResponse *)v5 initWithIdentifier:v6 context:v7 confirmed:0 updates:v4];

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
      v11 = [(LNConfirmationRequest *)self identifier];
      v13 = 138543618;
      v14 = v10;
      v15 = 2114;
      v16 = v11;
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (LNConfirmationRequest)initWithIdentifier:(id)a3 parameterName:(id)a4 value:(id)a5 dialog:(id)a6 viewSnippet:(id)a7
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  if (v14)
  {
    if (v15)
    {
      goto LABEL_3;
    }

LABEL_8:
    v29 = [MEMORY[0x1E696AAA8] currentHandler];
    [v29 handleFailureInMethod:a2 object:self file:@"LNConfirmationRequest.m" lineNumber:26 description:{@"Invalid parameter not satisfying: %@", @"parameterName"}];

    if (v16)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v28 = [MEMORY[0x1E696AAA8] currentHandler];
  [v28 handleFailureInMethod:a2 object:self file:@"LNConfirmationRequest.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];

  if (!v15)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (v16)
  {
    goto LABEL_4;
  }

LABEL_9:
  v30 = [MEMORY[0x1E696AAA8] currentHandler];
  [v30 handleFailureInMethod:a2 object:self file:@"LNConfirmationRequest.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"value"}];

LABEL_4:
  v31.receiver = self;
  v31.super_class = LNConfirmationRequest;
  v19 = [(LNConfirmationRequest *)&v31 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_identifier, a3);
    objc_storeStrong(&v20->_parameterName, a4);
    objc_storeStrong(&v20->_value, a5);
    v21 = [v17 copy];
    dialog = v20->_dialog;
    v20->_dialog = v21;

    v23 = [v18 copy];
    viewSnippet = v20->_viewSnippet;
    v20->_viewSnippet = v23;

    completionHandler = v20->_completionHandler;
    v20->_completionHandler = 0;

    v26 = v20;
  }

  return v20;
}

@end