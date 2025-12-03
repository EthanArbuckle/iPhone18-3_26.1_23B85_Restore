@interface CNPhoneNumber(PKAdditions)
- (id)pkFormattedStringValue;
@end

@implementation CNPhoneNumber(PKAdditions)

- (id)pkFormattedStringValue
{
  countryCode = [self countryCode];
  defaultCountryCode = [MEMORY[0x1E695CF50] defaultCountryCode];
  v4 = [countryCode isEqualToString:defaultCountryCode];

  if (v4)
  {
    formattedStringValue = [self formattedStringValue];
    if (formattedStringValue)
    {
      goto LABEL_6;
    }
  }

  else
  {
    formattedStringValue = [self formattedInternationalStringValue];
    if (formattedStringValue)
    {
      goto LABEL_6;
    }
  }

  formattedStringValue = [self stringValue];
LABEL_6:

  return formattedStringValue;
}

@end