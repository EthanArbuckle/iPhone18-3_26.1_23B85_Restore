@interface UIResponder(IC)
- (BOOL)ic_isInResponderChainOfFirstResponder:()IC;
@end

@implementation UIResponder(IC)

- (BOOL)ic_isInResponderChainOfFirstResponder:()IC
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    do
    {
      v7 = v6 == self;
      nextResponder = [v6 nextResponder];

      if (!nextResponder)
      {
        break;
      }

      v9 = v6 == self;
      v6 = nextResponder;
    }

    while (!v9);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end