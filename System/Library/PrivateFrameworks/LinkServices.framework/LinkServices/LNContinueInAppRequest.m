@interface LNContinueInAppRequest
- (LNContinueInAppRequest)initWithCoder:(id)a3;
- (LNContinueInAppRequest)initWithIdentifier:(id)a3 dialog:(id)a4 throwing:(BOOL)a5 requestConfirmation:(BOOL)a6 type:(int64_t)a7 sceneOptions:(id)a8 bundleIdentifier:(id)a9 options:(unint64_t)a10;
- (id)description;
- (void)encodeWithCoder:(id)a3;
- (void)respondWithError:(id)a3;
- (void)respondWithSuccess;
@end

@implementation LNContinueInAppRequest

- (LNContinueInAppRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dialog"];
  v7 = [v4 decodeBoolForKey:@"throwing"];
  v8 = [v4 decodeBoolForKey:@"requestConfirmation"];
  v9 = [v4 decodeIntegerForKey:@"type"];
  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sceneOptions"];
  v11 = 0;
  if (v5 && v6)
  {
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
    self = -[LNContinueInAppRequest initWithIdentifier:dialog:throwing:requestConfirmation:type:sceneOptions:bundleIdentifier:options:](self, "initWithIdentifier:dialog:throwing:requestConfirmation:type:sceneOptions:bundleIdentifier:options:", v5, v6, v7, v8, v9, v10, v12, [v4 decodeIntegerForKey:@"options"]);

    v11 = self;
  }

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  v4 = [(LNContinueInAppRequest *)self identifier];
  [v8 encodeObject:v4 forKey:@"identifier"];

  v5 = [(LNContinueInAppRequest *)self dialog];
  [v8 encodeObject:v5 forKey:@"dialog"];

  [v8 encodeBool:-[LNContinueInAppRequest isThrowing](self forKey:{"isThrowing"), @"throwing"}];
  [v8 encodeBool:-[LNContinueInAppRequest requestConfirmation](self forKey:{"requestConfirmation"), @"requestConfirmation"}];
  [v8 encodeInteger:-[LNContinueInAppRequest type](self forKey:{"type"), @"type"}];
  v6 = [(LNContinueInAppRequest *)self sceneOptions];
  [v8 encodeObject:v6 forKey:@"sceneOptions"];

  v7 = [(LNContinueInAppRequest *)self bundleIdentifier];
  [v8 encodeObject:v7 forKey:@"bundleIdentifier"];

  [v8 encodeInteger:-[LNContinueInAppRequest options](self forKey:{"options"), @"options"}];
}

- (id)description
{
  v17 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v16 = NSStringFromClass(v3);
  v4 = [(LNContinueInAppRequest *)self identifier];
  v5 = [(LNContinueInAppRequest *)self dialog];
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

  v8 = [(LNContinueInAppRequest *)self type];
  v9 = @"UserInitiated";
  if (v8 == 1)
  {
    v9 = @"ForegroundLaunch";
  }

  if (v8 == 2)
  {
    v9 = @"ForegroundLaunchWithRunningUI";
  }

  v10 = v9;
  v11 = [(LNContinueInAppRequest *)self sceneOptions];
  v12 = [(LNContinueInAppRequest *)self bundleIdentifier];
  if (([(LNContinueInAppRequest *)self options]& 1) != 0)
  {
    v13 = @"YES";
  }

  else
  {
    v13 = @"NO";
  }

  v14 = [v17 stringWithFormat:@"<%@: %p, identifier: %@, dialog: %@, isThrowing: %@, requestConfirmation: %@, type: %@, sceneOptions: %@, bundleIdentifier: %@, dismissSiri: %@>", v16, self, v4, v5, v6, v7, v10, v11, v12, v13];

  return v14;
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
      v11 = [(LNContinueInAppRequest *)self identifier];
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
    v3 = [LNContinueInAppResponse alloc];
    v4 = [(LNContinueInAppRequest *)self identifier];
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
      v10 = [(LNContinueInAppRequest *)self identifier];
      *buf = 138543618;
      v14 = v9;
      v15 = 2114;
      v16 = v10;
    }

    v11 = *MEMORY[0x1E69E9840];
  }
}

- (LNContinueInAppRequest)initWithIdentifier:(id)a3 dialog:(id)a4 throwing:(BOOL)a5 requestConfirmation:(BOOL)a6 type:(int64_t)a7 sceneOptions:(id)a8 bundleIdentifier:(id)a9 options:(unint64_t)a10
{
  v17 = a3;
  v18 = a4;
  v19 = a8;
  v20 = a9;
  if (!v17)
  {
    v30 = [MEMORY[0x1E696AAA8] currentHandler];
    [v30 handleFailureInMethod:a2 object:self file:@"LNContinueInAppRequest.m" lineNumber:47 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];
  }

  v32.receiver = self;
  v32.super_class = LNContinueInAppRequest;
  v21 = [(LNContinueInAppRequest *)&v32 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_identifier, a3);
    v23 = [v18 copy];
    dialog = v22->_dialog;
    v22->_dialog = v23;

    completionHandler = v22->_completionHandler;
    v22->_completionHandler = 0;

    v22->_throwing = a5;
    v22->_requestConfirmation = a6;
    v22->_type = a7;
    objc_storeStrong(&v22->_sceneOptions, a8);
    v26 = [v20 copy];
    bundleIdentifier = v22->_bundleIdentifier;
    v22->_bundleIdentifier = v26;

    v22->_options = a10;
    v28 = v22;
  }

  return v22;
}

@end