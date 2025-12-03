@interface BFPhoneNumberNormalizer
+ (id)countryCode;
+ (id)normalizedPhoneNumberForPhoneNumber:(id)number;
@end

@implementation BFPhoneNumberNormalizer

+ (id)normalizedPhoneNumberForPhoneNumber:(id)number
{
  numberCopy = number;
  v5 = objc_alloc_init(_NBPhoneNumberUtil);
  countryCode = [self countryCode];
  v14 = 0;
  v7 = [(_NBPhoneNumberUtil *)v5 parse:numberCopy defaultRegion:countryCode error:&v14];
  v8 = v14;
  if (![countryCode caseInsensitiveCompare:@"us"])
  {
    countryCode2 = [v7 countryCode];
    integerValue = [countryCode2 integerValue];

    if (integerValue == 1)
    {
      [(_NBPhoneNumberUtil *)v5 truncateTooLongNumber:v7];
    }
  }

  v11 = numberCopy;
  if (!v8)
  {
    v13 = 0;
    v11 = [(_NBPhoneNumberUtil *)v5 format:v7 numberFormat:0 error:&v13];
    v8 = v13;
  }

  return v11;
}

+ (id)countryCode
{
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  countryCode = [currentLocale countryCode];
  lowercaseString = [countryCode lowercaseString];

  return lowercaseString;
}

@end