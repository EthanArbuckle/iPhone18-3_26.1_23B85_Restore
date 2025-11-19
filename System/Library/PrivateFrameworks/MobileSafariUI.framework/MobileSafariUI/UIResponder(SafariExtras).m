@interface UIResponder(SafariExtras)
- (id)safari_responderChainDescription;
@end

@implementation UIResponder(SafariExtras)

- (id)safari_responderChainDescription
{
  v2 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v3 = [a1 firstResponder];
  if (v3)
  {
    v4 = v3;
    v5 = 1;
    do
    {
      v6 = v5 + 1;
      [v2 appendFormat:@"%lu: %@\n", v5, v4];
      v7 = [v4 nextResponder];

      v4 = v7;
      v5 = v6;
    }

    while (v7);
  }

  return v2;
}

@end