@interface NSScanner(ECMessageBodyHTMLParserExtras)
- (BOOL)ec_scanUpToRegularExpression:()ECMessageBodyHTMLParserExtras;
- (uint64_t)_rangeOfFirstMatchWithRegularExpression:()ECMessageBodyHTMLParserExtras;
@end

@implementation NSScanner(ECMessageBodyHTMLParserExtras)

- (uint64_t)_rangeOfFirstMatchWithRegularExpression:()ECMessageBodyHTMLParserExtras
{
  string = [self string];
  scanLocation = [self scanLocation];
  v7 = [string length] - scanLocation;

  return [a3 rangeOfFirstMatchInString:string options:0 range:{scanLocation, v7}];
}

- (BOOL)ec_scanUpToRegularExpression:()ECMessageBodyHTMLParserExtras
{
  v2 = [self _rangeOfFirstMatchWithRegularExpression:?];
  if (v2 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [self setScanLocation:v2];
  }

  return v2 != 0x7FFFFFFFFFFFFFFFLL;
}

@end