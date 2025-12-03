@interface PKBannerHandleServerState
- (PKBannerHandleServerState)initWithCoder:(id)coder;
@end

@implementation PKBannerHandleServerState

- (PKBannerHandleServerState)initWithCoder:(id)coder
{
  coderCopy = coder;
  if ([coderCopy decodeIntegerForKey:@"type"] == 1 && objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    if (self)
    {
      v9.receiver = self;
      v9.super_class = PKBannerHandleServerState;
      v5 = [(PKBannerHandleServerState *)&v9 init];
      if (v5)
      {
        v5->_type = 1;
      }
    }

    else
    {
      v5 = 0;
    }

    self = v5;
    selfCopy = self;
  }

  else
  {
    v7 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"PKBannerHandleServerState" code:0 userInfo:0];
    [coderCopy failWithError:v7];

    selfCopy = 0;
  }

  return selfCopy;
}

@end