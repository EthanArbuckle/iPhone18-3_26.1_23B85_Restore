@interface NSMutableString(LineEndingConversion)
- (void)convertLineEndingsTo:()LineEndingConversion;
@end

@implementation NSMutableString(LineEndingConversion)

- (void)convertLineEndingsTo:()LineEndingConversion
{
  v4 = a3;
  [a1 replaceOccurrencesOfString:@"\r\n" withString:@"\r" options:0 range:{0, objc_msgSend(a1, "length")}];
  [a1 replaceOccurrencesOfString:@"\n" withString:@"\r" options:0 range:{0, objc_msgSend(a1, "length")}];
  [a1 replaceOccurrencesOfString:@"\r" withString:v4 options:0 range:{0, objc_msgSend(a1, "length")}];
}

@end