@interface LNChoiceRequest
- (LNChoiceRequest)initWithCoder:(id)a3;
- (LNChoiceRequest)initWithIdentifier:(id)a3 options:(id)a4 dialog:(id)a5 viewSnippet:(id)a6;
- (void)encodeWithCoder:(id)a3;
- (void)respondWithError:(id)a3;
- (void)respondWithOption:(id)a3;
@end

@implementation LNChoiceRequest

- (LNChoiceRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [v4 decodeObjectOfClasses:v8 forKey:@"options"];

  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dialog"];
  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"viewSnippet"];

  v12 = 0;
  if (v5 && v9)
  {
    self = [(LNChoiceRequest *)self initWithIdentifier:v5 options:v9 dialog:v10 viewSnippet:v11];
    v12 = self;
  }

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(LNChoiceRequest *)self identifier];
  [v4 encodeObject:v5 forKey:@"identifier"];

  v6 = [(LNChoiceRequest *)self options];
  [v4 encodeObject:v6 forKey:@"options"];

  v7 = [(LNChoiceRequest *)self dialog];
  [v4 encodeObject:v7 forKey:@"dialog"];

  v8 = [(LNChoiceRequest *)self viewSnippet];
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
      v11 = [(LNChoiceRequest *)self identifier];
      v13 = 138543618;
      v14 = v10;
      v15 = 2114;
      v16 = v11;
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)respondWithOption:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_completionHandler)
  {
    v5 = [LNChoiceResponse alloc];
    v6 = [(LNChoiceRequest *)self identifier];
    v7 = [(LNRequest *)self responseContext];
    v8 = [(LNChoiceResponse *)v5 initWithIdentifier:v6 selectedOption:v4 context:v7];

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
      v11 = [(LNChoiceRequest *)self identifier];
      v13 = 138543618;
      v14 = v10;
      v15 = 2114;
      v16 = v11;
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (LNChoiceRequest)initWithIdentifier:(id)a3 options:(id)a4 dialog:(id)a5 viewSnippet:(id)a6
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
    v27 = [MEMORY[0x1E696AAA8] currentHandler];
    [v27 handleFailureInMethod:a2 object:self file:@"LNChoiceRequest.m" lineNumber:24 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];

    if (v13)
    {
      goto LABEL_3;
    }
  }

  v28 = [MEMORY[0x1E696AAA8] currentHandler];
  [v28 handleFailureInMethod:a2 object:self file:@"LNChoiceRequest.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"options"}];

LABEL_3:
  v29.receiver = self;
  v29.super_class = LNChoiceRequest;
  v16 = [(LNChoiceRequest *)&v29 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_identifier, a3);
    v18 = [v13 copy];
    options = v17->_options;
    v17->_options = v18;

    v20 = [v14 copy];
    dialog = v17->_dialog;
    v17->_dialog = v20;

    v22 = [v15 copy];
    viewSnippet = v17->_viewSnippet;
    v17->_viewSnippet = v22;

    completionHandler = v17->_completionHandler;
    v17->_completionHandler = 0;

    v25 = v17;
  }

  return v17;
}

@end