@interface LNOneShotConnectionAction
- (LNOneShotConnectionAction)initWithBSXPCCoder:(id)coder;
- (LNOneShotConnectionAction)initWithCoder:(id)coder;
- (LNOneShotConnectionAction)initWithIdentifier:(id)identifier action:(id)action executorOptions:(id)options;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNOneShotConnectionAction

- (LNOneShotConnectionAction)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  if (v5)
  {
    v6 = [(LNConnectionAction *)self initWithIdentifier:v5];
    if (v6)
    {
      v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"action"];
      action = v6->_action;
      v6->_action = v7;

      v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"executorOptions"];
      executorOptions = v6->_executorOptions;
      v6->_executorOptions = v9;
    }

    self = v6;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(LNConnectionAction *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  action = [(LNOneShotConnectionAction *)self action];
  [coderCopy encodeObject:action forKey:@"action"];

  executorOptions = [(LNOneShotConnectionAction *)self executorOptions];
  [coderCopy encodeObject:executorOptions forKey:@"executorOptions"];
}

- (LNOneShotConnectionAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = LNOneShotConnectionAction;
  v5 = [(LNConnectionAction *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"action"];
    action = v5->_action;
    v5->_action = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"executorOptions"];
    executorOptions = v5->_executorOptions;
    v5->_executorOptions = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = LNOneShotConnectionAction;
  coderCopy = coder;
  [(LNConnectionAction *)&v7 encodeWithCoder:coderCopy];
  v5 = [(LNOneShotConnectionAction *)self action:v7.receiver];
  [coderCopy encodeObject:v5 forKey:@"action"];

  executorOptions = [(LNOneShotConnectionAction *)self executorOptions];
  [coderCopy encodeObject:executorOptions forKey:@"executorOptions"];
}

- (LNOneShotConnectionAction)initWithIdentifier:(id)identifier action:(id)action executorOptions:(id)options
{
  identifierCopy = identifier;
  actionCopy = action;
  optionsCopy = options;
  v12 = optionsCopy;
  if (actionCopy)
  {
    if (optionsCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNOneShotConnectionAction.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"oneShotAction"}];

    if (v12)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"LNOneShotConnectionAction.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"executorOptions"}];

LABEL_3:
  v19.receiver = self;
  v19.super_class = LNOneShotConnectionAction;
  v13 = [(LNConnectionAction *)&v19 initWithIdentifier:identifierCopy];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_action, action);
    objc_storeStrong(&v14->_executorOptions, options);
    v15 = v14;
  }

  return v14;
}

@end