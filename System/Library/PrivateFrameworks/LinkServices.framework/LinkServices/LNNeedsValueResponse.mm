@interface LNNeedsValueResponse
- (LNNeedsValueResponse)initWithCoder:(id)coder;
- (LNNeedsValueResponse)initWithIdentifier:(id)identifier context:(id)context value:(id)value updates:(id)updates;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNNeedsValueResponse

- (LNNeedsValueResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"value"];
  v7 = MEMORY[0x1E695DFD8];
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = [v7 setWithObjects:{v8, v9, objc_opt_class(), 0}];
  v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"updates"];

  if (v5 && v6 | v11)
  {
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"context"];
    self = [(LNNeedsValueResponse *)self initWithIdentifier:v5 context:v12 value:v6 updates:v11];

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
  v7.receiver = self;
  v7.super_class = LNNeedsValueResponse;
  coderCopy = coder;
  [(LNResponse *)&v7 encodeWithCoder:coderCopy];
  v5 = [(LNNeedsValueResponse *)self value:v7.receiver];
  [coderCopy encodeObject:v5 forKey:@"value"];

  updates = [(LNNeedsValueResponse *)self updates];
  [coderCopy encodeObject:updates forKey:@"updates"];
}

- (LNNeedsValueResponse)initWithIdentifier:(id)identifier context:(id)context value:(id)value updates:(id)updates
{
  identifierCopy = identifier;
  contextCopy = context;
  valueCopy = value;
  updatesCopy = updates;
  if (!(valueCopy | updatesCopy))
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNNeedsValueResponse.m" lineNumber:20 description:@"either value or updates must be non-null."];
  }

  v20.receiver = self;
  v20.super_class = LNNeedsValueResponse;
  v15 = [(LNResponse *)&v20 initWithIdentifier:identifierCopy context:contextCopy];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_value, value);
    objc_storeStrong(&v16->_updates, updates);
    v17 = v16;
  }

  return v16;
}

@end