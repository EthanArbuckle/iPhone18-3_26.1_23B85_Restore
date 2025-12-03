@interface LNChoiceRequest
- (LNChoiceRequest)initWithCoder:(id)coder;
- (LNChoiceRequest)initWithIdentifier:(id)identifier options:(id)options dialog:(id)dialog viewSnippet:(id)snippet;
- (void)encodeWithCoder:(id)coder;
- (void)respondWithError:(id)error;
- (void)respondWithOption:(id)option;
@end

@implementation LNChoiceRequest

- (LNChoiceRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"options"];

  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dialog"];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"viewSnippet"];

  selfCopy = 0;
  if (v5 && v9)
  {
    self = [(LNChoiceRequest *)self initWithIdentifier:v5 options:v9 dialog:v10 viewSnippet:v11];
    selfCopy = self;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(LNChoiceRequest *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  options = [(LNChoiceRequest *)self options];
  [coderCopy encodeObject:options forKey:@"options"];

  dialog = [(LNChoiceRequest *)self dialog];
  [coderCopy encodeObject:dialog forKey:@"dialog"];

  viewSnippet = [(LNChoiceRequest *)self viewSnippet];
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
      identifier = [(LNChoiceRequest *)self identifier];
      v13 = 138543618;
      v14 = v10;
      v15 = 2114;
      v16 = identifier;
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)respondWithOption:(id)option
{
  v17 = *MEMORY[0x1E69E9840];
  optionCopy = option;
  if (self->_completionHandler)
  {
    v5 = [LNChoiceResponse alloc];
    identifier = [(LNChoiceRequest *)self identifier];
    responseContext = [(LNRequest *)self responseContext];
    v8 = [(LNChoiceResponse *)v5 initWithIdentifier:identifier selectedOption:optionCopy context:responseContext];

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
      identifier2 = [(LNChoiceRequest *)self identifier];
      v13 = 138543618;
      v14 = v10;
      v15 = 2114;
      v16 = identifier2;
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (LNChoiceRequest)initWithIdentifier:(id)identifier options:(id)options dialog:(id)dialog viewSnippet:(id)snippet
{
  identifierCopy = identifier;
  optionsCopy = options;
  dialogCopy = dialog;
  snippetCopy = snippet;
  if (identifierCopy)
  {
    if (optionsCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNChoiceRequest.m" lineNumber:24 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];

    if (optionsCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"LNChoiceRequest.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"options"}];

LABEL_3:
  v29.receiver = self;
  v29.super_class = LNChoiceRequest;
  v16 = [(LNChoiceRequest *)&v29 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_identifier, identifier);
    v18 = [optionsCopy copy];
    options = v17->_options;
    v17->_options = v18;

    v20 = [dialogCopy copy];
    dialog = v17->_dialog;
    v17->_dialog = v20;

    v22 = [snippetCopy copy];
    viewSnippet = v17->_viewSnippet;
    v17->_viewSnippet = v22;

    completionHandler = v17->_completionHandler;
    v17->_completionHandler = 0;

    v25 = v17;
  }

  return v17;
}

@end