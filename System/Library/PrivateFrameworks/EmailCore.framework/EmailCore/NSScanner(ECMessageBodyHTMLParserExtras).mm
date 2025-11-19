@interface NSScanner(ECMessageBodyHTMLParserExtras)
- (BOOL)ec_scanUpToRegularExpression:()ECMessageBodyHTMLParserExtras;
- (uint64_t)_rangeOfFirstMatchWithRegularExpression:()ECMessageBodyHTMLParserExtras;
@end

@implementation NSScanner(ECMessageBodyHTMLParserExtras)

- (uint64_t)_rangeOfFirstMatchWithRegularExpression:()ECMessageBodyHTMLParserExtras
{
  v5 = [a1 string];
  v6 = [a1 scanLocation];
  v7 = [v5 length] - v6;

  return [a3 rangeOfFirstMatchInString:v5 options:0 range:{v6, v7}];
}

- (BOOL)ec_scanUpToRegularExpression:()ECMessageBodyHTMLParserExtras
{
  v2 = [a1 _rangeOfFirstMatchWithRegularExpression:?];
  if (v2 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [a1 setScanLocation:v2];
  }

  return v2 != 0x7FFFFFFFFFFFFFFFLL;
}

@end