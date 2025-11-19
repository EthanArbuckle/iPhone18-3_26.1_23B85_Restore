@interface SGXPCResponse3
+ (id)responseWith:(id)a3 also:(id)a4 also:(id)a5;
+ (id)responseWithError:(id)a3;
- (SGXPCResponse3)initWithCoder:(id)a3;
- (id)response1;
- (id)response2;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SGXPCResponse3

- (id)response1
{
  v4.receiver = self;
  v4.super_class = SGXPCResponse3;
  v2 = [(SGXPCResponse2 *)&v4 response1];

  return v2;
}

- (id)response2
{
  v4.receiver = self;
  v4.super_class = SGXPCResponse3;
  v2 = [(SGXPCResponse2 *)&v4 response2];

  return v2;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = SGXPCResponse3;
  v4 = a3;
  [(SGXPCResponse2 *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_response3 forKey:{@"response3", v5.receiver, v5.super_class}];
}

- (SGXPCResponse3)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SGXPCResponse3;
  v5 = [(SGXPCResponse2 *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectForKey:@"response3"];
    response3 = v5->_response3;
    v5->_response3 = v6;
  }

  return v5;
}

+ (id)responseWithError:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithError:v4];

  return v5;
}

+ (id)responseWith:(id)a3 also:(id)a4 also:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = objc_opt_new();
  [v10 setResponse1:v9];

  [v10 setResponse2:v8];
  v11 = v10[4];
  v10[4] = v7;

  return v10;
}

@end