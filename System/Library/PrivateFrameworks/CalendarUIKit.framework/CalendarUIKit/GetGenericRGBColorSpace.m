@interface GetGenericRGBColorSpace
@end

@implementation GetGenericRGBColorSpace

CGColorSpaceRef ___GetGenericRGBColorSpace_block_invoke()
{
  result = CGColorSpaceCreateWithName(*MEMORY[0x1E695F138]);
  _GetGenericRGBColorSpace_genericRGBColorSpace = result;
  return result;
}

@end