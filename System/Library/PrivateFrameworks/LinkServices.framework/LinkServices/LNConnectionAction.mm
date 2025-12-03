@interface LNConnectionAction
- (LNConnectionAction)initWithBSXPCCoder:(id)coder;
- (LNConnectionAction)initWithCoder:(id)coder;
- (LNConnectionAction)initWithIdentifier:(id)identifier;
- (NSString)description;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNConnectionAction

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  identifier = [(LNConnectionAction *)self identifier];
  v7 = [v3 stringWithFormat:@"<%@: %p, identifier: %@>", v5, self, identifier];

  return v7;
}

- (LNConnectionAction)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];

  if (v5)
  {
    self = [(LNConnectionAction *)self initWithIdentifier:v5];
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
}

- (LNConnectionAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];

  if (v5)
  {
    self = [(LNConnectionAction *)self initWithIdentifier:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(LNConnectionAction *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];
}

- (LNConnectionAction)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNConnectionAction.m" lineNumber:92 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];
  }

  v12.receiver = self;
  v12.super_class = LNConnectionAction;
  v7 = [(LNConnectionAction *)&v12 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_identifier, identifier);
    v9 = v8;
  }

  return v8;
}

@end