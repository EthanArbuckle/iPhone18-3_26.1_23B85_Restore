@interface SGXPCResponse2
+ (id)responseWith:(id)a3 also:(id)a4;
+ (id)responseWithError:(id)a3;
- (SGXPCResponse2)initWithCoder:(id)a3;
- (id)response1;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SGXPCResponse2

- (id)response1
{
  v4.receiver = self;
  v4.super_class = SGXPCResponse2;
  v2 = [(SGXPCResponse1 *)&v4 response1];

  return v2;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = SGXPCResponse2;
  v4 = a3;
  [(SGXPCResponse1 *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_response2 forKey:{@"response2", v5.receiver, v5.super_class}];
}

- (SGXPCResponse2)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SGXPCResponse2;
  v5 = [(SGXPCResponse1 *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectForKey:@"response2"];
    response2 = v5->_response2;
    v5->_response2 = v6;
  }

  return v5;
}

+ (id)responseWithError:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithError:v4];

  return v5;
}

+ (id)responseWith:(id)a3 also:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_opt_new();
  [v7 setResponse1:v6];

  v8 = v7[3];
  v7[3] = v5;

  return v7;
}

@end