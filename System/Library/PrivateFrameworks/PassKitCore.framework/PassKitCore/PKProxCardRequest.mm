@interface PKProxCardRequest
- (PKProxCardRequest)initWithCoder:(id)coder;
- (PKProxCardRequest)initWithProxCardType:(int64_t)type;
@end

@implementation PKProxCardRequest

- (PKProxCardRequest)initWithProxCardType:(int64_t)type
{
  v5.receiver = self;
  v5.super_class = PKProxCardRequest;
  result = [(PKProxCardRequest *)&v5 init];
  if (result)
  {
    result->_proxCardType = type;
  }

  return result;
}

- (PKProxCardRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  if ([coderCopy decodeIntegerForKey:@"proxCardType"] == 1 && objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    self = [(PKProxCardRequest *)self initWithProxCardType:1];
    selfCopy = self;
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"PKProxCardRequest" code:0 userInfo:0];
    [coderCopy failWithError:v6];

    selfCopy = 0;
  }

  return selfCopy;
}

@end