@interface NSString(TSUDateFormatStringUtilities)
- (id)tsu_stringByReplacing2DigitYearStringWith4DigitYearString;
- (id)tsu_stringByReplacing4DigitYearStringWith2DigitYearString;
@end

@implementation NSString(TSUDateFormatStringUtilities)

- (id)tsu_stringByReplacing4DigitYearStringWith2DigitYearString
{
  v1 = [self mutableCopy];
  [v1 replaceOccurrencesOfString:@"yyyy" withString:@"yy" options:0 range:{0, objc_msgSend(v1, "length")}];

  return v1;
}

- (id)tsu_stringByReplacing2DigitYearStringWith4DigitYearString
{
  v1 = [self mutableCopy];
  [v1 replaceOccurrencesOfString:@"yy" withString:@"yyyy" options:0 range:{0, objc_msgSend(v1, "length")}];

  return v1;
}

@end