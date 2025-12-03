@interface UIImage(GKAdditions_UIKitShim_Parity)
- (CGImage)_gkScale;
- (uint64_t)_gkCGImage;
@end

@implementation UIImage(GKAdditions_UIKitShim_Parity)

- (CGImage)_gkScale
{
  result = [self _gkCGImage];
  if (result)
  {
    CGImageGetWidth(result);
    return [self size];
  }

  return result;
}

- (uint64_t)_gkCGImage
{
  selfCopy = self;

  return [selfCopy CGImage];
}

@end