@interface LNConfirmationResponse
- (LNConfirmationResponse)initWithCoder:(id)coder;
- (LNConfirmationResponse)initWithIdentifier:(id)identifier context:(id)context confirmed:(BOOL)confirmed updates:(id)updates;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNConfirmationResponse

- (LNConfirmationResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [coderCopy decodeBoolForKey:@"confirmed"];
  v7 = MEMORY[0x1E695DFD8];
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = [v7 setWithObjects:{v8, v9, objc_opt_class(), 0}];
  v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"updates"];

  if (v5)
  {
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"context"];
    self = [(LNConfirmationResponse *)self initWithIdentifier:v5 context:v12 confirmed:v6 updates:v11];

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
  v6.receiver = self;
  v6.super_class = LNConfirmationResponse;
  coderCopy = coder;
  [(LNResponse *)&v6 encodeWithCoder:coderCopy];
  [coderCopy encodeBool:-[LNConfirmationResponse isConfirmed](self forKey:{"isConfirmed", v6.receiver, v6.super_class), @"confirmed"}];
  updates = [(LNConfirmationResponse *)self updates];
  [coderCopy encodeObject:updates forKey:@"updates"];
}

- (LNConfirmationResponse)initWithIdentifier:(id)identifier context:(id)context confirmed:(BOOL)confirmed updates:(id)updates
{
  updatesCopy = updates;
  v16.receiver = self;
  v16.super_class = LNConfirmationResponse;
  v12 = [(LNResponse *)&v16 initWithIdentifier:identifier context:context];
  v13 = v12;
  if (v12)
  {
    v12->_confirmed = confirmed;
    objc_storeStrong(&v12->_updates, updates);
    v14 = v13;
  }

  return v13;
}

@end