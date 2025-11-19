@interface CNProbabilityUtility
- (BOOL)trueWithProbability:(double)a3;
@end

@implementation CNProbabilityUtility

- (BOOL)trueWithProbability:(double)a3
{
  if (a3 < 0.0 || a3 > 1.0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Probability must be in range [0, 1]"}];
  }

  return (arc4random_uniform(0x2710u) / 10000.0) <= a3;
}

@end