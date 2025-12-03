@interface DMFEchoResultObject
- (DMFEchoResultObject)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DMFEchoResultObject

- (DMFEchoResultObject)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = DMFEchoResultObject;
  v5 = [(CATTaskResultObject *)&v13 initWithCoder:coderCopy];
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
  v7.super_class = DMFEchoResultObject;
  coderCopy = coder;
  [(CATTaskResultObject *)&v7 encodeWithCoder:coderCopy];
  v5 = [(DMFEchoResultObject *)self echo:v7.receiver];
  [coderCopy encodeObject:v5 forKey:@"echo"];

  resultStatus = [(DMFEchoResultObject *)self resultStatus];
  [coderCopy encodeObject:resultStatus forKey:@"resultStatus"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  echo = [(DMFEchoResultObject *)self echo];
  resultStatus = [(DMFEchoResultObject *)self resultStatus];
  v6 = [v3 stringWithFormat:@"Echo: '%@' result: %@", echo, resultStatus];

  return v6;
}

@end