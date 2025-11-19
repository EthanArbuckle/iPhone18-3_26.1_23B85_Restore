@interface PKBannerHandleState
- (PKBannerHandleState)initWithCoder:(id)a3;
@end

@implementation PKBannerHandleState

- (PKBannerHandleState)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"type"];
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
    v7 = self;
  }

  else
  {
    v8 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"PKBannerHandleState" code:0 userInfo:0];
    [v4 failWithError:v8];

    v7 = 0;
  }

  return v7;
}

@end