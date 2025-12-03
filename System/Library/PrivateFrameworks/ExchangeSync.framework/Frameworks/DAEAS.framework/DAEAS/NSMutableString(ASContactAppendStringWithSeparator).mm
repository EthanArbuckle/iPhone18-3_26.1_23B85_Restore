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
    if ([v6 length] && objc_msgSend(self, "length"))
    {
      [self appendString:v6];
    }

    [self appendString:v7];
  }
}

@end