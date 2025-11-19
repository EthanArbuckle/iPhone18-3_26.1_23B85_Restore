@interface UIImage(GKAdditions_UIKitShim_Parity)
- (CGImage)_gkScale;
- (uint64_t)_gkCGImage;
@end

@implementation UIImage(GKAdditions_UIKitShim_Parity)

- (CGImage)_gkScale
{
  result = [a1 _gkCGImage];
  if (result)
  {
    CGImageGetWidth(result);
    return [a1 size];
  }

  return result;
}

- (uint64_t)_gkCGImage
{
  v1 = a1;

  return [v1 CGImage];
}

@end