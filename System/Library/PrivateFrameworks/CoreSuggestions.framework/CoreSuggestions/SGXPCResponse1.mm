@interface SGXPCResponse1
+ (id)responseWith:(id)a3;
+ (id)responseWithError:(id)a3;
- (SGXPCResponse1)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SGXPCResponse1

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = SGXPCResponse1;
  v4 = a3;
  [(SGXPCResponse *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_response1 forKey:{@"response1", v5.receiver, v5.super_class}];
}

- (SGXPCResponse1)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SGXPCResponse1;
  v5 = [(SGXPCResponse *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectForKey:@"response1"];
    response1 = v5->_response1;
    v5->_response1 = v6;
  }

  return v5;
}

+ (id)responseWithError:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithError:v4];

  return v5;
}

+ (id)responseWith:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = v4[2];
  v4[2] = v3;

  return v4;
}

@end