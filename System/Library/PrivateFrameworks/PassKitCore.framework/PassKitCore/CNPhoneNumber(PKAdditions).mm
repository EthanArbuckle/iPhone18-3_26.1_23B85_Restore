@interface CNPhoneNumber(PKAdditions)
- (id)pkFormattedStringValue;
@end

@implementation CNPhoneNumber(PKAdditions)

- (id)pkFormattedStringValue
{
  v2 = [a1 countryCode];
  v3 = [MEMORY[0x1E695CF50] defaultCountryCode];
  v4 = [v2 isEqualToString:v3];

  if (v4)
  {
    v5 = [a1 formattedStringValue];
    if (v5)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v5 = [a1 formattedInternationalStringValue];
    if (v5)
    {
      goto LABEL_6;
    }
  }

  v5 = [a1 stringValue];
LABEL_6:

  return v5;
}

@end