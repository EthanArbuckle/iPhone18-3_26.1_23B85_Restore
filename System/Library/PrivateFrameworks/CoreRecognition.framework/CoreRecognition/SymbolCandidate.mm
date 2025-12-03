@interface SymbolCandidate
- (NSString)description;
@end

@implementation SymbolCandidate

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  symbol = [(SymbolCandidate *)self symbol];
  [(SymbolCandidate *)self probability];
  v6 = v5;
  [(SymbolCandidate *)self logProbability];
  return [v3 stringWithFormat:@"%C : %f (%f)", symbol, v6, v7];
}

@end