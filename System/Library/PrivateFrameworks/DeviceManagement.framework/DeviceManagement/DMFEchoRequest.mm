@interface DMFEchoRequest
- (DMFEchoRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DMFEchoRequest

- (DMFEchoRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = DMFEchoRequest;
  v5 = [(CATTaskRequest *)&v13 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"echo"];
    echo = v5->_echo;
    v5->_echo = v7;

    v9 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"resultStatus"];
    resultStatus = v5->_resultStatus;
    v5->_resultStatus = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = DMFEchoRequest;
  coderCopy = coder;
  [(CATTaskRequest *)&v7 encodeWithCoder:coderCopy];
  v5 = [(DMFEchoRequest *)self echo:v7.receiver];
  [coderCopy encodeObject:v5 forKey:@"echo"];

  resultStatus = [(DMFEchoRequest *)self resultStatus];
  [coderCopy encodeObject:resultStatus forKey:@"resultStatus"];
}

@end