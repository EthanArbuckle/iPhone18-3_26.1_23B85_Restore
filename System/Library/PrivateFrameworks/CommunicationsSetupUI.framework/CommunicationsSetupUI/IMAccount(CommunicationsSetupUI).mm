@interface IMAccount(CommunicationsSetupUI)
- (id)loginDisplayString;
@end

@implementation IMAccount(CommunicationsSetupUI)

- (id)loginDisplayString
{
  v1 = [a1 login];
  v2 = MEMORY[0x245D4D030]();

  if ([v2 _appearsToBePhoneNumber])
  {
    v3 = CNFRegFormattedPhoneNumberForString(v2);

    v2 = v3;
  }

  return v2;
}

@end