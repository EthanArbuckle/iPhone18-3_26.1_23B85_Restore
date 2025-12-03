@interface SGXPCResponse2
+ (id)responseWith:(id)with also:(id)also;
+ (id)responseWithError:(id)error;
- (SGXPCResponse2)initWithCoder:(id)coder;
- (id)response1;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SGXPCResponse2

- (id)response1
{
  v4.receiver = self;
  v4.super_class = SGXPCResponse2;
  response1 = [(SGXPCResponse1 *)&v4 response1];

  return response1;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = SGXPCResponse2;
  coderCopy = coder;
  [(SGXPCResponse1 *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_response2 forKey:{@"response2", v5.receiver, v5.super_class}];
}

- (SGXPCResponse2)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = SGXPCResponse2;
  v5 = [(SGXPCResponse1 *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectForKey:@"response2"];
    response2 = v5->_response2;
    v5->_response2 = v6;
  }

  return v5;
}

+ (id)responseWithError:(id)error
{
  errorCopy = error;
  v5 = [[self alloc] initWithError:errorCopy];

  return v5;
}

+ (id)responseWith:(id)with also:(id)also
{
  alsoCopy = also;
  withCopy = with;
  v7 = objc_opt_new();
  [v7 setResponse1:withCopy];

  v8 = v7[3];
  v7[3] = alsoCopy;

  return v7;
}

@end