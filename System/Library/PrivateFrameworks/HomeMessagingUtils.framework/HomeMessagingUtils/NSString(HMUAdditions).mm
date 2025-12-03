@interface NSString(HMUAdditions)
- (BOOL)hmu_isPhoneNumber;
- (uint64_t)hmu_isEmail;
@end

@implementation NSString(HMUAdditions)

- (BOOL)hmu_isPhoneNumber
{
  decimalDigitCharacterSet = [MEMORY[0x277CCAB50] decimalDigitCharacterSet];
  [decimalDigitCharacterSet addCharactersInString:@"+()-"];
  controlCharacterSet = [MEMORY[0x277CCA900] controlCharacterSet];
  [decimalDigitCharacterSet formUnionWithCharacterSet:controlCharacterSet];

  whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  [decimalDigitCharacterSet formUnionWithCharacterSet:whitespaceAndNewlineCharacterSet];

  v5 = [self componentsSeparatedByCharactersInSet:decimalDigitCharacterSet];
  v6 = [v5 componentsJoinedByString:&stru_28663F1E8];

  v7 = [v6 length] == 0;
  return v7;
}

- (uint64_t)hmu_isEmail
{
  if (hmu_isEmail_onceToken != -1)
  {
    [NSString(HMUAdditions) hmu_isEmail];
  }

  v2 = hmu_isEmail_emailPredicate;

  return [v2 evaluateWithObject:self];
}

@end