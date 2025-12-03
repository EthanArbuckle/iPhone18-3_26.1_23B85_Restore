@interface UIResponder(SafariExtras)
- (id)safari_responderChainDescription;
@end

@implementation UIResponder(SafariExtras)

- (id)safari_responderChainDescription
{
  v2 = objc_alloc_init(MEMORY[0x277CCAB68]);
  firstResponder = [self firstResponder];
  if (firstResponder)
  {
    v4 = firstResponder;
    v5 = 1;
    do
    {
      v6 = v5 + 1;
      [v2 appendFormat:@"%lu: %@\n", v5, v4];
      nextResponder = [v4 nextResponder];

      v4 = nextResponder;
      v5 = v6;
    }

    while (nextResponder);
  }

  return v2;
}

@end