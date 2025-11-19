@interface PKTransitPassProperties(NanoPassKit)
- (uint64_t)npkHasTransitBalance;
@end

@implementation PKTransitPassProperties(NanoPassKit)

- (uint64_t)npkHasTransitBalance
{
  v1 = [a1 balanceAmount];
  v2 = [v1 amount];

  if (v2)
  {
    v3 = [MEMORY[0x277CCA980] zero];
    v4 = [v2 isEqualToNumber:v3] ^ 1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end