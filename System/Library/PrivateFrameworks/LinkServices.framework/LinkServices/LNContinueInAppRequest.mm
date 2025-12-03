@interface LNContinueInAppRequest
- (LNContinueInAppRequest)initWithCoder:(id)coder;
- (LNContinueInAppRequest)initWithIdentifier:(id)identifier dialog:(id)dialog throwing:(BOOL)throwing requestConfirmation:(BOOL)confirmation type:(int64_t)type sceneOptions:(id)options bundleIdentifier:(id)bundleIdentifier options:(unint64_t)self0;
- (id)description;
- (void)encodeWithCoder:(id)coder;
- (void)respondWithError:(id)error;
- (void)respondWithSuccess;
@end

@implementation LNContinueInAppRequest

- (LNContinueInAppRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dialog"];
  v7 = [coderCopy decodeBoolForKey:@"throwing"];
  v8 = [coderCopy decodeBoolForKey:@"requestConfirmation"];
  v9 = [coderCopy decodeIntegerForKey:@"type"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sceneOptions"];
  selfCopy = 0;
  if (v5 && v6)
  {
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
    self = -[LNContinueInAppRequest initWithIdentifier:dialog:throwing:requestConfirmation:type:sceneOptions:bundleIdentifier:options:](self, "initWithIdentifier:dialog:throwing:requestConfirmation:type:sceneOptions:bundleIdentifier:options:", v5, v6, v7, v8, v9, v10, v12, [coderCopy decodeIntegerForKey:@"options"]);

    selfCopy = self;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(LNContinueInAppRequest *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  dialog = [(LNContinueInAppRequest *)self dialog];
  [coderCopy encodeObject:dialog forKey:@"dialog"];

  [coderCopy encodeBool:-[LNContinueInAppRequest isThrowing](self forKey:{"isThrowing"), @"throwing"}];
  [coderCopy encodeBool:-[LNContinueInAppRequest requestConfirmation](self forKey:{"requestConfirmation"), @"requestConfirmation"}];
  [coderCopy encodeInteger:-[LNContinueInAppRequest type](self forKey:{"type"), @"type"}];
  sceneOptions = [(LNContinueInAppRequest *)self sceneOptions];
  [coderCopy encodeObject:sceneOptions forKey:@"sceneOptions"];

  bundleIdentifier = [(LNContinueInAppRequest *)self bundleIdentifier];
  [coderCopy encodeObject:bundleIdentifier forKey:@"bundleIdentifier"];

  [coderCopy encodeInteger:-[LNContinueInAppRequest options](self forKey:{"options"), @"options"}];
}

- (id)description
{
  v17 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v16 = NSStringFromClass(v3);
  identifier = [(LNContinueInAppRequest *)self identifier];
  dialog = [(LNContinueInAppRequest *)self dialog];
  if ([(LNContinueInAppRequest *)self isThrowing])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  if ([(LNContinueInAppRequest *)self requestConfirmation])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  type = [(LNContinueInAppRequest *)self type];
  v9 = @"UserInitiated";
  if (type == 1)
  {
    v9 = @"ForegroundLaunch";
  }

  if (type == 2)
  {
    v9 = @"ForegroundLaunchWithRunningUI";
  }

  v10 = v9;
  sceneOptions = [(LNContinueInAppRequest *)self sceneOptions];
  bundleIdentifier = [(LNContinueInAppRequest *)self bundleIdentifier];
  if (([(LNContinueInAppRequest *)self options]& 1) != 0)
  {
    v13 = @"YES";
  }

  else
  {
    v13 = @"NO";
  }

  v14 = [v17 stringWithFormat:@"<%@: %p, identifier: %@, dialog: %@, isThrowing: %@, requestConfirmation: %@, type: %@, sceneOptions: %@, bundleIdentifier: %@, dismissSiri: %@>", v16, self, identifier, dialog, v6, v7, v10, sceneOptions, bundleIdentifier, v13];

  return v14;
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
      identifier = [(LNContinueInAppRequest *)self identifier];
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
    v3 = [LNContinueInAppResponse alloc];
    identifier = [(LNContinueInAppRequest *)self identifier];
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
      identifier2 = [(LNContinueInAppRequest *)self identifier];
      *buf = 138543618;
      v14 = v9;
      v15 = 2114;
      v16 = identifier2;
    }

    v11 = *MEMORY[0x1E69E9840];
  }
}

- (LNContinueInAppRequest)initWithIdentifier:(id)identifier dialog:(id)dialog throwing:(BOOL)throwing requestConfirmation:(BOOL)confirmation type:(int64_t)type sceneOptions:(id)options bundleIdentifier:(id)bundleIdentifier options:(unint64_t)self0
{
  identifierCopy = identifier;
  dialogCopy = dialog;
  optionsCopy = options;
  bundleIdentifierCopy = bundleIdentifier;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNContinueInAppRequest.m" lineNumber:47 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];
  }

  v32.receiver = self;
  v32.super_class = LNContinueInAppRequest;
  v21 = [(LNContinueInAppRequest *)&v32 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_identifier, identifier);
    v23 = [dialogCopy copy];
    dialog = v22->_dialog;
    v22->_dialog = v23;

    completionHandler = v22->_completionHandler;
    v22->_completionHandler = 0;

    v22->_throwing = throwing;
    v22->_requestConfirmation = confirmation;
    v22->_type = type;
    objc_storeStrong(&v22->_sceneOptions, options);
    v26 = [bundleIdentifierCopy copy];
    bundleIdentifier = v22->_bundleIdentifier;
    v22->_bundleIdentifier = v26;

    v22->_options = a10;
    v28 = v22;
  }

  return v22;
}

@end