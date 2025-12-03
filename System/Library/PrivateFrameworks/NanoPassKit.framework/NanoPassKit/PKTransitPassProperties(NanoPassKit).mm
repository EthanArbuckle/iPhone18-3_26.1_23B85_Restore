@interface PKTransitPassProperties(NanoPassKit)
- (uint64_t)npkHasTransitBalance;
@end

@implementation PKTransitPassProperties(NanoPassKit)

- (uint64_t)npkHasTransitBalance
{
  balanceAmount = [self balanceAmount];
  amount = [balanceAmount amount];

  if (amount)
  {
    zero = [MEMORY[0x277CCA980] zero];
    v4 = [amount isEqualToNumber:zero] ^ 1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end