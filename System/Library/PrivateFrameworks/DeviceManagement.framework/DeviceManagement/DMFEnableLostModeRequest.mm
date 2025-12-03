@interface DMFEnableLostModeRequest
- (DMFEnableLostModeRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DMFEnableLostModeRequest

- (DMFEnableLostModeRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = DMFEnableLostModeRequest;
  v5 = [(CATTaskRequest *)&v16 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"message"];
    message = v5->_message;
    v5->_message = v7;

    v9 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"phoneNumber"];
    phoneNumber = v5->_phoneNumber;
    v5->_phoneNumber = v10;

    v12 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"footnote"];
    footnote = v5->_footnote;
    v5->_footnote = v13;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = DMFEnableLostModeRequest;
  coderCopy = coder;
  [(CATTaskRequest *)&v8 encodeWithCoder:coderCopy];
  v5 = [(DMFEnableLostModeRequest *)self message:v8.receiver];
  [coderCopy encodeObject:v5 forKey:@"message"];

  phoneNumber = [(DMFEnableLostModeRequest *)self phoneNumber];
  [coderCopy encodeObject:phoneNumber forKey:@"phoneNumber"];

  footnote = [(DMFEnableLostModeRequest *)self footnote];
  [coderCopy encodeObject:footnote forKey:@"footnote"];
}

@end