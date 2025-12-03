@interface NSString(DigitalSeparation)
- (id)ds_formattedPotentialPhoneNumber;
- (uint64_t)isPhoneNumber;
@end

@implementation NSString(DigitalSeparation)

- (id)ds_formattedPotentialPhoneNumber
{
  if (![self isPhoneNumber])
  {
    goto LABEL_9;
  }

  v2 = [self stringByReplacingOccurrencesOfString:@"tel:" withString:&stru_285B9D7E0];
  if (([v2 containsString:@"+"] & 1) == 0)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"+%@", v2];

    v2 = v3;
  }

  v4 = [MEMORY[0x277CBDB70] phoneNumberWithStringValue:v2];
  countryCode = [v4 countryCode];
  if (countryCode)
  {
    [v4 formattedInternationalStringValue];
  }

  else
  {
    [v4 formattedStringValueRemovingDialingCode];
  }
  v6 = ;

  if ([v6 isEqualToString:v2])
  {

LABEL_9:
    v6 = [self copy];
    goto LABEL_11;
  }

LABEL_11:

  return v6;
}

- (uint64_t)isPhoneNumber
{
  if ([self containsString:@"tel:"])
  {
    return 1;
  }

  v3 = MEMORY[0x277CFBE78];

  return [v3 isStringPhoneNumber:self];
}

@end