@interface LNConfirmationRequest
- (LNConfirmationRequest)initWithCoder:(id)coder;
- (LNConfirmationRequest)initWithIdentifier:(id)identifier parameterName:(id)name value:(id)value dialog:(id)dialog viewSnippet:(id)snippet;
- (void)encodeWithCoder:(id)coder;
- (void)respondWithError:(id)error;
- (void)respondWithUpdates:(id)updates;
@end

@implementation LNConfirmationRequest

- (LNConfirmationRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"parameterName"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"value"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dialog"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"viewSnippet"];

  selfCopy = 0;
  if (v5 && v6 && v7)
  {
    self = [(LNConfirmationRequest *)self initWithIdentifier:v5 parameterName:v6 value:v7 dialog:v8 viewSnippet:v9];
    selfCopy = self;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(LNConfirmationRequest *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  parameterName = [(LNConfirmationRequest *)self parameterName];
  [coderCopy encodeObject:parameterName forKey:@"parameterName"];

  value = [(LNConfirmationRequest *)self value];
  [coderCopy encodeObject:value forKey:@"value"];

  dialog = [(LNConfirmationRequest *)self dialog];
  [coderCopy encodeObject:dialog forKey:@"dialog"];

  viewSnippet = [(LNConfirmationRequest *)self viewSnippet];
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
      identifier = [(LNConfirmationRequest *)self identifier];
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
    v5 = [LNConfirmationResponse alloc];
    identifier = [(LNConfirmationRequest *)self identifier];
    responseContext = [(LNRequest *)self responseContext];
    v8 = [(LNConfirmationResponse *)v5 initWithIdentifier:identifier context:responseContext confirmed:0 updates:updatesCopy];

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
      identifier2 = [(LNConfirmationRequest *)self identifier];
      v13 = 138543618;
      v14 = v10;
      v15 = 2114;
      v16 = identifier2;
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (LNConfirmationRequest)initWithIdentifier:(id)identifier parameterName:(id)name value:(id)value dialog:(id)dialog viewSnippet:(id)snippet
{
  identifierCopy = identifier;
  nameCopy = name;
  valueCopy = value;
  dialogCopy = dialog;
  snippetCopy = snippet;
  if (identifierCopy)
  {
    if (nameCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNConfirmationRequest.m" lineNumber:26 description:{@"Invalid parameter not satisfying: %@", @"parameterName"}];

    if (valueCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"LNConfirmationRequest.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];

  if (!nameCopy)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (valueCopy)
  {
    goto LABEL_4;
  }

LABEL_9:
  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"LNConfirmationRequest.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"value"}];

LABEL_4:
  v31.receiver = self;
  v31.super_class = LNConfirmationRequest;
  v19 = [(LNConfirmationRequest *)&v31 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_identifier, identifier);
    objc_storeStrong(&v20->_parameterName, name);
    objc_storeStrong(&v20->_value, value);
    v21 = [dialogCopy copy];
    dialog = v20->_dialog;
    v20->_dialog = v21;

    v23 = [snippetCopy copy];
    viewSnippet = v20->_viewSnippet;
    v20->_viewSnippet = v23;

    completionHandler = v20->_completionHandler;
    v20->_completionHandler = 0;

    v26 = v20;
  }

  return v20;
}

@end