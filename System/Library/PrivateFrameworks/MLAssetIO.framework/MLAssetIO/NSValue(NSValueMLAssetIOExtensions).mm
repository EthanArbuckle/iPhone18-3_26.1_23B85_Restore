@interface NSValue(NSValueMLAssetIOExtensions)
- (uint64_t)MIORangeValue;
@end

@implementation NSValue(NSValueMLAssetIOExtensions)

- (uint64_t)MIORangeValue
{
  if (strcmp("{_MIORange=qq}", [self objCType]))
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v3[0] = 0;
  v3[1] = 0;
  [self getValue:v3];
  return v3[0];
}

@end