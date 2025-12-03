@interface SGXPCResponse
+ (id)response;
+ (id)responseWithError:(id)error;
- (SGXPCResponse)initWithCoder:(id)coder;
- (SGXPCResponse)initWithError:(id)error;
@end

@implementation SGXPCResponse

- (SGXPCResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = SGXPCResponse;
  v5 = [(SGXPCResponse *)&v10 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"error"];
    error = v5->_error;
    v5->_error = v7;
  }

  return v5;
}

- (SGXPCResponse)initWithError:(id)error
{
  errorCopy = error;
  v9.receiver = self;
  v9.super_class = SGXPCResponse;
  v6 = [(SGXPCResponse *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_error, error);
  }

  return v7;
}

+ (id)responseWithError:(id)error
{
  errorCopy = error;
  v5 = [[self alloc] initWithError:errorCopy];

  return v5;
}

+ (id)response
{
  v2 = objc_opt_new();

  return v2;
}

@end