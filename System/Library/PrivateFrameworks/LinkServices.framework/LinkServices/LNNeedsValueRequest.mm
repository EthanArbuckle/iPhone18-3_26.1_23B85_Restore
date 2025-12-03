@interface LNNeedsValueRequest
- (LNNeedsValueRequest)initWithCoder:(id)coder;
- (LNNeedsValueRequest)initWithIdentifier:(id)identifier parameterName:(id)name dialog:(id)dialog viewSnippet:(id)snippet;
- (void)encodeWithCoder:(id)coder;
- (void)respondWithError:(id)error;
- (void)respondWithUpdates:(id)updates;
- (void)respondWithValue:(id)value;
@end

@implementation LNNeedsValueRequest

- (LNNeedsValueRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"parameterName"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dialog"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"viewSnippet"];

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
    selfCopy = 0;
  }

  else
  {
    self = [(LNNeedsValueRequest *)self initWithIdentifier:v5 parameterName:v6 dialog:v7 viewSnippet:v8];
    selfCopy = self;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(LNNeedsValueRequest *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  parameterName = [(LNNeedsValueRequest *)self parameterName];
  [coderCopy encodeObject:parameterName forKey:@"parameterName"];

  dialog = [(LNNeedsValueRequest *)self dialog];
  [coderCopy encodeObject:dialog forKey:@"dialog"];

  viewSnippet = [(LNNeedsValueRequest *)self viewSnippet];
  [coderCopy encodeObject:viewSnippet forKey:@"viewSnippet"];
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
      identifier = [(LNNeedsValueRequest *)self identifier];
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
    v5 = [LNNeedsValueResponse alloc];
    identifier = [(LNNeedsValueRequest *)self identifier];
    responseContext = [(LNRequest *)self responseContext];
    v8 = [(LNNeedsValueResponse *)v5 initWithIdentifier:identifier context:responseContext value:0 updates:updatesCopy];

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
      identifier2 = [(LNNeedsValueRequest *)self identifier];
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
    v5 = [LNNeedsValueResponse alloc];
    identifier = [(LNNeedsValueRequest *)self identifier];
    responseContext = [(LNRequest *)self responseContext];
    v8 = [(LNNeedsValueResponse *)v5 initWithIdentifier:identifier context:responseContext value:valueCopy updates:0];

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
      identifier2 = [(LNNeedsValueRequest *)self identifier];
      v13 = 138543618;
      v14 = v10;
      v15 = 2114;
      v16 = identifier2;
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (LNNeedsValueRequest)initWithIdentifier:(id)identifier parameterName:(id)name dialog:(id)dialog viewSnippet:(id)snippet
{
  identifierCopy = identifier;
  nameCopy = name;
  dialogCopy = dialog;
  snippetCopy = snippet;
  if (identifierCopy)
  {
    if (nameCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNNeedsValueRequest.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];

    if (nameCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"LNNeedsValueRequest.m" lineNumber:26 description:{@"Invalid parameter not satisfying: %@", @"parameterName"}];

LABEL_3:
  v27.receiver = self;
  v27.super_class = LNNeedsValueRequest;
  v16 = [(LNNeedsValueRequest *)&v27 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_identifier, identifier);
    objc_storeStrong(&v17->_parameterName, name);
    v18 = [dialogCopy copy];
    dialog = v17->_dialog;
    v17->_dialog = v18;

    v20 = [snippetCopy copy];
    viewSnippet = v17->_viewSnippet;
    v17->_viewSnippet = v20;

    completionHandler = v17->_completionHandler;
    v17->_completionHandler = 0;

    v23 = v17;
  }

  return v17;
}

@end