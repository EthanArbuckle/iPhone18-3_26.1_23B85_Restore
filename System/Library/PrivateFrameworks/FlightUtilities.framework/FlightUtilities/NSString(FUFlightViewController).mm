@interface NSString(FUFlightViewController)
- (id)localizedTerminalOrGateID;
@end

@implementation NSString(FUFlightViewController)

- (id)localizedTerminalOrGateID
{
  decimalDigitCharacterSet = [MEMORY[0x277CCA900] decimalDigitCharacterSet];
  invertedSet = [decimalDigitCharacterSet invertedSet];

  if ([self rangeOfCharacterFromSet:invertedSet] == 0x7FFFFFFFFFFFFFFFLL)
  {
    integerValue = [self integerValue];
    if ((integerValue - 1) <= 0x3E6)
    {
      v5 = MEMORY[0x277CCABB8];
      v6 = [MEMORY[0x277CCABB0] numberWithInteger:integerValue];
      selfCopy = [v5 localizedStringFromNumber:v6 numberStyle:0];

      if ([selfCopy length])
      {
        goto LABEL_6;
      }
    }
  }

  selfCopy = self;
LABEL_6:

  return selfCopy;
}

@end