@interface NSMutableString(LineEndingConversion)
- (void)convertLineEndingsTo:()LineEndingConversion;
@end

@implementation NSMutableString(LineEndingConversion)

- (void)convertLineEndingsTo:()LineEndingConversion
{
  v4 = a3;
  [self replaceOccurrencesOfString:@"\r\n" withString:@"\r" options:0 range:{0, objc_msgSend(self, "length")}];
  [self replaceOccurrencesOfString:@"\n" withString:@"\r" options:0 range:{0, objc_msgSend(self, "length")}];
  [self replaceOccurrencesOfString:@"\r" withString:v4 options:0 range:{0, objc_msgSend(self, "length")}];
}

@end