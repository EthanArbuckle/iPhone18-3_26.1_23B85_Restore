@interface SGXPCResponse1
+ (id)responseWith:(id)with;
+ (id)responseWithError:(id)error;
- (SGXPCResponse1)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SGXPCResponse1

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = SGXPCResponse1;
  coderCopy = coder;
  [(SGXPCResponse *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_response1 forKey:{@"response1", v5.receiver, v5.super_class}];
}

- (SGXPCResponse1)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = SGXPCResponse1;
  v5 = [(SGXPCResponse *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectForKey:@"response1"];
    response1 = v5->_response1;
    v5->_response1 = v6;
  }

  return v5;
}

+ (id)responseWithError:(id)error
{
  errorCopy = error;
  v5 = [[self alloc] initWithError:errorCopy];

  return v5;
}

+ (id)responseWith:(id)with
{
  withCopy = with;
  v4 = objc_opt_new();
  v5 = v4[2];
  v4[2] = withCopy;

  return v4;
}

@end