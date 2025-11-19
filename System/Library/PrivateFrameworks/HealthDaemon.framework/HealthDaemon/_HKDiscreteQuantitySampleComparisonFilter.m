@interface _HKDiscreteQuantitySampleComparisonFilter
- (id)_comparisonQuantityAsNumber;
@end

@implementation _HKDiscreteQuantitySampleComparisonFilter

- (id)_comparisonQuantityAsNumber
{
  v1 = a1;
  if (a1)
  {
    v2 = [a1 value];
    v3 = [v1 dataTypes];
    v4 = [v3 anyObject];

    v5 = MEMORY[0x277CCABB0];
    v6 = [v4 canonicalUnit];
    [v2 doubleValueForUnit:v6];
    v1 = [v5 numberWithDouble:?];
  }

  return v1;
}

@end