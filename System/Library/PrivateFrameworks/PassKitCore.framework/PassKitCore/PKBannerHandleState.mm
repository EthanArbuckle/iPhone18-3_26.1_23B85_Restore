@interface PKBannerHandleState
- (PKBannerHandleState)initWithCoder:(id)coder;
@end

@implementation PKBannerHandleState

- (PKBannerHandleState)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"type"];
  if (v5 <= 1 && objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    if (self)
    {
      v10.receiver = self;
      v10.super_class = PKBannerHandleState;
      v6 = [(PKBannerHandleState *)&v10 init];
      if (v6)
      {
        v6->_type = v5;
      }
    }

    else
    {
      v6 = 0;
    }

    self = v6;
    selfCopy = self;
  }

  else
  {
    v8 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"PKBannerHandleState" code:0 userInfo:0];
    [coderCopy failWithError:v8];

    selfCopy = 0;
  }

  return selfCopy;
}

@end