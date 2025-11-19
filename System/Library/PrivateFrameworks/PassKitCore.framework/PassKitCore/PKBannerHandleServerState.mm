@interface PKBannerHandleServerState
- (PKBannerHandleServerState)initWithCoder:(id)a3;
@end

@implementation PKBannerHandleServerState

- (PKBannerHandleServerState)initWithCoder:(id)a3
{
  v4 = a3;
  if ([v4 decodeIntegerForKey:@"type"] == 1 && objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
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
    v6 = self;
  }

  else
  {
    v7 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"PKBannerHandleServerState" code:0 userInfo:0];
    [v4 failWithError:v7];

    v6 = 0;
  }

  return v6;
}

@end