@interface CIFilter(DataAdditionsImpl)
- (uint64_t)extractDataToDictionary:()DataAdditionsImpl options:context:colorSpace:error:;
@end

@implementation CIFilter(DataAdditionsImpl)

- (uint64_t)extractDataToDictionary:()DataAdditionsImpl options:context:colorSpace:error:
{
  if (a7)
  {
    *a7 = [NUError unsupportedError:@"extractDataToDictionary is not available" object:self];
  }

  return 0;
}

@end