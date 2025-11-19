@interface NSString(CATSupport)
- (id)ln_stringByEscapingForXML;
@end

@implementation NSString(CATSupport)

- (id)ln_stringByEscapingForXML
{
  v1 = [a1 mutableCopy];
  [v1 replaceOccurrencesOfString:@"&" withString:@"&amp;" options:0 range:{0, objc_msgSend(v1, "length")}];
  [v1 replaceOccurrencesOfString:@"<" withString:@"&lt;" options:0 range:{0, objc_msgSend(v1, "length")}];
  [v1 replaceOccurrencesOfString:@">" withString:@"&gt;" options:0 range:{0, objc_msgSend(v1, "length")}];
  [v1 replaceOccurrencesOfString:@"'" withString:@"&apos;" options:0 range:{0, objc_msgSend(v1, "length")}];
  [v1 replaceOccurrencesOfString:@" withString:@"&quot;" options:0 range:{0, objc_msgSend(v1, "length"")}];

  return v1;
}

@end