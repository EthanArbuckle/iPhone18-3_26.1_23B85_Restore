@interface NSString(DEURLPathEscaping)
- (uint64_t)escape;
@end

@implementation NSString(DEURLPathEscaping)

- (uint64_t)escape
{
  if (escape_onceToken != -1)
  {
    [NSString(DEURLPathEscaping) escape];
  }

  v2 = escape__set;

  return [a1 stringByAddingPercentEncodingWithAllowedCharacters:v2];
}

@end