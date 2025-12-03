@interface _HKDiscreteQuantitySampleComparisonFilter
- (id)_comparisonQuantityAsNumber;
@end

@implementation _HKDiscreteQuantitySampleComparisonFilter

- (id)_comparisonQuantityAsNumber
{
  selfCopy = self;
  if (self)
  {
    value = [self value];
    dataTypes = [selfCopy dataTypes];
    anyObject = [dataTypes anyObject];

    v5 = MEMORY[0x277CCABB0];
    canonicalUnit = [anyObject canonicalUnit];
    [value doubleValueForUnit:canonicalUnit];
    selfCopy = [v5 numberWithDouble:?];
  }

  return selfCopy;
}

@end