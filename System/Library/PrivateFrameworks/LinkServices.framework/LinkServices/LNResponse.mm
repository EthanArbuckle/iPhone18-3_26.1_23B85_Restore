@interface LNResponse
- (LNResponse)initWithCoder:(id)coder;
- (LNResponse)initWithIdentifier:(id)identifier context:(id)context;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNResponse

- (LNResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"context"];
    self = [(LNResponse *)self initWithIdentifier:v5 context:v6];

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
  identifier = [(LNResponse *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  context = [(LNResponse *)self context];
  [coderCopy encodeObject:context forKey:@"context"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  identifier = [(LNResponse *)self identifier];
  context = [(LNResponse *)self context];
  v8 = [v3 stringWithFormat:@"<%@: %p, identifier: %@, context: %@>", v5, self, identifier, context];

  return v8;
}

- (LNResponse)initWithIdentifier:(id)identifier context:(id)context
{
  identifierCopy = identifier;
  contextCopy = context;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNResponse.m" lineNumber:17 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];
  }

  v15.receiver = self;
  v15.super_class = LNResponse;
  v10 = [(LNResponse *)&v15 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_identifier, identifier);
    objc_storeStrong(&v11->_context, context);
    v12 = v11;
  }

  return v11;
}

@end