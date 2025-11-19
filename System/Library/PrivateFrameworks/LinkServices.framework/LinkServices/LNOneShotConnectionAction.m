@interface LNOneShotConnectionAction
- (LNOneShotConnectionAction)initWithBSXPCCoder:(id)a3;
- (LNOneShotConnectionAction)initWithCoder:(id)a3;
- (LNOneShotConnectionAction)initWithIdentifier:(id)a3 action:(id)a4 executorOptions:(id)a5;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNOneShotConnectionAction

- (LNOneShotConnectionAction)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  if (v5)
  {
    v6 = [(LNConnectionAction *)self initWithIdentifier:v5];
    if (v6)
    {
      v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"action"];
      action = v6->_action;
      v6->_action = v7;

      v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"executorOptions"];
      executorOptions = v6->_executorOptions;
      v6->_executorOptions = v9;
    }

    self = v6;
    v11 = self;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [(LNConnectionAction *)self identifier];
  [v4 encodeObject:v5 forKey:@"identifier"];

  v6 = [(LNOneShotConnectionAction *)self action];
  [v4 encodeObject:v6 forKey:@"action"];

  v7 = [(LNOneShotConnectionAction *)self executorOptions];
  [v4 encodeObject:v7 forKey:@"executorOptions"];
}

- (LNOneShotConnectionAction)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = LNOneShotConnectionAction;
  v5 = [(LNConnectionAction *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"action"];
    action = v5->_action;
    v5->_action = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"executorOptions"];
    executorOptions = v5->_executorOptions;
    v5->_executorOptions = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = LNOneShotConnectionAction;
  v4 = a3;
  [(LNConnectionAction *)&v7 encodeWithCoder:v4];
  v5 = [(LNOneShotConnectionAction *)self action:v7.receiver];
  [v4 encodeObject:v5 forKey:@"action"];

  v6 = [(LNOneShotConnectionAction *)self executorOptions];
  [v4 encodeObject:v6 forKey:@"executorOptions"];
}

- (LNOneShotConnectionAction)initWithIdentifier:(id)a3 action:(id)a4 executorOptions:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = v11;
  if (v10)
  {
    if (v11)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"LNOneShotConnectionAction.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"oneShotAction"}];

    if (v12)
    {
      goto LABEL_3;
    }
  }

  v18 = [MEMORY[0x1E696AAA8] currentHandler];
  [v18 handleFailureInMethod:a2 object:self file:@"LNOneShotConnectionAction.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"executorOptions"}];

LABEL_3:
  v19.receiver = self;
  v19.super_class = LNOneShotConnectionAction;
  v13 = [(LNConnectionAction *)&v19 initWithIdentifier:v9];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_action, a4);
    objc_storeStrong(&v14->_executorOptions, a5);
    v15 = v14;
  }

  return v14;
}

@end