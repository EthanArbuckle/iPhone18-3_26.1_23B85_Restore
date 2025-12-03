@interface LNActionConfirmationResponse
- (LNActionConfirmationResponse)initWithCoder:(id)coder;
- (LNActionConfirmationResponse)initWithIdentifier:(id)identifier context:(id)context value:(id)value updates:(id)updates;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNActionConfirmationResponse

- (LNActionConfirmationResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"value"];
    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = [v7 setWithObjects:{v8, v9, objc_opt_class(), 0}];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"updates"];

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"context"];
    self = [(LNActionConfirmationResponse *)self initWithIdentifier:v5 context:v12 value:v6 updates:v11];

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
  v7.super_class = LNActionConfirmationResponse;
  coderCopy = coder;
  [(LNResponse *)&v7 encodeWithCoder:coderCopy];
  v5 = [(LNActionConfirmationResponse *)self value:v7.receiver];
  [coderCopy encodeObject:v5 forKey:@"value"];

  updates = [(LNActionConfirmationResponse *)self updates];
  [coderCopy encodeObject:updates forKey:@"updates"];
}

- (LNActionConfirmationResponse)initWithIdentifier:(id)identifier context:(id)context value:(id)value updates:(id)updates
{
  valueCopy = value;
  updatesCopy = updates;
  v17.receiver = self;
  v17.super_class = LNActionConfirmationResponse;
  v13 = [(LNResponse *)&v17 initWithIdentifier:identifier context:context];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_value, value);
    objc_storeStrong(&v14->_updates, updates);
    v15 = v14;
  }

  return v14;
}

@end