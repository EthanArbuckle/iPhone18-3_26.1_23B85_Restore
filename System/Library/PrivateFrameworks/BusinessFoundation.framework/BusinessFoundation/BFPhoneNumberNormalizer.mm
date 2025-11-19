@interface BFPhoneNumberNormalizer
+ (id)countryCode;
+ (id)normalizedPhoneNumberForPhoneNumber:(id)a3;
@end

@implementation BFPhoneNumberNormalizer

+ (id)normalizedPhoneNumberForPhoneNumber:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(_NBPhoneNumberUtil);
  v6 = [a1 countryCode];
  v14 = 0;
  v7 = [(_NBPhoneNumberUtil *)v5 parse:v4 defaultRegion:v6 error:&v14];
  v8 = v14;
  if (![v6 caseInsensitiveCompare:@"us"])
  {
    v9 = [v7 countryCode];
    v10 = [v9 integerValue];

    if (v10 == 1)
    {
      [(_NBPhoneNumberUtil *)v5 truncateTooLongNumber:v7];
    }
  }

  v11 = v4;
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
  v2 = [MEMORY[0x277CBEAF8] currentLocale];
  v3 = [v2 countryCode];
  v4 = [v3 lowercaseString];

  return v4;
}

@end