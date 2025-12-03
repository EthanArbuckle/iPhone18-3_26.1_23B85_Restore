@interface NSScanner(NSUIntegerParsing)
- (uint64_t)scanUnsignedInteger:()NSUIntegerParsing;
@end

@implementation NSScanner(NSUIntegerParsing)

- (uint64_t)scanUnsignedInteger:()NSUIntegerParsing
{
  v5 = 0;
  result = [self scanUnsignedLongLong:&v5];
  if (result)
  {
    *a3 = v5;
  }

  return result;
}

@end