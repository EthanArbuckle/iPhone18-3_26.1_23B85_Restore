@interface SGXPCResponse3
+ (id)responseWith:(id)with also:(id)also also:(id)a5;
+ (id)responseWithError:(id)error;
- (SGXPCResponse3)initWithCoder:(id)coder;
- (id)response1;
- (id)response2;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SGXPCResponse3

- (id)response1
{
  v4.receiver = self;
  v4.super_class = SGXPCResponse3;
  response1 = [(SGXPCResponse2 *)&v4 response1];

  return response1;
}

- (id)response2
{
  v4.receiver = self;
  v4.super_class = SGXPCResponse3;
  response2 = [(SGXPCResponse2 *)&v4 response2];

  return response2;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = SGXPCResponse3;
  coderCopy = coder;
  [(SGXPCResponse2 *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_response3 forKey:{@"response3", v5.receiver, v5.super_class}];
}

- (SGXPCResponse3)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = SGXPCResponse3;
  v5 = [(SGXPCResponse2 *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectForKey:@"response3"];
    response3 = v5->_response3;
    v5->_response3 = v6;
  }

  return v5;
}

+ (id)responseWithError:(id)error
{
  errorCopy = error;
  v5 = [[self alloc] initWithError:errorCopy];

  return v5;
}

+ (id)responseWith:(id)with also:(id)also also:(id)a5
{
  v7 = a5;
  alsoCopy = also;
  withCopy = with;
  v10 = objc_opt_new();
  [v10 setResponse1:withCopy];

  [v10 setResponse2:alsoCopy];
  v11 = v10[4];
  v10[4] = v7;

  return v10;
}

@end