@interface LNOpenURLRequest
- (LNOpenURLRequest)initWithCoder:(id)a3;
- (LNOpenURLRequest)initWithIdentifier:(id)a3 url:(id)a4;
- (void)encodeWithCoder:(id)a3;
- (void)respondWithError:(id)a3;
- (void)respondWithSuccess;
@end

@implementation LNOpenURLRequest

- (LNOpenURLRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"url"];

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
    v8 = 0;
  }

  else
  {
    self = [(LNOpenURLRequest *)self initWithIdentifier:v5 url:v6];
    v8 = self;
  }

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(LNOpenURLRequest *)self identifier];
  [v4 encodeObject:v5 forKey:@"identifier"];

  v6 = [(LNOpenURLRequest *)self url];
  [v4 encodeObject:v6 forKey:@"url"];
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
      v11 = [(LNOpenURLRequest *)self identifier];
      v13 = 138543618;
      v14 = v10;
      v15 = 2114;
      v16 = v11;
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
    v4 = [(LNOpenURLRequest *)self identifier];
    v5 = [(LNRequest *)self responseContext];
    v12 = [(LNResponse *)v3 initWithIdentifier:v4 context:v5];

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
      v10 = [(LNOpenURLRequest *)self identifier];
      *buf = 138543618;
      v14 = v9;
      v15 = 2114;
      v16 = v10;
    }

    v11 = *MEMORY[0x1E69E9840];
  }
}

- (LNOpenURLRequest)initWithIdentifier:(id)a3 url:(id)a4
{
  v8 = a3;
  v9 = a4;
  if (!v8)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"LNOpenURLRequest.m" lineNumber:20 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];
  }

  v17.receiver = self;
  v17.super_class = LNOpenURLRequest;
  v10 = [(LNOpenURLRequest *)&v17 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_identifier, a3);
    v12 = [v9 copy];
    url = v11->_url;
    v11->_url = v12;

    v14 = v11;
  }

  return v11;
}

@end