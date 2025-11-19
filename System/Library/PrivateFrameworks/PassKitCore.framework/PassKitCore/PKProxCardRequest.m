@interface PKProxCardRequest
- (PKProxCardRequest)initWithCoder:(id)a3;
- (PKProxCardRequest)initWithProxCardType:(int64_t)a3;
@end

@implementation PKProxCardRequest

- (PKProxCardRequest)initWithProxCardType:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = PKProxCardRequest;
  result = [(PKProxCardRequest *)&v5 init];
  if (result)
  {
    result->_proxCardType = a3;
  }

  return result;
}

- (PKProxCardRequest)initWithCoder:(id)a3
{
  v4 = a3;
  if ([v4 decodeIntegerForKey:@"proxCardType"] == 1 && objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    self = [(PKProxCardRequest *)self initWithProxCardType:1];
    v5 = self;
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"PKProxCardRequest" code:0 userInfo:0];
    [v4 failWithError:v6];

    v5 = 0;
  }

  return v5;
}

@end