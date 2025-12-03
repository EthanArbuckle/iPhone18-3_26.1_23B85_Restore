@interface LNQueryOutput
- (LNQueryOutput)initWithCoder:(id)coder;
- (LNQueryOutput)initWithIdentifier:(id)identifier value:(id)value;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNQueryOutput

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  identifier = [(LNQueryOutput *)self identifier];
  value = [(LNQueryOutput *)self value];
  v8 = [v3 stringWithFormat:@"<%@: %p, identifier: %@, value: %@>", v5, self, identifier, value];

  return v8;
}

- (LNQueryOutput)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"value"];

  v8 = [(LNQueryOutput *)self initWithIdentifier:v5 value:v7];
  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(LNQueryOutput *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  value = [(LNQueryOutput *)self value];
  [coderCopy encodeObject:value forKey:@"value"];
}

- (LNQueryOutput)initWithIdentifier:(id)identifier value:(id)value
{
  identifierCopy = identifier;
  valueCopy = value;
  v10 = valueCopy;
  if (identifierCopy)
  {
    if (valueCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNQueryOutput.m" lineNumber:18 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"LNQueryOutput.m" lineNumber:19 description:{@"Invalid parameter not satisfying: %@", @"value"}];

LABEL_3:
  v17.receiver = self;
  v17.super_class = LNQueryOutput;
  v11 = [(LNQueryOutput *)&v17 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_identifier, identifier);
    objc_storeStrong(&v12->_value, value);
    v13 = v12;
  }

  return v12;
}

@end