@interface SGXPCResponse
+ (id)response;
+ (id)responseWithError:(id)a3;
- (SGXPCResponse)initWithCoder:(id)a3;
- (SGXPCResponse)initWithError:(id)a3;
@end

@implementation SGXPCResponse

- (SGXPCResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SGXPCResponse;
  v5 = [(SGXPCResponse *)&v10 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"error"];
    error = v5->_error;
    v5->_error = v7;
  }

  return v5;
}

- (SGXPCResponse)initWithError:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SGXPCResponse;
  v6 = [(SGXPCResponse *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_error, a3);
  }

  return v7;
}

+ (id)responseWithError:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithError:v4];

  return v5;
}

+ (id)response
{
  v2 = objc_opt_new();

  return v2;
}

@end