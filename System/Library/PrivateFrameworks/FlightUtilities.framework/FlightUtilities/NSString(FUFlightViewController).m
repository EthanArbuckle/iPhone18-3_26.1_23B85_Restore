@interface NSString(FUFlightViewController)
- (id)localizedTerminalOrGateID;
@end

@implementation NSString(FUFlightViewController)

- (id)localizedTerminalOrGateID
{
  v2 = [MEMORY[0x277CCA900] decimalDigitCharacterSet];
  v3 = [v2 invertedSet];

  if ([a1 rangeOfCharacterFromSet:v3] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = [a1 integerValue];
    if ((v4 - 1) <= 0x3E6)
    {
      v5 = MEMORY[0x277CCABB8];
      v6 = [MEMORY[0x277CCABB0] numberWithInteger:v4];
      v7 = [v5 localizedStringFromNumber:v6 numberStyle:0];

      if ([v7 length])
      {
        goto LABEL_6;
      }
    }
  }

  v7 = a1;
LABEL_6:

  return v7;
}

@end