@interface NSMutableString(ASContactAppendStringWithSeparator)
- (void)appendString:()ASContactAppendStringWithSeparator withSeparator:;
@end

@implementation NSMutableString(ASContactAppendStringWithSeparator)

- (void)appendString:()ASContactAppendStringWithSeparator withSeparator:
{
  v7 = a3;
  v6 = a4;
  if ([v7 length])
  {
    if ([v6 length] && objc_msgSend(a1, "length"))
    {
      [a1 appendString:v6];
    }

    [a1 appendString:v7];
  }
}

@end