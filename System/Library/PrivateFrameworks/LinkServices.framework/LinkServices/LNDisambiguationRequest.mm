@interface LNDisambiguationRequest
- (LNDisambiguationRequest)initWithCoder:(id)coder;
- (LNDisambiguationRequest)initWithIdentifier:(id)identifier parameterName:(id)name providedValues:(id)values dialog:(id)dialog;
- (void)encodeWithCoder:(id)coder;
- (void)respondWithError:(id)error;
- (void)respondWithSelectedIndex:(int64_t)index;
- (void)respondWithSelectedItemIndex:(int64_t)index;
- (void)respondWithUpdates:(id)updates;
- (void)responseWithSelectedIndex:(id)index value:(id)value;
@end

@implementation LNDisambiguationRequest

- (LNDisambiguationRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"parameterName"];
  v7 = MEMORY[0x1E695DFD8];
  v8 = objc_opt_class();
  v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
  v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"providedValues"];

  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dialog"];

  selfCopy = 0;
  if (v5 && v6 && v10)
  {
    self = [(LNDisambiguationRequest *)self initWithIdentifier:v5 parameterName:v6 providedValues:v10 dialog:v11];
    selfCopy = self;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(LNDisambiguationRequest *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  parameterName = [(LNDisambiguationRequest *)self parameterName];
  [coderCopy encodeObject:parameterName forKey:@"parameterName"];

  providedValues = [(LNDisambiguationRequest *)self providedValues];
  [coderCopy encodeObject:providedValues forKey:@"providedValues"];

  dialog = [(LNDisambiguationRequest *)self dialog];
  [coderCopy encodeObject:dialog forKey:@"dialog"];
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
      identifier = [(LNDisambiguationRequest *)self identifier];
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
    v5 = [LNDisambiguationResponse alloc];
    identifier = [(LNDisambiguationRequest *)self identifier];
    responseContext = [(LNRequest *)self responseContext];
    v8 = [(LNDisambiguationResponse *)v5 initWithIdentifier:identifier context:responseContext selectedIndex:0 value:0 updates:updatesCopy];

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
      identifier2 = [(LNDisambiguationRequest *)self identifier];
      v13 = 138543618;
      v14 = v10;
      v15 = 2114;
      v16 = identifier2;
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)responseWithSelectedIndex:(id)index value:(id)value
{
  v20 = *MEMORY[0x1E69E9840];
  indexCopy = index;
  valueCopy = value;
  if (self->_completionHandler)
  {
    v8 = [LNDisambiguationResponse alloc];
    identifier = [(LNDisambiguationRequest *)self identifier];
    responseContext = [(LNRequest *)self responseContext];
    v11 = [(LNDisambiguationResponse *)v8 initWithIdentifier:identifier context:responseContext selectedIndex:indexCopy value:valueCopy updates:0];

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
      identifier2 = [(LNDisambiguationRequest *)self identifier];
      v16 = 138543618;
      v17 = v13;
      v18 = 2114;
      v19 = identifier2;
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)respondWithSelectedIndex:(int64_t)index
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:index];
  [(LNDisambiguationRequest *)self responseWithSelectedIndex:v4 value:0];
}

- (LNDisambiguationRequest)initWithIdentifier:(id)identifier parameterName:(id)name providedValues:(id)values dialog:(id)dialog
{
  identifierCopy = identifier;
  nameCopy = name;
  valuesCopy = values;
  dialogCopy = dialog;
  if (identifierCopy)
  {
    if (nameCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNDisambiguationRequest.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"parameterName"}];

    if (valuesCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"LNDisambiguationRequest.m" lineNumber:24 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];

  if (!nameCopy)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (valuesCopy)
  {
    goto LABEL_4;
  }

LABEL_9:
  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"LNDisambiguationRequest.m" lineNumber:26 description:{@"Invalid parameter not satisfying: %@", @"providedValues"}];

LABEL_4:
  v26.receiver = self;
  v26.super_class = LNDisambiguationRequest;
  v16 = [(LNDisambiguationRequest *)&v26 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_identifier, identifier);
    objc_storeStrong(&v17->_parameterName, name);
    objc_storeStrong(&v17->_providedValues, values);
    v18 = [dialogCopy copy];
    dialog = v17->_dialog;
    v17->_dialog = v18;

    completionHandler = v17->_completionHandler;
    v17->_completionHandler = 0;

    v21 = v17;
  }

  return v17;
}

- (void)respondWithSelectedItemIndex:(int64_t)index
{
  providedValues = [(LNDisambiguationRequest *)self providedValues];
  v6 = [providedValues objectAtIndexedSubscript:index];

  [(LNDisambiguationRequest *)self respondWithValue:v6];
}

@end