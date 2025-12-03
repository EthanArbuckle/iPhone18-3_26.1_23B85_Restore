@interface PKBannerHandleRequest
- (PKBannerHandleRequest)initWithCoder:(id)coder;
@end

@implementation PKBannerHandleRequest

- (PKBannerHandleRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"type"];
  if (v5 <= 2 && (v6 = v5, objc_opt_class()) && (objc_opt_isKindOfClass() & 1) != 0)
  {
    if (self)
    {
      v11.receiver = self;
      v11.super_class = PKBannerHandleRequest;
      v7 = [(PKBannerHandleRequest *)&v11 init];
      if (v7)
      {
        v7->_type = v6;
      }
    }

    else
    {
      v7 = 0;
    }

    self = v7;
    selfCopy = self;
  }

  else
  {
    v9 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"PKBannerHandleRequest" code:0 userInfo:0];
    [coderCopy failWithError:v9];

    selfCopy = 0;
  }

  return selfCopy;
}

@end