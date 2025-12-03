@interface NSString(CALIDExtensions)
- (__CFString)stringByDecodingSlashes;
- (uint64_t)stringByEncodingSlashes;
@end

@implementation NSString(CALIDExtensions)

- (uint64_t)stringByEncodingSlashes
{
  if (stringByEncodingSlashes_onceToken != -1)
  {
    [NSString(CALIDExtensions) stringByEncodingSlashes];
  }

  v2 = stringByEncodingSlashes_allowedCharacterSet;

  return [self stringByAddingPercentEncodingWithAllowedCharacters:v2];
}

- (__CFString)stringByDecodingSlashes
{
  v1 = CFURLCreateStringByReplacingPercentEscapes(0, originalString, &stru_285505238);

  return v1;
}

@end