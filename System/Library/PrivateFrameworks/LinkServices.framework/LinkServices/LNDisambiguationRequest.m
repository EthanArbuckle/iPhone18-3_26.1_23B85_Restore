@interface LNDisambiguationRequest
- (LNDisambiguationRequest)initWithCoder:(id)a3;
- (LNDisambiguationRequest)initWithIdentifier:(id)a3 parameterName:(id)a4 providedValues:(id)a5 dialog:(id)a6;
- (void)encodeWithCoder:(id)a3;
- (void)respondWithError:(id)a3;
- (void)respondWithSelectedIndex:(int64_t)a3;
- (void)respondWithSelectedItemIndex:(int64_t)a3;
- (void)respondWithUpdates:(id)a3;
- (void)responseWithSelectedIndex:(id)a3 value:(id)a4;
@end

@implementation LNDisambiguationRequest

- (LNDisambiguationRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"parameterName"];
  v7 = MEMORY[0x1E695DFD8];
  v8 = objc_opt_class();
  v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
  v10 = [v4 decodeObjectOfClasses:v9 forKey:@"providedValues"];

  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dialog"];

  v12 = 0;
  if (v5 && v6 && v10)
  {
    self = [(LNDisambiguationRequest *)self initWithIdentifier:v5 parameterName:v6 providedValues:v10 dialog:v11];
    v12 = self;
  }

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(LNDisambiguationRequest *)self identifier];
  [v4 encodeObject:v5 forKey:@"identifier"];

  v6 = [(LNDisambiguationRequest *)self parameterName];
  [v4 encodeObject:v6 forKey:@"parameterName"];

  v7 = [(LNDisambiguationRequest *)self providedValues];
  [v4 encodeObject:v7 forKey:@"providedValues"];

  v8 = [(LNDisambiguationRequest *)self dialog];
  [v4 encodeObject:v8 forKey:@"dialog"];
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
      v11 = [(LNDisambiguationRequest *)self identifier];
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
    v5 = [LNDisambiguationResponse alloc];
    v6 = [(LNDisambiguationRequest *)self identifier];
    v7 = [(LNRequest *)self responseContext];
    v8 = [(LNDisambiguationResponse *)v5 initWithIdentifier:v6 context:v7 selectedIndex:0 value:0 updates:v4];

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
      v11 = [(LNDisambiguationRequest *)self identifier];
      v13 = 138543618;
      v14 = v10;
      v15 = 2114;
      v16 = v11;
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)responseWithSelectedIndex:(id)a3 value:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (self->_completionHandler)
  {
    v8 = [LNDisambiguationResponse alloc];
    v9 = [(LNDisambiguationRequest *)self identifier];
    v10 = [(LNRequest *)self responseContext];
    v11 = [(LNDisambiguationResponse *)v8 initWithIdentifier:v9 context:v10 selectedIndex:v6 value:v7 updates:0];

    (*(self->_completionHandler + 2))();
    completionHandler = self->_completionHandler;
    self->_completionHandler = 0;
  }

  else
  {
    v11 = getLNLogCategoryExecution();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v13 = objc_opt_class();
      v14 = [(LNDisambiguationRequest *)self identifier];
      v16 = 138543618;
      v17 = v13;
      v18 = 2114;
      v19 = v14;
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)respondWithSelectedIndex:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(LNDisambiguationRequest *)self responseWithSelectedIndex:v4 value:0];
}

- (LNDisambiguationRequest)initWithIdentifier:(id)a3 parameterName:(id)a4 providedValues:(id)a5 dialog:(id)a6
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

LABEL_8:
    v24 = [MEMORY[0x1E696AAA8] currentHandler];
    [v24 handleFailureInMethod:a2 object:self file:@"LNDisambiguationRequest.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"parameterName"}];

    if (v14)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v23 = [MEMORY[0x1E696AAA8] currentHandler];
  [v23 handleFailureInMethod:a2 object:self file:@"LNDisambiguationRequest.m" lineNumber:24 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];

  if (!v13)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (v14)
  {
    goto LABEL_4;
  }

LABEL_9:
  v25 = [MEMORY[0x1E696AAA8] currentHandler];
  [v25 handleFailureInMethod:a2 object:self file:@"LNDisambiguationRequest.m" lineNumber:26 description:{@"Invalid parameter not satisfying: %@", @"providedValues"}];

LABEL_4:
  v26.receiver = self;
  v26.super_class = LNDisambiguationRequest;
  v16 = [(LNDisambiguationRequest *)&v26 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_identifier, a3);
    objc_storeStrong(&v17->_parameterName, a4);
    objc_storeStrong(&v17->_providedValues, a5);
    v18 = [v15 copy];
    dialog = v17->_dialog;
    v17->_dialog = v18;

    completionHandler = v17->_completionHandler;
    v17->_completionHandler = 0;

    v21 = v17;
  }

  return v17;
}

- (void)respondWithSelectedItemIndex:(int64_t)a3
{
  v5 = [(LNDisambiguationRequest *)self providedValues];
  v6 = [v5 objectAtIndexedSubscript:a3];

  [(LNDisambiguationRequest *)self respondWithValue:v6];
}

@end