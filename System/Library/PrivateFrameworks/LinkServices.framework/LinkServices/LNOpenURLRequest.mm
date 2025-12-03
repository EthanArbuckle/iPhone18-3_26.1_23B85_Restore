@interface LNOpenURLRequest
- (LNOpenURLRequest)initWithCoder:(id)coder;
- (LNOpenURLRequest)initWithIdentifier:(id)identifier url:(id)url;
- (void)encodeWithCoder:(id)coder;
- (void)respondWithError:(id)error;
- (void)respondWithSuccess;
@end

@implementation LNOpenURLRequest

- (LNOpenURLRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"url"];

  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    selfCopy = 0;
  }

  else
  {
    self = [(LNOpenURLRequest *)self initWithIdentifier:v5 url:v6];
    selfCopy = self;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(LNOpenURLRequest *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  v6 = [(LNOpenURLRequest *)self url];
  [coderCopy encodeObject:v6 forKey:@"url"];
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
      identifier = [(LNOpenURLRequest *)self identifier];
      v13 = 138543618;
      v14 = v10;
      v15 = 2114;
      v16 = identifier;
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)respondWithSuccess
{
  v17 = *MEMORY[0x1E69E9840];
  if (self->_completionHandler)
  {
    v3 = [LNOpenURLResponse alloc];
    identifier = [(LNOpenURLRequest *)self identifier];
    responseContext = [(LNRequest *)self responseContext];
    v12 = [(LNResponse *)v3 initWithIdentifier:identifier context:responseContext];

    (*(self->_completionHandler + 2))();
    completionHandler = self->_completionHandler;
    self->_completionHandler = 0;

    v7 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v8 = getLNLogCategoryExecution();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = objc_opt_class();
      identifier2 = [(LNOpenURLRequest *)self identifier];
      *buf = 138543618;
      v14 = v9;
      v15 = 2114;
      v16 = identifier2;
    }

    v11 = *MEMORY[0x1E69E9840];
  }
}

- (LNOpenURLRequest)initWithIdentifier:(id)identifier url:(id)url
{
  identifierCopy = identifier;
  urlCopy = url;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNOpenURLRequest.m" lineNumber:20 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];
  }

  v17.receiver = self;
  v17.super_class = LNOpenURLRequest;
  v10 = [(LNOpenURLRequest *)&v17 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_identifier, identifier);
    v12 = [urlCopy copy];
    url = v11->_url;
    v11->_url = v12;

    v14 = v11;
  }

  return v11;
}

@end