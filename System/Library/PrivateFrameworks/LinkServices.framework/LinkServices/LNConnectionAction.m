@interface LNConnectionAction
- (LNConnectionAction)initWithBSXPCCoder:(id)a3;
- (LNConnectionAction)initWithCoder:(id)a3;
- (LNConnectionAction)initWithIdentifier:(id)a3;
- (NSString)description;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNConnectionAction

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(LNConnectionAction *)self identifier];
  v7 = [v3 stringWithFormat:@"<%@: %p, identifier: %@>", v5, self, v6];

  return v7;
}

- (LNConnectionAction)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];

  if (v5)
  {
    self = [(LNConnectionAction *)self initWithIdentifier:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [(LNConnectionAction *)self identifier];
  [v4 encodeObject:v5 forKey:@"identifier"];
}

- (LNConnectionAction)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];

  if (v5)
  {
    self = [(LNConnectionAction *)self initWithIdentifier:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(LNConnectionAction *)self identifier];
  [v4 encodeObject:v5 forKey:@"identifier"];
}

- (LNConnectionAction)initWithIdentifier:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"LNConnectionAction.m" lineNumber:92 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];
  }

  v12.receiver = self;
  v12.super_class = LNConnectionAction;
  v7 = [(LNConnectionAction *)&v12 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_identifier, a3);
    v9 = v8;
  }

  return v8;
}

@end