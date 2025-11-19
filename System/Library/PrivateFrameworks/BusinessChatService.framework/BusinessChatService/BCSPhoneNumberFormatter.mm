@interface BCSPhoneNumberFormatter
+ (id)_countryCode;
+ (id)formattedPhoneNumberForPhoneNumber:(id)a3;
@end

@implementation BCSPhoneNumberFormatter

+ (id)formattedPhoneNumberForPhoneNumber:(id)a3
{
  v4 = a3;
  v5 = [a1 _countryCode];
  v6 = PNCreateFormattedStringWithCountry();
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = v4;
  }

  v9 = v8;

  v10 = [MEMORY[0x277CCA900] controlCharacterSet];
  v11 = [v9 stringByTrimmingCharactersInSet:v10];

  return v11;
}

+ (id)_countryCode
{
  v2 = TUNetworkCountryCode();
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = TUHomeCountryCode();
  }

  v5 = v4;

  return v5;
}

@end